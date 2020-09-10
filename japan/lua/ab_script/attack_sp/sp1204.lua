--1014970　悟空&フリーザ　第7宇宙の奇跡 sp1204

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
SP_01=152111;  --突進
SP_02=152112;  --突進奥
SP_03=152113;  --岩山に吹き飛ぶ
SP_04=152114;  --石に飛び移り
SP_05=152115;  --押し込み
SP_06=152116;  --押し込み奥
SP_07=152117;  --飛び出す
SP_08=152118;  --飛び出す奥
SP_09=152119;  --フリーザ投げる
SP_10=152120;  --吹っ飛んだ敵の背景
SP_11=152121;  --フリーザ激突
SP_12=152122;  --悟空突進
SP_13=152123;  --突進してががが
SP_14=152124;  --アップ
SP_15=152125;  --爆発

--敵側
SP_16=152126;  --敵：突進
SP_17=152127;  --敵：突進奥
SP_18=152128;  --敵：飛び出し
SP_19=152129;  --敵：突進してががが


------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

setDisp( 0, 1, 0);
setDisp( 0, 0, 0);
setMoveKey(   0,   0,    0, -5000,   0);
setMoveKey(   0,   1,    0, -5000,   0);
setMoveKey(   1,   0,    0, -5000,   0);
setMoveKey(   1,   1,    0, -5000,   0);
setMoveKey(   2,   0,    0, -5000,   0);
setMoveKey(   2,   1,    0, -5000,   0);
setMoveKey(   3,   0,    0, -5000,   0);
setMoveKey(   3,   1,    0, -5000,   0);
setMoveKey(   4,   0,    0, -5000,   0);
setMoveKey(   4,   1,    0, -5000,   0);
setMoveKey(   5,   0,    0, -5000,   0);
setMoveKey(   5,   1,    0, -5000,   0);

setScaleKey(   0,   0, 1.6, 1.6);
setScaleKey(   0,   1, 1.6, 1.6);
setRotateKey(   0,   1, 0);
setRotateKey(   0,   0, 0);


multi_frm = 2;

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then
------------------------------------------------------
-- 味方側
------------------------------------------------------

------------------------------------------------------
-- 突進
------------------------------------------------------
spep_1 = 0;

--***集中線***
shuchusen1 = entryEffectLife( spep_1+10, 906, 60, 0x100,  -1, 0,  0,  0);   -- 集中線

setEffScaleKey(  spep_1+10,  shuchusen1,  1.61,  1.63);
setEffScaleKey(  spep_1+70,  shuchusen1,  1.61,  1.63);
setEffMoveKey(  spep_1+10,  shuchusen1,  0,  0);
setEffMoveKey(  spep_1+70,  shuchusen1,  0,  0);
setEffRotateKey(  spep_1+10,  shuchusen1,  0);
setEffRotateKey(  spep_1+70,  shuchusen1,  0);
setEffAlphaKey(  spep_1+10,  shuchusen1,  255);
setEffAlphaKey(  spep_1+70,  shuchusen1,  255);

--***書き文字***
ct_don = entryEffectLife( spep_1+12,  10019, 16, 0x100, -1, 0, 13.8, 227.6 );  --ドンッ

setEffMoveKey( spep_1+12, ct_don, 13.8, 227.6 , 0 );
setEffMoveKey( spep_1+14, ct_don, -8.9, 253.4 , 0 );
setEffMoveKey( spep_1+16, ct_don, -10.6, 275.9 , 0 );
setEffMoveKey( spep_1+18, ct_don, -19.8, 284.9 , 0 );
setEffMoveKey( spep_1+20, ct_don, -7.5, 278 , 0 );
setEffMoveKey( spep_1+22, ct_don, -19.7, 278.4 , 0 );
setEffMoveKey( spep_1+24, ct_don, -13.3, 286.7 , 0 );
setEffMoveKey( spep_1+26, ct_don, -13.1, 274.6 , 0 );
setEffMoveKey( spep_1+28, ct_don, -13.1, 275.1 , 0 );
setEffScaleKey( spep_1+12, ct_don, 1.29, 1.29 );
setEffScaleKey( spep_1+14, ct_don, 1.63, 1.63 );
setEffScaleKey( spep_1+16, ct_don, 1.98, 1.98 );
setEffScaleKey( spep_1+18, ct_don, 2, 2 );
setEffScaleKey( spep_1+20, ct_don, 2.02, 2.02 );
setEffScaleKey( spep_1+22, ct_don, 2.04, 2.04 );
setEffScaleKey( spep_1+24, ct_don, 2.05, 2.05 );
setEffScaleKey( spep_1+26, ct_don, 2.06, 2.06 );
setEffScaleKey( spep_1+28, ct_don, 2.07, 2.07 );
setEffRotateKey( spep_1+12, ct_don, -0.8 );
setEffRotateKey( spep_1+14, ct_don, -0.2 );
setEffRotateKey( spep_1+16, ct_don, 0.3 );
setEffRotateKey( spep_1+28, ct_don, 0.3 );
setEffAlphaKey( spep_1+12, ct_don, 255 );
setEffAlphaKey( spep_1+22, ct_don, 255 );
setEffAlphaKey( spep_1+24, ct_don, 170 );
setEffAlphaKey( spep_1+26, ct_don, 85 );
setEffAlphaKey( spep_1+28, ct_don, 0 );

ct_ga = entryEffectLife( spep_1+40,  10005, 16, 0x100, -1, 0, 140.1, 318.9 );  --ガッ

setEffMoveKey( spep_1+40, ct_ga, 140.1, 318.9 , 0 );
setEffMoveKey( spep_1+42, ct_ga, 130.8, 331.3 , 0 );
setEffMoveKey( spep_1+44, ct_ga, 134.7, 336.2 , 0 );
setEffMoveKey( spep_1+46, ct_ga, 127.9, 338.9 , 0 );
setEffMoveKey( spep_1+48, ct_ga, 137.1, 339.9 , 0 );
setEffMoveKey( spep_1+50, ct_ga, 128.1, 345 , 0 );
setEffMoveKey( spep_1+52, ct_ga, 132.2, 343.8 , 0 );
setEffMoveKey( spep_1+54, ct_ga, 124.2, 348.8 , 0 );
setEffMoveKey( spep_1+56, ct_ga, 123.5, 350.7 , 0 );
setEffScaleKey( spep_1+40, ct_ga, 1.25, 1.25 );
setEffScaleKey( spep_1+42, ct_ga, 1.45, 1.45 );
setEffScaleKey( spep_1+44, ct_ga, 1.52, 1.52 );
setEffScaleKey( spep_1+46, ct_ga, 1.57, 1.57 );
setEffScaleKey( spep_1+48, ct_ga, 1.61, 1.61 );
setEffScaleKey( spep_1+50, ct_ga, 1.63, 1.63 );
setEffScaleKey( spep_1+52, ct_ga, 1.64, 1.64 );
setEffScaleKey( spep_1+54, ct_ga, 1.73, 1.73 );
setEffScaleKey( spep_1+56, ct_ga, 1.76, 1.76 );
setEffRotateKey( spep_1+40, ct_ga, 3 );
setEffRotateKey( spep_1+56, ct_ga, 3 );
setEffAlphaKey( spep_1+40, ct_ga, 255 );
setEffAlphaKey( spep_1+52, ct_ga, 255 );
setEffAlphaKey( spep_1+54, ct_ga, 64 );
setEffAlphaKey( spep_1+56, ct_ga, 0 );

--***エフェクト***
tosshin_b = entryEffect(  spep_1,  SP_02,  0x80,  -1,  0,  0,  0);  --突進奥

setEffScaleKey(  spep_1,  tosshin_b,  1.0,  1.0);
setEffScaleKey(  spep_1+70,  tosshin_b,  1.0,  1.0);
setEffMoveKey(  spep_1,  tosshin_b,  0,  0);
setEffMoveKey(  spep_1+70,  tosshin_b,  0,  0);
setEffRotateKey(  spep_1,  tosshin_b,  0);
setEffRotateKey(  spep_1+70,  tosshin_b,  0);
setEffAlphaKey(  spep_1,  tosshin_b,  255);
setEffAlphaKey(  spep_1+66,  tosshin_b,  255);
setEffAlphaKey(  spep_1+67,  tosshin_b,  0);
setEffAlphaKey(  spep_1+68,  tosshin_b,  0);

tosshin_f = entryEffect(  spep_1,  SP_01,  0x100,  -1,  0,  0,  0);  --突進

setEffScaleKey(  spep_1,  tosshin_f,  1.0,  1.0);
setEffScaleKey(  spep_1+70,  tosshin_f,  1.0,  1.0);
setEffMoveKey(  spep_1,  tosshin_f,  0,  0);
setEffMoveKey(  spep_1+70,  tosshin_f,  0,  0);
setEffRotateKey(  spep_1,  tosshin_f,  0);
setEffRotateKey(  spep_1+70,  tosshin_f,  0);
setEffAlphaKey(  spep_1,  tosshin_f,  255);
setEffAlphaKey(  spep_1+66,  tosshin_f,  255);
setEffAlphaKey(  spep_1+67,  tosshin_f,  0);
setEffAlphaKey(  spep_1+68,  tosshin_f,  0);

--***SE***
playSe(  spep_1+12,  1002);  --風の音

--***敵の動き***
setDisp( spep_1, 1, 1 );
changeAnime( spep_1, 1, 104 );  --構え

setMoveKey( spep_1, 1, 2522.5, 5.9 , 0 );
setMoveKey( spep_1+12, 1, 2522.5, 5.9 , 0 );
setMoveKey( spep_1+14, 1, 2349.5, -7.6 , 0 );
setMoveKey( spep_1+16, 1, 2156.8, 19.1 , 0 );
setMoveKey( spep_1+18, 1, 1992.4, -6.7 , 0 );
setMoveKey( spep_1+20, 1, 1827, 20.1 , 0 );
setMoveKey( spep_1+22, 1, 1670.2, -5.2 , 0 );
setMoveKey( spep_1+24, 1, 1520.1, 17.4 , 0 );
setMoveKey( spep_1+26, 1, 1394.2, -5.9 , 0 );
setMoveKey( spep_1+28, 1, 1258.4, 16.9 , 0 );
setMoveKey( spep_1+30, 1, 828.2, 7.1 , 0 );

--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

SP_dodge = spep_1+30 ; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

pauseAll( SP_dodge, 67);

--敵の位置
setMoveKey( SP_dodge, 1, 828.2, 7.1 , 0 );
setMoveKey( SP_dodge+2, 1, 828.2, 7.1 , 0 );
setMoveKey( SP_dodge+4, 1, 828.2, 7.1 , 0 );
setMoveKey( SP_dodge+6, 1, 828.2, 7.1 , 0 );
setMoveKey( SP_dodge+8, 1, 828.2, 7.1 , 0 );

setRotateKey( SP_dodge, 1, 0 );
setRotateKey( SP_dodge+8, 1, 0 );

setScaleKey( SP_dodge, 1, 1.5, 1.5 );
setScaleKey( SP_dodge+2, 1, 1.5, 1.5 );
setScaleKey( SP_dodge+4, 1, 1.5, 1.5 );
setScaleKey( SP_dodge+6, 1, 1.5, 1.5 );
setScaleKey( SP_dodge+8, 1, 1.5, 1.5 );

--changeAnime(  SP_dodge+9,    1,  100);
setMoveKey(  SP_dodge+9,    1,  0,  0,   0);
setMoveKey(  SP_dodge+10,    1,  0,  0,   0);
setScaleKey( SP_dodge+9,    1,  1.3, 1.3);
setScaleKey( SP_dodge+10,    1,  1.3, 1.3);
setRotateKey(   SP_dodge+9,   1, 0);
setRotateKey(   SP_dodge+10,   1, 0);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
--entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景

entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge+10);

do return end
else end

--------------------------------------
--回避されなかった場合
--------------------------------------
--**敵の動き**
setMoveKey( spep_1+32, 1, 694.1, 4.6 , 0 );
setMoveKey( spep_1+34, 1, 517.4, 11.3 , 0 );
setMoveKey( spep_1+36, 1, 370.6, 6.4 , 0 );
setMoveKey( spep_1+38, 1, 198.9, 10.9 , 0 );
setScaleKey( spep_1, 1, 1.5, 1.5 );
setScaleKey( spep_1+38, 1, 1.5, 1.5 );
setRotateKey( spep_1, 1, 0 );
setRotateKey( spep_1+38, 1, 0 );

changeAnime( spep_1+40, 1, 108 );  --くの字

setMoveKey( spep_1+40, 1, 80.5, 11.9 , 0 );
setMoveKey( spep_1+42, 1, 133.6, 66 , 0 );
setMoveKey( spep_1+44, 1, 171.9, 72.5 , 0 );
setMoveKey( spep_1+46, 1, 185.9, 97.1 , 0 );
setScaleKey( spep_1+40, 1, 1.49, 1.49 );
setScaleKey( spep_1+42, 1, 1.48, 1.48 );
setScaleKey( spep_1+44, 1, 1.48, 1.48 );
setScaleKey( spep_1+46, 1, 1.46, 1.46 );
setRotateKey( spep_1+40, 1, -10 );
setRotateKey( spep_1+42, 1, -8 );
setRotateKey( spep_1+44, 1, -6.6 );
setRotateKey( spep_1+46, 1, -5.8 );

changeAnime( spep_1+48, 1, 106 );  --仰け反り

setMoveKey( spep_1+48, 1, 191.5, 88.5 , 0 );
setMoveKey( spep_1+50, 1, 321.4, 164.3 , 0 );
setMoveKey( spep_1+52, 1, 439.6, 202.9 , 0 );
setMoveKey( spep_1+54, 1, 490.9, 253.5 , 0 );
setMoveKey( spep_1+56, 1, 446.6, 229.5 , 0 );
setMoveKey( spep_1+58, 1, 414.3, 216.5 , 0 );
setMoveKey( spep_1+60, 1, 368.9, 195.7 , 0 );
setMoveKey( spep_1+62, 1, 364.6, 179.6 , 0 );
setScaleKey( spep_1+48, 1, 1.45, 1.45 );
setScaleKey( spep_1+50, 1, 1.43, 1.43 );
setScaleKey( spep_1+52, 1, 1.43, 1.43 );
setScaleKey( spep_1+54, 1, 1.42, 1.42 );
setScaleKey( spep_1+56, 1, 1.2, 1.2 );
setScaleKey( spep_1+58, 1, 1.02, 1.02 );
setScaleKey( spep_1+60, 1, 0.9, 0.9 );
setScaleKey( spep_1+62, 1, 0.82, 0.82 );
setRotateKey( spep_1+48, 1, -5.5 );
setRotateKey( spep_1+50, 1, -4 );
setRotateKey( spep_1+52, 1, -2.7 );
setRotateKey( spep_1+54, 1, -1.5 );
setRotateKey( spep_1+56, 1, -0.6 );
setRotateKey( spep_1+58, 1, 0.1 );
setRotateKey( spep_1+60, 1, 0.6 );
setRotateKey( spep_1+62, 1, 0.9 );

--***SE***
playSe(  spep_1+40,  1011);  --ヒット音

entryFade( spep_1+40, 0, 2, 2, fcolor_r, fcolor_g, fcolor_b, 200);     -- white fade
entryFade( spep_1+62, 2, 3, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 岩山に吹き飛ぶ
------------------------------------------------------
spep_2 = spep_1+66;

--***集中線***
shuchusen2 = entryEffectLife( spep_2+24, 906, 44, 0x100,  -1, 0,  0,  0);   -- 集中線

setEffScaleKey(  spep_2+24,  shuchusen2,  1.88,  1.94);
setEffScaleKey(  spep_2+68,  shuchusen2,  1.88,  1.94);
setEffMoveKey(  spep_2+24,  shuchusen2,  0,  0);
setEffMoveKey(  spep_2+68,  shuchusen2,  0,  0);
setEffRotateKey(  spep_2+24,  shuchusen2,  0);
setEffRotateKey(  spep_2+68,  shuchusen2,  0);
setEffAlphaKey(  spep_2+24,  shuchusen2,  255);
setEffAlphaKey(  spep_2+68,  shuchusen2,  255);

--***集中線***
ct_dogo = entryEffectLife( spep_2+21,  10018, 23, 0x100, -1, 0, 6.8, 357.8 );  --ドゴォン

setEffMoveKey( spep_2+21, ct_dogo, 6.8, 357.8 , 0 );
setEffMoveKey( spep_2+22, ct_dogo, 6.8, 357.8 , 0 );
setEffMoveKey( spep_2+24, ct_dogo, 7.4, 376.7 , 0 );
setEffMoveKey( spep_2+26, ct_dogo, 11.3, 389 , 0 );
setEffMoveKey( spep_2+28, ct_dogo, 7.9, 391.9 , 0 );
setEffMoveKey( spep_2+30, ct_dogo, 10.4, 406.1 , 0 );
setEffMoveKey( spep_2+32, ct_dogo, 11, 404.6 , 0 );
setEffMoveKey( spep_2+34, ct_dogo, 6.1, 411.4 , 0 );
setEffMoveKey( spep_2+36, ct_dogo, 13.1, 412.7 , 0 );
setEffMoveKey( spep_2+38, ct_dogo, 9.3, 413.6 , 0 );
setEffMoveKey( spep_2+40, ct_dogo, 5.8, 426.6 , 0 );
setEffMoveKey( spep_2+42, ct_dogo, 9, 447.1 , 0 );
setEffMoveKey( spep_2+44, ct_dogo, 8.9, 450.8 , 0 );
setEffScaleKey( spep_2+21, ct_dogo, 2.61, 2.61 );
setEffScaleKey( spep_2+22, ct_dogo, 2.61, 2.61 );
setEffScaleKey( spep_2+24, ct_dogo, 2.8, 2.8 );
setEffScaleKey( spep_2+26, ct_dogo, 2.86, 2.86 );
setEffScaleKey( spep_2+38, ct_dogo, 2.86, 2.86 );
setEffScaleKey( spep_2+40, ct_dogo, 3.27, 3.27 );
setEffScaleKey( spep_2+42, ct_dogo, 3.51, 3.51 );
setEffScaleKey( spep_2+44, ct_dogo, 3.59, 3.59 );
setEffRotateKey( spep_2+21, ct_dogo, -0.9 );
setEffRotateKey( spep_2+22, ct_dogo, -0.9 );
setEffRotateKey( spep_2+44, ct_dogo, -0.9 );
setEffAlphaKey( spep_2+21, ct_dogo, 255 );
setEffAlphaKey( spep_2+22, ct_dogo, 255 );
setEffAlphaKey( spep_2+38, ct_dogo, 255 );
setEffAlphaKey( spep_2+40, ct_dogo, 113 );
setEffAlphaKey( spep_2+42, ct_dogo, 28 );
setEffAlphaKey( spep_2+44, ct_dogo, 0 );

--***敵の動き***
setDisp( spep_2, 1, 1 );
changeAnime( spep_2, 1, 105 );  --吹き飛び

setMoveKey( spep_2, 1, 25.9, -234.1 , 0 );
setMoveKey( spep_2+2, 1, 37.5, -380.9 , 0 );
setMoveKey( spep_2+4, 1, 37.1, -408.8 , 0 );
setMoveKey( spep_2+6, 1, 32.6, -377.3 , 0 );
setMoveKey( spep_2+8, 1, 26.9, -311.1 , 0 );
setMoveKey( spep_2+10, 1, 21.2, -228.1 , 0 );
setMoveKey( spep_2+12, 1, 16.8, -143.7 , 0 );
setMoveKey( spep_2+14, 1, 12.7, -56.8 , 0 );
setMoveKey( spep_2+16, 1, 10, 16.8 , 0 );
setMoveKey( spep_2+18, 1, 8, 80.6 , 0 );
setMoveKey( spep_2+20, 1, 6.8, 124.8 , 0 );
--setMoveKey( spep_2+22, 1, 6.3, 151.5 , 0 );
setScaleKey( spep_2, 1, 3.21, 3.21 );
setScaleKey( spep_2+2, 1, 5.11, 5.11 );
setScaleKey( spep_2+4, 1, 5.54, 5.54 );
setScaleKey( spep_2+6, 1, 5.23, 5.23 );
setScaleKey( spep_2+8, 1, 4.6, 4.6 );
setScaleKey( spep_2+10, 1, 3.8, 3.8 );
setScaleKey( spep_2+12, 1, 2.94, 2.94 );
setScaleKey( spep_2+14, 1, 2.14, 2.14 );
setScaleKey( spep_2+16, 1, 1.41, 1.41 );
setScaleKey( spep_2+18, 1, 0.82, 0.82 );
setScaleKey( spep_2+20, 1, 0.38, 0.38 );
--setScaleKey( spep_2+22, 1, 0.11, 0.11 );
setRotateKey( spep_2, 1, -19.3 );
setRotateKey( spep_2+20, 1, -19.3 );

setDisp( spep_2+21, 1, 0 );  --敵消す


--***吹き飛び背景***
fukitobiBG = entryEffect(  spep_2,  SP_03,  0x80,  -1,  0,  0,  0);  --岩山背景

setEffScaleKey(  spep_2,  fukitobiBG,  1.0,  1.0);
setEffScaleKey(  spep_2+68,  fukitobiBG,  1.0,  1.0);
setEffMoveKey(  spep_2,  fukitobiBG,  0,  0);
setEffMoveKey(  spep_2+68,  fukitobiBG,  0,  0);
setEffRotateKey(  spep_2,  fukitobiBG,  0);
setEffRotateKey(  spep_2+68,  fukitobiBG,  0);
setEffAlphaKey(  spep_2,  fukitobiBG,  255);
setEffAlphaKey(  spep_2+68,  fukitobiBG,  255);

--***SE***
playSe(  spep_2+21,  1023);  --岩にあたる

entryFade( spep_2+67, 0, 1, 1, fcolor_r, fcolor_g, fcolor_b, 200);     -- white fade

------------------------------------------------------
-- 岩を高速移動
------------------------------------------------------
spep_3 = spep_2+68;

--***集中線***
shuchusen3 = entryEffectLife( spep_3+58, 906, 64, 0x100,  -1, 0,  0,  0);   -- 集中線

setEffScaleKey(  spep_3+58,  shuchusen3,  1.21,  1.21);  --フリーザ集中線
setEffScaleKey(  spep_3+74,  shuchusen3,  1.01,  1.01);
setEffScaleKey(  spep_3+104,  shuchusen3,  1.42,  1.42);  --悟空集中線
setEffScaleKey(  spep_3+122,  shuchusen3,  1.01,  1.01);  
setEffMoveKey(  spep_3+58,  shuchusen3,  0,  0);
setEffMoveKey(  spep_3+122,  shuchusen3,  0,  0);
setEffRotateKey(  spep_3+58,  shuchusen3,  0);
setEffRotateKey(  spep_3+122,  shuchusen3,  0);
setEffAlphaKey(  spep_3+58,  shuchusen3,  255);
setEffAlphaKey(  spep_3+74,  shuchusen3,  255);
setEffAlphaKey(  spep_3+75,  shuchusen3,  0);  --非表示
setEffAlphaKey(  spep_3+76,  shuchusen3,  0);
setEffAlphaKey(  spep_3+102,  shuchusen3,  0);
setEffAlphaKey(  spep_3+103,  shuchusen3,  0);
setEffAlphaKey(  spep_3+104,  shuchusen3,  255);
setEffAlphaKey(  spep_3+122,  shuchusen3,  255);

--***書き文字***
ct_gyun = entryEffectLife( spep_3+58,  10007, 58, 0x100, -1, 0, 120.7, 250.4 );  --ギュンッ

setEffMoveKey( spep_3+58, ct_gyun, 120.7, 250.4 , 0 );
setEffMoveKey( spep_3+60, ct_gyun, 82.6, 309.9 , 0 );
setEffMoveKey( spep_3+62, ct_gyun, 69.8, 329.7 , 0 );
setEffMoveKey( spep_3+64, ct_gyun, 63.5, 332.2 , 0 );
setEffMoveKey( spep_3+66, ct_gyun, 57.3, 334.6 , 0 );
setEffMoveKey( spep_3+68, ct_gyun, 51, 337.1 , 0 );
setEffMoveKey( spep_3+104, ct_gyun, -61.6, 331.2 , 0 );
setEffMoveKey( spep_3+106, ct_gyun, -36.4, 390 , 0 );
setEffMoveKey( spep_3+108, ct_gyun, -28.1, 409.6 , 0 );
setEffMoveKey( spep_3+110, ct_gyun, -28.3, 411.5 , 0 );
setEffMoveKey( spep_3+112, ct_gyun, -28.5, 413.4 , 0 );
setEffMoveKey( spep_3+114, ct_gyun, -28.7, 415.2 , 0 );
setEffMoveKey( spep_3+116, ct_gyun, -28.9, 417.1 , 0 );
setEffScaleKey( spep_3+58, ct_gyun, 1.48, 1.48 );
setEffScaleKey( spep_3+60, ct_gyun, 2.57, 2.57 );
setEffScaleKey( spep_3+62, ct_gyun, 2.94, 2.94 );
setEffScaleKey( spep_3+64, ct_gyun, 2.98, 2.98 );
setEffScaleKey( spep_3+66, ct_gyun, 3.03, 3.03 );
setEffScaleKey( spep_3+68, ct_gyun, 3.07, 3.07 );
setEffScaleKey( spep_3+104, ct_gyun, 1.48, 1.48 );
setEffScaleKey( spep_3+106, ct_gyun, 2.58, 2.58 );
setEffScaleKey( spep_3+108, ct_gyun, 2.94, 2.94 );
setEffScaleKey( spep_3+110, ct_gyun, 2.97, 2.97 );
setEffScaleKey( spep_3+112, ct_gyun, 3.01, 3.01 );
setEffScaleKey( spep_3+114, ct_gyun, 3.04, 3.04 );
setEffScaleKey( spep_3+116, ct_gyun, 3.07, 3.07 );
setEffRotateKey( spep_3+58, ct_gyun, 9 );
setEffRotateKey( spep_3+62, ct_gyun, 9 );
setEffRotateKey( spep_3+64, ct_gyun, 9.1 );
setEffRotateKey( spep_3+66, ct_gyun, 9.1 );
setEffRotateKey( spep_3+68, ct_gyun, 9.2 );
setEffRotateKey( spep_3+104, ct_gyun, -8 );
setEffRotateKey( spep_3+106, ct_gyun, -8 );
setEffRotateKey( spep_3+110, ct_gyun, -7.9 );
setEffRotateKey( spep_3+112, ct_gyun, -7.9 );
setEffRotateKey( spep_3+114, ct_gyun, -7.8 );
setEffAlphaKey( spep_3+58, ct_gyun, 255 );
setEffAlphaKey( spep_3+68, ct_gyun, 255 );
setEffAlphaKey( spep_3+69, ct_gyun, 0 );
setEffAlphaKey( spep_3+70, ct_gyun, 0 );
setEffAlphaKey( spep_3+102, ct_gyun, 0 );
setEffAlphaKey( spep_3+103, ct_gyun, 0 );
setEffAlphaKey( spep_3+104, ct_gyun, 255 );
setEffAlphaKey( spep_3+114, ct_gyun, 255 );


tobiutsuru = entryEffect(  spep_3,  SP_04,  0x80,  -1,  0,  0,  0);  --高速移動

setEffScaleKey(  spep_3,  tobiutsuru,  1.0,  1.0);
setEffScaleKey(  spep_3+126,  tobiutsuru,  1.0,  1.0);
setEffMoveKey(  spep_3,  tobiutsuru,  0,  0);
setEffMoveKey(  spep_3+126,  tobiutsuru,  0,  0);
setEffRotateKey(  spep_3,  tobiutsuru,  0);
setEffRotateKey(  spep_3+126,  tobiutsuru,  0);
setEffAlphaKey(  spep_3,  tobiutsuru,  255);
setEffAlphaKey(  spep_3+122,  tobiutsuru,  255);
setEffAlphaKey(  spep_3+123,  tobiutsuru,  0);
setEffAlphaKey(  spep_3+124,  tobiutsuru,  0);
setEffAlphaKey(  spep_3+126,  tobiutsuru,  0);

--***SE***
playSe( spep_3 ,4);
playSe( spep_3 + 14,4);
playSe( spep_3 + 38,44);
playSe( spep_3 + 60,1027);
playSe( spep_3 + 78,4);
playSe( spep_3 + 88,44);
playSe( spep_3 + 106,1027);

--playSe(  spep_3,  1016);
--playSe(  spep_3+4,  1016);
--playSe(  spep_3+18,  1016);
--playSe(  spep_3+32,  1016);
--playSe(  spep_3+55,  1027);
--playSe(  spep_3+70,  1018);
--playSe(  spep_3+102,  9);

------------------------------------------------------
-- 押し込む
------------------------------------------------------
spep_4 = spep_3+122;

--***集中線***
shuchusen4 = entryEffectLife( spep_4+50, 906, 20, 0x100,  -1, 0,  0,  0);   -- 集中線

setEffScaleKey(  spep_4+50,  shuchusen4,  1.01,  1.01);
setEffScaleKey(  spep_4+70,  shuchusen4,  1.01,  1.01);
setEffMoveKey(  spep_4+50,  shuchusen4,  0,  0);
setEffMoveKey(  spep_4+70,  shuchusen4,  0,  0);
setEffRotateKey(  spep_4+50,  shuchusen4,  0);
setEffRotateKey(  spep_4+70,  shuchusen4,  0);
setEffAlphaKey(  spep_4+50,  shuchusen4,  255);
setEffAlphaKey(  spep_4+70,  shuchusen4,  255);

--***書き文字***
ct_bago = entryEffectLife( spep_4+8,  10021, 16, 0x100, -1, 0, 39.7, 281.5 );  --バゴォ

setEffMoveKey( spep_4+8, ct_bago, 39.7, 281.5 , 0 );
setEffMoveKey( spep_4+10, ct_bago, 13.5, 305.1 , 0 );
setEffMoveKey( spep_4+12, ct_bago, 6.1, 299.7 , 0 );
setEffMoveKey( spep_4+14, ct_bago, 17.5, 320.7 , 0 );
setEffMoveKey( spep_4+16, ct_bago, 5.5, 313.8 , 0 );
setEffMoveKey( spep_4+18, ct_bago, 10.3, 322.1 , 0 );
setEffMoveKey( spep_4+20, ct_bago, 2.7, 314.7 , 0 );
setEffMoveKey( spep_4+22, ct_bago, 14, 341.4 , 0 );
setEffMoveKey( spep_4+24, ct_bago, 11.5, 356.3 , 0 );
setEffScaleKey( spep_4+8, ct_bago, 1.88, 1.88 );
setEffScaleKey( spep_4+10, ct_bago, 2.53, 2.53 );
setEffScaleKey( spep_4+12, ct_bago, 2.57, 2.57 );
setEffScaleKey( spep_4+14, ct_bago, 2.62, 2.62 );
setEffScaleKey( spep_4+16, ct_bago, 2.66, 2.66 );
setEffScaleKey( spep_4+18, ct_bago, 2.7, 2.7 );
setEffScaleKey( spep_4+20, ct_bago, 2.73, 2.73 );
setEffScaleKey( spep_4+22, ct_bago, 2.82, 2.82 );
setEffScaleKey( spep_4+24, ct_bago, 2.96, 2.96 );
setEffRotateKey( spep_4+8, ct_bago, -11.7 );
setEffRotateKey( spep_4+10, ct_bago, -15.6 );
setEffRotateKey( spep_4+24, ct_bago, -15.6 );
setEffAlphaKey( spep_4+8, ct_bago, 255 );
setEffAlphaKey( spep_4+18, ct_bago, 255 );
setEffAlphaKey( spep_4+20, ct_bago, 227 );
setEffAlphaKey( spep_4+22, ct_bago, 142 );
setEffAlphaKey( spep_4+24, ct_bago, 0 );

ct_zun = entryEffectLife( spep_4+46,  10016, 22, 0x100, -1, 0, 9.8, 151.5 );  --ズンッ

setEffMoveKey( spep_4+46, ct_zun, 9.8, 151.5 , 0 );
setEffMoveKey( spep_4+48, ct_zun, -5.9, 246.6 , 0 );
setEffMoveKey( spep_4+50, ct_zun, -15.4, 303.6 , 0 );
setEffMoveKey( spep_4+52, ct_zun, -18.5, 322.7 , 0 );
setEffMoveKey( spep_4+54, ct_zun, -19, 324.1 , 0 );
setEffMoveKey( spep_4+56, ct_zun, -19.6, 325.5 , 0 );
setEffMoveKey( spep_4+58, ct_zun, -20.1, 326.9 , 0 );
setEffMoveKey( spep_4+60, ct_zun, -20.6, 328.3 , 0 );
setEffMoveKey( spep_4+62, ct_zun, -21.2, 329.7 , 0 );
setEffMoveKey( spep_4+64, ct_zun, -22.4, 333.2 , 0 );
setEffMoveKey( spep_4+66, ct_zun, -23.7, 336.7 , 0 );
setEffMoveKey( spep_4+68, ct_zun, -25, 340.2 , 0 );
setEffScaleKey( spep_4+46, ct_zun, 1, 1 );
setEffScaleKey( spep_4+48, ct_zun, 2.11, 2.11 );
setEffScaleKey( spep_4+50, ct_zun, 2.77, 2.77 );
setEffScaleKey( spep_4+52, ct_zun, 2.99, 2.99 );
setEffScaleKey( spep_4+54, ct_zun, 3.01, 3.01 );
setEffScaleKey( spep_4+56, ct_zun, 3.02, 3.02 );
setEffScaleKey( spep_4+58, ct_zun, 3.04, 3.04 );
setEffScaleKey( spep_4+60, ct_zun, 3.05, 3.05 );
setEffScaleKey( spep_4+62, ct_zun, 3.07, 3.07 );
setEffScaleKey( spep_4+64, ct_zun, 3.11, 3.11 );
setEffScaleKey( spep_4+66, ct_zun, 3.15, 3.15 );
setEffScaleKey( spep_4+68, ct_zun, 3.19, 3.19 );
setEffRotateKey( spep_4+46, ct_zun, -2.8 );
setEffRotateKey( spep_4+68, ct_zun, -2.8 );
setEffAlphaKey( spep_4+46, ct_zun, 255 );
setEffAlphaKey( spep_4+62, ct_zun, 255 );
setEffAlphaKey( spep_4+64, ct_zun, 170 );
setEffAlphaKey( spep_4+66, ct_zun, 85 );
setEffAlphaKey( spep_4+68, ct_zun, 0 );

--***敵の動き***
setDisp( spep_4, 1, 1 );
changeAnime( spep_4, 1, 106 );
setShakeChara(  spep_4,  1,  68,  10);  --揺れ

setMoveKey( spep_4, 1, -11.2, 3.6 , 0 );
setMoveKey( spep_4+2, 1, -11.8, 3.7 , 0 );
setMoveKey( spep_4+4, 1, -12.3, 3.9 , 0 );
setMoveKey( spep_4+6, 1, -12.9, 4.1 , 0 );
setMoveKey( spep_4+8, 1, -13.4, 4.3 , 0 );
setMoveKey( spep_4+10, 1, -24.9, -9.8 , 0 );
setMoveKey( spep_4+12, 1, -23.4, 20.9 , 0 );
setMoveKey( spep_4+14, 1, -2.6, -7.9 , 0 );
setMoveKey( spep_4+16, 1, -13.2, 19.4 , 0 );
setMoveKey( spep_4+18, 1, -15.8, -6.2 , 0 );
setMoveKey( spep_4+20, 1, -20.6, 16.5 , 0 );
setMoveKey( spep_4+22, 1, -7, -7 , 0 );
setMoveKey( spep_4+24, 1, -11, 15.8 , 0 );
setMoveKey( spep_4+26, 1, -23, -1.8 , 0 );
setMoveKey( spep_4+28, 1, -8.5, 12.5 , 0 );
setMoveKey( spep_4+30, 1, -24.8, 5.7 , 0 );
setMoveKey( spep_4+32, 1, -8.3, 3.2 , 0 );
setMoveKey( spep_4+34, 1, -19.4, 9.8 , 0 );
setMoveKey( spep_4+36, 1, -8.9, 4.9 , 0 );
setMoveKey( spep_4+38, 1, -16.6, 9.3 , 0 );
setMoveKey( spep_4+40, 1, -12.4, 1.7 , 0 );
setMoveKey( spep_4+42, 1, -13.7, 7.9 , 0 );
setMoveKey( spep_4+44, 1, -12.3, 4.1 , 0 );
setMoveKey( spep_4+46, 1, -12.9, 4.1 , 0 );
setMoveKey( spep_4+48, 1, -18.7, 19.5 , 0 );
setMoveKey( spep_4+50, 1, -7.3, 21.9 , 0 );
setMoveKey( spep_4+52, 1, -23, 25 , 0 );
setMoveKey( spep_4+54, 1, -10.4, 16.7 , 0 );
setMoveKey( spep_4+56, 1, -15.4, 29.1 , 0 );
setMoveKey( spep_4+58, 1, -20.8, 19.7 , 0 );
setMoveKey( spep_4+60, 1, -11.2, 26.6 , 0 );
setMoveKey( spep_4+62, 1, -20.2, 20.2 , 0 );
setMoveKey( spep_4+64, 1, -11.1, 23.7 , 0 );
setMoveKey( spep_4+66, 1, -23, 24.8 , 0 );
setMoveKey( spep_4+68, 1, -10.2, 26.2 , 0 );
setScaleKey( spep_4, 1, 0.79, 0.79 );
setScaleKey( spep_4+2, 1, 0.83, 0.83 );
setScaleKey( spep_4+4, 1, 0.87, 0.87 );
setScaleKey( spep_4+6, 1, 0.91, 0.91 );
setScaleKey( spep_4+8, 1, 0.95, 0.95 );
setScaleKey( spep_4+10, 1, 0.84, 0.84 );
setScaleKey( spep_4+12, 1, 1.73, 1.73 );
setScaleKey( spep_4+14, 1, 1.1, 1.1 );
setScaleKey( spep_4+16, 1, 1.17, 1.17 );
setScaleKey( spep_4+18, 1, 1.11, 1.11 );
setScaleKey( spep_4+20, 1, 1.12, 1.12 );
setScaleKey( spep_4+22, 1, 1.08, 1.08 );
setScaleKey( spep_4+24, 1, 1.08, 1.08 );
setScaleKey( spep_4+26, 1, 1.06, 1.06 );
setScaleKey( spep_4+28, 1, 1.05, 1.05 );
setScaleKey( spep_4+30, 1, 1.03, 1.03 );
setScaleKey( spep_4+32, 1, 1.02, 1.02 );
setScaleKey( spep_4+34, 1, 1, 1 );
setScaleKey( spep_4+36, 1, 0.99, 0.99 );
setScaleKey( spep_4+38, 1, 0.97, 0.97 );
setScaleKey( spep_4+40, 1, 0.96, 0.96 );
setScaleKey( spep_4+42, 1, 0.94, 0.94 );
setScaleKey( spep_4+44, 1, 0.93, 0.93 );
setScaleKey( spep_4+46, 1, 0.91, 0.91 );
setScaleKey( spep_4+48, 1, 1.36, 1.36 );
setScaleKey( spep_4+50, 1, 1.41, 1.41 );
setScaleKey( spep_4+52, 1, 1.79, 1.79 );
setScaleKey( spep_4+54, 1, 1.55, 1.55 );
setScaleKey( spep_4+56, 1, 1.75, 1.75 );
setScaleKey( spep_4+58, 1, 1.66, 1.66 );
setScaleKey( spep_4+60, 1, 1.73, 1.73 );
setScaleKey( spep_4+62, 1, 1.72, 1.72 );
setScaleKey( spep_4+64, 1, 1.73, 1.73 );
setScaleKey( spep_4+66, 1, 1.74, 1.74 );
setScaleKey( spep_4+68, 1, 1.75, 1.75 );
setRotateKey( spep_4, 1, -47.8 );
setRotateKey( spep_4+68, 1, -47.8 );

setDisp( spep_4+70, 1, 0 );  --敵消す

--***押し込む***+
oshikomu_f = entryEffect(  spep_4,  SP_05,  0x100,  -1,  0,  0,  0);  

setEffScaleKey(  spep_4,  oshikomu_f,  1.05,  1.05);
setEffScaleKey(  spep_4+90,  oshikomu_f,  1.05,  1.05);
setEffMoveKey(  spep_4,  oshikomu_f,  0,  0);
setEffMoveKey(  spep_4+90,  oshikomu_f,  0,  0);
setEffRotateKey(  spep_4,  oshikomu_f,  0);
setEffRotateKey(  spep_4+90,  oshikomu_f,  0);
setEffAlphaKey(  spep_4,  oshikomu_f,  255);
setEffAlphaKey(  spep_4+70,  oshikomu_f,  255);
setEffAlphaKey(  spep_4+71,  oshikomu_f,  0);
setEffAlphaKey(  spep_4+72,  oshikomu_f,  0);
setEffAlphaKey(  spep_4+90,  oshikomu_f,  0);

--***押し込む奥***+
oshikomu_b = entryEffect(  spep_4,  SP_06,  0x80,  -1,  0,  0,  0);  

setEffScaleKey(  spep_4,  oshikomu_b,  1.05,  1.05);
setEffScaleKey(  spep_4+90,  oshikomu_b,  1.05,  1.05);
setEffMoveKey(  spep_4,  oshikomu_b,  0,  0);
setEffMoveKey(  spep_4+90,  oshikomu_b,  0,  0);
setEffRotateKey(  spep_4,  oshikomu_b,  0);
setEffRotateKey(  spep_4+90,  oshikomu_b,  0);
setEffAlphaKey(  spep_4,  oshikomu_b,  255);
setEffAlphaKey(  spep_4+70,  oshikomu_b,  255);
setEffAlphaKey(  spep_4+71,  oshikomu_b,  0);
setEffAlphaKey(  spep_4+72,  oshikomu_b,  0);
setEffAlphaKey(  spep_4+90,  oshikomu_b,  0);

--***SE***
playSe(  spep_4+8,  1025);
playSe(  spep_4+46,  1023);

entryFade( spep_4+68, 0, 2, 2, fcolor_r, fcolor_g, fcolor_b, 200);     -- white fade

------------------------------------------------------
-- 吹き飛ばされる敵
------------------------------------------------------
spep_5 = spep_4+70;

--***吹き飛び背景***
fukitobiBG_b = entryEffect(  spep_5,  SP_08,  0x80,  -1,  0,  0,  0);  --背景奥

setEffScaleKey(  spep_5,  fukitobiBG_b,  1.0,  1.0);
setEffScaleKey(  spep_5+40,  fukitobiBG_b,  1.0,  1.0);
setEffMoveKey(  spep_5,  fukitobiBG_b,  0,  0);
setEffMoveKey(  spep_5+40,  fukitobiBG_b,  0,  0);
setEffRotateKey(  spep_5,  fukitobiBG_b,  0);
setEffRotateKey(  spep_5+40,  fukitobiBG_b,  0);
setEffAlphaKey(  spep_5,  fukitobiBG_b,  255);
setEffAlphaKey(  spep_5+40,  fukitobiBG_b,  255);

--***敵の動き***
setDisp( spep_5, 1, 1 );
changeAnime( spep_5, 1, 106 );

setMoveKey( spep_5, 1, 155.2, 58.3 , 0 );
setMoveKey( spep_5+2, 1, 163.9, 41.8 , 0 );
setMoveKey( spep_5+4, 1, 145.9, 58 , 0 );
setMoveKey( spep_5+6,1, 87.5, 77.8 , 0 );
setMoveKey( spep_5+8, 1, 36.5, 107.2 , 0 );
setMoveKey( spep_5+10, 1, 3.8, 115.9 , 0 );
setMoveKey( spep_5+12, 1, -3.3, 111.9 , 0 );
setMoveKey( spep_5+14, 1, 10.4, 90.2 , 0 );
setMoveKey( spep_5+16, 1, 34.3, 63.1 , 0 );
setMoveKey( spep_5+18, 1, 53.1, 40.6 , 0 );
setMoveKey( spep_5+20, 1, 69.7, 21.9 , 0 );
setMoveKey( spep_5+22, 1, 84.5, 6.5 , 0 );
setMoveKey( spep_5+24, 1, 98.5, -7.5 , 0 );
setMoveKey( spep_5+26, 1, 110.7, -20.3 , 0 );
setMoveKey( spep_5+28, 1, 121, -31.6 , 0 );
setMoveKey( spep_5+30, 1, 129.4, -41.5 , 0 );
setMoveKey( spep_5+32, 1, 136, -50.3 , 0 );
setMoveKey( spep_5+34, 1, 140.9, -57.6 , 0 );
setMoveKey( spep_5+36, 1, 143.9, -63.6 , 0 );
setMoveKey( spep_5+38, 1, 145.1, -68.2 , 0 );

setScaleKey( spep_5, 1, 1.31, 1.31 );
setScaleKey( spep_5+22, 1, 0.7, 0.7 );
setScaleKey( spep_5+38, 1, 0.7, 0.7 );

setRotateKey( spep_5, 1, 70.2 );
setRotateKey( spep_5+2, 1, 70.8 );
setRotateKey( spep_5+4, 1, 71.3 );
setRotateKey( spep_5+6, 1, 71.9 );
setRotateKey( spep_5+8, 1, 72.5 );
setRotateKey( spep_5+10, 1, 73 );
setRotateKey( spep_5+12, 1, 73.6 );
setRotateKey( spep_5+14, 1, 74.2 );
setRotateKey( spep_5+16, 1, 74.7 );
setRotateKey( spep_5+18, 1, 75.3 );
setRotateKey( spep_5+20, 1, 75.9 );
setRotateKey( spep_5+22, 1, 76.5 );
setRotateKey( spep_5+24, 1, 77 );
setRotateKey( spep_5+26, 1, 77.6 );
setRotateKey( spep_5+28, 1, 78.2 );
setRotateKey( spep_5+30, 1, 78.7 );
setRotateKey( spep_5+32, 1, 79.3 );
setRotateKey( spep_5+34, 1, 79.9 );
setRotateKey( spep_5+36, 1, 80.4 );
setRotateKey( spep_5+38, 1, 81 );

--***吹き飛び背景***
fukitobiBG_f = entryEffect(  spep_5,  SP_07,  0x100,  -1,  0,  0,  0);  --背景

setEffScaleKey(  spep_5,  fukitobiBG_f,  1.0,  1.0);
setEffScaleKey(  spep_5+40,  fukitobiBG_f,  1.0,  1.0);
setEffMoveKey(  spep_5,  fukitobiBG_f,  0,  0);
setEffMoveKey(  spep_5+40,  fukitobiBG_f,  0,  0);
setEffRotateKey(  spep_5,  fukitobiBG_f,  0);
setEffRotateKey(  spep_5+40,  fukitobiBG_f,  0);
setEffAlphaKey(  spep_5,  fukitobiBG_f,  255);
setEffAlphaKey(  spep_5+36,  fukitobiBG_f,  255);
setEffAlphaKey(  spep_5+37,  fukitobiBG_f,  0);
setEffAlphaKey(  spep_5+38,  fukitobiBG_f,  0);
setEffAlphaKey(  spep_5+40,  fukitobiBG_f,  0);

--***SE***
playSe(  spep_5,  1033);

entryFade( spep_5+35, 0, 1, 0, fcolor_r, fcolor_g, fcolor_b, 200);     -- white fade

------------------------------------------------------
-- フリーザを投げる
------------------------------------------------------
spep_6 = spep_5+36;

nageru = entryEffect(  spep_6,  SP_09,  0x100,  -1,  0,  0,  0);  --フリーザを投げる

setEffScaleKey(  spep_6,  nageru,  1.0,  1.0);
setEffScaleKey(  spep_6+408,  nageru,  1.0,  1.0);
setEffMoveKey(  spep_6,  nageru,  0,  0);
setEffMoveKey(  spep_6+408,  nageru,  0,  0);
setEffRotateKey(  spep_6,  nageru,  0);
setEffRotateKey(  spep_6+408,  nageru,  0);
setEffAlphaKey(  spep_6,  nageru,  255);
setEffAlphaKey(  spep_6+326,  nageru,  255);
setEffAlphaKey(  spep_6+327,  nageru,  0);
setEffAlphaKey(  spep_6+328,  nageru,  0);
setEffAlphaKey(  spep_6+408,  nageru,  0);

--***集中線***
shuchusen6 = entryEffectLife( spep_6, 906, 326, 0x100,  -1, 0,  0,  0);   -- 集中線

setEffScaleKey(  spep_6,  shuchusen6,  1.01,  1.01);
setEffScaleKey(  spep_6+120,  shuchusen6,  1.01,  1.01);
setEffScaleKey(  spep_6+122,  shuchusen6,  1.0,  1.0);
setEffScaleKey(  spep_6+188,  shuchusen6,  1.00,  1.0);
setEffScaleKey(  spep_6+190,  shuchusen6,  2.73,  1.01);  --フリーザ投げる
setEffScaleKey(  spep_6+202,  shuchusen6,  2.73,  1.01);
setEffScaleKey(  spep_6+198,  shuchusen6,  2.73,  1.01);
setEffScaleKey(  spep_6+308,  shuchusen6,  1.01,  1.01);
setEffScaleKey(  spep_6+326,  shuchusen6,  1.01,  1.01);
setEffMoveKey(  spep_6,  shuchusen6,  0,  0);
setEffMoveKey(  spep_6+190,  shuchusen6,  0,  0);
setEffMoveKey(  spep_6+191,  shuchusen6,  0,  0);
setEffMoveKey(  spep_6+190,  shuchusen6,  -500,  0);
setEffMoveKey(  spep_6+202,  shuchusen6,  -500,  0);
setEffMoveKey(  spep_6+308,  shuchusen6,  0,  0);
setEffMoveKey(  spep_6+326,  shuchusen6,  0,  0);
setEffRotateKey(  spep_6,  shuchusen6,  0);
setEffRotateKey(  spep_6+326,  shuchusen6,  0);
setEffAlphaKey(  spep_6,  shuchusen6,  255);
setEffAlphaKey(  spep_6+20,  shuchusen6,  255);
setEffAlphaKey(  spep_6+21,  shuchusen6,  0);
setEffAlphaKey(  spep_6+22,  shuchusen6,  0);
setEffAlphaKey(  spep_6+120,  shuchusen6,  0);
setEffAlphaKey(  spep_6+121,  shuchusen6,  0);
setEffAlphaKey(  spep_6+122,  shuchusen6,  255);
setEffAlphaKey(  spep_6+188,  shuchusen6,  255);
setEffAlphaKey(  spep_6+190,  shuchusen6,  255);
setEffAlphaKey(  spep_6+202,  shuchusen6,  255);
setEffAlphaKey(  spep_6+203,  shuchusen6,  0);
setEffAlphaKey(  spep_6+204,  shuchusen6,  0);
setEffAlphaKey(  spep_6+307,  shuchusen6,  0);
setEffAlphaKey(  spep_6+308,  shuchusen6,  0);
setEffAlphaKey(  spep_6+309,  shuchusen6,  255);
setEffAlphaKey(  spep_6+310,  shuchusen6,  255);
setEffAlphaKey(  spep_6+326,  shuchusen6,  255);

--***敵の動き***
setDisp( spep_6+304, 1, 1 );
changeAnime( spep_6+304, 1, 105 );  --吹き飛び

setMoveKey( spep_6+304, 1, 40.7, -56.7 , 0 );
setMoveKey( spep_6+306, 1, 38.8, -57.1 , 0 );
setMoveKey( spep_6+308, 1, 42.1, -57.4 , 0 );
setMoveKey( spep_6+310, 1, 38.7, -57.6 , 0 );
setMoveKey( spep_6+312, 1, 42, -57.2 , 0 );
setMoveKey( spep_6+314, 1, 38.7, -57.1 , 0 );
setMoveKey( spep_6+316, 1, 41.8, -57.7 , 0 );
setMoveKey( spep_6+318, 1, 39.6, -53.5 , 0 );
setMoveKey( spep_6+320, 1, 43.2, -58.6 , 0 );
setMoveKey( spep_6+322, 1, 36.3, -58.1 , 0 );
setMoveKey( spep_6+324, 1, 41.7, -55.4 , 0 );
setMoveKey( spep_6+326, 1, 41.7, -55.4 , 0 );
setScaleKey( spep_6+304, 1, 0.97, 0.97 );
setScaleKey( spep_6+306, 1, 0.98, 0.98 );
setScaleKey( spep_6+308, 1, 1.03, 1.03 );
setScaleKey( spep_6+310, 1, 1.09, 1.09 );
setScaleKey( spep_6+312, 1, 1.2, 1.2 );
setScaleKey( spep_6+314, 1, 1.36, 1.36 );
setScaleKey( spep_6+316, 1, 1.58, 1.58 );
setScaleKey( spep_6+318, 1, 1.88, 1.88 );
setScaleKey( spep_6+320, 1, 2.29, 2.29 );
setScaleKey( spep_6+322, 1, 2.88, 2.88 );
setScaleKey( spep_6+324, 1, 3.78, 3.78 );
setScaleKey( spep_6+326, 1, 3.78, 3.78 );
setRotateKey( spep_6+304, 1, 0 );
setRotateKey( spep_6+326, 1, 0 );

setDisp(  spep_6+326,  1,  0);  --敵消す

haikei = entryEffect(  spep_6+308,  SP_10,  0x80,  -1,  0,  0,  0);  --敵背景

setEffScaleKey(  spep_6+308,  haikei,  1.0,  1.0);
setEffScaleKey(  spep_6+408,  haikei,  1.0,  1.0);
setEffMoveKey(  spep_6+308,  haikei,  0,  0);
setEffMoveKey(  spep_6+408,  haikei,  0,  0);
setEffRotateKey(  spep_6+308,  haikei,  0);
setEffRotateKey(  spep_6+408,  haikei,  0);
setEffAlphaKey(  spep_6+308,  haikei,  255);
setEffAlphaKey(  spep_6+326,  haikei,  255);
setEffAlphaKey(  spep_6+327,  haikei,  0);
setEffAlphaKey(  spep_6+328,  haikei,  0);
setEffAlphaKey(  spep_6+408,  haikei,  0);

--***カットイン***
speff = entryEffect(  spep_6+120,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_6+120,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー --
ctgogo = entryEffectLife( spep_6+134, 190006, 69, 0x100, -1, 0, 0, 510);    -- ゴゴゴゴ

setEffAlphaKey( spep_6 + 134, ctgogo, 255 );
setEffAlphaKey( spep_6 + 192, ctgogo, 255 );
setEffAlphaKey( spep_6 + 193, ctgogo, 255 );
setEffAlphaKey( spep_6 + 194, ctgogo, 191 );
setEffAlphaKey( spep_6 + 196, ctgogo, 128 );
setEffAlphaKey( spep_6 + 200, ctgogo, 64 );
--setEffAlphaKey( spep_4 + 102, ctgogo, 0 );
setEffAlphaKey( spep_6 + 203, ctgogo, 0 );

setEffRotateKey(  spep_6+134,  ctgogo,  0);
setEffRotateKey(  spep_6+203,  ctgogo,  0);

setEffScaleKey(  spep_6+134,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_6+193,  ctgogo,  0.7,  0.7);
--setEffScaleKey( spep_4 + 98, ctgogo, 0.79, 0.79 );
--setEffScaleKey( spep_4 + 100, ctgogo, 0.93, 0.93 );
setEffScaleKey( spep_6 + 203, ctgogo, 1.07, 1.07 );

setEffMoveKey(  spep_6+134,  ctgogo,  0,  530);
setEffMoveKey(  spep_6+203,  ctgogo,  0,  530);

--***SE***
playSe(  spep_6,  1027);
--playSe(  spep_6+80,  49);
playSe(  spep_6+102,  1047);
playSe(  spep_6+134,  SE_04);  --カットイン
playSe(  spep_6+214,  9);
playSe(  spep_6+240,  1022);

--**白フェード**
entryFade( spep_6+80, 2, 3, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- フリーザ激突
------------------------------------------------------
spep_7 = spep_6+326;

f_gekitotsu = entryEffect(  spep_7,  SP_11,  0x100,  -1,  0,  0,  0);  --フリーザ激突

setEffScaleKey(  spep_7,  f_gekitotsu,  1.0,  1.0);
setEffScaleKey(  spep_7+50,  f_gekitotsu,  1.0,  1.0);
setEffMoveKey(  spep_7,  f_gekitotsu,  0,  0);
setEffMoveKey(  spep_7+50,  f_gekitotsu,  0,  0);
setEffRotateKey(  spep_7,  f_gekitotsu,  0);
setEffRotateKey(  spep_7+50,  f_gekitotsu,  0);
setEffAlphaKey(  spep_7,  f_gekitotsu,  255);
setEffAlphaKey(  spep_7+50,  f_gekitotsu,  255);
setEffAlphaKey(  spep_7+51,  f_gekitotsu,  0);
setEffAlphaKey(  spep_7+52,  f_gekitotsu,  0);

--**SE**
playSe(  spep_7+8,  1024);

------------------------------------------------------
-- 悟空激突
------------------------------------------------------
spep_8 = spep_7+50;

g_gekitotsu = entryEffect(  spep_8,  SP_12,  0x80,  -1,  0,  0,  0);  --敵背景

setEffScaleKey(  spep_8,  g_gekitotsu,  1.0,  1.0);
setEffScaleKey(  spep_8+108,  g_gekitotsu,  1.0,  1.0);
setEffMoveKey(  spep_8,  g_gekitotsu,  0,  0);
setEffMoveKey(  spep_8+108,  g_gekitotsu,  0,  0);
setEffRotateKey(  spep_8,  g_gekitotsu,  0);
setEffRotateKey(  spep_8+108,  g_gekitotsu,  0);
setEffAlphaKey(  spep_8,  g_gekitotsu,  255);
setEffAlphaKey(  spep_8+108,  g_gekitotsu,  255);

playSe(  spep_8,  50);
playSe(  spep_8+40,  9);

------------------------------------------------------
-- 突進してガガガ
------------------------------------------------------
spep_9 = spep_8+108;

tosshin2 = entryEffect(  spep_9,  SP_13,  0x80,  -1,  0,  0,  0);  --突進してガガガ

setEffScaleKey(  spep_9,  tosshin2,  1.0,  1.0);
setEffScaleKey(  spep_9+160,  tosshin2,  1.0,  1.0);
setEffMoveKey(  spep_9,  tosshin2,  0,  0);
setEffMoveKey(  spep_9+160,  tosshin2,  0,  0);
setEffRotateKey(  spep_9,  tosshin2,  0);
setEffRotateKey(  spep_9+160,  tosshin2,  0);
setEffAlphaKey(  spep_9,  tosshin2,  255);
setEffAlphaKey(  spep_9+160,  tosshin2,  255);
setEffAlphaKey(  spep_9+161,  tosshin2,  0);
setEffAlphaKey(  spep_9+162,  tosshin2,  0);
setEffAlphaKey(  spep_9+240,  tosshin2,  0);

playSe(  spep_9+14,  1060); 
SE1 = playSe(  spep_9+20,  1044);
stopSe(  spep_9+112,  SE1,  10);
playSe(  spep_9+50,  1060);
playSe(  spep_9+100,  1067);
------------------------------------------------------
-- カード
------------------------------------------------------
spep_10 = spep_9+160;

playSe( spep_10, SE_05);
speff = entryEffect(  spep_10,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

shuchusen10 = entryEffectLife( spep_10, 906, 90, 0x100,  -1, 0,  0,  0);

setEffMoveKey(  spep_10,  shuchusen10,  0,  0);
setEffMoveKey(  spep_10+90,  shuchusen10,  0,  0);
setEffScaleKey(  spep_10,  shuchusen10,  1.6,  1.6);
setEffScaleKey(  spep_10+90,  shuchusen10,  1.6,  1.6);
setEffRotateKey(  spep_10,  shuchusen10,  0);
setEffRotateKey(  spep_10+90,  shuchusen10,  0);
setEffAlphaKey(  spep_10,  shuchusen10,  255);
setEffAlphaKey(  spep_10+90,  shuchusen10,  255);

entryFade( spep_10+85, 3, 6,  3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- アップ
------------------------------------------------------
spep_11 = spep_10+90;

up = entryEffect(  spep_11,  SP_14,  0x80,  -1,  0,  0,  0);  --ナビアップ

setEffScaleKey(  spep_11,  up,  1.0,  1.0);
setEffScaleKey(  spep_11+142,  up,  1.0,  1.0);
setEffMoveKey(  spep_11,  up,  0,  0);
setEffMoveKey(  spep_11+142,  up,  0,  0);
setEffRotateKey(  spep_11,  up,  0);
setEffRotateKey(  spep_11+142,  up,  0);
setEffAlphaKey(  spep_11,  up,  255);
setEffAlphaKey(  spep_11+138,  up,  255);
setEffAlphaKey(  spep_11+139,  up,  0);
setEffAlphaKey(  spep_11+140,  up,  0);
setEffAlphaKey(  spep_11+142,  up,  0);

playSe(  spep_11,  1022);
playSe(  spep_11+70,  1026);

------------------------------------------------------
-- 爆発
------------------------------------------------------
spep_12 = spep_11+138;

bakuhatsu = entryEffect(  spep_12,  SP_15,  0x80,  -1,  0,  0,  0);  --爆発

setEffScaleKey(  spep_124,  bakuhatsu,  1.0,  1.0);
setEffScaleKey(  spep_12+110,  bakuhatsu,  1.0,  1.0);
setEffMoveKey(  spep_124,  bakuhatsu,  0,  0);
setEffMoveKey(  spep_12+110,  bakuhatsu,  0,  0);
setEffRotateKey(  spep_124,  bakuhatsu,  0);
setEffRotateKey(  spep_12+110,  bakuhatsu,  0);
setEffAlphaKey(  spep_124,  bakuhatsu,  255);
setEffAlphaKey(  spep_12+110,  bakuhatsu,  255);
setEffAlphaKey(  spep_12+111,  bakuhatsu,  0);
setEffAlphaKey(  spep_12+112,  bakuhatsu,  0);

playSe(  spep_12,  1067);

entryFade( spep_12+3, 2, 2, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


-- ダメージ表示
dealDamage(spep_12+10);

entryFade( spep_12+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase( spep_12+110);

else

--------------------------------------------------------------------------------------------
--敵側
--------------------------------------------------------------------------------------------
------------------------------------------------------
-- 突進
------------------------------------------------------
spep_1 = 0;

--***集中線***
shuchusen1 = entryEffectLife( spep_1+10, 906, 60, 0x100,  -1, 0,  0,  0);   -- 集中線

setEffScaleKey(  spep_1+10,  shuchusen1,  1.61,  1.63);
setEffScaleKey(  spep_1+70,  shuchusen1,  1.61,  1.63);
setEffMoveKey(  spep_1+10,  shuchusen1,  0,  0);
setEffMoveKey(  spep_1+70,  shuchusen1,  0,  0);
setEffRotateKey(  spep_1+10,  shuchusen1,  0);
setEffRotateKey(  spep_1+70,  shuchusen1,  0);
setEffAlphaKey(  spep_1+10,  shuchusen1,  255);
setEffAlphaKey(  spep_1+70,  shuchusen1,  255);

--***書き文字***
ct_don = entryEffectLife( spep_1+12,  10019, 16, 0x100, -1, 0, 13.8, 227.6 );  --ドンッ

setEffMoveKey( spep_1+12, ct_don, 13.8, 227.6 , 0 );
setEffMoveKey( spep_1+14, ct_don, -8.9, 253.4 , 0 );
setEffMoveKey( spep_1+16, ct_don, -10.6, 275.9 , 0 );
setEffMoveKey( spep_1+18, ct_don, -19.8, 284.9 , 0 );
setEffMoveKey( spep_1+20, ct_don, -7.5, 278 , 0 );
setEffMoveKey( spep_1+22, ct_don, -19.7, 278.4 , 0 );
setEffMoveKey( spep_1+24, ct_don, -13.3, 286.7 , 0 );
setEffMoveKey( spep_1+26, ct_don, -13.1, 274.6 , 0 );
setEffMoveKey( spep_1+28, ct_don, -13.1, 275.1 , 0 );
setEffScaleKey( spep_1+12, ct_don, 1.29, 1.29 );
setEffScaleKey( spep_1+14, ct_don, 1.63, 1.63 );
setEffScaleKey( spep_1+16, ct_don, 1.98, 1.98 );
setEffScaleKey( spep_1+18, ct_don, 2, 2 );
setEffScaleKey( spep_1+20, ct_don, 2.02, 2.02 );
setEffScaleKey( spep_1+22, ct_don, 2.04, 2.04 );
setEffScaleKey( spep_1+24, ct_don, 2.05, 2.05 );
setEffScaleKey( spep_1+26, ct_don, 2.06, 2.06 );
setEffScaleKey( spep_1+28, ct_don, 2.07, 2.07 );
setEffRotateKey( spep_1+12, ct_don, -0.8 );
setEffRotateKey( spep_1+14, ct_don, -0.2 );
setEffRotateKey( spep_1+16, ct_don, 0.3 );
setEffRotateKey( spep_1+28, ct_don, 0.3 );
setEffAlphaKey( spep_1+12, ct_don, 255 );
setEffAlphaKey( spep_1+22, ct_don, 255 );
setEffAlphaKey( spep_1+24, ct_don, 170 );
setEffAlphaKey( spep_1+26, ct_don, 85 );
setEffAlphaKey( spep_1+28, ct_don, 0 );

ct_ga = entryEffectLife( spep_1+40,  10005, 16, 0x100, -1, 0, 140.1, 318.9 );  --ガッ

setEffMoveKey( spep_1+40, ct_ga, 140.1, 318.9 , 0 );
setEffMoveKey( spep_1+42, ct_ga, 130.8, 331.3 , 0 );
setEffMoveKey( spep_1+44, ct_ga, 134.7, 336.2 , 0 );
setEffMoveKey( spep_1+46, ct_ga, 127.9, 338.9 , 0 );
setEffMoveKey( spep_1+48, ct_ga, 137.1, 339.9 , 0 );
setEffMoveKey( spep_1+50, ct_ga, 128.1, 345 , 0 );
setEffMoveKey( spep_1+52, ct_ga, 132.2, 343.8 , 0 );
setEffMoveKey( spep_1+54, ct_ga, 124.2, 348.8 , 0 );
setEffMoveKey( spep_1+56, ct_ga, 123.5, 350.7 , 0 );
setEffScaleKey( spep_1+40, ct_ga, 1.25, 1.25 );
setEffScaleKey( spep_1+42, ct_ga, 1.45, 1.45 );
setEffScaleKey( spep_1+44, ct_ga, 1.52, 1.52 );
setEffScaleKey( spep_1+46, ct_ga, 1.57, 1.57 );
setEffScaleKey( spep_1+48, ct_ga, 1.61, 1.61 );
setEffScaleKey( spep_1+50, ct_ga, 1.63, 1.63 );
setEffScaleKey( spep_1+52, ct_ga, 1.64, 1.64 );
setEffScaleKey( spep_1+54, ct_ga, 1.73, 1.73 );
setEffScaleKey( spep_1+56, ct_ga, 1.76, 1.76 );
setEffRotateKey( spep_1+40, ct_ga, 3 );
setEffRotateKey( spep_1+56, ct_ga, 3 );
setEffAlphaKey( spep_1+40, ct_ga, 255 );
setEffAlphaKey( spep_1+52, ct_ga, 255 );
setEffAlphaKey( spep_1+54, ct_ga, 64 );
setEffAlphaKey( spep_1+56, ct_ga, 0 );

--***エフェクト***
tosshin_b = entryEffect(  spep_1,  SP_17,  0x80,  -1,  0,  0,  0);  --突進奥

setEffScaleKey(  spep_1,  tosshin_b,  1.0,  1.0);
setEffScaleKey(  spep_1+70,  tosshin_b,  1.0,  1.0);
setEffMoveKey(  spep_1,  tosshin_b,  0,  0);
setEffMoveKey(  spep_1+70,  tosshin_b,  0,  0);
setEffRotateKey(  spep_1,  tosshin_b,  0);
setEffRotateKey(  spep_1+70,  tosshin_b,  0);
setEffAlphaKey(  spep_1,  tosshin_b,  255);
setEffAlphaKey(  spep_1+66,  tosshin_b,  255);
setEffAlphaKey(  spep_1+67,  tosshin_b,  0);
setEffAlphaKey(  spep_1+68,  tosshin_b,  0);

tosshin_f = entryEffect(  spep_1,  SP_16,  0x100,  -1,  0,  0,  0);  --突進

setEffScaleKey(  spep_1,  tosshin_f,  1.0,  1.0);
setEffScaleKey(  spep_1+70,  tosshin_f,  1.0,  1.0);
setEffMoveKey(  spep_1,  tosshin_f,  0,  0);
setEffMoveKey(  spep_1+70,  tosshin_f,  0,  0);
setEffRotateKey(  spep_1,  tosshin_f,  0);
setEffRotateKey(  spep_1+70,  tosshin_f,  0);
setEffAlphaKey(  spep_1,  tosshin_f,  255);
setEffAlphaKey(  spep_1+66,  tosshin_f,  255);
setEffAlphaKey(  spep_1+67,  tosshin_f,  0);
setEffAlphaKey(  spep_1+68,  tosshin_f,  0);

--***SE***
playSe(  spep_1+12,  1002);  --風の音

--***敵の動き***
setDisp( spep_1, 1, 1 );
changeAnime( spep_1, 1, 104 );  --構え

setMoveKey( spep_1, 1, 2522.5, 5.9 , 0 );
setMoveKey( spep_1+12, 1, 2522.5, 5.9 , 0 );
setMoveKey( spep_1+14, 1, 2349.5, -7.6 , 0 );
setMoveKey( spep_1+16, 1, 2156.8, 19.1 , 0 );
setMoveKey( spep_1+18, 1, 1992.4, -6.7 , 0 );
setMoveKey( spep_1+20, 1, 1827, 20.1 , 0 );
setMoveKey( spep_1+22, 1, 1670.2, -5.2 , 0 );
setMoveKey( spep_1+24, 1, 1520.1, 17.4 , 0 );
setMoveKey( spep_1+26, 1, 1394.2, -5.9 , 0 );
setMoveKey( spep_1+28, 1, 1258.4, 16.9 , 0 );
setMoveKey( spep_1+30, 1, 828.2, 7.1 , 0 );

--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

SP_dodge = spep_1+30 ; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

pauseAll( SP_dodge, 67);

--敵の位置
setMoveKey( SP_dodge, 1, 828.2, 7.1 , 0 );
setMoveKey( SP_dodge+2, 1, 828.2, 7.1 , 0 );
setMoveKey( SP_dodge+4, 1, 828.2, 7.1 , 0 );
setMoveKey( SP_dodge+6, 1, 828.2, 7.1 , 0 );
setMoveKey( SP_dodge+8, 1, 828.2, 7.1 , 0 );

setRotateKey( SP_dodge, 1, 0 );
setRotateKey( SP_dodge+8, 1, 0 );

setScaleKey( SP_dodge, 1, 1.5, 1.5 );
setScaleKey( SP_dodge+2, 1, 1.5, 1.5 );
setScaleKey( SP_dodge+4, 1, 1.5, 1.5 );
setScaleKey( SP_dodge+6, 1, 1.5, 1.5 );
setScaleKey( SP_dodge+8, 1, 1.5, 1.5 );

--changeAnime(  SP_dodge+9,    1,  100);
setMoveKey(  SP_dodge+9,    1,  0,  0,   0);
setMoveKey(  SP_dodge+10,    1,  0,  0,   0);
setScaleKey( SP_dodge+9,    1,  1.3, 1.3);
setScaleKey( SP_dodge+10,    1,  1.3, 1.3);
setRotateKey(   SP_dodge+9,   1, 0);
setRotateKey(   SP_dodge+10,   1, 0);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
--entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景

entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge+10);

do return end
else end

--------------------------------------
--回避されなかった場合
--------------------------------------
--**敵の動き**
setMoveKey( spep_1+32, 1, 694.1, 4.6 , 0 );
setMoveKey( spep_1+34, 1, 517.4, 11.3 , 0 );
setMoveKey( spep_1+36, 1, 370.6, 6.4 , 0 );
setMoveKey( spep_1+38, 1, 198.9, 10.9 , 0 );
setScaleKey( spep_1, 1, 1.5, 1.5 );
setScaleKey( spep_1+38, 1, 1.5, 1.5 );
setRotateKey( spep_1, 1, 0 );
setRotateKey( spep_1+38, 1, 0 );

changeAnime( spep_1+40, 1, 108 );  --くの字

setMoveKey( spep_1+40, 1, 80.5, 11.9 , 0 );
setMoveKey( spep_1+42, 1, 133.6, 66 , 0 );
setMoveKey( spep_1+44, 1, 171.9, 72.5 , 0 );
setMoveKey( spep_1+46, 1, 185.9, 97.1 , 0 );
setScaleKey( spep_1+40, 1, 1.49, 1.49 );
setScaleKey( spep_1+42, 1, 1.48, 1.48 );
setScaleKey( spep_1+44, 1, 1.48, 1.48 );
setScaleKey( spep_1+46, 1, 1.46, 1.46 );
setRotateKey( spep_1+40, 1, -10 );
setRotateKey( spep_1+42, 1, -8 );
setRotateKey( spep_1+44, 1, -6.6 );
setRotateKey( spep_1+46, 1, -5.8 );

changeAnime( spep_1+48, 1, 106 );  --仰け反り

setMoveKey( spep_1+48, 1, 191.5, 88.5 , 0 );
setMoveKey( spep_1+50, 1, 321.4, 164.3 , 0 );
setMoveKey( spep_1+52, 1, 439.6, 202.9 , 0 );
setMoveKey( spep_1+54, 1, 490.9, 253.5 , 0 );
setMoveKey( spep_1+56, 1, 446.6, 229.5 , 0 );
setMoveKey( spep_1+58, 1, 414.3, 216.5 , 0 );
setMoveKey( spep_1+60, 1, 368.9, 195.7 , 0 );
setMoveKey( spep_1+62, 1, 364.6, 179.6 , 0 );
setScaleKey( spep_1+48, 1, 1.45, 1.45 );
setScaleKey( spep_1+50, 1, 1.43, 1.43 );
setScaleKey( spep_1+52, 1, 1.43, 1.43 );
setScaleKey( spep_1+54, 1, 1.42, 1.42 );
setScaleKey( spep_1+56, 1, 1.2, 1.2 );
setScaleKey( spep_1+58, 1, 1.02, 1.02 );
setScaleKey( spep_1+60, 1, 0.9, 0.9 );
setScaleKey( spep_1+62, 1, 0.82, 0.82 );
setRotateKey( spep_1+48, 1, -5.5 );
setRotateKey( spep_1+50, 1, -4 );
setRotateKey( spep_1+52, 1, -2.7 );
setRotateKey( spep_1+54, 1, -1.5 );
setRotateKey( spep_1+56, 1, -0.6 );
setRotateKey( spep_1+58, 1, 0.1 );
setRotateKey( spep_1+60, 1, 0.6 );
setRotateKey( spep_1+62, 1, 0.9 );

--***SE***
playSe(  spep_1+40,  1011);  --ヒット音

entryFade( spep_1+40, 0, 2, 2, fcolor_r, fcolor_g, fcolor_b, 200);     -- white fade
entryFade( spep_1+62, 2, 3, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 岩山に吹き飛ぶ
------------------------------------------------------
spep_2 = spep_1+66;

--***集中線***
shuchusen2 = entryEffectLife( spep_2+24, 906, 44, 0x100,  -1, 0,  0,  0);   -- 集中線

setEffScaleKey(  spep_2+24,  shuchusen2,  1.88,  1.94);
setEffScaleKey(  spep_2+68,  shuchusen2,  1.88,  1.94);
setEffMoveKey(  spep_2+24,  shuchusen2,  0,  0);
setEffMoveKey(  spep_2+68,  shuchusen2,  0,  0);
setEffRotateKey(  spep_2+24,  shuchusen2,  0);
setEffRotateKey(  spep_2+68,  shuchusen2,  0);
setEffAlphaKey(  spep_2+24,  shuchusen2,  255);
setEffAlphaKey(  spep_2+68,  shuchusen2,  255);

--***集中線***
ct_dogo = entryEffectLife( spep_2+21,  10018, 23, 0x100, -1, 0, 6.8, 357.8 );  --ドゴォン

setEffMoveKey( spep_2+21, ct_dogo, 6.8, 357.8 , 0 );
setEffMoveKey( spep_2+22, ct_dogo, 6.8, 357.8 , 0 );
setEffMoveKey( spep_2+24, ct_dogo, 7.4, 376.7 , 0 );
setEffMoveKey( spep_2+26, ct_dogo, 11.3, 389 , 0 );
setEffMoveKey( spep_2+28, ct_dogo, 7.9, 391.9 , 0 );
setEffMoveKey( spep_2+30, ct_dogo, 10.4, 406.1 , 0 );
setEffMoveKey( spep_2+32, ct_dogo, 11, 404.6 , 0 );
setEffMoveKey( spep_2+34, ct_dogo, 6.1, 411.4 , 0 );
setEffMoveKey( spep_2+36, ct_dogo, 13.1, 412.7 , 0 );
setEffMoveKey( spep_2+38, ct_dogo, 9.3, 413.6 , 0 );
setEffMoveKey( spep_2+40, ct_dogo, 5.8, 426.6 , 0 );
setEffMoveKey( spep_2+42, ct_dogo, 9, 447.1 , 0 );
setEffMoveKey( spep_2+44, ct_dogo, 8.9, 450.8 , 0 );
setEffScaleKey( spep_2+21, ct_dogo, 2.61, 2.61 );
setEffScaleKey( spep_2+22, ct_dogo, 2.61, 2.61 );
setEffScaleKey( spep_2+24, ct_dogo, 2.8, 2.8 );
setEffScaleKey( spep_2+26, ct_dogo, 2.86, 2.86 );
setEffScaleKey( spep_2+38, ct_dogo, 2.86, 2.86 );
setEffScaleKey( spep_2+40, ct_dogo, 3.27, 3.27 );
setEffScaleKey( spep_2+42, ct_dogo, 3.51, 3.51 );
setEffScaleKey( spep_2+44, ct_dogo, 3.59, 3.59 );
setEffRotateKey( spep_2+21, ct_dogo, -0.9 );
setEffRotateKey( spep_2+22, ct_dogo, -0.9 );
setEffRotateKey( spep_2+44, ct_dogo, -0.9 );
setEffAlphaKey( spep_2+21, ct_dogo, 255 );
setEffAlphaKey( spep_2+22, ct_dogo, 255 );
setEffAlphaKey( spep_2+38, ct_dogo, 255 );
setEffAlphaKey( spep_2+40, ct_dogo, 113 );
setEffAlphaKey( spep_2+42, ct_dogo, 28 );
setEffAlphaKey( spep_2+44, ct_dogo, 0 );

--***敵の動き***
setDisp( spep_2, 1, 1 );
changeAnime( spep_2, 1, 105 );  --吹き飛び

setMoveKey( spep_2, 1, 25.9, -234.1 , 0 );
setMoveKey( spep_2+2, 1, 37.5, -380.9 , 0 );
setMoveKey( spep_2+4, 1, 37.1, -408.8 , 0 );
setMoveKey( spep_2+6, 1, 32.6, -377.3 , 0 );
setMoveKey( spep_2+8, 1, 26.9, -311.1 , 0 );
setMoveKey( spep_2+10, 1, 21.2, -228.1 , 0 );
setMoveKey( spep_2+12, 1, 16.8, -143.7 , 0 );
setMoveKey( spep_2+14, 1, 12.7, -56.8 , 0 );
setMoveKey( spep_2+16, 1, 10, 16.8 , 0 );
setMoveKey( spep_2+18, 1, 8, 80.6 , 0 );
setMoveKey( spep_2+20, 1, 6.8, 124.8 , 0 );
--setMoveKey( spep_2+22, 1, 6.3, 151.5 , 0 );
setScaleKey( spep_2, 1, 3.21, 3.21 );
setScaleKey( spep_2+2, 1, 5.11, 5.11 );
setScaleKey( spep_2+4, 1, 5.54, 5.54 );
setScaleKey( spep_2+6, 1, 5.23, 5.23 );
setScaleKey( spep_2+8, 1, 4.6, 4.6 );
setScaleKey( spep_2+10, 1, 3.8, 3.8 );
setScaleKey( spep_2+12, 1, 2.94, 2.94 );
setScaleKey( spep_2+14, 1, 2.14, 2.14 );
setScaleKey( spep_2+16, 1, 1.41, 1.41 );
setScaleKey( spep_2+18, 1, 0.82, 0.82 );
setScaleKey( spep_2+20, 1, 0.38, 0.38 );
--setScaleKey( spep_2+22, 1, 0.11, 0.11 );
setRotateKey( spep_2, 1, -19.3 );
setRotateKey( spep_2+20, 1, -19.3 );

setDisp( spep_2+21, 1, 0 );  --敵消す


--***吹き飛び背景***
fukitobiBG = entryEffect(  spep_2,  SP_03,  0x80,  -1,  0,  0,  0);  --岩山背景

setEffScaleKey(  spep_2,  fukitobiBG,  1.0,  1.0);
setEffScaleKey(  spep_2+68,  fukitobiBG,  1.0,  1.0);
setEffMoveKey(  spep_2,  fukitobiBG,  0,  0);
setEffMoveKey(  spep_2+68,  fukitobiBG,  0,  0);
setEffRotateKey(  spep_2,  fukitobiBG,  0);
setEffRotateKey(  spep_2+68,  fukitobiBG,  0);
setEffAlphaKey(  spep_2,  fukitobiBG,  255);
setEffAlphaKey(  spep_2+68,  fukitobiBG,  255);

--***SE***
playSe(  spep_2+21,  1023);  --岩にあたる

entryFade( spep_2+67, 0, 1, 1, fcolor_r, fcolor_g, fcolor_b, 200);     -- white fade

------------------------------------------------------
-- 岩を高速移動
------------------------------------------------------
spep_3 = spep_2+68;

--***集中線***
shuchusen3 = entryEffectLife( spep_3+58, 906, 64, 0x100,  -1, 0,  0,  0);   -- 集中線

setEffScaleKey(  spep_3+58,  shuchusen3,  1.21,  1.21);  --フリーザ集中線
setEffScaleKey(  spep_3+74,  shuchusen3,  1.01,  1.01);
setEffScaleKey(  spep_3+104,  shuchusen3,  1.42,  1.42);  --悟空集中線
setEffScaleKey(  spep_3+122,  shuchusen3,  1.01,  1.01);  
setEffMoveKey(  spep_3+58,  shuchusen3,  0,  0);
setEffMoveKey(  spep_3+122,  shuchusen3,  0,  0);
setEffRotateKey(  spep_3+58,  shuchusen3,  0);
setEffRotateKey(  spep_3+122,  shuchusen3,  0);
setEffAlphaKey(  spep_3+58,  shuchusen3,  255);
setEffAlphaKey(  spep_3+74,  shuchusen3,  255);
setEffAlphaKey(  spep_3+75,  shuchusen3,  0);  --非表示
setEffAlphaKey(  spep_3+76,  shuchusen3,  0);
setEffAlphaKey(  spep_3+102,  shuchusen3,  0);
setEffAlphaKey(  spep_3+103,  shuchusen3,  0);
setEffAlphaKey(  spep_3+104,  shuchusen3,  255);
setEffAlphaKey(  spep_3+122,  shuchusen3,  255);

--***書き文字***
ct_gyun = entryEffectLife( spep_3+58,  10007, 58, 0x100, -1, 0, 120.7, 250.4 );  --ギュンッ

setEffMoveKey( spep_3+58, ct_gyun, 120.7, 250.4 , 0 );
setEffMoveKey( spep_3+60, ct_gyun, 82.6, 309.9 , 0 );
setEffMoveKey( spep_3+62, ct_gyun, 69.8, 329.7 , 0 );
setEffMoveKey( spep_3+64, ct_gyun, 63.5, 332.2 , 0 );
setEffMoveKey( spep_3+66, ct_gyun, 57.3, 334.6 , 0 );
setEffMoveKey( spep_3+68, ct_gyun, 51, 337.1 , 0 );
setEffMoveKey( spep_3+104, ct_gyun, -61.6, 331.2 , 0 );
setEffMoveKey( spep_3+106, ct_gyun, -36.4, 390 , 0 );
setEffMoveKey( spep_3+108, ct_gyun, -28.1, 409.6 , 0 );
setEffMoveKey( spep_3+110, ct_gyun, -28.3, 411.5 , 0 );
setEffMoveKey( spep_3+112, ct_gyun, -28.5, 413.4 , 0 );
setEffMoveKey( spep_3+114, ct_gyun, -28.7, 415.2 , 0 );
setEffMoveKey( spep_3+116, ct_gyun, -28.9, 417.1 , 0 );
setEffScaleKey( spep_3+58, ct_gyun, 1.48, 1.48 );
setEffScaleKey( spep_3+60, ct_gyun, 2.57, 2.57 );
setEffScaleKey( spep_3+62, ct_gyun, 2.94, 2.94 );
setEffScaleKey( spep_3+64, ct_gyun, 2.98, 2.98 );
setEffScaleKey( spep_3+66, ct_gyun, 3.03, 3.03 );
setEffScaleKey( spep_3+68, ct_gyun, 3.07, 3.07 );
setEffScaleKey( spep_3+104, ct_gyun, 1.48, 1.48 );
setEffScaleKey( spep_3+106, ct_gyun, 2.58, 2.58 );
setEffScaleKey( spep_3+108, ct_gyun, 2.94, 2.94 );
setEffScaleKey( spep_3+110, ct_gyun, 2.97, 2.97 );
setEffScaleKey( spep_3+112, ct_gyun, 3.01, 3.01 );
setEffScaleKey( spep_3+114, ct_gyun, 3.04, 3.04 );
setEffScaleKey( spep_3+116, ct_gyun, 3.07, 3.07 );
setEffRotateKey( spep_3+58, ct_gyun, 9 );
setEffRotateKey( spep_3+62, ct_gyun, 9 );
setEffRotateKey( spep_3+64, ct_gyun, 9.1 );
setEffRotateKey( spep_3+66, ct_gyun, 9.1 );
setEffRotateKey( spep_3+68, ct_gyun, 9.2 );
setEffRotateKey( spep_3+104, ct_gyun, -8 );
setEffRotateKey( spep_3+106, ct_gyun, -8 );
setEffRotateKey( spep_3+110, ct_gyun, -7.9 );
setEffRotateKey( spep_3+112, ct_gyun, -7.9 );
setEffRotateKey( spep_3+114, ct_gyun, -7.8 );
setEffAlphaKey( spep_3+58, ct_gyun, 255 );
setEffAlphaKey( spep_3+68, ct_gyun, 255 );
setEffAlphaKey( spep_3+69, ct_gyun, 0 );
setEffAlphaKey( spep_3+70, ct_gyun, 0 );
setEffAlphaKey( spep_3+102, ct_gyun, 0 );
setEffAlphaKey( spep_3+103, ct_gyun, 0 );
setEffAlphaKey( spep_3+104, ct_gyun, 255 );
setEffAlphaKey( spep_3+114, ct_gyun, 255 );


tobiutsuru = entryEffect(  spep_3,  SP_04,  0x80,  -1,  0,  0,  0);  --高速移動

setEffScaleKey(  spep_3,  tobiutsuru,  1.0,  1.0);
setEffScaleKey(  spep_3+126,  tobiutsuru,  1.0,  1.0);
setEffMoveKey(  spep_3,  tobiutsuru,  0,  0);
setEffMoveKey(  spep_3+126,  tobiutsuru,  0,  0);
setEffRotateKey(  spep_3,  tobiutsuru,  0);
setEffRotateKey(  spep_3+126,  tobiutsuru,  0);
setEffAlphaKey(  spep_3,  tobiutsuru,  255);
setEffAlphaKey(  spep_3+122,  tobiutsuru,  255);
setEffAlphaKey(  spep_3+123,  tobiutsuru,  0);
setEffAlphaKey(  spep_3+124,  tobiutsuru,  0);
setEffAlphaKey(  spep_3+126,  tobiutsuru,  0);

--***SE***
playSe( spep_3 ,4);
playSe( spep_3 + 14,4);
playSe( spep_3 + 38,44);
playSe( spep_3 + 60,1027);
playSe( spep_3 + 78,4);
playSe( spep_3 + 88,44);
playSe( spep_3 + 106,1027);

--playSe(  spep_3,  1016);
--playSe(  spep_3+4,  1016);
--playSe(  spep_3+18,  1016);
--playSe(  spep_3+32,  1016);
--playSe(  spep_3+55,  1027);
--playSe(  spep_3+70,  1018);
--playSe(  spep_3+102,  9);

------------------------------------------------------
-- 押し込む
------------------------------------------------------
spep_4 = spep_3+122;

--***集中線***
shuchusen4 = entryEffectLife( spep_4+50, 906, 20, 0x100,  -1, 0,  0,  0);   -- 集中線

setEffScaleKey(  spep_4+50,  shuchusen4,  1.01,  1.01);
setEffScaleKey(  spep_4+70,  shuchusen4,  1.01,  1.01);
setEffMoveKey(  spep_4+50,  shuchusen4,  0,  0);
setEffMoveKey(  spep_4+70,  shuchusen4,  0,  0);
setEffRotateKey(  spep_4+50,  shuchusen4,  0);
setEffRotateKey(  spep_4+70,  shuchusen4,  0);
setEffAlphaKey(  spep_4+50,  shuchusen4,  255);
setEffAlphaKey(  spep_4+70,  shuchusen4,  255);

--***書き文字***
ct_bago = entryEffectLife( spep_4+8,  10021, 16, 0x100, -1, 0, 39.7, 281.5 );  --バゴォ

setEffMoveKey( spep_4+8, ct_bago, 39.7, 281.5 , 0 );
setEffMoveKey( spep_4+10, ct_bago, 13.5, 305.1 , 0 );
setEffMoveKey( spep_4+12, ct_bago, 6.1, 299.7 , 0 );
setEffMoveKey( spep_4+14, ct_bago, 17.5, 320.7 , 0 );
setEffMoveKey( spep_4+16, ct_bago, 5.5, 313.8 , 0 );
setEffMoveKey( spep_4+18, ct_bago, 10.3, 322.1 , 0 );
setEffMoveKey( spep_4+20, ct_bago, 2.7, 314.7 , 0 );
setEffMoveKey( spep_4+22, ct_bago, 14, 341.4 , 0 );
setEffMoveKey( spep_4+24, ct_bago, 11.5, 356.3 , 0 );
setEffScaleKey( spep_4+8, ct_bago, 1.88, 1.88 );
setEffScaleKey( spep_4+10, ct_bago, 2.53, 2.53 );
setEffScaleKey( spep_4+12, ct_bago, 2.57, 2.57 );
setEffScaleKey( spep_4+14, ct_bago, 2.62, 2.62 );
setEffScaleKey( spep_4+16, ct_bago, 2.66, 2.66 );
setEffScaleKey( spep_4+18, ct_bago, 2.7, 2.7 );
setEffScaleKey( spep_4+20, ct_bago, 2.73, 2.73 );
setEffScaleKey( spep_4+22, ct_bago, 2.82, 2.82 );
setEffScaleKey( spep_4+24, ct_bago, 2.96, 2.96 );
setEffRotateKey( spep_4+8, ct_bago, -11.7 );
setEffRotateKey( spep_4+10, ct_bago, -15.6 );
setEffRotateKey( spep_4+24, ct_bago, -15.6 );
setEffAlphaKey( spep_4+8, ct_bago, 255 );
setEffAlphaKey( spep_4+18, ct_bago, 255 );
setEffAlphaKey( spep_4+20, ct_bago, 227 );
setEffAlphaKey( spep_4+22, ct_bago, 142 );
setEffAlphaKey( spep_4+24, ct_bago, 0 );

ct_zun = entryEffectLife( spep_4+46,  10016, 22, 0x100, -1, 0, 9.8, 151.5 );  --ズンッ

setEffMoveKey( spep_4+46, ct_zun, 9.8, 151.5 , 0 );
setEffMoveKey( spep_4+48, ct_zun, -5.9, 246.6 , 0 );
setEffMoveKey( spep_4+50, ct_zun, -15.4, 303.6 , 0 );
setEffMoveKey( spep_4+52, ct_zun, -18.5, 322.7 , 0 );
setEffMoveKey( spep_4+54, ct_zun, -19, 324.1 , 0 );
setEffMoveKey( spep_4+56, ct_zun, -19.6, 325.5 , 0 );
setEffMoveKey( spep_4+58, ct_zun, -20.1, 326.9 , 0 );
setEffMoveKey( spep_4+60, ct_zun, -20.6, 328.3 , 0 );
setEffMoveKey( spep_4+62, ct_zun, -21.2, 329.7 , 0 );
setEffMoveKey( spep_4+64, ct_zun, -22.4, 333.2 , 0 );
setEffMoveKey( spep_4+66, ct_zun, -23.7, 336.7 , 0 );
setEffMoveKey( spep_4+68, ct_zun, -25, 340.2 , 0 );
setEffScaleKey( spep_4+46, ct_zun, 1, 1 );
setEffScaleKey( spep_4+48, ct_zun, 2.11, 2.11 );
setEffScaleKey( spep_4+50, ct_zun, 2.77, 2.77 );
setEffScaleKey( spep_4+52, ct_zun, 2.99, 2.99 );
setEffScaleKey( spep_4+54, ct_zun, 3.01, 3.01 );
setEffScaleKey( spep_4+56, ct_zun, 3.02, 3.02 );
setEffScaleKey( spep_4+58, ct_zun, 3.04, 3.04 );
setEffScaleKey( spep_4+60, ct_zun, 3.05, 3.05 );
setEffScaleKey( spep_4+62, ct_zun, 3.07, 3.07 );
setEffScaleKey( spep_4+64, ct_zun, 3.11, 3.11 );
setEffScaleKey( spep_4+66, ct_zun, 3.15, 3.15 );
setEffScaleKey( spep_4+68, ct_zun, 3.19, 3.19 );
setEffRotateKey( spep_4+46, ct_zun, -2.8 );
setEffRotateKey( spep_4+68, ct_zun, -2.8 );
setEffAlphaKey( spep_4+46, ct_zun, 255 );
setEffAlphaKey( spep_4+62, ct_zun, 255 );
setEffAlphaKey( spep_4+64, ct_zun, 170 );
setEffAlphaKey( spep_4+66, ct_zun, 85 );
setEffAlphaKey( spep_4+68, ct_zun, 0 );

--***敵の動き***
setDisp( spep_4, 1, 1 );
changeAnime( spep_4, 1, 106 );
setShakeChara(  spep_4,  1,  68,  10);  --揺れ

setMoveKey( spep_4, 1, -11.2, 3.6 , 0 );
setMoveKey( spep_4+2, 1, -11.8, 3.7 , 0 );
setMoveKey( spep_4+4, 1, -12.3, 3.9 , 0 );
setMoveKey( spep_4+6, 1, -12.9, 4.1 , 0 );
setMoveKey( spep_4+8, 1, -13.4, 4.3 , 0 );
setMoveKey( spep_4+10, 1, -24.9, -9.8 , 0 );
setMoveKey( spep_4+12, 1, -23.4, 20.9 , 0 );
setMoveKey( spep_4+14, 1, -2.6, -7.9 , 0 );
setMoveKey( spep_4+16, 1, -13.2, 19.4 , 0 );
setMoveKey( spep_4+18, 1, -15.8, -6.2 , 0 );
setMoveKey( spep_4+20, 1, -20.6, 16.5 , 0 );
setMoveKey( spep_4+22, 1, -7, -7 , 0 );
setMoveKey( spep_4+24, 1, -11, 15.8 , 0 );
setMoveKey( spep_4+26, 1, -23, -1.8 , 0 );
setMoveKey( spep_4+28, 1, -8.5, 12.5 , 0 );
setMoveKey( spep_4+30, 1, -24.8, 5.7 , 0 );
setMoveKey( spep_4+32, 1, -8.3, 3.2 , 0 );
setMoveKey( spep_4+34, 1, -19.4, 9.8 , 0 );
setMoveKey( spep_4+36, 1, -8.9, 4.9 , 0 );
setMoveKey( spep_4+38, 1, -16.6, 9.3 , 0 );
setMoveKey( spep_4+40, 1, -12.4, 1.7 , 0 );
setMoveKey( spep_4+42, 1, -13.7, 7.9 , 0 );
setMoveKey( spep_4+44, 1, -12.3, 4.1 , 0 );
setMoveKey( spep_4+46, 1, -12.9, 4.1 , 0 );
setMoveKey( spep_4+48, 1, -18.7, 19.5 , 0 );
setMoveKey( spep_4+50, 1, -7.3, 21.9 , 0 );
setMoveKey( spep_4+52, 1, -23, 25 , 0 );
setMoveKey( spep_4+54, 1, -10.4, 16.7 , 0 );
setMoveKey( spep_4+56, 1, -15.4, 29.1 , 0 );
setMoveKey( spep_4+58, 1, -20.8, 19.7 , 0 );
setMoveKey( spep_4+60, 1, -11.2, 26.6 , 0 );
setMoveKey( spep_4+62, 1, -20.2, 20.2 , 0 );
setMoveKey( spep_4+64, 1, -11.1, 23.7 , 0 );
setMoveKey( spep_4+66, 1, -23, 24.8 , 0 );
setMoveKey( spep_4+68, 1, -10.2, 26.2 , 0 );
setScaleKey( spep_4, 1, 0.79, 0.79 );
setScaleKey( spep_4+2, 1, 0.83, 0.83 );
setScaleKey( spep_4+4, 1, 0.87, 0.87 );
setScaleKey( spep_4+6, 1, 0.91, 0.91 );
setScaleKey( spep_4+8, 1, 0.95, 0.95 );
setScaleKey( spep_4+10, 1, 0.84, 0.84 );
setScaleKey( spep_4+12, 1, 1.73, 1.73 );
setScaleKey( spep_4+14, 1, 1.1, 1.1 );
setScaleKey( spep_4+16, 1, 1.17, 1.17 );
setScaleKey( spep_4+18, 1, 1.11, 1.11 );
setScaleKey( spep_4+20, 1, 1.12, 1.12 );
setScaleKey( spep_4+22, 1, 1.08, 1.08 );
setScaleKey( spep_4+24, 1, 1.08, 1.08 );
setScaleKey( spep_4+26, 1, 1.06, 1.06 );
setScaleKey( spep_4+28, 1, 1.05, 1.05 );
setScaleKey( spep_4+30, 1, 1.03, 1.03 );
setScaleKey( spep_4+32, 1, 1.02, 1.02 );
setScaleKey( spep_4+34, 1, 1, 1 );
setScaleKey( spep_4+36, 1, 0.99, 0.99 );
setScaleKey( spep_4+38, 1, 0.97, 0.97 );
setScaleKey( spep_4+40, 1, 0.96, 0.96 );
setScaleKey( spep_4+42, 1, 0.94, 0.94 );
setScaleKey( spep_4+44, 1, 0.93, 0.93 );
setScaleKey( spep_4+46, 1, 0.91, 0.91 );
setScaleKey( spep_4+48, 1, 1.36, 1.36 );
setScaleKey( spep_4+50, 1, 1.41, 1.41 );
setScaleKey( spep_4+52, 1, 1.79, 1.79 );
setScaleKey( spep_4+54, 1, 1.55, 1.55 );
setScaleKey( spep_4+56, 1, 1.75, 1.75 );
setScaleKey( spep_4+58, 1, 1.66, 1.66 );
setScaleKey( spep_4+60, 1, 1.73, 1.73 );
setScaleKey( spep_4+62, 1, 1.72, 1.72 );
setScaleKey( spep_4+64, 1, 1.73, 1.73 );
setScaleKey( spep_4+66, 1, 1.74, 1.74 );
setScaleKey( spep_4+68, 1, 1.75, 1.75 );
setRotateKey( spep_4, 1, -47.8 );
setRotateKey( spep_4+68, 1, -47.8 );

setDisp( spep_4+70, 1, 0 );  --敵消す

--***押し込む***+
oshikomu_f = entryEffect(  spep_4,  SP_05,  0x100,  -1,  0,  0,  0);  

setEffScaleKey(  spep_4,  oshikomu_f,  1.05,  1.05);
setEffScaleKey(  spep_4+90,  oshikomu_f,  1.05,  1.05);
setEffMoveKey(  spep_4,  oshikomu_f,  0,  0);
setEffMoveKey(  spep_4+90,  oshikomu_f,  0,  0);
setEffRotateKey(  spep_4,  oshikomu_f,  0);
setEffRotateKey(  spep_4+90,  oshikomu_f,  0);
setEffAlphaKey(  spep_4,  oshikomu_f,  255);
setEffAlphaKey(  spep_4+70,  oshikomu_f,  255);
setEffAlphaKey(  spep_4+71,  oshikomu_f,  0);
setEffAlphaKey(  spep_4+72,  oshikomu_f,  0);
setEffAlphaKey(  spep_4+90,  oshikomu_f,  0);

--***押し込む奥***+
oshikomu_b = entryEffect(  spep_4,  SP_06,  0x80,  -1,  0,  0,  0);  

setEffScaleKey(  spep_4,  oshikomu_b,  1.05,  1.05);
setEffScaleKey(  spep_4+90,  oshikomu_b,  1.05,  1.05);
setEffMoveKey(  spep_4,  oshikomu_b,  0,  0);
setEffMoveKey(  spep_4+90,  oshikomu_b,  0,  0);
setEffRotateKey(  spep_4,  oshikomu_b,  0);
setEffRotateKey(  spep_4+90,  oshikomu_b,  0);
setEffAlphaKey(  spep_4,  oshikomu_b,  255);
setEffAlphaKey(  spep_4+70,  oshikomu_b,  255);
setEffAlphaKey(  spep_4+71,  oshikomu_b,  0);
setEffAlphaKey(  spep_4+72,  oshikomu_b,  0);
setEffAlphaKey(  spep_4+90,  oshikomu_b,  0);

--***SE***
playSe(  spep_4+8,  1025);
playSe(  spep_4+46,  1023);

entryFade( spep_4+68, 0, 2, 2, fcolor_r, fcolor_g, fcolor_b, 200);     -- white fade

------------------------------------------------------
-- 吹き飛ばされる敵
------------------------------------------------------
spep_5 = spep_4+70;

--***吹き飛び背景***
fukitobiBG_b = entryEffect(  spep_5,  SP_08,  0x80,  -1,  0,  0,  0);  --背景奥

setEffScaleKey(  spep_5,  fukitobiBG_b,  1.0,  1.0);
setEffScaleKey(  spep_5+40,  fukitobiBG_b,  1.0,  1.0);
setEffMoveKey(  spep_5,  fukitobiBG_b,  0,  0);
setEffMoveKey(  spep_5+40,  fukitobiBG_b,  0,  0);
setEffRotateKey(  spep_5,  fukitobiBG_b,  0);
setEffRotateKey(  spep_5+40,  fukitobiBG_b,  0);
setEffAlphaKey(  spep_5,  fukitobiBG_b,  255);
setEffAlphaKey(  spep_5+40,  fukitobiBG_b,  255);

--***敵の動き***
setDisp( spep_5, 1, 1 );
changeAnime( spep_5, 1, 106 );

setMoveKey( spep_5, 1, 155.2, 58.3 , 0 );
setMoveKey( spep_5+2, 1, 163.9, 41.8 , 0 );
setMoveKey( spep_5+4, 1, 145.9, 58 , 0 );
setMoveKey( spep_5+6,1, 87.5, 77.8 , 0 );
setMoveKey( spep_5+8, 1, 36.5, 107.2 , 0 );
setMoveKey( spep_5+10, 1, 3.8, 115.9 , 0 );
setMoveKey( spep_5+12, 1, -3.3, 111.9 , 0 );
setMoveKey( spep_5+14, 1, 10.4, 90.2 , 0 );
setMoveKey( spep_5+16, 1, 34.3, 63.1 , 0 );
setMoveKey( spep_5+18, 1, 53.1, 40.6 , 0 );
setMoveKey( spep_5+20, 1, 69.7, 21.9 , 0 );
setMoveKey( spep_5+22, 1, 84.5, 6.5 , 0 );
setMoveKey( spep_5+24, 1, 98.5, -7.5 , 0 );
setMoveKey( spep_5+26, 1, 110.7, -20.3 , 0 );
setMoveKey( spep_5+28, 1, 121, -31.6 , 0 );
setMoveKey( spep_5+30, 1, 129.4, -41.5 , 0 );
setMoveKey( spep_5+32, 1, 136, -50.3 , 0 );
setMoveKey( spep_5+34, 1, 140.9, -57.6 , 0 );
setMoveKey( spep_5+36, 1, 143.9, -63.6 , 0 );
setMoveKey( spep_5+38, 1, 145.1, -68.2 , 0 );

setScaleKey( spep_5, 1, 1.31, 1.31 );
setScaleKey( spep_5+22, 1, 0.7, 0.7 );
setScaleKey( spep_5+38, 1, 0.7, 0.7 );

setRotateKey( spep_5, 1, 70.2 );
setRotateKey( spep_5+2, 1, 70.8 );
setRotateKey( spep_5+4, 1, 71.3 );
setRotateKey( spep_5+6, 1, 71.9 );
setRotateKey( spep_5+8, 1, 72.5 );
setRotateKey( spep_5+10, 1, 73 );
setRotateKey( spep_5+12, 1, 73.6 );
setRotateKey( spep_5+14, 1, 74.2 );
setRotateKey( spep_5+16, 1, 74.7 );
setRotateKey( spep_5+18, 1, 75.3 );
setRotateKey( spep_5+20, 1, 75.9 );
setRotateKey( spep_5+22, 1, 76.5 );
setRotateKey( spep_5+24, 1, 77 );
setRotateKey( spep_5+26, 1, 77.6 );
setRotateKey( spep_5+28, 1, 78.2 );
setRotateKey( spep_5+30, 1, 78.7 );
setRotateKey( spep_5+32, 1, 79.3 );
setRotateKey( spep_5+34, 1, 79.9 );
setRotateKey( spep_5+36, 1, 80.4 );
setRotateKey( spep_5+38, 1, 81 );

--***吹き飛び背景***
fukitobiBG_f = entryEffect(  spep_5,  SP_07,  0x100,  -1,  0,  0,  0);  --背景

setEffScaleKey(  spep_5,  fukitobiBG_f,  1.0,  1.0);
setEffScaleKey(  spep_5+40,  fukitobiBG_f,  1.0,  1.0);
setEffMoveKey(  spep_5,  fukitobiBG_f,  0,  0);
setEffMoveKey(  spep_5+40,  fukitobiBG_f,  0,  0);
setEffRotateKey(  spep_5,  fukitobiBG_f,  0);
setEffRotateKey(  spep_5+40,  fukitobiBG_f,  0);
setEffAlphaKey(  spep_5,  fukitobiBG_f,  255);
setEffAlphaKey(  spep_5+36,  fukitobiBG_f,  255);
setEffAlphaKey(  spep_5+37,  fukitobiBG_f,  0);
setEffAlphaKey(  spep_5+38,  fukitobiBG_f,  0);
setEffAlphaKey(  spep_5+40,  fukitobiBG_f,  0);

--***SE***
playSe(  spep_5,  1033);

entryFade( spep_5+35, 0, 1, 0, fcolor_r, fcolor_g, fcolor_b, 200);     -- white fade

------------------------------------------------------
-- フリーザを投げる
------------------------------------------------------
spep_6 = spep_5+36;

nageru = entryEffect(  spep_6,  SP_18,  0x100,  -1,  0,  0,  0);  --フリーザを投げる

setEffScaleKey(  spep_6,  nageru,  1.0,  1.0);
setEffScaleKey(  spep_6+408,  nageru,  1.0,  1.0);
setEffMoveKey(  spep_6,  nageru,  0,  0);
setEffMoveKey(  spep_6+408,  nageru,  0,  0);
setEffRotateKey(  spep_6,  nageru,  0);
setEffRotateKey(  spep_6+408,  nageru,  0);
setEffAlphaKey(  spep_6,  nageru,  255);
setEffAlphaKey(  spep_6+326,  nageru,  255);
setEffAlphaKey(  spep_6+327,  nageru,  0);
setEffAlphaKey(  spep_6+328,  nageru,  0);
setEffAlphaKey(  spep_6+408,  nageru,  0);

--***集中線***
shuchusen6 = entryEffectLife( spep_6, 906, 326, 0x100,  -1, 0,  0,  0);   -- 集中線

setEffScaleKey(  spep_6,  shuchusen6,  1.01,  1.01);
setEffScaleKey(  spep_6+120,  shuchusen6,  1.01,  1.01);
setEffScaleKey(  spep_6+122,  shuchusen6,  1.0,  1.0);
setEffScaleKey(  spep_6+188,  shuchusen6,  1.00,  1.0);
setEffScaleKey(  spep_6+190,  shuchusen6,  2.73,  1.01);  --フリーザ投げる
setEffScaleKey(  spep_6+202,  shuchusen6,  2.73,  1.01);
setEffScaleKey(  spep_6+198,  shuchusen6,  2.73,  1.01);
setEffScaleKey(  spep_6+308,  shuchusen6,  1.01,  1.01);
setEffScaleKey(  spep_6+326,  shuchusen6,  1.01,  1.01);
setEffMoveKey(  spep_6,  shuchusen6,  0,  0);
setEffMoveKey(  spep_6+190,  shuchusen6,  0,  0);
setEffMoveKey(  spep_6+191,  shuchusen6,  0,  0);
setEffMoveKey(  spep_6+190,  shuchusen6,  -500,  0);
setEffMoveKey(  spep_6+202,  shuchusen6,  -500,  0);
setEffMoveKey(  spep_6+308,  shuchusen6,  0,  0);
setEffMoveKey(  spep_6+326,  shuchusen6,  0,  0);
setEffRotateKey(  spep_6,  shuchusen6,  0);
setEffRotateKey(  spep_6+326,  shuchusen6,  0);
setEffAlphaKey(  spep_6,  shuchusen6,  255);
setEffAlphaKey(  spep_6+20,  shuchusen6,  255);
setEffAlphaKey(  spep_6+21,  shuchusen6,  0);
setEffAlphaKey(  spep_6+22,  shuchusen6,  0);
setEffAlphaKey(  spep_6+120,  shuchusen6,  0);
setEffAlphaKey(  spep_6+121,  shuchusen6,  0);
setEffAlphaKey(  spep_6+122,  shuchusen6,  255);
setEffAlphaKey(  spep_6+188,  shuchusen6,  255);
setEffAlphaKey(  spep_6+190,  shuchusen6,  255);
setEffAlphaKey(  spep_6+202,  shuchusen6,  255);
setEffAlphaKey(  spep_6+203,  shuchusen6,  0);
setEffAlphaKey(  spep_6+204,  shuchusen6,  0);
setEffAlphaKey(  spep_6+307,  shuchusen6,  0);
setEffAlphaKey(  spep_6+308,  shuchusen6,  0);
setEffAlphaKey(  spep_6+309,  shuchusen6,  255);
setEffAlphaKey(  spep_6+310,  shuchusen6,  255);
setEffAlphaKey(  spep_6+326,  shuchusen6,  255);

--***敵の動き***
setDisp( spep_6+304, 1, 1 );
changeAnime( spep_6+304, 1, 105 );  --吹き飛び

setMoveKey( spep_6+304, 1, 40.7, -56.7 , 0 );
setMoveKey( spep_6+306, 1, 38.8, -57.1 , 0 );
setMoveKey( spep_6+308, 1, 42.1, -57.4 , 0 );
setMoveKey( spep_6+310, 1, 38.7, -57.6 , 0 );
setMoveKey( spep_6+312, 1, 42, -57.2 , 0 );
setMoveKey( spep_6+314, 1, 38.7, -57.1 , 0 );
setMoveKey( spep_6+316, 1, 41.8, -57.7 , 0 );
setMoveKey( spep_6+318, 1, 39.6, -53.5 , 0 );
setMoveKey( spep_6+320, 1, 43.2, -58.6 , 0 );
setMoveKey( spep_6+322, 1, 36.3, -58.1 , 0 );
setMoveKey( spep_6+324, 1, 41.7, -55.4 , 0 );
setMoveKey( spep_6+326, 1, 41.7, -55.4 , 0 );
setScaleKey( spep_6+304, 1, 0.97, 0.97 );
setScaleKey( spep_6+306, 1, 0.98, 0.98 );
setScaleKey( spep_6+308, 1, 1.03, 1.03 );
setScaleKey( spep_6+310, 1, 1.09, 1.09 );
setScaleKey( spep_6+312, 1, 1.2, 1.2 );
setScaleKey( spep_6+314, 1, 1.36, 1.36 );
setScaleKey( spep_6+316, 1, 1.58, 1.58 );
setScaleKey( spep_6+318, 1, 1.88, 1.88 );
setScaleKey( spep_6+320, 1, 2.29, 2.29 );
setScaleKey( spep_6+322, 1, 2.88, 2.88 );
setScaleKey( spep_6+324, 1, 3.78, 3.78 );
setScaleKey( spep_6+326, 1, 3.78, 3.78 );
setRotateKey( spep_6+304, 1, 0 );
setRotateKey( spep_6+326, 1, 0 );

setDisp(  spep_6+326,  1,  0);  --敵消す

haikei = entryEffect(  spep_6+308,  SP_10,  0x80,  -1,  0,  0,  0);  --敵背景

setEffScaleKey(  spep_6+308,  haikei,  1.0,  1.0);
setEffScaleKey(  spep_6+408,  haikei,  1.0,  1.0);
setEffMoveKey(  spep_6+308,  haikei,  0,  0);
setEffMoveKey(  spep_6+408,  haikei,  0,  0);
setEffRotateKey(  spep_6+308,  haikei,  0);
setEffRotateKey(  spep_6+408,  haikei,  0);
setEffAlphaKey(  spep_6+308,  haikei,  255);
setEffAlphaKey(  spep_6+326,  haikei,  255);
setEffAlphaKey(  spep_6+327,  haikei,  0);
setEffAlphaKey(  spep_6+328,  haikei,  0);
setEffAlphaKey(  spep_6+408,  haikei,  0);

--***カットイン***
--speff = entryEffect(  spep_6+120,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  spep_6+120,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー --
--ctgogo = entryEffectLife( spep_6+134, 190006, 67, 0x100, -1, 0, 0, 510);    -- ゴゴゴゴ

--setEffAlphaKey( spep_6 + 134, ctgogo, 255 );
--setEffAlphaKey( spep_6 + 192, ctgogo, 255 );
--setEffAlphaKey( spep_6 + 193, ctgogo, 255 );
--setEffAlphaKey( spep_6 + 194, ctgogo, 191 );
--setEffAlphaKey( spep_6 + 196, ctgogo, 128 );
--setEffAlphaKey( spep_6 + 200, ctgogo, 64 );
--setEffAlphaKey( spep_4 + 102, ctgogo, 0 );
--setEffAlphaKey( spep_6 + 203, ctgogo, 0 );

--setEffRotateKey(  spep_6+134,  ctgogo,  0);
--setEffRotateKey(  spep_6+203,  ctgogo,  0);

--setEffScaleKey(  spep_6+134,  ctgogo,  0.7,  0.7);
--setEffScaleKey(  spep_6+193,  ctgogo,  0.7,  0.7);
--setEffScaleKey( spep_4 + 98, ctgogo, 0.79, 0.79 );
--setEffScaleKey( spep_4 + 100, ctgogo, 0.93, 0.93 );
--setEffScaleKey( spep_6 + 203, ctgogo, 1.07, 1.07 );

--setEffMoveKey(  spep_6+134,  ctgogo,  0,  530);
--setEffMoveKey(  spep_6+203,  ctgogo,  0,  530);

--***SE***
playSe(  spep_6,  1027);
--playSe(  spep_6+80,  49);
playSe(  spep_6+102,  1047);
playSe(  spep_6+134,  SE_04);  --カットイン
playSe(  spep_6+214,  9);
playSe(  spep_6+240,  1022);

--**白フェード**
entryFade( spep_6+80, 2, 3, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- フリーザ激突
------------------------------------------------------
spep_7 = spep_6+326;

f_gekitotsu = entryEffect(  spep_7,  SP_11,  0x100,  -1,  0,  0,  0);  --フリーザ激突

setEffScaleKey(  spep_7,  f_gekitotsu,  1.0,  1.0);
setEffScaleKey(  spep_7+50,  f_gekitotsu,  1.0,  1.0);
setEffMoveKey(  spep_7,  f_gekitotsu,  0,  0);
setEffMoveKey(  spep_7+50,  f_gekitotsu,  0,  0);
setEffRotateKey(  spep_7,  f_gekitotsu,  0);
setEffRotateKey(  spep_7+50,  f_gekitotsu,  0);
setEffAlphaKey(  spep_7,  f_gekitotsu,  255);
setEffAlphaKey(  spep_7+50,  f_gekitotsu,  255);
setEffAlphaKey(  spep_7+51,  f_gekitotsu,  0);
setEffAlphaKey(  spep_7+52,  f_gekitotsu,  0);

--**SE**
playSe(  spep_7+8,  1024);

------------------------------------------------------
-- 悟空激突
------------------------------------------------------
spep_8 = spep_7+50;

g_gekitotsu = entryEffect(  spep_8,  SP_12,  0x80,  -1,  0,  0,  0);  --敵背景

setEffScaleKey(  spep_8,  g_gekitotsu,  1.0,  1.0);
setEffScaleKey(  spep_8+108,  g_gekitotsu,  1.0,  1.0);
setEffMoveKey(  spep_8,  g_gekitotsu,  0,  0);
setEffMoveKey(  spep_8+108,  g_gekitotsu,  0,  0);
setEffRotateKey(  spep_8,  g_gekitotsu,  0);
setEffRotateKey(  spep_8+108,  g_gekitotsu,  0);
setEffAlphaKey(  spep_8,  g_gekitotsu,  255);
setEffAlphaKey(  spep_8+108,  g_gekitotsu,  255);

playSe(  spep_8,  50);
playSe(  spep_8+40,  9);

------------------------------------------------------
-- 突進してガガガ
------------------------------------------------------
spep_9 = spep_8+108;

tosshin2 = entryEffect(  spep_9,  SP_19,  0x80,  -1,  0,  0,  0);  --突進してガガガ

setEffScaleKey(  spep_9,  tosshin2,  1.0,  1.0);
--setEffScaleKey(  spep_9+102,  tosshin2,  1.0,  1.0);
--setEffScaleKey(  spep_9+104,  tosshin2,  -1.0,  1.0);
setEffScaleKey(  spep_9+160,  tosshin2,  1.0,  1.0);
setEffMoveKey(  spep_9,  tosshin2,  0,  0);
setEffMoveKey(  spep_9+160,  tosshin2,  0,  0);
setEffRotateKey(  spep_9,  tosshin2,  0);
setEffRotateKey(  spep_9+160,  tosshin2,  0);
setEffAlphaKey(  spep_9,  tosshin2,  255);
setEffAlphaKey(  spep_9+160,  tosshin2,  255);
setEffAlphaKey(  spep_9+161,  tosshin2,  0);
setEffAlphaKey(  spep_9+162,  tosshin2,  0);
setEffAlphaKey(  spep_9+240,  tosshin2,  0);

playSe(  spep_9+14,  1060); 
SE1 = playSe(  spep_9+20,  1044);
stopSe(  spep_9+112,  SE1,  10);
playSe(  spep_9+50,  1060);
playSe(  spep_9+100,  1067);
------------------------------------------------------
-- カード
------------------------------------------------------
spep_10 = spep_9+160;

playSe( spep_10, SE_05);
speff = entryEffect(  spep_10,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

shuchusen10 = entryEffectLife( spep_10, 906, 90, 0x100,  -1, 0,  0,  0);

setEffMoveKey(  spep_10,  shuchusen10,  0,  0);
setEffMoveKey(  spep_10+90,  shuchusen10,  0,  0);
setEffScaleKey(  spep_10,  shuchusen10,  1.6,  1.6);
setEffScaleKey(  spep_10+90,  shuchusen10,  1.6,  1.6);
setEffRotateKey(  spep_10,  shuchusen10,  0);
setEffRotateKey(  spep_10+90,  shuchusen10,  0);
setEffAlphaKey(  spep_10,  shuchusen10,  255);
setEffAlphaKey(  spep_10+90,  shuchusen10,  255);

entryFade( spep_10+85, 3, 6,  3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- アップ
------------------------------------------------------
spep_11 = spep_10+90;

up = entryEffect(  spep_11,  SP_14,  0x80,  -1,  0,  0,  0);  --ナビアップ

setEffScaleKey(  spep_11,  up,  -1.0,  1.0);
setEffScaleKey(  spep_11+142,  up,  -1.0,  1.0);
setEffMoveKey(  spep_11,  up,  0,  0);
setEffMoveKey(  spep_11+142,  up,  0,  0);
setEffRotateKey(  spep_11,  up,  0);
setEffRotateKey(  spep_11+142,  up,  0);
setEffAlphaKey(  spep_11,  up,  255);
setEffAlphaKey(  spep_11+138,  up,  255);
setEffAlphaKey(  spep_11+139,  up,  0);
setEffAlphaKey(  spep_11+140,  up,  0);
setEffAlphaKey(  spep_11+142,  up,  0);

playSe(  spep_11,  1022);
playSe(  spep_11+70,  1026);

------------------------------------------------------
-- 爆発
------------------------------------------------------
spep_12 = spep_11+138;

bakuhatsu = entryEffect(  spep_12,  SP_15,  0x80,  -1,  0,  0,  0);  --爆発

setEffScaleKey(  spep_124,  bakuhatsu,  1.0,  1.0);
setEffScaleKey(  spep_12+110,  bakuhatsu,  1.0,  1.0);
setEffMoveKey(  spep_124,  bakuhatsu,  0,  0);
setEffMoveKey(  spep_12+110,  bakuhatsu,  0,  0);
setEffRotateKey(  spep_124,  bakuhatsu,  0);
setEffRotateKey(  spep_12+110,  bakuhatsu,  0);
setEffAlphaKey(  spep_124,  bakuhatsu,  255);
setEffAlphaKey(  spep_12+110,  bakuhatsu,  255);
setEffAlphaKey(  spep_12+111,  bakuhatsu,  0);
setEffAlphaKey(  spep_12+112,  bakuhatsu,  0);

playSe(  spep_12,  1067);

entryFade( spep_12+3, 2, 2, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


-- ダメージ表示
dealDamage(spep_12+10);

entryFade( spep_12+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase( spep_12+110);


end
