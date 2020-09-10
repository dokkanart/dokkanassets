--メタルクウラ 1015370 ロックオンバスター
--sp_effect_a7_00024

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
SP_01=	152264	;--	格闘　前
SP_02=	152265	;--	格闘　奥
SP_03=	152266	;--	瞬間移動中
SP_04=	152267	;--	ロックオン　前
SP_05=	152268	;--	ロックオン　奥
SP_06=	152269	;--	被弾　前
SP_07=	152270	;--	被弾　奥
SP_08=	152271	;--	爆発

--敵側
SP_01x=	152264	;--	格闘　前	
SP_02x=	152265	;--	格闘　奥	
SP_03x=	152266	;--	瞬間移動中	
SP_04x=	152272	;--	ロックオン　前	(敵)
SP_05x=	152273	;--	ロックオン　奥	(敵)
SP_06x=	152269	;--	被弾　前	
SP_07x=	152270	;--	被弾　奥	
SP_08x=	152271	;--	爆発	


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
------------------------------------------------------
-- 格闘
------------------------------------------------------
--エフェクトの再生

spep_0=0;

--SE
playSe( spep_0+6, SE_04);--くるり

--エフェクト再生(前)
fight_front=entryEffectLife(spep_0,SP_01,278,0x100,-1,0,0,0);

setEffMoveKey(spep_0,fight_front,0,0,0);
setEffMoveKey(spep_0+278,fight_front,0,0,0);

setEffScaleKey(spep_0,fight_front,1.0,1.0);
setEffScaleKey(spep_0+278,fight_front,1.0,1.0);

setEffAlphaKey(spep_0,fight_front,255);
setEffAlphaKey(spep_0+278,fight_front,255);

setEffRotateKey(spep_0,fight_front,0);
setEffRotateKey(spep_0+278,fight_front,0);


--エフェクト再生(後)
fight_back=entryEffectLife(spep_0,SP_02,278,0x80,-1,0,0,0);

setEffMoveKey(spep_0,fight_back,0,0,0);
setEffMoveKey(spep_0+278,fight_back,0,0,0);

setEffScaleKey(spep_0,fight_back,1.0,1.0);
setEffScaleKey(spep_0+278,fight_back,1.0,1.0);

setEffAlphaKey(spep_0,fight_back,255);
setEffAlphaKey(spep_0+278,fight_back,255);

setEffRotateKey(spep_0,fight_back,0);
setEffRotateKey(spep_0+278,fight_back,0);

-- ** エフェクト等 ** --
entryFade(spep_0, 0, 4, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--敵の動き
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 278, 1, 0 );

changeAnime( spep_0 + 0, 1, 102 );
changeAnime( spep_0 + 26, 1, 101 );
changeAnime( spep_0 + 54, 1, 100 );
changeAnime( spep_0 + 109, 1, 107 );--112
changeAnime( spep_0 + 110, 1, 107 );--112
changeAnime( spep_0 + 112, 1, 106 );--116
changeAnime( spep_0 + 171, 1, 108 );--174
changeAnime( spep_0 + 172, 1, 108 );--174
changeAnime( spep_0 + 194, 1, 105 );
changeAnime( spep_0 + 216, 1, 107 );

setMoveKey( spep_0 + 0, 1, 112.9, -29.6 , 0 );
setMoveKey( spep_0 + 2, 1, 116.4, -29.6 , 0 );
setMoveKey( spep_0 + 4, 1, 125.6, -29.8 , 0 );
setMoveKey( spep_0 + 6, 1, 142.2, -30.2 , 0 );
setMoveKey( spep_0 + 8, 1, 167.4, -30.8 , 0 );
setMoveKey( spep_0 + 10, 1, 203.2, -31.7 , 0 );
setMoveKey( spep_0 + 12, 1, 252.1, -33.3 , 0 );
setMoveKey( spep_0 + 14, 1, 318.6, -36.1 , 0 );
setMoveKey( spep_0 + 16, 1, 408.8, -40.8 , 0 );
setMoveKey( spep_0 + 18, 1, 535, -50.6 , 0 );
setMoveKey( spep_0 + 20, 1, 724.5, -79.5 , 0 );
setMoveKey( spep_0 + 22, 1, 746.2, -82.7 , 0 );
setMoveKey( spep_0 + 24, 1, 767.9, -85.9 , 0 );
setMoveKey( spep_0 + 26, 1, 789.6, -89.1 , 0 );
setMoveKey( spep_0 + 28, 1, 811.3, -92.3 , 0 );
setMoveKey( spep_0 + 31, 1, 833, -95.4 , 0 );
setMoveKey( spep_0 + 32, 1, 753.5, -148.5 , 0 );
setMoveKey( spep_0 + 34, 1, 740.6, -148.6 , 0 );
setMoveKey( spep_0 + 36, 1, 702.8, -149.3 , 0 );
setMoveKey( spep_0 + 38, 1, 642.8, -150.3 , 0 );
setMoveKey( spep_0 + 40, 1, 565.1, -151.6 , 0 );
setMoveKey( spep_0 + 42, 1, 475.5, -153.1 , 0 );
setMoveKey( spep_0 + 44, 1, 381.4, -154.7 , 0 );
setMoveKey( spep_0 + 46, 1, 290.6, -156.2 , 0 );
setMoveKey( spep_0 + 48, 1, 210.9, -157.6 , 0 );
setMoveKey( spep_0 + 50, 1, 148.8, -158.6 , 0 );
setMoveKey( spep_0 + 53, 1, 109.2, -159.3 , 0 );
setMoveKey( spep_0 + 54, 1, 95.5, -159.5 , 0 );
setMoveKey( spep_0 + 56, 1, 86, -159.5 , 0 );
setMoveKey( spep_0 + 58, 1, 78.6, -159.5 , 0 );
setMoveKey( spep_0 + 60, 1, 73.3, -159.5 , 0 );
setMoveKey( spep_0 + 62, 1, 70.1, -159.5 , 0 );
setMoveKey( spep_0 + 64, 1, 69.1, -159.5 , 0 );
setMoveKey( spep_0 + 66, 1, 68.6, -159.5 , 0 );
setMoveKey( spep_0 + 68, 1, 68.1, -159.5 , 0 );
setMoveKey( spep_0 + 70, 1, 67.7, -159.5 , 0 );
setMoveKey( spep_0 + 72, 1, 67.2, -159.5 , 0 );
setMoveKey( spep_0 + 74, 1, 66.8, -159.5 , 0 );
setMoveKey( spep_0 + 76, 1, 66.3, -159.5 , 0 );
setMoveKey( spep_0 + 78, 1, 65.8, -159.5 , 0 );
setMoveKey( spep_0 + 80, 1, 65.4, -159.5 , 0 );
setMoveKey( spep_0 + 82, 1, 64.9, -159.5 , 0 );
setMoveKey( spep_0 + 84, 1, 64.5, -159.5 , 0 );
setMoveKey( spep_0 + 86, 1, 64, -159.5 , 0 );
setMoveKey( spep_0 + 88, 1, 63.5, -159.5 , 0 );
setMoveKey( spep_0 + 90, 1, 63.1, -159.5 , 0 );

setScaleKey( spep_0 + 0, 1, 2.09, 2.09 );
setScaleKey( spep_0 + 4, 1, 2.09, 2.09 );
setScaleKey( spep_0 + 6, 1, 2.08, 2.08 );
setScaleKey( spep_0 + 8, 1, 2.06, 2.06 );
setScaleKey( spep_0 + 10, 1, 2.03, 2.03 );
setScaleKey( spep_0 + 12, 1, 2, 2 );
setScaleKey( spep_0 + 14, 1, 1.93, 1.93 );
setScaleKey( spep_0 + 16, 1, 1.82, 1.82 );
setScaleKey( spep_0 + 18, 1, 1.64, 1.64 );
setScaleKey( spep_0 + 20, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 32, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 34, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 36, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 38, 1, 0.99, 0.99 );
setScaleKey( spep_0 + 40, 1, 0.96, 0.96 );
setScaleKey( spep_0 + 42, 1, 0.94, 0.94 );
setScaleKey( spep_0 + 44, 1, 0.92, 0.92 );
setScaleKey( spep_0 + 46, 1, 0.92, 0.92 );
setScaleKey( spep_0 + 48, 1, 0.91, 0.91 );
setScaleKey( spep_0 + 50, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 90, 1, 0.9, 0.9 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 90, 1, 0 );
--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

SP_dodge = spep_0+90 ; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

pauseAll( SP_dodge, 67);

--キャラクターの固定
setMoveKey(SP_dodge, 1,63.1, -159.5 , 0 );
setScaleKey(SP_dodge , 1, 0.9, 0.9);
setRotateKey(SP_dodge,   1, 0 );

--キャラクターの固定
setMoveKey(SP_dodge+8, 1,63.1, -159.5 , 0 );
setScaleKey(SP_dodge+8 , 1, 0.9, 0.9);
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
setMoveKey( spep_0 + 92, 1, 62.6, -159.5 , 0 );
setMoveKey( spep_0 + 94, 1, 62.2, -159.5 , 0 );
setMoveKey( spep_0 + 96, 1, 61.7, -159.5 , 0 );
setMoveKey( spep_0 + 98, 1, 61.2, -159.5 , 0 );
setMoveKey( spep_0 + 100, 1, 60.8, -159.5 , 0 );
setMoveKey( spep_0 + 102, 1, 60.3, -159.5 , 0 );
setMoveKey( spep_0 + 104, 1, 59.9, -159.5 , 0 );
setMoveKey( spep_0 + 106, 1, 59.4, -159.5 , 0 );
setMoveKey( spep_0 + 108, 1, 58.9, -159.5 , 0 );
--setMoveKey( spep_0 + 111, 1, 58.5, -159.5 , 0 );
setMoveKey( spep_0 + 109, 1, 60.2, -246.3 , 0 );
setMoveKey( spep_0 + 110, 1, 60.2, -246.3 , 0 );
setMoveKey( spep_0 + 111, 1, 116.6, -256.4 , 0 );
setMoveKey( spep_0 + 112, 1, 252.7, -391.4 , 0 );--116
--setMoveKey( spep_0 + 118, 1, 266.5, -418.6 , 0 );
setMoveKey( spep_0 + 120, 1, 307.8, -497.2 , 0 );
setMoveKey( spep_0 + 122, 1, 303.4, -491.6 , 0 );
setMoveKey( spep_0 + 124, 1, 334.7, -548.6 , 0 );
setMoveKey( spep_0 + 126, 1, 359.9, -595.6 , 0 );
setMoveKey( spep_0 + 128, 1, 385, -642.4 , 0 );
setMoveKey( spep_0 + 130, 1, 410.2, -689.4 , 0 );
setMoveKey( spep_0 + 132, 1, 435.3, -736.4 , 0 );
setMoveKey( spep_0 + 134, 1, 460.4, -783.3 , 0 );
setMoveKey( spep_0 + 136, 1, 485.5, -830.3 , 0 );
setMoveKey( spep_0 + 138, 1, 510.6, -877.2 , 0 );
setMoveKey( spep_0 + 140, 1, 535.7, -924.2 , 0 );
setMoveKey( spep_0 + 141, 1, 535.7, -924.2 , 0 );
setMoveKey( spep_0 + 142, 1, -752.2, 984.3 , 0 );
setMoveKey( spep_0 + 144, 1, -650.7, 871.2 , 0 );
setMoveKey( spep_0 + 146, 1, -555.4, 764.9 , 0 );
setMoveKey( spep_0 + 148, 1, -466.4, 665.5 , 0 );
setMoveKey( spep_0 + 150, 1, -383.4, 572.9 , 0 );
setMoveKey( spep_0 + 152, 1, -306.6, 487.3 , 0 );
setMoveKey( spep_0 + 154, 1, -236, 408.5 , 0 );
setMoveKey( spep_0 + 156, 1, -171.6, 336.5 , 0 );
setMoveKey( spep_0 + 158, 1, -113.3, 271.5 , 0 );
setMoveKey( spep_0 + 160, 1, -61.2, 213.3 , 0 );
setMoveKey( spep_0 + 162, 1, -15.2, 161.9 , 0 );
setMoveKey( spep_0 + 164, 1, 24.6, 117.5 , 0 );
setMoveKey( spep_0 + 166, 1, 42.2, 96.3 , 0 );
setMoveKey( spep_0 + 168, 1, 59.9, 75.2 , 0 );
--setMoveKey( spep_0 + 170, 1, 77.5, 54 , 0 );
setMoveKey( spep_0 + 170, 1, 95.1, 32.9 , 0 );
setMoveKey( spep_0 + 171, 1, 67.2, -67.5 , 0 );
setMoveKey( spep_0 + 176, 1, 10.9, -121.8 , 0 );
setMoveKey( spep_0 + 178, 1, -42.6, -191.3 , 0 );
setMoveKey( spep_0 + 180, 1, -142.5, -303.6 , 0 );
setMoveKey( spep_0 + 182, 1, -233.3, -409.2 , 0 );
setMoveKey( spep_0 + 184, 1, -357.2, -552.6 , 0 );
setMoveKey( spep_0 + 186, 1, -485.5, -711.2 , 0 );
setMoveKey( spep_0 + 188, 1, -635.3, -892 , 0 );
--setMoveKey( spep_0 + 190, 1, -804.8, -1097.7 , 0 );
setMoveKey( spep_0 + 190, 1, -997.5, -1332.4 , 0 );
setMoveKey( spep_0 + 193, 1, -997.5, -1332.4 , 0 );
setMoveKey( spep_0 + 194, 1, 654, 985.8 , 0 );
setMoveKey( spep_0 + 196, 1, 556.2, 830.4 , 0 );
setMoveKey( spep_0 + 198, 1, 466.7, 688.1 , 0 );
setMoveKey( spep_0 + 200, 1, 385.5, 558.9 , 0 );
setMoveKey( spep_0 + 202, 1, 312.6, 442.8 , 0 );
setMoveKey( spep_0 + 204, 1, 248, 339.8 , 0 );
setMoveKey( spep_0 + 206, 1, 191.6, 249.9 , 0 );
setMoveKey( spep_0 + 208, 1, 143.4, 173.2 , 0 );
setMoveKey( spep_0 + 210, 1, 103.5, 109.6 , 0 );
setMoveKey( spep_0 + 212, 1, 71.8, 59 , 0 );
setMoveKey( spep_0 + 215, 1, 48.3, 21.6 , 0 );
setMoveKey( spep_0 + 216, 1, -0.2, 2 , 0 );
setMoveKey( spep_0 + 218, 1, 16.3, 59.7 , 0 );
setMoveKey( spep_0 + 220, 1, -0.4, 132.5 , 0 );
setMoveKey( spep_0 + 222, 1, 9.3, 184.2 , 0 );
setMoveKey( spep_0 + 224, 1, -4, 255.1 , 0 );
setMoveKey( spep_0 + 226, 1, 3.5, 282.2 , 0 );
setMoveKey( spep_0 + 228, 1, -2.6, 359.9 , 0 );
setMoveKey( spep_0 + 230, 1, 1.1, 485.2 , 0 );
setMoveKey( spep_0 + 232, 1, -2.4, 675.9 , 0 );
setMoveKey( spep_0 + 234, 1, -0.3, 909.6 , 0 );
setMoveKey( spep_0 + 236, 1, -1.8, 1202 , 0 );
setMoveKey( spep_0 + 238, 1, -2.6, 1544.9 , 0 );
setMoveKey( spep_0 + 240, 1, -3.5, 1940.4 , 0 );
setMoveKey( spep_0 + 242, 1, -4.6, 2388.7 , 0 );
setMoveKey( spep_0 + 244, 1, -5.7, 2889.7 , 0 );
setMoveKey( spep_0 + 246, 1, -7, 3443.5 , 0 );
setMoveKey( spep_0 + 248, 1, -8.4, 4050 , 0 );
setMoveKey( spep_0 + 250, 1, -9.9, 4709.3 , 0 );
setMoveKey( spep_0 + 278, 1, -9.9, 4709.3 , 0 );

setScaleKey( spep_0 + 106, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 108, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 109, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 110, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 111, 1, 0.25, 0.25 );
setScaleKey( spep_0 + 112, 1, 0.96, 0.96 );
setScaleKey( spep_0 + 118, 1, 0.93, 0.93 );
setScaleKey( spep_0 + 120, 1, 0.97, 0.97 );
setScaleKey( spep_0 + 122, 1, 0.88, 0.88 );
setScaleKey( spep_0 + 124, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 140, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 142, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 174, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 176, 1, 1.67, 1.67 );
setScaleKey( spep_0 + 178, 1, 2.05, 2.05 );
setScaleKey( spep_0 + 180, 1, 2.75, 2.75 );
setScaleKey( spep_0 + 182, 1, 3.45, 3.45 );
setScaleKey( spep_0 + 184, 1, 4.34, 4.34 );
setScaleKey( spep_0 + 186, 1, 5.37, 5.37 );
setScaleKey( spep_0 + 188, 1, 6.56, 6.56 );
setScaleKey( spep_0 + 190, 1, 7.91, 7.91 );
setScaleKey( spep_0 + 193, 1, 9.47, 9.47 );
setScaleKey( spep_0 + 194, 1, 12.7, 12.7 );
setScaleKey( spep_0 + 196, 1, 11.04, 11.04 );
setScaleKey( spep_0 + 198, 1, 9.52, 9.52 );
setScaleKey( spep_0 + 200, 1, 8.14, 8.14 );
setScaleKey( spep_0 + 202, 1, 6.9, 6.9 );
setScaleKey( spep_0 + 204, 1, 5.81, 5.81 );
setScaleKey( spep_0 + 206, 1, 4.85, 4.85 );
setScaleKey( spep_0 + 208, 1, 4.03, 4.03 );
setScaleKey( spep_0 + 210, 1, 3.35, 3.35 );
setScaleKey( spep_0 + 212, 1, 2.81, 2.81 );
setScaleKey( spep_0 + 215, 1, 2.41, 2.41 );
setScaleKey( spep_0 + 216, 1, 0.99, 0.99 );
setScaleKey( spep_0 + 218, 1, 1.09, 1.09 );
setScaleKey( spep_0 + 220, 1, 1.19, 1.19 );
setScaleKey( spep_0 + 222, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 224, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 226, 1, 1.47, 1.47 );
setScaleKey( spep_0 + 228, 1, 1.67, 1.67 );
setScaleKey( spep_0 + 230, 1, 2, 2 );
setScaleKey( spep_0 + 232, 1, 2.47, 2.47 );
setScaleKey( spep_0 + 234, 1, 3.08, 3.08 );
setScaleKey( spep_0 + 236, 1, 3.82, 3.82 );
setScaleKey( spep_0 + 238, 1, 4.69, 4.69 );
setScaleKey( spep_0 + 240, 1, 5.7, 5.7 );
setScaleKey( spep_0 + 242, 1, 6.84, 6.84 );
setScaleKey( spep_0 + 244, 1, 8.12, 8.12 );
setScaleKey( spep_0 + 246, 1, 9.53, 9.53 );
setScaleKey( spep_0 + 248, 1, 11.07, 11.07 );
setScaleKey( spep_0 + 250, 1, 12.75, 12.75 );
setScaleKey( spep_0 + 278, 1, 12.75, 12.75 );

setRotateKey( spep_0 + 108, 1, 0 );
setRotateKey( spep_0 + 109, 1, -22.3 );
setRotateKey( spep_0 + 110, 1, -22.3 );
setRotateKey( spep_0 + 111, 1, -3.2 );
setRotateKey( spep_0 + 112, 1, 75.7 );
setRotateKey( spep_0 + 118, 1, 78.8 );
setRotateKey( spep_0 + 120, 1, 81.8 );
setRotateKey( spep_0 + 122, 1, 84.9 );
setRotateKey( spep_0 + 124, 1, 88 );
setRotateKey( spep_0 + 126, 1, 91 );
setRotateKey( spep_0 + 128, 1, 94.1 );
setRotateKey( spep_0 + 130, 1, 97.2 );
setRotateKey( spep_0 + 132, 1, 100.2 );
setRotateKey( spep_0 + 134, 1, 103.3 );
setRotateKey( spep_0 + 136, 1, 106.4 );
setRotateKey( spep_0 + 138, 1, 109.4 );
setRotateKey( spep_0 + 140, 1, 112.5 );
setRotateKey( spep_0 + 142, 1, 90.2 );
setRotateKey( spep_0 + 150, 1, 90.2 );
setRotateKey( spep_0 + 152, 1, 90.1 );
setRotateKey( spep_0 + 166, 1, 90.1 );
setRotateKey( spep_0 + 168, 1, 90.2 );
setRotateKey( spep_0 + 170, 1, 90.2 );
setRotateKey( spep_0 + 171, 1, 135.2 );
setRotateKey( spep_0 + 176, 1, 134.9 );
setRotateKey( spep_0 + 178, 1, 134.5 );
setRotateKey( spep_0 + 180, 1, 133.9 );
setRotateKey( spep_0 + 182, 1, 133.1 );
setRotateKey( spep_0 + 184, 1, 132.2 );
setRotateKey( spep_0 + 186, 1, 131.2 );
setRotateKey( spep_0 + 188, 1, 130 );
setRotateKey( spep_0 + 190, 1, 128.6 );
setRotateKey( spep_0 + 193, 1, 127.1 );
setRotateKey( spep_0 + 194, 1, -0.3 );
setRotateKey( spep_0 + 215, 1, -0.3 );
setRotateKey( spep_0 + 216, 1, -135.3 );
setRotateKey( spep_0 + 218, 1, -135.3 );
setRotateKey( spep_0 + 220, 1, -135.4 );
setRotateKey( spep_0 + 250, 1, -135.4 );
setRotateKey( spep_0 + 278, 1, -135.4 );

--文字エントリー
ctbaki = entryEffectLife( spep_0 + 108,  10020, 22, 0x100, -1, 0, 34.6, 177.3 );--バキッ

setEffMoveKey( spep_0 + 108, ctbaki, 34.6, 177.3 , 0 );
setEffMoveKey( spep_0 + 114, ctbaki, 26.4, 185.3 , 0 );
setEffMoveKey( spep_0 + 116, ctbaki, 27.8, 186.1 , 0 );
setEffMoveKey( spep_0 + 118, ctbaki, 20.8, 192.4 , 0 );
setEffMoveKey( spep_0 + 120, ctbaki, 25.6, 189.4 , 0 );
setEffMoveKey( spep_0 + 122, ctbaki, 13.4, 198.9 , 0 );
setEffMoveKey( spep_0 + 124, ctbaki, 22.3, 202.5 , 0 );
setEffMoveKey( spep_0 + 126, ctbaki, 17.6, 199.6 , 0 );
setEffMoveKey( spep_0 + 128, ctbaki, 19.7, 210.6 , 0 );
setEffMoveKey( spep_0 + 130, ctbaki, 21.5, 213.8 , 0 );

setEffScaleKey( spep_0 + 108, ctbaki, 1.25, 1.25 );
setEffScaleKey( spep_0 + 114, ctbaki, 1.33, 1.33 );
setEffScaleKey( spep_0 + 116, ctbaki, 1.35, 1.35 );
setEffScaleKey( spep_0 + 118, ctbaki, 1.4, 1.4 );
setEffScaleKey( spep_0 + 120, ctbaki, 1.45, 1.45 );
setEffScaleKey( spep_0 + 122, ctbaki, 1.48, 1.48 );
setEffScaleKey( spep_0 + 124, ctbaki, 1.49, 1.49 );
setEffScaleKey( spep_0 + 126, ctbaki, 1.5, 1.5 );
setEffScaleKey( spep_0 + 128, ctbaki, 1.7, 1.7 );
setEffScaleKey( spep_0 + 130, ctbaki, 1.76, 1.76 );

setEffRotateKey( spep_0 + 108, ctbaki, -4 );
setEffRotateKey( spep_0 + 130, ctbaki, -4 );

setEffAlphaKey( spep_0 + 108, ctbaki, 0 );
setEffAlphaKey( spep_0 + 109, ctbaki, 255 );
setEffAlphaKey( spep_0 + 110, ctbaki, 255 );
setEffAlphaKey( spep_0 + 126, ctbaki, 255 );
setEffAlphaKey( spep_0 + 128, ctbaki, 64 );
setEffAlphaKey( spep_0 + 130, ctbaki, 0 );


--文字エントリー
ctshun = entryEffectLife( spep_0 + 154,  10011, 12, 0x100, -1, 0, 232.3, 290.6 );--シュンッ

setEffMoveKey( spep_0 + 154, ctshun, 232.3, 290.6 , 0 );
setEffMoveKey( spep_0 + 160, ctshun, 232.1, 298.7 , 0 );
setEffMoveKey( spep_0 + 162, ctshun, 231.9, 303.6 , 0 );
setEffMoveKey( spep_0 + 164, ctshun, 231.8, 305.2 , 0 );
setEffMoveKey( spep_0 + 166, ctshun, 231.8, 305.2 , 0 );

setEffScaleKey( spep_0 + 154, ctshun, 0.6, 0.6 );
setEffScaleKey( spep_0 + 160, ctshun, 0.92, 0.92 );
setEffScaleKey( spep_0 + 162, ctshun, 1.11, 1.11 );
setEffScaleKey( spep_0 + 164, ctshun, 1.17, 1.17 );
setEffScaleKey( spep_0 + 166, ctshun, 1.18, 1.18 );
setEffScaleKey( spep_0 + 168, ctshun, 1.21, 1.21 );
setEffScaleKey( spep_0 + 170, ctshun, 1.25, 1.25 );
setEffScaleKey( spep_0 + 166, ctshun, 1.31, 1.31 );

setEffRotateKey( spep_0 + 154, ctshun, 31.4 );
setEffRotateKey( spep_0 + 160, ctshun, 31.5 );
setEffRotateKey( spep_0 + 168, ctshun, 31.5 );
setEffRotateKey( spep_0 + 170, ctshun, 31.4 );
setEffRotateKey( spep_0 + 166, ctshun, 31.4 );

setEffAlphaKey( spep_0 + 154, ctshun, 0 );
setEffAlphaKey( spep_0 + 155, ctshun, 255 );
setEffAlphaKey( spep_0 + 156, ctshun, 255 );
setEffAlphaKey( spep_0 + 159, ctshun, 255 );
setEffAlphaKey( spep_0 + 160, ctshun, 239 );
setEffAlphaKey( spep_0 + 162, ctshun, 191 );
setEffAlphaKey( spep_0 + 164, ctshun, 112 );
setEffAlphaKey( spep_0 + 166, ctshun, 0 );

--文字エントリー
ctga = entryEffectLife( spep_0 + 170,  10005, 20, 0x100, -1, 0, 10.3, 249.2 );--ガッ

setEffMoveKey( spep_0 + 170, ctga, 10.3, 249.2 , 0 );
setEffMoveKey( spep_0 + 178, ctga, -9.9, 264.4 , 0 );
setEffMoveKey( spep_0 + 180, ctga, -10.2, 273.1 , 0 );
setEffMoveKey( spep_0 + 182, ctga, -18.9, 273.8 , 0 );
setEffMoveKey( spep_0 + 184, ctga, -10.6, 279.4 , 0 );
setEffMoveKey( spep_0 + 186, ctga, -22.3, 281.1 , 0 );
setEffMoveKey( spep_0 + 188, ctga, -17.6, 281.8 , 0 );
setEffMoveKey( spep_0 + 190, ctga, -25.1, 280.2 , 0 );
--setEffMoveKey( spep_0 + 192, ctga, -25.7, 280.8 , 0 );

setEffScaleKey( spep_0 + 170, ctga, 1.17, 1.17 );
setEffScaleKey( spep_0 + 178, ctga, 1.52, 1.52 );
setEffScaleKey( spep_0 + 180, ctga, 1.64, 1.64 );
setEffScaleKey( spep_0 + 182, ctga, 1.71, 1.71 );
setEffScaleKey( spep_0 + 184, ctga, 1.77, 1.77 );
setEffScaleKey( spep_0 + 186, ctga, 1.8, 1.8 );
setEffScaleKey( spep_0 + 188, ctga, 1.81, 1.81 );
setEffScaleKey( spep_0 + 190, ctga, 1.85, 1.85 );
--setEffScaleKey( spep_0 + 192, ctga, 1.86, 1.86 );

setEffRotateKey( spep_0 + 170, ctga, -20.2 );
setEffRotateKey( spep_0 + 190, ctga, -20.2 );

setEffAlphaKey( spep_0 + 170, ctga,0 );
setEffAlphaKey( spep_0 + 171, ctga, 255 );
setEffAlphaKey( spep_0 + 172, ctga, 255 );
setEffAlphaKey( spep_0 + 186, ctga, 255 );
setEffAlphaKey( spep_0 + 188, ctga, 64 );
setEffAlphaKey( spep_0 + 190, ctga, 0 );

--文字エントリー
ctbago = entryEffectLife( spep_0 + 212,  10021, 26, 0x100, -1, 0, 39.7, 201.5 );--バゴォッ

setEffMoveKey( spep_0 + 212, ctbago, 39.7, 201.5 , 0 );
setEffMoveKey( spep_0 + 218, ctbago, 14.6, 240.6 , 0 );
setEffMoveKey( spep_0 + 220, ctbago, 13.5, 265.1 , 0 );
setEffMoveKey( spep_0 + 222, ctbago, 6.4, 258.3 , 0 );
setEffMoveKey( spep_0 + 224, ctbago, 18, 277.8 , 0 );
setEffMoveKey( spep_0 + 226, ctbago, 6.4, 269.6 , 0 );
setEffMoveKey( spep_0 + 228, ctbago, 20.3, 273.2 , 0 );
setEffMoveKey( spep_0 + 230, ctbago, 2.5, 279.8 , 0 );
setEffMoveKey( spep_0 + 232, ctbago, 10.3, 282.1 , 0 );
setEffMoveKey( spep_0 + 234, ctbago, 2.7, 274.7 , 0 );
setEffMoveKey( spep_0 + 236, ctbago, 14, 301.4 , 0 );
setEffMoveKey( spep_0 + 238, ctbago, 11.5, 316.3 , 0 );

setEffScaleKey( spep_0 + 212, ctbago, 1.88, 1.88 );
setEffScaleKey( spep_0 + 218, ctbago, 2.37, 2.37 );
setEffScaleKey( spep_0 + 220, ctbago, 2.53, 2.53 );
setEffScaleKey( spep_0 + 222, ctbago, 2.56, 2.56 );
setEffScaleKey( spep_0 + 224, ctbago, 2.59, 2.59 );
setEffScaleKey( spep_0 + 226, ctbago, 2.62, 2.62 );
setEffScaleKey( spep_0 + 228, ctbago, 2.64, 2.64 );
setEffScaleKey( spep_0 + 230, ctbago, 2.67, 2.67 );
setEffScaleKey( spep_0 + 232, ctbago, 2.7, 2.7 );
setEffScaleKey( spep_0 + 234, ctbago, 2.73, 2.73 );
setEffScaleKey( spep_0 + 236, ctbago, 2.82, 2.82 );
setEffScaleKey( spep_0 + 238, ctbago, 2.96, 2.96 );

setEffRotateKey( spep_0 + 212, ctbago, -11.7 );
setEffRotateKey( spep_0 + 218, ctbago, -14.6 );
setEffRotateKey( spep_0 + 220, ctbago, -15.6 );
setEffRotateKey( spep_0 + 238, ctbago, -15.6 );

setEffAlphaKey( spep_0 + 212, ctbago, 0 );
setEffAlphaKey( spep_0 + 213, ctbago, 255 );
setEffAlphaKey( spep_0 + 214, ctbago, 255 );
setEffAlphaKey( spep_0 + 232, ctbago, 255 );
setEffAlphaKey( spep_0 + 234, ctbago, 227 );
setEffAlphaKey( spep_0 + 236, ctbago, 142 );
setEffAlphaKey( spep_0 + 238, ctbago, 0 );



--文字エントリー
ctshun2 = entryEffectLife( spep_0 + 256,  10011, 14, 0x100, -1, 0, 1.5, 254.2 );--シュンッ

setEffMoveKey( spep_0 + 256, ctshun2, 1.5, 254.2 , 0 );
setEffMoveKey( spep_0 + 258, ctshun2, -3.9, 260.3 , 0 );
setEffMoveKey( spep_0 + 260, ctshun2, -7.1, 264 , 0 );
setEffMoveKey( spep_0 + 262, ctshun2, -8.2, 265.2 , 0 );
setEffMoveKey( spep_0 + 268, ctshun2, -8.2, 265.2 , 0 );
setEffMoveKey( spep_0 + 270, ctshun2, -8.3, 265.3 , 0 );

setEffScaleKey( spep_0 + 256, ctshun2, 0.6, 0.6 );
setEffScaleKey( spep_0 + 258, ctshun2, 0.92, 0.92 );
setEffScaleKey( spep_0 + 260, ctshun2, 1.11, 1.11 );
setEffScaleKey( spep_0 + 262, ctshun2, 1.17, 1.17 );
setEffScaleKey( spep_0 + 264, ctshun2, 1.18, 1.18 );
setEffScaleKey( spep_0 + 266, ctshun2, 1.21, 1.21 );
setEffScaleKey( spep_0 + 268, ctshun2, 1.25, 1.25 );
setEffScaleKey( spep_0 + 270, ctshun2, 1.31, 1.31 );

setEffRotateKey( spep_0 + 256, ctshun2, -8 );
setEffRotateKey( spep_0 + 270, ctshun2, -8 );

setEffAlphaKey( spep_0 + 256, ctshun2, 255 );
setEffAlphaKey( spep_0 + 262, ctshun2, 255 );
setEffAlphaKey( spep_0 + 264, ctshun2, 239 );
setEffAlphaKey( spep_0 + 266, ctshun2, 191 );
setEffAlphaKey( spep_0 + 268, ctshun2, 112 );
setEffAlphaKey( spep_0 + 270, ctshun2, 0 );


--SE
--playSe( spep_0+6, SE_04);--くるり
playSe( spep_0+90, 43);--瞬間移動
playSe( spep_0+110, 1011);--殴り
playSe( spep_0+154, 43);--瞬間移動
playSe( spep_0+172, 1010);--けり
playSe( spep_0+214, 1011);--けり
playSe( spep_0+256, 43);--瞬間移動

-- ** エフェクト等 ** --
entryFade(spep_0+272, 4, 2, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_1=spep_0+278;
------------------------------------------------------
-- 瞬間移動中
------------------------------------------------------
--エフェクト再生
move=entryEffectLife(spep_1,SP_03,130,0x100,-1,0,0,0);

setEffMoveKey(spep_1,move,0,0,0);
setEffMoveKey(spep_1+130,move,0,0,0);

setEffScaleKey(spep_1,move,1.0,1.0);
setEffScaleKey(spep_1+130,move,1.0,1.0);

setEffAlphaKey(spep_1,move,255);
setEffAlphaKey(spep_1+130,move,255);

setEffRotateKey(spep_1,move,0);
setEffRotateKey(spep_1+130,move,0);

--集中線
shuchuse = entryEffectLife( spep_1 + 68,  906, 64, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_1 + 68, shuchuse, 0, 0 , 0 );
setEffMoveKey( spep_1 + 132, shuchuse, 0, 0 , 0 );

setEffScaleKey( spep_1 + 68, shuchuse, 1.88, 1.94 );
setEffScaleKey( spep_1 + 132, shuchuse, 1.88, 1.94 );

setEffRotateKey( spep_1 + 68, shuchuse, 0 );
setEffRotateKey( spep_1 + 132, shuchuse, 0 );

setEffAlphaKey( spep_1 + 68, shuchuse, 255 );
setEffAlphaKey( spep_1 + 132, shuchuse, 255 );


--文字エントリー
ctgogo=entryEffectLife(spep_1+54,190006,70,0x100,-1,-10,520);--ゴゴゴ
setEffMoveKey(spep_1+54,ctgogo,-10,520,0);
setEffMoveKey(spep_1+124,ctgogo,-10,520,0);
setEffScaleKey(spep_1+54, ctgogo, 0.7, 0.7);
setEffScaleKey(spep_1+124, ctgogo, 0.7, 0.7);

setEffAlphaKey( spep_1 + 54, ctgogo, 0 );
setEffAlphaKey( spep_1 + 55, ctgogo, 255 );
setEffAlphaKey( spep_1 + 56, ctgogo, 255 );
setEffAlphaKey( spep_1 + 124, ctgogo, 255 );


--顔カットイン
speff=entryEffect(spep_1+42,1504,0x100,-1,0,0,0);  --カットイン(顔)
setEffReplaceTexture(speff,3,2);  --カットイン差し替え
speff1=entryEffect(spep_1+42,1505,0x100,-1,0,0,0);  --カットイン(セリフ)
setEffReplaceTexture(speff1,4,5);  --セリフカットイン差し替え

--SE
SE2=playSe( spep_1 , 17);
stopSe( spep_1+60,SE2,5);
playSe( spep_1 + 54, SE_04);

-- ** エフェクト等 ** --
entryFade(spep_1+122, 6, 4, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_2=spep_1+132;


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
-- ロックオン
------------------------------------------------------
--エフェクト再生(前)
lock_front=entryEffectLife(spep_3,SP_04,254,0x100,-1,0,0,0);

setEffMoveKey(spep_3,lock_front,0,0,0);
setEffMoveKey(spep_3+254,lock_front,0,0,0);

setEffScaleKey(spep_3,lock_front,1.0,1.0);
setEffScaleKey(spep_3+254,lock_front,1.0,1.0);

setEffAlphaKey(spep_3,lock_front,255);
setEffAlphaKey(spep_3+254,lock_front,255);

setEffRotateKey(spep_3,lock_front,0);
setEffRotateKey(spep_3+254,lock_front,0);

--エフェクト再生(後)
lock_back=entryEffectLife(spep_3,SP_05,254,0x80,-1,0,0,0);

setEffMoveKey(spep_3,lock_back,0,0,0);
setEffMoveKey(spep_3+254,lock_back,0,0,0);

setEffScaleKey(spep_3,lock_back,1.0,1.0);
setEffScaleKey(spep_3+254,lock_back,1.0,1.0);

setEffAlphaKey(spep_3,lock_back,255);
setEffAlphaKey(spep_3+254,lock_back,255);

setEffRotateKey(spep_3,lock_back,0);
setEffRotateKey(spep_3+254,lock_back,0);


--文字エントリー
ctbaki2 = entryEffectLife( spep_3 + 40,  10020, 22, 0x100, -1, 0, 131.8, 298.7 );--バキッ
setEffMoveKey( spep_3 + 40, ctbaki2, 131.8, 298.7 , 0 );
setEffMoveKey( spep_3 + 46, ctbaki2, 130.1, 310.1 , 0 );
setEffMoveKey( spep_3 + 48, ctbaki2, 131.8, 309.9 , 0 );
setEffMoveKey( spep_3 + 50, ctbaki2, 129.9, 319.2 , 0 );
setEffMoveKey( spep_3 + 52, ctbaki2, 131.9, 313.9 , 0 );
setEffMoveKey( spep_3 + 54, ctbaki2, 127.8, 328.9 , 0 );
setEffMoveKey( spep_3 + 56, ctbaki2, 137, 326.4 , 0 );
setEffMoveKey( spep_3 + 58, ctbaki2, 131.5, 326.9 , 0 );
setEffMoveKey( spep_3 + 60, ctbaki2, 139.8, 334.4 , 0 );
setEffMoveKey( spep_3 + 62, ctbaki2, 143.2, 335.7 , 0 );

setEffScaleKey( spep_3 + 40, ctbaki2, 1.25, 1.25 );
setEffScaleKey( spep_3 + 46, ctbaki2, 1.33, 1.33 );
setEffScaleKey( spep_3 + 48, ctbaki2, 1.35, 1.35 );
setEffScaleKey( spep_3 + 50, ctbaki2, 1.4, 1.4 );
setEffScaleKey( spep_3 + 52, ctbaki2, 1.45, 1.45 );
setEffScaleKey( spep_3 + 54, ctbaki2, 1.48, 1.48 );
setEffScaleKey( spep_3 + 56, ctbaki2, 1.49, 1.49 );
setEffScaleKey( spep_3 + 58, ctbaki2, 1.5, 1.5 );
setEffScaleKey( spep_3 + 60, ctbaki2, 1.7, 1.7 );
setEffScaleKey( spep_3 + 62, ctbaki2, 1.76, 1.76 );

setEffRotateKey( spep_3 + 40, ctbaki2, 32.7 );
setEffRotateKey( spep_3 + 62, ctbaki2, 32.7 );

setEffAlphaKey( spep_3 + 40, ctbaki2, 0 );
setEffAlphaKey( spep_3 + 41, ctbaki2, 255 );
setEffAlphaKey( spep_3 + 42, ctbaki2, 255 );
setEffAlphaKey( spep_3 + 58, ctbaki2, 255 );
setEffAlphaKey( spep_3 + 60, ctbaki2, 64 );
setEffAlphaKey( spep_3 + 62, ctbaki2, 0 );



--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 64, 1, 0 );
changeAnime( spep_3 + 0, 1, 106 );
changeAnime( spep_3 + 41, 1, 108 );--44
changeAnime( spep_3 + 42, 1, 108 );--44

setMoveKey( spep_3 + 0, 1, 241.6, 28.4 , 0 );
setMoveKey( spep_3 + 2, 1, 336.5, 28.4 , 0 );
setMoveKey( spep_3 + 4, 1, 407.6, 28.4 , 0 );
setMoveKey( spep_3 + 6, 1, 454.9, 28.4 , 0 );
setMoveKey( spep_3 + 8, 1, 478.4, 28.4 , 0 );
setMoveKey( spep_3 + 10, 1, 478.1, 28.4 , 0 );
setMoveKey( spep_3 + 12, 1, 454.1, 28.4 , 0 );
setMoveKey( spep_3 + 14, 1, 406.2, 28.4 , 0 );
setMoveKey( spep_3 + 16, 1, 407.5, 28.4 , 0 );
setMoveKey( spep_3 + 18, 1, 387, 28.4 , 0 );
setMoveKey( spep_3 + 20, 1, 356.6, 28.4 , 0 );
setMoveKey( spep_3 + 22, 1, 328.1, 28.4 , 0 );
setMoveKey( spep_3 + 24, 1, 301.6, 28.4 , 0 );
setMoveKey( spep_3 + 26, 1, 277.1, 28.4 , 0 );
setMoveKey( spep_3 + 28, 1, 254.6, 28.4 , 0 );
setMoveKey( spep_3 + 30, 1, 234, 28.4 , 0 );
setMoveKey( spep_3 + 32, 1, 215.4, 28.4 , 0 );
setMoveKey( spep_3 + 34, 1, 198.8, 28.4 , 0 );
setMoveKey( spep_3 + 36, 1, 184.1, 28.4 , 0 );
setMoveKey( spep_3 + 38, 1, 171.4, 28.4 , 0 );
--setMoveKey( spep_3 + 40, 1, 160.7, 28.4 , 0 );
setMoveKey( spep_3 + 40, 1, 151.9, 28.4 , 0 );
setMoveKey( spep_3 + 41, 1, 226.5, 26.9 , 0 );
setMoveKey( spep_3 + 42, 1, 226.5, 26.9 , 0 );
setMoveKey( spep_3 + 46, 1, 411.7, 35.1 , 0 );
setMoveKey( spep_3 + 48, 1, 564.4, 27.3 , 0 );
setMoveKey( spep_3 + 50, 1, 750.8, 29.9 , 0 );
setMoveKey( spep_3 + 52, 1, 906.1, 32.8 , 0 );
setMoveKey( spep_3 + 54, 1, 1078.7, 22.1 , 0 );
setMoveKey( spep_3 + 56, 1, 1241.4, 32.9 , 0 );
setMoveKey( spep_3 + 58, 1, 1415.7, 23 , 0 );
setMoveKey( spep_3 + 60, 1, 1580.3, 32.3 , 0 );
setMoveKey( spep_3 + 62, 1, 1752.9, 26 , 0 );

setScaleKey( spep_3 + 0, 1, 2.16, 2.16 );
setScaleKey( spep_3 + 62, 1, 2.16, 2.16 );

setRotateKey( spep_3 + 0, 1, -115.3 );
setRotateKey( spep_3 + 38, 1, -115.3 )
setRotateKey( spep_3 +40, 1, -115.3 );
setRotateKey( spep_3 + 41, 1, 0 );
setRotateKey( spep_3 + 42, 1, 0 );
setRotateKey( spep_3 + 62, 1, 0 );

--流線(横)
ryusen = entryEffectLife( spep_3 + 0,  914, 18, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_3 + 0, ryusen, 0, 0 , 0 );
setEffMoveKey( spep_3 + 18, ryusen, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, ryusen, 4.29, 1.13 );
setEffScaleKey( spep_3 + 18, ryusen, 4.29, 1.13 );

setEffRotateKey( spep_3 + 0, ryusen, -180 );
setEffRotateKey( spep_3 + 18, ryusen, -180 );

setEffAlphaKey( spep_3 + 0, ryusen, 118 );
setEffAlphaKey( spep_3 + 10, ryusen, 118 );
setEffAlphaKey( spep_3 + 12, ryusen, 88 );
setEffAlphaKey( spep_3 + 14, ryusen, 59 );
setEffAlphaKey( spep_3 + 16, ryusen, 29 );
setEffAlphaKey( spep_3 + 18, ryusen, 0 );

--文字エントリー
ctshu3 = entryEffectLife( spep_3 + 10,  10011, 18, 0x100, -1, 0, -158.5, 254.2 );--シュンッ

setEffMoveKey( spep_3 + 10, ctshu3, -158.5, 254.2 , 0 );
setEffMoveKey( spep_3 + 16, ctshu3, -163.9, 260.3 , 0 );
setEffMoveKey( spep_3 + 18, ctshu3, -167.1, 264 , 0 );
setEffMoveKey( spep_3 + 20, ctshu3, -168.2, 265.2 , 0 );
setEffMoveKey( spep_3 + 26, ctshu3, -168.2, 265.2 , 0 );
setEffMoveKey( spep_3 + 28, ctshu3, -168.3, 265.3 , 0 );

setEffScaleKey( spep_3 + 10, ctshu3, 0.6, 0.6 );
setEffScaleKey( spep_3 + 16, ctshu3, 0.92, 0.92 );
setEffScaleKey( spep_3 + 18, ctshu3, 1.11, 1.11 );
setEffScaleKey( spep_3 + 20, ctshu3, 1.17, 1.17 );
setEffScaleKey( spep_3 + 22, ctshu3, 1.18, 1.18 );
setEffScaleKey( spep_3 + 24, ctshu3, 1.21, 1.21 );
setEffScaleKey( spep_3 + 26, ctshu3, 1.25, 1.25 );
setEffScaleKey( spep_3 + 28, ctshu3, 1.31, 1.31 );

setEffRotateKey( spep_3 + 10, ctshu3, -8 );
setEffRotateKey( spep_3 + 28, ctshu3, -8 );

setEffAlphaKey( spep_3 + 10, ctshu3, 0 );
setEffAlphaKey( spep_3 + 11, ctshu3, 255 );
setEffAlphaKey( spep_3 + 12, ctshu3, 255 );
setEffAlphaKey( spep_3 + 20, ctshu3, 255 );
setEffAlphaKey( spep_3 + 22, ctshu3, 239 );
setEffAlphaKey( spep_3 + 24, ctshu3, 191 );
setEffAlphaKey( spep_3 + 26, ctshu3, 112 );
setEffAlphaKey( spep_3 + 28, ctshu3, 0 );

--[[
--集中線
shuchuse2 = entryEffectLife( spep_3 + 90,  906, 176, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_3 + 90, shuchuse2, 0, 0 , 0 );
setEffMoveKey( spep_3 + 266, shuchuse2, 0, 0 , 0 );

setEffScaleKey( spep_3 + 90, shuchuse2, 1.18, 1.22 );
setEffScaleKey( spep_3 + 266, shuchuse2, 1.18, 1.22 );

setEffRotateKey( spep_3 + 90, shuchuse2, 0 );
setEffRotateKey( spep_3 + 266, shuchuse2, 0 );

setEffAlphaKey( spep_3 + 90, shuchuse2, 255 );
setEffAlphaKey( spep_3 + 266, shuchuse2, 255 );

]]

--SE
playSe( spep_3+10, 43);--瞬間移動
playSe( spep_3+40, 1011);--殴り
--playSe( spep_3+104, 1042);--目が動くやつ
--playSe( spep_3+130, 53);--ロックオン
SE3=playSe( spep_3+130, 14);--ロックオン
stopSe(spep_3+254,SE3,0);

--次の準備
spep_4=spep_3+254;

------------------------------------------------------
-- 被弾
------------------------------------------------------
--エフェクト再生(前)
hit_front=entryEffectLife(spep_4,SP_06,180,0x100,-1,0,0,0);

setEffMoveKey(spep_4,hit_front,0,0,0);
setEffMoveKey(spep_4+180,hit_front,0,0,0);

setEffScaleKey(spep_4,hit_front,1.0,1.0);
setEffScaleKey(spep_4+180,hit_front,1.0,1.0);

setEffAlphaKey(spep_4,hit_front,255);
setEffAlphaKey(spep_4+180,hit_front,255);

setEffRotateKey(spep_4,hit_front,0);
setEffRotateKey(spep_4+180,hit_front,0);

--エフェクト再生(後)
hit_back=entryEffectLife(spep_4,SP_07,180,0x80,-1,0,0,0);

setEffMoveKey(spep_4,hit_back,0,0,0);
setEffMoveKey(spep_4+180,hit_back,0,0,0);

setEffScaleKey(spep_4,hit_back,1.0,1.0);
setEffScaleKey(spep_4+180,hit_back,1.0,1.0);

setEffAlphaKey(spep_4,hit_back,255);
setEffAlphaKey(spep_4+180,hit_back,255);

setEffRotateKey(spep_4,hit_back,0);
setEffRotateKey(spep_4+180,hit_back,0);

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 148, 1, 0 );
changeAnime( spep_4 + 0, 1, 106 );

setMoveKey( spep_4 + 72, 1, 677.8, -37.6 , 0 );
setMoveKey( spep_4 + 74, 1, 639.2, -40.4 , 0 );
setMoveKey( spep_4 + 76, 1, 601, -43.2 , 0 );
setMoveKey( spep_4 + 78, 1, 563.4, -46 , 0 );
setMoveKey( spep_4 + 80, 1, 526.3, -48.6 , 0 );
setMoveKey( spep_4 + 82, 1, 489.7, -51.3 , 0 );
setMoveKey( spep_4 + 84, 1, 453.7, -53.9 , 0 );
setMoveKey( spep_4 + 86, 1, 417.9, -56.4 , 0 );
setMoveKey( spep_4 + 88, 1, 382.5, -58.9 , 0 );
setMoveKey( spep_4 + 90, 1, 347.2, -61.4 , 0 );
setMoveKey( spep_4 + 92, 1, 312.2, -63.8 , 0 );
setMoveKey( spep_4 + 94, 1, 277.2, -66.1 , 0 );
setMoveKey( spep_4 + 96, 1, 242.2, -68.4 , 0 );
setMoveKey( spep_4 + 98, 1, 206.9, -70.7 , 0 );
setMoveKey( spep_4 + 100, 1, 171.7, -72.9 , 0 );
setMoveKey( spep_4 + 102, 1, 141.7, -75.1 , 0 );
setMoveKey( spep_4 + 104, 1, 117.7, -77.2 , 0 );
setMoveKey( spep_4 + 106, 1, 99.3, -79.3 , 0 );
setMoveKey( spep_4 + 108, 1, 86, -81.3 , 0 );
setMoveKey( spep_4 + 110, 1, 77.5, -83.3 , 0 );
setMoveKey( spep_4 + 112, 1, 73.6, -85.2 , 0 );
setMoveKey( spep_4 + 114, 1, 74.2, -87.1 , 0 );
setMoveKey( spep_4 + 116, 1, 79.3, -88.9 , 0 );
setMoveKey( spep_4 + 118, 1, 86.7, -90.7 , 0 );
setMoveKey( spep_4 + 120, 1, 93.8, -92.5 , 0 );
setMoveKey( spep_4 + 122, 1, 100.8, -94.2 , 0 );
setMoveKey( spep_4 + 124, 1, 107.5, -95.8 , 0 );
setMoveKey( spep_4 + 126, 1, 114.1, -97.4 , 0 );
setMoveKey( spep_4 + 128, 1, 120.4, -99 , 0 );
setMoveKey( spep_4 + 130, 1, 126.6, -100.5 , 0 );
setMoveKey( spep_4 + 132, 1, 132.6, -101.9 , 0 );
setMoveKey( spep_4 + 134, 1, 138.4, -103.3 , 0 );
setMoveKey( spep_4 + 136, 1, 144, -104.7 , 0 );
setMoveKey( spep_4 + 138, 1, 149.4, -106 , 0 );
setMoveKey( spep_4 + 140, 1, 154.6, -107.3 , 0 );
setMoveKey( spep_4 + 142, 1, 159.6, -108.5 , 0 );
setMoveKey( spep_4 + 144, 1, 164.4, -109.7 , 0 );
setMoveKey( spep_4 + 146, 1, 169, -110.8 , 0 );
setMoveKey( spep_4 + 148, 1, 173.4, -111.9 , 0 );

setScaleKey( spep_4 + 72, 1, 0.76, 0.76 );
setScaleKey( spep_4 + 148, 1, 0.76, 0.76 );

setRotateKey( spep_4 + 72, 1, 33.8 );
setRotateKey( spep_4 + 74, 1, 34.8 );
setRotateKey( spep_4 + 76, 1, 35.7 );
setRotateKey( spep_4 + 78, 1, 36.6 );
setRotateKey( spep_4 + 80, 1, 37.5 );
setRotateKey( spep_4 + 82, 1, 38.4 );
setRotateKey( spep_4 + 84, 1, 39.3 );
setRotateKey( spep_4 + 86, 1, 40.2 );
setRotateKey( spep_4 + 88, 1, 41 );
setRotateKey( spep_4 + 90, 1, 41.8 );
setRotateKey( spep_4 + 92, 1, 42.6 );
setRotateKey( spep_4 + 94, 1, 43.4 );
setRotateKey( spep_4 + 96, 1, 44.2 );
setRotateKey( spep_4 + 98, 1, 45 );
setRotateKey( spep_4 + 100, 1, 45.7 );
setRotateKey( spep_4 + 102, 1, 46.5 );
setRotateKey( spep_4 + 104, 1, 47.2 );
setRotateKey( spep_4 + 106, 1, 47.9 );
setRotateKey( spep_4 + 108, 1, 48.6 );
setRotateKey( spep_4 + 110, 1, 49.2 );
setRotateKey( spep_4 + 112, 1, 49.9 );
setRotateKey( spep_4 + 114, 1, 50.5 );
setRotateKey( spep_4 + 116, 1, 51.1 );
setRotateKey( spep_4 + 118, 1, 51.8 );
setRotateKey( spep_4 + 120, 1, 52.3 );
setRotateKey( spep_4 + 122, 1, 52.9 );
setRotateKey( spep_4 + 124, 1, 53.5 );
setRotateKey( spep_4 + 126, 1, 54 );
setRotateKey( spep_4 + 128, 1, 54.5 );
setRotateKey( spep_4 + 130, 1, 55 );
setRotateKey( spep_4 + 132, 1, 55.5 );
setRotateKey( spep_4 + 134, 1, 56 );
setRotateKey( spep_4 + 136, 1, 56.5 );
setRotateKey( spep_4 + 138, 1, 56.9 );
setRotateKey( spep_4 + 140, 1, 57.3 );
setRotateKey( spep_4 + 142, 1, 57.8 );
setRotateKey( spep_4 + 144, 1, 58.2 );
setRotateKey( spep_4 + 146, 1, 58.5 );
setRotateKey( spep_4 + 148, 1, 58.9 );

--文字エントリー
ctca = entryEffectLife( spep_4 + 148,  10004, 28, 0x100, -1, 0, 119.1, -94.8 );--カッ

setEffMoveKey( spep_4 + 148, ctca, 119.1, -94.8 , 0 );
setEffMoveKey( spep_4 + 154, ctca, 116.1, -92.9 , 0 );
setEffMoveKey( spep_4 + 156, ctca, 113.2, -91.1 , 0 );
setEffMoveKey( spep_4 + 158, ctca, 110.3, -89.2 , 0 );
setEffMoveKey( spep_4 + 160, ctca, 107.2, -86.7 , 0 );
setEffMoveKey( spep_4 + 162, ctca, 104.4, -84.5 , 0 );
setEffMoveKey( spep_4 + 164, ctca, 102.1, -82.6 , 0 );
setEffMoveKey( spep_4 + 166, ctca, 100, -80.9 , 0 );
setEffMoveKey( spep_4 + 168, ctca, 98.4, -79.6 , 0 );
setEffMoveKey( spep_4 + 170, ctca, 97.1, -78.6 , 0 );
setEffMoveKey( spep_4 + 172, ctca, 96.2, -77.8 , 0 );
setEffMoveKey( spep_4 + 174, ctca, 95.6, -77.4 , 0 );
setEffMoveKey( spep_4 + 176, ctca, 95.4, -77.3 , 0 );

setEffScaleKey( spep_4 + 148, ctca, 2.44, 2.44 );
setEffScaleKey( spep_4 + 154, ctca, 2.64, 2.64 );
setEffScaleKey( spep_4 + 156, ctca, 2.83, 2.83 );
setEffScaleKey( spep_4 + 158, ctca, 3.03, 3.03 );
setEffScaleKey( spep_4 + 160, ctca, 3.29, 3.29 );
setEffScaleKey( spep_4 + 162, ctca, 3.51, 3.51 );
setEffScaleKey( spep_4 + 164, ctca, 3.71, 3.71 );
setEffScaleKey( spep_4 + 166, ctca, 3.87, 3.87 );
setEffScaleKey( spep_4 + 168, ctca, 4.01, 4.01 );
setEffScaleKey( spep_4 + 170, ctca, 4.11, 4.11 );
setEffScaleKey( spep_4 + 172, ctca, 4.19, 4.19 );
setEffScaleKey( spep_4 + 174, ctca, 4.23, 4.23 );
setEffScaleKey( spep_4 + 176, ctca, 4.25, 4.25 );

setEffRotateKey( spep_4 + 148, ctca, 0 );
setEffRotateKey( spep_4 + 176, ctca, 0 );

setEffAlphaKey( spep_4 + 148, ctca, 95 );
setEffAlphaKey( spep_4 + 154, ctca, 148 );
setEffAlphaKey( spep_4 + 156, ctca, 202 );
setEffAlphaKey( spep_4 + 158, ctca, 255 );
setEffAlphaKey( spep_4 + 160, ctca, 201 );
setEffAlphaKey( spep_4 + 162, ctca, 154 );
setEffAlphaKey( spep_4 + 164, ctca, 113 );
setEffAlphaKey( spep_4 + 166, ctca, 79 );
setEffAlphaKey( spep_4 + 168, ctca, 50 );
setEffAlphaKey( spep_4 + 170, ctca, 28 );
setEffAlphaKey( spep_4 + 172, ctca, 13 );
setEffAlphaKey( spep_4 + 174, ctca, 3 );
setEffAlphaKey( spep_4 + 176, ctca, 0 );


--SE
playSe( spep_4, 44);--キラキラ
SE1=playSe( spep_4+128,1023);--カッ
stopSe(spep_4+174,SE1,0);
--stopSe(spep_4+174,SE3,0);



--次の準備
spep_5=spep_4+176;


------------------------------------------------------
-- 爆発
------------------------------------------------------

--エフェクト再生
explosion=entryEffect(spep_5,SP_08,0x100,-1,0,0,0);

setEffMoveKey(spep_5,explosion,0,0,0);
setEffMoveKey(spep_5+144,explosion,0,0,0);

setEffScaleKey(spep_5,explosion,1.0,1.0);
setEffScaleKey(spep_5+144,explosion,1.0,1.0);

setEffAlphaKey(spep_5,explosion,255);
setEffAlphaKey(spep_5+144,explosion,255);

setEffRotateKey(spep_5,explosion,0);
setEffRotateKey(spep_5+144,explosion,0);

--文字エントリー
ctdogon = entryEffectLife( spep_5 + 0,  10018, 34, 0x100, -1, 0, -6.3, 364.2 );--ドゴォンッ

setEffMoveKey( spep_5 + 0, ctdogon, -6.3, 364.2 , 0 );
setEffMoveKey( spep_5 + 2, ctdogon, -2.5, 397.5 , 0 );
setEffMoveKey( spep_5 + 4, ctdogon, 5.5, 430.9 , 0 );
setEffMoveKey( spep_5 + 6, ctdogon, 6.6, 434.1 , 0 );
setEffMoveKey( spep_5 + 8, ctdogon, 3.2, 435.6 , 0 );
setEffMoveKey( spep_5 + 10, ctdogon, 7.9, 454.1 , 0 );
setEffMoveKey( spep_5 + 12, ctdogon, 9.6, 451.1 , 0 );
setEffMoveKey( spep_5 + 14, ctdogon, 3.1, 461.2 , 0 );
setEffMoveKey( spep_5 + 16, ctdogon, 14.1, 464.4 , 0 );
setEffMoveKey( spep_5 + 18, ctdogon, 4.4, 464.1 , 0 );
setEffMoveKey( spep_5 + 20, ctdogon, 8.8, 470.4 , 0 );
setEffMoveKey( spep_5 + 22, ctdogon, 4.6, 464.7 , 0 );
setEffMoveKey( spep_5 + 24, ctdogon, 8.9, 472.3 , 0 );
setEffMoveKey( spep_5 + 26, ctdogon, 6.8, 468.3 , 0 );
setEffMoveKey( spep_5 + 28, ctdogon, 13.9, 485.3 , 0 );
setEffMoveKey( spep_5 + 30, ctdogon, 17.1, 475.9 , 0 );
setEffMoveKey( spep_5 + 32, ctdogon, 9.1, 483.5 , 0 );
setEffMoveKey( spep_5 + 34, ctdogon, 9.3, 483.9 , 0 );

setEffScaleKey( spep_5 + 0, ctdogon, 2.74, 2.74 );
setEffScaleKey( spep_5 + 2, ctdogon, 3.4, 3.4 );
setEffScaleKey( spep_5 + 4, ctdogon, 3.8, 3.8 );
setEffScaleKey( spep_5 + 6, ctdogon, 3.93, 3.93 );
setEffScaleKey( spep_5 + 8, ctdogon, 4.03, 4.03 );
setEffScaleKey( spep_5 + 10, ctdogon, 4.11, 4.11 );
setEffScaleKey( spep_5 + 12, ctdogon, 4.19, 4.19 );
setEffScaleKey( spep_5 + 14, ctdogon, 4.25, 4.25 );
setEffScaleKey( spep_5 + 16, ctdogon, 4.3, 4.3 );
setEffScaleKey( spep_5 + 18, ctdogon, 4.34, 4.34 );
setEffScaleKey( spep_5 + 20, ctdogon, 4.37, 4.37 );
setEffScaleKey( spep_5 + 22, ctdogon, 4.38, 4.38 );
setEffScaleKey( spep_5 + 24, ctdogon, 4.39, 4.39 );
setEffScaleKey( spep_5 + 26, ctdogon, 4.81, 4.81 );
setEffScaleKey( spep_5 + 28, ctdogon, 5.14, 5.14 );
setEffScaleKey( spep_5 + 30, ctdogon, 5.37, 5.37 );
setEffScaleKey( spep_5 + 32, ctdogon, 5.51, 5.51 );
setEffScaleKey( spep_5 + 34, ctdogon, 5.56, 5.56 );

setEffRotateKey( spep_5 + 0, ctdogon, -0.9 );
setEffRotateKey( spep_5 + 34, ctdogon, -0.9 );

setEffAlphaKey( spep_5 + 0, ctdogon, 255 );
setEffAlphaKey( spep_5 + 24, ctdogon, 255 );
setEffAlphaKey( spep_5 + 26, ctdogon, 163 );
setEffAlphaKey( spep_5 + 28, ctdogon, 92 );
setEffAlphaKey( spep_5 + 30, ctdogon, 41 );
setEffAlphaKey( spep_5 + 32, ctdogon, 10 );
setEffAlphaKey( spep_5 + 34, ctdogon, 0 );

--SE
playSe( spep_5, 1024);--爆発
playSe( spep_5+50, 8);--爆発

-- ダメージ表示
dealDamage(spep_5+24);

entryFade( spep_5+126, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_5+136);

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 格闘
------------------------------------------------------
--エフェクトの再生

spep_0=0;

--SE
playSe( spep_0+6, SE_04);--くるり

--エフェクト再生(前)
fight_front=entryEffectLife(spep_0,SP_01x,278,0x100,-1,0,0,0);

setEffMoveKey(spep_0,fight_front,0,0,0);
setEffMoveKey(spep_0+278,fight_front,0,0,0);

setEffScaleKey(spep_0,fight_front,1.0,1.0);
setEffScaleKey(spep_0+278,fight_front,1.0,1.0);

setEffAlphaKey(spep_0,fight_front,255);
setEffAlphaKey(spep_0+278,fight_front,255);

setEffRotateKey(spep_0,fight_front,0);
setEffRotateKey(spep_0+278,fight_front,0);


--エフェクト再生(後)
fight_back=entryEffectLife(spep_0,SP_02x,278,0x80,-1,0,0,0);

setEffMoveKey(spep_0,fight_back,0,0,0);
setEffMoveKey(spep_0+278,fight_back,0,0,0);

setEffScaleKey(spep_0,fight_back,1.0,1.0);
setEffScaleKey(spep_0+278,fight_back,1.0,1.0);

setEffAlphaKey(spep_0,fight_back,255);
setEffAlphaKey(spep_0+278,fight_back,255);

setEffRotateKey(spep_0,fight_back,0);
setEffRotateKey(spep_0+278,fight_back,0);

-- ** エフェクト等 ** --
entryFade(spep_0, 0, 4, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--敵の動き
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 278, 1, 0 );

changeAnime( spep_0 + 0, 1, 102 );
changeAnime( spep_0 + 26, 1, 101 );
changeAnime( spep_0 + 54, 1, 100 );
changeAnime( spep_0 + 109, 1, 107 );--112
changeAnime( spep_0 + 110, 1, 107 );--112
changeAnime( spep_0 + 112, 1, 106 );--116
changeAnime( spep_0 + 171, 1, 108 );--174
changeAnime( spep_0 + 172, 1, 108 );--174
changeAnime( spep_0 + 194, 1, 105 );
changeAnime( spep_0 + 216, 1, 107 );

setMoveKey( spep_0 + 0, 1, 112.9, -29.6 , 0 );
setMoveKey( spep_0 + 2, 1, 116.4, -29.6 , 0 );
setMoveKey( spep_0 + 4, 1, 125.6, -29.8 , 0 );
setMoveKey( spep_0 + 6, 1, 142.2, -30.2 , 0 );
setMoveKey( spep_0 + 8, 1, 167.4, -30.8 , 0 );
setMoveKey( spep_0 + 10, 1, 203.2, -31.7 , 0 );
setMoveKey( spep_0 + 12, 1, 252.1, -33.3 , 0 );
setMoveKey( spep_0 + 14, 1, 318.6, -36.1 , 0 );
setMoveKey( spep_0 + 16, 1, 408.8, -40.8 , 0 );
setMoveKey( spep_0 + 18, 1, 535, -50.6 , 0 );
setMoveKey( spep_0 + 20, 1, 724.5, -79.5 , 0 );
setMoveKey( spep_0 + 22, 1, 746.2, -82.7 , 0 );
setMoveKey( spep_0 + 24, 1, 767.9, -85.9 , 0 );
setMoveKey( spep_0 + 26, 1, 789.6, -89.1 , 0 );
setMoveKey( spep_0 + 28, 1, 811.3, -92.3 , 0 );
setMoveKey( spep_0 + 31, 1, 833, -95.4 , 0 );
setMoveKey( spep_0 + 32, 1, 753.5, -148.5 , 0 );
setMoveKey( spep_0 + 34, 1, 740.6, -148.6 , 0 );
setMoveKey( spep_0 + 36, 1, 702.8, -149.3 , 0 );
setMoveKey( spep_0 + 38, 1, 642.8, -150.3 , 0 );
setMoveKey( spep_0 + 40, 1, 565.1, -151.6 , 0 );
setMoveKey( spep_0 + 42, 1, 475.5, -153.1 , 0 );
setMoveKey( spep_0 + 44, 1, 381.4, -154.7 , 0 );
setMoveKey( spep_0 + 46, 1, 290.6, -156.2 , 0 );
setMoveKey( spep_0 + 48, 1, 210.9, -157.6 , 0 );
setMoveKey( spep_0 + 50, 1, 148.8, -158.6 , 0 );
setMoveKey( spep_0 + 53, 1, 109.2, -159.3 , 0 );
setMoveKey( spep_0 + 54, 1, 95.5, -159.5 , 0 );
setMoveKey( spep_0 + 56, 1, 86, -159.5 , 0 );
setMoveKey( spep_0 + 58, 1, 78.6, -159.5 , 0 );
setMoveKey( spep_0 + 60, 1, 73.3, -159.5 , 0 );
setMoveKey( spep_0 + 62, 1, 70.1, -159.5 , 0 );
setMoveKey( spep_0 + 64, 1, 69.1, -159.5 , 0 );
setMoveKey( spep_0 + 66, 1, 68.6, -159.5 , 0 );
setMoveKey( spep_0 + 68, 1, 68.1, -159.5 , 0 );
setMoveKey( spep_0 + 70, 1, 67.7, -159.5 , 0 );
setMoveKey( spep_0 + 72, 1, 67.2, -159.5 , 0 );
setMoveKey( spep_0 + 74, 1, 66.8, -159.5 , 0 );
setMoveKey( spep_0 + 76, 1, 66.3, -159.5 , 0 );
setMoveKey( spep_0 + 78, 1, 65.8, -159.5 , 0 );
setMoveKey( spep_0 + 80, 1, 65.4, -159.5 , 0 );
setMoveKey( spep_0 + 82, 1, 64.9, -159.5 , 0 );
setMoveKey( spep_0 + 84, 1, 64.5, -159.5 , 0 );
setMoveKey( spep_0 + 86, 1, 64, -159.5 , 0 );
setMoveKey( spep_0 + 88, 1, 63.5, -159.5 , 0 );
setMoveKey( spep_0 + 90, 1, 63.1, -159.5 , 0 );

setScaleKey( spep_0 + 0, 1, 2.09, 2.09 );
setScaleKey( spep_0 + 4, 1, 2.09, 2.09 );
setScaleKey( spep_0 + 6, 1, 2.08, 2.08 );
setScaleKey( spep_0 + 8, 1, 2.06, 2.06 );
setScaleKey( spep_0 + 10, 1, 2.03, 2.03 );
setScaleKey( spep_0 + 12, 1, 2, 2 );
setScaleKey( spep_0 + 14, 1, 1.93, 1.93 );
setScaleKey( spep_0 + 16, 1, 1.82, 1.82 );
setScaleKey( spep_0 + 18, 1, 1.64, 1.64 );
setScaleKey( spep_0 + 20, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 32, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 34, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 36, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 38, 1, 0.99, 0.99 );
setScaleKey( spep_0 + 40, 1, 0.96, 0.96 );
setScaleKey( spep_0 + 42, 1, 0.94, 0.94 );
setScaleKey( spep_0 + 44, 1, 0.92, 0.92 );
setScaleKey( spep_0 + 46, 1, 0.92, 0.92 );
setScaleKey( spep_0 + 48, 1, 0.91, 0.91 );
setScaleKey( spep_0 + 50, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 90, 1, 0.9, 0.9 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 90, 1, 0 );
--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

SP_dodge = spep_0+90 ; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

pauseAll( SP_dodge, 67);

--キャラクターの固定
setMoveKey(SP_dodge, 1,63.1, -159.5 , 0 );
setScaleKey(SP_dodge , 1, 0.9, 0.9);
setRotateKey(SP_dodge,   1, 0 );

--キャラクターの固定
setMoveKey(SP_dodge+8, 1,63.1, -159.5 , 0 );
setScaleKey(SP_dodge+8 , 1, 0.9, 0.9);
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
setMoveKey( spep_0 + 92, 1, 62.6, -159.5 , 0 );
setMoveKey( spep_0 + 94, 1, 62.2, -159.5 , 0 );
setMoveKey( spep_0 + 96, 1, 61.7, -159.5 , 0 );
setMoveKey( spep_0 + 98, 1, 61.2, -159.5 , 0 );
setMoveKey( spep_0 + 100, 1, 60.8, -159.5 , 0 );
setMoveKey( spep_0 + 102, 1, 60.3, -159.5 , 0 );
setMoveKey( spep_0 + 104, 1, 59.9, -159.5 , 0 );
setMoveKey( spep_0 + 106, 1, 59.4, -159.5 , 0 );
setMoveKey( spep_0 + 108, 1, 58.9, -159.5 , 0 );
--setMoveKey( spep_0 + 111, 1, 58.5, -159.5 , 0 );
setMoveKey( spep_0 + 109, 1, 60.2, -246.3 , 0 );
setMoveKey( spep_0 + 110, 1, 60.2, -246.3 , 0 );
setMoveKey( spep_0 + 111, 1, 116.6, -256.4 , 0 );
setMoveKey( spep_0 + 112, 1, 252.7, -391.4 , 0 );--116
--setMoveKey( spep_0 + 118, 1, 266.5, -418.6 , 0 );
setMoveKey( spep_0 + 120, 1, 307.8, -497.2 , 0 );
setMoveKey( spep_0 + 122, 1, 303.4, -491.6 , 0 );
setMoveKey( spep_0 + 124, 1, 334.7, -548.6 , 0 );
setMoveKey( spep_0 + 126, 1, 359.9, -595.6 , 0 );
setMoveKey( spep_0 + 128, 1, 385, -642.4 , 0 );
setMoveKey( spep_0 + 130, 1, 410.2, -689.4 , 0 );
setMoveKey( spep_0 + 132, 1, 435.3, -736.4 , 0 );
setMoveKey( spep_0 + 134, 1, 460.4, -783.3 , 0 );
setMoveKey( spep_0 + 136, 1, 485.5, -830.3 , 0 );
setMoveKey( spep_0 + 138, 1, 510.6, -877.2 , 0 );
setMoveKey( spep_0 + 140, 1, 535.7, -924.2 , 0 );
setMoveKey( spep_0 + 141, 1, 535.7, -924.2 , 0 );
setMoveKey( spep_0 + 142, 1, -752.2, 984.3 , 0 );
setMoveKey( spep_0 + 144, 1, -650.7, 871.2 , 0 );
setMoveKey( spep_0 + 146, 1, -555.4, 764.9 , 0 );
setMoveKey( spep_0 + 148, 1, -466.4, 665.5 , 0 );
setMoveKey( spep_0 + 150, 1, -383.4, 572.9 , 0 );
setMoveKey( spep_0 + 152, 1, -306.6, 487.3 , 0 );
setMoveKey( spep_0 + 154, 1, -236, 408.5 , 0 );
setMoveKey( spep_0 + 156, 1, -171.6, 336.5 , 0 );
setMoveKey( spep_0 + 158, 1, -113.3, 271.5 , 0 );
setMoveKey( spep_0 + 160, 1, -61.2, 213.3 , 0 );
setMoveKey( spep_0 + 162, 1, -15.2, 161.9 , 0 );
setMoveKey( spep_0 + 164, 1, 24.6, 117.5 , 0 );
setMoveKey( spep_0 + 166, 1, 42.2, 96.3 , 0 );
setMoveKey( spep_0 + 168, 1, 59.9, 75.2 , 0 );
--setMoveKey( spep_0 + 170, 1, 77.5, 54 , 0 );
setMoveKey( spep_0 + 170, 1, 95.1, 32.9 , 0 );
setMoveKey( spep_0 + 171, 1, 67.2, -67.5 , 0 );
setMoveKey( spep_0 + 176, 1, 10.9, -121.8 , 0 );
setMoveKey( spep_0 + 178, 1, -42.6, -191.3 , 0 );
setMoveKey( spep_0 + 180, 1, -142.5, -303.6 , 0 );
setMoveKey( spep_0 + 182, 1, -233.3, -409.2 , 0 );
setMoveKey( spep_0 + 184, 1, -357.2, -552.6 , 0 );
setMoveKey( spep_0 + 186, 1, -485.5, -711.2 , 0 );
setMoveKey( spep_0 + 188, 1, -635.3, -892 , 0 );
--setMoveKey( spep_0 + 190, 1, -804.8, -1097.7 , 0 );
setMoveKey( spep_0 + 190, 1, -997.5, -1332.4 , 0 );
setMoveKey( spep_0 + 193, 1, -997.5, -1332.4 , 0 );
setMoveKey( spep_0 + 194, 1, 654, 985.8 , 0 );
setMoveKey( spep_0 + 196, 1, 556.2, 830.4 , 0 );
setMoveKey( spep_0 + 198, 1, 466.7, 688.1 , 0 );
setMoveKey( spep_0 + 200, 1, 385.5, 558.9 , 0 );
setMoveKey( spep_0 + 202, 1, 312.6, 442.8 , 0 );
setMoveKey( spep_0 + 204, 1, 248, 339.8 , 0 );
setMoveKey( spep_0 + 206, 1, 191.6, 249.9 , 0 );
setMoveKey( spep_0 + 208, 1, 143.4, 173.2 , 0 );
setMoveKey( spep_0 + 210, 1, 103.5, 109.6 , 0 );
setMoveKey( spep_0 + 212, 1, 71.8, 59 , 0 );
setMoveKey( spep_0 + 215, 1, 48.3, 21.6 , 0 );
setMoveKey( spep_0 + 216, 1, -0.2, 2 , 0 );
setMoveKey( spep_0 + 218, 1, 16.3, 59.7 , 0 );
setMoveKey( spep_0 + 220, 1, -0.4, 132.5 , 0 );
setMoveKey( spep_0 + 222, 1, 9.3, 184.2 , 0 );
setMoveKey( spep_0 + 224, 1, -4, 255.1 , 0 );
setMoveKey( spep_0 + 226, 1, 3.5, 282.2 , 0 );
setMoveKey( spep_0 + 228, 1, -2.6, 359.9 , 0 );
setMoveKey( spep_0 + 230, 1, 1.1, 485.2 , 0 );
setMoveKey( spep_0 + 232, 1, -2.4, 675.9 , 0 );
setMoveKey( spep_0 + 234, 1, -0.3, 909.6 , 0 );
setMoveKey( spep_0 + 236, 1, -1.8, 1202 , 0 );
setMoveKey( spep_0 + 238, 1, -2.6, 1544.9 , 0 );
setMoveKey( spep_0 + 240, 1, -3.5, 1940.4 , 0 );
setMoveKey( spep_0 + 242, 1, -4.6, 2388.7 , 0 );
setMoveKey( spep_0 + 244, 1, -5.7, 2889.7 , 0 );
setMoveKey( spep_0 + 246, 1, -7, 3443.5 , 0 );
setMoveKey( spep_0 + 248, 1, -8.4, 4050 , 0 );
setMoveKey( spep_0 + 250, 1, -9.9, 4709.3 , 0 );
setMoveKey( spep_0 + 278, 1, -9.9, 4709.3 , 0 );


setScaleKey( spep_0 + 106, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 108, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 109, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 110, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 111, 1, 0.25, 0.25 );
setScaleKey( spep_0 + 112, 1, 0.96, 0.96 );
setScaleKey( spep_0 + 118, 1, 0.93, 0.93 );
setScaleKey( spep_0 + 120, 1, 0.97, 0.97 );
setScaleKey( spep_0 + 122, 1, 0.88, 0.88 );
setScaleKey( spep_0 + 124, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 140, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 142, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 174, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 176, 1, 1.67, 1.67 );
setScaleKey( spep_0 + 178, 1, 2.05, 2.05 );
setScaleKey( spep_0 + 180, 1, 2.75, 2.75 );
setScaleKey( spep_0 + 182, 1, 3.45, 3.45 );
setScaleKey( spep_0 + 184, 1, 4.34, 4.34 );
setScaleKey( spep_0 + 186, 1, 5.37, 5.37 );
setScaleKey( spep_0 + 188, 1, 6.56, 6.56 );
setScaleKey( spep_0 + 190, 1, 7.91, 7.91 );
setScaleKey( spep_0 + 193, 1, 9.47, 9.47 );
setScaleKey( spep_0 + 194, 1, 12.7, 12.7 );
setScaleKey( spep_0 + 196, 1, 11.04, 11.04 );
setScaleKey( spep_0 + 198, 1, 9.52, 9.52 );
setScaleKey( spep_0 + 200, 1, 8.14, 8.14 );
setScaleKey( spep_0 + 202, 1, 6.9, 6.9 );
setScaleKey( spep_0 + 204, 1, 5.81, 5.81 );
setScaleKey( spep_0 + 206, 1, 4.85, 4.85 );
setScaleKey( spep_0 + 208, 1, 4.03, 4.03 );
setScaleKey( spep_0 + 210, 1, 3.35, 3.35 );
setScaleKey( spep_0 + 212, 1, 2.81, 2.81 );
setScaleKey( spep_0 + 215, 1, 2.41, 2.41 );
setScaleKey( spep_0 + 216, 1, 0.99, 0.99 );
setScaleKey( spep_0 + 218, 1, 1.09, 1.09 );
setScaleKey( spep_0 + 220, 1, 1.19, 1.19 );
setScaleKey( spep_0 + 222, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 224, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 226, 1, 1.47, 1.47 );
setScaleKey( spep_0 + 228, 1, 1.67, 1.67 );
setScaleKey( spep_0 + 230, 1, 2, 2 );
setScaleKey( spep_0 + 232, 1, 2.47, 2.47 );
setScaleKey( spep_0 + 234, 1, 3.08, 3.08 );
setScaleKey( spep_0 + 236, 1, 3.82, 3.82 );
setScaleKey( spep_0 + 238, 1, 4.69, 4.69 );
setScaleKey( spep_0 + 240, 1, 5.7, 5.7 );
setScaleKey( spep_0 + 242, 1, 6.84, 6.84 );
setScaleKey( spep_0 + 244, 1, 8.12, 8.12 );
setScaleKey( spep_0 + 246, 1, 9.53, 9.53 );
setScaleKey( spep_0 + 248, 1, 11.07, 11.07 );
setScaleKey( spep_0 + 250, 1, 12.75, 12.75 );
setScaleKey( spep_0 + 278, 1, 12.75, 12.75 );

setRotateKey( spep_0 + 108, 1, 0 );
setRotateKey( spep_0 + 109, 1, -22.3 );
setRotateKey( spep_0 + 110, 1, -22.3 );
setRotateKey( spep_0 + 111, 1, -3.2 );
setRotateKey( spep_0 + 112, 1, 75.7 );
setRotateKey( spep_0 + 118, 1, 78.8 );
setRotateKey( spep_0 + 120, 1, 81.8 );
setRotateKey( spep_0 + 122, 1, 84.9 );
setRotateKey( spep_0 + 124, 1, 88 );
setRotateKey( spep_0 + 126, 1, 91 );
setRotateKey( spep_0 + 128, 1, 94.1 );
setRotateKey( spep_0 + 130, 1, 97.2 );
setRotateKey( spep_0 + 132, 1, 100.2 );
setRotateKey( spep_0 + 134, 1, 103.3 );
setRotateKey( spep_0 + 136, 1, 106.4 );
setRotateKey( spep_0 + 138, 1, 109.4 );
setRotateKey( spep_0 + 140, 1, 112.5 );
setRotateKey( spep_0 + 142, 1, 90.2 );
setRotateKey( spep_0 + 150, 1, 90.2 );
setRotateKey( spep_0 + 152, 1, 90.1 );
setRotateKey( spep_0 + 166, 1, 90.1 );
setRotateKey( spep_0 + 168, 1, 90.2 );
setRotateKey( spep_0 + 170, 1, 90.2 );
setRotateKey( spep_0 + 171, 1, 135.2 );
setRotateKey( spep_0 + 176, 1, 134.9 );
setRotateKey( spep_0 + 178, 1, 134.5 );
setRotateKey( spep_0 + 180, 1, 133.9 );
setRotateKey( spep_0 + 182, 1, 133.1 );
setRotateKey( spep_0 + 184, 1, 132.2 );
setRotateKey( spep_0 + 186, 1, 131.2 );
setRotateKey( spep_0 + 188, 1, 130 );
setRotateKey( spep_0 + 190, 1, 128.6 );
setRotateKey( spep_0 + 193, 1, 127.1 );
setRotateKey( spep_0 + 194, 1, -0.3 );
setRotateKey( spep_0 + 215, 1, -0.3 );
setRotateKey( spep_0 + 216, 1, -135.3 );
setRotateKey( spep_0 + 218, 1, -135.3 );
setRotateKey( spep_0 + 220, 1, -135.4 );
setRotateKey( spep_0 + 250, 1, -135.4 );
setRotateKey( spep_0 + 278, 1, -135.4 );

--文字エントリー
ctbaki = entryEffectLife( spep_0 + 108,  10020, 22, 0x100, -1, 0, 34.6, 177.3 );--バキッ

setEffMoveKey( spep_0 + 108, ctbaki, 34.6, 177.3 , 0 );
setEffMoveKey( spep_0 + 114, ctbaki, 26.4, 185.3 , 0 );
setEffMoveKey( spep_0 + 116, ctbaki, 27.8, 186.1 , 0 );
setEffMoveKey( spep_0 + 118, ctbaki, 20.8, 192.4 , 0 );
setEffMoveKey( spep_0 + 120, ctbaki, 25.6, 189.4 , 0 );
setEffMoveKey( spep_0 + 122, ctbaki, 13.4, 198.9 , 0 );
setEffMoveKey( spep_0 + 124, ctbaki, 22.3, 202.5 , 0 );
setEffMoveKey( spep_0 + 126, ctbaki, 17.6, 199.6 , 0 );
setEffMoveKey( spep_0 + 128, ctbaki, 19.7, 210.6 , 0 );
setEffMoveKey( spep_0 + 130, ctbaki, 21.5, 213.8 , 0 );

setEffScaleKey( spep_0 + 108, ctbaki, 1.25, 1.25 );
setEffScaleKey( spep_0 + 114, ctbaki, 1.33, 1.33 );
setEffScaleKey( spep_0 + 116, ctbaki, 1.35, 1.35 );
setEffScaleKey( spep_0 + 118, ctbaki, 1.4, 1.4 );
setEffScaleKey( spep_0 + 120, ctbaki, 1.45, 1.45 );
setEffScaleKey( spep_0 + 122, ctbaki, 1.48, 1.48 );
setEffScaleKey( spep_0 + 124, ctbaki, 1.49, 1.49 );
setEffScaleKey( spep_0 + 126, ctbaki, 1.5, 1.5 );
setEffScaleKey( spep_0 + 128, ctbaki, 1.7, 1.7 );
setEffScaleKey( spep_0 + 130, ctbaki, 1.76, 1.76 );

setEffRotateKey( spep_0 + 108, ctbaki, -4 );
setEffRotateKey( spep_0 + 130, ctbaki, -4 );

setEffAlphaKey( spep_0 + 108, ctbaki, 0 );
setEffAlphaKey( spep_0 + 109, ctbaki, 255 );
setEffAlphaKey( spep_0 + 110, ctbaki, 255 );
setEffAlphaKey( spep_0 + 126, ctbaki, 255 );
setEffAlphaKey( spep_0 + 128, ctbaki, 64 );
setEffAlphaKey( spep_0 + 130, ctbaki, 0 );


--文字エントリー
ctshun = entryEffectLife( spep_0 + 154,  10011, 12, 0x100, -1, 0, 232.3, 290.6 );--シュンッ

setEffMoveKey( spep_0 + 154, ctshun, 232.3, 290.6 , 0 );
setEffMoveKey( spep_0 + 160, ctshun, 232.1, 298.7 , 0 );
setEffMoveKey( spep_0 + 162, ctshun, 231.9, 303.6 , 0 );
setEffMoveKey( spep_0 + 164, ctshun, 231.8, 305.2 , 0 );
setEffMoveKey( spep_0 + 166, ctshun, 231.8, 305.2 , 0 );

setEffScaleKey( spep_0 + 154, ctshun, 0.6, 0.6 );
setEffScaleKey( spep_0 + 160, ctshun, 0.92, 0.92 );
setEffScaleKey( spep_0 + 162, ctshun, 1.11, 1.11 );
setEffScaleKey( spep_0 + 164, ctshun, 1.17, 1.17 );
setEffScaleKey( spep_0 + 166, ctshun, 1.18, 1.18 );
setEffScaleKey( spep_0 + 168, ctshun, 1.21, 1.21 );
setEffScaleKey( spep_0 + 170, ctshun, 1.25, 1.25 );
setEffScaleKey( spep_0 + 166, ctshun, 1.31, 1.31 );

setEffRotateKey( spep_0 + 154, ctshun, 31.4 );
setEffRotateKey( spep_0 + 160, ctshun, 31.5 );
setEffRotateKey( spep_0 + 168, ctshun, 31.5 );
setEffRotateKey( spep_0 + 170, ctshun, 31.4 );
setEffRotateKey( spep_0 + 166, ctshun, 31.4 );

setEffAlphaKey( spep_0 + 154, ctshun, 0 );
setEffAlphaKey( spep_0 + 155, ctshun, 255 );
setEffAlphaKey( spep_0 + 156, ctshun, 255 );
setEffAlphaKey( spep_0 + 159, ctshun, 255 );
setEffAlphaKey( spep_0 + 160, ctshun, 239 );
setEffAlphaKey( spep_0 + 162, ctshun, 191 );
setEffAlphaKey( spep_0 + 164, ctshun, 112 );
setEffAlphaKey( spep_0 + 166, ctshun, 0 );

--文字エントリー
ctga = entryEffectLife( spep_0 + 170,  10005, 20, 0x100, -1, 0, 10.3, 249.2 );--ガッ

setEffMoveKey( spep_0 + 170, ctga, 10.3, 249.2 , 0 );
setEffMoveKey( spep_0 + 178, ctga, -9.9, 264.4 , 0 );
setEffMoveKey( spep_0 + 180, ctga, -10.2, 273.1 , 0 );
setEffMoveKey( spep_0 + 182, ctga, -18.9, 273.8 , 0 );
setEffMoveKey( spep_0 + 184, ctga, -10.6, 279.4 , 0 );
setEffMoveKey( spep_0 + 186, ctga, -22.3, 281.1 , 0 );
setEffMoveKey( spep_0 + 188, ctga, -17.6, 281.8 , 0 );
setEffMoveKey( spep_0 + 190, ctga, -25.1, 280.2 , 0 );
--setEffMoveKey( spep_0 + 192, ctga, -25.7, 280.8 , 0 );

setEffScaleKey( spep_0 + 170, ctga, 1.17, 1.17 );
setEffScaleKey( spep_0 + 178, ctga, 1.52, 1.52 );
setEffScaleKey( spep_0 + 180, ctga, 1.64, 1.64 );
setEffScaleKey( spep_0 + 182, ctga, 1.71, 1.71 );
setEffScaleKey( spep_0 + 184, ctga, 1.77, 1.77 );
setEffScaleKey( spep_0 + 186, ctga, 1.8, 1.8 );
setEffScaleKey( spep_0 + 188, ctga, 1.81, 1.81 );
setEffScaleKey( spep_0 + 190, ctga, 1.85, 1.85 );
--setEffScaleKey( spep_0 + 192, ctga, 1.86, 1.86 );

setEffRotateKey( spep_0 + 170, ctga, -20.2 );
setEffRotateKey( spep_0 + 190, ctga, -20.2 );

setEffAlphaKey( spep_0 + 170, ctga,0 );
setEffAlphaKey( spep_0 + 171, ctga, 255 );
setEffAlphaKey( spep_0 + 172, ctga, 255 );
setEffAlphaKey( spep_0 + 186, ctga, 255 );
setEffAlphaKey( spep_0 + 188, ctga, 64 );
setEffAlphaKey( spep_0 + 190, ctga, 0 );

--文字エントリー
ctbago = entryEffectLife( spep_0 + 212,  10021, 26, 0x100, -1, 0, 39.7, 201.5 );--バゴォッ

setEffMoveKey( spep_0 + 212, ctbago, 39.7, 201.5 , 0 );
setEffMoveKey( spep_0 + 218, ctbago, 14.6, 240.6 , 0 );
setEffMoveKey( spep_0 + 220, ctbago, 13.5, 265.1 , 0 );
setEffMoveKey( spep_0 + 222, ctbago, 6.4, 258.3 , 0 );
setEffMoveKey( spep_0 + 224, ctbago, 18, 277.8 , 0 );
setEffMoveKey( spep_0 + 226, ctbago, 6.4, 269.6 , 0 );
setEffMoveKey( spep_0 + 228, ctbago, 20.3, 273.2 , 0 );
setEffMoveKey( spep_0 + 230, ctbago, 2.5, 279.8 , 0 );
setEffMoveKey( spep_0 + 232, ctbago, 10.3, 282.1 , 0 );
setEffMoveKey( spep_0 + 234, ctbago, 2.7, 274.7 , 0 );
setEffMoveKey( spep_0 + 236, ctbago, 14, 301.4 , 0 );
setEffMoveKey( spep_0 + 238, ctbago, 11.5, 316.3 , 0 );

setEffScaleKey( spep_0 + 212, ctbago, 1.88, 1.88 );
setEffScaleKey( spep_0 + 218, ctbago, 2.37, 2.37 );
setEffScaleKey( spep_0 + 220, ctbago, 2.53, 2.53 );
setEffScaleKey( spep_0 + 222, ctbago, 2.56, 2.56 );
setEffScaleKey( spep_0 + 224, ctbago, 2.59, 2.59 );
setEffScaleKey( spep_0 + 226, ctbago, 2.62, 2.62 );
setEffScaleKey( spep_0 + 228, ctbago, 2.64, 2.64 );
setEffScaleKey( spep_0 + 230, ctbago, 2.67, 2.67 );
setEffScaleKey( spep_0 + 232, ctbago, 2.7, 2.7 );
setEffScaleKey( spep_0 + 234, ctbago, 2.73, 2.73 );
setEffScaleKey( spep_0 + 236, ctbago, 2.82, 2.82 );
setEffScaleKey( spep_0 + 238, ctbago, 2.96, 2.96 );

setEffRotateKey( spep_0 + 212, ctbago, -11.7 );
setEffRotateKey( spep_0 + 218, ctbago, -14.6 );
setEffRotateKey( spep_0 + 220, ctbago, -15.6 );
setEffRotateKey( spep_0 + 238, ctbago, -15.6 );

setEffAlphaKey( spep_0 + 212, ctbago, 0 );
setEffAlphaKey( spep_0 + 213, ctbago, 255 );
setEffAlphaKey( spep_0 + 214, ctbago, 255 );
setEffAlphaKey( spep_0 + 232, ctbago, 255 );
setEffAlphaKey( spep_0 + 234, ctbago, 227 );
setEffAlphaKey( spep_0 + 236, ctbago, 142 );
setEffAlphaKey( spep_0 + 238, ctbago, 0 );



--文字エントリー
ctshun2 = entryEffectLife( spep_0 + 256,  10011, 14, 0x100, -1, 0, 1.5, 254.2 );--シュンッ

setEffMoveKey( spep_0 + 256, ctshun2, 1.5, 254.2 , 0 );
setEffMoveKey( spep_0 + 258, ctshun2, -3.9, 260.3 , 0 );
setEffMoveKey( spep_0 + 260, ctshun2, -7.1, 264 , 0 );
setEffMoveKey( spep_0 + 262, ctshun2, -8.2, 265.2 , 0 );
setEffMoveKey( spep_0 + 268, ctshun2, -8.2, 265.2 , 0 );
setEffMoveKey( spep_0 + 270, ctshun2, -8.3, 265.3 , 0 );

setEffScaleKey( spep_0 + 256, ctshun2, 0.6, 0.6 );
setEffScaleKey( spep_0 + 258, ctshun2, 0.92, 0.92 );
setEffScaleKey( spep_0 + 260, ctshun2, 1.11, 1.11 );
setEffScaleKey( spep_0 + 262, ctshun2, 1.17, 1.17 );
setEffScaleKey( spep_0 + 264, ctshun2, 1.18, 1.18 );
setEffScaleKey( spep_0 + 266, ctshun2, 1.21, 1.21 );
setEffScaleKey( spep_0 + 268, ctshun2, 1.25, 1.25 );
setEffScaleKey( spep_0 + 270, ctshun2, 1.31, 1.31 );

setEffRotateKey( spep_0 + 256, ctshun2, -8 );
setEffRotateKey( spep_0 + 270, ctshun2, -8 );

setEffAlphaKey( spep_0 + 256, ctshun2, 255 );
setEffAlphaKey( spep_0 + 262, ctshun2, 255 );
setEffAlphaKey( spep_0 + 264, ctshun2, 239 );
setEffAlphaKey( spep_0 + 266, ctshun2, 191 );
setEffAlphaKey( spep_0 + 268, ctshun2, 112 );
setEffAlphaKey( spep_0 + 270, ctshun2, 0 );


--SE
--playSe( spep_0+6, SE_04);--くるり
playSe( spep_0+90, 43);--瞬間移動
playSe( spep_0+110, 1011);--殴り
playSe( spep_0+154, 43);--瞬間移動
playSe( spep_0+172, 1010);--けり
playSe( spep_0+214, 1011);--けり
playSe( spep_0+256, 43);--瞬間移動

-- ** エフェクト等 ** --
entryFade(spep_0+272, 4, 2, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_1=spep_0+278;
------------------------------------------------------
-- 瞬間移動中
------------------------------------------------------
--エフェクト再生
move=entryEffectLife(spep_1,SP_03x,130,0x100,-1,0,0,0);

setEffMoveKey(spep_1,move,0,0,0);
setEffMoveKey(spep_1+130,move,0,0,0);

setEffScaleKey(spep_1,move,1.0,1.0);
setEffScaleKey(spep_1+130,move,1.0,1.0);

setEffAlphaKey(spep_1,move,255);
setEffAlphaKey(spep_1+130,move,255);

setEffRotateKey(spep_1,move,0);
setEffRotateKey(spep_1+130,move,0);

--集中線
shuchuse = entryEffectLife( spep_1 + 68,  906, 64, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_1 + 68, shuchuse, 0, 0 , 0 );
setEffMoveKey( spep_1 + 132, shuchuse, 0, 0 , 0 );

setEffScaleKey( spep_1 + 68, shuchuse, 1.88, 1.94 );
setEffScaleKey( spep_1 + 132, shuchuse, 1.88, 1.94 );

setEffRotateKey( spep_1 + 68, shuchuse, 0 );
setEffRotateKey( spep_1 + 132, shuchuse, 0 );

setEffAlphaKey( spep_1 + 68, shuchuse, 255 );
setEffAlphaKey( spep_1 + 132, shuchuse, 255 );


--文字エントリー
--ctgogo=entryEffectLife(spep_1+54,190006,70,0x100,-1,-10,520);--ゴゴゴ
--setEffMoveKey(spep_1+54,ctgogo,-10,520,0);
--setEffMoveKey(spep_1+124,ctgogo,-10,520,0);
--setEffScaleKey(spep_1+54, ctgogo, -0.7, 0.7);
--setEffScaleKey(spep_1+124, ctgogo, -0.7, 0.7);

--setEffAlphaKey( spep_1 + 54, ctgogo, 0 );
--setEffAlphaKey( spep_1 + 55, ctgogo, 255 );
--setEffAlphaKey( spep_1 + 56, ctgogo, 255 );
--setEffAlphaKey( spep_1 + 124, ctgogo, 255 );


--顔カットイン
--speff=entryEffect(spep_1+42,1504,0x100,-1,0,0,0);  --カットイン(顔)
--setEffReplaceTexture(speff,3,2);  --カットイン差し替え
--speff1=entryEffect(spep_1+42,1505,0x100,-1,0,0,0);  --カットイン(セリフ)
--setEffReplaceTexture(speff1,4,5);  --セリフカットイン差し替え

--SE
SE2=playSe( spep_1 , 17);
stopSe( spep_1+60,SE2,5);
playSe( spep_1 + 54, SE_04);

-- ** エフェクト等 ** --
entryFade(spep_1+122, 6, 4, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_2=spep_1+132;


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
-- ロックオン
------------------------------------------------------
--エフェクト再生(前)
lock_front=entryEffectLife(spep_3,SP_04x,254,0x100,-1,0,0,0);

setEffMoveKey(spep_3,lock_front,0,0,0);
setEffMoveKey(spep_3+254,lock_front,0,0,0);

setEffScaleKey(spep_3,lock_front,1.0,1.0);
setEffScaleKey(spep_3+254,lock_front,1.0,1.0);

setEffAlphaKey(spep_3,lock_front,255);
setEffAlphaKey(spep_3+254,lock_front,255);

setEffRotateKey(spep_3,lock_front,0);
setEffRotateKey(spep_3+254,lock_front,0);

--エフェクト再生(後)
lock_back=entryEffectLife(spep_3,SP_05x,254,0x80,-1,0,0,0);

setEffMoveKey(spep_3,lock_back,0,0,0);
setEffMoveKey(spep_3+254,lock_back,0,0,0);

setEffScaleKey(spep_3,lock_back,1.0,1.0);
setEffScaleKey(spep_3+254,lock_back,1.0,1.0);

setEffAlphaKey(spep_3,lock_back,255);
setEffAlphaKey(spep_3+254,lock_back,255);

setEffRotateKey(spep_3,lock_back,0);
setEffRotateKey(spep_3+254,lock_back,0);

--文字エントリー
ctbaki2 = entryEffectLife( spep_3 + 40,  10020, 22, 0x100, -1, 0, 131.8, 298.7 );--バキッ
setEffMoveKey( spep_3 + 40, ctbaki2, 131.8, 298.7 , 0 );
setEffMoveKey( spep_3 + 46, ctbaki2, 130.1, 310.1 , 0 );
setEffMoveKey( spep_3 + 48, ctbaki2, 131.8, 309.9 , 0 );
setEffMoveKey( spep_3 + 50, ctbaki2, 129.9, 319.2 , 0 );
setEffMoveKey( spep_3 + 52, ctbaki2, 131.9, 313.9 , 0 );
setEffMoveKey( spep_3 + 54, ctbaki2, 127.8, 328.9 , 0 );
setEffMoveKey( spep_3 + 56, ctbaki2, 137, 326.4 , 0 );
setEffMoveKey( spep_3 + 58, ctbaki2, 131.5, 326.9 , 0 );
setEffMoveKey( spep_3 + 60, ctbaki2, 139.8, 334.4 , 0 );
setEffMoveKey( spep_3 + 62, ctbaki2, 143.2, 335.7 , 0 );

setEffScaleKey( spep_3 + 40, ctbaki2, 1.25, 1.25 );
setEffScaleKey( spep_3 + 46, ctbaki2, 1.33, 1.33 );
setEffScaleKey( spep_3 + 48, ctbaki2, 1.35, 1.35 );
setEffScaleKey( spep_3 + 50, ctbaki2, 1.4, 1.4 );
setEffScaleKey( spep_3 + 52, ctbaki2, 1.45, 1.45 );
setEffScaleKey( spep_3 + 54, ctbaki2, 1.48, 1.48 );
setEffScaleKey( spep_3 + 56, ctbaki2, 1.49, 1.49 );
setEffScaleKey( spep_3 + 58, ctbaki2, 1.5, 1.5 );
setEffScaleKey( spep_3 + 60, ctbaki2, 1.7, 1.7 );
setEffScaleKey( spep_3 + 62, ctbaki2, 1.76, 1.76 );

setEffRotateKey( spep_3 + 40, ctbaki2, 32.7 );
setEffRotateKey( spep_3 + 62, ctbaki2, 32.7 );

setEffAlphaKey( spep_3 + 40, ctbaki2, 0 );
setEffAlphaKey( spep_3 + 41, ctbaki2, 255 );
setEffAlphaKey( spep_3 + 42, ctbaki2, 255 );
setEffAlphaKey( spep_3 + 58, ctbaki2, 255 );
setEffAlphaKey( spep_3 + 60, ctbaki2, 64 );
setEffAlphaKey( spep_3 + 62, ctbaki2, 0 );



--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 64, 1, 0 );
changeAnime( spep_3 + 0, 1, 106 );
changeAnime( spep_3 + 41, 1, 108 );--44
changeAnime( spep_3 + 42, 1, 108 );--44

setMoveKey( spep_3 + 0, 1, 241.6, 28.4 , 0 );
setMoveKey( spep_3 + 2, 1, 336.5, 28.4 , 0 );
setMoveKey( spep_3 + 4, 1, 407.6, 28.4 , 0 );
setMoveKey( spep_3 + 6, 1, 454.9, 28.4 , 0 );
setMoveKey( spep_3 + 8, 1, 478.4, 28.4 , 0 );
setMoveKey( spep_3 + 10, 1, 478.1, 28.4 , 0 );
setMoveKey( spep_3 + 12, 1, 454.1, 28.4 , 0 );
setMoveKey( spep_3 + 14, 1, 406.2, 28.4 , 0 );
setMoveKey( spep_3 + 16, 1, 407.5, 28.4 , 0 );
setMoveKey( spep_3 + 18, 1, 387, 28.4 , 0 );
setMoveKey( spep_3 + 20, 1, 356.6, 28.4 , 0 );
setMoveKey( spep_3 + 22, 1, 328.1, 28.4 , 0 );
setMoveKey( spep_3 + 24, 1, 301.6, 28.4 , 0 );
setMoveKey( spep_3 + 26, 1, 277.1, 28.4 , 0 );
setMoveKey( spep_3 + 28, 1, 254.6, 28.4 , 0 );
setMoveKey( spep_3 + 30, 1, 234, 28.4 , 0 );
setMoveKey( spep_3 + 32, 1, 215.4, 28.4 , 0 );
setMoveKey( spep_3 + 34, 1, 198.8, 28.4 , 0 );
setMoveKey( spep_3 + 36, 1, 184.1, 28.4 , 0 );
setMoveKey( spep_3 + 38, 1, 171.4, 28.4 , 0 );
--setMoveKey( spep_3 + 40, 1, 160.7, 28.4 , 0 );
setMoveKey( spep_3 + 40, 1, 151.9, 28.4 , 0 );
setMoveKey( spep_3 + 41, 1, 226.5, 26.9 , 0 );
setMoveKey( spep_3 + 42, 1, 226.5, 26.9 , 0 );
setMoveKey( spep_3 + 46, 1, 411.7, 35.1 , 0 );
setMoveKey( spep_3 + 48, 1, 564.4, 27.3 , 0 );
setMoveKey( spep_3 + 50, 1, 750.8, 29.9 , 0 );
setMoveKey( spep_3 + 52, 1, 906.1, 32.8 , 0 );
setMoveKey( spep_3 + 54, 1, 1078.7, 22.1 , 0 );
setMoveKey( spep_3 + 56, 1, 1241.4, 32.9 , 0 );
setMoveKey( spep_3 + 58, 1, 1415.7, 23 , 0 );
setMoveKey( spep_3 + 60, 1, 1580.3, 32.3 , 0 );
setMoveKey( spep_3 + 62, 1, 1752.9, 26 , 0 );

setScaleKey( spep_3 + 0, 1, 2.16, 2.16 );
setScaleKey( spep_3 + 62, 1, 2.16, 2.16 );

setRotateKey( spep_3 + 0, 1, -115.3 );
setRotateKey( spep_3 + 38, 1, -115.3 )
setRotateKey( spep_3 +40, 1, -115.3 );
setRotateKey( spep_3 + 41, 1, 0 );
setRotateKey( spep_3 + 42, 1, 0 );
setRotateKey( spep_3 + 62, 1, 0 );

--流線(横)
ryusen = entryEffectLife( spep_3 + 0,  914, 18, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_3 + 0, ryusen, 0, 0 , 0 );
setEffMoveKey( spep_3 + 18, ryusen, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, ryusen, 4.29, 1.13 );
setEffScaleKey( spep_3 + 18, ryusen, 4.29, 1.13 );

setEffRotateKey( spep_3 + 0, ryusen, -180 );
setEffRotateKey( spep_3 + 18, ryusen, -180 );

setEffAlphaKey( spep_3 + 0, ryusen, 118 );
setEffAlphaKey( spep_3 + 10, ryusen, 118 );
setEffAlphaKey( spep_3 + 12, ryusen, 88 );
setEffAlphaKey( spep_3 + 14, ryusen, 59 );
setEffAlphaKey( spep_3 + 16, ryusen, 29 );
setEffAlphaKey( spep_3 + 18, ryusen, 0 );

--文字エントリー
ctshu3 = entryEffectLife( spep_3 + 10,  10011, 18, 0x100, -1, 0, -158.5, 254.2 );--シュンッ

setEffMoveKey( spep_3 + 10, ctshu3, -158.5, 254.2 , 0 );
setEffMoveKey( spep_3 + 16, ctshu3, -163.9, 260.3 , 0 );
setEffMoveKey( spep_3 + 18, ctshu3, -167.1, 264 , 0 );
setEffMoveKey( spep_3 + 20, ctshu3, -168.2, 265.2 , 0 );
setEffMoveKey( spep_3 + 26, ctshu3, -168.2, 265.2 , 0 );
setEffMoveKey( spep_3 + 28, ctshu3, -168.3, 265.3 , 0 );

setEffScaleKey( spep_3 + 10, ctshu3, 0.6, 0.6 );
setEffScaleKey( spep_3 + 16, ctshu3, 0.92, 0.92 );
setEffScaleKey( spep_3 + 18, ctshu3, 1.11, 1.11 );
setEffScaleKey( spep_3 + 20, ctshu3, 1.17, 1.17 );
setEffScaleKey( spep_3 + 22, ctshu3, 1.18, 1.18 );
setEffScaleKey( spep_3 + 24, ctshu3, 1.21, 1.21 );
setEffScaleKey( spep_3 + 26, ctshu3, 1.25, 1.25 );
setEffScaleKey( spep_3 + 28, ctshu3, 1.31, 1.31 );

setEffRotateKey( spep_3 + 10, ctshu3, -8 );
setEffRotateKey( spep_3 + 28, ctshu3, -8 );

setEffAlphaKey( spep_3 + 10, ctshu3, 0 );
setEffAlphaKey( spep_3 + 11, ctshu3, 255 );
setEffAlphaKey( spep_3 + 12, ctshu3, 255 );
setEffAlphaKey( spep_3 + 20, ctshu3, 255 );
setEffAlphaKey( spep_3 + 22, ctshu3, 239 );
setEffAlphaKey( spep_3 + 24, ctshu3, 191 );
setEffAlphaKey( spep_3 + 26, ctshu3, 112 );
setEffAlphaKey( spep_3 + 28, ctshu3, 0 );

--[[
--集中線
shuchuse2 = entryEffectLife( spep_3 + 90,  906, 176, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_3 + 90, shuchuse2, 0, 0 , 0 );
setEffMoveKey( spep_3 + 266, shuchuse2, 0, 0 , 0 );

setEffScaleKey( spep_3 + 90, shuchuse2, 1.18, 1.22 );
setEffScaleKey( spep_3 + 266, shuchuse2, 1.18, 1.22 );

setEffRotateKey( spep_3 + 90, shuchuse2, 0 );
setEffRotateKey( spep_3 + 266, shuchuse2, 0 );

setEffAlphaKey( spep_3 + 90, shuchuse2, 255 );
setEffAlphaKey( spep_3 + 266, shuchuse2, 255 );

]]

--SE
playSe( spep_3+10, 43);--瞬間移動
playSe( spep_3+40, 1011);--殴り
--playSe( spep_3+104, 1042);--目が動くやつ
--playSe( spep_3+130, 53);--ロックオン
SE3=playSe( spep_3+130, 14);--ロックオン
stopSe(spep_3+254,SE3,0);

--次の準備
spep_4=spep_3+254;

------------------------------------------------------
-- 被弾
------------------------------------------------------
--エフェクト再生(前)
hit_front=entryEffectLife(spep_4,SP_06x,180,0x100,-1,0,0,0);

setEffMoveKey(spep_4,hit_front,0,0,0);
setEffMoveKey(spep_4+180,hit_front,0,0,0);

setEffScaleKey(spep_4,hit_front,1.0,1.0);
setEffScaleKey(spep_4+180,hit_front,1.0,1.0);

setEffAlphaKey(spep_4,hit_front,255);
setEffAlphaKey(spep_4+180,hit_front,255);

setEffRotateKey(spep_4,hit_front,0);
setEffRotateKey(spep_4+180,hit_front,0);

--エフェクト再生(後)
hit_back=entryEffectLife(spep_4,SP_07x,180,0x80,-1,0,0,0);

setEffMoveKey(spep_4,hit_back,0,0,0);
setEffMoveKey(spep_4+180,hit_back,0,0,0);

setEffScaleKey(spep_4,hit_back,1.0,1.0);
setEffScaleKey(spep_4+180,hit_back,1.0,1.0);

setEffAlphaKey(spep_4,hit_back,255);
setEffAlphaKey(spep_4+180,hit_back,255);

setEffRotateKey(spep_4,hit_back,0);
setEffRotateKey(spep_4+180,hit_back,0);

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 148, 1, 0 );
changeAnime( spep_4 + 0, 1, 106 );

setMoveKey( spep_4 + 72, 1, 677.8, -37.6 , 0 );
setMoveKey( spep_4 + 74, 1, 639.2, -40.4 , 0 );
setMoveKey( spep_4 + 76, 1, 601, -43.2 , 0 );
setMoveKey( spep_4 + 78, 1, 563.4, -46 , 0 );
setMoveKey( spep_4 + 80, 1, 526.3, -48.6 , 0 );
setMoveKey( spep_4 + 82, 1, 489.7, -51.3 , 0 );
setMoveKey( spep_4 + 84, 1, 453.7, -53.9 , 0 );
setMoveKey( spep_4 + 86, 1, 417.9, -56.4 , 0 );
setMoveKey( spep_4 + 88, 1, 382.5, -58.9 , 0 );
setMoveKey( spep_4 + 90, 1, 347.2, -61.4 , 0 );
setMoveKey( spep_4 + 92, 1, 312.2, -63.8 , 0 );
setMoveKey( spep_4 + 94, 1, 277.2, -66.1 , 0 );
setMoveKey( spep_4 + 96, 1, 242.2, -68.4 , 0 );
setMoveKey( spep_4 + 98, 1, 206.9, -70.7 , 0 );
setMoveKey( spep_4 + 100, 1, 171.7, -72.9 , 0 );
setMoveKey( spep_4 + 102, 1, 141.7, -75.1 , 0 );
setMoveKey( spep_4 + 104, 1, 117.7, -77.2 , 0 );
setMoveKey( spep_4 + 106, 1, 99.3, -79.3 , 0 );
setMoveKey( spep_4 + 108, 1, 86, -81.3 , 0 );
setMoveKey( spep_4 + 110, 1, 77.5, -83.3 , 0 );
setMoveKey( spep_4 + 112, 1, 73.6, -85.2 , 0 );
setMoveKey( spep_4 + 114, 1, 74.2, -87.1 , 0 );
setMoveKey( spep_4 + 116, 1, 79.3, -88.9 , 0 );
setMoveKey( spep_4 + 118, 1, 86.7, -90.7 , 0 );
setMoveKey( spep_4 + 120, 1, 93.8, -92.5 , 0 );
setMoveKey( spep_4 + 122, 1, 100.8, -94.2 , 0 );
setMoveKey( spep_4 + 124, 1, 107.5, -95.8 , 0 );
setMoveKey( spep_4 + 126, 1, 114.1, -97.4 , 0 );
setMoveKey( spep_4 + 128, 1, 120.4, -99 , 0 );
setMoveKey( spep_4 + 130, 1, 126.6, -100.5 , 0 );
setMoveKey( spep_4 + 132, 1, 132.6, -101.9 , 0 );
setMoveKey( spep_4 + 134, 1, 138.4, -103.3 , 0 );
setMoveKey( spep_4 + 136, 1, 144, -104.7 , 0 );
setMoveKey( spep_4 + 138, 1, 149.4, -106 , 0 );
setMoveKey( spep_4 + 140, 1, 154.6, -107.3 , 0 );
setMoveKey( spep_4 + 142, 1, 159.6, -108.5 , 0 );
setMoveKey( spep_4 + 144, 1, 164.4, -109.7 , 0 );
setMoveKey( spep_4 + 146, 1, 169, -110.8 , 0 );
setMoveKey( spep_4 + 148, 1, 173.4, -111.9 , 0 );

setScaleKey( spep_4 + 72, 1, 0.76, 0.76 );
setScaleKey( spep_4 + 148, 1, 0.76, 0.76 );

setRotateKey( spep_4 + 72, 1, 33.8 );
setRotateKey( spep_4 + 74, 1, 34.8 );
setRotateKey( spep_4 + 76, 1, 35.7 );
setRotateKey( spep_4 + 78, 1, 36.6 );
setRotateKey( spep_4 + 80, 1, 37.5 );
setRotateKey( spep_4 + 82, 1, 38.4 );
setRotateKey( spep_4 + 84, 1, 39.3 );
setRotateKey( spep_4 + 86, 1, 40.2 );
setRotateKey( spep_4 + 88, 1, 41 );
setRotateKey( spep_4 + 90, 1, 41.8 );
setRotateKey( spep_4 + 92, 1, 42.6 );
setRotateKey( spep_4 + 94, 1, 43.4 );
setRotateKey( spep_4 + 96, 1, 44.2 );
setRotateKey( spep_4 + 98, 1, 45 );
setRotateKey( spep_4 + 100, 1, 45.7 );
setRotateKey( spep_4 + 102, 1, 46.5 );
setRotateKey( spep_4 + 104, 1, 47.2 );
setRotateKey( spep_4 + 106, 1, 47.9 );
setRotateKey( spep_4 + 108, 1, 48.6 );
setRotateKey( spep_4 + 110, 1, 49.2 );
setRotateKey( spep_4 + 112, 1, 49.9 );
setRotateKey( spep_4 + 114, 1, 50.5 );
setRotateKey( spep_4 + 116, 1, 51.1 );
setRotateKey( spep_4 + 118, 1, 51.8 );
setRotateKey( spep_4 + 120, 1, 52.3 );
setRotateKey( spep_4 + 122, 1, 52.9 );
setRotateKey( spep_4 + 124, 1, 53.5 );
setRotateKey( spep_4 + 126, 1, 54 );
setRotateKey( spep_4 + 128, 1, 54.5 );
setRotateKey( spep_4 + 130, 1, 55 );
setRotateKey( spep_4 + 132, 1, 55.5 );
setRotateKey( spep_4 + 134, 1, 56 );
setRotateKey( spep_4 + 136, 1, 56.5 );
setRotateKey( spep_4 + 138, 1, 56.9 );
setRotateKey( spep_4 + 140, 1, 57.3 );
setRotateKey( spep_4 + 142, 1, 57.8 );
setRotateKey( spep_4 + 144, 1, 58.2 );
setRotateKey( spep_4 + 146, 1, 58.5 );
setRotateKey( spep_4 + 148, 1, 58.9 );

--文字エントリー
ctca = entryEffectLife( spep_4 + 148,  10004, 28, 0x100, -1, 0, 119.1, -94.8 );--カッ

setEffMoveKey( spep_4 + 148, ctca, 119.1, -94.8 , 0 );
setEffMoveKey( spep_4 + 154, ctca, 116.1, -92.9 , 0 );
setEffMoveKey( spep_4 + 156, ctca, 113.2, -91.1 , 0 );
setEffMoveKey( spep_4 + 158, ctca, 110.3, -89.2 , 0 );
setEffMoveKey( spep_4 + 160, ctca, 107.2, -86.7 , 0 );
setEffMoveKey( spep_4 + 162, ctca, 104.4, -84.5 , 0 );
setEffMoveKey( spep_4 + 164, ctca, 102.1, -82.6 , 0 );
setEffMoveKey( spep_4 + 166, ctca, 100, -80.9 , 0 );
setEffMoveKey( spep_4 + 168, ctca, 98.4, -79.6 , 0 );
setEffMoveKey( spep_4 + 170, ctca, 97.1, -78.6 , 0 );
setEffMoveKey( spep_4 + 172, ctca, 96.2, -77.8 , 0 );
setEffMoveKey( spep_4 + 174, ctca, 95.6, -77.4 , 0 );
setEffMoveKey( spep_4 + 176, ctca, 95.4, -77.3 , 0 );

setEffScaleKey( spep_4 + 148, ctca, 2.44, 2.44 );
setEffScaleKey( spep_4 + 154, ctca, 2.64, 2.64 );
setEffScaleKey( spep_4 + 156, ctca, 2.83, 2.83 );
setEffScaleKey( spep_4 + 158, ctca, 3.03, 3.03 );
setEffScaleKey( spep_4 + 160, ctca, 3.29, 3.29 );
setEffScaleKey( spep_4 + 162, ctca, 3.51, 3.51 );
setEffScaleKey( spep_4 + 164, ctca, 3.71, 3.71 );
setEffScaleKey( spep_4 + 166, ctca, 3.87, 3.87 );
setEffScaleKey( spep_4 + 168, ctca, 4.01, 4.01 );
setEffScaleKey( spep_4 + 170, ctca, 4.11, 4.11 );
setEffScaleKey( spep_4 + 172, ctca, 4.19, 4.19 );
setEffScaleKey( spep_4 + 174, ctca, 4.23, 4.23 );
setEffScaleKey( spep_4 + 176, ctca, 4.25, 4.25 );

setEffRotateKey( spep_4 + 148, ctca, 0 );
setEffRotateKey( spep_4 + 176, ctca, 0 );

setEffAlphaKey( spep_4 + 148, ctca, 95 );
setEffAlphaKey( spep_4 + 154, ctca, 148 );
setEffAlphaKey( spep_4 + 156, ctca, 202 );
setEffAlphaKey( spep_4 + 158, ctca, 255 );
setEffAlphaKey( spep_4 + 160, ctca, 201 );
setEffAlphaKey( spep_4 + 162, ctca, 154 );
setEffAlphaKey( spep_4 + 164, ctca, 113 );
setEffAlphaKey( spep_4 + 166, ctca, 79 );
setEffAlphaKey( spep_4 + 168, ctca, 50 );
setEffAlphaKey( spep_4 + 170, ctca, 28 );
setEffAlphaKey( spep_4 + 172, ctca, 13 );
setEffAlphaKey( spep_4 + 174, ctca, 3 );
setEffAlphaKey( spep_4 + 176, ctca, 0 );


--SE
playSe( spep_4, 44);--キラキラ
SE1=playSe( spep_4+128,1023);--カッ
stopSe(spep_4+174,SE1,0);
--stopSe(spep_4+174,SE3,0);

--次の準備
spep_5=spep_4+176;


------------------------------------------------------
-- 爆発
------------------------------------------------------

--エフェクト再生
explosion=entryEffect(spep_5,SP_08x,0x100,-1,0,0,0);

setEffMoveKey(spep_5,explosion,0,0,0);
setEffMoveKey(spep_5+144,explosion,0,0,0);

setEffScaleKey(spep_5,explosion,1.0,1.0);
setEffScaleKey(spep_5+144,explosion,1.0,1.0);

setEffAlphaKey(spep_5,explosion,255);
setEffAlphaKey(spep_5+144,explosion,255);

setEffRotateKey(spep_5,explosion,0);
setEffRotateKey(spep_5+144,explosion,0);

--文字エントリー
ctdogon = entryEffectLife( spep_5 + 0,  10018, 34, 0x100, -1, 0, -6.3, 364.2 );--ドゴォンッ

setEffMoveKey( spep_5 + 0, ctdogon, -6.3, 364.2 , 0 );
setEffMoveKey( spep_5 + 2, ctdogon, -2.5, 397.5 , 0 );
setEffMoveKey( spep_5 + 4, ctdogon, 5.5, 430.9 , 0 );
setEffMoveKey( spep_5 + 6, ctdogon, 6.6, 434.1 , 0 );
setEffMoveKey( spep_5 + 8, ctdogon, 3.2, 435.6 , 0 );
setEffMoveKey( spep_5 + 10, ctdogon, 7.9, 454.1 , 0 );
setEffMoveKey( spep_5 + 12, ctdogon, 9.6, 451.1 , 0 );
setEffMoveKey( spep_5 + 14, ctdogon, 3.1, 461.2 , 0 );
setEffMoveKey( spep_5 + 16, ctdogon, 14.1, 464.4 , 0 );
setEffMoveKey( spep_5 + 18, ctdogon, 4.4, 464.1 , 0 );
setEffMoveKey( spep_5 + 20, ctdogon, 8.8, 470.4 , 0 );
setEffMoveKey( spep_5 + 22, ctdogon, 4.6, 464.7 , 0 );
setEffMoveKey( spep_5 + 24, ctdogon, 8.9, 472.3 , 0 );
setEffMoveKey( spep_5 + 26, ctdogon, 6.8, 468.3 , 0 );
setEffMoveKey( spep_5 + 28, ctdogon, 13.9, 485.3 , 0 );
setEffMoveKey( spep_5 + 30, ctdogon, 17.1, 475.9 , 0 );
setEffMoveKey( spep_5 + 32, ctdogon, 9.1, 483.5 , 0 );
setEffMoveKey( spep_5 + 34, ctdogon, 9.3, 483.9 , 0 );

setEffScaleKey( spep_5 + 0, ctdogon, 2.74, 2.74 );
setEffScaleKey( spep_5 + 2, ctdogon, 3.4, 3.4 );
setEffScaleKey( spep_5 + 4, ctdogon, 3.8, 3.8 );
setEffScaleKey( spep_5 + 6, ctdogon, 3.93, 3.93 );
setEffScaleKey( spep_5 + 8, ctdogon, 4.03, 4.03 );
setEffScaleKey( spep_5 + 10, ctdogon, 4.11, 4.11 );
setEffScaleKey( spep_5 + 12, ctdogon, 4.19, 4.19 );
setEffScaleKey( spep_5 + 14, ctdogon, 4.25, 4.25 );
setEffScaleKey( spep_5 + 16, ctdogon, 4.3, 4.3 );
setEffScaleKey( spep_5 + 18, ctdogon, 4.34, 4.34 );
setEffScaleKey( spep_5 + 20, ctdogon, 4.37, 4.37 );
setEffScaleKey( spep_5 + 22, ctdogon, 4.38, 4.38 );
setEffScaleKey( spep_5 + 24, ctdogon, 4.39, 4.39 );
setEffScaleKey( spep_5 + 26, ctdogon, 4.81, 4.81 );
setEffScaleKey( spep_5 + 28, ctdogon, 5.14, 5.14 );
setEffScaleKey( spep_5 + 30, ctdogon, 5.37, 5.37 );
setEffScaleKey( spep_5 + 32, ctdogon, 5.51, 5.51 );
setEffScaleKey( spep_5 + 34, ctdogon, 5.56, 5.56 );

setEffRotateKey( spep_5 + 0, ctdogon, -0.9 );
setEffRotateKey( spep_5 + 34, ctdogon, -0.9 );

setEffAlphaKey( spep_5 + 0, ctdogon, 255 );
setEffAlphaKey( spep_5 + 24, ctdogon, 255 );
setEffAlphaKey( spep_5 + 26, ctdogon, 163 );
setEffAlphaKey( spep_5 + 28, ctdogon, 92 );
setEffAlphaKey( spep_5 + 30, ctdogon, 41 );
setEffAlphaKey( spep_5 + 32, ctdogon, 10 );
setEffAlphaKey( spep_5 + 34, ctdogon, 0 );

--SE
playSe( spep_5, 1024);--爆発
playSe( spep_5+50, 8);--爆発

-- ダメージ表示
dealDamage(spep_5+24);

entryFade( spep_5+126, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_5+136);



 end


