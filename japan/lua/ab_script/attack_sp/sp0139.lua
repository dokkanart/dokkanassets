

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
SE_11 = 1044; --割れる音

SE_12 = 09;

tyo = -30;
tyo2 = -40;

SP_01 = 100224;
SP_02 = 100225;
SP_03 = 100226;
SP_04 = 1557;

multi_frm = 2;

changeAnime( 0, 0, 0);                       -- 立ち
--setDisp( 0, 1, 0);
setDisp( 0, 1, 0);
changeAnime( 0, 1, 100);

setMoveKey(   0,   1,    0, -5000,   0);
setMoveKey(   1,   1,    0, -5000,   0);
setMoveKey(   2,   1,    0, -5000,   0);
setMoveKey(   3,   1,    0, -5000,   0);
setMoveKey(   4,   1,    0, -5000,   0);
setMoveKey(   5,   1,    0, -5000,   0);
setMoveKey(   6,   1,    0, -5000,   0);
setScaleKey(  0,   1,  1.6, 1.6 );
setScaleKey(  1,   1,  1.6, 1.6 );
setScaleKey(  2,   1,  1.6, 1.6 );
setScaleKey(  3,   1,  1.6, 1.6 );
setScaleKey(  4,   1,  1.6, 1.6 );
setScaleKey(  5,   1,  1.6, 1.6 );
setScaleKey(  6,   1,  1.6, 1.6 );
setRotateKey( 0,   1,  0 );
setRotateKey( 1,   1,  0 );
setRotateKey( 2,   1,  0 );
setRotateKey( 3,   1,  0 );
setRotateKey( 4,   1,  0 );
setRotateKey( 5,   1,  0 );
setRotateKey( 6,   1,  0 );

------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
setVisibleUI(0, 0);
changeAnime( 0, 0, 30);                       -- 溜め!
setScaleKey(   0,   0, 1, 1);
setScaleKey(   1,   0, 1, 1);
setScaleKey(   2,   0, 1, 1);
setScaleKey(   3,   0, 1, 1);
setScaleKey(   4,   0, 1, 1);
setScaleKey(   5,   0, 1, 1);
setScaleKey(   6,   0, 1, 1);

setMoveKey( 0, 0, -150, 0, 0 );
setMoveKey( 1, 0, -149.4, -0.598, -0.256 );
setMoveKey( 2, 0, -148.8, -1.196, -0.512 );
setMoveKey( 3, 0, -148.2, -1.794, -0.768 );
setMoveKey( 4, 0, -147.6, -2.392, -1.024 );
setMoveKey( 5, 0, -147, -2.99, -1.28 );
setMoveKey( 6, 0, -146.4, -3.588, -1.536 );
setMoveKey( 117, 0, -80, -70, -30);

--[[playSe( 0, SE_03); --かめはめ波
playSe( 25, SE_03); 
playSe( 50, SE_03);
playSe( 75, SE_03); 
playSe( 100, SE_03);  
]]
--v4.11修正
SE001 = playSe( 0, SE_03); --かめはめ波
stopSe(26,SE001,8);
SE002 = playSe( 24, SE_03);
stopSe(50,SE002,8);
SE003 = playSe( 48, SE_03);
stopSe(74,SE003,8);
SE004 = playSe( 72, SE_03); 
stopSe(98,SE004,8);
SE005 = playSe( 96, SE_03); 
stopSe(122,SE005,8);

speff = entryEffect(  30,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン) 117で終了
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  30,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

--playSe( 20, SE_04);

kame_hand = entryEffect( 0, SP_01, 0x40, 0,  300,  0,  0);   -- 手のカメハメ波部 50end
setEffScaleKey( 0, kame_hand, 0.5, 0.5);

entryFade( 117, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  0,   301, 117, 0x40+0x80,  0, 300,  30,  -200); -- オーラ
--setEffMoveKey(   0,   aura,    -160, -100,   0);
--setEffMoveKey(  117,   aura,    -80, -330,  0);
setEffMoveKey(  117,   aura,    50, -260,  0);
setEffScaleKey( 0, aura, 1, 1);
setEffScaleKey( 40, aura, 1, 1);
setEffScaleKey( 117, aura, 1.2, 1.2);

--aura1 = entryEffectLife( 0 , 353 , 117 , 0x80,  -1, 0,  0,  0); -- オーラ350
aura1 = entryEffectLife( 0 , 353 , 117 , 0x40+0x80,  0, 300,  30,  -200); -- オーラ350

--setEffMoveKey(   0,   aura1,    -160, -100,   0);
--setEffMoveKey(  117,   aura1,   -80, -330,  0);
setEffMoveKey(  117,   aura1,   40, -200,  0);
setEffScaleKey( 0, aura1, 1, 1);
setEffScaleKey( 40, aura1, 1, 1);
setEffScaleKey( 117, aura1, 1.4, 1.4);

setShakeChara( 0, 0, 117, 8);
--setShake( 0, 117, 10);

-- 書き文字エントリー
--ct = entryEffectLife( 30, 10008, 87, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
--setEffShake(30, ct, 95, 8);
--setEffScaleKey(30, ct, 1.4, 1.4);

spep_x = 30;
-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, -9.9 + 150, 515.5 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );

setEffMoveKey( spep_x + 16, ctgogo, -9.9 + 150, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -9.9 + 150, 515.5 , 0 );

setEffScaleKey( spep_x + 16, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_x + 76, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_x + 78, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_x + 80, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_x + 82, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_x + 84, ctgogo, 1.69, 1.69 );

setEffRotateKey( spep_x + 16, ctgogo, 0 );
setEffRotateKey( spep_x + 84, ctgogo, 0 );

setEffAlphaKey( spep_x + 16, ctgogo, 255 );
setEffAlphaKey( spep_x + 84, ctgogo, 255 );

shuchusen5 = entryEffectLife( 0, 906, 117, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 0, shuchusen5, 1.0, 1.0);
setEffScaleKey( 60, shuchusen5, 1.0, 1.0);
setEffScaleKey( 117, shuchusen5, 1.0, 1.0);


entryFadeBg( 0, 0, 120, 0, 0, 0, 0, 190);       -- ベース暗め　背景

spep_2 = 124 -4;
setScaleKey(  spep_2,  0,  1.6,  1.6);
--setEffScaleKey( spep_2, aura, 1.6,  1.6);
--setEffScaleKey( spep_2, aura1, 2.0,  2.0);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
--setScaleKey( spep_2-1,   0, 1.5, 1.5);
--setScaleKey( spep_2,   0, 1.0, 1.0);
setMoveKey(  spep_2-1,    0,      100,  -54,   0);
setMoveKey(  spep_2,    0,      0,  0,   0);

playSe( spep_2, SE_05);
speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

entryFade( spep_2 - 6, 2, 6, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2+85, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_2 + 80, 6, 8, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** エフェクト等 ** --
--entryFlash( (170+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
playSe( spep_2+64, SE_06);

spep_3=spep_2+85+2; --211 260

------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
changeAnime( spep_3, 0, 31);                                    -- かめはめ発射ポーズ
setScaleKey(  spep_3,  0,  3,  3);
--[[
setMoveKey(  spep_3-1,    0,      0,  0,   0);
setMoveKey(  spep_3,    0,   -600,  0,   0);
setMoveKey(  spep_3+1,    0,   -600,  0,   0);
setMoveKey(  spep_3+10,    0,   -100,  0,   0);
--]]
setMoveKey(  spep_3-1,    0,      0,  0,   0);
setMoveKey(  spep_3,    0,      -500,  -350,   0);
setMoveKey(  spep_3+10,    0,      -250,  -80,   0);
setMoveKey(  spep_3+25,    0,      -250,  -80,   0);

sen2 = entryEffectLife( spep_3, 921, 60, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_3, sen2, -50);
setEffScaleKey( spep_3, sen2, 1.5, 1.5);

setShakeChara( spep_3+10, 0, 24, 30);


kamehame_beam_st = entryEffectLife( spep_3, SP_02, 44, 0x40+0x80,  0,  300,  0,  0);   -- 伸びるかめはめ波

kamehame_beam = entryEffectLife( spep_3, SP_02, 60, 0x40+0x100,  0,  300,  0,  0);   -- 伸びるかめはめ波

setEffAlphaKey(spep_3, kamehame_beam, 0);
setEffAlphaKey(spep_3+44, kamehame_beam, 0);
setEffAlphaKey(spep_3+45, kamehame_beam, 255);

playSe( spep_3, SE_07);

--spname = entryEffect( spep_3, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
--setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 途中からカメハメハが伸びる 
setMoveKey(  spep_3+30,    0,   -650,  -350,   -20); --650
setMoveKey(  spep_3+60,    0,   -1050,  -600,   -20); --1000 600
setDisp( spep_3+60, 0, 0);


-- 相手が画面に現れる
setDisp( spep_3+40, 1, 1);
changeAnime( spep_3+40, 1, 100);                        -- 敵　気ダメ後ろ
setScaleKey(  spep_3+60,   1,   1.6,  1.6);
setMoveKey(  spep_3+40,    1,  500,  650,   0);
--setMoveKey(  spep_3+50,    1,  150,  380,   -10);
setMoveKey(  spep_3+60,    1,  150,  380,   0);

--entryFade( spep_3+45, 3, 3, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
entryFadeBg( spep_3, 0, 109, 0, 10, 10, 10, 180);       -- ベース暗め　背景
entryFadeBg( spep_3, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
entryFadeBg( spep_3+40, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景


shuchusen = entryEffectLife( spep_3-1, 906, 109, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffRotateKey(spep_3-1, shuchusen, 145);
setEffScaleKey( spep_3-1, shuchusen, 2.8, 2.8);

--entryFlash( (spep_3+10), 1,  fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_3+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_3+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_3+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_3+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_3+80), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_3+92), 1, fcolor_r, fcolor_g, fcolor_b, 200);

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

spep_4=spep_3+60 --311 370

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
setDisp( spep_4, 0, 0);
setDisp( spep_4, 1, 1);
changeAnime( spep_4, 1, 118);                        -- 気ダメ後ろ
setRotateKey( spep_4, 1, -20); 
setMoveKey(  spep_4,  1,  500,  350,   0);
setMoveKey(  spep_4+15,  1,  200,  180,   0);
setMoveKey(  spep_4+35,  1,  200,  180,   0);

setDisp( spep_4+35, 1, 0);
setScaleKey( spep_4, 1,  2.5, 2.5);
setScaleKey( spep_4+35, 1,  2.5, 2.5);

--setMoveKey(  spep_4+30,    1,   80,  150,   0);
--setScaleKey(  spep_4+30,   1,   1.6,  1.6);

playSe( spep_4+20, SE_06);

entryFade( spep_4+34, 2,  5, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--setDisp( spep_4+50, 1, 0);

ryusen = entryEffectLife( spep_4-1, 921, 50, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey(spep_4-1, ryusen, 100);
setEffScaleKey( spep_4-1, ryusen, 1.6, 1.6);

kamehame_beam2 = entryEffect( spep_4, SP_03,   0x80, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey(spep_4, kamehame_beam2, 1, 1);
setEffScaleKey(spep_4+50, kamehame_beam2, 1, 1);
--setEffScaleKey(spep_4+84, kamehame_beam2, 2.5, 2.5);
--setDamage( spep_4+50, 1, 0);  -- ダメージ振動等

--speff = entryEffect( spep_4, 1506,   0,  -1,  0,  0,  0);    -- カットイン
--setEffReplaceTexture( speff, 6, 3);                       -- カットイン差し替え
--playSe( spep_4, SE_08);

--playSe( spep_4+85, SE_09);
-- 敵吹っ飛ぶモーション
--[[
changeAnime( spep_4+85, 1, 108);
setMoveKey(  spep_4+85, 1,  120,    -150,  0);
setMoveKey(  spep_4+99, 1,  400,    0,  0);
setScaleKey( spep_4+85, 1,  1.6, 1.6);
setScaleKey( spep_4+88, 1,  1.5, 1.5);
setScaleKey( spep_4+98, 1,  0.2, 0.2);
]]--
-- ** エフェクト等 ** --
setShakeChara( spep_4, 1, 99, 20);

entryFadeBg( spep_4, 0, 50, 0,0, 0, 0, 255);          -- ベース暗め　背景

--entryFlash( (spep_4+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_4+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_4+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_4+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_4+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_4+80), 1, fcolor_r, fcolor_g, fcolor_b, 200);

-- 書き文字エントリー
ct = entryEffectLife( spep_4, 10014, 40, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(spep_4, ct, 99, 20);
setEffScaleKey( spep_4, ct, 2.4, 2.4);
setEffRotateKey(spep_4, ct, 70);
setEffAlphaKey(spep_4, ct, 255);
setEffAlphaKey(spep_4+40, ct, 255);
--setEffAlphaKey(spep_4+50, ct, 0);

ct = entryEffectLife( spep_4+45, 10006, 45, 0x80, -1, 0, 0, 255); -- ギャン
setEffShake(spep_4+45, ct, 99, 20);
setEffScaleKey( spep_4+45, ct, 0.1, 0.1);
setEffScaleKey( spep_4+77, ct, 2.4, 2.4);
setEffScaleKey( spep_4+90, ct, 2.8, 2.8);
setEffAlphaKey(spep_4+45, ct, 255);
setEffAlphaKey(spep_4+70, ct, 255);
setEffAlphaKey(spep_4+90, ct, 0);

playSe( spep_4+48, 1024);

entryFade( spep_4+92 -2, 5, 10 +2, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp( spep_4+90, 1, 0);

removeAllEffect(spep_4+95);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 301; --エンドフェイズのフレーム数を置き換える

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

spep_5=spep_4+92+10 --410 469
------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
bakuha = entryEffect( spep_5, SP_04, 0,  -1,  0,  0,  0); 
setEffScaleKey( spep_5, bakuha, 1.2, 1.2);

setDisp( spep_5, 1, 0);

playSe( spep_5+4, SE_07);
shuchusen = entryEffectLife( spep_5+4, 906, 116, 0x00,  -1, 0,  0,  0);   -- 集中線
--entryEffect( 473, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(spep_5+17);

--entryFade( spep_5+120, 5,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_5+120);

else

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
setVisibleUI(0, 0);
changeAnime( 0, 0, 30);                       -- 溜め!
setScaleKey(   0,   0, 1, 1);
setScaleKey(   1,   0, 1, 1);
setScaleKey(   2,   0, 1, 1);
setScaleKey(   3,   0, 1, 1);
setScaleKey(   4,   0, 1, 1);
setScaleKey(   5,   0, 1, 1);
setScaleKey(   6,   0, 1, 1);

setMoveKey( 0, 0, -150, 0, 0 );
setMoveKey( 1, 0, -149.4, -0.598, -0.256 );
setMoveKey( 2, 0, -148.8, -1.196, -0.512 );
setMoveKey( 3, 0, -148.2, -1.794, -0.768 );
setMoveKey( 4, 0, -147.6, -2.392, -1.024 );
setMoveKey( 5, 0, -147, -2.99, -1.28 );
setMoveKey( 6, 0, -146.4, -3.588, -1.536 );
setMoveKey( 117, 0, -80, -70, -30);

--[[playSe( 0, SE_03); --かめはめ波
playSe( 25, SE_03); 
playSe( 50, SE_03);
playSe( 75, SE_03); 
playSe( 100, SE_03);  
]]
--v4.11修正
SE001 = playSe( 0, SE_03); --かめはめ波
stopSe(26,SE001,8);
SE002 = playSe( 24, SE_03);
stopSe(50,SE002,8);
SE003 = playSe( 48, SE_03);
stopSe(74,SE003,8);
SE004 = playSe( 72, SE_03); 
stopSe(98,SE004,8);
SE005 = playSe( 96, SE_03); 
stopSe(122,SE005,8);

--speff = entryEffect(  30,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン) 117で終了
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  30,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

--playSe( 20, SE_04);

kame_hand = entryEffect( 0, SP_01, 0x40+0x80, 0,  300,  0,  0);   -- 手のカメハメ波部 50end
setEffScaleKey( 0, kame_hand, 0.5, 0.5);

entryFade( 117, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  0,   301, 117, 0x40+0x80,  0, 300,  30,  -200); -- オーラ
--setEffMoveKey(   0,   aura,    -160, -100,   0);
--setEffMoveKey(  117,   aura,    -80, -330,  0);
setEffMoveKey(  117,   aura,    50, -260,  0);
setEffScaleKey( 0, aura, 1, 1);
setEffScaleKey( 40, aura, 1, 1);
setEffScaleKey( 117, aura, 1.2, 1.2);

--aura1 = entryEffectLife( 0 , 353 , 117 , 0x80,  -1, 0,  0,  0); -- オーラ350
aura1 = entryEffectLife( 0 , 353 , 117 , 0x40+0x80,  0, 300,  30,  -200); -- オーラ350

--setEffMoveKey(   0,   aura1,    -160, -100,   0);
--setEffMoveKey(  117,   aura1,   -80, -330,  0);
setEffMoveKey(  117,   aura1,   40, -200,  0);
setEffScaleKey( 0, aura1, 1, 1);
setEffScaleKey( 40, aura1, 1, 1);
setEffScaleKey( 117, aura1, 1.4, 1.4);

setShakeChara( 0, 0, 117, 8);
--setShake( 0, 117, 10);

-- 書き文字エントリー
--ct = entryEffectLife( 30, 10008, 87, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
--setEffShake(30, ct, 95, 8);
--setEffScaleKey(30, ct, 1.4, 1.4);

spep_x = 30;
-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, -9.9, 515.5 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );

setEffMoveKey( spep_x + 16, ctgogo, -9.9, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -9.9, 515.5 , 0 );

setEffScaleKey( spep_x + 16, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_x + 76, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_x + 78, ctgogo, -1.0, 1.0 );
setEffScaleKey( spep_x + 80, ctgogo, -1.09, 1.09 );
setEffScaleKey( spep_x + 82, ctgogo, -1.39, 1.39 );
setEffScaleKey( spep_x + 84, ctgogo, -1.69, 1.69 );

setEffRotateKey( spep_x + 16, ctgogo, 0 );
setEffRotateKey( spep_x + 84, ctgogo, 0 );

setEffAlphaKey( spep_x + 16, ctgogo, 255 );
setEffAlphaKey( spep_x + 84, ctgogo, 255 );

shuchusen5 = entryEffectLife( 0, 906, 117, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 0, shuchusen5, 1.0, 1.0);
setEffScaleKey( 60, shuchusen5, 1.0, 1.0);
setEffScaleKey( 117, shuchusen5, 1.0, 1.0);


entryFadeBg( 0, 0, 120, 0, 0, 0, 0, 190);       -- ベース暗め　背景

spep_2 = 124 -4;
setScaleKey(  spep_2,  0,  1.6,  1.6);
--setEffScaleKey( spep_2, aura, 1.6,  1.6);
--setEffScaleKey( spep_2, aura1, 2.0,  2.0);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
--setScaleKey( spep_2-1,   0, 1.5, 1.5);
--setScaleKey( spep_2,   0, 1.0, 1.0);
setMoveKey(  spep_2-1,    0,      100,  -54,   0);
setMoveKey(  spep_2,    0,      0,  0,   0);

playSe( spep_2, SE_05);
speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

entryFade( spep_2 - 6, 2, 6, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2+85, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_2 + 80, 6, 8, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** エフェクト等 ** --
--entryFlash( (170+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
playSe( spep_2+64, SE_06);

spep_3=spep_2+85+2; --211 260

------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
changeAnime( spep_3, 0, 31);                                    -- かめはめ発射ポーズ
setScaleKey(  spep_3,  0,  3,  3);
--[[
setMoveKey(  spep_3-1,    0,      0,  0,   0);
setMoveKey(  spep_3,    0,   -600,  0,   0);
setMoveKey(  spep_3+1,    0,   -600,  0,   0);
setMoveKey(  spep_3+10,    0,   -100,  0,   0);
--]]
setMoveKey(  spep_3-1,    0,      0,  0,   0);
setMoveKey(  spep_3,    0,      -500,  -350,   0);
setMoveKey(  spep_3+10,    0,      -250,  -80,   0);
setMoveKey(  spep_3+25,    0,      -250,  -80,   0);

sen2 = entryEffectLife( spep_3, 921, 60, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_3, sen2, -50);
setEffScaleKey( spep_3, sen2, 1.5, 1.5);

setShakeChara( spep_3+10, 0, 24, 30);


kamehame_beam_st = entryEffectLife( spep_3, SP_02, 44, 0x40+0x80,  0,  300,  0,  0);   -- 伸びるかめはめ波

kamehame_beam = entryEffectLife( spep_3, SP_02, 60, 0x40+0x100,  0,  300,  0,  0);   -- 伸びるかめはめ波

setEffAlphaKey(spep_3, kamehame_beam, 0);
setEffAlphaKey(spep_3+44, kamehame_beam, 0);
setEffAlphaKey(spep_3+45, kamehame_beam, 255);

playSe( spep_3, SE_07);

--spname = entryEffect( spep_3, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
--setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 途中からカメハメハが伸びる 
setMoveKey(  spep_3+30,    0,   -650,  -350,   -20); --650
setMoveKey(  spep_3+60,    0,   -1050,  -600,   -20); --1000 600
setDisp( spep_3+60, 0, 0);


-- 相手が画面に現れる
setDisp( spep_3+40, 1, 1);
changeAnime( spep_3+40, 1, 100);                        -- 敵　気ダメ後ろ
setScaleKey(  spep_3+60,   1,   1.6,  1.6);
setMoveKey(  spep_3+40,    1,  500,  650,   0);
--setMoveKey(  spep_3+50,    1,  150,  380,   -10);
setMoveKey(  spep_3+60,    1,  150,  380,   0);

--entryFade( spep_3+45, 3, 3, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
entryFadeBg( spep_3, 0, 109, 0, 10, 10, 10, 180);       -- ベース暗め　背景
entryFadeBg( spep_3, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
entryFadeBg( spep_3+40, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景


shuchusen = entryEffectLife( spep_3-1, 906, 109, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffRotateKey(spep_3-1, shuchusen, 145);
setEffScaleKey( spep_3-1, shuchusen, 2.8, 2.8);

--entryFlash( (spep_3+10), 1,  fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_3+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_3+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_3+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_3+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_3+80), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_3+92), 1, fcolor_r, fcolor_g, fcolor_b, 200);

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

spep_4=spep_3+60 --311 370

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
setDisp( spep_4, 0, 0);
setDisp( spep_4, 1, 1);
changeAnime( spep_4, 1, 118);                        -- 気ダメ後ろ
setRotateKey( spep_4, 1, -20); 
setMoveKey(  spep_4,  1,  500,  350,   0);
setMoveKey(  spep_4+15,  1,  200,  180,   0);
setMoveKey(  spep_4+35,  1,  200,  180,   0);

setDisp( spep_4+35, 1, 0);
setScaleKey( spep_4, 1,  2.5, 2.5);
setScaleKey( spep_4+35, 1,  2.5, 2.5);

--setMoveKey(  spep_4+30,    1,   80,  150,   0);
--setScaleKey(  spep_4+30,   1,   1.6,  1.6);

playSe( spep_4+20, SE_06);

entryFade( spep_4+34, 2,  5, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--setDisp( spep_4+50, 1, 0);

ryusen = entryEffectLife( spep_4-1, 921, 50, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey(spep_4-1, ryusen, 100);
setEffScaleKey( spep_4-1, ryusen, 1.6, 1.6);

kamehame_beam2 = entryEffect( spep_4, SP_03,   0x80, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey(spep_4, kamehame_beam2, 1, 1);
setEffScaleKey(spep_4+50, kamehame_beam2, 1, 1);
--setEffScaleKey(spep_4+84, kamehame_beam2, 2.5, 2.5);
--setDamage( spep_4+50, 1, 0);  -- ダメージ振動等

--speff = entryEffect( spep_4, 1506,   0,  -1,  0,  0,  0);    -- カットイン
--setEffReplaceTexture( speff, 6, 3);                       -- カットイン差し替え
--playSe( spep_4, SE_08);

--playSe( spep_4+85, SE_09);
-- 敵吹っ飛ぶモーション
--[[
changeAnime( spep_4+85, 1, 108);
setMoveKey(  spep_4+85, 1,  120,    -150,  0);
setMoveKey(  spep_4+99, 1,  400,    0,  0);
setScaleKey( spep_4+85, 1,  1.6, 1.6);
setScaleKey( spep_4+88, 1,  1.5, 1.5);
setScaleKey( spep_4+98, 1,  0.2, 0.2);
]]--
-- ** エフェクト等 ** --
setShakeChara( spep_4, 1, 99, 20);

entryFadeBg( spep_4, 0, 50, 0,0, 0, 0, 255);          -- ベース暗め　背景

--entryFlash( (spep_4+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_4+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_4+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_4+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_4+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_4+80), 1, fcolor_r, fcolor_g, fcolor_b, 200);

-- 書き文字エントリー
ct = entryEffectLife( spep_4, 10014, 40, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(spep_4, ct, 99, 20);
setEffScaleKey( spep_4, ct, 2.4, 2.4);
setEffRotateKey(spep_4, ct, -30);
setEffAlphaKey(spep_4, ct, 255);
setEffAlphaKey(spep_4+40, ct, 255);
--setEffAlphaKey(spep_4+50, ct, 0);

ct = entryEffectLife( spep_4+45, 10006, 45, 0x80, -1, 0, 0, 255); -- ギャン
setEffShake(spep_4+45, ct, 99, 20);
setEffScaleKey( spep_4+45, ct, 0.1, 0.1);
setEffScaleKey( spep_4+77, ct, 2.4, 2.4);
setEffScaleKey( spep_4+90, ct, 2.8, 2.8);
setEffAlphaKey(spep_4+45, ct, 255);
setEffAlphaKey(spep_4+70, ct, 255);
setEffAlphaKey(spep_4+90, ct, 0);

playSe( spep_4+48, 1024);

entryFade( spep_4+92 -2, 5, 10 +2, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp( spep_4+90, 1, 0);

removeAllEffect(spep_4+95);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 301; --エンドフェイズのフレーム数を置き換える

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

spep_5=spep_4+92+10 --410 469
------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
bakuha = entryEffect( spep_5, SP_04, 0,  -1,  0,  0,  0); 
setEffScaleKey( spep_5, bakuha, 1.2, 1.2);
setDisp( spep_5, 1, 0);

playSe( spep_5+4, SE_07);
shuchusen = entryEffectLife( spep_5+4, 906, 116, 0x00,  -1, 0,  0,  0);   -- 集中線
--entryEffect( 473, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(spep_5+17);

--entryFade( spep_5+120, 5,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_5+120);

end
