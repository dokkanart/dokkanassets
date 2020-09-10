--セル(完全体)　1014920
--sp_effect_b4_00062


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
SP_01=	152036	;--	構え
SP_02=	152037	;--	エネミーを引き寄せる
SP_03=	152038	;--	シュバババ・手前
SP_04=	152039	;--	シュバババ・奥
SP_05=	152040	;--	フィールド展開



--敵側は味方側に1xをつけてます
SP_01x=	152041	;--	構え	(敵)
SP_02x=	152037	;--	エネミーを引き寄せる	
SP_03x=	152038	;--	シュバババ・手前	
SP_04x=	152042	;--	シュバババ・奥	(敵)
SP_05x=	152043	;--	フィールド展開	(敵)



------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

setDisp( 0, 1, 0);
setDisp( 0, 0, 0);
setMoveKey(   0,   0,    0, -1000,   0);
setMoveKey(   0,   1,    0, -54,   0);
setMoveKey(   1,   0,    0, -1000,   0);
setMoveKey(   1,   1,    0, -54,   0);
setMoveKey(   2,   0,    0, -1000,   0);
setMoveKey(   2,   1,    0, -54,   0);
setMoveKey(   3,   0,    0, -1000,   0);
setMoveKey(   3,   1,    0, -54,   0);

setScaleKey(   1,   0, 1.6, 1.6);
setScaleKey(   1,   1, 1.6, 1.6);
setRotateKey(   1,   1, 0);
setRotateKey(   1,   0, 0);


multi_frm = 2;

if (_IS_SPECIAL_AIM_ALL_ == 0) then --- 全体必殺技の初回時
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then
------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 溜め
------------------------------------------------------
spep_0=0;


--エフェクトの再生
stance=entryEffectLife(spep_0,SP_01,128,0x100,-1,0,0,0);

setEffMoveKey(spep_0,stance,0,0,0);
setEffMoveKey(spep_0+128,stance,0,0,0);
setEffScaleKey(spep_0,stance,1.0,1.0);
setEffScaleKey(spep_0+128,stance,1.0,1.0);
setEffAlphaKey(spep_0,stance,255);
setEffAlphaKey(spep_0+128,stance,255);
setEffRotateKey(spep_0,stance,0);
setEffRotateKey(spep_0+128,stance,0);

--集中線
shuchuse = entryEffectLife( spep_0 + 16,  906, 110, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 16, shuchuse, 0, 0 , 0 );
setEffMoveKey( spep_0 + 126, shuchuse, 0, 0 , 0 );

setEffScaleKey( spep_0 + 16, shuchuse, 1.43, 2.03 );
setEffScaleKey( spep_0 + 126, shuchuse, 1.43, 2.03 );

setEffRotateKey( spep_0 + 16, shuchuse, 0 );
setEffRotateKey( spep_0 + 126, shuchuse, 0 );

setEffAlphaKey( spep_0 + 16, shuchuse, 255 );
setEffAlphaKey( spep_0 + 126, shuchuse, 255 );

--顔＆セリフカットイン
speff=entryEffect(spep_0+26,1504,0x100,-1,0,0,0);  --カットイン(顔)
setEffReplaceTexture(speff,3,2);  --カットイン差し替え
speff1=entryEffect(spep_0+26,1505,0x100,-1,0,0,0);  --カットイン(セリフ)
setEffReplaceTexture(speff1,4,5);  --セリフカットイン差し替え

--文字エントリー
ctgogo=entryEffectLife(spep_0+38,190006,70,0x100,-1,-110,500);--ゴゴゴ
setEffMoveKey(spep_0+38,ctgogo,-110,500,0);
setEffMoveKey(spep_0+108,ctgogo,-110,500,0);
setEffScaleKey(spep_0+38, ctgogo, 0.7, 0.7);
setEffScaleKey(spep_0+108, ctgogo, 0.7, 0.7);

--SE
playSe( spep_0+38, SE_04); --ゴゴゴ

--白フェード
entryFade( spep_0+14, 0,  4, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_0+112, 14,  3, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--背景黒
entryFadeBg( spep_0, 0, 18, 0, 0, 0, 0, 130);       -- ベース暗め　背景
entryFadeBg( spep_0+16, 0, 112, 0, 0, 0, 0, 200);       -- ベース暗め　背景

--次の準備
spep_1=spep_0+128;

------------------------------------------------------
-- 敵を引き寄せる
------------------------------------------------------
--エフェクトの再生
attract=entryEffectLife(spep_1,SP_02,178,0x100,-1,0,0,0);

setEffMoveKey(spep_1,attract,0,0,0);
setEffMoveKey(spep_1+178,attract,0,0,0);
setEffScaleKey(spep_1,attract,1.0,1.0);
setEffScaleKey(spep_1+178,attract,1.0,1.0);
setEffAlphaKey(spep_1,attract,255);
setEffAlphaKey(spep_1+178,attract,255);
setEffRotateKey(spep_1,attract,0);
setEffRotateKey(spep_1+178,attract,0);


setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 178, 1, 0 );
changeAnime( spep_1 + 0, 1, 100 );
changeAnime( spep_1 + 46, 1, 106 );

setMoveKey( spep_1 + 0, 1, -1130.3, 54.1 , 0 );
setMoveKey( spep_1 + 2, 1, -999.8, 43.4 , 0 );
setMoveKey( spep_1 + 4, 1, -869.3, 32.7 , 0 );
setMoveKey( spep_1 + 6, 1, -738.9, 22.1 , 0 );
setMoveKey( spep_1 + 8, 1, -608.4, 11.4 , 0 );
setMoveKey( spep_1 + 10, 1, -477.9, 0.7 , 0 );
setMoveKey( spep_1 + 12, 1, -347.5, -10 , 0 );
setMoveKey( spep_1 + 14, 1, -217, -20.7 , 0 );

setScaleKey( spep_1 + 0, 1, 3.04, 3.04 );
setScaleKey( spep_1 + 2, 1, 2.87, 2.87 );
setScaleKey( spep_1 + 4, 1, 2.69, 2.69 );
setScaleKey( spep_1 + 6, 1, 2.52, 2.52 );
setScaleKey( spep_1 + 8, 1, 2.35, 2.35 );
setScaleKey( spep_1 + 10, 1, 2.18, 2.18 );
setScaleKey( spep_1 + 12, 1, 2.01, 2.01 );
setScaleKey( spep_1 + 14, 1, 1.83, 1.83 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 + 14, 1, 0 );

--背景黒
entryFadeBg( spep_1, 0, 178, 0, 0, 0, 0, 200);       -- ベース暗め　背景
entryFadeBg( spep_1+46, 0, 36, 2, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

SP_dodge = spep_1+14 ; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

pauseAll( SP_dodge, 67);

--キャラクターの固定
setMoveKey(SP_dodge, 1, -217, -20.7, 0 );
setScaleKey(SP_dodge , 1, 1.83, 1.83 );
setRotateKey(SP_dodge,   1, 0);

--キャラクターの固定
setMoveKey(SP_dodge+8, 1, -217, -20.7 , 0);
setScaleKey(SP_dodge+8 , 1,1.83, 1.83 );
setRotateKey(SP_dodge+8,   1, 0);



setDisp(SP_dodge+9, 0, 0);
setDisp(SP_dodge+9, 1, 0);
--setMoveKey(SP_dodge+9, 1, 0 , 0, 0);
setScaleKey(SP_dodge+9,  1 , 1.83, 1.83 );
setRotateKey(SP_dodge+9,   1, 0);

--setMoveKey(SP_dodge+10, 1, 0 , 0, 0);
setScaleKey(SP_dodge+10,  1 , 1.83, 1.83);
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


setMoveKey( spep_1 + 16, 1, -86.6, -31.4 , 0 );
setMoveKey( spep_1 + 18, 1, 43.9, -42.1 , 0 );
setMoveKey( spep_1 + 20, 1, 46.3, -42.3 , 0 );
setMoveKey( spep_1 + 22, 1, 48.7, -42.6 , 0 );
setMoveKey( spep_1 + 24, 1, 51.1, -42.9 , 0 );
setMoveKey( spep_1 + 26, 1, 53.5, -43.1 , 0 );
setMoveKey( spep_1 + 28, 1, 55.9, -43.4 , 0 );
setMoveKey( spep_1 + 30, 1, 58.3, -43.7 , 0 );
setMoveKey( spep_1 + 32, 1, 60.7, -43.9 , 0 );
setMoveKey( spep_1 + 34, 1, 63.1, -44.2 , 0 );
setMoveKey( spep_1 + 36, 1, 65.5, -44.5 , 0 );
setMoveKey( spep_1 + 38, 1, 67.9, -44.7 , 0 );
setMoveKey( spep_1 + 40, 1, 70.3, -45 , 0 );
setMoveKey( spep_1 + 42, 1, 72.7, -45.3 , 0 );
setMoveKey( spep_1 + 44, 1, 75.2, -45.5 , 0 );
--setMoveKey( spep_1 + 46, 1, 77.6, -45.8 , 0 );
--setMoveKey( spep_1 + 49, 1, 80, -46.1 , 0 );
--setMoveKey( spep_1 + 50, 1, 39, -54.9 , 0 );
setMoveKey( spep_1 + 46, 1, 34.9, -10.5 , 0 );
setMoveKey( spep_1 + 54, 1, 22.5, -32.5 , 0 );
setMoveKey( spep_1 + 56, 1, 36.1, -15.4 , 0 );
setMoveKey( spep_1 + 58, 1, 44.8, -34.9 , 0 );
setMoveKey( spep_1 + 60, 1, 41.4, -8.6 , 0 );
setMoveKey( spep_1 + 62, 1, 30, -22.1 , 0 );
setMoveKey( spep_1 + 64, 1, 39.4, -13.9 , 0 );
setMoveKey( spep_1 + 66, 1, 46, -38.1 , 0 );
setMoveKey( spep_1 + 68, 1, 42, -8.4 , 0 );
setMoveKey( spep_1 + 70, 1, 34, -26.1 , 0 );
setMoveKey( spep_1 + 72, 1, 39.4, -13.9 , 0 );
setMoveKey( spep_1 + 74, 1, 42, -34.1 , 0 );
setMoveKey( spep_1 + 76, 1, 42, -8.4 , 0 );
setMoveKey( spep_1 + 78, 1, 34, -18.1 , 0 );
setMoveKey( spep_1 + 80, 1, 39.4, -13.9 , 0 );
setMoveKey( spep_1 + 82, 1, 46.7, -17.9 , 0 );
setMoveKey( spep_1 + 84, 1, 43.5, 18.4 , 0 );
setMoveKey( spep_1 + 86, 1, 40.6, 21.8 , 0 );
setMoveKey( spep_1 + 88, 1, 43.1, 49.3 , 0 );
setMoveKey( spep_1 + 90, 1, 43, 63.2 , 0 );
setMoveKey( spep_1 + 92, 1, 48.2, 101.1 , 0 );
setMoveKey( spep_1 + 94, 1, 50, 110.4 , 0 );
setMoveKey( spep_1 + 96, 1, 49, 151.4 , 0 );
setMoveKey( spep_1 + 98, 1, 49.6, 179.3 , 0 );
setMoveKey( spep_1 + 100, 1, 54.2, 195.7 , 0 );
setMoveKey( spep_1 + 102, 1, 59.4, 181.3 , 0 );
setMoveKey( spep_1 + 104, 1, 53.7, 203.9 , 0 );
setMoveKey( spep_1 + 106, 1, 53.2, 207.3 , 0 );
setMoveKey( spep_1 + 108, 1, 57.8, 223.4 , 0 );
setMoveKey( spep_1 + 110, 1, 63, 205.3 , 0 );
setMoveKey( spep_1 + 112, 1, 57.5, 231.7 , 0 );
setMoveKey( spep_1 + 114, 1, 52.7, 231.3 , 0 );
setMoveKey( spep_1 + 116, 1, 61.4, 251.1 , 0 );
setMoveKey( spep_1 + 118, 1, 66.5, 237.3 , 0 );
setMoveKey( spep_1 + 120, 1, 61.3, 259.5 , 0 );
setMoveKey( spep_1 + 122, 1, 64.3, 251.3 , 0 );
setMoveKey( spep_1 + 124, 1, 65.1, 278.8 , 0 );
setMoveKey( spep_1 + 126, 1, 62.1, 273.3 , 0 );
setMoveKey( spep_1 + 128, 1, 65.1, 287.3 , 0 );
setMoveKey( spep_1 + 130, 1, 67.9, 283.3 , 0 );
setMoveKey( spep_1 + 132, 1, 68.7, 306.5 , 0 );
setMoveKey( spep_1 + 134, 1, 48.9, 276.5 , 0 );
setMoveKey( spep_1 + 136, 1, 27.1, 264.4 , 0 );
setMoveKey( spep_1 + 138, 1, 5.3, 245 , 0 );
setMoveKey( spep_1 + 140, 1, -2.3, 244.7 , 0 );
setMoveKey( spep_1 + 142, 1, -15.1, 216.6 , 0 );
setMoveKey( spep_1 + 144, 1, -48.3, 204.5 , 0 );
setMoveKey( spep_1 + 146, 1, -85.4, 179.6 , 0 );
setMoveKey( spep_1 + 148, 1, -196.9, 96 , 0 );
setMoveKey( spep_1 + 150, 1, -299.4, -5.7 , 0 );
setMoveKey( spep_1 + 152, 1, -420.9, -91.2 , 0 );
setMoveKey( spep_1 + 154, 1, -529.3, -179 , 0 );
setMoveKey( spep_1 + 156, 1, -647.3, -259.1 , 0 );
setMoveKey( spep_1 + 158, 1, -743.2, -360.3 , 0 );
setMoveKey( spep_1 + 160, 1, -870, -450.5 , 0 );
setMoveKey( spep_1 + 162, 1, -977.1, -533.5 , 0 );
setMoveKey( spep_1 + 164, 1, -1097.7, -614.9 , 0 );
setMoveKey( spep_1 + 166, 1, -1187, -714.8 , 0 );
setMoveKey( spep_1 + 168, 1, -1318.5, -810.4 , 0 );
setMoveKey( spep_1 + 170, 1, -1416.9, -888.1 , 0 );
setMoveKey( spep_1 + 172, 1, -1547.8, -971.4 , 0 );
setMoveKey( spep_1 + 174, 1, -1634.8, -1065.4 , 0 );
setMoveKey( spep_1 + 176, 1, -1766.5, -1170.8 , 0 );
setMoveKey( spep_1 + 178, 1, -1852.7, -1246.6 , 0 );



setScaleKey( spep_1 + 16, 1, 1.66, 1.66 );
setScaleKey( spep_1 + 18, 1, 1.49, 1.49 );
setScaleKey( spep_1 + 20, 1, 1.48, 1.48 );
setScaleKey( spep_1 + 22, 1, 1.48, 1.48 );
setScaleKey( spep_1 + 24, 1, 1.47, 1.47 );
setScaleKey( spep_1 + 26, 1, 1.46, 1.46 );
setScaleKey( spep_1 + 28, 1, 1.45, 1.45 );
setScaleKey( spep_1 + 30, 1, 1.45, 1.45 );
setScaleKey( spep_1 + 32, 1, 1.44, 1.44 );
setScaleKey( spep_1 + 34, 1, 1.43, 1.43 );
setScaleKey( spep_1 + 36, 1, 1.42, 1.42 );
setScaleKey( spep_1 + 38, 1, 1.42, 1.42 );
setScaleKey( spep_1 + 40, 1, 1.41, 1.41 );
setScaleKey( spep_1 + 42, 1, 1.4, 1.4 );
setScaleKey( spep_1 + 44, 1, 1.39, 1.39 );
--setScaleKey( spep_1 + 46, 1, 1.39, 1.39 );
--setScaleKey( spep_1 + 49, 1, 1.38, 1.38 );
setScaleKey( spep_1 + 46, 1, 1.83, 1.83 );
setScaleKey( spep_1 + 50, 1, 1.71, 1.71 );
setScaleKey( spep_1 + 54, 1, 1.6, 1.6 );
setScaleKey( spep_1 + 56, 1, 1.51, 1.51 );
setScaleKey( spep_1 + 58, 1, 1.44, 1.44 );
setScaleKey( spep_1 + 60, 1, 1.4, 1.4 );
setScaleKey( spep_1 + 62, 1, 1.37, 1.37 );
setScaleKey( spep_1 + 88, 1, 1.37, 1.37 );
setScaleKey( spep_1 + 90, 1, 1.38, 1.38 );
setScaleKey( spep_1 + 94, 1, 1.38, 1.38 );
setScaleKey( spep_1 + 96, 1, 1.39, 1.39 );
setScaleKey( spep_1 + 98, 1, 1.39, 1.39 );
setScaleKey( spep_1 + 100, 1, 1.38, 1.38 );
setScaleKey( spep_1 + 102, 1, 1.37, 1.37 );
setScaleKey( spep_1 + 104, 1, 1.37, 1.37 );
setScaleKey( spep_1 + 106, 1, 1.36, 1.36 );
setScaleKey( spep_1 + 108, 1, 1.35, 1.35 );
setScaleKey( spep_1 + 110, 1, 1.34, 1.34 );
setScaleKey( spep_1 + 112, 1, 1.34, 1.34 );
setScaleKey( spep_1 + 114, 1, 1.33, 1.33 );
setScaleKey( spep_1 + 116, 1, 1.32, 1.32 );
setScaleKey( spep_1 + 118, 1, 1.31, 1.31 );
setScaleKey( spep_1 + 120, 1, 1.31, 1.31 );
setScaleKey( spep_1 + 122, 1, 1.3, 1.3 );
setScaleKey( spep_1 + 124, 1, 1.29, 1.29 );
setScaleKey( spep_1 + 126, 1, 1.28, 1.28 );
setScaleKey( spep_1 + 128, 1, 1.28, 1.28 );
setScaleKey( spep_1 + 130, 1, 1.27, 1.27 );
setScaleKey( spep_1 + 132, 1, 1.26, 1.26 );
setScaleKey( spep_1 + 134, 1, 1.3, 1.3 );
setScaleKey( spep_1 + 136, 1, 1.33, 1.33 );
setScaleKey( spep_1 + 138, 1, 1.37, 1.37 );
setScaleKey( spep_1 + 140, 1, 1.39, 1.39 );
setScaleKey( spep_1 + 142, 1, 1.42, 1.42 );
setScaleKey( spep_1 + 144, 1, 1.47, 1.47 );
setScaleKey( spep_1 + 146, 1, 1.52, 1.52 );
setScaleKey( spep_1 + 148, 1, 1.75, 1.75 );
setScaleKey( spep_1 + 150, 1, 1.97, 1.97 );
setScaleKey( spep_1 + 152, 1, 2.2, 2.2 );
setScaleKey( spep_1 + 154, 1, 2.42, 2.42 );
setScaleKey( spep_1 + 156, 1, 2.65, 2.65 );
setScaleKey( spep_1 + 158, 1, 2.87, 2.87 );
setScaleKey( spep_1 + 160, 1, 3.1, 3.1 );
setScaleKey( spep_1 + 162, 1, 3.33, 3.33 );
setScaleKey( spep_1 + 164, 1, 3.55, 3.55 );
setScaleKey( spep_1 + 166, 1, 3.78, 3.78 );
setScaleKey( spep_1 + 168, 1, 4, 4 );
setScaleKey( spep_1 + 170, 1, 4.23, 4.23 );
setScaleKey( spep_1 + 172, 1, 4.45, 4.45 );
setScaleKey( spep_1 + 174, 1, 4.68, 4.68 );
setScaleKey( spep_1 + 176, 1, 4.9, 4.9 );
setScaleKey( spep_1 + 178, 1, 5.13, 5.13 );


setRotateKey( spep_1 + 45, 1, 0 );
--setRotateKey( spep_1 + 48, 1, 0 );
setRotateKey( spep_1 + 46, 1, -56.2 );
setRotateKey( spep_1 + 80, 1, -56.2 );
setRotateKey( spep_1 + 82, 1, -56.3 );
setRotateKey( spep_1 + 84, 1, -56.5 );
setRotateKey( spep_1 + 86, 1, -56.7 );
setRotateKey( spep_1 + 88, 1, -56.9 );
setRotateKey( spep_1 + 90, 1, -57.2 );
setRotateKey( spep_1 + 92, 1, -57.4 );
setRotateKey( spep_1 + 94, 1, -57.7 );
setRotateKey( spep_1 + 96, 1, -58 );
setRotateKey( spep_1 + 98, 1, -58.4 );
setRotateKey( spep_1 + 100, 1, -58.7 );
setRotateKey( spep_1 + 102, 1, -59 );
setRotateKey( spep_1 + 104, 1, -59.3 );
setRotateKey( spep_1 + 106, 1, -59.6 );
setRotateKey( spep_1 + 108, 1, -59.9 );
setRotateKey( spep_1 + 110, 1, -60.2 );
setRotateKey( spep_1 + 112, 1, -60.5 );
setRotateKey( spep_1 + 114, 1, -60.8 );
setRotateKey( spep_1 + 116, 1, -61.2 );
setRotateKey( spep_1 + 118, 1, -61.5 );
setRotateKey( spep_1 + 120, 1, -61.8 );
setRotateKey( spep_1 + 122, 1, -62.1 );
setRotateKey( spep_1 + 124, 1, -62.4 );
setRotateKey( spep_1 + 126, 1, -62.7 );
setRotateKey( spep_1 + 128, 1, -63 );
setRotateKey( spep_1 + 130, 1, -63.3 );
setRotateKey( spep_1 + 132, 1, -63.6 );
setRotateKey( spep_1 + 134, 1, -67 );
setRotateKey( spep_1 + 136, 1, -70.5 );
setRotateKey( spep_1 + 138, 1, -73.9 );
setRotateKey( spep_1 + 140, 1, -75.2 );
setRotateKey( spep_1 + 142, 1, -77.7 );
setRotateKey( spep_1 + 144, 1, -81.3 );
setRotateKey( spep_1 + 146, 1, -86 );
setRotateKey( spep_1 + 148, 1, -86.8 );
setRotateKey( spep_1 + 150, 1, -87.6 );
setRotateKey( spep_1 + 152, 1, -88.4 );
setRotateKey( spep_1 + 154, 1, -89.2 );
setRotateKey( spep_1 + 156, 1, -90 );
setRotateKey( spep_1 + 158, 1, -90.8 );
setRotateKey( spep_1 + 160, 1, -91.6 );
setRotateKey( spep_1 + 162, 1, -92.3 );
setRotateKey( spep_1 + 164, 1, -93.1 );
setRotateKey( spep_1 + 166, 1, -93.9 );
setRotateKey( spep_1 + 168, 1, -94.7 );
setRotateKey( spep_1 + 170, 1, -95.5 );
setRotateKey( spep_1 + 172, 1, -96.3 );
setRotateKey( spep_1 + 174, 1, -97.1 );
setRotateKey( spep_1 + 176, 1, -97.9 );
setRotateKey( spep_1 + 178, 1, -98.7 );

setShakeChara(spep_1+46,1,132,15);

--文字エントリー
ctbikuri = entryEffectLife( spep_1 + 20,  10001, 30, 0x100, -1, 0, -79.4, 254.4 );--!?
setEffMoveKey( spep_1 + 20, ctbikuri, -79.4, 254.4 , 0 );
setEffMoveKey( spep_1 + 22, ctbikuri, -79.5, 254.3 , 0 );
setEffMoveKey( spep_1 + 24, ctbikuri, -79.5, 254.2 , 0 );
setEffMoveKey( spep_1 + 26, ctbikuri, -75.5, 260.2 , 0 );
setEffMoveKey( spep_1 + 28, ctbikuri, -79.5, 254.2 , 0 );
setEffMoveKey( spep_1 + 30, ctbikuri, -83.5, 248.2 , 0 );
setEffMoveKey( spep_1 + 32, ctbikuri, -79.5, 254.2 , 0 );
setEffMoveKey( spep_1 + 34, ctbikuri, -83.5, 258.2 , 0 );
setEffMoveKey( spep_1 + 36, ctbikuri, -79.5, 254.2 , 0 );
setEffMoveKey( spep_1 + 38, ctbikuri, -83.5, 256.2 , 0 );
setEffMoveKey( spep_1 + 40, ctbikuri, -79.5, 254.2 , 0 );
setEffMoveKey( spep_1 + 42, ctbikuri, -81.5, 250.2 , 0 );
setEffMoveKey( spep_1 + 44, ctbikuri, -79.5, 254.2 , 0 );
setEffMoveKey( spep_1 + 50, ctbikuri, -79.5, 254.2 , 0 );

setEffScaleKey( spep_1 + 20, ctbikuri, 4.94, 4.94 );
setEffScaleKey( spep_1 + 22, ctbikuri, 3.91, 3.91 );
setEffScaleKey( spep_1 + 24, ctbikuri, 2.87, 2.87 );
setEffScaleKey( spep_1 + 50, ctbikuri, 2.87, 2.87 );

setEffRotateKey( spep_1 + 20, ctbikuri, -11.6 );
setEffRotateKey( spep_1 + 22, ctbikuri, -11.7 );
setEffRotateKey( spep_1 + 50, ctbikuri, -11.7 );

setEffAlphaKey( spep_1 + 20, ctbikuri, 255 );
setEffAlphaKey( spep_1 + 40, ctbikuri, 255 );
setEffAlphaKey( spep_1 + 42, ctbikuri, 170 );
setEffAlphaKey( spep_1 + 44, ctbikuri, 85 );
setEffAlphaKey( spep_1 + 50 ,ctbikuri, 0 );

--集中線
shuchuse2 = entryEffectLife( spep_1 + 46,  906, 128, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_1 + 46, shuchuse2, 0, 0 , 0 );
setEffMoveKey( spep_1 + 174, shuchuse2, 0, 0 , 0 );

setEffScaleKey( spep_1 + 46, shuchuse2, 1.5, 2.01 );
setEffScaleKey( spep_1 + 174, shuchuse2, 1.5, 2.01 );

setEffRotateKey( spep_1 + 46, shuchuse2, 0 );
setEffRotateKey( spep_1 + 174, shuchuse2, 0 );

setEffAlphaKey( spep_1 + 46, shuchuse2, 255 );
setEffAlphaKey( spep_1 + 174, shuchuse2, 255 );

--流線(縦)
ryusen = entryEffectLife( spep_1 + 84,  914, 52, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_1 + 84, ryusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 136, ryusen, 0, 0 , 0 );

setEffScaleKey( spep_1 + 84, ryusen, 4.83, 1.2 );
setEffScaleKey( spep_1 + 136, ryusen, 4.83, 1.2 );

setEffRotateKey( spep_1 + 84, ryusen, -90 );
setEffRotateKey( spep_1 + 136, ryusen, -90 );

--setEffAlphaKey( spep_1 + 89, ryusen, 43 );
setEffAlphaKey( spep_1 + 84, ryusen, 85 );
setEffAlphaKey( spep_1 + 86, ryusen, 128 );
setEffAlphaKey( spep_1 + 88, ryusen, 170 );
setEffAlphaKey( spep_1 + 90, ryusen, 213 );
setEffAlphaKey( spep_1 + 92, ryusen, 255 );
setEffAlphaKey( spep_1 + 136, ryusen, 255 );
--setEffAlphaKey( spep_1 + 138, ryusen, 128 );
--setEffAlphaKey( spep_1 + 140, ryusen, 0 );

--流線(斜め)
ryusen2 = entryEffectLife( spep_1 + 138,  923, 40, 0x80, -1, 0, -6.4, 0 );------------------------------------------
setEffMoveKey( spep_1 + 138, ryusen2, 0, -6.4 , 0 );
setEffMoveKey( spep_1 + 178, ryusen2, 0, -6.4 , 0 );

setEffScaleKey( spep_1 + 138, ryusen2,  1.34, 1.63 );
setEffScaleKey( spep_1 + 178, ryusen2,  1.34, 1.63);

setEffRotateKey( spep_1 + 138, ryusen2, 50 );
setEffRotateKey( spep_1 + 178, ryusen2, 50 );

setEffAlphaKey( spep_1 + 138, ryusen2, 51 );
setEffAlphaKey( spep_1 + 146, ryusen2, 153 );
setEffAlphaKey( spep_1 + 148, ryusen2, 255 );
setEffAlphaKey( spep_1 + 178, ryusen2, 255 );


--SE
SE1=playSe(spep_1+46,15);
stopSe(spep_1+84,SE1,5);
playSe(spep_1 +82,44);
playSe(spep_1 +138,8);





--白フェード
entryFade( spep_1+46, 0,  0, 5, fcolor_r, fcolor_g, fcolor_b, 180);     -- white fade
entryFade( spep_1+170, 7,  4, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_2=spep_1+178;

--------------------------------------
--敵に攻撃
--------------------------------------
--エフェクトの再生
zyubaba_front=entryEffectLife(spep_2,SP_03,124,0x100,-1,0,0,0);

setEffMoveKey(spep_2,zyubaba_front,0,0,0);
setEffMoveKey(spep_2+124,zyubaba_front,0,0,0);
setEffScaleKey(spep_2,zyubaba_front,1.0,1.0);
setEffScaleKey(spep_2+124,zyubaba_front,1.0,1.0);
setEffAlphaKey(spep_2,zyubaba_front,255);
setEffAlphaKey(spep_2+124,zyubaba_front,255);
setEffRotateKey(spep_2,zyubaba_front,0);
setEffRotateKey(spep_2+124,zyubaba_front,0);

--エフェクトの再生
zyubaba_back=entryEffectLife(spep_2,SP_04,124,0x80,-1,0,0,0);

setEffMoveKey(spep_2,zyubaba_back,0,0,0);
setEffMoveKey(spep_2+124,zyubaba_back,0,0,0);
setEffScaleKey(spep_2,zyubaba_back,1.0,1.0);
setEffScaleKey(spep_2+124,zyubaba_back,1.0,1.0);
setEffAlphaKey(spep_2,zyubaba_back,255);
setEffAlphaKey(spep_2+124,zyubaba_back,255);
setEffRotateKey(spep_2,zyubaba_back,0);
setEffRotateKey(spep_2+124,zyubaba_back,0);


--敵に動き
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 124, 1, 0 );
changeAnime( spep_2 + 0, 1, 106 );
changeAnime( spep_2 + 26, 1, 108 );
changeAnime( spep_2 + 74, 1, 106 );

setMoveKey( spep_2 + 0, 1, 1473.6, 2498.4 , 0 );
setMoveKey( spep_2 + 2, 1, 1202.2, 2117.5 , 0 );
setMoveKey( spep_2 + 4, 1, 1021.9, 1748.4 , 0 );
setMoveKey( spep_2 + 6, 1, 770.1, 1350.1 , 0 );
setMoveKey( spep_2 + 8, 1, 570.2, 998.3 , 0 );
setMoveKey( spep_2 + 10, 1, 493, 906.6 , 0 );
setMoveKey( spep_2 + 12, 1, 463.5, 821.1 , 0 );
setMoveKey( spep_2 + 14, 1, 393.5, 717.6 , 0 );
setMoveKey( spep_2 + 16, 1, 356.8, 643.9 , 0 );
setMoveKey( spep_2 + 18, 1, 286.1, 553 , 0 );
setMoveKey( spep_2 + 20, 1, 250.2, 466.7 , 0 );
setMoveKey( spep_2 + 22, 1, 185.3, 367.8 , 0 );
--setMoveKey( spep_2 + 24, 1, 143.5, 289.5 , 0 );
--setMoveKey( spep_2 + 26, 1, 79.1, 199.4 , 0 );
--setMoveKey( spep_2 + 29, 1, 89.7, 200 , 0 );
setMoveKey( spep_2 + 26, 1, 178.4, 224.5 , 0 );
setMoveKey( spep_2 + 32, 1, 174.2, 201.1 , 0 );
setMoveKey( spep_2 + 34, 1, 177.3, 222.8 , 0 );
setMoveKey( spep_2 + 36, 1, 173.1, 221.9 , 0 );
setMoveKey( spep_2 + 38, 1, 176.3, 221 , 0 );
setMoveKey( spep_2 + 40, 1, 172, 212.7 , 0 );
setMoveKey( spep_2 + 42, 1, 175.2, 219.3 , 0 );
setMoveKey( spep_2 + 44, 1, 167.2, 214.8 , 0 );
setMoveKey( spep_2 + 46, 1, 174.1, 217.6 , 0 );
setMoveKey( spep_2 + 48, 1, 169.9, 205.6 , 0 );
setMoveKey( spep_2 + 50, 1, 173.1, 215.9 , 0 );
setMoveKey( spep_2 + 52, 1, 165.1, 211.4 , 0 );
setMoveKey( spep_2 + 54, 1, 172, 214.2 , 0 );
setMoveKey( spep_2 + 56, 1, 167.8, 198.5 , 0 );
setMoveKey( spep_2 + 58, 1, 171, 212.5 , 0 );
setMoveKey( spep_2 + 60, 1, 170.4, 211.6 , 0 );
setMoveKey( spep_2 + 62, 1, 162.5, 207.1 , 0 );
setMoveKey( spep_2 + 64, 1, 169.4, 209.9 , 0 );
setMoveKey( spep_2 + 66, 1, 161.5, 198 , 0 );
setMoveKey( spep_2 + 68, 1, 168.3, 208.2 , 0 );
setMoveKey( spep_2 + 70, 1, 160.4, 199.9 , 0 );
setMoveKey( spep_2 + 73, 1, 167.2, 206.4 , 0 );
setMoveKey( spep_2 + 74, 1, 153.8, 218 , 0 );
setMoveKey( spep_2 + 76, 1, 151, 229.4 , 0 );
setMoveKey( spep_2 + 78, 1, 153.9, 219.9 , 0 );
setMoveKey( spep_2 + 80, 1, 145.1, 228.4 , 0 );
setMoveKey( spep_2 + 82, 1, 154, 221.8 , 0 );
setMoveKey( spep_2 + 84, 1, 151.3, 233.2 , 0 );
setMoveKey( spep_2 + 86, 1, 154.1, 223.6 , 0 );
setMoveKey( spep_2 + 88, 1, 145.3, 232.2 , 0 );
setMoveKey( spep_2 + 90, 1, 154.1, 225.5 , 0 );
setMoveKey( spep_2 + 92, 1, 151.4, 236.9 , 0 );
setMoveKey( spep_2 + 94, 1, 154.2, 227.3 , 0 );
setMoveKey( spep_2 + 96, 1, 145.5, 235.8 , 0 );
setMoveKey( spep_2 + 98, 1, 154.3, 229.2 , 0 );
setMoveKey( spep_2 + 100, 1, 151.6, 240.5 , 0 );
setMoveKey( spep_2 + 102, 1, 154.4, 231 , 0 );
setMoveKey( spep_2 + 104, 1, 145.7, 239.4 , 0 );
setMoveKey( spep_2 + 106, 1, 154.5, 232.8 , 0 );
setMoveKey( spep_2 + 108, 1, 151.8, 244 , 0 );
setMoveKey( spep_2 + 110, 1, 154.5, 234.6 , 0 );
setMoveKey( spep_2 + 112, 1, 154.6, 235.5 , 0 );
--setMoveKey( spep_2 + 114, 1, 151.3, 244.9 , 0 );
--setMoveKey( spep_2 + 116, 1, 153.5, 233.6 , 0 );
--setMoveKey( spep_2 + 118, 1, 144.3, 240.2 , 0 );
--setMoveKey( spep_2 + 120, 1, 152.4, 231.8 , 0 );
--setMoveKey( spep_2 + 122, 1, 149.2, 241.2 , 0 );
--setMoveKey( spep_2 + 124, 1, 151.4, 230 , 0 );
--setMoveKey( spep_2 + 126, 1, 142.2, 236.5 , 0 );
--setMoveKey( spep_2 + 128, 1, 150.3, 228.2 , 0 );
--setMoveKey( spep_2 + 130, 1, 147.1, 237.5 , 0 );
--setMoveKey( spep_2 + 132, 1, 149.3, 226.4 , 0 );
--setMoveKey( spep_2 + 134, 1, 140.2, 232.9 , 0 );
--setMoveKey( spep_2 + 136, 1, 148.2, 224.6 , 0 );
setMoveKey( spep_2 + 124, 1, 158, 253.8 , 0 );

setScaleKey( spep_2 + 0, 1, 7.31, 7.31 );
setScaleKey( spep_2 + 2, 1, 6.37, 6.37 );
setScaleKey( spep_2 + 4, 1, 5.43, 5.43 );
setScaleKey( spep_2 + 6, 1, 4.49, 4.49 );
setScaleKey( spep_2 + 8, 1, 3.55, 3.55 );
setScaleKey( spep_2 + 10, 1, 3.33, 3.33 );
setScaleKey( spep_2 + 12, 1, 3.11, 3.11 );
setScaleKey( spep_2 + 14, 1, 2.89, 2.89 );
setScaleKey( spep_2 + 16, 1, 2.66, 2.66 );
setScaleKey( spep_2 + 18, 1, 2.44, 2.44 );
setScaleKey( spep_2 + 20, 1, 2.22, 2.22 );
setScaleKey( spep_2 + 22, 1, 1.99, 1.99 );
setScaleKey( spep_2 + 24, 1, 1.77, 1.77 );
setScaleKey( spep_2 + 26, 1, 1.55, 1.55 );
--setScaleKey( spep_2 + 28, 1, 1.55, 1.55 );
--setScaleKey( spep_2 + 29, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 37, 1, 1.47, 1.47 );
setScaleKey( spep_2 + 36, 1, 1.47, 1.47 );
setScaleKey( spep_2 + 38, 1, 1.46, 1.46 );
setScaleKey( spep_2 + 50, 1, 1.46, 1.46 );
setScaleKey( spep_2 + 52, 1, 1.45, 1.45 );
setScaleKey( spep_2 + 64, 1, 1.45, 1.45 );
setScaleKey( spep_2 + 66, 1, 1.44, 1.44 );
setScaleKey( spep_2 + 73, 1, 1.44, 1.44 );
setScaleKey( spep_2 + 74, 1, 1.51, 1.51 );
setScaleKey( spep_2 + 82, 1, 1.51, 1.51 );
setScaleKey( spep_2 + 84, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 94, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 96, 1, 1.49, 1.49 );
setScaleKey( spep_2 + 106, 1, 1.49, 1.49 );
setScaleKey( spep_2 + 108, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 112, 1, 1.48, 1.48 );
--setScaleKey( spep_2 + 120, 1, 1.47, 1.47 );
--setScaleKey( spep_2 + 130, 1, 1.47, 1.47 );
--setScaleKey( spep_2 + 132, 1, 1.46, 1.46 );
setScaleKey( spep_2 + 124, 1, 1.56, 1.56 );

setRotateKey( spep_2 + 0, 1, -99 );
--setRotateKey( spep_2 + 28, 1, -99 );
setRotateKey( spep_2 + 25, 1, -99 );
setRotateKey( spep_2 + 26, 1, -20.8 );
setRotateKey( spep_2 + 32, 1, -21 );
setRotateKey( spep_2 + 73, 1, -21 );
setRotateKey( spep_2 + 74, 1, -16.3 );
setRotateKey( spep_2 + 112, 1, -16.3 );
setRotateKey( spep_2 + 124, 1, -10.3 );------------------------

--集中線
shuchuse3 = entryEffectLife( spep_2 + 0,   906, 124, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, shuchuse3, 0, 0 , 0 );
setEffMoveKey( spep_2 + 124, shuchuse3, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchuse3, 1.32, 1.92 );
setEffScaleKey( spep_2 + 124, shuchuse3, 1.32, 1.92 );

setEffRotateKey( spep_2 + 0, shuchuse3, 0 );
setEffRotateKey( spep_2 + 124, shuchuse3, 0 );

setEffAlphaKey( spep_2 + 0, shuchuse3, 255 );
setEffAlphaKey( spep_2 + 124, shuchuse3, 255 );

--白フェード
entryFade( spep_2+24, 6,  0, 4, fcolor_r, fcolor_g, fcolor_b, 180);     -- white fade
entryFade( spep_2+108, 14,  6, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--SE
playSe(spep_2 +29,1032);
playSe(spep_2 +44,1032);
playSe(spep_2 +62,1032);
playSe(spep_2 +78,1032);
playSe(spep_2 +93,1032);


--背景黒
entryFadeBg( spep_2, 0, 124, 0, 0, 0, 0, 200);       -- ベース暗め　背景

--次の準備
spep_3=spep_2+124;

--------------------------------------
--カードカットイン(90F)
--------------------------------------

playSe(spep_3,SE_05);
shuchusen9=entryEffectLife(spep_3,906,90,0x100,-1,0,0,0);   -- 集中線
setEffScaleKey(spep_3,shuchusen9,1.6,1.6);

speff2=entryEffect(spep_3,1507,0x80,-1,0,0,0);   -- カード
setEffReplaceTexture(speff2,1,1);
setEffReplaceTexture(speff2,2,0);-- カード差し替え
setEffReplaceTexture(speff2,5,4);-- 技名テクスチャ差し替え

-- ** エフェクト等 ** --
entryFade(spep_3+85,3,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_4=spep_3+90;


--------------------------------------
--溜め
--------------------------------------

--エフェクトの再生
field=entryEffectLife(spep_4,SP_05,176,0x100,-1,0,0,0);

setEffMoveKey(spep_4,field,0,0,0);
setEffMoveKey(spep_4+176,field,0,0,0);
setEffScaleKey(spep_4,field,1.0,1.0);
setEffScaleKey(spep_4+176,field,1.0,1.0);
setEffAlphaKey(spep_4,field,255);
setEffAlphaKey(spep_4+176,field,255);
setEffRotateKey(spep_4,field,0);
setEffRotateKey(spep_4+176,field,0);

--集中線
shuchuse4 = entryEffectLife( spep_4 + 0,  906, 178, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_4 + 0, shuchuse4, 0, 0 , 0 );
setEffMoveKey( spep_4 + 178, shuchuse4, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, shuchuse4, 1.4, 1.75 );
setEffScaleKey( spep_4 + 178, shuchuse4, 1.4, 1.75 );

setEffRotateKey( spep_4 + 0, shuchuse4, 0 );
setEffRotateKey( spep_4 + 178, shuchuse4, 0 );

setEffAlphaKey( spep_4 + 0, shuchuse4, 255 );
setEffAlphaKey( spep_4 + 178, shuchuse4, 255 );

--文字エントリー
ctzuo = entryEffectLife( spep_4 + 100,  10012, 36, 0x100, -1, 0, 38.7, 220.5 ); --ズオッ
setEffMoveKey( spep_4 + 100, ctzuo, 38.7, 220.5 , 0 );
setEffMoveKey( spep_4 + 102, ctzuo, 65, 248.6 , 0 );
setEffMoveKey( spep_4 + 104, ctzuo, 77.9, 290.1 , 0 );
setEffMoveKey( spep_4 + 106, ctzuo, 113.7, 308.8 , 0 );
setEffMoveKey( spep_4 + 108, ctzuo, 97.7, 324.8 , 0 );
setEffMoveKey( spep_4 + 110, ctzuo, 113.7, 308.8 , 0 );
setEffMoveKey( spep_4 + 112, ctzuo, 97.7, 324.8 , 0 );
setEffMoveKey( spep_4 + 114, ctzuo, 113.7, 308.8 , 0 );
setEffMoveKey( spep_4 + 116, ctzuo, 97.7, 324.8 , 0 );
setEffMoveKey( spep_4 + 118, ctzuo, 113.7, 308.8 , 0 );
setEffMoveKey( spep_4 + 120, ctzuo, 97.7, 324.8 , 0 );
setEffMoveKey( spep_4 + 122, ctzuo, 113.7, 308.8 , 0 );
setEffMoveKey( spep_4 + 124, ctzuo, 97.7, 324.8 , 0 );
setEffMoveKey( spep_4 + 126, ctzuo, 113.7, 308.8 , 0 );
setEffMoveKey( spep_4 + 128, ctzuo, 97.7, 324.8 , 0 );
setEffMoveKey( spep_4 + 130, ctzuo, 137.9, 304.7 , 0 );
setEffMoveKey( spep_4 + 132, ctzuo, 134, 328.7 , 0 );
setEffMoveKey( spep_4 + 134, ctzuo, 186.1, 296.5 , 0 );
setEffMoveKey( spep_4 + 136, ctzuo, 210.3, 292.4 , 0 );

setEffScaleKey( spep_4 + 100, ctzuo, 0.34, 0.34 );
setEffScaleKey( spep_4 + 102, ctzuo, 1.13, 1.13 );
setEffScaleKey( spep_4 + 104, ctzuo, 1.94, 1.94 );
setEffScaleKey( spep_4 + 106, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_4 + 128, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_4 + 130, ctzuo, 3.75, 3.75 );
setEffScaleKey( spep_4 + 132, ctzuo, 4.78, 4.78 );
setEffScaleKey( spep_4 + 134, ctzuo, 5.8, 5.8 );
setEffScaleKey( spep_4 + 136, ctzuo, 6.82, 6.82 );

setEffRotateKey( spep_4 + 100, ctzuo, 27.2 );
setEffRotateKey( spep_4 + 136, ctzuo, 27.2 );

setEffAlphaKey( spep_4 + 100, ctzuo, 255 );
setEffAlphaKey( spep_4 + 128, ctzuo, 255 );
setEffAlphaKey( spep_4 + 130, ctzuo, 191 );
setEffAlphaKey( spep_4 + 132, ctzuo, 128 );
setEffAlphaKey( spep_4 + 134, ctzuo, 64 );
setEffAlphaKey( spep_4 + 136, ctzuo, 0 );


--se
playSe(spep_4,SE_03);
playSe(spep_4+20,SE_03);
playSe(spep_4+40,SE_03);
playSe(spep_4+60,SE_03);
playSe(spep_4+80,SE_03);
--playSe(spep_4+75,SE_03);
--playSe(spep_4+90,SE_03);
playSe(  spep_4+100, SE_10);


--白フェード
entryFade( spep_4+93, 0,  7, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_4+168, 8,  2, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--背景黒
entryFadeBg( spep_4, 0, 176, 0,0, 0, 0, 200);       -- ベース暗め　背景

--次の準備
spep_5 = spep_4+176;
------------------------------------------------------
-- ギャン(60F)
------------------------------------------------------
setDisp( spep_5-1, 1, 0);

gyan = entryEffect(  spep_5,  190010,  0x100,  -1,  0,  0,  0);  --ギャン
setEffScaleKey(  spep_5,  gyan,  1.0,  1.0);
setEffAlphaKey(  spep_5,  gyan,  255);

-- 書き文字エントリー --
ct_06 = entryEffectLife( spep_5, 10006, 58, 0x100, -1, 0, 0, 300);    -- ギャン

setEffScaleKey( spep_5, ct_06, 2.0, 2.0);
setEffAlphaKey( spep_5, ct_06, 255);
setEffScaleKey( spep_5+10, ct_06, 3.8, 3.8);
setEffScaleKey( spep_5+58, ct_06, 4.5, 4.5);
setEffAlphaKey( spep_5+58, ct_06, 255);
setEffShake( spep_5, ct_06, 58, 10);

playSe(  spep_5, SE_09);

--entryFade(  spep_5+47,  6,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryFadeBg(spep_5,0,60,0,0,0,0,255);
entryFade( spep_5+50, 4,  8, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


--次の準備
spep_6 = spep_5+60;
------------------------------------------------------
-- 爆発
------------------------------------------------------

--エフェクトの再生
explosion=entryEffect(spep_6,1909,0x80,-1,0,0,0);

setEffMoveKey(spep_6,explosion,0,0,0);
setEffMoveKey(spep_6+180,explosion,0,0,0);
setEffScaleKey(spep_6,explosion,1.1,1.1);
setEffScaleKey(spep_6+180,explosion,1.1,1.1);
setEffAlphaKey(spep_6,explosion,255);
setEffAlphaKey(spep_6+180,explosion,255);
setEffRotateKey(spep_6,explosion,0);
setEffRotateKey(spep_6+180,explosion,0);

--集中線
shuchuse4 = entryEffectLife( spep_6 ,  906, 180, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_6 , shuchuse4, 0, 0 , 0 );
setEffMoveKey( spep_6 + 180, shuchuse4, 0, 0 , 0 );

setEffScaleKey( spep_6 , shuchuse4, 1.43, 2.03 );
setEffScaleKey( spep_6 + 180, shuchuse4, 1.43, 2.03 );

setEffRotateKey( spep_6 , shuchuse4, 0 );
setEffRotateKey( spep_6 + 180, shuchuse4, 0 );

setEffAlphaKey( spep_6 , shuchuse4, 255 );
setEffAlphaKey( spep_6 + 180, shuchuse4, 255 );

--SE
playSe(  spep_6, SE_10);

-- ダメージ表示
dealDamage(spep_6+60);

entryFade( spep_6+150, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_6+160);

else 



------------------------------------------------------
-- 敵側
------------------------------------------------------

------------------------------------------------------
-- 溜め
------------------------------------------------------
spep_0=0;


--エフェクトの再生
stance=entryEffectLife(spep_0,SP_01x,128,0x100,-1,0,0,0);

setEffMoveKey(spep_0,stance,0,0,0);
setEffMoveKey(spep_0+128,stance,0,0,0);
setEffScaleKey(spep_0,stance,1.0,1.0);
setEffScaleKey(spep_0+128,stance,1.0,1.0);
setEffAlphaKey(spep_0,stance,255);
setEffAlphaKey(spep_0+128,stance,255);
setEffRotateKey(spep_0,stance,0);
setEffRotateKey(spep_0+128,stance,0);

--集中線
shuchuse = entryEffectLife( spep_0 + 16,  906, 110, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 16, shuchuse, 0, 0 , 0 );
setEffMoveKey( spep_0 + 126, shuchuse, 0, 0 , 0 );

setEffScaleKey( spep_0 + 16, shuchuse, 1.43, 2.03 );
setEffScaleKey( spep_0 + 126, shuchuse, 1.43, 2.03 );

setEffRotateKey( spep_0 + 16, shuchuse, 0 );
setEffRotateKey( spep_0 + 126, shuchuse, 0 );

setEffAlphaKey( spep_0 + 16, shuchuse, 255 );
setEffAlphaKey( spep_0 + 126, shuchuse, 255 );

--顔＆セリフカットイン
--speff=entryEffect(spep_0+26,1504,0x100,-1,0,0,0);  --カットイン(顔)
--setEffReplaceTexture(speff,3,2);  --カットイン差し替え
--speff1=entryEffect(spep_0+26,1505,0x100,-1,0,0,0);  --カットイン(セリフ)
--setEffReplaceTexture(speff1,4,5);  --セリフカットイン差し替え

--文字エントリー
ctgogo=entryEffectLife(spep_0+38,190006,70,0x100,-1,-110,500);--ゴゴゴ
setEffMoveKey(spep_0+38,ctgogo,-110,500,0);
setEffMoveKey(spep_0+108,ctgogo,-110,500,0);
setEffScaleKey(spep_0+38, ctgogo, -0.7, 0.7);
setEffScaleKey(spep_0+108, ctgogo, -0.7, 0.7);

--SE
playSe( spep_0+38, SE_04); --ゴゴゴ

--白フェード
entryFade( spep_0+14, 0,  4, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_0+112, 14,  3, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--背景黒
entryFadeBg( spep_0, 0, 18, 0, 0, 0, 0, 130);       -- ベース暗め　背景
entryFadeBg( spep_0+16, 0, 112, 0, 0, 0, 0, 200);       -- ベース暗め　背景

--次の準備
spep_1=spep_0+128;

------------------------------------------------------
-- 敵を引き寄せる
------------------------------------------------------
--エフェクトの再生
attract=entryEffectLife(spep_1,SP_02x,178,0x100,-1,0,0,0);

setEffMoveKey(spep_1,attract,0,0,0);
setEffMoveKey(spep_1+178,attract,0,0,0);
setEffScaleKey(spep_1,attract,1.0,1.0);
setEffScaleKey(spep_1+178,attract,1.0,1.0);
setEffAlphaKey(spep_1,attract,255);
setEffAlphaKey(spep_1+178,attract,255);
setEffRotateKey(spep_1,attract,0);
setEffRotateKey(spep_1+178,attract,0);


setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 178, 1, 0 );
changeAnime( spep_1 + 0, 1, 100 );
changeAnime( spep_1 + 46, 1, 106 );

setMoveKey( spep_1 + 0, 1, -1130.3, 54.1 , 0 );
setMoveKey( spep_1 + 2, 1, -999.8, 43.4 , 0 );
setMoveKey( spep_1 + 4, 1, -869.3, 32.7 , 0 );
setMoveKey( spep_1 + 6, 1, -738.9, 22.1 , 0 );
setMoveKey( spep_1 + 8, 1, -608.4, 11.4 , 0 );
setMoveKey( spep_1 + 10, 1, -477.9, 0.7 , 0 );
setMoveKey( spep_1 + 12, 1, -347.5, -10 , 0 );
setMoveKey( spep_1 + 14, 1, -217, -20.7 , 0 );

setScaleKey( spep_1 + 0, 1, 3.04, 3.04 );
setScaleKey( spep_1 + 2, 1, 2.87, 2.87 );
setScaleKey( spep_1 + 4, 1, 2.69, 2.69 );
setScaleKey( spep_1 + 6, 1, 2.52, 2.52 );
setScaleKey( spep_1 + 8, 1, 2.35, 2.35 );
setScaleKey( spep_1 + 10, 1, 2.18, 2.18 );
setScaleKey( spep_1 + 12, 1, 2.01, 2.01 );
setScaleKey( spep_1 + 14, 1, 1.83, 1.83 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 + 14, 1, 0 );

--背景黒
entryFadeBg( spep_1, 0, 178, 0, 0, 0, 0, 200);       -- ベース暗め　背景
entryFadeBg( spep_1+46, 0, 36, 2, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

SP_dodge = spep_1+14 ; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

pauseAll( SP_dodge, 67);

--キャラクターの固定
setMoveKey(SP_dodge, 1, -217, -20.7, 0 );
setScaleKey(SP_dodge , 1, 1.83, 1.83 );
setRotateKey(SP_dodge,   1, 0);

--キャラクターの固定
setMoveKey(SP_dodge+8, 1, -217, -20.7 , 0);
setScaleKey(SP_dodge+8 , 1,1.83, 1.83 );
setRotateKey(SP_dodge+8,   1, 0);



setDisp(SP_dodge+9, 0, 0);
setDisp(SP_dodge+9, 1, 0);
--setMoveKey(SP_dodge+9, 1, 0 , 0, 0);
setScaleKey(SP_dodge+9,  1 , 1.83, 1.83 );
setRotateKey(SP_dodge+9,   1, 0);

--setMoveKey(SP_dodge+10, 1, 0 , 0, 0);
setScaleKey(SP_dodge+10,  1 , 1.83, 1.83);
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


setMoveKey( spep_1 + 16, 1, -86.6, -31.4 , 0 );
setMoveKey( spep_1 + 18, 1, 43.9, -42.1 , 0 );
setMoveKey( spep_1 + 20, 1, 46.3, -42.3 , 0 );
setMoveKey( spep_1 + 22, 1, 48.7, -42.6 , 0 );
setMoveKey( spep_1 + 24, 1, 51.1, -42.9 , 0 );
setMoveKey( spep_1 + 26, 1, 53.5, -43.1 , 0 );
setMoveKey( spep_1 + 28, 1, 55.9, -43.4 , 0 );
setMoveKey( spep_1 + 30, 1, 58.3, -43.7 , 0 );
setMoveKey( spep_1 + 32, 1, 60.7, -43.9 , 0 );
setMoveKey( spep_1 + 34, 1, 63.1, -44.2 , 0 );
setMoveKey( spep_1 + 36, 1, 65.5, -44.5 , 0 );
setMoveKey( spep_1 + 38, 1, 67.9, -44.7 , 0 );
setMoveKey( spep_1 + 40, 1, 70.3, -45 , 0 );
setMoveKey( spep_1 + 42, 1, 72.7, -45.3 , 0 );
setMoveKey( spep_1 + 44, 1, 75.2, -45.5 , 0 );
--setMoveKey( spep_1 + 46, 1, 77.6, -45.8 , 0 );
--setMoveKey( spep_1 + 49, 1, 80, -46.1 , 0 );
--setMoveKey( spep_1 + 50, 1, 39, -54.9 , 0 );
setMoveKey( spep_1 + 46, 1, 34.9, -10.5 , 0 );
setMoveKey( spep_1 + 54, 1, 22.5, -32.5 , 0 );
setMoveKey( spep_1 + 56, 1, 36.1, -15.4 , 0 );
setMoveKey( spep_1 + 58, 1, 44.8, -34.9 , 0 );
setMoveKey( spep_1 + 60, 1, 41.4, -8.6 , 0 );
setMoveKey( spep_1 + 62, 1, 30, -22.1 , 0 );
setMoveKey( spep_1 + 64, 1, 39.4, -13.9 , 0 );
setMoveKey( spep_1 + 66, 1, 46, -38.1 , 0 );
setMoveKey( spep_1 + 68, 1, 42, -8.4 , 0 );
setMoveKey( spep_1 + 70, 1, 34, -26.1 , 0 );
setMoveKey( spep_1 + 72, 1, 39.4, -13.9 , 0 );
setMoveKey( spep_1 + 74, 1, 42, -34.1 , 0 );
setMoveKey( spep_1 + 76, 1, 42, -8.4 , 0 );
setMoveKey( spep_1 + 78, 1, 34, -18.1 , 0 );
setMoveKey( spep_1 + 80, 1, 39.4, -13.9 , 0 );
setMoveKey( spep_1 + 82, 1, 46.7, -17.9 , 0 );
setMoveKey( spep_1 + 84, 1, 43.5, 18.4 , 0 );
setMoveKey( spep_1 + 86, 1, 40.6, 21.8 , 0 );
setMoveKey( spep_1 + 88, 1, 43.1, 49.3 , 0 );
setMoveKey( spep_1 + 90, 1, 43, 63.2 , 0 );
setMoveKey( spep_1 + 92, 1, 48.2, 101.1 , 0 );
setMoveKey( spep_1 + 94, 1, 50, 110.4 , 0 );
setMoveKey( spep_1 + 96, 1, 49, 151.4 , 0 );
setMoveKey( spep_1 + 98, 1, 49.6, 179.3 , 0 );
setMoveKey( spep_1 + 100, 1, 54.2, 195.7 , 0 );
setMoveKey( spep_1 + 102, 1, 59.4, 181.3 , 0 );
setMoveKey( spep_1 + 104, 1, 53.7, 203.9 , 0 );
setMoveKey( spep_1 + 106, 1, 53.2, 207.3 , 0 );
setMoveKey( spep_1 + 108, 1, 57.8, 223.4 , 0 );
setMoveKey( spep_1 + 110, 1, 63, 205.3 , 0 );
setMoveKey( spep_1 + 112, 1, 57.5, 231.7 , 0 );
setMoveKey( spep_1 + 114, 1, 52.7, 231.3 , 0 );
setMoveKey( spep_1 + 116, 1, 61.4, 251.1 , 0 );
setMoveKey( spep_1 + 118, 1, 66.5, 237.3 , 0 );
setMoveKey( spep_1 + 120, 1, 61.3, 259.5 , 0 );
setMoveKey( spep_1 + 122, 1, 64.3, 251.3 , 0 );
setMoveKey( spep_1 + 124, 1, 65.1, 278.8 , 0 );
setMoveKey( spep_1 + 126, 1, 62.1, 273.3 , 0 );
setMoveKey( spep_1 + 128, 1, 65.1, 287.3 , 0 );
setMoveKey( spep_1 + 130, 1, 67.9, 283.3 , 0 );
setMoveKey( spep_1 + 132, 1, 68.7, 306.5 , 0 );
setMoveKey( spep_1 + 134, 1, 48.9, 276.5 , 0 );
setMoveKey( spep_1 + 136, 1, 27.1, 264.4 , 0 );
setMoveKey( spep_1 + 138, 1, 5.3, 245 , 0 );
setMoveKey( spep_1 + 140, 1, -2.3, 244.7 , 0 );
setMoveKey( spep_1 + 142, 1, -15.1, 216.6 , 0 );
setMoveKey( spep_1 + 144, 1, -48.3, 204.5 , 0 );
setMoveKey( spep_1 + 146, 1, -85.4, 179.6 , 0 );
setMoveKey( spep_1 + 148, 1, -196.9, 96 , 0 );
setMoveKey( spep_1 + 150, 1, -299.4, -5.7 , 0 );
setMoveKey( spep_1 + 152, 1, -420.9, -91.2 , 0 );
setMoveKey( spep_1 + 154, 1, -529.3, -179 , 0 );
setMoveKey( spep_1 + 156, 1, -647.3, -259.1 , 0 );
setMoveKey( spep_1 + 158, 1, -743.2, -360.3 , 0 );
setMoveKey( spep_1 + 160, 1, -870, -450.5 , 0 );
setMoveKey( spep_1 + 162, 1, -977.1, -533.5 , 0 );
setMoveKey( spep_1 + 164, 1, -1097.7, -614.9 , 0 );
setMoveKey( spep_1 + 166, 1, -1187, -714.8 , 0 );
setMoveKey( spep_1 + 168, 1, -1318.5, -810.4 , 0 );
setMoveKey( spep_1 + 170, 1, -1416.9, -888.1 , 0 );
setMoveKey( spep_1 + 172, 1, -1547.8, -971.4 , 0 );
setMoveKey( spep_1 + 174, 1, -1634.8, -1065.4 , 0 );
setMoveKey( spep_1 + 176, 1, -1766.5, -1170.8 , 0 );
setMoveKey( spep_1 + 178, 1, -1852.7, -1246.6 , 0 );



setScaleKey( spep_1 + 16, 1, 1.66, 1.66 );
setScaleKey( spep_1 + 18, 1, 1.49, 1.49 );
setScaleKey( spep_1 + 20, 1, 1.48, 1.48 );
setScaleKey( spep_1 + 22, 1, 1.48, 1.48 );
setScaleKey( spep_1 + 24, 1, 1.47, 1.47 );
setScaleKey( spep_1 + 26, 1, 1.46, 1.46 );
setScaleKey( spep_1 + 28, 1, 1.45, 1.45 );
setScaleKey( spep_1 + 30, 1, 1.45, 1.45 );
setScaleKey( spep_1 + 32, 1, 1.44, 1.44 );
setScaleKey( spep_1 + 34, 1, 1.43, 1.43 );
setScaleKey( spep_1 + 36, 1, 1.42, 1.42 );
setScaleKey( spep_1 + 38, 1, 1.42, 1.42 );
setScaleKey( spep_1 + 40, 1, 1.41, 1.41 );
setScaleKey( spep_1 + 42, 1, 1.4, 1.4 );
setScaleKey( spep_1 + 44, 1, 1.39, 1.39 );
--setScaleKey( spep_1 + 46, 1, 1.39, 1.39 );
--setScaleKey( spep_1 + 49, 1, 1.38, 1.38 );
setScaleKey( spep_1 + 46, 1, 1.83, 1.83 );
setScaleKey( spep_1 + 50, 1, 1.71, 1.71 );
setScaleKey( spep_1 + 54, 1, 1.6, 1.6 );
setScaleKey( spep_1 + 56, 1, 1.51, 1.51 );
setScaleKey( spep_1 + 58, 1, 1.44, 1.44 );
setScaleKey( spep_1 + 60, 1, 1.4, 1.4 );
setScaleKey( spep_1 + 62, 1, 1.37, 1.37 );
setScaleKey( spep_1 + 88, 1, 1.37, 1.37 );
setScaleKey( spep_1 + 90, 1, 1.38, 1.38 );
setScaleKey( spep_1 + 94, 1, 1.38, 1.38 );
setScaleKey( spep_1 + 96, 1, 1.39, 1.39 );
setScaleKey( spep_1 + 98, 1, 1.39, 1.39 );
setScaleKey( spep_1 + 100, 1, 1.38, 1.38 );
setScaleKey( spep_1 + 102, 1, 1.37, 1.37 );
setScaleKey( spep_1 + 104, 1, 1.37, 1.37 );
setScaleKey( spep_1 + 106, 1, 1.36, 1.36 );
setScaleKey( spep_1 + 108, 1, 1.35, 1.35 );
setScaleKey( spep_1 + 110, 1, 1.34, 1.34 );
setScaleKey( spep_1 + 112, 1, 1.34, 1.34 );
setScaleKey( spep_1 + 114, 1, 1.33, 1.33 );
setScaleKey( spep_1 + 116, 1, 1.32, 1.32 );
setScaleKey( spep_1 + 118, 1, 1.31, 1.31 );
setScaleKey( spep_1 + 120, 1, 1.31, 1.31 );
setScaleKey( spep_1 + 122, 1, 1.3, 1.3 );
setScaleKey( spep_1 + 124, 1, 1.29, 1.29 );
setScaleKey( spep_1 + 126, 1, 1.28, 1.28 );
setScaleKey( spep_1 + 128, 1, 1.28, 1.28 );
setScaleKey( spep_1 + 130, 1, 1.27, 1.27 );
setScaleKey( spep_1 + 132, 1, 1.26, 1.26 );
setScaleKey( spep_1 + 134, 1, 1.3, 1.3 );
setScaleKey( spep_1 + 136, 1, 1.33, 1.33 );
setScaleKey( spep_1 + 138, 1, 1.37, 1.37 );
setScaleKey( spep_1 + 140, 1, 1.39, 1.39 );
setScaleKey( spep_1 + 142, 1, 1.42, 1.42 );
setScaleKey( spep_1 + 144, 1, 1.47, 1.47 );
setScaleKey( spep_1 + 146, 1, 1.52, 1.52 );
setScaleKey( spep_1 + 148, 1, 1.75, 1.75 );
setScaleKey( spep_1 + 150, 1, 1.97, 1.97 );
setScaleKey( spep_1 + 152, 1, 2.2, 2.2 );
setScaleKey( spep_1 + 154, 1, 2.42, 2.42 );
setScaleKey( spep_1 + 156, 1, 2.65, 2.65 );
setScaleKey( spep_1 + 158, 1, 2.87, 2.87 );
setScaleKey( spep_1 + 160, 1, 3.1, 3.1 );
setScaleKey( spep_1 + 162, 1, 3.33, 3.33 );
setScaleKey( spep_1 + 164, 1, 3.55, 3.55 );
setScaleKey( spep_1 + 166, 1, 3.78, 3.78 );
setScaleKey( spep_1 + 168, 1, 4, 4 );
setScaleKey( spep_1 + 170, 1, 4.23, 4.23 );
setScaleKey( spep_1 + 172, 1, 4.45, 4.45 );
setScaleKey( spep_1 + 174, 1, 4.68, 4.68 );
setScaleKey( spep_1 + 176, 1, 4.9, 4.9 );
setScaleKey( spep_1 + 178, 1, 5.13, 5.13 );


setRotateKey( spep_1 + 45, 1, 0 );
--setRotateKey( spep_1 + 48, 1, 0 );
setRotateKey( spep_1 + 46, 1, -56.2 );
setRotateKey( spep_1 + 80, 1, -56.2 );
setRotateKey( spep_1 + 82, 1, -56.3 );
setRotateKey( spep_1 + 84, 1, -56.5 );
setRotateKey( spep_1 + 86, 1, -56.7 );
setRotateKey( spep_1 + 88, 1, -56.9 );
setRotateKey( spep_1 + 90, 1, -57.2 );
setRotateKey( spep_1 + 92, 1, -57.4 );
setRotateKey( spep_1 + 94, 1, -57.7 );
setRotateKey( spep_1 + 96, 1, -58 );
setRotateKey( spep_1 + 98, 1, -58.4 );
setRotateKey( spep_1 + 100, 1, -58.7 );
setRotateKey( spep_1 + 102, 1, -59 );
setRotateKey( spep_1 + 104, 1, -59.3 );
setRotateKey( spep_1 + 106, 1, -59.6 );
setRotateKey( spep_1 + 108, 1, -59.9 );
setRotateKey( spep_1 + 110, 1, -60.2 );
setRotateKey( spep_1 + 112, 1, -60.5 );
setRotateKey( spep_1 + 114, 1, -60.8 );
setRotateKey( spep_1 + 116, 1, -61.2 );
setRotateKey( spep_1 + 118, 1, -61.5 );
setRotateKey( spep_1 + 120, 1, -61.8 );
setRotateKey( spep_1 + 122, 1, -62.1 );
setRotateKey( spep_1 + 124, 1, -62.4 );
setRotateKey( spep_1 + 126, 1, -62.7 );
setRotateKey( spep_1 + 128, 1, -63 );
setRotateKey( spep_1 + 130, 1, -63.3 );
setRotateKey( spep_1 + 132, 1, -63.6 );
setRotateKey( spep_1 + 134, 1, -67 );
setRotateKey( spep_1 + 136, 1, -70.5 );
setRotateKey( spep_1 + 138, 1, -73.9 );
setRotateKey( spep_1 + 140, 1, -75.2 );
setRotateKey( spep_1 + 142, 1, -77.7 );
setRotateKey( spep_1 + 144, 1, -81.3 );
setRotateKey( spep_1 + 146, 1, -86 );
setRotateKey( spep_1 + 148, 1, -86.8 );
setRotateKey( spep_1 + 150, 1, -87.6 );
setRotateKey( spep_1 + 152, 1, -88.4 );
setRotateKey( spep_1 + 154, 1, -89.2 );
setRotateKey( spep_1 + 156, 1, -90 );
setRotateKey( spep_1 + 158, 1, -90.8 );
setRotateKey( spep_1 + 160, 1, -91.6 );
setRotateKey( spep_1 + 162, 1, -92.3 );
setRotateKey( spep_1 + 164, 1, -93.1 );
setRotateKey( spep_1 + 166, 1, -93.9 );
setRotateKey( spep_1 + 168, 1, -94.7 );
setRotateKey( spep_1 + 170, 1, -95.5 );
setRotateKey( spep_1 + 172, 1, -96.3 );
setRotateKey( spep_1 + 174, 1, -97.1 );
setRotateKey( spep_1 + 176, 1, -97.9 );
setRotateKey( spep_1 + 178, 1, -98.7 );

setShakeChara(spep_1+46,1,132,15);

--文字エントリー
ctbikuri = entryEffectLife( spep_1 + 20,  10001, 30, 0x100, -1, 0, -79.4, 254.4 );--!?
setEffMoveKey( spep_1 + 20, ctbikuri, -79.4, 254.4 , 0 );
setEffMoveKey( spep_1 + 22, ctbikuri, -79.5, 254.3 , 0 );
setEffMoveKey( spep_1 + 24, ctbikuri, -79.5, 254.2 , 0 );
setEffMoveKey( spep_1 + 26, ctbikuri, -75.5, 260.2 , 0 );
setEffMoveKey( spep_1 + 28, ctbikuri, -79.5, 254.2 , 0 );
setEffMoveKey( spep_1 + 30, ctbikuri, -83.5, 248.2 , 0 );
setEffMoveKey( spep_1 + 32, ctbikuri, -79.5, 254.2 , 0 );
setEffMoveKey( spep_1 + 34, ctbikuri, -83.5, 258.2 , 0 );
setEffMoveKey( spep_1 + 36, ctbikuri, -79.5, 254.2 , 0 );
setEffMoveKey( spep_1 + 38, ctbikuri, -83.5, 256.2 , 0 );
setEffMoveKey( spep_1 + 40, ctbikuri, -79.5, 254.2 , 0 );
setEffMoveKey( spep_1 + 42, ctbikuri, -81.5, 250.2 , 0 );
setEffMoveKey( spep_1 + 44, ctbikuri, -79.5, 254.2 , 0 );
setEffMoveKey( spep_1 + 50, ctbikuri, -79.5, 254.2 , 0 );

setEffScaleKey( spep_1 + 20, ctbikuri, 4.94, 4.94 );
setEffScaleKey( spep_1 + 22, ctbikuri, 3.91, 3.91 );
setEffScaleKey( spep_1 + 24, ctbikuri, 2.87, 2.87 );
setEffScaleKey( spep_1 + 50, ctbikuri, 2.87, 2.87 );

setEffRotateKey( spep_1 + 20, ctbikuri, -11.6 );
setEffRotateKey( spep_1 + 22, ctbikuri, -11.7 );
setEffRotateKey( spep_1 + 50, ctbikuri, -11.7 );

setEffAlphaKey( spep_1 + 20, ctbikuri, 255 );
setEffAlphaKey( spep_1 + 40, ctbikuri, 255 );
setEffAlphaKey( spep_1 + 42, ctbikuri, 170 );
setEffAlphaKey( spep_1 + 44, ctbikuri, 85 );
setEffAlphaKey( spep_1 + 50 ,ctbikuri, 0 );

--集中線
shuchuse2 = entryEffectLife( spep_1 + 46,  906, 128, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_1 + 46, shuchuse2, 0, 0 , 0 );
setEffMoveKey( spep_1 + 174, shuchuse2, 0, 0 , 0 );

setEffScaleKey( spep_1 + 46, shuchuse2, 1.5, 2.01 );
setEffScaleKey( spep_1 + 174, shuchuse2, 1.5, 2.01 );

setEffRotateKey( spep_1 + 46, shuchuse2, 0 );
setEffRotateKey( spep_1 + 174, shuchuse2, 0 );

setEffAlphaKey( spep_1 + 46, shuchuse2, 255 );
setEffAlphaKey( spep_1 + 174, shuchuse2, 255 );

--流線(縦)
ryusen = entryEffectLife( spep_1 + 84,  914, 52, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_1 + 84, ryusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 136, ryusen, 0, 0 , 0 );

setEffScaleKey( spep_1 + 84, ryusen, 4.83, 1.2 );
setEffScaleKey( spep_1 + 136, ryusen, 4.83, 1.2 );

setEffRotateKey( spep_1 + 84, ryusen, -90 );
setEffRotateKey( spep_1 + 136, ryusen, -90 );

--setEffAlphaKey( spep_1 + 89, ryusen, 43 );
setEffAlphaKey( spep_1 + 84, ryusen, 85 );
setEffAlphaKey( spep_1 + 86, ryusen, 128 );
setEffAlphaKey( spep_1 + 88, ryusen, 170 );
setEffAlphaKey( spep_1 + 90, ryusen, 213 );
setEffAlphaKey( spep_1 + 92, ryusen, 255 );
setEffAlphaKey( spep_1 + 136, ryusen, 255 );
--setEffAlphaKey( spep_1 + 138, ryusen, 128 );
--setEffAlphaKey( spep_1 + 140, ryusen, 0 );

--流線(斜め)
ryusen2 = entryEffectLife( spep_1 + 138,  923, 40, 0x80, -1, 0, -6.4, 0 );------------------------------------------
setEffMoveKey( spep_1 + 138, ryusen2, 0, -6.4 , 0 );
setEffMoveKey( spep_1 + 178, ryusen2, 0, -6.4 , 0 );

setEffScaleKey( spep_1 + 138, ryusen2,  1.34, 1.63 );
setEffScaleKey( spep_1 + 178, ryusen2,  1.34, 1.63);

setEffRotateKey( spep_1 + 138, ryusen2, 50 );
setEffRotateKey( spep_1 + 178, ryusen2, 50 );

setEffAlphaKey( spep_1 + 138, ryusen2, 51 );
setEffAlphaKey( spep_1 + 146, ryusen2, 153 );
setEffAlphaKey( spep_1 + 148, ryusen2, 255 );
setEffAlphaKey( spep_1 + 178, ryusen2, 255 );


--SE
SE1=playSe(spep_1+46,15);
stopSe(spep_1+84,SE1,5);
playSe(spep_1 +82,44);
playSe(spep_1 +138,8);





--白フェード
entryFade( spep_1+46, 0,  0, 5, fcolor_r, fcolor_g, fcolor_b, 180);     -- white fade
entryFade( spep_1+170, 7,  4, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_2=spep_1+178;

--------------------------------------
--敵に攻撃
--------------------------------------
--エフェクトの再生
zyubaba_front=entryEffectLife(spep_2,SP_03x,124,0x100,-1,0,0,0);

setEffMoveKey(spep_2,zyubaba_front,0,0,0);
setEffMoveKey(spep_2+124,zyubaba_front,0,0,0);
setEffScaleKey(spep_2,zyubaba_front,1.0,1.0);
setEffScaleKey(spep_2+124,zyubaba_front,1.0,1.0);
setEffAlphaKey(spep_2,zyubaba_front,255);
setEffAlphaKey(spep_2+124,zyubaba_front,255);
setEffRotateKey(spep_2,zyubaba_front,0);
setEffRotateKey(spep_2+124,zyubaba_front,0);

--エフェクトの再生
zyubaba_back=entryEffectLife(spep_2,SP_04x,124,0x80,-1,0,0,0);

setEffMoveKey(spep_2,zyubaba_back,0,0,0);
setEffMoveKey(spep_2+124,zyubaba_back,0,0,0);
setEffScaleKey(spep_2,zyubaba_back,1.0,1.0);
setEffScaleKey(spep_2+124,zyubaba_back,1.0,1.0);
setEffAlphaKey(spep_2,zyubaba_back,255);
setEffAlphaKey(spep_2+124,zyubaba_back,255);
setEffRotateKey(spep_2,zyubaba_back,0);
setEffRotateKey(spep_2+124,zyubaba_back,0);


--敵に動き
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 124, 1, 0 );
changeAnime( spep_2 + 0, 1, 106 );
changeAnime( spep_2 + 26, 1, 108 );
changeAnime( spep_2 + 74, 1, 106 );

setMoveKey( spep_2 + 0, 1, 1473.6, 2498.4 , 0 );
setMoveKey( spep_2 + 2, 1, 1202.2, 2117.5 , 0 );
setMoveKey( spep_2 + 4, 1, 1021.9, 1748.4 , 0 );
setMoveKey( spep_2 + 6, 1, 770.1, 1350.1 , 0 );
setMoveKey( spep_2 + 8, 1, 570.2, 998.3 , 0 );
setMoveKey( spep_2 + 10, 1, 493, 906.6 , 0 );
setMoveKey( spep_2 + 12, 1, 463.5, 821.1 , 0 );
setMoveKey( spep_2 + 14, 1, 393.5, 717.6 , 0 );
setMoveKey( spep_2 + 16, 1, 356.8, 643.9 , 0 );
setMoveKey( spep_2 + 18, 1, 286.1, 553 , 0 );
setMoveKey( spep_2 + 20, 1, 250.2, 466.7 , 0 );
setMoveKey( spep_2 + 22, 1, 185.3, 367.8 , 0 );
--setMoveKey( spep_2 + 24, 1, 143.5, 289.5 , 0 );
--etMoveKey( spep_2 + 26, 1, 79.1, 199.4 , 0 );
--setMoveKey( spep_2 + 29, 1, 89.7, 200 , 0 );
setMoveKey( spep_2 + 26, 1, 178.4, 224.5 , 0 );
setMoveKey( spep_2 + 32, 1, 174.2, 201.1 , 0 );
setMoveKey( spep_2 + 34, 1, 177.3, 222.8 , 0 );
setMoveKey( spep_2 + 36, 1, 173.1, 221.9 , 0 );
setMoveKey( spep_2 + 38, 1, 176.3, 221 , 0 );
setMoveKey( spep_2 + 40, 1, 172, 212.7 , 0 );
setMoveKey( spep_2 + 42, 1, 175.2, 219.3 , 0 );
setMoveKey( spep_2 + 44, 1, 167.2, 214.8 , 0 );
setMoveKey( spep_2 + 46, 1, 174.1, 217.6 , 0 );
setMoveKey( spep_2 + 48, 1, 169.9, 205.6 , 0 );
setMoveKey( spep_2 + 50, 1, 173.1, 215.9 , 0 );
setMoveKey( spep_2 + 52, 1, 165.1, 211.4 , 0 );
setMoveKey( spep_2 + 54, 1, 172, 214.2 , 0 );
setMoveKey( spep_2 + 56, 1, 167.8, 198.5 , 0 );
setMoveKey( spep_2 + 58, 1, 171, 212.5 , 0 );
setMoveKey( spep_2 + 60, 1, 170.4, 211.6 , 0 );
setMoveKey( spep_2 + 62, 1, 162.5, 207.1 , 0 );
setMoveKey( spep_2 + 64, 1, 169.4, 209.9 , 0 );
setMoveKey( spep_2 + 66, 1, 161.5, 198 , 0 );
setMoveKey( spep_2 + 68, 1, 168.3, 208.2 , 0 );
setMoveKey( spep_2 + 70, 1, 160.4, 199.9 , 0 );
setMoveKey( spep_2 + 73, 1, 167.2, 206.4 , 0 );
setMoveKey( spep_2 + 74, 1, 153.8, 218 , 0 );
setMoveKey( spep_2 + 76, 1, 151, 229.4 , 0 );
setMoveKey( spep_2 + 78, 1, 153.9, 219.9 , 0 );
setMoveKey( spep_2 + 80, 1, 145.1, 228.4 , 0 );
setMoveKey( spep_2 + 82, 1, 154, 221.8 , 0 );
setMoveKey( spep_2 + 84, 1, 151.3, 233.2 , 0 );
setMoveKey( spep_2 + 86, 1, 154.1, 223.6 , 0 );
setMoveKey( spep_2 + 88, 1, 145.3, 232.2 , 0 );
setMoveKey( spep_2 + 90, 1, 154.1, 225.5 , 0 );
setMoveKey( spep_2 + 92, 1, 151.4, 236.9 , 0 );
setMoveKey( spep_2 + 94, 1, 154.2, 227.3 , 0 );
setMoveKey( spep_2 + 96, 1, 145.5, 235.8 , 0 );
setMoveKey( spep_2 + 98, 1, 154.3, 229.2 , 0 );
setMoveKey( spep_2 + 100, 1, 151.6, 240.5 , 0 );
setMoveKey( spep_2 + 102, 1, 154.4, 231 , 0 );
setMoveKey( spep_2 + 104, 1, 145.7, 239.4 , 0 );
setMoveKey( spep_2 + 106, 1, 154.5, 232.8 , 0 );
setMoveKey( spep_2 + 108, 1, 151.8, 244 , 0 );
setMoveKey( spep_2 + 110, 1, 154.5, 234.6 , 0 );
setMoveKey( spep_2 + 112, 1, 154.6, 235.5 , 0 );
--setMoveKey( spep_2 + 114, 1, 151.3, 244.9 , 0 );
--setMoveKey( spep_2 + 116, 1, 153.5, 233.6 , 0 );
--setMoveKey( spep_2 + 118, 1, 144.3, 240.2 , 0 );
--setMoveKey( spep_2 + 120, 1, 152.4, 231.8 , 0 );
--setMoveKey( spep_2 + 122, 1, 149.2, 241.2 , 0 );
--setMoveKey( spep_2 + 124, 1, 151.4, 230 , 0 );
--setMoveKey( spep_2 + 126, 1, 142.2, 236.5 , 0 );
--setMoveKey( spep_2 + 128, 1, 150.3, 228.2 , 0 );
--setMoveKey( spep_2 + 130, 1, 147.1, 237.5 , 0 );
--setMoveKey( spep_2 + 132, 1, 149.3, 226.4 , 0 );
--setMoveKey( spep_2 + 134, 1, 140.2, 232.9 , 0 );
--setMoveKey( spep_2 + 136, 1, 148.2, 224.6 , 0 );
setMoveKey( spep_2 + 124, 1, 158, 253.8 , 0 );

setScaleKey( spep_2 + 0, 1, 7.31, 7.31 );
setScaleKey( spep_2 + 2, 1, 6.37, 6.37 );
setScaleKey( spep_2 + 4, 1, 5.43, 5.43 );
setScaleKey( spep_2 + 6, 1, 4.49, 4.49 );
setScaleKey( spep_2 + 8, 1, 3.55, 3.55 );
setScaleKey( spep_2 + 10, 1, 3.33, 3.33 );
setScaleKey( spep_2 + 12, 1, 3.11, 3.11 );
setScaleKey( spep_2 + 14, 1, 2.89, 2.89 );
setScaleKey( spep_2 + 16, 1, 2.66, 2.66 );
setScaleKey( spep_2 + 18, 1, 2.44, 2.44 );
setScaleKey( spep_2 + 20, 1, 2.22, 2.22 );
setScaleKey( spep_2 + 22, 1, 1.99, 1.99 );
setScaleKey( spep_2 + 24, 1, 1.77, 1.77 );
setScaleKey( spep_2 + 26, 1, 1.55, 1.55 );
--setScaleKey( spep_2 + 28, 1, 1.55, 1.55 );
--setScaleKey( spep_2 + 29, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 37, 1, 1.47, 1.47 );
setScaleKey( spep_2 + 36, 1, 1.47, 1.47 );
setScaleKey( spep_2 + 38, 1, 1.46, 1.46 );
setScaleKey( spep_2 + 50, 1, 1.46, 1.46 );
setScaleKey( spep_2 + 52, 1, 1.45, 1.45 );
setScaleKey( spep_2 + 64, 1, 1.45, 1.45 );
setScaleKey( spep_2 + 66, 1, 1.44, 1.44 );
setScaleKey( spep_2 + 73, 1, 1.44, 1.44 );
setScaleKey( spep_2 + 74, 1, 1.51, 1.51 );
setScaleKey( spep_2 + 82, 1, 1.51, 1.51 );
setScaleKey( spep_2 + 84, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 94, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 96, 1, 1.49, 1.49 );
setScaleKey( spep_2 + 106, 1, 1.49, 1.49 );
setScaleKey( spep_2 + 108, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 112, 1, 1.48, 1.48 );
--setScaleKey( spep_2 + 120, 1, 1.47, 1.47 );
--setScaleKey( spep_2 + 130, 1, 1.47, 1.47 );
--setScaleKey( spep_2 + 132, 1, 1.46, 1.46 );
setScaleKey( spep_2 + 124, 1, 1.56, 1.56 );

setRotateKey( spep_2 + 0, 1, -99 );
--setRotateKey( spep_2 + 28, 1, -99 );
setRotateKey( spep_2 + 25, 1, -99 );
setRotateKey( spep_2 + 26, 1, -20.8 );
setRotateKey( spep_2 + 32, 1, -21 );
setRotateKey( spep_2 + 73, 1, -21 );
setRotateKey( spep_2 + 74, 1, -16.3 );
setRotateKey( spep_2 + 112, 1, -16.3 );
setRotateKey( spep_2 + 124, 1, -10.3 );------------------------

--集中線
shuchuse3 = entryEffectLife( spep_2 + 0,   906, 124, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, shuchuse3, 0, 0 , 0 );
setEffMoveKey( spep_2 + 124, shuchuse3, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchuse3, 1.32, 1.92 );
setEffScaleKey( spep_2 + 124, shuchuse3, 1.32, 1.92 );

setEffRotateKey( spep_2 + 0, shuchuse3, 0 );
setEffRotateKey( spep_2 + 124, shuchuse3, 0 );

setEffAlphaKey( spep_2 + 0, shuchuse3, 255 );
setEffAlphaKey( spep_2 + 124, shuchuse3, 255 );

--白フェード
entryFade( spep_2+24, 6,  0, 4, fcolor_r, fcolor_g, fcolor_b, 180);     -- white fade
entryFade( spep_2+108, 14,  6, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--SE
playSe(spep_2 +29,1032);
playSe(spep_2 +44,1032);
playSe(spep_2 +62,1032);
playSe(spep_2 +78,1032);
playSe(spep_2 +93,1032);


--背景黒
entryFadeBg( spep_2, 0, 124, 0, 0, 0, 0, 200);       -- ベース暗め　背景

--次の準備
spep_3=spep_2+124;

--------------------------------------
--カードカットイン(90F)
--------------------------------------

playSe(spep_3,SE_05);
shuchusen9=entryEffectLife(spep_3,906,90,0x100,-1,0,0,0);   -- 集中線
setEffScaleKey(spep_3,shuchusen9,1.6,1.6);

speff2=entryEffect(spep_3,1507,0x80,-1,0,0,0);   -- カード
setEffReplaceTexture(speff2,1,1);
setEffReplaceTexture(speff2,2,0);-- カード差し替え
setEffReplaceTexture(speff2,5,4);-- 技名テクスチャ差し替え

-- ** エフェクト等 ** --
entryFade(spep_3+85,3,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_4=spep_3+90


--------------------------------------
--溜め
--------------------------------------

--エフェクトの再生
field=entryEffectLife(spep_4,SP_05x,176,0x100,-1,0,0,0);

setEffMoveKey(spep_4,field,0,0,0);
setEffMoveKey(spep_4+176,field,0,0,0);
setEffScaleKey(spep_4,field,1.0,1.0);
setEffScaleKey(spep_4+176,field,1.0,1.0);
setEffAlphaKey(spep_4,field,255);
setEffAlphaKey(spep_4+176,field,255);
setEffRotateKey(spep_4,field,0);
setEffRotateKey(spep_4+176,field,0);

--集中線
shuchuse4 = entryEffectLife( spep_4 + 0,  906, 178, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_4 + 0, shuchuse4, 0, 0 , 0 );
setEffMoveKey( spep_4 + 178, shuchuse4, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, shuchuse4, 1.4, 1.75 );
setEffScaleKey( spep_4 + 178, shuchuse4, 1.4, 1.75 );

setEffRotateKey( spep_4 + 0, shuchuse4, 0 );
setEffRotateKey( spep_4 + 178, shuchuse4, 0 );

setEffAlphaKey( spep_4 + 0, shuchuse4, 255 );
setEffAlphaKey( spep_4 + 178, shuchuse4, 255 );

--文字エントリー
ctzuo = entryEffectLife( spep_4 + 100,  10012, 36, 0x100, -1, 0, 38.7, 220.5 ); --ズオッ
setEffMoveKey( spep_4 + 100, ctzuo, 38.7, 220.5 , 0 );
setEffMoveKey( spep_4 + 102, ctzuo, 65, 248.6 , 0 );
setEffMoveKey( spep_4 + 104, ctzuo, 77.9, 290.1 , 0 );
setEffMoveKey( spep_4 + 106, ctzuo, 113.7, 308.8 , 0 );
setEffMoveKey( spep_4 + 108, ctzuo, 97.7, 324.8 , 0 );
setEffMoveKey( spep_4 + 110, ctzuo, 113.7, 308.8 , 0 );
setEffMoveKey( spep_4 + 112, ctzuo, 97.7, 324.8 , 0 );
setEffMoveKey( spep_4 + 114, ctzuo, 113.7, 308.8 , 0 );
setEffMoveKey( spep_4 + 116, ctzuo, 97.7, 324.8 , 0 );
setEffMoveKey( spep_4 + 118, ctzuo, 113.7, 308.8 , 0 );
setEffMoveKey( spep_4 + 120, ctzuo, 97.7, 324.8 , 0 );
setEffMoveKey( spep_4 + 122, ctzuo, 113.7, 308.8 , 0 );
setEffMoveKey( spep_4 + 124, ctzuo, 97.7, 324.8 , 0 );
setEffMoveKey( spep_4 + 126, ctzuo, 113.7, 308.8 , 0 );
setEffMoveKey( spep_4 + 128, ctzuo, 97.7, 324.8 , 0 );
setEffMoveKey( spep_4 + 130, ctzuo, 137.9, 304.7 , 0 );
setEffMoveKey( spep_4 + 132, ctzuo, 134, 328.7 , 0 );
setEffMoveKey( spep_4 + 134, ctzuo, 186.1, 296.5 , 0 );
setEffMoveKey( spep_4 + 136, ctzuo, 210.3, 292.4 , 0 );

setEffScaleKey( spep_4 + 100, ctzuo, 0.34, 0.34 );
setEffScaleKey( spep_4 + 102, ctzuo, 1.13, 1.13 );
setEffScaleKey( spep_4 + 104, ctzuo, 1.94, 1.94 );
setEffScaleKey( spep_4 + 106, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_4 + 128, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_4 + 130, ctzuo, 3.75, 3.75 );
setEffScaleKey( spep_4 + 132, ctzuo, 4.78, 4.78 );
setEffScaleKey( spep_4 + 134, ctzuo, 5.8, 5.8 );
setEffScaleKey( spep_4 + 136, ctzuo, 6.82, 6.82 );

setEffRotateKey( spep_4 + 100, ctzuo, 27.2 );
setEffRotateKey( spep_4 + 136, ctzuo, 27.2 );

setEffAlphaKey( spep_4 + 100, ctzuo, 255 );
setEffAlphaKey( spep_4 + 128, ctzuo, 255 );
setEffAlphaKey( spep_4 + 130, ctzuo, 191 );
setEffAlphaKey( spep_4 + 132, ctzuo, 128 );
setEffAlphaKey( spep_4 + 134, ctzuo, 64 );
setEffAlphaKey( spep_4 + 136, ctzuo, 0 );


--se
playSe(spep_4,SE_03);
playSe(spep_4+20,SE_03);
playSe(spep_4+40,SE_03);
playSe(spep_4+60,SE_03);
playSe(spep_4+80,SE_03);
--playSe(spep_4+75,SE_03);
--playSe(spep_4+90,SE_03);
playSe(  spep_4+100, SE_10);


--白フェード
entryFade( spep_4+93, 0,  7, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_4+168, 8,  2, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--背景黒
entryFadeBg( spep_4, 0, 176, 0,0, 0, 0, 200);       -- ベース暗め　背景

--次の準備
spep_5 = spep_4+176;
------------------------------------------------------
-- ギャン(60F)
------------------------------------------------------
setDisp( spep_5-1, 1, 0);

gyan = entryEffect(  spep_5,  190010,  0x100,  -1,  0,  0,  0);  --ギャン
setEffScaleKey(  spep_5,  gyan,  1.0,  1.0);
setEffAlphaKey(  spep_5,  gyan,  255);

-- 書き文字エントリー --
ct_06 = entryEffectLife( spep_5, 10006, 58, 0x100, -1, 0, 0, 300);    -- ギャン

setEffScaleKey( spep_5, ct_06, 2.0, 2.0);
setEffAlphaKey( spep_5, ct_06, 255);
setEffScaleKey( spep_5+10, ct_06, 3.8, 3.8);
setEffScaleKey( spep_5+58, ct_06, 4.5, 4.5);
setEffAlphaKey( spep_5+58, ct_06, 255);
setEffShake( spep_5, ct_06, 58, 10);

playSe(  spep_5, SE_09);

--entryFade(  spep_5+47,  6,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryFadeBg(spep_5,0,60,0,0,0,0,255);
entryFade( spep_5+50, 4,  8, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


--次の準備
spep_6 = spep_5+60;
------------------------------------------------------
-- 爆発
------------------------------------------------------

--エフェクトの再生
explosion=entryEffect(spep_6,1909,0x80,-1,0,0,0);

setEffMoveKey(spep_6,explosion,0,0,0);
setEffMoveKey(spep_6+180,explosion,0,0,0);
setEffScaleKey(spep_6,explosion,1.1,1.1);
setEffScaleKey(spep_6+180,explosion,1.1,1.1);
setEffAlphaKey(spep_6,explosion,255);
setEffAlphaKey(spep_6+180,explosion,255);
setEffRotateKey(spep_6,explosion,0);
setEffRotateKey(spep_6+180,explosion,0);

--集中線
shuchuse4 = entryEffectLife( spep_6 ,  906, 180, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_6 , shuchuse4, 0, 0 , 0 );
setEffMoveKey( spep_6 + 180, shuchuse4, 0, 0 , 0 );

setEffScaleKey( spep_6 , shuchuse4, 1.43, 2.03 );
setEffScaleKey( spep_6 + 180, shuchuse4, 1.43, 2.03 );

setEffRotateKey( spep_6 , shuchuse4, 0 );
setEffRotateKey( spep_6 + 180, shuchuse4, 0 );

setEffAlphaKey( spep_6 , shuchuse4, 255 );
setEffAlphaKey( spep_6 + 180, shuchuse4, 255 );

--SE
playSe(  spep_6, SE_10);

-- ダメージ表示
dealDamage(spep_6+60);

entryFade( spep_6+150, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_6+160);

end

end

------------------------------------------------------
-- ２人目以降の演出
------------------------------------------------------

if (_IS_SPECIAL_AIM_ALL_ == 1) then

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

SP_ATK_4 = 0;

setVisibleUI( SP_ATK_4, 0);
setDisp( SP_ATK_4, 0, 0);

------------------------------------------------------
-- 回避
------------------------------------------------------

	if(_IS_DODGE_ == 1) then

	SP_dodge = SP_ATK_4; --エンドフェイズのフレーム数を置き換える

	playSe( SP_dodge-12, 1042);

	speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
	setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

	kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
		if (_IS_PLAYER_SIDE_ == 1) then

			setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);

		else

			setEffScaleKey( SP_dodge, kaihi, -1.0, 1.0);

		end

	setEffAlphaKey( SP_dodge, kaihi, 255);

	pauseAll( SP_dodge, 67);

	entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

	endPhase(SP_dodge+10);
	do return end
	else end


setDisp( SP_ATK_4, 1, 1);
setMoveKey(  SP_ATK_4,    1,  120,    0,  128);
setScaleKey( SP_ATK_4,    1,  1.0, 1.0);
setMoveKey(  SP_ATK_4+1,    1,    0,   0,   128);
setScaleKey( SP_ATK_4+1,    1,  0.1, 0.1);

changeAnime( SP_ATK_4+1, 1, 107);                         -- 手前ダメージ
setAnimeLoop( SP_ATK_4+1, 1, 1);
explosion2=entryEffect( SP_ATK_4+1, 1909,  0x80,  -1,  0,  0,  0); -- 全体攻撃用背景
setEffScaleKey(SP_ATK_4+1,explosion2,1.1,1.1);
playSe( SP_ATK_4+1, SE_10);

setMoveKey(  SP_ATK_4+8,    1,    0,    -250,   128);
setMoveKey(  SP_ATK_4+15,   1,  -60,    0,  -100);
setShake(SP_ATK_4+10,6,15);
setShake(SP_ATK_4+17,15,9);

setRotateKey( SP_ATK_4,  1,  30 );
setRotateKey( SP_ATK_4+2,  1,  80 );
setRotateKey( SP_ATK_4+4,  1, 120 );
setRotateKey( SP_ATK_4+6,  1, 160 );
setRotateKey( SP_ATK_4+8,  1, 200 );
setRotateKey( SP_ATK_4+10,  1, 260 );
setRotateKey( SP_ATK_4+12,  1, 320 );
setRotateKey( SP_ATK_4+14,  1,   0 );

setShakeChara( SP_ATK_4+14, 1, 5,  10);
setShakeChara( SP_ATK_4+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( SP_ATK_4+14, 10005, 100, 0, -1, 0, -100, 230); -- ガッ
setEffShake( SP_ATK_4+15, ct, 30, 10);
setEffRotateKey( SP_ATK_4+15, ct, -40);
setEffScaleKey( SP_ATK_4+15, ct, 4.0, 4.0);
setEffScaleKey( SP_ATK_4+16, ct, 2.0, 2.0);
setEffScaleKey( SP_ATK_4+17, ct, 2.6, 2.6);
setEffScaleKey( SP_ATK_4+18, ct, 4.0, 4.0);
setEffScaleKey( SP_ATK_4+19, ct, 2.6, 2.6);
setEffScaleKey( SP_ATK_4+20, ct, 3.8, 3.8);
setEffScaleKey( SP_ATK_4+110, ct, 3.8, 3.8);
setEffAlphaKey( SP_ATK_4+15, ct, 255);
setEffAlphaKey( SP_ATK_4+105, ct, 255);
setEffAlphaKey( SP_ATK_4+115, ct, 0);

playSe( SP_ATK_4+20, SE_11);

shuchusen6 = entryEffectLife( SP_ATK_4, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線

entryEffect( SP_ATK_4+20, 1600,  0x00,  -1,  0,30, -70);   -- ひび割れ

entryFadeBg( SP_ATK_4, 0, 90, 0, 10, 10, 10, 190);          -- ベース暗め　背景

setDamage( SP_ATK_4+33, 1, 0);  -- ダメージ振動等

-- ダメージ表示
dealDamage(SP_ATK_4+33);

entryFade( SP_ATK_4+70, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(SP_ATK_4+80);

end
