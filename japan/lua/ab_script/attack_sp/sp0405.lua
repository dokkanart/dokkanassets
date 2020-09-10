print ("[lua]sp0404,405");

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
--SE_08 = 1042; --カットイン
SE_09 = 1023; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音

SE_12 = 09;

SP_01 = 150940;
SP_02 = 150941;
SP_03 = 150942;




multi_frm = 2;

changeAnime( 0, 0, 0);                       -- 立ち
setDisp( 0, 0, 1);
setDisp( 0, 1, 0);
setAnimeLoop( 0, 0, 1);
setMoveKey(   0,   0,    80, -50,   0);
setMoveKey(   1,   0,    80, -50,   0);
setMoveKey(   2,   0,    80, -50,   0);
setMoveKey(   3,   0,    80, -50,   0);
setMoveKey(   85,   0,    80, -50,   0);
setMoveKey(   0,   1,    0, 0,   0);
setMoveKey(   1,   1,    0, 0,   0);
setMoveKey(   2,   1,    0, 0,   0);
setMoveKey(   3,   1,    0, 0,   0);
setMoveKey(   280,   1,    0, 0,   0);
setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   1,   0, 1.5, 1.5);
setScaleKey(   2,   0, 1.5, 1.5);
setScaleKey(   3,   0, 1.5, 1.5);
setScaleKey(   85,   0, 1.5, 1.5);
setScaleKey(   0,   1, 1.5, 1.5);
setScaleKey(   1,   1, 1.5, 1.5);
setScaleKey(   2,   1, 1.5, 1.5);
setScaleKey(   3,   1, 1.5, 1.5);

setVisibleUI(0, 0);


------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then


------------------------------------------------------
-- 溜め！(100F)
------------------------------------------------------

changeAnime( 0, 0, 30);                       -- 溜め!
-- ** 音 ** --
--playSe( 3, SE_03);

-- ** エフェクト等 ** --


--setShakeChara( 0, 0, 85, 5);
setShakeChara( 0, 0, 85, 15);--12日深夜追加

entryEffect(  0,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect(  0,   1659,   0,     -1,  0,  0,  0);   -- eff_003 (気)

aura = entryEffectLife(  0,  1661, 120, 0x80,  -1,  0, 0,  -400); -- オーラ
setEffScaleKey( 0, aura, 3.2, 2.8);


speff = entryEffect(  0,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  0,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

-- ** 音 ** --
playSe( 3, SE_04);

-- ** 書き文字エントリ ** --
gogogo = entryEffectLife( 12, 190006, 71, 0x100, -1, 0, -110, 500); -- ゴゴゴゴゴ
setEffScaleKey( 12, gogogo, 0.9, 0.9);
setEffAlphaKey( 12, gogogo, 255);
setEffRotateKey( 12, gogogo, -10);


entryFade( 80, 3, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( 0, 0, 120, 0, 0, 0, 0, 255); -- ベース暗め　背景

-- ** 次の準備 ** --
spep_2 = 85;
setDisp( spep_2, 0, 0);
setMoveKey(   spep_2,   0,    0, -54,   0);
setScaleKey(   spep_2,   0, 1.7, 1.7);


------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------


speff = entryEffect( spep_2, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_2, 906, 91, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey( spep_2, shuchusen2, 0, 0, 0);
setEffScaleKey( spep_2, shuchusen2, 1.0, 1.0);
setEffAlphaKey( spep_2, shuchusen2, 255);
setEffRotateKey( spep_2, shuchusen2, 0);


-- ** 音 ** --
playSe( spep_2, SE_05);



-- ** 次の準備 ** --
spep_3 = spep_2+90;
entryFade( spep_3-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_3, 0, 120, 0, 0, 0, 0, 255); -- ベース暗め　背景

setDisp( spep_3, 1, 0);
setDisp( spep_3, 0, 1);
setMoveKey(   spep_3-1,   0,    50,  50,   0);
setMoveKey(   spep_3,   0,    50,  50,   0);
setMoveKey(   spep_3+30,   0,   50,  50,  0);
setScaleKey(   spep_3,   0, 1.5, 1.5);
setScaleKey(   spep_3+30,   0, 2.5, 2.5);
setShakeChara( spep_3, 0, 30, 10);

changeAnime( spep_3, 0, 17); 
setShakeChara( spep_3, 0, 120, 10);--12日深夜追加

------------------------------------------------------
--溜め～吐き出す
------------------------------------------------------

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_3, 906, 120, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey( spep_3, shuchusen3, 0, 0, 0);
setEffScaleKey( spep_3, shuchusen3, 1.7, 1.7);
setEffAlphaKey( spep_3, shuchusen3, 255);
setEffRotateKey( spep_3, shuchusen3, 0);

-- ** エフェクト等 ** --
kaenkaku = entryEffect( spep_3, SP_01, 0x100, -1, 0, 0, 0); --溜め～吐き出す
setEffMoveKey( spep_3, kaenkaku, 10, 110, 0);
setEffScaleKey( spep_3, kaenkaku, 1.0, 1.0);
setEffAlphaKey( spep_3, kaenkaku, 255);
setEffRotateKey( spep_3, kaenkaku, 0);
setEffShake( spep_3, kaenkaku, 10);--12日深夜追加

spname = entryEffectLife( spep_3, 1508,  30, 0x100,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

entryFade( spep_3+31, 1, 3, 6, fcolor_r, fcolor_g, fcolor_b, 220);     -- white fade

changeAnime( spep_3+31, 0, 31); 
setMoveKey(   spep_3+31,   0,  120,  -40,  0);
setMoveKey(   spep_3+60,   0,  -150,  80,  0);
setMoveKey(   spep_3+65,   0,  -800,  200,  0);
setMoveKey(   spep_3+119,   0,  -800,  200,  0);
setScaleKey(   spep_3+60,   0, 1.0, 1.0);

setDisp( spep_3+80, 0, 0);

-- ** 奥行き流線斜め ** --
okuyuki3 = entryEffectLife( spep_3+40, 921, 80, 0x80, -1, 0, 0, 0); -- 奥行き流線斜め
setEffMoveKey( spep_3+40, okuyuki3, 0, 0, 0);
setEffRotateKey( spep_3+40, okuyuki3, 210);
setEffScaleKey( spep_3+40, okuyuki3, 1.6, 1.6);
setEffAlphaKey( spep_3+40, okuyuki3, 255);


-- ** 音 ** --
playSe( spep_3+31, SE_07);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 250; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

setMoveKey(   SP_dodge,   0,    -8000, 0,   0);
setMoveKey(   SP_dodge+1,   0,    -80000, 0,   0);
--setEffAlphaKey( SP_dodge , kaenkaku, 255);
--setEffAlphaKey( SP_dodge+1 , kaenkaku, 0);

endPhase(SP_dodge+10);

do return end
else end
------------------------------------------------------
-- 回避外
------------------------------------------------------


-- ** 次の準備 ** --
spep_4 = spep_3+120;
entryFade( spep_4-6, 3, 9, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_4, 0, 90, 0, 0, 0, 0, 255); -- ベース暗め　背景

setDisp( spep_4, 0, 0);
setMoveKey(   spep_4-1,   0,     200, 250,   0);
setMoveKey(   spep_4,   0,     200, 250,   0);
setScaleKey(   spep_4,   0, 1.7, 1.7);

------------------------------------------------------
-- 火炎
------------------------------------------------------

-- ** 集中線 ** --
shuchusen41 = entryEffectLife( spep_4, 922, 90, 0x80,  -1, 0,  0,  100);   -- 横線
setEffMoveKey( spep_4, shuchusen41, 0, 100, 0);
setEffScaleKey( spep_4, shuchusen41, 1.5, 1.5);
setEffAlphaKey( spep_4, shuchusen41, 255);
setEffRotateKey( spep_4, shuchusen41, 90);

-- ** 集中線 ** --
shuchusen42 = entryEffectLife( spep_4+44, 906, 44, 0x100,  -1, 0,  0,  100);   -- 集中線
setEffMoveKey( spep_4+44, shuchusen42, 0, 100, 0);
setEffScaleKey( spep_4+44, shuchusen42, 1.5, 1.5);
setEffAlphaKey( spep_4+44, shuchusen42, 255);
setEffRotateKey( spep_4+44, shuchusen42, 0);


setDisp( spep_4, 1, 1);
changeAnime( spep_4, 1, 102);
setMoveKey( spep_4,    1,  500,    0,  0);
setMoveKey( spep_4+20,    1,  100,    0,  0);
setScaleKey( spep_4,    1,  1.6, 1.6);
setScaleKey( spep_4+20,    1,  1.6, 1.6);

setDisp( spep_4+20, 1, 0);
setDisp( spep_4+35, 1, 1);

changeAnime( spep_4+35, 1, 108);
setMoveKey( spep_4+35,    1,  20,    0,  0);
setMoveKey( spep_4+83,    1,  30,    200,  0);
setScaleKey( spep_4+35,    1,  1.5, 1.5);
setScaleKey( spep_4+83,    1,  1.5, 1.5);
setRotateKey( spep_4+35,  1,  20);
setShakeChara( spep_4+35, 1, 50, 10);

-- ** エフェクト等 ** --
kaenmae = entryEffect( spep_4, SP_02, 0x100, -1, 0, 0, 0); --手前
setEffMoveKey( spep_4, kaenmae, 0, 0, 0);
setEffScaleKey( spep_4, kaenmae, 1.0, 1.0);
setEffAlphaKey( spep_4, kaenmae, 255);
setEffRotateKey( spep_4, kaenmae, 0);

kaenusiro = entryEffect( spep_4, SP_03, 0x80, -1, 0, 0, 0); --後ろ
setEffMoveKey( spep_4, kaenusiro, 0, 0, 0);
setEffScaleKey( spep_4, kaenusiro, 1.0, 1.0);
setEffAlphaKey( spep_4, kaenusiro, 255);
setEffRotateKey( spep_4, kaenusiro, 0);

-- ** 音 ** --
seId = playSe( spep_4+2, 1044);
stopSe( spep_4+80, seId, 10);

-- ** 次の準備 ** --
spep_5 = spep_4+90;

entryFade( spep_5-6, 3, 9, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp( spep_5, 0, 0);
------------------------------------------------------
-- ギャン
------------------------------------------------------

-- ** ギャン ** --
gyan = entryEffectLife( spep_5, 190002 ,60, 0x100, -1, 0, 0, 0);
setEffMoveKey( spep_5, gyan, 0, 0, 0);
setEffScaleKey( spep_5, gyan,1.0, 1.0);
setEffAlphaKey( spep_5, gyan, 255);
setEffShake( spep_5, gyan, 10);

-- ** 書き文字エントリー ** --
ctgyan = entryEffectLife( spep_5, 10006, 60, 0x100, -1, 0, 0, 400); -- ギャン
setEffAlphaKey( spep_5, ctgyan, 255);
setEffScaleKey( spep_5, ctgyan, 3.0, 3.0);
setEffScaleKey( spep_5+60, ctgyan, 4.0, 4.0);
setEffAlphaKey( spep_5, ctgyan, 255);
setEffAlphaKey( spep_5+60, ctgyan, 80);
setEffShake( spep_5, ctgyan, 60, 10);

-- ** 音 ** --
playSe( spep_5+8, SE_09);

-- ** ホワイトフェード ** --
entryFade( spep_5+55, 5, 3, 5, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade


-- ** 次の準備 ** --
spep_6 = spep_5+62;

setDisp( spep_6, 0, 1);

------------------------------------------------------
-- 爆発
------------------------------------------------------
hinoumi1 = entryEffect( spep_6, 1565, 0x80,  -1,  0,  0,  0);  
hinoumi2 = entryEffect( spep_6, 1565, 0x100,  -1,  0,  0,  0);  

setEffAlphaKey( spep_6 , hinoumi1, 255);
setEffAlphaKey( spep_6 , hinoumi2, 255);
setEffAlphaKey( spep_6+14 , hinoumi2, 255);
setEffAlphaKey( spep_6+15 , hinoumi2, 0);
setEffAlphaKey( spep_6+39 , hinoumi2, 0);
setEffAlphaKey( spep_6+40 , hinoumi2, 255);

setDisp( spep_6, 1, 1);
setMoveKey( spep_6,    1,  120,    0,  128);
setMoveKey( spep_6+1,    1,    0,   0,   128);
setMoveKey( spep_6+20,    1,    -120,    0,   128);
setMoveKey( spep_6+26,   1,  60,    -200,  -100);
setMoveKey( spep_6+32,   1,  80,    -200,  -100);
setScaleKey( spep_6,    1,  1.0, 1.0);
setScaleKey( spep_6+1,    1,  0.1, 0.1);

changeAnime( spep_6+1, 1, 107);  
setDisp( spep_6+33, 1, 0);                       -- 手前ダメージ


playSe( spep_6+1, SE_10);


setDisp( spep_6, 0, 1);
setDisp( spep_6+15, 0, 0);
setDisp( spep_6+40, 0, 1);
setScaleKey( spep_6,    0,  0.4, 0.4);
setScaleKey( spep_6+120,    0,  0.4, 0.4);
--setMoveKey( spep_6,    0,  -120,    150,  0);
--setMoveKey( spep_6+120,    0,  -120,    150,  0);
setMoveKey( spep_6,    0,  -120,    250,  0);--12日深夜追加
setMoveKey( spep_6+80,    0,  -120,    150,  0);--12日深夜追加
setMoveKey( spep_6+120,    0,  -120,    150,  0);--12日深夜追加


setShake( spep_6+10,6,15);
setShake( spep_6+17,15,9);

setRotateKey( spep_6+17,  1,  0 );
setRotateKey( spep_6+19,  1, 90 );
setRotateKey( spep_6+21,  1, 180 );
setRotateKey( spep_6+23,  1, 270 );
setRotateKey( spep_6+25,  1, 0 );
setRotateKey( spep_6+27,  1, 90 );
setRotateKey( spep_6+29,  1, 180 );
setRotateKey( spep_6+31,  1, 270 );


setShakeChara( spep_6+14, 1, 5,  10);
setShakeChara( spep_6+20, 1, 10, 20);

-- 書き文字エントリー

shuchusen6 = entryEffectLife( spep_6+13, 906, 60, 0x00,  -1, 0,  0,  0);   -- 集中線906
setEffScaleKey( spep_6+13, shuchusen6, 1.2, 1.2);

shuchusen61 = entryEffectLife( spep_6+13, 1657, 80, 0x00,  -1, 0,  0,  0);   -- 黒い集中線
setEffScaleKey( spep_6+13, shuchusen61, 1.2, 1.2);

entryFadeBg( spep_6, 0, 120, 0, 10, 10, 10, 200);          -- ベース暗め　背景

setDamage( spep_6+33, 1, 0);  -- ダメージ振動等

-- ダメージ表示
dealDamage( spep_6+32);

entryFade( spep_6+105, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase( spep_6+115);


else

-----------------------------------------
--敵側の攻撃
-----------------------------------------

------------------------------------------------------
-- 溜め！(100F)
------------------------------------------------------

changeAnime( 0, 0, 30);                       -- 溜め!
-- ** 音 ** --
--playSe( 3, SE_03);

-- ** エフェクト等 ** --

--setShakeChara( 0, 0, 85, 5);
setShakeChara( 0, 0, 85, 15);--12日深夜追加

entryEffect(  0,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect(  0,   1659,   0,     -1,  0,  0,  0);   -- eff_003 (気)

aura = entryEffectLife(  0,  1661, 120, 0x80,  -1,  0, 0,  -400); -- オーラ
setEffScaleKey( 0, aura, 3.2, 2.8);


--[[
speff = entryEffect(  0,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  0,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
]]--
-- ** 音 ** --
playSe( 3, SE_04);

-- ** 書き文字エントリ ** --
gogogo = entryEffectLife( 12, 190006, 71, 0x100, -1, 0, -110, 450); -- ゴゴゴゴゴ
setEffScaleKey( 12, gogogo, -0.9, 0.9);
setEffAlphaKey( 12, gogogo, 255);
setEffRotateKey( 12, gogogo, -10);


entryFade( 80, 3, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( 0, 0, 120, 0, 0, 0, 0, 255); -- ベース暗め　背景

-- ** 次の準備 ** --
spep_2 = 85;
setDisp( spep_2, 0, 0);
setMoveKey(   spep_2,   0,    0, -54,   0);
setScaleKey(   spep_2,   0, 1.7, 1.7);


------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------


speff = entryEffect( spep_2, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_2, 906, 91, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey( spep_2, shuchusen2, 0, 0, 0);
setEffScaleKey( spep_2, shuchusen2, 1.0, 1.0);
setEffAlphaKey( spep_2, shuchusen2, 255);
setEffRotateKey( spep_2, shuchusen2, 0);


-- ** 音 ** --
playSe( spep_2, SE_05);



-- ** 次の準備 ** --
spep_3 = spep_2+90;
entryFade( spep_3-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_3, 0, 120, 0, 0, 0, 0, 255); -- ベース暗め　背景

setDisp( spep_3, 1, 0);
setDisp( spep_3, 0, 1);
setMoveKey(   spep_3-1,   0,    50,  50,   0);
setMoveKey(   spep_3,   0,    50,  50,   0);
setMoveKey(   spep_3+30,   0,   50,  50,  0);
setScaleKey(   spep_3,   0, 1.5, 1.5);
setScaleKey(   spep_3+30,   0, 2.5, 2.5);
setShakeChara( spep_3, 0, 30, 10);

changeAnime( spep_3, 0, 17); 
setShakeChara( spep_3, 0, 120, 10);--12日深夜追加
------------------------------------------------------
--溜め～吐き出す
------------------------------------------------------

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_3, 906, 120, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey( spep_3, shuchusen3, 0, 0, 0);
setEffScaleKey( spep_3, shuchusen3, 1.7, 1.7);
setEffAlphaKey( spep_3, shuchusen3, 255);
setEffRotateKey( spep_3, shuchusen3, 0);

-- ** エフェクト等 ** --
kaenkaku = entryEffect( spep_3, SP_01, 0x100, -1, 0, 0, 0); --溜め～吐き出す
setEffMoveKey( spep_3, kaenkaku, 10, 110, 0);
setEffScaleKey( spep_3, kaenkaku, 1.0, 1.0);
setEffAlphaKey( spep_3, kaenkaku, 255);
setEffRotateKey( spep_3, kaenkaku, 0);
setEffShake( spep_3, kaenkaku, 10);--12日深夜追加

spname = entryEffectLife( spep_3, 1508,  30, 0x100,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

entryFade( spep_3+31, 1, 3, 6, fcolor_r, fcolor_g, fcolor_b, 220);     -- white fade

changeAnime( spep_3+31, 0, 31); 
setMoveKey(   spep_3+31,   0,  120,  -40,  0);
setMoveKey(   spep_3+60,   0,  -150,  80,  0);
setMoveKey(   spep_3+65,   0,  -800,  200,  0);
setMoveKey(   spep_3+119,   0,  -800,  200,  0);
setScaleKey(   spep_3+60,   0, 1.0, 1.0);

setDisp( spep_3+80, 0, 0);

-- ** 奥行き流線斜め ** --
okuyuki3 = entryEffectLife( spep_3+40, 921, 80, 0x80, -1, 0, 0, 0); -- 奥行き流線斜め
setEffMoveKey( spep_3+40, okuyuki3, 0, 0, 0);
setEffRotateKey( spep_3+40, okuyuki3, 210);
setEffScaleKey( spep_3+40, okuyuki3, 1.6, 1.6);
setEffAlphaKey( spep_3+40, okuyuki3, 255);


-- ** 音 ** --
playSe( spep_3+31, SE_07);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 250; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

setMoveKey(   SP_dodge,   0,    -8000, 0,   0);
setMoveKey(   SP_dodge+1,   0,    -80000, 0,   0);
--setEffAlphaKey( SP_dodge , kaenkaku, 255);
--setEffAlphaKey( SP_dodge+1 , kaenkaku, 0);

endPhase(SP_dodge+10);

do return end
else end
------------------------------------------------------
-- 回避外
------------------------------------------------------


-- ** 次の準備 ** --
spep_4 = spep_3+120;
entryFade( spep_4-6, 3, 9, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_4, 0, 90, 0, 0, 0, 0, 255); -- ベース暗め　背景

setDisp( spep_4, 0, 0);
setMoveKey(   spep_4-1,   0,     200, 250,   0);
setMoveKey(   spep_4,   0,     200, 250,   0);
setScaleKey(   spep_4,   0, 1.7, 1.7);

------------------------------------------------------
-- 火炎
------------------------------------------------------

-- ** 集中線 ** --
shuchusen41 = entryEffectLife( spep_4, 922, 90, 0x80,  -1, 0,  0,  100);   -- 横線
setEffMoveKey( spep_4, shuchusen41, 0, 100, 0);
setEffScaleKey( spep_4, shuchusen41, 1.5, 1.5);
setEffAlphaKey( spep_4, shuchusen41, 255);
setEffRotateKey( spep_4, shuchusen41, 90);

-- ** 集中線 ** --
shuchusen42 = entryEffectLife( spep_4+44, 906, 44, 0x100,  -1, 0,  0,  100);   -- 集中線
setEffMoveKey( spep_4+44, shuchusen42, 0, 100, 0);
setEffScaleKey( spep_4+44, shuchusen42, 1.5, 1.5);
setEffAlphaKey( spep_4+44, shuchusen42, 255);
setEffRotateKey( spep_4+44, shuchusen42, 0);


setDisp( spep_4, 1, 1);
changeAnime( spep_4, 1, 102);
setMoveKey( spep_4,    1,  500,    0,  0);
setMoveKey( spep_4+20,    1,  100,    0,  0);
setScaleKey( spep_4,    1,  1.6, 1.6);
setScaleKey( spep_4+20,    1,  1.6, 1.6);

setDisp( spep_4+20, 1, 0);
setDisp( spep_4+35, 1, 1);

changeAnime( spep_4+35, 1, 108);
setMoveKey( spep_4+35,    1,  20,    0,  0);
setMoveKey( spep_4+83,    1,  30,    200,  0);
setScaleKey( spep_4+35,    1,  1.5, 1.5);
setScaleKey( spep_4+83,    1,  1.5, 1.5);
setRotateKey( spep_4+35,  1,  20);
setShakeChara( spep_4+35, 1, 50, 10);

-- ** エフェクト等 ** --
kaenmae = entryEffect( spep_4, SP_02, 0x100, -1, 0, 0, 0); --手前
setEffMoveKey( spep_4, kaenmae, 0, 0, 0);
setEffScaleKey( spep_4, kaenmae, 1.0, 1.0);
setEffAlphaKey( spep_4, kaenmae, 255);
setEffRotateKey( spep_4, kaenmae, 0);

kaenusiro = entryEffect( spep_4, SP_03, 0x80, -1, 0, 0, 0); --後ろ
setEffMoveKey( spep_4, kaenusiro, 0, 0, 0);
setEffScaleKey( spep_4, kaenusiro, 1.0, 1.0);
setEffAlphaKey( spep_4, kaenusiro, 255);
setEffRotateKey( spep_4, kaenusiro, 0);

-- ** 音 ** --
seId = playSe( spep_4+2, 1044);
stopSe( spep_4+80, seId, 10);

-- ** 次の準備 ** --
spep_5 = spep_4+90;

entryFade( spep_5-6, 3, 9, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp( spep_5, 0, 0);
------------------------------------------------------
-- ギャン
------------------------------------------------------

-- ** ギャン ** --
gyan = entryEffectLife( spep_5, 190002 ,60, 0x100, -1, 0, 0, 0);
setEffMoveKey( spep_5, gyan, 0, 0, 0);
setEffScaleKey( spep_5, gyan,1.0, 1.0);
setEffAlphaKey( spep_5, gyan, 255);
setEffShake( spep_5, gyan, 10);

-- ** 書き文字エントリー ** --
ctgyan = entryEffectLife( spep_5, 10006, 60, 0x100, -1, 0, 0, 400); -- ギャン
setEffAlphaKey( spep_5, ctgyan, 255);
setEffScaleKey( spep_5, ctgyan, 3.0, 3.0);
setEffScaleKey( spep_5+60, ctgyan, 4.0, 4.0);
setEffAlphaKey( spep_5, ctgyan, 255);
setEffAlphaKey( spep_5+60, ctgyan, 80);
setEffShake( spep_5, ctgyan, 60, 10);

-- ** 音 ** --
playSe( spep_5+8, SE_09);

-- ** ホワイトフェード ** --
entryFade( spep_5+55, 5, 3, 5, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade


-- ** 次の準備 ** --
spep_6 = spep_5+62;

setDisp( spep_6, 0, 1);

------------------------------------------------------
-- 爆発
------------------------------------------------------
hinoumi1 = entryEffect( spep_6, 1565, 0x80,  -1,  0,  0,  0);  
hinoumi2 = entryEffect( spep_6, 1565, 0x100,  -1,  0,  0,  0);  

setEffAlphaKey( spep_6 , hinoumi1, 255);
setEffAlphaKey( spep_6 , hinoumi2, 255);
setEffAlphaKey( spep_6+14 , hinoumi2, 255);
setEffAlphaKey( spep_6+15 , hinoumi2, 0);
setEffAlphaKey( spep_6+39 , hinoumi2, 0);
setEffAlphaKey( spep_6+40 , hinoumi2, 255);

setDisp( spep_6, 1, 1);
setMoveKey( spep_6,    1,  120,    0,  128);
setMoveKey( spep_6+1,    1,    0,   0,   128);
setMoveKey( spep_6+20,    1,    -120,    0,   128);
setMoveKey( spep_6+26,   1,  60,    -200,  -100);
setMoveKey( spep_6+32,   1,  80,    -200,  -100);
setScaleKey( spep_6,    1,  1.0, 1.0);
setScaleKey( spep_6+1,    1,  0.1, 0.1);

changeAnime( spep_6+1, 1, 107);  
setDisp( spep_6+33, 1, 0);                       -- 手前ダメージ


playSe( spep_6+1, SE_10);


setDisp( spep_6, 0, 1);
setDisp( spep_6+15, 0, 0);
setDisp( spep_6+40, 0, 1);
setScaleKey( spep_6,    0,  0.4, 0.4);
setScaleKey( spep_6+120,    0,  0.4, 0.4);
--setMoveKey( spep_6,    0,  -120,    150,  0);
--setMoveKey( spep_6+120,    0,  -120,    150,  0);
setMoveKey( spep_6,    0,  -120,    250,  0);--12日深夜追加
setMoveKey( spep_6+80,    0,  -120,    150,  0);--12日深夜追加
setMoveKey( spep_6+120,    0,  -120,    150,  0);--12日深夜追加

setShake( spep_6+10,6,15);
setShake( spep_6+17,15,9);

setRotateKey( spep_6+17,  1,  0 );
setRotateKey( spep_6+19,  1, 90 );
setRotateKey( spep_6+21,  1, 180 );
setRotateKey( spep_6+23,  1, 270 );
setRotateKey( spep_6+25,  1, 0 );
setRotateKey( spep_6+27,  1, 90 );
setRotateKey( spep_6+29,  1, 180 );
setRotateKey( spep_6+31,  1, 270 );


setShakeChara( spep_6+14, 1, 5,  10);
setShakeChara( spep_6+20, 1, 10, 20);

-- 書き文字エントリー

shuchusen6 = entryEffectLife( spep_6+13, 906, 60, 0x00,  -1, 0,  0,  0);   -- 集中線906
setEffScaleKey( spep_6+13, shuchusen6, 1.2, 1.2);

shuchusen61 = entryEffectLife( spep_6+13, 1657, 80, 0x00,  -1, 0,  0,  0);   -- 黒い集中線
setEffScaleKey( spep_6+13, shuchusen61, 1.2, 1.2);

entryFadeBg( spep_6, 0, 120, 0, 10, 10, 10, 200);          -- ベース暗め　背景

setDamage( spep_6+33, 1, 0);  -- ダメージ振動等

-- ダメージ表示
dealDamage( spep_6+32);

entryFade( spep_6+105, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase( spep_6+115);

end
