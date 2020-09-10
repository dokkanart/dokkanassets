--人造人間21号　4014750
--sp_effect_b4_00056


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
SP_01=151927;--	溜め
SP_02=151928;--	手前に突進
SP_03=151929;--	連撃
SP_04=151930;--	着地・手前
SP_05=151931;--	着地・奥
SP_06=151932;--	放つ



--敵側は味方側に1xをつけてます
SP_01x=151933;--溜め	(敵)
SP_02x=151934;--手前に突進(敵)
SP_03x=151935;--連撃	(敵)
SP_04x=151936;--着地・手前(敵)
SP_05x=151937;--着地・奥	(敵)
SP_06x=151938;--放つ	(敵)





------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

setDisp( 0, 1, 0);
setDisp( 0, 0, 0);
setMoveKey(   0,   0,    0, -2000,   0);
setMoveKey(   0,   1,    0, -54,   0);
setMoveKey(   1,   0,    0, -2000,   0);
setMoveKey(   1,   1,    0, -54,   0);
setMoveKey(   2,   0,    0, -2000,   0);
setMoveKey(   2,   1,    0, -54,   0);
setMoveKey(   3,   0,    0, -2000,   0);
setMoveKey(   3,   1,    0, -54,   0);

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
-- 溜め
------------------------------------------------------
spep_0=0;


--エフェクトの再生
tame=entryEffectLife(spep_0,SP_01,160,0x100,-1,0,0,0);

setEffMoveKey(spep_0,tame,0,0,0);
setEffMoveKey(spep_0+160,tame,0,0,0);
setEffScaleKey(spep_0,tame,1.0,1.0);
setEffScaleKey(spep_0+160,tame,1.0,1.0);
setEffAlphaKey(spep_0,tame,255);
setEffAlphaKey(spep_0+160,tame,255);
setEffRotateKey(spep_0,tame,0);
setEffRotateKey(spep_0+160,tame,0);

--文字エントリー
ctzuzuzun = entryEffectLife( spep_0 + 28,  10013, 38, 0x100, -1, 0, 20.1, 249.8 );
setEffMoveKey( spep_0 + 28, ctzuzuzun, 20.1, 249.8 , 0 );
setEffMoveKey( spep_0 + 30, ctzuzuzun, 23.5, 299.3 , 0 );
setEffMoveKey( spep_0 + 32, ctzuzuzun, 40.2, 359.2 , 0 );
setEffMoveKey( spep_0 + 34, ctzuzuzun, 31.2, 355 , 0 );
setEffMoveKey( spep_0 + 36, ctzuzuzun, 41.1, 364.8 , 0 );
setEffMoveKey( spep_0 + 38, ctzuzuzun, 31.1, 354.5 , 0 );
setEffMoveKey( spep_0 + 40, ctzuzuzun, 41.1, 364.5 , 0 );
setEffMoveKey( spep_0 + 42, ctzuzuzun, 31.1, 354.5 , 0 );
setEffMoveKey( spep_0 + 44, ctzuzuzun, 41.1, 364.5 , 0 );
setEffMoveKey( spep_0 + 46, ctzuzuzun, 31.1, 354.5 , 0 );
setEffMoveKey( spep_0 + 48, ctzuzuzun, 41.1, 364.5 , 0 );
setEffMoveKey( spep_0 + 50, ctzuzuzun, 31.1, 354.5 , 0 );
setEffMoveKey( spep_0 + 52, ctzuzuzun, 41.1, 364.5 , 0 );
setEffMoveKey( spep_0 + 54, ctzuzuzun, 31.1, 354.5 , 0 );
setEffMoveKey( spep_0 + 56, ctzuzuzun, 41.1, 364.5 , 0 );
setEffMoveKey( spep_0 + 58, ctzuzuzun, 31.1, 354.5 , 0 );
setEffMoveKey( spep_0 + 60, ctzuzuzun, 41.1, 364.5 , 0 );
setEffMoveKey( spep_0 + 62, ctzuzuzun, 31.1, 354.5 , 0 );
setEffMoveKey( spep_0 + 64, ctzuzuzun, 41.1, 364.5 , 0 );
setEffMoveKey( spep_0 + 66, ctzuzuzun, 41.1, 364.5 , 0 );

setEffScaleKey( spep_0 + 28, ctzuzuzun, 1.11, 1.11 );
setEffScaleKey( spep_0 + 30, ctzuzuzun, 1.98, 1.98 );
setEffScaleKey( spep_0 + 32, ctzuzuzun, 2.83, 2.83 );
setEffScaleKey( spep_0 + 34, ctzuzuzun, 2.92, 2.92 );
setEffScaleKey( spep_0 + 66, ctzuzuzun, 2.92, 2.92 );

setEffRotateKey( spep_0 + 28, ctzuzuzun, -5 );
setEffRotateKey( spep_0 + 66, ctzuzuzun, -5 );

setEffAlphaKey( spep_0 + 28, ctzuzuzun, 255 );
setEffAlphaKey( spep_0 + 48, ctzuzuzun, 255 );
setEffAlphaKey( spep_0 + 50, ctzuzuzun, 215 );
setEffAlphaKey( spep_0 + 52, ctzuzuzun, 164 );
setEffAlphaKey( spep_0 + 54, ctzuzuzun, 121 );
setEffAlphaKey( spep_0 + 56, ctzuzuzun, 84 );
setEffAlphaKey( spep_0 + 58, ctzuzuzun, 54 );
setEffAlphaKey( spep_0 + 60, ctzuzuzun, 30 );
setEffAlphaKey( spep_0 + 62, ctzuzuzun, 14 );
setEffAlphaKey( spep_0 + 64, ctzuzuzun, 3 );
setEffAlphaKey( spep_0 + 66, ctzuzuzun, 0 );

--集中線
shuchu1 = entryEffectLife( spep_0 + 28,  906, 130, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 28, shuchu1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 158, shuchu1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 28, shuchu1, 1.43, 2.03 );
setEffScaleKey( spep_0 + 158, shuchu1, 1.43, 2.03 );

setEffRotateKey( spep_0 + 28, shuchu1, 180 );
setEffRotateKey( spep_0 + 158, shuchu1, 180 );

setEffAlphaKey( spep_0 + 28, shuchu1, 255 );
setEffAlphaKey( spep_0 + 158, shuchu1, 255 );

--顔カットイン
speff=entryEffect(spep_0+65,1504,0x100,-1,0,0,0);  --カットイン(顔)
setEffReplaceTexture(speff,3,2);  --カットイン差し替え
speff1=entryEffect(spep_0+65,1505,0x100,-1,0,0,0);  --カットイン(セリフ)
setEffReplaceTexture(speff1,4,5);  --セリフカットイン差し替え

--文字エントリー
ctgogo=entryEffectLife(spep_0+78,190006,69,0x100,-1,-120,500);--ゴゴゴ
setEffMoveKey(spep_0+78,ctgogo,-120,500,0);
setEffMoveKey(spep_0+147,ctgogo,-120,500,0);
setEffScaleKey(spep_0+78, ctgogo, 0.7, 0.7);
setEffScaleKey(spep_0+147, ctgogo, 0.7, 0.7);
setEffRotateKey(spep_0+78,ctgogo,-5);
setEffRotateKey(spep_0+147,ctgogo,-5);

--白フェード
entryFade( spep_0+25, 0,  5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_0+151, 7,  3, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--黒背景
entryFadeBg(spep_0+26, 0, 134, 0, 0, 0, 0, 180);  -- 黒　背景

--SE
playSe( spep_0+30, SE_01);
playSe(spep_0 + 78,SE_04);

--次の準備
spep_1=spep_0+160;
------------------------------------------------------
-- 手前に突進
------------------------------------------------------

--エフェクトの再生
rush=entryEffectLife(spep_1,SP_02,69,0x100,-1,0,0,0);

setEffMoveKey(spep_1,rush,0,0,0);
setEffMoveKey(spep_1+69,rush,0,0,0);
setEffScaleKey(spep_1,rush,1.0,1.0);
setEffScaleKey(spep_1+69,rush,1.0,1.0);
setEffAlphaKey(spep_1,rush,255);
setEffAlphaKey(spep_1+69,rush,255);
setEffRotateKey(spep_1,rush,0);
setEffRotateKey(spep_1+69,rush,0);

--文字エントリー
ctzuoltu = entryEffectLife( spep_1 + 0,  10012, 36, 0x100, -1, 0, 38.7, 220.5 );--ズオッ
setEffMoveKey( spep_1 + 0, ctzuoltu, 38.7, 220.5 , 0 );
setEffMoveKey( spep_1 + 2, ctzuoltu, 65, 248.6 , 0 );
setEffMoveKey( spep_1 + 4, ctzuoltu, 77.9, 290.1 , 0 );
setEffMoveKey( spep_1 + 6, ctzuoltu, 113.7, 308.8 , 0 );
setEffMoveKey( spep_1 + 8, ctzuoltu, 97.7, 324.8 , 0 );
setEffMoveKey( spep_1 + 10, ctzuoltu, 113.7, 308.8 , 0 );
setEffMoveKey( spep_1 + 12, ctzuoltu, 97.7, 324.8 , 0 );
setEffMoveKey( spep_1 + 14, ctzuoltu, 113.7, 308.8 , 0 );
setEffMoveKey( spep_1 + 16, ctzuoltu, 97.7, 324.8 , 0 );
setEffMoveKey( spep_1 + 18, ctzuoltu, 113.7, 308.8 , 0 );
setEffMoveKey( spep_1 + 20, ctzuoltu, 97.7, 324.8 , 0 );
setEffMoveKey( spep_1 + 22, ctzuoltu, 113.7, 308.8 , 0 );
setEffMoveKey( spep_1 + 24, ctzuoltu, 97.7, 324.8 , 0 );
setEffMoveKey( spep_1 + 26, ctzuoltu, 113.7, 308.8 , 0 );
setEffMoveKey( spep_1 + 28, ctzuoltu, 97.7, 324.8 , 0 );
setEffMoveKey( spep_1 + 30, ctzuoltu, 137.9, 304.7 , 0 );
setEffMoveKey( spep_1 + 32, ctzuoltu, 134, 328.7 , 0 );
setEffMoveKey( spep_1 + 34, ctzuoltu, 186.1, 296.5 , 0 );
setEffMoveKey( spep_1 + 36, ctzuoltu, 210.3, 292.4 , 0 );

setEffScaleKey( spep_1 + 0, ctzuoltu, 0.34, 0.34 );
setEffScaleKey( spep_1 + 2, ctzuoltu, 1.13, 1.13 );
setEffScaleKey( spep_1 + 4, ctzuoltu, 1.94, 1.94 );
setEffScaleKey( spep_1 + 6, ctzuoltu, 2.73, 2.73 );
setEffScaleKey( spep_1 + 28, ctzuoltu, 2.73, 2.73 );
setEffScaleKey( spep_1 + 30, ctzuoltu, 3.75, 3.75 );
setEffScaleKey( spep_1 + 32, ctzuoltu, 4.78, 4.78 );
setEffScaleKey( spep_1 + 34, ctzuoltu, 5.8, 5.8 );
setEffScaleKey( spep_1 + 36, ctzuoltu, 6.82, 6.82 );

setEffRotateKey( spep_1 + 0, ctzuoltu, 27.2 );
setEffRotateKey( spep_1 + 36, ctzuoltu, 27.2 );

setEffAlphaKey( spep_1 + 0, ctzuoltu, 255 );
setEffAlphaKey( spep_1 + 28, ctzuoltu, 255 );
setEffAlphaKey( spep_1 + 30, ctzuoltu, 191 );
setEffAlphaKey( spep_1 + 32, ctzuoltu, 128 );
setEffAlphaKey( spep_1 + 34, ctzuoltu, 64 );
setEffAlphaKey( spep_1 + 36, ctzuoltu, 0 );

--集中線
shuchu2 = entryEffectLife( spep_1 + 0,  906, 69, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_1 + 0, shuchu2, 0, 0 , 0 );
setEffMoveKey( spep_1 + 69, shuchu2, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchu2, 1.42, 2.05 );
setEffScaleKey( spep_1 + 69, shuchu2, 1.42, 2.05 );

setEffRotateKey( spep_1 + 0, shuchu2, 0 );
setEffRotateKey( spep_1 + 69, shuchu2, 0 );

setEffAlphaKey( spep_1 + 0, shuchu2, 255 );
setEffAlphaKey( spep_1 + 69, shuchu2, 255 );

--白フェード
entryFade( spep_1+63, 5,  2, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--黒背景
entryFadeBg(spep_1, 0, 70, 0, 0, 0, 0, 180);  -- 黒　背景

--SE
playSe(spep_1,9);

--次の準備
spep_2=spep_1+70;

------------------------------------------------------
-- 連撃
------------------------------------------------------
--エフェクトの再生
attack=entryEffectLife(spep_2,SP_03,279,0x100,-1,0,0,0);

setEffMoveKey(spep_2,attack,0,0,0);
setEffMoveKey(spep_2+279,attack,0,0,0);
setEffScaleKey(spep_2,attack,1.0,1.0);
setEffScaleKey(spep_2+279,attack,1.0,1.0);
setEffAlphaKey(spep_2,attack,255);
setEffAlphaKey(spep_2+279,attack,255);
setEffRotateKey(spep_2,attack,0);
setEffRotateKey(spep_2+279,attack,0);


--文字エントリー
ctbaki = entryEffectLife( spep_2 + 110,  10020, 22, 0x100, -1, 0, -130.8, 359.5 );-- バキッ
setEffMoveKey( spep_2 + 110, ctbaki, -130.8, 359.5 , 0 );
setEffMoveKey( spep_2 + 112, ctbaki, -118.7, 331.8 , 0 );
setEffMoveKey( spep_2 + 114, ctbaki, -131.8, 315.8 , 0 );
setEffMoveKey( spep_2 + 116, ctbaki, -141.6, 320 , 0 );
setEffMoveKey( spep_2 + 118, ctbaki, -131.5, 322.6 , 0 );
setEffMoveKey( spep_2 + 120, ctbaki, -120.5, 326.7 , 0 );
setEffMoveKey( spep_2 + 122, ctbaki, -131.5, 328.7 , 0 );
setEffMoveKey( spep_2 + 124, ctbaki, -131.4, 330 , 0 );
setEffMoveKey( spep_2 + 126, ctbaki, -131.4, 331.3 , 0 );
setEffMoveKey( spep_2 + 128, ctbaki, -131.3, 332.6 , 0 );
setEffMoveKey( spep_2 + 130, ctbaki, -131.3, 333.9 , 0 );
setEffMoveKey( spep_2 + 132, ctbaki, -131.2, 335.2 , 0 );

setEffScaleKey( spep_2 + 110, ctbaki, 0.91, 0.91 );
setEffScaleKey( spep_2 + 112, ctbaki, 1.95, 1.95 );
setEffScaleKey( spep_2 + 114, ctbaki, 2.48, 2.48 );
setEffScaleKey( spep_2 + 116, ctbaki, 2.36, 2.36 );
setEffScaleKey( spep_2 + 118, ctbaki, 2.24, 2.24 );
setEffScaleKey( spep_2 + 120, ctbaki, 2.12, 2.12 );
setEffScaleKey( spep_2 + 122, ctbaki, 2.01, 2.01 );
setEffScaleKey( spep_2 + 124, ctbaki, 1.96, 1.96 );
setEffScaleKey( spep_2 + 126, ctbaki, 1.92, 1.92 );
setEffScaleKey( spep_2 + 128, ctbaki, 1.87, 1.87 );
setEffScaleKey( spep_2 + 130, ctbaki, 1.83, 1.83 );
setEffScaleKey( spep_2 + 132, ctbaki, 1.78, 1.78 );

setEffRotateKey( spep_2 + 110, ctbaki, 1.2 );
setEffRotateKey( spep_2 + 112, ctbaki, -12.1 );
setEffRotateKey( spep_2 + 114, ctbaki, 1.2 );
setEffRotateKey( spep_2 + 116, ctbaki, 9.8 );
setEffRotateKey( spep_2 + 118, ctbaki, 1.1 );
setEffRotateKey( spep_2 + 120, ctbaki, -9.6 );
setEffRotateKey( spep_2 + 122, ctbaki, 1.2 );
setEffRotateKey( spep_2 + 132, ctbaki, 1.2 );

setEffAlphaKey( spep_2 + 110, ctbaki, 255 );
setEffAlphaKey( spep_2 + 122, ctbaki, 255 );
setEffAlphaKey( spep_2 + 124, ctbaki, 204 );
setEffAlphaKey( spep_2 + 126, ctbaki, 153 );
setEffAlphaKey( spep_2 + 128, ctbaki, 102 );
setEffAlphaKey( spep_2 + 130, ctbaki, 51 );
setEffAlphaKey( spep_2 + 132, ctbaki, 0 );


--文字エントリー
ctga = entryEffectLife( spep_2 + 183,  10005, 22, 0x100, -1, 0, 136.1, 304 );--ガッ
setEffMoveKey( spep_2 + 183, ctga, 136.1, 304 , 0 );
setEffMoveKey( spep_2 + 185, ctga, 136.3, 304.1 , 0 );
setEffMoveKey( spep_2 + 187, ctga, 136.2, 304.2 , 0 );
setEffMoveKey( spep_2 + 189, ctga, 136.1, 304.1 , 0 );
setEffMoveKey( spep_2 + 191, ctga, 136.2, 304.2 , 0 );
setEffMoveKey( spep_2 + 193, ctga, 136, 304.2 , 0 );
setEffMoveKey( spep_2 + 195, ctga, 136.1, 304 , 0 );
setEffMoveKey( spep_2 + 201, ctga, 136.1, 304 , 0 );
setEffMoveKey( spep_2 + 203, ctga, 136.1, 304.1 , 0 );
setEffMoveKey( spep_2 + 205, ctga, 136.1, 304.1 , 0 );

setEffScaleKey( spep_2 + 183, ctga, 0.91, 0.91 );
setEffScaleKey( spep_2 + 185, ctga, 1.95, 1.95 );
setEffScaleKey( spep_2 + 187, ctga, 2.48, 2.48 );
setEffScaleKey( spep_2 + 189, ctga, 2.36, 2.36 );
setEffScaleKey( spep_2 + 191, ctga, 2.24, 2.24 );
setEffScaleKey( spep_2 + 193, ctga, 2.12, 2.12 );
setEffScaleKey( spep_2 + 195, ctga, 2.01, 2.01 );
setEffScaleKey( spep_2 + 197, ctga, 2, 2 );
setEffScaleKey( spep_2 + 199, ctga, 1.99, 1.99 );
setEffScaleKey( spep_2 + 201, ctga, 1.97, 1.97 );
setEffScaleKey( spep_2 + 203, ctga, 1.96, 1.96 );
setEffScaleKey( spep_2 + 205, ctga, 1.94, 1.94 );

setEffRotateKey( spep_2 + 183, ctga, 15.3 );
setEffRotateKey( spep_2 + 185, ctga, 1.9 );
setEffRotateKey( spep_2 + 187, ctga, 15.3 );
setEffRotateKey( spep_2 + 189, ctga, 23.9 );
setEffRotateKey( spep_2 + 191, ctga, 15.1 );
setEffRotateKey( spep_2 + 193, ctga, 4.4 );
setEffRotateKey( spep_2 + 195, ctga, 15.3 );
setEffRotateKey( spep_2 + 197, ctga, 15.1 );
setEffRotateKey( spep_2 + 199, ctga, 15.2 );
setEffRotateKey( spep_2 + 201, ctga, 15.2 );
setEffRotateKey( spep_2 + 203, ctga, 15.3 );
setEffRotateKey( spep_2 + 205, ctga, 15.3 );

setEffAlphaKey( spep_2 + 183, ctga, 255 );
setEffAlphaKey( spep_2 + 197, ctga, 255 );
setEffAlphaKey( spep_2 + 199, ctga, 191 );
setEffAlphaKey( spep_2 + 201, ctga, 128 );
setEffAlphaKey( spep_2 + 203, ctga, 64 );
setEffAlphaKey( spep_2 + 205, ctga, 0 );


--集中線
shuchu3 = entryEffectLife( spep_2 + 0,  906, 278, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, shuchu3, 0, 0 , 0 );
setEffMoveKey( spep_2 + 278, shuchu3, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchu3, 1.5, 2.01 );
setEffScaleKey( spep_2 + 184, shuchu3, 1.5, 2.01 );
setEffScaleKey( spep_2 + 186, shuchu3, 1.33, 1.68 );
setEffScaleKey( spep_2 + 278, shuchu3, 1.33, 1.68 );

setEffRotateKey( spep_2 + 0, shuchu3, 0 );
setEffRotateKey( spep_2 + 278, shuchu3, 0 );

setEffAlphaKey( spep_2 + 0, shuchu3, 255 );
setEffAlphaKey( spep_2 + 134, shuchu3, 255 );
setEffAlphaKey( spep_2 + 136, shuchu3, 232 );
setEffAlphaKey( spep_2 + 138, shuchu3, 210 );
setEffAlphaKey( spep_2 + 140, shuchu3, 187 );
setEffAlphaKey( spep_2 + 142, shuchu3, 164 );
setEffAlphaKey( spep_2 + 144, shuchu3, 142 );
setEffAlphaKey( spep_2 + 146, shuchu3, 119 );
setEffAlphaKey( spep_2 + 148, shuchu3, 96 );
setEffAlphaKey( spep_2 + 150, shuchu3, 74 );
setEffAlphaKey( spep_2 + 184, shuchu3, 74 );
setEffAlphaKey( spep_2 + 186, shuchu3, 255 );
setEffAlphaKey( spep_2 + 278, shuchu3, 255 );

--流線(横)
ryusen = entryEffectLife( spep_2 + 0,  914, 142, 0x80, -1, 0, 0,0 );
setEffMoveKey( spep_2 + 0, ryusen, 0,0, 0 );
setEffMoveKey( spep_2 + 142, ryusen, 0,0 , 0 );

setEffScaleKey( spep_2 + 0, ryusen, 4.83, 1.2 );
setEffScaleKey( spep_2 + 142, ryusen, 4.83, 1.2 );

setEffRotateKey( spep_2 + 0, ryusen, 0 );
setEffRotateKey( spep_2 + 142, ryusen, 0 );

setEffAlphaKey( spep_2 + 0, ryusen, 255 );
setEffAlphaKey( spep_2 + 130, ryusen, 255 );
setEffAlphaKey( spep_2 + 132, ryusen, 213 );
setEffAlphaKey( spep_2 + 134, ryusen, 170 );
setEffAlphaKey( spep_2 + 136, ryusen, 128 );
setEffAlphaKey( spep_2 + 138, ryusen, 85 );
setEffAlphaKey( spep_2 + 140, ryusen, 42 );
setEffAlphaKey( spep_2 + 142, ryusen, 0 );

--流線(斜め)
ryusen2 = entryEffectLife( spep_2 + 183,  914, 96, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 183, ryusen2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 279, ryusen2, 0, 0 , 0 );

setEffScaleKey( spep_2 + 183, ryusen2, 5.46, 1.3 );
setEffScaleKey( spep_2 + 279, ryusen2, 5.46, 1.3 );

setEffRotateKey( spep_2 + 183, ryusen2, 52.5 );
setEffRotateKey( spep_2 + 279, ryusen2, 52.5 );

setEffAlphaKey( spep_2 + 183, ryusen2, 255 );
setEffAlphaKey( spep_2 + 279, ryusen2, 255 );

--白フェード
entryFade( spep_2+67, 0,  1, 4, fcolor_r, fcolor_g, fcolor_b, 180);     -- white fade
entryFade( spep_2+183, 0,  1, 4, fcolor_r, fcolor_g, fcolor_b, 180);     -- white fade
entryFade( spep_2+274, 4,  4, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--黒背景
entryFadeBg(spep_2, 0, 280, 0, 0, 0, 0, 255);  -- 黒　背景

--敵の動き
setDisp(spep_2+48,1,1);
changeAnime(spep_2+48,1,100);

setMoveKey( spep_2 + 48, 1, 647.6, -37.3 , 0 );
setMoveKey( spep_2 + 50, 1, 545.6, -41.3 , 0 );
setMoveKey( spep_2 + 52, 1, 466.1, -37.3 , 0 );
setMoveKey( spep_2 + 54, 1, 381, -41.3 , 0 );
setMoveKey( spep_2 + 56, 1, 310.5, -37.3 , 0 );
setMoveKey( spep_2 + 58, 1, 234.4, -41.3 , 0 );
setMoveKey( spep_2 + 60, 1, 180.8, -37.3 , 0 );
setScaleKey( spep_2 + 48, 1, 1.3, 1.3 );
setRotateKey( spep_2 + 48, 1, 0 );

--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

SP_dodge = spep_2+60 ; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

pauseAll( SP_dodge, 67);

--敵の位置
setMoveKey( SP_dodge, 1, 466.1, -37.3 , 0 );
setMoveKey( SP_dodge+1, 1, 180.8, -37.3 , 0 );
setMoveKey( SP_dodge+2, 1, 180.8, -37.3 , 0 );
setMoveKey( SP_dodge+3, 1, 180.8, -37.3 , 0 );
setMoveKey( SP_dodge+8, 1, 180.8, -37.3 , 0 );

changeAnime(  SP_dodge+9,    1,  100);
setMoveKey(  SP_dodge+9,    1,  0,  0,   0);
setMoveKey(  SP_dodge+10,    1,  0,  0,   0);
setScaleKey( SP_dodge+9,    1,  1.3, 1.3);
setScaleKey( SP_dodge+10,    1,  1.3, 1.3);
setRotateKey(   SP_dodge+9,   1, 0);
setRotateKey(   SP_dodge+10,   1, 0);

--[[
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
]]

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


setDisp(spep_2+278,1,0);

changeAnime(spep_2+67,1,108);
changeAnime(spep_2+107,1,106);
changeAnime(spep_2+184,1,108);





setMoveKey( spep_2 + 62, 1, 121.7, -45.3 , 0 );
setMoveKey( spep_2 + 64, 1, 77.1, -37.3 , 0 );
setMoveKey( spep_2 + 66, 1, 30.9, -45.3 , 0 );
setMoveKey( spep_2 + 69, 1, -0.7, -37.3 , 0 );

setMoveKey( spep_2 + 70, 1, -4, -14 , 0 );
setMoveKey( spep_2 + 72, 1, 0.5, -14 , 0 );
setMoveKey( spep_2 + 74, 1, 1, -26 , 0 );
setMoveKey( spep_2 + 76, 1, 9.5, -14 , 0 );
setMoveKey( spep_2 + 78, 1, 2, -18 , 0 );
setMoveKey( spep_2 + 80, 1, 18.5, -14 , 0 );
setMoveKey( spep_2 + 82, 1, 19, -30 , 0 );
setMoveKey( spep_2 + 84, 1, 27.5, -14 , 0 );
setMoveKey( spep_2 + 86, 1, 24, -22 , 0 );
setMoveKey( spep_2 + 88, 1, 58, 40 , 0 );
setMoveKey( spep_2 + 90, 1, 56.1, 43.8 , 0 );
setMoveKey( spep_2 + 92, 1, 69.8, 62.9 , 0 );
setMoveKey( spep_2 + 94, 1, 59, 69.1 , 0 );
setMoveKey( spep_2 + 96, 1, 79.8, 82.5 , 0 );
setMoveKey( spep_2 + 98, 1, 80.2, 75.2 , 0 );
setMoveKey( spep_2 + 100, 1, 88.2, 98.9 , 0 );
setMoveKey( spep_2 + 102, 1, 87.8, 101.9 , 0 );
setMoveKey( spep_2 + 104, 1, 95, 112.1 , 0 );
setMoveKey( spep_2 + 106, 1, 85.7, 105.4 , 0 );
setMoveKey( spep_2 + 109, 1, 100, 122 , 0 );

setMoveKey( spep_2 + 110, 1, 60.1, 194 , 0 );
setMoveKey( spep_2 + 112, 1, 79, 254.4 , 0 );
setMoveKey( spep_2 + 114, 1, 86.3, 286.3 , 0 );
setMoveKey( spep_2 + 116, 1, 98, 321.6 , 0 );
setMoveKey( spep_2 + 118, 1, 90, 332.3 , 0 );
setMoveKey( spep_2 + 120, 1, 102.6, 337.9 , 0 );
setMoveKey( spep_2 + 122, 1, 99.1, 327.4 , 0 );
setMoveKey( spep_2 + 124, 1, 103.7, 341 , 0 );
setMoveKey( spep_2 + 126, 1, 92.3, 334.6 , 0 );
setMoveKey( spep_2 + 128, 1, 104.8, 344.1 , 0 );
setMoveKey( spep_2 + 130, 1, 101.4, 333.7 , 0 );
setMoveKey( spep_2 + 132, 1, 106, 347.3 , 0 );
setMoveKey( spep_2 + 134, 1, 106.6, 348.8 , 0 );
setMoveKey( spep_2 + 136, 1, 107.1, 350.4 , 0 );
setMoveKey( spep_2 + 138, 1, 107.7, 352 , 0 );
setMoveKey( spep_2 + 140, 1, 108.3, 353.6 , 0 );
setMoveKey( spep_2 + 142, 1, 108.8, 355.1 , 0 );
setMoveKey( spep_2 + 144, 1, 109.4, 356.7 , 0 );
setMoveKey( spep_2 + 146, 1, 110, 358.3 , 0 );
setMoveKey( spep_2 + 148, 1, 110.5, 359.8 , 0 );
setMoveKey( spep_2 + 150, 1, 111.1, 361.4 , 0 );
setMoveKey( spep_2 + 152, 1, 111.2, 361.8 , 0 );
setMoveKey( spep_2 + 154, 1, 114.5, 320.1 , 0 );
setMoveKey( spep_2 + 156, 1, 117.6, 280.6 , 0 );
setMoveKey( spep_2 + 158, 1, 120.6, 243.5 , 0 );
setMoveKey( spep_2 + 160, 1, 123.3, 208.7 , 0 );
setMoveKey( spep_2 + 162, 1, 125.9, 176.1 , 0 );
setMoveKey( spep_2 + 164, 1, 128.2, 145.9 , 0 );
setMoveKey( spep_2 + 166, 1, 130.5, 118 , 0 );
setMoveKey( spep_2 + 168, 1, 132.4, 92.3 , 0 );
setMoveKey( spep_2 + 170, 1, 134.3, 68.9 , 0 );
setMoveKey( spep_2 + 172, 1, 135.9, 47.9 , 0 );
setMoveKey( spep_2 + 174, 1, 137.5, 29.2 , 0 );
setMoveKey( spep_2 + 176, 1, 138.7, 12.7 , 0 );
setMoveKey( spep_2 + 187, 1, 139.9, -1.5 , 0 );

setMoveKey( spep_2 + 186, 1, 158, -218 , 0 );
setMoveKey( spep_2 + 188, 1, 119.4, -188.4 , 0 );
setMoveKey( spep_2 + 190, 1, 88.8, -126.8 , 0 );
setMoveKey( spep_2 + 192, 1, 42.2, -89.2 , 0 );
setMoveKey( spep_2 + 194, 1, 19.6, -35.6 , 0 );
setMoveKey( spep_2 + 196, 1, -23.1, 2 , 0 );
setMoveKey( spep_2 + 198, 1, -8.6, -0.6 , 0 );
setMoveKey( spep_2 + 200, 1, -10.1, -27.2 , 0 );
setMoveKey( spep_2 + 202, 1, 4.4, -21.9 , 0 );
setMoveKey( spep_2 + 204, 1, -1.1, -36.5 , 0 );
setMoveKey( spep_2 + 206, 1, 17.4, -43.1 , 0 );
setMoveKey( spep_2 + 208, 1, 19.9, -73.7 , 0 );
setMoveKey( spep_2 + 210, 1, 30.4, -64.4 , 0 );
setMoveKey( spep_2 + 212, 1, 24.8, -83 , 0 );
setMoveKey( spep_2 + 214, 1, 43.3, -85.6 , 0 );
setMoveKey( spep_2 + 216, 1, 45.8, -108.2 , 0 );
setMoveKey( spep_2 + 218, 1, 56.3, -106.8 , 0 );
setMoveKey( spep_2 + 220, 1, 50.8, -121.5 , 0 );
setMoveKey( spep_2 + 222, 1, 69.3, -128.1 , 0 );
setMoveKey( spep_2 + 224, 1, 71.8, -154.7 , 0 );
setMoveKey( spep_2 + 226, 1, 82.3, -149.3 , 0 );
setMoveKey( spep_2 + 228, 1, 76.7, -167.9 , 0 );
setMoveKey( spep_2 + 230, 1, 95.2, -170.6 , 0 );
setMoveKey( spep_2 + 232, 1, 93.7, -193.2 , 0 );
setMoveKey( spep_2 + 234, 1, 108.2, -191.8 , 0 );
setMoveKey( spep_2 + 236, 1, 106.7, -214.4 , 0 );
setMoveKey( spep_2 + 238, 1, 113.2, -225.1 , 0 );
setMoveKey( spep_2 + 240, 1, 115.7, -255.7 , 0 );
setMoveKey( spep_2 + 242, 1, 126.2, -246.3 , 0 );
setMoveKey( spep_2 + 244, 1, 124.6, -260.9 , 0 );
setMoveKey( spep_2 + 246, 1, 139.1, -267.5 , 0 );
setMoveKey( spep_2 + 248, 1, 141.6, -294.2 , 0 );
setMoveKey( spep_2 + 250, 1, 152.1, -288.8 , 0 );
--setMoveKey( spep_2 + 252, 1, 146.6, -303.4 , 0 );
setMoveKey( spep_2 + 254, 1, 664.8, -1143.6 , 0 );
setMoveKey( spep_2 + 256, 1, 1138.1, -1951.6 , 0 );
setMoveKey( spep_2 + 258, 1, 1590.5, -2687.4 , 0 );
setMoveKey( spep_2 + 260, 1, 1997.9, -3390.9 , 0 );
setMoveKey( spep_2 + 262, 1, 2400.5, -4038.2 , 0 );
setMoveKey( spep_2 + 264, 1, 2754.1, -4657.2 , 0 );
setMoveKey( spep_2 + 266, 1, 3094.7, -5196 , 0 );
setMoveKey( spep_2 + 268, 1, 3398.5, -5702.6 , 0 );
setMoveKey( spep_2 + 270, 1, 3669.3, -6176.9 , 0 );
setMoveKey( spep_2 + 272, 1, 3919.2, -6570.9 , 0 );
setMoveKey( spep_2 + 274, 1, 4124.1, -6940.8 , 0 );
setMoveKey( spep_2 + 276, 1, 4324.1, -7246.3 , 0 );
setMoveKey( spep_2 + 278, 1, 4475.2, -7523.7 , 0 );



setScaleKey( spep_2 + 109, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 110, 1, 1.33, 1.33 );
setScaleKey( spep_2 + 185, 1, 1.33, 1.33 );

setScaleKey( spep_2 + 186, 1, 2.47, 2.47 );
setScaleKey( spep_2 + 188, 1, 2.24, 2.24 );
setScaleKey( spep_2 + 190, 1, 2.01, 2.01 );
setScaleKey( spep_2 + 192, 1, 1.78, 1.78 );
setScaleKey( spep_2 + 194, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 196, 1, 1.33, 1.33 );
setScaleKey( spep_2 + 198, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 200, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 202, 1, 1.42, 1.42 );
setScaleKey( spep_2 + 204, 1, 1.45, 1.45 );
setScaleKey( spep_2 + 206, 1, 1.49, 1.49 );
setScaleKey( spep_2 + 208, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 210, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 212, 1, 1.58, 1.58 );
setScaleKey( spep_2 + 214, 1, 1.61, 1.61 );
setScaleKey( spep_2 + 216, 1, 1.65, 1.65 );
setScaleKey( spep_2 + 218, 1, 1.68, 1.68 );
setScaleKey( spep_2 + 220, 1, 1.71, 1.71 );
setScaleKey( spep_2 + 222, 1, 1.74, 1.74 );
setScaleKey( spep_2 + 224, 1, 1.77, 1.77 );
setScaleKey( spep_2 + 226, 1, 1.81, 1.81 );
setScaleKey( spep_2 + 228, 1, 1.84, 1.84 );
setScaleKey( spep_2 + 230, 1, 1.87, 1.87 );
setScaleKey( spep_2 + 232, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 234, 1, 1.93, 1.93 );
setScaleKey( spep_2 + 236, 1, 1.97, 1.97 );
setScaleKey( spep_2 + 238, 1, 2, 2 );
setScaleKey( spep_2 + 240, 1, 2.03, 2.03 );
setScaleKey( spep_2 + 242, 1, 2.06, 2.06 );
setScaleKey( spep_2 + 244, 1, 2.09, 2.09 );
setScaleKey( spep_2 + 246, 1, 2.13, 2.13 );
setScaleKey( spep_2 + 248, 1, 2.16, 2.16 );
setScaleKey( spep_2 + 250, 1, 2.19, 2.19 );
setScaleKey( spep_2 + 252, 1, 2.22, 2.22 );
setScaleKey( spep_2 + 254, 1, 3.44, 3.44 );
setScaleKey( spep_2 + 256, 1, 4.59, 4.59 );
setScaleKey( spep_2 + 258, 1, 5.67, 5.67 );
setScaleKey( spep_2 + 260, 1, 6.69, 6.69 );
setScaleKey( spep_2 + 262, 1, 7.63, 7.63 );
setScaleKey( spep_2 + 264, 1, 8.5, 8.5 );
setScaleKey( spep_2 + 266, 1, 9.3, 9.3 );
setScaleKey( spep_2 + 268, 1, 10.03, 10.03 );
setScaleKey( spep_2 + 270, 1, 10.7, 10.7 );
setScaleKey( spep_2 + 272, 1, 11.29, 11.29 );
setScaleKey( spep_2 + 274, 1, 11.81, 11.81 );
setScaleKey( spep_2 + 276, 1, 12.26, 12.26 );
setScaleKey( spep_2 + 278, 1, 12.65, 12.65 );


setRotateKey( spep_2 + 69, 1, 0 );

setRotateKey( spep_2 + 70, 1, 0 );
setRotateKey( spep_2 + 86, 1, 0 );
setRotateKey( spep_2 + 109, 1, -12.5 );

setRotateKey( spep_2 + 110, 1, -33.4 );
setRotateKey( spep_2 + 150, 1, -33.4 );
setRotateKey( spep_2 + 152, 1, -33.3 );
setRotateKey( spep_2 + 154, 1, -32 );
setRotateKey( spep_2 + 156, 1, -30.7 );
setRotateKey( spep_2 + 158, 1, -29.5 );
setRotateKey( spep_2 + 160, 1, -28.3 );
setRotateKey( spep_2 + 162, 1, -27.3 );
setRotateKey( spep_2 + 164, 1, -26.3 );
setRotateKey( spep_2 + 166, 1, -25.3 );
setRotateKey( spep_2 + 168, 1, -24.5 );
setRotateKey( spep_2 + 170, 1, -23.7 );
setRotateKey( spep_2 + 172, 1, -23.1 );
setRotateKey( spep_2 + 174, 1, -22.4 );
setRotateKey( spep_2 + 176, 1, -21.9 );
setRotateKey( spep_2 + 185, 1, -21.4 );
setRotateKey( spep_2 + 186, 1, 54.7 );
setRotateKey( spep_2 + 278, 1, 54.7 );



--SE
playSe(spep_2,1018);
playSe(spep_2+67,1009);
playSe(spep_2+85,1010);
playSe(spep_2+107,1009);
playSe(spep_2+127,SE_03);
playSe(spep_2+147,SE_03);
playSe(spep_2+167,SE_03);
playSe(spep_2+183,1011);

--次の準備
spep_3=spep_2+280;
------------------------------------------------------
-- 着地
------------------------------------------------------
--エフェクトの再生(前)
lamding_front=entryEffectLife(spep_3,SP_04,98,0x100,-1,0,0,0);

setEffMoveKey(spep_3,lamding_front,0,0,0);
setEffMoveKey(spep_3+98,lamding_front,0,0,0);
setEffScaleKey(spep_3,lamding_front,1.0,1.0);
setEffScaleKey(spep_3+98,lamding_front,1.0,1.0);
setEffAlphaKey(spep_3,lamding_front,255);
setEffAlphaKey(spep_3+98,lamding_front,255);
setEffRotateKey(spep_3,lamding_front,0);
setEffRotateKey(spep_3+98,lamding_front,0);

--エフェクトの再生(後ろ)
lamding_back=entryEffectLife(spep_3,SP_05,177,0x80,-1,0,0,0);

setEffMoveKey(spep_3,lamding_back,0,0,0);
setEffMoveKey(spep_3+177,lamding_back,0,0,0);
setEffScaleKey(spep_3,lamding_back,1.0,1.0);
setEffScaleKey(spep_3+177,lamding_back,1.0,1.0);
setEffAlphaKey(spep_3,lamding_back,255);
setEffAlphaKey(spep_3+177,lamding_back,255);
setEffRotateKey(spep_3,lamding_back,0);
setEffRotateKey(spep_3+177,lamding_back,0);

--集中線
shuchu4 = entryEffectLife( spep_3 + 0,  906, 178, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_3 + 0, shuchu4, 0, 0 , 0 );
setEffMoveKey( spep_3 + 178, shuchu4, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchu4, 1.4, 1.75 );
setEffScaleKey( spep_3 + 178, shuchu4, 1.4, 1.75 );

setEffRotateKey( spep_3 + 0, shuchu4, 0 );
setEffRotateKey( spep_3 + 178, shuchu4, 0 );

setEffAlphaKey( spep_3 + 0, shuchu4, 255 );
setEffAlphaKey( spep_3 + 178, shuchu4, 255 );

--[[
--流線
ryusen3 = entryEffectLife( spep_3 + 0,  921, 75, 0x80, -1,  0, 0, 0);
setEffMoveKey( spep_3 + 0, ryusen3, 0, 0, 0);
setEffMoveKey( spep_3 + 75, ryusen3, 0, 0, 0);

setEffScaleKey( spep_3 + 0, ryusen3, 1.38, 1.41 );
setEffScaleKey( spep_3 + 75, ryusen3, 1.38, 1.41 );

setEffRotateKey( spep_3 + 0, ryusen3, -132 );
setEffRotateKey( spep_3 + 75, ryusen3, -132 );

setEffAlphaKey( spep_3 + 0, ryusen3, 255 );
setEffAlphaKey( spep_3 + 75, ryusen3, 255 );

]]
--文字エントリー
ctdogon = entryEffectLife( spep_3 + 34,  10018, 36, 0x100, -1, 0, 135.7, 302.7 );--ドゴォン
setEffMoveKey( spep_3 + 34, ctdogon, 135.7, 302.7 , 0 );
setEffMoveKey( spep_3 + 36, ctdogon, 136.6, 299.3 , 0 );
setEffMoveKey( spep_3 + 38, ctdogon, 134.4, 298.1 , 0 );
setEffMoveKey( spep_3 + 40, ctdogon, 133.5, 298.8 , 0 );
setEffMoveKey( spep_3 + 42, ctdogon, 134.7, 298.7 , 0 );
setEffMoveKey( spep_3 + 44, ctdogon, 136, 298.9 , 0 );
setEffMoveKey( spep_3 + 46, ctdogon, 134.8, 299.4 , 0 );
setEffMoveKey( spep_3 + 48, ctdogon, 134.8, 299.4 , 0 );
setEffMoveKey( spep_3 + 50, ctdogon, 134.8, 299.5 , 0 );
setEffMoveKey( spep_3 + 52, ctdogon, 134.9, 299.5 , 0 );
setEffMoveKey( spep_3 + 54, ctdogon, 134.9, 299.6 , 0 );
setEffMoveKey( spep_3 + 56, ctdogon, 134.9, 299.6 , 0 );
setEffMoveKey( spep_3 + 58, ctdogon, 135, 299.7 , 0 );
setEffMoveKey( spep_3 + 60, ctdogon, 135, 299.7 , 0 );
setEffMoveKey( spep_3 + 62, ctdogon, 135, 299.8 , 0 );
setEffMoveKey( spep_3 + 66, ctdogon, 135, 299.8 , 0 );
setEffMoveKey( spep_3 + 68, ctdogon, 135, 299.9 , 0 );
setEffMoveKey( spep_3 + 70, ctdogon, 135, 299.9 , 0 );

setEffScaleKey( spep_3 + 34, ctdogon, 1.2, 1.2 );
setEffScaleKey( spep_3 + 36, ctdogon, 2.56, 2.56 );
setEffScaleKey( spep_3 + 38, ctdogon, 3.25, 3.25 );
setEffScaleKey( spep_3 + 40, ctdogon, 3.09, 3.09 );
setEffScaleKey( spep_3 + 42, ctdogon, 2.94, 2.94 );
setEffScaleKey( spep_3 + 44, ctdogon, 2.78, 2.78 );
setEffScaleKey( spep_3 + 46, ctdogon, 2.63, 2.63 );
setEffScaleKey( spep_3 + 48, ctdogon, 2.6, 2.6 );
setEffScaleKey( spep_3 + 50, ctdogon, 2.58, 2.58 );
setEffScaleKey( spep_3 + 52, ctdogon, 2.55, 2.55 );
setEffScaleKey( spep_3 + 54, ctdogon, 2.53, 2.53 );
setEffScaleKey( spep_3 + 56, ctdogon, 2.5, 2.5 );
setEffScaleKey( spep_3 + 58, ctdogon, 2.47, 2.47 );
setEffScaleKey( spep_3 + 60, ctdogon, 2.45, 2.45 );
setEffScaleKey( spep_3 + 62, ctdogon, 2.42, 2.42 );
setEffScaleKey( spep_3 + 64, ctdogon, 2.41, 2.41 );
setEffScaleKey( spep_3 + 66, ctdogon, 2.4, 2.4 );
setEffScaleKey( spep_3 + 68, ctdogon, 2.39, 2.39 );
setEffScaleKey( spep_3 + 70, ctdogon, 2.38, 2.38 );

setEffRotateKey( spep_3 + 34, ctdogon, 15.3 );
setEffRotateKey( spep_3 + 36, ctdogon, 1.9 );
setEffRotateKey( spep_3 + 38, ctdogon, 15.3 );
setEffRotateKey( spep_3 + 40, ctdogon, 23.9 );
setEffRotateKey( spep_3 + 42, ctdogon, 15.1 );
setEffRotateKey( spep_3 + 44, ctdogon, 4.4 );
setEffRotateKey( spep_3 + 46, ctdogon, 15.3 );
setEffRotateKey( spep_3 + 50, ctdogon, 15.3 );
setEffRotateKey( spep_3 + 52, ctdogon, 15.2 );
setEffRotateKey( spep_3 + 58, ctdogon, 15.2 );
setEffRotateKey( spep_3 + 60, ctdogon, 15.1 );
setEffRotateKey( spep_3 + 62, ctdogon, 15.1 );
setEffRotateKey( spep_3 + 64, ctdogon, 15.2 );
setEffRotateKey( spep_3 + 66, ctdogon, 15.2 );
setEffRotateKey( spep_3 + 68, ctdogon, 15.3 );
setEffRotateKey( spep_3 + 70, ctdogon, 15.3 );

setEffAlphaKey( spep_3 + 34, ctdogon, 255 );
setEffAlphaKey( spep_3 + 62, ctdogon, 255 );
setEffAlphaKey( spep_3 + 64, ctdogon, 191 );
setEffAlphaKey( spep_3 + 66, ctdogon, 128 );
setEffAlphaKey( spep_3 + 68, ctdogon, 64 );
setEffAlphaKey( spep_3 + 70, ctdogon, 0 );

--敵の動き
setDisp(spep_3,1,1);
setDisp(spep_3+34,1,0);
changeAnime(spep_3,1,108);

--[[
--setMoveKey( spep_3 + 0, 1, -319.2, 389.6 , 0 );
--setMoveKey( spep_3 + 2, 1, -308.8, 376.2 , 0 );
setMoveKey( spep_3 + 0, 1, -295.6, 350.8 , 0 );
setMoveKey( spep_3 + 6, 1, -281.6, 319.5 , 0 );
setMoveKey( spep_3 + 8, 1, -252.6, 297.8 , 0 );
setMoveKey( spep_3 + 10, 1, -218.5, 261.9 , 0 );
setMoveKey( spep_3 + 12, 1, -185.2, 211.6 , 0 );
setMoveKey( spep_3 + 14, 1, -142.6, 166.5 , 0 );
setMoveKey( spep_3 + 16, 1, -98.6, 102.8 , 0 );
setMoveKey( spep_3 + 18, 1, -45.2, 44.3 , 0 );
setMoveKey( spep_3 + 20, 1, 9.9, -31.5 , 0 );
setMoveKey( spep_3 + 22, 1, 37.5, -71.4 , 0 );
setMoveKey( spep_3 + 24, 1, 66.8, -100.6 , 0 );
setMoveKey( spep_3 + 26, 1, 93.6, -127 , 0 );
setMoveKey( spep_3 + 66, 1, 351.7, -478.5 , 0 );
setMoveKey( spep_3 + 68, 1, 365.4, -479 , 0 );
setMoveKey( spep_3 + 70, 1, 371.1, -499.7 , 0 );
setMoveKey( spep_3 + 72, 1, 385, -504.5 , 0 );
setMoveKey( spep_3 + 74, 1, 383, -525.4 , 0 );
setMoveKey( spep_3 + 76, 1, 405.1, -530.5 , 0 );
setMoveKey( spep_3 + 78, 1, 403.3, -551.7 , 0 );
setMoveKey( spep_3 + 80, 1, 425.6, -557 , 0 );
setMoveKey( spep_3 + 82, 1, 436, -570.5 , 0 );
setMoveKey( spep_3 + 84, 1, 434.5, -592.2 , 0 );
setMoveKey( spep_3 + 86, 1, 457.1, -597.9 , 0 );
setMoveKey( spep_3 + 88, 1, 463.8, -619.8 , 0 );
setMoveKey( spep_3 + 90, 1, 478.7, -625.9 , 0 );
setMoveKey( spep_3 + 92, 1, 485.6, -652.1 , 0 );
setMoveKey( spep_3 + 94, 1, 500.7, -654.4 , 0 );
setMoveKey( spep_3 + 96, 1, 507.8, -680.9 , 0 );
setMoveKey( spep_3 + 98, 1, 523.1, -683.5 , 0 );


setMoveKey( spep_3 + 0, 1, -312.2, 376.2 , 0 );
setMoveKey( spep_3 + 10, 1, -192.2, 206.2 , 0 );
setMoveKey( spep_3 + 20, 1, 30.2, -50.2 , 0 );
setMoveKey( spep_3 + 34, 1, 209.9, -289.4 , 0 );
]]

setMoveKey( spep_3 + 0, 1, -312.2, 376.2 , 0 );
setMoveKey( spep_3 + 2, 1, -295.6, 350.8 , 0 );
setMoveKey( spep_3 + 4, 1, -281.6, 319.5 , 0 );
setMoveKey( spep_3 + 6, 1, -252.6, 297.8 , 0 );
setMoveKey( spep_3 + 8, 1, -218.5, 261.9 , 0 );
setMoveKey( spep_3 + 10, 1, -185.2, 211.6 , 0 );
setMoveKey( spep_3 + 12, 1, -142.6, 166.5 , 0 );
setMoveKey( spep_3 + 14, 1, -98.6, 102.8 , 0 );
setMoveKey( spep_3 + 16, 1, -45.2, 44.3 , 0 );
setMoveKey( spep_3 + 18, 1, 9.9, -31.5 , 0 );
setMoveKey( spep_3 + 20, 1, 37.5, -71.4 , 0 );
setMoveKey( spep_3 + 22, 1, 66.8, -100.6 , 0 );
setMoveKey( spep_3 + 24, 1, 93.6, -127 , 0 );
setMoveKey( spep_3 + 26, 1, 113.9, -158.3 , 0 );
setMoveKey( spep_3 + 28, 1, 131.8, -182.6 , 0 );
setMoveKey( spep_3 + 30, 1, 153.1, -199.8 , 0 );
setMoveKey( spep_3 + 32, 1, 209.9, -279.4 , 0 );
setMoveKey( spep_3 + 34, 1, 212.6, -294.8 , 0 );

setScaleKey( spep_3 + 0, 1, 0.11, 0.11 );
setScaleKey( spep_3 + 2, 1, 0.14, 0.14 );
setScaleKey( spep_3 + 4, 1, 0.17, 0.17 );
setScaleKey( spep_3 + 6, 1, 0.22, 0.22 );
setScaleKey( spep_3 + 8, 1, 0.29, 0.29 );
setScaleKey( spep_3 + 10, 1, 0.37, 0.37 );
setScaleKey( spep_3 + 12, 1, 0.46, 0.46 );
setScaleKey( spep_3 + 14, 1, 0.57, 0.57 );
setScaleKey( spep_3 + 16, 1, 0.68, 0.68 );
setScaleKey( spep_3 + 18, 1, 0.82, 0.82 );
setScaleKey( spep_3 + 20, 1, 0.96, 0.96 );
setScaleKey( spep_3 + 22, 1, 1.06, 1.06 );
setScaleKey( spep_3 + 24, 1, 1.14, 1.14 );
setScaleKey( spep_3 + 26, 1, 1.22, 1.22 );
setScaleKey( spep_3 + 28, 1, 1.29, 1.29 );
setScaleKey( spep_3 + 30, 1, 1.36, 1.36 );
setScaleKey( spep_3 + 32, 1, 1.41, 1.41 );
setScaleKey( spep_3 + 34, 1, 1.84, 1.84 );

setRotateKey( spep_3 + 0, 1, 51.8 );
setRotateKey( spep_3 + 34, 1, 51.8 );

--setShakeChara(spep_3,1,34,15);


--白フェード
entryFade( spep_3+28, 0,  3, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_3+174, 4,  3, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--黒背景
entryFadeBg(spep_3, 0, 180, 0, 0, 0, 0, 255);  -- 黒　背景

--SE
playSe(spep_3+32,SE_10);
playSe(spep_3+74,1014);

--次の準備
spep_4=spep_3+180;

--------------------------------------
--カードカットイン(90F)
--------------------------------------

playSe(spep_4,SE_05);
shuchusen9=entryEffectLife(spep_4,906,90,0x100,-1,0,0,0);   -- 集中線
setEffScaleKey(spep_4,shuchusen9,1.6,1.6);

speff2=entryEffect(spep_4,1507,0x80,-1,0,0,0);   -- カード
setEffReplaceTexture(speff2,1,1);
setEffReplaceTexture(speff2,2,0);-- カード差し替え
setEffReplaceTexture(speff2,5,4);-- 技名テクスチャ差し替え

-- ** エフェクト等 ** --
entryFade(spep_4+85,3,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_5=spep_4+90;

------------------------------------------------------
-- 放つ
------------------------------------------------------
--エフェクトの再生
lamding_front2=entryEffectLife(spep_5,SP_06,140,0x100,-1,0,0,0);

setEffMoveKey(spep_5,lamding_front2,0,0,0);
setEffMoveKey(spep_5+140,lamding_front2,0,0,0);
setEffScaleKey(spep_5,lamding_front2,1.0,1.0);
setEffScaleKey(spep_5+140,lamding_front2,1.0,1.0);
setEffAlphaKey(spep_5,lamding_front2,255);
setEffAlphaKey(spep_5+140,lamding_front2,255);
setEffRotateKey(spep_5,lamding_front2,0);
setEffRotateKey(spep_5+140,lamding_front2,0);

--集中線
shuchu5 = entryEffectLife( spep_5 + 0,  906, 178, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_5 + 0,shuchu5, 0, 0 , 0 );
setEffMoveKey( spep_5 + 178,shuchu5, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0,shuchu5, 1.4, 1.75 );
setEffScaleKey( spep_5 + 178,shuchu5, 1.4, 1.75 );

setEffRotateKey( spep_5 + 0,shuchu5, 0 );
setEffRotateKey( spep_5 + 178,shuchu5, 0 );

setEffAlphaKey( spep_5 + 0,shuchu5, 255 );
setEffAlphaKey( spep_5 + 178,shuchu5, 255 );

--文字エントリー
ctzuo2 = entryEffectLife( spep_5 + 66,  10012, 36, 0x100, -1, 0, 38.7, 220.5 );--ズオッ
setEffMoveKey( spep_5 + 66, ctzuo2, 88.7, 220.5 , 0 );
setEffMoveKey( spep_5 + 68, ctzuo2, 115, 248.6 , 0 );
setEffMoveKey( spep_5 + 70, ctzuo2, 127.9, 290.1 , 0 );
setEffMoveKey( spep_5 + 72, ctzuo2, 163.7, 308.8 , 0 );
setEffMoveKey( spep_5 + 74, ctzuo2, 147.7, 324.8 , 0 );
setEffMoveKey( spep_5 + 76, ctzuo2, 163.7, 308.8 , 0 );
setEffMoveKey( spep_5 + 78, ctzuo2, 147.7, 324.8 , 0 );
setEffMoveKey( spep_5 + 80, ctzuo2, 163.7, 308.8 , 0 );
setEffMoveKey( spep_5 + 82, ctzuo2, 147.7, 324.8 , 0 );
setEffMoveKey( spep_5 + 84, ctzuo2, 163.7, 308.8 , 0 );
setEffMoveKey( spep_5 + 86, ctzuo2, 147.7, 324.8 , 0 );
setEffMoveKey( spep_5 + 88, ctzuo2, 163.7, 308.8 , 0 );
setEffMoveKey( spep_5 + 90, ctzuo2, 147.7, 324.8 , 0 );
setEffMoveKey( spep_5 + 92, ctzuo2, 163.7, 308.8 , 0 );
setEffMoveKey( spep_5 + 94, ctzuo2, 147.7, 324.8 , 0 );
setEffMoveKey( spep_5 + 96, ctzuo2, 187.9, 304.7 , 0 );
setEffMoveKey( spep_5 + 98, ctzuo2, 184, 328.7 , 0 );
setEffMoveKey( spep_5 + 100, ctzuo2, 236.1, 296.5 , 0 );
setEffMoveKey( spep_5 + 102, ctzuo2, 260.3, 292.4 , 0 );

setEffScaleKey( spep_5 + 66, ctzuo2, 0.34, 0.34 );
setEffScaleKey( spep_5 + 68, ctzuo2, 1.13, 1.13 );
setEffScaleKey( spep_5 + 70, ctzuo2, 1.94, 1.94 );
setEffScaleKey( spep_5 + 72, ctzuo2, 2.73, 2.73 );
setEffScaleKey( spep_5 + 94, ctzuo2, 2.73, 2.73 );
setEffScaleKey( spep_5 + 96, ctzuo2, 3.75, 3.75 );
setEffScaleKey( spep_5 + 98, ctzuo2, 4.78, 4.78 );
setEffScaleKey( spep_5 + 100, ctzuo2, 5.8, 5.8 );
setEffScaleKey( spep_5 + 102, ctzuo2, 6.82, 6.82 );

setEffRotateKey( spep_5 + 66, ctzuo2, 27.2 );
setEffRotateKey( spep_5 + 102, ctzuo2, 27.2 );

setEffAlphaKey( spep_5 + 66, ctzuo2, 255 );
setEffAlphaKey( spep_5 + 94, ctzuo2, 255 );
setEffAlphaKey( spep_5 + 96, ctzuo2, 191 );
setEffAlphaKey( spep_5 + 98, ctzuo2, 128 );
setEffAlphaKey( spep_5 + 100, ctzuo2, 64 );
setEffAlphaKey( spep_5 + 102, ctzuo2, 0 );

--白フェード
entryFade( spep_5+64, 0,  2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_5+131, 6,  5, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--se
playSe(spep_5,SE_03);
playSe(spep_5+20,SE_03);
playSe(spep_5+47,SE_03);
playSe(  spep_5+66, SE_10);

--黒背景
entryFadeBg(spep_5, 0, 140, 0, 0, 0, 0, 255);  -- 黒　背景

--次の準備
spep_6=spep_5+140;
------------------------------------------------------
-- 爆発
------------------------------------------------------
--エフェクトの再生
explosion=entryEffect(spep_6,1689,0x100,-1,0,0,0);

setEffMoveKey(spep_6,explosion,0,0,0);
setEffMoveKey(spep_6+140,explosion,0,0,0);
setEffScaleKey(spep_6,explosion,1.2,1.2);
setEffScaleKey(spep_6+140,explosion,1.2,1.2);
setEffAlphaKey(spep_6,explosion,255);
setEffAlphaKey(spep_6+140,explosion,255);
setEffRotateKey(spep_6,explosion,0);
setEffRotateKey(spep_6+140,explosion,0);

--SE
playSe( spep_6+4, SE_10);

-- ダメージ表示
---pauseAll( spep_6+109,20);
dealDamage(spep_6+0);
entryFade( spep_6+120, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_6+130);

else 
------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 溜め
------------------------------------------------------
spep_0=0;


--エフェクトの再生
tame=entryEffectLife(spep_0,SP_01x,160,0x100,-1,0,0,0);

setEffMoveKey(spep_0,tame,0,0,0);
setEffMoveKey(spep_0+160,tame,0,0,0);
setEffScaleKey(spep_0,tame,1.0,1.0);
setEffScaleKey(spep_0+160,tame,1.0,1.0);
setEffAlphaKey(spep_0,tame,255);
setEffAlphaKey(spep_0+160,tame,255);
setEffRotateKey(spep_0,tame,0);
setEffRotateKey(spep_0+160,tame,0);

--文字エントリー
ctzuzuzun = entryEffectLife( spep_0 + 28,  10013, 38, 0x100, -1, 0, 20.1, 249.8 );
setEffMoveKey( spep_0 + 28, ctzuzuzun, 20.1, 249.8 , 0 );
setEffMoveKey( spep_0 + 30, ctzuzuzun, 23.5, 299.3 , 0 );
setEffMoveKey( spep_0 + 32, ctzuzuzun, 40.2, 359.2 , 0 );
setEffMoveKey( spep_0 + 34, ctzuzuzun, 31.2, 355 , 0 );
setEffMoveKey( spep_0 + 36, ctzuzuzun, 41.1, 364.8 , 0 );
setEffMoveKey( spep_0 + 38, ctzuzuzun, 31.1, 354.5 , 0 );
setEffMoveKey( spep_0 + 40, ctzuzuzun, 41.1, 364.5 , 0 );
setEffMoveKey( spep_0 + 42, ctzuzuzun, 31.1, 354.5 , 0 );
setEffMoveKey( spep_0 + 44, ctzuzuzun, 41.1, 364.5 , 0 );
setEffMoveKey( spep_0 + 46, ctzuzuzun, 31.1, 354.5 , 0 );
setEffMoveKey( spep_0 + 48, ctzuzuzun, 41.1, 364.5 , 0 );
setEffMoveKey( spep_0 + 50, ctzuzuzun, 31.1, 354.5 , 0 );
setEffMoveKey( spep_0 + 52, ctzuzuzun, 41.1, 364.5 , 0 );
setEffMoveKey( spep_0 + 54, ctzuzuzun, 31.1, 354.5 , 0 );
setEffMoveKey( spep_0 + 56, ctzuzuzun, 41.1, 364.5 , 0 );
setEffMoveKey( spep_0 + 58, ctzuzuzun, 31.1, 354.5 , 0 );
setEffMoveKey( spep_0 + 60, ctzuzuzun, 41.1, 364.5 , 0 );
setEffMoveKey( spep_0 + 62, ctzuzuzun, 31.1, 354.5 , 0 );
setEffMoveKey( spep_0 + 64, ctzuzuzun, 41.1, 364.5 , 0 );
setEffMoveKey( spep_0 + 66, ctzuzuzun, 41.1, 364.5 , 0 );

setEffScaleKey( spep_0 + 28, ctzuzuzun, 1.11, 1.11 );
setEffScaleKey( spep_0 + 30, ctzuzuzun, 1.98, 1.98 );
setEffScaleKey( spep_0 + 32, ctzuzuzun, 2.83, 2.83 );
setEffScaleKey( spep_0 + 34, ctzuzuzun, 2.92, 2.92 );
setEffScaleKey( spep_0 + 66, ctzuzuzun, 2.92, 2.92 );

setEffRotateKey( spep_0 + 28, ctzuzuzun, -5 );
setEffRotateKey( spep_0 + 66, ctzuzuzun, -5 );

setEffAlphaKey( spep_0 + 28, ctzuzuzun, 255 );
setEffAlphaKey( spep_0 + 48, ctzuzuzun, 255 );
setEffAlphaKey( spep_0 + 50, ctzuzuzun, 215 );
setEffAlphaKey( spep_0 + 52, ctzuzuzun, 164 );
setEffAlphaKey( spep_0 + 54, ctzuzuzun, 121 );
setEffAlphaKey( spep_0 + 56, ctzuzuzun, 84 );
setEffAlphaKey( spep_0 + 58, ctzuzuzun, 54 );
setEffAlphaKey( spep_0 + 60, ctzuzuzun, 30 );
setEffAlphaKey( spep_0 + 62, ctzuzuzun, 14 );
setEffAlphaKey( spep_0 + 64, ctzuzuzun, 3 );
setEffAlphaKey( spep_0 + 66, ctzuzuzun, 0 );

--集中線
shuchu1 = entryEffectLife( spep_0 + 28,  906, 130, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 28, shuchu1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 158, shuchu1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 28, shuchu1, 1.43, 2.03 );
setEffScaleKey( spep_0 + 158, shuchu1, 1.43, 2.03 );

setEffRotateKey( spep_0 + 28, shuchu1, 180 );
setEffRotateKey( spep_0 + 158, shuchu1, 180 );

setEffAlphaKey( spep_0 + 28, shuchu1, 255 );
setEffAlphaKey( spep_0 + 158, shuchu1, 255 );

--顔カットイン
--speff=entryEffect(spep_0+65,1504,0x100,-1,0,0,0);  --カットイン(顔)
--setEffReplaceTexture(speff,3,2);  --カットイン差し替え
--speff1=entryEffect(spep_0+65,1505,0x100,-1,0,0,0);  --カットイン(セリフ)
--setEffReplaceTexture(speff1,4,5);  --セリフカットイン差し替え

--文字エントリー
ctgogo=entryEffectLife(spep_0+78,190006,69,0x100,-1,-120,500);--ゴゴゴ
setEffMoveKey(spep_0+78,ctgogo,-120,500,0);
setEffMoveKey(spep_0+147,ctgogo,-120,500,0);
setEffScaleKey(spep_0+78, ctgogo, -0.7, 0.7);
setEffScaleKey(spep_0+147, ctgogo, -0.7, 0.7);
setEffRotateKey(spep_0+78,ctgogo,-5);
setEffRotateKey(spep_0+147,ctgogo,-5);

--白フェード
entryFade( spep_0+25, 0,  5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_0+151, 7,  3, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--黒背景
entryFadeBg(spep_0+26, 0, 134, 0, 0, 0, 0, 180);  -- 黒　背景

--SE
playSe( spep_0+30, SE_01);
playSe(spep_0 + 78,SE_04);


--次の準備
spep_1=spep_0+160;
------------------------------------------------------
-- 手前に突進
------------------------------------------------------

--エフェクトの再生
rush=entryEffectLife(spep_1,SP_02x,69,0x100,-1,0,0,0);

setEffMoveKey(spep_1,rush,0,0,0);
setEffMoveKey(spep_1+69,rush,0,0,0);
setEffScaleKey(spep_1,rush,1.0,1.0);
setEffScaleKey(spep_1+69,rush,1.0,1.0);
setEffAlphaKey(spep_1,rush,255);
setEffAlphaKey(spep_1+69,rush,255);
setEffRotateKey(spep_1,rush,0);
setEffRotateKey(spep_1+69,rush,0);

--文字エントリー
ctzuoltu = entryEffectLife( spep_1 + 0,  10012, 36, 0x100, -1, 0, 38.7, 220.5 );--ズオッ
setEffMoveKey( spep_1 + 0, ctzuoltu, 38.7, 220.5 , 0 );
setEffMoveKey( spep_1 + 2, ctzuoltu, 65, 248.6 , 0 );
setEffMoveKey( spep_1 + 4, ctzuoltu, 77.9, 290.1 , 0 );
setEffMoveKey( spep_1 + 6, ctzuoltu, 113.7, 308.8 , 0 );
setEffMoveKey( spep_1 + 8, ctzuoltu, 97.7, 324.8 , 0 );
setEffMoveKey( spep_1 + 10, ctzuoltu, 113.7, 308.8 , 0 );
setEffMoveKey( spep_1 + 12, ctzuoltu, 97.7, 324.8 , 0 );
setEffMoveKey( spep_1 + 14, ctzuoltu, 113.7, 308.8 , 0 );
setEffMoveKey( spep_1 + 16, ctzuoltu, 97.7, 324.8 , 0 );
setEffMoveKey( spep_1 + 18, ctzuoltu, 113.7, 308.8 , 0 );
setEffMoveKey( spep_1 + 20, ctzuoltu, 97.7, 324.8 , 0 );
setEffMoveKey( spep_1 + 22, ctzuoltu, 113.7, 308.8 , 0 );
setEffMoveKey( spep_1 + 24, ctzuoltu, 97.7, 324.8 , 0 );
setEffMoveKey( spep_1 + 26, ctzuoltu, 113.7, 308.8 , 0 );
setEffMoveKey( spep_1 + 28, ctzuoltu, 97.7, 324.8 , 0 );
setEffMoveKey( spep_1 + 30, ctzuoltu, 137.9, 304.7 , 0 );
setEffMoveKey( spep_1 + 32, ctzuoltu, 134, 328.7 , 0 );
setEffMoveKey( spep_1 + 34, ctzuoltu, 186.1, 296.5 , 0 );
setEffMoveKey( spep_1 + 36, ctzuoltu, 210.3, 292.4 , 0 );

setEffScaleKey( spep_1 + 0, ctzuoltu, 0.34, 0.34 );
setEffScaleKey( spep_1 + 2, ctzuoltu, 1.13, 1.13 );
setEffScaleKey( spep_1 + 4, ctzuoltu, 1.94, 1.94 );
setEffScaleKey( spep_1 + 6, ctzuoltu, 2.73, 2.73 );
setEffScaleKey( spep_1 + 28, ctzuoltu, 2.73, 2.73 );
setEffScaleKey( spep_1 + 30, ctzuoltu, 3.75, 3.75 );
setEffScaleKey( spep_1 + 32, ctzuoltu, 4.78, 4.78 );
setEffScaleKey( spep_1 + 34, ctzuoltu, 5.8, 5.8 );
setEffScaleKey( spep_1 + 36, ctzuoltu, 6.82, 6.82 );

setEffRotateKey( spep_1 + 0, ctzuoltu, 27.2 );
setEffRotateKey( spep_1 + 36, ctzuoltu, 27.2 );

setEffAlphaKey( spep_1 + 0, ctzuoltu, 255 );
setEffAlphaKey( spep_1 + 28, ctzuoltu, 255 );
setEffAlphaKey( spep_1 + 30, ctzuoltu, 191 );
setEffAlphaKey( spep_1 + 32, ctzuoltu, 128 );
setEffAlphaKey( spep_1 + 34, ctzuoltu, 64 );
setEffAlphaKey( spep_1 + 36, ctzuoltu, 0 );

--集中線
shuchu2 = entryEffectLife( spep_1 + 0,  906, 69, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_1 + 0, shuchu2, 0, 0 , 0 );
setEffMoveKey( spep_1 + 69, shuchu2, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchu2, 1.42, 2.05 );
setEffScaleKey( spep_1 + 69, shuchu2, 1.42, 2.05 );

setEffRotateKey( spep_1 + 0, shuchu2, 0 );
setEffRotateKey( spep_1 + 69, shuchu2, 0 );

setEffAlphaKey( spep_1 + 0, shuchu2, 255 );
setEffAlphaKey( spep_1 + 69, shuchu2, 255 );

--白フェード
entryFade( spep_1+63, 5,  2, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--黒背景
entryFadeBg(spep_1, 0, 70, 0, 0, 0, 0, 180);  -- 黒　背景

--SE
playSe(spep_1,9);

--次の準備
spep_2=spep_1+70;

------------------------------------------------------
-- 連撃
------------------------------------------------------
--エフェクトの再生
attack=entryEffectLife(spep_2,SP_03x,279,0x100,-1,0,0,0);

setEffMoveKey(spep_2,attack,0,0,0);
setEffMoveKey(spep_2+279,attack,0,0,0);
setEffScaleKey(spep_2,attack,1.0,1.0);
setEffScaleKey(spep_2+279,attack,1.0,1.0);
setEffAlphaKey(spep_2,attack,255);
setEffAlphaKey(spep_2+279,attack,255);
setEffRotateKey(spep_2,attack,0);
setEffRotateKey(spep_2+279,attack,0);


--文字エントリー
ctbaki = entryEffectLife( spep_2 + 110,  10020, 22, 0x100, -1, 0, -130.8, 359.5 );-- バキッ
setEffMoveKey( spep_2 + 110, ctbaki, -130.8, 359.5 , 0 );
setEffMoveKey( spep_2 + 112, ctbaki, -118.7, 331.8 , 0 );
setEffMoveKey( spep_2 + 114, ctbaki, -131.8, 315.8 , 0 );
setEffMoveKey( spep_2 + 116, ctbaki, -141.6, 320 , 0 );
setEffMoveKey( spep_2 + 118, ctbaki, -131.5, 322.6 , 0 );
setEffMoveKey( spep_2 + 120, ctbaki, -120.5, 326.7 , 0 );
setEffMoveKey( spep_2 + 122, ctbaki, -131.5, 328.7 , 0 );
setEffMoveKey( spep_2 + 124, ctbaki, -131.4, 330 , 0 );
setEffMoveKey( spep_2 + 126, ctbaki, -131.4, 331.3 , 0 );
setEffMoveKey( spep_2 + 128, ctbaki, -131.3, 332.6 , 0 );
setEffMoveKey( spep_2 + 130, ctbaki, -131.3, 333.9 , 0 );
setEffMoveKey( spep_2 + 132, ctbaki, -131.2, 335.2 , 0 );

setEffScaleKey( spep_2 + 110, ctbaki, 0.91, 0.91 );
setEffScaleKey( spep_2 + 112, ctbaki, 1.95, 1.95 );
setEffScaleKey( spep_2 + 114, ctbaki, 2.48, 2.48 );
setEffScaleKey( spep_2 + 116, ctbaki, 2.36, 2.36 );
setEffScaleKey( spep_2 + 118, ctbaki, 2.24, 2.24 );
setEffScaleKey( spep_2 + 120, ctbaki, 2.12, 2.12 );
setEffScaleKey( spep_2 + 122, ctbaki, 2.01, 2.01 );
setEffScaleKey( spep_2 + 124, ctbaki, 1.96, 1.96 );
setEffScaleKey( spep_2 + 126, ctbaki, 1.92, 1.92 );
setEffScaleKey( spep_2 + 128, ctbaki, 1.87, 1.87 );
setEffScaleKey( spep_2 + 130, ctbaki, 1.83, 1.83 );
setEffScaleKey( spep_2 + 132, ctbaki, 1.78, 1.78 );

setEffRotateKey( spep_2 + 110, ctbaki, 1.2 );
setEffRotateKey( spep_2 + 112, ctbaki, -12.1 );
setEffRotateKey( spep_2 + 114, ctbaki, 1.2 );
setEffRotateKey( spep_2 + 116, ctbaki, 9.8 );
setEffRotateKey( spep_2 + 118, ctbaki, 1.1 );
setEffRotateKey( spep_2 + 120, ctbaki, -9.6 );
setEffRotateKey( spep_2 + 122, ctbaki, 1.2 );
setEffRotateKey( spep_2 + 132, ctbaki, 1.2 );

setEffAlphaKey( spep_2 + 110, ctbaki, 255 );
setEffAlphaKey( spep_2 + 122, ctbaki, 255 );
setEffAlphaKey( spep_2 + 124, ctbaki, 204 );
setEffAlphaKey( spep_2 + 126, ctbaki, 153 );
setEffAlphaKey( spep_2 + 128, ctbaki, 102 );
setEffAlphaKey( spep_2 + 130, ctbaki, 51 );
setEffAlphaKey( spep_2 + 132, ctbaki, 0 );


--文字エントリー
ctga = entryEffectLife( spep_2 + 183,  10005, 22, 0x100, -1, 0, 136.1, 304 );--ガッ
setEffMoveKey( spep_2 + 183, ctga, 136.1, 304 , 0 );
setEffMoveKey( spep_2 + 185, ctga, 136.3, 304.1 , 0 );
setEffMoveKey( spep_2 + 187, ctga, 136.2, 304.2 , 0 );
setEffMoveKey( spep_2 + 189, ctga, 136.1, 304.1 , 0 );
setEffMoveKey( spep_2 + 191, ctga, 136.2, 304.2 , 0 );
setEffMoveKey( spep_2 + 193, ctga, 136, 304.2 , 0 );
setEffMoveKey( spep_2 + 195, ctga, 136.1, 304 , 0 );
setEffMoveKey( spep_2 + 201, ctga, 136.1, 304 , 0 );
setEffMoveKey( spep_2 + 203, ctga, 136.1, 304.1 , 0 );
setEffMoveKey( spep_2 + 205, ctga, 136.1, 304.1 , 0 );

setEffScaleKey( spep_2 + 183, ctga, 0.91, 0.91 );
setEffScaleKey( spep_2 + 185, ctga, 1.95, 1.95 );
setEffScaleKey( spep_2 + 187, ctga, 2.48, 2.48 );
setEffScaleKey( spep_2 + 189, ctga, 2.36, 2.36 );
setEffScaleKey( spep_2 + 191, ctga, 2.24, 2.24 );
setEffScaleKey( spep_2 + 193, ctga, 2.12, 2.12 );
setEffScaleKey( spep_2 + 195, ctga, 2.01, 2.01 );
setEffScaleKey( spep_2 + 197, ctga, 2, 2 );
setEffScaleKey( spep_2 + 199, ctga, 1.99, 1.99 );
setEffScaleKey( spep_2 + 201, ctga, 1.97, 1.97 );
setEffScaleKey( spep_2 + 203, ctga, 1.96, 1.96 );
setEffScaleKey( spep_2 + 205, ctga, 1.94, 1.94 );

setEffRotateKey( spep_2 + 183, ctga, 15.3 );
setEffRotateKey( spep_2 + 185, ctga, 1.9 );
setEffRotateKey( spep_2 + 187, ctga, 15.3 );
setEffRotateKey( spep_2 + 189, ctga, 23.9 );
setEffRotateKey( spep_2 + 191, ctga, 15.1 );
setEffRotateKey( spep_2 + 193, ctga, 4.4 );
setEffRotateKey( spep_2 + 195, ctga, 15.3 );
setEffRotateKey( spep_2 + 197, ctga, 15.1 );
setEffRotateKey( spep_2 + 199, ctga, 15.2 );
setEffRotateKey( spep_2 + 201, ctga, 15.2 );
setEffRotateKey( spep_2 + 203, ctga, 15.3 );
setEffRotateKey( spep_2 + 205, ctga, 15.3 );

setEffAlphaKey( spep_2 + 183, ctga, 255 );
setEffAlphaKey( spep_2 + 197, ctga, 255 );
setEffAlphaKey( spep_2 + 199, ctga, 191 );
setEffAlphaKey( spep_2 + 201, ctga, 128 );
setEffAlphaKey( spep_2 + 203, ctga, 64 );
setEffAlphaKey( spep_2 + 205, ctga, 0 );


--集中線
shuchu3 = entryEffectLife( spep_2 + 0,  906, 278, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, shuchu3, 0, 0 , 0 );
setEffMoveKey( spep_2 + 278, shuchu3, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchu3, 1.5, 2.01 );
setEffScaleKey( spep_2 + 184, shuchu3, 1.5, 2.01 );
setEffScaleKey( spep_2 + 186, shuchu3, 1.33, 1.68 );
setEffScaleKey( spep_2 + 278, shuchu3, 1.33, 1.68 );

setEffRotateKey( spep_2 + 0, shuchu3, 0 );
setEffRotateKey( spep_2 + 278, shuchu3, 0 );

setEffAlphaKey( spep_2 + 0, shuchu3, 255 );
setEffAlphaKey( spep_2 + 134, shuchu3, 255 );
setEffAlphaKey( spep_2 + 136, shuchu3, 232 );
setEffAlphaKey( spep_2 + 138, shuchu3, 210 );
setEffAlphaKey( spep_2 + 140, shuchu3, 187 );
setEffAlphaKey( spep_2 + 142, shuchu3, 164 );
setEffAlphaKey( spep_2 + 144, shuchu3, 142 );
setEffAlphaKey( spep_2 + 146, shuchu3, 119 );
setEffAlphaKey( spep_2 + 148, shuchu3, 96 );
setEffAlphaKey( spep_2 + 150, shuchu3, 74 );
setEffAlphaKey( spep_2 + 184, shuchu3, 74 );
setEffAlphaKey( spep_2 + 186, shuchu3, 255 );
setEffAlphaKey( spep_2 + 278, shuchu3, 255 );

--流線(横)
ryusen = entryEffectLife( spep_2 + 0,  914, 142, 0x80, -1, 0, 0,0 );
setEffMoveKey( spep_2 + 0, ryusen, 0,0, 0 );
setEffMoveKey( spep_2 + 142, ryusen, 0,0 , 0 );

setEffScaleKey( spep_2 + 0, ryusen, 4.83, 1.2 );
setEffScaleKey( spep_2 + 142, ryusen, 4.83, 1.2 );

setEffRotateKey( spep_2 + 0, ryusen, 0 );
setEffRotateKey( spep_2 + 142, ryusen, 0 );

setEffAlphaKey( spep_2 + 0, ryusen, 255 );
setEffAlphaKey( spep_2 + 130, ryusen, 255 );
setEffAlphaKey( spep_2 + 132, ryusen, 213 );
setEffAlphaKey( spep_2 + 134, ryusen, 170 );
setEffAlphaKey( spep_2 + 136, ryusen, 128 );
setEffAlphaKey( spep_2 + 138, ryusen, 85 );
setEffAlphaKey( spep_2 + 140, ryusen, 42 );
setEffAlphaKey( spep_2 + 142, ryusen, 0 );

--流線(斜め)
ryusen2 = entryEffectLife( spep_2 + 183,  914, 96, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 183, ryusen2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 279, ryusen2, 0, 0 , 0 );

setEffScaleKey( spep_2 + 183, ryusen2, 5.46, 1.3 );
setEffScaleKey( spep_2 + 279, ryusen2, 5.46, 1.3 );

setEffRotateKey( spep_2 + 183, ryusen2, 52.5 );
setEffRotateKey( spep_2 + 279, ryusen2, 52.5 );

setEffAlphaKey( spep_2 + 183, ryusen2, 255 );
setEffAlphaKey( spep_2 + 279, ryusen2, 255 );

--白フェード
entryFade( spep_2+67, 0,  1, 4, fcolor_r, fcolor_g, fcolor_b, 180);     -- white fade
entryFade( spep_2+183, 0,  1, 4, fcolor_r, fcolor_g, fcolor_b, 180);     -- white fade
entryFade( spep_2+274, 4,  4, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--黒背景
entryFadeBg(spep_2, 0, 280, 0, 0, 0, 0, 255);  -- 黒　背景


--敵の動き
setDisp(spep_2+48,1,1);
changeAnime(spep_2+48,1,100);

setMoveKey( spep_2 + 48, 1, 647.6, -37.3 , 0 );
setMoveKey( spep_2 + 50, 1, 545.6, -41.3 , 0 );
setMoveKey( spep_2 + 52, 1, 466.1, -37.3 , 0 );
setMoveKey( spep_2 + 54, 1, 381, -41.3 , 0 );
setMoveKey( spep_2 + 56, 1, 310.5, -37.3 , 0 );
setMoveKey( spep_2 + 58, 1, 234.4, -41.3 , 0 );
setMoveKey( spep_2 + 60, 1, 180.8, -37.3 , 0 );
setScaleKey( spep_2 + 48, 1, 1.3, 1.3 );
setRotateKey( spep_2 + 48, 1, 0 );

--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

SP_dodge = spep_2+60 ; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

pauseAll( SP_dodge, 67);

--敵の位置
setMoveKey( SP_dodge, 1, 466.1, -37.3 , 0 );
setMoveKey( SP_dodge+1, 1, 180.8, -37.3 , 0 );
setMoveKey( SP_dodge+2, 1, 180.8, -37.3 , 0 );
setMoveKey( SP_dodge+3, 1, 180.8, -37.3 , 0 );
setMoveKey( SP_dodge+8, 1, 180.8, -37.3 , 0 );

changeAnime(  SP_dodge+9,    1,  100);
setMoveKey(  SP_dodge+9,    1,  0,  0,   0);
setMoveKey(  SP_dodge+10,    1,  0,  0,   0);
setScaleKey( SP_dodge+9,    1,  1.3, 1.3);
setScaleKey( SP_dodge+10,    1,  1.3, 1.3);
setRotateKey(   SP_dodge+9,   1, 0);
setRotateKey(   SP_dodge+10,   1, 0);

--[[
--キャラクターの固定
setMoveKey(SP_dodge, 1, 179, -322.2 , 0 );
setScaleKey(SP_dodge , 1 ,2.18, 2.18 );
setRotateKey(SP_dodge,   1, 0);

--キャラクターの固定
setMoveKey(SP_dodge+8, 1, 179, -322.2 , 0 );
setScaleKey(SP_dodge+8 , 1 , 2.18, 2.18 );
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
]]

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


setDisp(spep_2+278,1,0);

changeAnime(spep_2+67,1,108);
changeAnime(spep_2+107,1,106);
changeAnime(spep_2+184,1,108);


setMoveKey( spep_2 + 62, 1, 121.7, -45.3 , 0 );
setMoveKey( spep_2 + 64, 1, 77.1, -37.3 , 0 );
setMoveKey( spep_2 + 66, 1, 30.9, -45.3 , 0 );
setMoveKey( spep_2 + 69, 1, -0.7, -37.3 , 0 );

setMoveKey( spep_2 + 70, 1, -4, -14 , 0 );
setMoveKey( spep_2 + 72, 1, 0.5, -14 , 0 );
setMoveKey( spep_2 + 74, 1, 1, -26 , 0 );
setMoveKey( spep_2 + 76, 1, 9.5, -14 , 0 );
setMoveKey( spep_2 + 78, 1, 2, -18 , 0 );
setMoveKey( spep_2 + 80, 1, 18.5, -14 , 0 );
setMoveKey( spep_2 + 82, 1, 19, -30 , 0 );
setMoveKey( spep_2 + 84, 1, 27.5, -14 , 0 );
setMoveKey( spep_2 + 86, 1, 24, -22 , 0 );
setMoveKey( spep_2 + 88, 1, 58, 40 , 0 );
setMoveKey( spep_2 + 90, 1, 56.1, 43.8 , 0 );
setMoveKey( spep_2 + 92, 1, 69.8, 62.9 , 0 );
setMoveKey( spep_2 + 94, 1, 59, 69.1 , 0 );
setMoveKey( spep_2 + 96, 1, 79.8, 82.5 , 0 );
setMoveKey( spep_2 + 98, 1, 80.2, 75.2 , 0 );
setMoveKey( spep_2 + 100, 1, 88.2, 98.9 , 0 );
setMoveKey( spep_2 + 102, 1, 87.8, 101.9 , 0 );
setMoveKey( spep_2 + 104, 1, 95, 112.1 , 0 );
setMoveKey( spep_2 + 106, 1, 85.7, 105.4 , 0 );
setMoveKey( spep_2 + 109, 1, 100, 122 , 0 );

setMoveKey( spep_2 + 110, 1, 60.1, 194 , 0 );
setMoveKey( spep_2 + 112, 1, 79, 254.4 , 0 );
setMoveKey( spep_2 + 114, 1, 86.3, 286.3 , 0 );
setMoveKey( spep_2 + 116, 1, 98, 321.6 , 0 );
setMoveKey( spep_2 + 118, 1, 90, 332.3 , 0 );
setMoveKey( spep_2 + 120, 1, 102.6, 337.9 , 0 );
setMoveKey( spep_2 + 122, 1, 99.1, 327.4 , 0 );
setMoveKey( spep_2 + 124, 1, 103.7, 341 , 0 );
setMoveKey( spep_2 + 126, 1, 92.3, 334.6 , 0 );
setMoveKey( spep_2 + 128, 1, 104.8, 344.1 , 0 );
setMoveKey( spep_2 + 130, 1, 101.4, 333.7 , 0 );
setMoveKey( spep_2 + 132, 1, 106, 347.3 , 0 );
setMoveKey( spep_2 + 134, 1, 106.6, 348.8 , 0 );
setMoveKey( spep_2 + 136, 1, 107.1, 350.4 , 0 );
setMoveKey( spep_2 + 138, 1, 107.7, 352 , 0 );
setMoveKey( spep_2 + 140, 1, 108.3, 353.6 , 0 );
setMoveKey( spep_2 + 142, 1, 108.8, 355.1 , 0 );
setMoveKey( spep_2 + 144, 1, 109.4, 356.7 , 0 );
setMoveKey( spep_2 + 146, 1, 110, 358.3 , 0 );
setMoveKey( spep_2 + 148, 1, 110.5, 359.8 , 0 );
setMoveKey( spep_2 + 150, 1, 111.1, 361.4 , 0 );
setMoveKey( spep_2 + 152, 1, 111.2, 361.8 , 0 );
setMoveKey( spep_2 + 154, 1, 114.5, 320.1 , 0 );
setMoveKey( spep_2 + 156, 1, 117.6, 280.6 , 0 );
setMoveKey( spep_2 + 158, 1, 120.6, 243.5 , 0 );
setMoveKey( spep_2 + 160, 1, 123.3, 208.7 , 0 );
setMoveKey( spep_2 + 162, 1, 125.9, 176.1 , 0 );
setMoveKey( spep_2 + 164, 1, 128.2, 145.9 , 0 );
setMoveKey( spep_2 + 166, 1, 130.5, 118 , 0 );
setMoveKey( spep_2 + 168, 1, 132.4, 92.3 , 0 );
setMoveKey( spep_2 + 170, 1, 134.3, 68.9 , 0 );
setMoveKey( spep_2 + 172, 1, 135.9, 47.9 , 0 );
setMoveKey( spep_2 + 174, 1, 137.5, 29.2 , 0 );
setMoveKey( spep_2 + 176, 1, 138.7, 12.7 , 0 );
setMoveKey( spep_2 + 187, 1, 139.9, -1.5 , 0 );

setMoveKey( spep_2 + 186, 1, 158, -218 , 0 );
setMoveKey( spep_2 + 188, 1, 119.4, -188.4 , 0 );
setMoveKey( spep_2 + 190, 1, 88.8, -126.8 , 0 );
setMoveKey( spep_2 + 192, 1, 42.2, -89.2 , 0 );
setMoveKey( spep_2 + 194, 1, 19.6, -35.6 , 0 );
setMoveKey( spep_2 + 196, 1, -23.1, 2 , 0 );
setMoveKey( spep_2 + 198, 1, -8.6, -0.6 , 0 );
setMoveKey( spep_2 + 200, 1, -10.1, -27.2 , 0 );
setMoveKey( spep_2 + 202, 1, 4.4, -21.9 , 0 );
setMoveKey( spep_2 + 204, 1, -1.1, -36.5 , 0 );
setMoveKey( spep_2 + 206, 1, 17.4, -43.1 , 0 );
setMoveKey( spep_2 + 208, 1, 19.9, -73.7 , 0 );
setMoveKey( spep_2 + 210, 1, 30.4, -64.4 , 0 );
setMoveKey( spep_2 + 212, 1, 24.8, -83 , 0 );
setMoveKey( spep_2 + 214, 1, 43.3, -85.6 , 0 );
setMoveKey( spep_2 + 216, 1, 45.8, -108.2 , 0 );
setMoveKey( spep_2 + 218, 1, 56.3, -106.8 , 0 );
setMoveKey( spep_2 + 220, 1, 50.8, -121.5 , 0 );
setMoveKey( spep_2 + 222, 1, 69.3, -128.1 , 0 );
setMoveKey( spep_2 + 224, 1, 71.8, -154.7 , 0 );
setMoveKey( spep_2 + 226, 1, 82.3, -149.3 , 0 );
setMoveKey( spep_2 + 228, 1, 76.7, -167.9 , 0 );
setMoveKey( spep_2 + 230, 1, 95.2, -170.6 , 0 );
setMoveKey( spep_2 + 232, 1, 93.7, -193.2 , 0 );
setMoveKey( spep_2 + 234, 1, 108.2, -191.8 , 0 );
setMoveKey( spep_2 + 236, 1, 106.7, -214.4 , 0 );
setMoveKey( spep_2 + 238, 1, 113.2, -225.1 , 0 );
setMoveKey( spep_2 + 240, 1, 115.7, -255.7 , 0 );
setMoveKey( spep_2 + 242, 1, 126.2, -246.3 , 0 );
setMoveKey( spep_2 + 244, 1, 124.6, -260.9 , 0 );
setMoveKey( spep_2 + 246, 1, 139.1, -267.5 , 0 );
setMoveKey( spep_2 + 248, 1, 141.6, -294.2 , 0 );
setMoveKey( spep_2 + 250, 1, 152.1, -288.8 , 0 );
--setMoveKey( spep_2 + 252, 1, 146.6, -303.4 , 0 );
setMoveKey( spep_2 + 254, 1, 664.8, -1143.6 , 0 );
setMoveKey( spep_2 + 256, 1, 1138.1, -1951.6 , 0 );
setMoveKey( spep_2 + 258, 1, 1590.5, -2687.4 , 0 );
setMoveKey( spep_2 + 260, 1, 1997.9, -3390.9 , 0 );
setMoveKey( spep_2 + 262, 1, 2400.5, -4038.2 , 0 );
setMoveKey( spep_2 + 264, 1, 2754.1, -4657.2 , 0 );
setMoveKey( spep_2 + 266, 1, 3094.7, -5196 , 0 );
setMoveKey( spep_2 + 268, 1, 3398.5, -5702.6 , 0 );
setMoveKey( spep_2 + 270, 1, 3669.3, -6176.9 , 0 );
setMoveKey( spep_2 + 272, 1, 3919.2, -6570.9 , 0 );
setMoveKey( spep_2 + 274, 1, 4124.1, -6940.8 , 0 );
setMoveKey( spep_2 + 276, 1, 4324.1, -7246.3 , 0 );
setMoveKey( spep_2 + 278, 1, 4475.2, -7523.7 , 0 );



setScaleKey( spep_2 + 109, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 110, 1, 1.33, 1.33 );
setScaleKey( spep_2 + 185, 1, 1.33, 1.33 );

setScaleKey( spep_2 + 186, 1, 2.47, 2.47 );
setScaleKey( spep_2 + 188, 1, 2.24, 2.24 );
setScaleKey( spep_2 + 190, 1, 2.01, 2.01 );
setScaleKey( spep_2 + 192, 1, 1.78, 1.78 );
setScaleKey( spep_2 + 194, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 196, 1, 1.33, 1.33 );
setScaleKey( spep_2 + 198, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 200, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 202, 1, 1.42, 1.42 );
setScaleKey( spep_2 + 204, 1, 1.45, 1.45 );
setScaleKey( spep_2 + 206, 1, 1.49, 1.49 );
setScaleKey( spep_2 + 208, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 210, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 212, 1, 1.58, 1.58 );
setScaleKey( spep_2 + 214, 1, 1.61, 1.61 );
setScaleKey( spep_2 + 216, 1, 1.65, 1.65 );
setScaleKey( spep_2 + 218, 1, 1.68, 1.68 );
setScaleKey( spep_2 + 220, 1, 1.71, 1.71 );
setScaleKey( spep_2 + 222, 1, 1.74, 1.74 );
setScaleKey( spep_2 + 224, 1, 1.77, 1.77 );
setScaleKey( spep_2 + 226, 1, 1.81, 1.81 );
setScaleKey( spep_2 + 228, 1, 1.84, 1.84 );
setScaleKey( spep_2 + 230, 1, 1.87, 1.87 );
setScaleKey( spep_2 + 232, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 234, 1, 1.93, 1.93 );
setScaleKey( spep_2 + 236, 1, 1.97, 1.97 );
setScaleKey( spep_2 + 238, 1, 2, 2 );
setScaleKey( spep_2 + 240, 1, 2.03, 2.03 );
setScaleKey( spep_2 + 242, 1, 2.06, 2.06 );
setScaleKey( spep_2 + 244, 1, 2.09, 2.09 );
setScaleKey( spep_2 + 246, 1, 2.13, 2.13 );
setScaleKey( spep_2 + 248, 1, 2.16, 2.16 );
setScaleKey( spep_2 + 250, 1, 2.19, 2.19 );
setScaleKey( spep_2 + 252, 1, 2.22, 2.22 );
setScaleKey( spep_2 + 254, 1, 3.44, 3.44 );
setScaleKey( spep_2 + 256, 1, 4.59, 4.59 );
setScaleKey( spep_2 + 258, 1, 5.67, 5.67 );
setScaleKey( spep_2 + 260, 1, 6.69, 6.69 );
setScaleKey( spep_2 + 262, 1, 7.63, 7.63 );
setScaleKey( spep_2 + 264, 1, 8.5, 8.5 );
setScaleKey( spep_2 + 266, 1, 9.3, 9.3 );
setScaleKey( spep_2 + 268, 1, 10.03, 10.03 );
setScaleKey( spep_2 + 270, 1, 10.7, 10.7 );
setScaleKey( spep_2 + 272, 1, 11.29, 11.29 );
setScaleKey( spep_2 + 274, 1, 11.81, 11.81 );
setScaleKey( spep_2 + 276, 1, 12.26, 12.26 );
setScaleKey( spep_2 + 278, 1, 12.65, 12.65 );


setRotateKey( spep_2 + 69, 1, 0 );

setRotateKey( spep_2 + 70, 1, 0 );
setRotateKey( spep_2 + 86, 1, 0 );
setRotateKey( spep_2 + 109, 1, -12.5 );

setRotateKey( spep_2 + 110, 1, -33.4 );
setRotateKey( spep_2 + 150, 1, -33.4 );
setRotateKey( spep_2 + 152, 1, -33.3 );
setRotateKey( spep_2 + 154, 1, -32 );
setRotateKey( spep_2 + 156, 1, -30.7 );
setRotateKey( spep_2 + 158, 1, -29.5 );
setRotateKey( spep_2 + 160, 1, -28.3 );
setRotateKey( spep_2 + 162, 1, -27.3 );
setRotateKey( spep_2 + 164, 1, -26.3 );
setRotateKey( spep_2 + 166, 1, -25.3 );
setRotateKey( spep_2 + 168, 1, -24.5 );
setRotateKey( spep_2 + 170, 1, -23.7 );
setRotateKey( spep_2 + 172, 1, -23.1 );
setRotateKey( spep_2 + 174, 1, -22.4 );
setRotateKey( spep_2 + 176, 1, -21.9 );
setRotateKey( spep_2 + 185, 1, -21.4 );
setRotateKey( spep_2 + 186, 1, 54.7 );
setRotateKey( spep_2 + 278, 1, 54.7 );


--SE
playSe(spep_2,1018);
playSe(spep_2+67,1009);
playSe(spep_2+85,1010);
playSe(spep_2+107,1009);
playSe(spep_2+127,SE_03);
playSe(spep_2+147,SE_03);
playSe(spep_2+167,SE_03);
playSe(spep_2+183,1011);

--次の準備
spep_3=spep_2+280;
------------------------------------------------------
-- 着地
------------------------------------------------------
--エフェクトの再生(前)
lamding_front=entryEffectLife(spep_3,SP_04x,98,0x100,-1,0,0,0);

setEffMoveKey(spep_3,lamding_front,0,0,0);
setEffMoveKey(spep_3+98,lamding_front,0,0,0);
setEffScaleKey(spep_3,lamding_front,1.0,1.0);
setEffScaleKey(spep_3+98,lamding_front,1.0,1.0);
setEffAlphaKey(spep_3,lamding_front,255);
setEffAlphaKey(spep_3+98,lamding_front,255);
setEffRotateKey(spep_3,lamding_front,0);
setEffRotateKey(spep_3+98,lamding_front,0);

--エフェクトの再生(後ろ)
lamding_back=entryEffectLife(spep_3,SP_05x,177,0x80,-1,0,0,0);

setEffMoveKey(spep_3,lamding_back,0,0,0);
setEffMoveKey(spep_3+177,lamding_back,0,0,0);
setEffScaleKey(spep_3,lamding_back,1.0,1.0);
setEffScaleKey(spep_3+177,lamding_back,1.0,1.0);
setEffAlphaKey(spep_3,lamding_back,255);
setEffAlphaKey(spep_3+177,lamding_back,255);
setEffRotateKey(spep_3,lamding_back,0);
setEffRotateKey(spep_3+177,lamding_back,0);

--集中線
shuchu4 = entryEffectLife( spep_3 + 0,  906, 178, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_3 + 0, shuchu4, 0, 0 , 0 );
setEffMoveKey( spep_3 + 178, shuchu4, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchu4, 1.4, 1.75 );
setEffScaleKey( spep_3 + 178, shuchu4, 1.4, 1.75 );

setEffRotateKey( spep_3 + 0, shuchu4, 0 );
setEffRotateKey( spep_3 + 178, shuchu4, 0 );

setEffAlphaKey( spep_3 + 0, shuchu4, 255 );
setEffAlphaKey( spep_3 + 178, shuchu4, 255 );

--[[
--流線
ryusen3 = entryEffectLife( spep_3 + 0,  921, 75, 0x80, -1,  0, 0, 0);
setEffMoveKey( spep_3 + 0, ryusen3, 0, 0, 0);
setEffMoveKey( spep_3 + 75, ryusen3, 0, 0, 0);

setEffScaleKey( spep_3 + 0, ryusen3, 1.38, 1.41 );
setEffScaleKey( spep_3 + 75, ryusen3, 1.38, 1.41 );

setEffRotateKey( spep_3 + 0, ryusen3, -132 );
setEffRotateKey( spep_3 + 75, ryusen3, -132 );

setEffAlphaKey( spep_3 + 0, ryusen3, 255 );
setEffAlphaKey( spep_3 + 75, ryusen3, 255 );

]]
--文字エントリー
ctdogon = entryEffectLife( spep_3 + 34,  10018, 36, 0x100, -1, 0, 135.7, 302.7 );--ドゴォン
setEffMoveKey( spep_3 + 34, ctdogon, 135.7, 302.7 , 0 );
setEffMoveKey( spep_3 + 36, ctdogon, 136.6, 299.3 , 0 );
setEffMoveKey( spep_3 + 38, ctdogon, 134.4, 298.1 , 0 );
setEffMoveKey( spep_3 + 40, ctdogon, 133.5, 298.8 , 0 );
setEffMoveKey( spep_3 + 42, ctdogon, 134.7, 298.7 , 0 );
setEffMoveKey( spep_3 + 44, ctdogon, 136, 298.9 , 0 );
setEffMoveKey( spep_3 + 46, ctdogon, 134.8, 299.4 , 0 );
setEffMoveKey( spep_3 + 48, ctdogon, 134.8, 299.4 , 0 );
setEffMoveKey( spep_3 + 50, ctdogon, 134.8, 299.5 , 0 );
setEffMoveKey( spep_3 + 52, ctdogon, 134.9, 299.5 , 0 );
setEffMoveKey( spep_3 + 54, ctdogon, 134.9, 299.6 , 0 );
setEffMoveKey( spep_3 + 56, ctdogon, 134.9, 299.6 , 0 );
setEffMoveKey( spep_3 + 58, ctdogon, 135, 299.7 , 0 );
setEffMoveKey( spep_3 + 60, ctdogon, 135, 299.7 , 0 );
setEffMoveKey( spep_3 + 62, ctdogon, 135, 299.8 , 0 );
setEffMoveKey( spep_3 + 66, ctdogon, 135, 299.8 , 0 );
setEffMoveKey( spep_3 + 68, ctdogon, 135, 299.9 , 0 );
setEffMoveKey( spep_3 + 70, ctdogon, 135, 299.9 , 0 );

setEffScaleKey( spep_3 + 34, ctdogon, 1.2, 1.2 );
setEffScaleKey( spep_3 + 36, ctdogon, 2.56, 2.56 );
setEffScaleKey( spep_3 + 38, ctdogon, 3.25, 3.25 );
setEffScaleKey( spep_3 + 40, ctdogon, 3.09, 3.09 );
setEffScaleKey( spep_3 + 42, ctdogon, 2.94, 2.94 );
setEffScaleKey( spep_3 + 44, ctdogon, 2.78, 2.78 );
setEffScaleKey( spep_3 + 46, ctdogon, 2.63, 2.63 );
setEffScaleKey( spep_3 + 48, ctdogon, 2.6, 2.6 );
setEffScaleKey( spep_3 + 50, ctdogon, 2.58, 2.58 );
setEffScaleKey( spep_3 + 52, ctdogon, 2.55, 2.55 );
setEffScaleKey( spep_3 + 54, ctdogon, 2.53, 2.53 );
setEffScaleKey( spep_3 + 56, ctdogon, 2.5, 2.5 );
setEffScaleKey( spep_3 + 58, ctdogon, 2.47, 2.47 );
setEffScaleKey( spep_3 + 60, ctdogon, 2.45, 2.45 );
setEffScaleKey( spep_3 + 62, ctdogon, 2.42, 2.42 );
setEffScaleKey( spep_3 + 64, ctdogon, 2.41, 2.41 );
setEffScaleKey( spep_3 + 66, ctdogon, 2.4, 2.4 );
setEffScaleKey( spep_3 + 68, ctdogon, 2.39, 2.39 );
setEffScaleKey( spep_3 + 70, ctdogon, 2.38, 2.38 );

setEffRotateKey( spep_3 + 34, ctdogon, 15.3 );
setEffRotateKey( spep_3 + 36, ctdogon, 1.9 );
setEffRotateKey( spep_3 + 38, ctdogon, 15.3 );
setEffRotateKey( spep_3 + 40, ctdogon, 23.9 );
setEffRotateKey( spep_3 + 42, ctdogon, 15.1 );
setEffRotateKey( spep_3 + 44, ctdogon, 4.4 );
setEffRotateKey( spep_3 + 46, ctdogon, 15.3 );
setEffRotateKey( spep_3 + 50, ctdogon, 15.3 );
setEffRotateKey( spep_3 + 52, ctdogon, 15.2 );
setEffRotateKey( spep_3 + 58, ctdogon, 15.2 );
setEffRotateKey( spep_3 + 60, ctdogon, 15.1 );
setEffRotateKey( spep_3 + 62, ctdogon, 15.1 );
setEffRotateKey( spep_3 + 64, ctdogon, 15.2 );
setEffRotateKey( spep_3 + 66, ctdogon, 15.2 );
setEffRotateKey( spep_3 + 68, ctdogon, 15.3 );
setEffRotateKey( spep_3 + 70, ctdogon, 15.3 );

setEffAlphaKey( spep_3 + 34, ctdogon, 255 );
setEffAlphaKey( spep_3 + 62, ctdogon, 255 );
setEffAlphaKey( spep_3 + 64, ctdogon, 191 );
setEffAlphaKey( spep_3 + 66, ctdogon, 128 );
setEffAlphaKey( spep_3 + 68, ctdogon, 64 );
setEffAlphaKey( spep_3 + 70, ctdogon, 0 );

--敵の動き
setDisp(spep_3,1,1);
setDisp(spep_3+34,1,0);
changeAnime(spep_3,1,108);

--[[
--setMoveKey( spep_3 + 0, 1, -319.2, 389.6 , 0 );
--setMoveKey( spep_3 + 2, 1, -308.8, 376.2 , 0 );
setMoveKey( spep_3 + 0, 1, -295.6, 350.8 , 0 );
setMoveKey( spep_3 + 6, 1, -281.6, 319.5 , 0 );
setMoveKey( spep_3 + 8, 1, -252.6, 297.8 , 0 );
setMoveKey( spep_3 + 10, 1, -218.5, 261.9 , 0 );
setMoveKey( spep_3 + 12, 1, -185.2, 211.6 , 0 );
setMoveKey( spep_3 + 14, 1, -142.6, 166.5 , 0 );
setMoveKey( spep_3 + 16, 1, -98.6, 102.8 , 0 );
setMoveKey( spep_3 + 18, 1, -45.2, 44.3 , 0 );
setMoveKey( spep_3 + 20, 1, 9.9, -31.5 , 0 );
setMoveKey( spep_3 + 22, 1, 37.5, -71.4 , 0 );
setMoveKey( spep_3 + 24, 1, 66.8, -100.6 , 0 );
setMoveKey( spep_3 + 26, 1, 93.6, -127 , 0 );
setMoveKey( spep_3 + 66, 1, 351.7, -478.5 , 0 );
setMoveKey( spep_3 + 68, 1, 365.4, -479 , 0 );
setMoveKey( spep_3 + 70, 1, 371.1, -499.7 , 0 );
setMoveKey( spep_3 + 72, 1, 385, -504.5 , 0 );
setMoveKey( spep_3 + 74, 1, 383, -525.4 , 0 );
setMoveKey( spep_3 + 76, 1, 405.1, -530.5 , 0 );
setMoveKey( spep_3 + 78, 1, 403.3, -551.7 , 0 );
setMoveKey( spep_3 + 80, 1, 425.6, -557 , 0 );
setMoveKey( spep_3 + 82, 1, 436, -570.5 , 0 );
setMoveKey( spep_3 + 84, 1, 434.5, -592.2 , 0 );
setMoveKey( spep_3 + 86, 1, 457.1, -597.9 , 0 );
setMoveKey( spep_3 + 88, 1, 463.8, -619.8 , 0 );
setMoveKey( spep_3 + 90, 1, 478.7, -625.9 , 0 );
setMoveKey( spep_3 + 92, 1, 485.6, -652.1 , 0 );
setMoveKey( spep_3 + 94, 1, 500.7, -654.4 , 0 );
setMoveKey( spep_3 + 96, 1, 507.8, -680.9 , 0 );
setMoveKey( spep_3 + 98, 1, 523.1, -683.5 , 0 );


setMoveKey( spep_3 + 0, 1, -312.2, 376.2 , 0 );
setMoveKey( spep_3 + 10, 1, -192.2, 206.2 , 0 );
setMoveKey( spep_3 + 20, 1, 30.2, -50.2 , 0 );
setMoveKey( spep_3 + 34, 1, 209.9, -289.4 , 0 );
]]

setMoveKey( spep_3 + 0, 1, -312.2, 376.2 , 0 );
setMoveKey( spep_3 + 2, 1, -295.6, 350.8 , 0 );
setMoveKey( spep_3 + 4, 1, -281.6, 319.5 , 0 );
setMoveKey( spep_3 + 6, 1, -252.6, 297.8 , 0 );
setMoveKey( spep_3 + 8, 1, -218.5, 261.9 , 0 );
setMoveKey( spep_3 + 10, 1, -185.2, 211.6 , 0 );
setMoveKey( spep_3 + 12, 1, -142.6, 166.5 , 0 );
setMoveKey( spep_3 + 14, 1, -98.6, 102.8 , 0 );
setMoveKey( spep_3 + 16, 1, -45.2, 44.3 , 0 );
setMoveKey( spep_3 + 18, 1, 9.9, -31.5 , 0 );
setMoveKey( spep_3 + 20, 1, 37.5, -71.4 , 0 );
setMoveKey( spep_3 + 22, 1, 66.8, -100.6 , 0 );
setMoveKey( spep_3 + 24, 1, 93.6, -127 , 0 );
setMoveKey( spep_3 + 26, 1, 113.9, -158.3 , 0 );
setMoveKey( spep_3 + 28, 1, 131.8, -182.6 , 0 );
setMoveKey( spep_3 + 30, 1, 153.1, -199.8 , 0 );
setMoveKey( spep_3 + 32, 1, 209.9, -279.4 , 0 );
setMoveKey( spep_3 + 34, 1, 212.6, -294.8 , 0 );

setScaleKey( spep_3 + 0, 1, 0.11, 0.11 );
setScaleKey( spep_3 + 2, 1, 0.14, 0.14 );
setScaleKey( spep_3 + 4, 1, 0.17, 0.17 );
setScaleKey( spep_3 + 6, 1, 0.22, 0.22 );
setScaleKey( spep_3 + 8, 1, 0.29, 0.29 );
setScaleKey( spep_3 + 10, 1, 0.37, 0.37 );
setScaleKey( spep_3 + 12, 1, 0.46, 0.46 );
setScaleKey( spep_3 + 14, 1, 0.57, 0.57 );
setScaleKey( spep_3 + 16, 1, 0.68, 0.68 );
setScaleKey( spep_3 + 18, 1, 0.82, 0.82 );
setScaleKey( spep_3 + 20, 1, 0.96, 0.96 );
setScaleKey( spep_3 + 22, 1, 1.06, 1.06 );
setScaleKey( spep_3 + 24, 1, 1.14, 1.14 );
setScaleKey( spep_3 + 26, 1, 1.22, 1.22 );
setScaleKey( spep_3 + 28, 1, 1.29, 1.29 );
setScaleKey( spep_3 + 30, 1, 1.36, 1.36 );
setScaleKey( spep_3 + 32, 1, 1.41, 1.41 );
setScaleKey( spep_3 + 34, 1, 1.84, 1.84 );

setRotateKey( spep_3 + 0, 1, 51.8 );
setRotateKey( spep_3 + 34, 1, 51.8 );

--setShakeChara(spep_3,1,34,15);


--白フェード
entryFade( spep_3+28, 0,  3, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_3+174, 4,  3, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--黒背景
entryFadeBg(spep_3, 0, 180, 0, 0, 0, 0, 255);  -- 黒　背景

--SE
playSe(spep_3+32,SE_10);
playSe(spep_3+74,1014);

--次の準備
spep_4=spep_3+180;

--------------------------------------
--カードカットイン(90F)
--------------------------------------

playSe(spep_4,SE_05);
shuchusen9=entryEffectLife(spep_4,906,90,0x100,-1,0,0,0);   -- 集中線
setEffScaleKey(spep_4,shuchusen9,1.6,1.6);

speff2=entryEffect(spep_4,1507,0x80,-1,0,0,0);   -- カード
setEffReplaceTexture(speff2,1,1);
setEffReplaceTexture(speff2,2,0);-- カード差し替え
setEffReplaceTexture(speff2,5,4);-- 技名テクスチャ差し替え

-- ** エフェクト等 ** --
entryFade(spep_4+85,3,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_5=spep_4+90;

------------------------------------------------------
-- 放つ
------------------------------------------------------
--エフェクトの再生
lamding_front2=entryEffectLife(spep_5,SP_06x,140,0x100,-1,0,0,0);

setEffMoveKey(spep_5,lamding_front2,0,0,0);
setEffMoveKey(spep_5+140,lamding_front2,0,0,0);
setEffScaleKey(spep_5,lamding_front2,1.0,1.0);
setEffScaleKey(spep_5+140,lamding_front2,1.0,1.0);
setEffAlphaKey(spep_5,lamding_front2,255);
setEffAlphaKey(spep_5+140,lamding_front2,255);
setEffRotateKey(spep_5,lamding_front2,0);
setEffRotateKey(spep_5+140,lamding_front2,0);

--集中線
shuchu5 = entryEffectLife( spep_5 + 0,  906, 178, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_5 + 0,shuchu5, 0, 0 , 0 );
setEffMoveKey( spep_5 + 178,shuchu5, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0,shuchu5, 1.4, 1.75 );
setEffScaleKey( spep_5 + 178,shuchu5, 1.4, 1.75 );

setEffRotateKey( spep_5 + 0,shuchu5, 0 );
setEffRotateKey( spep_5 + 178,shuchu5, 0 );

setEffAlphaKey( spep_5 + 0,shuchu5, 255 );
setEffAlphaKey( spep_5 + 178,shuchu5, 255 );

--文字エントリー
ctzuo2 = entryEffectLife( spep_5 + 66,  10012, 36, 0x100, -1, 0, 38.7, 220.5 );--ズオッ
setEffMoveKey( spep_5 + 66, ctzuo2, 88.7, 220.5 , 0 );
setEffMoveKey( spep_5 + 68, ctzuo2, 115, 248.6 , 0 );
setEffMoveKey( spep_5 + 70, ctzuo2, 127.9, 290.1 , 0 );
setEffMoveKey( spep_5 + 72, ctzuo2, 163.7, 308.8 , 0 );
setEffMoveKey( spep_5 + 74, ctzuo2, 147.7, 324.8 , 0 );
setEffMoveKey( spep_5 + 76, ctzuo2, 163.7, 308.8 , 0 );
setEffMoveKey( spep_5 + 78, ctzuo2, 147.7, 324.8 , 0 );
setEffMoveKey( spep_5 + 80, ctzuo2, 163.7, 308.8 , 0 );
setEffMoveKey( spep_5 + 82, ctzuo2, 147.7, 324.8 , 0 );
setEffMoveKey( spep_5 + 84, ctzuo2, 163.7, 308.8 , 0 );
setEffMoveKey( spep_5 + 86, ctzuo2, 147.7, 324.8 , 0 );
setEffMoveKey( spep_5 + 88, ctzuo2, 163.7, 308.8 , 0 );
setEffMoveKey( spep_5 + 90, ctzuo2, 147.7, 324.8 , 0 );
setEffMoveKey( spep_5 + 92, ctzuo2, 163.7, 308.8 , 0 );
setEffMoveKey( spep_5 + 94, ctzuo2, 147.7, 324.8 , 0 );
setEffMoveKey( spep_5 + 96, ctzuo2, 187.9, 304.7 , 0 );
setEffMoveKey( spep_5 + 98, ctzuo2, 184, 328.7 , 0 );
setEffMoveKey( spep_5 + 100, ctzuo2, 236.1, 296.5 , 0 );
setEffMoveKey( spep_5 + 102, ctzuo2, 260.3, 292.4 , 0 );

setEffScaleKey( spep_5 + 66, ctzuo2, 0.34, 0.34 );
setEffScaleKey( spep_5 + 68, ctzuo2, 1.13, 1.13 );
setEffScaleKey( spep_5 + 70, ctzuo2, 1.94, 1.94 );
setEffScaleKey( spep_5 + 72, ctzuo2, 2.73, 2.73 );
setEffScaleKey( spep_5 + 94, ctzuo2, 2.73, 2.73 );
setEffScaleKey( spep_5 + 96, ctzuo2, 3.75, 3.75 );
setEffScaleKey( spep_5 + 98, ctzuo2, 4.78, 4.78 );
setEffScaleKey( spep_5 + 100, ctzuo2, 5.8, 5.8 );
setEffScaleKey( spep_5 + 102, ctzuo2, 6.82, 6.82 );

setEffRotateKey( spep_5 + 66, ctzuo2, 27.2 );
setEffRotateKey( spep_5 + 102, ctzuo2, 27.2 );

setEffAlphaKey( spep_5 + 66, ctzuo2, 255 );
setEffAlphaKey( spep_5 + 94, ctzuo2, 255 );
setEffAlphaKey( spep_5 + 96, ctzuo2, 191 );
setEffAlphaKey( spep_5 + 98, ctzuo2, 128 );
setEffAlphaKey( spep_5 + 100, ctzuo2, 64 );
setEffAlphaKey( spep_5 + 102, ctzuo2, 0 );

--白フェード
entryFade( spep_5+64, 0,  2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_5+131, 6,  5, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--se
playSe(spep_5,SE_03);
playSe(spep_5+20,SE_03);
playSe(spep_5+47,SE_03);
playSe(  spep_5+66, SE_10);

--黒背景
entryFadeBg(spep_5, 0, 140, 0, 0, 0, 0, 255);  -- 黒　背景

--次の準備
spep_6=spep_5+140;
------------------------------------------------------
-- 爆発
------------------------------------------------------
--エフェクトの再生
explosion=entryEffect(spep_6,1689,0x100,-1,0,0,0);

setEffMoveKey(spep_6,explosion,0,0,0);
setEffMoveKey(spep_6+140,explosion,0,0,0);
setEffScaleKey(spep_6,explosion,1.2,1.2);
setEffScaleKey(spep_6+140,explosion,1.2,1.2);
setEffAlphaKey(spep_6,explosion,255);
setEffAlphaKey(spep_6+140,explosion,255);
setEffRotateKey(spep_6,explosion,0);
setEffRotateKey(spep_6+140,explosion,0);

--SE
playSe( spep_6+4, SE_10);

-- ダメージ表示
dealDamage(spep_6+0);
entryFade( spep_6+120, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_6+130);

end


