--1015600 トランクス(青年期)(未来)&マイ(未来)_未来を賭けた攻戦
--sp_effect_a8_00034

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
SP_01=	152584	;--	前方突進
SP_02=	152585	;--	スコープ
SP_03=	152586	;--	スコープ背景
SP_04=	152587	;--	斬り抜け（前）
SP_05=	152588	;--	斬り抜け（後）
SP_06=	152589	;--	マイ発射
SP_07=	152590	;--	弾丸命中～蹴り（前）
SP_08=	152591	;--	弾丸命中～蹴り（後）
SP_09=	152592	;--	弾丸命中～蹴り（背景）
SP_10=	152593	;--	ビルに吹っ飛び
SP_11=	152594	;--	爆破スイッチ
SP_12=	152595	;--	ビル爆破


--敵
SP_01x=	152584	;--	前方突進
--SP_01x=	152596	;--	前方突進	(敵側)
SP_02x=	152597	;--	スコープ	(敵側)
SP_03x=	152586	;--	スコープ背景	
SP_04x=	152587	;--	斬り抜け（前）	
SP_05x=	152588	;--	斬り抜け（後）	
SP_06x=	152598	;--	マイ発射	(敵側)
SP_07x=	152590	;--	弾丸命中～蹴り（前）	
SP_08x=	152599	;--	弾丸命中～蹴り（後）	(敵側)
SP_09x=	152592	;--	弾丸命中～蹴り（背景）	
SP_10x=	152593	;--	ビルに吹っ飛び	
SP_11x=	152594	;--	爆破スイッチ	
SP_12x=	152595	;--	ビル爆破	
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
--突進
------------------------------------------------------
spep_0=0;
--エフェクト
rush=entryEffectLife(spep_0,SP_01,90,0x100,-1,0,0,0);

setEffMoveKey( spep_0 + 0, rush, 0, 0 , 0 );
setEffMoveKey( spep_0 + 90, rush, 0, 0 , 0 );
setEffScaleKey(spep_0,rush,1.0,1.0);
setEffScaleKey(spep_0+90,rush,1.0,1.0);
setEffRotateKey(spep_0,rush,0);
setEffRotateKey(spep_0+90,rush,0);
setEffAlphaKey(spep_0,rush,255);
setEffAlphaKey(spep_0+90,rush,255);

--集中線
shuchusen1 = entryEffectLife( spep_0 + 0,  906, 90, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 90, shuchusen1, 0, 0 , 0);

setEffScaleKey( spep_0 + 0, shuchusen1, 1.0, 1.0 );
setEffScaleKey( spep_0 + 90, shuchusen1, 1.0, 1.0 );

setEffRotateKey( spep_0 + 0, shuchusen1, 180 );
setEffRotateKey( spep_0 + 90, shuchusen1, 180 );

setEffAlphaKey(spep_0,shuchusen1,255);
setEffAlphaKey(spep_0+90,shuchusen1,255);

--SE
playSe(  spep_0,  9);  --突進

--次の準備
entryFade(spep_0+82,4, 10, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- whit_fe fade

--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0+50 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    
    pauseAll( SP_dodge, 67);
    
    --キャラクターの固定
    --setMoveKey(SP_dodge, 1,370.3, 277 , 0 );
    --setScaleKey(SP_dodge , 1, 0.65, 0.65);
    --setRotateKey(SP_dodge,   1, 0 );
    
    --キャラクターの固定
    --setMoveKey(SP_dodge, 1,370.3, 277 , 0 );
    --setScaleKey(SP_dodge , 1, 0.65, 0.65);
    --setRotateKey(SP_dodge,   1, 0 );
    
    
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
    --setMoveKey(SP_dodge+9, 1, 1000 , 1000, 0);
    --setMoveKey(SP_dodge+10, 1, 1000 , 1000, 0);
    
    
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



--次の準備
spep_1=spep_0+90;

-------------------------------------
--カードカットイン(90F)
--------------------------------------

playSe(spep_1,SE_05);
shuchusen=entryEffectLife(spep_1,906,90,0x100,-1,0,0,0);   -- 集中線
setEffScaleKey(spep_1,shuchusen,1.6,1.6);

speff2=entryEffect(spep_1,1507,0x80,-1,0,0,0);   -- カード
setEffReplaceTexture(speff2,1,1);
setEffReplaceTexture(speff2,2,0);-- カード差し替え
setEffReplaceTexture(speff2,5,4);-- 技名テクスチャ差し替え

-- ** エフェクト等 ** --
entryFade(spep_1+84,4,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_2=spep_1+94;

------------------------------------------------------
--スコープ
------------------------------------------------------
--エフェクト(前)
scope_f=entryEffectLife(spep_2,SP_02,130,0x100,-1,0,0,0);

setEffMoveKey( spep_2 + 0, scope_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 130, scope_f, 0, 0 , 0 );
setEffScaleKey(spep_2,scope_f,1.0,1.0);
setEffScaleKey(spep_2+130,scope_f,1.0,1.0);
setEffRotateKey(spep_2,scope_f,0);
setEffRotateKey(spep_2+130,scope_f,0);
setEffAlphaKey(spep_2,scope_f,255);
setEffAlphaKey(spep_2+130,scope_f,255);

--エフェクト(後)
scope_b=entryEffectLife(spep_2,SP_03,130,0x80,-1,0,0,0);

setEffMoveKey( spep_2 + 0, scope_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 130, scope_b, 0, 0 , 0 );
setEffScaleKey(spep_2,scope_b,1.0,1.0);
setEffScaleKey(spep_2+130,scope_b,1.0,1.0);
setEffRotateKey(spep_2,scope_b,0);
setEffRotateKey(spep_2+130,scope_b,0);
setEffAlphaKey(spep_2,scope_b,255);
setEffAlphaKey(spep_2+130,scope_b,255);

--敵の動き
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 128, 1, 0 );

changeAnime( spep_2 + 0, 1, 101 );
changeAnime( spep_2-3 + 26, 1, 106 );
changeAnime( spep_2-3 + 46, 1, 108 );
changeAnime( spep_2-3 + 60, 1, 106 );

setMoveKey( spep_2 + 0, 1, 127, 57 , 0 );
setMoveKey( spep_2-3 + 2, 1, 127, 58.5 , 0 );
setMoveKey( spep_2-3 + 4, 1, 127, 60 , 0 );
setMoveKey( spep_2-3 + 6, 1, 127, 61.5 , 0 );
setMoveKey( spep_2-3 + 8, 1, 127, 63 , 0 );
setMoveKey( spep_2-3 + 10, 1, 127, 64.5 , 0 );
setMoveKey( spep_2-3 + 12, 1, 127, 66 , 0 );
setMoveKey( spep_2-3 + 14, 1, 127, 67.5 , 0 );
setMoveKey( spep_2-3 + 16, 1, 127, 69 , 0 );
setMoveKey( spep_2-3 + 18, 1, 124.1, 64.3 , 0 );
setMoveKey( spep_2-3 + 20, 1, 121.2, 59.6 , 0 );
setMoveKey( spep_2-3 + 22, 1, 118.3, 54.9 , 0 );
setMoveKey( spep_2-3 + 25, 1, 115.4, 50.2 , 0 );
setMoveKey( spep_2-3 + 26, 1, 91.9, 55.2 , 0 );
setMoveKey( spep_2-3 + 28, 1, 98.1, 61.1 , 0 );
setMoveKey( spep_2-3 + 30, 1, 111.8, 56.5 , 0 );
setMoveKey( spep_2-3 + 32, 1, 112.4, 56.9 , 0 );
setMoveKey( spep_2-3 + 34, 1, 108.5, 51.3 , 0 );
setMoveKey( spep_2-3 + 36, 1, 103.2, 50.9 , 0 );
setMoveKey( spep_2-3 + 38, 1, 105.3, 40 , 0 );
setMoveKey( spep_2-3 + 40, 1, 106.8, 48.4 , 0 );
setMoveKey( spep_2-3 + 42, 1, 103.8, 50.6 , 0 );
setMoveKey( spep_2-3 + 45, 1, 99.3, 58.1 , 0 );
setMoveKey( spep_2-3 + 46, 1, 99.9, 30.2 , 0 );
setMoveKey( spep_2-3 + 48, 1, 100.4, 36.4 , 0 );
setMoveKey( spep_2-3 + 50, 1, 103.8, 34.3 , 0 );
setMoveKey( spep_2-3 + 52, 1, 104.9, 40.5 , 0 );
setMoveKey( spep_2-3 + 54, 1, 101.2, 43 , 0 );
setMoveKey( spep_2-3 + 56, 1, 98.3, 45.7 , 0 );
setMoveKey( spep_2-3 + 59, 1, 98.2, 40.1 , 0 );
setMoveKey( spep_2-3 + 60, 1, 56.8, 73.8 , 0 );
setMoveKey( spep_2-3 + 62, 1, 47.1, 79 , 0 );
setMoveKey( spep_2-3 + 64, 1, 42.5, 72.4 , 0 );
setMoveKey( spep_2-3 + 66, 1, 38.9, 77.1 , 0 );
setMoveKey( spep_2-3 + 68, 1, 29.4, 76.9 , 0 );
setMoveKey( spep_2-3 + 70, 1, 19.9, 82 , 0 );
setMoveKey( spep_2-3 + 72, 1, 15.3, 75.4 , 0 );
setMoveKey( spep_2-3 + 74, 1, 11.6, 80.1 , 0 );
setMoveKey( spep_2-3 + 76, 1, 2.3, 79.8 , 0 );
setMoveKey( spep_2-3 + 78, 1, -2.7, 80.1 , 0 );
setMoveKey( spep_2-3 + 80, 1, -7.5, 80.4 , 0 );
setMoveKey( spep_2-3 + 82, 1, -12.3, 80.7 , 0 );
setMoveKey( spep_2-3 + 84, 1, -17.2, 81 , 0 );
setMoveKey( spep_2-3 + 86, 1, -22.1, 81.4 , 0 );
setMoveKey( spep_2-3 + 88, 1, -26.9, 81.7 , 0 );
setMoveKey( spep_2-3 + 90, 1, -31.8, 82 , 0 );
setMoveKey( spep_2-3 + 92, 1, -36.6, 82.3 , 0 );
setMoveKey( spep_2-3 + 94, 1, -41.5, 82.6 , 0 );
setMoveKey( spep_2-3 + 96, 1, -46.4, 82.9 , 0 );
setMoveKey( spep_2-3 + 98, 1, -51.2, 83.2 , 0 );
setMoveKey( spep_2-3 + 100, 1, -56.1, 83.5 , 0 );
setMoveKey( spep_2-3 + 102, 1, -63, 85 , 0 );
setMoveKey( spep_2-3 + 104, 1, -71, 86.7 , 0 );
setMoveKey( spep_2-3 + 106, 1, -79.1, 88.4 , 0 );
setMoveKey( spep_2-3 + 108, 1, -87.6, 90.1 , 0 );
setMoveKey( spep_2-3 + 110, 1, -97.1, 92.2 , 0 );
setMoveKey( spep_2-3 + 112, 1, -103.1, 93.4 , 0 );
setMoveKey( spep_2-3 + 114, 1, -109.6, 94.8 , 0 );
setMoveKey( spep_2-3 + 116, 1, -115.9, 96 , 0 );
setMoveKey( spep_2-3 + 118, 1, -122.2, 97.3 , 0 );
setMoveKey( spep_2-3 + 120, 1, -124.1, 97.9 , 0 );
setMoveKey( spep_2-3 + 122, 1, -125.4, 98.1 , 0 );
setMoveKey( spep_2-3 + 124, 1, -127.5, 98.5 , 0 );
setMoveKey( spep_2-3 + 126, 1, -129.4, 99 , 0 );
setMoveKey( spep_2 + 128, 1, -130.8, 99.3 , 0 );

setScaleKey( spep_2 + 0, 1, 1, 1 );
setScaleKey( spep_2-3 + 100, 1, 1, 1 );
setScaleKey( spep_2-3 + 102, 1, 1.09, 1.09 );
setScaleKey( spep_2-3 + 104, 1, 1.19, 1.19 );
setScaleKey( spep_2-3 + 106, 1, 1.28, 1.28 );
setScaleKey( spep_2-3 + 108, 1, 1.37, 1.37 );
setScaleKey( spep_2-3 + 110, 1, 1.47, 1.47 );
setScaleKey( spep_2-3 + 112, 1, 1.56, 1.56 );
setScaleKey( spep_2-3 + 114, 1, 1.66, 1.66 );
setScaleKey( spep_2-3 + 116, 1, 1.75, 1.75 );
setScaleKey( spep_2-3 + 118, 1, 1.84, 1.84 );
setScaleKey( spep_2-3 + 120, 1, 1.86, 1.86 );
setScaleKey( spep_2-3 + 122, 1, 1.87, 1.87 );
setScaleKey( spep_2-3 + 124, 1, 1.89, 1.89 );
setScaleKey( spep_2-3 + 126, 1, 1.91, 1.91 );
setScaleKey( spep_2 + 128, 1, 1.92, 1.92 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2-3 + 25, 1, 0 );
setRotateKey( spep_2-3 + 26, 1, -53.4 );
setRotateKey( spep_2-3 + 28, 1, -53.5 );
setRotateKey( spep_2-3 + 45, 1, -53.5 );
setRotateKey( spep_2-3 + 46, 1, 0 );
setRotateKey( spep_2-3 + 59, 1, 0 );
setRotateKey( spep_2-3 + 60, 1, -41 );
setRotateKey( spep_2-3 + 74, 1, -41 );
setRotateKey( spep_2-3 + 76, 1, -53 );
setRotateKey( spep_2 + 128, 1, -53 );

--集中線
--shuchusen2 = entryEffectLife( spep_2 + 0,  906, 130, 0x100, -1, 0, 0, 0 );

--setEffMoveKey( spep_2 + 0, shuchusen2, 0, 0 , 0 );
--setEffMoveKey( spep_2 + 130, shuchusen2, 0, 0 , 0);

--setEffScaleKey( spep_2 + 0, shuchusen2, 1.0, 1.0 );
--setEffScaleKey( spep_2 + 130, shuchusen2, 1.0, 1.0 );

--setEffRotateKey( spep_2 + 0, shuchusen2, 180 );
--setEffRotateKey( spep_2 + 130, shuchusen2, 180 );

--setEffAlphaKey(spep_2,shuchusen2,255);
--setEffAlphaKey(spep_2+130,shuchusen2,255);


--SE
changeAnime( spep_2 + 0, 1, 101 );
changeAnime( spep_2 + 26, 1, 106 );
changeAnime( spep_2 + 46, 1, 108 );
changeAnime( spep_2 + 60, 1, 106 );
playSe(  spep_2,  1019);  --スコープ
playSe(  spep_2+24,  1000);  --パンチ
playSe(  spep_2+44,  1007);  --パンチ
playSe(  spep_2+58,  1001);  --キック
playSe(  spep_2+98,  44);  --斬りかかる寸前


--次の準備
entryFade(spep_2+122,4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- whit_fe fade

--次の準備
spep_3=spep_2+130;

------------------------------------------------------
--斬撃
------------------------------------------------------
--エフェクト(前)
cut_f=entryEffectLife(spep_3,SP_04,140,0x100,-1,0,0,0);

setEffMoveKey( spep_3 + 0, cut_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 140, cut_f, 0, 0 , 0 );
setEffScaleKey(spep_3,cut_f,1.0,1.0);
setEffScaleKey(spep_3+140,cut_f,1.0,1.0);
setEffRotateKey(spep_3,cut_f,0);
setEffRotateKey(spep_3+140,cut_f,0);
setEffAlphaKey(spep_3,cut_f,255);
setEffAlphaKey(spep_3+140,cut_f,255);

--エフェクト(後)
cut_b=entryEffectLife(spep_3,SP_05,140,0x80,-1,0,0,0);

setEffMoveKey( spep_3 + 0, cut_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 140, cut_b, 0, 0 , 0 );
setEffScaleKey(spep_3,cut_b,1.0,1.0);
setEffScaleKey(spep_3+140,cut_b,1.0,1.0);
setEffRotateKey(spep_3,cut_b,0);
setEffRotateKey(spep_3+140,cut_b,0);
setEffAlphaKey(spep_3,cut_b,255);
setEffAlphaKey(spep_3+140,cut_b,255);


--敵の動き
setDisp( spep_3 + 64, 1, 1 );
setDisp( spep_3 + 98, 1, 0 );

changeAnime( spep_3 + 64, 1, 106 );

setMoveKey( spep_3 + 64, 1, 200.9, 388.6 , 0 );
setMoveKey( spep_3 + 66, 1, 207.7, 405.6 , 0 );
setMoveKey( spep_3 + 68, 1, 206.6, 438.4 , 0 );
setMoveKey( spep_3 + 70, 1, 233.4, 423.4 , 0 );
setMoveKey( spep_3 + 72, 1, 204.3, 464.2 , 0 );
setMoveKey( spep_3 + 74, 1, 249.1, 481.2 , 0 );
setMoveKey( spep_3 + 76, 1, 233.9, 506.2 , 0 );
setMoveKey( spep_3 + 78, 1, 260.8, 491 , 0 );
setMoveKey( spep_3 + 80, 1, 231.6, 532 , 0 );
setMoveKey( spep_3 + 82, 1, 276.5, 548.8 , 0 );
setMoveKey( spep_3 + 84, 1, 261.3, 573.8 , 0 );
setMoveKey( spep_3 + 86, 1, 288.2, 558.6 , 0 );
setMoveKey( spep_3 + 88, 1, 259, 599.6 , 0 );
setMoveKey( spep_3 + 90, 1, 303.8, 616.5 , 0 );
setMoveKey( spep_3 + 92, 1, 288.7, 641.4 , 0 );
setMoveKey( spep_3 + 94, 1, 315.5, 626.4 , 0 );
setMoveKey( spep_3 + 96, 1, 286.4, 667.2 , 0 );
setMoveKey( spep_3 + 98, 1, 331.2, 684.2 , 0 );

setScaleKey( spep_3 + 64, 1, 1, 1 );
setScaleKey( spep_3 + 98, 1, 1, 1 );

setRotateKey( spep_3 + 64, 1, -31.6 );
setRotateKey( spep_3 + 66, 1, -31.2 );
setRotateKey( spep_3 + 68, 1, -30.6 );
setRotateKey( spep_3 + 70, 1, -30 );
setRotateKey( spep_3 + 72, 1, -29.4 );
setRotateKey( spep_3 + 74, 1, -28.8 );
setRotateKey( spep_3 + 76, 1, -28.2 );
setRotateKey( spep_3 + 78, 1, -27.6 );
setRotateKey( spep_3 + 80, 1, -27 );
setRotateKey( spep_3 + 82, 1, -26.4 );
setRotateKey( spep_3 + 84, 1, -25.8 );
setRotateKey( spep_3 + 86, 1, -25.2 );
setRotateKey( spep_3 + 88, 1, -24.7 );
setRotateKey( spep_3 + 90, 1, -24.1 );
setRotateKey( spep_3 + 92, 1, -23.5 );
setRotateKey( spep_3 + 94, 1, -22.9 );
setRotateKey( spep_3 + 96, 1, -22.3 );
setRotateKey( spep_3 + 98, 1, -21.7 );

--SE
playSe(  spep_3+10,  1032);  --斬撃
playSe(  spep_3+58,  1049);  --爆破

--次の準備
entryFade(spep_3+132,4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- whit_fe fade

--次の準備
spep_4=spep_3+140;
------------------------------------------------------
--マイちゃんが撃つ
------------------------------------------------------
--エフェクト
utu_b=entryEffectLife(spep_4,SP_06,60,0x80,-1,0,0,0);

setEffMoveKey( spep_4 + 0, utu_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 60, utu_b, 0, 0 , 0 );
setEffScaleKey(spep_4,utu_b,1.0,1.0);
setEffScaleKey(spep_4+60,utu_b,1.0,1.0);
setEffRotateKey(spep_4,utu_b,0);
setEffRotateKey(spep_4+60,utu_b,0);
setEffAlphaKey(spep_4,utu_b,255);
setEffAlphaKey(spep_4+60,utu_b,255);


--集中線
shuchusen3 = entryEffectLife( spep_4-3 + 14,  906, 44, 0x100, -1, -100, 100, 0 );

setEffMoveKey( spep_4-3 + 14, shuchusen3, -100, 100 , 0 );
setEffMoveKey( spep_4-3 + 58, shuchusen3, -100, 100 , 0 );

setEffScaleKey( spep_4-3 + 14, shuchusen3, 1.6, 1.6 );
setEffScaleKey( spep_4-3 + 58, shuchusen3, 1.6, 1.6 );

setEffRotateKey( spep_4-3 + 14, shuchusen3, 0 );
setEffRotateKey( spep_4-3 + 58, shuchusen3, 0 );

setEffAlphaKey( spep_4-3 + 14, shuchusen3, 255 );
setEffAlphaKey( spep_4-3 + 58, shuchusen3, 255 );

--SE
playSe(  spep_4,  8);  --マイちゃん現る
playSe(  spep_4+14,  1008);  --スナイパー

--次の準備
entryFade(spep_4+52,4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- whit_fe fade

--次の準備
spep_5=spep_4+60;
------------------------------------------------------
--弾丸があったてからの暴行
------------------------------------------------------
--エフェクト(前)
hit1_f=entryEffectLife(spep_5,SP_07,120,0x100,-1,0,0,0);

setEffMoveKey( spep_5 + 0, hit1_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 120, hit1_f, 0, 0 , 0 );
setEffScaleKey(spep_5,hit1_f,1.0,1.0);
setEffScaleKey(spep_5+120,hit1_f,1.0,1.0);
setEffRotateKey(spep_5,hit1_f,0);
setEffRotateKey(spep_5+120,hit1_f,0);
setEffAlphaKey(spep_5,hit1_f,255);
setEffAlphaKey(spep_5+120,hit1_f,255);

--エフェクト(背景)
Bg=entryEffectLife(spep_5,SP_09,120,0x80,-1,0,0,0);

setEffMoveKey( spep_5 + 0, Bg, 0, 0 , 0 );
setEffMoveKey( spep_5 + 120, Bg, 0, 0 , 0 );
setEffScaleKey(spep_5,Bg,1.0,1.0);
setEffScaleKey(spep_5+120,Bg,1.0,1.0);
setEffRotateKey(spep_5,Bg,0);
setEffRotateKey(spep_5+120,Bg,0);
setEffAlphaKey(spep_5,Bg,160);
setEffAlphaKey(spep_5+120,Bg,160);

--流線(斜め上)
ryusen1 = entryEffectLife( spep_5 + 0,  921, 24, 0x80, -1, 0, -203, -29 );

setEffMoveKey( spep_5 + 0, ryusen1, -203, -29 , 0 );
setEffMoveKey( spep_5 + 24, ryusen1, -203, -29 , 0 );

setEffScaleKey( spep_5 + 0, ryusen1, 2.12, 1.51 );
setEffScaleKey( spep_5 + 24, ryusen1, 2.12, 1.51 );

setEffRotateKey( spep_5 + 0, ryusen1, -30.6 );
setEffRotateKey( spep_5 + 24, ryusen1, -30.6 )--28;

setEffAlphaKey( spep_5 + 0, ryusen1, 255 );
setEffAlphaKey( spep_5 + 24, ryusen1, 255 );

--集中線
shuchusen4 = entryEffectLife( spep_5 + 24,  906, 54, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_5 + 0, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_5 + 78, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, shuchusen4, 1.27, 1.5 );
setEffScaleKey( spep_5 + 78, shuchusen4, 1.27, 1.5 );

setEffRotateKey( spep_5 + 0, shuchusen4, 0 );
setEffRotateKey( spep_5 + 78, shuchusen4, 0 );

setEffAlphaKey( spep_5 + 0, shuchusen4, 0 );
setEffAlphaKey( spep_5 + 24, shuchusen4, 0 );
setEffAlphaKey( spep_5 + 25, shuchusen4, 255 );
setEffAlphaKey( spep_5 + 26, shuchusen4, 255 );
setEffAlphaKey( spep_5 + 34, shuchusen4, 255 );
setEffAlphaKey( spep_5 + 35, shuchusen4, 255 );
setEffAlphaKey( spep_5 + 36, shuchusen4, 0 );
setEffAlphaKey( spep_5 + 70, shuchusen4, 0 );
setEffAlphaKey( spep_5 + 71, shuchusen4, 255 );
setEffAlphaKey( spep_5 + 72, shuchusen4, 255 );
setEffAlphaKey( spep_5 + 78, shuchusen4, 255 );

--流線(斜め下)
ryusen2 = entryEffectLife( spep_5 + 0,  914, 70, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_5 + 0, ryusen2, 0, 0, 0 );
setEffMoveKey( spep_5 + 70, ryusen2, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, ryusen2, 4.21, 1.32 );
setEffScaleKey( spep_5 + 70, ryusen2, 4.21, 1.32 );

setEffRotateKey( spep_5 + 0, ryusen2, -76.5 );
setEffRotateKey( spep_5 + 70, ryusen2, -76.5 );

setEffAlphaKey( spep_5 + 0, ryusen2, 0 );
setEffAlphaKey( spep_5 + 34, ryusen2, 0 );
setEffAlphaKey( spep_5 + 35, ryusen2, 0 );
setEffAlphaKey( spep_5 + 36, ryusen2, 255 );
setEffAlphaKey( spep_5 + 70, ryusen2, 255 );
--setEffAlphaKey( spep_5 + 71, ryusen2, 0 );
--setEffAlphaKey( spep_5 + 72, ryusen2, 0 );

--流線(手前)
ryusen3 = entryEffectLife( spep_5 + 0,  924, 118, 0x80, -1, 100, -50, 0 );

setEffMoveKey( spep_5 + 0, ryusen3, 100, -50 , 0 )
setEffMoveKey( spep_5 +118 , ryusen3, 100, -50 , 0 );

setEffScaleKey( spep_5 + 0, ryusen3, 1.01, 1.32 );
setEffScaleKey( spep_5 + 118, ryusen3, 1.01, 1.32 );

setEffRotateKey( spep_5 + 0, ryusen3, -129 );
setEffRotateKey( spep_5 + 118, ryusen3,-129 );

setEffAlphaKey( spep_5 + 0, ryusen3, 0 );
setEffAlphaKey( spep_5 + 78, ryusen3, 0 );
setEffAlphaKey( spep_5 + 79, ryusen3, 255 )
setEffAlphaKey( spep_5 + 80, ryusen3, 255 )
setEffAlphaKey( spep_5 + 118, ryusen3, 255 );

--エフェクト(後)
hit1_b=entryEffectLife(spep_5,SP_08,120,0x80,-1,0,0,0);

setEffMoveKey( spep_5 + 0, hit1_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 120, hit1_b, 0, 0 , 0 );
setEffScaleKey(spep_5,hit1_b,1.0,1.0);
setEffScaleKey(spep_5+120,hit1_b,1.0,1.0);
setEffRotateKey(spep_5,hit1_b,0);
setEffRotateKey(spep_5+120,hit1_b,0);
setEffAlphaKey(spep_5,hit1_b,255);
setEffAlphaKey(spep_5+120,hit1_b,255);

--敵の動き
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 118, 1, 0 );

changeAnime( spep_5 + 0, 1, 106 );
changeAnime( spep_5-3 + 26, 1, 108 );
changeAnime( spep_5-3 + 74, 1, 107 );

setMoveKey( spep_5-3 + 0, 1, 306.8, 341.1 , 0 );
setMoveKey( spep_5-3 + 2, 1, 287.5, 321.1 , 0 );
setMoveKey( spep_5-3 + 4, 1, 267.2, 295.9 , 0 );
setMoveKey( spep_5-3 + 6, 1, 250.5, 274.8 , 0 );
setMoveKey( spep_5-3 + 8, 1, 229.5, 253 , 0 );
setMoveKey( spep_5-3 + 10, 1, 209.5, 235 , 0 );
setMoveKey( spep_5-3 + 12, 1, 189.4, 206.8 , 0 );
setMoveKey( spep_5-3 + 14, 1, 174.2, 187.2 , 0 );
setMoveKey( spep_5-3 + 16, 1, 152.2, 164.9 , 0 );
setMoveKey( spep_5-3 + 18, 1, 131.1, 148.8 , 0 );
setMoveKey( spep_5-3 + 20, 1, 112, 117.5 , 0 );
setMoveKey( spep_5-3 + 22, 1, 97.9, 99.7 , 0 );
setMoveKey( spep_5-3 + 25, 1, 74.9, 77 , 0 );
setMoveKey( spep_5-3 + 26, 1, 100.5, 83.9 , 0 );
setMoveKey( spep_5-3 + 28, 1, 98.1, 87.8 , 0 );
setMoveKey( spep_5-3 + 30, 1, 104.6, 83.3 , 0 );
setMoveKey( spep_5-3 + 32, 1, 107.1, 89.5 , 0 );
setMoveKey( spep_5-3 + 34, 1, 106, 88.4 , 0 );
setMoveKey( spep_5-3 + 36, 1, 103.7, 92.4 , 0 );
setMoveKey( spep_5-3 + 38, 1, 110.1, 87.8 , 0 );
setMoveKey( spep_5-3 + 40, 1, 112.6, 94 , 0 );
setMoveKey( spep_5-3 + 42, 1, 111.5, 92.9 , 0 );
setMoveKey( spep_5-3 + 44, 1, 109.2, 96.9 , 0 );
setMoveKey( spep_5-3 + 46, 1, 115.7, 92.3 , 0 );
setMoveKey( spep_5-3 + 48, 1, 118.2, 98.5 , 0 );
setMoveKey( spep_5-3 + 50, 1, 117.1, 97.5 , 0 );
setMoveKey( spep_5-3 + 52, 1, 114.8, 101.4 , 0 );
setMoveKey( spep_5-3 + 54, 1, 121.3, 96.8 , 0 );
setMoveKey( spep_5-3 + 56, 1, 123.8, 103.1 , 0 );
setMoveKey( spep_5-3 + 58, 1, 122.7, 102 , 0 );
setMoveKey( spep_5-3 + 60, 1, 120.4, 105.9 , 0 );
setMoveKey( spep_5-3 + 62, 1, 126.8, 101.3 , 0 );
setMoveKey( spep_5-3 + 64, 1, 129.3, 107.6 , 0 );
setMoveKey( spep_5-3 + 66, 1, 128.2, 106.5 , 0 );
setMoveKey( spep_5-3 + 68, 1, 125.9, 110.4 , 0 );
setMoveKey( spep_5-3 + 70, 1, 132.4, 105.9 , 0 );
setMoveKey( spep_5-3 + 73, 1, 134.9, 112.1 , 0 );
setMoveKey( spep_5-3 + 74, 1, 77, -37.1 , 0 );
setMoveKey( spep_5-3 + 76, 1, 89.4, -60.1 , 0 );
setMoveKey( spep_5-3 + 78, 1, 104.1, -102.2 , 0 );
setMoveKey( spep_5-3 + 80, 1, 110.1, -129.4 , 0 );
setMoveKey( spep_5-3 + 82, 1, 129.7, -156.4 , 0 );
setMoveKey( spep_5-3 + 84, 1, 143.3, -176 , 0 );
setMoveKey( spep_5-3 + 86, 1, 156, -223.9 , 0 );
setMoveKey( spep_5-3 + 88, 1, 159.9, -248.6 , 0 );
setMoveKey( spep_5-3 + 90, 1, 182.5, -275.7 , 0 );
setMoveKey( spep_5-3 + 92, 1, 198.1, -292.2 , 0 );
setMoveKey( spep_5-3 + 94, 1, 207.2, -345.5 , 0 );
setMoveKey( spep_5-3 + 96, 1, 209.6, -366.9 , 0 );
setMoveKey( spep_5-3 + 98, 1, 235.2, -394.9 , 0 );
setMoveKey( spep_5-3 + 100, 1, 253.9, -408.9 , 0 );
setMoveKey( spep_5-3 + 102, 1, 257.7, -466.7 , 0 );
setMoveKey( spep_5-3 + 104, 1, 259.5, -484.3 , 0 );
setMoveKey( spep_5-3 + 106, 1, 287.9, -514.3 , 0 );
setMoveKey( spep_5-3 + 108, 1, 310.4, -526.1 , 0 );
setMoveKey( spep_5-3 + 110, 1, 307.8, -587.6 , 0 );
setMoveKey( spep_5-3 + 112, 1, 309.7, -601 , 0 );
setMoveKey( spep_5-3 + 114, 1, 340.7, -633.6 , 0 );
setMoveKey( spep_5-3 + 116, 1, 367.6, -644.3 , 0 );
setMoveKey( spep_5 + 118, 1, 357.3, -707.8 , 0 );

a=0.3;

setScaleKey( spep_5-3 + 0, 1, 0.3, 0.3 );
setScaleKey( spep_5-3 + 2, 1, 0.4, 0.4 );
setScaleKey( spep_5-3 + 4, 1, 0.49, 0.49 );
setScaleKey( spep_5-3 + 6, 1, 0.59, 0.59 );
setScaleKey( spep_5-3 + 8, 1, 0.68, 0.68 );
setScaleKey( spep_5-3 + 10, 1, 0.78, 0.78 );
setScaleKey( spep_5-3 + 12, 1, 0.88, 0.88 );
setScaleKey( spep_5-3 + 14, 1, 0.97, 0.97 );
setScaleKey( spep_5-3 + 16, 1, 1.07, 1.07 );
setScaleKey( spep_5-3 + 18, 1, 1.16, 1.16 );
setScaleKey( spep_5-3 + 20, 1, 1.26, 1.26 );
setScaleKey( spep_5-3 + 22, 1, 1.36, 1.36 );
setScaleKey( spep_5-3 + 25, 1, 1.45, 1.45 );
setScaleKey( spep_5-3 + 26, 1, 1.4, 1.4 );
setScaleKey( spep_5-3 + 73, 1, 1.4, 1.4 );
setScaleKey( spep_5-3 + 74, 1, 0.98-a, 0.98-a );
setScaleKey( spep_5-3 + 76, 1, 1.12-a, 1.12-a );
setScaleKey( spep_5-3 + 78, 1, 1.26-a, 1.26-a );
setScaleKey( spep_5-3 + 80, 1, 1.39-a, 1.39-a );
setScaleKey( spep_5-3 + 82, 1, 1.53-a, 1.53-a );
setScaleKey( spep_5-3 + 84, 1, 1.67-a, 1.67-a );
setScaleKey( spep_5-3 + 86, 1, 1.81-a, 1.81-a );
setScaleKey( spep_5-3 + 88, 1, 1.94-a, 1.94-a );
setScaleKey( spep_5-3 + 90, 1, 2.08-a, 2.08-a );
setScaleKey( spep_5-3 + 92, 1, 2.22-a, 2.22-a );
setScaleKey( spep_5-3 + 94, 1, 2.35-a, 2.35-a );
setScaleKey( spep_5-3 + 96, 1, 2.49-a, 2.49-a );
setScaleKey( spep_5-3 + 98, 1, 2.63-a, 2.63-a );
setScaleKey( spep_5-3 + 100, 1, 2.77-a, 2.77-a );
setScaleKey( spep_5-3 + 102, 1, 2.9-a, 2.9-a );
setScaleKey( spep_5-3 + 104, 1, 3.04-a, 3.04-a );
setScaleKey( spep_5-3 + 106, 1, 3.18-a, 3.18-a );
setScaleKey( spep_5-3 + 108, 1, 3.31-a, 3.31-a );
setScaleKey( spep_5-3 + 110, 1, 3.45-a, 3.45-a );
setScaleKey( spep_5-3 + 112, 1, 3.59-a, 3.59-a );
setScaleKey( spep_5-3 + 114, 1, 3.73-a, 3.73-a );
setScaleKey( spep_5-3 + 116, 1, 3.86-a, 3.86-a );
setScaleKey( spep_5 + 118, 1, 4-a, 4-a );

setRotateKey( spep_5-3 + 0, 1, -5.8 );
setRotateKey( spep_5-3 + 2, 1, -8.2 );
setRotateKey( spep_5-3 + 4, 1, -10.4 );
setRotateKey( spep_5-3 + 6, 1, -12.7 );
setRotateKey( spep_5-3 + 8, 1, -14.9 );
setRotateKey( spep_5-3 + 10, 1, -17.2 );
setRotateKey( spep_5-3 + 12, 1, -19.4 );
setRotateKey( spep_5-3 + 14, 1, -21.7 );
setRotateKey( spep_5-3 + 16, 1, -23.9 );
setRotateKey( spep_5-3 + 18, 1, -26.2 );
setRotateKey( spep_5-3 + 20, 1, -28.5 );
setRotateKey( spep_5-3 + 22, 1, -30.7 );
setRotateKey( spep_5-3 + 25, 1, -33 );
setRotateKey( spep_5-3 + 26, 1, -25.8 );
setRotateKey( spep_5-3 + 73, 1, -25.8 );
setRotateKey( spep_5-3 + 74, 1, -43.3 );
setRotateKey( spep_5-3 + 76, 1, -41.2 );
setRotateKey( spep_5-3 + 78, 1, -39.1 );
setRotateKey( spep_5-3 + 80, 1, -37 );
setRotateKey( spep_5-3 + 82, 1, -34.9 );
setRotateKey( spep_5-3 + 84, 1, -32.8 );
setRotateKey( spep_5-3 + 86, 1, -30.7 );
setRotateKey( spep_5-3 + 88, 1, -28.6 );
setRotateKey( spep_5-3 + 90, 1, -26.5 );
setRotateKey( spep_5-3 + 92, 1, -24.4 );
setRotateKey( spep_5-3 + 94, 1, -22.3 );
setRotateKey( spep_5-3 + 96, 1, -20.2 );
setRotateKey( spep_5-3 + 98, 1, -18.1 );
setRotateKey( spep_5-3 + 100, 1, -16 );
setRotateKey( spep_5-3 + 102, 1, -13.9 );
setRotateKey( spep_5-3 + 104, 1, -11.9 );
setRotateKey( spep_5-3 + 106, 1, -9.8 );
setRotateKey( spep_5-3 + 108, 1, -7.7 );
setRotateKey( spep_5-3 + 110, 1, -5.6 );
setRotateKey( spep_5-3 + 112, 1, -3.5 );
setRotateKey( spep_5-3 + 114, 1, -1.4 );
setRotateKey( spep_5-3 + 116, 1, 0.7 );
setRotateKey( spep_5 + 118, 1, 2.8 );


--文字エントリー
ctbago = entryEffectLife( spep_5-4 + 74,  10021, 28, 0x100, -1, 0, 138.2, 207.4 );--バゴォッ

setEffShake(  spep_5-4+74,  ctbago,  28,  10);  --揺れ
setEffMoveKey( spep_5-4 + 74, ctbago, 138.2, 207.4 , 0 );
setEffMoveKey( spep_5-4 + 76, ctbago, 158, 248.4 , 0 );
setEffMoveKey( spep_5-4 + 78, ctbago, 165.1, 291.4 , 0 );
setEffMoveKey( spep_5-4 + 80, ctbago, 174.4, 291.8 , 0 );
setEffMoveKey( spep_5-4 + 82, ctbago, 166.1, 294.9 , 0 );
setEffMoveKey( spep_5-4 + 84, ctbago, 175.4, 295.3 , 0 );
setEffMoveKey( spep_5-4 + 86, ctbago, 167, 298.5 , 0 );
setEffMoveKey( spep_5-4 + 88, ctbago, 176.5, 298.7 , 0 );
setEffMoveKey( spep_5-4 + 90, ctbago, 167.8, 302.1 , 0 );
setEffMoveKey( spep_5-4 + 92, ctbago, 177.5, 302.3 , 0 );
setEffMoveKey( spep_5-4 + 94, ctbago, 168.8, 305.7 , 0 );
setEffMoveKey( spep_5-4 + 96, ctbago, 178.6, 305.8 , 0 );
setEffMoveKey( spep_5-4 + 98, ctbago, 174.4, 326 , 0 );
setEffMoveKey( spep_5-4 + 100, ctbago, 190.8, 343 , 0 );
setEffMoveKey( spep_5-4 + 102, ctbago, 185.1, 363.5 , 0 );

setEffScaleKey( spep_5-4 + 74, ctbago, 1, 1 );
setEffScaleKey( spep_5-4 + 76, ctbago, 1.62, 1.62 );
setEffScaleKey( spep_5-4 + 78, ctbago, 2.23, 2.23 );
setEffScaleKey( spep_5-4 + 80, ctbago, 2.25, 2.25 );
setEffScaleKey( spep_5-4 + 82, ctbago, 2.27, 2.27 );
setEffScaleKey( spep_5-4 + 84, ctbago, 2.29, 2.29 );
setEffScaleKey( spep_5-4 + 86, ctbago, 2.31, 2.31 );
setEffScaleKey( spep_5-4 + 88, ctbago, 2.33, 2.33 );
setEffScaleKey( spep_5-4 + 90, ctbago, 2.34, 2.34 );
setEffScaleKey( spep_5-4 + 92, ctbago, 2.36, 2.36 );
setEffScaleKey( spep_5-4 + 94, ctbago, 2.38, 2.38 );
setEffScaleKey( spep_5-4 + 96, ctbago, 2.4, 2.4 );
setEffScaleKey( spep_5-4 + 98, ctbago, 2.6, 2.6 );
setEffScaleKey( spep_5-4 + 100, ctbago, 2.8, 2.8 );
setEffScaleKey( spep_5-4 + 102, ctbago, 3, 3 );

setEffRotateKey( spep_5-4 + 74, ctbago, -35.6 );
setEffRotateKey( spep_5-4 + 102, ctbago, -35.6 );

setEffAlphaKey( spep_5-4 + 74, ctbago, 0 );
setEffAlphaKey( spep_5-4 + 75, ctbago, 255 );
setEffAlphaKey( spep_5-4 + 76, ctbago, 255 );
setEffAlphaKey( spep_5-4 + 96, ctbago, 255 );
setEffAlphaKey( spep_5-4 + 98, ctbago, 179 );
setEffAlphaKey( spep_5-4 + 100, ctbago, 102 );
setEffAlphaKey( spep_5-4 + 102, ctbago, 26 );

--SE
playSe(  spep_5,  1018);  --弾丸迫る
playSe(  spep_5+24,  1011);  --弾丸当たる
playSe(  spep_5+40,  43);  --瞬間移動
playSe(  spep_5+72,  1010);  --蹴り

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 120, 0, 0, 0, 0, 255 );  --薄い黒　背景

--次の準備
entryFade(spep_5+112,4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- whit_fe fade

--次の準備
spep_6=spep_5+120;

------------------------------------------------------
--ビルにぶつかる
------------------------------------------------------
--エフェクト
bill=entryEffectLife(spep_6,SP_10,100,0x80,-1,0,0,0);

setEffMoveKey( spep_6 + 0, bill, 0, 0 , 0 );
setEffMoveKey( spep_6 + 100, bill, 0, 0 , 0 );
setEffScaleKey(spep_6,bill,1.0,1.0);
setEffScaleKey(spep_6+100,bill,1.0,1.0);
setEffRotateKey(spep_6,bill,0);
setEffRotateKey(spep_6+100,bill,0);
setEffAlphaKey(spep_6,bill,255);
setEffAlphaKey(spep_6+100,bill,255);

--敵の動き
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 + 32, 1, 0 );
changeAnime( spep_6 + 0, 1, 5 );

setMoveKey( spep_6 + 0, 1, 114.6, -744.3 , 0 );
setMoveKey( spep_6 + 2, 1, 107.2, -700.7 , 0 );
setMoveKey( spep_6 + 4, 1, 98.3, -648.5 , 0 );
setMoveKey( spep_6 + 6, 1, 88.1, -587.5 , 0 );
setMoveKey( spep_6 + 8, 1, 76.5, -517.7 , 0 );
setMoveKey( spep_6 + 10, 1, 63.7, -439.3 , 0 );
setMoveKey( spep_6 + 12, 1, 49.5, -352.1 , 0 );
setMoveKey( spep_6 + 14, 1, 34.2, -256.2 , 0 );
setMoveKey( spep_6 + 16, 1, 17.8, -151.7 , 0 );
setMoveKey( spep_6 + 18, 1, 0.1, -38.4 , 0 );
setMoveKey( spep_6 + 20, 1, -0.1, -39.5 , 0 );
setMoveKey( spep_6 + 22, 1, -0.3, -40.4 , 0 );
setMoveKey( spep_6 + 24, 1, -0.6, -41.3 , 0 );
setMoveKey( spep_6 + 26, 1, -0.9, -42.2 , 0 );
setMoveKey( spep_6 + 28, 1, -1.1, -42.9 , 0 );
setMoveKey( spep_6 + 30, 1, -1.5, -43.5 , 0 );
setMoveKey( spep_6 + 32, 1, -1.8, -44.2 , 0 );

setScaleKey( spep_6 + 0, 1, 26.97, 26.97 );
setScaleKey( spep_6 + 2, 1, 25.45, 25.45 );
setScaleKey( spep_6 + 4, 1, 23.62, 23.62 );
setScaleKey( spep_6 + 6, 1, 21.49, 21.49 );
setScaleKey( spep_6 + 8, 1, 19.06, 19.06 );
setScaleKey( spep_6 + 10, 1, 16.32, 16.32 );
setScaleKey( spep_6 + 12, 1, 13.28, 13.28 );
setScaleKey( spep_6 + 14, 1, 9.93, 9.93 );
setScaleKey( spep_6 + 16, 1, 6.28, 6.28 );
setScaleKey( spep_6 + 18, 1, 2.33, 2.33 );
setScaleKey( spep_6 + 20, 1, 1.89, 1.89 );
setScaleKey( spep_6 + 22, 1, 1.5, 1.5 );
setScaleKey( spep_6 + 24, 1, 1.15, 1.15 );
setScaleKey( spep_6 + 26, 1, 0.84, 0.84 );
setScaleKey( spep_6 + 28, 1, 0.57, 0.57 );
setScaleKey( spep_6 + 30, 1, 0.36, 0.36 );
setScaleKey( spep_6 + 32, 1, 0.18, 0.18 );

setRotateKey( spep_6 + 0, 1, 13.3 );
setRotateKey( spep_6 + 6, 1, 13.3 );
setRotateKey( spep_6 + 8, 1, 13.4 );
setRotateKey( spep_6 + 14, 1, 13.4 );
setRotateKey( spep_6 + 16, 1, 13.5 );
setRotateKey( spep_6 + 22, 1, 13.5 );
setRotateKey( spep_6 + 24, 1, 13.4 );
setRotateKey( spep_6 + 32, 1, 13.4 );

--文字エントリー
ctdogo = entryEffectLife( spep_6 + 34,  10018, 38, 0x100, -1, 0, 104, 386.1 );--ドゴォンッ

setEffMoveKey( spep_6 + 34, ctdogo, 104, 386.1 , 0 );
setEffMoveKey( spep_6 + 36, ctdogo, 111.4, 398.7 , 0 );
setEffMoveKey( spep_6 + 38, ctdogo, 111.8, 379.2 , 0 );
setEffMoveKey( spep_6 + 40, ctdogo, 104, 386.1 , 0 );
setEffMoveKey( spep_6 + 42, ctdogo, 104, 386.1 , 0 );
setEffMoveKey( spep_6 + 44, ctdogo, 109.6, 395.6 , 0 );
setEffMoveKey( spep_6 + 46, ctdogo, 110.9, 380 , 0 );
setEffMoveKey( spep_6 + 48, ctdogo, 104, 386.1 , 0 );
setEffMoveKey( spep_6 + 50, ctdogo, 109.6, 395.6 , 0 );
setEffMoveKey( spep_6 + 52, ctdogo, 110.9, 380 , 0 );
setEffMoveKey( spep_6 + 54, ctdogo, 104, 386.1 , 0 );
setEffMoveKey( spep_6 + 56, ctdogo, 109.6, 395.6 , 0 );
setEffMoveKey( spep_6 + 58, ctdogo, 110.9, 380 , 0 );
setEffMoveKey( spep_6 + 60, ctdogo, 104, 386.1 , 0 );
setEffMoveKey( spep_6 + 62, ctdogo, 104, 386.1 , 0 );
setEffMoveKey( spep_6 + 64, ctdogo, 109.6, 395.6 , 0 );
setEffMoveKey( spep_6 + 66, ctdogo, 110.9, 380 , 0 );
setEffMoveKey( spep_6 + 68, ctdogo, 104, 386.1 , 0 );
setEffMoveKey( spep_6 + 70, ctdogo, 109.6, 395.6 , 0 );

setEffScaleKey( spep_6 + 34, ctdogo, 5.3, 5.3 );
setEffScaleKey( spep_6 + 36, ctdogo, 4.62, 4.62 );
setEffScaleKey( spep_6 + 38, ctdogo, 3.94, 3.94 );
setEffScaleKey( spep_6 + 40, ctdogo, 3.26, 3.26 );
setEffScaleKey( spep_6 + 42, ctdogo, 3.48, 3.48 );
setEffScaleKey( spep_6 + 70, ctdogo, 3.48, 3.48 );

setEffRotateKey( spep_6 + 34, ctdogo, 12 );
setEffRotateKey( spep_6 + 70, ctdogo, 12 );

setEffAlphaKey( spep_6 + 34, ctdogo, 77 );
setEffAlphaKey( spep_6 + 36, ctdogo, 136 );
setEffAlphaKey( spep_6 + 38, ctdogo, 196 );
setEffAlphaKey( spep_6 + 40, ctdogo, 255 );
setEffAlphaKey( spep_6 + 62, ctdogo, 255 );
setEffAlphaKey( spep_6 + 64, ctdogo, 204 );
setEffAlphaKey( spep_6 + 66, ctdogo, 153 );
setEffAlphaKey( spep_6 + 68, ctdogo, 102 );
setEffAlphaKey( spep_6 + 70, ctdogo, 51 );
setEffAlphaKey( spep_6 + 72, ctdogo, 0 );


--集中線
shuchusen5 = entryEffectLife( spep_6 + 34,  906, 64, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_6 + 34, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_6 + 98, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_6 + 34, shuchusen5, 1.27, 1.5 );
setEffScaleKey( spep_6 + 98, shuchusen5, 1.27, 1.5 );

setEffRotateKey( spep_6 + 34, shuchusen5, 0 );
setEffRotateKey( spep_6 + 98, shuchusen5, 0 );

setEffAlphaKey( spep_6 + 34, shuchusen5, 255 );
setEffAlphaKey( spep_6 + 98, shuchusen5, 255 );


--SE
playSe(  spep_6,  8);  --吹き飛ぶ敵
playSe(  spep_6+34,  1023);  --ビルに直撃

--次の準備
entryFade(spep_6+28,2, 4, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- whit_fe fade
entryFade(spep_6+92,4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- whit_fe fade

--次の準備
spep_7=spep_6+100;

------------------------------------------------------
--ポチッとな
------------------------------------------------------
--エフェクト
poti=entryEffectLife(spep_7,SP_11,160,0x80,-1,0,0,0);

setEffMoveKey( spep_7 + 0, poti, 0, 0 , 0 );
setEffMoveKey( spep_7 + 160, poti, 0, 0 , 0 );
setEffScaleKey(spep_7,poti,1.0,1.0);
setEffScaleKey(spep_7+160,poti,1.0,1.0);
setEffRotateKey(spep_7,poti,0);
setEffRotateKey(spep_7+160,poti,0);
setEffAlphaKey(spep_7,poti,255);
setEffAlphaKey(spep_7+160,poti,255);

--顔カットイン
speff=entryEffect(spep_7+14,1504,0x100,-1,0,0,0);  --カットイン(顔)
setEffReplaceTexture(speff,3,2);  --カットイン差し替え
speff1=entryEffect(spep_7+14,1505,0x100,-1,0,0,0);  --カットイン(セリフ)
setEffReplaceTexture(speff1,4,5);  --セリフカットイン差し替え

--ゴゴゴ
ctgogo=entryEffectLife(spep_7+26,190006,72,0x100,-1,150,520);--ゴゴゴ

setEffMoveKey(spep_7+26,ctgogo,150,520,0);
setEffMoveKey(spep_7+98,ctgogo,150,520,0);

setEffScaleKey(spep_7+26, ctgogo, 0.7, 0.7);
setEffScaleKey(spep_7+98, ctgogo, 0.7, 0.7);

setEffAlphaKey( spep_7 +26, ctgogo, 0 );
setEffAlphaKey( spep_7 + 27, ctgogo, 255 );
setEffAlphaKey( spep_7 + 28, ctgogo, 255 );
setEffAlphaKey( spep_7 + 98, ctgogo, 255 );

setEffRotateKey(spep_7+26,ctgogo,0);
setEffRotateKey(spep_7+98,ctgogo,0);

--集中線
shuchusen6 = entryEffectLife( spep_7 ,  906, 160, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_7 , shuchusen6, 0, 0 , 0 );
setEffMoveKey( spep_7 + 160, shuchusen6, 0, 0 , 0 );

setEffScaleKey( spep_7 , shuchusen6, 1.27, 1.5 );
setEffScaleKey( spep_7 + 160, shuchusen6, 1.27, 1.5 );

setEffRotateKey( spep_7 , shuchusen6, 0 );
setEffRotateKey( spep_7 + 160, shuchusen6, 0 );

setEffAlphaKey( spep_7 , shuchusen6, 0 );
setEffAlphaKey( spep_7 +26, shuchusen6, 0 );
setEffAlphaKey( spep_7 + 27, shuchusen6, 255 );
setEffAlphaKey( spep_7 + 28, shuchusen6, 255 );
setEffAlphaKey( spep_7 + 98, shuchusen6, 255 );
setEffAlphaKey( spep_7 + 99, shuchusen6, 0 );
setEffAlphaKey( spep_7 + 100, shuchusen6, 0 );
setEffAlphaKey( spep_7 + 148, shuchusen6, 0 );
setEffAlphaKey( spep_7 + 149, shuchusen6, 0 );
setEffAlphaKey( spep_7 + 150, shuchusen6, 255 );
setEffAlphaKey( spep_7 + 160, shuchusen6, 255 );

--SE
playSe(  spep_7+26,  SE_04);  --ゴゴゴ
playSe(  spep_7+154,  22);  --スイッチ押す

--次の準備
entryFade(spep_7+152,4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- whit_fe fade

--次の準備
spep_8=spep_7+160;
------------------------------------------------------
--爆発
------------------------------------------------------

--エフェクト
poti=entryEffect(spep_8,SP_12,0x100,-1,0,0,0);

setEffMoveKey( spep_8 + 0, poti, 0, 0 , 0 );
setEffMoveKey( spep_8 + 180, poti, 0, 0 , 0 );
setEffScaleKey(spep_8,poti,1.0,1.0);
setEffScaleKey(spep_8+180,poti,1.0,1.0);
setEffRotateKey(spep_8,poti,0);
setEffRotateKey(spep_8+180,poti,0);
setEffAlphaKey(spep_8,poti,255);
setEffAlphaKey(spep_8+180,poti,255);

--集中線
shuchusen7 = entryEffectLife( spep_8 ,  906, 180, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_8 , shuchusen7, 0, 0 , 0 );
setEffMoveKey( spep_8 + 180, shuchusen7, 0, 0 , 0 );

setEffScaleKey( spep_8 , shuchusen7, 1.27, 1.5 );
setEffScaleKey( spep_8 + 180, shuchusen7, 1.27, 1.5 );

setEffRotateKey( spep_8 , shuchusen7, 0 );
setEffRotateKey( spep_8 + 180, shuchusen7, 0 );

setEffAlphaKey( spep_8 , shuchusen7, 255 );
setEffAlphaKey( spep_8 + 180, shuchusen7, 255 );


--SE
playSe(  spep_8,  1024);  --爆発
SE1 = playSe(  spep_8+64,  1044);  --崩れるビル
stopSe(  spep_8+168,  SE1,  0);

-- ダメージ表示
dealDamage(spep_8+66);
entryFade( spep_8+160, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_8+170);


else 

------------------------------------------------------
--敵側
------------------------------------------------------
------------------------------------------------------
--突進
------------------------------------------------------
spep_0=0;

--エフェクト
rush=entryEffectLife(spep_0,SP_01x,90,0x100,-1,0,0,0);

setEffMoveKey( spep_0 + 0, rush, 0, 0 , 0 );
setEffMoveKey( spep_0 + 90, rush, 0, 0 , 0 );
setEffScaleKey(spep_0,rush,-1.0,1.0);
setEffScaleKey(spep_0+90,rush,-1.0,1.0);
setEffRotateKey(spep_0,rush,0);
setEffRotateKey(spep_0+90,rush,0);
setEffAlphaKey(spep_0,rush,255);
setEffAlphaKey(spep_0+90,rush,255);

--集中線
shuchusen1 = entryEffectLife( spep_0 + 0,  906, 90, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 90, shuchusen1, 0, 0 , 0);

setEffScaleKey( spep_0 + 0, shuchusen1, 1.0, 1.0 );
setEffScaleKey( spep_0 + 90, shuchusen1, 1.0, 1.0 );

setEffRotateKey( spep_0 + 0, shuchusen1, 180 );
setEffRotateKey( spep_0 + 90, shuchusen1, 180 );

setEffAlphaKey(spep_0,shuchusen1,255);
setEffAlphaKey(spep_0+90,shuchusen1,255);

--SE
playSe(  spep_0,  9);  --突進

--次の準備
entryFade(spep_0+82,4, 10, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- whit_fe fade

--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0+50 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    
    pauseAll( SP_dodge, 67);
    
    --キャラクターの固定
    --setMoveKey(SP_dodge, 1,370.3, 277 , 0 );
    --setScaleKey(SP_dodge , 1, 0.65, 0.65);
    --setRotateKey(SP_dodge,   1, 0 );
    
    --キャラクターの固定
    --setMoveKey(SP_dodge, 1,370.3, 277 , 0 );
    --setScaleKey(SP_dodge , 1, 0.65, 0.65);
    --setRotateKey(SP_dodge,   1, 0 );
    
    
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
    --setMoveKey(SP_dodge+9, 1, 1000 , 1000, 0);
    --setMoveKey(SP_dodge+10, 1, 1000 , 1000, 0);
    
    
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



--次の準備
spep_1=spep_0+90;

-------------------------------------
--カードカットイン(90F)
--------------------------------------

playSe(spep_1,SE_05);
shuchusen=entryEffectLife(spep_1,906,90,0x100,-1,0,0,0);   -- 集中線
setEffScaleKey(spep_1,shuchusen,1.6,1.6);

speff2=entryEffect(spep_1,1507,0x80,-1,0,0,0);   -- カード
setEffReplaceTexture(speff2,1,1);
setEffReplaceTexture(speff2,2,0);-- カード差し替え
setEffReplaceTexture(speff2,5,4);-- 技名テクスチャ差し替え

-- ** エフェクト等 ** --
entryFade(spep_1+84,4,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_2=spep_1+94;

------------------------------------------------------
--スコープ
------------------------------------------------------
--エフェクト(前)
scope_f=entryEffectLife(spep_2,SP_02x,130,0x100,-1,0,0,0);

setEffMoveKey( spep_2 + 0, scope_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 130, scope_f, 0, 0 , 0 );
setEffScaleKey(spep_2,scope_f,1.0,1.0);
setEffScaleKey(spep_2+130,scope_f,1.0,1.0);
setEffRotateKey(spep_2,scope_f,0);
setEffRotateKey(spep_2+130,scope_f,0);
setEffAlphaKey(spep_2,scope_f,255);
setEffAlphaKey(spep_2+130,scope_f,255);

--エフェクト(後)
scope_b=entryEffectLife(spep_2,SP_03x,130,0x80,-1,0,0,0);

setEffMoveKey( spep_2 + 0, scope_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 130, scope_b, 0, 0 , 0 );
setEffScaleKey(spep_2,scope_b,1.0,1.0);
setEffScaleKey(spep_2+130,scope_b,1.0,1.0);
setEffRotateKey(spep_2,scope_b,0);
setEffRotateKey(spep_2+130,scope_b,0);
setEffAlphaKey(spep_2,scope_b,255);
setEffAlphaKey(spep_2+130,scope_b,255);

--敵の動き
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 128, 1, 0 );

changeAnime( spep_2 + 0, 1, 101 );
changeAnime( spep_2-3 + 26, 1, 106 );
changeAnime( spep_2-3 + 46, 1, 108 );
changeAnime( spep_2-3 + 60, 1, 106 );

setMoveKey( spep_2 + 0, 1, 127, 57 , 0 );
setMoveKey( spep_2-3 + 2, 1, 127, 58.5 , 0 );
setMoveKey( spep_2-3 + 4, 1, 127, 60 , 0 );
setMoveKey( spep_2-3 + 6, 1, 127, 61.5 , 0 );
setMoveKey( spep_2-3 + 8, 1, 127, 63 , 0 );
setMoveKey( spep_2-3 + 10, 1, 127, 64.5 , 0 );
setMoveKey( spep_2-3 + 12, 1, 127, 66 , 0 );
setMoveKey( spep_2-3 + 14, 1, 127, 67.5 , 0 );
setMoveKey( spep_2-3 + 16, 1, 127, 69 , 0 );
setMoveKey( spep_2-3 + 18, 1, 124.1, 64.3 , 0 );
setMoveKey( spep_2-3 + 20, 1, 121.2, 59.6 , 0 );
setMoveKey( spep_2-3 + 22, 1, 118.3, 54.9 , 0 );
setMoveKey( spep_2-3 + 25, 1, 115.4, 50.2 , 0 );
setMoveKey( spep_2-3 + 26, 1, 91.9, 55.2 , 0 );
setMoveKey( spep_2-3 + 28, 1, 98.1, 61.1 , 0 );
setMoveKey( spep_2-3 + 30, 1, 111.8, 56.5 , 0 );
setMoveKey( spep_2-3 + 32, 1, 112.4, 56.9 , 0 );
setMoveKey( spep_2-3 + 34, 1, 108.5, 51.3 , 0 );
setMoveKey( spep_2-3 + 36, 1, 103.2, 50.9 , 0 );
setMoveKey( spep_2-3 + 38, 1, 105.3, 40 , 0 );
setMoveKey( spep_2-3 + 40, 1, 106.8, 48.4 , 0 );
setMoveKey( spep_2-3 + 42, 1, 103.8, 50.6 , 0 );
setMoveKey( spep_2-3 + 45, 1, 99.3, 58.1 , 0 );
setMoveKey( spep_2-3 + 46, 1, 99.9, 30.2 , 0 );
setMoveKey( spep_2-3 + 48, 1, 100.4, 36.4 , 0 );
setMoveKey( spep_2-3 + 50, 1, 103.8, 34.3 , 0 );
setMoveKey( spep_2-3 + 52, 1, 104.9, 40.5 , 0 );
setMoveKey( spep_2-3 + 54, 1, 101.2, 43 , 0 );
setMoveKey( spep_2-3 + 56, 1, 98.3, 45.7 , 0 );
setMoveKey( spep_2-3 + 59, 1, 98.2, 40.1 , 0 );
setMoveKey( spep_2-3 + 60, 1, 56.8, 73.8 , 0 );
setMoveKey( spep_2-3 + 62, 1, 47.1, 79 , 0 );
setMoveKey( spep_2-3 + 64, 1, 42.5, 72.4 , 0 );
setMoveKey( spep_2-3 + 66, 1, 38.9, 77.1 , 0 );
setMoveKey( spep_2-3 + 68, 1, 29.4, 76.9 , 0 );
setMoveKey( spep_2-3 + 70, 1, 19.9, 82 , 0 );
setMoveKey( spep_2-3 + 72, 1, 15.3, 75.4 , 0 );
setMoveKey( spep_2-3 + 74, 1, 11.6, 80.1 , 0 );
setMoveKey( spep_2-3 + 76, 1, 2.3, 79.8 , 0 );
setMoveKey( spep_2-3 + 78, 1, -2.7, 80.1 , 0 );
setMoveKey( spep_2-3 + 80, 1, -7.5, 80.4 , 0 );
setMoveKey( spep_2-3 + 82, 1, -12.3, 80.7 , 0 );
setMoveKey( spep_2-3 + 84, 1, -17.2, 81 , 0 );
setMoveKey( spep_2-3 + 86, 1, -22.1, 81.4 , 0 );
setMoveKey( spep_2-3 + 88, 1, -26.9, 81.7 , 0 );
setMoveKey( spep_2-3 + 90, 1, -31.8, 82 , 0 );
setMoveKey( spep_2-3 + 92, 1, -36.6, 82.3 , 0 );
setMoveKey( spep_2-3 + 94, 1, -41.5, 82.6 , 0 );
setMoveKey( spep_2-3 + 96, 1, -46.4, 82.9 , 0 );
setMoveKey( spep_2-3 + 98, 1, -51.2, 83.2 , 0 );
setMoveKey( spep_2-3 + 100, 1, -56.1, 83.5 , 0 );
setMoveKey( spep_2-3 + 102, 1, -63, 85 , 0 );
setMoveKey( spep_2-3 + 104, 1, -71, 86.7 , 0 );
setMoveKey( spep_2-3 + 106, 1, -79.1, 88.4 , 0 );
setMoveKey( spep_2-3 + 108, 1, -87.6, 90.1 , 0 );
setMoveKey( spep_2-3 + 110, 1, -97.1, 92.2 , 0 );
setMoveKey( spep_2-3 + 112, 1, -103.1, 93.4 , 0 );
setMoveKey( spep_2-3 + 114, 1, -109.6, 94.8 , 0 );
setMoveKey( spep_2-3 + 116, 1, -115.9, 96 , 0 );
setMoveKey( spep_2-3 + 118, 1, -122.2, 97.3 , 0 );
setMoveKey( spep_2-3 + 120, 1, -124.1, 97.9 , 0 );
setMoveKey( spep_2-3 + 122, 1, -125.4, 98.1 , 0 );
setMoveKey( spep_2-3 + 124, 1, -127.5, 98.5 , 0 );
setMoveKey( spep_2-3 + 126, 1, -129.4, 99 , 0 );
setMoveKey( spep_2 + 128, 1, -130.8, 99.3 , 0 );

setScaleKey( spep_2 + 0, 1, 1, 1 );
setScaleKey( spep_2-3 + 100, 1, 1, 1 );
setScaleKey( spep_2-3 + 102, 1, 1.09, 1.09 );
setScaleKey( spep_2-3 + 104, 1, 1.19, 1.19 );
setScaleKey( spep_2-3 + 106, 1, 1.28, 1.28 );
setScaleKey( spep_2-3 + 108, 1, 1.37, 1.37 );
setScaleKey( spep_2-3 + 110, 1, 1.47, 1.47 );
setScaleKey( spep_2-3 + 112, 1, 1.56, 1.56 );
setScaleKey( spep_2-3 + 114, 1, 1.66, 1.66 );
setScaleKey( spep_2-3 + 116, 1, 1.75, 1.75 );
setScaleKey( spep_2-3 + 118, 1, 1.84, 1.84 );
setScaleKey( spep_2-3 + 120, 1, 1.86, 1.86 );
setScaleKey( spep_2-3 + 122, 1, 1.87, 1.87 );
setScaleKey( spep_2-3 + 124, 1, 1.89, 1.89 );
setScaleKey( spep_2-3 + 126, 1, 1.91, 1.91 );
setScaleKey( spep_2 + 128, 1, 1.92, 1.92 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2-3 + 25, 1, 0 );
setRotateKey( spep_2-3 + 26, 1, -53.4 );
setRotateKey( spep_2-3 + 28, 1, -53.5 );
setRotateKey( spep_2-3 + 45, 1, -53.5 );
setRotateKey( spep_2-3 + 46, 1, 0 );
setRotateKey( spep_2-3 + 59, 1, 0 );
setRotateKey( spep_2-3 + 60, 1, -41 );
setRotateKey( spep_2-3 + 74, 1, -41 );
setRotateKey( spep_2-3 + 76, 1, -53 );
setRotateKey( spep_2 + 128, 1, -53 );

--集中線
--shuchusen2 = entryEffectLife( spep_2 + 0,  906, 130, 0x100, -1, 0, 0, 0 );

--setEffMoveKey( spep_2 + 0, shuchusen2, 0, 0 , 0 );
--setEffMoveKey( spep_2 + 130, shuchusen2, 0, 0 , 0);

--setEffScaleKey( spep_2 + 0, shuchusen2, 1.0, 1.0 );
--setEffScaleKey( spep_2 + 130, shuchusen2, 1.0, 1.0 );

--setEffRotateKey( spep_2 + 0, shuchusen2, 180 );
--setEffRotateKey( spep_2 + 130, shuchusen2, 180 );

--setEffAlphaKey(spep_2,shuchusen2,255);
--setEffAlphaKey(spep_2+130,shuchusen2,255);

--SE
changeAnime( spep_2 + 0, 1, 101 );
changeAnime( spep_2 + 26, 1, 106 );
changeAnime( spep_2 + 46, 1, 108 );
changeAnime( spep_2 + 60, 1, 106 );
playSe(  spep_2,  1019);  --スコープ
playSe(  spep_2+24,  1000);  --パンチ
playSe(  spep_2+44,  1007);  --パンチ
playSe(  spep_2+58,  1001);  --キック
playSe(  spep_2+98,  44);  --斬りかかる寸前


--次の準備
entryFade(spep_2+122,4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- whit_fe fade

--次の準備
spep_3=spep_2+130;

------------------------------------------------------
--斬撃
------------------------------------------------------
--エフェクト(前)
cut_f=entryEffectLife(spep_3,SP_04x,140,0x100,-1,0,0,0);

setEffMoveKey( spep_3 + 0, cut_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 140, cut_f, 0, 0 , 0 );
setEffScaleKey(spep_3,cut_f,-1.0,1.0);
setEffScaleKey(spep_3+140,cut_f,-1.0,1.0);
setEffRotateKey(spep_3,cut_f,0);
setEffRotateKey(spep_3+140,cut_f,0);
setEffAlphaKey(spep_3,cut_f,255);
setEffAlphaKey(spep_3+140,cut_f,255);

--エフェクト(後)
cut_b=entryEffectLife(spep_3,SP_05x,140,0x80,-1,0,0,0);

setEffMoveKey( spep_3 + 0, cut_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 140, cut_b, 0, 0 , 0 );
setEffScaleKey(spep_3,cut_b,-1.0,1.0);
setEffScaleKey(spep_3+140,cut_b,-1.0,1.0);
setEffRotateKey(spep_3,cut_b,0);
setEffRotateKey(spep_3+140,cut_b,0);
setEffAlphaKey(spep_3,cut_b,255);
setEffAlphaKey(spep_3+140,cut_b,255);


--敵の動き
setDisp( spep_3 + 64, 1, 1 );
setDisp( spep_3 + 98, 1, 0 );

changeAnime( spep_3 + 64, 1, 6 );

setMoveKey( spep_3 + 64, 1, -200.9, 388.6 , 0 );
setMoveKey( spep_3 + 66, 1, -207.7, 405.6 , 0 );
setMoveKey( spep_3 + 68, 1, -206.6, 438.4 , 0 );
setMoveKey( spep_3 + 70, 1, -233.4, 423.4 , 0 );
setMoveKey( spep_3 + 72, 1, -204.3, 464.2 , 0 );
setMoveKey( spep_3 + 74, 1, -249.1, 481.2 , 0 );
setMoveKey( spep_3 + 76, 1, -233.9, 506.2 , 0 );
setMoveKey( spep_3 + 78, 1, -260.8, 491 , 0 );
setMoveKey( spep_3 + 80, 1, -231.6, 532 , 0 );
setMoveKey( spep_3 + 82, 1, -276.5, 548.8 , 0 );
setMoveKey( spep_3 + 84, 1, -261.3, 573.8 , 0 );
setMoveKey( spep_3 + 86, 1, -288.2, 558.6 , 0 );
setMoveKey( spep_3 + 88, 1, -259, 599.6 , 0 );
setMoveKey( spep_3 + 90, 1, -303.8, 616.5 , 0 );
setMoveKey( spep_3 + 92, 1, -288.7, 641.4 , 0 );
setMoveKey( spep_3 + 94, 1, -315.5, 626.4 , 0 );
setMoveKey( spep_3 + 96, 1, -286.4, 667.2 , 0 );
setMoveKey( spep_3 + 98, 1, -331.2, 684.2 , 0 );

setScaleKey( spep_3 + 64, 1, 1, 1 );
setScaleKey( spep_3 + 98, 1, 1, 1 );



setRotateKey( spep_3 + 64, 1, 31.6 );
setRotateKey( spep_3 + 66, 1, 31.2 );
setRotateKey( spep_3 + 68, 1, 30.6 );
setRotateKey( spep_3 + 70, 1, 30 );
setRotateKey( spep_3 + 72, 1, 29.4 );
setRotateKey( spep_3 + 74, 1, 28.8 );
setRotateKey( spep_3 + 76, 1, 28.2 );
setRotateKey( spep_3 + 78, 1, 27.6 );
setRotateKey( spep_3 + 80, 1, 27 );
setRotateKey( spep_3 + 82, 1, 26.4 );
setRotateKey( spep_3 + 84, 1, 25.8 );
setRotateKey( spep_3 + 86, 1, 25.2 );
setRotateKey( spep_3 + 88, 1, 24.7 );
setRotateKey( spep_3 + 90, 1, 24.1 );
setRotateKey( spep_3 + 92, 1, 23.5 );
setRotateKey( spep_3 + 94, 1, 22.9 );
setRotateKey( spep_3 + 96, 1, 22.3 );
setRotateKey( spep_3 + 98, 1, 21.7 );

--SE
playSe(  spep_3+10,  1032);  --斬撃
playSe(  spep_3+58,  1049);  --爆破

--次の準備
entryFade(spep_3+132,4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- whit_fe fade

--次の準備
spep_4=spep_3+140;
------------------------------------------------------
--マイちゃんが撃つ
------------------------------------------------------
--エフェクト
utu_b=entryEffectLife(spep_4,SP_06x,60,0x80,-1,0,0,0);

setEffMoveKey( spep_4 + 0, utu_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 60, utu_b, 0, 0 , 0 );
setEffScaleKey(spep_4,utu_b,1.0,1.0);
setEffScaleKey(spep_4+60,utu_b,1.0,1.0);
setEffRotateKey(spep_4,utu_b,0);
setEffRotateKey(spep_4+60,utu_b,0);
setEffAlphaKey(spep_4,utu_b,255);
setEffAlphaKey(spep_4+60,utu_b,255);


--集中線
shuchusen3 = entryEffectLife( spep_4-3 + 14,  906, 44, 0x100, -1, -100, 100, 0 );

setEffMoveKey( spep_4-3 + 14, shuchusen3, -100, 100 , 0 );
setEffMoveKey( spep_4-3 + 58, shuchusen3, -100, 100 , 0 );

setEffScaleKey( spep_4-3 + 14, shuchusen3, 1.6, 1.6 );
setEffScaleKey( spep_4-3 + 58, shuchusen3, 1.6, 1.6 );

setEffRotateKey( spep_4-3 + 14, shuchusen3, 0 );
setEffRotateKey( spep_4-3 + 58, shuchusen3, 0 );

setEffAlphaKey( spep_4-3 + 14, shuchusen3, 255 );
setEffAlphaKey( spep_4-3 + 58, shuchusen3, 255 );

--SE
playSe(  spep_4,  8);  --マイちゃん現る
playSe(  spep_4+14,  1008);  --スナイパー

--次の準備
entryFade(spep_4+52,4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- whit_fe fade

--次の準備
spep_5=spep_4+60;
------------------------------------------------------
--弾丸があったてからの暴行
------------------------------------------------------
--エフェクト(前)
hit1_f=entryEffectLife(spep_5,SP_07x,120,0x100,-1,0,0,0);

setEffMoveKey( spep_5 + 0, hit1_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 120, hit1_f, 0, 0 , 0 );
setEffScaleKey(spep_5,hit1_f,1.0,1.0);
setEffScaleKey(spep_5+120,hit1_f,1.0,1.0);
setEffRotateKey(spep_5,hit1_f,0);
setEffRotateKey(spep_5+120,hit1_f,0);
setEffAlphaKey(spep_5,hit1_f,255);
setEffAlphaKey(spep_5+120,hit1_f,255);

--エフェクト(背景)
Bg=entryEffectLife(spep_5,SP_09x,120,0x80,-1,0,0,0);

setEffMoveKey( spep_5 + 0, Bg, 0, 0 , 0 );
setEffMoveKey( spep_5 + 120, Bg, 0, 0 , 0 );
setEffScaleKey(spep_5,Bg,1.0,1.0);
setEffScaleKey(spep_5+120,Bg,1.0,1.0);
setEffRotateKey(spep_5,Bg,0);
setEffRotateKey(spep_5+120,Bg,0);
setEffAlphaKey(spep_5,Bg,160);
setEffAlphaKey(spep_5+120,Bg,160);

--流線(斜め上)
ryusen1 = entryEffectLife( spep_5 + 0,  921, 24, 0x80, -1, 0, -203, -29 );

setEffMoveKey( spep_5 + 0, ryusen1, -203, -29 , 0 );
setEffMoveKey( spep_5 + 24, ryusen1, -203, -29 , 0 );

setEffScaleKey( spep_5 + 0, ryusen1, 2.12, 1.51 );
setEffScaleKey( spep_5 + 24, ryusen1, 2.12, 1.51 );

setEffRotateKey( spep_5 + 0, ryusen1, -30.6 );
setEffRotateKey( spep_5 + 24, ryusen1, -30.6 )--28;

setEffAlphaKey( spep_5 + 0, ryusen1, 255 );
setEffAlphaKey( spep_5 + 24, ryusen1, 255 );

--集中線
shuchusen4 = entryEffectLife( spep_5 + 24,  906, 54, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_5 + 0, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_5 + 78, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, shuchusen4, 1.27, 1.5 );
setEffScaleKey( spep_5 + 78, shuchusen4, 1.27, 1.5 );

setEffRotateKey( spep_5 + 0, shuchusen4, 0 );
setEffRotateKey( spep_5 + 78, shuchusen4, 0 );

setEffAlphaKey( spep_5 + 0, shuchusen4, 0 );
setEffAlphaKey( spep_5 + 24, shuchusen4, 0 );
setEffAlphaKey( spep_5 + 25, shuchusen4, 255 );
setEffAlphaKey( spep_5 + 26, shuchusen4, 255 );
setEffAlphaKey( spep_5 + 34, shuchusen4, 255 );
setEffAlphaKey( spep_5 + 35, shuchusen4, 255 );
setEffAlphaKey( spep_5 + 36, shuchusen4, 0 );
setEffAlphaKey( spep_5 + 70, shuchusen4, 0 );
setEffAlphaKey( spep_5 + 71, shuchusen4, 255 );
setEffAlphaKey( spep_5 + 72, shuchusen4, 255 );
setEffAlphaKey( spep_5 + 78, shuchusen4, 255 );

--流線(斜め下)
ryusen2 = entryEffectLife( spep_5 + 0,  914, 70, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_5 + 0, ryusen2, 0, 0, 0 );
setEffMoveKey( spep_5 + 70, ryusen2, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, ryusen2, 4.21, 1.32 );
setEffScaleKey( spep_5 + 70, ryusen2, 4.21, 1.32 );

setEffRotateKey( spep_5 + 0, ryusen2, -76.5 );
setEffRotateKey( spep_5 + 70, ryusen2, -76.5 );

setEffAlphaKey( spep_5 + 0, ryusen2, 0 );
setEffAlphaKey( spep_5 + 34, ryusen2, 0 );
setEffAlphaKey( spep_5 + 35, ryusen2, 0 );
setEffAlphaKey( spep_5 + 36, ryusen2, 255 );
setEffAlphaKey( spep_5 + 70, ryusen2, 255 );
--setEffAlphaKey( spep_5 + 71, ryusen2, 0 );
--setEffAlphaKey( spep_5 + 72, ryusen2, 0 );

--流線(手前)
ryusen3 = entryEffectLife( spep_5 + 0,  924, 118, 0x80, -1, 100, -50, 0 );

setEffMoveKey( spep_5 + 0, ryusen3, 100, -50 , 0 )
setEffMoveKey( spep_5 +118 , ryusen3, 100, -50 , 0 );

setEffScaleKey( spep_5 + 0, ryusen3, 1.01, 1.32 );
setEffScaleKey( spep_5 + 118, ryusen3, 1.01, 1.32 );

setEffRotateKey( spep_5 + 0, ryusen3, -129 );
setEffRotateKey( spep_5 + 118, ryusen3,-129 );

setEffAlphaKey( spep_5 + 0, ryusen3, 0 );
setEffAlphaKey( spep_5 + 78, ryusen3, 0 );
setEffAlphaKey( spep_5 + 79, ryusen3, 255 )
setEffAlphaKey( spep_5 + 80, ryusen3, 255 )
setEffAlphaKey( spep_5 + 118, ryusen3, 255 );

--エフェクト(後)
hit1_b=entryEffectLife(spep_5,SP_08x,120,0x80,-1,0,0,0);

setEffMoveKey( spep_5 + 0, hit1_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 120, hit1_b, 0, 0 , 0 );
setEffScaleKey(spep_5,hit1_b,1.0,1.0);
setEffScaleKey(spep_5+120,hit1_b,1.0,1.0);
setEffRotateKey(spep_5,hit1_b,0);
setEffRotateKey(spep_5+120,hit1_b,0);
setEffAlphaKey(spep_5,hit1_b,255);
setEffAlphaKey(spep_5+120,hit1_b,255);

--敵の動き
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 118, 1, 0 );

changeAnime( spep_5 + 0, 1, 106 );
changeAnime( spep_5-3 + 26, 1, 108 );
changeAnime( spep_5-3 + 74, 1, 107 );

setMoveKey( spep_5-3 + 0, 1, 306.8, 341.1 , 0 );
setMoveKey( spep_5-3 + 2, 1, 287.5, 321.1 , 0 );
setMoveKey( spep_5-3 + 4, 1, 267.2, 295.9 , 0 );
setMoveKey( spep_5-3 + 6, 1, 250.5, 274.8 , 0 );
setMoveKey( spep_5-3 + 8, 1, 229.5, 253 , 0 );
setMoveKey( spep_5-3 + 10, 1, 209.5, 235 , 0 );
setMoveKey( spep_5-3 + 12, 1, 189.4, 206.8 , 0 );
setMoveKey( spep_5-3 + 14, 1, 174.2, 187.2 , 0 );
setMoveKey( spep_5-3 + 16, 1, 152.2, 164.9 , 0 );
setMoveKey( spep_5-3 + 18, 1, 131.1, 148.8 , 0 );
setMoveKey( spep_5-3 + 20, 1, 112, 117.5 , 0 );
setMoveKey( spep_5-3 + 22, 1, 97.9, 99.7 , 0 );
setMoveKey( spep_5-3 + 25, 1, 74.9, 77 , 0 );
setMoveKey( spep_5-3 + 26, 1, 100.5, 83.9 , 0 );
setMoveKey( spep_5-3 + 28, 1, 98.1, 87.8 , 0 );
setMoveKey( spep_5-3 + 30, 1, 104.6, 83.3 , 0 );
setMoveKey( spep_5-3 + 32, 1, 107.1, 89.5 , 0 );
setMoveKey( spep_5-3 + 34, 1, 106, 88.4 , 0 );
setMoveKey( spep_5-3 + 36, 1, 103.7, 92.4 , 0 );
setMoveKey( spep_5-3 + 38, 1, 110.1, 87.8 , 0 );
setMoveKey( spep_5-3 + 40, 1, 112.6, 94 , 0 );
setMoveKey( spep_5-3 + 42, 1, 111.5, 92.9 , 0 );
setMoveKey( spep_5-3 + 44, 1, 109.2, 96.9 , 0 );
setMoveKey( spep_5-3 + 46, 1, 115.7, 92.3 , 0 );
setMoveKey( spep_5-3 + 48, 1, 118.2, 98.5 , 0 );
setMoveKey( spep_5-3 + 50, 1, 117.1, 97.5 , 0 );
setMoveKey( spep_5-3 + 52, 1, 114.8, 101.4 , 0 );
setMoveKey( spep_5-3 + 54, 1, 121.3, 96.8 , 0 );
setMoveKey( spep_5-3 + 56, 1, 123.8, 103.1 , 0 );
setMoveKey( spep_5-3 + 58, 1, 122.7, 102 , 0 );
setMoveKey( spep_5-3 + 60, 1, 120.4, 105.9 , 0 );
setMoveKey( spep_5-3 + 62, 1, 126.8, 101.3 , 0 );
setMoveKey( spep_5-3 + 64, 1, 129.3, 107.6 , 0 );
setMoveKey( spep_5-3 + 66, 1, 128.2, 106.5 , 0 );
setMoveKey( spep_5-3 + 68, 1, 125.9, 110.4 , 0 );
setMoveKey( spep_5-3 + 70, 1, 132.4, 105.9 , 0 );
setMoveKey( spep_5-3 + 73, 1, 134.9, 112.1 , 0 );
setMoveKey( spep_5-3 + 74, 1, 77, -37.1 , 0 );
setMoveKey( spep_5-3 + 76, 1, 89.4, -60.1 , 0 );
setMoveKey( spep_5-3 + 78, 1, 104.1, -102.2 , 0 );
setMoveKey( spep_5-3 + 80, 1, 110.1, -129.4 , 0 );
setMoveKey( spep_5-3 + 82, 1, 129.7, -156.4 , 0 );
setMoveKey( spep_5-3 + 84, 1, 143.3, -176 , 0 );
setMoveKey( spep_5-3 + 86, 1, 156, -223.9 , 0 );
setMoveKey( spep_5-3 + 88, 1, 159.9, -248.6 , 0 );
setMoveKey( spep_5-3 + 90, 1, 182.5, -275.7 , 0 );
setMoveKey( spep_5-3 + 92, 1, 198.1, -292.2 , 0 );
setMoveKey( spep_5-3 + 94, 1, 207.2, -345.5 , 0 );
setMoveKey( spep_5-3 + 96, 1, 209.6, -366.9 , 0 );
setMoveKey( spep_5-3 + 98, 1, 235.2, -394.9 , 0 );
setMoveKey( spep_5-3 + 100, 1, 253.9, -408.9 , 0 );
setMoveKey( spep_5-3 + 102, 1, 257.7, -466.7 , 0 );
setMoveKey( spep_5-3 + 104, 1, 259.5, -484.3 , 0 );
setMoveKey( spep_5-3 + 106, 1, 287.9, -514.3 , 0 );
setMoveKey( spep_5-3 + 108, 1, 310.4, -526.1 , 0 );
setMoveKey( spep_5-3 + 110, 1, 307.8, -587.6 , 0 );
setMoveKey( spep_5-3 + 112, 1, 309.7, -601 , 0 );
setMoveKey( spep_5-3 + 114, 1, 340.7, -633.6 , 0 );
setMoveKey( spep_5-3 + 116, 1, 367.6, -644.3 , 0 );
setMoveKey( spep_5 + 118, 1, 357.3, -707.8 , 0 );

a=0.3;

setScaleKey( spep_5-3 + 0, 1, 0.3, 0.3 );
setScaleKey( spep_5-3 + 2, 1, 0.4, 0.4 );
setScaleKey( spep_5-3 + 4, 1, 0.49, 0.49 );
setScaleKey( spep_5-3 + 6, 1, 0.59, 0.59 );
setScaleKey( spep_5-3 + 8, 1, 0.68, 0.68 );
setScaleKey( spep_5-3 + 10, 1, 0.78, 0.78 );
setScaleKey( spep_5-3 + 12, 1, 0.88, 0.88 );
setScaleKey( spep_5-3 + 14, 1, 0.97, 0.97 );
setScaleKey( spep_5-3 + 16, 1, 1.07, 1.07 );
setScaleKey( spep_5-3 + 18, 1, 1.16, 1.16 );
setScaleKey( spep_5-3 + 20, 1, 1.26, 1.26 );
setScaleKey( spep_5-3 + 22, 1, 1.36, 1.36 );
setScaleKey( spep_5-3 + 25, 1, 1.45, 1.45 );
setScaleKey( spep_5-3 + 26, 1, 1.4, 1.4 );
setScaleKey( spep_5-3 + 73, 1, 1.4, 1.4 );
setScaleKey( spep_5-3 + 74, 1, 0.98-a, 0.98-a );
setScaleKey( spep_5-3 + 76, 1, 1.12-a, 1.12-a );
setScaleKey( spep_5-3 + 78, 1, 1.26-a, 1.26-a );
setScaleKey( spep_5-3 + 80, 1, 1.39-a, 1.39-a );
setScaleKey( spep_5-3 + 82, 1, 1.53-a, 1.53-a );
setScaleKey( spep_5-3 + 84, 1, 1.67-a, 1.67-a );
setScaleKey( spep_5-3 + 86, 1, 1.81-a, 1.81-a );
setScaleKey( spep_5-3 + 88, 1, 1.94-a, 1.94-a );
setScaleKey( spep_5-3 + 90, 1, 2.08-a, 2.08-a );
setScaleKey( spep_5-3 + 92, 1, 2.22-a, 2.22-a );
setScaleKey( spep_5-3 + 94, 1, 2.35-a, 2.35-a );
setScaleKey( spep_5-3 + 96, 1, 2.49-a, 2.49-a );
setScaleKey( spep_5-3 + 98, 1, 2.63-a, 2.63-a );
setScaleKey( spep_5-3 + 100, 1, 2.77-a, 2.77-a );
setScaleKey( spep_5-3 + 102, 1, 2.9-a, 2.9-a );
setScaleKey( spep_5-3 + 104, 1, 3.04-a, 3.04-a );
setScaleKey( spep_5-3 + 106, 1, 3.18-a, 3.18-a );
setScaleKey( spep_5-3 + 108, 1, 3.31-a, 3.31-a );
setScaleKey( spep_5-3 + 110, 1, 3.45-a, 3.45-a );
setScaleKey( spep_5-3 + 112, 1, 3.59-a, 3.59-a );
setScaleKey( spep_5-3 + 114, 1, 3.73-a, 3.73-a );
setScaleKey( spep_5-3 + 116, 1, 3.86-a, 3.86-a );
setScaleKey( spep_5 + 118, 1, 4-a, 4-a );

setRotateKey( spep_5-3 + 0, 1, -5.8 );
setRotateKey( spep_5-3 + 2, 1, -8.2 );
setRotateKey( spep_5-3 + 4, 1, -10.4 );
setRotateKey( spep_5-3 + 6, 1, -12.7 );
setRotateKey( spep_5-3 + 8, 1, -14.9 );
setRotateKey( spep_5-3 + 10, 1, -17.2 );
setRotateKey( spep_5-3 + 12, 1, -19.4 );
setRotateKey( spep_5-3 + 14, 1, -21.7 );
setRotateKey( spep_5-3 + 16, 1, -23.9 );
setRotateKey( spep_5-3 + 18, 1, -26.2 );
setRotateKey( spep_5-3 + 20, 1, -28.5 );
setRotateKey( spep_5-3 + 22, 1, -30.7 );
setRotateKey( spep_5-3 + 25, 1, -33 );
setRotateKey( spep_5-3 + 26, 1, -25.8 );
setRotateKey( spep_5-3 + 73, 1, -25.8 );
setRotateKey( spep_5-3 + 74, 1, -43.3 );
setRotateKey( spep_5-3 + 76, 1, -41.2 );
setRotateKey( spep_5-3 + 78, 1, -39.1 );
setRotateKey( spep_5-3 + 80, 1, -37 );
setRotateKey( spep_5-3 + 82, 1, -34.9 );
setRotateKey( spep_5-3 + 84, 1, -32.8 );
setRotateKey( spep_5-3 + 86, 1, -30.7 );
setRotateKey( spep_5-3 + 88, 1, -28.6 );
setRotateKey( spep_5-3 + 90, 1, -26.5 );
setRotateKey( spep_5-3 + 92, 1, -24.4 );
setRotateKey( spep_5-3 + 94, 1, -22.3 );
setRotateKey( spep_5-3 + 96, 1, -20.2 );
setRotateKey( spep_5-3 + 98, 1, -18.1 );
setRotateKey( spep_5-3 + 100, 1, -16 );
setRotateKey( spep_5-3 + 102, 1, -13.9 );
setRotateKey( spep_5-3 + 104, 1, -11.9 );
setRotateKey( spep_5-3 + 106, 1, -9.8 );
setRotateKey( spep_5-3 + 108, 1, -7.7 );
setRotateKey( spep_5-3 + 110, 1, -5.6 );
setRotateKey( spep_5-3 + 112, 1, -3.5 );
setRotateKey( spep_5-3 + 114, 1, -1.4 );
setRotateKey( spep_5-3 + 116, 1, 0.7 );
setRotateKey( spep_5 + 118, 1, 2.8 );

--文字エントリー
ctbago = entryEffectLife( spep_5-4 + 74,  10021, 28, 0x100, -1, 0, 138.2, 207.4 );--バゴォッ

setEffShake(  spep_5-4+74,  ctbago,  28,  10);  --揺れ
setEffMoveKey( spep_5-4 + 74, ctbago, 138.2, 207.4 , 0 );
setEffMoveKey( spep_5-4 + 76, ctbago, 158, 248.4 , 0 );
setEffMoveKey( spep_5-4 + 78, ctbago, 165.1, 291.4 , 0 );
setEffMoveKey( spep_5-4 + 80, ctbago, 174.4, 291.8 , 0 );
setEffMoveKey( spep_5-4 + 82, ctbago, 166.1, 294.9 , 0 );
setEffMoveKey( spep_5-4 + 84, ctbago, 175.4, 295.3 , 0 );
setEffMoveKey( spep_5-4 + 86, ctbago, 167, 298.5 , 0 );
setEffMoveKey( spep_5-4 + 88, ctbago, 176.5, 298.7 , 0 );
setEffMoveKey( spep_5-4 + 90, ctbago, 167.8, 302.1 , 0 );
setEffMoveKey( spep_5-4 + 92, ctbago, 177.5, 302.3 , 0 );
setEffMoveKey( spep_5-4 + 94, ctbago, 168.8, 305.7 , 0 );
setEffMoveKey( spep_5-4 + 96, ctbago, 178.6, 305.8 , 0 );
setEffMoveKey( spep_5-4 + 98, ctbago, 174.4, 326 , 0 );
setEffMoveKey( spep_5-4 + 100, ctbago, 190.8, 343 , 0 );
setEffMoveKey( spep_5-4 + 102, ctbago, 185.1, 363.5 , 0 );

setEffScaleKey( spep_5-4 + 74, ctbago, 1, 1 );
setEffScaleKey( spep_5-4 + 76, ctbago, 1.62, 1.62 );
setEffScaleKey( spep_5-4 + 78, ctbago, 2.23, 2.23 );
setEffScaleKey( spep_5-4 + 80, ctbago, 2.25, 2.25 );
setEffScaleKey( spep_5-4 + 82, ctbago, 2.27, 2.27 );
setEffScaleKey( spep_5-4 + 84, ctbago, 2.29, 2.29 );
setEffScaleKey( spep_5-4 + 86, ctbago, 2.31, 2.31 );
setEffScaleKey( spep_5-4 + 88, ctbago, 2.33, 2.33 );
setEffScaleKey( spep_5-4 + 90, ctbago, 2.34, 2.34 );
setEffScaleKey( spep_5-4 + 92, ctbago, 2.36, 2.36 );
setEffScaleKey( spep_5-4 + 94, ctbago, 2.38, 2.38 );
setEffScaleKey( spep_5-4 + 96, ctbago, 2.4, 2.4 );
setEffScaleKey( spep_5-4 + 98, ctbago, 2.6, 2.6 );
setEffScaleKey( spep_5-4 + 100, ctbago, 2.8, 2.8 );
setEffScaleKey( spep_5-4 + 102, ctbago, 3, 3 );

setEffRotateKey( spep_5-4 + 74, ctbago, -35.6 );
setEffRotateKey( spep_5-4 + 102, ctbago, -35.6 );

setEffAlphaKey( spep_5-4 + 74, ctbago, 0 );
setEffAlphaKey( spep_5-4 + 75, ctbago, 255 );
setEffAlphaKey( spep_5-4 + 76, ctbago, 255 );
setEffAlphaKey( spep_5-4 + 96, ctbago, 255 );
setEffAlphaKey( spep_5-4 + 98, ctbago, 179 );
setEffAlphaKey( spep_5-4 + 100, ctbago, 102 );
setEffAlphaKey( spep_5-4 + 102, ctbago, 26 );

--SE
playSe(  spep_5,  1018);  --弾丸迫る
playSe(  spep_5+24,  1011);  --弾丸当たる
playSe(  spep_5+40,  43);  --瞬間移動
playSe(  spep_5+72,  1010);  --蹴り

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 120, 0, 0, 0, 0, 255 );  --薄い黒　背景

--次の準備
entryFade(spep_5+112,4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- whit_fe fade

--次の準備
spep_6=spep_5+120;

------------------------------------------------------
--ビルにぶつかる
------------------------------------------------------
--エフェクト
bill=entryEffectLife(spep_6,SP_10x,100,0x80,-1,0,0,0);

setEffMoveKey( spep_6 + 0, bill, 0, 0 , 0 );
setEffMoveKey( spep_6 + 100, bill, 0, 0 , 0 );
setEffScaleKey(spep_6,bill,1.0,1.0);
setEffScaleKey(spep_6+100,bill,1.0,1.0);
setEffRotateKey(spep_6,bill,0);
setEffRotateKey(spep_6+100,bill,0);
setEffAlphaKey(spep_6,bill,255);
setEffAlphaKey(spep_6+100,bill,255);

--敵の動き
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 + 32, 1, 0 );
changeAnime( spep_6 + 0, 1, 5 );

setMoveKey( spep_6 + 0, 1, 114.6, -744.3 , 0 );
setMoveKey( spep_6 + 2, 1, 107.2, -700.7 , 0 );
setMoveKey( spep_6 + 4, 1, 98.3, -648.5 , 0 );
setMoveKey( spep_6 + 6, 1, 88.1, -587.5 , 0 );
setMoveKey( spep_6 + 8, 1, 76.5, -517.7 , 0 );
setMoveKey( spep_6 + 10, 1, 63.7, -439.3 , 0 );
setMoveKey( spep_6 + 12, 1, 49.5, -352.1 , 0 );
setMoveKey( spep_6 + 14, 1, 34.2, -256.2 , 0 );
setMoveKey( spep_6 + 16, 1, 17.8, -151.7 , 0 );
setMoveKey( spep_6 + 18, 1, 0.1, -38.4 , 0 );
setMoveKey( spep_6 + 20, 1, -0.1, -39.5 , 0 );
setMoveKey( spep_6 + 22, 1, -0.3, -40.4 , 0 );
setMoveKey( spep_6 + 24, 1, -0.6, -41.3 , 0 );
setMoveKey( spep_6 + 26, 1, -0.9, -42.2 , 0 );
setMoveKey( spep_6 + 28, 1, -1.1, -42.9 , 0 );
setMoveKey( spep_6 + 30, 1, -1.5, -43.5 , 0 );
setMoveKey( spep_6 + 32, 1, -1.8, -44.2 , 0 );

setScaleKey( spep_6 + 0, 1, 26.97, 26.97 );
setScaleKey( spep_6 + 2, 1, 25.45, 25.45 );
setScaleKey( spep_6 + 4, 1, 23.62, 23.62 );
setScaleKey( spep_6 + 6, 1, 21.49, 21.49 );
setScaleKey( spep_6 + 8, 1, 19.06, 19.06 );
setScaleKey( spep_6 + 10, 1, 16.32, 16.32 );
setScaleKey( spep_6 + 12, 1, 13.28, 13.28 );
setScaleKey( spep_6 + 14, 1, 9.93, 9.93 );
setScaleKey( spep_6 + 16, 1, 6.28, 6.28 );
setScaleKey( spep_6 + 18, 1, 2.33, 2.33 );
setScaleKey( spep_6 + 20, 1, 1.89, 1.89 );
setScaleKey( spep_6 + 22, 1, 1.5, 1.5 );
setScaleKey( spep_6 + 24, 1, 1.15, 1.15 );
setScaleKey( spep_6 + 26, 1, 0.84, 0.84 );
setScaleKey( spep_6 + 28, 1, 0.57, 0.57 );
setScaleKey( spep_6 + 30, 1, 0.36, 0.36 );
setScaleKey( spep_6 + 32, 1, 0.18, 0.18 );

setRotateKey( spep_6 + 0, 1, 13.3 );
setRotateKey( spep_6 + 6, 1, 13.3 );
setRotateKey( spep_6 + 8, 1, 13.4 );
setRotateKey( spep_6 + 14, 1, 13.4 );
setRotateKey( spep_6 + 16, 1, 13.5 );
setRotateKey( spep_6 + 22, 1, 13.5 );
setRotateKey( spep_6 + 24, 1, 13.4 );
setRotateKey( spep_6 + 32, 1, 13.4 );

--文字エントリー
ctdogo = entryEffectLife( spep_6 + 34,  10018, 38, 0x100, -1, 0, 104, 386.1 );--ドゴォンッ

setEffMoveKey( spep_6 + 34, ctdogo, 104, 386.1 , 0 );
setEffMoveKey( spep_6 + 36, ctdogo, 111.4, 398.7 , 0 );
setEffMoveKey( spep_6 + 38, ctdogo, 111.8, 379.2 , 0 );
setEffMoveKey( spep_6 + 40, ctdogo, 104, 386.1 , 0 );
setEffMoveKey( spep_6 + 42, ctdogo, 104, 386.1 , 0 );
setEffMoveKey( spep_6 + 44, ctdogo, 109.6, 395.6 , 0 );
setEffMoveKey( spep_6 + 46, ctdogo, 110.9, 380 , 0 );
setEffMoveKey( spep_6 + 48, ctdogo, 104, 386.1 , 0 );
setEffMoveKey( spep_6 + 50, ctdogo, 109.6, 395.6 , 0 );
setEffMoveKey( spep_6 + 52, ctdogo, 110.9, 380 , 0 );
setEffMoveKey( spep_6 + 54, ctdogo, 104, 386.1 , 0 );
setEffMoveKey( spep_6 + 56, ctdogo, 109.6, 395.6 , 0 );
setEffMoveKey( spep_6 + 58, ctdogo, 110.9, 380 , 0 );
setEffMoveKey( spep_6 + 60, ctdogo, 104, 386.1 , 0 );
setEffMoveKey( spep_6 + 62, ctdogo, 104, 386.1 , 0 );
setEffMoveKey( spep_6 + 64, ctdogo, 109.6, 395.6 , 0 );
setEffMoveKey( spep_6 + 66, ctdogo, 110.9, 380 , 0 );
setEffMoveKey( spep_6 + 68, ctdogo, 104, 386.1 , 0 );
setEffMoveKey( spep_6 + 70, ctdogo, 109.6, 395.6 , 0 );

setEffScaleKey( spep_6 + 34, ctdogo, 5.3, 5.3 );
setEffScaleKey( spep_6 + 36, ctdogo, 4.62, 4.62 );
setEffScaleKey( spep_6 + 38, ctdogo, 3.94, 3.94 );
setEffScaleKey( spep_6 + 40, ctdogo, 3.26, 3.26 );
setEffScaleKey( spep_6 + 42, ctdogo, 3.48, 3.48 );
setEffScaleKey( spep_6 + 70, ctdogo, 3.48, 3.48 );

setEffRotateKey( spep_6 + 34, ctdogo, 12 );
setEffRotateKey( spep_6 + 70, ctdogo, 12 );

setEffAlphaKey( spep_6 + 34, ctdogo, 77 );
setEffAlphaKey( spep_6 + 36, ctdogo, 136 );
setEffAlphaKey( spep_6 + 38, ctdogo, 196 );
setEffAlphaKey( spep_6 + 40, ctdogo, 255 );
setEffAlphaKey( spep_6 + 62, ctdogo, 255 );
setEffAlphaKey( spep_6 + 64, ctdogo, 204 );
setEffAlphaKey( spep_6 + 66, ctdogo, 153 );
setEffAlphaKey( spep_6 + 68, ctdogo, 102 );
setEffAlphaKey( spep_6 + 70, ctdogo, 51 );
setEffAlphaKey( spep_6 + 72, ctdogo, 0 );


--集中線
shuchusen5 = entryEffectLife( spep_6 + 34,  906, 64, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_6 + 34, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_6 + 98, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_6 + 34, shuchusen5, 1.27, 1.5 );
setEffScaleKey( spep_6 + 98, shuchusen5, 1.27, 1.5 );

setEffRotateKey( spep_6 + 34, shuchusen5, 0 );
setEffRotateKey( spep_6 + 98, shuchusen5, 0 );

setEffAlphaKey( spep_6 + 34, shuchusen5, 255 );
setEffAlphaKey( spep_6 + 98, shuchusen5, 255 );


--SE
playSe(  spep_6,  8);  --吹き飛ぶ敵
playSe(  spep_6+34,  1023);  --ビルに直撃

--次の準備
entryFade(spep_6+28,2, 4, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- whit_fe fade
entryFade(spep_6+92,4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- whit_fe fade

--次の準備
spep_7=spep_6+100;
------------------------------------------------------
--ポチッとな
------------------------------------------------------
--エフェクト
poti=entryEffectLife(spep_7,SP_11x,160,0x80,-1,0,0,0);

setEffMoveKey( spep_7 + 0, poti, 0, 0 , 0 );
setEffMoveKey( spep_7 + 160, poti, 0, 0 , 0 );
setEffScaleKey(spep_7,poti,-1.0,1.0);
setEffScaleKey(spep_7+160,poti,-1.0,1.0);
setEffRotateKey(spep_7,poti,0);
setEffRotateKey(spep_7+160,poti,0);
setEffAlphaKey(spep_7,poti,255);
setEffAlphaKey(spep_7+160,poti,255);

--顔カットイン
--speff=entryEffect(spep_7+14,1504,0x100,-1,0,0,0);  --カットイン(顔)
--setEffReplaceTexture(speff,3,2);  --カットイン差し替え
--speff1=entryEffect(spep_7+14,1505,0x100,-1,0,0,0);  --カットイン(セリフ)
--setEffReplaceTexture(speff1,4,5);  --セリフカットイン差し替え

--ゴゴゴ
ctgogo=entryEffectLife(spep_7+26,190006,72,0x100,-1,150,520);--ゴゴゴ

setEffMoveKey(spep_7+26,ctgogo,150,520,0);
setEffMoveKey(spep_7+98,ctgogo,150,520,0);

setEffScaleKey(spep_7+26, ctgogo, -0.7, 0.7);
setEffScaleKey(spep_7+98, ctgogo, -0.7, 0.7);

setEffAlphaKey( spep_7 +26, ctgogo, 0 );
setEffAlphaKey( spep_7 + 27, ctgogo, 255 );
setEffAlphaKey( spep_7 + 28, ctgogo, 255 );
setEffAlphaKey( spep_7 + 98, ctgogo, 255 );

setEffRotateKey(spep_7+26,ctgogo,0);
setEffRotateKey(spep_7+98,ctgogo,0);

--集中線
shuchusen6 = entryEffectLife( spep_7 ,  906, 160, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_7 , shuchusen6, 0, 0 , 0 );
setEffMoveKey( spep_7 + 160, shuchusen6, 0, 0 , 0 );

setEffScaleKey( spep_7 , shuchusen6, 1.27, 1.5 );
setEffScaleKey( spep_7 + 160, shuchusen6, 1.27, 1.5 );

setEffRotateKey( spep_7 , shuchusen6, 0 );
setEffRotateKey( spep_7 + 160, shuchusen6, 0 );

setEffAlphaKey( spep_7 , shuchusen6, 0 );
setEffAlphaKey( spep_7 +26, shuchusen6, 0 );
setEffAlphaKey( spep_7 + 27, shuchusen6, 255 );
setEffAlphaKey( spep_7 + 28, shuchusen6, 255 );
setEffAlphaKey( spep_7 + 98, shuchusen6, 255 );
setEffAlphaKey( spep_7 + 99, shuchusen6, 0 );
setEffAlphaKey( spep_7 + 100, shuchusen6, 0 );
setEffAlphaKey( spep_7 + 148, shuchusen6, 0 );
setEffAlphaKey( spep_7 + 149, shuchusen6, 0 );
setEffAlphaKey( spep_7 + 150, shuchusen6, 255 );
setEffAlphaKey( spep_7 + 160, shuchusen6, 255 );

--SE
playSe(  spep_7+26,  SE_04);  --ゴゴゴ
playSe(  spep_7+154,  22);  --スイッチ押す

--次の準備
entryFade(spep_7+152,4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- whit_fe fade

--次の準備
spep_8=spep_7+160;
------------------------------------------------------
--爆発
------------------------------------------------------
--エフェクト
poti=entryEffect(spep_8,SP_12x,0x100,-1,0,0,0);

setEffMoveKey( spep_8 + 0, poti, 0, 0 , 0 );
setEffMoveKey( spep_8 + 180, poti, 0, 0 , 0 );
setEffScaleKey(spep_8,poti,1.0,1.0);
setEffScaleKey(spep_8+180,poti,1.0,1.0);
setEffRotateKey(spep_8,poti,0);
setEffRotateKey(spep_8+180,poti,0);
setEffAlphaKey(spep_8,poti,255);
setEffAlphaKey(spep_8+180,poti,255);

--集中線
shuchusen7 = entryEffectLife( spep_8 ,  906, 180, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_8 , shuchusen7, 0, 0 , 0 );
setEffMoveKey( spep_8 + 180, shuchusen7, 0, 0 , 0 );

setEffScaleKey( spep_8 , shuchusen7, 1.27, 1.5 );
setEffScaleKey( spep_8 + 180, shuchusen7, 1.27, 1.5 );

setEffRotateKey( spep_8 , shuchusen7, 0 );
setEffRotateKey( spep_8 + 180, shuchusen7, 0 );

setEffAlphaKey( spep_8 , shuchusen7, 255 );
setEffAlphaKey( spep_8 + 180, shuchusen7, 255 );


--SE
playSe(  spep_8,  1024);  --爆発
SE1 = playSe(  spep_8+64,  1044);  --崩れるビル
stopSe(  spep_8+168,  SE1,  0);

-- ダメージ表示
dealDamage(spep_8+66);
entryFade( spep_8+160, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_8+170);



end
