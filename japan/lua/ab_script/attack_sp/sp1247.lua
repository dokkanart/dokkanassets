--1016070　パラガス_ショットリムーバー

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
SP_01 =152654   --構え
SP_02 =152655   --発射
SP_03 =152656   --迫る
SP_04 =152657   --迫る後ろ
SP_05 = 1503

--敵
SP_01r =152658   --構え
SP_02r =152659   --発射
SP_03r =152656   --迫る
SP_04r =152657   --迫る後ろ
------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI(0, 0);

changeAnime( 0, 0, 0);                       -- 立ち
changeAnime( 0, 1, 101);                       -- 立ち
setDisp( 0, 0, 1);
setDisp( 0, 1, 0);


setMoveKey(   0,   0,    0,  0,  0);
setMoveKey(   1,   0,    0,  0,  0);
setMoveKey(   2,   0,    0,  0,  0);
setMoveKey(   3,   0,    0,  0,  0);
setMoveKey(   4,   0,    0,  0,  0);
setMoveKey(   5,   0,    0,  0,  0);
setMoveKey(   6,   0,    0,  0,  0);
setScaleKey(  0,  0,  1.4,  1.4);
setScaleKey(   1,   0, 1.4, 1.4);
setScaleKey(   2,   0, 1.4, 1.4);
setScaleKey(   3,   0, 1.4, 1.4);
setScaleKey(   4,   0, 1.4, 1.4);
setScaleKey(   5,   0, 1.4, 1.4);
setScaleKey(   6,   0, 1.4, 1.4);

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
-- アイドリング(30F)
------------------------------------------------------
spep_1 = 0;

--***アイドリング***
setDisp(  spep_1+30,  0,  0);  --消す
setMoveKey(  spep_1+30,  0,  0,  0);
setMoveKey(  spep_1+31,  0,  -5000,  -5000);
setMoveKey(  spep_1+32,  0,  -5000,  -5000);
setMoveKey(  spep_1+33,  0,  -5000,  -5000);
setMoveKey(  spep_1+36,  0,  -5000,  -5000);
setScaleKey(  spep_1+30,  0,  1.4,  1.4);
setRotateKey(  spep_1+30,  0,  0);

------------------------------------------------------
-- 気溜め(100F)
------------------------------------------------------
spep_2 = spep_1+30;

--***気溜め***
kitame = entryEffect(  spep_2,  SP_01,  0x100,  -1, 0,  0,  0);  --ef_002

setEffMoveKey(  spep_2,  kitame,  0,  0);
setEffMoveKey(  spep_2+100,  kitame,  0,  0);
setEffScaleKey(  spep_2,  kitame,  1.0,  1.0);
setEffScaleKey(  spep_2+100,  kitame,  1.0,  1.0);
setEffRotateKey(  spep_2,  kitame,  0);
setEffRotateKey(  spep_2+100,  kitame,  0);
setEffAlphaKey(  spep_2,  kitame,  255);
setEffAlphaKey(  spep_2+100,  kitame,  255);

entryEffect(  spep_2,  1503,  0x80,  -1,  0,  0,  0); 
entryEffect(  spep_2,  1502,  0x100,  -1,  0,  0,  0); 

--***カットイン***32
speff = entryEffect(  spep_2+10,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff2 = entryEffect(  spep_2+10,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff2, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー --
ctgogo = entryEffectLife( spep_2+22, 190006, 70, 0x100, -1, 0, 0, 510);    -- ゴゴゴゴ

setEffAlphaKey( spep_2+22, ctgogo, 0 );
setEffAlphaKey( spep_2+23, ctgogo, 255 );
setEffAlphaKey( spep_2+82, ctgogo, 255 );
setEffAlphaKey( spep_2+84, ctgogo, 191 );
setEffAlphaKey( spep_2+86, ctgogo, 128 );
setEffAlphaKey( spep_2+88, ctgogo, 64 );
setEffAlphaKey( spep_2+92, ctgogo, 0 );

setEffRotateKey(  spep_2+22,  ctgogo,  0);
setEffRotateKey(  spep_2+92,  ctgogo,  0);

setEffScaleKey(  spep_2+22,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_2+82,  ctgogo,  0.7,  0.7);
setEffScaleKey( spep_2+92, ctgogo, 1.07, 1.07 );

setEffMoveKey(  spep_2+22,  ctgogo,  0,  530);
setEffMoveKey(  spep_2+92,  ctgogo,  0,  530);

--***SE***
playSe(  spep_2,  SE_01);
playSe(  spep_2+22,  SE_04);  --ゴゴゴ
--playSe(  spep_2+20,  SE_02);
playSe(  spep_2+40,  SE_02);
playSe(  spep_2+60,  SE_02);
playSe(  spep_2+80,  SE_02);
--***白フェード***
entryFade(  spep_2+92,  4,  6,  8,  fcolor_r,  fcolor_g,  fcolor_b,  255);  --white fade

------------------------------------------------------
-- カード(90F)
------------------------------------------------------
spep_3 = spep_2+100;

speff3 = entryEffect(  spep_3,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff3, 1, 1);
setEffReplaceTexture( speff3, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff3, 5, 4);                                  -- 技名テクスチャ差し替え

shuchusen3 = entryEffectLife( spep_3, 906, 90, 0x100,  -1, 0,  0,  0);

setEffMoveKey(  spep_3,  shuchusen3,  0,  0);
setEffMoveKey(  spep_3+90,  shuchusen3,  0,  0);
setEffScaleKey(  spep_3,  shuchusen3,  1.6,  1.6);
setEffScaleKey(  spep_3+90,  shuchusen3,  1.6,  1.6);
setEffRotateKey(  spep_3,  shuchusen3,  0);
setEffRotateKey(  spep_3+90,  shuchusen3,  0);
setEffAlphaKey(  spep_3,  shuchusen3,  255);
setEffAlphaKey(  spep_3+90,  shuchusen3,  255);

playSe( spep_3, SE_05);

--***白フェード***
entryFade(  spep_3+74,  10,  10,  4,  fcolor_r,  fcolor_g,  fcolor_b,  255);  --white fade

------------------------------------------------------
-- 発射(80F)
------------------------------------------------------
spep_4 = spep_3+90;

--***書き文字***
ct_bi = entryEffectLife( spep_4+6,  10024, 40, 0x100, -1, 0, 73.8, 305.7 );  --ビッ

setEffShake(  spep_4+6,  ct_bi,  70,  20);  --揺れ
setEffMoveKey( spep_4+6, ct_bi, 73.8, 305.7 , 0 );
setEffMoveKey( spep_4+8, ct_bi, 91.8, 333.8 , 0 );
setEffMoveKey( spep_4+10, ct_bi, 98.1, 348.7 , 0 );
setEffMoveKey( spep_4+12, ct_bi, 118.5, 379 , 0 );
setEffMoveKey( spep_4+38, ct_bi, 125.7, 397 , 0 );
setEffMoveKey( spep_4+40, ct_bi, 143.5, 421.6 , 0 );
setEffMoveKey( spep_4+42, ct_bi, 141, 423.9 , 0 );
setEffMoveKey( spep_4+44, ct_bi, 160.2, 449.9 , 0 );
setEffMoveKey( spep_4+46, ct_bi, 168.5, 464.1 , 0 );
setEffScaleKey( spep_4+6, ct_bi, 1, 1 );
setEffScaleKey( spep_4+8, ct_bi, 1.22, 1.22 );
setEffScaleKey( spep_4+10, ct_bi, 1.45, 1.45 );
setEffScaleKey( spep_4+12, ct_bi, 1.67, 1.67 );
setEffScaleKey( spep_4+34, ct_bi, 1.67, 1.67 );
setEffScaleKey( spep_4+36, ct_bi, 1.81, 1.81 );
setEffScaleKey( spep_4+38, ct_bi, 1.95, 1.95 );
setEffScaleKey( spep_4+40, ct_bi, 2.09, 2.09 );
setEffScaleKey( spep_4+42, ct_bi, 2.23, 2.23 );
setEffScaleKey( spep_4+44, ct_bi, 2.37, 2.37 );
setEffScaleKey( spep_4+46, ct_bi, 2.51, 2.51 );
setEffRotateKey( spep_4+6, ct_bi, -13.8 );
setEffRotateKey( spep_4+46, ct_bi, -13.8 );
setEffAlphaKey( spep_4+6, ct_bi, 255 );
setEffAlphaKey( spep_4+34, ct_bi, 255 );
setEffAlphaKey( spep_4+36, ct_bi, 212 );
setEffAlphaKey( spep_4+38, ct_bi, 170 );
setEffAlphaKey( spep_4+40, ct_bi, 128 );
setEffAlphaKey( spep_4+42, ct_bi, 85 );
setEffAlphaKey( spep_4+44, ct_bi, 43 );
setEffAlphaKey( spep_4+46, ct_bi, 0 );

--***発射***
hassya = entryEffect(  spep_4,  SP_02,  0x100,  -1,  0,  0,  0);  --ef_002

setEffMoveKey(  spep_4,  hassya,  0,  0);
setEffMoveKey(  spep_4+80,  hassya,  0,  0);
setEffScaleKey(  spep_4,  hassya,  1.0,  1.0);
setEffScaleKey(  spep_4+80,  hassya,  1.0,  1.0);
setEffRotateKey(  spep_4,  hassya,  0);
setEffRotateKey(  spep_4+80,  hassya,  0);
setEffAlphaKey(  spep_4,  hassya,  255);
setEffAlphaKey(  spep_4+80,  hassya,  255);

ryu1 = entryEffectLife(  spep_4,  921,  80,  0x80,  -1,  0,  0,  0);
setEffScaleKey(  spep_4,  ryu1,  1.0,  1.2);
setEffScaleKey(  spep_4+80,  ryu1,  1.0,  1.2);
setEffMoveKey(  spep_4,  ryu1,  0,  100);
setEffMoveKey(  spep_4+80,  ryu1,  0,  100);
setEffRotateKey(  spep_4,  ryu1,  180);
setEffRotateKey(  spep_4+80,  ryu1,  180);
setEffAlphaKey(  spep_4,  ryu1,  255);
setEffAlphaKey(  spep_4+80,  ryu1,  255);

--***SE***
playSe(  spep_4+8,  1015);  

--***白フェード***
entryFade(  spep_4+72,  4,  6,  6,  fcolor_r,  fcolor_g,  fcolor_b,  255);  --white fade

entryFadeBg(  spep_4,  0,  80,  0,  0,  0,  0,  210);  --背景黒

------------------------------------------------------
-- 貫通(80F)
------------------------------------------------------
spep_5 = spep_4+80;

ryu2 = entryEffectLife(  spep_5,  921,  80,  0x80,  -1,  0,  0,  0);
setEffScaleKey(  spep_5,  ryu2,  1.0,  1.0);
setEffScaleKey(  spep_5+80,  ryu2,  1.0,  1.0);
setEffMoveKey(  spep_5,  ryu2,  0,  100);
setEffMoveKey(  spep_5+80,  ryu2,  0,  100);
setEffRotateKey(  spep_5,  ryu2,  0);
setEffRotateKey(  spep_5+80,  ryu2,  0);
setEffAlphaKey(  spep_5,  ryu2,  255);
setEffAlphaKey(  spep_5+78,  ryu2,  255);
setEffAlphaKey(  spep_5+79,  ryu2,  0);
setEffAlphaKey(  spep_5+80,  ryu2,  0);

--***貫通***
hidan_b = entryEffect(  spep_5,  SP_04,  0x80,  -1,  0,  0,  0);  --ef_004

setEffMoveKey(  spep_5,  hidan_b,  0,  0);
setEffMoveKey(  spep_5+80,  hidan_b,  0,  0);
setEffScaleKey(  spep_5,  hidan_b,  1.0,  1.0);
setEffScaleKey(  spep_5+80,  hidan_b,  1.0,  1.0);
setEffRotateKey(  spep_5,  hidan_b,  0);
setEffRotateKey(  spep_5+80,  hidan_b,  0);
setEffAlphaKey(  spep_5,  hidan_b,  255);
setEffAlphaKey(  spep_5+80,  hidan_b,  255);

--***敵の動き***
setDisp( spep_5+0, 1, 1 );
changeAnime( spep_5+0, 1, 104 );

setShakeChara(  spep_5,  1,  78,  20);  --揺れ
setMoveKey( spep_5+0, 1, 251, 0 , 0 );
setMoveKey( spep_5+2, 1, 242.2, 0 , 0 );
setMoveKey( spep_5+4, 1, 233.4, 0 , 0 );
setMoveKey( spep_5+6, 1, 224.6, 0 , 0 );
setMoveKey( spep_5+8, 1, 215.8, 0 , 0 );
setMoveKey( spep_5+10, 1, 207, 0 , 0 );
setMoveKey( spep_5+12, 1, 198.2, 0 , 0 );
setMoveKey( spep_5+14, 1, 189.4, 0 , 0 );
setScaleKey( spep_5+0, 1, 0.6, 0.6 );
setScaleKey( spep_5+2, 1, 0.66, 0.66 );
setScaleKey( spep_5+4, 1, 0.72, 0.72 );
setScaleKey( spep_5+6, 1, 0.78, 0.78 );
setScaleKey( spep_5+8, 1, 0.84, 0.84 );
setScaleKey( spep_5+10, 1, 0.9, 0.9 );
setScaleKey( spep_5+12, 1, 0.96, 0.96 );
setScaleKey( spep_5+14, 1, 1.02, 1.02 );
setRotateKey( spep_5+0, 1, 0 );
setRotateKey( spep_5+14, 1, 0 );

--***貫通***
hidan = entryEffect(  spep_5,  SP_03,  0x100,  -1,  0,  0,  0);  --ef_003

setEffMoveKey(  spep_5,  hidan,  0,  0);
setEffMoveKey(  spep_5+80,  hidan,  0,  0);
setEffScaleKey(  spep_5,  hidan,  1.0,  1.0);
setEffScaleKey(  spep_5+80,  hidan,  1.0,  1.0);
setEffRotateKey(  spep_5,  hidan,  0);
setEffRotateKey(  spep_5+80,  hidan,  0);
setEffAlphaKey(  spep_5,  hidan,  255);
setEffAlphaKey(  spep_5+80,  hidan,  255);

entryFadeBg(  spep_5,  0,  80,  0,  0,  0,  0,  210);  --背景黒

--***SE***
playSe(  spep_5,  1016);
playSe(  spep_5+32,  1025);

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_5+14 ; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

pauseAll( SP_dodge, 67);

--***敵の位置***
setEffMoveKey(  SP_dodge, 1, 1.02, 1.02 );
setEffMoveKey(  SP_dodge+1, 1, 1.02, 1.02 );
setEffMoveKey(  SP_dodge+2, 1, 1.02, 1.02 );
setEffMoveKey(  SP_dodge+3, 1, 1.02, 1.02 );
setEffMoveKey(  SP_dodge+4, 1, 1.02, 1.02 );
setEffMoveKey(  SP_dodge+5, 1, 1.02, 1.02 );
setEffMoveKey(  SP_dodge+6, 1, 1.02, 1.02 );
setEffMoveKey(  SP_dodge+8, 1, 1.02, 1.02 );
setEffMoveKey(  SP_dodge+9, 1, 1.02, 1.02 );

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

--***書き文字***
ct_gyun = entryEffectLife( spep_5 + 32,  10007, 44, 0x100, -1, 0, -3.6, 145.7 );  --ギュンッ

setEffShake(  spep_5+32,  ct_gyun,  44,  20);  --揺れ
setEffMoveKey( spep_5+32, ct_gyun, -3.6, 145.7 , 0 );
setEffMoveKey( spep_5+34, ct_gyun, -34, 187.9 , 0 );
setEffMoveKey( spep_5+36, ct_gyun, -50.4, 208.8 , 0 );
setEffMoveKey( spep_5+56, ct_gyun, -50.4, 208.8 , 0 );
setEffMoveKey( spep_5+58, ct_gyun, -69.2, 236 , 0 );
setEffMoveKey( spep_5+60, ct_gyun, -66.8, 230.9 , 0 );
setEffMoveKey( spep_5+62, ct_gyun, -75, 241.9 , 0 );
setEffMoveKey( spep_5+76, ct_gyun, -75, 241.9 , 0 );
setEffScaleKey( spep_5+32, ct_gyun, 1, 1 );
setEffScaleKey( spep_5+34, ct_gyun, 1.69, 1.69 );
setEffScaleKey( spep_5+36, ct_gyun, 2.22, 2.22 );
setEffScaleKey( spep_5+58, ct_gyun, 2.56, 2.56 );
setEffScaleKey( spep_5+60, ct_gyun, 2.65, 2.65 );
setEffScaleKey( spep_5+62, ct_gyun, 2.87, 2.87 );
setEffScaleKey( spep_5+76, ct_gyun, 2.87, 2.87 );
setEffRotateKey( spep_5+32, ct_gyun, -33.1 );
setEffRotateKey( spep_5+76, ct_gyun, -33.1 );
setEffAlphaKey( spep_5+32, ct_gyun, 255 );
setEffAlphaKey( spep_5+56, ct_gyun, 255 );
setEffAlphaKey( spep_5+58, ct_gyun, 170 );
setEffAlphaKey( spep_5+60, ct_gyun, 85 );
setEffAlphaKey( spep_5+62, ct_gyun, 0 );
setEffAlphaKey( spep_5+76, ct_gyun, 0 );

--***敵の動き***
setDisp( spep_5+78, 1, 0 );
changeAnime( spep_5+31, 1, 108 );
changeAnime( spep_5+32, 1, 108 );

setMoveKey( spep_5+16, 1, 180.6, 0 , 0 );
setMoveKey( spep_5+18, 1, 171.8, 0 , 0 );
setMoveKey( spep_5+20, 1, 163, 0 , 0 );
setMoveKey( spep_5+22, 1, 154.2, 0 , 0 );
setMoveKey( spep_5+24, 1, 145.4, 0 , 0 );
setMoveKey( spep_5+26, 1, 136.6, 0 , 0 );
setMoveKey( spep_5+28, 1, 127.8, 0 , 0 );
setMoveKey( spep_5+30, 1, 119, 0 , 0 );

setMoveKey( spep_5+32, 1, 96.4, -3.4 , 0 );
setMoveKey( spep_5+42, 1, 96.4, -3.4 , 0 );
setMoveKey( spep_5+44, 1, 95.9, -3.2 , 0 );
setMoveKey( spep_5+46, 1, 95.4, -3.1 , 0 );
setMoveKey( spep_5+48, 1, 95, -3 , 0 );
setMoveKey( spep_5+50, 1, 94.5, -2.9 , 0 );
setMoveKey( spep_5+52, 1, 94.1, -2.7 , 0 );
setMoveKey( spep_5+54, 1, 93.6, -2.6 , 0 );
setMoveKey( spep_5+56, 1, 93.2, -2.5 , 0 );
setMoveKey( spep_5+58, 1, 92.7, -2.4 , 0 );
setMoveKey( spep_5+60, 1, 92.3, -2.3 , 0 );
setMoveKey( spep_5+62, 1, 91.9, -2.2 , 0 );
setMoveKey( spep_5+64, 1, 91.4, -2.1 , 0 );
setMoveKey( spep_5+66, 1, 91, -2 , 0 );
setMoveKey( spep_5+68, 1, 90.5, -1.8 , 0 );
setMoveKey( spep_5+70, 1, 90.1, -1.7 , 0 );
setMoveKey( spep_5+72, 1, 89.6, -1.6 , 0 );
setMoveKey( spep_5+74, 1, 89.2, -1.5 , 0 );
setMoveKey( spep_5+76, 1, 88.7, -1.4 , 0 );
setMoveKey( spep_5+78, 1, 88.3, -1.3 , 0 );

setScaleKey( spep_5+16, 1, 1.08, 1.08 );
setScaleKey( spep_5+18, 1, 1.14, 1.14 );
setScaleKey( spep_5+20, 1, 1.2, 1.2 );
setScaleKey( spep_5+22, 1, 1.26, 1.26 );
setScaleKey( spep_5+24, 1, 1.32, 1.32 );
setScaleKey( spep_5+26, 1, 1.38, 1.38 );
setScaleKey( spep_5+28, 1, 1.44, 1.44 );
setScaleKey( spep_5+30, 1, 1.5, 1.5 );
setScaleKey( spep_5+42, 1, 1.5, 1.5 );
setScaleKey( spep_5+44, 1, 1.51, 1.51 );
setScaleKey( spep_5+46, 1, 1.51, 1.51 );
setScaleKey( spep_5+48, 1, 1.52, 1.52 );
setScaleKey( spep_5+50, 1, 1.52, 1.52 );
setScaleKey( spep_5+52, 1, 1.53, 1.53 );
setScaleKey( spep_5+54, 1, 1.53, 1.53 );
setScaleKey( spep_5+56, 1, 1.54, 1.54 );
setScaleKey( spep_5+58, 1, 1.54, 1.54 );
setScaleKey( spep_5+60, 1, 1.55, 1.55 );
setScaleKey( spep_5+62, 1, 1.56, 1.56 );
setScaleKey( spep_5+64, 1, 1.56, 1.56 );
setScaleKey( spep_5+66, 1, 1.57, 1.57 );
setScaleKey( spep_5+68, 1, 1.57, 1.57 );
setScaleKey( spep_5+70, 1, 1.58, 1.58 );
setScaleKey( spep_5+72, 1, 1.58, 1.58 );
setScaleKey( spep_5+74, 1, 1.59, 1.59 );
setScaleKey( spep_5+76, 1, 1.59, 1.59 );
setScaleKey( spep_5+78, 1, 1.6, 1.6 );

setRotateKey( spep_5+16, 1, 0 );
setRotateKey( spep_5+32, 1, 0 );
setRotateKey( spep_5+34, 1, -8.7 );
setRotateKey( spep_5+36, 1, 6 );
setRotateKey( spep_5+38, 1, -8.7 );
setRotateKey( spep_5+40, 1, 6 );
setRotateKey( spep_5+42, 1, 0 );
setRotateKey( spep_5+78, 1, 0 );

--***白フェード***
entryFade(  spep_5+66,  10,  4,  2,  fcolor_r,  fcolor_g,  fcolor_b,  255);  --white fade

------------------------------------------------------
-- ガ
------------------------------------------------------
spep_6 = spep_5+80;

--敵の動き--
setDisp( spep_6 + 2, 1, 1 );
changeAnime( spep_6 + 2, 1, 107 );

--setMoveKey( spep_6 + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_6 + 2, 1, 32.5, -4.9 , 0 );
setMoveKey( spep_6 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_6 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_6 + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_6 + 10, 1, 7.1, -92.9 , 0 );
setMoveKey( spep_6 + 12, 1, -1.9, -124.1 , 0 );
setMoveKey( spep_6 + 110, 1, -1.9, -124.1 , 0 );

--setScaleKey( spep_6 + 0, 1, 0.22, 0.22 );
setScaleKey( spep_6 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_6 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_6 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_6 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_6 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_6 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_6 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_6 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_6 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_6 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_6 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_6 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_6 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_6 + 110, 1, 1.6, 1.6 );

--setRotateKey( spep_6 + 0, 1, 0 );
setRotateKey( spep_6 + 2, 1, 105 );
setRotateKey( spep_6 + 4, 1, 240 );
setRotateKey( spep_6 + 6, 1, 405 );
setRotateKey( spep_6 + 8, 1, 600 );
setRotateKey( spep_6 + 10, 1, 825 );
setRotateKey( spep_6 + 12, 1, 1080 );
setRotateKey( spep_6 + 110, 1, 1080 );

--爆発エフェクト
entryEffect( spep_6, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発

setDamage( spep_6 +16, 1, 0);  -- ダメージ振動等
setShake(spep_6+8,6,15);
setShake(spep_6+14,15,10);

--書き文字--
ctGa = entryEffectLife( spep_6+14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );
setEffShake( spep_6+14, ctGa, 30, 10);

setEffMoveKey( spep_6+14, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_6+16, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_6+18, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_6+20, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_6+22, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_6+24, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_6+26, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_6+28, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_6+30, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_6+112, ctGa, 3.9, 316.1 , 0 );

setEffScaleKey( spep_6+14, ctGa, 2, 2 );
setEffScaleKey( spep_6+16, ctGa, 2.0, 2.0);
setEffScaleKey( spep_6+17, cGa, 2.6, 2.6);
setEffScaleKey( spep_6+18, ctGa, 4.0, 4.0);
setEffScaleKey( spep_6+19, ctGa, 2.6, 2.6);
setEffScaleKey( spep_6+20, ctGa, 3.8, 3.8);
setEffScaleKey( spep_6+112, ctGa, 3.8, 3.8);

setEffRotateKey( spep_6+14, ctGa, -40 );
setEffRotateKey( spep_6+16, ctGa, -31 );
setEffRotateKey( spep_6+18, ctGa, -40 );
setEffRotateKey( spep_6+20, ctGa, -31 );
setEffRotateKey( spep_6+22, ctGa, -40 );
setEffRotateKey( spep_6+24, ctGa, -31);
setEffRotateKey( spep_6+26, ctGa, -40 );
setEffRotateKey( spep_6+28, ctGa, -31);
setEffRotateKey( spep_6+30, ctGa, -40 );
setEffRotateKey( spep_6+112, ctGa, -40 );

setEffAlphaKey( spep_6 + 14, ctGa, 255 );
setEffAlphaKey( spep_6 + 112, ctGa, 255 );

--集中線（白）
shuchusen = entryEffectLife( spep_6+2, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線

--集中線（黒）
shuchusenkuro = entryEffectLife( spep_6+14, 1657, 120, 0x80,  -1, 0,  0,  0);   -- 集中線

--ひび割れ
hibi = entryEffect( spep_6+2, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

playSe( spep_6, SE_10);
playSe( spep_6+12,  SE_11);  --割れる音

-- ダメージ表示
dealDamage(spep_6+16);
--entryFade( spep_6+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_6+100);

else

------------------------------------------------------
-- アイドリング(30F)
------------------------------------------------------
spep_1 = 0;

--***アイドリング***
setDisp(  spep_1+30,  0,  0);  --消す
setMoveKey(  spep_1+30,  0,  0,  0);
setMoveKey(  spep_1+31,  0,  -5000,  -5000);
setMoveKey(  spep_1+32,  0,  -5000,  -5000);
setMoveKey(  spep_1+33,  0,  -5000,  -5000);
setMoveKey(  spep_1+36,  0,  -5000,  -5000);
setScaleKey(  spep_1+30,  0,  1.4,  1.4);
setRotateKey(  spep_1+30,  0,  0);

------------------------------------------------------
-- 気溜め(100F)
------------------------------------------------------
spep_2 = spep_1+30;

--***気溜め***
kitame = entryEffect(  spep_2,  SP_01r,  0x100,  -1, 0,  0,  0);  --ef_002

setEffMoveKey(  spep_2,  kitame,  0,  0);
setEffMoveKey(  spep_2+100,  kitame,  0,  0);
setEffScaleKey(  spep_2,  kitame,  1.0,  1.0);
setEffScaleKey(  spep_2+100,  kitame,  1.0,  1.0);
setEffRotateKey(  spep_2,  kitame,  0);
setEffRotateKey(  spep_2+100,  kitame,  0);
setEffAlphaKey(  spep_2,  kitame,  255);
setEffAlphaKey(  spep_2+100,  kitame,  255);

entryEffect(  spep_2,  1503,  0x80,  -1,  0,  0,  0); 
entryEffect(  spep_2,  1502,  0x100,  -1,  0,  0,  0); 

--***カットイン***32
--speff = entryEffect(  spep_2+10,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  spep_2+10,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー --
ctgogo = entryEffectLife( spep_2+22, 190006, 70, 0x100, -1, 0, 0, 510);    -- ゴゴゴゴ

setEffAlphaKey( spep_2+22, ctgogo, 0 );
setEffAlphaKey( spep_2+23, ctgogo, 255 );
setEffAlphaKey( spep_2+82, ctgogo, 255 );
setEffAlphaKey( spep_2+84, ctgogo, 191 );
setEffAlphaKey( spep_2+86, ctgogo, 128 );
setEffAlphaKey( spep_2+88, ctgogo, 64 );
setEffAlphaKey( spep_2+92, ctgogo, 0 );

setEffRotateKey(  spep_2+22,  ctgogo,  0);
setEffRotateKey(  spep_2+92,  ctgogo,  0);

setEffScaleKey(  spep_2+22,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_2+82,  ctgogo,  -0.7,  0.7);
setEffScaleKey( spep_2+92, ctgogo, -1.07, 1.07 );

setEffMoveKey(  spep_2+22,  ctgogo,  0,  530);
setEffMoveKey(  spep_2+92,  ctgogo,  0,  530);

--***SE***
playSe(  spep_2,  SE_01);
playSe(  spep_2+22,  SE_04);  --ゴゴゴ
--playSe(  spep_2+20,  SE_02);
playSe(  spep_2+40,  SE_02);
playSe(  spep_2+60,  SE_02);
playSe(  spep_2+80,  SE_02);
--***白フェード***
entryFade(  spep_2+92,  4,  6,  8,  fcolor_r,  fcolor_g,  fcolor_b,  255);  --white fade

------------------------------------------------------
-- カード(90F)
------------------------------------------------------
spep_3 = spep_2+100;

speff3 = entryEffect(  spep_3,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff3, 1, 1);
setEffReplaceTexture( speff3, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff3, 5, 4);                                  -- 技名テクスチャ差し替え

shuchusen3 = entryEffectLife( spep_3, 906, 90, 0x100,  -1, 0,  0,  0);

setEffMoveKey(  spep_3,  shuchusen3,  0,  0);
setEffMoveKey(  spep_3+90,  shuchusen3,  0,  0);
setEffScaleKey(  spep_3,  shuchusen3,  1.6,  1.6);
setEffScaleKey(  spep_3+90,  shuchusen3,  1.6,  1.6);
setEffRotateKey(  spep_3,  shuchusen3,  0);
setEffRotateKey(  spep_3+90,  shuchusen3,  0);
setEffAlphaKey(  spep_3,  shuchusen3,  255);
setEffAlphaKey(  spep_3+90,  shuchusen3,  255);

playSe( spep_3, SE_05);

--***白フェード***
entryFade(  spep_3+74,  10,  10,  4,  fcolor_r,  fcolor_g,  fcolor_b,  255);  --white fade

------------------------------------------------------
-- 発射(80F)
------------------------------------------------------
spep_4 = spep_3+90;

--***書き文字***
ct_bi = entryEffectLife( spep_4+6,  10024, 40, 0x100, -1, 0, 73.8, 305.7 );  --ビッ

setEffShake(  spep_4+6,  ct_bi,  70,  20);  --揺れ
setEffMoveKey( spep_4+6, ct_bi, 73.8, 305.7 , 0 );
setEffMoveKey( spep_4+8, ct_bi, 91.8, 333.8 , 0 );
setEffMoveKey( spep_4+10, ct_bi, 98.1, 348.7 , 0 );
setEffMoveKey( spep_4+12, ct_bi, 118.5, 379 , 0 );
setEffMoveKey( spep_4+38, ct_bi, 125.7, 397 , 0 );
setEffMoveKey( spep_4+40, ct_bi, 143.5, 421.6 , 0 );
setEffMoveKey( spep_4+42, ct_bi, 141, 423.9 , 0 );
setEffMoveKey( spep_4+44, ct_bi, 160.2, 449.9 , 0 );
setEffMoveKey( spep_4+46, ct_bi, 168.5, 464.1 , 0 );
setEffScaleKey( spep_4+6, ct_bi, 1, 1 );
setEffScaleKey( spep_4+8, ct_bi, 1.22, 1.22 );
setEffScaleKey( spep_4+10, ct_bi, 1.45, 1.45 );
setEffScaleKey( spep_4+12, ct_bi, 1.67, 1.67 );
setEffScaleKey( spep_4+34, ct_bi, 1.67, 1.67 );
setEffScaleKey( spep_4+36, ct_bi, 1.81, 1.81 );
setEffScaleKey( spep_4+38, ct_bi, 1.95, 1.95 );
setEffScaleKey( spep_4+40, ct_bi, 2.09, 2.09 );
setEffScaleKey( spep_4+42, ct_bi, 2.23, 2.23 );
setEffScaleKey( spep_4+44, ct_bi, 2.37, 2.37 );
setEffScaleKey( spep_4+46, ct_bi, 2.51, 2.51 );
setEffRotateKey( spep_4+6, ct_bi, -13.8 );
setEffRotateKey( spep_4+46, ct_bi, -13.8 );
setEffAlphaKey( spep_4+6, ct_bi, 255 );
setEffAlphaKey( spep_4+34, ct_bi, 255 );
setEffAlphaKey( spep_4+36, ct_bi, 212 );
setEffAlphaKey( spep_4+38, ct_bi, 170 );
setEffAlphaKey( spep_4+40, ct_bi, 128 );
setEffAlphaKey( spep_4+42, ct_bi, 85 );
setEffAlphaKey( spep_4+44, ct_bi, 43 );
setEffAlphaKey( spep_4+46, ct_bi, 0 );

--***発射***
hassya = entryEffect(  spep_4,  SP_02r,  0x100,  -1,  0,  0,  0);  --ef_002

setEffMoveKey(  spep_4,  hassya,  0,  0);
setEffMoveKey(  spep_4+80,  hassya,  0,  0);
setEffScaleKey(  spep_4,  hassya,  1.0,  1.0);
setEffScaleKey(  spep_4+80,  hassya,  1.0,  1.0);
setEffRotateKey(  spep_4,  hassya,  0);
setEffRotateKey(  spep_4+80,  hassya,  0);
setEffAlphaKey(  spep_4,  hassya,  255);
setEffAlphaKey(  spep_4+80,  hassya,  255);

ryu1 = entryEffectLife(  spep_4,  921,  80,  0x80,  -1,  0,  0,  0);
setEffScaleKey(  spep_4,  ryu1,  1.0,  1.2);
setEffScaleKey(  spep_4+80,  ryu1,  1.0,  1.2);
setEffMoveKey(  spep_4,  ryu1,  0,  100);
setEffMoveKey(  spep_4+80,  ryu1,  0,  100);
setEffRotateKey(  spep_4,  ryu1,  180);
setEffRotateKey(  spep_4+80,  ryu1,  180);
setEffAlphaKey(  spep_4,  ryu1,  255);
setEffAlphaKey(  spep_4+80,  ryu1,  255);

--***SE***
playSe(  spep_4+8,  1015);  

--***白フェード***
entryFade(  spep_4+72,  4,  6,  6,  fcolor_r,  fcolor_g,  fcolor_b,  255);  --white fade

entryFadeBg(  spep_4,  0,  80,  0,  0,  0,  0,  210);  --背景黒

------------------------------------------------------
-- 貫通(80F)
------------------------------------------------------
spep_5 = spep_4+80;

ryu2 = entryEffectLife(  spep_5,  921,  80,  0x80,  -1,  0,  0,  0);
setEffScaleKey(  spep_5,  ryu2,  1.0,  1.0);
setEffScaleKey(  spep_5+80,  ryu2,  1.0,  1.0);
setEffMoveKey(  spep_5,  ryu2,  0,  100);
setEffMoveKey(  spep_5+80,  ryu2,  0,  100);
setEffRotateKey(  spep_5,  ryu2,  0);
setEffRotateKey(  spep_5+80,  ryu2,  0);
setEffAlphaKey(  spep_5,  ryu2,  255);
setEffAlphaKey(  spep_5+78,  ryu2,  255);
setEffAlphaKey(  spep_5+79,  ryu2,  0);
setEffAlphaKey(  spep_5+80,  ryu2,  0);

--***貫通***
hidan_b = entryEffect(  spep_5,  SP_04r,  0x80,  -1,  0,  0,  0);  --ef_004

setEffMoveKey(  spep_5,  hidan_b,  0,  0);
setEffMoveKey(  spep_5+80,  hidan_b,  0,  0);
setEffScaleKey(  spep_5,  hidan_b,  1.0,  1.0);
setEffScaleKey(  spep_5+80,  hidan_b,  1.0,  1.0);
setEffRotateKey(  spep_5,  hidan_b,  0);
setEffRotateKey(  spep_5+80,  hidan_b,  0);
setEffAlphaKey(  spep_5,  hidan_b,  255);
setEffAlphaKey(  spep_5+80,  hidan_b,  255);

--***敵の動き***
setDisp( spep_5+0, 1, 1 );
changeAnime( spep_5+0, 1, 104 );

setShakeChara(  spep_5,  1,  78,  20);  --揺れ
setMoveKey( spep_5+0, 1, 251, 0 , 0 );
setMoveKey( spep_5+2, 1, 242.2, 0 , 0 );
setMoveKey( spep_5+4, 1, 233.4, 0 , 0 );
setMoveKey( spep_5+6, 1, 224.6, 0 , 0 );
setMoveKey( spep_5+8, 1, 215.8, 0 , 0 );
setMoveKey( spep_5+10, 1, 207, 0 , 0 );
setMoveKey( spep_5+12, 1, 198.2, 0 , 0 );
setMoveKey( spep_5+14, 1, 189.4, 0 , 0 );
setScaleKey( spep_5+0, 1, 0.6, 0.6 );
setScaleKey( spep_5+2, 1, 0.66, 0.66 );
setScaleKey( spep_5+4, 1, 0.72, 0.72 );
setScaleKey( spep_5+6, 1, 0.78, 0.78 );
setScaleKey( spep_5+8, 1, 0.84, 0.84 );
setScaleKey( spep_5+10, 1, 0.9, 0.9 );
setScaleKey( spep_5+12, 1, 0.96, 0.96 );
setScaleKey( spep_5+14, 1, 1.02, 1.02 );
setRotateKey( spep_5+0, 1, 0 );
setRotateKey( spep_5+14, 1, 0 );

--***貫通***
hidan = entryEffect(  spep_5,  SP_03r,  0x100,  -1,  0,  0,  0);  --ef_003

setEffMoveKey(  spep_5,  hidan,  0,  0);
setEffMoveKey(  spep_5+80,  hidan,  0,  0);
setEffScaleKey(  spep_5,  hidan,  1.0,  1.0);
setEffScaleKey(  spep_5+80,  hidan,  1.0,  1.0);
setEffRotateKey(  spep_5,  hidan,  0);
setEffRotateKey(  spep_5+80,  hidan,  0);
setEffAlphaKey(  spep_5,  hidan,  255);
setEffAlphaKey(  spep_5+80,  hidan,  255);

entryFadeBg(  spep_5,  0,  80,  0,  0,  0,  0,  210);  --背景黒

--***SE***
playSe(  spep_5,  1016);
playSe(  spep_5+32,  1025);

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_5+14 ; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

pauseAll( SP_dodge, 67);

--***敵の位置***
setEffMoveKey(  SP_dodge, 1, 1.02, 1.02 );
setEffMoveKey(  SP_dodge+1, 1, 1.02, 1.02 );
setEffMoveKey(  SP_dodge+2, 1, 1.02, 1.02 );
setEffMoveKey(  SP_dodge+3, 1, 1.02, 1.02 );
setEffMoveKey(  SP_dodge+4, 1, 1.02, 1.02 );
setEffMoveKey(  SP_dodge+5, 1, 1.02, 1.02 );
setEffMoveKey(  SP_dodge+6, 1, 1.02, 1.02 );
setEffMoveKey(  SP_dodge+8, 1, 1.02, 1.02 );
setEffMoveKey(  SP_dodge+9, 1, 1.02, 1.02 );

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

--***書き文字***
ct_gyun = entryEffectLife( spep_5 + 32,  10007, 44, 0x100, -1, 0, -3.6, 145.7 );  --ギュンッ

setEffShake(  spep_5+32,  ct_gyun,  44,  20);  --揺れ
setEffMoveKey( spep_5+32, ct_gyun, -3.6, 145.7 , 0 );
setEffMoveKey( spep_5+34, ct_gyun, -34, 187.9 , 0 );
setEffMoveKey( spep_5+36, ct_gyun, -50.4, 208.8 , 0 );
setEffMoveKey( spep_5+56, ct_gyun, -50.4, 208.8 , 0 );
setEffMoveKey( spep_5+58, ct_gyun, -69.2, 236 , 0 );
setEffMoveKey( spep_5+60, ct_gyun, -66.8, 230.9 , 0 );
setEffMoveKey( spep_5+62, ct_gyun, -75, 241.9 , 0 );
setEffMoveKey( spep_5+76, ct_gyun, -75, 241.9 , 0 );
setEffScaleKey( spep_5+32, ct_gyun, 1, 1 );
setEffScaleKey( spep_5+34, ct_gyun, 1.69, 1.69 );
setEffScaleKey( spep_5+36, ct_gyun, 2.22, 2.22 );
setEffScaleKey( spep_5+58, ct_gyun, 2.56, 2.56 );
setEffScaleKey( spep_5+60, ct_gyun, 2.65, 2.65 );
setEffScaleKey( spep_5+62, ct_gyun, 2.87, 2.87 );
setEffScaleKey( spep_5+76, ct_gyun, 2.87, 2.87 );
setEffRotateKey( spep_5+32, ct_gyun, -33.1 );
setEffRotateKey( spep_5+76, ct_gyun, -33.1 );
setEffAlphaKey( spep_5+32, ct_gyun, 255 );
setEffAlphaKey( spep_5+56, ct_gyun, 255 );
setEffAlphaKey( spep_5+58, ct_gyun, 170 );
setEffAlphaKey( spep_5+60, ct_gyun, 85 );
setEffAlphaKey( spep_5+62, ct_gyun, 0 );
setEffAlphaKey( spep_5+76, ct_gyun, 0 );

--***敵の動き***
setDisp( spep_5+78, 1, 0 );
changeAnime( spep_5+31, 1, 108 );
changeAnime( spep_5+32, 1, 108 );

setMoveKey( spep_5+16, 1, 180.6, 0 , 0 );
setMoveKey( spep_5+18, 1, 171.8, 0 , 0 );
setMoveKey( spep_5+20, 1, 163, 0 , 0 );
setMoveKey( spep_5+22, 1, 154.2, 0 , 0 );
setMoveKey( spep_5+24, 1, 145.4, 0 , 0 );
setMoveKey( spep_5+26, 1, 136.6, 0 , 0 );
setMoveKey( spep_5+28, 1, 127.8, 0 , 0 );
setMoveKey( spep_5+30, 1, 119, 0 , 0 );

setMoveKey( spep_5+32, 1, 96.4, -3.4 , 0 );
setMoveKey( spep_5+42, 1, 96.4, -3.4 , 0 );
setMoveKey( spep_5+44, 1, 95.9, -3.2 , 0 );
setMoveKey( spep_5+46, 1, 95.4, -3.1 , 0 );
setMoveKey( spep_5+48, 1, 95, -3 , 0 );
setMoveKey( spep_5+50, 1, 94.5, -2.9 , 0 );
setMoveKey( spep_5+52, 1, 94.1, -2.7 , 0 );
setMoveKey( spep_5+54, 1, 93.6, -2.6 , 0 );
setMoveKey( spep_5+56, 1, 93.2, -2.5 , 0 );
setMoveKey( spep_5+58, 1, 92.7, -2.4 , 0 );
setMoveKey( spep_5+60, 1, 92.3, -2.3 , 0 );
setMoveKey( spep_5+62, 1, 91.9, -2.2 , 0 );
setMoveKey( spep_5+64, 1, 91.4, -2.1 , 0 );
setMoveKey( spep_5+66, 1, 91, -2 , 0 );
setMoveKey( spep_5+68, 1, 90.5, -1.8 , 0 );
setMoveKey( spep_5+70, 1, 90.1, -1.7 , 0 );
setMoveKey( spep_5+72, 1, 89.6, -1.6 , 0 );
setMoveKey( spep_5+74, 1, 89.2, -1.5 , 0 );
setMoveKey( spep_5+76, 1, 88.7, -1.4 , 0 );
setMoveKey( spep_5+78, 1, 88.3, -1.3 , 0 );

setScaleKey( spep_5+16, 1, 1.08, 1.08 );
setScaleKey( spep_5+18, 1, 1.14, 1.14 );
setScaleKey( spep_5+20, 1, 1.2, 1.2 );
setScaleKey( spep_5+22, 1, 1.26, 1.26 );
setScaleKey( spep_5+24, 1, 1.32, 1.32 );
setScaleKey( spep_5+26, 1, 1.38, 1.38 );
setScaleKey( spep_5+28, 1, 1.44, 1.44 );
setScaleKey( spep_5+30, 1, 1.5, 1.5 );
setScaleKey( spep_5+42, 1, 1.5, 1.5 );
setScaleKey( spep_5+44, 1, 1.51, 1.51 );
setScaleKey( spep_5+46, 1, 1.51, 1.51 );
setScaleKey( spep_5+48, 1, 1.52, 1.52 );
setScaleKey( spep_5+50, 1, 1.52, 1.52 );
setScaleKey( spep_5+52, 1, 1.53, 1.53 );
setScaleKey( spep_5+54, 1, 1.53, 1.53 );
setScaleKey( spep_5+56, 1, 1.54, 1.54 );
setScaleKey( spep_5+58, 1, 1.54, 1.54 );
setScaleKey( spep_5+60, 1, 1.55, 1.55 );
setScaleKey( spep_5+62, 1, 1.56, 1.56 );
setScaleKey( spep_5+64, 1, 1.56, 1.56 );
setScaleKey( spep_5+66, 1, 1.57, 1.57 );
setScaleKey( spep_5+68, 1, 1.57, 1.57 );
setScaleKey( spep_5+70, 1, 1.58, 1.58 );
setScaleKey( spep_5+72, 1, 1.58, 1.58 );
setScaleKey( spep_5+74, 1, 1.59, 1.59 );
setScaleKey( spep_5+76, 1, 1.59, 1.59 );
setScaleKey( spep_5+78, 1, 1.6, 1.6 );

setRotateKey( spep_5+16, 1, 0 );
setRotateKey( spep_5+32, 1, 0 );
setRotateKey( spep_5+34, 1, -8.7 );
setRotateKey( spep_5+36, 1, 6 );
setRotateKey( spep_5+38, 1, -8.7 );
setRotateKey( spep_5+40, 1, 6 );
setRotateKey( spep_5+42, 1, 0 );
setRotateKey( spep_5+78, 1, 0 );

--***白フェード***
entryFade(  spep_5+66,  10,  4,  2,  fcolor_r,  fcolor_g,  fcolor_b,  255);  --white fade

------------------------------------------------------
-- ガ
------------------------------------------------------
spep_6 = spep_5+80;

--敵の動き--
setDisp( spep_6 + 2, 1, 1 );
changeAnime( spep_6 + 2, 1, 107 );

--setMoveKey( spep_6 + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_6 + 2, 1, 32.5, -4.9 , 0 );
setMoveKey( spep_6 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_6 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_6 + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_6 + 10, 1, 7.1, -92.9 , 0 );
setMoveKey( spep_6 + 12, 1, -1.9, -124.1 , 0 );
setMoveKey( spep_6 + 110, 1, -1.9, -124.1 , 0 );

--setScaleKey( spep_6 + 0, 1, 0.22, 0.22 );
setScaleKey( spep_6 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_6 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_6 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_6 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_6 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_6 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_6 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_6 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_6 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_6 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_6 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_6 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_6 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_6 + 110, 1, 1.6, 1.6 );

--setRotateKey( spep_6 + 0, 1, 0 );
setRotateKey( spep_6 + 2, 1, 105 );
setRotateKey( spep_6 + 4, 1, 240 );
setRotateKey( spep_6 + 6, 1, 405 );
setRotateKey( spep_6 + 8, 1, 600 );
setRotateKey( spep_6 + 10, 1, 825 );
setRotateKey( spep_6 + 12, 1, 1080 );
setRotateKey( spep_6 + 110, 1, 1080 );

--爆発エフェクト
entryEffect( spep_6, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発

setDamage( spep_6 +16, 1, 0);  -- ダメージ振動等
setShake(spep_6+8,6,15);
setShake(spep_6+14,15,10);

--書き文字--
ctGa = entryEffectLife( spep_6+14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );
setEffShake( spep_6+14, ctGa, 30, 10);

setEffMoveKey( spep_6+14, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_6+16, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_6+18, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_6+20, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_6+22, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_6+24, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_6+26, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_6+28, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_6+30, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_6+112, ctGa, 3.9, 316.1 , 0 );

setEffScaleKey( spep_6+14, ctGa, 2, 2 );
setEffScaleKey( spep_6+16, ctGa, 2.0, 2.0);
setEffScaleKey( spep_6+17, cGa, 2.6, 2.6);
setEffScaleKey( spep_6+18, ctGa, 4.0, 4.0);
setEffScaleKey( spep_6+19, ctGa, 2.6, 2.6);
setEffScaleKey( spep_6+20, ctGa, 3.8, 3.8);
setEffScaleKey( spep_6+112, ctGa, 3.8, 3.8);

setEffRotateKey( spep_6+14, ctGa, -40 );
setEffRotateKey( spep_6+16, ctGa, -31 );
setEffRotateKey( spep_6+18, ctGa, -40 );
setEffRotateKey( spep_6+20, ctGa, -31 );
setEffRotateKey( spep_6+22, ctGa, -40 );
setEffRotateKey( spep_6+24, ctGa, -31);
setEffRotateKey( spep_6+26, ctGa, -40 );
setEffRotateKey( spep_6+28, ctGa, -31);
setEffRotateKey( spep_6+30, ctGa, -40 );
setEffRotateKey( spep_6+112, ctGa, -40 );

setEffAlphaKey( spep_6 + 14, ctGa, 255 );
setEffAlphaKey( spep_6 + 112, ctGa, 255 );

--集中線（白）
shuchusen = entryEffectLife( spep_6+2, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線

--集中線（黒）
shuchusenkuro = entryEffectLife( spep_6+14, 1657, 120, 0x80,  -1, 0,  0,  0);   -- 集中線

--ひび割れ
hibi = entryEffect( spep_6+2, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

playSe( spep_6, SE_10);
playSe( spep_6+12,  SE_11);  --割れる音

-- ダメージ表示
dealDamage(spep_6+16);
--entryFade( spep_6+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_6+100);


end
