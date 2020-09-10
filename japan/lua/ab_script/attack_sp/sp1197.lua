--　トランクス＆悟天_マーロンあり(UR)

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

SP_01 = 151774  --気溜め
SP_02 = 151775  --突進
SP_03 = 151782  --格闘前
SP_04 = 151783  --格闘後
SP_05 = 151784  --発射
SP_06 = 151785  --気功派（反転共通）
SP_07 = 151786  --３人でポーズ

SP_08 = 151778  --気溜め（敵）
SP_09 = 151779  --突進（敵）
SP_10 = 151787  --格闘前（敵）
SP_11 = 151788  --格闘後（敵）
SP_12 = 151789  --発射（敵）
SP_13 = 151790  --３人でポーズ（敵）

SP_14 = 151893  --マーロンカットイン(UR)
------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI(0, 0);

changeAnime( 0, 0, 1);                       -- 立ち
changeAnime( 0, 1, 101);                       -- 立ち
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    -2000,  0,  0);
setMoveKey(   1,   0,    -2000,  0,  0);
setMoveKey(   2,   0,    -2000,  0,  0);
setMoveKey(   3,   0,    -2000,  0,  0);
setMoveKey(   4,   0,    -2000,  0,  0);
setMoveKey(   5,   0,    -2000,  0,  0);
setMoveKey(   6,   0,    -2000,  0,  0);
setMoveKey(   20,  0,    -2000,  0,  0);
setScaleKey(  0,  0,  1.5,  1.5);
setScaleKey(   1,   0, 1.5, 1.5);
setScaleKey(   2,   0, 1.5, 1.5);
setScaleKey(   3,   0, 1.5, 1.5);
setScaleKey(   4,   0, 1.5, 1.5);
setScaleKey(   5,   0, 1.5, 1.5);
setScaleKey(   6,   0, 1.5, 1.5);
setScaleKey(  20,  0,  1.5,  1.5);

-- 敵

setMoveKey(   0,   1,    -2000,  0,  0);
setMoveKey(   1,   1,    -2000,  0,  0);
setMoveKey(   2,   1,    -2000,  0,  0);
setMoveKey(   3,   1,    -2000,  0,  0);
setMoveKey(   4,   1,    -2000,  0,  0);
setMoveKey(   5,   1,    -2000,  0,  0);
setMoveKey(   6,   1,    -2000,  0,  0);
setMoveKey(   20,  1,    -2000,  0,  0);
setScaleKey(   1,   1, 1.5, 1.5);
setScaleKey(   2,   1, 1.5, 1.5);
setScaleKey(   3,   1, 1.5, 1.5);
setScaleKey(   4,   1, 1.5, 1.5);
setScaleKey(   5,   1, 1.5, 1.5);
setScaleKey(   6,   1, 1.5, 1.5);
setScaleKey(   20,   1, 1.5, 1.5);


kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 気溜め_マーロンあり(240F)
------------------------------------------------------
spep_1 = 0;

shuchusen1 = entryEffectLife( spep_1+38, 906, 202, 0x100,  -1, 0,  0,  0);

setEffMoveKey(  spep_1+38,  shuchusen1,  0,  0);
setEffScaleKey(  spep_1+38,  shuchusen1,  1.55,  1.55);
setEffRotateKey(  spep_1+38,  shuchusen1,  0);
setEffAlphaKey(  spep_1+38,  shuchusen1,  255);
setEffMoveKey(  spep_1+150,  shuchusen1,  0,  0);
setEffScaleKey(  spep_1+150,  shuchusen1,  1.55,  1.55);
setEffRotateKey(  spep_1+150,  shuchusen1,  0);
setEffAlphaKey(  spep_1+150,  shuchusen1,  255);
setEffMoveKey(  spep_1+151,  shuchusen1,  0,  0);
setEffScaleKey(  spep_1+151,  shuchusen1,  2.17,  2.17);
setEffRotateKey(  spep_1+151,  shuchusen1,  0);
setEffAlphaKey(  spep_1+151,  shuchusen1,  255);
setEffMoveKey(  spep_1+240,  shuchusen1,  0,  0);
setEffScaleKey(  spep_1+240,  shuchusen1,  2.17,  2.17);
setEffRotateKey(  spep_1+240,  shuchusen1,  0);
setEffAlphaKey(  spep_1+240,  shuchusen1,  255);

--書き文字エントリー
ctzuzu = entryEffectLife( spep_1+38, 10013, 22,  0x100,  -1, 0,  0,  0);  --ズズズン

setEffShake(  spep_1+38,  ctzuzu,  42,  10);
setEffMoveKey( spep_1+38, ctzuzu, 22, 211.9 , 0 );
setEffMoveKey( spep_1+40, ctzuzu, 29.8, 266.6 , 0 );
setEffMoveKey( spep_1+42, ctzuzu, 49.4, 330.6 , 0 );
setEffMoveKey( spep_1+44, ctzuzu, 46.2, 352.4 , 0 );
setEffMoveKey( spep_1+46, ctzuzu, 51.2, 346.6 , 0 );
setEffMoveKey( spep_1+48, ctzuzu, 36.5, 321.7 , 0 );
setEffMoveKey( spep_1+50, ctzuzu, 46, 329.9 , 0 );
setEffMoveKey( spep_1+60, ctzuzu, 46, 329.9 , 0 );
setEffScaleKey( spep_1+38, ctzuzu, 1.12, 1.11 );
setEffScaleKey( spep_1+40, ctzuzu, 1.99, 1.98 );
setEffScaleKey( spep_1+42, ctzuzu, 2.84, 2.83 );
setEffScaleKey( spep_1+44, ctzuzu, 2.93, 2.92 );
setEffScaleKey( spep_1+60, ctzuzu, 2.93, 2.92 );
setEffRotateKey( spep_1+38, ctzuzu, 0 );
setEffRotateKey( spep_1+60, ctzuzu, 0 );
setEffAlphaKey( spep_1+38, ctzuzu, 255 );
setEffAlphaKey( spep_1+58, ctzuzu, 255 );
setEffAlphaKey( spep_1+60, ctzuzu, 0 );


tame = entryEffect(  spep_1,  SP_01,  0x80,  -1,  0,  0,  0);  --溜め

setEffScaleKey(  spep_1,  tame,  1.0,  1.0);
setEffMoveKey(  spep_1,  tame,  0,  0);
setEffRotateKey(  spep_1,  tame,  0);
setEffAlphaKey(  spep_1,  tame,  255);
setEffScaleKey(  spep_1+240,  tame,  1.0,  1.0);
setEffMoveKey(  spep_1+240,  tame,  0,  0);
setEffRotateKey(  spep_1+240,  tame,  0);
setEffAlphaKey(  spep_1+240,  tame,  255);

-- カットイン
speff = entryEffect(  spep_1+51,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_1+51,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー --
ctgogo = entryEffectLife( spep_1+64, 190006, 71, 0x100, -1, 0, 0, 510);    -- ゴゴゴゴ

setEffScaleKey(  spep_1+64,  ctgogo,  0.7,  0.7);
setEffMoveKey(  spep_1+64,  ctgogo,  0,  530);
setEffRotateKey(  spep_1+64,  ctgogo,  0);
setEffScaleKey(  spep_1+135,  ctgogo,  0.7,  0.7);
setEffMoveKey(  spep_1+135,  ctgogo,  0,  530);
setEffRotateKey(  spep_1+135,  ctgogo,  0);

--マーロンカットイン(味方側のみ)
marlon = entryEffect(  spep_1+177,  SP_14,  0x100,  -1,  0,  0,  0);  --マーロンカットイン

setEffScaleKey(  spep_1+177,  marlon,  1.0,  1.0);
setEffMoveKey(  spep_1+177,  marlon,  0,  0);
setEffRotateKey(  spep_1+177,  marlon,  0);
setEffAlphaKey(  spep_1+177,  marlon,  255);
setEffScaleKey(  spep_1+237,  marlon,  1.0,  1.0);
setEffMoveKey(  spep_1+237,  marlon,  0,  0);
setEffRotateKey(  spep_1+237,  marlon,  0);
setEffAlphaKey(  spep_1+237,  marlon,  255);

playSe(  spep_1+37,  SE_01);  --溜め
playSe(  spep_1+64,  SE_04);  --カットイン音
playSe(  spep_1+190,  SE_04);  --カットイン音

entryFade( spep_1+37, 0, 0, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_1+230, 8, 4, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- カード(90F)
------------------------------------------------------

spep_2 = spep_1+240;

playSe( spep_2, SE_05);
speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

shuchusen2 = entryEffectLife( spep_2, 906, 90, 0x100,  -1, 0,  0,  0);

setEffMoveKey(  spep_2,  shuchusen2,  0,  0);
setEffScaleKey(  spep_2,  shuchusen2,  1.0,  1.0);
setEffRotateKey(  spep_2,  shuchusen2,  0);
setEffAlphaKey(  spep_2,  shuchusen2,  255);
setEffMoveKey(  spep_2+90,  shuchusen2,  0,  0);
setEffScaleKey(  spep_2+90,  shuchusen2,  1.0,  1.0);
setEffRotateKey(  spep_2+90,  shuchusen2,  0);
setEffAlphaKey(  spep_2+90,  shuchusen2,  255);

entryFade( spep_2+73, 15, 9, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


------------------------------------------------------
-- 突進(70F)
------------------------------------------------------

spep_3 = spep_2+95;

shuchusen3 = entryEffectLife( spep_3, 906, 70, 0x100,  -1, 0,  0,  0);

setEffMoveKey(  spep_3,  shuchusen3,  0,  0);
setEffScaleKey(  spep_3,  shuchusen3,  1.25,  1.25);
setEffRotateKey(  spep_3,  shuchusen3,  0);
setEffAlphaKey(  spep_3,  shuchusen3,  255);
setEffMoveKey(  spep_3+70,  shuchusen3,  0,  0);
setEffScaleKey(  spep_3+70,  shuchusen3,  1.25,  1.25);
setEffRotateKey(  spep_3+70,  shuchusen3,  0);
setEffAlphaKey(  spep_3+70,  shuchusen3,  255);

--書き文字エントリー
ctzuo = entryEffectLife( spep_3,  10012, 60, 0x100, -1, 0, 76.5, 260.2 );  --ズオ

setEffShake(  spep_3,  ctzuo,  60,  20);  --揺れ
setEffMoveKey( spep_3, ctzuo, 76.5, 260.2 , 0 );
setEffMoveKey( spep_3+2, ctzuo, 95.1, 285.8 , 0 );
setEffMoveKey( spep_3+4, ctzuo, 105.6, 328.3 , 0 );
setEffMoveKey( spep_3+6, ctzuo, 130.2, 342.1 , 0 );
setEffMoveKey( spep_3+8, ctzuo, 120.3, 362.4 , 0 );
setEffMoveKey( spep_3+52, ctzuo, 129.5, 363.2 , 0 );
setEffMoveKey( spep_3+54, ctzuo, 154.6, 331.4 , 0 );
setEffMoveKey( spep_3+56, ctzuo, 148.1, 364.6 , 0 );
setEffMoveKey( spep_3+58, ctzuo, 179.1, 320.8 , 0 );
setEffMoveKey( spep_3+60, ctzuo, 191.4, 315.4 , 0 );
setEffScaleKey( spep_3 , ctzuo, 0.37, 0.28 );
setEffScaleKey( spep_3+2, ctzuo, 1.23, 0.94 );
setEffScaleKey( spep_3+4, ctzuo, 2.12, 1.62 );
setEffScaleKey( spep_3+6, ctzuo, 2.98, 2.28 );
setEffScaleKey( spep_3+50, ctzuo, 2.98, 2.28 );
setEffScaleKey( spep_3+52, ctzuo, 3.87, 2.96 );
setEffScaleKey( spep_3+54, ctzuo, 4.76, 3.64 );
setEffScaleKey( spep_3+56, ctzuo, 5.65, 4.32 );
setEffScaleKey( spep_3+58, ctzuo, 6.55, 5.01 );
setEffScaleKey( spep_3+60, ctzuo, 7.44, 5.69 );
setEffRotateKey( spep_3, ctzuo, 19.2 );
setEffRotateKey( spep_3+60, ctzuo, 19.2 );
setEffAlphaKey( spep_3, ctzuo, 255 );
setEffAlphaKey( spep_3+50, ctzuo, 255 );
setEffAlphaKey( spep_3+52, ctzuo, 204 );
setEffAlphaKey( spep_3+54, ctzuo, 153 );
setEffAlphaKey( spep_3+56, ctzuo, 102 );
setEffAlphaKey( spep_3+58, ctzuo, 51 );
setEffAlphaKey( spep_3+60, ctzuo, 0 );

tosshin = entryEffect(  spep_3,  SP_02,  0x80,  -1,  0,  0,  0);  --突進

setEffScaleKey(  spep_3,  tosshin,  1.0,  1.0);
setEffMoveKey(  spep_3,  tosshin,  0,  0);
setEffRotateKey(  spep_3,  tosshin,  0);
setEffAlphaKey(  spep_3,  tosshin,  255);
setEffScaleKey(  spep_3+70,  tosshin,  1.0,  1.0);
setEffMoveKey(  spep_3+70,  tosshin,  0,  0);
setEffRotateKey(  spep_3+70,  tosshin,  0);
setEffAlphaKey(  spep_3+70,  tosshin,  255);


playSe(  spep_3,  9);  --ダッシュ
entryFadeBg( spep_3, 0, 70, 0, 0, 0, 0, 210);          -- 黒　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_3+30; --エンドフェイズのフレーム数を置き換える

setMoveKey( SP_dodge-1, 0, 0,  0, 0); --味方位置
setMoveKey( SP_dodge, 0, 0,    1000, -1000); --味方位置

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


entryFade( spep_3+60, 6, 4, 7, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 格闘(220F)
------------------------------------------------------

spep_4 = spep_3+70;


shuchusen4 = entryEffectLife( spep_4, 906, 20, 0x100,  -1, 0,  0,  0);

setEffMoveKey(  spep_4,  shuchusen4,  0,  0);
setEffScaleKey(  spep_4,  shuchusen4,  1.77,  1.77);
setEffRotateKey(  spep_4,  shuchusen4,  0);
setEffAlphaKey(  spep_4,  shuchusen4,  255);
setEffMoveKey(  spep_4+20,  shuchusen4,  0,  0);
setEffScaleKey(  spep_4+20,  shuchusen4,  1.77,  1.77);
setEffRotateKey(  spep_4+20,  shuchusen4,  0);
setEffAlphaKey(  spep_4+20,  shuchusen4,  255);

shuchusen4a = entryEffectLife( spep_4+21, 906, 199, 0x100,  -1, 0,  0,  0);

setEffMoveKey(  spep_4+21,  shuchusen4a,  0,  0);
setEffScaleKey(  spep_4+21,  shuchusen4a,  1.35,  1.37);
setEffRotateKey(  spep_4+21,  shuchusen4a,  0);
setEffAlphaKey(  spep_4+21,  shuchusen4a,  255);
setEffMoveKey(  spep_4+220,  shuchusen4a,  0,  0);
setEffScaleKey(  spep_4+220,  shuchusen4a,  1.35,  1.37);
setEffRotateKey(  spep_4+220,  shuchusen4a,  0);
setEffAlphaKey(  spep_4+220,  shuchusen4a,  255);

--書き文字エントリー
ctbaki = entryEffectLife( spep_4+139,  10020, 20, 0x100, -1, 0, 199.1, 347.8 );  --バキ

setEffShake(  spep_4+139,  ctbaki,  20,  10);
setEffMoveKey( spep_4+139, ctbaki, 199.1, 347.8 , 0 );
setEffMoveKey( spep_4+141, ctbaki, 197.5, 345.4 , 0 );
setEffMoveKey( spep_4+143, ctbaki, 202.7, 343.3 , 0 );
setEffMoveKey( spep_4+148, ctbaki, 199, 343.4 , 0 );
setEffMoveKey( spep_4+150, ctbaki, 201.9, 345.1 , 0 );
setEffMoveKey( spep_4+159, ctbaki, 205.3, 348.4 , 0 );
setEffScaleKey( spep_4+139, ctbaki, 1.65, 1.65 );
setEffScaleKey( spep_4+144, ctbaki, 1.87, 1.87 );
setEffScaleKey( spep_4+146, ctbaki, 2.57, 2.57 );
setEffScaleKey( spep_4+148, ctbaki, 2.25, 2.25 );
setEffScaleKey( spep_4+150, ctbaki, 2.25, 2.25 );
setEffScaleKey( spep_4+152, ctbaki, 2.15, 2.15 );
setEffScaleKey( spep_4+154, ctbaki, 2.2, 2.2 );
setEffScaleKey( spep_4+155, ctbaki, 2.25, 2.25 );
setEffScaleKey( spep_4+156, ctbaki, 2.27, 2.27 );
setEffScaleKey( spep_4+157, ctbaki, 2.28, 2.28 );
setEffScaleKey( spep_4+159, ctbaki, 2.3, 2.3 );
setEffRotateKey( spep_4+139, ctbaki, 29.8 );
setEffRotateKey( spep_4+144, ctbaki, 42.4 );
setEffRotateKey( spep_4+146, ctbaki, 28 );
setEffRotateKey( spep_4+148, ctbaki, 39.5 );
setEffRotateKey( spep_4+150, ctbaki, 26.3 );
setEffRotateKey( spep_4+152, ctbaki, 40.3 );
setEffRotateKey( spep_4+154, ctbaki, 33.6 );
setEffRotateKey( spep_4+155, ctbaki, 26.9 );
setEffRotateKey( spep_4+156, ctbaki, 29.3 );
setEffRotateKey( spep_4+157, ctbaki, 31.7 );
setEffRotateKey( spep_4+159, ctbaki, 7.6 );
setEffAlphaKey( spep_4+139, ctbaki, 255 );
setEffAlphaKey( spep_4+153, ctbaki, 255 );
setEffAlphaKey( spep_4+156, ctbaki, 170 );
setEffAlphaKey( spep_4+157, ctbaki, 85 );
setEffAlphaKey( spep_4+159, ctbaki, 0 );


ctbago = entryEffectLife( spep_4+183,  10021, 27, 0x100, -1, 0, 163, 289.8 );  --バゴォ
setEffMoveKey( spep_4+183, ctbago, 163, 289.8 , 0 );
setEffMoveKey( spep_4+190, ctbago, 173, 309.3 , 0 );
setEffMoveKey( spep_4+192, ctbago, 182.6, 329.4 , 0 );
setEffMoveKey( spep_4+194, ctbago, 181.4, 316.6 , 0 );
setEffMoveKey( spep_4+196, ctbago, 160.1, 320.5 , 0 );
setEffMoveKey( spep_4+198, ctbago, 193.6, 330.2 , 0 );
setEffMoveKey( spep_4+200, ctbago, 195.3, 344.6 , 0 );
setEffMoveKey( spep_4+202, ctbago, 158.6, 333.5 , 0 );
setEffMoveKey( spep_4+204, ctbago, 165.9, 330.6 , 0 );
setEffMoveKey( spep_4+206, ctbago, 185, 319 , 0 );
setEffMoveKey( spep_4+208, ctbago, 183.7, 324.4 , 0 );
setEffMoveKey( spep_4+210, ctbago, 182.6, 329.4 , 0 );
setEffScaleKey( spep_4+183, ctbago, 1, 1 );
setEffScaleKey( spep_4+190, ctbago, 1.63, 1.63 );
setEffScaleKey( spep_4+192, ctbago, 2.26, 2.26 );
setEffScaleKey( spep_4+196, ctbago, 2.26, 2.26 );
setEffScaleKey( spep_4+198, ctbago, 2.25, 2.25 );
setEffScaleKey( spep_4+202, ctbago, 2.25, 2.25 );
setEffScaleKey( spep_4+204, ctbago, 2.26, 2.26 );
setEffScaleKey( spep_4+210, ctbago, 2.26, 2.26 );
setEffRotateKey( spep_4+183, ctbago, 9.8 );
setEffRotateKey( spep_4+190, ctbago, 10.8 );
setEffRotateKey( spep_4+192, ctbago, 9.9 );
setEffRotateKey( spep_4+194, ctbago, 10.7 );
setEffRotateKey( spep_4+196, ctbago, 9.8 );
setEffRotateKey( spep_4+198, ctbago, 10.7 );
setEffRotateKey( spep_4+200, ctbago, 9.8 );
setEffRotateKey( spep_4+202, ctbago, 10.7 );
setEffRotateKey( spep_4+204, ctbago, 9.8 );
setEffRotateKey( spep_4+206, ctbago, 10.7 );
setEffRotateKey( spep_4+208, ctbago, 9.8 );
setEffRotateKey( spep_4+210, ctbago, 9.8 );
setEffAlphaKey( spep_4+183, ctbago, 255 );
setEffAlphaKey( spep_4+190, ctbago, 232 );
setEffAlphaKey( spep_4+192, ctbago, 209 );
setEffAlphaKey( spep_4+194, ctbago, 185 );
setEffAlphaKey( spep_4+196, ctbago, 162 );
setEffAlphaKey( spep_4+198, ctbago, 139 );
setEffAlphaKey( spep_4+200, ctbago, 116 );
setEffAlphaKey( spep_4+202, ctbago, 93 );
setEffAlphaKey( spep_4+204, ctbago, 255 );
setEffAlphaKey( spep_4+206, ctbago, 46 );
setEffAlphaKey( spep_4+208, ctbago, 23 );
setEffAlphaKey( spep_4+210, ctbago, 0 );

--敵の動き
setDisp( spep_4, 1, 1 );
changeAnime( spep_4, 1, 100 );

setMoveKey( spep_4+0, 1, -0.8, 28.1 , 0 );
setMoveKey( spep_4+2, 1, 2.5, 28.2 , 0 );
setMoveKey( spep_4+4, 1, 8, 28 , 0 );
setMoveKey( spep_4+6, 1, 10.3, 27.4 , 0 );
setMoveKey( spep_4+8, 1, 15.8, 27.9 , 0 );
setMoveKey( spep_4+10, 1, 17.5, 28.1 , 0 );
setMoveKey( spep_4+12, 1, 23.5, 27.3 , 0 );
setMoveKey( spep_4+14, 1, 25.4, 28.3 , 0 );
setMoveKey( spep_4+16, 1, 31, 28.6 , 0 );
setMoveKey( spep_4+18, 1, 33.4, 27.2 , 0 );
setMoveKey( spep_4+20, 1, 39.5, 29.2 , 0 );
setMoveKey( spep_4+22, 1, 41.4, 27.5 , 0 );
setMoveKey( spep_4+24, 1, 47.6, 27.9 , 0 );
setMoveKey( spep_4+26, 1, 48.4, 27 , 0 );
setMoveKey( spep_4+28, 1, 54.8, 29.3 , 0 );
setMoveKey( spep_4+30, 1, 55.4, 28.2 , 0 );
setMoveKey( spep_4+32, 1, 62.9, 29.7 , 0 );
setMoveKey( spep_4+34, 1, 64.4, 25.8 , 0 );
setMoveKey( spep_4+36, 1, 71.7, 28.9 , 0 );
setMoveKey( spep_4+38, 1, 71.3, 26.2 , 0 );
setMoveKey( spep_4+40, 1, 78.8, 28.5 , 0 );
setMoveKey( spep_4+42, 1, 79, 26.1 , 0 );
setMoveKey( spep_4+44, 1, 86.7, 28.9 , 0 );
setMoveKey( spep_4+46, 1, 86.6, 28.6 , 0 );
setMoveKey( spep_4+48, 1, 93.4, 26.1 , 0 );
setMoveKey( spep_4+50, 1, 93.9, 28.7 , 0 );
setMoveKey( spep_4+52, 1, 102.9, 28.5 , 0 );
setMoveKey( spep_4+54, 1, 102.5, 25.2 , 0 );
setMoveKey( spep_4+56, 1, 2000, 2000 , 0 );
setMoveKey( spep_4+57, 1, 2000, 2000 , 0 );
setMoveKey( spep_4+58, 1, 2000, 2000 , 0 );
setMoveKey( spep_4+132, 1, 2000, 2000 , 0 );
setScaleKey( spep_4+0, 1, 1.2, 1.2 );
setScaleKey( spep_4+56, 1, 1.2, 1.2 );
setRotateKey( spep_4+0, 1, 0 );
setRotateKey( spep_4+56, 1, 0 );
setRotateKey( spep_4+132, 1, 0 );


changeAnime( spep_4+133, 1, 104 );  --ガード

setMoveKey( spep_4+133,1, 2.9, 13.6 , 0 );
setMoveKey( spep_4+136,1, 12.5, 28.5 , 0 );
setScaleKey( spep_4+133,1, 2.87, 2.87 );
setScaleKey( spep_4+136,1, 2.46, 2.46 );
setRotateKey( spep_4+133,1, 0 );
setRotateKey( spep_4+136,1, 0 );

changeAnime( spep_4+137, 1, 106 ); --仰け反り

setMoveKey( spep_4+137,1, -37, 83.4 , 0 );
setMoveKey( spep_4+142,1, -26.6, 55.7 , 0 );
setMoveKey( spep_4+144,1, -51.5, 49.5 , 0 );
setMoveKey( spep_4+146,1, -19.8, 69.1 , 0 );
setMoveKey( spep_4+148,1, -20.6, 37.2 , 0 );
setMoveKey( spep_4+150,1, -37.5, 63.5 , 0 );
setMoveKey( spep_4+152,1, -21.9, 31.4 , 0 );
setMoveKey( spep_4+154,1, -19.5, 61.2 , 0 );
setMoveKey( spep_4+156,1, -20.6, 32.2 , 0 );
setMoveKey( spep_4+158,1, -27.4, 57.1 , 0 );
setMoveKey( spep_4+160,1, -10.3, 47.7 , 0 );
setMoveKey( spep_4+162,1, -32.8, 53.1 , 0 );
setMoveKey( spep_4+164,1, -17.9, 60.3 , 0 );
setMoveKey( spep_4+166,1, -29.5, 57.5 , 0 );
setMoveKey( spep_4+168,1, -21.4, 59.4 , 0 );
setMoveKey( spep_4+170,1, -25.9, 65.6 , 0 );
setMoveKey( spep_4+172,1, -23.4, 64.6 , 0 );
setMoveKey( spep_4+174,1, -22, 69.9 , 0 );
setMoveKey( spep_4+176,1, -20.8, 75.6 , 0 );
setMoveKey( spep_4+178,1, -20, 75.6 , 0 );
setMoveKey( spep_4+180,1, -10.4, 85.6 , 0 );
setMoveKey( spep_4+182,1, -19.7, 90.7 , 0 );
setScaleKey( spep_4+137,1, 2.96, 2.96 );
setScaleKey( spep_4+142,1, 2.27, 2.27 );
setScaleKey( spep_4+144,1, 2.58, 2.58 );
setScaleKey( spep_4+146,1, 1.97, 1.97 );
setScaleKey( spep_4+148,1, 2.22, 2.22 );
setScaleKey( spep_4+150,1, 1.98, 1.98 );
setScaleKey( spep_4+152,1, 2.09, 2.09 );
setScaleKey( spep_4+154,1, 2, 2 );
setScaleKey( spep_4+156,1, 2.01, 2.01 );
setScaleKey( spep_4+158,1, 2.01, 2.01 );
setScaleKey( spep_4+160,1, 2.03, 2.03 );
setScaleKey( spep_4+162,1, 2.04, 2.04 );
setScaleKey( spep_4+164,1, 2.06, 2.06 );
setScaleKey( spep_4+166,1, 2.08, 2.08 );
setScaleKey( spep_4+168,1, 2.1, 2.1 );
setScaleKey( spep_4+170,1, 2.12, 2.12 );
setScaleKey( spep_4+172,1, 2.13, 2.13 );
setScaleKey( spep_4+174,1, 2.15, 2.15 );
setScaleKey( spep_4+176,1, 2.17, 2.17 );
setScaleKey( spep_4+178,1, 2.18, 2.18 );
setScaleKey( spep_4+180,1, 2.19, 2.19 );
setScaleKey( spep_4+182,1, 2.21, 2.21 );
setRotateKey( spep_4+137,1, -43.5 );
setRotateKey( spep_4+168,1, -43.5 );
setRotateKey( spep_4+170,1, -43.4 );
setRotateKey( spep_4+172,1, -43.3 );
setRotateKey( spep_4+174,1, -43.2 );
setRotateKey( spep_4+176,1, -43 );
setRotateKey( spep_4+178,1, -42.8 );
setRotateKey( spep_4+180,1, -42.5 );
setRotateKey( spep_4+182,1, -42.2 );


changeAnime( spep_4+183, 1, 108 );  --くの字

setMoveKey( spep_4+183,1, 84.1, 103 , 0 );
setMoveKey( spep_4+185,1, 116.7, 98.9 , 0 );
setMoveKey( spep_4+190,1, 96.9, 124.2 , 0 );
setMoveKey( spep_4+192,1, 129.9, 142.3 , 0 );
setMoveKey( spep_4+194,1, 111.1, 124.7 , 0 );
setMoveKey( spep_4+196,1, 132.9, 139.4 , 0 );
setMoveKey( spep_4+198,1, 123.9, 125.6 , 0 );
setScaleKey( spep_4+183,1, 2.2, 2.2 );
setScaleKey( spep_4+185,1, 2.14, 2.14 );
setScaleKey( spep_4+190,1, 2.09, 2.09 );
setScaleKey( spep_4+192,1, 2.06, 2.06 );
setScaleKey( spep_4+194,1, 2.05, 2.05 );
setScaleKey( spep_4+196,1, 2.04, 2.04 );
setScaleKey( spep_4+198,1, 2.03, 2.03 );
setRotateKey( spep_4+183,1, -7.9 );
setRotateKey( spep_4+198,1, -7.9 );

changeAnime( spep_4+199, 1, 106);   --仰け反り

setMoveKey( spep_4+199,1, 179.3, 233.8 , 0 );
setMoveKey( spep_4+202,1, 256.8, 249.3 , 0 );
setMoveKey( spep_4+204,1, 315.4, 263.5 , 0 );
setMoveKey( spep_4+206,1, 365.3, 279.3 , 0 );
setMoveKey( spep_4+208,1, 400.4, 283.6 , 0 );
setMoveKey( spep_4+210,1, 419, 293.7 , 0 );
setMoveKey( spep_4+212,1, 422.2, 289.6 , 0 );
setMoveKey( spep_4+214,1, 421.1, 293.2 , 0 );
setMoveKey( spep_4+216,1, 417.2, 286.5 , 0 );
setMoveKey( spep_4+218,1, 2000, 2000 , 0 );
setMoveKey( spep_4+220,1, 2000, 2000 , 0 );
setScaleKey( spep_4+199,1, 1.88, 1.88 );
setScaleKey( spep_4+202,1, 1.6, 1.6 );
setScaleKey( spep_4+204,1, 1.38, 1.38 );
setScaleKey( spep_4+206,1, 1.2, 1.2 );
setScaleKey( spep_4+208,1, 1.08, 1.08 );
setScaleKey( spep_4+210,1, 1, 1 );
setScaleKey( spep_4+212,1, 0.97, 0.97 );
setScaleKey( spep_4+214,1, 0.97, 0.97 );
setScaleKey( spep_4+216,1, 0.96, 0.96 );
setScaleKey( spep_4+220,1, 0.96, 0.96 );
setRotateKey( spep_4+199,1, -21.8 );
setRotateKey( spep_4+202,1, -19.4 );
setRotateKey( spep_4+204,1, -17.4 );
setRotateKey( spep_4+206,1, -15.8 );
setRotateKey( spep_4+208,1, -14.7 );
setRotateKey( spep_4+210,1, -14 );
setRotateKey( spep_4+212,1, -13.8 );
setRotateKey( spep_4+220,1, -13.8 );


kakutou_f = entryEffect(  spep_4,  SP_03,  0x100,  -1,  0,  0,  0);  --格闘前

setEffScaleKey(  spep_4,  kakutou_f,  1.0,  1.0);
setEffMoveKey(  spep_4,  kakutou_f,  0,  0);
setEffRotateKey(  spep_4,  kakutou_f,  0);
setEffAlphaKey(  spep_4,  kakutou_f,  255);
setEffScaleKey(  spep_4+220,  kakutou_f,  1.0,  1.0);
setEffMoveKey(  spep_4+220,  kakutou_f,  0,  0);
setEffRotateKey(  spep_4+220,  kakutou_f,  0);
setEffAlphaKey(  spep_4+220,  kakutou_f,  255);


ryu1 = entryEffectLife(  spep_4,  921,  54,  0x80,  -1,  0,  0,  0);  --流線広がり

setEffScaleKey(  spep_4,  ryu1,  1.3,  1.3);
setEffMoveKey(  spep_4,  ryu1,  0,  0);
setEffRotateKey(  spep_4,  ryu1,  -180);
setEffAlphaKey(  spep_4,  ryu1,  255);
setEffScaleKey(  spep_4+54,  ryu1,  1.3,  1.3);
setEffMoveKey(  spep_4+54,  ryu1,  0,  0);
setEffRotateKey(  spep_4+54,  ryu1,  -180);
setEffAlphaKey(  spep_4+54,  ryu1,  255);

ryu2 = entryEffectLife(  spep_4,  920,  147,  0x80,  -1,  0,  0,  0);  --流線横線

setEffScaleKey(  spep_4,  ryu2,  2.14,  1.12);
setEffMoveKey(  spep_4,  ryu2,  0,  0);
setEffRotateKey(  spep_4,  ryu2,  -180);
setEffAlphaKey(  spep_4,  ryu2,  0);
setEffScaleKey(  spep_4+54,  ryu2,  2.14,  1.12);
setEffMoveKey(  spep_4+54,  ryu2,  0,  0);
setEffRotateKey(  spep_4+54,  ryu2,  -180);
setEffAlphaKey(  spep_4+54,  ryu2,  0);
setEffScaleKey(  spep_4+55,  ryu2,  2.14,  1.12);
setEffMoveKey(  spep_4+55,  ryu2,  0,  0);
setEffRotateKey(  spep_4+55,  ryu2,  -180);
setEffAlphaKey(  spep_4+55,  ryu2,  255);
setEffScaleKey(  spep_4+147,  ryu2,  2.14,  1.12);
setEffMoveKey(  spep_4+147,  ryu2,  0,  0);
setEffRotateKey(  spep_4+147,  ryu2,  -180);
setEffAlphaKey(  spep_4+147,  ryu2,  255);

ryu3 = entryEffectLife(  spep_4,  921,  220,  0x80,  -1,  0,  0,  0);  --流線広がり

setEffScaleKey(  spep_4,  ryu3,  1.3,  1.3);
setEffMoveKey(  spep_4,  ryu3,  0,  0);
setEffRotateKey(  spep_4,  ryu3,  -3);
setEffAlphaKey(  spep_4,  ryu3,  0);
setEffScaleKey(  spep_4+147,  ryu3,  1.3,  1.3);
setEffMoveKey(  spep_4+147,  ryu3,  0,  0);
setEffRotateKey(  spep_4+147,  ryu3,  -3);
setEffAlphaKey(  spep_4+147,  ryu3,  0);
setEffScaleKey(  spep_4+148,  ryu3,  1.3,  1.3);
setEffMoveKey(  spep_4+148,  ryu3,  0,  0);
setEffRotateKey(  spep_4+148,  ryu3,  -3);
setEffAlphaKey(  spep_4+148,  ryu3,  255);
setEffScaleKey(  spep_4+220,  ryu3,  1.3,  1.3);
setEffMoveKey(  spep_4+220,  ryu3,  0,  0);
setEffRotateKey(  spep_4+220,  ryu3,  -3);
setEffAlphaKey(  spep_4+220,  ryu3,  255);

kakutou_b = entryEffect(  spep_4,  SP_04,  0x80,  -1,  0,  0,  0);  --格闘後

setEffScaleKey(  spep_4,  kakutou_b,  1.0,  1.0);
setEffMoveKey(  spep_4,  kakutou_b,  0,  0);
setEffRotateKey(  spep_4,  kakutou_b,  0);
setEffAlphaKey(  spep_4,  kakutou_b,  255);
setEffScaleKey(  spep_4+220,  kakutou_b,  1.0,  1.0);
setEffMoveKey(  spep_4+220,  kakutou_b,  0,  0);
setEffRotateKey(  spep_4+220,  kakutou_b,  0);
setEffAlphaKey(  spep_4+220,  kakutou_b,  255);


playSe(  spep_4+101,  1003);  --パンチ(悟天)
playSe(  spep_4+118,  1003);  --パンチ(トランクス)
playSe(  spep_4+137,  1009);  --パンチ
playSe(  spep_4+183,  1010);  --キック


entryFade( spep_4+52, 2, 1, 5, fcolor_r, fcolor_g, fcolor_b, 200);     -- white fade
entryFade( spep_4+210, 6, 8, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryFadeBg( spep_4, 0, 220, 0, 0, 0, 0, 210);          -- 黒　背景

------------------------------------------------------
-- 発射(120F)
------------------------------------------------------

spep_5 = spep_4+222;

--敵の動き
setDisp( spep_5, 1, 0 );
changeAnime(  spep_5,  1,  107);

setMoveKey(  spep_5,  1,  2000,  2000,  0);
setMoveKey(  spep_5+120,  1,  2000,  2000,  0);
setScaleKey(  spep_5,  1,  1.0,  1.0);
setScaleKey(  spep_5+120,  1,  1.0,  1.0);
setRotateKey(  spep_5,  1,  0);
setRotateKey(  spep_5+120,  1,  0);


shuchusen5 = entryEffectLife( spep_5, 906, 50, 0x100,  -1, 0,  0,  0);  --集中線

setEffMoveKey(  spep_5,  shuchusen5,  0,  0);
setEffScaleKey(  spep_5,  shuchusen5,  1.5,  1.5);
setEffRotateKey(  spep_5,  shuchusen5,  0);
setEffAlphaKey(  spep_5,  shuchusen5,  255);
setEffMoveKey(  spep_5+38,  shuchusen5,  0,  0);
setEffScaleKey(  spep_5+38,  shuchusen5,  1.5,  1.5);
setEffRotateKey(  spep_5+38,  shuchusen5,  0);
setEffAlphaKey(  spep_5+38,  shuchusen5,  255);
setEffMoveKey(  spep_5+39,  shuchusen5,  0,  0);
setEffScaleKey(  spep_5+39,  shuchusen5,  1.5,  1.5);
setEffRotateKey(  spep_5+39,  shuchusen5,  0);
setEffAlphaKey(  spep_5+39,  shuchusen5,  0);
setEffMoveKey(  spep_5+50,  shuchusen5,  0,  0);
setEffScaleKey(  spep_5+50,  shuchusen5,  2.5,  2.5);
setEffRotateKey(  spep_5+50,  shuchusen5,  0);
setEffAlphaKey(  spep_5+50,  shuchusen5,  0);

--書き文字エントリー
ctzuo2 = entryEffectLife( spep_5+5,  10012, 26, 0x100, -1, 0, 166.5, 310.2 );  --ズオッ
setEffMoveKey( spep_5+5, ctzuo2, 166.5, 310.2 , 0 );
setEffMoveKey( spep_5+7, ctzuo2, 169.5, 305.5 , 0 );
setEffMoveKey( spep_5+9, ctzuo2, 167.6, 310.8 , 0 );
setEffMoveKey( spep_5+11, ctzuo2, 173.1, 301 , 0 );
setEffMoveKey( spep_5+13, ctzuo2, 168.6, 311.4 , 0 );
setEffMoveKey( spep_5+15, ctzuo2, 174.8, 298.7 , 0 );
setEffMoveKey( spep_5+17, ctzuo2, 168.6, 311.4 , 0 );
setEffMoveKey( spep_5+19, ctzuo2, 174.8, 298.7 , 0 );
setEffMoveKey( spep_5+21, ctzuo2, 168.6, 311.4 , 0 );
setEffMoveKey( spep_5+23, ctzuo2, 174.8, 298.7 , 0 );
setEffMoveKey( spep_5+25, ctzuo2, 168.6, 311.4 , 0 );
setEffMoveKey( spep_5+27, ctzuo2, 176.6, 296.6 , 0 );
setEffMoveKey( spep_5+29, ctzuo2, 169.7, 312.1 , 0 );
setEffMoveKey( spep_5+31, ctzuo2, 170.3, 312.4 , 0 );

setEffScaleKey( spep_5+5, ctzuo2, 0.37, 0.28 );
setEffScaleKey( spep_5+7, ctzuo2, 0.74, 0.57 );
setEffScaleKey( spep_5+9, ctzuo2, 1.12, 0.85 );
setEffScaleKey( spep_5+11, ctzuo2, 1.49, 1.14 );
setEffScaleKey( spep_5+13, ctzuo2, 1.86, 1.42 );
setEffScaleKey( spep_5+25, ctzuo2, 1.86, 1.42 );
setEffScaleKey( spep_5+27, ctzuo2, 2.23, 1.71 );
setEffScaleKey( spep_5+29, ctzuo2, 2.6, 1.99 );
setEffScaleKey( spep_5+31, ctzuo2, 2.98, 2.28 );

setEffRotateKey( spep_5+5, ctzuo2, 19.2 );
setEffRotateKey( spep_5+31, ctzuo2, 19.2 );

setEffAlphaKey( spep_5+5, ctzuo2, 255 );
setEffAlphaKey( spep_5+25, ctzuo2, 255 );
setEffAlphaKey( spep_5+27, ctzuo2, 170 );
setEffAlphaKey( spep_5+29, ctzuo2, 85 );
setEffAlphaKey( spep_5+31, ctzuo2, 0 );

ryu4 = entryEffectLife(  spep_5,  921,  116,  0x80,  -1,  0,  0,  0);  --流線広がり

setEffScaleKey(  spep_5,  ryu4,  1.59,  1.59);
setEffMoveKey(  spep_5,  ryu4,  0,  0);
setEffRotateKey(  spep_5,  ryu4,  -151);
setEffAlphaKey(  spep_5,  ryu4,  255);
setEffScaleKey(  spep_5+116,  ryu4,  1.59,  1.59);
setEffMoveKey(  spep_5+116,  ryu4,  0,  0);
setEffRotateKey(  spep_5+116,  ryu4,  -151);
setEffAlphaKey(  spep_5+116,  ryu4,  255);

hassya = entryEffectLife(  spep_5,  SP_05,  120,  0x80,  -1,  0,  0,  0);  --発射

setEffScaleKey(  spep_5,  hassya,  1.0,  1.0);
setEffMoveKey(  spep_5,  hassya,  0,  0);
setEffRotateKey(  spep_5,  hassya,  0);
setEffAlphaKey(  spep_5,  hassya,  255);
setEffScaleKey(  spep_5+116,  hassya,  1.0,  1.0);
setEffMoveKey(  spep_5+116,  hassya,  0,  0);
setEffRotateKey(  spep_5+116,  hassya,  0);
setEffAlphaKey(  spep_5+116,  hassya,  255);
setEffScaleKey(  spep_5+117,  hassya,  1.0,  1.0);
setEffMoveKey(  spep_5+117,  hassya,  0,  0);
setEffRotateKey(  spep_5+117,  hassya,  0);
setEffAlphaKey(  spep_5+117,  hassya,  0);
setEffScaleKey(  spep_5+120,  hassya,  1.0,  1.0);
setEffMoveKey(  spep_5+120,  hassya,  0,  0);
setEffRotateKey(  spep_5+120,  hassya,  0);
setEffAlphaKey(  spep_5+120,  hassya,  0);

playSe(  spep_5+5,  SE_05);  --発射

entryFadeBg( spep_5, 0, 36, 0, 176, 174, 175, 255);          -- 灰色　背景
entryFadeBg( spep_5+36, 0, 3, 2, 3, 130, 130, 255);          -- 緑　背景
entryFadeBg( spep_5+38, 0, 79, 0, 0, 0, 0, 255);          -- 黒　背景

------------------------------------------------------
-- 気弾(40F)
------------------------------------------------------

spep_6 = spep_5+117;

--敵の動き
setDisp( spep_6, 1, 1 );
changeAnime( spep_6, 1, 107 );

setShakeChara(  spep_6,  1,  38,  10);
setMoveKey( spep_6, 1, 703.3, -729.3 , 0 );
setMoveKey( spep_6+2, 1, 633.3, -654.6 , 0 );
setMoveKey( spep_6+4, 1, 545.4, -596.1 , 0 );
setMoveKey( spep_6+6, 1, 473.5, -525.5 , 0 );
setMoveKey( spep_6+8, 1, 385.5, -466.9 , 0 );
setMoveKey( spep_6+10, 1, 313.5, -396.3 , 0 );
setMoveKey( spep_6+12, 1, 225.6, -337.8 , 0 );
setMoveKey( spep_6+14, 1, 153.7, -267.2 , 0 );
setMoveKey( spep_6+16, 1, 145.2, -272.8 , 0 );
setMoveKey( spep_6+18, 1, 152.7, -266.5 , 0 );
setMoveKey( spep_6+20, 1, 144.2, -272.2 , 0 );
setMoveKey( spep_6+22, 1, 151.7, -265.8 , 0 );
setMoveKey( spep_6+35, 1, 147.7, -263.2 , 0 );
setMoveKey( spep_6+38, 1, 147.7, -263.2 , 0 );
setMoveKey( spep_6+39, 1, 5000, -5000 , 0 );
setMoveKey( spep_6+40, 1, 5000, -5000 , 0 );
setScaleKey( spep_6, 1, 1, 1 );
setScaleKey( spep_6+2, 1, 0.96, 0.96 );
setScaleKey( spep_6+18, 1, 0.71, 0.71 );
setScaleKey( spep_6+36, 1, 0.68, 0.68 );
setScaleKey( spep_6+40, 1, 0.68, 0.68 );
setRotateKey( spep_6, 1, 0 );
setRotateKey( spep_6+40, 1, 0 );

ryu5 = entryEffectLife(  spep_6,  921,  40,  0x80,  -1,  0,  0,  0);  --流線広がり

setEffScaleKey(  spep_6,  ryu5,  1.69,  1.69);
setEffMoveKey(  spep_6,  ryu5,  0,  0);
setEffRotateKey(  spep_6,  ryu5,  -137);
setEffAlphaKey(  spep_6,  ryu5,  255);
setEffScaleKey(  spep_6+36,  ryu5,  1.69,  1.69);
setEffMoveKey(  spep_6+36,  ryu5,  0,  0);
setEffRotateKey(  spep_6+36,  ryu5,  -137);
setEffAlphaKey(  spep_6+36,  ryu5,  255);
setEffScaleKey(  spep_6+37,  ryu5,  1.69,  1.69);
setEffMoveKey(  spep_6+37,  ryu5,  0,  0);
setEffRotateKey(  spep_6+37,  ryu5,  -137);
setEffAlphaKey(  spep_6+37,  ryu5,  0);
setEffScaleKey(  spep_6+40,  ryu5,  1.69,  1.69);
setEffMoveKey(  spep_6+40,  ryu5,  0,  0);
setEffRotateKey(  spep_6+40,  ryu5,  -137);
setEffAlphaKey(  spep_6+40,  ryu5,  0);

kidan = entryEffect(  spep_6,  SP_06,  0x80,  -1,  0,  0,  0);  --気弾

setEffScaleKey(  spep_6,  kidan,  1.0,  1.0);
setEffMoveKey(  spep_6,  kidan,  0,  0);
setEffRotateKey(  spep_6,  kidan,  0);
setEffAlphaKey(  spep_6,  kidan,  255);
setEffScaleKey(  spep_6+40,  kidan,  1.0,  1.0);
setEffMoveKey(  spep_6+40,  kidan,  0,  0);
setEffRotateKey(  spep_6+40,  kidan,  0);
setEffAlphaKey(  spep_6+40,  kidan,  255);

--書き文字
ctzudo = entryEffectLife( spep_6,  10014, 40, 0x100, -1, 0, 57.8, 323.4 );  --ズドド

setEffShake(  spep_6,  ctzudo,  34,  10);
setEffMoveKey( spep_6, ctzudo, 57.8, 323.4 , 0 );
setEffRotateKey( spep_6, ctzudo, 80.1 );
setEffScaleKey( spep_6, ctzudo, 2.87, 3.72 );
setEffAlphaKey( spep_6, ctzudo, 255 );
setEffMoveKey( spep_6+35, ctzudo, 57.8, 323.4 , 0 );
setEffScaleKey( spep_6+35, ctzudo, 2.87, 3.72 );
setEffRotateKey( spep_6+35, ctzudo, 80.1 );
setEffAlphaKey( spep_6+35, ctzudo, 255 );
setEffMoveKey( spep_6+36, ctzudo, 57.8, 323.4 , 0 );
setEffScaleKey( spep_6+36, ctzudo, 2.87, 3.72 );
setEffRotateKey( spep_6+36, ctzudo, 80.1 );
setEffAlphaKey( spep_6+36, ctzudo, 0 );
setEffMoveKey( spep_6+40, ctzudo, 57.8, 323.4 , 0 );
setEffScaleKey( spep_6+40, ctzudo, 2.87, 3.72 );
setEffRotateKey( spep_6+40, ctzudo, 80.1 );
setEffAlphaKey( spep_6+40, ctzudo, 0 );

playSe(  spep_6,  SE_06);  --のびる発射

entryFadeBg( spep_6, 0, 40, 0, 0, 0, 0, 200);          -- 薄暗い　背景
--entryFade( spep_6+53, 0, 3, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- ギャン(60F)
------------------------------------------------------

spep_7 = spep_6+36;

--敵の動き
setDisp( spep_7, 1, 0 );
changeAnime(  spep_7,  1,  107);

setMoveKey(  spep_7,  1,  5000,  -5000,  0);
setMoveKey(  spep_7+60,  1,  5000,  -5000,  0);
setScaleKey(  spep_7,  1,  1.0,  1.0);
setScaleKey(  spep_7+60,  1,  1.0,  1.0);
setRotateKey(  spep_7,  1,  0);
setRotateKey(  spep_7+60,  1,  0);


-- 書き文字エントリー --
ctgyan = entryEffectLife( spep_7, 10006, 58, 0x100, -1, 0, 0, 300);  -- ギャン

setEffScaleKey( spep_7, ctgyan, 1.8, 1.8);
setEffAlphaKey( spep_7, ctgyan, 255);
setEffScaleKey( spep_7+10, ctgyan, 3.8, 3.8);
setEffScaleKey( spep_7+58, ctgyan, 4.3, 4.3);
setEffAlphaKey( spep_7+58, ctgyan, 255);
setEffShake( spep_7, ctgyan, 58, 10);

gayn = entryEffect( spep_7, 190014, 0x80,  -1, 0,  0,  0);   --ギャン

setEffScaleKey(  spep_7,  gayn,  1.0,  1.0);
setEffMoveKey(  spep_7,  gayn,  0,  0);
setEffRotateKey(  spep_7,  gayn,  0);
setEffAlphaKey(  spep_7,  gayn,  255);
setEffScaleKey(  spep_7+58,  gayn,  1.0,  1.0);
setEffMoveKey(  spep_7+58,  gayn,  0,  0);
setEffRotateKey(  spep_7+58,  gayn,  0);
setEffAlphaKey(  spep_7+60,  gayn,  255);

playSe(  spep_7, SE_09);

entryFade( spep_7+43, 14, 5, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--[[
------------------------------------------------------
--爆発(114F)
------------------------------------------------------

spep_8 = spep_7+60;

setDisp( spep_8, 1, 1);
setMoveKey(  spep_8-1,    1,  5000,  -5000,   0);
setScaleKey( spep_8-1,    1,  1.0, 1.0);
setMoveKey(  spep_8,    1,    5000,   -5000,   0);
setScaleKey( spep_8,    1,  0.1, 0.1);
setMoveKey(  spep_8+8,    1,    5000,   -5000,   0);
setScaleKey( spep_8+8,    1,  0.1, 0.1);

changeAnime( spep_8+1, 1, 107);                         -- 手前ダメージ
bakuha = entryEffect( spep_8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発

setEffMoveKey(  spep_8,  bakuha,  0,  0);
setEffScaleKey(  spep_8,  bakuha,  1.0,  1.0);
setEffRotateKey(  spep_8,  bakuha,  0);
setEffAlphaKey(  spep_8,  bakuha,  255);
setEffMoveKey(  spep_8+65,  bakuha,  0,  0);
setEffScaleKey(  spep_8+65,  bakuha,  1.0,  1.0);
setEffRotateKey(  spep_8+65,  bakuha,  0);
setEffAlphaKey(  spep_8+65,  bakuha,  255);
setEffMoveKey(  spep_8+66,  bakuha,  0,  0);
setEffScaleKey(  spep_8+66,  bakuha,  1.0,  1.0);
setEffRotateKey(  spep_8+66,  bakuha,  0);
setEffAlphaKey(  spep_8+66,  bakuha,  0);
setEffMoveKey(  spep_8+114,  bakuha,  0,  0);
setEffScaleKey(  spep_8+114,  bakuha,  1.0,  1.0);
setEffRotateKey(  spep_8+114,  bakuha,  0);
setEffAlphaKey(  spep_8+114,  bakuha,  0);

playSe( spep_8, SE_10);

setMoveKey(  spep_8+9,   1,    0,   0,   128);
setMoveKey(  spep_8+15,   1,  -60,  -200,  -100);
setMoveKey(  spep_8+65,   1,  -60,  -200,  -100);
setMoveKey(  spep_8+66,   1,  -2000,  -2000,  -100);
setMoveKey(  spep_8+67,   1,  -2000,  -2000,  -100);
setMoveKey(  spep_8+68,   1,  -2000,  -2000,  -100);
--setMoveKey(  486,   1,  -60,  -200,  -100);
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
ctga_2 = entryEffectLife( spep_8+15, 10005, 50, 0, -1, 0, -50, 230); -- ガッ
setEffShake(spep_8+15, ctga_2, 30, 10);
setEffRotateKey( spep_8+15, ctga_2, -24);
setEffScaleKey( spep_8+15, ctga_2, 4.0, 4.0);
setEffScaleKey( spep_8+16, ctga_2, 2.0, 2.0);
setEffScaleKey( spep_8+17, ctga_2, 2.6, 2.6);
setEffScaleKey( spep_8+18, ctga_2, 4.0, 4.0);
setEffScaleKey( spep_8+19, ctga_2, 2.6, 2.6);
setEffScaleKey( spep_8+20, ctga_2, 3.8, 3.8);
setEffScaleKey( spep_8+65, ctga_2, 3.8, 3.8);
setEffAlphaKey( spep_8+15, ctga_2, 255);
setEffAlphaKey( spep_8+65, ctga_2, 255);
--setEffAlphaKey( spep_8+115, ctga_2, 0);

playSe( spep_8+3, SE_11);

shuchusen6 = entryEffectLife( spep_8+15, 906, 32, 0x00,  -1, 0,  0,  0);   -- 集中線

setEffMoveKey(  spep_8+15,  shuchusen6,  0,  0);
setEffScaleKey(  spep_8+15,  shuchusen6,  1.0,  1.0);
setEffRotateKey(  spep_8+15,  shuchusen6,  0);
setEffAlphaKey(  spep_8+15,  shuchusen6,  255);
setEffMoveKey(  spep_8+27,  shuchusen6,  0,  0);
setEffScaleKey(  spep_8+27,  shuchusen6,  1.0,  1.0);
setEffRotateKey(  spep_8+27,  shuchusen6,  0);
setEffAlphaKey(  spep_8+27,  shuchusen6,  255);
setEffMoveKey(  spep_8+47,  shuchusen6,  0,  0);
setEffScaleKey(  spep_8+47,  shuchusen6,  1.0,  1.0);
setEffRotateKey(  spep_8+47,  shuchusen6,  0);
setEffAlphaKey(  spep_8+47,  shuchusen6,  0);

hibi = entryEffect( spep_8+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

setEffMoveKey(  spep_8+3,  hibi,  0,  30);
setEffScaleKey(  spep_8+3,  hibi,  1.0,  1.0);
setEffRotateKey(  spep_8+3,  hibi,  0);
setEffAlphaKey(  spep_8+3,  hibi,  255);
setEffMoveKey(  spep_8+65,  hibi,  0,  30);
setEffScaleKey(  spep_8+65,  hibi,  1.0,  1.0);
setEffRotateKey(  spep_8+65,  hibi,  0);
setEffAlphaKey(  spep_8+65,  hibi,  255);
setEffMoveKey(  spep_8+66,  hibi,  0,  30);
setEffScaleKey(  spep_8+66,  hibi,  1.0,  1.0);
setEffRotateKey(  spep_8+66,  hibi,  0);
setEffAlphaKey(  spep_8+66,  hibi,  0);
setEffMoveKey(  spep_8+114,  hibi,  0,  30);
setEffScaleKey(  spep_8+114,  hibi,  1.0,  1.0);
setEffRotateKey(  spep_8+114,  hibi,  0);
setEffAlphaKey(  spep_8+114,  hibi,  0);

shuchusenkuro = entryEffectLife( spep_8+15, 1657, 50, 0x80,  -1, 0,  0,  0);   -- 集中線黒

setEffMoveKey(  spep_8+15,  shuchusenkuro,  0,  0);
setEffScaleKey(  spep_8+15,  shuchusenkuro,  1.0,  1.0);
setEffRotateKey(  spep_8+15,  shuchusenkuro,  0);
setEffAlphaKey(  spep_8+15,  shuchusenkuro,  255);
setEffMoveKey(  spep_8+65,  shuchusenkuro,  0,  0);
setEffScaleKey(  spep_8+65,  shuchusenkuro,  1.0,  1.0);
setEffRotateKey(  spep_8+65,  shuchusenkuro,  0);
setEffAlphaKey(  spep_8+65,  shuchusenkuro,  255);

entryFade( spep_8+62, 3, 2, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
]]--
------------------------------------------------------
--３人でポーズ(120F)
------------------------------------------------------

spep_9 = spep_7+60;

setDisp(  spep_9,  1,  0);  --敵非表示

shuchusen7 = entryEffectLife( spep_9, 906, 120, 0x100,  -1, 0,  0,  0);

setEffMoveKey(  spep_9,  shuchusen7,  0,  0);
setEffScaleKey(  spep_9,  shuchusen7,  1.55,  1.55);
setEffRotateKey(  spep_9,  shuchusen7,  0);
setEffAlphaKey(  spep_9,  shuchusen7,  255);
setEffMoveKey(  spep_9+120,  shuchusen7,  0,  0);
setEffScaleKey(  spep_9+120,  shuchusen7,  1.55,  1.55);
setEffRotateKey(  spep_9+120,  shuchusen7,  0);
setEffAlphaKey(  spep_9+120,  shuchusen7,  255);


peace = entryEffect(  spep_9,  SP_07,  0x80,  -1,  0,  0,  0);

setEffScaleKey(  spep_9,  peace,  1.0,  1.0);
setEffMoveKey(  spep_9,  peace,  0,  0);
setEffRotateKey(  spep_9,  peace,  0);
setEffAlphaKey(  spep_9,  peace,  255);
setEffScaleKey(  spep_9+120,  peace,  1.0,  1.0);
setEffMoveKey(  spep_9+120,  peace,  0,  0);
setEffRotateKey(  spep_9+120,  peace,  0);
setEffAlphaKey(  spep_9+120,  peace,  255);

playSe(  spep_9,  SE_10);  --爆発音

-- ダメージ表示
dealDamage(spep_9+10);

entryFade( spep_9+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_9+110);
else

-----------------------------------------
--敵側の攻撃
-----------------------------------------
------------------------------------------------------
-- 気溜め_マーロンあり(240F)
------------------------------------------------------
spep_1 = 0;

shuchusen1 = entryEffectLife( spep_1+38, 906, 202, 0x100,  -1, 0,  0,  0);

setEffMoveKey(  spep_1+38,  shuchusen1,  0,  0);
setEffScaleKey(  spep_1+38,  shuchusen1,  1.55,  1.55);
setEffRotateKey(  spep_1+38,  shuchusen1,  0);
setEffAlphaKey(  spep_1+38,  shuchusen1,  255);
setEffMoveKey(  spep_1+150,  shuchusen1,  0,  0);
setEffScaleKey(  spep_1+150,  shuchusen1,  1.55,  1.55);
setEffRotateKey(  spep_1+150,  shuchusen1,  0);
setEffAlphaKey(  spep_1+150,  shuchusen1,  255);
setEffMoveKey(  spep_1+151,  shuchusen1,  0,  0);
setEffScaleKey(  spep_1+151,  shuchusen1,  2.17,  2.17);
setEffRotateKey(  spep_1+151,  shuchusen1,  0);
setEffAlphaKey(  spep_1+151,  shuchusen1,  255);
setEffMoveKey(  spep_1+240,  shuchusen1,  0,  0);
setEffScaleKey(  spep_1+240,  shuchusen1,  2.17,  2.17);
setEffRotateKey(  spep_1+240,  shuchusen1,  0);
setEffAlphaKey(  spep_1+240,  shuchusen1,  255);


--書き文字エントリー
ctzuzu = entryEffectLife( spep_1+38, 10013, 22,  0x100,  -1, 0,  0,  0);  --ズズズン

setEffShake(  spep_1+38,  ctzuzu,  42,  10);
setEffMoveKey( spep_1+38, ctzuzu, 22, 211.9 , 0 );
setEffMoveKey( spep_1+40, ctzuzu, 29.8, 266.6 , 0 );
setEffMoveKey( spep_1+42, ctzuzu, 49.4, 330.6 , 0 );
setEffMoveKey( spep_1+44, ctzuzu, 46.2, 352.4 , 0 );
setEffMoveKey( spep_1+46, ctzuzu, 51.2, 346.6 , 0 );
setEffMoveKey( spep_1+48, ctzuzu, 36.5, 321.7 , 0 );
setEffMoveKey( spep_1+50, ctzuzu, 46, 329.9 , 0 );
setEffMoveKey( spep_1+60, ctzuzu, 46, 329.9 , 0 );
setEffScaleKey( spep_1+38, ctzuzu, 1.12, 1.11 );
setEffScaleKey( spep_1+40, ctzuzu, 1.99, 1.98 );
setEffScaleKey( spep_1+42, ctzuzu, 2.84, 2.83 );
setEffScaleKey( spep_1+44, ctzuzu, 2.93, 2.92 );
setEffScaleKey( spep_1+60, ctzuzu, 2.93, 2.92 );
setEffRotateKey( spep_1+38, ctzuzu, 0 );
setEffRotateKey( spep_1+60, ctzuzu, 0 );
setEffAlphaKey( spep_1+38, ctzuzu, 255 );
setEffAlphaKey( spep_1+58, ctzuzu, 255 );
setEffAlphaKey( spep_1+60, ctzuzu, 0 );


tame = entryEffect(  spep_1,  SP_08,  0x80,  -1,  0,  0,  0);  --溜め

setEffScaleKey(  spep_1,  tame,  1.0,  1.0);
setEffMoveKey(  spep_1,  tame,  0,  0);
setEffRotateKey(  spep_1,  tame,  0);
setEffAlphaKey(  spep_1,  tame,  255);
setEffScaleKey(  spep_1+240,  tame,  1.0,  1.0);
setEffMoveKey(  spep_1+240,  tame,  0,  0);
setEffRotateKey(  spep_1+240,  tame,  0);
setEffAlphaKey(  spep_1+240,  tame,  255);

-- カットイン
--speff = entryEffect(  spep_1+51,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  spep_1+51,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー --
ctgogo = entryEffectLife( spep_1+64, 190006, 71, 0x100, -1, 0, 0, 510);    -- ゴゴゴゴ

setEffScaleKey(  spep_1+64,  ctgogo,  -0.7,  0.7);
setEffMoveKey(  spep_1+64,  ctgogo,  0,  530);
setEffRotateKey(  spep_1+64,  ctgogo,  0);
setEffScaleKey(  spep_1+135,  ctgogo,  -0.7,  0.7);
setEffMoveKey(  spep_1+135,  ctgogo,  0,  530);
setEffRotateKey(  spep_1+135,  ctgogo,  0);

playSe(  spep_1+37,  SE_01);  --溜め
playSe(  spep_1+64,  SE_04);  --カットイン音
playSe(  spep_1+190,  SE_04);  --カットイン音

entryFade( spep_1+37, 0, 0, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_1+230, 8, 4, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- カード(90F)
------------------------------------------------------

spep_2 = spep_1+240;

playSe( spep_2, SE_05);
speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

shuchusen2 = entryEffectLife( spep_2, 906, 90, 0x100,  -1, 0,  0,  0);

setEffMoveKey(  spep_2,  shuchusen2,  0,  0);
setEffScaleKey(  spep_2,  shuchusen2,  1.0,  1.0);
setEffRotateKey(  spep_2,  shuchusen2,  0);
setEffAlphaKey(  spep_2,  shuchusen2,  255);
setEffMoveKey(  spep_2+90,  shuchusen2,  0,  0);
setEffScaleKey(  spep_2+90,  shuchusen2,  1.0,  1.0);
setEffRotateKey(  spep_2+90,  shuchusen2,  0);
setEffAlphaKey(  spep_2+90,  shuchusen2,  255);

entryFade( spep_2+73, 15, 9, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


------------------------------------------------------
-- 突進(70F)
------------------------------------------------------

spep_3 = spep_2+95;

shuchusen3 = entryEffectLife( spep_3, 906, 70, 0x100,  -1, 0,  0,  0);

setEffMoveKey(  spep_3,  shuchusen3,  0,  0);
setEffScaleKey(  spep_3,  shuchusen3,  1.25,  1.25);
setEffRotateKey(  spep_3,  shuchusen3,  0);
setEffAlphaKey(  spep_3,  shuchusen3,  255);
setEffMoveKey(  spep_3+70,  shuchusen3,  0,  0);
setEffScaleKey(  spep_3+70,  shuchusen3,  1.25,  1.25);
setEffRotateKey(  spep_3+70,  shuchusen3,  0);
setEffAlphaKey(  spep_3+70,  shuchusen3,  255);

--書き文字エントリー
ctzuo = entryEffectLife( spep_3,  10012, 60, 0x100, -1, 0, 76.5, 260.2 );  --ズオ

setEffShake(  spep_3,  ctzuo,  60,  20);  --揺れ
setEffMoveKey( spep_3, ctzuo, 76.5, 260.2 , 0 );
setEffMoveKey( spep_3+2, ctzuo, 95.1, 285.8 , 0 );
setEffMoveKey( spep_3+4, ctzuo, 105.6, 328.3 , 0 );
setEffMoveKey( spep_3+6, ctzuo, 130.2, 342.1 , 0 );
setEffMoveKey( spep_3+8, ctzuo, 120.3, 362.4 , 0 );
setEffMoveKey( spep_3+52, ctzuo, 129.5, 363.2 , 0 );
setEffMoveKey( spep_3+54, ctzuo, 154.6, 331.4 , 0 );
setEffMoveKey( spep_3+56, ctzuo, 148.1, 364.6 , 0 );
setEffMoveKey( spep_3+58, ctzuo, 179.1, 320.8 , 0 );
setEffMoveKey( spep_3+60, ctzuo, 191.4, 315.4 , 0 );
setEffScaleKey( spep_3 , ctzuo, 0.37, 0.28 );
setEffScaleKey( spep_3+2, ctzuo, 1.23, 0.94 );
setEffScaleKey( spep_3+4, ctzuo, 2.12, 1.62 );
setEffScaleKey( spep_3+6, ctzuo, 2.98, 2.28 );
setEffScaleKey( spep_3+50, ctzuo, 2.98, 2.28 );
setEffScaleKey( spep_3+52, ctzuo, 3.87, 2.96 );
setEffScaleKey( spep_3+54, ctzuo, 4.76, 3.64 );
setEffScaleKey( spep_3+56, ctzuo, 5.65, 4.32 );
setEffScaleKey( spep_3+58, ctzuo, 6.55, 5.01 );
setEffScaleKey( spep_3+60, ctzuo, 7.44, 5.69 );
setEffRotateKey( spep_3, ctzuo, 19.2 );
setEffRotateKey( spep_3+60, ctzuo, 19.2 );
setEffAlphaKey( spep_3, ctzuo, 255 );
setEffAlphaKey( spep_3+50, ctzuo, 255 );
setEffAlphaKey( spep_3+52, ctzuo, 204 );
setEffAlphaKey( spep_3+54, ctzuo, 153 );
setEffAlphaKey( spep_3+56, ctzuo, 102 );
setEffAlphaKey( spep_3+58, ctzuo, 51 );
setEffAlphaKey( spep_3+60, ctzuo, 0 );

tosshin = entryEffect(  spep_3,  SP_09,  0x80,  -1,  0,  0,  0);  --突進

setEffScaleKey(  spep_3,  tosshin,  1.0,  1.0);
setEffMoveKey(  spep_3,  tosshin,  0,  0);
setEffRotateKey(  spep_3,  tosshin,  0);
setEffAlphaKey(  spep_3,  tosshin,  255);
setEffScaleKey(  spep_3+70,  tosshin,  1.0,  1.0);
setEffMoveKey(  spep_3+70,  tosshin,  0,  0);
setEffRotateKey(  spep_3+70,  tosshin,  0);
setEffAlphaKey(  spep_3+70,  tosshin,  255);


playSe(  spep_3,  9);  --ダッシュ
entryFadeBg( spep_3, 0, 70, 0, 0, 0, 0, 210);          -- 黒　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_3+30; --エンドフェイズのフレーム数を置き換える

setMoveKey( SP_dodge-1, 0, 0,  0, 0); --味方位置
setMoveKey( SP_dodge, 0, 0,    1000, -1000); --味方位置

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


entryFade( spep_3+60, 6, 4, 7, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 格闘(220F)
------------------------------------------------------

spep_4 = spep_3+70;


shuchusen4 = entryEffectLife( spep_4, 906, 20, 0x100,  -1, 0,  0,  0);

setEffMoveKey(  spep_4,  shuchusen4,  0,  0);
setEffScaleKey(  spep_4,  shuchusen4,  1.77,  1.77);
setEffRotateKey(  spep_4,  shuchusen4,  0);
setEffAlphaKey(  spep_4,  shuchusen4,  255);
setEffMoveKey(  spep_4+20,  shuchusen4,  0,  0);
setEffScaleKey(  spep_4+20,  shuchusen4,  1.77,  1.77);
setEffRotateKey(  spep_4+20,  shuchusen4,  0);
setEffAlphaKey(  spep_4+20,  shuchusen4,  255);

shuchusen4a = entryEffectLife( spep_4+21, 906, 199, 0x100,  -1, 0,  0,  0);

setEffMoveKey(  spep_4+21,  shuchusen4a,  0,  0);
setEffScaleKey(  spep_4+21,  shuchusen4a,  1.35,  1.37);
setEffRotateKey(  spep_4+21,  shuchusen4a,  0);
setEffAlphaKey(  spep_4+21,  shuchusen4a,  255);
setEffMoveKey(  spep_4+220,  shuchusen4a,  0,  0);
setEffScaleKey(  spep_4+220,  shuchusen4a,  1.35,  1.37);
setEffRotateKey(  spep_4+220,  shuchusen4a,  0);
setEffAlphaKey(  spep_4+220,  shuchusen4a,  255);

--書き文字エントリー
ctbaki = entryEffectLife( spep_4+139,  10020, 20, 0x100, -1, 0, 199.1, 347.8 );  --バキ

setEffShake(  spep_4+139,  ctbaki,  20,  10);
setEffMoveKey( spep_4+139, ctbaki, 199.1, 347.8 , 0 );
setEffMoveKey( spep_4+141, ctbaki, 197.5, 345.4 , 0 );
setEffMoveKey( spep_4+143, ctbaki, 202.7, 343.3 , 0 );
setEffMoveKey( spep_4+148, ctbaki, 199, 343.4 , 0 );
setEffMoveKey( spep_4+150, ctbaki, 201.9, 345.1 , 0 );
setEffMoveKey( spep_4+159, ctbaki, 205.3, 348.4 , 0 );
setEffScaleKey( spep_4+139, ctbaki, 1.65, 1.65 );
setEffScaleKey( spep_4+144, ctbaki, 1.87, 1.87 );
setEffScaleKey( spep_4+146, ctbaki, 2.57, 2.57 );
setEffScaleKey( spep_4+148, ctbaki, 2.25, 2.25 );
setEffScaleKey( spep_4+150, ctbaki, 2.25, 2.25 );
setEffScaleKey( spep_4+152, ctbaki, 2.15, 2.15 );
setEffScaleKey( spep_4+154, ctbaki, 2.2, 2.2 );
setEffScaleKey( spep_4+155, ctbaki, 2.25, 2.25 );
setEffScaleKey( spep_4+156, ctbaki, 2.27, 2.27 );
setEffScaleKey( spep_4+157, ctbaki, 2.28, 2.28 );
setEffScaleKey( spep_4+159, ctbaki, 2.3, 2.3 );
setEffRotateKey( spep_4+139, ctbaki, 29.8 );
setEffRotateKey( spep_4+144, ctbaki, 42.4 );
setEffRotateKey( spep_4+146, ctbaki, 28 );
setEffRotateKey( spep_4+148, ctbaki, 39.5 );
setEffRotateKey( spep_4+150, ctbaki, 26.3 );
setEffRotateKey( spep_4+152, ctbaki, 40.3 );
setEffRotateKey( spep_4+154, ctbaki, 33.6 );
setEffRotateKey( spep_4+155, ctbaki, 26.9 );
setEffRotateKey( spep_4+156, ctbaki, 29.3 );
setEffRotateKey( spep_4+157, ctbaki, 31.7 );
setEffRotateKey( spep_4+159, ctbaki, 7.6 );
setEffAlphaKey( spep_4+139, ctbaki, 255 );
setEffAlphaKey( spep_4+153, ctbaki, 255 );
setEffAlphaKey( spep_4+156, ctbaki, 170 );
setEffAlphaKey( spep_4+157, ctbaki, 85 );
setEffAlphaKey( spep_4+159, ctbaki, 0 );


ctbago = entryEffectLife( spep_4+183,  10021, 27, 0x100, -1, 0, 163, 289.8 );  --バゴォ
setEffMoveKey( spep_4+183, ctbago, 163, 289.8 , 0 );
setEffMoveKey( spep_4+190, ctbago, 173, 309.3 , 0 );
setEffMoveKey( spep_4+192, ctbago, 182.6, 329.4 , 0 );
setEffMoveKey( spep_4+194, ctbago, 181.4, 316.6 , 0 );
setEffMoveKey( spep_4+196, ctbago, 160.1, 320.5 , 0 );
setEffMoveKey( spep_4+198, ctbago, 193.6, 330.2 , 0 );
setEffMoveKey( spep_4+200, ctbago, 195.3, 344.6 , 0 );
setEffMoveKey( spep_4+202, ctbago, 158.6, 333.5 , 0 );
setEffMoveKey( spep_4+204, ctbago, 165.9, 330.6 , 0 );
setEffMoveKey( spep_4+206, ctbago, 185, 319 , 0 );
setEffMoveKey( spep_4+208, ctbago, 183.7, 324.4 , 0 );
setEffMoveKey( spep_4+210, ctbago, 182.6, 329.4 , 0 );
setEffScaleKey( spep_4+183, ctbago, 1, 1 );
setEffScaleKey( spep_4+190, ctbago, 1.63, 1.63 );
setEffScaleKey( spep_4+192, ctbago, 2.26, 2.26 );
setEffScaleKey( spep_4+196, ctbago, 2.26, 2.26 );
setEffScaleKey( spep_4+198, ctbago, 2.25, 2.25 );
setEffScaleKey( spep_4+202, ctbago, 2.25, 2.25 );
setEffScaleKey( spep_4+204, ctbago, 2.26, 2.26 );
setEffScaleKey( spep_4+210, ctbago, 2.26, 2.26 );
setEffRotateKey( spep_4+183, ctbago, 9.8 );
setEffRotateKey( spep_4+190, ctbago, 10.8 );
setEffRotateKey( spep_4+192, ctbago, 9.9 );
setEffRotateKey( spep_4+194, ctbago, 10.7 );
setEffRotateKey( spep_4+196, ctbago, 9.8 );
setEffRotateKey( spep_4+198, ctbago, 10.7 );
setEffRotateKey( spep_4+200, ctbago, 9.8 );
setEffRotateKey( spep_4+202, ctbago, 10.7 );
setEffRotateKey( spep_4+204, ctbago, 9.8 );
setEffRotateKey( spep_4+206, ctbago, 10.7 );
setEffRotateKey( spep_4+208, ctbago, 9.8 );
setEffRotateKey( spep_4+210, ctbago, 9.8 );
setEffAlphaKey( spep_4+183, ctbago, 255 );
setEffAlphaKey( spep_4+190, ctbago, 232 );
setEffAlphaKey( spep_4+192, ctbago, 209 );
setEffAlphaKey( spep_4+194, ctbago, 185 );
setEffAlphaKey( spep_4+196, ctbago, 162 );
setEffAlphaKey( spep_4+198, ctbago, 139 );
setEffAlphaKey( spep_4+200, ctbago, 116 );
setEffAlphaKey( spep_4+202, ctbago, 93 );
setEffAlphaKey( spep_4+204, ctbago, 255 );
setEffAlphaKey( spep_4+206, ctbago, 46 );
setEffAlphaKey( spep_4+208, ctbago, 23 );
setEffAlphaKey( spep_4+210, ctbago, 0 );

--敵の動き
setDisp( spep_4, 1, 1 );
changeAnime( spep_4, 1, 100 );

setMoveKey( spep_4+0, 1, -0.8, 28.1 , 0 );
setMoveKey( spep_4+2, 1, 2.5, 28.2 , 0 );
setMoveKey( spep_4+4, 1, 8, 28 , 0 );
setMoveKey( spep_4+6, 1, 10.3, 27.4 , 0 );
setMoveKey( spep_4+8, 1, 15.8, 27.9 , 0 );
setMoveKey( spep_4+10, 1, 17.5, 28.1 , 0 );
setMoveKey( spep_4+12, 1, 23.5, 27.3 , 0 );
setMoveKey( spep_4+14, 1, 25.4, 28.3 , 0 );
setMoveKey( spep_4+16, 1, 31, 28.6 , 0 );
setMoveKey( spep_4+18, 1, 33.4, 27.2 , 0 );
setMoveKey( spep_4+20, 1, 39.5, 29.2 , 0 );
setMoveKey( spep_4+22, 1, 41.4, 27.5 , 0 );
setMoveKey( spep_4+24, 1, 47.6, 27.9 , 0 );
setMoveKey( spep_4+26, 1, 48.4, 27 , 0 );
setMoveKey( spep_4+28, 1, 54.8, 29.3 , 0 );
setMoveKey( spep_4+30, 1, 55.4, 28.2 , 0 );
setMoveKey( spep_4+32, 1, 62.9, 29.7 , 0 );
setMoveKey( spep_4+34, 1, 64.4, 25.8 , 0 );
setMoveKey( spep_4+36, 1, 71.7, 28.9 , 0 );
setMoveKey( spep_4+38, 1, 71.3, 26.2 , 0 );
setMoveKey( spep_4+40, 1, 78.8, 28.5 , 0 );
setMoveKey( spep_4+42, 1, 79, 26.1 , 0 );
setMoveKey( spep_4+44, 1, 86.7, 28.9 , 0 );
setMoveKey( spep_4+46, 1, 86.6, 28.6 , 0 );
setMoveKey( spep_4+48, 1, 93.4, 26.1 , 0 );
setMoveKey( spep_4+50, 1, 93.9, 28.7 , 0 );
setMoveKey( spep_4+52, 1, 102.9, 28.5 , 0 );
setMoveKey( spep_4+54, 1, 102.5, 25.2 , 0 );
setMoveKey( spep_4+56, 1, 2000, 2000 , 0 );
setMoveKey( spep_4+57, 1, 2000, 2000 , 0 );
setMoveKey( spep_4+58, 1, 2000, 2000 , 0 );
setMoveKey( spep_4+132, 1, 2000, 2000 , 0 );
setScaleKey( spep_4+0, 1, 1.2, 1.2 );
setScaleKey( spep_4+56, 1, 1.2, 1.2 );
setRotateKey( spep_4+0, 1, 0 );
setRotateKey( spep_4+56, 1, 0 );
setRotateKey( spep_4+132, 1, 0 );


changeAnime( spep_4+133, 1, 104 );  --ガード

setMoveKey( spep_4+133,1, 2.9, 13.6 , 0 );
setMoveKey( spep_4+136,1, 12.5, 28.5 , 0 );
setScaleKey( spep_4+133,1, 2.87, 2.87 );
setScaleKey( spep_4+136,1, 2.46, 2.46 );
setRotateKey( spep_4+133,1, 0 );
setRotateKey( spep_4+136,1, 0 );

changeAnime( spep_4+137, 1, 106 ); --仰け反り

setMoveKey( spep_4+137,1, -37, 83.4 , 0 );
setMoveKey( spep_4+142,1, -26.6, 55.7 , 0 );
setMoveKey( spep_4+144,1, -51.5, 49.5 , 0 );
setMoveKey( spep_4+146,1, -19.8, 69.1 , 0 );
setMoveKey( spep_4+148,1, -20.6, 37.2 , 0 );
setMoveKey( spep_4+150,1, -37.5, 63.5 , 0 );
setMoveKey( spep_4+152,1, -21.9, 31.4 , 0 );
setMoveKey( spep_4+154,1, -19.5, 61.2 , 0 );
setMoveKey( spep_4+156,1, -20.6, 32.2 , 0 );
setMoveKey( spep_4+158,1, -27.4, 57.1 , 0 );
setMoveKey( spep_4+160,1, -10.3, 47.7 , 0 );
setMoveKey( spep_4+162,1, -32.8, 53.1 , 0 );
setMoveKey( spep_4+164,1, -17.9, 60.3 , 0 );
setMoveKey( spep_4+166,1, -29.5, 57.5 , 0 );
setMoveKey( spep_4+168,1, -21.4, 59.4 , 0 );
setMoveKey( spep_4+170,1, -25.9, 65.6 , 0 );
setMoveKey( spep_4+172,1, -23.4, 64.6 , 0 );
setMoveKey( spep_4+174,1, -22, 69.9 , 0 );
setMoveKey( spep_4+176,1, -20.8, 75.6 , 0 );
setMoveKey( spep_4+178,1, -20, 75.6 , 0 );
setMoveKey( spep_4+180,1, -10.4, 85.6 , 0 );
setMoveKey( spep_4+182,1, -19.7, 90.7 , 0 );
setScaleKey( spep_4+137,1, 2.96, 2.96 );
setScaleKey( spep_4+142,1, 2.27, 2.27 );
setScaleKey( spep_4+144,1, 2.58, 2.58 );
setScaleKey( spep_4+146,1, 1.97, 1.97 );
setScaleKey( spep_4+148,1, 2.22, 2.22 );
setScaleKey( spep_4+150,1, 1.98, 1.98 );
setScaleKey( spep_4+152,1, 2.09, 2.09 );
setScaleKey( spep_4+154,1, 2, 2 );
setScaleKey( spep_4+156,1, 2.01, 2.01 );
setScaleKey( spep_4+158,1, 2.01, 2.01 );
setScaleKey( spep_4+160,1, 2.03, 2.03 );
setScaleKey( spep_4+162,1, 2.04, 2.04 );
setScaleKey( spep_4+164,1, 2.06, 2.06 );
setScaleKey( spep_4+166,1, 2.08, 2.08 );
setScaleKey( spep_4+168,1, 2.1, 2.1 );
setScaleKey( spep_4+170,1, 2.12, 2.12 );
setScaleKey( spep_4+172,1, 2.13, 2.13 );
setScaleKey( spep_4+174,1, 2.15, 2.15 );
setScaleKey( spep_4+176,1, 2.17, 2.17 );
setScaleKey( spep_4+178,1, 2.18, 2.18 );
setScaleKey( spep_4+180,1, 2.19, 2.19 );
setScaleKey( spep_4+182,1, 2.21, 2.21 );
setRotateKey( spep_4+137,1, -43.5 );
setRotateKey( spep_4+168,1, -43.5 );
setRotateKey( spep_4+170,1, -43.4 );
setRotateKey( spep_4+172,1, -43.3 );
setRotateKey( spep_4+174,1, -43.2 );
setRotateKey( spep_4+176,1, -43 );
setRotateKey( spep_4+178,1, -42.8 );
setRotateKey( spep_4+180,1, -42.5 );
setRotateKey( spep_4+182,1, -42.2 );


changeAnime( spep_4+183, 1, 108 );  --くの字

setMoveKey( spep_4+183,1, 84.1, 103 , 0 );
setMoveKey( spep_4+185,1, 116.7, 98.9 , 0 );
setMoveKey( spep_4+190,1, 96.9, 124.2 , 0 );
setMoveKey( spep_4+192,1, 129.9, 142.3 , 0 );
setMoveKey( spep_4+194,1, 111.1, 124.7 , 0 );
setMoveKey( spep_4+196,1, 132.9, 139.4 , 0 );
setMoveKey( spep_4+198,1, 123.9, 125.6 , 0 );
setScaleKey( spep_4+183,1, 2.2, 2.2 );
setScaleKey( spep_4+185,1, 2.14, 2.14 );
setScaleKey( spep_4+190,1, 2.09, 2.09 );
setScaleKey( spep_4+192,1, 2.06, 2.06 );
setScaleKey( spep_4+194,1, 2.05, 2.05 );
setScaleKey( spep_4+196,1, 2.04, 2.04 );
setScaleKey( spep_4+198,1, 2.03, 2.03 );
setRotateKey( spep_4+183,1, -7.9 );
setRotateKey( spep_4+198,1, -7.9 );

changeAnime( spep_4+199, 1, 106);   --仰け反り

setMoveKey( spep_4+199,1, 179.3, 233.8 , 0 );
setMoveKey( spep_4+202,1, 256.8, 249.3 , 0 );
setMoveKey( spep_4+204,1, 315.4, 263.5 , 0 );
setMoveKey( spep_4+206,1, 365.3, 279.3 , 0 );
setMoveKey( spep_4+208,1, 400.4, 283.6 , 0 );
setMoveKey( spep_4+210,1, 419, 293.7 , 0 );
setMoveKey( spep_4+212,1, 422.2, 289.6 , 0 );
setMoveKey( spep_4+214,1, 421.1, 293.2 , 0 );
setMoveKey( spep_4+216,1, 417.2, 286.5 , 0 );
setMoveKey( spep_4+218,1, 2000, 2000 , 0 );
setMoveKey( spep_4+220,1, 2000, 2000 , 0 );
setScaleKey( spep_4+199,1, 1.88, 1.88 );
setScaleKey( spep_4+202,1, 1.6, 1.6 );
setScaleKey( spep_4+204,1, 1.38, 1.38 );
setScaleKey( spep_4+206,1, 1.2, 1.2 );
setScaleKey( spep_4+208,1, 1.08, 1.08 );
setScaleKey( spep_4+210,1, 1, 1 );
setScaleKey( spep_4+212,1, 0.97, 0.97 );
setScaleKey( spep_4+214,1, 0.97, 0.97 );
setScaleKey( spep_4+216,1, 0.96, 0.96 );
setScaleKey( spep_4+220,1, 0.96, 0.96 );
setRotateKey( spep_4+199,1, -21.8 );
setRotateKey( spep_4+202,1, -19.4 );
setRotateKey( spep_4+204,1, -17.4 );
setRotateKey( spep_4+206,1, -15.8 );
setRotateKey( spep_4+208,1, -14.7 );
setRotateKey( spep_4+210,1, -14 );
setRotateKey( spep_4+212,1, -13.8 );
setRotateKey( spep_4+220,1, -13.8 );


kakutou_f = entryEffect(  spep_4,  SP_10,  0x100,  -1,  0,  0,  0);  --格闘前

setEffScaleKey(  spep_4,  kakutou_f,  1.0,  1.0);
setEffMoveKey(  spep_4,  kakutou_f,  0,  0);
setEffRotateKey(  spep_4,  kakutou_f,  0);
setEffAlphaKey(  spep_4,  kakutou_f,  255);
setEffScaleKey(  spep_4+220,  kakutou_f,  1.0,  1.0);
setEffMoveKey(  spep_4+220,  kakutou_f,  0,  0);
setEffRotateKey(  spep_4+220,  kakutou_f,  0);
setEffAlphaKey(  spep_4+220,  kakutou_f,  255);


ryu1 = entryEffectLife(  spep_4,  921,  54,  0x80,  -1,  0,  0,  0);  --流線広がり

setEffScaleKey(  spep_4,  ryu1,  1.3,  1.3);
setEffMoveKey(  spep_4,  ryu1,  0,  0);
setEffRotateKey(  spep_4,  ryu1,  -180);
setEffAlphaKey(  spep_4,  ryu1,  255);
setEffScaleKey(  spep_4+54,  ryu1,  1.3,  1.3);
setEffMoveKey(  spep_4+54,  ryu1,  0,  0);
setEffRotateKey(  spep_4+54,  ryu1,  -180);
setEffAlphaKey(  spep_4+54,  ryu1,  255);

ryu2 = entryEffectLife(  spep_4,  920,  147,  0x80,  -1,  0,  0,  0);  --流線横線

setEffScaleKey(  spep_4,  ryu2,  2.14,  1.12);
setEffMoveKey(  spep_4,  ryu2,  0,  0);
setEffRotateKey(  spep_4,  ryu2,  -180);
setEffAlphaKey(  spep_4,  ryu2,  0);
setEffScaleKey(  spep_4+54,  ryu2,  2.14,  1.12);
setEffMoveKey(  spep_4+54,  ryu2,  0,  0);
setEffRotateKey(  spep_4+54,  ryu2,  -180);
setEffAlphaKey(  spep_4+54,  ryu2,  0);

setEffScaleKey(  spep_4+55,  ryu2,  2.14,  1.12);
setEffMoveKey(  spep_4+55,  ryu2,  0,  0);
setEffRotateKey(  spep_4+55,  ryu2,  -180);
setEffAlphaKey(  spep_4+55,  ryu2,  255);
setEffScaleKey(  spep_4+147,  ryu2,  2.14,  1.12);
setEffMoveKey(  spep_4+147,  ryu2,  0,  0);
setEffRotateKey(  spep_4+147,  ryu2,  -180);
setEffAlphaKey(  spep_4+147,  ryu2,  255);

ryu3 = entryEffectLife(  spep_4,  921,  220,  0x80,  -1,  0,  0,  0);  --流線広がり

setEffScaleKey(  spep_4,  ryu3,  1.3,  1.3);
setEffMoveKey(  spep_4,  ryu3,  0,  0);
setEffRotateKey(  spep_4,  ryu3,  -3);
setEffAlphaKey(  spep_4,  ryu3,  0);
setEffScaleKey(  spep_4+147,  ryu3,  1.3,  1.3);
setEffMoveKey(  spep_4+147,  ryu3,  0,  0);
setEffRotateKey(  spep_4+147,  ryu3,  -3);
setEffAlphaKey(  spep_4+147,  ryu3,  0);
setEffScaleKey(  spep_4+148,  ryu3,  1.3,  1.3);
setEffMoveKey(  spep_4+148,  ryu3,  0,  0);
setEffRotateKey(  spep_4+148,  ryu3,  -3);
setEffAlphaKey(  spep_4+148,  ryu3,  255);
setEffScaleKey(  spep_4+220,  ryu3,  1.3,  1.3);
setEffMoveKey(  spep_4+220,  ryu3,  0,  0);
setEffRotateKey(  spep_4+220,  ryu3,  -3);
setEffAlphaKey(  spep_4+220,  ryu3,  255);

kakutou_b = entryEffect(  spep_4,  SP_11,  0x80,  -1,  0,  0,  0);  --格闘後

setEffScaleKey(  spep_4,  kakutou_b,  1.0,  1.0);
setEffMoveKey(  spep_4,  kakutou_b,  0,  0);
setEffRotateKey(  spep_4,  kakutou_b,  0);
setEffAlphaKey(  spep_4,  kakutou_b,  255);
setEffScaleKey(  spep_4+220,  kakutou_b,  1.0,  1.0);
setEffMoveKey(  spep_4+220,  kakutou_b,  0,  0);
setEffRotateKey(  spep_4+220,  kakutou_b,  0);
setEffAlphaKey(  spep_4+220,  kakutou_b,  255);


playSe(  spep_4+101,  1003);  --パンチ(悟天)
playSe(  spep_4+118,  1003);  --パンチ(トランクス)
playSe(  spep_4+137,  1009);  --パンチ
playSe(  spep_4+183,  1010);  --キック


entryFade( spep_4+52, 2, 1, 5, fcolor_r, fcolor_g, fcolor_b, 200);     -- white fade
entryFade( spep_4+210, 6, 8, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryFadeBg( spep_4, 0, 220, 0, 0, 0, 0, 210);          -- 黒　背景

------------------------------------------------------
-- 発射(120F)
------------------------------------------------------

spep_5 = spep_4+222;

--敵の動き
setDisp( spep_5, 1, 0 );
changeAnime(  spep_5,  1,  107);

setMoveKey(  spep_5,  1,  2000,  2000,  0);
setMoveKey(  spep_5+120,  1,  2000,  2000,  0);
setScaleKey(  spep_5,  1,  1.0,  1.0);
setScaleKey(  spep_5+120,  1,  1.0,  1.0);
setRotateKey(  spep_5,  1,  0);
setRotateKey(  spep_5+120,  1,  0);


shuchusen5 = entryEffectLife( spep_5, 906, 50, 0x100,  -1, 0,  0,  0);  --集中線

setEffMoveKey(  spep_5,  shuchusen5,  0,  0);
setEffScaleKey(  spep_5,  shuchusen5,  1.5,  1.5);
setEffRotateKey(  spep_5,  shuchusen5,  0);
setEffAlphaKey(  spep_5,  shuchusen5,  255);
setEffMoveKey(  spep_5+38,  shuchusen5,  0,  0);
setEffScaleKey(  spep_5+38,  shuchusen5,  1.5,  1.5);
setEffRotateKey(  spep_5+38,  shuchusen5,  0);
setEffAlphaKey(  spep_5+38,  shuchusen5,  255);
setEffMoveKey(  spep_5+39,  shuchusen5,  0,  0);
setEffScaleKey(  spep_5+39,  shuchusen5,  1.5,  1.5);
setEffRotateKey(  spep_5+39,  shuchusen5,  0);
setEffAlphaKey(  spep_5+39,  shuchusen5,  255);
setEffMoveKey(  spep_5+50,  shuchusen5,  0,  0);
setEffScaleKey(  spep_5+50,  shuchusen5,  2.5,  2.5);
setEffRotateKey(  spep_5+50,  shuchusen5,  0);
setEffAlphaKey(  spep_5+50,  shuchusen5,  255);

--書き文字エントリー
ctzuo2 = entryEffectLife( spep_5+5,  10012, 26, 0x100, -1, 0, 166.5, 310.2 );  --ズオッ
setEffMoveKey( spep_5+5, ctzuo2, 166.5, 310.2 , 0 );
setEffMoveKey( spep_5+7, ctzuo2, 169.5, 305.5 , 0 );
setEffMoveKey( spep_5+9, ctzuo2, 167.6, 310.8 , 0 );
setEffMoveKey( spep_5+11, ctzuo2, 173.1, 301 , 0 );
setEffMoveKey( spep_5+13, ctzuo2, 168.6, 311.4 , 0 );
setEffMoveKey( spep_5+15, ctzuo2, 174.8, 298.7 , 0 );
setEffMoveKey( spep_5+17, ctzuo2, 168.6, 311.4 , 0 );
setEffMoveKey( spep_5+19, ctzuo2, 174.8, 298.7 , 0 );
setEffMoveKey( spep_5+21, ctzuo2, 168.6, 311.4 , 0 );
setEffMoveKey( spep_5+23, ctzuo2, 174.8, 298.7 , 0 );
setEffMoveKey( spep_5+25, ctzuo2, 168.6, 311.4 , 0 );
setEffMoveKey( spep_5+27, ctzuo2, 176.6, 296.6 , 0 );
setEffMoveKey( spep_5+29, ctzuo2, 169.7, 312.1 , 0 );
setEffMoveKey( spep_5+31, ctzuo2, 170.3, 312.4 , 0 );

setEffScaleKey( spep_5+5, ctzuo2, 0.37, 0.28 );
setEffScaleKey( spep_5+7, ctzuo2, 0.74, 0.57 );
setEffScaleKey( spep_5+9, ctzuo2, 1.12, 0.85 );
setEffScaleKey( spep_5+11, ctzuo2, 1.49, 1.14 );
setEffScaleKey( spep_5+13, ctzuo2, 1.86, 1.42 );
setEffScaleKey( spep_5+25, ctzuo2, 1.86, 1.42 );
setEffScaleKey( spep_5+27, ctzuo2, 2.23, 1.71 );
setEffScaleKey( spep_5+29, ctzuo2, 2.6, 1.99 );
setEffScaleKey( spep_5+31, ctzuo2, 2.98, 2.28 );

setEffRotateKey( spep_5+5, ctzuo2, 19.2 );
setEffRotateKey( spep_5+31, ctzuo2, 19.2 );

setEffAlphaKey( spep_5+5, ctzuo2, 255 );
setEffAlphaKey( spep_5+25, ctzuo2, 255 );
setEffAlphaKey( spep_5+27, ctzuo2, 170 );
setEffAlphaKey( spep_5+29, ctzuo2, 85 );
setEffAlphaKey( spep_5+31, ctzuo2, 0 );

ryu4 = entryEffectLife(  spep_5,  921,  116,  0x80,  -1,  0,  0,  0);  --流線広がり

setEffScaleKey(  spep_5,  ryu4,  1.59,  1.59);
setEffMoveKey(  spep_5,  ryu4,  0,  0);
setEffRotateKey(  spep_5,  ryu4,  -151);
setEffAlphaKey(  spep_5,  ryu4,  255);
setEffScaleKey(  spep_5+116,  ryu4,  1.59,  1.59);
setEffMoveKey(  spep_5+116,  ryu4,  0,  0);
setEffRotateKey(  spep_5+116,  ryu4,  -151);
setEffAlphaKey(  spep_5+116,  ryu4,  255);

hassya = entryEffectLife(  spep_5,  SP_12,  120,  0x80,  -1,  0,  0,  0);  --発射

setEffScaleKey(  spep_5,  hassya,  1.0,  1.0);
setEffMoveKey(  spep_5,  hassya,  0,  0);
setEffRotateKey(  spep_5,  hassya,  0);
setEffAlphaKey(  spep_5,  hassya,  255);
setEffScaleKey(  spep_5+116,  hassya,  1.0,  1.0);
setEffMoveKey(  spep_5+116,  hassya,  0,  0);
setEffRotateKey(  spep_5+116,  hassya,  0);
setEffAlphaKey(  spep_5+116,  hassya,  255);
setEffScaleKey(  spep_5+117,  hassya,  1.0,  1.0);
setEffMoveKey(  spep_5+117,  hassya,  0,  0);
setEffRotateKey(  spep_5+117,  hassya,  0);
setEffAlphaKey(  spep_5+117,  hassya,  0);
setEffScaleKey(  spep_5+120,  hassya,  1.0,  1.0);
setEffMoveKey(  spep_5+120,  hassya,  0,  0);
setEffRotateKey(  spep_5+120,  hassya,  0);
setEffAlphaKey(  spep_5+120,  hassya,  0);


playSe(  spep_5+5,  SE_05);  --発射

entryFadeBg( spep_5, 0, 36, 0, 176, 174, 175, 255);          -- 灰色　背景
entryFadeBg( spep_5+36, 0, 3, 2, 3, 130, 130, 255);          -- 緑　背景
entryFadeBg( spep_5+38, 0, 79, 0, 0, 0, 0, 255);          -- 黒　背景

------------------------------------------------------
-- 気弾(40F)
------------------------------------------------------

spep_6 = spep_5+117;

--敵の動き
setDisp( spep_6, 1, 1 );
changeAnime( spep_6, 1, 107 );

setShakeChara(  spep_6,  1,  38,  10);
setMoveKey( spep_6, 1, 703.3, -729.3 , 0 );
setMoveKey( spep_6+2, 1, 633.3, -654.6 , 0 );
setMoveKey( spep_6+4, 1, 545.4, -596.1 , 0 );
setMoveKey( spep_6+6, 1, 473.5, -525.5 , 0 );
setMoveKey( spep_6+8, 1, 385.5, -466.9 , 0 );
setMoveKey( spep_6+10, 1, 313.5, -396.3 , 0 );
setMoveKey( spep_6+12, 1, 225.6, -337.8 , 0 );
setMoveKey( spep_6+14, 1, 153.7, -267.2 , 0 );
setMoveKey( spep_6+16, 1, 145.2, -272.8 , 0 );
setMoveKey( spep_6+18, 1, 152.7, -266.5 , 0 );
setMoveKey( spep_6+20, 1, 144.2, -272.2 , 0 );
setMoveKey( spep_6+22, 1, 151.7, -265.8 , 0 );
setMoveKey( spep_6+35, 1, 147.7, -263.2 , 0 );
setMoveKey( spep_6+38, 1, 147.7, -263.2 , 0 );
setMoveKey( spep_6+39, 1, 5000, -5000 , 0 );
setMoveKey( spep_6+40, 1, 5000, -5000 , 0 );
setScaleKey( spep_6, 1, 1, 1 );
setScaleKey( spep_6+2, 1, 0.96, 0.96 );
setScaleKey( spep_6+18, 1, 0.71, 0.71 );
setScaleKey( spep_6+36, 1, 0.68, 0.68 );
setScaleKey( spep_6+40, 1, 0.68, 0.68 );
setRotateKey( spep_6, 1, 0 );
setRotateKey( spep_6+40, 1, 0 );

ryu5 = entryEffectLife(  spep_6,  921,  40,  0x80,  -1,  0,  0,  0);  --流線広がり

setEffScaleKey(  spep_6,  ryu5,  1.69,  1.69);
setEffMoveKey(  spep_6,  ryu5,  0,  0);
setEffRotateKey(  spep_6,  ryu5,  -137);
setEffAlphaKey(  spep_6,  ryu5,  255);
setEffScaleKey(  spep_6+36,  ryu5,  1.69,  1.69);
setEffMoveKey(  spep_6+36,  ryu5,  0,  0);
setEffRotateKey(  spep_6+36,  ryu5,  -137);
setEffAlphaKey(  spep_6+36,  ryu5,  255);
setEffScaleKey(  spep_6+37,  ryu5,  1.69,  1.69);
setEffMoveKey(  spep_6+37,  ryu5,  0,  0);
setEffRotateKey(  spep_6+37,  ryu5,  -137);
setEffAlphaKey(  spep_6+37,  ryu5,  0);
setEffScaleKey(  spep_6+40,  ryu5,  1.69,  1.69);
setEffMoveKey(  spep_6+40,  ryu5,  0,  0);
setEffRotateKey(  spep_6+40,  ryu5,  -137);
setEffAlphaKey(  spep_6+40,  ryu5,  0);

kidan = entryEffect(  spep_6,  SP_06,  0x80,  -1,  0,  0,  0);  --気弾

setEffScaleKey(  spep_6,  kidan,  1.0,  1.0);
setEffMoveKey(  spep_6,  kidan,  0,  0);
setEffRotateKey(  spep_6,  kidan,  0);
setEffAlphaKey(  spep_6,  kidan,  255);
setEffScaleKey(  spep_6+40,  kidan,  1.0,  1.0);
setEffMoveKey(  spep_6+40,  kidan,  0,  0);
setEffRotateKey(  spep_6+40,  kidan,  0);
setEffAlphaKey(  spep_6+40,  kidan,  255);

--書き文字
ctzudo = entryEffectLife( spep_6,  10014, 40, 0x100, -1, 0, 57.8, 323.4 );  --ズドド

setEffShake(  spep_6,  ctzudo,  34,  10);
setEffMoveKey( spep_6, ctzudo, 57.8, 323.4 , 0 );
setEffRotateKey( spep_6, ctzudo, 0);
setEffScaleKey( spep_6, ctzudo, 2.87, 3.72 );
setEffAlphaKey( spep_6, ctzudo, 255 );
setEffMoveKey( spep_6+35, ctzudo, 57.8, 323.4 , 0 );
setEffScaleKey( spep_6+35, ctzudo, 2.87, 3.72 );
setEffRotateKey( spep_6+35, ctzudo, 0 );
setEffAlphaKey( spep_6+35, ctzudo, 255 );
setEffMoveKey( spep_6+36, ctzudo, 57.8, 323.4 , 0 );
setEffScaleKey( spep_6+36, ctzudo, 2.87, 3.72 );
setEffRotateKey( spep_6+36, ctzudo, 0 );
setEffAlphaKey( spep_6+36, ctzudo, 0 );
setEffMoveKey( spep_6+40, ctzudo, 57.8, 323.4 , 0 );
setEffScaleKey( spep_6+40, ctzudo, 2.87, 3.72 );
setEffRotateKey( spep_6+40, ctzudo, 0 );
setEffAlphaKey( spep_6+40, ctzudo, 0 );

playSe(  spep_6,  SE_06);  --のびる発射

entryFadeBg( spep_6, 0, 40, 0, 0, 0, 0, 200);          -- 薄暗い　背景
--entryFade( spep_6+53, 0, 3, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- ギャン(60F)
------------------------------------------------------

spep_7 = spep_6+36;

--敵の動き
setDisp( spep_7, 1, 0 );
changeAnime(  spep_7,  1,  107);

setMoveKey(  spep_7,  1,  5000,  -5000,  0);
setMoveKey(  spep_7+60,  1,  5000,  -5000,  0);
setScaleKey(  spep_7,  1,  1.0,  1.0);
setScaleKey(  spep_7+60,  1,  1.0,  1.0);
setRotateKey(  spep_7,  1,  0);
setRotateKey(  spep_7+60,  1,  0);


-- 書き文字エントリー --
ctgyan = entryEffectLife( spep_7, 10006, 58, 0x100, -1, 0, 0, 300);  -- ギャン

setEffScaleKey( spep_7, ctgyan, 1.8, 1.8);
setEffAlphaKey( spep_7, ctgyan, 255);
setEffScaleKey( spep_7+10, ctgyan, 3.8, 3.8);
setEffScaleKey( spep_7+58, ctgyan, 4.3, 4.3);
setEffAlphaKey( spep_7+58, ctgyan, 255);
setEffShake( spep_7, ctgyan, 58, 10);

gayn = entryEffect( spep_7, 190014, 0x80,  -1, 0,  0,  0);   --ギャン

setEffScaleKey(  spep_7,  gayn,  1.0,  1.0);
setEffMoveKey(  spep_7,  gayn,  0,  0);
setEffRotateKey(  spep_7,  gayn,  0);
setEffAlphaKey(  spep_7,  gayn,  255);
setEffScaleKey(  spep_7+58,  gayn,  1.0,  1.0);
setEffMoveKey(  spep_7+58,  gayn,  0,  0);
setEffRotateKey(  spep_7+58,  gayn,  0);
setEffAlphaKey(  spep_7+60,  gayn,  255);

playSe(  spep_7, SE_09);

entryFade( spep_7+43, 14, 5, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--[[
------------------------------------------------------
--爆発(114F)
------------------------------------------------------

spep_8 = spep_7+60;

setDisp( spep_8, 1, 1);
setMoveKey(  spep_8-1,    1,  5000,  -5000,   0);
setScaleKey( spep_8-1,    1,  1.0, 1.0);
setMoveKey(  spep_8,    1,    5000,   -5000,   0);
setScaleKey( spep_8,    1,  0.1, 0.1);
setMoveKey(  spep_8+8,    1,    5000,   -5000,   0);
setScaleKey( spep_8+8,    1,  0.1, 0.1);

changeAnime( spep_8+1, 1, 107);                         -- 手前ダメージ
bakuha = entryEffect( spep_8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発

setEffMoveKey(  spep_8,  bakuha,  0,  0);
setEffScaleKey(  spep_8,  bakuha,  1.0,  1.0);
setEffRotateKey(  spep_8,  bakuha,  0);
setEffAlphaKey(  spep_8,  bakuha,  255);
setEffMoveKey(  spep_8+65,  bakuha,  0,  0);
setEffScaleKey(  spep_8+65,  bakuha,  1.0,  1.0);
setEffRotateKey(  spep_8+65,  bakuha,  0);
setEffAlphaKey(  spep_8+65,  bakuha,  255);
setEffMoveKey(  spep_8+66,  bakuha,  0,  0);
setEffScaleKey(  spep_8+66,  bakuha,  1.0,  1.0);
setEffRotateKey(  spep_8+66,  bakuha,  0);
setEffAlphaKey(  spep_8+66,  bakuha,  0);
setEffMoveKey(  spep_8+114,  bakuha,  0,  0);
setEffScaleKey(  spep_8+114,  bakuha,  1.0,  1.0);
setEffRotateKey(  spep_8+114,  bakuha,  0);
setEffAlphaKey(  spep_8+114,  bakuha,  0);

playSe( spep_8, SE_10);

setMoveKey(  spep_8+9,   1,    0,   0,   128);
setMoveKey(  spep_8+15,   1,  -60,  -200,  -100);
setMoveKey(  spep_8+65,   1,  -60,  -200,  -100);
setMoveKey(  spep_8+66,   1,  -2000,  -2000,  -100);
setMoveKey(  spep_8+67,   1,  -2000,  -2000,  -100);
setMoveKey(  spep_8+68,   1,  -2000,  -2000,  -100);
--setMoveKey(  486,   1,  -60,  -200,  -100);
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
ctga_2 = entryEffectLife( spep_8+15, 10005, 50, 0, -1, 0, -50, 230); -- ガッ
setEffShake(spep_8+15, ctga_2, 30, 10);
setEffRotateKey( spep_8+15, ctga_2, -24);
setEffScaleKey( spep_8+15, ctga_2, 4.0, 4.0);
setEffScaleKey( spep_8+16, ctga_2, 2.0, 2.0);
setEffScaleKey( spep_8+17, ctga_2, 2.6, 2.6);
setEffScaleKey( spep_8+18, ctga_2, 4.0, 4.0);
setEffScaleKey( spep_8+19, ctga_2, 2.6, 2.6);
setEffScaleKey( spep_8+20, ctga_2, 3.8, 3.8);
setEffScaleKey( spep_8+65, ctga_2, 3.8, 3.8);
setEffAlphaKey( spep_8+15, ctga_2, 255);
setEffAlphaKey( spep_8+65, ctga_2, 255);
--setEffAlphaKey( spep_8+115, ctga_2, 0);

playSe( spep_8+3, SE_11);

shuchusen6 = entryEffectLife( spep_8+15, 906, 32, 0x00,  -1, 0,  0,  0);   -- 集中線

setEffMoveKey(  spep_8+15,  shuchusen6,  0,  0);
setEffScaleKey(  spep_8+15,  shuchusen6,  1.0,  1.0);
setEffRotateKey(  spep_8+15,  shuchusen6,  0);
setEffAlphaKey(  spep_8+15,  shuchusen6,  255);
setEffMoveKey(  spep_8+27,  shuchusen6,  0,  0);
setEffScaleKey(  spep_8+27,  shuchusen6,  1.0,  1.0);
setEffRotateKey(  spep_8+27,  shuchusen6,  0);
setEffAlphaKey(  spep_8+27,  shuchusen6,  255);
setEffMoveKey(  spep_8+47,  shuchusen6,  0,  0);
setEffScaleKey(  spep_8+47,  shuchusen6,  1.0,  1.0);
setEffRotateKey(  spep_8+47,  shuchusen6,  0);
setEffAlphaKey(  spep_8+47,  shuchusen6,  0);

hibi = entryEffect( spep_8+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

setEffMoveKey(  spep_8+3,  hibi,  0,  30);
setEffScaleKey(  spep_8+3,  hibi,  1.0,  1.0);
setEffRotateKey(  spep_8+3,  hibi,  0);
setEffAlphaKey(  spep_8+3,  hibi,  255);
setEffMoveKey(  spep_8+65,  hibi,  0,  30);
setEffScaleKey(  spep_8+65,  hibi,  1.0,  1.0);
setEffRotateKey(  spep_8+65,  hibi,  0);
setEffAlphaKey(  spep_8+65,  hibi,  255);
setEffMoveKey(  spep_8+66,  hibi,  0,  30);
setEffScaleKey(  spep_8+66,  hibi,  1.0,  1.0);
setEffRotateKey(  spep_8+66,  hibi,  0);
setEffAlphaKey(  spep_8+66,  hibi,  0);
setEffMoveKey(  spep_8+114,  hibi,  0,  30);
setEffScaleKey(  spep_8+114,  hibi,  1.0,  1.0);
setEffRotateKey(  spep_8+114,  hibi,  0);
setEffAlphaKey(  spep_8+114,  hibi,  0);

shuchusenkuro = entryEffectLife( spep_8+15, 1657, 50, 0x80,  -1, 0,  0,  0);   -- 集中線黒

setEffMoveKey(  spep_8+15,  shuchusenkuro,  0,  0);
setEffScaleKey(  spep_8+15,  shuchusenkuro,  1.0,  1.0);
setEffRotateKey(  spep_8+15,  shuchusenkuro,  0);
setEffAlphaKey(  spep_8+15,  shuchusenkuro,  255);
setEffMoveKey(  spep_8+65,  shuchusenkuro,  0,  0);
setEffScaleKey(  spep_8+65,  shuchusenkuro,  1.0,  1.0);
setEffRotateKey(  spep_8+65,  shuchusenkuro,  0);
setEffAlphaKey(  spep_8+65,  shuchusenkuro,  255);

entryFade( spep_8+62, 3, 2, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
]]--
------------------------------------------------------
--３人でポーズ(120F)
------------------------------------------------------

spep_9 = spep_7+60;

setDisp(  spep_9,  1,  0);  --敵非表示

shuchusen7 = entryEffectLife( spep_9, 906, 120, 0x100,  -1, 0,  0,  0);

setEffMoveKey(  spep_9,  shuchusen7,  0,  0);
setEffScaleKey(  spep_9,  shuchusen7,  1.55,  1.55);
setEffRotateKey(  spep_9,  shuchusen7,  0);
setEffAlphaKey(  spep_9,  shuchusen7,  255);
setEffMoveKey(  spep_9+120,  shuchusen7,  0,  0);
setEffScaleKey(  spep_9+120,  shuchusen7,  1.55,  1.55);
setEffRotateKey(  spep_9+120,  shuchusen7,  0);
setEffAlphaKey(  spep_9+120,  shuchusen7,  255);


peace = entryEffect(  spep_9,  SP_13,  0x80,  -1,  0,  0,  0);

setEffScaleKey(  spep_9,  peace,  1.0,  1.0);
setEffMoveKey(  spep_9,  peace,  0,  0);
setEffRotateKey(  spep_9,  peace,  0);
setEffAlphaKey(  spep_9,  peace,  255);
setEffScaleKey(  spep_9+120,  peace,  1.0,  1.0);
setEffMoveKey(  spep_9+120,  peace,  0,  0);
setEffRotateKey(  spep_9+120,  peace,  0);
setEffAlphaKey(  spep_9+120,  peace,  255);

playSe(  spep_9,  SE_10);  --爆発音

-- ダメージ表示
dealDamage(spep_9+10);

entryFade( spep_9+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_9+110);

end
