--1014980 超サイヤ人ブロリー_ギガンティックインパクト
--sp_effect_a9_00052


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
--SE_08 = 1042; --カットイン
SE_09 = 1023; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音

SE_12 = 09;

--味方
SP_01=	152696	;--	登場
SP_02=	152697	;--	4気弾
SP_03=	152698	;--	腹気弾（前）
SP_04=	152699	;--	腹気弾（後）
SP_05=	152700	;--	岩打撲（前）
SP_06=	152701	;--	岩打撲（後）

--敵
SP_01x=	152696	;--	登場	
SP_02x=	152702	;--	4気弾	
SP_03x=	152703	;--	腹気弾（前）	(敵)
SP_04x=	152699	;--	腹気弾（後）	(敵)
SP_05x=	152700	;--	岩打撲（前）	
SP_06x=	152701	;--	岩打撲（後）	
	
------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

setDisp( 0, 1, 0);
setMoveKey(   0,   1,    0, -2000, 0);
setMoveKey(   1,   1,    0, -2000 , 0);
setMoveKey(   2,   1,    0, -2000 , 0);
setMoveKey(   3,   1,    0, -2000 , 0);
setMoveKey(   4,   1,    0, -2000 , 0);
setMoveKey(   5,   1,    0, -2000 , 0);
setMoveKey(   6,   1,    0, -2000 , 0);

setScaleKey(   0,   1, 1.6, 1.6);
setScaleKey(   1,   1, 1.6, 1.6);
setScaleKey(   2,   1, 1.6, 1.6);
setScaleKey(   3,   1, 1.6, 1.6);
setScaleKey(   4,   1, 1.6, 1.6);
setScaleKey(   5,   1, 1.6, 1.6);
setScaleKey(   6,   1, 1.6, 1.6);

setRotateKey(   0,   1, 0);
setRotateKey(   1,   1, 0);
setRotateKey(   2,   1, 0);
setRotateKey(   3,   1, 0);
setRotateKey(   4,   1, 0);
setRotateKey(   5,   1, 0);
setRotateKey(   6,   1, 0);

setDisp( 0, 0, 0);
setMoveKey(   0,   0,    0, -2000, 0);
setMoveKey(   1,   0,    0, -2000 , 0);
setMoveKey(   2,   0,    0, -2000 , 0);
setMoveKey(   3,   0,    0, -2000 , 0);
setMoveKey(   4,   0,    0, -2000 , 0);
setMoveKey(   5,   0,    0, -2000 , 0);
setMoveKey(   6,   0,    0, -2000 , 0);

setScaleKey(   0,   0, 1.6, 1.6);
setScaleKey(   1,   0, 1.6, 1.6);
setScaleKey(   2,   0, 1.6, 1.6);
setScaleKey(   3,   0, 1.6, 1.6);
setScaleKey(   4,   0, 1.6, 1.6);
setScaleKey(   5,   0, 1.6, 1.6);
setScaleKey(   6,   0, 1.6, 1.6);

setRotateKey(   0,   0, 0);
setRotateKey(   1,   0, 0);
setRotateKey(   2,   0, 0);
setRotateKey(   3,   0, 0);
setRotateKey(   4,   0, 0);
setRotateKey(   5,   0, 0);
setRotateKey(   6,   0, 0);

multi_frm = 2;

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
--登場
------------------------------------------------------
--初回
spep_0=0;

--エフェクト
appearance=entryEffectLife(spep_0,SP_01,112,0x80,-1,0,0,0);

setEffMoveKey( spep_0 + 0, appearance, 0, 0 , 0 );
setEffMoveKey( spep_0 + 112, appearance, 0, 0 , 0 );

setEffScaleKey(spep_0,appearance,1.0,1.0);
setEffScaleKey(spep_0+112,appearance,1.0,1.0);

setEffRotateKey(spep_0,appearance,0);
setEffRotateKey(spep_0+112,appearance,0);

setEffAlphaKey(spep_0,appearance,255);
setEffAlphaKey(spep_0+112,appearance,255);


-- ** 顔カットイン ** --
speff = entryEffect( spep_0+22, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0+22, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

--文字エントリー
ctgogo = entryEffectLife( spep_0+36,  190006, 74, 0x100, -1, 0, -8.5, 515.5 ); --ゴゴゴ

setEffShake( spep_0+36, ctgogo, 74, 10 );

setEffMoveKey( spep_0+36, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_0+110, ctgogo, -9.9, 515.5 , 0 );

setEffScaleKey( spep_0+36, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_0 + 102, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_0 + 104, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_0 + 106, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_0 + 108, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_0+110, ctgogo, 1.69, 1.69 );

setEffRotateKey( spep_0+36, ctgogo, 0 );
setEffRotateKey( spep_0+110, ctgogo, 0 );

setEffAlphaKey( spep_0+36, ctgogo, 0 );
setEffAlphaKey( spep_0 + 37, ctgogo, 255 );
setEffAlphaKey( spep_0 + 28, ctgogo, 255 );
setEffAlphaKey( spep_0+110, ctgogo, 255 );

--集中線
shuchusen1 = entryEffectLife( spep_0 + 4,  906, 108, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_0 + 4, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 112, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 4, shuchusen1, 1.15, 1.07 );
setEffScaleKey( spep_0 + 112, shuchusen1, 1.15, 1.07 );

setEffRotateKey( spep_0 + 4, shuchusen1, 180 );
setEffRotateKey( spep_0 + 112, shuchusen1, 180 );

setEffAlphaKey( spep_0 + 4, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 5, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 6, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 112, shuchusen1, 255 );

--SE
playSe( spep_0+36, SE_04 );  --ゴゴゴ

--白フェード
entryFade( spep_0 + 102, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

--次の準備
spep_1=spep_0+112;

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
entryFade( spep_1 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

--------------------------------------
--4気弾
--------------------------------------
--エフェクト
kidan=entryEffectLife(spep_2,SP_02,104,0x80,-1,0,0,0);

setEffMoveKey( spep_2 + 0, kidan, 0, 0 , 0 );
setEffMoveKey( spep_2 + 104, kidan, 0, 0 , 0 );

setEffScaleKey(spep_2,kidan,1.2,1.2);
setEffScaleKey(spep_2+104,kidan,1.2,1.2);

setEffRotateKey(spep_2,kidan,0);
setEffRotateKey(spep_2+104,kidan,0);

setEffAlphaKey(spep_2,kidan,255);
setEffAlphaKey(spep_2+104,kidan,255);

--集中線
shuchusen2 = entryEffectLife( spep_2 + 56,  906, 46, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_2 + 56, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 102, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_2 + 56, shuchusen2, 1.15, 1.07 );
setEffScaleKey( spep_2 + 102, shuchusen2, 1.15, 1.07 );

setEffRotateKey( spep_2 + 56, shuchusen2, 180 );
setEffRotateKey( spep_2 + 102, shuchusen2, 180 );

setEffAlphaKey( spep_2 + 56, shuchusen2, 0 );
setEffAlphaKey( spep_2 + 57, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 58, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 102, shuchusen2, 255 );

-- ** 音 ** --
SE1=playSe( spep_2, 17 );--気を溜める奴
stopSe(spep_2 + 40,SE1,0);

--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2+80 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    
    pauseAll( SP_dodge, 67);
    --[[
    --キャラクターの固定
    setMoveKey(SP_dodge, 1,297.9, -17.4 , 0 );
    setScaleKey(SP_dodge , 1, 1.1, 1.1);
    setRotateKey(SP_dodge,   1, 0 );
    
    --キャラクターの固定
    setMoveKey(SP_dodge+8, 1,297.9, -17.4 , 0 );
    setScaleKey(SP_dodge+8 , 1, 1.1, 1.1);
    setRotateKey(SP_dodge+8,   1, 0 );
    ]]
    
    setDisp(SP_dodge+9, 0, 0);
    --setDisp(SP_dodge+9, 1, 0);
    --setMoveKey(SP_dodge+9, 1, 0 , 0, 0);
    --setScaleKey(SP_dodge+9,1,0.9,0.9);
    --setRotateKey(SP_dodge+9,   1, 0);
    
    --setMoveKey(SP_dodge+10, 1, 0 , 0, 0);
    --setScaleKey(SP_dodge+10,  1 , 0.9, 0.9);
    --setRotateKey(SP_dodge+10,   1, 0);
    
    
    --悟飯を画面外に表示
    --setMoveKey(SP_dodge+8, 0, 0 , -54,   0);
    setMoveKey(SP_dodge+9, 1, 1000 , 1000, 0);
    setMoveKey(SP_dodge+10, 1, 1000 , 1000, 0);
    
    
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
    playSe( spep_2 + 42, 1022 );--気を打つ奴
    playSe( spep_2 + 68, SE_04 );--飛んでいく奴
--白フェード
entryFade( spep_2 + 96, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 104;
--------------------------------------
--腹気弾
--------------------------------------
--エフェクト(前)
kidan2_f=entryEffectLife(spep_3,SP_03,120,0x100,-1,0,0,0);

setEffMoveKey( spep_3 + 0, kidan2_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 120, kidan2_f, 0, 0 , 0 );

setEffScaleKey(spep_3,kidan2_f,1.0,1.0);
setEffScaleKey(spep_3+120,kidan2_f,1.0,1.0);

setEffRotateKey(spep_3,kidan2_f,0);
setEffRotateKey(spep_3+120,kidan2_f,0);

setEffAlphaKey(spep_3,kidan2_f,255);
setEffAlphaKey(spep_3+120,kidan2_f,255);


--エフェクト(後)
kidan2_b=entryEffectLife(spep_3,SP_04,120,0x80,-1,0,0,0);

setEffMoveKey( spep_3 + 0, kidan2_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 120, kidan2_b, 0, 0 , 0 );

setEffScaleKey(spep_3,kidan2_b,1.1,1.1);
setEffScaleKey(spep_3+120,kidan2_b,1.1,1.1);

setEffRotateKey(spep_3,kidan2_b,0);
setEffRotateKey(spep_3+120,kidan2_b,0);

setEffAlphaKey(spep_3,kidan2_b,255);
setEffAlphaKey(spep_3+120,kidan2_b,255);

--敵側
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 78, 1, 0 );

changeAnime( spep_3 + 0, 1, 104 );
changeAnime( spep_3-3 + 18, 1, 106 );

setMoveKey( spep_3-3 + 0, 1, 318.3, -0.1 , 0 );
setMoveKey( spep_3-3 + 2, 1, 273.6, -0.1 , 0 );
setMoveKey( spep_3-3 + 4, 1, 228.6, -0.1 , 0 );
setMoveKey( spep_3-3 + 6, 1, 183.7, -0.1 , 0 );
setMoveKey( spep_3-3 + 8, 1, 138.8, -0.1 , 0 );
setMoveKey( spep_3-3 + 10, 1, 93.8, -0.1 , 0 );
setMoveKey( spep_3-3 + 12, 1, 48.9, -0.1 , 0 );
setMoveKey( spep_3-3 + 14, 1, 47.4, -2.1 , 0 );
setMoveKey( spep_3-3 + 17, 1, 46, -4.1 , 0 );
setMoveKey( spep_3-3 + 18, 1, 40.6, 1.7 , 0 );
setMoveKey( spep_3-3 + 20, 1, 47, -13.9 , 0 );
setMoveKey( spep_3-3 + 22, 1, 45.6, -6.2 , 0 );
setMoveKey( spep_3-3 + 24, 1, 44.1, -18 , 0 );
setMoveKey( spep_3-3 + 26, 1, 42.6, -10.2 , 0 );
setMoveKey( spep_3-3 + 28, 1, 31.5, -18 , 0 );
setMoveKey( spep_3-3 + 30, 1, 39.7, -14.2 , 0 );
setMoveKey( spep_3-3 + 32, 1, 28.5, -22 , 0 );
setMoveKey( spep_3-3 + 34, 1, 29, -14.3 , 0 );
setMoveKey( spep_3-3 + 36, 1, 35.3, -29.9 , 0 );
setMoveKey( spep_3-3 + 38, 1, 24.1, -14.5 , 0 );
setMoveKey( spep_3-3 + 40, 1, 25.5, -22.4 , 0 );
setMoveKey( spep_3-3 + 42, 1, 29.1, -20.6 , 0 );
setMoveKey( spep_3-3 + 44, 1, 32.6, -18.8 , 0 );
setMoveKey( spep_3-3 + 46, 1, 36, -17 , 0 );
setMoveKey( spep_3-3 + 48, 1, 39.6, -15.1 , 0 );
setMoveKey( spep_3-3 + 50, 1, 43.1, -13.3 , 0 );
setMoveKey( spep_3-3 + 52, 1, 46.5, -11.5 , 0 );
setMoveKey( spep_3-3 + 54, 1, 54.3, -9.7 , 0 );
setMoveKey( spep_3-3 + 56, 1, 62.3, -7.9 , 0 );
setMoveKey( spep_3-3 + 58, 1, 70.3, -6.1 , 0 );
setMoveKey( spep_3-3 + 60, 1, 78.2, -4.3 , 0 );
setMoveKey( spep_3-3 + 62, 1, 86.2, -2.5 , 0 );
setMoveKey( spep_3-3 + 64, 1, 94.1, -0.7 , 0 );
setMoveKey( spep_3-3 + 66, 1, 102, 1.1 , 0 );
setMoveKey( spep_3-3 + 68, 1, 110, 3 , 0 );
setMoveKey( spep_3-3 + 70, 1, 118, 4.8 , 0 );
setMoveKey( spep_3-3 + 72, 1, 125.9, 6.6 , 0 );
setMoveKey( spep_3-3 + 74, 1, 133.8, 8.4 , 0 );
setMoveKey( spep_3-3 + 76, 1, 141.8, 10.2 , 0 );
setMoveKey( spep_3 + 78, 1, 149.8, 12 , 0 );
--setMoveKey( spep_3-3 + 80, 1, 440, 41 , 0 );
--setMoveKey( spep_3-3 + 82, 1, 401.8, 6.7 , 0 );
--setMoveKey( spep_3-3 + 84, 1, 335.5, 25.1 , 0 );
--setMoveKey( spep_3-3 + 86, 1, 320.7, 6.5 , 0 );
--setMoveKey( spep_3-3 + 88, 1, 315, 36.5 , 0 );
--setMoveKey( spep_3-3 + 90, 1, 326.4, 2.2 , 0 );
--setMoveKey( spep_3-3 + 92, 1, 337.8, 21.7 , 0 );
--setMoveKey( spep_3-3 + 94, 1, 365.3, 4.2 , 0 );
--setMoveKey( spep_3-3 + 96, 1, 416.1, 21.7 , 0 );
--setMoveKey( spep_3-3 + 98, 1, 465, 8.1 , 0 );
--setMoveKey( spep_3-3 + 100, 1, 483.2, 17.8 , 0 );
--setMoveKey( spep_3-3 + 102, 1, 501.5, 8 , 0 );
--setMoveKey( spep_3-3 + 104, 1, 519.7, 8 , 0 );
--setMoveKey( spep_3-3 + 106, 1, 537.9, 8 , 0 );
--setMoveKey( spep_3-3 + 108, 1, 556, 8 , 0 );
--setMoveKey( spep_3-3 + 110, 1, 576.6, 8 , 0 );
--setMoveKey( spep_3-3 + 112, 1, 597.1, 8 , 0 );
--setMoveKey( spep_3-3 + 114, 1, 617.8, 8 , 0 );
--setMoveKey( spep_3-3 + 116, 1, 638.4, 8 , 0 );
--setMoveKey( spep_3 + 118, 1, 659.1, 8 , 0 );

setScaleKey( spep_3 + 0, 1, 1, 1 );
setScaleKey( spep_3 + 78, 1, 1, 1 );
--setScaleKey( spep_3-3 + 80, 1, 1, 1.4 );
--setScaleKey( spep_3-3 + 82, 1, 1.32, 1.32 );
--setScaleKey( spep_3-3 + 84, 1, 1.24, 1.24 );
--setScaleKey( spep_3-3 + 86, 1, 1.16, 1.16 );
--setScaleKey( spep_3-3 + 88, 1, 1.08, 1.08 );
--setScaleKey( spep_3-3 + 90, 1, 1, 1 );
--setScaleKey( spep_3 + 118, 1, 1, 1 );

setRotateKey( spep_3-3 + 0, 1, 0 );
setRotateKey( spep_3-3 + 17, 1, 0 );
setRotateKey( spep_3-3 + 18, 1, -44.2 );
setRotateKey( spep_3-3 + 36, 1, -44.2 );
setRotateKey( spep_3-3 + 38, 1, -43.3 );
setRotateKey( spep_3-3 + 40, 1, -42.3 );
setRotateKey( spep_3-3 + 42, 1, -41.4 );
setRotateKey( spep_3-3 + 44, 1, -40.4 );
setRotateKey( spep_3-3 + 46, 1, -39.5 );
setRotateKey( spep_3-3 + 48, 1, -38.5 );
setRotateKey( spep_3-3 + 50, 1, -37.6 );
setRotateKey( spep_3-3 + 52, 1, -36.7 );
setRotateKey( spep_3-3 + 54, 1, -35.7 );
setRotateKey( spep_3-3 + 56, 1, -34.8 );
setRotateKey( spep_3-3 + 58, 1, -33.8 );
setRotateKey( spep_3-3 + 60, 1, -32.9 );
setRotateKey( spep_3-3 + 62, 1, -31.9 );
setRotateKey( spep_3-3 + 64, 1, -31 );
setRotateKey( spep_3-3 + 66, 1, -30.1 );
setRotateKey( spep_3-3 + 68, 1, -29.1 );
setRotateKey( spep_3-3 + 70, 1, -28.2 );
setRotateKey( spep_3-3 + 72, 1, -27.2 );
setRotateKey( spep_3-3 + 74, 1, -26.3 );
setRotateKey( spep_3-3 + 76, 1, -25.3 );
setRotateKey( spep_3-3 + 78, 1, -24.4 );
--setRotateKey( spep_3 + 118, 1, -24.4 );

--SE
playSe( spep_3+16, 1023 );  --当たる奴
playSe( spep_3+40, SE_04 );  --飛んでくる奴
playSe( spep_3+78, 1011 );  --飛んでくる奴
playSe( spep_3+90, 1023 );  --当たる奴

--白フェード
entryFade( spep_3 + 112, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 120;

--------------------------------------
--岩打撲
--------------------------------------
--エフェクト(前)
hit_f=entryEffect(spep_4,SP_05,0x100,-1,0,0,0);

setEffMoveKey( spep_4 + 0, hit_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 220, hit_f, 0, 0 , 0 );

setEffScaleKey(spep_4,hit_f,1.0,1.0);
setEffScaleKey(spep_4+220,hit_f,1.0,1.0);

setEffRotateKey(spep_4,hit_f,0);
setEffRotateKey(spep_4+220,hit_f,0);

setEffAlphaKey(spep_4,hit_f,255);
setEffAlphaKey(spep_4+220,hit_f,255);

--エフェクト(後)
hit_b=entryEffect(spep_4,SP_06,0x80,-1,0,0,0);

setEffMoveKey( spep_4 + 0, hit_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 220, hit_b, 0, 0 , 0 );

setEffScaleKey(spep_4,hit_b,1.0,1.0);
setEffScaleKey(spep_4+220,hit_b,1.0,1.0);

setEffRotateKey(spep_4,hit_b,0);
setEffRotateKey(spep_4+220,hit_b,0);

setEffAlphaKey(spep_4,hit_b,255);
setEffAlphaKey(spep_4+220,hit_b,255);

--敵側
setDisp( spep_4 + 0, 1, 1 );

changeAnime( spep_4 + 0, 1, 108 );
changeAnime( spep_4-3 + 32, 1, 106 );

setMoveKey( spep_4-3 + 0, 1, -127.5, -89.4 , 0 );
setMoveKey( spep_4-3 + 2, 1, -120.4, -85.1 , 0 );
setMoveKey( spep_4-3 + 4, 1, -113.2, -80.9 , 0 );
setMoveKey( spep_4-3 + 6, 1, -106.2, -76.6 , 0 );
setMoveKey( spep_4-3 + 8, 1, -98.9, -72.4 , 0 );
setMoveKey( spep_4-3 + 10, 1, -91.7, -68.2 , 0 );
setMoveKey( spep_4-3 + 12, 1, -84.7, -64 , 0 );
setMoveKey( spep_4-3 + 14, 1, -77.5, -59.7 , 0 );
setMoveKey( spep_4-3 + 16, 1, -70.5, -55.5 , 0 );
setMoveKey( spep_4-3 + 18, 1, -46.7, -41.4 , 0 );
setMoveKey( spep_4-3 + 20, 1, -23, -27.4 , 0 );
setMoveKey( spep_4-3 + 22, 1, 0.6, -13.3 , 0 );
setMoveKey( spep_4-3 + 24, 1, 24.2, 0.7 , 0 );
setMoveKey( spep_4-3 + 26, 1, 48, 14.8 , 0 );
setMoveKey( spep_4-3 + 28, 1, 66.3, 39.7 , 0 );
setMoveKey( spep_4-3 + 31, 1, 75.8, 20.8 , 0 );
setMoveKey( spep_4-3 + 32, 1, 73.1, 32.9 , 0 );
setMoveKey( spep_4-3 + 34, 1, 60.9, 23.5 , 0 );
setMoveKey( spep_4-3 + 36, 1, 74.4, 27.5 , 0 );
setMoveKey( spep_4-3 + 38, 1, 60.9, 39.7 , 0 );
setMoveKey( spep_4-3 + 40, 1, 70.4, 20.8 , 0 );
setMoveKey( spep_4-3 + 42, 1, 73.1, 32.9 , 0 );
setMoveKey( spep_4-3 + 44, 1, 60.9, 23.5 , 0 );
setMoveKey( spep_4-3 + 46, 1, 74.4, 27.5 , 0 );
setMoveKey( spep_4-3 + 48, 1, 60.9, 39.7 , 0 );
setMoveKey( spep_4-3 + 50, 1, 70.4, 20.8 , 0 );
setMoveKey( spep_4-3 + 52, 1, 73.1, 32.9 , 0 );
setMoveKey( spep_4-3 + 54, 1, 60.9, 23.5 , 0 );
setMoveKey( spep_4-3 + 56, 1, 74.4, 27.5 , 0 );
setMoveKey( spep_4-3 + 58, 1, 60.9, 39.7 , 0 );
setMoveKey( spep_4-3 + 60, 1, 70.4, 20.8 , 0 );
setMoveKey( spep_4-3 + 62, 1, 73.1, 32.9 , 0 );
setMoveKey( spep_4-3 + 64, 1, 60.9, 23.5 , 0 );
setMoveKey( spep_4-3 + 66, 1, 74.4, 27.5 , 0 );
setMoveKey( spep_4-3 + 68, 1, 72.4, 31.6 , 0 );
setMoveKey( spep_4-3 + 70, 1, 76.5, 21.4 , 0 );
setMoveKey( spep_4-3 + 72, 1, 76.5, 31.6 , 0 );
setMoveKey( spep_4-3 + 74, 1, 72.4, 23.4 , 0 );
setMoveKey( spep_4-3 + 76, 1, 72.4, 31.6 , 0 );
setMoveKey( spep_4-3 + 78, 1, 76.5, 21.4 , 0 );
setMoveKey( spep_4-3 + 80, 1, 76.5, 31.6 , 0 );
setMoveKey( spep_4-3 + 82, 1, 72.4, 23.4 , 0 );
setMoveKey( spep_4-3 + 84, 1, 72.4, 31.6 , 0 );
setMoveKey( spep_4-3 + 86, 1, 76.5, 21.4 , 0 );
setMoveKey( spep_4-3 + 88, 1, 76.5, 31.6 , 0 );
setMoveKey( spep_4-3 + 90, 1, 72.4, 23.4 , 0 );
setMoveKey( spep_4 + 220, 1, 72.4, 23.4 , 0 );

setScaleKey( spep_4-3 + 0, 1, 2.26, 2.26 );
setScaleKey( spep_4-3 + 2, 1, 2.19, 2.19 );
setScaleKey( spep_4-3 + 4, 1, 2.13, 2.13 );
setScaleKey( spep_4-3 + 6, 1, 2.06, 2.06 );
setScaleKey( spep_4-3 + 8, 1, 2, 2 );
setScaleKey( spep_4-3 + 10, 1, 1.94, 1.94 );
setScaleKey( spep_4-3 + 12, 1, 1.87, 1.87 );
setScaleKey( spep_4-3 + 14, 1, 1.81, 1.81 );
setScaleKey( spep_4-3 + 16, 1, 1.74, 1.74 );
setScaleKey( spep_4-3 + 18, 1, 1.49, 1.49 );
setScaleKey( spep_4-3 + 20, 1, 1.23, 1.23 );
setScaleKey( spep_4-3 + 22, 1, 0.97, 0.97 );
setScaleKey( spep_4-3 + 24, 1, 0.71, 0.71 );
setScaleKey( spep_4-3 + 26, 1, 0.46, 0.46 );
setScaleKey( spep_4-3 + 28, 1, 0.2, 0.2 );
setScaleKey( spep_4 + 220, 1, 0.2, 0.2 );

setRotateKey( spep_4-3 + 0, 1, 0 );
setRotateKey( spep_4-3 + 31, 1, 0 );
setRotateKey( spep_4-3 + 32, 1, -51.2 );
setRotateKey( spep_4 + 220, 1, -51.2 );

--setShakeChara(spep_4-3 + 90,1,133,5);

--SE
playSe( spep_4, 44 );  --飛んでいく奴
playSe( spep_4+24, 1011 );  --当たる奴

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 24 );
entryFade( spep_4 + 200, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_4 + 210 );

else 
------------------------------------------------------
--敵側
------------------------------------------------------
------------------------------------------------------
--登場
------------------------------------------------------
--初回
spep_0=0;

--エフェクト
appearance=entryEffectLife(spep_0,SP_01x,112,0x80,-1,0,0,0);

setEffMoveKey( spep_0 + 0, appearance, 0, 0 , 0 );
setEffMoveKey( spep_0 + 112, appearance, 0, 0 , 0 );

setEffScaleKey(spep_0,appearance,-1.0,1.0);
setEffScaleKey(spep_0+112,appearance,-1.0,1.0);

setEffRotateKey(spep_0,appearance,0);
setEffRotateKey(spep_0+112,appearance,0);

setEffAlphaKey(spep_0,appearance,255);
setEffAlphaKey(spep_0+112,appearance,255);


-- ** 顔カットイン ** --
--speff = entryEffect( spep_0+22, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0+22, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

--文字エントリー
ctgogo = entryEffectLife( spep_0+36,  190006, 74, 0x100, -1, 0, -8.5, 515.5 ); --ゴゴゴ

setEffShake( spep_0+36, ctgogo, 74, 10 );

setEffMoveKey( spep_0+36, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_0+110, ctgogo, -9.9, 515.5 , 0 );

setEffScaleKey( spep_0+36, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_0 + 102, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_0 + 104, ctgogo, -1.0, 1.0 );
setEffScaleKey( spep_0 + 106, ctgogo, -1.09, 1.09 );
setEffScaleKey( spep_0 + 108, ctgogo, -1.39, 1.39 );
setEffScaleKey( spep_0+110, ctgogo, -1.69, 1.69 );

setEffRotateKey( spep_0+36, ctgogo, 0 );
setEffRotateKey( spep_0+110, ctgogo, 0 );

setEffAlphaKey( spep_0+36, ctgogo, 0 );
setEffAlphaKey( spep_0 + 37, ctgogo, 255 );
setEffAlphaKey( spep_0 + 28, ctgogo, 255 );
setEffAlphaKey( spep_0+110, ctgogo, 255 );

--集中線
shuchusen1 = entryEffectLife( spep_0 + 4,  906, 108, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_0 + 4, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 112, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 4, shuchusen1, 1.15, 1.07 );
setEffScaleKey( spep_0 + 112, shuchusen1, 1.15, 1.07 );

setEffRotateKey( spep_0 + 4, shuchusen1, 180 );
setEffRotateKey( spep_0 + 112, shuchusen1, 180 );

setEffAlphaKey( spep_0 + 4, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 5, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 6, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 112, shuchusen1, 255 );

--SE
playSe( spep_0+36, SE_04 );  --ゴゴゴ

--白フェード
entryFade( spep_0 + 102, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

--次の準備
spep_1=spep_0+112;

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
entryFade( spep_1 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

--------------------------------------
--4気弾
--------------------------------------
--エフェクト
kidan=entryEffectLife(spep_2,SP_02x,104,0x80,-1,0,0,0);

setEffMoveKey( spep_2 + 0, kidan, 0, 0 , 0 );
setEffMoveKey( spep_2 + 104, kidan, 0, 0 , 0 );

setEffScaleKey(spep_2,kidan,1.2,1.2);
setEffScaleKey(spep_2+104,kidan,1.2,1.2);

setEffRotateKey(spep_2,kidan,0);
setEffRotateKey(spep_2+104,kidan,0);

setEffAlphaKey(spep_2,kidan,255);
setEffAlphaKey(spep_2+104,kidan,255);

--集中線
shuchusen2 = entryEffectLife( spep_2 + 56,  906, 46, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_2 + 56, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 102, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_2 + 56, shuchusen2, 1.15, 1.07 );
setEffScaleKey( spep_2 + 102, shuchusen2, 1.15, 1.07 );

setEffRotateKey( spep_2 + 56, shuchusen2, 180 );
setEffRotateKey( spep_2 + 102, shuchusen2, 180 );

setEffAlphaKey( spep_2 + 56, shuchusen2, 0 );
setEffAlphaKey( spep_2 + 57, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 58, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 102, shuchusen2, 255 );

-- ** 音 ** --
SE1=playSe( spep_2, 17 );--気を溜める奴
stopSe(spep_2 + 40,SE1,0);

--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2+80 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    
    pauseAll( SP_dodge, 67);
    --[[
    --キャラクターの固定
    setMoveKey(SP_dodge, 1,297.9, -17.4 , 0 );
    setScaleKey(SP_dodge , 1, 1.1, 1.1);
    setRotateKey(SP_dodge,   1, 0 );
    
    --キャラクターの固定
    setMoveKey(SP_dodge+8, 1,297.9, -17.4 , 0 );
    setScaleKey(SP_dodge+8 , 1, 1.1, 1.1);
    setRotateKey(SP_dodge+8,   1, 0 );
    ]]
    
    setDisp(SP_dodge+9, 0, 0);
    --setDisp(SP_dodge+9, 1, 0);
    --setMoveKey(SP_dodge+9, 1, 0 , 0, 0);
    --setScaleKey(SP_dodge+9,1,0.9,0.9);
    --setRotateKey(SP_dodge+9,   1, 0);
    
    --setMoveKey(SP_dodge+10, 1, 0 , 0, 0);
    --setScaleKey(SP_dodge+10,  1 , 0.9, 0.9);
    --setRotateKey(SP_dodge+10,   1, 0);
    
    
    --悟飯を画面外に表示
    --setMoveKey(SP_dodge+8, 0, 0 , -54,   0);
    setMoveKey(SP_dodge+9, 1, 1000 , 1000, 0);
    setMoveKey(SP_dodge+10, 1, 1000 , 1000, 0);
    
    
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
    playSe( spep_2 + 42, 1022 );--気を打つ奴
    playSe( spep_2 + 68, SE_04 );--飛んでいく奴
--白フェード
entryFade( spep_2 + 96, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 104;
--------------------------------------
--腹気弾
--------------------------------------
--エフェクト(前)
kidan2_f=entryEffectLife(spep_3,SP_03x,120,0x100,-1,0,0,0);

setEffMoveKey( spep_3 + 0, kidan2_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 120, kidan2_f, 0, 0 , 0 );

setEffScaleKey(spep_3,kidan2_f,1.0,1.0);
setEffScaleKey(spep_3+120,kidan2_f,1.0,1.0);

setEffRotateKey(spep_3,kidan2_f,0);
setEffRotateKey(spep_3+120,kidan2_f,0);

setEffAlphaKey(spep_3,kidan2_f,255);
setEffAlphaKey(spep_3+120,kidan2_f,255);


--エフェクト(後)
kidan2_b=entryEffectLife(spep_3,SP_04x,120,0x80,-1,0,0,0);

setEffMoveKey( spep_3 + 0, kidan2_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 120, kidan2_b, 0, 0 , 0 );

setEffScaleKey(spep_3,kidan2_b,1.1,1.1);
setEffScaleKey(spep_3+120,kidan2_b,1.1,1.1);

setEffRotateKey(spep_3,kidan2_b,0);
setEffRotateKey(spep_3+120,kidan2_b,0);

setEffAlphaKey(spep_3,kidan2_b,255);
setEffAlphaKey(spep_3+120,kidan2_b,255);

--敵側
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 78, 1, 0 );

changeAnime( spep_3 + 0, 1, 104 );
changeAnime( spep_3-3 + 18, 1, 106 );

setMoveKey( spep_3-3 + 0, 1, 318.3, -0.1 , 0 );
setMoveKey( spep_3-3 + 2, 1, 273.6, -0.1 , 0 );
setMoveKey( spep_3-3 + 4, 1, 228.6, -0.1 , 0 );
setMoveKey( spep_3-3 + 6, 1, 183.7, -0.1 , 0 );
setMoveKey( spep_3-3 + 8, 1, 138.8, -0.1 , 0 );
setMoveKey( spep_3-3 + 10, 1, 93.8, -0.1 , 0 );
setMoveKey( spep_3-3 + 12, 1, 48.9, -0.1 , 0 );
setMoveKey( spep_3-3 + 14, 1, 47.4, -2.1 , 0 );
setMoveKey( spep_3-3 + 17, 1, 46, -4.1 , 0 );
setMoveKey( spep_3-3 + 18, 1, 40.6, 1.7 , 0 );
setMoveKey( spep_3-3 + 20, 1, 47, -13.9 , 0 );
setMoveKey( spep_3-3 + 22, 1, 45.6, -6.2 , 0 );
setMoveKey( spep_3-3 + 24, 1, 44.1, -18 , 0 );
setMoveKey( spep_3-3 + 26, 1, 42.6, -10.2 , 0 );
setMoveKey( spep_3-3 + 28, 1, 31.5, -18 , 0 );
setMoveKey( spep_3-3 + 30, 1, 39.7, -14.2 , 0 );
setMoveKey( spep_3-3 + 32, 1, 28.5, -22 , 0 );
setMoveKey( spep_3-3 + 34, 1, 29, -14.3 , 0 );
setMoveKey( spep_3-3 + 36, 1, 35.3, -29.9 , 0 );
setMoveKey( spep_3-3 + 38, 1, 24.1, -14.5 , 0 );
setMoveKey( spep_3-3 + 40, 1, 25.5, -22.4 , 0 );
setMoveKey( spep_3-3 + 42, 1, 29.1, -20.6 , 0 );
setMoveKey( spep_3-3 + 44, 1, 32.6, -18.8 , 0 );
setMoveKey( spep_3-3 + 46, 1, 36, -17 , 0 );
setMoveKey( spep_3-3 + 48, 1, 39.6, -15.1 , 0 );
setMoveKey( spep_3-3 + 50, 1, 43.1, -13.3 , 0 );
setMoveKey( spep_3-3 + 52, 1, 46.5, -11.5 , 0 );
setMoveKey( spep_3-3 + 54, 1, 54.3, -9.7 , 0 );
setMoveKey( spep_3-3 + 56, 1, 62.3, -7.9 , 0 );
setMoveKey( spep_3-3 + 58, 1, 70.3, -6.1 , 0 );
setMoveKey( spep_3-3 + 60, 1, 78.2, -4.3 , 0 );
setMoveKey( spep_3-3 + 62, 1, 86.2, -2.5 , 0 );
setMoveKey( spep_3-3 + 64, 1, 94.1, -0.7 , 0 );
setMoveKey( spep_3-3 + 66, 1, 102, 1.1 , 0 );
setMoveKey( spep_3-3 + 68, 1, 110, 3 , 0 );
setMoveKey( spep_3-3 + 70, 1, 118, 4.8 , 0 );
setMoveKey( spep_3-3 + 72, 1, 125.9, 6.6 , 0 );
setMoveKey( spep_3-3 + 74, 1, 133.8, 8.4 , 0 );
setMoveKey( spep_3-3 + 76, 1, 141.8, 10.2 , 0 );
setMoveKey( spep_3 + 78, 1, 149.8, 12 , 0 );
--setMoveKey( spep_3-3 + 80, 1, 440, 41 , 0 );
--setMoveKey( spep_3-3 + 82, 1, 401.8, 6.7 , 0 );
--setMoveKey( spep_3-3 + 84, 1, 335.5, 25.1 , 0 );
--setMoveKey( spep_3-3 + 86, 1, 320.7, 6.5 , 0 );
--setMoveKey( spep_3-3 + 88, 1, 315, 36.5 , 0 );
--setMoveKey( spep_3-3 + 90, 1, 326.4, 2.2 , 0 );
--setMoveKey( spep_3-3 + 92, 1, 337.8, 21.7 , 0 );
--setMoveKey( spep_3-3 + 94, 1, 365.3, 4.2 , 0 );
--setMoveKey( spep_3-3 + 96, 1, 416.1, 21.7 , 0 );
--setMoveKey( spep_3-3 + 98, 1, 465, 8.1 , 0 );
--setMoveKey( spep_3-3 + 100, 1, 483.2, 17.8 , 0 );
--setMoveKey( spep_3-3 + 102, 1, 501.5, 8 , 0 );
--setMoveKey( spep_3-3 + 104, 1, 519.7, 8 , 0 );
--setMoveKey( spep_3-3 + 106, 1, 537.9, 8 , 0 );
--setMoveKey( spep_3-3 + 108, 1, 556, 8 , 0 );
--setMoveKey( spep_3-3 + 110, 1, 576.6, 8 , 0 );
--setMoveKey( spep_3-3 + 112, 1, 597.1, 8 , 0 );
--setMoveKey( spep_3-3 + 114, 1, 617.8, 8 , 0 );
--setMoveKey( spep_3-3 + 116, 1, 638.4, 8 , 0 );
--setMoveKey( spep_3 + 118, 1, 659.1, 8 , 0 );

setScaleKey( spep_3 + 0, 1, 1, 1 );
setScaleKey( spep_3 + 78, 1, 1, 1 );
--setScaleKey( spep_3-3 + 80, 1, 1, 1.4 );
--setScaleKey( spep_3-3 + 82, 1, 1.32, 1.32 );
--setScaleKey( spep_3-3 + 84, 1, 1.24, 1.24 );
--setScaleKey( spep_3-3 + 86, 1, 1.16, 1.16 );
--setScaleKey( spep_3-3 + 88, 1, 1.08, 1.08 );
--setScaleKey( spep_3-3 + 90, 1, 1, 1 );
--setScaleKey( spep_3 + 118, 1, 1, 1 );

setRotateKey( spep_3-3 + 0, 1, 0 );
setRotateKey( spep_3-3 + 17, 1, 0 );
setRotateKey( spep_3-3 + 18, 1, -44.2 );
setRotateKey( spep_3-3 + 36, 1, -44.2 );
setRotateKey( spep_3-3 + 38, 1, -43.3 );
setRotateKey( spep_3-3 + 40, 1, -42.3 );
setRotateKey( spep_3-3 + 42, 1, -41.4 );
setRotateKey( spep_3-3 + 44, 1, -40.4 );
setRotateKey( spep_3-3 + 46, 1, -39.5 );
setRotateKey( spep_3-3 + 48, 1, -38.5 );
setRotateKey( spep_3-3 + 50, 1, -37.6 );
setRotateKey( spep_3-3 + 52, 1, -36.7 );
setRotateKey( spep_3-3 + 54, 1, -35.7 );
setRotateKey( spep_3-3 + 56, 1, -34.8 );
setRotateKey( spep_3-3 + 58, 1, -33.8 );
setRotateKey( spep_3-3 + 60, 1, -32.9 );
setRotateKey( spep_3-3 + 62, 1, -31.9 );
setRotateKey( spep_3-3 + 64, 1, -31 );
setRotateKey( spep_3-3 + 66, 1, -30.1 );
setRotateKey( spep_3-3 + 68, 1, -29.1 );
setRotateKey( spep_3-3 + 70, 1, -28.2 );
setRotateKey( spep_3-3 + 72, 1, -27.2 );
setRotateKey( spep_3-3 + 74, 1, -26.3 );
setRotateKey( spep_3-3 + 76, 1, -25.3 );
setRotateKey( spep_3-3 + 78, 1, -24.4 );
--setRotateKey( spep_3 + 118, 1, -24.4 );

--SE
playSe( spep_3+16, 1023 );  --当たる奴
playSe( spep_3+40, SE_04 );  --飛んでくる奴
playSe( spep_3+78, 1011 );  --飛んでくる奴
playSe( spep_3+90, 1023 );  --当たる奴

--白フェード
entryFade( spep_3 + 112, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 120;

--------------------------------------
--岩打撲
--------------------------------------
--エフェクト(前)
hit_f=entryEffect(spep_4,SP_05x,0x100,-1,0,0,0);

setEffMoveKey( spep_4 + 0, hit_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 220, hit_f, 0, 0 , 0 );

setEffScaleKey(spep_4,hit_f,1.0,1.0);
setEffScaleKey(spep_4+220,hit_f,1.0,1.0);

setEffRotateKey(spep_4,hit_f,0);
setEffRotateKey(spep_4+220,hit_f,0);

setEffAlphaKey(spep_4,hit_f,255);
setEffAlphaKey(spep_4+220,hit_f,255);

--エフェクト(後)
hit_b=entryEffect(spep_4,SP_06x,0x80,-1,0,0,0);

setEffMoveKey( spep_4 + 0, hit_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 220, hit_b, 0, 0 , 0 );

setEffScaleKey(spep_4,hit_b,1.0,1.0);
setEffScaleKey(spep_4+220,hit_b,1.0,1.0);

setEffRotateKey(spep_4,hit_b,0);
setEffRotateKey(spep_4+220,hit_b,0);

setEffAlphaKey(spep_4,hit_b,255);
setEffAlphaKey(spep_4+220,hit_b,255);

--敵側
setDisp( spep_4 + 0, 1, 1 );

changeAnime( spep_4 + 0, 1, 108 );
changeAnime( spep_4-3 + 32, 1, 106 );

setMoveKey( spep_4-3 + 0, 1, -127.5, -89.4 , 0 );
setMoveKey( spep_4-3 + 2, 1, -120.4, -85.1 , 0 );
setMoveKey( spep_4-3 + 4, 1, -113.2, -80.9 , 0 );
setMoveKey( spep_4-3 + 6, 1, -106.2, -76.6 , 0 );
setMoveKey( spep_4-3 + 8, 1, -98.9, -72.4 , 0 );
setMoveKey( spep_4-3 + 10, 1, -91.7, -68.2 , 0 );
setMoveKey( spep_4-3 + 12, 1, -84.7, -64 , 0 );
setMoveKey( spep_4-3 + 14, 1, -77.5, -59.7 , 0 );
setMoveKey( spep_4-3 + 16, 1, -70.5, -55.5 , 0 );
setMoveKey( spep_4-3 + 18, 1, -46.7, -41.4 , 0 );
setMoveKey( spep_4-3 + 20, 1, -23, -27.4 , 0 );
setMoveKey( spep_4-3 + 22, 1, 0.6, -13.3 , 0 );
setMoveKey( spep_4-3 + 24, 1, 24.2, 0.7 , 0 );
setMoveKey( spep_4-3 + 26, 1, 48, 14.8 , 0 );
setMoveKey( spep_4-3 + 28, 1, 66.3, 39.7 , 0 );
setMoveKey( spep_4-3 + 31, 1, 75.8, 20.8 , 0 );
setMoveKey( spep_4-3 + 32, 1, 73.1, 32.9 , 0 );
setMoveKey( spep_4-3 + 34, 1, 60.9, 23.5 , 0 );
setMoveKey( spep_4-3 + 36, 1, 74.4, 27.5 , 0 );
setMoveKey( spep_4-3 + 38, 1, 60.9, 39.7 , 0 );
setMoveKey( spep_4-3 + 40, 1, 70.4, 20.8 , 0 );
setMoveKey( spep_4-3 + 42, 1, 73.1, 32.9 , 0 );
setMoveKey( spep_4-3 + 44, 1, 60.9, 23.5 , 0 );
setMoveKey( spep_4-3 + 46, 1, 74.4, 27.5 , 0 );
setMoveKey( spep_4-3 + 48, 1, 60.9, 39.7 , 0 );
setMoveKey( spep_4-3 + 50, 1, 70.4, 20.8 , 0 );
setMoveKey( spep_4-3 + 52, 1, 73.1, 32.9 , 0 );
setMoveKey( spep_4-3 + 54, 1, 60.9, 23.5 , 0 );
setMoveKey( spep_4-3 + 56, 1, 74.4, 27.5 , 0 );
setMoveKey( spep_4-3 + 58, 1, 60.9, 39.7 , 0 );
setMoveKey( spep_4-3 + 60, 1, 70.4, 20.8 , 0 );
setMoveKey( spep_4-3 + 62, 1, 73.1, 32.9 , 0 );
setMoveKey( spep_4-3 + 64, 1, 60.9, 23.5 , 0 );
setMoveKey( spep_4-3 + 66, 1, 74.4, 27.5 , 0 );
setMoveKey( spep_4-3 + 68, 1, 72.4, 31.6 , 0 );
setMoveKey( spep_4-3 + 70, 1, 76.5, 21.4 , 0 );
setMoveKey( spep_4-3 + 72, 1, 76.5, 31.6 , 0 );
setMoveKey( spep_4-3 + 74, 1, 72.4, 23.4 , 0 );
setMoveKey( spep_4-3 + 76, 1, 72.4, 31.6 , 0 );
setMoveKey( spep_4-3 + 78, 1, 76.5, 21.4 , 0 );
setMoveKey( spep_4-3 + 80, 1, 76.5, 31.6 , 0 );
setMoveKey( spep_4-3 + 82, 1, 72.4, 23.4 , 0 );
setMoveKey( spep_4-3 + 84, 1, 72.4, 31.6 , 0 );
setMoveKey( spep_4-3 + 86, 1, 76.5, 21.4 , 0 );
setMoveKey( spep_4-3 + 88, 1, 76.5, 31.6 , 0 );
setMoveKey( spep_4-3 + 90, 1, 72.4, 23.4 , 0 );
setMoveKey( spep_4 + 220, 1, 72.4, 23.4 , 0 );

setScaleKey( spep_4-3 + 0, 1, 2.26, 2.26 );
setScaleKey( spep_4-3 + 2, 1, 2.19, 2.19 );
setScaleKey( spep_4-3 + 4, 1, 2.13, 2.13 );
setScaleKey( spep_4-3 + 6, 1, 2.06, 2.06 );
setScaleKey( spep_4-3 + 8, 1, 2, 2 );
setScaleKey( spep_4-3 + 10, 1, 1.94, 1.94 );
setScaleKey( spep_4-3 + 12, 1, 1.87, 1.87 );
setScaleKey( spep_4-3 + 14, 1, 1.81, 1.81 );
setScaleKey( spep_4-3 + 16, 1, 1.74, 1.74 );
setScaleKey( spep_4-3 + 18, 1, 1.49, 1.49 );
setScaleKey( spep_4-3 + 20, 1, 1.23, 1.23 );
setScaleKey( spep_4-3 + 22, 1, 0.97, 0.97 );
setScaleKey( spep_4-3 + 24, 1, 0.71, 0.71 );
setScaleKey( spep_4-3 + 26, 1, 0.46, 0.46 );
setScaleKey( spep_4-3 + 28, 1, 0.2, 0.2 );
setScaleKey( spep_4 + 220, 1, 0.2, 0.2 );

setRotateKey( spep_4-3 + 0, 1, 0 );
setRotateKey( spep_4-3 + 31, 1, 0 );
setRotateKey( spep_4-3 + 32, 1, -51.2 );
setRotateKey( spep_4 + 220, 1, -51.2 );

--setShakeChara(spep_4-3 + 90,1,133,5);

--SE
playSe( spep_4, 44 );  --飛んでいく奴
playSe( spep_4+24, 1011 );  --当たる奴

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 24 );
entryFade( spep_4 + 200, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_4 + 210 );


end