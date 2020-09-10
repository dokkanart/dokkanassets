--1014940  セル(完全体)_バイオレンスディザスター_sp1200

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

SP_01 =152044   --セルジュニア集まる
SP_02 =152045   --突進
SP_03 =152046   --セルジュニア攻撃前
SP_04 =152047   --セルジュニア攻撃前
SP_05 =152048   --セルジュニア攻撃後
SP_06 =152049   --セル溜め
SP_07 =152050   --セルナビ
SP_08 =152051   --セル放つ
SP_09 =152052   --迫る

SP_10 =152053   --敵：セルジュニア集まる
SP_11 =152054   --敵：突進
SP_12 =152055   --敵：セルジュニア攻撃前
SP_13 =152056   --敵：セルジュニア攻撃前
SP_14 =152057   --敵：セルジュニア攻撃後
SP_15 =152058   --敵：セル溜め
SP_16 =152059   --敵：セル放つ
SP_17 =152085   --セルナビ

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
-- セルジュニア出現(60F)
------------------------------------------------------
spep_1 = 0;

--**集中線**
shuchusen1 = entryEffectLife( spep_1, 906, 60, 0x100,  -1, 0,  0,  0);  --集中線

setEffMoveKey(  spep_1,  shuchusen1,  0,  0);
setEffScaleKey(  spep_1,  shuchusen1,  1.42,  2.02);
setEffRotateKey(  spep_1,  shuchusen1,  0);
setEffAlphaKey(  spep_1,  shuchusen1,  255);
setEffMoveKey(  spep_1+60,  shuchusen1,  0,  0);
setEffScaleKey(  spep_1+60,  shuchusen1,  1.42,  2.02);
setEffRotateKey(  spep_1+60,  shuchusen1,  0);
setEffAlphaKey(  spep_1+60,  shuchusen1,  255);

--**セルジュニア出現**
appear = entryEffect(  spep_1,  SP_01,  0x80,  -1,  0,  0,  0);  --セルジュニア出現

setEffScaleKey(  spep_1,  appear,  1.0,  1.0);
setEffMoveKey(  spep_1,  appear,  0,  0);
setEffRotateKey(  spep_1,  appear,  0);
setEffAlphaKey(  spep_1,  appear,  255);
setEffScaleKey(  spep_1+60,  appear,  1.0,  1.0);
setEffMoveKey(  spep_1+60,  appear,  0,  0);
setEffRotateKey(  spep_1+60,  appear,  0);
setEffAlphaKey(  spep_1+60,  appear,  255);

--**SE**
playSe(  spep_1+10,  43);
--playSe(  spep_1+18,  43);
playSe(  spep_1+17,  43);
playSe(  spep_1+30,  43);  --瞬間移動

entryFade( spep_1+52, 5, 4, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- カード(90F)
------------------------------------------------------
spep_2 = spep_1+60;

playSe( spep_2, SE_05);
speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

shuchusen2 = entryEffectLife( spep_2, 906, 90, 0x100,  -1, 0,  0,  0);  --集中線

setEffMoveKey(  spep_2,  shuchusen2,  0,  0);
setEffScaleKey(  spep_2,  shuchusen2,  1.0,  1.0);
setEffRotateKey(  spep_2,  shuchusen2,  0);
setEffAlphaKey(  spep_2,  shuchusen2,  255);
setEffMoveKey(  spep_2+90,  shuchusen2,  0,  0);
setEffScaleKey(  spep_2+90,  shuchusen2,  1.0,  1.0);
setEffRotateKey(  spep_2+90,  shuchusen2,  0);
setEffAlphaKey(  spep_2+90,  shuchusen2,  255);

entryFade( spep_2+84, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- セルジュニア突進(110F)
------------------------------------------------------
spep_3 = spep_2+90;

--**集中線**
shuchusen3 = entryEffectLife( spep_3, 906, 110, 0x100,  -1, 0,  0,  0);

setEffMoveKey(  spep_3,  shuchusen3,  0,  0);
setEffScaleKey(  spep_3,  shuchusen3,  1.26,  1.71);
setEffRotateKey(  spep_3,  shuchusen3,  0);
setEffAlphaKey(  spep_3,  shuchusen3,  255);
setEffMoveKey(  spep_3+110,  shuchusen3,  0,  0);
setEffScaleKey(  spep_3+110,  shuchusen3,  1.26,  1.71);
setEffRotateKey(  spep_3+110,  shuchusen3,  0);
setEffAlphaKey(  spep_3+110,  shuchusen3,  255);

--**突進**
tosshin = entryEffect(  spep_3,  SP_02,  0x80,  -1,  0,  0,  0);  --突進

setEffScaleKey(  spep_3,  tosshin,  1.0,  1.0);
setEffMoveKey(  spep_3,  tosshin,  0,  0);
setEffRotateKey(  spep_3,  tosshin,  0);
setEffAlphaKey(  spep_3,  tosshin,  255);
setEffScaleKey(  spep_3+110,  tosshin,  1.0,  1.0);
setEffMoveKey(  spep_3+110,  tosshin,  0,  0);
setEffRotateKey(  spep_3+110,  tosshin,  0);
setEffAlphaKey(  spep_3+110,  tosshin,  255);

--**SE**
playSe(  spep_3+40,  1016);
playSe(  spep_3+50,  1016);


--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_3+60; --エンドフェイズのフレーム数を置き換える

setMoveKey( SP_dodge-1, 0, -8000,  -8000, 0); --味方位置
setMoveKey( SP_dodge, 0, -8000, -8000, 0); --味方位置
setMoveKey( SP_dodge+1, 0, -8000, -8000, 0); --味方位置
setMoveKey( SP_dodge+2, 0, -8000, -8000, 0); --味方位置
setMoveKey( SP_dodge+10, 0, -8000, -8000, 0); --味方位置
setMoveKey( SP_dodge-1, 1, -8000,  -8000, 0); --敵側位置
setMoveKey( SP_dodge, 1, -8000, -8000, 0); --敵側位置
setMoveKey( SP_dodge+1, 1, -8000, -8000, 0); --敵側位置
setMoveKey( SP_dodge+1, 1, -8000, -8000, 0); --敵側位置
setMoveKey( SP_dodge+10, 1, -8000, -8000, 0); --敵側位置

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景
pauseAll( SP_dodge, 67);

entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge+10);

do return end
else end

--------------------------------------
--回避されなかった時
--------------------------------------

playSe(  spep_3+63,  1016);
playSe(  spep_3+88,  1016);  --セルジュニア移動

entryFade( spep_3+105, 2, 5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- セルジュニア攻撃(260F)
------------------------------------------------------
spep_4 = spep_3+110;

--**集中線**
shuchusen4 = entryEffectLife( spep_4, 906, 260, 0x100,  -1, 0,  0,  0);

setEffMoveKey(  spep_4,  shuchusen4,  0,  0);
setEffScaleKey(  spep_4,  shuchusen4,  1.28,  2.25);
setEffRotateKey(  spep_4,  shuchusen4,  0);
setEffAlphaKey(  spep_4,  shuchusen4,  255);
setEffMoveKey(  spep_4+35,  shuchusen4,  0,  0);
setEffScaleKey(  spep_4+35,  shuchusen4,  1.28,  2.25);
setEffRotateKey(  spep_4+35,  shuchusen4,  0);
setEffAlphaKey(  spep_4+35,  shuchusen4,  255);
setEffMoveKey(  spep_4+43,  shuchusen4,  0,  0);
setEffScaleKey(  spep_4+43,  shuchusen4,  1.28,  2.25);
setEffRotateKey(  spep_4+43,  shuchusen4,  0);
setEffAlphaKey(  spep_4+43,  shuchusen4,  0);
setEffMoveKey(  spep_4+70,  shuchusen4,  0,  0);
setEffScaleKey(  spep_4+70,  shuchusen4,  1.28,  2.25);
setEffRotateKey(  spep_4+70,  shuchusen4,  0);
setEffAlphaKey(  spep_4+70,  shuchusen4,  0);
setEffMoveKey(  spep_4+71,  shuchusen4,  0,  0);
setEffScaleKey(  spep_4+71,  shuchusen4,  1.62,  2.4);
setEffRotateKey(  spep_4+71,  shuchusen4,  0);
setEffAlphaKey(  spep_4+71,  shuchusen4,  255);
setEffMoveKey(  spep_4+113,  shuchusen4,  0,  0);
setEffScaleKey(  spep_4+113,  shuchusen4,  1.62,  2.4);
setEffRotateKey(  spep_4+113,  shuchusen4,  0);
setEffAlphaKey(  spep_4+113,  shuchusen4,  255);
setEffMoveKey(  spep_4+114,  shuchusen4,  0,  0);
setEffScaleKey(  spep_4+114,  shuchusen4,  1.28,  2.25);
setEffRotateKey(  spep_4+114,  shuchusen4,  0);
setEffAlphaKey(  spep_4+114,  shuchusen4,  255);
setEffMoveKey(  spep_4+260,  shuchusen4,  0,  0);
setEffScaleKey(  spep_4+260,  shuchusen4,  1.28,  2.25);
setEffRotateKey(  spep_4+260,  shuchusen4,  0);
setEffAlphaKey(  spep_4+260,  shuchusen4,  255);

--**書き文字**
ct_ex = entryEffectLife( spep_4+26,  10000, 20, 0x100, -1, 0, 107, 311 );  --!!

setEffMoveKey( spep_4+26, ct_ex, 107, 311 , 0 );
setEffMoveKey( spep_4+30, ct_ex, 107, 300 , 0 );
setEffMoveKey( spep_4+40, ct_ex, 107, 311 , 0 );
setEffMoveKey( spep_4+46, ct_ex, 107, 311 , 0 );
setEffScaleKey( spep_4+26, ct_ex, 2.2, 2.2 );
setEffScaleKey( spep_4+30, ct_ex, 2.7, 2.7 );
setEffScaleKey( spep_4+40, ct_ex, 2.2, 2.2 );
setEffScaleKey( spep_4+46, ct_ex, 2.2, 2.2 );
setEffRotateKey( spep_4+26, ct_ex, 0 );
setEffRotateKey( spep_4+46, ct_ex, 0 );
setEffAlphaKey( spep_4+26, ct_ex, 255 );
setEffAlphaKey( spep_4+40, ct_ex, 255 );
setEffAlphaKey( spep_4+46, ct_ex, 0 );

ct_qu = entryEffectLife( spep_4+60,  10001, 14, 0x100, -1, 0, 0, 344 );  --!?

setEffMoveKey( spep_4+60, ct_qu, 0, 344 , 0 );
setEffMoveKey( spep_4+66, ct_qu, 0, 324 , 0 );
setEffMoveKey( spep_4+74, ct_qu, 0, 344 , 0 );
setEffMoveKey( spep_4+76, ct_qu, 0, 344 , 0 );
setEffScaleKey(  spep_4+60,  ct_qu,  2.2,  2.2);
setEffScaleKey(  spep_4+66,  ct_qu,  2.7,  2.7);
setEffScaleKey(  spep_4+74,  ct_qu,  2.2,  2.2);
setEffScaleKey(  spep_4+76,  ct_qu,  2.0,  2.0);
setEffRotateKey(  spep_4+60,  ct_qu,  0);
setEffRotateKey(  spep_4+76,  ct_qu,  0);
setEffAlphaKey(  spep_4+60,  ct_qu,  255);
setEffAlphaKey(  spep_4+74,  ct_qu,  255);
setEffAlphaKey(  spep_4+76,  ct_qu,  0);

ct_ga1 = entryEffectLife( spep_4+100,  10005, 20, 0x100, -1, 0, 223.9, 302.4 );  --ガッ

setEffShake(  spep_4+100,  ct_ga1,  20,  10);  --揺れ
setEffMoveKey( spep_4+100, ct_ga1, 223.9, 302.4 , 0 );
setEffMoveKey( spep_4+120, ct_ga1, 224.1, 302.5 , 0 );
setEffScaleKey( spep_4+100, ct_ga1, 0.91, 0.91 );
setEffScaleKey( spep_4+102, ct_ga1, 1.95, 1.95 );
setEffScaleKey( spep_4+104, ct_ga1, 2.48, 2.48 );
setEffScaleKey( spep_4+106, ct_ga1, 2.36, 2.36 );
setEffScaleKey( spep_4+112, ct_ga1, 2.01, 2.01 );
setEffScaleKey( spep_4+120, ct_ga1, 1.94, 1.94 );
setEffRotateKey( spep_4+100, ct_ga1, 31.3 );
setEffRotateKey( spep_4+102, ct_ga1, 17.9 );
setEffRotateKey( spep_4+104, ct_ga1, 31.3 );
setEffRotateKey( spep_4+106, ct_ga1, 39.8 );
setEffRotateKey( spep_4+108, ct_ga1, 31.1 );
setEffRotateKey( spep_4+110, ct_ga1, 20.4 );
setEffRotateKey( spep_4+112, ct_ga1, 31.3 );
setEffRotateKey( spep_4+114, ct_ga1, 31.1 );
setEffRotateKey( spep_4+116, ct_ga1, 31.2 );
setEffRotateKey( spep_4+118, ct_ga1, 31.2 );
setEffRotateKey( spep_4+120, ct_ga1, 31.3 );
setEffAlphaKey( spep_4+100, ct_ga1, 255 );
setEffAlphaKey( spep_4+114, ct_ga1, 255 );
setEffAlphaKey( spep_4+116, ct_ga1, 170 );
setEffAlphaKey( spep_4+118, ct_ga1, 85 );
setEffAlphaKey( spep_4+120, ct_ga1, 0 );

ct_ga2 = entryEffectLife( spep_4+110,  10005, 20, 0x100, -1, 0, -211, 241.6 );  --ガッ

setEffShake(  spep_4+110,  ct_ga2,  20,  10);  --揺れ
setEffMoveKey( spep_4+110, ct_ga2, -211, 241.6 , 0 );
setEffMoveKey( spep_4+130, ct_ga2, -211, 241.7 , 0 );
setEffScaleKey( spep_4+110, ct_ga2, 0.91, 0.91 );
setEffScaleKey( spep_4+112, ct_ga2, 1.95, 1.95 );
setEffScaleKey( spep_4+114, ct_ga2, 2.48, 2.48 );
setEffScaleKey( spep_4+124, ct_ga2, 2, 2 );
setEffScaleKey( spep_4+130, ct_ga2, 1.94, 1.94 );
setEffRotateKey( spep_4+110, ct_ga2, -22.9 );
setEffRotateKey( spep_4+112, ct_ga2, -36.2 );
setEffRotateKey( spep_4+114, ct_ga2, -22.9 );
setEffRotateKey( spep_4+116, ct_ga2, -14.3 );
setEffRotateKey( spep_4+118, ct_ga2, -23.1 );
setEffRotateKey( spep_4+120, ct_ga2, -33.8 );
setEffRotateKey( spep_4+122, ct_ga2, -22.9 );
setEffRotateKey( spep_4+130, ct_ga2, -22.9 );
setEffAlphaKey( spep_4+110, ct_ga2, 255 );
setEffAlphaKey( spep_4+124, ct_ga2, 255 );
setEffAlphaKey( spep_4+126, ct_ga2, 170 );
setEffAlphaKey( spep_4+128, ct_ga2, 85 );
setEffAlphaKey( spep_4+130, ct_ga2, 0 );

ct_baki = entryEffectLife( spep_4+130,  10020, 20, 0x100, -1, 0, 102.4, 341.4 );  --バキ

setEffShake(  spep_4+130,  ct_baki,  20,  20);  --揺れ
setEffMoveKey( spep_4+130, ct_baki, 102.4, 341.4 , 0 );
setEffMoveKey( spep_4+132, ct_baki, 107, 311.6 , 0 );
setEffMoveKey( spep_4+134, ct_baki, 90.1, 299.7 , 0 );
setEffMoveKey( spep_4+136, ct_baki, 81.8, 306.1 , 0 );
setEffMoveKey( spep_4+138, ct_baki, 92.3, 306.1 , 0 );
setEffMoveKey( spep_4+150, ct_baki, 95.7, 318.1 , 0 );
setEffScaleKey( spep_4+130, ct_baki, 0.91, 0.91 );
setEffScaleKey( spep_4+134, ct_baki, 2.48, 2.48 );
setEffScaleKey( spep_4+148, ct_baki, 1.84, 1.84 );
setEffScaleKey( spep_4+150, ct_baki, 1.78, 1.78 );
setEffRotateKey( spep_4+130, ct_baki, 16.3 );
setEffRotateKey( spep_4+132, ct_baki, 2.9 );
setEffRotateKey( spep_4+134, ct_baki, 16.3 );
setEffRotateKey( spep_4+136, ct_baki, 24.9 );
setEffRotateKey( spep_4+138, ct_baki, 16.1 );
setEffRotateKey( spep_4+140, ct_baki, 5.4 );
setEffRotateKey( spep_4+152, ct_baki, 16.3 );
setEffRotateKey( spep_4+150, ct_baki, 16.3 );
setEffAlphaKey( spep_4+130, ct_baki, 255 );
setEffAlphaKey( spep_4+142, ct_baki, 255 );
setEffAlphaKey( spep_4+144, ct_baki, 191 );
setEffAlphaKey( spep_4+146, ct_baki, 128 );
setEffAlphaKey( spep_4+148, ct_baki, 64 );
setEffAlphaKey( spep_4+150, ct_baki, 0 );

ct_zun = entryEffectLife( spep_4+166,  10016, 20, 0x100, -1, 0, -36.7, 344 );  --ズン

setEffShake(  spep_4+166,  ct_zun,  20,  10);  --揺れ
setEffMoveKey( spep_4+166, ct_zun, -36.7, 344 , 0 );
setEffMoveKey( spep_4+184, ct_zun, -36.7, 345.1 , 0 );
setEffScaleKey( spep_4+166, ct_zun, 1.15, 1.15 );
setEffScaleKey( spep_4+168, ct_zun, 2.46, 2.46 );
setEffScaleKey( spep_4+170, ct_zun, 3.12, 3.12 );
setEffScaleKey( spep_4+172, ct_zun, 2.96, 2.96 );
setEffScaleKey( spep_4+184, ct_zun, 2.31, 2.31 );
setEffScaleKey( spep_4+186, ct_zun, 2.24, 2.24 );
setEffRotateKey( spep_4+166, ct_zun, -6.7 );
setEffRotateKey( spep_4+168, ct_zun, -20 );
setEffRotateKey( spep_4+170, ct_zun, -6.7 );
setEffRotateKey( spep_4+172, ct_zun, 1.9 );
setEffRotateKey( spep_4+174, ct_zun, -6.9 );
setEffRotateKey( spep_4+176, ct_zun, -17.6 );
setEffRotateKey( spep_4+178, ct_zun, -6.7 );
setEffRotateKey( spep_4+184, ct_zun, -6.7 );
setEffAlphaKey( spep_4+166, ct_zun, 255 );
setEffAlphaKey( spep_4+178, ct_zun, 255 );
setEffAlphaKey( spep_4+180, ct_zun, 191 );
setEffAlphaKey( spep_4+182, ct_zun, 128 );
setEffAlphaKey( spep_4+184, ct_zun, 64 );
setEffAlphaKey( spep_4+186, ct_zun, 0 );

ct_ga3 = entryEffectLife( spep_4+190,  10005, 22, 0x100, -1, 0, -227, 257.7 );  --ガッ

setEffShake(  spep_4+190,  ct_ga3,  22,  10);  --揺れ
setEffMoveKey( spep_4+190, ct_ga3, -227, 257.7 , 0 );
setEffMoveKey( spep_4+192, ct_ga3, -226.9, 257.9 , 0 );
setEffMoveKey( spep_4+206, ct_ga3, -226.9, 257.7 , 0 );
setEffMoveKey( spep_4+212, ct_ga3, -226.9, 257.7 , 0 );
setEffScaleKey( spep_4+190, ct_ga3, 0.91, 0.91 );
setEffScaleKey( spep_4+192, ct_ga3, 1.95, 1.95 );
setEffScaleKey( spep_4+194, ct_ga3, 2.48, 2.48 );
setEffScaleKey( spep_4+196, ct_ga3, 2.36, 2.36 );
setEffScaleKey( spep_4+198, ct_ga3, 2.24, 2.24 );
setEffScaleKey( spep_4+200, ct_ga3, 2.12, 2.12 );
setEffScaleKey( spep_4+204, ct_ga3, 2, 2 );
setEffScaleKey( spep_4+212, ct_ga3, 1.94, 1.94 );
setEffRotateKey( spep_4+190, ct_ga3, -37.1 );
setEffRotateKey( spep_4+192, ct_ga3, -50.5 );
setEffRotateKey( spep_4+194, ct_ga3, -37.1 );
setEffRotateKey( spep_4+196, ct_ga3, -28.6 );
setEffRotateKey( spep_4+198, ct_ga3, -37.3 );
setEffRotateKey( spep_4+200, ct_ga3, -48 );
setEffRotateKey( spep_4+202, ct_ga3, -37.1 );
setEffRotateKey( spep_4+212, ct_ga3, -37.1 );
setEffAlphaKey( spep_4+190, ct_ga3, 255 );
setEffAlphaKey( spep_4+204, ct_ga3, 255 );
setEffAlphaKey( spep_4+206, ct_ga3, 191 );
setEffAlphaKey( spep_4+208, ct_ga3, 128 );
setEffAlphaKey( spep_4+210, ct_ga3, 64 );
setEffAlphaKey( spep_4+212, ct_ga3, 0 );

ct_bago = entryEffectLife( spep_4+208,  10021, 22, 0x100, -1, 0, 39.1, 210.9 );  --バゴォッ

setEffShake(  spep_4+208,  ct_bago,  22,  20);  --揺れ
setEffMoveKey( spep_4+208, ct_bago, 39.1, 210.9 , 0 );
setEffMoveKey( spep_4+210, ct_bago, 47.3, 188.7 , 0 );
setEffMoveKey( spep_4+212, ct_bago, 36.1, 177.1 , 0 );
setEffMoveKey( spep_4+214, ct_bago, 28.8, 181 , 0 );
setEffMoveKey( spep_4+216, ct_bago, 37, 182.4 , 0 );
setEffMoveKey( spep_4+218, ct_bago, 45.4, 185.2 , 0 );
setEffMoveKey( spep_4+220, ct_bago, 37, 187.1 , 0 );
setEffMoveKey( spep_4+230, ct_bago, 37.3, 188.5 , 0 );
setEffScaleKey( spep_4+208, ct_bago, 1.38, 1.38 );
setEffScaleKey( spep_4+210, ct_bago, 2.96, 2.96 );
setEffScaleKey( spep_4+212, ct_bago, 3.76, 3.76 );
setEffScaleKey( spep_4+214, ct_bago, 3.57, 3.57 );
setEffScaleKey( spep_4+216, ct_bago, 3.39, 3.39 );
setEffScaleKey( spep_4+218, ct_bago, 3.21, 3.21 );
setEffScaleKey( spep_4+220, ct_bago, 3.04, 3.04 );
setEffScaleKey( spep_4+230, ct_bago, 2.94, 2.94 );
setEffRotateKey( spep_4+208, ct_bago, 4.9 );
setEffRotateKey( spep_4+210, ct_bago, -8.5 );
setEffRotateKey( spep_4+212, ct_bago, 4.9 );
setEffRotateKey( spep_4+214, ct_bago, 13.4 );
setEffRotateKey( spep_4+216, ct_bago, 4.7 );
setEffRotateKey( spep_4+218, ct_bago, -6 );
setEffRotateKey( spep_4+220, ct_bago, 4.9 );
setEffRotateKey( spep_4+230, ct_bago, 4.9 );
setEffAlphaKey( spep_4+208, ct_bago, 255 );
setEffAlphaKey( spep_4+212, ct_bago, 255 );
setEffAlphaKey( spep_4+214, ct_bago, 191 );
setEffAlphaKey( spep_4+216, ct_bago, 128 );
setEffAlphaKey( spep_4+228, ct_bago, 64 );
setEffAlphaKey( spep_4+230, ct_bago, 0 );

kakutou_m = entryEffect(  spep_4,  SP_04,  0x100,  -1,  0,  0,  0);  --格闘真ん中 ef_04

setEffScaleKey(  spep_4,  kakutou_m,  1.0,  1.0);
setEffMoveKey(  spep_4,  kakutou_m,  0,  0);
setEffRotateKey(  spep_4,  kakutou_m,  0);
setEffAlphaKey(  spep_4,  kakutou_m,  255);
setEffScaleKey(  spep_4+250,  kakutou_m,  1.0,  1.0);
setEffMoveKey(  spep_4+250,  kakutou_m,  0,  0);
setEffRotateKey(  spep_4+250,  kakutou_m,  0);
setEffAlphaKey(  spep_4+250,  kakutou_m,  255);
setEffScaleKey(  spep_4+251,  kakutou_m,  1.0,  1.0);
setEffMoveKey(  spep_4+251,  kakutou_m,  0,  0);
setEffRotateKey(  spep_4+251,  kakutou_m,  0);
setEffAlphaKey(  spep_4+251,  kakutou_m,  0);
setEffAlphaKey(  spep_4+252,  kakutou_m,  0);
setEffScaleKey(  spep_4+260,  kakutou_m,  1.0,  1.0);
setEffMoveKey(  spep_4+260,  kakutou_m,  0,  0);
setEffRotateKey(  spep_4+260,  kakutou_m,  0);
setEffAlphaKey(  spep_4+260,  kakutou_m,  0);


kakutou_b = entryEffect(  spep_4,  SP_05,  0x80,  -1,  0,  0,  0);  --格闘一番下 ef_05

setEffScaleKey(  spep_4,  kakutou_b,  1.0,  1.0);
setEffMoveKey(  spep_4,  kakutou_b,  0,  0);
setEffRotateKey(  spep_4,  kakutou_b,  0);
setEffAlphaKey(  spep_4,  kakutou_b,  255);
setEffScaleKey(  spep_4+250,  kakutou_b,  1.0,  1.0);
setEffMoveKey(  spep_4+250,  kakutou_b,  0,  0);
setEffRotateKey(  spep_4+250,  kakutou_b,  0);
setEffAlphaKey(  spep_4+250,  kakutou_b,  255);
setEffScaleKey(  spep_4+251,  kakutou_b,  1.0,  1.0);
setEffMoveKey(  spep_4+251,  kakutou_b,  0,  0);
setEffRotateKey(  spep_4+251,  kakutou_b,  0);
setEffRotateKey(  spep_4+252,  kakutou_b,  0);
setEffAlphaKey(  spep_4+251,  kakutou_b,  0);
setEffScaleKey(  spep_4+260,  kakutou_b,  1.0,  1.0);
setEffMoveKey(  spep_4+260,  kakutou_b,  0,  0);
setEffRotateKey(  spep_4+260,  kakutou_b,  0);
setEffAlphaKey(  spep_4+260,  kakutou_b,  0);


--**敵の動き(ef_04enemy)**

setDisp( spep_4, 1, 1 );
changeAnime( spep_4, 1, 104 );  --ガード

setMoveKey( spep_4, 1, -1269.2, -352.6 , 0 );
setMoveKey( spep_4+2, 1, -848.1, -243.7 , 0 );
setMoveKey( spep_4+4, 1, -427, -134.7 , 0 );
setMoveKey( spep_4+6, 1, -5.9, -25.8 , 0 );
setMoveKey( spep_4+8, 1, 38.9, -10.5 , 0 );
setMoveKey( spep_4+10, 1, 83.7, 4.7 , 0 );
setMoveKey( spep_4+12, 1, 128.5, 20 , 0 );
--setMoveKey( spep_4+14, 1, 132.6, 21.4 , 0 );
setScaleKey( spep_4, 1, 3.02, 3.02 );
setScaleKey( spep_4+2, 1, 2.64, 2.64 );
setScaleKey( spep_4+4, 1, 2.25, 2.25 );
setScaleKey( spep_4+6, 1, 1.87, 1.87 );
setScaleKey( spep_4+8, 1, 1.8, 1.8 );
setScaleKey( spep_4+10, 1, 1.72, 1.72 );
setScaleKey( spep_4+12, 1, 1.65, 1.65 );
--setScaleKey( spep_4+14, 1, 1.65, 1.65 );
setRotateKey( spep_4, 1, 0 );
setRotateKey( spep_4+12, 1, 0 );

changeAnime( spep_4+14, 1, 101 );   --アイドリング

setMoveKey( spep_4+14, 1, 139.9, 23.2 , 0 );
setMoveKey( spep_4+16, 1, 144.1, 23.7 , 0 );
setMoveKey( spep_4+18, 1, 148.2, 24.2 , 0 );
setMoveKey( spep_4+20, 1, 152.3, 24.7 , 0 );
setMoveKey( spep_4+22, 1, 156.5, 25.2 , 0 );
setMoveKey( spep_4+24, 1, 160.6, 25.7 , 0 );
setMoveKey( spep_4+26, 1, 161.5, 26 , 0 );
setMoveKey( spep_4+28, 1, 162.4, 26.3 , 0 );
setMoveKey( spep_4+30, 1, 163.3, 26.6 , 0 );
setMoveKey( spep_4+32, 1, 164.2, 26.9 , 0 );
setMoveKey( spep_4+34, 1, 165.1, 27.3 , 0 );
setMoveKey( spep_4+36, 1, 166, 27.6 , 0 );
setMoveKey( spep_4+38, 1, 166.9, 27.9 , 0 );
setScaleKey( spep_4+14, 1, 1.71, 1.71 );
setScaleKey( spep_4+38, 1, 1.71, 1.71 );
setRotateKey( spep_4+14, 1, 5.2 );
setRotateKey( spep_4+26, 1, 5.2 );
setRotateKey( spep_4+28, 1, 5.1 );
setRotateKey( spep_4+34, 1, 5.1 );
setRotateKey( spep_4+38, 1, 5 );

changeAnime( spep_4+40, 1, 117 );   --構え

setShakeChara(  spep_4+40,  1,  18,  10);  --揺れ
setMoveKey( spep_4+40, 1, 177, 18.9 , 0 );
setMoveKey( spep_4+42, 1, 175, 13.9 , 0 );
setMoveKey( spep_4+44, 1, 178.1, 19.2 , 0 );
setMoveKey( spep_4+46, 1, 173.5, 16.8 , 0 );
setMoveKey( spep_4+48, 1, 179.2, 19.6 , 0 );
setMoveKey( spep_4+50, 1, 177.2, 14.6 , 0 );
setMoveKey( spep_4+52, 1, 180.3, 20 , 0 );
setMoveKey( spep_4+54, 1, 175.7, 17.5 , 0 );
setMoveKey( spep_4+56, 1, 181.5, 20.4 , 0 );
setMoveKey( spep_4+58, 1, 179.4, 12.8 , 0 );
setScaleKey( spep_4+40, 1, 1.69, 1.69 );
setScaleKey( spep_4+58, 1, 1.69, 1.69 );
setRotateKey( spep_4+40, 1, 0 );
setRotateKey( spep_4+58, 1, 0 );

changeAnime( spep_4+112, 1, 108 );  --くの字

setShakeChara(  spep_4+112,  1,  132,  20);  --揺れ
setMoveKey( spep_4+112, 1, -2.1, 31 , 0 );
setMoveKey( spep_4+114, 1, -10.7, 26.3 , 0 );
setMoveKey( spep_4+116, 1, 4.3, 30.1 , 0 );
setMoveKey( spep_4+118, 1, 3.4, 19.2 , 0 );
setMoveKey( spep_4+120, 1, 10.5, 32.3 , 0 );
setMoveKey( spep_4+122, 1, 13.7, 33.5 , 0 );
setMoveKey( spep_4+124, 1, 16.8, 34.6 , 0 );
setMoveKey( spep_4+126, 1, 19.9, 35.7 , 0 );
setMoveKey( spep_4+128, 1, 19.6, 40.1 , 0 );
setMoveKey( spep_4+130, 1, 29, 42.1 , 0 );
setMoveKey( spep_4+132, 1, 38.9, 39.1 , 0 );
setMoveKey( spep_4+134, 1, 56.1, 59.9 , 0 );
setMoveKey( spep_4+136, 1, 46.9, 58.7 , 0 );
setMoveKey( spep_4+138, 1, 61.7, 65.4 , 0 );
setMoveKey( spep_4+140, 1, 60.5, 60.2 , 0 );
setMoveKey( spep_4+142, 1, 67.3, 71 , 0 );
setMoveKey( spep_4+144, 1, 62.1, 69.7 , 0 );
setMoveKey( spep_4+146, 1, 72.9, 76.5 , 0 );
setMoveKey( spep_4+148, 1, 75.7, 79.2 , 0 );
setMoveKey( spep_4+150, 1, 78.4, 82 , 0 );
setMoveKey( spep_4+152, 1, 81.2, 84.8 , 0 );
setMoveKey( spep_4+154, 1, 84, 87.5 , 0 );
setMoveKey( spep_4+156, 1, 86.8, 90.3 , 0 );
setMoveKey( spep_4+158, 1, 89.6, 93.1 , 0 );
setMoveKey( spep_4+160, 1, 92.4, 95.8 , 0 );
setMoveKey( spep_4+162, 1, 95.2, 98.6 , 0 );
setScaleKey( spep_4+112, 1, 1.89, 1.89 );
setScaleKey( spep_4+114, 1, 1.77, 1.77 );
setScaleKey( spep_4+116, 1, 1.7, 1.7 );
setScaleKey( spep_4+126, 1, 1.7, 1.7 );
setScaleKey( spep_4+128, 1, 2.04, 2.04 );
setScaleKey( spep_4+130, 1, 1.89, 1.89 );
setScaleKey( spep_4+132, 1, 1.77, 1.77 );
setScaleKey( spep_4+134, 1, 1.7, 1.7 );
setScaleKey( spep_4+158, 1, 1.7, 1.7 );
setScaleKey( spep_4+164, 1, 1.7, 1.7 );
setRotateKey( spep_4+112, 1, -15.3 );
setRotateKey( spep_4+158, 1, -15.3 );
setRotateKey( spep_4+164, 1, -15.3 );
setRotateKey( spep_4+165, 1, -15.3 );

changeAnime( spep_4+166, 1, 106 );  --仰け反り

setMoveKey( spep_4+166, 1, -6.3, 122.9 , 0 );
setMoveKey( spep_4+168, 1, -4.2, 127.6 , 0 );
setMoveKey( spep_4+170, 1, -14, 117.4 , 0 );
setMoveKey( spep_4+172, 1, -7.7, 116.4 , 0 );
setMoveKey( spep_4+174, 1, -13.4, 104.6 , 0 );
setMoveKey( spep_4+176, 1, -11.2, 111.4 , 0 );
setMoveKey( spep_4+178, 1, -21.1, 106.3 , 0 );
setMoveKey( spep_4+180, 1, -15, 109.1 , 0 );
setMoveKey( spep_4+182, 1, -16.8, 107.9 , 0 );
setMoveKey( spep_4+184, 1, -18.6, 106.7 , 0 );
setMoveKey( spep_4+186, 1, -20.5, 105.6 , 0 );
setMoveKey( spep_4+188, 1, -22.4, 104.4 , 0 );
setMoveKey( spep_4+190, 1, -24.2, 103.2 , 0 );
setMoveKey( spep_4+192, 1, -52.4, 5.2 , 0 );
setMoveKey( spep_4+194, 1, -30.3, -25.3 , 0 );
setMoveKey( spep_4+196, 1, -45.6, -79.7 , 0 );
setMoveKey( spep_4+198, 1, -36.3, -115.9 , 0 );
setMoveKey( spep_4+200, 1, -42.4, -159.7 , 0 );
setMoveKey( spep_4+202, 1, -43.4, -187.8 , 0 );
setMoveKey( spep_4+204, 1, -43.7, -206.9 , 0 );
setMoveKey( spep_4+207, 1, -43.5, -216.7 , 0 );
--setMoveKey( spep_4+202, 1, -43.5, -216.7 , 0 );
--setMoveKey( spep_4+208, 1, -43.5, -216.7 , 0 );
setScaleKey( spep_4+166, 1, 1.99, 1.99 );
setScaleKey( spep_4+168, 1, 1.9, 1.9 );
setScaleKey( spep_4+170, 1, 1.83, 1.83 );
setScaleKey( spep_4+172, 1, 1.77, 1.77 );
setScaleKey( spep_4+174, 1, 1.73, 1.73 );
setScaleKey( spep_4+190, 1, 1.73, 1.73 );
setScaleKey( spep_4+192, 1, 1.99, 1.99 );
setScaleKey( spep_4+194, 1, 1.9, 1.9 );
setScaleKey( spep_4+196, 1, 1.83, 1.83 );
setScaleKey( spep_4+198, 1, 1.77, 1.77 );
setScaleKey( spep_4+200, 1, 1.73, 1.73 );
setScaleKey( spep_4+206, 1, 1.73, 1.73 );
setRotateKey( spep_4+166, 1, -79.3 );
setRotateKey( spep_4+190, 1, -80 );
setRotateKey( spep_4+192, 1, -102.6 );
setRotateKey( spep_4+194, 1, -117.6 );
setRotateKey( spep_4+196, 1, -118.9 );
setRotateKey( spep_4+198, 1, -120 );
setRotateKey( spep_4+200, 1, -120.9 );
setRotateKey( spep_4+202, 1, -121.6 );
setRotateKey( spep_4+204, 1, -122.1 );
setRotateKey( spep_4+207, 1, -122.1 );


changeAnime( spep_4+208, 1, 108 );   --くの字

setMoveKey( spep_4+208, 1, 81.5, -73.2 , 0 );
setMoveKey( spep_4+210, 1, 83.6, -62.7 , 0 );
setMoveKey( spep_4+212, 1, 71.3, -67.1 , 0 );
setMoveKey( spep_4+214, 1, 84.6, -62 , 0 );
setMoveKey( spep_4+216, 1, 83.7, -67.7 , 0 );
setMoveKey( spep_4+218, 1, 96.2, -53.2 , 0 );
setMoveKey( spep_4+220, 1, 97.6, -50.1 , 0 );
setMoveKey( spep_4+222, 1, 115.9, -38.1 , 0 );
setMoveKey( spep_4+224, 1, 123.2, -41.6 , 0 );
setMoveKey( spep_4+226, 1, 139.3, -20.2 , 0 );
setMoveKey( spep_4+228, 1, 429.6, 182.7 , 0 );
setMoveKey( spep_4+230, 1, 705.9, 372.9 , 0 );
setMoveKey( spep_4+232, 1, 944.5, 538.5 , 0 );
setMoveKey( spep_4+234, 1, 1153.2, 683.4 , 0 );
setMoveKey( spep_4+236, 1, 1332.2, 807.5 , 0 );
setMoveKey( spep_4+238, 1, 1481.3, 911 , 0 );
setMoveKey( spep_4+240, 1, 1600.5, 993.8 , 0 );
setMoveKey( spep_4+242, 1, 1690, 1055.9 , 0 );
setMoveKey( spep_4+244, 1, 1749.7, 1097.3 , 0 );

setScaleKey( spep_4+208, 1, 2.3, 2.3 );
setScaleKey( spep_4+210, 1, 2.09, 2.09 );
setScaleKey( spep_4+212, 1, 1.92, 1.92 );
setScaleKey( spep_4+214, 1, 1.79, 1.79 );
setScaleKey( spep_4+216, 1, 1.7, 1.7 );
setScaleKey( spep_4+244, 1, 1.7, 1.7 );

setRotateKey( spep_4+208, 1, -33.8 );
setRotateKey( spep_4+200, 1, -33.6 );
setRotateKey( spep_4+212, 1, -33.5 );
setRotateKey( spep_4+214, 1, -33.4 );
setRotateKey( spep_4+216, 1, -33.2 );
setRotateKey( spep_4+218, 1, -33);
setRotateKey( spep_4+220, 1, -32.8);
setRotateKey( spep_4+222, 1, -32.5);
setRotateKey( spep_4+224, 1, -32.3);
setRotateKey( spep_4+226, 1, -32 );
setRotateKey( spep_4+244, 1, -32 );


setDisp(  spep_4+246,  1,  0);  --敵非表示

kakutou_f = entryEffect(  spep_4,  SP_03,  0x100,  -1,  0,  0,  0);  --格闘前 ef_03

setEffScaleKey(  spep_4,  kakutou_f,  1.0,  1.0);
setEffMoveKey(  spep_4,  kakutou_f,  0,  0);
setEffRotateKey(  spep_4,  kakutou_f,  0);
setEffAlphaKey(  spep_4,  kakutou_f,  255);
setEffScaleKey(  spep_4+250,  kakutou_f,  1.0,  1.0);
setEffMoveKey(  spep_4+250,  kakutou_f,  0,  0);
setEffRotateKey(  spep_4+250,  kakutou_f,  0);
setEffAlphaKey(  spep_4+250,  kakutou_f,  255);
setEffScaleKey(  spep_4+251,  kakutou_f,  1.0,  1.0);
setEffMoveKey(  spep_4+251,  kakutou_f,  0,  0);
setEffRotateKey(  spep_4+251,  kakutou_f,  0);
setEffAlphaKey(  spep_4+251,  kakutou_f,  0);
setEffAlphaKey(  spep_4+252,  kakutou_f,  0);
setEffScaleKey(  spep_4+260,  kakutou_f,  1.0,  1.0);
setEffMoveKey(  spep_4+260,  kakutou_f,  0,  0);
setEffRotateKey(  spep_4+260,  kakutou_f,  0);
setEffAlphaKey(  spep_4+260,  kakutou_f,  0);

--**敵の動き(ef_03enemy)**
changeAnime( spep_4+60, 1, 111 );  --パンチ構え

pauseChara(  spep_4+60,  10);  --止める
setMoveKey( spep_4+60, 1, 153.6, 24.1 , 0 );
setMoveKey( spep_4+62, 1, 142.5, 21.1 , 0 );
setMoveKey( spep_4+64, 1, 131.3, 18.2 , 0 );
setMoveKey( spep_4+66, 1, 120.2, 15.2 , 0 );
setMoveKey( spep_4+68, 1, 109, 12.3 , 0 );
setScaleKey( spep_4+60, 1, 1.59, 1.59 );
setScaleKey( spep_4+68, 1, 1.59, 1.59 );
setRotateKey( spep_4+60, 1, -12.2 );
setRotateKey( spep_4+68, 1, -12.2 );

setShakeChara(  spep_4+70,  1,  42,  10);  --揺れ
setMoveKey( spep_4+70, 1, 37.3, -4.4 , 0 );  --パンチ
setMoveKey( spep_4+72, 1, 35.5, -4.9 , 0 );
setMoveKey( spep_4+74, 1, 33.7, -5.4 , 0 );
setMoveKey( spep_4+76, 1, 32, -5.9 , 0 );
setMoveKey( spep_4+78, 1, 30.2, -6.4 , 0 );
setMoveKey( spep_4+80, 1, 28.4, -6.8 , 0 );
setMoveKey( spep_4+82, 1, 26.6, -7.3 , 0 );
setMoveKey( spep_4+84, 1, 24.8, -7.8 , 0 );
setMoveKey( spep_4+86, 1, 23.1, -8.3 , 0 );
setMoveKey( spep_4+88, 1, 21.3, -8.8 , 0 );
setMoveKey( spep_4+90, 1, 19.5, -9.3 , 0 );
setMoveKey( spep_4+92, 1, 10.6, -11.7 , 0 );
--setMoveKey( spep_4+92, 1, 17.7, -9.8 , 0 );
--setMoveKey( spep_4+94, 1, 15.9, -10.3 , 0 );
--setMoveKey( spep_4+96, 1, 14.1, -10.7 , 0 );
--setMoveKey( spep_4+98, 1, 12.4, -11.2 , 0 );
--setMoveKey( spep_4+100, 1, 10.6, -11.7 , 0 );
--setMoveKey( spep_4+102, 1, 8.8, -12.2 , 0 );
setScaleKey( spep_4+70, 1, 1.68, 1.68 );
setScaleKey( spep_4+96, 1, 1.68, 1.68 );
--setScaleKey( spep_4+92, 1, 1.68, 1.68 );
setRotateKey( spep_4+70, 1, -12.2 );
--setRotateKey( spep_4+88, 1, -12.2 );
setRotateKey( spep_4+96, 1, -12.2 );

changeAnime( spep_4+97, 1, 106 );  --仰け反り

setShakeChara(  spep_4+97,  1,  16,  20);  --揺れ
setMoveKey( spep_4+97, 1, -41.7, -44.2 , 0 );
setMoveKey( spep_4+108, 1, -33.4, -23.8 , 0 );
setMoveKey( spep_4+110, 1, -42.1, -34.4 , 0 );
setMoveKey( spep_4+112, 1, -28.1, -28.9 , 0 );
setMoveKey( spep_4+114, 1, -34.1, -49.7 , 0 );
setMoveKey( spep_4+116, 1, -32.1, -38.5 , 0 );
setMoveKey( spep_4+118, 1, -34.1, -43.2 , 0 );
setMoveKey( spep_4+120, 1, -36.1, -48 , 0 );
setMoveKey( spep_4+122, 1, -40.1, -37.3 , 0 );
setScaleKey( spep_4+97, 1, 2.6, 2.6 );
setScaleKey( spep_4+108, 1, 2.21, 2.21 );
setScaleKey( spep_4+110, 1, 1.92, 1.92 );
--setScaleKey( spep_4+116, 1, 1.73, 1.73 );
--setScaleKey( spep_4+118, 1, 1.73, 1.73 );
--setScaleKey( spep_4+120, 1, 1.73, 1.73 );
--setScaleKey( spep_4+120, 1, 2.08, 2.08 );
--setScaleKey( spep_4+122, 1, 2.08, 2.08 );
setRotateKey( spep_4+97, 1, -117.8 );
setRotateKey( spep_4+110, 1, -117 );
setRotateKey( spep_4+111, 1, -117 );
--setRotateKey( spep_4+118, 1, -117 );
--setRotateKey( spep_4+120, 1, -107.9 );
--setRotateKey( spep_4+122, 1, -107.9 );


--**SE**
--playSe(  spep_4+64,  43);  --瞬間移動
playSe(  spep_4+62,  1003);  --空振り
--playSe(  spep_4+86,  43);  --瞬間移動
playSe(  spep_4+96,  1010);  --蹴り
playSe(  spep_4+111,  1000);
playSe(  spep_4+130,  1001);
playSe(  spep_4+165,  1009);
playSe(  spep_4+190,  1006);
playSe(  spep_4+207,  1010);  --蹴り
playSe(  spep_4+230,  43);  --瞬間移動

entryFadeBg( spep_4, 0, 260, 0, 0, 0, 0, 210);          -- 黒　背景

entryFade( spep_4+243, 4, 4, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- セル構え(340F)
------------------------------------------------------
spep_5 = spep_4+250;

--**集中線**
shuchusen5 = entryEffectLife( spep_5, 906, 340, 0x100,  -1, 0,  0,  0);

setEffMoveKey(  spep_5,  shuchusen5,  0,  0);
setEffScaleKey(  spep_5,  shuchusen5,  1.39,  1.75);
setEffRotateKey(  spep_5,  shuchusen5,  0);
setEffAlphaKey(  spep_5,  shuchusen5,  255);
setEffMoveKey(  spep_5+340,  shuchusen5,  0,  0);
setEffScaleKey(  spep_5+340,  shuchusen5,  1.39,  1.75);
setEffRotateKey(  spep_5+340,  shuchusen5,  0);
setEffAlphaKey(  spep_5+340,  shuchusen5,  255);

--**書き文字**
ct_zuzu = entryEffectLife( spep_5+108,  10013, 26, 0x100, -1, 0, 20.1, 249.8 );  --ズズズンッ

setEffShake(  spep_5+108,  ct_zuzu,  26,  20);  --揺れ
setEffMoveKey( spep_5+108, ct_zuzu, 20.1, 249.8 , 0 );
setEffMoveKey( spep_5+110, ct_zuzu, 25.9, 316.1 , 0 );
setEffMoveKey( spep_5+134, ct_zuzu, 41.1, 364.5 , 0 );
setEffScaleKey( spep_5+108, ct_zuzu, 1.11, 1.11 );
setEffScaleKey( spep_5+110, ct_zuzu, 2.28, 2.28 );
setEffScaleKey( spep_5+112, ct_zuzu, 2.92, 2.92 );
setEffScaleKey( spep_5+134, ct_zuzu, 2.92, 2.92 );
setEffRotateKey( spep_5+108, ct_zuzu, -5 );
setEffRotateKey( spep_5+134, ct_zuzu, -5 );
setEffAlphaKey( spep_5+108, ct_zuzu, 255 );
setEffAlphaKey( spep_5+122, ct_zuzu, 235 );
setEffAlphaKey( spep_5+124, ct_zuzu, 163 );
setEffAlphaKey( spep_5+126, ct_zuzu, 105 );
setEffAlphaKey( spep_5+128, ct_zuzu, 59 );
setEffAlphaKey( spep_5+130, ct_zuzu, 26 );
setEffAlphaKey( spep_5+132, ct_zuzu, 7 );
setEffAlphaKey( spep_5+134, ct_zuzu, 0 );

kamae = entryEffect(  spep_5,  SP_06,  0x80,  -1,  0,  0,  0);  --構え

setEffScaleKey(  spep_5,  kamae,  1.0,  1.0);
setEffMoveKey(  spep_5,  kamae,  0,  0);
setEffRotateKey(  spep_5,  kamae,  0);
setEffAlphaKey(  spep_5,  kamae,  255);
setEffScaleKey(  spep_5+340,  kamae,  1.0,  1.0);
setEffMoveKey(  spep_5+340,  kamae,  0,  0);
setEffRotateKey(  spep_5+340,  kamae,  0);
setEffAlphaKey(  spep_5+340,  kamae,  255);

--**カードカットイン**
speff = entryEffect(  spep_5+135,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_5+135,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

--**書き文字**
ctgogo = entryEffectLife( spep_5+148, 190006, 71, 0x100, -1, 0, 0, 510);    -- ゴゴゴゴ

setEffScaleKey(  spep_5+148,  ctgogo,  0.7,  0.7);
setEffMoveKey(  spep_5+148,  ctgogo,  0,  530);
setEffRotateKey(  spep_5+148,  ctgogo,  0);
setEffScaleKey(  spep_5+219,  ctgogo,  0.7,  0.7);
setEffMoveKey(  spep_5+219,  ctgogo,  0,  530);
setEffRotateKey(  spep_5+219,  ctgogo,  0);

--**SE**
playSe(  spep_5,  SE_01);  --気溜め
playSe(  spep_5+50,  1037);  --気溜め
playSe(  spep_5+148,  SE_04);  --カットイン
SE0=playSe(  spep_5+108,  1044);  --ガラガラ
playSe(  spep_5+250,  1035);  --気を放つ音

entryFade( spep_5+108, 0, 1, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_5+220, 0, 1, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_5+248, 1, 1, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- セルナビ(80F)
------------------------------------------------------
spep_6 = spep_5+336;

--**集中線**
shuchusen6 = entryEffectLife( spep_6, 906, 80, 0x100,  -1, 0,  0,  0);

setEffMoveKey(  spep_6,  shuchusen6,  0,  0);
setEffScaleKey(  spep_6,  shuchusen6,  1.39,  1.75);
setEffRotateKey(  spep_6,  shuchusen6,  0);
setEffAlphaKey(  spep_6,  shuchusen6,  255);
setEffMoveKey(  spep_6+80,  shuchusen6,  0,  0);
setEffScaleKey(  spep_6+80,  shuchusen6,  1.39,  1.75);
setEffRotateKey(  spep_6+80,  shuchusen6,  0);
setEffAlphaKey(  spep_6+80,  shuchusen6,  255);

--**流線**
ryu6 = entryEffectLife(  spep_6,  920,  80,  0x80,  -1,  0,  0,  0);  --流線横

setEffScaleKey(  spep_6,  ryu6,  2.45,  1.54);
setEffMoveKey(  spep_6,  ryu6,  0,  0);
setEffRotateKey(  spep_6,  ryu6,  -6);
setEffAlphaKey(  spep_6,  ryu6,  255);
setEffScaleKey(  spep_6+80,  ryu6,  2.45,  1.54);
setEffMoveKey(  spep_6+80,  ryu6,  0,  0);
setEffRotateKey(  spep_6+80,  ryu6,  -6);
setEffAlphaKey(  spep_6+80,  ryu6,  255);

nabi = entryEffect(  spep_6,  SP_07,  0x80,  -1,  0,  0,  0);  --ナビ

setEffScaleKey(  spep_6,  nabi,  1.0,  1.0);
setEffMoveKey(  spep_6,  nabi,  0,  0);
setEffRotateKey(  spep_6,  nabi,  0);
setEffAlphaKey(  spep_6,  nabi,  255);
setEffScaleKey(  spep_6+80,  nabi,  1.0,  1.0);
setEffMoveKey(  spep_6+80,  nabi,  0,  0);
setEffRotateKey(  spep_6+80,  nabi,  0);
setEffAlphaKey(  spep_6+80,  nabi,  255);

--**SE**
playSe(  spep_6,  1037);  --気溜め
stopSe(  spep_6+72,  SE0,  6);  --SE止め

entryFadeBg( spep_6, 0, 106, 0, 0, 0, 0, 255);          -- 黒　背景

entryFade( spep_6+72, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- セル放つ(60F)
------------------------------------------------------
spep_7 = spep_6+80;

--**集中線**
shuchusen7 = entryEffectLife( spep_7, 906, 60, 0x100,  -1, 0,  0,  0);

setEffMoveKey(  spep_7,  shuchusen7,  0,  0);
setEffScaleKey(  spep_7,  shuchusen7,  1.39,  1.75);
setEffRotateKey(  spep_7,  shuchusen7,  0);
setEffAlphaKey(  spep_7,  shuchusen7,  255);
setEffMoveKey(  spep_7+60,  shuchusen7,  0,  0);
setEffScaleKey(  spep_7+60,  shuchusen7,  1.39,  1.75);
setEffRotateKey(  spep_7+60,  shuchusen7,  0);
setEffAlphaKey(  spep_7+60,  shuchusen7,  255);

--**書き文字**
ct_zuo = entryEffectLife( spep_7+3,  10012, 57, 0x100, -1, 0, -202.3, 222.1 );  --ズオンッ

setEffShake(  spep_7+3,  ct_zuo,  76,  20);  --揺れ
setEffMoveKey( spep_7+3, ct_zuo, -202.3, 222.1 , 0 );
setEffMoveKey( spep_7+5, ct_zuo, -175.8, 259.8 , 0 );
setEffMoveKey( spep_7+7, ct_zuo, -167.8, 299.1 , 0 );
setEffMoveKey( spep_7+9, ct_zuo, -128.1, 335.7 , 0 );
setEffMoveKey( spep_7+60, ct_zuo, -120.6, 351 , 0 );
setEffScaleKey( spep_7+3, ct_zuo, 0.34, 0.34 );
setEffScaleKey( spep_7+5, ct_zuo, 1.13, 1.13 );
setEffScaleKey( spep_7+7, ct_zuo, 1.94, 1.94 );
setEffScaleKey( spep_7+9, ct_zuo, 2.73, 2.73 );
setEffScaleKey( spep_7+60, ct_zuo, 2.73, 2.73 );
setEffRotateKey( spep_7+3, ct_zuo, -12.8 );
setEffRotateKey( spep_7+60, ct_zuo, -12.8 );
setEffAlphaKey( spep_7+3, ct_zuo, 255 );
setEffAlphaKey( spep_7+60, ct_zuo, 255 );

--**流線**
ryu7 = entryEffectLife(  spep_7,  921,  60,  0x80,  -1,  0,  0,  0);  --斜め奥

setEffScaleKey(  spep_7,  ryu7,  1.8,  1.25);
setEffMoveKey(  spep_7,  ryu7,  0,  0);
setEffRotateKey(  spep_7,  ryu7,  -50);
setEffAlphaKey(  spep_7,  ryu7,  255);
setEffScaleKey(  spep_7+60,  ryu7,  1.8,  1.25);
setEffMoveKey(  spep_7+60,  ryu7,  0,  0);
setEffRotateKey(  spep_7+60,  ryu7,  -50);
setEffAlphaKey(  spep_7+60,  ryu7,  255);

hanatsu = entryEffect(  spep_7,  SP_08,  0x80,  -1,  0,  0,  0);  --放つ

setEffScaleKey(  spep_7,  hanatsu,  1.0,  1.0);
setEffMoveKey(  spep_7,  hanatsu,  0,  0);
setEffRotateKey(  spep_7,  hanatsu,  0);
setEffAlphaKey(  spep_7,  hanatsu,  255);
setEffScaleKey(  spep_7+60,  hanatsu,  1.0,  1.0);
setEffMoveKey(  spep_7+60,  hanatsu,  0,  0);
setEffRotateKey(  spep_7+60,  hanatsu,  0);
setEffAlphaKey(  spep_7+60,  hanatsu,  255);

--SE
playSe(  spep_7,  SE_06);

entryFadeBg( spep_7, 0, 60, 0, 0, 0, 0, 255);          -- 黒　背景

entryFade( spep_7+54, 3, 4, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 被弾(60F)
------------------------------------------------------
spep_8 = spep_7+60;

shuchusen8 = entryEffectLife( spep_8, 906, 80, 0x100,  -1, 0,  0,  0);

setEffMoveKey(  spep_8,  shuchusen8,  0,  0);
setEffScaleKey(  spep_8,  shuchusen8,  1.35,  1.7);
setEffRotateKey(  spep_8,  shuchusen8,  0);
setEffAlphaKey(  spep_8,  shuchusen8,  255);
setEffMoveKey(  spep_8+60,  shuchusen8,  0,  0);
setEffScaleKey(  spep_8+60,  shuchusen8,  1.35,  1.7);
setEffRotateKey(  spep_8+60,  shuchusen8,  0);
setEffAlphaKey(  spep_8+60,  shuchusen8,  255);

ryu8 = entryEffectLife(  spep_8,  921,  60,  0x80,  -1,  0,  0,  0);  --斜め奥

setEffScaleKey(  spep_8,  ryu8,  1.78,  1.3);
setEffScaleKey(  spep_8+60,  ryu8,  1.78,  1.3);
setEffMoveKey(  spep_8,  ryu8,  0,  0);
setEffMoveKey(  spep_8+60,  ryu8,  0,  0);
setEffRotateKey(  spep_8,  ryu8,  -56);
setEffRotateKey(  spep_8+60,  ryu8,  -56);
setEffAlphaKey(  spep_8,  ryu8,  255);
setEffAlphaKey(  spep_8+60,  ryu8,  255);

hidan = entryEffect(  spep_8,  SP_09,  0x100,  -1,  0,  0,  0);  --放つ

setEffShake(  spep_8,  hidan,  60,  20);  --揺れ
setEffScaleKey(  spep_8,  hidan,  1.0,  1.0);
setEffScaleKey(  spep_8+68,  hidan,  1.0,  1.0);
setEffMoveKey(  spep_8,  hidan,  0,  0);
setEffMoveKey(  spep_8+68,  hidan,  0,  0);
setEffRotateKey(  spep_8,  hidan,  0);
setEffRotateKey(  spep_8+68,  hidan,  0);
setEffAlphaKey(  spep_8,  hidan,  255);
setEffAlphaKey(  spep_8+58,  hidan,  255);
setEffAlphaKey(  spep_8+59,  hidan,  0);
setEffAlphaKey(  spep_8+60,  hidan,  0);


--書き文字
ct_zudo = entryEffectLife( spep_8,  10014, 60, 0x100, -1, 0, -131.2, 368.7 ); --ズドド

setEffShake(  spep_8,  ct_zudo,  78,  20);  --揺れ
setEffMoveKey( spep_8, ct_zudo, -131.2, 368.7 , 0 );
setEffMoveKey( spep_8+60, ct_zudo, -129.1, 368.7 , 0 );
setEffScaleKey( spep_8, ct_zudo, 2.0, 2.0 );
setEffScaleKey( spep_8+60, ct_zudo, 2.0, 2.0 );
setEffRotateKey( spep_8, ct_zudo, 12.3 );
setEffRotateKey( spep_8+60, ct_zudo, 12.3 );
setEffAlphaKey( spep_8, ct_zudo, 255 );
setEffAlphaKey( spep_8+60, ct_zudo, 255 );

--敵
setDisp(  spep_8,  1,  1);  --敵表示
changeAnime(  spep_8,  1,  108);  --くの字

setShakeChara(  spep_8,  1,  40,  20);  --揺れ
setMoveKey(  spep_8,  1,  300,  500,  0);
setMoveKey(  spep_8+40,  1,  0,  0,  0);
setScaleKey(  spep_8,  1,  0.3,  0.3);
setScaleKey(  spep_8+40,  1,  1.5,  1.5);
setRotateKey(  spep_8,  1,  -13);
setRotateKey(  spep_8+40,  1,  -13);

setDisp(  spep_8+42,  1,  0);  --非表示

--SE
playSe(  spep_8,  SE_07);

entryFadeBg( spep_8, 0, 80, 0, 0, 0, 0, 255);          -- 黒　背景

entryFade( spep_8+53, 6, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- ギャン(60F)
------------------------------------------------------
spep_9 = spep_8+60;

gyan = entryEffect(  spep_9,  190000,  0x80,  -1,  0,  0, 0);  --ギャン
setEffScaleKey(  spep_9,  gyan,  1.0,  1.0);
setEffScaleKey(  spep_9+60,  gyan,  1.0,  1.0);
setEffAlphaKey(  spep_9,  gyan,  255);
setEffAlphaKey(  spep_9+60,  gyan,  255);

-- 書き文字エントリー --
ctgyan = entryEffectLife( spep_9, 10006, 60, 0x100, -1, 0, 0, 400);    -- ギャン

setEffMoveKey(  spep_9,  ctgyan,  0,  400);
setEffMoveKey(  spep_9+60,  ctgyan,  0,  400);
setEffScaleKey( spep_9, ctgyan, 3.0, 3.0);
setEffScaleKey( spep_9+60, ctgyan, 4.0, 4.0);
setEffRotateKey(  spep_9,  ctgyan,  0);
setEffRotateKey(  spep_9+60,  ctgyan,  0);
setEffAlphaKey( spep_9, ctgyan, 255);
setEffAlphaKey( spep_9+60, ctgyan, 0);
setEffShake( spep_9, ctgyan, 60, 10);

playSe(  spep_9,  SE_09);

entryFade(  spep_9+50,  6,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 爆発(140F)
------------------------------------------------------
spep_10 = spep_9+60;

bakuhatsu = entryEffect(  spep_10,  1910,  0x100,  -1,  0,  0,  0);  --爆発
setEffScaleKey(  spep_10,  bakuhatsu,  -1.0,  1.0);  --書き出しが反転してたので味方側でマイナスつけてます
setEffScaleKey(  spep_10+140,  bakuhatsu,  -1.0,  1.0);
setEffMoveKey(  spep_10,  bakuhatsu,  0,  0);
setEffMoveKey(  spep_10+140,  bakuhatsu,  0,  0);
setEffRotateKey(  spep_10,  bakuhatsu,  0);
setEffRotateKey(  spep_10+140,  bakuhatsu,  0);
setEffAlphaKey(  spep_10,  bakuhatsu,  255);
setEffAlphaKey(  spep_10+140,  bakuhatsu,  255);

--SE
playSe(  spep_10,  SE_10);  --爆発音

-- ダメージ表示
dealDamage(spep_10+10);
entryFade( spep_10+110, 9,  10, 1, fcolor_r, fcolor_g, fcolor_b, 255);             -- black fade
endPhase(spep_10+120);


else

-----------------------------------------
--敵側の攻撃
-----------------------------------------
------------------------------------------------------
-- セルジュニア出現(60F)
------------------------------------------------------
spep_1 = 0;

--**集中線**
shuchusen1 = entryEffectLife( spep_1, 906, 60, 0x100,  -1, 0,  0,  0);  --集中線

setEffMoveKey(  spep_1,  shuchusen1,  0,  0);
setEffScaleKey(  spep_1,  shuchusen1,  1.42,  2.02);
setEffRotateKey(  spep_1,  shuchusen1,  0);
setEffAlphaKey(  spep_1,  shuchusen1,  255);
setEffMoveKey(  spep_1+60,  shuchusen1,  0,  0);
setEffScaleKey(  spep_1+60,  shuchusen1,  1.42,  2.02);
setEffRotateKey(  spep_1+60,  shuchusen1,  0);
setEffAlphaKey(  spep_1+60,  shuchusen1,  255);

--**セルジュニア出現**
appear = entryEffect(  spep_1,  SP_10,  0x80,  -1,  0,  0,  0);  --セルジュニア出現

setEffScaleKey(  spep_1,  appear,  1.0,  1.0);
setEffMoveKey(  spep_1,  appear,  0,  0);
setEffRotateKey(  spep_1,  appear,  0);
setEffAlphaKey(  spep_1,  appear,  255);
setEffScaleKey(  spep_1+60,  appear,  1.0,  1.0);
setEffMoveKey(  spep_1+60,  appear,  0,  0);
setEffRotateKey(  spep_1+60,  appear,  0);
setEffAlphaKey(  spep_1+60,  appear,  255);

--**SE**
playSe(  spep_1+10,  43);
--playSe(  spep_1+18,  43);
playSe(  spep_1+17,  43);
playSe(  spep_1+30,  43);  --瞬間移動

entryFade( spep_1+52, 5, 4, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- カード(90F)
------------------------------------------------------
spep_2 = spep_1+60;

playSe( spep_2, SE_05);
speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

shuchusen2 = entryEffectLife( spep_2, 906, 90, 0x100,  -1, 0,  0,  0);  --集中線

setEffMoveKey(  spep_2,  shuchusen2,  0,  0);
setEffScaleKey(  spep_2,  shuchusen2,  1.0,  1.0);
setEffRotateKey(  spep_2,  shuchusen2,  0);
setEffAlphaKey(  spep_2,  shuchusen2,  255);
setEffMoveKey(  spep_2+90,  shuchusen2,  0,  0);
setEffScaleKey(  spep_2+90,  shuchusen2,  1.0,  1.0);
setEffRotateKey(  spep_2+90,  shuchusen2,  0);
setEffAlphaKey(  spep_2+90,  shuchusen2,  255);

entryFade( spep_2+84, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- セルジュニア突進(110F)
------------------------------------------------------
spep_3 = spep_2+90;

--**集中線**
shuchusen3 = entryEffectLife( spep_3, 906, 110, 0x100,  -1, 0,  0,  0);

setEffMoveKey(  spep_3,  shuchusen3,  0,  0);
setEffScaleKey(  spep_3,  shuchusen3,  1.26,  1.71);
setEffRotateKey(  spep_3,  shuchusen3,  0);
setEffAlphaKey(  spep_3,  shuchusen3,  255);
setEffMoveKey(  spep_3+110,  shuchusen3,  0,  0);
setEffScaleKey(  spep_3+110,  shuchusen3,  1.26,  1.71);
setEffRotateKey(  spep_3+110,  shuchusen3,  0);
setEffAlphaKey(  spep_3+110,  shuchusen3,  255);

--**突進**
tosshin = entryEffect(  spep_3,  SP_11,  0x80,  -1,  0,  0,  0);  --突進

setEffScaleKey(  spep_3,  tosshin,  1.0,  1.0);
setEffMoveKey(  spep_3,  tosshin,  0,  0);
setEffRotateKey(  spep_3,  tosshin,  0);
setEffAlphaKey(  spep_3,  tosshin,  255);
setEffScaleKey(  spep_3+110,  tosshin,  1.0,  1.0);
setEffMoveKey(  spep_3+110,  tosshin,  0,  0);
setEffRotateKey(  spep_3+110,  tosshin,  0);
setEffAlphaKey(  spep_3+110,  tosshin,  255);

--**SE**
playSe(  spep_3+40,  1016);
playSe(  spep_3+50,  1016);


--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_3+60; --エンドフェイズのフレーム数を置き換える

setMoveKey( SP_dodge-1, 0, -8000,  -8000, 0); --味方位置
setMoveKey( SP_dodge, 0, -8000, -8000, 0); --味方位置
setMoveKey( SP_dodge+1, 0, -8000, -8000, 0); --味方位置
setMoveKey( SP_dodge+2, 0, -8000, -8000, 0); --味方位置
setMoveKey( SP_dodge+11, 0, -8000, -8000, 0); --味方位置
setMoveKey( SP_dodge-1, 1, -8000,  -8000, 0); --敵側位置
setMoveKey( SP_dodge, 1, -8000, -8000, 0); --敵側位置
setMoveKey( SP_dodge+1, 1, -8000, -8000, 0); --敵側位置
setMoveKey( SP_dodge+2, 1, -8000, -8000, 0); --敵側位置
setMoveKey( SP_dodge+11, 1, -8000, -8000, 0); --敵側位置

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景
pauseAll( SP_dodge, 67);

entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge+10);

do return end
else end

--------------------------------------
--回避されなかった時
--------------------------------------

playSe(  spep_3+63,  1016);
playSe(  spep_3+88,  1016);  --セルジュニア移動

entryFade( spep_3+105, 2, 5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- セルジュニア攻撃(260F)
------------------------------------------------------
spep_4 = spep_3+110;

--**集中線**
shuchusen4 = entryEffectLife( spep_4, 906, 260, 0x100,  -1, 0,  0,  0);

setEffMoveKey(  spep_4,  shuchusen4,  0,  0);
setEffScaleKey(  spep_4,  shuchusen4,  1.28,  2.25);
setEffRotateKey(  spep_4,  shuchusen4,  0);
setEffAlphaKey(  spep_4,  shuchusen4,  255);
setEffMoveKey(  spep_4+35,  shuchusen4,  0,  0);
setEffScaleKey(  spep_4+35,  shuchusen4,  1.28,  2.25);
setEffRotateKey(  spep_4+35,  shuchusen4,  0);
setEffAlphaKey(  spep_4+35,  shuchusen4,  255);
setEffMoveKey(  spep_4+43,  shuchusen4,  0,  0);
setEffScaleKey(  spep_4+43,  shuchusen4,  1.28,  2.25);
setEffRotateKey(  spep_4+43,  shuchusen4,  0);
setEffAlphaKey(  spep_4+43,  shuchusen4,  0);
setEffMoveKey(  spep_4+70,  shuchusen4,  0,  0);
setEffScaleKey(  spep_4+70,  shuchusen4,  1.28,  2.25);
setEffRotateKey(  spep_4+70,  shuchusen4,  0);
setEffAlphaKey(  spep_4+70,  shuchusen4,  0);
setEffMoveKey(  spep_4+71,  shuchusen4,  0,  0);
setEffScaleKey(  spep_4+71,  shuchusen4,  1.62,  2.4);
setEffRotateKey(  spep_4+71,  shuchusen4,  0);
setEffAlphaKey(  spep_4+71,  shuchusen4,  255);
setEffMoveKey(  spep_4+113,  shuchusen4,  0,  0);
setEffScaleKey(  spep_4+113,  shuchusen4,  1.62,  2.4);
setEffRotateKey(  spep_4+113,  shuchusen4,  0);
setEffAlphaKey(  spep_4+113,  shuchusen4,  255);
setEffMoveKey(  spep_4+114,  shuchusen4,  0,  0);
setEffScaleKey(  spep_4+114,  shuchusen4,  1.28,  2.25);
setEffRotateKey(  spep_4+114,  shuchusen4,  0);
setEffAlphaKey(  spep_4+114,  shuchusen4,  255);
setEffMoveKey(  spep_4+260,  shuchusen4,  0,  0);
setEffScaleKey(  spep_4+260,  shuchusen4,  1.28,  2.25);
setEffRotateKey(  spep_4+260,  shuchusen4,  0);
setEffAlphaKey(  spep_4+260,  shuchusen4,  255);

--**書き文字**
ct_ex = entryEffectLife( spep_4+26,  10000, 20, 0x100, -1, 0, 107, 311 );  --!!

setEffMoveKey( spep_4+26, ct_ex, 107, 311 , 0 );
setEffMoveKey( spep_4+30, ct_ex, 107, 300 , 0 );
setEffMoveKey( spep_4+40, ct_ex, 107, 311 , 0 );
setEffMoveKey( spep_4+46, ct_ex, 107, 311 , 0 );
setEffScaleKey( spep_4+26, ct_ex, 2.2, 2.2 );
setEffScaleKey( spep_4+30, ct_ex, 2.7, 2.7 );
setEffScaleKey( spep_4+40, ct_ex, 2.2, 2.2 );
setEffScaleKey( spep_4+46, ct_ex, 2.2, 2.2 );
setEffRotateKey( spep_4+26, ct_ex, 0 );
setEffRotateKey( spep_4+46, ct_ex, 0 );
setEffAlphaKey( spep_4+26, ct_ex, 255 );
setEffAlphaKey( spep_4+40, ct_ex, 255 );
setEffAlphaKey( spep_4+46, ct_ex, 0 );

ct_qu = entryEffectLife( spep_4+60,  10001, 14, 0x100, -1, 0, 0, 344 );  --!?

setEffMoveKey( spep_4+60, ct_qu, 0, 344 , 0 );
setEffMoveKey( spep_4+66, ct_qu, 0, 324 , 0 );
setEffMoveKey( spep_4+74, ct_qu, 0, 344 , 0 );
setEffMoveKey( spep_4+76, ct_qu, 0, 344 , 0 );
setEffScaleKey(  spep_4+60,  ct_qu,  2.2,  2.2);
setEffScaleKey(  spep_4+66,  ct_qu,  2.7,  2.7);
setEffScaleKey(  spep_4+74,  ct_qu,  2.2,  2.2);
setEffScaleKey(  spep_4+76,  ct_qu,  2.0,  2.0);
setEffRotateKey(  spep_4+60,  ct_qu,  0);
setEffRotateKey(  spep_4+76,  ct_qu,  0);
setEffAlphaKey(  spep_4+60,  ct_qu,  255);
setEffAlphaKey(  spep_4+74,  ct_qu,  255);
setEffAlphaKey(  spep_4+76,  ct_qu,  0);

ct_ga1 = entryEffectLife( spep_4+100,  10005, 20, 0x100, -1, 0, 223.9, 302.4 );  --ガッ

setEffShake(  spep_4+100,  ct_ga1,  20,  10);  --揺れ
setEffMoveKey( spep_4+100, ct_ga1, 223.9, 302.4 , 0 );
setEffMoveKey( spep_4+120, ct_ga1, 224.1, 302.5 , 0 );
setEffScaleKey( spep_4+100, ct_ga1, 0.91, 0.91 );
setEffScaleKey( spep_4+102, ct_ga1, 1.95, 1.95 );
setEffScaleKey( spep_4+104, ct_ga1, 2.48, 2.48 );
setEffScaleKey( spep_4+106, ct_ga1, 2.36, 2.36 );
setEffScaleKey( spep_4+112, ct_ga1, 2.01, 2.01 );
setEffScaleKey( spep_4+120, ct_ga1, 1.94, 1.94 );
setEffRotateKey( spep_4+100, ct_ga1, 31.3 );
setEffRotateKey( spep_4+102, ct_ga1, 17.9 );
setEffRotateKey( spep_4+104, ct_ga1, 31.3 );
setEffRotateKey( spep_4+106, ct_ga1, 39.8 );
setEffRotateKey( spep_4+108, ct_ga1, 31.1 );
setEffRotateKey( spep_4+110, ct_ga1, 20.4 );
setEffRotateKey( spep_4+112, ct_ga1, 31.3 );
setEffRotateKey( spep_4+114, ct_ga1, 31.1 );
setEffRotateKey( spep_4+116, ct_ga1, 31.2 );
setEffRotateKey( spep_4+118, ct_ga1, 31.2 );
setEffRotateKey( spep_4+120, ct_ga1, 31.3 );
setEffAlphaKey( spep_4+100, ct_ga1, 255 );
setEffAlphaKey( spep_4+114, ct_ga1, 255 );
setEffAlphaKey( spep_4+116, ct_ga1, 170 );
setEffAlphaKey( spep_4+118, ct_ga1, 85 );
setEffAlphaKey( spep_4+120, ct_ga1, 0 );

ct_ga2 = entryEffectLife( spep_4+110,  10005, 20, 0x100, -1, 0, -211, 241.6 );  --ガッ

setEffShake(  spep_4+110,  ct_ga2,  20,  10);  --揺れ
setEffMoveKey( spep_4+110, ct_ga2, -211, 241.6 , 0 );
setEffMoveKey( spep_4+130, ct_ga2, -211, 241.7 , 0 );
setEffScaleKey( spep_4+110, ct_ga2, 0.91, 0.91 );
setEffScaleKey( spep_4+112, ct_ga2, 1.95, 1.95 );
setEffScaleKey( spep_4+114, ct_ga2, 2.48, 2.48 );
setEffScaleKey( spep_4+124, ct_ga2, 2, 2 );
setEffScaleKey( spep_4+130, ct_ga2, 1.94, 1.94 );
setEffRotateKey( spep_4+110, ct_ga2, -22.9 );
setEffRotateKey( spep_4+112, ct_ga2, -36.2 );
setEffRotateKey( spep_4+114, ct_ga2, -22.9 );
setEffRotateKey( spep_4+116, ct_ga2, -14.3 );
setEffRotateKey( spep_4+118, ct_ga2, -23.1 );
setEffRotateKey( spep_4+120, ct_ga2, -33.8 );
setEffRotateKey( spep_4+122, ct_ga2, -22.9 );
setEffRotateKey( spep_4+130, ct_ga2, -22.9 );
setEffAlphaKey( spep_4+110, ct_ga2, 255 );
setEffAlphaKey( spep_4+124, ct_ga2, 255 );
setEffAlphaKey( spep_4+126, ct_ga2, 170 );
setEffAlphaKey( spep_4+128, ct_ga2, 85 );
setEffAlphaKey( spep_4+130, ct_ga2, 0 );

ct_baki = entryEffectLife( spep_4+130,  10020, 20, 0x100, -1, 0, 102.4, 341.4 );  --バキ

setEffShake(  spep_4+130,  ct_baki,  20,  20);  --揺れ
setEffMoveKey( spep_4+130, ct_baki, 102.4, 341.4 , 0 );
setEffMoveKey( spep_4+132, ct_baki, 107, 311.6 , 0 );
setEffMoveKey( spep_4+134, ct_baki, 90.1, 299.7 , 0 );
setEffMoveKey( spep_4+136, ct_baki, 81.8, 306.1 , 0 );
setEffMoveKey( spep_4+138, ct_baki, 92.3, 306.1 , 0 );
setEffMoveKey( spep_4+150, ct_baki, 95.7, 318.1 , 0 );
setEffScaleKey( spep_4+130, ct_baki, 0.91, 0.91 );
setEffScaleKey( spep_4+134, ct_baki, 2.48, 2.48 );
setEffScaleKey( spep_4+148, ct_baki, 1.84, 1.84 );
setEffScaleKey( spep_4+150, ct_baki, 1.78, 1.78 );
setEffRotateKey( spep_4+130, ct_baki, 16.3 );
setEffRotateKey( spep_4+132, ct_baki, 2.9 );
setEffRotateKey( spep_4+134, ct_baki, 16.3 );
setEffRotateKey( spep_4+136, ct_baki, 24.9 );
setEffRotateKey( spep_4+138, ct_baki, 16.1 );
setEffRotateKey( spep_4+140, ct_baki, 5.4 );
setEffRotateKey( spep_4+152, ct_baki, 16.3 );
setEffRotateKey( spep_4+150, ct_baki, 16.3 );
setEffAlphaKey( spep_4+130, ct_baki, 255 );
setEffAlphaKey( spep_4+142, ct_baki, 255 );
setEffAlphaKey( spep_4+144, ct_baki, 191 );
setEffAlphaKey( spep_4+146, ct_baki, 128 );
setEffAlphaKey( spep_4+148, ct_baki, 64 );
setEffAlphaKey( spep_4+150, ct_baki, 0 );

ct_zun = entryEffectLife( spep_4+166,  10016, 20, 0x100, -1, 0, -36.7, 344 );  --ズン

setEffShake(  spep_4+166,  ct_zun,  20,  10);  --揺れ
setEffMoveKey( spep_4+166, ct_zun, -36.7, 344 , 0 );
setEffMoveKey( spep_4+184, ct_zun, -36.7, 345.1 , 0 );
setEffScaleKey( spep_4+166, ct_zun, 1.15, 1.15 );
setEffScaleKey( spep_4+168, ct_zun, 2.46, 2.46 );
setEffScaleKey( spep_4+170, ct_zun, 3.12, 3.12 );
setEffScaleKey( spep_4+172, ct_zun, 2.96, 2.96 );
setEffScaleKey( spep_4+184, ct_zun, 2.31, 2.31 );
setEffScaleKey( spep_4+186, ct_zun, 2.24, 2.24 );
setEffRotateKey( spep_4+166, ct_zun, -6.7 );
setEffRotateKey( spep_4+168, ct_zun, -20 );
setEffRotateKey( spep_4+170, ct_zun, -6.7 );
setEffRotateKey( spep_4+172, ct_zun, 1.9 );
setEffRotateKey( spep_4+174, ct_zun, -6.9 );
setEffRotateKey( spep_4+176, ct_zun, -17.6 );
setEffRotateKey( spep_4+178, ct_zun, -6.7 );
setEffRotateKey( spep_4+184, ct_zun, -6.7 );
setEffAlphaKey( spep_4+166, ct_zun, 255 );
setEffAlphaKey( spep_4+178, ct_zun, 255 );
setEffAlphaKey( spep_4+180, ct_zun, 191 );
setEffAlphaKey( spep_4+182, ct_zun, 128 );
setEffAlphaKey( spep_4+184, ct_zun, 64 );
setEffAlphaKey( spep_4+186, ct_zun, 0 );

ct_ga3 = entryEffectLife( spep_4+190,  10005, 22, 0x100, -1, 0, -227, 257.7 );  --ガッ

setEffShake(  spep_4+190,  ct_ga3,  22,  10);  --揺れ
setEffMoveKey( spep_4+190, ct_ga3, -227, 257.7 , 0 );
setEffMoveKey( spep_4+192, ct_ga3, -226.9, 257.9 , 0 );
setEffMoveKey( spep_4+206, ct_ga3, -226.9, 257.7 , 0 );
setEffMoveKey( spep_4+212, ct_ga3, -226.9, 257.7 , 0 );
setEffScaleKey( spep_4+190, ct_ga3, 0.91, 0.91 );
setEffScaleKey( spep_4+192, ct_ga3, 1.95, 1.95 );
setEffScaleKey( spep_4+194, ct_ga3, 2.48, 2.48 );
setEffScaleKey( spep_4+196, ct_ga3, 2.36, 2.36 );
setEffScaleKey( spep_4+198, ct_ga3, 2.24, 2.24 );
setEffScaleKey( spep_4+200, ct_ga3, 2.12, 2.12 );
setEffScaleKey( spep_4+204, ct_ga3, 2, 2 );
setEffScaleKey( spep_4+212, ct_ga3, 1.94, 1.94 );
setEffRotateKey( spep_4+190, ct_ga3, -37.1 );
setEffRotateKey( spep_4+192, ct_ga3, -50.5 );
setEffRotateKey( spep_4+194, ct_ga3, -37.1 );
setEffRotateKey( spep_4+196, ct_ga3, -28.6 );
setEffRotateKey( spep_4+198, ct_ga3, -37.3 );
setEffRotateKey( spep_4+200, ct_ga3, -48 );
setEffRotateKey( spep_4+202, ct_ga3, -37.1 );
setEffRotateKey( spep_4+212, ct_ga3, -37.1 );
setEffAlphaKey( spep_4+190, ct_ga3, 255 );
setEffAlphaKey( spep_4+204, ct_ga3, 255 );
setEffAlphaKey( spep_4+206, ct_ga3, 191 );
setEffAlphaKey( spep_4+208, ct_ga3, 128 );
setEffAlphaKey( spep_4+210, ct_ga3, 64 );
setEffAlphaKey( spep_4+212, ct_ga3, 0 );

ct_bago = entryEffectLife( spep_4+208,  10021, 22, 0x100, -1, 0, 39.1, 210.9 );  --バゴォッ

setEffShake(  spep_4+208,  ct_bago,  22,  20);  --揺れ
setEffMoveKey( spep_4+208, ct_bago, 39.1, 210.9 , 0 );
setEffMoveKey( spep_4+210, ct_bago, 47.3, 188.7 , 0 );
setEffMoveKey( spep_4+212, ct_bago, 36.1, 177.1 , 0 );
setEffMoveKey( spep_4+214, ct_bago, 28.8, 181 , 0 );
setEffMoveKey( spep_4+216, ct_bago, 37, 182.4 , 0 );
setEffMoveKey( spep_4+218, ct_bago, 45.4, 185.2 , 0 );
setEffMoveKey( spep_4+220, ct_bago, 37, 187.1 , 0 );
setEffMoveKey( spep_4+230, ct_bago, 37.3, 188.5 , 0 );
setEffScaleKey( spep_4+208, ct_bago, 1.38, 1.38 );
setEffScaleKey( spep_4+210, ct_bago, 2.96, 2.96 );
setEffScaleKey( spep_4+212, ct_bago, 3.76, 3.76 );
setEffScaleKey( spep_4+214, ct_bago, 3.57, 3.57 );
setEffScaleKey( spep_4+216, ct_bago, 3.39, 3.39 );
setEffScaleKey( spep_4+218, ct_bago, 3.21, 3.21 );
setEffScaleKey( spep_4+220, ct_bago, 3.04, 3.04 );
setEffScaleKey( spep_4+230, ct_bago, 2.94, 2.94 );
setEffRotateKey( spep_4+208, ct_bago, 4.9 );
setEffRotateKey( spep_4+210, ct_bago, -8.5 );
setEffRotateKey( spep_4+212, ct_bago, 4.9 );
setEffRotateKey( spep_4+214, ct_bago, 13.4 );
setEffRotateKey( spep_4+216, ct_bago, 4.7 );
setEffRotateKey( spep_4+218, ct_bago, -6 );
setEffRotateKey( spep_4+220, ct_bago, 4.9 );
setEffRotateKey( spep_4+230, ct_bago, 4.9 );
setEffAlphaKey( spep_4+208, ct_bago, 255 );
setEffAlphaKey( spep_4+212, ct_bago, 255 );
setEffAlphaKey( spep_4+214, ct_bago, 191 );
setEffAlphaKey( spep_4+216, ct_bago, 128 );
setEffAlphaKey( spep_4+228, ct_bago, 64 );
setEffAlphaKey( spep_4+230, ct_bago, 0 );

kakutou_m = entryEffect(  spep_4,  SP_13,  0x100,  -1,  0,  0,  0);  --格闘真ん中 ef_04

setEffScaleKey(  spep_4,  kakutou_m,  1.0,  1.0);
setEffMoveKey(  spep_4,  kakutou_m,  0,  0);
setEffRotateKey(  spep_4,  kakutou_m,  0);
setEffAlphaKey(  spep_4,  kakutou_m,  255);
setEffScaleKey(  spep_4+250,  kakutou_m,  1.0,  1.0);
setEffMoveKey(  spep_4+250,  kakutou_m,  0,  0);
setEffRotateKey(  spep_4+250,  kakutou_m,  0);
setEffAlphaKey(  spep_4+250,  kakutou_m,  255);
setEffScaleKey(  spep_4+251,  kakutou_m,  1.0,  1.0);
setEffMoveKey(  spep_4+251,  kakutou_m,  0,  0);
setEffRotateKey(  spep_4+251,  kakutou_m,  0);
setEffAlphaKey(  spep_4+251,  kakutou_m,  0);
setEffAlphaKey(  spep_4+252,  kakutou_m,  0);
setEffScaleKey(  spep_4+260,  kakutou_m,  1.0,  1.0);
setEffMoveKey(  spep_4+260,  kakutou_m,  0,  0);
setEffRotateKey(  spep_4+260,  kakutou_m,  0);
setEffAlphaKey(  spep_4+260,  kakutou_m,  0);


kakutou_b = entryEffect(  spep_4,  SP_14,  0x80,  -1,  0,  0,  0);  --格闘一番下 ef_05

setEffScaleKey(  spep_4,  kakutou_b,  1.0,  1.0);
setEffMoveKey(  spep_4,  kakutou_b,  0,  0);
setEffRotateKey(  spep_4,  kakutou_b,  0);
setEffAlphaKey(  spep_4,  kakutou_b,  255);
setEffScaleKey(  spep_4+250,  kakutou_b,  1.0,  1.0);
setEffMoveKey(  spep_4+250,  kakutou_b,  0,  0);
setEffRotateKey(  spep_4+250,  kakutou_b,  0);
setEffAlphaKey(  spep_4+250,  kakutou_b,  255);
setEffScaleKey(  spep_4+251,  kakutou_b,  1.0,  1.0);
setEffMoveKey(  spep_4+251,  kakutou_b,  0,  0);
setEffRotateKey(  spep_4+251,  kakutou_b,  0);
setEffRotateKey(  spep_4+252,  kakutou_b,  0);
setEffAlphaKey(  spep_4+251,  kakutou_b,  0);
setEffScaleKey(  spep_4+260,  kakutou_b,  1.0,  1.0);
setEffMoveKey(  spep_4+260,  kakutou_b,  0,  0);
setEffRotateKey(  spep_4+260,  kakutou_b,  0);
setEffAlphaKey(  spep_4+260,  kakutou_b,  0);


--**敵の動き(ef_04enemy)**

setDisp( spep_4, 1, 1 );
changeAnime( spep_4, 1, 104 );  --ガード

setMoveKey( spep_4, 1, -1269.2, -352.6 , 0 );
setMoveKey( spep_4+2, 1, -848.1, -243.7 , 0 );
setMoveKey( spep_4+4, 1, -427, -134.7 , 0 );
setMoveKey( spep_4+6, 1, -5.9, -25.8 , 0 );
setMoveKey( spep_4+8, 1, 38.9, -10.5 , 0 );
setMoveKey( spep_4+10, 1, 83.7, 4.7 , 0 );
setMoveKey( spep_4+12, 1, 128.5, 20 , 0 );
--setMoveKey( spep_4+14, 1, 132.6, 21.4 , 0 );
setScaleKey( spep_4, 1, 3.02, 3.02 );
setScaleKey( spep_4+2, 1, 2.64, 2.64 );
setScaleKey( spep_4+4, 1, 2.25, 2.25 );
setScaleKey( spep_4+6, 1, 1.87, 1.87 );
setScaleKey( spep_4+8, 1, 1.8, 1.8 );
setScaleKey( spep_4+10, 1, 1.72, 1.72 );
setScaleKey( spep_4+12, 1, 1.65, 1.65 );
--setScaleKey( spep_4+14, 1, 1.65, 1.65 );
setRotateKey( spep_4, 1, 0 );
setRotateKey( spep_4+12, 1, 0 );

changeAnime( spep_4+14, 1, 101 );   --アイドリング

setMoveKey( spep_4+14, 1, 139.9, 23.2 , 0 );
setMoveKey( spep_4+16, 1, 144.1, 23.7 , 0 );
setMoveKey( spep_4+18, 1, 148.2, 24.2 , 0 );
setMoveKey( spep_4+20, 1, 152.3, 24.7 , 0 );
setMoveKey( spep_4+22, 1, 156.5, 25.2 , 0 );
setMoveKey( spep_4+24, 1, 160.6, 25.7 , 0 );
setMoveKey( spep_4+26, 1, 161.5, 26 , 0 );
setMoveKey( spep_4+28, 1, 162.4, 26.3 , 0 );
setMoveKey( spep_4+30, 1, 163.3, 26.6 , 0 );
setMoveKey( spep_4+32, 1, 164.2, 26.9 , 0 );
setMoveKey( spep_4+34, 1, 165.1, 27.3 , 0 );
setMoveKey( spep_4+36, 1, 166, 27.6 , 0 );
setMoveKey( spep_4+38, 1, 166.9, 27.9 , 0 );
setScaleKey( spep_4+14, 1, 1.71, 1.71 );
setScaleKey( spep_4+38, 1, 1.71, 1.71 );
setRotateKey( spep_4+14, 1, 5.2 );
setRotateKey( spep_4+26, 1, 5.2 );
setRotateKey( spep_4+28, 1, 5.1 );
setRotateKey( spep_4+34, 1, 5.1 );
setRotateKey( spep_4+38, 1, 5 );

changeAnime( spep_4+40, 1, 117 );   --構え

setShakeChara(  spep_4+40,  1,  18,  10);  --揺れ
setMoveKey( spep_4+40, 1, 177, 18.9 , 0 );
setMoveKey( spep_4+42, 1, 175, 13.9 , 0 );
setMoveKey( spep_4+44, 1, 178.1, 19.2 , 0 );
setMoveKey( spep_4+46, 1, 173.5, 16.8 , 0 );
setMoveKey( spep_4+48, 1, 179.2, 19.6 , 0 );
setMoveKey( spep_4+50, 1, 177.2, 14.6 , 0 );
setMoveKey( spep_4+52, 1, 180.3, 20 , 0 );
setMoveKey( spep_4+54, 1, 175.7, 17.5 , 0 );
setMoveKey( spep_4+56, 1, 181.5, 20.4 , 0 );
setMoveKey( spep_4+58, 1, 179.4, 12.8 , 0 );
setScaleKey( spep_4+40, 1, 1.69, 1.69 );
setScaleKey( spep_4+58, 1, 1.69, 1.69 );
setRotateKey( spep_4+40, 1, 0 );
setRotateKey( spep_4+58, 1, 0 );

changeAnime( spep_4+112, 1, 108 );  --くの字

setShakeChara(  spep_4+112,  1,  132,  20);  --揺れ
setMoveKey( spep_4+112, 1, -2.1, 31 , 0 );
setMoveKey( spep_4+114, 1, -10.7, 26.3 , 0 );
setMoveKey( spep_4+116, 1, 4.3, 30.1 , 0 );
setMoveKey( spep_4+118, 1, 3.4, 19.2 , 0 );
setMoveKey( spep_4+120, 1, 10.5, 32.3 , 0 );
setMoveKey( spep_4+122, 1, 13.7, 33.5 , 0 );
setMoveKey( spep_4+124, 1, 16.8, 34.6 , 0 );
setMoveKey( spep_4+126, 1, 19.9, 35.7 , 0 );
setMoveKey( spep_4+128, 1, 19.6, 40.1 , 0 );
setMoveKey( spep_4+130, 1, 29, 42.1 , 0 );
setMoveKey( spep_4+132, 1, 38.9, 39.1 , 0 );
setMoveKey( spep_4+134, 1, 56.1, 59.9 , 0 );
setMoveKey( spep_4+136, 1, 46.9, 58.7 , 0 );
setMoveKey( spep_4+138, 1, 61.7, 65.4 , 0 );
setMoveKey( spep_4+140, 1, 60.5, 60.2 , 0 );
setMoveKey( spep_4+142, 1, 67.3, 71 , 0 );
setMoveKey( spep_4+144, 1, 62.1, 69.7 , 0 );
setMoveKey( spep_4+146, 1, 72.9, 76.5 , 0 );
setMoveKey( spep_4+148, 1, 75.7, 79.2 , 0 );
setMoveKey( spep_4+150, 1, 78.4, 82 , 0 );
setMoveKey( spep_4+152, 1, 81.2, 84.8 , 0 );
setMoveKey( spep_4+154, 1, 84, 87.5 , 0 );
setMoveKey( spep_4+156, 1, 86.8, 90.3 , 0 );
setMoveKey( spep_4+158, 1, 89.6, 93.1 , 0 );
setMoveKey( spep_4+160, 1, 92.4, 95.8 , 0 );
setMoveKey( spep_4+162, 1, 95.2, 98.6 , 0 );
setScaleKey( spep_4+112, 1, 1.89, 1.89 );
setScaleKey( spep_4+114, 1, 1.77, 1.77 );
setScaleKey( spep_4+116, 1, 1.7, 1.7 );
setScaleKey( spep_4+126, 1, 1.7, 1.7 );
setScaleKey( spep_4+128, 1, 2.04, 2.04 );
setScaleKey( spep_4+130, 1, 1.89, 1.89 );
setScaleKey( spep_4+132, 1, 1.77, 1.77 );
setScaleKey( spep_4+134, 1, 1.7, 1.7 );
setScaleKey( spep_4+158, 1, 1.7, 1.7 );
setScaleKey( spep_4+164, 1, 1.7, 1.7 );
setRotateKey( spep_4+112, 1, -15.3 );
setRotateKey( spep_4+158, 1, -15.3 );
setRotateKey( spep_4+164, 1, -15.3 );
setRotateKey( spep_4+165, 1, -15.3 );

changeAnime( spep_4+166, 1, 106 );  --仰け反り

setMoveKey( spep_4+166, 1, -6.3, 122.9 , 0 );
setMoveKey( spep_4+168, 1, -4.2, 127.6 , 0 );
setMoveKey( spep_4+170, 1, -14, 117.4 , 0 );
setMoveKey( spep_4+172, 1, -7.7, 116.4 , 0 );
setMoveKey( spep_4+174, 1, -13.4, 104.6 , 0 );
setMoveKey( spep_4+176, 1, -11.2, 111.4 , 0 );
setMoveKey( spep_4+178, 1, -21.1, 106.3 , 0 );
setMoveKey( spep_4+180, 1, -15, 109.1 , 0 );
setMoveKey( spep_4+182, 1, -16.8, 107.9 , 0 );
setMoveKey( spep_4+184, 1, -18.6, 106.7 , 0 );
setMoveKey( spep_4+186, 1, -20.5, 105.6 , 0 );
setMoveKey( spep_4+188, 1, -22.4, 104.4 , 0 );
setMoveKey( spep_4+190, 1, -24.2, 103.2 , 0 );
setMoveKey( spep_4+192, 1, -52.4, 5.2 , 0 );
setMoveKey( spep_4+194, 1, -30.3, -25.3 , 0 );
setMoveKey( spep_4+196, 1, -45.6, -79.7 , 0 );
setMoveKey( spep_4+198, 1, -36.3, -115.9 , 0 );
setMoveKey( spep_4+200, 1, -42.4, -159.7 , 0 );
setMoveKey( spep_4+202, 1, -43.4, -187.8 , 0 );
setMoveKey( spep_4+204, 1, -43.7, -206.9 , 0 );
setMoveKey( spep_4+207, 1, -43.5, -216.7 , 0 );
--setMoveKey( spep_4+202, 1, -43.5, -216.7 , 0 );
--setMoveKey( spep_4+208, 1, -43.5, -216.7 , 0 );
setScaleKey( spep_4+166, 1, 1.99, 1.99 );
setScaleKey( spep_4+168, 1, 1.9, 1.9 );
setScaleKey( spep_4+170, 1, 1.83, 1.83 );
setScaleKey( spep_4+172, 1, 1.77, 1.77 );
setScaleKey( spep_4+174, 1, 1.73, 1.73 );
setScaleKey( spep_4+190, 1, 1.73, 1.73 );
setScaleKey( spep_4+192, 1, 1.99, 1.99 );
setScaleKey( spep_4+194, 1, 1.9, 1.9 );
setScaleKey( spep_4+196, 1, 1.83, 1.83 );
setScaleKey( spep_4+198, 1, 1.77, 1.77 );
setScaleKey( spep_4+200, 1, 1.73, 1.73 );
setScaleKey( spep_4+206, 1, 1.73, 1.73 );
setRotateKey( spep_4+166, 1, -79.3 );
setRotateKey( spep_4+190, 1, -80 );
setRotateKey( spep_4+192, 1, -102.6 );
setRotateKey( spep_4+194, 1, -117.6 );
setRotateKey( spep_4+196, 1, -118.9 );
setRotateKey( spep_4+198, 1, -120 );
setRotateKey( spep_4+200, 1, -120.9 );
setRotateKey( spep_4+202, 1, -121.6 );
setRotateKey( spep_4+204, 1, -122.1 );
setRotateKey( spep_4+207, 1, -122.1 );


changeAnime( spep_4+208, 1, 108 );   --くの字

setMoveKey( spep_4+208, 1, 81.5, -73.2 , 0 );
setMoveKey( spep_4+210, 1, 83.6, -62.7 , 0 );
setMoveKey( spep_4+212, 1, 71.3, -67.1 , 0 );
setMoveKey( spep_4+214, 1, 84.6, -62 , 0 );
setMoveKey( spep_4+216, 1, 83.7, -67.7 , 0 );
setMoveKey( spep_4+218, 1, 96.2, -53.2 , 0 );
setMoveKey( spep_4+220, 1, 97.6, -50.1 , 0 );
setMoveKey( spep_4+222, 1, 115.9, -38.1 , 0 );
setMoveKey( spep_4+224, 1, 123.2, -41.6 , 0 );
setMoveKey( spep_4+226, 1, 139.3, -20.2 , 0 );
setMoveKey( spep_4+228, 1, 429.6, 182.7 , 0 );
setMoveKey( spep_4+230, 1, 705.9, 372.9 , 0 );
setMoveKey( spep_4+232, 1, 944.5, 538.5 , 0 );
setMoveKey( spep_4+234, 1, 1153.2, 683.4 , 0 );
setMoveKey( spep_4+236, 1, 1332.2, 807.5 , 0 );
setMoveKey( spep_4+238, 1, 1481.3, 911 , 0 );
setMoveKey( spep_4+240, 1, 1600.5, 993.8 , 0 );
setMoveKey( spep_4+242, 1, 1690, 1055.9 , 0 );
setMoveKey( spep_4+244, 1, 1749.7, 1097.3 , 0 );

setScaleKey( spep_4+208, 1, 2.3, 2.3 );
setScaleKey( spep_4+210, 1, 2.09, 2.09 );
setScaleKey( spep_4+212, 1, 1.92, 1.92 );
setScaleKey( spep_4+214, 1, 1.79, 1.79 );
setScaleKey( spep_4+216, 1, 1.7, 1.7 );
setScaleKey( spep_4+244, 1, 1.7, 1.7 );

setRotateKey( spep_4+208, 1, -33.8 );
setRotateKey( spep_4+200, 1, -33.6 );
setRotateKey( spep_4+212, 1, -33.5 );
setRotateKey( spep_4+214, 1, -33.4 );
setRotateKey( spep_4+216, 1, -33.2 );
setRotateKey( spep_4+218, 1, -33);
setRotateKey( spep_4+220, 1, -32.8);
setRotateKey( spep_4+222, 1, -32.5);
setRotateKey( spep_4+224, 1, -32.3);
setRotateKey( spep_4+226, 1, -32 );
setRotateKey( spep_4+244, 1, -32 );


setDisp(  spep_4+246,  1,  0);  --敵非表示

kakutou_f = entryEffect(  spep_4,  SP_12,  0x100,  -1,  0,  0,  0);  --格闘前 ef_03

setEffScaleKey(  spep_4,  kakutou_f,  1.0,  1.0);
setEffMoveKey(  spep_4,  kakutou_f,  0,  0);
setEffRotateKey(  spep_4,  kakutou_f,  0);
setEffAlphaKey(  spep_4,  kakutou_f,  255);
setEffScaleKey(  spep_4+250,  kakutou_f,  1.0,  1.0);
setEffMoveKey(  spep_4+250,  kakutou_f,  0,  0);
setEffRotateKey(  spep_4+250,  kakutou_f,  0);
setEffAlphaKey(  spep_4+250,  kakutou_f,  255);
setEffScaleKey(  spep_4+251,  kakutou_f,  1.0,  1.0);
setEffMoveKey(  spep_4+251,  kakutou_f,  0,  0);
setEffRotateKey(  spep_4+251,  kakutou_f,  0);
setEffAlphaKey(  spep_4+251,  kakutou_f,  0);
setEffAlphaKey(  spep_4+252,  kakutou_f,  0);
setEffScaleKey(  spep_4+260,  kakutou_f,  1.0,  1.0);
setEffMoveKey(  spep_4+260,  kakutou_f,  0,  0);
setEffRotateKey(  spep_4+260,  kakutou_f,  0);
setEffAlphaKey(  spep_4+260,  kakutou_f,  0);

--**敵の動き(ef_03enemy)**
changeAnime( spep_4+60, 1, 111 );  --パンチ構え

pauseChara(  spep_4+60,  10);  --止める
setMoveKey( spep_4+60, 1, 153.6, 24.1 , 0 );
setMoveKey( spep_4+62, 1, 142.5, 21.1 , 0 );
setMoveKey( spep_4+64, 1, 131.3, 18.2 , 0 );
setMoveKey( spep_4+66, 1, 120.2, 15.2 , 0 );
setMoveKey( spep_4+68, 1, 109, 12.3 , 0 );
setScaleKey( spep_4+60, 1, 1.59, 1.59 );
setScaleKey( spep_4+68, 1, 1.59, 1.59 );
setRotateKey( spep_4+60, 1, -12.2 );
setRotateKey( spep_4+68, 1, -12.2 );

setShakeChara(  spep_4+70,  1,  42,  10);  --揺れ
setMoveKey( spep_4+70, 1, 37.3, -4.4 , 0 );  --パンチ
setMoveKey( spep_4+72, 1, 35.5, -4.9 , 0 );
setMoveKey( spep_4+74, 1, 33.7, -5.4 , 0 );
setMoveKey( spep_4+76, 1, 32, -5.9 , 0 );
setMoveKey( spep_4+78, 1, 30.2, -6.4 , 0 );
setMoveKey( spep_4+80, 1, 28.4, -6.8 , 0 );
setMoveKey( spep_4+82, 1, 26.6, -7.3 , 0 );
setMoveKey( spep_4+84, 1, 24.8, -7.8 , 0 );
setMoveKey( spep_4+86, 1, 23.1, -8.3 , 0 );
setMoveKey( spep_4+88, 1, 21.3, -8.8 , 0 );
setMoveKey( spep_4+90, 1, 19.5, -9.3 , 0 );
setMoveKey( spep_4+92, 1, 10.6, -11.7 , 0 );
--setMoveKey( spep_4+92, 1, 17.7, -9.8 , 0 );
--setMoveKey( spep_4+94, 1, 15.9, -10.3 , 0 );
--setMoveKey( spep_4+96, 1, 14.1, -10.7 , 0 );
--setMoveKey( spep_4+98, 1, 12.4, -11.2 , 0 );
--setMoveKey( spep_4+100, 1, 10.6, -11.7 , 0 );
--setMoveKey( spep_4+102, 1, 8.8, -12.2 , 0 );
setScaleKey( spep_4+70, 1, 1.68, 1.68 );
setScaleKey( spep_4+96, 1, 1.68, 1.68 );
--setScaleKey( spep_4+92, 1, 1.68, 1.68 );
setRotateKey( spep_4+70, 1, -12.2 );
--setRotateKey( spep_4+88, 1, -12.2 );
setRotateKey( spep_4+96, 1, -12.2 );

changeAnime( spep_4+97, 1, 106 );  --仰け反り

setShakeChara(  spep_4+97,  1,  16,  20);  --揺れ
setMoveKey( spep_4+97, 1, -41.7, -44.2 , 0 );
setMoveKey( spep_4+108, 1, -33.4, -23.8 , 0 );
setMoveKey( spep_4+110, 1, -42.1, -34.4 , 0 );
setMoveKey( spep_4+112, 1, -28.1, -28.9 , 0 );
setMoveKey( spep_4+114, 1, -34.1, -49.7 , 0 );
setMoveKey( spep_4+116, 1, -32.1, -38.5 , 0 );
setMoveKey( spep_4+118, 1, -34.1, -43.2 , 0 );
setMoveKey( spep_4+120, 1, -36.1, -48 , 0 );
setMoveKey( spep_4+122, 1, -40.1, -37.3 , 0 );
setScaleKey( spep_4+97, 1, 2.6, 2.6 );
setScaleKey( spep_4+108, 1, 2.21, 2.21 );
setScaleKey( spep_4+110, 1, 1.92, 1.92 );
--setScaleKey( spep_4+116, 1, 1.73, 1.73 );
--setScaleKey( spep_4+118, 1, 1.73, 1.73 );
--setScaleKey( spep_4+120, 1, 1.73, 1.73 );
--setScaleKey( spep_4+120, 1, 2.08, 2.08 );
--setScaleKey( spep_4+122, 1, 2.08, 2.08 );
setRotateKey( spep_4+97, 1, -117.8 );
setRotateKey( spep_4+110, 1, -117 );
setRotateKey( spep_4+111, 1, -117 );
--setRotateKey( spep_4+118, 1, -117 );
--setRotateKey( spep_4+120, 1, -107.9 );
--setRotateKey( spep_4+122, 1, -107.9 );


--**SE**
--playSe(  spep_4+64,  43);  --瞬間移動
playSe(  spep_4+62,  1003);  --空振り
--playSe(  spep_4+86,  43);  --瞬間移動
playSe(  spep_4+96,  1010);  --蹴り
playSe(  spep_4+111,  1000);
playSe(  spep_4+130,  1001);
playSe(  spep_4+165,  1009);
playSe(  spep_4+190,  1006);
playSe(  spep_4+207,  1010);  --蹴り
playSe(  spep_4+230,  43);  --瞬間移動

entryFadeBg( spep_4, 0, 260, 0, 0, 0, 0, 210);          -- 黒　背景

entryFade( spep_4+243, 4, 4, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- セル構え(340F)
------------------------------------------------------
spep_5 = spep_4+250;

--**集中線**
shuchusen5 = entryEffectLife( spep_5, 906, 340, 0x100,  -1, 0,  0,  0);

setEffMoveKey(  spep_5,  shuchusen5,  0,  0);
setEffScaleKey(  spep_5,  shuchusen5,  1.39,  1.75);
setEffRotateKey(  spep_5,  shuchusen5,  0);
setEffAlphaKey(  spep_5,  shuchusen5,  255);
setEffMoveKey(  spep_5+340,  shuchusen5,  0,  0);
setEffScaleKey(  spep_5+340,  shuchusen5,  1.39,  1.75);
setEffRotateKey(  spep_5+340,  shuchusen5,  0);
setEffAlphaKey(  spep_5+340,  shuchusen5,  255);

--**書き文字**
ct_zuzu = entryEffectLife( spep_5+108,  10013, 26, 0x100, -1, 0, 20.1, 249.8 );  --ズズズンッ

setEffShake(  spep_5+108,  ct_zuzu,  26,  20);  --揺れ
setEffMoveKey( spep_5+108, ct_zuzu, 20.1, 249.8 , 0 );
setEffMoveKey( spep_5+110, ct_zuzu, 25.9, 316.1 , 0 );
setEffMoveKey( spep_5+134, ct_zuzu, 41.1, 364.5 , 0 );
setEffScaleKey( spep_5+108, ct_zuzu, 1.11, 1.11 );
setEffScaleKey( spep_5+110, ct_zuzu, 2.28, 2.28 );
setEffScaleKey( spep_5+112, ct_zuzu, 2.92, 2.92 );
setEffScaleKey( spep_5+134, ct_zuzu, 2.92, 2.92 );
setEffRotateKey( spep_5+108, ct_zuzu, -5 );
setEffRotateKey( spep_5+134, ct_zuzu, -5 );
setEffAlphaKey( spep_5+108, ct_zuzu, 255 );
setEffAlphaKey( spep_5+122, ct_zuzu, 235 );
setEffAlphaKey( spep_5+124, ct_zuzu, 163 );
setEffAlphaKey( spep_5+126, ct_zuzu, 105 );
setEffAlphaKey( spep_5+128, ct_zuzu, 59 );
setEffAlphaKey( spep_5+130, ct_zuzu, 26 );
setEffAlphaKey( spep_5+132, ct_zuzu, 7 );
setEffAlphaKey( spep_5+134, ct_zuzu, 0 );

kamae = entryEffect(  spep_5,  SP_15,  0x80,  -1,  0,  0,  0);  --構え

setEffScaleKey(  spep_5,  kamae,  1.0,  1.0);
setEffMoveKey(  spep_5,  kamae,  0,  0);
setEffRotateKey(  spep_5,  kamae,  0);
setEffAlphaKey(  spep_5,  kamae,  255);
setEffScaleKey(  spep_5+340,  kamae,  1.0,  1.0);
setEffMoveKey(  spep_5+340,  kamae,  0,  0);
setEffRotateKey(  spep_5+340,  kamae,  0);
setEffAlphaKey(  spep_5+340,  kamae,  255);

--**カードカットイン**
--speff = entryEffect(  spep_5+135,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  spep_5+135,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

--**書き文字**
ctgogo = entryEffectLife( spep_5+148, 190006, 71, 0x100, -1, 0, 0, 510);    -- ゴゴゴゴ

setEffScaleKey(  spep_5+148,  ctgogo,  -0.7,  0.7);
setEffMoveKey(  spep_5+148,  ctgogo,  0,  530);
setEffRotateKey(  spep_5+148,  ctgogo,  0);
setEffScaleKey(  spep_5+219,  ctgogo,  -0.7,  0.7);
setEffMoveKey(  spep_5+219,  ctgogo,  0,  530);
setEffRotateKey(  spep_5+219,  ctgogo,  0);

--**SE**
playSe(  spep_5,  SE_01);  --気溜め
playSe(  spep_5+50,  1037);  --気溜め
playSe(  spep_5+148,  SE_04);  --カットイン
SE0=playSe(  spep_5+108,  1044);  --ガラガラ
playSe(  spep_5+250,  1035);  --気を放つ音

entryFade( spep_5+108, 0, 1, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_5+220, 0, 1, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_5+248, 1, 1, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- セルナビ(80F)
------------------------------------------------------
spep_6 = spep_5+336;

--**集中線**
shuchusen6 = entryEffectLife( spep_6, 906, 80, 0x100,  -1, 0,  0,  0);

setEffMoveKey(  spep_6,  shuchusen6,  0,  0);
setEffScaleKey(  spep_6,  shuchusen6,  1.39,  1.75);
setEffRotateKey(  spep_6,  shuchusen6,  0);
setEffAlphaKey(  spep_6,  shuchusen6,  255);
setEffMoveKey(  spep_6+80,  shuchusen6,  0,  0);
setEffScaleKey(  spep_6+80,  shuchusen6,  1.39,  1.75);
setEffRotateKey(  spep_6+80,  shuchusen6,  0);
setEffAlphaKey(  spep_6+80,  shuchusen6,  255);

--**流線**
ryu6 = entryEffectLife(  spep_6,  920,  80,  0x80,  -1,  0,  0,  0);  --流線横

setEffScaleKey(  spep_6,  ryu6,  2.45,  1.54);
setEffMoveKey(  spep_6,  ryu6,  0,  0);
setEffRotateKey(  spep_6,  ryu6,  -6);
setEffAlphaKey(  spep_6,  ryu6,  255);
setEffScaleKey(  spep_6+80,  ryu6,  2.45,  1.54);
setEffMoveKey(  spep_6+80,  ryu6,  0,  0);
setEffRotateKey(  spep_6+80,  ryu6,  -6);
setEffAlphaKey(  spep_6+80,  ryu6,  255);

nabi = entryEffect(  spep_6,  SP_17,  0x80,  -1,  0,  0,  0);  --ナビ

setEffScaleKey(  spep_6,  nabi,  1.0,  1.0);
setEffMoveKey(  spep_6,  nabi,  0,  0);
setEffRotateKey(  spep_6,  nabi,  0);
setEffAlphaKey(  spep_6,  nabi,  255);
setEffScaleKey(  spep_6+80,  nabi,  1.0,  1.0);
setEffMoveKey(  spep_6+80,  nabi,  0,  0);
setEffRotateKey(  spep_6+80,  nabi,  0);
setEffAlphaKey(  spep_6+80,  nabi,  255);

--**SE**
playSe(  spep_6,  1037);  --気溜め
stopSe(  spep_6+72,  SE0,  6);  --SE止め

entryFadeBg( spep_6, 0, 106, 0, 0, 0, 0, 255);          -- 黒　背景

entryFade( spep_6+72, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- セル放つ(60F)
------------------------------------------------------
spep_7 = spep_6+80;

--**集中線**
shuchusen7 = entryEffectLife( spep_7, 906, 60, 0x100,  -1, 0,  0,  0);

setEffMoveKey(  spep_7,  shuchusen7,  0,  0);
setEffScaleKey(  spep_7,  shuchusen7,  1.39,  1.75);
setEffRotateKey(  spep_7,  shuchusen7,  0);
setEffAlphaKey(  spep_7,  shuchusen7,  255);
setEffMoveKey(  spep_7+60,  shuchusen7,  0,  0);
setEffScaleKey(  spep_7+60,  shuchusen7,  1.39,  1.75);
setEffRotateKey(  spep_7+60,  shuchusen7,  0);
setEffAlphaKey(  spep_7+60,  shuchusen7,  255);

--**書き文字**
ct_zuo = entryEffectLife( spep_7+3,  10012, 57, 0x100, -1, 0, -202.3, 222.1 );  --ズオンッ

setEffShake(  spep_7+3,  ct_zuo,  76,  20);  --揺れ
setEffMoveKey( spep_7+3, ct_zuo, -202.3, 222.1 , 0 );
setEffMoveKey( spep_7+5, ct_zuo, -175.8, 259.8 , 0 );
setEffMoveKey( spep_7+7, ct_zuo, -167.8, 299.1 , 0 );
setEffMoveKey( spep_7+9, ct_zuo, -128.1, 335.7 , 0 );
setEffMoveKey( spep_7+60, ct_zuo, -120.6, 351 , 0 );
setEffScaleKey( spep_7+3, ct_zuo, 0.34, 0.34 );
setEffScaleKey( spep_7+5, ct_zuo, 1.13, 1.13 );
setEffScaleKey( spep_7+7, ct_zuo, 1.94, 1.94 );
setEffScaleKey( spep_7+9, ct_zuo, 2.73, 2.73 );
setEffScaleKey( spep_7+60, ct_zuo, 2.73, 2.73 );
setEffRotateKey( spep_7+3, ct_zuo, -12.8 );
setEffRotateKey( spep_7+60, ct_zuo, -12.8 );
setEffAlphaKey( spep_7+3, ct_zuo, 255 );
setEffAlphaKey( spep_7+60, ct_zuo, 255 );

--**流線**
ryu7 = entryEffectLife(  spep_7,  921,  60,  0x80,  -1,  0,  0,  0);  --斜め奥

setEffScaleKey(  spep_7,  ryu7,  1.8,  1.25);
setEffMoveKey(  spep_7,  ryu7,  0,  0);
setEffRotateKey(  spep_7,  ryu7,  -50);
setEffAlphaKey(  spep_7,  ryu7,  255);
setEffScaleKey(  spep_7+60,  ryu7,  1.8,  1.25);
setEffMoveKey(  spep_7+60,  ryu7,  0,  0);
setEffRotateKey(  spep_7+60,  ryu7,  -50);
setEffAlphaKey(  spep_7+60,  ryu7,  255);

hanatsu = entryEffect(  spep_7,  SP_16,  0x80,  -1,  0,  0,  0);  --放つ

setEffScaleKey(  spep_7,  hanatsu,  1.0,  1.0);
setEffMoveKey(  spep_7,  hanatsu,  0,  0);
setEffRotateKey(  spep_7,  hanatsu,  0);
setEffAlphaKey(  spep_7,  hanatsu,  255);
setEffScaleKey(  spep_7+60,  hanatsu,  1.0,  1.0);
setEffMoveKey(  spep_7+60,  hanatsu,  0,  0);
setEffRotateKey(  spep_7+60,  hanatsu,  0);
setEffAlphaKey(  spep_7+60,  hanatsu,  255);

--SE
playSe(  spep_7,  SE_06);

entryFadeBg( spep_7, 0, 60, 0, 0, 0, 0, 255);          -- 黒　背景

entryFade( spep_7+54, 3, 4, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 被弾(60F)
------------------------------------------------------
spep_8 = spep_7+60;

shuchusen8 = entryEffectLife( spep_8, 906, 80, 0x100,  -1, 0,  0,  0);

setEffMoveKey(  spep_8,  shuchusen8,  0,  0);
setEffScaleKey(  spep_8,  shuchusen8,  1.35,  1.7);
setEffRotateKey(  spep_8,  shuchusen8,  0);
setEffAlphaKey(  spep_8,  shuchusen8,  255);
setEffMoveKey(  spep_8+60,  shuchusen8,  0,  0);
setEffScaleKey(  spep_8+60,  shuchusen8,  1.35,  1.7);
setEffRotateKey(  spep_8+60,  shuchusen8,  0);
setEffAlphaKey(  spep_8+60,  shuchusen8,  255);

ryu8 = entryEffectLife(  spep_8,  921,  60,  0x80,  -1,  0,  0,  0);  --斜め奥

setEffScaleKey(  spep_8,  ryu8,  1.78,  1.3);
setEffScaleKey(  spep_8+60,  ryu8,  1.78,  1.3);
setEffMoveKey(  spep_8,  ryu8,  0,  0);
setEffMoveKey(  spep_8+60,  ryu8,  0,  0);
setEffRotateKey(  spep_8,  ryu8,  -56);
setEffRotateKey(  spep_8+60,  ryu8,  -56);
setEffAlphaKey(  spep_8,  ryu8,  255);
setEffAlphaKey(  spep_8+60,  ryu8,  255);

hidan = entryEffect(  spep_8,  SP_09,  0x100,  -1,  0,  0,  0);  --放つ

setEffShake(  spep_8,  hidan,  60,  20);  --揺れ
setEffScaleKey(  spep_8,  hidan,  1.0,  1.0);
setEffScaleKey(  spep_8+68,  hidan,  1.0,  1.0);
setEffMoveKey(  spep_8,  hidan,  0,  0);
setEffMoveKey(  spep_8+68,  hidan,  0,  0);
setEffRotateKey(  spep_8,  hidan,  0);
setEffRotateKey(  spep_8+68,  hidan,  0);
setEffAlphaKey(  spep_8,  hidan,  255);
setEffAlphaKey(  spep_8+58,  hidan,  255);
setEffAlphaKey(  spep_8+59,  hidan,  0);
setEffAlphaKey(  spep_8+60,  hidan,  0);


--書き文字
ct_zudo = entryEffectLife( spep_8,  10014, 60, 0x100, -1, 0, -131.2, 368.7 ); --ズドド

setEffShake(  spep_8,  ct_zudo,  78,  20);  --揺れ
setEffMoveKey( spep_8, ct_zudo, -131.2, 368.7 , 0 );
setEffMoveKey( spep_8+60, ct_zudo, -129.1, 368.7 , 0 );
setEffScaleKey( spep_8, ct_zudo, 2.0, 2.0 );
setEffScaleKey( spep_8+60, ct_zudo, 2.0, 2.0 );
setEffRotateKey( spep_8, ct_zudo, -50 );
setEffRotateKey( spep_8+60, ct_zudo, -50 );
setEffAlphaKey( spep_8, ct_zudo, 255 );
setEffAlphaKey( spep_8+60, ct_zudo, 255 );

--敵
setDisp(  spep_8,  1,  1);  --敵表示
changeAnime(  spep_8,  1,  108);  --くの字

setShakeChara(  spep_8,  1,  40,  20);  --揺れ
setMoveKey(  spep_8,  1,  300,  500,  0);
setMoveKey(  spep_8+40,  1,  0,  0,  0);
setScaleKey(  spep_8,  1,  0.3,  0.3);
setScaleKey(  spep_8+40,  1,  1.5,  1.5);
setRotateKey(  spep_8,  1,  -13);
setRotateKey(  spep_8+40,  1,  -13);

setDisp(  spep_8+42,  1,  0);  --非表示

--SE
playSe(  spep_8,  SE_07);

entryFadeBg( spep_8, 0, 80, 0, 0, 0, 0, 255);          -- 黒　背景

entryFade( spep_8+53, 6, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- ギャン(60F)
------------------------------------------------------
spep_9 = spep_8+60;

gyan = entryEffect(  spep_9,  190000,  0x80,  -1,  0,  0, 0);  --ギャン
setEffScaleKey(  spep_9,  gyan,  1.0,  1.0);
setEffScaleKey(  spep_9+60,  gyan,  1.0,  1.0);
setEffAlphaKey(  spep_9,  gyan,  255);
setEffAlphaKey(  spep_9+60,  gyan,  255);

-- 書き文字エントリー --
ctgyan = entryEffectLife( spep_9, 10006, 60, 0x100, -1, 0, 0, 400);    -- ギャン

setEffMoveKey(  spep_9,  ctgyan,  0,  400);
setEffMoveKey(  spep_9+60,  ctgyan,  0,  400);
setEffScaleKey( spep_9, ctgyan, 3.0, 3.0);
setEffScaleKey( spep_9+60, ctgyan, 4.0, 4.0);
setEffRotateKey(  spep_9,  ctgyan,  0);
setEffRotateKey(  spep_9+60,  ctgyan,  0);
setEffAlphaKey( spep_9, ctgyan, 255);
setEffAlphaKey( spep_9+60, ctgyan, 0);
setEffShake( spep_9, ctgyan, 60, 10);

playSe(  spep_9,  SE_09);

entryFade(  spep_9+50,  6,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 爆発(140F)
------------------------------------------------------
spep_10 = spep_9+60;

bakuhatsu = entryEffect(  spep_10,  1910,  0x100,  -1,  0,  0,  0);  --爆発
setEffScaleKey(  spep_10,  bakuhatsu,  -1.0,  1.0);  
setEffScaleKey(  spep_10+140,  bakuhatsu,  -1.0,  1.0);
setEffMoveKey(  spep_10,  bakuhatsu,  0,  0);
setEffMoveKey(  spep_10+140,  bakuhatsu,  0,  0);
setEffRotateKey(  spep_10,  bakuhatsu,  0);
setEffRotateKey(  spep_10+140,  bakuhatsu,  0);
setEffAlphaKey(  spep_10,  bakuhatsu,  255);
setEffAlphaKey(  spep_10+140,  bakuhatsu,  255);

--SE
playSe(  spep_10,  SE_10);  --爆発音

-- ダメージ表示
dealDamage(spep_10+10);
entryFade( spep_10+110, 9,  10, 1, fcolor_r, fcolor_g, fcolor_b, 255);             -- black fade
endPhase(spep_10+120);

end
