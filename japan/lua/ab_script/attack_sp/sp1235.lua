--1015180 ゴクウブラック_神裂ブラックかめはめ波
--sp_effect_a1_00134

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
SP_01=	152470	;--	格闘１　手前
SP_02=	152471	;--	格闘１　奥
SP_03=	152472	;--	格闘２　手前
SP_04=	152473	;--	格闘２　奥
SP_05=	152474	;--	気溜め
SP_06=	152475	;--	ダメージ　手前
SP_07=	152476	;--	ダメージ　奥

--敵
SP_01x=	152477	;--	格闘１　手前	(敵)
SP_02x=	152478	;--	格闘１　奥	(敵)
SP_03x=	152472	;--	格闘２　手前	
SP_04x=	152473	;--	格闘２　奥	
SP_05x=	152479	;--	気溜め	
SP_06x=	152480	;--	ダメージ　手前	(敵)
SP_07x=	152476	;--	ダメージ　奥	
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
--蹴り回し
------------------------------------------------------

spep_0=0;

--エフェクト(前)
kick_f=entryEffectLife(spep_0,SP_01,224,0x100,-1,0,0,0);

setEffMoveKey( spep_0 + 0, kick_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 224, kick_f, 0, 0 , 0 );

setEffScaleKey(spep_0,kick_f,1.0,1.0);
setEffScaleKey(spep_0+224,kick_f,1.0,1.0);

setEffRotateKey(spep_0,kick_f,0);
setEffRotateKey(spep_0+224,kick_f,0);

setEffAlphaKey(spep_0,kick_f,255);
setEffAlphaKey(spep_0+224,kick_f,255);

--エフェクト(後)
kick_b=entryEffectLife(spep_0,SP_02,224,0x80,-1,0,0,0);

setEffMoveKey( spep_0 + 0, kick_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 224, kick_b, 0, 0 , 0 );

setEffScaleKey(spep_0,kick_b,1.0,1.0);
setEffScaleKey(spep_0+224,kick_b,1.0,1.0);

setEffRotateKey(spep_0,kick_b,0);
setEffRotateKey(spep_0+224,kick_b,0);

setEffAlphaKey(spep_0,kick_b,255);
setEffAlphaKey(spep_0+224,kick_b,255);


--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

SP_dodge = spep_0+30 ; --エンドフェイズのフレーム数を置き換える

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

--文字エントリー
ctbon = entryEffectLife( spep_0 + 206,  10027, 16, 0x100, -1, 0, -64, 296.1 );--ボンッ

setEffMoveKey( spep_0 + 206, ctbon, -64, 296.1 , 0 );
setEffMoveKey( spep_0 + 222, ctbon, -64, 296.1 , 0 );

setEffScaleKey( spep_0 + 206, ctbon, 1.2, 1.2 );
setEffScaleKey( spep_0 + 212, ctbon, 1.44, 1.44 );
setEffScaleKey( spep_0 + 214, ctbon, 2.15, 2.15 );
setEffScaleKey( spep_0 + 216, ctbon, 2.23, 2.23 );
setEffScaleKey( spep_0 + 218, ctbon, 2.31, 2.31 );
setEffScaleKey( spep_0 + 220, ctbon, 2.39, 2.39 );
setEffScaleKey( spep_0 + 222, ctbon, 2.47, 2.47 );

setEffRotateKey( spep_0 + 206, ctbon, 22 );
setEffRotateKey( spep_0 + 222, ctbon, 22 );

setEffAlphaKey( spep_0 + 206, ctbon, 0 );
setEffAlphaKey( spep_0 + 207, ctbon, 255 );
setEffAlphaKey( spep_0 + 208, ctbon, 255 );
setEffAlphaKey( spep_0 + 222, ctbon, 255 );

--敵の動き
setDisp( spep_0 + 38, 1, 1 );
setDisp( spep_0 + 212, 1, 0 );

changeAnime( spep_0 + 38, 1, 117 );--42
changeAnime( spep_0-2 + 58, 1, 108 );
changeAnime( spep_0-3 + 58, 1, 108 );
changeAnime( spep_0-4 + 62, 1, 106 );
changeAnime( spep_0-4 + 70, 1, 106 );
--changeAnime( spep_0-5 + 72, 1, 7 );
changeAnime( spep_0-2 + 72, 1, 7 );
--changeAnime( spep_0-4 + 76, 1, 7 )
changeAnime( spep_0-5 + 78, 1, 108 );
changeAnime( spep_0-4 + 78, 1, 108 );
changeAnime( spep_0-4 + 82, 1, 106 );
changeAnime( spep_0-4 + 96, 1, 7 );
--changeAnime( spep_0-4 + 96, 1, 7 );
changeAnime( spep_0-5 + 120, 1, 6 );
changeAnime( spep_0-4 + 120, 1, 6 );
changeAnime( spep_0-3 + 148, 1, 8 );
changeAnime( spep_0-2 + 148, 1, 8 );

setMoveKey( spep_0 + 38, 1, 180, 100 , 0 );--42
setMoveKey( spep_0 + 42, 1, 180, 100 , 0 );--42
setMoveKey( spep_0 + 48, 1, 180, 100 , 0 );
setMoveKey( spep_0 + 50, 1, 153.7, 56.2 , 0 );
setMoveKey( spep_0 + 52, 1, 135, 25 , 0 );
setMoveKey( spep_0 + 53, 1, 123.7, 6.2 , 0 );
--setMoveKey( spep_0 + 56, 1, 120, 0 , 0 );
setMoveKey( spep_0-2 + 58, 1, 245.4, -57.4 , 0 );
setMoveKey( spep_0-3 + 60, 1, 434.9, 31.1 , 0 );
setMoveKey( spep_0-3 + 60, 1, 434.9, 31.1 , 0 );
setMoveKey( spep_0-3 + 62, 1, 290, 78.3 , 0 );
setMoveKey( spep_0-3 + 64, 1, 266.2, 116.1 , 0 );
setMoveKey( spep_0-3 + 66, 1, 193.7, 129.7 , 0 );
setMoveKey( spep_0-3 + 68, 1, 45.5, 149 , 0 );
--setMoveKey( spep_0-3 + 70, 1, -89.3, 130.6 , 0 );
setMoveKey( spep_0-2 + 72, 1, -128.2, 10.1 , 0 );
setMoveKey( spep_0-3 + 74, 1, -95.7, -52.1 , 0 );
setMoveKey( spep_0-3 + 76, 1, -54.8, -107.2 , 0 );
setMoveKey( spep_0-3 + 78, 1, 11.4, -107.2 , 0 );
setMoveKey( spep_0-3 + 80, 1, 148, -89.6 , 0 );
setMoveKey( spep_0-3 + 82, 1, 157.5, -43.2 , 0 );
setMoveKey( spep_0-3 + 84, 1, 182.2, -1 , 0 );
setMoveKey( spep_0-3 + 86, 1, 165.6, 40.5 , 0 );
setMoveKey( spep_0-3 + 88, 1, 145.4, 72.8 , 0 );
setMoveKey( spep_0-3 + 90, 1, 125.1, 102.5 , 0 );
setMoveKey( spep_0-3 + 92, 1, 65.7, 116.7 , 0 );
setMoveKey( spep_0-3 + 94, 1, 9.5, 131.7 , 0 );
setMoveKey( spep_0-3 + 96, 1, 3.2, 149.9 , 0 );
setMoveKey( spep_0-3 + 98, 1, -16.7, 118.2 , 0 );
setMoveKey( spep_0-3 + 100, 1, -46.7, 120.3 , 0 );
setMoveKey( spep_0-3 + 102, 1, -41.1, 158.8 , 0 );
setMoveKey( spep_0-3 + 104, 1, -27.4, 252.1 , 0 );
setMoveKey( spep_0-3 + 106, 1, -9.9, 375 , 0 );
setMoveKey( spep_0-3 + 108, 1, 7.8, 506.5 , 0 );
setMoveKey( spep_0-3 + 110, 1, 23.3, 626.3 , 0 );
setMoveKey( spep_0-3 + 112, 1, 34.7, 714.9 , 0 );
setMoveKey( spep_0-3 + 114, 1, 41.4, 751.5 , 0 );
setMoveKey( spep_0-3 + 116, 1, 107.6, 388.4 , 0 );
setMoveKey( spep_0-3 + 118, 1, 322.9, 92.4 , 0 );
setMoveKey( spep_0-3 + 120, 1, 308, 333.9 , 0 );
setMoveKey( spep_0-3 + 122, 1, 301.1, 324 , 0 );
setMoveKey( spep_0-3 + 124, 1, 281.6, 295.5 , 0 );
setMoveKey( spep_0-3 + 126, 1, 250.3, 251.1 , 0 );
setMoveKey( spep_0-3 + 128, 1, 207.8, 192.7 , 0 );
setMoveKey( spep_0-3 + 130, 1, 154.5, 122.8 , 0 );
setMoveKey( spep_0-3 + 132, 1, 91.8, 44.1 , 0 );
setMoveKey( spep_0-3 + 134, 1, 21.9, -39.5 , 0 );
setMoveKey( spep_0-3 + 136, 1, -52.1, -124.2 , 0 );
setMoveKey( spep_0-3 + 138, 1, -126.1, -205.3 , 0 );
setMoveKey( spep_0-3 + 140, 1, -194.7, -277.6 , 0 );
setMoveKey( spep_0-3 + 142, 1, -251.8, -335.9 , 0 );
setMoveKey( spep_0-3 + 144, 1, -290.6, -374.6 , 0 );
setMoveKey( spep_0-3 + 146, 1, -304.9, -388.9 , 0 );
setMoveKey( spep_0-3 + 147, 1, -304.9, -388.9 , 0 );
setMoveKey( spep_0-3 + 148, 1, 408.8, 191.7 , 0 );
setMoveKey( spep_0-3 + 149, 1, 408.8, 191.7 , 0 );
setMoveKey( spep_0-3 + 150, 1, 295.4, 141.4 , 0 );
setMoveKey( spep_0-3 + 152, 1, 202.7, 100.2 , 0 );
setMoveKey( spep_0-3 + 154, 1, 130.6, 68.2 , 0 );
setMoveKey( spep_0-3 + 156, 1, 79.1, 45.3 , 0 );
setMoveKey( spep_0-3 + 158, 1, 48.2, 31.6 , 0 );
setMoveKey( spep_0-3 + 160, 1, 37.9, 27.1 , 0 );
setMoveKey( spep_0-3 + 162, 1, 29.8, 27.4 , 0 );
setMoveKey( spep_0-3 + 164, 1, 21.8, 27.8 , 0 );
setMoveKey( spep_0-3 + 166, 1, 13.7, 28.2 , 0 );
setMoveKey( spep_0-3 + 168, 1, 5.6, 28.5 , 0 );
setMoveKey( spep_0-3 + 170, 1, -2.5, 28.9 , 0 );
setMoveKey( spep_0-3 + 172, 1, -10.6, 29.3 , 0 );
setMoveKey( spep_0-3 + 174, 1, -18.6, 29.6 , 0 );
setMoveKey( spep_0-3 + 176, 1, -26.7, 30 , 0 );
setMoveKey( spep_0-3 + 178, 1, -34.8, 30.4 , 0 );
setMoveKey( spep_0-3 + 180, 1, -42.9, 30.8 , 0 );
setMoveKey( spep_0-3 + 182, 1, -51, 31.1 , 0 );
setMoveKey( spep_0-3 + 184, 1, -59.1, 31.5 , 0 );
setMoveKey( spep_0-3 + 186, 1, -67.2, 31.9 , 0 );
setMoveKey( spep_0-3 + 188, 1, -75.2, 32.2 , 0 );
setMoveKey( spep_0-3 + 190, 1, -83.3, 32.6 , 0 );
setMoveKey( spep_0-3 + 192, 1, -91.4, 33 , 0 );
setMoveKey( spep_0-3 + 194, 1, -99.5, 33.4 , 0 );
setMoveKey( spep_0-3 + 196, 1, -107.6, 33.7 , 0 );
setMoveKey( spep_0-3 + 198, 1, -115.7, 34.1 , 0 );
setMoveKey( spep_0-3 + 200, 1, -123.8, 34.5 , 0 );
setMoveKey( spep_0-3 + 202, 1, -131.9, 34.9 , 0 );
setMoveKey( spep_0-3 + 204, 1, -140, 35.2 , 0 );
setMoveKey( spep_0-3 + 206, 1, -148.1, 35.6 , 0 );
setMoveKey( spep_0-3 + 208, 1, -156.2, 36 , 0 );
setMoveKey( spep_0-3 + 210, 1, -181.9, 44.4 , 0 );
setMoveKey( spep_0 + 212, 1, -166.3, 19.5 , 0 );

setScaleKey( spep_0 + 38, 1, 0.51, 0.51 );--41
setScaleKey( spep_0 + 42, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 48, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 50, 1, 1.26, 1.26 );
setScaleKey( spep_0 + 52, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 53, 1, 2.12, 2.12 );
--setScaleKey( spep_0 + 56, 1, 2.23, 2.23 );
setScaleKey( spep_0-3 + 58, 1, 2.84, 2.84 );
setScaleKey( spep_0-3 + 60, 1, 3.01, 3.01 );
setScaleKey( spep_0-4 + 60, 1, 3.01, 3.01 );
setScaleKey( spep_0-4 + 62, 1, 2.97, 2.97 );
setScaleKey( spep_0-4 + 64, 1, 2.71, 2.71 );
setScaleKey( spep_0-4 + 66, 1, 2.27, 2.27 );
setScaleKey( spep_0-4 + 68, 1, 1.93, 1.93 );
setScaleKey( spep_0-3 + 72, 1, 1.93, 1.93 );
--setScaleKey( spep_0-4 + 70, 1, 1.7, 1.7 );
--setScaleKey( spep_0-5 + 72, 1, 0.5, 0.5 );
setScaleKey( spep_0-2 + 72, 1, 0.5, 0.5 );
setScaleKey( spep_0-4 + 74, 1, 0.5, 0.5 );
setScaleKey( spep_0-4 + 76, 1, 0.57, 0.57 );
setScaleKey( spep_0-5 + 78, 1, 1.6, 1.6 );
setScaleKey( spep_0-4 + 78, 1, 1.6, 1.6 );
setScaleKey( spep_0-4 + 80, 1, 1.52, 1.52 );
setScaleKey( spep_0-4 + 82, 1, 1.37, 1.37 );
setScaleKey( spep_0-4 + 84, 1, 1.29, 1.29 );
setScaleKey( spep_0-4 + 86, 1, 1.22, 1.22 );
setScaleKey( spep_0-4 + 88, 1, 1.16, 1.16 );
setScaleKey( spep_0-4 + 90, 1, 1.12, 1.12 );
setScaleKey( spep_0-4 + 92, 1, 1.09, 1.09 );
setScaleKey( spep_0-5 + 96, 1, 1.05, 1.05 );
setScaleKey( spep_0-4 + 96, 1, 0.29, 0.29 );
setScaleKey( spep_0-4 + 98, 1, 0.39, 0.39 );
setScaleKey( spep_0-4 + 100, 1, 0.45, 0.45 );
setScaleKey( spep_0-4 + 102, 1, 0.67, 0.67 );
setScaleKey( spep_0-4 + 104, 1, 1.24, 1.24 );
setScaleKey( spep_0-4 + 106, 1, 1.98, 1.98 );
setScaleKey( spep_0-4 + 108, 1, 2.79, 2.79 );
setScaleKey( spep_0-4 + 110, 1, 3.51, 3.51 );
setScaleKey( spep_0-4 + 112, 1, 4.03, 4.03 );
setScaleKey( spep_0-4 + 114, 1, 4.24, 4.24 );
setScaleKey( spep_0-4 + 116, 1, 3.85, 3.85 );
setScaleKey( spep_0-4 + 118, 1, 3.46, 3.46 );
setScaleKey( spep_0-4 + 120, 1, 7.04, 7.04 );
setScaleKey( spep_0-4 + 122, 1, 6.93, 6.93 );
setScaleKey( spep_0-4 + 124, 1, 6.61, 6.61 );
setScaleKey( spep_0-4 + 126, 1, 6.13, 6.13 );
setScaleKey( spep_0-4 + 128, 1, 5.53, 5.53 );
setScaleKey( spep_0-4 + 130, 1, 4.82, 4.82 );
setScaleKey( spep_0-4 + 132, 1, 4.08, 4.08 );
setScaleKey( spep_0-4 + 134, 1, 3.3, 3.3 );
setScaleKey( spep_0-4 + 136, 1, 2.55, 2.55 );
setScaleKey( spep_0-4 + 138, 1, 1.85, 1.85 );
setScaleKey( spep_0-4 + 140, 1, 1.24, 1.24 );
setScaleKey( spep_0-4 + 142, 1, 0.75, 0.75 );
setScaleKey( spep_0-4 + 144, 1, 0.43, 0.43 );
setScaleKey( spep_0-4 + 146, 1, 0.31, 0.31 );
setScaleKey( spep_0-4 + 148, 1, 0.31, 0.31 );
setScaleKey( spep_0-4 + 149, 1, 4.87, 4.87 );
setScaleKey( spep_0-4 + 150, 1, 3.9, 3.9 );
setScaleKey( spep_0-4 + 152, 1, 3.1, 3.1 );
setScaleKey( spep_0-4 + 154, 1, 2.49, 2.49 );
setScaleKey( spep_0-4 + 156, 1, 2.05, 2.05 );
setScaleKey( spep_0-4 + 158, 1, 1.78, 1.78 );
setScaleKey( spep_0-4 + 160, 1, 1.69, 1.69 );
setScaleKey( spep_0-4 + 162, 1, 1.66, 1.66 );
setScaleKey( spep_0-4 + 164, 1, 1.63, 1.63 );
setScaleKey( spep_0-4 + 166, 1, 1.59, 1.59 );
setScaleKey( spep_0-4 + 168, 1, 1.56, 1.56 );
setScaleKey( spep_0-4 + 170, 1, 1.53, 1.53 );
setScaleKey( spep_0-4 + 172, 1, 1.5, 1.5 );
setScaleKey( spep_0-4 + 174, 1, 1.46, 1.46 );
setScaleKey( spep_0-4 + 176, 1, 1.43, 1.43 );
setScaleKey( spep_0-4 + 178, 1, 1.4, 1.4 );
setScaleKey( spep_0-4 + 180, 1, 1.36, 1.36 );
setScaleKey( spep_0-4 + 182, 1, 1.33, 1.33 );
setScaleKey( spep_0-4 + 184, 1, 1.3, 1.3 );
setScaleKey( spep_0-4 + 186, 1, 1.26, 1.26 );
setScaleKey( spep_0-4 + 188, 1, 1.23, 1.23 );
setScaleKey( spep_0-4 + 190, 1, 1.2, 1.2 );
setScaleKey( spep_0-4 + 192, 1, 1.17, 1.17 );
setScaleKey( spep_0-4 + 194, 1, 1.13, 1.13 );
setScaleKey( spep_0-4 + 196, 1, 1.1, 1.1 );
setScaleKey( spep_0-4 + 198, 1, 1.07, 1.07 );
setScaleKey( spep_0-4 + 200, 1, 1.03, 1.03 );
setScaleKey( spep_0-4 + 202, 1, 1, 1 );
setScaleKey( spep_0-4 + 204, 1, 0.97, 0.97 );
setScaleKey( spep_0-4 + 206, 1, 0.93, 0.93 );
setScaleKey( spep_0-4 + 208, 1, 0.9, 0.9 );
setScaleKey( spep_0-4 + 210, 1, 0.87, 0.87 );
setScaleKey( spep_0 + 212, 1, 0.84, 0.84 );

setRotateKey( spep_0 + 28, 1, -14.7 );--41
setRotateKey( spep_0 + 42, 1, -14.7 );
setRotateKey( spep_0 + 53, 1, -14.7 );
--setRotateKey( spep_0 + 57, 1, -14.7 );
setRotateKey( spep_0-3 + 58, 1, 0 );
setRotateKey( spep_0-3 + 60, 1, -16 );
setRotateKey( spep_0-4 + 60, 1, -16 );
setRotateKey( spep_0-4 + 62, 1, -46.4 );
setRotateKey( spep_0-4 + 64, 1, -60.1 );
setRotateKey( spep_0-4 + 66, 1, -73.9 );
setRotateKey( spep_0-5 + 68, 1, -92.4 );
setRotateKey( spep_0-3 + 72, 1, -92.4 );
--setRotateKey( spep_0-4 + 70, 1, -100.3 );
setRotateKey( spep_0-2 + 72, 1, 87.6 );
--setRotateKey( spep_0-5 + 74, 1, 83.5 );
setRotateKey( spep_0-4 + 74, 1, 83.5 );
setRotateKey( spep_0-4 + 76, 1, 80.8 );
setRotateKey( spep_0-4 + 77, 1, 83.9 );
setRotateKey( spep_0-4 + 78, 1, 83.9 );
setRotateKey( spep_0-4 + 80, 1, 36.2 );
setRotateKey( spep_0-4 + 82, 1, -4.5 );
setRotateKey( spep_0-4 + 84, 1, -16.5 );
setRotateKey( spep_0-4 + 86, 1, -27.1 );
setRotateKey( spep_0-4 + 88, 1, -40.1 );
setRotateKey( spep_0-4 + 90, 1, -53.1 );
setRotateKey( spep_0-4 + 91, 1, -64.9 );
setRotateKey( spep_0-4 + 92, 1, -64.9 );
setRotateKey( spep_0-4 + 94, 1, -76.7 );
setRotateKey( spep_0-5 + 96, 1, -76.7 );
setRotateKey( spep_0-4 + 96, 1, 80.6 );
setRotateKey( spep_0-4 + 98, 1, 91.8 );
setRotateKey( spep_0-4 + 100, 1, 112.6 );
setRotateKey( spep_0-4 + 102, 1, 122.6 );
setRotateKey( spep_0-4 + 104, 1, 147.7 );
setRotateKey( spep_0-4 + 106, 1, 181.2 );
setRotateKey( spep_0-4 + 108, 1, 216.8 );
setRotateKey( spep_0-4 + 110, 1, 248.9 );
setRotateKey( spep_0-4 + 112, 1, 272.3 );
setRotateKey( spep_0-4 + 114, 1, 281.8 );
setRotateKey( spep_0-4 + 116, 1, 328.2 );
setRotateKey( spep_0-4 + 118, 1, 374.5 );
setRotateKey( spep_0-4 + 119, 1, -59 );
setRotateKey( spep_0-4 + 120, 1, -59 );
setRotateKey( spep_0-4 + 122, 1, -58.8 );
setRotateKey( spep_0-4 + 124, 1, -58.2 );
setRotateKey( spep_0-4 + 126, 1, -57.2 );
setRotateKey( spep_0-4 + 128, 1, -56 );
setRotateKey( spep_0-4 + 130, 1, -54.6 );
setRotateKey( spep_0-4 + 132, 1, -53.1 );
setRotateKey( spep_0-4 + 134, 1, -51.6 );
setRotateKey( spep_0-4 + 136, 1, -50.1 );
setRotateKey( spep_0-4 + 138, 1, -48.7 );
setRotateKey( spep_0-4 + 140, 1, -47.5 );
setRotateKey( spep_0-4 + 142, 1, -46.5 );
setRotateKey( spep_0-4 + 144, 1, -45.9 );
setRotateKey( spep_0-4 + 146, 1, -45.6 );
setRotateKey( spep_0 + 212, 1, -45.6 );

--se
playSe( spep_0, 9); --移動音
playSe( spep_0+56, 1010); --蹴り
playSe( spep_0+92, 1012); --蹴り飛ばし
playSe( spep_0+102, 44); --飛んでいく
playSe( spep_0+168, 1033); --外れる
playSe( spep_0+178, 1033); --外れる
playSe( spep_0+192, 1033); --外れる
playSe( spep_0+208, 1023); --当たる

-- ** エフェクト等 ** --
entryFade(spep_0, 0, 2, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- whit_fe fade
entryFade(spep_0+216, 4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- whit_fe fade

--次の準備
spep_1=spep_0+224;

------------------------------------------------------
--気弾を撃ってぐるっと回してドーン
------------------------------------------------------
--エフェクト(前)
kidan_f=entryEffectLife(spep_1,SP_03,362,0x100,-1,0,0,0);

setEffMoveKey( spep_1 + 0, kidan_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 362, kidan_f, 0, 0 , 0 );

setEffScaleKey(spep_1,kidan_f,1.0,1.0);
setEffScaleKey(spep_1+362,kidan_f,1.0,1.0);

setEffRotateKey(spep_1,kidan_f,0);
setEffRotateKey(spep_1+362,kidan_f,0);

setEffAlphaKey(spep_1,kidan_f,255);
setEffAlphaKey(spep_1+362,kidan_f,255);

--エフェクト(後)
kidan_b=entryEffectLife(spep_1,SP_04,362,0x80,-1,0,0,0);

setEffMoveKey( spep_1 + 0, kidan_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 362, kidan_b, 0, 0 , 0 );

setEffScaleKey(spep_1,kidan_b,1.0,1.0);
setEffScaleKey(spep_1+362,kidan_b,1.0,1.0);

setEffRotateKey(spep_1,kidan_b,0);
setEffRotateKey(spep_1+362,kidan_b,0);

setEffAlphaKey(spep_1,kidan_b,255);
setEffAlphaKey(spep_1+362,kidan_b,255);


--文字エントリー
ctzan = entryEffectLife( spep_1 + 174,  10010, 18, 0x100, -1, 0, -89.5, 246.2 );--ザンッ

setEffMoveKey( spep_1 + 174, ctzan, -89.5, 246.2 , 0 );
setEffMoveKey( spep_1 + 180, ctzan, -105.2, 280.3 , 0 );
setEffMoveKey( spep_1 + 182, ctzan, -101.3, 293.9 , 0 );
setEffMoveKey( spep_1 + 184, ctzan, -109.6, 294.7 , 0 );
setEffMoveKey( spep_1 + 186, ctzan, -97.3, 300.7 , 0 );
setEffMoveKey( spep_1 + 188, ctzan, -103.2, 302.1 , 0 );
setEffMoveKey( spep_1 + 192, ctzan, -111.3, 300.1 , 0 );

setEffScaleKey( spep_1 + 174, ctzan, 1.06, 1.06 );
setEffScaleKey( spep_1 + 180, ctzan, 1.53, 1.53 );
setEffScaleKey( spep_1 + 182, ctzan, 1.69, 1.69 );
setEffScaleKey( spep_1 + 184, ctzan, 1.73, 1.73 );
setEffScaleKey( spep_1 + 186, ctzan, 1.76, 1.76 );
setEffScaleKey( spep_1 + 188, ctzan, 1.8, 1.8 );
setEffScaleKey( spep_1 + 192, ctzan, 1.8, 1.8 );

setEffRotateKey( spep_1 + 174, ctzan, -15.6 );
setEffRotateKey( spep_1 + 192, ctzan, -15.6 );

setEffAlphaKey( spep_1 + 174, ctzan, 0 );
setEffAlphaKey( spep_1 + 175, ctzan, 255 );
setEffAlphaKey( spep_1 + 176, ctzan, 255 );
setEffAlphaKey( spep_1 + 188, ctzan, 255 );
setEffAlphaKey( spep_1 + 190, ctzan, 128 );
setEffAlphaKey( spep_1 + 192, ctzan, 0 );


--文字エントリー
ctdogon = entryEffectLife( spep_1 + 226,  10018, 32, 0x100, -1, 0, -6.3, 364.2 );--ドゴォンッ

setEffMoveKey( spep_1 + 226, ctdogon, -6.3, 364.2 , 0 );
setEffMoveKey( spep_1 + 232, ctdogon, -2.5, 397.5 , 0 );
setEffMoveKey( spep_1 + 234, ctdogon, 5.5, 430.9 , 0 );
setEffMoveKey( spep_1 + 236, ctdogon, 6.6, 434.1 , 0 );
setEffMoveKey( spep_1 + 238, ctdogon, 3.2, 435.6 , 0 );
setEffMoveKey( spep_1 + 240, ctdogon, 7.9, 454.1 , 0 );
setEffMoveKey( spep_1 + 242, ctdogon, 9.6, 451.1 , 0 );
setEffMoveKey( spep_1 + 244, ctdogon, 3.1, 461.2 , 0 );
setEffMoveKey( spep_1 + 246, ctdogon, 14.1, 464.4 , 0 );
setEffMoveKey( spep_1 + 248, ctdogon, 4.4, 464.1 , 0 );
setEffMoveKey( spep_1 + 250, ctdogon, 8.8, 470.4 , 0 );
setEffMoveKey( spep_1 + 252, ctdogon, 4.6, 464.7 , 0 );
setEffMoveKey( spep_1 + 254, ctdogon, 8.9, 472.3 , 0 );
setEffMoveKey( spep_1 + 256, ctdogon, 7.3, 469 , 0 );
setEffMoveKey( spep_1 + 258, ctdogon, 14.7, 486.6 , 0 );

setEffScaleKey( spep_1 + 226, ctdogon, 2.74, 2.74 );
setEffScaleKey( spep_1 + 232, ctdogon, 3.4, 3.4 );
setEffScaleKey( spep_1 + 234, ctdogon, 3.8, 3.8 );
setEffScaleKey( spep_1 + 236, ctdogon, 3.93, 3.93 );
setEffScaleKey( spep_1 + 238, ctdogon, 4.03, 4.03 );
setEffScaleKey( spep_1 + 240, ctdogon, 4.11, 4.11 );
setEffScaleKey( spep_1 + 242, ctdogon, 4.19, 4.19 );
setEffScaleKey( spep_1 + 244, ctdogon, 4.25, 4.25 );
setEffScaleKey( spep_1 + 246, ctdogon, 4.3, 4.3 );
setEffScaleKey( spep_1 + 248, ctdogon, 4.34, 4.34 );
setEffScaleKey( spep_1 + 250, ctdogon, 4.37, 4.37 );
setEffScaleKey( spep_1 + 252, ctdogon, 4.38, 4.38 );
setEffScaleKey( spep_1 + 254, ctdogon, 4.39, 4.39 );
setEffScaleKey( spep_1 + 256, ctdogon, 4.9, 4.9 );
setEffScaleKey( spep_1 + 258, ctdogon, 5.27, 5.27 );

setEffRotateKey( spep_1 + 226, ctdogon, -0.9 );
setEffRotateKey( spep_1 + 258, ctdogon, -0.9 );

setEffAlphaKey( spep_1 + 226, ctdogon, 0 );
setEffAlphaKey( spep_1 + 227, ctdogon, 255 );
setEffAlphaKey( spep_1 + 228, ctdogon, 255 );
setEffAlphaKey( spep_1 + 250, ctdogon, 255 );
setEffAlphaKey( spep_1 + 252, ctdogon, 143 );
setEffAlphaKey( spep_1 + 254, ctdogon, 64 );
setEffAlphaKey( spep_1 + 256, ctdogon, 16 );
setEffAlphaKey( spep_1 + 258, ctdogon, 0 );

--文字エントリー
ctdon = entryEffectLife( spep_1 + 336,  10019, 24, 0x100, -1, 0, 97.6, 204.5 );--ドンッ

setEffMoveKey( spep_1 + 336, ctdon, -97.6, 204.5 , 0 );
setEffMoveKey( spep_1 + 342, ctdon, -99.1, 247 , 0 );
setEffMoveKey( spep_1 + 344, ctdon, -81.5, 280.9 , 0 );
setEffMoveKey( spep_1 + 346, ctdon, -88, 291.4 , 0 );
setEffMoveKey( spep_1 + 348, ctdon, -78.2, 281.2 , 0 );
setEffMoveKey( spep_1 + 350, ctdon, -89.9, 284.3 , 0 );
setEffMoveKey( spep_1 + 352, ctdon, -81.7, 290.7 , 0 );
setEffMoveKey( spep_1 + 354, ctdon, -89.6, 285.6 , 0 );
setEffMoveKey( spep_1 + 356, ctdon, -81.3, 291.9 , 0 );
setEffMoveKey( spep_1 + 358, ctdon, -84.2, 280.3 , 0 );
setEffMoveKey( spep_1 + 360, ctdon, -84.1, 280.8 , 0 );

setEffScaleKey( spep_1 + 336, ctdon, 1.28, 1.28 );
setEffScaleKey( spep_1 + 342, ctdon, 1.62, 1.62 );
setEffScaleKey( spep_1 + 344, ctdon, 1.97, 1.97 );
setEffScaleKey( spep_1 + 346, ctdon, 1.98, 1.98 );
setEffScaleKey( spep_1 + 348, ctdon, 1.99, 1.99 );
setEffScaleKey( spep_1 + 350, ctdon, 2.01, 2.01 );
setEffScaleKey( spep_1 + 352, ctdon, 2.02, 2.02 );
setEffScaleKey( spep_1 + 354, ctdon, 2.03, 2.03 );
setEffScaleKey( spep_1 + 356, ctdon, 2.04, 2.04 );
setEffScaleKey( spep_1 + 358, ctdon, 2.05, 2.05 );
setEffScaleKey( spep_1 + 360, ctdon, 2.06, 2.06 );

setEffRotateKey( spep_1 + 336, ctdon, 14.2 );
setEffRotateKey( spep_1 + 342, ctdon, 14.7 );
setEffRotateKey( spep_1 + 344, ctdon, 15.2 );
setEffRotateKey( spep_1 + 360, ctdon, 15.2 );

setEffAlphaKey( spep_1 + 336, ctdon, 0 );
setEffAlphaKey( spep_1 + 337, ctdon, 255 );
setEffAlphaKey( spep_1 + 338, ctdon, 255 );
setEffAlphaKey( spep_1 + 354, ctdon, 255 );
setEffAlphaKey( spep_1 + 356, ctdon, 170 );
setEffAlphaKey( spep_1 + 358, ctdon, 85 );
setEffAlphaKey( spep_1 + 360, ctdon, 0 );

--敵の動き
setDisp( spep_1 + 46, 1, 1 );
setDisp( spep_1 + 104, 1, 0 );
setDisp( spep_1 + 162, 1, 1 );
setDisp( spep_1 + 192, 1, 0 );
setDisp( spep_1 + 261, 1, 1 );
setDisp( spep_1 + 262, 1, 1 );
setDisp( spep_1 + 333, 1, 0 );
setDisp( spep_1 + 334, 1, 0 );

changeAnime( spep_1 + 46, 1, 105 );
changeAnime( spep_1 + 162, 1, 8 );
changeAnime( spep_1 + 175, 1, 6 );--178
changeAnime( spep_1 + 176, 1, 6 );--178
changeAnime( spep_1 + 262, 1, 6 );
changeAnime( spep_1 + 290, 1, 6 );
changeAnime( spep_1 + 298, 1, 8 );
changeAnime( spep_1 + 308, 1, 8 );
changeAnime( spep_1 + 328, 1, 8 );

setMoveKey( spep_1 + 46, 1, 167.8, 100.5 , 0 );
setMoveKey( spep_1 + 48, 1, -55.2, 184.1 , 0 );
setMoveKey( spep_1 + 50, 1, -132, 228.5 , 0 );
setMoveKey( spep_1 + 52, 1, -157.5, 209.8 , 0 );
setMoveKey( spep_1 + 54, 1, -175.7, 254.9 , 0 );
setMoveKey( spep_1 + 56, 1, -214.2, 230.2 , 0 );
setMoveKey( spep_1 + 58, 1, -200.2, 256.1 , 0 );
setMoveKey( spep_1 + 60, 1, -235, 261.3 , 0 );
setMoveKey( spep_1 + 62, 1, -219.8, 247.4 , 0 );
setMoveKey( spep_1 + 64, 1, -250.2, 266.7 , 0 );
setMoveKey( spep_1 + 66, 1, -231.9, 267.3 , 0 );
setMoveKey( spep_1 + 68, 1, -257.4, 266.8 , 0 );
setMoveKey( spep_1 + 70, 1, -238.9, 276.3 , 0 );
setMoveKey( spep_1 + 72, 1, -257.5, 254.5 , 0 );
setMoveKey( spep_1 + 74, 1, -256.4, 286.3 , 0 );
setMoveKey( spep_1 + 76, 1, -267.6, 258.4 , 0 );
setMoveKey( spep_1 + 78, 1, -241.8, 279.7 , 0 );
setMoveKey( spep_1 + 80, 1, -266.5, 255.7 , 0 );
setMoveKey( spep_1 + 82, 1, -246, 275.5 , 0 );
setMoveKey( spep_1 + 84, 1, -269.1, 262.6 , 0 );
setMoveKey( spep_1 + 86, 1, -247, 274.2 , 0 );
setMoveKey( spep_1 + 88, 1, -266.7, 260.8 , 0 );
setMoveKey( spep_1 + 90, 1, -249.5, 279.9 , 0 );
setMoveKey( spep_1 + 92, 1, -275.5, 273.6 , 0 );
setMoveKey( spep_1 + 94, 1, -246.8, 268.1 , 0 );
setMoveKey( spep_1 + 96, 1, -277.2, 280.7 , 0 );
setMoveKey( spep_1 + 98, 1, -251.3, 270 , 0 );
setMoveKey( spep_1 + 100, 1, -278.2, 281.5 , 0 );
setMoveKey( spep_1 + 102, 1, -258, 252.9 , 0 );
setMoveKey( spep_1 + 104, 1, -272.5, 286.4 , 0 );


setMoveKey( spep_1 + 162, 1, 314.8, -720.8 , 0 );
setMoveKey( spep_1 + 164, 1, 55.7, -312.3 , 0 );
setMoveKey( spep_1 + 166, 1, -17.4, -192 , 0 );
setMoveKey( spep_1 + 168, 1, -88.8, -82.5 , 0 );
setMoveKey( spep_1 + 170, 1, -98.9, -63.9 , 0 );
setMoveKey( spep_1 + 172, 1, -117, -37.1 , 0 );
setMoveKey( spep_1 + 174, 1, -101.9, -58.1 , 0 );
--setMoveKey( spep_1 + 176, 1, -117, -37.1 , 0 );
setMoveKey( spep_1 + 175, 1, -91, -63 , 0 );--178
setMoveKey( spep_1 + 176, 1, -91, -63 , 0 );--178
setMoveKey( spep_1 + 180, 1, -122.5, -63.5 , 0 );
setMoveKey( spep_1 + 182, 1, -133, -63.6 , 0 );
setMoveKey( spep_1 + 184, 1, -143.7, -56.9 , 0 );
setMoveKey( spep_1 + 186, 1, -157.9, -48 , 0 );
setMoveKey( spep_1 + 188, 1, -175.5, -37 , 0 );
setMoveKey( spep_1 + 190, 1, -196.5, -23.8 , 0 );
setMoveKey( spep_1 + 192, 1, -221, -8.4 , 0 );


setMoveKey( spep_1-3 + 262, 1, 64.2, -206.7 , 0 );
setMoveKey( spep_1-3 + 264, 1, 105.7, -171.8 , 0 );
setMoveKey( spep_1-3 + 266, 1, 44.8, -191 , 0 );
setMoveKey( spep_1-3 + 268, 1, 76.8, -152.5 , 0 );
setMoveKey( spep_1-3 + 270, 1, -1.7, -125.9 , 0 );
setMoveKey( spep_1-3 + 272, 1, 5.9, -68.3 , 0 );
setMoveKey( spep_1-3 + 274, 1, -74.9, -13.3 , 0 );
setMoveKey( spep_1-3 + 276, 1, -90.6, 76.9 , 0 );
setMoveKey( spep_1-3 + 278, 1, -103.3, 80.5 , 0 );
setMoveKey( spep_1-3 + 280, 1, -123.8, 134.1 , 0 );
setMoveKey( spep_1-3 + 282, 1, -125.4, 111.3 , 0 );
setMoveKey( spep_1-3 + 284, 1, -121.3, 128.7 , 0 );
setMoveKey( spep_1-3 + 286, 1, -109.4, 111.1 , 0 );
setMoveKey( spep_1-3 + 288, 1, -89.7, 79.9 , 0 );
setMoveKey( spep_1-3 + 290, 1, -84.9, 81.2 , 0 );
setMoveKey( spep_1-3 + 292, 1, -12, 229.5 , 0 );
setMoveKey( spep_1-3 + 294, 1, 30.8, 243.1 , 0 );
setMoveKey( spep_1-3 + 296, 1, 54.1, 246.1 , 0 );
setMoveKey( spep_1-3 + 298, 1, 169.5, 212.2 , 0 );
setMoveKey( spep_1-3 + 300, 1, 176.4, 207.4 , 0 );
setMoveKey( spep_1-3 + 302, 1, 182, 202 , 0 );
setMoveKey( spep_1-3 + 304, 1, 186.3, 196 , 0 );
setMoveKey( spep_1-3 + 306, 1, 189.1, 189.6 , 0 );
setMoveKey( spep_1-3 + 308, 1, 156.9, 157.7 , 0 );
setMoveKey( spep_1-3 + 310, 1, 40.4, 47.4 , 0 );
setMoveKey( spep_1-3 + 312, 1, -75.9, -62.8 , 0 );
setMoveKey( spep_1-3 + 314, 1, -231.7, -252.6 , 0 );
setMoveKey( spep_1-3 + 316, 1, -387.5, -442.4 , 0 );
setMoveKey( spep_1-3 + 318, 1, -543.2, -632.2 , 0 );
setMoveKey( spep_1-3 + 326, 1, -543.2, -632.2 , 0 );
setMoveKey( spep_1-3 + 327, 1, -543.2, -632.2 , 0 );
setMoveKey( spep_1-3 + 328, 1, 207.2, 113.6 , 0 );
setMoveKey( spep_1-3 + 330, 1, 21.3, -61.9 , 0 );
setMoveKey( spep_1-3 + 332, 1, -56.7, -157 , 0 );
setMoveKey( spep_1-3 + 334, 1, -56.7, -157 , 0 );
setMoveKey( spep_1-3 + 336, 1, -172.6, -278.7 , 0 );

setScaleKey( spep_1 + 46, 1, 4.34, 4.34 );
setScaleKey( spep_1 + 48, 1, 2.05, 2.05 );
setScaleKey( spep_1 + 50, 1, 1.5, 1.5 );
setScaleKey( spep_1 + 52, 1, 1.17, 1.17 );
setScaleKey( spep_1 + 54, 1, 0.96, 0.96 );
setScaleKey( spep_1 + 56, 1, 0.8, 0.8 );
setScaleKey( spep_1 + 58, 1, 0.68, 0.68 );
setScaleKey( spep_1 + 60, 1, 0.59, 0.59 );
setScaleKey( spep_1 + 62, 1, 0.52, 0.52 );
setScaleKey( spep_1 + 64, 1, 0.46, 0.46 );
setScaleKey( spep_1 + 66, 1, 0.41, 0.41 );
setScaleKey( spep_1 + 68, 1, 0.38, 0.38 );
setScaleKey( spep_1 + 70, 1, 0.35, 0.35 );
setScaleKey( spep_1 + 72, 1, 0.32, 0.32 );
setScaleKey( spep_1 + 74, 1, 0.3, 0.3 );
setScaleKey( spep_1 + 76, 1, 0.29, 0.29 );
setScaleKey( spep_1 + 78, 1, 0.28, 0.28 );
setScaleKey( spep_1 + 80, 1, 0.27, 0.27 );
setScaleKey( spep_1 + 82, 1, 0.26, 0.26 );
setScaleKey( spep_1 + 84, 1, 0.25, 0.25 );
setScaleKey( spep_1 + 86, 1, 0.25, 0.25 );
setScaleKey( spep_1 + 88, 1, 0.24, 0.24 );

setScaleKey( spep_1-4 + 162, 1, 2.21, 2.21 );
setScaleKey( spep_1-4 + 164, 1, 2.1, 2.1 );
setScaleKey( spep_1-4 + 166, 1, 2.04, 2.04 );
setScaleKey( spep_1-4 + 168, 1, 2.02, 2.02 );
setScaleKey( spep_1-4 + 170, 1, 2.02, 2.02 );
setScaleKey( spep_1-4 + 172, 1, 2, 2 );
setScaleKey( spep_1-4 + 175, 1, 2, 2 );
setScaleKey( spep_1-4 + 176, 1, 2, 2 );
setScaleKey( spep_1-4 + 262, 1, 1.28, 1.28 );
setScaleKey( spep_1-4 + 270, 1, 1.28, 1.28 );
setScaleKey( spep_1-4 + 272, 1, 1.27, 1.27 );
setScaleKey( spep_1-2 + 276, 1, 1.27, 1.27 );
setScaleKey( spep_1-2 + 278, 1, 1.26, 1.26 );
setScaleKey( spep_1-2 + 280, 1, 1.26, 1.26 );
setScaleKey( spep_1-2 + 282, 1, 1.25, 1.25 );
setScaleKey( spep_1-2 + 284, 1, 1.24, 1.24 );
setScaleKey( spep_1-2 + 286, 1, 1.24, 1.24 );
setScaleKey( spep_1-2 + 288, 1, 1.23, 1.23 );
setScaleKey( spep_1-2 + 290, 1, 1.21, 1.21 );
setScaleKey( spep_1-2 + 292, 1, 1.2, 1.2 );
setScaleKey( spep_1-4 + 294, 1, 1.2, 1.2 );
setScaleKey( spep_1-4 + 296, 1, 1.19, 1.19 );
setScaleKey( spep_1-4 + 298, 1, 1.19, 1.19 );
setScaleKey( spep_1-4 + 300, 1, 1.18, 1.18 );
setScaleKey( spep_1-4 + 308, 1, 1.22, 1.22 );
setScaleKey( spep_1-4 + 328, 1, 0.19, 0.19 );
setScaleKey( spep_1-4 + 330, 1, 0.15, 0.15 );
setScaleKey( spep_1-4 + 332, 1, 0.14, 0.14 );
setScaleKey( spep_1-4 + 334, 1, 0.14, 0.14 );
setScaleKey( spep_1 + 336, 1, 0.16, 0.16 );

setRotateKey( spep_1 + 46, 1, -69.1 );
setRotateKey( spep_1 + 48, 1, -69.1 );
setRotateKey( spep_1 + 50, 1, -69.2 );
setRotateKey( spep_1 + 50, 1, -69.2 );
setRotateKey( spep_1 + 104, 1, -69.2 );

setRotateKey( spep_1 + 162, 1, 17.2 );
setRotateKey( spep_1 + 174, 1, 17.2 );
setRotateKey( spep_1 + 175, 1, 49.8 );
setRotateKey( spep_1 + 176, 1, 49.8 );
setRotateKey( spep_1 + 180, 1, 48.4 );
setRotateKey( spep_1 + 182, 1, 47.9 );
setRotateKey( spep_1 + 184, 1, 46.7 );
setRotateKey( spep_1 + 186, 1, 45.2 );
setRotateKey( spep_1 + 188, 1, 43.3 );
setRotateKey( spep_1 + 190, 1, 41 );
setRotateKey( spep_1 + 192, 1, 38.4 );

setRotateKey( spep_1-4 + 262, 1, 17.3 );
setRotateKey( spep_1-4 + 264, 1, 17.2 );
setRotateKey( spep_1-4 + 268, 1, 17.2 );
setRotateKey( spep_1-4 + 270, 1, 17.1 );
setRotateKey( spep_1-2 + 276, 1, 17.1 );
setRotateKey( spep_1-2 + 278, 1, 17 );

setRotateKey( spep_1-2 + 290, 1, 36.4 );
setRotateKey( spep_1-2 + 292, 1, 126 );
setRotateKey( spep_1-5 + 294, 1, 126 );
setRotateKey( spep_1-4 + 294, 1, 144.9 );
setRotateKey( spep_1-4 + 296, 1, 155.8 );
setRotateKey( spep_1-4 + 298, 1, 134.6 );
setRotateKey( spep_1-4 + 300, 1, 140.8 );
setRotateKey( spep_1-4 + 302, 1, 147 );
setRotateKey( spep_1-4 + 304, 1, 153.1 );
setRotateKey( spep_1-4 + 306, 1, 159.3 );
setRotateKey( spep_1-4 + 307, 1, 159.3 );
setRotateKey( spep_1-4 + 308, 1, -166.4 );
setRotateKey( spep_1-4 + 310, 1, -115.8 );
setRotateKey( spep_1-4 + 312, 1, -65.2 );
setRotateKey( spep_1-4 + 314, 1, -60.7 );
setRotateKey( spep_1-4 + 316, 1, -56.2 );
setRotateKey( spep_1-4 + 318, 1, -51.7 );

setRotateKey( spep_1-4 + 328, 1, 0 );
setRotateKey( spep_1 + 336, 1, 0 );

--SE
playSe( spep_1+0, 1016); --気弾
playSe( spep_1+6, 1016); --気弾
playSe( spep_1+16, 1016); --気弾
playSe( spep_1+28, 1016); --気弾
playSe( spep_1+36, 1016); --気弾
playSe( spep_1+52, 1033); --外れる
playSe( spep_1+64, 1033); --外れる
playSe( spep_1+70, 1033); --外れる
playSe( spep_1+76, 1033); --外れる
playSe( spep_1+92, 1033); --外れる
playSe( spep_1+120, 1014); --煙をさく
playSe( spep_1+130, 9); --近ずく
playSe( spep_1+174, 1032); --さす
SE1=playSe( spep_1+190, 1044); --引きずる
stopSe(spep_1+228,SE1,0);
playSe( spep_1+228, 1023); --爆発
playSe( spep_1+260, 44); --上に上がる
playSe( spep_1+308, 1007); --振り落とす
--playSe( spep_1+322, 44); --落ちる
playSe( spep_1+338, 1023); --地面にぶつかる　

-- ** エフェクト等 ** --
entryFade(spep_1+354, 4, 10, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- whit_fe fade

--次の準備
spep_2=spep_1+362;

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
entryFade(spep_2+85,3,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_3=spep_2+92;

------------------------------------------------------
--カメハメビーム
------------------------------------------------------
--エフェクト
kamehame_beam=entryEffectLife(spep_3,SP_05,292,0x100,-1,0,0,0);

setEffMoveKey( spep_3 + 0, kamehame_beam, 0, 0 , 0 );
setEffMoveKey( spep_3 + 292, kamehame_beam, 0, 0 , 0 );

setEffScaleKey(spep_3,kamehame_beam,1.0,1.0);
setEffScaleKey(spep_3+292,kamehame_beam,1.0,1.0);

setEffRotateKey(spep_3,kamehame_beam,0);
setEffRotateKey(spep_3+292,kamehame_beam,0);

setEffAlphaKey(spep_3,kamehame_beam,255);
setEffAlphaKey(spep_3+291,kamehame_beam,255);
setEffAlphaKey(spep_3+292,kamehame_beam,0);

--文字エントリー
ctshun = entryEffectLife( spep_3 + 0,  10011, 14, 0x100, -1, 0, 1.5, 254.2 );--シュンッ

setEffMoveKey( spep_3 + 0, ctshun, 1.5, 254.2 , 0 );
setEffMoveKey( spep_3 + 2, ctshun, -3.9, 260.3 , 0 );
setEffMoveKey( spep_3 + 4, ctshun, -7.1, 264 , 0 );
setEffMoveKey( spep_3 + 6, ctshun, -8.2, 265.2 , 0 );
setEffMoveKey( spep_3 + 12, ctshun, -8.2, 265.2 , 0 );
setEffMoveKey( spep_3 + 14, ctshun, -8.3, 265.3 , 0 );

setEffScaleKey( spep_3 + 0, ctshun, 0.6, 0.6 );
setEffScaleKey( spep_3 + 2, ctshun, 0.92, 0.92 );
setEffScaleKey( spep_3 + 4, ctshun, 1.11, 1.11 );
setEffScaleKey( spep_3 + 6, ctshun, 1.17, 1.17 );
setEffScaleKey( spep_3 + 8, ctshun, 1.18, 1.18 );
setEffScaleKey( spep_3 + 10, ctshun, 1.21, 1.21 );
setEffScaleKey( spep_3 + 12, ctshun, 1.25, 1.25 );
setEffScaleKey( spep_3 + 14, ctshun, 1.31, 1.31 );

setEffRotateKey( spep_3 + 0, ctshun, -8 );
setEffRotateKey( spep_3 + 14, ctshun, -8 );

setEffAlphaKey( spep_3 + 0, ctshun, 255 );
setEffAlphaKey( spep_3 + 6, ctshun, 255 );
setEffAlphaKey( spep_3 + 8, ctshun, 239 );
setEffAlphaKey( spep_3 + 10, ctshun, 191 );
setEffAlphaKey( spep_3 + 12, ctshun, 112 );
setEffAlphaKey( spep_3 + 14, ctshun, 0 );

--集中線
shuchusen1 = entryEffectLife( spep_3 + 98,  906, 84, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_3 + 98, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_3 + 182, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_3 + 98, shuchusen1, 1.88, 1.94 );
setEffScaleKey( spep_3 + 182, shuchusen1, 1.88, 1.94 );

setEffRotateKey( spep_3 + 98, shuchusen1, 0 );
setEffRotateKey( spep_3 + 182, shuchusen1, 0 );

setEffAlphaKey( spep_3 + 98, shuchusen1, 0 );
setEffAlphaKey( spep_3 + 106, shuchusen1, 0 );
setEffAlphaKey( spep_3 + 107, shuchusen1, 255 );
setEffAlphaKey( spep_3 + 108, shuchusen1, 255 );
setEffAlphaKey( spep_3 + 182, shuchusen1, 255 );

--顔カットイン
speff=entryEffect(spep_3+98,1504,0x100,-1,0,0,0);  --カットイン(顔)
setEffReplaceTexture(speff,3,2);  --カットイン差し替え
speff1=entryEffect(spep_3+98,1505,0x100,-1,0,0,0);  --カットイン(セリフ)
setEffReplaceTexture(speff1,4,5);  --セリフカットイン差し替え

--ゴゴゴ
ctgogo=entryEffectLife(spep_3+110,190006,70,0x100,-1,0,520);--ゴゴゴ

setEffMoveKey(spep_3+110,ctgogo,0,520,0);
setEffMoveKey(spep_3+180,ctgogo,0,520,0);

setEffScaleKey(spep_3+110, ctgogo, 0.7, 0.7);
setEffScaleKey(spep_3+180, ctgogo, 0.7, 0.7);

setEffAlphaKey( spep_3 + 110, ctgogo, 0 );
setEffAlphaKey( spep_3 + 111, ctgogo, 255 );
setEffAlphaKey( spep_3 + 112, ctgogo, 255 );
setEffAlphaKey( spep_3 + 180, ctgogo, 255 );

setEffRotateKey(spep_3+110,ctgogo,0);
setEffRotateKey(spep_3+180,ctgogo,0);

--SE
playSe( spep_3+0, 43); --瞬間移動
--SE2=playSe(spep_3+20,15);--力をつける
--stopSe(spep_3+68,SE2,0);
playSe(  spep_3+20,  44);
playSe( spep_3+82, 17); --溜め
--playSe( spep_3+102, SE_02); --溜め
--playSe( spep_3+110, SE_04); --ゴゴゴ
--playSe( spep_3+170, SE_02); --溜め
--playSe( spep_3+190, SE_02); --溜め
--playSe( spep_3+210, SE_02); --溜め
playSe( spep_3+224, SE_07); --発射


--次の準備
spep_4=spep_3+292;
------------------------------------------------------
--カメハメビーム
------------------------------------------------------
--エフェクト(前)
explosion_f=entryEffect(spep_4,SP_06,0x100,-1,0,0,0);

setEffMoveKey( spep_4 + 0, explosion_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 158, explosion_f, 0, 0 , 0 );

setEffScaleKey(spep_4,explosion_f,1.1,1.1);
setEffScaleKey(spep_4+158,explosion_f,1.1,1.1);

setEffRotateKey(spep_4,explosion_f,0);
setEffRotateKey(spep_4+158,explosion_f,0);

setEffAlphaKey(spep_4,explosion_f,255);
setEffAlphaKey(spep_4+158,explosion_f,255);

--エフェクト(背)
explosion_b=entryEffect(spep_4,SP_07,0x80,-1,0,0,0);

setEffMoveKey( spep_4 + 0, explosion_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 158, explosion_b, 0, 0 , 0 );

setEffScaleKey(spep_4,explosion_b,1.1,1.1);
setEffScaleKey(spep_4+158,explosion_b,1.1,1.1);

setEffRotateKey(spep_4,explosion_b,0);
setEffRotateKey(spep_4+158,explosion_b,0);

setEffAlphaKey(spep_4,explosion_b,255);
setEffAlphaKey(spep_4+158,explosion_b,255);

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
changeAnime( spep_4 + 0, 1, 5 );

setDisp( spep_4 + 32, 1, 0 );

setMoveKey( spep_4 + 0, 1, 207, 45.5 , 0 );
setMoveKey( spep_4 + 2, 1, 206.4, 45.4 , 0 );
setMoveKey( spep_4 + 4, 1, 204.2, 45.2 , 0 );
setMoveKey( spep_4 + 6, 1, 200.2, 44.6 , 0 );
setMoveKey( spep_4 + 8, 1, 193.7, 43.8 , 0 );
setMoveKey( spep_4 + 10, 1, 184.1, 42.7 , 0 );
setMoveKey( spep_4 + 12, 1, 170.4, 40.9 , 0 );
setMoveKey( spep_4 + 14, 1, 150.8, 38.5 , 0 );
setMoveKey( spep_4 + 16, 1, 124.4, 35.3 , 0 );
setMoveKey( spep_4 + 18, 1, 92.3, 31.4 , 0 );
setMoveKey( spep_4 + 20, 1, 60.8, 27.6 , 0 );
setMoveKey( spep_4 + 22, 1, 35, 24.3 , 0 );
setMoveKey( spep_4 + 24, 1, 15.8, 22 , 0 );
setMoveKey( spep_4 + 26, 1, 2.9, 20.3 , 0 );
setMoveKey( spep_4 + 28, 1, -7.7, 19.1 , 0 );
setMoveKey( spep_4 + 30, 1, -14.5, 18.3 , 0 );
setMoveKey( spep_4 + 32, 1, -19, 17.7 , 0 );

setScaleKey( spep_4 + 0, 1, 0.16, 0.16 );
setScaleKey( spep_4 + 2, 1, 0.18, 0.18 );
setScaleKey( spep_4 + 4, 1, 0.2, 0.2 );
setScaleKey( spep_4 + 6, 1, 0.26, 0.26 );
setScaleKey( spep_4 + 8, 1, 0.29, 0.29 );
setScaleKey( spep_4 + 10, 1, 0.39, 0.39 );
setScaleKey( spep_4 + 12, 1, 0.47, 0.47 );
setScaleKey( spep_4 + 14, 1, 0.57, 0.57 );
setScaleKey( spep_4 + 16, 1, 0.80, 0.80 );
setScaleKey( spep_4 + 18, 1, 0.87, 0.87 );
setScaleKey( spep_4 + 20, 1, 1.04, 1.04 );
setScaleKey( spep_4 + 22, 1, 1.17, 1.17 );
setScaleKey( spep_4 + 24, 1, 1.27, 1.27 );
setScaleKey( spep_4 + 26, 1, 1.34, 1.34 );
setScaleKey( spep_4 + 28, 1, 1.39, 1.39 );
setScaleKey( spep_4 + 30, 1, 1.39, 1.39 );
setScaleKey( spep_4 + 32, 1, 1.4, 1.4 );

setRotateKey( spep_4 + 0, 1, 1.8 );
setRotateKey( spep_4 + 32, 1, 1.8 );

--SE
--playSe( spep_4, SE_07); --発射
playSe( spep_4+36, 1024); --爆発

-- ダメージ表示
dealDamage(spep_4+36);
entryFade( spep_4+138, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_4+148);

else 

------------------------------------------------------
--蹴り回し
------------------------------------------------------

spep_0=0;

--エフェクト(前)
kick_f=entryEffectLife(spep_0,SP_01x,224,0x100,-1,0,0,0);

setEffMoveKey( spep_0 + 0, kick_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 224, kick_f, 0, 0 , 0 );

setEffScaleKey(spep_0,kick_f,-1.0,1.0);
setEffScaleKey(spep_0+224,kick_f,-1.0,1.0);

setEffRotateKey(spep_0,kick_f,0);
setEffRotateKey(spep_0+224,kick_f,0);

setEffAlphaKey(spep_0,kick_f,255);
setEffAlphaKey(spep_0+224,kick_f,255);

--エフェクト(後)
kick_b=entryEffectLife(spep_0,SP_02x,224,0x80,-1,0,0,0);

setEffMoveKey( spep_0 + 0, kick_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 224, kick_b, 0, 0 , 0 );

setEffScaleKey(spep_0,kick_b,-1.0,1.0);
setEffScaleKey(spep_0+224,kick_b,-1.0,1.0);

setEffRotateKey(spep_0,kick_b,0);
setEffRotateKey(spep_0+224,kick_b,0);

setEffAlphaKey(spep_0,kick_b,255);
setEffAlphaKey(spep_0+224,kick_b,255);


--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

SP_dodge = spep_0+30 ; --エンドフェイズのフレーム数を置き換える

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

--文字エントリー
ctbon = entryEffectLife( spep_0 + 206,  10027, 16, 0x100, -1, 0, -64, 296.1 );--ボンッ

setEffMoveKey( spep_0 + 206, ctbon, -64, 296.1 , 0 );
setEffMoveKey( spep_0 + 222, ctbon, -64, 296.1 , 0 );

setEffScaleKey( spep_0 + 206, ctbon, 1.2, 1.2 );
setEffScaleKey( spep_0 + 212, ctbon, 1.44, 1.44 );
setEffScaleKey( spep_0 + 214, ctbon, 2.15, 2.15 );
setEffScaleKey( spep_0 + 216, ctbon, 2.23, 2.23 );
setEffScaleKey( spep_0 + 218, ctbon, 2.31, 2.31 );
setEffScaleKey( spep_0 + 220, ctbon, 2.39, 2.39 );
setEffScaleKey( spep_0 + 222, ctbon, 2.47, 2.47 );

setEffRotateKey( spep_0 + 206, ctbon, 22 );
setEffRotateKey( spep_0 + 222, ctbon, 22 );

setEffAlphaKey( spep_0 + 206, ctbon, 0 );
setEffAlphaKey( spep_0 + 207, ctbon, 255 );
setEffAlphaKey( spep_0 + 208, ctbon, 255 );
setEffAlphaKey( spep_0 + 222, ctbon, 255 );

--敵の動き
setDisp( spep_0 + 38, 1, 1 );
setDisp( spep_0 + 212, 1, 0 );

changeAnime( spep_0 + 38, 1, 117 );--42
changeAnime( spep_0-2 + 58, 1, 8 );
changeAnime( spep_0-3 + 58, 1, 8 );
changeAnime( spep_0-4 + 62, 1, 6 );
changeAnime( spep_0-4 + 70, 1, 6 );
--changeAnime( spep_0-5 + 72, 1, 7 );
changeAnime( spep_0-2 + 72, 1, 7 );
--changeAnime( spep_0-4 + 76, 1, 7 )
changeAnime( spep_0-5 + 78, 1, 8 );
changeAnime( spep_0-4 + 78, 1, 8 );
changeAnime( spep_0-4 + 82, 1, 6 );
changeAnime( spep_0-4 + 96, 1, 107 );
--changeAnime( spep_0-4 + 96, 1, 7 );
changeAnime( spep_0-5 + 120, 1, 106 );
changeAnime( spep_0-4 + 120, 1, 106 );
changeAnime( spep_0-3 + 148, 1, 108 );
changeAnime( spep_0-2 + 148, 1, 108 );

setMoveKey( spep_0 + 38, 1, 180, 100 , 0 );--42
setMoveKey( spep_0 + 42, 1, 180, 100 , 0 );--42
setMoveKey( spep_0 + 48, 1, 180, 100 , 0 );
setMoveKey( spep_0 + 50, 1, 153.7, 56.2 , 0 );
setMoveKey( spep_0 + 52, 1, 135, 25 , 0 );
setMoveKey( spep_0 + 53, 1, 123.7, 6.2 , 0 );
--setMoveKey( spep_0 + 56, 1, 120, 0 , 0 );
setMoveKey( spep_0-2 + 58, 1, -245.4, -57.4 , 0 );
setMoveKey( spep_0-3 + 60, 1, -434.9, 31.1 , 0 );
setMoveKey( spep_0-3 + 60, 1, -434.9, 31.1 , 0 );
setMoveKey( spep_0-3 + 62, 1, -290, 78.3 , 0 );
setMoveKey( spep_0-3 + 64, 1, -266.2, 116.1 , 0 );
setMoveKey( spep_0-3 + 66, 1, -193.7, 129.7 , 0 );
setMoveKey( spep_0-3 + 68, 1, -45.5, 149 , 0 );
--setMoveKey( spep_0-3 + 70, 1, -89.3, 130.6 , 0 );
setMoveKey( spep_0-2 + 72, 1, 128.2, 10.1 , 0 );
setMoveKey( spep_0-3 + 74, 1, 95.7, -52.1 , 0 );
setMoveKey( spep_0-3 + 76, 1, 54.8, -107.2 , 0 );
setMoveKey( spep_0-3 + 78, 1, -11.4, -107.2 , 0 );
setMoveKey( spep_0-3 + 80, 1, -148, -89.6 , 0 );
setMoveKey( spep_0-3 + 82, 1, -157.5, -43.2 , 0 );
setMoveKey( spep_0-3 + 84, 1, -182.2, -1 , 0 );
setMoveKey( spep_0-3 + 86, 1, -165.6, 40.5 , 0 );
setMoveKey( spep_0-3 + 88, 1, -145.4, 72.8 , 0 );
setMoveKey( spep_0-3 + 90, 1, -125.1, 102.5 , 0 );
setMoveKey( spep_0-3 + 92, 1, -65.7, 116.7 , 0 );
setMoveKey( spep_0-3 + 94, 1, -9.5, 131.7 , 0 );
setMoveKey( spep_0-3 + 96, 1, -3.2, 149.9 , 0 );
setMoveKey( spep_0-3 + 98, 1, 16.7, 118.2 , 0 );
setMoveKey( spep_0-3 + 100, 1, 46.7, 120.3 , 0 );
setMoveKey( spep_0-3 + 102, 1, 41.1, 158.8 , 0 );
setMoveKey( spep_0-3 + 104, 1, 27.4, 252.1 , 0 );
setMoveKey( spep_0-3 + 106, 1, 9.9, 375 , 0 );
setMoveKey( spep_0-3 + 108, 1, -7.8, 506.5 , 0 );
setMoveKey( spep_0-3 + 110, 1, -23.3, 626.3 , 0 );
setMoveKey( spep_0-3 + 112, 1, -34.7, 714.9 , 0 );
setMoveKey( spep_0-3 + 114, 1, -41.4, 751.5 , 0 );
setMoveKey( spep_0-3 + 116, 1, -107.6, 388.4 , 0 );
setMoveKey( spep_0-3 + 118, 1, -322.9, 92.4 , 0 );
setMoveKey( spep_0-3 + 120, 1, -308, 333.9 , 0 );
setMoveKey( spep_0-3 + 122, 1, -301.1, 324 , 0 );
setMoveKey( spep_0-3 + 124, 1, -281.6, 295.5 , 0 );
setMoveKey( spep_0-3 + 126, 1, -250.3, 251.1 , 0 );
setMoveKey( spep_0-3 + 128, 1, -207.8, 192.7 , 0 );
setMoveKey( spep_0-3 + 130, 1, -154.5, 122.8 , 0 );
setMoveKey( spep_0-3 + 132, 1, -91.8, 44.1 , 0 );
setMoveKey( spep_0-3 + 134, 1, -21.9, -39.5 , 0 );
setMoveKey( spep_0-3 + 136, 1, 52.1, -124.2 , 0 );
setMoveKey( spep_0-3 + 138, 1, 126.1, -205.3 , 0 );
setMoveKey( spep_0-3 + 140, 1, 194.7, -277.6 , 0 );
setMoveKey( spep_0-3 + 142, 1, 251.8, -335.9 , 0 );
setMoveKey( spep_0-3 + 144, 1, 290.6, -374.6 , 0 );
setMoveKey( spep_0-3 + 146, 1, 304.9, -388.9 , 0 );
setMoveKey( spep_0-3 + 147, 1, 304.9, -388.9 , 0 );
setMoveKey( spep_0-3 + 148, 1, -408.8, 191.7 , 0 );
setMoveKey( spep_0-3 + 149, 1, -408.8, 191.7 , 0 );
setMoveKey( spep_0-3 + 150, 1, -295.4, 141.4 , 0 );
setMoveKey( spep_0-3 + 152, 1, -202.7, 100.2 , 0 );
setMoveKey( spep_0-3 + 154, 1, -130.6, 68.2 , 0 );
setMoveKey( spep_0-3 + 156, 1, -79.1, 45.3 , 0 );
setMoveKey( spep_0-3 + 158, 1, -48.2, 31.6 , 0 );
setMoveKey( spep_0-3 + 160, 1, -37.9, 27.1 , 0 );
setMoveKey( spep_0-3 + 162, 1, -29.8, 27.4 , 0 );
setMoveKey( spep_0-3 + 164, 1, -21.8, 27.8 , 0 );
setMoveKey( spep_0-3 + 166, 1, -13.7, 28.2 , 0 );
setMoveKey( spep_0-3 + 168, 1, -5.6, 28.5 , 0 );
setMoveKey( spep_0-3 + 170, 1, 2.5, 28.9 , 0 );
setMoveKey( spep_0-3 + 172, 1, 10.6, 29.3 , 0 );
setMoveKey( spep_0-3 + 174, 1, 18.6, 29.6 , 0 );
setMoveKey( spep_0-3 + 176, 1, 26.7, 30 , 0 );
setMoveKey( spep_0-3 + 178, 1, 34.8, 30.4 , 0 );
setMoveKey( spep_0-3 + 180, 1, 42.9, 30.8 , 0 );
setMoveKey( spep_0-3 + 182, 1, 51, 31.1 , 0 );
setMoveKey( spep_0-3 + 184, 1, 59.1, 31.5 , 0 );
setMoveKey( spep_0-3 + 186, 1, 67.2, 31.9 , 0 );
setMoveKey( spep_0-3 + 188, 1, 75.2, 32.2 , 0 );
setMoveKey( spep_0-3 + 190, 1, 83.3, 32.6 , 0 );
setMoveKey( spep_0-3 + 192, 1, 91.4, 33 , 0 );
setMoveKey( spep_0-3 + 194, 1, 99.5, 33.4 , 0 );
setMoveKey( spep_0-3 + 196, 1, 107.6, 33.7 , 0 );
setMoveKey( spep_0-3 + 198, 1, 115.7, 34.1 , 0 );
setMoveKey( spep_0-3 + 200, 1, 123.8, 34.5 , 0 );
setMoveKey( spep_0-3 + 202, 1, 131.9, 34.9 , 0 );
setMoveKey( spep_0-3 + 204, 1, 140, 35.2 , 0 );
setMoveKey( spep_0-3 + 206, 1, 148.1, 35.6 , 0 );
setMoveKey( spep_0-3 + 208, 1, 156.2, 36 , 0 );
setMoveKey( spep_0-3 + 210, 1, 181.9, 44.4 , 0 );
setMoveKey( spep_0 + 212, 1, 166.3, 19.5 , 0 );

setScaleKey( spep_0 + 38, 1, 0.51, 0.51 );--41
setScaleKey( spep_0 + 42, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 48, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 50, 1, 1.26, 1.26 );
setScaleKey( spep_0 + 52, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 53, 1, 2.12, 2.12 );
--setScaleKey( spep_0 + 56, 1, 2.23, 2.23 );
setScaleKey( spep_0-3 + 58, 1, 2.84, 2.84 );
setScaleKey( spep_0-3 + 60, 1, 3.01, 3.01 );
setScaleKey( spep_0-4 + 60, 1, 3.01, 3.01 );
setScaleKey( spep_0-4 + 62, 1, 2.97, 2.97 );
setScaleKey( spep_0-4 + 64, 1, 2.71, 2.71 );
setScaleKey( spep_0-4 + 66, 1, 2.27, 2.27 );
setScaleKey( spep_0-4 + 68, 1, 1.93, 1.93 );
setScaleKey( spep_0-3 + 72, 1, 1.93, 1.93 );
--setScaleKey( spep_0-4 + 70, 1, 1.7, 1.7 );
--setScaleKey( spep_0-5 + 72, 1, 0.5, 0.5 );
setScaleKey( spep_0-2 + 72, 1, 0.5, 0.5 );
setScaleKey( spep_0-4 + 74, 1, 0.5, 0.5 );
setScaleKey( spep_0-4 + 76, 1, 0.57, 0.57 );
setScaleKey( spep_0-5 + 78, 1, 1.6, 1.6 );
setScaleKey( spep_0-4 + 78, 1, 1.6, 1.6 );
setScaleKey( spep_0-4 + 80, 1, 1.52, 1.52 );
setScaleKey( spep_0-4 + 82, 1, 1.37, 1.37 );
setScaleKey( spep_0-4 + 84, 1, 1.29, 1.29 );
setScaleKey( spep_0-4 + 86, 1, 1.22, 1.22 );
setScaleKey( spep_0-4 + 88, 1, 1.16, 1.16 );
setScaleKey( spep_0-4 + 90, 1, 1.12, 1.12 );
setScaleKey( spep_0-4 + 92, 1, 1.09, 1.09 );
setScaleKey( spep_0-5 + 96, 1, 1.05, 1.05 );
setScaleKey( spep_0-4 + 96, 1, 0.29, 0.29 );
setScaleKey( spep_0-4 + 98, 1, 0.39, 0.39 );
setScaleKey( spep_0-4 + 100, 1, 0.45, 0.45 );
setScaleKey( spep_0-4 + 102, 1, 0.67, 0.67 );
setScaleKey( spep_0-4 + 104, 1, 1.24, 1.24 );
setScaleKey( spep_0-4 + 106, 1, 1.98, 1.98 );
setScaleKey( spep_0-4 + 108, 1, 2.79, 2.79 );
setScaleKey( spep_0-4 + 110, 1, 3.51, 3.51 );
setScaleKey( spep_0-4 + 112, 1, 4.03, 4.03 );
setScaleKey( spep_0-4 + 114, 1, 4.24, 4.24 );
setScaleKey( spep_0-4 + 116, 1, 3.85, 3.85 );
setScaleKey( spep_0-4 + 118, 1, 3.46, 3.46 );
setScaleKey( spep_0-4 + 120, 1, 7.04, 7.04 );
setScaleKey( spep_0-4 + 122, 1, 6.93, 6.93 );
setScaleKey( spep_0-4 + 124, 1, 6.61, 6.61 );
setScaleKey( spep_0-4 + 126, 1, 6.13, 6.13 );
setScaleKey( spep_0-4 + 128, 1, 5.53, 5.53 );
setScaleKey( spep_0-4 + 130, 1, 4.82, 4.82 );
setScaleKey( spep_0-4 + 132, 1, 4.08, 4.08 );
setScaleKey( spep_0-4 + 134, 1, 3.3, 3.3 );
setScaleKey( spep_0-4 + 136, 1, 2.55, 2.55 );
setScaleKey( spep_0-4 + 138, 1, 1.85, 1.85 );
setScaleKey( spep_0-4 + 140, 1, 1.24, 1.24 );
setScaleKey( spep_0-4 + 142, 1, 0.75, 0.75 );
setScaleKey( spep_0-4 + 144, 1, 0.43, 0.43 );
setScaleKey( spep_0-4 + 146, 1, 0.31, 0.31 );
setScaleKey( spep_0-4 + 148, 1, 0.31, 0.31 );
setScaleKey( spep_0-4 + 149, 1, 4.87, 4.87 );
setScaleKey( spep_0-4 + 150, 1, 3.9, 3.9 );
setScaleKey( spep_0-4 + 152, 1, 3.1, 3.1 );
setScaleKey( spep_0-4 + 154, 1, 2.49, 2.49 );
setScaleKey( spep_0-4 + 156, 1, 2.05, 2.05 );
setScaleKey( spep_0-4 + 158, 1, 1.78, 1.78 );
setScaleKey( spep_0-4 + 160, 1, 1.69, 1.69 );
setScaleKey( spep_0-4 + 162, 1, 1.66, 1.66 );
setScaleKey( spep_0-4 + 164, 1, 1.63, 1.63 );
setScaleKey( spep_0-4 + 166, 1, 1.59, 1.59 );
setScaleKey( spep_0-4 + 168, 1, 1.56, 1.56 );
setScaleKey( spep_0-4 + 170, 1, 1.53, 1.53 );
setScaleKey( spep_0-4 + 172, 1, 1.5, 1.5 );
setScaleKey( spep_0-4 + 174, 1, 1.46, 1.46 );
setScaleKey( spep_0-4 + 176, 1, 1.43, 1.43 );
setScaleKey( spep_0-4 + 178, 1, 1.4, 1.4 );
setScaleKey( spep_0-4 + 180, 1, 1.36, 1.36 );
setScaleKey( spep_0-4 + 182, 1, 1.33, 1.33 );
setScaleKey( spep_0-4 + 184, 1, 1.3, 1.3 );
setScaleKey( spep_0-4 + 186, 1, 1.26, 1.26 );
setScaleKey( spep_0-4 + 188, 1, 1.23, 1.23 );
setScaleKey( spep_0-4 + 190, 1, 1.2, 1.2 );
setScaleKey( spep_0-4 + 192, 1, 1.17, 1.17 );
setScaleKey( spep_0-4 + 194, 1, 1.13, 1.13 );
setScaleKey( spep_0-4 + 196, 1, 1.1, 1.1 );
setScaleKey( spep_0-4 + 198, 1, 1.07, 1.07 );
setScaleKey( spep_0-4 + 200, 1, 1.03, 1.03 );
setScaleKey( spep_0-4 + 202, 1, 1, 1 );
setScaleKey( spep_0-4 + 204, 1, 0.97, 0.97 );
setScaleKey( spep_0-4 + 206, 1, 0.93, 0.93 );
setScaleKey( spep_0-4 + 208, 1, 0.9, 0.9 );
setScaleKey( spep_0-4 + 210, 1, 0.87, 0.87 );
setScaleKey( spep_0 + 212, 1, 0.84, 0.84 );

setRotateKey( spep_0 + 28, 1, -14.7 );--41
setRotateKey( spep_0 + 42, 1, -14.7 );
setRotateKey( spep_0 + 53, 1, -14.7 );
--setRotateKey( spep_0 + 57, 1, -14.7 );
setRotateKey( spep_0-3 + 58, 1, 0 );
setRotateKey( spep_0-3 + 60, 1, -16 );
setRotateKey( spep_0-4 + 60, 1, -16 );
setRotateKey( spep_0-4 + 62, 1, 46.4 );
setRotateKey( spep_0-4 + 64, 1, 60.1 );
setRotateKey( spep_0-4 + 66, 1, 73.9 );
setRotateKey( spep_0-5 + 68, 1, 92.4 );
setRotateKey( spep_0-3 + 72, 1, 92.4 );
--setRotateKey( spep_0-4 + 70, 1, -100.3 );
setRotateKey( spep_0-2 + 72, 1, -87.6 );
--setRotateKey( spep_0-5 + 74, 1, 83.5 );
setRotateKey( spep_0-4 + 74, 1, -83.5 );
setRotateKey( spep_0-4 + 76, 1, -80.8 );
setRotateKey( spep_0-4 + 77, 1, -83.9 );
setRotateKey( spep_0-4 + 78, 1, -83.9 );
setRotateKey( spep_0-4 + 80, 1, -36.2 );
setRotateKey( spep_0-4 + 82, 1, 4.5 );
setRotateKey( spep_0-4 + 84, 1, 16.5 );
setRotateKey( spep_0-4 + 86, 1, 27.1 );
setRotateKey( spep_0-4 + 88, 1, 40.1 );
setRotateKey( spep_0-4 + 90, 1, 53.1 );
setRotateKey( spep_0-4 + 91, 1, 64.9 );
setRotateKey( spep_0-4 + 92, 1, 64.9 );
setRotateKey( spep_0-4 + 94, 1, 76.7 );
setRotateKey( spep_0-5 + 96, 1, 76.7 );

setRotateKey( spep_0-4 + 96, 1, -80.6 );
setRotateKey( spep_0-4 + 98, 1, -91.8 );
setRotateKey( spep_0-4 + 100, 1, -112.6 );
setRotateKey( spep_0-4 + 102, 1, -122.6 );
setRotateKey( spep_0-4 + 104, 1, -147.7 );
setRotateKey( spep_0-4 + 106, 1, -181.2 );
setRotateKey( spep_0-4 + 108, 1, -216.8 );
setRotateKey( spep_0-4 + 110, 1, -248.9 );
setRotateKey( spep_0-4 + 112, 1, -272.3 );
setRotateKey( spep_0-4 + 114, 1, -281.8 );
setRotateKey( spep_0-4 + 116, 1, -328.2 );
setRotateKey( spep_0-4 + 118, 1, -374.5 );
setRotateKey( spep_0-4 + 119, 1, 59 );
setRotateKey( spep_0-4 + 120, 1, 59 );
setRotateKey( spep_0-4 + 122, 1, 58.8 );
setRotateKey( spep_0-4 + 124, 1, 58.2 );
setRotateKey( spep_0-4 + 126, 1, 57.2 );
setRotateKey( spep_0-4 + 128, 1, 56 );
setRotateKey( spep_0-4 + 130, 1, 54.6 );
setRotateKey( spep_0-4 + 132, 1, 53.1 );
setRotateKey( spep_0-4 + 134, 1, 51.6 );
setRotateKey( spep_0-4 + 136, 1, 50.1 );
setRotateKey( spep_0-4 + 138, 1, 48.7 );
setRotateKey( spep_0-4 + 140, 1, 47.5 );
setRotateKey( spep_0-4 + 142, 1, 46.5 );
setRotateKey( spep_0-4 + 144, 1, 45.9 );
setRotateKey( spep_0-4 + 146, 1, 45.6 );
setRotateKey( spep_0 + 212, 1, 45.6 );

--se
playSe( spep_0, SE_04); --移動音
playSe( spep_0+56, 1010); --蹴り
playSe( spep_0+92, 1012); --蹴り飛ばし
playSe( spep_0+102, 44); --飛んでいく
playSe( spep_0+168, 1033); --外れる
playSe( spep_0+178, 1033); --外れる
playSe( spep_0+192, 1033); --外れる
playSe( spep_0+208, 1023); --当たる

-- ** エフェクト等 ** --
entryFade(spep_0, 0, 2, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- whit_fe fade
entryFade(spep_0+216, 4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- whit_fe fade

--次の準備
spep_1=spep_0+224;

------------------------------------------------------
--気弾を撃ってぐるっと回してドーン
------------------------------------------------------
--エフェクト(前)
kidan_f=entryEffectLife(spep_1,SP_03x,362,0x100,-1,0,0,0);

setEffMoveKey( spep_1 + 0, kidan_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 362, kidan_f, 0, 0 , 0 );

setEffScaleKey(spep_1,kidan_f,-1.0,1.0);
setEffScaleKey(spep_1+362,kidan_f,-1.0,1.0);

setEffRotateKey(spep_1,kidan_f,0);
setEffRotateKey(spep_1+362,kidan_f,0);

setEffAlphaKey(spep_1,kidan_f,255);
setEffAlphaKey(spep_1+362,kidan_f,255);

--エフェクト(後)
kidan_b=entryEffectLife(spep_1,SP_04x,362,0x80,-1,0,0,0);

setEffMoveKey( spep_1 + 0, kidan_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 362, kidan_b, 0, 0 , 0 );

setEffScaleKey(spep_1,kidan_b,-1.0,1.0);
setEffScaleKey(spep_1+362,kidan_b,-1.0,1.0);

setEffRotateKey(spep_1,kidan_b,0);
setEffRotateKey(spep_1+362,kidan_b,0);

setEffAlphaKey(spep_1,kidan_b,255);
setEffAlphaKey(spep_1+362,kidan_b,255);

--文字エントリー
ctzan = entryEffectLife( spep_1 + 174,  10010, 18, 0x100, -1, 0, -89.5, 246.2 );--ザンッ

setEffMoveKey( spep_1 + 174, ctzan, -89.5, 246.2 , 0 );
setEffMoveKey( spep_1 + 180, ctzan, -105.2, 280.3 , 0 );
setEffMoveKey( spep_1 + 182, ctzan, -101.3, 293.9 , 0 );
setEffMoveKey( spep_1 + 184, ctzan, -109.6, 294.7 , 0 );
setEffMoveKey( spep_1 + 186, ctzan, -97.3, 300.7 , 0 );
setEffMoveKey( spep_1 + 188, ctzan, -103.2, 302.1 , 0 );
setEffMoveKey( spep_1 + 192, ctzan, -111.3, 300.1 , 0 );

setEffScaleKey( spep_1 + 174, ctzan, 1.06, 1.06 );
setEffScaleKey( spep_1 + 180, ctzan, 1.53, 1.53 );
setEffScaleKey( spep_1 + 182, ctzan, 1.69, 1.69 );
setEffScaleKey( spep_1 + 184, ctzan, 1.73, 1.73 );
setEffScaleKey( spep_1 + 186, ctzan, 1.76, 1.76 );
setEffScaleKey( spep_1 + 188, ctzan, 1.8, 1.8 );
setEffScaleKey( spep_1 + 192, ctzan, 1.8, 1.8 );

setEffRotateKey( spep_1 + 174, ctzan, -15.6 );
setEffRotateKey( spep_1 + 192, ctzan, -15.6 );

setEffAlphaKey( spep_1 + 174, ctzan, 0 );
setEffAlphaKey( spep_1 + 175, ctzan, 255 );
setEffAlphaKey( spep_1 + 176, ctzan, 255 );
setEffAlphaKey( spep_1 + 188, ctzan, 255 );
setEffAlphaKey( spep_1 + 190, ctzan, 128 );
setEffAlphaKey( spep_1 + 192, ctzan, 0 );

--文字エントリー
ctdogon = entryEffectLife( spep_1 + 226,  10018, 32, 0x100, -1, 0, -6.3, 364.2 );--ドゴォンッ

setEffMoveKey( spep_1 + 226, ctdogon, -6.3, 364.2 , 0 );
setEffMoveKey( spep_1 + 232, ctdogon, -2.5, 397.5 , 0 );
setEffMoveKey( spep_1 + 234, ctdogon, 5.5, 430.9 , 0 );
setEffMoveKey( spep_1 + 236, ctdogon, 6.6, 434.1 , 0 );
setEffMoveKey( spep_1 + 238, ctdogon, 3.2, 435.6 , 0 );
setEffMoveKey( spep_1 + 240, ctdogon, 7.9, 454.1 , 0 );
setEffMoveKey( spep_1 + 242, ctdogon, 9.6, 451.1 , 0 );
setEffMoveKey( spep_1 + 244, ctdogon, 3.1, 461.2 , 0 );
setEffMoveKey( spep_1 + 246, ctdogon, 14.1, 464.4 , 0 );
setEffMoveKey( spep_1 + 248, ctdogon, 4.4, 464.1 , 0 );
setEffMoveKey( spep_1 + 250, ctdogon, 8.8, 470.4 , 0 );
setEffMoveKey( spep_1 + 252, ctdogon, 4.6, 464.7 , 0 );
setEffMoveKey( spep_1 + 254, ctdogon, 8.9, 472.3 , 0 );
setEffMoveKey( spep_1 + 256, ctdogon, 7.3, 469 , 0 );
setEffMoveKey( spep_1 + 258, ctdogon, 14.7, 486.6 , 0 );

setEffScaleKey( spep_1 + 226, ctdogon, 2.74, 2.74 );
setEffScaleKey( spep_1 + 232, ctdogon, 3.4, 3.4 );
setEffScaleKey( spep_1 + 234, ctdogon, 3.8, 3.8 );
setEffScaleKey( spep_1 + 236, ctdogon, 3.93, 3.93 );
setEffScaleKey( spep_1 + 238, ctdogon, 4.03, 4.03 );
setEffScaleKey( spep_1 + 240, ctdogon, 4.11, 4.11 );
setEffScaleKey( spep_1 + 242, ctdogon, 4.19, 4.19 );
setEffScaleKey( spep_1 + 244, ctdogon, 4.25, 4.25 );
setEffScaleKey( spep_1 + 246, ctdogon, 4.3, 4.3 );
setEffScaleKey( spep_1 + 248, ctdogon, 4.34, 4.34 );
setEffScaleKey( spep_1 + 250, ctdogon, 4.37, 4.37 );
setEffScaleKey( spep_1 + 252, ctdogon, 4.38, 4.38 );
setEffScaleKey( spep_1 + 254, ctdogon, 4.39, 4.39 );
setEffScaleKey( spep_1 + 256, ctdogon, 4.9, 4.9 );
setEffScaleKey( spep_1 + 258, ctdogon, 5.27, 5.27 );

setEffRotateKey( spep_1 + 226, ctdogon, -0.9 );
setEffRotateKey( spep_1 + 258, ctdogon, -0.9 );

setEffAlphaKey( spep_1 + 226, ctdogon, 0 );
setEffAlphaKey( spep_1 + 227, ctdogon, 255 );
setEffAlphaKey( spep_1 + 228, ctdogon, 255 );
setEffAlphaKey( spep_1 + 250, ctdogon, 255 );
setEffAlphaKey( spep_1 + 252, ctdogon, 143 );
setEffAlphaKey( spep_1 + 254, ctdogon, 64 );
setEffAlphaKey( spep_1 + 256, ctdogon, 16 );
setEffAlphaKey( spep_1 + 258, ctdogon, 0 );

--文字エントリー
ctdon = entryEffectLife( spep_1 + 336,  10019, 24, 0x100, -1, 0, -97.6, 204.5 );--ドンッ

setEffMoveKey( spep_1 + 336, ctdon, 97.6, 204.5 , 0 );
setEffMoveKey( spep_1 + 342, ctdon, 99.1, 247 , 0 );
setEffMoveKey( spep_1 + 344, ctdon, 81.5, 280.9 , 0 );
setEffMoveKey( spep_1 + 346, ctdon, 88, 291.4 , 0 );
setEffMoveKey( spep_1 + 348, ctdon, 78.2, 281.2 , 0 );
setEffMoveKey( spep_1 + 350, ctdon, 89.9, 284.3 , 0 );
setEffMoveKey( spep_1 + 352, ctdon, 81.7, 290.7 , 0 );
setEffMoveKey( spep_1 + 354, ctdon, 89.6, 285.6 , 0 );
setEffMoveKey( spep_1 + 356, ctdon, 81.3, 291.9 , 0 );
setEffMoveKey( spep_1 + 358, ctdon, 84.2, 280.3 , 0 );
setEffMoveKey( spep_1 + 360, ctdon, 84.1, 280.8 , 0 );

setEffScaleKey( spep_1 + 336, ctdon, 1.28, 1.28 );
setEffScaleKey( spep_1 + 342, ctdon, 1.62, 1.62 );
setEffScaleKey( spep_1 + 344, ctdon, 1.97, 1.97 );
setEffScaleKey( spep_1 + 346, ctdon, 1.98, 1.98 );
setEffScaleKey( spep_1 + 348, ctdon, 1.99, 1.99 );
setEffScaleKey( spep_1 + 350, ctdon, 2.01, 2.01 );
setEffScaleKey( spep_1 + 352, ctdon, 2.02, 2.02 );
setEffScaleKey( spep_1 + 354, ctdon, 2.03, 2.03 );
setEffScaleKey( spep_1 + 356, ctdon, 2.04, 2.04 );
setEffScaleKey( spep_1 + 358, ctdon, 2.05, 2.05 );
setEffScaleKey( spep_1 + 360, ctdon, 2.06, 2.06 );

setEffRotateKey( spep_1 + 336, ctdon, 14.2 );
setEffRotateKey( spep_1 + 342, ctdon, 14.7 );
setEffRotateKey( spep_1 + 344, ctdon, 15.2 );
setEffRotateKey( spep_1 + 360, ctdon, 15.2 );

setEffAlphaKey( spep_1 + 336, ctdon, 0 );
setEffAlphaKey( spep_1 + 337, ctdon, 255 );
setEffAlphaKey( spep_1 + 338, ctdon, 255 );
setEffAlphaKey( spep_1 + 354, ctdon, 255 );
setEffAlphaKey( spep_1 + 356, ctdon, 170 );
setEffAlphaKey( spep_1 + 358, ctdon, 85 );
setEffAlphaKey( spep_1 + 360, ctdon, 0 );

--敵の動き
setDisp( spep_1 + 46, 1, 1 );
setDisp( spep_1 + 104, 1, 0 );
setDisp( spep_1 + 162, 1, 1 );
setDisp( spep_1 + 192, 1, 0 );
setDisp( spep_1 + 261, 1, 1 );
setDisp( spep_1 + 262, 1, 1 );
setDisp( spep_1 + 333, 1, 0 );
setDisp( spep_1 + 334, 1, 0 );

changeAnime( spep_1 + 46, 1, 105 );
changeAnime( spep_1 + 162, 1, 108 );
changeAnime( spep_1 + 175, 1, 106 );--178
changeAnime( spep_1 + 176, 1, 106 );--178
changeAnime( spep_1 + 262, 1, 106 );
changeAnime( spep_1 + 290, 1, 106 );
changeAnime( spep_1 + 298, 1, 108 );
changeAnime( spep_1 + 308, 1, 108 );
changeAnime( spep_1 + 328, 1, 108 );

setMoveKey( spep_1 + 46, 1, -167.8, 100.5 , 0 );
setMoveKey( spep_1 + 48, 1, 55.2, 184.1 , 0 );
setMoveKey( spep_1 + 50, 1, 132, 228.5 , 0 );
setMoveKey( spep_1 + 52, 1, 157.5, 209.8 , 0 );
setMoveKey( spep_1 + 54, 1, 175.7, 254.9 , 0 );
setMoveKey( spep_1 + 56, 1, 214.2, 230.2 , 0 );
setMoveKey( spep_1 + 58, 1, 200.2, 256.1 , 0 );
setMoveKey( spep_1 + 60, 1, 235, 261.3 , 0 );
setMoveKey( spep_1 + 62, 1, 219.8, 247.4 , 0 );
setMoveKey( spep_1 + 64, 1, 250.2, 266.7 , 0 );
setMoveKey( spep_1 + 66, 1, 231.9, 267.3 , 0 );
setMoveKey( spep_1 + 68, 1, 257.4, 266.8 , 0 );
setMoveKey( spep_1 + 70, 1, 238.9, 276.3 , 0 );
setMoveKey( spep_1 + 72, 1, 257.5, 254.5 , 0 );
setMoveKey( spep_1 + 74, 1, 256.4, 286.3 , 0 );
setMoveKey( spep_1 + 76, 1, 267.6, 258.4 , 0 );
setMoveKey( spep_1 + 78, 1, 241.8, 279.7 , 0 );
setMoveKey( spep_1 + 80, 1, 266.5, 255.7 , 0 );
setMoveKey( spep_1 + 82, 1, 246, 275.5 , 0 );
setMoveKey( spep_1 + 84, 1, 269.1, 262.6 , 0 );
setMoveKey( spep_1 + 86, 1, 247, 274.2 , 0 );
setMoveKey( spep_1 + 88, 1, 266.7, 260.8 , 0 );
setMoveKey( spep_1 + 90, 1, 249.5, 279.9 , 0 );
setMoveKey( spep_1 + 92, 1, 275.5, 273.6 , 0 );
setMoveKey( spep_1 + 94, 1, 246.8, 268.1 , 0 );
setMoveKey( spep_1 + 96, 1, 277.2, 280.7 , 0 );
setMoveKey( spep_1 + 98, 1, 251.3, 270 , 0 );
setMoveKey( spep_1 + 100, 1, 278.2, 281.5 , 0 );
setMoveKey( spep_1 + 102, 1, 258, 252.9 , 0 );
setMoveKey( spep_1 + 104, 1, 272.5, 286.4 , 0 );


setMoveKey( spep_1 + 162, 1, -314.8, -720.8 , 0 );
setMoveKey( spep_1 + 164, 1, -55.7, -312.3 , 0 );
setMoveKey( spep_1 + 166, 1, 17.4, -192 , 0 );
setMoveKey( spep_1 + 168, 1, 88.8, -82.5 , 0 );
setMoveKey( spep_1 + 170, 1, 98.9, -63.9 , 0 );
setMoveKey( spep_1 + 172, 1, 117, -37.1 , 0 );
setMoveKey( spep_1 + 174, 1, 101.9, -58.1 , 0 );
--setMoveKey( spep_1 + 176, 1, -117, -37.1 , 0 );
setMoveKey( spep_1 + 175, 1, 91, -63 , 0 );--178
setMoveKey( spep_1 + 176, 1, 91, -63 , 0 );--178
setMoveKey( spep_1 + 180, 1, 122.5, -63.5 , 0 );
setMoveKey( spep_1 + 182, 1, 133, -63.6 , 0 );
setMoveKey( spep_1 + 184, 1, 143.7, -56.9 , 0 );
setMoveKey( spep_1 + 186, 1, 157.9, -48 , 0 );
setMoveKey( spep_1 + 188, 1, 175.5, -37 , 0 );
setMoveKey( spep_1 + 190, 1, 196.5, -23.8 , 0 );
setMoveKey( spep_1 + 192, 1, 221, -8.4 , 0 );


setMoveKey( spep_1-3 + 262, 1, -64.2, -206.7 , 0 );
setMoveKey( spep_1-3 + 264, 1, -105.7, -171.8 , 0 );
setMoveKey( spep_1-3 + 266, 1, -44.8, -191 , 0 );
setMoveKey( spep_1-3 + 268, 1, -76.8, -152.5 , 0 );
setMoveKey( spep_1-3 + 270, 1, 1.7, -125.9 , 0 );
setMoveKey( spep_1-3 + 272, 1, -5.9, -68.3 , 0 );
setMoveKey( spep_1-3 + 274, 1, 74.9, -13.3 , 0 );
setMoveKey( spep_1-3 + 276, 1, 90.6, 76.9 , 0 );
setMoveKey( spep_1-3 + 278, 1, 103.3, 80.5 , 0 );
setMoveKey( spep_1-3 + 280, 1, 123.8, 134.1 , 0 );
setMoveKey( spep_1-3 + 282, 1, 125.4, 111.3 , 0 );
setMoveKey( spep_1-3 + 284, 1, 121.3, 128.7 , 0 );
setMoveKey( spep_1-3 + 286, 1, 109.4, 111.1 , 0 );
setMoveKey( spep_1-3 + 288, 1, 89.7, 79.9 , 0 );
setMoveKey( spep_1-3 + 290, 1, 84.9, 81.2 , 0 );
setMoveKey( spep_1-3 + 292, 1, 12, 229.5 , 0 );
setMoveKey( spep_1-3 + 294, 1, -30.8, 243.1 , 0 );
setMoveKey( spep_1-3 + 296, 1, -54.1, 246.1 , 0 );
setMoveKey( spep_1-3 + 298, 1, -169.5, 212.2 , 0 );
setMoveKey( spep_1-3 + 300, 1, -176.4, 207.4 , 0 );
setMoveKey( spep_1-3 + 302, 1, -182, 202 , 0 );
setMoveKey( spep_1-3 + 304, 1, -186.3, 196 , 0 );
setMoveKey( spep_1-3 + 306, 1, -189.1, 189.6 , 0 );
setMoveKey( spep_1-3 + 308, 1, -156.9, 157.7 , 0 );
setMoveKey( spep_1-3 + 310, 1, -40.4, 47.4 , 0 );
setMoveKey( spep_1-3 + 312, 1, 75.9, -62.8 , 0 );
setMoveKey( spep_1-3 + 314, 1, 231.7, -252.6 , 0 );
setMoveKey( spep_1-3 + 316, 1, 387.5, -442.4 , 0 );
setMoveKey( spep_1-3 + 318, 1, 543.2, -632.2 , 0 );
setMoveKey( spep_1-3 + 326, 1, 543.2, -632.2 , 0 );
setMoveKey( spep_1-3 + 327, 1, 543.2, -632.2 , 0 );
setMoveKey( spep_1-3 + 328, 1, -207.2, 113.6 , 0 );
setMoveKey( spep_1-3 + 330, 1, -21.3, -61.9 , 0 );
setMoveKey( spep_1-3 + 332, 1, 56.7, -157 , 0 );
setMoveKey( spep_1-3 + 334, 1, 56.7, -157 , 0 );
setMoveKey( spep_1-3 + 336, 1, 172.6, -278.7 , 0 );

setScaleKey( spep_1 + 46, 1, 4.34, 4.34 );
setScaleKey( spep_1 + 48, 1, 2.05, 2.05 );
setScaleKey( spep_1 + 50, 1, 1.5, 1.5 );
setScaleKey( spep_1 + 52, 1, 1.17, 1.17 );
setScaleKey( spep_1 + 54, 1, 0.96, 0.96 );
setScaleKey( spep_1 + 56, 1, 0.8, 0.8 );
setScaleKey( spep_1 + 58, 1, 0.68, 0.68 );
setScaleKey( spep_1 + 60, 1, 0.59, 0.59 );
setScaleKey( spep_1 + 62, 1, 0.52, 0.52 );
setScaleKey( spep_1 + 64, 1, 0.46, 0.46 );
setScaleKey( spep_1 + 66, 1, 0.41, 0.41 );
setScaleKey( spep_1 + 68, 1, 0.38, 0.38 );
setScaleKey( spep_1 + 70, 1, 0.35, 0.35 );
setScaleKey( spep_1 + 72, 1, 0.32, 0.32 );
setScaleKey( spep_1 + 74, 1, 0.3, 0.3 );
setScaleKey( spep_1 + 76, 1, 0.29, 0.29 );
setScaleKey( spep_1 + 78, 1, 0.28, 0.28 );
setScaleKey( spep_1 + 80, 1, 0.27, 0.27 );
setScaleKey( spep_1 + 82, 1, 0.26, 0.26 );
setScaleKey( spep_1 + 84, 1, 0.25, 0.25 );
setScaleKey( spep_1 + 86, 1, 0.25, 0.25 );
setScaleKey( spep_1 + 88, 1, 0.24, 0.24 );

setScaleKey( spep_1-4 + 162, 1, 2.21, 2.21 );
setScaleKey( spep_1-4 + 164, 1, 2.1, 2.1 );
setScaleKey( spep_1-4 + 166, 1, 2.04, 2.04 );
setScaleKey( spep_1-4 + 168, 1, 2.02, 2.02 );
setScaleKey( spep_1-4 + 170, 1, 2.02, 2.02 );
setScaleKey( spep_1-4 + 172, 1, 2, 2 );
setScaleKey( spep_1-4 + 175, 1, 2, 2 );
setScaleKey( spep_1-4 + 176, 1, 2, 2 );
setScaleKey( spep_1-4 + 262, 1, 1.28, 1.28 );
setScaleKey( spep_1-4 + 270, 1, 1.28, 1.28 );
setScaleKey( spep_1-4 + 272, 1, 1.27, 1.27 );
setScaleKey( spep_1-2 + 276, 1, 1.27, 1.27 );
setScaleKey( spep_1-2 + 278, 1, 1.26, 1.26 );
setScaleKey( spep_1-2 + 280, 1, 1.26, 1.26 );
setScaleKey( spep_1-2 + 282, 1, 1.25, 1.25 );
setScaleKey( spep_1-2 + 284, 1, 1.24, 1.24 );
setScaleKey( spep_1-2 + 286, 1, 1.24, 1.24 );
setScaleKey( spep_1-2 + 288, 1, 1.23, 1.23 );
setScaleKey( spep_1-2 + 290, 1, 1.21, 1.21 );
setScaleKey( spep_1-2 + 292, 1, 1.2, 1.2 );
setScaleKey( spep_1-4 + 294, 1, 1.2, 1.2 );
setScaleKey( spep_1-4 + 296, 1, 1.19, 1.19 );
setScaleKey( spep_1-4 + 298, 1, 1.19, 1.19 );
setScaleKey( spep_1-4 + 300, 1, 1.18, 1.18 );
setScaleKey( spep_1-4 + 308, 1, 1.22, 1.22 );
setScaleKey( spep_1-4 + 328, 1, 0.19, 0.19 );
setScaleKey( spep_1-4 + 330, 1, 0.15, 0.15 );
setScaleKey( spep_1-4 + 332, 1, 0.14, 0.14 );
setScaleKey( spep_1-4 + 334, 1, 0.14, 0.14 );
setScaleKey( spep_1 + 336, 1, 0.16, 0.16 );

setRotateKey( spep_1 + 46, 1, 69.1 );
setRotateKey( spep_1 + 48, 1, 69.1 );
setRotateKey( spep_1 + 50, 1, 69.2 );
setRotateKey( spep_1 + 50, 1, 69.2 );
setRotateKey( spep_1 + 104, 1, 69.2 );

setRotateKey( spep_1 + 162, 1, -17.2 );
setRotateKey( spep_1 + 174, 1, -17.2 );
setRotateKey( spep_1 + 175, 1, -49.8 );
setRotateKey( spep_1 + 176, 1, -49.8 );
setRotateKey( spep_1 + 180, 1, -48.4 );
setRotateKey( spep_1 + 182, 1, -47.9 );
setRotateKey( spep_1 + 184, 1, -46.7 );
setRotateKey( spep_1 + 186, 1, -45.2 );
setRotateKey( spep_1 + 188, 1, -43.3 );
setRotateKey( spep_1 + 190, 1, -41 );
setRotateKey( spep_1 + 192, 1, -38.4 );

setRotateKey( spep_1-4 + 262, 1, -17.3 );
setRotateKey( spep_1-4 + 264, 1, -17.2 );
setRotateKey( spep_1-4 + 268, 1, -17.2 );
setRotateKey( spep_1-4 + 270, 1, -17.1 );
setRotateKey( spep_1-2 + 276, 1, -17.1 );
setRotateKey( spep_1-2 + 278, 1, -17 );

setRotateKey( spep_1-2 + 290, 1, -36.4 );
setRotateKey( spep_1-2 + 292, 1, -126 );
setRotateKey( spep_1-5 + 294, 1, -126 );
setRotateKey( spep_1-4 + 294, 1, -144.9 );
setRotateKey( spep_1-4 + 296, 1, -155.8 );
setRotateKey( spep_1-4 + 298, 1, -134.6 );
setRotateKey( spep_1-4 + 300, 1, -140.8 );
setRotateKey( spep_1-4 + 302, 1, -147 );
setRotateKey( spep_1-4 + 304, 1, -153.1 );
setRotateKey( spep_1-4 + 306, 1, -159.3 );
setRotateKey( spep_1-4 + 307, 1, -159.3 );
setRotateKey( spep_1-4 + 308, 1, 166.4 );
setRotateKey( spep_1-4 + 310, 1, 115.8 );
setRotateKey( spep_1-4 + 312, 1, 65.2 );
setRotateKey( spep_1-4 + 314, 1, 60.7 );
setRotateKey( spep_1-4 + 316, 1, 56.2 );
setRotateKey( spep_1-4 + 318, 1, 51.7 );

setRotateKey( spep_1-4 + 328, 1, 0 );
setRotateKey( spep_1 + 336, 1, 0 );

--SE
playSe( spep_1+0, 1016); --気弾
playSe( spep_1+6, 1016); --気弾
playSe( spep_1+16, 1016); --気弾
playSe( spep_1+28, 1016); --気弾
playSe( spep_1+36, 1016); --気弾
playSe( spep_1+52, 1033); --外れる
playSe( spep_1+64, 1033); --外れる
playSe( spep_1+70, 1033); --外れる
playSe( spep_1+76, 1033); --外れる
playSe( spep_1+92, 1033); --外れる
playSe( spep_1+120, 1014); --煙をさく
playSe( spep_1+130, 9); --近ずく
playSe( spep_1+174, 1032); --さす
SE1=playSe( spep_1+190, 1044); --引きずる
stopSe(spep_1+228,SE1,0);
playSe( spep_1+228, 1023); --爆発
playSe( spep_1+260, 44); --上に上がる
playSe( spep_1+308, 1007); --振り落とす
--playSe( spep_1+322, 44); --落ちる
playSe( spep_1+338, 1023); --地面にぶつかる　

-- ** エフェクト等 ** --
entryFade(spep_1+354, 4, 10, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- whit_fe fade

--次の準備
spep_2=spep_1+362;

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
entryFade(spep_2+85,3,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_3=spep_2+92;

------------------------------------------------------
--カメハメビーム
------------------------------------------------------
--エフェクト
kamehame_beam=entryEffectLife(spep_3,SP_05x,292,0x100,-1,0,0,0);

setEffMoveKey( spep_3 + 0, kamehame_beam, 0, 0 , 0 );
setEffMoveKey( spep_3 + 292, kamehame_beam, 0, 0 , 0 );

setEffScaleKey(spep_3,kamehame_beam,-1.0,1.0);
setEffScaleKey(spep_3+292,kamehame_beam,-1.0,1.0);

setEffRotateKey(spep_3,kamehame_beam,0);
setEffRotateKey(spep_3+292,kamehame_beam,0);

setEffAlphaKey(spep_3,kamehame_beam,255);
setEffAlphaKey(spep_3+291,kamehame_beam,255);
setEffAlphaKey(spep_3+292,kamehame_beam,0);

--文字エントリー
ctshun = entryEffectLife( spep_3 + 0,  10011, 14, 0x100, -1, 0, 1.5, 254.2 );--シュンッ

setEffMoveKey( spep_3 + 0, ctshun, 1.5, 254.2 , 0 );
setEffMoveKey( spep_3 + 2, ctshun, -3.9, 260.3 , 0 );
setEffMoveKey( spep_3 + 4, ctshun, -7.1, 264 , 0 );
setEffMoveKey( spep_3 + 6, ctshun, -8.2, 265.2 , 0 );
setEffMoveKey( spep_3 + 12, ctshun, -8.2, 265.2 , 0 );
setEffMoveKey( spep_3 + 14, ctshun, -8.3, 265.3 , 0 );

setEffScaleKey( spep_3 + 0, ctshun, 0.6, 0.6 );
setEffScaleKey( spep_3 + 2, ctshun, 0.92, 0.92 );
setEffScaleKey( spep_3 + 4, ctshun, 1.11, 1.11 );
setEffScaleKey( spep_3 + 6, ctshun, 1.17, 1.17 );
setEffScaleKey( spep_3 + 8, ctshun, 1.18, 1.18 );
setEffScaleKey( spep_3 + 10, ctshun, 1.21, 1.21 );
setEffScaleKey( spep_3 + 12, ctshun, 1.25, 1.25 );
setEffScaleKey( spep_3 + 14, ctshun, 1.31, 1.31 );

setEffRotateKey( spep_3 + 0, ctshun, -8 );
setEffRotateKey( spep_3 + 14, ctshun, -8 );

setEffAlphaKey( spep_3 + 0, ctshun, 255 );
setEffAlphaKey( spep_3 + 6, ctshun, 255 );
setEffAlphaKey( spep_3 + 8, ctshun, 239 );
setEffAlphaKey( spep_3 + 10, ctshun, 191 );
setEffAlphaKey( spep_3 + 12, ctshun, 112 );
setEffAlphaKey( spep_3 + 14, ctshun, 0 );

--集中線
shuchusen1 = entryEffectLife( spep_3 + 98,  906, 84, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_3 + 98, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_3 + 182, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_3 + 98, shuchusen1, 1.88, 1.94 );
setEffScaleKey( spep_3 + 182, shuchusen1, 1.88, 1.94 );

setEffRotateKey( spep_3 + 98, shuchusen1, 0 );
setEffRotateKey( spep_3 + 182, shuchusen1, 0 );

setEffAlphaKey( spep_3 + 98, shuchusen1, 0 );
setEffAlphaKey( spep_3 + 106, shuchusen1, 0 );
setEffAlphaKey( spep_3 + 107, shuchusen1, 255 );
setEffAlphaKey( spep_3 + 108, shuchusen1, 255 );
setEffAlphaKey( spep_3 + 182, shuchusen1, 255 );

--顔カットイン
--speff=entryEffect(spep_3+98,1504,0x100,-1,0,0,0);  --カットイン(顔)
--setEffReplaceTexture(speff,3,2);  --カットイン差し替え
--speff1=entryEffect(spep_3+98,1505,0x100,-1,0,0,0);  --カットイン(セリフ)
--setEffReplaceTexture(speff1,4,5);  --セリフカットイン差し替え

--ゴゴゴ
--ctgogo=entryEffectLife(spep_3+110,190006,70,0x100,-1,0,520);--ゴゴゴ

--setEffMoveKey(spep_3+110,ctgogo,0,520,0);
--setEffMoveKey(spep_3+180,ctgogo,0,520,0);

--setEffScaleKey(spep_3+110, ctgogo, 0.7, 0.7);
--setEffScaleKey(spep_3+180, ctgogo, 0.7, 0.7);

--setEffAlphaKey( spep_3 + 110, ctgogo, 0 );
--setEffAlphaKey( spep_3 + 111, ctgogo, 255 );
--setEffAlphaKey( spep_3 + 112, ctgogo, 255 );
--setEffAlphaKey( spep_3 + 180, ctgogo, 255 );

--setEffRotateKey(spep_3+110,ctgogo,0);
--setEffRotateKey(spep_3+180,ctgogo,0);

--SE
playSe( spep_3+0, 43); --瞬間移動
--SE2=playSe(spep_3+20,15);--力をつける
--stopSe(spep_3+68,SE2,0);
playSe(  spep_3+20,  44);
playSe( spep_3+82, 17); --溜め
--playSe( spep_3+102, SE_02); --溜め
--playSe( spep_3+110, SE_04); --ゴゴゴ
--playSe( spep_3+170, SE_02); --溜め
--playSe( spep_3+190, SE_02); --溜め
--playSe( spep_3+210, SE_02); --溜め
playSe( spep_3+224, SE_07); --発射


--次の準備
spep_4=spep_3+292;
------------------------------------------------------
--カメハメビーム
------------------------------------------------------
--エフェクト(前)
explosion_f=entryEffect(spep_4,SP_06x,0x100,-1,0,0,0);

setEffMoveKey( spep_4 + 0, explosion_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 158, explosion_f, 0, 0 , 0 );

setEffScaleKey(spep_4,explosion_f,1.1,1.1);
setEffScaleKey(spep_4+158,explosion_f,1.1,1.1);

setEffRotateKey(spep_4,explosion_f,0);
setEffRotateKey(spep_4+158,explosion_f,0);

setEffAlphaKey(spep_4,explosion_f,255);
setEffAlphaKey(spep_4+158,explosion_f,255);

--エフェクト(背)
explosion_b=entryEffect(spep_4,SP_07x,0x80,-1,0,0,0);

setEffMoveKey( spep_4 + 0, explosion_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 158, explosion_b, 0, 0 , 0 );

setEffScaleKey(spep_4,explosion_b,1.1,1.1);
setEffScaleKey(spep_4+158,explosion_b,1.1,1.1);

setEffRotateKey(spep_4,explosion_b,0);
setEffRotateKey(spep_4+158,explosion_b,0);

setEffAlphaKey(spep_4,explosion_b,255);
setEffAlphaKey(spep_4+158,explosion_b,255);

--敵の動き
--敵の動き
setDisp( spep_4 + 0, 1, 1 );
changeAnime( spep_4 + 0, 1, 5 );

setDisp( spep_4 + 32, 1, 0 );

setMoveKey( spep_4 + 0, 1, 207, 45.5 , 0 );
setMoveKey( spep_4 + 2, 1, 206.4, 45.4 , 0 );
setMoveKey( spep_4 + 4, 1, 204.2, 45.2 , 0 );
setMoveKey( spep_4 + 6, 1, 200.2, 44.6 , 0 );
setMoveKey( spep_4 + 8, 1, 193.7, 43.8 , 0 );
setMoveKey( spep_4 + 10, 1, 184.1, 42.7 , 0 );
setMoveKey( spep_4 + 12, 1, 170.4, 40.9 , 0 );
setMoveKey( spep_4 + 14, 1, 150.8, 38.5 , 0 );
setMoveKey( spep_4 + 16, 1, 124.4, 35.3 , 0 );
setMoveKey( spep_4 + 18, 1, 92.3, 31.4 , 0 );
setMoveKey( spep_4 + 20, 1, 60.8, 27.6 , 0 );
setMoveKey( spep_4 + 22, 1, 35, 24.3 , 0 );
setMoveKey( spep_4 + 24, 1, 15.8, 22 , 0 );
setMoveKey( spep_4 + 26, 1, 2.9, 20.3 , 0 );
setMoveKey( spep_4 + 28, 1, -7.7, 19.1 , 0 );
setMoveKey( spep_4 + 30, 1, -14.5, 18.3 , 0 );
setMoveKey( spep_4 + 32, 1, -19, 17.7 , 0 );

setScaleKey( spep_4 + 0, 1, 0.16, 0.16 );
setScaleKey( spep_4 + 2, 1, 0.18, 0.18 );
setScaleKey( spep_4 + 4, 1, 0.2, 0.2 );
setScaleKey( spep_4 + 6, 1, 0.26, 0.26 );
setScaleKey( spep_4 + 8, 1, 0.29, 0.29 );
setScaleKey( spep_4 + 10, 1, 0.39, 0.39 );
setScaleKey( spep_4 + 12, 1, 0.47, 0.47 );
setScaleKey( spep_4 + 14, 1, 0.57, 0.57 );
setScaleKey( spep_4 + 16, 1, 0.80, 0.80 );
setScaleKey( spep_4 + 18, 1, 0.87, 0.87 );
setScaleKey( spep_4 + 20, 1, 1.04, 1.04 );
setScaleKey( spep_4 + 22, 1, 1.17, 1.17 );
setScaleKey( spep_4 + 24, 1, 1.27, 1.27 );
setScaleKey( spep_4 + 26, 1, 1.34, 1.34 );
setScaleKey( spep_4 + 28, 1, 1.39, 1.39 );
setScaleKey( spep_4 + 30, 1, 1.39, 1.39 );
setScaleKey( spep_4 + 32, 1, 1.4, 1.4 );

setRotateKey( spep_4 + 0, 1, 1.8 );
setRotateKey( spep_4 + 32, 1, 1.8 );

--SE
--playSe( spep_4, SE_07); --発射
playSe( spep_4+36, 1024); --爆発

-- ダメージ表示
dealDamage(spep_4+36);
entryFade( spep_4+138, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_4+148);



end



