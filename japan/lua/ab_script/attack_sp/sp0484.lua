--魔人ブウ(善)　1015110
--sp_effect_a7_00022


fcolor_r = 245 ;
fcolor_g = 245 ;
fcolor_b = 245 ;
 
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
SP_01 = 152167 ;--気ダメ
SP_02 = 152168 ;--嫌いだー
SP_03 = 152169 ;--被弾　手前
SP_04 = 152170 ;--被弾　奥
SP_05 = 152171 ;--爆発
SP_06 = 152172 ;--2体目以降爆発

-----------------------------------------------------
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
--味方側
------------------------------------------------------
------------------------------------------------------
--気ダメ (189F)
------------------------------------------------------

spep_0 = 0;

--ゴゴゴゴゴ
ctg = entryEffectLife( spep_0 + 224, 190006, 76, 0x100, -1, -110, 500 );

setEffMoveKey( spep_0 + 224, ctg, 0, 500, 0 );
setEffScaleKey( spep_0 + 224, ctg, 0.75, 0.75 );
setEffRotateKey( spep_0 + 224, ctg, 1, 1 );
setEffAlphaKey( spep_0 + 224, ctg, 255 );

setEffMoveKey( spep_0 + 288, ctg, 0, 500, 0 );
setEffScaleKey( spep_0 + 288, ctg, 0.75, 0.75 );
setEffRotateKey( spep_0 + 288, ctg, 1, 1 );
setEffAlphaKey( spep_0 + 288, ctg, 255 );

setEffMoveKey( spep_0 + 300, ctg, 0, 500, 0 );
setEffScaleKey( spep_0 + 300, ctg, 4.0, 4.0 );
setEffRotateKey( spep_0 + 300, ctg, 1, 1 );
setEffAlphaKey( spep_0 + 300, ctg, 0 );

setEffShake( spep_0 + 224, ctg, 76, 10 );

--顔カットイン
speff = entryEffect( spep_0 + 210, 1504, 0x100, -1, 0, 0, 0 );
setEffReplaceTexture( speff, 3, 2 );

--セリフカットイン
speff1 = entryEffect( spep_0 + 210, 1505, 0x100, -1, 0, 0, 0 );
setEffReplaceTexture( speff1, 4, 5 );

--ブウ立ち絵
kidame = entryEffectLife( spep_0, SP_01, 360, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_0, kidame, 0, 0, 0 );
setEffScaleKey( spep_0, kidame, 1, 1 );
setEffRotateKey( spep_0, kidame, 0 );
setEffAlphaKey( spep_0, kidame, 255 );

setEffMoveKey( spep_0 + 360, kidame, 0, 0, 0 );
setEffScaleKey( spep_0 + 360, kidame, 1, 1 );
setEffRotateKey( spep_0 + 360, kidame, 0 );
setEffAlphaKey( spep_0 + 360, kidame, 255 );

--集中線
shuchuse1 = entryEffectLife( spep_0 + 220, 906, 88, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_0 + 220, shuchuse1, 0, 0, 0 );
setEffScaleKey( spep_0 + 220, shuchuse1, 1.5, 1.5 );
setEffRotateKey( spep_0 + 220, shuchuse1, 0 );
setEffAlphaKey( spep_0 + 220, shuchuse1, 255 );

setEffMoveKey( spep_0 + 308, shuchuse1, 0, 0, 0 );
setEffScaleKey( spep_0 + 308, shuchuse1, 1.5, 1.5 );
setEffRotateKey( spep_0 + 308, shuchuse1, 0 );
setEffAlphaKey( spep_0 + 308, shuchuse1, 255 );

--SE(風切り音)
playSe( spep_0 + 0, 1200 );
setSeVolume( spep_0 + 0, 1200, 0 );
setSeVolume( spep_0 + 29, 1200, 66 );
setSeVolume( spep_0 + 30, 1200, 122 );
setSeVolume( spep_0 + 31, 1200, 200 );
playSe( spep_0 + 0, 1072 );
setSeVolume( spep_0 + 0, 1072, 3 );
setSeVolume( spep_0 + 17, 1072, 6 );
setSeVolume( spep_0 + 18, 1072, 9 );
setSeVolume( spep_0 + 19, 1072, 12 );
setSeVolume( spep_0 + 20, 1072, 15 );
setSeVolume( spep_0 + 21, 1072, 18 );
setSeVolume( spep_0 + 22, 1072, 21 );
setSeVolume( spep_0 + 23, 1072, 24 );
setSeVolume( spep_0 + 24, 1072, 27 );
setSeVolume( spep_0 + 25, 1072, 30 );
setSeVolume( spep_0 + 26, 1072, 33 );
setSeVolume( spep_0 + 27, 1072, 36 );
setSeVolume( spep_0 + 28, 1072, 39 );
setSeVolume( spep_0 + 29, 1072, 42 );
setSeVolume( spep_0 + 30, 1072, 45 );
setSeVolume( spep_0 + 31, 1072, 46 );
playSe( spep_0 + 16, 8 );
se_1044 = playSe( spep_0 + 25, 1044 );

setSeVolume( spep_0 + 25, 1044, 10 );
setSeVolume( spep_0 + 96, 1044, 13.1);
setSeVolume( spep_0 + 97, 1044, 16.2);
setSeVolume( spep_0 + 98, 1044, 19.3);
setSeVolume( spep_0 + 99, 1044, 22.4);
setSeVolume( spep_0 + 100, 1044, 25.5);
setSeVolume( spep_0 + 101, 1044, 28.6);
setSeVolume( spep_0 + 102, 1044, 31.7);
setSeVolume( spep_0 + 103, 1044, 34.8);
setSeVolume( spep_0 + 104, 1044, 37.9);
setSeVolume( spep_0 + 105, 1044,41);
setSeVolume( spep_0 + 106, 1044,44.1);
setSeVolume( spep_0 + 107, 1044,47.2);
setSeVolume( spep_0 + 108, 1044,50.3);
setSeVolume( spep_0 + 109, 1044,53.4);
setSeVolume( spep_0 + 110, 1044,56.5);
setSeVolume( spep_0 + 111, 1044,59.6);
setSeVolume( spep_0 + 112, 1044,62.7);
setSeVolume( spep_0 + 113, 1044,65.8);
setSeVolume( spep_0 + 114, 1044,68.9);
setSeVolume( spep_0 + 115, 1044,72);
setSeVolume( spep_0 + 116, 1044,75.1);
setSeVolume( spep_0 + 117, 1044,78.2);
setSeVolume( spep_0 + 118, 1044,81.3);
setSeVolume( spep_0 + 119, 1044,84.4);
setSeVolume( spep_0 + 120, 1044,87.5);
setSeVolume( spep_0 + 121, 1044,90.6);
setSeVolume( spep_0 + 122, 1044,93.7);
setSeVolume( spep_0 + 123, 1044,96.8);
setSeVolume( spep_0 + 124, 1044,100);

setSeVolume( spep_0 + 144, 1044,94.5);
setSeVolume( spep_0 + 145, 1044,89);
setSeVolume( spep_0 + 146, 1044,83.5);
setSeVolume( spep_0 + 147, 1044,78);
setSeVolume( spep_0 + 148, 1044,72.5);
setSeVolume( spep_0 + 149, 1044,67);
setSeVolume( spep_0 + 150, 1044,61.5);
setSeVolume( spep_0 + 151, 1044,56);
setSeVolume( spep_0 + 152, 1044,50.5);
setSeVolume( spep_0 + 153, 1044,45);

setSeVolume( spep_0 + 230, 1044,51.87);
setSeVolume( spep_0 + 231, 1044,58.74);
setSeVolume( spep_0 + 232, 1044,65.61);
setSeVolume( spep_0 + 233, 1044,72.48);
setSeVolume( spep_0 + 234, 1044,79.35);
setSeVolume( spep_0 + 235, 1044,86.22);
setSeVolume( spep_0 + 236, 1044,93.09);
setSeVolume( spep_0 + 237, 1044,100);

playSe( spep_0 + 223, 1024 );
playSe( spep_0 + 224, 1018 );

--白フェード
entryFade( spep_0, 0, 0, 4, fcolor_r, fcolor_g, fcolor_b, 255 );
entryFade( spep_0 + 332, 25, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );

--少し薄めの黒背景
entryFadeBg( spep_0, 0, 360, 0, 24, 42, 56, 255 );

--------------------------------------
--カードカットイン
--------------------------------------
spep_1 = spep_0 + 360;

--カード
speff2 = entryEffect( spep_1, 1507, 0x80, -1, 0, 0, 0 );   
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

--集中線
shuchuse2 = entryEffectLife( spep_1, 906, 90, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_1, shuchuse2, 0, 0, 0 );
setEffScaleKey( spep_1, shuchuse2, 1.5, 1.5 );
setEffRotateKey( spep_1, shuchuse2, 0 );
setEffAlphaKey( spep_1, shuchuse2, 255 );

setEffMoveKey( spep_1 + 90, shuchuse2, 0, 0, 0 );
setEffScaleKey( spep_1 + 90, shuchuse2, 1.5, 1.5 );
setEffRotateKey( spep_1 + 90, shuchuse2, 0 );
setEffAlphaKey( spep_1 + 90, shuchuse2, 255 );

-- ** エフェクト等 ** --
entryFade( spep_1 + 85, 3, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

--SE
playSe( spep_1, SE_05);
stopSe( spep_1 + 0, se_1044, 0 );


------------------------------------------------------
--嫌いだー (114F)
------------------------------------------------------
spep_2 = spep_1 + 90;

--黒背景
entryFadeBg( spep_2, 0, 130, 0, 0, 0, 0 );

--白フェード
entryFade( spep_2, 0, 0, 10, fcolor_r, fcolor_g, fcolor_b, 255 );
entryFade( spep_2 + 127, 0, 0, 3, fcolor_r, fcolor_g, fcolor_b, 200 );

--ブウ立ち絵
kiraida = entryEffectLife( spep_2, SP_02, 130, 0x100, -1, 0, 0, 0, 0 );

setEffMoveKey( spep_2, kiraida, 0, 0, 0 );
setEffScaleKey( spep_2, kiraida, 1, 1 );
setEffRotateKey( spep_2, kiraida, 0 );
setEffAlphaKey( spep_2, kiraida, 255 );

setEffMoveKey( spep_2 + 130, kiraida, 0, 0, 0 );
setEffScaleKey( spep_2 + 130, kiraida, 1, 1 );
setEffRotateKey( spep_2 + 130, kiraida, 0 );
setEffAlphaKey( spep_2 + 130, kiraida, 255 );

--SE(爆発音と地響き)
se_1200 = playSe( spep_2 + 0, 1200 );
setSeVolume( spep_2 + 0, 1200, 0 );
setSeVolume( spep_2 + 23,1200,45.14);
setSeVolume( spep_2 + 24,1200,90.28);
setSeVolume( spep_2 + 25,1200,135.42);
setSeVolume( spep_2 + 26,1200,180.56);
setSeVolume( spep_2 + 27,1200,225.7);
setSeVolume( spep_2 + 28,1200,270.84);
setSeVolume( spep_2 + 29,1200,316);
se_0009 = playSe( spep_2 + 20, 9 );
setSeVolume( spep_2 + 20, 9, 79 );
se_1214 = playSe( spep_2 + 20, 1214 );
setSeVolume( spep_2 + 90,1214,104.5);
setSeVolume( spep_2 + 91,1214,109);
setSeVolume( spep_2 + 92,1214,113.5);
setSeVolume( spep_2 + 93,1214,118);
setSeVolume( spep_2 + 94,1214,122.5);
setSeVolume( spep_2 + 95,1214,127);
setSeVolume( spep_2 + 96,1214,131.5);
setSeVolume( spep_2 + 971214,136);
setSeVolume( spep_2 + 98,1214,140.5);
setSeVolume( spep_2 + 99,1214,145);
setSeVolume( spep_2 + 100,1214,149.5);
setSeVolume( spep_2 + 101,1214,154);
setSeVolume( spep_2 + 102,1214,158.5);
setSeVolume( spep_2 + 103,1214,163);
setSeVolume( spep_2 + 104,1214,167.5);
setSeVolume( spep_2 + 105,1214,172);
setSeVolume( spep_2 + 106,1214,176.5);
setSeVolume( spep_2 + 107,1214,181);
setSeVolume( spep_2 + 108,1214,185.5);
setSeVolume( spep_2 + 109,1214,190);
setSeVolume( spep_2 + 110,1214,194.5);
setSeVolume( spep_2 + 111,1214,199);
setSeVolume( spep_2 + 112,1214,203.5);
setSeVolume( spep_2 + 113,1214,208);
setSeVolume( spep_2 + 114,1214,212.5);
setSeVolume( spep_2 + 115,1214,217);
setSeVolume( spep_2 + 116,1214,224);
se_1044 = playSe( spep_2 + 20, 1044 );
setSeVolume( spep_2 + 20, 1044, 50 );
se_1161 = playSe( spep_2 + 20, 1161 );
setSeVolume( spep_2 + 20, 1161,1.51);
setSeVolume( spep_2 + 21, 1161,3.02);
setSeVolume( spep_2 + 22, 1161,4.53);
setSeVolume( spep_2 + 23, 1161,6.04);
setSeVolume( spep_2 + 24, 1161,7.55);
setSeVolume( spep_2 + 25, 1161,9.06);
setSeVolume( spep_2 + 26, 1161,10.57);
setSeVolume( spep_2 + 27, 1161,12.08);
setSeVolume( spep_2 + 28, 1161,13.59);
setSeVolume( spep_2 + 29, 1161,15.1);
setSeVolume( spep_2 + 30, 1161,16.61);
setSeVolume( spep_2 + 31, 1161,18.12);
setSeVolume( spep_2 + 32, 1161,19.63);
setSeVolume( spep_2 + 33, 1161,21.14);
setSeVolume( spep_2 + 34, 1161,22.65);
setSeVolume( spep_2 + 35, 1161,24.16);
setSeVolume( spep_2 + 36, 1161,25.67);
setSeVolume( spep_2 + 37, 1161,27.18);
setSeVolume( spep_2 + 38, 1161,28.69);
setSeVolume( spep_2 + 39, 1161,30.2);
setSeVolume( spep_2 + 40, 1161,31.71);
------------------------------------------------------
-- 回避
------------------------------------------------------
if (_IS_DODGE_ == 1) then

SP_dodge = spep_2+40; --エンドフェイズのフレーム数を置き換える

--setDisp(SP_dodge, 0, 0);
--setDisp(SP_dodge, 1, 0);

--敵を外に
setMoveKey( SP_dodge, 1, 1000, 1000, 0 );
setMoveKey( SP_dodge + 10, 1, 1000, 1000, 0 );
setScaleKey( SP_dodge, 1, 1, 1 );
setScaleKey( SP_dodge + 10, 1, 1, 1 );
setRotateKey( SP_dodge, 1, 0, 0 );
setRotateKey( SP_dodge + 10, 1, 0, 0 );

playSe( SP_dodge-12, 1042);
stopSe( SP_dodge-12, se_1200, 0 );
stopSe( SP_dodge-12, se_0009, 0 );
stopSe( SP_dodge-12, se_1214, 0 );
stopSe( SP_dodge-12, se_1044, 0 );
stopSe( SP_dodge-12, se_1161, 0 );

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(SP_dodge+10);

do return end
else end

--SE
setSeVolume( spep_2 + 41,33.22);
setSeVolume( spep_2 + 42,34.73);
setSeVolume( spep_2 + 43,36.24);
setSeVolume( spep_2 + 44, 1161,37.75);
setSeVolume( spep_2 + 45, 1161,39.26);
setSeVolume( spep_2 + 46, 1161,40.77);
setSeVolume( spep_2 + 47, 1161,42.28);
setSeVolume( spep_2 + 48, 1161,43.79);
setSeVolume( spep_2 + 49, 1161,45.3);
setSeVolume( spep_2 + 50, 1161,46.81);
setSeVolume( spep_2 + 51, 1161,48.32);
setSeVolume( spep_2 + 52, 1161,49.83);
setSeVolume( spep_2 + 53, 1161,51.34);
setSeVolume( spep_2 + 54, 1161,52.85);
setSeVolume( spep_2 + 55, 1161,54.36);
setSeVolume( spep_2 + 56, 1161,55.87);
stopSe( spep_2 + 83, se_1200, 34 );
stopSe( spep_2 + 39, se_0009, 58 );

--------------------------------------
--被弾 (245F)
--------------------------------------
spep_3 = spep_2 + 130;

--敵ふっとび
setDisp( spep_3, 1, 1 );
setDisp( spep_3 + 50, 1, 0 );

changeAnime( spep_3, 1, 104 );
changeAnime( spep_3 + 10, 1, 108 );

setMoveKey( spep_3, 1, -164, -134, 0 );
setMoveKey( spep_3 + 10, 1, -164, -134, 0 );
setMoveKey( spep_3 + 50, 1, 100, 80, 0 );

setScaleKey( spep_3 + 0, 1, 2, 2 );
setScaleKey( spep_3 + 50, 1, 2, 2 );

setRotateKey( spep_3 + 0, 1, -30 );
setRotateKey( spep_3 + 50, 1, -30 );

setShakeChara( spep_3, 1, 50, 20);

--黒背景
entryFadeBg( spep_3, 0, 100, 0, 0, 0, 0 );

--白フェード
entryFade( spep_3, 0, 0, 10, fcolor_r, fcolor_g, fcolor_b, 255 );
entryFade( spep_3 + 92, 8, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255 );

--被弾奥
hidanO = entryEffectLife( spep_3, SP_04, 100, 0x80, -1, 0, 0, 0, 0 );

setEffMoveKey( spep_3, hidanO, 1, 1, 0 );
setEffScaleKey( spep_3, hidanO, 1, 1 );
setEffRotateKey( spep_3, hidanO, 0 );
setEffAlphaKey( spep_3, hidanO, 255 );

setEffMoveKey( spep_3 + 100, hidanO, 1, 1, 0 );
setEffScaleKey( spep_3 + 100 , hidanO, 1, 1 );
setEffRotateKey( spep_3 + 100, hidanO, 0 );
setEffAlphaKey( spep_3 + 100, hidanO, 255 );

--被弾手前
hidanF = entryEffectLife( spep_3, SP_03, 100, 0x100, -1, 0, 0, 0, 0 );

setEffMoveKey( spep_3, hidanF, 1, 1, 0 );
setEffScaleKey( spep_3, hidanF, 1, 1 );
setEffRotateKey( spep_3, hidanF, 0 );
setEffAlphaKey( spep_3, hidanF, 255 );

setEffMoveKey( spep_3 + 100, hidanF, 1, 1, 0 );
setEffScaleKey( spep_3 + 100 , hidanF, 1, 1 );
setEffRotateKey( spep_3 + 100, hidanF, 0 );
setEffAlphaKey( spep_3 + 100, hidanF, 255 );


--SE(爆発音系)
playSe( spep_3 + 0, 1021 );

stopSe( spep_3 + 99, se_1214, 0 );
stopSe( spep_3 + 99, se_1044, 0 );
stopSe( spep_3 + 99, se_1161, 0 );
------------------------------------------------------
--爆発 (98F)
------------------------------------------------------
spep_4 = spep_3 + 100;

--黒背景
entryFadeBg( spep_4, 0, 260, 0, 24, 42, 56, 255 );

--白フェード
entryFade( spep_4, 0, 0, 10, fcolor_r, fcolor_g, fcolor_b, 255 );

--集中線
shuchuse3 = entryEffectLife( spep_4 + 110, 906, 90, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_4 + 110, shuchuse3, 0, 0, 0 );
setEffScaleKey( spep_4 + 110, shuchuse3, 1, 1 );
setEffRotateKey( spep_4 + 110, shuchuse3, 0 );
setEffAlphaKey( spep_4 + 110, shuchuse3, 255 );

setEffMoveKey( spep_4 + 200, shuchuse3, 0, 0 , 0 );
setEffScaleKey( spep_4 + 200, shuchuse3, 1, 1 );
setEffRotateKey( spep_4 + 200, shuchuse3, 0 );
setEffAlphaKey( spep_4 + 200, shuchuse3, 255 );


--爆発Eff
bakuha = entryEffect( spep_4, SP_05, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_4, bakuha, 1, 1, 0 );
setEffScaleKey( spep_4, bakuha, 1, 1 );
setEffRotateKey( spep_4, bakuha, 0 );
setEffAlphaKey( spep_4, bakuha, 255 );

setEffMoveKey( spep_4 + 260, bakuha, 1, 1, 0 );
setEffScaleKey( spep_4 + 260, bakuha, 1, 1 );
setEffRotateKey( spep_4 + 260, bakuha, 0 );
setEffAlphaKey( spep_4 + 260, bakuha, 255 );

--SE
se_1044 = playSe( spep_4 -37 + 37, 1044 );
setSeVolume( spep_4 -37 + 37,1044,1.5);
setSeVolume( spep_4 -37 + 38,1044,3);
setSeVolume( spep_4 -37 + 39,1044,4.5);
setSeVolume( spep_4 -37 + 40,1044,6);
setSeVolume( spep_4 -37 + 41,1044,7.5);
setSeVolume( spep_4 -37 + 42,1044,9);
setSeVolume( spep_4 -37 + 43,1044,10.5);
setSeVolume( spep_4 -37 + 441044,12);
setSeVolume( spep_4 -37 + 45,1044,13.5);
setSeVolume( spep_4 -37 + 46,1044,15);
setSeVolume( spep_4 -37 + 47,1044,16.5);
setSeVolume( spep_4 -37 + 48,1044,18);
setSeVolume( spep_4 -37 + 49,1044,19.5);
setSeVolume( spep_4 -37 + 50,1044,21);
setSeVolume( spep_4 -37 + 51,1044,22.5);
setSeVolume( spep_4 -37 + 52,1044,24);
setSeVolume( spep_4 -37 + 53,1044,25.5);
setSeVolume( spep_4 -37 + 54,1044,27);
setSeVolume( spep_4 -37 + 55,1044,28.5);
setSeVolume( spep_4 -37 + 56,1044,30);
setSeVolume( spep_4 -37 + 57,1044,31.5);
setSeVolume( spep_4 -37 + 58,1044,33);
setSeVolume( spep_4 -37 + 59,1044,34.5);
setSeVolume( spep_4 -37 + 60,1044,36);
setSeVolume( spep_4 -37 + 61,1044,37.5);
setSeVolume( spep_4 -37 + 62,1044,39);
setSeVolume( spep_4 -37 + 63,1044,40.5);
setSeVolume( spep_4 -37 + 64,1044,42);
setSeVolume( spep_4 -37 + 65,1044,43.5);
setSeVolume( spep_4 -37 + 66,1044,45);
setSeVolume( spep_4 -37 + 67,1044,46.5);
setSeVolume( spep_4 -37 + 68,1044,48);
setSeVolume( spep_4 -37 + 69,1044,49.5);
setSeVolume( spep_4 -37 + 70,1044,51);
setSeVolume( spep_4 -37 + 71,1044,52.5);
setSeVolume( spep_4 -37 + 72,1044,54);
setSeVolume( spep_4 -37 + 73,1044,55.5);
setSeVolume( spep_4 -37 + 74,1044,57);
setSeVolume( spep_4 -37 + 75,1044,58.5);
setSeVolume( spep_4 -37 + 76,1044,60);
setSeVolume( spep_4 -37 + 77,1044,61.5);
setSeVolume( spep_4 -37 + 78,1044,63);
setSeVolume( spep_4 -37 + 79,1044,64.5);
setSeVolume( spep_4 -37 + 80,1044,66);
setSeVolume( spep_4 -37 + 81,1044,67.5);
setSeVolume( spep_4 -37 + 82,1044,69);
setSeVolume( spep_4 -37 + 83,1044,70.5);
setSeVolume( spep_4 -37 + 84,1044,72);
setSeVolume( spep_4 -37 + 85,1044,73.5);
setSeVolume( spep_4 -37 + 86,1044,75);
setSeVolume( spep_4 -37 + 87,1044,76.5);
setSeVolume( spep_4 -37 + 88,1044,78);
setSeVolume( spep_4 -37 + 89,1044,79.5);
setSeVolume( spep_4 -37 + 90,1044,81);
setSeVolume( spep_4 -37 + 91,1044,82.5);
setSeVolume( spep_4 -37 + 92,1044,84);
setSeVolume( spep_4 -37 + 93,1044,85.5);
setSeVolume( spep_4 -37 + 94,1044,87);
setSeVolume( spep_4 -37 + 95,1044,88.5);
setSeVolume( spep_4 -37 + 96,1044,90);
setSeVolume( spep_4 -37 + 97,1044,91.5);
setSeVolume( spep_4 -37 + 98,1044,93);
setSeVolume( spep_4 -37 + 99,1044,94.5);
setSeVolume( spep_4 -37 + 100,1044,96);
setSeVolume( spep_4 -37 + 101,1044,97.5);
setSeVolume( spep_4 -37 + 102,1044,99);
setSeVolume( spep_4 -37 + 103,1044,100.5);
setSeVolume( spep_4 -37 + 104,1044,102);
setSeVolume( spep_4 -37 + 105,1044,103.5);
setSeVolume( spep_4 -37 + 106,1044,105);
setSeVolume( spep_4 -37 + 107,1044,106.5);
setSeVolume( spep_4 -37 + 108,1044,108);
setSeVolume( spep_4 -37 + 109,1044,109.5);
setSeVolume( spep_4 -37 + 110,1044,111);
setSeVolume( spep_4 -37 + 111,1044,112.5);
setSeVolume( spep_4 -37 + 112,1044,114);
setSeVolume( spep_4 -37 + 113,1044,115.5);
setSeVolume( spep_4 -37 + 114,1044,117);
setSeVolume( spep_4 -37 + 115,1044,118.5);
setSeVolume( spep_4 -37 + 116,1044,120);
setSeVolume( spep_4 -37 + 117,1044,126);
se_1203 = playSe( spep_4 -37 + 37, 1203 );
playSe( spep_4 + 102, 1023 );
playSe( spep_4 + 104, 1159 );

stopSe( spep_4 + 134, se_1044, 0 );
stopSe( spep_4 + 130, se_1203, 0 );


-- ダメージ表示
dealDamage( spep_4 + 80 );

entryFade( spep_4 + 170, 9,  10, 1, 8, 8, 8, 255 );             -- black fade

endPhase( spep_4 + 180 );


else 
------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
--気ダメ (189F)
------------------------------------------------------

spep_0 = 0;

--ゴゴゴゴゴ(反転対応あり)
ctg = entryEffectLife( spep_0 + 224, 190006, 76, 0x100, -1, -110, 500 );

setEffMoveKey( spep_0 + 224, ctg, 0, 500, 0 );
setEffScaleKey( spep_0 + 224, ctg, -0.75, 0.75 );
setEffRotateKey( spep_0 + 224, ctg, 1, 1 );
setEffAlphaKey( spep_0 + 224, ctg, 255 );

setEffMoveKey( spep_0 + 288, ctg, 0, 500, 0 );
setEffScaleKey( spep_0 + 288, ctg, -0.75, 0.75 );
setEffRotateKey( spep_0 + 288, ctg, 1, 1 );
setEffAlphaKey( spep_0 + 288, ctg, 255 );

setEffMoveKey( spep_0 + 300, ctg, 0, 500, 0 );
setEffScaleKey( spep_0 + 300, ctg, -4.0, 4.0 );
setEffRotateKey( spep_0 + 300, ctg, 1, 1 );
setEffAlphaKey( spep_0 + 300, ctg, 0 );

setEffShake( spep_0 + 224, ctg, 76, 10 );

--顔カットイン
--speff = entryEffect( spep_0 + 210, 1504, 0x100, -1, 0, 0, 0 );
--setEffReplaceTexture( speff, 3, 2 );

--セリフカットイン
--speff1 = entryEffect( spep_0 + 210, 1505, 0x100, -1, 0, 0, 0 );
--setEffReplaceTexture( speff1, 4, 5 );

--ブウ立ち絵
kidame = entryEffectLife( spep_0, SP_01, 360, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_0, kidame, 0, 0, 0 );
setEffScaleKey( spep_0, kidame, -1, 1 );
setEffRotateKey( spep_0, kidame, 0 );
setEffAlphaKey( spep_0, kidame, 255 );

setEffMoveKey( spep_0 + 360, kidame, 0, 0, 0 );
setEffScaleKey( spep_0 + 360, kidame, -1, 1 );
setEffRotateKey( spep_0 + 360, kidame, 0 );
setEffAlphaKey( spep_0 + 360, kidame, 255 );

--集中線
shuchuse1 = entryEffectLife( spep_0 + 220, 906, 88, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_0 + 220, shuchuse1, 0, 0, 0 );
setEffScaleKey( spep_0 + 220, shuchuse1, 1.5, 1.5 );
setEffRotateKey( spep_0 + 220, shuchuse1, 0 );
setEffAlphaKey( spep_0 + 220, shuchuse1, 255 );

setEffMoveKey( spep_0 + 308, shuchuse1, 0, 0, 0 );
setEffScaleKey( spep_0 + 308, shuchuse1, 1.5, 1.5 );
setEffRotateKey( spep_0 + 308, shuchuse1, 0 );
setEffAlphaKey( spep_0 + 308, shuchuse1, 255 );

--SE(風切り音)
playSe( spep_0 + 0, 1200 );
setSeVolume( spep_0 + 0, 1200, 0 );
setSeVolume( spep_0 + 29, 1200, 66 );
setSeVolume( spep_0 + 30, 1200, 122 );
setSeVolume( spep_0 + 31, 1200, 200 );
playSe( spep_0 + 0, 1072 );
setSeVolume( spep_0 + 0, 1072, 3 );
setSeVolume( spep_0 + 17, 1072, 6 );
setSeVolume( spep_0 + 18, 1072, 9 );
setSeVolume( spep_0 + 19, 1072, 12 );
setSeVolume( spep_0 + 20, 1072, 15 );
setSeVolume( spep_0 + 21, 1072, 18 );
setSeVolume( spep_0 + 22, 1072, 21 );
setSeVolume( spep_0 + 23, 1072, 24 );
setSeVolume( spep_0 + 24, 1072, 27 );
setSeVolume( spep_0 + 25, 1072, 30 );
setSeVolume( spep_0 + 26, 1072, 33 );
setSeVolume( spep_0 + 27, 1072, 36 );
setSeVolume( spep_0 + 28, 1072, 39 );
setSeVolume( spep_0 + 29, 1072, 42 );
setSeVolume( spep_0 + 30, 1072, 45 );
setSeVolume( spep_0 + 31, 1072, 46 );
playSe( spep_0 + 16, 8 );
se_1044 = playSe( spep_0 + 25, 1044 );

setSeVolume( spep_0 + 25, 1044, 10 );
setSeVolume( spep_0 + 96, 1044, 13.1);
setSeVolume( spep_0 + 97, 1044, 16.2);
setSeVolume( spep_0 + 98, 1044, 19.3);
setSeVolume( spep_0 + 99, 1044, 22.4);
setSeVolume( spep_0 + 100, 1044, 25.5);
setSeVolume( spep_0 + 101, 1044, 28.6);
setSeVolume( spep_0 + 102, 1044, 31.7);
setSeVolume( spep_0 + 103, 1044, 34.8);
setSeVolume( spep_0 + 104, 1044, 37.9);
setSeVolume( spep_0 + 105, 1044,41);
setSeVolume( spep_0 + 106, 1044,44.1);
setSeVolume( spep_0 + 107, 1044,47.2);
setSeVolume( spep_0 + 108, 1044,50.3);
setSeVolume( spep_0 + 109, 1044,53.4);
setSeVolume( spep_0 + 110, 1044,56.5);
setSeVolume( spep_0 + 111, 1044,59.6);
setSeVolume( spep_0 + 112, 1044,62.7);
setSeVolume( spep_0 + 113, 1044,65.8);
setSeVolume( spep_0 + 114, 1044,68.9);
setSeVolume( spep_0 + 115, 1044,72);
setSeVolume( spep_0 + 116, 1044,75.1);
setSeVolume( spep_0 + 117, 1044,78.2);
setSeVolume( spep_0 + 118, 1044,81.3);
setSeVolume( spep_0 + 119, 1044,84.4);
setSeVolume( spep_0 + 120, 1044,87.5);
setSeVolume( spep_0 + 121, 1044,90.6);
setSeVolume( spep_0 + 122, 1044,93.7);
setSeVolume( spep_0 + 123, 1044,96.8);
setSeVolume( spep_0 + 124, 1044,100);

setSeVolume( spep_0 + 144, 1044,94.5);
setSeVolume( spep_0 + 145, 1044,89);
setSeVolume( spep_0 + 146, 1044,83.5);
setSeVolume( spep_0 + 147, 1044,78);
setSeVolume( spep_0 + 148, 1044,72.5);
setSeVolume( spep_0 + 149, 1044,67);
setSeVolume( spep_0 + 150, 1044,61.5);
setSeVolume( spep_0 + 151, 1044,56);
setSeVolume( spep_0 + 152, 1044,50.5);
setSeVolume( spep_0 + 153, 1044,45);

setSeVolume( spep_0 + 230, 1044,51.87);
setSeVolume( spep_0 + 231, 1044,58.74);
setSeVolume( spep_0 + 232, 1044,65.61);
setSeVolume( spep_0 + 233, 1044,72.48);
setSeVolume( spep_0 + 234, 1044,79.35);
setSeVolume( spep_0 + 235, 1044,86.22);
setSeVolume( spep_0 + 236, 1044,93.09);
setSeVolume( spep_0 + 237, 1044,100);

playSe( spep_0 + 223, 1024 );
playSe( spep_0 + 224, 1018 );

--白フェード
entryFade( spep_0, 0, 0, 4, fcolor_r, fcolor_g, fcolor_b, 255 );
entryFade( spep_0 + 332, 25, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );

--少し薄めの黒背景
entryFadeBg( spep_0, 0, 360, 0, 24, 42, 56, 255 );

--------------------------------------
--カードカットイン
--------------------------------------
spep_1 = spep_0 + 360;

--カード
speff2 = entryEffect( spep_1, 1507, 0x80, -1, 0, 0, 0 );   
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

--集中線
shuchuse2 = entryEffectLife( spep_1, 906, 90, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_1, shuchuse2, 0, 0, 0 );
setEffScaleKey( spep_1, shuchuse2, 1.5, 1.5 );
setEffRotateKey( spep_1, shuchuse2, 0 );
setEffAlphaKey( spep_1, shuchuse2, 255 );

setEffMoveKey( spep_1 + 90, shuchuse2, 0, 0, 0 );
setEffScaleKey( spep_1 + 90, shuchuse2, 1.5, 1.5 );
setEffRotateKey( spep_1 + 90, shuchuse2, 0 );
setEffAlphaKey( spep_1 + 90, shuchuse2, 255 );

-- ** エフェクト等 ** --
entryFade( spep_1 + 85, 3, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

--SE
playSe( spep_1, SE_05);
stopSe( spep_1 + 0, se_1044, 0 );

------------------------------------------------------
--嫌いだー (114F)
------------------------------------------------------
spep_2 = spep_1 + 90;

--黒背景
entryFadeBg( spep_2, 0, 130, 0, 0, 0, 0 );

--白フェード
entryFade( spep_2, 0, 0, 10, fcolor_r, fcolor_g, fcolor_b, 255 );
entryFade( spep_2 + 127, 0, 0, 3, fcolor_r, fcolor_g, fcolor_b, 200 );

--ブウ立ち絵
kiraida = entryEffectLife( spep_2, SP_02, 130, 0x100, -1, 0, 0, 0, 0 );

setEffMoveKey( spep_2, kiraida, 0, 0, 0 );
setEffScaleKey( spep_2, kiraida, 1, 1 );
setEffRotateKey( spep_2, kiraida, 0 );
setEffAlphaKey( spep_2, kiraida, 255 );

setEffMoveKey( spep_2 + 130, kiraida, 0, 0, 0 );
setEffScaleKey( spep_2 + 130, kiraida, 1, 1 );
setEffRotateKey( spep_2 + 130, kiraida, 0 );
setEffAlphaKey( spep_2 + 130, kiraida, 255 );

--SE(爆発音と地響き)
se_1200 = playSe( spep_2 + 0, 1200 );
setSeVolume( spep_2 + 0, 1200, 0 );
setSeVolume( spep_2 + 23,1200,45.14);
setSeVolume( spep_2 + 24,1200,90.28);
setSeVolume( spep_2 + 25,1200,135.42);
setSeVolume( spep_2 + 26,1200,180.56);
setSeVolume( spep_2 + 27,1200,225.7);
setSeVolume( spep_2 + 28,1200,270.84);
setSeVolume( spep_2 + 29,1200,316);
se_0009 = playSe( spep_2 + 20, 9 );
setSeVolume( spep_2 + 20, 9, 79 );
se_1214 = playSe( spep_2 + 20, 1214 );
setSeVolume( spep_2 + 90,1214,104.5);
setSeVolume( spep_2 + 91,1214,109);
setSeVolume( spep_2 + 92,1214,113.5);
setSeVolume( spep_2 + 93,1214,118);
setSeVolume( spep_2 + 94,1214,122.5);
setSeVolume( spep_2 + 95,1214,127);
setSeVolume( spep_2 + 96,1214,131.5);
setSeVolume( spep_2 + 971214,136);
setSeVolume( spep_2 + 98,1214,140.5);
setSeVolume( spep_2 + 99,1214,145);
setSeVolume( spep_2 + 100,1214,149.5);
setSeVolume( spep_2 + 101,1214,154);
setSeVolume( spep_2 + 102,1214,158.5);
setSeVolume( spep_2 + 103,1214,163);
setSeVolume( spep_2 + 104,1214,167.5);
setSeVolume( spep_2 + 105,1214,172);
setSeVolume( spep_2 + 106,1214,176.5);
setSeVolume( spep_2 + 107,1214,181);
setSeVolume( spep_2 + 108,1214,185.5);
setSeVolume( spep_2 + 109,1214,190);
setSeVolume( spep_2 + 110,1214,194.5);
setSeVolume( spep_2 + 111,1214,199);
setSeVolume( spep_2 + 112,1214,203.5);
setSeVolume( spep_2 + 113,1214,208);
setSeVolume( spep_2 + 114,1214,212.5);
setSeVolume( spep_2 + 115,1214,217);
setSeVolume( spep_2 + 116,1214,224);
se_1044 = playSe( spep_2 + 20, 1044 );
setSeVolume( spep_2 + 20, 1044, 50 );
se_1161 = playSe( spep_2 + 20, 1161 );
setSeVolume( spep_2 + 20, 1161,1.51);
setSeVolume( spep_2 + 21, 1161,3.02);
setSeVolume( spep_2 + 22, 1161,4.53);
setSeVolume( spep_2 + 23, 1161,6.04);
setSeVolume( spep_2 + 24, 1161,7.55);
setSeVolume( spep_2 + 25, 1161,9.06);
setSeVolume( spep_2 + 26, 1161,10.57);
setSeVolume( spep_2 + 27, 1161,12.08);
setSeVolume( spep_2 + 28, 1161,13.59);
setSeVolume( spep_2 + 29, 1161,15.1);
setSeVolume( spep_2 + 30, 1161,16.61);
setSeVolume( spep_2 + 31, 1161,18.12);
setSeVolume( spep_2 + 32, 1161,19.63);
setSeVolume( spep_2 + 33, 1161,21.14);
setSeVolume( spep_2 + 34, 1161,22.65);
setSeVolume( spep_2 + 35, 1161,24.16);
setSeVolume( spep_2 + 36, 1161,25.67);
setSeVolume( spep_2 + 37, 1161,27.18);
setSeVolume( spep_2 + 38, 1161,28.69);
setSeVolume( spep_2 + 39, 1161,30.2);
setSeVolume( spep_2 + 40, 1161,31.71);
------------------------------------------------------
-- 回避
------------------------------------------------------
if (_IS_DODGE_ == 1) then

SP_dodge = spep_2+40; --エンドフェイズのフレーム数を置き換える

--setDisp(SP_dodge, 0, 0);
--setDisp(SP_dodge, 1, 0);

--敵を外に
setMoveKey( SP_dodge, 1, 1000, 1000, 0 );
setMoveKey( SP_dodge + 10, 1, 1000, 1000, 0 );
setScaleKey( SP_dodge, 1, 1, 1 );
setScaleKey( SP_dodge + 10, 1, 1, 1 );
setRotateKey( SP_dodge, 1, 0, 0 );
setRotateKey( SP_dodge + 10, 1, 0, 0 );

playSe( SP_dodge-12, 1042);
stopSe( SP_dodge-12, se_1200, 0 );
stopSe( SP_dodge-12, se_0009, 0 );
stopSe( SP_dodge-12, se_1214, 0 );
stopSe( SP_dodge-12, se_1044, 0 );
stopSe( SP_dodge-12, se_1161, 0 );


speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(SP_dodge+10);

do return end
else end

--SE(爆発音と地響き)
setSeVolume( spep_2 + 41,33.22);
setSeVolume( spep_2 + 42,34.73);
setSeVolume( spep_2 + 43,36.24);
setSeVolume( spep_2 + 44, 1161,37.75);
setSeVolume( spep_2 + 45, 1161,39.26);
setSeVolume( spep_2 + 46, 1161,40.77);
setSeVolume( spep_2 + 47, 1161,42.28);
setSeVolume( spep_2 + 48, 1161,43.79);
setSeVolume( spep_2 + 49, 1161,45.3);
setSeVolume( spep_2 + 50, 1161,46.81);
setSeVolume( spep_2 + 51, 1161,48.32);
setSeVolume( spep_2 + 52, 1161,49.83);
setSeVolume( spep_2 + 53, 1161,51.34);
setSeVolume( spep_2 + 54, 1161,52.85);
setSeVolume( spep_2 + 55, 1161,54.36);
setSeVolume( spep_2 + 56, 1161,55.87);
stopSe( spep_2 + 83, se_1200, 34 );
stopSe( spep_2 + 39, se_0009, 58 );

--------------------------------------
--被弾 (245F)
--------------------------------------
spep_3 = spep_2 + 130;

--敵ふっとび
setDisp( spep_3, 1, 1 );
setDisp( spep_3 + 50, 1, 0 );

changeAnime( spep_3, 1, 104 );
changeAnime( spep_3 + 10, 1, 108 );

setMoveKey( spep_3, 1, -164, -134, 0 );
setMoveKey( spep_3 + 10, 1, -164, -134, 0 );
setMoveKey( spep_3 + 50, 1, 100, 80, 0 );

setScaleKey( spep_3 + 0, 1, 2, 2 );
setScaleKey( spep_3 + 50, 1, 2, 2 );

setRotateKey( spep_3 + 0, 1, -30 );
setRotateKey( spep_3 + 50, 1, -30 );

setShakeChara( spep_3, 1, 50, 20);

--黒背景
entryFadeBg( spep_3, 0, 100, 0, 0, 0, 0 );

--白フェード
entryFade( spep_3, 0, 0, 10, fcolor_r, fcolor_g, fcolor_b, 255 );
entryFade( spep_3 + 92, 8, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255 );

--被弾奥
hidanO = entryEffectLife( spep_3, SP_04, 100, 0x80, -1, 0, 0, 0, 0 );

setEffMoveKey( spep_3, hidanO, 1, 1, 0 );
setEffScaleKey( spep_3, hidanO, 1, 1 );
setEffRotateKey( spep_3, hidanO, 0 );
setEffAlphaKey( spep_3, hidanO, 255 );

setEffMoveKey( spep_3 + 100, hidanO, 1, 1, 0 );
setEffScaleKey( spep_3 + 100 , hidanO, 1, 1 );
setEffRotateKey( spep_3 + 100, hidanO, 0 );
setEffAlphaKey( spep_3 + 100, hidanO, 255 );

--被弾手前
hidanF = entryEffectLife( spep_3, SP_03, 100, 0x100, -1, 0, 0, 0, 0 );

setEffMoveKey( spep_3, hidanF, 1, 1, 0 );
setEffScaleKey( spep_3, hidanF, 1, 1 );
setEffRotateKey( spep_3, hidanF, 0 );
setEffAlphaKey( spep_3, hidanF, 255 );

setEffMoveKey( spep_3 + 100, hidanF, 1, 1, 0 );
setEffScaleKey( spep_3 + 100 , hidanF, 1, 1 );
setEffRotateKey( spep_3 + 100, hidanF, 0 );
setEffAlphaKey( spep_3 + 100, hidanF, 255 );


--SE(爆発音系)
playSe( spep_3 + 0, 1021 );
stopSe( spep_3 + 99, se_1214, 0 );
stopSe( spep_3 + 99, se_1044, 0 );
stopSe( spep_3 + 99, se_1161, 0 );

------------------------------------------------------
--爆発 (98F)
------------------------------------------------------
spep_4 = spep_3 + 100;

--黒背景
entryFadeBg( spep_4, 0, 260, 0, 24, 42, 56, 255 );

--白フェード
entryFade( spep_4, 0, 0, 10, fcolor_r, fcolor_g, fcolor_b, 255 );

--集中線
shuchuse3 = entryEffectLife( spep_4 + 110, 906, 90, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_4 + 110, shuchuse3, 0, 0, 0 );
setEffScaleKey( spep_4 + 110, shuchuse3, 1, 1 );
setEffRotateKey( spep_4 + 110, shuchuse3, 0 );
setEffAlphaKey( spep_4 + 110, shuchuse3, 255 );

setEffMoveKey( spep_4 + 200, shuchuse3, 0, 0 , 0 );
setEffScaleKey( spep_4 + 200, shuchuse3, 1, 1 );
setEffRotateKey( spep_4 + 200, shuchuse3, 0 );
setEffAlphaKey( spep_4 + 200, shuchuse3, 255 );


--爆発Eff
bakuha = entryEffect( spep_4, SP_05, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_4, bakuha, 1, 1, 0 );
setEffScaleKey( spep_4, bakuha, 1, 1 );
setEffRotateKey( spep_4, bakuha, 0 );
setEffAlphaKey( spep_4, bakuha, 255 );

setEffMoveKey( spep_4 + 260, bakuha, 1, 1, 0 );
setEffScaleKey( spep_4 + 260, bakuha, 1, 1 );
setEffRotateKey( spep_4 + 260, bakuha, 0 );
setEffAlphaKey( spep_4 + 260, bakuha, 255 );

--SE
se_1044 = playSe( spep_4 -37 + 37, 1044 );
setSeVolume( spep_4 -37 + 37,1044,1.5);
setSeVolume( spep_4 -37 + 38,1044,3);
setSeVolume( spep_4 -37 + 39,1044,4.5);
setSeVolume( spep_4 -37 + 40,1044,6);
setSeVolume( spep_4 -37 + 41,1044,7.5);
setSeVolume( spep_4 -37 + 42,1044,9);
setSeVolume( spep_4 -37 + 43,1044,10.5);
setSeVolume( spep_4 -37 + 441044,12);
setSeVolume( spep_4 -37 + 45,1044,13.5);
setSeVolume( spep_4 -37 + 46,1044,15);
setSeVolume( spep_4 -37 + 47,1044,16.5);
setSeVolume( spep_4 -37 + 48,1044,18);
setSeVolume( spep_4 -37 + 49,1044,19.5);
setSeVolume( spep_4 -37 + 50,1044,21);
setSeVolume( spep_4 -37 + 51,1044,22.5);
setSeVolume( spep_4 -37 + 52,1044,24);
setSeVolume( spep_4 -37 + 53,1044,25.5);
setSeVolume( spep_4 -37 + 54,1044,27);
setSeVolume( spep_4 -37 + 55,1044,28.5);
setSeVolume( spep_4 -37 + 56,1044,30);
setSeVolume( spep_4 -37 + 57,1044,31.5);
setSeVolume( spep_4 -37 + 58,1044,33);
setSeVolume( spep_4 -37 + 59,1044,34.5);
setSeVolume( spep_4 -37 + 60,1044,36);
setSeVolume( spep_4 -37 + 61,1044,37.5);
setSeVolume( spep_4 -37 + 62,1044,39);
setSeVolume( spep_4 -37 + 63,1044,40.5);
setSeVolume( spep_4 -37 + 64,1044,42);
setSeVolume( spep_4 -37 + 65,1044,43.5);
setSeVolume( spep_4 -37 + 66,1044,45);
setSeVolume( spep_4 -37 + 67,1044,46.5);
setSeVolume( spep_4 -37 + 68,1044,48);
setSeVolume( spep_4 -37 + 69,1044,49.5);
setSeVolume( spep_4 -37 + 70,1044,51);
setSeVolume( spep_4 -37 + 71,1044,52.5);
setSeVolume( spep_4 -37 + 72,1044,54);
setSeVolume( spep_4 -37 + 73,1044,55.5);
setSeVolume( spep_4 -37 + 74,1044,57);
setSeVolume( spep_4 -37 + 75,1044,58.5);
setSeVolume( spep_4 -37 + 76,1044,60);
setSeVolume( spep_4 -37 + 77,1044,61.5);
setSeVolume( spep_4 -37 + 78,1044,63);
setSeVolume( spep_4 -37 + 79,1044,64.5);
setSeVolume( spep_4 -37 + 80,1044,66);
setSeVolume( spep_4 -37 + 81,1044,67.5);
setSeVolume( spep_4 -37 + 82,1044,69);
setSeVolume( spep_4 -37 + 83,1044,70.5);
setSeVolume( spep_4 -37 + 84,1044,72);
setSeVolume( spep_4 -37 + 85,1044,73.5);
setSeVolume( spep_4 -37 + 86,1044,75);
setSeVolume( spep_4 -37 + 87,1044,76.5);
setSeVolume( spep_4 -37 + 88,1044,78);
setSeVolume( spep_4 -37 + 89,1044,79.5);
setSeVolume( spep_4 -37 + 90,1044,81);
setSeVolume( spep_4 -37 + 91,1044,82.5);
setSeVolume( spep_4 -37 + 92,1044,84);
setSeVolume( spep_4 -37 + 93,1044,85.5);
setSeVolume( spep_4 -37 + 94,1044,87);
setSeVolume( spep_4 -37 + 95,1044,88.5);
setSeVolume( spep_4 -37 + 96,1044,90);
setSeVolume( spep_4 -37 + 97,1044,91.5);
setSeVolume( spep_4 -37 + 98,1044,93);
setSeVolume( spep_4 -37 + 99,1044,94.5);
setSeVolume( spep_4 -37 + 100,1044,96);
setSeVolume( spep_4 -37 + 101,1044,97.5);
setSeVolume( spep_4 -37 + 102,1044,99);
setSeVolume( spep_4 -37 + 103,1044,100.5);
setSeVolume( spep_4 -37 + 104,1044,102);
setSeVolume( spep_4 -37 + 105,1044,103.5);
setSeVolume( spep_4 -37 + 106,1044,105);
setSeVolume( spep_4 -37 + 107,1044,106.5);
setSeVolume( spep_4 -37 + 108,1044,108);
setSeVolume( spep_4 -37 + 109,1044,109.5);
setSeVolume( spep_4 -37 + 110,1044,111);
setSeVolume( spep_4 -37 + 111,1044,112.5);
setSeVolume( spep_4 -37 + 112,1044,114);
setSeVolume( spep_4 -37 + 113,1044,115.5);
setSeVolume( spep_4 -37 + 114,1044,117);
setSeVolume( spep_4 -37 + 115,1044,118.5);
setSeVolume( spep_4 -37 + 116,1044,120);
setSeVolume( spep_4 -37 + 117,1044,126);
se_1203 = playSe( spep_4 -37 + 37, 1203 );
playSe( spep_4 + 102, 1023 );
playSe( spep_4 + 104, 1159 );


stopSe( spep_4 + 134, se_1044, 0 );
stopSe( spep_4 + 130, se_1203, 0 );


-- ダメージ表示
dealDamage( spep_4 + 80 );

entryFade( spep_4 + 170, 9,  10, 1, 8, 8, 8, 255 );             -- black fade

endPhase( spep_4 + 180 );

end

end

------------------------------------------------------
-- ２人目以降の演出
------------------------------------------------------

if (_IS_SPECIAL_AIM_ALL_ == 1) then

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

spep_z = 0;

setVisibleUI( spep_z, 0);
setDisp( spep_z, 0, 0);

------------------------------------------------------
-- 回避
------------------------------------------------------

	if(_IS_DODGE_ == 1) then

	SP_dodge = spep_z; --エンドフェイズのフレーム数を置き換える

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

--敵表示
setDisp( spep_z, 1, 1);
setMoveKey(  spep_z,    1,  120,    0,  128);
setScaleKey( spep_z,    1,  1.0, 1.0);
setMoveKey(  spep_z+1,    1,    0,   0,   128);
setScaleKey( spep_z+1,    1,  0.1, 0.1);

--手前ダメージ
changeAnime( spep_z+1, 1, 107);
setAnimeLoop( spep_z+1, 1, 1);

 -- 全体攻撃用背景
explosion = entryEffect( spep_z+1, SP_06,  0x80,  -1,  0,  0,  0);
setEffScaleKey( spep_z+1, explosion, 1.1, 1.1);
playSe( spep_z+1, SE_10 );

setMoveKey(  spep_z+8,    1,    0,    -250,   128);
setMoveKey(  spep_z+15,   1,  -60,    0,  -100);
setShake(spep_z+10,6,15);
setShake(spep_z+17,15,9);

setRotateKey( spep_z,  1,  30 );
setRotateKey( spep_z+2,  1,  80 );
setRotateKey( spep_z+4,  1, 120 );
setRotateKey( spep_z+6,  1, 160 );
setRotateKey( spep_z+8,  1, 200 );
setRotateKey( spep_z+10,  1, 260 );
setRotateKey( spep_z+12,  1, 320 );
setRotateKey( spep_z+14,  1,   0 );

setShakeChara( spep_z+14, 1, 5,  10);
setShakeChara( spep_z+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep_z+14, 10005, 100, 0, -1, 0, -100, 230); -- ガッ
setEffShake( spep_z+15, ct, 30, 10);
setEffRotateKey( spep_z+15, ct, -40);
setEffScaleKey( spep_z+15, ct, 4.0, 4.0);
setEffScaleKey( spep_z+16, ct, 2.0, 2.0);
setEffScaleKey( spep_z+17, ct, 2.6, 2.6);
setEffScaleKey( spep_z+18, ct, 4.0, 4.0);
setEffScaleKey( spep_z+19, ct, 2.6, 2.6);
setEffScaleKey( spep_z+20, ct, 3.8, 3.8);
setEffScaleKey( spep_z+110, ct, 3.8, 3.8);
setEffAlphaKey( spep_z+15, ct, 255);
setEffAlphaKey( spep_z+105, ct, 255);
setEffAlphaKey( spep_z+115, ct, 0);

playSe( spep_z+20, SE_11);

shuchusen6 = entryEffectLife( spep_z, 1657, 120, 0x00,  -1, 0,  0,  0);   -- 集中線

entryEffect( spep_z+20, 1600,  0x00,  -1,  0,30, -70);   -- ひび割れ

entryFadeBg( spep_z, 0, 90, 0, 10, 10, 10, 190);          -- ベース暗め　背景

setDamage( spep_z+33, 1, 0);  -- ダメージ振動等

-- ダメージ表示
dealDamage(spep_z+33);

entryFade( spep_z+70, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_z+80);

end
