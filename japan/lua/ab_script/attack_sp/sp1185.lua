--sp1185 メタルクウラ軍団_マシーナリーレイン

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

SP_01 = 151763  --ワラワラ登場 
SP_02 = 151764  --突進
SP_03 = 151765  --ラッシュ（前）
SP_04 = 151766  --ラッシュ(後)
SP_05 = 151767  --蹴り溜め

multi_frm = 2;
kame_flag = 0x00;

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
setVisibleUI(0, 0);
setDisp( 0, 0, 0); --味方非表示
setDisp( 0, 1, 0); --敵非表示
changeAnime( 0, 0, 1); --味方立ちポーズ
setMoveKey( 0, 0, 0, -900, 0); --味方位置
setMoveKey( 1, 0, 0, -900, 0); --味方位置
setMoveKey( 2, 0, 0, -900, 0); --味方位置
setMoveKey( 3, 0, 0, -900, 0); --味方位置
setMoveKey( 4, 0, 0, -900, 0); --味方位置
setMoveKey( 5, 0, 0, -900, 0); --味方位置
setScaleKey( 0,    0,  1.5, 1.5);
setScaleKey( 0,    1,  1.5, 1.5);
setRotateKey( 0,  0, 0);

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 登場(160F)
------------------------------------------------------
spep_1 = 0;

shuchusen_1 = entryEffectLife( spep_1, 906, 148, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey(  spep_1,  shuchusen_1,  1.19,  1.23);
setEffMoveKey(  spep_1,  shuchusen_1,  0,  0);
setEffRotateKey(  spep_1,  shuchusen_1,  0);
setEffAlphaKey(  spep_1,  shuchusen_1,  255);
setEffScaleKey(  spep_1+148,  shuchusen_1,  1.19,  1.23);
setEffMoveKey(  spep_1+148,  shuchusen_1,  0,  0);
setEffRotateKey(  spep_1+148,  shuchusen_1,  0);
setEffAlphaKey(  spep_1+148,  shuchusen_1,  255);

appear_1 = entryEffect(  spep_1,  SP_01,  0x80,  -1,  0,  0,  0);  --登場

setEffScaleKey(  spep_1,  appear_1,  1.0,  1.0);
setEffMoveKey(  spep_1,  appear_1,  0,  0);
setEffRotateKey(  spep_1,  appear_1,  0);
setEffAlphaKey(  spep_1,  appear_1,  255);
setEffScaleKey(  spep_1+148,  appear_1,  1.0,  1.0);
setEffMoveKey(  spep_1+148,  appear_1,  0,  0);
setEffRotateKey(  spep_1+148,  appear_1,  0);
setEffAlphaKey(  spep_1+148,  appear_1,  255);

--SE
playSe( spep_1 + 30, 48);

--背景・ホワイトフェイド
entryFadeBg( spep_1, 0, 148, 0, 0, 0, 0, 255);          -- 黒　背景
entryFade( spep_1+129, 17, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
spep_2 = 148;

speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

shuchusen_2 = entryEffectLife( spep_2, 906, 90, 0x100,  -1, 0,  0,  0);  --集中線

setEffMoveKey(  spep_2,  shuchusen_2,  0,  0);
setEffScaleKey(  spep_2,  shuchusen_2,  1.0,  1.0);
setEffRotateKey(  spep_2,  shuchusen_2,  0);
setEffAlphaKey(  spep_2,  shuchusen_2,  255);
setEffMoveKey(  spep_2+90,  shuchusen_2,  0,  0);
setEffScaleKey(  spep_2+90,  shuchusen_2,  1.0,  1.0);
setEffRotateKey(  spep_2+90,  shuchusen_2,  0);
setEffAlphaKey(  spep_2+90,  shuchusen_2,  255);

--SE
playSe( spep_2, SE_05);

--背景・ホワイトフェイド
entryFade( spep_2+83, 5, 5, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
------------------------------------------------------
-- 突進(60F)
------------------------------------------------------
spep_3 = spep_2+87;

shuchusen_3 = entryEffectLife(  spep_3,  906,  56,  0x100,  -1,  0,  0,  0);  --集中線
setEffScaleKey(  spep_3,  shuchusen_3,  1.2,  1.6);
setEffMoveKey(  spep_3,  shuchusen_3,  0,  0);
setEffRotateKey(  spep_3, shuchusen_3,  0);
setEffAlphaKey(  spep_3,  shuchusen_3,  255);
setEffScaleKey(  spep_3+56,  shuchusen_3,  1.2,  1.6);
setEffMoveKey(  spep_3+56,  shuchusen_3,  0,  0);
setEffRotateKey(  spep_3+56,  shuchusen_3,  0);
setEffAlphaKey(  spep_3+56,  shuchusen_3,  255);

tosshin_3 = entryEffect(  spep_3,  SP_02,  0x80,  -1,  0,  0,  0);  --突進
setEffScaleKey(  spep_3,  tosshin_3,  1.0,  1.0);
setEffMoveKey(  spep_3,  tosshin_3,  0,  0);
setEffRotateKey(  spep_3,  tosshin_3,  0);
setEffAlphaKey(  spep_3,  tosshin_3,  255);
setEffScaleKey(  spep_3+56,  tosshin_3,  1.0,  1.0);
setEffMoveKey(  spep_3+56,  tosshin_3,  0,  0);
setEffRotateKey(  spep_3+56,  tosshin_3,  0);
setEffAlphaKey(  spep_3+56,  tosshin_3,  255);

--SE
--[[
playSe( spep_3, 9);
playSe( spep_3, 1004);
playSe( spep_3+1, 1002);
playSe( spep_3+2, 9);
playSe( spep_3+2, 1004);
playSe( spep_3+3, 1002);
playSe( spep_3+3, 1014);
playSe( spep_3+4, 9);
playSe( spep_3+5, 1002);
playSe( spep_3+5, 1004);
playSe( spep_3+6, 9);
playSe( spep_3+6, 1004);
playSe( spep_3+7, 1002);
playSe( spep_3+7, 1014);
playSe( spep_3+8, 9);
playSe( spep_3+8, 1004);
playSe( spep_3+9, 1002);
playSe( spep_3+9, 1014);
playSe( spep_3+10, 1002);
playSe( spep_3+10, 1014);
playSe( spep_3+11, 9);
playSe( spep_3+11, 1004);
playSe( spep_3+13, 9);
playSe( spep_3+13, 1002);
playSe( spep_3+13, 1014);
]]
playSe( spep_3, 9);
SE001 = playSe( spep_3, 1004);
stopSe(spep_3+8,SE001,2);
--playSe( spep_3, 1014);
playSe( spep_3+3, 1004);

SE002 = playSe( spep_3+7, 1002);
stopSe(spep_3+18,SE002,2);

SE003 = playSe( spep_3+13, 1014);
playSe( spep_3+11, 1004);

--背景・ホワイトフェイド
entryFadeBg( spep_3, 0, 56, 0, 0, 0, 0, 255);          -- 黒　背景

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_3+30; --エンドフェイズのフレーム数を置き換える

setMoveKey( SP_dodge-1, 0, 0,  -900, 0); --味方位置
setMoveKey( SP_dodge, 0, 0,    -900, 0); --味方位置

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


--背景・ホワイトフェイド
entryFade( spep_3+45, 8, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- ラッシュ(100F)
------------------------------------------------------
spep_4 = spep_3+56

shuchusen_4 = entryEffectLife(  spep_4,  906,  68,  0x100,  -1,  0,  0,  0);  --集中線
setEffScaleKey(  spep_4,  shuchusen_4,  1.2,  1.2);
setEffMoveKey(  spep_4,  shuchusen_4,  0,  0);
setEffRotateKey(  spep_4, shuchusen_4,  0);
setEffAlphaKey(  spep_4,  shuchusen_4,  0);
setEffScaleKey(  spep_4+11,  shuchusen_4,  1.2,  1.2);
setEffMoveKey(  spep_4+11,  shuchusen_4,  0,  0);
setEffRotateKey(  spep_4+11, shuchusen_4,  0);
setEffAlphaKey(  spep_4+11,  shuchusen_4,  0);
setEffScaleKey(  spep_4+12,  shuchusen_4,  1.2,  1.2);
setEffMoveKey(  spep_4+12,  shuchusen_4,  0,  0);
setEffRotateKey(  spep_4+12, shuchusen_4,  0);
setEffAlphaKey(  spep_4+12,  shuchusen_4,  255);
setEffScaleKey(  spep_4+68,  shuchusen_4,  1.2,  1.2);
setEffMoveKey(  spep_4+68,  shuchusen_4,  0,  0);
setEffRotateKey(  spep_4+68,  shuchusen_4,  0);
setEffAlphaKey(  spep_4+68,  shuchusen_4,  255);

rush_f_4 = entryEffect(  spep_4,  SP_03,  0x100,  -1,  0,  0,  0);  --ラッシュ（前）
setEffScaleKey(  spep_4,  rush_f_4,  1.0,  1.0);
setEffMoveKey(  spep_4,  rush_f_4,  0,  0);
setEffRotateKey(  spep_4,  rush_f_4,  0);
setEffAlphaKey(  spep_4,  rush_f_4,  255);
setEffScaleKey(  spep_4+98,  rush_f_4,  1.0,  1.0);
setEffMoveKey(  spep_4+98,  rush_f_4,  0,  0);
setEffRotateKey(  spep_4+98,  rush_f_4,  0);
setEffAlphaKey(  spep_4+98,  rush_f_4,  255);

ryu_4 = entryEffectLife(  spep_4,  920,  11,  0x80,  -1,  0,  0,  0);  --流線
setEffScaleKey(  spep_4,  ryu_4,  1.1,  1.3);
setEffMoveKey(  spep_4,  ryu_4,  0,  0);
setEffRotateKey(  spep_4,  ryu_4,  0);
setEffAlphaKey(  spep_4,  ryu_4,  255);
setEffScaleKey(  spep_4+11,  ryu_4,  1.1,  1.3);
setEffMoveKey(  spep_4+11,  ryu_4,  0,  0);
setEffRotateKey(  spep_4+11,  ryu_4,  0);
setEffAlphaKey(  spep_4+11,  ryu_4,  255);

ryu_4a = entryEffectLife(  spep_4,  921,  98,  0x80,  -1,  0,  0,  0);  --流線
setEffScaleKey(  spep_4,  ryu_4a,  2.37,  1.34);
setEffMoveKey(  spep_4,  ryu_4a,  -310,  -119);
setEffRotateKey(  spep_4,  ryu_4a,  -27.3);
setEffAlphaKey(  spep_4,  ryu_4a,  0);
setEffScaleKey(  spep_4+68,  ryu_4a,  2.37,  1.34);
setEffMoveKey(  spep_4+68,  ryu_4a,  -470,  -119);
setEffRotateKey(  spep_4+68,  ryu_4a,  -27.3);
setEffAlphaKey(  spep_4+68,  ryu_4a,  0);
setEffScaleKey(  spep_4+69,  ryu_4a,  2.37,  1.34);
setEffMoveKey(  spep_4+69,  ryu_4a,  -470,  -119);
setEffRotateKey(  spep_4+69,  ryu_4a,  -27.3);
setEffAlphaKey(  spep_4+69,  ryu_4a,  255);
setEffScaleKey(  spep_4+98,  ryu_4a,  2.37,  1.34);
setEffMoveKey(  spep_4+98,  ryu_4a,  -470,  -119);
setEffRotateKey(  spep_4+98,  ryu_4a,  -27.3);
setEffAlphaKey(  spep_4+98,  ryu_4a,  255);

rush_b_4 = entryEffect(  spep_4,  SP_04,  0x80,  -1,  0,  0,  0);  --ラッシュ（後）
setEffScaleKey(  spep_4,  rush_b_4,  1.0,  1.0);
setEffMoveKey(  spep_4,  rush_b_4,  0,  0);
setEffRotateKey(  spep_4,  rush_b_4,  0);
setEffAlphaKey(  spep_4,  rush_b_4,  255);
setEffScaleKey(  spep_4+98,  rush_b_4,  1.0,  1.0);
setEffMoveKey(  spep_4+98,  rush_b_4,  0,  0);
setEffRotateKey(  spep_4+98,  rush_b_4,  0);
setEffAlphaKey(  spep_4+98,  rush_b_4,  255);

--敵キャラの動き
setDisp( spep_4 + 0, 1, 1 );
changeAnime( spep_4 + 0, 1, 100 );
changeAnime( spep_4 + 12, 1, 108 );
changeAnime( spep_4 + 24, 1, 106 );
changeAnime( spep_4 + 29, 1, 108 );
changeAnime( spep_4 + 56, 1, 106 );
changeAnime( spep_4 + 72, 1, 108 );

setMoveKey( spep_4 + 0, 1, 0, 0 , 0 );
setMoveKey( spep_4 + 2, 1, 0.4, 4.7 , 0 );
setMoveKey( spep_4 + 4, 1, -1.5, -4.7 , 0 );
setMoveKey( spep_4 + 6, 1, 5.9, 0 , 0 );
setMoveKey( spep_4 + 8, 1, -0.7, 2.3 , 0 );
setMoveKey( spep_4 + 10, 1, 4.4, -4.7 , 0 );
setMoveKey( spep_4 + 13, 1, 2.4, 4.7 , 0 );
setMoveKey( spep_4 + 14, 1, 2.4, -4.7 , 0 );
setMoveKey( spep_4 + 16, 1, 10.4, 0.7 , 0 );
setMoveKey( spep_4 + 18, 1, -1.3, -5.4 , 0 );
setMoveKey( spep_4 + 20, 1, 10.8, 13.5 , 0 );
setMoveKey( spep_4 + 22, 1, 25.8, 13.6 , 0 );
setMoveKey( spep_4 + 24, 1, 25.9, 28 , 0 );
setMoveKey( spep_4 + 25, 1, 45.1, 28.1 , 0 );
setMoveKey( spep_4 + 28, 1, -4.4, 75.6 , 0 );
setMoveKey( spep_4 + 30, 1, -11.5, 65.2 , 0 );
setMoveKey( spep_4 + 33, 1, -15.6, 65 , 0 );
setMoveKey( spep_4 + 34, 1, 6.5, 35.7 , 0 );
setMoveKey( spep_4 + 36, 1, -4, 24.6 , 0 );
setMoveKey( spep_4 + 38, 1, 10.2, 20.8 , 0 );
setMoveKey( spep_4 + 40, 1, 10.7, 28.5 , 0 );
setMoveKey( spep_4 + 42, 1, 11.9, 19.7 , 0 );
setMoveKey( spep_4 + 44, 1, -6.7, 18.3 , 0 );
setMoveKey( spep_4 + 46, 1, 26.7, 9.6 , 0 );
setMoveKey( spep_4 + 48, 1, 13.8, 31.4 , 0 );
setMoveKey( spep_4 + 50, 1, 7, -0.6 , 0 );
setMoveKey( spep_4 + 52, 1, 5.1, 9.5 , 0 );
setMoveKey( spep_4 + 54, 1, 20.3, 10.2 , 0 );
setMoveKey( spep_4 + 56, 1, 22.5, -7.8 , 0 );
setMoveKey( spep_4 + 58, 1, 5.6, 7 , 0 );
setMoveKey( spep_4 + 61, 1, 19.9, 7.7 , 0 );
setMoveKey( spep_4 + 62, 1, -21.8, 39.2 , 0 );
setMoveKey( spep_4 + 64, 1, -34.5, 41.5 , 0 );
setMoveKey( spep_4 + 66, 1, -10.7, 49.4 , 0 );
setMoveKey( spep_4 + 68, 1, -36.2, 13.3 , 0 );
setMoveKey( spep_4 + 70, 1, -10.4, 30.9 , 0 );
setMoveKey( spep_4 + 72, 1, 5.6, 11.8 , 0 );
setMoveKey( spep_4 + 71, 1, 16.1, 11.7 , 0 );
setMoveKey( spep_4 + 82, 1, 58.6, 32.5 , 0 );
setMoveKey( spep_4 + 84, 1, 100.4, 68.1 , 0 );
setMoveKey( spep_4 + 86, 1, 134.9, 107.6 , 0 );
setMoveKey( spep_4 + 88, 1, 172.1, 128.8 , 0 );
setMoveKey( spep_4 + 90, 1, 214.6, 171.6 , 0 );
setMoveKey( spep_4 + 92, 1, 253.6, 192.3 , 0 );
setMoveKey( spep_4 + 94, 1, 290.3, 229.8 , 0 );
setMoveKey( spep_4 + 96, 1, 331.4, 263 , 0 );
setMoveKey( spep_4 + 98, 1, 372.2, 300.4 , 0 );

setScaleKey( spep_4 + 0, 1, 1.2, 1.2 );
setScaleKey( spep_4 + 71, 1, 1.2, 1.2 );
setScaleKey( spep_4 + 98, 1, 0.71, 0.71 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4 + 23, 1, 0 );
setRotateKey( spep_4 + 24, 1, -46.2 );
setRotateKey( spep_4 + 28, 1, -46.2 );
setRotateKey( spep_4 + 29, 1, 0 );
setRotateKey( spep_4 + 55, 1, 0 );
setRotateKey( spep_4 + 56, 1, -46.2 );
setRotateKey( spep_4 + 71, 1, -46.2 );
setRotateKey( spep_4 + 72, 1, 0 );
setRotateKey( spep_4 + 82, 1, 0 );


--書き文字 ガッ　１つ目--
ctrush_1_ga_5 = entryEffectLife( spep_4 + 12,  10005, 13, 0x100, -1, 0, 12, 129.9 );     -- ガッ
setEffMoveKey( spep_4 + 12, ctrush_1_ga_5, 12, 129.9 , 0 );
setEffMoveKey( spep_4 + 14, ctrush_1_ga_5, 26.8, 165.3 , 0 );
setEffMoveKey( spep_4 + 16, ctrush_1_ga_5, 32, 211.9 , 0 );
setEffMoveKey( spep_4 + 18, ctrush_1_ga_5, 38.2, 204.6 , 0 );
setEffMoveKey( spep_4 + 20, ctrush_1_ga_5, 32, 211.9 , 0 );
setEffMoveKey( spep_4 + 22, ctrush_1_ga_5, 38.2, 204.6 , 0 );
setEffMoveKey( spep_4 + 25, ctrush_1_ga_5, 32, 211.9 , 0 );
setEffScaleKey( spep_4 + 12, ctrush_1_ga_5, 0.9, 0.9 );
setEffScaleKey( spep_4 + 14, ctrush_1_ga_5, 1.29, 1.29 );
setEffScaleKey( spep_4 + 16, ctrush_1_ga_5, 1.68, 1.68 );
setEffScaleKey( spep_4 + 25, ctrush_1_ga_5, 1.68, 1.68 );
setEffRotateKey( spep_4 + 12, ctrush_1_ga_5, 15.3 );
setEffRotateKey( spep_4 + 14, ctrush_1_ga_5, 15.5 );
setEffRotateKey( spep_4 + 25, ctrush_1_ga_5, 15.5 );
setEffAlphaKey( spep_4 + 12, ctrush_1_ga_5, 255 );
setEffAlphaKey( spep_4 + 25, ctrush_1_ga_5, 255 );


--書き文字 ドガガガッ　２、３、４つ目--
ctrush_2_dogagaga_5 = entryEffectLife( spep_4 + 26,  10017, 42, 0x100, -1, 0, 54, 205.9 );     -- ドガガガッ
setEffMoveKey( spep_4 + 26, ctrush_2_dogagaga_5, 54, 205.9 , 0 );
setEffMoveKey( spep_4 + 28, ctrush_2_dogagaga_5, 79.5, 270.3 , 0 );
setEffMoveKey( spep_4 + 32, ctrush_2_dogagaga_5, 84, 265.8 , 0 );
setEffMoveKey( spep_4 + 34, ctrush_2_dogagaga_5, 79.5, 270.3 , 0 );
setEffMoveKey( spep_4 + 37, ctrush_2_dogagaga_5, 84, 265.8 , 0 );
setEffMoveKey( spep_4 + 38, ctrush_2_dogagaga_5, 18, 121.9 , 0 );
setEffMoveKey( spep_4 + 40, ctrush_2_dogagaga_5, 26.6, 134.2 , 0 );
setEffMoveKey( spep_4 + 42, ctrush_2_dogagaga_5, 37.2, 141.2 , 0 );
setEffMoveKey( spep_4 + 44, ctrush_2_dogagaga_5, 45.2, 155.3 , 0 );
setEffMoveKey( spep_4 + 46, ctrush_2_dogagaga_5, 47, 150.9 , 0 );
setEffMoveKey( spep_4 + 48, ctrush_2_dogagaga_5, 45.2, 155.3 , 0 );
setEffMoveKey( spep_4 + 50, ctrush_2_dogagaga_5, 47, 150.9 , 0 );
setEffMoveKey( spep_4 + 53, ctrush_2_dogagaga_5, 45.2, 155.3 , 0 );
setEffMoveKey( spep_4 + 54, ctrush_2_dogagaga_5, 42, 133.9 , 0 );
setEffMoveKey( spep_4 + 56, ctrush_2_dogagaga_5, 39.5, 164.3 , 0 );
setEffMoveKey( spep_4 + 58, ctrush_2_dogagaga_5, 43, 189.9 , 0 );
setEffMoveKey( spep_4 + 60, ctrush_2_dogagaga_5, 38.8, 193.3 , 0 );
setEffMoveKey( spep_4 + 62, ctrush_2_dogagaga_5, 43, 189.9 , 0 );
setEffMoveKey( spep_4 + 64, ctrush_2_dogagaga_5, 38.8, 193.3 , 0 );
setEffMoveKey( spep_4 + 66, ctrush_2_dogagaga_5, 43, 189.9 , 0 );
setEffMoveKey( spep_4 + 68, ctrush_2_dogagaga_5, 38.8, 193.3 , 0 );
setEffScaleKey( spep_4 + 26, ctrush_2_dogagaga_5, 0.86, 0.86 );
setEffScaleKey( spep_4 + 32, ctrush_2_dogagaga_5, 1.55, 1.55 );
setEffScaleKey( spep_4 + 34, ctrush_2_dogagaga_5, 2.25, 2.25 );
setEffScaleKey( spep_4 + 37, ctrush_2_dogagaga_5, 2.25, 2.25 );
setEffScaleKey( spep_4 + 38, ctrush_2_dogagaga_5, 0.7, 0.7 );
setEffScaleKey( spep_4 + 40, ctrush_2_dogagaga_5, 1.02, 1.02 );
setEffScaleKey( spep_4 + 42, ctrush_2_dogagaga_5, 1.35, 1.35 );
setEffScaleKey( spep_4 + 44, ctrush_2_dogagaga_5, 1.67, 1.67 );
setEffScaleKey( spep_4 + 53, ctrush_2_dogagaga_5, 1.67, 1.67 );
setEffScaleKey( spep_4 + 54, ctrush_2_dogagaga_5, 0.81, 0.81 );
setEffScaleKey( spep_4 + 56, ctrush_2_dogagaga_5, 1.35, 1.35 );
setEffScaleKey( spep_4 + 58, ctrush_2_dogagaga_5, 1.88, 1.88 );
setEffScaleKey( spep_4 + 68, ctrush_2_dogagaga_5, 1.88, 1.88 );
setEffRotateKey( spep_4 + 26, ctrush_2_dogagaga_5, 0 );
setEffRotateKey( spep_4 + 37, ctrush_2_dogagaga_5, 0 );
setEffRotateKey( spep_4 + 38, ctrush_2_dogagaga_5, 22.6 );
setEffRotateKey( spep_4 + 44, ctrush_2_dogagaga_5, 22.6 );
setEffRotateKey( spep_4 + 46, ctrush_2_dogagaga_5, 22.7 );
setEffRotateKey( spep_4 + 53, ctrush_2_dogagaga_5, 22.7 );
setEffRotateKey( spep_4 + 54, ctrush_2_dogagaga_5, -5.3 );
setEffRotateKey( spep_4 + 68, ctrush_2_dogagaga_5, -5.5 );
setEffAlphaKey( spep_4 + 25, ctrush_2_dogagaga_5, 255 );

--書き文字 ガッ　5つ目--
ctrush_3_ga_5 = entryEffectLife( spep_4 + 69,  10005, 22, 0x100, -1, 0, 12, 129.9 );     -- ガッ
setEffMoveKey( spep_4 + 69, ctrush_3_ga_5, 12, 129.9 , 0 );
setEffMoveKey( spep_4 + 71, ctrush_3_ga_5, 26.8, 165.3 , 0 );
setEffMoveKey( spep_4 + 73, ctrush_3_ga_5, 32, 211.9 , 0 );
setEffMoveKey( spep_4 + 75, ctrush_3_ga_5, 38.2, 204.6 , 0 );
setEffMoveKey( spep_4 + 77, ctrush_3_ga_5, 32, 211.9 , 0 );
setEffMoveKey( spep_4 + 79, ctrush_3_ga_5, 38.2, 204.6 , 0 );
setEffMoveKey( spep_4 + 81, ctrush_3_ga_5, 32, 211.9 , 0 );
setEffMoveKey( spep_4 + 83, ctrush_3_ga_5, 38.2, 204.6 , 0 );
setEffMoveKey( spep_4 + 85, ctrush_3_ga_5, 32, 211.9 , 0 );
setEffMoveKey( spep_4 + 87, ctrush_3_ga_5, 38.2, 204.6 , 0 );
setEffMoveKey( spep_4 + 89, ctrush_3_ga_5, 32, 211.9 , 0 );
setEffMoveKey( spep_4 + 91, ctrush_3_ga_5, 38.2, 204.6 , 0 );
setEffScaleKey( spep_4 + 69, ctrush_3_ga_5, 0.9, 0.9 );
setEffScaleKey( spep_4 + 71, ctrush_3_ga_5, 1.29, 1.29 );
setEffScaleKey( spep_4 + 73, ctrush_3_ga_5, 1.68, 1.68 );
setEffRotateKey( spep_4 + 69, ctrush_3_ga_5, 15.3 );
setEffRotateKey( spep_4 + 71, ctrush_3_ga_5, 15.5 );
setEffAlphaKey( spep_4 + 69, ctrush_3_ga_5, 255 );

--SE
playSe(spep_4+11,1009);
playSe(spep_4+24,1000);
playSe(spep_4+27,1001);
playSe(spep_4+28,1000);
playSe(spep_4+54,1010);
playSe(spep_4+56,1010);
playSe(spep_4+71,1009);

--背景・ホワイトフェイド
entryFadeBg( spep_4, 0, 98, 0, 0, 0, 0, 255);          -- 黒　背景
entryFade( spep_4+90, 8, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 蹴り溜め(260F)
------------------------------------------------------
spep_5 = spep_4+98;

shuchusen_5 = entryEffectLife(  spep_5,  906,  169,  0x100,  -1,  0,  0,  0);  --集中線
setEffScaleKey(  spep_5,  shuchusen_5,  1.15,  1.15);
setEffMoveKey(  spep_5,  shuchusen_5,  0,  0);
setEffRotateKey(  spep_5, shuchusen_5,  0);
setEffAlphaKey(  spep_5,  shuchusen_5,  255);
setEffScaleKey(  spep_5+169,  shuchusen_5,  1.15,  1.15);
setEffMoveKey(  spep_5+169,  shuchusen_5,  0,  0);
setEffRotateKey(  spep_5+169,  shuchusen_5,  0);
setEffAlphaKey(  spep_5+169,  shuchusen_5,  255);

ryu_5 = entryEffectLife(  spep_5,  921,  237,  0x80,  -1,  0,  0,  0);  --流線
setEffScaleKey(  spep_5,  ryu_5,  1.97,  0.86);
setEffMoveKey(  spep_5,  ryu_5,  0,  0);
setEffRotateKey(  spep_5,  ryu_5,  -90);
setEffAlphaKey(  spep_5,  ryu_5,  0);
setEffScaleKey(  spep_5+169,  ryu_5,  1.97,  0.86);
setEffMoveKey(  spep_5+169,  ryu_5,  0,  0);
setEffRotateKey(  spep_5+169,  ryu_5,  -90);
setEffAlphaKey(  spep_5+169,  ryu_5,  0);
setEffScaleKey(  spep_5+170,  ryu_5,  1.97,  0.86);
setEffMoveKey(  spep_5+170,  ryu_5,  0,  0);
setEffRotateKey(  spep_5+170,  ryu_5,  -90);
setEffAlphaKey(  spep_5+170,  ryu_5,  255);
setEffScaleKey(  spep_5+237,  ryu_5,  1.1,  0.86);
setEffMoveKey(  spep_5+237,  ryu_5,  0,  0);
setEffRotateKey(  spep_5+237,  ryu_5,  -90);
setEffAlphaKey(  spep_5+237,  ryu_5,  255);

tame_5 = entryEffectLife(  spep_5,  SP_05, 237,  0x80,  -1,  0,  0,  0);  --蹴りから溜め
setEffScaleKey(  spep_5,  tame_5,  1.0,  1.0);
setEffMoveKey(  spep_5,  tame_5,  0,  0);
setEffRotateKey(  spep_5,  tame_5,  0);
setEffAlphaKey(  spep_5,  tame_5,  255);
setEffScaleKey(  spep_5+237,  tame_5,  1.0,  1.0);
setEffMoveKey(  spep_5+237,  tame_5,  0,  0);
setEffRotateKey(  spep_5+237,  tame_5,  0);
setEffAlphaKey(  spep_5+237,  tame_5,  255);

-- 敵キャラ
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 57, 1, 0 );
changeAnime( spep_5 + 0, 1, 105 );
changeAnime( spep_5 + 48, 1, 107 );

setMoveKey( spep_5 + 0, 1, 40.1, -545 , 0 );
setMoveKey( spep_5 + 2, 1, 48.2, -472 , 0 );
setMoveKey( spep_5 + 4, 1, 39.6, -448.5 , 0 );
setMoveKey( spep_5 + 8, 1, 42.9, -320.2 , 0 );
setMoveKey( spep_5 + 10, 1, 37.2, -210.2 , 0 );
setMoveKey( spep_5 + 12, 1, 36.5, -196 , 0 );
setMoveKey( spep_5 + 14, 1, 40.5, -182.2 , 0 );
setMoveKey( spep_5 + 16, 1, 35, -196.9 , 0 );
setMoveKey( spep_5 + 18, 1, 34.3, -183.3 , 0 );
setMoveKey( spep_5 + 20, 1, 38.1, -170.1 , 0 );
setMoveKey( spep_5 + 22, 1, 32.8, -183.7 , 0 );
setMoveKey( spep_5 + 24, 1, 32, -170.6 , 0 );
setMoveKey( spep_5 + 26, 1, 35.6, -158 , 0 );
setMoveKey( spep_5 + 28, 1, 30.6, -170.4 , 0 );
setMoveKey( spep_5 + 30, 1, 29.9, -158 , 0 );
setMoveKey( spep_5 + 32, 1, 33.1, -146 , 0 );
setMoveKey( spep_5 + 34, 1, 28.5, -157.1 , 0 );
setMoveKey( spep_5 + 36, 1, 27.7, -145.3 , 0 );
setMoveKey( spep_5 + 38, 1, 30.6, -133.8 , 0 );
setMoveKey( spep_5 + 40, 1, 26.2, -144 , 0 );
setMoveKey( spep_5 + 42, 1, 25.6, -132.6 , 0 );
setMoveKey( spep_5 + 44, 1, 28.2, -121.7 , 0 );
setMoveKey( spep_5 + 46, 1, 24.1, -130.7 , 0 );
setMoveKey( spep_5 + 47, 1, 24.1, -130.7 , 0 );
setMoveKey( spep_5 + 48, 1, -2.3, -122.8 , 0 );
setMoveKey( spep_5 + 58, 1, 16.1, -380 , 0 );
setScaleKey( spep_5 + 0, 1, 5.06, 5.06 );
setScaleKey( spep_5 + 2, 1, 3.6, 3.6 );
setScaleKey( spep_5 + 4, 1, 3.24, 3.24 );
setScaleKey( spep_5 + 6, 1, 2.88, 2.88 );
setScaleKey( spep_5 + 8, 1, 2.82, 2.82 );
setScaleKey( spep_5 + 10, 1, 2.77, 2.77 );
setScaleKey( spep_5 + 12, 1, 2.72, 2.72 );
setScaleKey( spep_5 + 14, 1, 2.66, 2.66 );
setScaleKey( spep_5 + 16, 1, 2.61, 2.61 );
setScaleKey( spep_5 + 18, 1, 2.55, 2.55 );
setScaleKey( spep_5 + 20, 1, 2.5, 2.5 );
setScaleKey( spep_5 + 22, 1, 2.45, 2.45 );
setScaleKey( spep_5 + 24, 1, 2.39, 2.39 );
setScaleKey( spep_5 + 26, 1, 2.34, 2.34 );
setScaleKey( spep_5 + 28, 1, 2.29, 2.29 );
setScaleKey( spep_5 + 30, 1, 2.23, 2.23 );
setScaleKey( spep_5 + 32, 1, 2.18, 2.18 );
setScaleKey( spep_5 + 34, 1, 2.12, 2.12 );
setScaleKey( spep_5 + 36, 1, 2.07, 2.07 );
setScaleKey( spep_5 + 38, 1, 2.02, 2.02 );
setScaleKey( spep_5 + 40, 1, 1.96, 1.96 );
setScaleKey( spep_5 + 42, 1, 1.8, 1.8 );
setScaleKey( spep_5 + 44, 1, 1.85, 1.85 );
setScaleKey( spep_5 + 46, 1, 1.8, 1.8 );
setScaleKey( spep_5 + 47, 1, 1.8, 1.8 );
setScaleKey( spep_5 + 48, 1, 0.5 , 0.5 );
setScaleKey( spep_5 + 50, 1, 0.75, 0.75 );
setScaleKey( spep_5 + 52, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 56, 1, 2.25, 2.25 );
setScaleKey( spep_5 + 58, 1, 2.7, 2.7 );
setRotateKey( spep_5 + 0, 1, 0 );


ctbako_5 = entryEffectLife( spep_5 + 48,  10021, 16, 0x100, -1, 0, 15.2, -36 );     -- バゴォ
setEffMoveKey( spep_5 + 48, ctbako_5, 15.2, -36 , 0 );
setEffMoveKey( spep_5 + 50, ctbako_5, 18.9, -93.2 , 0 );
setEffMoveKey( spep_5 + 52, ctbako_5, 13.4, -153.2 , 0 );
setEffMoveKey( spep_5 + 54, ctbako_5, 21.9, -208.9 , 0 );
setEffMoveKey( spep_5 + 56, ctbako_5, 12.4, -215.9 , 0 );
setEffMoveKey( spep_5 + 58, ctbako_5, 22.3, -216.8 , 0 );
setEffMoveKey( spep_5 + 60, ctbako_5, 12.2, -223.8 , 0 );
setEffMoveKey( spep_5 + 62, ctbako_5, 22.5, -224.6 , 0 );
setEffMoveKey( spep_5 + 64, ctbako_5, 22.7, -228.5 , 0 );
setEffScaleKey( spep_5 + 48, ctbako_5, 0.48, 0.48 );
setEffScaleKey( spep_5 + 50, ctbako_5, 1.44, 1.44 );
setEffScaleKey( spep_5 + 52, ctbako_5, 2.19, 2.19 );
setEffScaleKey( spep_5 + 54, ctbako_5, 2.95, 2.95 );
setEffScaleKey( spep_5 + 56, ctbako_5, 3.03, 3.03 );
setEffScaleKey( spep_5 + 58, ctbako_5, 3.1, 3.1 );
setEffScaleKey( spep_5 + 60, ctbako_5, 3.18, 3.18 );
setEffScaleKey( spep_5 + 62, ctbako_5, 3.26, 3.26 );
setEffScaleKey( spep_5 + 64, ctbako_5, 3.33, 3.33 );
setEffRotateKey( spep_5 + 48, ctbako_5, 0 );
setEffAlphaKey( spep_5 + 48, ctbako_5, 255 );
setEffAlphaKey( spep_5 + 58, ctbako_5, 255 );
setEffAlphaKey( spep_5 + 63, ctbako_5, 0 );

ctzuo_5 = entryEffectLife( spep_5 + 170,  10012, 54, 0x100, -1, 0, 83, 15 );     -- ズオッ
setEffMoveKey( spep_5 + 170, ctzuo_5, 83, 15 , 0 );
setEffMoveKey( spep_5 + 172, ctzuo_5, 115.8, 69.8 , 0 );
setEffMoveKey( spep_5 + 174, ctzuo_5, 143, 129 , 0 );
setEffMoveKey( spep_5 + 176, ctzuo_5, 147.9, 125.1 , 0 );
setEffMoveKey( spep_5 + 178, ctzuo_5, 143, 129 , 0 );
setEffMoveKey( spep_5 + 180, ctzuo_5, 147.9, 125.1 , 0 );
setEffMoveKey( spep_5 + 182, ctzuo_5, 143, 129 , 0 );
setEffMoveKey( spep_5 + 184, ctzuo_5, 147.9, 125.1 , 0 );
setEffMoveKey( spep_5 + 186, ctzuo_5, 143, 129 , 0 );
setEffMoveKey( spep_5 + 188, ctzuo_5, 147.9, 125.1 , 0 );
setEffMoveKey( spep_5 + 190, ctzuo_5, 143, 129 , 0 );
setEffMoveKey( spep_5 + 192, ctzuo_5, 147.9, 125.1 , 0 );
setEffMoveKey( spep_5 + 194, ctzuo_5, 143, 129 , 0 );
setEffMoveKey( spep_5 + 196, ctzuo_5, 147.9, 125.1 , 0 );
setEffMoveKey( spep_5 + 198, ctzuo_5, 143, 129 , 0 );
setEffMoveKey( spep_5 + 200, ctzuo_5, 147.9, 125.1 , 0 );
setEffMoveKey( spep_5 + 202, ctzuo_5, 143, 129 , 0 );
setEffMoveKey( spep_5 + 204, ctzuo_5, 142.9, 128.9 , 0 );
setEffMoveKey( spep_5 + 208, ctzuo_5, 147.9, 125.1 , 0 );
setEffMoveKey( spep_5 + 210, ctzuo_5, 142.9, 128.9 , 0 );
setEffMoveKey( spep_5 + 212, ctzuo_5, 149.2, 124.1 , 0 );
setEffMoveKey( spep_5 + 214, ctzuo_5, 147.9, 125.1 , 0 );
setEffMoveKey( spep_5 + 216, ctzuo_5, 142.9, 128.9 , 0 );
setEffMoveKey( spep_5 + 218, ctzuo_5, 149.2, 124.1 , 0 );
setEffMoveKey( spep_5 + 220, ctzuo_5, 143, 128.9 , 0 );
setEffMoveKey( spep_5 + 222, ctzuo_5, 150.6, 123 , 0 );
setEffMoveKey( spep_5 + 224, ctzuo_5, 151.3, 122.5 , 0 );
setEffScaleKey( spep_5 + 170, ctzuo_5, 0.36, 0.36 );
setEffScaleKey( spep_5 + 172, ctzuo_5, 1.61, 1.61 );
setEffScaleKey( spep_5 + 174, ctzuo_5, 2.87, 2.87 );
setEffScaleKey( spep_5 + 204, ctzuo_5, 2.87, 2.87 );
setEffScaleKey( spep_5 + 206, ctzuo_5, 3.25, 3.25 );
setEffScaleKey( spep_5 + 208, ctzuo_5, 3.63, 3.63 );
setEffScaleKey( spep_5 + 210, ctzuo_5, 4.01, 4.01 );
setEffScaleKey( spep_5 + 212, ctzuo_5, 4.4, 4.4 );
setEffScaleKey( spep_5 + 214, ctzuo_5, 4.78, 4.78 );
setEffRotateKey( spep_5 + 170, ctzuo_5, 21.6 );
setEffRotateKey( spep_5 + 186, ctzuo_5, 21.7 );
setEffAlphaKey( spep_5 + 170, ctzuo_5, 255 );
setEffAlphaKey( spep_5 + 204, ctzuo_5, 255 );
setEffAlphaKey( spep_5 + 206, ctzuo_5, 204 );
setEffAlphaKey( spep_5 + 208, ctzuo_5, 153 );
setEffAlphaKey( spep_5 + 210, ctzuo_5, 102 );
setEffAlphaKey( spep_5 + 212, ctzuo_5, 51 );
setEffAlphaKey( spep_5 + 214, ctzuo_5, 0 );

-- カットイン
speff = entryEffect(  spep_5+85,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_5+85,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー --
ctgogo_5 = entryEffectLife( spep_5+98, 190006, 71, 0x100, -1, 0, 0, 510);    -- ゴゴゴゴ
setEffScaleKey(  spep_5+98,  ctgogo_5,  0.7,  0.7);
setEffMoveKey(  spep_5+98,  ctgogo_5,  0,  530);
setEffRotateKey(  spep_5+98,  ctgogo_5,  0);
setEffScaleKey(  spep_5+169,  ctgogo_5,  0.7,  0.7);
setEffMoveKey(  spep_5+169,  ctgogo_5,  0,  530);
setEffRotateKey(  spep_5+169,  ctgogo_5,  0);

--SE
playSe(  spep_5+48,  1010);  --打撃音
playSe(  spep_5+97,  SE_04);  --カットイン音
playSe(  spep_5+170,  SE_06);  --発射音

--背景・ホワイトフェイド
entryFadeBg( spep_5, 0, 237, 0, 0, 0, 0, 255);          -- 黒　背景
entryFade( spep_5+225, 8, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- ギャン(60F)
------------------------------------------------------
spep_6=spep_5+237;

setRotateKey( spep_6-1,  1,  0 );
setMoveKey(   spep_6-1,  1, 148, -263.5 , 0 );

gyan = entryEffect(  spep_6,  190002,  0x100,  -1,  0,  0,  0);  --ギャン
setEffScaleKey(  spep_6,  gyan,  1.0,  1.0);
setEffAlphaKey(  spep_6,  gyan,  255);

-- 書き文字エントリー --
ctgyan_06 = entryEffectLife( spep_6, 10006, 59, 0x100, -1, 0, 0, 350);    -- ギャン
setEffScaleKey( spep_6, ctgyan_06, 1.8, 1.8);
setEffAlphaKey( spep_6, ctgyan_06, 255);
setEffScaleKey( spep_6+10, ctgyan_06, 3.0, 3.0);
setEffScaleKey( spep_6+59, ctgyan_06, 4.5, 4.5);
setEffAlphaKey( spep_6+59, ctgyan_06, 255);
--setEffShake( spep_6, ctgyan_06, 58, 10);

--SE
playSe(  spep_6, SE_09);


--背景・ホワイトフェイド
entryFadeBg(spep_6,0,60,0,0,0,0,255);
entryFade( spep_6+21, 36,  5, 22, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 爆発(240F)
------------------------------------------------------
spep_7 = spep_6+60;

--SE
playSe(  spep_7, SE_10);

bakuha_7 = entryEffect(  spep_7,  1550,  0x80,  -1,  0,  0,  0);
setEffScaleKey(  spep_7,  bakuha_7,  1.0,  1.0);
setEffMoveKey(  spep_7,  bakuha_7,  0,  0);
setEffRotateKey(  spep_7,  bakuha_7,  0);
setEffAlphaKey(  spep_7,  bakuha_7,  255);
setEffScaleKey(  spep_7+240,  bakuha_7,  1.0,  1.0);
setEffMoveKey(  spep_7+240,  bakuha_7,  0,  0);
setEffRotateKey(  spep_7+240,  bakuha_7,  0);
setEffAlphaKey(  spep_7+240,  bakuha_7,  255);

-- ダメージ表示
dealDamage(spep_7+30);

entryFade( spep_7+140, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_7+150);
else

-----------------------------------------
--敵側の攻撃
-----------------------------------------
------------------------------------------------------
-- 登場(160F)
------------------------------------------------------
spep_1 = 0;

shuchusen_1 = entryEffectLife( spep_1, 906, 148, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey(  spep_1,  shuchusen_1,  1.19,  1.23);
setEffMoveKey(  spep_1,  shuchusen_1,  0,  0);
setEffRotateKey(  spep_1,  shuchusen_1,  0);
setEffAlphaKey(  spep_1,  shuchusen_1,  255);
setEffScaleKey(  spep_1+148,  shuchusen_1,  1.19,  1.23);
setEffMoveKey(  spep_1+148,  shuchusen_1,  0,  0);
setEffRotateKey(  spep_1+148,  shuchusen_1,  0);
setEffAlphaKey(  spep_1+148,  shuchusen_1,  255);

appear_1 = entryEffect(  spep_1,  SP_01,  0x80,  -1,  0,  0,  0);  --登場
setEffScaleKey(  spep_1,  appear_1,  -1.0,  1.0);
setEffMoveKey(  spep_1,  appear_1,  0,  0);
setEffRotateKey(  spep_1,  appear_1,  0);
setEffAlphaKey(  spep_1,  appear_1,  255);
setEffScaleKey(  spep_1+148,  appear_1,  -1.0,  1.0);
setEffMoveKey(  spep_1+148,  appear_1,  0,  0);
setEffRotateKey(  spep_1+148,  appear_1,  0);
setEffAlphaKey(  spep_1+148,  appear_1,  255);

--SE
playSe( spep_1 + 30, 48);

--背景・ホワイトフェイド
entryFadeBg( spep_1, 0, 148, 0, 0, 0, 0, 255);          -- 黒　背景
entryFade( spep_1+129, 17, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
spep_2 = 148;

speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

shuchusen_2 = entryEffectLife( spep_2, 906, 90, 0x100,  -1, 0,  0,  0);  --集中線
setEffMoveKey(  spep_2,  shuchusen_2,  0,  0);
setEffScaleKey(  spep_2,  shuchusen_2,  1.0,  1.0);
setEffRotateKey(  spep_2,  shuchusen_2,  0);
setEffAlphaKey(  spep_2,  shuchusen_2,  255);
setEffMoveKey(  spep_2+90,  shuchusen_2,  0,  0);
setEffScaleKey(  spep_2+90,  shuchusen_2,  1.0,  1.0);
setEffRotateKey(  spep_2+90,  shuchusen_2,  0);
setEffAlphaKey(  spep_2+90,  shuchusen_2,  255);

--SE
playSe( spep_2, SE_05);

--背景・ホワイトフェイド
entryFade( spep_2+83, 5, 5, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
------------------------------------------------------
-- 突進(60F)
------------------------------------------------------
spep_3 = spep_2+87;

shuchusen_3 = entryEffectLife(  spep_3,  906,  56,  0x100,  -1,  0,  0,  0);  --集中線
setEffScaleKey(  spep_3,  shuchusen_3,  1.2,  1.6);
setEffMoveKey(  spep_3,  shuchusen_3,  0,  0);
setEffRotateKey(  spep_3, shuchusen_3,  0);
setEffAlphaKey(  spep_3,  shuchusen_3,  255);
setEffScaleKey(  spep_3+56,  shuchusen_3,  1.2,  1.6);
setEffMoveKey(  spep_3+56,  shuchusen_3,  0,  0);
setEffRotateKey(  spep_3+56,  shuchusen_3,  0);
setEffAlphaKey(  spep_3+56,  shuchusen_3,  255);

tosshin_3 = entryEffect(  spep_3,  SP_02,  0x80,  -1,  0,  0,  0);  --突進
setEffScaleKey(  spep_3,  tosshin_3,  -1.0,  1.0);
setEffMoveKey(  spep_3,  tosshin_3,  0,  0);
setEffRotateKey(  spep_3,  tosshin_3,  0);
setEffAlphaKey(  spep_3,  tosshin_3,  255);
setEffScaleKey(  spep_3+56,  tosshin_3,  -1.0,  1.0);
setEffMoveKey(  spep_3+56,  tosshin_3,  0,  0);
setEffRotateKey(  spep_3+56,  tosshin_3,  0);
setEffAlphaKey(  spep_3+56,  tosshin_3,  255);

--SE
--[[
playSe( spep_3, 9);
playSe( spep_3, 1004);
playSe( spep_3+1, 1002);
playSe( spep_3+2, 9);
playSe( spep_3+2, 1004);
playSe( spep_3+3, 1002);
playSe( spep_3+3, 1014);
playSe( spep_3+4, 9);
playSe( spep_3+5, 1002);
playSe( spep_3+5, 1004);
playSe( spep_3+6, 9);
playSe( spep_3+6, 1004);
playSe( spep_3+7, 1002);
playSe( spep_3+7, 1014);
playSe( spep_3+8, 9);
playSe( spep_3+8, 1004);
playSe( spep_3+9, 1002);
playSe( spep_3+9, 1014);
playSe( spep_3+10, 1002);
playSe( spep_3+10, 1014);
playSe( spep_3+11, 9);
playSe( spep_3+11, 1004);
playSe( spep_3+13, 9);
playSe( spep_3+13, 1002);
playSe( spep_3+13, 1014);
]]
playSe( spep_3, 9);
SE001 = playSe( spep_3, 1004);
stopSe(spep_3+8,SE001,2);
--playSe( spep_3, 1014);
playSe( spep_3+3, 1004);

SE002 = playSe( spep_3+7, 1002);
stopSe(spep_3+18,SE002,2);

SE003 = playSe( spep_3+13, 1014);
playSe( spep_3+11, 1004);

--背景・ホワイトフェイド
entryFadeBg( spep_3, 0, 56, 0, 0, 0, 0, 255);          -- 黒　背景

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_3+30; --エンドフェイズのフレーム数を置き換える

setMoveKey( SP_dodge-1, 0, 0,  -900, 0); --味方位置
setMoveKey( SP_dodge, 0, 0,    -900, 0); --味方位置

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


--背景・ホワイトフェイド
entryFade( spep_3+45, 8, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- ラッシュ(100F)
------------------------------------------------------
spep_4 = spep_3+56

shuchusen_4 = entryEffectLife(  spep_4,  906,  68,  0x100,  -1,  0,  0,  0);  --集中線
setEffScaleKey(  spep_4,  shuchusen_4,  1.2,  1.2);
setEffMoveKey(  spep_4,  shuchusen_4,  0,  0);
setEffRotateKey(  spep_4, shuchusen_4,  0);
setEffAlphaKey(  spep_4,  shuchusen_4,  0);
setEffScaleKey(  spep_4+11,  shuchusen_4,  1.2,  1.2);
setEffMoveKey(  spep_4+11,  shuchusen_4,  0,  0);
setEffRotateKey(  spep_4+11, shuchusen_4,  0);
setEffAlphaKey(  spep_4+11,  shuchusen_4,  0);
setEffScaleKey(  spep_4+12,  shuchusen_4,  1.2,  1.2);
setEffMoveKey(  spep_4+12,  shuchusen_4,  0,  0);
setEffRotateKey(  spep_4+12, shuchusen_4,  0);
setEffAlphaKey(  spep_4+12,  shuchusen_4,  255);
setEffScaleKey(  spep_4+68,  shuchusen_4,  1.2,  1.2);
setEffMoveKey(  spep_4+68,  shuchusen_4,  0,  0);
setEffRotateKey(  spep_4+68,  shuchusen_4,  0);
setEffAlphaKey(  spep_4+68,  shuchusen_4,  255);

rush_f_4 = entryEffect(  spep_4,  SP_03,  0x100,  -1,  0,  0,  0);  --ラッシュ（前）
setEffScaleKey(  spep_4,  rush_f_4,  1.0,  1.0);
setEffMoveKey(  spep_4,  rush_f_4,  0,  0);
setEffRotateKey(  spep_4,  rush_f_4,  0);
setEffAlphaKey(  spep_4,  rush_f_4,  255);
setEffScaleKey(  spep_4+98,  rush_f_4,  1.0,  1.0);
setEffMoveKey(  spep_4+98,  rush_f_4,  0,  0);
setEffRotateKey(  spep_4+98,  rush_f_4,  0);
setEffAlphaKey(  spep_4+98,  rush_f_4,  255);

ryu_4 = entryEffectLife(  spep_4,  920,  11,  0x80,  -1,  0,  0,  0);  --流線
setEffScaleKey(  spep_4,  ryu_4,  1.1,  1.3);
setEffMoveKey(  spep_4,  ryu_4,  0,  0);
setEffRotateKey(  spep_4,  ryu_4,  0);
setEffAlphaKey(  spep_4,  ryu_4,  255);
setEffScaleKey(  spep_4+11,  ryu_4,  1.1,  1.3);
setEffMoveKey(  spep_4+11,  ryu_4,  0,  0);
setEffRotateKey(  spep_4+11,  ryu_4,  0);
setEffAlphaKey(  spep_4+11,  ryu_4,  255);

ryu_4a = entryEffectLife(  spep_4,  921,  98,  0x80,  -1,  0,  0,  0);  --流線
setEffScaleKey(  spep_4,  ryu_4a,  2.37,  1.34);
setEffMoveKey(  spep_4,  ryu_4a,  -310,  -119);
setEffRotateKey(  spep_4,  ryu_4a,  -27.3);
setEffAlphaKey(  spep_4,  ryu_4a,  0);
setEffScaleKey(  spep_4+68,  ryu_4a,  2.37,  1.34);
setEffMoveKey(  spep_4+68,  ryu_4a,  -470,  -119);
setEffRotateKey(  spep_4+68,  ryu_4a,  -27.3);
setEffAlphaKey(  spep_4+68,  ryu_4a,  0);
setEffScaleKey(  spep_4+69,  ryu_4a,  2.37,  1.34);
setEffMoveKey(  spep_4+69,  ryu_4a,  -470,  -119);
setEffRotateKey(  spep_4+69,  ryu_4a,  -27.3);
setEffAlphaKey(  spep_4+69,  ryu_4a,  255);
setEffScaleKey(  spep_4+98,  ryu_4a,  2.37,  1.34);
setEffMoveKey(  spep_4+98,  ryu_4a,  -470,  -119);
setEffRotateKey(  spep_4+98,  ryu_4a,  -27.3);
setEffAlphaKey(  spep_4+98,  ryu_4a,  255);

rush_b_4 = entryEffect(  spep_4,  SP_04,  0x80,  -1,  0,  0,  0);  --ラッシュ（後）
setEffScaleKey(  spep_4,  rush_b_4,  1.0,  1.0);
setEffMoveKey(  spep_4,  rush_b_4,  0,  0);
setEffRotateKey(  spep_4,  rush_b_4,  0);
setEffAlphaKey(  spep_4,  rush_b_4,  255);
setEffScaleKey(  spep_4+98,  rush_b_4,  1.0,  1.0);
setEffMoveKey(  spep_4+98,  rush_b_4,  0,  0);
setEffRotateKey(  spep_4+98,  rush_b_4,  0);
setEffAlphaKey(  spep_4+98,  rush_b_4,  255);

--敵キャラの動き
setDisp( spep_4 + 0, 1, 1 );
changeAnime( spep_4 + 0, 1, 100 );
changeAnime( spep_4 + 12, 1, 108 );
changeAnime( spep_4 + 24, 1, 106 );
changeAnime( spep_4 + 29, 1, 108 );
changeAnime( spep_4 + 56, 1, 106 );
changeAnime( spep_4 + 72, 1, 108 );

setMoveKey( spep_4 + 0, 1, 0, 0 , 0 );
setMoveKey( spep_4 + 2, 1, 0.4, 4.7 , 0 );
setMoveKey( spep_4 + 4, 1, -1.5, -4.7 , 0 );
setMoveKey( spep_4 + 6, 1, 5.9, 0 , 0 );
setMoveKey( spep_4 + 8, 1, -0.7, 2.3 , 0 );
setMoveKey( spep_4 + 10, 1, 4.4, -4.7 , 0 );
setMoveKey( spep_4 + 13, 1, 2.4, 4.7 , 0 );
setMoveKey( spep_4 + 14, 1, 2.4, -4.7 , 0 );
setMoveKey( spep_4 + 16, 1, 10.4, 0.7 , 0 );
setMoveKey( spep_4 + 18, 1, -1.3, -5.4 , 0 );
setMoveKey( spep_4 + 20, 1, 10.8, 13.5 , 0 );
setMoveKey( spep_4 + 22, 1, 25.8, 13.6 , 0 );
setMoveKey( spep_4 + 24, 1, 25.9, 28 , 0 );
setMoveKey( spep_4 + 25, 1, 45.1, 28.1 , 0 );
setMoveKey( spep_4 + 28, 1, -4.4, 75.6 , 0 );
setMoveKey( spep_4 + 30, 1, -11.5, 65.2 , 0 );
setMoveKey( spep_4 + 33, 1, -15.6, 65 , 0 );
setMoveKey( spep_4 + 34, 1, 6.5, 35.7 , 0 );
setMoveKey( spep_4 + 36, 1, -4, 24.6 , 0 );
setMoveKey( spep_4 + 38, 1, 10.2, 20.8 , 0 );
setMoveKey( spep_4 + 40, 1, 10.7, 28.5 , 0 );
setMoveKey( spep_4 + 42, 1, 11.9, 19.7 , 0 );
setMoveKey( spep_4 + 44, 1, -6.7, 18.3 , 0 );
setMoveKey( spep_4 + 46, 1, 26.7, 9.6 , 0 );
setMoveKey( spep_4 + 48, 1, 13.8, 31.4 , 0 );
setMoveKey( spep_4 + 50, 1, 7, -0.6 , 0 );
setMoveKey( spep_4 + 52, 1, 5.1, 9.5 , 0 );
setMoveKey( spep_4 + 54, 1, 20.3, 10.2 , 0 );
setMoveKey( spep_4 + 56, 1, 22.5, -7.8 , 0 );
setMoveKey( spep_4 + 58, 1, 5.6, 7 , 0 );
setMoveKey( spep_4 + 61, 1, 19.9, 7.7 , 0 );
setMoveKey( spep_4 + 62, 1, -21.8, 39.2 , 0 );
setMoveKey( spep_4 + 64, 1, -34.5, 41.5 , 0 );
setMoveKey( spep_4 + 66, 1, -10.7, 49.4 , 0 );
setMoveKey( spep_4 + 68, 1, -36.2, 13.3 , 0 );
setMoveKey( spep_4 + 70, 1, -10.4, 30.9 , 0 );
setMoveKey( spep_4 + 72, 1, 5.6, 11.8 , 0 );
setMoveKey( spep_4 + 71, 1, 16.1, 11.7 , 0 );
setMoveKey( spep_4 + 82, 1, 58.6, 32.5 , 0 );
setMoveKey( spep_4 + 84, 1, 100.4, 68.1 , 0 );
setMoveKey( spep_4 + 86, 1, 134.9, 107.6 , 0 );
setMoveKey( spep_4 + 88, 1, 172.1, 128.8 , 0 );
setMoveKey( spep_4 + 90, 1, 214.6, 171.6 , 0 );
setMoveKey( spep_4 + 92, 1, 253.6, 192.3 , 0 );
setMoveKey( spep_4 + 94, 1, 290.3, 229.8 , 0 );
setMoveKey( spep_4 + 96, 1, 331.4, 263 , 0 );
setMoveKey( spep_4 + 98, 1, 372.2, 300.4 , 0 );

setScaleKey( spep_4 + 0, 1, 1.2, 1.2 );
setScaleKey( spep_4 + 71, 1, 1.2, 1.2 );
setScaleKey( spep_4 + 98, 1, 0.71, 0.71 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4 + 23, 1, 0 );
setRotateKey( spep_4 + 24, 1, -46.2 );
setRotateKey( spep_4 + 28, 1, -46.2 );
setRotateKey( spep_4 + 29, 1, 0 );
setRotateKey( spep_4 + 55, 1, 0 );
setRotateKey( spep_4 + 56, 1, -46.2 );
setRotateKey( spep_4 + 71, 1, -46.2 );
setRotateKey( spep_4 + 72, 1, 0 );
setRotateKey( spep_4 + 82, 1, 0 );


--書き文字 ガッ　１つ目--
ctrush_1_ga_5 = entryEffectLife( spep_4 + 12,  10005, 13, 0x100, -1, 0, 12, 129.9 );     -- ガッ
setEffMoveKey( spep_4 + 12, ctrush_1_ga_5, 12, 129.9 , 0 );
setEffMoveKey( spep_4 + 14, ctrush_1_ga_5, 26.8, 165.3 , 0 );
setEffMoveKey( spep_4 + 16, ctrush_1_ga_5, 32, 211.9 , 0 );
setEffMoveKey( spep_4 + 18, ctrush_1_ga_5, 38.2, 204.6 , 0 );
setEffMoveKey( spep_4 + 20, ctrush_1_ga_5, 32, 211.9 , 0 );
setEffMoveKey( spep_4 + 22, ctrush_1_ga_5, 38.2, 204.6 , 0 );
setEffMoveKey( spep_4 + 25, ctrush_1_ga_5, 32, 211.9 , 0 );
setEffScaleKey( spep_4 + 12, ctrush_1_ga_5, 0.9, 0.9 );
setEffScaleKey( spep_4 + 14, ctrush_1_ga_5, 1.29, 1.29 );
setEffScaleKey( spep_4 + 16, ctrush_1_ga_5, 1.68, 1.68 );
setEffScaleKey( spep_4 + 25, ctrush_1_ga_5, 1.68, 1.68 );
setEffRotateKey( spep_4 + 12, ctrush_1_ga_5, 15.3 );
setEffRotateKey( spep_4 + 14, ctrush_1_ga_5, 15.5 );
setEffRotateKey( spep_4 + 25, ctrush_1_ga_5, 15.5 );
setEffAlphaKey( spep_4 + 12, ctrush_1_ga_5, 255 );
setEffAlphaKey( spep_4 + 25, ctrush_1_ga_5, 255 );


--書き文字 ドガガガッ　２、３、４つ目--
ctrush_2_dogagaga_5 = entryEffectLife( spep_4 + 26,  10017, 42, 0x100, -1, 0, 54, 205.9 );     -- ドガガガッ
setEffMoveKey( spep_4 + 26, ctrush_2_dogagaga_5, 54, 205.9 , 0 );
setEffMoveKey( spep_4 + 28, ctrush_2_dogagaga_5, 79.5, 270.3 , 0 );
setEffMoveKey( spep_4 + 32, ctrush_2_dogagaga_5, 84, 265.8 , 0 );
setEffMoveKey( spep_4 + 34, ctrush_2_dogagaga_5, 79.5, 270.3 , 0 );
setEffMoveKey( spep_4 + 37, ctrush_2_dogagaga_5, 84, 265.8 , 0 );
setEffMoveKey( spep_4 + 38, ctrush_2_dogagaga_5, 18, 121.9 , 0 );
setEffMoveKey( spep_4 + 40, ctrush_2_dogagaga_5, 26.6, 134.2 , 0 );
setEffMoveKey( spep_4 + 42, ctrush_2_dogagaga_5, 37.2, 141.2 , 0 );
setEffMoveKey( spep_4 + 44, ctrush_2_dogagaga_5, 45.2, 155.3 , 0 );
setEffMoveKey( spep_4 + 46, ctrush_2_dogagaga_5, 47, 150.9 , 0 );
setEffMoveKey( spep_4 + 48, ctrush_2_dogagaga_5, 45.2, 155.3 , 0 );
setEffMoveKey( spep_4 + 50, ctrush_2_dogagaga_5, 47, 150.9 , 0 );
setEffMoveKey( spep_4 + 53, ctrush_2_dogagaga_5, 45.2, 155.3 , 0 );
setEffMoveKey( spep_4 + 54, ctrush_2_dogagaga_5, 42, 133.9 , 0 );
setEffMoveKey( spep_4 + 56, ctrush_2_dogagaga_5, 39.5, 164.3 , 0 );
setEffMoveKey( spep_4 + 58, ctrush_2_dogagaga_5, 43, 189.9 , 0 );
setEffMoveKey( spep_4 + 60, ctrush_2_dogagaga_5, 38.8, 193.3 , 0 );
setEffMoveKey( spep_4 + 62, ctrush_2_dogagaga_5, 43, 189.9 , 0 );
setEffMoveKey( spep_4 + 64, ctrush_2_dogagaga_5, 38.8, 193.3 , 0 );
setEffMoveKey( spep_4 + 66, ctrush_2_dogagaga_5, 43, 189.9 , 0 );
setEffMoveKey( spep_4 + 68, ctrush_2_dogagaga_5, 38.8, 193.3 , 0 );
setEffScaleKey( spep_4 + 26, ctrush_2_dogagaga_5, 0.86, 0.86 );
setEffScaleKey( spep_4 + 32, ctrush_2_dogagaga_5, 1.55, 1.55 );
setEffScaleKey( spep_4 + 34, ctrush_2_dogagaga_5, 2.25, 2.25 );
setEffScaleKey( spep_4 + 37, ctrush_2_dogagaga_5, 2.25, 2.25 );
setEffScaleKey( spep_4 + 38, ctrush_2_dogagaga_5, 0.7, 0.7 );
setEffScaleKey( spep_4 + 40, ctrush_2_dogagaga_5, 1.02, 1.02 );
setEffScaleKey( spep_4 + 42, ctrush_2_dogagaga_5, 1.35, 1.35 );
setEffScaleKey( spep_4 + 44, ctrush_2_dogagaga_5, 1.67, 1.67 );
setEffScaleKey( spep_4 + 53, ctrush_2_dogagaga_5, 1.67, 1.67 );
setEffScaleKey( spep_4 + 54, ctrush_2_dogagaga_5, 0.81, 0.81 );
setEffScaleKey( spep_4 + 56, ctrush_2_dogagaga_5, 1.35, 1.35 );
setEffScaleKey( spep_4 + 58, ctrush_2_dogagaga_5, 1.88, 1.88 );
setEffScaleKey( spep_4 + 68, ctrush_2_dogagaga_5, 1.88, 1.88 );
setEffRotateKey( spep_4 + 26, ctrush_2_dogagaga_5, 0 );
setEffRotateKey( spep_4 + 37, ctrush_2_dogagaga_5, 0 );
setEffRotateKey( spep_4 + 38, ctrush_2_dogagaga_5, 22.6 );
setEffRotateKey( spep_4 + 44, ctrush_2_dogagaga_5, 22.6 );
setEffRotateKey( spep_4 + 46, ctrush_2_dogagaga_5, 22.7 );
setEffRotateKey( spep_4 + 53, ctrush_2_dogagaga_5, 22.7 );
setEffRotateKey( spep_4 + 54, ctrush_2_dogagaga_5, -5.3 );
setEffRotateKey( spep_4 + 68, ctrush_2_dogagaga_5, -5.5 );
setEffAlphaKey( spep_4 + 25, ctrush_2_dogagaga_5, 255 );

--書き文字 ガッ　5つ目--
ctrush_3_ga_5 = entryEffectLife( spep_4 + 69,  10005, 22, 0x100, -1, 0, 12, 129.9 );     -- ガッ
setEffMoveKey( spep_4 + 69, ctrush_3_ga_5, 12, 129.9 , 0 );
setEffMoveKey( spep_4 + 71, ctrush_3_ga_5, 26.8, 165.3 , 0 );
setEffMoveKey( spep_4 + 73, ctrush_3_ga_5, 32, 211.9 , 0 );
setEffMoveKey( spep_4 + 75, ctrush_3_ga_5, 38.2, 204.6 , 0 );
setEffMoveKey( spep_4 + 77, ctrush_3_ga_5, 32, 211.9 , 0 );
setEffMoveKey( spep_4 + 79, ctrush_3_ga_5, 38.2, 204.6 , 0 );
setEffMoveKey( spep_4 + 81, ctrush_3_ga_5, 32, 211.9 , 0 );
setEffMoveKey( spep_4 + 83, ctrush_3_ga_5, 38.2, 204.6 , 0 );
setEffMoveKey( spep_4 + 85, ctrush_3_ga_5, 32, 211.9 , 0 );
setEffMoveKey( spep_4 + 87, ctrush_3_ga_5, 38.2, 204.6 , 0 );
setEffMoveKey( spep_4 + 89, ctrush_3_ga_5, 32, 211.9 , 0 );
setEffMoveKey( spep_4 + 91, ctrush_3_ga_5, 38.2, 204.6 , 0 );
setEffScaleKey( spep_4 + 69, ctrush_3_ga_5, 0.9, 0.9 );
setEffScaleKey( spep_4 + 71, ctrush_3_ga_5, 1.29, 1.29 );
setEffScaleKey( spep_4 + 73, ctrush_3_ga_5, 1.68, 1.68 );
setEffRotateKey( spep_4 + 69, ctrush_3_ga_5, 15.3 );
setEffRotateKey( spep_4 + 71, ctrush_3_ga_5, 15.5 );
setEffAlphaKey( spep_4 + 69, ctrush_3_ga_5, 255 );

--SE
playSe(spep_4+11,1009);
playSe(spep_4+24,1000);
playSe(spep_4+27,1001);
playSe(spep_4+28,1000);
playSe(spep_4+54,1010);
playSe(spep_4+56,1010);
playSe(spep_4+71,1009);

--背景・ホワイトフェイド
entryFadeBg( spep_4, 0, 98, 0, 0, 0, 0, 255);          -- 黒　背景
entryFade( spep_4+90, 8, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 蹴り溜め(260F)
------------------------------------------------------
spep_5 = spep_4+98;

shuchusen_5 = entryEffectLife(  spep_5,  906,  169,  0x100,  -1,  0,  0,  0);  --集中線
setEffScaleKey(  spep_5,  shuchusen_5,  1.15,  1.15);
setEffMoveKey(  spep_5,  shuchusen_5,  0,  0);
setEffRotateKey(  spep_5, shuchusen_5,  0);
setEffAlphaKey(  spep_5,  shuchusen_5,  255);
setEffScaleKey(  spep_5+169,  shuchusen_5,  1.15,  1.15);
setEffMoveKey(  spep_5+169,  shuchusen_5,  0,  0);
setEffRotateKey(  spep_5+169,  shuchusen_5,  0);
setEffAlphaKey(  spep_5+169,  shuchusen_5,  255);

ryu_5 = entryEffectLife(  spep_5,  921,  237,  0x80,  -1,  0,  0,  0);  --流線
setEffScaleKey(  spep_5,  ryu_5,  1.97,  0.86);
setEffMoveKey(  spep_5,  ryu_5,  0,  0);
setEffRotateKey(  spep_5,  ryu_5,  -90);
setEffAlphaKey(  spep_5,  ryu_5,  0);
setEffScaleKey(  spep_5+169,  ryu_5,  1.97,  0.86);
setEffMoveKey(  spep_5+169,  ryu_5,  0,  0);
setEffRotateKey(  spep_5+169,  ryu_5,  -90);
setEffAlphaKey(  spep_5+169,  ryu_5,  0);
setEffScaleKey(  spep_5+170,  ryu_5,  1.97,  0.86);
setEffMoveKey(  spep_5+170,  ryu_5,  0,  0);
setEffRotateKey(  spep_5+170,  ryu_5,  -90);
setEffAlphaKey(  spep_5+170,  ryu_5,  255);
setEffScaleKey(  spep_5+237,  ryu_5,  1.1,  0.86);
setEffMoveKey(  spep_5+237,  ryu_5,  0,  0);
setEffRotateKey(  spep_5+237,  ryu_5,  -90);
setEffAlphaKey(  spep_5+237,  ryu_5,  255);

tame_5 = entryEffectLife(  spep_5,  SP_05, 237,  0x80,  -1,  0,  0,  0);  --蹴りから溜め
setEffScaleKey(  spep_5,  tame_5,  -1.0,  1.0);
setEffMoveKey(  spep_5,  tame_5,  0,  0);
setEffRotateKey(  spep_5,  tame_5,  0);
setEffAlphaKey(  spep_5,  tame_5,  255);
setEffScaleKey(  spep_5+237,  tame_5,  -1.0,  1.0);
setEffMoveKey(  spep_5+237,  tame_5,  0,  0);
setEffRotateKey(  spep_5+237,  tame_5,  0);
setEffAlphaKey(  spep_5+237,  tame_5,  255);

-- 敵キャラ
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 57, 1, 0 );
changeAnime( spep_5 + 0, 1, 105 );
changeAnime( spep_5 + 48, 1, 107 );

setMoveKey( spep_5 + 0, 1, 40.1, -545 , 0 );
setMoveKey( spep_5 + 2, 1, 48.2, -472 , 0 );
setMoveKey( spep_5 + 4, 1, 39.6, -448.5 , 0 );
setMoveKey( spep_5 + 8, 1, 42.9, -320.2 , 0 );
setMoveKey( spep_5 + 10, 1, 37.2, -210.2 , 0 );
setMoveKey( spep_5 + 12, 1, 36.5, -196 , 0 );
setMoveKey( spep_5 + 14, 1, 40.5, -182.2 , 0 );
setMoveKey( spep_5 + 16, 1, 35, -196.9 , 0 );
setMoveKey( spep_5 + 18, 1, 34.3, -183.3 , 0 );
setMoveKey( spep_5 + 20, 1, 38.1, -170.1 , 0 );
setMoveKey( spep_5 + 22, 1, 32.8, -183.7 , 0 );
setMoveKey( spep_5 + 24, 1, 32, -170.6 , 0 );
setMoveKey( spep_5 + 26, 1, 35.6, -158 , 0 );
setMoveKey( spep_5 + 28, 1, 30.6, -170.4 , 0 );
setMoveKey( spep_5 + 30, 1, 29.9, -158 , 0 );
setMoveKey( spep_5 + 32, 1, 33.1, -146 , 0 );
setMoveKey( spep_5 + 34, 1, 28.5, -157.1 , 0 );
setMoveKey( spep_5 + 36, 1, 27.7, -145.3 , 0 );
setMoveKey( spep_5 + 38, 1, 30.6, -133.8 , 0 );
setMoveKey( spep_5 + 40, 1, 26.2, -144 , 0 );
setMoveKey( spep_5 + 42, 1, 25.6, -132.6 , 0 );
setMoveKey( spep_5 + 44, 1, 28.2, -121.7 , 0 );
setMoveKey( spep_5 + 46, 1, 24.1, -130.7 , 0 );
setMoveKey( spep_5 + 47, 1, 24.1, -130.7 , 0 );
setMoveKey( spep_5 + 48, 1, -2.3, -122.8 , 0 );
setMoveKey( spep_5 + 58, 1, 16.1, -380 , 0 );
setScaleKey( spep_5 + 0, 1, 5.06, 5.06 );
setScaleKey( spep_5 + 2, 1, 3.6, 3.6 );
setScaleKey( spep_5 + 4, 1, 3.24, 3.24 );
setScaleKey( spep_5 + 6, 1, 2.88, 2.88 );
setScaleKey( spep_5 + 8, 1, 2.82, 2.82 );
setScaleKey( spep_5 + 10, 1, 2.77, 2.77 );
setScaleKey( spep_5 + 12, 1, 2.72, 2.72 );
setScaleKey( spep_5 + 14, 1, 2.66, 2.66 );
setScaleKey( spep_5 + 16, 1, 2.61, 2.61 );
setScaleKey( spep_5 + 18, 1, 2.55, 2.55 );
setScaleKey( spep_5 + 20, 1, 2.5, 2.5 );
setScaleKey( spep_5 + 22, 1, 2.45, 2.45 );
setScaleKey( spep_5 + 24, 1, 2.39, 2.39 );
setScaleKey( spep_5 + 26, 1, 2.34, 2.34 );
setScaleKey( spep_5 + 28, 1, 2.29, 2.29 );
setScaleKey( spep_5 + 30, 1, 2.23, 2.23 );
setScaleKey( spep_5 + 32, 1, 2.18, 2.18 );
setScaleKey( spep_5 + 34, 1, 2.12, 2.12 );
setScaleKey( spep_5 + 36, 1, 2.07, 2.07 );
setScaleKey( spep_5 + 38, 1, 2.02, 2.02 );
setScaleKey( spep_5 + 40, 1, 1.96, 1.96 );
setScaleKey( spep_5 + 42, 1, 1.8, 1.8 );
setScaleKey( spep_5 + 44, 1, 1.85, 1.85 );
setScaleKey( spep_5 + 46, 1, 1.8, 1.8 );
setScaleKey( spep_5 + 47, 1, 1.8, 1.8 );
setScaleKey( spep_5 + 48, 1, 0.5 , 0.5 );
setScaleKey( spep_5 + 50, 1, 0.75, 0.75 );
setScaleKey( spep_5 + 52, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 56, 1, 2.25, 2.25 );
setScaleKey( spep_5 + 58, 1, 2.7, 2.7 );
setRotateKey( spep_5 + 0, 1, 0 );


ctbako_5 = entryEffectLife( spep_5 + 48,  10021, 16, 0x100, -1, 0, 15.2, -36 );     -- バゴォ
setEffMoveKey( spep_5 + 48, ctbako_5, 15.2, -36 , 0 );
setEffMoveKey( spep_5 + 50, ctbako_5, 18.9, -93.2 , 0 );
setEffMoveKey( spep_5 + 52, ctbako_5, 13.4, -153.2 , 0 );
setEffMoveKey( spep_5 + 54, ctbako_5, 21.9, -208.9 , 0 );
setEffMoveKey( spep_5 + 56, ctbako_5, 12.4, -215.9 , 0 );
setEffMoveKey( spep_5 + 58, ctbako_5, 22.3, -216.8 , 0 );
setEffMoveKey( spep_5 + 60, ctbako_5, 12.2, -223.8 , 0 );
setEffMoveKey( spep_5 + 62, ctbako_5, 22.5, -224.6 , 0 );
setEffMoveKey( spep_5 + 64, ctbako_5, 22.7, -228.5 , 0 );
setEffScaleKey( spep_5 + 48, ctbako_5, 0.48, 0.48 );
setEffScaleKey( spep_5 + 50, ctbako_5, 1.44, 1.44 );
setEffScaleKey( spep_5 + 52, ctbako_5, 2.19, 2.19 );
setEffScaleKey( spep_5 + 54, ctbako_5, 2.95, 2.95 );
setEffScaleKey( spep_5 + 56, ctbako_5, 3.03, 3.03 );
setEffScaleKey( spep_5 + 58, ctbako_5, 3.1, 3.1 );
setEffScaleKey( spep_5 + 60, ctbako_5, 3.18, 3.18 );
setEffScaleKey( spep_5 + 62, ctbako_5, 3.26, 3.26 );
setEffScaleKey( spep_5 + 64, ctbako_5, 3.33, 3.33 );
setEffRotateKey( spep_5 + 48, ctbako_5, 0 );
setEffAlphaKey( spep_5 + 48, ctbako_5, 255 );
setEffAlphaKey( spep_5 + 58, ctbako_5, 255 );
setEffAlphaKey( spep_5 + 63, ctbako_5, 0 );

ctzuo_5 = entryEffectLife( spep_5 + 170,  10012, 54, 0x100, -1, 0, 83, 15 );     -- ズオッ
setEffMoveKey( spep_5 + 170, ctzuo_5, 83, 15 , 0 );
setEffMoveKey( spep_5 + 172, ctzuo_5, 115.8, 69.8 , 0 );
setEffMoveKey( spep_5 + 174, ctzuo_5, 143, 129 , 0 );
setEffMoveKey( spep_5 + 176, ctzuo_5, 147.9, 125.1 , 0 );
setEffMoveKey( spep_5 + 178, ctzuo_5, 143, 129 , 0 );
setEffMoveKey( spep_5 + 180, ctzuo_5, 147.9, 125.1 , 0 );
setEffMoveKey( spep_5 + 182, ctzuo_5, 143, 129 , 0 );
setEffMoveKey( spep_5 + 184, ctzuo_5, 147.9, 125.1 , 0 );
setEffMoveKey( spep_5 + 186, ctzuo_5, 143, 129 , 0 );
setEffMoveKey( spep_5 + 188, ctzuo_5, 147.9, 125.1 , 0 );
setEffMoveKey( spep_5 + 190, ctzuo_5, 143, 129 , 0 );
setEffMoveKey( spep_5 + 192, ctzuo_5, 147.9, 125.1 , 0 );
setEffMoveKey( spep_5 + 194, ctzuo_5, 143, 129 , 0 );
setEffMoveKey( spep_5 + 196, ctzuo_5, 147.9, 125.1 , 0 );
setEffMoveKey( spep_5 + 198, ctzuo_5, 143, 129 , 0 );
setEffMoveKey( spep_5 + 200, ctzuo_5, 147.9, 125.1 , 0 );
setEffMoveKey( spep_5 + 202, ctzuo_5, 143, 129 , 0 );
setEffMoveKey( spep_5 + 204, ctzuo_5, 142.9, 128.9 , 0 );
setEffMoveKey( spep_5 + 208, ctzuo_5, 147.9, 125.1 , 0 );
setEffMoveKey( spep_5 + 210, ctzuo_5, 142.9, 128.9 , 0 );
setEffMoveKey( spep_5 + 212, ctzuo_5, 149.2, 124.1 , 0 );
setEffMoveKey( spep_5 + 214, ctzuo_5, 147.9, 125.1 , 0 );
setEffMoveKey( spep_5 + 216, ctzuo_5, 142.9, 128.9 , 0 );
setEffMoveKey( spep_5 + 218, ctzuo_5, 149.2, 124.1 , 0 );
setEffMoveKey( spep_5 + 220, ctzuo_5, 143, 128.9 , 0 );
setEffMoveKey( spep_5 + 222, ctzuo_5, 150.6, 123 , 0 );
setEffMoveKey( spep_5 + 224, ctzuo_5, 151.3, 122.5 , 0 );
setEffScaleKey( spep_5 + 170, ctzuo_5, 0.36, 0.36 );
setEffScaleKey( spep_5 + 172, ctzuo_5, 1.61, 1.61 );
setEffScaleKey( spep_5 + 174, ctzuo_5, 2.87, 2.87 );
setEffScaleKey( spep_5 + 204, ctzuo_5, 2.87, 2.87 );
setEffScaleKey( spep_5 + 206, ctzuo_5, 3.25, 3.25 );
setEffScaleKey( spep_5 + 208, ctzuo_5, 3.63, 3.63 );
setEffScaleKey( spep_5 + 210, ctzuo_5, 4.01, 4.01 );
setEffScaleKey( spep_5 + 212, ctzuo_5, 4.4, 4.4 );
setEffScaleKey( spep_5 + 214, ctzuo_5, 4.78, 4.78 );
setEffRotateKey( spep_5 + 170, ctzuo_5, 21.6 );
setEffRotateKey( spep_5 + 186, ctzuo_5, 21.7 );
setEffAlphaKey( spep_5 + 170, ctzuo_5, 255 );
setEffAlphaKey( spep_5 + 204, ctzuo_5, 255 );
setEffAlphaKey( spep_5 + 206, ctzuo_5, 204 );
setEffAlphaKey( spep_5 + 208, ctzuo_5, 153 );
setEffAlphaKey( spep_5 + 210, ctzuo_5, 102 );
setEffAlphaKey( spep_5 + 212, ctzuo_5, 51 );
setEffAlphaKey( spep_5 + 214, ctzuo_5, 0 );

-- カットイン
--speff = entryEffect(  spep_5+85,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  spep_5+85,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー --
ctgogo_5 = entryEffectLife( spep_5+98, 190006, 71, 0x100, -1, 0, 0, 510);    -- ゴゴゴゴ
setEffScaleKey(  spep_5+98,  ctgogo_5,  -0.7,  0.7);
setEffMoveKey(  spep_5+98,  ctgogo_5,  0,  530);
setEffRotateKey(  spep_5+98,  ctgogo_5,  0);
setEffScaleKey(  spep_5+169,  ctgogo_5,  -0.7,  0.7);
setEffMoveKey(  spep_5+169,  ctgogo_5,  0,  530);
setEffRotateKey(  spep_5+169,  ctgogo_5,  0);

--SE
playSe(  spep_5+48,  1010);  --打撃音
playSe(  spep_5+97,  SE_04);  --カットイン音
playSe(  spep_5+170,  SE_06);  --発射音

--背景・ホワイトフェイド
entryFadeBg( spep_5, 0, 237, 0, 0, 0, 0, 255);          -- 黒　背景
entryFade( spep_5+225, 8, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- ギャン(60F)
------------------------------------------------------
spep_6=spep_5+237;

setRotateKey( spep_6-1,  1,  0 );
setMoveKey(   spep_6-1,  1, 148, -263.5 , 0 );

gyan = entryEffect(  spep_6,  190002,  0x100,  -1,  0,  0,  0);  --ギャン
setEffScaleKey(  spep_6,  gyan,  1.0,  1.0);
setEffAlphaKey(  spep_6,  gyan,  255);

-- 書き文字エントリー --
ctgyan_06 = entryEffectLife( spep_6, 10006, 59, 0x100, -1, 0, 0, 350);    -- ギャン
setEffScaleKey( spep_6, ctgyan_06, 1.8, 1.8);
setEffAlphaKey( spep_6, ctgyan_06, 255);
setEffScaleKey( spep_6+10, ctgyan_06, 3.0, 3.0);
setEffScaleKey( spep_6+59, ctgyan_06, 4.5, 4.5);
setEffAlphaKey( spep_6+59, ctgyan_06, 255);
--setEffShake( spep_6, ctgyan_06, 58, 10);

--SE
playSe(  spep_6, SE_09);


--背景・ホワイトフェイド
entryFadeBg(spep_6,0,60,0,0,0,0,255);
entryFade( spep_6+21, 36,  5, 22, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 爆発(240F)
------------------------------------------------------
spep_7 = spep_6+60;

--SE
playSe(  spep_7, SE_10);

bakuha_7 = entryEffect(  spep_7,  1550,  0x80,  -1,  0,  0,  0);
setEffScaleKey(  spep_7,  bakuha_7,  1.0,  1.0);
setEffMoveKey(  spep_7,  bakuha_7,  0,  0);
setEffRotateKey(  spep_7,  bakuha_7,  0);
setEffAlphaKey(  spep_7,  bakuha_7,  255);
setEffScaleKey(  spep_7+240,  bakuha_7,  1.0,  1.0);
setEffMoveKey(  spep_7+240,  bakuha_7,  0,  0);
setEffRotateKey(  spep_7+240,  bakuha_7,  0);
setEffAlphaKey(  spep_7+240,  bakuha_7,  255);

-- ダメージ表示
dealDamage(spep_7+30);

entryFade( spep_7+140, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_7+150);


end
