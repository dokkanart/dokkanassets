--ビルス(モナカスーツ)_技名未定(UR)_1015410
--sp_effect_b1_00057

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

SP_01=	152368	;--	前方突進
SP_02=	152369	;--	ラッシュ
SP_03=	152370	;--	ラッシュ貫通エフェクト
SP_04=	152371	;--	ラッシュ時背景
SP_05=	152372	;--	気溜め～ビルス
SP_06=	152373	;--	追撃
SP_07=	152374	;--	追撃時背景
SP_08=	152375	;--	大爆発
SP_09=  152386  ;--	大爆発地面

SP_01x=	152368	;--	前方突進	
SP_02x=	152376	;--	ラッシュ	(敵)
SP_03x=	152370	;--	ラッシュ貫通エフェクト	
SP_04x=	152371	;--	ラッシュ時背景	
SP_05x=	152372	;--	気溜め～ビルス	
--SP_06x=	152373	;--	追撃	
SP_06x=	152377	;--	追撃	(敵)
SP_07x=	152374	;--	追撃時背景	
SP_08x=	152378	;--	大爆発	(敵)
SP_09x=	152386	;--	大爆発地面	
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

multi_frm = 2;

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
--突進
------------------------------------------------------
spep_0=0;

--エフェクト
dash=entryEffectLife(spep_0,SP_01,120,0x100,-1,0,0,0);

setEffScaleKey(spep_0,dash,1.0,1.0);
setEffScaleKey(spep_0+120,dash,1.0,1.0);

setEffRotateKey(spep_0,dash,0);
setEffRotateKey(spep_0+120,dash,0);

setEffAlphaKey(spep_0,dash,255);
setEffAlphaKey(spep_0+120,dash,255);

--集中線
shuchusen5 = entryEffectLife( spep_0 + 2,  906, 116, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_0 + 2, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_0 + 118, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_0 + 2, shuchusen5, 1.5, 1.5 );
setEffScaleKey( spep_0 + 118, shuchusen5, 1.5, 1.5 );

setEffRotateKey( spep_0 + 2, shuchusen5, 180 );
setEffRotateKey( spep_0 + 118, shuchusen5, 180 );

setEffAlphaKey( spep_0 + 2, shuchusen5, 255 );
setEffAlphaKey( spep_0 + 118, shuchusen5, 255 );

--SE
playSe( spep_0, SE_04);--DASH
playSe( spep_0+46, 1002);--DASH
playSe( spep_0+76, 1002);--カットイン

-- ** エフェクト等 ** --
entryFade(spep_0+112, 4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_1=spep_0+120;
------------------------------------------------------
--殴る
------------------------------------------------------

--エフェクト
rush=entryEffectLife(spep_1,SP_02,152,0x100,-1,0,0,0);

setEffScaleKey(spep_1,rush,1.0,1.0);
setEffScaleKey(spep_1+152,rush,1.0,1.0);

setEffRotateKey(spep_1,rush,0);
setEffRotateKey(spep_1+152,rush,0);

setEffAlphaKey(spep_1,rush,255);
setEffAlphaKey(spep_1+152,rush,255);

--エフェクト
rush3=entryEffectLife(spep_1,SP_04,152,0x80,-1,0,0,0);

setEffScaleKey(spep_1,rush3,1.0,1.0);
setEffScaleKey(spep_1+152,rush3,1.0,1.0);

setEffRotateKey(spep_1,rush3,0);
setEffRotateKey(spep_1+152,rush3,0);

setEffAlphaKey(spep_1,rush3,255);
setEffAlphaKey(spep_1+152,rush3,255);

--流線
ryusen = entryEffectLife( spep_1 + 0,  920, 150, 0x80, -1, 0, -1, 0 );

setEffMoveKey( spep_1 + 0, ryusen, -1, 0 , 0 );
setEffMoveKey( spep_1 + 150, ryusen, -1, 0 , 0 );

setEffScaleKey( spep_1 + 0, ryusen, 1, 1 );
--setEffScaleKey( spep_1 + 72, ryusen, 4, 2 );
setEffScaleKey( spep_1 + 70, ryusen, 1, 1 );
setEffScaleKey( spep_1 + 71, ryusen, 4.04, 1.6 );
setEffScaleKey( spep_1 + 72, ryusen, 4.04, 1.6 );
setEffScaleKey( spep_1 + 114, ryusen, 4.04, 1.6 );
setEffScaleKey( spep_1 + 115, ryusen, 4.04, 1.6 );
setEffScaleKey( spep_1 + 116, ryusen, 4.04, 1.6 );
setEffScaleKey( spep_1 + 150, ryusen, 4.04, 1.6 );

setEffRotateKey( spep_1 + 0, ryusen, 0 );
setEffRotateKey( spep_1 + 70, ryusen, 0 );
setEffRotateKey( spep_1 + 71, ryusen, -53.7 );
setEffRotateKey( spep_1 + 72, ryusen, -53.7 );
setEffRotateKey( spep_1 + 114, ryusen, -53.7 );
setEffRotateKey( spep_1 + 115, ryusen, -53.7 );
setEffRotateKey( spep_1 + 116, ryusen, -90 );
setEffRotateKey( spep_1 + 150, ryusen, -90 );

setEffAlphaKey( spep_1 + 0, ryusen, 255 );
setEffAlphaKey( spep_1 + 22, ryusen, 255 );
setEffAlphaKey( spep_1 + 23, ryusen, 0 );
setEffAlphaKey( spep_1 + 24, ryusen, 0 );
--setEffAlphaKey( spep_1 + 73, ryusen, 0 );
setEffAlphaKey( spep_1 + 70, ryusen, 0 );
setEffAlphaKey( spep_1 + 71, ryusen, 255 );
setEffAlphaKey( spep_1 + 72, ryusen, 255 );
setEffAlphaKey( spep_1 + 100, ryusen, 255 );
setEffAlphaKey( spep_1 + 101, ryusen, 0 );
setEffAlphaKey( spep_1 + 102, ryusen, 0 );
setEffAlphaKey( spep_1 + 114, ryusen, 0 );
setEffAlphaKey( spep_1 + 115, ryusen, 0 );
setEffAlphaKey( spep_1 + 116, ryusen, 255 );
setEffAlphaKey( spep_1 + 150, ryusen, 255 );

--エフェクト
rush_bg=entryEffectLife(spep_1,SP_03,152,0x80,-1,0,0,0);

setEffScaleKey(spep_1,rush_bg,1.0,1.0);
setEffScaleKey(spep_1+152,rush_bg,1.0,1.0);

setEffRotateKey(spep_1,rush_bg,0);
setEffRotateKey(spep_1+152,rush_bg,0);

setEffAlphaKey(spep_1,rush_bg,255);
setEffAlphaKey(spep_1+152,rush_bg,255);

--集中線
shuchusen = entryEffectLife( spep_1 + 22,  906, 92, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_1 + 22, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 114, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_1 + 22, shuchusen, 1.2, 1.2 );
setEffScaleKey( spep_1 + 114, shuchusen, 1.2, 1.2 );

setEffRotateKey( spep_1 + 22, shuchusen, 180 );
setEffRotateKey( spep_1 + 114, shuchusen, 180 );

setEffAlphaKey( spep_1 + 22, shuchusen, 0 );
setEffAlphaKey( spep_1 + 23, shuchusen, 255 );
setEffAlphaKey( spep_1 + 24, shuchusen, 255 );
setEffAlphaKey( spep_1 + 40, shuchusen, 255 );
setEffAlphaKey( spep_1 + 41, shuchusen, 0 );
setEffAlphaKey( spep_1 + 42, shuchusen, 0 );
setEffAlphaKey( spep_1 + 56, shuchusen, 0 );
setEffAlphaKey( spep_1 + 57, shuchusen, 255 );
setEffAlphaKey( spep_1 + 58, shuchusen, 255 );
setEffAlphaKey( spep_1 + 70, shuchusen, 255 );
setEffAlphaKey( spep_1 + 71, shuchusen, 0 );
setEffAlphaKey( spep_1 + 72, shuchusen, 0 );
setEffAlphaKey( spep_1 + 100, shuchusen, 0 );
--setEffAlphaKey( spep_1 + 103, shuchusen, 0 );
setEffAlphaKey( spep_1 + 101, shuchusen, 255 );
setEffAlphaKey( spep_1 + 102, shuchusen, 255 );
setEffAlphaKey( spep_1 + 114, shuchusen, 255 );

--敵の動き
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 150, 1, 0 );
changeAnime( spep_1 + 0, 1, 117 );

setMoveKey( spep_1 + 0, 1, 601.3, -17.4 , 0 );
setMoveKey( spep_1 + 2, 1, 557.9, -17.4 , 0 );
setMoveKey( spep_1 + 4, 1, 514.6, -17.4 , 0 );
setMoveKey( spep_1 + 6, 1, 471.2, -17.4 , 0 );
setMoveKey( spep_1 + 8, 1, 427.9, -17.4 , 0 );
setMoveKey( spep_1 + 10, 1, 384.6, -17.4 , 0 );
setMoveKey( spep_1 + 12, 1, 341.2, -17.4 , 0 );
setMoveKey( spep_1 + 14, 1, 297.9, -17.4 , 0 );

setScaleKey( spep_1 + 0, 1, 1.1, 1.1 );
setScaleKey( spep_1 + 14, 1, 1.1, 1.1 );


setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 + 14, 1, 0 );

--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

SP_dodge = spep_1+14 ; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

pauseAll( SP_dodge, 67);

--キャラクターの固定
setMoveKey(SP_dodge, 1,297.9, -17.4 , 0 );
setScaleKey(SP_dodge , 1, 1.1, 1.1);
setRotateKey(SP_dodge,   1, 0 );

--キャラクターの固定
setMoveKey(SP_dodge+8, 1,297.9, -17.4 , 0 );
setScaleKey(SP_dodge+8 , 1, 1.1, 1.1);
setRotateKey(SP_dodge+8,   1, 0 );


setDisp(SP_dodge+9, 0, 0);
--setDisp(SP_dodge+9, 1, 0);
--setMoveKey(SP_dodge+9, 1, 0 , 0, 0);
setScaleKey(SP_dodge+9,1,0.9,0.9);
setRotateKey(SP_dodge+9,   1, 0);

--setMoveKey(SP_dodge+10, 1, 0 , 0, 0);
setScaleKey(SP_dodge+10,  1 , 0.9, 0.9);
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
changeAnime( spep_1 + 23, 1, 108 );--26
changeAnime( spep_1 + 24, 1, 108 );
changeAnime( spep_1 + 57, 1, 106 );--60
changeAnime( spep_1 + 58, 1, 106 );--60
changeAnime( spep_1 + 101, 1, 108 );--104
changeAnime( spep_1 + 102, 1, 108 );--104

setMoveKey( spep_1 + 16, 1, 254.6, -17.4 , 0 );
setMoveKey( spep_1 + 18, 1, 211.2, -17.4 , 0 );
setMoveKey( spep_1 + 20, 1, 147.9, -17.4 , 0 );------------
setMoveKey( spep_1 + 22, 1, 124.6, -17.4 , 0 );
--setMoveKey( spep_1 + 25, 1, 81.2, -17.4 , 0 );
setMoveKey( spep_1 + 23, 1, 72.3, 39.6 , 0 );
setMoveKey( spep_1 + 24, 1, 72.3, 39.6 , 0 );
setMoveKey( spep_1 + 28, 1, 66.7, 33.5 , 0 );
setMoveKey( spep_1 + 30, 1, 77.2, 35.4 , 0 );
setMoveKey( spep_1 + 32, 1, 71.7, 45.3 , 0 );
setMoveKey( spep_1 + 34, 1, 82.2, 47.1 , 0 );
setMoveKey( spep_1 + 36, 1, 76.7, 41 , 0 );
setMoveKey( spep_1 + 38, 1, 87.2, 42.9 , 0 );
setMoveKey( spep_1 + 40, 1, 81.7, 52.8 , 0 );
setMoveKey( spep_1 + 42, 1, 88.2, 50.6 , 0 );
setMoveKey( spep_1 + 44, 1, 84.5, 51.3 , 0 );
setMoveKey( spep_1 + 46, 1, 80.7, 51.9 , 0 );
setMoveKey( spep_1 + 48, 1, 77, 52.5 , 0 );
setMoveKey( spep_1 + 50, 1, 73.2, 53.1 , 0 );
setMoveKey( spep_1 + 52, 1, 69.5, 53.8 , 0 );
setMoveKey( spep_1 + 54, 1, 65.7, 54.4 , 0 );
--setMoveKey( spep_1 + 56, 1, 62, 55 , 0 );
--setMoveKey( spep_1 + 59, 1, 58.2, 55.6 , 0 );
setMoveKey( spep_1 + 57, 1, 45.4, 75.5 , 0 );
setMoveKey( spep_1 + 58, 1, 45.4, 75.5 , 0 );
setMoveKey( spep_1 + 62, 1, 48.8, 76.1 , 0 );
setMoveKey( spep_1 + 64, 1, 68.2, 84.7 , 0 );
setMoveKey( spep_1 + 66, 1, 71.6, 101.3 , 0 );
setMoveKey( spep_1 + 68, 1, 91.1, 109.8 , 0 );
setMoveKey( spep_1 + 70, 1, 94.5, 110.4 , 0 );
setMoveKey( spep_1 + 72, 1, 113.9, 119 , 0 );
setMoveKey( spep_1 + 74, 1, 117.4, 135.5 , 0 );
setMoveKey( spep_1 + 76, 1, 112.1, 115.5 , 0 );
setMoveKey( spep_1 + 78, 1, 102.8, 99.5 , 0 );
setMoveKey( spep_1 + 80, 1, 93.5, 83.4 , 0 );
setMoveKey( spep_1 + 82, 1, 84.2, 67.4 , 0 );
setMoveKey( spep_1 + 84, 1, 74.9, 51.4 , 0 );
setMoveKey( spep_1 + 86, 1, 65.6, 35.3 , 0 );
setMoveKey( spep_1 + 88, 1, 56.4, 19.3 , 0 );
setMoveKey( spep_1 + 90, 1, 47.1, 3.2 , 0 );
setMoveKey( spep_1 + 92, 1, 37.8, -12.8 , 0 );
setMoveKey( spep_1 + 94, 1, 28.5, -28.8 , 0 );
setMoveKey( spep_1 + 96, 1, 19.2, -44.9 , 0 );
setMoveKey( spep_1 + 98, 1, 16.6, -49.4 , 0 );
--setMoveKey( spep_1 + 100, 1, 14, -53.9 , 0 );
--setMoveKey( spep_1 + 103, 1, 11.4, -58.5 , 0 );
setMoveKey( spep_1 + 101, 1, -1.6, -149.3 , 0 );
setMoveKey( spep_1 + 102, 1, -1.6, -149.3 , 0 );
setMoveKey( spep_1 + 106, 1, -9.6, -160 , 0 );
setMoveKey( spep_1 + 108, 1, -1.6, -162.8 , 0 );
setMoveKey( spep_1 + 110, 1, -9.6, -157.6 , 0 );
setMoveKey( spep_1 + 112, 1, -1.6, -160.4 , 0 );
setMoveKey( spep_1 + 114, 1, -9.6, -171.2 , 0 );
setMoveKey( spep_1 + 116, 1, -1.6, -197.8 , 0 );
setMoveKey( spep_1 + 118, 1, -9.6, -216.4 , 0 );
setMoveKey( spep_1 + 120, 1, -1.6, -242.9 , 0 );
setMoveKey( spep_1 + 122, 1, -9.6, -277.5 , 0 );
setMoveKey( spep_1 + 124, 1, -1.6, -304.1 , 0 );
setMoveKey( spep_1 + 126, 1, -9.6, -322.7 , 0 );
setMoveKey( spep_1 + 128, 1, -1.6, -349.2 , 0 );
setMoveKey( spep_1 + 130, 1, -9.6, -340.9 , 0 );
setMoveKey( spep_1 + 132, 1, -1.6, -324.5 , 0 );
setMoveKey( spep_1 + 134, 1, -9.6, -300.2 , 0 );
setMoveKey( spep_1 + 136, 1, -1.6, -283.8 , 0 );
setMoveKey( spep_1 + 138, 1, -9.6, -275.4 , 0 );
setMoveKey( spep_1 + 140, 1, -1.6, -259.1 , 0 );
setMoveKey( spep_1 + 142, 1, -9.6, -234.7 , 0 );
setMoveKey( spep_1 + 144, 1, -1.6, -218.3 , 0 );
setMoveKey( spep_1 + 146, 1, -9.6, -210 , 0 );
setMoveKey( spep_1 + 148, 1, -1.6, -193.6 , 0 );
setMoveKey( spep_1 + 150, 1, -9.6, -169.2 , 0 );

setScaleKey( spep_1 + 150, 1, 1.1, 1.1 );

setRotateKey( spep_1 + 56, 1, 0 );
--setRotateKey( spep_1 + 59, 1, 0 );
setRotateKey( spep_1 + 57, 1, -33.6 );
setRotateKey( spep_1 + 58, 1, -33.6 );
setRotateKey( spep_1 + 98, 1, -33.6 );
setRotateKey( spep_1 + 100, 1, -33.6 );
setRotateKey( spep_1 + 101, 1, 94.3 );
setRotateKey( spep_1 + 102, 1, 94.3 );
setRotateKey( spep_1 + 150, 1, 94.3 );

--文字エントリー
ctga = entryEffectLife( spep_1 + 22,  10005, 22, 0x100, -1, 0, 85.7, 235.9 );--ガッ

setEffMoveKey( spep_1 + 22, ctga, 85.7, 235.9 , 0 );
setEffMoveKey( spep_1 + 28, ctga, 88.5, 234.2 , 0 );
setEffMoveKey( spep_1 + 30, ctga, 85.7, 235.9 , 0 );
setEffMoveKey( spep_1 + 32, ctga, 88.5, 234.2 , 0 );
setEffMoveKey( spep_1 + 34, ctga, 85.7, 235.9 , 0 );
setEffMoveKey( spep_1 + 36, ctga, 88.5, 234.2 , 0 );
setEffMoveKey( spep_1 + 38, ctga, 85.7, 235.9 , 0 );
setEffMoveKey( spep_1 + 40, ctga, 88.5, 234.2 , 0 );
setEffMoveKey( spep_1 + 42, ctga, 85.7, 235.9 , 0 );
setEffMoveKey( spep_1 + 44, ctga, 88.5, 234.2 , 0 );

setEffScaleKey( spep_1 + 22, ctga, 1.61, 1.61 );
setEffScaleKey( spep_1 + 44, ctga, 1.61, 1.61 );

setEffRotateKey( spep_1 + 22, ctga, -25.7 );
setEffRotateKey( spep_1 + 44, ctga, -25.7 );

setEffAlphaKey( spep_1 + 22, ctga, 0 );
setEffAlphaKey( spep_1 + 23, ctga, 255 );
setEffAlphaKey( spep_1 + 24, ctga, 255 );
setEffAlphaKey( spep_1 + 44, ctga, 255 );

--文字エントリー
ctbaki = entryEffectLife( spep_1 + 56,  10020, 22, 0x100, -1, 0, 80.5, 214.8 );--バキ

setEffMoveKey( spep_1 + 56, ctbaki, 80.5, 214.8 , 0 );
setEffMoveKey( spep_1 + 62, ctbaki, 85.2, 210.5 , 0 );
setEffMoveKey( spep_1 + 64, ctbaki, 80.5, 214.8 , 0 );
setEffMoveKey( spep_1 + 66, ctbaki, 85.2, 210.5 , 0 );
setEffMoveKey( spep_1 + 68, ctbaki, 80.5, 214.8 , 0 );
setEffMoveKey( spep_1 + 70, ctbaki, 85.2, 210.5 , 0 );
setEffMoveKey( spep_1 + 72, ctbaki, 80.5, 214.8 , 0 );
setEffMoveKey( spep_1 + 74, ctbaki, 85.2, 210.5 , 0 );
setEffMoveKey( spep_1 + 76, ctbaki, 80.5, 214.8 , 0 );
setEffMoveKey( spep_1 + 78, ctbaki, 85.2, 210.5 , 0 );

setEffScaleKey( spep_1 + 56, ctbaki, 1.61, 1.61 );
setEffScaleKey( spep_1 + 78, ctbaki, 1.61, 1.61 );

setEffRotateKey( spep_1 + 56, ctbaki, 14 );
setEffRotateKey( spep_1 + 78, ctbaki, 14 );

setEffAlphaKey( spep_1 + 56, ctbaki, 0 );
setEffAlphaKey( spep_1 + 57, ctbaki, 255 );
setEffAlphaKey( spep_1 + 58, ctbaki, 255 );
setEffAlphaKey( spep_1 + 78, ctbaki, 255 );

--文字エントリー
ctbagon = entryEffectLife( spep_1 + 100,  10021, 32, 0x100, -1, 0, 71, 172.6 );--バゴォッ

setEffMoveKey( spep_1 + 100, ctbagon, 71, 172.6 , 0 );
setEffMoveKey( spep_1 + 106, ctbagon, 87.5, 200.8 , 0 );
setEffMoveKey( spep_1 + 108, ctbagon, 97.6, 239.2 , 0 );
setEffMoveKey( spep_1 + 110, ctbagon, 116.7, 263.5 , 0 );
setEffMoveKey( spep_1 + 112, ctbagon, 111.8, 274.8 , 0 );
setEffMoveKey( spep_1 + 114, ctbagon, 118.5, 267.9 , 0 );
setEffMoveKey( spep_1 + 116, ctbagon, 113.6, 279.1 , 0 );
setEffMoveKey( spep_1 + 118, ctbagon, 120.3, 272.2 , 0 );
setEffMoveKey( spep_1 + 120, ctbagon, 115.4, 283.5 , 0 );
setEffMoveKey( spep_1 + 122, ctbagon, 122.2, 276.6 , 0 );
setEffMoveKey( spep_1 + 124, ctbagon, 117.3, 287.9 , 0 );
setEffMoveKey( spep_1 + 126, ctbagon, 124, 281 , 0 );
setEffMoveKey( spep_1 + 128, ctbagon, 119.1, 292.2 , 0 );
setEffMoveKey( spep_1 + 130, ctbagon, 125.8, 285.3 , 0 );
setEffMoveKey( spep_1 + 132, ctbagon, 126.7, 287.5 , 0 );

setEffScaleKey( spep_1 + 100, ctbagon, 0.92, 0.92 );
setEffScaleKey( spep_1 + 106, ctbagon, 1.51, 1.51 );
setEffScaleKey( spep_1 + 108, ctbagon, 2.11, 2.11 );
setEffScaleKey( spep_1 + 110, ctbagon, 2.7, 2.7 );
setEffScaleKey( spep_1 + 132, ctbagon, 2.7, 2.7 );

setEffRotateKey( spep_1 + 100, ctbagon, 29 );
setEffRotateKey( spep_1 + 132, ctbagon, 29 );

setEffAlphaKey( spep_1 + 100, ctbagon, 0 );
setEffAlphaKey( spep_1 + 101, ctbagon, 255 );
setEffAlphaKey( spep_1 + 102, ctbagon, 255 );
setEffAlphaKey( spep_1 + 124, ctbagon, 255 );
setEffAlphaKey( spep_1 + 126, ctbagon, 191 );
setEffAlphaKey( spep_1 + 128, ctbagon, 128 );
setEffAlphaKey( spep_1 + 130, ctbagon, 64 );
setEffAlphaKey( spep_1 + 132, ctbagon, 0 );

-- ** エフェクト等 ** --
entryFade(spep_1+144, 4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--SE
playSe( spep_1+24, 1001);--パンチ
playSe( spep_1+58, 1009);--パンチ
playSe( spep_1+102, 1011);--振り下ろし

--次の準備
spep_2=spep_1+152;

------------------------------------------------------
--気ダメ
------------------------------------------------------
--エフェクト
tame=entryEffectLife(spep_2,SP_05,150,0x100,-1,0,0,0);

setEffScaleKey(spep_2,tame,1.0,1.0);
setEffScaleKey(spep_2+150,tame,1.0,1.0);

setEffRotateKey(spep_2,tame,0);
setEffRotateKey(spep_2+150,tame,0);

setEffAlphaKey(spep_2,tame,255);
setEffAlphaKey(spep_2+150,tame,255);

--集中線
shuchusen2 = entryEffectLife( spep_2 + 0,  906, 150, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_2 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_2 +150, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen2, 1.3, 1.3 );
setEffScaleKey( spep_2 + 150, shuchusen2, 1.3, 1.3 );

setEffRotateKey( spep_2 + 0, shuchusen2, 180 );
setEffRotateKey( spep_2 + 150, shuchusen2, 180 );

setEffAlphaKey( spep_2 + 0, shuchusen2, 0 );
setEffAlphaKey( spep_2 + 16, shuchusen2, 0 );
setEffAlphaKey( spep_2 + 17, shuchusen2, 0 );
setEffAlphaKey( spep_2 + 18, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 150, shuchusen2, 255 );

--ゴゴゴ
ctgogo=entryEffectLife(spep_2+80,190006,70,0x100,-1,90,520);--ゴゴゴ

setEffMoveKey(spep_2+80,ctgogo,90,520,0);
setEffMoveKey(spep_2+150,ctgogo,90,520,0);

setEffScaleKey(spep_2+80, ctgogo, 0.7, 0.7);
setEffScaleKey(spep_2+150, ctgogo, 0.7, 0.7);

setEffAlphaKey( spep_2 + 80, ctgogo, 0 );
setEffAlphaKey( spep_2 + 81, ctgogo, 255 );
setEffAlphaKey( spep_2 + 82, ctgogo, 255 );
setEffAlphaKey( spep_2 + 150, ctgogo, 255 );

setEffRotateKey(spep_2+80,ctgogo,0);
setEffRotateKey(spep_2+150,ctgogo,0);

--顔カットイン
speff=entryEffect(spep_2+68,1504,0x100,-1,0,0,0);  --カットイン(顔)
setEffReplaceTexture(speff,3,2);  --カットイン差し替え
speff1=entryEffect(spep_2+68,1505,0x100,-1,0,0,0);  --カットイン(セリフ)
setEffReplaceTexture(speff1,4,5);  --セリフカットイン差し替え

--SE
playSe(  spep_2,  SE_01);  --気ため
playSe( spep_2+80, SE_04);--カットイン

-- ** エフェクト等 ** --
entryFade(spep_2+142, 4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_3=spep_2+150;

------------------------------------------------------
-- Scene03　CARD
------------------------------------------------------


playSe( spep_3, SE_05);
speff = entryEffect(  spep_3,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

shuchusen3 = entryEffectLife( spep_3, 906, 90, 0x100,  -1, 0,  0,  0);  --集中線

setEffMoveKey(  spep_3,  shuchusen3,  0,  0);
setEffScaleKey(  spep_3,  shuchusen3,  1.0,  1.0);
setEffRotateKey(  spep_3,  shuchusen3,  0);
setEffAlphaKey(  spep_3,  shuchusen3,  255);
setEffMoveKey(  spep_3+90,  shuchusen3,  0,  0);
setEffScaleKey(  spep_3+90,  shuchusen3,  1.0,  1.0);
setEffRotateKey(  spep_3+90,  shuchusen3,  0);
setEffAlphaKey(  spep_3+90,  shuchusen3,  255);

entryFade( spep_3+84, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_4=spep_3+90;

------------------------------------------------------
--突進2
------------------------------------------------------
--エフェクト
dash2=entryEffectLife(spep_4,SP_06,60,0x100,-1,0,0,0);

setEffScaleKey(spep_4,dash2,1.0,1.0);
setEffScaleKey(spep_4+60,dash2,1.0,1.0);

setEffRotateKey(spep_4,dash2,0);
setEffRotateKey(spep_4+60,dash2,0);

setEffAlphaKey(spep_4,dash2,255);
setEffAlphaKey(spep_4+60,dash2,255);

--エフェクト
dash2_bg=entryEffectLife(spep_4,SP_07,60,0x80,-1,0,0,0);

setEffScaleKey(spep_4,dash2_bg,1.0,1.0);
setEffScaleKey(spep_4+60,dash2_bg,1.0,1.0);

setEffRotateKey(spep_4,dash2_bg,0);
setEffRotateKey(spep_4+60,dash2_bg,0);

setEffAlphaKey(spep_4,dash2_bg,255);
setEffAlphaKey(spep_4+60,dash2_bg,255);


--流線
ryusen2 = entryEffectLife( spep_4 + 0,  920, 58, 0X80, -1, 0, 0,0 );

setEffMoveKey( spep_4 + 0, ryusen2, -0.1, 0 , 0 );
setEffMoveKey( spep_4 + 58, ryusen2, -0.1, 0 , 0 );

setEffScaleKey( spep_4 + 0, ryusen2, 7.03, 2.61 );
setEffScaleKey( spep_4 + 58, ryusen2, 7.03, 2.61 );

setEffRotateKey( spep_4 + 0, ryusen2, -90 );
setEffRotateKey( spep_4 + 58, ryusen2, -90 );

setEffAlphaKey( spep_4 + 0, ryusen2, 255 );
setEffAlphaKey( spep_4 + 58, ryusen2, 255 );

-- ** エフェクト等 ** --
entryFade(spep_4+52, 4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--SE
playSe( spep_4, 44);--カットイン

--次の準備
spep_5=spep_4+60;
------------------------------------------------------
-- 爆発
------------------------------------------------------
--エフェクト
explosion_f=entryEffect(spep_5,SP_09,0x100,-1,0,0,0);

setEffScaleKey(spep_5,explosion_f,1.0,1.0);
setEffScaleKey(spep_5+250,explosion_f,1.0,1.0);

setEffRotateKey(spep_5,explosion_f,0);
setEffRotateKey(spep_5+250,explosion_f,0);

setEffAlphaKey(spep_5,explosion_f,255);
setEffAlphaKey(spep_5+250,explosion_f,255);

--エフェクト
explosion_b=entryEffect(spep_5,SP_08,0x80,-1,0,0,0);

setEffScaleKey(spep_5,explosion_b,1.0,1.0);
setEffScaleKey(spep_5+250,explosion_b,1.0,1.0);

setEffRotateKey(spep_5,explosion_b,0);
setEffRotateKey(spep_5+250,explosion_b,0);

setEffAlphaKey(spep_5,explosion_b,255);
setEffAlphaKey(spep_5+250,explosion_b,255);

--敵の動き
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 22, 1, 0 );
changeAnime( spep_5 + 0, 1, 108 );

setMoveKey( spep_5 -2 + 0, 1, 0, 687.5 , 0 );
setMoveKey( spep_5 -2 + 2, 1, 0, 608.8 , 0 );
setMoveKey( spep_5 -2 + 4, 1, 0, 530.2 , 0 );
setMoveKey( spep_5 -2 + 6, 1, 0, 451.6 , 0 );
setMoveKey( spep_5 -2 + 8, 1, 0, 372.8 , 0 );
setMoveKey( spep_5 -2 + 10, 1, 0, 294.2 , 0 );
setMoveKey( spep_5 -2 + 12, 1, 0, 163.1 , 0 );
setMoveKey( spep_5 -2 + 14, 1, 0, 31.9 , 0 );
setMoveKey( spep_5 -2 + 16, 1, 0, -99.2 , 0 );
setMoveKey( spep_5 -2 + 18, 1, 0, -230.3 , 0 );
setMoveKey( spep_5 -2 + 20, 1, 0, -361.4 , 0 );
setMoveKey( spep_5 -2 + 22, 1, 0, -492.5 , 0 );

setScaleKey( spep_5 + 0, 1, 0.3, 0.3 );
setScaleKey( spep_5 + 22, 1, 0.3, 0.3 );

setRotateKey( spep_5 + 0, 1, 90 );
setRotateKey( spep_5 + 22, 1, 90 );

--集中線
shuchusen4 = entryEffectLife( spep_5 + 22,  906, 228, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_5 + 22, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_5 + 250, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_5 + 22, shuchusen4, 1, 1 );
setEffScaleKey( spep_5 + 250, shuchusen4, 1, 1 );

setEffRotateKey( spep_5 + 22, shuchusen4, 180 );
setEffRotateKey( spep_5 + 250, shuchusen4, 180 );

setEffAlphaKey( spep_5 + 22, shuchusen4, 255 );
setEffAlphaKey( spep_5 + 36, shuchusen4, 255 );
setEffAlphaKey( spep_5 + 37, shuchusen4, 0 );
setEffAlphaKey( spep_5 + 38, shuchusen4, 0 );
setEffAlphaKey( spep_5 + 57, shuchusen4, 0 );
setEffAlphaKey( spep_5 + 58, shuchusen4, 0 );
setEffAlphaKey( spep_5 + 59, shuchusen4, 255 );
setEffAlphaKey( spep_5 + 60, shuchusen4, 255 );
setEffAlphaKey( spep_5 + 92, shuchusen4, 255 );
setEffAlphaKey( spep_5 + 93, shuchusen4, 0 );
setEffAlphaKey( spep_5 + 94, shuchusen4, 0 );
setEffAlphaKey( spep_5 + 126, shuchusen4, 0 );
setEffAlphaKey( spep_5 + 127, shuchusen4, 0 );
setEffAlphaKey( spep_5 + 128, shuchusen4, 255 );
setEffAlphaKey( spep_5 + 250, shuchusen4, 255 );

entryFade( spep_5+122, 4, 2, 4, fcolor_r, 0, 0, 255);     -- white fade

--SE
playSe( spep_5+18, 1023);--爆発
playSe( spep_5+114, 1024);--爆発

-- ダメージ表示
dealDamage( spep_5+130);
entryFade( spep_5+230, 9,  10, 1, 8, 8, 8, 255); -- black fade
endPhase( spep_5+240);

else
------------------------------------------------------
--敵側
------------------------------------------------------
------------------------------------------------------
--突進
------------------------------------------------------
spep_0=0;

--エフェクト
dash=entryEffectLife(spep_0,SP_01x,120,0x100,-1,0,0,0);

setEffScaleKey(spep_0,dash,-1.0,1.0);
setEffScaleKey(spep_0+120,dash,-1.0,1.0);

setEffRotateKey(spep_0,dash,0);
setEffRotateKey(spep_0+120,dash,0);

setEffAlphaKey(spep_0,dash,255);
setEffAlphaKey(spep_0+120,dash,255);

--集中線
shuchusen5 = entryEffectLife( spep_0 + 2,  906, 116, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_0 + 2, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_0 + 118, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_0 + 2, shuchusen5, 1.5, 1.5 );
setEffScaleKey( spep_0 + 118, shuchusen5, 1.5, 1.5 );

setEffRotateKey( spep_0 + 2, shuchusen5, 180 );
setEffRotateKey( spep_0 + 118, shuchusen5, 180 );

setEffAlphaKey( spep_0 + 2, shuchusen5, 255 );
setEffAlphaKey( spep_0 + 118, shuchusen5, 255 );

--SE
playSe( spep_0, SE_04);--DASH
playSe( spep_0+46, 1002);--DASH
playSe( spep_0+76, 1002);--カットイン

-- ** エフェクト等 ** --
entryFade(spep_0+112, 4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_1=spep_0+120;
------------------------------------------------------
--殴る
------------------------------------------------------

--エフェクト
rush=entryEffectLife(spep_1,SP_02x,152,0x100,-1,0,0,0);

setEffScaleKey(spep_1,rush,1.0,1.0);
setEffScaleKey(spep_1+152,rush,1.0,1.0);

setEffRotateKey(spep_1,rush,0);
setEffRotateKey(spep_1+152,rush,0);

setEffAlphaKey(spep_1,rush,255);
setEffAlphaKey(spep_1+152,rush,255);

--エフェクト
rush3=entryEffectLife(spep_1,SP_04x,152,0x80,-1,0,0,0);

setEffScaleKey(spep_1,rush3,1.0,1.0);
setEffScaleKey(spep_1+152,rush3,1.0,1.0);

setEffRotateKey(spep_1,rush3,0);
setEffRotateKey(spep_1+152,rush3,0);

setEffAlphaKey(spep_1,rush3,255);
setEffAlphaKey(spep_1+152,rush3,255);

--流線
ryusen = entryEffectLife( spep_1 + 0,  920, 150, 0x80, -1, 0, -1, 0 );

setEffMoveKey( spep_1 + 0, ryusen, -1, 0 , 0 );
setEffMoveKey( spep_1 + 150, ryusen, -1, 0 , 0 );

setEffScaleKey( spep_1 + 0, ryusen, 1, 1 );
--setEffScaleKey( spep_1 + 72, ryusen, 4, 2 );
setEffScaleKey( spep_1 + 70, ryusen, 4, 2 );
setEffScaleKey( spep_1 + 71, ryusen, 4.04, 1.6 );
setEffScaleKey( spep_1 + 72, ryusen, 4.04, 1.6 );
setEffScaleKey( spep_1 + 114, ryusen, 4.04, 1.6 );
setEffScaleKey( spep_1 + 115, ryusen, 4.04, 1.6 );
setEffScaleKey( spep_1 + 116, ryusen, 4.04, 1.6 );
setEffScaleKey( spep_1 + 150, ryusen, 4.04, 1.6 );

setEffRotateKey( spep_1 + 0, ryusen, 0 );
setEffRotateKey( spep_1 + 70, ryusen, 0 );
setEffRotateKey( spep_1 + 71, ryusen, -53.7 );
setEffRotateKey( spep_1 + 72, ryusen, -53.7 );
setEffRotateKey( spep_1 + 114, ryusen, -53.7 );
setEffRotateKey( spep_1 + 115, ryusen, -53.7 );
setEffRotateKey( spep_1 + 116, ryusen, -90 );
setEffRotateKey( spep_1 + 150, ryusen, -90 );

setEffAlphaKey( spep_1 + 0, ryusen, 255 );
setEffAlphaKey( spep_1 + 22, ryusen, 255 );
setEffAlphaKey( spep_1 + 23, ryusen, 0 );
setEffAlphaKey( spep_1 + 24, ryusen, 0 );
--setEffAlphaKey( spep_1 + 73, ryusen, 0 );
setEffAlphaKey( spep_1 + 70, ryusen, 0 );
setEffAlphaKey( spep_1 + 71, ryusen, 255 );
setEffAlphaKey( spep_1 + 72, ryusen, 255 );
setEffAlphaKey( spep_1 + 100, ryusen, 255 );
setEffAlphaKey( spep_1 + 101, ryusen, 0 );
setEffAlphaKey( spep_1 + 102, ryusen, 0 );
setEffAlphaKey( spep_1 + 114, ryusen, 0 );
setEffAlphaKey( spep_1 + 115, ryusen, 0 );
setEffAlphaKey( spep_1 + 116, ryusen, 255 );
setEffAlphaKey( spep_1 + 150, ryusen, 255 );

--エフェクト
rush_bg=entryEffectLife(spep_1,SP_03x,152,0x80,-1,0,0,0);

setEffScaleKey(spep_1,rush_bg,1.0,1.0);
setEffScaleKey(spep_1+152,rush_bg,1.0,1.0);

setEffRotateKey(spep_1,rush_bg,0);
setEffRotateKey(spep_1+152,rush_bg,0);

setEffAlphaKey(spep_1,rush_bg,255);
setEffAlphaKey(spep_1+152,rush_bg,255);

--集中線
shuchusen = entryEffectLife( spep_1 + 22,  906, 92, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_1 + 22, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 114, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_1 + 22, shuchusen, 1.2, 1.2 );
setEffScaleKey( spep_1 + 114, shuchusen, 1.2, 1.2 );

setEffRotateKey( spep_1 + 22, shuchusen, 180 );
setEffRotateKey( spep_1 + 114, shuchusen, 180 );

setEffAlphaKey( spep_1 + 22, shuchusen, 0 );
setEffAlphaKey( spep_1 + 23, shuchusen, 255 );
setEffAlphaKey( spep_1 + 24, shuchusen, 255 );
setEffAlphaKey( spep_1 + 40, shuchusen, 255 );
setEffAlphaKey( spep_1 + 41, shuchusen, 0 );
setEffAlphaKey( spep_1 + 42, shuchusen, 0 );
setEffAlphaKey( spep_1 + 56, shuchusen, 0 );
setEffAlphaKey( spep_1 + 57, shuchusen, 255 );
setEffAlphaKey( spep_1 + 58, shuchusen, 255 );
setEffAlphaKey( spep_1 + 70, shuchusen, 255 );
setEffAlphaKey( spep_1 + 71, shuchusen, 0 );
setEffAlphaKey( spep_1 + 72, shuchusen, 0 );
setEffAlphaKey( spep_1 + 100, shuchusen, 0 );
--setEffAlphaKey( spep_1 + 103, shuchusen, 0 );
setEffAlphaKey( spep_1 + 101, shuchusen, 255 );
setEffAlphaKey( spep_1 + 102, shuchusen, 255 );
setEffAlphaKey( spep_1 + 114, shuchusen, 255 );

--敵の動き
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 150, 1, 0 );
changeAnime( spep_1 + 0, 1, 117 );

setMoveKey( spep_1 + 0, 1, 601.3, -17.4 , 0 );
setMoveKey( spep_1 + 2, 1, 557.9, -17.4 , 0 );
setMoveKey( spep_1 + 4, 1, 514.6, -17.4 , 0 );
setMoveKey( spep_1 + 6, 1, 471.2, -17.4 , 0 );
setMoveKey( spep_1 + 8, 1, 427.9, -17.4 , 0 );
setMoveKey( spep_1 + 10, 1, 384.6, -17.4 , 0 );
setMoveKey( spep_1 + 12, 1, 341.2, -17.4 , 0 );
setMoveKey( spep_1 + 14, 1, 297.9, -17.4 , 0 );

setScaleKey( spep_1 + 0, 1, 1.1, 1.1 );
setScaleKey( spep_1 + 14, 1, 1.1, 1.1 );


setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 + 14, 1, 0 );

--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

SP_dodge = spep_1+14 ; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

pauseAll( SP_dodge, 67);

--キャラクターの固定
setMoveKey(SP_dodge, 1,297.9, -17.4 , 0 );
setScaleKey(SP_dodge , 1, 1.1, 1.1);
setRotateKey(SP_dodge,   1, 0 );

--キャラクターの固定
setMoveKey(SP_dodge+8, 1,297.9, -17.4 , 0 );
setScaleKey(SP_dodge+8 , 1, 1.1, 1.1);
setRotateKey(SP_dodge+8,   1, 0 );


setDisp(SP_dodge+9, 0, 0);
--setDisp(SP_dodge+9, 1, 0);
--setMoveKey(SP_dodge+9, 1, 0 , 0, 0);
setScaleKey(SP_dodge+9,1,0.9,0.9);
setRotateKey(SP_dodge+9,   1, 0);

--setMoveKey(SP_dodge+10, 1, 0 , 0, 0);
setScaleKey(SP_dodge+10,  1 , 0.9, 0.9);
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
changeAnime( spep_1 + 23, 1, 108 );--26
changeAnime( spep_1 + 24, 1, 108 );
changeAnime( spep_1 + 57, 1, 106 );--60
changeAnime( spep_1 + 58, 1, 106 );--60
changeAnime( spep_1 + 101, 1, 108 );--104
changeAnime( spep_1 + 102, 1, 108 );--104

setMoveKey( spep_1 + 16, 1, 254.6, -17.4 , 0 );
setMoveKey( spep_1 + 18, 1, 211.2, -17.4 , 0 );
setMoveKey( spep_1 + 20, 1, 147.9, -17.4 , 0 );
setMoveKey( spep_1 + 22, 1, 124.6, -17.4 , 0 );
--setMoveKey( spep_1 + 25, 1, 81.2, -17.4 , 0 );
setMoveKey( spep_1 + 23, 1, 72.3, 39.6 , 0 );
setMoveKey( spep_1 + 24, 1, 72.3, 39.6 , 0 );
setMoveKey( spep_1 + 28, 1, 66.7, 33.5 , 0 );
setMoveKey( spep_1 + 30, 1, 77.2, 35.4 , 0 );
setMoveKey( spep_1 + 32, 1, 71.7, 45.3 , 0 );
setMoveKey( spep_1 + 34, 1, 82.2, 47.1 , 0 );
setMoveKey( spep_1 + 36, 1, 76.7, 41 , 0 );
setMoveKey( spep_1 + 38, 1, 87.2, 42.9 , 0 );
setMoveKey( spep_1 + 40, 1, 81.7, 52.8 , 0 );
setMoveKey( spep_1 + 42, 1, 88.2, 50.6 , 0 );
setMoveKey( spep_1 + 44, 1, 84.5, 51.3 , 0 );
setMoveKey( spep_1 + 46, 1, 80.7, 51.9 , 0 );
setMoveKey( spep_1 + 48, 1, 77, 52.5 , 0 );
setMoveKey( spep_1 + 50, 1, 73.2, 53.1 , 0 );
setMoveKey( spep_1 + 52, 1, 69.5, 53.8 , 0 );
setMoveKey( spep_1 + 54, 1, 65.7, 54.4 , 0 );
--setMoveKey( spep_1 + 56, 1, 62, 55 , 0 );
--setMoveKey( spep_1 + 59, 1, 58.2, 55.6 , 0 );
setMoveKey( spep_1 + 57, 1, 45.4, 75.5 , 0 );
setMoveKey( spep_1 + 58, 1, 45.4, 75.5 , 0 );
setMoveKey( spep_1 + 62, 1, 48.8, 76.1 , 0 );
setMoveKey( spep_1 + 64, 1, 68.2, 84.7 , 0 );
setMoveKey( spep_1 + 66, 1, 71.6, 101.3 , 0 );
setMoveKey( spep_1 + 68, 1, 91.1, 109.8 , 0 );
setMoveKey( spep_1 + 70, 1, 94.5, 110.4 , 0 );
setMoveKey( spep_1 + 72, 1, 113.9, 119 , 0 );
setMoveKey( spep_1 + 74, 1, 117.4, 135.5 , 0 );
setMoveKey( spep_1 + 76, 1, 112.1, 115.5 , 0 );
setMoveKey( spep_1 + 78, 1, 102.8, 99.5 , 0 );
setMoveKey( spep_1 + 80, 1, 93.5, 83.4 , 0 );
setMoveKey( spep_1 + 82, 1, 84.2, 67.4 , 0 );
setMoveKey( spep_1 + 84, 1, 74.9, 51.4 , 0 );
setMoveKey( spep_1 + 86, 1, 65.6, 35.3 , 0 );
setMoveKey( spep_1 + 88, 1, 56.4, 19.3 , 0 );
setMoveKey( spep_1 + 90, 1, 47.1, 3.2 , 0 );
setMoveKey( spep_1 + 92, 1, 37.8, -12.8 , 0 );
setMoveKey( spep_1 + 94, 1, 28.5, -28.8 , 0 );
setMoveKey( spep_1 + 96, 1, 19.2, -44.9 , 0 );
setMoveKey( spep_1 + 98, 1, 16.6, -49.4 , 0 );
--setMoveKey( spep_1 + 100, 1, 14, -53.9 , 0 );
--setMoveKey( spep_1 + 103, 1, 11.4, -58.5 , 0 );
setMoveKey( spep_1 + 101, 1, -1.6, -149.3 , 0 );
setMoveKey( spep_1 + 102, 1, -1.6, -149.3 , 0 );
setMoveKey( spep_1 + 106, 1, -9.6, -160 , 0 );
setMoveKey( spep_1 + 108, 1, -1.6, -162.8 , 0 );
setMoveKey( spep_1 + 110, 1, -9.6, -157.6 , 0 );
setMoveKey( spep_1 + 112, 1, -1.6, -160.4 , 0 );
setMoveKey( spep_1 + 114, 1, -9.6, -171.2 , 0 );
setMoveKey( spep_1 + 116, 1, -1.6, -197.8 , 0 );
setMoveKey( spep_1 + 118, 1, -9.6, -216.4 , 0 );
setMoveKey( spep_1 + 120, 1, -1.6, -242.9 , 0 );
setMoveKey( spep_1 + 122, 1, -9.6, -277.5 , 0 );
setMoveKey( spep_1 + 124, 1, -1.6, -304.1 , 0 );
setMoveKey( spep_1 + 126, 1, -9.6, -322.7 , 0 );
setMoveKey( spep_1 + 128, 1, -1.6, -349.2 , 0 );
setMoveKey( spep_1 + 130, 1, -9.6, -340.9 , 0 );
setMoveKey( spep_1 + 132, 1, -1.6, -324.5 , 0 );
setMoveKey( spep_1 + 134, 1, -9.6, -300.2 , 0 );
setMoveKey( spep_1 + 136, 1, -1.6, -283.8 , 0 );
setMoveKey( spep_1 + 138, 1, -9.6, -275.4 , 0 );
setMoveKey( spep_1 + 140, 1, -1.6, -259.1 , 0 );
setMoveKey( spep_1 + 142, 1, -9.6, -234.7 , 0 );
setMoveKey( spep_1 + 144, 1, -1.6, -218.3 , 0 );
setMoveKey( spep_1 + 146, 1, -9.6, -210 , 0 );
setMoveKey( spep_1 + 148, 1, -1.6, -193.6 , 0 );
setMoveKey( spep_1 + 150, 1, -9.6, -169.2 , 0 );

setScaleKey( spep_1 + 150, 1, 1.1, 1.1 );

setRotateKey( spep_1 + 56, 1, 0 );
--setRotateKey( spep_1 + 59, 1, 0 );
setRotateKey( spep_1 + 57, 1, -33.6 );
setRotateKey( spep_1 + 58, 1, -33.6 );
setRotateKey( spep_1 + 98, 1, -33.6 );
setRotateKey( spep_1 + 100, 1, -33.6 );
setRotateKey( spep_1 + 101, 1, 94.3 );
setRotateKey( spep_1 + 102, 1, 94.3 );
setRotateKey( spep_1 + 150, 1, 94.3 );

--文字エントリー
ctga = entryEffectLife( spep_1 + 22,  10005, 22, 0x100, -1, 0, 85.7, 235.9 );--ガッ

setEffMoveKey( spep_1 + 22, ctga, 85.7, 235.9 , 0 );
setEffMoveKey( spep_1 + 28, ctga, 88.5, 234.2 , 0 );
setEffMoveKey( spep_1 + 30, ctga, 85.7, 235.9 , 0 );
setEffMoveKey( spep_1 + 32, ctga, 88.5, 234.2 , 0 );
setEffMoveKey( spep_1 + 34, ctga, 85.7, 235.9 , 0 );
setEffMoveKey( spep_1 + 36, ctga, 88.5, 234.2 , 0 );
setEffMoveKey( spep_1 + 38, ctga, 85.7, 235.9 , 0 );
setEffMoveKey( spep_1 + 40, ctga, 88.5, 234.2 , 0 );
setEffMoveKey( spep_1 + 42, ctga, 85.7, 235.9 , 0 );
setEffMoveKey( spep_1 + 44, ctga, 88.5, 234.2 , 0 );

setEffScaleKey( spep_1 + 22, ctga, 1.61, 1.61 );
setEffScaleKey( spep_1 + 44, ctga, 1.61, 1.61 );

setEffRotateKey( spep_1 + 22, ctga, -25.7 );
setEffRotateKey( spep_1 + 44, ctga, -25.7 );

setEffAlphaKey( spep_1 + 22, ctga, 0 );
setEffAlphaKey( spep_1 + 23, ctga, 255 );
setEffAlphaKey( spep_1 + 24, ctga, 255 );
setEffAlphaKey( spep_1 + 44, ctga, 255 );

--文字エントリー
ctbaki = entryEffectLife( spep_1 + 56,  10020, 22, 0x100, -1, 0, 80.5, 214.8 );--バキ

setEffMoveKey( spep_1 + 56, ctbaki, 80.5, 214.8 , 0 );
setEffMoveKey( spep_1 + 62, ctbaki, 85.2, 210.5 , 0 );
setEffMoveKey( spep_1 + 64, ctbaki, 80.5, 214.8 , 0 );
setEffMoveKey( spep_1 + 66, ctbaki, 85.2, 210.5 , 0 );
setEffMoveKey( spep_1 + 68, ctbaki, 80.5, 214.8 , 0 );
setEffMoveKey( spep_1 + 70, ctbaki, 85.2, 210.5 , 0 );
setEffMoveKey( spep_1 + 72, ctbaki, 80.5, 214.8 , 0 );
setEffMoveKey( spep_1 + 74, ctbaki, 85.2, 210.5 , 0 );
setEffMoveKey( spep_1 + 76, ctbaki, 80.5, 214.8 , 0 );
setEffMoveKey( spep_1 + 78, ctbaki, 85.2, 210.5 , 0 );

setEffScaleKey( spep_1 + 56, ctbaki, 1.61, 1.61 );
setEffScaleKey( spep_1 + 78, ctbaki, 1.61, 1.61 );

setEffRotateKey( spep_1 + 56, ctbaki, 14 );
setEffRotateKey( spep_1 + 78, ctbaki, 14 );

setEffAlphaKey( spep_1 + 56, ctbaki, 0 );
setEffAlphaKey( spep_1 + 57, ctbaki, 255 );
setEffAlphaKey( spep_1 + 58, ctbaki, 255 );
setEffAlphaKey( spep_1 + 78, ctbaki, 255 );

--文字エントリー
ctbagon = entryEffectLife( spep_1 + 100,  10021, 32, 0x100, -1, 0, 71, 172.6 );--バゴォッ

setEffMoveKey( spep_1 + 100, ctbagon, 71, 172.6 , 0 );
setEffMoveKey( spep_1 + 106, ctbagon, 87.5, 200.8 , 0 );
setEffMoveKey( spep_1 + 108, ctbagon, 97.6, 239.2 , 0 );
setEffMoveKey( spep_1 + 110, ctbagon, 116.7, 263.5 , 0 );
setEffMoveKey( spep_1 + 112, ctbagon, 111.8, 274.8 , 0 );
setEffMoveKey( spep_1 + 114, ctbagon, 118.5, 267.9 , 0 );
setEffMoveKey( spep_1 + 116, ctbagon, 113.6, 279.1 , 0 );
setEffMoveKey( spep_1 + 118, ctbagon, 120.3, 272.2 , 0 );
setEffMoveKey( spep_1 + 120, ctbagon, 115.4, 283.5 , 0 );
setEffMoveKey( spep_1 + 122, ctbagon, 122.2, 276.6 , 0 );
setEffMoveKey( spep_1 + 124, ctbagon, 117.3, 287.9 , 0 );
setEffMoveKey( spep_1 + 126, ctbagon, 124, 281 , 0 );
setEffMoveKey( spep_1 + 128, ctbagon, 119.1, 292.2 , 0 );
setEffMoveKey( spep_1 + 130, ctbagon, 125.8, 285.3 , 0 );
setEffMoveKey( spep_1 + 132, ctbagon, 126.7, 287.5 , 0 );

setEffScaleKey( spep_1 + 100, ctbagon, 0.92, 0.92 );
setEffScaleKey( spep_1 + 106, ctbagon, 1.51, 1.51 );
setEffScaleKey( spep_1 + 108, ctbagon, 2.11, 2.11 );
setEffScaleKey( spep_1 + 110, ctbagon, 2.7, 2.7 );
setEffScaleKey( spep_1 + 132, ctbagon, 2.7, 2.7 );

setEffRotateKey( spep_1 + 100, ctbagon, 29 );
setEffRotateKey( spep_1 + 132, ctbagon, 29 );

setEffAlphaKey( spep_1 + 100, ctbagon, 0 );
setEffAlphaKey( spep_1 + 101, ctbagon, 255 );
setEffAlphaKey( spep_1 + 102, ctbagon, 255 );
setEffAlphaKey( spep_1 + 124, ctbagon, 255 );
setEffAlphaKey( spep_1 + 126, ctbagon, 191 );
setEffAlphaKey( spep_1 + 128, ctbagon, 128 );
setEffAlphaKey( spep_1 + 130, ctbagon, 64 );
setEffAlphaKey( spep_1 + 132, ctbagon, 0 );

-- ** エフェクト等 ** --
entryFade(spep_1+144, 4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--SE
playSe( spep_1+24, 1001);--パンチ
playSe( spep_1+58, 1009);--パンチ
playSe( spep_1+102, 1011);--振り下ろし

--次の準備
spep_2=spep_1+152;

------------------------------------------------------
--気ダメ
------------------------------------------------------
--エフェクト
tame=entryEffectLife(spep_2,SP_05x,150,0x100,-1,0,0,0);

setEffScaleKey(spep_2,tame,-1.0,1.0);
setEffScaleKey(spep_2+150,tame,-1.0,1.0);

setEffRotateKey(spep_2,tame,0);
setEffRotateKey(spep_2+150,tame,0);

setEffAlphaKey(spep_2,tame,255);
setEffAlphaKey(spep_2+150,tame,255);

--集中線
shuchusen2 = entryEffectLife( spep_2 + 0,  906, 150, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_2 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_2 +150, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen2, 1.3, 1.3 );
setEffScaleKey( spep_2 + 150, shuchusen2, 1.3, 1.3 );

setEffRotateKey( spep_2 + 0, shuchusen2, 180 );
setEffRotateKey( spep_2 + 150, shuchusen2, 180 );

setEffAlphaKey( spep_2 + 0, shuchusen2, 0 );
setEffAlphaKey( spep_2 + 16, shuchusen2, 0 );
setEffAlphaKey( spep_2 + 17, shuchusen2, 0 );
setEffAlphaKey( spep_2 + 18, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 150, shuchusen2, 255 );

--ゴゴゴ
ctgogo=entryEffectLife(spep_2+80,190006,70,0x100,-1,90,520);--ゴゴゴ

setEffMoveKey(spep_2+80,ctgogo,90,520,0);
setEffMoveKey(spep_2+150,ctgogo,90,520,0);

setEffScaleKey(spep_2+80, ctgogo, -0.7, 0.7);
setEffScaleKey(spep_2+150, ctgogo, -0.7, 0.7);

setEffAlphaKey( spep_2 + 80, ctgogo, 0 );
setEffAlphaKey( spep_2 + 81, ctgogo, 255 );
setEffAlphaKey( spep_2 + 82, ctgogo, 255 );
setEffAlphaKey( spep_2 + 150, ctgogo, 255 );

setEffRotateKey(spep_2+80,ctgogo,0);
setEffRotateKey(spep_2+150,ctgogo,0);

--顔カットイン
--speff=entryEffect(spep_2+12,1504,0x100,-1,0,0,0);  --カットイン(顔)
--setEffReplaceTexture(speff,3,2);  --カットイン差し替え
--speff1=entryEffect(spep_2+12,1505,0x100,-1,0,0,0);  --カットイン(セリフ)
--setEffReplaceTexture(speff1,4,5);  --セリフカットイン差し替え

--SE
playSe(  spep_2,  SE_01);  --気ため
playSe( spep_2+80, SE_04);--カットイン

-- ** エフェクト等 ** --
entryFade(spep_2+142, 4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_3=spep_2+150;

------------------------------------------------------
-- Scene03　CARD
------------------------------------------------------


playSe( spep_3, SE_05);
speff = entryEffect(  spep_3,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

shuchusen3 = entryEffectLife( spep_3, 906, 90, 0x100,  -1, 0,  0,  0);  --集中線

setEffMoveKey(  spep_3,  shuchusen3,  0,  0);
setEffScaleKey(  spep_3,  shuchusen3,  1.0,  1.0);
setEffRotateKey(  spep_3,  shuchusen3,  0);
setEffAlphaKey(  spep_3,  shuchusen3,  255);
setEffMoveKey(  spep_3+90,  shuchusen3,  0,  0);
setEffScaleKey(  spep_3+90,  shuchusen3,  1.0,  1.0);
setEffRotateKey(  spep_3+90,  shuchusen3,  0);
setEffAlphaKey(  spep_3+90,  shuchusen3,  255);

entryFade( spep_3+84, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_4=spep_3+90;

------------------------------------------------------
--突進2
------------------------------------------------------
--エフェクト
dash2=entryEffectLife(spep_4,SP_06x,60,0x100,-1,0,0,0);

setEffScaleKey(spep_4,dash2,1.0,1.0);
setEffScaleKey(spep_4+60,dash2,1.0,1.0);

setEffRotateKey(spep_4,dash2,0);
setEffRotateKey(spep_4+60,dash2,0);

setEffAlphaKey(spep_4,dash2,255);
setEffAlphaKey(spep_4+60,dash2,255);

--エフェクト
dash2_bg=entryEffectLife(spep_4,SP_07x,60,0x80,-1,0,0,0);

setEffScaleKey(spep_4,dash2_bg,1.0,1.0);
setEffScaleKey(spep_4+60,dash2_bg,1.0,1.0);

setEffRotateKey(spep_4,dash2_bg,0);
setEffRotateKey(spep_4+60,dash2_bg,0);

setEffAlphaKey(spep_4,dash2_bg,255);
setEffAlphaKey(spep_4+60,dash2_bg,255);


--流線
ryusen2 = entryEffectLife( spep_4 + 0,  920, 58, 0X80, -1, 0, 0,0 );

setEffMoveKey( spep_4 + 0, ryusen2, -0.1, 0 , 0 );
setEffMoveKey( spep_4 + 58, ryusen2, -0.1, 0 , 0 );

setEffScaleKey( spep_4 + 0, ryusen2, 7.03, 2.61 );
setEffScaleKey( spep_4 + 58, ryusen2, 7.03, 2.61 );

setEffRotateKey( spep_4 + 0, ryusen2, -90 );
setEffRotateKey( spep_4 + 58, ryusen2, -90 );

setEffAlphaKey( spep_4 + 0, ryusen2, 255 );
setEffAlphaKey( spep_4 + 58, ryusen2, 255 );
 
entryFade( spep_4+52,  4,  6,  4,  fcolor_r,  fcolor_g,  fcolor_b,  255);

--SE
playSe( spep_4, 44);--カットイン

--次の準備
spep_5=spep_4+60;
------------------------------------------------------
-- 爆発
------------------------------------------------------
--エフェクト
explosion_f=entryEffect(spep_5,SP_09x,0x100,-1,0,0,0);

setEffScaleKey(spep_5,explosion_f,1.0,1.0);
setEffScaleKey(spep_5+250,explosion_f,1.0,1.0);

setEffRotateKey(spep_5,explosion_f,0);
setEffRotateKey(spep_5+250,explosion_f,0);

setEffAlphaKey(spep_5,explosion_f,255);
setEffAlphaKey(spep_5+250,explosion_f,255);

--エフェクト
explosion_b=entryEffect(spep_5,SP_08x,0x80,-1,0,0,0);

setEffScaleKey(spep_5,explosion_b,1.0,1.0);
setEffScaleKey(spep_5+250,explosion_b,1.0,1.0);

setEffRotateKey(spep_5,explosion_b,0);
setEffRotateKey(spep_5+250,explosion_b,0);

setEffAlphaKey(spep_5,explosion_b,255);
setEffAlphaKey(spep_5+250,explosion_b,255);

--敵の動き
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 22, 1, 0 );
changeAnime( spep_5 + 0, 1, 108 );

setMoveKey( spep_5 -2 + 0, 1, 0, 687.5 , 0 );
setMoveKey( spep_5 -2 + 2, 1, 0, 608.8 , 0 );
setMoveKey( spep_5 -2 + 4, 1, 0, 530.2 , 0 );
setMoveKey( spep_5 -2 + 6, 1, 0, 451.6 , 0 );
setMoveKey( spep_5 -2 + 8, 1, 0, 372.8 , 0 );
setMoveKey( spep_5 -2 + 10, 1, 0, 294.2 , 0 );
setMoveKey( spep_5 -2 + 12, 1, 0, 163.1 , 0 );
setMoveKey( spep_5 -2 + 14, 1, 0, 31.9 , 0 );
setMoveKey( spep_5 -2 + 16, 1, 0, -99.2 , 0 );
setMoveKey( spep_5 -2 + 18, 1, 0, -230.3 , 0 );
setMoveKey( spep_5 -2 + 20, 1, 0, -361.4 , 0 );
setMoveKey( spep_5 -2 + 22, 1, 0, -492.5 , 0 );

setScaleKey( spep_5 + 0, 1, 0.3, 0.3 );
setScaleKey( spep_5 + 22, 1, 0.3, 0.3 );

setRotateKey( spep_5 + 0, 1, 90 );
setRotateKey( spep_5 + 22, 1, 90 );

--集中線
shuchusen4 = entryEffectLife( spep_5 + 22,  906, 228, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_5 + 22, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_5 + 250, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_5 + 22, shuchusen4, 1, 1 );
setEffScaleKey( spep_5 + 250, shuchusen4, 1, 1 );

setEffRotateKey( spep_5 + 22, shuchusen4, 180 );
setEffRotateKey( spep_5 + 250, shuchusen4, 180 );

setEffAlphaKey( spep_5 + 22, shuchusen4, 255 );
setEffAlphaKey( spep_5 + 36, shuchusen4, 255 );
setEffAlphaKey( spep_5 + 37, shuchusen4, 0 );
setEffAlphaKey( spep_5 + 38, shuchusen4, 0 );
setEffAlphaKey( spep_5 + 57, shuchusen4, 0 );
setEffAlphaKey( spep_5 + 58, shuchusen4, 0 );
setEffAlphaKey( spep_5 + 59, shuchusen4, 255 );
setEffAlphaKey( spep_5 + 60, shuchusen4, 255 );
setEffAlphaKey( spep_5 + 92, shuchusen4, 255 );
setEffAlphaKey( spep_5 + 93, shuchusen4, 0 );
setEffAlphaKey( spep_5 + 94, shuchusen4, 0 );
setEffAlphaKey( spep_5 + 126, shuchusen4, 0 );
setEffAlphaKey( spep_5 + 127, shuchusen4, 0 );
setEffAlphaKey( spep_5 + 128, shuchusen4, 255 );
setEffAlphaKey( spep_5 + 250, shuchusen4, 255 );

entryFade( spep_5+122, 4, 2, 4, fcolor_r, 0, 0, 255);     -- white fade

--SE
playSe( spep_5+18, 1023);--爆発
playSe( spep_5+114, 1024);--爆発

-- ダメージ表示
dealDamage( spep_5+130);
entryFade( spep_5+230, 9,  10, 1, 8, 8, 8, 255); -- black fade
endPhase( spep_5+240);

end