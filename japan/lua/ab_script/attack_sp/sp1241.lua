--1015600 トランクス(青年期)(未来)_シャイニングクロス
--sp_effect_b2_00019

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
SP_01=152567;--	前方突撃
SP_02=152568;--	切掛り
SP_03=152570;--	納刀

--敵側
SP_01x=	152567	;--	前方突撃	
SP_02x=	152569	;--	切掛り	(敵側)
SP_03x=	152570	;--	納刀	

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
-- 前方突撃
------------------------------------------------------
spep_0=0;

--エフェクトの再生
rush = entryEffectLife( spep_0 + 0, SP_01, 100, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, rush, 0, 0 , 0 );
setEffMoveKey( spep_0 + 100, rush, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, rush, 1.0, 1.0 );
setEffScaleKey( spep_0 + 100, rush, 1.0, 1.0 );
setEffAlphaKey( spep_0 + 0, rush, 255 );
setEffAlphaKey( spep_0 + 100, rush, 255 );
setEffRotateKey( spep_0 + 0, rush, 0 );
setEffRotateKey( spep_0 + 100, rush, 0 );

--集中線
shuchusen1 = entryEffectLife( spep_0 + 0,  906, 100, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 100, shuchusen1, 0, 0 , 0);

setEffScaleKey( spep_0 + 0, shuchusen1, 1.0, 1.0 );
setEffScaleKey( spep_0 + 100, shuchusen1, 1.0, 1.0 );

setEffRotateKey( spep_0 + 0, shuchusen1, 180 );
setEffRotateKey( spep_0 + 100, shuchusen1, 180 );

--顔カットイン
speff=entryEffect(spep_0+10,1504,0x100,-1,0,0,0);  --カットイン(顔)
setEffReplaceTexture(speff,3,2);  --カットイン差し替え
speff1=entryEffect(spep_0+10,1505,0x100,-1,0,0,0);  --カットイン(セリフ)
setEffReplaceTexture(speff1,4,5);  --セリフカットイン差し替え

--ゴゴゴ
ctgogo=entryEffectLife(spep_0+22,190006,78,0x100,-1,50,520);--ゴゴゴ

setEffMoveKey(spep_0+22,ctgogo,50,520,0);
setEffMoveKey(spep_0+100,ctgogo,50,520,0);

setEffScaleKey(spep_0+22, ctgogo, 0.7, 0.7);
setEffScaleKey(spep_0+100, ctgogo, 0.7, 0.7);

setEffAlphaKey( spep_0 +22, ctgogo, 0 );
setEffAlphaKey( spep_0 + 23, ctgogo, 255 );
setEffAlphaKey( spep_0 + 24, ctgogo, 255 );
setEffAlphaKey( spep_0 + 100, ctgogo, 255 );

setEffRotateKey(spep_0+22,ctgogo,0);
setEffRotateKey(spep_0+100,ctgogo,0);

--黒背景
entryFadeBg(spep_0, 0, 100, 0, 0, 0, 0, 200);  -- 黒　背

-- ** エフェクト等 ** --
entryFade(spep_0,0, 2, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- whit_fe fade
entryFade(spep_0+92,4, 10, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- whit_fe fade

--SE
playSe( spep_0+22, SE_04); --ゴゴゴ

--次の準備
spep_1=spep_0+100;

--------------------------------------
-- バッって移動するとこ
--------------------------------------

--エフェクトの再生
idou = entryEffectLife( spep_1 + 0, SP_02, 70, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_1 + 0, idou, 0, 0 , 0 );
setEffMoveKey( spep_1 + 70, idou, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, idou, 1.0, 1.0 );
setEffScaleKey( spep_1 + 70, idou, 1.0, 1.0 );
setEffAlphaKey( spep_1 + 0, idou, 255 );
setEffAlphaKey( spep_1 + 70, idou, 255 );
setEffRotateKey( spep_1 + 0, idou, 0 );
setEffRotateKey( spep_1 + 70, idou, 0 );

--文字エントリー
ctba = entryEffectLife( spep_1 + 10,  10022, 58, 0x100, -1, 0, 13.3, -250.5 );--バッ

setEffMoveKey( spep_1 + 10, ctba, 13.3, -250.5 , 0 );
setEffMoveKey( spep_1 + 12, ctba, 10, -238 , 0 );
setEffMoveKey( spep_1 + 14, ctba, 16.5, -250.4 , 0 );
setEffMoveKey( spep_1 + 16, ctba, 6.3, -243.7 , 0 );
setEffMoveKey( spep_1 + 18, ctba, 16.1, -239.5 , 0 );
setEffMoveKey( spep_1 + 20, ctba, 10.1, -249.2 , 0 );
setEffMoveKey( spep_1 + 22, ctba, 14.1, -234.7 , 0 );
setEffMoveKey( spep_1 + 24, ctba, 14, -244.2 , 0 );
setEffMoveKey( spep_1 + 26, ctba, 10.6, -236.5 , 0 );
setEffMoveKey( spep_1 + 28, ctba, 12, -242.5 , 0 );
setEffMoveKey( spep_1 + 30, ctba, 16.6, -235.6 , 0 );
setEffMoveKey( spep_1 + 32, ctba, 12, -240.8 , 0 );
setEffMoveKey( spep_1 + 34, ctba, 14.1, -230.9 , 0 );
setEffMoveKey( spep_1 + 36, ctba, 13.1, -236.4 , 0 );
setEffMoveKey( spep_1 + 38, ctba, 13.4, -230 , 0 );
setEffMoveKey( spep_1 + 40, ctba, 15.2, -235.6 , 0 );
setEffMoveKey( spep_1 + 42, ctba, 16.3, -229.6 , 0 );
setEffMoveKey( spep_1 + 44, ctba, 17.4, -232.3 , 0 );
setEffMoveKey( spep_1 + 46, ctba, 15.4, -229.6 , 0 );
setEffMoveKey( spep_1 + 48, ctba, 18.4, -230 , 0 );
setEffMoveKey( spep_1 + 50, ctba, 16.2, -227.6 , 0 );
setEffMoveKey( spep_1 + 52, ctba, 18.5, -227.6 , 0 );
setEffMoveKey( spep_1 + 54, ctba, 17.8, -225.5 , 0 );
setEffMoveKey( spep_1 + 56, ctba, 18.7, -225.1 , 0 );
setEffMoveKey( spep_1 + 58, ctba, 18.9, -224 , 0 );
setEffMoveKey( spep_1 + 60, ctba, 19.6, -223 , 0 );
setEffMoveKey( spep_1 + 62, ctba, 19.5, -222 , 0 );
setEffMoveKey( spep_1 + 64, ctba, 17.1, -221.3 , 0 );
setEffMoveKey( spep_1 + 66, ctba, 19.6, -219.6 , 0 );
setEffMoveKey( spep_1 + 68, ctba, 19.6, -226.7 , 0 );

setEffScaleKey( spep_1 + 10, ctba, 2, 2 );
setEffScaleKey( spep_1 + 12, ctba, 2.01, 2.01 );
setEffScaleKey( spep_1 + 14, ctba, 2.01, 2.01 );
setEffScaleKey( spep_1 + 16, ctba, 2.02, 2.02 );
setEffScaleKey( spep_1 + 18, ctba, 2.03, 2.03 );
setEffScaleKey( spep_1 + 20, ctba, 2.03, 2.03 );
setEffScaleKey( spep_1 + 22, ctba, 2.04, 2.04 );
setEffScaleKey( spep_1 + 24, ctba, 2.05, 2.05 );
setEffScaleKey( spep_1 + 26, ctba, 2.06, 2.06 );
setEffScaleKey( spep_1 + 28, ctba, 2.06, 2.06 );
setEffScaleKey( spep_1 + 30, ctba, 2.07, 2.07 );
setEffScaleKey( spep_1 + 32, ctba, 2.08, 2.08 );
setEffScaleKey( spep_1 + 34, ctba, 2.08, 2.08 );
setEffScaleKey( spep_1 + 36, ctba, 2.09, 2.09 );
setEffScaleKey( spep_1 + 38, ctba, 2.1, 2.1 );
setEffScaleKey( spep_1 + 40, ctba, 2.1, 2.1 );
setEffScaleKey( spep_1 + 42, ctba, 2.11, 2.11 );
setEffScaleKey( spep_1 + 44, ctba, 2.12, 2.12 );
setEffScaleKey( spep_1 + 46, ctba, 2.12, 2.12 );
setEffScaleKey( spep_1 + 48, ctba, 2.13, 2.13 );
setEffScaleKey( spep_1 + 50, ctba, 2.14, 2.14 );
setEffScaleKey( spep_1 + 52, ctba, 2.14, 2.14 );
setEffScaleKey( spep_1 + 54, ctba, 2.15, 2.15 );
setEffScaleKey( spep_1 + 56, ctba, 2.16, 2.16 );
setEffScaleKey( spep_1 + 58, ctba, 2.17, 2.17 );
setEffScaleKey( spep_1 + 60, ctba, 2.17, 2.17 );
setEffScaleKey( spep_1 + 62, ctba, 2.18, 2.18 );
setEffScaleKey( spep_1 + 64, ctba, 2.19, 2.19 );
setEffScaleKey( spep_1 + 66, ctba, 2.19, 2.19 );
setEffScaleKey( spep_1 + 68, ctba, 2.2, 2.2 );

setEffRotateKey( spep_1 + 10, ctba, 32 );
setEffRotateKey( spep_1 + 68, ctba, 32 );

setEffAlphaKey( spep_1 + 10, ctba, 255 );
setEffAlphaKey( spep_1 + 68, ctba, 255 );

--敵の動き

setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 70, 1, 0 );

changeAnime( spep_1 + 0, 1, 100 );

setMoveKey( spep_1 + 0, 1, 230.8, 283.4 , 0 );
setMoveKey( spep_1 + 70, 1, 230.8, 283.4 , 0 );

setScaleKey( spep_1 + 0, 1, 1, 1 );
setScaleKey( spep_1 + 70, 1, 1, 1 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 + 70, 1, 0 );

setEffShake(spep_1,1,70,10);



--集中線
shuchusen2 = entryEffectLife( spep_1 + 0,  906, 70, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_1 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_1 + 70, shuchusen2, 0, 0 , 0);

setEffScaleKey( spep_1 + 0, shuchusen2, 1.5, 1.5 );
setEffScaleKey( spep_1 + 70, shuchusen2, 1.5, 1.5 );

setEffRotateKey( spep_1 + 0, shuchusen2, 180 );
setEffRotateKey( spep_1 + 70, shuchusen2, 180 );

--黒背景
entryFadeBg(spep_1, 0, 70, 0, 0, 0, 0, 200);  -- 黒　背

--SE
playSe( spep_1+10, 1003); --ゴゴゴ

--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1+46 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    
    pauseAll( SP_dodge, 67);
    
    --キャラクターの固定
    setMoveKey(SP_dodge, 1,230.8, 283.4 , 0  );
    setScaleKey(SP_dodge , 1, 1.1, 1.1);
    setRotateKey(SP_dodge,   1, 0 );
    
    --キャラクターの固定
    setMoveKey(SP_dodge+8, 1,230.8, 283.4 , 0  );
    setScaleKey(SP_dodge+8 , 1, 1.1, 1.1);
    setRotateKey(SP_dodge+8,   1, 0 );
    
    
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
    setMoveKey(SP_dodge+9, 1, 230.8, 283.4, 0);
    setMoveKey(SP_dodge+10, 1, 230.8, 283.4, 0);
    
    
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

-- ** エフェクト等 ** --
entryFade(spep_1+62,4, 10, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- whit_fe fade

--次の準備
spep_2=spep_1+70;

--------------------------------------
--カードカットイン(90F)
--------------------------------------

playSe(spep_2,SE_05);
shuchusen=entryEffectLife(spep_2,906,90,0x100,-1,0,0,0);   -- 集中線
setEffScaleKey(spep_2,shuchusen,1.6,1.6);

speff2=entryEffect(spep_2,1507,0x80,-1,0,0,0);   -- カード
setEffReplaceTexture(speff2,1,1);
setEffReplaceTexture(speff2,2,0);-- カード差し替え
setEffReplaceTexture(speff2,5,4);-- 技名テクスチャ差し替え

-- ** エフェクト等 ** --
entryFade(spep_2+84,4,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_3=spep_2+94;

--------------------------------------
-- 爆発
--------------------------------------
--エフェクトの再生
explosion = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_3 + 0, explosion, 0, 0 , 0 );
setEffMoveKey( spep_3 + 320, explosion, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, explosion, 1.0, 1.0 );
setEffScaleKey( spep_3 + 320, explosion, 1.0, 1.0 );
setEffAlphaKey( spep_3 + 0, explosion, 255 );
setEffAlphaKey( spep_3 + 320, explosion, 255 );
setEffRotateKey( spep_3 + 0, explosion, 0 );
setEffRotateKey( spep_3 + 320, explosion, 0 );


--エフェクトの再生
explosion2 = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_3 + 0, explosion2, 0, 0 , 0 );
setEffMoveKey( spep_3 + 202, explosion2, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, explosion2, 1.0, 1.0 );
setEffScaleKey( spep_3 + 202, explosion2, 1.0, 1.0 );
setEffAlphaKey( spep_3 + 0, explosion2, 255 );
setEffAlphaKey( spep_3 + 202, explosion2, 255 );
setEffRotateKey( spep_3 + 0, explosion2, 0 );
setEffRotateKey( spep_3 + 202, explosion2, 0 );

--エフェクトの再生
explosion3 = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_3 + 0, explosion3, 0, 0 , 0 );
setEffMoveKey( spep_3 + 202, explosion3, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, explosion3, 1.0, 1.0 );
setEffScaleKey( spep_3 + 202, explosion3, 1.0, 1.0 );
setEffAlphaKey( spep_3 + 0, explosion3, 255 );
setEffAlphaKey( spep_3 + 202, explosion3, 255 );
setEffRotateKey( spep_3 + 0, explosion3, 0 );
setEffRotateKey( spep_3 + 202, explosion3, 0 );

--敵の動き
setDisp( spep_3 + 68, 1, 1 );
setDisp( spep_3 + 204, 1, 0 );

changeAnime( spep_3 + 68, 1, 106 );

setMoveKey( spep_3 + 68, 1, 64.7, 113.8 , 0 );
setMoveKey( spep_3 + 72, 1, 65.7, 112.8 , 0 );
setMoveKey( spep_3 + 74, 1, 64.6, 113.8 , 0 );
setMoveKey( spep_3 + 76, 1, 64.6, 113.8 , 0 );
setMoveKey( spep_3 + 78, 1, 65.6, 112.8 , 0 );
setMoveKey( spep_3 + 80, 1, 64.6, 113.8 , 0 );
setMoveKey( spep_3 + 82, 1, 64.6, 113.9 , 0 );
setMoveKey( spep_3 + 84, 1, 64.6, 113.9 , 0 );
setMoveKey( spep_3 + 86, 1, 65.5, 112.9 , 0 );
setMoveKey( spep_3 + 88, 1, 64.6, 113.8 , 0 );
setMoveKey( spep_3 + 90, 1, 64.6, 113.8 , 0 );
setMoveKey( spep_3 + 92, 1, 65.5, 112.9 , 0 );
setMoveKey( spep_3 + 94, 1, 64.6, 113.8 , 0 );
setMoveKey( spep_3 + 96, 1, 64.6, 113.8 , 0 );
setMoveKey( spep_3 + 98, 1, 65.5, 112.9 , 0 );
setMoveKey( spep_3 + 100, 1, 64.6, 113.8 , 0 );
setMoveKey( spep_3 + 102, 1, 64.6, 113.8 , 0 );
setMoveKey( spep_3 + 104, 1, 65.5, 112.9 , 0 );
setMoveKey( spep_3 + 106, 1, 64.6, 113.8 , 0 );
setMoveKey( spep_3 + 108, 1, 64.6, 113.8 , 0 );
setMoveKey( spep_3 + 110, 1, 65.5, 112.9 , 0 );
setMoveKey( spep_3 + 112, 1, 64.6, 113.8 , 0 );
setMoveKey( spep_3 + 114, 1, 64.6, 113.8 , 0 );
setMoveKey( spep_3 + 116, 1, 65.5, 112.9 , 0 );
setMoveKey( spep_3 + 118, 1, 64.6, 113.8 , 0 );
setMoveKey( spep_3 + 120, 1, 64.6, 113.8 , 0 );
setMoveKey( spep_3 + 122, 1, 65.5, 112.9 , 0 );
setMoveKey( spep_3 + 124, 1, 64.6, 113.8 , 0 );
setMoveKey( spep_3 + 126, 1, 64.6, 113.8 , 0 );
setMoveKey( spep_3 + 128, 1, 65.5, 112.9 , 0 );
setMoveKey( spep_3 + 130, 1, 64.6, 113.8 , 0 );
setMoveKey( spep_3 + 132, 1, 64.6, 113.8 , 0 );
setMoveKey( spep_3 + 134, 1, 65.5, 112.9 , 0 );
setMoveKey( spep_3 + 136, 1, 64.6, 113.8 , 0 );
setMoveKey( spep_3 + 138, 1, 64.6, 113.7 , 0 );
setMoveKey( spep_3 + 140, 1, 65.5, 112.8 , 0 );
setMoveKey( spep_3 + 142, 1, 64.6, 113.7 , 0 );
setMoveKey( spep_3 + 144, 1, 64.6, 113.7 , 0 );
setMoveKey( spep_3 + 146, 1, 65.5, 112.8 , 0 );
setMoveKey( spep_3 + 148, 1, 64.5, 113.7 , 0 );
setMoveKey( spep_3 + 150, 1, 64.5, 113.7 , 0 );
setMoveKey( spep_3 + 152, 1, 65.4, 112.8 , 0 );
setMoveKey( spep_3 + 154, 1, 64.5, 113.7 , 0 );
setMoveKey( spep_3 + 156, 1, 64.5, 113.7 , 0 );
setMoveKey( spep_3 + 158, 1, 65.4, 112.8 , 0 );
setMoveKey( spep_3 + 160, 1, 64.5, 113.7 , 0 );
setMoveKey( spep_3 + 162, 1, 64.5, 113.7 , 0 );
setMoveKey( spep_3 + 164, 1, 65.4, 112.8 , 0 );
setMoveKey( spep_3 + 166, 1, 64.5, 113.7 , 0 );
setMoveKey( spep_3 + 168, 1, 64.5, 113.7 , 0 );
setMoveKey( spep_3 + 170, 1, 65.4, 112.8 , 0 );
setMoveKey( spep_3 + 172, 1, 64.5, 113.7 , 0 );
setMoveKey( spep_3 + 174, 1, 64.5, 113.7 , 0 );
setMoveKey( spep_3 + 176, 1, 65.4, 112.8 , 0 );
setMoveKey( spep_3 + 178, 1, 64.5, 113.7 , 0 );
setMoveKey( spep_3 + 180, 1, 64.5, 113.7 , 0 );
setMoveKey( spep_3 + 182, 1, 65.4, 112.8 , 0 );
setMoveKey( spep_3 + 184, 1, 64.5, 113.7 , 0 );
setMoveKey( spep_3 + 186, 1, 64.5, 113.7 , 0 );
setMoveKey( spep_3 + 188, 1, 65.4, 112.8 , 0 );
setMoveKey( spep_3 + 190, 1, 64.5, 113.7 , 0 );
setMoveKey( spep_3 + 192, 1, 64.7, 113.7 , 0 );
setMoveKey( spep_3 + 194, 1, 65.5, 112.8 , 0 );
setMoveKey( spep_3 + 196, 1, 64.7, 113.6 , 0 );
setMoveKey( spep_3 + 198, 1, 64.7, 113.6 , 0 );
setMoveKey( spep_3 + 200, 1, 78, 112 , 0 );
setMoveKey( spep_3 + 202, 1, 63.8, 119.2 , 0 );
setMoveKey( spep_3 + 204, 1, 57.3, 107.6 , 0 );

a=0.4

setScaleKey( spep_3 + 68, 1, 1.17-a, 1.17-a );
setScaleKey( spep_3 + 84, 1, 1.17-a, 1.17-a );
setScaleKey( spep_3 + 86, 1, 1.16-a, 1.16-a );
setScaleKey( spep_3 + 92, 1, 1.16-a, 1.16-a );
setScaleKey( spep_3 + 94, 1, 1.15-a, 1.15-a );
setScaleKey( spep_3 + 102, 1, 1.15-a, 1.15-a );
setScaleKey( spep_3 + 104, 1, 1.14-a, 1.14-a );
setScaleKey( spep_3 + 110, 1, 1.14-a, 1.14-a );
setScaleKey( spep_3 + 112, 1, 1.13-a, 1.13-a );
setScaleKey( spep_3 + 120, 1, 1.13-a, 1.13-a );
setScaleKey( spep_3 + 122, 1, 1.12-a, 1.12-a );
setScaleKey( spep_3 + 128, 1, 1.12-a, 1.12-a );
setScaleKey( spep_3 + 130, 1, 1.11-a, 1.11-a );
setScaleKey( spep_3 + 136, 1, 1.11-a, 1.11-a );
setScaleKey( spep_3 + 138, 1, 1.1-a, 1.1-a );
setScaleKey( spep_3 + 146, 1, 1.1-a, 1.1-a );
setScaleKey( spep_3 + 148, 1, 1.09-a, 1.09-a );
setScaleKey( spep_3 + 154, 1, 1.09-a, 1.09-a );
setScaleKey( spep_3 + 156, 1, 1.08-a, 1.08-a );
setScaleKey( spep_3 + 164, 1, 1.08-a, 1.08-a );
setScaleKey( spep_3 + 166, 1, 1.07-a, 1.07-a );
setScaleKey( spep_3 + 172, 1, 1.07-a, 1.07-a );
setScaleKey( spep_3 + 174, 1, 1.06-a, 1.06-a );
setScaleKey( spep_3 + 180, 1, 1.06-a, 1.06-a );
setScaleKey( spep_3 + 182, 1, 1.05-a, 1.05-a );
setScaleKey( spep_3 + 204, 1, 1.05-a, 1.05-a );
setScaleKey( spep_3 + 205, 1, 1.17-a, 1.17-a );
setScaleKey( spep_3 + 206, 1, 1.17-a, 1.17-a );
setScaleKey( spep_3 + 274, 1, 1.17-a, 1.17-a );

setRotateKey( spep_3 + 68, 1, 0 );
setRotateKey( spep_3 + 204, 1, 0 );
setRotateKey( spep_3 + 205, 1, 0 );
setRotateKey( spep_3 + 206, 1, 0 );
setRotateKey( spep_3 + 274, 1, 0 );

--集中線
shuchusen3 = entryEffectLife( spep_3 + 66,  906, 254, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_3 + 66, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_3 + 320, shuchusen3, 0, 0 , 0);

setEffScaleKey( spep_3 + 66, shuchusen3, 1.5, 1.5 );
setEffScaleKey( spep_3 + 320, shuchusen3, 1.5, 1.5 );

setEffRotateKey( spep_3 + 66, shuchusen3, 180 );
setEffRotateKey( spep_3 + 320, shuchusen3, 180 );

setEffAlphaKey( spep_3 + 66, shuchusen3, 255 );
--setEffAlphaKey( spep_3 + 65, shuchusen3, 255 );
--setEffAlphaKey( spep_3 + 66, shuchusen3, 255 );
setEffAlphaKey( spep_3 + 320, shuchusen3, 255 );

-- ** エフェクト等 ** --
entryFade(spep_3+198,2,4,2,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--SE
playSe( spep_3+2, 1003); --斬りゅ
playSe( spep_3+6, 1004); --斬りゅ
playSe( spep_3+18, 1003); --斬りゅ
playSe( spep_3+28, 1004); --斬りゅ
playSe( spep_3+36, 1003); --斬りゅ
--playSe( spep_3+66, 1011); --斬りゅ
playSe( spep_3+160, 1040); --剣をしまう
playSe( spep_3+204, 1024); --爆裂


--黒背景
entryFadeBg(spep_3, 0, 70, 6, 0, 0, 0, 255);  -- 黒　背
entryFadeBg(spep_3, 0, 320, 0, 0, 0, 0, 200);  -- 黒　背

-- ダメージ表示
dealDamage(spep_3+204);
entryFade( spep_3+300, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_3+310);
else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 前方突撃
------------------------------------------------------
spep_0=0;

--エフェクトの再生
rush = entryEffectLife( spep_0 + 0, SP_01x, 100, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, rush, 0, 0 , 0 );
setEffMoveKey( spep_0 + 100, rush, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, rush, -1.0, 1.0 );
setEffScaleKey( spep_0 + 100, rush, -1.0, 1.0 );
setEffAlphaKey( spep_0 + 0, rush, 255 );
setEffAlphaKey( spep_0 + 100, rush, 255 );
setEffRotateKey( spep_0 + 0, rush, 0 );
setEffRotateKey( spep_0 + 100, rush, 0 );

--集中線
shuchusen1 = entryEffectLife( spep_0 + 0,  906, 100, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 100, shuchusen1, 0, 0 , 0);

setEffScaleKey( spep_0 + 0, shuchusen1, 1.0, 1.0 );
setEffScaleKey( spep_0 + 100, shuchusen1, 1.0, 1.0 );

setEffRotateKey( spep_0 + 0, shuchusen1, 180 );
setEffRotateKey( spep_0 + 100, shuchusen1, 180 );

--顔カットイン
--speff=entryEffect(spep_0+10,1504,0x100,-1,0,0,0);  --カットイン(顔)
--setEffReplaceTexture(speff,3,2);  --カットイン差し替え
--speff1=entryEffect(spep_0+10,1505,0x100,-1,0,0,0);  --カットイン(セリフ)
--setEffReplaceTexture(speff1,4,5);  --セリフカットイン差し替え

--ゴゴゴ
ctgogo=entryEffectLife(spep_0+22,190006,78,0x100,-1,50,520);--ゴゴゴ

setEffMoveKey(spep_0+22,ctgogo,50,520,0);
setEffMoveKey(spep_0+100,ctgogo,50,520,0);

setEffScaleKey(spep_0+22, ctgogo, -0.7, 0.7);
setEffScaleKey(spep_0+100, ctgogo, -0.7, 0.7);

setEffAlphaKey( spep_0 +22, ctgogo, 0 );
setEffAlphaKey( spep_0 + 23, ctgogo, 255 );
setEffAlphaKey( spep_0 + 24, ctgogo, 255 );
setEffAlphaKey( spep_0 + 100, ctgogo, 255 );

setEffRotateKey(spep_0+22,ctgogo,0);
setEffRotateKey(spep_0+100,ctgogo,0);

--黒背景
entryFadeBg(spep_0, 0, 100, 0, 0, 0, 0, 200);  -- 黒　背

-- ** エフェクト等 ** --
entryFade(spep_0,0, 2, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- whit_fe fade
entryFade(spep_0+92,4, 10, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- whit_fe fade

--SE
playSe( spep_0+22, SE_04); --ゴゴゴ

--次の準備
spep_1=spep_0+100;

--------------------------------------
-- バッって移動するとこ
--------------------------------------

--エフェクトの再生
idou = entryEffectLife( spep_1 + 0, SP_02x, 70, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_1 + 0, idou, 0, 0 , 0 );
setEffMoveKey( spep_1 + 70, idou, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, idou, 1.0, 1.0 );
setEffScaleKey( spep_1 + 70, idou, 1.0, 1.0 );
setEffAlphaKey( spep_1 + 0, idou, 255 );
setEffAlphaKey( spep_1 + 70, idou, 255 );
setEffRotateKey( spep_1 + 0, idou, 0 );
setEffRotateKey( spep_1 + 70, idou, 0 );

--文字エントリー
ctba = entryEffectLife( spep_1 + 10,  10022, 58, 0x100, -1, 0, 13.3, -250.5 );--バッ

setEffMoveKey( spep_1 + 10, ctba, 13.3, -250.5 , 0 );
setEffMoveKey( spep_1 + 12, ctba, 10, -238 , 0 );
setEffMoveKey( spep_1 + 14, ctba, 16.5, -250.4 , 0 );
setEffMoveKey( spep_1 + 16, ctba, 6.3, -243.7 , 0 );
setEffMoveKey( spep_1 + 18, ctba, 16.1, -239.5 , 0 );
setEffMoveKey( spep_1 + 20, ctba, 10.1, -249.2 , 0 );
setEffMoveKey( spep_1 + 22, ctba, 14.1, -234.7 , 0 );
setEffMoveKey( spep_1 + 24, ctba, 14, -244.2 , 0 );
setEffMoveKey( spep_1 + 26, ctba, 10.6, -236.5 , 0 );
setEffMoveKey( spep_1 + 28, ctba, 12, -242.5 , 0 );
setEffMoveKey( spep_1 + 30, ctba, 16.6, -235.6 , 0 );
setEffMoveKey( spep_1 + 32, ctba, 12, -240.8 , 0 );
setEffMoveKey( spep_1 + 34, ctba, 14.1, -230.9 , 0 );
setEffMoveKey( spep_1 + 36, ctba, 13.1, -236.4 , 0 );
setEffMoveKey( spep_1 + 38, ctba, 13.4, -230 , 0 );
setEffMoveKey( spep_1 + 40, ctba, 15.2, -235.6 , 0 );
setEffMoveKey( spep_1 + 42, ctba, 16.3, -229.6 , 0 );
setEffMoveKey( spep_1 + 44, ctba, 17.4, -232.3 , 0 );
setEffMoveKey( spep_1 + 46, ctba, 15.4, -229.6 , 0 );
setEffMoveKey( spep_1 + 48, ctba, 18.4, -230 , 0 );
setEffMoveKey( spep_1 + 50, ctba, 16.2, -227.6 , 0 );
setEffMoveKey( spep_1 + 52, ctba, 18.5, -227.6 , 0 );
setEffMoveKey( spep_1 + 54, ctba, 17.8, -225.5 , 0 );
setEffMoveKey( spep_1 + 56, ctba, 18.7, -225.1 , 0 );
setEffMoveKey( spep_1 + 58, ctba, 18.9, -224 , 0 );
setEffMoveKey( spep_1 + 60, ctba, 19.6, -223 , 0 );
setEffMoveKey( spep_1 + 62, ctba, 19.5, -222 , 0 );
setEffMoveKey( spep_1 + 64, ctba, 17.1, -221.3 , 0 );
setEffMoveKey( spep_1 + 66, ctba, 19.6, -219.6 , 0 );
setEffMoveKey( spep_1 + 68, ctba, 19.6, -226.7 , 0 );

setEffScaleKey( spep_1 + 10, ctba, 2, 2 );
setEffScaleKey( spep_1 + 12, ctba, 2.01, 2.01 );
setEffScaleKey( spep_1 + 14, ctba, 2.01, 2.01 );
setEffScaleKey( spep_1 + 16, ctba, 2.02, 2.02 );
setEffScaleKey( spep_1 + 18, ctba, 2.03, 2.03 );
setEffScaleKey( spep_1 + 20, ctba, 2.03, 2.03 );
setEffScaleKey( spep_1 + 22, ctba, 2.04, 2.04 );
setEffScaleKey( spep_1 + 24, ctba, 2.05, 2.05 );
setEffScaleKey( spep_1 + 26, ctba, 2.06, 2.06 );
setEffScaleKey( spep_1 + 28, ctba, 2.06, 2.06 );
setEffScaleKey( spep_1 + 30, ctba, 2.07, 2.07 );
setEffScaleKey( spep_1 + 32, ctba, 2.08, 2.08 );
setEffScaleKey( spep_1 + 34, ctba, 2.08, 2.08 );
setEffScaleKey( spep_1 + 36, ctba, 2.09, 2.09 );
setEffScaleKey( spep_1 + 38, ctba, 2.1, 2.1 );
setEffScaleKey( spep_1 + 40, ctba, 2.1, 2.1 );
setEffScaleKey( spep_1 + 42, ctba, 2.11, 2.11 );
setEffScaleKey( spep_1 + 44, ctba, 2.12, 2.12 );
setEffScaleKey( spep_1 + 46, ctba, 2.12, 2.12 );
setEffScaleKey( spep_1 + 48, ctba, 2.13, 2.13 );
setEffScaleKey( spep_1 + 50, ctba, 2.14, 2.14 );
setEffScaleKey( spep_1 + 52, ctba, 2.14, 2.14 );
setEffScaleKey( spep_1 + 54, ctba, 2.15, 2.15 );
setEffScaleKey( spep_1 + 56, ctba, 2.16, 2.16 );
setEffScaleKey( spep_1 + 58, ctba, 2.17, 2.17 );
setEffScaleKey( spep_1 + 60, ctba, 2.17, 2.17 );
setEffScaleKey( spep_1 + 62, ctba, 2.18, 2.18 );
setEffScaleKey( spep_1 + 64, ctba, 2.19, 2.19 );
setEffScaleKey( spep_1 + 66, ctba, 2.19, 2.19 );
setEffScaleKey( spep_1 + 68, ctba, 2.2, 2.2 );

setEffRotateKey( spep_1 + 10, ctba, 32 );
setEffRotateKey( spep_1 + 68, ctba, 32 );

setEffAlphaKey( spep_1 + 10, ctba, 255 );
setEffAlphaKey( spep_1 + 68, ctba, 255 );

--敵の動き

setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 70, 1, 0 );

changeAnime( spep_1 + 0, 1, 100 );

setMoveKey( spep_1 + 0, 1, 230.8, 283.4 , 0 );
setMoveKey( spep_1 + 70, 1, 230.8, 283.4 , 0 );

setScaleKey( spep_1 + 0, 1, 1, 1 );
setScaleKey( spep_1 + 70, 1, 1, 1 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 + 70, 1, 0 );

setEffShake(spep_1,1,70,10);



--集中線
shuchusen2 = entryEffectLife( spep_1 + 0,  906, 70, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_1 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_1 + 70, shuchusen2, 0, 0 , 0);

setEffScaleKey( spep_1 + 0, shuchusen2, 1.5, 1.5 );
setEffScaleKey( spep_1 + 70, shuchusen2, 1.5, 1.5 );

setEffRotateKey( spep_1 + 0, shuchusen2, 180 );
setEffRotateKey( spep_1 + 70, shuchusen2, 180 );

--黒背景
entryFadeBg(spep_1, 0, 70, 0, 0, 0, 0, 200);  -- 黒　背

--SE
playSe( spep_1+10, 1003); --ゴゴゴ

--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1+46 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    
    pauseAll( SP_dodge, 67);
    
    --キャラクターの固定
    setMoveKey(SP_dodge, 1,230.8, 283.4 , 0  );
    setScaleKey(SP_dodge , 1, 1.1, 1.1);
    setRotateKey(SP_dodge,   1, 0 );
    
    --キャラクターの固定
    setMoveKey(SP_dodge+8, 1,230.8, 283.4 , 0  );
    setScaleKey(SP_dodge+8 , 1, 1.1, 1.1);
    setRotateKey(SP_dodge+8,   1, 0 );
    
    
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
    setMoveKey(SP_dodge+9, 1, 230.8, 283.4, 0);
    setMoveKey(SP_dodge+10, 1, 230.8, 283.4, 0);
    
    
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

-- ** エフェクト等 ** --
entryFade(spep_1+62,4, 10, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- whit_fe fade

--次の準備
spep_2=spep_1+70;

--------------------------------------
--カードカットイン(90F)
--------------------------------------

playSe(spep_2,SE_05);
shuchusen=entryEffectLife(spep_2,906,90,0x100,-1,0,0,0);   -- 集中線
setEffScaleKey(spep_2,shuchusen,1.6,1.6);

speff2=entryEffect(spep_2,1507,0x80,-1,0,0,0);   -- カード
setEffReplaceTexture(speff2,1,1);
setEffReplaceTexture(speff2,2,0);-- カード差し替え
setEffReplaceTexture(speff2,5,4);-- 技名テクスチャ差し替え

-- ** エフェクト等 ** --
entryFade(spep_2+84,4,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_3=spep_2+94;

--------------------------------------
-- 爆発
--------------------------------------
--エフェクトの再生
explosion = entryEffect( spep_3 + 0, SP_03x, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_3 + 0, explosion, 0, 0 , 0 );
setEffMoveKey( spep_3 + 320, explosion, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, explosion, -1.0, 1.0 );
setEffScaleKey( spep_3 + 320, explosion, -1.0, 1.0 );
setEffAlphaKey( spep_3 + 0, explosion, 255 );
setEffAlphaKey( spep_3 + 320, explosion, 255 );
setEffRotateKey( spep_3 + 0, explosion, 0 );
setEffRotateKey( spep_3 + 320, explosion, 0 );


--エフェクトの再生
explosion2 = entryEffect( spep_3 + 0, SP_03x, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_3 + 0, explosion2, 0, 0 , 0 );
setEffMoveKey( spep_3 + 202, explosion2, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, explosion2, -1.0, 1.0 );
setEffScaleKey( spep_3 + 202, explosion2, -1.0, 1.0 );
setEffAlphaKey( spep_3 + 0, explosion2, 255 );
setEffAlphaKey( spep_3 + 202, explosion2, 255 );
setEffRotateKey( spep_3 + 0, explosion2, 0 );
setEffRotateKey( spep_3 + 202, explosion2, 0 );

--エフェクトの再生
explosion3 = entryEffect( spep_3 + 0, SP_03x, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_3 + 0, explosion3, 0, 0 , 0 );
setEffMoveKey( spep_3 + 202, explosion3, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, explosion3, -1.0, 1.0 );
setEffScaleKey( spep_3 + 202, explosion3, -1.0, 1.0 );
setEffAlphaKey( spep_3 + 0, explosion3, 255 );
setEffAlphaKey( spep_3 + 202, explosion3, 255 );
setEffRotateKey( spep_3 + 0, explosion3, 0 );
setEffRotateKey( spep_3 + 202, explosion3, 0 );

--敵の動き
setDisp( spep_3 + 68, 1, 1 );
setDisp( spep_3 + 204, 1, 0 );

changeAnime( spep_3 + 66, 1, 106 );

setMoveKey( spep_3 + 68, 1, 64.7, 113.8 , 0 );
setMoveKey( spep_3 + 72, 1, 65.7, 112.8 , 0 );
setMoveKey( spep_3 + 74, 1, 64.6, 113.8 , 0 );
setMoveKey( spep_3 + 76, 1, 64.6, 113.8 , 0 );
setMoveKey( spep_3 + 78, 1, 65.6, 112.8 , 0 );
setMoveKey( spep_3 + 80, 1, 64.6, 113.8 , 0 );
setMoveKey( spep_3 + 82, 1, 64.6, 113.9 , 0 );
setMoveKey( spep_3 + 84, 1, 64.6, 113.9 , 0 );
setMoveKey( spep_3 + 86, 1, 65.5, 112.9 , 0 );
setMoveKey( spep_3 + 88, 1, 64.6, 113.8 , 0 );
setMoveKey( spep_3 + 90, 1, 64.6, 113.8 , 0 );
setMoveKey( spep_3 + 92, 1, 65.5, 112.9 , 0 );
setMoveKey( spep_3 + 94, 1, 64.6, 113.8 , 0 );
setMoveKey( spep_3 + 96, 1, 64.6, 113.8 , 0 );
setMoveKey( spep_3 + 98, 1, 65.5, 112.9 , 0 );
setMoveKey( spep_3 + 100, 1, 64.6, 113.8 , 0 );
setMoveKey( spep_3 + 102, 1, 64.6, 113.8 , 0 );
setMoveKey( spep_3 + 104, 1, 65.5, 112.9 , 0 );
setMoveKey( spep_3 + 106, 1, 64.6, 113.8 , 0 );
setMoveKey( spep_3 + 108, 1, 64.6, 113.8 , 0 );
setMoveKey( spep_3 + 110, 1, 65.5, 112.9 , 0 );
setMoveKey( spep_3 + 112, 1, 64.6, 113.8 , 0 );
setMoveKey( spep_3 + 114, 1, 64.6, 113.8 , 0 );
setMoveKey( spep_3 + 116, 1, 65.5, 112.9 , 0 );
setMoveKey( spep_3 + 118, 1, 64.6, 113.8 , 0 );
setMoveKey( spep_3 + 120, 1, 64.6, 113.8 , 0 );
setMoveKey( spep_3 + 122, 1, 65.5, 112.9 , 0 );
setMoveKey( spep_3 + 124, 1, 64.6, 113.8 , 0 );
setMoveKey( spep_3 + 126, 1, 64.6, 113.8 , 0 );
setMoveKey( spep_3 + 128, 1, 65.5, 112.9 , 0 );
setMoveKey( spep_3 + 130, 1, 64.6, 113.8 , 0 );
setMoveKey( spep_3 + 132, 1, 64.6, 113.8 , 0 );
setMoveKey( spep_3 + 134, 1, 65.5, 112.9 , 0 );
setMoveKey( spep_3 + 136, 1, 64.6, 113.8 , 0 );
setMoveKey( spep_3 + 138, 1, 64.6, 113.7 , 0 );
setMoveKey( spep_3 + 140, 1, 65.5, 112.8 , 0 );
setMoveKey( spep_3 + 142, 1, 64.6, 113.7 , 0 );
setMoveKey( spep_3 + 144, 1, 64.6, 113.7 , 0 );
setMoveKey( spep_3 + 146, 1, 65.5, 112.8 , 0 );
setMoveKey( spep_3 + 148, 1, 64.5, 113.7 , 0 );
setMoveKey( spep_3 + 150, 1, 64.5, 113.7 , 0 );
setMoveKey( spep_3 + 152, 1, 65.4, 112.8 , 0 );
setMoveKey( spep_3 + 154, 1, 64.5, 113.7 , 0 );
setMoveKey( spep_3 + 156, 1, 64.5, 113.7 , 0 );
setMoveKey( spep_3 + 158, 1, 65.4, 112.8 , 0 );
setMoveKey( spep_3 + 160, 1, 64.5, 113.7 , 0 );
setMoveKey( spep_3 + 162, 1, 64.5, 113.7 , 0 );
setMoveKey( spep_3 + 164, 1, 65.4, 112.8 , 0 );
setMoveKey( spep_3 + 166, 1, 64.5, 113.7 , 0 );
setMoveKey( spep_3 + 168, 1, 64.5, 113.7 , 0 );
setMoveKey( spep_3 + 170, 1, 65.4, 112.8 , 0 );
setMoveKey( spep_3 + 172, 1, 64.5, 113.7 , 0 );
setMoveKey( spep_3 + 174, 1, 64.5, 113.7 , 0 );
setMoveKey( spep_3 + 176, 1, 65.4, 112.8 , 0 );
setMoveKey( spep_3 + 178, 1, 64.5, 113.7 , 0 );
setMoveKey( spep_3 + 180, 1, 64.5, 113.7 , 0 );
setMoveKey( spep_3 + 182, 1, 65.4, 112.8 , 0 );
setMoveKey( spep_3 + 184, 1, 64.5, 113.7 , 0 );
setMoveKey( spep_3 + 186, 1, 64.5, 113.7 , 0 );
setMoveKey( spep_3 + 188, 1, 65.4, 112.8 , 0 );
setMoveKey( spep_3 + 190, 1, 64.5, 113.7 , 0 );
setMoveKey( spep_3 + 192, 1, 64.7, 113.7 , 0 );
setMoveKey( spep_3 + 194, 1, 65.5, 112.8 , 0 );
setMoveKey( spep_3 + 196, 1, 64.7, 113.6 , 0 );
setMoveKey( spep_3 + 198, 1, 64.7, 113.6 , 0 );
setMoveKey( spep_3 + 200, 1, 78, 112 , 0 );
setMoveKey( spep_3 + 202, 1, 63.8, 119.2 , 0 );
setMoveKey( spep_3 + 204, 1, 57.3, 107.6 , 0 );

a=0.4

setScaleKey( spep_3 + 68, 1, 1.17-a, 1.17-a );
setScaleKey( spep_3 + 84, 1, 1.17-a, 1.17-a );
setScaleKey( spep_3 + 86, 1, 1.16-a, 1.16-a );
setScaleKey( spep_3 + 92, 1, 1.16-a, 1.16-a );
setScaleKey( spep_3 + 94, 1, 1.15-a, 1.15-a );
setScaleKey( spep_3 + 102, 1, 1.15-a, 1.15-a );
setScaleKey( spep_3 + 104, 1, 1.14-a, 1.14-a );
setScaleKey( spep_3 + 110, 1, 1.14-a, 1.14-a );
setScaleKey( spep_3 + 112, 1, 1.13-a, 1.13-a );
setScaleKey( spep_3 + 120, 1, 1.13-a, 1.13-a );
setScaleKey( spep_3 + 122, 1, 1.12-a, 1.12-a );
setScaleKey( spep_3 + 128, 1, 1.12-a, 1.12-a );
setScaleKey( spep_3 + 130, 1, 1.11-a, 1.11-a );
setScaleKey( spep_3 + 136, 1, 1.11-a, 1.11-a );
setScaleKey( spep_3 + 138, 1, 1.1-a, 1.1-a );
setScaleKey( spep_3 + 146, 1, 1.1-a, 1.1-a );
setScaleKey( spep_3 + 148, 1, 1.09-a, 1.09-a );
setScaleKey( spep_3 + 154, 1, 1.09-a, 1.09-a );
setScaleKey( spep_3 + 156, 1, 1.08-a, 1.08-a );
setScaleKey( spep_3 + 164, 1, 1.08-a, 1.08-a );
setScaleKey( spep_3 + 166, 1, 1.07-a, 1.07-a );
setScaleKey( spep_3 + 172, 1, 1.07-a, 1.07-a );
setScaleKey( spep_3 + 174, 1, 1.06-a, 1.06-a );
setScaleKey( spep_3 + 180, 1, 1.06-a, 1.06-a );
setScaleKey( spep_3 + 182, 1, 1.05-a, 1.05-a );
setScaleKey( spep_3 + 204, 1, 1.05-a, 1.05-a );
setScaleKey( spep_3 + 205, 1, 1.17-a, 1.17-a );
setScaleKey( spep_3 + 206, 1, 1.17-a, 1.17-a );
setScaleKey( spep_3 + 274, 1, 1.17-a, 1.17-a );

setRotateKey( spep_3 + 68, 1, 0 );
setRotateKey( spep_3 + 204, 1, 0 );
setRotateKey( spep_3 + 205, 1, 0 );
setRotateKey( spep_3 + 206, 1, 0 );
setRotateKey( spep_3 + 274, 1, 0 );

--集中線
shuchusen3 = entryEffectLife( spep_3 + 66,  906, 254, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_3 + 66, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_3 + 320, shuchusen3, 0, 0 , 0);

setEffScaleKey( spep_3 + 66, shuchusen3, 1.5, 1.5 );
setEffScaleKey( spep_3 + 320, shuchusen3, 1.5, 1.5 );

setEffRotateKey( spep_3 + 66, shuchusen3, 180 );
setEffRotateKey( spep_3 + 320, shuchusen3, 180 );

setEffAlphaKey( spep_3 + 66, shuchusen3, 255 );
--setEffAlphaKey( spep_3 + 65, shuchusen3, 255 );
--setEffAlphaKey( spep_3 + 66, shuchusen3, 255 );
setEffAlphaKey( spep_3 + 320, shuchusen3, 255 );

-- ** エフェクト等 ** --
entryFade(spep_3+198,2,4,2,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--SE
playSe( spep_3+2, 1003); --斬りゅ
playSe( spep_3+6, 1004); --斬りゅ
playSe( spep_3+18, 1003); --斬りゅ
playSe( spep_3+28, 1004); --斬りゅ
playSe( spep_3+36, 1003); --斬りゅ
--playSe( spep_3+66, 1011); --斬りゅ
playSe( spep_3+160, 1040); --剣をしまう
playSe( spep_3+204, 1024); --爆裂


--黒背景
entryFadeBg(spep_3, 0, 70, 6, 0, 0, 0, 255);  -- 黒　背
entryFadeBg(spep_3, 0, 320, 0, 0, 0, 0, 200);  -- 黒　背

-- ダメージ表示
dealDamage(spep_3+204);
entryFade( spep_3+300, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_3+310);

end