--sp1106
--1011720 超サイヤ人トランクス(青年期) シャイニングソードスラッシュ

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SP_ATK_0 = 6;
SP_ATK_1 = SP_ATK_0+10;
SP_ATK_2 = SP_ATK_1+63;
SP_ATK_3 = SP_ATK_2+92;
SP_ATK_4 = SP_ATK_3+45;

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

SE_13 = 1000; --パンチ 
SE_14 = 1001; --キック 
SE_15 = 1009; --強パンチ 
SE_16 = 1010; --強キック
SE_17 = 1027; --吹っ飛ばし
SE_18 = 1054; --割れる音
SE_19 = 1018; --だっしゅ移動
SE_20 = 1048; --消える音
SE_21 = 1032; --剣撃

tyo = -30;
tyo2 = -40;


SP_01 = 150448; --溜め	
SP_01e = 150459; --溜め(敵)
SP_02 = 150449;--正面ダッシュ	
SP_03 = 150450;--横移動～消え
SP_04 = 150451;--横移動～消え（敵）
SP_05 = 150452;--飛び上がりフレア
SP_06 = 150453;--飛び上がりフレア（敵）
SP_07 = 150454;--斬りかかり
SP_08 = 150455;--斬りかかり（敵）
SP_09 = 150456;--斬撃
SP_10 = 150457;--光弾
SP_11 = 150458;--光弾（敵）

SP_12 = 190002;--ギャン
SP_13 = 107031;--爆発


multi_frm = 2;

changeAnime( 0, 0, 0);                       -- 立ち
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);


--921 --奥行き流線
--924 --吹っ飛ばし流線



------------------------------------------------------
-- 気溜め(120F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then


setVisibleUI(0, 0);
setMoveKey(   0,  0,  0,  0,  0);

--playSe( 25, SE_01);  

ef = entryEffectLife( 0, SP_01,  110, 0x100, -1,  0,  0,  0);
setEffMoveKey(  0,  ef,  0,  0,   0);
setEffScaleKey( 0, ef, 1.0, 1.0);
setEffRotateKey(0, ef, 0);
setEffAlphaKey( 0, ef, 255);

setDisp( 0, 1, 0);
speff = entryEffect(  25,   1504,   0x100,     -1,  0,  0,  0);   -- eff_005 (カットイン) 117で終了
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  25,   1505,   0x100,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
speff = entryEffectLife( 0, 1503, 110, 0x80,  -1, 0,  0,  0);   -- 背景

playSe( 0, SE_05);


shuchusen = entryEffectLife( 0, 906, 159, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 0, shuchusen, 1.5, 1.5);

ct = entryEffectLife( 34, 190006, 70, 0x100, -1, 0, -40, 510);    -- ゴゴゴ・・・
setEffShake(13, ct, 71, 8);
setEffScaleKey(13, ct, 0.7, 0.7);

entryFade( 108, 5, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryFadeBg( 0, 0, 120, 0, 10, 10, 10, 210);       -- ベース暗め　背景
spep_1 = 120;

------------------------------------------------------
-- 突進(70F)
------------------------------------------------------

ef1 = entryEffect( spep_1, SP_02, 0x100, -1,  0,  0,  0);
setEffMoveKey(  spep_1,  ef1,  0,  0,   0);
setEffScaleKey( spep_1, ef1, 1.0, 1.0);
setEffRotateKey(spep_1, ef1, 0);
setEffAlphaKey( spep_1, ef1, 255);

-- ** エフェクト等 ** --
playSe( spep_1, SE_19);

shuchusen1 = entryEffectLife( spep_1, 906, 65, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_1, shuchusen1, 1.5, 1.5);
setEffAlphaKey( spep_1, shuchusen1, 255);

ct1 = entryEffectLife( spep_1+5, 10012, 63, 0x100, -1, 0, 0, -210);    -- ズオッ
setEffShake(spep_1+13, ct1, 70, 10);
setEffScaleKey(spep_1+13, ct1, 2.5, 2.5);

entryFade( spep_1+65, 3, 3, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryFadeBg( spep_1, 0, 70, 0, 10, 10, 10, 210);       -- ベース暗め　背景

spep_2=spep_1+70; --120


------------------------------------------------------
-- 横移動～消え(40F)
------------------------------------------------------
setMoveKey(  spep_2+0,   1,   500, 15,   0);

ef2 = entryEffect( spep_2, SP_03, 0x100, -1,  0,  -20,  0);
setEffMoveKey(  spep_2,  ef2,  0,  0,   0);
setEffScaleKey( spep_2, ef2, 0.9, 0.9);
setEffRotateKey(spep_2, ef2, 0);
setEffAlphaKey( spep_2, ef2, 255);


setDisp( spep_2, 1, 1);                                  --敵
changeAnime( spep_2, 1, 104);
setMoveKey(  spep_2+10,   1,   500, 15,   0);
setMoveKey(  spep_2+20,   1,  195, 15,   0);
setMoveKey(  spep_2+39,   1,  150, 15,   0);
setScaleKey( spep_2,   1, 1.0, 1.0);
setScaleKey( spep_2+20,   1, 1.0, 1.0);
setScaleKey( spep_2+39,   1, 1.0, 1.0);
setDisp( spep_2+39, 1, 0);


playSe( spep_2, SE_19);
playSe( spep_2+23, SE_20);


ryuusenndayoune = entryEffectLife( spep_2, 914, 39, 0x80,  -1, 0,  0,  0);   -- 流線
setEffScaleKey( spep_2, ryuusenndayoune, 1.5, 1.5);
setEffAlphaKey( spep_2, ryuusenndayoune, 255);


shuchusen2 = entryEffectLife( spep_2+23, 906, 16, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_2+23, shuchusen2, 1.5, 1.5);
setEffAlphaKey( spep_2+23, shuchusen2, 255);

ct2 = entryEffectLife( spep_2+25, 10001, 10, 0x100, -1, 0, 20, 250);    -- !?
setEffShake(spep_2+25, ct2, 3, 8);
setEffScaleKey(spep_2+25, ct2, 3.5, 3.5);

entryFade( spep_2+35, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryFadeBg( spep_2, 0, 40, 0, 10, 10, 10, 210);       -- ベース暗め　背景

spep_3 = spep_2+40 --100+70


------------------------------------------------------
-- 飛び上がりフレア(90F)
------------------------------------------------------
ef3 = entryEffectLife( spep_3+16, SP_05, 68, 0x100, -1,  0,  0,  40);
setEffMoveKey(  spep_3+16, ef3,  0,  40,   0);
setEffScaleKey( spep_3+16, ef3, 1.0, 1.0);
setEffRotateKey(spep_3+16, ef3, 0);
setEffAlphaKey( spep_3+16, ef3, 255);

playSe( spep_3+36, 1062);

--shuchusen3 = entryEffectLife( spep_3, 906, 85, 0x80,  -1, 0,  -200,  300);   -- 集中線
--setEffScaleKey( spep_3, shuchusen3, 1.5, 1.5);
--setEffAlphaKey( spep_3, shuchusen3, 255);

shuchusen33 = entryEffectLife( spep_3, 924, 108, 0x80,  -1, 0,  0,  -300);   -- 奥行き線
setEffScaleKey( spep_3, shuchusen33, 1.5, 1.5);
setEffAlphaKey( spep_3, shuchusen33, 255);
setEffRotateKey(spep_3, shuchusen33, -100);

setDisp( spep_3, 1, 1);                                  --敵
changeAnime( spep_3, 1, 102);
setScaleKey( spep_3,   1, 2, 2);
setScaleKey( spep_3+19,   1, 2, 2);
--setMoveKey(  spep_3,   1,   230, 15,   0);
setMoveKey(  spep_3,   1,  250, -200,   0);
setMoveKey(  spep_3+15,   1,  700, -800,   0);
setDisp( spep_3+20, 1, 0);

--setScaleKey( spep_3+20,   1, 4.5, 4.5);


ct3 = entryEffectLife( spep_3+36, 10004, 53, 0x100, -1, 0, 200, 400);    -- カッ
setEffShake(spep_3+10, ct3, 71, 8);
setEffScaleKey(spep_3+10, ct3, 1.7, 1.7);
setEffRotateKey(spep_3+10, ct3, 20);

entryFadeBg( spep_3, 0, 90, 0, 10, 10, 10, 210);       -- ベース暗め　背景
entryFade( spep_3+80, 5, 5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_4 = spep_3+90 --100+70+40
------------------------------------------------------
-- 斬りかかり(40F)
------------------------------------------------------
ef4 = entryEffect( spep_4, SP_07, 0x80, -1,  0,  0,  0);
setEffMoveKey(  spep_4,  ef4,  0,  0,   0);
setEffScaleKey( spep_4, ef4, 1.0, 1.0);
setEffRotateKey(spep_4, ef4, 0);
setEffAlphaKey( spep_4, ef4, 255);

setDisp( spep_4, 1, 1);                                  --敵
changeAnime( spep_4, 1, 102);
setScaleKey( spep_4,   1, 3, 3);
setScaleKey( spep_4+10,   1, 2.8, 2.8);
setMoveKey(  spep_4,   1,  250, -300,   0);
setMoveKey(  spep_4+38,   1,  250, -290,   0);
setDisp( spep_4+39, 1, 0);

shuchusen4 = entryEffectLife( spep_4+19, 906, 20, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_4, shuchusen4, 1.5, 1.5);
setEffAlphaKey( spep_4, shuchusen4, 255);

playSe( spep_4, SE_19);

entryFadeBg( spep_4, 0, 40, 0, 10, 10, 10, 210);       -- ベース暗め　背景
setMoveKey(   spep_4,   0,    0, 0,   0);

entryFade( spep_4+30, 5, 5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_5=spep_4+40; --100+70+40+90

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setMoveKey(   spep_5,   0,    0, 0,   0);
--setEffMoveKey(  spep_5,  ef,  0,  0,   0);
setEffMoveKey(  spep_5,  ef4,  0,  0,   0);

playSe( spep_5, SE_05);
speff = entryEffect(  spep_5,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え



-- ** エフェクト等 ** --
--playSe( spep_5, SE_04);

entryFade( spep_5+83, 5, 5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_6=spep_5+90; --100+70+40+90+40

------------------------------------------------------
-- 斬撃(120)
------------------------------------------------------

ef5 = entryEffect( spep_6, SP_09, 0x100, -1,  0,  0,  0);
setEffMoveKey(  spep_6,  ef5,  0,  0,   0);
setEffScaleKey( spep_6, ef5, 1.0, 1.0);
setEffRotateKey(spep_6, ef5, 0);
setEffAlphaKey( spep_6, ef5, 255);


-- ** エフェクト等 ** --
entryFadeBg( spep_6, 0, 120, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- 書き文字エントリー
ct4 = entryEffectLife( spep_6, 10010, 20, 0x100, -1, 0, 20, 180);    -- ザンッ
setEffShake(spep_6, ct4, 71, 8);
setEffScaleKey(spep_6, ct4, 2.8, 2.8);
setEffRotateKey(spep_6, ct4, 40);
entryFade( spep_6, 1,  5, 5, fcolor_r, fcolor_g, fcolor_b, 200);     -- white fade

ct5 = entryEffectLife( spep_6+40, 10009, 9, 0x100, -1, 0, 0, 400);    -- ザザザンッ
setEffShake(spep_6+40, ct5, 71, 8);
setEffScaleKey(spep_6+40, ct5, 1.9, 1.9);
setEffRotateKey(spep_6+40, ct5, -10);
entryFade( spep_6+40, 1,  3, 5, fcolor_r, fcolor_g, fcolor_b, 130);     -- white fade

ct6 = entryEffectLife( spep_6+50, 10009, 4, 0x100, -1, 0, 0, -110);    -- ザザザンッ
setEffShake(spep_6+50, ct6, 71, 8);
setEffScaleKey(spep_6+50, ct6, 1.9, 1.9);
setEffRotateKey(spep_6+50, ct6, 30);
entryFade( spep_6+50, 1,  1, 2, fcolor_r, fcolor_g, fcolor_b, 130);     -- white fade

ct7 = entryEffectLife( spep_6+55, 10009, 10, 0x100, -1, 0, 80, 290);    -- ザザザンッ
setEffShake(spep_6+55, ct7, 71, 8);
setEffScaleKey(spep_6+55, ct7, 1.9, 1.9);
setEffRotateKey(spep_6+55, ct7, -10);
entryFade( spep_6+55, 1,  2, 2, fcolor_r, fcolor_g, fcolor_b, 130);     -- white fade

ct8 = entryEffectLife( spep_6+65, 10010, 25, 0x100, -1, 0, 0, 0);    -- ザンッ
setEffShake(spep_6+65, ct8, 71, 8);
setEffScaleKey(spep_6+65, ct8, 2.5, 2.5);
setEffRotateKey(spep_6+65, ct8, -20);

playSe( spep_6, SE_21);

playSe( spep_6+50, SE_21);
playSe( spep_6+55, SE_21);
playSe( spep_6+57, SE_21);
playSe( spep_6+60, SE_21);
--playSe( spep_6+62, SE_21);
playSe( spep_6+65, SE_21);


entryFade( spep_6+88, 5,  10, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_7=spep_6+105; --100+70+40+90+40+90


------------------------------------------------------
-- 光弾(80F)
------------------------------------------------------
ef6 = entryEffect( spep_7, SP_10, 0x100, -1,  0,  0,  0);
setEffMoveKey(  spep_7,  ef6,  0,  0,   0);
setEffScaleKey( spep_7, ef6, 1.0, 1.0);
setEffRotateKey(spep_7, ef6, 0);
setEffAlphaKey( spep_7, ef6, 255);


setDisp( spep_7, 1, 1);                                  --敵
changeAnime( spep_7, 1, 106);
setScaleKey( spep_7,   1, 1.2, 1.2);
setScaleKey( spep_7+20,   1, 1.2, 1.2);
setScaleKey( spep_7+25,   1, 0.9, 0.9);
setScaleKey( spep_7+45,   1, 0.9, 0.9);
setMoveKey(  spep_7,   1,  -350, 60,   0);
setMoveKey(  spep_7+9,   1,  190, 0,   0);
setDisp( spep_7+60, 1, 0);

playSe( spep_7+30, 1024);

shuchusen5 = entryEffectLife( spep_7, 906, 80, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_7, shuchusen5, 1.5, 1.5);
setEffAlphaKey( spep_7, shuchusen5, 255);

shuchusen55 = entryEffectLife( spep_7, 921, 80, 0x80,  -1, 0,  0,  0);   -- 流線
setEffScaleKey( spep_7, shuchusen55, 1.5, 1.5);
setEffAlphaKey( spep_7, shuchusen55, 255);

ct9 = entryEffectLife( spep_7+30, 10012, 49, 0x100, -1, 0, 110, 380);    -- ズオッ
setEffShake(spep_7+30, ct9, 71, 8);
setEffScaleKey(spep_7+30, ct9, 2.5, 2.5);
setEffRotateKey(spep_7+30, ct9, 20);

entryFadeBg( spep_7, 0, 80, 0, 0, 0, 0, 255);       -- ベース暗め　背景

entryFade( spep_7+71, 5,  5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_8=spep_7+80; --100+70+40+90+40+90+120

------------------------------------------------------
-- ギャン(60F)
------------------------------------------------------

playSe( spep_8, SE_09);


-- ** エフェクト等 ** --
setShakeChara( spep_8, 1, 99, 20);

entryFadeBg( spep_8, 0, 250, 0, 10, 10, 10, 150);       -- ベース暗め　背景

--entryFade( spep_8, 5,  5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


-- 書き文字エントリー
gyan = entryEffect( spep_8, SP_12,   0x80, -1,  0,  0,  0);   -- ギャン

ctGyan = entryEffectLife( spep_8, 10006, 70, 0x100, -1, 0, 0, 300); -- ギャン
setEffShake(spep_8, ctGyan, 99, 20);
setEffScaleKey( spep_8, ctGyan, 2.8, 2.8);
--setEffScaleKey( spep_6+10, ctGyan, 2.4, 2.4);
setEffScaleKey( spep_8+64, ctGyan, 4, 4);
setEffAlphaKey(spep_8, ctGyan, 255);
setEffAlphaKey(spep_8+10, ctGyan, 255);
setEffAlphaKey(spep_8+64, ctGyan, 0);

entryFade( spep_8+52, 6,  5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


removeAllEffect(spep_8+54);

spep_9=spep_8+60; --100+70+40+90+40+90+120+80

------------------------------------------------------
-- 回避
------------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge = 330; --エンドフェイズのフレーム数を置き換える


playSe( SP_dodge, 1042);

speff = entryEffectUnpausable(  SP_dodge,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setMoveKey( SP_dodge+6,   0,   0, -54,   0);
setMoveKey( SP_dodge+7,   0,   3000, 0,   0);

endPhase(SP_dodge+10);

do return end
else end

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
--entryFadeBg( spep_9, 0, 110, 0, 10, 10, 10, 210);       -- ベース暗め　背景

bakuhatu = entryEffect( spep_9, SP_13,   0,  -1,  0,  0,  0);  

shuchusen9 = entryEffectLife( spep_9+43, 906, 136, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_9+45, shuchusen9, 1.5, 1.5);
setEffAlphaKey( spep_9+45, shuchusen9, 255);


setDisp( spep_9, 1, 0);

playSe( spep_9+4, SE_10);

-- ダメージ表示
dealDamage(spep_9+17);

entryFade( spep_9+174, 5,  15, 1, 8, 8, 8, 255);             -- black fade
setEffAlphaKey( spep_9+179, shuchusen9, 255);
setEffAlphaKey( spep_9+180, shuchusen9, 0);

endPhase(spep_9+174);

else






------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 気溜め(120F)
------------------------------------------------------
setVisibleUI(0, 0);
setMoveKey(   0,  0,  0,  0,  0);

--playSe( 25, SE_01);  

ef = entryEffectLife( 0, SP_01e,  110, 0x100, -1,  0,  0,  0);
setEffMoveKey(  0,  ef,  0,  0,   0);
setEffScaleKey( 0, ef, 1.0, 1.0);
setEffRotateKey(0, ef, 0);
setEffAlphaKey( 0, ef, 255);

--setDisp( 0, 1, 0);
--speff = entryEffect(  25,   1504,   0x100,     -1,  0,  0,  0);   -- eff_005 (カットイン) 117で終了
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  25,   1505,   0x100,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
speff = entryEffectLife( 0, 1503, 110, 0x80,  -1, 0,  0,  0);   -- 背景

playSe( 0, SE_05);


shuchusen = entryEffectLife( 0, 906, 159, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 0, shuchusen, 1.5, 1.5);

ct = entryEffectLife( 34, 190006, 70, 0x100, -1, 0, -40, 410);    -- ゴゴゴ・・・
setEffShake(13, ct, 71, 8);
setEffScaleKey(13, ct, -0.7, 0.7);

entryFade( 108, 5, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryFadeBg( 0, 0, 120, 0, 10, 10, 10, 210);       -- ベース暗め　背景
spep_1 = 120;

------------------------------------------------------
-- 突進(70F)
------------------------------------------------------

ef1 = entryEffect( spep_1, SP_02, 0x100, -1,  0,  0,  0);
setEffMoveKey(  spep_1,  ef1,  0,  0,   0);
setEffScaleKey( spep_1, ef1, -1.0, 1.0);
setEffRotateKey(spep_1, ef1, 0);
setEffAlphaKey( spep_1, ef1, 255);

-- ** エフェクト等 ** --
playSe( spep_1, SE_19);

shuchusen1 = entryEffectLife( spep_1, 906, 65, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_1, shuchusen1, 1.5, 1.5);
setEffAlphaKey( spep_1, shuchusen1, 255);

ct1 = entryEffectLife( spep_1+5, 10012, 63, 0x100, -1, 0, 0, -210);    -- ズオッ
setEffShake(spep_1+13, ct1, 70, 10);
setEffScaleKey(spep_1+13, ct1, 2.5, 2.5);

entryFade( spep_1+65, 3, 3, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryFadeBg( spep_1, 0, 70, 0, 10, 10, 10, 210);       -- ベース暗め　背景

spep_2=spep_1+70; --120


------------------------------------------------------
-- 横移動～消え(40F)
------------------------------------------------------
setMoveKey(  spep_2+0,   1,   500, 15,   0);

ef2 = entryEffect( spep_2, SP_04, 0x100, -1,  0,  -20,  0);
setEffMoveKey(  spep_2,  ef2,  0,  0,   0);
setEffScaleKey( spep_2, ef2, 0.9, 0.9);
setEffRotateKey(spep_2, ef2, 0);
setEffAlphaKey( spep_2, ef2, 255);


setDisp( spep_2, 1, 1);                                  --敵
changeAnime( spep_2, 1, 104);
setMoveKey(  spep_2+10,   1,   500, 15,   0);
setMoveKey(  spep_2+20,   1,  195, 15,   0);
setMoveKey(  spep_2+39,   1,  150, 15,   0);
setScaleKey( spep_2,   1, 1.0, 1.0);
setScaleKey( spep_2+20,   1, 1.0, 1.0);
setScaleKey( spep_2+39,   1, 1.0, 1.0);
setDisp( spep_2+39, 1, 0);


playSe( spep_2, SE_19);
playSe( spep_2+23, SE_20);


ryuusenndayoune = entryEffectLife( spep_2, 914, 39, 0x80,  -1, 0,  0,  0);   -- 流線
setEffScaleKey( spep_2, ryuusenndayoune, 1.5, 1.5);
setEffAlphaKey( spep_2, ryuusenndayoune, 255);

shuchusen2 = entryEffectLife( spep_2+23, 906, 16, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_2+23, shuchusen2, 1.5, 1.5);
setEffAlphaKey( spep_2+23, shuchusen2, 255);

ct2 = entryEffectLife( spep_2+25, 10001, 10, 0x100, -1, 0, 20, 250);    -- !?
setEffShake(spep_2+25, ct2, 3, 8);
setEffScaleKey(spep_2+25, ct2, 3.5, 3.5);

entryFade( spep_2+35, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryFadeBg( spep_2, 0, 40, 0, 10, 10, 10, 210);       -- ベース暗め　背景

spep_3 = spep_2+40 --100+70
--setEffMoveKey(  spep_3,  ryuusenn,  0,  0,   0);


------------------------------------------------------
-- 飛び上がりフレア(90F)
------------------------------------------------------
ef3 = entryEffectLife( spep_3+16, SP_06, 68, 0x100, -1,  0,  0,  40);
setEffScaleKey( spep_3+16, ef3, 1.0, 1.0);
setEffRotateKey(spep_3+16, ef3, 0);
setEffAlphaKey( spep_3+16, ef3, 255);
setEffMoveKey(  spep_3+17, ef3,  0,  40,   0);

playSe( spep_3+36, 1062);

--shuchusen3 = entryEffectLife( spep_3, 906, 85, 0x80,  -1, 0,  -200,  300);   -- 集中線
--setEffScaleKey( spep_3, shuchusen3, 1.5, 1.5);
--setEffAlphaKey( spep_3, shuchusen3, 255);

shuchusen33 = entryEffectLife( spep_3, 924, 108, 0x80,  -1, 0,  0,  -300);   -- 奥行き線
setEffScaleKey( spep_3, shuchusen33, 1.5, 1.5);
setEffAlphaKey( spep_3, shuchusen33, 255);
setEffRotateKey(spep_3, shuchusen33, -100);

setDisp( spep_3, 1, 1);                                  --敵
changeAnime( spep_3, 1, 102);
setScaleKey( spep_3,   1, 2, 2);
setScaleKey( spep_3+19,   1, 2, 2);
--setMoveKey(  spep_3,   1,   230, 15,   0);
setMoveKey(  spep_3,   1,  250, -200,   0);
setMoveKey(  spep_3+15,   1,  700, -800,   0);
setDisp( spep_3+20, 1, 0);

--setScaleKey( spep_3+20,   1, 4.5, 4.5);


ct3 = entryEffectLife( spep_3+36, 10004, 53, 0x100, -1, 0, 200, 400);    -- カッ
setEffShake(spep_3+10, ct3, 71, 8);
setEffScaleKey(spep_3+10, ct3, 1.7, 1.7);
setEffRotateKey(spep_3+10, ct3, 20);

entryFadeBg( spep_3, 0, 90, 0, 10, 10, 10, 210);       -- ベース暗め　背景
entryFade( spep_3+80, 5, 5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_4 = spep_3+90 --100+70+40
setEffMoveKey(  spep_4, ef3,  0,  40,   0);

------------------------------------------------------
-- 斬りかかり(40F)
------------------------------------------------------
ef4 = entryEffect( spep_4, SP_08, 0x80, -1,  0,  0,  0);
setEffMoveKey(  spep_4,  ef4,  0,  0,   0);
setEffScaleKey( spep_4, ef4, 1.0, 1.0);
setEffRotateKey(spep_4, ef4, 0);
setEffAlphaKey( spep_4, ef4, 255);

setDisp( spep_4, 1, 1);                                  --敵
changeAnime( spep_4, 1, 102);
setScaleKey( spep_4,   1, 3, 3);
setScaleKey( spep_4+10,   1, 2.8, 2.8);
setMoveKey(  spep_4,   1,  250, -300,   0);
setMoveKey(  spep_4+38,   1,  250, -290,   0);
setDisp( spep_4+39, 1, 0);

shuchusen4 = entryEffectLife( spep_4+19, 906, 20, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_4, shuchusen4, 1.5, 1.5);
setEffAlphaKey( spep_4, shuchusen4, 255);

playSe( spep_4, SE_19);

entryFadeBg( spep_4, 0, 40, 0, 10, 10, 10, 210);       -- ベース暗め　背景
setMoveKey(   spep_4,   0,    0, 0,   0);

entryFade( spep_4+30, 5, 5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_5=spep_4+40; --100+70+40+90

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setMoveKey(   spep_5,   0,    0, 0,   0);
--setEffMoveKey(  spep_5,  ef,  0,  0,   0);
setEffMoveKey(  spep_5,  ef4,  0,  0,   0);

playSe( spep_5, SE_05);
speff = entryEffect(  spep_5,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え



-- ** エフェクト等 ** --
--playSe( spep_5, SE_04);

entryFade( spep_5+83, 5, 5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_6=spep_5+90; --100+70+40+90+40

------------------------------------------------------
-- 斬撃(120)
------------------------------------------------------

ef5 = entryEffect( spep_6, SP_09, 0x100, -1,  0,  0,  0);
setEffMoveKey(  spep_6,  ef5,  0,  0,   0);
setEffScaleKey( spep_6, ef5, 1.0, 1.0);
setEffRotateKey(spep_6, ef5, 0);
setEffAlphaKey( spep_6, ef5, 255);


-- ** エフェクト等 ** --
entryFadeBg( spep_6, 0, 120, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- 書き文字エントリー
ct4 = entryEffectLife( spep_6, 10010, 20, 0x100, -1, 0, 20, 180);    -- ザンッ
setEffShake(spep_6, ct4, 71, 8);
setEffScaleKey(spep_6, ct4, 2.8, 2.8);
setEffRotateKey(spep_6, ct4, 40);

ct5 = entryEffectLife( spep_6+40, 10009, 9, 0x100, -1, 0, 0, 400);    -- ザザザンッ
setEffShake(spep_6+40, ct5, 71, 8);
setEffScaleKey(spep_6+40, ct5, 1.9, 1.9);
setEffRotateKey(spep_6+40, ct5, -10);

ct6 = entryEffectLife( spep_6+50, 10009, 4, 0x100, -1, 0, 0, -110);    -- ザザザンッ
setEffShake(spep_6+50, ct6, 71, 8);
setEffScaleKey(spep_6+50, ct6, 1.9, 1.9);
setEffRotateKey(spep_6+50, ct6, 30);

ct7 = entryEffectLife( spep_6+55, 10009, 10, 0x100, -1, 0, 80, 290);    -- ザザザンッ
setEffShake(spep_6+55, ct7, 71, 8);
setEffScaleKey(spep_6+55, ct7, 1.9, 1.9);
setEffRotateKey(spep_6+55, ct7, -10);

ct8 = entryEffectLife( spep_6+65, 10010, 25, 0x100, -1, 0, 0, 0);    -- ザンッ
setEffShake(spep_6+65, ct8, 71, 8);
setEffScaleKey(spep_6+65, ct8, 2.5, 2.5);
setEffRotateKey(spep_6+65, ct8, -20);

playSe( spep_6, SE_21);

playSe( spep_6+50, SE_21);
playSe( spep_6+55, SE_21);
playSe( spep_6+57, SE_21);
playSe( spep_6+60, SE_21);
--playSe( spep_6+62, SE_21);
playSe( spep_6+65, SE_21);


entryFade( spep_6+88, 5,  10, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_7=spep_6+105; --100+70+40+90+40+90


------------------------------------------------------
-- 光弾(80F)
------------------------------------------------------
ef6 = entryEffect( spep_7, SP_11, 0x100, -1,  0,  0,  0);
setEffMoveKey(  spep_7,  ef6,  0,  0,   0);
setEffScaleKey( spep_7, ef6, 1.0, 1.0);
setEffRotateKey(spep_7, ef6, 0);
setEffAlphaKey( spep_7, ef6, 255);


setDisp( spep_7, 1, 1);                                  --敵
changeAnime( spep_7, 1, 106);
setScaleKey( spep_7,   1, 1.2, 1.2);
setScaleKey( spep_7+20,   1, 1.2, 1.2);
setScaleKey( spep_7+25,   1, 0.9, 0.9);
setScaleKey( spep_7+45,   1, 0.9, 0.9);
setMoveKey(  spep_7,   1,  -350, 60,   0);
setMoveKey(  spep_7+9,   1,  190, 0,   0);
setDisp( spep_7+60, 1, 0);

playSe( spep_7+30, 1024);

shuchusen5 = entryEffectLife( spep_7, 906, 80, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_7, shuchusen5, 1.5, 1.5);
setEffAlphaKey( spep_7, shuchusen5, 255);

shuchusen55 = entryEffectLife( spep_7, 921, 80, 0x80,  -1, 0,  0,  0);   -- 流線
setEffScaleKey( spep_7, shuchusen55, 1.5, 1.5);
setEffAlphaKey( spep_7, shuchusen55, 255);

ct9 = entryEffectLife( spep_7+30, 10012, 49, 0x100, -1, 0, 110, 380);    -- ズオッ
setEffShake(spep_7+30, ct9, 71, 8);
setEffScaleKey(spep_7+30, ct9, 2.5, 2.5);
setEffRotateKey(spep_7+30, ct9, 20);

entryFadeBg( spep_7, 0, 80, 0, 0, 0, 0, 255);       -- ベース暗め　背景

entryFade( spep_7+71, 5,  5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_8=spep_7+80; --100+70+40+90+40+90+120

------------------------------------------------------
-- ギャン(60F)
------------------------------------------------------

playSe( spep_8, SE_09);


-- ** エフェクト等 ** --
setShakeChara( spep_8, 1, 99, 20);

entryFadeBg( spep_8, 0, 250, 0, 10, 10, 10, 150);       -- ベース暗め　背景

--entryFade( spep_8, 5,  5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


-- 書き文字エントリー
gyan = entryEffect( spep_8, SP_12,   0x80, -1,  0,  0,  0);   -- ギャン

ctGyan = entryEffectLife( spep_8, 10006, 70, 0x100, -1, 0, 0, 300); -- ギャン
setEffShake(spep_8, ctGyan, 99, 20);
setEffScaleKey( spep_8, ctGyan, 2.8, 2.8);
--setEffScaleKey( spep_6+10, ctGyan, 2.4, 2.4);
setEffScaleKey( spep_8+64, ctGyan, 4, 4);
setEffAlphaKey(spep_8, ctGyan, 255);
setEffAlphaKey(spep_8+10, ctGyan, 255);
setEffAlphaKey(spep_8+64, ctGyan, 0);

entryFade( spep_8+52, 6,  5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


removeAllEffect(spep_8+54);

spep_9=spep_8+60; --100+70+40+90+40+90+120+80

------------------------------------------------------
-- 回避
------------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge = 330; --エンドフェイズのフレーム数を置き換える


playSe( SP_dodge, 1042);

speff = entryEffectUnpausable(  SP_dodge,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setMoveKey( SP_dodge+6,   0,   0, -54,   0);
setMoveKey( SP_dodge+7,   0,   3000, 0,   0);

endPhase(SP_dodge+10);

do return end
else end

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
--entryFadeBg( spep_9, 0, 110, 0, 10, 10, 10, 210);       -- ベース暗め　背景

bakuhatu = entryEffect( spep_9, SP_13,   0,  -1,  0,  0,  0);  

shuchusen9 = entryEffectLife( spep_9+43, 906, 136, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_9+45, shuchusen9, 1.5, 1.5);
setEffAlphaKey( spep_9+45, shuchusen9, 255);


setDisp( spep_9, 1, 0);

playSe( spep_9+4, SE_10);

-- ダメージ表示
dealDamage(spep_9+17);

entryFade( spep_9+174, 5,  15, 1, 8, 8, 8, 255);             -- black fade
setEffAlphaKey( spep_9+179, shuchusen9, 255);
setEffAlphaKey( spep_9+180, shuchusen9, 0);

endPhase(spep_9+174);

end