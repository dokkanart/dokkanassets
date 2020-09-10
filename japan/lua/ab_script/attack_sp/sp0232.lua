

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

tyo = -30;
tyo2 = -40;

SP_01 = 102141; --溜め
SP_02 = 102142;--突撃
SP_03 = 102143;--発射
SP_04 = 102144;--迫る
SP_05 = 190000;--ギャン

SP_02e = 102145;

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
setMoveKey(   0,   0,    40, 0,   0);

playSe( 0, SE_03); --かめはめ波
playSe( 25, SE_03); 
playSe( 50, SE_03);
playSe( 75, SE_03); 
playSe( 100, SE_03);  

speff = entryEffect(  30,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン) 117で終了
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  30,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( 20, SE_04);

--kame_hand = entryEffect( 0, SP_01, 0x100, -1, 0,  0, 0);   -- 手のカメハメ波部 50end
kame_hand = entryEffectLife( 0, SP_01, 121,0x100,  -1,  300,  0,  0);   -- 伸びるかめはめ波

aura = entryEffectLife(  0,   350, 122, 0x80,  -1,  300,  0,  0); -- オーラ
setEffScaleKey( 0, aura, 6.6, 6.6);
setEffScaleKey( 30, aura, 2.2, 2.2);
setEffAlphaKey(0, aura, 255);
setEffMoveKey(  0,  aura,  -20,  -800,   0);
setEffMoveKey(  30,  aura,  -20,  -300,   0);




--setEffMoveKey(  0,  kame_hand,  0,  0,   0); --回避カウンターのキャラ位置修正の為
--setEffMoveKey(  30,  kame_hand, 0,  0,   0); --回避カウンターのキャラ位置修正の為

setEffScaleKey( 0, kame_hand, 4.5, 4.5);
setEffScaleKey( 30, kame_hand, 1.5, 1.5);

entryFade( 117, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--setScaleKey(   117,   0, 2.5, 2.5);
--setEffScaleKey( 117, kame_hand, 0.6, 0.6);
setEffAlphaKey(121, aura, 255);

-- ** エフェクト等 ** --
--setShakeChara( 0, 0, 117, 8);
setShake( 0, 117, 15);
setEffShake( 0, kame_hand, 117, 8);

-- 書き文字エントリー
ct = entryEffectLife( 30, 10008, 87, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(30, ct, 95, 8);
setEffScaleKey(30, ct, 1.4, 1.4);

shuchusen5 = entryEffectLife( 0, 906, 117, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 0, shuchusen5, 1.0, 1.0);
setEffScaleKey( 60, shuchusen5, 1.0, 1.0);
setEffScaleKey( 117, shuchusen5, 1.0, 1.0);

entryFadeBg( 0, 0, 120, 0, 0, 0, 0, 190);       -- ベース暗め　背景

spep_2 = 124;

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setMoveKey(   spep_2,   0,    40, 0,   0);

playSe( spep_2, SE_05);
speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


entryFade( spep_2+85, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
playSe( spep_2+64, SE_06);

spep_1=spep_2+85+5; --211 260

------------------------------------------------------
-- ピッチャー振りかぶって…
------------------------------------------------------
setDisp( 0, 0, 0);
setMoveKey(   spep_1,   0,    0, 0,   0);

sen2 = entryEffectLife( spep_1, 921, 81, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_1, sen2, 150);
setEffScaleKey( spep_1, sen2, 1.6, 1.6);

playSe( spep_1+10, 1018);

--kame_hand = entryEffect( spep_1, SP_02, 0x40+0x100, 0,  300,  0,  0);
kame_hand = entryEffect( spep_1, SP_02, 0x100, -1,  0,  -500,  -400);
setEffAlphaKey(spep_1, kame_hand, 255);
setEffScaleKey( spep_1, kame_hand, 0.8, 0.8);
--setEffScaleKey( spep_1+80, kame_hand, 0.5, 0.5);

--setShakeChara( spep_1, 0, 70, 15);
setShake( spep_1, 60, 10);
setEffShake( spep_1, kame_hand, 70, 15);

entryFadeBg( spep_1, 0, 82, 0, 10, 10, 10, 180);       -- ベース暗め　背景
setMoveKey(   spep_1+80,   0,    0, 0,   0);

--entryFade( spep_1+60, 1, 1, 1, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_3=spep_1+80+2; --211 260

------------------------------------------------------
-- 投げた！
------------------------------------------------------
setDisp( spep_3, 0, 1);

changeAnime( spep_3, 0, 31);                                    -- かめはめ発射ポーズ
setScaleKey(  spep_3,  0,  1.0, 1.0);

setMoveKey(  spep_3-1,    0,   1000,  300,  160);

sen2 = entryEffectLife( spep_3-1, 921, 61, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_3-1, sen2, 30);
setEffScaleKey( spep_3-1, sen2, 1.6, 1.6);
setEffAlphaKey(spep_3-1, sen2, 0);
setEffAlphaKey(spep_3, sen2, 255);

setShakeChara( spep_3, 0, 34, 30);
setShake( spep_3, 60, 15);

kamehame_beam_st = entryEffectLife( spep_3, SP_03, 61, 0x40+0x80,  0,  300,  0,  0);   -- 伸びるかめはめ波

playSe( spep_3, SE_07);

-- 途中からカメハメハが伸びる 
setMoveKey(  spep_3+30,    0,   -700,  300,   -120); --600
setMoveKey(  spep_3+60,    0,   -1100,  400,   -150); --1000
setDisp( spep_3+30, 0, 0);

-- 相手が画面に現れる

setDisp( spep_3+40, 1, 1);
changeAnime( spep_3+40, 1, 100);                        -- 敵　気ダメ後ろ
setScaleKey(  spep_3+60,   1,   1.6,  1.6);
setMoveKey(  spep_3+40,    1,  500,  0,   0);
setMoveKey(  spep_3+60,    1,  170,  -100,   -20);

--entryFade( spep_3+45, 3, 3, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
entryFadeBg( spep_3, 0, 109, 0, 10, 10, 10, 180);       -- ベース暗め　背景
--entryFadeBg( spep_3, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
--entryFadeBg( spep_3+40, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景

shuchusen = entryEffectLife( spep_3-1, 906, 109, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffRotateKey(spep_3-1, shuchusen, 145);
setEffScaleKey( spep_3-1, shuchusen, 2.8, 2.8);

-- 書き文字エントリー
ct = entryEffectLife( spep_3+8, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(spep_3+8, ct, 32, 5);
setEffAlphaKey(spep_3+8, ct, 255);
setEffAlphaKey(spep_3+30, ct, 255);
setEffAlphaKey(spep_3+40, ct, 0);
setEffScaleKey(spep_3+8, ct, 0.0, 0.0);
setEffScaleKey(spep_3+12, ct, 1.3, 1.3);
setEffScaleKey(spep_3+32, ct, 1.3, 1.3);
setEffScaleKey(spep_3+40, ct, 6.0, 6.0);
playSe( spep_3+40, SE_07);

entryFade( spep_3+55, 5,  5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_4=spep_3+65; --311 370

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
setDisp( spep_4, 0, 0);
setDisp( spep_4, 1, 1);
changeAnime( spep_4-1, 1, 118);                        -- 気ダメ後ろ

setMoveKey(  spep_4-2,    1,   120,  0,   0);
setMoveKey(  spep_4-1,    1,  400,  -400,   0);
setMoveKey(  spep_4,    1,  400,  -400,   0);
setMoveKey(  spep_4+30,    1,   120,  -270,   0);

setScaleKey(  spep_4-1,   1,   1.6,  1.6);
setScaleKey(  spep_4+75,   1,   1.6,  1.6);


playSe( spep_4+20, SE_06);

entryFade( spep_4+35, 5,  5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp( spep_4+41, 1, 0);

ryusen = entryEffectLife( spep_4-1, 921, 50, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( spep_4-1, ryusen, 190);
setEffScaleKey( spep_4-1, ryusen, 1.4, 1.4);

kamehame_beam2 = entryEffect( spep_4, SP_04,   0x80, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey(spep_4, kamehame_beam2, 1, 1);
setEffScaleKey(spep_4+80, kamehame_beam2, 1, 1);
--setEffScaleKey(spep_4+84, kamehame_beam2, 2.5, 2.5);
setDamage( spep_4+77, 1, 0);  -- ダメージ振動等

playSe( spep_4+60, SE_09);

-- ** エフェクト等 ** --
setShakeChara( spep_4, 1, 99, 20);

entryFadeBg( spep_4, 0, 99, 0, 10, 10, 10, 155);          -- ベース暗め　背景


-- 書き文字エントリー
ct = entryEffectLife( spep_4, 10014, 75, 0, -1, 0, 100, 355); -- ズドドッ
setEffShake(spep_4, ct, 99, 20);
setEffScaleKey( spep_4, ct, 3, 3);
setEffRotateKey(spep_4, ct, 70);
setEffAlphaKey(spep_4, ct, 255);
setEffAlphaKey(spep_4+30, ct, 255);
setEffAlphaKey(spep_4+35, ct, 0);

kamehame_beam = entryEffect( spep_4+40, SP_05,   0x80, -1,  0,  0,  0);   -- ギャン

ct = entryEffectLife( spep_4+55, 10006, 45, 0x80, -1, 0, 0, 255); -- ギャン
setEffShake(spep_4+55, ct, 99, 20);
setEffScaleKey( spep_4+55, ct, 0.1, 0.1);
setEffScaleKey( spep_4+60, ct, 2.4, 2.4);
setEffScaleKey( spep_4+85, ct, 2.8, 2.8);
setEffAlphaKey(spep_4+55, ct, 255);
setEffAlphaKey(spep_4+70, ct, 255);
setEffAlphaKey(spep_4+85, ct, 0);

entryFade( spep_4+77, 6,  5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp( spep_4+83, 1, 0);

removeAllEffect(spep_4+85);

spep_5=spep_4+77+10; --410 469

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 391; --エンドフェイズのフレーム数を置き換える

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

bakuhatu = entryEffect( spep_5, 1551, 0,  -1,  0,  0,  0);  
setEffScaleKey( spep_5, bakuhatu, 1.2, 1.2);

setDisp( spep_5, 1, 0);

playSe( spep_5+4, SE_10);

-- ダメージ表示
dealDamage(spep_5+17);

entryFade( spep_5+120, 5,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_5+120);

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
setVisibleUI(0, 0);

setMoveKey(   0,   0,    -40, 0,   0);

playSe( 0, SE_03); --かめはめ波
playSe( 25, SE_03); 
playSe( 50, SE_03);
playSe( 75, SE_03); 
playSe( 100, SE_03);  

playSe( 20, SE_04);

--kame_hand = entryEffect( 0, SP_01, 0x100, -1, 0,  0, 0);   -- 手のカメハメ波部 50end
kame_hand = entryEffectLife( 0, SP_01, 121,0x100,  -1,  300,  0,  0);   -- 伸びるかめはめ波

aura = entryEffectLife(  0,   350, 122, 0x80,  -1,  300,  0,  0); -- オーラ
setEffScaleKey( 0, aura, 6.6, 6.6);
setEffScaleKey( 30, aura, 2.2, 2.2);
setEffAlphaKey(0, aura, 255);
setEffMoveKey(  0,  aura,  10,  -800,   0);
setEffMoveKey(  30,  aura,  10,  -300,   0);

setEffScaleKey( 0, kame_hand, -4.5, 4.5);
setEffScaleKey( 30, kame_hand, -1.5, 1.5);

entryFade( 117, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--setScaleKey(   117,   0, 2.5, 2.5);
--setEffScaleKey( 117, kame_hand, 0.6, 0.6);
setEffAlphaKey(121, aura, 255);

-- ** エフェクト等 ** --
--setShakeChara( 0, 0, 117, 8);
setShake( 0, 117, 15);
setEffShake( 0, kame_hand, 117, 8);

-- 書き文字エントリー
ct = entryEffectLife( 30, 10008, 87, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(30, ct, 95, 8);
setEffScaleKey(30, ct, 1.4, 1.4);

shuchusen5 = entryEffectLife( 0, 906, 117, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 0, shuchusen5, 1.0, 1.0);
setEffScaleKey( 60, shuchusen5, 1.0, 1.0);
setEffScaleKey( 117, shuchusen5, 1.0, 1.0);

entryFadeBg( 0, 0, 120, 0, 0, 0, 0, 190);       -- ベース暗め　背景

spep_2 = 124;

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
--setMoveKey(  spep_2-1,    0,      100,  -54,   0);
setMoveKey(  spep_2,    0,      -40,  0,   0);

playSe( spep_2, SE_05);
speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


entryFade( spep_2+85, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
playSe( spep_2+64, SE_06);

spep_1=spep_2+85+5; --211 260

------------------------------------------------------
-- ピッチャー振りかぶって…
------------------------------------------------------
setMoveKey(   spep_1,   0,    0, 0,   0);

playSe( spep_1+10, 1018);

sen2 = entryEffectLife( spep_1, 921, 81, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_1, sen2, 150);
setEffScaleKey( spep_1, sen2, 1.6, 1.6);

kame_hand = entryEffect( spep_1, SP_02e, 0x100, -1,  0,  -50,  -150);
setEffScaleKey( spep_1, kame_hand, 0.8, 0.8);

--setShakeChara( spep_1, 0, 70, 15);
setShake( spep_1, 60, 10);
setEffShake( spep_1, kame_hand, 70, 15);


entryFadeBg( spep_1, 0, 82, 0, 10, 10, 10, 180);       -- ベース暗め　背景

--entryFade( spep_1+60, 1, 1, 1, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_3=spep_1+80+2; --211 260

------------------------------------------------------
-- 投げた！
------------------------------------------------------

setDisp( spep_3, 0, 1);
changeAnime( spep_3, 0, 31);                                    -- かめはめ発射ポーズ
setScaleKey(  spep_3,  0,  1.0, 1.0);
setRotateKey( spep_3,  0,  30 );

--setRotateKey( spep_3,  0,  -40 );

--setMoveKey(  spep_3-1,    0,   500,  200,  100);
setMoveKey(  spep_3-1,    0,   1000,  250,  160);

sen2 = entryEffectLife( spep_3-1, 921, 60, 0x80,  -1,  0,  0,  0); -- 流線
--setEffRotateKey(spep_3-1, sen2, -50);
setEffRotateKey(spep_3-1, sen2, 30);
setEffScaleKey( spep_3-1, sen2, 1.6, 1.6);
setEffAlphaKey(spep_3-1, sen2, 0);
setEffAlphaKey(spep_3, sen2, 255);

setShakeChara( spep_3, 0, 34, 30);
setShake( spep_3, 60, 15);


kamehame_beam_st = entryEffectLife( spep_3, SP_03, 61, 0x40+0x80,  0,  300,  300,  -400);   -- 伸びるかめはめ波
setEffRotateKey(spep_3, kamehame_beam_st, -15);

playSe( spep_3, SE_07);

-- 途中からカメハメハが伸びる 
setMoveKey(  spep_3+30,    0,   -900,  350,   -120); --600
setMoveKey(  spep_3+60,    0,   -1300,  400,   -150); --1000
setDisp( spep_3+30, 0, 0);

-- 相手が画面に現れる

setDisp( spep_3+40, 1, 1);
changeAnime( spep_3+40, 1, 100);                        -- 敵　気ダメ後ろ
setScaleKey(  spep_3+60,   1,   1.6,  1.6);
setMoveKey(  spep_3+40,    1,  500,  -150,   0);
--setMoveKey(  spep_3+60,    1,  70,  200,   -20);
setMoveKey(  spep_3+60,    1,  170,  -250,   -20);

-- ** エフェクト等 ** --
entryFadeBg( spep_3, 0, 109, 0, 10, 10, 10, 180);       -- ベース暗め　背景
--entryFadeBg( spep_3, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
--entryFadeBg( spep_3+40, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景

shuchusen = entryEffectLife( spep_3-1, 906, 109, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffRotateKey(spep_3-1, shuchusen, 145);
setEffScaleKey( spep_3-1, shuchusen, 2.8, 2.8);

-- 書き文字エントリー
ct = entryEffectLife( spep_3+8, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(spep_3+8, ct, 32, 5);
setEffAlphaKey(spep_3+8, ct, 255);
setEffAlphaKey(spep_3+30, ct, 255);
setEffAlphaKey(spep_3+40, ct, 0);
setEffScaleKey(spep_3+8, ct, 0.0, 0.0);
setEffScaleKey(spep_3+12, ct, 1.3, 1.3);
setEffScaleKey(spep_3+32, ct, 1.3, 1.3);
setEffScaleKey(spep_3+40, ct, 6.0, 6.0);
playSe( spep_3+40, SE_07);

entryFade( spep_3+55, 5,  5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_4=spep_3+65; --311 370

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
setDisp( spep_4, 0, 0);
setDisp( spep_4, 1, 1);
changeAnime( spep_4, 1, 118);                        -- 気ダメ後ろ

setMoveKey(  spep_4-2,    1,   120,  0,   0);
setMoveKey(  spep_4-1,    1,  400,  -400,   0);
setMoveKey(  spep_4,    1,  400,  -400,   0);
setMoveKey(  spep_4+30,    1,   120,  -270,   0);

setScaleKey(  spep_4-1,   1,   1.6,  1.6);
setScaleKey(  spep_4+75,   1,   1.6,  1.6);


setDisp( spep_4+36, 1, 0);

playSe( spep_4+20, SE_06);

entryFade( spep_4+34, 2,  5, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setDisp( spep_4+50, 1, 0);
setScaleKey(  spep_4+50,   1,   1.6,  1.6);


entryFadeBg( spep_4, 0, 99, 0, 10, 10, 10, 150);          -- ベース暗め　背景
sen3 = entryEffectLife( spep_4, 921, 99, 0x80,  -1,  0,  0,  0); -- 流線斜め
--setEffRotateKey(spep_4, sen3, -50);
setEffRotateKey(spep_4, sen3, 190);
setEffScaleKey( spep_4, sen3, 1.6, 1.6);

kamehame_beam2 = entryEffect( spep_4, SP_04,   0x80, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey(spep_4, kamehame_beam2, 1, 1);
setEffScaleKey(spep_4+80, kamehame_beam2, 1, 1);
--setEffScaleKey(spep_4+84, kamehame_beam2, 2.5, 2.5);
setDamage( spep_4+77, 1, 0);  -- ダメージ振動等

playSe( spep_4+60, SE_09);

-- ** エフェクト等 ** --
setShakeChara( spep_4, 1, 99, 20);

--entryFadeBg( spep_4, 0, 99, 0,0, 0, 0, 255);          -- ベース暗め　背景


-- 書き文字エントリー
ct = entryEffectLife( spep_4, 10014, 75, 0, -1, 0, 100, 355); -- ズドドッ
setEffShake(spep_4, ct, 99, 20);
setEffScaleKey( spep_4, ct, 3, 3);
setEffRotateKey(spep_4, ct, -70);
setEffAlphaKey(spep_4, ct, 255);
setEffAlphaKey(spep_4+30, ct, 255);
setEffAlphaKey(spep_4+35, ct, 0);

kamehame_beam = entryEffect( spep_4+40, SP_05,   0x80, -1,  0,  0,  0);   -- ギャン

ct = entryEffectLife( spep_4+55, 10006, 45, 0x80, -1, 0, 0, 255); -- ギャン
setEffShake(spep_4+55, ct, 99, 20);
setEffScaleKey( spep_4+55, ct, 0.1, 0.1);
setEffScaleKey( spep_4+60, ct, 2.4, 2.4);
setEffScaleKey( spep_4+85, ct, 2.8, 2.8);
setEffAlphaKey(spep_4+55, ct, 255);
setEffAlphaKey(spep_4+70, ct, 255);
setEffAlphaKey(spep_4+85, ct, 0);

entryFade( spep_4+77, 6,  5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp( spep_4+83, 1, 0);

removeAllEffect(spep_4+85);

spep_5=spep_4+77+10; --410 469

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 391; --エンドフェイズのフレーム数を置き換える

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

bakuhatu = entryEffect( spep_5, 1551, 0,  -1,  0,  0,  0);  
--setEffScaleKey( spep_5, bakuhatu, -1.0, 1.0);
setEffScaleKey( spep_5, bakuhatu, 1.2, 1.2);

setDisp( spep_5, 1, 0);

playSe( spep_5+4, SE_10);

-- ダメージ表示
dealDamage(spep_5+17);

entryFade( spep_5+120, 5,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_5+120);

end
