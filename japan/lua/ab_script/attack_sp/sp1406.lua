--1019280:超サイヤ人トランクス(未来)&マイ(未来)_シャイニングクロス
--sp_effect_b2_00031

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
SP_01=	154889	;--	導入セリフカットイン
SP_02=	154890	;--	マイ射撃
SP_03=	154892	;--	スモ－ク弾着弾
SP_04=	154893	;--	スモ－ク弾着弾
SP_05=	154894	;--	煙の中からトランクス登場
SP_06=	154896	;--	斬撃エフェクト⇒フィニッシュ
SP_07=	154898	;--	斬撃エフェクト⇒フィニッシュ

--てき側
SP_01x=	154889	;--	導入セリフカットイン	
SP_02x=	154891	;--	マイ射撃	(敵)
SP_03x=	154892	;--	スモ－ク弾着弾
SP_04x=	154893	;--	スモ－ク弾着弾
SP_05x=	154895	;--	煙の中からトランクス登場	(敵)
SP_06x=	154897	;--	斬撃エフェクト⇒フィニッシュ	(敵)
SP_07x=	154898	;--	斬撃エフェクト⇒フィニッシュ	

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

--adjustAttackerLabel( 0, 205);
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 導入セリフカットイン
------------------------------------------------------
-- ** はじめの準備 ** --
spep_0 = 0;

-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 110, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 110, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 110, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 110, tame, 255 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_0 + 4  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0 + 4  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_0 +16, 190006, 72, 0x100, -1, 0, 100, 510);-- ゴゴゴゴ
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

--集中線
shuchusen1 = entryEffectLife( spep_0,  906, 108 -3, 0x100, -1, 0, 0, 0 );
setEffShake( spep_0 + 0, shuchusen1, 108 -3, 20 );
setEffMoveKey( spep_0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0-3 + 108, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0, shuchusen1, 1.1, 1.1 );
setEffScaleKey( spep_0-3 + 108, shuchusen1, 1.1, 1.1 );

setEffRotateKey( spep_0, shuchusen1, 180 );
setEffRotateKey( spep_0-3 + 108, shuchusen1, 180 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 0 );
setEffAlphaKey( spep_0-3 + 35, shuchusen1, 0 );
setEffAlphaKey( spep_0-3 + 36, shuchusen1, 255 );
setEffAlphaKey( spep_0-3 + 108, shuchusen1, 255 );

--SE
playSe( spep_0 + 16, 1018 );
playSe( spep_0 + 0, 8 );
playSe( spep_0 + 73, 1072 );
setSeVolume( spep_0 + 73, 1072, 0 );
setSeVolume( spep_0 + 87, 1072, 0 );
setSeVolume( spep_0 + 88, 1072, 20 );
setSeVolume( spep_0 + 89, 1072, 40 );
setSeVolume( spep_0 + 90, 1072, 60 );
setSeVolume( spep_0 + 91, 1072, 80 );
setSeVolume( spep_0 + 92, 1072, 100 );

-- ** しろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 112, 0,  fcolor_r, fcolor_g, fcolor_b, 255 ); --しろ 背景

--白フェード
entryFade( spep_0 + 102, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1 = spep_0+110;

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
entryFade( spep_1 + 80, 6, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

------------------------------------------------------
-- マイ射撃
------------------------------------------------------

-- ** エフェクト等 ** --
syateki = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, syateki, 0, 0, 0 );
setEffMoveKey( spep_2 + 76, syateki, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, syateki, 1.0, 1.0 );
setEffScaleKey( spep_2 + 76, syateki, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, syateki, 0 );
setEffRotateKey( spep_2 + 76, syateki, 0 );
setEffAlphaKey( spep_2 + 0, syateki, 255 );
setEffAlphaKey( spep_2 + 76, syateki, 255 );

-- ** しろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 80, 0,  fcolor_r, fcolor_g, fcolor_b, 255 ); --しろ 背景

--SE
SE0=playSe( spep_2 + 3, 44 );
setSeVolume( spep_2 + 3, 44, 79 );
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 40; --エンドフェイズのフレーム数を置き換える
    
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
--SE
playSe( spep_2 + 40, 1028 );
setSeVolume( spep_2 + 40, 1028, 89 );
playSe( spep_2 + 43, 1030 );
setSeVolume( spep_2 + 43, 1030, 79 );


--次の準備
spep_3 = spep_2+76;

------------------------------------------------------
-- スモ－ク弾着弾
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 96, hit_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 96, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hit_f, 0 );
setEffRotateKey( spep_3 + 96, hit_f, 0 );
setEffAlphaKey( spep_3 + 0, hit_f, 255 );
setEffAlphaKey( spep_3 + 96, hit_f, 255 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 96, hit_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 96, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hit_b, 0 );
setEffRotateKey( spep_3 + 96, hit_b, 0 );
setEffAlphaKey( spep_3 + 0, hit_b, 255 );
setEffAlphaKey( spep_3 + 96, hit_b, 255 );

--文字エントリー
ctbikuri = entryEffectLife( spep_3-3 + 14,  10000, 26, 0x100, -1, 0, 161.7, 173.2 );--!!

setEffMoveKey( spep_3-3 + 14, ctbikuri, 161.7, 173.2 , 0 );
setEffMoveKey( spep_3-3 + 16, ctbikuri, 170, 180.3 , 0 );
setEffMoveKey( spep_3-3 + 18, ctbikuri, 169.1, 189.7 , 0 );
setEffMoveKey( spep_3-3 + 20, ctbikuri, 174.1, 188.7 , 0 );
setEffMoveKey( spep_3-3 + 22, ctbikuri, 168.5, 190.8 , 0 );
setEffMoveKey( spep_3-3 + 24, ctbikuri, 173.7, 189.8 , 0 );
setEffMoveKey( spep_3-3 + 26, ctbikuri, 167.8, 191.8 , 0 );
setEffMoveKey( spep_3-3 + 28, ctbikuri, 173.2, 190.8 , 0 );
setEffMoveKey( spep_3-3 + 30, ctbikuri, 167.2, 192.9 , 0 );
setEffMoveKey( spep_3-3 + 32, ctbikuri, 166, 193.3 , 0 );
setEffMoveKey( spep_3-3 + 34, ctbikuri, 172.4, 192.3 , 0 );
setEffMoveKey( spep_3-3 + 36, ctbikuri, 166.3, 194.4 , 0 );
setEffMoveKey( spep_3-3 + 38, ctbikuri, 170.8, 202.7 , 0 );
setEffMoveKey( spep_3-3 + 40, ctbikuri, 169.3, 212.6 , 0 );

setEffScaleKey( spep_3-3 + 14, ctbikuri, 1, 1 );
setEffScaleKey( spep_3-3 + 16, ctbikuri, 1.31, 1.31 );
setEffScaleKey( spep_3-3 + 18, ctbikuri, 1.62, 1.62 );
setEffScaleKey( spep_3-3 + 20, ctbikuri, 1.63, 1.63 );
setEffScaleKey( spep_3-3 + 22, ctbikuri, 1.67, 1.67 );
setEffScaleKey( spep_3-3 + 24, ctbikuri, 1.68, 1.68 );
setEffScaleKey( spep_3-3 + 26, ctbikuri, 1.71, 1.71 );
setEffScaleKey( spep_3-3 + 28, ctbikuri, 1.72, 1.72 );
setEffScaleKey( spep_3-3 + 30, ctbikuri, 1.76, 1.76 );
setEffScaleKey( spep_3-3 + 32, ctbikuri, 1.76, 1.76 );
setEffScaleKey( spep_3-3 + 34, ctbikuri, 1.79, 1.79 );
setEffScaleKey( spep_3-3 + 36, ctbikuri, 1.82, 1.82 );
setEffScaleKey( spep_3-3 + 38, ctbikuri, 2.11, 2.11 );
setEffScaleKey( spep_3-3 + 40, ctbikuri, 2.42, 2.42 );

setEffRotateKey( spep_3-3 + 14, ctbikuri, 10 );
setEffRotateKey( spep_3-3 + 40, ctbikuri, 10 );

setEffAlphaKey( spep_3-3 + 14, ctbikuri, 128 );
setEffAlphaKey( spep_3-3 + 16, ctbikuri, 191 );
setEffAlphaKey( spep_3-3 + 18, ctbikuri, 255 );
setEffAlphaKey( spep_3-3 + 36, ctbikuri, 255 );
setEffAlphaKey( spep_3-3 + 38, ctbikuri, 128 );
setEffAlphaKey( spep_3-3 + 40, ctbikuri, 0 );


--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3-3 + 96, 1, 0 );

changeAnime( spep_3 + 0, 1, 100 );
changeAnime( spep_3-3 + 52, 1, 104 );

setMoveKey( spep_3 + 0, 1, 137.3, -42.7 , 0 );
--setMoveKey( spep_3-3 + 2, 1, 136.5, -41.9 , 0 );
setMoveKey( spep_3-3 + 4, 1, 135.7, -41 , 0 );
setMoveKey( spep_3-3 + 6, 1, 135, -40.2 , 0 );
setMoveKey( spep_3-3 + 8, 1, 134.2, -39.4 , 0 );
setMoveKey( spep_3-3 + 10, 1, 133.5, -38.5 , 0 );
setMoveKey( spep_3-3 + 12, 1, 132.7, -37.7 , 0 );
setMoveKey( spep_3-3 + 14, 1, 132, -36.9 , 0 );
setMoveKey( spep_3-3 + 16, 1, 131.2, -36 , 0 );
setMoveKey( spep_3-3 + 18, 1, 130.5, -35.2 , 0 );
setMoveKey( spep_3-3 + 20, 1, 129.7, -34.4 , 0 );
setMoveKey( spep_3-3 + 22, 1, 128.9, -33.5 , 0 );
setMoveKey( spep_3-3 + 24, 1, 128.2, -32.7 , 0 );
setMoveKey( spep_3-3 + 26, 1, 127.4, -31.9 , 0 );
setMoveKey( spep_3-3 + 28, 1, 126.7, -31 , 0 );
setMoveKey( spep_3-3 + 30, 1, 125.9, -30.2 , 0 );
setMoveKey( spep_3-3 + 32, 1, 125.2, -29.4 , 0 );
setMoveKey( spep_3-3 + 34, 1, 124.4, -28.5 , 0 );
setMoveKey( spep_3-3 + 36, 1, 123.7, -27.7 , 0 );
setMoveKey( spep_3-3 + 38, 1, 122.9, -26.9 , 0 );
setMoveKey( spep_3-3 + 40, 1, 122.1, -26 , 0 );
setMoveKey( spep_3-3 + 42, 1, 121.4, -25.2 , 0 );
setMoveKey( spep_3-3 + 44, 1, 120.6, -24.4 , 0 );
setMoveKey( spep_3-3 + 46, 1, 119.9, -23.5 , 0 );
setMoveKey( spep_3-3 + 48, 1, 119.1, -22.7 , 0 );
setMoveKey( spep_3-3 + 51, 1, 118.4, -21.9 , 0 );
setMoveKey( spep_3-3 + 52, 1, 117.7, -21.1 , 0 );
setMoveKey( spep_3-3 + 54, 1, 116.9, -20.2 , 0 );
setMoveKey( spep_3-3 + 56, 1, 116.2, -19.4 , 0 );
setMoveKey( spep_3-3 + 58, 1, 115.4, -18.6 , 0 );
setMoveKey( spep_3-3 + 60, 1, 114.6, -17.7 , 0 );
setMoveKey( spep_3-3 + 62, 1, 113.9, -16.9 , 0 );
setMoveKey( spep_3-3 + 64, 1, 113.1, -16.1 , 0 );
setMoveKey( spep_3-3 + 66, 1, 112.4, -15.2 , 0 );
setMoveKey( spep_3-3 + 68, 1, 111.6, -14.4 , 0 );
setMoveKey( spep_3-3 + 70, 1, 110.9, -13.6 , 0 );
setMoveKey( spep_3-3 + 72, 1, 110.1, -12.7 , 0 );
setMoveKey( spep_3-3 + 74, 1, 109.4, -11.9 , 0 );
setMoveKey( spep_3-3 + 76, 1, 108.6, -11.1 , 0 );
setMoveKey( spep_3-3 + 78, 1, 107.8, -10.2 , 0 );
setMoveKey( spep_3-3 + 80, 1, 107.1, -9.4 , 0 );
setMoveKey( spep_3-3 + 82, 1, 106.3, -8.6 , 0 );
setMoveKey( spep_3-3 + 84, 1, 105.6, -7.7 , 0 );
setMoveKey( spep_3-3 + 86, 1, 104.8, -6.9 , 0 );
setMoveKey( spep_3-3 + 88, 1, 104.1, -6.1 , 0 );
setMoveKey( spep_3-3 + 90, 1, 103.3, -5.2 , 0 );
setMoveKey( spep_3-3 + 92, 1, 102.6, -4.4 , 0 );
setMoveKey( spep_3-3 + 94, 1, 101.8, -3.6 , 0 );
setMoveKey( spep_3-3 + 96, 1, 101, -2.7 , 0 );
--setMoveKey( spep_3-3 + 98, 1, 100.3, -1.9 , 0 );

a=0;

setScaleKey( spep_3 + 0, 1, 2-a, 2-a );
--setScaleKey( spep_3-3 + 2, 1, 2, 2 );
setScaleKey( spep_3-3 + 4, 1, 2.01-a, 2.01-a );
setScaleKey( spep_3-3 + 6, 1, 2.01-a, 2.01-a );
setScaleKey( spep_3-3 + 8, 1, 2.02-a, 2.02-a );
setScaleKey( spep_3-3 + 12, 1, 2.02-a, 2.02-a );
setScaleKey( spep_3-3 + 14, 1, 2.03-a, 2.03-a );
setScaleKey( spep_3-3 + 16, 1, 2.03-a, 2.03-a );
setScaleKey( spep_3-3 + 18, 1, 2.04-a, 2.04-a );
setScaleKey( spep_3-3 + 22, 1, 2.04-a, 2.04-a );
setScaleKey( spep_3-3 + 24, 1, 2.05-a, 2.05-a );
setScaleKey( spep_3-3 + 26, 1, 2.05-a, 2.05-a );
setScaleKey( spep_3-3 + 28, 1, 2.06-a, 2.06-a );
setScaleKey( spep_3-3 + 32, 1, 2.06-a, 2.06-a );
setScaleKey( spep_3-3 + 34, 1, 2.07-a, 2.07-a );
setScaleKey( spep_3-3 + 36, 1, 2.07-a, 2.07-a );
setScaleKey( spep_3-3 + 38, 1, 2.08-a, 2.08-a );
setScaleKey( spep_3-3 + 40, 1, 2.08-a, 2.08-a );
setScaleKey( spep_3-3 + 42, 1, 2.09-a, 2.09-a );
setScaleKey( spep_3-3 + 46, 1, 2.09-a, 2.09-a );
setScaleKey( spep_3-3 + 48, 1, 2.1-a, 2.1 -a);
setScaleKey( spep_3-3 + 51, 1, 2.1-a, 2.1-a );
setScaleKey( spep_3-3 + 52, 1, 2.11-a, 2.11-a );
setScaleKey( spep_3-3 + 56, 1, 2.11-a, 2.11-a );
setScaleKey( spep_3-3 + 58, 1, 2.12-a, 2.12-a );
setScaleKey( spep_3-3 + 60, 1, 2.12-a, 2.12-a );
setScaleKey( spep_3-3 + 62, 1, 2.13-a, 2.13-a );
setScaleKey( spep_3-3 + 66, 1, 2.13-a, 2.13-a );
setScaleKey( spep_3-3 + 68, 1, 2.14-a, 2.14-a );
setScaleKey( spep_3-3 + 70, 1, 2.14-a, 2.14-a );
setScaleKey( spep_3-3 + 72, 1, 2.15-a, 2.15-a );
setScaleKey( spep_3-3 + 74, 1, 2.15-a, 2.15-a );
setScaleKey( spep_3-3 + 76, 1, 2.16-a, 2.16-a );
setScaleKey( spep_3-3 + 80, 1, 2.16-a, 2.16-a );
setScaleKey( spep_3-3 + 82, 1, 2.17-a, 2.17-a );
setScaleKey( spep_3-3 + 84, 1, 2.17-a, 2.17-a );
setScaleKey( spep_3-3 + 86, 1, 2.18-a, 2.18-a );
setScaleKey( spep_3-3 + 90, 1, 2.18-a, 2.18-a );
setScaleKey( spep_3-3 + 92, 1, 2.19-a, 2.19-a );
setScaleKey( spep_3-3 + 94, 1, 2.19-a, 2.19-a );
setScaleKey( spep_3-3 + 96, 1, 2.2-a, 2.2-a );

setRotateKey( spep_3 + 0, 1, 7 );
setRotateKey( spep_3-3 + 96, 1, 7 );

--SE
playSe( spep_3 + 27, 1218 );
setSeVolume( spep_3 + 27, 1218, 158 );
playSe( spep_3 + 32, 1219 );
setSeVolume( spep_3 + 32, 1219, 158 );

-- ** しろ背景 ** --
entryFadeBg( spep_3 + 0, 0, 102, 0,  fcolor_r, fcolor_g, fcolor_b, 255 ); --しろ 背景

--次の準備
spep_4 = spep_3+96;

------------------------------------------------------
-- 煙の中からトランクス登場
------------------------------------------------------

-- ** エフェクト等 ** --
tossin = entryEffect( spep_4 + 0, SP_05, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, tossin, 0, 0, 0 );
setEffMoveKey( spep_4 + 86, tossin, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, tossin, 1.0, 1.0 );
setEffScaleKey( spep_4 + 86, tossin, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, tossin, 0 );
setEffRotateKey( spep_4 + 86, tossin, 0 );
setEffAlphaKey( spep_4 + 0, tossin, 255 );
setEffAlphaKey( spep_4 + 86, tossin, 255 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4-3 + 28, 1, 0 );
changeAnime( spep_4 + 0, 1, 104 );

setMoveKey( spep_4 + 0, 1, 200.4, -242.3 , 0 );
--setMoveKey( spep_4-3 + 2, 1, 203.3, -247.7 , 0 );
setMoveKey( spep_4-3 + 4, 1, 206.3, -253.4 , 0 );
setMoveKey( spep_4-3 + 6, 1, 209.6, -259.7 , 0 );
setMoveKey( spep_4-3 + 8, 1, 213.5, -267 , 0 );
setMoveKey( spep_4-3 + 10, 1, 218.2, -275.9 , 0 );
setMoveKey( spep_4-3 + 12, 1, 224.3, -287.4 , 0 );
setMoveKey( spep_4-3 + 14, 1, 232.6, -303 , 0 );
setMoveKey( spep_4-3 + 16, 1, 244.1, -324.8 , 0 );
setMoveKey( spep_4-3 + 18, 1, 260.9, -356.5 , 0 );
setMoveKey( spep_4-3 + 20, 1, 297.6, -416.5 , 0 );
setMoveKey( spep_4-3 + 22, 1, 358.2, -515.6 , 0 );
setMoveKey( spep_4-3 + 24, 1, 465, -690.5 , 0 );
setMoveKey( spep_4-3 + 26, 1, 662.7, -1014 , 0 );
setMoveKey( spep_4-3 + 28, 1, 997.3, -1561.4 , 0 );

setScaleKey( spep_4 + 0, 1, 4, 4 );
--setScaleKey( spep_4-3 + 2, 1, 4.03, 4.03 );
setScaleKey( spep_4-3 + 4, 1, 4.05, 4.05 );
setScaleKey( spep_4-3 + 6, 1, 4.09, 4.09 );
setScaleKey( spep_4-3 + 8, 1, 4.12, 4.12 );
setScaleKey( spep_4-3 + 10, 1, 4.17, 4.17 );
setScaleKey( spep_4-3 + 12, 1, 4.22, 4.22 );
setScaleKey( spep_4-3 + 14, 1, 4.3, 4.3 );
setScaleKey( spep_4-3 + 16, 1, 4.41, 4.41 );
setScaleKey( spep_4-3 + 18, 1, 4.57, 4.57 );
setScaleKey( spep_4-3 + 20, 1, 4.84, 4.84 );
setScaleKey( spep_4-3 + 22, 1, 5.28, 5.28 );
setScaleKey( spep_4-3 + 24, 1, 6.06, 6.06 );
setScaleKey( spep_4-3 + 26, 1, 7.51, 7.51 );
setScaleKey( spep_4-3 + 28, 1, 9.95, 9.95 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4-3 + 28, 1, 0 );

-- ** エフェクト等 ** --
shuchusen2 = entryEffectLife( spep_4 + 57, 906,29, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 57, shuchusen2, 0, 0, 0 );
setEffMoveKey( spep_4 + 86, shuchusen2, 0, 0, 0 );
setEffScaleKey( spep_4 + 57, shuchusen2, 1.0, 1.0 );
setEffScaleKey( spep_4 + 86, shuchusen2, 1.0, 1.0 );
setEffRotateKey( spep_4 + 57, shuchusen2, 0 );
setEffRotateKey( spep_4 + 86, shuchusen2, 0 );
setEffAlphaKey( spep_4 + 57, shuchusen2, 255 );
setEffAlphaKey( spep_4 + 86, shuchusen2, 255 );

--文字エントリー
ctzudodo = entryEffectLife( spep_4-3 + 28,  10014, 24, 0x100, -1, 0, 54.3, 359 );--ズドドドッ

setEffMoveKey( spep_4-3 + 28, ctzudodo, 54.3, 359 , 0 );
setEffMoveKey( spep_4-3 + 30, ctzudodo, 55.5, 353.2 , 0 );
setEffMoveKey( spep_4-3 + 32, ctzudodo, 81, 364.8 , 0 );
setEffMoveKey( spep_4-3 + 34, ctzudodo, 74.6, 352.2 , 0 );
setEffMoveKey( spep_4-3 + 36, ctzudodo, 107.2, 371 , 0 );
setEffMoveKey( spep_4-3 + 38, ctzudodo, 83, 356.7 , 0 );
setEffMoveKey( spep_4-3 + 40, ctzudodo, 104.6, 381.4 , 0 );
setEffMoveKey( spep_4-3 + 42, ctzudodo, 80.4, 367.2 , 0 );
setEffMoveKey( spep_4-3 + 44, ctzudodo, 102, 391.8 , 0 );
setEffMoveKey( spep_4-3 + 46, ctzudodo, 77.8, 377.6 , 0 );
setEffMoveKey( spep_4-3 + 48, ctzudodo, 76.5, 382.8 , 0 );
setEffMoveKey( spep_4-3 + 50, ctzudodo, 92.8, 377.5 , 0 );
setEffMoveKey( spep_4-3 + 52, ctzudodo, 50.5, 322.6 , 0 );

setEffScaleKey( spep_4-3 + 28, ctzudodo, 0.98, 1.28 );
setEffScaleKey( spep_4-3 + 30, ctzudodo, 1.48, 1.92 );
setEffScaleKey( spep_4-3 + 32, ctzudodo, 1.98, 2.57 );
setEffScaleKey( spep_4-3 + 34, ctzudodo, 2.48, 3.22 );
setEffScaleKey( spep_4-3 + 36, ctzudodo, 2.98, 3.87 );
setEffScaleKey( spep_4-3 + 48, ctzudodo, 2.98, 3.87 );
setEffScaleKey( spep_4-3 + 50, ctzudodo, 3.81, 4.94 );
setEffScaleKey( spep_4-3 + 52, ctzudodo, 4.65, 6.02 );

setEffRotateKey( spep_4-3 + 28, ctzudodo, 80.1 );
setEffRotateKey( spep_4-3 + 30, ctzudodo, 78.4 );
setEffRotateKey( spep_4-3 + 32, ctzudodo, 76.7 );
setEffRotateKey( spep_4-3 + 34, ctzudodo, 75 );
setEffRotateKey( spep_4-3 + 36, ctzudodo, 73.4 );
setEffRotateKey( spep_4-3 + 50, ctzudodo, 73.4 );
setEffRotateKey( spep_4-3 + 52, ctzudodo, 73.5 );

setEffAlphaKey( spep_4-3 + 28, ctzudodo, 26 );
setEffAlphaKey( spep_4-3 + 30, ctzudodo, 83 );
setEffAlphaKey( spep_4-3 + 32, ctzudodo, 140 );
setEffAlphaKey( spep_4-3 + 34, ctzudodo, 198 );
setEffAlphaKey( spep_4-3 + 36, ctzudodo, 255 );
setEffAlphaKey( spep_4-3 + 48, ctzudodo, 255 );
setEffAlphaKey( spep_4-3 + 50, ctzudodo, 140 );
setEffAlphaKey( spep_4-3 + 52, ctzudodo, 26 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 88, 0,  0, 0, 0, 255 ); --黒 背景

--SE
playSe( spep_4 + 28, 9 );
playSe( spep_4 + 54, 8 );
setSeVolume( spep_4 + 54, 8, 126 );

--次の準備
spep_5 = spep_4+86;

------------------------------------------------------
-- 斬撃エフェクト⇒フィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_5 + 0, SP_06, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_5 + 210, finish_f, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 210, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_f, 0 );
setEffRotateKey( spep_5 + 210, finish_f, 0 );
setEffAlphaKey( spep_5 + 0, finish_f, 255 );
setEffAlphaKey( spep_5 + 210, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_5 + 0, SP_07, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_5 + 210, finish_b, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 210, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_b, 0 );
setEffRotateKey( spep_5 + 210, finish_b, 0 );
setEffAlphaKey( spep_5 + 0, finish_b, 255 );
setEffAlphaKey( spep_5 + 210, finish_b, 255 );

--敵の動き
setDisp( spep_5-3 + 50, 1, 1 );
setDisp( spep_5-3 + 126, 1, 0 );
changeAnime( spep_5 + 0, 1, 106 );

setMoveKey( spep_5-3 + 50, 1, -232.8, -96 , 0 );
setMoveKey( spep_5-3 + 52, 1, -19.2, -96.3 , 0 );
setMoveKey( spep_5-3 + 54, 1, -19.9, -96.6 , 0 );
setMoveKey( spep_5-3 + 56, 1, -20.7, -96.9 , 0 );
setMoveKey( spep_5-3 + 58, 1, -21.5, -97.1 , 0 );
setMoveKey( spep_5-3 + 60, 1, -22.4, -97.4 , 0 );
setMoveKey( spep_5-3 + 62, 1, -23.4, -97.6 , 0 );
setMoveKey( spep_5-3 + 64, 1, -24.6, -97.8 , 0 );
setMoveKey( spep_5-3 + 66, 1, -25.8, -98 , 0 );
setMoveKey( spep_5-3 + 68, 1, -27.4, -98.2 , 0 );
setMoveKey( spep_5-3 + 70, 1, -29.2, -98.4 , 0 );
setMoveKey( spep_5-3 + 72, 1, -31.2, -98.6 , 0 );
setMoveKey( spep_5-3 + 74, 1, -33.7, -98.8 , 0 );
setMoveKey( spep_5-3 + 76, 1, -36.6, -98.9 , 0 );
setMoveKey( spep_5-3 + 78, 1, -40, -99.1 , 0 );
setMoveKey( spep_5-3 + 80, 1, -44.2, -99.2 , 0 );
setMoveKey( spep_5-3 + 82, 1, -49.2, -99.3 , 0 );
setMoveKey( spep_5-3 + 84, 1, -55.1, -99.5 , 0 );
setMoveKey( spep_5-3 + 86, 1, -62.5, -99.6 , 0 );
setMoveKey( spep_5-3 + 88, 1, -71.5, -99.6 , 0 );
setMoveKey( spep_5-3 + 90, 1, -82.4, -99.7 , 0 );
setMoveKey( spep_5-3 + 92, 1, -96.2, -99.8 , 0 );
setMoveKey( spep_5-3 + 94, 1, -113.3, -99.8 , 0 );
setMoveKey( spep_5-3 + 96, 1, -135.1, -99.9 , 0 );
setMoveKey( spep_5-3 + 98, 1, -163.1, -126.9 , 0 );
setMoveKey( spep_5-3 + 100, 1, -199.5, -83.9 , 0 );
setMoveKey( spep_5-3 + 102, 1, -242.4, -118.9 , 0 );
setMoveKey( spep_5-3 + 104, 1, -312.2, -84.9 , 0 );
setMoveKey( spep_5-3 + 106, 1, -304.8, -118.9 , 0 );
setMoveKey( spep_5-3 + 108, 1, -319.3, -77.9 , 0 );
setMoveKey( spep_5-3 + 110, 1, -312.8, -99.9 , 0 );
setMoveKey( spep_5-3 + 112, 1, -313.3, -99.9 , 0 );
setMoveKey( spep_5-3 + 114, 1, -313.8, -99.9 , 0 );
setMoveKey( spep_5-3 + 116, 1, -314.4, -99.9 , 0 );
setMoveKey( spep_5-3 + 118, 1, -314.9, -99.9 , 0 );
setMoveKey( spep_5-3 + 120, 1, -315.4, -99.9 , 0 );
setMoveKey( spep_5-3 + 122, 1, -315.9, -99.9 , 0 );
setMoveKey( spep_5-3 + 124, 1, -316.4, -99.9 , 0 );
setMoveKey( spep_5-3 + 126, 1, -317, -99.9 , 0 );

setScaleKey( spep_5-3 + 50, 1, 0.8, 0.8 );
setScaleKey( spep_5-3 + 126, 1, 0.8, 0.8 );

setRotateKey( spep_5-3 + 50, 1, -60 );
setRotateKey( spep_5-3 + 52, 1, -59.8 );
setRotateKey( spep_5-3 + 54, 1, -59.6 );
setRotateKey( spep_5-3 + 56, 1, -59.4 );
setRotateKey( spep_5-3 + 58, 1, -59.2 );
setRotateKey( spep_5-3 + 60, 1, -59 );
setRotateKey( spep_5-3 + 62, 1, -58.8 );
setRotateKey( spep_5-3 + 64, 1, -58.6 );
setRotateKey( spep_5-3 + 66, 1, -58.5 );
setRotateKey( spep_5-3 + 68, 1, -58.3 );
setRotateKey( spep_5-3 + 70, 1, -58.2 );
setRotateKey( spep_5-3 + 72, 1, -58 );
setRotateKey( spep_5-3 + 74, 1, -57.9 );
setRotateKey( spep_5-3 + 76, 1, -57.8 );
setRotateKey( spep_5-3 + 78, 1, -57.7 );
setRotateKey( spep_5-3 + 80, 1, -57.6 );
setRotateKey( spep_5-3 + 82, 1, -57.5 );
setRotateKey( spep_5-3 + 84, 1, -57.4 );
setRotateKey( spep_5-3 + 86, 1, -57.3 );
setRotateKey( spep_5-3 + 88, 1, -57.2 );
setRotateKey( spep_5-3 + 90, 1, -57.2 );
setRotateKey( spep_5-3 + 92, 1, -57.1 );
setRotateKey( spep_5-3 + 96, 1, -57.1 );
setRotateKey( spep_5-3 + 98, 1, -57 );
setRotateKey( spep_5-3 + 126, 1, -57 );

--SE
playSe( spep_5 + 7, 1142 );
setSeVolume( spep_5 + 7, 1142, 112 );
playSe( spep_5 + 15, 1032 );
setSeVolume( spep_5 + 15, 1032, 89 );
playSe( spep_5 + 15, 1141 );
setSeVolume( spep_5 + 15, 1141, 71 );
playSe( spep_5 + 33, 1142 );
setSeVolume( spep_5 + 33, 1142, 63 );
playSe( spep_5 + 39, 1061 );
setSeVolume( spep_5 + 39, 1061, 79 );
playSe( spep_5 + 41, 1032 );
se_1116 = playSe( spep_5 + 67, 1116 );
playSe( spep_5 + 106, 1023 );
playSe( spep_5 + 106, 1159 );
setSeVolume( spep_5 + 106, 1159, 79 );

stopSe( spep_5 + 90, se_1116, 34 );

-- ** しろ背景 ** --
entryFadeBg( spep_5 + 0, 0, 200, 0,  fcolor_r, fcolor_g, fcolor_b, 255 ); --しろ 背景

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 94 );
endPhase( spep_5 + 200 );
else 
------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 導入セリフカットイン
------------------------------------------------------
-- ** はじめの準備 ** --
spep_0 = 0;

-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 110, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, -1.0, 1.0 );
setEffScaleKey( spep_0 + 110, tame, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 110, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 110, tame, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0 + 4  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0 + 4  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_0 +16, 190006, 72, 0x100, -1, 0, 100, 510);-- ゴゴゴゴ
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

--集中線
shuchusen1 = entryEffectLife( spep_0,  906, 108 -3, 0x100, -1, 0, 0, 0 );
setEffShake( spep_0 + 0, shuchusen1, 108 -3, 20 );
setEffMoveKey( spep_0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0-3 + 108, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0, shuchusen1, 1.1, 1.1 );
setEffScaleKey( spep_0-3 + 108, shuchusen1, 1.1, 1.1 );

setEffRotateKey( spep_0, shuchusen1, 180 );
setEffRotateKey( spep_0-3 + 108, shuchusen1, 180 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 0 );
setEffAlphaKey( spep_0-3 + 35, shuchusen1, 0 );
setEffAlphaKey( spep_0-3 + 36, shuchusen1, 255 );
setEffAlphaKey( spep_0-3 + 108, shuchusen1, 255 );

--SE
playSe( spep_0 + 16, 1018 );
playSe( spep_0 + 0, 8 );
playSe( spep_0 + 73, 1072 );
setSeVolume( spep_0 + 73, 1072, 0 );
setSeVolume( spep_0 + 87, 1072, 0 );
setSeVolume( spep_0 + 88, 1072, 20 );
setSeVolume( spep_0 + 89, 1072, 40 );
setSeVolume( spep_0 + 90, 1072, 60 );
setSeVolume( spep_0 + 91, 1072, 80 );
setSeVolume( spep_0 + 92, 1072, 100 );

--白フェード
entryFade( spep_0 + 102, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1 = spep_0+110;

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
entryFade( spep_1 + 80, 6, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

------------------------------------------------------
-- マイ射撃
------------------------------------------------------

-- ** エフェクト等 ** --
syateki = entryEffect( spep_2 + 0, SP_02x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, syateki, 0, 0, 0 );
setEffMoveKey( spep_2 + 76, syateki, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, syateki, 1.0, 1.0 );
setEffScaleKey( spep_2 + 76, syateki, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, syateki, 0 );
setEffRotateKey( spep_2 + 76, syateki, 0 );
setEffAlphaKey( spep_2 + 0, syateki, 255 );
setEffAlphaKey( spep_2 + 76, syateki, 255 );

--SE
SE0=playSe( spep_2 + 3, 44 );
setSeVolume( spep_2 + 3, 44, 79 );
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 40; --エンドフェイズのフレーム数を置き換える
    
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
--SE
playSe( spep_2 + 40, 1028 );
setSeVolume( spep_2 + 40, 1028, 89 );
playSe( spep_2 + 43, 1030 );
setSeVolume( spep_2 + 43, 1030, 79 );

-- ** しろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 80, 0,  fcolor_r, fcolor_g, fcolor_b, 255 ); --しろ 背景

--次の準備
spep_3 = spep_2+76;

------------------------------------------------------
-- スモ－ク弾着弾
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_3 + 0, SP_03x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 96, hit_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 96, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hit_f, 0 );
setEffRotateKey( spep_3 + 96, hit_f, 0 );
setEffAlphaKey( spep_3 + 0, hit_f, 255 );
setEffAlphaKey( spep_3 + 96, hit_f, 255 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_3 + 0, SP_04x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 96, hit_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 96, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hit_b, 0 );
setEffRotateKey( spep_3 + 96, hit_b, 0 );
setEffAlphaKey( spep_3 + 0, hit_b, 255 );
setEffAlphaKey( spep_3 + 96, hit_b, 255 );

--文字エントリー
ctbikuri = entryEffectLife( spep_3-3 + 14,  10000, 26, 0x100, -1, 0, 161.7, 173.2 );--!!

setEffMoveKey( spep_3-3 + 14, ctbikuri, 161.7, 173.2 , 0 );
setEffMoveKey( spep_3-3 + 16, ctbikuri, 170, 180.3 , 0 );
setEffMoveKey( spep_3-3 + 18, ctbikuri, 169.1, 189.7 , 0 );
setEffMoveKey( spep_3-3 + 20, ctbikuri, 174.1, 188.7 , 0 );
setEffMoveKey( spep_3-3 + 22, ctbikuri, 168.5, 190.8 , 0 );
setEffMoveKey( spep_3-3 + 24, ctbikuri, 173.7, 189.8 , 0 );
setEffMoveKey( spep_3-3 + 26, ctbikuri, 167.8, 191.8 , 0 );
setEffMoveKey( spep_3-3 + 28, ctbikuri, 173.2, 190.8 , 0 );
setEffMoveKey( spep_3-3 + 30, ctbikuri, 167.2, 192.9 , 0 );
setEffMoveKey( spep_3-3 + 32, ctbikuri, 166, 193.3 , 0 );
setEffMoveKey( spep_3-3 + 34, ctbikuri, 172.4, 192.3 , 0 );
setEffMoveKey( spep_3-3 + 36, ctbikuri, 166.3, 194.4 , 0 );
setEffMoveKey( spep_3-3 + 38, ctbikuri, 170.8, 202.7 , 0 );
setEffMoveKey( spep_3-3 + 40, ctbikuri, 169.3, 212.6 , 0 );

setEffScaleKey( spep_3-3 + 14, ctbikuri, 1, 1 );
setEffScaleKey( spep_3-3 + 16, ctbikuri, 1.31, 1.31 );
setEffScaleKey( spep_3-3 + 18, ctbikuri, 1.62, 1.62 );
setEffScaleKey( spep_3-3 + 20, ctbikuri, 1.63, 1.63 );
setEffScaleKey( spep_3-3 + 22, ctbikuri, 1.67, 1.67 );
setEffScaleKey( spep_3-3 + 24, ctbikuri, 1.68, 1.68 );
setEffScaleKey( spep_3-3 + 26, ctbikuri, 1.71, 1.71 );
setEffScaleKey( spep_3-3 + 28, ctbikuri, 1.72, 1.72 );
setEffScaleKey( spep_3-3 + 30, ctbikuri, 1.76, 1.76 );
setEffScaleKey( spep_3-3 + 32, ctbikuri, 1.76, 1.76 );
setEffScaleKey( spep_3-3 + 34, ctbikuri, 1.79, 1.79 );
setEffScaleKey( spep_3-3 + 36, ctbikuri, 1.82, 1.82 );
setEffScaleKey( spep_3-3 + 38, ctbikuri, 2.11, 2.11 );
setEffScaleKey( spep_3-3 + 40, ctbikuri, 2.42, 2.42 );

setEffRotateKey( spep_3-3 + 14, ctbikuri, 10 );
setEffRotateKey( spep_3-3 + 40, ctbikuri, 10 );

setEffAlphaKey( spep_3-3 + 14, ctbikuri, 128 );
setEffAlphaKey( spep_3-3 + 16, ctbikuri, 191 );
setEffAlphaKey( spep_3-3 + 18, ctbikuri, 255 );
setEffAlphaKey( spep_3-3 + 36, ctbikuri, 255 );
setEffAlphaKey( spep_3-3 + 38, ctbikuri, 128 );
setEffAlphaKey( spep_3-3 + 40, ctbikuri, 0 );


--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3-3 + 96, 1, 0 );

changeAnime( spep_3 + 0, 1, 100 );
changeAnime( spep_3-3 + 52, 1, 104 );

setMoveKey( spep_3 + 0, 1, 137.3, -42.7 , 0 );
--setMoveKey( spep_3-3 + 2, 1, 136.5, -41.9 , 0 );
setMoveKey( spep_3-3 + 4, 1, 135.7, -41 , 0 );
setMoveKey( spep_3-3 + 6, 1, 135, -40.2 , 0 );
setMoveKey( spep_3-3 + 8, 1, 134.2, -39.4 , 0 );
setMoveKey( spep_3-3 + 10, 1, 133.5, -38.5 , 0 );
setMoveKey( spep_3-3 + 12, 1, 132.7, -37.7 , 0 );
setMoveKey( spep_3-3 + 14, 1, 132, -36.9 , 0 );
setMoveKey( spep_3-3 + 16, 1, 131.2, -36 , 0 );
setMoveKey( spep_3-3 + 18, 1, 130.5, -35.2 , 0 );
setMoveKey( spep_3-3 + 20, 1, 129.7, -34.4 , 0 );
setMoveKey( spep_3-3 + 22, 1, 128.9, -33.5 , 0 );
setMoveKey( spep_3-3 + 24, 1, 128.2, -32.7 , 0 );
setMoveKey( spep_3-3 + 26, 1, 127.4, -31.9 , 0 );
setMoveKey( spep_3-3 + 28, 1, 126.7, -31 , 0 );
setMoveKey( spep_3-3 + 30, 1, 125.9, -30.2 , 0 );
setMoveKey( spep_3-3 + 32, 1, 125.2, -29.4 , 0 );
setMoveKey( spep_3-3 + 34, 1, 124.4, -28.5 , 0 );
setMoveKey( spep_3-3 + 36, 1, 123.7, -27.7 , 0 );
setMoveKey( spep_3-3 + 38, 1, 122.9, -26.9 , 0 );
setMoveKey( spep_3-3 + 40, 1, 122.1, -26 , 0 );
setMoveKey( spep_3-3 + 42, 1, 121.4, -25.2 , 0 );
setMoveKey( spep_3-3 + 44, 1, 120.6, -24.4 , 0 );
setMoveKey( spep_3-3 + 46, 1, 119.9, -23.5 , 0 );
setMoveKey( spep_3-3 + 48, 1, 119.1, -22.7 , 0 );
setMoveKey( spep_3-3 + 51, 1, 118.4, -21.9 , 0 );
setMoveKey( spep_3-3 + 52, 1, 117.7, -21.1 , 0 );
setMoveKey( spep_3-3 + 54, 1, 116.9, -20.2 , 0 );
setMoveKey( spep_3-3 + 56, 1, 116.2, -19.4 , 0 );
setMoveKey( spep_3-3 + 58, 1, 115.4, -18.6 , 0 );
setMoveKey( spep_3-3 + 60, 1, 114.6, -17.7 , 0 );
setMoveKey( spep_3-3 + 62, 1, 113.9, -16.9 , 0 );
setMoveKey( spep_3-3 + 64, 1, 113.1, -16.1 , 0 );
setMoveKey( spep_3-3 + 66, 1, 112.4, -15.2 , 0 );
setMoveKey( spep_3-3 + 68, 1, 111.6, -14.4 , 0 );
setMoveKey( spep_3-3 + 70, 1, 110.9, -13.6 , 0 );
setMoveKey( spep_3-3 + 72, 1, 110.1, -12.7 , 0 );
setMoveKey( spep_3-3 + 74, 1, 109.4, -11.9 , 0 );
setMoveKey( spep_3-3 + 76, 1, 108.6, -11.1 , 0 );
setMoveKey( spep_3-3 + 78, 1, 107.8, -10.2 , 0 );
setMoveKey( spep_3-3 + 80, 1, 107.1, -9.4 , 0 );
setMoveKey( spep_3-3 + 82, 1, 106.3, -8.6 , 0 );
setMoveKey( spep_3-3 + 84, 1, 105.6, -7.7 , 0 );
setMoveKey( spep_3-3 + 86, 1, 104.8, -6.9 , 0 );
setMoveKey( spep_3-3 + 88, 1, 104.1, -6.1 , 0 );
setMoveKey( spep_3-3 + 90, 1, 103.3, -5.2 , 0 );
setMoveKey( spep_3-3 + 92, 1, 102.6, -4.4 , 0 );
setMoveKey( spep_3-3 + 94, 1, 101.8, -3.6 , 0 );
setMoveKey( spep_3-3 + 96, 1, 101, -2.7 , 0 );
--setMoveKey( spep_3-3 + 98, 1, 100.3, -1.9 , 0 );

a=0;

setScaleKey( spep_3 + 0, 1, 2-a, 2-a );
--setScaleKey( spep_3-3 + 2, 1, 2, 2 );
setScaleKey( spep_3-3 + 4, 1, 2.01-a, 2.01-a );
setScaleKey( spep_3-3 + 6, 1, 2.01-a, 2.01-a );
setScaleKey( spep_3-3 + 8, 1, 2.02-a, 2.02-a );
setScaleKey( spep_3-3 + 12, 1, 2.02-a, 2.02-a );
setScaleKey( spep_3-3 + 14, 1, 2.03-a, 2.03-a );
setScaleKey( spep_3-3 + 16, 1, 2.03-a, 2.03-a );
setScaleKey( spep_3-3 + 18, 1, 2.04-a, 2.04-a );
setScaleKey( spep_3-3 + 22, 1, 2.04-a, 2.04-a );
setScaleKey( spep_3-3 + 24, 1, 2.05-a, 2.05-a );
setScaleKey( spep_3-3 + 26, 1, 2.05-a, 2.05-a );
setScaleKey( spep_3-3 + 28, 1, 2.06-a, 2.06-a );
setScaleKey( spep_3-3 + 32, 1, 2.06-a, 2.06-a );
setScaleKey( spep_3-3 + 34, 1, 2.07-a, 2.07-a );
setScaleKey( spep_3-3 + 36, 1, 2.07-a, 2.07-a );
setScaleKey( spep_3-3 + 38, 1, 2.08-a, 2.08-a );
setScaleKey( spep_3-3 + 40, 1, 2.08-a, 2.08-a );
setScaleKey( spep_3-3 + 42, 1, 2.09-a, 2.09-a );
setScaleKey( spep_3-3 + 46, 1, 2.09-a, 2.09-a );
setScaleKey( spep_3-3 + 48, 1, 2.1-a, 2.1 -a);
setScaleKey( spep_3-3 + 51, 1, 2.1-a, 2.1-a );
setScaleKey( spep_3-3 + 52, 1, 2.11-a, 2.11-a );
setScaleKey( spep_3-3 + 56, 1, 2.11-a, 2.11-a );
setScaleKey( spep_3-3 + 58, 1, 2.12-a, 2.12-a );
setScaleKey( spep_3-3 + 60, 1, 2.12-a, 2.12-a );
setScaleKey( spep_3-3 + 62, 1, 2.13-a, 2.13-a );
setScaleKey( spep_3-3 + 66, 1, 2.13-a, 2.13-a );
setScaleKey( spep_3-3 + 68, 1, 2.14-a, 2.14-a );
setScaleKey( spep_3-3 + 70, 1, 2.14-a, 2.14-a );
setScaleKey( spep_3-3 + 72, 1, 2.15-a, 2.15-a );
setScaleKey( spep_3-3 + 74, 1, 2.15-a, 2.15-a );
setScaleKey( spep_3-3 + 76, 1, 2.16-a, 2.16-a );
setScaleKey( spep_3-3 + 80, 1, 2.16-a, 2.16-a );
setScaleKey( spep_3-3 + 82, 1, 2.17-a, 2.17-a );
setScaleKey( spep_3-3 + 84, 1, 2.17-a, 2.17-a );
setScaleKey( spep_3-3 + 86, 1, 2.18-a, 2.18-a );
setScaleKey( spep_3-3 + 90, 1, 2.18-a, 2.18-a );
setScaleKey( spep_3-3 + 92, 1, 2.19-a, 2.19-a );
setScaleKey( spep_3-3 + 94, 1, 2.19-a, 2.19-a );
setScaleKey( spep_3-3 + 96, 1, 2.2-a, 2.2-a );

setRotateKey( spep_3 + 0, 1, 7 );
setRotateKey( spep_3-3 + 96, 1, 7 );

--SE
playSe( spep_3 + 27, 1218 );
setSeVolume( spep_3 + 27, 1218, 158 );
playSe( spep_3 + 32, 1219 );
setSeVolume( spep_3 + 32, 1219, 158 );

-- ** しろ背景 ** --
entryFadeBg( spep_3 + 0, 0, 102, 0,  fcolor_r, fcolor_g, fcolor_b, 255 ); --しろ 背景

--次の準備
spep_4 = spep_3+96;

------------------------------------------------------
-- 煙の中からトランクス登場
------------------------------------------------------

-- ** エフェクト等 ** --
tossin = entryEffect( spep_4 + 0, SP_05x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, tossin, 0, 0, 0 );
setEffMoveKey( spep_4 + 86, tossin, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, tossin, 1.0, 1.0 );
setEffScaleKey( spep_4 + 86, tossin, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, tossin, 0 );
setEffRotateKey( spep_4 + 86, tossin, 0 );
setEffAlphaKey( spep_4 + 0, tossin, 255 );
setEffAlphaKey( spep_4 + 86, tossin, 255 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4-3 + 28, 1, 0 );
changeAnime( spep_4 + 0, 1, 104 );

setMoveKey( spep_4 + 0, 1, 200.4, -242.3 , 0 );
--setMoveKey( spep_4-3 + 2, 1, 203.3, -247.7 , 0 );
setMoveKey( spep_4-3 + 4, 1, 206.3, -253.4 , 0 );
setMoveKey( spep_4-3 + 6, 1, 209.6, -259.7 , 0 );
setMoveKey( spep_4-3 + 8, 1, 213.5, -267 , 0 );
setMoveKey( spep_4-3 + 10, 1, 218.2, -275.9 , 0 );
setMoveKey( spep_4-3 + 12, 1, 224.3, -287.4 , 0 );
setMoveKey( spep_4-3 + 14, 1, 232.6, -303 , 0 );
setMoveKey( spep_4-3 + 16, 1, 244.1, -324.8 , 0 );
setMoveKey( spep_4-3 + 18, 1, 260.9, -356.5 , 0 );
setMoveKey( spep_4-3 + 20, 1, 297.6, -416.5 , 0 );
setMoveKey( spep_4-3 + 22, 1, 358.2, -515.6 , 0 );
setMoveKey( spep_4-3 + 24, 1, 465, -690.5 , 0 );
setMoveKey( spep_4-3 + 26, 1, 662.7, -1014 , 0 );
setMoveKey( spep_4-3 + 28, 1, 997.3, -1561.4 , 0 );

setScaleKey( spep_4 + 0, 1, 4, 4 );
--setScaleKey( spep_4-3 + 2, 1, 4.03, 4.03 );
setScaleKey( spep_4-3 + 4, 1, 4.05, 4.05 );
setScaleKey( spep_4-3 + 6, 1, 4.09, 4.09 );
setScaleKey( spep_4-3 + 8, 1, 4.12, 4.12 );
setScaleKey( spep_4-3 + 10, 1, 4.17, 4.17 );
setScaleKey( spep_4-3 + 12, 1, 4.22, 4.22 );
setScaleKey( spep_4-3 + 14, 1, 4.3, 4.3 );
setScaleKey( spep_4-3 + 16, 1, 4.41, 4.41 );
setScaleKey( spep_4-3 + 18, 1, 4.57, 4.57 );
setScaleKey( spep_4-3 + 20, 1, 4.84, 4.84 );
setScaleKey( spep_4-3 + 22, 1, 5.28, 5.28 );
setScaleKey( spep_4-3 + 24, 1, 6.06, 6.06 );
setScaleKey( spep_4-3 + 26, 1, 7.51, 7.51 );
setScaleKey( spep_4-3 + 28, 1, 9.95, 9.95 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4-3 + 28, 1, 0 );

-- ** エフェクト等 ** --
shuchusen2 = entryEffectLife( spep_4 + 57, 906,29, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 57, shuchusen2, 0, 0, 0 );
setEffMoveKey( spep_4 + 86, shuchusen2, 0, 0, 0 );
setEffScaleKey( spep_4 + 57, shuchusen2, 1.0, 1.0 );
setEffScaleKey( spep_4 + 86, shuchusen2, 1.0, 1.0 );
setEffRotateKey( spep_4 + 57, shuchusen2, 0 );
setEffRotateKey( spep_4 + 86, shuchusen2, 0 );
setEffAlphaKey( spep_4 + 57, shuchusen2, 255 );
setEffAlphaKey( spep_4 + 86, shuchusen2, 255 );

--文字エントリー
ctzudodo = entryEffectLife( spep_4-3 + 28,  10014, 24, 0x100, -1, 0, 54.3, 359 );--ズドドドッ

setEffMoveKey( spep_4-3 + 28, ctzudodo, 54.3, 359 , 0 );
setEffMoveKey( spep_4-3 + 30, ctzudodo, 55.5, 353.2 , 0 );
setEffMoveKey( spep_4-3 + 32, ctzudodo, 81, 364.8 , 0 );
setEffMoveKey( spep_4-3 + 34, ctzudodo, 74.6, 352.2 , 0 );
setEffMoveKey( spep_4-3 + 36, ctzudodo, 107.2, 371 , 0 );
setEffMoveKey( spep_4-3 + 38, ctzudodo, 83, 356.7 , 0 );
setEffMoveKey( spep_4-3 + 40, ctzudodo, 104.6, 381.4 , 0 );
setEffMoveKey( spep_4-3 + 42, ctzudodo, 80.4, 367.2 , 0 );
setEffMoveKey( spep_4-3 + 44, ctzudodo, 102, 391.8 , 0 );
setEffMoveKey( spep_4-3 + 46, ctzudodo, 77.8, 377.6 , 0 );
setEffMoveKey( spep_4-3 + 48, ctzudodo, 76.5, 382.8 , 0 );
setEffMoveKey( spep_4-3 + 50, ctzudodo, 92.8, 377.5 , 0 );
setEffMoveKey( spep_4-3 + 52, ctzudodo, 50.5, 322.6 , 0 );

setEffScaleKey( spep_4-3 + 28, ctzudodo, 0.98, 1.28 );
setEffScaleKey( spep_4-3 + 30, ctzudodo, 1.48, 1.92 );
setEffScaleKey( spep_4-3 + 32, ctzudodo, 1.98, 2.57 );
setEffScaleKey( spep_4-3 + 34, ctzudodo, 2.48, 3.22 );
setEffScaleKey( spep_4-3 + 36, ctzudodo, 2.98, 3.87 );
setEffScaleKey( spep_4-3 + 48, ctzudodo, 2.98, 3.87 );
setEffScaleKey( spep_4-3 + 50, ctzudodo, 3.81, 4.94 );
setEffScaleKey( spep_4-3 + 52, ctzudodo, 4.65, 6.02 );

setEffRotateKey( spep_4-3 + 28, ctzudodo, 10.1 );
setEffRotateKey( spep_4-3 + 30, ctzudodo, 8.4 );
setEffRotateKey( spep_4-3 + 32, ctzudodo, 6.7 );
setEffRotateKey( spep_4-3 + 34, ctzudodo, 5 );
setEffRotateKey( spep_4-3 + 36, ctzudodo, 3.4 );
setEffRotateKey( spep_4-3 + 50, ctzudodo, 3.4 );
setEffRotateKey( spep_4-3 + 52, ctzudodo, 3.5 );

setEffAlphaKey( spep_4-3 + 28, ctzudodo, 26 );
setEffAlphaKey( spep_4-3 + 30, ctzudodo, 83 );
setEffAlphaKey( spep_4-3 + 32, ctzudodo, 140 );
setEffAlphaKey( spep_4-3 + 34, ctzudodo, 198 );
setEffAlphaKey( spep_4-3 + 36, ctzudodo, 255 );
setEffAlphaKey( spep_4-3 + 48, ctzudodo, 255 );
setEffAlphaKey( spep_4-3 + 50, ctzudodo, 140 );
setEffAlphaKey( spep_4-3 + 52, ctzudodo, 26 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 88, 0,  0, 0, 0, 255 ); --黒 背景

--SE
playSe( spep_4 + 28, 9 );
playSe( spep_4 + 54, 8 );
setSeVolume( spep_4 + 54, 8, 126 );

--次の準備
spep_5 = spep_4+86;
------------------------------------------------------
-- 斬撃エフェクト⇒フィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_5 + 0, SP_06x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_5 + 210, finish_f, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, finish_f, -1.0, 1.0 );
setEffScaleKey( spep_5 + 48, finish_f, -1.0, 1.0 );
setEffScaleKey( spep_5 + 49, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 210, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_f, 0 );
setEffRotateKey( spep_5 + 210, finish_f, 0 );
setEffAlphaKey( spep_5 + 0, finish_f, 255 );
setEffAlphaKey( spep_5 + 210, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_5 + 0, SP_07x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_5 + 210, finish_b, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 210, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_b, 0 );
setEffRotateKey( spep_5 + 210, finish_b, 0 );
setEffAlphaKey( spep_5 + 0, finish_b, 255 );
setEffAlphaKey( spep_5 + 210, finish_b, 255 );

--敵の動き
setDisp( spep_5-3 + 50, 1, 1 );
setDisp( spep_5-3 + 126, 1, 0 );
changeAnime( spep_5 + 0, 1, 106 );

setMoveKey( spep_5-3 + 50, 1, -232.8, -96 , 0 );
setMoveKey( spep_5-3 + 52, 1, -19.2, -96.3 , 0 );
setMoveKey( spep_5-3 + 54, 1, -19.9, -96.6 , 0 );
setMoveKey( spep_5-3 + 56, 1, -20.7, -96.9 , 0 );
setMoveKey( spep_5-3 + 58, 1, -21.5, -97.1 , 0 );
setMoveKey( spep_5-3 + 60, 1, -22.4, -97.4 , 0 );
setMoveKey( spep_5-3 + 62, 1, -23.4, -97.6 , 0 );
setMoveKey( spep_5-3 + 64, 1, -24.6, -97.8 , 0 );
setMoveKey( spep_5-3 + 66, 1, -25.8, -98 , 0 );
setMoveKey( spep_5-3 + 68, 1, -27.4, -98.2 , 0 );
setMoveKey( spep_5-3 + 70, 1, -29.2, -98.4 , 0 );
setMoveKey( spep_5-3 + 72, 1, -31.2, -98.6 , 0 );
setMoveKey( spep_5-3 + 74, 1, -33.7, -98.8 , 0 );
setMoveKey( spep_5-3 + 76, 1, -36.6, -98.9 , 0 );
setMoveKey( spep_5-3 + 78, 1, -40, -99.1 , 0 );
setMoveKey( spep_5-3 + 80, 1, -44.2, -99.2 , 0 );
setMoveKey( spep_5-3 + 82, 1, -49.2, -99.3 , 0 );
setMoveKey( spep_5-3 + 84, 1, -55.1, -99.5 , 0 );
setMoveKey( spep_5-3 + 86, 1, -62.5, -99.6 , 0 );
setMoveKey( spep_5-3 + 88, 1, -71.5, -99.6 , 0 );
setMoveKey( spep_5-3 + 90, 1, -82.4, -99.7 , 0 );
setMoveKey( spep_5-3 + 92, 1, -96.2, -99.8 , 0 );
setMoveKey( spep_5-3 + 94, 1, -113.3, -99.8 , 0 );
setMoveKey( spep_5-3 + 96, 1, -135.1, -99.9 , 0 );
setMoveKey( spep_5-3 + 98, 1, -163.1, -126.9 , 0 );
setMoveKey( spep_5-3 + 100, 1, -199.5, -83.9 , 0 );
setMoveKey( spep_5-3 + 102, 1, -242.4, -118.9 , 0 );
setMoveKey( spep_5-3 + 104, 1, -312.2, -84.9 , 0 );
setMoveKey( spep_5-3 + 106, 1, -304.8, -118.9 , 0 );
setMoveKey( spep_5-3 + 108, 1, -319.3, -77.9 , 0 );
setMoveKey( spep_5-3 + 110, 1, -312.8, -99.9 , 0 );
setMoveKey( spep_5-3 + 112, 1, -313.3, -99.9 , 0 );
setMoveKey( spep_5-3 + 114, 1, -313.8, -99.9 , 0 );
setMoveKey( spep_5-3 + 116, 1, -314.4, -99.9 , 0 );
setMoveKey( spep_5-3 + 118, 1, -314.9, -99.9 , 0 );
setMoveKey( spep_5-3 + 120, 1, -315.4, -99.9 , 0 );
setMoveKey( spep_5-3 + 122, 1, -315.9, -99.9 , 0 );
setMoveKey( spep_5-3 + 124, 1, -316.4, -99.9 , 0 );
setMoveKey( spep_5-3 + 126, 1, -317, -99.9 , 0 );

setScaleKey( spep_5-3 + 50, 1, 0.8, 0.8 );
setScaleKey( spep_5-3 + 126, 1, 0.8, 0.8 );

setRotateKey( spep_5-3 + 50, 1, -60 );
setRotateKey( spep_5-3 + 52, 1, -59.8 );
setRotateKey( spep_5-3 + 54, 1, -59.6 );
setRotateKey( spep_5-3 + 56, 1, -59.4 );
setRotateKey( spep_5-3 + 58, 1, -59.2 );
setRotateKey( spep_5-3 + 60, 1, -59 );
setRotateKey( spep_5-3 + 62, 1, -58.8 );
setRotateKey( spep_5-3 + 64, 1, -58.6 );
setRotateKey( spep_5-3 + 66, 1, -58.5 );
setRotateKey( spep_5-3 + 68, 1, -58.3 );
setRotateKey( spep_5-3 + 70, 1, -58.2 );
setRotateKey( spep_5-3 + 72, 1, -58 );
setRotateKey( spep_5-3 + 74, 1, -57.9 );
setRotateKey( spep_5-3 + 76, 1, -57.8 );
setRotateKey( spep_5-3 + 78, 1, -57.7 );
setRotateKey( spep_5-3 + 80, 1, -57.6 );
setRotateKey( spep_5-3 + 82, 1, -57.5 );
setRotateKey( spep_5-3 + 84, 1, -57.4 );
setRotateKey( spep_5-3 + 86, 1, -57.3 );
setRotateKey( spep_5-3 + 88, 1, -57.2 );
setRotateKey( spep_5-3 + 90, 1, -57.2 );
setRotateKey( spep_5-3 + 92, 1, -57.1 );
setRotateKey( spep_5-3 + 96, 1, -57.1 );
setRotateKey( spep_5-3 + 98, 1, -57 );
setRotateKey( spep_5-3 + 126, 1, -57 );

--SE
playSe( spep_5 + 7, 1142 );
setSeVolume( spep_5 + 7, 1142, 112 );
playSe( spep_5 + 15, 1032 );
setSeVolume( spep_5 + 15, 1032, 89 );
playSe( spep_5 + 15, 1141 );
setSeVolume( spep_5 + 15, 1141, 71 );
playSe( spep_5 + 33, 1142 );
setSeVolume( spep_5 + 33, 1142, 63 );
playSe( spep_5 + 39, 1061 );
setSeVolume( spep_5 + 39, 1061, 79 );
playSe( spep_5 + 41, 1032 );
se_1116 = playSe( spep_5 + 67, 1116 );
playSe( spep_5 + 106, 1023 );
playSe( spep_5 + 106, 1159 );
setSeVolume( spep_5 + 106, 1159, 79 );

stopSe( spep_5 + 90, se_1116, 34 );

-- ** しろ背景 ** --
entryFadeBg( spep_5 + 0, 0, 200, 0,  fcolor_r, fcolor_g, fcolor_b, 255 ); --しろ 背景

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 94 );
endPhase( spep_5 + 200 );
end