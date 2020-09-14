

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

SP_01 = 105000;--未使用
SP_02 = 109061;
SP_03 = 109062;
--SP_04 = 100232;
SP_04 = 109060;--
SP_05 = 4;--暗転後のヒットエフェクト　白い風圧オーラとブウのブラーエフェクト

multi_frm = 2;

changeAnime( 0, 0, 0);                       -- 立ち
setDisp( 0, 1, 0);
setMoveKey(   0,   0,    0, -54,   0);
setMoveKey(   1,   0,    0, -54,   0);
setMoveKey(   2,   0,    0, -54,   0);
setMoveKey(   3,   0,    0, -54,   0);
setMoveKey(   4,   0,    0, -54,   0);
setMoveKey(   5,   0,    0, -54,   0);
setMoveKey(   6,   0,    0, -54,   0);

------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
setVisibleUI(0, 0);
changeAnime( 0, 0, 0);                       -- 溜め!
changeAnime( 30, 0, 17);  
setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   1,   0, 1.5, 1.5);
setScaleKey(   2,   0, 1.5, 1.5);
setScaleKey(   3,   0, 1.5, 1.5);
setScaleKey(   4,   0, 1.5, 1.5);
setScaleKey(   5,   0, 1.5, 1.5);
setScaleKey(   6,   0, 1.5, 1.5);


playSe( 30, 1035); --かめはめ波
--playSe( 20, 1036); 
playSe( 45, 1036);
playSe( 70, 1036); 
playSe( 95, 1036);  
playSe( 120, 1036);  

aura2 = entryEffect(  30,   1503,   0x80,  -1,  0,  0,  40);   -- eff_004 (気)
aura3 = entryEffect(  30,   1502,   0,     -1,  0,  0,  40);   -- eff_003 (気)

setEffScaleKey( 30, aura2, 1.2, 1.2);
setEffScaleKey( 30, aura3, 1.2, 1.2);
setEffAlphaKey( 30, aura2, 255);
setEffAlphaKey( 30, aura3, 255);


-- ** エフェクト等 ** --
aura = entryEffectLife(  30,   311, 95, 0x40,  0,  1,  20,  -40); -- オーラ
setEffScaleKey( 30, aura, 1.4, 1.4);

speff = entryEffect(  30,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン) 117で終了
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  30,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

entryFade( 120, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 揺れ等 ** --
setShakeChara( 30, 0, 95, 7);
setShake( 30, 125, 5);

-- 書き文字エントリー
ct = entryEffectLife( 30, 10008, 95, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(30, ct, 95, 8);
setEffScaleKey(30, ct, 1.4, 1.4);

shuchusen5 = entryEffectLife( 30, 906, 95, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 30, shuchusen5, 1.0, 1.0);
setEffScaleKey( 60, shuchusen5, 1.0, 1.0);
setEffScaleKey( 125, shuchusen5, 1.0, 1.0);

--entryFadeBg( 0, 0, 120, 0, 0, 0, 0, 190);       -- ベース暗め　背景

spep_2 = 127;
setScaleKey(  spep_2,  0,  1.6,  1.6);
--setMoveKey(  127,   0,  0, 0, 0);
setMoveKey(   127,   0,    0, -54,   0);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( spep_2-1,   0, 1.5, 1.5);
--setScaleKey( spep_2,   0, 1.0, 1.0);
--setMoveKey(  spep_2-1,    0,      100,  -54,   0);
setMoveKey(  spep_2,    0,      0,  0,   0);

playSe( spep_2, SE_05);
speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


entryFade( spep_2+85, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
playSe( spep_2+64, SE_06);

removeAllEffect(spep_2+87);

spep_6=spep_2+85+5; --211 260

------------------------------------------------------
-- 突進(60F)
------------------------------------------------------

zanzou = entryEffectLife(  spep_6,   SP_04, 35, 0x40+0x080,  0,  1,  0,  0); -- 残像

setScaleKey( spep_6, 0, 2.0, 2.0);
changeAnime( spep_6, 0, 3); 


--P移動
setMoveKey(  spep_6-1,    0,   -1200,  0,   0);
setMoveKey(  spep_6,    0,   -1200,  0,   0);
setMoveKey(  spep_6+5,  0, 0,  0,   0);
setMoveKey(  spep_6+25,    0,   -100,  0,   0);

playSe( spep_6, 1018);

setMoveKey(  spep_6+30,  0, 700,  0,   0);
setMoveKey(  spep_6+33,  0, 700,  0,   0);
setMoveKey(  spep_6+34,  0, -1700,  0,   0);

entryFadeBg( spep_6, 0, 35, 0, 10, 10, 10, 180);       -- ベース暗め　背景

entryEffectLife( spep_6, 920, 35, 0x80,  -1,  0,  0,  0); -- 流線

entryFade( spep_6+30, 3, 5, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setDisp( spep_6+30, 1, 0);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 275; --エンドフェイズのフレーム数を置き換える

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

ATK_01 = spep_6+35;

------------------------------------------------------
-- 暗転後攻撃(100F)
------------------------------------------------------
diff01 = 10;
diff02 = 0;
diff04 = 0;

setDisp( ATK_01, 0, 0);
changeAnime( ATK_01, 1, 104);                     -- ガード
setMoveKey(  ATK_01,    0,  0,  0,   0);
setMoveKey(  ATK_01,    1,  0,  0,   0);
setScaleKey( ATK_01, 1, 1.2, 1.2);
setDisp( ATK_01, 1, 1);

--攻撃演出--

-- ** エフェクト等 ** --
--setShakeChara( ATK_01+  SP_ATK011, 1, 99, 20);
entryFadeBg( ATK_01+  diff02, 0, 115+diff01+0+12, 0, 0, 0, 0, 255);          -- ベース暗 背景 469 ~ 505
entryEffectLife( ATK_01+  diff02, 921, 115+diff01+0+12, 0x80,  -1,  0,  0,  0); -- 流線斜め ~505
--entryFlash( ATK_01+  (10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
setDamage( ATK_01+   64+diff01+diff02,  1,  0);   --ダメージ振動等 ~543

eff01 = entryEffect( ATK_01+ diff04+  35+diff02, SP_05, 0, 1,  0,  0,  0);   -- ヒットエフェクト 
setEffScaleKey( ATK_01+ diff04+  35+diff02, eff01,2,2);--サイズ
setEffRotateKey( ATK_01+ diff04+ 35+diff02, eff01,-10);--角度
--entryFlashBg( ATK_01+ diff04+  (35), 1, fcolor_r, fcolor_g, fcolor_b, 200);
changeAnime( ATK_01+ diff04+  36+diff02, 1, 106);--やられ   
SE001 = playSe( ATK_01+ diff04+  35+diff02, SE_09);
stopSe(ATK_01+ diff04+  70+diff01+diff02,SE001,10);

entryFadeBg( ATK_01+ diff04+  35+diff02, 0, 66, 0, 0, 0, 0, 255);          -- ベース暗め　背景
pauseAll( ATK_01+ diff04+ 36+diff02,10);

--2撃目--
entryEffectLife( ATK_01+ diff04+  50+diff01+diff02, 906, 45, 0x00,  -1, 0,  0,  0);   -- 集中線

eff02 = entryEffect( ATK_01+ diff04+  50+diff01+diff02, SP_05,  0, -1,  0,  0,  0);   -- 攻撃3
setEffScaleKey( ATK_01+ diff04+  50+diff01+diff02, eff02,2,3);--サイズ
setEffRotateKey( ATK_01+ diff04+ 50+diff01+diff02, eff02,-70);--角度
--entryFlashBg( ATK_01+ diff04+  (50+diff01), 1, fcolor_r, fcolor_g, fcolor_b, 200);
SE002 = playSe( ATK_01+ diff04+  50+diff01+diff02, SE_08);
stopSe(ATK_01+ diff04+  77+diff01+diff02,SE002,10);

changeAnime( ATK_01+ diff04+  50+diff01+diff02, 1, 105);--やられ 
setShake( ATK_01+ diff04+  50+diff01+diff02, 3, 14);
setMoveKey( ATK_01+ diff04+   50+diff01+diff02, 1, 0,  0,  0);
setMoveKey( ATK_01+ diff04+   51+diff01+diff02, 1, 50,  -50,  0);

eff03 = entryEffect( ATK_01+ diff04+  57+diff01+diff02, SP_05,  0, -1,  0,  50,  0);   -- 攻撃4
setEffScaleKey( ATK_01+ diff04+  57+diff01+diff02, eff03, 3,3);--サイズ
setEffRotateKey( ATK_01+ diff04+ 57+diff01+diff02, eff03, 70);--角度
SE003 = playSe( ATK_01+ diff04+  57+diff01+diff02, SE_09);
stopSe(ATK_01+ diff04+  85+diff01+diff02,SE003,10);

changeAnime( ATK_01+ diff04+  57+diff01+diff02, 1, 108);--やられ 
setShake( ATK_01+ diff04+  57+diff01+diff02, 3, 14);
setMoveKey( ATK_01+ diff04+   57+diff01+diff02, 1, 50,  -50,  -128);
setMoveKey( ATK_01+ diff04+   58+diff01+diff02, 1, -80,  30,  -128);

eff04 = entryEffect( ATK_01+ diff04+  65+diff01+diff02, SP_05,  0, -1,  0,  -80,  0);   -- 攻撃5
setEffScaleKey( ATK_01+ diff04+  65+diff01+diff02, eff04, 3,2);--サイズ
setEffRotateKey( ATK_01+ diff04+ 65+diff01+diff02, eff04, -80);--角度
SE004 = playSe( ATK_01+ diff04+  65+diff01+diff02, SE_08);
stopSe(ATK_01+ diff04+  92+diff01+diff02,SE004,10);

changeAnime( ATK_01+ diff04+  65+diff01+diff02, 1, 106);--やられ 
setShake( ATK_01+ diff04+  65+diff01+diff02, 3, 14);
setMoveKey( ATK_01+ diff04+   65+diff01+diff02, 1, -80,  30,  -128);
setMoveKey( ATK_01+ diff04+   66+diff01+diff02, 1, 40,  -35,  -128);

eff05 = entryEffect( ATK_01+ diff04+  72+diff01+diff02, SP_05,  0, -1,  0,  20,  0);   -- 攻撃3
setEffScaleKey( ATK_01+ diff04+  72+diff01+diff02, eff05, 0.4,3);--サイズ
setEffRotateKey( ATK_01+ diff04+ 72+diff01+diff02, eff05, 45);--角度
--entryFlashBg( ATK_01+ diff04+  (72+diff01), 1, fcolor_r, fcolor_g, fcolor_b, 200);
SE005 = playSe( ATK_01+ diff04+  72+diff01+diff02, SE_09);
stopSe(ATK_01+ diff04+  96+diff01+diff02,SE005,10);

setShake( ATK_01+ diff04+  72+diff01+diff02, 3, 14);
setMoveKey( ATK_01+ diff04+   72+diff01+diff02, 1, 40,  -35,  -128);
setMoveKey( ATK_01+ diff04+   73+diff01+diff02, 1, -90,  -90,  -128);

eff06 = entryEffect( ATK_01+ diff04+  76+diff01+diff02, SP_05,  0, -1,  0,  -60,  0);   -- 攻撃3
setEffScaleKey( ATK_01+ diff04+  76+diff01+diff02, eff06, 1,2);--サイズ
setEffRotateKey( ATK_01+ diff04+ 76+diff01+diff02, eff06, -100);--角度
SE006 = playSe( ATK_01+ diff04+  76+diff01+diff02, SE_08);
stopSe(ATK_01+ diff04+  100+diff01+diff02,SE006,10);

changeAnime( ATK_01+ diff04+  76+diff01+diff02, 1, 105);--やられ 
setShake( ATK_01+ diff04+  76+diff01+diff02, 3, 14);
setMoveKey( ATK_01+ diff04+   76+diff01+diff02, 1, 90,  -90,  -128);
setMoveKey( ATK_01+ diff04+   77+diff01+diff02, 1, -60, 80,  -128);

eff07 = entryEffect( ATK_01+ diff04+  80+diff01+diff02, SP_05,  0, -1,  0,  70,  0);   -- 攻撃3
setEffScaleKey( ATK_01+ diff04+  80+diff01+diff02, eff07, 2,1.5);--サイズ
setEffRotateKey( ATK_01+ diff04+ 80+diff01+diff02, eff07, 130);--角度
playSe( ATK_01+ diff04+  80+diff01+diff02, SE_08);
--entryFlashBg( ATK_01+ diff04+  (80+diff01), 1, fcolor_r, fcolor_g, fcolor_b, 200);
changeAnime( ATK_01+ diff04+  80+diff01+diff02, 1, 106);--やられ 
setShake( ATK_01+ diff04+  80+diff01+diff02, 3, 14);
setMoveKey( ATK_01+ diff04+   80+diff01+diff02, 1, -60, 80,  -128);
setMoveKey( ATK_01+ diff04+   81+diff01+diff02, 1, 80,  60,  -128);

diff03 = 7

eff08 = entryEffect( ATK_01+ diff04+  91+diff01+diff02+diff03, SP_05,  0, -1,  0,  0,  0);   -- 攻撃3
setEffScaleKey( ATK_01+ diff04+  91+diff01+diff02+diff03, eff08, 2,4);--サイズ
setEffRotateKey( ATK_01+ diff04+ 91+diff01+diff02+diff03, eff08, -60);--角度 15
playSe( ATK_01+ diff04+  91+diff01+diff02+diff03, SE_09);
setShake( ATK_01+ diff04+  91+diff01+diff02+diff03, 3, 14);
--entryFadeBg( ATK_01+ diff04+  92+diff01+diff02, 0, 35, 0, 0, 0, 0, 255);          -- ベース暗め　背景
entryEffectLife( ATK_01+ diff04+  92+diff01+diff02+diff03, 908, 10, 0x00,  -1, 0,  0,  0);   -- 集中線
--entryFlashBg( ATK_01+ diff04+  92+diff01+diff02, 1, fcolor_r, 0, 0, 100);
--entryFlashBg( ATK_01+ diff04+  94+diff01+diff02, 1, 255, 255, 255, 100);
setMoveKey( ATK_01+ diff04+   92+diff01+diff02+diff03, 1, 0,  0,  -128);
pauseAll( ATK_01+ diff04+ 92+diff01+diff02+diff03,5);

-- 書き文字エントリー
ct = entryEffectLife( ATK_01+ diff04+  35+diff02, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake( ATK_01+ diff04+ 35+diff02, ct, 81, 20);
setEffScaleKey( ATK_01+ diff04+  35+diff02, ct, 2.4, 2.4);
setEffRotateKey( ATK_01+ diff04+ 35+diff02, ct, 70);
setEffAlphaKey( ATK_01+ diff04+ 35+diff02, ct, 255);
setEffAlphaKey( ATK_01+ diff04+ 103+diff01+diff02, ct, 255);
setEffAlphaKey( ATK_01+ diff04+ 127+diff01+diff02, ct, 0);

--entryFade( ATK_01+ diff04+  100+diff01+10, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 100); 

entryFade( ATK_01+ diff04+  115+diff01+0+diff02, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255); 
setMoveKey( ATK_01+ diff04+   120+diff01+0+diff02, 1, 0,  0,  -128);
setScaleKey( ATK_01+ diff04+ 115+diff01+10+0+diff02, 1, 1.2, 1.2);

setDisp( ATK_01+ diff04+ 115+diff01+0+12+diff02, 1, 0);
setRotateKey( ATK_01+ diff04+ 115+diff01+10+0+diff02 , 1 , -90);
setMoveKey( ATK_01+ diff04+ 115+diff01+10+0+diff02,    1,  200,    50);
setScaleKey( ATK_01+ diff04+ 115+diff01+10+2+diff02, 1, 1.6, 1.6);

sp_ATK_03=ATK_01+diff04+115+diff01+2+12+diff02;


------------------------------------------------------
--カメハメハ発射(110F)
------------------------------------------------------

changeAnime( sp_ATK_03-1, 1, 106);

setScaleKey( sp_ATK_03-1, 0, 0.5, 0.5);


changeAnime( sp_ATK_03-1, 0, 31);                                    --かめはめ発射ポーズ

setDisp( sp_ATK_03, 0, 1);
setDisp( sp_ATK_03, 1, 1);

setMoveKey( sp_ATK_03,    0,   -200,  0,   0);


--changeAnime( sp_ATK_03+30, 1, 102);

setShake(sp_ATK_03+13,10,18);
hit = entryEffect( sp_ATK_03+13, SP_02, 0x40,  0,  300,  270,  140);   --伸びるかめはめ波
setEffAlphaKey( sp_ATK_03+13, hit, 255);
playSe( sp_ATK_03+13, SE_07);

--途中からカメハメハが伸びる

entryFade( sp_ATK_03+45, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     --white fade
setMoveKey( sp_ATK_03+45,    1,  200,   50);
setEffAlphaKey( sp_ATK_03+48, hit, 255);
setEffAlphaKey( sp_ATK_03+49, hit, 0);
setScaleKey( sp_ATK_03+49, 1, 1.6, 1.6);

--** エフェクト等 ** --
entryFadeBg( sp_ATK_03-4, 0, 96, 0, 10, 10, 10, 150);    --最初だけ明るい　背景
--entryFadeBg( sp_ATK_03+1, 0, 49, 0, 255, 255, 255, 255);       --ベース暗め　背景
--entryFadeBg( sp_ATK_03, 0, 40, 0, 230, 230, 230, 255);    --最初だけ明るい　背景

sen2 = entryEffectLife( sp_ATK_03-4, 920, 96, 0x80,  -1,  0,  0,  0); --流線
--setEffRotateKey( sp_ATK_03+15, sen2, 185);
setShakeChara( sp_ATK_03+50, 0, 54, 50);


kamehame_beam2 = entryEffect( sp_ATK_03+50, SP_03,   0, -1,  0,  160,  160);   -- 迫るかめはめ波
setDamage( sp_ATK_03+50+40, 1, 0);  -- ダメージ振動等

shuchusen = entryEffectLife( sp_ATK_03, 906, 49, 0x00,  -1, 0,  0,  0);   --集中線
setEffScaleKey( sp_ATK_03, shuchusen, 1.0, 1.0);
setEffScaleKey( sp_ATK_03, shuchusen, 1.0, 1.0);
setEffScaleKey( sp_ATK_03+49, shuchusen, 2.0, 2.0);

--書き文字エントリー
ct = entryEffectLife( sp_ATK_03+50, 10012, 30, 0, -1, 0, 200, 300); --ズオッ
setEffShake( sp_ATK_03+50, ct, 32, 5);
setEffAlphaKey( sp_ATK_03+50, ct, 255);
setEffAlphaKey( sp_ATK_03+67, ct, 255);
setEffAlphaKey( sp_ATK_03+77, ct, 0);
setEffScaleKey( sp_ATK_03+45, ct, 0.0, 0.0);
setEffScaleKey( sp_ATK_03+49, ct, 1.3, 1.3);
setEffScaleKey( sp_ATK_03+69, ct, 1.3, 1.3);
setEffScaleKey( sp_ATK_03+77, ct, 6.0, 6.0);

playSe( sp_ATK_03+40, SE_07);
--bm = entryEffect( sp_ATK_03+69, 1509,  0,  -1,  0,  0,  0);   -- 爆発372
entryFade( sp_ATK_03+85, 5,  10, 3, fcolor_r, fcolor_g, fcolor_b, 255);     --white fade
setShake(sp_ATK_03+69);
playSe( sp_ATK_03+69, SE_10);
setRotateKey( sp_ATK_03+92 , 1 , -90);
setMoveKey( sp_ATK_03+91,    1,  200,    50);
removeAllEffect(sp_ATK_03+91);


setScaleKey( sp_ATK_03+92, 0, 0.5, 0.5);
setScaleKey( sp_ATK_03+92, 1, 1.6, 1.6);


spep_5 = sp_ATK_03+92;

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

setDisp( spep_5-1, 1, 1);
setDisp( spep_5-1, 0, 0);
setMoveKey(  spep_5-1,    1,  100,  0,   0);
setScaleKey( spep_5-1,    1,  1, 1);
setMoveKey(  spep_5,    1,    0,   0,   128);
setScaleKey( spep_5,    1,  0.1, 0.1);

changeAnime( spep_5, 1, 107);                         -- 手前ダメージ
entryEffect( spep_5+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_5+8, SE_10);

setMoveKey(  spep_5+8,   1,    0,   0,   128);
setMoveKey(  spep_5+15,   1,  -60,  -200,  -100);
setMoveKey(  spep_5+16,   1,  -60,  -200,  -100);
setDamage( spep_5+16, 1, 0);  -- ダメージ振動等
setShake(spep_5+7,6,15);
setShake(spep_5+13,15,10);

setRotateKey( spep_5,  1,  30 );
setRotateKey( spep_5+2,  1,  80 );
setRotateKey( spep_5+4,  1, 120 );
setRotateKey( spep_5+6,  1, 160 );
setRotateKey( spep_5+8,  1, 200 );
setRotateKey( spep_5+10,  1, 260 );
setRotateKey( spep_5+12,  1, 320 );
setRotateKey( spep_5+14,  1,   0 );

setShakeChara( spep_5+15, 1, 5,  10);
setShakeChara( spep_5+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep_5+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep_5+15, ct, 30, 10);
setEffRotateKey( spep_5+15, ct, -40);
setEffScaleKey( spep_5+15, ct, 4.0, 4.0);
setEffScaleKey( spep_5+16, ct, 2.0, 2.0);
setEffScaleKey( spep_5+17, ct, 2.6, 2.6);
setEffScaleKey( spep_5+18, ct, 4.0, 4.0);
setEffScaleKey( spep_5+19, ct, 2.6, 2.6);
setEffScaleKey( spep_5+20, ct, 3.8, 3.8);
setEffScaleKey( spep_5+110, ct, 3.8, 3.8);
setEffAlphaKey( spep_5+15, ct, 255);
setEffAlphaKey( spep_5+105, ct, 255);
setEffAlphaKey( spep_5+115, ct, 0);

playSe( spep_5+13, SE_11);
shuchusen = entryEffectLife( spep_5+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_5+7, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(spep_5+16);


entryFade( spep_5+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase( spep_5+110);


else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
setVisibleUI(0, 0);
changeAnime( 0, 0, 0);                       -- 溜め!
changeAnime( 30, 0, 17);  
setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   1,   0, 1.5, 1.5);
setScaleKey(   2,   0, 1.5, 1.5);
setScaleKey(   3,   0, 1.5, 1.5);
setScaleKey(   4,   0, 1.5, 1.5);
setScaleKey(   5,   0, 1.5, 1.5);
setScaleKey(   6,   0, 1.5, 1.5);


playSe( 30, 1035); --かめはめ波
--playSe( 20, 1036); 
playSe( 45, 1036);
playSe( 70, 1036); 
playSe( 95, 1036);  
playSe( 120, 1036);  

aura2 = entryEffect(  30,   1503,   0x80,  -1,  0,  0,  40);   -- eff_004 (気)
aura3 = entryEffect(  30,   1502,   0,     -1,  0,  0,  40);   -- eff_003 (気)

setEffScaleKey( 30, aura2, 1.2, 1.2);
setEffScaleKey( 30, aura3, 1.2, 1.2);
setEffAlphaKey( 30, aura2, 255);
setEffAlphaKey( 30, aura3, 255);


-- ** エフェクト等 ** --
aura = entryEffectLife(  30,   311, 95, 0x40,  0,  1,  20,  -40); -- オーラ
setEffScaleKey( 30, aura, 1.4, 1.4);

--[[
speff = entryEffect(  30,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン) 117で終了
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  30,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
--]]

entryFade( 120, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 揺れ等 ** --
setShakeChara( 30, 0, 95, 7);
setShake( 30, 125, 5);

-- 書き文字エントリー
ct = entryEffectLife( 30, 10008, 95, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(30, ct, 95, 8);
setEffScaleKey(30, ct, 1.4, 1.4);

shuchusen5 = entryEffectLife( 30, 906, 95, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 30, shuchusen5, 1.0, 1.0);
setEffScaleKey( 60, shuchusen5, 1.0, 1.0);
setEffScaleKey( 125, shuchusen5, 1.0, 1.0);

--entryFadeBg( 0, 0, 120, 0, 0, 0, 0, 190);       -- ベース暗め　背景

spep_2 = 127;
setScaleKey(  spep_2,  0,  1.6,  1.6);
--setMoveKey(  127,   0,  0, 0, 0);
setMoveKey(   127,   0,    0, -54,   0);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( spep_2-1,   0, 1.5, 1.5);
--setScaleKey( spep_2,   0, 1.0, 1.0);
--setMoveKey(  spep_2-1,    0,      100,  -54,   0);
setMoveKey(  spep_2,    0,      0,  0,   0);

playSe( spep_2, SE_05);
speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


entryFade( spep_2+85, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
playSe( spep_2+64, SE_06);

removeAllEffect(spep_2+87);

spep_6=spep_2+85+5; --211 260


------------------------------------------------------
-- 突進(60F)
------------------------------------------------------

zanzou = entryEffectLife(  spep_6,   SP_04, 35, 0x40+0x080,  0,  1,  0,  0); -- 残像

setScaleKey( spep_6, 0, 2.0, 2.0);
changeAnime( spep_6, 0, 3); 


--P移動
setMoveKey(  spep_6-1,    0,   -1200,  0,   0);
setMoveKey(  spep_6,    0,   -1200,  0,   0);
setMoveKey(  spep_6+5,  0, 0,  0,   0);
setMoveKey(  spep_6+25,    0,   -100,  0,   0);

playSe( spep_6, 1018);

setMoveKey(  spep_6+30,  0, 700,  0,   0);
setMoveKey(  spep_6+33,  0, 700,  0,   0);
setMoveKey(  spep_6+34,  0, -1700,  0,   0);

entryFadeBg( spep_6, 0, 35, 0, 10, 10, 10, 180);       -- ベース暗め　背景

entryEffectLife( spep_6, 920, 35, 0x80,  -1,  0,  0,  0); -- 流線

entryFade( spep_6+30, 3, 5, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setDisp( spep_6+30, 1, 0);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 275; --エンドフェイズのフレーム数を置き換える

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

ATK_01 = spep_6+35;

------------------------------------------------------
-- 暗転後攻撃(100F)
------------------------------------------------------
diff01 = 10;
diff02 = 0;
diff04 = 0;

setDisp( ATK_01, 0, 0);
changeAnime( ATK_01, 1, 104);                     -- ガード
setMoveKey(  ATK_01,    0,  0,  0,   0);
setMoveKey(  ATK_01,    1,  0,  0,   0);
setScaleKey( ATK_01, 1, 1.2, 1.2);
setDisp( ATK_01, 1, 1);

--攻撃演出--

-- ** エフェクト等 ** --
--setShakeChara( ATK_01+  SP_ATK011, 1, 99, 20);
entryFadeBg( ATK_01+  diff02, 0, 115+diff01+0+12, 0, 0, 0, 0, 255);          -- ベース暗 背景 469 ~ 505
entryEffectLife( ATK_01+  diff02, 921, 115+diff01+0+12, 0x80,  -1,  0,  0,  0); -- 流線斜め ~505
--entryFlash( ATK_01+  (10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
setDamage( ATK_01+   64+diff01+diff02,  1,  0);   --ダメージ振動等 ~543

eff01 = entryEffect( ATK_01+ diff04+  35+diff02, SP_05, 0, 1,  0,  0,  0);   -- ヒットエフェクト 
setEffScaleKey( ATK_01+ diff04+  35+diff02, eff01,2,2);--サイズ
setEffRotateKey( ATK_01+ diff04+ 35+diff02, eff01,-10);--角度
--entryFlashBg( ATK_01+ diff04+  (35), 1, fcolor_r, fcolor_g, fcolor_b, 200);
changeAnime( ATK_01+ diff04+  36+diff02, 1, 106);--やられ   
SE001 = playSe( ATK_01+ diff04+  35+diff02, SE_09);
stopSe(ATK_01+ diff04+  70+diff01+diff02,SE001,10);

entryFadeBg( ATK_01+ diff04+  35+diff02, 0, 66, 0, 0, 0, 0, 255);          -- ベース暗め　背景
pauseAll( ATK_01+ diff04+ 36+diff02,10);

--2撃目--
entryEffectLife( ATK_01+ diff04+  50+diff01+diff02, 906, 45, 0x00,  -1, 0,  0,  0);   -- 集中線

eff02 = entryEffect( ATK_01+ diff04+  50+diff01+diff02, SP_05,  0, -1,  0,  0,  0);   -- 攻撃3
setEffScaleKey( ATK_01+ diff04+  50+diff01+diff02, eff02,2,3);--サイズ
setEffRotateKey( ATK_01+ diff04+ 50+diff01+diff02, eff02,-70);--角度
--entryFlashBg( ATK_01+ diff04+  (50+diff01), 1, fcolor_r, fcolor_g, fcolor_b, 200);
SE002 = playSe( ATK_01+ diff04+  50+diff01+diff02, SE_08);
stopSe(ATK_01+ diff04+  77+diff01+diff02,SE002,10);

changeAnime( ATK_01+ diff04+  50+diff01+diff02, 1, 105);--やられ 
setShake( ATK_01+ diff04+  50+diff01+diff02, 3, 14);
setMoveKey( ATK_01+ diff04+   50+diff01+diff02, 1, 0,  0,  0);
setMoveKey( ATK_01+ diff04+   51+diff01+diff02, 1, 50,  -50,  0);

eff03 = entryEffect( ATK_01+ diff04+  57+diff01+diff02, SP_05,  0, -1,  0,  50,  0);   -- 攻撃4
setEffScaleKey( ATK_01+ diff04+  57+diff01+diff02, eff03, 3,3);--サイズ
setEffRotateKey( ATK_01+ diff04+ 57+diff01+diff02, eff03, 70);--角度
SE003 = playSe( ATK_01+ diff04+  57+diff01+diff02, SE_09);
stopSe(ATK_01+ diff04+  85+diff01+diff02,SE003,10);

changeAnime( ATK_01+ diff04+  57+diff01+diff02, 1, 108);--やられ 
setShake( ATK_01+ diff04+  57+diff01+diff02, 3, 14);
setMoveKey( ATK_01+ diff04+   57+diff01+diff02, 1, 50,  -50,  -128);
setMoveKey( ATK_01+ diff04+   58+diff01+diff02, 1, -80,  30,  -128);

eff04 = entryEffect( ATK_01+ diff04+  65+diff01+diff02, SP_05,  0, -1,  0,  -80,  0);   -- 攻撃5
setEffScaleKey( ATK_01+ diff04+  65+diff01+diff02, eff04, 3,2);--サイズ
setEffRotateKey( ATK_01+ diff04+ 65+diff01+diff02, eff04, -80);--角度
SE004 = playSe( ATK_01+ diff04+  65+diff01+diff02, SE_08);
stopSe(ATK_01+ diff04+  92+diff01+diff02,SE004,10);

changeAnime( ATK_01+ diff04+  65+diff01+diff02, 1, 106);--やられ 
setShake( ATK_01+ diff04+  65+diff01+diff02, 3, 14);
setMoveKey( ATK_01+ diff04+   65+diff01+diff02, 1, -80,  30,  -128);
setMoveKey( ATK_01+ diff04+   66+diff01+diff02, 1, 40,  -35,  -128);

eff05 = entryEffect( ATK_01+ diff04+  72+diff01+diff02, SP_05,  0, -1,  0,  20,  0);   -- 攻撃3
setEffScaleKey( ATK_01+ diff04+  72+diff01+diff02, eff05, 0.4,3);--サイズ
setEffRotateKey( ATK_01+ diff04+ 72+diff01+diff02, eff05, 45);--角度
--entryFlashBg( ATK_01+ diff04+  (72+diff01), 1, fcolor_r, fcolor_g, fcolor_b, 200);
SE005 = playSe( ATK_01+ diff04+  72+diff01+diff02, SE_09);
stopSe(ATK_01+ diff04+  96+diff01+diff02,SE005,10);

setShake( ATK_01+ diff04+  72+diff01+diff02, 3, 14);
setMoveKey( ATK_01+ diff04+   72+diff01+diff02, 1, 40,  -35,  -128);
setMoveKey( ATK_01+ diff04+   73+diff01+diff02, 1, -90,  -90,  -128);

eff06 = entryEffect( ATK_01+ diff04+  76+diff01+diff02, SP_05,  0, -1,  0,  -60,  0);   -- 攻撃3
setEffScaleKey( ATK_01+ diff04+  76+diff01+diff02, eff06, 1,2);--サイズ
setEffRotateKey( ATK_01+ diff04+ 76+diff01+diff02, eff06, -100);--角度
SE006 = playSe( ATK_01+ diff04+  76+diff01+diff02, SE_08);
stopSe(ATK_01+ diff04+  100+diff01+diff02,SE006,10);

changeAnime( ATK_01+ diff04+  76+diff01+diff02, 1, 105);--やられ 
setShake( ATK_01+ diff04+  76+diff01+diff02, 3, 14);
setMoveKey( ATK_01+ diff04+   76+diff01+diff02, 1, 90,  -90,  -128);
setMoveKey( ATK_01+ diff04+   77+diff01+diff02, 1, -60, 80,  -128);

eff07 = entryEffect( ATK_01+ diff04+  80+diff01+diff02, SP_05,  0, -1,  0,  70,  0);   -- 攻撃3
setEffScaleKey( ATK_01+ diff04+  80+diff01+diff02, eff07, 2,1.5);--サイズ
setEffRotateKey( ATK_01+ diff04+ 80+diff01+diff02, eff07, 130);--角度
playSe( ATK_01+ diff04+  80+diff01+diff02, SE_08);
--entryFlashBg( ATK_01+ diff04+  (80+diff01), 1, fcolor_r, fcolor_g, fcolor_b, 200);
changeAnime( ATK_01+ diff04+  80+diff01+diff02, 1, 106);--やられ 
setShake( ATK_01+ diff04+  80+diff01+diff02, 3, 14);
setMoveKey( ATK_01+ diff04+   80+diff01+diff02, 1, -60, 80,  -128);
setMoveKey( ATK_01+ diff04+   81+diff01+diff02, 1, 80,  60,  -128);

diff03 = 7

eff08 = entryEffect( ATK_01+ diff04+  91+diff01+diff02+diff03, SP_05,  0, -1,  0,  0,  0);   -- 攻撃3
setEffScaleKey( ATK_01+ diff04+  91+diff01+diff02+diff03, eff08, 2,4);--サイズ
setEffRotateKey( ATK_01+ diff04+ 91+diff01+diff02+diff03, eff08, -60);--角度 15
playSe( ATK_01+ diff04+  91+diff01+diff02+diff03, SE_09);
setShake( ATK_01+ diff04+  91+diff01+diff02+diff03, 3, 14);
--entryFadeBg( ATK_01+ diff04+  92+diff01+diff02, 0, 35, 0, 0, 0, 0, 255);          -- ベース暗め　背景
entryEffectLife( ATK_01+ diff04+  92+diff01+diff02+diff03, 908, 10, 0x00,  -1, 0,  0,  0);   -- 集中線
--entryFlashBg( ATK_01+ diff04+  92+diff01+diff02, 1, fcolor_r, 0, 0, 100);
--entryFlashBg( ATK_01+ diff04+  94+diff01+diff02, 1, 255, 255, 255, 100);
setMoveKey( ATK_01+ diff04+   92+diff01+diff02+diff03, 1, 0,  0,  -128);
pauseAll( ATK_01+ diff04+ 92+diff01+diff02+diff03,5);

-- 書き文字エントリー
ct = entryEffectLife( ATK_01+ diff04+  35+diff02, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake( ATK_01+ diff04+ 35+diff02, ct, 81, 20);
setEffScaleKey( ATK_01+ diff04+  35+diff02, ct, 2.4, 2.4);
setEffRotateKey( ATK_01+ diff04+ 35+diff02, ct, -70);
setEffAlphaKey( ATK_01+ diff04+ 35+diff02, ct, 255);
setEffAlphaKey( ATK_01+ diff04+ 103+diff01+diff02, ct, 255);
setEffAlphaKey( ATK_01+ diff04+ 127+diff01+diff02, ct, 0);

--entryFade( ATK_01+ diff04+  100+diff01+10, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 100); 

entryFade( ATK_01+ diff04+  115+diff01+0+diff02, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255); 
setMoveKey( ATK_01+ diff04+   120+diff01+0+diff02, 1, 0,  0,  -128);
setScaleKey( ATK_01+ diff04+ 115+diff01+10+0+diff02, 1, 1.2, 1.2);

setDisp( ATK_01+ diff04+ 115+diff01+0+12+diff02, 1, 0);
setRotateKey( ATK_01+ diff04+ 115+diff01+10+0+diff02 , 1 , -90);
setMoveKey( ATK_01+ diff04+ 115+diff01+10+0+diff02,    1,  200,    50);
setScaleKey( ATK_01+ diff04+ 115+diff01+10+2+diff02, 1, 1.6, 1.6);

sp_ATK_03=ATK_01+diff04+115+diff01+2+12+diff02;


------------------------------------------------------
--カメハメハ発射(110F)
------------------------------------------------------

changeAnime( sp_ATK_03-1, 1, 106);

setScaleKey( sp_ATK_03-1, 0, 0.5, 0.5);


changeAnime( sp_ATK_03-1, 0, 31);                                    --かめはめ発射ポーズ

setDisp( sp_ATK_03, 0, 1);
setDisp( sp_ATK_03, 1, 1);

setMoveKey( sp_ATK_03,    0,   -200,  0,   0);


--changeAnime( sp_ATK_03+30, 1, 102);

setShake(sp_ATK_03+13,10,18);
hit = entryEffect( sp_ATK_03+13, SP_02, 0x40,  0,  300,  270,  140);   --伸びるかめはめ波
setEffAlphaKey( sp_ATK_03+13, hit, 255);
playSe( sp_ATK_03+13, SE_07);

--途中からカメハメハが伸びる

entryFade( sp_ATK_03+45, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     --white fade
setMoveKey( sp_ATK_03+45,    1,  200,   50);
setEffAlphaKey( sp_ATK_03+48, hit, 255);
setEffAlphaKey( sp_ATK_03+49, hit, 0);
setScaleKey( sp_ATK_03+49, 1, 1.6, 1.6);

--** エフェクト等 ** --
entryFadeBg( sp_ATK_03-4, 0, 96, 0, 10, 10, 10, 150);    --最初だけ明るい　背景
--entryFadeBg( sp_ATK_03+1, 0, 49, 0, 255, 255, 255, 255);       --ベース暗め　背景
--entryFadeBg( sp_ATK_03, 0, 40, 0, 230, 230, 230, 255);    --最初だけ明るい　背景

sen2 = entryEffectLife( sp_ATK_03-4, 920, 96, 0x80,  -1,  0,  0,  0); --流線
--setEffRotateKey( sp_ATK_03+15, sen2, 185);
setShakeChara( sp_ATK_03+50, 0, 54, 50);


kamehame_beam2 = entryEffect( sp_ATK_03+50, SP_03,   0, -1,  0,  160,  160);   -- 迫るかめはめ波
setDamage( sp_ATK_03+50+40, 1, 0);  -- ダメージ振動等

shuchusen = entryEffectLife( sp_ATK_03, 906, 49, 0x00,  -1, 0,  0,  0);   --集中線
setEffScaleKey( sp_ATK_03, shuchusen, 1.0, 1.0);
setEffScaleKey( sp_ATK_03, shuchusen, 1.0, 1.0);
setEffScaleKey( sp_ATK_03+49, shuchusen, 2.0, 2.0);

--書き文字エントリー
ct = entryEffectLife( sp_ATK_03+50, 10012, 30, 0, -1, 0, 200, 300); --ズオッ
setEffShake( sp_ATK_03+50, ct, 32, 5);
setEffAlphaKey( sp_ATK_03+50, ct, 255);
setEffAlphaKey( sp_ATK_03+67, ct, 255);
setEffAlphaKey( sp_ATK_03+77, ct, 0);
setEffScaleKey( sp_ATK_03+45, ct, 0.0, 0.0);
setEffScaleKey( sp_ATK_03+49, ct, 1.3, 1.3);
setEffScaleKey( sp_ATK_03+69, ct, 1.3, 1.3);
setEffScaleKey( sp_ATK_03+77, ct, 6.0, 6.0);

playSe( sp_ATK_03+40, SE_07);
--bm = entryEffect( sp_ATK_03+69, 1509,  0,  -1,  0,  0,  0);   -- 爆発372
entryFade( sp_ATK_03+85, 5,  10, 3, fcolor_r, fcolor_g, fcolor_b, 255);     --white fade
setShake(sp_ATK_03+69);
playSe( sp_ATK_03+69, SE_10);
setRotateKey( sp_ATK_03+92 , 1 , -90);
setMoveKey( sp_ATK_03+91,    1,  200,    50);
removeAllEffect(sp_ATK_03+91);


setScaleKey( sp_ATK_03+92, 0, 0.5, 0.5);
setScaleKey( sp_ATK_03+92, 1, 1.6, 1.6);


spep_5 = sp_ATK_03+92;

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

setDisp( spep_5-1, 1, 1);
setDisp( spep_5-1, 0, 0);
setMoveKey(  spep_5-1,    1,  100,  0,   0);
setScaleKey( spep_5-1,    1,  1, 1);
setMoveKey(  spep_5,    1,    0,   0,   128);
setScaleKey( spep_5,    1,  0.1, 0.1);

changeAnime( spep_5, 1, 107);                         -- 手前ダメージ
entryEffect( spep_5+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_5+8, SE_10);

setMoveKey(  spep_5+8,   1,    0,   0,   128);
setMoveKey(  spep_5+15,   1,  -60,  -200,  -100);
setMoveKey(  spep_5+16,   1,  -60,  -200,  -100);
setDamage( spep_5+16, 1, 0);  -- ダメージ振動等
setShake(spep_5+7,6,15);
setShake(spep_5+13,15,10);

setRotateKey( spep_5,  1,  30 );
setRotateKey( spep_5+2,  1,  80 );
setRotateKey( spep_5+4,  1, 120 );
setRotateKey( spep_5+6,  1, 160 );
setRotateKey( spep_5+8,  1, 200 );
setRotateKey( spep_5+10,  1, 260 );
setRotateKey( spep_5+12,  1, 320 );
setRotateKey( spep_5+14,  1,   0 );

setShakeChara( spep_5+15, 1, 5,  10);
setShakeChara( spep_5+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep_5+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep_5+15, ct, 30, 10);
setEffRotateKey( spep_5+15, ct, -40);
setEffScaleKey( spep_5+15, ct, 4.0, 4.0);
setEffScaleKey( spep_5+16, ct, 2.0, 2.0);
setEffScaleKey( spep_5+17, ct, 2.6, 2.6);
setEffScaleKey( spep_5+18, ct, 4.0, 4.0);
setEffScaleKey( spep_5+19, ct, 2.6, 2.6);
setEffScaleKey( spep_5+20, ct, 3.8, 3.8);
setEffScaleKey( spep_5+110, ct, 3.8, 3.8);
setEffAlphaKey( spep_5+15, ct, 255);
setEffAlphaKey( spep_5+105, ct, 255);
setEffAlphaKey( spep_5+115, ct, 0);

playSe( spep_5+13, SE_11);
shuchusen = entryEffectLife( spep_5+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_5+7, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(spep_5+16);

entryFade( spep_5+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase( spep_5+120);

end
