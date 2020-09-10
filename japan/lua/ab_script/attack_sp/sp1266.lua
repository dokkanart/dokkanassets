--1016620_ピッコロ大魔王_魔撃閃
--sp_effect_b1_00072

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
SP_01=	153111	;--	溜め
SP_02=	153113	;--	ダッシュ&キック
SP_03=	153115	;--	パンチ
SP_04=	153117	;--	爆破


--敵側
SP_01x=	153112	;--	溜め	(敵)
SP_02x=	153114	;--	ダッシュ&キック	(敵)
SP_03x=	153116	;--	パンチ	(敵)
SP_04x=	153117	;--	爆破	

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

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 溜め
------------------------------------------------------
spep_0=0;

--エフェクトの再生
tame = entryEffectLife( spep_0 + 0, SP_01, 110, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_0 + 110, tame, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 110, tame, 1.0, 1.0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 110, tame, 255 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 110, tame, 0 );

--集中線
shuchusen1 = entryEffectLife( spep_0 + 0,  906, 108, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 108, shuchusen1, 0, 0 , 0 );

setEffRotateKey( spep_0 + 0, shuchusen1, 180 );
setEffRotateKey( spep_0 + 108, shuchusen1, 180 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 108, shuchusen1, 255 );

--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0+28 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe(SP_dodge-14,SE0,0);--音を止める
   
    pauseAll( SP_dodge, 67);
    
    --[[
    --キャラクターの固定
    
    setMoveKey(SP_dodge, 1, 0, 20.6, 0);
    setScaleKey(SP_dodge , 1 ,1.5, 1.5 );
    setRotateKey(SP_dodge,   1, 0);
    
    --キャラクターの固定
    setMoveKey(SP_dodge+10, 1, 0, 20.6, 0);
    setScaleKey(SP_dodge+10 , 1 ,1.5, 1.5 );
    setRotateKey(SP_dodge+10,   1, 0);
    ]]--
    
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


-- ** 顔カットイン ** --
speff = entryEffect( spep_0 + 24, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0 + 24, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_0 + 36,  190006, 72, 0x100, -1, 0, -8.5, 515.5 ); --ゴゴゴ
setEffShake( spep_0 + 36, ctgogo, 72, 10 );
 
setEffMoveKey( spep_0 + 36, ctgogo, -8.5, 515.5 , 0 );
setEffMoveKey( spep_0 + 108, ctgogo, -9.9, 515.5 , 0 );
 
setEffScaleKey( spep_0 + 36, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_0 + 102, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_0 + 104, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_0 + 104, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_0 + 106, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_0 + 108, ctgogo, 1.69, 1.69 );
 
setEffRotateKey( spep_0 + 36, ctgogo, 0 );
setEffRotateKey( spep_0 + 108, ctgogo, 0 );
 
setEffAlphaKey( spep_0 + 36, ctgogo, 0 );
setEffAlphaKey( spep_0 + 37, ctgogo, 255 );
setEffAlphaKey( spep_0 + 38, ctgogo, 255 );
setEffAlphaKey( spep_0 + 108, ctgogo, 255 );

--SE
playSe( spep_0 + 36, SE_04 );  --ゴゴゴ
SE1=playSe( spep_0, 1044 );  --地揺れ
stopSe(spep_0+108,SE1,0);

-- ** ホワイトフェード ** --
entryFade( spep_0 + 102, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

--次の準備
spep_1=spep_0+110;

------------------------------------------------------
-- カードカットイン(90F) 
------------------------------------------------------

playSe( spep_1, SE_05);
speff = entryEffect(  spep_1,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                         -- 技名テクスチャ差し替え

shuchusen = entryEffectLife( spep_1, 906, 90, 0x100,  -1, 0,  0,  0);
setEffMoveKey(  spep_1,  shuchusen,  0,  0);
setEffMoveKey(  spep_1+90,  shuchusen,  0,  0);
setEffScaleKey(  spep_1,  shuchusen,  1.6,  1.6);
setEffScaleKey(  spep_1+90,  shuchusen,  1.6,  1.6);
setEffRotateKey(  spep_1,  shuchusen,  0);
setEffRotateKey(  spep_1+90,  shuchusen,  0);
setEffAlphaKey(  spep_1,  shuchusen,  255);
setEffAlphaKey(  spep_1+90,  shuchusen,  255);


--***背景と白フェード***
entryFade( spep_1+80, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_2 = spep_1 + 88;
------------------------------------------------------
-- ダッシュ&キック
------------------------------------------------------
--エフェクトの再生
kick = entryEffectLife( spep_2 + 0, SP_02, 140, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, kick, 0, 0 , 0 );
setEffMoveKey( spep_2 + 140, kick, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, kick, 1.0, 1.0 );
setEffScaleKey( spep_2 + 140, kick, 1.0, 1.0 );
setEffAlphaKey( spep_2 + 0, kick, 255 );
setEffAlphaKey( spep_2 + 140, kick, 255 );
setEffRotateKey( spep_2 + 0, kick, 0 );
setEffRotateKey( spep_2 + 140, kick, 0 );

--集中線
shuchusen2 = entryEffectLife( spep_2 + 0,  906, 138, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_2 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 138, shuchusen2, 0, 0 , 0 );

-- shuchusen2
setEffScaleKey( spep_2 + 0, shuchusen2, 1.25, 1.25 );
setEffScaleKey( spep_2 + 138, shuchusen2, 1.25, 1.25 );

setEffRotateKey( spep_2 + 0, shuchusen2, 180 );
setEffRotateKey( spep_2 + 138, shuchusen2, 180 );

setEffAlphaKey( spep_2 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 138, shuchusen2, 255 );


--文字エントリー
ctzuo = entryEffectLife( spep_2 + 2,  10012, 18, 0x100, -1, 0, -186.6, -343.8 );--ズオッ

setEffMoveKey( spep_2 + 2, ctzuo, -186.6, -343.8 , 0 );
setEffMoveKey( spep_2 + 4, ctzuo, -187.2, -325.6 , 0 );
setEffMoveKey( spep_2 + 6, ctzuo, -183.7, -340.6 , 0 );
setEffMoveKey( spep_2 + 8, ctzuo, -184.1, -324.5 , 0 );
setEffMoveKey( spep_2 + 10, ctzuo, -180.9, -337.3 , 0 );
setEffMoveKey( spep_2 + 12, ctzuo, -180.9, -323.9 , 0 );
setEffMoveKey( spep_2 + 14, ctzuo, -177.9, -334.4 , 0 );
setEffMoveKey( spep_2 + 16, ctzuo, -177.6, -323.5 , 0 );
setEffMoveKey( spep_2 + 18, ctzuo, -175.1, -331 , 0 );
setEffMoveKey( spep_2 + 20, ctzuo, -172.7, -337 , 0 );

setEffScaleKey( spep_2 + 2, ctzuo, 2.75, 2.75 );
setEffScaleKey( spep_2 + 4, ctzuo, 2.77, 2.77 );
setEffScaleKey( spep_2 + 6, ctzuo, 2.78, 2.78 );
setEffScaleKey( spep_2 + 8, ctzuo, 2.8, 2.8 );
setEffScaleKey( spep_2 + 10, ctzuo, 2.82, 2.82 );
setEffScaleKey( spep_2 + 12, ctzuo, 2.84, 2.84 );
setEffScaleKey( spep_2 + 14, ctzuo, 2.86, 2.86 );
setEffScaleKey( spep_2 + 16, ctzuo, 2.87, 2.87 );
setEffScaleKey( spep_2 + 18, ctzuo, 2.89, 2.89 );
setEffScaleKey( spep_2 + 20, ctzuo, 2.91, 2.91 );

setEffRotateKey( spep_2 + 2, ctzuo, -22 );
setEffRotateKey( spep_2 + 20, ctzuo, -22 );

setEffAlphaKey( spep_2 + 2, ctzuo, 26 );
setEffAlphaKey( spep_2 + 4, ctzuo, 51 );
setEffAlphaKey( spep_2 + 6, ctzuo, 77 );
setEffAlphaKey( spep_2 + 8, ctzuo, 102 );
setEffAlphaKey( spep_2 + 10, ctzuo, 128 );
setEffAlphaKey( spep_2 + 12, ctzuo, 153 );
setEffAlphaKey( spep_2 + 14, ctzuo, 179 );
setEffAlphaKey( spep_2 + 16, ctzuo, 204 );
setEffAlphaKey( spep_2 + 18, ctzuo, 230 );
setEffAlphaKey( spep_2 + 20, ctzuo, 255 );

--文字エントリー
ctbaki = entryEffectLife( spep_2 -2 + 24,  10020, 16, 0X100, -1, 0, -111.5, 148.2 );--バキッ

setEffMoveKey( spep_2 -2 + 24, ctbaki, -111.5, 148.2 , 0 );
setEffMoveKey( spep_2 -2 + 26, ctbaki, -123, 197.8 , 0 );
setEffMoveKey( spep_2 -2 + 28, ctbaki, -117.8, 244.8 , 0 );
setEffMoveKey( spep_2 -2 + 30, ctbaki, -125.6, 252.8 , 0 );
setEffMoveKey( spep_2 -2 + 32, ctbaki, -114.7, 246.8 , 0 );
setEffMoveKey( spep_2 -2 + 34, ctbaki, -125.6, 247.1 , 0 );
setEffMoveKey( spep_2 -2 + 36, ctbaki, -128.3, 261 , 0 );
setEffMoveKey( spep_2 -2 + 38, ctbaki, -136.5, 256.3 , 0 );
setEffMoveKey( spep_2 -2 + 40, ctbaki, -145, 263 , 0 );

setEffScaleKey( spep_2 -2 + 24, ctbaki, 0.8, 0.8 );
setEffScaleKey( spep_2 -2 + 26, ctbaki, 1.25, 1.25 );
setEffScaleKey( spep_2 -2 + 28, ctbaki, 1.7, 1.7 );
setEffScaleKey( spep_2 -2 + 30, ctbaki, 1.75, 1.75 );
setEffScaleKey( spep_2 -2 + 32, ctbaki, 1.8, 1.8 );
setEffScaleKey( spep_2 -2 + 34, ctbaki, 1.85, 1.85 );
setEffScaleKey( spep_2 -2 + 36, ctbaki, 1.88, 1.88 );
setEffScaleKey( spep_2 -2 + 38, ctbaki, 1.92, 1.92 );
setEffScaleKey( spep_2 -2 + 40, ctbaki, 1.95, 1.95 );

setEffRotateKey( spep_2 -2 + 24, ctbaki, -0.8 );
setEffRotateKey( spep_2 -2 + 26, ctbaki, -0.2 );
setEffRotateKey( spep_2 -2 + 28, ctbaki, 0.3 );
setEffRotateKey( spep_2 -2 + 40, ctbaki, 0.3 );

setEffAlphaKey( spep_2 -2 + 24, ctbaki, 255 );
setEffAlphaKey( spep_2 -2 + 34, ctbaki, 255 );
setEffAlphaKey( spep_2 -2 + 36, ctbaki, 170 );
setEffAlphaKey( spep_2 -2 + 38, ctbaki, 85 );
setEffAlphaKey( spep_2 -2 + 40, ctbaki, 0 );

--文字エントリー
ctdon = entryEffectLife( spep_2 -3 + 110,  10019, 28, 0x100, -1, 0, -123.6, 204.6 );--ドンッ

setEffMoveKey( spep_2 -3 + 110, ctdon, -123.6, 204.6 , 0 );
setEffMoveKey( spep_2 -3 + 112, ctdon, -139.5, 228 , 0 );
setEffMoveKey( spep_2 -3 + 114, ctdon, -138.2, 259.2 , 0 );
setEffMoveKey( spep_2 -3 + 116, ctdon, -154.8, 259.9 , 0 );
setEffMoveKey( spep_2 -3 + 118, ctdon, -144.2, 259.1 , 0 );
setEffMoveKey( spep_2 -3 + 120, ctdon, -158.9, 250.6 , 0 );
setEffMoveKey( spep_2 -3 + 122, ctdon, -158.1, 261.6 , 0 );
setEffMoveKey( spep_2 -3 + 124, ctdon, -151.1, 251.2 , 0 );
setEffMoveKey( spep_2 -3 + 126, ctdon, -162.9, 261.4 , 0 );
setEffMoveKey( spep_2 -3 + 128, ctdon, -153.3, 256.7 , 0 );
setEffMoveKey( spep_2 -3 + 130, ctdon, -161.9, 256.6 , 0 );
setEffMoveKey( spep_2 -3 + 132, ctdon, -155.1, 254.9 , 0 );
setEffMoveKey( spep_2 -3 + 134, ctdon, -159.3, 262.2 , 0 );
setEffMoveKey( spep_2 -3 + 136, ctdon, -155.9, 255 , 0 );
setEffMoveKey( spep_2 -3 + 138, ctdon, -164.3, 261.3 , 0 );

setEffScaleKey( spep_2 -3 + 110, ctdon, 0.8, 0.8 );
setEffScaleKey( spep_2 -3 + 112, ctdon, 1.4, 1.4 );
setEffScaleKey( spep_2 -3 + 114, ctdon, 2, 2 );
setEffScaleKey( spep_2 -3 + 116, ctdon, 2.05, 2.05 );
setEffScaleKey( spep_2 -3 + 118, ctdon, 2.1, 2.1 );
setEffScaleKey( spep_2 -3 + 120, ctdon, 2.15, 2.15 );
setEffScaleKey( spep_2 -3 + 122, ctdon, 2.16, 2.16 );
setEffScaleKey( spep_2 -3 + 124, ctdon, 2.17, 2.17 );
setEffScaleKey( spep_2 -3 + 126, ctdon, 2.18, 2.18 );
setEffScaleKey( spep_2 -3 + 128, ctdon, 2.19, 2.19 );
setEffScaleKey( spep_2 -3 + 130, ctdon, 2.21, 2.21 );
setEffScaleKey( spep_2 -3 + 132, ctdon, 2.22, 2.22 );
setEffScaleKey( spep_2 -3 + 134, ctdon, 2.23, 2.23 );
setEffScaleKey( spep_2 -3 + 136, ctdon, 2.24, 2.24 );
setEffScaleKey( spep_2 -3 + 138, ctdon, 2.25, 2.25 );

setEffRotateKey( spep_2 -3 + 110, ctdon, -33 );
setEffRotateKey( spep_2 -3 + 138, ctdon, -33 );

setEffAlphaKey( spep_2 -3 + 110, ctdon, 255 );
setEffAlphaKey( spep_2 -3 + 138, ctdon, 255 );

--敵の動き
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 54, 1, 0 );
changeAnime( spep_2 + 0, 1, 102 );
changeAnime( spep_2 + 22, 1, 107 );

setMoveKey( spep_2 + 0, 1, 369.9, -231.4 , 0 );
setMoveKey( spep_2 + 2, 1, 316, -207 , 0 );
setMoveKey( spep_2 + 4, 1, 287, -193.8 , 0 );
setMoveKey( spep_2 + 6, 1, 266.1, -184.4 , 0 );
setMoveKey( spep_2 + 8, 1, 249.7, -177 , 0 );
setMoveKey( spep_2 + 10, 1, 236.1, -170.8 , 0 );
setMoveKey( spep_2 + 12, 1, 224.5, -165.5 , 0 );
setMoveKey( spep_2 + 14, 1, 214.4, -160.9 , 0 );
setMoveKey( spep_2 + 16, 1, 205.2, -156.8 , 0 );
setMoveKey( spep_2 + 18, 1, 196.8, -153 , 0 );
setMoveKey( spep_2 + 21, 1, 188.8, -149.3 , 0 );
setMoveKey( spep_2 + 22, 1, 158.9, 250.5 , 0 );
setMoveKey( spep_2 + 24, 1, 285.2, 309.3 , 0 );
setMoveKey( spep_2 + 26, 1, 358.2, 347.8 , 0 );
setMoveKey( spep_2 + 28, 1, 430.6, 385.2 , 0 );
setMoveKey( spep_2 + 30, 1, 492.2, 427.7 , 0 );
setMoveKey( spep_2 + 32, 1, 544.8, 452.5 , 0 );
setMoveKey( spep_2 + 34, 1, 585.1, 480.6 , 0 );
setMoveKey( spep_2 + 36, 1, 617.2, 497.7 , 0 );
setMoveKey( spep_2 + 38, 1, 647.4, 515.3 , 0 );
setMoveKey( spep_2 + 40, 1, 669, 528.9 , 0 );
setMoveKey( spep_2 + 42, 1, 687.4, 539.7 , 0 );
setMoveKey( spep_2 + 44, 1, 701.9, 548.3 , 0 );
setMoveKey( spep_2 + 46, 1, 713.1, 554.9 , 0 );
setMoveKey( spep_2 + 48, 1, 721.3, 559.8 , 0 );
setMoveKey( spep_2 + 50, 1, 727.2, 563.2 , 0 );
setMoveKey( spep_2 + 52, 1, 731.3, 565.6 , 0 );
setMoveKey( spep_2 + 54, 1, 734.9, 567.8 , 0 );

setScaleKey( spep_2 + 0, 1, 2.72, 2.72 );
setScaleKey( spep_2 + 2, 1, 2.42, 2.42 );
setScaleKey( spep_2 + 4, 1, 2.26, 2.26 );
setScaleKey( spep_2 + 6, 1, 2.14, 2.14 );
setScaleKey( spep_2 + 8, 1, 2.04, 2.04 );
setScaleKey( spep_2 + 10, 1, 1.97, 1.97 );
setScaleKey( spep_2 + 12, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 14, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 16, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 18, 1, 1.74, 1.74 );
setScaleKey( spep_2 + 21, 1, 1.7, 1.7 );
setScaleKey( spep_2 + 22, 1, 0.74, 0.74 );
setScaleKey( spep_2 + 24, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 26, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 28, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 30, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 32, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 34, 1, 1.28, 1.28 );
setScaleKey( spep_2 + 36, 1, 1.33, 1.33 );
setScaleKey( spep_2 + 38, 1, 1.37, 1.37 );
setScaleKey( spep_2 + 40, 1, 1.41, 1.41 );
setScaleKey( spep_2 + 42, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 44, 1, 1.45, 1.45 );
setScaleKey( spep_2 + 46, 1, 1.47, 1.47 );
setScaleKey( spep_2 + 48, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 50, 1, 1.49, 1.49 );
setScaleKey( spep_2 + 52, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 54, 1, 1.5, 1.5 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 + 21, 1, 0 );
setRotateKey( spep_2 + 22, 1, -99 );
setRotateKey( spep_2 + 24, 1, -94 );
setRotateKey( spep_2 + 26, 1, -90.3 );
setRotateKey( spep_2 + 28, 1, -87.4 );
setRotateKey( spep_2 + 30, 1, -85.1 );
setRotateKey( spep_2 + 32, 1, -83.2 );
setRotateKey( spep_2 + 34, 1, -81.7 );
setRotateKey( spep_2 + 36, 1, -80.4 );
setRotateKey( spep_2 + 38, 1, -79.3 );
setRotateKey( spep_2 + 40, 1, -78.5 );
setRotateKey( spep_2 + 42, 1, -77.8 );
setRotateKey( spep_2 + 44, 1, -77.3 );
setRotateKey( spep_2 + 46, 1, -76.8 );
setRotateKey( spep_2 + 48, 1, -76.5 );
setRotateKey( spep_2 + 50, 1, -76.3 );
setRotateKey( spep_2 + 52, 1, -76.1 );
setRotateKey( spep_2 + 54, 1, -76 );

--SE
playSe( spep_2 , 1018 );  --敵に突進
playSe( spep_2+24 , 1010 );  --蹴り上げ
playSe( spep_2+72 , 1013 );  --着地
playSe( spep_2+108 , 9 );  --敵を追いかける

-- ** ホワイトフェード ** --
entryFade( spep_2 + 18, 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_2 + 132, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

--次の準備
spep_3=spep_2+140;
------------------------------------------------------
-- パンチ
------------------------------------------------------
--エフェクトの再生
punch = entryEffectLife( spep_3 + 0, SP_03, 126, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_3 + 0, punch, 0, 0 , 0 );
setEffMoveKey( spep_3 + 126, punch, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, punch, 1.0, 1.0 );
setEffScaleKey( spep_3 + 126, punch, 1.0, 1.0 );
setEffAlphaKey( spep_3 + 0, punch, 255 );
setEffAlphaKey( spep_3 + 125, punch, 255 );
setEffAlphaKey( spep_3 + 126, punch, 255 );
setEffRotateKey( spep_3 + 0, punch, 0 );
setEffRotateKey( spep_3 + 126, punch, 0 );

--敵の動き
setDisp( spep_3  + 0, 1, 1 );
setDisp( spep_3  + 122, 1, 0 );

changeAnime( spep_3  + 0, 1, 107 );

setMoveKey( spep_3  + 0, 1, -510.1, -254 , 0 );
--setMoveKey( spep_3 -3 + 2, 1, -467.2, -250.8 , 0 );
setMoveKey( spep_3 -3 + 4, 1, -427.4, -247.8 , 0 );
setMoveKey( spep_3 -3 + 6, 1, -390.4, -245 , 0 );
setMoveKey( spep_3 -3 + 8, 1, -355.9, -242.4 , 0 );
setMoveKey( spep_3 -3 + 10, 1, -323.7, -240 , 0 );
setMoveKey( spep_3 -3 + 12, 1, -293.7, -237.7 , 0 );
setMoveKey( spep_3 -3 + 14, 1, -265.5, -235.6 , 0 );
setMoveKey( spep_3 -3 + 16, 1, -239.3, -233.6 , 0 );
setMoveKey( spep_3 -3 + 18, 1, -214.8, -231.8 , 0 );
setMoveKey( spep_3 -3 + 20, 1, -191.9, -230.1 , 0 );
setMoveKey( spep_3 -3 + 22, 1, -170.5, -228.4 , 0 );
setMoveKey( spep_3 -3 + 24, 1, -150.4, -227 , 0 );
setMoveKey( spep_3 -3 + 26, 1, -131.9, -225.5 , 0 );
setMoveKey( spep_3 -3 + 28, 1, -114.5, -224.3 , 0 );
setMoveKey( spep_3 -3 + 30, 1, -98.4, -223 , 0 );
setMoveKey( spep_3 -3 + 32, 1, -83.5, -221.9 , 0 );
setMoveKey( spep_3 -3 + 34, 1, -69.6, -220.9 , 0 );
setMoveKey( spep_3 -3 + 36, 1, -56.8, -219.9 , 0 );
setMoveKey( spep_3 -3 + 38, 1, -45, -219 , 0 );
setMoveKey( spep_3 -3 + 40, 1, -34.2, -218.2 , 0 );
setMoveKey( spep_3 -3 + 42, 1, -24.4, -217.5 , 0 );
setMoveKey( spep_3 -3 + 44, 1, -15.4, -216.8 , 0 );
setMoveKey( spep_3 -3 + 46, 1, -7.4, -216.2 , 0 );
setMoveKey( spep_3 -3 + 48, 1, -0.1, -215.7 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 6.3, -215.2 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 12, -214.7 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 17, -214.4 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 21.6, -214 , 0 );
setMoveKey( spep_3 -3 + 58, 1, 26.2, -213.7 , 0 );
--setMoveKey( spep_3  + 60, 1, 16.9, -228.2 , 0 );
setMoveKey( spep_3  + 60, 1, 108.5, -193.6 , 0 );
setMoveKey( spep_3 -3 + 64, 1, -85.2, -309.3 , 0 );
setMoveKey( spep_3 -3 + 66, 1, 148, -318.8 , 0 );
setMoveKey( spep_3 -3 + 68, 1, 66.1, -210.5 , 0 );
setMoveKey( spep_3 -3 + 70, 1, 74.9, -323 , 0 );
setMoveKey( spep_3 -3 + 72, 1, -31.6, -265.6 , 0 );
setMoveKey( spep_3 -3 + 74, 1, 70, -281.9 , 0 );
setMoveKey( spep_3 -3 + 76, 1, -5, -218.9 , 0 );
setMoveKey( spep_3 -3 + 78, 1, 75, -265.4 , 0 );
setMoveKey( spep_3 -3 + 80, 1, 81.2, -239.9 , 0 );
setMoveKey( spep_3 -3 + 82, 1, 6.5, -280.1 , 0 );
setMoveKey( spep_3 -3 + 84, 1, 64.1, -218.7 , 0 );
setMoveKey( spep_3 -3 + 86, 1, 6.5, -226.6 , 0 );
setMoveKey( spep_3 -3 + 88, 1, 17.7, -208.6 , 0 );
setMoveKey( spep_3 -3 + 90, 1, 44.4, -230.9 , 0 );
setMoveKey( spep_3 -3 + 92, 1, 18.9, -216.2 , 0 );
setMoveKey( spep_3 -3 + 94, 1, 37.4, -226 , 0 );
setMoveKey( spep_3 -3 + 96, 1, 18.9, -221.1 , 0 );
setMoveKey( spep_3 -3 + 98, 1, 18.9, -228.6 , 0 );
setMoveKey( spep_3 -3 + 100, 1, 22.5, -259.3 , 0 );
setMoveKey( spep_3 -3 + 102, 1, 199.6, -510.3 , 0 );
setMoveKey( spep_3 -3 + 104, 1, 326.2, -689.9 , 0 );
setMoveKey( spep_3 -3 + 106, 1, 414.4, -814.9 , 0 );
setMoveKey( spep_3 -3 + 108, 1, 474.9, -900.6 , 0 );
setMoveKey( spep_3 -3 + 110, 1, 516.4, -959.4 , 0 );
setMoveKey( spep_3 -3 + 112, 1, 545.3, -1000.5 , 0 );
setMoveKey( spep_3 -3 + 114, 1, 566.6, -1030.7 , 0 );
setMoveKey( spep_3 -3 + 116, 1, 583.4, -1054.4 , 0 );
setMoveKey( spep_3 -3 + 126, 1, 583.4, -1054.4 , 0 );
--setMoveKey( spep_3 -3 + 118, 1, -571, -272.8 , 0 );
--setMoveKey( spep_3 -3 + 120, 1, -523.8, -269.4 , 0 );
--setMoveKey( spep_3 -3 + 122, 1, -480, -266.1 , 0 );
--setMoveKey( spep_3 -3 + 124, 1, -439.3, -263 , 0 );
--setMoveKey( spep_3 -3 + 126, 1, -401.4, -260.1 , 0 );
--setMoveKey( spep_3 -3 + 128, 1, -365.9, -257.5 , 0 );

setScaleKey( spep_3  + 0, 1, 0.57, 0.57 );
--setScaleKey( spep_3 -3 + 2, 1, 0.6, 0.6 );
setScaleKey( spep_3 -3 + 4, 1, 0.62, 0.62 );
setScaleKey( spep_3 -3 + 6, 1, 0.64, 0.64 );
setScaleKey( spep_3 -3 + 8, 1, 0.66, 0.66 );
setScaleKey( spep_3 -3 + 10, 1, 0.68, 0.68 );
setScaleKey( spep_3 -3 + 12, 1, 0.7, 0.7 );
setScaleKey( spep_3 -3 + 14, 1, 0.72, 0.72 );
setScaleKey( spep_3 -3 + 16, 1, 0.74, 0.74 );
setScaleKey( spep_3 -3 + 18, 1, 0.75, 0.75 );
setScaleKey( spep_3 -3 + 20, 1, 0.76, 0.76 );
setScaleKey( spep_3 -3 + 22, 1, 0.78, 0.78 );
setScaleKey( spep_3 -3 + 24, 1, 0.79, 0.79 );
setScaleKey( spep_3 -3 + 26, 1, 0.8, 0.8 );
setScaleKey( spep_3 -3 + 28, 1, 0.81, 0.81 );
setScaleKey( spep_3 -3 + 30, 1, 0.82, 0.82 );
setScaleKey( spep_3 -3 + 32, 1, 0.83, 0.83 );
setScaleKey( spep_3 -3 + 34, 1, 0.84, 0.84 );
setScaleKey( spep_3 -3 + 36, 1, 0.85, 0.85 );
setScaleKey( spep_3 -3 + 38, 1, 0.86, 0.86 );
setScaleKey( spep_3 -3 + 40, 1, 0.86, 0.86 );
setScaleKey( spep_3 -3 + 42, 1, 0.87, 0.87 );
setScaleKey( spep_3 -3 + 44, 1, 0.87, 0.87 );
setScaleKey( spep_3 -3 + 46, 1, 0.88, 0.88 );
setScaleKey( spep_3 -3 + 48, 1, 0.88, 0.88 );
setScaleKey( spep_3 -3 + 50, 1, 0.89, 0.89 );
setScaleKey( spep_3 -3 + 54, 1, 0.89, 0.89 );
setScaleKey( spep_3 -3 + 56, 1, 0.9, 0.9 );
setScaleKey( spep_3 -3 + 58, 1, 0.9, 0.9 );
setScaleKey( spep_3 -3 + 60, 1, 0.99, 0.99 );
setScaleKey( spep_3 -3 + 100, 1, 0.99, 0.99 );
setScaleKey( spep_3 -3 + 102, 1, 1.12, 1.12 );
setScaleKey( spep_3 -3 + 104, 1, 1.23, 1.23 );
setScaleKey( spep_3 -3 + 106, 1, 1.3, 1.3 );
setScaleKey( spep_3 -3 + 108, 1, 1.34, 1.34 );
setScaleKey( spep_3 -3 + 110, 1, 1.38, 1.38 );
setScaleKey( spep_3 -3 + 112, 1, 1.4, 1.4 );
setScaleKey( spep_3 -3 + 114, 1, 1.42, 1.42 );
setScaleKey( spep_3 -3 + 116, 1, 1.43, 1.43 );
setScaleKey( spep_3 -3 + 118, 1, 0.63, 0.63 );
setScaleKey( spep_3 -3 + 120, 1, 0.66, 0.66 );
setScaleKey( spep_3 -3 + 122, 1, 0.68, 0.68 );
setScaleKey( spep_3 -3 + 124, 1, 0.7, 0.7 );
setScaleKey( spep_3 -3 + 126, 1, 0.73, 0.73 );
--setScaleKey( spep_3 -3 + 125, 1, 0.75, 0.75 );

setRotateKey( spep_3  + 0, 1, -45.2 );
--setRotateKey( spep_3 -3 + 2, 1, -45.2 );
setRotateKey( spep_3 -3 + 4, 1, -45.1 );
setRotateKey( spep_3 -3 + 76, 1, -45.1 );
setRotateKey( spep_3 -3 + 78, 1, -45 );
setRotateKey( spep_3 -3 + 98, 1, -45 );
setRotateKey( spep_3 -3 + 100, 1, -25 );
setRotateKey( spep_3 -3 + 116, 1, -25 );
setRotateKey( spep_3 -3 + 118, 1, -45.2 );
setRotateKey( spep_3 -3 + 120, 1, -45.2 );
setRotateKey( spep_3 -3 + 122, 1, -45.1 );
setRotateKey( spep_3 -3 + 126, 1, -45.1 );

--文字エントリー
ctbaki2 = entryEffectLife( spep_3 -2 + 62,  10020, 22, 0x100, -1, 0, -115.7, -155.6 );--バキッ

setEffMoveKey( spep_3 -2 + 62, ctbaki2, -115.7, -155.6 , 0 );
setEffMoveKey( spep_3 -2 + 64, ctbaki2, -124, -204.7 , 0 );
setEffMoveKey( spep_3 -2 + 66, ctbaki2, -123.2, -231.8 , 0 );
setEffMoveKey( spep_3 -2 + 68, ctbaki2, -119.1, -208.7 , 0 );
setEffMoveKey( spep_3 -2 + 70, ctbaki2, -118.1, -223 , 0 );
setEffMoveKey( spep_3 -2 + 72, ctbaki2, -118.2, -207.8 , 0 );
setEffMoveKey( spep_3 -2 + 74, ctbaki2, -119.8, -222 , 0 );
setEffMoveKey( spep_3 -2 + 76, ctbaki2, -122.2, -207.7 , 0 );
setEffMoveKey( spep_3 -2 + 78, ctbaki2, -116.6, -216.6 , 0 );
setEffMoveKey( spep_3 -2 + 80, ctbaki2, -120, -203.4 , 0 );
setEffMoveKey( spep_3 -2 + 82, ctbaki2, -114.2, -211.1 , 0 );
setEffMoveKey( spep_3 -2 + 84, ctbaki2, -118.4, -199.1 , 0 );

setEffScaleKey( spep_3 -2 + 62, ctbaki2, 0.91, 0.91 );
setEffScaleKey( spep_3 -2 + 64, ctbaki2, 1.95, 1.95 );
setEffScaleKey( spep_3 -2 + 66, ctbaki2, 2.48, 2.48 );
setEffScaleKey( spep_3 -2 + 68, ctbaki2, 2.36, 2.36 );
setEffScaleKey( spep_3 -2 + 70, ctbaki2, 2.24, 2.24 );
setEffScaleKey( spep_3 -2 + 72, ctbaki2, 2.12, 2.12 );
setEffScaleKey( spep_3 -2 + 74, ctbaki2, 2.12, 2.12 );
setEffScaleKey( spep_3 -2 + 76, ctbaki2, 2.05, 2.05 );
setEffScaleKey( spep_3 -2 + 78, ctbaki2, 1.98, 1.98 );
setEffScaleKey( spep_3 -2 + 80, ctbaki2, 1.9, 1.9 );
setEffScaleKey( spep_3 -2 + 82, ctbaki2, 1.83, 1.83 );
setEffScaleKey( spep_3 -2 + 84, ctbaki2, 1.76, 1.76 );

setEffRotateKey( spep_3 -2 + 62, ctbaki2, -19 );
setEffRotateKey( spep_3 -2 + 64, ctbaki2, -19 );
setEffRotateKey( spep_3 -2 + 66, ctbaki2, -13 );
setEffRotateKey( spep_3 -2 + 68, ctbaki2, -24 );
setEffRotateKey( spep_3 -2 + 70, ctbaki2, -16 );
setEffRotateKey( spep_3 -2 + 72, ctbaki2, -24 );
setEffRotateKey( spep_3 -2 + 74, ctbaki2, -17 );
setEffRotateKey( spep_3 -2 + 76, ctbaki2, -19.4 );
setEffRotateKey( spep_3 -2 + 78, ctbaki2, -21.8 );
setEffRotateKey( spep_3 -2 + 80, ctbaki2, -24.2 );
setEffRotateKey( spep_3 -2 + 82, ctbaki2, -26.6 );
setEffRotateKey( spep_3 -2 + 84, ctbaki2, -29 );

setEffAlphaKey( spep_3 -2 + 62, ctbaki2, 255 );
setEffAlphaKey( spep_3 -2 + 74, ctbaki2, 255 );
setEffAlphaKey( spep_3 -2 + 76, ctbaki2, 204 );
setEffAlphaKey( spep_3 -2 + 78, ctbaki2, 153 );
setEffAlphaKey( spep_3 -2 + 80, ctbaki2, 102 );
setEffAlphaKey( spep_3 -2 + 82, ctbaki2, 51 );
setEffAlphaKey( spep_3 -2 + 84, ctbaki2, 0 );

--集中線
shuchusen3 = entryEffectLife( spep_3 + 60,  906, 66, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_3 + 60, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_3 + 126, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_3 + 60, shuchusen3, 1.5, 1.5 );
setEffScaleKey( spep_3 + 126, shuchusen3, 1.5, 1.5 );

setEffRotateKey( spep_3 + 60, shuchusen3, 180 );
setEffRotateKey( spep_3 + 126, shuchusen3, 180 );

setEffAlphaKey( spep_3 + 60, shuchusen3, 255 );
setEffAlphaKey( spep_3 + 125, shuchusen3, 255 );
setEffAlphaKey( spep_3 + 126, shuchusen3, 0 );

-- ** ホワイトフェード ** --
entryFade( spep_3 + 56, 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
--entryFade( spep_3 + 122, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

--SE
playSe( spep_3 , 1018 );  --敵に突進
playSe( spep_3+60 , 1011 );  --パンチ

--次の準備
spep_4=spep_3+126;
------------------------------------------------------
-- 爆破
------------------------------------------------------
--エフェクトの再生
explosion = entryEffect( spep_4 + 0, SP_04,0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_4 + 0, explosion, 0, 0 , 0 );
setEffMoveKey( spep_4 + 120, explosion, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, explosion, 1.0, 1.0 );
setEffScaleKey( spep_4 + 120, explosion, 1.0, 1.0 );
setEffAlphaKey( spep_4 + 0, explosion, 255 );
setEffAlphaKey( spep_4 + 120, explosion, 255 );
setEffRotateKey( spep_4 + 0, explosion, 0 );
setEffRotateKey( spep_4 + 120, explosion, 0 );

--集中線
shuchusen4 = entryEffectLife( spep_4 + 0,  906, 120, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_4 + 0, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_4 + 120, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, shuchusen4, 1.5, 1.5 );
setEffScaleKey( spep_4 + 120, shuchusen4, 1.5, 1.5 );

setEffRotateKey( spep_4 + 0, shuchusen4, 180 );
setEffRotateKey( spep_4 + 120, shuchusen4, 180 );

setEffAlphaKey( spep_4 + 0, shuchusen4, 255 );
setEffAlphaKey( spep_4 + 120, shuchusen4, 255 );

--敵の動き
setDisp( spep_4  + 0, 1, 1 );
setDisp( spep_4 -1 + 0+16, 1, 0 );

changeAnime( spep_4 -1 + 0, 1, 105 );

setMoveKey( spep_4  + 0, 1, 48, -33.7 , 0 );
setMoveKey( spep_4 -1 + 2, 1, 48.1, -40.1 , 0 );
setMoveKey( spep_4 -1 + 4, 1, 48.1, -44.4 , 0 );
setMoveKey( spep_4 -1 + 6, 1, 48, -47.7 , 0 );
setMoveKey( spep_4 -1 + 8, 1, 48, -50.3 , 0 );
setMoveKey( spep_4 -1 + 10, 1, 48, -52.4 , 0 );
setMoveKey( spep_4 -1 + 12, 1, 48.1, -54.1 , 0 );
setMoveKey( spep_4 -1 + 14, 1, 48, -55.4 , 0 );
setMoveKey( spep_4 -1 + 16, 1, 48.1, -56.5 , 0 );

setScaleKey( spep_4  + 0, 1, 2.5, 2.5 );
setScaleKey( spep_4 -1 + 2, 1, 2.11, 2.11 );
setScaleKey( spep_4 -1 + 4, 1, 1.85, 1.85 );
setScaleKey( spep_4 -1 + 6, 1, 1.65, 1.65 );
setScaleKey( spep_4 -1 + 8, 1, 1.49, 1.49 );
setScaleKey( spep_4 -1 + 10, 1, 1.36, 1.36 );
setScaleKey( spep_4 -1 + 12, 1, 1.25, 1.25 );
setScaleKey( spep_4 -1 + 14, 1, 1.17, 1.17 );
setScaleKey( spep_4 -1 + 16, 1, 1.1, 1.1 );

setRotateKey( spep_4  + 0, 1, 0 );
setRotateKey( spep_4 -1 + 16, 1, 0 );

--SE
playSe( spep_4+16, 1023 );  --敵に突進

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 5 );
--entryFade( spep_4+ 106, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_4 +  105);

else 
------------------------------------------------------
-- てき側
------------------------------------------------------
------------------------------------------------------
-- 溜め
------------------------------------------------------
spep_0=0;

--エフェクトの再生
tame = entryEffectLife( spep_0 + 0, SP_01x, 110, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_0 + 110, tame, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 110, tame, 1.0, 1.0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 110, tame, 255 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 110, tame, 0 );

--集中線
shuchusen1 = entryEffectLife( spep_0 + 0,  906, 108, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 108, shuchusen1, 0, 0 , 0 );

setEffRotateKey( spep_0 + 0, shuchusen1, 180 );
setEffRotateKey( spep_0 + 108, shuchusen1, 180 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 108, shuchusen1, 255 );

--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0+28 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe(SP_dodge-14,SE0,0);--音を止める
   
    pauseAll( SP_dodge, 67);
    
    --[[
    --キャラクターの固定
    
    setMoveKey(SP_dodge, 1, 0, 20.6, 0);
    setScaleKey(SP_dodge , 1 ,1.5, 1.5 );
    setRotateKey(SP_dodge,   1, 0);
    
    --キャラクターの固定
    setMoveKey(SP_dodge+10, 1, 0, 20.6, 0);
    setScaleKey(SP_dodge+10 , 1 ,1.5, 1.5 );
    setRotateKey(SP_dodge+10,   1, 0);
    ]]--
    
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


-- ** 顔カットイン ** --
--speff = entryEffect( spep_0 + 24, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0 + 24, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_0 + 36,  190006, 72, 0x100, -1, 0, -8.5, 515.5 ); --ゴゴゴ
setEffShake( spep_0 + 36, ctgogo, 72, 10 );
 
setEffMoveKey( spep_0 + 36, ctgogo, -8.5, 515.5 , 0 );
setEffMoveKey( spep_0 + 108, ctgogo, -9.9, 515.5 , 0 );
 
setEffScaleKey( spep_0 + 36, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_0 + 102, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_0 + 104, ctgogo, -1.0, 1.0 );
setEffScaleKey( spep_0 + 104, ctgogo, -1.09, 1.09 );
setEffScaleKey( spep_0 + 106, ctgogo, -1.39, 1.39 );
setEffScaleKey( spep_0 + 108, ctgogo, -1.69, 1.69 );
 
setEffRotateKey( spep_0 + 36, ctgogo, 0 );
setEffRotateKey( spep_0 + 108, ctgogo, 0 );
 
setEffAlphaKey( spep_0 + 36, ctgogo, 0 );
setEffAlphaKey( spep_0 + 37, ctgogo, 255 );
setEffAlphaKey( spep_0 + 38, ctgogo, 255 );
setEffAlphaKey( spep_0 + 108, ctgogo, 255 );

--SE
playSe( spep_0 + 36, SE_04 );  --ゴゴゴ
SE1=playSe( spep_0, 1044 );  --地揺れ
stopSe(spep_0+108,SE1,0);

-- ** ホワイトフェード ** --
entryFade( spep_0 + 102, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

--次の準備
spep_1=spep_0+110;

------------------------------------------------------
-- カードカットイン(90F) 
------------------------------------------------------

playSe( spep_1, SE_05);
speff = entryEffect(  spep_1,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                         -- 技名テクスチャ差し替え

shuchusen = entryEffectLife( spep_1, 906, 90, 0x100,  -1, 0,  0,  0);
setEffMoveKey(  spep_1,  shuchusen,  0,  0);
setEffMoveKey(  spep_1+90,  shuchusen,  0,  0);
setEffScaleKey(  spep_1,  shuchusen,  1.6,  1.6);
setEffScaleKey(  spep_1+90,  shuchusen,  1.6,  1.6);
setEffRotateKey(  spep_1,  shuchusen,  0);
setEffRotateKey(  spep_1+90,  shuchusen,  0);
setEffAlphaKey(  spep_1,  shuchusen,  255);
setEffAlphaKey(  spep_1+90,  shuchusen,  255);


--***背景と白フェード***
entryFade( spep_1+80, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_2 = spep_1 + 88;
------------------------------------------------------
-- ダッシュ&キック
------------------------------------------------------
--エフェクトの再生
kick = entryEffectLife( spep_2 + 0, SP_02x, 140, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, kick, 0, 0 , 0 );
setEffMoveKey( spep_2 + 140, kick, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, kick, 1.0, 1.0 );
setEffScaleKey( spep_2 + 140, kick, 1.0, 1.0 );
setEffAlphaKey( spep_2 + 0, kick, 255 );
setEffAlphaKey( spep_2 + 140, kick, 255 );
setEffRotateKey( spep_2 + 0, kick, 0 );
setEffRotateKey( spep_2 + 140, kick, 0 );

--集中線
shuchusen2 = entryEffectLife( spep_2 + 0,  906, 138, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_2 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 138, shuchusen2, 0, 0 , 0 );

-- shuchusen2
setEffScaleKey( spep_2 + 0, shuchusen2, 1.25, 1.25 );
setEffScaleKey( spep_2 + 138, shuchusen2, 1.25, 1.25 );

setEffRotateKey( spep_2 + 0, shuchusen2, 180 );
setEffRotateKey( spep_2 + 138, shuchusen2, 180 );

setEffAlphaKey( spep_2 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 138, shuchusen2, 255 );


--文字エントリー
ctzuo = entryEffectLife( spep_2 + 2,  10012, 18, 0x100, -1, 0, -186.6, -343.8 );--ズオッ

setEffMoveKey( spep_2 + 2, ctzuo, -186.6, -343.8 , 0 );
setEffMoveKey( spep_2 + 4, ctzuo, -187.2, -325.6 , 0 );
setEffMoveKey( spep_2 + 6, ctzuo, -183.7, -340.6 , 0 );
setEffMoveKey( spep_2 + 8, ctzuo, -184.1, -324.5 , 0 );
setEffMoveKey( spep_2 + 10, ctzuo, -180.9, -337.3 , 0 );
setEffMoveKey( spep_2 + 12, ctzuo, -180.9, -323.9 , 0 );
setEffMoveKey( spep_2 + 14, ctzuo, -177.9, -334.4 , 0 );
setEffMoveKey( spep_2 + 16, ctzuo, -177.6, -323.5 , 0 );
setEffMoveKey( spep_2 + 18, ctzuo, -175.1, -331 , 0 );
setEffMoveKey( spep_2 + 20, ctzuo, -172.7, -337 , 0 );

setEffScaleKey( spep_2 + 2, ctzuo, 2.75, 2.75 );
setEffScaleKey( spep_2 + 4, ctzuo, 2.77, 2.77 );
setEffScaleKey( spep_2 + 6, ctzuo, 2.78, 2.78 );
setEffScaleKey( spep_2 + 8, ctzuo, 2.8, 2.8 );
setEffScaleKey( spep_2 + 10, ctzuo, 2.82, 2.82 );
setEffScaleKey( spep_2 + 12, ctzuo, 2.84, 2.84 );
setEffScaleKey( spep_2 + 14, ctzuo, 2.86, 2.86 );
setEffScaleKey( spep_2 + 16, ctzuo, 2.87, 2.87 );
setEffScaleKey( spep_2 + 18, ctzuo, 2.89, 2.89 );
setEffScaleKey( spep_2 + 20, ctzuo, 2.91, 2.91 );

setEffRotateKey( spep_2 + 2, ctzuo, -22 );
setEffRotateKey( spep_2 + 20, ctzuo, -22 );

setEffAlphaKey( spep_2 + 2, ctzuo, 26 );
setEffAlphaKey( spep_2 + 4, ctzuo, 51 );
setEffAlphaKey( spep_2 + 6, ctzuo, 77 );
setEffAlphaKey( spep_2 + 8, ctzuo, 102 );
setEffAlphaKey( spep_2 + 10, ctzuo, 128 );
setEffAlphaKey( spep_2 + 12, ctzuo, 153 );
setEffAlphaKey( spep_2 + 14, ctzuo, 179 );
setEffAlphaKey( spep_2 + 16, ctzuo, 204 );
setEffAlphaKey( spep_2 + 18, ctzuo, 230 );
setEffAlphaKey( spep_2 + 20, ctzuo, 255 );

--文字エントリー
ctbaki = entryEffectLife( spep_2 -2 + 24,  10020, 16, 0X100, -1, 0, -111.5, 148.2 );--バキッ

setEffMoveKey( spep_2 -2 + 24, ctbaki, -111.5, 148.2 , 0 );
setEffMoveKey( spep_2 -2 + 26, ctbaki, -123, 197.8 , 0 );
setEffMoveKey( spep_2 -2 + 28, ctbaki, -117.8, 244.8 , 0 );
setEffMoveKey( spep_2 -2 + 30, ctbaki, -125.6, 252.8 , 0 );
setEffMoveKey( spep_2 -2 + 32, ctbaki, -114.7, 246.8 , 0 );
setEffMoveKey( spep_2 -2 + 34, ctbaki, -125.6, 247.1 , 0 );
setEffMoveKey( spep_2 -2 + 36, ctbaki, -128.3, 261 , 0 );
setEffMoveKey( spep_2 -2 + 38, ctbaki, -136.5, 256.3 , 0 );
setEffMoveKey( spep_2 -2 + 40, ctbaki, -145, 263 , 0 );

setEffScaleKey( spep_2 -2 + 24, ctbaki, 0.8, 0.8 );
setEffScaleKey( spep_2 -2 + 26, ctbaki, 1.25, 1.25 );
setEffScaleKey( spep_2 -2 + 28, ctbaki, 1.7, 1.7 );
setEffScaleKey( spep_2 -2 + 30, ctbaki, 1.75, 1.75 );
setEffScaleKey( spep_2 -2 + 32, ctbaki, 1.8, 1.8 );
setEffScaleKey( spep_2 -2 + 34, ctbaki, 1.85, 1.85 );
setEffScaleKey( spep_2 -2 + 36, ctbaki, 1.88, 1.88 );
setEffScaleKey( spep_2 -2 + 38, ctbaki, 1.92, 1.92 );
setEffScaleKey( spep_2 -2 + 40, ctbaki, 1.95, 1.95 );

setEffRotateKey( spep_2 -2 + 24, ctbaki, -0.8 );
setEffRotateKey( spep_2 -2 + 26, ctbaki, -0.2 );
setEffRotateKey( spep_2 -2 + 28, ctbaki, 0.3 );
setEffRotateKey( spep_2 -2 + 40, ctbaki, 0.3 );

setEffAlphaKey( spep_2 -2 + 24, ctbaki, 255 );
setEffAlphaKey( spep_2 -2 + 34, ctbaki, 255 );
setEffAlphaKey( spep_2 -2 + 36, ctbaki, 170 );
setEffAlphaKey( spep_2 -2 + 38, ctbaki, 85 );
setEffAlphaKey( spep_2 -2 + 40, ctbaki, 0 );

--文字エントリー
ctdon = entryEffectLife( spep_2 -3 + 110,  10019, 28, 0x100, -1, 0, -123.6, 204.6 );--ドンッ

setEffMoveKey( spep_2 -3 + 110, ctdon, -123.6, 204.6 , 0 );
setEffMoveKey( spep_2 -3 + 112, ctdon, -139.5, 228 , 0 );
setEffMoveKey( spep_2 -3 + 114, ctdon, -138.2, 259.2 , 0 );
setEffMoveKey( spep_2 -3 + 116, ctdon, -154.8, 259.9 , 0 );
setEffMoveKey( spep_2 -3 + 118, ctdon, -144.2, 259.1 , 0 );
setEffMoveKey( spep_2 -3 + 120, ctdon, -158.9, 250.6 , 0 );
setEffMoveKey( spep_2 -3 + 122, ctdon, -158.1, 261.6 , 0 );
setEffMoveKey( spep_2 -3 + 124, ctdon, -151.1, 251.2 , 0 );
setEffMoveKey( spep_2 -3 + 126, ctdon, -162.9, 261.4 , 0 );
setEffMoveKey( spep_2 -3 + 128, ctdon, -153.3, 256.7 , 0 );
setEffMoveKey( spep_2 -3 + 130, ctdon, -161.9, 256.6 , 0 );
setEffMoveKey( spep_2 -3 + 132, ctdon, -155.1, 254.9 , 0 );
setEffMoveKey( spep_2 -3 + 134, ctdon, -159.3, 262.2 , 0 );
setEffMoveKey( spep_2 -3 + 136, ctdon, -155.9, 255 , 0 );
setEffMoveKey( spep_2 -3 + 138, ctdon, -164.3, 261.3 , 0 );

setEffScaleKey( spep_2 -3 + 110, ctdon, 0.8, 0.8 );
setEffScaleKey( spep_2 -3 + 112, ctdon, 1.4, 1.4 );
setEffScaleKey( spep_2 -3 + 114, ctdon, 2, 2 );
setEffScaleKey( spep_2 -3 + 116, ctdon, 2.05, 2.05 );
setEffScaleKey( spep_2 -3 + 118, ctdon, 2.1, 2.1 );
setEffScaleKey( spep_2 -3 + 120, ctdon, 2.15, 2.15 );
setEffScaleKey( spep_2 -3 + 122, ctdon, 2.16, 2.16 );
setEffScaleKey( spep_2 -3 + 124, ctdon, 2.17, 2.17 );
setEffScaleKey( spep_2 -3 + 126, ctdon, 2.18, 2.18 );
setEffScaleKey( spep_2 -3 + 128, ctdon, 2.19, 2.19 );
setEffScaleKey( spep_2 -3 + 130, ctdon, 2.21, 2.21 );
setEffScaleKey( spep_2 -3 + 132, ctdon, 2.22, 2.22 );
setEffScaleKey( spep_2 -3 + 134, ctdon, 2.23, 2.23 );
setEffScaleKey( spep_2 -3 + 136, ctdon, 2.24, 2.24 );
setEffScaleKey( spep_2 -3 + 138, ctdon, 2.25, 2.25 );

setEffRotateKey( spep_2 -3 + 110, ctdon, -33 );
setEffRotateKey( spep_2 -3 + 138, ctdon, -33 );

setEffAlphaKey( spep_2 -3 + 110, ctdon, 255 );
setEffAlphaKey( spep_2 -3 + 138, ctdon, 255 );

--敵の動き
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 54, 1, 0 );
changeAnime( spep_2 + 0, 1, 102 );
changeAnime( spep_2 + 22, 1, 107 );

setMoveKey( spep_2 + 0, 1, 369.9, -231.4 , 0 );
setMoveKey( spep_2 + 2, 1, 316, -207 , 0 );
setMoveKey( spep_2 + 4, 1, 287, -193.8 , 0 );
setMoveKey( spep_2 + 6, 1, 266.1, -184.4 , 0 );
setMoveKey( spep_2 + 8, 1, 249.7, -177 , 0 );
setMoveKey( spep_2 + 10, 1, 236.1, -170.8 , 0 );
setMoveKey( spep_2 + 12, 1, 224.5, -165.5 , 0 );
setMoveKey( spep_2 + 14, 1, 214.4, -160.9 , 0 );
setMoveKey( spep_2 + 16, 1, 205.2, -156.8 , 0 );
setMoveKey( spep_2 + 18, 1, 196.8, -153 , 0 );
setMoveKey( spep_2 + 21, 1, 188.8, -149.3 , 0 );
setMoveKey( spep_2 + 22, 1, 158.9, 250.5 , 0 );
setMoveKey( spep_2 + 24, 1, 285.2, 309.3 , 0 );
setMoveKey( spep_2 + 26, 1, 358.2, 347.8 , 0 );
setMoveKey( spep_2 + 28, 1, 430.6, 385.2 , 0 );
setMoveKey( spep_2 + 30, 1, 492.2, 427.7 , 0 );
setMoveKey( spep_2 + 32, 1, 544.8, 452.5 , 0 );
setMoveKey( spep_2 + 34, 1, 585.1, 480.6 , 0 );
setMoveKey( spep_2 + 36, 1, 617.2, 497.7 , 0 );
setMoveKey( spep_2 + 38, 1, 647.4, 515.3 , 0 );
setMoveKey( spep_2 + 40, 1, 669, 528.9 , 0 );
setMoveKey( spep_2 + 42, 1, 687.4, 539.7 , 0 );
setMoveKey( spep_2 + 44, 1, 701.9, 548.3 , 0 );
setMoveKey( spep_2 + 46, 1, 713.1, 554.9 , 0 );
setMoveKey( spep_2 + 48, 1, 721.3, 559.8 , 0 );
setMoveKey( spep_2 + 50, 1, 727.2, 563.2 , 0 );
setMoveKey( spep_2 + 52, 1, 731.3, 565.6 , 0 );
setMoveKey( spep_2 + 54, 1, 734.9, 567.8 , 0 );

setScaleKey( spep_2 + 0, 1, 2.72, 2.72 );
setScaleKey( spep_2 + 2, 1, 2.42, 2.42 );
setScaleKey( spep_2 + 4, 1, 2.26, 2.26 );
setScaleKey( spep_2 + 6, 1, 2.14, 2.14 );
setScaleKey( spep_2 + 8, 1, 2.04, 2.04 );
setScaleKey( spep_2 + 10, 1, 1.97, 1.97 );
setScaleKey( spep_2 + 12, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 14, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 16, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 18, 1, 1.74, 1.74 );
setScaleKey( spep_2 + 21, 1, 1.7, 1.7 );
setScaleKey( spep_2 + 22, 1, 0.74, 0.74 );
setScaleKey( spep_2 + 24, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 26, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 28, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 30, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 32, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 34, 1, 1.28, 1.28 );
setScaleKey( spep_2 + 36, 1, 1.33, 1.33 );
setScaleKey( spep_2 + 38, 1, 1.37, 1.37 );
setScaleKey( spep_2 + 40, 1, 1.41, 1.41 );
setScaleKey( spep_2 + 42, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 44, 1, 1.45, 1.45 );
setScaleKey( spep_2 + 46, 1, 1.47, 1.47 );
setScaleKey( spep_2 + 48, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 50, 1, 1.49, 1.49 );
setScaleKey( spep_2 + 52, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 54, 1, 1.5, 1.5 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 + 21, 1, 0 );
setRotateKey( spep_2 + 22, 1, -99 );
setRotateKey( spep_2 + 24, 1, -94 );
setRotateKey( spep_2 + 26, 1, -90.3 );
setRotateKey( spep_2 + 28, 1, -87.4 );
setRotateKey( spep_2 + 30, 1, -85.1 );
setRotateKey( spep_2 + 32, 1, -83.2 );
setRotateKey( spep_2 + 34, 1, -81.7 );
setRotateKey( spep_2 + 36, 1, -80.4 );
setRotateKey( spep_2 + 38, 1, -79.3 );
setRotateKey( spep_2 + 40, 1, -78.5 );
setRotateKey( spep_2 + 42, 1, -77.8 );
setRotateKey( spep_2 + 44, 1, -77.3 );
setRotateKey( spep_2 + 46, 1, -76.8 );
setRotateKey( spep_2 + 48, 1, -76.5 );
setRotateKey( spep_2 + 50, 1, -76.3 );
setRotateKey( spep_2 + 52, 1, -76.1 );
setRotateKey( spep_2 + 54, 1, -76 );

--SE
playSe( spep_2 , 1018 );  --敵に突進
playSe( spep_2+24 , 1010 );  --蹴り上げ
playSe( spep_2+72 , 1013 );  --着地
playSe( spep_2+108 , 9 );  --敵を追いかける

-- ** ホワイトフェード ** --
entryFade( spep_2 + 18, 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_2 + 132, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

--次の準備
spep_3=spep_2+140;
------------------------------------------------------
-- パンチ
------------------------------------------------------
--エフェクトの再生
punch = entryEffectLife( spep_3 + 0, SP_03x, 126, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_3 + 0, punch, 0, 0 , 0 );
setEffMoveKey( spep_3 + 126, punch, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, punch, 1.0, 1.0 );
setEffScaleKey( spep_3 + 126, punch, 1.0, 1.0 );
setEffAlphaKey( spep_3 + 0, punch, 255 );
setEffAlphaKey( spep_3 + 125, punch, 255 );
setEffAlphaKey( spep_3 + 126, punch, 255 );
setEffRotateKey( spep_3 + 0, punch, 0 );
setEffRotateKey( spep_3 + 126, punch, 0 );

--敵の動き
setDisp( spep_3  + 0, 1, 1 );
setDisp( spep_3  + 122, 1, 0 );

changeAnime( spep_3  + 0, 1, 107 );

setMoveKey( spep_3  + 0, 1, -510.1, -254 , 0 );
--setMoveKey( spep_3 -3 + 2, 1, -467.2, -250.8 , 0 );
setMoveKey( spep_3 -3 + 4, 1, -427.4, -247.8 , 0 );
setMoveKey( spep_3 -3 + 6, 1, -390.4, -245 , 0 );
setMoveKey( spep_3 -3 + 8, 1, -355.9, -242.4 , 0 );
setMoveKey( spep_3 -3 + 10, 1, -323.7, -240 , 0 );
setMoveKey( spep_3 -3 + 12, 1, -293.7, -237.7 , 0 );
setMoveKey( spep_3 -3 + 14, 1, -265.5, -235.6 , 0 );
setMoveKey( spep_3 -3 + 16, 1, -239.3, -233.6 , 0 );
setMoveKey( spep_3 -3 + 18, 1, -214.8, -231.8 , 0 );
setMoveKey( spep_3 -3 + 20, 1, -191.9, -230.1 , 0 );
setMoveKey( spep_3 -3 + 22, 1, -170.5, -228.4 , 0 );
setMoveKey( spep_3 -3 + 24, 1, -150.4, -227 , 0 );
setMoveKey( spep_3 -3 + 26, 1, -131.9, -225.5 , 0 );
setMoveKey( spep_3 -3 + 28, 1, -114.5, -224.3 , 0 );
setMoveKey( spep_3 -3 + 30, 1, -98.4, -223 , 0 );
setMoveKey( spep_3 -3 + 32, 1, -83.5, -221.9 , 0 );
setMoveKey( spep_3 -3 + 34, 1, -69.6, -220.9 , 0 );
setMoveKey( spep_3 -3 + 36, 1, -56.8, -219.9 , 0 );
setMoveKey( spep_3 -3 + 38, 1, -45, -219 , 0 );
setMoveKey( spep_3 -3 + 40, 1, -34.2, -218.2 , 0 );
setMoveKey( spep_3 -3 + 42, 1, -24.4, -217.5 , 0 );
setMoveKey( spep_3 -3 + 44, 1, -15.4, -216.8 , 0 );
setMoveKey( spep_3 -3 + 46, 1, -7.4, -216.2 , 0 );
setMoveKey( spep_3 -3 + 48, 1, -0.1, -215.7 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 6.3, -215.2 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 12, -214.7 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 17, -214.4 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 21.6, -214 , 0 );
setMoveKey( spep_3 -3 + 58, 1, 26.2, -213.7 , 0 );
--setMoveKey( spep_3  + 60, 1, 16.9, -228.2 , 0 );
setMoveKey( spep_3  + 60, 1, 108.5, -193.6 , 0 );
setMoveKey( spep_3 -3 + 64, 1, -85.2, -309.3 , 0 );
setMoveKey( spep_3 -3 + 66, 1, 148, -318.8 , 0 );
setMoveKey( spep_3 -3 + 68, 1, 66.1, -210.5 , 0 );
setMoveKey( spep_3 -3 + 70, 1, 74.9, -323 , 0 );
setMoveKey( spep_3 -3 + 72, 1, -31.6, -265.6 , 0 );
setMoveKey( spep_3 -3 + 74, 1, 70, -281.9 , 0 );
setMoveKey( spep_3 -3 + 76, 1, -5, -218.9 , 0 );
setMoveKey( spep_3 -3 + 78, 1, 75, -265.4 , 0 );
setMoveKey( spep_3 -3 + 80, 1, 81.2, -239.9 , 0 );
setMoveKey( spep_3 -3 + 82, 1, 6.5, -280.1 , 0 );
setMoveKey( spep_3 -3 + 84, 1, 64.1, -218.7 , 0 );
setMoveKey( spep_3 -3 + 86, 1, 6.5, -226.6 , 0 );
setMoveKey( spep_3 -3 + 88, 1, 17.7, -208.6 , 0 );
setMoveKey( spep_3 -3 + 90, 1, 44.4, -230.9 , 0 );
setMoveKey( spep_3 -3 + 92, 1, 18.9, -216.2 , 0 );
setMoveKey( spep_3 -3 + 94, 1, 37.4, -226 , 0 );
setMoveKey( spep_3 -3 + 96, 1, 18.9, -221.1 , 0 );
setMoveKey( spep_3 -3 + 98, 1, 18.9, -228.6 , 0 );
setMoveKey( spep_3 -3 + 100, 1, 22.5, -259.3 , 0 );
setMoveKey( spep_3 -3 + 102, 1, 199.6, -510.3 , 0 );
setMoveKey( spep_3 -3 + 104, 1, 326.2, -689.9 , 0 );
setMoveKey( spep_3 -3 + 106, 1, 414.4, -814.9 , 0 );
setMoveKey( spep_3 -3 + 108, 1, 474.9, -900.6 , 0 );
setMoveKey( spep_3 -3 + 110, 1, 516.4, -959.4 , 0 );
setMoveKey( spep_3 -3 + 112, 1, 545.3, -1000.5 , 0 );
setMoveKey( spep_3 -3 + 114, 1, 566.6, -1030.7 , 0 );
setMoveKey( spep_3 -3 + 116, 1, 583.4, -1054.4 , 0 );
setMoveKey( spep_3 -3 + 126, 1, 583.4, -1054.4 , 0 );
--setMoveKey( spep_3 -3 + 118, 1, -571, -272.8 , 0 );
--setMoveKey( spep_3 -3 + 120, 1, -523.8, -269.4 , 0 );
--setMoveKey( spep_3 -3 + 122, 1, -480, -266.1 , 0 );
--setMoveKey( spep_3 -3 + 124, 1, -439.3, -263 , 0 );
--setMoveKey( spep_3 -3 + 126, 1, -401.4, -260.1 , 0 );
--setMoveKey( spep_3 -3 + 128, 1, -365.9, -257.5 , 0 );

setScaleKey( spep_3  + 0, 1, 0.57, 0.57 );
--setScaleKey( spep_3 -3 + 2, 1, 0.6, 0.6 );
setScaleKey( spep_3 -3 + 4, 1, 0.62, 0.62 );
setScaleKey( spep_3 -3 + 6, 1, 0.64, 0.64 );
setScaleKey( spep_3 -3 + 8, 1, 0.66, 0.66 );
setScaleKey( spep_3 -3 + 10, 1, 0.68, 0.68 );
setScaleKey( spep_3 -3 + 12, 1, 0.7, 0.7 );
setScaleKey( spep_3 -3 + 14, 1, 0.72, 0.72 );
setScaleKey( spep_3 -3 + 16, 1, 0.74, 0.74 );
setScaleKey( spep_3 -3 + 18, 1, 0.75, 0.75 );
setScaleKey( spep_3 -3 + 20, 1, 0.76, 0.76 );
setScaleKey( spep_3 -3 + 22, 1, 0.78, 0.78 );
setScaleKey( spep_3 -3 + 24, 1, 0.79, 0.79 );
setScaleKey( spep_3 -3 + 26, 1, 0.8, 0.8 );
setScaleKey( spep_3 -3 + 28, 1, 0.81, 0.81 );
setScaleKey( spep_3 -3 + 30, 1, 0.82, 0.82 );
setScaleKey( spep_3 -3 + 32, 1, 0.83, 0.83 );
setScaleKey( spep_3 -3 + 34, 1, 0.84, 0.84 );
setScaleKey( spep_3 -3 + 36, 1, 0.85, 0.85 );
setScaleKey( spep_3 -3 + 38, 1, 0.86, 0.86 );
setScaleKey( spep_3 -3 + 40, 1, 0.86, 0.86 );
setScaleKey( spep_3 -3 + 42, 1, 0.87, 0.87 );
setScaleKey( spep_3 -3 + 44, 1, 0.87, 0.87 );
setScaleKey( spep_3 -3 + 46, 1, 0.88, 0.88 );
setScaleKey( spep_3 -3 + 48, 1, 0.88, 0.88 );
setScaleKey( spep_3 -3 + 50, 1, 0.89, 0.89 );
setScaleKey( spep_3 -3 + 54, 1, 0.89, 0.89 );
setScaleKey( spep_3 -3 + 56, 1, 0.9, 0.9 );
setScaleKey( spep_3 -3 + 58, 1, 0.9, 0.9 );
setScaleKey( spep_3 -3 + 60, 1, 0.99, 0.99 );
setScaleKey( spep_3 -3 + 100, 1, 0.99, 0.99 );
setScaleKey( spep_3 -3 + 102, 1, 1.12, 1.12 );
setScaleKey( spep_3 -3 + 104, 1, 1.23, 1.23 );
setScaleKey( spep_3 -3 + 106, 1, 1.3, 1.3 );
setScaleKey( spep_3 -3 + 108, 1, 1.34, 1.34 );
setScaleKey( spep_3 -3 + 110, 1, 1.38, 1.38 );
setScaleKey( spep_3 -3 + 112, 1, 1.4, 1.4 );
setScaleKey( spep_3 -3 + 114, 1, 1.42, 1.42 );
setScaleKey( spep_3 -3 + 116, 1, 1.43, 1.43 );
setScaleKey( spep_3 -3 + 118, 1, 0.63, 0.63 );
setScaleKey( spep_3 -3 + 120, 1, 0.66, 0.66 );
setScaleKey( spep_3 -3 + 122, 1, 0.68, 0.68 );
setScaleKey( spep_3 -3 + 124, 1, 0.7, 0.7 );
setScaleKey( spep_3 -3 + 126, 1, 0.73, 0.73 );
--setScaleKey( spep_3 -3 + 125, 1, 0.75, 0.75 );

setRotateKey( spep_3  + 0, 1, -45.2 );
--setRotateKey( spep_3 -3 + 2, 1, -45.2 );
setRotateKey( spep_3 -3 + 4, 1, -45.1 );
setRotateKey( spep_3 -3 + 76, 1, -45.1 );
setRotateKey( spep_3 -3 + 78, 1, -45 );
setRotateKey( spep_3 -3 + 98, 1, -45 );
setRotateKey( spep_3 -3 + 100, 1, -25 );
setRotateKey( spep_3 -3 + 116, 1, -25 );
setRotateKey( spep_3 -3 + 118, 1, -45.2 );
setRotateKey( spep_3 -3 + 120, 1, -45.2 );
setRotateKey( spep_3 -3 + 122, 1, -45.1 );
setRotateKey( spep_3 -3 + 126, 1, -45.1 );

--文字エントリー
ctbaki2 = entryEffectLife( spep_3 -2 + 62,  10020, 22, 0x100, -1, 0, -115.7, -155.6 );--バキッ

setEffMoveKey( spep_3 -2 + 62, ctbaki2, -115.7, -155.6 , 0 );
setEffMoveKey( spep_3 -2 + 64, ctbaki2, -124, -204.7 , 0 );
setEffMoveKey( spep_3 -2 + 66, ctbaki2, -123.2, -231.8 , 0 );
setEffMoveKey( spep_3 -2 + 68, ctbaki2, -119.1, -208.7 , 0 );
setEffMoveKey( spep_3 -2 + 70, ctbaki2, -118.1, -223 , 0 );
setEffMoveKey( spep_3 -2 + 72, ctbaki2, -118.2, -207.8 , 0 );
setEffMoveKey( spep_3 -2 + 74, ctbaki2, -119.8, -222 , 0 );
setEffMoveKey( spep_3 -2 + 76, ctbaki2, -122.2, -207.7 , 0 );
setEffMoveKey( spep_3 -2 + 78, ctbaki2, -116.6, -216.6 , 0 );
setEffMoveKey( spep_3 -2 + 80, ctbaki2, -120, -203.4 , 0 );
setEffMoveKey( spep_3 -2 + 82, ctbaki2, -114.2, -211.1 , 0 );
setEffMoveKey( spep_3 -2 + 84, ctbaki2, -118.4, -199.1 , 0 );

setEffScaleKey( spep_3 -2 + 62, ctbaki2, 0.91, 0.91 );
setEffScaleKey( spep_3 -2 + 64, ctbaki2, 1.95, 1.95 );
setEffScaleKey( spep_3 -2 + 66, ctbaki2, 2.48, 2.48 );
setEffScaleKey( spep_3 -2 + 68, ctbaki2, 2.36, 2.36 );
setEffScaleKey( spep_3 -2 + 70, ctbaki2, 2.24, 2.24 );
setEffScaleKey( spep_3 -2 + 72, ctbaki2, 2.12, 2.12 );
setEffScaleKey( spep_3 -2 + 74, ctbaki2, 2.12, 2.12 );
setEffScaleKey( spep_3 -2 + 76, ctbaki2, 2.05, 2.05 );
setEffScaleKey( spep_3 -2 + 78, ctbaki2, 1.98, 1.98 );
setEffScaleKey( spep_3 -2 + 80, ctbaki2, 1.9, 1.9 );
setEffScaleKey( spep_3 -2 + 82, ctbaki2, 1.83, 1.83 );
setEffScaleKey( spep_3 -2 + 84, ctbaki2, 1.76, 1.76 );

setEffRotateKey( spep_3 -2 + 62, ctbaki2, -19 );
setEffRotateKey( spep_3 -2 + 64, ctbaki2, -19 );
setEffRotateKey( spep_3 -2 + 66, ctbaki2, -13 );
setEffRotateKey( spep_3 -2 + 68, ctbaki2, -24 );
setEffRotateKey( spep_3 -2 + 70, ctbaki2, -16 );
setEffRotateKey( spep_3 -2 + 72, ctbaki2, -24 );
setEffRotateKey( spep_3 -2 + 74, ctbaki2, -17 );
setEffRotateKey( spep_3 -2 + 76, ctbaki2, -19.4 );
setEffRotateKey( spep_3 -2 + 78, ctbaki2, -21.8 );
setEffRotateKey( spep_3 -2 + 80, ctbaki2, -24.2 );
setEffRotateKey( spep_3 -2 + 82, ctbaki2, -26.6 );
setEffRotateKey( spep_3 -2 + 84, ctbaki2, -29 );

setEffAlphaKey( spep_3 -2 + 62, ctbaki2, 255 );
setEffAlphaKey( spep_3 -2 + 74, ctbaki2, 255 );
setEffAlphaKey( spep_3 -2 + 76, ctbaki2, 204 );
setEffAlphaKey( spep_3 -2 + 78, ctbaki2, 153 );
setEffAlphaKey( spep_3 -2 + 80, ctbaki2, 102 );
setEffAlphaKey( spep_3 -2 + 82, ctbaki2, 51 );
setEffAlphaKey( spep_3 -2 + 84, ctbaki2, 0 );

--集中線
shuchusen3 = entryEffectLife( spep_3 + 60,  906, 66, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_3 + 60, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_3 + 126, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_3 + 60, shuchusen3, 1.5, 1.5 );
setEffScaleKey( spep_3 + 126, shuchusen3, 1.5, 1.5 );

setEffRotateKey( spep_3 + 60, shuchusen3, 180 );
setEffRotateKey( spep_3 + 126, shuchusen3, 180 );

setEffAlphaKey( spep_3 + 60, shuchusen3, 255 );
setEffAlphaKey( spep_3 + 125, shuchusen3, 255 );
setEffAlphaKey( spep_3 + 126, shuchusen3, 0 );

-- ** ホワイトフェード ** --
entryFade( spep_3 + 56, 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
--entryFade( spep_3 + 122, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

--SE
playSe( spep_3 , 1018 );  --敵に突進
playSe( spep_3+60 , 1011 );  --パンチ

--次の準備
spep_4=spep_3+126;
------------------------------------------------------
-- 爆破
------------------------------------------------------
--エフェクトの再生
explosion = entryEffect( spep_4 + 0, SP_04x,0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_4 + 0, explosion, 0, 0 , 0 );
setEffMoveKey( spep_4 + 120, explosion, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, explosion, 1.0, 1.0 );
setEffScaleKey( spep_4 + 120, explosion, 1.0, 1.0 );
setEffAlphaKey( spep_4 + 0, explosion, 255 );
setEffAlphaKey( spep_4 + 120, explosion, 255 );
setEffRotateKey( spep_4 + 0, explosion, 0 );
setEffRotateKey( spep_4 + 120, explosion, 0 );

--集中線
shuchusen4 = entryEffectLife( spep_4 + 0,  906, 120, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_4 + 0, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_4 + 120, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, shuchusen4, 1.5, 1.5 );
setEffScaleKey( spep_4 + 120, shuchusen4, 1.5, 1.5 );

setEffRotateKey( spep_4 + 0, shuchusen4, 180 );
setEffRotateKey( spep_4 + 120, shuchusen4, 180 );

setEffAlphaKey( spep_4 + 0, shuchusen4, 255 );
setEffAlphaKey( spep_4 + 120, shuchusen4, 255 );

--敵の動き
setDisp( spep_4  + 0, 1, 1 );
setDisp( spep_4 -1 + 0+16, 1, 0 );

changeAnime( spep_4 -1 + 0, 1, 105 );

setMoveKey( spep_4  + 0, 1, 48, -33.7 , 0 );
setMoveKey( spep_4 -1 + 2, 1, 48.1, -40.1 , 0 );
setMoveKey( spep_4 -1 + 4, 1, 48.1, -44.4 , 0 );
setMoveKey( spep_4 -1 + 6, 1, 48, -47.7 , 0 );
setMoveKey( spep_4 -1 + 8, 1, 48, -50.3 , 0 );
setMoveKey( spep_4 -1 + 10, 1, 48, -52.4 , 0 );
setMoveKey( spep_4 -1 + 12, 1, 48.1, -54.1 , 0 );
setMoveKey( spep_4 -1 + 14, 1, 48, -55.4 , 0 );
setMoveKey( spep_4 -1 + 16, 1, 48.1, -56.5 , 0 );

setScaleKey( spep_4  + 0, 1, 2.5, 2.5 );
setScaleKey( spep_4 -1 + 2, 1, 2.11, 2.11 );
setScaleKey( spep_4 -1 + 4, 1, 1.85, 1.85 );
setScaleKey( spep_4 -1 + 6, 1, 1.65, 1.65 );
setScaleKey( spep_4 -1 + 8, 1, 1.49, 1.49 );
setScaleKey( spep_4 -1 + 10, 1, 1.36, 1.36 );
setScaleKey( spep_4 -1 + 12, 1, 1.25, 1.25 );
setScaleKey( spep_4 -1 + 14, 1, 1.17, 1.17 );
setScaleKey( spep_4 -1 + 16, 1, 1.1, 1.1 );

setRotateKey( spep_4  + 0, 1, 0 );
setRotateKey( spep_4 -1 + 16, 1, 0 );

--SE
playSe( spep_4+16, 1023 );  --敵に突進

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 5 );
--entryFade( spep_4+ 106, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_4 +  105);



end 