

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

tyo = -40;
tyo2 = -60;

--SP_01 = 104008;
SP_02 = 104008;
SP_03 = 104009;
SP_04 = 1556;

multi_frm = 2;

changeAnime( 0, 0, 30);                       -- 立ち
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0,     -54,   0);
setMoveKey(   1,   0,    0,     -54,   0);
setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   1,   0, 1.5, 1.5);

SP_start = -60;

------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then


------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
entryFadeBg( 0, 0, 170, 0,10, 10, 10, 150);          -- ベース暗め　背景

setVisibleUI( SP_start+69, 0);

playSe( 0, 1035); --かめはめ波
--playSe( 20, 1036); 
playSe( 15, 1036);
playSe( 40, 1036); 
playSe( 65, 1036);  
playSe( 90, 1036);  
--playSe( 115, 1036);  

-- ** エフェクト等 ** --
aura = entryEffectLife(  0,   311, 110, 0x40,  0,  1,  0,  -30); -- オーラ
setEffScaleKey( 0, aura, 1.2, 1.2);
--changeAnime( 0, 0, 17);                       -- 溜め!

entryEffect( SP_start+  60,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect( SP_start+  60,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)

speff = entryEffect( SP_start+  60,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect( SP_start+  60,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture(  speff, 4, 5);                           -- セリフ差し替え

setShakeChara( 0, 0, 170, 10);
setShake( 0, 170, 5);


-- 書き文字エントリー
ct = entryEffectLife( SP_start+ 90, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake( SP_start+90, ct, 40, 8);
setEffScaleKey( SP_start+90, ct, 1.4, 1.4);
setScaleKey( SP_start+   170,   0, 1.5, 1.5);

entryEffect( SP_start+  140,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect( SP_start+  140,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( SP_start+ 169,   0, 1.5, 1.5);
setScaleKey( SP_start+ 170,   0, 1.0, 1.0);
setMoveKey( SP_start+  174,    0,      0,  0,   0);
setMoveKey( SP_start+  175,    0,      0,  200,   0);
if (_SPECIAL_SKILL_LEVEL_ == 0) then

print ("_SPECIAL_SKILL_LEVEL_ == 0");
playSe( SP_start+  170, SE_05);
speff = entryEffect(  SP_start+  170,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
print ("_SPECIAL_SKILL_LEVEL_ == 1");
playSe( SP_start+  170, SE_05);
speff = entryEffect(  SP_start+  170,   1120,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( SP_start+  170, SE_05);
speff = entryEffect(  SP_start+  170,   1121,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

end
entryFade( SP_start+ 255, 3, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
playSe( SP_start+ 170+64, SE_06);
------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
setScaleKey( SP_start+ 259,   0, 1.2, 1.2);

changeAnime( SP_start+ 260, 0, 31);                                    -- かめはめ発射ポーズ
setMoveKey( SP_start+  259,    0,      0,  0,   -20);
setMoveKey( SP_start+  270,    0,      0,  0,   -10);
setMoveKey( SP_start+  290,    0,   -30,  0,   0);

kamehame_beam = entryEffectLife( SP_start+ 260, SP_02, 109, 0x40,  0,  300,  0,  -30);   -- 伸びるかめはめ波
playSe( SP_start+ 260, SE_07);
setEffScaleKey( SP_start+ 260, kamehame_beam, 1.0, 1.0);
--setEffMoveKey( SP_start+ 260, kamehame_beam, 205, 90);
setEffAlphaKey( SP_start+260, kamehame_beam, 0);
setEffAlphaKey( SP_start+262, kamehame_beam, 0);
setEffAlphaKey( SP_start+263, kamehame_beam, 255);
setEffMoveKey( SP_start+ 260, kamehame_beam, 0, 0);
setEffMoveKey( SP_start+ 304, kamehame_beam, 0, 0);

spname = entryEffect( SP_start+ 257, 1508,  0x100,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture( spname, 7, 4);                                  -- 技名テクスチャ差し替え

setMoveKey( SP_start+  300,    0,   -250,  40,   50);
setMoveKey( SP_start+  305,    0,   -550,  70,   80);
setDisp( SP_start+ 305, 0, 0);
setEffMoveKey( SP_start+ 305, kamehame_beam, -400, 0);
setMoveKey( SP_start+  308,    0,   -150,  70,   80);

entryFade( SP_start+ 365, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
entryFadeBg( SP_start+ 260, 0, 109, 0, 10, 10, 10, 200);       -- ベース暗め　背景

shuchusen = entryEffectLife( SP_start+ 260, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( SP_start+ 260, shuchusen, 1.0, 1.0);
setEffScaleKey( SP_start+ 300, shuchusen, 1.0, 1.0);
setEffScaleKey( SP_start+ 309, shuchusen, 2.0, 2.0);


sen2 = entryEffectLife( SP_start+ 260, 921, 109, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey( SP_start+260, sen2, 190);
setShakeChara( SP_start+ 305, 0, 54, 50);
setEffScaleKey( SP_start+ 260, sen2, 1.6, 1.6);

-- 書き文字エントリー
ct = entryEffectLife( SP_start+ 268, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake( SP_start+268, ct, 32, 5);
setEffAlphaKey( SP_start+268, ct, 255);
setEffAlphaKey( SP_start+290, ct, 255);
setEffAlphaKey( SP_start+300, ct, 0);
setEffScaleKey( SP_start+268, ct, 0.0, 0.0);
setEffScaleKey( SP_start+272, ct, 1.3, 1.3);
setEffScaleKey( SP_start+292, ct, 1.3, 1.3);
setEffScaleKey( SP_start+300, ct, 6.0, 6.0);
playSe( SP_start+ 300, SE_07);
entryFade( SP_start+ 355, 10,  5, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setScaleKey( SP_start+ 366,   0, 1.2, 1.2);

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
setDisp( SP_start+ 370, 0, 0);
setDisp( SP_start+ 370, 1, 1);
changeAnime( SP_start+ 370, 1, 104);                        -- ガード
setMoveKey( SP_start+  369,    1,  235,  0,   0);
setMoveKey( SP_start+  370,    1,  235,  0,   0);
setMoveKey( SP_start+  371,    1,  235,  0,   0);
setScaleKey( SP_start+ 369,    1,  0.7, 0.7);
setScaleKey( SP_start+ 370,    1,  0.7, 0.7);

setMoveKey( SP_start+  400,    1,   120,  0,   0);
setScaleKey( SP_start+  400,   1,   1.6,  1.6);

playSe( SP_start+ 390, SE_06);

kamehame_beam2 = entryEffect( SP_start+ 370, SP_03,   0, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey( SP_start+370, kamehame_beam2, 1, 1);
setEffScaleKey( SP_start+452-30, kamehame_beam2, 1, 1);
setEffScaleKey( SP_start+454-30, kamehame_beam2, 1.4, 1.4);
setDamage( SP_start+ 452-30, 1, 0);  -- ダメージ振動等

playSe( SP_start+ 455-30, SE_09);
-- 敵吹っ飛ぶモーション
changeAnime( SP_start+ 455-30, 1, 108);
setMoveKey( SP_start+  455-30, 1,  120,    0,  0);
setMoveKey( SP_start+  469-30, 1,  400,    0,  0);
setScaleKey( SP_start+ 455-30, 1,  1.6, 1.6);
setScaleKey( SP_start+ 458-30, 1,  1.5, 1.5);
setScaleKey( SP_start+ 468-30, 1,  0.2, 0.2);

-- ** エフェクト等 ** --
setShakeChara( SP_start+ 370, 1, 79, 20);

entryFadeBg( SP_start+ 370, 0, 79, 0,10, 10, 10, 200);          -- ベース暗め　背景

entryEffectLife( SP_start+ 370, 921, 79, 0x80,  -1,  0,  0,  0); -- 流線斜め

-- 書き文字エントリー
ct = entryEffectLife( SP_start+ 370, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake( SP_start+370, ct, 99, 20);
setEffScaleKey( SP_start+ 370, ct, 2.4, 2.4);
setEffRotateKey( SP_start+370, ct, 70);
setEffAlphaKey( SP_start+370, ct, 255);
setEffAlphaKey( SP_start+430-20, ct, 255);
setEffAlphaKey( SP_start+450-20, ct, 0);

entryFade( SP_start+ 452-20, 6,  17, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_5 = 469-20;

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 343; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(SP_dodge+10);
do return end
else end

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

setDisp( SP_start+  spep_5, 1, 1);
setMoveKey( SP_start+   spep_5,    1,  120,    0,  128);
setScaleKey( SP_start+  spep_5,    1,  1.0, 1.0);
setMoveKey( SP_start+   spep_5+1,    1,    0,   0,   128);
setScaleKey( SP_start+  spep_5+1,    1,  0.1, 0.1);

changeAnime( SP_start+  spep_5+1, 1, 107);                         -- 手前ダメージ
entryEffect( SP_start+  spep_5+1, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( SP_start+  spep_5+1, SE_10);

setMoveKey( SP_start+   spep_5+8,    1,    0,   0,   128);
setMoveKey( SP_start+   spep_5+15,   1,  -60,  -200,  -100);
setShake( SP_start+ spep_5+10,6,15);
setShake( SP_start+ spep_5+17,15,9);

setRotateKey( SP_start+  spep_5,  1,  30 );
setRotateKey( SP_start+  spep_5+2,  1,  80 );
setRotateKey( SP_start+  spep_5+4,  1, 120 );
setRotateKey( SP_start+  spep_5+6,  1, 160 );
setRotateKey( SP_start+  spep_5+8,  1, 200 );
setRotateKey( SP_start+  spep_5+10,  1, 260 );
setRotateKey( SP_start+  spep_5+12,  1, 320 );
setRotateKey( SP_start+  spep_5+14,  1,   0 );

setShakeChara( SP_start+  spep_5+14, 1, 5,  10);
setShakeChara( SP_start+  spep_5+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( SP_start+  spep_5+14, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( SP_start+  spep_5+15, ct, 30, 10);
setEffRotateKey( SP_start+  spep_5+15, ct, -40);
setEffScaleKey( SP_start+  spep_5+15, ct, 4.0, 4.0);
setEffScaleKey( SP_start+  spep_5+16, ct, 2.0, 2.0);
setEffScaleKey( SP_start+  spep_5+17, ct, 2.6, 2.6);
setEffScaleKey( SP_start+  spep_5+18, ct, 4.0, 4.0);
setEffScaleKey( SP_start+  spep_5+19, ct, 2.6, 2.6);
setEffScaleKey( SP_start+  spep_5+20, ct, 3.8, 3.8);
setEffScaleKey( SP_start+  spep_5+110, ct, 3.8, 3.8);
setEffAlphaKey( SP_start+  spep_5+15, ct, 255);
setEffAlphaKey( SP_start+  spep_5+105, ct, 255);
setEffAlphaKey( SP_start+  spep_5+115, ct, 0);

playSe( SP_start+  spep_5+3, SE_11);
shuchusen = entryEffectLife( SP_start+  spep_5, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( SP_start+  spep_5+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage( SP_start+ spep_5+15);

entryFade( SP_start+  spep_5+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase( SP_start+ spep_5+110);

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
entryFadeBg( 0, 0, 170, 0,10, 10, 10, 150);          -- ベース暗め　背景

setVisibleUI( SP_start+69, 0);

playSe( 0, 1035); --かめはめ波
--playSe( 20, 1036); 
playSe( 15, 1036);
playSe( 40, 1036); 
playSe( 65, 1036);  
playSe( 90, 1036);  
--playSe( 115, 1036);  

-- ** エフェクト等 ** --
aura = entryEffectLife(  0,   311, 110, 0x40,  0,  1,  0,  -30); -- オーラ
setEffScaleKey( 0, aura, 1.2, 1.2);
--changeAnime( 0, 0, 17);                       -- 溜め!

entryEffect( SP_start+  60,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect( SP_start+  60,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)

--[[
speff = entryEffect( SP_start+  60,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect( SP_start+  60,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture(  speff, 4, 5);                           -- セリフ差し替え

-]]

setShakeChara( 0, 0, 170, 10);
setShake( 0, 170, 5);


-- 書き文字エントリー
ct = entryEffectLife( SP_start+ 90, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake( SP_start+90, ct, 40, 8);
setEffScaleKey( SP_start+90, ct, 1.4, 1.4);
setScaleKey( SP_start+   170,   0, 1.5, 1.5);

entryEffect( SP_start+  140,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect( SP_start+  140,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( SP_start+ 169,   0, 1.5, 1.5);
setScaleKey( SP_start+ 170,   0, 1.0, 1.0);
setMoveKey( SP_start+  174,    0,      0,  0,   0);
setMoveKey( SP_start+  175,    0,      0,  200,   0);
playSe( SP_start+ 170, SE_05);
speff = entryEffect( SP_start+  170,   1507,   0x100,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture(  speff, 1, 1);
setEffReplaceTexture(  speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture(  speff, 5, 4);                                  -- 技名テクスチャ差し替え


entryFade( SP_start+ 255, 3, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
playSe( SP_start+ 170+64, SE_06);
------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
setScaleKey( SP_start+ 259,   0, 1.2, 1.2);

changeAnime( SP_start+ 260, 0, 31);                                    -- かめはめ発射ポーズ
setMoveKey( SP_start+  259,    0,      0,  0,   -20);
setMoveKey( SP_start+  270,    0,      0,  0,   -10);
setMoveKey( SP_start+  290,    0,   -30,  0,   0);

kamehame_beam = entryEffectLife( SP_start+ 260, SP_02, 109, 0x40,  0,  300,  0,  -30);   -- 伸びるかめはめ波
playSe( SP_start+ 260, SE_07);
setEffScaleKey( SP_start+ 260, kamehame_beam, 1.0, 1.0);
--setEffMoveKey( SP_start+ 260, kamehame_beam, 205, 90);
setEffAlphaKey( SP_start+260, kamehame_beam, 0);
setEffAlphaKey( SP_start+262, kamehame_beam, 0);
setEffAlphaKey( SP_start+263, kamehame_beam, 255);
setEffMoveKey( SP_start+ 260, kamehame_beam, 0, 0);
setEffMoveKey( SP_start+ 304, kamehame_beam, 0, 0);

--spname = entryEffect( SP_start+ 257, 1508,  0x100,  -1,  0,  0,  0);               -- かめはめ波文字
--setEffReplaceTexture( spname, 7, 4);                                  -- 技名テクスチャ差し替え

setMoveKey( SP_start+  300,    0,   -250,  40,   50);
setMoveKey( SP_start+  305,    0,   -550,  70,   80);
setDisp( SP_start+ 305, 0, 0);
setEffMoveKey( SP_start+ 305, kamehame_beam, -400, 0);
setMoveKey( SP_start+  308,    0,   -150,  70,   80);

entryFade( SP_start+ 365, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
entryFadeBg( SP_start+ 260, 0, 109, 0, 10, 10, 10, 200);       -- ベース暗め　背景

shuchusen = entryEffectLife( SP_start+ 260, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( SP_start+ 260, shuchusen, 1.0, 1.0);
setEffScaleKey( SP_start+ 300, shuchusen, 1.0, 1.0);
setEffScaleKey( SP_start+ 309, shuchusen, 2.0, 2.0);


sen2 = entryEffectLife( SP_start+ 260, 921, 109, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey( SP_start+260, sen2, 190);
setShakeChara( SP_start+ 305, 0, 54, 50);
setEffScaleKey( SP_start+ 260, sen2, 1.6, 1.6);

-- 書き文字エントリー
ct = entryEffectLife( SP_start+ 268, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake( SP_start+268, ct, 32, 5);
setEffAlphaKey( SP_start+268, ct, 255);
setEffAlphaKey( SP_start+290, ct, 255);
setEffAlphaKey( SP_start+300, ct, 0);
setEffScaleKey( SP_start+268, ct, 0.0, 0.0);
setEffScaleKey( SP_start+272, ct, 1.3, 1.3);
setEffScaleKey( SP_start+292, ct, 1.3, 1.3);
setEffScaleKey( SP_start+300, ct, 6.0, 6.0);
playSe( SP_start+ 300, SE_07);
entryFade( SP_start+ 355, 10,  5, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setScaleKey( SP_start+ 366,   0, 1.2, 1.2);

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
setDisp( SP_start+ 370, 0, 0);
setDisp( SP_start+ 370, 1, 1);
changeAnime( SP_start+ 370, 1, 104);                        -- ガード
setMoveKey( SP_start+  369,    1,  235,  0,   0);
setMoveKey( SP_start+  370,    1,  235,  0,   0);
setMoveKey( SP_start+  371,    1,  235,  0,   0);
setScaleKey( SP_start+ 369,    1,  0.7, 0.7);
setScaleKey( SP_start+ 370,    1,  0.7, 0.7);

setMoveKey( SP_start+  400,    1,   120,  0,   0);
setScaleKey( SP_start+  400,   1,   1.6,  1.6);

playSe( SP_start+ 390, SE_06);

kamehame_beam2 = entryEffect( SP_start+ 370, SP_03,   0, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey( SP_start+370, kamehame_beam2, 1, 1);
setEffScaleKey( SP_start+452-30, kamehame_beam2, 1, 1);
setEffScaleKey( SP_start+454-30, kamehame_beam2, 1.4, 1.4);
setDamage( SP_start+ 452-30, 1, 0);  -- ダメージ振動等

playSe( SP_start+ 455-30, SE_09);
-- 敵吹っ飛ぶモーション
changeAnime( SP_start+ 455-30, 1, 108);
setMoveKey( SP_start+  455-30, 1,  120,    0,  0);
setMoveKey( SP_start+  469-30, 1,  400,    0,  0);
setScaleKey( SP_start+ 455-30, 1,  1.6, 1.6);
setScaleKey( SP_start+ 458-30, 1,  1.5, 1.5);
setScaleKey( SP_start+ 468-30, 1,  0.2, 0.2);

-- ** エフェクト等 ** --
setShakeChara( SP_start+ 370, 1, 79, 20);

entryFadeBg( SP_start+ 370, 0, 79, 0,10, 10, 10, 200);          -- ベース暗め　背景

entryEffectLife( SP_start+ 370, 921, 79, 0x80,  -1,  0,  0,  0); -- 流線斜め

-- 書き文字エントリー
ct = entryEffectLife( SP_start+ 370, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake( SP_start+370, ct, 99, 20);
setEffScaleKey( SP_start+ 370, ct, 2.4, 2.4);
setEffRotateKey( SP_start+370, ct, -70);
setEffAlphaKey( SP_start+370, ct, 255);
setEffAlphaKey( SP_start+430-20, ct, 255);
setEffAlphaKey( SP_start+450-20, ct, 0);

entryFade( SP_start+ 452-20, 6,  17, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_5 = 469-20;

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 343; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, -1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(SP_dodge+10);
do return end
else end

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

setDisp( SP_start+  spep_5, 1, 1);
setMoveKey( SP_start+   spep_5,    1,  120,    0,  128);
setScaleKey( SP_start+  spep_5,    1,  1.0, 1.0);
setMoveKey( SP_start+   spep_5+1,    1,    0,   0,   128);
setScaleKey( SP_start+  spep_5+1,    1,  0.1, 0.1);

changeAnime( SP_start+  spep_5+1, 1, 107);                         -- 手前ダメージ
entryEffect( SP_start+  spep_5+1, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( SP_start+  spep_5+1, SE_10);

setMoveKey( SP_start+   spep_5+8,    1,    0,   0,   128);
setMoveKey( SP_start+   spep_5+15,   1,  -60,  -200,  -100);
setShake( SP_start+ spep_5+10,6,15);
setShake( SP_start+ spep_5+17,15,9);

setRotateKey( SP_start+  spep_5,  1,  30 );
setRotateKey( SP_start+  spep_5+2,  1,  80 );
setRotateKey( SP_start+  spep_5+4,  1, 120 );
setRotateKey( SP_start+  spep_5+6,  1, 160 );
setRotateKey( SP_start+  spep_5+8,  1, 200 );
setRotateKey( SP_start+  spep_5+10,  1, 260 );
setRotateKey( SP_start+  spep_5+12,  1, 320 );
setRotateKey( SP_start+  spep_5+14,  1,   0 );

setShakeChara( SP_start+  spep_5+14, 1, 5,  10);
setShakeChara( SP_start+  spep_5+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( SP_start+  spep_5+14, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( SP_start+  spep_5+15, ct, 30, 10);
setEffRotateKey( SP_start+  spep_5+15, ct, -40);
setEffScaleKey( SP_start+  spep_5+15, ct, 4.0, 4.0);
setEffScaleKey( SP_start+  spep_5+16, ct, 2.0, 2.0);
setEffScaleKey( SP_start+  spep_5+17, ct, 2.6, 2.6);
setEffScaleKey( SP_start+  spep_5+18, ct, 4.0, 4.0);
setEffScaleKey( SP_start+  spep_5+19, ct, 2.6, 2.6);
setEffScaleKey( SP_start+  spep_5+20, ct, 3.8, 3.8);
setEffScaleKey( SP_start+  spep_5+110, ct, 3.8, 3.8);
setEffAlphaKey( SP_start+  spep_5+15, ct, 255);
setEffAlphaKey( SP_start+  spep_5+105, ct, 255);
setEffAlphaKey( SP_start+  spep_5+115, ct, 0);

playSe( SP_start+  spep_5+3, SE_11);
shuchusen = entryEffectLife( SP_start+  spep_5, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( SP_start+  spep_5+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage( SP_start+ spep_5+15);

entryFade( SP_start+  spep_5+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase( SP_start+ spep_5+120);

end
