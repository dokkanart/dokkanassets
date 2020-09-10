
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

SP_01 = 107028;
SP_02 = 107029;
SP_03 = 107030;
--SP_04 = 1556;

multi_frm = 2;

changeAnime( 0, 0, 30);                       -- 立ち
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0,     -54,   0);
setMoveKey(   1,   0,    0,     -54,   0);
setMoveKey(   2,   0,    0,     -54,   0);
setMoveKey(   3,   0,    0,     -54,   0);
setMoveKey(   4,   0,    0,     -54,   0);
setMoveKey(   5,   0,    0,     -54,   0);
setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   1,   0, 1.5, 1.5);
setScaleKey(   2,   0, 1.5, 1.5);
setScaleKey(   3,   0, 1.5, 1.5);
setScaleKey(   4,   0, 1.5, 1.5);
setScaleKey(   5,   0, 1.5, 1.5);

setMoveKey(   0,   1,    0,     -900,   0);
setMoveKey(   1,   1,    0,     -900,   0);
setMoveKey(   2,   1,    0,     -900,   0);
setMoveKey(   3,   1,    0,     -900,   0);
setMoveKey(   4,   1,    0,     -900,   0);
setMoveKey(   5,   1,    0,     -900,   0);
setScaleKey(   0,   1, 1.5, 1.5);
setScaleKey(   1,   1, 1.5, 1.5);
setScaleKey(   2,   1, 1.5, 1.5);
setScaleKey(   3,   1, 1.5, 1.5);
setScaleKey(   4,   1, 1.5, 1.5);
setScaleKey(   5,   1, 1.5, 1.5);

------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
spep_1=0;

entryFadeBg( spep_1, 0, 170, 0,10, 10, 10, 150);          -- ベース暗め　背景

setVisibleUI( spep_1, 0);

playSe( spep_1, 1035); --かめはめ波
--playSe( 20, 1036); 
playSe( spep_1+15, 1036);
playSe( spep_1+40, 1036); 
playSe( spep_1+65, 1036);  
playSe( spep_1+90, 1036);  
--playSe( 115, 1036);  

-- ** エフェクト等 ** --
aura = entryEffectLife(  spep_1,   352, 110, 0x40,  0,  1,  0,  0); -- オーラ
setEffScaleKey( spep_1, aura, 2.0, 2.0);
setEffScaleKey( spep_1+40, aura, 2.0, 2.0);

speff = entryEffect( spep_1+20,   1504,   0x100,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect( spep_1+20,   1505,   0x100,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture(  speff, 4, 5);                           -- セリフ差し替え

kame_hand = entryEffect( spep_1+10, SP_01, 0x40+0x100, 0,  300,  0,  180);   -- 手のカメハメ波部
setEffScaleKey( spep_1+10, kame_hand, 1.0, 1.0);
setEffScaleKey( spep_1+40, kame_hand, 1.0, 1.0);

setScaleKey(   spep_1+40,   0, 1.5, 1.5);
setEffMoveKey( spep_1+10, kame_hand, 0,  180);
setEffMoveKey( spep_1+40, kame_hand, 0,  180);

setShakeChara( spep_1, 0, 170, 10);
setShake( spep_1, 170, 5);

-- 書き文字エントリー
ctgogo = entryEffectLife( spep_1+30, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake( spep_1+30, ctgogo, 40, 8);
setEffScaleKey( spep_1+30, ctgogo, 1.4, 1.4);
--setScaleKey( -60+   170,   0, 1.5, 1.5);

setScaleKey(  spep_1+110,   0, 2.2, 2.2);
setEffScaleKey( spep_1+110, aura, 3.0, 3.0);
setEffScaleKey( spep_1+110, kame_hand, 1.5, 1.5);
setEffMoveKey( spep_1+110, kame_hand, 0,  260);

setMoveKey( spep_1+110,   0,    0,     -54,   0);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
spep_2=spep_1+110;

setMoveKey( spep_2+4,    0,      0,  0,   0);
setMoveKey( spep_2+5,    0,      0,  200,   0);
playSe( spep_2, SE_05);
speff = entryEffect( spep_2,   1507,   0x100,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture(  speff, 1, 1);
setEffReplaceTexture(  speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture(  speff, 5, 4);                                  -- 技名テクスチャ差し替え

entryFade( spep_2+85, 3, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
playSe( spep_2+64, SE_06);

------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
spep_3=spep_2+87; --197

setScaleKey( spep_3+2,   0, 1.2, 1.2);

changeAnime( spep_3+3, 0, 31);                                    -- かめはめ発射ポーズ
setMoveKey( spep_3+2,    0,      0,  0,   -20);
setMoveKey( spep_3+13,    0,      0,  0,   -10);
setMoveKey( spep_3+33,    0,   -30,  0,   0);

kamehame_beam = entryEffectLife( spep_3, SP_02, 109, 0x40,  0,  300,  0,  0);   -- 伸びるかめはめ波
playSe( spep_3, SE_07);
setEffScaleKey( spep_3+3, kamehame_beam, 1.0, 1.0);
setEffScaleKey( spep_3+47, kamehame_beam, 1.0, 1.0);
setEffScaleKey( spep_3+48, kamehame_beam, 1.7, 1.7);

--setEffMoveKey( -60+ 260, kamehame_beam, 205, 90);
setEffAlphaKey( spep_3, kamehame_beam, 0);
--setEffAlphaKey( -60+260, kamehame_beam, 0);
setEffAlphaKey( spep_3+5, kamehame_beam, 0);
setEffAlphaKey( spep_3+6, kamehame_beam, 255);

setEffMoveKey( spep_3+3, kamehame_beam, 170, 390);--60 100
setEffMoveKey( spep_3+8, kamehame_beam, 170, 385);
setEffMoveKey( spep_3+13, kamehame_beam, 165, 385);
setEffMoveKey( spep_3+28, kamehame_beam, 160, 380);
setEffMoveKey( spep_3+30, kamehame_beam, 160, 375);
setEffMoveKey( spep_3+33, kamehame_beam, 160, 360);
setEffMoveKey( spep_3+35, kamehame_beam, 150, 350);
setEffMoveKey( spep_3+36, kamehame_beam, 135, 340);
setEffMoveKey( spep_3+37, kamehame_beam, 125, 310);
setEffMoveKey( spep_3+47, kamehame_beam, 60, 170);
setEffMoveKey( spep_3+48, kamehame_beam, 60, 0);
setEffMoveKey( spep_3+49, kamehame_beam, -500, 0);

setMoveKey( spep_3+43,    0,   -250,  40,   50);
setMoveKey( spep_3+48,    0,   -550,  70,   80);

-- ** エフェクト等 ** --
entryFadeBg( spep_3+3, 0, 160, 0, 10, 10, 10, 200);       -- ベース暗め　背景

shuchusen = entryEffectLife( spep_3+3, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3+3, shuchusen, 1.0, 1.0);
setEffScaleKey( spep_3+42, shuchusen, 1.0, 1.0);

sen2 = entryEffectLife( spep_3+3, 921, 54, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey( spep_3+3, sen2, 190);

setEffScaleKey( spep_3+3, sen2, 1.6, 1.6);

-- 書き文字エントリー
ctzuo = entryEffectLife( spep_3+11, 10012, 32, 0, -1, 0, 300, 400); -- ズオッ
setEffShake( spep_3+11, ctzuo, 32, 5);
setEffAlphaKey( spep_3+11, ctzuo, 255);
setEffAlphaKey( spep_3+33, ctzuo, 255);
setEffAlphaKey( spep_3+43, ctzuo, 0);
setEffScaleKey( spep_3+11, ctzuo, 0, 0);
setEffScaleKey( spep_3+15, ctzuo, 1.3, 1.3);
setEffScaleKey( spep_3+43, ctzuo, 6.0, 6.0);

setDisp( spep_3+48, 0, 0);
setDisp( spep_3+48, 1, 1);
changeAnime( spep_3+48, 1, 104);                        -- ガード
setMoveKey( spep_3+47,    1,  335,  0,   0);
setMoveKey( spep_3+48,    1,  335,  0,   0);
setMoveKey( spep_3+49,    1,  335,  0,   0);
setScaleKey( spep_3+47,    1,  0.7, 0.7);
setScaleKey( spep_3+48,    1,  0.7, 0.7);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 255; --エンドフェイズのフレーム数を置き換える +48

setMoveKey(SP_dodge ,   0,   -800,  70,   0);

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100, -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100, -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

setMoveKey(  SP_dodge,    1,  335,0,0);
setScaleKey(  SP_dodge,   1,   0.7,  0.7);

setMoveKey(   SP_dodge+8,   1,   335,0,0);
setScaleKey(   SP_dodge+8,   1, 0.7, 0.7);
setRotateKey(   SP_dodge+8,   1, 0);

setDisp(  SP_dodge+9, 1,0);
--changeAnime(  SP_dodge+9,    1,  102);
setMoveKey(  SP_dodge+9,    1,  0,0,0);
setScaleKey( SP_dodge+9,    1,  1.0, 1.0);
setRotateKey(   SP_dodge+9,   1, 0);

setDisp(  SP_dodge+10,1,0);
setMoveKey(  SP_dodge+10,    1,  0,  0,   0);
setScaleKey( SP_dodge+10,    1,  1.0, 1.0);
setRotateKey(   SP_dodge+10,   1, 0);

pauseAll( SP_dodge,67);

entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);  -- white fade

endPhase(SP_dodge+10);
do return end
else end

-----------------------------------------------------
setDisp( spep_3+50, 0, 0);
setMoveKey( spep_3+51, 0, -150, 70, 80);

setEffScaleKey( spep_3+52, shuchusen, 2.0, 2.0);

setShakeChara( spep_3+63, 0, 54, 50);

playSe( spep_3+53, SE_07);

entryFade( spep_3+53, 6,  8, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setEffMoveKey( spep_3+64, kamehame_beam, -1010, 0);

setScaleKey( spep_3+62, 0, 1.2, 1.2);

setMoveKey( spep_3+78, 1, 220,  0,   0);
setScaleKey(spep_3+78, 1, 1.6, 1.6);

playSe( spep_3+68, SE_06);
setEffAlphaKey( spep_3+110, kamehame_beam, 255);
setEffAlphaKey( spep_3+120, kamehame_beam, 0);

kamehame_beam2 = entryEffect( spep_3+48, SP_03,   0, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey( spep_3+48, kamehame_beam2, 1, 1);
setEffScaleKey( spep_3+105, kamehame_beam2, 1, 1);
setEffScaleKey( spep_3+147, kamehame_beam2, 1.4, 1.4);
setDamage( spep_3+150, 1, 0);  -- ダメージ振動等

changeAnime( spep_3+110, 1, 108);

playSe( spep_3+133, SE_09);
-- 敵吹っ飛ぶモーション
changeAnime( spep_3+133, 1, 108);
setMoveKey( spep_3+133, 1,  120,    0,  0);
setMoveKey( spep_3+147, 1,  400,    0,  0);
setScaleKey( spep_3+133, 1,  1.6, 1.6);
setScaleKey( spep_3+136, 1,  1.5, 1.5);
setScaleKey( spep_3+146, 1,  0.2, 0.2);

-- ** エフェクト等 ** --
setShakeChara( spep_3+48, 1, 79, 20);

entryFadeBg( spep_3+58, 0, 105, 0,10, 10, 10, 200);          -- ベース暗め　背景

entryEffectLife( spep_3+58, 921, 105, 0x80,  -1,  0,  0,  0); -- 流線斜め

-- 書き文字エントリー
ctzudo = entryEffectLife( spep_3+58, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(  spep_3+58, ctzudo, 99, 20);
setEffScaleKey(  spep_3+58, ctzudo, 2.4, 2.4);
setEffRotateKey(  spep_3+58, ctzudo, 70);
setEffAlphaKey(  spep_3+58, ctzudo, 255);
setEffAlphaKey( spep_3+123, ctzudo, 255);
setEffAlphaKey( spep_3+143, ctzudo, 0);

entryFade( spep_3+145, 6,  17, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setRotateKey( spep_3+155,  1,  0 );

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
spep_4=spep_3+163; --360

setDisp( spep_4-1, 1, 1);
setMoveKey(  spep_4-1,    1,  100,  0,   0);
setScaleKey( spep_4-1,    1,  1.0, 1.0);
setMoveKey(  spep_4,    1,    0,   0,   128);
setScaleKey( spep_4,    1,  0.1, 0.1);

changeAnime( spep_4, 1, 107);                         -- 手前ダメージ
entryEffect( spep_4+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_4+8, SE_10);

setMoveKey(  spep_4+8,   1,    0,   0,   128);
setMoveKey(  spep_4+15,   1,  -60,  -200,  -100);
setMoveKey(  spep_4+16,   1,  -60,  -200,  -100);
setDamage( spep_4+16, 1, 0);  -- ダメージ振動等
setShake(spep_4+7,6,15);
setShake(spep_4+13,15,10);

setRotateKey( spep_4,  1,  30 );
setRotateKey( spep_4+2,  1,  80 );
setRotateKey( spep_4+4,  1, 120 );
setRotateKey( spep_4+6,  1, 160 );
setRotateKey( spep_4+8,  1, 200 );
setRotateKey( spep_4+10,  1, 260 );
setRotateKey( spep_4+12,  1, 320 );
setRotateKey( spep_4+14,  1,   0 );

setShakeChara( spep_4+15, 1, 5,  10);
setShakeChara( spep_4+20, 1, 10, 20);

-- 書き文字エントリー
ctga = entryEffectLife( spep_4+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep_4+15, ctga, 30, 10);
setEffRotateKey( spep_4+15, ctga, -40);
setEffScaleKey( spep_4+15, ctga, 4.0, 4.0);
setEffScaleKey( spep_4+16, ctga, 2.0, 2.0);
setEffScaleKey( spep_4+17, ctga, 2.6, 2.6);
setEffScaleKey( spep_4+18, ctga, 4.0, 4.0);
setEffScaleKey( spep_4+19, ctga, 2.6, 2.6);
setEffScaleKey( spep_4+20, ctga, 3.8, 3.8);
setEffScaleKey( spep_4+110, ctga, 3.8, 3.8);
setEffAlphaKey( spep_4+15, ctga, 255);
setEffAlphaKey( spep_4+105, ctga, 255);
setEffAlphaKey( spep_4+115, ctga, 0);

playSe( spep_4+3, SE_11);
shuchusen = entryEffectLife( spep_4+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_4+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(spep_4+16);

entryFade( spep_4+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase( spep_4+110);

else

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------

spep_1=0;

entryFadeBg( spep_1, 0, 170, 0,10, 10, 10, 150);          -- ベース暗め　背景

setVisibleUI( spep_1, 0);

playSe( spep_1, 1035); --かめはめ波
--playSe( 20, 1036); 
playSe( spep_1+15, 1036);
playSe( spep_1+40, 1036); 
playSe( spep_1+65, 1036);  
playSe( spep_1+90, 1036);  
--playSe( 115, 1036);  

-- ** エフェクト等 ** --
aura = entryEffectLife(  spep_1,   352, 110, 0x40,  0,  1,  0,  0); -- オーラ
setEffScaleKey( spep_1, aura, 2.0, 2.0);
setEffScaleKey( spep_1+40, aura, 2.0, 2.0);

--speff = entryEffect( spep_1+20,   1504,   0x100,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect( spep_1+20,   1505,   0x100,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture(  speff, 4, 5);                           -- セリフ差し替え

kame_hand = entryEffect( spep_1+10, SP_01, 0x40+0x100, 0,  300,  0,  180);   -- 手のカメハメ波部
setEffScaleKey( spep_1+10, kame_hand, 1.0, 1.0);
setEffScaleKey( spep_1+40, kame_hand, 1.0, 1.0);

setScaleKey(   spep_1+40,   0, 1.5, 1.5);
setEffMoveKey( spep_1+10, kame_hand, 0,  180);
setEffMoveKey( spep_1+40, kame_hand, 0,  180);

setShakeChara( spep_1, 0, 170, 10);
setShake( spep_1, 170, 5);

-- 書き文字エントリー
ctgogo = entryEffectLife( spep_1+30, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake( spep_1+30, ctgogo, 40, 8);
setEffScaleKey( spep_1+30, ctgogo, 1.4, 1.4);
--setScaleKey( -60+   170,   0, 1.5, 1.5);

setScaleKey(  spep_1+110,   0, 2.2, 2.2);
setEffScaleKey( spep_1+110, aura, 3.0, 3.0);
setEffScaleKey( spep_1+110, kame_hand, 1.5, 1.5);
setEffMoveKey( spep_1+110, kame_hand, 0,  260);

setMoveKey( spep_1+110,   0,    0,     -54,   0);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
spep_2=spep_1+110;

setMoveKey( spep_2+4,    0,      0,  0,   0);
setMoveKey( spep_2+5,    0,      0,  200,   0);
playSe( spep_2, SE_05);
speff = entryEffect( spep_2,   1507,   0x100,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture(  speff, 1, 1);
setEffReplaceTexture(  speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture(  speff, 5, 4);                                  -- 技名テクスチャ差し替え

entryFade( spep_2+85, 3, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
playSe( spep_2+64, SE_06);

------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
spep_3=spep_2+87; --197

setScaleKey( spep_3+2,   0, 1.2, 1.2);

changeAnime( spep_3+3, 0, 31);                                    -- かめはめ発射ポーズ
setMoveKey( spep_3+2,    0,      0,  0,   -20);
setMoveKey( spep_3+13,    0,      0,  0,   -10);
setMoveKey( spep_3+33,    0,   -30,  0,   0);

kamehame_beam = entryEffectLife( spep_3, SP_02, 109, 0x40,  0,  300,  0,  0);   -- 伸びるかめはめ波
playSe( spep_3, SE_07);
setEffScaleKey( spep_3+3, kamehame_beam, 1.0, 1.0);
setEffScaleKey( spep_3+47, kamehame_beam, 1.0, 1.0);
setEffScaleKey( spep_3+48, kamehame_beam, 1.7, 1.7);

--setEffMoveKey( -60+ 260, kamehame_beam, 205, 90);
setEffAlphaKey( spep_3, kamehame_beam, 0);
--setEffAlphaKey( -60+260, kamehame_beam, 0);
setEffAlphaKey( spep_3+5, kamehame_beam, 0);
setEffAlphaKey( spep_3+6, kamehame_beam, 255);

setEffMoveKey( spep_3+3, kamehame_beam, 170, 390);--60 100
setEffMoveKey( spep_3+8, kamehame_beam, 170, 385);
setEffMoveKey( spep_3+13, kamehame_beam, 165, 385);
setEffMoveKey( spep_3+28, kamehame_beam, 160, 380);
setEffMoveKey( spep_3+30, kamehame_beam, 160, 375);
setEffMoveKey( spep_3+33, kamehame_beam, 160, 360);
setEffMoveKey( spep_3+35, kamehame_beam, 150, 350);
setEffMoveKey( spep_3+36, kamehame_beam, 135, 340);
setEffMoveKey( spep_3+37, kamehame_beam, 125, 310);
setEffMoveKey( spep_3+47, kamehame_beam, 60, 170);
setEffMoveKey( spep_3+48, kamehame_beam, 60, 0);
setEffMoveKey( spep_3+49, kamehame_beam, -500, 0);

setMoveKey( spep_3+43,    0,   -250,  40,   50);
setMoveKey( spep_3+48,    0,   -550,  70,   80);

-- ** エフェクト等 ** --
entryFadeBg( spep_3+3, 0, 160, 0, 10, 10, 10, 200);       -- ベース暗め　背景

shuchusen = entryEffectLife( spep_3+3, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3+3, shuchusen, 1.0, 1.0);
setEffScaleKey( spep_3+42, shuchusen, 1.0, 1.0);

sen2 = entryEffectLife( spep_3+3, 921, 54, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey( spep_3+3, sen2, 190);

setEffScaleKey( spep_3+3, sen2, 1.6, 1.6);

-- 書き文字エントリー
ctzuo = entryEffectLife( spep_3+11, 10012, 32, 0, -1, 0, 300, 400); -- ズオッ
setEffShake( spep_3+11, ctzuo, 32, 5);
setEffAlphaKey( spep_3+11, ctzuo, 255);
setEffAlphaKey( spep_3+33, ctzuo, 255);
setEffAlphaKey( spep_3+43, ctzuo, 0);
setEffScaleKey( spep_3+11, ctzuo, 0, 0);
setEffScaleKey( spep_3+15, ctzuo, 1.3, 1.3);
setEffScaleKey( spep_3+43, ctzuo, 6.0, 6.0);

setDisp( spep_3+48, 0, 0);
setDisp( spep_3+48, 1, 1);
changeAnime( spep_3+48, 1, 104);                        -- ガード
setMoveKey( spep_3+47,    1,  335,  0,   0);
setMoveKey( spep_3+48,    1,  335,  0,   0);
setMoveKey( spep_3+49,    1,  335,  0,   0);
setScaleKey( spep_3+47,    1,  0.7, 0.7);
setScaleKey( spep_3+48,    1,  0.7, 0.7);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 255; --エンドフェイズのフレーム数を置き換える +48
setMoveKey(SP_dodge ,   0,   -800,  70,   0);

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100, -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100, -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

setMoveKey(  SP_dodge,    1,  335,0,0);
setScaleKey(  SP_dodge,   1,   0.7,  0.7);

setMoveKey(   SP_dodge+8,   1,   335,0,0);
setScaleKey(   SP_dodge+8,   1, 0.7, 0.7);
setRotateKey(   SP_dodge+8,   1, 0);

setDisp(  SP_dodge+9, 1,0);
--changeAnime(  SP_dodge+9,    1,  102);
setMoveKey(  SP_dodge+9,    1,  0,0,0);
setScaleKey( SP_dodge+9,    1,  1.0, 1.0);
setRotateKey(   SP_dodge+9,   1, 0);

setDisp(  SP_dodge+10,1,0);
setMoveKey(  SP_dodge+10,    1,  0,  0,   0);
setScaleKey( SP_dodge+10,    1,  1.0, 1.0);
setRotateKey(   SP_dodge+10,   1, 0);

pauseAll( SP_dodge,67);

entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);  -- white fade

endPhase(SP_dodge+10);
do return end
else end

-----------------------------------------------------
setDisp( spep_3+50, 0, 0);
setMoveKey( spep_3+51, 0, -150, 70, 80);

setEffScaleKey( spep_3+52, shuchusen, 2.0, 2.0);

setShakeChara( spep_3+63, 0, 54, 50);

playSe( spep_3+53, SE_07);

entryFade( spep_3+53, 6,  8, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setEffMoveKey( spep_3+64, kamehame_beam, -1010, 0);

setScaleKey( spep_3+62, 0, 1.2, 1.2);

setMoveKey( spep_3+78, 1, 220,  0,   0);
setScaleKey(spep_3+78, 1, 1.6, 1.6);

playSe( spep_3+68, SE_06);
setEffAlphaKey( spep_3+110, kamehame_beam, 255);
setEffAlphaKey( spep_3+120, kamehame_beam, 0);

kamehame_beam2 = entryEffect( spep_3+48, SP_03,   0, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey( spep_3+48, kamehame_beam2, 1, 1);
setEffScaleKey( spep_3+105, kamehame_beam2, 1, 1);
setEffScaleKey( spep_3+147, kamehame_beam2, 1.4, 1.4);
setDamage( spep_3+150, 1, 0);  -- ダメージ振動等

changeAnime( spep_3+110, 1, 108);

playSe( spep_3+133, SE_09);
-- 敵吹っ飛ぶモーション
changeAnime( spep_3+133, 1, 108);
setMoveKey( spep_3+133, 1,  120,    0,  0);
setMoveKey( spep_3+147, 1,  400,    0,  0);
setScaleKey( spep_3+133, 1,  1.6, 1.6);
setScaleKey( spep_3+136, 1,  1.5, 1.5);
setScaleKey( spep_3+146, 1,  0.2, 0.2);

-- ** エフェクト等 ** --
setShakeChara( spep_3+48, 1, 79, 20);

entryFadeBg( spep_3+58, 0, 105, 0,10, 10, 10, 200);          -- ベース暗め　背景

entryEffectLife( spep_3+58, 921, 105, 0x80,  -1,  0,  0,  0); -- 流線斜め

-- 書き文字エントリー
ctzudo = entryEffectLife( spep_3+58, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(  spep_3+58, ctzudo, 99, 20);
setEffScaleKey(  spep_3+58, ctzudo, 2.4, 2.4);
setEffRotateKey(  spep_3+58, ctzudo, 0);
setEffAlphaKey(  spep_3+58, ctzudo, 255);
setEffAlphaKey( spep_3+123, ctzudo, 255);
setEffAlphaKey( spep_3+143, ctzudo, 0);

entryFade( spep_3+145, 6,  17, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setRotateKey( spep_3+155,  1,  0 );

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
spep_4=spep_3+163; --360

setDisp( spep_4-1, 1, 1);
setMoveKey(  spep_4-1,    1,  100,  0,   0);
setScaleKey( spep_4-1,    1,  1.0, 1.0);
setMoveKey(  spep_4,    1,    0,   0,   128);
setScaleKey( spep_4,    1,  0.1, 0.1);

changeAnime( spep_4, 1, 107);                         -- 手前ダメージ
entryEffect( spep_4+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_4+8, SE_10);

setMoveKey(  spep_4+8,   1,    0,   0,   128);
setMoveKey(  spep_4+15,   1,  -60,  -200,  -100);
setMoveKey(  spep_4+16,   1,  -60,  -200,  -100);
setDamage( spep_4+16, 1, 0);  -- ダメージ振動等
setShake(spep_4+7,6,15);
setShake(spep_4+13,15,10);

setRotateKey( spep_4,  1,  30 );
setRotateKey( spep_4+2,  1,  80 );
setRotateKey( spep_4+4,  1, 120 );
setRotateKey( spep_4+6,  1, 160 );
setRotateKey( spep_4+8,  1, 200 );
setRotateKey( spep_4+10,  1, 260 );
setRotateKey( spep_4+12,  1, 320 );
setRotateKey( spep_4+14,  1,   0 );

setShakeChara( spep_4+15, 1, 5,  10);
setShakeChara( spep_4+20, 1, 10, 20);

-- 書き文字エントリー
ctga = entryEffectLife( spep_4+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep_4+15, ctga, 30, 10);
setEffRotateKey( spep_4+15, ctga, -40);
setEffScaleKey( spep_4+15, ctga, 4.0, 4.0);
setEffScaleKey( spep_4+16, ctga, 2.0, 2.0);
setEffScaleKey( spep_4+17, ctga, 2.6, 2.6);
setEffScaleKey( spep_4+18, ctga, 4.0, 4.0);
setEffScaleKey( spep_4+19, ctga, 2.6, 2.6);
setEffScaleKey( spep_4+20, ctga, 3.8, 3.8);
setEffScaleKey( spep_4+110, ctga, 3.8, 3.8);
setEffAlphaKey( spep_4+15, ctga, 255);
setEffAlphaKey( spep_4+105, ctga, 255);
setEffAlphaKey( spep_4+115, ctga, 0);

playSe( spep_4+3, SE_11);
shuchusen = entryEffectLife( spep_4+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_4+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(spep_4+16);

entryFade( spep_4+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase( spep_4+110);

end