print ("[lua]sp1128");

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--SP_01 = 100004
SP_03 = 150000
SP_04 = 4
SP_05 = 30
SP_06 = 100002
SP_07 = 5

SE_01 = 1035; --気を貯める
SE_02 = 1036; --気が広がる
SE_03 = 1036; --かめはめ
SE_04 = 1018; --カットイン
SE_05 = 1035; --カットイン攻撃
SE_06 = 43; --発射
SE_07 = 1022; --のびる発射
SE_08 = 1009; --huru
SE_09 = 1010; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音
SE_12 = 1004;

---------------
--kame_flag = 0x00;
--if (_IS_PLAYER_SIDE_ == 1) then

SP_ATK01 = 275; --320
SP_ATK02 = SP_ATK01+138;
SP_end   = SP_ATK02+103;

--else

--SP_ATK_0 = 6;
--SP_ATK_1 = SP_ATK_0+55;
--SP_ATK_2 = SP_ATK_1+45;
--SP_ATK01 = SP_ATK_2+70;
--SP_ATK02 = SP_ATK01+142;
--SP_end   = SP_ATK02+116;

--end

multi_frm = 2;

changeAnime( 0, 0, 0);                       -- 立ち
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0, -54,   0);
setMoveKey(   1,   0,    0, -54,   0);
setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   1,   0, 1.5, 1.5);
setMoveKey(  0,    1,  700,  0,   0);
setVisibleUI(0, 0);

------------------------------------------------------
--溜め
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

setAnimeLoop(  0, 0, 0);

setDisp( 0, 1, 0);
setDisp( 0, 0, 0);

setMoveKey( 0, 0,    0, -54,   0);
setMoveKey( 1, 0,    0, -54,   0);
setMoveKey( 2, 0,    0, -54,   0);
setMoveKey( 3, 0,    0, -54,   0);
setMoveKey( 4, 0,    0, -54,   0);
setMoveKey( 5, 0,    0, -54,   0);
setMoveKey( 0, 1,    0, -54,   0);
setMoveKey( 1, 1,    0, -54,   0);
setMoveKey( 2, 1,    0, -54,   0);
setMoveKey( 3, 1,    0, -54,   0);
setMoveKey( 4, 1,    0, -54,   0);
setMoveKey( 5, 1,    0, -54,   0);

setMoveKey( 140, 0,    0, -54,   0);

setScaleKey( 0,   1, 1.5, 1.5);
setScaleKey( 1,   1, 1.5, 1.5);
setScaleKey( 0,   0, 1.5, 1.5);
setScaleKey( 1,   0, 1.5, 1.5);

setRotateKey( 0,  1,  0 );
setRotateKey( 1,  1,  0 );

--entryFade( 0, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( 0, 0, 50, 0, 10, 10, 10, 180);       -- ベース暗め　背景
setVisibleUI(0, 0);
setDisp( 0, 0, 1);

changeAnime(  0, 0, 1);     
changeAnime(  0, 1, 100);     

changeAnime(  10, 0, 17);                       -- 溜め!
setShakeChara( 10, 0, 40, 10);

kouka2=entryEffectLife(  10,   1500, 29,  0,    -1,  0,  0,  0);    -- eff_001
setEffMoveKey( 10, kouka2, 0, 0, 0);
setEffScaleKey( 10, kouka2, 1.0, 1.0);
setEffAlphaKey( 10, kouka2, 255);
setEffRotateKey( 10, kouka2, 0);

kouka1=entryEffectLife(  10,   1501,  29, 0x80, -1,  0,  0,  0);    -- eff_002
setEffMoveKey( 10, kouka1, 0, 0, 0);
setEffScaleKey( 10, kouka1, 1.0, 1.0);
setEffAlphaKey( 10, kouka1, 255);
setEffRotateKey( 10, kouka1, 0);

playSe( 10, SE_01);


-- ** エフェクト等 ** --
aura = entryEffectLife(  10,   311, 140, 0x40,  0,  1,  0,  -50); -- オーラ
setEffScaleKey( 10, aura, 1.5, 1.5);
setShakeChara( 10, 0, 19, 5);

-- 書き文字エントリー
ct = entryEffectLife( 10, 10013, 29, 0, -1, 0, 0, 350); -- ズズンッ
setEffShake(10, ct, 40, 7);
setEffAlphaKey(10, ct, 255);
setEffAlphaKey(50, ct, 255);
setEffAlphaKey(70, ct, 255);
setEffScaleKey( 10, ct, 0.1, 0.1);
setEffScaleKey( 20, ct, 2.0, 2.0);

setAnimeLoop(  40, 0, 1);

------------------------------------------------------
-- 気力解放！(100F)
------------------------------------------------------
spep_2=40;

entryEffect(  spep_2,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect(  spep_2,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
speff = entryEffect(  spep_2+10,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_2+10,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

--playSe( spep_2+0, SE_03);
playSe( spep_2+10, SE_04);

setShakeChara( spep_2, 0, 49, 5);

ctgogo= entryEffectLife( spep_2+24, 190006, 70, 0x100, -1, -200, 500, 0);    -- ゴゴゴゴ
setEffScaleKey( spep_2+24, ctgogo, 0.7, 0.7);
setEffRotateKey( spep_2+24, ctgogo, 10);
setEffAlphaKey( spep_2+24, ctgogo, 255);
setEffMoveKey( spep_2+24, ctgogo, -200, 500,0);

setEffScaleKey( spep_2+87, ctgogo, 0.7, 0.7);
setEffRotateKey( spep_2+87, ctgogo, 10);
setEffAlphaKey( spep_2+87, ctgogo, 255);
setEffMoveKey( spep_2+87, ctgogo, -200, 500,0);

setEffScaleKey( spep_2+94, ctgogo, 2.0, 2.0);
setEffRotateKey( spep_2+94, ctgogo, 10);
setEffAlphaKey( spep_2+94, ctgogo, 255);
setEffMoveKey( spep_2+94, ctgogo, -200, 500,0);

entryFade( spep_2+90, 3, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
spep_3=spep_2+100;

setScaleKey( spep_3-1,   0, 1.5, 1.5);
setScaleKey( spep_3,   0, 1.0, 1.0);

cr = entryEffect(  spep_3,   1507,   0,  -1,  0,  0,  0);   -- eff_008
setEffReplaceTexture( cr, 1, 1);
setEffReplaceTexture( cr, 2, 0);                         -- カード差し替え
setEffReplaceTexture( cr, 5, 4);                                  -- 技名テクスチャ差し替え
playSe( spep_3, SE_05);
entryFade( spep_3+85, 3, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
spep_4=spep_3+95;

setMoveKey(  spep_4,    0,      0,  -50,   0);
changeAnime( spep_4+2, 0, 16);                                    -- かめはめ発射ポーズ
setMoveKey(  spep_4+2,    0,      0,  0,   0);
setScaleKey(  spep_4+3,    0,      0.2,  0.2);

setMoveKey(  spep_4+42,    0,      100,  0,   0);
setScaleKey( spep_4+42, 0, 4.5, 4.5);

setDisp(spep_4+43,0,0);
setDisp(spep_4+43,1,0);
setMoveKey(spep_4+43, 1, 5000, 5000, 0);
setDisp(spep_4+53,1,1);
setMoveKey(spep_4+53, 1, 700, 0, 50);

setShakeChara(  spep_4+3,    0,      39,  25);

playSe( spep_4, SE_04);

setMoveKey(  spep_4+43,    0,   -1100,  0,   0);

entryFade( spep_4+100, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

shuchusen = entryEffectLife( spep_4, 906, 44, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_4-5, shuchusen, 1.3, 1.3);
setEffMoveKey( spep_4-5, shuchusen, 0,0,0);
setEffAlphaKey( spep_4-5, shuchusen, 255);
setEffRotateKey( spep_4-5, shuchusen, 0);

setEffScaleKey( spep_4+44, shuchusen, 1.1, 1.1);
setEffMoveKey( spep_4+44, shuchusen, 0,0,0);
setEffAlphaKey( spep_4+44, shuchusen, 255);
setEffRotateKey( spep_4+44, shuchusen, 0);

entryFade( spep_4+33, 8, 12, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 252; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

dodge = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

endPhase( SP_dodge+10);

do return end
else end

------------------------------------------------------
-- 攻撃(100F)
------------------------------------------------------
setDisp( SP_ATK01, 0, 0);
setDisp( SP_ATK01, 1, 1);
changeAnime( SP_ATK01, 1, 104);                     -- ガード
setMoveKey(  SP_ATK01,    1,  700,  0,   50);
setMoveKey(  SP_ATK01+30,  1,  0,  0,   -128);

--playSe( SP_ATK01+30, SE_07);
diff01 = 10;

setRotateKey( SP_ATK01+35, 1, 0);
setRotateKey( SP_ATK01+46, 1, 15);
setRotateKey( SP_ATK01+49, 1, 15);
setRotateKey( SP_ATK01+50, 1, -10);
setRotateKey( SP_ATK01+59, 1, -10);
setRotateKey( SP_ATK01+58, 1, 5);
setRotateKey( SP_ATK01+70, 1, 0);

-- 敵吹っ飛ぶモーション

setMoveKey(  SP_ATK01+110+diff01+10, 1, 0,  0,  -128);
changeAnime( SP_ATK01+92+diff01+7, 1, 108);
setScaleKey(SP_ATK01+93+diff01+7, 1, 1,1);
setScaleKey(SP_ATK01+94+diff01+7, 1, 2,2);
setScaleKey(SP_ATK01+95+diff01+7, 1, 1,1);
entryEffectLife( SP_ATK01+110+diff01+10, 921, 15, 0x80,  -1,  0,  0,  0); -- 流線斜め
setMoveKey(  SP_ATK01+118+diff01+10, 1, 400,    0,  50);
setDamage(  SP_ATK01+92+17,  1,  0);   --ダメージ振動等


--攻撃演出--

-- ** エフェクト等 ** --
setShakeChara( SP_ATK01, 1, 99, 20);
entryFadeBg( SP_ATK01, 0, 36, 0, 10, 10, 10, 150);          -- ベース暗め　背景
entryEffectLife( SP_ATK01, 921, 36, 0x80,  -1,  0,  0,  0); -- 流線斜め
entryEffect( SP_ATK01+30, SP_03,   0, -1,  0,  0,  0);   -- 攻撃１

setDamage(  SP_ATK01+74,  1,  0);   --ダメージ振動等

entryEffectLife( SP_ATK01+35, 908, 5, 0x00,  -1, 0,  0,  0);   -- 集中線
eff01 = entryEffect( SP_ATK01+35, SP_04, 0, 1,  0,  0,  0);   -- ヒットエフェクト
setEffScaleKey( SP_ATK01+35, eff01,1,2);--サイズ
setEffRotateKey(SP_ATK01+35, eff01,-10);--角度

changeAnime( SP_ATK01+36, 1, 106);--やられ   
seID = playSe( SP_ATK01+35, SE_09);
entryFadeBg( SP_ATK01+35, 0, 66, 0, 0, 0, 0, 255);          -- ベース暗め　背景
pauseAll(SP_ATK01+36,10);

--2撃目--
entryEffectLife( SP_ATK01+50+diff01, 906, 45, 0x00,  -1, 0,  0,  0);   -- 集中線

eff02 = entryEffect( SP_ATK01+50+diff01, SP_04,  0, -1,  0,  0,  0);   -- 攻撃3
setEffScaleKey( SP_ATK01+50+diff01, eff02,0.4,3);--サイズ
setEffRotateKey(SP_ATK01+50+diff01, eff02,-70);--角度

playSe( SP_ATK01+50+diff01, SE_08);
changeAnime( SP_ATK01+50+diff01, 1, 105);--やられ 
setShake( SP_ATK01+50+diff01, 3, 14);
setMoveKey(  SP_ATK01+50+diff01, 1, 0,  0,  0);
setMoveKey(  SP_ATK01+51+diff01, 1, 50,  -50,  0);

eff03 = entryEffect( SP_ATK01+57+diff01, SP_04,  0, -1,  0,  50,  0);   -- 攻撃4
setEffScaleKey( SP_ATK01+57+diff01, eff03, 0.4,3);--サイズ
setEffRotateKey(SP_ATK01+57+diff01, eff03, 70);--角度
playSe( SP_ATK01+57+diff01, SE_09);
changeAnime( SP_ATK01+57+diff01, 1, 108);--やられ 
setShake( SP_ATK01+57+diff01, 3, 14);
setMoveKey(  SP_ATK01+57+diff01, 1, 50,  -50,  -128);
setMoveKey(  SP_ATK01+58+diff01, 1, -80,  30,  -128);

eff04 = entryEffect( SP_ATK01+65+diff01, SP_04,  0, -1,  0,  -80,  0);   -- 攻撃5
setEffScaleKey( SP_ATK01+65+diff01, eff04, 0.4,2.5);--サイズ
setEffRotateKey(SP_ATK01+65+diff01, eff04, -80);--角度
playSe( SP_ATK01+65+diff01, SE_08);
changeAnime( SP_ATK01+65+diff01, 1, 106);--やられ 
setShake( SP_ATK01+65+diff01, 3, 14);
setMoveKey(  SP_ATK01+65+diff01, 1, -80,  30,  -128);
setMoveKey(  SP_ATK01+66+diff01, 1, 40,  -35,  -128);

eff05 = entryEffect( SP_ATK01+72+diff01, SP_04,  0, -1,  0,  20,  0);   -- 攻撃3
setEffScaleKey( SP_ATK01+72+diff01, eff05, 0.4,3);--サイズ
setEffRotateKey(SP_ATK01+72+diff01, eff05, 45);--角度
--entryFlashBg( (SP_ATK01+72+diff01), 1, fcolor_r, fcolor_g, fcolor_b, 200);
playSe( SP_ATK01+72+diff01, SE_09);
setShake( SP_ATK01+72+diff01, 3, 14);
setMoveKey(  SP_ATK01+72+diff01, 1, 40,  -35,  -128);
setMoveKey(  SP_ATK01+73+diff01, 1, -90,  -90,  -128);

eff06 = entryEffect( SP_ATK01+76+diff01, SP_04,  0, -1,  0,  -60,  0);   -- 攻撃3
setEffScaleKey( SP_ATK01+76+diff01, eff06, 0.4,2);--サイズ
setEffRotateKey(SP_ATK01+76+diff01, eff06, -100);--角度
playSe( SP_ATK01+76+diff01, SE_08);
changeAnime( SP_ATK01+76+diff01, 1, 105);--やられ 
setShake( SP_ATK01+76+diff01, 3, 14);
setMoveKey(  SP_ATK01+76+diff01, 1, 90,  -90,  -128);
setMoveKey(  SP_ATK01+77+diff01, 1, -60, 80,  -128);

eff07 = entryEffect( SP_ATK01+80+diff01, SP_04,  0, -1,  0,  70,  0);   -- 攻撃3
setEffScaleKey( SP_ATK01+80+diff01, eff07, 0.4,2.5);--サイズ
setEffRotateKey(SP_ATK01+80+diff01, eff07, 130);--角度
playSe( SP_ATK01+80+diff01, SE_08);

changeAnime( SP_ATK01+80+diff01, 1, 106);--やられ 
setShake( SP_ATK01+80+diff01, 3, 14);
setMoveKey(  SP_ATK01+80+diff01, 1, -60, 80,  -128);
setMoveKey(  SP_ATK01+81+diff01, 1, 80,  60,  -128);

diff02 = 7

eff08 = entryEffect( SP_ATK01+91+diff01+diff02, SP_04,  0, -1,  0,  0,  0);   -- 攻撃3
setEffScaleKey( SP_ATK01+91+diff01+diff02, eff08, 2,4);--サイズ
setEffRotateKey(SP_ATK01+91+diff01+diff02, eff08, -15);--角度
playSe( SP_ATK01+91+diff01+diff02, SE_09);
setShake( SP_ATK01+91+diff01+diff02, 3, 14);
entryFadeBg( SP_ATK01+92+diff01+diff02, 0, 35, 0, 0, 0, 0, 255);          -- ベース暗め　背景
entryEffectLife( SP_ATK01+92+diff01+diff02, 908, 10, 0x00,  -1, 0,  0,  0);   -- 集中線
entryFlashBg( SP_ATK01+92+diff01+diff02, 1, fcolor_r, 0, 0, 100);

setMoveKey(  SP_ATK01+92+diff01+diff02, 1, 0,  0,  -128);
pauseAll(SP_ATK01+92+diff01+diff02,5);

-- 書き文字エントリー
ct = entryEffectLife( SP_ATK01, 10014, 99, 0x100, -1, 0, -100, 255); -- ズドドッ
setEffShake(SP_ATK01, ct, 81, 20);
setEffScaleKey( SP_ATK01, ct, 2.4, 2.4);
setEffRotateKey(SP_ATK01, ct, 70);
setEffAlphaKey(SP_ATK01, ct, 255);
setEffAlphaKey(SP_ATK01+80, ct, 255);
setEffAlphaKey(SP_ATK01+102, ct, 0);

entryFade( SP_ATK01+100+20, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255); 

entryFade( SP_ATK01+115+20, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255); 

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
setDisp( SP_ATK02-1, 1, 1);
setMoveKey(  SP_ATK02-1,    1,  100,  0,   0);
setScaleKey( SP_ATK02-1,    1,  1.0, 1.0);
setMoveKey(  SP_ATK02,    1,    0,   0,   128);
setScaleKey( SP_ATK02,    1,  0.1, 0.1);

changeAnime( SP_ATK02, 1, 107);                         -- 手前ダメージ
entryEffect( SP_ATK02+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( SP_ATK02+8, SE_10);

setMoveKey(  SP_ATK02+8,   1,    0,   0,   128);
setMoveKey(  SP_ATK02+15,   1,  -60,  -200,  -100);
setMoveKey(  SP_ATK02+16,   1,  -60,  -200,  -100);
setDamage( SP_ATK02+16, 1, 0);  -- ダメージ振動等
setShake(SP_ATK02+7,6,15);
setShake(SP_ATK02+13,15,10);

setRotateKey( SP_ATK02,  1,  30 );
setRotateKey( SP_ATK02+2,  1,  80 );
setRotateKey( SP_ATK02+4,  1, 120 );
setRotateKey( SP_ATK02+6,  1, 160 );
setRotateKey( SP_ATK02+8,  1, 200 );
setRotateKey( SP_ATK02+10,  1, 260 );
setRotateKey( SP_ATK02+12,  1, 320 );
setRotateKey( SP_ATK02+14,  1,   0 );

setShakeChara( SP_ATK02+15, 1, 5,  10);
setShakeChara( SP_ATK02+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( SP_ATK02+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( SP_ATK02+15, ct, 30, 10);
setEffRotateKey( SP_ATK02+15, ct, -40);
setEffScaleKey( SP_ATK02+15, ct, 4.0, 4.0);
setEffScaleKey( SP_ATK02+16, ct, 2.0, 2.0);
setEffScaleKey( SP_ATK02+17, ct, 2.6, 2.6);
setEffScaleKey( SP_ATK02+18, ct, 4.0, 4.0);
setEffScaleKey( SP_ATK02+19, ct, 2.6, 2.6);
setEffScaleKey( SP_ATK02+20, ct, 3.8, 3.8);
setEffScaleKey( SP_ATK02+110, ct, 3.8, 3.8);
setEffAlphaKey( SP_ATK02+15, ct, 255);
setEffAlphaKey( SP_ATK02+105, ct, 255);
setEffAlphaKey( SP_ATK02+115, ct, 0);

playSe( SP_ATK02+3, SE_11);
shuchusen = entryEffectLife( SP_ATK02+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( SP_ATK02+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(SP_ATK02+16);

entryFade( SP_ATK02+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase( SP_ATK02+110);

else

-----------------------------------------
--敵側の攻撃
-----------------------------------------
kame_flag = 0x00;

setAnimeLoop(  0, 0, 0);

setDisp( 0, 1, 0);
setDisp( 0, 0, 0);

setMoveKey( 0, 0,    0, -54,   0);
setMoveKey( 1, 0,    0, -54,   0);
setMoveKey( 2, 0,    0, -54,   0);
setMoveKey( 3, 0,    0, -54,   0);
setMoveKey( 0, 1,    0, -54,   0);
setMoveKey( 1, 1,    0, -54,   0);
setMoveKey( 2, 1,    0, -54,   0);
setMoveKey( 3, 1,    0, -54,   0);

setMoveKey( 140, 0,    0, -54,   0);

setScaleKey( 0,   1, 1.5, 1.5);
setScaleKey( 1,   1, 1.5, 1.5);
setScaleKey( 0,   0, 1.5, 1.5);
setScaleKey( 1,   0, 1.5, 1.5);

setRotateKey( 0,  1,  0 );
setRotateKey( 1,  1,  0 );

--entryFade( 0, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( 0, 0, 50, 0, 10, 10, 10, 180);       -- ベース暗め　背景
setVisibleUI(0, 0);
setDisp( 0, 0, 1);

changeAnime(  0, 0, 1);     
changeAnime(  0, 1, 100);     

changeAnime(  10, 0, 17);                       -- 溜め!
setShakeChara( 10, 0, 40, 10);

kouka2=entryEffectLife(  10,   1500, 29,  0,    -1,  0,  0,  0);    -- eff_001
setEffMoveKey( 10, kouka2, 0, 0, 0);
setEffScaleKey( 10, kouka2, 1.0, 1.0);
setEffAlphaKey( 10, kouka2, 255);
setEffRotateKey( 10, kouka2, 0);

kouka1=entryEffectLife(  10,   1501,  29, 0x80, -1,  0,  0,  0);    -- eff_002
setEffMoveKey( 10, kouka1, 0, 0, 0);
setEffScaleKey( 10, kouka1, 1.0, 1.0);
setEffAlphaKey( 10, kouka1, 255);
setEffRotateKey( 10, kouka1, 0);

playSe( 10, SE_01);


-- ** エフェクト等 ** --
aura = entryEffectLife(  10,   311, 140, 0x40,  0,  1,  0,  -50); -- オーラ
setEffScaleKey( 10, aura, 1.5, 1.5);
setShakeChara( 10, 0, 19, 5);

-- 書き文字エントリー
ct = entryEffectLife( 10, 10013, 29, 0, -1, 0, 0, 350); -- ズズンッ
setEffShake(10, ct, 40, 7);
setEffAlphaKey(10, ct, 255);
setEffAlphaKey(50, ct, 255);
setEffAlphaKey(70, ct, 255);
setEffScaleKey( 10, ct, 0.1, 0.1);
setEffScaleKey( 20, ct, 2.0, 2.0);

setAnimeLoop(  40, 0, 1);

------------------------------------------------------
-- 気力解放！(100F)
------------------------------------------------------
spep_2=40;

entryEffect(  spep_2,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect(  spep_2,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)

--[[
speff = entryEffect(  spep_2+10,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_2+10,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
]]--

--playSe( spep_2+0, SE_03);
playSe( spep_2+10, SE_04);

setShakeChara( spep_2, 0, 49, 5);

ctgogo= entryEffectLife( spep_2+24, 190006, 70, 0x100, -1, -200, 500, 0);    -- ゴゴゴゴ
setEffScaleKey( spep_2+24, ctgogo, -0.7, 0.7);
setEffRotateKey( spep_2+24, ctgogo, 10);
setEffAlphaKey( spep_2+24, ctgogo, 255);
setEffMoveKey( spep_2+24, ctgogo, -200, 500,0);

setEffScaleKey( spep_2+87, ctgogo, -0.7, 0.7);
setEffRotateKey( spep_2+87, ctgogo, 10);
setEffAlphaKey( spep_2+87, ctgogo, 255);
setEffMoveKey( spep_2+87, ctgogo, -200, 500,0);

setEffScaleKey( spep_2+94, ctgogo, -2.0, 2.0);
setEffRotateKey( spep_2+94, ctgogo, 10);
setEffAlphaKey( spep_2+94, ctgogo, 255);
setEffMoveKey( spep_2+94, ctgogo, -200, 500,0);

entryFade( spep_2+90, 3, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
spep_3=spep_2+100;

setScaleKey( spep_3-1,   0, 1.5, 1.5);
setScaleKey( spep_3,   0, 1.0, 1.0);

cr = entryEffect(  spep_3,   1507,   0,  -1,  0,  0,  0);   -- eff_008
setEffReplaceTexture( cr, 1, 1);
setEffReplaceTexture( cr, 2, 0);                         -- カード差し替え
setEffReplaceTexture( cr, 5, 4);                                  -- 技名テクスチャ差し替え
playSe( spep_3, SE_05);
entryFade( spep_3+85, 3, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
spep_4=spep_3+95;

setMoveKey(  spep_4,    0,      0,  -50,   0);
changeAnime( spep_4+2, 0, 16);                                    -- かめはめ発射ポーズ
setMoveKey(  spep_4+2,    0,      0,  0,   0);
setScaleKey(  spep_4+3,    0,      0.2,  0.2);

setMoveKey(  spep_4+42,    0,      100,  0,   0);
setScaleKey( spep_4+42, 0, 4.5, 4.5);

setDisp(spep_4+43,0,0);
setDisp(spep_4+43,1,0);
setMoveKey(spep_4+43, 1, 5000, 5000, 0);
setDisp(spep_4+53,1,1);
setMoveKey(spep_4+53, 1, 700, 0, 50);

setShakeChara(  spep_4+3,    0,      39,  25);

playSe( spep_4, SE_04);

setMoveKey(  spep_4+43,    0,   -1100,  0,   0);

entryFade( spep_4+100, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

shuchusen = entryEffectLife( spep_4, 906, 44, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_4-5, shuchusen, 1.3, 1.3);
setEffMoveKey( spep_4-5, shuchusen, 0,0,0);
setEffAlphaKey( spep_4-5, shuchusen, 255);
setEffRotateKey( spep_4-5, shuchusen, 0);

setEffScaleKey( spep_4+44, shuchusen, 1.1, 1.1);
setEffMoveKey( spep_4+44, shuchusen, 0,0,0);
setEffAlphaKey( spep_4+44, shuchusen, 255);
setEffRotateKey( spep_4+44, shuchusen, 0);

entryFade( spep_4+33, 8, 12, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 攻撃(100F)
------------------------------------------------------
setDisp( SP_ATK01, 0, 0);
setDisp( SP_ATK01, 1, 1);
changeAnime( SP_ATK01, 1, 104);                     -- ガード
setMoveKey(  SP_ATK01,    1,  700,  0,   50);
setMoveKey(  SP_ATK01+30,  1,  0,  0,   -128);

--playSe( SP_ATK01+30, SE_07);
diff01 = 10;

setRotateKey( SP_ATK01+35, 1, 0);
setRotateKey( SP_ATK01+36+diff01, 1, 15);
setRotateKey( SP_ATK01+39+diff01, 1, 15);
setRotateKey( SP_ATK01+40+diff01, 1, -10);
setRotateKey( SP_ATK01+49+diff01, 1, -10);
setRotateKey( SP_ATK01+48+diff01, 1, 5);
setRotateKey( SP_ATK01+60+diff01, 1, 0);

-- 敵吹っ飛ぶモーション

setMoveKey(  SP_ATK01+110+diff01+10, 1, 0,  0,  -128);
changeAnime( SP_ATK01+92+diff01+7, 1, 108);
setScaleKey(SP_ATK01+93+diff01+7, 1, 1,1);
setScaleKey(SP_ATK01+94+diff01+7, 1, 2,2);
setScaleKey(SP_ATK01+95+diff01+7, 1, 1,1);
entryEffectLife( SP_ATK01+110+diff01+10, 921, 15, 0x80,  -1,  0,  0,  0); -- 流線斜め
setMoveKey(  SP_ATK01+118+diff01+10, 1, 400,    0,  50);
setDamage(  SP_ATK01+92+17,  1,  0);   --ダメージ振動等


--攻撃演出--

-- ** エフェクト等 ** --
setShakeChara( SP_ATK01, 1, 99, 20);
entryFadeBg( SP_ATK01, 0, 36, 0, 10, 10, 10, 150);          -- ベース暗め　背景
entryEffectLife( SP_ATK01, 921, 36, 0x80,  -1,  0,  0,  0); -- 流線斜め
entryEffect( SP_ATK01+30, SP_03,   0, -1,  0,  0,  0);   -- 攻撃１

setDamage(  SP_ATK01+64+diff01,  1,  0);   --ダメージ振動等

entryEffectLife( SP_ATK01+35, 908, 5, 0x00,  -1, 0,  0,  0);   -- 集中線
eff01 = entryEffect( SP_ATK01+35, SP_04, 0, 1,  0,  0,  0);   -- ヒットエフェクト
setEffScaleKey( SP_ATK01+35, eff01,1,2);--サイズ
setEffRotateKey(SP_ATK01+35, eff01,-10);--角度

changeAnime( SP_ATK01+36, 1, 106);--やられ   
seID = playSe( SP_ATK01+35, SE_09);
entryFadeBg( SP_ATK01+35, 0, 66, 0, 0, 0, 0, 255);          -- ベース暗め　背景
pauseAll(SP_ATK01+36,10);

--2撃目--
entryEffectLife( SP_ATK01+50+diff01, 906, 45, 0x00,  -1, 0,  0,  0);   -- 集中線

eff02 = entryEffect( SP_ATK01+50+diff01, SP_04,  0, -1,  0,  0,  0);   -- 攻撃3
setEffScaleKey( SP_ATK01+50+diff01, eff02,0.4,3);--サイズ
setEffRotateKey(SP_ATK01+50+diff01, eff02,-70);--角度

playSe( SP_ATK01+50+diff01, SE_08);
changeAnime( SP_ATK01+50+diff01, 1, 105);--やられ 
setShake( SP_ATK01+50+diff01, 3, 14);
setMoveKey(  SP_ATK01+50+diff01, 1, 0,  0,  0);
setMoveKey(  SP_ATK01+51+diff01, 1, 50,  -50,  0);

eff03 = entryEffect( SP_ATK01+57+diff01, SP_04,  0, -1,  0,  50,  0);   -- 攻撃4
setEffScaleKey( SP_ATK01+57+diff01, eff03, 0.4,3);--サイズ
setEffRotateKey(SP_ATK01+57+diff01, eff03, 70);--角度
playSe( SP_ATK01+57+diff01, SE_09);
changeAnime( SP_ATK01+57+diff01, 1, 108);--やられ 
setShake( SP_ATK01+57+diff01, 3, 14);
setMoveKey(  SP_ATK01+57+diff01, 1, 50,  -50,  -128);
setMoveKey(  SP_ATK01+58+diff01, 1, -80,  30,  -128);

eff04 = entryEffect( SP_ATK01+65+diff01, SP_04,  0, -1,  0,  -80,  0);   -- 攻撃5
setEffScaleKey( SP_ATK01+65+diff01, eff04, 0.4,2.5);--サイズ
setEffRotateKey(SP_ATK01+65+diff01, eff04, -80);--角度
playSe( SP_ATK01+65+diff01, SE_08);
changeAnime( SP_ATK01+65+diff01, 1, 106);--やられ 
setShake( SP_ATK01+65+diff01, 3, 14);
setMoveKey(  SP_ATK01+65+diff01, 1, -80,  30,  -128);
setMoveKey(  SP_ATK01+66+diff01, 1, 40,  -35,  -128);

eff05 = entryEffect( SP_ATK01+72+diff01, SP_04,  0, -1,  0,  20,  0);   -- 攻撃3
setEffScaleKey( SP_ATK01+72+diff01, eff05, 0.4,3);--サイズ
setEffRotateKey(SP_ATK01+72+diff01, eff05, 45);--角度
--entryFlashBg( (SP_ATK01+72+diff01), 1, fcolor_r, fcolor_g, fcolor_b, 200);
playSe( SP_ATK01+72+diff01, SE_09);
setShake( SP_ATK01+72+diff01, 3, 14);
setMoveKey(  SP_ATK01+72+diff01, 1, 40,  -35,  -128);
setMoveKey(  SP_ATK01+73+diff01, 1, -90,  -90,  -128);

eff06 = entryEffect( SP_ATK01+76+diff01, SP_04,  0, -1,  0,  -60,  0);   -- 攻撃3
setEffScaleKey( SP_ATK01+76+diff01, eff06, 0.4,2);--サイズ
setEffRotateKey(SP_ATK01+76+diff01, eff06, -100);--角度
playSe( SP_ATK01+76+diff01, SE_08);
changeAnime( SP_ATK01+76+diff01, 1, 105);--やられ 
setShake( SP_ATK01+76+diff01, 3, 14);
setMoveKey(  SP_ATK01+76+diff01, 1, 90,  -90,  -128);
setMoveKey(  SP_ATK01+77+diff01, 1, -60, 80,  -128);

eff07 = entryEffect( SP_ATK01+80+diff01, SP_04,  0, -1,  0,  70,  0);   -- 攻撃3
setEffScaleKey( SP_ATK01+80+diff01, eff07, 0.4,2.5);--サイズ
setEffRotateKey(SP_ATK01+80+diff01, eff07, 130);--角度
playSe( SP_ATK01+80+diff01, SE_08);

changeAnime( SP_ATK01+80+diff01, 1, 106);--やられ 
setShake( SP_ATK01+80+diff01, 3, 14);
setMoveKey(  SP_ATK01+80+diff01, 1, -60, 80,  -128);
setMoveKey(  SP_ATK01+81+diff01, 1, 80,  60,  -128);

diff02 = 7

eff08 = entryEffect( SP_ATK01+91+diff01+diff02, SP_04,  0, -1,  0,  0,  0);   -- 攻撃3
setEffScaleKey( SP_ATK01+91+diff01+diff02, eff08, 2,4);--サイズ
setEffRotateKey(SP_ATK01+91+diff01+diff02, eff08, -15);--角度
playSe( SP_ATK01+91+diff01+diff02, SE_09);
setShake( SP_ATK01+91+diff01+diff02, 3, 14);
entryFadeBg( SP_ATK01+92+diff01+diff02, 0, 35, 0, 0, 0, 0, 255);          -- ベース暗め　背景
entryEffectLife( SP_ATK01+92+diff01+diff02, 908, 10, 0x00,  -1, 0,  0,  0);   -- 集中線
entryFlashBg( SP_ATK01+92+diff01+diff02, 1, fcolor_r, 0, 0, 100);

setMoveKey(  SP_ATK01+92+diff01+diff02, 1, 0,  0,  -128);
pauseAll(SP_ATK01+92+diff01+diff02,5);

-- 書き文字エントリー
ct = entryEffectLife( SP_ATK01, 10014, 99, 0x100, -1, 0, -100, 255); -- ズドドッ
setEffShake(SP_ATK01, ct, 81, 20);
setEffScaleKey( SP_ATK01, ct, 2.4, 2.4);
setEffRotateKey(SP_ATK01, ct, 0);
setEffAlphaKey(SP_ATK01, ct, 255);
setEffAlphaKey(SP_ATK01+70+diff01, ct, 255);
setEffAlphaKey(SP_ATK01+92+diff01, ct, 0);

entryFade( SP_ATK01+100+diff01+10, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255); 

entryFade( SP_ATK01+115+diff01+10, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255); 

------------------------------------------------------
-- 回避
------------------------------------------------------


if(_IS_DODGE_ == 1) then

SP_dodge = 252; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

dodge = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

endPhase( SP_dodge+10);

do return end
else end

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
setDisp( SP_ATK02-1, 1, 1);
setMoveKey(  SP_ATK02-1,    1,  100,  0,   0);
setScaleKey( SP_ATK02-1,    1,  1.0, 1.0);
setMoveKey(  SP_ATK02,    1,    0,   0,   128);
setScaleKey( SP_ATK02,    1,  0.1, 0.1);

changeAnime( SP_ATK02, 1, 107);                         -- 手前ダメージ
entryEffect( SP_ATK02+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( SP_ATK02+8, SE_10);

setMoveKey(  SP_ATK02+8,   1,    0,   0,   128);
setMoveKey(  SP_ATK02+15,   1,  -60,  -200,  -100);
setMoveKey(  SP_ATK02+16,   1,  -60,  -200,  -100);
setDamage( SP_ATK02+16, 1, 0);  -- ダメージ振動等
setShake(SP_ATK02+7,6,15);
setShake(SP_ATK02+13,15,10);

setRotateKey( SP_ATK02,  1,  30 );
setRotateKey( SP_ATK02+2,  1,  80 );
setRotateKey( SP_ATK02+4,  1, 120 );
setRotateKey( SP_ATK02+6,  1, 160 );
setRotateKey( SP_ATK02+8,  1, 200 );
setRotateKey( SP_ATK02+10,  1, 260 );
setRotateKey( SP_ATK02+12,  1, 320 );
setRotateKey( SP_ATK02+14,  1,   0 );

setShakeChara( SP_ATK02+15, 1, 5,  10);
setShakeChara( SP_ATK02+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( SP_ATK02+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( SP_ATK02+15, ct, 30, 10);
setEffRotateKey( SP_ATK02+15, ct, -40);
setEffScaleKey( SP_ATK02+15, ct, 4.0, 4.0);
setEffScaleKey( SP_ATK02+16, ct, 2.0, 2.0);
setEffScaleKey( SP_ATK02+17, ct, 2.6, 2.6);
setEffScaleKey( SP_ATK02+18, ct, 4.0, 4.0);
setEffScaleKey( SP_ATK02+19, ct, 2.6, 2.6);
setEffScaleKey( SP_ATK02+20, ct, 3.8, 3.8);
setEffScaleKey( SP_ATK02+110, ct, 3.8, 3.8);
setEffAlphaKey( SP_ATK02+15, ct, 255);
setEffAlphaKey( SP_ATK02+105, ct, 255);
setEffAlphaKey( SP_ATK02+115, ct, 0);

playSe( SP_ATK02+3, SE_11);
shuchusen = entryEffectLife( SP_ATK02+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( SP_ATK02+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(SP_ATK02+16);

entryFade( SP_ATK02+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase( SP_ATK02+110);

end