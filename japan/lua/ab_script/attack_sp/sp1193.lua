--グレートサイヤマン1号&2号　1013390　ジャスティスバーニング
--sp_effect_b1_00046


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
SP_01=	151981	;--	突進
SP_02=	151982	;--	格闘　前面
SP_03=	151983	;--	格闘　後面
SP_04=	151984	;--	蹴り　前面
SP_05=	151985	;--	蹴り　後面



--敵側は味方側に1xをつけてます
SP_01x=	151981	;--	突進	
SP_02x=	151986	;--	格闘　前面	(敵)
SP_03x=	151987	;--	格闘　後面	(敵)
SP_04x=	151988	;--	蹴り　前面	(敵)
SP_05x=	151985	;--	蹴り　後面	
				





------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

setDisp( 0, 1, 0);
setDisp( 0, 0, 0);
setMoveKey(   0,   0,    0, -2000,   0);
setMoveKey(   0,   1,    32.1, -0.4 , 0);
setMoveKey(   1,   0,    0, -2000,   0);
setMoveKey(   1,   1,    32.1, -0.4 , 0);
setMoveKey(   2,   0,    0, -2000,   0);
setMoveKey(   2,   1,    32.1, -0.4 , 0);
setMoveKey(   3,   0,    0, -2000,   0);
setMoveKey(   3,   1,    32.1, -0.4 , 0);

setScaleKey(   1,   0, 1.6, 1.6);
setScaleKey(   1,   1, 1.6, 1.6);
setRotateKey(   1,   1, 0);
setRotateKey(   1,   0, 0);


multi_frm = 2;

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then
------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 突進
------------------------------------------------------

spep_0=0;



--エフェクトの再生
rush=entryEffectLife(spep_0,SP_01,92,0x100,-1,0,0,0);

setEffMoveKey(spep_0,rush,0,0,0);
setEffMoveKey(spep_0+92,rush,0,0,0);
setEffScaleKey(spep_0,rush,1.0,1.0);
setEffScaleKey(spep_0+92,rush,1.0,1.0);
setEffAlphaKey(spep_0,rush,255);
setEffAlphaKey(spep_0+92,rush,255);
setEffRotateKey(spep_0,rush,0);
setEffRotateKey(spep_0+92,rush,0);

--集中線
shuchusen1 = entryEffectLife( spep_0 ,  906, 92, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 , shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 92, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 , shuchusen1, 1.71, 1.76 );
setEffScaleKey( spep_0 + 92, shuchusen1, 1.71, 1.76 );

setEffRotateKey( spep_0 , shuchusen1, 0 );
setEffRotateKey( spep_0 + 92, shuchusen1, 0 );

setEffAlphaKey( spep_0 , shuchusen1, 0 );
setEffAlphaKey( spep_0+15 , shuchusen1, 0 );
setEffAlphaKey( spep_0+16 , shuchusen1, 255 );
setEffAlphaKey( spep_0 + 92, shuchusen1, 255 );

--顔カットイン
speff=entryEffect(spep_0+3,1504,0x100,-1,0,0,0);  --カットイン(顔)
setEffReplaceTexture(speff,3,2);  --カットイン差し替え
speff1=entryEffect(spep_0+3,1505,0x100,-1,0,0,0);  --カットイン(セリフ)
setEffReplaceTexture(speff1,4,5);  --セリフカットイン差し替え

--文字エントリー
ctgogo=entryEffectLife(spep_0+16,190006,69,0x100,-1,145,500);--ゴゴゴ
setEffMoveKey(spep_0+16,ctgogo,145,500,0);
setEffMoveKey(spep_0+85,ctgogo,145,500,0);
setEffScaleKey(spep_0+16, ctgogo, 0.7, 0.7);
setEffScaleKey(spep_0+85, ctgogo, 0.7, 0.7);


--SE
playSe( spep_0+16, SE_04); --ゴゴゴ


-- ** エフェクト等 ** --
entryFade(spep_0,0,1,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_0+84,4,5,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--黒背景
entryFadeBg(spep_0, 0, 92, 0, 0, 0, 0, 180);  -- 黒　背景

--次の準備
spep_1=spep_0+93;


------------------------------------------------------
-- 格闘
------------------------------------------------------
--エフェクトの再生(前)
fighi_front=entryEffectLife(spep_1,SP_02,482,0x100,-1,0,0,0);

setEffMoveKey(spep_1,fighi_front,0,0,0);
setEffMoveKey(spep_1+482,fighi_front,0,0,0);
setEffScaleKey(spep_1,fighi_front,1.0,1.0);
setEffScaleKey(spep_1+482,fighi_front,1.0,1.0);
setEffAlphaKey(spep_1,fighi_front,255);
setEffAlphaKey(spep_1+482,fighi_front,255);
setEffRotateKey(spep_1,fighi_front,0);
setEffRotateKey(spep_1+482,fighi_front,0);

--流線
ryusen1= entryEffectLife( spep_1 + 15, 914, 35, 0x80, -1, 0, 0, 0 );--横
setEffMoveKey( spep_1 + 15, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_1 + 50, ryusen1, -1334.8, 10.2 , 0 );

setEffScaleKey( spep_1 + 15, ryusen1, 4.3, 1.13 );
setEffScaleKey( spep_1 + 50, ryusen1, 4.3, 1.13 );

setEffRotateKey( spep_1 + 15, ryusen1, 0 );
setEffRotateKey( spep_1 + 50, ryusen1, 0 );

setEffAlphaKey( spep_1 + 15, ryusen1, 150 );
setEffAlphaKey( spep_1 + 50, ryusen1, 150 );


ryusen2 = entryEffectLife( spep_1 ,  921, 118, 0x80, -1, 0, 33.6, -10.9 );

setEffMoveKey( spep_1 , ryusen2, 0,33.6, -10.9 );
setEffMoveKey( spep_1 + 118, ryusen2, 0,33.6, -10.9  );

setEffScaleKey( spep_1 , ryusen2, 1.12, 1.11 );
setEffScaleKey( spep_1 + 118, ryusen2, 1.12, 1.11 );


setEffRotateKey( spep_1 , ryusen2, 0 );
setEffRotateKey( spep_1 + 118, ryusen2, 0 );


setEffAlphaKey( spep_1 , ryusen2, 0 );
setEffAlphaKey( spep_1 + 51, ryusen2, 0 );
setEffAlphaKey( spep_1 + 52, ryusen2, 180 );
setEffAlphaKey( spep_1 + 118, ryusen2, 180 );

ryuusen3 = entryEffectLife( spep_1,  921, 244, 0x80, -1, 491.8, 18.4 , 0 );
setEffMoveKey( spep_1 , ryuusen3, 511.8, 18.4 , 0 );
setEffMoveKey( spep_1 + 244, ryuusen3, 511.8, 18.4 , 0 );

setEffScaleKey( spep_1 , ryuusen3, 1.24, 1.56 );
setEffScaleKey( spep_1 + 189, ryuusen3, 1.24, 1.56 );
setEffScaleKey( spep_1 +190, ryuusen3, 1.64, 1.76 );
setEffScaleKey( spep_1 + 244, ryuusen3, 1.64, 1.76 );

setEffRotateKey( spep_1 , ryuusen3, 95 );
setEffRotateKey( spep_1 + 189, ryuusen3, 95 );
setEffRotateKey( spep_1+190 , ryuusen3, 95 );
setEffRotateKey( spep_1 + 244, ryuusen3, 95 );


setEffAlphaKey( spep_1 , ryuusen3, 0 );
setEffAlphaKey( spep_1 + 118, ryuusen3, 0 );
setEffAlphaKey( spep_1 + 119, ryuusen3, 180 );
setEffAlphaKey( spep_1 + 234, ryuusen3, 180 );
setEffAlphaKey( spep_1 + 236, ryuusen3, 173 );
setEffAlphaKey( spep_1 + 238, ryuusen3, 170 );
setEffAlphaKey( spep_1 + 240, ryuusen3, 100 );
setEffAlphaKey( spep_1 + 242, ryuusen3, 42 );
setEffAlphaKey( spep_1 + 244, ryuusen3, 0 );



ryusen4 = entryEffectLife( spep_1 + 390, 914, 98, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_1 + 390, ryusen4, 0, 0 , 0 );
setEffMoveKey( spep_1 + 488, ryusen4, 0, 0, 0 );

setEffScaleKey( spep_1 + 390, ryusen4, 4.3, 1.13 );
setEffScaleKey( spep_1 + 488, ryusen4, 4.3, 1.13 );

setEffRotateKey( spep_1 + 390, ryusen4, -90 );
setEffRotateKey( spep_1 + 488, ryusen4, -90 );

setEffAlphaKey( spep_1 + 390, ryusen4, 150 );
setEffAlphaKey( spep_1 + 488, ryusen4, 150 );


--エフェクトの再生(後)
fighi_back=entryEffectLife(spep_1,SP_03,490,0x80,-1,0,0,0);

setEffMoveKey(spep_1,fighi_back,0,0,0);
setEffMoveKey(spep_1+490,fighi_back,0,0,0);
setEffScaleKey(spep_1,fighi_back,1.0,1.0);
setEffScaleKey(spep_1+490,fighi_back,1.0,1.0);
setEffAlphaKey(spep_1,fighi_back,255);
setEffAlphaKey(spep_1+490,fighi_back,255);
setEffRotateKey(spep_1,fighi_back,0);
setEffRotateKey(spep_1+490,fighi_back,0);
setEffShake(spep_1+119 ,fighi_back,75,10);---------------------------------------



--集中線
shuchuse2 = entryEffectLife( spep_1 + 238,  906, 116, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_1 + 238, shuchuse2, 0, 0 , 0 );
setEffMoveKey( spep_1 + 354, shuchuse2, 0, 0 , 0 );

setEffScaleKey( spep_1 + 238, shuchuse2, 1.23, 1.24 );
setEffScaleKey( spep_1 + 240, shuchuse2, 1.25, 1.27 );
setEffScaleKey( spep_1 + 242, shuchuse2, 1.27, 1.29 );
setEffScaleKey( spep_1 + 244, shuchuse2, 1.29, 1.31 );
setEffScaleKey( spep_1 + 246, shuchuse2, 1.32, 1.33 );
setEffScaleKey( spep_1 + 248, shuchuse2, 1.34, 1.35 );
setEffScaleKey( spep_1 + 250, shuchuse2, 1.36, 1.38 );
setEffScaleKey( spep_1 + 252, shuchuse2, 1.38, 1.4 );
setEffScaleKey( spep_1 + 254, shuchuse2, 1.4, 1.42 );
setEffScaleKey( spep_1 + 256, shuchuse2, 1.42, 1.44 );
setEffScaleKey( spep_1 + 258, shuchuse2, 1.45, 1.46 );
setEffScaleKey( spep_1 + 260, shuchuse2, 1.47, 1.49 );
setEffScaleKey( spep_1 + 262, shuchuse2, 1.49, 1.51 );
setEffScaleKey( spep_1 + 264, shuchuse2, 1.51, 1.53 );
setEffScaleKey( spep_1 + 266, shuchuse2, 1.53, 1.55 );
setEffScaleKey( spep_1 + 268, shuchuse2, 1.55, 1.57 );
setEffScaleKey( spep_1 + 270, shuchuse2, 1.58, 1.59 );
setEffScaleKey( spep_1 + 272, shuchuse2, 1.6, 1.62 );
setEffScaleKey( spep_1 + 274, shuchuse2, 1.62, 1.64 );
setEffScaleKey( spep_1 + 276, shuchuse2, 1.64, 1.66 );
setEffScaleKey( spep_1 + 278, shuchuse2, 1.66, 1.68 );
setEffScaleKey( spep_1 + 280, shuchuse2, 1.68, 1.7 );
setEffScaleKey( spep_1 + 282, shuchuse2, 1.71, 1.73 );
setEffScaleKey( spep_1 + 284, shuchuse2, 1.73, 1.75 );
setEffScaleKey( spep_1 + 286, shuchuse2, 1.75, 1.77 );
setEffScaleKey( spep_1 + 288, shuchuse2, 1.5, 1.52 );
setEffScaleKey( spep_1 + 290, shuchuse2, 1.25, 1.27 );
setEffScaleKey( spep_1 + 348, shuchuse2, 1.25, 1.27 );
setEffScaleKey( spep_1 + 350, shuchuse2, 1.4, 1.42 );
setEffScaleKey( spep_1 + 352, shuchuse2, 1.56, 1.58 );
setEffScaleKey( spep_1 + 354, shuchuse2, 1.71, 1.73 );

setEffRotateKey( spep_1 + 238, shuchuse2, 0 );
setEffRotateKey( spep_1 + 354, shuchuse2, 0 );

setEffAlphaKey( spep_1 + 238, shuchuse2, 255 );
setEffAlphaKey( spep_1 + 348, shuchuse2, 255 );
setEffAlphaKey( spep_1 + 350, shuchuse2, 170 );
setEffAlphaKey( spep_1 + 352, shuchuse2, 85 );
setEffAlphaKey( spep_1 + 354, shuchuse2, 0 );




--黒背景
entryFadeBg(spep_1, 0, 490, 0, 0, 0, 0, 200);  -- 黒　背景




--敵の動き
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 490, 1, 0 );
changeAnime( spep_1 + 0, 1, 101 );
changeAnime( spep_1 + 15, 1, 108 );
changeAnime( spep_1 + 119, 1, 7 );
changeAnime( spep_1 + 245, 1, 106 );
changeAnime( spep_1 + 320, 1, 8 );
changeAnime( spep_1 + 393,  1, 105 );
changeAnime( spep_1 +  395,  1, 106 );

setMoveKey( spep_1 + 0, 1, 32.1, -0.4 , 0 );
setMoveKey( spep_1 + 10, 1, 32.1, -0.4 , 0 );
setMoveKey( spep_1 + 14, 1, 29.5, -1.9 , 0 );
setMoveKey( spep_1 + 15, 1, 75.1, 17 , 0 );
setMoveKey( spep_1 + 16, 1, 89.4, 13.4 , 0 );
setMoveKey( spep_1 + 18, 1, 86.9, 18.4 , 0 );
setMoveKey( spep_1 + 20, 1, 99, 11.3 , 0 );
setMoveKey( spep_1 + 22, 1, 111.4, 18 , 0 );
setMoveKey( spep_1 + 24, 1, 121.4, 13.7 , 0 );
setMoveKey( spep_1 + 26, 1, 143, 13.7 , 0 );
setMoveKey( spep_1 + 28, 1, 344.5, 17 , 0 );
setMoveKey( spep_1 + 30, 1, 524.8, 20 , 0 );
setMoveKey( spep_1 + 32, 1, 683.9, 22.7 , 0 );
setMoveKey( spep_1 + 34, 1, 821.7, 25 , 0 );
setMoveKey( spep_1 + 36, 1, 938.4, 26.9 , 0 );
setMoveKey( spep_1 + 38, 1, 1033.9, 28.5 , 0 );
setMoveKey( spep_1 + 40, 1, 1108.1, 29.7 , 0 );
setMoveKey( spep_1 + 42, 1, 1161.1, 30.6 , 0 );
setMoveKey( spep_1 + 44, 1, 1192.9, 31.2 , 0 );
setMoveKey( spep_1 + 47, 1, 1203.5, 31.3 , 0 );
setMoveKey( spep_1 + 51, 1, 1203.5, 31.3 , 0 );


setMoveKey( spep_1 + 52, 1, -499, 261.4 , 0 );
--setMoveKey( spep_1 + 54, 1, -538.2, 281.6 , 0 );
--setMoveKey( spep_1 + 56, 1, -527, 280.3 , 0 );
setMoveKey( spep_1 + 58, 1, -477.9, 265.5 , 0 );
setMoveKey( spep_1 + 60, 1, -422.6, 249.4 , 0 );
setMoveKey( spep_1 + 62, 1, -357.5, 230.1 , 0 );
setMoveKey( spep_1 + 64, 1, -217.1, 177.4 , 0 );
setMoveKey( spep_1 + 66, 1, -99.9, 133.1 , 0 );
setMoveKey( spep_1 + 68, 1, -127.2, 145.9 , 0 );
setMoveKey( spep_1 + 70, 1, -88, 128.3 , 0 );
setMoveKey( spep_1 + 72, 1, -124.9, 146.1 , 0 );
setMoveKey( spep_1 + 74, 1, -77.5, 125.3 , 0 );
setMoveKey( spep_1 + 76, 1, -95.9, 135.3 , 0 );
setMoveKey( spep_1 + 78, 1, -74.1, 126.7 , 0 );
setMoveKey( spep_1 + 80, 1, -75.6, 129.5 , 0 );
setMoveKey( spep_1 + 82, 1, -70.7, 129.4 , 0 );
setMoveKey( spep_1 + 84, 1, -74.6, 133.9 , 0 );
setMoveKey( spep_1 + 86, 1, -45.9, 122.6 , 0 );
setMoveKey( spep_1 + 88, 1, -24.9, 114.3 , 0 );
setMoveKey( spep_1 + 90, 1, -56, 131.6 , 0 );
setMoveKey( spep_1 + 92, 1, -44.7, 127.3 , 0 );
setMoveKey( spep_1 + 94, 1, -40.5, 125.8 , 0 );
setMoveKey( spep_1 + 96, 1, -11.9, 111.4 , 0 );
setMoveKey( spep_1 + 98, 1, -38.6, 124.3 , 0 );
setMoveKey( spep_1 + 100, 1, -6.3, 106.3 , 0 );
setMoveKey( spep_1 + 102, 1, -21.9, 111.8 , 0 );
setMoveKey( spep_1 + 104, 1, -29.9, 113.3 , 0 );
setMoveKey( spep_1 + 106, 1, -29.9, 110.7 , 0 );
setMoveKey( spep_1 + 108, 1, -29.6, 108 , 0 );
setMoveKey( spep_1 + 110, 1, -26.6, 103.4 , 0 );
setMoveKey( spep_1 + 112, 1, -18.9, 95 , 0 );
setMoveKey( spep_1 + 115, 1, -7.8, 82.8 , 0 );

setMoveKey( spep_1 + 116, 1, 3.7, 66.6 , 0 );
setMoveKey( spep_1 + 118, 1, 17.7, 43.6 , 0 );
--setMoveKey( spep_1 + 121, 1, 55.3, -3.3 , 0 );
--setMoveKey( spep_1 + 122, 1, 10.6, -81 , 0 );
setMoveKey( spep_1 + 119, 1, -32.6, 9.2 , 0 );
setMoveKey( spep_1 + 124, 1, -32.6, 9.2 , 0 );
setMoveKey( spep_1 + 126, 1, -37.2, 21.4 , 0 );
setMoveKey( spep_1 + 128, 1, -56.9, 40.8 , 0 );
setMoveKey( spep_1 + 130, 1, -88.4, 100.7 , 0 );
setMoveKey( spep_1 + 132, 1, -88.4, 89.5 , 0 );
setMoveKey( spep_1 + 134, 1, -114.5, 121.7 , 0 );
setMoveKey( spep_1 + 136, 1, -156.1, 185.4 , 0 );
setMoveKey( spep_1 + 136, 1, -156.1, 235.4 , 0 );
setMoveKey( spep_1 + 138, 1, -129.5, 137.3 , 0 );
setMoveKey( spep_1 + 140, 1, -117.7, 103 , 0 );
setMoveKey( spep_1 + 142, 1, -65, 14.5 , 0 );
setMoveKey( spep_1 + 144, 1, -83.8, 36.8 , 0 );
setMoveKey( spep_1 + 146, 1, -55.9, -11.9 , 0 );
setMoveKey( spep_1 + 148, 1, -51.9, -18.1 , 0 );
setMoveKey( spep_1 + 150, 1, -49.2, -27.8 , 0 );
setMoveKey( spep_1 + 152, 1, -80.1, 24.7 , 0 );
setMoveKey( spep_1 + 154, 1, -76.8, 12.8 , 0 );
setMoveKey( spep_1 + 156, 1, -74.3, 14.7 , 0 );
setMoveKey( spep_1 + 158, 1, -101.5, 52.9 , 0 );
setMoveKey( spep_1 + 160, 1, -112.9, 75.8 , 0 );
setMoveKey( spep_1 + 162, 1, -119.7, 80.8 , 0 );
setMoveKey( spep_1 + 164, 1, -119, 85.5 , 0 );
setMoveKey( spep_1 + 166, 1, -122, 84.1 , 0 );
setMoveKey( spep_1 + 168, 1, -117.2, 80.7 , 0 );
setMoveKey( spep_1 + 170, 1, -141.6, 115.3 , 0 );
setMoveKey( spep_1 + 172, 1, -155.4, 138.5 , 0 );
setMoveKey( spep_1 + 174, 1, -172.4, 161 , 0 );
setMoveKey( spep_1 + 176, 1, -191.4, 191.9 , 0 );
setMoveKey( spep_1 + 178, 1, -262, 298.6 , 0 );
setMoveKey( spep_1 + 180, 1, -300.3, 359.3 , 0 );
setMoveKey( spep_1 + 182, 1, -344.9, 421.6 , 0 );
setMoveKey( spep_1 + 185, 1, -419.8, 636 , 0 );
setMoveKey( spep_1 + 186, 1, 262.4, -840.3 , 0 );
setMoveKey( spep_1 + 188, 1, 211.6, -708.5 , 0 );
setMoveKey( spep_1 + 190, 1, 183.7, -626.7 , 0 );
setMoveKey( spep_1 + 192, 1, 143.2, -527.5 , 0 );
setMoveKey( spep_1 + 194, 1, 120.7, -464.2 , 0 );
setMoveKey( spep_1 + 196, 1, 91.2, -390.4 , 0 );
setMoveKey( spep_1 + 198, 1, 90.8, -384.3 , 0 );
setMoveKey( spep_1 + 200, 1, 67.2, -327.6 , 0 );
setMoveKey( spep_1 + 202, 1, 77.7, -353.9 , 0 );
setMoveKey( spep_1 + 204, 1, 67.6, -326.7 , 0 );
setMoveKey( spep_1 + 206, 1, 78, -346.5 , 0 );
setMoveKey( spep_1 + 208, 1, 68.2, -328.3 , 0 );
setMoveKey( spep_1 + 210, 1, 69.9, -327.3 , 0 );
setMoveKey( spep_1 + 212, 1, 62.9, -308.6 , 0 );
setMoveKey( spep_1 + 214, 1, 73.1, -333.8 , 0 );
setMoveKey( spep_1 + 216, 1, 60.1, -302.7 , 0 );
setMoveKey( spep_1 + 218, 1, 61, -302.9 , 0 );
setMoveKey( spep_1 + 220, 1, 64.9, -308.5 , 0 );
setMoveKey( spep_1 + 222, 1, 65.9, -312.9 , 0 );
setMoveKey( spep_1 + 224, 1, 66, -311.7 , 0 );
setMoveKey( spep_1 + 226, 1, 65.4, -312.5 , 0 );
setMoveKey( spep_1 + 228, 1, 53.3, -276.2 , 0 );
setMoveKey( spep_1 + 230, 1, 53.2, -281.1 , 0 );
setMoveKey( spep_1 + 232, 1, 59.4, -288.2 , 0 );
setMoveKey( spep_1 + 234, 1, 50.7, -272.1 , 0 );
setMoveKey( spep_1 + 236, 1, 40.9, -240 , 0 );
setMoveKey( spep_1 + 238, 1, 41.5, -246.8 , 0 );
setMoveKey( spep_1 + 240, 1, 39.9, -234.8 , 0 );
setMoveKey( spep_1 + 242, 1, 40, -235 , 0 );
setMoveKey( spep_1 + 244, 1, 34, -219.6 , 0 );
--setMoveKey( spep_1 + 247, 1, 12.3, -182.1 , 0 );---
setMoveKey( spep_1 + 245, 1, -37.9, -65.4 , 0 );
setMoveKey( spep_1 + 248, 1, -37.9, -65.4 , 0 );
setMoveKey( spep_1 + 250, 1, -39.8, -30.8 , 0 );
setMoveKey( spep_1 + 252, 1, -23, 8.6 , 0 );
setMoveKey( spep_1 + 254, 1, -26.2, 29.9 , 0 );
setMoveKey( spep_1 + 256, 1, -11.9, 62.2 , 0 );
setMoveKey( spep_1 + 258, 1, -7.9, 77 , 0 );
setMoveKey( spep_1 + 260, 1, -6.6, 106.3 , 0 );
setMoveKey( spep_1 + 262, 1, 2.8, 111.2 , 0 );
setMoveKey( spep_1 + 264, 1, 2.4, 135 , 0 );
setMoveKey( spep_1 + 266, 1, 10.5, 144.6 , 0 );
setMoveKey( spep_1 + 268, 1, 14.9, 154.5 , 0 );
setMoveKey( spep_1 + 270, 1, 16.5, 162.9 , 0 );
setMoveKey( spep_1 + 272, 1, 19.2, 168.3 , 0 );
setMoveKey( spep_1 + 274, 1, 19.8, 171.3 , 0 );
setMoveKey( spep_1 + 276, 1, 22.9, 169.7 , 0 );
setMoveKey( spep_1 + 278, 1, 22.1, 164.4 , 0 );
setMoveKey( spep_1 + 280, 1, 22, 153.5 , 0 );
setMoveKey( spep_1 + 282, 1, 23.3, 139 , 0 );
setMoveKey( spep_1 + 284, 1, 20.2, 127.8 , 0 );
setMoveKey( spep_1 + 286, 1, 22.4, 120.1 , 0 );
setMoveKey( spep_1 + 288, 1, 23.8, 115.6 , 0 );
setMoveKey( spep_1 + 290, 1, 22.4, 113.6 , 0 );
setMoveKey( spep_1 + 292, 1, 22.6, 112.8 , 0 );
setMoveKey( spep_1 + 294, 1, 21.5, 113.1 , 0 );
setMoveKey( spep_1 + 296, 1, 22.9, 113.7 , 0 );
setMoveKey( spep_1 + 298, 1, 23.3, 115.3 , 0 );
setMoveKey( spep_1 + 300, 1, 23.7, 116.6 , 0 );
setMoveKey( spep_1 + 302, 1, 24, 117.8 , 0 );
setMoveKey( spep_1 + 304, 1, 24.2, 118.7 , 0 );
setMoveKey( spep_1 + 306, 1, 24.4, 119.4 , 0 );
setMoveKey( spep_1 + 308, 1, 24.6, 120 , 0 );
setMoveKey( spep_1 + 310, 1, 24.7, 120.5 , 0 );
setMoveKey( spep_1 + 312, 1, 24.8, 120.8 , 0 );
setMoveKey( spep_1 + 314, 1, 24.8, 121.1 , 0 );
setMoveKey( spep_1 + 316, 1, 24.9, 114.4 , 0 );
setMoveKey( spep_1 + 319, 1, 24, 85.7 , 0 );
setMoveKey( spep_1 + 320, 1, 7.1, 91.5 , 0 );
setMoveKey( spep_1 + 322, 1, 3.5, 79 , 0 );
setMoveKey( spep_1 + 324, 1, 8.4, 93.8 , 0 );
setMoveKey( spep_1 + 326, 1, 3.7, 85.6 , 0 );
setMoveKey( spep_1 + 328, 1, 7.4, 96.4 , 0 );
setMoveKey( spep_1 + 330, 1, 7.2, 85.1 , 0 );
setMoveKey( spep_1 + 332, 1, 3.6, 103.1 , 0 );
setMoveKey( spep_1 + 334, 1, 7.8, 92.3 , 0 );
setMoveKey( spep_1 + 336, 1, 2.2, 102.3 , 0 );
setMoveKey( spep_1 + 338, 1, 7.9, 98 , 0 );
setMoveKey( spep_1 + 340, 1, 4.6, 104.2 , 0 );
setMoveKey( spep_1 + 342, 1, 4.8, 107 , 0 );
setMoveKey( spep_1 + 344, 1, 3.5, 109.9 , 0 );
setMoveKey( spep_1 + 346, 1, 4.6, 113.3 , 0 );
setMoveKey( spep_1 + 348, 1, 3, 117.3 , 0 );
setMoveKey( spep_1 + 350, 1, 6.1, 122.9 , 0 );
setMoveKey( spep_1 + 352, 1, 5.9, 129.5 , 0 );
setMoveKey( spep_1 + 354, 1, 6.3, 269.3 , 0 );
setMoveKey( spep_1 + 356, 1, 6.6, 409.7 , 0 );
setMoveKey( spep_1 + 358, 1, 6.9, 550.5 , 0 );
setMoveKey( spep_1 + 361, 1, 7.3, 800.9 , 0 );
setMoveKey( spep_1 + 390, 1, 7.3, 800.9 , 0 );

setMoveKey( spep_1 + 391, 1, 7.3, -481.3 , 0 );
setMoveKey( spep_1 + 398, 1, 16.3, -291.3 , 0 );
setMoveKey( spep_1 + 400, 1, 15.7, -163.4 , 0 );
setMoveKey( spep_1 + 402, 1, 16.2, -84.3 , 0 );
setMoveKey( spep_1 + 404, 1, 15.1, -27.6 , 0 );
setMoveKey( spep_1 + 402, 1, 16.8, 13.3 , 0 );
setMoveKey( spep_1 + 408, 1, 13.3, 39.8 , 0 );
setMoveKey( spep_1 + 410, 1, 11.5, 50.8 , 0 );
setMoveKey( spep_1 + 412, 1, 15.1, 44.2 , 0 );
setMoveKey( spep_1 + 414, 1, 13.6, 56.9 , 0 );
setMoveKey( spep_1 + 416, 1, 12.5, 53.1 , 0 );
setMoveKey( spep_1 + 418, 1, 14.9, 59.5 , 0 );
setMoveKey( spep_1 + 420, 1, 15, 50 , 0 );
setMoveKey( spep_1 + 422, 1, 12.5, 61.7 , 0 );
setMoveKey( spep_1 + 424, 1, 15, 51.3 , 0 );
setMoveKey( spep_1 + 426, 1, 12.6, 64.7 , 0 );
setMoveKey( spep_1 + 428, 1, 14.6, 52.1 , 0 );
setMoveKey( spep_1 + 430, 1, 14.4, 64.6 , 0 );
setMoveKey( spep_1 + 432, 1, 15.3, 49.4 , 0 );
setMoveKey( spep_1 + 434, 1, 15.1, 61 , 0 );
setMoveKey( spep_1 + 436, 1, 17.4, 52.2 , 0 );
setMoveKey( spep_1 + 438, 1, 11.5, 62.3 , 0 );
setMoveKey( spep_1 + 440, 1, 17.4, 56.1 , 0 );
setMoveKey( spep_1 + 442, 1, 17.3, 57.9 , 0 );
setMoveKey( spep_1 + 444, 1, 18.2, 59.6 , 0 );
setMoveKey( spep_1 + 446, 1, 15.4, 65.9 , 0 );
setMoveKey( spep_1 + 448, 1, 17.1, 65.5 , 0 );
setMoveKey( spep_1 + 450, 1, 14.2, 69.2 , 0 );
setMoveKey( spep_1 + 452, 1, 19, 66.8 , 0 );
setMoveKey( spep_1 + 454, 1, 13.3, 82.4 , 0 );
setMoveKey( spep_1 + 456, 1, 16.4, 71.9 , 0 );
setMoveKey( spep_1 + 458, 1, 15, 86.9 , 0 );
setMoveKey( spep_1 + 460, 1, 15.6, 81.3 , 0 );
setMoveKey( spep_1 + 462, 1, 16.7, 82.3 , 0 );
setMoveKey( spep_1 + 464, 1, 18.3, 86.1 , 0 );
setMoveKey( spep_1 + 466, 1, 13.8, 91.3 , 0 );
setMoveKey( spep_1 + 468, 1, 17.8, 98.9 , 0 );
setMoveKey( spep_1 + 470, 1, 14.6, 95.1 , 0 );
setMoveKey( spep_1 + 472, 1, 16.2, 103.6 , 0 );
setMoveKey( spep_1 + 474, 1, 16.2, 121.4 , 0 );
setMoveKey( spep_1 + 476, 1, 14.3, 154.7 , 0 );
setMoveKey( spep_1 + 478, 1, 18.2, 191.5 , 0 );
setMoveKey( spep_1 + 480, 1, 13.5, 246.6 , 0 );
setMoveKey( spep_1 + 482, 1, 18.5, 305 , 0 );
setMoveKey( spep_1 + 484, 1, 12.7, 397.1 , 0 );
setMoveKey( spep_1 + 486, 1, 17.9, 467.8 , 0 );
setMoveKey( spep_1 + 488, 1, 14.9, 583 , 0 );
setMoveKey( spep_1 + 490, 1, 14.9, 583 , 0 );

setScaleKey( spep_1 + 0, 1, 1.45, 1.45 );
setScaleKey( spep_1 + 14, 1, 1.45, 1.45 );
setScaleKey( spep_1 + 17, 1, 1.49, 1.49 );
setScaleKey( spep_1 + 18, 1, 1.49, 1.49 );
setScaleKey( spep_1 + 20, 1, 1.68, 1.68 );
setScaleKey( spep_1 + 22, 1, 1.55, 1.55 );
setScaleKey( spep_1 + 24, 1, 1.57, 1.57 );
setScaleKey( spep_1 + 26, 1, 1.57, 1.57 );
setScaleKey( spep_1 + 28, 1, 1.45, 1.45 );
setScaleKey( spep_1 + 50, 1, 1.45, 1.45 );
setScaleKey( spep_1 + 52, 1, 2.99, 2.99 );
setScaleKey( spep_1 + 54, 1, 3.12, 3.12 );
setScaleKey( spep_1 + 56, 1, 3.09, 3.09 );
setScaleKey( spep_1 + 58, 1, 2.94, 2.94 );
setScaleKey( spep_1 + 60, 1, 2.77, 2.76 );
setScaleKey( spep_1 + 62, 1, 2.56, 2.56 );
setScaleKey( spep_1 + 64, 1, 2.11, 2.11 );
setScaleKey( spep_1 + 66, 1, 1.73, 1.73 );
setScaleKey( spep_1 + 68, 1, 1.82, 1.82 );
setScaleKey( spep_1 + 70, 1, 1.69, 1.69 );
setScaleKey( spep_1 + 72, 1, 1.82, 1.82 );
setScaleKey( spep_1 + 74, 1, 1.66, 1.66 );
setScaleKey( spep_1 + 76, 1, 1.72, 1.72 );
setScaleKey( spep_1 + 78, 1, 1.66, 1.65 );
setScaleKey( spep_1 + 80, 1, 1.66, 1.66 );
setScaleKey( spep_1 + 82, 1, 1.65, 1.65 );
setScaleKey( spep_1 + 84, 1, 1.67, 1.66 );
setScaleKey( spep_1 + 86, 1, 1.57, 1.57 );
setScaleKey( spep_1 + 88, 1, 1.5, 1.5 );
setScaleKey( spep_1 + 90, 1, 1.61, 1.61 );
setScaleKey( spep_1 + 92, 1, 1.57, 1.57 );
setScaleKey( spep_1 + 94, 1, 1.57, 1.57 );
setScaleKey( spep_1 + 96, 1, 1.46, 1.46 );
setScaleKey( spep_1 + 98, 1, 1.56, 1.56 );
setScaleKey( spep_1 + 100, 1, 1.45, 1.45 );
setScaleKey( spep_1 + 102, 1, 1.52, 1.52 );
setScaleKey( spep_1 + 104, 1, 1.53, 1.53 );
setScaleKey( spep_1 + 106, 1, 1.55, 1.55 );
setScaleKey( spep_1 + 108, 1, 1.54, 1.54 );
setScaleKey( spep_1 + 110, 1, 1.54, 1.54 );
setScaleKey( spep_1 + 112, 1, 1.53, 1.53 );
setScaleKey( spep_1 + 114, 1, 1.52, 1.52 );
setScaleKey( spep_1 + 116, 1, 1.5, 1.5 );
setScaleKey( spep_1 + 118, 1, 1.46, 1.46 );
--setScaleKey( spep_1 + 121, 1, 1.35, 1.35 );
setScaleKey( spep_1 + 119, 1, 0.58, 0.58 );
setScaleKey( spep_1 + 122, 1, 0.58, 0.58 );
setScaleKey( spep_1 + 124, 1, 0.65, 0.65 );
setScaleKey( spep_1 + 126, 1, 0.67, 0.67 );
setScaleKey( spep_1 + 128, 1, 0.68, 0.68 );
setScaleKey( spep_1 + 130, 1, 0.75, 0.75 );
setScaleKey( spep_1 + 132, 1, 0.74, 0.74 );
setScaleKey( spep_1 + 134, 1, 0.78, 0.78 );
setScaleKey( spep_1 + 136, 1, 0.86, 0.86 );
setScaleKey( spep_1 + 138, 1, 0.82, 0.82 );
setScaleKey( spep_1 + 140, 1, 0.78, 0.78 );
setScaleKey( spep_1 + 142, 1, 0.7, 0.7 );
setScaleKey( spep_1 + 144, 1, 0.7, 0.7 );
setScaleKey( spep_1 + 146, 1, 0.65, 0.65 );
setScaleKey( spep_1 + 148, 1, 0.65, 0.65 );
setScaleKey( spep_1 + 150, 1, 0.66, 0.63 );
setScaleKey( spep_1 + 152, 1, 0.69, 0.69 );
setScaleKey( spep_1 + 154, 1, 0.69, 0.69 );
setScaleKey( spep_1 + 156, 1, 0.68, 0.68 );
setScaleKey( spep_1 + 158, 1, 0.74, 0.72 );
setScaleKey( spep_1 + 160, 1, 0.76, 0.76 );
setScaleKey( spep_1 + 162, 1, 0.76, 0.76 );
setScaleKey( spep_1 + 164, 1, 0.77, 0.77 );
setScaleKey( spep_1 + 166, 1, 0.77, 0.77 );
setScaleKey( spep_1 + 168, 1, 0.78, 0.78 );
setScaleKey( spep_1 + 170, 1, 0.79, 0.79 );
setScaleKey( spep_1 + 172, 1, 0.83, 0.83 );
setScaleKey( spep_1 + 174, 1, 0.84, 0.84 );
setScaleKey( spep_1 + 176, 1, 0.9, 0.9 );
setScaleKey( spep_1 + 178, 1, 1, 1 );
setScaleKey( spep_1 + 180, 1, 1.08, 1.08 );
setScaleKey( spep_1 + 182, 1, 1.14, 1.14 );
setScaleKey( spep_1 + 184, 1, 1.29, 1.29 );
setScaleKey( spep_1 + 186, 1, 0.28, 0.28 );
setScaleKey( spep_1 + 188, 1, 0.33, 0.33 );
setScaleKey( spep_1 + 190, 1, 0.37, 0.37 );
setScaleKey( spep_1 + 192, 1, 0.41, 0.41 );
setScaleKey( spep_1 + 194, 1, 0.44, 0.44 );
setScaleKey( spep_1 + 196, 1, 0.47, 0.47 );
setScaleKey( spep_1 + 198, 1, 0.46, 0.46 );
setScaleKey( spep_1 + 200, 1, 0.49, 0.49 );
setScaleKey( spep_1 + 202, 1, 0.47, 0.47 );
setScaleKey( spep_1 + 204, 1, 0.48, 0.48 );
setScaleKey( spep_1 + 206, 1, 0.47, 0.47 );
setScaleKey( spep_1 + 210, 1, 0.47, 0.47 );
setScaleKey( spep_1 + 212, 1, 0.48, 0.48 );
setScaleKey( spep_1 + 214, 1, 0.46, 0.46 );
setScaleKey( spep_1 + 216, 1, 0.48, 0.48 );
setScaleKey( spep_1 + 218, 1, 0.48, 0.48 );
setScaleKey( spep_1 + 220, 1, 0.46, 0.46 );
setScaleKey( spep_1 + 224, 1, 0.46, 0.46 );
setScaleKey( spep_1 + 226, 1, 0.45, 0.45 );
setScaleKey( spep_1 + 228, 1, 0.47, 0.47 );
setScaleKey( spep_1 + 230, 1, 0.46, 0.46 );
setScaleKey( spep_1 + 234, 1, 0.46, 0.46 );
setScaleKey( spep_1 + 236, 1, 0.47, 0.47 );
setScaleKey( spep_1 + 238, 1, 0.47, 0.46 );
setScaleKey( spep_1 + 240, 1, 0.46, 0.46 );
setScaleKey( spep_1 + 242, 1, 0.47, 0.47 );
setScaleKey( spep_1 + 244, 1, 0.47, 0.47 );
--setScaleKey( spep_1 + 247, 1, 0.48, 0.48 );
setScaleKey( spep_1 + 245, 1, 1.62, 1.62 );
setScaleKey( spep_1 + 252, 1, 1.62, 1.62 );
setScaleKey( spep_1 + 254, 1, 1.61, 1.61 );
setScaleKey( spep_1 + 256, 1, 1.59, 1.59 );
setScaleKey( spep_1 + 258, 1, 1.59, 1.59 );
setScaleKey( spep_1 + 260, 1, 1.58, 1.57 );
setScaleKey( spep_1 + 262, 1, 1.57, 1.57 );
setScaleKey( spep_1 + 264, 1, 1.55, 1.55 );
setScaleKey( spep_1 + 266, 1, 1.54, 1.54 );
setScaleKey( spep_1 + 268, 1, 1.52, 1.52 );
setScaleKey( spep_1 + 270, 1, 1.49, 1.48 );
setScaleKey( spep_1 + 272, 1, 1.46, 1.45 );
setScaleKey( spep_1 + 274, 1, 1.41, 1.41 );
setScaleKey( spep_1 + 276, 1, 1.37, 1.37 );
setScaleKey( spep_1 + 278, 1, 1.3, 1.3 );
setScaleKey( spep_1 + 280, 1, 1.21, 1.21 );
setScaleKey( spep_1 + 282, 1, 1.12, 1.12 );
setScaleKey( spep_1 + 284, 1, 1.04, 1.04 );
setScaleKey( spep_1 + 286, 1, 0.99, 0.99 );
setScaleKey( spep_1 + 288, 1, 0.96, 0.96 );
setScaleKey( spep_1 + 290, 1, 0.94, 0.94 );
setScaleKey( spep_1 + 292, 1, 0.92, 0.92 );
setScaleKey( spep_1 + 294, 1, 0.91, 0.9 );
setScaleKey( spep_1 + 298, 1, 0.91, 0.9 );
setScaleKey( spep_1 + 300, 1, 0.9, 0.9 );
setScaleKey( spep_1 + 314, 1, 0.9, 0.9 );
setScaleKey( spep_1 + 316, 1, 0.98, 0.98 );
setScaleKey( spep_1 + 319, 1, 1.2, 1.2 );
setScaleKey( spep_1 + 320, 1, 1.57, 1.57 );
setScaleKey( spep_1 + 330, 1, 1.57, 1.57 );
setScaleKey( spep_1 + 332, 1, 1.56, 1.56 );
setScaleKey( spep_1 + 334, 1, 1.56, 1.56 );
setScaleKey( spep_1 + 336, 1, 1.54, 1.54 );
setScaleKey( spep_1 + 338, 1, 1.54, 1.54 );
setScaleKey( spep_1 + 340, 1, 1.53, 1.53 );
setScaleKey( spep_1 + 342, 1, 1.52, 1.52 );
setScaleKey( spep_1 + 344, 1, 1.49, 1.49 );
setScaleKey( spep_1 + 346, 1, 1.46, 1.46 );
setScaleKey( spep_1 + 348, 1, 1.4, 1.4 );
setScaleKey( spep_1 + 350, 1, 1.33, 1.33 );
setScaleKey( spep_1 + 352, 1, 1.19, 1.19 );
setScaleKey( spep_1 + 358, 1, 1.19, 1.19 );
setScaleKey( spep_1 + 361, 1, 1.2, 1.2 );
setScaleKey( spep_1 + 394, 1, 1.19, 1.19 );
setScaleKey( spep_1 + 396, 1, 0.88, 1.17 );
setScaleKey( spep_1 + 398, 1, 1.19, 1.19 );
setScaleKey( spep_1 + 408, 1, 1.19, 1.19 );
setScaleKey( spep_1 + 410, 1, 1.2, 1.2 );
setScaleKey( spep_1 + 412, 1, 1.2, 1.2 );
setScaleKey( spep_1 + 414, 1, 1.21, 1.21 );
setScaleKey( spep_1 + 416, 1, 1.21, 1.21 );
setScaleKey( spep_1 + 418, 1, 1.22, 1.22 );
setScaleKey( spep_1 + 420, 1, 1.23, 1.23 );
setScaleKey( spep_1 + 422, 1, 1.24, 1.24 );
setScaleKey( spep_1 + 424, 1, 1.25, 1.25 );
setScaleKey( spep_1 + 426, 1, 1.27, 1.27 );
setScaleKey( spep_1 + 428, 1, 1.28, 1.28 );
setScaleKey( spep_1 + 430, 1, 1.3, 1.3 );
setScaleKey( spep_1 + 432, 1, 1.32, 1.32 );
setScaleKey( spep_1 + 434, 1, 1.34, 1.34 );
setScaleKey( spep_1 + 436, 1, 1.35, 1.35 );
setScaleKey( spep_1 + 438, 1, 1.37, 1.37 );
setScaleKey( spep_1 + 440, 1, 1.38, 1.38 );
setScaleKey( spep_1 + 442, 1, 1.39, 1.39 );
setScaleKey( spep_1 + 444, 1, 1.4, 1.4 );
setScaleKey( spep_1 + 446, 1, 1.4, 1.4 );
setScaleKey( spep_1 + 448, 1, 1.41, 1.41 );
setScaleKey( spep_1 + 450, 1, 1.42, 1.42 );
setScaleKey( spep_1 + 454, 1, 1.42, 1.42 );
setScaleKey( spep_1 + 456, 1, 1.43, 1.43 );
setScaleKey( spep_1 + 490, 1, 1.43, 1.43 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 + 17, 1, 0 );
setRotateKey( spep_1 + 18, 1, -9 );
setRotateKey( spep_1 + 30, 1, -9 );
setRotateKey( spep_1 + 32, 1, -8.1 );
setRotateKey( spep_1 + 34, 1, -7.3 );
setRotateKey( spep_1 + 36, 1, -6.6 );
setRotateKey( spep_1 + 38, 1, -6 );
setRotateKey( spep_1 + 40, 1, -5.5 );
setRotateKey( spep_1 + 42, 1, -5.1 );
setRotateKey( spep_1 + 44, 1, -4.7 );
setRotateKey( spep_1 + 46, 1, -4.5 );
setRotateKey( spep_1 + 48, 1, -4.3 );
setRotateKey( spep_1 + 50, 1, -4.3 );
setRotateKey( spep_1 + 52, 1, 5.8 );
setRotateKey( spep_1 + 54, 1, 6.1 );
setRotateKey( spep_1 + 56, 1, 6.2 );
setRotateKey( spep_1 + 58, 1, 6.5 );
setRotateKey( spep_1 + 60, 1, 6.9 );
setRotateKey( spep_1 + 62, 1, 7.4 );
setRotateKey( spep_1 + 64, 1, 8.1 );
setRotateKey( spep_1 + 66, 1, 8.8 );
setRotateKey( spep_1 + 68, 1, 8.8 );
setRotateKey( spep_1 + 70, 1, 8.9 );
setRotateKey( spep_1 + 72, 1, 8.9 );
setRotateKey( spep_1 + 74, 1, 9 );
setRotateKey( spep_1 + 76, 1, 9.2 );
setRotateKey( spep_1 + 78, 1, 9.3 );
setRotateKey( spep_1 + 80, 1, 9.5 );
setRotateKey( spep_1 + 82, 1, 9.7 );
setRotateKey( spep_1 + 84, 1, 10 );
setRotateKey( spep_1 + 86, 1, 10.3 );
setRotateKey( spep_1 + 88, 1, 10.5 );
setRotateKey( spep_1 + 90, 1, 10.7 );
setRotateKey( spep_1 + 92, 1, 10.8 );
setRotateKey( spep_1 + 94, 1, 11 );
setRotateKey( spep_1 + 96, 1, 11.1 );
setRotateKey( spep_1 + 98, 1, 11.1 );
setRotateKey( spep_1 + 100, 1, 11.2 );
setRotateKey( spep_1 + 102, 1, 11.2 );
setRotateKey( spep_1 + 104, 1, 11.3 );
setRotateKey( spep_1 + 106, 1, 11.5 );
setRotateKey( spep_1 + 108, 1, 11.8 );
setRotateKey( spep_1 + 110, 1, 12.2 );
setRotateKey( spep_1 + 112, 1, 12.8 );
setRotateKey( spep_1 + 114, 1, 13.6 );
setRotateKey( spep_1 + 116, 1, 14.4 );
setRotateKey( spep_1 + 118, 1, 15.4 );
--setRotateKey( spep_1 + 121, 1, 16.3 );
setRotateKey( spep_1 + 119, 1, 100.2 );
setRotateKey( spep_1 + 128, 1, 100.2 );
setRotateKey( spep_1 + 130, 1, 100.3 );
setRotateKey( spep_1 + 134, 1, 100.3 );
setRotateKey( spep_1 + 136, 1, 100.4 );
setRotateKey( spep_1 + 138, 1, 100.4 );
setRotateKey( spep_1 + 140, 1, 100.5 );
setRotateKey( spep_1 + 142, 1, 100.5 );
setRotateKey( spep_1 + 144, 1, 100.6 );
setRotateKey( spep_1 + 178, 1, 100.6 );
setRotateKey( spep_1 + 180, 1, 100.5 );
setRotateKey( spep_1 + 184, 1, 100.5 );
setRotateKey( spep_1 + 186, 1, 126.1 );
setRotateKey( spep_1 + 188, 1, 126.2 );
setRotateKey( spep_1 + 200, 1, 126.2 );
setRotateKey( spep_1 + 202, 1, 126.1 );
setRotateKey( spep_1 + 204, 1, 126.2 );
setRotateKey( spep_1 + 244, 1, 126.2 );
--setRotateKey( spep_1 + 247, 1, 126.1 );

setRotateKey( spep_1 + 245, 1, -63.2 );------------------------------
setRotateKey( spep_1 + 248, 1, -63.2 );
setRotateKey( spep_1 + 250, 1, -55 );
setRotateKey( spep_1 + 252, 1, -47.8 );
setRotateKey( spep_1 + 254, 1, -41.5 );
setRotateKey( spep_1 + 256, 1, -35.9 );
setRotateKey( spep_1 + 258, 1, -30.8 );
setRotateKey( spep_1 + 260, 1, -26.3 );
setRotateKey( spep_1 + 262, 1, -22.1 );
setRotateKey( spep_1 + 264, 1, -18.4 );
setRotateKey( spep_1 + 266, 1, -15 );
setRotateKey( spep_1 + 268, 1, -12 );
setRotateKey( spep_1 + 270, 1, -9.2 );
setRotateKey( spep_1 + 272, 1, -6.6 );
setRotateKey( spep_1 + 274, 1, -4.3 );
setRotateKey( spep_1 + 276, 1, -2.2 );
setRotateKey( spep_1 + 279, 1, -0.3 );


setRotateKey( spep_1 + 280, 1, 1.4 );
setRotateKey( spep_1 + 282, 1, 3 );
setRotateKey( spep_1 + 284, 1, 4.4 );
setRotateKey( spep_1 + 286, 1, 5.7 );
setRotateKey( spep_1 + 288, 1, 6.8 );
setRotateKey( spep_1 + 290, 1, 7.8 );
setRotateKey( spep_1 + 292, 1, 8.7 );
setRotateKey( spep_1 + 294, 1, 9.5 );
setRotateKey( spep_1 + 296, 1, 10.2 );
setRotateKey( spep_1 + 298, 1, 10.8 );
setRotateKey( spep_1 + 300, 1, 11.3 );
setRotateKey( spep_1 + 302, 1, 11.7 );
setRotateKey( spep_1 + 304, 1, 12.1 );
setRotateKey( spep_1 + 306, 1, 12.4 );
setRotateKey( spep_1 + 308, 1, 12.6 );
setRotateKey( spep_1 + 310, 1, 12.8 );
setRotateKey( spep_1 + 312, 1, 12.9 );
setRotateKey( spep_1 + 314, 1, 13 );
setRotateKey( spep_1 + 319, 1, 13 );


setRotateKey( spep_1 + 320, 1, 87.5 );
setRotateKey( spep_1 + 361, 1, 87.5 );
setRotateKey( spep_1 + 394, 1, 102.5 );
setRotateKey( spep_1 + 396, 1, 79.4 );
setRotateKey( spep_1 + 398, 1, 29.8 );
setRotateKey( spep_1 + 400, 1, 25.7 );
setRotateKey( spep_1 + 402, 1, 22.3 );
setRotateKey( spep_1 + 404, 1, 19.7 );
setRotateKey( spep_1 + 406, 1, 17.8 );
setRotateKey( spep_1 + 408, 1, 16.7 );
setRotateKey( spep_1 + 410, 1, 16.3 );
setRotateKey( spep_1 + 412, 1, 16.8 );
setRotateKey( spep_1 + 414, 1, 17.3 );
setRotateKey( spep_1 + 416, 1, 17.8 );
setRotateKey( spep_1 + 418, 1, 18.3 );
setRotateKey( spep_1 + 420, 1, 18.8 );
setRotateKey( spep_1 + 422, 1, 19.4 );
setRotateKey( spep_1 + 424, 1, 19.9 );
setRotateKey( spep_1 + 426, 1, 20.4 );
setRotateKey( spep_1 + 428, 1, 20.9 );
setRotateKey( spep_1 + 430, 1, 21.4 );
setRotateKey( spep_1 + 432, 1, 21.9 );
setRotateKey( spep_1 + 434, 1, 22.4 );
setRotateKey( spep_1 + 436, 1, 22.9 );
setRotateKey( spep_1 + 438, 1, 23.4 );
setRotateKey( spep_1 + 440, 1, 23.9 );
setRotateKey( spep_1 + 442, 1, 24.5 );
setRotateKey( spep_1 + 444, 1, 25 );
setRotateKey( spep_1 + 446, 1, 25.5 );
setRotateKey( spep_1 + 448, 1, 26 );
setRotateKey( spep_1 + 450, 1, 26.5 );
setRotateKey( spep_1 + 452, 1, 27 );
setRotateKey( spep_1 + 454, 1, 27.5 );
setRotateKey( spep_1 + 456, 1, 28 );
setRotateKey( spep_1 + 458, 1, 28.5 );
setRotateKey( spep_1 + 460, 1, 29.1 );
setRotateKey( spep_1 + 462, 1, 29.6 );
setRotateKey( spep_1 + 464, 1, 30.1 );
setRotateKey( spep_1 + 466, 1, 30.6 );
setRotateKey( spep_1 + 468, 1, 31.1 );
setRotateKey( spep_1 + 470, 1, 31.6 );
setRotateKey( spep_1 + 472, 1, 31.7 );
setRotateKey( spep_1 + 474, 1, 31.9 );
setRotateKey( spep_1 + 476, 1, 32.4 );
setRotateKey( spep_1 + 478, 1, 33 );
setRotateKey( spep_1 + 480, 1, 33.8 );
setRotateKey( spep_1 + 482, 1, 34.7 );
setRotateKey( spep_1 + 484, 1, 35.9 );
setRotateKey( spep_1 + 486, 1, 37.2 );
setRotateKey( spep_1 + 488, 1, 38.6 );
setRotateKey( spep_1 + 490, 1, 38.6 );

setShakeChara(spep_1 + 15, 1, 184,15);-----------------------------------------------------------------------------
setShakeChara(spep_1 + 390, 1, 100,20);


--文字エントリー
ctga = entryEffectLife( spep_1 + 15,  10005, 17, 0x100, -1, 0, 0.1, 238.9 );--ガッ
setEffMoveKey( spep_1 + 15, ctga, 0.1, 238.9 , 0 );
setEffMoveKey( spep_1 + 18, ctga, -9.2, 251.3 , 0 );
setEffMoveKey( spep_1 + 20, ctga, -5.3, 256.2 , 0 );
setEffMoveKey( spep_1 + 22, ctga, -12.1, 258.9 , 0 );
setEffMoveKey( spep_1 + 24, ctga, -2.9, 259.9 , 0 );
setEffMoveKey( spep_1 + 26, ctga, -11.9, 265 , 0 );
setEffMoveKey( spep_1 + 28, ctga, -7.8, 263.8 , 0 );
setEffMoveKey( spep_1 + 30, ctga, -15.8, 268.8 , 0 );
setEffMoveKey( spep_1 + 32, ctga, -16.5, 270.7 , 0 );

setEffScaleKey( spep_1 + 15, ctga, 1.25, 1.25 );
setEffScaleKey( spep_1 + 18, ctga, 1.45, 1.45 );
setEffScaleKey( spep_1 + 20, ctga, 1.52, 1.52 );
setEffScaleKey( spep_1 + 22, ctga, 1.57, 1.57 );
setEffScaleKey( spep_1 + 24, ctga, 1.61, 1.61 );
setEffScaleKey( spep_1 + 26, ctga, 1.63, 1.63 );
setEffScaleKey( spep_1 + 28, ctga, 1.64, 1.64 );
setEffScaleKey( spep_1 + 30, ctga, 1.73, 1.73 );
setEffScaleKey( spep_1 + 32, ctga, 1.76, 1.76 );

setEffRotateKey( spep_1 + 15, ctga, 3 );
setEffRotateKey( spep_1 + 32, ctga, 3 );

setEffAlphaKey( spep_1 + 15, ctga, 255 );
setEffAlphaKey( spep_1 + 28, ctga, 255 );
setEffAlphaKey( spep_1 + 30, ctga, 64 );
setEffAlphaKey( spep_1 + 32, ctga, 0 );

ctsyun = entryEffectLife( spep_1 + 86,  10011, 16, 0x100, -1, 0, 237, 91.5 );--シュンッ
setEffMoveKey( spep_1 + 86, ctsyun, 237, 91.5 , 0 );
setEffMoveKey( spep_1 + 88, ctsyun, 234.1, 99.1 , 0 );
setEffMoveKey( spep_1 + 90, ctsyun, 232.4, 103.7 , 0 );
setEffMoveKey( spep_1 + 92, ctsyun, 231.8, 105.2 , 0 );
setEffMoveKey( spep_1 + 102, ctsyun, 231.8, 105.2 , 0 );

setEffScaleKey( spep_1 + 86, ctsyun, 0.6, 0.6 );
setEffScaleKey( spep_1 + 88, ctsyun, 0.92, 0.92 );
setEffScaleKey( spep_1 + 90, ctsyun, 1.11, 1.11 );
setEffScaleKey( spep_1 + 92, ctsyun, 1.17, 1.17 );
setEffScaleKey( spep_1 + 94, ctsyun, 1.18, 1.18 );
setEffScaleKey( spep_1 + 96, ctsyun, 1.19, 1.19 );
setEffScaleKey( spep_1 + 98, ctsyun, 1.22, 1.22 );
setEffScaleKey( spep_1 + 100, ctsyun, 1.26, 1.26 );
setEffScaleKey( spep_1 + 102, ctsyun, 1.31, 1.31 );

setEffRotateKey( spep_1 + 86, ctsyun, 12.7 );
setEffRotateKey( spep_1 + 102, ctsyun, 12.7 );

setEffAlphaKey( spep_1 + 86, ctsyun, 255 );
setEffAlphaKey( spep_1 + 92, ctsyun, 255 );
setEffAlphaKey( spep_1 + 94, ctsyun, 245 );
setEffAlphaKey( spep_1 + 96, ctsyun, 214 );
setEffAlphaKey( spep_1 + 98, ctsyun, 163 );
setEffAlphaKey( spep_1 + 100, ctsyun, 92 );
setEffAlphaKey( spep_1 + 102, ctsyun, 0 );


stbaki = entryEffectLife( spep_1 + 119,  10020, 19, 0x100, -1, 0, 187.5, 84.9 );--バキ
setEffMoveKey( spep_1 + 119, stbaki, 187.5, 84.9 , 0 );
setEffMoveKey( spep_1 + 122, stbaki, 188.9, 108.2 , 0 );
setEffMoveKey( spep_1 + 124, stbaki, 191.6, 112 , 0 );
setEffMoveKey( spep_1 + 126, stbaki, 189.8, 125.6 , 0 );
setEffMoveKey( spep_1 + 128, stbaki, 191.7, 123.7 , 0 );
setEffMoveKey( spep_1 + 130, stbaki, 187.9, 141.2 , 0 );
setEffMoveKey( spep_1 + 132, stbaki, 197.1, 140 , 0 );
setEffMoveKey( spep_1 + 134, stbaki, 191.6, 141 , 0 );
setEffMoveKey( spep_1 + 136, stbaki, 200, 148.4 , 0 );
setEffMoveKey( spep_1 + 138, stbaki, 203.5, 149.7 , 0 );

setEffScaleKey( spep_1 + 119, stbaki, 1.25, 1.25 );
setEffScaleKey( spep_1 + 122, stbaki, 1.33, 1.33 );
setEffScaleKey( spep_1 + 124, stbaki, 1.35, 1.35 );
setEffScaleKey( spep_1 + 126, stbaki, 1.4, 1.4 );
setEffScaleKey( spep_1 + 128, stbaki, 1.45, 1.45 );
setEffScaleKey( spep_1 + 130, stbaki, 1.48, 1.48 );
setEffScaleKey( spep_1 + 132, stbaki, 1.49, 1.49 );
setEffScaleKey( spep_1 + 134, stbaki, 1.5, 1.5 );
setEffScaleKey( spep_1 + 136, stbaki, 1.7, 1.7 );
setEffScaleKey( spep_1 + 138, stbaki, 1.76, 1.76 );

setEffRotateKey( spep_1 + 119, stbaki, 33.7 );
setEffRotateKey( spep_1 + 138, stbaki, 33.7 );

setEffAlphaKey( spep_1 + 119, stbaki, 255 );
setEffAlphaKey( spep_1 + 134, stbaki, 255 );
setEffAlphaKey( spep_1 + 136, stbaki, 64 );
setEffAlphaKey( spep_1 + 138, stbaki, 0 );

setEffShake(spep_1 + 119, stbaki, 19 ,20);

ctzun = entryEffectLife( spep_1 + 148,  10016, 22, 0x100, -1, 0, -107.9, 337.2 );--ズン
setEffMoveKey( spep_1 + 148, ctzun, -107.9, 337.2 , 0 );
setEffMoveKey( spep_1 + 150, ctzun, -114.1, 374.8 , 0 );
setEffMoveKey( spep_1 + 152, ctzun, -117.8, 397.2 , 0 );
setEffMoveKey( spep_1 + 154, ctzun, -119, 404.7 , 0 );
setEffMoveKey( spep_1 + 156, ctzun, -119.8, 405.9 , 0 );
setEffMoveKey( spep_1 + 158, ctzun, -120.6, 407.2 , 0 );
setEffMoveKey( spep_1 + 160, ctzun, -121.4, 408.5 , 0 );
setEffMoveKey( spep_1 + 162, ctzun, -122.2, 409.8 , 0 );
setEffMoveKey( spep_1 + 164, ctzun, -123, 411.1 , 0 );
setEffMoveKey( spep_1 + 166, ctzun, -126.2, 445 , 0 );
setEffMoveKey( spep_1 + 168, ctzun, -127.8, 480.7 , 0 );
setEffMoveKey( spep_1 + 170, ctzun, -128.5, 518.7 , 0 );

setEffScaleKey( spep_1 + 148, ctzun, 1, 1 );
setEffScaleKey( spep_1 + 150, ctzun, 2.11, 2.11 );
setEffScaleKey( spep_1 + 152, ctzun, 2.77, 2.77 );
setEffScaleKey( spep_1 + 154, ctzun, 2.99, 2.99 );
setEffScaleKey( spep_1 + 156, ctzun, 3.01, 3.01 );
setEffScaleKey( spep_1 + 158, ctzun, 3.02, 3.02 );
setEffScaleKey( spep_1 + 160, ctzun, 3.04, 3.04 );
setEffScaleKey( spep_1 + 162, ctzun, 3.05, 3.05 );
setEffScaleKey( spep_1 + 164, ctzun, 3.07, 3.07 );
setEffScaleKey( spep_1 + 166, ctzun, 3.13, 3.36 );
setEffScaleKey( spep_1 + 168, ctzun, 3.18, 3.64 );
setEffScaleKey( spep_1 + 170, ctzun, 3.24, 3.93 );

setEffRotateKey( spep_1 + 148, ctzun, -14.8 );
setEffRotateKey( spep_1 + 164, ctzun, -14.8 );
setEffRotateKey( spep_1 + 166, ctzun, -9.9 );
setEffRotateKey( spep_1 + 170, ctzun, -9.9 );
--setEffRotateKey( spep_1 + 168, ctzun, -4.9 );
--setEffRotateKey( spep_1 + 170, ctzun, 0 );

setEffAlphaKey( spep_1 + 148, ctzun, 255 );
setEffAlphaKey( spep_1 + 164, ctzun, 255 );
setEffAlphaKey( spep_1 + 166, ctzun, 170 );
setEffAlphaKey( spep_1 + 168, ctzun, 85 );
setEffAlphaKey( spep_1 + 170, ctzun, 0 );

ctdon = entryEffectLife( spep_1 + 245,  10019, 21, 0x100, -1, 0, -97.6, 204.5 );--ドン
setEffMoveKey( spep_1 + 245, ctdon, -97.6, 204.5 , 0 );
setEffMoveKey( spep_1 + 248, ctdon, -99.1, 247 , 0 );
setEffMoveKey( spep_1 + 250, ctdon, -81.5, 280.9 , 0 );
setEffMoveKey( spep_1 + 252, ctdon, -88, 291.4 , 0 );
setEffMoveKey( spep_1 + 254, ctdon, -78.2, 281.2 , 0 );
setEffMoveKey( spep_1 + 256, ctdon, -89.9, 284.3 , 0 );
setEffMoveKey( spep_1 + 258, ctdon, -81.7, 290.7 , 0 );
setEffMoveKey( spep_1 + 260, ctdon, -89.6, 285.6 , 0 );
setEffMoveKey( spep_1 + 262, ctdon, -81.3, 291.9 , 0 );
setEffMoveKey( spep_1 + 264, ctdon, -84.2, 280.3 , 0 );
setEffMoveKey( spep_1 + 266, ctdon, -84.1, 280.8 , 0 );

setEffScaleKey( spep_1 + 245, ctdon, 1.28, 1.28 );
setEffScaleKey( spep_1 + 248, ctdon, 1.62, 1.62 );
setEffScaleKey( spep_1 + 250, ctdon, 1.97, 1.97 );
setEffScaleKey( spep_1 + 252, ctdon, 1.98, 1.98 );
setEffScaleKey( spep_1 + 254, ctdon, 1.99, 1.99 );
setEffScaleKey( spep_1 + 256, ctdon, 2.01, 2.01 );
setEffScaleKey( spep_1 + 258, ctdon, 2.02, 2.02 );
setEffScaleKey( spep_1 + 260, ctdon, 2.03, 2.03 );
setEffScaleKey( spep_1 + 262, ctdon, 2.04, 2.04 );
setEffScaleKey( spep_1 + 264, ctdon, 2.05, 2.05 );
setEffScaleKey( spep_1 + 266, ctdon, 2.06, 2.06 );

setEffRotateKey( spep_1 + 245, ctdon, 14.2 );
setEffRotateKey( spep_1 + 248, ctdon, 14.7 );
setEffRotateKey( spep_1 + 250, ctdon, 15.2 );
setEffRotateKey( spep_1 + 266, ctdon, 15.2 );

setEffAlphaKey( spep_1 + 245, ctdon, 255 );
setEffAlphaKey( spep_1 + 260, ctdon, 255 );
setEffAlphaKey( spep_1 + 262, ctdon, 170 );
setEffAlphaKey( spep_1 + 264, ctdon, 85 );
setEffAlphaKey( spep_1 + 266, ctdon, 0 );



setEffShake(spep_1 + 245, ctdon, 21 ,20);

ctsyun2 = entryEffectLife( spep_1 + 272,  10011, 12, 0x100, -1, 0, 205.9, 175 );--シュンッ
setEffMoveKey( spep_1 + 272, ctsyun2, 205.9, 175 , 0 );
setEffMoveKey( spep_1 + 274, ctsyun2, 201.5, 185.1 , 0 );
setEffMoveKey( spep_1 + 276, ctsyun2, 198.8, 191.2 , 0 );
setEffMoveKey( spep_1 + 278, ctsyun2, 197.9, 193.2 , 0 );
setEffMoveKey( spep_1 + 284, ctsyun2, 197.9, 193.2 , 0 );
--setEffMoveKey( spep_1 + 286, ctsyun2, 197.9, 193.3 , 0 );

setEffScaleKey( spep_1 + 272, ctsyun2, 0.82, 0.82 );
setEffScaleKey( spep_1 + 274, ctsyun2, 1.25, 1.25 );
setEffScaleKey( spep_1 + 276, ctsyun2, 1.5, 1.5 );
setEffScaleKey( spep_1 + 278, ctsyun2, 1.59, 1.59 );
setEffScaleKey( spep_1 + 280, ctsyun2, 1.6, 1.6 );
setEffScaleKey( spep_1 + 282, ctsyun2, 1.62, 1.62 );
setEffScaleKey( spep_1 + 284, ctsyun2, 1.66, 1.66 );
--setEffScaleKey( spep_1 + 286, ctsyun2, 1.71, 1.71 );
--setEffScaleKey( spep_1 + 288, ctsyun2, 1.78, 1.78 );

setEffRotateKey( spep_1 + 272, ctsyun2, 9.8 );
setEffRotateKey( spep_1 + 284, ctsyun2, 9.8 );

setEffAlphaKey( spep_1 + 272, ctsyun2, 255 );
setEffAlphaKey( spep_1 + 278, ctsyun2, 255 );
setEffAlphaKey( spep_1 + 280, ctsyun2, 245 );
setEffAlphaKey( spep_1 + 282, ctsyun2, 214 );
setEffAlphaKey( spep_1 + 284, ctsyun2, 163 );
--setEffAlphaKey( spep_1 + 286, ctsyun2, 92 );
--setEffAlphaKey( spep_1 + 288, ctsyun2, 0 );

ctzudodo = entryEffectLife( spep_1 + 404,  10014, 84, 0x100, -1, 0, 125.8, 270.4 );--ズドドド
setEffMoveKey( spep_1 + 404, ctzudodo, 125.8, 270.4 , 0 );
setEffMoveKey( spep_1 + 406, ctzudodo, 123.2, 269.4 , 0 );
setEffMoveKey( spep_1 + 408, ctzudodo, 126.9, 274.1 , 0 );
setEffMoveKey( spep_1 + 410, ctzudodo, 125.9, 270.3 , 0 );
setEffMoveKey( spep_1 + 412, ctzudodo, 122.6, 274.9 , 0 );
setEffMoveKey( spep_1 + 414, ctzudodo, 127, 285.8 , 0 );
setEffMoveKey( spep_1 + 416, ctzudodo, 127.3, 284.4 , 0 );
setEffMoveKey( spep_1 + 418, ctzudodo, 125.5, 296.8 , 0 );
setEffMoveKey( spep_1 + 420, ctzudodo, 123.7, 294.1 , 0 );
setEffMoveKey( spep_1 + 422, ctzudodo, 125.7, 307 , 0 );
setEffMoveKey( spep_1 + 424, ctzudodo, 130.4, 303.9 , 0 );
setEffMoveKey( spep_1 + 426, ctzudodo, 122.3, 315 , 0 );
setEffMoveKey( spep_1 + 428, ctzudodo, 129.5, 309.9 , 0 );
setEffMoveKey( spep_1 + 430, ctzudodo, 124.7, 323.8 , 0 );
setEffMoveKey( spep_1 + 432, ctzudodo, 121.6, 317.1 , 0 );
setEffMoveKey( spep_1 + 434, ctzudodo, 126.8, 330.5 , 0 );
setEffMoveKey( spep_1 + 436, ctzudodo, 126.9, 324.5 , 0 );
setEffMoveKey( spep_1 + 438, ctzudodo, 130.4, 338.3 , 0 );
setEffMoveKey( spep_1 + 440, ctzudodo, 127.6, 327.1 , 0 );
setEffMoveKey( spep_1 + 442, ctzudodo, 127.5, 343.3 , 0 );
setEffMoveKey( spep_1 + 444, ctzudodo, 126.6, 333.5 , 0 );
setEffMoveKey( spep_1 + 446, ctzudodo, 120.7, 347.8 , 0 );
setEffMoveKey( spep_1 + 448, ctzudodo, 131, 337.6 , 0 );
setEffMoveKey( spep_1 + 450, ctzudodo, 124.7, 350.6 , 0 );
setEffMoveKey( spep_1 + 452, ctzudodo, 130.9, 342.6 , 0 );
setEffMoveKey( spep_1 + 454, ctzudodo, 119.4, 351 , 0 );
setEffMoveKey( spep_1 + 456, ctzudodo, 134.5, 348.9 , 0 );
setEffMoveKey( spep_1 + 458, ctzudodo, 121, 346.9 , 0 );
setEffMoveKey( spep_1 + 460, ctzudodo, 131.3, 347.8 , 0 );
setEffMoveKey( spep_1 + 462, ctzudodo, 118.8, 346.1 , 0 );
setEffMoveKey( spep_1 + 464, ctzudodo, 127.1, 356.9 , 0 );
setEffMoveKey( spep_1 + 466, ctzudodo, 119, 343.8 , 0 );
setEffMoveKey( spep_1 + 468, ctzudodo, 132.7, 357.5 , 0 );
setEffMoveKey( spep_1 + 470, ctzudodo, 125.9, 350.3 , 0 );
setEffMoveKey( spep_1 + 472, ctzudodo, 122.6, 349.1 , 0 );
setEffMoveKey( spep_1 + 474, ctzudodo, 127, 354.3 , 0 );
setEffMoveKey( spep_1 + 476, ctzudodo, 127.3, 347.6 , 0 );
setEffMoveKey( spep_1 + 478, ctzudodo, 125.5, 354.8 , 0 );
setEffMoveKey( spep_1 + 480, ctzudodo, 123.7, 347.3 , 0 );
setEffMoveKey( spep_1 + 482, ctzudodo, 125.7, 355.4 , 0 );
setEffMoveKey( spep_1 + 484, ctzudodo, 130.4, 347.8 , 0 );
setEffMoveKey( spep_1 + 486, ctzudodo, 122.3, 354.6 , 0 );
setEffMoveKey( spep_1 + 488, ctzudodo, 129.5, 345.5 , 0 );

setEffScaleKey( spep_1 + 404, ctzudodo, 1.21, 1.21 );
setEffScaleKey( spep_1 + 406, ctzudodo, 1.82, 1.82 );
setEffScaleKey( spep_1 + 408, ctzudodo, 2.19, 2.19 );
setEffScaleKey( spep_1 + 410, ctzudodo, 2.31, 2.31 );
setEffScaleKey( spep_1 + 488, ctzudodo, 2.31, 2.31 );

setEffRotateKey( spep_1 + 404, ctzudodo, 43.1 );
setEffRotateKey( spep_1 + 488, ctzudodo, 43.1 );

setEffAlphaKey( spep_1 + 404, ctzudodo, 255 );
setEffAlphaKey( spep_1 + 488, ctzudodo, 255 );


setEffShake(spep_1 + 404, ctzudodo, 84 ,20);

ctbako = entryEffectLife( spep_1 + 317,  10021, 27, 0x100, -1, 0, 39.7, 281.5 );--バゴォッ
setEffMoveKey( spep_1 + 317, ctbako, 39.7, 281.5 , 0 );
setEffMoveKey( spep_1 + 320, ctbako, 14.6, 320.6 , 0 );
setEffMoveKey( spep_1 + 322, ctbako, 13.5, 345.1 , 0 );
setEffMoveKey( spep_1 + 324, ctbako, 6.5, 337.6 , 0 );
setEffMoveKey( spep_1 + 326, ctbako, 18.2, 356.4 , 0 );
setEffMoveKey( spep_1 + 328, ctbako, 6.8, 347.5 , 0 );
setEffMoveKey( spep_1 + 330, ctbako, 20.8, 350.5 , 0 );
setEffMoveKey( spep_1 + 332, ctbako, 3.3, 356.3 , 0 );
setEffMoveKey( spep_1 + 334, ctbako, 19.1, 352.7 , 0 );
setEffMoveKey( spep_1 + 336, ctbako, 8.5, 366 , 0 );
setEffMoveKey( spep_1 + 338, ctbako, 10.3, 362.1 , 0 );
setEffMoveKey( spep_1 + 340, ctbako, 2.7, 354.7 , 0 );
setEffMoveKey( spep_1 + 342, ctbako, 14, 381.4 , 0 );
setEffMoveKey( spep_1 + 344, ctbako, 11.5, 396.3 , 0 );

setEffScaleKey( spep_1 + 317, ctbako, 1.88, 1.88 );
setEffScaleKey( spep_1 + 320, ctbako, 2.37, 2.37 );
setEffScaleKey( spep_1 + 322, ctbako, 2.53, 2.53 );
setEffScaleKey( spep_1 + 324, ctbako, 2.55, 2.55 );
setEffScaleKey( spep_1 + 326, ctbako, 2.57, 2.57 );
setEffScaleKey( spep_1 + 328, ctbako, 2.59, 2.59 );
setEffScaleKey( spep_1 + 330, ctbako, 2.62, 2.62 );
setEffScaleKey( spep_1 + 332, ctbako, 2.64, 2.64 );
setEffScaleKey( spep_1 + 334, ctbako, 2.66, 2.66 );
setEffScaleKey( spep_1 + 336, ctbako, 2.68, 2.68 );
setEffScaleKey( spep_1 + 338, ctbako, 2.7, 2.7 );
setEffScaleKey( spep_1 + 340, ctbako, 2.73, 2.73 );
setEffScaleKey( spep_1 + 342, ctbako, 2.82, 2.82 );
setEffScaleKey( spep_1 + 344, ctbako, 2.96, 2.96 );

setEffRotateKey( spep_1 + 317, ctbako, -11.7 );
setEffRotateKey( spep_1 + 320, ctbako, -14.6 );
setEffRotateKey( spep_1 + 322, ctbako, -15.6 );
setEffRotateKey( spep_1 + 344, ctbako, -15.6 );

setEffAlphaKey( spep_1 + 317, ctbako, 255 );
setEffAlphaKey( spep_1 + 338, ctbako, 255 );
setEffAlphaKey( spep_1 + 340, ctbako, 227 );
setEffAlphaKey( spep_1 + 342, ctbako, 142 );
setEffAlphaKey( spep_1 + 344, ctbako, 0 );

setEffShake(spep_1 + 317, ctbako, 27 ,20);

-- ** エフェクト等 ** --
entryFade(spep_1+48,3,2,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_1+118,2,2,3,fcolor_r,fcolor_g,fcolor_b,180);     -- white fade
entryFade(spep_1+180,3,7,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_1+385,3,2,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_1+485,5,2,2,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

SP_dodge = spep_1+3 ; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

pauseAll( SP_dodge, 67);

--キャラクターの固定
setMoveKey(SP_dodge, 1, 32.1, -0.4 , 0 );
setScaleKey(SP_dodge , 1, 1.45, 1.45 );
setRotateKey(SP_dodge,   1, 0);

--キャラクターの固定
setMoveKey(SP_dodge+8, 1, 32.1, -0.4 , 0 );
setScaleKey(SP_dodge+8 , 1, 1.45, 1.45  );
setRotateKey(SP_dodge+8,   1, 0);



setDisp(SP_dodge+9, 0, 0);
setDisp(SP_dodge+9, 1, 0);
--setMoveKey(SP_dodge+9, 1, 0 , 0, 0);
setScaleKey(SP_dodge+9,  1 , 1.34, 1.34 );
setRotateKey(SP_dodge+9,   1, 0);

--setMoveKey(SP_dodge+10, 1, 0 , 0, 0);
setScaleKey(SP_dodge+10,  1 , 1.3 ,1.3);
setRotateKey(SP_dodge+10,   1, 0);


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
--SE
playSe(spep_1 + 15,1010);
playSe(spep_1 + 86,43);
playSe(spep_1 + 119,1010);
playSe(spep_1 + 148,8);
playSe(spep_1 + 245,1010);
playSe(spep_1 + 272,43);
playSe(spep_1 + 319,1011);
--playSe(spep_1 +404,44);
playSe(spep_1 +404,1018);


--次の準備
spep_2=spep_1+490;


--------------------------------------
--カードカットイン(90F)
--------------------------------------

playSe(spep_2,SE_05);
shuchusen9=entryEffectLife(spep_2,906,90,0x100,-1,0,0,0);   -- 集中線
setEffScaleKey(spep_2,shuchusen9,1.6,1.6);

speff2=entryEffect(spep_2,1507,0x80,-1,0,0,0);   -- カード
setEffReplaceTexture(speff2,1,1);
setEffReplaceTexture(speff2,2,0);-- カード差し替え
setEffReplaceTexture(speff2,5,4);-- 技名テクスチャ差し替え

-- ** エフェクト等 ** --
entryFade(spep_2+85,3,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_3=spep_2+90;


------------------------------------------------------
-- 蹴り
------------------------------------------------------
--エフェクトの再生(前)
kick_front=entryEffect(spep_3,SP_04,0x100,-1,0,0,0);

setEffMoveKey(spep_3,kick_front,0,0,0);
setEffMoveKey(spep_3+500,kick_front,0,0,0);
setEffScaleKey(spep_3,kick_front,1.0,1.0);
setEffScaleKey(spep_3+500,kick_front,1.0,1.0);
setEffAlphaKey(spep_3,kick_front,255);
setEffAlphaKey(spep_3+500,kick_front,255);
setEffRotateKey(spep_3,kick_front,0);
setEffRotateKey(spep_3+500,kick_front,0);
setEffShake(spep_3 ,kick_front,192,10);---------------------------------------

--エフェクトの再生(後)
kick_back=entryEffect(spep_3,SP_05,0x80,-1,0,0,0);

setEffMoveKey(spep_3,kick_back,0,0,0);
setEffMoveKey(spep_3+500,kick_back,0,0,0);
setEffScaleKey(spep_3,kick_back,1.0,1.0);
setEffScaleKey(spep_3+500,kick_back,1.0,1.0);
setEffAlphaKey(spep_3,kick_back,255);
setEffAlphaKey(spep_3+500,kick_back,255);
setEffRotateKey(spep_3,kick_back,0);
setEffRotateKey(spep_3+500,kick_back,0);

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 257, 1, 0 );
changeAnime( spep_3 + 0, 1, 106 );
changeAnime( spep_3 + 26, 1, 108 );

setMoveKey( spep_3 + 0, 1, 94.6, 77.1 , 0 );
setMoveKey( spep_3 + 2, 1, 89.1, 62.1 , 0 );
setMoveKey( spep_3 + 4, 1, 96.7, 81.2 , 0 );
setMoveKey( spep_3 + 6, 1, 88.2, 64.3 , 0 );
setMoveKey( spep_3 + 8, 1, 93.3, 75.7 , 0 );
setMoveKey( spep_3 + 10, 1, 101.9, 93.4 , 0 );
setMoveKey( spep_3 + 12, 1, 95.1, 78 , 0 );
setMoveKey( spep_3 + 14, 1, 95.1, 80.6 , 0 );
setMoveKey( spep_3 + 16, 1, 98.9, 88.5 , 0 );
setMoveKey( spep_3 + 18, 1, 107.5, 106.1 , 0 );
setMoveKey( spep_3 + 20, 1, 102.5, 96.9 , 0 );
setMoveKey( spep_3 + 22, 1, 114.1, 122.8 , 0 );
setMoveKey( spep_3 + 25, 1, 112, 115.6 , 0 );
setMoveKey( spep_3 + 26, 1, 40.2, 76.5 , 0 );
setMoveKey( spep_3 + 28, 1, 15.9, -1.1 , 0 );
setMoveKey( spep_3 + 30, 1, 11.2, 0.1 , 0 );
setMoveKey( spep_3 + 32, 1, -11.7, -46.1 , 0 );
setMoveKey( spep_3 + 34, 1, -15, -40.9 , 0 );
setMoveKey( spep_3 + 36, 1, -16.7, -54.5 , 0 );
setMoveKey( spep_3 + 38, 1, -25.7, -71.9 , 0 );
setMoveKey( spep_3 + 40, 1, -24, -77.5 , 0 );
setMoveKey( spep_3 + 42, 1, -44.7, -100.6 , 0 );
setMoveKey( spep_3 + 44, 1, -36.6, -101.4 , 0 );
setMoveKey( spep_3 + 46, 1, -42.6, -99.1 , 0 );
setMoveKey( spep_3 + 48, 1, -47.2, -119.4 , 0 );
setMoveKey( spep_3 + 50, 1, -50.8, -122.6 , 0 );
setMoveKey( spep_3 + 52, 1, -53.8, -127.6 , 0 );
setMoveKey( spep_3 + 54, 1, -61.1, -143 , 0 );
setMoveKey( spep_3 + 56, 1, -58.3, -136.4 , 0 );
setMoveKey( spep_3 + 58, 1, -54.4, -129.3 , 0 );
setMoveKey( spep_3 + 60, 1, -66.1, -151.1 , 0 );
setMoveKey( spep_3 + 62, 1, -69.5, -159.8 , 0 );
setMoveKey( spep_3 + 64, 1, -59, -138.5 , 0 );
setMoveKey( spep_3 + 66, 1, -69.6, -158.4 , 0 );
setMoveKey( spep_3 + 68, 1, -69.7, -158.7 , 0 );
setMoveKey( spep_3 + 70, 1, -71.8, -162.7 , 0 );
setMoveKey( spep_3 + 72, 1, -75, -169.5 , 0 );
setMoveKey( spep_3 + 74, 1, -76.6, -173.6 , 0 );
setMoveKey( spep_3 + 76, 1, -63.3, -146 , 0 );
setMoveKey( spep_3 + 78, 1, -72.5, -165.1 , 0 );
setMoveKey( spep_3 + 80, 1, -74.2, -167.9 , 0 );
setMoveKey( spep_3 + 82, 1, -74.7, -169.6 , 0 );
setMoveKey( spep_3 + 84, 1, -81.2, -182.9 , 0 );
setMoveKey( spep_3 + 86, 1, -74.3, -170.7 , 0 );
setMoveKey( spep_3 + 88, 1, -81.2, -183.4 , 0 );
setMoveKey( spep_3 + 90, 1, -87.5, -196.4 , 0 );
setMoveKey( spep_3 + 92, 1, -83.4, -188.9 , 0 );
setMoveKey( spep_3 + 94, 1, -90.2, -201.6 , 0 );
setMoveKey( spep_3 + 96, 1, -79.7, -181.7 , 0 );
setMoveKey( spep_3 + 98, 1, -86.4, -196.5 , 0 );
setMoveKey( spep_3 + 100, 1, -87.7, -198.7 , 0 );
setMoveKey( spep_3 + 102, 1, -112.8, -251.4 , 0 );
setMoveKey( spep_3 + 104, 1, -132.6, -298.9 , 0 );
setMoveKey( spep_3 + 106, 1, -165.9, -368.2 , 0 );
setMoveKey( spep_3 + 108, 1, -180.6, -398 , 0 );
setMoveKey( spep_3 + 110, 1, -233.2, -505.9 , 0 );
setMoveKey( spep_3 + 112, 1, -300.9, -641.7 , 0 );
setMoveKey( spep_3 + 114, 1, -371.7, -784.4 , 0 );
setMoveKey( spep_3 + 116, 1, -555.8, -1152.5 , 0 );
setMoveKey( spep_3 + 118, 1, -877.4, -1801.3 , 0 );
setMoveKey( spep_3 + 120, 1, 218.8, 400.6 , 0 );
setMoveKey( spep_3 + 122, 1, 218.6, 400.3 , 0 );
setMoveKey( spep_3 + 124, 1, 218, 399.2 , 0 );
setMoveKey( spep_3 + 126, 1, 217, 397.4 , 0 );
setMoveKey( spep_3 + 128, 1, 215.5, 394.9 , 0 );
setMoveKey( spep_3 + 130, 1, 213.7, 391.7 , 0 );
setMoveKey( spep_3 + 132, 1, 211.4, 387.8 , 0 );
setMoveKey( spep_3 + 134, 1, 208.8, 383.2 , 0 );
setMoveKey( spep_3 + 136, 1, 205.7, 377.8 , 0 );
setMoveKey( spep_3 + 138, 1, 202.3, 371.7 , 0 );
setMoveKey( spep_3 + 140, 1, 198.5, 364.9 , 0 );
setMoveKey( spep_3 + 142, 1, 196.4, 359.5 , 0 );
setMoveKey( spep_3 + 144, 1, 194.4, 354 , 0 );
setMoveKey( spep_3 + 146, 1, 192.4, 348.5 , 0 );
setMoveKey( spep_3 + 148, 1, 190.4, 343 , 0 );
setMoveKey( spep_3 + 150, 1, 188.4, 337.5 , 0 );
setMoveKey( spep_3 + 152, 1, 186.5, 332 , 0 );
setMoveKey( spep_3 + 154, 1, 186.6, 330.5 , 0 );
setMoveKey( spep_3 + 156, 1, 186.4, 328.8 , 0 );
setMoveKey( spep_3 + 158, 1, 186.7, 327.3 , 0 );
setMoveKey( spep_3 + 160, 1, 187.8, 327.4 , 0 );
setMoveKey( spep_3 + 162, 1, 190, 330.4 , 0 );
setMoveKey( spep_3 + 164, 1, 195.3, 337.4 , 0 );
setMoveKey( spep_3 + 166, 1, 202.3, 348.2 , 0 );
setMoveKey( spep_3 + 168, 1, 208.2, 358 , 0 );
setMoveKey( spep_3 + 170, 1, 213.1, 364.9 , 0 );
setMoveKey( spep_3 + 172, 1, 216.9, 369.6 , 0 );
setMoveKey( spep_3 + 174, 1, 220.3, 372.8 , 0 );
setMoveKey( spep_3 + 176, 1, 222.1, 375.8 , 0 );
setMoveKey( spep_3 + 178, 1, 224.4, 377.3 , 0 );
setMoveKey( spep_3 + 180, 1, 225.6, 378.8 , 0 );
setMoveKey( spep_3 + 182, 1, 227.3, 379.5 , 0 );
setMoveKey( spep_3 + 184, 1, 228.4, 379.8 , 0 );
setMoveKey( spep_3 + 186, 1, 229.3, 380 , 0 );
setMoveKey( spep_3 + 188, 1, 230.2, 380 , 0 );
setMoveKey( spep_3 + 190, 1, 231.2, 379.2 , 0 );
setMoveKey( spep_3 + 192, 1, 231.6, 379 , 0 );
setMoveKey( spep_3 + 194, 1, 231.8, 378.7 , 0 );
setMoveKey( spep_3 + 196, 1, 232.5, 377.6 , 0 );
setMoveKey( spep_3 + 198, 1, 233.1, 376.3 , 0 );
setMoveKey( spep_3 + 200, 1, 232.8, 375.9 , 0 );
setMoveKey( spep_3 + 202, 1, 233.2, 374.7 , 0 );
setMoveKey( spep_3 + 204, 1, 233.5, 373.4 , 0 );
setMoveKey( spep_3 + 206, 1, 233.7, 372.1 , 0 );
setMoveKey( spep_3 + 208, 1, 233.8, 370.9 , 0 );
setMoveKey( spep_3 + 210, 1, 233.7, 369.6 , 0 );
setMoveKey( spep_3 + 212, 1, 233.7, 368.6 , 0 );
setMoveKey( spep_3 + 214, 1, 231.8, 367.3 , 0 );
setMoveKey( spep_3 + 216, 1, 236.1, 367.5 , 0 );
setMoveKey( spep_3 + 218, 1, 231.3, 364.4 , 0 );
setMoveKey( spep_3 + 220, 1, 236.2, 364.2 , 0 );
setMoveKey( spep_3 + 222, 1, 231.5, 363.8 , 0 );
setMoveKey( spep_3 + 224, 1, 236.5, 363.3 , 0 );
setMoveKey( spep_3 + 226, 1, 232.3, 362.1 , 0 );
setMoveKey( spep_3 + 228, 1, 235, 365.5 , 0 );
setMoveKey( spep_3 + 230, 1, 234.2, 360.5 , 0 );
setMoveKey( spep_3 + 232, 1, 235.7, 365.1 , 0 );
setMoveKey( spep_3 + 234, 1, 233.2, 361.4 , 0 );
setMoveKey( spep_3 + 236, 1, 233.5, 365.8 , 0 );
setMoveKey( spep_3 + 238, 1, 236.2, 361.4 , 0 );
setMoveKey( spep_3 + 240, 1, 232, 363.1 , 0 );
setMoveKey( spep_3 + 242, 1, 235.9, 361.8 , 0 );
setMoveKey( spep_3 + 244, 1, 232, 364.8 , 0 );
setMoveKey( spep_3 + 246, 1, 235.1, 361.8 , 0 );
setMoveKey( spep_3 + 248, 1, 231.4, 363.6 , 0 );
setMoveKey( spep_3 + 250, 1, 234.3, 361.2 , 0 );
setMoveKey( spep_3 + 252, 1, 232.6, 364 , 0 );
setMoveKey( spep_3 + 254, 1, 236.1, 362.5 , 0 );
setMoveKey( spep_3 + 257, 1, 232.2, 364.8 , 0 );
--[[
setMoveKey( spep_3 + 258, 1, 221, 411.3 , 0 );
setMoveKey( spep_3 + 260, 1, 218.7, 418.5 , 0 );
setMoveKey( spep_3 + 262, 1, 221.1, 418.7 , 0 );
setMoveKey( spep_3 + 264, 1, 215.7, 423.4 , 0 );
setMoveKey( spep_3 + 266, 1, 219, 424.4 , 0 );
setMoveKey( spep_3 + 268, 1, 218.2, 430.4 , 0 );
setMoveKey( spep_3 + 270, 1, 214.9, 430.7 , 0 );
setMoveKey( spep_3 + 272, 1, 219.1, 433.9 , 0 );
setMoveKey( spep_3 + 274, 1, 214.6, 441.2 , 0 );
setMoveKey( spep_3 + 276, 1, 215.1, 441.4 , 0 );
setMoveKey( spep_3 + 278, 1, 216.3, 449.7 , 0 );
setMoveKey( spep_3 + 280, 1, 215.2, 450.7 , 0 );
setMoveKey( spep_3 + 282, 1, 214.7, 459.1 , 0 );
setMoveKey( spep_3 + 284, 1, 215, 459.3 , 0 );
setMoveKey( spep_3 + 286, 1, 211.8, 467.5 , 0 );
setMoveKey( spep_3 + 288, 1, 213.9, 470.1 , 0 );
setMoveKey( spep_3 + 290, 1, 209.9, 474.3 , 0 );
setMoveKey( spep_3 + 292, 1, 212.5, 479.7 , 0 );
setMoveKey( spep_3 + 294, 1, 209.1, 481.6 , 0 );
setMoveKey( spep_3 + 296, 1, 210.3, 490.4 , 0 );
setMoveKey( spep_3 + 298, 1, 209.2, 491.4 , 0 );
setMoveKey( spep_3 + 300, 1, 210, 499 , 0 );
setMoveKey( spep_3 + 302, 1, 206.9, 499.8 , 0 );
setMoveKey( spep_3 + 304, 1, 207.1, 508.6 , 0 );
setMoveKey( spep_3 + 306, 1, 206.7, 509 , 0 );
setMoveKey( spep_3 + 308, 1, 205.8, 517.3 , 0 );
setMoveKey( spep_3 + 310, 1, 205.4, 518.1 , 0 );
setMoveKey( spep_3 + 312, 1, 206.2, 526.3 , 0 );
setMoveKey( spep_3 + 314, 1, 202.9, 526.4 , 0 );
setMoveKey( spep_3 + 316, 1, 206.1, 534.5 , 0 );
setMoveKey( spep_3 + 318, 1, 202, 535.9 , 0 );
setMoveKey( spep_3 + 320, 1, 203, 544.2 , 0 );
setMoveKey( spep_3 + 322, 1, 201.7, 533.2 , 0 );
setMoveKey( spep_3 + 324, 1, 197.2, 528.5 , 0 );
setMoveKey( spep_3 + 326, 1, 198.5, 519.8 , 0 );
setMoveKey( spep_3 + 328, 1, 194.9, 516.5 , 0 );
setMoveKey( spep_3 + 330, 1, 191.8, 506.8 , 0 );
setMoveKey( spep_3 + 332, 1, 191.1, 503.5 , 0 );
setMoveKey( spep_3 + 334, 1, 187.6, 493.4 , 0 );
setMoveKey( spep_3 + 336, 1, 187.4, 489.9 , 0 );
setMoveKey( spep_3 + 338, 1, 185.8, 478.7 , 0 );
setMoveKey( spep_3 + 340, 1, 184.1, 476.6 , 0 );
setMoveKey( spep_3 + 342, 1, 180.4, 465.7 , 0 );
setMoveKey( spep_3 + 344, 1, 181.4, 461.1 , 0 );
setMoveKey( spep_3 + 346, 1, 175.4, 453.6 , 0 );
]]--

setScaleKey( spep_3 + 0, 1, 1.25, 1.25 );
setScaleKey( spep_3 + 2, 1, 1.3, 1.3 );
setScaleKey( spep_3 + 4, 1, 1.25, 1.25 );
setScaleKey( spep_3 + 6, 1, 1.27, 1.27 );
setScaleKey( spep_3 + 8, 1, 1.25, 1.25 );
setScaleKey( spep_3 + 10, 1, 1.23, 1.23 );
setScaleKey( spep_3 + 12, 1, 1.26, 1.26 );
setScaleKey( spep_3 + 14, 1, 1.24, 1.24 );
setScaleKey( spep_3 + 16, 1, 1.23, 1.23 );
setScaleKey( spep_3 + 18, 1, 1.21, 1.21 );
setScaleKey( spep_3 + 20, 1, 1.21, 1.21 );
setScaleKey( spep_3 + 22, 1, 1.17, 1.17 );
setScaleKey( spep_3 + 25, 1, 1.19, 1.19 );
setScaleKey( spep_3 + 26, 1, 1.51, 1.51 );
setScaleKey( spep_3 + 28, 1, 1.45, 1.45 );
setScaleKey( spep_3 + 30, 1, 1.54, 1.54 );
setScaleKey( spep_3 + 32, 1, 1.66, 1.66 );
setScaleKey( spep_3 + 34, 1, 1.64, 1.64 );
setScaleKey( spep_3 + 36, 1, 1.7, 1.7 );
setScaleKey( spep_3 + 38, 1, 1.63, 1.63 );
setScaleKey( spep_3 + 40, 1, 1.64, 1.64 );
setScaleKey( spep_3 + 42, 1, 1.75, 1.75 );
setScaleKey( spep_3 + 44, 1, 1.72, 1.72 );
setScaleKey( spep_3 + 46, 1, 1.69, 1.69 );
setScaleKey( spep_3 + 48, 1, 1.8, 1.8 );
setScaleKey( spep_3 + 50, 1, 1.71, 1.71 );
setScaleKey( spep_3 + 52, 1, 1.7, 1.7 );
setScaleKey( spep_3 + 54, 1, 1.75, 1.75 );
setScaleKey( spep_3 + 56, 1, 1.72, 1.72 );
setScaleKey( spep_3 + 58, 1, 1.72, 1.72 );
setScaleKey( spep_3 + 60, 1, 1.74, 1.74 );
setScaleKey( spep_3 + 62, 1, 1.78, 1.78 );
setScaleKey( spep_3 + 64, 1, 1.74, 1.74 );
setScaleKey( spep_3 + 66, 1, 1.75, 1.75 );
setScaleKey( spep_3 + 68, 1, 1.76, 1.76 );
setScaleKey( spep_3 + 70, 1, 1.76, 1.76 );
setScaleKey( spep_3 + 72, 1, 1.79, 1.79 );
setScaleKey( spep_3 + 74, 1, 1.81, 1.81 );
setScaleKey( spep_3 + 76, 1, 1.74, 1.74 );
setScaleKey( spep_3 + 78, 1, 1.79, 1.79 );
setScaleKey( spep_3 + 80, 1, 1.78, 1.78 );
setScaleKey( spep_3 + 82, 1, 1.79, 1.79 );
setScaleKey( spep_3 + 84, 1, 1.82, 1.82 );
setScaleKey( spep_3 + 86, 1, 1.81, 1.81 );
setScaleKey( spep_3 + 88, 1, 1.82, 1.82 );
setScaleKey( spep_3 + 90, 1, 1.84, 1.84 );
setScaleKey( spep_3 + 94, 1, 1.84, 1.84 );
setScaleKey( spep_3 + 96, 1, 1.82, 1.82 );
setScaleKey( spep_3 + 98, 1, 1.86, 1.86 );
setScaleKey( spep_3 + 100, 1, 1.89, 1.89 );
setScaleKey( spep_3 + 102, 1, 2.18, 2.18 );
setScaleKey( spep_3 + 104, 1, 2.67, 2.67 );
setScaleKey( spep_3 + 106, 1, 3.12, 3.12 );
setScaleKey( spep_3 + 108, 1, 3.34, 3.34 );
setScaleKey( spep_3 + 110, 1, 3.7, 3.7 );
setScaleKey( spep_3 + 112, 1, 4.03, 4.03 );
setScaleKey( spep_3 + 114, 1, 4.38, 4.38 );
setScaleKey( spep_3 + 116, 1, 5.15, 5.15 );
setScaleKey( spep_3 + 118, 1, 6.49, 6.49 );
setScaleKey( spep_3 + 120, 1, 0.57, 0.57 );
setScaleKey( spep_3 + 124, 1, 0.57, 0.57 );
setScaleKey( spep_3 + 126, 1, 0.58, 0.58 );
setScaleKey( spep_3 + 128, 1, 0.58, 0.58 );
setScaleKey( spep_3 + 130, 1, 0.59, 0.59 );
setScaleKey( spep_3 + 132, 1, 0.6, 0.6 );
setScaleKey( spep_3 + 134, 1, 0.61, 0.61 );
setScaleKey( spep_3 + 136, 1, 0.62, 0.62 );
setScaleKey( spep_3 + 138, 1, 0.64, 0.64 );
setScaleKey( spep_3 + 140, 1, 0.65, 0.65 );
setScaleKey( spep_3 + 142, 1, 0.67, 0.67 );
setScaleKey( spep_3 + 144, 1, 0.68, 0.68 );
setScaleKey( spep_3 + 146, 1, 0.69, 0.69 );
setScaleKey( spep_3 + 148, 1, 0.7, 0.7 );
setScaleKey( spep_3 + 150, 1, 0.71, 0.71 );
setScaleKey( spep_3 + 152, 1, 0.72, 0.72 );
setScaleKey( spep_3 + 160, 1, 0.72, 0.72 );
setScaleKey( spep_3 + 162, 1, 0.7, 0.7 );
setScaleKey( spep_3 + 164, 1, 0.68, 0.68 );
setScaleKey( spep_3 + 166, 1, 0.67, 0.67 );
setScaleKey( spep_3 + 168, 1, 0.63, 0.63 );
setScaleKey( spep_3 + 170, 1, 0.61, 0.61 );
setScaleKey( spep_3 + 172, 1, 0.6, 0.6 );
setScaleKey( spep_3 + 174, 1, 0.59, 0.59 );
setScaleKey( spep_3 + 176, 1, 0.57, 0.57 );
setScaleKey( spep_3 + 178, 1, 0.57, 0.57 );
setScaleKey( spep_3 + 180, 1, 0.56, 0.56 );
setScaleKey( spep_3 + 182, 1, 0.55, 0.55 );
setScaleKey( spep_3 + 190, 1, 0.55, 0.55 );
setScaleKey( spep_3 + 192, 1, 0.54, 0.54 );
setScaleKey( spep_3 + 198, 1, 0.54, 0.54 );
setScaleKey( spep_3 + 200, 1, 0.53, 0.53 );
setScaleKey( spep_3 + 206, 1, 0.53, 0.53 );
setScaleKey( spep_3 + 208, 1, 0.54, 0.54 );
setScaleKey( spep_3 + 254, 1, 0.54, 0.54 );
setScaleKey( spep_3 + 257, 1, 2.88, 2.88 );
--[[
setScaleKey( spep_3 + 260, 1, 3.57, 3.57 );
setScaleKey( spep_3 + 262, 1, 4.26, 4.26 );
setScaleKey( spep_3 + 264, 1, 4.94, 4.94 );
setScaleKey( spep_3 + 266, 1, 5.63, 5.63 );
setScaleKey( spep_3 + 268, 1, 6.32, 6.32 );
setScaleKey( spep_3 + 270, 1, 7, 7 );
setScaleKey( spep_3 + 272, 1, 7.69, 7.69 );
setScaleKey( spep_3 + 274, 1, 8.66, 8.66 );
setScaleKey( spep_3 + 276, 1, 9.64, 9.64 );
setScaleKey( spep_3 + 278, 1, 10.61, 10.61 );
setScaleKey( spep_3 + 280, 1, 11.59, 11.59 );
setScaleKey( spep_3 + 282, 1, 12.56, 12.56 );
setScaleKey( spep_3 + 284, 1, 13.54, 13.54 );
setScaleKey( spep_3 + 286, 1, 14.51, 14.51 );
setScaleKey( spep_3 + 288, 1, 15.49, 15.49 );
setScaleKey( spep_3 + 290, 1, 16.46, 16.46 );
setScaleKey( spep_3 + 292, 1, 17.44, 17.44 );
setScaleKey( spep_3 + 294, 1, 18.41, 18.41 );
setScaleKey( spep_3 + 296, 1, 19.38, 19.38 );
setScaleKey( spep_3 + 298, 1, 20.36, 20.36 );
setScaleKey( spep_3 + 300, 1, 21.33, 21.33 );
setScaleKey( spep_3 + 302, 1, 22.31, 22.31 );
setScaleKey( spep_3 + 304, 1, 23.28, 23.28 );
setScaleKey( spep_3 + 306, 1, 24.26, 24.26 );
setScaleKey( spep_3 + 308, 1, 25.23, 25.23 );
setScaleKey( spep_3 + 310, 1, 26.21, 26.21 );
setScaleKey( spep_3 + 312, 1, 27.18, 27.18 );
setScaleKey( spep_3 + 314, 1, 28.16, 28.16 );
setScaleKey( spep_3 + 316, 1, 29.13, 29.13 );
setScaleKey( spep_3 + 318, 1, 30.11, 30.11 );
setScaleKey( spep_3 + 320, 1, 31.08, 31.08 );
setScaleKey( spep_3 + 322, 1, 31.63, 31.63 );
setScaleKey( spep_3 + 324, 1, 32.17, 32.17 );
setScaleKey( spep_3 + 326, 1, 32.72, 32.72 );
setScaleKey( spep_3 + 328, 1, 33.26, 33.26 );
setScaleKey( spep_3 + 330, 1, 33.81, 33.81 );
setScaleKey( spep_3 + 332, 1, 34.35, 34.35 );
setScaleKey( spep_3 + 334, 1, 34.9, 34.9 );
setScaleKey( spep_3 + 336, 1, 35.44, 35.44 );
setScaleKey( spep_3 + 338, 1, 35.99, 35.99 );
setScaleKey( spep_3 + 340, 1, 36.53, 36.53 );
setScaleKey( spep_3 + 342, 1, 37.08, 37.08 );
setScaleKey( spep_3 + 344, 1, 37.62, 37.62 );
setScaleKey( spep_3 + 346, 1, 38.17, 38.17 );
]]--

setRotateKey( spep_3 + 0, 1, 41.7 );
setRotateKey( spep_3 + 2, 1, 42.2 );
setRotateKey( spep_3 + 4, 1, 42.6 );
setRotateKey( spep_3 + 6, 1, 43.1 );
setRotateKey( spep_3 + 8, 1, 43.5 );
setRotateKey( spep_3 + 10, 1, 44 );
setRotateKey( spep_3 + 12, 1, 44.4 );
setRotateKey( spep_3 + 14, 1, 44.9 );
setRotateKey( spep_3 + 16, 1, 45.3 );
setRotateKey( spep_3 + 18, 1, 45.8 );
setRotateKey( spep_3 + 20, 1, 46.2 );
setRotateKey( spep_3 + 22, 1, 46.7 );
setRotateKey( spep_3 + 25, 1, 47.1 );
setRotateKey( spep_3 + 26, 1, 110.1 );
setRotateKey( spep_3 + 90, 1, 110.1 );
setRotateKey( spep_3 + 92, 1, 110 );
setRotateKey( spep_3 + 124, 1, 110 );
setRotateKey( spep_3 + 126, 1, 109.9 );
setRotateKey( spep_3 + 128, 1, 109.9 );
setRotateKey( spep_3 + 130, 1, 109.8 );
setRotateKey( spep_3 + 132, 1, 109.7 );
setRotateKey( spep_3 + 134, 1, 109.7 );
setRotateKey( spep_3 + 136, 1, 109.6 );
setRotateKey( spep_3 + 138, 1, 109.4 );
setRotateKey( spep_3 + 140, 1, 109.3 );
setRotateKey( spep_3 + 142, 1, 109.1 );
setRotateKey( spep_3 + 144, 1, 109 );
setRotateKey( spep_3 + 146, 1, 108.8 );
setRotateKey( spep_3 + 148, 1, 108.6 );
setRotateKey( spep_3 + 150, 1, 108.5 );
setRotateKey( spep_3 + 152, 1, 108.3 );
setRotateKey( spep_3 + 154, 1, 108.1 );
setRotateKey( spep_3 + 156, 1, 107.9 );
setRotateKey( spep_3 + 158, 1, 107.6 );
setRotateKey( spep_3 + 160, 1, 107.4 );
setRotateKey( spep_3 + 162, 1, 107.1 );
setRotateKey( spep_3 + 164, 1, 106.9 );
setRotateKey( spep_3 + 166, 1, 106.6 );
setRotateKey( spep_3 + 168, 1, 106.3 );
setRotateKey( spep_3 + 170, 1, 106 );
setRotateKey( spep_3 + 172, 1, 105.7 );
setRotateKey( spep_3 + 174, 1, 105.4 );
setRotateKey( spep_3 + 176, 1, 105.1 );
setRotateKey( spep_3 + 178, 1, 104.8 );
setRotateKey( spep_3 + 180, 1, 104.5 );
setRotateKey( spep_3 + 182, 1, 104.2 );
setRotateKey( spep_3 + 184, 1, 103.8 );
setRotateKey( spep_3 + 186, 1, 103.5 );
setRotateKey( spep_3 + 188, 1, 103.2 );
setRotateKey( spep_3 + 190, 1, 102.9 );
setRotateKey( spep_3 + 192, 1, 102.5 );
setRotateKey( spep_3 + 194, 1, 102.2 );
setRotateKey( spep_3 + 196, 1, 101.9 );
setRotateKey( spep_3 + 198, 1, 101.6 );
setRotateKey( spep_3 + 200, 1, 101.3 );
setRotateKey( spep_3 + 202, 1, 101 );
setRotateKey( spep_3 + 204, 1, 100.8 );
setRotateKey( spep_3 + 206, 1, 100.5 );
setRotateKey( spep_3 + 208, 1, 100.3 );
setRotateKey( spep_3 + 210, 1, 100 );
setRotateKey( spep_3 + 212, 1, 99.8 );
setRotateKey( spep_3 + 214, 1, 99.6 );
setRotateKey( spep_3 + 216, 1, 99.5 );
setRotateKey( spep_3 + 218, 1, 99.3 );
setRotateKey( spep_3 + 220, 1, 99.2 );
setRotateKey( spep_3 + 222, 1, 99.1 );
setRotateKey( spep_3 + 224, 1, 99 );
setRotateKey( spep_3 + 226, 1, 98.9 );
setRotateKey( spep_3 + 228, 1, 98.8 );
setRotateKey( spep_3 + 257, 1, 98.8 );
--setRotateKey( spep_3 + 258, 1, 12 );

setShakeChara(spep_3 + 26, 1, 104,15);----------------------------------


--文字エントリー
ctbaki2 = entryEffectLife( spep_3 + 26,  10020, 18, 0x100, -1, 0, 104.8, -170.1 );
setEffMoveKey( spep_3 + 26, ctbaki2, 104.8, -170.1 , 0 );
setEffMoveKey( spep_3 + 28, ctbaki2, 112.2, -220.4 , 0 );
setEffMoveKey( spep_3 + 30, ctbaki2, 120.7, -240.4 , 0 );
setEffMoveKey( spep_3 + 32, ctbaki2, 117.3, -244.6 , 0 );
setEffMoveKey( spep_3 + 34, ctbaki2, 129.3, -261.1 , 0 );
setEffMoveKey( spep_3 + 36, ctbaki2, 115.6, -253.3 , 0 );
setEffMoveKey( spep_3 + 38, ctbaki2, 131.5, -253.9 , 0 );
setEffMoveKey( spep_3 + 40, ctbaki2, 124.9, -259.3 , 0 );
setEffMoveKey( spep_3 + 42, ctbaki2, 124.3, -278.3 , 0 );
setEffMoveKey( spep_3 + 44, ctbaki2, 125.9, -285.5 , 0 );

setEffScaleKey( spep_3 + 26, ctbaki2, 1.64, 1.64 );
setEffScaleKey( spep_3 + 28, ctbaki2, 2, 2 );
setEffScaleKey( spep_3 + 30, ctbaki2, 2.12, 2.12 );
setEffScaleKey( spep_3 + 32, ctbaki2, 2.17, 2.17 );
setEffScaleKey( spep_3 + 34, ctbaki2, 2.2, 2.2 );
setEffScaleKey( spep_3 + 36, ctbaki2, 2.23, 2.23 );
setEffScaleKey( spep_3 + 38, ctbaki2, 2.24, 2.24 );
setEffScaleKey( spep_3 + 40, ctbaki2, 2.25, 2.25 );
setEffScaleKey( spep_3 + 42, ctbaki2, 2.4, 2.4 );
setEffScaleKey( spep_3 + 44, ctbaki2, 2.45, 2.45 );

setEffRotateKey( spep_3 + 26, ctbaki2, 0.5 );
setEffRotateKey( spep_3 + 44, ctbaki2, 0.5 );

setEffAlphaKey( spep_3 + 26, ctbaki2, 255 );
setEffAlphaKey( spep_3 + 40, ctbaki2, 255 );
setEffAlphaKey( spep_3 + 42, ctbaki2, 64 );
setEffAlphaKey( spep_3 + 44, ctbaki2, 0 );

setEffShake(spep_3 + 26, ctbaki2, 18 ,20);

--集中線
shuchu3 = entryEffectLife( spep_3 + 164,  906, 326, 0x100, -1, 0, 200.4, 44.5 );
setEffMoveKey( spep_3 + 164, shuchu3, 200.4, 44.5 , 0 );
setEffMoveKey( spep_3 + 490, shuchu3, 200.9, 299.7 , 0 );

setEffScaleKey( spep_3 + 164, shuchu3, 1.42, 1.43 );
setEffScaleKey( spep_3 + 166, shuchu3, 1.58, 1.6 );
setEffScaleKey( spep_3 + 168, shuchu3, 1.74, 1.76 );
setEffScaleKey( spep_3 + 170, shuchu3, 1.9, 1.93 );
setEffScaleKey( spep_3 + 172, shuchu3, 2.07, 2.09 );
setEffScaleKey( spep_3 + 174, shuchu3, 2.23, 2.26 );
setEffScaleKey( spep_3 + 176, shuchu3, 2.39, 2.42 );
setEffScaleKey( spep_3 + 490, shuchu3, 2.39, 2.42 );

setEffRotateKey( spep_3 + 164, shuchu3, 180 );
setEffRotateKey( spep_3 + 490, shuchu3, 180 );

setEffAlphaKey( spep_3 + 164, shuchu3, 36 );
setEffAlphaKey( spep_3 + 166, shuchu3, 73 );
setEffAlphaKey( spep_3 + 168, shuchu3, 109 );
setEffAlphaKey( spep_3 + 170, shuchu3, 146 );
setEffAlphaKey( spep_3 + 172, shuchu3, 182 );
setEffAlphaKey( spep_3 + 174, shuchu3, 219 );
setEffAlphaKey( spep_3 + 176, shuchu3, 255 );
setEffAlphaKey( spep_3 + 490, shuchu3, 255 );

--SE
--playSe(spep_3 + 26,1018);
playSe(spep_3 + 26,1011);
playSe(spep_3 + 120,1018);
playSe(spep_3 + 240,SE_10);
playSe(spep_3 +320,1062);

-- ** エフェクト等 ** --
entryFade(spep_3+113,4,3,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

-- ダメージ表示
dealDamage(spep_3+290);
entryFade( spep_3+480, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_3+490);


else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 突進
------------------------------------------------------

spep_0=0;



--エフェクトの再生
rush=entryEffectLife(spep_0,SP_01x,92,0x100,-1,0,0,0);

setEffMoveKey(spep_0,rush,0,0,0);
setEffMoveKey(spep_0+92,rush,0,0,0);
setEffScaleKey(spep_0,rush,-1.0,1.0);
setEffScaleKey(spep_0+92,rush,-1.0,1.0);
setEffAlphaKey(spep_0,rush,255);
setEffAlphaKey(spep_0+92,rush,255);
setEffRotateKey(spep_0,rush,0);
setEffRotateKey(spep_0+92,rush,0);

--集中線
shuchusen1 = entryEffectLife( spep_0 ,  906, 92, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 , shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 92, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 , shuchusen1, 1.71, 1.76 );
setEffScaleKey( spep_0 + 92, shuchusen1, 1.71, 1.76 );

setEffRotateKey( spep_0 , shuchusen1, 0 );
setEffRotateKey( spep_0 + 92, shuchusen1, 0 );

setEffAlphaKey( spep_0 , shuchusen1, 0 );
setEffAlphaKey( spep_0+15 , shuchusen1, 0 );
setEffAlphaKey( spep_0+16 , shuchusen1, 255 );
setEffAlphaKey( spep_0 + 92, shuchusen1, 255 );



--顔カットイン
--speff=entryEffect(spep_0+3,1504,0x100,-1,0,0,0);  --カットイン(顔)
--setEffReplaceTexture(speff,3,2);  --カットイン差し替え
--speff1=entryEffect(spep_0+3,1505,0x100,-1,0,0,0);  --カットイン(セリフ)
--setEffReplaceTexture(speff1,4,5);  --セリフカットイン差し替え

--文字エントリー
--setEffMoveKey(spep_0+16,ctgogo,28.9, 521.8,0);
--setEffMoveKey(spep_0+85,ctgogo,28.9, 521.8,0);
--setEffScaleKey(spep_0+16, ctgogo, -0.7, 0.7);
--setEffScaleKey(spep_0+85, ctgogo, -0.7, 0.7);

--SE
playSe( spep_0+16, SE_04); --ゴゴゴ


-- ** エフェクト等 ** --
entryFade(spep_0,0,1,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_0+84,4,5,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--黒背景
entryFadeBg(spep_0, 0, 92, 0, 0, 0, 0, 180);  -- 黒　背景

--次の準備
spep_1=spep_0+93;


------------------------------------------------------
-- 格闘
------------------------------------------------------
--エフェクトの再生(前)
fighi_front=entryEffectLife(spep_1,SP_02x,482,0x100,-1,0,0,0);

setEffMoveKey(spep_1,fighi_front,0,0,0);
setEffMoveKey(spep_1+482,fighi_front,0,0,0);
setEffScaleKey(spep_1,fighi_front,1.0,1.0);
setEffScaleKey(spep_1+482,fighi_front,1.0,1.0);
setEffAlphaKey(spep_1,fighi_front,255);
setEffAlphaKey(spep_1+482,fighi_front,255);
setEffRotateKey(spep_1,fighi_front,0);
setEffRotateKey(spep_1+482,fighi_front,0);

--流線
ryusen1= entryEffectLife( spep_1 + 15, 914, 35, 0x80, -1, 0, 0, 0 );--横
setEffMoveKey( spep_1 + 15, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_1 + 50, ryusen1, -1334.8, 10.2 , 0 );

setEffScaleKey( spep_1 + 15, ryusen1, 4.3, 1.13 );
setEffScaleKey( spep_1 + 50, ryusen1, 4.3, 1.13 );

setEffRotateKey( spep_1 + 15, ryusen1, 0 );
setEffRotateKey( spep_1 + 50, ryusen1, 0 );

setEffAlphaKey( spep_1 + 15, ryusen1, 150 );
setEffAlphaKey( spep_1 + 50, ryusen1, 150 );


ryusen2 = entryEffectLife( spep_1 ,  921, 118, 0x80, -1, 0, 33.6, -10.9 );

setEffMoveKey( spep_1 , ryusen2, 0,33.6, -10.9 );
setEffMoveKey( spep_1 + 118, ryusen2, 0,33.6, -10.9  );

setEffScaleKey( spep_1 , ryusen2, 1.12, 1.11 );
setEffScaleKey( spep_1 + 118, ryusen2, 1.12, 1.11 );


setEffRotateKey( spep_1, ryusen2, 0 );
setEffRotateKey( spep_1 + 118, ryusen2, 0 );


setEffAlphaKey( spep_1 , ryusen2, 0 );
setEffAlphaKey( spep_1 + 51, ryusen2, 0 );
setEffAlphaKey( spep_1 + 52, ryusen2, 180 );
setEffAlphaKey( spep_1 + 118, ryusen2, 180 );

ryuusen3 = entryEffectLife( spep_1,  921, 244, 0x80, -1, 491.8, 18.4 , 0 );
setEffMoveKey( spep_1 , ryuusen3, 511.8, 18.4 , 0 );
setEffMoveKey( spep_1 + 244, ryuusen3, 511.8, 18.4 , 0 );

setEffScaleKey( spep_1 , ryuusen3, 1.24, 1.56 );
setEffScaleKey( spep_1 + 189, ryuusen3, 1.24, 1.56 );
setEffScaleKey( spep_1 +190, ryuusen3, 1.64, 1.76 );
setEffScaleKey( spep_1 + 244, ryuusen3, 1.64, 1.76 );

setEffRotateKey( spep_1 , ryuusen3, 95 );
setEffRotateKey( spep_1 + 189, ryuusen3, 95 );
setEffRotateKey( spep_1+190 , ryuusen3, 95 );
setEffRotateKey( spep_1 + 244, ryuusen3, 95 );


setEffAlphaKey( spep_1 , ryuusen3, 0 );
setEffAlphaKey( spep_1 + 118, ryuusen3, 0 );
setEffAlphaKey( spep_1 + 119, ryuusen3, 180 );
setEffAlphaKey( spep_1 + 234, ryuusen3, 180 );
setEffAlphaKey( spep_1 + 236, ryuusen3, 173 );
setEffAlphaKey( spep_1 + 238, ryuusen3, 170 );
setEffAlphaKey( spep_1 + 240, ryuusen3, 100 );
setEffAlphaKey( spep_1 + 242, ryuusen3, 42 );
setEffAlphaKey( spep_1 + 244, ryuusen3, 0 );



ryusen4 = entryEffectLife( spep_1 + 390, 914, 98, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_1 + 390, ryusen4, 0, 0 , 0 );
setEffMoveKey( spep_1 + 488, ryusen4, 0, 0, 0 );

setEffScaleKey( spep_1 + 390, ryusen4, 4.3, 1.13 );
setEffScaleKey( spep_1 + 488, ryusen4, 4.3, 1.13 );

setEffRotateKey( spep_1 + 390, ryusen4, -90 );
setEffRotateKey( spep_1 + 488, ryusen4, -90 );

setEffAlphaKey( spep_1 + 390, ryusen4, 150 );
setEffAlphaKey( spep_1 + 488, ryusen4, 150 );


--エフェクトの再生(後)
fighi_back=entryEffectLife(spep_1,SP_03x,490,0x80,-1,0,0,0);

setEffMoveKey(spep_1,fighi_back,0,0,0);
setEffMoveKey(spep_1+490,fighi_back,0,0,0);
setEffScaleKey(spep_1,fighi_back,1.0,1.0);
setEffScaleKey(spep_1+490,fighi_back,1.0,1.0);
setEffAlphaKey(spep_1,fighi_back,255);
setEffAlphaKey(spep_1+490,fighi_back,255);
setEffRotateKey(spep_1,fighi_back,0);
setEffRotateKey(spep_1+490,fighi_back,0);
setEffShake(spep_1+119 ,fighi_back,75,10);---------------------------------------

--集中線
shuchuse2 = entryEffectLife( spep_1 + 238,  906, 116, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_1 + 238, shuchuse2, 0, 0 , 0 );
setEffMoveKey( spep_1 + 354, shuchuse2, 0, 0 , 0 );

setEffScaleKey( spep_1 + 238, shuchuse2, 1.23, 1.24 );
setEffScaleKey( spep_1 + 240, shuchuse2, 1.25, 1.27 );
setEffScaleKey( spep_1 + 242, shuchuse2, 1.27, 1.29 );
setEffScaleKey( spep_1 + 244, shuchuse2, 1.29, 1.31 );
setEffScaleKey( spep_1 + 246, shuchuse2, 1.32, 1.33 );
setEffScaleKey( spep_1 + 248, shuchuse2, 1.34, 1.35 );
setEffScaleKey( spep_1 + 250, shuchuse2, 1.36, 1.38 );
setEffScaleKey( spep_1 + 252, shuchuse2, 1.38, 1.4 );
setEffScaleKey( spep_1 + 254, shuchuse2, 1.4, 1.42 );
setEffScaleKey( spep_1 + 256, shuchuse2, 1.42, 1.44 );
setEffScaleKey( spep_1 + 258, shuchuse2, 1.45, 1.46 );
setEffScaleKey( spep_1 + 260, shuchuse2, 1.47, 1.49 );
setEffScaleKey( spep_1 + 262, shuchuse2, 1.49, 1.51 );
setEffScaleKey( spep_1 + 264, shuchuse2, 1.51, 1.53 );
setEffScaleKey( spep_1 + 266, shuchuse2, 1.53, 1.55 );
setEffScaleKey( spep_1 + 268, shuchuse2, 1.55, 1.57 );
setEffScaleKey( spep_1 + 270, shuchuse2, 1.58, 1.59 );
setEffScaleKey( spep_1 + 272, shuchuse2, 1.6, 1.62 );
setEffScaleKey( spep_1 + 274, shuchuse2, 1.62, 1.64 );
setEffScaleKey( spep_1 + 276, shuchuse2, 1.64, 1.66 );
setEffScaleKey( spep_1 + 278, shuchuse2, 1.66, 1.68 );
setEffScaleKey( spep_1 + 280, shuchuse2, 1.68, 1.7 );
setEffScaleKey( spep_1 + 282, shuchuse2, 1.71, 1.73 );
setEffScaleKey( spep_1 + 284, shuchuse2, 1.73, 1.75 );
setEffScaleKey( spep_1 + 286, shuchuse2, 1.75, 1.77 );
setEffScaleKey( spep_1 + 288, shuchuse2, 1.5, 1.52 );
setEffScaleKey( spep_1 + 290, shuchuse2, 1.25, 1.27 );
setEffScaleKey( spep_1 + 348, shuchuse2, 1.25, 1.27 );
setEffScaleKey( spep_1 + 350, shuchuse2, 1.4, 1.42 );
setEffScaleKey( spep_1 + 352, shuchuse2, 1.56, 1.58 );
setEffScaleKey( spep_1 + 354, shuchuse2, 1.71, 1.73 );

setEffRotateKey( spep_1 + 238, shuchuse2, 0 );
setEffRotateKey( spep_1 + 354, shuchuse2, 0 );

setEffAlphaKey( spep_1 + 238, shuchuse2, 255 );
setEffAlphaKey( spep_1 + 348, shuchuse2, 255 );
setEffAlphaKey( spep_1 + 350, shuchuse2, 170 );
setEffAlphaKey( spep_1 + 352, shuchuse2, 85 );
setEffAlphaKey( spep_1 + 354, shuchuse2, 0 );




--黒背景
entryFadeBg(spep_1, 0, 490, 0, 0, 0, 0, 200);  -- 黒　背景




--敵の動き
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 490, 1, 0 );
changeAnime( spep_1 + 0, 1, 101 );
changeAnime( spep_1 + 15, 1, 108 );
changeAnime( spep_1 + 119, 1, 7 );
changeAnime( spep_1 + 245, 1, 106 );
changeAnime( spep_1 + 320, 1, 8 );
changeAnime( spep_1 + 393,  1, 105 );
changeAnime( spep_1 +  395,  1, 106 );

setMoveKey( spep_1 + 0, 1, 32.1, -0.4 , 0 );
setMoveKey( spep_1 + 10, 1, 32.1, -0.4 , 0 );
setMoveKey( spep_1 + 14, 1, 29.5, -1.9 , 0 );
setMoveKey( spep_1 + 15, 1, 75.1, 17 , 0 );
setMoveKey( spep_1 + 16, 1, 89.4, 13.4 , 0 );
setMoveKey( spep_1 + 18, 1, 86.9, 18.4 , 0 );
setMoveKey( spep_1 + 20, 1, 99, 11.3 , 0 );
setMoveKey( spep_1 + 22, 1, 111.4, 18 , 0 );
setMoveKey( spep_1 + 24, 1, 121.4, 13.7 , 0 );
setMoveKey( spep_1 + 26, 1, 143, 13.7 , 0 );
setMoveKey( spep_1 + 28, 1, 344.5, 17 , 0 );
setMoveKey( spep_1 + 30, 1, 524.8, 20 , 0 );
setMoveKey( spep_1 + 32, 1, 683.9, 22.7 , 0 );
setMoveKey( spep_1 + 34, 1, 821.7, 25 , 0 );
setMoveKey( spep_1 + 36, 1, 938.4, 26.9 , 0 );
setMoveKey( spep_1 + 38, 1, 1033.9, 28.5 , 0 );
setMoveKey( spep_1 + 40, 1, 1108.1, 29.7 , 0 );
setMoveKey( spep_1 + 42, 1, 1161.1, 30.6 , 0 );
setMoveKey( spep_1 + 44, 1, 1192.9, 31.2 , 0 );
setMoveKey( spep_1 + 47, 1, 1203.5, 31.3 , 0 );
setMoveKey( spep_1 + 51, 1, 1203.5, 31.3 , 0 );


setMoveKey( spep_1 + 52, 1, -499, 261.4 , 0 );
--setMoveKey( spep_1 + 54, 1, -538.2, 281.6 , 0 );
--setMoveKey( spep_1 + 56, 1, -527, 280.3 , 0 );
setMoveKey( spep_1 + 58, 1, -477.9, 265.5 , 0 );
setMoveKey( spep_1 + 60, 1, -422.6, 249.4 , 0 );
setMoveKey( spep_1 + 62, 1, -357.5, 230.1 , 0 );
setMoveKey( spep_1 + 64, 1, -217.1, 177.4 , 0 );
setMoveKey( spep_1 + 66, 1, -99.9, 133.1 , 0 );
setMoveKey( spep_1 + 68, 1, -127.2, 145.9 , 0 );
setMoveKey( spep_1 + 70, 1, -88, 128.3 , 0 );
setMoveKey( spep_1 + 72, 1, -124.9, 146.1 , 0 );
setMoveKey( spep_1 + 74, 1, -77.5, 125.3 , 0 );
setMoveKey( spep_1 + 76, 1, -95.9, 135.3 , 0 );
setMoveKey( spep_1 + 78, 1, -74.1, 126.7 , 0 );
setMoveKey( spep_1 + 80, 1, -75.6, 129.5 , 0 );
setMoveKey( spep_1 + 82, 1, -70.7, 129.4 , 0 );
setMoveKey( spep_1 + 84, 1, -74.6, 133.9 , 0 );
setMoveKey( spep_1 + 86, 1, -45.9, 122.6 , 0 );
setMoveKey( spep_1 + 88, 1, -24.9, 114.3 , 0 );
setMoveKey( spep_1 + 90, 1, -56, 131.6 , 0 );
setMoveKey( spep_1 + 92, 1, -44.7, 127.3 , 0 );
setMoveKey( spep_1 + 94, 1, -40.5, 125.8 , 0 );
setMoveKey( spep_1 + 96, 1, -11.9, 111.4 , 0 );
setMoveKey( spep_1 + 98, 1, -38.6, 124.3 , 0 );
setMoveKey( spep_1 + 100, 1, -6.3, 106.3 , 0 );
setMoveKey( spep_1 + 102, 1, -21.9, 111.8 , 0 );
setMoveKey( spep_1 + 104, 1, -29.9, 113.3 , 0 );
setMoveKey( spep_1 + 106, 1, -29.9, 110.7 , 0 );
setMoveKey( spep_1 + 108, 1, -29.6, 108 , 0 );
setMoveKey( spep_1 + 110, 1, -26.6, 103.4 , 0 );
setMoveKey( spep_1 + 112, 1, -18.9, 95 , 0 );
setMoveKey( spep_1 + 115, 1, -7.8, 82.8 , 0 );

setMoveKey( spep_1 + 116, 1, 3.7, 66.6 , 0 );
setMoveKey( spep_1 + 118, 1, 17.7, 43.6 , 0 );
--setMoveKey( spep_1 + 121, 1, 55.3, -3.3 , 0 );
--setMoveKey( spep_1 + 122, 1, 10.6, -81 , 0 );
setMoveKey( spep_1 + 119, 1, -32.6, 9.2 , 0 );
setMoveKey( spep_1 + 124, 1, -32.6, 9.2 , 0 );
setMoveKey( spep_1 + 126, 1, -37.2, 21.4 , 0 );
setMoveKey( spep_1 + 128, 1, -56.9, 40.8 , 0 );
setMoveKey( spep_1 + 130, 1, -88.4, 100.7 , 0 );
setMoveKey( spep_1 + 132, 1, -88.4, 89.5 , 0 );
setMoveKey( spep_1 + 134, 1, -114.5, 121.7 , 0 );
setMoveKey( spep_1 + 136, 1, -156.1, 185.4 , 0 );
setMoveKey( spep_1 + 136, 1, -156.1, 235.4 , 0 );
setMoveKey( spep_1 + 138, 1, -129.5, 137.3 , 0 );
setMoveKey( spep_1 + 140, 1, -117.7, 103 , 0 );
setMoveKey( spep_1 + 142, 1, -65, 14.5 , 0 );
setMoveKey( spep_1 + 144, 1, -83.8, 36.8 , 0 );
setMoveKey( spep_1 + 146, 1, -55.9, -11.9 , 0 );
setMoveKey( spep_1 + 148, 1, -51.9, -18.1 , 0 );
setMoveKey( spep_1 + 150, 1, -49.2, -27.8 , 0 );
setMoveKey( spep_1 + 152, 1, -80.1, 24.7 , 0 );
setMoveKey( spep_1 + 154, 1, -76.8, 12.8 , 0 );
setMoveKey( spep_1 + 156, 1, -74.3, 14.7 , 0 );
setMoveKey( spep_1 + 158, 1, -101.5, 52.9 , 0 );
setMoveKey( spep_1 + 160, 1, -112.9, 75.8 , 0 );
setMoveKey( spep_1 + 162, 1, -119.7, 80.8 , 0 );
setMoveKey( spep_1 + 164, 1, -119, 85.5 , 0 );
setMoveKey( spep_1 + 166, 1, -122, 84.1 , 0 );
setMoveKey( spep_1 + 168, 1, -117.2, 80.7 , 0 );
setMoveKey( spep_1 + 170, 1, -141.6, 115.3 , 0 );
setMoveKey( spep_1 + 172, 1, -155.4, 138.5 , 0 );
setMoveKey( spep_1 + 174, 1, -172.4, 161 , 0 );
setMoveKey( spep_1 + 176, 1, -191.4, 191.9 , 0 );
setMoveKey( spep_1 + 178, 1, -262, 298.6 , 0 );
setMoveKey( spep_1 + 180, 1, -300.3, 359.3 , 0 );
setMoveKey( spep_1 + 182, 1, -344.9, 421.6 , 0 );
setMoveKey( spep_1 + 185, 1, -419.8, 636 , 0 );
setMoveKey( spep_1 + 186, 1, 262.4, -840.3 , 0 );
setMoveKey( spep_1 + 188, 1, 211.6, -708.5 , 0 );
setMoveKey( spep_1 + 190, 1, 183.7, -626.7 , 0 );
setMoveKey( spep_1 + 192, 1, 143.2, -527.5 , 0 );
setMoveKey( spep_1 + 194, 1, 120.7, -464.2 , 0 );
setMoveKey( spep_1 + 196, 1, 91.2, -390.4 , 0 );
setMoveKey( spep_1 + 198, 1, 90.8, -384.3 , 0 );
setMoveKey( spep_1 + 200, 1, 67.2, -327.6 , 0 );
setMoveKey( spep_1 + 202, 1, 77.7, -353.9 , 0 );
setMoveKey( spep_1 + 204, 1, 67.6, -326.7 , 0 );
setMoveKey( spep_1 + 206, 1, 78, -346.5 , 0 );
setMoveKey( spep_1 + 208, 1, 68.2, -328.3 , 0 );
setMoveKey( spep_1 + 210, 1, 69.9, -327.3 , 0 );
setMoveKey( spep_1 + 212, 1, 62.9, -308.6 , 0 );
setMoveKey( spep_1 + 214, 1, 73.1, -333.8 , 0 );
setMoveKey( spep_1 + 216, 1, 60.1, -302.7 , 0 );
setMoveKey( spep_1 + 218, 1, 61, -302.9 , 0 );
setMoveKey( spep_1 + 220, 1, 64.9, -308.5 , 0 );
setMoveKey( spep_1 + 222, 1, 65.9, -312.9 , 0 );
setMoveKey( spep_1 + 224, 1, 66, -311.7 , 0 );
setMoveKey( spep_1 + 226, 1, 65.4, -312.5 , 0 );
setMoveKey( spep_1 + 228, 1, 53.3, -276.2 , 0 );
setMoveKey( spep_1 + 230, 1, 53.2, -281.1 , 0 );
setMoveKey( spep_1 + 232, 1, 59.4, -288.2 , 0 );
setMoveKey( spep_1 + 234, 1, 50.7, -272.1 , 0 );
setMoveKey( spep_1 + 236, 1, 40.9, -240 , 0 );
setMoveKey( spep_1 + 238, 1, 41.5, -246.8 , 0 );
setMoveKey( spep_1 + 240, 1, 39.9, -234.8 , 0 );
setMoveKey( spep_1 + 242, 1, 40, -235 , 0 );
setMoveKey( spep_1 + 244, 1, 34, -219.6 , 0 );
--setMoveKey( spep_1 + 247, 1, 12.3, -182.1 , 0 );---
setMoveKey( spep_1 + 245, 1, -37.9, -65.4 , 0 );
setMoveKey( spep_1 + 248, 1, -37.9, -65.4 , 0 );
setMoveKey( spep_1 + 250, 1, -39.8, -30.8 , 0 );
setMoveKey( spep_1 + 252, 1, -23, 8.6 , 0 );
setMoveKey( spep_1 + 254, 1, -26.2, 29.9 , 0 );
setMoveKey( spep_1 + 256, 1, -11.9, 62.2 , 0 );
setMoveKey( spep_1 + 258, 1, -7.9, 77 , 0 );
setMoveKey( spep_1 + 260, 1, -6.6, 106.3 , 0 );
setMoveKey( spep_1 + 262, 1, 2.8, 111.2 , 0 );
setMoveKey( spep_1 + 264, 1, 2.4, 135 , 0 );
setMoveKey( spep_1 + 266, 1, 10.5, 144.6 , 0 );
setMoveKey( spep_1 + 268, 1, 14.9, 154.5 , 0 );
setMoveKey( spep_1 + 270, 1, 16.5, 162.9 , 0 );
setMoveKey( spep_1 + 272, 1, 19.2, 168.3 , 0 );
setMoveKey( spep_1 + 274, 1, 19.8, 171.3 , 0 );
setMoveKey( spep_1 + 276, 1, 22.9, 169.7 , 0 );
setMoveKey( spep_1 + 278, 1, 22.1, 164.4 , 0 );
setMoveKey( spep_1 + 280, 1, 22, 153.5 , 0 );
setMoveKey( spep_1 + 282, 1, 23.3, 139 , 0 );
setMoveKey( spep_1 + 284, 1, 20.2, 127.8 , 0 );
setMoveKey( spep_1 + 286, 1, 22.4, 120.1 , 0 );
setMoveKey( spep_1 + 288, 1, 23.8, 115.6 , 0 );
setMoveKey( spep_1 + 290, 1, 22.4, 113.6 , 0 );
setMoveKey( spep_1 + 292, 1, 22.6, 112.8 , 0 );
setMoveKey( spep_1 + 294, 1, 21.5, 113.1 , 0 );
setMoveKey( spep_1 + 296, 1, 22.9, 113.7 , 0 );
setMoveKey( spep_1 + 298, 1, 23.3, 115.3 , 0 );
setMoveKey( spep_1 + 300, 1, 23.7, 116.6 , 0 );
setMoveKey( spep_1 + 302, 1, 24, 117.8 , 0 );
setMoveKey( spep_1 + 304, 1, 24.2, 118.7 , 0 );
setMoveKey( spep_1 + 306, 1, 24.4, 119.4 , 0 );
setMoveKey( spep_1 + 308, 1, 24.6, 120 , 0 );
setMoveKey( spep_1 + 310, 1, 24.7, 120.5 , 0 );
setMoveKey( spep_1 + 312, 1, 24.8, 120.8 , 0 );
setMoveKey( spep_1 + 314, 1, 24.8, 121.1 , 0 );
setMoveKey( spep_1 + 316, 1, 24.9, 114.4 , 0 );
setMoveKey( spep_1 + 319, 1, 24, 85.7 , 0 );
setMoveKey( spep_1 + 320, 1, 7.1, 91.5 , 0 );
setMoveKey( spep_1 + 322, 1, 3.5, 79 , 0 );
setMoveKey( spep_1 + 324, 1, 8.4, 93.8 , 0 );
setMoveKey( spep_1 + 326, 1, 3.7, 85.6 , 0 );
setMoveKey( spep_1 + 328, 1, 7.4, 96.4 , 0 );
setMoveKey( spep_1 + 330, 1, 7.2, 85.1 , 0 );
setMoveKey( spep_1 + 332, 1, 3.6, 103.1 , 0 );
setMoveKey( spep_1 + 334, 1, 7.8, 92.3 , 0 );
setMoveKey( spep_1 + 336, 1, 2.2, 102.3 , 0 );
setMoveKey( spep_1 + 338, 1, 7.9, 98 , 0 );
setMoveKey( spep_1 + 340, 1, 4.6, 104.2 , 0 );
setMoveKey( spep_1 + 342, 1, 4.8, 107 , 0 );
setMoveKey( spep_1 + 344, 1, 3.5, 109.9 , 0 );
setMoveKey( spep_1 + 346, 1, 4.6, 113.3 , 0 );
setMoveKey( spep_1 + 348, 1, 3, 117.3 , 0 );
setMoveKey( spep_1 + 350, 1, 6.1, 122.9 , 0 );
setMoveKey( spep_1 + 352, 1, 5.9, 129.5 , 0 );
setMoveKey( spep_1 + 354, 1, 6.3, 269.3 , 0 );
setMoveKey( spep_1 + 356, 1, 6.6, 409.7 , 0 );
setMoveKey( spep_1 + 358, 1, 6.9, 550.5 , 0 );
setMoveKey( spep_1 + 361, 1, 7.3, 800.9 , 0 );
setMoveKey( spep_1 + 390, 1, 7.3, 800.9 , 0 );

setMoveKey( spep_1 + 391, 1, 7.3, -481.3 , 0 );
setMoveKey( spep_1 + 398, 1, 16.3, -291.3 , 0 );
setMoveKey( spep_1 + 400, 1, 15.7, -163.4 , 0 );
setMoveKey( spep_1 + 402, 1, 16.2, -84.3 , 0 );
setMoveKey( spep_1 + 404, 1, 15.1, -27.6 , 0 );
setMoveKey( spep_1 + 402, 1, 16.8, 13.3 , 0 );
setMoveKey( spep_1 + 408, 1, 13.3, 39.8 , 0 );
setMoveKey( spep_1 + 410, 1, 11.5, 50.8 , 0 );
setMoveKey( spep_1 + 412, 1, 15.1, 44.2 , 0 );
setMoveKey( spep_1 + 414, 1, 13.6, 56.9 , 0 );
setMoveKey( spep_1 + 416, 1, 12.5, 53.1 , 0 );
setMoveKey( spep_1 + 418, 1, 14.9, 59.5 , 0 );
setMoveKey( spep_1 + 420, 1, 15, 50 , 0 );
setMoveKey( spep_1 + 422, 1, 12.5, 61.7 , 0 );
setMoveKey( spep_1 + 424, 1, 15, 51.3 , 0 );
setMoveKey( spep_1 + 426, 1, 12.6, 64.7 , 0 );
setMoveKey( spep_1 + 428, 1, 14.6, 52.1 , 0 );
setMoveKey( spep_1 + 430, 1, 14.4, 64.6 , 0 );
setMoveKey( spep_1 + 432, 1, 15.3, 49.4 , 0 );
setMoveKey( spep_1 + 434, 1, 15.1, 61 , 0 );
setMoveKey( spep_1 + 436, 1, 17.4, 52.2 , 0 );
setMoveKey( spep_1 + 438, 1, 11.5, 62.3 , 0 );
setMoveKey( spep_1 + 440, 1, 17.4, 56.1 , 0 );
setMoveKey( spep_1 + 442, 1, 17.3, 57.9 , 0 );
setMoveKey( spep_1 + 444, 1, 18.2, 59.6 , 0 );
setMoveKey( spep_1 + 446, 1, 15.4, 65.9 , 0 );
setMoveKey( spep_1 + 448, 1, 17.1, 65.5 , 0 );
setMoveKey( spep_1 + 450, 1, 14.2, 69.2 , 0 );
setMoveKey( spep_1 + 452, 1, 19, 66.8 , 0 );
setMoveKey( spep_1 + 454, 1, 13.3, 82.4 , 0 );
setMoveKey( spep_1 + 456, 1, 16.4, 71.9 , 0 );
setMoveKey( spep_1 + 458, 1, 15, 86.9 , 0 );
setMoveKey( spep_1 + 460, 1, 15.6, 81.3 , 0 );
setMoveKey( spep_1 + 462, 1, 16.7, 82.3 , 0 );
setMoveKey( spep_1 + 464, 1, 18.3, 86.1 , 0 );
setMoveKey( spep_1 + 466, 1, 13.8, 91.3 , 0 );
setMoveKey( spep_1 + 468, 1, 17.8, 98.9 , 0 );
setMoveKey( spep_1 + 470, 1, 14.6, 95.1 , 0 );
setMoveKey( spep_1 + 472, 1, 16.2, 103.6 , 0 );
setMoveKey( spep_1 + 474, 1, 16.2, 121.4 , 0 );
setMoveKey( spep_1 + 476, 1, 14.3, 154.7 , 0 );
setMoveKey( spep_1 + 478, 1, 18.2, 191.5 , 0 );
setMoveKey( spep_1 + 480, 1, 13.5, 246.6 , 0 );
setMoveKey( spep_1 + 482, 1, 18.5, 305 , 0 );
setMoveKey( spep_1 + 484, 1, 12.7, 397.1 , 0 );
setMoveKey( spep_1 + 486, 1, 17.9, 467.8 , 0 );
setMoveKey( spep_1 + 488, 1, 14.9, 583 , 0 );
setMoveKey( spep_1 + 490, 1, 14.9, 583 , 0 );

setScaleKey( spep_1 + 0, 1, 1.45, 1.45 );
setScaleKey( spep_1 + 14, 1, 1.45, 1.45 );
setScaleKey( spep_1 + 17, 1, 1.49, 1.49 );
setScaleKey( spep_1 + 18, 1, 1.49, 1.49 );
setScaleKey( spep_1 + 20, 1, 1.68, 1.68 );
setScaleKey( spep_1 + 22, 1, 1.55, 1.55 );
setScaleKey( spep_1 + 24, 1, 1.57, 1.57 );
setScaleKey( spep_1 + 26, 1, 1.57, 1.57 );
setScaleKey( spep_1 + 28, 1, 1.45, 1.45 );
setScaleKey( spep_1 + 50, 1, 1.45, 1.45 );
setScaleKey( spep_1 + 52, 1, 2.99, 2.99 );
setScaleKey( spep_1 + 54, 1, 3.12, 3.12 );
setScaleKey( spep_1 + 56, 1, 3.09, 3.09 );
setScaleKey( spep_1 + 58, 1, 2.94, 2.94 );
setScaleKey( spep_1 + 60, 1, 2.77, 2.76 );
setScaleKey( spep_1 + 62, 1, 2.56, 2.56 );
setScaleKey( spep_1 + 64, 1, 2.11, 2.11 );
setScaleKey( spep_1 + 66, 1, 1.73, 1.73 );
setScaleKey( spep_1 + 68, 1, 1.82, 1.82 );
setScaleKey( spep_1 + 70, 1, 1.69, 1.69 );
setScaleKey( spep_1 + 72, 1, 1.82, 1.82 );
setScaleKey( spep_1 + 74, 1, 1.66, 1.66 );
setScaleKey( spep_1 + 76, 1, 1.72, 1.72 );
setScaleKey( spep_1 + 78, 1, 1.66, 1.65 );
setScaleKey( spep_1 + 80, 1, 1.66, 1.66 );
setScaleKey( spep_1 + 82, 1, 1.65, 1.65 );
setScaleKey( spep_1 + 84, 1, 1.67, 1.66 );
setScaleKey( spep_1 + 86, 1, 1.57, 1.57 );
setScaleKey( spep_1 + 88, 1, 1.5, 1.5 );
setScaleKey( spep_1 + 90, 1, 1.61, 1.61 );
setScaleKey( spep_1 + 92, 1, 1.57, 1.57 );
setScaleKey( spep_1 + 94, 1, 1.57, 1.57 );
setScaleKey( spep_1 + 96, 1, 1.46, 1.46 );
setScaleKey( spep_1 + 98, 1, 1.56, 1.56 );
setScaleKey( spep_1 + 100, 1, 1.45, 1.45 );
setScaleKey( spep_1 + 102, 1, 1.52, 1.52 );
setScaleKey( spep_1 + 104, 1, 1.53, 1.53 );
setScaleKey( spep_1 + 106, 1, 1.55, 1.55 );
setScaleKey( spep_1 + 108, 1, 1.54, 1.54 );
setScaleKey( spep_1 + 110, 1, 1.54, 1.54 );
setScaleKey( spep_1 + 112, 1, 1.53, 1.53 );
setScaleKey( spep_1 + 114, 1, 1.52, 1.52 );
setScaleKey( spep_1 + 116, 1, 1.5, 1.5 );
setScaleKey( spep_1 + 118, 1, 1.46, 1.46 );
--setScaleKey( spep_1 + 121, 1, 1.35, 1.35 );
setScaleKey( spep_1 + 119, 1, 0.58, 0.58 );
setScaleKey( spep_1 + 122, 1, 0.58, 0.58 );
setScaleKey( spep_1 + 124, 1, 0.65, 0.65 );
setScaleKey( spep_1 + 126, 1, 0.67, 0.67 );
setScaleKey( spep_1 + 128, 1, 0.68, 0.68 );
setScaleKey( spep_1 + 130, 1, 0.75, 0.75 );
setScaleKey( spep_1 + 132, 1, 0.74, 0.74 );
setScaleKey( spep_1 + 134, 1, 0.78, 0.78 );
setScaleKey( spep_1 + 136, 1, 0.86, 0.86 );
setScaleKey( spep_1 + 138, 1, 0.82, 0.82 );
setScaleKey( spep_1 + 140, 1, 0.78, 0.78 );
setScaleKey( spep_1 + 142, 1, 0.7, 0.7 );
setScaleKey( spep_1 + 144, 1, 0.7, 0.7 );
setScaleKey( spep_1 + 146, 1, 0.65, 0.65 );
setScaleKey( spep_1 + 148, 1, 0.65, 0.65 );
setScaleKey( spep_1 + 150, 1, 0.66, 0.63 );
setScaleKey( spep_1 + 152, 1, 0.69, 0.69 );
setScaleKey( spep_1 + 154, 1, 0.69, 0.69 );
setScaleKey( spep_1 + 156, 1, 0.68, 0.68 );
setScaleKey( spep_1 + 158, 1, 0.74, 0.72 );
setScaleKey( spep_1 + 160, 1, 0.76, 0.76 );
setScaleKey( spep_1 + 162, 1, 0.76, 0.76 );
setScaleKey( spep_1 + 164, 1, 0.77, 0.77 );
setScaleKey( spep_1 + 166, 1, 0.77, 0.77 );
setScaleKey( spep_1 + 168, 1, 0.78, 0.78 );
setScaleKey( spep_1 + 170, 1, 0.79, 0.79 );
setScaleKey( spep_1 + 172, 1, 0.83, 0.83 );
setScaleKey( spep_1 + 174, 1, 0.84, 0.84 );
setScaleKey( spep_1 + 176, 1, 0.9, 0.9 );
setScaleKey( spep_1 + 178, 1, 1, 1 );
setScaleKey( spep_1 + 180, 1, 1.08, 1.08 );
setScaleKey( spep_1 + 182, 1, 1.14, 1.14 );
setScaleKey( spep_1 + 184, 1, 1.29, 1.29 );
setScaleKey( spep_1 + 186, 1, 0.28, 0.28 );
setScaleKey( spep_1 + 188, 1, 0.33, 0.33 );
setScaleKey( spep_1 + 190, 1, 0.37, 0.37 );
setScaleKey( spep_1 + 192, 1, 0.41, 0.41 );
setScaleKey( spep_1 + 194, 1, 0.44, 0.44 );
setScaleKey( spep_1 + 196, 1, 0.47, 0.47 );
setScaleKey( spep_1 + 198, 1, 0.46, 0.46 );
setScaleKey( spep_1 + 200, 1, 0.49, 0.49 );
setScaleKey( spep_1 + 202, 1, 0.47, 0.47 );
setScaleKey( spep_1 + 204, 1, 0.48, 0.48 );
setScaleKey( spep_1 + 206, 1, 0.47, 0.47 );
setScaleKey( spep_1 + 210, 1, 0.47, 0.47 );
setScaleKey( spep_1 + 212, 1, 0.48, 0.48 );
setScaleKey( spep_1 + 214, 1, 0.46, 0.46 );
setScaleKey( spep_1 + 216, 1, 0.48, 0.48 );
setScaleKey( spep_1 + 218, 1, 0.48, 0.48 );
setScaleKey( spep_1 + 220, 1, 0.46, 0.46 );
setScaleKey( spep_1 + 224, 1, 0.46, 0.46 );
setScaleKey( spep_1 + 226, 1, 0.45, 0.45 );
setScaleKey( spep_1 + 228, 1, 0.47, 0.47 );
setScaleKey( spep_1 + 230, 1, 0.46, 0.46 );
setScaleKey( spep_1 + 234, 1, 0.46, 0.46 );
setScaleKey( spep_1 + 236, 1, 0.47, 0.47 );
setScaleKey( spep_1 + 238, 1, 0.47, 0.46 );
setScaleKey( spep_1 + 240, 1, 0.46, 0.46 );
setScaleKey( spep_1 + 242, 1, 0.47, 0.47 );
setScaleKey( spep_1 + 244, 1, 0.47, 0.47 );
--setScaleKey( spep_1 + 247, 1, 0.48, 0.48 );
setScaleKey( spep_1 + 245, 1, 1.62, 1.62 );
setScaleKey( spep_1 + 252, 1, 1.62, 1.62 );
setScaleKey( spep_1 + 254, 1, 1.61, 1.61 );
setScaleKey( spep_1 + 256, 1, 1.59, 1.59 );
setScaleKey( spep_1 + 258, 1, 1.59, 1.59 );
setScaleKey( spep_1 + 260, 1, 1.58, 1.57 );
setScaleKey( spep_1 + 262, 1, 1.57, 1.57 );
setScaleKey( spep_1 + 264, 1, 1.55, 1.55 );
setScaleKey( spep_1 + 266, 1, 1.54, 1.54 );
setScaleKey( spep_1 + 268, 1, 1.52, 1.52 );
setScaleKey( spep_1 + 270, 1, 1.49, 1.48 );
setScaleKey( spep_1 + 272, 1, 1.46, 1.45 );
setScaleKey( spep_1 + 274, 1, 1.41, 1.41 );
setScaleKey( spep_1 + 276, 1, 1.37, 1.37 );
setScaleKey( spep_1 + 278, 1, 1.3, 1.3 );
setScaleKey( spep_1 + 280, 1, 1.21, 1.21 );
setScaleKey( spep_1 + 282, 1, 1.12, 1.12 );
setScaleKey( spep_1 + 284, 1, 1.04, 1.04 );
setScaleKey( spep_1 + 286, 1, 0.99, 0.99 );
setScaleKey( spep_1 + 288, 1, 0.96, 0.96 );
setScaleKey( spep_1 + 290, 1, 0.94, 0.94 );
setScaleKey( spep_1 + 292, 1, 0.92, 0.92 );
setScaleKey( spep_1 + 294, 1, 0.91, 0.9 );
setScaleKey( spep_1 + 298, 1, 0.91, 0.9 );
setScaleKey( spep_1 + 300, 1, 0.9, 0.9 );
setScaleKey( spep_1 + 314, 1, 0.9, 0.9 );
setScaleKey( spep_1 + 316, 1, 0.98, 0.98 );
setScaleKey( spep_1 + 319, 1, 1.2, 1.2 );
setScaleKey( spep_1 + 320, 1, 1.57, 1.57 );
setScaleKey( spep_1 + 330, 1, 1.57, 1.57 );
setScaleKey( spep_1 + 332, 1, 1.56, 1.56 );
setScaleKey( spep_1 + 334, 1, 1.56, 1.56 );
setScaleKey( spep_1 + 336, 1, 1.54, 1.54 );
setScaleKey( spep_1 + 338, 1, 1.54, 1.54 );
setScaleKey( spep_1 + 340, 1, 1.53, 1.53 );
setScaleKey( spep_1 + 342, 1, 1.52, 1.52 );
setScaleKey( spep_1 + 344, 1, 1.49, 1.49 );
setScaleKey( spep_1 + 346, 1, 1.46, 1.46 );
setScaleKey( spep_1 + 348, 1, 1.4, 1.4 );
setScaleKey( spep_1 + 350, 1, 1.33, 1.33 );
setScaleKey( spep_1 + 352, 1, 1.19, 1.19 );
setScaleKey( spep_1 + 358, 1, 1.19, 1.19 );
setScaleKey( spep_1 + 361, 1, 1.2, 1.2 );
setScaleKey( spep_1 + 394, 1, 1.19, 1.19 );
setScaleKey( spep_1 + 396, 1, 0.88, 1.17 );
setScaleKey( spep_1 + 398, 1, 1.19, 1.19 );
setScaleKey( spep_1 + 408, 1, 1.19, 1.19 );
setScaleKey( spep_1 + 410, 1, 1.2, 1.2 );
setScaleKey( spep_1 + 412, 1, 1.2, 1.2 );
setScaleKey( spep_1 + 414, 1, 1.21, 1.21 );
setScaleKey( spep_1 + 416, 1, 1.21, 1.21 );
setScaleKey( spep_1 + 418, 1, 1.22, 1.22 );
setScaleKey( spep_1 + 420, 1, 1.23, 1.23 );
setScaleKey( spep_1 + 422, 1, 1.24, 1.24 );
setScaleKey( spep_1 + 424, 1, 1.25, 1.25 );
setScaleKey( spep_1 + 426, 1, 1.27, 1.27 );
setScaleKey( spep_1 + 428, 1, 1.28, 1.28 );
setScaleKey( spep_1 + 430, 1, 1.3, 1.3 );
setScaleKey( spep_1 + 432, 1, 1.32, 1.32 );
setScaleKey( spep_1 + 434, 1, 1.34, 1.34 );
setScaleKey( spep_1 + 436, 1, 1.35, 1.35 );
setScaleKey( spep_1 + 438, 1, 1.37, 1.37 );
setScaleKey( spep_1 + 440, 1, 1.38, 1.38 );
setScaleKey( spep_1 + 442, 1, 1.39, 1.39 );
setScaleKey( spep_1 + 444, 1, 1.4, 1.4 );
setScaleKey( spep_1 + 446, 1, 1.4, 1.4 );
setScaleKey( spep_1 + 448, 1, 1.41, 1.41 );
setScaleKey( spep_1 + 450, 1, 1.42, 1.42 );
setScaleKey( spep_1 + 454, 1, 1.42, 1.42 );
setScaleKey( spep_1 + 456, 1, 1.43, 1.43 );
setScaleKey( spep_1 + 490, 1, 1.43, 1.43 );


setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 + 17, 1, 0 );
setRotateKey( spep_1 + 18, 1, -9 );
setRotateKey( spep_1 + 30, 1, -9 );
setRotateKey( spep_1 + 32, 1, -8.1 );
setRotateKey( spep_1 + 34, 1, -7.3 );
setRotateKey( spep_1 + 36, 1, -6.6 );
setRotateKey( spep_1 + 38, 1, -6 );
setRotateKey( spep_1 + 40, 1, -5.5 );
setRotateKey( spep_1 + 42, 1, -5.1 );
setRotateKey( spep_1 + 44, 1, -4.7 );
setRotateKey( spep_1 + 46, 1, -4.5 );
setRotateKey( spep_1 + 48, 1, -4.3 );
setRotateKey( spep_1 + 50, 1, -4.3 );
setRotateKey( spep_1 + 52, 1, 5.8 );
setRotateKey( spep_1 + 54, 1, 6.1 );
setRotateKey( spep_1 + 56, 1, 6.2 );
setRotateKey( spep_1 + 58, 1, 6.5 );
setRotateKey( spep_1 + 60, 1, 6.9 );
setRotateKey( spep_1 + 62, 1, 7.4 );
setRotateKey( spep_1 + 64, 1, 8.1 );
setRotateKey( spep_1 + 66, 1, 8.8 );
setRotateKey( spep_1 + 68, 1, 8.8 );
setRotateKey( spep_1 + 70, 1, 8.9 );
setRotateKey( spep_1 + 72, 1, 8.9 );
setRotateKey( spep_1 + 74, 1, 9 );
setRotateKey( spep_1 + 76, 1, 9.2 );
setRotateKey( spep_1 + 78, 1, 9.3 );
setRotateKey( spep_1 + 80, 1, 9.5 );
setRotateKey( spep_1 + 82, 1, 9.7 );
setRotateKey( spep_1 + 84, 1, 10 );
setRotateKey( spep_1 + 86, 1, 10.3 );
setRotateKey( spep_1 + 88, 1, 10.5 );
setRotateKey( spep_1 + 90, 1, 10.7 );
setRotateKey( spep_1 + 92, 1, 10.8 );
setRotateKey( spep_1 + 94, 1, 11 );
setRotateKey( spep_1 + 96, 1, 11.1 );
setRotateKey( spep_1 + 98, 1, 11.1 );
setRotateKey( spep_1 + 100, 1, 11.2 );
setRotateKey( spep_1 + 102, 1, 11.2 );
setRotateKey( spep_1 + 104, 1, 11.3 );
setRotateKey( spep_1 + 106, 1, 11.5 );
setRotateKey( spep_1 + 108, 1, 11.8 );
setRotateKey( spep_1 + 110, 1, 12.2 );
setRotateKey( spep_1 + 112, 1, 12.8 );
setRotateKey( spep_1 + 114, 1, 13.6 );
setRotateKey( spep_1 + 116, 1, 14.4 );
setRotateKey( spep_1 + 118, 1, 15.4 );
--setRotateKey( spep_1 + 121, 1, 16.3 );
setRotateKey( spep_1 + 119, 1, 100.2 );
setRotateKey( spep_1 + 128, 1, 100.2 );
setRotateKey( spep_1 + 130, 1, 100.3 );
setRotateKey( spep_1 + 134, 1, 100.3 );
setRotateKey( spep_1 + 136, 1, 100.4 );
setRotateKey( spep_1 + 138, 1, 100.4 );
setRotateKey( spep_1 + 140, 1, 100.5 );
setRotateKey( spep_1 + 142, 1, 100.5 );
setRotateKey( spep_1 + 144, 1, 100.6 );
setRotateKey( spep_1 + 178, 1, 100.6 );
setRotateKey( spep_1 + 180, 1, 100.5 );
setRotateKey( spep_1 + 184, 1, 100.5 );
setRotateKey( spep_1 + 186, 1, 126.1 );
setRotateKey( spep_1 + 188, 1, 126.2 );
setRotateKey( spep_1 + 200, 1, 126.2 );
setRotateKey( spep_1 + 202, 1, 126.1 );
setRotateKey( spep_1 + 204, 1, 126.2 );
setRotateKey( spep_1 + 244, 1, 126.2 );
--setRotateKey( spep_1 + 247, 1, 126.1 );

setRotateKey( spep_1 + 245, 1, -63.2 );------------------------------
setRotateKey( spep_1 + 248, 1, -63.2 );
setRotateKey( spep_1 + 250, 1, -55 );
setRotateKey( spep_1 + 252, 1, -47.8 );
setRotateKey( spep_1 + 254, 1, -41.5 );
setRotateKey( spep_1 + 256, 1, -35.9 );
setRotateKey( spep_1 + 258, 1, -30.8 );
setRotateKey( spep_1 + 260, 1, -26.3 );
setRotateKey( spep_1 + 262, 1, -22.1 );
setRotateKey( spep_1 + 264, 1, -18.4 );
setRotateKey( spep_1 + 266, 1, -15 );
setRotateKey( spep_1 + 268, 1, -12 );
setRotateKey( spep_1 + 270, 1, -9.2 );
setRotateKey( spep_1 + 272, 1, -6.6 );
setRotateKey( spep_1 + 274, 1, -4.3 );
setRotateKey( spep_1 + 276, 1, -2.2 );
setRotateKey( spep_1 + 279, 1, -0.3 );


setRotateKey( spep_1 + 280, 1, 1.4 );
setRotateKey( spep_1 + 282, 1, 3 );
setRotateKey( spep_1 + 284, 1, 4.4 );
setRotateKey( spep_1 + 286, 1, 5.7 );
setRotateKey( spep_1 + 288, 1, 6.8 );
setRotateKey( spep_1 + 290, 1, 7.8 );
setRotateKey( spep_1 + 292, 1, 8.7 );
setRotateKey( spep_1 + 294, 1, 9.5 );
setRotateKey( spep_1 + 296, 1, 10.2 );
setRotateKey( spep_1 + 298, 1, 10.8 );
setRotateKey( spep_1 + 300, 1, 11.3 );
setRotateKey( spep_1 + 302, 1, 11.7 );
setRotateKey( spep_1 + 304, 1, 12.1 );
setRotateKey( spep_1 + 306, 1, 12.4 );
setRotateKey( spep_1 + 308, 1, 12.6 );
setRotateKey( spep_1 + 310, 1, 12.8 );
setRotateKey( spep_1 + 312, 1, 12.9 );
setRotateKey( spep_1 + 314, 1, 13 );
setRotateKey( spep_1 + 319, 1, 13 );


setRotateKey( spep_1 + 320, 1, 87.5 );
setRotateKey( spep_1 + 361, 1, 87.5 );
setRotateKey( spep_1 + 394, 1, 102.5 );
setRotateKey( spep_1 + 396, 1, 79.4 );
setRotateKey( spep_1 + 398, 1, 29.8 );
setRotateKey( spep_1 + 400, 1, 25.7 );
setRotateKey( spep_1 + 402, 1, 22.3 );
setRotateKey( spep_1 + 404, 1, 19.7 );
setRotateKey( spep_1 + 406, 1, 17.8 );
setRotateKey( spep_1 + 408, 1, 16.7 );
setRotateKey( spep_1 + 410, 1, 16.3 );
setRotateKey( spep_1 + 412, 1, 16.8 );
setRotateKey( spep_1 + 414, 1, 17.3 );
setRotateKey( spep_1 + 416, 1, 17.8 );
setRotateKey( spep_1 + 418, 1, 18.3 );
setRotateKey( spep_1 + 420, 1, 18.8 );
setRotateKey( spep_1 + 422, 1, 19.4 );
setRotateKey( spep_1 + 424, 1, 19.9 );
setRotateKey( spep_1 + 426, 1, 20.4 );
setRotateKey( spep_1 + 428, 1, 20.9 );
setRotateKey( spep_1 + 430, 1, 21.4 );
setRotateKey( spep_1 + 432, 1, 21.9 );
setRotateKey( spep_1 + 434, 1, 22.4 );
setRotateKey( spep_1 + 436, 1, 22.9 );
setRotateKey( spep_1 + 438, 1, 23.4 );
setRotateKey( spep_1 + 440, 1, 23.9 );
setRotateKey( spep_1 + 442, 1, 24.5 );
setRotateKey( spep_1 + 444, 1, 25 );
setRotateKey( spep_1 + 446, 1, 25.5 );
setRotateKey( spep_1 + 448, 1, 26 );
setRotateKey( spep_1 + 450, 1, 26.5 );
setRotateKey( spep_1 + 452, 1, 27 );
setRotateKey( spep_1 + 454, 1, 27.5 );
setRotateKey( spep_1 + 456, 1, 28 );
setRotateKey( spep_1 + 458, 1, 28.5 );
setRotateKey( spep_1 + 460, 1, 29.1 );
setRotateKey( spep_1 + 462, 1, 29.6 );
setRotateKey( spep_1 + 464, 1, 30.1 );
setRotateKey( spep_1 + 466, 1, 30.6 );
setRotateKey( spep_1 + 468, 1, 31.1 );
setRotateKey( spep_1 + 470, 1, 31.6 );
setRotateKey( spep_1 + 472, 1, 31.7 );
setRotateKey( spep_1 + 474, 1, 31.9 );
setRotateKey( spep_1 + 476, 1, 32.4 );
setRotateKey( spep_1 + 478, 1, 33 );
setRotateKey( spep_1 + 480, 1, 33.8 );
setRotateKey( spep_1 + 482, 1, 34.7 );
setRotateKey( spep_1 + 484, 1, 35.9 );
setRotateKey( spep_1 + 486, 1, 37.2 );
setRotateKey( spep_1 + 488, 1, 38.6 );
setRotateKey( spep_1 + 490, 1, 38.6 );


setShakeChara(spep_1 + 15, 1, 184,15);-----------------------------------------------------------------------------	
setShakeChara(spep_1 + 390, 1, 100,20);
--文字エントリー
ctga = entryEffectLife( spep_1 + 15,  10005, 17, 0x100, -1, 0, 0.1, 238.9 );--ガッ
setEffMoveKey( spep_1 + 15, ctga, 0.1, 238.9 , 0 );
setEffMoveKey( spep_1 + 18, ctga, -9.2, 251.3 , 0 );
setEffMoveKey( spep_1 + 20, ctga, -5.3, 256.2 , 0 );
setEffMoveKey( spep_1 + 22, ctga, -12.1, 258.9 , 0 );
setEffMoveKey( spep_1 + 24, ctga, -2.9, 259.9 , 0 );
setEffMoveKey( spep_1 + 26, ctga, -11.9, 265 , 0 );
setEffMoveKey( spep_1 + 28, ctga, -7.8, 263.8 , 0 );
setEffMoveKey( spep_1 + 30, ctga, -15.8, 268.8 , 0 );
setEffMoveKey( spep_1 + 32, ctga, -16.5, 270.7 , 0 );

setEffScaleKey( spep_1 + 15, ctga, 1.25, 1.25 );
setEffScaleKey( spep_1 + 18, ctga, 1.45, 1.45 );
setEffScaleKey( spep_1 + 20, ctga, 1.52, 1.52 );
setEffScaleKey( spep_1 + 22, ctga, 1.57, 1.57 );
setEffScaleKey( spep_1 + 24, ctga, 1.61, 1.61 );
setEffScaleKey( spep_1 + 26, ctga, 1.63, 1.63 );
setEffScaleKey( spep_1 + 28, ctga, 1.64, 1.64 );
setEffScaleKey( spep_1 + 30, ctga, 1.73, 1.73 );
setEffScaleKey( spep_1 + 32, ctga, 1.76, 1.76 );

setEffRotateKey( spep_1 + 15, ctga, 3 );
setEffRotateKey( spep_1 + 32, ctga, 3 );

setEffAlphaKey( spep_1 + 15, ctga, 255 );
setEffAlphaKey( spep_1 + 28, ctga, 255 );
setEffAlphaKey( spep_1 + 30, ctga, 64 );
setEffAlphaKey( spep_1 + 32, ctga, 0 );

ctsyun = entryEffectLife( spep_1 + 86,  10011, 16, 0x100, -1, 0, 237, 91.5 );--シュンッ
setEffMoveKey( spep_1 + 86, ctsyun, 237, 91.5 , 0 );
setEffMoveKey( spep_1 + 88, ctsyun, 234.1, 99.1 , 0 );
setEffMoveKey( spep_1 + 90, ctsyun, 232.4, 103.7 , 0 );
setEffMoveKey( spep_1 + 92, ctsyun, 231.8, 105.2 , 0 );
setEffMoveKey( spep_1 + 102, ctsyun, 231.8, 105.2 , 0 );

setEffScaleKey( spep_1 + 86, ctsyun, 0.6, 0.6 );
setEffScaleKey( spep_1 + 88, ctsyun, 0.92, 0.92 );
setEffScaleKey( spep_1 + 90, ctsyun, 1.11, 1.11 );
setEffScaleKey( spep_1 + 92, ctsyun, 1.17, 1.17 );
setEffScaleKey( spep_1 + 94, ctsyun, 1.18, 1.18 );
setEffScaleKey( spep_1 + 96, ctsyun, 1.19, 1.19 );
setEffScaleKey( spep_1 + 98, ctsyun, 1.22, 1.22 );
setEffScaleKey( spep_1 + 100, ctsyun, 1.26, 1.26 );
setEffScaleKey( spep_1 + 102, ctsyun, 1.31, 1.31 );

setEffRotateKey( spep_1 + 86, ctsyun, 12.7 );
setEffRotateKey( spep_1 + 102, ctsyun, 12.7 );

setEffAlphaKey( spep_1 + 86, ctsyun, 255 );
setEffAlphaKey( spep_1 + 92, ctsyun, 255 );
setEffAlphaKey( spep_1 + 94, ctsyun, 245 );
setEffAlphaKey( spep_1 + 96, ctsyun, 214 );
setEffAlphaKey( spep_1 + 98, ctsyun, 163 );
setEffAlphaKey( spep_1 + 100, ctsyun, 92 );
setEffAlphaKey( spep_1 + 102, ctsyun, 0 );


stbaki = entryEffectLife( spep_1 + 119,  10020, 19, 0x100, -1, 0, 187.5, 84.9 );--バキ
setEffMoveKey( spep_1 + 119, stbaki, 187.5, 84.9 , 0 );
setEffMoveKey( spep_1 + 122, stbaki, 188.9, 108.2 , 0 );
setEffMoveKey( spep_1 + 124, stbaki, 191.6, 112 , 0 );
setEffMoveKey( spep_1 + 126, stbaki, 189.8, 125.6 , 0 );
setEffMoveKey( spep_1 + 128, stbaki, 191.7, 123.7 , 0 );
setEffMoveKey( spep_1 + 130, stbaki, 187.9, 141.2 , 0 );
setEffMoveKey( spep_1 + 132, stbaki, 197.1, 140 , 0 );
setEffMoveKey( spep_1 + 134, stbaki, 191.6, 141 , 0 );
setEffMoveKey( spep_1 + 136, stbaki, 200, 148.4 , 0 );
setEffMoveKey( spep_1 + 138, stbaki, 203.5, 149.7 , 0 );

setEffScaleKey( spep_1 + 119, stbaki, 1.25, 1.25 );
setEffScaleKey( spep_1 + 122, stbaki, 1.33, 1.33 );
setEffScaleKey( spep_1 + 124, stbaki, 1.35, 1.35 );
setEffScaleKey( spep_1 + 126, stbaki, 1.4, 1.4 );
setEffScaleKey( spep_1 + 128, stbaki, 1.45, 1.45 );
setEffScaleKey( spep_1 + 130, stbaki, 1.48, 1.48 );
setEffScaleKey( spep_1 + 132, stbaki, 1.49, 1.49 );
setEffScaleKey( spep_1 + 134, stbaki, 1.5, 1.5 );
setEffScaleKey( spep_1 + 136, stbaki, 1.7, 1.7 );
setEffScaleKey( spep_1 + 138, stbaki, 1.76, 1.76 );

setEffRotateKey( spep_1 + 119, stbaki, -13.7 );
setEffRotateKey( spep_1 + 138, stbaki, -13.7 );

setEffAlphaKey( spep_1 + 119, stbaki, 255 );
setEffAlphaKey( spep_1 + 134, stbaki, 255 );
setEffAlphaKey( spep_1 + 136, stbaki, 64 );
setEffAlphaKey( spep_1 + 138, stbaki, 0 );

setEffShake(spep_1 + 119, stbaki, 19 ,20);

ctzun = entryEffectLife( spep_1 + 148,  10016, 22, 0x100, -1, 0, -77.9, 337.2 );--ズン
setEffMoveKey( spep_1 + 148, ctzun, 77.9, 337.2 , 0 );
setEffMoveKey( spep_1 + 150, ctzun, 84.1, 374.8 , 0 );
setEffMoveKey( spep_1 + 152, ctzun, 87.8, 397.2 , 0 );
setEffMoveKey( spep_1 + 154, ctzun, 89, 404.7 , 0 );
setEffMoveKey( spep_1 + 156, ctzun, 89.8, 405.9 , 0 );
setEffMoveKey( spep_1 + 158, ctzun, 90.6, 407.2 , 0 );
setEffMoveKey( spep_1 + 160, ctzun, 91.4, 408.5 , 0 );
setEffMoveKey( spep_1 + 162, ctzun, 92.2, 409.8 , 0 );
setEffMoveKey( spep_1 + 164, ctzun, 93, 411.1 , 0 );
setEffMoveKey( spep_1 + 166, ctzun, 96.2, 445 , 0 );
setEffMoveKey( spep_1 + 168, ctzun, 97.8, 480.7 , 0 );
setEffMoveKey( spep_1 + 170, ctzun, 98.5, 518.7 , 0 );

setEffScaleKey( spep_1 + 148, ctzun, 1, 1 );
setEffScaleKey( spep_1 + 150, ctzun, 2.11, 2.11 );
setEffScaleKey( spep_1 + 152, ctzun, 2.77, 2.77 );
setEffScaleKey( spep_1 + 154, ctzun, 2.99, 2.99 );
setEffScaleKey( spep_1 + 156, ctzun, 3.01, 3.01 );
setEffScaleKey( spep_1 + 158, ctzun, 3.02, 3.02 );
setEffScaleKey( spep_1 + 160, ctzun, 3.04, 3.04 );
setEffScaleKey( spep_1 + 162, ctzun, 3.05, 3.05 );
setEffScaleKey( spep_1 + 164, ctzun, 3.07, 3.07 );
setEffScaleKey( spep_1 + 166, ctzun, 3.13, 3.36 );
setEffScaleKey( spep_1 + 168, ctzun, 3.18, 3.64 );
setEffScaleKey( spep_1 + 170, ctzun, 3.24, 3.93 );

setEffRotateKey( spep_1 + 148, ctzun, -14.8 );
setEffRotateKey( spep_1 + 164, ctzun, -14.8 );
setEffRotateKey( spep_1 + 166, ctzun, -9.9 );
setEffRotateKey( spep_1 + 170, ctzun, -9.9 );
--setEffRotateKey( spep_1 + 168, ctzun, -4.9 );
--setEffRotateKey( spep_1 + 170, ctzun, 0 );

setEffAlphaKey( spep_1 + 148, ctzun, 255 );
setEffAlphaKey( spep_1 + 164, ctzun, 255 );
setEffAlphaKey( spep_1 + 166, ctzun, 170 );
setEffAlphaKey( spep_1 + 168, ctzun, 85 );
setEffAlphaKey( spep_1 + 170, ctzun, 0 );

ctdon = entryEffectLife( spep_1 + 245,  10019, 21, 0x100, -1, 0, -97.6, 204.5 );--ドン
setEffMoveKey( spep_1 + 245, ctdon, -97.6, 204.5 , 0 );
setEffMoveKey( spep_1 + 248, ctdon, -99.1, 247 , 0 );
setEffMoveKey( spep_1 + 250, ctdon, -81.5, 280.9 , 0 );
setEffMoveKey( spep_1 + 252, ctdon, -88, 291.4 , 0 );
setEffMoveKey( spep_1 + 254, ctdon, -78.2, 281.2 , 0 );
setEffMoveKey( spep_1 + 256, ctdon, -89.9, 284.3 , 0 );
setEffMoveKey( spep_1 + 258, ctdon, -81.7, 290.7 , 0 );
setEffMoveKey( spep_1 + 260, ctdon, -89.6, 285.6 , 0 );
setEffMoveKey( spep_1 + 262, ctdon, -81.3, 291.9 , 0 );
setEffMoveKey( spep_1 + 264, ctdon, -84.2, 280.3 , 0 );
setEffMoveKey( spep_1 + 266, ctdon, -84.1, 280.8 , 0 );

setEffScaleKey( spep_1 + 245, ctdon, 1.28, 1.28 );
setEffScaleKey( spep_1 + 248, ctdon, 1.62, 1.62 );
setEffScaleKey( spep_1 + 250, ctdon, 1.97, 1.97 );
setEffScaleKey( spep_1 + 252, ctdon, 1.98, 1.98 );
setEffScaleKey( spep_1 + 254, ctdon, 1.99, 1.99 );
setEffScaleKey( spep_1 + 256, ctdon, 2.01, 2.01 );
setEffScaleKey( spep_1 + 258, ctdon, 2.02, 2.02 );
setEffScaleKey( spep_1 + 260, ctdon, 2.03, 2.03 );
setEffScaleKey( spep_1 + 262, ctdon, 2.04, 2.04 );
setEffScaleKey( spep_1 + 264, ctdon, 2.05, 2.05 );
setEffScaleKey( spep_1 + 266, ctdon, 2.06, 2.06 );

setEffRotateKey( spep_1 + 245, ctdon, 14.2 );
setEffRotateKey( spep_1 + 248, ctdon, 14.7 );
setEffRotateKey( spep_1 + 250, ctdon, 15.2 );
setEffRotateKey( spep_1 + 266, ctdon, 15.2 );

setEffAlphaKey( spep_1 + 245, ctdon, 255 );
setEffAlphaKey( spep_1 + 260, ctdon, 255 );
setEffAlphaKey( spep_1 + 262, ctdon, 170 );
setEffAlphaKey( spep_1 + 264, ctdon, 85 );
setEffAlphaKey( spep_1 + 266, ctdon, 0 );

setEffShake(spep_1 + 245, ctdon, 21 ,20);


ctsyun2 = entryEffectLife( spep_1 + 272,  10011, 12, 0x100, -1, 0, 205.9, 175 );--シュンッ
setEffMoveKey( spep_1 + 272, ctsyun2, 205.9, 175 , 0 );
setEffMoveKey( spep_1 + 274, ctsyun2, 201.5, 185.1 , 0 );
setEffMoveKey( spep_1 + 276, ctsyun2, 198.8, 191.2 , 0 );
setEffMoveKey( spep_1 + 278, ctsyun2, 197.9, 193.2 , 0 );
setEffMoveKey( spep_1 + 284, ctsyun2, 197.9, 193.2 , 0 );
--setEffMoveKey( spep_1 + 286, ctsyun2, 197.9, 193.3 , 0 );

setEffScaleKey( spep_1 + 272, ctsyun2, 0.82, 0.82 );
setEffScaleKey( spep_1 + 274, ctsyun2, 1.25, 1.25 );
setEffScaleKey( spep_1 + 276, ctsyun2, 1.5, 1.5 );
setEffScaleKey( spep_1 + 278, ctsyun2, 1.59, 1.59 );
setEffScaleKey( spep_1 + 280, ctsyun2, 1.6, 1.6 );
setEffScaleKey( spep_1 + 282, ctsyun2, 1.62, 1.62 );
setEffScaleKey( spep_1 + 284, ctsyun2, 1.66, 1.66 );
--setEffScaleKey( spep_1 + 286, ctsyun2, 1.71, 1.71 );
--setEffScaleKey( spep_1 + 288, ctsyun2, 1.78, 1.78 );

setEffRotateKey( spep_1 + 272, ctsyun2, 9.8 );
setEffRotateKey( spep_1 + 284, ctsyun2, 9.8 );

setEffAlphaKey( spep_1 + 272, ctsyun2, 255 );
setEffAlphaKey( spep_1 + 278, ctsyun2, 255 );
setEffAlphaKey( spep_1 + 280, ctsyun2, 245 );
setEffAlphaKey( spep_1 + 282, ctsyun2, 214 );
setEffAlphaKey( spep_1 + 284, ctsyun2, 163 );
--setEffAlphaKey( spep_1 + 286, ctsyun2, 92 );
--setEffAlphaKey( spep_1 + 288, ctsyun2, 0 );

ctzudodo = entryEffectLife( spep_1 + 404,  10014, 84, 0x100, -1, 0, -125.8, 270.4 );--ズドドド
setEffMoveKey( spep_1 + 404, ctzudodo, -125.8, 270.4 , 0 );
setEffMoveKey( spep_1 + 406, ctzudodo, -123.2, 269.4 , 0 );
setEffMoveKey( spep_1 + 408, ctzudodo, -126.9, 274.1 , 0 );
setEffMoveKey( spep_1 + 410, ctzudodo, -125.9, 270.3 , 0 );
setEffMoveKey( spep_1 + 412, ctzudodo, -122.6, 274.9 , 0 );
setEffMoveKey( spep_1 + 414, ctzudodo, -127, 285.8 , 0 );
setEffMoveKey( spep_1 + 416, ctzudodo, -127.3, 284.4 , 0 );
setEffMoveKey( spep_1 + 418, ctzudodo, -125.5, 296.8 , 0 );
setEffMoveKey( spep_1 + 420, ctzudodo, -123.7, 294.1 , 0 );
setEffMoveKey( spep_1 + 422, ctzudodo, -125.7, 307 , 0 );
setEffMoveKey( spep_1 + 424, ctzudodo, -130.4, 303.9 , 0 );
setEffMoveKey( spep_1 + 426, ctzudodo, -122.3, 315 , 0 );
setEffMoveKey( spep_1 + 428, ctzudodo, -129.5, 309.9 , 0 );
setEffMoveKey( spep_1 + 430, ctzudodo, -124.7, 323.8 , 0 );
setEffMoveKey( spep_1 + 432, ctzudodo, -121.6, 317.1 , 0 );
setEffMoveKey( spep_1 + 434, ctzudodo, -126.8, 330.5 , 0 );
setEffMoveKey( spep_1 + 436, ctzudodo, -126.9, 324.5 , 0 );
setEffMoveKey( spep_1 + 438, ctzudodo, -130.4, 338.3 , 0 );
setEffMoveKey( spep_1 + 440, ctzudodo, -127.6, 327.1 , 0 );
setEffMoveKey( spep_1 + 442, ctzudodo, -127.5, 343.3 , 0 );
setEffMoveKey( spep_1 + 444, ctzudodo, -126.6, 333.5 , 0 );
setEffMoveKey( spep_1 + 446, ctzudodo, -120.7, 347.8 , 0 );
setEffMoveKey( spep_1 + 448, ctzudodo, -131, 337.6 , 0 );
setEffMoveKey( spep_1 + 450, ctzudodo, -124.7, 350.6 , 0 );
setEffMoveKey( spep_1 + 452, ctzudodo, -130.9, 342.6 , 0 );
setEffMoveKey( spep_1 + 454, ctzudodo, -119.4, 351 , 0 );
setEffMoveKey( spep_1 + 456, ctzudodo, -134.5, 348.9 , 0 );
setEffMoveKey( spep_1 + 458, ctzudodo, -121, 346.9 , 0 );
setEffMoveKey( spep_1 + 460, ctzudodo, -131.3, 347.8 , 0 );
setEffMoveKey( spep_1 + 462, ctzudodo, -118.8, 346.1 , 0 );
setEffMoveKey( spep_1 + 464, ctzudodo, -127.1, 356.9 , 0 );
setEffMoveKey( spep_1 + 466, ctzudodo, -119, 343.8 , 0 );
setEffMoveKey( spep_1 + 468, ctzudodo, -132.7, 357.5 , 0 );
setEffMoveKey( spep_1 + 470, ctzudodo, -125.9, 350.3 , 0 );
setEffMoveKey( spep_1 + 472, ctzudodo, -122.6, 349.1 , 0 );
setEffMoveKey( spep_1 + 474, ctzudodo, -127, 354.3 , 0 );
setEffMoveKey( spep_1 + 476, ctzudodo, -127.3, 347.6 , 0 );
setEffMoveKey( spep_1 + 478, ctzudodo, -125.5, 354.8 , 0 );
setEffMoveKey( spep_1 + 480, ctzudodo, -123.7, 347.3 , 0 );
setEffMoveKey( spep_1 + 482, ctzudodo, -125.7, 355.4 , 0 );
setEffMoveKey( spep_1 + 484, ctzudodo, -130.4, 347.8 , 0 );
setEffMoveKey( spep_1 + 486, ctzudodo, -122.3, 354.6 , 0 );
setEffMoveKey( spep_1 + 488, ctzudodo, -129.5, 345.5 , 0 );

setEffScaleKey( spep_1 + 404, ctzudodo, 1.21, 1.21 );
setEffScaleKey( spep_1 + 406, ctzudodo, 1.82, 1.82 );
setEffScaleKey( spep_1 + 408, ctzudodo, 2.19, 2.19 );
setEffScaleKey( spep_1 + 410, ctzudodo, 2.31, 2.31 );
setEffScaleKey( spep_1 + 488, ctzudodo, 2.31, 2.31 );

setEffRotateKey( spep_1 + 404, ctzudodo, -33.1 );
setEffRotateKey( spep_1 + 488, ctzudodo, -33.1 );

setEffAlphaKey( spep_1 + 404, ctzudodo, 255 );
setEffAlphaKey( spep_1 + 488, ctzudodo, 255 );

setEffShake(spep_1 + 404, ctzudodo, 84 ,20);

ctbako = entryEffectLife( spep_1 + 317,  10021, 27, 0x100, -1, 0, 39.7, 281.5 );--バゴォッ
setEffMoveKey( spep_1 + 317, ctbako, 39.7, 281.5 , 0 );
setEffMoveKey( spep_1 + 320, ctbako, 14.6, 320.6 , 0 );
setEffMoveKey( spep_1 + 322, ctbako, 13.5, 345.1 , 0 );
setEffMoveKey( spep_1 + 324, ctbako, 6.5, 337.6 , 0 );
setEffMoveKey( spep_1 + 326, ctbako, 18.2, 356.4 , 0 );
setEffMoveKey( spep_1 + 328, ctbako, 6.8, 347.5 , 0 );
setEffMoveKey( spep_1 + 330, ctbako, 20.8, 350.5 , 0 );
setEffMoveKey( spep_1 + 332, ctbako, 3.3, 356.3 , 0 );
setEffMoveKey( spep_1 + 334, ctbako, 19.1, 352.7 , 0 );
setEffMoveKey( spep_1 + 336, ctbako, 8.5, 366 , 0 );
setEffMoveKey( spep_1 + 338, ctbako, 10.3, 362.1 , 0 );
setEffMoveKey( spep_1 + 340, ctbako, 2.7, 354.7 , 0 );
setEffMoveKey( spep_1 + 342, ctbako, 14, 381.4 , 0 );
setEffMoveKey( spep_1 + 344, ctbako, 11.5, 396.3 , 0 );

setEffScaleKey( spep_1 + 317, ctbako, 1.88, 1.88 );
setEffScaleKey( spep_1 + 320, ctbako, 2.37, 2.37 );
setEffScaleKey( spep_1 + 322, ctbako, 2.53, 2.53 );
setEffScaleKey( spep_1 + 324, ctbako, 2.55, 2.55 );
setEffScaleKey( spep_1 + 326, ctbako, 2.57, 2.57 );
setEffScaleKey( spep_1 + 328, ctbako, 2.59, 2.59 );
setEffScaleKey( spep_1 + 330, ctbako, 2.62, 2.62 );
setEffScaleKey( spep_1 + 332, ctbako, 2.64, 2.64 );
setEffScaleKey( spep_1 + 334, ctbako, 2.66, 2.66 );
setEffScaleKey( spep_1 + 336, ctbako, 2.68, 2.68 );
setEffScaleKey( spep_1 + 338, ctbako, 2.7, 2.7 );
setEffScaleKey( spep_1 + 340, ctbako, 2.73, 2.73 );
setEffScaleKey( spep_1 + 342, ctbako, 2.82, 2.82 );
setEffScaleKey( spep_1 + 344, ctbako, 2.96, 2.96 );

setEffRotateKey( spep_1 + 317, ctbako, 11.7 );
setEffRotateKey( spep_1 + 320, ctbako, 14.6 );
setEffRotateKey( spep_1 + 322, ctbako, 15.6 );
setEffRotateKey( spep_1 + 344, ctbako, 15.6 );

setEffAlphaKey( spep_1 + 317, ctbako, 255 );
setEffAlphaKey( spep_1 + 338, ctbako, 255 );
setEffAlphaKey( spep_1 + 340, ctbako, 227 );
setEffAlphaKey( spep_1 + 342, ctbako, 142 );
setEffAlphaKey( spep_1 + 344, ctbako, 0 );

setEffShake(spep_1 + 317, ctbako, 27 ,20);

-- ** エフェクト等 ** --
entryFade(spep_1+48,3,2,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_1+118,2,2,3,fcolor_r,fcolor_g,fcolor_b,180);     -- white fade
entryFade(spep_1+180,3,7,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_1+385,3,2,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_1+485,5,2,2,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

SP_dodge = spep_1+3 ; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

pauseAll( SP_dodge, 67);

--キャラクターの固定
setMoveKey(SP_dodge, 1, 32.1, -0.4 , 0 );
setScaleKey(SP_dodge , 1, 1.45, 1.45 );
setRotateKey(SP_dodge,   1, 0);

--キャラクターの固定
setMoveKey(SP_dodge+8, 1, 32.1, -0.4 , 0 );
setScaleKey(SP_dodge+8 , 1, 1.45, 1.45  );
setRotateKey(SP_dodge+8,   1, 0);



setDisp(SP_dodge+9, 0, 0);
setDisp(SP_dodge+9, 1, 0);
--setMoveKey(SP_dodge+9, 1, 0 , 0, 0);
setScaleKey(SP_dodge+9,  1 , 1.34, 1.34 );
setRotateKey(SP_dodge+9,   1, 0);

--setMoveKey(SP_dodge+10, 1, 0 , 0, 0);
setScaleKey(SP_dodge+10,  1 , 1.3 ,1.3);
setRotateKey(SP_dodge+10,   1, 0);


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
--SE
playSe(spep_1 + 15,1010);
playSe(spep_1 + 86,43);
playSe(spep_1 + 119,1010);
playSe(spep_1 + 148,8);
playSe(spep_1 + 245,1010);
playSe(spep_1 + 272,43);
playSe(spep_1 + 319,1011);
playSe(spep_1 + 404,1018);
--playSe(spep_1 +404,44);


--次の準備
spep_2=spep_1+490;


--------------------------------------
--カードカットイン(90F)
--------------------------------------

playSe(spep_2,SE_05);
shuchusen9=entryEffectLife(spep_2,906,90,0x100,-1,0,0,0);   -- 集中線
setEffScaleKey(spep_2,shuchusen9,1.6,1.6);

speff2=entryEffect(spep_2,1507,0x80,-1,0,0,0);   -- カード
setEffReplaceTexture(speff2,1,1);
setEffReplaceTexture(speff2,2,0);-- カード差し替え
setEffReplaceTexture(speff2,5,4);-- 技名テクスチャ差し替え

-- ** エフェクト等 ** --
entryFade(spep_2+85,3,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_3=spep_2+90;


------------------------------------------------------
-- 蹴り
------------------------------------------------------
--エフェクトの再生(前)
kick_front=entryEffect(spep_3,SP_04x,0x100,-1,0,0,0);

setEffMoveKey(spep_3,kick_front,0,0,0);
setEffMoveKey(spep_3+500,kick_front,0,0,0);
setEffScaleKey(spep_3,kick_front,1.0,1.0);
setEffScaleKey(spep_3+500,kick_front,1.0,1.0);
setEffAlphaKey(spep_3,kick_front,255);
setEffAlphaKey(spep_3+500,kick_front,255);
setEffRotateKey(spep_3,kick_front,0);
setEffRotateKey(spep_3+500,kick_front,0);
setEffShake(spep_3 ,kick_front,192,10);---------------------------------------

--エフェクトの再生(後)
kick_back=entryEffect(spep_3,SP_05x,0x80,-1,0,0,0);

setEffMoveKey(spep_3,kick_back,0,0,0);
setEffMoveKey(spep_3+500,kick_back,0,0,0);
setEffScaleKey(spep_3,kick_back,1.0,1.0);
setEffScaleKey(spep_3+500,kick_back,1.0,1.0);
setEffAlphaKey(spep_3,kick_back,255);
setEffAlphaKey(spep_3+500,kick_back,255);
setEffRotateKey(spep_3,kick_back,0);
setEffRotateKey(spep_3+500,kick_back,0);

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 257, 1, 0 );
changeAnime( spep_3 + 0, 1, 106 );
changeAnime( spep_3 + 26, 1, 108 );

setMoveKey( spep_3 + 0, 1, 94.6, 77.1 , 0 );
setMoveKey( spep_3 + 2, 1, 89.1, 62.1 , 0 );
setMoveKey( spep_3 + 4, 1, 96.7, 81.2 , 0 );
setMoveKey( spep_3 + 6, 1, 88.2, 64.3 , 0 );
setMoveKey( spep_3 + 8, 1, 93.3, 75.7 , 0 );
setMoveKey( spep_3 + 10, 1, 101.9, 93.4 , 0 );
setMoveKey( spep_3 + 12, 1, 95.1, 78 , 0 );
setMoveKey( spep_3 + 14, 1, 95.1, 80.6 , 0 );
setMoveKey( spep_3 + 16, 1, 98.9, 88.5 , 0 );
setMoveKey( spep_3 + 18, 1, 107.5, 106.1 , 0 );
setMoveKey( spep_3 + 20, 1, 102.5, 96.9 , 0 );
setMoveKey( spep_3 + 22, 1, 114.1, 122.8 , 0 );
setMoveKey( spep_3 + 25, 1, 112, 115.6 , 0 );
setMoveKey( spep_3 + 26, 1, 40.2, 76.5 , 0 );
setMoveKey( spep_3 + 28, 1, 15.9, -1.1 , 0 );
setMoveKey( spep_3 + 30, 1, 11.2, 0.1 , 0 );
setMoveKey( spep_3 + 32, 1, -11.7, -46.1 , 0 );
setMoveKey( spep_3 + 34, 1, -15, -40.9 , 0 );
setMoveKey( spep_3 + 36, 1, -16.7, -54.5 , 0 );
setMoveKey( spep_3 + 38, 1, -25.7, -71.9 , 0 );
setMoveKey( spep_3 + 40, 1, -24, -77.5 , 0 );
setMoveKey( spep_3 + 42, 1, -44.7, -100.6 , 0 );
setMoveKey( spep_3 + 44, 1, -36.6, -101.4 , 0 );
setMoveKey( spep_3 + 46, 1, -42.6, -99.1 , 0 );
setMoveKey( spep_3 + 48, 1, -47.2, -119.4 , 0 );
setMoveKey( spep_3 + 50, 1, -50.8, -122.6 , 0 );
setMoveKey( spep_3 + 52, 1, -53.8, -127.6 , 0 );
setMoveKey( spep_3 + 54, 1, -61.1, -143 , 0 );
setMoveKey( spep_3 + 56, 1, -58.3, -136.4 , 0 );
setMoveKey( spep_3 + 58, 1, -54.4, -129.3 , 0 );
setMoveKey( spep_3 + 60, 1, -66.1, -151.1 , 0 );
setMoveKey( spep_3 + 62, 1, -69.5, -159.8 , 0 );
setMoveKey( spep_3 + 64, 1, -59, -138.5 , 0 );
setMoveKey( spep_3 + 66, 1, -69.6, -158.4 , 0 );
setMoveKey( spep_3 + 68, 1, -69.7, -158.7 , 0 );
setMoveKey( spep_3 + 70, 1, -71.8, -162.7 , 0 );
setMoveKey( spep_3 + 72, 1, -75, -169.5 , 0 );
setMoveKey( spep_3 + 74, 1, -76.6, -173.6 , 0 );
setMoveKey( spep_3 + 76, 1, -63.3, -146 , 0 );
setMoveKey( spep_3 + 78, 1, -72.5, -165.1 , 0 );
setMoveKey( spep_3 + 80, 1, -74.2, -167.9 , 0 );
setMoveKey( spep_3 + 82, 1, -74.7, -169.6 , 0 );
setMoveKey( spep_3 + 84, 1, -81.2, -182.9 , 0 );
setMoveKey( spep_3 + 86, 1, -74.3, -170.7 , 0 );
setMoveKey( spep_3 + 88, 1, -81.2, -183.4 , 0 );
setMoveKey( spep_3 + 90, 1, -87.5, -196.4 , 0 );
setMoveKey( spep_3 + 92, 1, -83.4, -188.9 , 0 );
setMoveKey( spep_3 + 94, 1, -90.2, -201.6 , 0 );
setMoveKey( spep_3 + 96, 1, -79.7, -181.7 , 0 );
setMoveKey( spep_3 + 98, 1, -86.4, -196.5 , 0 );
setMoveKey( spep_3 + 100, 1, -87.7, -198.7 , 0 );
setMoveKey( spep_3 + 102, 1, -112.8, -251.4 , 0 );
setMoveKey( spep_3 + 104, 1, -132.6, -298.9 , 0 );
setMoveKey( spep_3 + 106, 1, -165.9, -368.2 , 0 );
setMoveKey( spep_3 + 108, 1, -180.6, -398 , 0 );
setMoveKey( spep_3 + 110, 1, -233.2, -505.9 , 0 );
setMoveKey( spep_3 + 112, 1, -300.9, -641.7 , 0 );
setMoveKey( spep_3 + 114, 1, -371.7, -784.4 , 0 );
setMoveKey( spep_3 + 116, 1, -555.8, -1152.5 , 0 );
setMoveKey( spep_3 + 118, 1, -877.4, -1801.3 , 0 );
setMoveKey( spep_3 + 120, 1, 218.8, 400.6 , 0 );
setMoveKey( spep_3 + 122, 1, 218.6, 400.3 , 0 );
setMoveKey( spep_3 + 124, 1, 218, 399.2 , 0 );
setMoveKey( spep_3 + 126, 1, 217, 397.4 , 0 );
setMoveKey( spep_3 + 128, 1, 215.5, 394.9 , 0 );
setMoveKey( spep_3 + 130, 1, 213.7, 391.7 , 0 );
setMoveKey( spep_3 + 132, 1, 211.4, 387.8 , 0 );
setMoveKey( spep_3 + 134, 1, 208.8, 383.2 , 0 );
setMoveKey( spep_3 + 136, 1, 205.7, 377.8 , 0 );
setMoveKey( spep_3 + 138, 1, 202.3, 371.7 , 0 );
setMoveKey( spep_3 + 140, 1, 198.5, 364.9 , 0 );
setMoveKey( spep_3 + 142, 1, 196.4, 359.5 , 0 );
setMoveKey( spep_3 + 144, 1, 194.4, 354 , 0 );
setMoveKey( spep_3 + 146, 1, 192.4, 348.5 , 0 );
setMoveKey( spep_3 + 148, 1, 190.4, 343 , 0 );
setMoveKey( spep_3 + 150, 1, 188.4, 337.5 , 0 );
setMoveKey( spep_3 + 152, 1, 186.5, 332 , 0 );
setMoveKey( spep_3 + 154, 1, 186.6, 330.5 , 0 );
setMoveKey( spep_3 + 156, 1, 186.4, 328.8 , 0 );
setMoveKey( spep_3 + 158, 1, 186.7, 327.3 , 0 );
setMoveKey( spep_3 + 160, 1, 187.8, 327.4 , 0 );
setMoveKey( spep_3 + 162, 1, 190, 330.4 , 0 );
setMoveKey( spep_3 + 164, 1, 195.3, 337.4 , 0 );
setMoveKey( spep_3 + 166, 1, 202.3, 348.2 , 0 );
setMoveKey( spep_3 + 168, 1, 208.2, 358 , 0 );
setMoveKey( spep_3 + 170, 1, 213.1, 364.9 , 0 );
setMoveKey( spep_3 + 172, 1, 216.9, 369.6 , 0 );
setMoveKey( spep_3 + 174, 1, 220.3, 372.8 , 0 );
setMoveKey( spep_3 + 176, 1, 222.1, 375.8 , 0 );
setMoveKey( spep_3 + 178, 1, 224.4, 377.3 , 0 );
setMoveKey( spep_3 + 180, 1, 225.6, 378.8 , 0 );
setMoveKey( spep_3 + 182, 1, 227.3, 379.5 , 0 );
setMoveKey( spep_3 + 184, 1, 228.4, 379.8 , 0 );
setMoveKey( spep_3 + 186, 1, 229.3, 380 , 0 );
setMoveKey( spep_3 + 188, 1, 230.2, 380 , 0 );
setMoveKey( spep_3 + 190, 1, 231.2, 379.2 , 0 );
setMoveKey( spep_3 + 192, 1, 231.6, 379 , 0 );
setMoveKey( spep_3 + 194, 1, 231.8, 378.7 , 0 );
setMoveKey( spep_3 + 196, 1, 232.5, 377.6 , 0 );
setMoveKey( spep_3 + 198, 1, 233.1, 376.3 , 0 );
setMoveKey( spep_3 + 200, 1, 232.8, 375.9 , 0 );
setMoveKey( spep_3 + 202, 1, 233.2, 374.7 , 0 );
setMoveKey( spep_3 + 204, 1, 233.5, 373.4 , 0 );
setMoveKey( spep_3 + 206, 1, 233.7, 372.1 , 0 );
setMoveKey( spep_3 + 208, 1, 233.8, 370.9 , 0 );
setMoveKey( spep_3 + 210, 1, 233.7, 369.6 , 0 );
setMoveKey( spep_3 + 212, 1, 233.7, 368.6 , 0 );
setMoveKey( spep_3 + 214, 1, 231.8, 367.3 , 0 );
setMoveKey( spep_3 + 216, 1, 236.1, 367.5 , 0 );
setMoveKey( spep_3 + 218, 1, 231.3, 364.4 , 0 );
setMoveKey( spep_3 + 220, 1, 236.2, 364.2 , 0 );
setMoveKey( spep_3 + 222, 1, 231.5, 363.8 , 0 );
setMoveKey( spep_3 + 224, 1, 236.5, 363.3 , 0 );
setMoveKey( spep_3 + 226, 1, 232.3, 362.1 , 0 );
setMoveKey( spep_3 + 228, 1, 235, 365.5 , 0 );
setMoveKey( spep_3 + 230, 1, 234.2, 360.5 , 0 );
setMoveKey( spep_3 + 232, 1, 235.7, 365.1 , 0 );
setMoveKey( spep_3 + 234, 1, 233.2, 361.4 , 0 );
setMoveKey( spep_3 + 236, 1, 233.5, 365.8 , 0 );
setMoveKey( spep_3 + 238, 1, 236.2, 361.4 , 0 );
setMoveKey( spep_3 + 240, 1, 232, 363.1 , 0 );
setMoveKey( spep_3 + 242, 1, 235.9, 361.8 , 0 );
setMoveKey( spep_3 + 244, 1, 232, 364.8 , 0 );
setMoveKey( spep_3 + 246, 1, 235.1, 361.8 , 0 );
setMoveKey( spep_3 + 248, 1, 231.4, 363.6 , 0 );
setMoveKey( spep_3 + 250, 1, 234.3, 361.2 , 0 );
setMoveKey( spep_3 + 252, 1, 232.6, 364 , 0 );
setMoveKey( spep_3 + 254, 1, 236.1, 362.5 , 0 );
setMoveKey( spep_3 + 257, 1, 232.2, 364.8 , 0 );
--[[
setMoveKey( spep_3 + 258, 1, 221, 411.3 , 0 );
setMoveKey( spep_3 + 260, 1, 218.7, 418.5 , 0 );
setMoveKey( spep_3 + 262, 1, 221.1, 418.7 , 0 );
setMoveKey( spep_3 + 264, 1, 215.7, 423.4 , 0 );
setMoveKey( spep_3 + 266, 1, 219, 424.4 , 0 );
setMoveKey( spep_3 + 268, 1, 218.2, 430.4 , 0 );
setMoveKey( spep_3 + 270, 1, 214.9, 430.7 , 0 );
setMoveKey( spep_3 + 272, 1, 219.1, 433.9 , 0 );
setMoveKey( spep_3 + 274, 1, 214.6, 441.2 , 0 );
setMoveKey( spep_3 + 276, 1, 215.1, 441.4 , 0 );
setMoveKey( spep_3 + 278, 1, 216.3, 449.7 , 0 );
setMoveKey( spep_3 + 280, 1, 215.2, 450.7 , 0 );
setMoveKey( spep_3 + 282, 1, 214.7, 459.1 , 0 );
setMoveKey( spep_3 + 284, 1, 215, 459.3 , 0 );
setMoveKey( spep_3 + 286, 1, 211.8, 467.5 , 0 );
setMoveKey( spep_3 + 288, 1, 213.9, 470.1 , 0 );
setMoveKey( spep_3 + 290, 1, 209.9, 474.3 , 0 );
setMoveKey( spep_3 + 292, 1, 212.5, 479.7 , 0 );
setMoveKey( spep_3 + 294, 1, 209.1, 481.6 , 0 );
setMoveKey( spep_3 + 296, 1, 210.3, 490.4 , 0 );
setMoveKey( spep_3 + 298, 1, 209.2, 491.4 , 0 );
setMoveKey( spep_3 + 300, 1, 210, 499 , 0 );
setMoveKey( spep_3 + 302, 1, 206.9, 499.8 , 0 );
setMoveKey( spep_3 + 304, 1, 207.1, 508.6 , 0 );
setMoveKey( spep_3 + 306, 1, 206.7, 509 , 0 );
setMoveKey( spep_3 + 308, 1, 205.8, 517.3 , 0 );
setMoveKey( spep_3 + 310, 1, 205.4, 518.1 , 0 );
setMoveKey( spep_3 + 312, 1, 206.2, 526.3 , 0 );
setMoveKey( spep_3 + 314, 1, 202.9, 526.4 , 0 );
setMoveKey( spep_3 + 316, 1, 206.1, 534.5 , 0 );
setMoveKey( spep_3 + 318, 1, 202, 535.9 , 0 );
setMoveKey( spep_3 + 320, 1, 203, 544.2 , 0 );
setMoveKey( spep_3 + 322, 1, 201.7, 533.2 , 0 );
setMoveKey( spep_3 + 324, 1, 197.2, 528.5 , 0 );
setMoveKey( spep_3 + 326, 1, 198.5, 519.8 , 0 );
setMoveKey( spep_3 + 328, 1, 194.9, 516.5 , 0 );
setMoveKey( spep_3 + 330, 1, 191.8, 506.8 , 0 );
setMoveKey( spep_3 + 332, 1, 191.1, 503.5 , 0 );
setMoveKey( spep_3 + 334, 1, 187.6, 493.4 , 0 );
setMoveKey( spep_3 + 336, 1, 187.4, 489.9 , 0 );
setMoveKey( spep_3 + 338, 1, 185.8, 478.7 , 0 );
setMoveKey( spep_3 + 340, 1, 184.1, 476.6 , 0 );
setMoveKey( spep_3 + 342, 1, 180.4, 465.7 , 0 );
setMoveKey( spep_3 + 344, 1, 181.4, 461.1 , 0 );
setMoveKey( spep_3 + 346, 1, 175.4, 453.6 , 0 );
]]--


setScaleKey( spep_3 + 0, 1, 1.25, 1.25 );
setScaleKey( spep_3 + 2, 1, 1.3, 1.3 );
setScaleKey( spep_3 + 4, 1, 1.25, 1.25 );
setScaleKey( spep_3 + 6, 1, 1.27, 1.27 );
setScaleKey( spep_3 + 8, 1, 1.25, 1.25 );
setScaleKey( spep_3 + 10, 1, 1.23, 1.23 );
setScaleKey( spep_3 + 12, 1, 1.26, 1.26 );
setScaleKey( spep_3 + 14, 1, 1.24, 1.24 );
setScaleKey( spep_3 + 16, 1, 1.23, 1.23 );
setScaleKey( spep_3 + 18, 1, 1.21, 1.21 );
setScaleKey( spep_3 + 20, 1, 1.21, 1.21 );
setScaleKey( spep_3 + 22, 1, 1.17, 1.17 );
setScaleKey( spep_3 + 25, 1, 1.19, 1.19 );
setScaleKey( spep_3 + 26, 1, 1.51, 1.51 );
setScaleKey( spep_3 + 28, 1, 1.45, 1.45 );
setScaleKey( spep_3 + 30, 1, 1.54, 1.54 );
setScaleKey( spep_3 + 32, 1, 1.66, 1.66 );
setScaleKey( spep_3 + 34, 1, 1.64, 1.64 );
setScaleKey( spep_3 + 36, 1, 1.7, 1.7 );
setScaleKey( spep_3 + 38, 1, 1.63, 1.63 );
setScaleKey( spep_3 + 40, 1, 1.64, 1.64 );
setScaleKey( spep_3 + 42, 1, 1.75, 1.75 );
setScaleKey( spep_3 + 44, 1, 1.72, 1.72 );
setScaleKey( spep_3 + 46, 1, 1.69, 1.69 );
setScaleKey( spep_3 + 48, 1, 1.8, 1.8 );
setScaleKey( spep_3 + 50, 1, 1.71, 1.71 );
setScaleKey( spep_3 + 52, 1, 1.7, 1.7 );
setScaleKey( spep_3 + 54, 1, 1.75, 1.75 );
setScaleKey( spep_3 + 56, 1, 1.72, 1.72 );
setScaleKey( spep_3 + 58, 1, 1.72, 1.72 );
setScaleKey( spep_3 + 60, 1, 1.74, 1.74 );
setScaleKey( spep_3 + 62, 1, 1.78, 1.78 );
setScaleKey( spep_3 + 64, 1, 1.74, 1.74 );
setScaleKey( spep_3 + 66, 1, 1.75, 1.75 );
setScaleKey( spep_3 + 68, 1, 1.76, 1.76 );
setScaleKey( spep_3 + 70, 1, 1.76, 1.76 );
setScaleKey( spep_3 + 72, 1, 1.79, 1.79 );
setScaleKey( spep_3 + 74, 1, 1.81, 1.81 );
setScaleKey( spep_3 + 76, 1, 1.74, 1.74 );
setScaleKey( spep_3 + 78, 1, 1.79, 1.79 );
setScaleKey( spep_3 + 80, 1, 1.78, 1.78 );
setScaleKey( spep_3 + 82, 1, 1.79, 1.79 );
setScaleKey( spep_3 + 84, 1, 1.82, 1.82 );
setScaleKey( spep_3 + 86, 1, 1.81, 1.81 );
setScaleKey( spep_3 + 88, 1, 1.82, 1.82 );
setScaleKey( spep_3 + 90, 1, 1.84, 1.84 );
setScaleKey( spep_3 + 94, 1, 1.84, 1.84 );
setScaleKey( spep_3 + 96, 1, 1.82, 1.82 );
setScaleKey( spep_3 + 98, 1, 1.86, 1.86 );
setScaleKey( spep_3 + 100, 1, 1.89, 1.89 );
setScaleKey( spep_3 + 102, 1, 2.18, 2.18 );
setScaleKey( spep_3 + 104, 1, 2.67, 2.67 );
setScaleKey( spep_3 + 106, 1, 3.12, 3.12 );
setScaleKey( spep_3 + 108, 1, 3.34, 3.34 );
setScaleKey( spep_3 + 110, 1, 3.7, 3.7 );
setScaleKey( spep_3 + 112, 1, 4.03, 4.03 );
setScaleKey( spep_3 + 114, 1, 4.38, 4.38 );
setScaleKey( spep_3 + 116, 1, 5.15, 5.15 );
setScaleKey( spep_3 + 118, 1, 6.49, 6.49 );
setScaleKey( spep_3 + 120, 1, 0.57, 0.57 );
setScaleKey( spep_3 + 124, 1, 0.57, 0.57 );
setScaleKey( spep_3 + 126, 1, 0.58, 0.58 );
setScaleKey( spep_3 + 128, 1, 0.58, 0.58 );
setScaleKey( spep_3 + 130, 1, 0.59, 0.59 );
setScaleKey( spep_3 + 132, 1, 0.6, 0.6 );
setScaleKey( spep_3 + 134, 1, 0.61, 0.61 );
setScaleKey( spep_3 + 136, 1, 0.62, 0.62 );
setScaleKey( spep_3 + 138, 1, 0.64, 0.64 );
setScaleKey( spep_3 + 140, 1, 0.65, 0.65 );
setScaleKey( spep_3 + 142, 1, 0.67, 0.67 );
setScaleKey( spep_3 + 144, 1, 0.68, 0.68 );
setScaleKey( spep_3 + 146, 1, 0.69, 0.69 );
setScaleKey( spep_3 + 148, 1, 0.7, 0.7 );
setScaleKey( spep_3 + 150, 1, 0.71, 0.71 );
setScaleKey( spep_3 + 152, 1, 0.72, 0.72 );
setScaleKey( spep_3 + 160, 1, 0.72, 0.72 );
setScaleKey( spep_3 + 162, 1, 0.7, 0.7 );
setScaleKey( spep_3 + 164, 1, 0.68, 0.68 );
setScaleKey( spep_3 + 166, 1, 0.67, 0.67 );
setScaleKey( spep_3 + 168, 1, 0.63, 0.63 );
setScaleKey( spep_3 + 170, 1, 0.61, 0.61 );
setScaleKey( spep_3 + 172, 1, 0.6, 0.6 );
setScaleKey( spep_3 + 174, 1, 0.59, 0.59 );
setScaleKey( spep_3 + 176, 1, 0.57, 0.57 );
setScaleKey( spep_3 + 178, 1, 0.57, 0.57 );
setScaleKey( spep_3 + 180, 1, 0.56, 0.56 );
setScaleKey( spep_3 + 182, 1, 0.55, 0.55 );
setScaleKey( spep_3 + 190, 1, 0.55, 0.55 );
setScaleKey( spep_3 + 192, 1, 0.54, 0.54 );
setScaleKey( spep_3 + 198, 1, 0.54, 0.54 );
setScaleKey( spep_3 + 200, 1, 0.53, 0.53 );
setScaleKey( spep_3 + 206, 1, 0.53, 0.53 );
setScaleKey( spep_3 + 208, 1, 0.54, 0.54 );
setScaleKey( spep_3 + 254, 1, 0.54, 0.54 );
setScaleKey( spep_3 + 255, 1, 2.88, 2.88 );
setScaleKey( spep_3 + 260, 1, 3.57, 3.57 );
setScaleKey( spep_3 + 262, 1, 4.26, 4.26 );
setScaleKey( spep_3 + 264, 1, 4.94, 4.94 );
setScaleKey( spep_3 + 266, 1, 5.63, 5.63 );
setScaleKey( spep_3 + 268, 1, 6.32, 6.32 );
setScaleKey( spep_3 + 270, 1, 7, 7 );
setScaleKey( spep_3 + 272, 1, 7.69, 7.69 );
setScaleKey( spep_3 + 275, 1, 8.66, 8.66 );
--[[
setScaleKey( spep_3 + 276, 1, 9.64, 9.64 );
setScaleKey( spep_3 + 278, 1, 10.61, 10.61 );
setScaleKey( spep_3 + 280, 1, 11.59, 11.59 );
setScaleKey( spep_3 + 282, 1, 12.56, 12.56 );
setScaleKey( spep_3 + 284, 1, 13.54, 13.54 );
setScaleKey( spep_3 + 286, 1, 14.51, 14.51 );
setScaleKey( spep_3 + 288, 1, 15.49, 15.49 );
setScaleKey( spep_3 + 290, 1, 16.46, 16.46 );
setScaleKey( spep_3 + 292, 1, 17.44, 17.44 );
setScaleKey( spep_3 + 294, 1, 18.41, 18.41 );
setScaleKey( spep_3 + 296, 1, 19.38, 19.38 );
setScaleKey( spep_3 + 298, 1, 20.36, 20.36 );
setScaleKey( spep_3 + 300, 1, 21.33, 21.33 );
setScaleKey( spep_3 + 302, 1, 22.31, 22.31 );
setScaleKey( spep_3 + 304, 1, 23.28, 23.28 );
setScaleKey( spep_3 + 306, 1, 24.26, 24.26 );
setScaleKey( spep_3 + 308, 1, 25.23, 25.23 );
setScaleKey( spep_3 + 310, 1, 26.21, 26.21 );
setScaleKey( spep_3 + 312, 1, 27.18, 27.18 );
setScaleKey( spep_3 + 314, 1, 28.16, 28.16 );
setScaleKey( spep_3 + 316, 1, 29.13, 29.13 );
setScaleKey( spep_3 + 318, 1, 30.11, 30.11 );
setScaleKey( spep_3 + 320, 1, 31.08, 31.08 );
setScaleKey( spep_3 + 322, 1, 31.63, 31.63 );
setScaleKey( spep_3 + 324, 1, 32.17, 32.17 );
setScaleKey( spep_3 + 326, 1, 32.72, 32.72 );
setScaleKey( spep_3 + 328, 1, 33.26, 33.26 );
setScaleKey( spep_3 + 330, 1, 33.81, 33.81 );
setScaleKey( spep_3 + 332, 1, 34.35, 34.35 );
setScaleKey( spep_3 + 334, 1, 34.9, 34.9 );
setScaleKey( spep_3 + 336, 1, 35.44, 35.44 );
setScaleKey( spep_3 + 338, 1, 35.99, 35.99 );
setScaleKey( spep_3 + 340, 1, 36.53, 36.53 );
setScaleKey( spep_3 + 342, 1, 37.08, 37.08 );
setScaleKey( spep_3 + 344, 1, 37.62, 37.62 );
setScaleKey( spep_3 + 346, 1, 38.17, 38.17 );
]]--


setRotateKey( spep_3 + 0, 1, 41.7 );
setRotateKey( spep_3 + 2, 1, 42.2 );
setRotateKey( spep_3 + 4, 1, 42.6 );
setRotateKey( spep_3 + 6, 1, 43.1 );
setRotateKey( spep_3 + 8, 1, 43.5 );
setRotateKey( spep_3 + 10, 1, 44 );
setRotateKey( spep_3 + 12, 1, 44.4 );
setRotateKey( spep_3 + 14, 1, 44.9 );
setRotateKey( spep_3 + 16, 1, 45.3 );
setRotateKey( spep_3 + 18, 1, 45.8 );
setRotateKey( spep_3 + 20, 1, 46.2 );
setRotateKey( spep_3 + 22, 1, 46.7 );
setRotateKey( spep_3 + 25, 1, 47.1 );
setRotateKey( spep_3 + 26, 1, 110.1 );
setRotateKey( spep_3 + 90, 1, 110.1 );
setRotateKey( spep_3 + 92, 1, 110 );
setRotateKey( spep_3 + 124, 1, 110 );
setRotateKey( spep_3 + 126, 1, 109.9 );
setRotateKey( spep_3 + 128, 1, 109.9 );
setRotateKey( spep_3 + 130, 1, 109.8 );
setRotateKey( spep_3 + 132, 1, 109.7 );
setRotateKey( spep_3 + 134, 1, 109.7 );
setRotateKey( spep_3 + 136, 1, 109.6 );
setRotateKey( spep_3 + 138, 1, 109.4 );
setRotateKey( spep_3 + 140, 1, 109.3 );
setRotateKey( spep_3 + 142, 1, 109.1 );
setRotateKey( spep_3 + 144, 1, 109 );
setRotateKey( spep_3 + 146, 1, 108.8 );
setRotateKey( spep_3 + 148, 1, 108.6 );
setRotateKey( spep_3 + 150, 1, 108.5 );
setRotateKey( spep_3 + 152, 1, 108.3 );
setRotateKey( spep_3 + 154, 1, 108.1 );
setRotateKey( spep_3 + 156, 1, 107.9 );
setRotateKey( spep_3 + 158, 1, 107.6 );
setRotateKey( spep_3 + 160, 1, 107.4 );
setRotateKey( spep_3 + 162, 1, 107.1 );
setRotateKey( spep_3 + 164, 1, 106.9 );
setRotateKey( spep_3 + 166, 1, 106.6 );
setRotateKey( spep_3 + 168, 1, 106.3 );
setRotateKey( spep_3 + 170, 1, 106 );
setRotateKey( spep_3 + 172, 1, 105.7 );
setRotateKey( spep_3 + 174, 1, 105.4 );
setRotateKey( spep_3 + 176, 1, 105.1 );
setRotateKey( spep_3 + 178, 1, 104.8 );
setRotateKey( spep_3 + 180, 1, 104.5 );
setRotateKey( spep_3 + 182, 1, 104.2 );
setRotateKey( spep_3 + 184, 1, 103.8 );
setRotateKey( spep_3 + 186, 1, 103.5 );
setRotateKey( spep_3 + 188, 1, 103.2 );
setRotateKey( spep_3 + 190, 1, 102.9 );
setRotateKey( spep_3 + 192, 1, 102.5 );
setRotateKey( spep_3 + 194, 1, 102.2 );
setRotateKey( spep_3 + 196, 1, 101.9 );
setRotateKey( spep_3 + 198, 1, 101.6 );
setRotateKey( spep_3 + 200, 1, 101.3 );
setRotateKey( spep_3 + 202, 1, 101 );
setRotateKey( spep_3 + 204, 1, 100.8 );
setRotateKey( spep_3 + 206, 1, 100.5 );
setRotateKey( spep_3 + 208, 1, 100.3 );
setRotateKey( spep_3 + 210, 1, 100 );
setRotateKey( spep_3 + 212, 1, 99.8 );
setRotateKey( spep_3 + 214, 1, 99.6 );
setRotateKey( spep_3 + 216, 1, 99.5 );
setRotateKey( spep_3 + 218, 1, 99.3 );
setRotateKey( spep_3 + 220, 1, 99.2 );
setRotateKey( spep_3 + 222, 1, 99.1 );
setRotateKey( spep_3 + 224, 1, 99 );
setRotateKey( spep_3 + 226, 1, 98.9 );
setRotateKey( spep_3 + 228, 1, 98.8 );
setRotateKey( spep_3 + 257, 1, 98.8 );
--setRotateKey( spep_3 + 258, 1, 12 );

setShakeChara(spep_3 + 26, 1, 104,15);----------------------------------

--文字エントリー
ctbaki2 = entryEffectLife( spep_3 + 26,  10020, 18, 0x100, -1, 0, -34.8, -170.1 );--バキ
setEffMoveKey( spep_3 + 26, ctbaki2, -34.8, -170.1 , 0 );
setEffMoveKey( spep_3 + 28, ctbaki2, -42.2, -220.4 , 0 );
setEffMoveKey( spep_3 + 30, ctbaki2, -50.7, -240.4 , 0 );
setEffMoveKey( spep_3 + 32, ctbaki2, -47.3, -244.6 , 0 );
setEffMoveKey( spep_3 + 34, ctbaki2, -59.3, -261.1 , 0 );
setEffMoveKey( spep_3 + 36, ctbaki2, -45.6, -253.3 , 0 );
setEffMoveKey( spep_3 + 38, ctbaki2, -61.5, -253.9 , 0 );
setEffMoveKey( spep_3 + 40, ctbaki2, -54.9, -259.3 , 0 );
setEffMoveKey( spep_3 + 42, ctbaki2, -54.3, -278.3 , 0 );
setEffMoveKey( spep_3 + 44, ctbaki2, -55.9, -285.5 , 0 );

setEffScaleKey( spep_3 + 26, ctbaki2, 1.64, 1.64 );
setEffScaleKey( spep_3 + 28, ctbaki2, 2, 2 );
setEffScaleKey( spep_3 + 30, ctbaki2, 2.12, 2.12 );
setEffScaleKey( spep_3 + 32, ctbaki2, 2.17, 2.17 );
setEffScaleKey( spep_3 + 34, ctbaki2, 2.2, 2.2 );
setEffScaleKey( spep_3 + 36, ctbaki2, 2.23, 2.23 );
setEffScaleKey( spep_3 + 38, ctbaki2, 2.24, 2.24 );
setEffScaleKey( spep_3 + 40, ctbaki2, 2.25, 2.25 );
setEffScaleKey( spep_3 + 42, ctbaki2, 2.4, 2.4 );
setEffScaleKey( spep_3 + 44, ctbaki2, 2.45, 2.45 );

setEffRotateKey( spep_3 + 26, ctbaki2, 0.5 );
setEffRotateKey( spep_3 + 44, ctbaki2, 0.5 );

setEffAlphaKey( spep_3 + 26, ctbaki2, 255 );
setEffAlphaKey( spep_3 + 40, ctbaki2, 255 );
setEffAlphaKey( spep_3 + 42, ctbaki2, 64 );
setEffAlphaKey( spep_3 + 44, ctbaki2, 0 );

setEffShake(spep_3 + 26, ctbaki2, 18 ,20);

--集中線
shuchu3 = entryEffectLife( spep_3 + 164,  906, 326, 0x100, -1, 0, 200.4, 44.5 );
setEffMoveKey( spep_3 + 164, shuchu3, 200.4, 44.5 , 0 );
setEffMoveKey( spep_3 + 490, shuchu3, 200.9, 299.7 , 0 );

setEffScaleKey( spep_3 + 164, shuchu3, 1.42, 1.43 );
setEffScaleKey( spep_3 + 166, shuchu3, 1.58, 1.6 );
setEffScaleKey( spep_3 + 168, shuchu3, 1.74, 1.76 );
setEffScaleKey( spep_3 + 170, shuchu3, 1.9, 1.93 );
setEffScaleKey( spep_3 + 172, shuchu3, 2.07, 2.09 );
setEffScaleKey( spep_3 + 174, shuchu3, 2.23, 2.26 );
setEffScaleKey( spep_3 + 176, shuchu3, 2.39, 2.42 );
setEffScaleKey( spep_3 + 490, shuchu3, 2.39, 2.42 );

setEffRotateKey( spep_3 + 164, shuchu3, 180 );
setEffRotateKey( spep_3 + 490, shuchu3, 180 );

setEffAlphaKey( spep_3 + 164, shuchu3, 36 );
setEffAlphaKey( spep_3 + 166, shuchu3, 73 );
setEffAlphaKey( spep_3 + 168, shuchu3, 109 );
setEffAlphaKey( spep_3 + 170, shuchu3, 146 );
setEffAlphaKey( spep_3 + 172, shuchu3, 182 );
setEffAlphaKey( spep_3 + 174, shuchu3, 219 );
setEffAlphaKey( spep_3 + 176, shuchu3, 255 );
setEffAlphaKey( spep_3 + 490, shuchu3, 255 );

--SE
playSe(spep_3 + 26,1011);
playSe(spep_3 + 120,1018);
playSe(spep_3 + 240,SE_10);
playSe(spep_3 + 320,1062);

-- ** エフェクト等 ** --
entryFade(spep_3+113,4,3,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

-- ダメージ表示
dealDamage(spep_3+290);
entryFade( spep_3+480, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_3+490);



 end

