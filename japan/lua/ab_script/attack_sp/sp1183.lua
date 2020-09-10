--sp1183 1014130 超フルパワーサイヤ人4孫悟空 龍拳
--sp_effect_b1_00043

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
SP_01=151844;--	かめはめ波
SP_02=151845;--	迫る光弾
SP_03=151846;--	前方ダッシュ
SP_04=151847;--	龍拳パンチ（前）
SP_05=151848;--	龍拳パンチ（後）
SP_06=151849;--	龍拳パンチ（地面）
SP_07=151850;--	龍が迫る
SP_08=151851;--	アッパーカット
SP_09=151852;--	貫通(前)
SP_10=151853;--	貫通(後)
SP_11=151854;--	ギャン

--敵
SP_01x=151855	;--	かめはめ波
SP_02x=151845	;--	迫る光弾
SP_03x=151846	;--	前方ダッシュ
SP_04x=151856	;--	龍拳パンチ（前）
SP_05x=151848	;--	龍拳パンチ（後）
SP_06x=151849	;--	龍拳パンチ（地面）
SP_07x=151850	;--	龍が迫る
SP_08x=151857	;--	アッパーカット
SP_09x=151852	;--	貫通(前)
SP_10x=151853	;--	貫通(後)
SP_11x=151854	;--	ギャン

multi_frm = 2;

changeAnime( 0, 0, 0);                       -- 立ち
setDisp( 0, 1, 0);

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

setDisp( 0, 1, 0);
setDisp( 0, 0, 0);
setMoveKey(   0,   0,    0, 10,   0);
setMoveKey(   0,   1,    0, -54,   0);
setMoveKey(   1,   0,    0, 10,   0);
setMoveKey(   1,   1,    0, -54,   0);
setMoveKey(   2,   0,    0, 10,   0);
setMoveKey(   2,   1,    0, -54,   0);
setMoveKey(   3,   0,    0, 10,   0);
setMoveKey(   3,   1,    0, -54,   0);
setMoveKey(   4,   0,    0, 10,   0);
setMoveKey(   4,   1,    0, -54,   0);
setMoveKey(   5,   0,    0, 10,   0);
setMoveKey(   5,   1,    0, -54,   0);

setScaleKey(   1,   0, 1.6, 1.6);
setScaleKey(   1,   1, 1.6, 1.6);
setRotateKey(   1,   1, 0);
setRotateKey(   1,   0, 0);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then
------------------------------------------------------
-- かめはめ波
------------------------------------------------------
spep_0=0;

setDisp( 0, 0, 1);
setDisp( 20, 0, 0);

changeAnime(0,0,1);

--setMoveKey(   0,   0,    0, 10,   0);
setMoveKey(   spep_0+20,   0,    0, 10,   0);

setScaleKey(   0,   0, 1.6, 1.6);
setScaleKey(  spep_0+20,   0, 1.6, 1.6);

setRotateKey(   1,   0, 0);
setRotateKey(   spep_0+20,   0, 0);

--エフェクトの再生
kamehame=entryEffectLife(spep_0+20,SP_01,86,0x100,-1,0,0,0);
setEffMoveKey(spep_0+20,kamehame,0,0,0);
setEffMoveKey(spep_0+106,kamehame,0,0,0);
setEffScaleKey(spep_0+20,kamehame,1.0,1.0);
setEffScaleKey(spep_0+106,kamehame,1.0,1.0);
setEffAlphaKey(spep_0+20,kamehame,255);
setEffAlphaKey(spep_0+106,kamehame,255);
setEffRotateKey(spep_0+20,kamehame,0);
setEffRotateKey(spep_0+106,kamehame,0);

setEffShake(spep_0+20,kamehame,86,10);

--集中線
shuchu = entryEffectLife( spep_0 + 20,  906, 27, 0x100, -1, 0, 0, -54 );
setEffMoveKey( spep_0 + 20, shuchu, 0, -54 , 0 );
setEffMoveKey( spep_0 + 47, shuchu, 0, -54 , 0 );

setEffScaleKey( spep_0 + 20, shuchu, 1.24, 1.24 );
setEffScaleKey( spep_0 + 47, shuchu, 1.24, 1.24 );

setEffRotateKey( spep_0 + 20, shuchu, 180 );
setEffRotateKey( spep_0 + 47, shuchu, 180 );


--集中線(斜め)
shuchu0 = entryEffectLife( spep_0 + 48,  921, 58, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 48, shuchu0, 0, 0 , 0 );
setEffMoveKey( spep_0 + 106, shuchu0, 0, 0 , 0 );

setEffScaleKey( spep_0 + 48, shuchu0, 1, 1 );
setEffScaleKey( spep_0 + 106, shuchu0, 1, 1 );

setEffRotateKey( spep_0 + 48, shuchu0, 180 );
setEffRotateKey( spep_0 + 106, shuchu0, 180 );

--文字エントリー
ctba = entryEffectLife( spep_0 + 20,  10022, 26, 0x100, -1, 0, 57, 96.9 );--バッ
setEffMoveKey( spep_0 + 20, ctba, 57, 96.9 , 0 );
setEffMoveKey( spep_0 + 22, ctba, 72.2, 117 , 0 );
setEffMoveKey( spep_0 + 24, ctba, 83, 142.2 , 0 );
setEffMoveKey( spep_0 + 26, ctba, 99.8, 160.5 , 0 );
setEffMoveKey( spep_0 + 28, ctba, 96.9, 166 , 0 );
setEffMoveKey( spep_0 + 30, ctba, 101.7, 162.8 , 0 );
setEffMoveKey( spep_0 + 32, ctba, 98.6, 168.5 , 0 );
setEffMoveKey( spep_0 + 34, ctba, 103.5, 165.1 , 0 );
setEffMoveKey( spep_0 + 36, ctba, 100.4, 170.9 , 0 );
setEffMoveKey( spep_0 + 38, ctba, 105.3, 167.5 , 0 );
setEffMoveKey( spep_0 + 40, ctba, 102.2, 173.3 , 0 );
setEffMoveKey( spep_0 + 42, ctba, 107.3, 169.8 , 0 );
setEffMoveKey( spep_0 + 44, ctba, 104, 175.7 , 0 );
setEffMoveKey( spep_0 + 46, ctba, 109.1, 172.1 , 0 );

setEffScaleKey( spep_0+20 + 0, ctba, 0.35, 0.35 );
setEffScaleKey( spep_0+20 + 2, ctba, 0.57, 0.57 );
setEffScaleKey( spep_0+20 + 4, ctba, 0.78, 0.78 );
setEffScaleKey( spep_0+20 + 6, ctba, 1, 1 );
setEffScaleKey( spep_0+20 + 8, ctba, 1.01, 1.01 );
setEffScaleKey( spep_0+20 + 10, ctba, 1.02, 1.02 );
setEffScaleKey( spep_0+20 + 12, ctba, 1.03, 1.03 );
setEffScaleKey( spep_0+20 + 14, ctba, 1.03, 1.03 );
setEffScaleKey( spep_0+20 + 16, ctba, 1.04, 1.04 );
setEffScaleKey( spep_0+20 + 18, ctba, 1.05, 1.05 );
setEffScaleKey( spep_0+20 + 20, ctba, 1.06, 1.06 );
setEffScaleKey( spep_0+20 + 22, ctba, 1.07, 1.07 );
setEffScaleKey( spep_0+20 + 24, ctba, 1.08, 1.08 );
setEffScaleKey( spep_0+20 + 26, ctba, 1.09, 1.09 );

setEffRotateKey( spep_0+20 + 0, ctba, 17.8 );
setEffRotateKey( spep_0+20 + 2, ctba, 17.9 );

setEffAlphaKey( spep_0+20 + 0, ctba, 255 );

--かけ文字
ctzuo = entryEffectLife( spep_0 + 50,  10012, 38, 0x100, -1, 0, 76.4, 169.9 );--ズオ
setEffMoveKey( spep_0 + 50, ctzuo, 76.4, 169.9 , 0 );
setEffMoveKey( spep_0 + 52, ctzuo, 101.8, 251.6 , 0 );
setEffMoveKey( spep_0 + 54, ctzuo, 119.2, 339.6 , 0 );
setEffMoveKey( spep_0 + 56, ctzuo, 126.3, 334.2 , 0 );
setEffMoveKey( spep_0 + 58, ctzuo, 119.2, 339.6 , 0 );
setEffMoveKey( spep_0 + 60, ctzuo, 126.3, 334.2 , 0 );
setEffMoveKey( spep_0 + 62, ctzuo, 119.2, 339.6 , 0 );
setEffMoveKey( spep_0 + 64, ctzuo, 126.3, 334.2 , 0 );
setEffMoveKey( spep_0 + 66, ctzuo, 119.2, 339.6 , 0 );
setEffMoveKey( spep_0 + 68, ctzuo, 126.3, 334.2 , 0 );
setEffMoveKey( spep_0 + 70, ctzuo, 119.2, 339.6 , 0 );
setEffMoveKey( spep_0 + 72, ctzuo, 126.3, 334.2 , 0 );
setEffMoveKey( spep_0 + 74, ctzuo, 119.2, 339.6 , 0 );
setEffMoveKey( spep_0 + 76, ctzuo, 137.4, 356.5 , 0 );
setEffMoveKey( spep_0 + 78, ctzuo, 137.2, 387.4 , 0 );
setEffMoveKey( spep_0 + 80, ctzuo, 159.6, 401 , 0 );
setEffMoveKey( spep_0 + 82, ctzuo, 155.1, 435.3 , 0 );
setEffMoveKey( spep_0 + 88, ctzuo, 164.1, 459.3 , 0 );

setEffScaleKey( spep_0 + 50, ctzuo, 0.33, 0.33 );
setEffScaleKey( spep_0 + 52, ctzuo, 1.5, 1.5 );
setEffScaleKey( spep_0 + 54, ctzuo, 2.67, 2.67 );
setEffScaleKey( spep_0 + 74, ctzuo, 2.67, 2.67 );
setEffScaleKey( spep_0 + 76, ctzuo, 3.47, 3.47 );
setEffScaleKey( spep_0 + 78, ctzuo, 4.27, 4.27 );
setEffScaleKey( spep_0 + 80, ctzuo, 5.07, 5.07 );
setEffScaleKey( spep_0 + 82, ctzuo, 5.87, 5.87 );
setEffScaleKey( spep_0 + 84, ctzuo, 6.67, 6.67 );
setEffScaleKey( spep_0 + 88, ctzuo, 6.67, 6.67 );

setEffRotateKey( spep_0 + 50, ctzuo, 19.2 );
setEffRotateKey( spep_0 + 88, ctzuo, 19.2 );

setEffAlphaKey( spep_0 + 50, ctzuo, 255 );
setEffAlphaKey( spep_0 + 74, ctzuo, 255 );
setEffAlphaKey( spep_0 + 76, ctzuo, 204 );
setEffAlphaKey( spep_0 + 78, ctzuo, 153 );
setEffAlphaKey( spep_0 + 80, ctzuo, 102 );
setEffAlphaKey( spep_0 + 82, ctzuo, 51 );
setEffAlphaKey( spep_0 + 88, ctzuo, 0 );

playSe(spep_0+20,SE_01);--気だめ
playSe(spep_0+50,SE_06);--かめはめ波発射

--白フェード
entryFade(spep_0+88,18,2,6,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFadeBg(spep_0+20,6,82,0,10,10,10,200);     -- white fade

--次の準備
spep_1=spep_0+108;

------------------------------------------------------
-- 迫る光弾
------------------------------------------------------
--白フェード
entryFade(spep_1+38,18,4,0,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
--背景
entryFadeBg(spep_1,0,58,0,0,0,0,255);
--エフェクトの再生
hit=entryEffectLife(spep_1,SP_02,58,0x100,-1,0,0,0);
setEffMoveKey(spep_1,hit,0,0,0);
setEffMoveKey(spep_1+58,hit,0,0,0);
setEffScaleKey(spep_1,hit,1.0,1.0);
setEffScaleKey(spep_1+58,hit,1.0,1.0);
setEffAlphaKey(spep_1,hit,255);
setEffAlphaKey(spep_1+58,hit,255);
setEffRotateKey(spep_1,hit,0);
setEffRotateKey(spep_1+58,hit,0);

setEffShake(spep_1,hit,58,10);

--敵の動き
setDisp( spep_1 + 0, 1, 1 );
changeAnime( spep_1 + 0, 1, 100 );

setMoveKey( spep_1 + 0, 1, 85, 2 , 0 );
setMoveKey( spep_1 + 2, 1, 89.6, -5 , 0 );
setMoveKey( spep_1 + 4, 1, 78.3, -4 , 0 );
setMoveKey( spep_1 + 6, 1, 82.9, 5 , 0 );
setMoveKey( spep_1 + 8, 1, 71.6, 6 , 0 );
setMoveKey( spep_1 + 10, 1, 76.3, -1 , 0 );

setScaleKey( spep_1 + 0, 1, 1.47, 1.47 );
setRotateKey( spep_1 + 0, 1, 0 );

setShakeChara( spep_1 + 10, 1,58,10);

ctZudodo = entryEffectLife( spep_1 + 0, 10014, 58, 0x100, -1, 0, 182.4, 347.3 );
setEffMoveKey( spep_1 + 0, ctZudodo, 182.4, 347.3 , 0 );
setEffMoveKey( spep_1 + 2, ctZudodo, 171.6, 337.8 , 0 );
setEffMoveKey( spep_1 + 4, ctZudodo, 182.4, 347.3 , 0 );
setEffMoveKey( spep_1 + 6, ctZudodo, 171.6, 337.8 , 0 );
setEffMoveKey( spep_1 + 8, ctZudodo, 182.4, 347.3 , 0 );
setEffMoveKey( spep_1 + 10, ctZudodo, 171.6, 337.8 , 0 );
setEffMoveKey( spep_1 + 12, ctZudodo, 182.4, 347.3 , 0 );

setEffAlphaKey( spep_1 + 0, ctZudodo, 255 )
setEffScaleKey( spep_1 + 0, ctZudodo, 1.8, 1.8 );
setEffRotateKey( spep_1 + 0, ctZudodo, 70);

--流線
shuchu1 = entryEffectLife( spep_1 + 0,  921, 58, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_1 + 0, shuchu1, 0, 0 , 0 );

seid=playSe(spep_1,SE_07);

------------------------------------------------------
-- 回避　タイミングはspep_1+12がいいな
------------------------------------------------------
if (_IS_DODGE_ == 1) then

SP_dodge = spep_1+12; 

stopSe( SP_dodge-12,seid,0);
playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setMoveKey( SP_dodge-1, 0,  -2500, -1000,0); --味方位置
setMoveKey( SP_dodge, 0,  -2500, -1000,0); --味方位置

setMoveKey( SP_dodge, 1, 64.9, 0 , 0 );
setMoveKey( SP_dodge+1, 1, 125, 18 , 0 );
setMoveKey( SP_dodge+4, 1, 124.5, 18 , 0 );
setMoveKey( SP_dodge+6, 1, 140, 10 , 0 );
setMoveKey( SP_dodge+8, 1, 139.5, 10 , 0 );

setMoveKey( SP_dodge+9, 1, 139.5, 10 , 0 );

changeAnime(  SP_dodge+9,    1,  100);
setMoveKey(  SP_dodge+9,    1,  0,  0,   0);
setScaleKey( SP_dodge+9,    1,  1.0, 1.0);
setRotateKey(   SP_dodge+9,   1, 0);

setMoveKey(  SP_dodge+10,    1,  0,  0,   0);
setScaleKey( SP_dodge+10,    1,  1.0, 1.0);
setRotateKey(   SP_dodge+10,   1, 0);

endPhase(SP_dodge+10);

do return end
else end

-------------------------------------
--回避されなかった場合
-------------------------------------
changeAnime( spep_1 + 14, 1, 108 );
setDisp( spep_1 + 58, 1, 0 );

setMoveKey( spep_1 + 13, 1, 64.9, 0 , 0 );
setMoveKey( spep_1 + 14, 1, 125, 18 , 0 );
setMoveKey( spep_1 + 16, 1, 124.5, 18 , 0 );
setMoveKey( spep_1 + 18, 1, 140, 10 , 0 );
setMoveKey( spep_1 + 20, 1, 139.5, 10 , 0 );
setMoveKey( spep_1 + 22, 1, 155, 18 , 0 );
setMoveKey( spep_1 + 24, 1, 154.5, 18 , 0 );
setMoveKey( spep_1 + 26, 1, 170, 10 , 0 );
setMoveKey( spep_1 + 28, 1, 169.5, 10 , 0 );
setMoveKey( spep_1 + 30, 1, 185, 18 , 0 );
setMoveKey( spep_1 + 32, 1, 184.5, 18 , 0 );
setMoveKey( spep_1 + 34, 1, 200, 10 , 0 );
setMoveKey( spep_1 + 36, 1, 199.5, 10 , 0 );
setMoveKey( spep_1 + 38, 1, 215, 18 , 0 );
setMoveKey( spep_1 + 40, 1, 217.8, 18 , 0 );
setMoveKey( spep_1 + 42, 1, 236.6, 10 , 0 );
setMoveKey( spep_1 + 44, 1, 239.4, 10 , 0 );
setMoveKey( spep_1 + 46, 1, 258.2, 18 , 0 );
setMoveKey( spep_1 + 48, 1, 261, 18 , 0 );
setMoveKey( spep_1 + 50, 1, 279.8, 10 , 0 );
setMoveKey( spep_1 + 52, 1, 282.6, 10 , 0 );
setMoveKey( spep_1 + 54, 1, 301.4, 18 , 0 );
setMoveKey( spep_1 + 56, 1, 304.2, 18 , 0 );
setMoveKey( spep_1 + 58, 1, 323, 10 , 0 );

setScaleKey( spep_1 + 14, 1, 1.47, 1.47 );
setScaleKey( spep_1 + 16, 1, 1.45, 1.45 );
setScaleKey( spep_1 + 18, 1, 1.43, 1.43 );
setScaleKey( spep_1 + 20, 1, 1.42, 1.42 );
setScaleKey( spep_1 + 22, 1, 1.4, 1.4 );
setScaleKey( spep_1 + 24, 1, 1.38, 1.38 );
setScaleKey( spep_1 + 26, 1, 1.36, 1.36 );
setScaleKey( spep_1 + 28, 1, 1.34, 1.34 );
setScaleKey( spep_1 + 30, 1, 1.33, 1.33 );
setScaleKey( spep_1 + 32, 1, 1.31, 1.31 );
setScaleKey( spep_1 + 34, 1, 1.29, 1.29 );
setScaleKey( spep_1 + 36, 1, 1.27, 1.27 );
setScaleKey( spep_1 + 38, 1, 1.25, 1.25 );
setScaleKey( spep_1 + 40, 1, 1.22, 1.22 );
setScaleKey( spep_1 + 42, 1, 1.18, 1.18 );
setScaleKey( spep_1 + 44, 1, 1.14, 1.14 );
setScaleKey( spep_1 + 46, 1, 1.11, 1.11 );
setScaleKey( spep_1 + 48, 1, 1.07, 1.07 );
setScaleKey( spep_1 + 50, 1, 1.04, 1.04 );
setScaleKey( spep_1 + 52, 1, 1, 1 );
setScaleKey( spep_1 + 54, 1, 0.96, 0.96 );
setScaleKey( spep_1 + 56, 1, 0.93, 0.93 );
setScaleKey( spep_1 + 58, 1, 0.89, 0.89 );

setRotateKey( spep_1 + 13, 1, 0 );
setRotateKey( spep_1 + 14, 1, -7.3 );
setRotateKey( spep_1 + 16, 1, -4.6 );
setRotateKey( spep_1 + 18, 1, -7.3 );
setRotateKey( spep_1 + 20, 1, -4.6 );
setRotateKey( spep_1 + 22, 1, -7.3 );
setRotateKey( spep_1 + 24, 1, -4.6 );
setRotateKey( spep_1 + 26, 1, -7.3 );
setRotateKey( spep_1 + 28, 1, -4.6 );
setRotateKey( spep_1 + 30, 1, -7.3 );
setRotateKey( spep_1 + 32, 1, -4.6 );
setRotateKey( spep_1 + 34, 1, -7.3 );
setRotateKey( spep_1 + 36, 1, -4.6 );
setRotateKey( spep_1 + 38, 1, -7.3 );
setRotateKey( spep_1 + 40, 1, -4.6 );
setRotateKey( spep_1 + 42, 1, -7.3 );
setRotateKey( spep_1 + 44, 1, -4.6 );
setRotateKey( spep_1 + 46, 1, -7.3 );
setRotateKey( spep_1 + 48, 1, -4.6 );
setRotateKey( spep_1 + 50, 1, -7.3 );
setRotateKey( spep_1 + 52, 1, -4.6 );
setRotateKey( spep_1 + 54, 1, -7.3 );
setRotateKey( spep_1 + 56, 1, -4.6 );
setRotateKey( spep_1 + 58, 1, -7.3 );

setEffMoveKey( spep_1 + 14, ctZudodo, 171.6, 337.8 , 0 );
setEffMoveKey( spep_1 + 16, ctZudodo, 182.4, 347.3 , 0 );
setEffMoveKey( spep_1 + 18, ctZudodo, 171.6, 337.8 , 0 );
setEffMoveKey( spep_1 + 20, ctZudodo, 182.4, 347.3 , 0 );
setEffMoveKey( spep_1 + 22, ctZudodo, 171.6, 337.8 , 0 );
setEffMoveKey( spep_1 + 24, ctZudodo, 182.4, 347.3 , 0 );
setEffMoveKey( spep_1 + 26, ctZudodo, 171.6, 337.8 , 0 );
setEffMoveKey( spep_1 + 28, ctZudodo, 182.4, 347.3 , 0 );
setEffMoveKey( spep_1 + 30, ctZudodo, 171.6, 337.8 , 0 );
setEffMoveKey( spep_1 + 32, ctZudodo, 182.4, 347.3 , 0 );
setEffMoveKey( spep_1 + 34, ctZudodo, 171.6, 337.8 , 0 );
setEffMoveKey( spep_1 + 36, ctZudodo, 182.4, 347.3 , 0 );
setEffMoveKey( spep_1 + 38, ctZudodo, 171.6, 337.8 , 0 );
setEffMoveKey( spep_1 + 40, ctZudodo, 182.4, 347.3 , 0 );
setEffMoveKey( spep_1 + 42, ctZudodo, 171.6, 337.8 , 0 );
setEffMoveKey( spep_1 + 44, ctZudodo, 182.4, 347.3 , 0 );
setEffMoveKey( spep_1 + 46, ctZudodo, 171.6, 337.8 , 0 );
setEffMoveKey( spep_1 + 48, ctZudodo, 182.4, 347.3 , 0 );
setEffMoveKey( spep_1 + 50, ctZudodo, 171.6, 337.8 , 0 );
setEffMoveKey( spep_1 + 52, ctZudodo, 182.4, 347.3 , 0 );
setEffMoveKey( spep_1 + 54, ctZudodo, 171.6, 337.8 , 0 );
setEffMoveKey( spep_1 + 56, ctZudodo, 182.4, 347.3 , 0 );
setEffMoveKey( spep_1 + 58, ctZudodo, 171.6, 337.8 , 0 );

setEffMoveKey( spep_1 + 58, shuchu1, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, shuchu1, 1, 1 );
setEffScaleKey( spep_1 + 58, shuchu1, 1, 1 );
setEffRotateKey( spep_1 + 0, shuchu1, 0 );
setEffRotateKey( spep_1 + 58, shuchu1, 0 );
setEffAlphaKey( spep_1 + 0, shuchu1, 255 );
setEffAlphaKey( spep_1 + 58, shuchu1, 255 );

--playSe(spep_1+14,SE_09);

--次の準備
spep_2=spep_1+59;--かめはめ波ヒット

------------------------------------------------------
-- 前方にダッシュ
------------------------------------------------------
entryFadeBg(spep_2,0,98,0,10,10,10,200);

--白フェード
entryFade(spep_2,0,0,8,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_2+80,16,4,0,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--エフェクトの再生
dash=entryEffectLife(spep_2,SP_03,96,0x100,-1,0,0,0);
setEffMoveKey(spep_2,dash,0,0,0);
setEffMoveKey(spep_2+96,dash,0,0,0);
setEffScaleKey(spep_2,dash,1.0,1.0);
setEffScaleKey(spep_2+96,dash,1.0,1.0);
setEffAlphaKey(spep_2,dash,255);
setEffAlphaKey(spep_2+96,dash,255);
setEffRotateKey(spep_2,dash,0);
setEffRotateKey(spep_2+96,dash,0);

setEffShake(spep_2+96,dash,96,10);

-- カットイン
speff = entryEffect(  spep_2,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_2,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

--文字エントリー
ctgogo = entryEffectLife(spep_2+16, 190006, 68, 0x100, -1, 0, 100, 500);	--ゴゴゴ
setEffMoveKey(spep_2+16, ctgogo, 100, 500, 0);
setEffMoveKey(spep_2+84, ctgogo, 100, 500, 0);
setEffScaleKey(spep_2+16, ctgogo, 0.7, 0.7);
setEffScaleKey(spep_2+84, ctgogo, 0.7, 0.7);
setEffAlphaKey(spep_2+16, ctgogo, 255);
setEffAlphaKey(spep_2+84, ctgogo, 255);

--流線
shuchu2 = entryEffectLife( spep_2 + 0,  906, 96, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, shuchu2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 96, shuchu2, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, shuchu2, 1, 1 );
setEffScaleKey( spep_2 + 96, shuchu2, 1, 1 );
setEffRotateKey( spep_2 + 0, shuchu2, 0 );
setEffRotateKey( spep_2 + 96, shuchu2, 0 );
setEffAlphaKey( spep_2 + 0, shuchu2, 255 );
setEffAlphaKey( spep_2 + 96, shuchu2, 255 );

playSe( spep_2+10,1035); --前方ダッシュ

--次の準備
spep_5=spep_2+99;

--------------------------------------
--カードカットイン(90F)
--------------------------------------
playSe(spep_5,SE_05);
shuchusen9=entryEffectLife(spep_5,906,88,0x100,-1,0,0,0);   -- 集中線
setEffScaleKey(spep_5,shuchusen9,1.6,1.6);

speff2=entryEffect(spep_5,1507,0,-1,0,0,0);   -- カード
setEffReplaceTexture(speff2,1,1);
setEffReplaceTexture(speff2,2,0);-- カード差し替え
setEffReplaceTexture(speff2,5,4);-- 技名テクスチャ差し替え

-- ** エフェクト等 ** --
entryFade(spep_5,0,0,8,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_5+74,14,6,0,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

playSe(spep_5,SE_05);

--流線
shuchu5 = entryEffectLife( spep_5 + 0,  906, 90, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_5 + 0, shuchu5, 0, 0 , 0 );
setEffMoveKey( spep_5 + 90, shuchu5, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, shuchu5, 1.2, 1.2 );
setEffScaleKey( spep_5 + 90, shuchu5, 1.2, 1.2 );
setEffRotateKey( spep_5 + 0, shuchu5, 0 );
setEffRotateKey( spep_5 + 90, shuchu5, 0 );
setEffAlphaKey( spep_5 + 0, shuchu5, 255 );
setEffAlphaKey( spep_5 + 90, shuchu5, 255 );

--次の準備
spep_3=spep_5+90;

------------------------------------------------------
-- パンチ
------------------------------------------------------
entryFadeBg(spep_3,0,84,0,10,10,10,200);

--白フェード
entryFade(spep_3,0,0,6,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_3+20,0,0,6,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_3+54,28,2,0,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

setDisp( spep_3 + 12,1,1);
setDisp( spep_3 + 82,1,0);
changeAnime( spep_3 + 12, 1,108);

setMoveKey( spep_3 + 12, 1, 654.1, 7.6 , 0 );
setMoveKey( spep_3 + 14, 1, 550.9, 11.6 , 0 );
setMoveKey( spep_3 + 16, 1, 439.7, 11.6 , 0 );
setMoveKey( spep_3 + 18, 1, 336.7, 7.6 , 0 );
setMoveKey( spep_3 + 20, 1, 233, 15.2 , 0 );
setMoveKey( spep_3 + 22, 1, 126.3, 15.6 , 0 );
setMoveKey( spep_3 + 24, 1, 119.3, 7.6 , 0 );
setMoveKey( spep_3 + 26, 1, 118.3, 15.6 , 0 );
setMoveKey( spep_3 + 28, 1, 126.3, 7.6 , 0 );
setMoveKey( spep_3 + 30, 1, 126.3, 15.6 , 0 );
setMoveKey( spep_3 + 32, 1, 119.3, 7.6 , 0 );
setMoveKey( spep_3 + 34, 1, 118.3, 15.6 , 0 );
setMoveKey( spep_3 + 36, 1, 126.3, 7.6 , 0 );
setMoveKey( spep_3 + 38, 1, 126.3, 15.6 , 0 );
setMoveKey( spep_3 + 40, 1, 119.3, 7.6 , 0 );
setMoveKey( spep_3 + 42, 1, 118.3, 15.6 , 0 );
setMoveKey( spep_3 + 44, 1, 126.3, 7.6 , 0 );
setMoveKey( spep_3 + 46, 1, 126.3, 15.6 , 0 );
setMoveKey( spep_3 + 48, 1, 119.3, 7.6 , 0 );
setMoveKey( spep_3 + 50, 1, 118.3, 15.6 , 0 );
setMoveKey( spep_3 + 52, 1, 126.3, 7.6 , 0 );
setMoveKey( spep_3 + 54, 1, 126.3, 15.6 , 0 );
setMoveKey( spep_3 + 56, 1, 119.3, 7.6 , 0 );
setMoveKey( spep_3 + 58, 1, 118.3, 15.6 , 0 );
setMoveKey( spep_3 + 60, 1, 126.3, 7.6 , 0 );
setMoveKey( spep_3 + 62, 1, 126.3, 15.6 , 0 );
setMoveKey( spep_3 + 64, 1, 119.3, 7.6 , 0 );
setMoveKey( spep_3 + 66, 1, 118.3, 15.6 , 0 );
setMoveKey( spep_3 + 68, 1, 126.3, 7.6 , 0 );
setMoveKey( spep_3 + 70, 1, 126.3, 15.6 , 0 );
setMoveKey( spep_3 + 72, 1, 119.3, 7.6 , 0 );
setMoveKey( spep_3 + 74, 1, 118.3, 15.6 , 0 );
setMoveKey( spep_3 + 76, 1, 126.3, 7.6 , 0 );
setMoveKey( spep_3 + 78, 1, 126.3, 15.6 , 0 );
setMoveKey( spep_3 + 80, 1, 119.3, 7.6 , 0 );
setMoveKey( spep_3 + 82, 1, 118.3, 15.6 , 0 );

setScaleKey( spep_3 + 12, 1, 1.2, 1.2 );
setRotateKey( spep_3 + 12, 1, 0 );
setShakeChara( spep_3 + 12,1,70,10);

--エフェクトの再生(パンチ前)
front_punch=entryEffectLife(spep_3,SP_04,84,0x100,-1,0,0,0);
setEffMoveKey(spep_3,front_punch,0,0,0);
setEffMoveKey(spep_3+84,front_punch,0,0,0);
setEffScaleKey(spep_3,front_punch,1.0,1.0);
setEffScaleKey(spep_3+84,front_punch,1.0,1.0);
setEffAlphaKey(spep_3,front_punch,255);
setEffAlphaKey(spep_3+84,front_punch,255);
setEffRotateKey(spep_3,front_punch,0);
setEffRotateKey(spep_3+84,front_punch,0);

--エフェクトの再生(床)
floor=entryEffectLife(spep_3,SP_06,84,0x80,-1,0,0,0);
setEffMoveKey(spep_3,floor,0,0,0);
setEffMoveKey(spep_3+84,floor,0,0,0);
setEffScaleKey(spep_3,floor,1.0,1.0);
setEffScaleKey(spep_3+84,floor,1.0,1.0);
setEffAlphaKey(spep_3,floor,255);
setEffAlphaKey(spep_3+84,floor,255);
setEffRotateKey(spep_3,floor,0);
setEffRotateKey(spep_3+84,floor,0);

setEffShake(spep_3,floor,84,10);

--エフェクトの再生(パンチ後)
back_punch=entryEffectLife(spep_3,SP_05,84,0x80,-1,0,0,0);
setEffMoveKey(spep_3,back_punch,0,0,0);
setEffMoveKey(spep_3+84,back_punch,0,0,0);
setEffScaleKey(spep_3,back_punch,1.0,1.0);
setEffScaleKey(spep_3+84,back_punch,1.0,1.0);
setEffAlphaKey(spep_3,back_punch,255);
setEffAlphaKey(spep_3+84,back_punch,255);
setEffRotateKey(spep_3,back_punch,0);
setEffRotateKey(spep_3+84,back_punch,0);

ctDogown = entryEffectLife( spep_3 + 22,  10018, 60, 0x100, -1, 0, 54, 181.9 );
setEffMoveKey( spep_3 + 22, ctDogown, 54, 181.9 , 0 );
setEffMoveKey( spep_3 + 24, ctDogown, 66, 211.9 , 0 );
setEffMoveKey( spep_3 + 26, ctDogown, 78, 241.9 , 0 );
setEffMoveKey( spep_3 + 28, ctDogown, 90, 271.9 , 0 );
setEffMoveKey( spep_3 + 30, ctDogown, 91.2, 274.4 , 0 );
setEffMoveKey( spep_3 + 32, ctDogown, 92.4, 277 , 0 );
setEffMoveKey( spep_3 + 34, ctDogown, 93.6, 279.5 , 0 );
setEffMoveKey( spep_3 + 36, ctDogown, 94.8, 282 , 0 );
setEffMoveKey( spep_3 + 38, ctDogown, 96, 284.6 , 0 );
setEffMoveKey( spep_3 + 40, ctDogown, 97.2, 287.1 , 0 );
setEffMoveKey( spep_3 + 42, ctDogown, 98.4, 289.6 , 0 );
setEffMoveKey( spep_3 + 44, ctDogown, 99.6, 292.2 , 0 );
setEffMoveKey( spep_3 + 46, ctDogown, 100.8, 294.7 , 0 );
setEffMoveKey( spep_3 + 48, ctDogown, 102, 297.2 , 0 );
setEffMoveKey( spep_3 + 50, ctDogown, 103.2, 299.8 , 0 );
setEffMoveKey( spep_3 + 52, ctDogown, 104.4, 302.3 , 0 );
setEffMoveKey( spep_3 + 54, ctDogown, 105.6, 304.8 , 0 );
setEffMoveKey( spep_3 + 56, ctDogown, 106.8, 307.4 , 0 );
setEffMoveKey( spep_3 + 58, ctDogown, 108, 309.9 , 0 );

setEffScaleKey( spep_3 + 22, ctDogown, 1, 1 );
setEffScaleKey( spep_3 + 24, ctDogown, 1.48, 1.48 );
setEffScaleKey( spep_3 + 26, ctDogown, 1.97, 1.97 );
setEffScaleKey( spep_3 + 28, ctDogown, 2.45, 2.45 );
setEffScaleKey( spep_3 + 30, ctDogown, 2.49, 2.49 );
setEffScaleKey( spep_3 + 32, ctDogown, 2.54, 2.54 );
setEffScaleKey( spep_3 + 34, ctDogown, 2.58, 2.58 );
setEffScaleKey( spep_3 + 36, ctDogown, 2.63, 2.63 );
setEffScaleKey( spep_3 + 38, ctDogown, 2.67, 2.67 );
setEffScaleKey( spep_3 + 40, ctDogown, 2.72, 2.72 );
setEffScaleKey( spep_3 + 42, ctDogown, 2.76, 2.76 );
setEffScaleKey( spep_3 + 44, ctDogown, 2.81, 2.81 );
setEffScaleKey( spep_3 + 46, ctDogown, 2.85, 2.85 );
setEffScaleKey( spep_3 + 48, ctDogown, 2.9, 2.9 );
setEffScaleKey( spep_3 + 50, ctDogown, 2.94, 2.94 );
setEffScaleKey( spep_3 + 52, ctDogown, 2.99, 2.99 );
setEffScaleKey( spep_3 + 54, ctDogown, 3.03, 3.03 );
setEffScaleKey( spep_3 + 56, ctDogown, 3.08, 3.08 );
setEffScaleKey( spep_3 + 58, ctDogown, 3.12, 3.12 );

setEffRotateKey( spep_3 + 22, ctDogown, 0 );

setEffAlphaKey( spep_3 + 22, ctDogown, 255 );
setEffAlphaKey( spep_3 + 50, ctDogown, 255 );
setEffAlphaKey( spep_3 + 52, ctDogown, 191 );
setEffAlphaKey( spep_3 + 54, ctDogown, 128 );
setEffAlphaKey( spep_3 + 56, ctDogown, 64 );
setEffAlphaKey( spep_3 + 58, ctDogown, 0 );

--流線
shuchu3 = entryEffectLife( spep_3 + 0,914, 34, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_3 + 0, shuchu3, 0, 0 , 0 );
setEffMoveKey( spep_3 + 34, shuchu3, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, shuchu3, 1, 1 );
setEffScaleKey( spep_3 + 34, shuchu3, 1, 1 );
setEffRotateKey( spep_3 + 0, shuchu3, 0 );
setEffRotateKey( spep_3 + 34, shuchu3, 0 );
setEffAlphaKey( spep_3 + 0, shuchu3, 255 );
setEffAlphaKey( spep_3 + 34, shuchu3, 255 );
--流線
shuchu3a = entryEffectLife( spep_3 + 35,  906, 47, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_3 + 35, shuchu3a, 0, 0 , 0 );
setEffMoveKey( spep_3 + 82, shuchu3a, 0, 0 , 0 );
setEffScaleKey( spep_3 + 35, shuchu3a, 1, 1 );
setEffScaleKey( spep_3 + 82, shuchu3a, 1, 1 );
setEffRotateKey( spep_3 + 35, shuchu3a, 0 );
setEffRotateKey( spep_3 + 82, shuchu3a, 0 );
setEffAlphaKey( spep_3 + 35, shuchu3a, 255 );
setEffAlphaKey( spep_3 + 82, shuchu3a, 255 );

playSe(spep_3,SE_01);
playSe(spep_3+20,1023)

--次の準備
spep_4=spep_3+82;

------------------------------------------------------
-- 龍が迫る
------------------------------------------------------
--白フェード
entryFade(spep_4,0,0,8,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_4+100,14,6,0,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

entryFadeBg(spep_4,0,118,0,0,0,0,255);

--エフェクトの再生
dragon=entryEffectLife(spep_4,SP_07,118,0x100,-1,0,0,0);
setEffMoveKey(spep_4,dragon,0,0,0);
setEffMoveKey(spep_4+118,dragon,0,0,0);
setEffScaleKey(spep_4,dragon,1.0,1.0);
setEffScaleKey(spep_4+118,dragon,1.0,1.0);
setEffAlphaKey(spep_4,dragon,255);
setEffAlphaKey(spep_4+118,dragon,255);
setEffRotateKey(spep_4,dragon,0);
setEffRotateKey(spep_4+118,dragon,0);

setEffShake(spep_4,dragon,118,10);

ctZudodo = entryEffectLife( spep_4 + 0,  10014, 64, 0x100, -1, 0, 199.9, 415.5 );
setEffMoveKey( spep_4 + 0, ctZudodo, 199.9, 415.5 , 0 );
setEffMoveKey( spep_4 + 2, ctZudodo, 187.9, 407.5 , 0 );
setEffMoveKey( spep_4 + 4, ctZudodo, 199.9, 415.5 , 0 );
setEffMoveKey( spep_4 + 6, ctZudodo, 187.9, 407.5 , 0 );
setEffMoveKey( spep_4 + 8, ctZudodo, 199.9, 415.5 , 0 );
setEffMoveKey( spep_4 + 10, ctZudodo, 187.9, 407.5 , 0 );
setEffMoveKey( spep_4 + 12, ctZudodo, 199.9, 415.5 , 0 );
setEffMoveKey( spep_4 + 14, ctZudodo, 187.9, 407.5 , 0 );
setEffMoveKey( spep_4 + 16, ctZudodo, 199.9, 415.5 , 0 );
setEffMoveKey( spep_4 + 18, ctZudodo, 187.9, 407.5 , 0 );
setEffMoveKey( spep_4 + 20, ctZudodo, 199.9, 415.5 , 0 );
setEffMoveKey( spep_4 + 22, ctZudodo, 187.9, 407.5 , 0 );
setEffMoveKey( spep_4 + 24, ctZudodo, 199.9, 415.5 , 0 );
setEffMoveKey( spep_4 + 26, ctZudodo, 187.9, 407.5 , 0 );
setEffMoveKey( spep_4 + 28, ctZudodo, 199.9, 415.5 , 0 );
setEffMoveKey( spep_4 + 30, ctZudodo, 187.9, 407.5 , 0 );
setEffMoveKey( spep_4 + 32, ctZudodo, 199.9, 415.5 , 0 );
setEffMoveKey( spep_4 + 34, ctZudodo, 187.9, 407.5 , 0 );
setEffMoveKey( spep_4 + 36, ctZudodo, 199.9, 415.5 , 0 );
setEffMoveKey( spep_4 + 38, ctZudodo, 187.9, 407.5 , 0 );
setEffMoveKey( spep_4 + 40, ctZudodo, 199.9, 415.5 , 0 );
setEffMoveKey( spep_4 + 42, ctZudodo, 187.9, 407.5 , 0 );
setEffMoveKey( spep_4 + 44, ctZudodo, 199.9, 415.5 , 0 );
setEffMoveKey( spep_4 + 46, ctZudodo, 187.9, 407.5 , 0 );
setEffMoveKey( spep_4 + 48, ctZudodo, 199.9, 415.5 , 0 );
setEffMoveKey( spep_4 + 50, ctZudodo, 187.9, 407.5 , 0 );
setEffMoveKey( spep_4 + 52, ctZudodo, 199.9, 415.5 , 0 );
setEffMoveKey( spep_4 + 54, ctZudodo, 187.9, 407.5 , 0 );
setEffMoveKey( spep_4 + 56, ctZudodo, 199.9, 415.5 , 0 );
setEffMoveKey( spep_4 + 58, ctZudodo, 187.9, 407.5 , 0 );
setEffMoveKey( spep_4 + 60, ctZudodo, 199.9, 415.5 , 0 );
setEffMoveKey( spep_4 + 62, ctZudodo, 187.9, 407.5 , 0 );
setEffMoveKey( spep_4 + 64, ctZudodo, 199.9, 415.5 , 0 );



ctZuo = entryEffectLife( spep_4 + 66,  10012, 52, 0x100, -1, 0, 73.6, -92 );
setEffMoveKey( spep_4 + 66, ctZuo, 73.6, -92 , 0 );
setEffMoveKey( spep_4 + 68, ctZuo, 97.6, -108.4 , 0 );
setEffMoveKey( spep_4 + 70, ctZuo, 99.3, -102.4 , 0 );
setEffMoveKey( spep_4 + 72, ctZuo, 127.7, -123.3 , 0 );
setEffMoveKey( spep_4 + 74, ctZuo, 125.1, -113 , 0 );
setEffMoveKey( spep_4 + 76, ctZuo, 158, -138.3 , 0 );
setEffMoveKey( spep_4 + 78, ctZuo, 139.8, -119.2 , 0 );
setEffMoveKey( spep_4 + 80, ctZuo, 162.2, -140.5 , 0 );
setEffMoveKey( spep_4 + 82, ctZuo, 143.7, -121 , 0 );
setEffMoveKey( spep_4 + 84, ctZuo, 166.4, -142.8 , 0 );
setEffMoveKey( spep_4 + 86, ctZuo, 147.3, -122.7 , 0 );
setEffMoveKey( spep_4 + 88, ctZuo, 170.7, -145 , 0 );
setEffMoveKey( spep_4 + 90, ctZuo, 151.2, -124.5 , 0 );
setEffMoveKey( spep_4 + 92, ctZuo, 174.8, -147.2 , 0 );
setEffMoveKey( spep_4 + 94, ctZuo, 154.9, -126.3 , 0 );
setEffMoveKey( spep_4 + 96, ctZuo, 179.1, -149.4 , 0 );
setEffMoveKey( spep_4 + 98, ctZuo, 158.6, -128 , 0 );
setEffMoveKey( spep_4 + 100, ctZuo, 183.3, -151.7 , 0 );
setEffMoveKey( spep_4 + 102, ctZuo, 160.5, -128.9 , 0 );
setEffMoveKey( spep_4 + 104, ctZuo, 183.3, -151.7 , 0 );
setEffMoveKey( spep_4 + 106, ctZuo, 160.5, -128.9 , 0 );
setEffMoveKey( spep_4 + 108, ctZuo, 183.3, -151.7 , 0 );
setEffMoveKey( spep_4 + 110, ctZuo, 160.5, -128.9 , 0 );
setEffMoveKey( spep_4 + 112, ctZuo, 183.3, -151.7 , 0 );
setEffMoveKey( spep_4 + 114, ctZuo, 160.5, -128.9 , 0 );
setEffMoveKey( spep_4 + 116, ctZuo, 183.3, -151.7 , 0 );

-- ctZudodo
setEffScaleKey( spep_4 + 0, ctZudodo, 1.5, 1.5 );

-- ctZuo
setEffScaleKey( spep_4 + 66, ctZuo, 2.44, 2.44 );
setEffScaleKey( spep_4 + 68, ctZuo, 2.56, 2.56 );
setEffScaleKey( spep_4 + 70, ctZuo, 2.67, 2.67 );
setEffScaleKey( spep_4 + 72, ctZuo, 2.78, 2.78 );
setEffScaleKey( spep_4 + 74, ctZuo, 2.89, 2.89 );
setEffScaleKey( spep_4 + 76, ctZuo, 3, 3 );
setEffScaleKey( spep_4 + 78, ctZuo, 3.01, 3.01 );
setEffScaleKey( spep_4 + 80, ctZuo, 3.02, 3.02 );
setEffScaleKey( spep_4 + 82, ctZuo, 3.03, 3.03 );
setEffScaleKey( spep_4 + 84, ctZuo, 3.05, 3.05 );
setEffScaleKey( spep_4 + 86, ctZuo, 3.06, 3.06 );
setEffScaleKey( spep_4 + 88, ctZuo, 3.07, 3.07 );
setEffScaleKey( spep_4 + 90, ctZuo, 3.08, 3.08 );
setEffScaleKey( spep_4 + 92, ctZuo, 3.09, 3.09 );
setEffScaleKey( spep_4 + 94, ctZuo, 3.1, 3.1 );
setEffScaleKey( spep_4 + 96, ctZuo, 3.11, 3.11 );
setEffScaleKey( spep_4 + 98, ctZuo, 3.13, 3.13 );
setEffScaleKey( spep_4 + 100, ctZuo, 3.14, 3.14 );

-- ctZudodo
setEffRotateKey( spep_4 + 0, ctZudodo, 70 );

setEffAlphaKey( spep_4 + 0, ctZudodo, 255 );
setEffAlphaKey( spep_4 + 64, ctZudodo, 255 );

-- ctZuo
setEffAlphaKey( spep_4 + 66, ctZuo, 255 );
setEffAlphaKey( spep_4 + 100, ctZuo, 255 );
setEffAlphaKey( spep_4 + 102, ctZuo, 227 );
setEffAlphaKey( spep_4 + 104, ctZuo, 198 );
setEffAlphaKey( spep_4 + 106, ctZuo, 170 );
setEffAlphaKey( spep_4 + 108, ctZuo, 142 );
setEffAlphaKey( spep_4 + 110, ctZuo, 113 );
setEffAlphaKey( spep_4 + 112, ctZuo, 85 );
setEffAlphaKey( spep_4 + 114, ctZuo, 57 );
setEffAlphaKey( spep_4 + 116, ctZuo, 28 );
setEffAlphaKey( spep_4 + 118, ctZuo, 0 );

setEffRotateKey( spep_4 + 66, ctZuo, 30 );

shuchu4 = entryEffectLife( spep_4 + 0,  906, 118, 0x100, -1, 0, 0, 153.9 );
setEffMoveKey( spep_4 + 0, shuchu4, 0, 153.9 , 0 );
setEffMoveKey( spep_4 + 65, shuchu4, 0, 153.9 , 0 );
setEffMoveKey( spep_4 + 66, shuchu4, 0, 395.8 , 0 );

-- ef_shuchu
setEffScaleKey( spep_4 + 0, shuchu4, 1.3, 1.3 );
setEffScaleKey( spep_4 + 64, shuchu4, 1.3, 1.3 );
setEffScaleKey( spep_4 + 66, shuchu4, 1.17, 1.75 );

ryusen4 = entryEffectLife( spep_4 + 0,  921, 118, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_4 + 0, ryusen4, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, ryusen4, 1.42, 1.42 );
setEffRotateKey( spep_4 + 0, ryusen4, -90 );
setEffAlphaKey( spep_4 + 0, ryusen4, 255 );

--[[
playSe(spep_4,1011);
playSe(spep_4+20,1011);
playSe(spep_4+40,1011);
playSe(spep_4+60,1011);
playSe(spep_4+80,1011);
playSe(spep_4+100,1011);
]]--
--[[
seid = playSe(spep_4,1044);
stopSe(spep_4+110,seid,0);
]]--
seId2 = playSe( spep_4+2, 1044);
stopSe( spep_4+106, seId2, 10);

--次の準備
spep_6=spep_4+118;

------------------------------------------------------
-- アッパーカット
------------------------------------------------------
entryFadeBg(spep_6,0,98,0,0,0,0,255);

--エフェクトの再生
upper=entryEffectLife(spep_6,SP_08,98,0x100,-1,0,0,0);
setEffMoveKey(spep_6,upper,0,0,0);
setEffMoveKey(spep_6+98,upper,0,0,0);
setEffScaleKey(spep_6,upper,1.0,1.0);
setEffScaleKey(spep_6+98,upper,1.0,1.0);
setEffAlphaKey(spep_6,upper,255);
setEffAlphaKey(spep_6+98,upper,255);
setEffRotateKey(spep_6,upper,0);
setEffRotateKey(spep_6+98,upper,0);

ryusen6 = entryEffectLife( spep_6 + 0,  914, 98, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_6 + 0, ryusen6, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, ryusen6, 3.51, 1.0 );
setEffRotateKey( spep_6 + 0, ryusen6, -90 );
setEffAlphaKey( spep_6 + 0, ryusen6, 255 );

playSe(spep_6, 1024);

--次の準備
spep_7=spep_6+98;

------------------------------------------------------
-- 貫通
------------------------------------------------------
entryFade(spep_7-1,0,0,9,fcolor_r,fcolor_g,fcolor_b,255);
entryFade(spep_7+18,0,2,6,fcolor_r,fcolor_g,fcolor_b,255);
entryFade(spep_7+42,0,2,6,fcolor_r,fcolor_g,fcolor_b,255);
entryFade(spep_7+80,16,2,0,fcolor_r,fcolor_g,fcolor_b,255);
entryFadeBg(spep_7,0,98,0,0,0,0,255);

setDisp( spep_7 + 0, 1, 1 );
setDisp( spep_7 + 98, 1, 0 );
changeAnime( spep_7 + 0, 1, 108 );

setMoveKey( spep_7 + 0, 1, 349.1, 465.5 , 0 );
setMoveKey( spep_7 + 2, 1, 322.8, 436 , 0 );
setMoveKey( spep_7 + 4, 1, 311.9, 416.6 , 0 );
setMoveKey( spep_7 + 6, 1, 282.2, 404.1 , 0 );
setMoveKey( spep_7 + 8, 1, 271.3, 381.3 , 0 );
setMoveKey( spep_7 + 10, 1, 245.1, 351.7 , 0 );
setMoveKey( spep_7 + 12, 1, 234.1, 332.4 , 0 );
setMoveKey( spep_7 + 14, 1, 204.5, 319.9 , 0 );
setMoveKey( spep_7 + 16, 1, 193.5, 297.1 , 0 );
setMoveKey( spep_7 + 18, 1, 167.3, 267.5 , 0 );
setMoveKey( spep_7 + 20, 1, 156.4, 248.1 , 0 );
setMoveKey( spep_7 + 22, 1, 146.2, 256.6 , 0 );
setMoveKey( spep_7 + 24, 1, 154.7, 254.9 , 0 );
setMoveKey( spep_7 + 26, 1, 147.9, 246.4 , 0 );
setMoveKey( spep_7 + 28, 1, 156.4, 248.1 , 0 );
setMoveKey( spep_7 + 30, 1, 146.2, 256.6 , 0 );
setMoveKey( spep_7 + 32, 1, 154.7, 254.9 , 0 );
setMoveKey( spep_7 + 34, 1, 147.9, 246.4 , 0 );
setMoveKey( spep_7 + 36, 1, 156.4, 248.1 , 0 );
setMoveKey( spep_7 + 38, 1, 146.2, 256.6 , 0 );
setMoveKey( spep_7 + 40, 1, 154.7, 254.9 , 0 );
setMoveKey( spep_7 + 42, 1, 147.9, 246.4 , 0 );
setMoveKey( spep_7 + 44, 1, 156.4, 248.1 , 0 );
setMoveKey( spep_7 + 46, 1, 146.2, 256.6 , 0 );
setMoveKey( spep_7 + 48, 1, 154.7, 254.9 , 0 );
setMoveKey( spep_7 + 50, 1, 147.9, 246.4 , 0 );
setMoveKey( spep_7 + 52, 1, 156.4, 248.1 , 0 );
setMoveKey( spep_7 + 54, 1, 146.2, 256.6 , 0 );
setMoveKey( spep_7 + 56, 1, 154.7, 254.9 , 0 );
setMoveKey( spep_7 + 58, 1, 147.9, 246.4 , 0 );
setMoveKey( spep_7 + 60, 1, 156.4, 248.1 , 0 );
setMoveKey( spep_7 + 62, 1, 146.2, 256.6 , 0 );
setMoveKey( spep_7 + 64, 1, 154.7, 254.9 , 0 );
setMoveKey( spep_7 + 66, 1, 147.9, 246.4 , 0 );
setMoveKey( spep_7 + 68, 1, 156.4, 248.1 , 0 );
setMoveKey( spep_7 + 70, 1, 146.2, 256.6 , 0 );
setMoveKey( spep_7 + 72, 1, 154.7, 254.9 , 0 );
setMoveKey( spep_7 + 74, 1, 147.9, 246.4 , 0 );
setMoveKey( spep_7 + 76, 1, 156.4, 248.1 , 0 );
setMoveKey( spep_7 + 78, 1, 146.2, 256.6 , 0 );
setMoveKey( spep_7 + 80, 1, 154.7, 254.9 , 0 );
setMoveKey( spep_7 + 82, 1, 147.9, 246.4 , 0 );
setMoveKey( spep_7 + 84, 1, 156.4, 248.1 , 0 );
setMoveKey( spep_7 + 86, 1, 146.2, 256.6 , 0 );
setMoveKey( spep_7 + 88, 1, 154.7, 254.9 , 0 );
setMoveKey( spep_7 + 90, 1, 147.9, 246.4 , 0 );
setMoveKey( spep_7 + 92, 1, 156.4, 248.1 , 0 );
setMoveKey( spep_7 + 94, 1, 146.2, 256.6 , 0 );
setMoveKey( spep_7 + 96, 1, 154.7, 254.9 , 0 );
setMoveKey( spep_7 + 98, 1, 147.9, 246.4 , 0 );

setScaleKey( spep_7 + 0, 1, 0.9, 0.9 );
setScaleKey( spep_7 + 2, 1, 0.97, 0.97 );
setScaleKey( spep_7 + 4, 1, 1.04, 1.04 );
setScaleKey( spep_7 + 6, 1, 1.11, 1.11 );
setScaleKey( spep_7 + 8, 1, 1.18, 1.18 );
setScaleKey( spep_7 + 10, 1, 1.25, 1.25 );
setScaleKey( spep_7 + 12, 1, 1.32, 1.32 );
setScaleKey( spep_7 + 14, 1, 1.39, 1.39 );
setScaleKey( spep_7 + 16, 1, 1.46, 1.46 );
setScaleKey( spep_7 + 18, 1, 1.53, 1.53 );
setScaleKey( spep_7 + 20, 1, 1.6, 1.6 );
setScaleKey( spep_7 + 98, 1, 1.6, 1.6);

setRotateKey( spep_7 + 0, 1, -34.1 );
setRotateKey( spep_7 + 20, 1, -34.1 );
setRotateKey( spep_7 + 22, 1, -31.3 );
setRotateKey( spep_7 + 24, 1, -34.1 );
setRotateKey( spep_7 + 26, 1, -31.3 );
setRotateKey( spep_7 + 28, 1, -34.1 );
setRotateKey( spep_7 + 30, 1, -31.3 );
setRotateKey( spep_7 + 32, 1, -34.1 );
setRotateKey( spep_7 + 34, 1, -31.3 );
setRotateKey( spep_7 + 36, 1, -34.1 );
setRotateKey( spep_7 + 38, 1, -31.3 );
setRotateKey( spep_7 + 40, 1, -34.1 );
setRotateKey( spep_7 + 42, 1, -31.3 );
setRotateKey( spep_7 + 44, 1, -34.1 );
setRotateKey( spep_7 + 46, 1, -31.3 );
setRotateKey( spep_7 + 48, 1, -34.1 );
setRotateKey( spep_7 + 50, 1, -31.3 );
setRotateKey( spep_7 + 52, 1, -34.1 );
setRotateKey( spep_7 + 54, 1, -31.3 );
setRotateKey( spep_7 + 56, 1, -34.1 );
setRotateKey( spep_7 + 58, 1, -31.3 );
setRotateKey( spep_7 + 60, 1, -34.1 );
setRotateKey( spep_7 + 62, 1, -31.3 );
setRotateKey( spep_7 + 64, 1, -34.1 );
setRotateKey( spep_7 + 66, 1, -31.3 );
setRotateKey( spep_7 + 68, 1, -34.1 );
setRotateKey( spep_7 + 70, 1, -31.3 );
setRotateKey( spep_7 + 72, 1, -34.1 );
setRotateKey( spep_7 + 74, 1, -31.3 );
setRotateKey( spep_7 + 76, 1, -34.1 );
setRotateKey( spep_7 + 78, 1, -31.3 );
setRotateKey( spep_7 + 80, 1, -34.1 );
setRotateKey( spep_7 + 82, 1, -31.3 );
setRotateKey( spep_7 + 84, 1, -34.1 );
setRotateKey( spep_7 + 86, 1, -31.3 );
setRotateKey( spep_7 + 88, 1, -34.1 );
setRotateKey( spep_7 + 90, 1, -31.3 );
setRotateKey( spep_7 + 92, 1, -34.1 );
setRotateKey( spep_7 + 94, 1, -31.3 );
setRotateKey( spep_7 + 96, 1, -34.1 );
setRotateKey( spep_7 + 98, 1, -31.3 );

--エフェクトの再生（貫通前）
front_through=entryEffectLife(spep_7,SP_09,98,0x100,-1,0,0,0);
setEffMoveKey(spep_7,front_through,0,0,0);
setEffMoveKey(spep_7+98,front_through,0,0,0);
setEffScaleKey(spep_7,front_through,1.0,1.0);
setEffScaleKey(spep_7+98,front_through,1.0,1.0);
setEffAlphaKey(spep_7,front_through,255);
setEffAlphaKey(spep_7+98,front_through,255);
setEffRotateKey(spep_7,front_through,0);
setEffRotateKey(spep_7+98,front_through,0);

shuchu7 = entryEffectLife( spep_7 + 22,  906, 76, 0x100, -1, 0, 44.9, 234.9 );
setEffMoveKey( spep_7 + 22, shuchu7, 44.9, 234.9 , 0 );
setEffScaleKey( spep_7 + 22, shuchu7, 1.51, 1.51 );
setEffRotateKey( spep_7 + 22, shuchu7, 0 );
setEffAlphaKey( spep_7 + 22, shuchu7, 255 );

ryusen7 = entryEffectLife( spep_7 + 0,  923, 98, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_7 + 0, ryusen7, 0, 0 , 0 );

setEffScaleKey( spep_7 + 0, ryusen7, 1.45, 1.10 );
setEffRotateKey( spep_7 + 0, ryusen7, 40.2 );
setEffAlphaKey( spep_7 + 0, ryusen7, 255 );

--エフェクトの再生（貫通後）
back_through=entryEffectLife(spep_7,SP_10,98,0x80,-1,0,0,0);
setEffMoveKey(spep_7,back_through,0,0,0);
setEffMoveKey(spep_7+98,back_through,0,0,0);
setEffScaleKey(spep_7,back_through,1.0,1.0);
setEffScaleKey(spep_7+98,back_through,1.0,1.0);
setEffAlphaKey(spep_7,back_through,255);
setEffAlphaKey(spep_7+98,back_through,255);
setEffRotateKey(spep_7,back_through,0);
setEffRotateKey(spep_7+98,back_through,0);


playSe(spep_7,SE_07);
playSe(spep_7+22,1011);
--次の準備
spep_8=spep_7+98;

------------------------------------------------------
-- ギャン
------------------------------------------------------
--エフェクトの再生
gyan=entryEffectLife(spep_8,SP_11,60,0x100,-1,0,0,0);
setEffMoveKey(spep_8,gyan,0,0,0);
setEffMoveKey(spep_8+60,gyan,0,0,0);
setEffScaleKey(spep_8,gyan,1.0,1.0);
setEffScaleKey(spep_8+60,gyan,1.0,1.0);
setEffAlphaKey(spep_8,gyan,255);
setEffAlphaKey(spep_8+60,gyan,255);
setEffRotateKey(spep_8,gyan,0);
setEffRotateKey(spep_8+60,gyan,0);

-- 書き文字エントリー --
ctgyan_08 = entryEffectLife( spep_8, 10006, 59, 0x100, -1, 0, 0, 350);    -- ギャン
setEffScaleKey( spep_8, ctgyan_08, 1.7, 1.7);
setEffAlphaKey( spep_8, ctgyan_08, 255);
setEffScaleKey( spep_8+10, ctgyan_08, 3.0, 3.0);
setEffScaleKey( spep_8+59, ctgyan_08, 4.5, 4.5);
setEffAlphaKey( spep_8+59, ctgyan_08, 255);

--SE
playSe(  spep_8, SE_09);

--背景・ホワイトフェイド
entryFadeBg(spep_8,0,60,0,0,0,0,255);
entryFade( spep_8+21, 36,  5, 22, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_9=spep_8+62;
------------------------------------------------------
-- 爆発
------------------------------------------------------
entryFade( spep_9+38,6,2,18, fcolor_r, fcolor_g, fcolor_b,200);     -- white fade
entryFade( spep_9+78,6,2,6, fcolor_r, fcolor_g, fcolor_b,200);     -- white fade
entryFade( spep_9+140,36,2,0, fcolor_r, fcolor_g, fcolor_b,255);     -- white fade

--エフェクトの再生（貫通後）
explosion=entryEffect(spep_9,1676,0x100,-1,0,0,0);
setEffMoveKey(spep_9,explosion,0,0,0);
setEffMoveKey(spep_9+178,explosion,0,0,0);
setEffScaleKey(spep_9,explosion,1.2,1.2);
setEffScaleKey(spep_9+178,explosion,1.2,1.2);
setEffAlphaKey(spep_9,explosion,255);
setEffAlphaKey(spep_9+178,explosion,255);
setEffRotateKey(spep_9,explosion,0);
setEffRotateKey(spep_9+178,explosion,0);

shuchu9 = entryEffectLife( spep_9 + 44,  906, 134, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_9 + 44, shuchu9, 0, 0 , 0 ); 
setEffScaleKey( spep_9 + 44, shuchu9, -1.37, 1.84 );
setEffAlphaKey( spep_9 + 44, shuchu9, 255 );

playSe(  spep_9+44, SE_10);

-- ダメージ表示
dealDamage(spep_9+94);
entryFade( spep_9+178, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_9+188);
else

------------------------------------------------------
-- かめはめ波
------------------------------------------------------
spep_0=0;

setDisp( 0, 0, 1);
setDisp( 20, 0, 0);

changeAnime(0,0,1);

--setMoveKey(   0,   0,    0, 10,   0);
setMoveKey(   spep_0+20,   0,    0, 10,   0);

setScaleKey(   0,   0, 1.6, 1.6);
setScaleKey(  spep_0+20,   0, 1.6, 1.6);

setRotateKey(   1,   0, 0);
setRotateKey(   spep_0+20,   0, 0);

--エフェクトの再生
kamehame=entryEffectLife(spep_0+20,SP_01x,86,0x100,-1,0,0,0);
setEffMoveKey(spep_0+20,kamehame,0,0,0);
setEffMoveKey(spep_0+106,kamehame,0,0,0);
setEffScaleKey(spep_0+20,kamehame,1.0,1.0);
setEffScaleKey(spep_0+106,kamehame,1.0,1.0);
setEffAlphaKey(spep_0+20,kamehame,255);
setEffAlphaKey(spep_0+106,kamehame,255);
setEffRotateKey(spep_0+20,kamehame,0);
setEffRotateKey(spep_0+106,kamehame,0);

setEffShake(spep_0+20,kamehame,86,10);

--集中線
shuchu = entryEffectLife( spep_0 + 20,  906, 27, 0x100, -1, 0, 0, -54 );
setEffMoveKey( spep_0 + 20, shuchu, 0, -54 , 0 );
setEffMoveKey( spep_0 + 47, shuchu, 0, -54 , 0 );

setEffScaleKey( spep_0 + 20, shuchu, 1.24, 1.24 );
setEffScaleKey( spep_0 + 47, shuchu, 1.24, 1.24 );

setEffRotateKey( spep_0 + 20, shuchu, 180 );
setEffRotateKey( spep_0 + 47, shuchu, 180 );


--集中線(斜め)
shuchu0 = entryEffectLife( spep_0 + 48,  921, 58, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 48, shuchu0, 0, 0 , 0 );
setEffMoveKey( spep_0 + 106, shuchu0, 0, 0 , 0 );

setEffScaleKey( spep_0 + 48, shuchu0, 1, 1 );
setEffScaleKey( spep_0 + 106, shuchu0, 1, 1 );

setEffRotateKey( spep_0 + 48, shuchu0, 180 );
setEffRotateKey( spep_0 + 106, shuchu0, 180 );

--文字エントリー
ctba = entryEffectLife( spep_0 + 20,  10022, 26, 0x100, -1, 0, 57, 96.9 );--バッ
setEffMoveKey( spep_0 + 20, ctba, 57, 96.9 , 0 );
setEffMoveKey( spep_0 + 22, ctba, 72.2, 117 , 0 );
setEffMoveKey( spep_0 + 24, ctba, 83, 142.2 , 0 );
setEffMoveKey( spep_0 + 26, ctba, 99.8, 160.5 , 0 );
setEffMoveKey( spep_0 + 28, ctba, 96.9, 166 , 0 );
setEffMoveKey( spep_0 + 30, ctba, 101.7, 162.8 , 0 );
setEffMoveKey( spep_0 + 32, ctba, 98.6, 168.5 , 0 );
setEffMoveKey( spep_0 + 34, ctba, 103.5, 165.1 , 0 );
setEffMoveKey( spep_0 + 36, ctba, 100.4, 170.9 , 0 );
setEffMoveKey( spep_0 + 38, ctba, 105.3, 167.5 , 0 );
setEffMoveKey( spep_0 + 40, ctba, 102.2, 173.3 , 0 );
setEffMoveKey( spep_0 + 42, ctba, 107.3, 169.8 , 0 );
setEffMoveKey( spep_0 + 44, ctba, 104, 175.7 , 0 );
setEffMoveKey( spep_0 + 46, ctba, 109.1, 172.1 , 0 );

setEffScaleKey( spep_0+20 + 0, ctba, 0.35, 0.35 );
setEffScaleKey( spep_0+20 + 2, ctba, 0.57, 0.57 );
setEffScaleKey( spep_0+20 + 4, ctba, 0.78, 0.78 );
setEffScaleKey( spep_0+20 + 6, ctba, 1, 1 );
setEffScaleKey( spep_0+20 + 8, ctba, 1.01, 1.01 );
setEffScaleKey( spep_0+20 + 10, ctba, 1.02, 1.02 );
setEffScaleKey( spep_0+20 + 12, ctba, 1.03, 1.03 );
setEffScaleKey( spep_0+20 + 14, ctba, 1.03, 1.03 );
setEffScaleKey( spep_0+20 + 16, ctba, 1.04, 1.04 );
setEffScaleKey( spep_0+20 + 18, ctba, 1.05, 1.05 );
setEffScaleKey( spep_0+20 + 20, ctba, 1.06, 1.06 );
setEffScaleKey( spep_0+20 + 22, ctba, 1.07, 1.07 );
setEffScaleKey( spep_0+20 + 24, ctba, 1.08, 1.08 );
setEffScaleKey( spep_0+20 + 26, ctba, 1.09, 1.09 );

setEffRotateKey( spep_0+20 + 0, ctba, 17.8 );
setEffRotateKey( spep_0+20 + 2, ctba, 17.9 );

setEffAlphaKey( spep_0+20 + 0, ctba, 255 );

--かけ文字
ctzuo = entryEffectLife( spep_0 + 50,  10012, 38, 0x100, -1, 0, 76.4, 169.9 );--ズオ
setEffMoveKey( spep_0 + 50, ctzuo, 76.4, 169.9 , 0 );
setEffMoveKey( spep_0 + 52, ctzuo, 101.8, 251.6 , 0 );
setEffMoveKey( spep_0 + 54, ctzuo, 119.2, 339.6 , 0 );
setEffMoveKey( spep_0 + 56, ctzuo, 126.3, 334.2 , 0 );
setEffMoveKey( spep_0 + 58, ctzuo, 119.2, 339.6 , 0 );
setEffMoveKey( spep_0 + 60, ctzuo, 126.3, 334.2 , 0 );
setEffMoveKey( spep_0 + 62, ctzuo, 119.2, 339.6 , 0 );
setEffMoveKey( spep_0 + 64, ctzuo, 126.3, 334.2 , 0 );
setEffMoveKey( spep_0 + 66, ctzuo, 119.2, 339.6 , 0 );
setEffMoveKey( spep_0 + 68, ctzuo, 126.3, 334.2 , 0 );
setEffMoveKey( spep_0 + 70, ctzuo, 119.2, 339.6 , 0 );
setEffMoveKey( spep_0 + 72, ctzuo, 126.3, 334.2 , 0 );
setEffMoveKey( spep_0 + 74, ctzuo, 119.2, 339.6 , 0 );
setEffMoveKey( spep_0 + 76, ctzuo, 137.4, 356.5 , 0 );
setEffMoveKey( spep_0 + 78, ctzuo, 137.2, 387.4 , 0 );
setEffMoveKey( spep_0 + 80, ctzuo, 159.6, 401 , 0 );
setEffMoveKey( spep_0 + 82, ctzuo, 155.1, 435.3 , 0 );
setEffMoveKey( spep_0 + 88, ctzuo, 164.1, 459.3 , 0 );

setEffScaleKey( spep_0 + 50, ctzuo, 0.33, 0.33 );
setEffScaleKey( spep_0 + 52, ctzuo, 1.5, 1.5 );
setEffScaleKey( spep_0 + 54, ctzuo, 2.67, 2.67 );
setEffScaleKey( spep_0 + 74, ctzuo, 2.67, 2.67 );
setEffScaleKey( spep_0 + 76, ctzuo, 3.47, 3.47 );
setEffScaleKey( spep_0 + 78, ctzuo, 4.27, 4.27 );
setEffScaleKey( spep_0 + 80, ctzuo, 5.07, 5.07 );
setEffScaleKey( spep_0 + 82, ctzuo, 5.87, 5.87 );
setEffScaleKey( spep_0 + 84, ctzuo, 6.67, 6.67 );
setEffScaleKey( spep_0 + 88, ctzuo, 6.67, 6.67 );

setEffRotateKey( spep_0 + 50, ctzuo, 19.2 );
setEffRotateKey( spep_0 + 88, ctzuo, 19.2 );

setEffAlphaKey( spep_0 + 50, ctzuo, 255 );
setEffAlphaKey( spep_0 + 74, ctzuo, 255 );
setEffAlphaKey( spep_0 + 76, ctzuo, 204 );
setEffAlphaKey( spep_0 + 78, ctzuo, 153 );
setEffAlphaKey( spep_0 + 80, ctzuo, 102 );
setEffAlphaKey( spep_0 + 82, ctzuo, 51 );
setEffAlphaKey( spep_0 + 88, ctzuo, 0 );

playSe(spep_0+20,SE_01);--気だめ
playSe(spep_0+50,SE_06);--かめはめ波発射

--白フェード
entryFade(spep_0+88,18,2,6,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFadeBg(spep_0+20,6,82,0,10,10,10,200);     -- white fade

--次の準備
spep_1=spep_0+108;

------------------------------------------------------
-- 迫る光弾
------------------------------------------------------
--白フェード
entryFade(spep_1+38,18,4,0,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
--背景
entryFadeBg(spep_1,0,58,0,0,0,0,255);
--エフェクトの再生
hit=entryEffectLife(spep_1,SP_02x,58,0x100,-1,0,0,0);
setEffMoveKey(spep_1,hit,0,0,0);
setEffMoveKey(spep_1+58,hit,0,0,0);
setEffScaleKey(spep_1,hit,1.0,1.0);
setEffScaleKey(spep_1+58,hit,1.0,1.0);
setEffAlphaKey(spep_1,hit,255);
setEffAlphaKey(spep_1+58,hit,255);
setEffRotateKey(spep_1,hit,0);
setEffRotateKey(spep_1+58,hit,0);

setEffShake(spep_1,hit,58,10);

--敵の動き
setDisp( spep_1 + 0, 1, 1 );
changeAnime( spep_1 + 0, 1, 100 );

setMoveKey( spep_1 + 0, 1, 85, 2 , 0 );
setMoveKey( spep_1 + 2, 1, 89.6, -5 , 0 );
setMoveKey( spep_1 + 4, 1, 78.3, -4 , 0 );
setMoveKey( spep_1 + 6, 1, 82.9, 5 , 0 );
setMoveKey( spep_1 + 8, 1, 71.6, 6 , 0 );
setMoveKey( spep_1 + 10, 1, 76.3, -1 , 0 );

setScaleKey( spep_1 + 0, 1, 1.47, 1.47 );
setRotateKey( spep_1 + 0, 1, 0 );

setShakeChara( spep_1 + 10, 1,58,10);

ctZudodo = entryEffectLife( spep_1 + 0, 10014, 58, 0x100, -1, 0, 182.4, 347.3 );
setEffMoveKey( spep_1 + 0, ctZudodo, 182.4, 347.3 , 0 );
setEffMoveKey( spep_1 + 2, ctZudodo, 171.6, 337.8 , 0 );
setEffMoveKey( spep_1 + 4, ctZudodo, 182.4, 347.3 , 0 );
setEffMoveKey( spep_1 + 6, ctZudodo, 171.6, 337.8 , 0 );
setEffMoveKey( spep_1 + 8, ctZudodo, 182.4, 347.3 , 0 );
setEffMoveKey( spep_1 + 10, ctZudodo, 171.6, 337.8 , 0 );
setEffMoveKey( spep_1 + 12, ctZudodo, 182.4, 347.3 , 0 );

setEffAlphaKey( spep_1 + 0, ctZudodo, 255 )
setEffScaleKey( spep_1 + 0, ctZudodo, 1.8, 1.8 );
setEffRotateKey( spep_1 + 0, ctZudodo, 0);

--流線
shuchu1 = entryEffectLife( spep_1 + 0,  921, 58, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_1 + 0, shuchu1, 0, 0 , 0 );

seid=playSe(spep_1,SE_07);

------------------------------------------------------
-- 回避　タイミングはspep_1+12がいいな
------------------------------------------------------
if (_IS_DODGE_ == 1) then

SP_dodge = spep_1+12; 

stopSe( SP_dodge-12,seid,0);
playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setMoveKey( SP_dodge-1, 0,  -2500, -1000,0); --味方位置
setMoveKey( SP_dodge, 0,  -2500, -1000,0); --味方位置

setMoveKey( SP_dodge, 1, 64.9, 0 , 0 );
setMoveKey( SP_dodge+1, 1, 125, 18 , 0 );
setMoveKey( SP_dodge+4, 1, 124.5, 18 , 0 );
setMoveKey( SP_dodge+6, 1, 140, 10 , 0 );
setMoveKey( SP_dodge+8, 1, 139.5, 10 , 0 );

setMoveKey( SP_dodge+9, 1, 139.5, 10 , 0 );

changeAnime(  SP_dodge+9,    1,  100);
setMoveKey(  SP_dodge+9,    1,  0,  0,   0);
setScaleKey( SP_dodge+9,    1,  1.0, 1.0);
setRotateKey(   SP_dodge+9,   1, 0);

setMoveKey(  SP_dodge+10,    1,  0,  0,   0);
setScaleKey( SP_dodge+10,    1,  1.0, 1.0);
setRotateKey(   SP_dodge+10,   1, 0);

endPhase(SP_dodge+10);

do return end
else end

-------------------------------------
--回避されなかった場合
-------------------------------------
changeAnime( spep_1 + 14, 1, 108 );
setDisp( spep_1 + 58, 1, 0 );

setMoveKey( spep_1 + 13, 1, 64.9, 0 , 0 );
setMoveKey( spep_1 + 14, 1, 125, 18 , 0 );
setMoveKey( spep_1 + 16, 1, 124.5, 18 , 0 );
setMoveKey( spep_1 + 18, 1, 140, 10 , 0 );
setMoveKey( spep_1 + 20, 1, 139.5, 10 , 0 );
setMoveKey( spep_1 + 22, 1, 155, 18 , 0 );
setMoveKey( spep_1 + 24, 1, 154.5, 18 , 0 );
setMoveKey( spep_1 + 26, 1, 170, 10 , 0 );
setMoveKey( spep_1 + 28, 1, 169.5, 10 , 0 );
setMoveKey( spep_1 + 30, 1, 185, 18 , 0 );
setMoveKey( spep_1 + 32, 1, 184.5, 18 , 0 );
setMoveKey( spep_1 + 34, 1, 200, 10 , 0 );
setMoveKey( spep_1 + 36, 1, 199.5, 10 , 0 );
setMoveKey( spep_1 + 38, 1, 215, 18 , 0 );
setMoveKey( spep_1 + 40, 1, 217.8, 18 , 0 );
setMoveKey( spep_1 + 42, 1, 236.6, 10 , 0 );
setMoveKey( spep_1 + 44, 1, 239.4, 10 , 0 );
setMoveKey( spep_1 + 46, 1, 258.2, 18 , 0 );
setMoveKey( spep_1 + 48, 1, 261, 18 , 0 );
setMoveKey( spep_1 + 50, 1, 279.8, 10 , 0 );
setMoveKey( spep_1 + 52, 1, 282.6, 10 , 0 );
setMoveKey( spep_1 + 54, 1, 301.4, 18 , 0 );
setMoveKey( spep_1 + 56, 1, 304.2, 18 , 0 );
setMoveKey( spep_1 + 58, 1, 323, 10 , 0 );

setScaleKey( spep_1 + 14, 1, 1.47, 1.47 );
setScaleKey( spep_1 + 16, 1, 1.45, 1.45 );
setScaleKey( spep_1 + 18, 1, 1.43, 1.43 );
setScaleKey( spep_1 + 20, 1, 1.42, 1.42 );
setScaleKey( spep_1 + 22, 1, 1.4, 1.4 );
setScaleKey( spep_1 + 24, 1, 1.38, 1.38 );
setScaleKey( spep_1 + 26, 1, 1.36, 1.36 );
setScaleKey( spep_1 + 28, 1, 1.34, 1.34 );
setScaleKey( spep_1 + 30, 1, 1.33, 1.33 );
setScaleKey( spep_1 + 32, 1, 1.31, 1.31 );
setScaleKey( spep_1 + 34, 1, 1.29, 1.29 );
setScaleKey( spep_1 + 36, 1, 1.27, 1.27 );
setScaleKey( spep_1 + 38, 1, 1.25, 1.25 );
setScaleKey( spep_1 + 40, 1, 1.22, 1.22 );
setScaleKey( spep_1 + 42, 1, 1.18, 1.18 );
setScaleKey( spep_1 + 44, 1, 1.14, 1.14 );
setScaleKey( spep_1 + 46, 1, 1.11, 1.11 );
setScaleKey( spep_1 + 48, 1, 1.07, 1.07 );
setScaleKey( spep_1 + 50, 1, 1.04, 1.04 );
setScaleKey( spep_1 + 52, 1, 1, 1 );
setScaleKey( spep_1 + 54, 1, 0.96, 0.96 );
setScaleKey( spep_1 + 56, 1, 0.93, 0.93 );
setScaleKey( spep_1 + 58, 1, 0.89, 0.89 );

setRotateKey( spep_1 + 13, 1, 0 );
setRotateKey( spep_1 + 14, 1, -7.3 );
setRotateKey( spep_1 + 16, 1, -4.6 );
setRotateKey( spep_1 + 18, 1, -7.3 );
setRotateKey( spep_1 + 20, 1, -4.6 );
setRotateKey( spep_1 + 22, 1, -7.3 );
setRotateKey( spep_1 + 24, 1, -4.6 );
setRotateKey( spep_1 + 26, 1, -7.3 );
setRotateKey( spep_1 + 28, 1, -4.6 );
setRotateKey( spep_1 + 30, 1, -7.3 );
setRotateKey( spep_1 + 32, 1, -4.6 );
setRotateKey( spep_1 + 34, 1, -7.3 );
setRotateKey( spep_1 + 36, 1, -4.6 );
setRotateKey( spep_1 + 38, 1, -7.3 );
setRotateKey( spep_1 + 40, 1, -4.6 );
setRotateKey( spep_1 + 42, 1, -7.3 );
setRotateKey( spep_1 + 44, 1, -4.6 );
setRotateKey( spep_1 + 46, 1, -7.3 );
setRotateKey( spep_1 + 48, 1, -4.6 );
setRotateKey( spep_1 + 50, 1, -7.3 );
setRotateKey( spep_1 + 52, 1, -4.6 );
setRotateKey( spep_1 + 54, 1, -7.3 );
setRotateKey( spep_1 + 56, 1, -4.6 );
setRotateKey( spep_1 + 58, 1, -7.3 );

setEffMoveKey( spep_1 + 14, ctZudodo, 171.6, 337.8 , 0 );
setEffMoveKey( spep_1 + 16, ctZudodo, 182.4, 347.3 , 0 );
setEffMoveKey( spep_1 + 18, ctZudodo, 171.6, 337.8 , 0 );
setEffMoveKey( spep_1 + 20, ctZudodo, 182.4, 347.3 , 0 );
setEffMoveKey( spep_1 + 22, ctZudodo, 171.6, 337.8 , 0 );
setEffMoveKey( spep_1 + 24, ctZudodo, 182.4, 347.3 , 0 );
setEffMoveKey( spep_1 + 26, ctZudodo, 171.6, 337.8 , 0 );
setEffMoveKey( spep_1 + 28, ctZudodo, 182.4, 347.3 , 0 );
setEffMoveKey( spep_1 + 30, ctZudodo, 171.6, 337.8 , 0 );
setEffMoveKey( spep_1 + 32, ctZudodo, 182.4, 347.3 , 0 );
setEffMoveKey( spep_1 + 34, ctZudodo, 171.6, 337.8 , 0 );
setEffMoveKey( spep_1 + 36, ctZudodo, 182.4, 347.3 , 0 );
setEffMoveKey( spep_1 + 38, ctZudodo, 171.6, 337.8 , 0 );
setEffMoveKey( spep_1 + 40, ctZudodo, 182.4, 347.3 , 0 );
setEffMoveKey( spep_1 + 42, ctZudodo, 171.6, 337.8 , 0 );
setEffMoveKey( spep_1 + 44, ctZudodo, 182.4, 347.3 , 0 );
setEffMoveKey( spep_1 + 46, ctZudodo, 171.6, 337.8 , 0 );
setEffMoveKey( spep_1 + 48, ctZudodo, 182.4, 347.3 , 0 );
setEffMoveKey( spep_1 + 50, ctZudodo, 171.6, 337.8 , 0 );
setEffMoveKey( spep_1 + 52, ctZudodo, 182.4, 347.3 , 0 );
setEffMoveKey( spep_1 + 54, ctZudodo, 171.6, 337.8 , 0 );
setEffMoveKey( spep_1 + 56, ctZudodo, 182.4, 347.3 , 0 );
setEffMoveKey( spep_1 + 58, ctZudodo, 171.6, 337.8 , 0 );

setEffMoveKey( spep_1 + 58, shuchu1, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, shuchu1, 1, 1 );
setEffScaleKey( spep_1 + 58, shuchu1, 1, 1 );
setEffRotateKey( spep_1 + 0, shuchu1, 0 );
setEffRotateKey( spep_1 + 58, shuchu1, 0 );
setEffAlphaKey( spep_1 + 0, shuchu1, 255 );
setEffAlphaKey( spep_1 + 58, shuchu1, 255 );

--playSe(spep_1+14,SE_09);

--次の準備
spep_2=spep_1+59;--かめはめ波ヒット

------------------------------------------------------
-- 前方にダッシュ
------------------------------------------------------
entryFadeBg(spep_2,0,98,0,10,10,10,200);

--白フェード
entryFade(spep_2,0,0,8,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_2+80,16,4,0,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--エフェクトの再生
dash=entryEffectLife(spep_2,SP_03x,96,0x100,-1,0,0,0);
setEffMoveKey(spep_2,dash,0,0,0);
setEffMoveKey(spep_2+96,dash,0,0,0);
setEffScaleKey(spep_2,dash,-1.0,1.0);
setEffScaleKey(spep_2+96,dash,-1.0,1.0);
setEffAlphaKey(spep_2,dash,255);
setEffAlphaKey(spep_2+96,dash,255);
setEffRotateKey(spep_2,dash,0);
setEffRotateKey(spep_2+96,dash,0);

setEffShake(spep_2+96,dash,96,10);

-- カットイン
--speff = entryEffect(  spep_2,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  spep_2,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

--文字エントリー
ctgogo = entryEffectLife(spep_2+16, 190006, 68, 0x100, -1, 0, 100, 500);	--ゴゴゴ
setEffMoveKey(spep_2+16, ctgogo, 100, 500, 0);
setEffMoveKey(spep_2+84, ctgogo, 100, 500, 0);
setEffScaleKey(spep_2+16, ctgogo, -0.7, 0.7);
setEffScaleKey(spep_2+84, ctgogo, -0.7, 0.7);
setEffAlphaKey(spep_2+16, ctgogo, 255);
setEffAlphaKey(spep_2+84, ctgogo, 255);

--流線
shuchu2 = entryEffectLife( spep_2 + 0,  906, 96, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, shuchu2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 96, shuchu2, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, shuchu2, 1, 1 );
setEffScaleKey( spep_2 + 96, shuchu2, 1, 1 );
setEffRotateKey( spep_2 + 0, shuchu2, 0 );
setEffRotateKey( spep_2 + 96, shuchu2, 0 );
setEffAlphaKey( spep_2 + 0, shuchu2, 255 );
setEffAlphaKey( spep_2 + 96, shuchu2, 255 );

playSe( spep_2+10,1035); --前方ダッシュ

--次の準備
spep_5=spep_2+99;

--------------------------------------
--カードカットイン(90F)
--------------------------------------
playSe(spep_5,SE_05);
shuchusen9=entryEffectLife(spep_5,906,88,0x100,-1,0,0,0);   -- 集中線
setEffScaleKey(spep_5,shuchusen9,1.6,1.6);

speff2=entryEffect(spep_5,1507,0,-1,0,0,0);   -- カード
setEffReplaceTexture(speff2,1,1);
setEffReplaceTexture(speff2,2,0);-- カード差し替え
setEffReplaceTexture(speff2,5,4);-- 技名テクスチャ差し替え

-- ** エフェクト等 ** --
entryFade(spep_5,0,0,8,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_5+74,14,6,0,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--流線
shuchu5 = entryEffectLife( spep_5 + 0,  906, 90, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_5 + 0, shuchu5, 0, 0 , 0 );
setEffMoveKey( spep_5 + 90, shuchu5, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, shuchu5, 1.2, 1.2 );
setEffScaleKey( spep_5 + 90, shuchu5, 1.2, 1.2 );
setEffRotateKey( spep_5 + 0, shuchu5, 0 );
setEffRotateKey( spep_5 + 90, shuchu5, 0 );
setEffAlphaKey( spep_5 + 0, shuchu5, 255 );
setEffAlphaKey( spep_5 + 90, shuchu5, 255 );

playSe(spep_5,SE_05);

--次の準備
spep_3=spep_5+90;

------------------------------------------------------
-- パンチ
------------------------------------------------------
entryFadeBg(spep_3,0,84,0,10,10,10,200);

--白フェード
entryFade(spep_3,0,0,6,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_3+20,0,0,6,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_3+54,28,2,0,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

setDisp( spep_3 + 12,1,1);
setDisp( spep_3 + 82,1,0);
changeAnime( spep_3 + 12, 1,108);

setMoveKey( spep_3 + 12, 1, 654.1, 7.6 , 0 );
setMoveKey( spep_3 + 14, 1, 550.9, 11.6 , 0 );
setMoveKey( spep_3 + 16, 1, 439.7, 11.6 , 0 );
setMoveKey( spep_3 + 18, 1, 336.7, 7.6 , 0 );
setMoveKey( spep_3 + 20, 1, 233, 15.2 , 0 );
setMoveKey( spep_3 + 22, 1, 126.3, 15.6 , 0 );
setMoveKey( spep_3 + 24, 1, 119.3, 7.6 , 0 );
setMoveKey( spep_3 + 26, 1, 118.3, 15.6 , 0 );
setMoveKey( spep_3 + 28, 1, 126.3, 7.6 , 0 );
setMoveKey( spep_3 + 30, 1, 126.3, 15.6 , 0 );
setMoveKey( spep_3 + 32, 1, 119.3, 7.6 , 0 );
setMoveKey( spep_3 + 34, 1, 118.3, 15.6 , 0 );
setMoveKey( spep_3 + 36, 1, 126.3, 7.6 , 0 );
setMoveKey( spep_3 + 38, 1, 126.3, 15.6 , 0 );
setMoveKey( spep_3 + 40, 1, 119.3, 7.6 , 0 );
setMoveKey( spep_3 + 42, 1, 118.3, 15.6 , 0 );
setMoveKey( spep_3 + 44, 1, 126.3, 7.6 , 0 );
setMoveKey( spep_3 + 46, 1, 126.3, 15.6 , 0 );
setMoveKey( spep_3 + 48, 1, 119.3, 7.6 , 0 );
setMoveKey( spep_3 + 50, 1, 118.3, 15.6 , 0 );
setMoveKey( spep_3 + 52, 1, 126.3, 7.6 , 0 );
setMoveKey( spep_3 + 54, 1, 126.3, 15.6 , 0 );
setMoveKey( spep_3 + 56, 1, 119.3, 7.6 , 0 );
setMoveKey( spep_3 + 58, 1, 118.3, 15.6 , 0 );
setMoveKey( spep_3 + 60, 1, 126.3, 7.6 , 0 );
setMoveKey( spep_3 + 62, 1, 126.3, 15.6 , 0 );
setMoveKey( spep_3 + 64, 1, 119.3, 7.6 , 0 );
setMoveKey( spep_3 + 66, 1, 118.3, 15.6 , 0 );
setMoveKey( spep_3 + 68, 1, 126.3, 7.6 , 0 );
setMoveKey( spep_3 + 70, 1, 126.3, 15.6 , 0 );
setMoveKey( spep_3 + 72, 1, 119.3, 7.6 , 0 );
setMoveKey( spep_3 + 74, 1, 118.3, 15.6 , 0 );
setMoveKey( spep_3 + 76, 1, 126.3, 7.6 , 0 );
setMoveKey( spep_3 + 78, 1, 126.3, 15.6 , 0 );
setMoveKey( spep_3 + 80, 1, 119.3, 7.6 , 0 );
setMoveKey( spep_3 + 82, 1, 118.3, 15.6 , 0 );

setScaleKey( spep_3 + 12, 1, 1.2, 1.2 );
setRotateKey( spep_3 + 12, 1, 0 );
setShakeChara( spep_3 + 12,1,70,10);

--エフェクトの再生(パンチ前)
front_punch=entryEffectLife(spep_3,SP_04x,84,0x100,-1,0,0,0);
setEffMoveKey(spep_3,front_punch,0,0,0);
setEffMoveKey(spep_3+84,front_punch,0,0,0);
setEffScaleKey(spep_3,front_punch,1.0,1.0);
setEffScaleKey(spep_3+84,front_punch,1.0,1.0);
setEffAlphaKey(spep_3,front_punch,255);
setEffAlphaKey(spep_3+84,front_punch,255);
setEffRotateKey(spep_3,front_punch,0);
setEffRotateKey(spep_3+84,front_punch,0);

--エフェクトの再生(床)
floor=entryEffectLife(spep_3,SP_06x,84,0x80,-1,0,0,0);
setEffMoveKey(spep_3,floor,0,0,0);
setEffMoveKey(spep_3+84,floor,0,0,0);
setEffScaleKey(spep_3,floor,1.0,1.0);
setEffScaleKey(spep_3+84,floor,1.0,1.0);
setEffAlphaKey(spep_3,floor,255);
setEffAlphaKey(spep_3+84,floor,255);
setEffRotateKey(spep_3,floor,0);
setEffRotateKey(spep_3+84,floor,0);

setEffShake(spep_3,floor,84,10);

--エフェクトの再生(パンチ後)
back_punch=entryEffectLife(spep_3,SP_05x,84,0x80,-1,0,0,0);
setEffMoveKey(spep_3,back_punch,0,0,0);
setEffMoveKey(spep_3+84,back_punch,0,0,0);
setEffScaleKey(spep_3,back_punch,1.0,1.0);
setEffScaleKey(spep_3+84,back_punch,1.0,1.0);
setEffAlphaKey(spep_3,back_punch,255);
setEffAlphaKey(spep_3+84,back_punch,255);
setEffRotateKey(spep_3,back_punch,0);
setEffRotateKey(spep_3+84,back_punch,0);

ctDogown = entryEffectLife( spep_3 + 22,  10018, 60, 0x100, -1, 0, 54, 181.9 );
setEffMoveKey( spep_3 + 22, ctDogown, 54, 181.9 , 0 );
setEffMoveKey( spep_3 + 24, ctDogown, 66, 211.9 , 0 );
setEffMoveKey( spep_3 + 26, ctDogown, 78, 241.9 , 0 );
setEffMoveKey( spep_3 + 28, ctDogown, 90, 271.9 , 0 );
setEffMoveKey( spep_3 + 30, ctDogown, 91.2, 274.4 , 0 );
setEffMoveKey( spep_3 + 32, ctDogown, 92.4, 277 , 0 );
setEffMoveKey( spep_3 + 34, ctDogown, 93.6, 279.5 , 0 );
setEffMoveKey( spep_3 + 36, ctDogown, 94.8, 282 , 0 );
setEffMoveKey( spep_3 + 38, ctDogown, 96, 284.6 , 0 );
setEffMoveKey( spep_3 + 40, ctDogown, 97.2, 287.1 , 0 );
setEffMoveKey( spep_3 + 42, ctDogown, 98.4, 289.6 , 0 );
setEffMoveKey( spep_3 + 44, ctDogown, 99.6, 292.2 , 0 );
setEffMoveKey( spep_3 + 46, ctDogown, 100.8, 294.7 , 0 );
setEffMoveKey( spep_3 + 48, ctDogown, 102, 297.2 , 0 );
setEffMoveKey( spep_3 + 50, ctDogown, 103.2, 299.8 , 0 );
setEffMoveKey( spep_3 + 52, ctDogown, 104.4, 302.3 , 0 );
setEffMoveKey( spep_3 + 54, ctDogown, 105.6, 304.8 , 0 );
setEffMoveKey( spep_3 + 56, ctDogown, 106.8, 307.4 , 0 );
setEffMoveKey( spep_3 + 58, ctDogown, 108, 309.9 , 0 );

setEffScaleKey( spep_3 + 22, ctDogown, 1, 1 );
setEffScaleKey( spep_3 + 24, ctDogown, 1.48, 1.48 );
setEffScaleKey( spep_3 + 26, ctDogown, 1.97, 1.97 );
setEffScaleKey( spep_3 + 28, ctDogown, 2.45, 2.45 );
setEffScaleKey( spep_3 + 30, ctDogown, 2.49, 2.49 );
setEffScaleKey( spep_3 + 32, ctDogown, 2.54, 2.54 );
setEffScaleKey( spep_3 + 34, ctDogown, 2.58, 2.58 );
setEffScaleKey( spep_3 + 36, ctDogown, 2.63, 2.63 );
setEffScaleKey( spep_3 + 38, ctDogown, 2.67, 2.67 );
setEffScaleKey( spep_3 + 40, ctDogown, 2.72, 2.72 );
setEffScaleKey( spep_3 + 42, ctDogown, 2.76, 2.76 );
setEffScaleKey( spep_3 + 44, ctDogown, 2.81, 2.81 );
setEffScaleKey( spep_3 + 46, ctDogown, 2.85, 2.85 );
setEffScaleKey( spep_3 + 48, ctDogown, 2.9, 2.9 );
setEffScaleKey( spep_3 + 50, ctDogown, 2.94, 2.94 );
setEffScaleKey( spep_3 + 52, ctDogown, 2.99, 2.99 );
setEffScaleKey( spep_3 + 54, ctDogown, 3.03, 3.03 );
setEffScaleKey( spep_3 + 56, ctDogown, 3.08, 3.08 );
setEffScaleKey( spep_3 + 58, ctDogown, 3.12, 3.12 );

setEffRotateKey( spep_3 + 22, ctDogown, 0 );

setEffAlphaKey( spep_3 + 22, ctDogown, 255 );
setEffAlphaKey( spep_3 + 50, ctDogown, 255 );
setEffAlphaKey( spep_3 + 52, ctDogown, 191 );
setEffAlphaKey( spep_3 + 54, ctDogown, 128 );
setEffAlphaKey( spep_3 + 56, ctDogown, 64 );
setEffAlphaKey( spep_3 + 58, ctDogown, 0 );

--流線
shuchu3 = entryEffectLife( spep_3 + 0,914, 34, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_3 + 0, shuchu3, 0, 0 , 0 );
setEffMoveKey( spep_3 + 34, shuchu3, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, shuchu3, 1, 1 );
setEffScaleKey( spep_3 + 34, shuchu3, 1, 1 );
setEffRotateKey( spep_3 + 0, shuchu3, 0 );
setEffRotateKey( spep_3 + 34, shuchu3, 0 );
setEffAlphaKey( spep_3 + 0, shuchu3, 255 );
setEffAlphaKey( spep_3 + 34, shuchu3, 255 );
--流線
shuchu3a = entryEffectLife( spep_3 + 35,  906, 47, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_3 + 35, shuchu3a, 0, 0 , 0 );
setEffMoveKey( spep_3 + 82, shuchu3a, 0, 0 , 0 );
setEffScaleKey( spep_3 + 35, shuchu3a, 1, 1 );
setEffScaleKey( spep_3 + 82, shuchu3a, 1, 1 );
setEffRotateKey( spep_3 + 35, shuchu3a, 0 );
setEffRotateKey( spep_3 + 82, shuchu3a, 0 );
setEffAlphaKey( spep_3 + 35, shuchu3a, 255 );
setEffAlphaKey( spep_3 + 82, shuchu3a, 255 );

playSe(spep_3,SE_01);
playSe(spep_3+20,1023)

--次の準備
spep_4=spep_3+82;

------------------------------------------------------
-- 龍が迫る
------------------------------------------------------
--白フェード
entryFade(spep_4,0,0,8,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_4+100,14,6,0,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

entryFadeBg(spep_4,0,118,0,0,0,0,255);

--エフェクトの再生
dragon=entryEffectLife(spep_4,SP_07x,118,0x100,-1,0,0,0);
setEffMoveKey(spep_4,dragon,0,0,0);
setEffMoveKey(spep_4+118,dragon,0,0,0);
setEffScaleKey(spep_4,dragon,1.0,1.0);
setEffScaleKey(spep_4+118,dragon,1.0,1.0);
setEffAlphaKey(spep_4,dragon,255);
setEffAlphaKey(spep_4+118,dragon,255);
setEffRotateKey(spep_4,dragon,0);
setEffRotateKey(spep_4+118,dragon,0);

setEffShake(spep_4,dragon,118,10);

ctZudodo = entryEffectLife( spep_4 + 0,  10014, 64, 0x100, -1, 0, 199.9, 415.5 );
setEffMoveKey( spep_4 + 0, ctZudodo, 199.9, 415.5 , 0 );
setEffMoveKey( spep_4 + 2, ctZudodo, 187.9, 407.5 , 0 );
setEffMoveKey( spep_4 + 4, ctZudodo, 199.9, 415.5 , 0 );
setEffMoveKey( spep_4 + 6, ctZudodo, 187.9, 407.5 , 0 );
setEffMoveKey( spep_4 + 8, ctZudodo, 199.9, 415.5 , 0 );
setEffMoveKey( spep_4 + 10, ctZudodo, 187.9, 407.5 , 0 );
setEffMoveKey( spep_4 + 12, ctZudodo, 199.9, 415.5 , 0 );
setEffMoveKey( spep_4 + 14, ctZudodo, 187.9, 407.5 , 0 );
setEffMoveKey( spep_4 + 16, ctZudodo, 199.9, 415.5 , 0 );
setEffMoveKey( spep_4 + 18, ctZudodo, 187.9, 407.5 , 0 );
setEffMoveKey( spep_4 + 20, ctZudodo, 199.9, 415.5 , 0 );
setEffMoveKey( spep_4 + 22, ctZudodo, 187.9, 407.5 , 0 );
setEffMoveKey( spep_4 + 24, ctZudodo, 199.9, 415.5 , 0 );
setEffMoveKey( spep_4 + 26, ctZudodo, 187.9, 407.5 , 0 );
setEffMoveKey( spep_4 + 28, ctZudodo, 199.9, 415.5 , 0 );
setEffMoveKey( spep_4 + 30, ctZudodo, 187.9, 407.5 , 0 );
setEffMoveKey( spep_4 + 32, ctZudodo, 199.9, 415.5 , 0 );
setEffMoveKey( spep_4 + 34, ctZudodo, 187.9, 407.5 , 0 );
setEffMoveKey( spep_4 + 36, ctZudodo, 199.9, 415.5 , 0 );
setEffMoveKey( spep_4 + 38, ctZudodo, 187.9, 407.5 , 0 );
setEffMoveKey( spep_4 + 40, ctZudodo, 199.9, 415.5 , 0 );
setEffMoveKey( spep_4 + 42, ctZudodo, 187.9, 407.5 , 0 );
setEffMoveKey( spep_4 + 44, ctZudodo, 199.9, 415.5 , 0 );
setEffMoveKey( spep_4 + 46, ctZudodo, 187.9, 407.5 , 0 );
setEffMoveKey( spep_4 + 48, ctZudodo, 199.9, 415.5 , 0 );
setEffMoveKey( spep_4 + 50, ctZudodo, 187.9, 407.5 , 0 );
setEffMoveKey( spep_4 + 52, ctZudodo, 199.9, 415.5 , 0 );
setEffMoveKey( spep_4 + 54, ctZudodo, 187.9, 407.5 , 0 );
setEffMoveKey( spep_4 + 56, ctZudodo, 199.9, 415.5 , 0 );
setEffMoveKey( spep_4 + 58, ctZudodo, 187.9, 407.5 , 0 );
setEffMoveKey( spep_4 + 60, ctZudodo, 199.9, 415.5 , 0 );
setEffMoveKey( spep_4 + 62, ctZudodo, 187.9, 407.5 , 0 );
setEffMoveKey( spep_4 + 64, ctZudodo, 199.9, 415.5 , 0 );



ctZuo = entryEffectLife( spep_4 + 66,  10012, 52, 0x100, -1, 0, 73.6, -92 );
setEffMoveKey( spep_4 + 66, ctZuo, 73.6, -92 , 0 );
setEffMoveKey( spep_4 + 68, ctZuo, 97.6, -108.4 , 0 );
setEffMoveKey( spep_4 + 70, ctZuo, 99.3, -102.4 , 0 );
setEffMoveKey( spep_4 + 72, ctZuo, 127.7, -123.3 , 0 );
setEffMoveKey( spep_4 + 74, ctZuo, 125.1, -113 , 0 );
setEffMoveKey( spep_4 + 76, ctZuo, 158, -138.3 , 0 );
setEffMoveKey( spep_4 + 78, ctZuo, 139.8, -119.2 , 0 );
setEffMoveKey( spep_4 + 80, ctZuo, 162.2, -140.5 , 0 );
setEffMoveKey( spep_4 + 82, ctZuo, 143.7, -121 , 0 );
setEffMoveKey( spep_4 + 84, ctZuo, 166.4, -142.8 , 0 );
setEffMoveKey( spep_4 + 86, ctZuo, 147.3, -122.7 , 0 );
setEffMoveKey( spep_4 + 88, ctZuo, 170.7, -145 , 0 );
setEffMoveKey( spep_4 + 90, ctZuo, 151.2, -124.5 , 0 );
setEffMoveKey( spep_4 + 92, ctZuo, 174.8, -147.2 , 0 );
setEffMoveKey( spep_4 + 94, ctZuo, 154.9, -126.3 , 0 );
setEffMoveKey( spep_4 + 96, ctZuo, 179.1, -149.4 , 0 );
setEffMoveKey( spep_4 + 98, ctZuo, 158.6, -128 , 0 );
setEffMoveKey( spep_4 + 100, ctZuo, 183.3, -151.7 , 0 );
setEffMoveKey( spep_4 + 102, ctZuo, 160.5, -128.9 , 0 );
setEffMoveKey( spep_4 + 104, ctZuo, 183.3, -151.7 , 0 );
setEffMoveKey( spep_4 + 106, ctZuo, 160.5, -128.9 , 0 );
setEffMoveKey( spep_4 + 108, ctZuo, 183.3, -151.7 , 0 );
setEffMoveKey( spep_4 + 110, ctZuo, 160.5, -128.9 , 0 );
setEffMoveKey( spep_4 + 112, ctZuo, 183.3, -151.7 , 0 );
setEffMoveKey( spep_4 + 114, ctZuo, 160.5, -128.9 , 0 );
setEffMoveKey( spep_4 + 116, ctZuo, 183.3, -151.7 , 0 );

-- ctZudodo
setEffScaleKey( spep_4 + 0, ctZudodo, 1.5, 1.5 );

-- ctZuo
setEffScaleKey( spep_4 + 66, ctZuo, 2.44, 2.44 );
setEffScaleKey( spep_4 + 68, ctZuo, 2.56, 2.56 );
setEffScaleKey( spep_4 + 70, ctZuo, 2.67, 2.67 );
setEffScaleKey( spep_4 + 72, ctZuo, 2.78, 2.78 );
setEffScaleKey( spep_4 + 74, ctZuo, 2.89, 2.89 );
setEffScaleKey( spep_4 + 76, ctZuo, 3, 3 );
setEffScaleKey( spep_4 + 78, ctZuo, 3.01, 3.01 );
setEffScaleKey( spep_4 + 80, ctZuo, 3.02, 3.02 );
setEffScaleKey( spep_4 + 82, ctZuo, 3.03, 3.03 );
setEffScaleKey( spep_4 + 84, ctZuo, 3.05, 3.05 );
setEffScaleKey( spep_4 + 86, ctZuo, 3.06, 3.06 );
setEffScaleKey( spep_4 + 88, ctZuo, 3.07, 3.07 );
setEffScaleKey( spep_4 + 90, ctZuo, 3.08, 3.08 );
setEffScaleKey( spep_4 + 92, ctZuo, 3.09, 3.09 );
setEffScaleKey( spep_4 + 94, ctZuo, 3.1, 3.1 );
setEffScaleKey( spep_4 + 96, ctZuo, 3.11, 3.11 );
setEffScaleKey( spep_4 + 98, ctZuo, 3.13, 3.13 );
setEffScaleKey( spep_4 + 100, ctZuo, 3.14, 3.14 );

-- ctZudodo
setEffRotateKey( spep_4 + 0, ctZudodo, 0 );

setEffAlphaKey( spep_4 + 0, ctZudodo, 255 );
setEffAlphaKey( spep_4 + 64, ctZudodo, 255 );

-- ctZuo
setEffAlphaKey( spep_4 + 66, ctZuo, 255 );
setEffAlphaKey( spep_4 + 100, ctZuo, 255 );
setEffAlphaKey( spep_4 + 102, ctZuo, 227 );
setEffAlphaKey( spep_4 + 104, ctZuo, 198 );
setEffAlphaKey( spep_4 + 106, ctZuo, 170 );
setEffAlphaKey( spep_4 + 108, ctZuo, 142 );
setEffAlphaKey( spep_4 + 110, ctZuo, 113 );
setEffAlphaKey( spep_4 + 112, ctZuo, 85 );
setEffAlphaKey( spep_4 + 114, ctZuo, 57 );
setEffAlphaKey( spep_4 + 116, ctZuo, 28 );
setEffAlphaKey( spep_4 + 118, ctZuo, 0 );

setEffRotateKey( spep_4 + 66, ctZuo, 30 );

shuchu4 = entryEffectLife( spep_4 + 0,  906, 118, 0x100, -1, 0, 0, 153.9 );
setEffMoveKey( spep_4 + 0, shuchu4, 0, 153.9 , 0 );
setEffMoveKey( spep_4 + 65, shuchu4, 0, 153.9 , 0 );
setEffMoveKey( spep_4 + 66, shuchu4, 0, 395.8 , 0 );

-- ef_shuchu
setEffScaleKey( spep_4 + 0, shuchu4, 1.3, 1.3 );
setEffScaleKey( spep_4 + 64, shuchu4, 1.3, 1.3 );
setEffScaleKey( spep_4 + 66, shuchu4, 1.17, 1.75 );

ryusen4 = entryEffectLife( spep_4 + 0,  921, 118, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_4 + 0, ryusen4, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, ryusen4, 1.42, 1.42 );
setEffRotateKey( spep_4 + 0, ryusen4, -90 );
setEffAlphaKey( spep_4 + 0, ryusen4, 255 );

--[[
playSe(spep_4,1011);
playSe(spep_4+20,1011);
playSe(spep_4+40,1011);
playSe(spep_4+60,1011);
playSe(spep_4+80,1011);
playSe(spep_4+100,1011);
]]--
--[[
seid = playSe(spep_4,1044);
stopSe(spep_4+110,seid,0);
]]--
seId2 = playSe( spep_4+2, 1044);
stopSe( spep_4+106, seId2, 10);

--次の準備
spep_6=spep_4+118;

------------------------------------------------------
-- アッパーカット
------------------------------------------------------
entryFadeBg(spep_6,0,98,0,0,0,0,255);

--エフェクトの再生
upper=entryEffectLife(spep_6,SP_08x,98,0x100,-1,0,0,0);
setEffMoveKey(spep_6,upper,0,0,0);
setEffMoveKey(spep_6+98,upper,0,0,0);
setEffScaleKey(spep_6,upper,1.0,1.0);
setEffScaleKey(spep_6+98,upper,1.0,1.0);
setEffAlphaKey(spep_6,upper,255);
setEffAlphaKey(spep_6+98,upper,255);
setEffRotateKey(spep_6,upper,0);
setEffRotateKey(spep_6+98,upper,0);

ryusen6 = entryEffectLife( spep_6 + 0,  914, 98, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_6 + 0, ryusen6, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, ryusen6, 3.51, 1.0 );
setEffRotateKey( spep_6 + 0, ryusen6, -90 );
setEffAlphaKey( spep_6 + 0, ryusen6, 255 );

playSe(spep_6, 1024);

--次の準備
spep_7=spep_6+98;

------------------------------------------------------
-- 貫通
------------------------------------------------------
entryFade(spep_7-1,0,0,9,fcolor_r,fcolor_g,fcolor_b,255);
entryFade(spep_7+18,0,2,6,fcolor_r,fcolor_g,fcolor_b,255);
entryFade(spep_7+42,0,2,6,fcolor_r,fcolor_g,fcolor_b,255);
entryFade(spep_7+80,16,2,0,fcolor_r,fcolor_g,fcolor_b,255);
entryFadeBg(spep_7,0,98,0,0,0,0,255);

setDisp( spep_7 + 0, 1, 1 );
setDisp( spep_7 + 98, 1, 0 );
changeAnime( spep_7 + 0, 1, 108 );

setMoveKey( spep_7 + 0, 1, 349.1, 465.5 , 0 );
setMoveKey( spep_7 + 2, 1, 322.8, 436 , 0 );
setMoveKey( spep_7 + 4, 1, 311.9, 416.6 , 0 );
setMoveKey( spep_7 + 6, 1, 282.2, 404.1 , 0 );
setMoveKey( spep_7 + 8, 1, 271.3, 381.3 , 0 );
setMoveKey( spep_7 + 10, 1, 245.1, 351.7 , 0 );
setMoveKey( spep_7 + 12, 1, 234.1, 332.4 , 0 );
setMoveKey( spep_7 + 14, 1, 204.5, 319.9 , 0 );
setMoveKey( spep_7 + 16, 1, 193.5, 297.1 , 0 );
setMoveKey( spep_7 + 18, 1, 167.3, 267.5 , 0 );
setMoveKey( spep_7 + 20, 1, 156.4, 248.1 , 0 );
setMoveKey( spep_7 + 22, 1, 146.2, 256.6 , 0 );
setMoveKey( spep_7 + 24, 1, 154.7, 254.9 , 0 );
setMoveKey( spep_7 + 26, 1, 147.9, 246.4 , 0 );
setMoveKey( spep_7 + 28, 1, 156.4, 248.1 , 0 );
setMoveKey( spep_7 + 30, 1, 146.2, 256.6 , 0 );
setMoveKey( spep_7 + 32, 1, 154.7, 254.9 , 0 );
setMoveKey( spep_7 + 34, 1, 147.9, 246.4 , 0 );
setMoveKey( spep_7 + 36, 1, 156.4, 248.1 , 0 );
setMoveKey( spep_7 + 38, 1, 146.2, 256.6 , 0 );
setMoveKey( spep_7 + 40, 1, 154.7, 254.9 , 0 );
setMoveKey( spep_7 + 42, 1, 147.9, 246.4 , 0 );
setMoveKey( spep_7 + 44, 1, 156.4, 248.1 , 0 );
setMoveKey( spep_7 + 46, 1, 146.2, 256.6 , 0 );
setMoveKey( spep_7 + 48, 1, 154.7, 254.9 , 0 );
setMoveKey( spep_7 + 50, 1, 147.9, 246.4 , 0 );
setMoveKey( spep_7 + 52, 1, 156.4, 248.1 , 0 );
setMoveKey( spep_7 + 54, 1, 146.2, 256.6 , 0 );
setMoveKey( spep_7 + 56, 1, 154.7, 254.9 , 0 );
setMoveKey( spep_7 + 58, 1, 147.9, 246.4 , 0 );
setMoveKey( spep_7 + 60, 1, 156.4, 248.1 , 0 );
setMoveKey( spep_7 + 62, 1, 146.2, 256.6 , 0 );
setMoveKey( spep_7 + 64, 1, 154.7, 254.9 , 0 );
setMoveKey( spep_7 + 66, 1, 147.9, 246.4 , 0 );
setMoveKey( spep_7 + 68, 1, 156.4, 248.1 , 0 );
setMoveKey( spep_7 + 70, 1, 146.2, 256.6 , 0 );
setMoveKey( spep_7 + 72, 1, 154.7, 254.9 , 0 );
setMoveKey( spep_7 + 74, 1, 147.9, 246.4 , 0 );
setMoveKey( spep_7 + 76, 1, 156.4, 248.1 , 0 );
setMoveKey( spep_7 + 78, 1, 146.2, 256.6 , 0 );
setMoveKey( spep_7 + 80, 1, 154.7, 254.9 , 0 );
setMoveKey( spep_7 + 82, 1, 147.9, 246.4 , 0 );
setMoveKey( spep_7 + 84, 1, 156.4, 248.1 , 0 );
setMoveKey( spep_7 + 86, 1, 146.2, 256.6 , 0 );
setMoveKey( spep_7 + 88, 1, 154.7, 254.9 , 0 );
setMoveKey( spep_7 + 90, 1, 147.9, 246.4 , 0 );
setMoveKey( spep_7 + 92, 1, 156.4, 248.1 , 0 );
setMoveKey( spep_7 + 94, 1, 146.2, 256.6 , 0 );
setMoveKey( spep_7 + 96, 1, 154.7, 254.9 , 0 );
setMoveKey( spep_7 + 98, 1, 147.9, 246.4 , 0 );

setScaleKey( spep_7 + 0, 1, 0.9, 0.9 );
setScaleKey( spep_7 + 2, 1, 0.97, 0.97 );
setScaleKey( spep_7 + 4, 1, 1.04, 1.04 );
setScaleKey( spep_7 + 6, 1, 1.11, 1.11 );
setScaleKey( spep_7 + 8, 1, 1.18, 1.18 );
setScaleKey( spep_7 + 10, 1, 1.25, 1.25 );
setScaleKey( spep_7 + 12, 1, 1.32, 1.32 );
setScaleKey( spep_7 + 14, 1, 1.39, 1.39 );
setScaleKey( spep_7 + 16, 1, 1.46, 1.46 );
setScaleKey( spep_7 + 18, 1, 1.53, 1.53 );
setScaleKey( spep_7 + 20, 1, 1.6, 1.6 );
setScaleKey( spep_7 + 98, 1, 1.6, 1.6);

setRotateKey( spep_7 + 0, 1, -34.1 );
setRotateKey( spep_7 + 20, 1, -34.1 );
setRotateKey( spep_7 + 22, 1, -31.3 );
setRotateKey( spep_7 + 24, 1, -34.1 );
setRotateKey( spep_7 + 26, 1, -31.3 );
setRotateKey( spep_7 + 28, 1, -34.1 );
setRotateKey( spep_7 + 30, 1, -31.3 );
setRotateKey( spep_7 + 32, 1, -34.1 );
setRotateKey( spep_7 + 34, 1, -31.3 );
setRotateKey( spep_7 + 36, 1, -34.1 );
setRotateKey( spep_7 + 38, 1, -31.3 );
setRotateKey( spep_7 + 40, 1, -34.1 );
setRotateKey( spep_7 + 42, 1, -31.3 );
setRotateKey( spep_7 + 44, 1, -34.1 );
setRotateKey( spep_7 + 46, 1, -31.3 );
setRotateKey( spep_7 + 48, 1, -34.1 );
setRotateKey( spep_7 + 50, 1, -31.3 );
setRotateKey( spep_7 + 52, 1, -34.1 );
setRotateKey( spep_7 + 54, 1, -31.3 );
setRotateKey( spep_7 + 56, 1, -34.1 );
setRotateKey( spep_7 + 58, 1, -31.3 );
setRotateKey( spep_7 + 60, 1, -34.1 );
setRotateKey( spep_7 + 62, 1, -31.3 );
setRotateKey( spep_7 + 64, 1, -34.1 );
setRotateKey( spep_7 + 66, 1, -31.3 );
setRotateKey( spep_7 + 68, 1, -34.1 );
setRotateKey( spep_7 + 70, 1, -31.3 );
setRotateKey( spep_7 + 72, 1, -34.1 );
setRotateKey( spep_7 + 74, 1, -31.3 );
setRotateKey( spep_7 + 76, 1, -34.1 );
setRotateKey( spep_7 + 78, 1, -31.3 );
setRotateKey( spep_7 + 80, 1, -34.1 );
setRotateKey( spep_7 + 82, 1, -31.3 );
setRotateKey( spep_7 + 84, 1, -34.1 );
setRotateKey( spep_7 + 86, 1, -31.3 );
setRotateKey( spep_7 + 88, 1, -34.1 );
setRotateKey( spep_7 + 90, 1, -31.3 );
setRotateKey( spep_7 + 92, 1, -34.1 );
setRotateKey( spep_7 + 94, 1, -31.3 );
setRotateKey( spep_7 + 96, 1, -34.1 );
setRotateKey( spep_7 + 98, 1, -31.3 );

--エフェクトの再生（貫通前）
front_through=entryEffectLife(spep_7,SP_09x,98,0x100,-1,0,0,0);
setEffMoveKey(spep_7,front_through,0,0,0);
setEffMoveKey(spep_7+98,front_through,0,0,0);
setEffScaleKey(spep_7,front_through,1.0,1.0);
setEffScaleKey(spep_7+98,front_through,1.0,1.0);
setEffAlphaKey(spep_7,front_through,255);
setEffAlphaKey(spep_7+98,front_through,255);
setEffRotateKey(spep_7,front_through,0);
setEffRotateKey(spep_7+98,front_through,0);

shuchu7 = entryEffectLife( spep_7 + 22,  906, 76, 0x100, -1, 0, 44.9, 234.9 );
setEffMoveKey( spep_7 + 22, shuchu7, 44.9, 234.9 , 0 );
setEffScaleKey( spep_7 + 22, shuchu7, 1.51, 1.51 );
setEffRotateKey( spep_7 + 22, shuchu7, 0 );
setEffAlphaKey( spep_7 + 22, shuchu7, 255 );

ryusen7 = entryEffectLife( spep_7 + 0,  923, 98, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_7 + 0, ryusen7, 0, 0 , 0 );

setEffScaleKey( spep_7 + 0, ryusen7, 1.45, 1.10 );
setEffRotateKey( spep_7 + 0, ryusen7, 40.2 );
setEffAlphaKey( spep_7 + 0, ryusen7, 255 );

--エフェクトの再生（貫通後）
back_through=entryEffectLife(spep_7,SP_10x,98,0x80,-1,0,0,0);
setEffMoveKey(spep_7,back_through,0,0,0);
setEffMoveKey(spep_7+98,back_through,0,0,0);
setEffScaleKey(spep_7,back_through,1.0,1.0);
setEffScaleKey(spep_7+98,back_through,1.0,1.0);
setEffAlphaKey(spep_7,back_through,255);
setEffAlphaKey(spep_7+98,back_through,255);
setEffRotateKey(spep_7,back_through,0);
setEffRotateKey(spep_7+98,back_through,0);


playSe(spep_7,SE_07);
playSe(spep_7+22,1011);
--次の準備
spep_8=spep_7+98;

------------------------------------------------------
-- ギャン
------------------------------------------------------
--エフェクトの再生
gyan=entryEffectLife(spep_8,SP_11,60,0x100,-1,0,0,0);
setEffMoveKey(spep_8,gyan,0,0,0);
setEffMoveKey(spep_8+60,gyan,0,0,0);
setEffScaleKey(spep_8,gyan,1.0,1.0);
setEffScaleKey(spep_8+60,gyan,1.0,1.0);
setEffAlphaKey(spep_8,gyan,255);
setEffAlphaKey(spep_8+60,gyan,255);
setEffRotateKey(spep_8,gyan,0);
setEffRotateKey(spep_8+60,gyan,0);

-- 書き文字エントリー --
ctgyan_08 = entryEffectLife( spep_8, 10006, 59, 0x100, -1, 0, 0, 350);    -- ギャン
setEffScaleKey( spep_8, ctgyan_08, 1.7, 1.7);
setEffAlphaKey( spep_8, ctgyan_08, 255);
setEffScaleKey( spep_8+10, ctgyan_08, 3.0, 3.0);
setEffScaleKey( spep_8+59, ctgyan_08, 4.5, 4.5);
setEffAlphaKey( spep_8+59, ctgyan_08, 255);

--SE
playSe(  spep_8, SE_09);

--背景・ホワイトフェイド
entryFadeBg(spep_8,0,60,0,0,0,0,255);
entryFade( spep_8+21, 36,  5, 22, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_9=spep_8+62;
------------------------------------------------------
-- 爆発
------------------------------------------------------
entryFade( spep_9+38,6,2,18, fcolor_r, fcolor_g, fcolor_b,200);     -- white fade
entryFade( spep_9+78,6,2,6, fcolor_r, fcolor_g, fcolor_b,200);     -- white fade
entryFade( spep_9+140,36,2,0, fcolor_r, fcolor_g, fcolor_b,255);     -- white fade

--エフェクトの再生（貫通後）
explosion=entryEffect(spep_9,1676,0x100,-1,0,0,0);
setEffMoveKey(spep_9,explosion,0,0,0);
setEffMoveKey(spep_9+178,explosion,0,0,0);
setEffScaleKey(spep_9,explosion,1.2,1.2);
setEffScaleKey(spep_9+178,explosion,1.2,1.2);
setEffAlphaKey(spep_9,explosion,255);
setEffAlphaKey(spep_9+178,explosion,255);
setEffRotateKey(spep_9,explosion,0);
setEffRotateKey(spep_9+178,explosion,0);

shuchu9 = entryEffectLife( spep_9 + 44,  906, 134, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_9 + 44, shuchu9, 0, 0 , 0 ); 
setEffScaleKey( spep_9 + 44, shuchu9, -1.37, 1.84 );
setEffAlphaKey( spep_9 + 44, shuchu9, 255 );

playSe(  spep_9+44, SE_10);

-- ダメージ表示
dealDamage(spep_9+94);
entryFade( spep_9+178, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_9+188);

end