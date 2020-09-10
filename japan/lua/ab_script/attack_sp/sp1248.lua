--1016080 パラガス&ブロリー_復讐の号令
--sp_effect_b1_00062


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
SP_01=	152677	;--	やれい
SP_02=	152678	;--	前方突進
SP_03=	152679	;--	ぶん殴る
SP_04=	152680	;--	ぶん殴る背景
SP_05=	152681	;--	雪山殴る
SP_06=	152682	;--	雪山殴る背景
SP_07=	152683	;--	雪山飛び出る
SP_08=	152684	;--	雪山飛び出る背景
SP_09=	152685	;--	氷山打撲（前）
SP_10=	152686	;--	氷山打撲（後）

--敵
SP_01x=	152677	;--	やれい	
SP_02x=	152678	;--	前方突進	
SP_03x=	152687	;--	ぶん殴る	(敵)
SP_04x=	152680	;--	ぶん殴る背景	
SP_05x=	152688	;--	雪山殴る	(敵)
SP_06x=	152682	;--	雪山殴る背景	
SP_07x=	152689	;--	雪山飛び出る	(敵)
SP_08x=	152684	;--	雪山飛び出る背景	
SP_09x=	152685	;--	氷山打撲（前）	
SP_10x=	152686	;--	氷山打撲（後）	
	
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
--号令
------------------------------------------------------
--初回
spep_0=0;

--エフェクト
order=entryEffectLife(spep_0,SP_01,112,0x80,-1,0,0,0);

setEffMoveKey( spep_0 + 0, order, 0, 0 , 0 );
setEffMoveKey( spep_0 + 112, order, 0, 0 , 0 );

setEffScaleKey(spep_0,order,1.0,1.0);
setEffScaleKey(spep_0+112,order,1.0,1.0);

setEffRotateKey(spep_0,order,0);
setEffRotateKey(spep_0+112,order,0);

setEffAlphaKey(spep_0,order,255);
setEffAlphaKey(spep_0+112,order,255);




-- ** 顔カットイン ** --
speff = entryEffect( spep_0+8 + 16, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0+8 + 16, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

--文字エントリー
ctgogo = entryEffectLife( spep_0+8 + 28,  190006, 74, 0x100, -1, 0, -8.5, 515.5 ); --ゴゴゴ
setEffShake( spep_0+8 + 28, ctgogo, 74, 10 );

setEffMoveKey( spep_0+8 + 28, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_0+8 + 102, ctgogo, -9.9, 515.5 , 0 );

setEffScaleKey( spep_0+8 + 28, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_0+8 + 94, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_0+8 + 96, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_0+8 + 98, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_0+8 + 100, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_0+8 + 102, ctgogo, 1.69, 1.69 );

setEffRotateKey( spep_0+8 + 28, ctgogo, 0 );
setEffRotateKey( spep_0+8 + 102, ctgogo, 0 );

setEffAlphaKey( spep_0+8 + 28, ctgogo, 0 );
setEffAlphaKey( spep_0+8 + 29, ctgogo, 255 );
setEffAlphaKey( spep_0+8 + 30, ctgogo, 255 );
setEffAlphaKey( spep_0+8 + 102, ctgogo, 255 );


--集中線
shuchusen1 = entryEffectLife( spep_0 + 16,  906, 98, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_0 + 16, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 114, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 16, shuchusen1, 1, 1 );
setEffScaleKey( spep_0 + 114, shuchusen1, 1, 1 );

setEffRotateKey( spep_0 + 16, shuchusen1, 180 );
setEffRotateKey( spep_0 + 114, shuchusen1, 180 );

setEffAlphaKey( spep_0 , shuchusen1, 0 );
setEffAlphaKey( spep_0 + 36, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 37, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 38, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 114, shuchusen1, 255 );

--SE
playSe( spep_0 + 38, SE_04 );  --ゴゴゴ

--白フェード
entryFade( spep_0 + 106, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

--次の準備
spep_1=114;
--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen2, 90, 20 );

setEffMoveKey( spep_1 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_1 + 90, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen2, 1.6, 1.6 );
setEffScaleKey( spep_1 + 90, shuchusen2, 1.6, 1.6 );

setEffRotateKey( spep_1 + 0, shuchusen2, 0 );
setEffRotateKey( spep_1 + 90, shuchusen2, 0 );

setEffAlphaKey( spep_1 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_1 + 90, shuchusen2, 255 );

-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );

--白フェード
entryFade( spep_1 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

--------------------------------------
--突進
--------------------------------------
--エフェクト
rush=entryEffectLife(spep_2,SP_02,152,0x80,-1,0,0,0);

setEffMoveKey( spep_2 + 0, rush, 0, 0 , 0 );
setEffMoveKey( spep_2+152, rush, 0, 0 , 0 );

setEffScaleKey(spep_2,rush,1.0,1.0);
setEffScaleKey(spep_2+152,rush,1.0,1.0);

setEffRotateKey(spep_2,rush,0);
setEffRotateKey(spep_2+152,rush,0);

setEffAlphaKey(spep_2,rush,255);
--setEffAlphaKey(spep_2-6+158,rush,255);
setEffAlphaKey(spep_2+150,rush,255);
setEffAlphaKey(spep_2+151,rush,255);
setEffAlphaKey(spep_2+152,rush,0);

--集中線
shuchusen3 = entryEffectLife( spep_2 + 0,  906, 152, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_2 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_2+152, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen3, 1, 1 );
setEffScaleKey( spep_2 + 152, shuchusen3, 1, 1 );

setEffRotateKey( spep_2 + 0, shuchusen3, 180 );
setEffRotateKey( spep_2 + 152, shuchusen3, 180 );

setEffAlphaKey( spep_2 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_2 + 74, shuchusen3, 255 );
setEffAlphaKey( spep_2 + 75, shuchusen3, 0 );
setEffAlphaKey( spep_2 + 76, shuchusen3, 0 );
--setEffAlphaKey( spep_2 + 98, shuchusen3, 0 );
setEffAlphaKey( spep_2 + 98, shuchusen3, 0 );
setEffAlphaKey( spep_2 + 99, shuchusen3, 255 );
setEffAlphaKey( spep_2 + 100, shuchusen3, 255 );
setEffAlphaKey( spep_2 + 150, shuchusen3, 255 );
setEffAlphaKey( spep_2 + 151, shuchusen3, 255 );
setEffAlphaKey( spep_2 + 152, shuchusen3, 0 );

--SE
SE1=playSe( spep_2 , 1066 );  --吠える
--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2+130 ; --エンドフェイズのフレーム数を置き換える
    
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
--白フェード
--entryFade( spep_2 + 132, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
stopSe(spep_2 + 98,SE1,0);
playSe( spep_2 + 100, SE_04 );  --ダッシュ

-- ** 次の準備 ** --
spep_3 = spep_2+ 152;

--------------------------------------
--ぶん殴る
--------------------------------------
--エフェクト(前)
hit_f=entryEffectLife(spep_3,SP_03,90,0x100,-1,0,0,0);

setEffMoveKey( spep_3 + 0, hit_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 90, hit_f, 0, 0 , 0 );

setEffScaleKey(spep_3,hit_f,1.0,1.0);
setEffScaleKey(spep_3+90,hit_f,1.0,1.0);

setEffRotateKey(spep_3,hit_f,0);
setEffRotateKey(spep_3+90,hit_f,0);

setEffAlphaKey(spep_3,hit_f,255);
setEffAlphaKey(spep_3+90,hit_f,255);

--エフェクト(後)
hit_b=entryEffectLife(spep_3,SP_04,90,0x80,-1,0,0,0);

setEffMoveKey( spep_3 + 0, hit_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 90, hit_b, 0, 0 , 0 );

setEffScaleKey(spep_3,hit_b,1.1,1.1);
setEffScaleKey(spep_3+90,hit_b,1.1,1.1);

setEffRotateKey(spep_3,hit_b,0);
setEffRotateKey(spep_3+90,hit_b,0);

setEffAlphaKey(spep_3,hit_b,255);
setEffAlphaKey(spep_3+90,hit_b,255);

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 88, 1, 0 );

changeAnime( spep_3 + 0, 1, 100 );
changeAnime( spep_3-3 + 22, 1, 108 );

setMoveKey( spep_3-3 + 0, 1, 519.3, 300 , 0 );
setMoveKey( spep_3-3 + 2, 1, 481, 279.9 , 0 );
setMoveKey( spep_3-3 + 4, 1, 443.5, 260.2 , 0 );
setMoveKey( spep_3-3 + 6, 1, 406.8, 240.7 , 0 );
setMoveKey( spep_3-3 + 8, 1, 371, 221.6 , 0 );
setMoveKey( spep_3-3 + 10, 1, 336, 202.7 , 0 );
setMoveKey( spep_3-3 + 12, 1, 301.7, 184.2 , 0 );
setMoveKey( spep_3-3 + 14, 1, 268.4, 166 , 0 );
setMoveKey( spep_3-3 + 16, 1, 235.7, 148.1 , 0 );
setMoveKey( spep_3-3 + 18, 1, 203.8, 130.5 , 0 );
setMoveKey( spep_3-3 + 21, 1, 172.9, 113.3 , 0 );
setMoveKey( spep_3-3 + 22, 1, 221.8, 210.1 , 0 );
setMoveKey( spep_3-3 + 24, 1, 234, 179 , 0 );
setMoveKey( spep_3-3 + 26, 1, 211.1, 193.5 , 0 );
setMoveKey( spep_3-3 + 28, 1, 230.5, 235.7 , 0 );
setMoveKey( spep_3-3 + 30, 1, 213, 305.4 , 0 );
setMoveKey( spep_3-3 + 32, 1, 227.7, 324.5 , 0 );
setMoveKey( spep_3-3 + 34, 1, 214.9, 398.8 , 0 );
setMoveKey( spep_3-3 + 36, 1, 233.4, 391.8 , 0 );
setMoveKey( spep_3-3 + 38, 1, 222, 398.6 , 0 );
setMoveKey( spep_3-3 + 40, 1, 226.7, 391.6 , 0 );
setMoveKey( spep_3-3 + 42, 1, 215.3, 400.7 , 0 );
setMoveKey( spep_3-3 + 44, 1, 229.2, 402.9 , 0 );
setMoveKey( spep_3-3 + 46, 1, 224.7, 402.8 , 0 );
setMoveKey( spep_3-3 + 48, 1, 224.8, 405 , 0 );
setMoveKey( spep_3-3 + 50, 1, 225, 407.2 , 0 );
setMoveKey( spep_3-3 + 52, 1, 225.1, 409.4 , 0 );
setMoveKey( spep_3-3 + 54, 1, 225.2, 411.6 , 0 );
setMoveKey( spep_3-3 + 56, 1, 225.3, 413.8 , 0 );
setMoveKey( spep_3-3 + 58, 1, 225.4, 416 , 0 );
setMoveKey( spep_3-3 + 60, 1, 225.5, 418.2 , 0 );
setMoveKey( spep_3-3 + 62, 1, 225.6, 420.4 , 0 );
setMoveKey( spep_3-3 + 64, 1, 225.7, 422.6 , 0 );
setMoveKey( spep_3-3 + 66, 1, 225.8, 424.8 , 0 );
setMoveKey( spep_3-3 + 68, 1, 226, 427 , 0 );
setMoveKey( spep_3-3 + 70, 1, 226, 427.2 , 0 );
setMoveKey( spep_3-3 + 72, 1, 226, 427.5 , 0 );
setMoveKey( spep_3-3 + 74, 1, 226, 427.7 , 0 );
setMoveKey( spep_3-3 + 76, 1, 226, 428 , 0 );
setMoveKey( spep_3-3 + 78, 1, 226, 428.3 , 0 );
setMoveKey( spep_3-3 + 80, 1, 226.1, 428.5 , 0 );
setMoveKey( spep_3-3 + 82, 1, 226.1, 428.8 , 0 );
setMoveKey( spep_3-3 + 84, 1, 226.1, 429 , 0 );
setMoveKey( spep_3-3 + 86, 1, 226.1, 429.3 , 0 );
setMoveKey( spep_3 + 88, 1, 226.1, 429.5 , 0 );

setScaleKey( spep_3-3 + 0, 1, 0.6, 0.6 );
setScaleKey( spep_3-3 + 2, 1, 0.73, 0.73 );
setScaleKey( spep_3-3 + 4, 1, 0.84, 0.84 );
setScaleKey( spep_3-3 + 6, 1, 0.96, 0.96 );
setScaleKey( spep_3-3 + 8, 1, 1.07, 1.07 );
setScaleKey( spep_3-3 + 10, 1, 1.17, 1.17 );
setScaleKey( spep_3-3 + 12, 1, 1.27, 1.27 );
setScaleKey( spep_3-3 + 14, 1, 1.36, 1.36 );
setScaleKey( spep_3-3 + 16, 1, 1.44, 1.44 );
setScaleKey( spep_3-3 + 18, 1, 1.53, 1.53 );
setScaleKey( spep_3-3 + 21, 1, 1.6, 1.6 );
setScaleKey( spep_3-3 + 22, 1, 3.3, 3.3 );
setScaleKey( spep_3-3 + 24, 1, 2.6, 2.6 );
setScaleKey( spep_3-3 + 26, 1, 1.97, 1.97 );
setScaleKey( spep_3-3 + 28, 1, 1.85, 1.85 );
setScaleKey( spep_3-3 + 30, 1, 1.73, 1.73 );
setScaleKey( spep_3-3 + 32, 1, 1.62, 1.62 );
setScaleKey( spep_3-3 + 34, 1, 1.5, 1.5 );
setScaleKey( spep_3-3 + 36, 1, 1.44, 1.44 );
setScaleKey( spep_3-3 + 38, 1, 1.37, 1.37 );
setScaleKey( spep_3-3 + 40, 1, 1.31, 1.31 );
setScaleKey( spep_3-3 + 42, 1, 1.24, 1.24 );
setScaleKey( spep_3-3 + 44, 1, 1.18, 1.18 );
setScaleKey( spep_3-3 + 46, 1, 1.11, 1.11 );
setScaleKey( spep_3-3 + 48, 1, 1.05, 1.05 );
setScaleKey( spep_3-3 + 50, 1, 0.98, 0.98 );
setScaleKey( spep_3-3 + 52, 1, 0.92, 0.92 );
setScaleKey( spep_3-3 + 54, 1, 0.85, 0.85 );
setScaleKey( spep_3-3 + 56, 1, 0.79, 0.79 );
setScaleKey( spep_3-3 + 58, 1, 0.72, 0.72 );
setScaleKey( spep_3-3 + 60, 1, 0.66, 0.66 );
setScaleKey( spep_3-3 + 62, 1, 0.59, 0.59 );
setScaleKey( spep_3-3 + 64, 1, 0.53, 0.53 );
setScaleKey( spep_3-3 + 66, 1, 0.47, 0.47 );
setScaleKey( spep_3-3 + 68, 1, 0.4, 0.4 );
setScaleKey( spep_3-3 + 70, 1, 0.37, 0.37 );
setScaleKey( spep_3-3 + 72, 1, 0.34, 0.34 );
setScaleKey( spep_3-3 + 74, 1, 0.31, 0.31 );
setScaleKey( spep_3-3 + 76, 1, 0.28, 0.28 );
setScaleKey( spep_3-3 + 78, 1, 0.25, 0.25 );
setScaleKey( spep_3-3 + 80, 1, 0.22, 0.22 );
setScaleKey( spep_3-3 + 82, 1, 0.19, 0.19 );
setScaleKey( spep_3-3 + 84, 1, 0.16, 0.16 );
setScaleKey( spep_3-3 + 86, 1, 0.13, 0.13 );
setScaleKey( spep_3 + 88, 1, 0.1, 0.1 );

setRotateKey( spep_3-3 + 0, 1, 0 );
setRotateKey( spep_3 + 88, 1, 0 );

--文字エントリー
ctbago = entryEffectLife( spep_3-4 + 24,  10021, 22, 0x100, -1, 0, -80.6, 332.9 );--バゴォッ

setEffShake( spep_3-4 + 24 , ctbago, 22, 10 );

setEffMoveKey( spep_3-4 + 24, ctbago, -80.6, 332.9 , 0 );
setEffMoveKey( spep_3-4 + 26, ctbago, -105.7, 372 , 0 );
setEffMoveKey( spep_3-4 + 28, ctbago, -106.8, 396.5 , 0 );
setEffMoveKey( spep_3-4 + 30, ctbago, -113.7, 390 , 0 );
setEffMoveKey( spep_3-4 + 32, ctbago, -101.8, 409.8 , 0 );
setEffMoveKey( spep_3-4 + 34, ctbago, -113.5, 401.5 , 0 );
setEffMoveKey( spep_3-4 + 36, ctbago, -99.7, 404.9 , 0 );
setEffMoveKey( spep_3-4 + 38, ctbago, -117.7, 411.4 , 0 );
setEffMoveKey( spep_3-4 + 40, ctbago, -110, 413.5 , 0 );
setEffMoveKey( spep_3-4 + 42, ctbago, -117.6, 406.1 , 0 );
setEffMoveKey( spep_3-4 + 44, ctbago, -106.3, 432.8 , 0 );
setEffMoveKey( spep_3-4 + 46, ctbago, -108.8, 447.7 , 0 );

setEffScaleKey( spep_3-4 + 24, ctbago, 1.88, 1.88 );
setEffScaleKey( spep_3-4 + 26, ctbago, 2.37, 2.37 );
setEffScaleKey( spep_3-4 + 28, ctbago, 2.53, 2.53 );
setEffScaleKey( spep_3-4 + 30, ctbago, 2.56, 2.56 );
setEffScaleKey( spep_3-4 + 32, ctbago, 2.59, 2.59 );
setEffScaleKey( spep_3-4 + 34, ctbago, 2.62, 2.62 );
setEffScaleKey( spep_3-4 + 36, ctbago, 2.65, 2.65 );
setEffScaleKey( spep_3-4 + 38, ctbago, 2.67, 2.67 );
setEffScaleKey( spep_3-4 + 40, ctbago, 2.7, 2.7 );
setEffScaleKey( spep_3-4 + 42, ctbago, 2.73, 2.73 );
setEffScaleKey( spep_3-4 + 44, ctbago, 2.82, 2.82 );
setEffScaleKey( spep_3-4 + 46, ctbago, 2.96, 2.96 );

setEffRotateKey( spep_3-4 + 24, ctbago, -11.7 );
setEffRotateKey( spep_3-4 + 26, ctbago, -14.6 );
setEffRotateKey( spep_3-4 + 28, ctbago, -15.6 );
setEffRotateKey( spep_3-4 + 30, ctbago, -15.5 );
setEffRotateKey( spep_3-4 + 36, ctbago, -15.5 );
setEffRotateKey( spep_3-4 + 38, ctbago, -15.6 );
setEffRotateKey( spep_3-4 + 46, ctbago, -15.6 );

--setEffAlphaKey( spep_3-4 + 24, ctbago, 0 );
setEffAlphaKey( spep_3-4 + 24, ctbago, 255 );
setEffAlphaKey( spep_3-4 + 26, ctbago, 255 );
setEffAlphaKey( spep_3-4 + 40, ctbago, 255 );
setEffAlphaKey( spep_3-4 + 42, ctbago, 227 );
setEffAlphaKey( spep_3-4 + 44, ctbago, 142 );
setEffAlphaKey( spep_3-4 + 46, ctbago, 0 );

--SE
playSe( spep_3, SE_04 );  --ダッシュ
playSe( spep_3+20, 1011 );  --殴る
playSe( spep_3+42, 44 );  --飛んでいく

--白フェード
entryFade( spep_3 + 80, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 90;

--------------------------------------
--雪山殴る
--------------------------------------
--エフェクト(前)
hit2_f=entryEffectLife(spep_4,SP_05,120,0x100,-1,0,0,0);

setEffMoveKey( spep_4 + 0, hit2_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 120, hit2_f, 0, 0 , 0 );

setEffScaleKey(spep_4,hit2_f,1.0,1.0);
setEffScaleKey(spep_4+120,hit2_f,1.0,1.0);

setEffRotateKey(spep_4,hit2_f,0);
setEffRotateKey(spep_4+120,hit2_f,0);

setEffAlphaKey(spep_4,hit2_f,255);
setEffAlphaKey(spep_4+120,hit2_f,255);

--エフェクト(後)
hit2_b=entryEffectLife(spep_4,SP_06,120,0x80,-1,0,0,0);

setEffMoveKey( spep_4 + 0, hit2_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 120, hit2_b, 0, 0 , 0 );

setEffScaleKey(spep_4,hit2_b,1.0,1.0);
setEffScaleKey(spep_4+120,hit2_b,1.0,1.0);

setEffRotateKey(spep_4,hit2_b,0);
setEffRotateKey(spep_4+120,hit2_b,0);

setEffAlphaKey(spep_4,hit2_b,255);
setEffAlphaKey(spep_4+120,hit2_b,255);

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 118, 1, 0 );

changeAnime( spep_4 + 0, 1, 108 );
changeAnime( spep_4-3 + 64, 1, 106 );

setMoveKey( spep_4-3 + 0, 1, -601.7, 40.8 , 0 );
setMoveKey( spep_4-3 + 2, 1, -499.9, 40.8 , 0 );
setMoveKey( spep_4-3 + 4, 1, -398.3, 40.8 , 0 );
setMoveKey( spep_4-3 + 6, 1, -296.8, 40.8 , 0 );
setMoveKey( spep_4-3 + 8, 1, -195, 40.8 , 0 );
setMoveKey( spep_4-3 + 10, 1, -93.4, 40.8 , 0 );
setMoveKey( spep_4-3 + 12, 1, -87.7, 40.8 , 0 );
setMoveKey( spep_4-3 + 14, 1, -82, 40.8 , 0 );
setMoveKey( spep_4-3 + 16, 1, -76.2, 40.8 , 0 );
setMoveKey( spep_4-3 + 18, 1, -70.5, 40.8 , 0 );
setMoveKey( spep_4-3 + 20, 1, -42.8, 40.8 , 0 );
setMoveKey( spep_4-3 + 22, 1, -15.1, 40.8 , 0 );
setMoveKey( spep_4-3 + 24, 1, 12.6, 40.8 , 0 );
setMoveKey( spep_4-3 + 26, 1, 40.4, 40.8 , 0 );
setMoveKey( spep_4-3 + 28, 1, 72.1, 44.8 , 0 );
setMoveKey( spep_4-3 + 30, 1, 60, 33.8 , 0 );
setMoveKey( spep_4-3 + 32, 1, 72.1, 36.8 , 0 );
setMoveKey( spep_4-3 + 34, 1, 58.1, 45.8 , 0 );
setMoveKey( spep_4-3 + 36, 1, 72.1, 44.8 , 0 );
setMoveKey( spep_4-3 + 38, 1, 58, 37.8 , 0 );
setMoveKey( spep_4-3 + 40, 1, 72.1, 36.8 , 0 );
setMoveKey( spep_4-3 + 42, 1, 77.1, 44.8 , 0 );
setMoveKey( spep_4-3 + 44, 1, 96, 42.8 , 0 );
setMoveKey( spep_4-3 + 46, 1, 104.9, 38.8 , 0 );
setMoveKey( spep_4-3 + 48, 1, 121.8, 38.8 , 0 );
setMoveKey( spep_4-3 + 50, 1, 132.7, 40.8 , 0 );
setMoveKey( spep_4-3 + 52, 1, 145.6, 40.8 , 0 );
setMoveKey( spep_4-3 + 54, 1, 158.5, 40.8 , 0 );
setMoveKey( spep_4-3 + 56, 1, 171.4, 40.8 , 0 );
setMoveKey( spep_4-3 + 58, 1, 184.3, 40.8 , 0 );
setMoveKey( spep_4-3 + 60, 1, 197.2, 40.8 , 0 );
setMoveKey( spep_4-3 + 63, 1, 210.1, 40.8 , 0 );
setMoveKey( spep_4-3 + 64, 1, 246.9, 62.1 , 0 );
setMoveKey( spep_4-3 + 66, 1, 314.8, 37.6 , 0 );
setMoveKey( spep_4-3 + 68, 1, 380.9, 60 , 0 );
setMoveKey( spep_4-3 + 70, 1, 461, 42.1 , 0 );
setMoveKey( spep_4-3 + 72, 1, 534.1, 72.9 , 0 );
setMoveKey( spep_4-3 + 74, 1, 565.2, 42.5 , 0 );
setMoveKey( spep_4-3 + 76, 1, 629, 61.2 , 0 );
setMoveKey( spep_4-3 + 78, 1, 718, 36 , 0 );
setMoveKey( spep_4-3 + 80, 1, 773.1, 61.8 , 0 );
setMoveKey( spep_4-3 + 82, 1, 759.4, 34.9 , 0 );
setMoveKey( spep_4-3 + 84, 1, 750.1, 62.4 , 0 );
setMoveKey( spep_4-3 + 86, 1, 775.5, 49.5 , 0 );
setMoveKey( spep_4-3 + 88, 1, 780.7, 49.7 , 0 );
setMoveKey( spep_4-3 + 90, 1, 781, 50 , 0 );
setMoveKey( spep_4-3 + 92, 1, 789.1, 50.2 , 0 );
setMoveKey( spep_4-3 + 94, 1, 788.5, 50.4 , 0 );
setMoveKey( spep_4-3 + 96, 1, 799.5, 50.7 , 0 );
setMoveKey( spep_4-3 + 98, 1, 793.9, 51 , 0 );
setMoveKey( spep_4-3 + 100, 1, 805, 51.1 , 0 );
setMoveKey( spep_4-3 + 102, 1, 804.3, 51.4 , 0 );
setMoveKey( spep_4-3 + 104, 1, 815.4, 51.6 , 0 );
setMoveKey( spep_4-3 + 106, 1, 809.7, 51.9 , 0 );
setMoveKey( spep_4-3 + 108, 1, 820.9, 52.2 , 0 );
setMoveKey( spep_4-3 + 110, 1, 820.1, 52.4 , 0 );
setMoveKey( spep_4-3 + 112, 1, 831.3, 52.6 , 0 );
setMoveKey( spep_4-3 + 114, 1, 830.4, 52.9 , 0 );
setMoveKey( spep_4-3 + 116, 1, 836.8, 53.2 , 0 );
setMoveKey( spep_4 + 118, 1, 835.9, 53.3 , 0 );

setScaleKey( spep_4 + 0, 1, 1.4, 1.4 );
setScaleKey( spep_4-3 + 63, 1, 1.4, 1.4 );
setScaleKey( spep_4-3 + 64, 1, 1.75, 1.75 );
setScaleKey( spep_4-3 + 66, 1, 2.1, 2.1 );
setScaleKey( spep_4-3 + 68, 1, 2.11, 2.11 );
setScaleKey( spep_4-3 + 70, 1, 2.13, 2.13 );
setScaleKey( spep_4-3 + 72, 1, 2.13, 2.13 );
setScaleKey( spep_4-3 + 74, 1, 2.14, 2.14 );
setScaleKey( spep_4-3 + 76, 1, 2.16, 2.16 );
setScaleKey( spep_4-3 + 78, 1, 2.17, 2.17 );
setScaleKey( spep_4-3 + 80, 1, 2.17, 2.17 );
setScaleKey( spep_4-3 + 82, 1, 2.18, 2.18 );
setScaleKey( spep_4-3 + 84, 1, 2.2, 2.2 );
setScaleKey( spep_4-3 + 86, 1, 2.21, 2.21 );
setScaleKey( spep_4-3 + 88, 1, 2.23, 2.23 );
setScaleKey( spep_4-3 + 90, 1, 2.23, 2.23 );
setScaleKey( spep_4-3 + 92, 1, 2.24, 2.24 );
setScaleKey( spep_4-3 + 94, 1, 2.25, 2.25 );
setScaleKey( spep_4-3 + 96, 1, 2.27, 2.27 );
setScaleKey( spep_4-3 + 98, 1, 2.27, 2.27 );
setScaleKey( spep_4-3 + 100, 1, 2.28, 2.28 );
setScaleKey( spep_4-3 + 102, 1, 2.3, 2.3 );
setScaleKey( spep_4-3 + 104, 1, 2.31, 2.31 );
setScaleKey( spep_4-3 + 106, 1, 2.31, 2.31 );
setScaleKey( spep_4-3 + 108, 1, 2.32, 2.32 );
setScaleKey( spep_4-3 + 110, 1, 2.34, 2.34 );
setScaleKey( spep_4-3 + 112, 1, 2.35, 2.35 );
setScaleKey( spep_4-3 + 114, 1, 2.37, 2.37 );
setScaleKey( spep_4-3 + 116, 1, 2.37, 2.37 );
setScaleKey( spep_4 + 118, 1, 2.38, 2.38 );

setRotateKey( spep_4-3 + 0, 1, 8 );
setRotateKey( spep_4-3 + 28, 1, 8 );
setRotateKey( spep_4-3 + 30, 1, 9.2 );
setRotateKey( spep_4-3 + 32, 1, 8 );
setRotateKey( spep_4-3 + 34, 1, 6 );
setRotateKey( spep_4-3 + 36, 1, 8 );
setRotateKey( spep_4-3 + 38, 1, 9.2 );
setRotateKey( spep_4-3 + 40, 1, 8 );
setRotateKey( spep_4-3 + 63, 1, 8 );
setRotateKey( spep_4-3 + 64, 1, -40.6 );
setRotateKey( spep_4-3 + 66, 1, -42.1 );
setRotateKey( spep_4-3 + 68, 1, -39.9 );
setRotateKey( spep_4-3 + 70, 1, -40.6 );
setRotateKey( spep_4-3 + 72, 1, -42.1 );
setRotateKey( spep_4-3 + 74, 1, -39.9 );
setRotateKey( spep_4-3 + 76, 1, -40.6 );
setRotateKey( spep_4-3 + 78, 1, -42.1 );
setRotateKey( spep_4-3 + 80, 1, -39.9 );
setRotateKey( spep_4 + 118, 1, -39.9 );


--集中線
shuchusen4 = entryEffectLife( spep_4 + 60,  906, 58, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_4 + 60, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_4 + 118, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_4 + 60, shuchusen4, 1.25, 1.25 );
setEffScaleKey( spep_4 + 118, shuchusen4, 1.25, 1.25 );

setEffRotateKey( spep_4 + 02, shuchusen4, 180 );
setEffRotateKey( spep_4 + 118, shuchusen4, 180 );

setEffAlphaKey( spep_4 + 60, shuchusen4, 0 );
setEffAlphaKey( spep_4 + 61, shuchusen4, 255 );
setEffAlphaKey( spep_4 + 62, shuchusen4, 255 );
setEffAlphaKey( spep_4 + 118, shuchusen4, 255 );

--SE
playSe( spep_4, 44 );  --飛んでいく
playSe( spep_4+26, 20 );  --岩にぶつかる
playSe( spep_4+62, 1011 );  --殴る

--白フェード
entryFade( spep_4+ 112, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 120;

--------------------------------------
--雪山殴る雪山飛び出る
--------------------------------------
--エフェクト(前)
exorbitant_f=entryEffectLife(spep_5,SP_07,84,0x100,-1,0,0,0);

setEffMoveKey( spep_5 + 0, exorbitant_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 84, exorbitant_f, 0, 0 , 0 );

setEffScaleKey(spep_5,exorbitant_f,1.0,1.0);
setEffScaleKey(spep_5+84,exorbitant_f,1.0,1.0);

setEffRotateKey(spep_5,exorbitant_f,0);
setEffRotateKey(spep_5+84,exorbitant_f,0);

setEffAlphaKey(spep_5,exorbitant_f,255);
setEffAlphaKey(spep_5+84,exorbitant_f,255);

--エフェクト(後)
exorbitant_b=entryEffectLife(spep_5,SP_08,84,0x80,-1,0,0,0);

setEffMoveKey( spep_5 + 0, exorbitant_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 84, exorbitant_b, 0, 0 , 0 );

setEffScaleKey(spep_5,exorbitant_b,1.0,1.0);
setEffScaleKey(spep_5+84,exorbitant_b,1.0,1.0);

setEffRotateKey(spep_5,exorbitant_b,0);
setEffRotateKey(spep_5+84,exorbitant_b,0);

setEffAlphaKey(spep_5,exorbitant_b,255);
setEffAlphaKey(spep_5+84,exorbitant_b,255);

--敵の動き
setDisp( spep_5 + 30, 1, 1 );
setDisp( spep_5 + 78, 1, 0 );

changeAnime( spep_5 + 30, 1, 108 );

setMoveKey( spep_5-3 + 30, 1, -315.8, -2.4 , 0 );
setMoveKey( spep_5-3 + 32, 1, -51.8, 33.6 , 0 );
setMoveKey( spep_5-3 + 34, 1, 210.2, 79.6 , 0 );
setMoveKey( spep_5-3 + 36, 1, 219.9, 74 , 0 );
setMoveKey( spep_5-3 + 38, 1, 237.5, 84.3 , 0 );
setMoveKey( spep_5-3 + 40, 1, 263.2, 78.7 , 0 );
setMoveKey( spep_5-3 + 42, 1, 280.8, 89 , 0 );
setMoveKey( spep_5-3 + 44, 1, 342.9, 103.4 , 0 );
setMoveKey( spep_5-3 + 46, 1, 413, 133.7 , 0 );
setMoveKey( spep_5-3 + 48, 1, 491, 148.1 , 0 );
setMoveKey( spep_5-3 + 50, 1, 510, 167.8 , 0 );
setMoveKey( spep_5-3 + 52, 1, 460, 155.3 , 0 );
setMoveKey( spep_5-3 + 54, 1, 418.1, 158.8 , 0 );
setMoveKey( spep_5-3 + 56, 1, 384, 146.2 , 0 );
setMoveKey( spep_5-3 + 58, 1, 340, 147.7 , 0 );
setMoveKey( spep_5-3 + 60, 1, 294, 139.2 , 0 );
setMoveKey( spep_5-3 + 62, 1, 252, 138.7 , 0 );
setMoveKey( spep_5-3 + 64, 1, 214, 130.2 , 0 );
setMoveKey( spep_5-3 + 66, 1, 172, 129.7 , 0 );
setMoveKey( spep_5-3 + 68, 1, 126, 121.2 , 0 );
setMoveKey( spep_5-3 + 70, 1, 180, 135.4 , 0 );
setMoveKey( spep_5-3 + 72, 1, 238.1, 141.5 , 0 );
setMoveKey( spep_5-3 + 74, 1, 292, 155.6 , 0 );
setMoveKey( spep_5-3 + 76, 1, 342.2, 161.8 , 0 );
setMoveKey( spep_5 + 78, 1, 396.2, 176 , 0 );

setScaleKey( spep_5-3 + 30, 1, 1.4, 1.4 );
setScaleKey( spep_5 + 78, 1, 1.4, 1.4 );

setRotateKey( spep_5-3 + 30, 1, 34.1 );
setRotateKey( spep_5-3 + 42, 1, 34.1 );
setRotateKey( spep_5-3 + 44, 1, -13.4 );
setRotateKey( spep_5-3 + 46, 1, -29.5 );
setRotateKey( spep_5-3 + 48, 1, -45.5 );
setRotateKey( spep_5-3 + 50, 1, -46.8 );
setRotateKey( spep_5-3 + 52, 1, -48.1 );
setRotateKey( spep_5-3 + 54, 1, -49.4 );
setRotateKey( spep_5-3 + 56, 1, -50.7 );
setRotateKey( spep_5-3 + 58, 1, -52 );
setRotateKey( spep_5-3 + 60, 1, -53.3 );
setRotateKey( spep_5-3 + 62, 1, -54.6 );
setRotateKey( spep_5-3 + 64, 1, -55.9 );
setRotateKey( spep_5-3 + 66, 1, -57.3 );
setRotateKey( spep_5-3 + 68, 1, -58.6 );
setRotateKey( spep_5-3 + 70, 1, -59.9 );
setRotateKey( spep_5-3 + 72, 1, -61.2 );
setRotateKey( spep_5-3 + 74, 1, -62.5 );
setRotateKey( spep_5-3 + 76, 1, -63.8 );
setRotateKey( spep_5 + 78, 1, -65.1 );

--SE
playSe( spep_5+14, 1033 );  --飛び出してくる
playSe( spep_5+40, 1010 );  --飛ばす


--白フェード
entryFade( spep_5+ 76, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_6 = spep_5 + 84;

--------------------------------------
--氷山打撲
--------------------------------------
--エフェクト(前)
sumo_f=entryEffect(spep_6,SP_09,0x100,-1,0,0,0);

setEffMoveKey( spep_6 + 0, sumo_f, 0, 0 , 0 );
setEffMoveKey( spep_6 + 180, sumo_f, 0, 0 , 0 );

setEffScaleKey(spep_6,sumo_f,1.0,1.0);
setEffScaleKey(spep_6+180,sumo_f,1.0,1.0);

setEffRotateKey(spep_6,sumo_f,0);
setEffRotateKey(spep_6+180,sumo_f,0);

setEffAlphaKey(spep_6,sumo_f,255);
setEffAlphaKey(spep_6+180,sumo_f,255);

--エフェクト(後)
sumo_b=entryEffect(spep_6,SP_10,0x80,-1,0,0,0);

setEffMoveKey( spep_6 + 0, sumo_b, 0, 0 , 0 );
setEffMoveKey( spep_6 + 180, sumo_b, 0, 0 , 0 );

setEffScaleKey(spep_6,sumo_b,1.0,1.0);
setEffScaleKey(spep_6+180,sumo_b,1.0,1.0);

setEffRotateKey(spep_6,sumo_b,0);
setEffRotateKey(spep_6+180,sumo_b,0);

setEffAlphaKey(spep_6,sumo_b,255);
setEffAlphaKey(spep_6+180,sumo_b,255);

--敵の動き
setDisp( spep_6 + 6, 1, 1 );

changeAnime( spep_6 + 6, 1, 108 );
changeAnime( spep_6-3 + 70, 1, 106 );

setMoveKey( spep_6-3 + 6, 1, -234.4, -367.8 , 0 );
setMoveKey( spep_6-3 + 8, 1, -194.6, -325.2 , 0 );
setMoveKey( spep_6-3 + 10, 1, -154.7, -282.6 , 0 );
setMoveKey( spep_6-3 + 12, 1, -114.9, -240.1 , 0 );
setMoveKey( spep_6-3 + 14, 1, -75, -197.4 , 0 );
setMoveKey( spep_6-3 + 16, 1, -35.1, -154.9 , 0 );
setMoveKey( spep_6-3 + 18, 1, -32.2, -151.8 , 0 );
setMoveKey( spep_6-3 + 20, 1, -29.2, -148.7 , 0 );
setMoveKey( spep_6-3 + 22, 1, -26.2, -145.6 , 0 );
setMoveKey( spep_6-3 + 24, 1, -23.2, -142.5 , 0 );
setMoveKey( spep_6-3 + 26, 1, -20.2, -139.4 , 0 );
setMoveKey( spep_6-3 + 28, 1, -17.2, -136.4 , 0 );
setMoveKey( spep_6-3 + 30, 1, -14.2, -133.3 , 0 );
setMoveKey( spep_6-3 + 32, 1, -11.2, -130.2 , 0 );
setMoveKey( spep_6-3 + 34, 1, -8.2, -127.1 , 0 );
setMoveKey( spep_6-3 + 36, 1, -5.2, -124 , 0 );
setMoveKey( spep_6-3 + 38, 1, -2.2, -120.9 , 0 );
setMoveKey( spep_6-3 + 40, 1, 0.8, -117.9 , 0 );
setMoveKey( spep_6-3 + 42, 1, 16.1, -101.2 , 0 );
setMoveKey( spep_6-3 + 44, 1, 31.4, -84.6 , 0 );
setMoveKey( spep_6-3 + 46, 1, 46.7, -68 , 0 );
setMoveKey( spep_6-3 + 48, 1, 62, -51.3 , 0 );
setMoveKey( spep_6-3 + 50, 1, 77.3, -34.7 , 0 );
setMoveKey( spep_6-3 + 52, 1, 77.2, -32.6 , 0 );
setMoveKey( spep_6-3 + 54, 1, 83, -28.4 , 0 );
setMoveKey( spep_6-3 + 56, 1, 82.2, -37.4 , 0 );
setMoveKey( spep_6-3 + 58, 1, 72, -27.9 , 0 );
setMoveKey( spep_6-3 + 60, 1, 81.2, -36.9 , 0 );
setMoveKey( spep_6-3 + 62, 1, 81.7, -36.1 , 0 );
setMoveKey( spep_6-3 + 64, 1, 85.2, -24.1 , 0 );
setMoveKey( spep_6-3 + 66, 1, 85.5, -39.9 , 0 );

setMoveKey( spep_6-3 + 70, 1, 84, -10.1 , 0 );
setMoveKey( spep_6-3 + 72, 1, 72.5, -33.1 , 0 );
setMoveKey( spep_6-3 + 74, 1, 67.5, -12.1 , 0 );
setMoveKey( spep_6-3 + 76, 1, 76.5, -19.1 , 0 );
setMoveKey( spep_6-3 + 78, 1, 84.5, -6.6 , 0 );
setMoveKey( spep_6-3 + 80, 1, 74.6, -31.6 , 0 );
setMoveKey( spep_6-3 + 82, 1, 66.5, -12.1 , 0 );
setMoveKey( spep_6-3 + 84, 1, 76.6, -19.1 , 0 );
setMoveKey( spep_6-3 + 86, 1, 85, -9.1 , 0 );
setMoveKey( spep_6-3 + 88, 1, 75, -34.1 , 0 );
setMoveKey( spep_6-3 + 90, 1, 67, -11.1 , 0 );
setMoveKey( spep_6-3 + 92, 1, 76.5, -19.1 , 0 );
setMoveKey( spep_6-3 + 94, 1, 85, -7.6 , 0 );
setMoveKey( spep_6-3 + 96, 1, 74.1, -31.6 , 0 );
setMoveKey( spep_6-3 + 98, 1, 67.1, -11.1 , 0 );
setMoveKey( spep_6-3 + 100, 1, 75.1, -21.1 , 0 );
setMoveKey( spep_6-3 + 102, 1, 72.6, -21.1 , 0 );
setMoveKey( spep_6-3 + 104, 1, 72.1, -21.1 , 0 );
setMoveKey( spep_6-3 + 106, 1, 71.6, -21.1 , 0 );
setMoveKey( spep_6-3 + 108, 1, 72.6, -21.1 , 0 );
setMoveKey( spep_6-3 + 110, 1, 70.6, -21.1 , 0 );
setMoveKey( spep_6-3 + 112, 1, 72.6, -21.1 , 0 );
setMoveKey( spep_6-3 + 114, 1, 71.6, -21.1 , 0 );
setMoveKey( spep_6-3 + 116, 1, 72.6, -21.1 , 0 );
setMoveKey( spep_6-3 + 118, 1, 71.6, -21.1 , 0 );
setMoveKey( spep_6-3 + 120, 1, 72.6, -21.1 , 0 );
setMoveKey( spep_6-3 + 122, 1, 71.6, -21.1 , 0 );
setMoveKey( spep_6-3 + 124, 1, 72.6, -21.1 , 0 );
setMoveKey( spep_6-3 + 126, 1, 71.6, -21.1 , 0 );
setMoveKey( spep_6-3 + 128, 1, 72.6, -21.1 , 0 );
setMoveKey( spep_6-3 + 130, 1, 71.6, -21.1 , 0 );
setMoveKey( spep_6-3 + 132, 1, 72.6, -21.1 , 0 );
setMoveKey( spep_6-3 + 134, 1, 71.6, -21.1 , 0 );
setMoveKey( spep_6-3 + 136, 1, 72.6, -21.1 , 0 );
setMoveKey( spep_6-3 + 138, 1, 71.6, -21.1 , 0 );
setMoveKey( spep_6-3 + 140, 1, 72.6, -21.1 , 0 );
setMoveKey( spep_6-3 + 142, 1, 71.6, -21.1 , 0 );
setMoveKey( spep_6-3 + 144, 1, 72.6, -21.1 , 0 );
setMoveKey( spep_6-3 + 146, 1, 71.6, -21.1 , 0 );
setMoveKey( spep_6-3 + 148, 1, 72.6, -21.1 , 0 );
setMoveKey( spep_6-3 + 150, 1, 71.6, -21.1 , 0 );
setMoveKey( spep_6-3 + 152, 1, 72.6, -21.1 , 0 );
setMoveKey( spep_6-3 + 154, 1, 71.6, -21.1 , 0 );
setMoveKey( spep_6-3 + 156, 1, 72.6, -21.1 , 0 );
setMoveKey( spep_6-3 + 158, 1, 71.6, -21.1 , 0 );
setMoveKey( spep_6-3 + 160, 1, 72.6, -21.1 , 0 );
setMoveKey( spep_6-3 + 162, 1, 71.6, -21.1 , 0 );
setMoveKey( spep_6-3 + 164, 1, 72.6, -21.1 , 0 );
setMoveKey( spep_6-3 + 166, 1, 71.6, -21.1 , 0 );
setMoveKey( spep_6-3 + 168, 1, 72.6, -21.1 , 0 );
setMoveKey( spep_6-3 + 170, 1, 71.6, -21.1 , 0 );
setMoveKey( spep_6-3 + 172, 1, 72.6, -21.1 , 0 );
setMoveKey( spep_6-3 + 174, 1, 71.6, -21.1 , 0 );
setMoveKey( spep_6-3 + 176, 1, 72.6, -21.1 , 0 );
setMoveKey( spep_6 + 178, 1, 71.6, -21.1 , 0 );

setScaleKey( spep_6-3 + 6, 1, 5, 5 );
setScaleKey( spep_6-3 + 8, 1, 4.4, 4.4 );
setScaleKey( spep_6-3 + 10, 1, 3.8, 3.8 );
setScaleKey( spep_6-3 + 12, 1, 3.2, 3.2 );
setScaleKey( spep_6-3 + 14, 1, 2.6, 2.6 );
setScaleKey( spep_6-3 + 16, 1, 2, 2 );
setScaleKey( spep_6-3 + 18, 1, 1.97, 1.97 );
setScaleKey( spep_6-3 + 20, 1, 1.93, 1.93 );
setScaleKey( spep_6-3 + 22, 1, 1.9, 1.9 );
setScaleKey( spep_6-3 + 24, 1, 1.87, 1.87 );
setScaleKey( spep_6-3 + 26, 1, 1.83, 1.83 );
setScaleKey( spep_6-3 + 28, 1, 1.8, 1.8 );
setScaleKey( spep_6-3 + 30, 1, 1.77, 1.77 );
setScaleKey( spep_6-3 + 32, 1, 1.73, 1.73 );
setScaleKey( spep_6-3 + 34, 1, 1.7, 1.7 );
setScaleKey( spep_6-3 + 36, 1, 1.67, 1.67 );
setScaleKey( spep_6-3 + 38, 1, 1.63, 1.63 );
setScaleKey( spep_6-3 + 40, 1, 1.6, 1.6 );
setScaleKey( spep_6-3 + 42, 1, 1.32, 1.32 );
setScaleKey( spep_6-3 + 44, 1, 1.05, 1.05 );
setScaleKey( spep_6-3 + 46, 1, 0.77, 0.77 );
setScaleKey( spep_6-3 + 48, 1, 0.5, 0.5 );
setScaleKey( spep_6-3 + 50, 1, 0.22, 0.22 );
setScaleKey( spep_6-3 + 52, 1, 0.08, 0.08 );
setScaleKey( spep_6 + 178, 1, 0.08, 0.08 );

setRotateKey( spep_6-3 + 6, 1, 0 );
setRotateKey( spep_6-3 + 68, 1, 0 );
setRotateKey( spep_6-3 + 69, 1, 0 );
setRotateKey( spep_6-3 + 70, 1, -44.9 );
setRotateKey( spep_6 + 178, 1, -44.9 );

--集中線

shuchusen5 = entryEffectLife( spep_6 + 48,  906, 132, 0x100, -1, 0, 332, 30 );
setEffMoveKey( spep_6 + 48, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_6 + 178, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_6 + 48, shuchusen5, 1.2, 1.09 );
setEffScaleKey( spep_6 + 178, shuchusen5, 1.2, 1.09 );

setEffRotateKey( spep_6 + 48, shuchusen5, 180 );
setEffRotateKey( spep_6 + 178, shuchusen5, 180 );

setEffAlphaKey( spep_6 + 48, shuchusen5, 255 );
setEffAlphaKey( spep_6 + 178, shuchusen5, 255 );

--SE
playSe( spep_6, 44 );  --飛んでいく
playSe( spep_6+48, 1011 );  --ぶつかる
playSe( spep_6+68, 1023 );  --ぶつかる

-- ** ダメージ表示 ** --
dealDamage( spep_6 + 48 );
entryFade( spep_6 + 160, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_6 + 170 );

else 
------------------------------------------------------
--敵側
------------------------------------------------------
------------------------------------------------------
--号令
------------------------------------------------------
--初回
spep_0=0;

--エフェクト
order=entryEffectLife(spep_0,SP_01x,112,0x80,-1,0,0,0);

setEffMoveKey( spep_0 + 0, order, 0, 0 , 0 );
setEffMoveKey( spep_0 + 112, order, 0, 0 , 0 );

setEffScaleKey(spep_0,order,-1.0,1.0);
setEffScaleKey(spep_0+112,order,-1.0,1.0);

setEffRotateKey(spep_0,order,0);
setEffRotateKey(spep_0+112,order,0);

setEffAlphaKey(spep_0,order,255);
setEffAlphaKey(spep_0+112,order,255);




-- ** 顔カットイン ** --
--speff = entryEffect( spep_0+8 + 16, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0+8 + 16, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

--文字エントリー
ctgogo = entryEffectLife( spep_0+8 + 28,  190006, 74, 0x100, -1, 0, -8.5, 515.5 ); --ゴゴゴ
setEffShake( spep_0+8 + 28, ctgogo, 74, 10 );

setEffMoveKey( spep_0+8 + 28, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_0+8 + 102, ctgogo, -9.9, 515.5 , 0 );

setEffScaleKey( spep_0+8 + 28, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_0+8 + 94, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_0+8 + 96, ctgogo, -1.0, 1.0 );
setEffScaleKey( spep_0+8 + 98, ctgogo, -1.09, 1.09 );
setEffScaleKey( spep_0+8 + 100, ctgogo, -1.39, 1.39 );
setEffScaleKey( spep_0+8 + 102, ctgogo, -1.69, 1.69 );

setEffRotateKey( spep_0+8 + 28, ctgogo, 0 );
setEffRotateKey( spep_0+8 + 102, ctgogo, 0 );

setEffAlphaKey( spep_0+8 + 28, ctgogo, 0 );
setEffAlphaKey( spep_0+8 + 29, ctgogo, 255 );
setEffAlphaKey( spep_0+8 + 30, ctgogo, 255 );
setEffAlphaKey( spep_0+8 + 102, ctgogo, 255 );


--集中線
shuchusen1 = entryEffectLife( spep_0 + 16,  906, 98, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_0 + 16, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 114, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 16, shuchusen1, 1, 1 );
setEffScaleKey( spep_0 + 114, shuchusen1, 1, 1 );

setEffRotateKey( spep_0 + 16, shuchusen1, 180 );
setEffRotateKey( spep_0 + 114, shuchusen1, 180 );

setEffAlphaKey( spep_0 , shuchusen1, 0 );
setEffAlphaKey( spep_0 + 36, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 37, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 38, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 114, shuchusen1, 255 );

--SE
playSe( spep_0 + 38, SE_04 );  --ゴゴゴ

--白フェード
entryFade( spep_0 + 106, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

--次の準備
spep_1=114;
--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen2, 90, 20 );

setEffMoveKey( spep_1 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_1 + 90, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen2, 1.6, 1.6 );
setEffScaleKey( spep_1 + 90, shuchusen2, 1.6, 1.6 );

setEffRotateKey( spep_1 + 0, shuchusen2, 0 );
setEffRotateKey( spep_1 + 90, shuchusen2, 0 );

setEffAlphaKey( spep_1 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_1 + 90, shuchusen2, 255 );

-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );

--白フェード
entryFade( spep_1 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

--------------------------------------
--突進
--------------------------------------
--エフェクト
rush=entryEffectLife(spep_2,SP_02x,152,0x80,-1,0,0,0);

setEffMoveKey( spep_2 + 0, rush, 0, 0 , 0 );
setEffMoveKey( spep_2+152, rush, 0, 0 , 0 );

setEffScaleKey(spep_2,rush,-1.0,1.0);
setEffScaleKey(spep_2+152,rush,-1.0,1.0);

setEffRotateKey(spep_2,rush,0);
setEffRotateKey(spep_2+152,rush,0);

setEffAlphaKey(spep_2,rush,255);
--setEffAlphaKey(spep_2-6+158,rush,255);
setEffAlphaKey(spep_2+150,rush,255);
setEffAlphaKey(spep_2+151,rush,255);
setEffAlphaKey(spep_2+152,rush,0);

--集中線
shuchusen3 = entryEffectLife( spep_2 + 0,  906, 152, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_2 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_2+152, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen3, 1, 1 );
setEffScaleKey( spep_2 + 152, shuchusen3, 1, 1 );

setEffRotateKey( spep_2 + 0, shuchusen3, 180 );
setEffRotateKey( spep_2 + 152, shuchusen3, 180 );

setEffAlphaKey( spep_2 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_2 + 74, shuchusen3, 255 );
setEffAlphaKey( spep_2 + 75, shuchusen3, 0 );
setEffAlphaKey( spep_2 + 76, shuchusen3, 0 );
--setEffAlphaKey( spep_2 + 98, shuchusen3, 0 );
setEffAlphaKey( spep_2 + 98, shuchusen3, 0 );
setEffAlphaKey( spep_2 + 99, shuchusen3, 255 );
setEffAlphaKey( spep_2 + 100, shuchusen3, 255 );
setEffAlphaKey( spep_2 + 150, shuchusen3, 255 );
setEffAlphaKey( spep_2 + 151, shuchusen3, 255 );
setEffAlphaKey( spep_2 + 152, shuchusen3, 0 );

--SE
SE1=playSe( spep_2 , 1066 );  --吠える
--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2+130 ; --エンドフェイズのフレーム数を置き換える
    
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
--白フェード
--entryFade( spep_2 + 132, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
stopSe(spep_2 + 98,SE1,0);
playSe( spep_2 + 100, SE_04 );  --ダッシュ

-- ** 次の準備 ** --
spep_3 = spep_2+ 152;

--------------------------------------
--ぶん殴る
--------------------------------------
--エフェクト(前)
hit_f=entryEffectLife(spep_3,SP_03x,90,0x100,-1,0,0,0);

setEffMoveKey( spep_3 + 0, hit_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 90, hit_f, 0, 0 , 0 );

setEffScaleKey(spep_3,hit_f,1.0,1.0);
setEffScaleKey(spep_3+90,hit_f,1.0,1.0);

setEffRotateKey(spep_3,hit_f,0);
setEffRotateKey(spep_3+90,hit_f,0);

setEffAlphaKey(spep_3,hit_f,255);
setEffAlphaKey(spep_3+90,hit_f,255);

--エフェクト(後)
hit_b=entryEffectLife(spep_3,SP_04x,90,0x80,-1,0,0,0);

setEffMoveKey( spep_3 + 0, hit_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 90, hit_b, 0, 0 , 0 );

setEffScaleKey(spep_3,hit_b,1.1,1.1);
setEffScaleKey(spep_3+90,hit_b,1.1,1.1);

setEffRotateKey(spep_3,hit_b,0);
setEffRotateKey(spep_3+90,hit_b,0);

setEffAlphaKey(spep_3,hit_b,255);
setEffAlphaKey(spep_3+90,hit_b,255);

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 88, 1, 0 );

changeAnime( spep_3 + 0, 1, 100 );
changeAnime( spep_3-3 + 22, 1, 108 );

setMoveKey( spep_3-3 + 0, 1, 519.3, 300 , 0 );
setMoveKey( spep_3-3 + 2, 1, 481, 279.9 , 0 );
setMoveKey( spep_3-3 + 4, 1, 443.5, 260.2 , 0 );
setMoveKey( spep_3-3 + 6, 1, 406.8, 240.7 , 0 );
setMoveKey( spep_3-3 + 8, 1, 371, 221.6 , 0 );
setMoveKey( spep_3-3 + 10, 1, 336, 202.7 , 0 );
setMoveKey( spep_3-3 + 12, 1, 301.7, 184.2 , 0 );
setMoveKey( spep_3-3 + 14, 1, 268.4, 166 , 0 );
setMoveKey( spep_3-3 + 16, 1, 235.7, 148.1 , 0 );
setMoveKey( spep_3-3 + 18, 1, 203.8, 130.5 , 0 );
setMoveKey( spep_3-3 + 21, 1, 172.9, 113.3 , 0 );
setMoveKey( spep_3-3 + 22, 1, 221.8, 210.1 , 0 );
setMoveKey( spep_3-3 + 24, 1, 234, 179 , 0 );
setMoveKey( spep_3-3 + 26, 1, 211.1, 193.5 , 0 );
setMoveKey( spep_3-3 + 28, 1, 230.5, 235.7 , 0 );
setMoveKey( spep_3-3 + 30, 1, 213, 305.4 , 0 );
setMoveKey( spep_3-3 + 32, 1, 227.7, 324.5 , 0 );
setMoveKey( spep_3-3 + 34, 1, 214.9, 398.8 , 0 );
setMoveKey( spep_3-3 + 36, 1, 233.4, 391.8 , 0 );
setMoveKey( spep_3-3 + 38, 1, 222, 398.6 , 0 );
setMoveKey( spep_3-3 + 40, 1, 226.7, 391.6 , 0 );
setMoveKey( spep_3-3 + 42, 1, 215.3, 400.7 , 0 );
setMoveKey( spep_3-3 + 44, 1, 229.2, 402.9 , 0 );
setMoveKey( spep_3-3 + 46, 1, 224.7, 402.8 , 0 );
setMoveKey( spep_3-3 + 48, 1, 224.8, 405 , 0 );
setMoveKey( spep_3-3 + 50, 1, 225, 407.2 , 0 );
setMoveKey( spep_3-3 + 52, 1, 225.1, 409.4 , 0 );
setMoveKey( spep_3-3 + 54, 1, 225.2, 411.6 , 0 );
setMoveKey( spep_3-3 + 56, 1, 225.3, 413.8 , 0 );
setMoveKey( spep_3-3 + 58, 1, 225.4, 416 , 0 );
setMoveKey( spep_3-3 + 60, 1, 225.5, 418.2 , 0 );
setMoveKey( spep_3-3 + 62, 1, 225.6, 420.4 , 0 );
setMoveKey( spep_3-3 + 64, 1, 225.7, 422.6 , 0 );
setMoveKey( spep_3-3 + 66, 1, 225.8, 424.8 , 0 );
setMoveKey( spep_3-3 + 68, 1, 226, 427 , 0 );
setMoveKey( spep_3-3 + 70, 1, 226, 427.2 , 0 );
setMoveKey( spep_3-3 + 72, 1, 226, 427.5 , 0 );
setMoveKey( spep_3-3 + 74, 1, 226, 427.7 , 0 );
setMoveKey( spep_3-3 + 76, 1, 226, 428 , 0 );
setMoveKey( spep_3-3 + 78, 1, 226, 428.3 , 0 );
setMoveKey( spep_3-3 + 80, 1, 226.1, 428.5 , 0 );
setMoveKey( spep_3-3 + 82, 1, 226.1, 428.8 , 0 );
setMoveKey( spep_3-3 + 84, 1, 226.1, 429 , 0 );
setMoveKey( spep_3-3 + 86, 1, 226.1, 429.3 , 0 );
setMoveKey( spep_3 + 88, 1, 226.1, 429.5 , 0 );

setScaleKey( spep_3-3 + 0, 1, 0.6, 0.6 );
setScaleKey( spep_3-3 + 2, 1, 0.73, 0.73 );
setScaleKey( spep_3-3 + 4, 1, 0.84, 0.84 );
setScaleKey( spep_3-3 + 6, 1, 0.96, 0.96 );
setScaleKey( spep_3-3 + 8, 1, 1.07, 1.07 );
setScaleKey( spep_3-3 + 10, 1, 1.17, 1.17 );
setScaleKey( spep_3-3 + 12, 1, 1.27, 1.27 );
setScaleKey( spep_3-3 + 14, 1, 1.36, 1.36 );
setScaleKey( spep_3-3 + 16, 1, 1.44, 1.44 );
setScaleKey( spep_3-3 + 18, 1, 1.53, 1.53 );
setScaleKey( spep_3-3 + 21, 1, 1.6, 1.6 );
setScaleKey( spep_3-3 + 22, 1, 3.3, 3.3 );
setScaleKey( spep_3-3 + 24, 1, 2.6, 2.6 );
setScaleKey( spep_3-3 + 26, 1, 1.97, 1.97 );
setScaleKey( spep_3-3 + 28, 1, 1.85, 1.85 );
setScaleKey( spep_3-3 + 30, 1, 1.73, 1.73 );
setScaleKey( spep_3-3 + 32, 1, 1.62, 1.62 );
setScaleKey( spep_3-3 + 34, 1, 1.5, 1.5 );
setScaleKey( spep_3-3 + 36, 1, 1.44, 1.44 );
setScaleKey( spep_3-3 + 38, 1, 1.37, 1.37 );
setScaleKey( spep_3-3 + 40, 1, 1.31, 1.31 );
setScaleKey( spep_3-3 + 42, 1, 1.24, 1.24 );
setScaleKey( spep_3-3 + 44, 1, 1.18, 1.18 );
setScaleKey( spep_3-3 + 46, 1, 1.11, 1.11 );
setScaleKey( spep_3-3 + 48, 1, 1.05, 1.05 );
setScaleKey( spep_3-3 + 50, 1, 0.98, 0.98 );
setScaleKey( spep_3-3 + 52, 1, 0.92, 0.92 );
setScaleKey( spep_3-3 + 54, 1, 0.85, 0.85 );
setScaleKey( spep_3-3 + 56, 1, 0.79, 0.79 );
setScaleKey( spep_3-3 + 58, 1, 0.72, 0.72 );
setScaleKey( spep_3-3 + 60, 1, 0.66, 0.66 );
setScaleKey( spep_3-3 + 62, 1, 0.59, 0.59 );
setScaleKey( spep_3-3 + 64, 1, 0.53, 0.53 );
setScaleKey( spep_3-3 + 66, 1, 0.47, 0.47 );
setScaleKey( spep_3-3 + 68, 1, 0.4, 0.4 );
setScaleKey( spep_3-3 + 70, 1, 0.37, 0.37 );
setScaleKey( spep_3-3 + 72, 1, 0.34, 0.34 );
setScaleKey( spep_3-3 + 74, 1, 0.31, 0.31 );
setScaleKey( spep_3-3 + 76, 1, 0.28, 0.28 );
setScaleKey( spep_3-3 + 78, 1, 0.25, 0.25 );
setScaleKey( spep_3-3 + 80, 1, 0.22, 0.22 );
setScaleKey( spep_3-3 + 82, 1, 0.19, 0.19 );
setScaleKey( spep_3-3 + 84, 1, 0.16, 0.16 );
setScaleKey( spep_3-3 + 86, 1, 0.13, 0.13 );
setScaleKey( spep_3 + 88, 1, 0.1, 0.1 );

setRotateKey( spep_3-3 + 0, 1, 0 );
setRotateKey( spep_3 + 88, 1, 0 );

--文字エントリー
ctbago = entryEffectLife( spep_3-4 + 24,  10021, 22, 0x100, -1, 0, -80.6, 332.9 );--バゴォッ

setEffShake( spep_3-4 + 24 , ctbago, 22, 10 );

setEffMoveKey( spep_3-4 + 24, ctbago, -80.6, 332.9 , 0 );
setEffMoveKey( spep_3-4 + 26, ctbago, -105.7, 372 , 0 );
setEffMoveKey( spep_3-4 + 28, ctbago, -106.8, 396.5 , 0 );
setEffMoveKey( spep_3-4 + 30, ctbago, -113.7, 390 , 0 );
setEffMoveKey( spep_3-4 + 32, ctbago, -101.8, 409.8 , 0 );
setEffMoveKey( spep_3-4 + 34, ctbago, -113.5, 401.5 , 0 );
setEffMoveKey( spep_3-4 + 36, ctbago, -99.7, 404.9 , 0 );
setEffMoveKey( spep_3-4 + 38, ctbago, -117.7, 411.4 , 0 );
setEffMoveKey( spep_3-4 + 40, ctbago, -110, 413.5 , 0 );
setEffMoveKey( spep_3-4 + 42, ctbago, -117.6, 406.1 , 0 );
setEffMoveKey( spep_3-4 + 44, ctbago, -106.3, 432.8 , 0 );
setEffMoveKey( spep_3-4 + 46, ctbago, -108.8, 447.7 , 0 );

setEffScaleKey( spep_3-4 + 24, ctbago, 1.88, 1.88 );
setEffScaleKey( spep_3-4 + 26, ctbago, 2.37, 2.37 );
setEffScaleKey( spep_3-4 + 28, ctbago, 2.53, 2.53 );
setEffScaleKey( spep_3-4 + 30, ctbago, 2.56, 2.56 );
setEffScaleKey( spep_3-4 + 32, ctbago, 2.59, 2.59 );
setEffScaleKey( spep_3-4 + 34, ctbago, 2.62, 2.62 );
setEffScaleKey( spep_3-4 + 36, ctbago, 2.65, 2.65 );
setEffScaleKey( spep_3-4 + 38, ctbago, 2.67, 2.67 );
setEffScaleKey( spep_3-4 + 40, ctbago, 2.7, 2.7 );
setEffScaleKey( spep_3-4 + 42, ctbago, 2.73, 2.73 );
setEffScaleKey( spep_3-4 + 44, ctbago, 2.82, 2.82 );
setEffScaleKey( spep_3-4 + 46, ctbago, 2.96, 2.96 );

setEffRotateKey( spep_3-4 + 24, ctbago, -11.7 );
setEffRotateKey( spep_3-4 + 26, ctbago, -14.6 );
setEffRotateKey( spep_3-4 + 28, ctbago, -15.6 );
setEffRotateKey( spep_3-4 + 30, ctbago, -15.5 );
setEffRotateKey( spep_3-4 + 36, ctbago, -15.5 );
setEffRotateKey( spep_3-4 + 38, ctbago, -15.6 );
setEffRotateKey( spep_3-4 + 46, ctbago, -15.6 );

--setEffAlphaKey( spep_3-4 + 24, ctbago, 0 );
setEffAlphaKey( spep_3-4 + 24, ctbago, 255 );
setEffAlphaKey( spep_3-4 + 26, ctbago, 255 );
setEffAlphaKey( spep_3-4 + 40, ctbago, 255 );
setEffAlphaKey( spep_3-4 + 42, ctbago, 227 );
setEffAlphaKey( spep_3-4 + 44, ctbago, 142 );
setEffAlphaKey( spep_3-4 + 46, ctbago, 0 );

--SE
playSe( spep_3, SE_04 );  --ダッシュ
playSe( spep_3+20, 1011 );  --殴る
playSe( spep_3+42, 44 );  --飛んでいく

--白フェード
entryFade( spep_3 + 80, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 90;

--------------------------------------
--雪山殴る
--------------------------------------
--エフェクト(前)
hit2_f=entryEffectLife(spep_4,SP_05x,120,0x100,-1,0,0,0);

setEffMoveKey( spep_4 + 0, hit2_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 120, hit2_f, 0, 0 , 0 );

setEffScaleKey(spep_4,hit2_f,1.0,1.0);
setEffScaleKey(spep_4+120,hit2_f,1.0,1.0);

setEffRotateKey(spep_4,hit2_f,0);
setEffRotateKey(spep_4+120,hit2_f,0);

setEffAlphaKey(spep_4,hit2_f,255);
setEffAlphaKey(spep_4+120,hit2_f,255);

--エフェクト(後)
hit2_b=entryEffectLife(spep_4,SP_06x,120,0x80,-1,0,0,0);

setEffMoveKey( spep_4 + 0, hit2_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 120, hit2_b, 0, 0 , 0 );

setEffScaleKey(spep_4,hit2_b,1.0,1.0);
setEffScaleKey(spep_4+120,hit2_b,1.0,1.0);

setEffRotateKey(spep_4,hit2_b,0);
setEffRotateKey(spep_4+120,hit2_b,0);

setEffAlphaKey(spep_4,hit2_b,255);
setEffAlphaKey(spep_4+120,hit2_b,255);

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 118, 1, 0 );

changeAnime( spep_4 + 0, 1, 108 );
changeAnime( spep_4-3 + 64, 1, 106 );

setMoveKey( spep_4-3 + 0, 1, -601.7, 40.8 , 0 );
setMoveKey( spep_4-3 + 2, 1, -499.9, 40.8 , 0 );
setMoveKey( spep_4-3 + 4, 1, -398.3, 40.8 , 0 );
setMoveKey( spep_4-3 + 6, 1, -296.8, 40.8 , 0 );
setMoveKey( spep_4-3 + 8, 1, -195, 40.8 , 0 );
setMoveKey( spep_4-3 + 10, 1, -93.4, 40.8 , 0 );
setMoveKey( spep_4-3 + 12, 1, -87.7, 40.8 , 0 );
setMoveKey( spep_4-3 + 14, 1, -82, 40.8 , 0 );
setMoveKey( spep_4-3 + 16, 1, -76.2, 40.8 , 0 );
setMoveKey( spep_4-3 + 18, 1, -70.5, 40.8 , 0 );
setMoveKey( spep_4-3 + 20, 1, -42.8, 40.8 , 0 );
setMoveKey( spep_4-3 + 22, 1, -15.1, 40.8 , 0 );
setMoveKey( spep_4-3 + 24, 1, 12.6, 40.8 , 0 );
setMoveKey( spep_4-3 + 26, 1, 40.4, 40.8 , 0 );
setMoveKey( spep_4-3 + 28, 1, 72.1, 44.8 , 0 );
setMoveKey( spep_4-3 + 30, 1, 60, 33.8 , 0 );
setMoveKey( spep_4-3 + 32, 1, 72.1, 36.8 , 0 );
setMoveKey( spep_4-3 + 34, 1, 58.1, 45.8 , 0 );
setMoveKey( spep_4-3 + 36, 1, 72.1, 44.8 , 0 );
setMoveKey( spep_4-3 + 38, 1, 58, 37.8 , 0 );
setMoveKey( spep_4-3 + 40, 1, 72.1, 36.8 , 0 );
setMoveKey( spep_4-3 + 42, 1, 77.1, 44.8 , 0 );
setMoveKey( spep_4-3 + 44, 1, 96, 42.8 , 0 );
setMoveKey( spep_4-3 + 46, 1, 104.9, 38.8 , 0 );
setMoveKey( spep_4-3 + 48, 1, 121.8, 38.8 , 0 );
setMoveKey( spep_4-3 + 50, 1, 132.7, 40.8 , 0 );
setMoveKey( spep_4-3 + 52, 1, 145.6, 40.8 , 0 );
setMoveKey( spep_4-3 + 54, 1, 158.5, 40.8 , 0 );
setMoveKey( spep_4-3 + 56, 1, 171.4, 40.8 , 0 );
setMoveKey( spep_4-3 + 58, 1, 184.3, 40.8 , 0 );
setMoveKey( spep_4-3 + 60, 1, 197.2, 40.8 , 0 );
setMoveKey( spep_4-3 + 63, 1, 210.1, 40.8 , 0 );
setMoveKey( spep_4-3 + 64, 1, 246.9, 62.1 , 0 );
setMoveKey( spep_4-3 + 66, 1, 314.8, 37.6 , 0 );
setMoveKey( spep_4-3 + 68, 1, 380.9, 60 , 0 );
setMoveKey( spep_4-3 + 70, 1, 461, 42.1 , 0 );
setMoveKey( spep_4-3 + 72, 1, 534.1, 72.9 , 0 );
setMoveKey( spep_4-3 + 74, 1, 565.2, 42.5 , 0 );
setMoveKey( spep_4-3 + 76, 1, 629, 61.2 , 0 );
setMoveKey( spep_4-3 + 78, 1, 718, 36 , 0 );
setMoveKey( spep_4-3 + 80, 1, 773.1, 61.8 , 0 );
setMoveKey( spep_4-3 + 82, 1, 759.4, 34.9 , 0 );
setMoveKey( spep_4-3 + 84, 1, 750.1, 62.4 , 0 );
setMoveKey( spep_4-3 + 86, 1, 775.5, 49.5 , 0 );
setMoveKey( spep_4-3 + 88, 1, 780.7, 49.7 , 0 );
setMoveKey( spep_4-3 + 90, 1, 781, 50 , 0 );
setMoveKey( spep_4-3 + 92, 1, 789.1, 50.2 , 0 );
setMoveKey( spep_4-3 + 94, 1, 788.5, 50.4 , 0 );
setMoveKey( spep_4-3 + 96, 1, 799.5, 50.7 , 0 );
setMoveKey( spep_4-3 + 98, 1, 793.9, 51 , 0 );
setMoveKey( spep_4-3 + 100, 1, 805, 51.1 , 0 );
setMoveKey( spep_4-3 + 102, 1, 804.3, 51.4 , 0 );
setMoveKey( spep_4-3 + 104, 1, 815.4, 51.6 , 0 );
setMoveKey( spep_4-3 + 106, 1, 809.7, 51.9 , 0 );
setMoveKey( spep_4-3 + 108, 1, 820.9, 52.2 , 0 );
setMoveKey( spep_4-3 + 110, 1, 820.1, 52.4 , 0 );
setMoveKey( spep_4-3 + 112, 1, 831.3, 52.6 , 0 );
setMoveKey( spep_4-3 + 114, 1, 830.4, 52.9 , 0 );
setMoveKey( spep_4-3 + 116, 1, 836.8, 53.2 , 0 );
setMoveKey( spep_4 + 118, 1, 835.9, 53.3 , 0 );

setScaleKey( spep_4 + 0, 1, 1.4, 1.4 );
setScaleKey( spep_4-3 + 63, 1, 1.4, 1.4 );
setScaleKey( spep_4-3 + 64, 1, 1.75, 1.75 );
setScaleKey( spep_4-3 + 66, 1, 2.1, 2.1 );
setScaleKey( spep_4-3 + 68, 1, 2.11, 2.11 );
setScaleKey( spep_4-3 + 70, 1, 2.13, 2.13 );
setScaleKey( spep_4-3 + 72, 1, 2.13, 2.13 );
setScaleKey( spep_4-3 + 74, 1, 2.14, 2.14 );
setScaleKey( spep_4-3 + 76, 1, 2.16, 2.16 );
setScaleKey( spep_4-3 + 78, 1, 2.17, 2.17 );
setScaleKey( spep_4-3 + 80, 1, 2.17, 2.17 );
setScaleKey( spep_4-3 + 82, 1, 2.18, 2.18 );
setScaleKey( spep_4-3 + 84, 1, 2.2, 2.2 );
setScaleKey( spep_4-3 + 86, 1, 2.21, 2.21 );
setScaleKey( spep_4-3 + 88, 1, 2.23, 2.23 );
setScaleKey( spep_4-3 + 90, 1, 2.23, 2.23 );
setScaleKey( spep_4-3 + 92, 1, 2.24, 2.24 );
setScaleKey( spep_4-3 + 94, 1, 2.25, 2.25 );
setScaleKey( spep_4-3 + 96, 1, 2.27, 2.27 );
setScaleKey( spep_4-3 + 98, 1, 2.27, 2.27 );
setScaleKey( spep_4-3 + 100, 1, 2.28, 2.28 );
setScaleKey( spep_4-3 + 102, 1, 2.3, 2.3 );
setScaleKey( spep_4-3 + 104, 1, 2.31, 2.31 );
setScaleKey( spep_4-3 + 106, 1, 2.31, 2.31 );
setScaleKey( spep_4-3 + 108, 1, 2.32, 2.32 );
setScaleKey( spep_4-3 + 110, 1, 2.34, 2.34 );
setScaleKey( spep_4-3 + 112, 1, 2.35, 2.35 );
setScaleKey( spep_4-3 + 114, 1, 2.37, 2.37 );
setScaleKey( spep_4-3 + 116, 1, 2.37, 2.37 );
setScaleKey( spep_4 + 118, 1, 2.38, 2.38 );

setRotateKey( spep_4-3 + 0, 1, 8 );
setRotateKey( spep_4-3 + 28, 1, 8 );
setRotateKey( spep_4-3 + 30, 1, 9.2 );
setRotateKey( spep_4-3 + 32, 1, 8 );
setRotateKey( spep_4-3 + 34, 1, 6 );
setRotateKey( spep_4-3 + 36, 1, 8 );
setRotateKey( spep_4-3 + 38, 1, 9.2 );
setRotateKey( spep_4-3 + 40, 1, 8 );
setRotateKey( spep_4-3 + 63, 1, 8 );
setRotateKey( spep_4-3 + 64, 1, -40.6 );
setRotateKey( spep_4-3 + 66, 1, -42.1 );
setRotateKey( spep_4-3 + 68, 1, -39.9 );
setRotateKey( spep_4-3 + 70, 1, -40.6 );
setRotateKey( spep_4-3 + 72, 1, -42.1 );
setRotateKey( spep_4-3 + 74, 1, -39.9 );
setRotateKey( spep_4-3 + 76, 1, -40.6 );
setRotateKey( spep_4-3 + 78, 1, -42.1 );
setRotateKey( spep_4-3 + 80, 1, -39.9 );
setRotateKey( spep_4 + 118, 1, -39.9 );


--集中線
shuchusen4 = entryEffectLife( spep_4 + 60,  906, 58, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_4 + 60, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_4 + 118, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_4 + 60, shuchusen4, 1.25, 1.25 );
setEffScaleKey( spep_4 + 118, shuchusen4, 1.25, 1.25 );

setEffRotateKey( spep_4 + 02, shuchusen4, 180 );
setEffRotateKey( spep_4 + 118, shuchusen4, 180 );

setEffAlphaKey( spep_4 + 60, shuchusen4, 0 );
setEffAlphaKey( spep_4 + 61, shuchusen4, 255 );
setEffAlphaKey( spep_4 + 62, shuchusen4, 255 );
setEffAlphaKey( spep_4 + 118, shuchusen4, 255 );

--SE
playSe( spep_4, 44 );  --飛んでいく
playSe( spep_4+26, 20 );  --岩にぶつかる
playSe( spep_4+62, 1011 );  --殴る

--白フェード
entryFade( spep_4+ 112, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 120;

--------------------------------------
--雪山殴る雪山飛び出る
--------------------------------------
--エフェクト(前)
exorbitant_f=entryEffectLife(spep_5,SP_07x,84,0x100,-1,0,0,0);

setEffMoveKey( spep_5 + 0, exorbitant_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 84, exorbitant_f, 0, 0 , 0 );

setEffScaleKey(spep_5,exorbitant_f,1.0,1.0);
setEffScaleKey(spep_5+84,exorbitant_f,1.0,1.0);

setEffRotateKey(spep_5,exorbitant_f,0);
setEffRotateKey(spep_5+84,exorbitant_f,0);

setEffAlphaKey(spep_5,exorbitant_f,255);
setEffAlphaKey(spep_5+84,exorbitant_f,255);

--エフェクト(後)
exorbitant_b=entryEffectLife(spep_5,SP_08x,84,0x80,-1,0,0,0);

setEffMoveKey( spep_5 + 0, exorbitant_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 84, exorbitant_b, 0, 0 , 0 );

setEffScaleKey(spep_5,exorbitant_b,1.0,1.0);
setEffScaleKey(spep_5+84,exorbitant_b,1.0,1.0);

setEffRotateKey(spep_5,exorbitant_b,0);
setEffRotateKey(spep_5+84,exorbitant_b,0);

setEffAlphaKey(spep_5,exorbitant_b,255);
setEffAlphaKey(spep_5+84,exorbitant_b,255);

--敵の動き
setDisp( spep_5 + 30, 1, 1 );
setDisp( spep_5 + 78, 1, 0 );

changeAnime( spep_5 + 30, 1, 108 );

setMoveKey( spep_5-3 + 30, 1, -315.8, -2.4 , 0 );
setMoveKey( spep_5-3 + 32, 1, -51.8, 33.6 , 0 );
setMoveKey( spep_5-3 + 34, 1, 210.2, 79.6 , 0 );
setMoveKey( spep_5-3 + 36, 1, 219.9, 74 , 0 );
setMoveKey( spep_5-3 + 38, 1, 237.5, 84.3 , 0 );
setMoveKey( spep_5-3 + 40, 1, 263.2, 78.7 , 0 );
setMoveKey( spep_5-3 + 42, 1, 280.8, 89 , 0 );
setMoveKey( spep_5-3 + 44, 1, 342.9, 103.4 , 0 );
setMoveKey( spep_5-3 + 46, 1, 413, 133.7 , 0 );
setMoveKey( spep_5-3 + 48, 1, 491, 148.1 , 0 );
setMoveKey( spep_5-3 + 50, 1, 510, 167.8 , 0 );
setMoveKey( spep_5-3 + 52, 1, 460, 155.3 , 0 );
setMoveKey( spep_5-3 + 54, 1, 418.1, 158.8 , 0 );
setMoveKey( spep_5-3 + 56, 1, 384, 146.2 , 0 );
setMoveKey( spep_5-3 + 58, 1, 340, 147.7 , 0 );
setMoveKey( spep_5-3 + 60, 1, 294, 139.2 , 0 );
setMoveKey( spep_5-3 + 62, 1, 252, 138.7 , 0 );
setMoveKey( spep_5-3 + 64, 1, 214, 130.2 , 0 );
setMoveKey( spep_5-3 + 66, 1, 172, 129.7 , 0 );
setMoveKey( spep_5-3 + 68, 1, 126, 121.2 , 0 );
setMoveKey( spep_5-3 + 70, 1, 180, 135.4 , 0 );
setMoveKey( spep_5-3 + 72, 1, 238.1, 141.5 , 0 );
setMoveKey( spep_5-3 + 74, 1, 292, 155.6 , 0 );
setMoveKey( spep_5-3 + 76, 1, 342.2, 161.8 , 0 );
setMoveKey( spep_5 + 78, 1, 396.2, 176 , 0 );

setScaleKey( spep_5-3 + 30, 1, 1.4, 1.4 );
setScaleKey( spep_5 + 78, 1, 1.4, 1.4 );

setRotateKey( spep_5-3 + 30, 1, 34.1 );
setRotateKey( spep_5-3 + 42, 1, 34.1 );
setRotateKey( spep_5-3 + 44, 1, -13.4 );
setRotateKey( spep_5-3 + 46, 1, -29.5 );
setRotateKey( spep_5-3 + 48, 1, -45.5 );
setRotateKey( spep_5-3 + 50, 1, -46.8 );
setRotateKey( spep_5-3 + 52, 1, -48.1 );
setRotateKey( spep_5-3 + 54, 1, -49.4 );
setRotateKey( spep_5-3 + 56, 1, -50.7 );
setRotateKey( spep_5-3 + 58, 1, -52 );
setRotateKey( spep_5-3 + 60, 1, -53.3 );
setRotateKey( spep_5-3 + 62, 1, -54.6 );
setRotateKey( spep_5-3 + 64, 1, -55.9 );
setRotateKey( spep_5-3 + 66, 1, -57.3 );
setRotateKey( spep_5-3 + 68, 1, -58.6 );
setRotateKey( spep_5-3 + 70, 1, -59.9 );
setRotateKey( spep_5-3 + 72, 1, -61.2 );
setRotateKey( spep_5-3 + 74, 1, -62.5 );
setRotateKey( spep_5-3 + 76, 1, -63.8 );
setRotateKey( spep_5 + 78, 1, -65.1 );

--SE
playSe( spep_5+14, 1033 );  --飛び出してくる
playSe( spep_5+40, 1010 );  --飛ばす


--白フェード
entryFade( spep_5+ 76, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_6 = spep_5 + 84;

--------------------------------------
--氷山打撲
--------------------------------------
--エフェクト(前)
sumo_f=entryEffect(spep_6,SP_09x,0x100,-1,0,0,0);

setEffMoveKey( spep_6 + 0, sumo_f, 0, 0 , 0 );
setEffMoveKey( spep_6 + 180, sumo_f, 0, 0 , 0 );

setEffScaleKey(spep_6,sumo_f,1.0,1.0);
setEffScaleKey(spep_6+180,sumo_f,1.0,1.0);

setEffRotateKey(spep_6,sumo_f,0);
setEffRotateKey(spep_6+180,sumo_f,0);

setEffAlphaKey(spep_6,sumo_f,255);
setEffAlphaKey(spep_6+180,sumo_f,255);

--エフェクト(後)
sumo_b=entryEffect(spep_6,SP_10x,0x80,-1,0,0,0);

setEffMoveKey( spep_6 + 0, sumo_b, 0, 0 , 0 );
setEffMoveKey( spep_6 + 180, sumo_b, 0, 0 , 0 );

setEffScaleKey(spep_6,sumo_b,1.0,1.0);
setEffScaleKey(spep_6+180,sumo_b,1.0,1.0);

setEffRotateKey(spep_6,sumo_b,0);
setEffRotateKey(spep_6+180,sumo_b,0);

setEffAlphaKey(spep_6,sumo_b,255);
setEffAlphaKey(spep_6+180,sumo_b,255);

--敵の動き
setDisp( spep_6 + 6, 1, 1 );

changeAnime( spep_6 + 6, 1, 108 );
changeAnime( spep_6-3 + 70, 1, 106 );

setMoveKey( spep_6-3 + 6, 1, -234.4, -367.8 , 0 );
setMoveKey( spep_6-3 + 8, 1, -194.6, -325.2 , 0 );
setMoveKey( spep_6-3 + 10, 1, -154.7, -282.6 , 0 );
setMoveKey( spep_6-3 + 12, 1, -114.9, -240.1 , 0 );
setMoveKey( spep_6-3 + 14, 1, -75, -197.4 , 0 );
setMoveKey( spep_6-3 + 16, 1, -35.1, -154.9 , 0 );
setMoveKey( spep_6-3 + 18, 1, -32.2, -151.8 , 0 );
setMoveKey( spep_6-3 + 20, 1, -29.2, -148.7 , 0 );
setMoveKey( spep_6-3 + 22, 1, -26.2, -145.6 , 0 );
setMoveKey( spep_6-3 + 24, 1, -23.2, -142.5 , 0 );
setMoveKey( spep_6-3 + 26, 1, -20.2, -139.4 , 0 );
setMoveKey( spep_6-3 + 28, 1, -17.2, -136.4 , 0 );
setMoveKey( spep_6-3 + 30, 1, -14.2, -133.3 , 0 );
setMoveKey( spep_6-3 + 32, 1, -11.2, -130.2 , 0 );
setMoveKey( spep_6-3 + 34, 1, -8.2, -127.1 , 0 );
setMoveKey( spep_6-3 + 36, 1, -5.2, -124 , 0 );
setMoveKey( spep_6-3 + 38, 1, -2.2, -120.9 , 0 );
setMoveKey( spep_6-3 + 40, 1, 0.8, -117.9 , 0 );
setMoveKey( spep_6-3 + 42, 1, 16.1, -101.2 , 0 );
setMoveKey( spep_6-3 + 44, 1, 31.4, -84.6 , 0 );
setMoveKey( spep_6-3 + 46, 1, 46.7, -68 , 0 );
setMoveKey( spep_6-3 + 48, 1, 62, -51.3 , 0 );
setMoveKey( spep_6-3 + 50, 1, 77.3, -34.7 , 0 );
setMoveKey( spep_6-3 + 52, 1, 77.2, -32.6 , 0 );
setMoveKey( spep_6-3 + 54, 1, 83, -28.4 , 0 );
setMoveKey( spep_6-3 + 56, 1, 82.2, -37.4 , 0 );
setMoveKey( spep_6-3 + 58, 1, 72, -27.9 , 0 );
setMoveKey( spep_6-3 + 60, 1, 81.2, -36.9 , 0 );
setMoveKey( spep_6-3 + 62, 1, 81.7, -36.1 , 0 );
setMoveKey( spep_6-3 + 64, 1, 85.2, -24.1 , 0 );
setMoveKey( spep_6-3 + 66, 1, 85.5, -39.9 , 0 );

setMoveKey( spep_6-3 + 70, 1, 84, -10.1 , 0 );
setMoveKey( spep_6-3 + 72, 1, 72.5, -33.1 , 0 );
setMoveKey( spep_6-3 + 74, 1, 67.5, -12.1 , 0 );
setMoveKey( spep_6-3 + 76, 1, 76.5, -19.1 , 0 );
setMoveKey( spep_6-3 + 78, 1, 84.5, -6.6 , 0 );
setMoveKey( spep_6-3 + 80, 1, 74.6, -31.6 , 0 );
setMoveKey( spep_6-3 + 82, 1, 66.5, -12.1 , 0 );
setMoveKey( spep_6-3 + 84, 1, 76.6, -19.1 , 0 );
setMoveKey( spep_6-3 + 86, 1, 85, -9.1 , 0 );
setMoveKey( spep_6-3 + 88, 1, 75, -34.1 , 0 );
setMoveKey( spep_6-3 + 90, 1, 67, -11.1 , 0 );
setMoveKey( spep_6-3 + 92, 1, 76.5, -19.1 , 0 );
setMoveKey( spep_6-3 + 94, 1, 85, -7.6 , 0 );
setMoveKey( spep_6-3 + 96, 1, 74.1, -31.6 , 0 );
setMoveKey( spep_6-3 + 98, 1, 67.1, -11.1 , 0 );
setMoveKey( spep_6-3 + 100, 1, 75.1, -21.1 , 0 );
setMoveKey( spep_6-3 + 102, 1, 72.6, -21.1 , 0 );
setMoveKey( spep_6-3 + 104, 1, 72.1, -21.1 , 0 );
setMoveKey( spep_6-3 + 106, 1, 71.6, -21.1 , 0 );
setMoveKey( spep_6-3 + 108, 1, 72.6, -21.1 , 0 );
setMoveKey( spep_6-3 + 110, 1, 70.6, -21.1 , 0 );
setMoveKey( spep_6-3 + 112, 1, 72.6, -21.1 , 0 );
setMoveKey( spep_6-3 + 114, 1, 71.6, -21.1 , 0 );
setMoveKey( spep_6-3 + 116, 1, 72.6, -21.1 , 0 );
setMoveKey( spep_6-3 + 118, 1, 71.6, -21.1 , 0 );
setMoveKey( spep_6-3 + 120, 1, 72.6, -21.1 , 0 );
setMoveKey( spep_6-3 + 122, 1, 71.6, -21.1 , 0 );
setMoveKey( spep_6-3 + 124, 1, 72.6, -21.1 , 0 );
setMoveKey( spep_6-3 + 126, 1, 71.6, -21.1 , 0 );
setMoveKey( spep_6-3 + 128, 1, 72.6, -21.1 , 0 );
setMoveKey( spep_6-3 + 130, 1, 71.6, -21.1 , 0 );
setMoveKey( spep_6-3 + 132, 1, 72.6, -21.1 , 0 );
setMoveKey( spep_6-3 + 134, 1, 71.6, -21.1 , 0 );
setMoveKey( spep_6-3 + 136, 1, 72.6, -21.1 , 0 );
setMoveKey( spep_6-3 + 138, 1, 71.6, -21.1 , 0 );
setMoveKey( spep_6-3 + 140, 1, 72.6, -21.1 , 0 );
setMoveKey( spep_6-3 + 142, 1, 71.6, -21.1 , 0 );
setMoveKey( spep_6-3 + 144, 1, 72.6, -21.1 , 0 );
setMoveKey( spep_6-3 + 146, 1, 71.6, -21.1 , 0 );
setMoveKey( spep_6-3 + 148, 1, 72.6, -21.1 , 0 );
setMoveKey( spep_6-3 + 150, 1, 71.6, -21.1 , 0 );
setMoveKey( spep_6-3 + 152, 1, 72.6, -21.1 , 0 );
setMoveKey( spep_6-3 + 154, 1, 71.6, -21.1 , 0 );
setMoveKey( spep_6-3 + 156, 1, 72.6, -21.1 , 0 );
setMoveKey( spep_6-3 + 158, 1, 71.6, -21.1 , 0 );
setMoveKey( spep_6-3 + 160, 1, 72.6, -21.1 , 0 );
setMoveKey( spep_6-3 + 162, 1, 71.6, -21.1 , 0 );
setMoveKey( spep_6-3 + 164, 1, 72.6, -21.1 , 0 );
setMoveKey( spep_6-3 + 166, 1, 71.6, -21.1 , 0 );
setMoveKey( spep_6-3 + 168, 1, 72.6, -21.1 , 0 );
setMoveKey( spep_6-3 + 170, 1, 71.6, -21.1 , 0 );
setMoveKey( spep_6-3 + 172, 1, 72.6, -21.1 , 0 );
setMoveKey( spep_6-3 + 174, 1, 71.6, -21.1 , 0 );
setMoveKey( spep_6-3 + 176, 1, 72.6, -21.1 , 0 );
setMoveKey( spep_6 + 178, 1, 71.6, -21.1 , 0 );

setScaleKey( spep_6-3 + 6, 1, 5, 5 );
setScaleKey( spep_6-3 + 8, 1, 4.4, 4.4 );
setScaleKey( spep_6-3 + 10, 1, 3.8, 3.8 );
setScaleKey( spep_6-3 + 12, 1, 3.2, 3.2 );
setScaleKey( spep_6-3 + 14, 1, 2.6, 2.6 );
setScaleKey( spep_6-3 + 16, 1, 2, 2 );
setScaleKey( spep_6-3 + 18, 1, 1.97, 1.97 );
setScaleKey( spep_6-3 + 20, 1, 1.93, 1.93 );
setScaleKey( spep_6-3 + 22, 1, 1.9, 1.9 );
setScaleKey( spep_6-3 + 24, 1, 1.87, 1.87 );
setScaleKey( spep_6-3 + 26, 1, 1.83, 1.83 );
setScaleKey( spep_6-3 + 28, 1, 1.8, 1.8 );
setScaleKey( spep_6-3 + 30, 1, 1.77, 1.77 );
setScaleKey( spep_6-3 + 32, 1, 1.73, 1.73 );
setScaleKey( spep_6-3 + 34, 1, 1.7, 1.7 );
setScaleKey( spep_6-3 + 36, 1, 1.67, 1.67 );
setScaleKey( spep_6-3 + 38, 1, 1.63, 1.63 );
setScaleKey( spep_6-3 + 40, 1, 1.6, 1.6 );
setScaleKey( spep_6-3 + 42, 1, 1.32, 1.32 );
setScaleKey( spep_6-3 + 44, 1, 1.05, 1.05 );
setScaleKey( spep_6-3 + 46, 1, 0.77, 0.77 );
setScaleKey( spep_6-3 + 48, 1, 0.5, 0.5 );
setScaleKey( spep_6-3 + 50, 1, 0.22, 0.22 );
setScaleKey( spep_6-3 + 52, 1, 0.08, 0.08 );
setScaleKey( spep_6 + 178, 1, 0.08, 0.08 );

setRotateKey( spep_6-3 + 6, 1, 0 );
setRotateKey( spep_6-3 + 68, 1, 0 );
setRotateKey( spep_6-3 + 69, 1, 0 );
setRotateKey( spep_6-3 + 70, 1, -44.9 );
setRotateKey( spep_6 + 178, 1, -44.9 );

--集中線

shuchusen5 = entryEffectLife( spep_6 + 48,  906, 132, 0x100, -1, 0, 332, 30 );
setEffMoveKey( spep_6 + 48, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_6 + 178, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_6 + 48, shuchusen5, 1.2, 1.09 );
setEffScaleKey( spep_6 + 178, shuchusen5, 1.2, 1.09 );

setEffRotateKey( spep_6 + 48, shuchusen5, 180 );
setEffRotateKey( spep_6 + 178, shuchusen5, 180 );

setEffAlphaKey( spep_6 + 48, shuchusen5, 255 );
setEffAlphaKey( spep_6 + 178, shuchusen5, 255 );

--SE
playSe( spep_6, 44 );  --飛んでいく
playSe( spep_6+48, 1011 );  --ぶつかる
playSe( spep_6+68, 1023 );  --ぶつかる

-- ** ダメージ表示 ** --
dealDamage( spep_6 + 48 );
entryFade( spep_6 + 160, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_6 + 170 );


end

