--西の界王神(ドロップ産)　1008150　神聖光弾　(ver2)
--sp_effect_a9_00045

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SE_01 = 1035; --気を貯める
SE_02 = 1036; --気が広がる
SE_03 = 1036; --かめはめ
SE_04 = 1018; --顔カットイン
SE_05 = 1035; --カットイン攻撃
SE_06 = 1021; --発射
SE_07 = 1022; --のびる発射
SE_08 = 1042; --カットイン
SE_09 = 1023; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音
SE_12 = 09;


--味方側
SP_01=	152198	;--	構え〜振りかぶり
SP_02=	152199	;--	放つ〜迫る	

--敵側
SP_01x=	152200	;--	構え〜振りかぶり	(敵)
SP_02x=	152201	;--	放つ〜迫る	(敵)

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

setDisp( 0, 1, 0);
setDisp( 0, 0, 0);
setMoveKey(   0,   0,    0, -2000,   0);
setMoveKey(   0,   1,    0, -2000, 0);
setMoveKey(   1,   0,    0, -2000,   0);
setMoveKey(   1,   1,    0, -2000 , 0);
setMoveKey(   2,   0,    0, -2000,   0);
setMoveKey(   2,   1,    0, -2000 , 0);
setMoveKey(   3,   0,    0, -2000,   0);
setMoveKey(   3,   1,    0, -2000 , 0);

setScaleKey(   0,   0, 1.6, 1.6);
setScaleKey(   0,   1, 1.6, 1.6);
setScaleKey(   1,   0, 1.6, 1.6);
setScaleKey(   1,   1, 1.6, 1.6);
setScaleKey(   2,   0, 1.6, 1.6);
setScaleKey(   2,   1, 1.6, 1.6);
setScaleKey(   3,   0, 1.6, 1.6);
setScaleKey(   3,   1, 1.6, 1.6);

setRotateKey(   0,   1, 0);
setRotateKey(   0,   0, 0);
setRotateKey(   1,   1, 0);
setRotateKey(   1,   0, 0);
setRotateKey(   2,   1, 0);
setRotateKey(   2,   0, 0);
setRotateKey(   3,   1, 0);
setRotateKey(   3,   0, 0);


multi_frm = 2;

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then
------------------------------------------------------
-- 味方側
------------------------------------------------------
--------------------------------------
--溜め
--------------------------------------

--次の準備
spep_0=0;

--エフェクトの再生
tame=entryEffectLife(spep_0,SP_01,138,0x100,-1,0,0,0);

setEffMoveKey(spep_0,tame,0,0,0);
setEffMoveKey(spep_0+138,tame,0,0,0);
setEffScaleKey(spep_0,tame,1.0,1.0);
setEffScaleKey(spep_0+138,tame,1.0,1.0);
setEffAlphaKey(spep_0,tame,255);
setEffAlphaKey(spep_0+138,tame,255);
setEffRotateKey(spep_0,tame,0);
setEffRotateKey(spep_0+138,tame,0);

--集中線
shuchuse3 = entryEffectLife( spep_0 + 0,  906, 138, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_0 + 0, shuchuse3, 0, 0 , 0 );
setEffMoveKey( spep_0 + 138, shuchuse3, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchuse3, 1.32, 1.92 );
setEffScaleKey( spep_0 + 138, shuchuse3, 1.32, 1.92 );

setEffRotateKey( spep_0 + 0, shuchuse3, 0 );
setEffRotateKey( spep_0 + 138, shuchuse3, 0 );

setEffAlphaKey( spep_0 + 0, shuchuse3, 255 );
setEffAlphaKey( spep_0 + 138, shuchuse3, 255 );

--流線
ryuusen3 = entryEffectLife( spep_0 + 0,  914, 138, 0x80, -1, 0, 5.6, -237.1 );

setEffMoveKey( spep_0 + 0, ryuusen3, 5.6, -237.1 , 0 );
setEffMoveKey( spep_0 + 138, ryuusen3, 5.6, -237.1 , 0 );

setEffScaleKey( spep_0 + 0, ryuusen3, 4.08, 1.23 );
setEffScaleKey( spep_0 + 138, ryuusen3, 4.08, 1.23 );

setEffRotateKey( spep_0 + 0, ryuusen3, 90 );
setEffRotateKey( spep_0 + 138, ryuusen3, 90 );

setEffAlphaKey( spep_0 + 0, ryuusen3, 255 );
setEffAlphaKey( spep_0 + 138, ryuusen3, 255 );

--顔カットイン
speff=entryEffect(spep_0,1504,0x100,-1,0,0,0);  --カットイン(顔)
setEffReplaceTexture(speff,3,2);  --カットイン差し替え
speff1=entryEffect(spep_0,1505,0x100,-1,0,0,0);  --カットイン(セリフ)
setEffReplaceTexture(speff1,4,5);  --セリフカットイン差し替え

--文字エントリー
ctgogo=entryEffectLife(spep_0+12,190006,70,0x100,-1,-10,520);--ゴゴゴ
setEffMoveKey(spep_0+12,ctgogo,-10,520,0);
setEffMoveKey(spep_0+82,ctgogo,-10,520,0);
setEffScaleKey(spep_0+12, ctgogo, 0.7, 0.7);
setEffScaleKey(spep_0+82, ctgogo, 0.7, 0.7);

setEffAlphaKey( spep_0 + 12, ctgogo, 0 );
setEffAlphaKey( spep_0 + 13, ctgogo, 255 );
setEffAlphaKey( spep_0 + 14, ctgogo, 255 );
setEffAlphaKey( spep_0 + 82, ctgogo, 255 );

-- ** エフェクト等 ** --
entryFade(spep_0, 0, 2, 10,fcolor_r,fcolor_g,fcolor_b,200);     -- white fade
entryFade(spep_0+84, 0, 2, 6,fcolor_r,fcolor_g,fcolor_b,200);     -- white fade
entryFade(spep_0+134, 2, 4, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--黒背景
entryFadeBg(spep_0, 0, 140, 0, 0, 0, 0, 180);  -- 黒　背景

--SE
playSe( spep_0 + 14, SE_04);


--次の準備
spep_1=spep_0+140;

--------------------------------------
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
entryFade(spep_1+85,3,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_2=spep_1+90;

--------------------------------------
--大きく振りかぶって
--------------------------------------
--エフェクトの再生
throw=entryEffectLife(spep_2,SP_02,158,0x100,-1,0,0,0);

setEffMoveKey(spep_2,throw,0,0,0);
setEffMoveKey(spep_2+158,throw,0,0,0);
setEffScaleKey(spep_2,throw,1.0,1.0);
setEffScaleKey(spep_2+158,throw,1.0,1.0);
setEffAlphaKey(spep_2,throw,255);
setEffAlphaKey(spep_2+158,throw,255);
setEffRotateKey(spep_2,throw,0);
setEffRotateKey(spep_2+158,throw,0);

--文字エントリー
ctzuo = entryEffectLife( spep_2 + 6,  10012, 42, 0x100, -1, 0, 78.7, 260.5 );--ズオ

setEffMoveKey( spep_2 + 6, ctzuo, 78.7, 260.5 , 0 );
setEffMoveKey( spep_2 + 10, ctzuo, 105, 288.6 , 0 );
setEffMoveKey( spep_2 + 12, ctzuo, 117.9, 330.1 , 0 );
setEffMoveKey( spep_2 + 14, ctzuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_2 + 16, ctzuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_2 + 18, ctzuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_2 + 20, ctzuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_2 + 22, ctzuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_2 + 24, ctzuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_2 + 26, ctzuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_2 + 28, ctzuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_2 + 30, ctzuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_2 + 32, ctzuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_2 + 34, ctzuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_2 + 36, ctzuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_2 + 28, ctzuo, 173.1, 345.5 , 0 );
setEffMoveKey( spep_2 + 40, ctzuo, 166.7, 367.9 , 0 );
setEffMoveKey( spep_2 + 42, ctzuo, 211.6, 339 , 0 );
setEffMoveKey( spep_2 + 44, ctzuo, 195.7, 370.9 , 0 );
setEffMoveKey( spep_2 + 46, ctzuo, 210.3, 372.4 , 0 );
setEffMoveKey( spep_2 + 48, ctzuo, 210.3, 372.4 , 0 );

setEffScaleKey( spep_2 + 6, ctzuo, 0.34, 0.34 );
setEffScaleKey( spep_2 + 12, ctzuo, 1.13, 1.13 );
setEffScaleKey( spep_2 + 16, ctzuo, 1.94, 1.94 );
setEffScaleKey( spep_2 + 18, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_2 + 36, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_2 + 38, ctzuo, 3.55, 3.55 );
setEffScaleKey( spep_2 + 40, ctzuo, 4.37, 4.37 );
setEffScaleKey( spep_2 + 42, ctzuo, 5.19, 5.19 );
setEffScaleKey( spep_2 + 44, ctzuo, 6.01, 6.01 );
setEffScaleKey( spep_2 + 46, ctzuo, 6.82, 6.82 );
setEffScaleKey( spep_2 + 48, ctzuo, 6.82, 6.82 );

setEffRotateKey( spep_2 + 6, ctzuo, 27.2 );
setEffRotateKey( spep_2 + 48, ctzuo, 27.2 );

setEffAlphaKey( spep_2 + 6, ctzuo, 0 );
setEffAlphaKey( spep_2 + 7, ctzuo, 255 );
setEffAlphaKey( spep_2 + 8, ctzuo, 255 );
setEffAlphaKey( spep_2 + 38, ctzuo, 255 );
setEffAlphaKey( spep_2 + 40, ctzuo, 204 );
setEffAlphaKey( spep_2 + 42, ctzuo, 153 );
setEffAlphaKey( spep_2 + 44, ctzuo, 102 );
setEffAlphaKey( spep_2 + 46, ctzuo, 51 );
setEffAlphaKey( spep_2 + 48, ctzuo, 0 );

--集中線
shuchuse4 = entryEffectLife( spep_2 + 0,  906, 158, 0x100, -1, 0, 0, 0 );   -- 集中線

setEffMoveKey( spep_2 + 0, shuchuse4, 0, 0 , 0 );
setEffMoveKey( spep_2 + 158, shuchuse4, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchuse4, 1.32, 1.92 );
setEffScaleKey( spep_2 + 158, shuchuse4, 1.32, 1.92 );

setEffRotateKey( spep_2 + 0, shuchuse4, 0 );
setEffRotateKey( spep_2 + 158, shuchuse4, 0 );

setEffAlphaKey( spep_2 + 0, shuchuse4, 255 );
setEffAlphaKey( spep_2 + 158, shuchuse4, 255 );

--流線
ryuusen4 = entryEffectLife( spep_2 + 0,  921, 158, 0x80, -1, 0, 63.5, 40.8 );

setEffMoveKey( spep_2 + 0, ryuusen4, 63.5, 40.8 , 0 );
setEffMoveKey( spep_2 + 158, ryuusen4, 63.5, 40.8 , 0 );

setEffScaleKey( spep_2 + 0, ryuusen4, 1.87, 1.37 );
setEffScaleKey( spep_2 + 78, ryuusen4, 1.87, 1.37 );
setEffScaleKey( spep_2 + 80, ryuusen4, 1.2, 1.15 );
setEffScaleKey( spep_2 + 158, ryuusen4, 1.2, 1.15 );

setEffRotateKey( spep_2 + 0, ryuusen4, 130 );
setEffRotateKey( spep_2 + 78, ryuusen4, 130 );
setEffRotateKey( spep_2 + 79, ryuusen4, 130 );
setEffRotateKey( spep_2 + 80, ryuusen4, 0 );
setEffRotateKey( spep_2 + 158, ryuusen4, 0 );

setEffAlphaKey( spep_2 + 0, ryuusen4, 255 );
setEffAlphaKey( spep_2 + 158, ryuusen4, 255 );

--SE
playSe( spep_2, SE_06); --投げる

-- ** エフェクト等 ** --
entryFade(spep_2+70,6,8,6,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--黒背景
entryFadeBg(spep_2, 0, 158, 0, 0, 0, 0, 180);  -- 黒　背景

--敵の動き
setDisp(spep_2+78,1,1);
changeAnime(spep_2+78,1,104);
changeAnime(spep_2+130,1,108);


setMoveKey( spep_2 + 78, 1, 753.1, 32 , 0 );
setMoveKey( spep_2 + 80, 1, 679.3, 27 , 0 );
setMoveKey( spep_2 + 82, 1, 612.3, 26.8 , 0 );
setMoveKey( spep_2 + 84, 1, 517.4, 12.7 , 0 );
setMoveKey( spep_2 + 86, 1, 428.8, 20 , 0 );
setMoveKey( spep_2 + 88, 1, 314.3, 12.8 , 0 );
setMoveKey( spep_2 + 90, 1, 202.5, 11.6 , 0 );
setMoveKey( spep_2 + 94, 1, 178.3, 1.4 , 0 );
setMoveKey( spep_2 + 96, 1, 189.3, 11.4 , 0 );
setMoveKey( spep_2 + 98, 1, 175.5, 9.5 , 0 );
setMoveKey( spep_2 + 100, 1, 176.7, 11.3 , 0 );
setMoveKey( spep_2 + 102, 1, 152.8, 0.8 , 0 );
setMoveKey( spep_2 + 104, 1, 164.8, 11.1 , 0 );
setMoveKey( spep_2 + 106, 1, 151.5, 9.5 , 0 );
setMoveKey( spep_2 + 108, 1, 153.5, 11 , 0 );
setMoveKey( spep_2 + 110, 1, 129.9, -3.8 , 0 );

setScaleKey( spep_2 + 78, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 80, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 82, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 84, 1, 0.59, 0.59 );
setScaleKey( spep_2 + 86, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 88, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 90, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 94, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 96, 1, 1.24, 1.24 );
setScaleKey( spep_2 + 98, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 100, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 102, 1, 1.28, 1.28 );
setScaleKey( spep_2 + 104, 1, 1.29, 1.29 );
setScaleKey( spep_2 + 106, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 108, 1, 1.31, 1.31 );
setScaleKey( spep_2 + 110, 1, 1.33, 1.33 );

setRotateKey( spep_2 + 78, 1, 0 );
setRotateKey( spep_2 + 110, 1, 0 );
--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

SP_dodge = spep_2+110 ; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

pauseAll( SP_dodge, 67);

--キャラクターの固定
setMoveKey(SP_dodge, 1, 129.9, -3.8, 0 );
setScaleKey(SP_dodge , 1, 1.33, 1.33  );
setRotateKey(SP_dodge,   1, 0);

--キャラクターの固定
setMoveKey(SP_dodge+8, 1, 129.9, -3.8, 0 );
setScaleKey(SP_dodge+8 , 1, 1.33, 1.33  );
setRotateKey(SP_dodge+8,   1, 0);



setDisp(SP_dodge+9, 0, 0);
--setDisp(SP_dodge+9, 1, 0);
--setMoveKey(SP_dodge+9, 1, 0 , 0, 0);
setScaleKey(SP_dodge+9,  1 , 1.4, 1.4 );
setRotateKey(SP_dodge+9,   1, 0);

--setMoveKey(SP_dodge+10, 1, 0 , 0, 0);
setScaleKey(SP_dodge+10,  1 , 1.4, 1.4);
setRotateKey(SP_dodge+10,   1, 0);


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



setMoveKey( spep_2 + 112, 1, 143, 10.9 , 0 );
setMoveKey( spep_2 + 114, 1, 130.2, 13.4 , 0 );
setMoveKey( spep_2 + 116, 1, 133.1, 10.8 , 0 );
setMoveKey( spep_2 + 118, 1, 109.8, -0.2 , 0 );
setMoveKey( spep_2 + 120, 1, 123.7, 10.7 , 0 );
setMoveKey( spep_2 + 122, 1, 111.6, 9.4 , 0 );
setMoveKey( spep_2 + 124, 1, 115.1, 10.6 , 0 );
setMoveKey( spep_2 + 126, 1, 96.2, -4.5 , 0 );
setMoveKey( spep_2 + 128, 1, 107.2, 10.5 , 0 );
setMoveKey( spep_2 + 130, 1, 99.6, 12.5 , 0 );

setMoveKey( spep_2 + 132, 1, 170.1, 16.8 , 0 );
--setMoveKey( spep_2 + 134, 1, 185, 16 , 0 );
setMoveKey( spep_2 + 134, 1, 199.9, 7.1 , 0 );
setMoveKey( spep_2 + 136, 1, 220.9, 14.1 , 0 );
setMoveKey( spep_2 + 138, 1, 238, 10.9 , 0 );
setMoveKey( spep_2 + 140, 1, 265.2, 6.7 , 0 );
setMoveKey( spep_2 + 142, 1, 288.6, 6.3 , 0 );
setMoveKey( spep_2 + 144, 1, 318.1, 8.9 , 0 );
setMoveKey( spep_2 + 146, 1, 341.7, 5.3 , 0 );
setMoveKey( spep_2 + 148, 1, 379.4, 5.6 , 0 );
setMoveKey( spep_2 + 150, 1, 411.2, -1.7 , 0 );
setMoveKey( spep_2 + 152, 1, 449.1, 1.9 , 0 );
setMoveKey( spep_2 + 154, 1, 483.2, -5.8 , 0 );
setMoveKey( spep_2 + 156, 1, 527.4, -3.7 , 0 );


setScaleKey( spep_2 + 112, 1, 1.34, 1.34 );
setScaleKey( spep_2 + 114, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 116, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 118, 1, 1.37, 1.37 );
setScaleKey( spep_2 + 120, 1, 1.38, 1.38 );
setScaleKey( spep_2 + 122, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 124, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 126, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 128, 1, 1.41, 1.41 );
setScaleKey( spep_2 + 130, 1, 1.42, 1.42 );

setScaleKey( spep_2 + 132, 1, 1.15, 1.15 );
--setScaleKey( spep_2 + 134, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 134, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 136, 1, 0.99, 0.99 );
setScaleKey( spep_2 + 138, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 140, 1, 0.86, 0.86 );
setScaleKey( spep_2 + 142, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 144, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 146, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 148, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 150, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 152, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 154, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 156, 1, 0.05, 0.05 );

setRotateKey( spep_2 + 158, 1, 0 );



-- ** エフェクト等 ** --
entryFade(spep_2+150,4,10,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--SE
playSe( spep_2+80, SE_06); --近く


--次の準備
spep_3=spep_2+158;
------------------------------------------------------
-- ガ
------------------------------------------------------

changeAnime( spep_3, 1, 107);                         -- 手前ダメージ
setMoveKey(  spep_3,    1,  100,  0,   0);
setScaleKey( spep_3,    1,  1.0, 1.0);
entryEffect( spep_3+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_3+8, SE_10);

setMoveKey(  spep_3+8,   1,    0,   0,   128);
setMoveKey(  spep_3+15,   1,  -60,  -200,  -100);
setMoveKey(  spep_3+16,   1,  -60,  -200,  -100);
setDamage( spep_3+16, 1, 0);  -- ダメージ振動等
setShake(spep_3+7,6,15);
setShake(spep_3+13,15,10);

setRotateKey( spep_3,  1,  30 );
setRotateKey( spep_3+2,  1,  80 );
setRotateKey( spep_3+4,  1, 120 );
setRotateKey( spep_3+6,  1, 160 );
setRotateKey( spep_3+8,  1, 200 );
setRotateKey( spep_3+10,  1, 260 );
setRotateKey( spep_3+12,  1, 320 );
setRotateKey( spep_3+14,  1,   0 );

setShakeChara( spep_3+15, 1, 5,  10);
setShakeChara( spep_3+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep_3+15, 10005, 95, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep_3+15, ct, 30, 10);
setEffRotateKey( spep_3+15, ct, -40);
setEffScaleKey( spep_3+15, ct, 4.0, 4.0);
setEffScaleKey( spep_3+16, ct, 2.0, 2.0);
setEffScaleKey( spep_3+17, ct, 2.6, 2.6);
setEffScaleKey( spep_3+18, ct, 4.0, 4.0);
setEffScaleKey( spep_3+19, ct, 2.6, 2.6);
setEffScaleKey( spep_3+20, ct, 3.8, 3.8);
setEffScaleKey( spep_3+110, ct, 3.8, 3.8);
setEffAlphaKey( spep_3+15, ct, 255);
setEffAlphaKey( spep_3+105, ct, 255);
setEffAlphaKey( spep_3+110, ct, 0);

playSe( spep_3+14, SE_11);
shuchusen = entryEffectLife( spep_3+3,906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_3+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

shuchusenkuro = entryEffectLife( spep_3+15, 1657, 120, 0x80,  -1, 0,  0,  0);   -- 集中線



-- ダメージ表示
dealDamage(spep_3+16);
entryFade( spep_3+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_3+106);


else 


------------------------------------------------------
-- 敵側
------------------------------------------------------
--------------------------------------
--溜め
--------------------------------------

--次の準備
spep_0=0;

--エフェクトの再生
tame=entryEffectLife(spep_0,SP_01x,138,0x100,-1,0,0,0);

setEffMoveKey(spep_0,tame,0,0,0);
setEffMoveKey(spep_0+138,tame,0,0,0);
setEffScaleKey(spep_0,tame,-1.0,1.0);
setEffScaleKey(spep_0+138,tame,-1.0,1.0);
setEffAlphaKey(spep_0,tame,255);
setEffAlphaKey(spep_0+138,tame,255);
setEffRotateKey(spep_0,tame,0);
setEffRotateKey(spep_0+138,tame,0);

--集中線
shuchuse3 = entryEffectLife( spep_0 + 0,  906, 138, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_0 + 0, shuchuse3, 0, 0 , 0 );
setEffMoveKey( spep_0 + 138, shuchuse3, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchuse3, 1.32, 1.92 );
setEffScaleKey( spep_0 + 138, shuchuse3, 1.32, 1.92 );

setEffRotateKey( spep_0 + 0, shuchuse3, 0 );
setEffRotateKey( spep_0 + 138, shuchuse3, 0 );

setEffAlphaKey( spep_0 + 0, shuchuse3, 255 );
setEffAlphaKey( spep_0 + 138, shuchuse3, 255 );

--流線
ryuusen3 = entryEffectLife( spep_0 + 0,  914, 138, 0x80, -1, 0, 5.6, -237.1 );

setEffMoveKey( spep_0 + 0, ryuusen3, 5.6, -237.1 , 0 );
setEffMoveKey( spep_0 + 138, ryuusen3, 5.6, -237.1 , 0 );

setEffScaleKey( spep_0 + 0, ryuusen3, 4.08, 1.23 );
setEffScaleKey( spep_0 + 138, ryuusen3, 4.08, 1.23 );

setEffRotateKey( spep_0 + 0, ryuusen3, 90 );
setEffRotateKey( spep_0 + 138, ryuusen3, 90 );

setEffAlphaKey( spep_0 + 0, ryuusen3, 255 );
setEffAlphaKey( spep_0 + 138, ryuusen3, 255 );

--顔カットイン
--speff=entryEffect(spep_0+10,1504,0x100,-1,0,0,0);  --カットイン(顔)
--setEffReplaceTexture(speff,3,2);  --カットイン差し替え
--speff1=entryEffect(spep_0+10,1505,0x100,-1,0,0,0);  --カットイン(セリフ)
--setEffReplaceTexture(speff1,4,5);  --セリフカットイン差し替え

--文字エントリー
ctgogo=entryEffectLife(spep_0+12,190006,70,0x100,-1,-10,520);--ゴゴゴ
setEffMoveKey(spep_0+12,ctgogo,-10,520,0);
setEffMoveKey(spep_0+82,ctgogo,-10,520,0);
setEffScaleKey(spep_0+12, ctgogo, -0.7, 0.7);
setEffScaleKey(spep_0+82, ctgogo, -0.7, 0.7);


setEffAlphaKey( spep_0 + 12, ctgogo, 0 );	
setEffAlphaKey( spep_0 + 13, ctgogo, 255 );	
setEffAlphaKey( spep_0 + 14, ctgogo, 255 );	
setEffAlphaKey( spep_0 + 82, ctgogo, 255 );

-- ** エフェクト等 ** --
entryFade(spep_0, 0, 2, 10,fcolor_r,fcolor_g,fcolor_b,200); -- white fade
entryFade(spep_0+84, 0, 2, 6,fcolor_r,fcolor_g,fcolor_b,200);     -- white fade
entryFade(spep_0+134, 2, 4, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--黒背景
entryFadeBg(spep_0, 0, 140, 0, 0, 0, 0, 180);  -- 黒　背景

--SE
playSe( spep_0 + 14, SE_04);


--次の準備
spep_1=spep_0+140;

--------------------------------------
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
entryFade(spep_1+85,3,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_2=spep_1+90;

--------------------------------------
--大きく振りかぶって
--------------------------------------
--エフェクトの再生
throw=entryEffectLife(spep_2,SP_02x,158,0x100,-1,0,0,0);

setEffMoveKey(spep_2,throw,0,0,0);
setEffMoveKey(spep_2+158,throw,0,0,0);
setEffScaleKey(spep_2,throw,1.0,1.0);
setEffScaleKey(spep_2+158,throw,1.0,1.0);
setEffAlphaKey(spep_2,throw,255);
setEffAlphaKey(spep_2+158,throw,255);
setEffRotateKey(spep_2,throw,0);
setEffRotateKey(spep_2+158,throw,0);

--文字エントリー
ctzuo = entryEffectLife( spep_2 + 6,  10012, 42, 0x100, -1, 0, 78.7, 260.5 );--ズオ

setEffMoveKey( spep_2 + 6, ctzuo, 78.7, 260.5 , 0 );
setEffMoveKey( spep_2 + 10, ctzuo, 105, 288.6 , 0 );
setEffMoveKey( spep_2 + 12, ctzuo, 117.9, 330.1 , 0 );
setEffMoveKey( spep_2 + 14, ctzuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_2 + 16, ctzuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_2 + 18, ctzuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_2 + 20, ctzuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_2 + 22, ctzuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_2 + 24, ctzuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_2 + 26, ctzuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_2 + 28, ctzuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_2 + 30, ctzuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_2 + 32, ctzuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_2 + 34, ctzuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_2 + 36, ctzuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_2 + 28, ctzuo, 173.1, 345.5 , 0 );
setEffMoveKey( spep_2 + 40, ctzuo, 166.7, 367.9 , 0 );
setEffMoveKey( spep_2 + 42, ctzuo, 211.6, 339 , 0 );
setEffMoveKey( spep_2 + 44, ctzuo, 195.7, 370.9 , 0 );
setEffMoveKey( spep_2 + 46, ctzuo, 210.3, 372.4 , 0 );
setEffMoveKey( spep_2 + 48, ctzuo, 210.3, 372.4 , 0 );

setEffScaleKey( spep_2 + 6, ctzuo, 0.34, 0.34 );
setEffScaleKey( spep_2 + 12, ctzuo, 1.13, 1.13 );
setEffScaleKey( spep_2 + 16, ctzuo, 1.94, 1.94 );
setEffScaleKey( spep_2 + 18, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_2 + 36, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_2 + 38, ctzuo, 3.55, 3.55 );
setEffScaleKey( spep_2 + 40, ctzuo, 4.37, 4.37 );
setEffScaleKey( spep_2 + 42, ctzuo, 5.19, 5.19 );
setEffScaleKey( spep_2 + 44, ctzuo, 6.01, 6.01 );
setEffScaleKey( spep_2 + 46, ctzuo, 6.82, 6.82 );
setEffScaleKey( spep_2 + 48, ctzuo, 6.82, 6.82 );

setEffRotateKey( spep_2 + 6, ctzuo, 27.2 );
setEffRotateKey( spep_2 + 48, ctzuo, 27.2 );

setEffAlphaKey( spep_2 + 6, ctzuo, 0 );
setEffAlphaKey( spep_2 + 7, ctzuo, 255 );
setEffAlphaKey( spep_2 + 8, ctzuo, 255 );
setEffAlphaKey( spep_2 + 38, ctzuo, 255 );
setEffAlphaKey( spep_2 + 40, ctzuo, 204 );
setEffAlphaKey( spep_2 + 42, ctzuo, 153 );
setEffAlphaKey( spep_2 + 44, ctzuo, 102 );
setEffAlphaKey( spep_2 + 46, ctzuo, 51 );
setEffAlphaKey( spep_2 + 48, ctzuo, 0 );

--集中線
shuchuse4 = entryEffectLife( spep_2 + 0,  906, 158, 0x100, -1, 0, 0, 0 );   -- 集中線

setEffMoveKey( spep_2 + 0, shuchuse4, 0, 0 , 0 );
setEffMoveKey( spep_2 + 158, shuchuse4, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchuse4, 1.32, 1.92 );
setEffScaleKey( spep_2 + 158, shuchuse4, 1.32, 1.92 );

setEffRotateKey( spep_2 + 0, shuchuse4, 0 );
setEffRotateKey( spep_2 + 158, shuchuse4, 0 );

setEffAlphaKey( spep_2 + 0, shuchuse4, 255 );
setEffAlphaKey( spep_2 + 158, shuchuse4, 255 );

--流線
ryuusen4 = entryEffectLife( spep_2 + 0,  921, 158, 0x80, -1, 0, 63.5, 40.8 );

setEffMoveKey( spep_2 + 0, ryuusen4, 63.5, 40.8 , 0 );
setEffMoveKey( spep_2 + 158, ryuusen4, 63.5, 40.8 , 0 );

setEffScaleKey( spep_2 + 0, ryuusen4, 1.87, 1.37 );
setEffScaleKey( spep_2 + 78, ryuusen4, 1.87, 1.37 );
setEffScaleKey( spep_2 + 80, ryuusen4, 1.2, 1.15 );
setEffScaleKey( spep_2 + 158, ryuusen4, 1.2, 1.15 );

setEffRotateKey( spep_2 + 0, ryuusen4, 130 );
setEffRotateKey( spep_2 + 78, ryuusen4, 130 );
setEffRotateKey( spep_2 + 79, ryuusen4, 130 );
setEffRotateKey( spep_2 + 80, ryuusen4, 0 );
setEffRotateKey( spep_2 + 158, ryuusen4, 0 );

setEffAlphaKey( spep_2 + 0, ryuusen4, 255 );
setEffAlphaKey( spep_2 + 158, ryuusen4, 255 );

--SE
playSe( spep_2, SE_06); --投げる

-- ** エフェクト等 ** --
entryFade(spep_2+70,6,8,6,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--黒背景
entryFadeBg(spep_2, 0, 158, 0, 0, 0, 0, 180);  -- 黒　背景

--敵の動き
setDisp(spep_2+78,1,1);
changeAnime(spep_2+78,1,104);
changeAnime(spep_2+130,1,108);


setMoveKey( spep_2 + 78, 1, 753.1, 32 , 0 );
setMoveKey( spep_2 + 80, 1, 679.3, 27 , 0 );
setMoveKey( spep_2 + 82, 1, 612.3, 26.8 , 0 );
setMoveKey( spep_2 + 84, 1, 517.4, 12.7 , 0 );
setMoveKey( spep_2 + 86, 1, 428.8, 20 , 0 );
setMoveKey( spep_2 + 88, 1, 314.3, 12.8 , 0 );
setMoveKey( spep_2 + 90, 1, 202.5, 11.6 , 0 );
setMoveKey( spep_2 + 94, 1, 178.3, 1.4 , 0 );
setMoveKey( spep_2 + 96, 1, 189.3, 11.4 , 0 );
setMoveKey( spep_2 + 98, 1, 175.5, 9.5 , 0 );
setMoveKey( spep_2 + 100, 1, 176.7, 11.3 , 0 );
setMoveKey( spep_2 + 102, 1, 152.8, 0.8 , 0 );
setMoveKey( spep_2 + 104, 1, 164.8, 11.1 , 0 );
setMoveKey( spep_2 + 106, 1, 151.5, 9.5 , 0 );
setMoveKey( spep_2 + 108, 1, 153.5, 11 , 0 );
setMoveKey( spep_2 + 110, 1, 129.9, -3.8 , 0 );

setScaleKey( spep_2 + 78, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 80, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 82, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 84, 1, 0.59, 0.59 );
setScaleKey( spep_2 + 86, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 88, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 90, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 94, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 96, 1, 1.24, 1.24 );
setScaleKey( spep_2 + 98, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 100, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 102, 1, 1.28, 1.28 );
setScaleKey( spep_2 + 104, 1, 1.29, 1.29 );
setScaleKey( spep_2 + 106, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 108, 1, 1.31, 1.31 );
setScaleKey( spep_2 + 110, 1, 1.33, 1.33 );

setRotateKey( spep_2 + 78, 1, 0 );
setRotateKey( spep_2 + 110, 1, 0 );
--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

SP_dodge = spep_2+110 ; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

pauseAll( SP_dodge, 67);

--キャラクターの固定
setMoveKey(SP_dodge, 1, 129.9, -3.8, 0 );
setScaleKey(SP_dodge , 1, 1.33, 1.33  );
setRotateKey(SP_dodge,   1, 0);

--キャラクターの固定
setMoveKey(SP_dodge+8, 1, 129.9, -3.8, 0 );
setScaleKey(SP_dodge+8 , 1, 1.33, 1.33  );
setRotateKey(SP_dodge+8,   1, 0);



setDisp(SP_dodge+9, 0, 0);
--setDisp(SP_dodge+9, 1, 0);
--setMoveKey(SP_dodge+9, 1, 0 , 0, 0);
setScaleKey(SP_dodge+9,  1 , 1.4, 1.4 );
setRotateKey(SP_dodge+9,   1, 0);

--setMoveKey(SP_dodge+10, 1, 0 , 0, 0);
setScaleKey(SP_dodge+10,  1 , 1.4, 1.4);
setRotateKey(SP_dodge+10,   1, 0);


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



setMoveKey( spep_2 + 112, 1, 143, 10.9 , 0 );
setMoveKey( spep_2 + 114, 1, 130.2, 13.4 , 0 );
setMoveKey( spep_2 + 116, 1, 133.1, 10.8 , 0 );
setMoveKey( spep_2 + 118, 1, 109.8, -0.2 , 0 );
setMoveKey( spep_2 + 120, 1, 123.7, 10.7 , 0 );
setMoveKey( spep_2 + 122, 1, 111.6, 9.4 , 0 );
setMoveKey( spep_2 + 124, 1, 115.1, 10.6 , 0 );
setMoveKey( spep_2 + 126, 1, 96.2, -4.5 , 0 );
setMoveKey( spep_2 + 128, 1, 107.2, 10.5 , 0 );
setMoveKey( spep_2 + 130, 1, 99.6, 12.5 , 0 );

setMoveKey( spep_2 + 132, 1, 170.1, 16.8 , 0 );
--setMoveKey( spep_2 + 134, 1, 185, 16 , 0 );
setMoveKey( spep_2 + 134, 1, 199.9, 7.1 , 0 );
setMoveKey( spep_2 + 136, 1, 220.9, 14.1 , 0 );
setMoveKey( spep_2 + 138, 1, 238, 10.9 , 0 );
setMoveKey( spep_2 + 140, 1, 265.2, 6.7 , 0 );
setMoveKey( spep_2 + 142, 1, 288.6, 6.3 , 0 );
setMoveKey( spep_2 + 144, 1, 318.1, 8.9 , 0 );
setMoveKey( spep_2 + 146, 1, 341.7, 5.3 , 0 );
setMoveKey( spep_2 + 148, 1, 379.4, 5.6 , 0 );
setMoveKey( spep_2 + 150, 1, 411.2, -1.7 , 0 );
setMoveKey( spep_2 + 152, 1, 449.1, 1.9 , 0 );
setMoveKey( spep_2 + 154, 1, 483.2, -5.8 , 0 );
setMoveKey( spep_2 + 156, 1, 527.4, -3.7 , 0 );


setScaleKey( spep_2 + 112, 1, 1.34, 1.34 );
setScaleKey( spep_2 + 114, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 116, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 118, 1, 1.37, 1.37 );
setScaleKey( spep_2 + 120, 1, 1.38, 1.38 );
setScaleKey( spep_2 + 122, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 124, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 126, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 128, 1, 1.41, 1.41 );
setScaleKey( spep_2 + 130, 1, 1.42, 1.42 );

setScaleKey( spep_2 + 132, 1, 1.15, 1.15 );
--setScaleKey( spep_2 + 134, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 134, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 136, 1, 0.99, 0.99 );
setScaleKey( spep_2 + 138, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 140, 1, 0.86, 0.86 );
setScaleKey( spep_2 + 142, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 144, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 146, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 148, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 150, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 152, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 154, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 156, 1, 0.05, 0.05 );

setRotateKey( spep_2 + 158, 1, 0 );



-- ** エフェクト等 ** --
entryFade(spep_2+150,4,10,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade


--SE
playSe( spep_2+80, SE_06); --近く


--次の準備
spep_3=spep_2+158;
------------------------------------------------------
-- ガ
------------------------------------------------------

changeAnime( spep_3, 1, 107);                         -- 手前ダメージ
setMoveKey(  spep_3,    1,  100,  0,   0);
setScaleKey( spep_3,    1,  1.0, 1.0);
entryEffect( spep_3+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_3+8, SE_10);

setMoveKey(  spep_3+8,   1,    0,   0,   128);
setMoveKey(  spep_3+15,   1,  -60,  -200,  -100);
setMoveKey(  spep_3+16,   1,  -60,  -200,  -100);
setDamage( spep_3+16, 1, 0);  -- ダメージ振動等
setShake(spep_3+7,6,15);
setShake(spep_3+13,15,10);

setRotateKey( spep_3,  1,  30 );
setRotateKey( spep_3+2,  1,  80 );
setRotateKey( spep_3+4,  1, 120 );
setRotateKey( spep_3+6,  1, 160 );
setRotateKey( spep_3+8,  1, 200 );
setRotateKey( spep_3+10,  1, 260 );
setRotateKey( spep_3+12,  1, 320 );
setRotateKey( spep_3+14,  1,   0 );

setShakeChara( spep_3+15, 1, 5,  10);
setShakeChara( spep_3+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep_3+15, 10005, 95, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep_3+15, ct, 30, 10);
setEffRotateKey( spep_3+15, ct, -40);
setEffScaleKey( spep_3+15, ct, 4.0, 4.0);
setEffScaleKey( spep_3+16, ct, 2.0, 2.0);
setEffScaleKey( spep_3+17, ct, 2.6, 2.6);
setEffScaleKey( spep_3+18, ct, 4.0, 4.0);
setEffScaleKey( spep_3+19, ct, 2.6, 2.6);
setEffScaleKey( spep_3+20, ct, 3.8, 3.8);
setEffScaleKey( spep_3+110, ct, 3.8, 3.8);
setEffAlphaKey( spep_3+15, ct, 255);
setEffAlphaKey( spep_3+105, ct, 255);
setEffAlphaKey( spep_3+110, ct, 0);

playSe( spep_3+14, SE_11);
shuchusen = entryEffectLife( spep_3+3,906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_3+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

shuchusenkuro = entryEffectLife( spep_3+15, 1657, 120, 0x80,  -1, 0,  0,  0);   -- 集中線



-- ダメージ表示
dealDamage(spep_3+16);
entryFade( spep_3+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_3+106);

end



