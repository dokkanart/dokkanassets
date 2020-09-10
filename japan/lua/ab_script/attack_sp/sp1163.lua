--sp1163 ディスポ 超最高速ジャスティスキック

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
SP_01 = 151527;--加速移動170F
SP_02 = 151528;--連撃220F
SP_02ura = 151529;--連撃220F
SP_03 = 151530;--ピンボール120F
SP_04 = 151531;--キック270F

--敵側
SP_01x = 151532;--加速移動170F
SP_02x = 151533;--連撃220F
SP_02urax = 151534;--連撃220F
SP_03x = 151535;--ピンボール120F
SP_04x = 151536;--キック270F

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
entryFadeBg( spep_2, 0, 220, 0, 0, 0, 0, 255);  -- 黒　背景

-- ** エフェクト等 ** --
rengeki = entryEffect( spep_2, SP_02, 0x100, -1, 0, 0, 0);   --迫る〜命中　50f
setEffScaleKey( spep_2, rengeki, 1, 1);
setEffMoveKey( spep_2, rengeki, 0, 0, 0);
setEffAlphaKey( spep_2, rengeki, 255);
setEffAlphaKey( spep_2+220, rengeki, 255);
setEffAlphaKey( spep_2+221, rengeki, 0);

-- ** 流線 ** --
yokosen2 = entryEffectLife(spep_2, 914, 170, 0x80,  -1, 0,  0,  0);   -- 流線

setEffScaleKey(spep_2, yokosen, 1.4, 1.4);
setEffScaleKey(spep_2+170, yokosen, 1.4, 1.4);
setEffAlphaKey(spep_2,yokosen,255);
setEffAlphaKey(spep_2+170,yokosen,255);
setEffAlphaKey(spep_2+171,yokosen,0);
setEffRotateKey(spep_2, yokosen, 0);
setEffRotateKey(spep_2+170, yokosen, 0);

-- ** 斜め線 ** --
nanamesen2 = entryEffectLife(spep_2+171, 921, 50, 0x80,  -1, 0,  0,  0);   -- 流線

setEffScaleKey(spep_2+171, nanamesen2, 1.7, 1.3);
setEffScaleKey(spep_2+220, nanamesen2, 1.7, 1.3);
setEffAlphaKey(spep_2+171,nanamesen2,255);
setEffAlphaKey(spep_2+220,nanamesen2,255);
setEffAlphaKey(spep_2+221,nanamesen2,0);
setEffRotateKey(spep_2+171, nanamesen2, -50);
setEffRotateKey(spep_2+220, nanamesen2, -50);

rengeki2 = entryEffect( spep_2, SP_02ura, 0x80, -1, 0, 0, 0);   --迫る〜命中　50f
setEffScaleKey( spep_2, rengeki2, 1, 1);
setEffMoveKey( spep_2, rengeki2, 0, 0, 0);
setEffAlphaKey( spep_2, rengeki2, 255);
setEffAlphaKey( spep_2+220, rengeki2, 255);
setEffAlphaKey( spep_2+221, rengeki2, 0);


-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_2, 906, 220, 0x100,  -1, 0,  0,  0); -- 集中線
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

changeAnime( spep_2+25, 1, 108);   --くの字

setShakeChara(spep_2+31, 1, 92, 15 );

setMoveKey(  spep_2+31,  1,  30,  40, 0);
--setMoveKey(  spep_2+70,  1,  100,  0, 0);

--setMoveKey(  spep_2+63,  1,  60,  48, 0);
setMoveKey(  spep_2+103,  1,  60,  48, 0);

setRotateKey(  spep_2,  1,  0);
setRotateKey(  spep_2+122,  1,  0);

setMoveKey(  spep_2+120,  1,   70,  70, 0);
setRotateKey(  spep_2+123,  1,  -30);
setMoveKey(  spep_2+123,  1,   70,  70, 0);
setMoveKey(  spep_2+124,  1,   70,  90, 0);
setRotateKey(  spep_2+124,  1,  -50);
changeAnime( spep_2+124, 1, 106);  --あおむけ
setShakeChara(spep_2+124, 1, 44, 10);

setMoveKey(  spep_2+130,  1,   70,  120, 0);

setMoveKey(spep_2+150, 1, 70, 150, 0);
setRotateKey(spep_2+166, 1, -40);

setMoveKey(spep_2+166, 1, 70, 200, 0);

changeAnime(spep_2+167, 1, 108);--くの字
setShakeChara(spep_2+167, 1, 34, 20);

setRotateKey(spep_2+167,1,-30);
setMoveKey(spep_2+167,1,70,200,0);
--setMoveKey(spep_2+135,1,70,200,0);
setMoveKey(spep_2+190,1,70,200,0);
setShakeChara(spep_2+190, 1, 30, 10);

setMoveKey(spep_2+190,1,200,300,0);
setMoveKey(spep_2+218,1,300,400,0);

setScaleKey(spep_2,1,1.3,1.3);
setScaleKey(spep_2+190,1,1.3,1.3);
setScaleKey(spep_2+218,1,0,0);
setDisp(spep_2+219,1,0);--敵消す

-- 書き文字エントリー
ctDokgaga = entryEffectLife( spep_2+25, 10017, 125, 0, -1, 0, 0, 0); -- ドガガガッ
setEffRotateKey(spep_2+25, ctDokgaga, 20);
setEffShake(spep_2+25, ctDokgaga, 125, 15);
setEffAlphaKey(spep_2+25, ctDokgaga, 255);
setEffAlphaKey(spep_2+140, ctDokgaga, 255);
setEffAlphaKey(spep_2+150, ctDokgaga, 0);
setEffScaleKey(spep_2+24, ctDokgaga, 1.8, 1.8);
setEffScaleKey(spep_2+30, ctDokgaga, 2.5, 2.5);
setEffScaleKey(spep_2+150, ctDokgaga, 2.5, 2.5);
setEffMoveKey( spep_2+25, ctDokgaga,  0,  350,  0);
setEffMoveKey( spep_2+150, ctDokgaga,  0,  350,  0);

-- 書き文字エントリー
ctBaki = entryEffectLife(spep_2+167, 10020, 43, 0x100, -1, 0, -100, 350); -- バキ

setEffShake( spep_2+167, ctBaki, 30, 15);

setEffAlphaKey( spep_2+167, ctBaki, 255); --小さいななめ
setEffScaleKey( spep_2+167, ctBaki, 1.4, 1.4);
setEffRotateKey( spep_2+167, ctBaki, -10);

setEffScaleKey( spep_2+169, ctBaki, 1.4, 1.4);
setEffRotateKey( spep_2+169, ctBaki, -10);

setEffScaleKey( spep_2+170, ctBaki, 2, 2);--大きいよこ
setEffRotateKey( spep_2+170, ctBaki, 10);

setEffScaleKey( spep_2+174, ctBaki, 2, 2);
setEffRotateKey( spep_2+174, ctBaki, 10);

setEffScaleKey( spep_2+175, ctBaki, 1.6, 1.6);--小さいななめ
setEffRotateKey( spep_2+175, ctBaki, -10);

setEffScaleKey( spep_2+179, ctBaki, 1.6, 1.6);--小さいななめ
setEffRotateKey( spep_2+179, ctBaki, -10);

setEffScaleKey( spep_2+180, ctBaki, 1.6, 1.6);--小さいよこ
setEffRotateKey( spep_2+180, ctBaki, 10);

setEffScaleKey( spep_2+181, ctBaki, 1.6, 1.6);--小さいよこ
setEffRotateKey( spep_2+181, ctBaki, 10);

setEffScaleKey( spep_2+182, ctBaki, 1.4, 1.4);--小さい小さいよこ
setEffRotateKey( spep_2+182, ctBaki, 0);
setEffScaleKey( spep_2+183, ctBaki, 2, 2);--小さい小さいよこ
setEffScaleKey( spep_2+190, ctBaki, 2, 2);--小さい小さいよこ
setEffAlphaKey( spep_2+190, ctBaki, 255);

setEffScaleKey( spep_2+210, ctBaki, 3, 3);--小さい小さいよこ
setEffRotateKey( spep_2+210, ctBaki, 0);
setEffAlphaKey( spep_2+210, ctBaki, 0);

entryFade( spep_2+22, 2, 3, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_2+164, 2, 3, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

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

------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------
-- ** SE等 ** --
--[[
playSe( spep_2+25, 1009);
playSe( spep_2+35, 1010);
playSe( spep_2+45, 1009);
playSe( spep_2+55, 1010);
playSe( spep_2+65, 1009);
playSe( spep_2+75, 1010);
playSe( spep_2+95, 1009);
playSe( spep_2+105, 1010);
playSe( spep_2+115, 1009);
playSe( spep_2+124, 1009);
playSe( spep_2+168, 1011);
]]
--v4.11調整
playSe( spep_2+25, 1009);
setSeVolume(spep_2+25, 1009,85);
playSe( spep_2+35, 1010);
setSeVolume( spep_2+35, 1010,85);
playSe( spep_2+45, 1009);
setSeVolume( spep_2+45, 1009,85);
playSe( spep_2+55, 1010);
setSeVolume( spep_2+55, 1010,85);
playSe( spep_2+65, 1009);
setSeVolume( spep_2+65, 1009,85);
playSe( spep_2+75, 1010);
setSeVolume( spep_2+75, 1010,85);
playSe( spep_2+95, 1009);
setSeVolume( spep_2+95, 1009,85);
playSe( spep_2+105, 1010);
setSeVolume( spep_2+105, 1010,85);
playSe( spep_2+115, 1009);
setSeVolume( spep_2+115, 1009,85);
playSe( spep_2+124, 1009);
setSeVolume( spep_2+124, 1009,85);
playSe( spep_2+168, 1011);
setSeVolume( spep_2+168, 1011,85);

------------------------------------------------------
-- ピンボール(120F)　
------------------------------------------------------

-- ** 次の準備 ** --
spep_3 = spep_2+220;
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
ctgogo = entryEffectLife( spep_3+40, 190006, 70, 0x100, -1,  0, 0 +35, 500);    -- ゴゴゴゴ
setEffShake(spep_3+40, ctgogo, 70, 10);
setEffScaleKey(spep_3+40, ctgogo, 0.8, 0.8);
setEffRotateKey(spep_3+40, ctgogo, 0);
setEffAlphaKey( spep_3+40, ctgogo, 255);

-- ** 音 ** --
playSe( spep_3+34, SE_04);

--playSe( spep_3, 1025);
--[[
playSe( spep_3+10, 1025);
playSe( spep_3+26, 1025);
playSe( spep_3+40, 1025);
playSe( spep_3+52, 1025);
playSe( spep_3+62, 1025);
]]
--v4.11調整
SE001 = playSe( spep_3+10, 1025);
setSeVolume( spep_3+10, 1025,95);
stopSe(spep_3+30,SE001,5);
SE002 = playSe( spep_3+26, 1025);
setSeVolume( spep_3+26, 1025,95);
stopSe(spep_3+45,SE002,5);
SE003 = playSe( spep_3+40, 1025);
setSeVolume( spep_3+40, 1025,95);
stopSe(spep_3+56,SE003,5);
SE004 = playSe( spep_3+52, 1025);
setSeVolume( spep_3+52, 1025,95);
stopSe(spep_3+66,SE004,5);
SE005 = playSe( spep_3+62, 1025);
setSeVolume( spep_3+62, 1025,95);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
spep_4=spep_3+120;

-- ** 次の準備 ** --
entryFade( spep_4-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--[[
-- カードカットイン
speff = entryEffect( spep_4, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
]]

-- ** 極限用 ** --
if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    playSe( spep_4, SE_05);
    speff = entryEffect( spep_4, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    
    
    elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    playSe( spep_4, SE_05);
    speff = entryEffect( spep_4, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    
    
    elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    playSe( spep_4, SE_05);
    speff = entryEffect( spep_4, 1121, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    end
    
-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_4, 906, 90, 0x100,  -1, 0,  0,  0); -- 集中線5
setEffMoveKey( spep_4, shuchusen4, 0, 0, 0);
setEffScaleKey( spep_4, shuchusen4, 1.8, 1.8);
setEffAlphaKey( spep_4, shuchusen4, 255);
setEffRotateKey( spep_4, shuchusen4, 0);

-- ** 音 ** --
--playSe( spep_4+5, SE_05);

------------------------------------------------------
-- キック(270F)　
------------------------------------------------------
-- ** 次の準備 ** --
spep_5=spep_4+90;
entryFade( spep_5-6, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 背景 ** --
entryFadeBg( spep_5, 0, 270, 0, 0, 0, 0, 255); -- ベース暗め　背景

-- ** エフェクト等 ** --
kikku=entryEffect(spep_5,SP_04,0x100,-1,0,0,0);

setEffMoveKey(spep_5,kikku,0,0,0);
setEffMoveKey(spep_5+270,kikku,0,0,0);
setEffScaleKey(spep_5,kikku,1.0,1.0);
setEffScaleKey(spep_5+270,kikku,1.0,1.0);
setEffAlphaKey(spep_5,kikku,255);
setEffAlphaKey(spep_5+270,kikku,255);
setEffRotateKey(spep_5,kikku,0);
setEffRotateKey(spep_5+270,kikku,0);

-- ** 集中線 ** --
shuchusen5 = entryEffectLife( spep_5, 906, 270, 0x100,  -1, 0,  0,  0); -- 集中線
setEffMoveKey( spep_3, shuchusen5, 0, 0, 0);
setEffScaleKey( spep_3, shuchusen5, 1.4, 1.4);
setEffAlphaKey( spep_3, shuchusen5, 255);
setEffRotateKey( spep_3, shuchusen5, 0);

-- ** てき ** --
setDisp( spep_5, 1, 1);
changeAnime(spep_5,1,6);--あおむけ味方
setShakeChara(spep_5, 1, 45, 10);
setMoveKey(spep_5,1,500,700,0);
setScaleKey( spep_5,    1,  1, 1);
setRotateKey(  spep_5,  1,  -40);


setRotateKey(  spep_5+15,  1,  -70);
setMoveKey(spep_5+15,1, 100, 200,0);

setRotateKey(  spep_5+30,  1,  -70);
setMoveKey(spep_5+30,1, 50, 100,0);

setRotateKey(  spep_5+34,  1,  -80);
setMoveKey(spep_5+34,1, 0, 50, 0);
setScaleKey( spep_5+34,    1,  1, 1);

setRotateKey(  spep_5+38,  1,  -80);
setMoveKey(spep_5+38,1, 0, 50, 0);
setScaleKey( spep_5+38,    1,  1, 1);

changeAnime(spep_5+39,1,8);--くのじ
setShakeChara(spep_5+39, 1, 30, 20);
setRotateKey(  spep_5+39,  1,  -130);
setMoveKey(spep_5+39,1, 70, -110, 0);
setScaleKey( spep_5+39,    1,  1.5, 1.5);

setRotateKey(  spep_5+74,  1,  -130);
setMoveKey(spep_5+74,1, 130, -170, 0);
setScaleKey( spep_5+74,    1,  1.5, 1.5);

setShakeChara(spep_5+74, 1, 50, 10);

setRotateKey(  spep_5+92,  1,  -130);
setMoveKey(spep_5+92,1, -150, 300, 0);
setScaleKey( spep_5+92,    1,  0.3, 0.3);

setRotateKey(  spep_5+130,  1,  -130);
setMoveKey(spep_5+120,1, -150, 300, 0);
setScaleKey( spep_5+120,    1,  0.3, 0.3);

setRotateKey(  spep_5+160,  1,  -130);
setMoveKey(spep_5+160,1, -180, 350, 0);
setScaleKey( spep_5+160,    1,  0.3, 0.3);

setDisp( spep_5+158, 1, 0);

entryFade( spep_5+36, 2, 3, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_5+154, 2, 3, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 音 ** --
playSe( spep_5+42, 1011);
playSe( spep_5+160, SE_10);

-- ダメージ表示
dealDamage(spep_5+160);
--entryFade( spep_5+245, 9,  10, 1, 0, 0, 0, 255);             -- black fade
endPhase( spep_5+260);

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
entryFadeBg( spep_2, 0, 220, 0, 0, 0, 0, 255);  -- 黒　背景

-- ** エフェクト等 ** --
rengeki = entryEffect( spep_2, SP_02x, 0x100, -1, 0, 0, 0);   --迫る〜命中　50f
setEffScaleKey( spep_2, rengeki, 1, 1);
setEffMoveKey( spep_2, rengeki, 0, 0, 0);
setEffAlphaKey( spep_2, rengeki, 255);
setEffAlphaKey( spep_2+220, rengeki, 255);
setEffAlphaKey( spep_2+221, rengeki, 0);

-- ** 流線 ** --
yokosen2 = entryEffectLife(spep_2, 914, 170, 0x80,  -1, 0,  0,  0);   -- 流線

setEffScaleKey(spep_2, yokosen, 1.4, 1.4);
setEffScaleKey(spep_2+170, yokosen, 1.4, 1.4);
setEffAlphaKey(spep_2,yokosen,255);
setEffAlphaKey(spep_2+170,yokosen,255);
setEffAlphaKey(spep_2+171,yokosen,0);
setEffRotateKey(spep_2, yokosen, 0);
setEffRotateKey(spep_2+170, yokosen, 0);

-- ** 斜め線 ** --
nanamesen2 = entryEffectLife(spep_2+171, 921, 50, 0x80,  -1, 0,  0,  0);   -- 流線

setEffScaleKey(spep_2+171, nanamesen2, 1.7, 1.3);
setEffScaleKey(spep_2+220, nanamesen2, 1.7, 1.3);
setEffAlphaKey(spep_2+171,nanamesen2,255);
setEffAlphaKey(spep_2+220,nanamesen2,255);
setEffAlphaKey(spep_2+221,nanamesen2,0);
setEffRotateKey(spep_2+171, nanamesen2, -50);
setEffRotateKey(spep_2+220, nanamesen2, -50);

rengeki2 = entryEffect( spep_2, SP_02urax, 0x80, -1, 0, 0, 0);   --迫る〜命中　50f
setEffScaleKey( spep_2, rengeki2, 1, 1);
setEffMoveKey( spep_2, rengeki2, 0, 0, 0);
setEffAlphaKey( spep_2, rengeki2, 255);
setEffAlphaKey( spep_2+220, rengeki2, 255);
setEffAlphaKey( spep_2+221, rengeki2, 0);


-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_2, 906, 220, 0x100,  -1, 0,  0,  0); -- 集中線
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

changeAnime( spep_2+25, 1, 108);   --くの字

setShakeChara(spep_2+31, 1, 92, 15 );

setMoveKey(  spep_2+31,  1,  30,  40, 0);
--setMoveKey(  spep_2+70,  1,  100,  0, 0);

--setMoveKey(  spep_2+63,  1,  60,  48, 0);
setMoveKey(  spep_2+103,  1,  60,  48, 0);

setRotateKey(  spep_2,  1,  0);
setRotateKey(  spep_2+122,  1,  0);

setMoveKey(  spep_2+120,  1,   70,  70, 0);
setRotateKey(  spep_2+123,  1,  -30);
setMoveKey(  spep_2+123,  1,   70,  70, 0);
setMoveKey(  spep_2+124,  1,   70,  90, 0);
setRotateKey(  spep_2+124,  1,  -50);
changeAnime( spep_2+124, 1, 106);  --あおむけ
setShakeChara(spep_2+124, 1, 44, 10);

setMoveKey(  spep_2+130,  1,   70,  120, 0);

setMoveKey(spep_2+150, 1, 70, 150, 0);
setRotateKey(spep_2+166, 1, -40);

setMoveKey(spep_2+166, 1, 70, 200, 0);

changeAnime(spep_2+167, 1, 108);--くの字
setShakeChara(spep_2+167, 1, 34, 20);

setRotateKey(spep_2+167,1,-30);
setMoveKey(spep_2+167,1,70,200,0);
--setMoveKey(spep_2+135,1,70,200,0);
setMoveKey(spep_2+190,1,70,200,0);
setShakeChara(spep_2+190, 1, 30, 10);

setMoveKey(spep_2+190,1,200,300,0);
setMoveKey(spep_2+218,1,300,400,0);

setScaleKey(spep_2,1,1.3,1.3);
setScaleKey(spep_2+190,1,1.3,1.3);
setScaleKey(spep_2+218,1,0,0);
setDisp(spep_2+219,1,0);--敵消す

-- 書き文字エントリー
ctDokgaga = entryEffectLife( spep_2+25, 10017, 125, 0, -1, 0, 0, 0); -- ドガガガッ
setEffRotateKey(spep_2+25, ctDokgaga, 0);
setEffShake(spep_2+25, ctDokgaga, 125, 15);
setEffAlphaKey(spep_2+25, ctDokgaga, 255);
setEffAlphaKey(spep_2+140, ctDokgaga, 255);
setEffAlphaKey(spep_2+150, ctDokgaga, 0);
setEffScaleKey(spep_2+24, ctDokgaga, 1.8, 1.8);
setEffScaleKey(spep_2+30, ctDokgaga, 2.5, 2.5);
setEffScaleKey(spep_2+150, ctDokgaga, 2.5, 2.5);
setEffMoveKey( spep_2+25, ctDokgaga,  0,  350,  0);
setEffMoveKey( spep_2+150, ctDokgaga,  0,  350,  0);

-- 書き文字エントリー
ctBaki = entryEffectLife(spep_2+167, 10020, 43, 0x100, -1, 0, -100, 350); -- バキ

setEffShake( spep_2+167, ctBaki, 30, 15);

setEffAlphaKey( spep_2+167, ctBaki, 255); --小さいななめ
setEffScaleKey( spep_2+167, ctBaki, 1.4, 1.4);
setEffRotateKey( spep_2+167, ctBaki, -10);

setEffScaleKey( spep_2+169, ctBaki, 1.4, 1.4);
setEffRotateKey( spep_2+169, ctBaki, -10);

setEffScaleKey( spep_2+170, ctBaki, 2, 2);--大きいよこ
setEffRotateKey( spep_2+170, ctBaki, 10);

setEffScaleKey( spep_2+174, ctBaki, 2, 2);
setEffRotateKey( spep_2+174, ctBaki, 10);

setEffScaleKey( spep_2+175, ctBaki, 1.6, 1.6);--小さいななめ
setEffRotateKey( spep_2+175, ctBaki, -10);

setEffScaleKey( spep_2+179, ctBaki, 1.6, 1.6);--小さいななめ
setEffRotateKey( spep_2+179, ctBaki, -10);

setEffScaleKey( spep_2+180, ctBaki, 1.6, 1.6);--小さいよこ
setEffRotateKey( spep_2+180, ctBaki, 10);

setEffScaleKey( spep_2+181, ctBaki, 1.6, 1.6);--小さいよこ
setEffRotateKey( spep_2+181, ctBaki, 10);

setEffScaleKey( spep_2+182, ctBaki, 1.4, 1.4);--小さい小さいよこ
setEffRotateKey( spep_2+182, ctBaki, 0);
setEffScaleKey( spep_2+183, ctBaki, 2, 2);--小さい小さいよこ
setEffScaleKey( spep_2+190, ctBaki, 2, 2);--小さい小さいよこ
setEffAlphaKey( spep_2+190, ctBaki, 255);

setEffScaleKey( spep_2+210, ctBaki, 3, 3);--小さい小さいよこ
setEffRotateKey( spep_2+210, ctBaki, 0);
setEffAlphaKey( spep_2+210, ctBaki, 0);

entryFade( spep_2+22, 2, 3, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_2+164, 2, 3, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

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

------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------
-- ** SE等 ** --
--[[
playSe( spep_2+25, 1009);
playSe( spep_2+35, 1010);
playSe( spep_2+45, 1009);
playSe( spep_2+55, 1010);
playSe( spep_2+65, 1009);
playSe( spep_2+75, 1010);
playSe( spep_2+95, 1009);
playSe( spep_2+105, 1010);
playSe( spep_2+115, 1009);
playSe( spep_2+124, 1009);
playSe( spep_2+168, 1011);
]]
--v4.11調整
playSe( spep_2+25, 1009);
setSeVolume(spep_2+25, 1009,85);
playSe( spep_2+35, 1010);
setSeVolume( spep_2+35, 1010,85);
playSe( spep_2+45, 1009);
setSeVolume( spep_2+45, 1009,85);
playSe( spep_2+55, 1010);
setSeVolume( spep_2+55, 1010,85);
playSe( spep_2+65, 1009);
setSeVolume( spep_2+65, 1009,85);
playSe( spep_2+75, 1010);
setSeVolume( spep_2+75, 1010,85);
playSe( spep_2+95, 1009);
setSeVolume( spep_2+95, 1009,85);
playSe( spep_2+105, 1010);
setSeVolume( spep_2+105, 1010,85);
playSe( spep_2+115, 1009);
setSeVolume( spep_2+115, 1009,85);
playSe( spep_2+124, 1009);
setSeVolume( spep_2+124, 1009,85);
playSe( spep_2+168, 1011);
setSeVolume( spep_2+168, 1011,85);

------------------------------------------------------
-- ピンボール(120F)　
------------------------------------------------------

-- ** 次の準備 ** --
spep_3 = spep_2+220;
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
--[[
playSe( spep_3+10, 1025);
playSe( spep_3+26, 1025);
playSe( spep_3+40, 1025);
playSe( spep_3+52, 1025);
playSe( spep_3+62, 1025);
]]
--v4.11調整
SE001 = playSe( spep_3+10, 1025);
setSeVolume( spep_3+10, 1025,95);
stopSe(spep_3+30,SE001,5);
SE002 = playSe( spep_3+26, 1025);
setSeVolume( spep_3+26, 1025,95);
stopSe(spep_3+45,SE002,5);
SE003 = playSe( spep_3+40, 1025);
setSeVolume( spep_3+40, 1025,95);
stopSe(spep_3+56,SE003,5);
SE004 = playSe( spep_3+52, 1025);
setSeVolume( spep_3+52, 1025,95);
stopSe(spep_3+66,SE004,5);
SE005 = playSe( spep_3+62, 1025);
setSeVolume( spep_3+62, 1025,95);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
spep_4=spep_3+120;

-- ** 次の準備 ** --
entryFade( spep_4-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--[[
-- カードカットイン
speff = entryEffect( spep_4, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
]]
-- ** 極限用 ** --
if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    playSe( spep_4, SE_05);
    speff = entryEffect( spep_4, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    
    
    elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    playSe( spep_4, SE_05);
    speff = entryEffect( spep_4, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    
    
    elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    playSe( spep_4, SE_05);
    speff = entryEffect( spep_4, 1121, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    end
    

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_4, 906, 90, 0x100,  -1, 0,  0,  0); -- 集中線5
setEffMoveKey( spep_4, shuchusen4, 0, 0, 0);
setEffScaleKey( spep_4, shuchusen4, 1.8, 1.8);
setEffAlphaKey( spep_4, shuchusen4, 255);
setEffRotateKey( spep_4, shuchusen4, 0);

-- ** 音 ** --
--playSe( spep_4+5, SE_05);

------------------------------------------------------
-- キック(270F)　
------------------------------------------------------
-- ** 次の準備 ** --
spep_5=spep_4+90;
entryFade( spep_5-6, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 背景 ** --
entryFadeBg( spep_5, 0, 270, 0, 0, 0, 0, 255); -- ベース暗め　背景

-- ** エフェクト等 ** --
kikku=entryEffect(spep_5,SP_04x,0x100,-1,0,0,0);

setEffMoveKey(spep_5,kikku,0,0,0);
setEffMoveKey(spep_5+270,kikku,0,0,0);
setEffScaleKey(spep_5,kikku,1.0,1.0);
setEffScaleKey(spep_5+270,kikku,1.0,1.0);
setEffAlphaKey(spep_5,kikku,255);
setEffAlphaKey(spep_5+270,kikku,255);
setEffRotateKey(spep_5,kikku,0);
setEffRotateKey(spep_5+270,kikku,0);

-- ** 集中線 ** --
shuchusen5 = entryEffectLife( spep_5, 906, 270, 0x100,  -1, 0,  0,  0); -- 集中線
setEffMoveKey( spep_3, shuchusen5, 0, 0, 0);
setEffScaleKey( spep_3, shuchusen5, 1.4, 1.4);
setEffAlphaKey( spep_3, shuchusen5, 255);
setEffRotateKey( spep_3, shuchusen5, 0);

-- ** てき ** --
setDisp( spep_5, 1, 1);
changeAnime(spep_5,1,6);--あおむけ味方
setShakeChara(spep_5, 1, 45, 10);
setMoveKey(spep_5,1,500,700,0);
setScaleKey( spep_5,    1,  1, 1);
setRotateKey(  spep_5,  1,  -40);


setRotateKey(  spep_5+15,  1,  -70);
setMoveKey(spep_5+15,1, 100, 200,0);

setRotateKey(  spep_5+30,  1,  -70);
setMoveKey(spep_5+30,1, 50, 100,0);

setRotateKey(  spep_5+34,  1,  -80);
setMoveKey(spep_5+34,1, 0, 50, 0);
setScaleKey( spep_5+34,    1,  1, 1);

setRotateKey(  spep_5+38,  1,  -80);
setMoveKey(spep_5+38,1, 0, 50, 0);
setScaleKey( spep_5+38,    1,  1, 1);

changeAnime(spep_5+39,1,8);--くのじ
setShakeChara(spep_5+39, 1, 30, 20);
setRotateKey(  spep_5+39,  1,  -130);
setMoveKey(spep_5+39,1, 70, -110, 0);
setScaleKey( spep_5+39,    1,  1.5, 1.5);

setRotateKey(  spep_5+74,  1,  -130);
setMoveKey(spep_5+74,1, 130, -170, 0);
setScaleKey( spep_5+74,    1,  1.5, 1.5);

setShakeChara(spep_5+74, 1, 50, 10);

setRotateKey(  spep_5+92,  1,  -130);
setMoveKey(spep_5+92,1, -150, 300, 0);
setScaleKey( spep_5+92,    1,  0.3, 0.3);

setRotateKey(  spep_5+130,  1,  -130);
setMoveKey(spep_5+120,1, -150, 300, 0);
setScaleKey( spep_5+120,    1,  0.3, 0.3);

setRotateKey(  spep_5+160,  1,  -130);
setMoveKey(spep_5+160,1, -180, 350, 0);
setScaleKey( spep_5+160,    1,  0.3, 0.3);

setDisp( spep_5+160, 1, 0);

entryFade( spep_5+36, 2, 3, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_5+154, 2, 3, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 音 ** --
playSe( spep_5+42, 1011);
playSe( spep_5+160, SE_10);

-- ダメージ表示
dealDamage(spep_5+158);
--entryFade( spep_5+245, 9,  10, 1, 0, 0, 0, 255);             -- black fade
endPhase( spep_5+260);

end