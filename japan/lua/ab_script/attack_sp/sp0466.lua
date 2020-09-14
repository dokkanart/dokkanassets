--セルGT_魔貫光殺砲　1014310


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
SE_08 = 1042; --カットイン
SE_09 = 1023; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音
SE_12 = 09;

--味方側
SP_01=151791;--	気溜め
SP_02=151792;--	連続デスビーム発射
SP_03=151793;--	連続デスビーム被弾
SP_04=151794;--	連続デスビーム被弾
SP_05=151795;--	魔貫光殺砲構え
SP_06=151796;--	魔貫光殺砲発射
SP_07=151797;--	魔貫光殺砲被弾
SP_08=151798;--	魔貫光殺砲被弾


--敵側は味方側に1xをつけてます
SP_01x=151791;--	気溜め
SP_02x=151799;--	連続デスビーム発射
SP_03x=151793;--	連続デスビーム被弾
SP_04x=151794;--	連続デスビーム被弾
SP_05x=151800;--	魔貫光殺砲構え
SP_06x=151801;--	魔貫光殺砲発射
SP_07x=151797;--	魔貫光殺砲被弾
SP_08x=151798;--	魔貫光殺砲被弾


multi_frm = 2;


------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

setDisp( 0, 1, 0);
setMoveKey(   0,   1,    0, -54,   0);
setMoveKey(   1,   1,    0, -54,   0);
setMoveKey(   2,   1,    0, -54,   0);
setMoveKey(   3,   1,    0, -54,   0);
setScaleKey(   1,   1, 1.6, 1.6);
setRotateKey(   1,   1, 0);


------------------------------------------------------
-- 味方側
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
--待機
------------------------------------------------------
spep_0 = 0;

--味方キャラの登場
setDisp( 0, 0, 1);

changeAnime(0,0,1);

setMoveKey(   0,   0,    0, 10,   0);
setMoveKey(   1,   0,    0, 10,   0);
setMoveKey(   2,   0,    0, 10,   0);
setMoveKey(   3,   0,    0, 10,   0);
setMoveKey(   29,   0,    0, 10,   0);

setScaleKey(   0,   0, 1.6, 1.6);
setScaleKey(  spep_0+29,   0, 1.6, 1.6);

setRotateKey(   1,   0, 0);
setRotateKey(   spep_0+29,   0, 0);

--白フェード
entryFade(spep_0+30,0,1,5,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_1= spep_0+30;
------------------------------------------------------
--気溜め
------------------------------------------------------
--味方キャラの登場
--

changeAnime(spep_1,0,17);

setMoveKey(   spep_1,   0,    0, 10,   0);
setMoveKey(   spep_1+40,   0,    0, 10,   0);

setScaleKey(   spep_1,   0, 1.6, 1.6);
setScaleKey(   spep_1+40,   0, 1.6, 1.6);

setRotateKey(   spep_1,   0, 0);
setRotateKey(   spep_1+40,   0, 0);

--キャラクターの非表示
setDisp( spep_1+35, 0, 0);

--エフェクトの再生
kidame=entryEffectLife(spep_1,SP_01,35,0x100,-1,0,0,0);
setEffMoveKey(spep_1,kidame,0,0,0);
setEffMoveKey(spep_1+35,kidame,0,0,0);
setEffScaleKey(spep_1,kidame,1.0,1.0);
setEffScaleKey(spep_1+35,kidame,1.0,1.0);
setEffAlphaKey(spep_1,kidame,255);
setEffAlphaKey(spep_1+35,kidame,255);
setEffRotateKey(spep_1,kidame,0);
setEffRotateKey(spep_1+35,kidame,0);



--集中線
shuchu = entryEffectLife( spep_1,906, 35, 0x100, -1, 0, 244.5, 0 );
setEffMoveKey( spep_1, shuchu, 0, 0 , 0 );
setEffMoveKey( spep_1+35, shuchu, 0, 0 , 0 );

setEffScaleKey( spep_1, shuchu, 1.15, 1.15 );
setEffScaleKey( spep_1+35, shuchu, 1.15, 1.15 );

setEffAlphaKey(spep_1,shuchu,255);
setEffAlphaKey(spep_1+35,shuchu,255);
setEffRotateKey(spep_1,shuchu,180);
setEffRotateKey(spep_1+35,shuchu,180);


--文字エントリー
ctzuzuzun = entryEffectLife( spep_1,  10013, 35, 0x100, -1, 0, 22, 191.9 );--ズズズン
setEffMoveKey( spep_1, ctzuzuzun, 46, 280.9 , 0 );
setEffMoveKey( spep_1 +35, ctzuzuzun, 46, 280.9 , 0 );

setEffScaleKey( spep_1, ctzuzuzun,  0.35, 0.35);
setEffScaleKey( spep_1+3, ctzuzuzun,  3.2, 2.8);
setEffScaleKey( spep_1 + 35, ctzuzuzun, 3.2, 2.8);

setEffRotateKey( spep_1, ctzuzuzun, 0 );
setEffRotateKey( spep_1+35, ctzuzuzun, 0 );

setEffShake(spep_1,ctzuzuzun,35,15);
--setEffShake(spep_1,ctzuzuzun, 30,15);
--setEffShake(spep_1+35,ctzuzuzun, 30,15);

--SE
playSe( spep_1, SE_01);

--黒背景
entryFadeBg(spep_1, 10, 25, 0, 0, 0, 0, 160);  -- 黒　背景

--白フェード
entryFade(spep_1+32,3,1,5,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_2=spep_1+35;

------------------------------------------------------
--連続デスビーム発射
------------------------------------------------------
--エフェクトの再生
deathbeam=entryEffectLife(spep_2,SP_02,90,0x100,-1,0,0,0);
setEffMoveKey(spep_2,deathbeam,0,0,0);
setEffMoveKey(spep_2+90,deathbeam,0,0,0);
setEffScaleKey(spep_2,deathbeam,1.0,1.0);
setEffScaleKey(spep_2+90,deathbeam,1.0,1.0);
setEffAlphaKey(spep_2,deathbeam,255);
setEffAlphaKey(spep_2+90,deathbeam,255);
setEffRotateKey(spep_2,deathbeam,0);
setEffRotateKey(spep_2+90,deathbeam,0);


--集中線(斜め)
shuchu2 = entryEffectLife( spep_2,  921, 88, 0x80, -1, 0, -6.3, 5.9 );

setEffMoveKey( spep_2 + 0, shuchu2, -6.3, 6.4 , 0 );
setEffMoveKey( spep_2 + 88, shuchu2, -6.3, 6.4 , 0 );

setEffScaleKey( spep_2 + 0, shuchu2, 1.14, 1.14 );
setEffScaleKey( spep_2 + 88, shuchu2, 1.14, 1.14 );

setEffAlphaKey(spep_2,shuchu2,255);
setEffAlphaKey(spep_2 + 88,shuchu2,255);

setEffRotateKey( spep_2 + 0, shuchu2, 180 );
setEffRotateKey( spep_2 + 88,shuchu2, 180 );


--集中線
shuchu3 = entryEffectLife( spep_2,906, 88, 0x100, -1, 0, 244.5, 0 );
setEffMoveKey( spep_2, shuchu3, 0, 0 , 0 );
setEffMoveKey( spep_2+88, shuchu3, 0, 0 , 0 );

setEffScaleKey( spep_2, shuchu3, 2.5, 2.5);
setEffScaleKey( spep_2+15, shuchu3, 2.5, 2.5);
setEffScaleKey( spep_2+16, shuchu3, 1.5, 1.5);
setEffScaleKey( spep_2+88, shuchu3, 1.5, 1.5);

setEffAlphaKey(spep_2,shuchu3,255);
setEffAlphaKey(spep_2+88,shuchu3,255);
setEffRotateKey(spep_2,shuchu3,180);
setEffRotateKey(spep_2+88,shuchu3,180);


--文字エントリー
ctbibibi = entryEffectLife( spep_2 + 37,  10025, 53, 0x100, -1, 0, 105.2, 303.3 );--ビビビッ
setEffMoveKey( spep_2 + 37, ctbibibi, 105.2, 303.3 , 0 );
setEffMoveKey( spep_2 + 43, ctbibibi, 120.4, 304.3 , 0 );
setEffMoveKey( spep_2 + 44, ctbibibi, 124, 316.1 , 0 );
setEffMoveKey( spep_2 + 46, ctbibibi, 118.7, 316.7 , 0 );
setEffMoveKey( spep_2 + 48, ctbibibi, 128.2, 310.4 , 0 );
setEffMoveKey( spep_2 + 50, ctbibibi, 124.5, 324.9 , 0 );
setEffMoveKey( spep_2 + 52, ctbibibi, 124.6, 310.6 , 0 );
setEffMoveKey( spep_2 + 54, ctbibibi, 124.2, 324 , 0 );
setEffMoveKey( spep_2 + 56, ctbibibi, 126, 309.9 , 0 );
setEffMoveKey( spep_2 + 58, ctbibibi, 124.4, 321.6 , 0 );
setEffMoveKey( spep_2 + 60, ctbibibi, 121.5, 306.3 , 0 );
setEffMoveKey( spep_2 + 62, ctbibibi, 124.5, 325.7 , 0 );
setEffMoveKey( spep_2 + 64, ctbibibi, 118.7, 312.4 , 0 );
setEffMoveKey( spep_2 + 66, ctbibibi, 129.4, 318.4 , 0 );
setEffMoveKey( spep_2 + 68, ctbibibi, 121.7, 307.2 , 0 );
setEffMoveKey( spep_2 + 70, ctbibibi, 128.1, 324.6 , 0 );
setEffMoveKey( spep_2 + 72, ctbibibi, 117.7, 310.9 , 0 );
setEffMoveKey( spep_2 + 74, ctbibibi, 132.1, 319.3 , 0 );
setEffMoveKey( spep_2 + 76, ctbibibi, 120.1, 312.8 , 0 );
setEffMoveKey( spep_2 + 78, ctbibibi, 132.2, 313.8 , 0 );
setEffMoveKey( spep_2 + 80, ctbibibi, 118.9, 316.5 , 0 );
setEffMoveKey( spep_2 + 82, ctbibibi, 132.2, 318.1 , 0 );
setEffMoveKey( spep_2 + 84, ctbibibi, 124, 316.1 , 0 );
setEffMoveKey( spep_2 + 86, ctbibibi, 118.7, 316.7 , 0 );
setEffMoveKey( spep_2 + 88, ctbibibi, 128.2, 310.4 , 0 );
setEffMoveKey( spep_2 + 90, ctbibibi, 128.2, 310.4 , 0 );

setEffScaleKey( spep_2 + 37, ctbibibi, 1.47, 1.47 );
setEffScaleKey( spep_2 + 42, ctbibibi, 1.66, 1.66 );
setEffScaleKey( spep_2 + 44, ctbibibi, 1.86, 1.86 );
setEffScaleKey( spep_2 + 90, ctbibibi, 1.86, 1.86 );

setEffRotateKey( spep_2 + 37, ctbibibi, 0 );
setEffRotateKey( spep_2 + 90, ctbibibi, 0 );

setEffAlphaKey(spep_2 + 37,ctbibibi,255);
setEffAlphaKey(spep_2 + 90,ctbibibi,255);
--SE
playSe( spep_2+37, 43); --340
playSe( spep_2+52, 43); --340
playSe( spep_2+67, 43); --340
--playSe( spep_2+67, SE_04); --340
--playSe( spep_2+77, SE_04); --340
--playSe( spep_2+87, SE_04); --340


--黒背景
entryFadeBg(spep_2, 0, 90, 0, 0, 0, 0, 200);  -- 黒　背景

--白フェード
entryFade(spep_2+84,4,3,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_3=spep_2+90;

------------------------------------------------------
--連続デスビーム被弾
------------------------------------------------------
--エフェクトの再生(前)
hit=entryEffectLife(spep_3,SP_03,83,0x100,-1,0,0,0);
setEffMoveKey(spep_3,hit,0,0,0);
setEffMoveKey(spep_3+83,hit,0,0,0);
setEffScaleKey(spep_3,hit,1.0,1.0);
setEffScaleKey(spep_3+83,hit,1.0,1.0);
setEffAlphaKey(spep_3,hit,255);
setEffAlphaKey(spep_3+83,hit,255);
setEffRotateKey(spep_3,hit,0);
setEffRotateKey(spep_3+83,hit,0);

--エフェクトの再生(後)
hit2=entryEffectLife(spep_3,SP_04,83,0x80,-1,0,0,0);
setEffMoveKey(spep_3,hit2,0,0,0);
setEffMoveKey(spep_3+83,hit2,0,0,0);
setEffScaleKey(spep_3,hit2,1.0,1.0);
setEffScaleKey(spep_3+83,hit2,1.0,1.0);
setEffAlphaKey(spep_3,hit2,255);
setEffAlphaKey(spep_3+83,hit2,255);
setEffRotateKey(spep_3,hit2,0);
setEffRotateKey(spep_3+83,hit2,0);

--敵キャラ
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 83, 1, 0 );
changeAnime( spep_3 + 0, 1, 100 );


setMoveKey( spep_3 + 0, 1, -21.9, 12 , 0 );
setMoveKey( spep_3 + 2, 1, -17.9, 12.8 , 0 );
setMoveKey( spep_3 + 4, 1, -13.4, 12.8 , 0 );
setMoveKey( spep_3 + 6, 1, -6.5, 9.1 , 0 );
setMoveKey( spep_3 + 8, 1, 1.1, 12.4 , 0 );
setMoveKey( spep_3 + 10, 1, -1.7, 10.7 , 0 );
setMoveKey( spep_3 + 12, 1, 6, 14.6 , 0 );
setMoveKey( spep_3 + 14, 1, 5.2, 12.7 , 0 );
setMoveKey( spep_3 + 16, 1, 10.8, 8.1 , 0 );
setMoveKey( spep_3 + 18, 1, 11, 16.3 , 0 );
setMoveKey( spep_3 + 20, 1, 10.7, 9 , 0 );
setMoveKey( spep_3 + 22, 1, 12.2, 7.7 , 0 );
setMoveKey( spep_3 + 24, 1, 21, 9.5 , 0 );
setMoveKey( spep_3 + 26, 1, 17.5, 15.3 , 0 );
setMoveKey( spep_3 + 28, 1, 19.1, 7.4 , 0 );
setMoveKey( spep_3 + 30, 1, 22.5, 11.2 , 0 );
setMoveKey( spep_3 + 32, 1, 13.6, 10.2 , 0 );
setMoveKey( spep_3 + 34, 1, 22, 17.8 , 0 );
setMoveKey( spep_3 + 36, 1, 21.3, 18.2 , 0 );
setMoveKey( spep_3 + 38, 1, 14.1, 10.3 , 0 );
setMoveKey( spep_3 + 40, 1, 19.3, 5.8 , 0 );
setMoveKey( spep_3 + 42, 1, 23.7, 13.1 , 0 );
setMoveKey( spep_3 + 44, 1, 11.1, 14.4 , 0 );
setMoveKey( spep_3 + 46, 1, 12.4, 8.4 , 0 );
setMoveKey( spep_3 + 48, 1, 22.1, 3.2 , 0 );
setMoveKey( spep_3 + 50, 1, 11.5, 18.8 , 0 );
setMoveKey( spep_3 + 52, 1, 26.3, 7.6 , 0 );
setMoveKey( spep_3 + 54, 1, 9.7, 14.6 , 0 );
setMoveKey( spep_3 + 56, 1, 9, 10.1 , 0 );
setMoveKey( spep_3 + 58, 1, 21.5, 22.5 , 0 );
setMoveKey( spep_3 + 60, 1, 21.1, 5 , 0 );
setMoveKey( spep_3 + 62, 1, 24.7, 18 , 0 );
setMoveKey( spep_3 + 64, 1, 12.3, 4.7 , 0 );
setMoveKey( spep_3 + 66, 1, 21.8, 5.5 , 0 );
setMoveKey( spep_3 + 68, 1, 7.8, 12.3 , 0 );
setMoveKey( spep_3 + 70, 1, 23.8, 7.8 , 0 );
setMoveKey( spep_3 + 72, 1, 12.6, 16.8 , 0 );
setMoveKey( spep_3 + 74, 1, 7.6, 10.3 , 0 );
setMoveKey( spep_3 + 76, 1, 26.3, 17.1 , 0 );
setMoveKey( spep_3 + 78, 1, 26.4, 19 , 0 );
setMoveKey( spep_3 + 80, 1, 19.1, -1 , 0 );
setMoveKey( spep_3 + 83, 1, 19.1, -1 , 0 );

setScaleKey( spep_3 + 0, 1, 1.7, 1.7 );
setScaleKey( spep_3 + 2, 1, 1.69, 1.69 );
setScaleKey( spep_3 + 4, 1, 1.67, 1.67 );
setScaleKey( spep_3 + 6, 1, 1.66, 1.66 );
setScaleKey( spep_3 + 8, 1, 1.65, 1.65 );
setScaleKey( spep_3 + 10, 1, 1.64, 1.64 );
setScaleKey( spep_3 + 12, 1, 1.63, 1.63 );
setScaleKey( spep_3 + 14, 1, 1.63, 1.63 );
setScaleKey( spep_3 + 16, 1, 1.62, 1.62 );
setScaleKey( spep_3 + 18, 1, 1.61, 1.61 );
setScaleKey( spep_3 + 20, 1, 1.61, 1.61 );
setScaleKey( spep_3 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_3 + 83, 1, 1.6, 1.6 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 + 83, 1, 0 );

--文字エントリー
ctzudodo = entryEffectLife( spep_3 + 15,10014, 67, 0x100, -1, 0, 63.6, 344.3 );--ズドド
setEffMoveKey( spep_3 + 15, ctzudodo, 63.6, 344.3 , 0 );
setEffMoveKey( spep_3 + 20, ctzudodo, 39.6, 328.3 , 0 );
setEffMoveKey( spep_3 + 22, ctzudodo, 63.6, 344.3 , 0 );
setEffMoveKey( spep_3 + 24, ctzudodo, 39.6, 328.3 , 0 );
setEffMoveKey( spep_3 + 26, ctzudodo, 63.6, 344.3 , 0 );
setEffMoveKey( spep_3 + 28, ctzudodo, 39.6, 328.3 , 0 );
setEffMoveKey( spep_3 + 30, ctzudodo, 63.6, 344.3 , 0 );
setEffMoveKey( spep_3 + 32, ctzudodo, 39.6, 328.3 , 0 );
setEffMoveKey( spep_3 + 34, ctzudodo, 63.6, 344.3 , 0 );
setEffMoveKey( spep_3 + 36, ctzudodo, 39.6, 328.3 , 0 );
setEffMoveKey( spep_3 + 38, ctzudodo, 63.6, 344.3 , 0 );
setEffMoveKey( spep_3 + 40, ctzudodo, 39.6, 328.3 , 0 );
setEffMoveKey( spep_3 + 42, ctzudodo, 63.6, 344.3 , 0 );
setEffMoveKey( spep_3 + 44, ctzudodo, 39.6, 328.3 , 0 );
setEffMoveKey( spep_3 + 46, ctzudodo, 63.6, 344.3 , 0 );
setEffMoveKey( spep_3 + 48, ctzudodo, 39.6, 328.3 , 0 );
setEffMoveKey( spep_3 + 50, ctzudodo, 63.6, 344.3 , 0 );
setEffMoveKey( spep_3 + 52, ctzudodo, 39.6, 328.3 , 0 );
setEffMoveKey( spep_3 + 54, ctzudodo, 63.6, 344.3 , 0 );
setEffMoveKey( spep_3 + 56, ctzudodo, 39.6, 328.3 , 0 );
setEffMoveKey( spep_3 + 58, ctzudodo, 63.6, 344.3 , 0 );
setEffMoveKey( spep_3 + 60, ctzudodo, 39.6, 328.3 , 0 );
setEffMoveKey( spep_3 + 62, ctzudodo, 63.6, 344.3 , 0 );
setEffMoveKey( spep_3 + 64, ctzudodo, 39.6, 328.3 , 0 );
setEffMoveKey( spep_3 + 66, ctzudodo, 63.6, 344.3 , 0 );
setEffMoveKey( spep_3 + 68, ctzudodo, 39.6, 328.3 , 0 );
setEffMoveKey( spep_3 + 70, ctzudodo, 63.6, 344.3 , 0 );
setEffMoveKey( spep_3 + 72, ctzudodo, 39.6, 328.3 , 0 );
setEffMoveKey( spep_3 + 74, ctzudodo, 63.6, 344.3 , 0 );
setEffMoveKey( spep_3 + 76, ctzudodo, 39.6, 328.3 , 0 );
setEffMoveKey( spep_3 + 78, ctzudodo, 63.6, 344.3 , 0 );
setEffMoveKey( spep_3 + 80, ctzudodo, 39.6, 328.3 , 0 );
setEffMoveKey( spep_3 + 82, ctzudodo, 39.6, 328.3 , 0 );

setEffScaleKey( spep_3 + 15, ctzudodo, 3.26, 3.26 );
setEffScaleKey( spep_3 +82, ctzudodo, 3.26, 3.26 );

setEffRotateKey( spep_3 + 15, ctzudodo, 75.1 );
setEffRotateKey( spep_3 + 82, ctzudodo, 75.1 );

--流線
syucho4 = entryEffectLife( spep_3 + 0,  921, 82, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_3 + 0, syucho4, 0, 0 , 0 );
setEffMoveKey( spep_3 + 82, syucho4, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, syucho4, 1, 1 );
setEffScaleKey( spep_3 + 82, syucho4, 1, 1 );
setEffRotateKey( spep_3 + 0, syucho4, 0 );
setEffRotateKey( spep_3 + 82, syucho4, 0 );



--黒背景
entryFadeBg(spep_3, 0, 83, 0, 0, 0, 0, 180);  -- 黒　背景

--白フェード
entryFade(spep_3+75,7,5,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade


--次の準備
spep_4=spep_3+87;


--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_3+4 ; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

pauseAll( SP_dodge, 67);

--キャラクターの固定
setMoveKey(SP_dodge, 1, -13.4, 12.8, 0);
setScaleKey(SP_dodge , 1 , 3.26, 3.26 );
setRotateKey(SP_dodge,   1, 0);

--キャラクターの固定
setMoveKey(SP_dodge+8, 1, -13.4, 12.8, 0);
setScaleKey(SP_dodge+8 , 1 , 3.26, 3.26 );
setRotateKey(SP_dodge+8,   1, 0);


setMoveKey(SP_dodge+9, 0, 1000 , 1000, 0);
setDisp(SP_dodge+9, 0, 0);
setDisp(SP_dodge+9, 1, 0);
setMoveKey(SP_dodge+9, 1, 0 , 0, 0);
setScaleKey(SP_dodge+9,  1 , 1.3 ,1.3);
setRotateKey(SP_dodge+9,   1, 0);

setMoveKey(SP_dodge+10, 1, 0 , 0, 0);
setScaleKey(SP_dodge+10,  1 , 1.3 ,1.3);
setRotateKey(SP_dodge+10,   1, 0);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
--entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景

entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge+10);

do return end
else end
------------------------------------------------------
--回避 終わり
------------------------------------------------------

--SE
--[[
playSe( spep_3+15 , 1011);
playSe( spep_3+30 , 1011);
--playSe( spep_3+35 , SE_05);
playSe( spep_3+45 , 1011);
--playSe( spep_3+55 , SE_05);
playSe( spep_3+60 , 1011);
playSe( spep_3+75 , 1011);
]]

--4.11調整
SE001 = playSe( spep_3+15 , 1011);
stopSe( spep_3+40,SE001,5);
SE002 = playSe( spep_3+30 , 1011);
stopSe( spep_3+55,SE002,5);
SE003 = playSe( spep_3+45 , 1011);
stopSe( spep_3+70,SE003,5);
SE004 = playSe( spep_3+60 , 1011);
stopSe( spep_3+85,SE004,5);
SE005 = playSe( spep_3+75 , 1011);


------------------------------------------------------
--魔貫光殺砲構え
----------------------------------------------------
--エフェクトの再生
stance=entryEffectLife(spep_4,SP_05,98,0x100,-1,0,0,0);
setEffMoveKey(spep_4,stance,0,0,0);
setEffMoveKey(spep_4+98,stance,0,0,0);
setEffScaleKey(spep_4,stance,1.0,1.0);
setEffScaleKey(spep_4+98,stance,1.0,1.0);
setEffAlphaKey(spep_4,stance,255);
setEffAlphaKey(spep_4+98,stance,255);
setEffRotateKey(spep_4,stance,0);
setEffRotateKey(spep_4+98,stance,0);

--後ろの気
ef_ki=entryEffectLife(spep_4, 1503, 97,0x80,0,0,0,0);   -- 集中線
setEffScaleKey(spep_4, ef_ki, 1.6, 1.6);
setEffScaleKey(spep_4+4, ef_ki, 1.3, 1.3);
setEffScaleKey(spep_4+97,ef_ki, 1.3, 1.3);
setEffMoveKey(spep_4,ef_ki,0,0,0);
setEffMoveKey(spep_4+97,ef_ki,0,0,0);
setEffAlphaKey(spep_4,ef_ki,255);
setEffAlphaKey(spep_4+97,ef_ki,255);

--バチバチ
ef_bati=entryEffectLife(spep_4, 1502, 97,0x100,0,0,0,0);   -- 集中線
setEffScaleKey(spep_4,ef_bati, 1.3, 1.3);
setEffScaleKey(spep_4+97,ef_bati, 1.3, 1.3);
setEffMoveKey(spep_4,ef_bati,0,0,0);
setEffMoveKey(spep_4+97,ef_bati,0,0,0);
setEffAlphaKey(spep_4,ef_bati,255);
setEffAlphaKey(spep_4+97,ef_bati,255);

--顔＆セリフカットイン
speff=entryEffect(spep_4+6,1504,0x100,-1,0,0,0);  --カットイン(顔)
setEffReplaceTexture(speff,3,2);  --カットイン差し替え
speff1=entryEffect(spep_4+6,1505,0x100,-1,0,0,0);  --カットイン(セリフ)
setEffReplaceTexture(speff1,4,5);  --セリフカットイン差し替え

--文字エントリー
ctgogo=entryEffectLife(spep_4+19,190006,69,0x100,-1,110,500);--ゴゴゴ
setEffMoveKey(spep_4+19,ctgogo,-170,500,0);
setEffMoveKey(spep_4+88,ctgogo,-170,500,0);
setEffScaleKey(spep_4+19, ctgogo, 0.7, 0.7);
setEffScaleKey(spep_4+88, ctgogo, 0.7, 0.7);
setEffAlphaKey(spep_4,ctgogo,255);
setEffAlphaKey(spep_4+88,ctgogo,255);

--SE
playSe( spep_4+19, SE_05); --ゴゴゴ


--白フェード
entryFade(spep_4+89,4,6,3,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
--次の準備
spep_5=spep_4+98;

--------------------------------------
--カードカットイン(90F)
--------------------------------------

playSe(spep_5,SE_05);
shuchusen9=entryEffectLife(spep_5,906,90,0x100,-1,0,0,0);   -- 集中線
setEffScaleKey(spep_5,shuchusen9,1.6,1.6);

speff2=entryEffect(spep_5,1507,0,-1,0,0,0);   -- カード
setEffReplaceTexture(speff2,1,1);
setEffReplaceTexture(speff2,2,0);-- カード差し替え
setEffReplaceTexture(speff2,5,4);-- 技名テクスチャ差し替え

-- ** エフェクト等 ** --
entryFade(spep_5+85,3,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_6=spep_5+90;

------------------------------------------------------
--魔貫光殺砲発射
----------------------------------------------------
--エフェクトの再生
firing=entryEffectLife(spep_6,SP_06,178,0x100,-1,0,0,0);
setEffMoveKey(spep_6,firing,0,0,0);
setEffMoveKey(spep_6+178,firing,0,0,0);
setEffScaleKey(spep_6,firing,1.0,1.0);
setEffScaleKey(spep_6+178,firing,1.0,1.0);
setEffAlphaKey(spep_6,firing,255);
setEffAlphaKey(spep_6+178,firing,255);
setEffRotateKey(spep_6,firing,0);
setEffRotateKey(spep_6+178,firing,0);

ctbi = entryEffectLife( spep_6 + 46,  10024, 48, 0x100, -1, 0, 117.8, 257 );--ビッ
setEffMoveKey( spep_6 + 46, ctbi, 117.8, 257 , 0 );
setEffMoveKey( spep_6 + 52, ctbi, 178.5, 317 , 0 );
setEffMoveKey( spep_6 + 54, ctbi, 238.6, 362.4 , 0 );
setEffMoveKey( spep_6 + 56, ctbi, 246.1, 364.3 , 0 );
setEffMoveKey( spep_6 + 58, ctbi, 241.5, 363.8 , 0 );
setEffMoveKey( spep_6 + 60, ctbi, 249.1, 365.7 , 0 );
setEffMoveKey( spep_6 + 62, ctbi, 242, 364.3 , 0 );
setEffMoveKey( spep_6 + 64, ctbi, 249.5, 366.2 , 0 );
setEffMoveKey( spep_6 + 66, ctbi, 244.9, 365.6 , 0 );
setEffMoveKey( spep_6 + 68, ctbi, 252.5, 367.5 , 0 );
setEffMoveKey( spep_6 + 70, ctbi, 245.4, 366.1 , 0 );
setEffMoveKey( spep_6 + 72, ctbi, 253, 368 , 0 );
setEffMoveKey( spep_6 + 74, ctbi, 245.8, 366.6 , 0 );
setEffMoveKey( spep_6 + 76, ctbi, 256, 369.3 , 0 );
setEffMoveKey( spep_6 + 78, ctbi, 248.7, 368 , 0 );
setEffMoveKey( spep_6 + 80, ctbi, 256.5, 369.9 , 0 );
setEffMoveKey( spep_6 + 82, ctbi, 249.2, 368.6 , 0 );
setEffMoveKey( spep_6 + 84, ctbi, 256.9, 370.4 , 0 );
setEffMoveKey( spep_6 + 86, ctbi, 252.1, 369.8 , 0 );
setEffMoveKey( spep_6 + 88, ctbi, 259.9, 371.8 , 0 );
setEffMoveKey( spep_6 + 90, ctbi, 252.6, 370.4 , 0 );
setEffMoveKey( spep_6 + 92, ctbi, 260.4, 372.3 , 0 );
setEffMoveKey( spep_6 + 94, ctbi, 253, 370.9 , 0 );
--setEffMoveKey( spep_6 + 96, ctbi, 263.4, 373.7 , 0 );
--setEffMoveKey( spep_6 + 98, ctbi, 255.9, 372.2 , 0 );

setEffScaleKey( spep_6 + 46, ctbi, 0.24, 0.24 );
setEffScaleKey( spep_6 + 52, ctbi, 0.93, 0.93 );
setEffScaleKey( spep_6 + 54, ctbi, 1.61, 1.61 );
setEffScaleKey( spep_6 + 56, ctbi, 1.61, 1.61 );
setEffScaleKey( spep_6 + 58, ctbi, 1.63, 1.63 );
setEffScaleKey( spep_6 + 64, ctbi, 1.63, 1.63 );
setEffScaleKey( spep_6 + 66, ctbi, 1.66, 1.66 );
setEffScaleKey( spep_6 + 74, ctbi, 1.66, 1.66 );
setEffScaleKey( spep_6 + 76, ctbi, 1.68, 1.68 );
setEffScaleKey( spep_6 + 84, ctbi, 1.68, 1.68 );
setEffScaleKey( spep_6 + 86, ctbi, 1.71, 1.71 );
setEffScaleKey( spep_6 + 94, ctbi, 1.71, 1.71 );
--setEffScaleKey( spep_6 + 96, ctbi, 1.73, 1.73 );

setEffRotateKey( spep_6 + 46, ctbi, -8.2 );
setEffRotateKey( spep_6 + 52, ctbi, -4.4 );
setEffRotateKey( spep_6 + 54, ctbi, -0.8 );
setEffRotateKey( spep_6 + 94, ctbi, -0.8 );

ctzuo2 = entryEffectLife( spep_6 + 46,  10012, 48, 0x100, -1, 0, 77.2, 237.9 );--ズオ
setEffMoveKey( spep_6 + 46, ctzuo2, 77.2, 237.9 , 0 );
setEffMoveKey( spep_6 + 52, ctzuo2, 19.8, 254.5 , 0 );
setEffMoveKey( spep_6 + 54, ctzuo2, -43.2, 271.3 , 0 );
setEffMoveKey( spep_6 + 56, ctzuo2, -35.7, 273.2 , 0 );
setEffMoveKey( spep_6 + 58, ctzuo2, -44.6, 271.3 , 0 );
setEffMoveKey( spep_6 + 60, ctzuo2, -36.9, 273.2 , 0 );
setEffMoveKey( spep_6 + 62, ctzuo2, -44.1, 271.8 , 0 );
setEffMoveKey( spep_6 + 64, ctzuo2, -36.5, 273.7 , 0 );
setEffMoveKey( spep_6 + 66, ctzuo2, -45.4, 271.8 , 0 );
setEffMoveKey( spep_6 + 68, ctzuo2, -37.8, 273.7 , 0 );
setEffMoveKey( spep_6 + 70, ctzuo2, -44.9, 272.3 , 0 );
setEffMoveKey( spep_6 + 72, ctzuo2, -37.3, 274.2 , 0 );
setEffMoveKey( spep_6 + 74, ctzuo2, -44.5, 272.8 , 0 );
setEffMoveKey( spep_6 + 76, ctzuo2, -38.6, 274.1 , 0 );
setEffMoveKey( spep_6 + 78, ctzuo2, -45.9, 272.8 , 0 );
setEffMoveKey( spep_6 + 80, ctzuo2, -38.1, 274.7 , 0 );
setEffMoveKey( spep_6 + 82, ctzuo2, -45.4, 273.4 , 0 );
setEffMoveKey( spep_6 + 84, ctzuo2, -37.7, 275.2 , 0 );
setEffMoveKey( spep_6 + 86, ctzuo2, -46.8, 273.3 , 0 );
setEffMoveKey( spep_6 + 88, ctzuo2, -38.9, 275.2 , 0 );
setEffMoveKey( spep_6 + 90, ctzuo2, -46.3, 273.9 , 0 );
setEffMoveKey( spep_6 + 92, ctzuo2, -38.4, 275.7 , 0 );
setEffMoveKey( spep_6 + 94, ctzuo2, -45.9, 274.4 , 0 );
--setEffMoveKey( spep_6 + 96, ctzuo2, -39.7, 275.7 , 0 );
--setEffMoveKey( spep_6 + 98, ctzuo2, -47.3, 274.2 , 0 );

setEffScaleKey( spep_6 + 46, ctzuo2, 0.33, 0.33 );
setEffScaleKey( spep_6 + 52, ctzuo2, 1.27, 1.27 );
setEffScaleKey( spep_6 + 54, ctzuo2, 2.2, 2.2 );
setEffScaleKey( spep_6 + 56, ctzuo2, 2.2, 2.2 );
setEffScaleKey( spep_6 + 58, ctzuo2, 2.24, 2.24 );
setEffScaleKey( spep_6 + 64, ctzuo2, 2.24, 2.24 );
setEffScaleKey( spep_6 + 66, ctzuo2, 2.27, 2.27 );
setEffScaleKey( spep_6 + 74, ctzuo2, 2.27, 2.27 );
setEffScaleKey( spep_6 + 76, ctzuo2, 2.3, 2.3 );
setEffScaleKey( spep_6 + 84, ctzuo2, 2.3, 2.3 );
setEffScaleKey( spep_6 + 86, ctzuo2, 2.34, 2.34 );
setEffScaleKey( spep_6 + 94, ctzuo2, 2.34, 2.34 );
--setEffScaleKey( spep_6 + 96, ctzuo2, 2.37, 2.37 );

setEffRotateKey( spep_6 + 46 ,ctzuo2, -17.9 );
setEffRotateKey( spep_6 + 52, ctzuo2, -14.1 );
setEffRotateKey( spep_6 + 54, ctzuo2, -10.5 );
setEffRotateKey( spep_6 + 94, ctzuo2, -10.5 );

setEffAlphaKey( spep_6 + 46, ctzuo2, 255 );
setEffAlphaKey( spep_6 + 94, ctzuo2, 255 );

ctgyun = entryEffectLife( spep_6 + 150,  10007, 28, 0x100, -1, 0, 50.4, 32.8 );--ギュン
setEffMoveKey( spep_6 + 150, ctgyun, 50.4, 32.8 , 0 );
setEffMoveKey( spep_6 + 152, ctgyun, 50.2, 88.1 , 0 );
setEffMoveKey( spep_6 + 154, ctgyun, 50.1, 121.3 , 0 );
setEffMoveKey( spep_6 + 156, ctgyun, 50.1, 132.4 , 0 );
setEffMoveKey( spep_6 + 178, ctgyun, 50.1, 132.4 , 0 );

setEffScaleKey( spep_6 + 150, ctgyun, 1.6, 1.6 );
setEffScaleKey( spep_6 + 152, ctgyun, 2.81, 2.81 );
setEffScaleKey( spep_6 + 154, ctgyun, 3.53, 3.53 );
setEffScaleKey( spep_6 + 156, ctgyun, 3.77, 3.77 );
setEffScaleKey( spep_6 + 158, ctgyun, 3.81, 3.81 );
setEffScaleKey( spep_6 + 160, ctgyun, 3.85, 3.85 );
setEffScaleKey( spep_6 + 162, ctgyun, 3.88, 3.88 );
setEffScaleKey( spep_6 + 164, ctgyun, 3.92, 3.92 );
setEffScaleKey( spep_6 + 166, ctgyun, 3.96, 3.96 );
setEffScaleKey( spep_6 + 168, ctgyun, 4, 4 );
setEffScaleKey( spep_6 + 170, ctgyun, 4.04, 4.04 );
setEffScaleKey( spep_6 + 172, ctgyun, 4.08, 4.08 );
setEffScaleKey( spep_6 + 174, ctgyun, 4.11, 4.11 );
setEffScaleKey( spep_6 + 176, ctgyun, 4.15, 4.15 );
setEffScaleKey( spep_6 + 178, ctgyun, 4.19, 4.19 );

setEffRotateKey( spep_6 + 150, ctgyun, -7 );
setEffRotateKey( spep_6 + 152, ctgyun, -8.1 );
setEffRotateKey( spep_6 + 154, ctgyun, -8.8 );
setEffRotateKey( spep_6 + 156, ctgyun, -9 );
setEffRotateKey( spep_6 + 178, ctgyun, -9 );

setEffAlphaKey( spep_6 + 150, ctgyun, 255 );
setEffAlphaKey( spep_6 + 178, ctgyun, 255 );

--集中線(斜め)
shuchu5 = entryEffectLife( spep_6 + 27,  921, 150, 0x80, -1, 0, 1, 1.9 );
setEffMoveKey( spep_6 + 27, shuchu5, 1, 1.9 , 0 );
setEffMoveKey( spep_6 + 96, shuchu5, 1, 1.9 , 0 );
setEffMoveKey( spep_6 + 98, shuchu5, 1.1, 241.9 , 0 );
setEffMoveKey( spep_6 + 177, shuchu5, 1.1, 241.9 , 0 );
setEffScaleKey( spep_6 + 27, shuchu5, 1.32, 1.22 );
setEffScaleKey( spep_6 + 96, shuchu5, 1.32, 1.22 );
setEffScaleKey( spep_6 + 98, shuchu5, 1.23, 1.37 );
setEffScaleKey( spep_6 + 177, shuchu5, 1.23, 1.37 );
setEffRotateKey( spep_6 + 27, shuchu5, 180 );
setEffRotateKey( spep_6 + 177, shuchu5, 180 );

--集中線
shuchu7 = entryEffectLife( spep_6,906, 26, 0x100, -1, 0, 244.5, 0 );
setEffMoveKey( spep_6, shuchu7, 0, 0 , 0 );
setEffMoveKey( spep_6+26, shuchu7, 0, 0 , 0 );

setEffScaleKey( spep_6, shuchu7, 1.15, 1.15 );
setEffScaleKey( spep_6+26, shuchu7, 1.15, 1.15 );

setEffAlphaKey(spep_6,shuchu7,255);
setEffAlphaKey(spep_6+26,shuchu7,255);
setEffRotateKey(spep_6,shuchu7,180);
setEffRotateKey(spep_6+26,shuchu7,180);


--黒背景
entryFadeBg(spep_6, 0, 180, 0, 0, 0, 0, 140);  -- 黒　背景

--白フェード
entryFade(spep_6+24,2,1,3,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_6+41,2,1,5,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_6+92,3,2,3,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_6+174,4,1,8,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade


--SE
playSe( spep_6, SE_03);
playSe( spep_6+20, SE_03);
playSe( spep_6+40, SE_03);
playSe( spep_6+50, SE_07);
playSe( spep_6+100, SE_07);

--次の準備
spep_7=spep_6+180;
------------------------------------------------------
--魔貫光殺砲被弾
----------------------------------------------------
--エフェクトの再生(前)
hit3=entryEffectLife(spep_7,SP_07,100,0x100,-1,0,0,0);
setEffMoveKey(spep_7,hit3,0,0,0);
setEffMoveKey(spep_7+100,hit3,0,0,0);
setEffScaleKey(spep_7,hit3,1.0,1.0);
setEffScaleKey(spep_7+100,hit3,1.0,1.0);
setEffAlphaKey(spep_7,hit3,255);
setEffAlphaKey(spep_7+100,hit3,255);
setEffRotateKey(spep_7,hit3,0);
setEffRotateKey(spep_7+100,hit3,0);

--集中線
shuchu6 = entryEffectLife( spep_7 ,  921, 98, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_7 , shuchu6, 0, 0 , 0 );
setEffMoveKey( spep_7 + 98, shuchu6, 0, 0 , 0 );
setEffScaleKey( spep_7 , shuchu6, 1.0, 1.0 );
setEffScaleKey( spep_7 + 98, shuchu6, 1.0, 1.0 );
setEffRotateKey( spep_7 , shuchu6, 0 );
setEffRotateKey( spep_7 + 98, shuchu6, 0 );
setEffAlphaKey( spep_7 , shuchu6, 255 );
setEffAlphaKey( spep_7 + 98, shuchu6, 255 );

--エフェクトの再生(後)
hit4=entryEffectLife(spep_7,SP_08,100,0x80,-1,0,0,0);
setEffMoveKey(spep_7,hit4,0,0,0);
setEffMoveKey(spep_7+100,hit4,0,0,0);
setEffScaleKey(spep_7,hit4,1.0,1.0);
setEffScaleKey(spep_7+100,hit4,1.0,1.0);
setEffAlphaKey(spep_7,hit4,255);
setEffAlphaKey(spep_7+100,hit4,255);
setEffRotateKey(spep_7,hit4,0);
setEffRotateKey(spep_7+100,hit4,0);



--敵キャラ
setDisp( spep_7 + 0, 1, 1 );
setDisp( spep_7 + 97, 1, 0 );
changeAnime( spep_7 + 0, 1, 106 );
changeAnime( spep_7 + 34, 1, 108 );

setMoveKey( spep_7 + 0, 1, 40.1, 50.1 , 0 );
setMoveKey( spep_7 + 2, 1, 40.5, 49.9 , 0 );
setMoveKey( spep_7 + 4, 1, 41.7, 49 , 0 );
setMoveKey( spep_7 + 6, 1, 45.7, 44.4 , 0 );
setMoveKey( spep_7 + 8, 1, 50.7, 46.8 , 0 );
setMoveKey( spep_7 + 10, 1, 45.5, 44.3 , 0 );
setMoveKey( spep_7 + 12, 1, 51.3, 47.4 , 0 );
setMoveKey( spep_7 + 14, 1, 48.8, 44.8 , 0 );
setMoveKey( spep_7 + 16, 1, 53, 39.5 , 0 );
setMoveKey( spep_7 + 18, 1, 52.3, 47 , 0 );
setMoveKey( spep_7 + 20, 1, 51.3, 39.2 , 0 );
setMoveKey( spep_7 + 22, 1, 52.3, 37.3 , 0 );
setMoveKey( spep_7 + 24, 1, 61.1, 38.6 , 0 );
setMoveKey( spep_7 + 26, 1, 57.9, 44 , 0 );
setMoveKey( spep_7 + 28, 1, 60.1, 35.6 , 0 );
setMoveKey( spep_7 + 30, 1, 64.2, 39.1 , 0 );
setMoveKey( spep_7 + 33, 1, 55.9, 37.8 , 0 );
setMoveKey( spep_7 + 34, 1, 126.3, 45.1 , 0 );
setMoveKey( spep_7 + 36, 1, 132.6, 43.5 , 0 );
setMoveKey( spep_7 + 38, 1, 132.4, 33.7 , 0 );
setMoveKey( spep_7 + 40, 1, 156.6, 27.6 , 0 );
setMoveKey( spep_7 + 42, 1, 177.8, 33.5 , 0 );
setMoveKey( spep_7 + 44, 1, 179.6, 33.6 , 0 );
setMoveKey( spep_7 + 46, 1, 193, 26.6 , 0 );
setMoveKey( spep_7 + 48, 1, 212.5, 20.5 , 0 );
setMoveKey( spep_7 + 50, 1, 201.9, 36.1 , 0 );
setMoveKey( spep_7 + 52, 1, 216.7, 24.9 , 0 );
setMoveKey( spep_7 + 54, 1, 200.1, 31.9 , 0 );
setMoveKey( spep_7 + 56, 1, 199.4, 27.4 , 0 );
setMoveKey( spep_7 + 58, 1, 211.9, 39.8 , 0 );
setMoveKey( spep_7 + 60, 1, 211.5, 22.3 , 0 );
setMoveKey( spep_7 + 62, 1, 215.1, 35.3 , 0 );
setMoveKey( spep_7 + 64, 1, 202.7, 22 , 0 );
setMoveKey( spep_7 + 66, 1, 212.2, 22.8 , 0 );
setMoveKey( spep_7 + 68, 1, 198.2, 29.6 , 0 );
setMoveKey( spep_7 + 70, 1, 214.2, 25.1 , 0 );
setMoveKey( spep_7 + 72, 1, 203, 34.1 , 0 );
setMoveKey( spep_7 + 74, 1, 198, 27.6 , 0 );
setMoveKey( spep_7 + 76, 1, 226.7, 34.4 , 0 );
setMoveKey( spep_7 + 98, 1, 263.7, 42.4 , 0 );

setScaleKey( spep_7 + 0, 1, 2.63, 2.63 );
setScaleKey( spep_7 + 2, 1, 2.61, 2.61 );
setScaleKey( spep_7 + 4, 1, 2.6, 2.6 );
setScaleKey( spep_7 + 6, 1, 2.58, 2.58 );
setScaleKey( spep_7 + 8, 1, 2.57, 2.57 );
setScaleKey( spep_7 + 10, 1, 2.55, 2.55 );
setScaleKey( spep_7 + 12, 1, 2.54, 2.54 );
setScaleKey( spep_7 + 14, 1, 2.53, 2.53 );
setScaleKey( spep_7 + 16, 1, 2.52, 2.52 );
setScaleKey( spep_7 + 18, 1, 2.5, 2.5 );
setScaleKey( spep_7 + 20, 1, 2.49, 2.49 );
setScaleKey( spep_7 + 22, 1, 2.48, 2.48 );
setScaleKey( spep_7 + 24, 1, 2.48, 2.48 );
setScaleKey( spep_7 + 26, 1, 2.47, 2.47 );
setScaleKey( spep_7 + 28, 1, 2.46, 2.46 );
setScaleKey( spep_7 + 30, 1, 2.46, 2.46 );
setScaleKey( spep_7 + 33, 1, 2.45, 2.45 );
setScaleKey( spep_7 + 34, 1, 2.37, 2.37 );
setScaleKey( spep_7 + 36, 1, 2.22, 2.22 );
setScaleKey( spep_7 + 38, 1, 2.06, 2.06 );
setScaleKey( spep_7 + 40, 1, 1.91, 1.91 );
setScaleKey( spep_7 + 42, 1, 1.77, 1.77 );
setScaleKey( spep_7 + 44, 1, 1.66, 1.66 );
setScaleKey( spep_7 + 46, 1, 1.56, 1.56 );
setScaleKey( spep_7 + 48, 1, 1.48, 1.48 );
setScaleKey( spep_7 + 98, 1, 1.48, 1.48 );

setRotateKey( spep_7 + 0, 1, -43.2 );
setRotateKey( spep_7 + 2, 1, -43.1 );
setRotateKey( spep_7 + 4, 1, -43.1 );
setRotateKey( spep_7 + 6, 1, -43 );
setRotateKey( spep_7 + 8, 1, -43 );
setRotateKey( spep_7 + 10, 1, -42.9 );
setRotateKey( spep_7 + 14, 1, -42.9 );
setRotateKey( spep_7 + 16, 1, -42.8 );
setRotateKey( spep_7 + 18, 1, -42.8 );
setRotateKey( spep_7 + 20, 1, -42.7 );
setRotateKey( spep_7 + 26, 1, -42.7 );
setRotateKey( spep_7 + 28, 1, -42.6 );
setRotateKey( spep_7 + 33, 1, -42.6 );
setRotateKey( spep_7 + 34, 1, -4 );
setRotateKey( spep_7 + 98, 1, -4 );
setShakeChara(spep_7 ,1,98,15);

--文字エントリー
ctzydodo2 = entryEffectLife( spep_7 + 29,  10014, 71, 0x100, -1, 0, 63.1, 347.5 );--ズドド
setEffMoveKey( spep_7 + 29, ctzydodo2, 63.1, 347.5 , 0 );
setEffMoveKey( spep_7 + 34, ctzydodo2, 47.5, 329.1 , 0 );
setEffMoveKey( spep_7 + 36, ctzydodo2, 63.1, 347.5 , 0 );
setEffMoveKey( spep_7 + 38, ctzydodo2, 47.5, 329.1 , 0 );
setEffMoveKey( spep_7 + 40, ctzydodo2, 63.1, 347.5 , 0 );
setEffMoveKey( spep_7 + 42, ctzydodo2, 47.5, 329.1 , 0 );
setEffMoveKey( spep_7 + 44, ctzydodo2, 63.1, 347.5 , 0 );
setEffMoveKey( spep_7 + 46, ctzydodo2, 47.5, 329.1 , 0 );
setEffMoveKey( spep_7 + 48, ctzydodo2, 63.1, 347.5 , 0 );
setEffMoveKey( spep_7 + 50, ctzydodo2, 47.5, 329.1 , 0 );
setEffMoveKey( spep_7 + 52, ctzydodo2, 63.1, 347.5 , 0 );
setEffMoveKey( spep_7 + 54, ctzydodo2, 47.5, 329.1 , 0 );
setEffMoveKey( spep_7 + 56, ctzydodo2, 63.1, 347.5 , 0 );
setEffMoveKey( spep_7 + 58, ctzydodo2, 47.5, 329.1 , 0 );
setEffMoveKey( spep_7 + 60, ctzydodo2, 63.1, 347.5 , 0 );
setEffMoveKey( spep_7 + 62, ctzydodo2, 47.5, 329.1 , 0 );
setEffMoveKey( spep_7 + 64, ctzydodo2, 63.1, 347.5 , 0 );
setEffMoveKey( spep_7 + 66, ctzydodo2, 47.5, 329.1 , 0 );
setEffMoveKey( spep_7 + 68, ctzydodo2, 63.1, 347.5 , 0 );
setEffMoveKey( spep_7 + 70, ctzydodo2, 47.5, 329.1 , 0 );
setEffMoveKey( spep_7 + 72, ctzydodo2, 63.1, 347.5 , 0 );
setEffMoveKey( spep_7 + 74, ctzydodo2, 47.5, 329.1 , 0 );
setEffMoveKey( spep_7 + 76, ctzydodo2, 63.1, 347.5 , 0 );
setEffMoveKey( spep_7 + 100, ctzydodo2, 63.1, 347.5 , 0 );

setEffScaleKey( spep_7 + 29, ctzydodo2, 2.72, 2.72 );
setEffScaleKey( spep_7 + 100, ctzydodo2, 2.72, 2.72 );
setEffRotateKey( spep_7 + 29, ctzydodo2, 59.1 );
setEffRotateKey( spep_7 + 100, ctzydodo2, 59.1 );
setEffAlphaKey( spep_7 + 29, ctzydodo2, 255 );
setEffAlphaKey( spep_7 + 100, ctzydodo2, 255 );

setEffShake(spep_7 + 29,ctzydodo2, 71,15);



--SE
playSe( spep_7+10, SE_07);

--黒背景
entryFadeBg(spep_7, 0, 98, 0, 0, 0, 0, 140);  -- 黒　背景

entryFade(spep_7+90,6,10,0,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade


--次の準備
spep_8=spep_7+98;
------------------------------------------------------
-- ガ
------------------------------------------------------

setDisp( spep_8, 1, 1);
setMoveKey(  spep_8,    1,  100,  0,   0);
setScaleKey( spep_8,    1,  1.0, 1.0);
setMoveKey(  spep_8,    1,    0,   0,   128);
setScaleKey( spep_8,    1,  0.1, 0.1);

changeAnime( spep_8, 1, 107);                         -- 手前ダメージ
entryEffect( spep_8+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_8+8, SE_10);

setMoveKey(  spep_8+8,   1,    0,   0,   128);
setMoveKey(  spep_8+15,   1,  -60,  -200,  -100);
setMoveKey(  spep_8+16,   1,  -60,  -200,  -100);
setDamage( spep_8+16, 1, 0);  -- ダメージ振動等
setShake(spep_8+7,6,15);
setShake(spep_8+13,15,10);

setRotateKey( spep_8,  1,  30 );
setRotateKey( spep_8+2,  1,  80 );
setRotateKey( spep_8+4,  1, 120 );
setRotateKey( spep_8+6,  1, 160 );
setRotateKey( spep_8+8,  1, 200 );
setRotateKey( spep_8+10,  1, 260 );
setRotateKey( spep_8+12,  1, 320 );
setRotateKey( spep_8+14,  1,   0 );

setShakeChara( spep_8+15, 1, 5,  10);
setShakeChara( spep_8+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep_8+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep_8+15, ct, 30, 10);
setEffRotateKey( spep_8+15, ct, -40);
setEffScaleKey( spep_8+15, ct, 4.0, 4.0);
setEffScaleKey( spep_8+16, ct, 2.0, 2.0);
setEffScaleKey( spep_8+17, ct, 2.6, 2.6);
setEffScaleKey( spep_8+18, ct, 4.0, 4.0);
setEffScaleKey( spep_8+19, ct, 2.6, 2.6);
setEffScaleKey( spep_8+20, ct, 3.8, 3.8);
setEffScaleKey( spep_8+110, ct, 3.8, 3.8);
setEffAlphaKey( spep_8+15, ct, 255);
setEffAlphaKey( spep_8+105, ct, 255);
setEffAlphaKey( spep_8+115, ct, 0);

playSe( spep_8+3, SE_11);
shuchusen = entryEffectLife( spep_8+3,906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_8+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

shuchusenkuro = entryEffectLife( spep_8+15, 1657, 120, 0x80,  -1, 0,  0,  0);   -- 集中線


-- ダメージ表示
dealDamage(spep_8+16);
entryFade( spep_8+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_8+110);



else



------------------------------------------------------
-- 敵側
------------------------------------------------------

------------------------------------------------------
--待機
------------------------------------------------------
spep_0 = 0;

--味方キャラの登場
setDisp( 0, 0, 1);

changeAnime(0,0,1);

setMoveKey(   0,   0,    0, 10,   0);
setMoveKey(   1,   0,    0, 10,   0);
setMoveKey(   2,   0,    0, 10,   0);
setMoveKey(   3,   0,    0, 10,   0);
setMoveKey(   29,   0,    0, 10,   0);

setScaleKey(   0,   0, 1.6, 1.6);
setScaleKey(   1,   0, 1.6, 1.6);
setScaleKey(   2,   0, 1.6, 1.6);
setScaleKey(   3,   0, 1.6, 1.6);
setScaleKey(   spep_0+29,   0, 1.6, 1.6);

setRotateKey(   1,   0, 0);
setRotateKey(   spep_0+29,   0, 0);

--白フェード
entryFade(spep_0+30,0,1,5,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_1= spep_0+30;
------------------------------------------------------
--気溜め
------------------------------------------------------
--味方キャラの登場
--

changeAnime(spep_1,0,17);

setMoveKey(   spep_1,   0,    0, 10,   0);
setMoveKey(   spep_1+40,   0,    0, 10,   0);

setScaleKey(   spep_1,   0, 1.6, 1.6);
setScaleKey(   spep_1+40,   0, 1.6, 1.6);

setRotateKey(   spep_1,   0, 0);
setRotateKey(   spep_1+40,   0, 0);

--キャラクターの非表示
setDisp( spep_1+35, 0, 0);

--エフェクトの再生
kidame=entryEffectLife(spep_1,SP_01x,35,0x100,-1,0,0,0);
setEffMoveKey(spep_1,kidame,0,0,0);
setEffMoveKey(spep_1+35,kidame,0,0,0);
setEffScaleKey(spep_1,kidame,1.0,1.0);
setEffScaleKey(spep_1+35,kidame,1.0,1.0);
setEffAlphaKey(spep_1,kidame,255);
setEffAlphaKey(spep_1+35,kidame,255);
setEffRotateKey(spep_1,kidame,0);
setEffRotateKey(spep_1+35,kidame,0);



--集中線
shuchu = entryEffectLife( spep_1,906, 35, 0x100, -1, 0, 244.5, 0 );
setEffMoveKey( spep_1, shuchu, 0, 0 , 0 );
setEffMoveKey( spep_1+35, shuchu, 0, 0 , 0 );

setEffScaleKey( spep_1, shuchu, 1.15, 1.15 );
setEffScaleKey( spep_1+35, shuchu, 1.15, 1.15 );

setEffAlphaKey(spep_1,shuchu,255);
setEffAlphaKey(spep_1+35,shuchu,255);
setEffRotateKey(spep_1,shuchu,180);
setEffRotateKey(spep_1+35,shuchu,180);


--文字エントリー
ctzuzuzun = entryEffectLife( spep_1,  10013, 35, 0x100, -1, 0, 22, 191.9 );--ズズズン
setEffMoveKey( spep_1, ctzuzuzun, 6, 280.9 , 0 );
setEffMoveKey( spep_1 +35, ctzuzuzun, 6, 280.9 , 0 );

setEffScaleKey( spep_1, ctzuzuzun, 0.35, 0.35);
setEffScaleKey( spep_1+3, ctzuzuzun,  3.2, 2.8);
setEffScaleKey( spep_1 + 35, ctzuzuzun, 3.2, 2.8);

setEffRotateKey( spep_1, ctzuzuzun, 0 );
setEffRotateKey( spep_1+35, ctzuzuzun, 0 );

setEffShake(spep_1,ctzuzuzun, 35,15);

--SE
playSe( spep_1, SE_01);

--黒背景
entryFadeBg(spep_1, 10, 25, 0, 0, 0, 0, 160); -- 黒　背景

--白フェード
entryFade(spep_1+32,3,1,5,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_2=spep_1+35;

------------------------------------------------------
--連続デスビーム発射
------------------------------------------------------
--エフェクトの再生
deathbeam=entryEffectLife(spep_2,SP_02x,90,0x100,-1,00,-80,0);
setEffMoveKey(spep_2,deathbeam,0,-80,0);
setEffMoveKey(spep_2+90,deathbeam,0,-80,0);
setEffScaleKey(spep_2,deathbeam,1.0,1.0);
setEffScaleKey(spep_2+90,deathbeam,1.0,1.0);
setEffAlphaKey(spep_2,deathbeam,255);
setEffAlphaKey(spep_2+90,deathbeam,255);
setEffRotateKey(spep_2,deathbeam,0);
setEffRotateKey(spep_2+90,deathbeam,0);


--集中線(斜め)
shuchu2 = entryEffectLife( spep_2,  921, 88, 0x80, -1, 0, -6.3, 5.9 );

setEffMoveKey( spep_2 + 0, shuchu2, -6.3, 6.4 , 0 );
setEffMoveKey( spep_2 + 88, shuchu2, -6.3, 6.4 , 0 );

setEffScaleKey( spep_2 + 0, shuchu2, 1.14, 1.14 );
setEffScaleKey( spep_2 + 88, shuchu2, 1.14, 1.14 );

setEffAlphaKey(spep_2,shuchu2,255);
setEffAlphaKey(spep_2 + 88,shuchu2,255);

setEffRotateKey( spep_2 + 0, shuchu2, 180 );
setEffRotateKey( spep_2 + 88,shuchu2, 180 );


--集中線
shuchu3 = entryEffectLife( spep_2,906, 88, 0x100, -1, 0, 244.5, 0 );
setEffMoveKey( spep_2, shuchu3, 0, 0 , 0 );
setEffMoveKey( spep_2+88, shuchu3, 0, 0 , 0 );

setEffScaleKey( spep_2, shuchu3, 2.5, 2.5);
setEffScaleKey( spep_2+15, shuchu3, 2.5, 2.5);
setEffScaleKey( spep_2+16, shuchu3, 1.5, 1.5);
setEffScaleKey( spep_2+88, shuchu3, 1.5, 1.5);

setEffAlphaKey(spep_2,shuchu3,255);
setEffAlphaKey(spep_2+88,shuchu3,255);
setEffRotateKey(spep_2,shuchu3,180);
setEffRotateKey(spep_2+88,shuchu3,180);


--文字エントリー
ctbibibi = entryEffectLife( spep_2 + 37,  10025, 53, 0x100, -1, 0, 105.2, 303.3 );--ビビビッ
setEffMoveKey( spep_2 + 37, ctbibibi, 105.2, 303.3 , 0 );
setEffMoveKey( spep_2 + 43, ctbibibi, 120.4, 304.3 , 0 );
setEffMoveKey( spep_2 + 44, ctbibibi, 124, 316.1 , 0 );
setEffMoveKey( spep_2 + 46, ctbibibi, 118.7, 316.7 , 0 );
setEffMoveKey( spep_2 + 48, ctbibibi, 128.2, 310.4 , 0 );
setEffMoveKey( spep_2 + 50, ctbibibi, 124.5, 324.9 , 0 );
setEffMoveKey( spep_2 + 52, ctbibibi, 124.6, 310.6 , 0 );
setEffMoveKey( spep_2 + 54, ctbibibi, 124.2, 324 , 0 );
setEffMoveKey( spep_2 + 56, ctbibibi, 126, 309.9 , 0 );
setEffMoveKey( spep_2 + 58, ctbibibi, 124.4, 321.6 , 0 );
setEffMoveKey( spep_2 + 60, ctbibibi, 121.5, 306.3 , 0 );
setEffMoveKey( spep_2 + 62, ctbibibi, 124.5, 325.7 , 0 );
setEffMoveKey( spep_2 + 64, ctbibibi, 118.7, 312.4 , 0 );
setEffMoveKey( spep_2 + 66, ctbibibi, 129.4, 318.4 , 0 );
setEffMoveKey( spep_2 + 68, ctbibibi, 121.7, 307.2 , 0 );
setEffMoveKey( spep_2 + 70, ctbibibi, 128.1, 324.6 , 0 );
setEffMoveKey( spep_2 + 72, ctbibibi, 117.7, 310.9 , 0 );
setEffMoveKey( spep_2 + 74, ctbibibi, 132.1, 319.3 , 0 );
setEffMoveKey( spep_2 + 76, ctbibibi, 120.1, 312.8 , 0 );
setEffMoveKey( spep_2 + 78, ctbibibi, 132.2, 313.8 , 0 );
setEffMoveKey( spep_2 + 80, ctbibibi, 118.9, 316.5 , 0 );
setEffMoveKey( spep_2 + 82, ctbibibi, 132.2, 318.1 , 0 );
setEffMoveKey( spep_2 + 84, ctbibibi, 124, 316.1 , 0 );
setEffMoveKey( spep_2 + 86, ctbibibi, 118.7, 316.7 , 0 );
setEffMoveKey( spep_2 + 88, ctbibibi, 128.2, 310.4 , 0 );
setEffMoveKey( spep_2 + 90, ctbibibi, 128.2, 310.4 , 0 );

setEffScaleKey( spep_2 + 37, ctbibibi, 1.47, 1.47 );
setEffScaleKey( spep_2 + 42, ctbibibi, 1.66, 1.66 );
setEffScaleKey( spep_2 + 44, ctbibibi, 1.86, 1.86 );
setEffScaleKey( spep_2 + 90, ctbibibi, 1.86, 1.86 );

setEffRotateKey( spep_2 + 37, ctbibibi, 0 );
setEffRotateKey( spep_2 + 90, ctbibibi, 0 );

setEffAlphaKey(spep_2 + 37,ctbibibi,255);
setEffAlphaKey(spep_2 + 90,ctbibibi,255);
--SE
playSe( spep_2+37, 43); --340
playSe( spep_2+52, 43); --340
playSe( spep_2+67, 43); --340
--playSe( spep_2+67, SE_04); --340
--playSe( spep_2+77, SE_04); --340
--playSe( spep_2+87, SE_04); --340


--黒背景
entryFadeBg(spep_2, 0, 90, 0, 0, 0, 0, 200);  -- 黒　背景

--白フェード
entryFade(spep_2+84,4,3,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_3=spep_2+90;

------------------------------------------------------
--連続デスビーム被弾
------------------------------------------------------
--エフェクトの再生(前)
hit=entryEffectLife(spep_3,SP_03x,83,0x100,-1,0,0,0);
setEffMoveKey(spep_3,hit,0,0,0);
setEffMoveKey(spep_3+83,hit,0,0,0);
setEffScaleKey(spep_3,hit,1.0,1.0);
setEffScaleKey(spep_3+83,hit,1.0,1.0);
setEffAlphaKey(spep_3,hit,255);
setEffAlphaKey(spep_3+83,hit,255);
setEffRotateKey(spep_3,hit,0);
setEffRotateKey(spep_3+83,hit,0);

--エフェクトの再生(後)
hit2=entryEffectLife(spep_3,SP_04x,83,0x80,-1,0,0,0);
setEffMoveKey(spep_3,hit2,0,0,0);
setEffMoveKey(spep_3+83,hit2,0,0,0);
setEffScaleKey(spep_3,hit2,1.0,1.0);
setEffScaleKey(spep_3+83,hit2,1.0,1.0);
setEffAlphaKey(spep_3,hit2,255);
setEffAlphaKey(spep_3+83,hit2,255);
setEffRotateKey(spep_3,hit2,0);
setEffRotateKey(spep_3+83,hit2,0);

--敵キャラ
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 83, 1, 0 );
changeAnime( spep_3 + 0, 1, 100 );


setMoveKey( spep_3 + 0, 1, -21.9, 12 , 0 );
setMoveKey( spep_3 + 2, 1, -17.9, 12.8 , 0 );
setMoveKey( spep_3 + 4, 1, -13.4, 12.8 , 0 );
setMoveKey( spep_3 + 6, 1, -6.5, 9.1 , 0 );
setMoveKey( spep_3 + 8, 1, 1.1, 12.4 , 0 );
setMoveKey( spep_3 + 10, 1, -1.7, 10.7 , 0 );
setMoveKey( spep_3 + 12, 1, 6, 14.6 , 0 );
setMoveKey( spep_3 + 14, 1, 5.2, 12.7 , 0 );
setMoveKey( spep_3 + 16, 1, 10.8, 8.1 , 0 );
setMoveKey( spep_3 + 18, 1, 11, 16.3 , 0 );
setMoveKey( spep_3 + 20, 1, 10.7, 9 , 0 );
setMoveKey( spep_3 + 22, 1, 12.2, 7.7 , 0 );
setMoveKey( spep_3 + 24, 1, 21, 9.5 , 0 );
setMoveKey( spep_3 + 26, 1, 17.5, 15.3 , 0 );
setMoveKey( spep_3 + 28, 1, 19.1, 7.4 , 0 );
setMoveKey( spep_3 + 30, 1, 22.5, 11.2 , 0 );
setMoveKey( spep_3 + 32, 1, 13.6, 10.2 , 0 );
setMoveKey( spep_3 + 34, 1, 22, 17.8 , 0 );
setMoveKey( spep_3 + 36, 1, 21.3, 18.2 , 0 );
setMoveKey( spep_3 + 38, 1, 14.1, 10.3 , 0 );
setMoveKey( spep_3 + 40, 1, 19.3, 5.8 , 0 );
setMoveKey( spep_3 + 42, 1, 23.7, 13.1 , 0 );
setMoveKey( spep_3 + 44, 1, 11.1, 14.4 , 0 );
setMoveKey( spep_3 + 46, 1, 12.4, 8.4 , 0 );
setMoveKey( spep_3 + 48, 1, 22.1, 3.2 , 0 );
setMoveKey( spep_3 + 50, 1, 11.5, 18.8 , 0 );
setMoveKey( spep_3 + 52, 1, 26.3, 7.6 , 0 );
setMoveKey( spep_3 + 54, 1, 9.7, 14.6 , 0 );
setMoveKey( spep_3 + 56, 1, 9, 10.1 , 0 );
setMoveKey( spep_3 + 58, 1, 21.5, 22.5 , 0 );
setMoveKey( spep_3 + 60, 1, 21.1, 5 , 0 );
setMoveKey( spep_3 + 62, 1, 24.7, 18 , 0 );
setMoveKey( spep_3 + 64, 1, 12.3, 4.7 , 0 );
setMoveKey( spep_3 + 66, 1, 21.8, 5.5 , 0 );
setMoveKey( spep_3 + 68, 1, 7.8, 12.3 , 0 );
setMoveKey( spep_3 + 70, 1, 23.8, 7.8 , 0 );
setMoveKey( spep_3 + 72, 1, 12.6, 16.8 , 0 );
setMoveKey( spep_3 + 74, 1, 7.6, 10.3 , 0 );
setMoveKey( spep_3 + 76, 1, 26.3, 17.1 , 0 );
setMoveKey( spep_3 + 78, 1, 26.4, 19 , 0 );
setMoveKey( spep_3 + 80, 1, 19.1, -1 , 0 );
setMoveKey( spep_3 + 83, 1, 19.1, -1 , 0 );

setScaleKey( spep_3 + 0, 1, 1.7, 1.7 );
setScaleKey( spep_3 + 2, 1, 1.69, 1.69 );
setScaleKey( spep_3 + 4, 1, 1.67, 1.67 );
setScaleKey( spep_3 + 6, 1, 1.66, 1.66 );
setScaleKey( spep_3 + 8, 1, 1.65, 1.65 );
setScaleKey( spep_3 + 10, 1, 1.64, 1.64 );
setScaleKey( spep_3 + 12, 1, 1.63, 1.63 );
setScaleKey( spep_3 + 14, 1, 1.63, 1.63 );
setScaleKey( spep_3 + 16, 1, 1.62, 1.62 );
setScaleKey( spep_3 + 18, 1, 1.61, 1.61 );
setScaleKey( spep_3 + 20, 1, 1.61, 1.61 );
setScaleKey( spep_3 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_3 + 83, 1, 1.6, 1.6 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 + 83, 1, 0 );
--文字エントリー
ctzudodo = entryEffectLife( spep_3 + 15,10014, 67, 0x100, -1, 0, 63.6, 344.3 );--ズドド
setEffMoveKey( spep_3 + 15, ctzudodo, 63.6, 344.3 , 0 );
setEffMoveKey( spep_3 + 20, ctzudodo, 39.6, 328.3 , 0 );
setEffMoveKey( spep_3 + 22, ctzudodo, 63.6, 344.3 , 0 );
setEffMoveKey( spep_3 + 24, ctzudodo, 39.6, 328.3 , 0 );
setEffMoveKey( spep_3 + 26, ctzudodo, 63.6, 344.3 , 0 );
setEffMoveKey( spep_3 + 28, ctzudodo, 39.6, 328.3 , 0 );
setEffMoveKey( spep_3 + 30, ctzudodo, 63.6, 344.3 , 0 );
setEffMoveKey( spep_3 + 32, ctzudodo, 39.6, 328.3 , 0 );
setEffMoveKey( spep_3 + 34, ctzudodo, 63.6, 344.3 , 0 );
setEffMoveKey( spep_3 + 36, ctzudodo, 39.6, 328.3 , 0 );
setEffMoveKey( spep_3 + 38, ctzudodo, 63.6, 344.3 , 0 );
setEffMoveKey( spep_3 + 40, ctzudodo, 39.6, 328.3 , 0 );
setEffMoveKey( spep_3 + 42, ctzudodo, 63.6, 344.3 , 0 );
setEffMoveKey( spep_3 + 44, ctzudodo, 39.6, 328.3 , 0 );
setEffMoveKey( spep_3 + 46, ctzudodo, 63.6, 344.3 , 0 );
setEffMoveKey( spep_3 + 48, ctzudodo, 39.6, 328.3 , 0 );
setEffMoveKey( spep_3 + 50, ctzudodo, 63.6, 344.3 , 0 );
setEffMoveKey( spep_3 + 52, ctzudodo, 39.6, 328.3 , 0 );
setEffMoveKey( spep_3 + 54, ctzudodo, 63.6, 344.3 , 0 );
setEffMoveKey( spep_3 + 56, ctzudodo, 39.6, 328.3 , 0 );
setEffMoveKey( spep_3 + 58, ctzudodo, 63.6, 344.3 , 0 );
setEffMoveKey( spep_3 + 60, ctzudodo, 39.6, 328.3 , 0 );
setEffMoveKey( spep_3 + 62, ctzudodo, 63.6, 344.3 , 0 );
setEffMoveKey( spep_3 + 64, ctzudodo, 39.6, 328.3 , 0 );
setEffMoveKey( spep_3 + 66, ctzudodo, 63.6, 344.3 , 0 );
setEffMoveKey( spep_3 + 68, ctzudodo, 39.6, 328.3 , 0 );
setEffMoveKey( spep_3 + 70, ctzudodo, 63.6, 344.3 , 0 );
setEffMoveKey( spep_3 + 72, ctzudodo, 39.6, 328.3 , 0 );
setEffMoveKey( spep_3 + 74, ctzudodo, 63.6, 344.3 , 0 );
setEffMoveKey( spep_3 + 76, ctzudodo, 39.6, 328.3 , 0 );
setEffMoveKey( spep_3 + 78, ctzudodo, 63.6, 344.3 , 0 );
setEffMoveKey( spep_3 + 80, ctzudodo, 39.6, 328.3 , 0 );
setEffMoveKey( spep_3 + 82, ctzudodo, 39.6, 328.3 , 0 );

setEffScaleKey( spep_3 + 15, ctzudodo, 3.26, 3.26 );
setEffScaleKey( spep_3 +82, ctzudodo, 3.26, 3.26 );

setEffRotateKey( spep_3 + 15, ctzudodo, 5.1 );
setEffRotateKey( spep_3 + 82, ctzudodo, 5.1 );

--流線
syucho4 = entryEffectLife( spep_3 + 0,  921, 82, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_3 + 0, syucho4, 0, 0 , 0 );
setEffMoveKey( spep_3 + 82, syucho4, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, syucho4, 1, 1 );
setEffScaleKey( spep_3 + 82, syucho4, 1, 1 );
setEffRotateKey( spep_3 + 0, syucho4, 0 );
setEffRotateKey( spep_3 + 82, syucho4, 0 );



--黒背景
entryFadeBg(spep_3, 0, 83, 0, 0, 0, 0, 180);  -- 黒　背景

--白フェード
entryFade(spep_3+75,7,5,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade


--次の準備
spep_4=spep_3+87;


--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_3+4 ; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

pauseAll( SP_dodge, 67);

--キャラクターの固定
setMoveKey(SP_dodge, 1, -13.4, 12.8, 0);
setScaleKey(SP_dodge , 1 , 3.26, 3.26 );
setRotateKey(SP_dodge,   1, 0);

--キャラクターの固定
setMoveKey(SP_dodge+8, 1, -13.4, 12.8, 0);
setScaleKey(SP_dodge+8 , 1 , 3.26, 3.26 );
setRotateKey(SP_dodge+8,   1, 0);


setMoveKey(SP_dodge+9, 0, 1000 , 1000, 0);
setDisp(SP_dodge+9, 0, 0);
setDisp(SP_dodge+9, 1, 0);
setMoveKey(SP_dodge+9, 1, 0 , 0, 0);
setScaleKey(SP_dodge+9,  1 , 1.3 ,1.3);
setRotateKey(SP_dodge+9,   1, 0);

setMoveKey(SP_dodge+10, 1, 0 , 0, 0);
setScaleKey(SP_dodge+10,  1 , 1.3 ,1.3);
setRotateKey(SP_dodge+10,   1, 0);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
--entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景

entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge+10);

do return end
else end
------------------------------------------------------
--回避 終わり
------------------------------------------------------

--SE
--[[
playSe( spep_3+15 , 1011);
playSe( spep_3+30 , 1011);
--playSe( spep_3+35 , SE_05);
playSe( spep_3+45 , 1011);
--playSe( spep_3+55 , SE_05);
playSe( spep_3+60 , 1011);
playSe( spep_3+75 , 1011);
]]

--4.11調整
SE001 = playSe( spep_3+15 , 1011);
stopSe( spep_3+40,SE001,5);
SE002 = playSe( spep_3+30 , 1011);
stopSe( spep_3+55,SE002,5);
SE003 = playSe( spep_3+45 , 1011);
stopSe( spep_3+70,SE003,5);
SE004 = playSe( spep_3+60 , 1011);
stopSe( spep_3+85,SE004,5);
SE005 = playSe( spep_3+75 , 1011);

------------------------------------------------------
--魔貫光殺砲構え
----------------------------------------------------
--エフェクトの再生
stance=entryEffectLife(spep_4,SP_05x,98,0x100,-1,0,0,0);
setEffMoveKey(spep_4,stance,0,0,0);
setEffMoveKey(spep_4+98,stance,0,0,0);
setEffScaleKey(spep_4,stance,1.0,1.0);
setEffScaleKey(spep_4+98,stance,1.0,1.0);
setEffAlphaKey(spep_4,stance,255);
setEffAlphaKey(spep_4+98,stance,255);
setEffRotateKey(spep_4,stance,0);
setEffRotateKey(spep_4+98,stance,0);

--後ろの気
ef_ki=entryEffectLife(spep_4, 1503, 97,0x80,0,0,0,0);   -- 集中線
setEffScaleKey(spep_4, ef_ki, 1.6, 1.6);
setEffScaleKey(spep_4+4, ef_ki, 1.3, 1.3);
setEffScaleKey(spep_4+97,ef_ki, 1.3, 1.3);
setEffMoveKey(spep_4,ef_ki,0,0,0);
setEffMoveKey(spep_4+97,ef_ki,0,0,0);
setEffAlphaKey(spep_4,ef_ki,255);
setEffAlphaKey(spep_4+97,ef_ki,255);

--バチバチ
ef_bati=entryEffectLife(spep_4, 1502, 97,0x100,0,0,0,0);   -- 集中線
setEffScaleKey(spep_4,ef_bati, 1.3, 1.3);
setEffScaleKey(spep_4+97,ef_bati, 1.3, 1.3);
setEffMoveKey(spep_4,ef_bati,0,0,0);
setEffMoveKey(spep_4+97,ef_bati,0,0,0);
setEffAlphaKey(spep_4,ef_bati,255);
setEffAlphaKey(spep_4+97,ef_bati,255);

--顔＆セリフカットイン
--speff=entryEffect(spep_4+6,1504,0x100,-1,0,0,0);  --カットイン(顔)
--setEffReplaceTexture(speff,3,2);  --カットイン差し替え
--speff1=entryEffect(spep_4+6,1505,0x100,-1,0,0,0);  --カットイン(セリフ)
--setEffReplaceTexture(speff1,4,5);  --セリフカットイン差し替え

--文字エントリー
ctgogo=entryEffectLife(spep_4+19,190006,69,0x100,-1,110,500);--ゴゴゴ
setEffMoveKey(spep_4+19,ctgogo,-170,500,0);
setEffMoveKey(spep_4+88,ctgogo,-170,500,0);
setEffScaleKey(spep_4+19, ctgogo, -0.7, 0.7);
setEffScaleKey(spep_4+88, ctgogo, -0.7, 0.7);
setEffAlphaKey(spep_4,ctgogo,255);
setEffAlphaKey(spep_4+88,ctgogo,255);

--SE
playSe( spep_4+19, SE_05); --ゴゴゴ


--白フェード
entryFade(spep_4+89,4,6,3,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
--次の準備
spep_5=spep_4+98;

--------------------------------------
--カードカットイン(90F)
--------------------------------------

playSe(spep_5,SE_05);
shuchusen9=entryEffectLife(spep_5,906,90,0x100,-1,0,0,0);   -- 集中線
setEffScaleKey(spep_5,shuchusen9,1.6,1.6);

speff2=entryEffect(spep_5,1507,0,-1,0,0,0);   -- カード
setEffReplaceTexture(speff2,1,1);
setEffReplaceTexture(speff2,2,0);-- カード差し替え
setEffReplaceTexture(speff2,5,4);-- 技名テクスチャ差し替え

-- ** エフェクト等 ** --
entryFade(spep_5+85,3,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_6=spep_5+90;

------------------------------------------------------
--魔貫光殺砲発射
----------------------------------------------------
--エフェクトの再生
firing=entryEffectLife(spep_6,SP_06x,178,0x100,-1,0,0,0);
setEffMoveKey(spep_6,firing,0,0,0);
setEffMoveKey(spep_6+178,firing,0,0,0);
setEffScaleKey(spep_6,firing,1.0,1.0);
setEffScaleKey(spep_6+178,firing,1.0,1.0);
setEffAlphaKey(spep_6,firing,255);
setEffAlphaKey(spep_6+178,firing,255);
setEffRotateKey(spep_6,firing,0);
setEffRotateKey(spep_6+178,firing,0);

ctbi = entryEffectLife( spep_6 + 46,  10024, 48, 0x100, -1, 0, -177.2, 237.9 );--ビッ
setEffMoveKey( spep_6 + 46, ctbi, -22.8, 237.9 , 0 );
setEffMoveKey( spep_6 + 52, ctbi, -80.2, 254.5 , 0 );
setEffMoveKey( spep_6 + 54, ctbi, -143.2, 271.3 , 0 );
setEffMoveKey( spep_6 + 56, ctbi, -135.7, 273.2 , 0 );
setEffMoveKey( spep_6 + 58, ctbi, -144.6, 271.3 , 0 );
setEffMoveKey( spep_6 + 60, ctbi, -136.9, 273.2 , 0 );
setEffMoveKey( spep_6 + 62, ctbi, -144.1, 271.8 , 0 );
setEffMoveKey( spep_6 + 64, ctbi, -136.5, 273.7 , 0 );
setEffMoveKey( spep_6 + 66, ctbi, -145.4, 271.8 , 0 );
setEffMoveKey( spep_6 + 68, ctbi, -137.8, 273.7 , 0 );
setEffMoveKey( spep_6 + 70, ctbi, -144.9, 272.3 , 0 );
setEffMoveKey( spep_6 + 72, ctbi, -137.3, 274.2 , 0 );
setEffMoveKey( spep_6 + 74, ctbi, -144.5, 272.8 , 0 );
setEffMoveKey( spep_6 + 76, ctbi, -138.6, 274.1 , 0 );
setEffMoveKey( spep_6 + 78, ctbi, -145.9, 272.8 , 0 );
setEffMoveKey( spep_6 + 80, ctbi, -138.1, 274.7 , 0 );
setEffMoveKey( spep_6 + 82, ctbi, -145.4, 273.4 , 0 );
setEffMoveKey( spep_6 + 84, ctbi, -137.7, 275.2 , 0 );
setEffMoveKey( spep_6 + 86, ctbi, -146.8, 273.3 , 0 );
setEffMoveKey( spep_6 + 88, ctbi, -138.9, 275.2 , 0 );
setEffMoveKey( spep_6 + 90, ctbi, -146.3, 273.9 , 0 );
setEffMoveKey( spep_6 + 92, ctbi, -138.4, 275.7 , 0 );
setEffMoveKey( spep_6 + 94, ctbi, -145.9, 274.4 , 0 );

--setEffMoveKey( spep_6 + 96, ctbi, 263.4, 373.7 , 0 );
--setEffMoveKey( spep_6 + 98, ctbi, 255.9, 372.2 , 0 );

setEffScaleKey( spep_6 + 46, ctbi, 0.24, 0.24 );
setEffScaleKey( spep_6 + 52, ctbi, 0.93, 0.93 );
setEffScaleKey( spep_6 + 54, ctbi, 1.61, 1.61 );
setEffScaleKey( spep_6 + 56, ctbi, 1.61, 1.61 );
setEffScaleKey( spep_6 + 58, ctbi, 1.63, 1.63 );
setEffScaleKey( spep_6 + 64, ctbi, 1.63, 1.63 );
setEffScaleKey( spep_6 + 66, ctbi, 1.66, 1.66 );
setEffScaleKey( spep_6 + 74, ctbi, 1.66, 1.66 );
setEffScaleKey( spep_6 + 76, ctbi, 1.68, 1.68 );
setEffScaleKey( spep_6 + 84, ctbi, 1.68, 1.68 );
setEffScaleKey( spep_6 + 86, ctbi, 1.71, 1.71 );
setEffScaleKey( spep_6 + 94, ctbi, 1.71, 1.71 );
--setEffScaleKey( spep_6 + 96, ctbi, 1.73, 1.73 );

setEffRotateKey( spep_6 + 46, ctbi, -38.2 );
setEffRotateKey( spep_6 + 52, ctbi, -34.4 );
setEffRotateKey( spep_6 + 54, ctbi, -30.8 );
setEffRotateKey( spep_6 + 94, ctbi, -30.8 );

ctzuo2 = entryEffectLife( spep_6 + 46,  10012, 48, 0x100, -1, 0, 17.8, 257 );--ズオ
setEffMoveKey( spep_6 + 47, ctzuo2, 7.8, 267, 0 );--ズオ
setEffMoveKey( spep_6 + 48, ctzuo2, 50.5, 297 , 0 );
setEffMoveKey( spep_6 + 49, ctzuo2, 69.5, 317 , 0 );
setEffMoveKey( spep_6 + 50, ctzuo2, 80.5, 297 , 0 );
setEffMoveKey( spep_6 + 52, ctzuo2, 70.5, 320 , 0 );
setEffMoveKey( spep_6 + 53, ctzuo2, 100.5, 340 , 0 );
setEffMoveKey( spep_6 + 54, ctzuo2, 133.6, 362.4 , 0 );
setEffMoveKey( spep_6 + 56, ctzuo2, 146.1, 364.3 , 0 );
setEffMoveKey( spep_6 + 58, ctzuo2, 141.5, 363.8 , 0 );
setEffMoveKey( spep_6 + 60, ctzuo2, 149.1, 365.7 , 0 );
setEffMoveKey( spep_6 + 62, ctzuo2, 142, 364.3 , 0 );
setEffMoveKey( spep_6 + 64, ctzuo2, 149.5, 366.2 , 0 );
setEffMoveKey( spep_6 + 66, ctzuo2, 144.9, 365.6 , 0 );
setEffMoveKey( spep_6 + 68, ctzuo2, 152.5, 367.5 , 0 );
setEffMoveKey( spep_6 + 70, ctzuo2, 145.4, 366.1 , 0 );
setEffMoveKey( spep_6 + 72, ctzuo2, 153, 368 , 0 );
setEffMoveKey( spep_6 + 74, ctzuo2, 145.8, 366.6 , 0 );
setEffMoveKey( spep_6 + 76, ctzuo2, 156, 369.3 , 0 );
setEffMoveKey( spep_6 + 78, ctzuo2, 148.7, 368 , 0 );
setEffMoveKey( spep_6 + 80, ctzuo2, 156.5, 369.9 , 0 );
setEffMoveKey( spep_6 + 82, ctzuo2, 149.2, 368.6 , 0 );
setEffMoveKey( spep_6 + 84, ctzuo2, 156.9, 370.4 , 0 );
setEffMoveKey( spep_6 + 86, ctzuo2, 152.1, 369.8 , 0 );
setEffMoveKey( spep_6 + 88, ctzuo2, 159.9, 371.8 , 0 );
setEffMoveKey( spep_6 + 90, ctzuo2, 152.6, 370.4 , 0 );
setEffMoveKey( spep_6 + 92, ctzuo2, 160.4, 372.3 , 0 );
setEffMoveKey( spep_6 + 94, ctzuo2, 153, 370.9 , 0 );
--setEffMoveKey( spep_6 + 96, ctzuo2, 263.4, 373.7 , 0 );
--setEffMoveKey( spep_6 + 98, ctzuo2, 255.9, 372.2 , 0 );

setEffScaleKey( spep_6 + 46, ctzuo2, 0.33, 0.33 );
setEffScaleKey( spep_6 + 52, ctzuo2, 1.27, 1.27 );
setEffScaleKey( spep_6 + 54, ctzuo2, 2.2, 2.2 );
setEffScaleKey( spep_6 + 56, ctzuo2, 2.2, 2.2 );
setEffScaleKey( spep_6 + 58, ctzuo2, 2.24, 2.24 );
setEffScaleKey( spep_6 + 64, ctzuo2, 2.24, 2.24 );
setEffScaleKey( spep_6 + 66, ctzuo2, 2.27, 2.27 );
setEffScaleKey( spep_6 + 74, ctzuo2, 2.27, 2.27 );
setEffScaleKey( spep_6 + 76, ctzuo2, 2.3, 2.3 );
setEffScaleKey( spep_6 + 84, ctzuo2, 2.3, 2.3 );
setEffScaleKey( spep_6 + 86, ctzuo2, 2.34, 2.34 );
setEffScaleKey( spep_6 + 94, ctzuo2, 2.34, 2.34 );
--setEffScaleKey( spep_6 + 96, ctzuo2, 2.37, 2.37 );

setEffRotateKey( spep_6 + 46 ,ctzuo2, -37.9 );
setEffRotateKey( spep_6 + 52, ctzuo2, -34.1 );
setEffRotateKey( spep_6 + 54, ctzuo2, -30.5 );
setEffRotateKey( spep_6 + 94, ctzuo2, -30.5 );

setEffAlphaKey( spep_6 + 46, ctzuo2, 255 );
setEffAlphaKey( spep_6 + 94, ctzuo2, 255 );

ctgyun = entryEffectLife( spep_6 + 150,  10007, 28, 0x100, -1, 0, 50.4, 32.8 );--ギュン
setEffMoveKey( spep_6 + 150, ctgyun, 50.4, 32.8 , 0 );
setEffMoveKey( spep_6 + 152, ctgyun, 50.2, 88.1 , 0 );
setEffMoveKey( spep_6 + 154, ctgyun, 50.1, 121.3 , 0 );
setEffMoveKey( spep_6 + 156, ctgyun, 50.1, 132.4 , 0 );
setEffMoveKey( spep_6 + 178, ctgyun, 50.1, 132.4 , 0 );

setEffScaleKey( spep_6 + 150, ctgyun, 1.6, 1.6 );
setEffScaleKey( spep_6 + 152, ctgyun, 2.81, 2.81 );
setEffScaleKey( spep_6 + 154, ctgyun, 3.53, 3.53 );
setEffScaleKey( spep_6 + 156, ctgyun, 3.77, 3.77 );
setEffScaleKey( spep_6 + 158, ctgyun, 3.81, 3.81 );
setEffScaleKey( spep_6 + 160, ctgyun, 3.85, 3.85 );
setEffScaleKey( spep_6 + 162, ctgyun, 3.88, 3.88 );
setEffScaleKey( spep_6 + 164, ctgyun, 3.92, 3.92 );
setEffScaleKey( spep_6 + 166, ctgyun, 3.96, 3.96 );
setEffScaleKey( spep_6 + 168, ctgyun, 4, 4 );
setEffScaleKey( spep_6 + 170, ctgyun, 4.04, 4.04 );
setEffScaleKey( spep_6 + 172, ctgyun, 4.08, 4.08 );
setEffScaleKey( spep_6 + 174, ctgyun, 4.11, 4.11 );
setEffScaleKey( spep_6 + 176, ctgyun, 4.15, 4.15 );
setEffScaleKey( spep_6 + 178, ctgyun, 4.19, 4.19 );

setEffRotateKey( spep_6 + 150, ctgyun, -7 );
setEffRotateKey( spep_6 + 152, ctgyun, -8.1 );
setEffRotateKey( spep_6 + 154, ctgyun, -8.8 );
setEffRotateKey( spep_6 + 156, ctgyun, -9 );
setEffRotateKey( spep_6 + 178, ctgyun, -9 );

setEffAlphaKey( spep_6 + 150, ctgyun, 255 );
setEffAlphaKey( spep_6 + 178, ctgyun, 255 );

--集中線(斜め)
shuchu5 = entryEffectLife( spep_6 + 27,  921, 150, 0x80, -1, 0, 1, 1.9 );
setEffMoveKey( spep_6 + 27, shuchu5, 1, 1.9 , 0 );
setEffMoveKey( spep_6 + 96, shuchu5, 1, 1.9 , 0 );
setEffMoveKey( spep_6 + 98, shuchu5, 1.1, 241.9 , 0 );
setEffMoveKey( spep_6 + 177, shuchu5, 1.1, 241.9 , 0 );
setEffScaleKey( spep_6 + 27, shuchu5, 1.32, 1.22 );
setEffScaleKey( spep_6 + 96, shuchu5, 1.32, 1.22 );
setEffScaleKey( spep_6 + 98, shuchu5, 1.23, 1.37 );
setEffScaleKey( spep_6 + 177, shuchu5, 1.23, 1.37 );
setEffRotateKey( spep_6 + 27, shuchu5, 180 );
setEffRotateKey( spep_6 + 177, shuchu5, 180 );

--集中線
shuchu7 = entryEffectLife( spep_6,906, 26, 0x100, -1, 0, 244.5, 0 );
setEffMoveKey( spep_6, shuchu7, 0, 0 , 0 );
setEffMoveKey( spep_6+26, shuchu7, 0, 0 , 0 );

setEffScaleKey( spep_6, shuchu7, 1.15, 1.15 );
setEffScaleKey( spep_6+26, shuchu7, 1.15, 1.15 );

setEffAlphaKey(spep_6,shuchu7,255);
setEffAlphaKey(spep_6+26,shuchu7,255);
setEffRotateKey(spep_6,shuchu7,180);
setEffRotateKey(spep_6+26,shuchu7,180);


--黒背景
entryFadeBg(spep_6, 0, 180, 0, 0, 0, 0, 140);  -- 黒　背景

--白フェード
entryFade(spep_6+24,2,1,3,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_6+41,2,1,5,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_6+92,3,2,3,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_6+174,4,1,8,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade


--SE
playSe( spep_6, SE_03);
playSe( spep_6+20, SE_03);
playSe( spep_6+40, SE_03);
playSe( spep_6+50, SE_07);
playSe( spep_6+100, SE_07);

--次の準備
spep_7=spep_6+180;
------------------------------------------------------
--魔貫光殺砲被弾
----------------------------------------------------
--エフェクトの再生(前)
hit3=entryEffectLife(spep_7,SP_07x,100,0x100,-1,0,0,0);
setEffMoveKey(spep_7,hit3,0,0,0);
setEffMoveKey(spep_7+100,hit3,0,0,0);
setEffScaleKey(spep_7,hit3,1.0,1.0);
setEffScaleKey(spep_7+100,hit3,1.0,1.0);
setEffAlphaKey(spep_7,hit3,255);
setEffAlphaKey(spep_7+100,hit3,255);
setEffRotateKey(spep_7,hit3,0);
setEffRotateKey(spep_7+100,hit3,0);

--集中線
shuchu6 = entryEffectLife( spep_7 ,  921, 98, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_7 , shuchu6, 0, 0 , 0 );
setEffMoveKey( spep_7 + 98, shuchu6, 0, 0 , 0 );
setEffScaleKey( spep_7 , shuchu6, 1.0, 1.0 );
setEffScaleKey( spep_7 + 98, shuchu6, 1.0, 1.0 );
setEffRotateKey( spep_7 , shuchu6, 0 );
setEffRotateKey( spep_7 + 98, shuchu6, 0 );
setEffAlphaKey( spep_7 , shuchu6, 255 );
setEffAlphaKey( spep_7 + 98, shuchu6, 255 );


--エフェクトの再生(後)
hit4=entryEffectLife(spep_7,SP_08x,100,0x80,-1,0,0,0);
setEffMoveKey(spep_7,hit4,0,0,0);
setEffMoveKey(spep_7+100,hit4,0,0,0);
setEffScaleKey(spep_7,hit4,1.0,1.0);
setEffScaleKey(spep_7+100,hit4,1.0,1.0);
setEffAlphaKey(spep_7,hit4,255);
setEffAlphaKey(spep_7+100,hit4,255);
setEffRotateKey(spep_7,hit4,0);
setEffRotateKey(spep_7+100,hit4,0);


--敵キャラ
setDisp( spep_7 + 0, 1, 1 );
setDisp( spep_7 + 97, 1, 0 );
changeAnime( spep_7 + 0, 1, 106 );
changeAnime( spep_7 + 34, 1, 108 );

setMoveKey( spep_7 + 0, 1, 40.1, 50.1 , 0 );
setMoveKey( spep_7 + 2, 1, 40.5, 49.9 , 0 );
setMoveKey( spep_7 + 4, 1, 41.7, 49 , 0 );
setMoveKey( spep_7 + 6, 1, 45.7, 44.4 , 0 );
setMoveKey( spep_7 + 8, 1, 50.7, 46.8 , 0 );
setMoveKey( spep_7 + 10, 1, 45.5, 44.3 , 0 );
setMoveKey( spep_7 + 12, 1, 51.3, 47.4 , 0 );
setMoveKey( spep_7 + 14, 1, 48.8, 44.8 , 0 );
setMoveKey( spep_7 + 16, 1, 53, 39.5 , 0 );
setMoveKey( spep_7 + 18, 1, 52.3, 47 , 0 );
setMoveKey( spep_7 + 20, 1, 51.3, 39.2 , 0 );
setMoveKey( spep_7 + 22, 1, 52.3, 37.3 , 0 );
setMoveKey( spep_7 + 24, 1, 61.1, 38.6 , 0 );
setMoveKey( spep_7 + 26, 1, 57.9, 44 , 0 );
setMoveKey( spep_7 + 28, 1, 60.1, 35.6 , 0 );
setMoveKey( spep_7 + 30, 1, 64.2, 39.1 , 0 );
setMoveKey( spep_7 + 33, 1, 55.9, 37.8 , 0 );
setMoveKey( spep_7 + 34, 1, 126.3, 45.1 , 0 );
setMoveKey( spep_7 + 36, 1, 132.6, 43.5 , 0 );
setMoveKey( spep_7 + 38, 1, 132.4, 33.7 , 0 );
setMoveKey( spep_7 + 40, 1, 156.6, 27.6 , 0 );
setMoveKey( spep_7 + 42, 1, 177.8, 33.5 , 0 );
setMoveKey( spep_7 + 44, 1, 179.6, 33.6 , 0 );
setMoveKey( spep_7 + 46, 1, 193, 26.6 , 0 );
setMoveKey( spep_7 + 48, 1, 212.5, 20.5 , 0 );
setMoveKey( spep_7 + 50, 1, 201.9, 36.1 , 0 );
setMoveKey( spep_7 + 52, 1, 216.7, 24.9 , 0 );
setMoveKey( spep_7 + 54, 1, 200.1, 31.9 , 0 );
setMoveKey( spep_7 + 56, 1, 199.4, 27.4 , 0 );
setMoveKey( spep_7 + 58, 1, 211.9, 39.8 , 0 );
setMoveKey( spep_7 + 60, 1, 211.5, 22.3 , 0 );
setMoveKey( spep_7 + 62, 1, 215.1, 35.3 , 0 );
setMoveKey( spep_7 + 64, 1, 202.7, 22 , 0 );
setMoveKey( spep_7 + 66, 1, 212.2, 22.8 , 0 );
setMoveKey( spep_7 + 68, 1, 198.2, 29.6 , 0 );
setMoveKey( spep_7 + 70, 1, 214.2, 25.1 , 0 );
setMoveKey( spep_7 + 72, 1, 203, 34.1 , 0 );
setMoveKey( spep_7 + 74, 1, 198, 27.6 , 0 );
setMoveKey( spep_7 + 76, 1, 226.7, 34.4 , 0 );
setMoveKey( spep_7 + 98, 1, 263.7, 42.4 , 0 );

setScaleKey( spep_7 + 0, 1, 2.63, 2.63 );
setScaleKey( spep_7 + 2, 1, 2.61, 2.61 );
setScaleKey( spep_7 + 4, 1, 2.6, 2.6 );
setScaleKey( spep_7 + 6, 1, 2.58, 2.58 );
setScaleKey( spep_7 + 8, 1, 2.57, 2.57 );
setScaleKey( spep_7 + 10, 1, 2.55, 2.55 );
setScaleKey( spep_7 + 12, 1, 2.54, 2.54 );
setScaleKey( spep_7 + 14, 1, 2.53, 2.53 );
setScaleKey( spep_7 + 16, 1, 2.52, 2.52 );
setScaleKey( spep_7 + 18, 1, 2.5, 2.5 );
setScaleKey( spep_7 + 20, 1, 2.49, 2.49 );
setScaleKey( spep_7 + 22, 1, 2.48, 2.48 );
setScaleKey( spep_7 + 24, 1, 2.48, 2.48 );
setScaleKey( spep_7 + 26, 1, 2.47, 2.47 );
setScaleKey( spep_7 + 28, 1, 2.46, 2.46 );
setScaleKey( spep_7 + 30, 1, 2.46, 2.46 );
setScaleKey( spep_7 + 33, 1, 2.45, 2.45 );
setScaleKey( spep_7 + 34, 1, 2.37, 2.37 );
setScaleKey( spep_7 + 36, 1, 2.22, 2.22 );
setScaleKey( spep_7 + 38, 1, 2.06, 2.06 );
setScaleKey( spep_7 + 40, 1, 1.91, 1.91 );
setScaleKey( spep_7 + 42, 1, 1.77, 1.77 );
setScaleKey( spep_7 + 44, 1, 1.66, 1.66 );
setScaleKey( spep_7 + 46, 1, 1.56, 1.56 );
setScaleKey( spep_7 + 48, 1, 1.48, 1.48 );
setScaleKey( spep_7 + 98, 1, 1.48, 1.48 );

setRotateKey( spep_7 + 0, 1, -43.2 );
setRotateKey( spep_7 + 2, 1, -43.1 );
setRotateKey( spep_7 + 4, 1, -43.1 );
setRotateKey( spep_7 + 6, 1, -43 );
setRotateKey( spep_7 + 8, 1, -43 );
setRotateKey( spep_7 + 10, 1, -42.9 );
setRotateKey( spep_7 + 14, 1, -42.9 );
setRotateKey( spep_7 + 16, 1, -42.8 );
setRotateKey( spep_7 + 18, 1, -42.8 );
setRotateKey( spep_7 + 20, 1, -42.7 );
setRotateKey( spep_7 + 26, 1, -42.7 );
setRotateKey( spep_7 + 28, 1, -42.6 );
setRotateKey( spep_7 + 33, 1, -42.6 );
setRotateKey( spep_7 + 34, 1, -4 );
setRotateKey( spep_7 + 98, 1, -4 );
setShakeChara(spep_7 ,1,98,15);

--文字エントリー
ctzydodo2 = entryEffectLife( spep_7 + 29,  10014, 71, 0x100, -1, 0, 63.1, 347.5 );--ズドド
setEffMoveKey( spep_7 + 29, ctzydodo2, 63.1, 347.5 , 0 );
setEffMoveKey( spep_7 + 34, ctzydodo2, 47.5, 329.1 , 0 );
setEffMoveKey( spep_7 + 36, ctzydodo2, 63.1, 347.5 , 0 );
setEffMoveKey( spep_7 + 38, ctzydodo2, 47.5, 329.1 , 0 );
setEffMoveKey( spep_7 + 40, ctzydodo2, 63.1, 347.5 , 0 );
setEffMoveKey( spep_7 + 42, ctzydodo2, 47.5, 329.1 , 0 );
setEffMoveKey( spep_7 + 44, ctzydodo2, 63.1, 347.5 , 0 );
setEffMoveKey( spep_7 + 46, ctzydodo2, 47.5, 329.1 , 0 );
setEffMoveKey( spep_7 + 48, ctzydodo2, 63.1, 347.5 , 0 );
setEffMoveKey( spep_7 + 50, ctzydodo2, 47.5, 329.1 , 0 );
setEffMoveKey( spep_7 + 52, ctzydodo2, 63.1, 347.5 , 0 );
setEffMoveKey( spep_7 + 54, ctzydodo2, 47.5, 329.1 , 0 );
setEffMoveKey( spep_7 + 56, ctzydodo2, 63.1, 347.5 , 0 );
setEffMoveKey( spep_7 + 58, ctzydodo2, 47.5, 329.1 , 0 );
setEffMoveKey( spep_7 + 60, ctzydodo2, 63.1, 347.5 , 0 );
setEffMoveKey( spep_7 + 62, ctzydodo2, 47.5, 329.1 , 0 );
setEffMoveKey( spep_7 + 64, ctzydodo2, 63.1, 347.5 , 0 );
setEffMoveKey( spep_7 + 66, ctzydodo2, 47.5, 329.1 , 0 );
setEffMoveKey( spep_7 + 68, ctzydodo2, 63.1, 347.5 , 0 );
setEffMoveKey( spep_7 + 70, ctzydodo2, 47.5, 329.1 , 0 );
setEffMoveKey( spep_7 + 72, ctzydodo2, 63.1, 347.5 , 0 );
setEffMoveKey( spep_7 + 74, ctzydodo2, 47.5, 329.1 , 0 );
setEffMoveKey( spep_7 + 76, ctzydodo2, 63.1, 347.5 , 0 );
setEffMoveKey( spep_7 + 100, ctzydodo2, 63.1, 347.5 , 0 );

setEffScaleKey( spep_7 + 29, ctzydodo2, 2.72, 2.72 );
setEffScaleKey( spep_7 + 100, ctzydodo2, 2.72, 2.72 );
setEffRotateKey( spep_7 + 29, ctzydodo2, -19.1 );
setEffRotateKey( spep_7 + 100, ctzydodo2, -19.1 );
setEffAlphaKey( spep_7 + 29, ctzydodo2, 255 );
setEffAlphaKey( spep_7 + 100, ctzydodo2, 255 );

setEffShake(spep_7 + 29,ctzydodo2, 71,15);



--SE
playSe( spep_7+10, SE_07);

--黒背景
entryFadeBg(spep_7, 0, 98, 0, 0, 0, 0, 140);  -- 黒　背景

entryFade(spep_7+90,6,10,0,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade


--次の準備
spep_8=spep_7+98;
------------------------------------------------------
-- ガ
------------------------------------------------------

setDisp( spep_8, 1, 1);
setMoveKey(  spep_8,    1,  100,  0,   0);
setScaleKey( spep_8,    1,  1.0, 1.0);
setMoveKey(  spep_8,    1,    0,   0,   128);
setScaleKey( spep_8,    1,  0.1, 0.1);

changeAnime( spep_8, 1, 107);                         -- 手前ダメージ
entryEffect( spep_8+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_8+8, SE_10);

setMoveKey(  spep_8+8,   1,    0,   0,   128);
setMoveKey(  spep_8+15,   1,  -60,  -200,  -100);
setMoveKey(  spep_8+16,   1,  -60,  -200,  -100);
setDamage( spep_8+16, 1, 0);  -- ダメージ振動等
setShake(spep_8+7,6,15);
setShake(spep_8+13,15,10);

setRotateKey( spep_8,  1,  30 );
setRotateKey( spep_8+2,  1,  80 );
setRotateKey( spep_8+4,  1, 120 );
setRotateKey( spep_8+6,  1, 160 );
setRotateKey( spep_8+8,  1, 200 );
setRotateKey( spep_8+10,  1, 260 );
setRotateKey( spep_8+12,  1, 320 );
setRotateKey( spep_8+14,  1,   0 );

setShakeChara( spep_8+15, 1, 5,  10);
setShakeChara( spep_8+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep_8+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep_8+15, ct, 30, 10);
setEffRotateKey( spep_8+15, ct, -40);
setEffScaleKey( spep_8+15, ct, 4.0, 4.0);
setEffScaleKey( spep_8+16, ct, 2.0, 2.0);
setEffScaleKey( spep_8+17, ct, 2.6, 2.6);
setEffScaleKey( spep_8+18, ct, 4.0, 4.0);
setEffScaleKey( spep_8+19, ct, 2.6, 2.6);
setEffScaleKey( spep_8+20, ct, 3.8, 3.8);
setEffScaleKey( spep_8+110, ct, 3.8, 3.8);
setEffAlphaKey( spep_8+15, ct, 255);
setEffAlphaKey( spep_8+105, ct, 255);
setEffAlphaKey( spep_8+115, ct, 0);

playSe( spep_8+3, SE_11);
shuchusen = entryEffectLife( spep_8+3,906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_8+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

shuchusenkuro = entryEffectLife( spep_8+15, 1657, 120, 0x80,  -1, 0,  0,  0);   -- 集中線


-- ダメージ表示
dealDamage(spep_8+16);
entryFade( spep_8+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_8+110);

end



