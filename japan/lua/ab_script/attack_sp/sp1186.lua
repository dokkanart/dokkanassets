--　sp1186_人造人間18号(GT)_パワーブリッツ

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

SP_01 = 151758  --突進
SP_02 = 151759  --ラッシュ
SP_03 = 151760  --溜め〜発射
SP_04 = 151761  --ラッシュ(敵)
SP_05 = 151762  --溜め〜発射(敵)


------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

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


------------------------------------------------------
-- 突進(60F)
------------------------------------------------------

spep_1 = 0;

shuchusen1 = entryEffectLife( spep_1, 906, 52, 0x100,  -1, 0,  0,  0);   -- 集中線

setEffScaleKey(  spep_1,  shuchusen1,  1.0,  1.0);
setEffMoveKey(  spep_1,  shuchusen1,  0,  0);
setEffRotateKey(  spep_1,  shuchusen1,  0);
setEffAlphaKey(  spep_1,  shuchusen1,  255);
setEffScaleKey(  spep_1+52,  shuchusen1,  1.0,  1.0);
setEffMoveKey(  spep_1+52,  shuchusen1,  0,  0);
setEffRotateKey(  spep_1+52,  shuchusen1,  0);
setEffAlphaKey(  spep_1+52,  shuchusen1,  255);

-- 書き文字エントリー
ctzuo = entryEffectLife( spep_1,  10012, 44, 0x100, -1, 0, 0, 190.2 );  --ズオッ 
setEffShake(spep_1,  ctzuo,  44,  10);
setEffMoveKey( spep_1, ctzuo, 0, 190.2 , 0 );
setEffMoveKey( spep_1+2, ctzuo, 0, 258 , 0 );
setEffMoveKey( spep_1+4, ctzuo, 0, 325.7 , 0 );
setEffMoveKey( spep_1+6, ctzuo, 0, 393.6 , 0 );
setEffMoveKey( spep_1+44, ctzuo, 0, 393.6 , 0 );
setEffScaleKey( spep_1+0, ctzuo, 0.1, 0.1 );
setEffScaleKey( spep_1+2, ctzuo, 0.87, 0.87 );
setEffScaleKey( spep_1+4, ctzuo, 1.55, 1.55 );
setEffScaleKey( spep_1+6, ctzuo, 2.39, 2.39 );
setEffScaleKey( spep_1+44, ctzuo, 2.39, 2.39 );
setEffRotateKey( spep_1, ctzuo, 0 );
setEffRotateKey( spep_1+44, ctzuo, 0 );
setEffAlphaKey( spep_1+0, ctzuo, 255 );
setEffAlphaKey( spep_1+38, ctzuo, 255 );
setEffAlphaKey( spep_1+40, ctzuo, 170 );
setEffAlphaKey( spep_1+42, ctzuo, 85 );
setEffAlphaKey( spep_1+44, ctzuo, 0 );

tosshin = entryEffect(  spep_1,  SP_01,  0x80,  -1,  0,  0,  0);  --突進

setEffScaleKey(  spep_1,  tosshin,  1.0,  1.0);
setEffMoveKey(  spep_1,  tosshin,  0,  0);
setEffRotateKey(  spep_1,  tosshin,  0);
setEffAlphaKey(  spep_1,  tosshin,  255);
setEffScaleKey(  spep_1+52,  tosshin,  1.0,  1.0);
setEffMoveKey(  spep_1+52,  tosshin,  0,  0);
setEffRotateKey(  spep_1+52,  tosshin,  0);
setEffAlphaKey(  spep_1+52,  tosshin,  255);

playSe(  spep_1,  9);  --ダッシュ

entryFadeBg( spep_1, 0, 52, 0, 0, 0, 0, 200);          -- 黒　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_1+30; --エンドフェイズのフレーム数を置き換える

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


------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------

spep_2 = 53;

playSe( spep_2-1, SE_05);
speff = entryEffect(  spep_2-1,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

shuchusen = entryEffectLife( spep_2-1, 906, 90, 0x100,  -1, 0,  0,  0);

setEffMoveKey(  spep_2-1,  shuchusen,  0,  0);
setEffScaleKey(  spep_2-1,  shuchusen,  1.0,  1.0);
setEffRotateKey(  spep_2-1,  shuchusen,  0);
setEffAlphaKey(  spep_2-1,  shuchusen,  255);
setEffMoveKey(  spep_2+89,  shuchusen,  0,  0);
setEffScaleKey(  spep_2+89,  shuchusen,  1.0,  1.0);
setEffRotateKey(  spep_2+89,  shuchusen,  0);
setEffAlphaKey(  spep_2+89,  shuchusen,  255);

entryFade( spep_2+80, 5, 7, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- ラッシュ(140F)
------------------------------------------------------

spep_3 = spep_2+90;

shuchusen1 = entryEffectLife( spep_3, 906, 17, 0x100,  -1, 0,  0,  0);   -- 集中線

setEffScaleKey(  spep_3,  shuchusen1,  1.15,  1.15);
setEffMoveKey(  spep_3,  shuchusen1,  0,  0);
setEffRotateKey(  spep_3,  shuchusen1,  0);
setEffAlphaKey(  spep_3,  shuchusen1,  255);
setEffScaleKey(  spep_3+17,  shuchusen1,  1.15,  1.15);
setEffMoveKey(  spep_3+17,  shuchusen1,  0,  0);
setEffRotateKey(  spep_3+17,  shuchusen1,  0);
setEffAlphaKey(  spep_3+17,  shuchusen1,  255);

ryu1 = entryEffectLife(  spep_3+18,  920,  92,  0x80,  -1,  0,  0,  0);  --流線横

setEffScaleKey(  spep_3+18,  ryu1,  1.13,  1.3);
setEffMoveKey(  spep_3+18,  ryu1,  0,  0);
setEffRotateKey(  spep_3+18,  ryu1,  0);
setEffAlphaKey(  spep_3+18,  ryu1,  255);
setEffScaleKey(  spep_3+110,  ryu1,  1.13,  1.3);
setEffMoveKey(  spep_3+110,  ryu1,  0,  0);
setEffRotateKey(  spep_3+110,  ryu1,  0);
setEffAlphaKey(  spep_3+110,  ryu1,  255);

ryu2 = entryEffectLife(  spep_3+111,  921,  29,  0x80,  -1,  0,  0,  0);  --流線斜め

setEffScaleKey(  spep_3+111,  ryu2,  2.3,  1.3);
setEffMoveKey(  spep_3+111,  ryu2,  0,  0);
setEffRotateKey(  spep_3+111,  ryu2,  -49);
setEffAlphaKey(  spep_3+111,  ryu2,  255);
setEffScaleKey(  spep_3+140,  ryu2,  2.3,  1.3);
setEffMoveKey(  spep_3+140,  ryu2,  0,  0);
setEffRotateKey(  spep_3+140,  ryu2,  -49);
setEffAlphaKey(  spep_3+140,  ryu2,  255);

--書き文字エントリー
ctga_1 = entryEffectLife( spep_3+21,  10005, 15, 0x100, -1, 0, -41, 167.9 );  --ガッ
setEffShake(spep_3+21,  ctga_1,  15,  10);
setEffMoveKey( spep_3+21, ctga_1, -41, 167.9 , 0 );
setEffMoveKey( spep_3+24, ctga_1, -21.3, 189.3 , 0 );
setEffMoveKey( spep_3+26, ctga_1, -14, 222.9 , 0 );
setEffMoveKey( spep_3+28, ctga_1, -5, 214.1 , 0 );
setEffMoveKey( spep_3+36, ctga_1, -5, 214.1 , 0 );
setEffScaleKey( spep_3+21, ctga_1, 0.6, 0.6 );
setEffScaleKey( spep_3+24, ctga_1, 1.1, 1.1 );
setEffScaleKey( spep_3+26, ctga_1, 1.59, 1.59 );
setEffScaleKey( spep_3+36, ctga_1, 1.59, 1.59 );
setEffRotateKey( spep_3+21, ctga_1, 14.3 );
setEffRotateKey( spep_3+36, ctga_1, 14.3 );
setEffAlphaKey( spep_3+21, ctga_1, 255 );
setEffAlphaKey( spep_3+36, ctga_1, 255 );


ctbaki = entryEffectLife( spep_3+67,  10020, 18, 0x100, -1, 0, -14, 178.9 );  --バキッ
setEffShake(spep_3+67,  ctbaki,  18,  10);
setEffMoveKey( spep_3+67, ctbaki, -14, 178.9 , 0 );
setEffMoveKey( spep_3+70, ctbaki, 8.5, 201.4 , 0 );
setEffMoveKey( spep_3+72, ctbaki, 27, 228.9 , 0 );
setEffMoveKey( spep_3+74, ctbaki, 30.1, 225 , 0 );
setEffMoveKey( spep_3+86, ctbaki, 30.1, 225 , 0 );
setEffScaleKey( spep_3+67, ctbaki, 0.36, 0.36 );
setEffScaleKey( spep_3+70, ctbaki, 0.81, 0.81 );
setEffScaleKey( spep_3+72, ctbaki, 1.27, 1.27 );
setEffScaleKey( spep_3+86, ctbaki, 1.27, 1.27 );
setEffRotateKey( spep_3+67, ctbaki, 35.6 );
setEffRotateKey( spep_3+86, ctbaki, 35.6 );
setEffAlphaKey( spep_3+67, ctbaki, 255 );
setEffAlphaKey( spep_3+86, ctbaki, 255 );

ctbako = entryEffectLife( spep_3+111,  10021, 12, 0x100, -1, 0, 16, 161.9 );  --バコォッ
setEffShake(spep_3+111,  ctbako,  12,  10);
setEffMoveKey( spep_3+111, ctbako, 16, 161.9 , 0 );
setEffMoveKey( spep_3+114, ctbako, 17.1, 198.4 , 0 );
setEffMoveKey( spep_3+116, ctbako, 9.1, 243.9 , 0 );
setEffMoveKey( spep_3+124, ctbako, 9.1, 243.9 , 0 );
setEffScaleKey( spep_3+111, ctbako, 1, 1 );
setEffScaleKey( spep_3+114, ctbako, 1.62, 1.62 );
setEffScaleKey( spep_3+116, ctbako, 2.23, 2.23 );
setEffScaleKey( spep_3+124, ctbako, 2.23, 2.23 );
setEffRotateKey( spep_3+111, ctbako, 0 );
setEffRotateKey( spep_3+124, ctbako, 0 );
setEffAlphaKey( spep_3+111, ctbako, 255 );
setEffAlphaKey( spep_3+124, ctbako, 255 );

--敵の動き
setDisp( spep_3, 1, 1 );
changeAnime( spep_3, 1, 100);  --構え

setShakeChara(  spep_3,  1,  140,  10);  --揺れ
setMoveKey( spep_3, 1, -10, 0 , 0 );
setMoveKey( spep_3+20, 1, -10, 0 , 0 );
setScaleKey( spep_3, 1, 1.15, 1.15 );
setScaleKey( spep_3+20, 1, 1.15, 1.15 );
setRotateKey( spep_3, 1, 0 );

changeAnime( spep_3+21, 1, 108 );  --くの字

setMoveKey( spep_3+21, 1, 127.1, 0 , 0 );
setMoveKey( spep_3+26, 1, 106.6, 5.9 , 0 );
setMoveKey( spep_3+28, 1, 63.9, -5.8 , 0 );
setMoveKey( spep_3+30, 1, 36.2, -0.4 , 0 );
setMoveKey( spep_3+32, 1, 9.7, 4.6 , 0 );
setMoveKey( spep_3+66, 1, 32.7, -6.9 , 0 );
setScaleKey( spep_3+21, 1, 1.73, 1.73 );
setScaleKey( spep_3+26, 1, 1.59, 1.59 );
setScaleKey( spep_3+28, 1, 1.44, 1.44 );
setScaleKey( spep_3+30, 1, 1.3, 1.3 );
setScaleKey( spep_3+32, 1, 1.15, 1.15 );
setScaleKey( spep_3+66, 1, 1.15, 1.15 );
setRotateKey( spep_3+24, 1, 0);
setRotateKey( spep_3+66, 1, 0 );

changeAnime( spep_3+67, 1, 106 );  --仰け反り
setMoveKey( spep_3+67, 1, -106.1, 6.2 , 0 );
setMoveKey( spep_3+72, 1, -106.1, 6.2 , 0 );
setMoveKey( spep_3+74, 1, -100.7, -1.7 , 0 );
setMoveKey( spep_3+76, 1, -73.8, 4 , 0 );
setMoveKey( spep_3+78, 1, -55.8, -5.9 , 0 );
setMoveKey( spep_3+108, 1, -16.4, 17.7 , 0 );
setScaleKey( spep_3+67, 1, 1.72, 1.72 );
setScaleKey( spep_3+72, 1, 1.58, 1.58 );
setScaleKey( spep_3+74, 1, 1.43, 1.43 );
setScaleKey( spep_3+76, 1, 1.3, 1.3 );
setScaleKey( spep_3+78, 1, 1.15, 1.15 );
setScaleKey( spep_3+108, 1, 1.15, 1.15);
setRotateKey( spep_3+67, 1, -52.9 );
setRotateKey( spep_3+108, 1, -52.9 );

changeAnime( spep_3+109, 1, 108 );  --くの字

setMoveKey( spep_3+109, 1, 45.2, 50.6 , 0 );
setMoveKey( spep_3+114, 1, 93.1, 101.3 , 0 );
setMoveKey( spep_3+116, 1, 111.1, 147.4 , 0 );
setMoveKey( spep_3+118, 1, 125.2, 153.2 , 0 );
setMoveKey( spep_3+120, 1, 140.9, 181 , 0 );
setMoveKey( spep_3+122, 1, 141.2, 202.1 , 0 );
setMoveKey( spep_3+124, 1, 142.8, 198.9 , 0 );
setMoveKey( spep_3+126, 1, 170.2, 234.2 , 0 );
setMoveKey( spep_3+128, 1, 179.6, 250.7 , 0 );
setMoveKey( spep_3+130, 1, 198.4, 282.2 , 0 );
setMoveKey( spep_3+132, 1, 218.6, 312.9 , 0 );
setMoveKey( spep_3+134, 1, 226.3, 331.5 , 0 );
setMoveKey( spep_3+136, 1, 251.8, 365.5 , 0 );
setMoveKey( spep_3+138, 1, 269.2, 380.1 , 0 );
setScaleKey( spep_3+109, 1, 1.15, 1.15 );
setScaleKey( spep_3+114, 1, 1.68, 1.68 );
setScaleKey( spep_3+116, 1, 1.51, 1.51 );
setScaleKey( spep_3+118, 1, 1.37, 1.37 );
setScaleKey( spep_3+120, 1, 1.21, 1.21 );
setScaleKey( spep_3+122, 1, 1.08, 1.08 );
setScaleKey( spep_3+124, 1, 0.94, 0.94 );
setScaleKey( spep_3+126, 1, 0.91, 0.91 );
setScaleKey( spep_3+128, 1, 0.87, 0.87 );
setScaleKey( spep_3+130, 1, 0.84, 0.84 );
setScaleKey( spep_3+132, 1, 0.8, 0.8 );
setScaleKey( spep_3+134, 1, 0.77, 0.77 );
setScaleKey( spep_3+136, 1, 0.74, 0.74 );
setScaleKey( spep_3+138, 1, 0.7, 0.7 );
setRotateKey( spep_3+109, 1, 0 );
setRotateKey( spep_3+138, 1, 0 );


rush = entryEffect(  spep_3,  SP_02,  0x100,  -1,  0,  0,  0);  --ラッシュ

setEffScaleKey(  spep_3,  rush,  1.0,  1.0);
setEffMoveKey(  spep_3,  rush,  0,  0);
setEffRotateKey(  spep_3,  rush,  0);
setEffAlphaKey(  spep_3,  rush,  255);
setEffScaleKey(  spep_3+140,  rush,  1.0,  1.0);
setEffMoveKey(  spep_3+140,  rush,  0,  0);
setEffRotateKey(  spep_3+140,  rush,  0);
setEffAlphaKey(  spep_3+140,  rush,  255);

playSe(  spep_3+12,  43);  --瞬間移動
playSe(  spep_3+21,  1000);  --パンチ
playSe(  spep_3+60,  43);  --瞬間移動
playSe(  spep_3+67,  1001);  --キック
playSe(  spep_3+104,  43);  --瞬間移動
playSe(  spep_3+109,  1009);  --パンチ

entryFadeBg( spep_3, 0, 140, 0, 0, 0, 0, 255);          -- 黒　背景

entryFade( spep_3+130, 8, 3, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 溜め、発射(140F)
------------------------------------------------------

spep_4 = spep_3+140;

kidan = entryEffect(  spep_4,  SP_03,  0x100,  -1,  0,  0,  0);  --気弾

setEffScaleKey(  spep_4,  kidan,  1.0,  1.0);
setEffMoveKey(  spep_4,  kidan,  0,  0);
setEffRotateKey(  spep_4,  kidan,  0);
setEffAlphaKey(  spep_4,  kidan,  255);
setEffScaleKey(  spep_4+140,  kidan,  1.0,  1.0);
setEffMoveKey(  spep_4+140,  kidan,  0,  0);
setEffRotateKey(  spep_4+140,  kidan,  0);
setEffAlphaKey(  spep_4+140,  kidan,  255);

shuchusen2 = entryEffectLife( spep_4, 906, 90, 0x100,  -1, 0,  0,  0);   -- 集中線

setEffScaleKey(  spep_4,  shuchusen2,  1.15,  1.15);
setEffMoveKey(  spep_4,  shuchusen2,  0,  0);
setEffRotateKey(  spep_4,  shuchusen2,  0);
setEffAlphaKey(  spep_4,  shuchusen2,  255);
setEffScaleKey(  spep_4+90,  shuchusen2,  1.15,  1.15);
setEffMoveKey(  spep_4+90,  shuchusen2,  0,  0);
setEffRotateKey(  spep_4+90,  shuchusen2,  0);
setEffAlphaKey(  spep_4+90,  shuchusen2,  255);

-- カットイン
speff = entryEffect(  spep_4,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_4,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー --
ctgogo = entryEffectLife( spep_4+13, 190006, 71, 0x100, -1, 0, 0, 510);    -- ゴゴゴゴ

setEffScaleKey(  spep_4+13,  ctgogo,  0.7,  0.7);
setEffMoveKey(  spep_4+13,  ctgogo,  0,  530);
setEffRotateKey(  spep_4+13,  ctgogo,  0);
setEffScaleKey(  spep_4+84,  ctgogo,  0.7,  0.7);
setEffMoveKey(  spep_4+84,  ctgogo,  0,  530);
setEffRotateKey(  spep_4+84,  ctgogo,  0);

playSe(  spep_4,  SE_04);  --カットイン音

ryu3 = entryEffectLife(  spep_4,  921,  140,  0x80,  -1,  0,  0,  0);  --流線斜め

setEffScaleKey(  spep_4,  ryu3,  2.0,  1.5);
setEffMoveKey(  spep_4,  ryu3,  0,  0);
setEffRotateKey(  spep_4,  ryu3,  -44);
setEffAlphaKey(  spep_4,  ryu3,  0);
setEffScaleKey(  spep_4+90,  ryu3,  2.0,  1.5);
setEffMoveKey(  spep_4+90,  ryu3,  0,  0);
setEffRotateKey(  spep_4+90,  ryu3,  -44);
setEffAlphaKey(  spep_4+90,  ryu3,  0);
setEffScaleKey(  spep_4+91,  ryu3,  2.0,  1.5);
setEffMoveKey(  spep_4+91,  ryu3,  0,  0);
setEffRotateKey(  spep_4+91,  ryu3,  -44);
setEffAlphaKey(  spep_4+91,  ryu3,  255);
setEffScaleKey(  spep_4+140,  ryu3,  2.0,  1.5);
setEffMoveKey(  spep_4+140,  ryu3,  0,  0);
setEffRotateKey(  spep_4+140,  ryu3,  -44);
setEffAlphaKey(  spep_4+140,  ryu3,  255);


--敵の動き
changeAnime( spep_4, 1, 108 );  --くの字
setMoveKey( spep_4, 1, 700, 700 , 0 );
setScaleKey( spep_4, 1, 0.8, 0.8 );
setRotateKey( spep_4, 1, -30.6 );

setShakeChara(  spep_3+91,  1,  46,  10);  --揺れ
setMoveKey( spep_4+91, 1, 622.1, 620.2 , 0 );
setMoveKey( spep_4+103, 1, 243.4, 228.9 , 0 );
setMoveKey( spep_4+105, 1, 162.7, 136.5 , 0 );
setMoveKey( spep_4+107, 1, 70.4, 40 , 0 );
setMoveKey( spep_4+110, 1, 105.8, 73.3 , 0 );
setMoveKey( spep_4+112, 1, 141.8, 109.7 , 0 );
setMoveKey( spep_4+114, 1, 166.1, 142.1 , 0 );
setMoveKey( spep_4+116, 1, 201.2, 175.3 , 0 );
setMoveKey( spep_4+118, 1, 236.8, 211.6 , 0 );
setMoveKey( spep_4+120, 1, 261.7, 244.1 , 0 );
setMoveKey( spep_4+135, 1, 470.5, 451.5 , 0 );
setMoveKey( spep_4+138, 1, 470.5, 451.5 , 0 );
setMoveKey( spep_4+140, 1, 2000, 2000 , 0 );
setScaleKey( spep_4+91, 1, 0.8, 0.8 );
setScaleKey( spep_4+103, 1, 1, 1 );
setScaleKey( spep_4+105, 1, 1.15, 1.15 );
setScaleKey( spep_4+107, 1, 1.3, 1.3 );
setScaleKey( spep_4+110, 1, 1.27, 1.27 );
setScaleKey( spep_4+112, 1, 1.23, 1.23 );
setScaleKey( spep_4+114, 1, 1.2, 1.2 );
setScaleKey( spep_4+116, 1, 1.17, 1.17 );
setScaleKey( spep_4+118, 1, 1.13, 1.13 );
setScaleKey( spep_4+120, 1, 1.1, 1.1 );
setScaleKey( spep_4+135, 1, 0.8, 0.8 );
setScaleKey( spep_4+140, 1, 0.8, 0.8 );
setRotateKey( spep_4+91, 1, -30.6 );
setRotateKey( spep_4+140, 1, -30.6 );

playSe(  spep_4,  1035);
playSe(  spep_4+90,  SE_07);

entryFadeBg( spep_4, 0, 140, 0, 0, 0, 0, 255);          -- 黒　背景

entryFade( spep_4+134, 5, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 爆発 (110F) 469
------------------------------------------------------

spep_5 = spep_4+140;

setDisp( spep_5, 1, 1);
setMoveKey(  spep_5,    1,  100,  0,   0);
setScaleKey( spep_5,    1,  1.0, 1.0);
setMoveKey(  spep_5+1,    1,    0,   0,   128);
setScaleKey( spep_5+1,    1,  0.1, 0.1);

changeAnime( spep_5+1, 1, 107);                         -- 手前ダメージ
entryEffect( spep_5+9, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_5+9, SE_10);

setMoveKey(  spep_5+9,   1,    0,   0,   128);
setMoveKey(  spep_5+15,   1,  -60,  -200,  -100);
--setMoveKey(  486,   1,  -60,  -200,  -100);
setDamage( spep_5+16, 1, 0);  -- ダメージ振動等
setShake(spep_5+7,6,15);
setShake(spep_5+13,15,10);

setRotateKey( spep_5,  1,  30 );
setRotateKey( spep_5+2,  1,  80 );
setRotateKey( spep_5+4,  1, 120 );
setRotateKey( spep_5+6,  1, 160 );
setRotateKey( spep_5+8,  1, 200 );
setRotateKey( spep_5+10,  1, 260 );
setRotateKey( spep_5+12,  1, 320 );
setRotateKey( spep_5+14,  1,   0 );

setShakeChara( spep_5+15, 1, 5,  10);
setShakeChara( spep_5+20, 1, 10, 20);

-- 書き文字エントリー
ctga_2 = entryEffectLife( spep_5+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake(spep_5+15, ctga_2, 30, 10);
setEffRotateKey( spep_5+15, ctga_2, -40);
setEffScaleKey( spep_5+15, ctga_2, 4.0, 4.0);
setEffScaleKey( spep_5+16, ctga_2, 2.0, 2.0);
setEffScaleKey( spep_5+17, ctga_2, 2.6, 2.6);
setEffScaleKey( spep_5+18, ctga_2, 4.0, 4.0);
setEffScaleKey( spep_5+19, ctga_2, 2.6, 2.6);
setEffScaleKey( spep_5+20, ctga_2, 3.8, 3.8);
setEffScaleKey( spep_5+110, ctga_2, 3.8, 3.8);
setEffAlphaKey( spep_5+15, ctga_2, 255);
setEffAlphaKey( spep_5+105, ctga_2, 255);
setEffAlphaKey( spep_5+115, ctga_2, 0);

playSe( spep_5+3, SE_11);
shuchusen3 = entryEffectLife( spep_5+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_5+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

shuchusenkuro = entryEffectLife( spep_5+15, 1657, 120, 0x80,  -1, 0,  0,  0);   -- 集中線

-- ダメージ表示
dealDamage(spep_5+16);

entryFade( spep_5+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_5+110);
else


-----------------------------------------
--敵側の攻撃
-----------------------------------------
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


------------------------------------------------------
-- 突進(60F)
------------------------------------------------------

spep_1 = 0;

shuchusen1 = entryEffectLife( spep_1, 906, 52, 0x100,  -1, 0,  0,  0);   -- 集中線

setEffScaleKey(  spep_1,  shuchusen1,  1.0,  1.0);
setEffMoveKey(  spep_1,  shuchusen1,  0,  0);
setEffRotateKey(  spep_1,  shuchusen1,  0);
setEffAlphaKey(  spep_1,  shuchusen1,  255);
setEffScaleKey(  spep_1+52,  shuchusen1,  1.0,  1.0);
setEffMoveKey(  spep_1+52,  shuchusen1,  0,  0);
setEffRotateKey(  spep_1+52,  shuchusen1,  0);
setEffAlphaKey(  spep_1+52,  shuchusen1,  255);

-- 書き文字エントリー
ctzuo = entryEffectLife( spep_1,  10012, 44, 0x100, -1, 0, 0, 190.2 );  --ズオッ 
setEffShake(spep_1,  ctzuo,  44,  10);
setEffMoveKey( spep_1, ctzuo, 0, 190.2 , 0 );
setEffMoveKey( spep_1+2, ctzuo, 0, 258 , 0 );
setEffMoveKey( spep_1+4, ctzuo, 0, 325.7 , 0 );
setEffMoveKey( spep_1+6, ctzuo, 0, 393.6 , 0 );
setEffMoveKey( spep_1+44, ctzuo, 0, 393.6 , 0 );
setEffScaleKey( spep_1+0, ctzuo, 0.1, 0.1 );
setEffScaleKey( spep_1+2, ctzuo, 0.87, 0.87 );
setEffScaleKey( spep_1+4, ctzuo, 1.55, 1.55 );
setEffScaleKey( spep_1+6, ctzuo, 2.39, 2.39 );
setEffScaleKey( spep_1+44, ctzuo, 2.39, 2.39 );
setEffRotateKey( spep_1, ctzuo, 0 );
setEffRotateKey( spep_1+44, ctzuo, 0 );
setEffAlphaKey( spep_1+0, ctzuo, 255 );
setEffAlphaKey( spep_1+38, ctzuo, 255 );
setEffAlphaKey( spep_1+40, ctzuo, 170 );
setEffAlphaKey( spep_1+42, ctzuo, 85 );
setEffAlphaKey( spep_1+44, ctzuo, 0 );

tosshin = entryEffect(  spep_1,  SP_01,  0x80,  -1,  0,  0,  0);  --突進

setEffScaleKey(  spep_1,  tosshin,  -1.0,  1.0);
setEffMoveKey(  spep_1,  tosshin,  0,  0);
setEffRotateKey(  spep_1,  tosshin,  0);
setEffAlphaKey(  spep_1,  tosshin,  255);
setEffScaleKey(  spep_1+52,  tosshin,  -1.0,  1.0);
setEffMoveKey(  spep_1+52,  tosshin,  0,  0);
setEffRotateKey(  spep_1+52,  tosshin,  0);
setEffAlphaKey(  spep_1+52,  tosshin,  255);

playSe(  spep_1,  9);  --ダッシュ

entryFadeBg( spep_1, 0, 52, 0, 0, 0, 0, 200);          -- 黒　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_1+30; --エンドフェイズのフレーム数を置き換える

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


------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------

spep_2 = 53;

playSe( spep_2-1, SE_05);
speff = entryEffect(  spep_2-1,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

shuchusen = entryEffectLife( spep_2-1, 906, 90, 0x100,  -1, 0,  0,  0);

setEffMoveKey(  spep_2-1,  shuchusen,  0,  0);
setEffScaleKey(  spep_2-1,  shuchusen,  1.0,  1.0);
setEffRotateKey(  spep_2-1,  shuchusen,  0);
setEffAlphaKey(  spep_2-1,  shuchusen,  255);
setEffMoveKey(  spep_2+89,  shuchusen,  0,  0);
setEffScaleKey(  spep_2+89,  shuchusen,  1.0,  1.0);
setEffRotateKey(  spep_2+89,  shuchusen,  0);
setEffAlphaKey(  spep_2+89,  shuchusen,  255);

entryFade( spep_2+80, 5, 7, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- ラッシュ(140F)
------------------------------------------------------

spep_3 = spep_2+90;

shuchusen1 = entryEffectLife( spep_3, 906, 17, 0x100,  -1, 0,  0,  0);   -- 集中線

setEffScaleKey(  spep_3,  shuchusen1,  1.15,  1.15);
setEffMoveKey(  spep_3,  shuchusen1,  0,  0);
setEffRotateKey(  spep_3,  shuchusen1,  0);
setEffAlphaKey(  spep_3,  shuchusen1,  255);
setEffScaleKey(  spep_3+17,  shuchusen1,  1.15,  1.15);
setEffMoveKey(  spep_3+17,  shuchusen1,  0,  0);
setEffRotateKey(  spep_3+17,  shuchusen1,  0);
setEffAlphaKey(  spep_3+17,  shuchusen1,  255);

ryu1 = entryEffectLife(  spep_3+18,  920,  92,  0x80,  -1,  0,  0,  0);  --流線横

setEffScaleKey(  spep_3+18,  ryu1,  1.13,  1.3);
setEffMoveKey(  spep_3+18,  ryu1,  0,  0);
setEffRotateKey(  spep_3+18,  ryu1,  0);
setEffAlphaKey(  spep_3+18,  ryu1,  255);
setEffScaleKey(  spep_3+110,  ryu1,  1.13,  1.3);
setEffMoveKey(  spep_3+110,  ryu1,  0,  0);
setEffRotateKey(  spep_3+110,  ryu1,  0);
setEffAlphaKey(  spep_3+110,  ryu1,  255);

ryu2 = entryEffectLife(  spep_3+111,  921,  29,  0x80,  -1,  0,  0,  0);  --流線斜め

setEffScaleKey(  spep_3+111,  ryu2,  2.3,  1.3);
setEffMoveKey(  spep_3+111,  ryu2,  0,  0);
setEffRotateKey(  spep_3+111,  ryu2,  -49);
setEffAlphaKey(  spep_3+111,  ryu2,  255);
setEffScaleKey(  spep_3+140,  ryu2,  2.3,  1.3);
setEffMoveKey(  spep_3+140,  ryu2,  0,  0);
setEffRotateKey(  spep_3+140,  ryu2,  -49);
setEffAlphaKey(  spep_3+140,  ryu2,  255);

--書き文字エントリー
ctga_1 = entryEffectLife( spep_3+21,  10005, 15, 0x100, -1, 0, -41, 167.9 );  --ガッ
setEffShake(spep_3+21,  ctga_1,  15,  10);
setEffMoveKey( spep_3+21, ctga_1, -41, 167.9 , 0 );
setEffMoveKey( spep_3+24, ctga_1, -21.3, 189.3 , 0 );
setEffMoveKey( spep_3+26, ctga_1, -14, 222.9 , 0 );
setEffMoveKey( spep_3+28, ctga_1, -5, 214.1 , 0 );
setEffMoveKey( spep_3+36, ctga_1, -5, 214.1 , 0 );
setEffScaleKey( spep_3+21, ctga_1, 0.6, 0.6 );
setEffScaleKey( spep_3+24, ctga_1, 1.1, 1.1 );
setEffScaleKey( spep_3+26, ctga_1, 1.59, 1.59 );
setEffScaleKey( spep_3+36, ctga_1, 1.59, 1.59 );
setEffRotateKey( spep_3+21, ctga_1, 14.3 );
setEffRotateKey( spep_3+36, ctga_1, 14.3 );
setEffAlphaKey( spep_3+21, ctga_1, 255 );
setEffAlphaKey( spep_3+36, ctga_1, 255 );


ctbaki = entryEffectLife( spep_3+67,  10020, 18, 0x100, -1, 0, -14, 178.9 );  --バキッ
setEffShake(spep_3+67,  ctbaki,  18,  10);
setEffMoveKey( spep_3+67, ctbaki, -14, 178.9 , 0 );
setEffMoveKey( spep_3+70, ctbaki, 8.5, 201.4 , 0 );
setEffMoveKey( spep_3+72, ctbaki, 27, 228.9 , 0 );
setEffMoveKey( spep_3+74, ctbaki, 30.1, 225 , 0 );
setEffMoveKey( spep_3+86, ctbaki, 30.1, 225 , 0 );
setEffScaleKey( spep_3+67, ctbaki, 0.36, 0.36 );
setEffScaleKey( spep_3+70, ctbaki, 0.81, 0.81 );
setEffScaleKey( spep_3+72, ctbaki, 1.27, 1.27 );
setEffScaleKey( spep_3+86, ctbaki, 1.27, 1.27 );
setEffRotateKey( spep_3+67, ctbaki, 35.6 );
setEffRotateKey( spep_3+86, ctbaki, 35.6 );
setEffAlphaKey( spep_3+67, ctbaki, 255 );
setEffAlphaKey( spep_3+86, ctbaki, 255 );

ctbako = entryEffectLife( spep_3+111,  10021, 12, 0x100, -1, 0, 16, 161.9 );  --バコォッ
setEffShake(spep_3+111,  ctbako,  12,  10);
setEffMoveKey( spep_3+111, ctbako, 16, 161.9 , 0 );
setEffMoveKey( spep_3+114, ctbako, 17.1, 198.4 , 0 );
setEffMoveKey( spep_3+116, ctbako, 9.1, 243.9 , 0 );
setEffMoveKey( spep_3+124, ctbako, 9.1, 243.9 , 0 );
setEffScaleKey( spep_3+111, ctbako, 1, 1 );
setEffScaleKey( spep_3+114, ctbako, 1.62, 1.62 );
setEffScaleKey( spep_3+116, ctbako, 2.23, 2.23 );
setEffScaleKey( spep_3+124, ctbako, 2.23, 2.23 );
setEffRotateKey( spep_3+111, ctbako, 0 );
setEffRotateKey( spep_3+124, ctbako, 0 );
setEffAlphaKey( spep_3+111, ctbako, 255 );
setEffAlphaKey( spep_3+124, ctbako, 255 );

--敵の動き
setDisp( spep_3, 1, 1 );
changeAnime( spep_3, 1, 100);  --構え

setShakeChara(  spep_3,  1,  140,  10);  --揺れ
setMoveKey( spep_3, 1, -10, 0 , 0 );
setMoveKey( spep_3+20, 1, -10, 0 , 0 );
setScaleKey( spep_3, 1, 1.15, 1.15 );
setScaleKey( spep_3+20, 1, 1.15, 1.15 );
setRotateKey( spep_3, 1, 0 );

changeAnime( spep_3+21, 1, 108 );  --くの字

setMoveKey( spep_3+21, 1, 127.1, 0 , 0 );
setMoveKey( spep_3+26, 1, 106.6, 5.9 , 0 );
setMoveKey( spep_3+28, 1, 63.9, -5.8 , 0 );
setMoveKey( spep_3+30, 1, 36.2, -0.4 , 0 );
setMoveKey( spep_3+32, 1, 9.7, 4.6 , 0 );
setMoveKey( spep_3+66, 1, 32.7, -6.9 , 0 );
setScaleKey( spep_3+21, 1, 1.73, 1.73 );
setScaleKey( spep_3+26, 1, 1.59, 1.59 );
setScaleKey( spep_3+28, 1, 1.44, 1.44 );
setScaleKey( spep_3+30, 1, 1.3, 1.3 );
setScaleKey( spep_3+32, 1, 1.15, 1.15 );
setScaleKey( spep_3+66, 1, 1.15, 1.15 );
setRotateKey( spep_3+24, 1, 0);
setRotateKey( spep_3+66, 1, 0 );

changeAnime( spep_3+67, 1, 106 );  --仰け反り
setMoveKey( spep_3+67, 1, -106.1, 6.2 , 0 );
setMoveKey( spep_3+72, 1, -106.1, 6.2 , 0 );
setMoveKey( spep_3+74, 1, -100.7, -1.7 , 0 );
setMoveKey( spep_3+76, 1, -73.8, 4 , 0 );
setMoveKey( spep_3+78, 1, -55.8, -5.9 , 0 );
setMoveKey( spep_3+108, 1, -16.4, 17.7 , 0 );
setScaleKey( spep_3+67, 1, 1.72, 1.72 );
setScaleKey( spep_3+72, 1, 1.58, 1.58 );
setScaleKey( spep_3+74, 1, 1.43, 1.43 );
setScaleKey( spep_3+76, 1, 1.3, 1.3 );
setScaleKey( spep_3+78, 1, 1.15, 1.15 );
setScaleKey( spep_3+108, 1, 1.15, 1.15);
setRotateKey( spep_3+67, 1, -52.9 );
setRotateKey( spep_3+108, 1, -52.9 );

changeAnime( spep_3+109, 1, 108 );  --くの字

setMoveKey( spep_3+109, 1, 45.2, 50.6 , 0 );
setMoveKey( spep_3+114, 1, 93.1, 101.3 , 0 );
setMoveKey( spep_3+116, 1, 111.1, 147.4 , 0 );
setMoveKey( spep_3+118, 1, 125.2, 153.2 , 0 );
setMoveKey( spep_3+120, 1, 140.9, 181 , 0 );
setMoveKey( spep_3+122, 1, 141.2, 202.1 , 0 );
setMoveKey( spep_3+124, 1, 142.8, 198.9 , 0 );
setMoveKey( spep_3+126, 1, 170.2, 234.2 , 0 );
setMoveKey( spep_3+128, 1, 179.6, 250.7 , 0 );
setMoveKey( spep_3+130, 1, 198.4, 282.2 , 0 );
setMoveKey( spep_3+132, 1, 218.6, 312.9 , 0 );
setMoveKey( spep_3+134, 1, 226.3, 331.5 , 0 );
setMoveKey( spep_3+136, 1, 251.8, 365.5 , 0 );
setMoveKey( spep_3+138, 1, 269.2, 380.1 , 0 );
setScaleKey( spep_3+109, 1, 1.15, 1.15 );
setScaleKey( spep_3+114, 1, 1.68, 1.68 );
setScaleKey( spep_3+116, 1, 1.51, 1.51 );
setScaleKey( spep_3+118, 1, 1.37, 1.37 );
setScaleKey( spep_3+120, 1, 1.21, 1.21 );
setScaleKey( spep_3+122, 1, 1.08, 1.08 );
setScaleKey( spep_3+124, 1, 0.94, 0.94 );
setScaleKey( spep_3+126, 1, 0.91, 0.91 );
setScaleKey( spep_3+128, 1, 0.87, 0.87 );
setScaleKey( spep_3+130, 1, 0.84, 0.84 );
setScaleKey( spep_3+132, 1, 0.8, 0.8 );
setScaleKey( spep_3+134, 1, 0.77, 0.77 );
setScaleKey( spep_3+136, 1, 0.74, 0.74 );
setScaleKey( spep_3+138, 1, 0.7, 0.7 );
setRotateKey( spep_3+109, 1, 0 );
setRotateKey( spep_3+138, 1, 0 );


rush = entryEffect(  spep_3,  SP_04,  0x100,  -1,  0,  0,  0);  --ラッシュ

setEffScaleKey(  spep_3,  rush,  1.0,  1.0);
setEffMoveKey(  spep_3,  rush,  0,  0);
setEffRotateKey(  spep_3,  rush,  0);
setEffAlphaKey(  spep_3,  rush,  255);
setEffScaleKey(  spep_3+140,  rush,  1.0,  1.0);
setEffMoveKey(  spep_3+140,  rush,  0,  0);
setEffRotateKey(  spep_3+140,  rush,  0);
setEffAlphaKey(  spep_3+140,  rush,  255);

playSe(  spep_3+12,  43);  --瞬間移動
playSe(  spep_3+21,  1000);  --パンチ
playSe(  spep_3+60,  43);  --瞬間移動
playSe(  spep_3+67,  1001);  --キック
playSe(  spep_3+104,  43);  --瞬間移動
playSe(  spep_3+109,  1009);  --パンチ

entryFadeBg( spep_3, 0, 140, 0, 0, 0, 0, 255);          -- 黒　背景

entryFade( spep_3+130, 8, 3, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 溜め、発射(140F)
------------------------------------------------------

spep_4 = spep_3+140;

kidan = entryEffect(  spep_4,  SP_05,  0x100,  -1,  0,  0,  0);  --気弾

setEffScaleKey(  spep_4,  kidan,  1.0,  1.0);
setEffMoveKey(  spep_4,  kidan,  0,  0);
setEffRotateKey(  spep_4,  kidan,  0);
setEffAlphaKey(  spep_4,  kidan,  255);
setEffScaleKey(  spep_4+140,  kidan,  1.0,  1.0);
setEffMoveKey(  spep_4+140,  kidan,  0,  0);
setEffRotateKey(  spep_4+140,  kidan,  0);
setEffAlphaKey(  spep_4+140,  kidan,  255);

shuchusen2 = entryEffectLife( spep_4, 906, 90, 0x100,  -1, 0,  0,  0);   -- 集中線

setEffScaleKey(  spep_4,  shuchusen2,  1.15,  1.15);
setEffMoveKey(  spep_4,  shuchusen2,  0,  0);
setEffRotateKey(  spep_4,  shuchusen2,  0);
setEffAlphaKey(  spep_4,  shuchusen2,  255);
setEffScaleKey(  spep_4+90,  shuchusen2,  1.15,  1.15);
setEffMoveKey(  spep_4+90,  shuchusen2,  0,  0);
setEffRotateKey(  spep_4+90,  shuchusen2,  0);
setEffAlphaKey(  spep_4+90,  shuchusen2,  255);

-- カットイン
-- speff = entryEffect(  spep_4,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
-- setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
-- speff = entryEffect(  spep_4,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
-- setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー --
ctgogo = entryEffectLife( spep_4+13, 190006, 71, 0x100, -1, 0, 0, 510);    -- ゴゴゴゴ

setEffScaleKey(  spep_4+13,  ctgogo,  -0.7,  0.7);
setEffMoveKey(  spep_4+13,  ctgogo,  0,  530);
setEffRotateKey(  spep_4+13,  ctgogo,  0);
setEffScaleKey(  spep_4+84,  ctgogo,  -0.7,  0.7);
setEffMoveKey(  spep_4+84,  ctgogo,  0,  530);
setEffRotateKey(  spep_4+84,  ctgogo,  0);

playSe(  spep_4,  SE_04);  --カットイン音

ryu3 = entryEffectLife(  spep_4,  921,  140,  0x80,  -1,  0,  0,  0);  --流線斜め

setEffScaleKey(  spep_4,  ryu3,  2.0,  1.5);
setEffMoveKey(  spep_4,  ryu3,  0,  0);
setEffRotateKey(  spep_4,  ryu3,  -44);
setEffAlphaKey(  spep_4,  ryu3,  0);
setEffScaleKey(  spep_4+90,  ryu3,  2.0,  1.5);
setEffMoveKey(  spep_4+90,  ryu3,  0,  0);
setEffRotateKey(  spep_4+90,  ryu3,  -44);
setEffAlphaKey(  spep_4+90,  ryu3,  0);
setEffScaleKey(  spep_4+91,  ryu3,  2.0,  1.5);
setEffMoveKey(  spep_4+91,  ryu3,  0,  0);
setEffRotateKey(  spep_4+91,  ryu3,  -44);
setEffAlphaKey(  spep_4+91,  ryu3,  255);
setEffScaleKey(  spep_4+140,  ryu3,  2.0,  1.5);
setEffMoveKey(  spep_4+140,  ryu3,  0,  0);
setEffRotateKey(  spep_4+140,  ryu3,  -44);
setEffAlphaKey(  spep_4+140,  ryu3,  255);


--敵の動き
changeAnime( spep_4, 1, 108 );  --くの字
setMoveKey( spep_4, 1, 700, 700 , 0 );
setScaleKey( spep_4, 1, 0.8, 0.8 );
setRotateKey( spep_4, 1, -30.6 );

setShakeChara(  spep_3+91,  1,  46,  10);  --揺れ
setMoveKey( spep_4+91, 1, 622.1, 620.2 , 0 );
setMoveKey( spep_4+103, 1, 243.4, 228.9 , 0 );
setMoveKey( spep_4+105, 1, 162.7, 136.5 , 0 );
setMoveKey( spep_4+107, 1, 70.4, 40 , 0 );
setMoveKey( spep_4+110, 1, 105.8, 73.3 , 0 );
setMoveKey( spep_4+112, 1, 141.8, 109.7 , 0 );
setMoveKey( spep_4+114, 1, 166.1, 142.1 , 0 );
setMoveKey( spep_4+116, 1, 201.2, 175.3 , 0 );
setMoveKey( spep_4+118, 1, 236.8, 211.6 , 0 );
setMoveKey( spep_4+120, 1, 261.7, 244.1 , 0 );
setMoveKey( spep_4+135, 1, 470.5, 451.5 , 0 );
setMoveKey( spep_4+138, 1, 470.5, 451.5 , 0 );
setMoveKey( spep_4+140, 1, 2000, 2000 , 0 );
setScaleKey( spep_4+91, 1, 0.8, 0.8 );
setScaleKey( spep_4+103, 1, 1, 1 );
setScaleKey( spep_4+105, 1, 1.15, 1.15 );
setScaleKey( spep_4+107, 1, 1.3, 1.3 );
setScaleKey( spep_4+110, 1, 1.27, 1.27 );
setScaleKey( spep_4+112, 1, 1.23, 1.23 );
setScaleKey( spep_4+114, 1, 1.2, 1.2 );
setScaleKey( spep_4+116, 1, 1.17, 1.17 );
setScaleKey( spep_4+118, 1, 1.13, 1.13 );
setScaleKey( spep_4+120, 1, 1.1, 1.1 );
setScaleKey( spep_4+135, 1, 0.8, 0.8 );
setScaleKey( spep_4+140, 1, 0.8, 0.8 );
setRotateKey( spep_4+91, 1, -30.6 );
setRotateKey( spep_4+140, 1, -30.6 );

playSe(  spep_4,  1035);
playSe(  spep_4+90,  SE_07);

entryFadeBg( spep_4, 0, 140, 0, 0, 0, 0, 255);          -- 黒　背景

entryFade( spep_4+134, 5, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 爆発 (110F) 469
------------------------------------------------------

spep_5 = spep_4+140;

setDisp( spep_5, 1, 1);
setMoveKey(  spep_5,    1,  100,  0,   0);
setScaleKey( spep_5,    1,  1.0, 1.0);
setMoveKey(  spep_5+1,    1,    0,   0,   128);
setScaleKey( spep_5+1,    1,  0.1, 0.1);

changeAnime( spep_5+1, 1, 107);                         -- 手前ダメージ
entryEffect( spep_5+9, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_5+9, SE_10);

setMoveKey(  spep_5+9,   1,    0,   0,   128);
setMoveKey(  spep_5+15,   1,  -60,  -200,  -100);
--setMoveKey(  486,   1,  -60,  -200,  -100);
setDamage( spep_5+16, 1, 0);  -- ダメージ振動等
setShake(spep_5+7,6,15);
setShake(spep_5+13,15,10);

setRotateKey( spep_5,  1,  30 );
setRotateKey( spep_5+2,  1,  80 );
setRotateKey( spep_5+4,  1, 120 );
setRotateKey( spep_5+6,  1, 160 );
setRotateKey( spep_5+8,  1, 200 );
setRotateKey( spep_5+10,  1, 260 );
setRotateKey( spep_5+12,  1, 320 );
setRotateKey( spep_5+14,  1,   0 );

setShakeChara( spep_5+15, 1, 5,  10);
setShakeChara( spep_5+20, 1, 10, 20);

-- 書き文字エントリー
ctga_2 = entryEffectLife( spep_5+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake(spep_5+15, ctga_2, 30, 10);
setEffRotateKey( spep_5+15, ctga_2, -40);
setEffScaleKey( spep_5+15, ctga_2, 4.0, 4.0);
setEffScaleKey( spep_5+16, ctga_2, 2.0, 2.0);
setEffScaleKey( spep_5+17, ctga_2, 2.6, 2.6);
setEffScaleKey( spep_5+18, ctga_2, 4.0, 4.0);
setEffScaleKey( spep_5+19, ctga_2, 2.6, 2.6);
setEffScaleKey( spep_5+20, ctga_2, 3.8, 3.8);
setEffScaleKey( spep_5+110, ctga_2, 3.8, 3.8);
setEffAlphaKey( spep_5+15, ctga_2, 255);
setEffAlphaKey( spep_5+105, ctga_2, 255);
setEffAlphaKey( spep_5+115, ctga_2, 0);

playSe( spep_5+3, SE_11);
shuchusen3 = entryEffectLife( spep_5+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_5+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

shuchusenkuro = entryEffectLife( spep_5+15, 1657, 120, 0x80,  -1, 0,  0,  0);   -- 集中線

-- ダメージ表示
dealDamage(spep_5+16);

entryFade( spep_5+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_5+110);

end
