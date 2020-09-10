--sp1162 ディスポ ジャスティスキック

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
SE_08 = 1042; --カットイン
SE_09 = 1023; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音
SE_12 = 09;

--味方側
SP_01 = 151519;--加速移動170F
SP_02 = 151520;--連撃180F
SP_03 = 151521;--ピンボール120F
SP_04 = 151522;--キック100F

--敵側
SP_01x = 151523;--加速移動170F
SP_02x = 151524;--連撃180F
SP_03x = 151525;--ピンボール120F
SP_04x = 151526;--キック100F

multi_frm = 2;

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
setVisibleUI(0, 0);
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);
changeAnime( 0, 0, 1);                       -- 立ち
changeAnime( 0, 1, 101);                       -- 立ち

setMoveKey(   0,   0,    0, -900,   0);
setMoveKey(   1,   0,    0, -900,   0);
setMoveKey(   2,   0,    0, -900,   0);
setMoveKey(   3,   0,    0, -900,   0);
setMoveKey(   4,   0,    0, -900,   0);
setMoveKey(   5,   0,    0, -900,   0);
setMoveKey(   0,   1,    0, 0,   0);
setMoveKey(   1,   1,    0, 0,   0);
setMoveKey(   2,   1,    0, 0,   0);
setMoveKey(   3,   1,    0, 0,   0);
setMoveKey(   4,   1,    0, 0,   0);
setMoveKey(   5,   1,    0, 0,   0);
setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   1,   0, 1.5, 1.5);
setScaleKey(   2,   0, 1.5, 1.5);
setScaleKey(   3,   0, 1.5, 1.5);
setScaleKey(   4,   0, 1.5, 1.5);
setScaleKey(   5,   0, 1.5, 1.5);
setScaleKey(   0,   1, 1.5, 1.5);
setScaleKey(   1,   1, 1.5, 1.5);
setScaleKey(   2,   1, 1.5, 1.5);
setScaleKey(   3,   1, 1.5, 1.5);
setScaleKey(   4,   1, 1.5, 1.5);
setScaleKey(   5,   1, 1.5, 1.5);
------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 加速移動(170F)
------------------------------------------------------

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

spep_1=0;

-- ** 背景 ** --
entryFadeBg( spep_1, 0, 70, 0, 0, 0, 0, 210);  -- 黒うすめ　背景
entryFadeBg( spep_1+40, 30, 0, 0, fcolor_r, fcolor_g, fcolor_b, 160);  -- 白うすめ　背景
entryFadeBg( spep_1+70, 0, 100, 0, 0, 0, 0, 255);  -- 黒　背景

-- ** 途中のフェード ** --
entryFade( spep_1+60, 10, 0, 0, fcolor_r, fcolor_g, fcolor_b, 200);     -- white fade

-- ** 流線 ** --
yokosen = entryEffectLife(spep_1, 914, 170, 0x80,  -1, 0,  0,  0);   -- 流線

setEffScaleKey(spep_1, yokosen, 1.4, 1.4);
setEffScaleKey(spep_1+170, yokosen, 1.4, 1.4);
setEffAlphaKey(spep_1,yokosen,255);
setEffAlphaKey(spep_1+170,yokosen,255);
setEffAlphaKey(spep_1+171,yokosen,0);
setEffRotateKey(spep_1, yokosen, 0);
setEffRotateKey(spep_1+170, yokosen, 0);

-- ** エフェクト等 ** --
kasoku=entryEffectLife(spep_1,SP_01,170,0x100,-1,0,0,0);

setEffMoveKey(spep_1,kasoku,0,0,0);
setEffMoveKey(spep_1+170,kasoku,0,0,0);
setEffScaleKey(spep_1,kasoku,1.0,1.0);
setEffScaleKey(spep_1+170,kasoku,1.0,1.0);
setEffAlphaKey(spep_1,kasoku,255);
setEffAlphaKey(spep_1+170,kasoku,255);
setEffAlphaKey(spep_1+171,kasoku,0);
setEffRotateKey(spep_1,kasoku,0);
setEffRotateKey(spep_1+170,kasoku,0);

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_1, 906, 170, 0x100,  -1, 0,  0,  0); -- 集中線
setEffMoveKey( spep_1, shuchusen1, 0, 0, 0);
setEffScaleKey( spep_1, shuchusen1, 1.8, 1.8);
setEffScaleKey( spep_1+69, shuchusen1, 1.8, 1.8);
setEffScaleKey( spep_1+70, shuchusen1, 1.3, 1.3);
setEffScaleKey( spep_1+170, shuchusen1, 1.3, 1.3);
setEffAlphaKey( spep_1, shuchusen1, 255);
setEffRotateKey( spep_1, shuchusen1, 0);

-- ** SE等 ** --
playSe( spep_1+10, 8);
playSe( spep_1+60, 9);

------------------------------------------------------
-- 連撃(180F)
------------------------------------------------------
-- ** 次の準備 ** --
spep_2=spep_1+170;
entryFade( spep_2-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 背景 ** --
entryFadeBg( spep_2, 0, 180, 0, 0, 0, 0, 255);  -- 黒　背景

-- ** エフェクト等 ** --
rengeki = entryEffect( spep_2, SP_02, 0, -1, 0, 0, 0);   --迫る〜命中　50f
setEffScaleKey( spep_2, rengeki, 1, 1);
setEffMoveKey( spep_2, rengeki, 0, 0, 0);
setEffAlphaKey( spep_2, rengeki, 255);
setEffAlphaKey( spep_2+180, rengeki, 255);
setEffAlphaKey( spep_2+181, rengeki, 0);

-- ** 流線 ** --
yokosen2 = entryEffectLife(spep_2, 914, 130, 0x80,  -1, 0,  0,  0);   -- 流線

setEffScaleKey(spep_2, yokosen, 1.4, 1.4);
setEffScaleKey(spep_2+130, yokosen, 1.4, 1.4);
setEffAlphaKey(spep_2,yokosen,255);
setEffAlphaKey(spep_2+130,yokosen,255);
setEffAlphaKey(spep_2+131,yokosen,0);
setEffRotateKey(spep_2, yokosen, 0);
setEffRotateKey(spep_2+130, yokosen, 0);

-- ** 斜め線 ** --
nanamesen2 = entryEffectLife(spep_2+131, 921, 50, 0x80,  -1, 0,  0,  0);   -- 流線

setEffScaleKey(spep_2+131, nanamesen2, 1.7, 1.3);
setEffScaleKey(spep_2+180, nanamesen2, 1.7, 1.3);
setEffAlphaKey(spep_2+131,nanamesen2,255);
setEffAlphaKey(spep_2+180,nanamesen2,255);
setEffAlphaKey(spep_2+181,nanamesen2,0);
setEffRotateKey(spep_2+131, nanamesen2, -50);
setEffRotateKey(spep_2+180, nanamesen2, -50);


-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_2, 906, 180, 0x100,  -1, 0,  0,  0); -- 集中線
setEffMoveKey( spep_2, shuchusen2, 0, 0, 0);
setEffScaleKey( spep_2, shuchusen2, 1.8, 1.8);
setEffAlphaKey( spep_2, shuchusen2, 255);
setEffRotateKey( spep_2, shuchusen2, 0);


-- ** 敵の動き ** --
setDisp(spep_2, 1, 1);
setShakeChara(spep_2, 1, 25, 10);
changeAnime(spep_2, 1, 101); --横待機 
setMoveKey(spep_2, 1, -600, 30, 0);
setMoveKey( spep_2+10,  1,  -100,  30, 0);
setMoveKey(  spep_2+25,  1,  0,  30, 0);



setShakeChara(spep_2+31, 1, 52, 15 );

setMoveKey(  spep_2+31,  1,  30,  40, 0);
--setMoveKey(  spep_2+70,  1,  100,  0, 0);
setMoveKey(  spep_2+63,  1,  60,  48, 0);

setRotateKey(  spep_2,  1,  0);
setRotateKey(  spep_2+82,  1,  0);

setMoveKey(  spep_2+80,  1,   70,  70, 0);
setRotateKey(  spep_2+83,  1,  -30);
setMoveKey(  spep_2+83,  1,   70,  70, 0);
setMoveKey(  spep_2+84,  1,   70,  90, 0);
setRotateKey(  spep_2+84,  1,  -50);
changeAnime( spep_2+84, 1, 106);  --あおむけ
setShakeChara(spep_2+84, 1, 44, 10);

setMoveKey(  spep_2+90,  1,   70,  120, 0);

setMoveKey(spep_2+110, 1, 70, 150, 0);
setRotateKey(spep_2+126, 1, -40);

setMoveKey(spep_2+126, 1, 70, 200, 0);

changeAnime(spep_2+127, 1, 108);--くの字
setShakeChara(spep_2+127, 1, 34, 20);

setRotateKey(spep_2+127,1,-30);
setMoveKey(spep_2+127,1,70,200,0);
--setMoveKey(spep_2+135,1,70,200,0);
setMoveKey(spep_2+150,1,70,200,0);
setShakeChara(spep_2+150, 1, 30, 10);

setMoveKey(spep_2+150,1,200,300,0);
setMoveKey(spep_2+178,1,300,400,0);

setScaleKey(spep_2,1,1.3,1.3);
setScaleKey(spep_2+150,1,1.3,1.3);
setScaleKey(spep_2+178,1,0,0);
setDisp(spep_2+179,1,0);--敵消す

-- 書き文字エントリー
ctDokgaga = entryEffectLife( spep_2+25, 10017, 85, 0, -1, 0, 0, 0); -- ドガガガッ
setEffRotateKey(spep_2+25, ctDokgaga, 20);
setEffShake(spep_2+25, ctDokgaga, 96, 15);
setEffAlphaKey(spep_2+25, ctDokgaga, 255);
setEffAlphaKey(spep_2+100, ctDokgaga, 255);
setEffAlphaKey(spep_2+110, ctDokgaga, 0);
setEffScaleKey(spep_2+24, ctDokgaga, 1.8, 1.8);
setEffScaleKey(spep_2+30, ctDokgaga, 2.5, 2.5);
setEffScaleKey(spep_2+110, ctDokgaga, 2.5, 2.5);
setEffMoveKey( spep_2+25, ctDokgaga,  0,  350,  0);
setEffMoveKey( spep_2+110, ctDokgaga,  0,  350,  0);

-- 書き文字エントリー
ctBaki = entryEffectLife(spep_2+127, 10020, 43, 0x100, -1, 0, -100, 350); -- バキ

setEffShake( spep_2+127, ctBaki, 30, 15);

setEffAlphaKey( spep_2+127, ctBaki, 255); --小さいななめ
setEffScaleKey( spep_2+127, ctBaki, 1.4, 1.4);
setEffRotateKey( spep_2+127, ctBaki, -10);

setEffScaleKey( spep_2+129, ctBaki, 1.4, 1.4);
setEffRotateKey( spep_2+129, ctBaki, -10);

setEffScaleKey( spep_2+130, ctBaki, 2, 2);--大きいよこ
setEffRotateKey( spep_2+130, ctBaki, 10);

setEffScaleKey( spep_2+134, ctBaki, 2, 2);
setEffRotateKey( spep_2+134, ctBaki, 10);

setEffScaleKey( spep_2+135, ctBaki, 1.6, 1.6);--小さいななめ
setEffRotateKey( spep_2+135, ctBaki, -10);

setEffScaleKey( spep_2+139, ctBaki, 1.6, 1.6);--小さいななめ
setEffRotateKey( spep_2+139, ctBaki, -10);

setEffScaleKey( spep_2+140, ctBaki, 1.6, 1.6);--小さいよこ
setEffRotateKey( spep_2+140, ctBaki, 10);

setEffScaleKey( spep_2+141, ctBaki, 1.6, 1.6);--小さいよこ
setEffRotateKey( spep_2+141, ctBaki, 10);

setEffScaleKey( spep_2+142, ctBaki, 1.4, 1.4);--小さい小さいよこ
setEffRotateKey( spep_2+142, ctBaki, 0);
setEffScaleKey( spep_2+143, ctBaki, 2, 2);--小さい小さいよこ
setEffScaleKey( spep_2+150, ctBaki, 2, 2);--小さい小さいよこ
setEffAlphaKey( spep_2+150, ctBaki, 255);

setEffScaleKey( spep_2+170, ctBaki, 3, 3);--小さい小さいよこ
setEffRotateKey( spep_2+170, ctBaki, 0);
setEffAlphaKey( spep_2+170, ctBaki, 0);

entryFade( spep_2+22, 2, 3, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_2+124, 2, 3, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 184; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey( SP_dodge+8, 0,    0, 0,   0);
setMoveKey( SP_dodge+9, 0,  -2500,  -250,   0);
setMoveKey(   SP_dodge+10,   0,    -2500, -250,   0);

endPhase(SP_dodge+10);
do return end
else end

changeAnime( spep_2+25, 1, 108);   --くの字

-- ** SE等 ** --
playSe( spep_2+25, 1009);
playSe( spep_2+35, 1010);
playSe( spep_2+45, 1009);
playSe( spep_2+55, 1010);
playSe( spep_2+65, 1009);
playSe( spep_2+75, 1010);
playSe( spep_2+84, 1009);
playSe( spep_2+127, 1011);

------------------------------------------------------
-- ピンボール(120F)　
------------------------------------------------------

-- ** 次の準備 ** --
spep_3 = spep_2+180;
entryFade( spep_3-6, 3, 5, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 背景 ** --
entryFadeBg( spep_3, 0, 120, 0, 0, 0, 0, 210); -- ベース暗め　背景

-- ** エフェクト等 ** --
pinboll = entryEffect( spep_3, SP_03, 0x100, -1, 0, 0, 0);   --発射　50f
setEffMoveKey( spep_3, pinboll, 0, 0, 0);
setEffScaleKey( spep_3, pinboll, 1, 1);
setEffAlphaKey( spep_3, pinboll, 255);
setEffAlphaKey( spep_3+120, pinboll, 255);
setEffAlphaKey( spep_3+121, pinboll, 0);

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_3, 906, 120, 0x100,  -1, 0,  0,  0); -- 集中線
setEffMoveKey( spep_3, shuchusen3, 0, 0, 0);
setEffScaleKey( spep_3, shuchusen3, 1.4, 1.4);
setEffAlphaKey( spep_3, shuchusen3, 255);
setEffRotateKey( spep_3, shuchusen3, 0);


-- ** 敵の動き ** --


setDisp( spep_3, 1, 1);
changeAnime( spep_3, 1, 108);--一撃目　くの字   
setMoveKey(  spep_3,  1,  -400,  50, 0);
setRotateKey(  spep_3,  1,  -30);
setRotateKey(  spep_3+9,  1,  -30);
setScaleKey( spep_3,    1,  1.5, 1.5);
setScaleKey( spep_3+9,    1,  0.5, 0.5);

changeAnime( spep_3+10, 1, 107);--二撃目　てまえダメージ   
setMoveKey(  spep_3+10,  1,  -220,  335, 0);
setRotateKey(  spep_3+10,  1,  0);
setRotateKey(  spep_3+25,  1,  0);
setScaleKey( spep_3+10,    1,  0.3, 0.3);
setScaleKey( spep_3+25,    1,  2, 2);


changeAnime( spep_3+26, 1, 8);--三撃目　くの字(味方)   
setMoveKey(  spep_3+26,  1,  400,  -390, 0);
setScaleKey( spep_3+26,    1,  3, 3);
setRotateKey(  spep_3+26,  1,  10);
setScaleKey( spep_3+39,    1,  1.5, 1.5);
setRotateKey(  spep_3+39,  1,  10);


changeAnime( spep_3+40, 1, 106);--四撃目　あおむけ   
setMoveKey(  spep_3+40,  1,  -430,  -60, 0);
setScaleKey( spep_3+40,    1,  1, 1);
setRotateKey(  spep_3+40,  1,  -40);
setScaleKey( spep_3+51,    1,  0.3, 0.3);
setRotateKey(  spep_3+52,  1,  -40);


changeAnime( spep_3+52, 1, 108);--五撃目　くの字    
setMoveKey(  spep_3+52,  1,  -210,  330, 0);
setScaleKey( spep_3+52,    1,  0.3, 0.3);
setRotateKey(  spep_3+61,  1,  -40);
setScaleKey( spep_3+61,    1,  0.1, 0.1);
setRotateKey(  spep_3+61,  1,  -40);

changeAnime( spep_3+62, 1, 7);--六撃目　あおむけ 味方   
setMoveKey(  spep_3+62,  1,  290,  90, 0);
setScaleKey( spep_3+62,    1,  0.2, 0.2);
setRotateKey(  spep_3+62,  1,  -10);

setScaleKey( spep_3+70,    1,  2.5, 2.5);
setRotateKey(  spep_3+90,  1,  -10);

setMoveKey(  spep_3+70,  1,  -600,  -600, 0);
setMoveKey(  spep_3+80,  1,  -1000,  -1000, 0);
setMoveKey(  spep_3+86,  1,  -2000,  -2000, 0);

setDisp( spep_3+86, 1, 0);


-- カットイン --

speff = entryEffect(  spep_3+34,   1504,   0,   -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_3+34,   1505,   0,   -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー --
ctgogo = entryEffectLife( spep_3+40, 190006, 70, 0x100, -1,  0, 0, 500);    -- ゴゴゴゴ
setEffShake(spep_3+40, ctgogo, 70, 10);
setEffScaleKey(spep_3+40, ctgogo, 0.8, 0.8);
setEffRotateKey(spep_3+40, ctgogo, 0);
setEffAlphaKey( spep_3+40, ctgogo, 255);

-- ** 音 ** --
playSe( spep_3+34, SE_04);

--playSe( spep_3, 1025);
playSe( spep_3+10, 1025);
playSe( spep_3+26, 1025);
playSe( spep_3+40, 1025);
playSe( spep_3+52, 1025);
playSe( spep_3+62, 1025);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
spep_4=spep_3+120;

-- ** 次の準備 ** --
entryFade( spep_4-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- カードカットイン
speff = entryEffect( spep_4, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_4, 906, 90, 0x100,  -1, 0,  0,  0); -- 集中線5
setEffMoveKey( spep_4, shuchusen4, 0, 0, 0);
setEffScaleKey( spep_4, shuchusen4, 1.8, 1.8);
setEffAlphaKey( spep_4, shuchusen4, 255);
setEffRotateKey( spep_4, shuchusen4, 0);

-- ** 音 ** --
playSe( spep_4+5, SE_05);

------------------------------------------------------
-- キック(100F)　
------------------------------------------------------
-- ** 次の準備 ** --
spep_5=spep_4+90;
entryFade( spep_5-6, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 背景 ** --
entryFadeBg( spep_5, 0, 100, 0, 0, 0, 0, 255); -- ベース暗め　背景

-- ** SE等 ** --
--playSe( spep_5+8, 4);--瞬間移動
--playSe( spep_5+20, 1001);--1004

-- ** 流線 ** --
yokosen5 = entryEffectLife(spep_5, 914, 100, 0x80,  -1, 0,  0,  0);   -- 流線

setEffScaleKey(spep_5, yokosen5, 1.6, 1.4);
setEffScaleKey(spep_5+100, yokosen5, 1.6, 1.4);
setEffAlphaKey(spep_5,yokosen5,255);
setEffAlphaKey(spep_5+100,yokosen5,255);
setEffAlphaKey(spep_5+101,yokosen5,0);
setEffRotateKey(spep_5, yokosen5, -30);
setEffRotateKey(spep_5+100, yokosen5, -30);

-- ** エフェクト等 ** --
kikku=entryEffectLife(spep_5,SP_04,100,0x100,-1,0,0,0);

setEffMoveKey(spep_5,kikku,0,0,0);
setEffMoveKey(spep_5+100,kikku,0,0,0);
setEffScaleKey(spep_5,kikku,1.0,1.0);
setEffScaleKey(spep_5+100,kikku,1.0,1.0);
setEffAlphaKey(spep_5,kikku,255);
setEffAlphaKey(spep_5+100,kikku,255);
setEffAlphaKey(spep_5+101,kikku,0);
setEffRotateKey(spep_5,kikku,0);
setEffRotateKey(spep_5+100,kikku,0);

-- ** 集中線 ** --
shuchusen5 = entryEffectLife( spep_5, 906, 100, 0x100,  -1, 0,  0,  0); -- 集中線
setEffMoveKey( spep_3, shuchusen5, 0, 0, 0);
setEffScaleKey( spep_3, shuchusen5, 1.4, 1.4);
setEffAlphaKey( spep_3, shuchusen5, 255);
setEffRotateKey( spep_3, shuchusen5, 0);

-- ** てき ** --
setDisp( spep_5+16, 1, 1);
changeAnime(spep_5+16,1,106);--あおむけ
setRotateKey(  spep_5+16,  1,  -10);
setMoveKey(spep_5+16,1,2000,2000,0);
setMoveKey(spep_5+20,1,600,600,0);
setMoveKey(spep_5+22,1,600,400,0);
setMoveKey(spep_5+49,1,70,120,0);
setRotateKey(  spep_5+49,  1,  -10);
setShakeChara(spep_5+16, 1, 34, 10);

changeAnime(spep_5+46,1,108);--くのじ
setShakeChara(spep_5+46, 1, 40, 15);
setShakeChara(spep_5+86, 1, 10, 10);

setMoveKey(spep_5+50,1,70,120,0);
setMoveKey(spep_5+86,1,80,130,0);
setMoveKey(spep_5+98,1,600,400,0);
setRotateKey(  spep_5+50,  1,  -30);
setRotateKey(  spep_5+98,  1,  -30);

setScaleKey( spep_5+16,    1,  1.3, 1.3);
setScaleKey( spep_5+98,    1,  1.3, 1.3);

setDisp( spep_5+98, 1, 0);


-- 書き文字エントリー
ctBaki = entryEffectLife(spep_5+46, 10020, 50, 0x100, -1, 0, -100, 350); -- バキ

setEffShake( spep_5+46, ctBaki, 30, 15);

setEffAlphaKey( spep_5+46, ctBaki, 255); --小さいななめ
setEffScaleKey( spep_5+46, ctBaki, 1.4, 1.4);
setEffRotateKey( spep_5+46, ctBaki, -10);

setEffScaleKey( spep_5+48, ctBaki, 1.4, 1.4);
setEffRotateKey( spep_5+48, ctBaki, -10);

setEffScaleKey( spep_5+49, ctBaki, 2, 2);--大きいよこ
setEffRotateKey( spep_5+49, ctBaki, 10);

setEffScaleKey( spep_5+53, ctBaki, 2, 2);
setEffRotateKey( spep_5+53, ctBaki, 10);

setEffScaleKey( spep_5+54, ctBaki, 1.6, 1.6);--小さいななめ
setEffRotateKey( spep_5+54, ctBaki, -10);

setEffScaleKey( spep_5+58, ctBaki, 1.6, 1.6);--小さいななめ
setEffRotateKey( spep_5+58, ctBaki, -10);

setEffScaleKey( spep_5+59, ctBaki, 1.6, 1.6);--小さいよこ
setEffRotateKey( spep_5+59, ctBaki, 10);

setEffScaleKey( spep_5+60, ctBaki, 1.6, 1.6);--小さいよこ
setEffRotateKey( spep_5+60, ctBaki, 10);

setEffScaleKey( spep_5+61, ctBaki, 1.4, 1.4);--小さい小さいよこ
setEffRotateKey( spep_5+61, ctBaki, 0);
setEffScaleKey( spep_5+70, ctBaki, 2, 2);--小さい小さいよこ
setEffScaleKey( spep_5+84, ctBaki, 2, 2);--小さい小さいよこ
setEffAlphaKey( spep_5+84, ctBaki, 255);

setEffScaleKey( spep_5+94, ctBaki, 3, 3);--小さい小さいよこ
setEffRotateKey( spep_5+94, ctBaki, 0);

setEffAlphaKey( spep_5+94, ctBaki, 0);

entryFade( spep_5+42, 2, 3, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 音 ** --
playSe( spep_5+46, 1011);

------------------------------------------------------
-- 最後のふっとばし演出(110F)　
------------------------------------------------------
-- ** 次の準備 ** --
spep_6=spep_5+100;
entryFade( spep_6-5, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp( spep_6-1, 1, 1);
setMoveKey(  spep_6-1,    1,  100,  0,   0);
setScaleKey( spep_6-1,    1,  1.0, 1.0);
setMoveKey(  spep_6,    1,    0,   0,   128);
setScaleKey( spep_6,    1,  0.1, 0.1);

changeAnime( spep_6, 1, 107);                         -- 手前ダメージ
entryEffect( spep_6+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_6+8, SE_10);

setMoveKey(  spep_6+8,   1,    0,   0,   128);
setMoveKey(  spep_6+15,   1,  -60,  -200,  -100);
setMoveKey(  spep_6+16,   1,  -60,  -200,  -100);
setDamage( spep_6+16, 1, 0);  -- ダメージ振動等
setShake(spep_6+7,6,15);
setShake(spep_6+13,15,10);

setRotateKey( spep_6,  1,  30 );
setRotateKey( spep_6+2,  1,  80 );
setRotateKey( spep_6+4,  1, 120 );
setRotateKey( spep_6+6,  1, 160 );
setRotateKey( spep_6+8,  1, 200 );
setRotateKey( spep_6+10,  1, 260 );
setRotateKey( spep_6+12,  1, 320 );
setRotateKey( spep_6+14,  1,   0 );

setShakeChara( spep_6+15, 1, 5,  10);
setShakeChara( spep_6+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep_6+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep_6+15, ct, 30, 10);
setEffRotateKey( spep_6+15, ct, -40);
setEffScaleKey( spep_6+15, ct, 4.0, 4.0);
setEffScaleKey( spep_6+16, ct, 2.0, 2.0);
setEffScaleKey( spep_6+17, ct, 2.6, 2.6);
setEffScaleKey( spep_6+18, ct, 4.0, 4.0);
setEffScaleKey( spep_6+19, ct, 2.6, 2.6);
setEffScaleKey( spep_6+20, ct, 3.8, 3.8);
setEffScaleKey( spep_6+110, ct, 3.8, 3.8);
setEffAlphaKey( spep_6+15, ct, 255);
setEffAlphaKey( spep_6+105, ct, 255);
setEffAlphaKey( spep_6+115, ct, 0);

playSe( spep_6+3, SE_11);
shuchusen = entryEffectLife( spep_6+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
hibi = entryEffect( spep_6+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ
setEffMoveKey( spep_6 + 3,  hibi,  30,  -130);
setEffMoveKey( spep_6 + 123,  hibi,  30,  -130);

shuchusenkuro = entryEffectLife( spep_6+15, 1657, 120, 0x80,  -1, 0,  0,  0);   -- 集中線


-- ダメージ表示
dealDamage(spep_6+16);
entryFade( spep_6+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_6+110);

else


------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 加速移動(170F)
------------------------------------------------------

spep_1=0;

-- ** 背景 ** --
entryFadeBg( spep_1, 0, 70, 0, 0, 0, 0, 210);  -- 黒うすめ　背景
entryFadeBg( spep_1+40, 30, 0, 0, fcolor_r, fcolor_g, fcolor_b, 160);  -- 白うすめ　背景
entryFadeBg( spep_1+70, 0, 100, 0, 0, 0, 0, 255);  -- 黒　背景

-- ** 途中のフェード ** --
entryFade( spep_1+60, 10, 0, 0, fcolor_r, fcolor_g, fcolor_b, 200);     -- white fade

-- ** 流線 ** --
yokosen = entryEffectLife(spep_1, 914, 170, 0x80,  -1, 0,  0,  0);   -- 流線

setEffScaleKey(spep_1, yokosen, 1.4, 1.4);
setEffScaleKey(spep_1+170, yokosen, 1.4, 1.4);
setEffAlphaKey(spep_1,yokosen,255);
setEffAlphaKey(spep_1+170,yokosen,255);
setEffAlphaKey(spep_1+171,yokosen,0);
setEffRotateKey(spep_1, yokosen, 0);
setEffRotateKey(spep_1+170, yokosen, 0);

-- ** エフェクト等 ** --
kasoku=entryEffectLife(spep_1,SP_01x,170,0x100,-1,0,0,0);

setEffMoveKey(spep_1,kasoku,0,0,0);
setEffMoveKey(spep_1+170,kasoku,0,0,0);
setEffScaleKey(spep_1,kasoku,1.0,1.0);
setEffScaleKey(spep_1+170,kasoku,1.0,1.0);
setEffAlphaKey(spep_1,kasoku,255);
setEffAlphaKey(spep_1+170,kasoku,255);
setEffAlphaKey(spep_1+171,kasoku,0);
setEffRotateKey(spep_1,kasoku,0);
setEffRotateKey(spep_1+170,kasoku,0);

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_1, 906, 170, 0x100,  -1, 0,  0,  0); -- 集中線
setEffMoveKey( spep_1, shuchusen1, 0, 0, 0);
setEffScaleKey( spep_1, shuchusen1, 1.8, 1.8);
setEffScaleKey( spep_1+69, shuchusen1, 1.8, 1.8);
setEffScaleKey( spep_1+70, shuchusen1, 1.3, 1.3);
setEffScaleKey( spep_1+170, shuchusen1, 1.3, 1.3);
setEffAlphaKey( spep_1, shuchusen1, 255);
setEffRotateKey( spep_1, shuchusen1, 0);

-- ** SE等 ** --
playSe( spep_1+10, 8);
playSe( spep_1+60, 9);

------------------------------------------------------
-- 連撃(180F)
------------------------------------------------------
-- ** 次の準備 ** --
spep_2=spep_1+170;
entryFade( spep_2-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 背景 ** --
entryFadeBg( spep_2, 0, 180, 0, 0, 0, 0, 255);  -- 黒　背景

-- ** エフェクト等 ** --
rengeki = entryEffect( spep_2, SP_02x, 0, -1, 0, 0, 0);   --迫る〜命中　50f
setEffScaleKey( spep_2, rengeki, 1, 1);
setEffMoveKey( spep_2, rengeki, 0, 0, 0);
setEffAlphaKey( spep_2, rengeki, 255);
setEffAlphaKey( spep_2+180, rengeki, 255);
setEffAlphaKey( spep_2+181, rengeki, 0);

-- ** 流線 ** --
yokosen2 = entryEffectLife(spep_2, 914, 130, 0x80,  -1, 0,  0,  0);   -- 流線

setEffScaleKey(spep_2, yokosen, 1.4, 1.4);
setEffScaleKey(spep_2+130, yokosen, 1.4, 1.4);
setEffAlphaKey(spep_2,yokosen,255);
setEffAlphaKey(spep_2+130,yokosen,255);
setEffAlphaKey(spep_2+131,yokosen,0);
setEffRotateKey(spep_2, yokosen, 0);
setEffRotateKey(spep_2+130, yokosen, 0);

-- ** 斜め線 ** --
nanamesen2 = entryEffectLife(spep_2+131, 921, 50, 0x80,  -1, 0,  0,  0);   -- 流線

setEffScaleKey(spep_2+131, nanamesen2, 1.7, 1.3);
setEffScaleKey(spep_2+180, nanamesen2, 1.7, 1.3);
setEffAlphaKey(spep_2+131,nanamesen2,255);
setEffAlphaKey(spep_2+180,nanamesen2,255);
setEffAlphaKey(spep_2+181,nanamesen2,0);
setEffRotateKey(spep_2+131, nanamesen2, -50);
setEffRotateKey(spep_2+180, nanamesen2, -50);


-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_2, 906, 180, 0x100,  -1, 0,  0,  0); -- 集中線
setEffMoveKey( spep_2, shuchusen2, 0, 0, 0);
setEffScaleKey( spep_2, shuchusen2, 1.8, 1.8);
setEffAlphaKey( spep_2, shuchusen2, 255);
setEffRotateKey( spep_2, shuchusen2, 0);


-- ** 敵の動き ** --
setDisp(spep_2, 1, 1);
setShakeChara(spep_2, 1, 25, 10);
changeAnime(spep_2, 1, 101); --横待機 
setMoveKey(spep_2, 1, -600, 30, 0);
setMoveKey( spep_2+10,  1,  -100,  30, 0);
setMoveKey(  spep_2+25,  1,  0,  30, 0);



setShakeChara(spep_2+31, 1, 52, 15 );

setMoveKey(  spep_2+31,  1,  30,  40, 0);
--setMoveKey(  spep_2+70,  1,  100,  0, 0);
setMoveKey(  spep_2+63,  1,  60,  48, 0);

setRotateKey(  spep_2,  1,  0);
setRotateKey(  spep_2+82,  1,  0);

setMoveKey(  spep_2+80,  1,   70,  70, 0);
setRotateKey(  spep_2+83,  1,  -30);
setMoveKey(  spep_2+83,  1,   70,  70, 0);
setMoveKey(  spep_2+84,  1,   70,  90, 0);
setRotateKey(  spep_2+84,  1,  -50);
changeAnime( spep_2+84, 1, 106);  --あおむけ
setShakeChara(spep_2+84, 1, 44, 10);

setMoveKey(  spep_2+90,  1,   70,  120, 0);

setMoveKey(spep_2+110, 1, 70, 150, 0);
setRotateKey(spep_2+126, 1, -40);

setMoveKey(spep_2+126, 1, 70, 200, 0);

changeAnime(spep_2+127, 1, 108);--くの字
setShakeChara(spep_2+127, 1, 34, 20);

setRotateKey(spep_2+127,1,-30);
setMoveKey(spep_2+127,1,70,200,0);
--setMoveKey(spep_2+135,1,70,200,0);
setMoveKey(spep_2+150,1,70,200,0);
setShakeChara(spep_2+150, 1, 30, 10);

setMoveKey(spep_2+150,1,200,300,0);
setMoveKey(spep_2+178,1,300,400,0);

setScaleKey(spep_2,1,1.3,1.3);
setScaleKey(spep_2+150,1,1.3,1.3);
setScaleKey(spep_2+178,1,0,0);
setDisp(spep_2+179,1,0);--敵消す

-- 書き文字エントリー
ctDokgaga = entryEffectLife( spep_2+25, 10017, 85, 0, -1, 0, 0, 0); -- ドガガガッ
setEffRotateKey(spep_2+25, ctDokgaga, 0);
setEffShake(spep_2+25, ctDokgaga, 96, 15);
setEffAlphaKey(spep_2+25, ctDokgaga, 255);
setEffAlphaKey(spep_2+100, ctDokgaga, 255);
setEffAlphaKey(spep_2+110, ctDokgaga, 0);
setEffScaleKey(spep_2+24, ctDokgaga, 1.8, 1.8);
setEffScaleKey(spep_2+30, ctDokgaga, 2.5, 2.5);
setEffScaleKey(spep_2+110, ctDokgaga, 2.5, 2.5);
setEffMoveKey( spep_2+25, ctDokgaga,  0,  350,  0);
setEffMoveKey( spep_2+110, ctDokgaga,  0,  350,  0);

-- 書き文字エントリー
ctBaki = entryEffectLife(spep_2+127, 10020, 43, 0x100, -1, 0, -100, 350); -- バキ

setEffShake( spep_2+127, ctBaki, 30, 15);

setEffAlphaKey( spep_2+127, ctBaki, 255); --小さいななめ
setEffScaleKey( spep_2+127, ctBaki, 1.4, 1.4);
setEffRotateKey( spep_2+127, ctBaki, -10);

setEffScaleKey( spep_2+129, ctBaki, 1.4, 1.4);
setEffRotateKey( spep_2+129, ctBaki, -10);

setEffScaleKey( spep_2+130, ctBaki, 2, 2);--大きいよこ
setEffRotateKey( spep_2+130, ctBaki, 10);

setEffScaleKey( spep_2+134, ctBaki, 2, 2);
setEffRotateKey( spep_2+134, ctBaki, 10);

setEffScaleKey( spep_2+135, ctBaki, 1.6, 1.6);--小さいななめ
setEffRotateKey( spep_2+135, ctBaki, -10);

setEffScaleKey( spep_2+139, ctBaki, 1.6, 1.6);--小さいななめ
setEffRotateKey( spep_2+139, ctBaki, -10);

setEffScaleKey( spep_2+140, ctBaki, 1.6, 1.6);--小さいよこ
setEffRotateKey( spep_2+140, ctBaki, 10);

setEffScaleKey( spep_2+141, ctBaki, 1.6, 1.6);--小さいよこ
setEffRotateKey( spep_2+141, ctBaki, 10);

setEffScaleKey( spep_2+142, ctBaki, 1.4, 1.4);--小さい小さいよこ
setEffRotateKey( spep_2+142, ctBaki, 0);
setEffScaleKey( spep_2+143, ctBaki, 2, 2);--小さい小さいよこ
setEffScaleKey( spep_2+150, ctBaki, 2, 2);--小さい小さいよこ
setEffAlphaKey( spep_2+150, ctBaki, 255);

setEffScaleKey( spep_2+170, ctBaki, 3, 3);--小さい小さいよこ
setEffRotateKey( spep_2+170, ctBaki, 0);
setEffAlphaKey( spep_2+170, ctBaki, 0);

entryFade( spep_2+22, 2, 3, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_2+124, 2, 3, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade



------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 184; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey( SP_dodge+8, 0,    0, 0,   0);
setMoveKey( SP_dodge+9, 0,  -2500,  -250,   0);
setMoveKey(   SP_dodge+10,   0,    -2500, -250,   0);

endPhase(SP_dodge+10);
do return end
else end

changeAnime( spep_2+25, 1, 108);   --くの字

-- ** SE等 ** --
playSe( spep_2+25, 1009);
playSe( spep_2+35, 1010);
playSe( spep_2+45, 1009);
playSe( spep_2+55, 1010);
playSe( spep_2+65, 1009);
playSe( spep_2+75, 1010);
playSe( spep_2+84, 1009);
playSe( spep_2+127, 1011);
------------------------------------------------------
-- ピンボール(120F)　
------------------------------------------------------

-- ** 次の準備 ** --
spep_3 = spep_2+180;
entryFade( spep_3-6, 3, 5, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 背景 ** --
entryFadeBg( spep_3, 0, 120, 0, 0, 0, 0, 210); -- ベース暗め　背景

-- ** エフェクト等 ** --
pinboll = entryEffect( spep_3, SP_03x, 0x100, -1, 0, 0, 0);   --発射　50f
setEffMoveKey( spep_3, pinboll, 0, 0, 0);
setEffScaleKey( spep_3, pinboll, 1, 1);
setEffAlphaKey( spep_3, pinboll, 255);
setEffAlphaKey( spep_3+120, pinboll, 255);
setEffAlphaKey( spep_3+121, pinboll, 0);

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_3, 906, 120, 0x100,  -1, 0,  0,  0); -- 集中線
setEffMoveKey( spep_3, shuchusen3, 0, 0, 0);
setEffScaleKey( spep_3, shuchusen3, 1.4, 1.4);
setEffAlphaKey( spep_3, shuchusen3, 255);
setEffRotateKey( spep_3, shuchusen3, 0);


-- ** 敵の動き ** --


setDisp( spep_3, 1, 1);
changeAnime( spep_3, 1, 108);--一撃目　くの字   
setMoveKey(  spep_3,  1,  -400,  50, 0);
setRotateKey(  spep_3,  1,  -30);
setRotateKey(  spep_3+9,  1,  -30);
setScaleKey( spep_3,    1,  1.5, 1.5);
setScaleKey( spep_3+9,    1,  0.5, 0.5);

changeAnime( spep_3+10, 1, 107);--二撃目　てまえダメージ   
setMoveKey(  spep_3+10,  1,  -220,  335, 0);
setRotateKey(  spep_3+10,  1,  0);
setRotateKey(  spep_3+25,  1,  0);
setScaleKey( spep_3+10,    1,  0.3, 0.3);
setScaleKey( spep_3+25,    1,  2, 2);


changeAnime( spep_3+26, 1, 8);--三撃目　くの字(味方)   
setMoveKey(  spep_3+26,  1,  400,  -390, 0);
setScaleKey( spep_3+26,    1,  3, 3);
setRotateKey(  spep_3+26,  1,  10);
setScaleKey( spep_3+39,    1,  1.5, 1.5);
setRotateKey(  spep_3+39,  1,  10);


changeAnime( spep_3+40, 1, 106);--四撃目　あおむけ   
setMoveKey(  spep_3+40,  1,  -430,  -60, 0);
setScaleKey( spep_3+40,    1,  1, 1);
setRotateKey(  spep_3+40,  1,  -40);
setScaleKey( spep_3+51,    1,  0.3, 0.3);
setRotateKey(  spep_3+52,  1,  -40);


changeAnime( spep_3+52, 1, 108);--五撃目　くの字    
setMoveKey(  spep_3+52,  1,  -210,  330, 0);
setScaleKey( spep_3+52,    1,  0.3, 0.3);
setRotateKey(  spep_3+61,  1,  -40);
setScaleKey( spep_3+61,    1,  0.1, 0.1);
setRotateKey(  spep_3+61,  1,  -40);

changeAnime( spep_3+62, 1, 7);--六撃目　あおむけ 味方   
setMoveKey(  spep_3+62,  1,  290,  90, 0);
setScaleKey( spep_3+62,    1,  0.2, 0.2);
setRotateKey(  spep_3+62,  1,  -10);

setScaleKey( spep_3+70,    1,  2.5, 2.5);
setRotateKey(  spep_3+90,  1,  -10);

setMoveKey(  spep_3+70,  1,  -600,  -600, 0);
setMoveKey(  spep_3+80,  1,  -1000,  -1000, 0);
setMoveKey(  spep_3+86,  1,  -2000,  -2000, 0);

setDisp( spep_3+86, 1, 0);


-- カットイン --

--speff = entryEffect(  spep_3+34,   1504,   0,   -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  spep_3+34,   1505,   0,   -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー --
ctgogo = entryEffectLife( spep_3+40, 190006, 70, 0x100, -1,  0, 0, 500);    -- ゴゴゴゴ
setEffShake(spep_3+40, ctgogo, 70, 10);
setEffScaleKey(spep_3+40, ctgogo, -0.8, 0.8);
setEffRotateKey(spep_3+40, ctgogo, 0);
setEffAlphaKey( spep_3+40, ctgogo, 255);

-- ** 音 ** --
playSe( spep_3+34, SE_04);

--playSe( spep_3, 1025);
playSe( spep_3+10, 1025);
playSe( spep_3+26, 1025);
playSe( spep_3+40, 1025);
playSe( spep_3+52, 1025);
playSe( spep_3+62, 1025);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
spep_4=spep_3+120;

-- ** 次の準備 ** --
entryFade( spep_4-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- カードカットイン
speff = entryEffect( spep_4, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_4, 906, 90, 0x100,  -1, 0,  0,  0); -- 集中線5
setEffMoveKey( spep_4, shuchusen4, 0, 0, 0);
setEffScaleKey( spep_4, shuchusen4, 1.8, 1.8);
setEffAlphaKey( spep_4, shuchusen4, 255);
setEffRotateKey( spep_4, shuchusen4, 0);

-- ** 音 ** --
playSe( spep_4+5, SE_05);

------------------------------------------------------
-- キック(100F)　
------------------------------------------------------
-- ** 次の準備 ** --
spep_5=spep_4+90;
entryFade( spep_5-6, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 背景 ** --
entryFadeBg( spep_5, 0, 100, 0, 0, 0, 0, 255); -- ベース暗め　背景

-- ** SE等 ** --
--playSe( spep_5+8, 4);--瞬間移動
--playSe( spep_5+20, 1001);--1004

-- ** 流線 ** --
yokosen5 = entryEffectLife(spep_5, 914, 100, 0x80,  -1, 0,  0,  0);   -- 流線

setEffScaleKey(spep_5, yokosen5, 1.6, 1.4);
setEffScaleKey(spep_5+100, yokosen5, 1.6, 1.4);
setEffAlphaKey(spep_5,yokosen5,255);
setEffAlphaKey(spep_5+100,yokosen5,255);
setEffAlphaKey(spep_5+101,yokosen5,0);
setEffRotateKey(spep_5, yokosen5, -30);
setEffRotateKey(spep_5+100, yokosen5, -30);

-- ** エフェクト等 ** --
kikku=entryEffectLife(spep_5,SP_04x,100,0x100,-1,0,0,0);

setEffMoveKey(spep_5,kikku,0,0,0);
setEffMoveKey(spep_5+100,kikku,0,0,0);
setEffScaleKey(spep_5,kikku,1.0,1.0);
setEffScaleKey(spep_5+100,kikku,1.0,1.0);
setEffAlphaKey(spep_5,kikku,255);
setEffAlphaKey(spep_5+100,kikku,255);
setEffAlphaKey(spep_5+101,kikku,0);
setEffRotateKey(spep_5,kikku,0);
setEffRotateKey(spep_5+100,kikku,0);

-- ** 集中線 ** --
shuchusen5 = entryEffectLife( spep_5, 906, 100, 0x100,  -1, 0,  0,  0); -- 集中線
setEffMoveKey( spep_3, shuchusen5, 0, 0, 0);
setEffScaleKey( spep_3, shuchusen5, 1.4, 1.4);
setEffAlphaKey( spep_3, shuchusen5, 255);
setEffRotateKey( spep_3, shuchusen5, 0);

-- ** てき ** --
setDisp( spep_5+16, 1, 1);
changeAnime(spep_5+16,1,106);--あおむけ
setRotateKey(  spep_5+16,  1,  -10);
setMoveKey(spep_5+16,1,2000,2000,0);
setMoveKey(spep_5+20,1,600,600,0);
setMoveKey(spep_5+22,1,600,400,0);
setMoveKey(spep_5+49,1,70,120,0);
setRotateKey(  spep_5+49,  1,  -10);
setShakeChara(spep_5+16, 1, 34, 10);

changeAnime(spep_5+46,1,108);--くのじ
setShakeChara(spep_5+46, 1, 40, 15);
setShakeChara(spep_5+86, 1, 10, 10);

setMoveKey(spep_5+50,1,70,120,0);
setMoveKey(spep_5+86,1,80,130,0);
setMoveKey(spep_5+98,1,600,400,0);
setRotateKey(  spep_5+50,  1,  -30);
setRotateKey(  spep_5+98,  1,  -30);

setScaleKey( spep_5+16,    1,  1.3, 1.3);
setScaleKey( spep_5+98,    1,  1.3, 1.3);

setDisp( spep_5+98, 1, 0);


-- 書き文字エントリー
ctBaki = entryEffectLife(spep_5+46, 10020, 50, 0x100, -1, 0, -100, 350); -- バキ

setEffShake( spep_5+46, ctBaki, 30, 15);

setEffAlphaKey( spep_5+46, ctBaki, 255); --小さいななめ
setEffScaleKey( spep_5+46, ctBaki, 1.4, 1.4);
setEffRotateKey( spep_5+46, ctBaki, -10);

setEffScaleKey( spep_5+48, ctBaki, 1.4, 1.4);
setEffRotateKey( spep_5+48, ctBaki, -10);

setEffScaleKey( spep_5+49, ctBaki, 2, 2);--大きいよこ
setEffRotateKey( spep_5+49, ctBaki, 10);

setEffScaleKey( spep_5+53, ctBaki, 2, 2);
setEffRotateKey( spep_5+53, ctBaki, 10);

setEffScaleKey( spep_5+54, ctBaki, 1.6, 1.6);--小さいななめ
setEffRotateKey( spep_5+54, ctBaki, -10);

setEffScaleKey( spep_5+58, ctBaki, 1.6, 1.6);--小さいななめ
setEffRotateKey( spep_5+58, ctBaki, -10);

setEffScaleKey( spep_5+59, ctBaki, 1.6, 1.6);--小さいよこ
setEffRotateKey( spep_5+59, ctBaki, 10);

setEffScaleKey( spep_5+60, ctBaki, 1.6, 1.6);--小さいよこ
setEffRotateKey( spep_5+60, ctBaki, 10);

setEffScaleKey( spep_5+61, ctBaki, 1.4, 1.4);--小さい小さいよこ
setEffRotateKey( spep_5+61, ctBaki, 0);
setEffScaleKey( spep_5+70, ctBaki, 2, 2);--小さい小さいよこ
setEffScaleKey( spep_5+84, ctBaki, 2, 2);--小さい小さいよこ
setEffAlphaKey( spep_5+84, ctBaki, 255);

setEffScaleKey( spep_5+94, ctBaki, 3, 3);--小さい小さいよこ
setEffRotateKey( spep_5+94, ctBaki, 0);

setEffAlphaKey( spep_5+94, ctBaki, 0);

entryFade( spep_5+42, 2, 3, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 音 ** --
playSe( spep_5+46, 1011);

------------------------------------------------------
-- 最後のふっとばし演出(110F)　
------------------------------------------------------
-- ** 次の準備 ** --
spep_6=spep_5+100;
entryFade( spep_6-5, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp( spep_6-1, 1, 1);
setMoveKey(  spep_6-1,    1,  100,  0,   0);
setScaleKey( spep_6-1,    1,  1.0, 1.0);
setMoveKey(  spep_6,    1,    0,   0,   128);
setScaleKey( spep_6,    1,  0.1, 0.1);

changeAnime( spep_6, 1, 107);                         -- 手前ダメージ
entryEffect( spep_6+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_6+8, SE_10);

setMoveKey(  spep_6+8,   1,    0,   0,   128);
setMoveKey(  spep_6+15,   1,  -60,  -200,  -100);
setMoveKey(  spep_6+16,   1,  -60,  -200,  -100);
setDamage( spep_6+16, 1, 0);  -- ダメージ振動等
setShake(spep_6+7,6,15);
setShake(spep_6+13,15,10);

setRotateKey( spep_6,  1,  30 );
setRotateKey( spep_6+2,  1,  80 );
setRotateKey( spep_6+4,  1, 120 );
setRotateKey( spep_6+6,  1, 160 );
setRotateKey( spep_6+8,  1, 200 );
setRotateKey( spep_6+10,  1, 260 );
setRotateKey( spep_6+12,  1, 320 );
setRotateKey( spep_6+14,  1,   0 );

setShakeChara( spep_6+15, 1, 5,  10);
setShakeChara( spep_6+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep_6+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep_6+15, ct, 30, 10);
setEffRotateKey( spep_6+15, ct, -40);
setEffScaleKey( spep_6+15, ct, 4.0, 4.0);
setEffScaleKey( spep_6+16, ct, 2.0, 2.0);
setEffScaleKey( spep_6+17, ct, 2.6, 2.6);
setEffScaleKey( spep_6+18, ct, 4.0, 4.0);
setEffScaleKey( spep_6+19, ct, 2.6, 2.6);
setEffScaleKey( spep_6+20, ct, 3.8, 3.8);
setEffScaleKey( spep_6+110, ct, 3.8, 3.8);
setEffAlphaKey( spep_6+15, ct, 255);
setEffAlphaKey( spep_6+105, ct, 255);
setEffAlphaKey( spep_6+115, ct, 0);

playSe( spep_6+3, SE_11);
shuchusen = entryEffectLife( spep_6+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
hibi = entryEffect( spep_6+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ
setEffMoveKey( spep_6 + 3,  hibi,  30,  -130);
setEffMoveKey( spep_6 + 123,  hibi,  30,  -130);

shuchusenkuro = entryEffectLife( spep_6+15, 1657, 120, 0x80,  -1, 0,  0,  0);   -- 集中線


-- ダメージ表示
dealDamage(spep_6+16);
entryFade( spep_6+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_6+110);

end