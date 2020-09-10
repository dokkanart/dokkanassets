--1014170　人造人間18号_エネルギーウェイブ 

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--***SE***
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

--***エフェクト***
SP_01  = 152417  --突進
SP_02  = 152418--ラッシュ前
SP_02a = 152419--ラッシュ前
SP_03  = 152420  --溜め
SP_04  = 152421  --放つ
SP_05  = 152422  --迫る手間
SP_05a = 152423  --迫る奥

SP_11  = 152424  --突進
SP_12  = 152425--ラッシュ前
SP_12a = 152426--ラッシュ前
SP_13  = 152427  --溜め
SP_14  = 152428  --放つ
SP_15  = 152422  --迫る手間
SP_15a = 152423  --迫る奥



------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI(0, 0);

changeAnime( 0, 0, 1);                       -- 立ち
changeAnime( 0, 1, 101);                       -- 立ち
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    -5000,  -5000,  0);
setMoveKey(   1,   0,    -5000,  -5000,  0);
setMoveKey(   2,   0,    -5000,  -5000,  0);
setMoveKey(   3,   0,    -5000,  -5000,  0);
setMoveKey(   4,   0,    -5000,  -5000,  0);
setMoveKey(   5,   0,    -5000,  -5000,  0);
setMoveKey(   6,   0,    -5000,  -5000,  0);
setScaleKey(  0,  0,  1.5,  1.5);
setScaleKey(   1,   0, 1.5, 1.5);
setScaleKey(   2,   0, 1.5, 1.5);
setScaleKey(   3,   0, 1.5, 1.5);
setScaleKey(   4,   0, 1.5, 1.5);
setScaleKey(   5,   0, 1.5, 1.5);
setScaleKey(   6,   0, 1.5, 1.5);

-- 敵
setMoveKey(   0,   1,    -5000,  -5000,  0);
setMoveKey(   1,   1,    -5000,  -5000,  0);
setMoveKey(   2,   1,    -5000,  -5000,  0);
setMoveKey(   3,   1,    -5000,  -5000,  0);
setMoveKey(   4,   1,    -5000,  -5000,  0);
setMoveKey(   5,   1,    -5000,  -5000,  0);
setMoveKey(   6,   1,    -5000,  -5000,  0);
setScaleKey(   1,   1, 1.5, 1.5);
setScaleKey(   2,   1, 1.5, 1.5);
setScaleKey(   3,   1, 1.5, 1.5);
setScaleKey(   4,   1, 1.5, 1.5);
setScaleKey(   5,   1, 1.5, 1.5);
setScaleKey(   6,   1, 1.5, 1.5);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 突進(70F)
------------------------------------------------------
spep_1 = 0;

--***集中線***
shuchusen1 = entryEffectLife( spep_1, 906, 70, 0x100,  -1, 0,  0,  0);   -- 集中線

setEffScaleKey(  spep_1,  shuchusen1,  1.16,  2.21);
setEffScaleKey(  spep_1+70,  shuchusen1,  1.16,  2.21);
setEffMoveKey(  spep_1,  shuchusen1,  0,  0);
setEffMoveKey(  spep_1+70,  shuchusen1,  0,  0);
setEffRotateKey(  spep_1,  shuchusen1,  0);
setEffRotateKey(  spep_1+70,  shuchusen1,  0);
setEffAlphaKey(  spep_1,  shuchusen1,  255);
setEffAlphaKey(  spep_1+70,  shuchusen1,  255);

--***書き文字***
ct_zuo = entryEffectLife( spep_1,  10012, 60, 0x100, -1, 0, 78.7, 260.5 );  --ズオン

setEffShake(  spep_1,  ct_zuo,  60,  20);  --揺れ
setEffMoveKey( spep_1, ct_zuo, 78.7, 260.5 , 0 );
setEffMoveKey( spep_1+2, ct_zuo, 105, 288.6 , 0 );
setEffMoveKey( spep_1+4, ct_zuo, 117.9, 330.1 , 0 );
setEffMoveKey( spep_1+6, ct_zuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_1+52, ct_zuo, 152.3, 366.3 , 0 );
setEffMoveKey( spep_1+54, ct_zuo, 192.3, 342.3 , 0 );
setEffMoveKey( spep_1+56, ct_zuo, 181.2, 369.4 , 0 );
setEffMoveKey( spep_1+58, ct_zuo, 230.9, 335.7 , 0 );
setEffMoveKey( spep_1+60, ct_zuo, 250.3, 332.4 , 0 );
setEffScaleKey( spep_1, ct_zuo, 0.34, 0.34 );
setEffScaleKey( spep_1+2, ct_zuo, 1.13, 1.13 );
setEffScaleKey( spep_1+4, ct_zuo, 1.94, 1.94 );
setEffScaleKey( spep_1+6, ct_zuo, 2.73, 2.73 );
setEffScaleKey( spep_1+50, ct_zuo, 2.73, 2.73 );
setEffScaleKey( spep_1+52, ct_zuo, 3.55, 3.55 );
setEffScaleKey( spep_1+54, ct_zuo, 4.37, 4.37 );
setEffScaleKey( spep_1+56, ct_zuo, 5.19, 5.19 );
setEffScaleKey( spep_1+58, ct_zuo, 6.01, 6.01 );
setEffScaleKey( spep_1+60, ct_zuo, 6.82, 6.82 );
setEffRotateKey( spep_1, ct_zuo, 27.2 );
setEffRotateKey( spep_1+60, ct_zuo, 27.2 );
setEffAlphaKey( spep_1, ct_zuo, 255 );
setEffAlphaKey( spep_1+50, ct_zuo, 255 );
setEffAlphaKey( spep_1+52, ct_zuo, 204 );
setEffAlphaKey( spep_1+54, ct_zuo, 153 );
setEffAlphaKey( spep_1+56, ct_zuo, 102 );
setEffAlphaKey( spep_1+58, ct_zuo, 51 );
setEffAlphaKey( spep_1+60, ct_zuo, 0 );


--***突進***
tosshin = entryEffect(  spep_1,  SP_01,  0x80,  -1,  0,  0,  0);  --突進

setEffScaleKey(  spep_1,  tosshin,  1.0,  1.0);
setEffScaleKey(  spep_1+70,  tosshin,  1.0,  1.0);
setEffMoveKey(  spep_1,  tosshin,  0,  0);
setEffMoveKey(  spep_1+70,  tosshin,  0,  0);
setEffRotateKey(  spep_1,  tosshin,  0);
setEffRotateKey(  spep_1+70,  tosshin,  0);
setEffAlphaKey(  spep_1,  tosshin,  255);
setEffAlphaKey(  spep_1+70,  tosshin,  255);

--***SE***
playSe(  spep_1,  9);  --ダッシュ

--***フェードと背景***
entryFadeBg(spep_1, 0, 70, 0, 0, 0, 0, 100);  -- 黒背景
entryFade(spep_1+60, 8, 4, 2,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_1+40 ; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

pauseAll( SP_dodge, 67);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
--entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景

entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge+10);

do return end
else end

------------------------------------------------------
-- ラッシュ(250F)
------------------------------------------------------
spep_2 = spep_1+70;

--***書き文字***
ct_ga = entryEffectLife( spep_2+20,  10005, 8, 0x100, -1, 0, -146.2, 236.1 );  --ガ
setEffMoveKey( spep_2+20, ct_ga, -146.2, 236.1 , 0 );
setEffMoveKey( spep_2+22, ct_ga, -155.1, 242.5 , 0 );
setEffMoveKey( spep_2+24, ct_ga, -146.3, 236.1 , 0 );
setEffMoveKey( spep_2+26, ct_ga, -152.9, 241.1 , 0 );
setEffMoveKey( spep_2+28, ct_ga, -146.2, 236.1 , 0 );
setEffScaleKey( spep_2+20, ct_ga, 1.28, 1.28 );
setEffScaleKey( spep_2+22, ct_ga, 1.91, 1.91 );
setEffScaleKey( spep_2+24, ct_ga, 1.69, 1.69 );
setEffScaleKey( spep_2+26, ct_ga, 1.48, 1.48 );
setEffScaleKey( spep_2+28, ct_ga, 1.4, 1.4 );
setEffRotateKey( spep_2+20, ct_ga, -8.7 );
setEffRotateKey( spep_2+28, ct_ga, -8.7 );
setEffAlphaKey( spep_2+20, ct_ga, 255 );
setEffAlphaKey( spep_2+26, ct_ga, 255 );
setEffAlphaKey( spep_2+28, ct_ga, 128 );

ct_ga2 = entryEffectLife( spep_2+32,  10005, 8, 0x100, -1, 0, -8.6, 225.6 );  --ガ

setEffMoveKey( spep_2+32, ct_ga2, -8.6, 225.6 , 0 );
setEffMoveKey( spep_2+34, ct_ga2, -14.6, 234.4 , 0 );
setEffMoveKey( spep_2+36, ct_ga2, -8.6, 225.4 , 0 );
setEffMoveKey( spep_2+38, ct_ga2, -13.2, 232.5 , 0 );
setEffMoveKey( spep_2+40, ct_ga2, -8.6, 225.4 , 0 );
setEffScaleKey( spep_2+32, ct_ga2, 1.28, 1.28 );
setEffScaleKey( spep_2+34, ct_ga2, 1.91, 1.91 );
setEffScaleKey( spep_2+36, ct_ga2, 1.69, 1.69 );
setEffScaleKey( spep_2+38, ct_ga2, 1.48, 1.48 );
setEffScaleKey( spep_2+40, ct_ga2, 1.4, 1.4 );
setEffRotateKey( spep_2+32, ct_ga2, 11.6 );
setEffRotateKey( spep_2+34, ct_ga2, 11.5 );
setEffRotateKey( spep_2+40, ct_ga2, 11.5 );
setEffAlphaKey( spep_2+32, ct_ga2, 255 );
setEffAlphaKey( spep_2+38, ct_ga2, 255 );
setEffAlphaKey( spep_2+40, ct_ga2, 128 );

ct_ga3 = entryEffectLife( spep_2+42,  10005, 8, 0x100, -1, 0, -128, 257.2 );  --ガ

setEffMoveKey( spep_2+42, ct_ga3, -128, 257.2 , 0 );
setEffMoveKey( spep_2+44, ct_ga3, -137.8, 262.1 , 0 );
setEffMoveKey( spep_2+46, ct_ga3, -128.1, 257.2 , 0 );
setEffMoveKey( spep_2+48, ct_ga3, -135.4, 261.1 , 0 );
setEffMoveKey( spep_2+50, ct_ga3, -128.1, 257.2 , 0 );
setEffScaleKey( spep_2+42, ct_ga3, 1.28, 1.28 );
setEffScaleKey( spep_2+44, ct_ga3, 1.91, 1.91 );
setEffScaleKey( spep_2+46, ct_ga3, 1.69, 1.69 );
setEffScaleKey( spep_2+48, ct_ga3, 1.48, 1.48 );
setEffScaleKey( spep_2+50, ct_ga3, 1.4, 1.4 );
setEffRotateKey( spep_2+42, ct_ga3, -17.5 );
setEffRotateKey( spep_2+50, ct_ga3, -17.5 );
setEffAlphaKey( spep_2+42, ct_ga3, 255 );
setEffAlphaKey( spep_2+48, ct_ga3, 255 );
setEffAlphaKey( spep_2+50, ct_ga3, 128 );

ct_baki = entryEffectLife( spep_2+52,  10020, 16, 0x100, -1, 0, 1.3, 260.9 );  --バキ

setEffMoveKey( spep_2+52, ct_baki, 1.3, 260.9 , 0 );
setEffMoveKey( spep_2+54, ct_baki, -14, 280.2 , 0 );
setEffMoveKey( spep_2+56, ct_baki, 1.3, 261 , 0 );
setEffMoveKey( spep_2+58, ct_baki, 1.4, 260.9 , 0 );
setEffMoveKey( spep_2+60, ct_baki, -8.4, 273.3 , 0 );
setEffMoveKey( spep_2+62, ct_baki, 1.5, 260.9 , 0 );
setEffMoveKey( spep_2+64, ct_baki, 1.5, 260.9 , 0 );
setEffMoveKey( spep_2+66, ct_baki, -7.7, 272.5 , 0 );
setEffMoveKey( spep_2+68, ct_baki, 1.5, 261 , 0 );
setEffScaleKey( spep_2+52, ct_baki, 1.6, 1.6 );
setEffScaleKey( spep_2+54, ct_baki, 2.88, 2.88 );
setEffScaleKey( spep_2+56, ct_baki, 2.41, 2.41 );
setEffScaleKey( spep_2+58, ct_baki, 1.94, 1.94 );
setEffScaleKey( spep_2+60, ct_baki, 1.87, 1.87 );
setEffScaleKey( spep_2+62, ct_baki, 1.8, 1.8 );
setEffScaleKey( spep_2+64, ct_baki, 1.73, 1.73 );
setEffScaleKey( spep_2+66, ct_baki, 1.75, 1.75 );
setEffScaleKey( spep_2+68, ct_baki, 1.76, 1.76 );
setEffRotateKey( spep_2+52, ct_baki, 6.5 );
setEffRotateKey( spep_2+68, ct_baki, 6.5 );
setEffAlphaKey( spep_2+52, ct_baki, 255 );
setEffAlphaKey( spep_2+64, ct_baki, 255 );
setEffAlphaKey( spep_2+66, ct_baki, 134 );
setEffAlphaKey( spep_2+68, ct_baki, 13 );

ct_zun = entryEffectLife( spep_2+86,  10016, 10, 0x100, -1, 0, 15.9, 262.3 );  --ズン

setEffMoveKey( spep_2+86, ct_zun, 15.9, 262.3 , 0 );
setEffMoveKey( spep_2+88, ct_zun, 15.8, 262.3 , 0 );
setEffMoveKey( spep_2+90, ct_zun, 10, 265.7 , 0 );
setEffMoveKey( spep_2+92, ct_zun, 15.8, 262.3 , 0 );
setEffMoveKey( spep_2+94, ct_zun, 11, 265.1 , 0 );
setEffMoveKey( spep_2+96, ct_zun, 15.7, 262.4 , 0 );
setEffScaleKey( spep_2+86, ct_zun, 1.31, 1.31 );
setEffScaleKey( spep_2+88, ct_zun, 2.68, 2.68 );
setEffScaleKey( spep_2+90, ct_zun, 2.28, 2.28 );
setEffScaleKey( spep_2+92, ct_zun, 1.87, 1.87 );
setEffScaleKey( spep_2+94, ct_zun, 1.89, 1.89 );
setEffScaleKey( spep_2+96, ct_zun, 1.9, 1.9 );
setEffRotateKey( spep_2+86, ct_zun, -11.5 );
setEffRotateKey( spep_2+92, ct_zun, -11.5 );
setEffRotateKey( spep_2+94, ct_zun, -11.6 );
setEffRotateKey( spep_2+96, ct_zun, -11.5 );
setEffAlphaKey( spep_2+86, ct_zun, 255 );
setEffAlphaKey( spep_2+92, ct_zun, 255 );
setEffAlphaKey( spep_2+94, ct_zun, 191 );
setEffAlphaKey( spep_2+96, ct_zun, 13 );

ct_ga4 = entryEffectLife( spep_2+100,  10005, 8, 0x100, -1, 0, 33.1, 240 );  --ガ

setEffMoveKey( spep_2+100, ct_ga4, 33.1, 240 , 0 );
setEffMoveKey( spep_2+102, ct_ga4, 23.2, 244.4 , 0 );
setEffMoveKey( spep_2+104, ct_ga4, 33.1, 239.9 , 0 );
setEffMoveKey( spep_2+106, ct_ga4, 25.5, 243.5 , 0 );
setEffMoveKey( spep_2+108, ct_ga4, 33.2, 240 , 0 );
setEffScaleKey( spep_2+100, ct_ga4, 1.28, 1.28 );
setEffScaleKey( spep_2+102, ct_ga4, 1.91, 1.91 );
setEffScaleKey( spep_2+104, ct_ga4, 1.69, 1.69 );
setEffScaleKey( spep_2+106, ct_ga4, 1.48, 1.48 );
setEffScaleKey( spep_2+108, ct_ga4, 1.4, 1.4 );
setEffRotateKey( spep_2+100, ct_ga4, -20.4 );
setEffRotateKey( spep_2+108, ct_ga4, -20.4 );
setEffAlphaKey( spep_2+100, ct_ga4, 255 );
setEffAlphaKey( spep_2+106, ct_ga4, 255 );
setEffAlphaKey( spep_2+108, ct_ga4, 128 );

ct_ga5 = entryEffectLife( spep_2+108,  10005, 8, 0x100, -1, 0, 177.9, 256.6 );  --ガ

setEffMoveKey( spep_2+108, ct_ga5, 177.9, 256.6 , 0 );
setEffMoveKey( spep_2+110, ct_ga5, 173.7, 266.5 , 0 );
setEffMoveKey( spep_2+112, ct_ga5, 177.9, 256.5 , 0 );
setEffMoveKey( spep_2+114, ct_ga5, 174.7, 264.3 , 0 );
setEffMoveKey( spep_2+116, ct_ga5, 177.9, 256.5 , 0 );
setEffScaleKey( spep_2+108, ct_ga5, 1.28, 1.28 );
setEffScaleKey( spep_2+110, ct_ga5, 1.91, 1.91 );
setEffScaleKey( spep_2+112, ct_ga5, 1.69, 1.69 );
setEffScaleKey( spep_2+114, ct_ga5, 1.48, 1.48 );
setEffScaleKey( spep_2+116, ct_ga5, 1.4, 1.4 );
setEffRotateKey( spep_2+108, ct_ga5, 22.3 );
setEffRotateKey( spep_2+116, ct_ga5, 22.3 );
setEffAlphaKey( spep_2+108, ct_ga5, 255 );
setEffAlphaKey( spep_2+114, ct_ga5, 255 );
setEffAlphaKey( spep_2+116, ct_ga5, 128 );

ct_ga6 = entryEffectLife( spep_2+118,  10005, 8, 0x100, -1, 0, 16.6, 229.1 );  --が

setEffMoveKey( spep_2+118, ct_ga6, 16.6, 229.1 , 0 );
setEffMoveKey( spep_2+120, ct_ga6, 10.4, 238.1 , 0 );
setEffMoveKey( spep_2+122, ct_ga6, 16.6, 229.1 , 0 );
setEffMoveKey( spep_2+124, ct_ga6, 11.9, 235.9 , 0 );
setEffMoveKey( spep_2+126, ct_ga6, 16.6, 229.1 , 0 );
setEffScaleKey( spep_2+118, ct_ga6, 1.28, 1.28 );
setEffScaleKey( spep_2+120, ct_ga6, 1.91, 1.91 );
setEffScaleKey( spep_2+122, ct_ga6, 1.69, 1.69 );
setEffScaleKey( spep_2+124, ct_ga6, 1.48, 1.48 );
setEffScaleKey( spep_2+126, ct_ga6, 1.4, 1.4 );
setEffRotateKey( spep_2+118, ct_ga6, 10.7 );
setEffRotateKey( spep_2+126, ct_ga6, 10.7 );
setEffAlphaKey( spep_2+118, ct_ga6, 255 );
setEffAlphaKey( spep_2+124, ct_ga6, 255 );
setEffAlphaKey( spep_2+126, ct_ga6, 128 );

ct_zun2 = entryEffectLife( spep_2+130,  10016, 12, 0x100, -1, 0, 80, 346.3 );  --ズン

setEffMoveKey( spep_2+130, ct_zun2, 80, 346.3 , 0 );
setEffMoveKey( spep_2+132, ct_zun2, 80, 346.2 , 0 );
setEffMoveKey( spep_2+134, ct_zun2, 74.1, 351.7 , 0 );
setEffMoveKey( spep_2+136, ct_zun2, 80, 346.2 , 0 );
setEffMoveKey( spep_2+138, ct_zun2, 75, 350.5 , 0 );
setEffMoveKey( spep_2+140, ct_zun2, 79.8, 346.3 , 0 );
setEffScaleKey( spep_2+130, ct_zun2, 1.56, 1.56 );
setEffScaleKey( spep_2+132, ct_zun2, 3.19, 3.19 );
setEffScaleKey( spep_2+134, ct_zun2, 2.71, 2.71 );
setEffScaleKey( spep_2+136, ct_zun2, 2.23, 2.23 );
setEffScaleKey( spep_2+138, ct_zun2, 2.24, 2.24 );
setEffScaleKey( spep_2+140, ct_zun2, 2.25, 2.25 );
setEffRotateKey( spep_2+130, ct_zun2, 1 );
setEffRotateKey( spep_2+140, ct_zun2, 1 );
setEffAlphaKey( spep_2+130, ct_zun2, 255 );
setEffAlphaKey( spep_2+136, ct_zun2, 255 );
setEffAlphaKey( spep_2+138, ct_zun2, 191 );
setEffAlphaKey( spep_2+140, ct_zun2, 13 );
setEffAlphaKey( spep_2+142, ct_zun2, 0 );

ct_shun = entryEffectLife( spep_2+148,  10011, 12, 0x100, -1, 0, -12.1, 304.5 );  --シュン

setEffMoveKey( spep_2+148, ct_shun, -12.1, 304.5 , 0 );
setEffMoveKey( spep_2+150, ct_shun, -12.1, 304.5 , 0 );
setEffMoveKey( spep_2+152, ct_shun, -72, 304.4 , 0 );
setEffMoveKey( spep_2+154, ct_shun, -103, 304.4 , 0 );
setEffMoveKey( spep_2+156, ct_shun, -134.1, 304.5 , 0 );
setEffMoveKey( spep_2+158, ct_shun, -174.1, 297.5 , 0 );
setEffMoveKey( spep_2+160, ct_shun, -214, 290.4 , 0 );
setEffScaleKey( spep_2+148, ct_shun, 1.65, 1.65 );
setEffScaleKey( spep_2+150, ct_shun, 2.78, 2.78 );
setEffScaleKey( spep_2+152, ct_shun, 2.3, 2.3 );
setEffScaleKey( spep_2+154, ct_shun, 2.06, 2.06 );
setEffScaleKey( spep_2+156, ct_shun, 1.82, 1.82 );
setEffScaleKey( spep_2+158, ct_shun, 1.77, 1.77 );
setEffScaleKey( spep_2+160, ct_shun, 1.71, 1.71 );
setEffRotateKey( spep_2+148, ct_shun, -8.7 );
setEffRotateKey( spep_2+160, ct_shun, -8.7 );
setEffAlphaKey( spep_2+148, ct_shun, 255 );
setEffAlphaKey( spep_2+156, ct_shun, 255 );
setEffAlphaKey( spep_2+158, ct_shun, 128 );
setEffAlphaKey( spep_2+160, ct_shun, 0 );

ct_shun2 = entryEffectLife( spep_2+190,  10011, 16, 0x100, -1, 0, -60.1, 452.6 );  --シュン

setEffMoveKey( spep_2+190, ct_shun2, -60.1, 452.6 , 0 );
setEffMoveKey( spep_2+206, ct_shun2, -60.2, 452.4 , 0 );
setEffScaleKey( spep_2+190, ct_shun2, 1.59, 1.59 );
setEffScaleKey( spep_2+192, ct_shun2, 2.68, 2.68 );
setEffScaleKey( spep_2+194, ct_shun2, 2.37, 2.37 );
setEffScaleKey( spep_2+196, ct_shun2, 2.07, 2.07 );
setEffScaleKey( spep_2+198, ct_shun2, 1.76, 1.76 );
setEffScaleKey( spep_2+200, ct_shun2, 1.73, 1.73 );
setEffScaleKey( spep_2+202, ct_shun2, 1.7, 1.7 );
setEffScaleKey( spep_2+204, ct_shun2, 1.67, 1.67 );
setEffScaleKey( spep_2+206, ct_shun2, 1.64, 1.64 );
setEffRotateKey( spep_2+190, ct_shun2, -18 );
setEffRotateKey( spep_2+206, ct_shun2, -18 );
setEffAlphaKey( spep_2+190, ct_shun2, 255 );
setEffAlphaKey( spep_2+198, ct_shun2, 255 );
setEffAlphaKey( spep_2+200, ct_shun2, 191 );
setEffAlphaKey( spep_2+202, ct_shun2, 128 );
setEffAlphaKey( spep_2+204, ct_shun2, 64 );
setEffAlphaKey( spep_2+206, ct_shun2, 0 );

ct_baki2 = entryEffectLife( spep_2+210,  10020, 32, 0x100, -1, 0, 106.6, 344.1 );  --バキ

setEffShake(  spep_2+210,  ct_baki2,  32,  20);
setEffMoveKey( spep_2+210, ct_baki2, 106.6, 344.1 , 0 );
setEffMoveKey( spep_2+242, ct_baki2, 106.8, 344 , 0 );
setEffScaleKey( spep_2+210, ct_baki2, 2.13, 2.13 );
setEffScaleKey( spep_2+212, ct_baki2, 3.84, 3.84 );
setEffScaleKey( spep_2+214, ct_baki2, 3.42, 3.42 );
setEffScaleKey( spep_2+216, ct_baki2, 3, 3 );
setEffScaleKey( spep_2+218, ct_baki2, 2.58, 2.58 );
setEffScaleKey( spep_2+220, ct_baki2, 2.55, 2.55 );
setEffScaleKey( spep_2+222, ct_baki2, 2.51, 2.51 );
setEffScaleKey( spep_2+224, ct_baki2, 2.48, 2.48 );
setEffScaleKey( spep_2+226, ct_baki2, 2.44, 2.44 );
setEffScaleKey( spep_2+228, ct_baki2, 2.4, 2.4 );
setEffScaleKey( spep_2+230, ct_baki2, 2.37, 2.37 );
setEffScaleKey( spep_2+232, ct_baki2, 2.34, 2.34 );
setEffScaleKey( spep_2+234, ct_baki2, 2.3, 2.3 );
setEffScaleKey( spep_2+236, ct_baki2, 2.31, 2.31 );
setEffScaleKey( spep_2+238, ct_baki2, 2.32, 2.32 );
setEffScaleKey( spep_2+240, ct_baki2, 2.33, 2.33 );
setEffScaleKey( spep_2+242, ct_baki2, 2.34, 2.34 );
setEffRotateKey( spep_2+210, ct_baki2, 22.6 );
setEffRotateKey( spep_2+242, ct_baki2, 22.6 );
setEffAlphaKey( spep_2+210, ct_baki2, 255 );
setEffAlphaKey( spep_2+234, ct_baki2, 255 );
setEffAlphaKey( spep_2+236, ct_baki2, 195 );
setEffAlphaKey( spep_2+238, ct_baki2, 134 );
setEffAlphaKey( spep_2+240, ct_baki2, 74 );
setEffAlphaKey( spep_2+242, ct_baki2, 13 );


--***集中線***
shuchusen2 = entryEffectLife( spep_2, 906, 250, 0x100,  -1, 0,  0,  0);   -- 集中線

setEffScaleKey(  spep_2,  shuchusen2,  1.16,  2.21);
setEffScaleKey(  spep_2+250,  shuchusen2,  1.16,  2.21);
setEffMoveKey(  spep_2,  shuchusen2,  0,  0);
setEffMoveKey(  spep_2+250,  shuchusen2,  0,  0);
setEffRotateKey(  spep_2,  shuchusen2,  0);
setEffRotateKey(  spep_2+250,  shuchusen2,  0);
setEffAlphaKey(  spep_2,  shuchusen2,  255);
setEffAlphaKey(  spep_2+250,  shuchusen2,  255);

--***流線***
ryusen = entryEffectLife( spep_2, 914, 250, 0x80,  -1, 0,  0,  0);   -- 流線

setEffScaleKey(  spep_2,  ryusen,  2.92,  1.22);
setEffScaleKey(  spep_2+250,  ryusen,  2.92,  1.22);
setEffMoveKey(  spep_2,  ryusen,  0,  0);
setEffMoveKey(  spep_2+250,  ryusen,  0,  0);
setEffRotateKey(  spep_2,  ryusen,  -15.7);
setEffRotateKey(  spep_2+208,  ryusen,  -15.7);
setEffRotateKey(  spep_2+209,  ryusen,  -15.7);
setEffRotateKey(  spep_2+210,  ryusen,  90);
setEffRotateKey(  spep_2+250,  ryusen,  90);
setEffAlphaKey(  spep_2,  ryusen,  255);
setEffAlphaKey(  spep_2+190,  ryusen,  255);
setEffAlphaKey(  spep_2+208,  ryusen,  0);
setEffAlphaKey(  spep_2+209,  ryusen,  0);
setEffAlphaKey(  spep_2+210,  ryusen,  255);
setEffAlphaKey(  spep_2+250,  ryusen,  255);


--***敵の動き***
changeAnime( spep_2+210, 1, 106 );  --仰け反り
setMoveKey( spep_2+210, 1, -42.4, -154.9 , 0 );
setMoveKey( spep_2+212, 1, -37.1, -153.1 , 0 );
setMoveKey( spep_2+214, 1, -39.9, -162.6 , 0 );
setMoveKey( spep_2+216, 1, -38.6, -159.3 , 0 );
setMoveKey( spep_2+218, 1, -43.4, -163.4 , 0 );
setMoveKey( spep_2+220, 1, -40.2, -162.6 , 0 );
setMoveKey( spep_2+222, 1, -41.7, -174.9 , 0 );
setMoveKey( spep_2+224, 1, -39.2, -179.1 , 0 );
setMoveKey( spep_2+226, 1, -44.7, -191.3 , 0 );
setMoveKey( spep_2+228, 1, -38.2, -195.4 , 0 );
setMoveKey( spep_2+230, 1, -39.7, -205.5 , 0 );
setMoveKey( spep_2+232, 1, -37.2, -211.5 , 0 );
setMoveKey( spep_2+234, 1, -29.9, -363.3 , 0 );
setMoveKey( spep_2+236, 1, -16.9, -626.6 , 0 );
setMoveKey( spep_2+238, 1, 1.5, -1000.1 , 0 );
setMoveKey( spep_2+240, 1, 25, -1482.4 , 0 );
setMoveKey( spep_2+242, 1, 53.9, -2072.8 , 0 );
setScaleKey( spep_2+210, 1, 2.33, 2.33 );
setScaleKey( spep_2+212, 1, 2.23, 2.23 );
setScaleKey( spep_2+214, 1, 2.13, 2.13 );
setScaleKey( spep_2+216, 1, 2.04, 2.04 );
setScaleKey( spep_2+218, 1, 1.94, 1.94 );
setScaleKey( spep_2+220, 1, 1.84, 1.84 );
setScaleKey( spep_2+222, 1, 1.83, 1.83 );
setScaleKey( spep_2+224, 1, 1.83, 1.83 );
setScaleKey( spep_2+226, 1, 1.82, 1.82 );
setScaleKey( spep_2+228, 1, 1.81, 1.81 );
setScaleKey( spep_2+230, 1, 1.81, 1.81 );
setScaleKey( spep_2+232, 1, 1.8, 1.8 );
setScaleKey( spep_2+234, 1, 1.8, 1.8 );
setScaleKey( spep_2+236, 1, 1.79, 1.79 );
setScaleKey( spep_2+238, 1, 1.78, 1.78 );
setScaleKey( spep_2+240, 1, 1.78, 1.78 );
setScaleKey( spep_2+242, 1, 1.77, 1.77 );
setRotateKey( spep_2+210, 1, -150.7 );
setRotateKey( spep_2+212, 1, -151 );
setRotateKey( spep_2+214, 1, -151.4 );
setRotateKey( spep_2+216, 1, -151.7 );
setRotateKey( spep_2+218, 1, -152 );
setRotateKey( spep_2+220, 1, -152.4 );
setRotateKey( spep_2+222, 1, -152.7 );
setRotateKey( spep_2+224, 1, -153.1 );
setRotateKey( spep_2+226, 1, -153.4 );
setRotateKey( spep_2+228, 1, -153.7 );
setRotateKey( spep_2+230, 1, -154.1 );
setRotateKey( spep_2+232, 1, -154.4 );
setRotateKey( spep_2+234, 1, -154.9 );
setRotateKey( spep_2+236, 1, -155.7 );
setRotateKey( spep_2+238, 1, -156.9 );
setRotateKey( spep_2+240, 1, -158.5 );
setRotateKey( spep_2+242, 1, -160.4 );

--***格闘***
rush_f = entryEffect(  spep_2,  SP_02a,  0x80,  -1,  0,  0,  0);  --ラッシュ

setEffScaleKey(  spep_2,  rush_f,  1.0,  1.0);
setEffScaleKey(  spep_2+250,  rush_f,  1.0,  1.0);
setEffMoveKey(  spep_2,  rush_f,  0,  0);
setEffMoveKey(  spep_2+250,  rush_f,  0,  0);
setEffRotateKey(  spep_2,  rush_f,  0);
setEffRotateKey(  spep_2+250,  rush_f,  0);
setEffAlphaKey(  spep_2,  rush_f,  255);
setEffAlphaKey(  spep_2+250,  rush_f,  255);
setEffAlphaKey(  spep_2+251,  rush_f,  0);
setEffAlphaKey(  spep_2+252,  rush_f,  0);
setEffAlphaKey(  spep_2+260,  rush_f,  0);


--***格闘***
rush = entryEffect(  spep_2,  SP_02,  0x100,  -1,  0,  0,  0);  --ラッシュ

setEffScaleKey(  spep_2,  rush,  1.0,  1.0);
setEffScaleKey(  spep_2+250,  rush,  1.0,  1.0);
setEffMoveKey(  spep_2,  rush,  0,  0);
setEffMoveKey(  spep_2+250,  rush,  0,  0);
setEffRotateKey(  spep_2,  rush,  0);
setEffRotateKey(  spep_2+250,  rush,  0);
setEffAlphaKey(  spep_2,  rush,  255);
setEffAlphaKey(  spep_2+250,  rush,  255);
setEffAlphaKey(  spep_2+251,  rush,  0);
setEffAlphaKey(  spep_2+252,  rush,  0);
setEffAlphaKey(  spep_2+260,  rush,  0);

--***敵の動き***
setDisp( spep_2, 1, 1 );
setDisp( spep_2+250, 1, 0 );  --消す
setShakeChara(  spep_2+20,  1,  230,  20);  --揺れ
changeAnime( spep_2+0, 1, 104 );
changeAnime( spep_2+20, 1, 108 );
changeAnime( spep_2+32, 1, 106 );
changeAnime( spep_2+42, 1, 108 );
changeAnime( spep_2+52, 1, 106 );
changeAnime( spep_2+86, 1, 108 );
changeAnime( spep_2+100, 1, 106 );
changeAnime( spep_2+130, 1, 108 );



setMoveKey( spep_2, 1, -849.5, -196 , 0 );
setMoveKey( spep_2+2, 1, -646.3, -144.8 , 0 );
setMoveKey( spep_2+4, 1, -479.7, -102.7 , 0 );
setMoveKey( spep_2+6, 1, -349.8, -69.8 , 0 );
setMoveKey( spep_2+8, 1, -256.8, -46.2 , 0 );
setMoveKey( spep_2+10, 1, -200.9, -31.9 , 0 );
setMoveKey( spep_2+12, 1, -182.3, -26.8 , 0 );
setMoveKey( spep_2+14, 1, -169.8, -22.7 , 0 );
setMoveKey( spep_2+16, 1, -157.4, -18.6 , 0 );
setMoveKey( spep_2+19, 1, -144.9, -14.5 , 0 );
setMoveKey( spep_2+20, 1, -107.6, -11.1 , 0 );
setMoveKey( spep_2+22, 1, -98.4, -0.5 , 0 );
setMoveKey( spep_2+24, 1, -97.2, 0.2 , 0 );
setMoveKey( spep_2+26, 1, -84, 4.8 , 0 );
setMoveKey( spep_2+28, 1, -78.8, 5.5 , 0 );
setMoveKey( spep_2+31, 1, -69.6, 10.2 , 0 );
setMoveKey( spep_2+32, 1, -110.6, 20 , 0 );
setMoveKey( spep_2+34, 1, -99.3, 28.3 , 0 );
setMoveKey( spep_2+36, 1, -93.9, 28.7 , 0 );
setMoveKey( spep_2+38, 1, -84.6, 37 , 0 );
setMoveKey( spep_2+41, 1, -81.2, 39.4 , 0 );
setMoveKey( spep_2+42, 1, -48.2, -20.4 , 0 );
setMoveKey( spep_2+44, 1, -42.2, -28.7 , 0 );
setMoveKey( spep_2+46, 1, -32.2, -25.1 , 0 );
setMoveKey( spep_2+48, 1, -30.1, -29.4 , 0 );
setMoveKey( spep_2+51, 1, -16, -29.8 , 0 );
setMoveKey( spep_2+52, 1, -24.2, -28.6 , 0 );
setMoveKey( spep_2+54, 1, -0.7, -15.5 , 0 );
setMoveKey( spep_2+56, 1, 16.8, -12.4 , 0 );
setMoveKey( spep_2+58, 1, 45.5, 2 , 0 );
setMoveKey( spep_2+60, 1, 68.2, 10.5 , 0 );
setMoveKey( spep_2+62, 1, 89.7, 19.4 , 0 );
setMoveKey( spep_2+64, 1, 109.1, 26.4 , 0 );
setMoveKey( spep_2+66, 1, 128.6, 33.3 , 0 );
setMoveKey( spep_2+68, 1, 148.1, 40.3 , 0 );
setMoveKey( spep_2+70, 1, 153, 42 , 0 );
setMoveKey( spep_2+72, 1, 158, 43.7 , 0 );
setMoveKey( spep_2+74, 1, 162.9, 45.4 , 0 );
setMoveKey( spep_2+76, 1, 165.4, 45.5 , 0 );
setMoveKey( spep_2+78, 1, 168, 45.6 , 0 );
setMoveKey( spep_2+80, 1, 170.5, 45.7 , 0 );
setMoveKey( spep_2+82, 1, 173, 45.8 , 0 );
setMoveKey( spep_2+85, 1, 175.5, 45.9 , 0 );
setMoveKey( spep_2+86, 1, 189.3, 18.9 , 0 );
setMoveKey( spep_2+88, 1, 200.1, 31.3 , 0 );
setMoveKey( spep_2+90, 1, 217.3, 38.1 , 0 );
setMoveKey( spep_2+92, 1, 250.1, 48.9 , 0 );
setMoveKey( spep_2+94, 1, 272.5, 51.4 , 0 );
setMoveKey( spep_2+96, 1, 245.5, 53.4 , 0 );
setMoveKey( spep_2+99, 1, 212, 47.1 , 0 );
setMoveKey( spep_2+100, 1, 138.1, 63.3 , 0 );
setMoveKey( spep_2+102, 1, 95.1, 55.5 , 0 );
setMoveKey( spep_2+104, 1, 98.3, 49.3 , 0 );
setMoveKey( spep_2+106, 1, 105.7, 63.1 , 0 );
setMoveKey( spep_2+108, 1, 103.2, 65 , 0 );
setMoveKey( spep_2+110, 1, 116.8, 70.9 , 0 );
setMoveKey( spep_2+112, 1, 118.6, 71 , 0 );
setMoveKey( spep_2+114, 1, 116.7, 74.1 , 0 );
setMoveKey( spep_2+116, 1, 108.9, 69.2 , 0 );
setMoveKey( spep_2+118, 1, 105, 72.2 , 0 );
setMoveKey( spep_2+120, 1, 95.1, 69.3 , 0 );
setMoveKey( spep_2+122, 1, 93.2, 70.4 , 0 );
setMoveKey( spep_2+124, 1, 83.3, 65.5 , 0 );
setMoveKey( spep_2+126, 1, 81.4, 68.6 , 0 );
setMoveKey( spep_2+129, 1, 73.5, 65.7 , 0 );
setMoveKey( spep_2+130, 1, 213.5, 99.6 , 0 );
setMoveKey( spep_2+132, 1, 216.7, 101.3 , 0 );
setMoveKey( spep_2+134, 1, 231.7, 107 , 0 );
setMoveKey( spep_2+136, 1, 238.7, 104.6 , 0 );
setMoveKey( spep_2+138, 1, 249.6, 114.1 , 0 );
setMoveKey( spep_2+140, 1, 252.3, 115.6 , 0 );
setMoveKey( spep_2+142, 1, 267, 121.1 , 0 );
setMoveKey( spep_2+144, 1, 273.6, 118.5 , 0 );
setMoveKey( spep_2+146, 1, 284, 127.8 , 0 );
setMoveKey( spep_2+148, 1, 301.2, 133.5 , 0 );
setMoveKey( spep_2+150, 1, 330.2, 151 , 0 );
setMoveKey( spep_2+152, 1, 269.4, 122.9 , 0 );
setMoveKey( spep_2+154, 1, 208.5, 94.8 , 0 );
setMoveKey( spep_2+156, 1, 147.7, 66.7 , 0 );
setMoveKey( spep_2+158, 1, 61.6, 24.7 , 0 );
setMoveKey( spep_2+160, 1, -24.5, -17.4 , 0 );
setMoveKey( spep_2+162, 1, -110.7, -59.4 , 0 );
setMoveKey( spep_2+164, 1, -100.8, -55.4 , 0 );
setMoveKey( spep_2+166, 1, -90.9, -51.4 , 0 );
setMoveKey( spep_2+168, 1, -81, -47.4 , 0 );
setMoveKey( spep_2+170, 1, -71.1, -43.4 , 0 );
setMoveKey( spep_2+172, 1, -61.2, -39.4 , 0 );
setMoveKey( spep_2+174, 1, -51.3, -35.4 , 0 );
setMoveKey( spep_2+176, 1, -41.4, -31.4 , 0 );
setMoveKey( spep_2+178, 1, -31.5, -27.4 , 0 );
setMoveKey( spep_2+180, 1, -21.6, -23.4 , 0 );
setMoveKey( spep_2+182, 1, -11.7, -19.4 , 0 );
setMoveKey( spep_2+184, 1, -1.8, -15.4 , 0 );
setMoveKey( spep_2+186, 1, 8.1, -11.3 , 0 );
setMoveKey( spep_2+188, 1, 18, -7.3 , 0 );
setMoveKey( spep_2+190, 1, 18.8, -6.5 , 0 );
setMoveKey( spep_2+192, 1, 19.6, -5.7 , 0 );
setMoveKey( spep_2+194, 1, 20.4, -4.9 , 0 );
setMoveKey( spep_2+196, 1, 21.2, -4.1 , 0 );
setMoveKey( spep_2+198, 1, 22, -3.3 , 0 );
setMoveKey( spep_2+200, 1, 22.8, -2.5 , 0 );
setMoveKey( spep_2+202, 1, 23.6, -1.7 , 0 );
setMoveKey( spep_2+204, 1, 24.4, -0.9 , 0 );
setMoveKey( spep_2+206, 1, 25.2, -0.1 , 0 );
setMoveKey( spep_2+209, 1, 26, 0.7 , 0 );



setScaleKey( spep_2, 1, 1.34, 1.34 );
setScaleKey( spep_2+10, 1, 1.34, 1.34 );
setScaleKey( spep_2+12, 1, 1.35, 1.35 );
setScaleKey( spep_2+19, 1, 1.35, 1.35 );
setScaleKey( spep_2+20, 1, 1.42, 1.42 );
setScaleKey( spep_2+22, 1, 1.42, 1.42 );
setScaleKey( spep_2+24, 1, 1.43, 1.43 );
setScaleKey( spep_2+31, 1, 1.43, 1.43 );
setScaleKey( spep_2+32, 1, 1.35, 1.35 );
setScaleKey( spep_2+34, 1, 1.36, 1.36 );
setScaleKey( spep_2+41, 1, 1.36, 1.36 );
setScaleKey( spep_2+42, 1, 1.43, 1.43 );
setScaleKey( spep_2+44, 1, 1.43, 1.43 );
setScaleKey( spep_2+46, 1, 1.42, 1.42 );
setScaleKey( spep_2+48, 1, 1.41, 1.41 );
setScaleKey( spep_2+51, 1, 1.41, 1.41 );
setScaleKey( spep_2+52, 1, 1.37, 1.37 );
setScaleKey( spep_2+85, 1, 1.37, 1.37 );
setScaleKey( spep_2+86, 1, 1.44, 1.44 );
setScaleKey( spep_2+88, 1, 1.44, 1.44 );
setScaleKey( spep_2+90, 1, 1.43, 1.43 );
setScaleKey( spep_2+92, 1, 1.42, 1.42 );
setScaleKey( spep_2+94, 1, 1.41, 1.41 );
setScaleKey( spep_2+96, 1, 1.39, 1.39 );
setScaleKey( spep_2+99, 1, 1.37, 1.37 );
setScaleKey( spep_2+100, 1, 1.29, 1.29 );
setScaleKey( spep_2+102, 1, 1.28, 1.28 );
setScaleKey( spep_2+104, 1, 1.29, 1.29 );
setScaleKey( spep_2+106, 1, 1.3, 1.3 );
setScaleKey( spep_2+108, 1, 1.31, 1.31 );
setScaleKey( spep_2+110, 1, 1.33, 1.33 );
setScaleKey( spep_2+112, 1, 1.34, 1.34 );
setScaleKey( spep_2+129, 1, 1.34, 1.34 );
setScaleKey( spep_2+130, 1, 1.32, 1.32 );
setScaleKey( spep_2+132, 1, 1.31, 1.31 );
setScaleKey( spep_2+134, 1, 1.31, 1.31 );
setScaleKey( spep_2+136, 1, 1.3, 1.3 );
setScaleKey( spep_2+138, 1, 1.29, 1.29 );
setScaleKey( spep_2+140, 1, 1.29, 1.29 );
setScaleKey( spep_2+142, 1, 1.28, 1.28 );
setScaleKey( spep_2+144, 1, 1.27, 1.27 );
setScaleKey( spep_2+146, 1, 1.27, 1.27 );
setScaleKey( spep_2+148, 1, 1.26, 1.26 );
setScaleKey( spep_2+156, 1, 1.26, 1.26 );
setScaleKey( spep_2+158, 1, 1.25, 1.25 );
setScaleKey( spep_2+209, 1, 1.25, 1.25 );


setRotateKey( spep_2, 1, 0 );
setRotateKey( spep_2+19, 1, 0 );
setRotateKey( spep_2+20, 1, -16.3 );
setRotateKey( spep_2+31, 1, -16.3 );
setRotateKey( spep_2+32, 1, -37.4 );
setRotateKey( spep_2+34, 1, -37 );
setRotateKey( spep_2+36, 1, -36.5 );
setRotateKey( spep_2+38, 1, -36.1 );
setRotateKey( spep_2+41, 1, -35.7 );
setRotateKey( spep_2+42, 1, 10.4 );
setRotateKey( spep_2+51, 1, 10.4 );
setRotateKey( spep_2+52, 1, -27.2 );
setRotateKey( spep_2+54, 1, -25.6 );
setRotateKey( spep_2+56, 1, -24 );
setRotateKey( spep_2+58, 1, -22.4 );
setRotateKey( spep_2+60, 1, -20.8 );
setRotateKey( spep_2+62, 1, -20.2 );
setRotateKey( spep_2+64, 1, -19.6 );
setRotateKey( spep_2+66, 1, -19 );
setRotateKey( spep_2+68, 1, -18.4 );
setRotateKey( spep_2+70, 1, -17.8 );
setRotateKey( spep_2+72, 1, -17.2 );
setRotateKey( spep_2+74, 1, -16.6 );
setRotateKey( spep_2+76, 1, -16 );
setRotateKey( spep_2+78, 1, -15.4 );
setRotateKey( spep_2+80, 1, -14.8 );
setRotateKey( spep_2+82, 1, -14.2 );
setRotateKey( spep_2+85, 1, -13.6 );
setRotateKey( spep_2+86, 1, -24.6 );
setRotateKey( spep_2+99, 1, -24.6 );
setRotateKey( spep_2+100, 1, -37.9 );
setRotateKey( spep_2+129, 1, -37.9 );
setRotateKey( spep_2+130, 1, -24.5 );
setRotateKey( spep_2+209, 1, -24.5 );


--***フェードと背景***
entryFadeBg(spep_2, 0, 250, 0, 0, 0, 0, 220);  -- 黒背景
entryFade(spep_2+244, 4, 4, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--***SE***
playSe(  spep_2+20,  1000);  --パンチ
playSe(  spep_2+32,  1006);  --パンチ
playSe(  spep_2+42,  1001);  --パンチ
playSe(  spep_2+52,  1002);  --蹴り
playSe(  spep_2+86,  1001);  --蹴り
playSe(  spep_2+100,  1000);
playSe(  spep_2+108,  1001);
playSe(  spep_2+118,  1000);
playSe(  spep_2+130,  1008);
playSe(  spep_2+148,  43);  --瞬間移動
playSe(  spep_2+190,  43);  --瞬間移動
playSe(  spep_2+210,  1011);

------------------------------------------------------
-- 溜め(100F)
------------------------------------------------------
spep_3 = spep_2+250;

--***溜め***
tame = entryEffect(  spep_3,  SP_03,  0x100,  -1,  0,  0,  0);  --溜め

setEffScaleKey(  spep_3,  tame,  1.0,  1.0);
setEffScaleKey(  spep_3+100,  tame,  1.0,  1.0);
setEffMoveKey(  spep_3,  tame,  0,  0);
setEffMoveKey(  spep_3+100,  tame,  0,  0);
setEffRotateKey(  spep_3,  tame,  0);
setEffRotateKey(  spep_3+100,  tame,  0);
setEffAlphaKey(  spep_3,  tame,  255);
setEffAlphaKey(  spep_3+100,  tame,  255);

--***カットイン***
speff = entryEffect(  spep_3+14,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_3+14,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

--***集中線***
shuchusen3 = entryEffectLife( spep_3, 906, 100, 0x100,  -1, 0,  0,  0);   -- 集中線

setEffScaleKey(  spep_3,  shuchusen3,  1.32,  1.92);
setEffScaleKey(  spep_3+100,  shuchusen3,  1.32,  1.92);
setEffMoveKey(  spep_3,  shuchusen3,  0,  0);
setEffMoveKey(  spep_3+100,  shuchusen3,  0,  0);
setEffRotateKey(  spep_3,  shuchusen3,  0);
setEffRotateKey(  spep_3+100,  shuchusen3,  0);
setEffAlphaKey(  spep_3,  shuchusen3,  255);
setEffAlphaKey(  spep_3+100,  shuchusen3,  255);

-- 書き文字エントリー --
ctgogo = entryEffectLife( spep_3+32, 190006, 67, 0x100, -1, 0, 0, 510);    -- ゴゴゴゴ

setEffAlphaKey( spep_3+32, ctgogo, 255 );
setEffAlphaKey( spep_3+90, ctgogo, 255 );
setEffAlphaKey( spep_3+91, ctgogo, 255 );
setEffAlphaKey( spep_3+92, ctgogo, 191 );
setEffAlphaKey( spep_3+94, ctgogo, 128 );
setEffAlphaKey( spep_3+96, ctgogo, 64 );
setEffAlphaKey( spep_3+99, ctgogo, 0 );
setEffRotateKey(  spep_3+32,  ctgogo,  0);
setEffRotateKey(  spep_3+99,  ctgogo,  0);
setEffScaleKey(  spep_3+32,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_3+90,  ctgogo,  0.7,  0.7);


setEffScaleKey( spep_3+99, ctgogo, 1.07, 1.07 );
setEffMoveKey(  spep_3+32,  ctgogo,  0,  530);
setEffMoveKey(  spep_3+99,  ctgogo,  0,  530);

--***流線***
ryusen2 = entryEffectLife( spep_3, 914, 100, 0x80,  -1, 0,  0,  0);   -- 流線

setEffScaleKey(  spep_3,  ryusen2,  2.88,  1.27);
setEffScaleKey(  spep_3+100,  ryusen2,  2.88,  1.27);
setEffMoveKey(  spep_3,  ryusen2,  0,  0);
setEffMoveKey(  spep_3+100,  ryusen2,  0,  0);
setEffRotateKey(  spep_3,  ryusen2,  63);
setEffRotateKey(  spep_3+100,  ryusen2,  63);
setEffAlphaKey(  spep_3,  ryusen2,  255);
setEffAlphaKey(  spep_3+100,  ryusen2,  255);

--***フェードと背景***
entryFadeBg(spep_3, 0, 100, 0, 0, 0, 0, 220);  -- 黒背景

--***SE***
playSe(  spep_3,  1036);
playSe(  spep_3+20,  1036);
playSe(  spep_3+32,  SE_04);  --カットイン

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
spep_4 = spep_3+100;

--***フェードと背景***
entryFade( spep_4-6, 3, 5, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

playSe( spep_4, SE_05);
speff = entryEffect(  spep_4,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

shuchusen4 = entryEffectLife( spep_4, 906, 90, 0x100,  -1, 0,  0,  0);

setEffMoveKey(  spep_4,  shuchusen4,  0,  0);
setEffMoveKey(  spep_4+90,  shuchusen4,  0,  0);
setEffScaleKey(  spep_4,  shuchusen4,  1.6,  1.6);
setEffScaleKey(  spep_4+90,  shuchusen4,  1.6,  1.6);
setEffRotateKey(  spep_4,  shuchusen4,  0);
setEffRotateKey(  spep_4+90,  shuchusen4,  0);
setEffAlphaKey(  spep_4,  shuchusen4,  255);
setEffAlphaKey(  spep_4+90,  shuchusen4,  255);

--***フェードと背景***
entryFade( spep_4+80, 6, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 放つ(160F)
------------------------------------------------------
spep_5 = spep_4+90;

--***集中線***
shuchusen5 = entryEffectLife( spep_5, 906, 180, 0x100,  -1, 0,  0,  0);   -- 集中線

setEffScaleKey(  spep_5,  shuchusen5,  1.41,  1.37);
setEffScaleKey(  spep_5+180,  shuchusen5,  1.41,  1.37);
setEffMoveKey(  spep_5,  shuchusen5,  0,  0);
setEffMoveKey(  spep_5+180,  shuchusen5,  0,  0);
setEffRotateKey(  spep_5,  shuchusen5,  0);
setEffRotateKey(  spep_5+180,  shuchusen5,  0);
setEffAlphaKey(  spep_5,  shuchusen5,  255);
setEffAlphaKey(  spep_5+180,  shuchusen5,  255);

--***書き文字***
ct_zuo2 = entryEffectLife( spep_5+16,  10012, 62, 0x100, -1, 0, 78.7, 260.5 );  --ズオ

setEffShake(  spep_5+16,  ct_zuo2,  62,  20);  --揺れ
setEffMoveKey( spep_5+16, ct_zuo2, 78.7, 260.5 , 0 );
setEffMoveKey( spep_5+18, ct_zuo2, 105, 288.6 , 0 );
setEffMoveKey( spep_5+20, ct_zuo2, 117.9, 330.1 , 0 );
setEffMoveKey( spep_5+22, ct_zuo2, 153.7, 348.8 , 0 );
setEffMoveKey( spep_5+24, ct_zuo2, 137.7, 364.8 , 0 );
setEffMoveKey( spep_5+68, ct_zuo2, 137.7, 364.8 , 0 );
setEffMoveKey( spep_5+70, ct_zuo2, 173.1, 345.5 , 0 );
setEffMoveKey( spep_5+72, ct_zuo2, 166.7, 367.9 , 0 );
setEffMoveKey( spep_5+74, ct_zuo2, 211.6, 339 , 0 );
setEffMoveKey( spep_5+76, ct_zuo2, 195.7, 370.9 , 0 );
setEffMoveKey( spep_5+78, ct_zuo2, 210.3, 372.4 , 0 );
setEffScaleKey( spep_5+16, ct_zuo2, 0.34, 0.34 );
setEffScaleKey( spep_5+18, ct_zuo2, 1.13, 1.13 );
setEffScaleKey( spep_5+20, ct_zuo2, 1.94, 1.94 );
setEffScaleKey( spep_5+22, ct_zuo2, 2.73, 2.73 );
setEffScaleKey( spep_5+68, ct_zuo2, 2.73, 2.73 );
setEffScaleKey( spep_5+70, ct_zuo2, 3.55, 3.55 );
setEffScaleKey( spep_5+72, ct_zuo2, 4.37, 4.37 );
setEffScaleKey( spep_5+74, ct_zuo2, 5.19, 5.19 );
setEffScaleKey( spep_5+76, ct_zuo2, 6.01, 6.01 );
setEffScaleKey( spep_5+78, ct_zuo2, 6.82, 6.82 );
setEffRotateKey( spep_5+16, ct_zuo2, 27.2 );
setEffAlphaKey( spep_5+16, ct_zuo2, 255 );
setEffAlphaKey( spep_5+68, ct_zuo2, 255 );
setEffAlphaKey( spep_5+70, ct_zuo2, 204 );
setEffAlphaKey( spep_5+72, ct_zuo2, 153 );
setEffAlphaKey( spep_5+74, ct_zuo2, 102 );
setEffAlphaKey( spep_5+76, ct_zuo2, 51 );
setEffAlphaKey( spep_5+78, ct_zuo2, 0 );


ct_zdodo= entryEffectLife( spep_5+90,  10014, 88, 0x100, -1, 0, 127, 333.2 );

setEffShake(  spep_5+90,  ct_zdodo,  88,  20);  --揺れ
setEffMoveKey( spep_5+90, ct_zdodo, 127, 333.2 , 0 );
setEffMoveKey( spep_5+178, ct_zdodo, 127, 333.2 , 0 );
setEffScaleKey( spep_5+90, ct_zdodo, 2.73, 2.73 );
setEffScaleKey( spep_5+178, ct_zdodo, 2.73, 2.73 );
setEffRotateKey( spep_5+90, ct_zdodo, 60.5 );
setEffRotateKey( spep_5+178, ct_zdodo, 60.5 );
setEffAlphaKey( spep_5+90,ct_zdodo, 255 );
setEffAlphaKey( spep_5+178,ct_zdodo, 255 );


semaru_f = entryEffect(  spep_5+90,  SP_05,  0x100,  -1,  0,  0,  0);  --溜め

setEffScaleKey(  spep_5+90,  semaru_f,  1.0,  1.0);
setEffScaleKey(  spep_5+180,  semaru_f,  1.0,  1.0);
setEffMoveKey(  spep_5+90,  semaru_f,  0,  0);
setEffMoveKey(  spep_5+180,  semaru_f,  0,  0);
setEffRotateKey(  spep_5+90,  semaru_f,  0);
setEffRotateKey(  spep_5+180,  semaru_f,  0);
setEffAlphaKey(  spep_5+90,  semaru_f,  255);
setEffAlphaKey(  spep_5+180,  semaru_f,  255);

--***敵の動き***
setDisp(  spep_5+90,  1,  1);
setDisp(  spep_5+178,  1,  0);  --敵消す
changeAnime(  spep_5+90,  1,  106);  --仰け反り

setShakeChara(  spep_5+90,  1,  88,  20);
setMoveKey( spep_5+90, 1, -261.3, 356 , 0 );
setMoveKey( spep_5+92, 1, -241.3, 302.1 , 0 );
setMoveKey( spep_5+94, 1, -213.4, 304.1 , 0 );
setMoveKey( spep_5+96, 1, -193.5, 262.2 , 0 );
setMoveKey( spep_5+98, 1, -165.5, 252.2 , 0 );
setMoveKey( spep_5+100, 1, -145.6, 210.3 , 0 );
setMoveKey( spep_5+102, 1, -117.7, 200.4 , 0 );
setMoveKey( spep_5+104, 1, -111.8, 165.2 , 0 );
setMoveKey( spep_5+106, 1, -98, 154.1 , 0 );
setMoveKey( spep_5+108, 1, -92.1, 119 , 0 );
setMoveKey( spep_5+110, 1, -78.2, 107.9 , 0 );
setMoveKey( spep_5+112, 1, -72.3, 72.8 , 0 );
setMoveKey( spep_5+114, 1, -58.5, 61.7 , 0 );
setMoveKey( spep_5+116, 1, -52.6, 26.5 , 0 );
setMoveKey( spep_5+118, 1, -38.7, 15.4 , 0 );
setMoveKey( spep_5+120, 1, -32.8, -19.7 , 0 );
setMoveKey( spep_5+122, 1, -19, -30.8 , 0 );
setMoveKey( spep_5+124, 1, -13.1, -65.9 , 0 );
setMoveKey( spep_5+126, 1, 0.8, -77 , 0 );
setMoveKey( spep_5+128, 1, 6.7, -108.2 , 0 );
setMoveKey( spep_5+130, 1, 20.6, -123.3 , 0 );
setMoveKey( spep_5+132, 1, 26.5, -154.4 , 0 );
setMoveKey( spep_5+134, 1, 40.3, -169.5 , 0 );
setMoveKey( spep_5+136, 1, 46.2, -200.6 , 0 );
setMoveKey( spep_5+138, 1, 60.1, -215.8 , 0 );
setMoveKey( spep_5+140, 1, 66, -242.9 , 0 );
setMoveKey( spep_5+142, 1, 79.9, -262 , 0 );
setMoveKey( spep_5+144, 1, 81.8, -293.1 , 0 );
setMoveKey( spep_5+146, 1, 99.6, -308.2 , 0 );
setMoveKey( spep_5+148, 1, 105.5, -335.4 , 0 );
setMoveKey( spep_5+150, 1, 153.7, -416.9 , 0 );
setMoveKey( spep_5+152, 1, 204.7, -538.8 , 0 );
setMoveKey( spep_5+154, 1, 286.4, -673.3 , 0 );
setMoveKey( spep_5+156, 1, 366.8, -852.2 , 0 );
setMoveKey( spep_5+158, 1, 477.9, -1043.7 , 0 );
setMoveKey( spep_5+160, 1, 583.8, -1275.6 , 0 );
setMoveKey( spep_5+162, 1, 728.4, -1528 , 0 );
setMoveKey( spep_5+164, 1, 863.7, -1816.8 , 0 );
setMoveKey( spep_5+166, 1, 1037.7, -2126.2 , 0 );
setMoveKey( spep_5+168, 1, 1202.5, -2471.9 , 0 );
setMoveKey( spep_5+170, 1, 1406, -2838.2 , 0 );
setMoveKey( spep_5+172, 1, 1600.1, -3240.8 , 0 );
setMoveKey( spep_5+174, 1, 1833, -3664 , 0 );
setMoveKey( spep_5+176, 1, 2056.6, -4123.5 , 0 );
setMoveKey( spep_5+178, 1, 2318.9, -4603.5 , 0 );
setScaleKey( spep_5+90, 1, 0.83, 0.83 );
setScaleKey( spep_5+92, 1, 0.93, 0.93 );
setScaleKey( spep_5+94, 1, 1.03, 1.03 );
setScaleKey( spep_5+96, 1, 1.14, 1.14 );
setScaleKey( spep_5+98, 1, 1.24, 1.24 );
setScaleKey( spep_5+100, 1, 1.35, 1.35 );
setScaleKey( spep_5+102, 1, 1.45, 1.45 );
setScaleKey( spep_5+104, 1, 1.51, 1.51 );
setScaleKey( spep_5+106, 1, 1.57, 1.57 );
setScaleKey( spep_5+108, 1, 1.64, 1.64 );
setScaleKey( spep_5+110, 1, 1.7, 1.7 );
setScaleKey( spep_5+112, 1, 1.76, 1.76 );
setScaleKey( spep_5+114, 1, 1.82, 1.82 );
setScaleKey( spep_5+116, 1, 1.89, 1.89 );
setScaleKey( spep_5+118, 1, 1.95, 1.95 );
setScaleKey( spep_5+120, 1, 2.01, 2.01 );
setScaleKey( spep_5+122, 1, 2.07, 2.07 );
setScaleKey( spep_5+124, 1, 2.13, 2.13 );
setScaleKey( spep_5+126, 1, 2.2, 2.2 );
setScaleKey( spep_5+128, 1, 2.26, 2.26 );
setScaleKey( spep_5+130, 1, 2.32, 2.32 );
setScaleKey( spep_5+132, 1, 2.38, 2.38 );
setScaleKey( spep_5+134, 1, 2.44, 2.44 );
setScaleKey( spep_5+136, 1, 2.51, 2.51 );
setScaleKey( spep_5+138, 1, 2.57, 2.57 );
setScaleKey( spep_5+140, 1, 2.63, 2.63 );
setScaleKey( spep_5+142, 1, 2.69, 2.69 );
setScaleKey( spep_5+144, 1, 2.76, 2.76 );
setScaleKey( spep_5+146, 1, 2.82, 2.82 );
setScaleKey( spep_5+148, 1, 2.88, 2.88 );
setScaleKey( spep_5+150, 1, 3.23, 3.23 );
setScaleKey( spep_5+152, 1, 3.71, 3.71 );
setScaleKey( spep_5+154, 1, 4.3, 4.3 );
setScaleKey( spep_5+156, 1, 5.01, 5.01 );
setScaleKey( spep_5+158, 1, 5.83, 5.83 );
setScaleKey( spep_5+160, 1, 6.78, 6.78 );
setScaleKey( spep_5+162, 1, 7.84, 7.84 );
setScaleKey( spep_5+164, 1, 9.02, 9.02 );
setScaleKey( spep_5+166, 1, 10.32, 10.32 );
setScaleKey( spep_5+168, 1, 11.74, 11.74 );
setScaleKey( spep_5+170, 1, 13.28, 13.28 );
setScaleKey( spep_5+172, 1, 14.93, 14.93 );
setScaleKey( spep_5+174, 1, 16.7, 16.7 );
setScaleKey( spep_5+176, 1, 18.59, 18.59 );
setScaleKey( spep_5+178, 1, 20.6, 20.6 );
setRotateKey( spep_5+90, 1, -159.5 );
setRotateKey( spep_5+92, 1, -159.5 );
setRotateKey( spep_5+94, 1, -159.6 );
setRotateKey( spep_5+98, 1, -159.6 );
setRotateKey( spep_5+100, 1, -159.7 );
setRotateKey( spep_5+112, 1, -159.7 );
setRotateKey( spep_5+114, 1, -159.6 );
setRotateKey( spep_5+136, 1, -159.6 );
setRotateKey( spep_5+138, 1, -159.5 );
setRotateKey( spep_5+148, 1, -159.5 );
setRotateKey( spep_5+150, 1, -159.6 );
setRotateKey( spep_5+152, 1, -159.6 );
setRotateKey( spep_5+154, 1, -159.8 );
setRotateKey( spep_5+156, 1, -159.9 );
setRotateKey( spep_5+158, 1, -160 );
setRotateKey( spep_5+160, 1, -160.2 );
setRotateKey( spep_5+162, 1, -160.4 );
setRotateKey( spep_5+164, 1, -160.6 );
setRotateKey( spep_5+166, 1, -160.8 );
setRotateKey( spep_5+168, 1, -161.1 );
setRotateKey( spep_5+170, 1, -161.4 );
setRotateKey( spep_5+172, 1, -161.7 );
setRotateKey( spep_5+174, 1, -162 );
setRotateKey( spep_5+176, 1, -162.3 );
setRotateKey( spep_5+178, 1, -162.7 );


--***放つ***
hanatsu = entryEffect(  spep_5,  SP_04,  0x100,  -1,  0,  0,  0);  --溜め

setEffScaleKey(  spep_5,  hanatsu,  1.0,  1.0);
setEffScaleKey(  spep_5+90,  hanatsu,  1.0,  1.0);
setEffMoveKey(  spep_5,  hanatsu,  0,  0);
setEffMoveKey(  spep_5+90,  hanatsu,  0,  0);
setEffRotateKey(  spep_5,  hanatsu,  0);
setEffRotateKey(  spep_5+90,  hanatsu,  0);
setEffAlphaKey(  spep_5,  hanatsu,  255);
setEffAlphaKey(  spep_5+90,  hanatsu,  255);


--***迫る***
semaru_b = entryEffect(  spep_5+90,  SP_05a,  0x80,  -1,  0,  0,  0);  --

setEffScaleKey(  spep_5+90,  semaru_b,  1.0,  1.0);
setEffScaleKey(  spep_5+180,  semaru_b,  1.0,  1.0);
setEffMoveKey(  spep_5+90,  semaru_b,  0,  0);
setEffMoveKey(  spep_5+180,  semaru_b,  0,  0);
setEffRotateKey(  spep_5+90,  semaru_b,  0);
setEffRotateKey(  spep_5+180,  semaru_b,  0);
setEffAlphaKey(  spep_5+90,  semaru_b,  255);
setEffAlphaKey(  spep_5+180,  semaru_b,  255);

--***流線***
ryusen3 = entryEffectLife( spep_5, 914, 90, 0x80,  -1, 0,  0,  0);   -- 流線

setEffScaleKey(  spep_5,  ryusen3,  2.88,  1.27);
setEffScaleKey(  spep_5+90,  ryusen3,  2.88,  1.27);
setEffMoveKey(  spep_5,  ryusen3,  0,  0);
setEffMoveKey(  spep_5+90,  ryusen3,  0,  0);
setEffRotateKey(  spep_5,  ryusen3,  63);
setEffRotateKey(  spep_5+90,  ryusen3,  63);
setEffAlphaKey(  spep_5,  ryusen3,  255);
setEffAlphaKey(  spep_5+90,  ryusen3,  255);

ryusen4 = entryEffectLife( spep_5, 921, 180, 0x80,  -1, 0,  0,  0);   -- 流線広がり

setEffScaleKey(  spep_5,  ryusen4,  1.88,  1.38);
setEffScaleKey(  spep_5+180,  ryusen4,  1.88,  1.38);
setEffMoveKey(  spep_5,  ryusen4,  0,  0);
setEffMoveKey(  spep_5+180,  ryusen4,  0,  0);
setEffRotateKey(  spep_5,  ryusen4,  -122.7);
setEffRotateKey(  spep_5+180,  ryusen4,  -122.7);
setEffAlphaKey(  spep_5,  ryusen4,  0);
setEffAlphaKey(  spep_5+90,  ryusen4,  0);
setEffAlphaKey(  spep_5+91,  ryusen4,  255);
setEffAlphaKey(  spep_5+92,  ryusen4,  255);
setEffAlphaKey(  spep_5+180,  ryusen4,  255);

--***SE***
playSe(  spep_5,  1036);
playSe(  spep_5+18,  SE_06);
playSe(  spep_5+90,  SE_07);

--***フェードと背景***
entryFadeBg(spep_5, 0, 180, 0, 0, 0, 0, 220);  -- 黒背景
entryFade( spep_5+14, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_5+78, 10, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_5+160, 18, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- ギャン黄(60F)
------------------------------------------------------
spep_6 = spep_5+180;

--***書き文字***
ct_gyan = entryEffectLife( spep_6,  10006, 58, 0x100, -1, 0, 8.8, 313 );  --書き文字

setEffMoveKey( spep_6, ct_gyan, 8.8, 313 , 0 );
setEffMoveKey( spep_6+58, ct_gyan, 10.6, 319.2 , 0 );
setEffScaleKey( spep_6, ct_gyan, 2.11, 2.11 );
setEffScaleKey( spep_6+58, ct_gyan, 4.23, 4.23 );
setEffRotateKey( spep_6, ct_gyan, -5.2 );
setEffRotateKey( spep_6+58, ct_gyan, -5.2 );
setEffAlphaKey( spep_6, ct_gyan, 255 );
setEffAlphaKey( spep_6+58, ct_gyan, 255 );

--***ギャン黄色***
gyan = entryEffectLife( spep_6, 190003, 60, 0x80 , -1, 0, 0, 0);  --ギャン

setEffScaleKey( spep_6,  gyan,  1.0, 1.0);
setEffMoveKey( spep_6,  gyan,  0,  0);
setEffRotateKey( spep_6,  gyan,  0);
setEffAlphaKey( spep_6,  gyan,  255);
setEffScaleKey( spep_6+60,  gyan,  1.0, 1.0);
setEffMoveKey( spep_6+60,  gyan,  0,  0);
setEffRotateKey( spep_6+60,  gyan,  0);
setEffAlphaKey( spep_6+60,  gyan,  255);

entryFade( spep_6+26, 30, 4, 18, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--***SE***
playSe(  spep_6,  1023);  --ギャン

------------------------------------------------------
-- 爆発(180F)
------------------------------------------------------
spep_7 = spep_6+60;

--***集中線***
shuchusen7 = entryEffectLife( spep_7, 906, 180, 0x100,  -1, 0,  0,  0);   -- 集中線

setEffScaleKey(  spep_7,  shuchusen7,  1.11,  1.07);
setEffScaleKey(  spep_7+180,  shuchusen7,  1.11,  1.07);
setEffMoveKey(  spep_7,  shuchusen7,  0,  0);
setEffMoveKey(  spep_7+180,  shuchusen7,  0,  0);
setEffRotateKey(  spep_7,  shuchusen7,  0);
setEffRotateKey(  spep_7+180,  shuchusen7,  0);
setEffAlphaKey(  spep_7,  shuchusen7,  255);
setEffAlphaKey(  spep_7+180,  shuchusen7,  255);

bakuhatsu = entryEffect(  spep_7,  1563,  0X80,  -1,  0,  0,  0);  --爆発

setEffScaleKey(  spep_7,  bakuhatsu,  1.0,  1.0);
setEffScaleKey(  spep_7+180,  bakuhatsu,  1.0,   1.0);
setEffMoveKey(  spep_7,  bakuhatsu,  0,  0);
setEffMoveKey(  spep_7+180,  bakuhatsu,  0,  0);
setEffRotateKey(  spep_7, bakuhatsu,  0);
setEffRotateKey(  spep_7+180,  bakuhatsu,  0);
setEffAlphaKey(  spep_7,  bakuhatsu,  255);
setEffAlphaKey(  spep_7+180,  bakuhatsu,  255);

--***SE***
playSe(  spep_7,  SE_10);  --爆発

-- ダメージ表示
dealDamage(spep_7+50);
endPhase(spep_7+150);

else

-----------------------------------------
--敵側の攻撃
-----------------------------------------
------------------------------------------------------
-- 突進(70F)
------------------------------------------------------
spep_1 = 0;

--***集中線***
shuchusen1 = entryEffectLife( spep_1, 906, 70, 0x100,  -1, 0,  0,  0);   -- 集中線

setEffScaleKey(  spep_1,  shuchusen1,  1.16,  2.21);
setEffScaleKey(  spep_1+70,  shuchusen1,  1.16,  2.21);
setEffMoveKey(  spep_1,  shuchusen1,  0,  0);
setEffMoveKey(  spep_1+70,  shuchusen1,  0,  0);
setEffRotateKey(  spep_1,  shuchusen1,  0);
setEffRotateKey(  spep_1+70,  shuchusen1,  0);
setEffAlphaKey(  spep_1,  shuchusen1,  255);
setEffAlphaKey(  spep_1+70,  shuchusen1,  255);

--***書き文字***
ct_zuo = entryEffectLife( spep_1,  10012, 60, 0x100, -1, 0, 78.7, 260.5 );  --ズオン

setEffShake(  spep_1,  ct_zuo,  60,  20);  --揺れ
setEffMoveKey( spep_1, ct_zuo, 78.7, 260.5 , 0 );
setEffMoveKey( spep_1+2, ct_zuo, 105, 288.6 , 0 );
setEffMoveKey( spep_1+4, ct_zuo, 117.9, 330.1 , 0 );
setEffMoveKey( spep_1+6, ct_zuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_1+52, ct_zuo, 152.3, 366.3 , 0 );
setEffMoveKey( spep_1+54, ct_zuo, 192.3, 342.3 , 0 );
setEffMoveKey( spep_1+56, ct_zuo, 181.2, 369.4 , 0 );
setEffMoveKey( spep_1+58, ct_zuo, 230.9, 335.7 , 0 );
setEffMoveKey( spep_1+60, ct_zuo, 250.3, 332.4 , 0 );
setEffScaleKey( spep_1, ct_zuo, 0.34, 0.34 );
setEffScaleKey( spep_1+2, ct_zuo, 1.13, 1.13 );
setEffScaleKey( spep_1+4, ct_zuo, 1.94, 1.94 );
setEffScaleKey( spep_1+6, ct_zuo, 2.73, 2.73 );
setEffScaleKey( spep_1+50, ct_zuo, 2.73, 2.73 );
setEffScaleKey( spep_1+52, ct_zuo, 3.55, 3.55 );
setEffScaleKey( spep_1+54, ct_zuo, 4.37, 4.37 );
setEffScaleKey( spep_1+56, ct_zuo, 5.19, 5.19 );
setEffScaleKey( spep_1+58, ct_zuo, 6.01, 6.01 );
setEffScaleKey( spep_1+60, ct_zuo, 6.82, 6.82 );
setEffRotateKey( spep_1, ct_zuo, 27.2 );
setEffRotateKey( spep_1+60, ct_zuo, 27.2 );
setEffAlphaKey( spep_1, ct_zuo, 255 );
setEffAlphaKey( spep_1+50, ct_zuo, 255 );
setEffAlphaKey( spep_1+52, ct_zuo, 204 );
setEffAlphaKey( spep_1+54, ct_zuo, 153 );
setEffAlphaKey( spep_1+56, ct_zuo, 102 );
setEffAlphaKey( spep_1+58, ct_zuo, 51 );
setEffAlphaKey( spep_1+60, ct_zuo, 0 );


--***突進***
tosshin = entryEffect(  spep_1,  SP_11,  0x80,  -1,  0,  0,  0);  --突進

setEffScaleKey(  spep_1,  tosshin,  1.0,  1.0);
setEffScaleKey(  spep_1+70,  tosshin,  1.0,  1.0);
setEffMoveKey(  spep_1,  tosshin,  0,  0);
setEffMoveKey(  spep_1+70,  tosshin,  0,  0);
setEffRotateKey(  spep_1,  tosshin,  0);
setEffRotateKey(  spep_1+70,  tosshin,  0);
setEffAlphaKey(  spep_1,  tosshin,  255);
setEffAlphaKey(  spep_1+70,  tosshin,  255);

--***SE***
playSe(  spep_1,  9);  --ダッシュ

--***フェードと背景***
entryFadeBg(spep_1, 0, 70, 0, 0, 0, 0, 100);  -- 黒背景
entryFade(spep_1+60, 8, 4, 2,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_1+40 ; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

pauseAll( SP_dodge, 67);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
--entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景

entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge+10);

do return end
else end

------------------------------------------------------
-- ラッシュ(250F)
------------------------------------------------------
spep_2 = spep_1+70;

--***書き文字***
ct_ga = entryEffectLife( spep_2+20,  10005, 8, 0x100, -1, 0, -146.2, 236.1 );  --ガ
setEffMoveKey( spep_2+20, ct_ga, -146.2, 236.1 , 0 );
setEffMoveKey( spep_2+22, ct_ga, -155.1, 242.5 , 0 );
setEffMoveKey( spep_2+24, ct_ga, -146.3, 236.1 , 0 );
setEffMoveKey( spep_2+26, ct_ga, -152.9, 241.1 , 0 );
setEffMoveKey( spep_2+28, ct_ga, -146.2, 236.1 , 0 );
setEffScaleKey( spep_2+20, ct_ga, 1.28, 1.28 );
setEffScaleKey( spep_2+22, ct_ga, 1.91, 1.91 );
setEffScaleKey( spep_2+24, ct_ga, 1.69, 1.69 );
setEffScaleKey( spep_2+26, ct_ga, 1.48, 1.48 );
setEffScaleKey( spep_2+28, ct_ga, 1.4, 1.4 );
setEffRotateKey( spep_2+20, ct_ga, -8.7 );
setEffRotateKey( spep_2+28, ct_ga, -8.7 );
setEffAlphaKey( spep_2+20, ct_ga, 255 );
setEffAlphaKey( spep_2+26, ct_ga, 255 );
setEffAlphaKey( spep_2+28, ct_ga, 128 );

ct_ga2 = entryEffectLife( spep_2+32,  10005, 8, 0x100, -1, 0, -8.6, 225.6 );  --ガ

setEffMoveKey( spep_2+32, ct_ga2, -8.6, 225.6 , 0 );
setEffMoveKey( spep_2+34, ct_ga2, -14.6, 234.4 , 0 );
setEffMoveKey( spep_2+36, ct_ga2, -8.6, 225.4 , 0 );
setEffMoveKey( spep_2+38, ct_ga2, -13.2, 232.5 , 0 );
setEffMoveKey( spep_2+40, ct_ga2, -8.6, 225.4 , 0 );
setEffScaleKey( spep_2+32, ct_ga2, 1.28, 1.28 );
setEffScaleKey( spep_2+34, ct_ga2, 1.91, 1.91 );
setEffScaleKey( spep_2+36, ct_ga2, 1.69, 1.69 );
setEffScaleKey( spep_2+38, ct_ga2, 1.48, 1.48 );
setEffScaleKey( spep_2+40, ct_ga2, 1.4, 1.4 );
setEffRotateKey( spep_2+32, ct_ga2, 11.6 );
setEffRotateKey( spep_2+34, ct_ga2, 11.5 );
setEffRotateKey( spep_2+40, ct_ga2, 11.5 );
setEffAlphaKey( spep_2+32, ct_ga2, 255 );
setEffAlphaKey( spep_2+38, ct_ga2, 255 );
setEffAlphaKey( spep_2+40, ct_ga2, 128 );

ct_ga3 = entryEffectLife( spep_2+42,  10005, 8, 0x100, -1, 0, -128, 257.2 );  --ガ

setEffMoveKey( spep_2+42, ct_ga3, -128, 257.2 , 0 );
setEffMoveKey( spep_2+44, ct_ga3, -137.8, 262.1 , 0 );
setEffMoveKey( spep_2+46, ct_ga3, -128.1, 257.2 , 0 );
setEffMoveKey( spep_2+48, ct_ga3, -135.4, 261.1 , 0 );
setEffMoveKey( spep_2+50, ct_ga3, -128.1, 257.2 , 0 );
setEffScaleKey( spep_2+42, ct_ga3, 1.28, 1.28 );
setEffScaleKey( spep_2+44, ct_ga3, 1.91, 1.91 );
setEffScaleKey( spep_2+46, ct_ga3, 1.69, 1.69 );
setEffScaleKey( spep_2+48, ct_ga3, 1.48, 1.48 );
setEffScaleKey( spep_2+50, ct_ga3, 1.4, 1.4 );
setEffRotateKey( spep_2+42, ct_ga3, -17.5 );
setEffRotateKey( spep_2+50, ct_ga3, -17.5 );
setEffAlphaKey( spep_2+42, ct_ga3, 255 );
setEffAlphaKey( spep_2+48, ct_ga3, 255 );
setEffAlphaKey( spep_2+50, ct_ga3, 128 );

ct_baki = entryEffectLife( spep_2+52,  10020, 16, 0x100, -1, 0, 1.3, 260.9 );  --バキ

setEffMoveKey( spep_2+52, ct_baki, 1.3, 260.9 , 0 );
setEffMoveKey( spep_2+54, ct_baki, -14, 280.2 , 0 );
setEffMoveKey( spep_2+56, ct_baki, 1.3, 261 , 0 );
setEffMoveKey( spep_2+58, ct_baki, 1.4, 260.9 , 0 );
setEffMoveKey( spep_2+60, ct_baki, -8.4, 273.3 , 0 );
setEffMoveKey( spep_2+62, ct_baki, 1.5, 260.9 , 0 );
setEffMoveKey( spep_2+64, ct_baki, 1.5, 260.9 , 0 );
setEffMoveKey( spep_2+66, ct_baki, -7.7, 272.5 , 0 );
setEffMoveKey( spep_2+68, ct_baki, 1.5, 261 , 0 );
setEffScaleKey( spep_2+52, ct_baki, 1.6, 1.6 );
setEffScaleKey( spep_2+54, ct_baki, 2.88, 2.88 );
setEffScaleKey( spep_2+56, ct_baki, 2.41, 2.41 );
setEffScaleKey( spep_2+58, ct_baki, 1.94, 1.94 );
setEffScaleKey( spep_2+60, ct_baki, 1.87, 1.87 );
setEffScaleKey( spep_2+62, ct_baki, 1.8, 1.8 );
setEffScaleKey( spep_2+64, ct_baki, 1.73, 1.73 );
setEffScaleKey( spep_2+66, ct_baki, 1.75, 1.75 );
setEffScaleKey( spep_2+68, ct_baki, 1.76, 1.76 );
setEffRotateKey( spep_2+52, ct_baki, 6.5 );
setEffRotateKey( spep_2+68, ct_baki, 6.5 );
setEffAlphaKey( spep_2+52, ct_baki, 255 );
setEffAlphaKey( spep_2+64, ct_baki, 255 );
setEffAlphaKey( spep_2+66, ct_baki, 134 );
setEffAlphaKey( spep_2+68, ct_baki, 13 );

ct_zun = entryEffectLife( spep_2+86,  10016, 10, 0x100, -1, 0, 15.9, 262.3 );  --ズン

setEffMoveKey( spep_2+86, ct_zun, 15.9, 262.3 , 0 );
setEffMoveKey( spep_2+88, ct_zun, 15.8, 262.3 , 0 );
setEffMoveKey( spep_2+90, ct_zun, 10, 265.7 , 0 );
setEffMoveKey( spep_2+92, ct_zun, 15.8, 262.3 , 0 );
setEffMoveKey( spep_2+94, ct_zun, 11, 265.1 , 0 );
setEffMoveKey( spep_2+96, ct_zun, 15.7, 262.4 , 0 );
setEffScaleKey( spep_2+86, ct_zun, 1.31, 1.31 );
setEffScaleKey( spep_2+88, ct_zun, 2.68, 2.68 );
setEffScaleKey( spep_2+90, ct_zun, 2.28, 2.28 );
setEffScaleKey( spep_2+92, ct_zun, 1.87, 1.87 );
setEffScaleKey( spep_2+94, ct_zun, 1.89, 1.89 );
setEffScaleKey( spep_2+96, ct_zun, 1.9, 1.9 );
setEffRotateKey( spep_2+86, ct_zun, -11.5 );
setEffRotateKey( spep_2+92, ct_zun, -11.5 );
setEffRotateKey( spep_2+94, ct_zun, -11.6 );
setEffRotateKey( spep_2+96, ct_zun, -11.5 );
setEffAlphaKey( spep_2+86, ct_zun, 255 );
setEffAlphaKey( spep_2+92, ct_zun, 255 );
setEffAlphaKey( spep_2+94, ct_zun, 191 );
setEffAlphaKey( spep_2+96, ct_zun, 13 );

ct_ga4 = entryEffectLife( spep_2+100,  10005, 8, 0x100, -1, 0, 33.1, 240 );  --ガ

setEffMoveKey( spep_2+100, ct_ga4, 33.1, 240 , 0 );
setEffMoveKey( spep_2+102, ct_ga4, 23.2, 244.4 , 0 );
setEffMoveKey( spep_2+104, ct_ga4, 33.1, 239.9 , 0 );
setEffMoveKey( spep_2+106, ct_ga4, 25.5, 243.5 , 0 );
setEffMoveKey( spep_2+108, ct_ga4, 33.2, 240 , 0 );
setEffScaleKey( spep_2+100, ct_ga4, 1.28, 1.28 );
setEffScaleKey( spep_2+102, ct_ga4, 1.91, 1.91 );
setEffScaleKey( spep_2+104, ct_ga4, 1.69, 1.69 );
setEffScaleKey( spep_2+106, ct_ga4, 1.48, 1.48 );
setEffScaleKey( spep_2+108, ct_ga4, 1.4, 1.4 );
setEffRotateKey( spep_2+100, ct_ga4, -20.4 );
setEffRotateKey( spep_2+108, ct_ga4, -20.4 );
setEffAlphaKey( spep_2+100, ct_ga4, 255 );
setEffAlphaKey( spep_2+106, ct_ga4, 255 );
setEffAlphaKey( spep_2+108, ct_ga4, 128 );

ct_ga5 = entryEffectLife( spep_2+108,  10005, 8, 0x100, -1, 0, 177.9, 256.6 );  --ガ

setEffMoveKey( spep_2+108, ct_ga5, 177.9, 256.6 , 0 );
setEffMoveKey( spep_2+110, ct_ga5, 173.7, 266.5 , 0 );
setEffMoveKey( spep_2+112, ct_ga5, 177.9, 256.5 , 0 );
setEffMoveKey( spep_2+114, ct_ga5, 174.7, 264.3 , 0 );
setEffMoveKey( spep_2+116, ct_ga5, 177.9, 256.5 , 0 );
setEffScaleKey( spep_2+108, ct_ga5, 1.28, 1.28 );
setEffScaleKey( spep_2+110, ct_ga5, 1.91, 1.91 );
setEffScaleKey( spep_2+112, ct_ga5, 1.69, 1.69 );
setEffScaleKey( spep_2+114, ct_ga5, 1.48, 1.48 );
setEffScaleKey( spep_2+116, ct_ga5, 1.4, 1.4 );
setEffRotateKey( spep_2+108, ct_ga5, 22.3 );
setEffRotateKey( spep_2+116, ct_ga5, 22.3 );
setEffAlphaKey( spep_2+108, ct_ga5, 255 );
setEffAlphaKey( spep_2+114, ct_ga5, 255 );
setEffAlphaKey( spep_2+116, ct_ga5, 128 );

ct_ga6 = entryEffectLife( spep_2+118,  10005, 8, 0x100, -1, 0, 16.6, 229.1 );  --が

setEffMoveKey( spep_2+118, ct_ga6, 16.6, 229.1 , 0 );
setEffMoveKey( spep_2+120, ct_ga6, 10.4, 238.1 , 0 );
setEffMoveKey( spep_2+122, ct_ga6, 16.6, 229.1 , 0 );
setEffMoveKey( spep_2+124, ct_ga6, 11.9, 235.9 , 0 );
setEffMoveKey( spep_2+126, ct_ga6, 16.6, 229.1 , 0 );
setEffScaleKey( spep_2+118, ct_ga6, 1.28, 1.28 );
setEffScaleKey( spep_2+120, ct_ga6, 1.91, 1.91 );
setEffScaleKey( spep_2+122, ct_ga6, 1.69, 1.69 );
setEffScaleKey( spep_2+124, ct_ga6, 1.48, 1.48 );
setEffScaleKey( spep_2+126, ct_ga6, 1.4, 1.4 );
setEffRotateKey( spep_2+118, ct_ga6, 10.7 );
setEffRotateKey( spep_2+126, ct_ga6, 10.7 );
setEffAlphaKey( spep_2+118, ct_ga6, 255 );
setEffAlphaKey( spep_2+124, ct_ga6, 255 );
setEffAlphaKey( spep_2+126, ct_ga6, 128 );

ct_zun2 = entryEffectLife( spep_2+130,  10016, 12, 0x100, -1, 0, 80, 346.3 );  --ズン

setEffMoveKey( spep_2+130, ct_zun2, 80, 346.3 , 0 );
setEffMoveKey( spep_2+132, ct_zun2, 80, 346.2 , 0 );
setEffMoveKey( spep_2+134, ct_zun2, 74.1, 351.7 , 0 );
setEffMoveKey( spep_2+136, ct_zun2, 80, 346.2 , 0 );
setEffMoveKey( spep_2+138, ct_zun2, 75, 350.5 , 0 );
setEffMoveKey( spep_2+140, ct_zun2, 79.8, 346.3 , 0 );
setEffScaleKey( spep_2+130, ct_zun2, 1.56, 1.56 );
setEffScaleKey( spep_2+132, ct_zun2, 3.19, 3.19 );
setEffScaleKey( spep_2+134, ct_zun2, 2.71, 2.71 );
setEffScaleKey( spep_2+136, ct_zun2, 2.23, 2.23 );
setEffScaleKey( spep_2+138, ct_zun2, 2.24, 2.24 );
setEffScaleKey( spep_2+140, ct_zun2, 2.25, 2.25 );
setEffRotateKey( spep_2+130, ct_zun2, 1 );
setEffRotateKey( spep_2+140, ct_zun2, 1 );
setEffAlphaKey( spep_2+130, ct_zun2, 255 );
setEffAlphaKey( spep_2+136, ct_zun2, 255 );
setEffAlphaKey( spep_2+138, ct_zun2, 191 );
setEffAlphaKey( spep_2+140, ct_zun2, 13 );
setEffAlphaKey( spep_2+142, ct_zun2, 0 );

ct_shun = entryEffectLife( spep_2+148,  10011, 12, 0x100, -1, 0, -12.1, 304.5 );  --シュン

setEffMoveKey( spep_2+148, ct_shun, -12.1, 304.5 , 0 );
setEffMoveKey( spep_2+150, ct_shun, -12.1, 304.5 , 0 );
setEffMoveKey( spep_2+152, ct_shun, -72, 304.4 , 0 );
setEffMoveKey( spep_2+154, ct_shun, -103, 304.4 , 0 );
setEffMoveKey( spep_2+156, ct_shun, -134.1, 304.5 , 0 );
setEffMoveKey( spep_2+158, ct_shun, -174.1, 297.5 , 0 );
setEffMoveKey( spep_2+160, ct_shun, -214, 290.4 , 0 );
setEffScaleKey( spep_2+148, ct_shun, 1.65, 1.65 );
setEffScaleKey( spep_2+150, ct_shun, 2.78, 2.78 );
setEffScaleKey( spep_2+152, ct_shun, 2.3, 2.3 );
setEffScaleKey( spep_2+154, ct_shun, 2.06, 2.06 );
setEffScaleKey( spep_2+156, ct_shun, 1.82, 1.82 );
setEffScaleKey( spep_2+158, ct_shun, 1.77, 1.77 );
setEffScaleKey( spep_2+160, ct_shun, 1.71, 1.71 );
setEffRotateKey( spep_2+148, ct_shun, -8.7 );
setEffRotateKey( spep_2+160, ct_shun, -8.7 );
setEffAlphaKey( spep_2+148, ct_shun, 255 );
setEffAlphaKey( spep_2+156, ct_shun, 255 );
setEffAlphaKey( spep_2+158, ct_shun, 128 );
setEffAlphaKey( spep_2+160, ct_shun, 0 );

ct_shun2 = entryEffectLife( spep_2+190,  10011, 16, 0x100, -1, 0, -60.1, 452.6 );  --シュン

setEffMoveKey( spep_2+190, ct_shun2, -60.1, 452.6 , 0 );
setEffMoveKey( spep_2+206, ct_shun2, -60.2, 452.4 , 0 );
setEffScaleKey( spep_2+190, ct_shun2, 1.59, 1.59 );
setEffScaleKey( spep_2+192, ct_shun2, 2.68, 2.68 );
setEffScaleKey( spep_2+194, ct_shun2, 2.37, 2.37 );
setEffScaleKey( spep_2+196, ct_shun2, 2.07, 2.07 );
setEffScaleKey( spep_2+198, ct_shun2, 1.76, 1.76 );
setEffScaleKey( spep_2+200, ct_shun2, 1.73, 1.73 );
setEffScaleKey( spep_2+202, ct_shun2, 1.7, 1.7 );
setEffScaleKey( spep_2+204, ct_shun2, 1.67, 1.67 );
setEffScaleKey( spep_2+206, ct_shun2, 1.64, 1.64 );
setEffRotateKey( spep_2+190, ct_shun2, -18 );
setEffRotateKey( spep_2+206, ct_shun2, -18 );
setEffAlphaKey( spep_2+190, ct_shun2, 255 );
setEffAlphaKey( spep_2+198, ct_shun2, 255 );
setEffAlphaKey( spep_2+200, ct_shun2, 191 );
setEffAlphaKey( spep_2+202, ct_shun2, 128 );
setEffAlphaKey( spep_2+204, ct_shun2, 64 );
setEffAlphaKey( spep_2+206, ct_shun2, 0 );

ct_baki2 = entryEffectLife( spep_2+210,  10020, 32, 0x100, -1, 0, 106.6, 344.1 );  --バキ

setEffShake(  spep_2+210,  ct_baki2,  32,  20);
setEffMoveKey( spep_2+210, ct_baki2, 106.6, 344.1 , 0 );
setEffMoveKey( spep_2+242, ct_baki2, 106.8, 344 , 0 );
setEffScaleKey( spep_2+210, ct_baki2, 2.13, 2.13 );
setEffScaleKey( spep_2+212, ct_baki2, 3.84, 3.84 );
setEffScaleKey( spep_2+214, ct_baki2, 3.42, 3.42 );
setEffScaleKey( spep_2+216, ct_baki2, 3, 3 );
setEffScaleKey( spep_2+218, ct_baki2, 2.58, 2.58 );
setEffScaleKey( spep_2+220, ct_baki2, 2.55, 2.55 );
setEffScaleKey( spep_2+222, ct_baki2, 2.51, 2.51 );
setEffScaleKey( spep_2+224, ct_baki2, 2.48, 2.48 );
setEffScaleKey( spep_2+226, ct_baki2, 2.44, 2.44 );
setEffScaleKey( spep_2+228, ct_baki2, 2.4, 2.4 );
setEffScaleKey( spep_2+230, ct_baki2, 2.37, 2.37 );
setEffScaleKey( spep_2+232, ct_baki2, 2.34, 2.34 );
setEffScaleKey( spep_2+234, ct_baki2, 2.3, 2.3 );
setEffScaleKey( spep_2+236, ct_baki2, 2.31, 2.31 );
setEffScaleKey( spep_2+238, ct_baki2, 2.32, 2.32 );
setEffScaleKey( spep_2+240, ct_baki2, 2.33, 2.33 );
setEffScaleKey( spep_2+242, ct_baki2, 2.34, 2.34 );
setEffRotateKey( spep_2+210, ct_baki2, 22.6 );
setEffRotateKey( spep_2+242, ct_baki2, 22.6 );
setEffAlphaKey( spep_2+210, ct_baki2, 255 );
setEffAlphaKey( spep_2+234, ct_baki2, 255 );
setEffAlphaKey( spep_2+236, ct_baki2, 195 );
setEffAlphaKey( spep_2+238, ct_baki2, 134 );
setEffAlphaKey( spep_2+240, ct_baki2, 74 );
setEffAlphaKey( spep_2+242, ct_baki2, 13 );


--***集中線***
shuchusen2 = entryEffectLife( spep_2, 906, 250, 0x100,  -1, 0,  0,  0);   -- 集中線

setEffScaleKey(  spep_2,  shuchusen2,  1.16,  2.21);
setEffScaleKey(  spep_2+250,  shuchusen2,  1.16,  2.21);
setEffMoveKey(  spep_2,  shuchusen2,  0,  0);
setEffMoveKey(  spep_2+250,  shuchusen2,  0,  0);
setEffRotateKey(  spep_2,  shuchusen2,  0);
setEffRotateKey(  spep_2+250,  shuchusen2,  0);
setEffAlphaKey(  spep_2,  shuchusen2,  255);
setEffAlphaKey(  spep_2+250,  shuchusen2,  255);

--***流線***
ryusen = entryEffectLife( spep_2, 914, 250, 0x80,  -1, 0,  0,  0);   -- 流線

setEffScaleKey(  spep_2,  ryusen,  2.92,  1.22);
setEffScaleKey(  spep_2+250,  ryusen,  2.92,  1.22);
setEffMoveKey(  spep_2,  ryusen,  0,  0);
setEffMoveKey(  spep_2+250,  ryusen,  0,  0);
setEffRotateKey(  spep_2,  ryusen,  -15.7);
setEffRotateKey(  spep_2+208,  ryusen,  -15.7);
setEffRotateKey(  spep_2+209,  ryusen,  -15.7);
setEffRotateKey(  spep_2+210,  ryusen,  90);
setEffRotateKey(  spep_2+250,  ryusen,  90);
setEffAlphaKey(  spep_2,  ryusen,  255);
setEffAlphaKey(  spep_2+190,  ryusen,  255);
setEffAlphaKey(  spep_2+208,  ryusen,  0);
setEffAlphaKey(  spep_2+209,  ryusen,  0);
setEffAlphaKey(  spep_2+210,  ryusen,  255);
setEffAlphaKey(  spep_2+250,  ryusen,  255);


--***敵の動き***
changeAnime( spep_2+210, 1, 106 );  --仰け反り
setMoveKey( spep_2+210, 1, -42.4, -154.9 , 0 );
setMoveKey( spep_2+212, 1, -37.1, -153.1 , 0 );
setMoveKey( spep_2+214, 1, -39.9, -162.6 , 0 );
setMoveKey( spep_2+216, 1, -38.6, -159.3 , 0 );
setMoveKey( spep_2+218, 1, -43.4, -163.4 , 0 );
setMoveKey( spep_2+220, 1, -40.2, -162.6 , 0 );
setMoveKey( spep_2+222, 1, -41.7, -174.9 , 0 );
setMoveKey( spep_2+224, 1, -39.2, -179.1 , 0 );
setMoveKey( spep_2+226, 1, -44.7, -191.3 , 0 );
setMoveKey( spep_2+228, 1, -38.2, -195.4 , 0 );
setMoveKey( spep_2+230, 1, -39.7, -205.5 , 0 );
setMoveKey( spep_2+232, 1, -37.2, -211.5 , 0 );
setMoveKey( spep_2+234, 1, -29.9, -363.3 , 0 );
setMoveKey( spep_2+236, 1, -16.9, -626.6 , 0 );
setMoveKey( spep_2+238, 1, 1.5, -1000.1 , 0 );
setMoveKey( spep_2+240, 1, 25, -1482.4 , 0 );
setMoveKey( spep_2+242, 1, 53.9, -2072.8 , 0 );
setScaleKey( spep_2+210, 1, 2.33, 2.33 );
setScaleKey( spep_2+212, 1, 2.23, 2.23 );
setScaleKey( spep_2+214, 1, 2.13, 2.13 );
setScaleKey( spep_2+216, 1, 2.04, 2.04 );
setScaleKey( spep_2+218, 1, 1.94, 1.94 );
setScaleKey( spep_2+220, 1, 1.84, 1.84 );
setScaleKey( spep_2+222, 1, 1.83, 1.83 );
setScaleKey( spep_2+224, 1, 1.83, 1.83 );
setScaleKey( spep_2+226, 1, 1.82, 1.82 );
setScaleKey( spep_2+228, 1, 1.81, 1.81 );
setScaleKey( spep_2+230, 1, 1.81, 1.81 );
setScaleKey( spep_2+232, 1, 1.8, 1.8 );
setScaleKey( spep_2+234, 1, 1.8, 1.8 );
setScaleKey( spep_2+236, 1, 1.79, 1.79 );
setScaleKey( spep_2+238, 1, 1.78, 1.78 );
setScaleKey( spep_2+240, 1, 1.78, 1.78 );
setScaleKey( spep_2+242, 1, 1.77, 1.77 );
setRotateKey( spep_2+210, 1, -150.7 );
setRotateKey( spep_2+212, 1, -151 );
setRotateKey( spep_2+214, 1, -151.4 );
setRotateKey( spep_2+216, 1, -151.7 );
setRotateKey( spep_2+218, 1, -152 );
setRotateKey( spep_2+220, 1, -152.4 );
setRotateKey( spep_2+222, 1, -152.7 );
setRotateKey( spep_2+224, 1, -153.1 );
setRotateKey( spep_2+226, 1, -153.4 );
setRotateKey( spep_2+228, 1, -153.7 );
setRotateKey( spep_2+230, 1, -154.1 );
setRotateKey( spep_2+232, 1, -154.4 );
setRotateKey( spep_2+234, 1, -154.9 );
setRotateKey( spep_2+236, 1, -155.7 );
setRotateKey( spep_2+238, 1, -156.9 );
setRotateKey( spep_2+240, 1, -158.5 );
setRotateKey( spep_2+242, 1, -160.4 );

--***格闘***
rush_f = entryEffect(  spep_2,  SP_12a,  0x80,  -1,  0,  0,  0);  --ラッシュ

setEffScaleKey(  spep_2,  rush_f,  -1.0,  1.0);
setEffScaleKey(  spep_2+250,  rush_f,  -1.0,  1.0);
setEffMoveKey(  spep_2,  rush_f,  0,  0);
setEffMoveKey(  spep_2+250,  rush_f,  0,  0);
setEffRotateKey(  spep_2,  rush_f,  0);
setEffRotateKey(  spep_2+250,  rush_f,  0);
setEffAlphaKey(  spep_2,  rush_f,  255);
setEffAlphaKey(  spep_2+250,  rush_f,  255);
setEffAlphaKey(  spep_2+251,  rush_f,  0);
setEffAlphaKey(  spep_2+252,  rush_f,  0);
setEffAlphaKey(  spep_2+260,  rush_f,  0);


--***格闘***
rush = entryEffect(  spep_2,  SP_12,  0x100,  -1,  0,  0,  0);  --ラッシュ

setEffScaleKey(  spep_2,  rush,  1.0,  1.0);
setEffScaleKey(  spep_2+250,  rush,  1.0,  1.0);
setEffMoveKey(  spep_2,  rush,  0,  0);
setEffMoveKey(  spep_2+250,  rush,  0,  0);
setEffRotateKey(  spep_2,  rush,  0);
setEffRotateKey(  spep_2+250,  rush,  0);
setEffAlphaKey(  spep_2,  rush,  255);
setEffAlphaKey(  spep_2+250,  rush,  255);
setEffAlphaKey(  spep_2+251,  rush,  0);
setEffAlphaKey(  spep_2+252,  rush,  0);
setEffAlphaKey(  spep_2+260,  rush,  0);


--***敵の動き***
setDisp( spep_2, 1, 1 );
setDisp( spep_2+250, 1, 0 );  --消す
setShakeChara(  spep_2+20,  1,  230,  20);
changeAnime( spep_2, 1, 104 );
changeAnime( spep_2+20, 1, 108 );
changeAnime( spep_2+32, 1, 106 );
changeAnime( spep_2+42, 1, 108 );
changeAnime( spep_2+52, 1, 106 );
changeAnime( spep_2+86, 1, 108 );
changeAnime( spep_2+100, 1, 106 );
changeAnime( spep_2+130, 1, 108 );



setMoveKey( spep_2, 1, -849.5, -196 , 0 );
setMoveKey( spep_2+2, 1, -646.3, -144.8 , 0 );
setMoveKey( spep_2+4, 1, -479.7, -102.7 , 0 );
setMoveKey( spep_2+6, 1, -349.8, -69.8 , 0 );
setMoveKey( spep_2+8, 1, -256.8, -46.2 , 0 );
setMoveKey( spep_2+10, 1, -200.9, -31.9 , 0 );
setMoveKey( spep_2+12, 1, -182.3, -26.8 , 0 );
setMoveKey( spep_2+14, 1, -169.8, -22.7 , 0 );
setMoveKey( spep_2+16, 1, -157.4, -18.6 , 0 );
setMoveKey( spep_2+19, 1, -144.9, -14.5 , 0 );
setMoveKey( spep_2+20, 1, -107.6, -11.1 , 0 );
setMoveKey( spep_2+22, 1, -98.4, -0.5 , 0 );
setMoveKey( spep_2+24, 1, -97.2, 0.2 , 0 );
setMoveKey( spep_2+26, 1, -84, 4.8 , 0 );
setMoveKey( spep_2+28, 1, -78.8, 5.5 , 0 );
setMoveKey( spep_2+31, 1, -69.6, 10.2 , 0 );
setMoveKey( spep_2+32, 1, -110.6, 20 , 0 );
setMoveKey( spep_2+34, 1, -99.3, 28.3 , 0 );
setMoveKey( spep_2+36, 1, -93.9, 28.7 , 0 );
setMoveKey( spep_2+38, 1, -84.6, 37 , 0 );
setMoveKey( spep_2+41, 1, -81.2, 39.4 , 0 );
setMoveKey( spep_2+42, 1, -48.2, -20.4 , 0 );
setMoveKey( spep_2+44, 1, -42.2, -28.7 , 0 );
setMoveKey( spep_2+46, 1, -32.2, -25.1 , 0 );
setMoveKey( spep_2+48, 1, -30.1, -29.4 , 0 );
setMoveKey( spep_2+51, 1, -16, -29.8 , 0 );
setMoveKey( spep_2+52, 1, -24.2, -28.6 , 0 );
setMoveKey( spep_2+54, 1, -0.7, -15.5 , 0 );
setMoveKey( spep_2+56, 1, 16.8, -12.4 , 0 );
setMoveKey( spep_2+58, 1, 45.5, 2 , 0 );
setMoveKey( spep_2+60, 1, 68.2, 10.5 , 0 );
setMoveKey( spep_2+62, 1, 89.7, 19.4 , 0 );
setMoveKey( spep_2+64, 1, 109.1, 26.4 , 0 );
setMoveKey( spep_2+66, 1, 128.6, 33.3 , 0 );
setMoveKey( spep_2+68, 1, 148.1, 40.3 , 0 );
setMoveKey( spep_2+70, 1, 153, 42 , 0 );
setMoveKey( spep_2+72, 1, 158, 43.7 , 0 );
setMoveKey( spep_2+74, 1, 162.9, 45.4 , 0 );
setMoveKey( spep_2+76, 1, 165.4, 45.5 , 0 );
setMoveKey( spep_2+78, 1, 168, 45.6 , 0 );
setMoveKey( spep_2+80, 1, 170.5, 45.7 , 0 );
setMoveKey( spep_2+82, 1, 173, 45.8 , 0 );
setMoveKey( spep_2+85, 1, 175.5, 45.9 , 0 );
setMoveKey( spep_2+86, 1, 189.3, 18.9 , 0 );
setMoveKey( spep_2+88, 1, 200.1, 31.3 , 0 );
setMoveKey( spep_2+90, 1, 217.3, 38.1 , 0 );
setMoveKey( spep_2+92, 1, 250.1, 48.9 , 0 );
setMoveKey( spep_2+94, 1, 272.5, 51.4 , 0 );
setMoveKey( spep_2+96, 1, 245.5, 53.4 , 0 );
setMoveKey( spep_2+99, 1, 212, 47.1 , 0 );
setMoveKey( spep_2+100, 1, 138.1, 63.3 , 0 );
setMoveKey( spep_2+102, 1, 95.1, 55.5 , 0 );
setMoveKey( spep_2+104, 1, 98.3, 49.3 , 0 );
setMoveKey( spep_2+106, 1, 105.7, 63.1 , 0 );
setMoveKey( spep_2+108, 1, 103.2, 65 , 0 );
setMoveKey( spep_2+110, 1, 116.8, 70.9 , 0 );
setMoveKey( spep_2+112, 1, 118.6, 71 , 0 );
setMoveKey( spep_2+114, 1, 116.7, 74.1 , 0 );
setMoveKey( spep_2+116, 1, 108.9, 69.2 , 0 );
setMoveKey( spep_2+118, 1, 105, 72.2 , 0 );
setMoveKey( spep_2+120, 1, 95.1, 69.3 , 0 );
setMoveKey( spep_2+122, 1, 93.2, 70.4 , 0 );
setMoveKey( spep_2+124, 1, 83.3, 65.5 , 0 );
setMoveKey( spep_2+126, 1, 81.4, 68.6 , 0 );
setMoveKey( spep_2+129, 1, 73.5, 65.7 , 0 );
setMoveKey( spep_2+130, 1, 213.5, 99.6 , 0 );
setMoveKey( spep_2+132, 1, 216.7, 101.3 , 0 );
setMoveKey( spep_2+134, 1, 231.7, 107 , 0 );
setMoveKey( spep_2+136, 1, 238.7, 104.6 , 0 );
setMoveKey( spep_2+138, 1, 249.6, 114.1 , 0 );
setMoveKey( spep_2+140, 1, 252.3, 115.6 , 0 );
setMoveKey( spep_2+142, 1, 267, 121.1 , 0 );
setMoveKey( spep_2+144, 1, 273.6, 118.5 , 0 );
setMoveKey( spep_2+146, 1, 284, 127.8 , 0 );
setMoveKey( spep_2+148, 1, 301.2, 133.5 , 0 );
setMoveKey( spep_2+150, 1, 330.2, 151 , 0 );
setMoveKey( spep_2+152, 1, 269.4, 122.9 , 0 );
setMoveKey( spep_2+154, 1, 208.5, 94.8 , 0 );
setMoveKey( spep_2+156, 1, 147.7, 66.7 , 0 );
setMoveKey( spep_2+158, 1, 61.6, 24.7 , 0 );
setMoveKey( spep_2+160, 1, -24.5, -17.4 , 0 );
setMoveKey( spep_2+162, 1, -110.7, -59.4 , 0 );
setMoveKey( spep_2+164, 1, -100.8, -55.4 , 0 );
setMoveKey( spep_2+166, 1, -90.9, -51.4 , 0 );
setMoveKey( spep_2+168, 1, -81, -47.4 , 0 );
setMoveKey( spep_2+170, 1, -71.1, -43.4 , 0 );
setMoveKey( spep_2+172, 1, -61.2, -39.4 , 0 );
setMoveKey( spep_2+174, 1, -51.3, -35.4 , 0 );
setMoveKey( spep_2+176, 1, -41.4, -31.4 , 0 );
setMoveKey( spep_2+178, 1, -31.5, -27.4 , 0 );
setMoveKey( spep_2+180, 1, -21.6, -23.4 , 0 );
setMoveKey( spep_2+182, 1, -11.7, -19.4 , 0 );
setMoveKey( spep_2+184, 1, -1.8, -15.4 , 0 );
setMoveKey( spep_2+186, 1, 8.1, -11.3 , 0 );
setMoveKey( spep_2+188, 1, 18, -7.3 , 0 );
setMoveKey( spep_2+190, 1, 18.8, -6.5 , 0 );
setMoveKey( spep_2+192, 1, 19.6, -5.7 , 0 );
setMoveKey( spep_2+194, 1, 20.4, -4.9 , 0 );
setMoveKey( spep_2+196, 1, 21.2, -4.1 , 0 );
setMoveKey( spep_2+198, 1, 22, -3.3 , 0 );
setMoveKey( spep_2+200, 1, 22.8, -2.5 , 0 );
setMoveKey( spep_2+202, 1, 23.6, -1.7 , 0 );
setMoveKey( spep_2+204, 1, 24.4, -0.9 , 0 );
setMoveKey( spep_2+206, 1, 25.2, -0.1 , 0 );
setMoveKey( spep_2+209, 1, 26, 0.7 , 0 );



setScaleKey( spep_2, 1, 1.34, 1.34 );
setScaleKey( spep_2+10, 1, 1.34, 1.34 );
setScaleKey( spep_2+12, 1, 1.35, 1.35 );
setScaleKey( spep_2+19, 1, 1.35, 1.35 );
setScaleKey( spep_2+20, 1, 1.42, 1.42 );
setScaleKey( spep_2+22, 1, 1.42, 1.42 );
setScaleKey( spep_2+24, 1, 1.43, 1.43 );
setScaleKey( spep_2+31, 1, 1.43, 1.43 );
setScaleKey( spep_2+32, 1, 1.35, 1.35 );
setScaleKey( spep_2+34, 1, 1.36, 1.36 );
setScaleKey( spep_2+41, 1, 1.36, 1.36 );
setScaleKey( spep_2+42, 1, 1.43, 1.43 );
setScaleKey( spep_2+44, 1, 1.43, 1.43 );
setScaleKey( spep_2+46, 1, 1.42, 1.42 );
setScaleKey( spep_2+48, 1, 1.41, 1.41 );
setScaleKey( spep_2+51, 1, 1.41, 1.41 );
setScaleKey( spep_2+52, 1, 1.37, 1.37 );
setScaleKey( spep_2+85, 1, 1.37, 1.37 );
setScaleKey( spep_2+86, 1, 1.44, 1.44 );
setScaleKey( spep_2+88, 1, 1.44, 1.44 );
setScaleKey( spep_2+90, 1, 1.43, 1.43 );
setScaleKey( spep_2+92, 1, 1.42, 1.42 );
setScaleKey( spep_2+94, 1, 1.41, 1.41 );
setScaleKey( spep_2+96, 1, 1.39, 1.39 );
setScaleKey( spep_2+99, 1, 1.37, 1.37 );
setScaleKey( spep_2+100, 1, 1.29, 1.29 );
setScaleKey( spep_2+102, 1, 1.28, 1.28 );
setScaleKey( spep_2+104, 1, 1.29, 1.29 );
setScaleKey( spep_2+106, 1, 1.3, 1.3 );
setScaleKey( spep_2+108, 1, 1.31, 1.31 );
setScaleKey( spep_2+110, 1, 1.33, 1.33 );
setScaleKey( spep_2+112, 1, 1.34, 1.34 );
setScaleKey( spep_2+129, 1, 1.34, 1.34 );
setScaleKey( spep_2+130, 1, 1.32, 1.32 );
setScaleKey( spep_2+132, 1, 1.31, 1.31 );
setScaleKey( spep_2+134, 1, 1.31, 1.31 );
setScaleKey( spep_2+136, 1, 1.3, 1.3 );
setScaleKey( spep_2+138, 1, 1.29, 1.29 );
setScaleKey( spep_2+140, 1, 1.29, 1.29 );
setScaleKey( spep_2+142, 1, 1.28, 1.28 );
setScaleKey( spep_2+144, 1, 1.27, 1.27 );
setScaleKey( spep_2+146, 1, 1.27, 1.27 );
setScaleKey( spep_2+148, 1, 1.26, 1.26 );
setScaleKey( spep_2+156, 1, 1.26, 1.26 );
setScaleKey( spep_2+158, 1, 1.25, 1.25 );
setScaleKey( spep_2+209, 1, 1.25, 1.25 );


setRotateKey( spep_2, 1, 0 );
setRotateKey( spep_2+19, 1, 0 );
setRotateKey( spep_2+20, 1, -16.3 );
setRotateKey( spep_2+31, 1, -16.3 );
setRotateKey( spep_2+32, 1, -37.4 );
setRotateKey( spep_2+34, 1, -37 );
setRotateKey( spep_2+36, 1, -36.5 );
setRotateKey( spep_2+38, 1, -36.1 );
setRotateKey( spep_2+41, 1, -35.7 );
setRotateKey( spep_2+42, 1, 10.4 );
setRotateKey( spep_2+51, 1, 10.4 );
setRotateKey( spep_2+52, 1, -27.2 );
setRotateKey( spep_2+54, 1, -25.6 );
setRotateKey( spep_2+56, 1, -24 );
setRotateKey( spep_2+58, 1, -22.4 );
setRotateKey( spep_2+60, 1, -20.8 );
setRotateKey( spep_2+62, 1, -20.2 );
setRotateKey( spep_2+64, 1, -19.6 );
setRotateKey( spep_2+66, 1, -19 );
setRotateKey( spep_2+68, 1, -18.4 );
setRotateKey( spep_2+70, 1, -17.8 );
setRotateKey( spep_2+72, 1, -17.2 );
setRotateKey( spep_2+74, 1, -16.6 );
setRotateKey( spep_2+76, 1, -16 );
setRotateKey( spep_2+78, 1, -15.4 );
setRotateKey( spep_2+80, 1, -14.8 );
setRotateKey( spep_2+82, 1, -14.2 );
setRotateKey( spep_2+85, 1, -13.6 );
setRotateKey( spep_2+86, 1, -24.6 );
setRotateKey( spep_2+99, 1, -24.6 );
setRotateKey( spep_2+100, 1, -37.9 );
setRotateKey( spep_2+129, 1, -37.9 );
setRotateKey( spep_2+130, 1, -24.5 );
setRotateKey( spep_2+209, 1, -24.5 );


--***フェードと背景***
entryFadeBg(spep_2, 0, 250, 0, 0, 0, 0, 220);  -- 黒背景
entryFade(spep_2+244, 4, 4, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--***SE***
playSe(  spep_2+20,  1000);  --パンチ
playSe(  spep_2+32,  1006);  --パンチ
playSe(  spep_2+42,  1001);  --パンチ
playSe(  spep_2+52,  1002);  --蹴り
playSe(  spep_2+86,  1001);  --蹴り
playSe(  spep_2+100,  1000);
playSe(  spep_2+108,  1001);
playSe(  spep_2+118,  1000);
playSe(  spep_2+130,  1008);
playSe(  spep_2+148,  43);  --瞬間移動
playSe(  spep_2+190,  43);  --瞬間移動
playSe(  spep_2+210,  1011);

------------------------------------------------------
-- 溜め(100F)
------------------------------------------------------
spep_3 = spep_2+250;

--***溜め***
tame = entryEffect(  spep_3,  SP_13,  0x100,  -1,  0,  0,  0);  --溜め

setEffScaleKey(  spep_3,  tame,  1.0,  1.0);
setEffScaleKey(  spep_3+100,  tame,  1.0,  1.0);
setEffMoveKey(  spep_3,  tame,  0,  0);
setEffMoveKey(  spep_3+100,  tame,  0,  0);
setEffRotateKey(  spep_3,  tame,  0);
setEffRotateKey(  spep_3+100,  tame,  0);
setEffAlphaKey(  spep_3,  tame,  255);
setEffAlphaKey(  spep_3+100,  tame,  255);

--***カットイン***
--speff = entryEffect(  spep_3+14,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  spep_3+14,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

--***集中線***
shuchusen3 = entryEffectLife( spep_3, 906, 100, 0x100,  -1, 0,  0,  0);   -- 集中線

setEffScaleKey(  spep_3,  shuchusen3,  1.32,  1.92);
setEffScaleKey(  spep_3+100,  shuchusen3,  1.32,  1.92);
setEffMoveKey(  spep_3,  shuchusen3,  0,  0);
setEffMoveKey(  spep_3+100,  shuchusen3,  0,  0);
setEffRotateKey(  spep_3,  shuchusen3,  0);
setEffRotateKey(  spep_3+100,  shuchusen3,  0);
setEffAlphaKey(  spep_3,  shuchusen3,  255);
setEffAlphaKey(  spep_3+100,  shuchusen3,  255);

-- 書き文字エントリー --
ctgogo = entryEffectLife( spep_3+32, 190006, 67, 0x100, -1, 0, 0, 510);    -- ゴゴゴゴ

setEffAlphaKey( spep_3+32, ctgogo, 255 );
setEffAlphaKey( spep_3+90, ctgogo, 255 );
setEffAlphaKey( spep_3+91, ctgogo, 255 );
setEffAlphaKey( spep_3+92, ctgogo, 191 );
setEffAlphaKey( spep_3+94, ctgogo, 128 );
setEffAlphaKey( spep_3+96, ctgogo, 64 );
setEffAlphaKey( spep_3+99, ctgogo, 0 );
setEffRotateKey(  spep_3+32,  ctgogo,  0);
setEffRotateKey(  spep_3+99,  ctgogo,  0);
setEffScaleKey(  spep_3+32,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_3+90,  ctgogo,  -0.7,  0.7);


setEffScaleKey( spep_3+99, ctgogo, -1.07, 1.07 );
setEffMoveKey(  spep_3+32,  ctgogo,  0,  530);
setEffMoveKey(  spep_3+99,  ctgogo,  0,  530);

--***流線***
ryusen2 = entryEffectLife( spep_3, 914, 100, 0x80,  -1, 0,  0,  0);   -- 流線

setEffScaleKey(  spep_3,  ryusen2,  2.88,  1.27);
setEffScaleKey(  spep_3+100,  ryusen2,  2.88,  1.27);
setEffMoveKey(  spep_3,  ryusen2,  0,  0);
setEffMoveKey(  spep_3+100,  ryusen2,  0,  0);
setEffRotateKey(  spep_3,  ryusen2,  63);
setEffRotateKey(  spep_3+100,  ryusen2,  63);
setEffAlphaKey(  spep_3,  ryusen2,  255);
setEffAlphaKey(  spep_3+100,  ryusen2,  255);

--***フェードと背景***
entryFadeBg(spep_3, 0, 100, 0, 0, 0, 0, 220);  -- 黒背景

--***SE***
playSe(  spep_3,  1036);
playSe(  spep_3+20,  1036);
playSe(  spep_3+32,  SE_04);  --カットイン

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
spep_4 = spep_3+100;

--***フェードと背景***
entryFade( spep_4-6, 3, 5, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

playSe( spep_4, SE_05);
speff = entryEffect(  spep_4,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

shuchusen4 = entryEffectLife( spep_4, 906, 90, 0x100,  -1, 0,  0,  0);

setEffMoveKey(  spep_4,  shuchusen4,  0,  0);
setEffMoveKey(  spep_4+90,  shuchusen4,  0,  0);
setEffScaleKey(  spep_4,  shuchusen4,  1.6,  1.6);
setEffScaleKey(  spep_4+90,  shuchusen4,  1.6,  1.6);
setEffRotateKey(  spep_4,  shuchusen4,  0);
setEffRotateKey(  spep_4+90,  shuchusen4,  0);
setEffAlphaKey(  spep_4,  shuchusen4,  255);
setEffAlphaKey(  spep_4+90,  shuchusen4,  255);

--***フェードと背景***
entryFade( spep_4+80, 6, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 放つ(160F)
------------------------------------------------------
spep_5 = spep_4+90;

--***集中線***
shuchusen5 = entryEffectLife( spep_5, 906, 180, 0x100,  -1, 0,  0,  0);   -- 集中線

setEffScaleKey(  spep_5,  shuchusen5,  1.41,  1.37);
setEffScaleKey(  spep_5+180,  shuchusen5,  1.41,  1.37);
setEffMoveKey(  spep_5,  shuchusen5,  0,  0);
setEffMoveKey(  spep_5+180,  shuchusen5,  0,  0);
setEffRotateKey(  spep_5,  shuchusen5,  0);
setEffRotateKey(  spep_5+180,  shuchusen5,  0);
setEffAlphaKey(  spep_5,  shuchusen5,  255);
setEffAlphaKey(  spep_5+180,  shuchusen5,  255);

--***書き文字***
ct_zuo2 = entryEffectLife( spep_5+16,  10012, 62, 0x100, -1, 0, 78.7, 260.5 );  --ズオ

setEffShake(  spep_5+16,  ct_zuo2,  62,  20);  --揺れ
setEffMoveKey( spep_5+16, ct_zuo2, 78.7, 260.5 , 0 );
setEffMoveKey( spep_5+18, ct_zuo2, 105, 288.6 , 0 );
setEffMoveKey( spep_5+20, ct_zuo2, 117.9, 330.1 , 0 );
setEffMoveKey( spep_5+22, ct_zuo2, 153.7, 348.8 , 0 );
setEffMoveKey( spep_5+24, ct_zuo2, 137.7, 364.8 , 0 );
setEffMoveKey( spep_5+68, ct_zuo2, 137.7, 364.8 , 0 );
setEffMoveKey( spep_5+70, ct_zuo2, 173.1, 345.5 , 0 );
setEffMoveKey( spep_5+72, ct_zuo2, 166.7, 367.9 , 0 );
setEffMoveKey( spep_5+74, ct_zuo2, 211.6, 339 , 0 );
setEffMoveKey( spep_5+76, ct_zuo2, 195.7, 370.9 , 0 );
setEffMoveKey( spep_5+78, ct_zuo2, 210.3, 372.4 , 0 );
setEffScaleKey( spep_5+16, ct_zuo2, 0.34, 0.34 );
setEffScaleKey( spep_5+18, ct_zuo2, 1.13, 1.13 );
setEffScaleKey( spep_5+20, ct_zuo2, 1.94, 1.94 );
setEffScaleKey( spep_5+22, ct_zuo2, 2.73, 2.73 );
setEffScaleKey( spep_5+68, ct_zuo2, 2.73, 2.73 );
setEffScaleKey( spep_5+70, ct_zuo2, 3.55, 3.55 );
setEffScaleKey( spep_5+72, ct_zuo2, 4.37, 4.37 );
setEffScaleKey( spep_5+74, ct_zuo2, 5.19, 5.19 );
setEffScaleKey( spep_5+76, ct_zuo2, 6.01, 6.01 );
setEffScaleKey( spep_5+78, ct_zuo2, 6.82, 6.82 );
setEffRotateKey( spep_5+16, ct_zuo2, 27.2 );
setEffAlphaKey( spep_5+16, ct_zuo2, 255 );
setEffAlphaKey( spep_5+68, ct_zuo2, 255 );
setEffAlphaKey( spep_5+70, ct_zuo2, 204 );
setEffAlphaKey( spep_5+72, ct_zuo2, 153 );
setEffAlphaKey( spep_5+74, ct_zuo2, 102 );
setEffAlphaKey( spep_5+76, ct_zuo2, 51 );
setEffAlphaKey( spep_5+78, ct_zuo2, 0 );


ct_zdodo= entryEffectLife( spep_5+90,  10014, 88, 0x100, -1, 0, 77, 333.2 );

setEffShake(  spep_5+90,  ct_zdodo,  88,  20);  --揺れ
setEffMoveKey( spep_5+90, ct_zdodo, 77, 333.2 , 0 );
setEffMoveKey( spep_5+178, ct_zdodo, 77, 333.2 , 0 );
setEffScaleKey( spep_5+90, ct_zdodo, 2.73, 2.73 );
setEffScaleKey( spep_5+178, ct_zdodo, 2.73, 2.73 );
setEffRotateKey( spep_5+90, ct_zdodo, 0.5 );
setEffRotateKey( spep_5+178, ct_zdodo, 0.5 );
setEffAlphaKey( spep_5+90,ct_zdodo, 255 );
setEffAlphaKey( spep_5+178,ct_zdodo, 255 );


semaru_f = entryEffect(  spep_5+90,  SP_05,  0x100,  -1,  0,  0,  0);  --溜め

setEffScaleKey(  spep_5+90,  semaru_f,  1.0,  1.0);
setEffScaleKey(  spep_5+180,  semaru_f,  1.0,  1.0);
setEffMoveKey(  spep_5+90,  semaru_f,  0,  0);
setEffMoveKey(  spep_5+180,  semaru_f,  0,  0);
setEffRotateKey(  spep_5+90,  semaru_f,  0);
setEffRotateKey(  spep_5+180,  semaru_f,  0);
setEffAlphaKey(  spep_5+90,  semaru_f,  255);
setEffAlphaKey(  spep_5+180,  semaru_f,  255);

--***敵の動き***
setDisp(  spep_5+90,  1,  1);
setDisp(  spep_5+178,  1,  0);  --敵消す
changeAnime(  spep_5+90,  1,  106);  --仰け反り

setShakeChara(  spep_5+90,  1,  88,  20);
setMoveKey( spep_5+90, 1, -261.3, 356 , 0 );
setMoveKey( spep_5+92, 1, -241.3, 302.1 , 0 );
setMoveKey( spep_5+94, 1, -213.4, 304.1 , 0 );
setMoveKey( spep_5+96, 1, -193.5, 262.2 , 0 );
setMoveKey( spep_5+98, 1, -165.5, 252.2 , 0 );
setMoveKey( spep_5+100, 1, -145.6, 210.3 , 0 );
setMoveKey( spep_5+102, 1, -117.7, 200.4 , 0 );
setMoveKey( spep_5+104, 1, -111.8, 165.2 , 0 );
setMoveKey( spep_5+106, 1, -98, 154.1 , 0 );
setMoveKey( spep_5+108, 1, -92.1, 119 , 0 );
setMoveKey( spep_5+110, 1, -78.2, 107.9 , 0 );
setMoveKey( spep_5+112, 1, -72.3, 72.8 , 0 );
setMoveKey( spep_5+114, 1, -58.5, 61.7 , 0 );
setMoveKey( spep_5+116, 1, -52.6, 26.5 , 0 );
setMoveKey( spep_5+118, 1, -38.7, 15.4 , 0 );
setMoveKey( spep_5+120, 1, -32.8, -19.7 , 0 );
setMoveKey( spep_5+122, 1, -19, -30.8 , 0 );
setMoveKey( spep_5+124, 1, -13.1, -65.9 , 0 );
setMoveKey( spep_5+126, 1, 0.8, -77 , 0 );
setMoveKey( spep_5+128, 1, 6.7, -108.2 , 0 );
setMoveKey( spep_5+130, 1, 20.6, -123.3 , 0 );
setMoveKey( spep_5+132, 1, 26.5, -154.4 , 0 );
setMoveKey( spep_5+134, 1, 40.3, -169.5 , 0 );
setMoveKey( spep_5+136, 1, 46.2, -200.6 , 0 );
setMoveKey( spep_5+138, 1, 60.1, -215.8 , 0 );
setMoveKey( spep_5+140, 1, 66, -242.9 , 0 );
setMoveKey( spep_5+142, 1, 79.9, -262 , 0 );
setMoveKey( spep_5+144, 1, 81.8, -293.1 , 0 );
setMoveKey( spep_5+146, 1, 99.6, -308.2 , 0 );
setMoveKey( spep_5+148, 1, 105.5, -335.4 , 0 );
setMoveKey( spep_5+150, 1, 153.7, -416.9 , 0 );
setMoveKey( spep_5+152, 1, 204.7, -538.8 , 0 );
setMoveKey( spep_5+154, 1, 286.4, -673.3 , 0 );
setMoveKey( spep_5+156, 1, 366.8, -852.2 , 0 );
setMoveKey( spep_5+158, 1, 477.9, -1043.7 , 0 );
setMoveKey( spep_5+160, 1, 583.8, -1275.6 , 0 );
setMoveKey( spep_5+162, 1, 728.4, -1528 , 0 );
setMoveKey( spep_5+164, 1, 863.7, -1816.8 , 0 );
setMoveKey( spep_5+166, 1, 1037.7, -2126.2 , 0 );
setMoveKey( spep_5+168, 1, 1202.5, -2471.9 , 0 );
setMoveKey( spep_5+170, 1, 1406, -2838.2 , 0 );
setMoveKey( spep_5+172, 1, 1600.1, -3240.8 , 0 );
setMoveKey( spep_5+174, 1, 1833, -3664 , 0 );
setMoveKey( spep_5+176, 1, 2056.6, -4123.5 , 0 );
setMoveKey( spep_5+178, 1, 2318.9, -4603.5 , 0 );
setScaleKey( spep_5+90, 1, 0.83, 0.83 );
setScaleKey( spep_5+92, 1, 0.93, 0.93 );
setScaleKey( spep_5+94, 1, 1.03, 1.03 );
setScaleKey( spep_5+96, 1, 1.14, 1.14 );
setScaleKey( spep_5+98, 1, 1.24, 1.24 );
setScaleKey( spep_5+100, 1, 1.35, 1.35 );
setScaleKey( spep_5+102, 1, 1.45, 1.45 );
setScaleKey( spep_5+104, 1, 1.51, 1.51 );
setScaleKey( spep_5+106, 1, 1.57, 1.57 );
setScaleKey( spep_5+108, 1, 1.64, 1.64 );
setScaleKey( spep_5+110, 1, 1.7, 1.7 );
setScaleKey( spep_5+112, 1, 1.76, 1.76 );
setScaleKey( spep_5+114, 1, 1.82, 1.82 );
setScaleKey( spep_5+116, 1, 1.89, 1.89 );
setScaleKey( spep_5+118, 1, 1.95, 1.95 );
setScaleKey( spep_5+120, 1, 2.01, 2.01 );
setScaleKey( spep_5+122, 1, 2.07, 2.07 );
setScaleKey( spep_5+124, 1, 2.13, 2.13 );
setScaleKey( spep_5+126, 1, 2.2, 2.2 );
setScaleKey( spep_5+128, 1, 2.26, 2.26 );
setScaleKey( spep_5+130, 1, 2.32, 2.32 );
setScaleKey( spep_5+132, 1, 2.38, 2.38 );
setScaleKey( spep_5+134, 1, 2.44, 2.44 );
setScaleKey( spep_5+136, 1, 2.51, 2.51 );
setScaleKey( spep_5+138, 1, 2.57, 2.57 );
setScaleKey( spep_5+140, 1, 2.63, 2.63 );
setScaleKey( spep_5+142, 1, 2.69, 2.69 );
setScaleKey( spep_5+144, 1, 2.76, 2.76 );
setScaleKey( spep_5+146, 1, 2.82, 2.82 );
setScaleKey( spep_5+148, 1, 2.88, 2.88 );
setScaleKey( spep_5+150, 1, 3.23, 3.23 );
setScaleKey( spep_5+152, 1, 3.71, 3.71 );
setScaleKey( spep_5+154, 1, 4.3, 4.3 );
setScaleKey( spep_5+156, 1, 5.01, 5.01 );
setScaleKey( spep_5+158, 1, 5.83, 5.83 );
setScaleKey( spep_5+160, 1, 6.78, 6.78 );
setScaleKey( spep_5+162, 1, 7.84, 7.84 );
setScaleKey( spep_5+164, 1, 9.02, 9.02 );
setScaleKey( spep_5+166, 1, 10.32, 10.32 );
setScaleKey( spep_5+168, 1, 11.74, 11.74 );
setScaleKey( spep_5+170, 1, 13.28, 13.28 );
setScaleKey( spep_5+172, 1, 14.93, 14.93 );
setScaleKey( spep_5+174, 1, 16.7, 16.7 );
setScaleKey( spep_5+176, 1, 18.59, 18.59 );
setScaleKey( spep_5+178, 1, 20.6, 20.6 );
setRotateKey( spep_5+90, 1, -159.5 );
setRotateKey( spep_5+92, 1, -159.5 );
setRotateKey( spep_5+94, 1, -159.6 );
setRotateKey( spep_5+98, 1, -159.6 );
setRotateKey( spep_5+100, 1, -159.7 );
setRotateKey( spep_5+112, 1, -159.7 );
setRotateKey( spep_5+114, 1, -159.6 );
setRotateKey( spep_5+136, 1, -159.6 );
setRotateKey( spep_5+138, 1, -159.5 );
setRotateKey( spep_5+148, 1, -159.5 );
setRotateKey( spep_5+150, 1, -159.6 );
setRotateKey( spep_5+152, 1, -159.6 );
setRotateKey( spep_5+154, 1, -159.8 );
setRotateKey( spep_5+156, 1, -159.9 );
setRotateKey( spep_5+158, 1, -160 );
setRotateKey( spep_5+160, 1, -160.2 );
setRotateKey( spep_5+162, 1, -160.4 );
setRotateKey( spep_5+164, 1, -160.6 );
setRotateKey( spep_5+166, 1, -160.8 );
setRotateKey( spep_5+168, 1, -161.1 );
setRotateKey( spep_5+170, 1, -161.4 );
setRotateKey( spep_5+172, 1, -161.7 );
setRotateKey( spep_5+174, 1, -162 );
setRotateKey( spep_5+176, 1, -162.3 );
setRotateKey( spep_5+178, 1, -162.7 );


--***放つ***
hanatsu = entryEffect(  spep_5,  SP_14,  0x100,  -1,  0,  0,  0);  --溜め

setEffScaleKey(  spep_5,  hanatsu,  1.0,  1.0);
setEffScaleKey(  spep_5+90,  hanatsu,  1.0,  1.0);
setEffMoveKey(  spep_5,  hanatsu,  0,  0);
setEffMoveKey(  spep_5+90,  hanatsu,  0,  0);
setEffRotateKey(  spep_5,  hanatsu,  0);
setEffRotateKey(  spep_5+90,  hanatsu,  0);
setEffAlphaKey(  spep_5,  hanatsu,  255);
setEffAlphaKey(  spep_5+90,  hanatsu,  255);


--***迫る***
semaru_b = entryEffect(  spep_5+90,  SP_05a,  0x80,  -1,  0,  0,  0);  --

setEffScaleKey(  spep_5+90,  semaru_b,  1.0,  1.0);
setEffScaleKey(  spep_5+180,  semaru_b,  1.0,  1.0);
setEffMoveKey(  spep_5+90,  semaru_b,  0,  0);
setEffMoveKey(  spep_5+180,  semaru_b,  0,  0);
setEffRotateKey(  spep_5+90,  semaru_b,  0);
setEffRotateKey(  spep_5+180,  semaru_b,  0);
setEffAlphaKey(  spep_5+90,  semaru_b,  255);
setEffAlphaKey(  spep_5+180,  semaru_b,  255);

--***流線***
ryusen3 = entryEffectLife( spep_5, 914, 90, 0x80,  -1, 0,  0,  0);   -- 流線

setEffScaleKey(  spep_5,  ryusen3,  2.88,  1.27);
setEffScaleKey(  spep_5+90,  ryusen3,  2.88,  1.27);
setEffMoveKey(  spep_5,  ryusen3,  0,  0);
setEffMoveKey(  spep_5+90,  ryusen3,  0,  0);
setEffRotateKey(  spep_5,  ryusen3,  63);
setEffRotateKey(  spep_5+90,  ryusen3,  63);
setEffAlphaKey(  spep_5,  ryusen3,  255);
setEffAlphaKey(  spep_5+90,  ryusen3,  255);

ryusen4 = entryEffectLife( spep_5, 921, 180, 0x80,  -1, 0,  0,  0);   -- 流線広がり

setEffScaleKey(  spep_5,  ryusen4,  1.88,  1.38);
setEffScaleKey(  spep_5+180,  ryusen4,  1.88,  1.38);
setEffMoveKey(  spep_5,  ryusen4,  0,  0);
setEffMoveKey(  spep_5+180,  ryusen4,  0,  0);
setEffRotateKey(  spep_5,  ryusen4,  -122.7);
setEffRotateKey(  spep_5+180,  ryusen4,  -122.7);
setEffAlphaKey(  spep_5,  ryusen4,  0);
setEffAlphaKey(  spep_5+90,  ryusen4,  0);
setEffAlphaKey(  spep_5+91,  ryusen4,  255);
setEffAlphaKey(  spep_5+92,  ryusen4,  255);
setEffAlphaKey(  spep_5+180,  ryusen4,  255);

--***SE***
playSe(  spep_5,  1036);
playSe(  spep_5+18,  SE_06);
playSe(  spep_5+90,  SE_07);

--***フェードと背景***
entryFadeBg(spep_5, 0, 180, 0, 0, 0, 0, 220);  -- 黒背景
entryFade( spep_5+14, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_5+78, 10, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_5+160, 18, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- ギャン黄(60F)
------------------------------------------------------
spep_6 = spep_5+180;

--***書き文字***
ct_gyan = entryEffectLife( spep_6,  10006, 58, 0x100, -1, 0, 8.8, 313 );  --書き文字

setEffMoveKey( spep_6, ct_gyan, 8.8, 313 , 0 );
setEffMoveKey( spep_6+58, ct_gyan, 10.6, 319.2 , 0 );
setEffScaleKey( spep_6, ct_gyan, 2.11, 2.11 );
setEffScaleKey( spep_6+58, ct_gyan, 4.23, 4.23 );
setEffRotateKey( spep_6, ct_gyan, -5.2 );
setEffRotateKey( spep_6+58, ct_gyan, -5.2 );
setEffAlphaKey( spep_6, ct_gyan, 255 );
setEffAlphaKey( spep_6+58, ct_gyan, 255 );

--***ギャン黄色***
gyan = entryEffectLife( spep_6, 190003, 60, 0x80 , -1, 0, 0, 0);  --ギャン

setEffScaleKey( spep_6,  gyan,  1.0, 1.0);
setEffMoveKey( spep_6,  gyan,  0,  0);
setEffRotateKey( spep_6,  gyan,  0);
setEffAlphaKey( spep_6,  gyan,  255);
setEffScaleKey( spep_6+60,  gyan,  1.0, 1.0);
setEffMoveKey( spep_6+60,  gyan,  0,  0);
setEffRotateKey( spep_6+60,  gyan,  0);
setEffAlphaKey( spep_6+60,  gyan,  255);

entryFade( spep_6+26, 30, 4, 18, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--***SE***
playSe(  spep_6,  1023);  --ギャン

------------------------------------------------------
-- 爆発(180F)
------------------------------------------------------
spep_7 = spep_6+60;

--***集中線***
shuchusen7 = entryEffectLife( spep_7, 906, 180, 0x100,  -1, 0,  0,  0);   -- 集中線

setEffScaleKey(  spep_7,  shuchusen7,  1.11,  1.07);
setEffScaleKey(  spep_7+180,  shuchusen7,  1.11,  1.07);
setEffMoveKey(  spep_7,  shuchusen7,  0,  0);
setEffMoveKey(  spep_7+180,  shuchusen7,  0,  0);
setEffRotateKey(  spep_7,  shuchusen7,  0);
setEffRotateKey(  spep_7+180,  shuchusen7,  0);
setEffAlphaKey(  spep_7,  shuchusen7,  255);
setEffAlphaKey(  spep_7+180,  shuchusen7,  255);

bakuhatsu = entryEffect(  spep_7,  1563,  0X80,  -1,  0,  0,  0);  --爆発

setEffScaleKey(  spep_7,  bakuhatsu,  1.0,  1.0);
setEffScaleKey(  spep_7+180,  bakuhatsu,  1.0,   1.0);
setEffMoveKey(  spep_7,  bakuhatsu,  0,  0);
setEffMoveKey(  spep_7+180,  bakuhatsu,  0,  0);
setEffRotateKey(  spep_7, bakuhatsu,  0);
setEffRotateKey(  spep_7+180,  bakuhatsu,  0);
setEffAlphaKey(  spep_7,  bakuhatsu,  255);
setEffAlphaKey(  spep_7+180,  bakuhatsu,  255);

--***SE***
playSe(  spep_7,  SE_10);  --爆発

-- ダメージ表示
dealDamage(spep_7+50);
endPhase(spep_7+150);



end
