--4019410:ベジータ_スラッシュスイング
--sp_effect_b4_00139

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
SP_01=	155267	;--	手前突進
SP_02=	155268	;--	頭突き〜構えまで・手前
SP_03=	155269	;--	頭突き〜構えまで・奥
SP_04=	155270	;--	発射〜爆発まで・手前
SP_05=	155271	;--	発射〜爆発まで・奥

--エフェクト(敵)
SP_01x=	155267	;--	手前突進	
SP_02x=	155272	;--	頭突き〜構えまで・手前	(敵)
SP_03x=	155273	;--	頭突き〜構えまで・奥	(敵)
SP_04x=	155274	;--	発射〜爆発まで・手前	(敵)
SP_05x=	155271	;--	発射〜爆発まで・奥	

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
-- 手前突進
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
tossin = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tossin, 0, 0, 0 );
setEffMoveKey( spep_0 + 70, tossin, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tossin, 1.0, 1.0 );
setEffScaleKey( spep_0 + 70, tossin, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tossin, 0 );
setEffRotateKey( spep_0 + 70, tossin, 0 );
setEffAlphaKey( spep_0 + 0, tossin, 255 );
setEffAlphaKey( spep_0 + 70, tossin, 255 );
setEffAlphaKey( spep_0 + 71, tossin, 0 );
setEffAlphaKey( spep_0 + 72, tossin, 0 );

-- ** エフェクト等 ** --
kakimozi1 = entryEffect( spep_0 + 0, 155275, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, kakimozi1, 0, 0, 0 );
setEffMoveKey( spep_0 + 440, kakimozi1, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, kakimozi1, 1.0, 1.0 );
setEffScaleKey( spep_0 + 440, kakimozi1, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, kakimozi1, 0 );
setEffRotateKey( spep_0 + 440, kakimozi1, 0 );
setEffAlphaKey( spep_0 + 0, kakimozi1, 255 );
setEffAlphaKey( spep_0 + 440, kakimozi1, 255 );

-- ** くろ背景 ** --
entryFadeBg(   spep_0, 0, 72, 0,  0, 0, 0, 255 ); --くろ 背景

--SE
SE0=playSe( spep_0 + 0, 9 );
SE1=playSe( spep_0 + 0, 1182 );
SE2=playSe( spep_0 + 27, 1072 );
setSeVolume( spep_0 + 27, 1072, 126 );
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0+50 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE0, 0 );
    stopSe( SP_dodge - 12, SE1, 0 );
    stopSe( SP_dodge - 12, SE2, 0 );
    pauseAll( SP_dodge, 67);

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

--次の準備
spep_1=spep_0 + 70;
------------------------------------------------------
-- 頭突き〜構えまで
------------------------------------------------------
-- ** エフェクト等 ** --
zutuki_f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, zutuki_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 370, zutuki_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, zutuki_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 370, zutuki_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, zutuki_f, 0 );
setEffRotateKey( spep_1 + 370, zutuki_f, 0 );
setEffAlphaKey( spep_1 + 0, zutuki_f, 255 );
setEffAlphaKey( spep_1 + 370, zutuki_f, 255 );

-- ** エフェクト等 ** --
zutuki_b = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, zutuki_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 370, zutuki_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, zutuki_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 370, zutuki_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, zutuki_b, 0 );
setEffRotateKey( spep_1 + 370, zutuki_b, 0 );
setEffAlphaKey( spep_1 + 0, zutuki_b, 255 );
setEffAlphaKey( spep_1 + 370, zutuki_b, 255 );

--集中線
shuchusen1 = entryEffectLife( spep_1-3 + 190,  906, 24, 0x100, -1, 0, 0, 0 );
setEffShake( spep_1-3 + 190, shuchusen1, 24, 20 );
setEffMoveKey( spep_1-3 + 190, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_1-3 + 214, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_1-3 + 190, shuchusen1, 1.14, 1.43 );
setEffScaleKey( spep_1-3 + 214, shuchusen1, 1.14, 1.43 );

setEffRotateKey( spep_1-3 + 190, shuchusen1, 0.3 );
setEffRotateKey( spep_1-3 + 214, shuchusen1, 0.3 );

setEffAlphaKey( spep_1-3 + 190, shuchusen1, 191 );
setEffAlphaKey( spep_1-3 + 204, shuchusen1, 191 );
setEffAlphaKey( spep_1-3 + 206, shuchusen1, 153 );
setEffAlphaKey( spep_1-3 + 208, shuchusen1, 115 );
setEffAlphaKey( spep_1-3 + 210, shuchusen1, 77 );
setEffAlphaKey( spep_1-3 + 212, shuchusen1, 38 );
setEffAlphaKey( spep_1-3 + 214, shuchusen1, 0 );

--集中線
shuchusen2 = entryEffectLife( spep_1-3 + 250,  906, 118, 0x100, -1, 0, 0, 0 );
setEffShake( spep_1-3 + 250, shuchusen2, 118, 20 );
setEffMoveKey( spep_1-3 + 250, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_1-3 + 368, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_1-3 + 250, shuchusen2, 1.21, 1.43 );
setEffScaleKey( spep_1-3 + 368, shuchusen2, 1.21, 1.43 );

setEffRotateKey( spep_1-3 + 250, shuchusen2, 180.3 );
setEffRotateKey( spep_1-3 + 368, shuchusen2, 180.3 );

setEffAlphaKey( spep_1-3 + 250, shuchusen2, 0 );
setEffAlphaKey( spep_1-3 + 252, shuchusen2, 48 );
setEffAlphaKey( spep_1-3 + 254, shuchusen2, 96 );
setEffAlphaKey( spep_1-3 + 256, shuchusen2, 143 );
setEffAlphaKey( spep_1-3 + 258, shuchusen2, 191 );
setEffAlphaKey( spep_1-3 + 368, shuchusen2, 191 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_1+260  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_1+260  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_1 +272, 190006, 72, 0x100, -1, 0, 80, 510);-- ゴゴゴゴ

setEffMoveKey(  spep_1 +272,  ctgogo,  80,  510);
setEffMoveKey(  spep_1 +344,  ctgogo,  80,  510);

setEffAlphaKey( spep_1 +272, ctgogo, 0 );
setEffAlphaKey( spep_1 + 273, ctgogo, 255 );
setEffAlphaKey( spep_1 + 274, ctgogo, 255 );
setEffAlphaKey( spep_1 + 388, ctgogo, 255 );
setEffAlphaKey( spep_1 + 340, ctgogo, 191 );
setEffAlphaKey( spep_1 + 342, ctgogo, 112 );
setEffAlphaKey( spep_1 + 344, ctgogo, 64 );

setEffRotateKey(  spep_1 +272,  ctgogo,  0);
setEffRotateKey(  spep_1 +344,  ctgogo,  0);

setEffScaleKey(  spep_1 +272,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_1 +334,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_1 +344,  ctgogo, 1.07, 1.07 );

--敵の動き
setDisp( spep_1-3 + 0, 1, 1 );
setDisp( spep_1 -3 + 34, 1, 0 );
setDisp( spep_1 -3 + 80, 1, 1 );
setDisp( spep_1 -3 + 122, 1, 0 );
setDisp( spep_1 -3 + 138, 1, 1 );
setDisp( spep_1 -3 + 210, 1, 0 );

changeAnime( spep_1-3 + 0, 1, 100 );
changeAnime( spep_1-3 + 12, 1, 108 );
changeAnime( spep_1-3 + 20, 1, 106 );
changeAnime( spep_1-3 + 100, 1, 108 );
changeAnime( spep_1-3 + 166, 1, 106 );
changeAnime( spep_1-3 + 188, 1, 107 );


setMoveKey( spep_1-3 + 0, 1, -15.6, -9.9 , 0 );
setMoveKey( spep_1-3 + 11, 1, -15.6, -9.9 , 0 );

setMoveKey( spep_1-3 + 12, 1, 34.2, 27.2 , 0 );
setMoveKey( spep_1-3 + 14, 1, 45.5, 57 , 0 );
setMoveKey( spep_1-3 + 16, 1, 46.8, 68.8 , 0 );
setMoveKey( spep_1-3 + 18, 1, 64.1, 84.7 , 0 );
setMoveKey( spep_1-3 + 19, 1, 64.1, 84.7 , 0 );

setMoveKey( spep_1-3 + 20, 1, 50.1, 113.7 , 0 );
setMoveKey( spep_1-3 + 22, 1, 105.7, 188.4 , 0 );
setMoveKey( spep_1-3 + 24, 1, 171.2, 249 , 0 );
setMoveKey( spep_1-3 + 26, 1, 308.1, 339.3 , 0 );
setMoveKey( spep_1-3 + 28, 1, 434.9, 421.5 , 0 );
setMoveKey( spep_1-3 + 30, 1, 573.8, 507.8 , 0 );
setMoveKey( spep_1-3 + 32, 1, 706.7, 592.1 , 0 );
setMoveKey( spep_1-3 + 34, 1, 839.6, 676.4 , 0 );

setMoveKey( spep_1-3 + 80, 1, -689.7, 693.4 , 0 );
setMoveKey( spep_1-3 + 82, 1, -671.5, 676.5 , 0 );
setMoveKey( spep_1-3 + 84, 1, -639.1, 646.7 , 0 );
setMoveKey( spep_1-3 + 86, 1, -592.6, 603.7 , 0 );
setMoveKey( spep_1-3 + 88, 1, -532, 547.8 , 0 );
setMoveKey( spep_1-3 + 90, 1, -457.3, 478.8 , 0 );
setMoveKey( spep_1-3 + 92, 1, -368.5, 396.8 , 0 );
setMoveKey( spep_1-3 + 94, 1, -265.6, 301.8 , 0 );
setMoveKey( spep_1-3 + 96, 1, -148.5, 193.7 , 0 );
setMoveKey( spep_1-3 + 98, 1, -21.3, 44.6 , 0 );
setMoveKey( spep_1-3 + 99, 1, -21.3, 44.6 , 0 );

setMoveKey( spep_1-3 + 100, 1, 13.6, -3.7 , 0 );
setMoveKey( spep_1-3 + 102, 1, 5.6, -22.6 , 0 );
setMoveKey( spep_1-3 + 104, 1, 13.6, -9.4 , 0 );
setMoveKey( spep_1-3 + 106, 1, -2.4, -16.3 , 0 );
setMoveKey( spep_1-3 + 108, 1, 13.6, -15.2 , 0 );
setMoveKey( spep_1-3 + 110, 1, 9.6, -38 , 0 );
setMoveKey( spep_1-3 + 112, 1, 13.6, -20.9 , 0 );
setMoveKey( spep_1-3 + 114, 1, 5.6, -27.7 , 0 );
setMoveKey( spep_1-3 + 116, 1, 13.6, -284.5 , 0 );
setMoveKey( spep_1-3 + 118, 1, 13.6, -545.3 , 0 );
setMoveKey( spep_1-3 + 120, 1, 13.6, -806 , 0 );
setMoveKey( spep_1-3 + 122, 1, 13.6, -1066.8 , 0 );

setMoveKey( spep_1-3 + 138, 1, 5.6, 413.3 , 0 );
setMoveKey( spep_1-3 + 140, 1, 7.2, 366.8 , 0 );
setMoveKey( spep_1-3 + 142, 1, 8.9, 320.3 , 0 );
setMoveKey( spep_1-3 + 144, 1, 10.5, 273.8 , 0 );
setMoveKey( spep_1-3 + 146, 1, 12.1, 227.3 , 0 );
setMoveKey( spep_1-3 + 148, 1, 13.7, 180.8 , 0 );
setMoveKey( spep_1-3 + 150, 1, 15.3, 134.3 , 0 );
setMoveKey( spep_1-3 + 152, 1, 16.9, 87.8 , 0 );
setMoveKey( spep_1-3 + 154, 1, 17.6, 19.2 , 0 );
setMoveKey( spep_1-3 + 156, 1, 18.3, -49.4 , 0 );
setMoveKey( spep_1-3 + 158, 1, 18.9, -118 , 0 );
setMoveKey( spep_1-3 + 160, 1, 19.6, -186.6 , 0 );
setMoveKey( spep_1-3 + 162, 1, 20.2, -255.3 , 0 );
setMoveKey( spep_1-3 + 164, 1, 20.9, -323.9 , 0 );
setMoveKey( spep_1-3 + 165, 1, 20.9, -323.9 , 0 );

setMoveKey( spep_1-3 + 166, 1, 19.3, -188.2 , 0 );
setMoveKey( spep_1-3 + 168, 1, 24.5, -157.7 , 0 );
setMoveKey( spep_1-3 + 170, 1, 29.7, -127.3 , 0 );
setMoveKey( spep_1-3 + 172, 1, 34.9, -96.8 , 0 );
setMoveKey( spep_1-3 + 174, 1, 35.3, -89.6 , 0 );
setMoveKey( spep_1-3 + 176, 1, 35.6, -82.3 , 0 );
setMoveKey( spep_1-3 + 178, 1, 35.9, -75.1 , 0 );
setMoveKey( spep_1-3 + 180, 1, 36.3, -67.8 , 0 );
setMoveKey( spep_1-3 + 182, 1, 36.6, -60.6 , 0 );
setMoveKey( spep_1-3 + 184, 1, 37, -53.4 , 0 );
setMoveKey( spep_1-3 + 186, 1, 37.3, -46.1 , 0 );
setMoveKey( spep_1-3 + 187, 1, 37.3, -46.1 , 0 );

setMoveKey( spep_1-3 + 188, 1, 41.7, -99.3 , 0 );
setMoveKey( spep_1-3 + 190, 1, 43.5, -89.5 , 0 );
setMoveKey( spep_1-3 + 192, 1, 37, -92.8 , 0 );
setMoveKey( spep_1-3 + 194, 1, 42.2, -91.1 , 0 );
setMoveKey( spep_1-3 + 196, 1, 42.2, -105.3 , 0 );
setMoveKey( spep_1-3 + 198, 1, 46.1, -103.3 , 0 );
setMoveKey( spep_1-3 + 200, 1, 150.9, -285 , 0 );
setMoveKey( spep_1-3 + 202, 1, 266.8, -460.9 , 0 );
setMoveKey( spep_1-3 + 204, 1, 373.6, -643 , 0 );
setMoveKey( spep_1-3 + 206, 1, 483.4, -811.5 , 0 );
setMoveKey( spep_1-3 + 208, 1, 588.2, -986.1 , 0 );
setMoveKey( spep_1-3 + 210, 1, 696, -1155.1 , 0 );


setScaleKey( spep_1-3 + 0, 1, 1.2, 1.2 );
setScaleKey( spep_1-3 + 11, 1, 1.2, 1.2 );

setScaleKey( spep_1-3 + 12, 1, 1.25, 1.25 );
setScaleKey( spep_1-3 + 19, 1, 1.25, 1.25 );

setScaleKey( spep_1-3 + 20, 1, 1.15, 1.15 );
setScaleKey( spep_1-3 + 24, 1, 1.15, 1.15 );
setScaleKey( spep_1-3 + 26, 1, 1.05, 1.05 );
setScaleKey( spep_1-3 + 28, 1, 0.96, 0.96 );
setScaleKey( spep_1-3 + 30, 1, 0.87, 0.87 );
setScaleKey( spep_1-3 + 32, 1, 0.77, 0.77 );
setScaleKey( spep_1-3 + 34, 1, 0.68, 0.68 );

setScaleKey( spep_1-3 + 80, 1, 2.21, 2.21 );
setScaleKey( spep_1-3 + 82, 1, 2.2, 2.2 );
setScaleKey( spep_1-3 + 84, 1, 2.17, 2.17 );
setScaleKey( spep_1-3 + 86, 1, 2.12, 2.12 );
setScaleKey( spep_1-3 + 88, 1, 2.07, 2.07 );
setScaleKey( spep_1-3 + 90, 1, 2, 2 );
setScaleKey( spep_1-3 + 92, 1, 1.92, 1.92 );
setScaleKey( spep_1-3 + 94, 1, 1.82, 1.82 );
setScaleKey( spep_1-3 + 96, 1, 1.71, 1.71 );
setScaleKey( spep_1-3 + 98, 1, 1.59, 1.59 );
setScaleKey( spep_1-3 + 99, 1, 1.59, 1.59 );

setScaleKey( spep_1-3 + 100, 1, 1.47, 1.47 );
setScaleKey( spep_1-3 + 122, 1, 1.47, 1.47 );

setScaleKey( spep_1-3 + 138, 1, 0.19, 0.19 );
setScaleKey( spep_1-3 + 140, 1, 0.28, 0.28 );
setScaleKey( spep_1-3 + 142, 1, 0.37, 0.37 );
setScaleKey( spep_1-3 + 144, 1, 0.46, 0.46 );
setScaleKey( spep_1-3 + 146, 1, 0.55, 0.55 );
setScaleKey( spep_1-3 + 148, 1, 0.64, 0.64 );
setScaleKey( spep_1-3 + 150, 1, 0.74, 0.74 );
setScaleKey( spep_1-3 + 152, 1, 0.83, 0.83 );
setScaleKey( spep_1-3 + 154, 1, 0.89, 0.89 );
setScaleKey( spep_1-3 + 156, 1, 0.96, 0.96 );
setScaleKey( spep_1-3 + 158, 1, 1.03, 1.03 );
setScaleKey( spep_1-3 + 160, 1, 1.1, 1.1 );
setScaleKey( spep_1-3 + 162, 1, 1.17, 1.17 );
setScaleKey( spep_1-3 + 164, 1, 1.24, 1.24 );
setScaleKey( spep_1-3 + 165, 1, 1.24, 1.24 );

setScaleKey( spep_1-3 + 166, 1, 1.22, 1.22 );
setScaleKey( spep_1-3 + 187, 1, 1.22, 1.22 );

setScaleKey( spep_1-3 + 188, 1, 0.7, 0.7 );
setScaleKey( spep_1-3 + 192, 1, 0.7, 0.7 );
setScaleKey( spep_1-3 + 194, 1, 0.68, 0.68 );
setScaleKey( spep_1-3 + 196, 1, 0.72, 0.72 );
setScaleKey( spep_1-3 + 198, 1, 0.75, 0.75 );
setScaleKey( spep_1-3 + 200, 1, 1.34, 1.34 );
setScaleKey( spep_1-3 + 202, 1, 1.92, 1.92 );
setScaleKey( spep_1-3 + 204, 1, 2.5, 2.5 );
setScaleKey( spep_1-3 + 206, 1, 3.07, 3.07 );
setScaleKey( spep_1-3 + 208, 1, 3.63, 3.63 );
setScaleKey( spep_1-3 + 210, 1, 4.19, 4.19 );

setRotateKey( spep_1-3 + 0, 1, -7.7 );
setRotateKey( spep_1-3 + 11, 1, -7.7 );

setRotateKey( spep_1-3 + 12, 1, -20.5 );
setRotateKey( spep_1-3 + 18, 1, -20.5 );
setRotateKey( spep_1-3 + 19, 1, -20.5 );

setRotateKey( spep_1-3 + 20, 1, -40.8 );
setRotateKey( spep_1-3 + 22, 1, -27.4 );
setRotateKey( spep_1-3 + 24, 1, -15.1 );
setRotateKey( spep_1-3 + 26, 1, -5.9 );
setRotateKey( spep_1-3 + 28, 1, 3.3 );
setRotateKey( spep_1-3 + 30, 1, 12.5 );
setRotateKey( spep_1-3 + 32, 1, 21.7 );
setRotateKey( spep_1-3 + 34, 1, 30.8 );

setRotateKey( spep_1-3 + 80, 1, 63.6 );
setRotateKey( spep_1-3 + 82, 1, 63.8 );
setRotateKey( spep_1-3 + 84, 1, 64.2 );
setRotateKey( spep_1-3 + 86, 1, 64.7 );
setRotateKey( spep_1-3 + 88, 1, 65.4 );
setRotateKey( spep_1-3 + 90, 1, 66.3 );
setRotateKey( spep_1-3 + 92, 1, 67.4 );
setRotateKey( spep_1-3 + 94, 1, 68.6 );
setRotateKey( spep_1-3 + 96, 1, 69.9 );
setRotateKey( spep_1-3 + 98, 1, 71.4 );
setRotateKey( spep_1-3 + 99, 1, 71.4 );

setRotateKey( spep_1-3 + 100, 1, 75 );
setRotateKey( spep_1-3 + 122, 1, 75 );

setRotateKey( spep_1-3 + 138, 1, 75 );
setRotateKey( spep_1-3 + 142, 1, 75 );
setRotateKey( spep_1-3 + 144, 1, 75.1 );
setRotateKey( spep_1-3 + 150, 1, 75.1 );
setRotateKey( spep_1-3 + 152, 1, 75.2 );
setRotateKey( spep_1-3 + 165, 1, 75.2 );

setRotateKey( spep_1-3 + 166, 1, 3.9 );
setRotateKey( spep_1-3 + 168, 1, 5.5 );
setRotateKey( spep_1-3 + 170, 1, 7 );
setRotateKey( spep_1-3 + 172, 1, 8.5 );
setRotateKey( spep_1-3 + 174, 1, 9.2 );
setRotateKey( spep_1-3 + 176, 1, 9.8 );
setRotateKey( spep_1-3 + 178, 1, 10.4 );
setRotateKey( spep_1-3 + 180, 1, 11.1 );
setRotateKey( spep_1-3 + 182, 1, 11.7 );
setRotateKey( spep_1-3 + 184, 1, 12.3 );
setRotateKey( spep_1-3 + 186, 1, 13 );
setRotateKey( spep_1-3 + 187, 1, 13 );

setRotateKey( spep_1-3 + 188, 1, -1.7 );
setRotateKey( spep_1-3 + 198, 1, -1.7 );
setRotateKey( spep_1-3 + 200, 1, -4.3 );
setRotateKey( spep_1-3 + 202, 1, -6.9 );
setRotateKey( spep_1-3 + 204, 1, -9.4 );
setRotateKey( spep_1-3 + 206, 1, -12 );
setRotateKey( spep_1-3 + 208, 1, -14.6 );
setRotateKey( spep_1-3 + 210, 1, -17.2 );

--SE
playSe( spep_1 + 272, 1018 );
playSe( spep_1 + 5, 1004 );
playSe( spep_1 + 9, 1003 );
setSeVolume( spep_1 + 9, 1003, 89 );
playSe( spep_1 + 10, 1010 );
playSe( spep_1 + 16, 1110 );
se_1109 = playSe( spep_1 + 60, 1109 );
se_0044 = playSe( spep_1 + 65, 44 );
playSe( spep_1 + 102, 1189 );
playSe( spep_1 + 104, 1123 );
playSe( spep_1 + 126, 43 );
playSe( spep_1 + 164, 1007 );
playSe( spep_1 + 164, 1008 );
setSeVolume( spep_1 + 164, 1008, 71 );
playSe( spep_1 + 168, 1012 );
playSe( spep_1 + 171, 43 );
playSe( spep_1 + 182, 1004 );
setSeVolume( spep_1 + 182, 1004, 89 );
playSe( spep_1 + 188, 1120 );
setSeVolume( spep_1 + 188, 1120, 89 );
playSe( spep_1 + 188, 1001 );
setSeVolume( spep_1 + 188, 1001, 71 );
playSe( spep_1 + 219, 1109 );
playSe( spep_1 + 262, 1037 );
setSeVolume( spep_1 + 262, 1037, 63 );
se_1191 = playSe( spep_1 + 262, 1191 );
setSeVolume( spep_1 + 262, 1191, 178 );
playSe( spep_1 + 262, 49 );
playSe( spep_1 + 286, 49 );
playSe( spep_1 + 314, 49 );
playSe( spep_1 + 336, 49 );

stopSe( spep_1 + 70, se_1109, 8 );
stopSe( spep_1 + 96, se_0044, 15 );
stopSe( spep_1 + 324, se_1191, 65 );

-- ** くろ背景 ** --
entryFadeBg(   spep_1, 0, 372, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_1 + 362, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_2=spep_1 + 370;
--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_2 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_2 + 0, 906, 86, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen, 86, 20 );

setEffMoveKey( spep_2 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_2 + 86, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_2 + 86, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_2 + 0, shuchusen, 0 );
setEffRotateKey( spep_2 + 86, shuchusen, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen, 255 );
setEffAlphaKey( spep_2 + 86, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_2 + 0, SE_05 );
se_1212 = playSe( spep_2 + 77, 1212 );
setSeVolume( spep_2 + 77, 1212, 0 );

--白フェード
entryFade( spep_2 + 78, 4, 12, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 92;

------------------------------------------------------
-- 発射〜爆発まで・手前
------------------------------------------------------
-- ** エフェクト等 ** --
beam_f = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, beam_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 360, beam_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, beam_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 360, beam_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, beam_f, 0 );
setEffRotateKey( spep_3 + 360, beam_f, 0 );
setEffAlphaKey( spep_3 + 0, beam_f, 255 );
setEffAlphaKey( spep_3 + 360, beam_f, 255 );

-- ** エフェクト等 ** --
beam_b = entryEffect( spep_3 + 0, SP_05, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, beam_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 360, beam_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, beam_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 360, beam_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, beam_b, 0 );
setEffRotateKey( spep_3 + 360, beam_b, 0 );
setEffAlphaKey( spep_3 + 0, beam_b, 255 );
setEffAlphaKey( spep_3 + 360, beam_b, 255 );

-- ** エフェクト等 ** --
kakimozi2 = entryEffect( spep_3 + 0, 155276, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, kakimozi2, 0, 0, 0 );
setEffMoveKey( spep_3 + 360, kakimozi2, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, kakimozi2, 1.0, 1.0 );
setEffScaleKey( spep_3 + 360, kakimozi2, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, kakimozi2, 0 );
setEffRotateKey( spep_3 + 360, kakimozi2, 0 );
setEffAlphaKey( spep_3 + 0, kakimozi2, 255 );
setEffAlphaKey( spep_3 + 360, kakimozi2, 255 );

--集中線
shuchusen3 = entryEffectLife( spep_3-3 + 4,  906, 114, 0x100, -1, 0, 0, 0 );
setEffShake( spep_3-3 + 4, shuchusen3, 114, 20 );
setEffMoveKey( spep_3-3 + 4, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_3-3 + 118, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_3-3 + 4, shuchusen3, 1.21, 1.84 );
setEffScaleKey( spep_3-3 + 48, shuchusen3, 1.21, 1.84 );
setEffScaleKey( spep_3-3 + 50, shuchusen3, 1.11, 1.55 );
setEffScaleKey( spep_3-3 + 118, shuchusen3, 1.11, 1.55 );

setEffRotateKey( spep_3-3 + 4, shuchusen3, 180 );
setEffRotateKey( spep_3-3 + 118, shuchusen3, 180 );

setEffAlphaKey( spep_3-3 + 4, shuchusen3, 51 );
setEffAlphaKey( spep_3-3 + 6, shuchusen3, 102 );
setEffAlphaKey( spep_3-3 + 8, shuchusen3, 153 );
setEffAlphaKey( spep_3-3 + 10, shuchusen3, 204 );
setEffAlphaKey( spep_3-3 + 102, shuchusen3, 204 );
setEffAlphaKey( spep_3-3 + 104, shuchusen3, 179 );
setEffAlphaKey( spep_3-3 + 106, shuchusen3, 153 );
setEffAlphaKey( spep_3-3 + 108, shuchusen3, 128 );
setEffAlphaKey( spep_3-3 + 110, shuchusen3, 102 );
setEffAlphaKey( spep_3-3 + 112, shuchusen3, 77 );
setEffAlphaKey( spep_3-3 + 114, shuchusen3, 51 );
setEffAlphaKey( spep_3-3 + 116, shuchusen3, 26 );
setEffAlphaKey( spep_3-3 + 118, shuchusen3, 0 );

--集中線
shuchusen4 = entryEffectLife( spep_3-3 + 246,  906, 112, 0x100, -1, 0, 0, 0 );
setEffShake( spep_3-3 + 246, shuchusen4, 112, 20 );
setEffMoveKey( spep_3-3 + 246, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_3-3 + 358, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_3-3 + 246, shuchusen4, 1.11, 1.74 );
setEffScaleKey( spep_3-3 + 358, shuchusen4, 1.11, 1.74 );

setEffRotateKey( spep_3-3 + 246, shuchusen4, 0 );
setEffRotateKey( spep_3-3 + 358, shuchusen4, 0 );

setEffAlphaKey( spep_3-3 + 246, shuchusen4, 204 );
setEffAlphaKey( spep_3-3 + 358, shuchusen4, 204 );

--敵の動き
setDisp( spep_3-3 + 50, 1, 1 );
setDisp( spep_3-3 + 86, 1, 0 );
setDisp( spep_3-3 + 106, 1, 1 );
setDisp( spep_3-1 + 138, 1, 0 );
setDisp( spep_3-3 + 200, 1, 1 );
setDisp( spep_3 + 238, 1, 0 );

changeAnime( spep_3-3 + 50, 1, 105 );
changeAnime( spep_3-3 + 106, 1, 8 );


setMoveKey( spep_3-3 + 50, 1, -389.1, 278.6 , 0 );
setMoveKey( spep_3-3 + 52, 1, -316.2, 204.2 , 0 );
setMoveKey( spep_3-3 + 54, 1, -243.8, 130.5 , 0 );
setMoveKey( spep_3-3 + 56, 1, -172.1, 57.3 , 0 );
setMoveKey( spep_3-3 + 58, 1, -100.9, -15.2 , 0 );
setMoveKey( spep_3-3 + 60, 1, -30.4, -87.2 , 0 );
setMoveKey( spep_3-3 + 62, 1, -24.9, -91 , 0 );
setMoveKey( spep_3-3 + 64, 1, -19.5, -94.8 , 0 );
setMoveKey( spep_3-3 + 66, 1, -14.1, -98.5 , 0 );
setMoveKey( spep_3-3 + 68, 1, -8.8, -102.2 , 0 );
setMoveKey( spep_3-3 + 70, 1, -3.5, -105.9 , 0 );
setMoveKey( spep_3-3 + 72, 1, 1.8, -109.5 , 0 );
setMoveKey( spep_3-3 + 74, 1, 7, -113.1 , 0 );
setMoveKey( spep_3-3 + 76, 1, 12.2, -116.7 , 0 );
setMoveKey( spep_3-3 + 78, 1, 17.4, -120.2 , 0 );
setMoveKey( spep_3-3 + 80, 1, 22.4, -123.8 , 0 );
setMoveKey( spep_3-3 + 82, 1, 27.5, -127.4 , 0 );
setMoveKey( spep_3-3 + 84, 1, 32.7, -131 , 0 );
setMoveKey( spep_3-3 + 86, 1, 37.7, -134.6 , 0 );

setMoveKey( spep_3-3 + 106, 1, 39.3, -58.3 , 0 );
setMoveKey( spep_3-3 + 108, 1, 54.8, -16.7 , 0 );
setMoveKey( spep_3-3 + 110, 1, 71.2, 31.9 , 0 );
setMoveKey( spep_3-3 + 112, 1, 82.6, 68.1 , 0 );
setMoveKey( spep_3-3 + 114, 1, 97.3, 110 , 0 );
setMoveKey( spep_3-3 + 116, 1, 105, 143.6 , 0 );
setMoveKey( spep_3-3 + 118, 1, 119.9, 178.8 , 0 );
setMoveKey( spep_3-3 + 120, 1, 127.8, 207.6 , 0 );
setMoveKey( spep_3-3 + 122, 1, 138.9, 237.9 , 0 );
setMoveKey( spep_3-3 + 124, 1, 147.1, 263.8 , 0 );
setMoveKey( spep_3-3 + 126, 1, 154.3, 287.2 , 0 );
setMoveKey( spep_3-3 + 128, 1, 160.7, 308 , 0 );
setMoveKey( spep_3-3 + 130, 1, 165.9, 326.3 , 0 );
setMoveKey( spep_3-3 + 132, 1, 170.3, 341.9 , 0 );
setMoveKey( spep_3-3 + 134, 1, 173.8, 354.9 , 0 );
setMoveKey( spep_3-3 + 136, 1, 176.1, 365.3 , 0 );
setMoveKey( spep_3-1 + 138, 1, 177.5, 373 , 0 );

setMoveKey( spep_3-3 + 200, 1, -362.8, -477.2 , 0 );
setMoveKey( spep_3-3 + 202, 1, -251.8, -347.8 , 0 );
setMoveKey( spep_3-3 + 204, 1, -140.8, -218.3 , 0 );
setMoveKey( spep_3-3 + 206, 1, -29.7, -89 , 0 );
setMoveKey( spep_3-3 + 208, 1, -23.8, -82.1 , 0 );
setMoveKey( spep_3-3 + 210, 1, -18.2, -75.6 , 0 );
setMoveKey( spep_3-3 + 212, 1, -12.9, -69.4 , 0 );
setMoveKey( spep_3-3 + 214, 1, -8, -63.7 , 0 );
setMoveKey( spep_3-3 + 216, 1, -3.3, -58.3 , 0 );
setMoveKey( spep_3-3 + 218, 1, 1, -53.3 , 0 );
setMoveKey( spep_3-3 + 220, 1, 4.9, -48.7 , 0 );
setMoveKey( spep_3-3 + 222, 1, 8.6, -44.4 , 0 );
setMoveKey( spep_3-3 + 224, 1, 11.9, -40.6 , 0 );
setMoveKey( spep_3-3 + 226, 1, 14.9, -37.1 , 0 );
setMoveKey( spep_3-3 + 228, 1, 17.5, -34 , 0 );
setMoveKey( spep_3-3 + 230, 1, 19.8, -31.3 , 0 );
setMoveKey( spep_3-3 + 232, 1, 21.9, -28.9 , 0 );
setMoveKey( spep_3-3 + 234, 1, 23.5, -27 , 0 );
setMoveKey( spep_3-3 + 236, 1, 24.9, -25.4 , 0 );
setMoveKey( spep_3 + 238, 1, 25.9, -24.2 , 0 );

setScaleKey( spep_3-3 + 50, 1, 4.06, 4.06 );
setScaleKey( spep_3-3 + 52, 1, 3.41, 3.41 );
setScaleKey( spep_3-3 + 54, 1, 2.76, 2.76 );
setScaleKey( spep_3-3 + 56, 1, 2.12, 2.12 );
setScaleKey( spep_3-3 + 58, 1, 1.49, 1.49 );
setScaleKey( spep_3-3 + 60, 1, 0.86, 0.86 );
setScaleKey( spep_3-3 + 62, 1, 0.82, 0.82 );
setScaleKey( spep_3-3 + 64, 1, 0.78, 0.78 );
setScaleKey( spep_3-3 + 66, 1, 0.75, 0.75 );
setScaleKey( spep_3-3 + 68, 1, 0.71, 0.71 );
setScaleKey( spep_3-3 + 70, 1, 0.67, 0.67 );
setScaleKey( spep_3-3 + 72, 1, 0.64, 0.64 );
setScaleKey( spep_3-3 + 74, 1, 0.6, 0.6 );
setScaleKey( spep_3-3 + 76, 1, 0.57, 0.57 );
setScaleKey( spep_3-3 + 78, 1, 0.53, 0.53 );
setScaleKey( spep_3-3 + 80, 1, 0.5, 0.5 );
setScaleKey( spep_3-3 + 82, 1, 0.47, 0.47 );
setScaleKey( spep_3-3 + 84, 1, 0.43, 0.43 );
setScaleKey( spep_3-3 + 86, 1, 0.4, 0.4 );

setScaleKey( spep_3-3 + 106, 1, 0.73, 0.73 );
setScaleKey( spep_3-3 + 108, 1, 0.65, 0.65 );
setScaleKey( spep_3-3 + 110, 1, 0.59, 0.59 );
setScaleKey( spep_3-3 + 112, 1, 0.53, 0.53 );
setScaleKey( spep_3-3 + 114, 1, 0.47, 0.47 );
setScaleKey( spep_3-3 + 116, 1, 0.42, 0.42 );
setScaleKey( spep_3-3 + 118, 1, 0.37, 0.37 );
setScaleKey( spep_3-3 + 120, 1, 0.32, 0.32 );
setScaleKey( spep_3-3 + 122, 1, 0.27, 0.27 );
setScaleKey( spep_3-3 + 124, 1, 0.24, 0.24 );
setScaleKey( spep_3-3 + 126, 1, 0.2, 0.2 );
setScaleKey( spep_3-3 + 128, 1, 0.17, 0.17 );
setScaleKey( spep_3-3 + 130, 1, 0.14, 0.14 );
setScaleKey( spep_3-3 + 132, 1, 0.11, 0.11 );
setScaleKey( spep_3-3 + 134, 1, 0.09, 0.09 );
setScaleKey( spep_3-3 + 136, 1, 0.08, 0.08 );
setScaleKey( spep_3-1 + 138, 1, 0.06, 0.06 );

setScaleKey( spep_3-3 + 200, 1, 3.08, 3.08 );
setScaleKey( spep_3-3 + 202, 1, 2.32, 2.32 );
setScaleKey( spep_3-3 + 204, 1, 1.56, 1.56 );
setScaleKey( spep_3-3 + 206, 1, 0.8, 0.8 );
setScaleKey( spep_3-3 + 208, 1, 0.76, 0.76 );
setScaleKey( spep_3-3 + 210, 1, 0.73, 0.73 );
setScaleKey( spep_3-3 + 212, 1, 0.69, 0.69 );
setScaleKey( spep_3-3 + 214, 1, 0.66, 0.66 );
setScaleKey( spep_3-3 + 216, 1, 0.63, 0.63 );
setScaleKey( spep_3-3 + 218, 1, 0.6, 0.6 );
setScaleKey( spep_3-3 + 220, 1, 0.57, 0.57 );
setScaleKey( spep_3-3 + 222, 1, 0.55, 0.55 );
setScaleKey( spep_3-3 + 224, 1, 0.52, 0.52 );
setScaleKey( spep_3-3 + 226, 1, 0.5, 0.5 );
setScaleKey( spep_3-3 + 228, 1, 0.48, 0.48 );
setScaleKey( spep_3-3 + 230, 1, 0.47, 0.47 );
setScaleKey( spep_3-3 + 232, 1, 0.45, 0.45 );
setScaleKey( spep_3-3 + 234, 1, 0.44, 0.44 );
setScaleKey( spep_3-3 + 236, 1, 0.43, 0.43 );
setScaleKey( spep_3 + 238, 1, 0.43, 0.43 );

setRotateKey( spep_3-3 + 50, 1, 115.3 );
setRotateKey( spep_3-3 + 56, 1, 115.3 );
setRotateKey( spep_3-3 + 58, 1, 115.2 );
setRotateKey( spep_3-3 + 68, 1, 115.2 );
setRotateKey( spep_3-3 + 70, 1, 115.3 );
setRotateKey( spep_3-3 + 86, 1, 115.3 );

setRotateKey( spep_3-3 + 106, 1, 120 );
setRotateKey( spep_3 + 238, 1, 120 );

--SE
setSeVolume( spep_3 + 55, 1212, 0 );
setSeVolume( spep_3 + 56, 1212, 3.11 );
setSeVolume( spep_3 + 57, 1212, 6.22 );
setSeVolume( spep_3 + 58, 1212, 9.33 );
setSeVolume( spep_3 + 59, 1212, 12.44 );
setSeVolume( spep_3 + 60, 1212, 15.56 );
setSeVolume( spep_3 + 61, 1212, 18.67 );
setSeVolume( spep_3 + 62, 1212, 21.78 );
setSeVolume( spep_3 + 63, 1212, 24.89 );
setSeVolume( spep_3 + 64, 1212, 28 );
setSeVolume( spep_3 + 65, 1212, 31.11 );
setSeVolume( spep_3 + 66, 1212, 34.22 );
setSeVolume( spep_3 + 67, 1212, 37.33 );
setSeVolume( spep_3 + 68, 1212, 40.44 );
setSeVolume( spep_3 + 69, 1212, 43.56 );
setSeVolume( spep_3 + 70, 1212, 46.67 );
setSeVolume( spep_3 + 71, 1212, 49.78 );
setSeVolume( spep_3 + 72, 1212, 52.89 );
setSeVolume( spep_3 + 73, 1212, 56 );
playSe( spep_3 + 0, 49 );
playSe( spep_3 + 13, 1003 );
setSeVolume( spep_3 + 13, 1003, 63 );
playSe( spep_3 + 21, 1027 );
playSe( spep_3 + 21, 1021 );
playSe( spep_3 + 85, 1023 );
setSeVolume( spep_3 + 85, 1023, 89 );
playSe( spep_3 + 85, 1008 );
se_1183 = playSe( spep_3 + 97, 1183 );
playSe( spep_3 + 99, 1182 );
setSeVolume( spep_3 + 99, 1182, 0 );
setSeVolume( spep_3 + 108, 1182, 0 );
setSeVolume( spep_3 + 109, 1182, 8.33 );
setSeVolume( spep_3 + 110, 1182, 16.67 );
setSeVolume( spep_3 + 111, 1182, 25 );
setSeVolume( spep_3 + 112, 1182, 33.33 );
setSeVolume( spep_3 + 113, 1182, 41.67 );
setSeVolume( spep_3 + 114, 1182, 50 );
setSeVolume( spep_3 + 115, 1182, 58.33 );
setSeVolume( spep_3 + 116, 1182, 66.67 );
setSeVolume( spep_3 + 117, 1182, 75 );
setSeVolume( spep_3 + 118, 1182, 83.33 );
setSeVolume( spep_3 + 119, 1182, 91.67 );
setSeVolume( spep_3 + 120, 1182, 100 );
se_1191 = playSe( spep_3 + 136, 1191 );
setSeVolume( spep_3 + 136, 1191, 0 );
setSeVolume( spep_3 + 146, 1191, 33 );
setSeVolume( spep_3 + 147, 1191, 66 );
setSeVolume( spep_3 + 148, 1191, 100 );
se_0049 = playSe( spep_3 + 146, 49 );
playSe( spep_3 + 169, 1027 );
setSeVolume( spep_3 + 169, 1027, 79 );
se_1146 = playSe( spep_3 + 170, 1146 );
setSeVolume( spep_3 + 170, 1146, 45 );
se_1177 = playSe( spep_3 + 170, 1177 );
setSeVolume( spep_3 + 170, 1177, 79 );
se_1215 = playSe( spep_3 + 172, 1215 );
playSe( spep_3 + 243, 1024 );
setSeVolume( spep_3 + 243, 1024, 89 );
playSe( spep_3 + 243, 1159 );
setSeVolume( spep_3 + 243, 1159, 89 );

stopSe( spep_3 + 96, se_1212, 0 );
stopSe( spep_3 + 143, se_1183, 27 );
stopSe( spep_3 + 174, se_1191, 16 );
stopSe( spep_3 + 170, se_0049, 0 );
stopSe( spep_3 + 261, se_1146, 0 );
stopSe( spep_3 + 261, se_1177, 0 );
stopSe( spep_3 + 249, se_1215, 0 );

--終わり
dealDamage( spep_3+240  );
endPhase( spep_3 + 350 );

else
------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 手前突進
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
tossin = entryEffect( spep_0 + 0, SP_01x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tossin, 0, 0, 0 );
setEffMoveKey( spep_0 + 70, tossin, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tossin, 1.0, 1.0 );
setEffScaleKey( spep_0 + 70, tossin, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tossin, 0 );
setEffRotateKey( spep_0 + 70, tossin, 0 );
setEffAlphaKey( spep_0 + 0, tossin, 255 );
setEffAlphaKey( spep_0 + 70, tossin, 255 );
setEffAlphaKey( spep_0 + 71, tossin, 0 );
setEffAlphaKey( spep_0 + 72, tossin, 0 );

-- ** エフェクト等 ** --
kakimozi1 = entryEffect( spep_0 + 0, 155277, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, kakimozi1, 0, 0, 0 );
setEffMoveKey( spep_0 + 440, kakimozi1, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, kakimozi1, -1.0, 1.0 );
setEffScaleKey( spep_0 + 440, kakimozi1, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, kakimozi1, 0 );
setEffRotateKey( spep_0 + 440, kakimozi1, 0 );
setEffAlphaKey( spep_0 + 0, kakimozi1, 255 );
setEffAlphaKey( spep_0 + 440, kakimozi1, 255 );

-- ** くろ背景 ** --
entryFadeBg(   spep_0, 0, 72, 0,  0, 0, 0, 255 ); --くろ 背景

--SE
SE0=playSe( spep_0 + 0, 9 );
SE1=playSe( spep_0 + 0, 1182 );
SE2=playSe( spep_0 + 27, 1072 );
setSeVolume( spep_0 + 27, 1072, 126 );
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0+50 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE0, 0 );
    stopSe( SP_dodge - 12, SE1, 0 );
    stopSe( SP_dodge - 12, SE2, 0 );
    pauseAll( SP_dodge, 67);

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

--次の準備
spep_1=spep_0 + 70;
------------------------------------------------------
-- 頭突き〜構えまで
------------------------------------------------------
-- ** エフェクト等 ** --
zutuki_f = entryEffect( spep_1 + 0, SP_02x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, zutuki_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 370, zutuki_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, zutuki_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 370, zutuki_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, zutuki_f, 0 );
setEffRotateKey( spep_1 + 370, zutuki_f, 0 );
setEffAlphaKey( spep_1 + 0, zutuki_f, 255 );
setEffAlphaKey( spep_1 + 370, zutuki_f, 255 );

-- ** エフェクト等 ** --
zutuki_b = entryEffect( spep_1 + 0, SP_03x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, zutuki_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 370, zutuki_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, zutuki_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 370, zutuki_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, zutuki_b, 0 );
setEffRotateKey( spep_1 + 370, zutuki_b, 0 );
setEffAlphaKey( spep_1 + 0, zutuki_b, 255 );
setEffAlphaKey( spep_1 + 370, zutuki_b, 255 );

--集中線
shuchusen1 = entryEffectLife( spep_1-3 + 190,  906, 24, 0x100, -1, 0, 0, 0 );
setEffShake( spep_1-3 + 190, shuchusen1, 24, 20 );
setEffMoveKey( spep_1-3 + 190, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_1-3 + 214, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_1-3 + 190, shuchusen1, 1.14, 1.43 );
setEffScaleKey( spep_1-3 + 214, shuchusen1, 1.14, 1.43 );

setEffRotateKey( spep_1-3 + 190, shuchusen1, 0.3 );
setEffRotateKey( spep_1-3 + 214, shuchusen1, 0.3 );

setEffAlphaKey( spep_1-3 + 190, shuchusen1, 191 );
setEffAlphaKey( spep_1-3 + 204, shuchusen1, 191 );
setEffAlphaKey( spep_1-3 + 206, shuchusen1, 153 );
setEffAlphaKey( spep_1-3 + 208, shuchusen1, 115 );
setEffAlphaKey( spep_1-3 + 210, shuchusen1, 77 );
setEffAlphaKey( spep_1-3 + 212, shuchusen1, 38 );
setEffAlphaKey( spep_1-3 + 214, shuchusen1, 0 );

--集中線
shuchusen2 = entryEffectLife( spep_1-3 + 250,  906, 118, 0x100, -1, 0, 0, 0 );
setEffShake( spep_1-3 + 250, shuchusen2, 118, 20 );
setEffMoveKey( spep_1-3 + 250, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_1-3 + 368, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_1-3 + 250, shuchusen2, 1.21, 1.43 );
setEffScaleKey( spep_1-3 + 368, shuchusen2, 1.21, 1.43 );

setEffRotateKey( spep_1-3 + 250, shuchusen2, 180.3 );
setEffRotateKey( spep_1-3 + 368, shuchusen2, 180.3 );

setEffAlphaKey( spep_1-3 + 250, shuchusen2, 0 );
setEffAlphaKey( spep_1-3 + 252, shuchusen2, 48 );
setEffAlphaKey( spep_1-3 + 254, shuchusen2, 96 );
setEffAlphaKey( spep_1-3 + 256, shuchusen2, 143 );
setEffAlphaKey( spep_1-3 + 258, shuchusen2, 191 );
setEffAlphaKey( spep_1-3 + 368, shuchusen2, 191 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_1+260  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_1+260  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_1 +272, 190006, 72, 0x100, -1, 0, 80, 510);-- ゴゴゴゴ

setEffMoveKey(  spep_1 +272,  ctgogo,  80,  510);
setEffMoveKey(  spep_1 +344,  ctgogo,  80,  510);

setEffAlphaKey( spep_1 +272, ctgogo, 0 );
setEffAlphaKey( spep_1 + 273, ctgogo, 255 );
setEffAlphaKey( spep_1 + 274, ctgogo, 255 );
setEffAlphaKey( spep_1 + 388, ctgogo, 255 );
setEffAlphaKey( spep_1 + 340, ctgogo, 191 );
setEffAlphaKey( spep_1 + 342, ctgogo, 112 );
setEffAlphaKey( spep_1 + 344, ctgogo, 64 );

setEffRotateKey(  spep_1 +272,  ctgogo,  0);
setEffRotateKey(  spep_1 +344,  ctgogo,  0);

setEffScaleKey(  spep_1 +272,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_1 +334,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_1 +344,  ctgogo, -1.07, 1.07 );

--敵の動き
setDisp( spep_1-3 + 0, 1, 1 );
setDisp( spep_1 -3 + 34, 1, 0 );
setDisp( spep_1 -3 + 80, 1, 1 );
setDisp( spep_1 -3 + 122, 1, 0 );
setDisp( spep_1 -3 + 138, 1, 1 );
setDisp( spep_1 -3 + 210, 1, 0 );

changeAnime( spep_1-3 + 0, 1, 100 );
changeAnime( spep_1-3 + 12, 1, 108 );
changeAnime( spep_1-3 + 20, 1, 106 );
changeAnime( spep_1-3 + 100, 1, 108 );
changeAnime( spep_1-3 + 166, 1, 106 );
changeAnime( spep_1-3 + 188, 1, 107 );


setMoveKey( spep_1-3 + 0, 1, -15.6, -9.9 , 0 );
setMoveKey( spep_1-3 + 11, 1, -15.6, -9.9 , 0 );

setMoveKey( spep_1-3 + 12, 1, 34.2, 27.2 , 0 );
setMoveKey( spep_1-3 + 14, 1, 45.5, 57 , 0 );
setMoveKey( spep_1-3 + 16, 1, 46.8, 68.8 , 0 );
setMoveKey( spep_1-3 + 18, 1, 64.1, 84.7 , 0 );
setMoveKey( spep_1-3 + 19, 1, 64.1, 84.7 , 0 );

setMoveKey( spep_1-3 + 20, 1, 50.1, 113.7 , 0 );
setMoveKey( spep_1-3 + 22, 1, 105.7, 188.4 , 0 );
setMoveKey( spep_1-3 + 24, 1, 171.2, 249 , 0 );
setMoveKey( spep_1-3 + 26, 1, 308.1, 339.3 , 0 );
setMoveKey( spep_1-3 + 28, 1, 434.9, 421.5 , 0 );
setMoveKey( spep_1-3 + 30, 1, 573.8, 507.8 , 0 );
setMoveKey( spep_1-3 + 32, 1, 706.7, 592.1 , 0 );
setMoveKey( spep_1-3 + 34, 1, 839.6, 676.4 , 0 );

setMoveKey( spep_1-3 + 80, 1, -689.7, 693.4 , 0 );
setMoveKey( spep_1-3 + 82, 1, -671.5, 676.5 , 0 );
setMoveKey( spep_1-3 + 84, 1, -639.1, 646.7 , 0 );
setMoveKey( spep_1-3 + 86, 1, -592.6, 603.7 , 0 );
setMoveKey( spep_1-3 + 88, 1, -532, 547.8 , 0 );
setMoveKey( spep_1-3 + 90, 1, -457.3, 478.8 , 0 );
setMoveKey( spep_1-3 + 92, 1, -368.5, 396.8 , 0 );
setMoveKey( spep_1-3 + 94, 1, -265.6, 301.8 , 0 );
setMoveKey( spep_1-3 + 96, 1, -148.5, 193.7 , 0 );
setMoveKey( spep_1-3 + 98, 1, -21.3, 44.6 , 0 );
setMoveKey( spep_1-3 + 99, 1, -21.3, 44.6 , 0 );

setMoveKey( spep_1-3 + 100, 1, 13.6, -3.7 , 0 );
setMoveKey( spep_1-3 + 102, 1, 5.6, -22.6 , 0 );
setMoveKey( spep_1-3 + 104, 1, 13.6, -9.4 , 0 );
setMoveKey( spep_1-3 + 106, 1, -2.4, -16.3 , 0 );
setMoveKey( spep_1-3 + 108, 1, 13.6, -15.2 , 0 );
setMoveKey( spep_1-3 + 110, 1, 9.6, -38 , 0 );
setMoveKey( spep_1-3 + 112, 1, 13.6, -20.9 , 0 );
setMoveKey( spep_1-3 + 114, 1, 5.6, -27.7 , 0 );
setMoveKey( spep_1-3 + 116, 1, 13.6, -284.5 , 0 );
setMoveKey( spep_1-3 + 118, 1, 13.6, -545.3 , 0 );
setMoveKey( spep_1-3 + 120, 1, 13.6, -806 , 0 );
setMoveKey( spep_1-3 + 122, 1, 13.6, -1066.8 , 0 );

setMoveKey( spep_1-3 + 138, 1, 5.6, 413.3 , 0 );
setMoveKey( spep_1-3 + 140, 1, 7.2, 366.8 , 0 );
setMoveKey( spep_1-3 + 142, 1, 8.9, 320.3 , 0 );
setMoveKey( spep_1-3 + 144, 1, 10.5, 273.8 , 0 );
setMoveKey( spep_1-3 + 146, 1, 12.1, 227.3 , 0 );
setMoveKey( spep_1-3 + 148, 1, 13.7, 180.8 , 0 );
setMoveKey( spep_1-3 + 150, 1, 15.3, 134.3 , 0 );
setMoveKey( spep_1-3 + 152, 1, 16.9, 87.8 , 0 );
setMoveKey( spep_1-3 + 154, 1, 17.6, 19.2 , 0 );
setMoveKey( spep_1-3 + 156, 1, 18.3, -49.4 , 0 );
setMoveKey( spep_1-3 + 158, 1, 18.9, -118 , 0 );
setMoveKey( spep_1-3 + 160, 1, 19.6, -186.6 , 0 );
setMoveKey( spep_1-3 + 162, 1, 20.2, -255.3 , 0 );
setMoveKey( spep_1-3 + 164, 1, 20.9, -323.9 , 0 );
setMoveKey( spep_1-3 + 165, 1, 20.9, -323.9 , 0 );

setMoveKey( spep_1-3 + 166, 1, 19.3, -188.2 , 0 );
setMoveKey( spep_1-3 + 168, 1, 24.5, -157.7 , 0 );
setMoveKey( spep_1-3 + 170, 1, 29.7, -127.3 , 0 );
setMoveKey( spep_1-3 + 172, 1, 34.9, -96.8 , 0 );
setMoveKey( spep_1-3 + 174, 1, 35.3, -89.6 , 0 );
setMoveKey( spep_1-3 + 176, 1, 35.6, -82.3 , 0 );
setMoveKey( spep_1-3 + 178, 1, 35.9, -75.1 , 0 );
setMoveKey( spep_1-3 + 180, 1, 36.3, -67.8 , 0 );
setMoveKey( spep_1-3 + 182, 1, 36.6, -60.6 , 0 );
setMoveKey( spep_1-3 + 184, 1, 37, -53.4 , 0 );
setMoveKey( spep_1-3 + 186, 1, 37.3, -46.1 , 0 );
setMoveKey( spep_1-3 + 187, 1, 37.3, -46.1 , 0 );

setMoveKey( spep_1-3 + 188, 1, 41.7, -99.3 , 0 );
setMoveKey( spep_1-3 + 190, 1, 43.5, -89.5 , 0 );
setMoveKey( spep_1-3 + 192, 1, 37, -92.8 , 0 );
setMoveKey( spep_1-3 + 194, 1, 42.2, -91.1 , 0 );
setMoveKey( spep_1-3 + 196, 1, 42.2, -105.3 , 0 );
setMoveKey( spep_1-3 + 198, 1, 46.1, -103.3 , 0 );
setMoveKey( spep_1-3 + 200, 1, 150.9, -285 , 0 );
setMoveKey( spep_1-3 + 202, 1, 266.8, -460.9 , 0 );
setMoveKey( spep_1-3 + 204, 1, 373.6, -643 , 0 );
setMoveKey( spep_1-3 + 206, 1, 483.4, -811.5 , 0 );
setMoveKey( spep_1-3 + 208, 1, 588.2, -986.1 , 0 );
setMoveKey( spep_1-3 + 210, 1, 696, -1155.1 , 0 );


setScaleKey( spep_1-3 + 0, 1, 1.2, 1.2 );
setScaleKey( spep_1-3 + 11, 1, 1.2, 1.2 );

setScaleKey( spep_1-3 + 12, 1, 1.25, 1.25 );
setScaleKey( spep_1-3 + 19, 1, 1.25, 1.25 );

setScaleKey( spep_1-3 + 20, 1, 1.15, 1.15 );
setScaleKey( spep_1-3 + 24, 1, 1.15, 1.15 );
setScaleKey( spep_1-3 + 26, 1, 1.05, 1.05 );
setScaleKey( spep_1-3 + 28, 1, 0.96, 0.96 );
setScaleKey( spep_1-3 + 30, 1, 0.87, 0.87 );
setScaleKey( spep_1-3 + 32, 1, 0.77, 0.77 );
setScaleKey( spep_1-3 + 34, 1, 0.68, 0.68 );

setScaleKey( spep_1-3 + 80, 1, 2.21, 2.21 );
setScaleKey( spep_1-3 + 82, 1, 2.2, 2.2 );
setScaleKey( spep_1-3 + 84, 1, 2.17, 2.17 );
setScaleKey( spep_1-3 + 86, 1, 2.12, 2.12 );
setScaleKey( spep_1-3 + 88, 1, 2.07, 2.07 );
setScaleKey( spep_1-3 + 90, 1, 2, 2 );
setScaleKey( spep_1-3 + 92, 1, 1.92, 1.92 );
setScaleKey( spep_1-3 + 94, 1, 1.82, 1.82 );
setScaleKey( spep_1-3 + 96, 1, 1.71, 1.71 );
setScaleKey( spep_1-3 + 98, 1, 1.59, 1.59 );
setScaleKey( spep_1-3 + 99, 1, 1.59, 1.59 );

setScaleKey( spep_1-3 + 100, 1, 1.47, 1.47 );
setScaleKey( spep_1-3 + 122, 1, 1.47, 1.47 );

setScaleKey( spep_1-3 + 138, 1, 0.19, 0.19 );
setScaleKey( spep_1-3 + 140, 1, 0.28, 0.28 );
setScaleKey( spep_1-3 + 142, 1, 0.37, 0.37 );
setScaleKey( spep_1-3 + 144, 1, 0.46, 0.46 );
setScaleKey( spep_1-3 + 146, 1, 0.55, 0.55 );
setScaleKey( spep_1-3 + 148, 1, 0.64, 0.64 );
setScaleKey( spep_1-3 + 150, 1, 0.74, 0.74 );
setScaleKey( spep_1-3 + 152, 1, 0.83, 0.83 );
setScaleKey( spep_1-3 + 154, 1, 0.89, 0.89 );
setScaleKey( spep_1-3 + 156, 1, 0.96, 0.96 );
setScaleKey( spep_1-3 + 158, 1, 1.03, 1.03 );
setScaleKey( spep_1-3 + 160, 1, 1.1, 1.1 );
setScaleKey( spep_1-3 + 162, 1, 1.17, 1.17 );
setScaleKey( spep_1-3 + 164, 1, 1.24, 1.24 );
setScaleKey( spep_1-3 + 165, 1, 1.24, 1.24 );

setScaleKey( spep_1-3 + 166, 1, 1.22, 1.22 );
setScaleKey( spep_1-3 + 187, 1, 1.22, 1.22 );

setScaleKey( spep_1-3 + 188, 1, 0.7, 0.7 );
setScaleKey( spep_1-3 + 192, 1, 0.7, 0.7 );
setScaleKey( spep_1-3 + 194, 1, 0.68, 0.68 );
setScaleKey( spep_1-3 + 196, 1, 0.72, 0.72 );
setScaleKey( spep_1-3 + 198, 1, 0.75, 0.75 );
setScaleKey( spep_1-3 + 200, 1, 1.34, 1.34 );
setScaleKey( spep_1-3 + 202, 1, 1.92, 1.92 );
setScaleKey( spep_1-3 + 204, 1, 2.5, 2.5 );
setScaleKey( spep_1-3 + 206, 1, 3.07, 3.07 );
setScaleKey( spep_1-3 + 208, 1, 3.63, 3.63 );
setScaleKey( spep_1-3 + 210, 1, 4.19, 4.19 );

setRotateKey( spep_1-3 + 0, 1, -7.7 );
setRotateKey( spep_1-3 + 11, 1, -7.7 );

setRotateKey( spep_1-3 + 12, 1, -20.5 );
setRotateKey( spep_1-3 + 18, 1, -20.5 );
setRotateKey( spep_1-3 + 19, 1, -20.5 );

setRotateKey( spep_1-3 + 20, 1, -40.8 );
setRotateKey( spep_1-3 + 22, 1, -27.4 );
setRotateKey( spep_1-3 + 24, 1, -15.1 );
setRotateKey( spep_1-3 + 26, 1, -5.9 );
setRotateKey( spep_1-3 + 28, 1, 3.3 );
setRotateKey( spep_1-3 + 30, 1, 12.5 );
setRotateKey( spep_1-3 + 32, 1, 21.7 );
setRotateKey( spep_1-3 + 34, 1, 30.8 );

setRotateKey( spep_1-3 + 80, 1, 63.6 );
setRotateKey( spep_1-3 + 82, 1, 63.8 );
setRotateKey( spep_1-3 + 84, 1, 64.2 );
setRotateKey( spep_1-3 + 86, 1, 64.7 );
setRotateKey( spep_1-3 + 88, 1, 65.4 );
setRotateKey( spep_1-3 + 90, 1, 66.3 );
setRotateKey( spep_1-3 + 92, 1, 67.4 );
setRotateKey( spep_1-3 + 94, 1, 68.6 );
setRotateKey( spep_1-3 + 96, 1, 69.9 );
setRotateKey( spep_1-3 + 98, 1, 71.4 );
setRotateKey( spep_1-3 + 99, 1, 71.4 );

setRotateKey( spep_1-3 + 100, 1, 75 );
setRotateKey( spep_1-3 + 122, 1, 75 );

setRotateKey( spep_1-3 + 138, 1, 75 );
setRotateKey( spep_1-3 + 142, 1, 75 );
setRotateKey( spep_1-3 + 144, 1, 75.1 );
setRotateKey( spep_1-3 + 150, 1, 75.1 );
setRotateKey( spep_1-3 + 152, 1, 75.2 );
setRotateKey( spep_1-3 + 165, 1, 75.2 );

setRotateKey( spep_1-3 + 166, 1, 3.9 );
setRotateKey( spep_1-3 + 168, 1, 5.5 );
setRotateKey( spep_1-3 + 170, 1, 7 );
setRotateKey( spep_1-3 + 172, 1, 8.5 );
setRotateKey( spep_1-3 + 174, 1, 9.2 );
setRotateKey( spep_1-3 + 176, 1, 9.8 );
setRotateKey( spep_1-3 + 178, 1, 10.4 );
setRotateKey( spep_1-3 + 180, 1, 11.1 );
setRotateKey( spep_1-3 + 182, 1, 11.7 );
setRotateKey( spep_1-3 + 184, 1, 12.3 );
setRotateKey( spep_1-3 + 186, 1, 13 );
setRotateKey( spep_1-3 + 187, 1, 13 );

setRotateKey( spep_1-3 + 188, 1, -1.7 );
setRotateKey( spep_1-3 + 198, 1, -1.7 );
setRotateKey( spep_1-3 + 200, 1, -4.3 );
setRotateKey( spep_1-3 + 202, 1, -6.9 );
setRotateKey( spep_1-3 + 204, 1, -9.4 );
setRotateKey( spep_1-3 + 206, 1, -12 );
setRotateKey( spep_1-3 + 208, 1, -14.6 );
setRotateKey( spep_1-3 + 210, 1, -17.2 );

--SE
playSe( spep_1 + 272, 1018 );
playSe( spep_1 + 5, 1004 );
playSe( spep_1 + 9, 1003 );
setSeVolume( spep_1 + 9, 1003, 89 );
playSe( spep_1 + 10, 1010 );
playSe( spep_1 + 16, 1110 );
se_1109 = playSe( spep_1 + 60, 1109 );
se_0044 = playSe( spep_1 + 65, 44 );
playSe( spep_1 + 102, 1189 );
playSe( spep_1 + 104, 1123 );
playSe( spep_1 + 126, 43 );
playSe( spep_1 + 164, 1007 );
playSe( spep_1 + 164, 1008 );
setSeVolume( spep_1 + 164, 1008, 71 );
playSe( spep_1 + 168, 1012 );
playSe( spep_1 + 171, 43 );
playSe( spep_1 + 182, 1004 );
setSeVolume( spep_1 + 182, 1004, 89 );
playSe( spep_1 + 188, 1120 );
setSeVolume( spep_1 + 188, 1120, 89 );
playSe( spep_1 + 188, 1001 );
setSeVolume( spep_1 + 188, 1001, 71 );
playSe( spep_1 + 219, 1109 );
playSe( spep_1 + 262, 1037 );
setSeVolume( spep_1 + 262, 1037, 63 );
se_1191 = playSe( spep_1 + 262, 1191 );
setSeVolume( spep_1 + 262, 1191, 178 );
playSe( spep_1 + 262, 49 );
playSe( spep_1 + 286, 49 );
playSe( spep_1 + 314, 49 );
playSe( spep_1 + 336, 49 );

stopSe( spep_1 + 70, se_1109, 8 );
stopSe( spep_1 + 96, se_0044, 15 );
stopSe( spep_1 + 324, se_1191, 65 );

-- ** くろ背景 ** --
entryFadeBg(   spep_1, 0, 372, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_1 + 362, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_2=spep_1 + 370;
--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_2 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_2 + 0, 906, 86, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen, 86, 20 );

setEffMoveKey( spep_2 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_2 + 86, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_2 + 86, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_2 + 0, shuchusen, 0 );
setEffRotateKey( spep_2 + 86, shuchusen, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen, 255 );
setEffAlphaKey( spep_2 + 86, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_2 + 0, SE_05 );
se_1212 = playSe( spep_2 + 77, 1212 );
setSeVolume( spep_2 + 77, 1212, 0 );

--白フェード
entryFade( spep_2 + 78, 4, 12, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 92;

------------------------------------------------------
-- 発射〜爆発まで・手前
------------------------------------------------------
-- ** エフェクト等 ** --
beam_f = entryEffect( spep_3 + 0, SP_04x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, beam_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 360, beam_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, beam_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 360, beam_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, beam_f, 0 );
setEffRotateKey( spep_3 + 360, beam_f, 0 );
setEffAlphaKey( spep_3 + 0, beam_f, 255 );
setEffAlphaKey( spep_3 + 360, beam_f, 255 );

-- ** エフェクト等 ** --
beam_b = entryEffect( spep_3 + 0, SP_05x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, beam_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 360, beam_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, beam_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 360, beam_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, beam_b, 0 );
setEffRotateKey( spep_3 + 360, beam_b, 0 );
setEffAlphaKey( spep_3 + 0, beam_b, 255 );
setEffAlphaKey( spep_3 + 360, beam_b, 255 );

-- ** エフェクト等 ** --
kakimozi2 = entryEffect( spep_3 + 0, 155278, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, kakimozi2, 0, 0, 0 );
setEffMoveKey( spep_3 + 360, kakimozi2, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, kakimozi2, -1.0, 1.0 );
setEffScaleKey( spep_3 + 360, kakimozi2, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, kakimozi2, 0 );
setEffRotateKey( spep_3 + 360, kakimozi2, 0 );
setEffAlphaKey( spep_3 + 0, kakimozi2, 255 );
setEffAlphaKey( spep_3 + 360, kakimozi2, 255 );

--集中線
shuchusen3 = entryEffectLife( spep_3-3 + 4,  906, 114, 0x100, -1, 0, 0, 0 );
setEffShake( spep_3-3 + 4, shuchusen3, 114, 20 );
setEffMoveKey( spep_3-3 + 4, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_3-3 + 118, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_3-3 + 4, shuchusen3, 1.21, 1.84 );
setEffScaleKey( spep_3-3 + 48, shuchusen3, 1.21, 1.84 );
setEffScaleKey( spep_3-3 + 50, shuchusen3, 1.11, 1.55 );
setEffScaleKey( spep_3-3 + 118, shuchusen3, 1.11, 1.55 );

setEffRotateKey( spep_3-3 + 4, shuchusen3, 180 );
setEffRotateKey( spep_3-3 + 118, shuchusen3, 180 );

setEffAlphaKey( spep_3-3 + 4, shuchusen3, 51 );
setEffAlphaKey( spep_3-3 + 6, shuchusen3, 102 );
setEffAlphaKey( spep_3-3 + 8, shuchusen3, 153 );
setEffAlphaKey( spep_3-3 + 10, shuchusen3, 204 );
setEffAlphaKey( spep_3-3 + 102, shuchusen3, 204 );
setEffAlphaKey( spep_3-3 + 104, shuchusen3, 179 );
setEffAlphaKey( spep_3-3 + 106, shuchusen3, 153 );
setEffAlphaKey( spep_3-3 + 108, shuchusen3, 128 );
setEffAlphaKey( spep_3-3 + 110, shuchusen3, 102 );
setEffAlphaKey( spep_3-3 + 112, shuchusen3, 77 );
setEffAlphaKey( spep_3-3 + 114, shuchusen3, 51 );
setEffAlphaKey( spep_3-3 + 116, shuchusen3, 26 );
setEffAlphaKey( spep_3-3 + 118, shuchusen3, 0 );

--集中線
shuchusen4 = entryEffectLife( spep_3-3 + 246,  906, 112, 0x100, -1, 0, 0, 0 );
setEffShake( spep_3-3 + 246, shuchusen4, 112, 20 );
setEffMoveKey( spep_3-3 + 246, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_3-3 + 358, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_3-3 + 246, shuchusen4, 1.11, 1.74 );
setEffScaleKey( spep_3-3 + 358, shuchusen4, 1.11, 1.74 );

setEffRotateKey( spep_3-3 + 246, shuchusen4, 0 );
setEffRotateKey( spep_3-3 + 358, shuchusen4, 0 );

setEffAlphaKey( spep_3-3 + 246, shuchusen4, 204 );
setEffAlphaKey( spep_3-3 + 358, shuchusen4, 204 );

--敵の動き
setDisp( spep_3-3 + 50, 1, 1 );
setDisp( spep_3-3 + 86, 1, 0 );
setDisp( spep_3-3 + 106, 1, 1 );
setDisp( spep_3-1 + 138, 1, 0 );
setDisp( spep_3-3 + 200, 1, 1 );
setDisp( spep_3 + 238, 1, 0 );

changeAnime( spep_3-3 + 50, 1, 105 );
changeAnime( spep_3-3 + 106, 1, 8 );


setMoveKey( spep_3-3 + 50, 1, -389.1, 278.6 , 0 );
setMoveKey( spep_3-3 + 52, 1, -316.2, 204.2 , 0 );
setMoveKey( spep_3-3 + 54, 1, -243.8, 130.5 , 0 );
setMoveKey( spep_3-3 + 56, 1, -172.1, 57.3 , 0 );
setMoveKey( spep_3-3 + 58, 1, -100.9, -15.2 , 0 );
setMoveKey( spep_3-3 + 60, 1, -30.4, -87.2 , 0 );
setMoveKey( spep_3-3 + 62, 1, -24.9, -91 , 0 );
setMoveKey( spep_3-3 + 64, 1, -19.5, -94.8 , 0 );
setMoveKey( spep_3-3 + 66, 1, -14.1, -98.5 , 0 );
setMoveKey( spep_3-3 + 68, 1, -8.8, -102.2 , 0 );
setMoveKey( spep_3-3 + 70, 1, -3.5, -105.9 , 0 );
setMoveKey( spep_3-3 + 72, 1, 1.8, -109.5 , 0 );
setMoveKey( spep_3-3 + 74, 1, 7, -113.1 , 0 );
setMoveKey( spep_3-3 + 76, 1, 12.2, -116.7 , 0 );
setMoveKey( spep_3-3 + 78, 1, 17.4, -120.2 , 0 );
setMoveKey( spep_3-3 + 80, 1, 22.4, -123.8 , 0 );
setMoveKey( spep_3-3 + 82, 1, 27.5, -127.4 , 0 );
setMoveKey( spep_3-3 + 84, 1, 32.7, -131 , 0 );
setMoveKey( spep_3-3 + 86, 1, 37.7, -134.6 , 0 );

setMoveKey( spep_3-3 + 106, 1, 39.3, -58.3 , 0 );
setMoveKey( spep_3-3 + 108, 1, 54.8, -16.7 , 0 );
setMoveKey( spep_3-3 + 110, 1, 71.2, 31.9 , 0 );
setMoveKey( spep_3-3 + 112, 1, 82.6, 68.1 , 0 );
setMoveKey( spep_3-3 + 114, 1, 97.3, 110 , 0 );
setMoveKey( spep_3-3 + 116, 1, 105, 143.6 , 0 );
setMoveKey( spep_3-3 + 118, 1, 119.9, 178.8 , 0 );
setMoveKey( spep_3-3 + 120, 1, 127.8, 207.6 , 0 );
setMoveKey( spep_3-3 + 122, 1, 138.9, 237.9 , 0 );
setMoveKey( spep_3-3 + 124, 1, 147.1, 263.8 , 0 );
setMoveKey( spep_3-3 + 126, 1, 154.3, 287.2 , 0 );
setMoveKey( spep_3-3 + 128, 1, 160.7, 308 , 0 );
setMoveKey( spep_3-3 + 130, 1, 165.9, 326.3 , 0 );
setMoveKey( spep_3-3 + 132, 1, 170.3, 341.9 , 0 );
setMoveKey( spep_3-3 + 134, 1, 173.8, 354.9 , 0 );
setMoveKey( spep_3-3 + 136, 1, 176.1, 365.3 , 0 );
setMoveKey( spep_3-1 + 138, 1, 177.5, 373 , 0 );

setMoveKey( spep_3-3 + 200, 1, -362.8, -477.2 , 0 );
setMoveKey( spep_3-3 + 202, 1, -251.8, -347.8 , 0 );
setMoveKey( spep_3-3 + 204, 1, -140.8, -218.3 , 0 );
setMoveKey( spep_3-3 + 206, 1, -29.7, -89 , 0 );
setMoveKey( spep_3-3 + 208, 1, -23.8, -82.1 , 0 );
setMoveKey( spep_3-3 + 210, 1, -18.2, -75.6 , 0 );
setMoveKey( spep_3-3 + 212, 1, -12.9, -69.4 , 0 );
setMoveKey( spep_3-3 + 214, 1, -8, -63.7 , 0 );
setMoveKey( spep_3-3 + 216, 1, -3.3, -58.3 , 0 );
setMoveKey( spep_3-3 + 218, 1, 1, -53.3 , 0 );
setMoveKey( spep_3-3 + 220, 1, 4.9, -48.7 , 0 );
setMoveKey( spep_3-3 + 222, 1, 8.6, -44.4 , 0 );
setMoveKey( spep_3-3 + 224, 1, 11.9, -40.6 , 0 );
setMoveKey( spep_3-3 + 226, 1, 14.9, -37.1 , 0 );
setMoveKey( spep_3-3 + 228, 1, 17.5, -34 , 0 );
setMoveKey( spep_3-3 + 230, 1, 19.8, -31.3 , 0 );
setMoveKey( spep_3-3 + 232, 1, 21.9, -28.9 , 0 );
setMoveKey( spep_3-3 + 234, 1, 23.5, -27 , 0 );
setMoveKey( spep_3-3 + 236, 1, 24.9, -25.4 , 0 );
setMoveKey( spep_3 + 238, 1, 25.9, -24.2 , 0 );

setScaleKey( spep_3-3 + 50, 1, 4.06, 4.06 );
setScaleKey( spep_3-3 + 52, 1, 3.41, 3.41 );
setScaleKey( spep_3-3 + 54, 1, 2.76, 2.76 );
setScaleKey( spep_3-3 + 56, 1, 2.12, 2.12 );
setScaleKey( spep_3-3 + 58, 1, 1.49, 1.49 );
setScaleKey( spep_3-3 + 60, 1, 0.86, 0.86 );
setScaleKey( spep_3-3 + 62, 1, 0.82, 0.82 );
setScaleKey( spep_3-3 + 64, 1, 0.78, 0.78 );
setScaleKey( spep_3-3 + 66, 1, 0.75, 0.75 );
setScaleKey( spep_3-3 + 68, 1, 0.71, 0.71 );
setScaleKey( spep_3-3 + 70, 1, 0.67, 0.67 );
setScaleKey( spep_3-3 + 72, 1, 0.64, 0.64 );
setScaleKey( spep_3-3 + 74, 1, 0.6, 0.6 );
setScaleKey( spep_3-3 + 76, 1, 0.57, 0.57 );
setScaleKey( spep_3-3 + 78, 1, 0.53, 0.53 );
setScaleKey( spep_3-3 + 80, 1, 0.5, 0.5 );
setScaleKey( spep_3-3 + 82, 1, 0.47, 0.47 );
setScaleKey( spep_3-3 + 84, 1, 0.43, 0.43 );
setScaleKey( spep_3-3 + 86, 1, 0.4, 0.4 );

setScaleKey( spep_3-3 + 106, 1, 0.73, 0.73 );
setScaleKey( spep_3-3 + 108, 1, 0.65, 0.65 );
setScaleKey( spep_3-3 + 110, 1, 0.59, 0.59 );
setScaleKey( spep_3-3 + 112, 1, 0.53, 0.53 );
setScaleKey( spep_3-3 + 114, 1, 0.47, 0.47 );
setScaleKey( spep_3-3 + 116, 1, 0.42, 0.42 );
setScaleKey( spep_3-3 + 118, 1, 0.37, 0.37 );
setScaleKey( spep_3-3 + 120, 1, 0.32, 0.32 );
setScaleKey( spep_3-3 + 122, 1, 0.27, 0.27 );
setScaleKey( spep_3-3 + 124, 1, 0.24, 0.24 );
setScaleKey( spep_3-3 + 126, 1, 0.2, 0.2 );
setScaleKey( spep_3-3 + 128, 1, 0.17, 0.17 );
setScaleKey( spep_3-3 + 130, 1, 0.14, 0.14 );
setScaleKey( spep_3-3 + 132, 1, 0.11, 0.11 );
setScaleKey( spep_3-3 + 134, 1, 0.09, 0.09 );
setScaleKey( spep_3-3 + 136, 1, 0.08, 0.08 );
setScaleKey( spep_3-1 + 138, 1, 0.06, 0.06 );

setScaleKey( spep_3-3 + 200, 1, 3.08, 3.08 );
setScaleKey( spep_3-3 + 202, 1, 2.32, 2.32 );
setScaleKey( spep_3-3 + 204, 1, 1.56, 1.56 );
setScaleKey( spep_3-3 + 206, 1, 0.8, 0.8 );
setScaleKey( spep_3-3 + 208, 1, 0.76, 0.76 );
setScaleKey( spep_3-3 + 210, 1, 0.73, 0.73 );
setScaleKey( spep_3-3 + 212, 1, 0.69, 0.69 );
setScaleKey( spep_3-3 + 214, 1, 0.66, 0.66 );
setScaleKey( spep_3-3 + 216, 1, 0.63, 0.63 );
setScaleKey( spep_3-3 + 218, 1, 0.6, 0.6 );
setScaleKey( spep_3-3 + 220, 1, 0.57, 0.57 );
setScaleKey( spep_3-3 + 222, 1, 0.55, 0.55 );
setScaleKey( spep_3-3 + 224, 1, 0.52, 0.52 );
setScaleKey( spep_3-3 + 226, 1, 0.5, 0.5 );
setScaleKey( spep_3-3 + 228, 1, 0.48, 0.48 );
setScaleKey( spep_3-3 + 230, 1, 0.47, 0.47 );
setScaleKey( spep_3-3 + 232, 1, 0.45, 0.45 );
setScaleKey( spep_3-3 + 234, 1, 0.44, 0.44 );
setScaleKey( spep_3-3 + 236, 1, 0.43, 0.43 );
setScaleKey( spep_3 + 238, 1, 0.43, 0.43 );

setRotateKey( spep_3-3 + 50, 1, 115.3 );
setRotateKey( spep_3-3 + 56, 1, 115.3 );
setRotateKey( spep_3-3 + 58, 1, 115.2 );
setRotateKey( spep_3-3 + 68, 1, 115.2 );
setRotateKey( spep_3-3 + 70, 1, 115.3 );
setRotateKey( spep_3-3 + 86, 1, 115.3 );

setRotateKey( spep_3-3 + 106, 1, 120 );
setRotateKey( spep_3 + 238, 1, 120 );

--SE
setSeVolume( spep_3 + 55, 1212, 0 );
setSeVolume( spep_3 + 56, 1212, 3.11 );
setSeVolume( spep_3 + 57, 1212, 6.22 );
setSeVolume( spep_3 + 58, 1212, 9.33 );
setSeVolume( spep_3 + 59, 1212, 12.44 );
setSeVolume( spep_3 + 60, 1212, 15.56 );
setSeVolume( spep_3 + 61, 1212, 18.67 );
setSeVolume( spep_3 + 62, 1212, 21.78 );
setSeVolume( spep_3 + 63, 1212, 24.89 );
setSeVolume( spep_3 + 64, 1212, 28 );
setSeVolume( spep_3 + 65, 1212, 31.11 );
setSeVolume( spep_3 + 66, 1212, 34.22 );
setSeVolume( spep_3 + 67, 1212, 37.33 );
setSeVolume( spep_3 + 68, 1212, 40.44 );
setSeVolume( spep_3 + 69, 1212, 43.56 );
setSeVolume( spep_3 + 70, 1212, 46.67 );
setSeVolume( spep_3 + 71, 1212, 49.78 );
setSeVolume( spep_3 + 72, 1212, 52.89 );
setSeVolume( spep_3 + 73, 1212, 56 );
playSe( spep_3 + 0, 49 );
playSe( spep_3 + 13, 1003 );
setSeVolume( spep_3 + 13, 1003, 63 );
playSe( spep_3 + 21, 1027 );
playSe( spep_3 + 21, 1021 );
playSe( spep_3 + 85, 1023 );
setSeVolume( spep_3 + 85, 1023, 89 );
playSe( spep_3 + 85, 1008 );
se_1183 = playSe( spep_3 + 97, 1183 );
playSe( spep_3 + 99, 1182 );
setSeVolume( spep_3 + 99, 1182, 0 );
setSeVolume( spep_3 + 108, 1182, 0 );
setSeVolume( spep_3 + 109, 1182, 8.33 );
setSeVolume( spep_3 + 110, 1182, 16.67 );
setSeVolume( spep_3 + 111, 1182, 25 );
setSeVolume( spep_3 + 112, 1182, 33.33 );
setSeVolume( spep_3 + 113, 1182, 41.67 );
setSeVolume( spep_3 + 114, 1182, 50 );
setSeVolume( spep_3 + 115, 1182, 58.33 );
setSeVolume( spep_3 + 116, 1182, 66.67 );
setSeVolume( spep_3 + 117, 1182, 75 );
setSeVolume( spep_3 + 118, 1182, 83.33 );
setSeVolume( spep_3 + 119, 1182, 91.67 );
setSeVolume( spep_3 + 120, 1182, 100 );
se_1191 = playSe( spep_3 + 136, 1191 );
setSeVolume( spep_3 + 136, 1191, 0 );
setSeVolume( spep_3 + 146, 1191, 33 );
setSeVolume( spep_3 + 147, 1191, 66 );
setSeVolume( spep_3 + 148, 1191, 100 );
se_0049 = playSe( spep_3 + 146, 49 );
playSe( spep_3 + 169, 1027 );
setSeVolume( spep_3 + 169, 1027, 79 );
se_1146 = playSe( spep_3 + 170, 1146 );
setSeVolume( spep_3 + 170, 1146, 45 );
se_1177 = playSe( spep_3 + 170, 1177 );
setSeVolume( spep_3 + 170, 1177, 79 );
se_1215 = playSe( spep_3 + 172, 1215 );
playSe( spep_3 + 243, 1024 );
setSeVolume( spep_3 + 243, 1024, 89 );
playSe( spep_3 + 243, 1159 );
setSeVolume( spep_3 + 243, 1159, 89 );

stopSe( spep_3 + 96, se_1212, 0 );
stopSe( spep_3 + 143, se_1183, 27 );
stopSe( spep_3 + 174, se_1191, 16 );
stopSe( spep_3 + 170, se_0049, 0 );
stopSe( spep_3 + 261, se_1146, 0 );
stopSe( spep_3 + 261, se_1177, 0 );
stopSe( spep_3 + 249, se_1215, 0 );

--終わり
dealDamage( spep_3+240  );
endPhase( spep_3 + 350 );
end