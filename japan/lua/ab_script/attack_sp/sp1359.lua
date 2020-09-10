--1018320:超フュー_サプライズブレイド
--sp_effect_b2_00026

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
SP_01=	154344	;--	突進（オーラあり）
SP_02=	154345	;--	斬撃
SP_03=	154347	;--	斜線、敵背後ヒットエフェクト、黒背景
SP_04=	154348	;--	抜刀⇒突進
SP_05=	154349	;--	突進
SP_06=	154350	;--	フィニッシュ

--エフェクト(てき)
SP_01x=	154344	;--	突進（オーラあり）	
SP_02x=	154346	;--	斬撃	(敵)
SP_03x=	154347	;--	斜線、敵背後ヒットエフェクト、黒背景	
SP_04x=	154348	;--	抜刀⇒突進	
SP_05x=	154349	;--	突進	
SP_06x=	154350	;--	フィニッシュ	


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
-- 突進（オーラあり）
------------------------------------------------------
--はじめの準備
spep_0 = 0;


-- ** エフェクト等 ** --
tossin = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_0 + 0, tossin, 0, 0 , 0 );
setEffMoveKey( spep_0 + 98, tossin, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tossin, 1.0, 1.0 );
setEffScaleKey( spep_0 + 98, tossin, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tossin, 0 );
setEffRotateKey( spep_0 + 98, tossin, 0 );
setEffAlphaKey( spep_0 + 0, tossin, 255 );
setEffAlphaKey( spep_0 + 98, tossin, 255 );

--集中線
shuchusen1 = entryEffectLife( spep_0 + 0,  906, 98, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 98, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchusen1, 1, 1 );
setEffScaleKey( spep_0 + 98, shuchusen1, 1, 1 );

setEffRotateKey( spep_0 + 0, shuchusen1, 0 );
setEffRotateKey( spep_0 + 98, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 98, shuchusen1, 255 );

--黒背景
entryFadeBg( spep_0, 0, 98, 0, 0, 0, 0, 200 );

-- ** 音 ** --
playSe( spep_0 + 7, 8 );  --ダッシュ
SE0 = playSe( spep_0 + 13, 44 );  --ダッシュ

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 40; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE0, 0 );
    --stopSe( SP_dodge - 12, SE1, 0 );
    --stopSe( SP_dodge - 12, SE2, 0 );
    
    pauseAll( SP_dodge, 67 );


    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,-1,  0,  0,  -350 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );   -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100, -1,  0,  0,  350 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);
    
    
    
    
    
    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 ); -- white fade
    setMoveKey( SP_dodge + 10,   0,-2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

-- ** 白フェード ** --
entryFade( spep_0 + 90, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_0 + 58, 1072 );  --ダッシュ

--次の準備
spep_1 = spep_0+98;

------------------------------------------------------
-- 斬撃
------------------------------------------------------
-- ** エフェクト等 ** --
cat_f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_1 + 0, cat_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 190, cat_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, cat_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 190, cat_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, cat_f, 0 );
setEffRotateKey( spep_1 + 190, cat_f, 0 );
setEffAlphaKey( spep_1 + 0, cat_f, 255 );
setEffAlphaKey( spep_1 + 190, cat_f, 255 )

-- ** エフェクト等 ** --
cat_b = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_1 + 0, cat_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 190, cat_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, cat_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 190, cat_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, cat_b, 0 );
setEffRotateKey( spep_1 + 190, cat_b, 0 );
setEffAlphaKey( spep_1 + 0, cat_b, 255 );
setEffAlphaKey( spep_1 + 190, cat_b, 255 )

--文字エントリー
ctzan = entryEffectLife( spep_1 -3 + 26,  10010, 22, 0x100, -1, 0, 29.7, 266.2 );--ザンッ

setEffMoveKey( spep_1 -3 + 26, ctzan, 29.7, 266.2 , 0 );
setEffMoveKey( spep_1 -3 + 28, ctzan, 34.6, 328.4 , 0 );
setEffMoveKey( spep_1 -3 + 30, ctzan, 34.6, 328.4 , 0 );
setEffMoveKey( spep_1 -3 + 32, ctzan, 34.6, 328.5 , 0 );
setEffMoveKey( spep_1 -3 + 48, ctzan, 34.6, 328.5 , 0 );

setEffScaleKey( spep_1 -3 + 26, ctzan, 1.08, 1.08 );
setEffScaleKey( spep_1 -3 + 28, ctzan, 1.9, 1.9 );
setEffScaleKey( spep_1 -3 + 30, ctzan, 1.93, 1.93 );
setEffScaleKey( spep_1 -3 + 32, ctzan, 1.96, 1.96 );
setEffScaleKey( spep_1 -3 + 34, ctzan, 1.98, 1.98 );
setEffScaleKey( spep_1 -3 + 36, ctzan, 1.99, 1.99 );
setEffScaleKey( spep_1 -3 + 38, ctzan, 1.99, 1.99 );
setEffScaleKey( spep_1 -3 + 40, ctzan, 2, 2 );
setEffScaleKey( spep_1 -3 + 48, ctzan, 2, 2 );

setEffRotateKey( spep_1 -3 + 26, ctzan, -9.9 );
setEffRotateKey( spep_1 -3 + 28, ctzan, -9.8 );
setEffRotateKey( spep_1 -3 + 30, ctzan, -9.9 );
setEffRotateKey( spep_1 -3 + 32, ctzan, -9.9 );
setEffRotateKey( spep_1 -3 + 34, ctzan, -10 );
setEffRotateKey( spep_1 -3 + 48, ctzan, -10 );

--文字エントリー
ctzubaba = entryEffectLife( spep_1 -3 + 70,  10015, 58, 0x100, -1, 0, 34.4, 374.9 );--ズバババッ

setEffMoveKey( spep_1 -3 + 70, ctzubaba, 34.4, 374.9 , 0 );
setEffMoveKey( spep_1 -3 + 72, ctzubaba, 30.6, 367.1 , 0 );
setEffMoveKey( spep_1 -3 + 74, ctzubaba, 29.5, 364.6 , 0 );
setEffMoveKey( spep_1 -3 + 76, ctzubaba, 34.4, 374.8 , 0 );
setEffMoveKey( spep_1 -3 + 78, ctzubaba, 29.4, 364.5 , 0 );
setEffMoveKey( spep_1 -3 + 80, ctzubaba, 34.4, 374.8 , 0 );
setEffMoveKey( spep_1 -3 + 82, ctzubaba, 29.4, 364.4 , 0 );
setEffMoveKey( spep_1 -3 + 84, ctzubaba, 34.4, 374.8 , 0 );
setEffMoveKey( spep_1 -3 + 86, ctzubaba, 29.3, 364.3 , 0 );
setEffMoveKey( spep_1 -3 + 88, ctzubaba, 34.4, 374.8 , 0 );
setEffMoveKey( spep_1 -3 + 90, ctzubaba, 29.2, 364.2 , 0 );
setEffMoveKey( spep_1 -3 + 92, ctzubaba, 34.4, 374.8 , 0 );
setEffMoveKey( spep_1 -3 + 94, ctzubaba, 29.2, 364.1 , 0 );
setEffMoveKey( spep_1 -3 + 96, ctzubaba, 34.4, 374.8 , 0 );
setEffMoveKey( spep_1 -3 + 98, ctzubaba, 29.1, 364 , 0 );
setEffMoveKey( spep_1 -3 + 100, ctzubaba, 34.4, 374.8 , 0 );
setEffMoveKey( spep_1 -3 + 102, ctzubaba, 29.1, 363.9 , 0 );
setEffMoveKey( spep_1 -3 + 104, ctzubaba, 34.4, 374.8 , 0 );
setEffMoveKey( spep_1 -3 + 106, ctzubaba, 29, 363.8 , 0 );
setEffMoveKey( spep_1 -3 + 108, ctzubaba, 34.4, 374.8 , 0 );
setEffMoveKey( spep_1 -3 + 110, ctzubaba, 29, 363.7 , 0 );
setEffMoveKey( spep_1 -3 + 112, ctzubaba, 34.4, 374.8 , 0 );
setEffMoveKey( spep_1 -3 + 114, ctzubaba, 28.9, 363.6 , 0 );
setEffMoveKey( spep_1 -3 + 116, ctzubaba, 34.4, 374.8 , 0 );
setEffMoveKey( spep_1 -3 + 118, ctzubaba, 28.9, 363.5 , 0 );
setEffMoveKey( spep_1 -3 + 120, ctzubaba, 34.4, 374.8 , 0 );
setEffMoveKey( spep_1 -3 + 122, ctzubaba, 28.8, 363.4 , 0 );
setEffMoveKey( spep_1 -3 + 124, ctzubaba, 28.8, 363.4 , 0 );
setEffMoveKey( spep_1 -3 + 126, ctzubaba, 34.4, 374.8 , 0 );
setEffMoveKey( spep_1 -3 + 128, ctzubaba, 34.4, 374.8 , 0 );

setEffScaleKey( spep_1 -3 + 70, ctzubaba, 1.49, 1.49 );
setEffScaleKey( spep_1 -3 + 72, ctzubaba, 2.15, 2.15 );
setEffScaleKey( spep_1 -3 + 74, ctzubaba, 2.8, 2.8 );
setEffScaleKey( spep_1 -3 + 76, ctzubaba, 2.81, 2.81 );
setEffScaleKey( spep_1 -3 + 78, ctzubaba, 2.83, 2.83 );
setEffScaleKey( spep_1 -3 + 80, ctzubaba, 2.84, 2.84 );
setEffScaleKey( spep_1 -3 + 82, ctzubaba, 2.86, 2.86 );
setEffScaleKey( spep_1 -3 + 84, ctzubaba, 2.87, 2.87 );
setEffScaleKey( spep_1 -3 + 86, ctzubaba, 2.88, 2.88 );
setEffScaleKey( spep_1 -3 + 88, ctzubaba, 2.9, 2.9 );
setEffScaleKey( spep_1 -3 + 90, ctzubaba, 2.91, 2.91 );
setEffScaleKey( spep_1 -3 + 92, ctzubaba, 2.93, 2.93 );
setEffScaleKey( spep_1 -3 + 94, ctzubaba, 2.94, 2.94 );
setEffScaleKey( spep_1 -3 + 96, ctzubaba, 2.95, 2.95 );
setEffScaleKey( spep_1 -3 + 98, ctzubaba, 2.97, 2.97 );
setEffScaleKey( spep_1 -3 + 100, ctzubaba, 2.98, 2.98 );
setEffScaleKey( spep_1 -3 + 102, ctzubaba, 3, 3 );
setEffScaleKey( spep_1 -3 + 104, ctzubaba, 3.01, 3.01 );
setEffScaleKey( spep_1 -3 + 106, ctzubaba, 3.02, 3.02 );
setEffScaleKey( spep_1 -3 + 108, ctzubaba, 3.04, 3.04 );
setEffScaleKey( spep_1 -3 + 110, ctzubaba, 3.05, 3.05 );
setEffScaleKey( spep_1 -3 + 112, ctzubaba, 3.07, 3.07 );
setEffScaleKey( spep_1 -3 + 114, ctzubaba, 3.08, 3.08 );
setEffScaleKey( spep_1 -3 + 116, ctzubaba, 3.09, 3.09 );
setEffScaleKey( spep_1 -3 + 118, ctzubaba, 3.11, 3.11 );
setEffScaleKey( spep_1 -3 + 120, ctzubaba, 3.12, 3.12 );
setEffScaleKey( spep_1 -3 + 122, ctzubaba, 3.14, 3.14 );
setEffScaleKey( spep_1 -3 + 124, ctzubaba, 3.15, 3.15 );
setEffScaleKey( spep_1 -3 + 126, ctzubaba, 2.98, 2.98 );
setEffScaleKey( spep_1 -3 + 128, ctzubaba, 2.8, 2.8 );

setEffRotateKey( spep_1 -3 + 70, ctzubaba, -19.1 );
setEffRotateKey( spep_1 -3 + 72, ctzubaba, -19.2 );
setEffRotateKey( spep_1 -3 + 98, ctzubaba, -19.2 );
setEffRotateKey( spep_1 -3 + 100, ctzubaba, -19.1 );
setEffRotateKey( spep_1 -3 + 126, ctzubaba, -19.1 );
setEffRotateKey( spep_1 -3 + 128, ctzubaba, -19.2 );

setEffAlphaKey( spep_1 -3 + 70, ctzubaba, 85 );
setEffAlphaKey( spep_1 -3 + 72, ctzubaba, 170 );
setEffAlphaKey( spep_1 -3 + 74, ctzubaba, 255 );
setEffAlphaKey( spep_1 -3 + 124, ctzubaba, 255 );
setEffAlphaKey( spep_1 -3 + 126, ctzubaba, 128 );
setEffAlphaKey( spep_1 -3 + 128, ctzubaba, 0 );

--文字エントリー
ctga = entryEffectLife( spep_1-3 + 142,  10005, 24, 0x100, -1, 0, 115, -171.8 );--ガッ

setEffMoveKey( spep_1-3 + 142, ctga, 115, -171.8 , 0 );
setEffMoveKey( spep_1-3 + 144, ctga, 110.2, -174.7 , 0 );
setEffMoveKey( spep_1-3 + 146, ctga, 110.4, -174.3 , 0 );
setEffMoveKey( spep_1-3 + 148, ctga, 110.5, -174 , 0 );
setEffMoveKey( spep_1-3 + 150, ctga, 110.6, -173.8 , 0 );
setEffMoveKey( spep_1-3 + 152, ctga, 110.7, -173.6 , 0 );
setEffMoveKey( spep_1-3 + 154, ctga, 110.7, -173.5 , 0 );
setEffMoveKey( spep_1-3 + 156, ctga, 110.8, -173.4 , 0 );
setEffMoveKey( spep_1-3 + 158, ctga, 110.8, -173.4 , 0 );
setEffMoveKey( spep_1-3 + 166, ctga, 110.8, -173.4 , 0 );

a=0.6;

setEffScaleKey( spep_1-3 + 142, ctga, 0.54+a, 0.54+a );
setEffScaleKey( spep_1-3 + 144, ctga, 0.66+a, 0.66+a );
setEffScaleKey( spep_1-3 + 146, ctga, 0.74+a, 0.74+a );
setEffScaleKey( spep_1-3 + 148, ctga, 0.8+a, 0.8+a );
setEffScaleKey( spep_1-3 + 150, ctga, 0.85+a, 0.85+a );
setEffScaleKey( spep_1-3 + 152, ctga, 0.88+a, 0.88+a );
setEffScaleKey( spep_1-3 + 154, ctga, 0.91+a, 0.91+a );
setEffScaleKey( spep_1-3 + 156, ctga, 0.92+a, 0.92+a );
setEffScaleKey( spep_1-3 + 158, ctga, 0.93+a, 0.93+a );
setEffScaleKey( spep_1-3 + 166, ctga, 0.93+a, 0.93+a );

setEffRotateKey( spep_1-3 + 142, ctga, -24.6 );
setEffRotateKey( spep_1-3 + 146, ctga, -24.6 );
setEffRotateKey( spep_1-3 + 148, ctga, -24.5 );
setEffRotateKey( spep_1-3 + 166, ctga, -24.5 );

setEffAlphaKey( spep_1-3 + 142, ctga, 191 );
setEffAlphaKey( spep_1-3 + 144, ctga, 255 );
setEffAlphaKey( spep_1-3 + 162, ctga, 255 );
setEffAlphaKey( spep_1-3 + 164, ctga, 64 );
setEffAlphaKey( spep_1-3 + 166, ctga, 0 );

--集中線
shuchusen2 = entryEffectLife( spep_1 -3 + 24,  906, 14, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_1 -3 + 24, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_1 -3 + 38, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_1 -3 + 24, shuchusen2, 1.3, 1.3 );
setEffScaleKey( spep_1 -3 + 38, shuchusen2, 1.3, 1.3 );

setEffRotateKey( spep_1 -3 + 24, shuchusen2, 180 );
setEffRotateKey( spep_1 -3 + 38, shuchusen2, 180 );

setEffAlphaKey( spep_1 -3 + 24, shuchusen2, 255 );
setEffAlphaKey( spep_1 -3 + 38, shuchusen2, 255 );

--集中線
shuchusen3 = entryEffectLife( spep_1 -3 + 78,  906, 60, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_1 -3 + 78, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_1 -3 + 136, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_1 -3 + 78, shuchusen3, 1.3, 1.3 );
setEffScaleKey( spep_1 -3 + 136, shuchusen3, 1.3, 1.3 );

setEffRotateKey( spep_1 -3 + 78, shuchusen3, 180 );
setEffRotateKey( spep_1 -3 + 136, shuchusen3, 180 );

setEffAlphaKey( spep_1 -3 + 78, shuchusen3, 255 );
setEffAlphaKey( spep_1 -3 + 136, shuchusen3, 255 );

--集中線
shuchusen4 = entryEffectLife( spep_1 -3 + 140,  906, 12, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_1 -3 + 140, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_1 -3 + 152, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_1 -3 + 140, shuchusen4, 1.3, 1.3 );
setEffScaleKey( spep_1 -3 + 152, shuchusen4, 1.3, 1.3 );

setEffRotateKey( spep_1 -3 + 140, shuchusen4, 180 );
setEffRotateKey( spep_1 -3 + 152, shuchusen4, 180 );

setEffAlphaKey( spep_1 -3 + 140, shuchusen4, 255 );
setEffAlphaKey( spep_1 -3 + 152, shuchusen4, 255 );

--敵の動き
setDisp( spep_1-3 + 0, 1, 1 );
setDisp( spep_1-3 + 188, 1, 0 );

changeAnime( spep_1-3 + 0, 1, 100 );
changeAnime( spep_1-3 + 26, 1, 108 );
changeAnime( spep_1-3 + 30, 1, 106 );
changeAnime( spep_1-3 + 76, 1, 108 );
changeAnime( spep_1-3 + 80, 1, 106 );
changeAnime( spep_1-3 + 94, 1, 108 );
changeAnime( spep_1-3 + 142, 1, 106 );

setMoveKey( spep_1 + 0, 1, 135.3, 142.2 , 0 );
--setMoveKey( spep_1-3 + 2, 1, 136.7, 139.2 , 0 );
setMoveKey( spep_1-3 + 4, 1, 138, 136.4 , 0 );
setMoveKey( spep_1-3 + 6, 1, 139.3, 133.5 , 0 );
setMoveKey( spep_1-3 + 8, 1, 140.6, 130.6 , 0 );
setMoveKey( spep_1-3 + 10, 1, 142, 127.7 , 0 );
setMoveKey( spep_1-3 + 12, 1, 143.3, 124.7 , 0 );
setMoveKey( spep_1-3 + 14, 1, 144.6, 121.8 , 0 );
setMoveKey( spep_1-3 + 16, 1, 145.9, 118.9 , 0 );
setMoveKey( spep_1-3 + 18, 1, 147.2, 116 , 0 );
setMoveKey( spep_1-3 + 20, 1, 148.5, 113 , 0 );
setMoveKey( spep_1-3 + 22, 1, 149.7, 110.1 , 0 );
setMoveKey( spep_1-3 + 25, 1, 156.7, 108.9 , 0 );
setMoveKey( spep_1-3 + 26, 1, 189.9, 92.1 , 0 );
setMoveKey( spep_1-3 + 29, 1, 181.1, 63.5 , 0 );
setMoveKey( spep_1-3 + 30, 1, 128.2, 55.1 , 0 );
setMoveKey( spep_1-3 + 32, 1, 139.1, 81.2 , 0 );
setMoveKey( spep_1-3 + 34, 1, 146.2, 90.4 , 0 );
setMoveKey( spep_1-3 + 36, 1, 148.7, 77.7 , 0 );
setMoveKey( spep_1-3 + 38, 1, 151, 74.8 , 0 );
setMoveKey( spep_1-3 + 40, 1, 152.7, 72.8 , 0 );
setMoveKey( spep_1-3 + 42, 1, 153.9, 70 , 0 );
setMoveKey( spep_1-3 + 44, 1, 155.1, 67.1 , 0 );
setMoveKey( spep_1-3 + 46, 1, 158, 68.1 , 0 );
setMoveKey( spep_1-3 + 48, 1, 160.7, 68.8 , 0 );
setMoveKey( spep_1-3 + 50, 1, 163.3, 69.3 , 0 );
setMoveKey( spep_1-3 + 52, 1, 165.8, 69.5 , 0 );
setMoveKey( spep_1-3 + 54, 1, 168.1, 69.4 , 0 );
setMoveKey( spep_1-3 + 56, 1, 170.3, 69 , 0 );
setMoveKey( spep_1-3 + 58, 1, 172.2, 68.3 , 0 );
setMoveKey( spep_1-3 + 60, 1, 173.9, 67.3 , 0 );
setMoveKey( spep_1-3 + 62, 1, 175.3, 66 , 0 );
setMoveKey( spep_1-3 + 64, 1, 176.4, 64.4 , 0 );
setMoveKey( spep_1-3 + 66, 1, 176.8, 64 , 0 );
setMoveKey( spep_1-3 + 68, 1, 176.1, 64.1 , 0 );
setMoveKey( spep_1-3 + 70, 1, 174.9, 65.2 , 0 );
setMoveKey( spep_1-3 + 72, 1, 173.7, 66.3 , 0 );
setMoveKey( spep_1-3 + 75, 1, 172.6, 67.4 , 0 );
setMoveKey( spep_1-3 + 76, 1, 248.5, 70.8 , 0 );
setMoveKey( spep_1-3 + 79, 1, 249, 70.9 , 0 );
setMoveKey( spep_1-3 + 80, 1, 172.6, 55.6 , 0 );
setMoveKey( spep_1-3 + 82, 1, 171.2, 56.7 , 0 );
setMoveKey( spep_1-3 + 84, 1, 175.2, 73.7 , 0 );
setMoveKey( spep_1-3 + 86, 1, 175.6, 80 , 0 );
setMoveKey( spep_1-3 + 88, 1, 171.2, 71.2 , 0 );
setMoveKey( spep_1-3 + 90, 1, 170.3, 73.4 , 0 );
setMoveKey( spep_1-3 + 93, 1, 170, 77.5 , 0 );
setMoveKey( spep_1-3 + 94, 1, 218.7, 54.4 , 0 );
setMoveKey( spep_1-3 + 96, 1, 233.4, 72.2 , 0 );
setMoveKey( spep_1-3 + 98, 1, 258, 99 , 0 );
setMoveKey( spep_1-3 + 100, 1, 233.1, 78.8 , 0 );
setMoveKey( spep_1-3 + 102, 1, 226, 73.8 , 0 );
setMoveKey( spep_1-3 + 104, 1, 231.6, 80.6 , 0 );
setMoveKey( spep_1-3 + 106, 1, 228.6, 78.5 , 0 );
setMoveKey( spep_1-3 + 108, 1, 215, 62.4 , 0 );
setMoveKey( spep_1-3 + 110, 1, 209.9, 56.8 , 0 );
setMoveKey( spep_1-3 + 112, 1, 206.4, 52.7 , 0 );
setMoveKey( spep_1-3 + 114, 1, 219.2, 70.9 , 0 );
setMoveKey( spep_1-3 + 116, 1, 218.9, 68.7 , 0 );
setMoveKey( spep_1-3 + 118, 1, 247, 78.7 , 0 );
setMoveKey( spep_1-3 + 120, 1, 246.6, 77.2 , 0 );
setMoveKey( spep_1-3 + 122, 1, 221.9, 57.3 , 0 );
setMoveKey( spep_1-3 + 124, 1, 220.3, 54.9 , 0 );
setMoveKey( spep_1-3 + 126, 1, 229, 58.8 , 0 );
setMoveKey( spep_1-3 + 128, 1, 224.3, 54.4 , 0 );
setMoveKey( spep_1-3 + 130, 1, 206.7, 42.4 , 0 );
setMoveKey( spep_1-3 + 132, 1, 206.6, 40.8 , 0 );
setMoveKey( spep_1-3 + 134, 1, 206.6, 39.3 , 0 );
setMoveKey( spep_1-3 + 136, 1, 206.6, 37.8 , 0 );
setMoveKey( spep_1-3 + 138, 1, 206.6, 36.2 , 0 );
setMoveKey( spep_1-3 + 141, 1, 206.6, 34.6 , 0 );
b=40;
setMoveKey( spep_1-3 + 142, 1, 187.3, -18.3+b , 0 );
setMoveKey( spep_1-3 + 144, 1, 186.7, 6.8+b , 0 );
setMoveKey( spep_1-3 + 146, 1, 193.6, 30.8 , 0 );
setMoveKey( spep_1-3 + 148, 1, 202.4, 62.8 , 0 );
setMoveKey( spep_1-3 + 150, 1, 210.7, 87.4 , 0 );
setMoveKey( spep_1-3 + 152, 1, 218.9, 110.2 , 0 );
setMoveKey( spep_1-3 + 154, 1, 226.3, 194.5 , 0 );
setMoveKey( spep_1-3 + 156, 1, 233.1, 272.9 , 0 );
setMoveKey( spep_1-3 + 158, 1, 239.7, 349.2 , 0 );
setMoveKey( spep_1-3 + 160, 1, 245.4, 420.6 , 0 );
setMoveKey( spep_1-3 + 162, 1, 251, 487.7 , 0 );
setMoveKey( spep_1-3 + 164, 1, 256.1, 551 , 0 );
setMoveKey( spep_1-3 + 166, 1, 259.8, 610 , 0 );
setMoveKey( spep_1-3 + 168, 1, 263.6, 661.9 , 0 );
setMoveKey( spep_1-3 + 170, 1, 265.9, 711 , 0 );
setMoveKey( spep_1-3 + 172, 1, 268.5, 751.5 , 0 );
setMoveKey( spep_1-3 + 174, 1, 269.2, 790.1 , 0 );
setMoveKey( spep_1-3 + 176, 1, 270.3, 823.3 , 0 );
setMoveKey( spep_1-3 + 178, 1, 269.5, 846.1 , 0 );
setMoveKey( spep_1-3 + 180, 1, 269, 867.7 , 0 );
setMoveKey( spep_1-3 + 182, 1, 266.6, 878.2 , 0 );
setMoveKey( spep_1-3 + 184, 1, 264.5, 888.3 , 0 );
setMoveKey( spep_1-3 + 186, 1, 261.8, 886.7 , 0 );
setMoveKey( spep_1-3 + 188, 1, 257, 885 , 0 );

setScaleKey( spep_1 + 0, 1, 1.5, 1.5 );
setScaleKey( spep_1-3 + 22, 1, 1.5, 1.5 );
setScaleKey( spep_1-3 + 25, 1, 1.77, 1.77 );
setScaleKey( spep_1-3 + 26, 1, 1.8, 1.8 );
setScaleKey( spep_1-3 + 29, 1, 1.54, 1.54 );
setScaleKey( spep_1-3 + 30, 1, 1.6, 1.6 );
setScaleKey( spep_1-3 + 32, 1, 1.74, 1.74 );
setScaleKey( spep_1-3 + 34, 1, 1.76, 1.76 );
setScaleKey( spep_1-3 + 36, 1, 1.62, 1.62 );
setScaleKey( spep_1-3 + 38, 1, 1.6, 1.6 );
setScaleKey( spep_1-3 + 75, 1, 1.6, 1.6 );
setScaleKey( spep_1-3 + 76, 1, 1.76, 1.76 );
setScaleKey( spep_1-3 + 79, 1, 1.8, 1.8 );
setScaleKey( spep_1-3 + 80, 1, 1.64, 1.64 );
setScaleKey( spep_1-3 + 82, 1, 1.6, 1.6 );
setScaleKey( spep_1-3 + 84, 1, 1.74, 1.74 );
setScaleKey( spep_1-3 + 86, 1, 1.76, 1.76 );
setScaleKey( spep_1-3 + 88, 1, 1.62, 1.62 );
setScaleKey( spep_1-3 + 90, 1, 1.6, 1.6 );
setScaleKey( spep_1-3 + 93, 1, 1.6, 1.6 );
setScaleKey( spep_1-3 + 94, 1, 1.5, 1.5 );
setScaleKey( spep_1-3 + 96, 1, 1.5, 1.5 );
setScaleKey( spep_1-3 + 98, 1, 1.8, 1.8 );
setScaleKey( spep_1-3 + 100, 1, 1.54, 1.54 );
setScaleKey( spep_1-3 + 102, 1, 1.5, 1.5 );
setScaleKey( spep_1-3 + 104, 1, 1.63, 1.63 );
setScaleKey( spep_1-3 + 106, 1, 1.65, 1.65 );
setScaleKey( spep_1-3 + 108, 1, 1.52, 1.52 );
setScaleKey( spep_1-3 + 110, 1, 1.5, 1.5 );
setScaleKey( spep_1-3 + 116, 1, 1.5, 1.5 );
setScaleKey( spep_1-3 + 118, 1, 1.8, 1.8 );
setScaleKey( spep_1-3 + 120, 1, 1.8, 1.8 );
setScaleKey( spep_1-3 + 122, 1, 1.5, 1.5 );
setScaleKey( spep_1-3 + 124, 1, 1.5, 1.5 );
setScaleKey( spep_1-3 + 126, 1, 1.65, 1.65 );
setScaleKey( spep_1-3 + 128, 1, 1.65, 1.65 );
setScaleKey( spep_1-3 + 130, 1, 1.5, 1.5 );
setScaleKey( spep_1-3 + 141, 1, 1.5, 1.5 );
setScaleKey( spep_1-3 + 142, 1, 1.84, 1.84 );
setScaleKey( spep_1-3 + 144, 1, 1.61, 1.61 );
setScaleKey( spep_1-3 + 146, 1, 1.58, 1.58 );
setScaleKey( spep_1-3 + 148, 1, 1.57, 1.57 );
setScaleKey( spep_1-3 + 150, 1, 1.57, 1.57 );
setScaleKey( spep_1-3 + 152, 1, 1.55, 1.57 );
setScaleKey( spep_1-3 + 154, 1, 1.55, 1.55 );
setScaleKey( spep_1-3 + 156, 1, 1.54, 1.55 );
setScaleKey( spep_1-3 + 158, 1, 1.54, 1.54 );
setScaleKey( spep_1-3 + 160, 1, 1.52, 1.54 );
setScaleKey( spep_1-3 + 162, 1, 1.52, 1.52 );
setScaleKey( spep_1-3 + 164, 1, 1.52, 1.52 );
setScaleKey( spep_1-3 + 166, 1, 1.5, 1.52 );
setScaleKey( spep_1-3 + 168, 1, 1.5, 1.5 );
setScaleKey( spep_1-3 + 170, 1, 1.49, 1.5 );
setScaleKey( spep_1-3 + 172, 1, 1.49, 1.49 );
setScaleKey( spep_1-3 + 174, 1, 1.47, 1.49 );
setScaleKey( spep_1-3 + 176, 1, 1.47, 1.49 );
setScaleKey( spep_1-3 + 178, 1, 1.46, 1.47 );
setScaleKey( spep_1-3 + 180, 1, 1.46, 1.47 );
setScaleKey( spep_1-3 + 182, 1, 1.44, 1.46 );
setScaleKey( spep_1-3 + 184, 1, 1.44, 1.46 );
setScaleKey( spep_1-3 + 186, 1, 1.44, 1.44 );
setScaleKey( spep_1-3 + 188, 1, 1.44, 1.44 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1-3 + 29, 1, 0 );
setRotateKey( spep_1-3 + 30, 1, -52.2 );
setRotateKey( spep_1-3 + 32, 1, -50.9 );
setRotateKey( spep_1-3 + 34, 1, -50.1 );
setRotateKey( spep_1-3 + 36, 1, -49.7 );
setRotateKey( spep_1-3 + 38, 1, -49.5 );
setRotateKey( spep_1-3 + 40, 1, -49.4 );
setRotateKey( spep_1-3 + 44, 1, -49.4 );
setRotateKey( spep_1-3 + 46, 1, -48.4 );
setRotateKey( spep_1-3 + 48, 1, -47.5 );
setRotateKey( spep_1-3 + 50, 1, -46.7 );
setRotateKey( spep_1-3 + 52, 1, -45.9 );
setRotateKey( spep_1-3 + 54, 1, -45.2 );
setRotateKey( spep_1-3 + 56, 1, -44.6 );
setRotateKey( spep_1-3 + 58, 1, -44 );
setRotateKey( spep_1-3 + 60, 1, -43.5 );
setRotateKey( spep_1-3 + 62, 1, -43.1 );
setRotateKey( spep_1-3 + 64, 1, -42.7 );
setRotateKey( spep_1-3 + 66, 1, -42.4 );
setRotateKey( spep_1-3 + 68, 1, -42.2 );
setRotateKey( spep_1-3 + 70, 1, -42 );
setRotateKey( spep_1-3 + 72, 1, -41.9 );
setRotateKey( spep_1-3 + 75, 1, -41.9 );
setRotateKey( spep_1-3 + 76, 1, -2.8 );
setRotateKey( spep_1-3 + 79, 1, -2.8 );
setRotateKey( spep_1-3 + 80, 1, -52.2 );
setRotateKey( spep_1-3 + 82, 1, -51.2 );
setRotateKey( spep_1-3 + 84, 1, -50.1 );
setRotateKey( spep_1-3 + 86, 1, -49 );
setRotateKey( spep_1-3 + 88, 1, -48 );
setRotateKey( spep_1-3 + 90, 1, -46.9 );
setRotateKey( spep_1-3 + 93, 1, -45.9 );
setRotateKey( spep_1-3 + 94, 1, -2.8 );
setRotateKey( spep_1-3 + 118, 1, -2.8 );
setRotateKey( spep_1-3 + 120, 1, -2.9 );
setRotateKey( spep_1-3 + 122, 1, -3.3 );
setRotateKey( spep_1-3 + 124, 1, -4.5 );
setRotateKey( spep_1-3 + 126, 1, -6.9 );
setRotateKey( spep_1-3 + 128, 1, -10.9 );
setRotateKey( spep_1-3 + 130, 1, -16.8 );
setRotateKey( spep_1-3 + 132, 1, -16.8 );
setRotateKey( spep_1-3 + 134, 1, -17 );
setRotateKey( spep_1-3 + 136, 1, -17.5 );
setRotateKey( spep_1-3 + 138, 1, -18.4 );
setRotateKey( spep_1-3 + 141, 1, -20 );
setRotateKey( spep_1-3 + 142, 1, -57.2 );
setRotateKey( spep_1-3 + 144, 1, -54.7 );
setRotateKey( spep_1-3 + 146, 1, -52.2 );
setRotateKey( spep_1-3 + 148, 1, -49.7 );
setRotateKey( spep_1-3 + 150, 1, -47.2 );
setRotateKey( spep_1-3 + 152, 1, -44.8 );
setRotateKey( spep_1-3 + 154, 1, -42.5 );
setRotateKey( spep_1-3 + 156, 1, -40.2 );
setRotateKey( spep_1-3 + 158, 1, -38 );
setRotateKey( spep_1-3 + 160, 1, -35.9 );
setRotateKey( spep_1-3 + 162, 1, -33.9 );
setRotateKey( spep_1-3 + 164, 1, -32 );
setRotateKey( spep_1-3 + 166, 1, -30.2 );
setRotateKey( spep_1-3 + 168, 1, -28.6 );
setRotateKey( spep_1-3 + 170, 1, -27.1 );
setRotateKey( spep_1-3 + 172, 1, -25.7 );
setRotateKey( spep_1-3 + 174, 1, -24.4 );
setRotateKey( spep_1-3 + 176, 1, -23.4 );
setRotateKey( spep_1-3 + 178, 1, -22.4 );
setRotateKey( spep_1-3 + 180, 1, -21.7 );
setRotateKey( spep_1-3 + 182, 1, -21.1 );
setRotateKey( spep_1-3 + 184, 1, -20.6 );
setRotateKey( spep_1-3 + 186, 1, -20.4 );
setRotateKey( spep_1-3 + 188, 1, -20.3 );

-- ** 白フェード ** --
entryFade( spep_1 + 182, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
--連続斬り
playSe( spep_1 + 22, 1004 );
setSeVolume( spep_1 + 22, 1004, 80 );

playSe( spep_1 + 30, 1032 );

playSe( spep_1 + 77, 1004 );
setSeVolume( spep_1 + 22, 1004, 80 );

playSe( spep_1 + 80, 1032 );
playSe( spep_1 + 82, 1004 );
playSe( spep_1 + 89, 1032 );
playSe( spep_1 + 92, 1004 );
playSe( spep_1 + 100, 1032 );
playSe( spep_1 + 103, 1004 );
playSe( spep_1 + 110, 1032 );
playSe( spep_1 + 113, 1004 );

--ラスト斬り
playSe( spep_1 + 149, 1032 );

SE1 = playSe( spep_1 + 149, 1109 );
setSeVolume( spep_1 + 149, 1004, 70 );
setSeVolume( spep_1 + 168, 1004, 60 );
setSeVolume( spep_1 + 174, 1004, 40 );
setSeVolume( spep_1 + 180, 1004, 20 );
setSeVolume( spep_1 + 195, 1004, 0 );
stopSe( spep_1 + 195, SE1, 0 );

playSe( spep_1 + 149, 1004 );

SE2 = playSe( spep_1 + 155, 44 );
setSeVolume( spep_1 + 155, 44, 90 );
setSeVolume( spep_1 + 170, 44, 90 );
setSeVolume( spep_1 + 180, 44, 50 );
setSeVolume( spep_1 + 193, 44, 0 );
stopSe( spep_1 + 193, SE2, 0 );

--次の準備
spep_2 = spep_1+190;

------------------------------------------------------
-- 抜刀⇒突進
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_2 + 0, SP_04, 0x100, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_2 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_2 + 110, tame, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_2 + 110, tame, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tame, 0 );
setEffRotateKey( spep_2 + 110, tame, 0 );
setEffAlphaKey( spep_2 + 0, tame, 255 );
setEffAlphaKey( spep_2 + 110, tame, 255 )

--集中線
shuchusen5 = entryEffectLife( spep_2 ,  906, 108, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_2 , shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_2 + 108, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_2 , shuchusen5, 1.1, 1.1 );
setEffScaleKey( spep_2 + 108, shuchusen5, 1.1, 1.1 );

setEffRotateKey( spep_2 , shuchusen5, 180 );
setEffRotateKey( spep_2 + 108, shuchusen5, 180 );

setEffAlphaKey( spep_2 , shuchusen5, 0 );
setEffAlphaKey( spep_2 + 18, shuchusen5, 0 );
setEffAlphaKey( spep_2 + 19, shuchusen5, 255 );
setEffAlphaKey( spep_2 + 20, shuchusen5, 255 );
setEffAlphaKey( spep_2 + 108, shuchusen5, 255 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_2, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_2, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_2 + 12 , 190006, 72, 0x100, -1, 0, -40, 540);    -- ゴゴゴゴ

setEffShake(spep_2 + 12 ,ctgogo,72,10);

setEffMoveKey(  spep_2 +12 ,  ctgogo,  -40,  540);
setEffMoveKey(  spep_2 +84 ,  ctgogo,  -40,  540);

setEffAlphaKey( spep_2 +12 , ctgogo, 0 );
setEffAlphaKey( spep_2 + 13 , ctgogo, 255 );
setEffAlphaKey( spep_2 + 14 , ctgogo, 255 );
setEffAlphaKey( spep_2 + 76 , ctgogo, 255 );
setEffAlphaKey( spep_2 + 78 , ctgogo, 255 );
setEffAlphaKey( spep_2 + 80 , ctgogo, 191 );
setEffAlphaKey( spep_2 + 82 , ctgogo, 128 );
setEffAlphaKey( spep_2 + 84 , ctgogo, 64 );

setEffRotateKey(  spep_2 +12 ,  ctgogo,  0);
setEffRotateKey(  spep_2 +84 ,  ctgogo,  0);

setEffScaleKey(  spep_2 +12 ,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_2 +74 ,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_2 +84 ,  ctgogo, 1.07, 1.07 );

--黒背景
entryFadeBg( spep_2, 0, 110, 0, 0, 0, 0, 200 );

-- ** 白フェード ** --
entryFade( spep_2 + 100, 6, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_2 + 12, 1018 );  --ゴゴゴ

--剣光る
playSe( spep_2 + 29, 1141 );
setSeVolume( spep_2 + 29, 1141, 70 );

playSe( spep_2 + 29, 1042 );
setSeVolume( spep_2 + 29, 1042, 70 );

SE3 = playSe( spep_2 + 29, 13 );
setSeVolume( spep_2 + 29, 13, 85 );
setSeVolume( spep_2 + 66, 13, 85 );
setSeVolume( spep_2 + 75, 13, 45 );
setSeVolume( spep_2 + 90, 13, 20 );
setSeVolume( spep_2 + 102, 13, 0 );
stopSe( spep_2 + 102, SE2, 0 );

playSe( spep_2 + 88, 8 );  --手前にズーム
setSeVolume( spep_2 + 88, 8, 80 );

--次の準備
spep_3 = spep_2+110;

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
-- 突進
------------------------------------------------------
-- ** エフェクト等 ** --
tossin2 = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_4 + 0, tossin2, 0, 0 , 0 );
setEffMoveKey( spep_4 + 76, tossin2, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, tossin2, 1.0, 1.0 );
setEffScaleKey( spep_4 + 76, tossin2, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, tossin2, 0 );
setEffRotateKey( spep_4 + 76, tossin2, 0 );
setEffAlphaKey( spep_4 + 0, tossin2, 255 );
setEffAlphaKey( spep_4 + 76, tossin2, 255 );
setEffAlphaKey( spep_4 + 77, tossin2, 0 );
setEffAlphaKey( spep_4 + 78, tossin2, 0 );

--黒背景
entryFadeBg( spep_4, 0, 76, 0, 0, 0, 0, 200 );

-- ** 白フェード ** --
entryFade( spep_4 + 68, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
--ダッシュ
playSe( spep_4 + 3, 1018 );
setSeVolume( spep_4 + 3, 1018, 80 );

SE4 = playSe( spep_4 + 3, 1116 );
setSeVolume( spep_4 + 3, 1116, 45 );
setSeVolume( spep_4 + 31, 1116, 45 );
setSeVolume( spep_4 + 41, 1116, 20 );
setSeVolume( spep_4 + 51, 1116, 0 );
stopSe( spep_4 + 51, SE4, 0 );

SE5 = playSe( spep_4 + 71, 1003 );
setSeVolume( spep_4 + 71, 1003, 60 );
stopSe( spep_4 + 81, SE5, 0 );

--次の準備
spep_5 = spep_4+76;

------------------------------------------------------
-- フィニッシュ
------------------------------------------------------

-- ** エフェクト等 ** --
finish = entryEffect( spep_5 + 0, SP_06, 0x100, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_5 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_5 + 200, finish, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_5 + 200, finish, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish, 0 );
setEffRotateKey( spep_5 + 200, finish, 0 );
setEffAlphaKey( spep_5 + 0, finish, 255 );
setEffAlphaKey( spep_5 + 200, finish, 255 )

--集中線
shuchusen6 = entryEffectLife( spep_5-3 + 72,  906, 126, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_5-3 + 72, shuchusen6, 0, 0 , 0 );
setEffMoveKey( spep_5-3 + 198, shuchusen6, 0, 0 , 0 );

setEffScaleKey( spep_5-3 + 72, shuchusen6, 1.1, 1.1 );
setEffScaleKey( spep_5-3 + 198, shuchusen6, 1.1, 1.1 );

setEffRotateKey( spep_5-3 + 72, shuchusen6, 180 );
setEffRotateKey( spep_5-3 + 198, shuchusen6, 180 );

setEffAlphaKey( spep_5-3 + 72, shuchusen6, 255 );
setEffAlphaKey( spep_5-3 + 198, shuchusen6, 255 );

--白フェード
entryFade( spep_5 + 67, 0, 0, 4, fcolor_r, fcolor_g, fcolor_b, 200 );  --white fade

--黒背景
entryFadeBg( spep_5, 0, 200, 0, 0, 0, 0, 200 );

-- ** 音 ** --
--クロス斬り
playSe( spep_5 + 4, 1004 );
setSeVolume( spep_5 + 4, 1004, 85 );

playSe( spep_5 + 5, 1032 );
setSeVolume( spep_5 + 5, 1032, 85 );

playSe( spep_5 + 5, 1031 );
setSeVolume( spep_5 + 5, 1031, 85 );

playSe( spep_5 + 5, 1042 );
setSeVolume( spep_5 + 5, 1042, 70 );

playSe( spep_5 + 12, 1004 );
setSeVolume( spep_5 + 12, 1004, 85 );

playSe( spep_5 +  13, 1032 );
setSeVolume( spep_5 + 13, 1032, 85 );

playSe( spep_5 +  13, 1031 );
setSeVolume( spep_5 + 13, 1031, 85 );

playSe( spep_5 +  13, 1042 );
setSeVolume( spep_5 + 13, 1042, 70 );

--爆発
playSe( spep_5 +  76, 1023 );
setSeVolume( spep_5 + 76, 1023, 140 );

SE6 = playSe( spep_5 +  76, 1159 );
setSeVolume( spep_5 + 76, 1159, 50 );
setSeVolume( spep_5 + 116, 1159, 50 );
setSeVolume( spep_5 + 130, 1159, 40 );
setSeVolume( spep_5 + 160, 1159, 20 );
setSeVolume( spep_5 + 188, 1159, 0 );
stopSe( spep_5 + 188, SE6, 0 );

-- ** ダメージ表示 ** --
dealDamage(spep_5 +70 );
endPhase( spep_5 + 188 );

else 

------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 突進（オーラあり）
------------------------------------------------------
--はじめの準備
spep_0 = 0;

-- ** エフェクト等 ** --
tossin = entryEffect( spep_0 + 0, SP_01x, 0x100, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_0 + 0, tossin, 0, 0 , 0 );
setEffMoveKey( spep_0 + 98, tossin, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tossin, -1.0, 1.0 );
setEffScaleKey( spep_0 + 98, tossin, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tossin, 0 );
setEffRotateKey( spep_0 + 98, tossin, 0 );
setEffAlphaKey( spep_0 + 0, tossin, 255 );
setEffAlphaKey( spep_0 + 98, tossin, 255 );

--集中線
shuchusen1 = entryEffectLife( spep_0 + 0,  906, 98, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 98, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchusen1, 1, 1 );
setEffScaleKey( spep_0 + 98, shuchusen1, 1, 1 );

setEffRotateKey( spep_0 + 0, shuchusen1, 0 );
setEffRotateKey( spep_0 + 98, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 98, shuchusen1, 255 );

--黒背景
entryFadeBg( spep_0, 0, 98, 0, 0, 0, 0, 200 );

-- ** 音 ** --   
playSe( spep_0 + 7, 8 ); --ダッシュ 
SE0 = playSe( spep_0 + 13, 44 ); --ダッシュ

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 40; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE0, 0 );
    --stopSe( SP_dodge - 12, SE1, 0 );
    --stopSe( SP_dodge - 12, SE2, 0 );
    
    pauseAll( SP_dodge, 67 );


    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,-1,  0,  0,  -350 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );   -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100, -1,  0,  0,  350 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);
    
    
    
    
    
    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 ); -- white fade
    setMoveKey( SP_dodge + 10,   0,-2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

-- ** 白フェード ** --
entryFade( spep_0 + 90, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_0 + 58, 1072 ); --ダッシュ

--次の準備
spep_1 = spep_0+98;

------------------------------------------------------
-- 斬撃
------------------------------------------------------
-- ** エフェクト等 ** --
cat_f = entryEffect( spep_1 + 0, SP_02x, 0x100, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_1 + 0, cat_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 190, cat_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, cat_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 190, cat_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, cat_f, 0 );
setEffRotateKey( spep_1 + 190, cat_f, 0 );
setEffAlphaKey( spep_1 + 0, cat_f, 255 );
setEffAlphaKey( spep_1 + 190, cat_f, 255 )

-- ** エフェクト等 ** --
cat_b = entryEffect( spep_1 + 0, SP_03x, 0x80, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_1 + 0, cat_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 190, cat_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, cat_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 190, cat_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, cat_b, 0 );
setEffRotateKey( spep_1 + 190, cat_b, 0 );
setEffAlphaKey( spep_1 + 0, cat_b, 255 );
setEffAlphaKey( spep_1 + 190, cat_b, 255 )

--文字エントリー
ctzan = entryEffectLife( spep_1 -3 + 26,  10010, 22, 0x100, -1, 0, 29.7, 266.2 );--ザンッ

setEffMoveKey( spep_1 -3 + 26, ctzan, 29.7, 266.2 , 0 );
setEffMoveKey( spep_1 -3 + 28, ctzan, 34.6, 328.4 , 0 );
setEffMoveKey( spep_1 -3 + 30, ctzan, 34.6, 328.4 , 0 );
setEffMoveKey( spep_1 -3 + 32, ctzan, 34.6, 328.5 , 0 );
setEffMoveKey( spep_1 -3 + 48, ctzan, 34.6, 328.5 , 0 );

setEffScaleKey( spep_1 -3 + 26, ctzan, 1.08, 1.08 );
setEffScaleKey( spep_1 -3 + 28, ctzan, 1.9, 1.9 );
setEffScaleKey( spep_1 -3 + 30, ctzan, 1.93, 1.93 );
setEffScaleKey( spep_1 -3 + 32, ctzan, 1.96, 1.96 );
setEffScaleKey( spep_1 -3 + 34, ctzan, 1.98, 1.98 );
setEffScaleKey( spep_1 -3 + 36, ctzan, 1.99, 1.99 );
setEffScaleKey( spep_1 -3 + 38, ctzan, 1.99, 1.99 );
setEffScaleKey( spep_1 -3 + 40, ctzan, 2, 2 );
setEffScaleKey( spep_1 -3 + 48, ctzan, 2, 2 );

setEffRotateKey( spep_1 -3 + 26, ctzan, -9.9 );
setEffRotateKey( spep_1 -3 + 28, ctzan, -9.8 );
setEffRotateKey( spep_1 -3 + 30, ctzan, -9.9 );
setEffRotateKey( spep_1 -3 + 32, ctzan, -9.9 );
setEffRotateKey( spep_1 -3 + 34, ctzan, -10 );
setEffRotateKey( spep_1 -3 + 48, ctzan, -10 );

--文字エントリー
ctzubaba = entryEffectLife( spep_1 -3 + 70,  10015, 58, 0x100, -1, 0, 34.4, 374.9 );--ズバババッ

setEffMoveKey( spep_1 -3 + 70, ctzubaba, 34.4, 374.9 , 0 );
setEffMoveKey( spep_1 -3 + 72, ctzubaba, 30.6, 367.1 , 0 );
setEffMoveKey( spep_1 -3 + 74, ctzubaba, 29.5, 364.6 , 0 );
setEffMoveKey( spep_1 -3 + 76, ctzubaba, 34.4, 374.8 , 0 );
setEffMoveKey( spep_1 -3 + 78, ctzubaba, 29.4, 364.5 , 0 );
setEffMoveKey( spep_1 -3 + 80, ctzubaba, 34.4, 374.8 , 0 );
setEffMoveKey( spep_1 -3 + 82, ctzubaba, 29.4, 364.4 , 0 );
setEffMoveKey( spep_1 -3 + 84, ctzubaba, 34.4, 374.8 , 0 );
setEffMoveKey( spep_1 -3 + 86, ctzubaba, 29.3, 364.3 , 0 );
setEffMoveKey( spep_1 -3 + 88, ctzubaba, 34.4, 374.8 , 0 );
setEffMoveKey( spep_1 -3 + 90, ctzubaba, 29.2, 364.2 , 0 );
setEffMoveKey( spep_1 -3 + 92, ctzubaba, 34.4, 374.8 , 0 );
setEffMoveKey( spep_1 -3 + 94, ctzubaba, 29.2, 364.1 , 0 );
setEffMoveKey( spep_1 -3 + 96, ctzubaba, 34.4, 374.8 , 0 );
setEffMoveKey( spep_1 -3 + 98, ctzubaba, 29.1, 364 , 0 );
setEffMoveKey( spep_1 -3 + 100, ctzubaba, 34.4, 374.8 , 0 );
setEffMoveKey( spep_1 -3 + 102, ctzubaba, 29.1, 363.9 , 0 );
setEffMoveKey( spep_1 -3 + 104, ctzubaba, 34.4, 374.8 , 0 );
setEffMoveKey( spep_1 -3 + 106, ctzubaba, 29, 363.8 , 0 );
setEffMoveKey( spep_1 -3 + 108, ctzubaba, 34.4, 374.8 , 0 );
setEffMoveKey( spep_1 -3 + 110, ctzubaba, 29, 363.7 , 0 );
setEffMoveKey( spep_1 -3 + 112, ctzubaba, 34.4, 374.8 , 0 );
setEffMoveKey( spep_1 -3 + 114, ctzubaba, 28.9, 363.6 , 0 );
setEffMoveKey( spep_1 -3 + 116, ctzubaba, 34.4, 374.8 , 0 );
setEffMoveKey( spep_1 -3 + 118, ctzubaba, 28.9, 363.5 , 0 );
setEffMoveKey( spep_1 -3 + 120, ctzubaba, 34.4, 374.8 , 0 );
setEffMoveKey( spep_1 -3 + 122, ctzubaba, 28.8, 363.4 , 0 );
setEffMoveKey( spep_1 -3 + 124, ctzubaba, 28.8, 363.4 , 0 );
setEffMoveKey( spep_1 -3 + 126, ctzubaba, 34.4, 374.8 , 0 );
setEffMoveKey( spep_1 -3 + 128, ctzubaba, 34.4, 374.8 , 0 );

setEffScaleKey( spep_1 -3 + 70, ctzubaba, 1.49, 1.49 );
setEffScaleKey( spep_1 -3 + 72, ctzubaba, 2.15, 2.15 );
setEffScaleKey( spep_1 -3 + 74, ctzubaba, 2.8, 2.8 );
setEffScaleKey( spep_1 -3 + 76, ctzubaba, 2.81, 2.81 );
setEffScaleKey( spep_1 -3 + 78, ctzubaba, 2.83, 2.83 );
setEffScaleKey( spep_1 -3 + 80, ctzubaba, 2.84, 2.84 );
setEffScaleKey( spep_1 -3 + 82, ctzubaba, 2.86, 2.86 );
setEffScaleKey( spep_1 -3 + 84, ctzubaba, 2.87, 2.87 );
setEffScaleKey( spep_1 -3 + 86, ctzubaba, 2.88, 2.88 );
setEffScaleKey( spep_1 -3 + 88, ctzubaba, 2.9, 2.9 );
setEffScaleKey( spep_1 -3 + 90, ctzubaba, 2.91, 2.91 );
setEffScaleKey( spep_1 -3 + 92, ctzubaba, 2.93, 2.93 );
setEffScaleKey( spep_1 -3 + 94, ctzubaba, 2.94, 2.94 );
setEffScaleKey( spep_1 -3 + 96, ctzubaba, 2.95, 2.95 );
setEffScaleKey( spep_1 -3 + 98, ctzubaba, 2.97, 2.97 );
setEffScaleKey( spep_1 -3 + 100, ctzubaba, 2.98, 2.98 );
setEffScaleKey( spep_1 -3 + 102, ctzubaba, 3, 3 );
setEffScaleKey( spep_1 -3 + 104, ctzubaba, 3.01, 3.01 );
setEffScaleKey( spep_1 -3 + 106, ctzubaba, 3.02, 3.02 );
setEffScaleKey( spep_1 -3 + 108, ctzubaba, 3.04, 3.04 );
setEffScaleKey( spep_1 -3 + 110, ctzubaba, 3.05, 3.05 );
setEffScaleKey( spep_1 -3 + 112, ctzubaba, 3.07, 3.07 );
setEffScaleKey( spep_1 -3 + 114, ctzubaba, 3.08, 3.08 );
setEffScaleKey( spep_1 -3 + 116, ctzubaba, 3.09, 3.09 );
setEffScaleKey( spep_1 -3 + 118, ctzubaba, 3.11, 3.11 );
setEffScaleKey( spep_1 -3 + 120, ctzubaba, 3.12, 3.12 );
setEffScaleKey( spep_1 -3 + 122, ctzubaba, 3.14, 3.14 );
setEffScaleKey( spep_1 -3 + 124, ctzubaba, 3.15, 3.15 );
setEffScaleKey( spep_1 -3 + 126, ctzubaba, 2.98, 2.98 );
setEffScaleKey( spep_1 -3 + 128, ctzubaba, 2.8, 2.8 );

setEffRotateKey( spep_1 -3 + 70, ctzubaba, -19.1 );
setEffRotateKey( spep_1 -3 + 72, ctzubaba, -19.2 );
setEffRotateKey( spep_1 -3 + 98, ctzubaba, -19.2 );
setEffRotateKey( spep_1 -3 + 100, ctzubaba, -19.1 );
setEffRotateKey( spep_1 -3 + 126, ctzubaba, -19.1 );
setEffRotateKey( spep_1 -3 + 128, ctzubaba, -19.2 );

setEffAlphaKey( spep_1 -3 + 70, ctzubaba, 85 );
setEffAlphaKey( spep_1 -3 + 72, ctzubaba, 170 );
setEffAlphaKey( spep_1 -3 + 74, ctzubaba, 255 );
setEffAlphaKey( spep_1 -3 + 124, ctzubaba, 255 );
setEffAlphaKey( spep_1 -3 + 126, ctzubaba, 128 );
setEffAlphaKey( spep_1 -3 + 128, ctzubaba, 0 );

--文字エントリー
ctga = entryEffectLife( spep_1-3 + 142,  10005, 24, 0x100, -1, 0, 115, -171.8 );--ガッ

setEffMoveKey( spep_1-3 + 142, ctga, 115, -171.8 , 0 );
setEffMoveKey( spep_1-3 + 144, ctga, 110.2, -174.7 , 0 );
setEffMoveKey( spep_1-3 + 146, ctga, 110.4, -174.3 , 0 );
setEffMoveKey( spep_1-3 + 148, ctga, 110.5, -174 , 0 );
setEffMoveKey( spep_1-3 + 150, ctga, 110.6, -173.8 , 0 );
setEffMoveKey( spep_1-3 + 152, ctga, 110.7, -173.6 , 0 );
setEffMoveKey( spep_1-3 + 154, ctga, 110.7, -173.5 , 0 );
setEffMoveKey( spep_1-3 + 156, ctga, 110.8, -173.4 , 0 );
setEffMoveKey( spep_1-3 + 158, ctga, 110.8, -173.4 , 0 );
setEffMoveKey( spep_1-3 + 166, ctga, 110.8, -173.4 , 0 );

a=0.6;

setEffScaleKey( spep_1-3 + 142, ctga, 0.54+a, 0.54+a );
setEffScaleKey( spep_1-3 + 144, ctga, 0.66+a, 0.66+a );
setEffScaleKey( spep_1-3 + 146, ctga, 0.74+a, 0.74+a );
setEffScaleKey( spep_1-3 + 148, ctga, 0.8+a, 0.8+a );
setEffScaleKey( spep_1-3 + 150, ctga, 0.85+a, 0.85+a );
setEffScaleKey( spep_1-3 + 152, ctga, 0.88+a, 0.88+a );
setEffScaleKey( spep_1-3 + 154, ctga, 0.91+a, 0.91+a );
setEffScaleKey( spep_1-3 + 156, ctga, 0.92+a, 0.92+a );
setEffScaleKey( spep_1-3 + 158, ctga, 0.93+a, 0.93+a );
setEffScaleKey( spep_1-3 + 166, ctga, 0.93+a, 0.93+a );

setEffRotateKey( spep_1-3 + 142, ctga, -24.6 );
setEffRotateKey( spep_1-3 + 146, ctga, -24.6 );
setEffRotateKey( spep_1-3 + 148, ctga, -24.5 );
setEffRotateKey( spep_1-3 + 166, ctga, -24.5 );

setEffAlphaKey( spep_1-3 + 142, ctga, 191 );
setEffAlphaKey( spep_1-3 + 144, ctga, 255 );
setEffAlphaKey( spep_1-3 + 162, ctga, 255 );
setEffAlphaKey( spep_1-3 + 164, ctga, 64 );
setEffAlphaKey( spep_1-3 + 166, ctga, 0 );

--集中線
shuchusen2 = entryEffectLife( spep_1 -3 + 24,  906, 14, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_1 -3 + 24, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_1 -3 + 38, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_1 -3 + 24, shuchusen2, 1.3, 1.3 );
setEffScaleKey( spep_1 -3 + 38, shuchusen2, 1.3, 1.3 );

setEffRotateKey( spep_1 -3 + 24, shuchusen2, 180 );
setEffRotateKey( spep_1 -3 + 38, shuchusen2, 180 );

setEffAlphaKey( spep_1 -3 + 24, shuchusen2, 255 );
setEffAlphaKey( spep_1 -3 + 38, shuchusen2, 255 );

--集中線
shuchusen3 = entryEffectLife( spep_1 -3 + 78,  906, 60, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_1 -3 + 78, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_1 -3 + 136, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_1 -3 + 78, shuchusen3, 1.3, 1.3 );
setEffScaleKey( spep_1 -3 + 136, shuchusen3, 1.3, 1.3 );

setEffRotateKey( spep_1 -3 + 78, shuchusen3, 180 );
setEffRotateKey( spep_1 -3 + 136, shuchusen3, 180 );

setEffAlphaKey( spep_1 -3 + 78, shuchusen3, 255 );
setEffAlphaKey( spep_1 -3 + 136, shuchusen3, 255 );

--集中線
shuchusen4 = entryEffectLife( spep_1 -3 + 140,  906, 12, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_1 -3 + 140, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_1 -3 + 152, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_1 -3 + 140, shuchusen4, 1.3, 1.3 );
setEffScaleKey( spep_1 -3 + 152, shuchusen4, 1.3, 1.3 );

setEffRotateKey( spep_1 -3 + 140, shuchusen4, 180 );
setEffRotateKey( spep_1 -3 + 152, shuchusen4, 180 );

setEffAlphaKey( spep_1 -3 + 140, shuchusen4, 255 );
setEffAlphaKey( spep_1 -3 + 152, shuchusen4, 255 );

--敵の動き
setDisp( spep_1-3 + 0, 1, 1 );
setDisp( spep_1-3 + 188, 1, 0 );

changeAnime( spep_1-3 + 0, 1, 100 );
changeAnime( spep_1-3 + 26, 1, 108 );
changeAnime( spep_1-3 + 30, 1, 106 );
changeAnime( spep_1-3 + 76, 1, 108 );
changeAnime( spep_1-3 + 80, 1, 106 );
changeAnime( spep_1-3 + 94, 1, 108 );
changeAnime( spep_1-3 + 142, 1, 106 );

setMoveKey( spep_1 + 0, 1, 135.3, 142.2 , 0 );
--setMoveKey( spep_1-3 + 2, 1, 136.7, 139.2 , 0 );
setMoveKey( spep_1-3 + 4, 1, 138, 136.4 , 0 );
setMoveKey( spep_1-3 + 6, 1, 139.3, 133.5 , 0 );
setMoveKey( spep_1-3 + 8, 1, 140.6, 130.6 , 0 );
setMoveKey( spep_1-3 + 10, 1, 142, 127.7 , 0 );
setMoveKey( spep_1-3 + 12, 1, 143.3, 124.7 , 0 );
setMoveKey( spep_1-3 + 14, 1, 144.6, 121.8 , 0 );
setMoveKey( spep_1-3 + 16, 1, 145.9, 118.9 , 0 );
setMoveKey( spep_1-3 + 18, 1, 147.2, 116 , 0 );
setMoveKey( spep_1-3 + 20, 1, 148.5, 113 , 0 );
setMoveKey( spep_1-3 + 22, 1, 149.7, 110.1 , 0 );
setMoveKey( spep_1-3 + 25, 1, 156.7, 108.9 , 0 );
setMoveKey( spep_1-3 + 26, 1, 189.9, 92.1 , 0 );
setMoveKey( spep_1-3 + 29, 1, 181.1, 63.5 , 0 );
setMoveKey( spep_1-3 + 30, 1, 128.2, 55.1 , 0 );
setMoveKey( spep_1-3 + 32, 1, 139.1, 81.2 , 0 );
setMoveKey( spep_1-3 + 34, 1, 146.2, 90.4 , 0 );
setMoveKey( spep_1-3 + 36, 1, 148.7, 77.7 , 0 );
setMoveKey( spep_1-3 + 38, 1, 151, 74.8 , 0 );
setMoveKey( spep_1-3 + 40, 1, 152.7, 72.8 , 0 );
setMoveKey( spep_1-3 + 42, 1, 153.9, 70 , 0 );
setMoveKey( spep_1-3 + 44, 1, 155.1, 67.1 , 0 );
setMoveKey( spep_1-3 + 46, 1, 158, 68.1 , 0 );
setMoveKey( spep_1-3 + 48, 1, 160.7, 68.8 , 0 );
setMoveKey( spep_1-3 + 50, 1, 163.3, 69.3 , 0 );
setMoveKey( spep_1-3 + 52, 1, 165.8, 69.5 , 0 );
setMoveKey( spep_1-3 + 54, 1, 168.1, 69.4 , 0 );
setMoveKey( spep_1-3 + 56, 1, 170.3, 69 , 0 );
setMoveKey( spep_1-3 + 58, 1, 172.2, 68.3 , 0 );
setMoveKey( spep_1-3 + 60, 1, 173.9, 67.3 , 0 );
setMoveKey( spep_1-3 + 62, 1, 175.3, 66 , 0 );
setMoveKey( spep_1-3 + 64, 1, 176.4, 64.4 , 0 );
setMoveKey( spep_1-3 + 66, 1, 176.8, 64 , 0 );
setMoveKey( spep_1-3 + 68, 1, 176.1, 64.1 , 0 );
setMoveKey( spep_1-3 + 70, 1, 174.9, 65.2 , 0 );
setMoveKey( spep_1-3 + 72, 1, 173.7, 66.3 , 0 );
setMoveKey( spep_1-3 + 75, 1, 172.6, 67.4 , 0 );
setMoveKey( spep_1-3 + 76, 1, 248.5, 70.8 , 0 );
setMoveKey( spep_1-3 + 79, 1, 249, 70.9 , 0 );
setMoveKey( spep_1-3 + 80, 1, 172.6, 55.6 , 0 );
setMoveKey( spep_1-3 + 82, 1, 171.2, 56.7 , 0 );
setMoveKey( spep_1-3 + 84, 1, 175.2, 73.7 , 0 );
setMoveKey( spep_1-3 + 86, 1, 175.6, 80 , 0 );
setMoveKey( spep_1-3 + 88, 1, 171.2, 71.2 , 0 );
setMoveKey( spep_1-3 + 90, 1, 170.3, 73.4 , 0 );
setMoveKey( spep_1-3 + 93, 1, 170, 77.5 , 0 );
setMoveKey( spep_1-3 + 94, 1, 218.7, 54.4 , 0 );
setMoveKey( spep_1-3 + 96, 1, 233.4, 72.2 , 0 );
setMoveKey( spep_1-3 + 98, 1, 258, 99 , 0 );
setMoveKey( spep_1-3 + 100, 1, 233.1, 78.8 , 0 );
setMoveKey( spep_1-3 + 102, 1, 226, 73.8 , 0 );
setMoveKey( spep_1-3 + 104, 1, 231.6, 80.6 , 0 );
setMoveKey( spep_1-3 + 106, 1, 228.6, 78.5 , 0 );
setMoveKey( spep_1-3 + 108, 1, 215, 62.4 , 0 );
setMoveKey( spep_1-3 + 110, 1, 209.9, 56.8 , 0 );
setMoveKey( spep_1-3 + 112, 1, 206.4, 52.7 , 0 );
setMoveKey( spep_1-3 + 114, 1, 219.2, 70.9 , 0 );
setMoveKey( spep_1-3 + 116, 1, 218.9, 68.7 , 0 );
setMoveKey( spep_1-3 + 118, 1, 247, 78.7 , 0 );
setMoveKey( spep_1-3 + 120, 1, 246.6, 77.2 , 0 );
setMoveKey( spep_1-3 + 122, 1, 221.9, 57.3 , 0 );
setMoveKey( spep_1-3 + 124, 1, 220.3, 54.9 , 0 );
setMoveKey( spep_1-3 + 126, 1, 229, 58.8 , 0 );
setMoveKey( spep_1-3 + 128, 1, 224.3, 54.4 , 0 );
setMoveKey( spep_1-3 + 130, 1, 206.7, 42.4 , 0 );
setMoveKey( spep_1-3 + 132, 1, 206.6, 40.8 , 0 );
setMoveKey( spep_1-3 + 134, 1, 206.6, 39.3 , 0 );
setMoveKey( spep_1-3 + 136, 1, 206.6, 37.8 , 0 );
setMoveKey( spep_1-3 + 138, 1, 206.6, 36.2 , 0 );
setMoveKey( spep_1-3 + 141, 1, 206.6, 34.6 , 0 );
b=40;
setMoveKey( spep_1-3 + 142, 1, 187.3, -18.3+b , 0 );
setMoveKey( spep_1-3 + 144, 1, 186.7, 6.8+b , 0 );
setMoveKey( spep_1-3 + 146, 1, 193.6, 30.8 , 0 );
setMoveKey( spep_1-3 + 148, 1, 202.4, 62.8 , 0 );
setMoveKey( spep_1-3 + 150, 1, 210.7, 87.4 , 0 );
setMoveKey( spep_1-3 + 152, 1, 218.9, 110.2 , 0 );
setMoveKey( spep_1-3 + 154, 1, 226.3, 194.5 , 0 );
setMoveKey( spep_1-3 + 156, 1, 233.1, 272.9 , 0 );
setMoveKey( spep_1-3 + 158, 1, 239.7, 349.2 , 0 );
setMoveKey( spep_1-3 + 160, 1, 245.4, 420.6 , 0 );
setMoveKey( spep_1-3 + 162, 1, 251, 487.7 , 0 );
setMoveKey( spep_1-3 + 164, 1, 256.1, 551 , 0 );
setMoveKey( spep_1-3 + 166, 1, 259.8, 610 , 0 );
setMoveKey( spep_1-3 + 168, 1, 263.6, 661.9 , 0 );
setMoveKey( spep_1-3 + 170, 1, 265.9, 711 , 0 );
setMoveKey( spep_1-3 + 172, 1, 268.5, 751.5 , 0 );
setMoveKey( spep_1-3 + 174, 1, 269.2, 790.1 , 0 );
setMoveKey( spep_1-3 + 176, 1, 270.3, 823.3 , 0 );
setMoveKey( spep_1-3 + 178, 1, 269.5, 846.1 , 0 );
setMoveKey( spep_1-3 + 180, 1, 269, 867.7 , 0 );
setMoveKey( spep_1-3 + 182, 1, 266.6, 878.2 , 0 );
setMoveKey( spep_1-3 + 184, 1, 264.5, 888.3 , 0 );
setMoveKey( spep_1-3 + 186, 1, 261.8, 886.7 , 0 );
setMoveKey( spep_1-3 + 188, 1, 257, 885 , 0 );

setScaleKey( spep_1 + 0, 1, 1.5, 1.5 );
setScaleKey( spep_1-3 + 22, 1, 1.5, 1.5 );
setScaleKey( spep_1-3 + 25, 1, 1.77, 1.77 );
setScaleKey( spep_1-3 + 26, 1, 1.8, 1.8 );
setScaleKey( spep_1-3 + 29, 1, 1.54, 1.54 );
setScaleKey( spep_1-3 + 30, 1, 1.6, 1.6 );
setScaleKey( spep_1-3 + 32, 1, 1.74, 1.74 );
setScaleKey( spep_1-3 + 34, 1, 1.76, 1.76 );
setScaleKey( spep_1-3 + 36, 1, 1.62, 1.62 );
setScaleKey( spep_1-3 + 38, 1, 1.6, 1.6 );
setScaleKey( spep_1-3 + 75, 1, 1.6, 1.6 );
setScaleKey( spep_1-3 + 76, 1, 1.76, 1.76 );
setScaleKey( spep_1-3 + 79, 1, 1.8, 1.8 );
setScaleKey( spep_1-3 + 80, 1, 1.64, 1.64 );
setScaleKey( spep_1-3 + 82, 1, 1.6, 1.6 );
setScaleKey( spep_1-3 + 84, 1, 1.74, 1.74 );
setScaleKey( spep_1-3 + 86, 1, 1.76, 1.76 );
setScaleKey( spep_1-3 + 88, 1, 1.62, 1.62 );
setScaleKey( spep_1-3 + 90, 1, 1.6, 1.6 );
setScaleKey( spep_1-3 + 93, 1, 1.6, 1.6 );
setScaleKey( spep_1-3 + 94, 1, 1.5, 1.5 );
setScaleKey( spep_1-3 + 96, 1, 1.5, 1.5 );
setScaleKey( spep_1-3 + 98, 1, 1.8, 1.8 );
setScaleKey( spep_1-3 + 100, 1, 1.54, 1.54 );
setScaleKey( spep_1-3 + 102, 1, 1.5, 1.5 );
setScaleKey( spep_1-3 + 104, 1, 1.63, 1.63 );
setScaleKey( spep_1-3 + 106, 1, 1.65, 1.65 );
setScaleKey( spep_1-3 + 108, 1, 1.52, 1.52 );
setScaleKey( spep_1-3 + 110, 1, 1.5, 1.5 );
setScaleKey( spep_1-3 + 116, 1, 1.5, 1.5 );
setScaleKey( spep_1-3 + 118, 1, 1.8, 1.8 );
setScaleKey( spep_1-3 + 120, 1, 1.8, 1.8 );
setScaleKey( spep_1-3 + 122, 1, 1.5, 1.5 );
setScaleKey( spep_1-3 + 124, 1, 1.5, 1.5 );
setScaleKey( spep_1-3 + 126, 1, 1.65, 1.65 );
setScaleKey( spep_1-3 + 128, 1, 1.65, 1.65 );
setScaleKey( spep_1-3 + 130, 1, 1.5, 1.5 );
setScaleKey( spep_1-3 + 141, 1, 1.5, 1.5 );
setScaleKey( spep_1-3 + 142, 1, 1.84, 1.84 );
setScaleKey( spep_1-3 + 144, 1, 1.61, 1.61 );
setScaleKey( spep_1-3 + 146, 1, 1.58, 1.58 );
setScaleKey( spep_1-3 + 148, 1, 1.57, 1.57 );
setScaleKey( spep_1-3 + 150, 1, 1.57, 1.57 );
setScaleKey( spep_1-3 + 152, 1, 1.55, 1.57 );
setScaleKey( spep_1-3 + 154, 1, 1.55, 1.55 );
setScaleKey( spep_1-3 + 156, 1, 1.54, 1.55 );
setScaleKey( spep_1-3 + 158, 1, 1.54, 1.54 );
setScaleKey( spep_1-3 + 160, 1, 1.52, 1.54 );
setScaleKey( spep_1-3 + 162, 1, 1.52, 1.52 );
setScaleKey( spep_1-3 + 164, 1, 1.52, 1.52 );
setScaleKey( spep_1-3 + 166, 1, 1.5, 1.52 );
setScaleKey( spep_1-3 + 168, 1, 1.5, 1.5 );
setScaleKey( spep_1-3 + 170, 1, 1.49, 1.5 );
setScaleKey( spep_1-3 + 172, 1, 1.49, 1.49 );
setScaleKey( spep_1-3 + 174, 1, 1.47, 1.49 );
setScaleKey( spep_1-3 + 176, 1, 1.47, 1.49 );
setScaleKey( spep_1-3 + 178, 1, 1.46, 1.47 );
setScaleKey( spep_1-3 + 180, 1, 1.46, 1.47 );
setScaleKey( spep_1-3 + 182, 1, 1.44, 1.46 );
setScaleKey( spep_1-3 + 184, 1, 1.44, 1.46 );
setScaleKey( spep_1-3 + 186, 1, 1.44, 1.44 );
setScaleKey( spep_1-3 + 188, 1, 1.44, 1.44 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1-3 + 29, 1, 0 );
setRotateKey( spep_1-3 + 30, 1, -52.2 );
setRotateKey( spep_1-3 + 32, 1, -50.9 );
setRotateKey( spep_1-3 + 34, 1, -50.1 );
setRotateKey( spep_1-3 + 36, 1, -49.7 );
setRotateKey( spep_1-3 + 38, 1, -49.5 );
setRotateKey( spep_1-3 + 40, 1, -49.4 );
setRotateKey( spep_1-3 + 44, 1, -49.4 );
setRotateKey( spep_1-3 + 46, 1, -48.4 );
setRotateKey( spep_1-3 + 48, 1, -47.5 );
setRotateKey( spep_1-3 + 50, 1, -46.7 );
setRotateKey( spep_1-3 + 52, 1, -45.9 );
setRotateKey( spep_1-3 + 54, 1, -45.2 );
setRotateKey( spep_1-3 + 56, 1, -44.6 );
setRotateKey( spep_1-3 + 58, 1, -44 );
setRotateKey( spep_1-3 + 60, 1, -43.5 );
setRotateKey( spep_1-3 + 62, 1, -43.1 );
setRotateKey( spep_1-3 + 64, 1, -42.7 );
setRotateKey( spep_1-3 + 66, 1, -42.4 );
setRotateKey( spep_1-3 + 68, 1, -42.2 );
setRotateKey( spep_1-3 + 70, 1, -42 );
setRotateKey( spep_1-3 + 72, 1, -41.9 );
setRotateKey( spep_1-3 + 75, 1, -41.9 );
setRotateKey( spep_1-3 + 76, 1, -2.8 );
setRotateKey( spep_1-3 + 79, 1, -2.8 );
setRotateKey( spep_1-3 + 80, 1, -52.2 );
setRotateKey( spep_1-3 + 82, 1, -51.2 );
setRotateKey( spep_1-3 + 84, 1, -50.1 );
setRotateKey( spep_1-3 + 86, 1, -49 );
setRotateKey( spep_1-3 + 88, 1, -48 );
setRotateKey( spep_1-3 + 90, 1, -46.9 );
setRotateKey( spep_1-3 + 93, 1, -45.9 );
setRotateKey( spep_1-3 + 94, 1, -2.8 );
setRotateKey( spep_1-3 + 118, 1, -2.8 );
setRotateKey( spep_1-3 + 120, 1, -2.9 );
setRotateKey( spep_1-3 + 122, 1, -3.3 );
setRotateKey( spep_1-3 + 124, 1, -4.5 );
setRotateKey( spep_1-3 + 126, 1, -6.9 );
setRotateKey( spep_1-3 + 128, 1, -10.9 );
setRotateKey( spep_1-3 + 130, 1, -16.8 );
setRotateKey( spep_1-3 + 132, 1, -16.8 );
setRotateKey( spep_1-3 + 134, 1, -17 );
setRotateKey( spep_1-3 + 136, 1, -17.5 );
setRotateKey( spep_1-3 + 138, 1, -18.4 );
setRotateKey( spep_1-3 + 141, 1, -20 );
setRotateKey( spep_1-3 + 142, 1, -57.2 );
setRotateKey( spep_1-3 + 144, 1, -54.7 );
setRotateKey( spep_1-3 + 146, 1, -52.2 );
setRotateKey( spep_1-3 + 148, 1, -49.7 );
setRotateKey( spep_1-3 + 150, 1, -47.2 );
setRotateKey( spep_1-3 + 152, 1, -44.8 );
setRotateKey( spep_1-3 + 154, 1, -42.5 );
setRotateKey( spep_1-3 + 156, 1, -40.2 );
setRotateKey( spep_1-3 + 158, 1, -38 );
setRotateKey( spep_1-3 + 160, 1, -35.9 );
setRotateKey( spep_1-3 + 162, 1, -33.9 );
setRotateKey( spep_1-3 + 164, 1, -32 );
setRotateKey( spep_1-3 + 166, 1, -30.2 );
setRotateKey( spep_1-3 + 168, 1, -28.6 );
setRotateKey( spep_1-3 + 170, 1, -27.1 );
setRotateKey( spep_1-3 + 172, 1, -25.7 );
setRotateKey( spep_1-3 + 174, 1, -24.4 );
setRotateKey( spep_1-3 + 176, 1, -23.4 );
setRotateKey( spep_1-3 + 178, 1, -22.4 );
setRotateKey( spep_1-3 + 180, 1, -21.7 );
setRotateKey( spep_1-3 + 182, 1, -21.1 );
setRotateKey( spep_1-3 + 184, 1, -20.6 );
setRotateKey( spep_1-3 + 186, 1, -20.4 );
setRotateKey( spep_1-3 + 188, 1, -20.3 );

-- ** 白フェード ** --
entryFade( spep_1 + 182, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
--連続斬り  
playSe( spep_1 + 22, 1004 );    
setSeVolume( spep_1 + 22, 1004, 80 );

playSe( spep_1 + 30, 1032 );

playSe( spep_1 + 77, 1004 );
setSeVolume( spep_1 + 22, 1004, 80 );

playSe( spep_1 + 80, 1032 );
playSe( spep_1 + 82, 1004 );
playSe( spep_1 + 89, 1032 );
playSe( spep_1 + 92, 1004 );
playSe( spep_1 + 100, 1032 );
playSe( spep_1 + 103, 1004 );
playSe( spep_1 + 110, 1032 );
playSe( spep_1 + 113, 1004 );

--ラスト斬り
playSe( spep_1 + 149, 1032 );

SE1 = playSe( spep_1 + 149, 1109 );
setSeVolume( spep_1 + 149, 1004, 70 );  
setSeVolume( spep_1 + 168, 1004, 60 );  
setSeVolume( spep_1 + 174, 1004, 40 );  
setSeVolume( spep_1 + 180, 1004, 20 );  
setSeVolume( spep_1 + 195, 1004, 0 );   
stopSe( spep_1 + 195, SE1, 0 ); 

playSe( spep_1 + 149, 1004 );   
SE2 = playSe( spep_1 + 155, 44 );   
setSeVolume( spep_1 + 155, 44, 90 );    
setSeVolume( spep_1 + 170, 44, 90 );    
setSeVolume( spep_1 + 180, 44, 50 );    
setSeVolume( spep_1 + 193, 44, 0 ); 
stopSe( spep_1 + 193, SE2, 0 );

--次の準備
spep_2 = spep_1+190;

------------------------------------------------------
-- 抜刀⇒突進
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_2 + 0, SP_04x, 0x100, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_2 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_2 + 110, tame, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, tame, -1.0, 1.0 );
setEffScaleKey( spep_2 + 110, tame, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tame, 0 );
setEffRotateKey( spep_2 + 110, tame, 0 );
setEffAlphaKey( spep_2 + 0, tame, 255 );
setEffAlphaKey( spep_2 + 110, tame, 255 )

--集中線
shuchusen5 = entryEffectLife( spep_2 ,  906, 108, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_2 , shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_2 + 108, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_2 , shuchusen5, 1.1, 1.1 );
setEffScaleKey( spep_2 + 108, shuchusen5, 1.1, 1.1 );

setEffRotateKey( spep_2 , shuchusen5, 180 );
setEffRotateKey( spep_2 + 108, shuchusen5, 180 );

setEffAlphaKey( spep_2 , shuchusen5, 0 );
setEffAlphaKey( spep_2 + 18, shuchusen5, 0 );
setEffAlphaKey( spep_2 + 19, shuchusen5, 255 );
setEffAlphaKey( spep_2 + 20, shuchusen5, 255 );
setEffAlphaKey( spep_2 + 108, shuchusen5, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_2, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_2, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_2 + 12 , 190006, 72, 0x100, -1, 0, -40, 540);    -- ゴゴゴゴ

setEffShake(spep_2 + 12 ,ctgogo,72,10);

setEffMoveKey(  spep_2 +12 ,  ctgogo,  -40,  540);
setEffMoveKey(  spep_2 +84 ,  ctgogo,  -40,  540);

setEffAlphaKey( spep_2 +12 , ctgogo, 0 );
setEffAlphaKey( spep_2 + 13 , ctgogo, 255 );
setEffAlphaKey( spep_2 + 14 , ctgogo, 255 );
setEffAlphaKey( spep_2 + 76 , ctgogo, 255 );
setEffAlphaKey( spep_2 + 78 , ctgogo, 255 );
setEffAlphaKey( spep_2 + 80 , ctgogo, 191 );
setEffAlphaKey( spep_2 + 82 , ctgogo, 128 );
setEffAlphaKey( spep_2 + 84 , ctgogo, 64 );

setEffRotateKey(  spep_2 +12 ,  ctgogo,  0);
setEffRotateKey(  spep_2 +84 ,  ctgogo,  0);

setEffScaleKey(  spep_2 +12 ,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_2 +74 ,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_2 +84 ,  ctgogo, -1.07, 1.07 );

--黒背景
entryFadeBg( spep_2, 0, 110, 0, 0, 0, 0, 200 );

-- ** 白フェード ** --
entryFade( spep_2 + 100, 6, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_2 + 12, 1018 ); --ゴゴゴ

--剣光る   
playSe( spep_2 + 29, 1141 );    
setSeVolume( spep_2 + 29, 1141, 70 );

playSe( spep_2 + 29, 1042 );    
setSeVolume( spep_2 + 29, 1042, 70 );

SE3 = playSe( spep_2 + 29, 13 );    
setSeVolume( spep_2 + 29, 13, 85 ); 
setSeVolume( spep_2 + 66, 13, 85 ); 
setSeVolume( spep_2 + 75, 13, 45 ); 
setSeVolume( spep_2 + 90, 13, 20 ); 
setSeVolume( spep_2 + 102, 13, 0 ); 
stopSe( spep_2 + 102, SE2, 0 );

playSe( spep_2 + 88, 8 ); --手前にズーム
setSeVolume( spep_2 + 88, 8, 80 );

--次の準備
spep_3 = spep_2+110;

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
-- 突進
------------------------------------------------------
-- ** エフェクト等 ** --
tossin2 = entryEffect( spep_4 + 0, SP_05x, 0x100, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_4 + 0, tossin2, 0, 0 , 0 );
setEffMoveKey( spep_4 + 76, tossin2, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, tossin2, -1.0, 1.0 );
setEffScaleKey( spep_4 + 76, tossin2, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, tossin2, 0 );
setEffRotateKey( spep_4 + 76, tossin2, 0 );
setEffAlphaKey( spep_4 + 0, tossin2, 255 );
setEffAlphaKey( spep_4 + 76, tossin2, 255 );
setEffAlphaKey( spep_4 + 77, tossin2, 0 );
setEffAlphaKey( spep_4 + 78, tossin2, 0 );

--黒背景
entryFadeBg( spep_4, 0, 76, 0, 0, 0, 0, 200 );

-- ** 白フェード ** --
entryFade( spep_4 + 68, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
--ダッシュ  
playSe( spep_4 + 3, 1018 ); 
setSeVolume( spep_4 + 3, 1018, 80 );

SE4 = playSe( spep_4 + 3, 1116 );   
setSeVolume( spep_4 + 3, 1116, 45 );    
setSeVolume( spep_4 + 31, 1116, 45 );   
setSeVolume( spep_4 + 41, 1116, 20 );   
setSeVolume( spep_4 + 51, 1116, 0 );    
stopSe( spep_4 + 51, SE4, 0 );

SE5 = playSe( spep_4 + 71, 1003 );  
setSeVolume( spep_4 + 71, 1003, 60 );   
stopSe( spep_4 + 81, SE5, 0 );

--次の準備
spep_5 = spep_4+76;
------------------------------------------------------
-- フィニッシュ
------------------------------------------------------

-- ** エフェクト等 ** --
finish = entryEffect( spep_5 + 0, SP_06x, 0x100, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_5 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_5 + 200, finish, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish, -1.0, 1.0 );
setEffScaleKey( spep_5 + 200, finish, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish, 0 );
setEffRotateKey( spep_5 + 200, finish, 0 );
setEffAlphaKey( spep_5 + 0, finish, 255 );
setEffAlphaKey( spep_5 + 200, finish, 255 )

--集中線
shuchusen6 = entryEffectLife( spep_5-3 + 72,  906, 126, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_5-3 + 72, shuchusen6, 0, 0 , 0 );
setEffMoveKey( spep_5-3 + 198, shuchusen6, 0, 0 , 0 );

setEffScaleKey( spep_5-3 + 72, shuchusen6, 1.1, 1.1 );
setEffScaleKey( spep_5-3 + 198, shuchusen6, 1.1, 1.1 );

setEffRotateKey( spep_5-3 + 72, shuchusen6, 180 );
setEffRotateKey( spep_5-3 + 198, shuchusen6, 180 );

setEffAlphaKey( spep_5-3 + 72, shuchusen6, 255 );
setEffAlphaKey( spep_5-3 + 198, shuchusen6, 255 );

--白フェード
entryFade( spep_5 + 67, 0, 0, 4, fcolor_r, fcolor_g, fcolor_b, 200 );  --white fade

--黒背景
entryFadeBg( spep_5, 0, 200, 0, 0, 0, 0, 200 );

-- ** 音 ** --
--クロス斬り 
playSe( spep_5 + 4, 1004 );
setSeVolume( spep_5 + 4, 1004, 85 );

playSe( spep_5 + 5, 1032 );
setSeVolume( spep_5 + 5, 1032, 85 );

playSe( spep_5 + 5, 1031 );
setSeVolume( spep_5 + 5, 1031, 85 );

playSe( spep_5 + 5, 1042 );
setSeVolume( spep_5 + 5, 1042, 70 );

playSe( spep_5 + 12, 1004 );
setSeVolume( spep_5 + 12, 1004, 85 );

playSe( spep_5 + 13, 1032 );
setSeVolume( spep_5 + 13, 1032, 85 );

playSe( spep_5 + 13, 1031 );
setSeVolume( spep_5 + 13, 1031, 85 );

playSe( spep_5 + 13, 1042 );
setSeVolume( spep_5 + 13, 1042, 70 );

--爆発    
playSe( spep_5 + 76, 1023 );
setSeVolume( spep_5 + 76, 1023, 140 );

SE6 = playSe( spep_5 + 76, 1159 );
setSeVolume( spep_5 + 76, 1159, 50 );
setSeVolume( spep_5 + 116, 1159, 50 );
setSeVolume( spep_5 + 130, 1159, 40 );
setSeVolume( spep_5 + 160, 1159, 20 );
setSeVolume( spep_5 + 188, 1159, 0 );
stopSe( spep_5 + 188, SE6, 0 );

-- ** ダメージ表示 ** --
dealDamage(spep_5 +70 );
endPhase( spep_5 + 188 );

end