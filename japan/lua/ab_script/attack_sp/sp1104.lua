

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
SE_19 = 1018;
SE_20 = 10;
SE_21 = 1042;

tyo = -30;
tyo2 = -40;


SP_01 = 150412; --溜め
SP_02 = 150413;--突撃
SP_03 = 150414;--連撃
SP_04 = 150415;--右手タメ
SP_05 = 150416;--右手でる
SP_06 = 150417;--構える
SP_07 = 150418;--発射
SP_08 = 150419;--構える敵側
SP_09 = 150420;--発射敵側
SP_10 = 190011;--ギャン

SP_02e = 102156;

multi_frm = 2;

changeAnime( 0, 0, 0);                       -- 立ち
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
setVisibleUI(0, 0);
setMoveKey(   0,  0,  0,  0,  0);

playSe( 25, SE_01);  


ef = entryEffectLife( 10, SP_01, 110, 0x100,  -1,  0,  0,  0);   -- ためる
setEffMoveKey(  0,  ef,  0,  0,   0);
setEffScaleKey( 10, ef, 1.2, 1.2);
setEffRotateKey(0, ef, 0);
setEffAlphaKey( 0, ef, 255);

entryFade( 92, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setEffScaleKey( 10, ef, 0.8, 0.8);


-- ** エフェクト等 ** --
setShake( 0, 94, 15);
setEffShake( 0, ef, 94, 8);

-- 書き文字エントリー
shuchusen1 = entryEffectLife( 0, 906, 94, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 0, shuchusen1, 1.0, 1.0);
setEffScaleKey( 60, shuchusen1, 1.0, 1.0);
setEffScaleKey( 94, shuchusen1, 1.0, 1.0);

entryFadeBg( 0, 0, 100, 0, 10, 10, 10, 210);       -- ベース暗め　背景

spep_2 = 100;

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setMoveKey(   spep_2,   0,    0, 0,   0);
setEffMoveKey(  spep_2,  ef,  0,  0,   0);

playSe( spep_2, SE_05);
speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え



-- ** エフェクト等 ** --
playSe( spep_2, SE_04);

entryFade( spep_2+83, 5, 5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
------------------------------------------------------
-- 突進(70F)
------------------------------------------------------

ef2 = entryEffect( spep_2+92, SP_02, 0x100, -1,  0,  0,  0);
setEffMoveKey(  spep_2+92,  ef2,  0,  0,   0);
setEffScaleKey( spep_2+92, ef2, 1.0, 1.0);
setEffRotateKey(spep_2+92, ef2, 0);
setEffAlphaKey( spep_2+92, ef2, 255);

-- ** エフェクト等 ** --
playSe( spep_2+92, SE_19);

shuchusen2 = entryEffectLife( spep_2+92, 906, 60, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_2+92, shuchusen2, 1.5, 1.5);
setEffAlphaKey( spep_2+92, shuchusen2, 255);

entryFade( spep_2+155, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryFadeBg( spep_2, 0, 200, 0, 10, 10, 10, 210);       -- ベース暗め　背景

spep_1=spep_2+160; --100

------------------------------------------------------
-- 物理攻撃(100F)
------------------------------------------------------

ef3 = entryEffect( spep_1, SP_03, 0x100, -1,  0,  -20,  0);
setEffMoveKey(  spep_1,  ef3,  0,  0,   0);
setEffScaleKey( spep_1, ef3, 0.9, 0.9);
setEffRotateKey(spep_1, ef3, 0);
setEffAlphaKey( spep_1, ef3, 255);


setDisp( spep_1, 1, 1);                                  --敵
changeAnime( spep_1, 1, 104);
setMoveKey(  spep_1,   1,   230, 15,   0);
setMoveKey(  spep_1+20,   1,  195, 15,   0);
setScaleKey( spep_1,   1, 1.2, 1.2);
setScaleKey( spep_1+90,   1, 1.2, 1.2);
changeAnime( spep_1+18, 1, 108);                         --横にいく
setShakeChara( spep_1+18, 1, 52, 20);
setMoveKey(   spep_1+70,   1,   195, 15,   0);
setMoveKey(   spep_1+90,   1,  680, 15,   0);

playSe( spep_1+18, SE_13);
playSe( spep_1+26, SE_13);
playSe( spep_1+28, SE_15);
playSe( spep_1+30, SE_14);
playSe( spep_1+43, SE_14);
playSe( spep_1+55, SE_16);
playSe( spep_1+65, SE_16);


ryuusenn = entryEffectLife( spep_1, 914, 95, 0x80,  -1, 0,  0,  0);   -- 流線
setEffScaleKey( spep_1, ryuusenn, 1.5, 1.5);
setEffAlphaKey( spep_1, ryuusenn, 255);

entryFade( spep_1+93, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryFadeBg( spep_1, 0, 100, 0, 10, 10, 10, 250);       -- ベース暗め　背景

spep_0 = spep_1+100 --100+160
------------------------------------------------------
-- カードカットイン(100F)
------------------------------------------------------
ef4 = entryEffect( spep_0, SP_04, 0x100, -1,  0,  0,  0);
setEffMoveKey(  spep_0,  ef4,  0,  0,   0);
setEffScaleKey( spep_0, ef4, 0.9, 0.9);
setEffRotateKey(spep_0, ef4, 0);
setEffAlphaKey( spep_0, ef4, 255);

setDisp( spep_0, 1, 0);
speff = entryEffect(  spep_0,   1504,   0x100,     -1,  0,  0,  0);   -- eff_005 (カットイン) 117で終了
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_0,   1505,   0x100,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
speff = entryEffect(  spep_0,   1503,   0x80,     -1,  0,  0,  0);   -- 背景

playSe( spep_0, SE_05);


shuchusen3 = entryEffectLife( spep_0, 906, 159, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_0, shuchusen3, 1.5, 1.5);

ct = entryEffectLife( spep_0+13, 190006, 78, 0x100, -1, 0, 30, 510);    -- ゴゴゴ・・・
setEffShake(spep_0+13, ct, 71, 8);
setEffScaleKey(spep_0+13, ct, 0.7, 0.7);

entryFade( spep_0+79, 8, 8, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryFadeBg( spep_0, 0, 162, 0, 10, 10, 10, 210);       -- ベース暗め　背景

------------------------------------------------------
-- 手出現(60F)
------------------------------------------------------
ef5 = entryEffect( spep_0+96, SP_05, 0x100, 0,  0,  0,  0);
setEffMoveKey(  spep_0+96,  ef5,  0,  0,   0);
setEffScaleKey( spep_0+96, ef5, 0.9, 0.9);
setEffRotateKey(spep_0+96, ef5, 0);
setEffAlphaKey( spep_0+96, ef5, 255);

playSe( spep_0+96, SE_21);

entryFade( spep_0+149, 5, 5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_4 = spep_0+160 --100+160+100
------------------------------------------------------
-- ピッチャー振りかぶって…80
------------------------------------------------------
setDisp( spep_4+0, 0, 0);
setMoveKey(   spep_4,   0,    0, 0,   0);

sen2 = entryEffectLife( spep_4, 921, 70, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_4, sen2, 150);
setEffScaleKey( spep_4, sen2, 1.6, 1.6);

playSe( spep_4+20, SE_19);


ef6 = entryEffect( spep_4, SP_06, 0x100, -1,  0,  -100,  0);
setEffMoveKey(  spep_4, ef6,  0,  0,   0);
setEffScaleKey( spep_4, ef6, 0.8, 0.8);
setEffRotateKey(spep_4, ef6, 0);
setEffAlphaKey( spep_4, ef6, 255);


setShake( spep_4, 60, 10);

shuchusen4 = entryEffectLife( spep_4+42, 906, 70, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_4, shuchusen4, 1.5, 1.5);
setEffAlphaKey( spep_4, shuchusen4, 255);


entryFadeBg( spep_4, 0, 75, 0, 10, 10, 10, 210);       -- ベース暗め　背景
setMoveKey(   spep_4+80,   0,    0, 0,   0);

entryFade( spep_4+70, 5, 5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_5=spep_4+80; --100+160+100+160


------------------------------------------------------
-- 投げた！120
------------------------------------------------------

sen2 = entryEffectLife( spep_5-1, 921, 161, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_5-1, sen2, 30);
setEffScaleKey( spep_5-1, sen2, 1.6, 1.6);
setEffAlphaKey(spep_5-1, sen2, 0);
setEffAlphaKey(spep_5, sen2, 255);

setShakeChara( spep_5, 0, 34, 30);
setShake( spep_5, 60, 15);

ef7 = entryEffectLife( spep_5, SP_07, 116, 0x100,  -1,  0,  -30,  10);   -- 伸びるかめはめ波
setEffMoveKey(  spep_5, ef7,  0,  0,   0);
setEffScaleKey( spep_5, ef7, 0.8, 0.8);
setEffRotateKey(spep_5, ef7, 0);
setEffAlphaKey( spep_5, ef7, 255);

playSe( spep_5, SE_07);



-- ** エフェクト等 ** --
entryFadeBg( spep_5, 0, 150, 0, 10, 10, 10, 210);       -- ベース暗め　背景

shuchusen5 = entryEffectLife( spep_5-1, 906, 109, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffRotateKey(spep_5-1, shuchusen5, 145);
setEffScaleKey( spep_5-1, shuchusen5, 2.8, 2.8);

-- 書き文字エントリー
ct2 = entryEffectLife( spep_5, 10012, 150, 0x100, -1, 0, 100, 200); -- ズオッ
setEffShake(spep_5, ct2, 92, 5);
setEffRotateKey(spep_5, ct2, 31);
setEffShake(spep_5, ct2, 71, 30);
setEffAlphaKey(spep_5, ct2, 255);
setEffAlphaKey(spep_5+15, ct2, 255);
setEffAlphaKey(spep_5+52, ct2, 0);
setEffMoveKey(  spep_5+5,  ct2,  130,  290,   0);
setEffMoveKey(  spep_5+35,  ct2,  130,  290,   0);
setEffMoveKey(  spep_5+52, ct2,  220,  350,   0);
setEffScaleKey(spep_5, ct2, 0.0, 0.0);
setEffScaleKey(spep_5+5, ct2, 2.8, 2.8);
setEffScaleKey(spep_5+35, ct2, 2.8, 2.8);
setEffScaleKey(spep_5+52, ct2, 8.0, 8.0);
--playSe( spep_5+40, SE_07);


setDisp( spep_5+60, 1, 1);                             --敵
changeAnime( spep_5+60, 1, 100);
setScaleKey( spep_5,  0,  0.8, 0.8);
setMoveKey(  spep_5+60,    1,   625,  -320,   0);
setMoveKey(  spep_5+85,    1,  170,  -25,   0);
setMoveKey(  spep_5+105,   1,  180,  -25,   0);
changeAnime( spep_5+101, 1, 108);
setShakeChara( spep_5+101, 1, 20, 10);
setDisp( spep_5+120, 1, 0);

playSe( spep_5+101, SE_09);

spep_6=spep_5+120; --100+160+100+160+80

------------------------------------------------------
-- ギャン(100F)
------------------------------------------------------

playSe( spep_6+60, SE_09);


-- ** エフェクト等 ** --
setShakeChara( spep_6, 1, 99, 20);

entryFadeBg( spep_6, 0, 200, 0, 10, 10, 10, 210);       -- ベース暗め　背景

entryFade( spep_6-8, 5,  5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


-- 書き文字エントリー
gyan = entryEffect( spep_6, SP_10,   0x80, -1,  0,  0,  0);   -- ギャン

ct3 = entryEffectLife( spep_6, 10006, 70, 0x100, -1, 0, 0, 300); -- ギャン
setEffShake(spep_6, ct3, 99, 20);
setEffScaleKey( spep_6, ct3, 2.8, 2.8);
--setEffScaleKey( spep_6+10, ct3, 2.4, 2.4);
setEffScaleKey( spep_6+64, ct3, 4, 4);
setEffAlphaKey(spep_6, ct3, 255);
setEffAlphaKey(spep_6+10, ct3, 255);
setEffAlphaKey(spep_6+64, ct3, 0);

entryFade( spep_6+52, 6,  5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


removeAllEffect(spep_6+64);

spep_7=spep_6+64; --100+160+100+160+80+120=620

------------------------------------------------------
-- 回避
------------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge = 245; --エンドフェイズのフレーム数を置き換える


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

bakuhatu = entryEffect( spep_7, 1593, 0,  -1,  0,  0,  0);  

setDisp( spep_7, 1, 0);

playSe( spep_7+4, SE_10);

-- ダメージ表示
dealDamage(spep_7+17);

entryFade( spep_7+188, 5,  15, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_7+190);

else















------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
setVisibleUI(0, 0);
setMoveKey(   0,  0,  0,  0,  0);

playSe( 25, SE_01);  


ef = entryEffectLife( 10, SP_01, 110, 0x100,  -1,  0,  0,  0);   -- ためる
setEffMoveKey(  0,  ef,  0,  0,   0);
setEffScaleKey( 10, ef, 1.2, 1.2);
setEffRotateKey(0, ef, 0);
setEffAlphaKey( 0, ef, 255);

entryFade( 92, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setEffScaleKey( 10, ef, 0.8, 0.8);


-- ** エフェクト等 ** --
setShake( 0, 94, 15);
setEffShake( 0, ef, 94, 8);

-- 書き文字エントリー
shuchusen1 = entryEffectLife( 0, 906, 94, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 0, shuchusen1, 1.0, 1.0);
setEffScaleKey( 60, shuchusen1, 1.0, 1.0);
setEffScaleKey( 94, shuchusen1, 1.0, 1.0);

entryFadeBg( 0, 0, 100, 0, 10, 10, 10, 210);       -- ベース暗め　背景

spep_2 = 100;

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------

setMoveKey(   spep_2,   0,    0, 0,   0);
setEffMoveKey(  spep_2,  ef,  0,  0,   0);

playSe( spep_2, SE_05);
speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え



-- ** エフェクト等 ** --
playSe( spep_2, SE_04);

entryFade( spep_2+83, 5, 5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 突進(70F)
------------------------------------------------------

ef2 = entryEffect( spep_2+92, SP_02, 0x100, -1,  0,  0,  0);
setEffMoveKey(  spep_2+92,  ef2,  0,  0,   0);
setEffScaleKey( spep_2+92, ef2, 1.0, 1.0);
setEffRotateKey(spep_2+92, ef2, 0);
setEffAlphaKey( spep_2+92, ef2, 255);

-- ** エフェクト等 ** --
playSe( spep_2+92, SE_19);

shuchusen2 = entryEffectLife( spep_2+92, 906, 60, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_2+92, shuchusen2, 1.5, 1.5);
setEffAlphaKey( spep_2+92, shuchusen2, 255);

entryFade( spep_2+155, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryFadeBg( spep_2, 0, 200, 0, 10, 10, 10, 210);       -- ベース暗め　背景

spep_1=spep_2+160; --100

------------------------------------------------------
-- 物理攻撃(100F)
------------------------------------------------------

ef3 = entryEffect( spep_1, SP_03, 0x100, -1,  0,  -20,  0);
setEffMoveKey(  spep_1,  ef3,  0,  0,   0);
setEffScaleKey( spep_1, ef3, 0.9, 0.9);
setEffRotateKey(spep_1, ef3, 0);
setEffAlphaKey( spep_1, ef3, 255);


setDisp( spep_1, 1, 1);                                  --敵
changeAnime( spep_1, 1, 104);
setMoveKey(  spep_1,   1,   230, 15,   0);
setMoveKey(  spep_1+20,   1,  195, 15,   0);
setScaleKey( spep_1,   1, 1.2, 1.2);
setScaleKey( spep_1+90,   1, 1.2, 1.2);
changeAnime( spep_1+18, 1, 108);                         --横にいく
setShakeChara( spep_1+18, 1, 52, 20);
setMoveKey(   spep_1+70,   1,   195, 15,   0);
setMoveKey(   spep_1+90,   1,  680, 15,   0);

playSe( spep_1+18, SE_13);
playSe( spep_1+26, SE_13);
playSe( spep_1+28, SE_15);
playSe( spep_1+30, SE_14);
playSe( spep_1+43, SE_14);
playSe( spep_1+55, SE_16);
playSe( spep_1+65, SE_16);


ryuusenn = entryEffectLife( spep_1, 914, 95, 0x80,  -1, 0,  0,  0);   -- 流線
setEffScaleKey( spep_1, ryuusenn, 1.5, 1.5);
setEffAlphaKey( spep_1, ryuusenn, 255);

entryFade( spep_1+93, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryFadeBg( spep_1, 0, 100, 0, 10, 10, 10, 250);       -- ベース暗め　背景

spep_0 = spep_1+100 --100+160
------------------------------------------------------
-- カードカットイン(100F)
------------------------------------------------------

ef4 = entryEffect( spep_0, SP_04, 0x100, -1,  0,  0,  0);
setEffMoveKey(  spep_0,  ef4,  0,  0,   0);
setEffScaleKey( spep_0, ef4, -0.9, 0.9);
setEffRotateKey(spep_0, ef4, 0);
setEffAlphaKey( spep_0, ef4, 255);
--[[
setDisp( spep_0, 1, 0);
speff = entryEffect(  spep_0,   1504,   0x100,     -1,  0,  0,  0);   -- eff_005 (カットイン) 117で終了
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_0,   1505,   0x100,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
speff = entryEffect(  spep_0,   1503,   0x80,     -1,  0,  0,  0);   -- 背景
]]--
playSe( spep_0, SE_05);


shuchusen3 = entryEffectLife( spep_0, 906, 159, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_0, shuchusen3, 1.5, 1.5);

ct = entryEffectLife( spep_0+13, 190006, 78, 0x100, -1, 0, 30, 480);    -- ゴゴゴ・・・
setEffShake(spep_0+13, ct, 71, 8);
setEffScaleKey(spep_0+13, ct, -0.7, 0.7);

entryFade( spep_0+79, 8, 8, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryFadeBg( spep_0, 0, 162, 0, 10, 10, 10, 210);       -- ベース暗め　背景

------------------------------------------------------
-- 手出現(60F)
------------------------------------------------------
ef5 = entryEffect( spep_0+96, SP_05, 0x100, 0,  0,  0,  0);
setEffMoveKey(  spep_0+96,  ef5,  0,  0,   0);
setEffScaleKey( spep_0+96, ef5, -0.9, 0.9);
setEffRotateKey(spep_0+96, ef5, 0);
setEffAlphaKey( spep_0+96, ef5, 255);

playSe( spep_0+96, SE_21);

entryFade( spep_0+149, 5, 5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_4 = spep_0+160 --100+160+100

------------------------------------------------------
-- ピッチャー振りかぶって…80
------------------------------------------------------
setDisp( spep_4+0, 0, 0);
setMoveKey(   spep_4,   0,    0, 0,   0);

sen2 = entryEffectLife( spep_4, 921, 70, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_4, sen2, 150);
setEffScaleKey( spep_4, sen2, 1.6, 1.6);

playSe( spep_4+20, SE_19);


ef6 = entryEffect( spep_4, SP_08, 0x100, -1,  0,  -100,  0);
setEffMoveKey(  spep_4, ef6,  0,  0,   0);
setEffScaleKey( spep_4, ef6, 0.8, 0.8);
setEffRotateKey(spep_4, ef6, 0);
setEffAlphaKey( spep_4, ef6, 255);


setShake( spep_4, 60, 10);

shuchusen4 = entryEffectLife( spep_4+42, 906, 70, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_4, shuchusen4, 1.5, 1.5);
setEffAlphaKey( spep_4, shuchusen4, 255);


entryFadeBg( spep_4, 0, 75, 0, 10, 10, 10, 210);       -- ベース暗め　背景
setMoveKey(   spep_4+80,   0,    0, 0,   0);

entryFade( spep_4+70, 5, 5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_5=spep_4+80; --100+160+100+160


------------------------------------------------------
-- 投げた！120
------------------------------------------------------

sen2 = entryEffectLife( spep_5-1, 921, 161, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_5-1, sen2, 30);
setEffScaleKey( spep_5-1, sen2, 1.6, 1.6);
setEffAlphaKey(spep_5-1, sen2, 0);
setEffAlphaKey(spep_5, sen2, 255);

setShakeChara( spep_5, 0, 34, 30);
setShake( spep_5, 60, 15);

ef7 = entryEffectLife( spep_5, SP_09, 116, 0x100,  -1,  0,  -30,  10);   -- 伸びるかめはめ波
setEffMoveKey(  spep_5, ef7,  0,  0,   0);
setEffScaleKey( spep_5, ef7, 0.8, 0.8);
setEffRotateKey(spep_5, ef7, 0);
setEffAlphaKey( spep_5, ef7, 255);

playSe( spep_5, SE_07);



-- ** エフェクト等 ** --
entryFadeBg( spep_5, 0, 150, 0, 10, 10, 10, 210);       -- ベース暗め　背景

shuchusen5 = entryEffectLife( spep_5-1, 906, 109, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffRotateKey(spep_5-1, shuchusen5, 145);
setEffScaleKey( spep_5-1, shuchusen5, 2.8, 2.8);

-- 書き文字エントリー
ct2 = entryEffectLife( spep_5, 10012, 150, 0x100, -1, 0, 100, 200); -- ズオッ
setEffShake(spep_5, ct2, 92, 5);
setEffRotateKey(spep_5, ct2, 31);
setEffShake(spep_5, ct2, 71, 30);
setEffAlphaKey(spep_5, ct2, 255);
setEffAlphaKey(spep_5+15, ct2, 255);
setEffAlphaKey(spep_5+52, ct2, 0);
setEffMoveKey(  spep_5+5,  ct2,  130,  290,   0);
setEffMoveKey(  spep_5+35,  ct2,  130,  290,   0);
setEffMoveKey(  spep_5+52, ct2,  220,  350,   0);
setEffScaleKey(spep_5, ct2, 0.0, 0.0);
setEffScaleKey(spep_5+5, ct2, 2.8, 2.8);
setEffScaleKey(spep_5+35, ct2, 2.8, 2.8);
setEffScaleKey(spep_5+52, ct2, 8.0, 8.0);
--playSe( spep_5+40, SE_07);


setDisp( spep_5+60, 1, 1);                             --敵
changeAnime( spep_5+60, 1, 100);
setScaleKey( spep_5,  0,  0.8, 0.8);
setMoveKey(  spep_5+60,    1,   625,  -320,   0);
setMoveKey(  spep_5+85,    1,  170,  -25,   0);
setMoveKey(  spep_5+105,   1,  180,  -25,   0);
changeAnime( spep_5+101, 1, 108);
setShakeChara( spep_5+101, 1, 20, 10);
setDisp( spep_5+120, 1, 0);

playSe( spep_5+101, SE_09);

spep_6=spep_5+120; --100+160+100+160+80

------------------------------------------------------
-- ギャン(100F)
------------------------------------------------------

playSe( spep_6+60, SE_09);


-- ** エフェクト等 ** --
setShakeChara( spep_6, 1, 99, 20);

entryFadeBg( spep_6, 0, 200, 0, 10, 10, 10, 210);       -- ベース暗め　背景

entryFade( spep_6-8, 5,  5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


-- 書き文字エントリー
gyan = entryEffect( spep_6, SP_10,   0x80, -1,  0,  0,  0);   -- ギャン

ct3 = entryEffectLife( spep_6, 10006, 70, 0x100, -1, 0, 0, 300); -- ギャン
setEffShake(spep_6, ct3, 99, 20);
setEffScaleKey( spep_6, ct3, 2.8, 2.8);
--setEffScaleKey( spep_6+10, ct3, 2.4, 2.4);
setEffScaleKey( spep_6+64, ct3, 4, 4);
setEffAlphaKey(spep_6, ct3, 255);
setEffAlphaKey(spep_6+10, ct3, 255);
setEffAlphaKey(spep_6+64, ct3, 0);

entryFade( spep_6+52, 6,  5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


removeAllEffect(spep_6+64);

spep_7=spep_6+64; --100+160+100+160+80+120=620

------------------------------------------------------
-- 回避
------------------------------------------------------


if (_IS_DODGE_ == 1) then

SP_dodge = 245; --エンドフェイズのフレーム数を置き換える


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

bakuhatu = entryEffect( spep_7, 1593, 0,  -1,  0,  0,  0);  

setDisp( spep_7, 1, 0);

playSe( spep_7+4, SE_10);

-- ダメージ表示
dealDamage(spep_7+17);

entryFade( spep_7+188, 5,  15, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_7+190);

end