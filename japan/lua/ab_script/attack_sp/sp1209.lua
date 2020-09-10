--魔人ブウ(ピッコロ吸収)　4015080　魔貫光殺砲
--sp_effect_a3_00052

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
SP_01=	152150	;--	格闘　前面
SP_02=	152151	;--	格闘　背面
SP_03=	152152	;--	吹っ飛び
SP_04=	152153	;--	溜め
SP_05=	152154	;--	発射
SP_06=	152155	;--	被弾　前面
SP_07=	152156	;--	被弾　背面

--敵側
SP_01x=	152150	;--	格闘　前面	
SP_02x=	152151	;--	格闘　背面	
SP_03x=	152152	;--	吹っ飛び	
SP_04x=	152153	;--	溜め	
SP_05x=	152157	;--	発射	(敵)
SP_06x=	152155	;--	被弾　前面	
SP_07x=	152156	;--	被弾　背面	

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
--格闘
--------------------------------------
spep_0=0;

--エフェクトの再生(前)
fight_front=entryEffectLife(spep_0,SP_01,206,0x100,-1,0,0,0);

setEffMoveKey(spep_0,fight_front,0,0,0);
setEffMoveKey(spep_0+206,fight_front,0,0,0);

setEffScaleKey(spep_0,fight_front,1.0,1.0);
setEffScaleKey(spep_0+206,fight_front,1.0,1.0);

setEffAlphaKey(spep_0,fight_front,255);
setEffAlphaKey(spep_0+204,fight_front,255);
--setEffAlphaKey(spep_0+205,fight_front,0);
setEffAlphaKey(spep_0+206,fight_front,0);

setEffRotateKey(spep_0,fight_front,0);
setEffRotateKey(spep_0+206,fight_front,0);

--流線
ryusen = entryEffectLife( spep_0,  921, 188, 0x80, -1, 0, 33.5, -9.9 );--流線斜め

setEffMoveKey( spep_0 + 0, ryusen, 33.5, -9.9 , 0 );
setEffMoveKey( spep_0 + 188, ryusen, 33.5, -9.9 , 0 );

setEffScaleKey( spep_0 + 0, ryusen, 1.12, 1.31 );
setEffScaleKey( spep_0 + 188, ryusen, 1.12, 1.31 );

setEffRotateKey( spep_0 + 0, ryusen, 179.8 );
setEffRotateKey( spep_0 + 188, ryusen, 179.8 );

setEffAlphaKey( spep_0 + 0, ryusen, 0 );
setEffAlphaKey( spep_0 + 68, ryusen, 0 );
setEffAlphaKey( spep_0 + 69, ryusen, 255 );
setEffAlphaKey( spep_0 + 70, ryusen, 255 );
setEffAlphaKey( spep_0 + 188, ryusen, 255 );

--エフェクトの再生(後)
fight_back=entryEffectLife(spep_0,SP_02,206,0x80,-1,0,0,0);

setEffMoveKey(spep_0,fight_back,0,0,0);
setEffMoveKey(spep_0+206,fight_back,0,0,0);

setEffScaleKey(spep_0,fight_back,1.0,1.0);
setEffScaleKey(spep_0+206,fight_back,1.0,1.0);

setEffAlphaKey(spep_0,fight_back,255);
setEffAlphaKey(spep_0+204,fight_back,255);
--setEffAlphaKey(spep_0+205,fight_back,0);
setEffAlphaKey(spep_0+206,fight_back,0);

setEffRotateKey(spep_0,fight_back,0);
setEffRotateKey(spep_0+206,fight_back,0);

--文字エントリー
ctshu = entryEffectLife( spep_0 + 10,  10011, 14, 0x100, -1, 0, 37, 271.5 );--シュンッ
setEffMoveKey( spep_0 + 10, ctshu, 37, 271.5 , 0 );
setEffMoveKey( spep_0 + 16, ctshu, 34.1, 279.1 , 0 );
setEffMoveKey( spep_0 + 18, ctshu, 32.4, 283.7 , 0 );
setEffMoveKey( spep_0 + 20, ctshu, 31.8, 285.2 , 0 );
setEffMoveKey( spep_0 + 24, ctshu, 31.8, 285.2 , 0 );

setEffScaleKey( spep_0 + 10, ctshu, 0.6, 0.6 );
setEffScaleKey( spep_0 + 16, ctshu, 0.92, 0.92 );
--setEffScaleKey( spep_0 + 18, ctshu, 1.11, 1.11 );
--setEffScaleKey( spep_0 + 20, ctshu, 1.17, 1.17 );
setEffScaleKey( spep_0 + 18, ctshu, 1.18, 1.18 );
--setEffScaleKey( spep_0 + 24, ctshu, 1.21, 1.21 );
--setEffScaleKey( spep_0 + 26, ctshu, 1.25, 1.25 );
setEffScaleKey( spep_0 + 24, ctshu, 1.31, 1.31 );

setEffRotateKey( spep_0 + 10, ctshu, 12.7 );
setEffRotateKey( spep_0 + 24, ctshu, 12.7 );

setEffAlphaKey( spep_0 + 10, ctshu, 0 );
setEffAlphaKey( spep_0 + 11, ctshu, 255 );
setEffAlphaKey( spep_0 + 12, ctshu, 255 );
setEffAlphaKey( spep_0 + 16, ctshu, 255 );
setEffAlphaKey( spep_0 + 18, ctshu, 239 );
setEffAlphaKey( spep_0 + 20, ctshu, 191 );
setEffAlphaKey( spep_0 + 22, ctshu, 112 );
setEffAlphaKey( spep_0 + 24, ctshu, 0 );

--黒背景
entryFadeBg(spep_0, 0, 206, 0, 0, 0, 0, 200);  -- 黒　背

--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

SP_dodge = spep_0+28 ; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

pauseAll( SP_dodge, 67);

--キャラクターの固定
setMoveKey(SP_dodge, 1, 0, 0, 0 );
setScaleKey(SP_dodge , 1, 1.6, 1.6 );
setRotateKey(SP_dodge,   1, 0);

--キャラクターの固定
setMoveKey(SP_dodge+8, 1, 0, 0, 0 );
setScaleKey(SP_dodge+8 , 1, 1.6, 1.6  );
setRotateKey(SP_dodge+8,   1, 0);



setDisp(SP_dodge+9, 0, 0);
--setDisp(SP_dodge+9, 1, 0);
--setMoveKey(SP_dodge+9, 1, 0 , 0, 0);
setScaleKey(SP_dodge+9,  1 , 1.6, 1.6);
setRotateKey(SP_dodge+9,   1, 0);

--setMoveKey(SP_dodge+10, 1, 0 , 0, 0);
setScaleKey(SP_dodge+10,  1 , 1.6, 1.6);
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
--文字エントリー
ctshu2 = entryEffectLife( spep_0 + 50,  10011, 14, 0x100, -1, 0, -161.4, 234.5 );--シュンッ
setEffMoveKey( spep_0 + 50, ctshu2, -161.4, 234.5 , 0 );
setEffMoveKey( spep_0 + 56, ctshu2, -167, 240.4 , 0 );
setEffMoveKey( spep_0 + 58, ctshu2, -170.3, 244 , 0 );
setEffMoveKey( spep_0 + 60, ctshu2, -171.4, 245.2 , 0 );
setEffMoveKey( spep_0 + 64, ctshu2, -171.4, 245.2 , 0 );
--setEffMoveKey( spep_0 + 66, ctshu2, -171.4, 245.3 , 0 );
--setEffMoveKey( spep_0 + 68, ctshu2, -171.4, 245.3 , 0 );

setEffScaleKey( spep_0 + 50, ctshu2, 0.6, 0.6 );
setEffScaleKey( spep_0 + 52, ctshu2, 0.92, 0.92 );
setEffScaleKey( spep_0 + 54, ctshu2, 1.11, 1.11 );
setEffScaleKey( spep_0 + 56, ctshu2, 1.17, 1.17 );
setEffScaleKey( spep_0 + 58, ctshu2, 1.18, 1.18 );
setEffScaleKey( spep_0 + 60, ctshu2, 1.21, 1.21 );
setEffScaleKey( spep_0 + 62, ctshu2, 1.25, 1.25 );
setEffScaleKey( spep_0 + 64, ctshu2, 1.31, 1.31 );

setEffRotateKey( spep_0 + 50, ctshu2, -9.3 );
setEffRotateKey( spep_0 + 64, ctshu2, -9.3 );

setEffAlphaKey( spep_0 + 50, ctshu2, 0 );
setEffAlphaKey( spep_0 + 51, ctshu2, 255 );
setEffAlphaKey( spep_0 + 52, ctshu2, 255 );
setEffAlphaKey( spep_0 + 56, ctshu2, 255 );
setEffAlphaKey( spep_0 + 58, ctshu2, 239 );
setEffAlphaKey( spep_0 + 60, ctshu2, 191 );
setEffAlphaKey( spep_0 + 62, ctshu2, 112 );
setEffAlphaKey( spep_0 + 64, ctshu2, 0 );


--敵の動き
setDisp(spep_0+34,1,1);
setDisp(spep_0+110,1,0);
setDisp(spep_0+119,1,1);
setDisp(spep_0+120,1,1);
setDisp(spep_0+187,1,0);
setDisp(spep_0+188,1,0);
setDisp(spep_0+195,1,1);
setDisp(spep_0+196,1,1);

changeAnime(spep_0+24,1,102);
changeAnime(spep_0+69,1,107);
changeAnime(spep_0+70,1,107);
changeAnime(spep_0+194,1,108);

setShakeChara(spep_0+70,1,136,10);

setMoveKey( spep_0 + 26,1, 15.3, 2.5 , 0 );
setMoveKey( spep_0 + 68,1, 15.3, 2.5 , 0 );
setMoveKey( spep_0 + 69, 1, 25.1, 21.6 , 0 );
setMoveKey( spep_0 + 70, 1, 25.1, 21.6 , 0 );
setMoveKey( spep_0 + 74, 1, 56.7, 13.4 , 0 );
setMoveKey( spep_0 + 76, 1, 121.9, -17.7 , 0 );
setMoveKey( spep_0 + 78, 1, 153.6, -32.3 , 0 );
setMoveKey( spep_0 + 80, 1, 204.8, -65.8 , 0 );
setMoveKey( spep_0 + 82, 1, 254, -87 , 0 );
setMoveKey( spep_0 + 84, 1, 271.5, -104.6 , 0 );
setMoveKey( spep_0 + 86, 1, 311.6, -128.7 , 0 );
setMoveKey( spep_0 + 88, 1, 349.5, -152.6 , 0 );
setMoveKey( spep_0 + 90, 1, 384, -175.9 , 0 );
setMoveKey( spep_0 + 92, 1, 415.1, -198.4 , 0 );
setMoveKey( spep_0 + 94, 1, 448.5, -221.2 , 0 );
setMoveKey( spep_0 + 96, 1, 485.8, -244.8 , 0 );
setMoveKey( spep_0 + 98, 1, 527.7, -269.8 , 0 );
setMoveKey( spep_0 + 100, 1, 575.3, -296.3 , 0 );
setMoveKey( spep_0 + 102, 1, 629.5, -325.1 , 0 );
setMoveKey( spep_0 + 104, 1, 691.4, -356.5 , 0 );
setMoveKey( spep_0 + 106, 1, 762.4, -391.1 , 0 );
setMoveKey( spep_0 + 108, 1, 843.9, -429.6 , 0 );
setMoveKey( spep_0 + 110, 1, 935.9, -473 , 0 );
setMoveKey( spep_0 + 114, 1, 1500, -500 , 0 );
setMoveKey( spep_0 + 115, 1, 1500, -500 , 0 );
setMoveKey( spep_0 + 116, 1, -204.7, -6.1 , 0 );
setMoveKey( spep_0 + 124, 1, -194.2, -7.1 , 0 );
setMoveKey( spep_0 + 126, 1, -184.5, -8.1 , 0 );
setMoveKey( spep_0 + 128, 1, -175.1, -9 , 0 );
setMoveKey( spep_0 + 130, 1, -166.3, -9.8 , 0 );
setMoveKey( spep_0 + 132, 1, -157.9, -10.6 , 0 );
setMoveKey( spep_0 + 134, 1, -149.9, -11.4 , 0 );
setMoveKey( spep_0 + 136, 1, -142.4, -12.1 , 0 );
setMoveKey( spep_0 + 138, 1, -135.2, -12.9 , 0 );
setMoveKey( spep_0 + 140, 1, -128.5, -13.5 , 0 );
setMoveKey( spep_0 + 142, 1, -122.1, -14.2 , 0 );
setMoveKey( spep_0 + 144, 1, -116, -14.8 , 0 );
setMoveKey( spep_0 + 146, 1, -110.2, -15.3 , 0 );
setMoveKey( spep_0 + 148, 1, -104.8, -15.8 , 0 );
setMoveKey( spep_0 + 150, 1, -99.6, -16.3 , 0 );
setMoveKey( spep_0 + 152, 1, -94.7, -16.8 , 0 );
setMoveKey( spep_0 + 154, 1, -90.1, -17.2 , 0 );
setMoveKey( spep_0 + 156, 1, -85.6, -17.7 , 0 );
setMoveKey( spep_0 + 158, 1, -81.4, -18.1 , 0 );
setMoveKey( spep_0 + 160, 1, -77.3, -18.5 , 0 );
setMoveKey( spep_0 + 162, 1, -73.5, -18.9 , 0 );
setMoveKey( spep_0 + 164, 1, -69.7, -19.3 , 0 );
setMoveKey( spep_0 + 166, 1, -66.1, -19.6 , 0 );
setMoveKey( spep_0 + 168, 1, -62.7, -19.9 , 0 );
setMoveKey( spep_0 + 170, 1, -59.3, -20.2 , 0 );
setMoveKey( spep_0 + 172, 1, -56, -20.6 , 0 );
setMoveKey( spep_0 + 174, 1, -52.8, -20.9 , 0 );
setMoveKey( spep_0 + 176, 1, -49.6, -21.2 , 0 );
setMoveKey( spep_0 + 178, 1, -46.4, -21.5 , 0 );
setMoveKey( spep_0 + 180, 1, -43.2, -21.8 , 0 );
setMoveKey( spep_0 + 182, 1, -40, -22.1 , 0 );
setMoveKey( spep_0 + 184, 1, -36.7, -22.5 , 0 );
setMoveKey( spep_0 + 186, 1, -33.5, -22.8 , 0 );
setMoveKey( spep_0 + 188, 1, -30.3, -23.2 , 0 );
setMoveKey( spep_0 + 198, 1, 50.7, -109.8 , 0 );
setMoveKey( spep_0 + 200, 1, 128, -304.8 , 0 );
setMoveKey( spep_0 + 202, 1, 194, -517 , 0 );
setMoveKey( spep_0 + 204, 1, 337.8, -946.2 , 0 );
setMoveKey( spep_0 + 205, 1, 337.8, -946.2 , 0 );
--setMoveKey( spep_0 + 208, 1, 333.7, -937.6 , 0 );
--setMoveKey( spep_0 + 210, 1, 337.7, -940.4 , 0 );
--setMoveKey( spep_0 + 212, 1, 337.8, -940.6 , 0 );
--setMoveKey( spep_0 + 222, 1, 337.8, -940.6 , 0 );
--setMoveKey( spep_0 + 213, 1, 337.8, -940.6 , 0 );

setScaleKey( spep_0 + 26, 1, 1.01, 1.01 );
setScaleKey( spep_0 + 68, 1, 1.01, 1.01 );
setScaleKey( spep_0 + 69, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 70, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 74, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 76, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 78, 1, 0.88, 0.88 );
setScaleKey( spep_0 + 80, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 82, 1, 1.19, 1.19 );
setScaleKey( spep_0 + 84, 1, 1.23, 1.23 );
setScaleKey( spep_0 + 86, 1, 1.36, 1.36 );
setScaleKey( spep_0 + 88, 1, 1.48, 1.48 );
setScaleKey( spep_0 + 90, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 92, 1, 1.69, 1.69 );
setScaleKey( spep_0 + 94, 1, 1.79, 1.79 );
setScaleKey( spep_0 + 96, 1, 1.9, 1.9 );
setScaleKey( spep_0 + 98, 1, 2.01, 2.01 );
setScaleKey( spep_0 + 100, 1, 2.13, 2.13 );
setScaleKey( spep_0 + 102, 1, 2.27, 2.27 );
setScaleKey( spep_0 + 104, 1, 2.42, 2.42 );
setScaleKey( spep_0 + 106, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 108, 1, 2.81, 2.81 );
setScaleKey( spep_0 + 110, 1, 3.05, 3.05 );
setScaleKey( spep_0 + 111, 1, 0.06, 0.06 );
setScaleKey( spep_0 + 112, 1, 0.06, 0.06 );
setScaleKey( spep_0 + 122, 1, 0.06, 0.06 );
setScaleKey( spep_0 + 124, 1, 0.1, 0.1 );
setScaleKey( spep_0 + 126, 1, 0.13, 0.13 );
setScaleKey( spep_0 + 128, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 130, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 132, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 134, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 136, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 138, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 140, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 142, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 144, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 146, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 148, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 150, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 152, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 154, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 156, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 158, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 160, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 162, 1, 0.47, 0.47 );
setScaleKey( spep_0 + 164, 1, 0.49, 0.49 );
setScaleKey( spep_0 + 166, 1, 0.49, 0.49 );
setScaleKey( spep_0 + 168, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 170, 1, 0.52, 0.52 );
setScaleKey( spep_0 + 172, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 174, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 176, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 178, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 180, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 182, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 184, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 186, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 188, 1, 0.61, 0.61 );
--setScaleKey( spep_0 + 198, 1, 1.69, 1.69 );
--setScaleKey( spep_0 + 200, 1, 1.91, 1.91 );
setScaleKey( spep_0 + 190, 1, 1.7, 1.7 );
setScaleKey( spep_0 + 204, 1, 1.7, 1.7 );
setScaleKey( spep_0 + 205, 1, 1.7, 1.7 );
--setScaleKey( spep_0 + 206, 1, 2.6, 2.6 );
--setScaleKey( spep_0 + 222, 1, 2.6, 2.6 );
--setScaleKey( spep_0 + 223, 1, 2.6, 2.6 );

setRotateKey( spep_0 + 26, 1, 0 );
setRotateKey( spep_0 + 69, 1, 0 );
setRotateKey( spep_0 + 70, 1, 0 );
setRotateKey( spep_0 + 70, 1, -35 );
setRotateKey( spep_0 + 74, 1, -26.1 );
setRotateKey( spep_0 + 76, 1, -23.1 );
setRotateKey( spep_0 + 78, 1, -21.1 );
setRotateKey( spep_0 + 80, 1, -19.6 );
setRotateKey( spep_0 + 82, 1, -18.3 );
setRotateKey( spep_0 + 84, 1, -17.4 );
setRotateKey( spep_0 + 86, 1, -16.5 );
setRotateKey( spep_0 + 88, 1, -15.9 );
setRotateKey( spep_0 + 90, 1, -15.3 );
setRotateKey( spep_0 + 92, 1, -14.8 );
setRotateKey( spep_0 + 94, 1, -14.4 );
setRotateKey( spep_0 + 96, 1, -14.1 );
setRotateKey( spep_0 + 98, 1, -13.9 );
setRotateKey( spep_0 + 100, 1, -13.7 );
setRotateKey( spep_0 + 102, 1, -13.5 );
setRotateKey( spep_0 + 104, 1, -13.4 );
setRotateKey( spep_0 + 106, 1, -13.3 );
setRotateKey( spep_0 + 120, 1, -13.3 );
setRotateKey( spep_0 + 122, 1, -20.8 );
setRotateKey( spep_0 + 188, 1, -20.8 );
setRotateKey( spep_0 + 190, 1, 63.9 );
setRotateKey( spep_0 + 204, 1, 63.9 );
setRotateKey( spep_0 + 205, 1, 63.9 );


--文字エントリー
ctga = entryEffectLife( spep_0 + 68,  10005, 19, 0x100, -1, 0, 12.4, 237.9 );--ガッ

setEffMoveKey( spep_0 + 68, ctga, 12.4, 237.9 , 0 );
setEffMoveKey( spep_0 + 74, ctga, 4.5, 251.2 , 0 );
setEffMoveKey( spep_0 + 76, ctga, 9, 255.7 , 0 );
setEffMoveKey( spep_0 + 78, ctga, 2.6, 259.1 , 0 );
setEffMoveKey( spep_0 + 80, ctga, 11.8, 259.1 , 0 );
setEffMoveKey( spep_0 + 82, ctga, 3.4, 265.1 , 0 );
setEffMoveKey( spep_0 + 84, ctga, 7.4, 263.5 , 0 );
setEffMoveKey( spep_0 + 86, ctga, -0.1, 269.3 , 0 );
setEffMoveKey( spep_0 + 88, ctga, -0.6, 271.3 , 0 );

setEffScaleKey( spep_0 + 68, ctga, 1.25, 1.25 );
setEffScaleKey( spep_0 + 74, ctga, 1.45, 1.45 );
setEffScaleKey( spep_0 + 76, ctga, 1.52, 1.52 );
setEffScaleKey( spep_0 + 78, ctga, 1.57, 1.57 );
setEffScaleKey( spep_0 + 80, ctga, 1.61, 1.61 );
setEffScaleKey( spep_0 + 82, ctga, 1.63, 1.63 );
setEffScaleKey( spep_0 + 84, ctga, 1.64, 1.64 );
setEffScaleKey( spep_0 + 86, ctga, 1.73, 1.73 );
setEffScaleKey( spep_0 + 88, ctga, 1.76, 1.76 );

setEffRotateKey( spep_0 + 68, ctga, 9.2 );
setEffRotateKey( spep_0 + 88, ctga, 9.2 );

setEffAlphaKey( spep_0 + 68, ctga, 0 );
setEffAlphaKey( spep_0 + 69, ctga, 255 );
setEffAlphaKey( spep_0 + 70, ctga, 255 );
setEffAlphaKey( spep_0 + 84, ctga, 255 );
setEffAlphaKey( spep_0 + 86, ctga, 64 );
setEffAlphaKey( spep_0 + 88, ctga, 0 );


--文字エントリー
ctbaki = entryEffectLife( spep_0 + 186,  10020, 18, 0x100, -1, 0, 168.1, 143.9 );--バキッ

setEffMoveKey( spep_0 + 186, ctbaki, 168.1, 143.9 , 0 );
setEffMoveKey( spep_0 + 192, ctbaki, 167.4, 167.3 , 0 );
setEffMoveKey( spep_0 + 194, ctbaki, 169.7, 171.2 , 0 );
setEffMoveKey( spep_0 + 196, ctbaki, 166.8, 184.7 , 0 );
setEffMoveKey( spep_0 + 198, ctbaki, 168.9, 182.9 , 0 );
setEffMoveKey( spep_0 + 200, ctbaki, 163.6, 200 , 0 );
setEffMoveKey( spep_0 + 202, ctbaki, 172.9, 199.6 , 0 );
setEffMoveKey( spep_0 + 204, ctbaki, 167.4, 200.2 , 0 );
--setEffMoveKey( spep_0 + 206, ctbaki, 175, 208.3 , 0 );
--setEffMoveKey( spep_0 + 208, ctbaki, 178.2, 209.9 , 0 );

setEffScaleKey( spep_0 + 186, ctbaki, 1.25, 1.25 );
setEffScaleKey( spep_0 + 192, ctbaki, 1.33, 1.33 );
setEffScaleKey( spep_0 + 194, ctbaki, 1.35, 1.35 );
setEffScaleKey( spep_0 + 196, ctbaki, 1.4, 1.4 );
setEffScaleKey( spep_0 + 198, ctbaki, 1.45, 1.45 );
setEffScaleKey( spep_0 + 200, ctbaki, 1.48, 1.48 );
setEffScaleKey( spep_0 + 202, ctbaki, 1.49, 1.49 );
setEffScaleKey( spep_0 + 204, ctbaki, 1.5, 1.5 );
--setEffScaleKey( spep_0 + 206, ctbaki, 1.7, 1.7 );
--setEffScaleKey( spep_0 + 208, ctbaki, 1.76, 1.76 );

setEffRotateKey( spep_0 + 186, ctbaki, 28.6 );
setEffRotateKey( spep_0 + 204, ctbaki, 28.6 );

setEffAlphaKey( spep_0 + 186, ctbaki, 0 );
setEffAlphaKey( spep_0 + 187, ctbaki, 255 );
setEffAlphaKey( spep_0 + 188, ctbaki, 255 );
setEffAlphaKey( spep_0 + 200, ctbaki, 255 );
setEffAlphaKey( spep_0 + 202, ctbaki, 64 );
setEffAlphaKey( spep_0 + 204, ctbaki, 0 );

setEffShake(spep_0 + 186,ctbaki,18,15);

-- ** エフェクト等 ** --
entryFade(spep_0,0,0,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_0+28,4,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_0+118,0,2,4,fcolor_r,fcolor_g,fcolor_b,200);     -- white fade
entryFade(spep_0+186,0,2,4,fcolor_r,fcolor_g,fcolor_b,200);     -- white fade

--SE
playSe( spep_0+12, 43); --瞬間移動
playSe( spep_0+52, 43); --瞬間移動
playSe( spep_0+70, 1010); --強蹴り
playSe( spep_0+100, 1018); --移動
--playSe( spep_0+118, 1018); --移動
playSe( spep_0+186, 1011); --叩き落とし

spep_1=spep_0+206;

--------------------------------------
--吹っ飛び
--------------------------------------
--エフェクトの再生
jump=entryEffectLife(spep_1,SP_03,128,0x100,-1,0,0,0);

setEffMoveKey(spep_1,jump,0,0,0);
setEffMoveKey(spep_1+128,jump,0,0,0);

setEffScaleKey(spep_1,jump,1.0,1.0);
setEffScaleKey(spep_1+128,jump,1.0,1.0);

setEffAlphaKey(spep_1,jump,255);
setEffAlphaKey(spep_1+128,jump,255);

setEffRotateKey(spep_1,jump,0);
setEffRotateKey(spep_1+128,jump,0);

--敵の動き
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 20, 1, 0 );
changeAnime( spep_1 + 0, 1, 106 );

---------------------------------------------------------
--setMoveKey( spep_1 + 0, 1, -232.2, 650 , 0 );
setMoveKey( spep_1 + 0, 1, -202.8, 541 , 0 );
setMoveKey( spep_1 + 2, 1, -173.5, 432.1 , 0 );
setMoveKey( spep_1 + 4, 1, -144.1, 323.1 , 0 );
setMoveKey( spep_1 + 6, 1, -114.8, 214.1 , 0 );
setMoveKey( spep_1 + 8, 1, -85.4, 105.1 , 0 );
setMoveKey( spep_1 + 10, 1, -56, -3.8 , 0 );
setMoveKey( spep_1 + 12, 1, -26.7, -112.8 , 0 );
setMoveKey( spep_1 + 14, 1, 2.7, -221.8 , 0 );
setMoveKey( spep_1 + 17, 1, 32, -330.8 , 0 );
setMoveKey( spep_1 + 18, 1, 32, -330.8 , 0 );
setMoveKey( spep_1 + 20, 1, 32, -330.8 , 0 );
---------------------------------------------------------

setScaleKey( spep_1 + 0, 1, 0.2, 0.2 );
setScaleKey( spep_1 + 20, 1, 0.2, 0.2 );

setRotateKey( spep_1 + 0, 1, 99.6 );
setRotateKey( spep_1 + 19, 1, 99.6 );
setRotateKey( spep_1 + 20, 1, 99.6 );

--文字エントリー
ctdon = entryEffectLife( spep_1 + 18,  10019, 24, 0x100, -1, 0, -57.6, 44.5 );--ドンッ

setEffMoveKey( spep_1 + 18, ctdon, -57.6, 44.5 , 0 );
setEffMoveKey( spep_1 + 22, ctdon, -59.1, 87 , 0 );
setEffMoveKey( spep_1 + 24, ctdon, -41.5, 120.9 , 0 );
setEffMoveKey( spep_1 + 26, ctdon, -48, 131.4 , 0 );
setEffMoveKey( spep_1 + 28, ctdon, -38.2, 121.2 , 0 );
setEffMoveKey( spep_1 + 30, ctdon, -49.9, 124.3 , 0 );
setEffMoveKey( spep_1 + 32, ctdon, -41.7, 130.7 , 0 );
setEffMoveKey( spep_1 + 34, ctdon, -49.6, 125.6 , 0 );
setEffMoveKey( spep_1 + 36, ctdon, -41.3, 131.9 , 0 );
setEffMoveKey( spep_1 + 38, ctdon, -44.2, 120.3 , 0 );
setEffMoveKey( spep_1 + 40, ctdon, -44.1, 120.8 , 0 );

setEffScaleKey( spep_1 + 18, ctdon, 1.28, 1.28 );
setEffScaleKey( spep_1 + 22, ctdon, 1.62, 1.62 );
setEffScaleKey( spep_1 + 24, ctdon, 1.97, 1.97 );
setEffScaleKey( spep_1 + 26, ctdon, 1.98, 1.98 );
setEffScaleKey( spep_1 + 28, ctdon, 1.99, 1.99 );
setEffScaleKey( spep_1 + 30, ctdon, 2.01, 2.01 );
setEffScaleKey( spep_1 + 32, ctdon, 2.02, 2.02 );
setEffScaleKey( spep_1 + 34, ctdon, 2.03, 2.03 );
setEffScaleKey( spep_1 + 36, ctdon, 2.04, 2.04 );
setEffScaleKey( spep_1 + 38, ctdon, 2.05, 2.05 );
setEffScaleKey( spep_1 + 40, ctdon, 2.06, 2.06 );

setEffRotateKey( spep_1 + 18, ctdon, 14.2 );
setEffRotateKey( spep_1 + 22, ctdon, 14.7 );
setEffRotateKey( spep_1 + 24, ctdon, 15.2 );

setEffAlphaKey( spep_1 + 18, ctdon, 0 );
setEffAlphaKey( spep_1 + 19, ctdon, 255 );
setEffAlphaKey( spep_1 + 20, ctdon, 255 );
setEffAlphaKey( spep_1 + 30, ctdon, 255 );
setEffAlphaKey( spep_1 + 32, ctdon, 170 );
setEffAlphaKey( spep_1 + 34, ctdon, 85 );
setEffAlphaKey( spep_1 + 40, ctdon, 0 );

--文字エントリー
dogon = entryEffectLife( spep_1 + 76,  10018, 52, 0x100, -1, 0, 6.8, 157.8 );--ドゴォンッ

setEffMoveKey( spep_1 + 76, dogon, 6.8, 157.8 , 0 );
setEffMoveKey( spep_1 + 82, dogon, 8.1, 225.9 , 0 );
setEffMoveKey( spep_1 + 84, dogon, 12.7, 255.5 , 0 );
setEffMoveKey( spep_1 + 86, dogon, 9.3, 257.7 , 0 );
setEffMoveKey( spep_1 + 88, dogon, 12.8, 274.8 , 0 );
setEffMoveKey( spep_1 + 90, dogon, 13.9, 274.2 , 0 );
setEffMoveKey( spep_1 + 92, dogon, 8.1, 285 , 0 );
setEffMoveKey( spep_1 + 94, dogon, 17, 290.4 , 0 );
setEffMoveKey( spep_1 + 96, dogon, 8.7, 293.3 , 0 );
setEffMoveKey( spep_1 + 98, dogon, 12.2, 302.2 , 0 );
setEffMoveKey( spep_1 + 100, dogon, 8.6, 301.5 , 0 );
setEffMoveKey( spep_1 + 102, dogon, 12.4, 316.7 , 0 );
setEffMoveKey( spep_1 + 104, dogon, 13.6, 313.1 , 0 );
setEffMoveKey( spep_1 + 106, dogon, 7.5, 321.6 , 0 );
setEffMoveKey( spep_1 + 108, dogon, 16.9, 324.4 , 0 );
setEffMoveKey( spep_1 + 110, dogon, 8.2, 324.7 , 0 );
setEffMoveKey( spep_1 + 112, dogon, 11.9, 331.2 , 0 );
setEffMoveKey( spep_1 + 114, dogon, 8.2, 327.7 , 0 );
setEffMoveKey( spep_1 + 116, dogon, 12.2, 340.9 , 0 );
setEffMoveKey( spep_1 + 118, dogon, 13.5, 334.4 , 0 );
setEffMoveKey( spep_1 + 120, dogon, 7.2, 340.6 , 0 );
setEffMoveKey( spep_1 + 122, dogon, 16.9, 340.8 , 0 );
setEffMoveKey( spep_1 + 124, dogon, 8, 338.5 , 0 );
setEffMoveKey( spep_1 + 126, dogon, 11.8, 342.6 , 0 );
--setEffMoveKey( spep_1 + 128, dogon, 11.8, 342.7 , 0 );

setEffScaleKey( spep_1 + 76, dogon, 2.61, 2.61 );
setEffScaleKey( spep_1 + 82, dogon, 3.2, 3.2 );
setEffScaleKey( spep_1 + 84, dogon, 3.39, 3.39 );
setEffScaleKey( spep_1 + 86, dogon, 3.43, 3.43 );
setEffScaleKey( spep_1 + 88, dogon, 3.48, 3.48 );
setEffScaleKey( spep_1 + 90, dogon, 3.52, 3.52 );
setEffScaleKey( spep_1 + 92, dogon, 3.56, 3.56 );
setEffScaleKey( spep_1 + 94, dogon, 3.59, 3.59 );
setEffScaleKey( spep_1 + 96, dogon, 3.63, 3.63 );
setEffScaleKey( spep_1 + 98, dogon, 3.66, 3.66 );
setEffScaleKey( spep_1 + 100, dogon, 3.69, 3.69 );
setEffScaleKey( spep_1 + 102, dogon, 3.72, 3.72 );
setEffScaleKey( spep_1 + 104, dogon, 3.74, 3.74 );
setEffScaleKey( spep_1 + 106, dogon, 3.77, 3.77 );
setEffScaleKey( spep_1 + 108, dogon, 3.79, 3.79 );
setEffScaleKey( spep_1 + 110, dogon, 3.81, 3.81 );
setEffScaleKey( spep_1 + 112, dogon, 3.82, 3.82 );
setEffScaleKey( spep_1 + 114, dogon, 3.84, 3.84 );
setEffScaleKey( spep_1 + 116, dogon, 3.85, 3.85 );
setEffScaleKey( spep_1 + 118, dogon, 3.86, 3.86 );
setEffScaleKey( spep_1 + 120, dogon, 3.87, 3.87 );
setEffScaleKey( spep_1 + 122, dogon, 3.88, 3.88 );
setEffScaleKey( spep_1 + 124, dogon, 3.89, 3.89 );
setEffScaleKey( spep_1 + 126, dogon, 3.89, 3.89 );

setEffRotateKey( spep_1 + 76, dogon, -0.9 );
setEffRotateKey( spep_1 + 126, dogon, -0.9 );

setEffAlphaKey( spep_1 + 76, dogon, 0 );
setEffAlphaKey( spep_1 + 77, dogon, 255 );
setEffAlphaKey( spep_1 + 78, dogon, 255 );
setEffAlphaKey( spep_1 + 126, dogon, 255 );

--SE
playSe( spep_1+20, 1023); --爆発
playSe( spep_1+80, 1024); --大爆発


--黒背景
entryFadeBg(spep_1, 0, 128, 0, 0, 0, 0, 200);  -- 黒　背

-- ** エフェクト等 ** --
entryFade(spep_1+128,0,2,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_2=spep_1+128;

--------------------------------------
--溜め
--------------------------------------
--エフェクトの再生
tame=entryEffectLife(spep_2,SP_04,114,0x100,-1,0,0,0);

setEffMoveKey(spep_2,tame,0,0,0);
setEffMoveKey(spep_2+114,tame,0,0,0);

setEffScaleKey(spep_2,tame,1.0,1.0);
setEffScaleKey(spep_2+114,tame,1.0,1.0);

setEffAlphaKey(spep_2,tame,255);
setEffAlphaKey(spep_2+114,tame,255);

setEffRotateKey(spep_2,tame,0);
setEffRotateKey(spep_2+114,tame,0);

--顔カットイン
speff=entryEffect(spep_2+30,1504,0x100,-1,0,0,0);  --カットイン(顔)
setEffReplaceTexture(speff,3,2);  --カットイン差し替え
speff1=entryEffect(spep_2+30,1505,0x100,-1,0,0,0);  --カットイン(セリフ)
setEffReplaceTexture(speff1,4,5);  --セリフカットイン差し替え

--文字エントリー
ctgogo=entryEffectLife(spep_2+44,190006,70,0x100,-1,-10,520);--ゴゴゴ
setEffMoveKey(spep_2+44,ctgogo,-10,520,0);
setEffMoveKey(spep_2+114,ctgogo,-10,520,0);
setEffScaleKey(spep_2+44, ctgogo, 0.7, 0.7);
setEffScaleKey(spep_2+114, ctgogo, 0.7, 0.7);

--集中線
shuthuse=entryEffectLife(spep_2,906,114,0x100,-1,0,0,0);

setEffMoveKey(spep_2,shuthuse,0,0,0);
setEffMoveKey(spep_2+114,shuthuse,0,0,0);

setEffScaleKey(spep_2,shuthuse,1.4,1.4);
setEffScaleKey(spep_2+114,shuthuse,1.4,1.4);

setEffAlphaKey(spep_2,shuthuse,0);
setEffAlphaKey(spep_2+42,shuthuse,0);
setEffAlphaKey(spep_2+43,shuthuse,0);
setEffAlphaKey(spep_2+44,shuthuse,255);
setEffAlphaKey(spep_2+114,shuthuse,255);

setEffRotateKey(spep_2,shuthuse,0);
setEffRotateKey(spep_2+114,shuthuse,0);

--SE
playSe( spep_2+44, SE_04); --ゴゴゴ

--黒背景
entryFadeBg(spep_2, 0, 114, 0, 0, 0, 0, 200);  -- 黒　背

-- ** エフェクト等 ** --
entryFade(spep_2+108,6,2,0,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

spep_3=spep_2+114;

--------------------------------------
--カードカットイン(90F)
--------------------------------------

playSe(spep_3,SE_05);
shuchusen=entryEffectLife(spep_3,906,90,0x100,-1,0,0,0);   -- 集中線
setEffScaleKey(spep_3,shuchusen,1.6,1.6);

speff2=entryEffect(spep_3,1507,0x80,-1,0,0,0);   -- カード
setEffReplaceTexture(speff2,1,1);
setEffReplaceTexture(speff2,2,0);-- カード差し替え
setEffReplaceTexture(speff2,5,4);-- 技名テクスチャ差し替え

-- ** エフェクト等 ** --
entryFade(spep_3+85,3,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_4=spep_3+90;
--------------------------------------
--発射
--------------------------------------
--エフェクトの再生
firing=entryEffectLife(spep_4,SP_05,196,0x100,-1,0,0,0);

setEffMoveKey(spep_4,firing,0,0,0);
setEffMoveKey(spep_4+196,firing,0,0,0);

setEffScaleKey(spep_4,firing,1.0,1.0);
setEffScaleKey(spep_4+196,firing,1.0,1.0);

setEffAlphaKey(spep_4,firing,255);
setEffAlphaKey(spep_4+195,firing,255);
--setEffAlphaKey(spep_4+192,firing,0);
--setEffAlphaKey(spep_4+194,firing,0);
setEffAlphaKey(spep_4+196,firing,0);

setEffRotateKey(spep_4,firing,0);
setEffRotateKey(spep_4+196,firing,0);

--集中線
shuthuse2 = entryEffectLife( spep_4 + 0,  906, 78, 0x100, -1, 0, 293.1, -0.2 );

setEffMoveKey( spep_4 + 0, shuthuse2, 0, -0.2 , 0 );
setEffMoveKey( spep_4 + 24, shuthuse2, 0, -0.2 , 0 );
setEffMoveKey( spep_4 + 26, shuthuse2, 0, -0.2 , 0 );
setEffMoveKey( spep_4 + 28, shuthuse2, 0, -0.2 , 0 );
setEffMoveKey( spep_4 + 30, shuthuse2, 0, 178 , 0 );
setEffMoveKey( spep_4 + 32, shuthuse2, -222.8, 237.3 , 0 );
setEffMoveKey( spep_4 + 34, shuthuse2, -205.2, 296.7 , 0 );
setEffMoveKey( spep_4 + 36, shuthuse2, -187.6, 356.1 , 0 );
setEffMoveKey( spep_4 + 38, shuthuse2, -185.9, 355.3 , 0 );
setEffMoveKey( spep_4 + 40, shuthuse2, -184.1, 354.6 , 0 );
setEffMoveKey( spep_4 + 42, shuthuse2, -182.4, 353.8 , 0 );
setEffMoveKey( spep_4 + 44, shuthuse2, -180.6, 353.1 , 0 );
setEffMoveKey( spep_4 + 46, shuthuse2, -178.9, 352.3 , 0 );
setEffMoveKey( spep_4 + 48, shuthuse2, -177.1, 351.6 , 0 );
setEffMoveKey( spep_4 + 50, shuthuse2, -175.4, 350.8 , 0 );
setEffMoveKey( spep_4 + 52, shuthuse2, -173.6, 350.1 , 0 );
setEffMoveKey( spep_4 + 54, shuthuse2, -171.9, 349.3 , 0 );
setEffMoveKey( spep_4 + 56, shuthuse2, -170.1, 348.6 , 0 );
setEffMoveKey( spep_4 + 58, shuthuse2, -168.4, 347.8 , 0 );
setEffMoveKey( spep_4 + 60, shuthuse2, -166.6, 347.1 , 0 );
setEffMoveKey( spep_4 + 62, shuthuse2, -164.9, 346.3 , 0 );
setEffMoveKey( spep_4 + 64, shuthuse2, -163.1, 345.6 , 0 );
setEffMoveKey( spep_4 + 66, shuthuse2, -161.4, 344.8 , 0 );
setEffMoveKey( spep_4 + 68, shuthuse2, -159.6, 344.1 , 0 );
setEffMoveKey( spep_4 + 70, shuthuse2, -187.6, 348.9 , 0 );
setEffMoveKey( spep_4 + 72, shuthuse2, -215.6, 353.7 , 0 );
setEffMoveKey( spep_4 + 74, shuthuse2, -243.6, 358.5 , 0 );
setEffMoveKey( spep_4 + 76, shuthuse2, -271.6, 363.3 , 0 );
setEffMoveKey( spep_4 + 78, shuthuse2, -299.6, 368.1 , 0 );
--setEffMoveKey( spep_4 + 80, shuthuse2, -299.6, 368.1 , 0 );

setEffScaleKey( spep_4 + 0, shuthuse2, 1.36, 1.38 );
setEffScaleKey( spep_4 + 24, shuthuse2, 1.36, 1.38 );
setEffScaleKey( spep_4 + 26, shuthuse2, 1.35, 1.42 );
setEffScaleKey( spep_4 + 28, shuthuse2, 1.35, 1.47 );
setEffScaleKey( spep_4 + 30, shuthuse2, 1.34, 1.52 );
setEffScaleKey( spep_4 + 32, shuthuse2, 1.34, 1.57 );
setEffScaleKey( spep_4 + 34, shuthuse2, 1.33, 1.61 );
setEffScaleKey( spep_4 + 36, shuthuse2, 1.33, 1.66 );
setEffScaleKey( spep_4 + 78, shuthuse2, 1.33, 1.66 );

setEffRotateKey( spep_4 + 0, shuthuse2, 0 );
setEffRotateKey( spep_4 + 78, shuthuse2, 0 );

setEffAlphaKey( spep_4 + 0, shuthuse2, 255 );
setEffAlphaKey( spep_4 + 78, shuthuse2, 255 );



--流線
ryusen2 = entryEffectLife( spep_4 + 136,  921, 60, 0x80, -1, 0, -309.2, 299.7 );
setEffMoveKey( spep_4 + 136, ryusen2, 96, 138.1  , 0 );
setEffMoveKey( spep_4 + 196, ryusen2, 96, 138.1  , 0 );

setEffScaleKey( spep_4 + 136, ryusen2,  1.4, 1.7 );
setEffScaleKey( spep_4 + 196, ryusen2,  1.4, 1.7 );
-----------------------------------------------------------------------
setEffRotateKey( spep_4 + 136, ryusen2, -139.4 );
setEffRotateKey( spep_4 + 196, ryusen2, -139.4 );
-----------------------------------------------------------------------
setEffAlphaKey( spep_4 + 136, ryusen2, 255 );
setEffAlphaKey( spep_4 + 194, ryusen2, 255 );
--setEffAlphaKey( spep_4 + 195, ryusen2, 0 );
setEffAlphaKey( spep_4 + 196, ryusen2, 0 );

--文字エントリー
ctba = entryEffectLife( spep_4 + 26,  10022, 22, 0x100, -1, 0, 163.2, 348.6 );--バッ
setEffMoveKey( spep_4 + 26, ctba, 163.2, 348.6 , 0 );
setEffMoveKey( spep_4 + 28, ctba, 175.2, 382 , 0 );
setEffMoveKey( spep_4 + 30, ctba, 179.2, 393.1 , 0 );
setEffMoveKey( spep_4 + 32, ctba, 179.4, 393.5 , 0 );
setEffMoveKey( spep_4 + 34, ctba, 179.5, 393.9 , 0 );
setEffMoveKey( spep_4 + 36, ctba, 179.7, 394.3 , 0 );
setEffMoveKey( spep_4 + 38, ctba, 179.8, 394.7 , 0 );
setEffMoveKey( spep_4 + 40, ctba, 180, 395.1 , 0 );
setEffMoveKey( spep_4 + 42, ctba, 180.1, 395.4 , 0 );
setEffMoveKey( spep_4 + 44, ctba, 181.5, 399.1 , 0 );
setEffMoveKey( spep_4 + 46, ctba, 185.4, 410.1 , 0 );
setEffMoveKey( spep_4 + 48, ctba, 192.1, 428.4 , 0 );

setEffScaleKey( spep_4 + 26, ctba, 1.11, 1.11 );
setEffScaleKey( spep_4 + 28, ctba, 1.25, 1.25 );
setEffScaleKey( spep_4 + 32, ctba, 1.3, 1.3 );
setEffScaleKey( spep_4 + 34, ctba, 1.3, 1.3 );
setEffScaleKey( spep_4 + 38, ctba, 1.31, 1.31 );
setEffScaleKey( spep_4 + 42, ctba, 1.31, 1.31 );
setEffScaleKey( spep_4 + 44, ctba, 1.33, 1.33 );
setEffScaleKey( spep_4 + 46, ctba, 1.37, 1.37 );
setEffScaleKey( spep_4 + 48, ctba, 1.45, 1.45 );

setEffRotateKey( spep_4 + 26, ctba, 22.2 );
setEffRotateKey( spep_4 + 48, ctba, 22.2 );

setEffAlphaKey( spep_4 + 26, ctba, 0 );
setEffAlphaKey( spep_4 + 27, ctba, 255 );
setEffAlphaKey( spep_4 + 28, ctba, 255 );
setEffAlphaKey( spep_4 + 40, ctba, 255 );
setEffAlphaKey( spep_4 + 42, ctba, 227 );
setEffAlphaKey( spep_4 + 46, ctba, 142 );
setEffAlphaKey( spep_4 + 48, ctba, 0 );

--文字エントリー
ctzopi = entryEffectLife( spep_4 + 86,  10033, 50, 0x100, -1, 0, -40.2, 32.9 );--ズォビッ
setEffMoveKey( spep_4 + 86, ctzopi, -40.2, 32.9 , 0 );
setEffMoveKey( spep_4 + 92, ctzopi, -38, 44.7 , 0 );
setEffMoveKey( spep_4 + 94, ctzopi, -35.9, 50 , 0 );
setEffMoveKey( spep_4 + 96, ctzopi, -35.9, 50.1 , 0 );
setEffMoveKey( spep_4 + 98, ctzopi, -36.8, 54.1 , 0 );
setEffMoveKey( spep_4 + 100, ctzopi, -36.2, 52.7 , 0 );
setEffMoveKey( spep_4 + 102, ctzopi, -38.3, 54.1 , 0 );
setEffMoveKey( spep_4 + 104, ctzopi, -38.3, 58 , 0 );
setEffMoveKey( spep_4 + 106, ctzopi, -40.2, 58.1 , 0 );
setEffMoveKey( spep_4 + 108, ctzopi, -42.6, 63 , 0 );
setEffMoveKey( spep_4 + 110, ctzopi, -42.4, 62.7 , 0 );
setEffMoveKey( spep_4 + 112, ctzopi, -45.6, 64.6 , 0 );
setEffMoveKey( spep_4 + 114, ctzopi, -44.2, 67.9 , 0 );
setEffMoveKey( spep_4 + 116, ctzopi, -46.7, 67 , 0 );
setEffMoveKey( spep_4 + 118, ctzopi, -45.7, 69.3 , 0 );
setEffMoveKey( spep_4 + 120, ctzopi, -49.5, 70.5 , 0 );
setEffMoveKey( spep_4 + 122, ctzopi, -47.4, 71 , 0 );
setEffMoveKey( spep_4 + 124, ctzopi, -50.3, 72.7 , 0 );
setEffMoveKey( spep_4 + 126, ctzopi, -48.4, 74.4 , 0 );
setEffMoveKey( spep_4 + 128, ctzopi, -52.2, 75.1 , 0 );
setEffMoveKey( spep_4 + 130, ctzopi, -48.7, 75.5 , 0 );
setEffMoveKey( spep_4 + 132, ctzopi, -52.5, 76.3 , 0 );
setEffMoveKey( spep_4 + 134, ctzopi, -49, 74.6 , 0 );
setEffMoveKey( spep_4 + 136, ctzopi, -51.4, 77.9 , 0 );
--setEffMoveKey( spep_4 + 138, ctzopi, -51.3, 75.8 , 0 );

setEffScaleKey( spep_4 + 86, ctzopi, 0.83, 0.83 );
setEffScaleKey( spep_4 + 92, ctzopi, 1.47, 1.47 );
setEffScaleKey( spep_4 + 94, ctzopi, 1.68, 1.68 );
setEffScaleKey( spep_4 + 96, ctzopi, 1.78, 1.78 );
setEffScaleKey( spep_4 + 98, ctzopi, 1.84, 1.84 );
setEffScaleKey( spep_4 + 100, ctzopi, 1.85, 1.85 );
setEffScaleKey( spep_4 + 102, ctzopi, 1.84, 1.84 );
setEffScaleKey( spep_4 + 104, ctzopi, 1.83, 1.83 );
setEffScaleKey( spep_4 + 106, ctzopi, 1.82, 1.82 );
setEffScaleKey( spep_4 + 108, ctzopi, 1.81, 1.81 );
setEffScaleKey( spep_4 + 110, ctzopi, 1.8, 1.8 );
setEffScaleKey( spep_4 + 112, ctzopi, 1.8, 1.8 );
setEffScaleKey( spep_4 + 114, ctzopi, 1.79, 1.79 );
setEffScaleKey( spep_4 + 116, ctzopi, 1.78, 1.78 );
setEffScaleKey( spep_4 + 118, ctzopi, 1.78, 1.78 );
setEffScaleKey( spep_4 + 120, ctzopi, 1.77, 1.77 );
setEffScaleKey( spep_4 + 122, ctzopi, 1.77, 1.77 );
setEffScaleKey( spep_4 + 124, ctzopi, 1.76, 1.76 );
setEffScaleKey( spep_4 + 128, ctzopi, 1.76, 1.76 );
setEffScaleKey( spep_4 + 136, ctzopi, 1.75, 1.75 );

setEffRotateKey( spep_4 + 86, ctzopi, -0.4 );
setEffRotateKey( spep_4 + 136, ctzopi, -0.4 );

setEffAlphaKey( spep_4 + 86, ctzopi, 255 );
setEffAlphaKey( spep_4 + 136, ctzopi, 255 );

setEffShake(spep_4 + 86,ctzopi,59,15);

--文字エントリー
ctgyarururu = entryEffectLife( spep_4 + 140,  10031, 56, 0x100, -1, 0, 56.2, 310.4 );--ギャルルル…
setEffMoveKey( spep_4 + 140, ctgyarururu, 56.2, 310.4 , 0 );
setEffMoveKey( spep_4 + 142, ctgyarururu, 63.6, 294.6 , 0 );
setEffMoveKey( spep_4 + 144, ctgyarururu, 76.2, 287.6 , 0 );
setEffMoveKey( spep_4 + 146, ctgyarururu, 75.1, 282.7 , 0 );
setEffMoveKey( spep_4 + 148, ctgyarururu, 86.9, 275.4 , 0 );
setEffMoveKey( spep_4 + 150, ctgyarururu, 82.1, 274 , 0 );
setEffMoveKey( spep_4 + 152, ctgyarururu, 79.9, 269.7 , 0 );
setEffMoveKey( spep_4 + 154, ctgyarururu, 87.5, 273.6 , 0 );
setEffMoveKey( spep_4 + 156, ctgyarururu, 80.8, 275.7 , 0 );
setEffMoveKey( spep_4 + 158, ctgyarururu, 90.6, 272 , 0 );
setEffMoveKey( spep_4 + 160, ctgyarururu, 80.8, 267.4 , 0 );
setEffMoveKey( spep_4 + 162, ctgyarururu, 89.1, 269.7 , 0 );
setEffMoveKey( spep_4 + 164, ctgyarururu, 81.7, 273.7 , 0 );
setEffMoveKey( spep_4 + 166, ctgyarururu, 90.3, 270 , 0 );
setEffMoveKey( spep_4 + 168, ctgyarururu, 83.8, 270.2 , 0 );
setEffMoveKey( spep_4 + 170, ctgyarururu, 93.2, 270.7 , 0 );
setEffMoveKey( spep_4 + 172, ctgyarururu, 84.1, 266.3 , 0 );
setEffMoveKey( spep_4 + 174, ctgyarururu, 89.9, 272.3 , 0 );
setEffMoveKey( spep_4 + 176, ctgyarururu, 94.2, 263.9 , 0 );
setEffMoveKey( spep_4 + 178, ctgyarururu, 89.2, 271.7 , 0 );
setEffMoveKey( spep_4 + 180, ctgyarururu, 89.5, 260.6 , 0 );
setEffMoveKey( spep_4 + 182, ctgyarururu, 92.1, 266.1 , 0 );
setEffMoveKey( spep_4 + 184, ctgyarururu, 89.1, 262.1 , 0 );
setEffMoveKey( spep_4 + 186, ctgyarururu, 96.4, 266.7 , 0 );
setEffMoveKey( spep_4 + 188, ctgyarururu, 88.8, 269.4 , 0 );
setEffMoveKey( spep_4 + 190, ctgyarururu, 98.4, 266.1 , 0 );
setEffMoveKey( spep_4 + 192, ctgyarururu, 87.5, 261.8 , 0 );
setEffMoveKey( spep_4 + 194, ctgyarururu, 95.4, 264.7 , 0 );
setEffMoveKey( spep_4 + 196, ctgyarururu, 87.1, 269.4 , 0 );

setEffScaleKey( spep_4 + 140, ctgyarururu, 1.63, 1.63 );
setEffScaleKey( spep_4 + 142, ctgyarururu, 2.17, 2.17 );
setEffScaleKey( spep_4 + 144, ctgyarururu, 2.6, 2.6 );
setEffScaleKey( spep_4 + 146, ctgyarururu, 2.9, 2.9 );
setEffScaleKey( spep_4 + 148, ctgyarururu, 3.08, 3.08 );
setEffScaleKey( spep_4 + 150, ctgyarururu, 3.14, 3.14 );
setEffScaleKey( spep_4 + 152, ctgyarururu, 3.15, 3.15 );
setEffScaleKey( spep_4 + 154, ctgyarururu, 3.16, 3.16 );
setEffScaleKey( spep_4 + 156, ctgyarururu, 3.17, 3.17 );
setEffScaleKey( spep_4 + 158, ctgyarururu, 3.18, 3.18 );
setEffScaleKey( spep_4 + 160, ctgyarururu, 3.19, 3.19 );
setEffScaleKey( spep_4 + 162, ctgyarururu, 3.2, 3.2 );
setEffScaleKey( spep_4 + 164, ctgyarururu, 3.21, 3.21 );
setEffScaleKey( spep_4 + 166, ctgyarururu, 3.23, 3.23 );
setEffScaleKey( spep_4 + 168, ctgyarururu, 3.24, 3.24 );
setEffScaleKey( spep_4 + 170, ctgyarururu, 3.25, 3.25 );
setEffScaleKey( spep_4 + 172, ctgyarururu, 3.26, 3.26 );
setEffScaleKey( spep_4 + 174, ctgyarururu, 3.27, 3.27 );
setEffScaleKey( spep_4 + 176, ctgyarururu, 3.28, 3.28 );
setEffScaleKey( spep_4 + 178, ctgyarururu, 3.29, 3.29 );
setEffScaleKey( spep_4 + 180, ctgyarururu, 3.3, 3.3 );
setEffScaleKey( spep_4 + 182, ctgyarururu, 3.31, 3.31 );
setEffScaleKey( spep_4 + 196, ctgyarururu, 3.31, 3.31 );

setEffRotateKey( spep_4 + 140, ctgyarururu, 0 );
setEffRotateKey( spep_4 + 196, ctgyarururu, 0 );

setEffAlphaKey( spep_4 + 140, ctgyarururu, 255 );
setEffAlphaKey( spep_4 + 194, ctgyarururu, 255 );
setEffAlphaKey( spep_4 + 195, ctgyarururu, 0 );
setEffAlphaKey( spep_4 + 196, ctgyarururu, 0 );

setEffShake(spep_4 + 140,ctgyarururu,56,15);

--SE
playSe( spep_4, 1036);--気だめ
playSe( spep_4+20, 1036); --気だめ
playSe( spep_4+40, 1036); --気だめ
playSe( spep_4+26, 1003); --手をあげる音
playSe( spep_4+60, 1036); --気だめ
playSe( spep_4+78, SE_05); --ビームを撃つ
playSe( spep_4+140, SE_06); --ビームを撃つ

--黒背景
entryFadeBg(spep_4, 0, 196, 0, 0, 0, 0, 210);  -- 黒　背


-- ** エフェクト等 ** --
entryFade(spep_4+130,4,4,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_5=spep_4+196;
--------------------------------------
--被弾
--------------------------------------
--エフェクトの再生(前)
hit_front=entryEffectLife(spep_5,SP_06,94,0x100,-1,0,0,0);

setEffMoveKey(spep_5,hit_front,0,0,0);
setEffMoveKey(spep_5+94,hit_front,0,0,0);

setEffScaleKey(spep_5,hit_front,1.0,1.0);
setEffScaleKey(spep_5+94,hit_front,1.0,1.0);

setEffAlphaKey(spep_5,hit_front,255);
setEffAlphaKey(spep_5+94,hit_front,255);

setEffRotateKey(spep_5,hit_front,0);
setEffRotateKey(spep_5+94,hit_front,0);

--エフェクトの再生(後)
hit_back=entryEffectLife(spep_5,SP_07,94,0x80,-1,0,0,0);

setEffMoveKey(spep_5,hit_back,0,0,0);
setEffMoveKey(spep_5+94,hit_back,0,0,0);

setEffScaleKey(spep_5,hit_back,1.0,1.0);
setEffScaleKey(spep_5+94,hit_back,1.0,1.0);

setEffAlphaKey(spep_5,hit_back,255);
setEffAlphaKey(spep_5+94,hit_back,255);

setEffRotateKey(spep_5,hit_back,0);
setEffRotateKey(spep_5+94,hit_back,0);

--敵の動き
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 94, 1, 0 );
changeAnime( spep_5 + 0, 1, 106 );

setMoveKey( spep_5 + 0, 1, 90, -270 , 0 );
setMoveKey( spep_5 + 94, 1,90, -270 , 0 );

setScaleKey( spep_5 + 0, 1,1.6, 1.6 );
setScaleKey( spep_5 + 94, 1,1.6, 1.6 );

setRotateKey( spep_5 + 0, 1, 39 );
setRotateKey( spep_5 + 94, 1, 39 );

--文字エントリー
ctzudodo = entryEffectLife( spep_5 + 20,  10014, 74, 0x100, -1, 0, 17.8, 230.4 );--ズドドドッ
setEffMoveKey( spep_5 + 20, ctzudodo, 17.8, 230.4 , 0 );
setEffMoveKey( spep_5 + 22, ctzudodo, 15.2, 229.4 , 0 );
setEffMoveKey( spep_5 + 24, ctzudodo, 18.9, 234.1 , 0 );
setEffMoveKey( spep_5 + 26, ctzudodo, 17.9, 230.3 , 0 );
setEffMoveKey( spep_5 + 28, ctzudodo, 14.6, 234 , 0 );
setEffMoveKey( spep_5 + 30, ctzudodo, 19, 244 , 0 );
setEffMoveKey( spep_5 + 32, ctzudodo, 19.3, 241.9 , 0 );
setEffMoveKey( spep_5 + 34, ctzudodo, 17.5, 253.6 , 0 );
setEffMoveKey( spep_5 + 36, ctzudodo, 15.7, 250.3 , 0 );
setEffMoveKey( spep_5 + 38, ctzudodo, 17.7, 262.6 , 0 );
setEffMoveKey( spep_5 + 40, ctzudodo, 22.4, 258.9 , 0 );
setEffMoveKey( spep_5 + 42, ctzudodo, 14.3, 269.6 , 0 );
setEffMoveKey( spep_5 + 44, ctzudodo, 21.5, 264.2 , 0 );
setEffMoveKey( spep_5 + 46, ctzudodo, 16.7, 277.7 , 0 );
setEffMoveKey( spep_5 + 48, ctzudodo, 13.6, 270.7 , 0 );
setEffMoveKey( spep_5 + 50, ctzudodo, 18.8, 283.9 , 0 );
setEffMoveKey( spep_5 + 52, ctzudodo, 18.9, 277.8 , 0 );
setEffMoveKey( spep_5 + 54, ctzudodo, 22.4, 291.5 , 0 );
setEffMoveKey( spep_5 + 56, ctzudodo, 19.6, 280.4 , 0 );
setEffMoveKey( spep_5 + 58, ctzudodo, 19.5, 296.5 , 0 );
setEffMoveKey( spep_5 + 60, ctzudodo, 18.6, 286.9 , 0 );
setEffMoveKey( spep_5 + 62, ctzudodo, 12.7, 301.4 , 0 );
setEffMoveKey( spep_5 + 64, ctzudodo, 23, 291.4 , 0 );
setEffMoveKey( spep_5 + 66, ctzudodo, 16.7, 304.7 , 0 );
setEffMoveKey( spep_5 + 68, ctzudodo, 22.9, 297.1 , 0 );
setEffMoveKey( spep_5 + 70, ctzudodo, 11.4, 306 , 0 );
setEffMoveKey( spep_5 + 72, ctzudodo, 26.5, 304.3 , 0 );
setEffMoveKey( spep_5 + 74, ctzudodo, 13, 302.9 , 0 );
setEffMoveKey( spep_5 + 76, ctzudodo, 23.3, 304.4 , 0 );
setEffMoveKey( spep_5 + 78, ctzudodo, 10.8, 303.4 , 0 );
setEffMoveKey( spep_5 + 80, ctzudodo, 19.1, 314.9 , 0 );
setEffMoveKey( spep_5 + 82, ctzudodo, 11, 302.5 , 0 );
setEffMoveKey( spep_5 + 84, ctzudodo, 24.7, 316.8 , 0 );
setEffMoveKey( spep_5 + 86, ctzudodo, 17.9, 310 , 0 );
setEffMoveKey( spep_5 + 88, ctzudodo, 14.6, 309 , 0 );
setEffMoveKey( spep_5 + 90, ctzudodo, 19.1, 316.9 , 0 );
setEffMoveKey( spep_5 + 92, ctzudodo, 11, 303.8 , 0 );
setEffMoveKey( spep_5 + 94, ctzudodo, 24.7, 317.5 , 0 );

setEffScaleKey( spep_5 + 20, ctzudodo, 1.21, 1.21 );
setEffScaleKey( spep_5 + 22, ctzudodo, 1.82, 1.82 );
setEffScaleKey( spep_5 + 24, ctzudodo, 2.19, 2.19 );
setEffScaleKey( spep_5 + 26, ctzudodo, 2.31, 2.31 );
setEffScaleKey( spep_5 + 94, ctzudodo, 2.31, 2.31 );

setEffRotateKey( spep_5 + 20, ctzudodo, 43.1 );
setEffRotateKey( spep_5 + 94, ctzudodo, 43.1 );

setEffAlphaKey( spep_5 + 20, ctzudodo, 255 );
setEffAlphaKey( spep_5 + 94, ctzudodo, 255 );

-- ** エフェクト等 ** --
entryFade(spep_5+16,2,2,2,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_5+92,2,2,10,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--SE
playSe( spep_5, SE_07); --ビームを撃つ
playSe( spep_5+20, 1023); --爆発


--黒背景
entryFadeBg(spep_5, 0, 94, 0, 0, 0, 0, 210);  -- 黒　背

--次の準備
spep_6=spep_5+94;
--------------------------------------
--爆発
--------------------------------------
--エフェクトの再生
explosion=entryEffect(spep_6,1563,0x100,-1,0,0,0);

setEffMoveKey(spep_6,explosion,0,0,0);
setEffMoveKey(spep_6+180,explosion,0,0,0);
setEffScaleKey(spep_6,explosion,1.0,1.0);
setEffScaleKey(spep_6+180,explosion,1.0,1.0);
setEffAlphaKey(spep_6,explosion,255);
setEffAlphaKey(spep_6+180,explosion,255);
setEffRotateKey(spep_6,explosion,0);
setEffRotateKey(spep_6+180,explosion,0);

--集中線
shuthuse3=entryEffectLife(spep_6,906,180,0x100,-1,0,0,0);

setEffMoveKey(spep_6,shuthuse3,0,0,0);
setEffMoveKey(spep_6+180,shuthuse3,0,0,0);
setEffScaleKey(spep_6,shuthuse3,1.3,1.3);
setEffScaleKey(spep_6+180,shuthuse3,1.3,1.3);
setEffAlphaKey(spep_6,shuthuse3,255);
setEffAlphaKey(spep_6+180,shuthuse3,255);
setEffRotateKey(spep_6,shuthuse3,0);
setEffRotateKey(spep_6+180,shuthuse3,0);

--SE
playSe( spep_6, 1024); --大爆発

-- ダメージ表示
dealDamage(spep_6+60);
entryFade( spep_6+160, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_6+170);
else 
------------------------------------------------------
-- 敵側
------------------------------------------------------
--------------------------------------
--格闘
--------------------------------------
spep_0=0;

--エフェクトの再生(前)
fight_front=entryEffectLife(spep_0,SP_01x,206,0x100,-1,0,0,0);

setEffMoveKey(spep_0,fight_front,0,0,0);
setEffMoveKey(spep_0+206,fight_front,0,0,0);

setEffScaleKey(spep_0,fight_front,1.0,1.0);
setEffScaleKey(spep_0+206,fight_front,1.0,1.0);

setEffAlphaKey(spep_0,fight_front,255);
setEffAlphaKey(spep_0+204,fight_front,255);
setEffAlphaKey(spep_0+205,fight_front,0);
setEffAlphaKey(spep_0+206,fight_front,0);

setEffRotateKey(spep_0,fight_front,0);
setEffRotateKey(spep_0+206,fight_front,0);

--流線
ryusen = entryEffectLife( spep_0,  921, 188, 0x80, -1, 0, 33.5, -9.9 );--流線斜め

setEffMoveKey( spep_0 + 0, ryusen, 33.5, -9.9 , 0 );
setEffMoveKey( spep_0 + 188, ryusen, 33.5, -9.9 , 0 );

setEffScaleKey( spep_0 + 0, ryusen, 1.12, 1.31 );
setEffScaleKey( spep_0 + 188, ryusen, 1.12, 1.31 );

setEffRotateKey( spep_0 + 0, ryusen, 179.8 );
setEffRotateKey( spep_0 + 188, ryusen, 179.8 );

setEffAlphaKey( spep_0 + 0, ryusen, 0 );
setEffAlphaKey( spep_0 + 68, ryusen, 0 );
setEffAlphaKey( spep_0 + 69, ryusen, 255 );
setEffAlphaKey( spep_0 + 70, ryusen, 255 );
setEffAlphaKey( spep_0 + 188, ryusen, 255 );

--エフェクトの再生(後)
fight_back=entryEffectLife(spep_0,SP_02x,206,0x80,-1,0,0,0);

setEffMoveKey(spep_0,fight_back,0,0,0);
setEffMoveKey(spep_0+206,fight_back,0,0,0);

setEffScaleKey(spep_0,fight_back,1.0,1.0);
setEffScaleKey(spep_0+206,fight_back,1.0,1.0);

setEffAlphaKey(spep_0,fight_back,255);
setEffAlphaKey(spep_0+204,fight_back,255);
setEffAlphaKey(spep_0+205,fight_back,0);
setEffAlphaKey(spep_0+206,fight_back,0);

setEffRotateKey(spep_0,fight_back,0);
setEffRotateKey(spep_0+206,fight_back,0);

--文字エントリー
ctshu = entryEffectLife( spep_0 + 10,  10011, 14, 0x100, -1, 0, 37, 271.5 );--シュンッ
setEffMoveKey( spep_0 + 10, ctshu, 37, 271.5 , 0 );
setEffMoveKey( spep_0 + 16, ctshu, 34.1, 279.1 , 0 );
setEffMoveKey( spep_0 + 18, ctshu, 32.4, 283.7 , 0 );
setEffMoveKey( spep_0 + 20, ctshu, 31.8, 285.2 , 0 );
setEffMoveKey( spep_0 + 24, ctshu, 31.8, 285.2 , 0 );

setEffScaleKey( spep_0 + 10, ctshu, 0.6, 0.6 );
setEffScaleKey( spep_0 + 16, ctshu, 0.92, 0.92 );
--setEffScaleKey( spep_0 + 18, ctshu, 1.11, 1.11 );
--setEffScaleKey( spep_0 + 20, ctshu, 1.17, 1.17 );
setEffScaleKey( spep_0 + 18, ctshu, 1.18, 1.18 );
--setEffScaleKey( spep_0 + 24, ctshu, 1.21, 1.21 );
--setEffScaleKey( spep_0 + 26, ctshu, 1.25, 1.25 );
setEffScaleKey( spep_0 + 24, ctshu, 1.31, 1.31 );

setEffRotateKey( spep_0 + 10, ctshu, 12.7 );
setEffRotateKey( spep_0 + 24, ctshu, 12.7 );

setEffAlphaKey( spep_0 + 10, ctshu, 0 );
setEffAlphaKey( spep_0 + 11, ctshu, 255 );
setEffAlphaKey( spep_0 + 12, ctshu, 255 );
setEffAlphaKey( spep_0 + 16, ctshu, 255 );
setEffAlphaKey( spep_0 + 18, ctshu, 239 );
setEffAlphaKey( spep_0 + 20, ctshu, 191 );
setEffAlphaKey( spep_0 + 22, ctshu, 112 );
setEffAlphaKey( spep_0 + 24, ctshu, 0 );

--黒背景
entryFadeBg(spep_0, 0, 206, 0, 0, 0, 0, 200);  -- 黒　背

--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

SP_dodge = spep_0+28 ; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

pauseAll( SP_dodge, 67);

--キャラクターの固定
setMoveKey(SP_dodge, 1, 0, 0, 0 );
setScaleKey(SP_dodge , 1, 1.6, 1.6 );
setRotateKey(SP_dodge,   1, 0);

--キャラクターの固定
setMoveKey(SP_dodge+8, 1, 0, 0, 0 );
setScaleKey(SP_dodge+8 , 1, 1.6, 1.6  );
setRotateKey(SP_dodge+8,   1, 0);



setDisp(SP_dodge+9, 0, 0);
--setDisp(SP_dodge+9, 1, 0);
--setMoveKey(SP_dodge+9, 1, 0 , 0, 0);
setScaleKey(SP_dodge+9,  1 , 1.6, 1.6);
setRotateKey(SP_dodge+9,   1, 0);

--setMoveKey(SP_dodge+10, 1, 0 , 0, 0);
setScaleKey(SP_dodge+10,  1 , 1.6, 1.6);
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
--文字エントリー
ctshu2 = entryEffectLife( spep_0 + 50,  10011, 14, 0x100, -1, 0, -161.4, 234.5 );--シュンッ
setEffMoveKey( spep_0 + 50, ctshu2, -161.4, 234.5 , 0 );
setEffMoveKey( spep_0 + 56, ctshu2, -167, 240.4 , 0 );
setEffMoveKey( spep_0 + 58, ctshu2, -170.3, 244 , 0 );
setEffMoveKey( spep_0 + 60, ctshu2, -171.4, 245.2 , 0 );
setEffMoveKey( spep_0 + 64, ctshu2, -171.4, 245.2 , 0 );
--setEffMoveKey( spep_0 + 66, ctshu2, -171.4, 245.3 , 0 );
--setEffMoveKey( spep_0 + 68, ctshu2, -171.4, 245.3 , 0 );

setEffScaleKey( spep_0 + 50, ctshu2, 0.6, 0.6 );
setEffScaleKey( spep_0 + 52, ctshu2, 0.92, 0.92 );
setEffScaleKey( spep_0 + 54, ctshu2, 1.11, 1.11 );
setEffScaleKey( spep_0 + 56, ctshu2, 1.17, 1.17 );
setEffScaleKey( spep_0 + 58, ctshu2, 1.18, 1.18 );
setEffScaleKey( spep_0 + 60, ctshu2, 1.21, 1.21 );
setEffScaleKey( spep_0 + 62, ctshu2, 1.25, 1.25 );
setEffScaleKey( spep_0 + 64, ctshu2, 1.31, 1.31 );

setEffRotateKey( spep_0 + 50, ctshu2, -9.3 );
setEffRotateKey( spep_0 + 64, ctshu2, -9.3 );

setEffAlphaKey( spep_0 + 50, ctshu2, 0 );
setEffAlphaKey( spep_0 + 51, ctshu2, 255 );
setEffAlphaKey( spep_0 + 52, ctshu2, 255 );
setEffAlphaKey( spep_0 + 56, ctshu2, 255 );
setEffAlphaKey( spep_0 + 58, ctshu2, 239 );
setEffAlphaKey( spep_0 + 60, ctshu2, 191 );
setEffAlphaKey( spep_0 + 62, ctshu2, 112 );
setEffAlphaKey( spep_0 + 64, ctshu2, 0 );


--敵の動き
setDisp(spep_0+34,1,1);
setDisp(spep_0+110,1,0);
setDisp(spep_0+119,1,1);
setDisp(spep_0+120,1,1);
setDisp(spep_0+187,1,0);
setDisp(spep_0+188,1,0);
setDisp(spep_0+195,1,1);
setDisp(spep_0+196,1,1);


changeAnime(spep_0+24,1,102);
changeAnime(spep_0+69,1,107);
changeAnime(spep_0+70,1,107);
changeAnime(spep_0+194,1,108);

setShakeChara(spep_0+70,1,136,10);

setMoveKey( spep_0 + 26,1, 15.3, 2.5 , 0 );
setMoveKey( spep_0 + 68,1, 15.3, 2.5 , 0 );
setMoveKey( spep_0 + 69, 1, 25.1, 21.6 , 0 );
setMoveKey( spep_0 + 70, 1, 25.1, 21.6 , 0 );
setMoveKey( spep_0 + 74, 1, 56.7, 13.4 , 0 );
setMoveKey( spep_0 + 76, 1, 121.9, -17.7 , 0 );
setMoveKey( spep_0 + 78, 1, 153.6, -32.3 , 0 );
setMoveKey( spep_0 + 80, 1, 204.8, -65.8 , 0 );
setMoveKey( spep_0 + 82, 1, 254, -87 , 0 );
setMoveKey( spep_0 + 84, 1, 271.5, -104.6 , 0 );
setMoveKey( spep_0 + 86, 1, 311.6, -128.7 , 0 );
setMoveKey( spep_0 + 88, 1, 349.5, -152.6 , 0 );
setMoveKey( spep_0 + 90, 1, 384, -175.9 , 0 );
setMoveKey( spep_0 + 92, 1, 415.1, -198.4 , 0 );
setMoveKey( spep_0 + 94, 1, 448.5, -221.2 , 0 );
setMoveKey( spep_0 + 96, 1, 485.8, -244.8 , 0 );
setMoveKey( spep_0 + 98, 1, 527.7, -269.8 , 0 );
setMoveKey( spep_0 + 100, 1, 575.3, -296.3 , 0 );
setMoveKey( spep_0 + 102, 1, 629.5, -325.1 , 0 );
setMoveKey( spep_0 + 104, 1, 691.4, -356.5 , 0 );
setMoveKey( spep_0 + 106, 1, 762.4, -391.1 , 0 );
setMoveKey( spep_0 + 108, 1, 843.9, -429.6 , 0 );
setMoveKey( spep_0 + 110, 1, 935.9, -473 , 0 );
setMoveKey( spep_0 + 114, 1, 1500, -500 , 0 );
setMoveKey( spep_0 + 115, 1, 1500, -500 , 0 );
setMoveKey( spep_0 + 116, 1, -204.7, -6.1 , 0 );
setMoveKey( spep_0 + 124, 1, -194.2, -7.1 , 0 );
setMoveKey( spep_0 + 126, 1, -184.5, -8.1 , 0 );
setMoveKey( spep_0 + 128, 1, -175.1, -9 , 0 );
setMoveKey( spep_0 + 130, 1, -166.3, -9.8 , 0 );
setMoveKey( spep_0 + 132, 1, -157.9, -10.6 , 0 );
setMoveKey( spep_0 + 134, 1, -149.9, -11.4 , 0 );
setMoveKey( spep_0 + 136, 1, -142.4, -12.1 , 0 );
setMoveKey( spep_0 + 138, 1, -135.2, -12.9 , 0 );
setMoveKey( spep_0 + 140, 1, -128.5, -13.5 , 0 );
setMoveKey( spep_0 + 142, 1, -122.1, -14.2 , 0 );
setMoveKey( spep_0 + 144, 1, -116, -14.8 , 0 );
setMoveKey( spep_0 + 146, 1, -110.2, -15.3 , 0 );
setMoveKey( spep_0 + 148, 1, -104.8, -15.8 , 0 );
setMoveKey( spep_0 + 150, 1, -99.6, -16.3 , 0 );
setMoveKey( spep_0 + 152, 1, -94.7, -16.8 , 0 );
setMoveKey( spep_0 + 154, 1, -90.1, -17.2 , 0 );
setMoveKey( spep_0 + 156, 1, -85.6, -17.7 , 0 );
setMoveKey( spep_0 + 158, 1, -81.4, -18.1 , 0 );
setMoveKey( spep_0 + 160, 1, -77.3, -18.5 , 0 );
setMoveKey( spep_0 + 162, 1, -73.5, -18.9 , 0 );
setMoveKey( spep_0 + 164, 1, -69.7, -19.3 , 0 );
setMoveKey( spep_0 + 166, 1, -66.1, -19.6 , 0 );
setMoveKey( spep_0 + 168, 1, -62.7, -19.9 , 0 );
setMoveKey( spep_0 + 170, 1, -59.3, -20.2 , 0 );
setMoveKey( spep_0 + 172, 1, -56, -20.6 , 0 );
setMoveKey( spep_0 + 174, 1, -52.8, -20.9 , 0 );
setMoveKey( spep_0 + 176, 1, -49.6, -21.2 , 0 );
setMoveKey( spep_0 + 178, 1, -46.4, -21.5 , 0 );
setMoveKey( spep_0 + 180, 1, -43.2, -21.8 , 0 );
setMoveKey( spep_0 + 182, 1, -40, -22.1 , 0 );
setMoveKey( spep_0 + 184, 1, -36.7, -22.5 , 0 );
setMoveKey( spep_0 + 186, 1, -33.5, -22.8 , 0 );
setMoveKey( spep_0 + 188, 1, -30.3, -23.2 , 0 );
setMoveKey( spep_0 + 198, 1, 50.7, -109.8 , 0 );
setMoveKey( spep_0 + 200, 1, 128, -304.8 , 0 );
setMoveKey( spep_0 + 202, 1, 194, -517 , 0 );
setMoveKey( spep_0 + 204, 1, 337.8, -946.2 , 0 );
setMoveKey( spep_0 + 205, 1, 337.8, -946.2 , 0 );
--setMoveKey( spep_0 + 208, 1, 333.7, -937.6 , 0 );
--setMoveKey( spep_0 + 210, 1, 337.7, -940.4 , 0 );
--setMoveKey( spep_0 + 212, 1, 337.8, -940.6 , 0 );
--setMoveKey( spep_0 + 222, 1, 337.8, -940.6 , 0 );
--setMoveKey( spep_0 + 213, 1, 337.8, -940.6 , 0 );

setScaleKey( spep_0 + 26, 1, 1.01, 1.01 );
setScaleKey( spep_0 + 68, 1, 1.01, 1.01 );
setScaleKey( spep_0 + 69, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 70, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 74, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 76, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 78, 1, 0.88, 0.88 );
setScaleKey( spep_0 + 80, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 82, 1, 1.19, 1.19 );
setScaleKey( spep_0 + 84, 1, 1.23, 1.23 );
setScaleKey( spep_0 + 86, 1, 1.36, 1.36 );
setScaleKey( spep_0 + 88, 1, 1.48, 1.48 );
setScaleKey( spep_0 + 90, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 92, 1, 1.69, 1.69 );
setScaleKey( spep_0 + 94, 1, 1.79, 1.79 );
setScaleKey( spep_0 + 96, 1, 1.9, 1.9 );
setScaleKey( spep_0 + 98, 1, 2.01, 2.01 );
setScaleKey( spep_0 + 100, 1, 2.13, 2.13 );
setScaleKey( spep_0 + 102, 1, 2.27, 2.27 );
setScaleKey( spep_0 + 104, 1, 2.42, 2.42 );
setScaleKey( spep_0 + 106, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 108, 1, 2.81, 2.81 );
setScaleKey( spep_0 + 110, 1, 3.05, 3.05 );
setScaleKey( spep_0 + 111, 1, 0.06, 0.06 );
setScaleKey( spep_0 + 112, 1, 0.06, 0.06 );
setScaleKey( spep_0 + 122, 1, 0.06, 0.06 );
setScaleKey( spep_0 + 124, 1, 0.1, 0.1 );
setScaleKey( spep_0 + 126, 1, 0.13, 0.13 );
setScaleKey( spep_0 + 128, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 130, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 132, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 134, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 136, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 138, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 140, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 142, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 144, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 146, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 148, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 150, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 152, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 154, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 156, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 158, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 160, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 162, 1, 0.47, 0.47 );
setScaleKey( spep_0 + 164, 1, 0.49, 0.49 );
setScaleKey( spep_0 + 166, 1, 0.49, 0.49 );
setScaleKey( spep_0 + 168, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 170, 1, 0.52, 0.52 );
setScaleKey( spep_0 + 172, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 174, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 176, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 178, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 180, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 182, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 184, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 186, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 188, 1, 0.61, 0.61 );
--setScaleKey( spep_0 + 198, 1, 1.69, 1.69 );
--setScaleKey( spep_0 + 200, 1, 1.91, 1.91 );
setScaleKey( spep_0 + 190, 1, 1.7, 1.7 );
setScaleKey( spep_0 + 204, 1, 1.7, 1.7 );
setScaleKey( spep_0 + 205, 1, 1.7, 1.7 );
--setScaleKey( spep_0 + 206, 1, 2.6, 2.6 );
--setScaleKey( spep_0 + 222, 1, 2.6, 2.6 );
--setScaleKey( spep_0 + 223, 1, 2.6, 2.6 );

setRotateKey( spep_0 + 26, 1, 0 );
setRotateKey( spep_0 + 69, 1, 0 );
setRotateKey( spep_0 + 70, 1, 0 );
setRotateKey( spep_0 + 70, 1, -35 );
setRotateKey( spep_0 + 74, 1, -26.1 );
setRotateKey( spep_0 + 76, 1, -23.1 );
setRotateKey( spep_0 + 78, 1, -21.1 );
setRotateKey( spep_0 + 80, 1, -19.6 );
setRotateKey( spep_0 + 82, 1, -18.3 );
setRotateKey( spep_0 + 84, 1, -17.4 );
setRotateKey( spep_0 + 86, 1, -16.5 );
setRotateKey( spep_0 + 88, 1, -15.9 );
setRotateKey( spep_0 + 90, 1, -15.3 );
setRotateKey( spep_0 + 92, 1, -14.8 );
setRotateKey( spep_0 + 94, 1, -14.4 );
setRotateKey( spep_0 + 96, 1, -14.1 );
setRotateKey( spep_0 + 98, 1, -13.9 );
setRotateKey( spep_0 + 100, 1, -13.7 );
setRotateKey( spep_0 + 102, 1, -13.5 );
setRotateKey( spep_0 + 104, 1, -13.4 );
setRotateKey( spep_0 + 106, 1, -13.3 );
setRotateKey( spep_0 + 120, 1, -13.3 );
setRotateKey( spep_0 + 122, 1, -20.8 );
setRotateKey( spep_0 + 188, 1, -20.8 );
setRotateKey( spep_0 + 190, 1, 63.9 );
setRotateKey( spep_0 + 204, 1, 63.9 );
setRotateKey( spep_0 + 205, 1, 63.9 );


--文字エントリー
ctga = entryEffectLife( spep_0 + 68,  10005, 19, 0x100, -1, 0, 12.4, 237.9 );--ガッ

setEffMoveKey( spep_0 + 68, ctga, 12.4, 237.9 , 0 );
setEffMoveKey( spep_0 + 74, ctga, 4.5, 251.2 , 0 );
setEffMoveKey( spep_0 + 76, ctga, 9, 255.7 , 0 );
setEffMoveKey( spep_0 + 78, ctga, 2.6, 259.1 , 0 );
setEffMoveKey( spep_0 + 80, ctga, 11.8, 259.1 , 0 );
setEffMoveKey( spep_0 + 82, ctga, 3.4, 265.1 , 0 );
setEffMoveKey( spep_0 + 84, ctga, 7.4, 263.5 , 0 );
setEffMoveKey( spep_0 + 86, ctga, -0.1, 269.3 , 0 );
setEffMoveKey( spep_0 + 88, ctga, -0.6, 271.3 , 0 );

setEffScaleKey( spep_0 + 68, ctga, 1.25, 1.25 );
setEffScaleKey( spep_0 + 74, ctga, 1.45, 1.45 );
setEffScaleKey( spep_0 + 76, ctga, 1.52, 1.52 );
setEffScaleKey( spep_0 + 78, ctga, 1.57, 1.57 );
setEffScaleKey( spep_0 + 80, ctga, 1.61, 1.61 );
setEffScaleKey( spep_0 + 82, ctga, 1.63, 1.63 );
setEffScaleKey( spep_0 + 84, ctga, 1.64, 1.64 );
setEffScaleKey( spep_0 + 86, ctga, 1.73, 1.73 );
setEffScaleKey( spep_0 + 88, ctga, 1.76, 1.76 );

setEffRotateKey( spep_0 + 68, ctga, 9.2 );
setEffRotateKey( spep_0 + 88, ctga, 9.2 );

setEffAlphaKey( spep_0 + 68, ctga, 0 );
setEffAlphaKey( spep_0 + 69, ctga, 255 );
setEffAlphaKey( spep_0 + 70, ctga, 255 );
setEffAlphaKey( spep_0 + 84, ctga, 255 );
setEffAlphaKey( spep_0 + 86, ctga, 64 );
setEffAlphaKey( spep_0 + 88, ctga, 0 );


--文字エントリー
ctbaki = entryEffectLife( spep_0 + 186,  10020, 18, 0x100, -1, 0, 168.1, 143.9 );--バキッ

setEffMoveKey( spep_0 + 186, ctbaki, 168.1, 143.9 , 0 );
setEffMoveKey( spep_0 + 192, ctbaki, 167.4, 167.3 , 0 );
setEffMoveKey( spep_0 + 194, ctbaki, 169.7, 171.2 , 0 );
setEffMoveKey( spep_0 + 196, ctbaki, 166.8, 184.7 , 0 );
setEffMoveKey( spep_0 + 198, ctbaki, 168.9, 182.9 , 0 );
setEffMoveKey( spep_0 + 200, ctbaki, 163.6, 200 , 0 );
setEffMoveKey( spep_0 + 202, ctbaki, 172.9, 199.6 , 0 );
setEffMoveKey( spep_0 + 204, ctbaki, 167.4, 200.2 , 0 );
--setEffMoveKey( spep_0 + 206, ctbaki, 175, 208.3 , 0 );
--setEffMoveKey( spep_0 + 208, ctbaki, 178.2, 209.9 , 0 );

setEffScaleKey( spep_0 + 186, ctbaki, 1.25, 1.25 );
setEffScaleKey( spep_0 + 192, ctbaki, 1.33, 1.33 );
setEffScaleKey( spep_0 + 194, ctbaki, 1.35, 1.35 );
setEffScaleKey( spep_0 + 196, ctbaki, 1.4, 1.4 );
setEffScaleKey( spep_0 + 198, ctbaki, 1.45, 1.45 );
setEffScaleKey( spep_0 + 200, ctbaki, 1.48, 1.48 );
setEffScaleKey( spep_0 + 202, ctbaki, 1.49, 1.49 );
setEffScaleKey( spep_0 + 204, ctbaki, 1.5, 1.5 );
--setEffScaleKey( spep_0 + 206, ctbaki, 1.7, 1.7 );
--setEffScaleKey( spep_0 + 208, ctbaki, 1.76, 1.76 );

setEffRotateKey( spep_0 + 186, ctbaki, -8.6 );
setEffRotateKey( spep_0 + 204, ctbaki, -8.6 );

setEffAlphaKey( spep_0 + 186, ctbaki, 0 );
setEffAlphaKey( spep_0 + 187, ctbaki, 255 );
setEffAlphaKey( spep_0 + 188, ctbaki, 255 );
setEffAlphaKey( spep_0 + 200, ctbaki, 255 );
setEffAlphaKey( spep_0 + 202, ctbaki, 64 );
setEffAlphaKey( spep_0 + 204, ctbaki, 0 );

setEffShake(spep_0 + 186,ctbaki,18,15);

-- ** エフェクト等 ** --
entryFade(spep_0,0,0,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_0+28,4,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_0+118,0,2,4,fcolor_r,fcolor_g,fcolor_b,200);     -- white fade
entryFade(spep_0+186,0,2,4,fcolor_r,fcolor_g,fcolor_b,200);     -- white fade

--SE
playSe( spep_0+12, 43); --瞬間移動
playSe( spep_0+52, 43); --瞬間移動
playSe( spep_0+70, 1010); --強蹴り
playSe( spep_0+100, 1018); --移動
--playSe( spep_0+118, 1018); --移動
playSe( spep_0+186, 1011); --叩き落とし

spep_1=spep_0+206;

--------------------------------------
--吹っ飛び
--------------------------------------
--エフェクトの再生
jump=entryEffectLife(spep_1,SP_03x,128,0x100,-1,0,0,0);

setEffMoveKey(spep_1,jump,0,0,0);
setEffMoveKey(spep_1+128,jump,0,0,0);

setEffScaleKey(spep_1,jump,1.0,1.0);
setEffScaleKey(spep_1+128,jump,1.0,1.0);

setEffAlphaKey(spep_1,jump,255);
setEffAlphaKey(spep_1+128,jump,255);

setEffRotateKey(spep_1,jump,0);
setEffRotateKey(spep_1+128,jump,0);

--敵の動き
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 20, 1, 0 );
changeAnime( spep_1 + 0, 1, 106 );

---------------------------------------------------------
--setMoveKey( spep_1 + 0, 1, -232.2, 650 , 0 );
setMoveKey( spep_1 + 0, 1, -202.8, 541 , 0 );
setMoveKey( spep_1 + 2, 1, -173.5, 432.1 , 0 );
setMoveKey( spep_1 + 4, 1, -144.1, 323.1 , 0 );
setMoveKey( spep_1 + 6, 1, -114.8, 214.1 , 0 );
setMoveKey( spep_1 + 8, 1, -85.4, 105.1 , 0 );
setMoveKey( spep_1 + 10, 1, -56, -3.8 , 0 );
setMoveKey( spep_1 + 12, 1, -26.7, -112.8 , 0 );
setMoveKey( spep_1 + 14, 1, 2.7, -221.8 , 0 );
setMoveKey( spep_1 + 17, 1, 32, -330.8 , 0 );
setMoveKey( spep_1 + 18, 1, 32, -330.8 , 0 );
setMoveKey( spep_1 + 20, 1, 32, -330.8 , 0 );
---------------------------------------------------------

setScaleKey( spep_1 + 0, 1, 0.2, 0.2 );
setScaleKey( spep_1 + 20, 1, 0.2, 0.2 );

setRotateKey( spep_1 + 0, 1, 99.6 );
setRotateKey( spep_1 + 19, 1, 99.6 );
setRotateKey( spep_1 + 20, 1, 99.6 );

--文字エントリー
ctdon = entryEffectLife( spep_1 + 18,  10019, 24, 0x100, -1, 0, -57.6, 44.5 );--ドンッ

setEffMoveKey( spep_1 + 18, ctdon, -57.6, 44.5 , 0 );
setEffMoveKey( spep_1 + 22, ctdon, -59.1, 87 , 0 );
setEffMoveKey( spep_1 + 24, ctdon, -41.5, 120.9 , 0 );
setEffMoveKey( spep_1 + 26, ctdon, -48, 131.4 , 0 );
setEffMoveKey( spep_1 + 28, ctdon, -38.2, 121.2 , 0 );
setEffMoveKey( spep_1 + 30, ctdon, -49.9, 124.3 , 0 );
setEffMoveKey( spep_1 + 32, ctdon, -41.7, 130.7 , 0 );
setEffMoveKey( spep_1 + 34, ctdon, -49.6, 125.6 , 0 );
setEffMoveKey( spep_1 + 36, ctdon, -41.3, 131.9 , 0 );
setEffMoveKey( spep_1 + 38, ctdon, -44.2, 120.3 , 0 );
setEffMoveKey( spep_1 + 40, ctdon, -44.1, 120.8 , 0 );

setEffScaleKey( spep_1 + 18, ctdon, 1.28, 1.28 );
setEffScaleKey( spep_1 + 22, ctdon, 1.62, 1.62 );
setEffScaleKey( spep_1 + 24, ctdon, 1.97, 1.97 );
setEffScaleKey( spep_1 + 26, ctdon, 1.98, 1.98 );
setEffScaleKey( spep_1 + 28, ctdon, 1.99, 1.99 );
setEffScaleKey( spep_1 + 30, ctdon, 2.01, 2.01 );
setEffScaleKey( spep_1 + 32, ctdon, 2.02, 2.02 );
setEffScaleKey( spep_1 + 34, ctdon, 2.03, 2.03 );
setEffScaleKey( spep_1 + 36, ctdon, 2.04, 2.04 );
setEffScaleKey( spep_1 + 38, ctdon, 2.05, 2.05 );
setEffScaleKey( spep_1 + 40, ctdon, 2.06, 2.06 );

setEffRotateKey( spep_1 + 18, ctdon, 14.2 );
setEffRotateKey( spep_1 + 22, ctdon, 14.7 );
setEffRotateKey( spep_1 + 24, ctdon, 15.2 );

setEffAlphaKey( spep_1 + 18, ctdon, 0 );
setEffAlphaKey( spep_1 + 19, ctdon, 255 );
setEffAlphaKey( spep_1 + 20, ctdon, 255 );
setEffAlphaKey( spep_1 + 30, ctdon, 255 );
setEffAlphaKey( spep_1 + 32, ctdon, 170 );
setEffAlphaKey( spep_1 + 34, ctdon, 85 );
setEffAlphaKey( spep_1 + 40, ctdon, 0 );


--文字エントリー
dogon = entryEffectLife( spep_1 + 76,  10018, 52, 0x100, -1, 0, 6.8, 157.8 );--ドゴォンッ

setEffMoveKey( spep_1 + 76, dogon, 6.8, 157.8 , 0 );
setEffMoveKey( spep_1 + 82, dogon, 8.1, 225.9 , 0 );
setEffMoveKey( spep_1 + 84, dogon, 12.7, 255.5 , 0 );
setEffMoveKey( spep_1 + 86, dogon, 9.3, 257.7 , 0 );
setEffMoveKey( spep_1 + 88, dogon, 12.8, 274.8 , 0 );
setEffMoveKey( spep_1 + 90, dogon, 13.9, 274.2 , 0 );
setEffMoveKey( spep_1 + 92, dogon, 8.1, 285 , 0 );
setEffMoveKey( spep_1 + 94, dogon, 17, 290.4 , 0 );
setEffMoveKey( spep_1 + 96, dogon, 8.7, 293.3 , 0 );
setEffMoveKey( spep_1 + 98, dogon, 12.2, 302.2 , 0 );
setEffMoveKey( spep_1 + 100, dogon, 8.6, 301.5 , 0 );
setEffMoveKey( spep_1 + 102, dogon, 12.4, 316.7 , 0 );
setEffMoveKey( spep_1 + 104, dogon, 13.6, 313.1 , 0 );
setEffMoveKey( spep_1 + 106, dogon, 7.5, 321.6 , 0 );
setEffMoveKey( spep_1 + 108, dogon, 16.9, 324.4 , 0 );
setEffMoveKey( spep_1 + 110, dogon, 8.2, 324.7 , 0 );
setEffMoveKey( spep_1 + 112, dogon, 11.9, 331.2 , 0 );
setEffMoveKey( spep_1 + 114, dogon, 8.2, 327.7 , 0 );
setEffMoveKey( spep_1 + 116, dogon, 12.2, 340.9 , 0 );
setEffMoveKey( spep_1 + 118, dogon, 13.5, 334.4 , 0 );
setEffMoveKey( spep_1 + 120, dogon, 7.2, 340.6 , 0 );
setEffMoveKey( spep_1 + 122, dogon, 16.9, 340.8 , 0 );
setEffMoveKey( spep_1 + 124, dogon, 8, 338.5 , 0 );
setEffMoveKey( spep_1 + 126, dogon, 11.8, 342.6 , 0 );
--setEffMoveKey( spep_1 + 128, dogon, 11.8, 342.7 , 0 );

setEffScaleKey( spep_1 + 76, dogon, 2.61, 2.61 );
setEffScaleKey( spep_1 + 82, dogon, 3.2, 3.2 );
setEffScaleKey( spep_1 + 84, dogon, 3.39, 3.39 );
setEffScaleKey( spep_1 + 86, dogon, 3.43, 3.43 );
setEffScaleKey( spep_1 + 88, dogon, 3.48, 3.48 );
setEffScaleKey( spep_1 + 90, dogon, 3.52, 3.52 );
setEffScaleKey( spep_1 + 92, dogon, 3.56, 3.56 );
setEffScaleKey( spep_1 + 94, dogon, 3.59, 3.59 );
setEffScaleKey( spep_1 + 96, dogon, 3.63, 3.63 );
setEffScaleKey( spep_1 + 98, dogon, 3.66, 3.66 );
setEffScaleKey( spep_1 + 100, dogon, 3.69, 3.69 );
setEffScaleKey( spep_1 + 102, dogon, 3.72, 3.72 );
setEffScaleKey( spep_1 + 104, dogon, 3.74, 3.74 );
setEffScaleKey( spep_1 + 106, dogon, 3.77, 3.77 );
setEffScaleKey( spep_1 + 108, dogon, 3.79, 3.79 );
setEffScaleKey( spep_1 + 110, dogon, 3.81, 3.81 );
setEffScaleKey( spep_1 + 112, dogon, 3.82, 3.82 );
setEffScaleKey( spep_1 + 114, dogon, 3.84, 3.84 );
setEffScaleKey( spep_1 + 116, dogon, 3.85, 3.85 );
setEffScaleKey( spep_1 + 118, dogon, 3.86, 3.86 );
setEffScaleKey( spep_1 + 120, dogon, 3.87, 3.87 );
setEffScaleKey( spep_1 + 122, dogon, 3.88, 3.88 );
setEffScaleKey( spep_1 + 124, dogon, 3.89, 3.89 );
setEffScaleKey( spep_1 + 126, dogon, 3.89, 3.89 );

setEffRotateKey( spep_1 + 76, dogon, -0.9 );
setEffRotateKey( spep_1 + 126, dogon, -0.9 );

setEffAlphaKey( spep_1 + 76, dogon, 0 );
setEffAlphaKey( spep_1 + 77, dogon, 255 );
setEffAlphaKey( spep_1 + 78, dogon, 255 );
setEffAlphaKey( spep_1 + 126, dogon, 255 );


--SE
playSe( spep_1+20, 1023); --爆発
playSe( spep_1+80, 1024); --大爆発


--黒背景
entryFadeBg(spep_1, 0, 128, 0, 0, 0, 0, 200);  -- 黒　背

-- ** エフェクト等 ** --
entryFade(spep_1+128,0,2,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_2=spep_1+128;

--------------------------------------
--溜め
--------------------------------------
--エフェクトの再生
tame=entryEffectLife(spep_2,SP_04x,114,0x100,-1,0,0,0);

setEffMoveKey(spep_2,tame,0,0,0);
setEffMoveKey(spep_2+114,tame,0,0,0);

setEffScaleKey(spep_2,tame,-1.0,1.0);
setEffScaleKey(spep_2+114,tame,-1.0,1.0);

setEffAlphaKey(spep_2,tame,255);
setEffAlphaKey(spep_2+114,tame,255);

setEffRotateKey(spep_2,tame,0);
setEffRotateKey(spep_2+114,tame,0);

--顔カットイン
--speff=entryEffect(spep_2+30,1504,0x100,-1,0,0,0);  --カットイン(顔)
--setEffReplaceTexture(speff,3,2);  --カットイン差し替え
--speff1=entryEffect(spep_2+30,1505,0x100,-1,0,0,0);  --カットイン(セリフ)
--setEffReplaceTexture(speff1,4,5);  --セリフカットイン差し替え

--文字エントリー
ctgogo=entryEffectLife(spep_2+44,190006,70,0x100,-1,-10,520);--ゴゴゴ
setEffMoveKey(spep_2+44,ctgogo,-10,520,0);
setEffMoveKey(spep_2+114,ctgogo,-10,520,0);
setEffScaleKey(spep_2+44, ctgogo, -0.7, 0.7);
setEffScaleKey(spep_2+114, ctgogo, -0.7, 0.7);

--集中線
shuthuse=entryEffectLife(spep_2,906,114,0x100,-1,0,0,0);

setEffMoveKey(spep_2,shuthuse,0,0,0);
setEffMoveKey(spep_2+114,shuthuse,0,0,0);

setEffScaleKey(spep_2,shuthuse,1.4,1.4);
setEffScaleKey(spep_2+114,shuthuse,1.4,1.4);

setEffAlphaKey(spep_2,shuthuse,0);
setEffAlphaKey(spep_2+42,shuthuse,0);
setEffAlphaKey(spep_2+43,shuthuse,0);
setEffAlphaKey(spep_2+44,shuthuse,255);
setEffAlphaKey(spep_2+114,shuthuse,255);

setEffRotateKey(spep_2,shuthuse,0);
setEffRotateKey(spep_2+114,shuthuse,0);

--SE
playSe( spep_2+44, SE_04); --ゴゴゴ

--黒背景
entryFadeBg(spep_2, 0, 114, 0, 0, 0, 0, 200);  -- 黒　背

-- ** エフェクト等 ** --
entryFade(spep_2+108,6,2,0,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

spep_3=spep_2+114;

--------------------------------------
--カードカットイン(90F)
--------------------------------------

playSe(spep_3,SE_05);
shuchusen=entryEffectLife(spep_3,906,90,0x100,-1,0,0,0);   -- 集中線
setEffScaleKey(spep_3,shuchusen,1.6,1.6);

speff2=entryEffect(spep_3,1507,0x80,-1,0,0,0);   -- カード
setEffReplaceTexture(speff2,1,1);
setEffReplaceTexture(speff2,2,0);-- カード差し替え
setEffReplaceTexture(speff2,5,4);-- 技名テクスチャ差し替え

-- ** エフェクト等 ** --
entryFade(spep_3+85,3,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_4=spep_3+90;
--------------------------------------
--発射
--------------------------------------
--エフェクトの再生
--エフェクトの再生
firing=entryEffectLife(spep_4,SP_05x,196,0x100,-1,0,0,0);

setEffMoveKey(spep_4,firing,0,0,0);
setEffMoveKey(spep_4+196,firing,0,0,0);

setEffScaleKey(spep_4,firing,1.0,1.0);
setEffScaleKey(spep_4+196,firing,1.0,1.0);

setEffAlphaKey(spep_4,firing,255);
setEffAlphaKey(spep_4+195,firing,255);
--setEffAlphaKey(spep_4+192,firing,0);
--setEffAlphaKey(spep_4+194,firing,0);
setEffAlphaKey(spep_4+196,firing,0);

setEffRotateKey(spep_4,firing,0);
setEffRotateKey(spep_4+196,firing,0);

--集中線
shuthuse2 = entryEffectLife( spep_4 + 0,  906, 78, 0x100, -1, 0, 293.1, -0.2 );

setEffMoveKey( spep_4 + 0, shuthuse2, 0, -0.2 , 0 );
setEffMoveKey( spep_4 + 24, shuthuse2, 0, -0.2 , 0 );
setEffMoveKey( spep_4 + 26, shuthuse2, 0, -0.2 , 0 );
setEffMoveKey( spep_4 + 28, shuthuse2, 0, -0.2 , 0 );
setEffMoveKey( spep_4 + 30, shuthuse2, 0, 178 , 0 );
setEffMoveKey( spep_4 + 32, shuthuse2, -222.8, 237.3 , 0 );
setEffMoveKey( spep_4 + 34, shuthuse2, -205.2, 296.7 , 0 );
setEffMoveKey( spep_4 + 36, shuthuse2, -187.6, 356.1 , 0 );
setEffMoveKey( spep_4 + 38, shuthuse2, -185.9, 355.3 , 0 );
setEffMoveKey( spep_4 + 40, shuthuse2, -184.1, 354.6 , 0 );
setEffMoveKey( spep_4 + 42, shuthuse2, -182.4, 353.8 , 0 );
setEffMoveKey( spep_4 + 44, shuthuse2, -180.6, 353.1 , 0 );
setEffMoveKey( spep_4 + 46, shuthuse2, -178.9, 352.3 , 0 );
setEffMoveKey( spep_4 + 48, shuthuse2, -177.1, 351.6 , 0 );
setEffMoveKey( spep_4 + 50, shuthuse2, -175.4, 350.8 , 0 );
setEffMoveKey( spep_4 + 52, shuthuse2, -173.6, 350.1 , 0 );
setEffMoveKey( spep_4 + 54, shuthuse2, -171.9, 349.3 , 0 );
setEffMoveKey( spep_4 + 56, shuthuse2, -170.1, 348.6 , 0 );
setEffMoveKey( spep_4 + 58, shuthuse2, -168.4, 347.8 , 0 );
setEffMoveKey( spep_4 + 60, shuthuse2, -166.6, 347.1 , 0 );
setEffMoveKey( spep_4 + 62, shuthuse2, -164.9, 346.3 , 0 );
setEffMoveKey( spep_4 + 64, shuthuse2, -163.1, 345.6 , 0 );
setEffMoveKey( spep_4 + 66, shuthuse2, -161.4, 344.8 , 0 );
setEffMoveKey( spep_4 + 68, shuthuse2, -159.6, 344.1 , 0 );
setEffMoveKey( spep_4 + 70, shuthuse2, -187.6, 348.9 , 0 );
setEffMoveKey( spep_4 + 72, shuthuse2, -215.6, 353.7 , 0 );
setEffMoveKey( spep_4 + 74, shuthuse2, -243.6, 358.5 , 0 );
setEffMoveKey( spep_4 + 76, shuthuse2, -271.6, 363.3 , 0 );
setEffMoveKey( spep_4 + 78, shuthuse2, -299.6, 368.1 , 0 );
--setEffMoveKey( spep_4 + 80, shuthuse2, -299.6, 368.1 , 0 );

setEffScaleKey( spep_4 + 0, shuthuse2, 1.36, 1.38 );
setEffScaleKey( spep_4 + 24, shuthuse2, 1.36, 1.38 );
setEffScaleKey( spep_4 + 26, shuthuse2, 1.35, 1.42 );
setEffScaleKey( spep_4 + 28, shuthuse2, 1.35, 1.47 );
setEffScaleKey( spep_4 + 30, shuthuse2, 1.34, 1.52 );
setEffScaleKey( spep_4 + 32, shuthuse2, 1.34, 1.57 );
setEffScaleKey( spep_4 + 34, shuthuse2, 1.33, 1.61 );
setEffScaleKey( spep_4 + 36, shuthuse2, 1.33, 1.66 );
setEffScaleKey( spep_4 + 78, shuthuse2, 1.33, 1.66 );

setEffRotateKey( spep_4 + 0, shuthuse2, 0 );
setEffRotateKey( spep_4 + 78, shuthuse2, 0 );

setEffAlphaKey( spep_4 + 0, shuthuse2, 255 );
setEffAlphaKey( spep_4 + 78, shuthuse2, 255 );

--流線
ryusen2 = entryEffectLife( spep_4 + 136,  921, 60, 0x80, -1, 0, -309.2, 299.7 );
setEffMoveKey( spep_4 + 136, ryusen2, 96, 138.1  , 0 );
setEffMoveKey( spep_4 + 196, ryusen2, 96, 138.1  , 0 );

setEffScaleKey( spep_4 + 136, ryusen2,  1.4, 1.7 );
setEffScaleKey( spep_4 + 196, ryusen2,  1.4, 1.7 );
-----------------------------------------------------------------------
setEffRotateKey( spep_4 + 136, ryusen2, -139.4 );
setEffRotateKey( spep_4 + 196, ryusen2, -139.4 );
-----------------------------------------------------------------------
setEffAlphaKey( spep_4 + 136, ryusen2, 255 );
setEffAlphaKey( spep_4 + 194, ryusen2, 255 );
--setEffAlphaKey( spep_4 + 195, ryusen2, 0 );
setEffAlphaKey( spep_4 + 196, ryusen2, 0 );


--文字エントリー
ctba = entryEffectLife( spep_4 + 26,  10022, 22, 0x100, -1, 0, 163.2, 348.6 );--バッ
setEffMoveKey( spep_4 + 26, ctba, 163.2, 348.6 , 0 );
setEffMoveKey( spep_4 + 28, ctba, 175.2, 382 , 0 );
setEffMoveKey( spep_4 + 30, ctba, 179.2, 393.1 , 0 );
setEffMoveKey( spep_4 + 32, ctba, 179.4, 393.5 , 0 );
setEffMoveKey( spep_4 + 34, ctba, 179.5, 393.9 , 0 );
setEffMoveKey( spep_4 + 36, ctba, 179.7, 394.3 , 0 );
setEffMoveKey( spep_4 + 38, ctba, 179.8, 394.7 , 0 );
setEffMoveKey( spep_4 + 40, ctba, 180, 395.1 , 0 );
setEffMoveKey( spep_4 + 42, ctba, 180.1, 395.4 , 0 );
setEffMoveKey( spep_4 + 44, ctba, 181.5, 399.1 , 0 );
setEffMoveKey( spep_4 + 46, ctba, 185.4, 410.1 , 0 );
setEffMoveKey( spep_4 + 48, ctba, 192.1, 428.4 , 0 );

setEffScaleKey( spep_4 + 26, ctba, 1.11, 1.11 );
setEffScaleKey( spep_4 + 28, ctba, 1.25, 1.25 );
setEffScaleKey( spep_4 + 32, ctba, 1.3, 1.3 );
setEffScaleKey( spep_4 + 34, ctba, 1.3, 1.3 );
setEffScaleKey( spep_4 + 38, ctba, 1.31, 1.31 );
setEffScaleKey( spep_4 + 42, ctba, 1.31, 1.31 );
setEffScaleKey( spep_4 + 44, ctba, 1.33, 1.33 );
setEffScaleKey( spep_4 + 46, ctba, 1.37, 1.37 );
setEffScaleKey( spep_4 + 48, ctba, 1.45, 1.45 );

setEffRotateKey( spep_4 + 26, ctba, 22.2 );
setEffRotateKey( spep_4 + 48, ctba, 22.2 );

setEffAlphaKey( spep_4 + 26, ctba, 0 );
setEffAlphaKey( spep_4 + 27, ctba, 255 );
setEffAlphaKey( spep_4 + 28, ctba, 255 );
setEffAlphaKey( spep_4 + 40, ctba, 255 );
setEffAlphaKey( spep_4 + 42, ctba, 227 );
setEffAlphaKey( spep_4 + 46, ctba, 142 );
setEffAlphaKey( spep_4 + 48, ctba, 0 );

--文字エントリー
ctzopi = entryEffectLife( spep_4 + 86,  10033, 50, 0x100, -1, 0, -40.2, 32.9 );--ズォビッ
setEffMoveKey( spep_4 + 86, ctzopi, -40.2, 32.9 , 0 );
setEffMoveKey( spep_4 + 92, ctzopi, -38, 44.7 , 0 );
setEffMoveKey( spep_4 + 94, ctzopi, -35.9, 50 , 0 );
setEffMoveKey( spep_4 + 96, ctzopi, -35.9, 50.1 , 0 );
setEffMoveKey( spep_4 + 98, ctzopi, -36.8, 54.1 , 0 );
setEffMoveKey( spep_4 + 100, ctzopi, -36.2, 52.7 , 0 );
setEffMoveKey( spep_4 + 102, ctzopi, -38.3, 54.1 , 0 );
setEffMoveKey( spep_4 + 104, ctzopi, -38.3, 58 , 0 );
setEffMoveKey( spep_4 + 106, ctzopi, -40.2, 58.1 , 0 );
setEffMoveKey( spep_4 + 108, ctzopi, -42.6, 63 , 0 );
setEffMoveKey( spep_4 + 110, ctzopi, -42.4, 62.7 , 0 );
setEffMoveKey( spep_4 + 112, ctzopi, -45.6, 64.6 , 0 );
setEffMoveKey( spep_4 + 114, ctzopi, -44.2, 67.9 , 0 );
setEffMoveKey( spep_4 + 116, ctzopi, -46.7, 67 , 0 );
setEffMoveKey( spep_4 + 118, ctzopi, -45.7, 69.3 , 0 );
setEffMoveKey( spep_4 + 120, ctzopi, -49.5, 70.5 , 0 );
setEffMoveKey( spep_4 + 122, ctzopi, -47.4, 71 , 0 );
setEffMoveKey( spep_4 + 124, ctzopi, -50.3, 72.7 , 0 );
setEffMoveKey( spep_4 + 126, ctzopi, -48.4, 74.4 , 0 );
setEffMoveKey( spep_4 + 128, ctzopi, -52.2, 75.1 , 0 );
setEffMoveKey( spep_4 + 130, ctzopi, -48.7, 75.5 , 0 );
setEffMoveKey( spep_4 + 132, ctzopi, -52.5, 76.3 , 0 );
setEffMoveKey( spep_4 + 134, ctzopi, -49, 74.6 , 0 );
setEffMoveKey( spep_4 + 136, ctzopi, -51.4, 77.9 , 0 );
--setEffMoveKey( spep_4 + 138, ctzopi, -51.3, 75.8 , 0 );

setEffScaleKey( spep_4 + 86, ctzopi, 0.83, 0.83 );
setEffScaleKey( spep_4 + 92, ctzopi, 1.47, 1.47 );
setEffScaleKey( spep_4 + 94, ctzopi, 1.68, 1.68 );
setEffScaleKey( spep_4 + 96, ctzopi, 1.78, 1.78 );
setEffScaleKey( spep_4 + 98, ctzopi, 1.84, 1.84 );
setEffScaleKey( spep_4 + 100, ctzopi, 1.85, 1.85 );
setEffScaleKey( spep_4 + 102, ctzopi, 1.84, 1.84 );
setEffScaleKey( spep_4 + 104, ctzopi, 1.83, 1.83 );
setEffScaleKey( spep_4 + 106, ctzopi, 1.82, 1.82 );
setEffScaleKey( spep_4 + 108, ctzopi, 1.81, 1.81 );
setEffScaleKey( spep_4 + 110, ctzopi, 1.8, 1.8 );
setEffScaleKey( spep_4 + 112, ctzopi, 1.8, 1.8 );
setEffScaleKey( spep_4 + 114, ctzopi, 1.79, 1.79 );
setEffScaleKey( spep_4 + 116, ctzopi, 1.78, 1.78 );
setEffScaleKey( spep_4 + 118, ctzopi, 1.78, 1.78 );
setEffScaleKey( spep_4 + 120, ctzopi, 1.77, 1.77 );
setEffScaleKey( spep_4 + 122, ctzopi, 1.77, 1.77 );
setEffScaleKey( spep_4 + 124, ctzopi, 1.76, 1.76 );
setEffScaleKey( spep_4 + 128, ctzopi, 1.76, 1.76 );
setEffScaleKey( spep_4 + 136, ctzopi, 1.75, 1.75 );

setEffRotateKey( spep_4 + 86, ctzopi, 70.4 );
setEffRotateKey( spep_4 + 136, ctzopi, 70.4 );

setEffAlphaKey( spep_4 + 86, ctzopi, 255 );
setEffAlphaKey( spep_4 + 136, ctzopi, 255 );

setEffShake(spep_4 + 86,ctzopi,59,15);

--文字エントリー
ctgyarururu = entryEffectLife( spep_4 + 140,  10030, 56, 0x100, -1, 0, 56.2, 310.4 );--ギャルルル…
setEffMoveKey( spep_4 + 140, ctgyarururu, 56.2, 310.4 , 0 );
setEffMoveKey( spep_4 + 142, ctgyarururu, 63.6, 294.6 , 0 );
setEffMoveKey( spep_4 + 144, ctgyarururu, 76.2, 287.6 , 0 );
setEffMoveKey( spep_4 + 146, ctgyarururu, 75.1, 282.7 , 0 );
setEffMoveKey( spep_4 + 148, ctgyarururu, 86.9, 275.4 , 0 );
setEffMoveKey( spep_4 + 150, ctgyarururu, 82.1, 274 , 0 );
setEffMoveKey( spep_4 + 152, ctgyarururu, 79.9, 269.7 , 0 );
setEffMoveKey( spep_4 + 154, ctgyarururu, 87.5, 273.6 , 0 );
setEffMoveKey( spep_4 + 156, ctgyarururu, 80.8, 275.7 , 0 );
setEffMoveKey( spep_4 + 158, ctgyarururu, 90.6, 272 , 0 );
setEffMoveKey( spep_4 + 160, ctgyarururu, 80.8, 267.4 , 0 );
setEffMoveKey( spep_4 + 162, ctgyarururu, 89.1, 269.7 , 0 );
setEffMoveKey( spep_4 + 164, ctgyarururu, 81.7, 273.7 , 0 );
setEffMoveKey( spep_4 + 166, ctgyarururu, 90.3, 270 , 0 );
setEffMoveKey( spep_4 + 168, ctgyarururu, 83.8, 270.2 , 0 );
setEffMoveKey( spep_4 + 170, ctgyarururu, 93.2, 270.7 , 0 );
setEffMoveKey( spep_4 + 172, ctgyarururu, 84.1, 266.3 , 0 );
setEffMoveKey( spep_4 + 174, ctgyarururu, 89.9, 272.3 , 0 );
setEffMoveKey( spep_4 + 176, ctgyarururu, 94.2, 263.9 , 0 );
setEffMoveKey( spep_4 + 178, ctgyarururu, 89.2, 271.7 , 0 );
setEffMoveKey( spep_4 + 180, ctgyarururu, 89.5, 260.6 , 0 );
setEffMoveKey( spep_4 + 182, ctgyarururu, 92.1, 266.1 , 0 );
setEffMoveKey( spep_4 + 184, ctgyarururu, 89.1, 262.1 , 0 );
setEffMoveKey( spep_4 + 186, ctgyarururu, 96.4, 266.7 , 0 );
setEffMoveKey( spep_4 + 188, ctgyarururu, 88.8, 269.4 , 0 );
setEffMoveKey( spep_4 + 190, ctgyarururu, 98.4, 266.1 , 0 );
setEffMoveKey( spep_4 + 192, ctgyarururu, 87.5, 261.8 , 0 );
setEffMoveKey( spep_4 + 194, ctgyarururu, 95.4, 264.7 , 0 );
setEffMoveKey( spep_4 + 196, ctgyarururu, 87.1, 269.4 , 0 );

setEffScaleKey( spep_4 + 140, ctgyarururu, 1.63, 1.63 );
setEffScaleKey( spep_4 + 142, ctgyarururu, 2.17, 2.17 );
setEffScaleKey( spep_4 + 144, ctgyarururu, 2.6, 2.6 );
setEffScaleKey( spep_4 + 146, ctgyarururu, 2.9, 2.9 );
setEffScaleKey( spep_4 + 148, ctgyarururu, 3.08, 3.08 );
setEffScaleKey( spep_4 + 150, ctgyarururu, 3.14, 3.14 );
setEffScaleKey( spep_4 + 152, ctgyarururu, 3.15, 3.15 );
setEffScaleKey( spep_4 + 154, ctgyarururu, 3.16, 3.16 );
setEffScaleKey( spep_4 + 156, ctgyarururu, 3.17, 3.17 );
setEffScaleKey( spep_4 + 158, ctgyarururu, 3.18, 3.18 );
setEffScaleKey( spep_4 + 160, ctgyarururu, 3.19, 3.19 );
setEffScaleKey( spep_4 + 162, ctgyarururu, 3.2, 3.2 );
setEffScaleKey( spep_4 + 164, ctgyarururu, 3.21, 3.21 );
setEffScaleKey( spep_4 + 166, ctgyarururu, 3.23, 3.23 );
setEffScaleKey( spep_4 + 168, ctgyarururu, 3.24, 3.24 );
setEffScaleKey( spep_4 + 170, ctgyarururu, 3.25, 3.25 );
setEffScaleKey( spep_4 + 172, ctgyarururu, 3.26, 3.26 );
setEffScaleKey( spep_4 + 174, ctgyarururu, 3.27, 3.27 );
setEffScaleKey( spep_4 + 176, ctgyarururu, 3.28, 3.28 );
setEffScaleKey( spep_4 + 178, ctgyarururu, 3.29, 3.29 );
setEffScaleKey( spep_4 + 180, ctgyarururu, 3.3, 3.3 );
setEffScaleKey( spep_4 + 182, ctgyarururu, 3.31, 3.31 );
setEffScaleKey( spep_4 + 196, ctgyarururu, 3.31, 3.31 );

setEffRotateKey( spep_4 + 140, ctgyarururu, 0 );
setEffRotateKey( spep_4 + 196, ctgyarururu, 0 );

setEffAlphaKey( spep_4 + 140, ctgyarururu, 255 );
setEffAlphaKey( spep_4 + 194, ctgyarururu, 255 );
setEffAlphaKey( spep_4 + 195, ctgyarururu, 0 );
setEffAlphaKey( spep_4 + 196, ctgyarururu, 0 );

setEffShake(spep_4 + 140,ctgyarururu,56,15);

--SE
playSe( spep_4, 1036);--気だめ
playSe( spep_4+20, 1036); --気だめ
playSe( spep_4+40, 1036); --気だめ
playSe( spep_4+26, 1003); --手をあげる音
playSe( spep_4+60, 1036); --気だめ
playSe( spep_4+78, SE_05); --ビームを撃つ
playSe( spep_4+140, SE_06); --ビームを撃つ

--黒背景
entryFadeBg(spep_4, 0, 196, 0, 0, 0, 0, 210);  -- 黒　背


-- ** エフェクト等 ** --
entryFade(spep_4+130,4,4,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_5=spep_4+196;
--------------------------------------
--被弾
--------------------------------------
--エフェクトの再生(前)
hit_front=entryEffectLife(spep_5,SP_06x,94,0x100,-1,0,0,0);

setEffMoveKey(spep_5,hit_front,0,0,0);
setEffMoveKey(spep_5+94,hit_front,0,0,0);
setEffScaleKey(spep_5,hit_front,1.0,1.0);
setEffScaleKey(spep_5+94,hit_front,1.0,1.0);
setEffAlphaKey(spep_5,hit_front,255);
setEffAlphaKey(spep_5+94,hit_front,255);
setEffRotateKey(spep_5,hit_front,0);
setEffRotateKey(spep_5+94,hit_front,0);

--エフェクトの再生(後)
hit_back=entryEffectLife(spep_5,SP_07x,94,0x80,-1,0,0,0);

setEffMoveKey(spep_5,hit_back,0,0,0);
setEffMoveKey(spep_5+94,hit_back,0,0,0);
setEffScaleKey(spep_5,hit_back,1.0,1.0);
setEffScaleKey(spep_5+94,hit_back,1.0,1.0);
setEffAlphaKey(spep_5,hit_back,255);
setEffAlphaKey(spep_5+94,hit_back,255);
setEffRotateKey(spep_5,hit_back,0);
setEffRotateKey(spep_5+94,hit_back,0);

--敵の動き
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 94, 1, 0 );
changeAnime( spep_5 + 0, 1, 106 );

setMoveKey( spep_5 + 0, 1, 90, -270 , 0 );
setMoveKey( spep_5 + 94, 1,90, -270 , 0 );

setScaleKey( spep_5 + 0, 1,1.6, 1.6 );
setScaleKey( spep_5 + 94, 1,1.6, 1.6 );

setRotateKey( spep_5 + 0, 1, 39 );
setRotateKey( spep_5 + 94, 1, 39 );

--文字エントリー
ctzudodo = entryEffectLife( spep_5 + 20,  10014, 74, 0x100, -1, 0, 17.8, 230.4 );--ズドドドッ
setEffMoveKey( spep_5 + 20, ctzudodo, 17.8, 230.4 , 0 );
setEffMoveKey( spep_5 + 22, ctzudodo, 15.2, 229.4 , 0 );
setEffMoveKey( spep_5 + 24, ctzudodo, 18.9, 234.1 , 0 );
setEffMoveKey( spep_5 + 26, ctzudodo, 17.9, 230.3 , 0 );
setEffMoveKey( spep_5 + 28, ctzudodo, 14.6, 234 , 0 );
setEffMoveKey( spep_5 + 30, ctzudodo, 19, 244 , 0 );
setEffMoveKey( spep_5 + 32, ctzudodo, 19.3, 241.9 , 0 );
setEffMoveKey( spep_5 + 34, ctzudodo, 17.5, 253.6 , 0 );
setEffMoveKey( spep_5 + 36, ctzudodo, 15.7, 250.3 , 0 );
setEffMoveKey( spep_5 + 38, ctzudodo, 17.7, 262.6 , 0 );
setEffMoveKey( spep_5 + 40, ctzudodo, 22.4, 258.9 , 0 );
setEffMoveKey( spep_5 + 42, ctzudodo, 14.3, 269.6 , 0 );
setEffMoveKey( spep_5 + 44, ctzudodo, 21.5, 264.2 , 0 );
setEffMoveKey( spep_5 + 46, ctzudodo, 16.7, 277.7 , 0 );
setEffMoveKey( spep_5 + 48, ctzudodo, 13.6, 270.7 , 0 );
setEffMoveKey( spep_5 + 50, ctzudodo, 18.8, 283.9 , 0 );
setEffMoveKey( spep_5 + 52, ctzudodo, 18.9, 277.8 , 0 );
setEffMoveKey( spep_5 + 54, ctzudodo, 22.4, 291.5 , 0 );
setEffMoveKey( spep_5 + 56, ctzudodo, 19.6, 280.4 , 0 );
setEffMoveKey( spep_5 + 58, ctzudodo, 19.5, 296.5 , 0 );
setEffMoveKey( spep_5 + 60, ctzudodo, 18.6, 286.9 , 0 );
setEffMoveKey( spep_5 + 62, ctzudodo, 12.7, 301.4 , 0 );
setEffMoveKey( spep_5 + 64, ctzudodo, 23, 291.4 , 0 );
setEffMoveKey( spep_5 + 66, ctzudodo, 16.7, 304.7 , 0 );
setEffMoveKey( spep_5 + 68, ctzudodo, 22.9, 297.1 , 0 );
setEffMoveKey( spep_5 + 70, ctzudodo, 11.4, 306 , 0 );
setEffMoveKey( spep_5 + 72, ctzudodo, 26.5, 304.3 , 0 );
setEffMoveKey( spep_5 + 74, ctzudodo, 13, 302.9 , 0 );
setEffMoveKey( spep_5 + 76, ctzudodo, 23.3, 304.4 , 0 );
setEffMoveKey( spep_5 + 78, ctzudodo, 10.8, 303.4 , 0 );
setEffMoveKey( spep_5 + 80, ctzudodo, 19.1, 314.9 , 0 );
setEffMoveKey( spep_5 + 82, ctzudodo, 11, 302.5 , 0 );
setEffMoveKey( spep_5 + 84, ctzudodo, 24.7, 316.8 , 0 );
setEffMoveKey( spep_5 + 86, ctzudodo, 17.9, 310 , 0 );
setEffMoveKey( spep_5 + 88, ctzudodo, 14.6, 309 , 0 );
setEffMoveKey( spep_5 + 90, ctzudodo, 19.1, 316.9 , 0 );
setEffMoveKey( spep_5 + 92, ctzudodo, 11, 303.8 , 0 );
setEffMoveKey( spep_5 + 94, ctzudodo, 24.7, 317.5 , 0 );

setEffScaleKey( spep_5 + 20, ctzudodo, 1.21, 1.21 );
setEffScaleKey( spep_5 + 22, ctzudodo, 1.82, 1.82 );
setEffScaleKey( spep_5 + 24, ctzudodo, 2.19, 2.19 );
setEffScaleKey( spep_5 + 26, ctzudodo, 2.31, 2.31 );
setEffScaleKey( spep_5 + 94, ctzudodo, 2.31, 2.31 );

setEffRotateKey( spep_5 + 20, ctzudodo, -29.9 );
setEffRotateKey( spep_5 + 94, ctzudodo, -29.9 );

setEffAlphaKey( spep_5 + 20, ctzudodo, 255 );
setEffAlphaKey( spep_5 + 94, ctzudodo, 255 );

-- ** エフェクト等 ** --
entryFade(spep_5+16,2,2,2,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_5+92,2,2,10,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--SE
playSe( spep_5, SE_07); --ビームを撃つ
playSe( spep_5+20, 1023); --爆発


--黒背景
entryFadeBg(spep_5, 0, 94, 0, 0, 0, 0, 210);  -- 黒　背

--次の準備
spep_6=spep_5+94;
--------------------------------------
--爆発
--------------------------------------
--エフェクトの再生
explosion=entryEffect(spep_6,1563,0x100,-1,0,0,0);

setEffMoveKey(spep_6,explosion,0,0,0);
setEffMoveKey(spep_6+180,explosion,0,0,0);
setEffScaleKey(spep_6,explosion,1.0,1.0);
setEffScaleKey(spep_6+180,explosion,1.0,1.0);
setEffAlphaKey(spep_6,explosion,255);
setEffAlphaKey(spep_6+180,explosion,255);
setEffRotateKey(spep_6,explosion,0);
setEffRotateKey(spep_6+180,explosion,0);

--集中線
shuthuse3=entryEffectLife(spep_6,906,180,0x100,-1,0,0,0);

setEffMoveKey(spep_6,shuthuse3,0,0,0);
setEffMoveKey(spep_6+180,shuthuse3,0,0,0);
setEffScaleKey(spep_6,shuthuse3,1.3,1.3);
setEffScaleKey(spep_6+180,shuthuse3,1.3,1.3);
setEffAlphaKey(spep_6,shuthuse3,255);
setEffAlphaKey(spep_6+180,shuthuse3,255);
setEffRotateKey(spep_6,shuthuse3,0);
setEffRotateKey(spep_6+180,shuthuse3,0);

--SE
playSe( spep_6, 1024); --大爆発

-- ダメージ表示
dealDamage(spep_6+60);
entryFade( spep_6+160, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_6+170);
end


