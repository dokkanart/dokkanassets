-- sp0428 最後の秘策

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
SP_01 = 151173; --立ち x
SP_02 = 151174; --気合 38
SP_03 = 151175; --気だめ 100
SP_04 = 151176; --ベジータ行く 48
SP_05 = 151177; --ベジータ撃つ 70
SP_06 = 151178; --迫る光弾 40
SP_07 = 151179; --爆発 52
SP_08 = 151180; --ベジータ連打 92
SP_09 = 151181; --連打着弾～爆発 94
SP_10 = 151192; --元気溜まったぞ 130
SP_11 = 151193; --放つ 120
SP_12 = 151194; --迫る 80

--敵側追加

SP_13 = 151205; --立ち x
SP_14 = 151206; --気合 38
SP_15 = 151207; --気だめ 100


multi_frm = 2;

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
setVisibleUI( 0, 0);
changeAnime( 0, 0, 1); 

setDisp( 0, 1, 0);
setDisp( 0, 0, 0);
setMoveKey(   0,   0,    0, -54,   0);
setMoveKey(   0,   1,    0, -54,   0);
setMoveKey(   1,   0,    0, -54,   0);
setMoveKey(   1,   1,    0, -54,   0);
setMoveKey(   2,   0,    0, -54,   0);
setMoveKey(   2,   1,    0, -54,   0);
setMoveKey(   3,   0,    0, -54,   0);
setMoveKey(   3,   1,    0, -54,   0);

setScaleKey(   0,   0, 1.6, 1.6);
setScaleKey(   0,   1, 1.6, 1.6);
setRotateKey(   0,   1, 0);
setRotateKey(   0,   0, 0);

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 立ち＆気合い(0-50F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

spep_0 = 0;

Tame = entryEffectLife( spep_0, SP_01, 12, 0x100, -1,  0,  0,  0);  
setEffScaleKey( spep_0, Tame, 1.0, 1.0);
setEffMoveKey( spep_0, Tame, 0, 0, 0);

Kiai = entryEffectLife( spep_0+12, SP_02, 38, 0x100, -1,  0,  0,  0);  
setEffScaleKey( spep_0+12, Kiai, 1.0, 1.0);
setEffMoveKey( spep_0+12, Kiai, 0, 0, 0);

entryEffect(  spep_0+12,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect(  spep_0+12,   1502,   0x100, -1,  0,  0,  0);   -- eff_003 (気)

-- 書き文字エントリー --
ctZuzun = entryEffectLife( spep_0+12, 10013, 38, 0, -1, 0, 0, 250); -- ズズンッ

setEffShake(spep_0+12, ctZuzun, 38, 10);

setEffAlphaKey(spep_0+12, ctZuzun, 255);
setEffAlphaKey(spep_0+40, ctZuzun, 255);
setEffAlphaKey(spep_0+50, ctZuzun, 0);

setEffScaleKey( spep_0+12, ctZuzun, 0.1, 0.1);
setEffScaleKey( spep_0+40, ctZuzun, 2.3, 2.3);
setEffScaleKey( spep_0+50, ctZuzun, 2.3, 2.3);

-- ** 音 ** --
playSe( spep_0+12, SE_01);

-- ** ホワイトフェード ** --
entryFade( spep_0+9, 2, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255);
entryFade( spep_0+41, 7, 4, 7, fcolor_r, fcolor_g, fcolor_b, 255);

------------------------------------------------------
-- 気溜め(50-150F)
------------------------------------------------------
spep_1 = spep_0+50;

KiTame = entryEffectLife( spep_1, SP_03, 100, 0x100, -1,  0,  0,  0);  
setEffScaleKey( spep_1, KiTame, 1.0, 1.0);
setEffMoveKey( spep_1, KiTame, 0, 0, 0);

speff = entryEffect(  spep_1+10,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_1+10,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

entryEffect(  spep_1,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect(  spep_1,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)

-- 書き文字エントリー --
ctGogogo = entryEffectLife( spep_1+23, 190006, 75, 0x100, -1, 0, 0, 500); -- ゴゴゴゴゴ
setEffScaleKey( spep_1+23, ctGogogo, 0.8, 0.8);
setEffAlphaKey( spep_1+23, ctGogogo, 255);
setEffRotateKey( spep_1+23, ctGogogo, 20);

-- ** 音 ** --
playSe( spep_1, SE_02);
playSe( spep_1+10, SE_04);

-- ** ホワイトフェード ** --
entryFade( spep_1+90, 7, 7, 7, fcolor_r, fcolor_g, fcolor_b, 255);

------------------------------------------------------
-- ベジータ行く(150-188F)
------------------------------------------------------
spep_2= spep_1+100;

VegiGo = entryEffectLife( spep_2, SP_04, 38, 0x100, -1,  0,  0,  0);  
setEffScaleKey( spep_2, VegiGo, 1.0, 1.0);
setEffMoveKey( spep_2, VegiGo, 0, 0, 0);

-- ** 背景 ** --
entryFadeBg( spep_2, 0, 38, 0, 30, 30, 30, 180); -- ベース暗め　背景

-- ** 音 ** --
playSe( spep_2, SE_07);

-- ** ホワイトフェード ** --
entryFade( spep_2+29, 7, 4, 7, fcolor_r, fcolor_g, fcolor_b, 255);

------------------------------------------------------
-- ベジータ撃つ(188-254F)
------------------------------------------------------
spep_3= spep_2+38;

VegiBurst = entryEffectLife( spep_3, SP_05, 66, 0x100, -1,  0,  0,  0);  
setEffScaleKey( spep_3, VegiBurst, 1.0, 1.0);
setEffMoveKey( spep_3, VegiBurst, 0, 0, 0);

-- ** 集中線 ** --
shuchusen3a = entryEffectLife( spep_3, 906, 66, 0x100,  -1, 0,  0,  0);   -- 集中線 
setEffScaleKey( spep_3, shuchusen3a, 1.6, 1.6);
setEffAlphaKey( spep_3, shuchusen3a, 255);

-- ** 背景 ** --
entryFadeBg( spep_3, 0, 66, 0, 30, 30, 30, 180); -- ベース暗め　背景

-- ** 音 ** --
playSe( spep_3+34, SE_06); --222F

-- ** ホワイトフェード ** --
entryFade( spep_3+57, 7, 4, 7, fcolor_r, fcolor_g, fcolor_b, 255);

------------------------------------------------------
-- 迫る光弾(254-294F)
------------------------------------------------------
spep_4= spep_3+66;

-- ** キャラクター ** --
changeAnime( spep_4, 1, 118);

setDisp( spep_4, 1, 1);
setDisp( spep_4+38, 1, 0);

setMoveKey(   spep_4,   1,    200, -300,   0);
setScaleKey(   spep_4,   1, 1.8, 1.8);

setMoveKey(   spep_4+38,   1,    100, -100,   0);
setScaleKey(   spep_4+38,   1, 1.6, 1.6);

setShakeChara( spep_4, 1, 38, 5);

-- ** 奥行き流線斜め ** --
ryuusen3b = entryEffectLife( spep_4, 921, 40, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( spep_4,  ryuusen3b,  230); -- -110
setEffScaleKey( spep_4, ryuusen3b, 1.7, 1.7);
setEffScaleKey( spep_4+40, ryuusen3b, 1.7, 1.7);

-- ** 集中線 ** --
shuchusen3b = entryEffectLife( spep_4, 906, 40, 0x80,  -1, 0,  -100,  100);   -- 集中線 
setEffScaleKey( spep_4, shuchusen3b, 1.8, 1.8);
setEffAlphaKey( spep_4, shuchusen3b, 255);

Homing = entryEffectLife( spep_4, SP_06, 40, 0x80, -1,  0,  0,  0);  
setEffScaleKey( spep_4, Homing, 1.0, 1.0);
setEffMoveKey( spep_4, Homing, 0, 0, 0);

-- ** 背景 ** --
entryFadeBg( spep_4, 0, 40, 0, 30, 30, 30, 255); -- ベース暗め　背景

-- ** 音 ** --
playSe( spep_4, SE_07);

-- ** ホワイトフェード ** --
entryFade( spep_4+31, 7, 4, 7, fcolor_r, fcolor_g, fcolor_b, 255);

------------------------------------------------------
-- 回避タイミング
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 280; --エンドフェイズのフレーム数を置き換える spep_3+100

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

setMoveKey( SP_dodge, 1, 166, -166, 0);
setScaleKey( SP_dodge, 1, 1.7, 1.7);

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setMoveKey( SP_dodge+1, 1, 166, -166, 0);
setScaleKey( SP_dodge+1, 1, 1.7, 1.7);
setRotateKey( SP_dodge+1, 1, 0);

setMoveKey( SP_dodge+8, 1, 166, -166, 0);
setScaleKey( SP_dodge+8, 1, 1.7, 1.7);
setRotateKey( SP_dodge+8, 1, 0);

setMoveKey( SP_dodge+9, 1, 0, 0, 0);
setScaleKey( SP_dodge+9, 1, 1.2, 1.2);
setRotateKey( SP_dodge+9, 1, 0);

setMoveKey(   SP_dodge+10,   0,    -2500, -250,   0);

endPhase(SP_dodge+10);
do return end
else end

------------------------------------------------------
-- 爆発(294-346F)
------------------------------------------------------
spep_5= spep_4+40;

Explo = entryEffectLife( spep_5, SP_07, 52, 0x100, -1,  0,  0,  0);  
setEffScaleKey( spep_5, Explo, 1.0, 1.0);
setEffMoveKey( spep_5, Explo, 0, 0, 0);

-- ** 背景 ** --
entryFadeBg( spep_5, 0, 52, 0, 30, 30, 30, 180); -- ベース暗め　背景

-- ** 音 ** --
playSe( spep_5,SE_10);

-- ** ホワイトフェード ** --
entryFade( spep_5+43, 7, 4, 7, fcolor_r, fcolor_g, fcolor_b, 255);
------------------------------------------------------
-- ベジータ連打(346-438F)
------------------------------------------------------
spep_6= spep_5+52;

VegiRen = entryEffectLife( spep_6, SP_08, 92, 0x100, -1,  0,  0,  0);  
setEffScaleKey( spep_6, VegiRen, 1.0, 1.0);
setEffMoveKey( spep_6, VegiRen, 0, 0, 0);

-- ** 集中線 ** --
shuchusen6 = entryEffectLife( spep_6, 906, 92, 0x100,  -1, 0,  -100,  100);   -- 集中線 
setEffScaleKey( spep_6, shuchusen6, 1.6, 1.6);
setEffAlphaKey( spep_6, shuchusen6, 255);
setEffRotateKey(spep_6, shuchusen6, 0);

-- ** 奥行き流線斜め ** --
ryuusen6 = entryEffectLife( spep_6, 921, 92, 0x80,  -1, 0,  0,  0);   -- 流線斜め
setEffScaleKey( spep_6, ryuusen6, 1.7, 1.7);
setEffAlphaKey( spep_6, ryuusen6, 255);
setEffRotateKey(spep_6, ryuusen6, -140);

-- 書き文字エントリー
ctZuba = entryEffectLife( spep_6+20, 10015, 72, 0x100, -1, 0, 100, 300);    -- ズバババッ

setEffScaleKey( spep_6+20, ctZuba, 3.5, 3.5);

setEffAlphaKey( spep_6+20, ctZuba, 255);
setEffAlphaKey( spep_6+92, ctZuba, 255);

setEffRotateKey( spep_6+20, ctZuba, 20);
setEffRotateKey( spep_6+24, ctZuba, 30);
setEffRotateKey( spep_6+28, ctZuba, 20);
setEffRotateKey( spep_6+32, ctZuba, 30);
setEffRotateKey( spep_6+36, ctZuba, 20);
setEffRotateKey( spep_6+40, ctZuba, 30);
setEffRotateKey( spep_6+44, ctZuba, 20);
setEffRotateKey( spep_6+48, ctZuba, 30);
setEffRotateKey( spep_6+52, ctZuba, 20);
setEffRotateKey( spep_6+56, ctZuba, 30);
setEffRotateKey( spep_6+60, ctZuba, 20);
setEffRotateKey( spep_6+64, ctZuba, 30);
setEffRotateKey( spep_6+68, ctZuba, 20);
setEffRotateKey( spep_6+72, ctZuba, 30);
setEffRotateKey( spep_6+76, ctZuba, 20);
setEffRotateKey( spep_6+80, ctZuba, 30);
setEffRotateKey( spep_6+84, ctZuba, 20);
setEffRotateKey( spep_6+88, ctZuba, 30);
setEffRotateKey( spep_6+92, ctZuba, 20);

-- ** 背景 ** --
entryFadeBg( spep_6, 0, 92, 0, 30, 30, 30, 255); -- ベース暗め　背景

-- ** 音 ** --
playSe( spep_6+8,1030);--344
playSe( spep_6+18,1025);--354
playSe( spep_6+28,1030);--364
playSe( spep_6+38,1025);--374
playSe( spep_6+48,1030);--384
playSe( spep_6+58,1025);--394
playSe( spep_6+68,1030);--404
playSe( spep_6+78,1025);--414
playSe( spep_6+88,SE_07)--424

-- ** ホワイトフェード ** --
entryFade( spep_6+83, 7, 4, 7, fcolor_r, fcolor_g, fcolor_b, 255);
------------------------------------------------------
-- 連打着弾～爆発(438-532F)
------------------------------------------------------
spep_7= spep_6+92;

RenHit = entryEffectLife( spep_7, SP_09, 84, 0x100, -1,  0,  0,  0);  
setEffScaleKey( spep_7, RenHit, 1.0, 1.0);
setEffMoveKey( spep_7, RenHit, 0, 0, 0);

setEffAlphaKey( spep_7, RenHit, 255);
setEffAlphaKey( spep_7+84, RenHit, 255);
setEffAlphaKey( spep_7+86, RenHit, 0);

-- ** 集中線 ** --
shuchusen7 = entryEffectLife( spep_7, 906, 84, 0x100,  -1, 0,  0,  0);   -- 集中線 

setEffScaleKey( spep_7, shuchusen7, 1.6, 1.6);
setEffAlphaKey( spep_7, shuchusen7, 255);
setEffRotateKey(spep_7, shuchusen7, 0);

-- 書き文字エントリー
ctZudo = entryEffectLife( spep_7, 10014, 84, 0x100, -1, 0, 100, 300);-- ズドドドッ

setEffScaleKey( spep_7, ctZudo, 3.2, 3.2);

--setEffRotateKey( spep_7, ctZudo, -330);
--setEffRotateKey( spep_7+84, ctZudo, -330);
setEffRotateKey( spep_7, ctZudo, 70);
setEffRotateKey( spep_7+84, ctZudo, 70);

setEffAlphaKey( spep_7, ctZudo, 255);
setEffAlphaKey( spep_7+84, ctZudo, 255);

--setEffShake( spep_7, ctZudo, 100, 8);
setEffMoveKey( spep_7, ctZudo,  100, 300, 0);
setEffMoveKey( spep_7+2, ctZudo,  120, 320, 0);
setEffMoveKey( spep_7+4, ctZudo,  100, 300, 0);
setEffMoveKey( spep_7+6, ctZudo,  120, 320, 0);
setEffMoveKey( spep_7+8, ctZudo,  100, 300, 0);
setEffMoveKey( spep_7+10, ctZudo,  120, 320, 0);
setEffMoveKey( spep_7+12, ctZudo,  100, 300, 0);
setEffMoveKey( spep_7+14, ctZudo,  120, 320, 0);
setEffMoveKey( spep_7+16, ctZudo,  100, 300, 0);
setEffMoveKey( spep_7+18, ctZudo,  120, 320, 0);
setEffMoveKey( spep_7+20, ctZudo,  100, 300, 0);
setEffMoveKey( spep_7+22, ctZudo,  120, 320, 0);
setEffMoveKey( spep_7+24, ctZudo,  100, 300, 0);
setEffMoveKey( spep_7+26, ctZudo,  120, 320, 0);
setEffMoveKey( spep_7+28, ctZudo,  100, 300, 0);
setEffMoveKey( spep_7+30, ctZudo,  120, 320, 0);
setEffMoveKey( spep_7+32, ctZudo,  100, 300, 0);
setEffMoveKey( spep_7+34, ctZudo,  120, 320, 0);
setEffMoveKey( spep_7+36, ctZudo,  100, 300, 0);
setEffMoveKey( spep_7+38, ctZudo,  120, 320, 0);
setEffMoveKey( spep_7+40, ctZudo,  100, 300, 0);
setEffMoveKey( spep_7+42, ctZudo,  120, 320, 0);
setEffMoveKey( spep_7+44, ctZudo,  100, 300, 0);
setEffMoveKey( spep_7+46, ctZudo,  120, 320, 0);
setEffMoveKey( spep_7+48, ctZudo,  100, 300, 0);
setEffMoveKey( spep_7+50, ctZudo,  120, 320, 0);
setEffMoveKey( spep_7+52, ctZudo,  100, 300, 0);
setEffMoveKey( spep_7+54, ctZudo,  120, 320, 0);
setEffMoveKey( spep_7+56, ctZudo,  100, 300, 0);
setEffMoveKey( spep_7+58, ctZudo,  120, 320, 0);
setEffMoveKey( spep_7+60, ctZudo,  100, 300, 0);
setEffMoveKey( spep_7+62, ctZudo,  120, 320, 0);
setEffMoveKey( spep_7+64, ctZudo,  100, 300, 0);
setEffMoveKey( spep_7+66, ctZudo,  120, 320, 0);
setEffMoveKey( spep_7+68, ctZudo,  100, 300, 0);
setEffMoveKey( spep_7+70, ctZudo,  120, 320, 0);
setEffMoveKey( spep_7+72, ctZudo,  100, 300, 0);
setEffMoveKey( spep_7+74, ctZudo,  120, 320, 0);
setEffMoveKey( spep_7+76, ctZudo,  100, 300, 0);
setEffMoveKey( spep_7+78, ctZudo,  120, 320, 0);
setEffMoveKey( spep_7+80, ctZudo,  100, 300, 0);
setEffMoveKey( spep_7+82, ctZudo,  120, 320, 0);
setEffMoveKey( spep_7+84, ctZudo,  100, 300, 0);
--setEffMoveKey( spep_7+86, ctZudo,  120, 320, 0);
--setEffMoveKey( spep_7+88, ctZudo,  100, 300, 0);
--setEffMoveKey( spep_7+90, ctZudo,  120, 320, 0);
--setEffMoveKey( spep_7+92, ctZudo,  100, 300, 0);
--setEffMoveKey( spep_7+94, ctZudo,  120, 320, 0);
 
-- ** 背景 ** --
entryFadeBg( spep_7, 0, 94, 0, 30, 30, 30, 180); -- ベース暗め　背景

-- ** 音 ** --
playSe( spep_7,SE_09);
setSeVolume( spep_7, SE_09, 80 );
playSe( spep_7+4,SE_09);--442
setSeVolume( spep_7+4, SE_09, 80 );
playSe( spep_7+12,SE_09);--450
setSeVolume( spep_7+12, SE_09, 80 );
playSe( spep_7+20,SE_09);--458
setSeVolume( spep_7+20, SE_09, 80 );
playSe( spep_7+28,SE_09);--466
setSeVolume( spep_7+28, SE_09, 80 );
playSe( spep_7+36,SE_09);--474
setSeVolume( spep_7+36, SE_09, 80 );
playSe( spep_7+44,SE_09);--482
setSeVolume( spep_7+44, SE_09, 80 );
playSe( spep_7+52,SE_09);--490
setSeVolume( spep_7+52, SE_09, 80 );

-- ** ホワイトフェード ** --
entryFade( spep_7+75, 7, 4, 7, fcolor_r, fcolor_g, fcolor_b, 255);
------------------------------------------------------
-- 元気溜まったぞ(532-658F)
------------------------------------------------------
spep_8 = spep_7+84;
Genkitame = entryEffectLife( spep_8, SP_10, 126, 0x100, -1,  0,  0,  0);  
setEffScaleKey( spep_8, Genkitame, 1.0, 1.0);
setEffMoveKey( spep_8, Genkitame, 0, 0, 0);

-- ** 集中線 ** --
shuchusen8 = entryEffectLife( spep_8+30, 906, 96, 0x100,  -1, 0,  -0,  0);   -- 集中線 
setEffScaleKey( spep_8+30, shuchusen8, 1.6, 1.6);
setEffAlphaKey( spep_8+30, shuchusen8, 255);

-- ** 背景 ** --
entryFadeBg( spep_8, 0, 126, 0, 30, 30, 30, 180); -- ベース暗め　背景

-- ** 音 ** --
playSe( spep_8+10, SE_03);--542
playSe( spep_8+28, SE_03);--556
playSe( spep_8+46, SE_03);--542
playSe( spep_8+64, SE_03);--542
playSe( spep_8+82, SE_03);--542
playSe( spep_8+100, SE_03);--542
playSe( spep_8+118, SE_03);--542
--playSe( spep_8+126, SE_03);--542

-- ** ホワイトフェード ** --
entryFade( spep_8+117, 7, 4, 7, fcolor_r, fcolor_g, fcolor_b, 255);
---------------------------------
--カードカットイン(90)(658-748F)
---------------------------------
spep_9 = spep_8+126;

setScaleKey( spep_9-1,   0, 1.2, 1.2);
--setScaleKey( spep_4-1,   0, 1.5, 1.5);
setScaleKey( spep_9,   0, 1.0, 1.0);

speff = entryEffect(  spep_9,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen00 = entryEffectLife( spep_9, 906, 90, 0x100,  -1, 0,  0,  0); -- 集中線5
setEffMoveKey( spep_9, shuchusen00, 0, 0, 0);
setEffScaleKey( spep_9, shuchusen00, 1.4, 1.4);
setEffAlphaKey( spep_9, shuchusen00, 255);
setEffRotateKey( spep_9, shuchusen00, 0);

-- ** ホワイトフェード ** --
entryFade( spep_9+81, 7, 4, 7, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade

-- ** 音 ** --
playSe( spep_9+4, SE_05);
------------------------------------------------------
-- 放つ(748-862F)
------------------------------------------------------
spep_10 = spep_9+90;

GenkiBurst = entryEffectLife( spep_10, SP_11, 114, 0x100, -1,  0,  0,  0);  
setEffScaleKey( spep_10, GenkiBurst, 1.0, 1.0);
setEffMoveKey( spep_10, GenkiBurst, 0, 0, 0);

spname = entryEffect( spep_10, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- ** フェード ** --
entryFadeBg( spep_10-1, 0, 117, 0, 0, 0, 0, 255);
entryFadeBg( spep_10, 0, 38, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white
entryFadeBg( spep_10+38, 0, 10, 0, 78, 252, 241, 150);     -- blue
entryFadeBg( spep_10+55, 10, 0, 10, 78, 252, 241, 150);     -- blue
entryFadeBg( spep_10+86, 8, 2, 5, 78, 252, 241, 150);     -- blue

-- ** 奥行き流線斜め ** --
sen10 = entryEffectLife( spep_10, 921, 114, 0x80,  -1,  0,  0,  0); -- 奥行き流線斜め
setEffRotateKey( spep_10, sen10, 190);
setEffScaleKey( spep_10, sen10, 1.3, 1.3);

-- ** 集中線 ** --
shuchusen10 = entryEffectLife( spep_10, 906, 114, 0x100,  -1, 0,  0,  0);   -- 集中線4
setEffScaleKey( spep_10, shuchusen10, 1.6, 1.6);
--setEffScaleKey( spep_10+40, shuchusen10, 1.0, 1.0);
--setEffScaleKey( spep_10+49, shuchusen10, 2.0, 2.0);

-- 書き文字エントリー
ctZuo = entryEffectLife( spep_10+4, 10012, 32, 0, -1, 0, 100, 300); -- ズオッ
setEffShake( spep_10+4, ctZuo, 32, 15);
setEffAlphaKey( spep_10+4, ctZuo, 255);
setEffAlphaKey( spep_10+26, ctZuo, 255);
setEffAlphaKey( spep_10+36, ctZuo, 0);
setEffScaleKey( spep_10+4, ctZuo, 0.5, 0.5);
setEffScaleKey( spep_10+7, ctZuo, 2.5, 2.5);
setEffScaleKey( spep_10+26, ctZuo, 2.5, 2.5);
setEffScaleKey( spep_10+36, ctZuo, 6.5, 6.5);
setEffRotateKey( spep_10+4, ctZuo, 30);

-- ** 音 ** --
playSe( spep_10, SE_07);
--playSe( spep_10+40, SE_06);

-- ** 背景 ** --
entryFadeBg( spep_10, 0, 114, 0, 30, 30, 30, 255); -- ベース暗め　背景

-- ** ホワイトフェード ** --
entryFade( spep_10+105, 7, 4, 7, fcolor_r, fcolor_g, fcolor_b, 255);

------------------------------------------------------
-- 迫る(862-942F)
------------------------------------------------------
spep_11=spep_10+114;

--準備
setRotateKey(   spep_11-2,   1, 0);

changeAnime( spep_11-1, 1, 106);                        -- 気ダメ後ろ
setDisp( spep_11, 1, 1);

setMoveKey( spep_11-2, 1, 120, 0, 0);
setMoveKey( spep_11-1, 1, 400, -400, 0);
--ここから
setMoveKey( spep_11, 1, 50, 0, 0);
setScaleKey( spep_11-1, 1, 1.7, 1.7);
setRotateKey(   spep_11-1,   1, 30);

setMoveKey( spep_11+76, 1, 200, -100, 0);
setScaleKey( spep_11+76, 1, 1.7, 1.7);
setRotateKey(   spep_11+76,   1, 50);

setDisp( spep_11+76, 1, 0);

-- ** 奥行き流線斜め ** --
sen11 = entryEffectLife( spep_11, 921, 76, 0x80,  -1,  0,  0,  0); -- 奥行き流線斜め
setEffRotateKey( spep_11, sen11, 190);
setEffScaleKey( spep_11, sen11, 1.3, 1.3);

GenkiHoming = entryEffectLife( spep_11, SP_12, 76, 0x80, -1,  0,  0,  0);  
setEffScaleKey( spep_11, GenkiHoming, 1.0, 1.0);
setEffMoveKey( spep_11, GenkiHoming, 0, 0, 0);

-- ** 集中線 ** --
--shuchusen11 = entryEffectLife( spep_11, 906, 76, 0x80,  -1, 0,  0,  0);   -- 集中線4
--setEffScaleKey( spep_11, shuchusen11, 1.6, 1.6);
--setEffScaleKey( spep_11+40, shuchusen11, 1.0, 1.0);
--setEffScaleKey( spep_11+49, shuchusen11, 2.0, 2.0);

-- 書き文字エントリー
ctZudodo = entryEffectLife( spep_11, 10014, 76, 0x100, -1, 0, 0, 355); -- ズドドッ

setEffShake(spep_11, ctZudodo, 76, 20);

setEffScaleKey( spep_11, ctZudodo, 3.2, 3.2);

--setEffRotateKey(spep_11, ctZudodo, -330);
setEffRotateKey(spep_11, ctZudodo, 70);

setEffAlphaKey(spep_11, ctZudodo, 255);
setEffAlphaKey(spep_11+65, ctZudodo, 255);
setEffAlphaKey(spep_11+76, ctZudodo, 0);

-- ** 背景 ** --
entryFadeBg( spep_11, 0, 76, 0, 30, 30, 30, 255); -- ベース暗め　背景

-- ** 音 ** --
playSe( spep_11, SE_06);

-- ** ホワイトフェード ** --
entryFade( spep_11+63, 7, 8, 7, fcolor_r, fcolor_g, fcolor_b, 255);
------------------------------------------------------
-- ギャン(942-1002F)
------------------------------------------------------
spep_12=spep_11+76;

Gyan = entryEffect( spep_12, 190000, 0x100, -1,  0,  0,  0);  
setEffScaleKey( spep_12, Gyan, 1.0, 1.0);
setEffMoveKey( spep_12, Gyan, 0, 0, 0);

-- 書き文字エントリー
ctGyan = entryEffectLife( spep_12, 10006, 45, 0x100, -1, 0, 0, 255); -- ギャン

setEffShake( spep_12, ctGyan, 45, 20);

setEffScaleKey( spep_12, ctGyan, 0.1, 0.1);
setEffScaleKey( spep_12, ctGyan, 2.6, 2.6);
setEffScaleKey( spep_12+23, ctGyan, 3.2, 3.2);

setEffAlphaKey( spep_12, ctGyan, 255);
setEffAlphaKey( spep_12+33, ctGyan, 255);
setEffAlphaKey( spep_12+45, ctGyan, 0);

-- ** 音 ** --
playSe( spep_12+8, SE_09);

-- ** ホワイトフェード ** --
entryFade( spep_12+48, 7, 7, 7, fcolor_r, fcolor_g, fcolor_b, 255);
------------------------------------------------------
-- 爆発(1002-1122F)
------------------------------------------------------
spep_13=spep_12+58;

Fin = entryEffect( spep_13, 1551, 0x100, -1,  0,  0,  0);
setEffScaleKey( spep_13, Fin , 1.1, 1.1);
setEffMoveKey( spep_13, Fin , 0, 0, 0);

-- ダメージ表示
dealDamage( spep_13+16);
--entryFade( spep_13+100, 9, 10, 1, 8, 8, 8, 255); -- black fade
endPhase( spep_13+100);

-- ** 音 ** --
playSe( spep_13+4, SE_10);

else


------------------------------------------------------
--敵側	
------------------------------------------------------
-- 立ち＆気合い(0-50F)
------------------------------------------------------
spep_0 = 0;

Tame = entryEffectLife( spep_0, SP_13, 12, 0x100, -1,  0,  0,  0);  
setEffScaleKey( spep_0, Tame, 1.0, 1.0);
setEffMoveKey( spep_0, Tame, 0, 0, 0);

Kiai = entryEffectLife( spep_0+12, SP_14, 38, 0x100, -1,  0,  0,  0);  
setEffScaleKey( spep_0+12, Kiai, 1.0, 1.0);
setEffMoveKey( spep_0+12, Kiai, 0, 0, 0);

entryEffect(  spep_0+12,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect(  spep_0+12,   1502,   0x100, -1,  0,  0,  0);   -- eff_003 (気)

-- 書き文字エントリー --
ctZuzun = entryEffectLife( spep_0+12, 10013, 38, 0, -1, 0, 0, 250); -- ズズンッ

setEffShake(spep_0+12, ctZuzun, 38, 10);

setEffAlphaKey(spep_0+12, ctZuzun, 255);
setEffAlphaKey(spep_0+40, ctZuzun, 255);
setEffAlphaKey(spep_0+50, ctZuzun, 0);

setEffScaleKey( spep_0+12, ctZuzun, 0.1, 0.1);
setEffScaleKey( spep_0+40, ctZuzun, 2.3, 2.3);
setEffScaleKey( spep_0+50, ctZuzun, 2.3, 2.3);

-- ** 音 ** --
playSe( spep_0+12, SE_01);

-- ** ホワイトフェード ** --
entryFade( spep_0+9, 2, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255);
entryFade( spep_0+41, 7, 4, 7, fcolor_r, fcolor_g, fcolor_b, 255);

------------------------------------------------------
-- 気溜め(50-150F)
------------------------------------------------------
spep_1 = spep_0+50;

KiTame = entryEffectLife( spep_1, SP_15, 100, 0x100, -1,  0,  0,  0);  
setEffScaleKey( spep_1, KiTame, 1.0, 1.0);
setEffMoveKey( spep_1, KiTame, 0, 0, 0);

--speff = entryEffect(  spep_1+10,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  spep_1+10,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

entryEffect(  spep_1,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect(  spep_1,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)

-- 書き文字エントリー --
ctGogogo = entryEffectLife( spep_1+23, 190006, 75, 0x100, -1, 0, 0, 500); -- ゴゴゴゴゴ
setEffScaleKey( spep_1+23, ctGogogo, -0.8, 0.8);
setEffAlphaKey( spep_1+23, ctGogogo, 255);
setEffRotateKey( spep_1+23, ctGogogo, 20);

-- ** 音 ** --
playSe( spep_1, SE_02);
playSe( spep_1+10, SE_04);

-- ** ホワイトフェード ** --
entryFade( spep_1+90, 7, 7, 7, fcolor_r, fcolor_g, fcolor_b, 255);

------------------------------------------------------
-- ベジータ行く(150-188F)
------------------------------------------------------
spep_2= spep_1+100;

VegiGo = entryEffectLife( spep_2, SP_04, 38, 0x100, -1,  0,  0,  0);  
setEffScaleKey( spep_2, VegiGo, -1.0, 1.0);
setEffMoveKey( spep_2, VegiGo, 0, 0, 0);

-- ** 背景 ** --
entryFadeBg( spep_2, 0, 38, 0, 30, 30, 30, 180); -- ベース暗め　背景

-- ** 音 ** --
playSe( spep_2, SE_07);

-- ** ホワイトフェード ** --
entryFade( spep_2+29, 7, 4, 7, fcolor_r, fcolor_g, fcolor_b, 255);

------------------------------------------------------
-- ベジータ撃つ(188-254F)
------------------------------------------------------
spep_3= spep_2+38;

VegiBurst = entryEffectLife( spep_3, SP_05, 66, 0x100, -1,  0,  0,  0);  
setEffScaleKey( spep_3, VegiBurst, -1.0, 1.0);
setEffMoveKey( spep_3, VegiBurst, 0, 0, 0);

-- ** 集中線 ** --
shuchusen3a = entryEffectLife( spep_3, 906, 66, 0x100,  -1, 0,  0,  0);   -- 集中線 
setEffScaleKey( spep_3, shuchusen3a, 1.6, 1.6);
setEffAlphaKey( spep_3, shuchusen3a, 255);

-- ** 背景 ** --
entryFadeBg( spep_3, 0, 66, 0, 30, 30, 30, 180); -- ベース暗め　背景

-- ** 音 ** --
playSe( spep_3+34, SE_06); --222F

-- ** ホワイトフェード ** --
entryFade( spep_3+57, 7, 4, 7, fcolor_r, fcolor_g, fcolor_b, 255);

------------------------------------------------------
-- 迫る光弾(254-294F)
------------------------------------------------------
spep_4= spep_3+66;

-- ** キャラクター ** --
changeAnime( spep_4, 1, 118);

setDisp( spep_4, 1, 1);
setDisp( spep_4+38, 1, 0);

setMoveKey(   spep_4,   1,    200, -300,   0);
setScaleKey(   spep_4,   1, 1.8, 1.8);

setMoveKey(   spep_4+38,   1,    100, -100,   0);
setScaleKey(   spep_4+38,   1, 1.6, 1.6);

setShakeChara( spep_4, 1, 38, 5);

-- ** 奥行き流線斜め ** --
ryuusen3b = entryEffectLife( spep_4, 921, 40, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( spep_4,  ryuusen3b,  230); -- -110
setEffScaleKey( spep_4, ryuusen3b, 1.7, 1.7);
setEffScaleKey( spep_4+40, ryuusen3b, 1.7, 1.7);

-- ** 集中線 ** --
shuchusen3b = entryEffectLife( spep_4, 906, 40, 0x80,  -1, 0,  -100,  100);   -- 集中線 
setEffScaleKey( spep_4, shuchusen3b, 1.8, 1.8);
setEffAlphaKey( spep_4, shuchusen3b, 255);

Homing = entryEffectLife( spep_4, SP_06, 40, 0x80, -1,  0,  0,  0);  
setEffScaleKey( spep_4, Homing, 1.0, 1.0);
setEffMoveKey( spep_4, Homing, 0, 0, 0);

-- ** 背景 ** --
entryFadeBg( spep_4, 0, 40, 0, 30, 30, 30, 255); -- ベース暗め　背景

-- ** 音 ** --
playSe( spep_4, SE_07);

-- ** ホワイトフェード ** --
entryFade( spep_4+31, 7, 4, 7, fcolor_r, fcolor_g, fcolor_b, 255);

------------------------------------------------------
-- 回避タイミング
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 280; --エンドフェイズのフレーム数を置き換える spep_3+100

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

setMoveKey( SP_dodge, 1, 166, -166, 0);
setScaleKey( SP_dodge, 1, 1.7, 1.7);

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setMoveKey( SP_dodge+1, 1, 166, -166, 0);
setScaleKey( SP_dodge+1, 1, 1.7, 1.7);
setRotateKey( SP_dodge+1, 1, 0);

setMoveKey( SP_dodge+8, 1, 166, -166, 0);
setScaleKey( SP_dodge+8, 1, 1.7, 1.7);
setRotateKey( SP_dodge+8, 1, 0);

setMoveKey( SP_dodge+9, 1, 0, 0, 0);
setScaleKey( SP_dodge+9, 1, 1.2, 1.2);
setRotateKey( SP_dodge+9, 1, 0);

setMoveKey(   SP_dodge+10,   0,    -2500, -250,   0);

endPhase(SP_dodge+10);
do return end
else end

------------------------------------------------------
-- 爆発(294-346F)
------------------------------------------------------
spep_5= spep_4+40;

Explo = entryEffectLife( spep_5, SP_07, 52, 0x100, -1,  0,  0,  0);  
setEffScaleKey( spep_5, Explo, 1.0, 1.0);
setEffMoveKey( spep_5, Explo, 0, 0, 0);

-- ** 背景 ** --
entryFadeBg( spep_5, 0, 52, 0, 30, 30, 30, 180); -- ベース暗め　背景

-- ** 音 ** --
playSe( spep_5,SE_10);

-- ** ホワイトフェード ** --
entryFade( spep_5+43, 7, 4, 7, fcolor_r, fcolor_g, fcolor_b, 255);
------------------------------------------------------
-- ベジータ連打(346-438F)
------------------------------------------------------
spep_6= spep_5+52;

VegiRen = entryEffectLife( spep_6, SP_08, 92, 0x100, -1,  0,  0,  0);  
setEffScaleKey( spep_6, VegiRen, 1.0, 1.0);
setEffMoveKey( spep_6, VegiRen, 0, 0, 0);

-- ** 集中線 ** --
shuchusen6 = entryEffectLife( spep_6, 906, 92, 0x100,  -1, 0,  -100,  100);   -- 集中線 
setEffScaleKey( spep_6, shuchusen6, 1.6, 1.6);
setEffAlphaKey( spep_6, shuchusen6, 255);
setEffRotateKey(spep_6, shuchusen6, 0);

-- ** 奥行き流線斜め ** --
ryuusen6 = entryEffectLife( spep_6, 921, 92, 0x80,  -1, 0,  0,  0);   -- 流線斜め
setEffScaleKey( spep_6, ryuusen6, 1.7, 1.7);
setEffAlphaKey( spep_6, ryuusen6, 255);
setEffRotateKey(spep_6, ryuusen6, -140);

-- 書き文字エントリー
ctZuba = entryEffectLife( spep_6+20, 10015, 72, 0x100, -1, 0, 100, 300);    -- ズバババッ

setEffScaleKey( spep_6+20, ctZuba, 3.5, 3.5);

setEffAlphaKey( spep_6+20, ctZuba, 255);
setEffAlphaKey( spep_6+92, ctZuba, 255);

setEffRotateKey( spep_6+20, ctZuba, 20);
setEffRotateKey( spep_6+24, ctZuba, 30);
setEffRotateKey( spep_6+28, ctZuba, 20);
setEffRotateKey( spep_6+32, ctZuba, 30);
setEffRotateKey( spep_6+36, ctZuba, 20);
setEffRotateKey( spep_6+40, ctZuba, 30);
setEffRotateKey( spep_6+44, ctZuba, 20);
setEffRotateKey( spep_6+48, ctZuba, 30);
setEffRotateKey( spep_6+52, ctZuba, 20);
setEffRotateKey( spep_6+56, ctZuba, 30);
setEffRotateKey( spep_6+60, ctZuba, 20);
setEffRotateKey( spep_6+64, ctZuba, 30);
setEffRotateKey( spep_6+68, ctZuba, 20);
setEffRotateKey( spep_6+72, ctZuba, 30);
setEffRotateKey( spep_6+76, ctZuba, 20);
setEffRotateKey( spep_6+80, ctZuba, 30);
setEffRotateKey( spep_6+84, ctZuba, 20);
setEffRotateKey( spep_6+88, ctZuba, 30);
setEffRotateKey( spep_6+92, ctZuba, 20);

-- ** 背景 ** --
entryFadeBg( spep_6, 0, 92, 0, 30, 30, 30, 255); -- ベース暗め　背景

-- ** 音 ** --
playSe( spep_6+8,1030);--344
playSe( spep_6+18,1025);--354
playSe( spep_6+28,1030);--364
playSe( spep_6+38,1025);--374
playSe( spep_6+48,1030);--384
playSe( spep_6+58,1025);--394
playSe( spep_6+68,1030);--404
playSe( spep_6+78,1025);--414
playSe( spep_6+88,SE_07)--424

-- ** ホワイトフェード ** --
entryFade( spep_6+83, 7, 4, 7, fcolor_r, fcolor_g, fcolor_b, 255);
------------------------------------------------------
-- 連打着弾～爆発(438-532F)
------------------------------------------------------
spep_7= spep_6+92;

RenHit = entryEffectLife( spep_7, SP_09, 84, 0x100, -1,  0,  0,  0);  
setEffScaleKey( spep_7, RenHit, 1.0, 1.0);
setEffMoveKey( spep_7, RenHit, 0, 0, 0);

setEffAlphaKey( spep_7, RenHit, 255);
setEffAlphaKey( spep_7+84, RenHit, 255);
setEffAlphaKey( spep_7+86, RenHit, 0);

-- ** 集中線 ** --
shuchusen7 = entryEffectLife( spep_7, 906, 84, 0x100,  -1, 0,  0,  0);   -- 集中線 

setEffScaleKey( spep_7, shuchusen7, 1.6, 1.6);
setEffAlphaKey( spep_7, shuchusen7, 255);
setEffRotateKey(spep_7, shuchusen7, 0);

-- 書き文字エントリー
ctZudo = entryEffectLife( spep_7, 10014, 84, 0x100, -1, 0, 0, 300);-- ズドドドッ

setEffScaleKey( spep_7, ctZudo, 3.2, 3.2);

setEffRotateKey( spep_7, ctZudo, -10);
setEffRotateKey( spep_7+84, ctZudo, -10);

setEffAlphaKey( spep_7, ctZudo, 255);
setEffAlphaKey( spep_7+84, ctZudo, 255);

--setEffShake( spep_7, ctZudo, 100, 8);
setEffMoveKey( spep_7, ctZudo,  0, 300, 0);
setEffMoveKey( spep_7+2, ctZudo,  20, 320, 0);
setEffMoveKey( spep_7+4, ctZudo,  0, 300, 0);
setEffMoveKey( spep_7+6, ctZudo,  20, 320, 0);
setEffMoveKey( spep_7+8, ctZudo,  0, 300, 0);
setEffMoveKey( spep_7+10, ctZudo,  20, 320, 0);
setEffMoveKey( spep_7+12, ctZudo,  0, 300, 0);
setEffMoveKey( spep_7+14, ctZudo,  20, 320, 0);
setEffMoveKey( spep_7+16, ctZudo,  0, 300, 0);
setEffMoveKey( spep_7+18, ctZudo,  20, 320, 0);
setEffMoveKey( spep_7+20, ctZudo,  0, 300, 0);
setEffMoveKey( spep_7+22, ctZudo,  20, 320, 0);
setEffMoveKey( spep_7+24, ctZudo,  0, 300, 0);
setEffMoveKey( spep_7+26, ctZudo,  20, 320, 0);
setEffMoveKey( spep_7+28, ctZudo,  0, 300, 0);
setEffMoveKey( spep_7+30, ctZudo,  20, 320, 0);
setEffMoveKey( spep_7+32, ctZudo,  0, 300, 0);
setEffMoveKey( spep_7+34, ctZudo,  20, 320, 0);
setEffMoveKey( spep_7+36, ctZudo,  0, 300, 0);
setEffMoveKey( spep_7+38, ctZudo,  20, 320, 0);
setEffMoveKey( spep_7+40, ctZudo,  0, 300, 0);
setEffMoveKey( spep_7+42, ctZudo,  20, 320, 0);
setEffMoveKey( spep_7+44, ctZudo,  0, 300, 0);
setEffMoveKey( spep_7+46, ctZudo,  20, 320, 0);
setEffMoveKey( spep_7+48, ctZudo,  0, 300, 0);
setEffMoveKey( spep_7+50, ctZudo,  20, 320, 0);
setEffMoveKey( spep_7+52, ctZudo,  0, 300, 0);
setEffMoveKey( spep_7+54, ctZudo,  20, 320, 0);
setEffMoveKey( spep_7+56, ctZudo,  0, 300, 0);
setEffMoveKey( spep_7+58, ctZudo,  20, 320, 0);
setEffMoveKey( spep_7+60, ctZudo,  0, 300, 0);
setEffMoveKey( spep_7+62, ctZudo,  20, 320, 0);
setEffMoveKey( spep_7+64, ctZudo,  0, 300, 0);
setEffMoveKey( spep_7+66, ctZudo,  20, 320, 0);
setEffMoveKey( spep_7+68, ctZudo,  0, 300, 0);
setEffMoveKey( spep_7+70, ctZudo,  20, 320, 0);
setEffMoveKey( spep_7+72, ctZudo,  0, 300, 0);
setEffMoveKey( spep_7+74, ctZudo,  20, 320, 0);
setEffMoveKey( spep_7+76, ctZudo,  0, 300, 0);
setEffMoveKey( spep_7+78, ctZudo,  20, 320, 0);
setEffMoveKey( spep_7+80, ctZudo,  0, 300, 0);
setEffMoveKey( spep_7+82, ctZudo,  20, 320, 0);
setEffMoveKey( spep_7+84, ctZudo,  0, 300, 0);
--setEffMoveKey( spep_7+86, ctZudo,  120, 320, 0);
--setEffMoveKey( spep_7+88, ctZudo,  100, 300, 0);
--setEffMoveKey( spep_7+90, ctZudo,  120, 320, 0);
--setEffMoveKey( spep_7+92, ctZudo,  100, 300, 0);
--setEffMoveKey( spep_7+94, ctZudo,  120, 320, 0);
 
-- ** 背景 ** --
entryFadeBg( spep_7, 0, 94, 0, 30, 30, 30, 180); -- ベース暗め　背景

-- ** 音 ** --
playSe( spep_7,SE_09);
setSeVolume( spep_7, SE_09, 80 );
playSe( spep_7+4,SE_09);--442
setSeVolume( spep_7+4, SE_09, 80 );
playSe( spep_7+12,SE_09);--450
setSeVolume( spep_7+12, SE_09, 80 );
playSe( spep_7+20,SE_09);--458
setSeVolume( spep_7+20, SE_09, 80 );
playSe( spep_7+28,SE_09);--466
setSeVolume( spep_7+28, SE_09, 80 );
playSe( spep_7+36,SE_09);--474
setSeVolume( spep_7+36, SE_09, 80 );
playSe( spep_7+44,SE_09);--482
setSeVolume( spep_7+44, SE_09, 80 );
playSe( spep_7+52,SE_09);--490
setSeVolume( spep_7+52, SE_09, 80 );

-- ** ホワイトフェード ** --
entryFade( spep_7+75, 7, 4, 7, fcolor_r, fcolor_g, fcolor_b, 255);
------------------------------------------------------
-- 元気溜まったぞ(532-658F)
------------------------------------------------------
spep_8 = spep_7+84;
Genkitame = entryEffectLife( spep_8, SP_10, 126, 0x100, -1,  0,  0,  0);  
setEffScaleKey( spep_8, Genkitame, -1.0, 1.0);
setEffMoveKey( spep_8, Genkitame, 0, 0, 0);

-- ** 集中線 ** --
shuchusen8 = entryEffectLife( spep_8+30, 906, 96, 0x100,  -1, 0,  -0,  0);   -- 集中線 
setEffScaleKey( spep_8+30, shuchusen8, 1.6, 1.6);
setEffAlphaKey( spep_8+30, shuchusen8, 255);

-- ** 背景 ** --
entryFadeBg( spep_8, 0, 126, 0, 30, 30, 30, 180); -- ベース暗め　背景

-- ** 音 ** --
playSe( spep_8+10, SE_03);--542
playSe( spep_8+28, SE_03);--556
playSe( spep_8+46, SE_03);--542
playSe( spep_8+64, SE_03);--542
playSe( spep_8+82, SE_03);--542
playSe( spep_8+100, SE_03);--542
playSe( spep_8+118, SE_03);--542
--playSe( spep_8+126, SE_03);--542

-- ** ホワイトフェード ** --
entryFade( spep_8+117, 7, 4, 7, fcolor_r, fcolor_g, fcolor_b, 255);
---------------------------------
--カードカットイン(90)(658-748F)
---------------------------------
spep_9 = spep_8+126;

setScaleKey( spep_9-1,   0, 1.2, 1.2);
--setScaleKey( spep_4-1,   0, 1.5, 1.5);
setScaleKey( spep_9,   0, 1.0, 1.0);

speff = entryEffect(  spep_9,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen00 = entryEffectLife( spep_9, 906, 90, 0x100,  -1, 0,  0,  0); -- 集中線5
setEffMoveKey( spep_9, shuchusen00, 0, 0, 0);
setEffScaleKey( spep_9, shuchusen00, 1.4, 1.4);
setEffAlphaKey( spep_9, shuchusen00, 255);
setEffRotateKey( spep_9, shuchusen00, 0);

-- ** ホワイトフェード ** --
entryFade( spep_9+81, 7, 4, 7, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade

-- ** 音 ** --
playSe( spep_9+4, SE_05);
------------------------------------------------------
-- 放つ(748-862F)
------------------------------------------------------
spep_10 = spep_9+90;

GenkiBurst = entryEffectLife( spep_10, SP_11, 114, 0x100, -1,  0,  0,  0);  
setEffScaleKey( spep_10, GenkiBurst, 1.0, 1.0);
setEffMoveKey( spep_10, GenkiBurst, 0, 0, 0);

spname = entryEffect( spep_10, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- ** フェード ** --
entryFadeBg( spep_10-1, 0, 117, 0, 0, 0, 0, 255);
entryFadeBg( spep_10, 0, 38, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white
entryFadeBg( spep_10+38, 0, 10, 0, 78, 252, 241, 150);     -- blue
entryFadeBg( spep_10+55, 10, 0, 10, 78, 252, 241, 150);     -- blue
entryFadeBg( spep_10+86, 8, 2, 5, 78, 252, 241, 150);     -- blue

-- ** 奥行き流線斜め ** --
sen10 = entryEffectLife( spep_10, 921, 114, 0x80,  -1,  0,  0,  0); -- 奥行き流線斜め
setEffRotateKey( spep_10, sen10, 190);
setEffScaleKey( spep_10, sen10, 1.3, 1.3);

-- ** 集中線 ** --
shuchusen10 = entryEffectLife( spep_10, 906, 114, 0x100,  -1, 0,  0,  0);   -- 集中線4
setEffScaleKey( spep_10, shuchusen10, 1.6, 1.6);
--setEffScaleKey( spep_10+40, shuchusen10, 1.0, 1.0);
--setEffScaleKey( spep_10+49, shuchusen10, 2.0, 2.0);

-- 書き文字エントリー
ctZuo = entryEffectLife( spep_10+4, 10012, 32, 0, -1, 0, 100, 300); -- ズオッ
setEffShake( spep_10+4, ctZuo, 32, 15);
setEffAlphaKey( spep_10+4, ctZuo, 255);
setEffAlphaKey( spep_10+26, ctZuo, 255);
setEffAlphaKey( spep_10+36, ctZuo, 0);
setEffScaleKey( spep_10+4, ctZuo, 0.5, 0.5);
setEffScaleKey( spep_10+7, ctZuo, 2.5, 2.5);
setEffScaleKey( spep_10+26, ctZuo, 2.5, 2.5);
setEffScaleKey( spep_10+36, ctZuo, 6.5, 6.5);
setEffRotateKey( spep_10+4, ctZuo, 30);

-- ** 音 ** --
playSe( spep_10, SE_07);
--playSe( spep_10+40, SE_07);

-- ** 背景 ** --
entryFadeBg( spep_10, 0, 114, 0, 30, 30, 30, 255); -- ベース暗め　背景

-- ** ホワイトフェード ** --
entryFade( spep_10+105, 7, 4, 7, fcolor_r, fcolor_g, fcolor_b, 255);

------------------------------------------------------
-- 迫る(862-942F)
------------------------------------------------------
spep_11=spep_10+114;

--準備
setRotateKey(   spep_11-2,   1, 0);

changeAnime( spep_11-1, 1, 106);                        -- 気ダメ後ろ
setDisp( spep_11, 1, 1);

setMoveKey( spep_11-2, 1, 120, 0, 0);
setMoveKey( spep_11-1, 1, 400, -400, 0);
--ここから
setMoveKey( spep_11, 1, 50, 0, 0);
setScaleKey( spep_11-1, 1, 1.7, 1.7);
setRotateKey(   spep_11-1,   1, 30);

setMoveKey( spep_11+76, 1, 200, -100, 0);
setScaleKey( spep_11+76, 1, 1.7, 1.7);
setRotateKey(   spep_11+76,   1, 50);

setDisp( spep_11+76, 1, 0);

-- ** 奥行き流線斜め ** --
sen11 = entryEffectLife( spep_11, 921, 76, 0x80,  -1,  0,  0,  0); -- 奥行き流線斜め
setEffRotateKey( spep_11, sen11, 190);
setEffScaleKey( spep_11, sen11, 1.3, 1.3);

GenkiHoming = entryEffectLife( spep_11, SP_12, 76, 0x80, -1,  0,  0,  0);  
setEffScaleKey( spep_11, GenkiHoming, 1.0, 1.0);
setEffMoveKey( spep_11, GenkiHoming, 0, 0, 0);

-- ** 集中線 ** --
--shuchusen11 = entryEffectLife( spep_11, 906, 76, 0x80,  -1, 0,  0,  0);   -- 集中線4
--setEffScaleKey( spep_11, shuchusen11, 1.6, 1.6);
--setEffScaleKey( spep_11+40, shuchusen11, 1.0, 1.0);
--setEffScaleKey( spep_11+49, shuchusen11, 2.0, 2.0);

-- 書き文字エントリー
ctZudodo = entryEffectLife( spep_11, 10014, 76, 0x100, -1, 0, 0, 355); -- ズドドッ

setEffShake(spep_11, ctZudodo, 76, 20);

setEffScaleKey( spep_11, ctZudodo, 3.2, 3.2);

setEffRotateKey(spep_11, ctZudodo, 0);

setEffAlphaKey(spep_11, ctZudodo, 255);
setEffAlphaKey(spep_11+65, ctZudodo, 255);
setEffAlphaKey(spep_11+76, ctZudodo, 0);

-- ** 背景 ** --
entryFadeBg( spep_11, 0, 76, 0, 30, 30, 30, 255); -- ベース暗め　背景

-- ** 音 ** --
playSe( spep_11, SE_06);

-- ** ホワイトフェード ** --
entryFade( spep_11+63, 7, 8, 7, fcolor_r, fcolor_g, fcolor_b, 255);
------------------------------------------------------
-- ギャン(942-1002F)
------------------------------------------------------
spep_12=spep_11+76;

Gyan = entryEffect( spep_12, 190000, 0x100, -1,  0,  0,  0);  
setEffScaleKey( spep_12, Gyan, 1.0, 1.0);
setEffMoveKey( spep_12, Gyan, 0, 0, 0);

-- 書き文字エントリー
ctGyan = entryEffectLife( spep_12, 10006, 45, 0x100, -1, 0, 0, 255); -- ギャン

setEffShake( spep_12, ctGyan, 45, 20);

setEffScaleKey( spep_12, ctGyan, 0.1, 0.1);
setEffScaleKey( spep_12, ctGyan, 2.6, 2.6);
setEffScaleKey( spep_12+23, ctGyan, 3.2, 3.2);

setEffAlphaKey( spep_12, ctGyan, 255);
setEffAlphaKey( spep_12+33, ctGyan, 255);
setEffAlphaKey( spep_12+45, ctGyan, 0);

-- ** 音 ** --
playSe( spep_12+8, SE_09);

-- ** ホワイトフェード ** --
entryFade( spep_12+48, 7, 7, 7, fcolor_r, fcolor_g, fcolor_b, 255);
------------------------------------------------------
-- 爆発(1002-1122F)
------------------------------------------------------
spep_13=spep_12+58;

Fin = entryEffect( spep_13, 1551, 0x100, -1,  0,  0,  0);
setEffScaleKey( spep_13, Fin , 1.1, 1.1);
setEffMoveKey( spep_13, Fin , 0, 0, 0);

-- ダメージ表示
dealDamage( spep_13+16);
--entryFade( spep_13+100, 9, 10, 1, 8, 8, 8, 255); -- black fade
endPhase( spep_13+100);

-- ** 音 ** --
playSe( spep_13+4, SE_10);


end