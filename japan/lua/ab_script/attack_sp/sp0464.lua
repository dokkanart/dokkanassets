--　id:1014320  sp0464_フリーザ(最終形態)(GT)_デススライサー

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

SP_01 = 151802  --連打
SP_02 = 151803  --着弾
SP_03 = 151804  --スライサー出現
SP_04 = 151805  --スライサー発射
SP_05 = 151806  --スライサー飛ぶ
SP_06 = 151807  --命中
SP_07 = 151808  --スライサー出現（敵）
SP_08 = 151809  --スライサー発射（敵）

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI(0, 0);

-- 敵
changeAnime( 0, 1, 101);                       -- 立ち
setDisp( 0, 1, 0);

setMoveKey(   0,   1,    -2000,  -2000,  0);
setMoveKey(   1,   1,    -2000,  -2000,  0);
setMoveKey(   2,   1,    -2000,  -2000,  0);
setMoveKey(   3,   1,    -2000,  -2000,  0);
setMoveKey(   4,   1,    -2000,  -2000,  0);
setMoveKey(   5,   1,    -2000,  -2000,  0);
setMoveKey(   6,   1,    -2000,  -2000,  0);
setMoveKey(   20,  1,    -2000,  -2000,  0);
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
-- 気溜め(62F)
------------------------------------------------------
spep_1 = 0;

changeAnime( 0, 0, 1);    -- 立ち
setDisp( 0, 0, 1);

setMoveKey(  spep_1,   0,    0,  -20,  0);
setMoveKey(  spep_1+1,   0,    0,  -20,  0);
setMoveKey(  spep_1+2,   0,    0,  -20,  0);
setMoveKey(  spep_1+3,   0,    0,  -20,  0);
setMoveKey(  spep_1+4,   0,    0,  -20,  0);
setMoveKey(  spep_1+5,   0,    0,  -20,  0);
setMoveKey(  spep_1+9,   0,    0,  -20,  0);
setScaleKey(  spep_1,  0,  1.6,  1.6);
setScaleKey(  spep_1+1,  0,  1.6,  1.6);
setScaleKey(  spep_1+2,  0,  1.6,  1.6);
setScaleKey(  spep_1+3,  0,  1.6,  1.6);
setScaleKey(  spep_1+4,  0,  1.6,  1.6);
setScaleKey(  spep_1+5,  0,  1.6,  1.6);
setScaleKey(  spep_1+9,   0, 1.6, 1.6);


shuchusen1 = entryEffectLife( spep_1+10, 906, 52, 0x100,  -1, 0,  0,  0);   -- 集中線

setEffScaleKey(  spep_1+10,  shuchusen1,  1.0,  1.0);
setEffMoveKey(  spep_1+10,  shuchusen1,  0,  0);
setEffRotateKey(  spep_1+10,  shuchusen1,  0);
setEffAlphaKey(  spep_1+10,  shuchusen1,  255);
setEffScaleKey(  spep_1+62,  shuchusen1,  1.0,  1.0);
setEffMoveKey(  spep_1+62,  shuchusen1,  0,  0);
setEffRotateKey(  spep_1+62,  shuchusen1,  0);
setEffAlphaKey(  spep_1+62,  shuchusen1,  255);


aura = entryEffectLife(  spep_1+10, 341, 52, 0x100,  -1,  0,  0,  -220); -- オーラ

setEffScaleKey( spep_1+10, aura, 2.0, 2.0);
setEffScaleKey( spep_1+62, aura, 2.0, 2.0);
setEffMoveKey(  spep_1+10, aura, 0,  -220);
setEffMoveKey(  spep_1+62, aura, 0,  -220);
setEffRotateKey(  spep_1+10,  aura,  0);
setEffRotateKey(  spep_1+62,  aura,  0);
setEffAlphaKey(  spep_1+10,  aura,  255);
setEffAlphaKey(  spep_1+62,  aura,  255);

changeAnime( spep_1+10, 0, 17);                       -- 気溜め

setShakeChara(  spep_1+10,  0,  52,  10); --揺れ
setMoveKey(  spep_1+10,  0,  -30,  -80,  0);
setMoveKey(  spep_1+62,  0,  -30,  -80,  0);
setScaleKey(  spep_1+10,  0,  2.0,  2.0);
setScaleKey(  spep_1+62,  0,  2.0,  2.0);

playSe(  spep_1+10,  SE_01);  --気溜め

entryFade( spep_1+53, 6, 4, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryFadeBg( spep_1+9, 5, 58, 0, 0, 0, 0, 220);          -- 黒　背景

------------------------------------------------------
-- 連打(90F)
------------------------------------------------------
spep_2 = 62;


setDisp(  spep_2,  0,  0);  --キャラ非表示
setMoveKey(  spep_2,  0,  2000,  2000,  0);
setMoveKey(  spep_2+1,  0,  2000,  2000,  0);
setMoveKey(  spep_2+2,  0,  2000,  2000,  0);


shuchusen2 = entryEffectLife( spep_2, 906, 20, 0x100,  -1, 0,  0,  0);   -- 集中線

setEffScaleKey(  spep_2,  shuchusen2,  1.25,  1.21);
setEffMoveKey(  spep_2,  shuchusen2,  -200,  200);
setEffRotateKey(  spep_2,  shuchusen2,  0);
setEffAlphaKey(  spep_2,  shuchusen2,  255);
setEffScaleKey(  spep_2+20,  shuchusen2,  1.25,  1.21);
setEffMoveKey(  spep_2+20,  shuchusen2,  -200,  200);
setEffRotateKey(  spep_2+20,  shuchusen2,  0);
setEffAlphaKey(  spep_2+20,  shuchusen2,  255);


--書き文字エントリー
ctzuba = entryEffectLife( spep_2+7,  10015, 78, 0x100, -1, 0, 96, 347.8 );  --ズババ

setEffShake(  spep_2+7,  ctzuba,  70,  10);
setEffMoveKey( spep_2+7, ctzuba, 96, 347.8 , 0 );
setEffMoveKey( spep_2+12, ctzuba, 102, 340.9 , 0 );
setEffMoveKey( spep_2+85, ctzuba, 102, 340.9 , 0 );
setEffScaleKey( spep_2+7, ctzuba, 3.24, 3.24 );
setEffScaleKey( spep_2+85, ctzuba, 3.24, 3.24 );
setEffRotateKey( spep_2+7, ctzuba, 21.2 );
setEffRotateKey( spep_2+85, ctzuba, 21.2 );
setEffAlphaKey( spep_2+7, ctzuba, 255 );
setEffAlphaKey( spep_2+85, ctzuba, 255 );


-- 流線
ryu1 = entryEffectLife(  spep_2,  921,  87,  0x80,  -1,  0,  0,  0);  --流線斜め

setEffScaleKey(  spep_2,  ryu1,  1.68,  1.29);
setEffMoveKey(  spep_2,  ryu1,  0,  0);
setEffRotateKey(  spep_2,  ryu1,  -145.3);
setEffAlphaKey(  spep_2,  ryu1,  255);
setEffScaleKey(  spep_2+87,  ryu1,  1.68,  1.29);
setEffMoveKey(  spep_2+87,  ryu1,  0,  0);
setEffRotateKey(  spep_2+87,  ryu1,  -145.3);
setEffAlphaKey(  spep_2+87,  ryu1,  255);


renda = entryEffect(  spep_2,  SP_01,  0x100,  -1,  0,  0,  0);  --連打

setEffScaleKey(  spep_2,  renda,  1.0,  1.0);
setEffMoveKey(  spep_2,  renda,  0,  0);
setEffRotateKey(  spep_2,  renda,  0);
setEffAlphaKey(  spep_2,  renda,  255);
setEffScaleKey(  spep_2+90,  renda,  1.0,  1.0);
setEffMoveKey(  spep_2+90,  renda,  0,  0);
setEffRotateKey(  spep_2+90,  renda,  0);
setEffAlphaKey(  spep_2+90,  renda,  255);


playSe(  spep_2,  1016);
playSe(  spep_2+9,  1016);
playSe(  spep_2+19,  1016);
playSe(  spep_2+29,  1016);
--playSe(  spep_2+29,  1016);
playSe(  spep_2+39,  1016);


entryFadeBg( spep_2, 0, 87, 0, 0, 0, 0, 255);          -- 黒　背景


--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_2+40; --エンドフェイズのフレーム数を置き換える

setMoveKey( SP_dodge-1, 0, 0,  1000, -1000); --味方位置
setMoveKey( SP_dodge, 0, 0,    1000, -1000); --味方位置

setMoveKey( SP_dodge-1, 1, -5000,  -5000, 0); --敵位置
setMoveKey( SP_dodge, 1, -5000,  -5000, 0); --敵位置
setMoveKey( SP_dodge+1, 1, -5000,  -5000, 0); --敵位置
setMoveKey( SP_dodge+3, 1, -5000,  -5000, 0); --敵位置
setMoveKey( SP_dodge+4, 1, -5000,  -5000, 0); --敵位置
setMoveKey( SP_dodge+10, 1, -5000,  -5000, 0); --敵位置

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
--回避しなかった場合
--------------------------------------
playSe(  spep_2+49,  1016);
playSe(  spep_2+59,  1016);
playSe(  spep_2+69,  1016);
playSe(  spep_2+79,  1016);

entryFade( spep_2+78, 8, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 着弾(80F)
------------------------------------------------------
spep_3 = spep_2+90;

shuchusen3 = entryEffectLife( spep_3-3, 906, 77, 0x100,  -1, 0,  0,  0);   -- 集中線

setEffScaleKey(  spep_3-3,  shuchusen3,  1.04,  1.01);
setEffMoveKey(  spep_3-3,  shuchusen3,  0,  0);
setEffRotateKey(  spep_3-3,  shuchusen3,  0);
setEffAlphaKey(  spep_3-3,  shuchusen3,  255);
setEffScaleKey(  spep_3+74,  shuchusen3,  1.04,  1.01);
setEffMoveKey(  spep_3+74,  shuchusen3,  0,  0);
setEffRotateKey(  spep_3+74,  shuchusen3,  0);
setEffAlphaKey(  spep_3+74,  shuchusen3,  255);


hidan = entryEffect(  spep_3,  SP_02,  0x100,  -1,  0,  0,  0);  --被弾

setEffScaleKey(  spep_3,  hidan,  1.0,  1.0);
setEffMoveKey(  spep_3,  hidan,  0,  0);
setEffRotateKey(  spep_3,  hidan,  0);
setEffAlphaKey(  spep_3,  hidan,  255);
setEffScaleKey(  spep_3+80,  hidan,  1.0,  1.0);
setEffMoveKey(  spep_3+80,  hidan,  0,  0);
setEffRotateKey(  spep_3+80,  hidan,  0);
setEffAlphaKey(  spep_3+80,  hidan,  255);


--書き文字エントリー
ctzudo = entryEffectLife( spep_3,  10014, 74, 0x100, -1, 0, 140, 339.9 ); --ズドドド

setEffShake(  spep_3,  ctzudo,  78,  10);
setEffMoveKey( spep_3, ctzudo, 140, 339.9 , 0 );
setEffMoveKey( spep_3+2, ctzudo, 147.1, 333.7 , 0 );
setEffMoveKey( spep_3+74, ctzudo, 140, 339.9 , 0 );
setEffScaleKey( spep_3, ctzudo, 3.15, 3.15 );
setEffScaleKey( spep_3+74, ctzudo, 3.15, 3.15 );
setEffRotateKey( spep_3, ctzudo, 62.7 );
setEffRotateKey( spep_3+74, ctzudo, 62.7 );
setEffAlphaKey( spep_3, ctzudo, 255 );
setEffAlphaKey( spep_3+74, ctzudo, 255 );


--敵の動き
setDisp( spep_3-3, 1, 1 );
changeAnime( spep_3-3, 1, 100 );

setMoveKey( spep_3-3, 1, 18.7, 0 , 0 );
setMoveKey( spep_3+21, 1, 18.7, 0 , 0 );
setScaleKey( spep_3, 1, 1.05, 1.05 );
setScaleKey( spep_3+21, 1, 1.05, 1.05 );
setRotateKey( spep_3, 1, 0 );
setRotateKey( spep_3+21, 1, 0 );

changeAnime( spep_3+22, 1, 108);  --くの字 

setMoveKey( spep_3+22, 1, 54.7, 0 , 0 );
setMoveKey( spep_3+23, 1, 2000, 2000 , 0 );
setMoveKey( spep_3+75, 1, 2000, 2000 , 0 );
setScaleKey( spep_3+22, 1, 1.05, 1.05 );
setScaleKey( spep_3+75, 1, 1.05, 1.05 );
setRotateKey( spep_3+22, 1, 0 );
setRotateKey( spep_3+75, 1, 0 );

--[[
playSe(spep_3+4,  SE_09);
playSe(spep_3+18,  SE_09);
playSe(spep_3+30,  SE_09);
playSe(spep_3+44,  SE_09);
]]
--4.11
SE001 = playSe(spep_3+4,  SE_09);
stopSe(spep_3+28,SE001,10);
SE002 = playSe(spep_3+18,  SE_09);
stopSe(spep_3+40,SE002,10);
SE003 = playSe(spep_3+30,  SE_09);
stopSe(spep_3+54,SE003,10);
SE004 = playSe(spep_3+44,  SE_09);

entryFade( spep_3+4, 0, 0, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_3+18, 0, 0, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_3+30, 0, 0, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_3+44, 0, 0, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryFade( spep_3+65, 6, 5, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryFadeBg( spep_3-3, 0, 83, 0, 10, 10, 10, 180);          -- 黒　背景

------------------------------------------------------
-- スライサー出現(100F)
------------------------------------------------------
spep_4 = spep_3+75;

--敵の動き
setDisp( spep_4, 1, 0 );
changeAnime( spep_4, 1, 00 );

setMoveKey( spep_4, 1, 2000, 2000 , 0 );
setMoveKey( spep_4+100, 1, 2000, 2000 , 0 );

shuchusen4 = entryEffectLife( spep_4, 906, 100, 0x100,  -1, 0,  0,  0);   -- 集中線

setEffScaleKey(  spep_4,  shuchusen4,  1.0,  1.0);
setEffMoveKey(  spep_4,  shuchusen4,  0,  0);
setEffRotateKey(  spep_4,  shuchusen4,  0);
setEffAlphaKey(  spep_4,  shuchusen4,  255);
setEffScaleKey(  spep_4+100,  shuchusen4,  1.0,  1.0);
setEffMoveKey(  spep_4+100,  shuchusen4,  0,  0);
setEffRotateKey(  spep_4+100,  shuchusen4,  0);
setEffAlphaKey(  spep_4+100,  shuchusen4,  255);

-- カットイン
speff = entryEffect(  spep_4,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_4,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー --
ctgogo = entryEffectLife( spep_4+13, 190006, 71, 0x100, -1, 0, -100, 510);    -- ゴゴゴゴ

setEffScaleKey(  spep_4+13,  ctgogo,  0.6,  0.6);
setEffMoveKey(  spep_4+13,  ctgogo,  -100,  530);
setEffRotateKey(  spep_4+13,  ctgogo,  0);
setEffScaleKey(  spep_4+84,  ctgogo,  0.6,  0.6);
setEffMoveKey(  spep_4+84,  ctgogo,  -100,  530);
setEffRotateKey(  spep_4+84,  ctgogo,  0);

playSe(  spep_4,  SE_04);  --カットイン音

appear = entryEffect(  spep_4,  SP_03,  0x80,  -1,  0,  0,  0);  --スライサー出現

setEffScaleKey(  spep_4,  appear,  1.0,  1.0);
setEffMoveKey(  spep_4,  appear,  0,  0);
setEffRotateKey(  spep_4,  appear,  0);
setEffAlphaKey(  spep_4,  appear,  255);
setEffScaleKey(  spep_4+100,  appear,  1.0,  1.0);
setEffMoveKey(  spep_4+100,  appear,  0,  0);
setEffRotateKey(  spep_4+100,  appear,  0);
setEffAlphaKey(  spep_4+100,  appear,  255);

entryFade( spep_4+86, 6, 10, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryFadeBg( spep_4, 0, 100, 0, 0, 0, 0, 220);          -- 黒　背景

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
spep_5 = spep_4+100;

playSe( spep_5, SE_05);
speff = entryEffect(  spep_5,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

shuchusen5 = entryEffectLife( spep_5, 906, 90, 0x100,  -1, 0,  0,  0);

setEffMoveKey(  spep_5,  shuchusen5,  0,  0);
setEffScaleKey(  spep_5,  shuchusen5,  1.0,  1.0);
setEffRotateKey(  spep_5,  shuchusen5,  0);
setEffAlphaKey(  spep_5,  shuchusen5,  255);
setEffMoveKey(  spep_5+90,  shuchusen5,  0,  0);
setEffScaleKey(  spep_5+90,  shuchusen5,  1.0,  1.0);
setEffRotateKey(  spep_5+90,  shuchusen5,  0);
setEffAlphaKey(  spep_5+90,  shuchusen5,  255);

entryFade( spep_5+70, 15, 9, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- スライサー発射(38F)
------------------------------------------------------
spep_6 = spep_5+90;

shuchusen6 = entryEffectLife( spep_6, 906, 38, 0x100,  -1, 0,  0,  0);   -- 集中線

setEffScaleKey(  spep_6,  shuchusen6,  1.5,  1.5);
setEffMoveKey(  spep_6,  shuchusen6,  0,  0);
setEffRotateKey(  spep_6,  shuchusen6,  0);
setEffAlphaKey(  spep_6,  shuchusen6,  255);
setEffScaleKey(  spep_6+38,  shuchusen6,  1.5,  1.5);
setEffMoveKey(  spep_6+38,  shuchusen6,  0,  0);
setEffRotateKey(  spep_6+38,  shuchusen6,  0);
setEffAlphaKey(  spep_6+38,  shuchusen6,  255);

--書き文字エントリー
ctzuo = entryEffectLife( spep_6+4,  10012, 32, 0x100, -1, 0, 78, 259.9 );  --ズオッ

setEffShake(  spep_6+4,  ctzuo,  32,  10);
setEffMoveKey( spep_6+4, ctzuo, 78, 259.9 , 0 );
setEffMoveKey( spep_6+6, ctzuo, 109.1, 310.4 , 0 );
setEffMoveKey( spep_6+8, ctzuo, 131.9, 365.8 , 0 );
setEffMoveKey( spep_6+36, ctzuo, 132, 365.8 , 0 );
setEffScaleKey( spep_6+4, ctzuo, 0.45, 0.45 );
setEffScaleKey( spep_6+6, ctzuo, 1.51, 1.51 );
setEffScaleKey( spep_6+8, ctzuo, 2.56, 2.56 );
setEffScaleKey( spep_6+10, ctzuo, 2.58, 2.58 );
setEffScaleKey( spep_6+12, ctzuo, 2.6, 2.6 );
setEffScaleKey( spep_6+14, ctzuo, 2.62, 2.62 );
setEffScaleKey( spep_6+16, ctzuo, 2.64, 2.64 );
setEffScaleKey( spep_6+18, ctzuo, 2.66, 2.66 );
setEffScaleKey( spep_6+20, ctzuo, 2.68, 2.68 );
setEffScaleKey( spep_6+22, ctzuo, 2.7, 2.7 );
setEffScaleKey( spep_6+24, ctzuo, 2.72, 2.72 );
setEffScaleKey( spep_6+26, ctzuo, 2.74, 2.74 );
setEffScaleKey( spep_6+28, ctzuo, 2.76, 2.76 );
setEffScaleKey( spep_6+30, ctzuo, 2.78, 2.78 );
setEffScaleKey( spep_6+32, ctzuo, 2.8, 2.8 );
setEffScaleKey( spep_6+34, ctzuo, 2.81, 2.81 );
setEffScaleKey( spep_6+36, ctzuo, 2.83, 2.83 );
setEffRotateKey( spep_6+4, ctzuo, 21.6 );
setEffRotateKey( spep_6+6, ctzuo, 21.7 );
setEffRotateKey( spep_6+36, ctzuo, 21.7 );
setEffAlphaKey( spep_6+4, ctzuo, 255 );
setEffAlphaKey( spep_6+36, ctzuo, 255 );

-- 流線
ryu2 = entryEffectLife(  spep_6,  921,  38,  0x80,  -1,  0,  0,  0);  --流線斜め

setEffScaleKey(  spep_6,  ryu2,  1.41,  1.41);
setEffMoveKey(  spep_6,  ryu2,  0,  0);
setEffRotateKey(  spep_6,  ryu2,  -160.5);
setEffAlphaKey(  spep_6,  ryu2,  255);
setEffScaleKey(  spep_6+38,  ryu2,  1.41,  1.41);
setEffMoveKey(  spep_6+38,  ryu2,  0,  0);
setEffRotateKey(  spep_6+38,  ryu2,  -160.5);
setEffAlphaKey(  spep_6+38,  ryu2,  255);

hassya = entryEffect(  spep_6,  SP_04,  0x80,  -1,  0,  0,  0);  --スライサー発射

setEffScaleKey(  spep_6,  hassya,  1.0,  1.0);
setEffMoveKey(  spep_6,  hassya,  0,  0);
setEffRotateKey(  spep_6,  hassya,  0);
setEffAlphaKey(  spep_6,  hassya,  255);
setEffScaleKey(  spep_6+38,  hassya,  1.0,  1.0);
setEffMoveKey(  spep_6+38,  hassya,  0,  0);
setEffRotateKey(  spep_6+38,  hassya,  0);
setEffAlphaKey(  spep_6+38,  hassya,  255);

playSe(  spep_6,  1021);

entryFade( spep_6+30, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryFadeBg( spep_6, 0, 38, 0, 255, 255, 255, 255);          -- 白　背景

------------------------------------------------------
-- スライサー飛ぶ(40F)
------------------------------------------------------
spep_7 = spep_6+38;

-- 流線
ryu3 = entryEffectLife(  spep_7,  921,  40,  0x80,  -1,  0,  0,  0);  --流線斜め

setEffScaleKey(  spep_7,  ryu3,  1.22,  1.22);
setEffMoveKey(  spep_7,  ryu3,  0,  0);
setEffRotateKey(  spep_7,  ryu3,  -160.5);
setEffAlphaKey(  spep_7,  ryu3,  255);
setEffScaleKey(  spep_7+40,  ryu3,  1.22,  1.22);
setEffMoveKey(  spep_7+40,  ryu3,  0,  0);
setEffRotateKey(  spep_7+40,  ryu3,  -160.5);
setEffAlphaKey(  spep_7+40,  ryu3,  255);

tobu = entryEffect(  spep_7,  SP_05,  0x100,  -1,  0,  0,  0);  --スライサー飛ぶ

setEffScaleKey(  spep_7,  tobu,  1.0,  1.0);
setEffMoveKey(  spep_7,  tobu,  0,  0);
setEffRotateKey(  spep_7,  tobu,  0);
setEffAlphaKey(  spep_7,  tobu,  255);
setEffScaleKey(  spep_7+40,  tobu,  1.0,  1.0);
setEffMoveKey(  spep_7+40,  tobu,  0,  0);
setEffRotateKey(  spep_7+40,  tobu,  0);
setEffAlphaKey(  spep_7+40,  tobu,  255);

playSe(  spep_7,  1022);

entryFade( spep_7+32, 4, 7, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryFadeBg( spep_7, 0, 40, 0, 0, 0, 0, 255);          -- 黒　背景

------------------------------------------------------
-- 命中(100F)
------------------------------------------------------
spep_8 = spep_7+40;

-- 流線
ryu4 = entryEffectLife(  spep_8,  921,  100,  0x80,  -1,  0,  0,  0);  --流線斜め

setEffScaleKey(  spep_8,  ryu4,  1.0,  1.0);
setEffMoveKey(  spep_8,  ryu4,  0,  0);
setEffRotateKey(  spep_8,  ryu4,  0);
setEffAlphaKey(  spep_8,  ryu4,  255);
setEffScaleKey(  spep_8+100,  ryu4,  1.0,  1.0);
setEffMoveKey(  spep_8+100,  ryu4,  0,  0);
setEffRotateKey(  spep_8+100,  ryu4,  0);
setEffAlphaKey(  spep_8+100,  ryu4,  255);

--敵の動き
setDisp( spep_8, 1, 1 );
changeAnime( spep_8, 1, 104 );

setMoveKey( spep_8, 1, 237.9, -38.1 , 0 );
setMoveKey( spep_8+2, 1, 247, -28.7 , 0 );
setMoveKey( spep_8+4, 1, 238, -35.4 , 0 );
setMoveKey( spep_8+6, 1, 245, -30.1 , 0 );
setMoveKey( spep_8+8, 1, 235.9, -36.9 , 0 );
setMoveKey( spep_8+10, 1, 242.8, -31.7 , 0 );
setMoveKey( spep_8+12, 1, 233.6, -38.5 , 0 );
setMoveKey( spep_8+14, 1, 240.3, -33.4 , 0 );
setMoveKey( spep_8+16, 1, 231, -40.3 , 0 );
setMoveKey( spep_8+18, 1, 237.6, -35.3 , 0 );
setMoveKey( spep_8+20, 1, 228.1, -42.3 , 0 );
setMoveKey( spep_8+22, 1, 234.6, -37.4 , 0 );
setMoveKey( spep_8+24, 1, 225, -44.5 , 0 );
setMoveKey( spep_8+26, 1, 231.4, -39.6 , 0 );
setMoveKey( spep_8+28, 1, 221.7, -46.8 , 0 );
setMoveKey( spep_8+30, 1, 228, -42 , 0 );
setMoveKey( spep_8+32, 1, 218.2, -49.3 , 0 );
setMoveKey( spep_8+34, 1, 224.3, -44.6 , 0 );
setMoveKey( spep_8+36, 1, 214.3, -52 , 0 );
setMoveKey( spep_8+38, 1, 220.4, -47.3 , 0 );
setMoveKey( spep_8+40, 1, 210.3, -54.8 , 0 );
setMoveKey( spep_8+42, 1, 216.2, -50.3 , 0 );
setMoveKey( spep_8+44, 1, 206, -57.8 , 0 );
setMoveKey( spep_8+46, 1, 211.8, -53.3 , 0 );
setMoveKey( spep_8+48, 1, 201.5, -60.9 , 0 );
setMoveKey( spep_8+50, 1, 207.1, -56.6 , 0 );
setMoveKey( spep_8+52, 1, 196.7, -64.3 , 0 );
setMoveKey( spep_8+54, 1, 202.2, -60 , 0 );
setMoveKey( spep_8+56, 1, 191.7, -67.8 , 0 );
setScaleKey( spep_8+0, 1, 1.0, 1.0 );
setScaleKey( spep_8+18, 1, 1.1, 1.1 );
setScaleKey( spep_8+30, 1, 1.2, 1.2 );
setScaleKey( spep_8+40, 1, 1.4, 1.4 );
setScaleKey( spep_8+56, 1, 2.2, 2.2 );
setRotateKey( spep_8+0, 1, 0 );
setRotateKey( spep_8+56, 1, 0 );


changeAnime( spep_8+57, 1, 108);  --くの字

setMoveKey( spep_8+57, 1, 192.4, -22.3 , 0 );
setMoveKey( spep_8+62, 1, 236.5, -2.3 , 0 );
setMoveKey( spep_8+64, 1, 206.4, -16.3 , 0 );
setMoveKey( spep_8+66, 1, 236.8, -9.1 , 0 );
setMoveKey( spep_8+68, 1, 251.2, -13.9 , 0 );
setMoveKey( spep_8+70, 1, 281.6, -6.7 , 0 );
setMoveKey( spep_8+72, 1, 296, -11.5 , 0 );
setMoveKey( spep_8+74, 1, 326.5, -4.3 , 0 );
setMoveKey( spep_8+76, 1, 340.9, -9.1 , 0 );
setMoveKey( spep_8+78, 1, 371.3, -1.9 , 0 );
setMoveKey( spep_8+80, 1, 385.7, -6.7 , 0 );
setMoveKey( spep_8+82, 1, 416.1, 0.5 , 0 );
setMoveKey( spep_8+84, 1, 430.5, -4.3 , 0 );
setMoveKey( spep_8+100, 1, 2000, -2000 , 0 );
setScaleKey( spep_8+57, 1, 2.5, 2.5 );
setScaleKey( spep_8+64, 1, 2.5, 2.5 );
setScaleKey( spep_8+66, 1, 2.3, 2.3 );
setScaleKey( spep_8+68, 1, 2.11, 2.11 );
setScaleKey( spep_8+70, 1, 1.91, 1.91 );
setScaleKey( spep_8+72, 1, 1.71, 1.71 );
setScaleKey( spep_8+74, 1, 1.52, 1.52 );
setScaleKey( spep_8+76, 1, 1.32, 1.32 );
setScaleKey( spep_8+78, 1, 1.13, 1.13 );
setScaleKey( spep_8+80, 1, 0.93, 0.93 );
setScaleKey( spep_8+82, 1, 0.74, 0.74 );
setScaleKey( spep_8+84, 1, 0.54, 0.54 );
setScaleKey( spep_8+100, 1, 0.54, 0.54 );
setRotateKey( spep_8+57, 1, 21.5 );
setRotateKey( spep_8+62, 1, -10.7 );
setRotateKey( spep_8+64, 1, -2.7 );
setRotateKey( spep_8+100, 1, -2.7 );

hit = entryEffect(  spep_8,  SP_06,  0x100,  -1,  0,  0,  0);  --命中

setEffScaleKey(  spep_8,  hit,  1.0,  1.0);
setEffMoveKey(  spep_8,  hit,  0,  0);
setEffRotateKey(  spep_8,  hit,  0);
setEffAlphaKey(  spep_8,  hit,  255);
setEffScaleKey(  spep_8+100,  hit,  1.0,  1.0);
setEffMoveKey(  spep_8+100,  hit,  0,  0);
setEffRotateKey(  spep_8+100,  hit,  0);
setEffAlphaKey(  spep_8+100,  hit,  255);

--書き文字エントリー
ctzudo2 = entryEffectLife( spep_8,  10014, 98, 0x100, -1, 0, 29.7, 336.5 );  --ズドドド

setEffShake(  spep_8,  ctzudo2,  98,  10);
setEffMoveKey( spep_8, ctzudo2, 29.7, 336.5 , 0 );
setEffMoveKey( spep_8+2, ctzudo2, 35.6, 329.4 , 0 );
setEffMoveKey( spep_8+4, ctzudo2, 29.7, 336.5 , 0 );
setEffMoveKey( spep_8+98, ctzudo2, 29.7, 336.5 , 0 );
setEffScaleKey( spep_8, ctzudo2, 3.11, 3.11 );
setEffScaleKey( spep_8+98, ctzudo2, 3.11, 3.11 );
setEffRotateKey( spep_8, ctzudo2, 71.8 );
setEffRotateKey( spep_8+98, ctzudo2, 71.8 );
setEffAlphaKey( spep_8, ctzudo2, 255 );
setEffAlphaKey( spep_8+98, ctzudo2, 255 );

playSe(  spep_8+57,  1024);

entryFade( spep_8+77, 17, 13, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryFadeBg( spep_8, 0, 100, 0, 10, 10, 10, 180);          -- 黒　背景

------------------------------------------------------
-- 爆発ガッ(100F)
------------------------------------------------------
spep_9 = spep_8+100;

setDisp( spep_9, 1, 1);
setMoveKey(  spep_9,    1,  2000,  -2000,   0);
setScaleKey( spep_9,    1,  1.0, 1.0);
setMoveKey(  spep_9+1,    1,    2000,  -2000,   0);
setScaleKey( spep_9+1,    1,  0.1, 0.1);
setMoveKey(  spep_9+8,    1,    2000,  -2000,   0);
setScaleKey( spep_9+8,    1,  0.1, 0.1);

changeAnime( spep_9+1, 1, 107);                         -- 手前ダメージ
entryEffect( spep_9+9, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_9+9, SE_10);

setMoveKey(  spep_9+9,   1,    0,   0,   128);
setMoveKey(  spep_9+15,   1,  -60,  -200,  -100);
--setMoveKey(  486,   1,  -60,  -200,  -100);
setDamage( spep_9+16, 1, 0);  -- ダメージ振動等
setShake(spep_9+7,6,15);
setShake(spep_9+13,15,10);

setRotateKey( spep_9,  1,  30 );
setRotateKey( spep_9+2,  1,  80 );
setRotateKey( spep_9+4,  1, 120 );
setRotateKey( spep_9+6,  1, 160 );
setRotateKey( spep_9+8,  1, 200 );
setRotateKey( spep_9+10,  1, 260 );
setRotateKey( spep_9+12,  1, 320 );
setRotateKey( spep_9+14,  1,   0 );

setShakeChara( spep_9+15, 1, 5,  10);
setShakeChara( spep_9+20, 1, 10, 20);

-- 書き文字エントリー
ctga_2 = entryEffectLife( spep_9+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake(spep_9+15, ctga_2, 30, 10);
setEffRotateKey( spep_9+15, ctga_2, -15);
setEffScaleKey( spep_9+15, ctga_2, 4.0, 4.0);
setEffScaleKey( spep_9+16, ctga_2, 2.0, 2.0);
setEffScaleKey( spep_9+17, ctga_2, 2.6, 2.6);
setEffScaleKey( spep_9+18, ctga_2, 4.0, 4.0);
setEffScaleKey( spep_9+19, ctga_2, 2.6, 2.6);
setEffScaleKey( spep_9+20, ctga_2, 3.8, 3.8);
setEffScaleKey( spep_9+110, ctga_2, 3.8, 3.8);
setEffAlphaKey( spep_9+15, ctga_2, 255);
setEffAlphaKey( spep_9+105, ctga_2, 255);
setEffAlphaKey( spep_9+115, ctga_2, 0);

playSe( spep_9+3, SE_11);
shuchusen3 = entryEffectLife( spep_9+9, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_9+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

shuchusenkuro = entryEffectLife( spep_9+15, 1657, 120, 0x80,  -1, 0,  0,  0);   -- 集中線


-- ダメージ表示
dealDamage(spep_9+10);

entryFade( spep_9+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_9+110);
else


-----------------------------------------
--敵側の攻撃
-----------------------------------------
------------------------------------------------------
-- 気溜め(62F)
------------------------------------------------------
spep_1 = 0;

changeAnime( 0, 0, 1);    -- 立ち
setDisp( 0, 0, 1);

setMoveKey(  spep_1,   0,    0,  -20,  0);
setMoveKey(  spep_1+1,   0,    0,  -20,  0);
setMoveKey(  spep_1+2,   0,    0,  -20,  0);
setMoveKey(  spep_1+3,   0,    0,  -20,  0);
setMoveKey(  spep_1+4,   0,    0,  -20,  0);
setMoveKey(  spep_1+5,   0,    0,  -20,  0);
setMoveKey(  spep_1+9,   0,    0,  -20,  0);
setScaleKey(  spep_1,  0,  1.6,  1.6);
setScaleKey(  spep_1+1,  0,  1.6,  1.6);
setScaleKey(  spep_1+2,  0,  1.6,  1.6);
setScaleKey(  spep_1+3,  0,  1.6,  1.6);
setScaleKey(  spep_1+4,  0,  1.6,  1.6);
setScaleKey(  spep_1+5,  0,  1.6,  1.6);
setScaleKey(  spep_1+9,   0, 1.6, 1.6);


shuchusen1 = entryEffectLife( spep_1+10, 906, 52, 0x100,  -1, 0,  0,  0);   -- 集中線

setEffScaleKey(  spep_1+10,  shuchusen1,  1.0,  1.0);
setEffMoveKey(  spep_1+10,  shuchusen1,  0,  0);
setEffRotateKey(  spep_1+10,  shuchusen1,  0);
setEffAlphaKey(  spep_1+10,  shuchusen1,  255);
setEffScaleKey(  spep_1+62,  shuchusen1,  1.0,  1.0);
setEffMoveKey(  spep_1+62,  shuchusen1,  0,  0);
setEffRotateKey(  spep_1+62,  shuchusen1,  0);
setEffAlphaKey(  spep_1+62,  shuchusen1,  255);


aura = entryEffectLife(  spep_1+10, 341, 52, 0x100,  -1,  0,  0,  -220); -- オーラ

setEffScaleKey( spep_1+10, aura, 2.0, 2.0);
setEffScaleKey( spep_1+62, aura, 2.0, 2.0);
setEffMoveKey(  spep_1+10, aura, 0,  -220);
setEffMoveKey(  spep_1+62, aura, 0,  -220);
setEffRotateKey(  spep_1+10,  aura,  0);
setEffRotateKey(  spep_1+62,  aura,  0);
setEffAlphaKey(  spep_1+10,  aura,  255);
setEffAlphaKey(  spep_1+62,  aura,  255);

changeAnime( spep_1+10, 0, 17);                       -- 気溜め

setShakeChara(  spep_1+10,  0,  52,  10);  --揺れ 
setMoveKey(  spep_1+10,  0,  -30,  -80,  0);
setMoveKey(  spep_1+62,  0,  -30,  -80,  0);
setScaleKey(  spep_1+10,  0,  2.0,  2.0);
setScaleKey(  spep_1+62,  0,  2.0,  2.0);

playSe(  spep_1+10,  SE_01);  --気溜め

entryFade( spep_1+53, 6, 4, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryFadeBg( spep_1+9, 5, 58, 0, 0, 0, 0, 220);          -- 黒　背景

------------------------------------------------------
-- 連打(90F)
------------------------------------------------------
spep_2 = 62;


setDisp(  spep_2,  0,  0);  --キャラ非表示
setMoveKey(  spep_2,  0,  2000,  2000,  0);
setMoveKey(  spep_2+1,  0,  2000,  2000,  0);
setMoveKey(  spep_2+2,  0,  2000,  2000,  0);


shuchusen2 = entryEffectLife( spep_2, 906, 20, 0x100,  -1, 0,  0,  0);   -- 集中線

setEffScaleKey(  spep_2,  shuchusen2,  1.25,  1.21);
setEffMoveKey(  spep_2,  shuchusen2,  -200,  200);
setEffRotateKey(  spep_2,  shuchusen2,  0);
setEffAlphaKey(  spep_2,  shuchusen2,  255);
setEffScaleKey(  spep_2+20,  shuchusen2,  1.25,  1.21);
setEffMoveKey(  spep_2+20,  shuchusen2,  -200,  200);
setEffRotateKey(  spep_2+20,  shuchusen2,  0);
setEffAlphaKey(  spep_2+20,  shuchusen2,  255);


--書き文字エントリー
ctzuba = entryEffectLife( spep_2+7,  10015, 78, 0x100, -1, 0, 96, 347.8 );  --ズババ

setEffShake(  spep_2+7,  ctzuba,  70,  10);
setEffMoveKey( spep_2+7, ctzuba, 96, 347.8 , 0 );
setEffMoveKey( spep_2+12, ctzuba, 102, 340.9 , 0 );
setEffMoveKey( spep_2+85, ctzuba, 102, 340.9 , 0 );
setEffScaleKey( spep_2+7, ctzuba, 3.24, 3.24 );
setEffScaleKey( spep_2+85, ctzuba, 3.24, 3.24 );
setEffRotateKey( spep_2+7, ctzuba, 21.2 );
setEffRotateKey( spep_2+85, ctzuba, 21.2 );
setEffAlphaKey( spep_2+7, ctzuba, 255 );
setEffAlphaKey( spep_2+85, ctzuba, 255 );


-- 流線
ryu1 = entryEffectLife(  spep_2,  921,  87,  0x80,  -1,  0,  0,  0);  --流線斜め

setEffScaleKey(  spep_2,  ryu1,  1.68,  1.29);
setEffMoveKey(  spep_2,  ryu1,  0,  0);
setEffRotateKey(  spep_2,  ryu1,  -145.3);
setEffAlphaKey(  spep_2,  ryu1,  255);
setEffScaleKey(  spep_2+87,  ryu1,  1.68,  1.29);
setEffMoveKey(  spep_2+87,  ryu1,  0,  0);
setEffRotateKey(  spep_2+87,  ryu1,  -145.3);
setEffAlphaKey(  spep_2+87,  ryu1,  255);


renda = entryEffect(  spep_2,  SP_01,  0x100,  -1,  0,  0,  0);  --連打

setEffScaleKey(  spep_2,  renda,  1.0,  1.0);
setEffMoveKey(  spep_2,  renda,  0,  0);
setEffRotateKey(  spep_2,  renda,  0);
setEffAlphaKey(  spep_2,  renda,  255);
setEffScaleKey(  spep_2+90,  renda,  1.0,  1.0);
setEffMoveKey(  spep_2+90,  renda,  0,  0);
setEffRotateKey(  spep_2+90,  renda,  0);
setEffAlphaKey(  spep_2+90,  renda,  255);


playSe(  spep_2,  1016);
playSe(  spep_2+9,  1016);
playSe(  spep_2+19,  1016);
playSe(  spep_2+29,  1016);
--playSe(  spep_2+29,  1016);
playSe(  spep_2+39,  1016);


entryFadeBg( spep_2, 0, 87, 0, 0, 0, 0, 255);          -- 黒　背景


--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_2+40; --エンドフェイズのフレーム数を置き換える

setMoveKey( SP_dodge-1, 0, 0,  1000, -1000); --味方位置
setMoveKey( SP_dodge, 0, 0,    1000, -1000); --味方位置

setMoveKey( SP_dodge-1, 1, -5000,  -5000, 0); --敵位置
setMoveKey( SP_dodge, 1, -5000,  -5000, 0); --敵位置
setMoveKey( SP_dodge+1, 1, -5000,  -5000, 0); --敵位置
setMoveKey( SP_dodge+3, 1, -5000,  -5000, 0); --敵位置
setMoveKey( SP_dodge+4, 1, -5000,  -5000, 0); --敵位置
setMoveKey( SP_dodge+10, 1, -5000,  -5000, 0); --敵位置

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
--回避しなかった場合
--------------------------------------
playSe(  spep_2+49,  1016);
playSe(  spep_2+59,  1016);
playSe(  spep_2+69,  1016);
playSe(  spep_2+79,  1016);

entryFade( spep_2+78, 8, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 着弾(80F)
------------------------------------------------------
spep_3 = spep_2+90;

shuchusen3 = entryEffectLife( spep_3-3, 906, 77, 0x100,  -1, 0,  0,  0);   -- 集中線

setEffScaleKey(  spep_3-3,  shuchusen3,  1.04,  1.01);
setEffMoveKey(  spep_3-3,  shuchusen3,  0,  0);
setEffRotateKey(  spep_3-3,  shuchusen3,  0);
setEffAlphaKey(  spep_3-3,  shuchusen3,  255);
setEffScaleKey(  spep_3+74,  shuchusen3,  1.04,  1.01);
setEffMoveKey(  spep_3+74,  shuchusen3,  0,  0);
setEffRotateKey(  spep_3+74,  shuchusen3,  0);
setEffAlphaKey(  spep_3+74,  shuchusen3,  255);


hidan = entryEffect(  spep_3,  SP_02,  0x100,  -1,  0,  0,  0);  --被弾

setEffScaleKey(  spep_3,  hidan,  1.0,  1.0);
setEffMoveKey(  spep_3,  hidan,  0,  0);
setEffRotateKey(  spep_3,  hidan,  0);
setEffAlphaKey(  spep_3,  hidan,  255);
setEffScaleKey(  spep_3+80,  hidan,  1.0,  1.0);
setEffMoveKey(  spep_3+80,  hidan,  0,  0);
setEffRotateKey(  spep_3+80,  hidan,  0);
setEffAlphaKey(  spep_3+80,  hidan,  255);


--書き文字エントリー
ctzudo = entryEffectLife( spep_3,  10014, 74, 0x100, -1, 0, 100, 339.9 ); --ズドドド

setEffShake(  spep_3,  ctzudo,  78,  10);
setEffMoveKey( spep_3, ctzudo, 100, 339.9 , 0 );
setEffMoveKey( spep_3+2, ctzudo, 107.1, 333.7 , 0 );
setEffMoveKey( spep_3+74, ctzudo, 100, 339.9 , 0 );
setEffScaleKey( spep_3, ctzudo, 2.65, 2.65 );
setEffScaleKey( spep_3+74, ctzudo, 2.65, 2.65 );
setEffRotateKey( spep_3, ctzudo, 0 );
setEffRotateKey( spep_3+74, ctzudo, 0 );
setEffAlphaKey( spep_3, ctzudo, 255 );
setEffAlphaKey( spep_3+74, ctzudo, 255 );


--敵の動き
setDisp( spep_3-3, 1, 1 );
changeAnime( spep_3-3, 1, 100 );

setMoveKey( spep_3-3, 1, 18.7, 0 , 0 );
setMoveKey( spep_3+21, 1, 18.7, 0 , 0 );
setScaleKey( spep_3, 1, 1.05, 1.05 );
setScaleKey( spep_3+21, 1, 1.05, 1.05 );
setRotateKey( spep_3, 1, 0 );
setRotateKey( spep_3+21, 1, 0 );

changeAnime( spep_3+22, 1, 108);  --くの字
setMoveKey( spep_3+22, 1, 54.7, 0 , 0 );
setMoveKey( spep_3+23, 1, 2000, 2000 , 0 );
setMoveKey( spep_3+75, 1, 2000, 2000 , 0 );
setScaleKey( spep_3+22, 1, 1.05, 1.05 );
setScaleKey( spep_3+75, 1, 1.05, 1.05 );
setRotateKey( spep_3+22, 1, 0 );
setRotateKey( spep_3+75, 1, 0 );

--[[
playSe(spep_3+4,  SE_09);
playSe(spep_3+18,  SE_09);
playSe(spep_3+30,  SE_09);
playSe(spep_3+44,  SE_09);
]]
--4.11
SE001 = playSe(spep_3+4,  SE_09);
stopSe(spep_3+28,SE001,10);
SE002 = playSe(spep_3+18,  SE_09);
stopSe(spep_3+40,SE002,10);
SE003 = playSe(spep_3+30,  SE_09);
stopSe(spep_3+54,SE003,10);
SE004 = playSe(spep_3+44,  SE_09);

entryFade( spep_3+4, 0, 0, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_3+18, 0, 0, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_3+30, 0, 0, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_3+44, 0, 0, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryFade( spep_3+65, 6, 5, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryFadeBg( spep_3-3, 0, 83, 0, 10, 10, 10, 180);          -- 黒　背景

------------------------------------------------------
-- スライサー出現(100F)
------------------------------------------------------
spep_4 = spep_3+75;

--敵の動き
setDisp( spep_4, 1, 0 );
changeAnime( spep_4, 1, 00 );

setMoveKey( spep_4, 1, 2000, 2000 , 0 );
setMoveKey( spep_4+100, 1, 2000, 2000 , 0 );

shuchusen4 = entryEffectLife( spep_4, 906, 100, 0x100,  -1, 0,  0,  0);   -- 集中線

setEffScaleKey(  spep_4,  shuchusen4,  1.0,  1.0);
setEffMoveKey(  spep_4,  shuchusen4,  0,  0);
setEffRotateKey(  spep_4,  shuchusen4,  0);
setEffAlphaKey(  spep_4,  shuchusen4,  255);
setEffScaleKey(  spep_4+100,  shuchusen4,  1.0,  1.0);
setEffMoveKey(  spep_4+100,  shuchusen4,  0,  0);
setEffRotateKey(  spep_4+100,  shuchusen4,  0);
setEffAlphaKey(  spep_4+100,  shuchusen4,  255);

-- カットイン
--speff = entryEffect(  spep_4,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  spep_4,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー --
ctgogo = entryEffectLife( spep_4+13, 190006, 71, 0x100, -1, 0, -100, 510);    -- ゴゴゴゴ

setEffScaleKey(  spep_4+13,  ctgogo,  -0.6,  0.6);
setEffMoveKey(  spep_4+13,  ctgogo,  -100,  530);
setEffRotateKey(  spep_4+13,  ctgogo,  0);
setEffScaleKey(  spep_4+84,  ctgogo,  -0.6,  0.6);
setEffMoveKey(  spep_4+84,  ctgogo,  -100,  530);
setEffRotateKey(  spep_4+84,  ctgogo,  0);

playSe(  spep_4,  SE_04);  --カットイン音

appear = entryEffect(  spep_4,  SP_07,  0x80,  -1,  0,  0,  0);  --スライサー出現

setEffScaleKey(  spep_4,  appear,  1.0,  1.0);
setEffMoveKey(  spep_4,  appear,  0,  0);
setEffRotateKey(  spep_4,  appear,  0);
setEffAlphaKey(  spep_4,  appear,  255);
setEffScaleKey(  spep_4+100,  appear,  1.0,  1.0);
setEffMoveKey(  spep_4+100,  appear,  0,  0);
setEffRotateKey(  spep_4+100,  appear,  0);
setEffAlphaKey(  spep_4+100,  appear,  255);

entryFade( spep_4+86, 6, 10, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryFadeBg( spep_4, 0, 100, 0, 0, 0, 0, 220);          -- 黒　背景

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
spep_5 = spep_4+100;

playSe( spep_5, SE_05);
speff = entryEffect(  spep_5,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

shuchusen5 = entryEffectLife( spep_5, 906, 90, 0x100,  -1, 0,  0,  0);

setEffMoveKey(  spep_5,  shuchusen5,  0,  0);
setEffScaleKey(  spep_5,  shuchusen5,  1.0,  1.0);
setEffRotateKey(  spep_5,  shuchusen5,  0);
setEffAlphaKey(  spep_5,  shuchusen5,  255);
setEffMoveKey(  spep_5+90,  shuchusen5,  0,  0);
setEffScaleKey(  spep_5+90,  shuchusen5,  1.0,  1.0);
setEffRotateKey(  spep_5+90,  shuchusen5,  0);
setEffAlphaKey(  spep_5+90,  shuchusen5,  255);

entryFade( spep_5+70, 15, 9, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- スライサー発射(38F)
------------------------------------------------------
spep_6 = spep_5+90;

shuchusen6 = entryEffectLife( spep_6, 906, 38, 0x100,  -1, 0,  0,  0);   -- 集中線

setEffScaleKey(  spep_6,  shuchusen6,  1.5,  1.5);
setEffMoveKey(  spep_6,  shuchusen6,  0,  0);
setEffRotateKey(  spep_6,  shuchusen6,  0);
setEffAlphaKey(  spep_6,  shuchusen6,  255);
setEffScaleKey(  spep_6+38,  shuchusen6,  1.5,  1.5);
setEffMoveKey(  spep_6+38,  shuchusen6,  0,  0);
setEffRotateKey(  spep_6+38,  shuchusen6,  0);
setEffAlphaKey(  spep_6+38,  shuchusen6,  255);

--書き文字エントリー
ctzuo = entryEffectLife( spep_6+4,  10012, 32, 0x100, -1, 0, 78, 259.9 );  --ズオッ

setEffShake(  spep_6+4,  ctzuo,  32,  10);
setEffMoveKey( spep_6+4, ctzuo, 78, 259.9 , 0 );
setEffMoveKey( spep_6+6, ctzuo, 109.1, 310.4 , 0 );
setEffMoveKey( spep_6+8, ctzuo, 131.9, 365.8 , 0 );
setEffMoveKey( spep_6+36, ctzuo, 132, 365.8 , 0 );
setEffScaleKey( spep_6+4, ctzuo, 0.45, 0.45 );
setEffScaleKey( spep_6+6, ctzuo, 1.51, 1.51 );
setEffScaleKey( spep_6+8, ctzuo, 2.56, 2.56 );
setEffScaleKey( spep_6+10, ctzuo, 2.58, 2.58 );
setEffScaleKey( spep_6+12, ctzuo, 2.6, 2.6 );
setEffScaleKey( spep_6+14, ctzuo, 2.62, 2.62 );
setEffScaleKey( spep_6+16, ctzuo, 2.64, 2.64 );
setEffScaleKey( spep_6+18, ctzuo, 2.66, 2.66 );
setEffScaleKey( spep_6+20, ctzuo, 2.68, 2.68 );
setEffScaleKey( spep_6+22, ctzuo, 2.7, 2.7 );
setEffScaleKey( spep_6+24, ctzuo, 2.72, 2.72 );
setEffScaleKey( spep_6+26, ctzuo, 2.74, 2.74 );
setEffScaleKey( spep_6+28, ctzuo, 2.76, 2.76 );
setEffScaleKey( spep_6+30, ctzuo, 2.78, 2.78 );
setEffScaleKey( spep_6+32, ctzuo, 2.8, 2.8 );
setEffScaleKey( spep_6+34, ctzuo, 2.81, 2.81 );
setEffScaleKey( spep_6+36, ctzuo, 2.83, 2.83 );
setEffRotateKey( spep_6+4, ctzuo, 21.6 );
setEffRotateKey( spep_6+6, ctzuo, 21.7 );
setEffRotateKey( spep_6+36, ctzuo, 21.7 );
setEffAlphaKey( spep_6+4, ctzuo, 255 );
setEffAlphaKey( spep_6+36, ctzuo, 255 );

-- 流線
ryu2 = entryEffectLife(  spep_6,  921,  38,  0x80,  -1,  0,  0,  0);  --流線斜め

setEffScaleKey(  spep_6,  ryu2,  1.41,  1.41);
setEffMoveKey(  spep_6,  ryu2,  0,  0);
setEffRotateKey(  spep_6,  ryu2,  -160.5);
setEffAlphaKey(  spep_6,  ryu2,  255);
setEffScaleKey(  spep_6+38,  ryu2,  1.41,  1.41);
setEffMoveKey(  spep_6+38,  ryu2,  0,  0);
setEffRotateKey(  spep_6+38,  ryu2,  -160.5);
setEffAlphaKey(  spep_6+38,  ryu2,  255);

hassya = entryEffect(  spep_6,  SP_08,  0x80,  -1,  0,  0,  0);  --スライサー発射

setEffScaleKey(  spep_6,  hassya,  1.0,  1.0);
setEffMoveKey(  spep_6,  hassya,  0,  0);
setEffRotateKey(  spep_6,  hassya,  0);
setEffAlphaKey(  spep_6,  hassya,  255);
setEffScaleKey(  spep_6+38,  hassya,  1.0,  1.0);
setEffMoveKey(  spep_6+38,  hassya,  0,  0);
setEffRotateKey(  spep_6+38,  hassya,  0);
setEffAlphaKey(  spep_6+38,  hassya,  255);

playSe(  spep_6,  1021);

entryFade( spep_6+30, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryFadeBg( spep_6, 0, 38, 0, 255, 255, 255, 255);          -- 白　背景

------------------------------------------------------
-- スライサー飛ぶ(40F)
------------------------------------------------------
spep_7 = spep_6+38;

-- 流線
ryu3 = entryEffectLife(  spep_7,  921,  40,  0x80,  -1,  0,  0,  0);  --流線斜め

setEffScaleKey(  spep_7,  ryu3,  1.22,  1.22);
setEffMoveKey(  spep_7,  ryu3,  0,  0);
setEffRotateKey(  spep_7,  ryu3,  -160.5);
setEffAlphaKey(  spep_7,  ryu3,  255);
setEffScaleKey(  spep_7+40,  ryu3,  1.22,  1.22);
setEffMoveKey(  spep_7+40,  ryu3,  0,  0);
setEffRotateKey(  spep_7+40,  ryu3,  -160.5);
setEffAlphaKey(  spep_7+40,  ryu3,  255);

tobu = entryEffect(  spep_7,  SP_05,  0x100,  -1,  0,  0,  0);  --スライサー飛ぶ

setEffScaleKey(  spep_7,  tobu,  1.0,  1.0);
setEffMoveKey(  spep_7,  tobu,  0,  0);
setEffRotateKey(  spep_7,  tobu,  0);
setEffAlphaKey(  spep_7,  tobu,  255);
setEffScaleKey(  spep_7+40,  tobu,  1.0,  1.0);
setEffMoveKey(  spep_7+40,  tobu,  0,  0);
setEffRotateKey(  spep_7+40,  tobu,  0);
setEffAlphaKey(  spep_7+40,  tobu,  255);

playSe(  spep_7,  1022);

entryFade( spep_7+32, 4, 7, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryFadeBg( spep_7, 0, 40, 0, 0, 0, 0, 255);          -- 黒　背景

------------------------------------------------------
-- 命中(100F)
------------------------------------------------------
spep_8 = spep_7+40;

-- 流線
ryu4 = entryEffectLife(  spep_8,  921,  100,  0x80,  -1,  0,  0,  0);  --流線斜め

setEffScaleKey(  spep_8,  ryu4,  1.0,  1.0);
setEffMoveKey(  spep_8,  ryu4,  0,  0);
setEffRotateKey(  spep_8,  ryu4,  0);
setEffAlphaKey(  spep_8,  ryu4,  255);
setEffScaleKey(  spep_8+100,  ryu4,  1.0,  1.0);
setEffMoveKey(  spep_8+100,  ryu4,  0,  0);
setEffRotateKey(  spep_8+100,  ryu4,  0);
setEffAlphaKey(  spep_8+100,  ryu4,  255);


--敵の動き
setDisp( spep_8, 1, 1 );
changeAnime( spep_8, 1, 104 );

setMoveKey( spep_8, 1, 237.9, -38.1 , 0 );
setMoveKey( spep_8+2, 1, 247, -28.7 , 0 );
setMoveKey( spep_8+4, 1, 238, -35.4 , 0 );
setMoveKey( spep_8+6, 1, 245, -30.1 , 0 );
setMoveKey( spep_8+8, 1, 235.9, -36.9 , 0 );
setMoveKey( spep_8+10, 1, 242.8, -31.7 , 0 );
setMoveKey( spep_8+12, 1, 233.6, -38.5 , 0 );
setMoveKey( spep_8+14, 1, 240.3, -33.4 , 0 );
setMoveKey( spep_8+16, 1, 231, -40.3 , 0 );
setMoveKey( spep_8+18, 1, 237.6, -35.3 , 0 );
setMoveKey( spep_8+20, 1, 228.1, -42.3 , 0 );
setMoveKey( spep_8+22, 1, 234.6, -37.4 , 0 );
setMoveKey( spep_8+24, 1, 225, -44.5 , 0 );
setMoveKey( spep_8+26, 1, 231.4, -39.6 , 0 );
setMoveKey( spep_8+28, 1, 221.7, -46.8 , 0 );
setMoveKey( spep_8+30, 1, 228, -42 , 0 );
setMoveKey( spep_8+32, 1, 218.2, -49.3 , 0 );
setMoveKey( spep_8+34, 1, 224.3, -44.6 , 0 );
setMoveKey( spep_8+36, 1, 214.3, -52 , 0 );
setMoveKey( spep_8+38, 1, 220.4, -47.3 , 0 );
setMoveKey( spep_8+40, 1, 210.3, -54.8 , 0 );
setMoveKey( spep_8+42, 1, 216.2, -50.3 , 0 );
setMoveKey( spep_8+44, 1, 206, -57.8 , 0 );
setMoveKey( spep_8+46, 1, 211.8, -53.3 , 0 );
setMoveKey( spep_8+48, 1, 201.5, -60.9 , 0 );
setMoveKey( spep_8+50, 1, 207.1, -56.6 , 0 );
setMoveKey( spep_8+52, 1, 196.7, -64.3 , 0 );
setMoveKey( spep_8+54, 1, 202.2, -60 , 0 );
setMoveKey( spep_8+56, 1, 191.7, -67.8 , 0 );
setScaleKey( spep_8+0, 1, 1.0, 1.0 );
setScaleKey( spep_8+18, 1, 1.1, 1.1 );
setScaleKey( spep_8+30, 1, 1.2, 1.2 );
setScaleKey( spep_8+40, 1, 1.4, 1.4 );
setScaleKey( spep_8+56, 1, 2.2, 2.2 );
setRotateKey( spep_8+0, 1, 0 );
setRotateKey( spep_8+56, 1, 0 );

changeAnime( spep_8+57, 1, 108);  --くの字

setMoveKey( spep_8+57, 1, 192.4, -22.3 , 0 );
setMoveKey( spep_8+62, 1, 236.5, -2.3 , 0 );
setMoveKey( spep_8+64, 1, 206.4, -16.3 , 0 );
setMoveKey( spep_8+66, 1, 236.8, -9.1 , 0 );
setMoveKey( spep_8+68, 1, 251.2, -13.9 , 0 );
setMoveKey( spep_8+70, 1, 281.6, -6.7 , 0 );
setMoveKey( spep_8+72, 1, 296, -11.5 , 0 );
setMoveKey( spep_8+74, 1, 326.5, -4.3 , 0 );
setMoveKey( spep_8+76, 1, 340.9, -9.1 , 0 );
setMoveKey( spep_8+78, 1, 371.3, -1.9 , 0 );
setMoveKey( spep_8+80, 1, 385.7, -6.7 , 0 );
setMoveKey( spep_8+82, 1, 416.1, 0.5 , 0 );
setMoveKey( spep_8+84, 1, 430.5, -4.3 , 0 );
setMoveKey( spep_8+100, 1, 2000, -2000 , 0 );
setScaleKey( spep_8+57, 1, 2.5, 2.5 );
setScaleKey( spep_8+64, 1, 2.5, 2.5 );
setScaleKey( spep_8+66, 1, 2.3, 2.3 );
setScaleKey( spep_8+68, 1, 2.11, 2.11 );
setScaleKey( spep_8+70, 1, 1.91, 1.91 );
setScaleKey( spep_8+72, 1, 1.71, 1.71 );
setScaleKey( spep_8+74, 1, 1.52, 1.52 );
setScaleKey( spep_8+76, 1, 1.32, 1.32 );
setScaleKey( spep_8+78, 1, 1.13, 1.13 );
setScaleKey( spep_8+80, 1, 0.93, 0.93 );
setScaleKey( spep_8+82, 1, 0.74, 0.74 );
setScaleKey( spep_8+84, 1, 0.54, 0.54 );
setScaleKey( spep_8+100, 1, 0.54, 0.54 );
setRotateKey( spep_8+57, 1, 21.5 );
setRotateKey( spep_8+62, 1, -10.7 );
setRotateKey( spep_8+64, 1, -2.7 );
setRotateKey( spep_8+100, 1, -2.7 );

hit = entryEffect(  spep_8,  SP_06,  0x100,  -1,  0,  0,  0);  --命中

setEffScaleKey(  spep_8,  hit,  1.0,  1.0);
setEffMoveKey(  spep_8,  hit,  0,  0);
setEffRotateKey(  spep_8,  hit,  0);
setEffAlphaKey(  spep_8,  hit,  255);
setEffScaleKey(  spep_8+100,  hit,  1.0,  1.0);
setEffMoveKey(  spep_8+100,  hit,  0,  0);
setEffRotateKey(  spep_8+100,  hit,  0);
setEffAlphaKey(  spep_8+100,  hit,  255);

--書き文字エントリー
ctzudo2 = entryEffectLife( spep_8,  10014, 98, 0x100, -1, 0, 29.7, 336.5 );  --ズドドド

setEffShake(  spep_8,  ctzudo2,  98,  10);
setEffMoveKey( spep_8, ctzudo2, 29.7, 336.5 , 0 );
setEffMoveKey( spep_8+2, ctzudo2, 35.6, 329.4 , 0 );
setEffMoveKey( spep_8+4, ctzudo2, 29.7, 336.5 , 0 );
setEffMoveKey( spep_8+98, ctzudo2, 29.7, 336.5 , 0 );
setEffScaleKey( spep_8, ctzudo2, 3.11, 3.11 );
setEffScaleKey( spep_8+98, ctzudo2, 3.11, 3.11 );
setEffRotateKey( spep_8, ctzudo2, 0 );
setEffRotateKey( spep_8+98, ctzudo2, 0 );
setEffAlphaKey( spep_8, ctzudo2, 255 );
setEffAlphaKey( spep_8+98, ctzudo2, 255 );

playSe(  spep_8+57,  1024);

entryFade( spep_8+77, 17, 13, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryFadeBg( spep_8, 0, 100, 0, 10, 10, 10, 180);          -- 黒　背景

------------------------------------------------------
-- 爆発ガッ(100F)
------------------------------------------------------
spep_9 = spep_8+100

setDisp( spep_9, 1, 1);
setMoveKey(  spep_9,    1,  2000,  -2000,   0);
setScaleKey( spep_9,    1,  1.0, 1.0);
setMoveKey(  spep_9+1,    1,    2000,  -2000,   0);
setScaleKey( spep_9+1,    1,  0.1, 0.1);
setMoveKey(  spep_9+8,    1,    2000,  -2000,   0);
setScaleKey( spep_9+8,    1,  0.1, 0.1);

changeAnime( spep_9+1, 1, 107);                         -- 手前ダメージ
entryEffect( spep_9+9, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_9+9, SE_10);

setMoveKey(  spep_9+9,   1,    0,   0,   128);
setMoveKey(  spep_9+15,   1,  -60,  -200,  -100);
--setMoveKey(  486,   1,  -60,  -200,  -100);
setDamage( spep_9+16, 1, 0);  -- ダメージ振動等
setShake(spep_9+7,6,15);
setShake(spep_9+13,15,10);

setRotateKey( spep_9,  1,  30 );
setRotateKey( spep_9+2,  1,  80 );
setRotateKey( spep_9+4,  1, 120 );
setRotateKey( spep_9+6,  1, 160 );
setRotateKey( spep_9+8,  1, 200 );
setRotateKey( spep_9+10,  1, 260 );
setRotateKey( spep_9+12,  1, 320 );
setRotateKey( spep_9+14,  1,   0 );

setShakeChara( spep_9+15, 1, 5,  10);
setShakeChara( spep_9+20, 1, 10, 20);

-- 書き文字エントリー
ctga_2 = entryEffectLife( spep_9+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake(spep_9+15, ctga_2, 30, 10);
setEffRotateKey( spep_9+15, ctga_2, -15);
setEffScaleKey( spep_9+15, ctga_2, 4.0, 4.0);
setEffScaleKey( spep_9+16, ctga_2, 2.0, 2.0);
setEffScaleKey( spep_9+17, ctga_2, 2.6, 2.6);
setEffScaleKey( spep_9+18, ctga_2, 4.0, 4.0);
setEffScaleKey( spep_9+19, ctga_2, 2.6, 2.6);
setEffScaleKey( spep_9+20, ctga_2, 3.8, 3.8);
setEffScaleKey( spep_9+110, ctga_2, 3.8, 3.8);
setEffAlphaKey( spep_9+15, ctga_2, 255);
setEffAlphaKey( spep_9+105, ctga_2, 255);
setEffAlphaKey( spep_9+115, ctga_2, 0);

playSe( spep_9+3, SE_11);
shuchusen3 = entryEffectLife( spep_9+9, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_9+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

shuchusenkuro = entryEffectLife( spep_9+15, 1657, 120, 0x80,  -1, 0,  0,  0);   -- 集中線


-- ダメージ表示
dealDamage(spep_9+10);

entryFade( spep_9+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_9+110);

end
