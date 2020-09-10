print ("[lua]sp1001");

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--SP_01 = 100004
SP_03 = 150000
SP_04 = 41
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
SE_08 = 1031; --huru
SE_09 = 1032; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音
SE_12 = 1004;

---------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

SP_ATK01 = 320;
SP_ATK02 = SP_ATK01+142;
SP_end   = SP_ATK02+116;

else

SP_ATK01 = 320;
SP_ATK02 = SP_ATK01+142;
SP_end   = SP_ATK02+116;


end
------------------
multi_frm = 2;

changeAnime( 0, 0, 0);                       -- 立ち
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0, -54,   0);
setMoveKey(   1,   0,    0, -54,   0);
setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   1,   0, 1.5, 1.5);
setMoveKey(  0,    1,  700,  0,   0);

------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

--         frame, eff, atr,tgt, tag,  x, y
changeAnime(  30, 0, 17);                       -- 溜め!

entryEffect(  30,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
entryEffect(  30,   1500,   0,    -1,  0,  0,  0);    -- eff_001
playSe( 30, SE_01);

entryFade( 62, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 100);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  30,   311, 39, 0x40,  0,  1,  0,  0); -- オーラ
setEffScaleKey( 30, aura, 1.6, 1.6);
setShakeChara( 30, 0, 19, 5);

-- 書き文字エントリー
ct = entryEffectLife( 30, 10013, 39, 0, -1, 0, 0, 200); -- ズズンッ
setEffShake(30, ct, 40, 7);
setEffAlphaKey(30, ct, 255);
setEffAlphaKey(50, ct, 255);
setEffAlphaKey(70, ct, 0);
setEffScaleKey( 30, ct, 0.1, 0.1);
setEffScaleKey( 40, ct, 2.0, 2.0);
playSe( 30, SE_02);

entryEffect(  63,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
entryEffect(  63,   1500,   0,    -1,  0,  0,  0);    -- eff_001

------------------------------------------------------
-- 気力解放！(100F)
------------------------------------------------------
setVisibleUI(69, 0);
changeAnime( 70, 0, 30);                       -- 溜め!

entryEffect(  80,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect(  80,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
speff = entryEffect(  80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( 70, SE_03);
playSe( 80, SE_04);

--entryFade( 165, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  70,   311, 95, 0x40,  0,  1,  0,  0); -- オーラ
setEffScaleKey( 30, aura, 1.7, 1.7);
setShakeChara( 70, 0, 49, 5);

-- 書き文字エントリー
ct = entryEffectLife( 90, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(90, ct, 40, 8);
setEffScaleKey(90, ct, 1.4, 1.4);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( 169,   0, 1.5, 1.5);
setScaleKey( 170,   0, 1.0, 1.0);

cr = entryEffect(  170,   1507,   0,  -1,  0,  0,  0);   -- eff_008
setEffReplaceTexture( cr, 1, 1);
setEffReplaceTexture( cr, 2, 0);                         -- カード差し替え
setEffReplaceTexture( cr, 5, 4);                                  -- 技名テクスチャ差し替え
playSe( 170, SE_05);
--entryFade( 255, 3, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--entryFlash( (170+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);

setEffScaleKey(	170,cr, 1,1);
setEffScaleKey(	260,cr, 1,1);
--[[
setEffShake( 240, ct, 3, 12);
setEffScaleKey(	243,cr, 1.2,1.2);
setEffScaleKey(	248,cr, 1.2,1.2);
setEffShake( 248, ct, 3, 8);
setEffScaleKey(	250,cr, 1.4,1.4);
setEffScaleKey(	256,cr, 1.4,1.4);
setEffShake( 255, ct, 8, 15);
setEffScaleKey(	258,cr, 2,2);
]]
------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------

changeAnime( 260, 0, 31);                                    -- かめはめ発射ポーズ

--P移動
setMoveKey(  259,    0,      0,  0,   0);
setMoveKey(  260,    0,   -600,  0,   0);
setMoveKey(  261,    0,   -600,  0,   0);
setMoveKey(  275,    0,   0,  0,   0);
setMoveKey(  282,  0,   100,  0,   0);
setMoveKey(  291,  0,   -200,  0,   0);
setMoveKey(  300,  0,   -180,  0,   0);
setScaleKey( 300,0,1,1);
SE0=playSe( 305, SE_06);
setScaleKey( 306,0,2,2);
setMoveKey(  307,  0, 700,  0,   0);

--kamehame_beam = entryEffectLife( 260, SP_02, 109, 0x40,  0,  300,  0,  0);   -- 伸びるかめはめ波

SE1=playSe( 260, SE_07);

spname = entryEffect( 260, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 途中からカメハメハが伸びる
setMoveKey(  299,    0,   -100,  0,   0);
setMoveKey(  300,    0,   -100,  0,   0);
setMoveKey(  308,    0,   -1100,  0,   0);

--entryFade( 365, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
entryFadeBg( 260, 0, 109, 0, 10, 10, 10, 180);       -- ベース暗め　背景
entryFadeBg( 260, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
entryFadeBg( 300, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景

entryEffectLife( 260, 920, 40, 0x80,  -1,  0,  0,  0); -- 流線

setShakeChara( 305, 0, 54, 50);

shuchusen = entryEffectLife( 260, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 260, shuchusen, 1.0, 1.0);
setEffScaleKey( 300, shuchusen, 1.0, 1.0);
setEffScaleKey( 309, shuchusen, 2.0, 2.0);

--entryFlash( (260+10), 1,  fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+80), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+92), 1, fcolor_r, fcolor_g, fcolor_b, 200);

-- 書き文字エントリー
ct = entryEffectLife( 268, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(268, ct, 32, 5);
setEffAlphaKey(268, ct, 255);
setEffAlphaKey(290, ct, 255);
setEffAlphaKey(300, ct, 0);
setEffScaleKey(268, ct, 0.0, 0.0);
setEffScaleKey(272, ct, 1.3, 1.3);
setEffScaleKey(292, ct, 1.3, 1.3);
setEffScaleKey(300, ct, 6.0, 6.0);

setEffAlphaKey(	308,spname, 1);
SE2=playSe( 300, SE_07);
entryFade( 300, 7, 10, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

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

--entryFlash( (SP_ATK01+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
setDamage(  SP_ATK01+64+diff01,  1,  0);   --ダメージ振動等

entryEffectLife( SP_ATK01+35, 908, 5, 0x00,  -1, 0,  0,  0);   -- 集中線
eff01 = entryEffect( SP_ATK01+35, SP_04, 0, 1,  0,  0,  0);   -- ヒットエフェクト
setEffScaleKey( SP_ATK01+35, eff01,1,2);--サイズ
setEffRotateKey(SP_ATK01+35, eff01,-10);--角度
--entryFlashBg( (SP_ATK01+35), 1, fcolor_r, fcolor_g, fcolor_b, 200);
changeAnime( SP_ATK01+36, 1, 106);--やられ   

entryFadeBg( SP_ATK01+35, 0, 66, 0, 0, 0, 0, 255);          -- ベース暗め　背景
pauseAll(SP_ATK01+36,7);


--2撃目--
entryEffectLife( SP_ATK01+43+diff01, 906, 45, 0x00,  -1, 0,  0,  0);   -- 集中線

eff02 = entryEffect( SP_ATK01+43+diff01, 3,  0, -1,  0,  0,  0);   -- 攻撃3
setEffScaleKey( SP_ATK01+43+diff01, eff02,0.4,3);--サイズ
setEffRotateKey(SP_ATK01+43+diff01, eff02,-70);--角度
--entryFlashBg( (SP_ATK01+43+diff01), 1, fcolor_r, fcolor_g, fcolor_b, 200);
playSe( SP_ATK01+43+diff01, SE_08);
changeAnime( SP_ATK01+43+diff01, 1, 105);--やられ 
setShake( SP_ATK01+43+diff01, 3, 14);
setMoveKey(  SP_ATK01+43+diff01, 1, 0,  0,  0);
setMoveKey(  SP_ATK01+44+diff01, 1, 50,  -50,  0);


--2撃目--
entryEffectLife( SP_ATK01+50+diff01, 906, 45, 0x00,  -1, 0,  0,  0);   -- 集中線

eff02 = entryEffect( SP_ATK01+50+diff01, SP_04,  0, -1,  0,  0,  0);   -- 攻撃3
setEffScaleKey( SP_ATK01+50+diff01, eff02,0.4,3);--サイズ
setEffRotateKey(SP_ATK01+50+diff01, eff02,70);--角度
--entryFlashBg( (SP_ATK01+50+diff01), 1, fcolor_r, fcolor_g, fcolor_b, 200);
playSe( SP_ATK01+50+diff01, SE_08);
changeAnime( SP_ATK01+50+diff01, 1, 105);--やられ 
setShake( SP_ATK01+50+diff01, 3, 14);
setMoveKey(  SP_ATK01+50+diff01, 1, 0,  0,  0);
setMoveKey(  SP_ATK01+51+diff01, 1, 50,  -50,  0);

eff03 = entryEffect( SP_ATK01+57+diff01, 30,  0, -1,  0,  80,  -30);   -- 攻撃4
setEffScaleKey( SP_ATK01+57+diff01, eff03, 0.4,3);--サイズ
setEffRotateKey(SP_ATK01+57+diff01, eff03, -80);--角度
playSe( SP_ATK01+57+diff01, SE_09);
changeAnime( SP_ATK01+57+diff01, 1, 108);--やられ 
setShake( SP_ATK01+57+diff01, 3, 14);
setMoveKey(  SP_ATK01+57+diff01, 1, 50,  -50,  -128);
setMoveKey(  SP_ATK01+58+diff01, 1, -80,  30,  -128);

eff04 = entryEffect( SP_ATK01+65+diff01, 4,  0, -1,  0,  -120,  40);   -- 攻撃5
setEffScaleKey( SP_ATK01+65+diff01, eff04, 0.4,2.5);--サイズ
setEffRotateKey(SP_ATK01+65+diff01, eff04, 45);--角度
playSe( SP_ATK01+65+diff01, SE_08);
changeAnime( SP_ATK01+65+diff01, 1, 106);--やられ 
setShake( SP_ATK01+65+diff01, 3, 14);
setMoveKey(  SP_ATK01+65+diff01, 1, -80,  30,  -128);
setMoveKey(  SP_ATK01+66+diff01, 1, 40,  -35,  -128);

eff05 = entryEffect( SP_ATK01+72+diff01, SP_04,  0, -1,  0,  50,  40);   -- 攻撃3
setEffScaleKey( SP_ATK01+72+diff01, eff05, 0.4,3);--サイズ
setEffRotateKey(SP_ATK01+72+diff01, eff05, -100);--角度
--entryFlashBg( (SP_ATK01+72+diff01), 1, fcolor_r, fcolor_g, fcolor_b, 200);
playSe( SP_ATK01+72+diff01, SE_09);
setShake( SP_ATK01+72+diff01, 3, 14);
setMoveKey(  SP_ATK01+72+diff01, 1, 40,  -35,  -128);
setMoveKey(  SP_ATK01+73+diff01, 1, -90,  -90,  -128);

eff06 = entryEffect( SP_ATK01+76+diff01, 32,  0, -1,  0,  -20,  -40);   -- 攻撃3
setEffScaleKey( SP_ATK01+76+diff01, eff06, 0.4,2);--サイズ
setEffRotateKey(SP_ATK01+76+diff01, eff06, 130);--角度
playSe( SP_ATK01+76+diff01, SE_08);
changeAnime( SP_ATK01+76+diff01, 1, 105);--やられ 
setShake( SP_ATK01+76+diff01, 3, 14);
setMoveKey(  SP_ATK01+76+diff01, 1, 90,  -90,  -128);
setMoveKey(  SP_ATK01+77+diff01, 1, -60, 80,  -128);

eff07 = entryEffect( SP_ATK01+80+diff01, SP_04,  0, -1,  0,  70,  0);   -- 攻撃3
setEffScaleKey( SP_ATK01+80+diff01, eff07, 0.4,2.5);--サイズ
setEffRotateKey(SP_ATK01+80+diff01, eff07, 88);--角度
playSe( SP_ATK01+80+diff01, SE_08);
--entryFlashBg( (SP_ATK01+80+diff01), 1, fcolor_r, fcolor_g, fcolor_b, 200);
changeAnime( SP_ATK01+80+diff01, 1, 106);--やられ 
setShake( SP_ATK01+80+diff01, 3, 14);
setMoveKey(  SP_ATK01+80+diff01, 1, -60, 80,  -128);
setMoveKey(  SP_ATK01+81+diff01, 1, 80,  60,  -128);

diff02 = 7

eff08 = entryEffect( SP_ATK01+91+diff01+diff02, 4,  0, -1,  0,  0,  0);   -- 攻撃3
setEffScaleKey( SP_ATK01+91+diff01+diff02, eff08, 2,4);--サイズ
setEffRotateKey(SP_ATK01+91+diff01+diff02, eff08, -15);--角度
playSe( SP_ATK01+91+diff01+diff02, SE_09);
playSe( SP_ATK01+91+diff01+diff02, SE_08);
setShake( SP_ATK01+91+diff01+diff02, 3, 14);
entryFadeBg( SP_ATK01+92+diff01+diff02, 0, 35, 0, 0, 0, 0, 255);          -- ベース暗め　背景
entryEffectLife( SP_ATK01+92+diff01+diff02, 908, 10, 0x00,  -1, 0,  0,  0);   -- 集中線
entryFlashBg( SP_ATK01+92+diff01+diff02, 1, fcolor_r, 0, 0, 100);
--entryFlashBg( SP_ATK01+94+diff01+diff02, 1, 255, 255, 255, 100);
setMoveKey(  SP_ATK01+92+diff01+diff02, 1, 0,  0,  -128);
pauseAll(SP_ATK01+92+diff01+diff02,5);

-- 書き文字エントリー
ct = entryEffectLife( SP_ATK01, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(SP_ATK01, ct, 81, 20);
setEffScaleKey( SP_ATK01, ct, 2.4, 2.4);
setEffRotateKey(SP_ATK01, ct, 70);
setEffAlphaKey(SP_ATK01, ct, 255);
setEffAlphaKey(SP_ATK01+70+diff01, ct, 255);
setEffAlphaKey(SP_ATK01+92+diff01, ct, 0);

entryFade( SP_ATK01+100+diff01+10, 3, 5, 4, fcolor_r, 0, 0, 255); 

entryFade( SP_ATK01+115+diff01+10, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255); 

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 345; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);
stopSe( SP_dodge - 14, SE0, 0 );
stopSe( SP_dodge - 14, SE1, 0 );
stopSe( SP_dodge - 14, SE2, 0 );

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
playSe( SP_ATK01+35, SE_09);
------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
--setDisp( SP_ATK02, 1, 1);
setMoveKey(  SP_ATK02,    1,  400,    0,  50);
setMoveKey(  SP_ATK02+1,    1,    0,   0,   128);

setScaleKey( SP_ATK02,    1,  2.5, 2.5);
setScaleKey( SP_ATK02+1,    1,  1, 1);

changeAnime( SP_ATK02+1, 1, 107);                         -- 手前ダメージ
entryEffect( SP_ATK02+9, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( SP_ATK02+9, SE_10);

setMoveKey(  SP_ATK02+8,    1,    0,   0,   128);
setMoveKey(  SP_ATK02+15,   1,  -60,  -200,  -100);
setMoveKey(  SP_ATK02+16,   1,  -60,  -200,  -100);

setShakeChara( SP_ATK02+16, 1, 5,  10);
setShakeChara( SP_ATK02+21, 1, 10, 20);
setShake(SP_ATK02+14,6,15);
setShake(SP_ATK02+20,15,10);
-- 書き文字エントリー
ct = entryEffectLife( SP_ATK02+16, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake(SP_ATK02+16, ct, 30, 10);
setEffRotateKey( SP_ATK02+16, ct, -40);
setEffScaleKey( SP_ATK02+16, ct, 4.0, 4.0);
setEffScaleKey( SP_ATK02+17, ct, 2.0, 2.0);
setEffScaleKey( SP_ATK02+18, ct, 2.6, 2.6);
setEffScaleKey( SP_ATK02+19, ct, 4.0, 4.0);
setEffScaleKey( SP_ATK02+20, ct, 2.6, 2.6);
setEffScaleKey( SP_ATK02+21, ct, 3.8, 3.8);
setEffScaleKey( SP_ATK02+111, ct, 3.8, 3.8);
setEffAlphaKey( SP_ATK02+16, ct, 255);
setEffAlphaKey( SP_ATK02+106, ct, 255);
setEffAlphaKey( SP_ATK02+116, ct, 0);

playSe( SP_ATK02+4, SE_11);
shuchusen = entryEffectLife( SP_ATK02+4, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( SP_ATK02+4, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(SP_ATK02+15);
entryFade( SP_ATK02+101, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase(SP_ATK02+111);

else
-----------------------------------------
--敵側の攻撃
-----------------------------------------
--キャラ位置
--         frame, eff, atr,tgt, tag,  x, y
changeAnime(  30, 0, 17);                       -- 溜め!

entryEffect(  30,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
entryEffect(  30,   1500,   0,    -1,  0,  0,  0);    -- eff_001
playSe( 30, SE_01);

entryFade( 62, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 100);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  30,   311, 39, 0x40,  0,  1,  0,  0); -- オーラ
setEffScaleKey( 30, aura, 1.6, 1.6);
setShakeChara( 30, 0, 19, 5);

-- 書き文字エントリー
ct = entryEffectLife( 30, 10013, 39, 0, -1, 0, 0, 200); -- ズズンッ
setEffShake(30, ct, 40, 7);
setEffAlphaKey(30, ct, 255);
setEffAlphaKey(50, ct, 255);
setEffAlphaKey(70, ct, 0);
setEffScaleKey( 30, ct, 0.1, 0.1);
setEffScaleKey( 40, ct, 2.0, 2.0);
playSe( 30, SE_02);

entryEffect(  63,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
entryEffect(  63,   1500,   0,    -1,  0,  0,  0);    -- eff_001

------------------------------------------------------
-- 気力解放！(100F)
------------------------------------------------------
setVisibleUI(69, 0);
changeAnime( 70, 0, 30);                       -- 溜め!

entryEffect(  80,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect(  80,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)

--speff = entryEffect(  80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( 70, SE_03);
playSe( 80, SE_04);

--entryFade( 165, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  70,   311, 95, 0x40,  0,  1,  0,  0); -- オーラ
setEffScaleKey( 30, aura, 1.7, 1.7);
setShakeChara( 70, 0, 49, 5);

-- 書き文字エントリー
ct = entryEffectLife( 90, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(90, ct, 40, 8);
setEffScaleKey(90, ct, 1.4, 1.4);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( 169,   0, 1.5, 1.5);
setScaleKey( 170,   0, 1.0, 1.0);

cr = entryEffect(  170,   1507,   0,  -1,  0,  0,  0);   -- eff_008
setEffReplaceTexture( cr, 1, 1);
setEffReplaceTexture( cr, 2, 0);                         -- カード差し替え
setEffReplaceTexture( cr, 5, 4);                                  -- 技名テクスチャ差し替え
playSe( 170, SE_05);
--entryFade( 255, 3, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--entryFlash( (170+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);

setEffScaleKey(	170,cr, 1,1);
setEffScaleKey(	260,cr, 1,1);
--[[
setEffShake( 240, ct, 3, 12);
setEffScaleKey(	243,cr, 1.2,1.2);
setEffScaleKey(	248,cr, 1.2,1.2);
setEffShake( 248, ct, 3, 8);
setEffScaleKey(	250,cr, 1.4,1.4);
setEffScaleKey(	256,cr, 1.4,1.4);
setEffShake( 255, ct, 8, 15);
setEffScaleKey(	258,cr, 2,2);
]]
------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------

changeAnime( 260, 0, 31);                                    -- かめはめ発射ポーズ

--P移動
setMoveKey(  259,    0,      0,  0,   0);
setMoveKey(  260,    0,   -600,  0,   0);
setMoveKey(  261,    0,   -600,  0,   0);
setMoveKey(  275,    0,   0,  0,   0);
setMoveKey(  282,  0,   100,  0,   0);
setMoveKey(  291,  0,   -200,  0,   0);
setMoveKey(  300,  0,   -180,  0,   0);
setScaleKey( 300,0,1,1);
SE0=playSe( 305, SE_06);
setScaleKey( 306,0,2,2);
setMoveKey(  307,  0, 700,  0,   0);

--kamehame_beam = entryEffectLife( 260, SP_02, 109, 0x40,  0,  300,  0,  0);   -- 伸びるかめはめ波

SE1=playSe( 260, SE_07);

spname = entryEffect( 260, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 途中からカメハメハが伸びる
setMoveKey(  299,    0,   -100,  0,   0);
setMoveKey(  300,    0,   -100,  0,   0);
setMoveKey(  308,    0,   -1100,  0,   0);

--entryFade( 365, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
entryFadeBg( 260, 0, 109, 0, 10, 10, 10, 180);       -- ベース暗め　背景
entryFadeBg( 260, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
entryFadeBg( 300, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景

entryEffectLife( 260, 920, 40, 0x80,  -1,  0,  0,  0); -- 流線

setShakeChara( 305, 0, 54, 50);

shuchusen = entryEffectLife( 260, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 260, shuchusen, 1.0, 1.0);
setEffScaleKey( 300, shuchusen, 1.0, 1.0);
setEffScaleKey( 309, shuchusen, 2.0, 2.0);

--entryFlash( (260+10), 1,  fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+80), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+92), 1, fcolor_r, fcolor_g, fcolor_b, 200);

-- 書き文字エントリー
ct = entryEffectLife( 268, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(268, ct, 32, 5);
setEffAlphaKey(268, ct, 255);
setEffAlphaKey(290, ct, 255);
setEffAlphaKey(300, ct, 0);
setEffScaleKey(268, ct, 0.0, 0.0);
setEffScaleKey(272, ct, 1.3, 1.3);
setEffScaleKey(292, ct, 1.3, 1.3);
setEffScaleKey(300, ct, 6.0, 6.0);

setEffAlphaKey(	308,spname, 1);
SE2=playSe( 300, SE_07);
entryFade( 300, 7, 10, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


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

--entryFlash( (SP_ATK01+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
setDamage(  SP_ATK01+64+diff01,  1,  0);   --ダメージ振動等

entryEffectLife( SP_ATK01+35, 908, 5, 0x00,  -1, 0,  0,  0);   -- 集中線
eff01 = entryEffect( SP_ATK01+35, SP_04, 0, 1,  0,  0,  0);   -- ヒットエフェクト
setEffScaleKey( SP_ATK01+35, eff01,1,2);--サイズ
setEffRotateKey(SP_ATK01+35, eff01,-10);--角度
--entryFlashBg( (SP_ATK01+35), 1, fcolor_r, fcolor_g, fcolor_b, 200);
changeAnime( SP_ATK01+36, 1, 106);--やられ   

entryFadeBg( SP_ATK01+35, 0, 66, 0, 0, 0, 0, 255);          -- ベース暗め　背景
pauseAll(SP_ATK01+36,7);


--2撃目--
entryEffectLife( SP_ATK01+43+diff01, 906, 45, 0x00,  -1, 0,  0,  0);   -- 集中線

eff02 = entryEffect( SP_ATK01+43+diff01, 3,  0, -1,  0,  0,  0);   -- 攻撃3
setEffScaleKey( SP_ATK01+43+diff01, eff02,0.4,3);--サイズ
setEffRotateKey(SP_ATK01+43+diff01, eff02,-70);--角度
--entryFlashBg( (SP_ATK01+43+diff01), 1, fcolor_r, fcolor_g, fcolor_b, 200);
playSe( SP_ATK01+43+diff01, SE_08);
changeAnime( SP_ATK01+43+diff01, 1, 105);--やられ 
setShake( SP_ATK01+43+diff01, 3, 14);
setMoveKey(  SP_ATK01+43+diff01, 1, 0,  0,  0);
setMoveKey(  SP_ATK01+44+diff01, 1, 50,  -50,  0);


--2撃目--
entryEffectLife( SP_ATK01+50+diff01, 906, 45, 0x00,  -1, 0,  0,  0);   -- 集中線

eff02 = entryEffect( SP_ATK01+50+diff01, SP_04,  0, -1,  0,  0,  0);   -- 攻撃3
setEffScaleKey( SP_ATK01+50+diff01, eff02,0.4,3);--サイズ
setEffRotateKey(SP_ATK01+50+diff01, eff02,70);--角度
--entryFlashBg( (SP_ATK01+50+diff01), 1, fcolor_r, fcolor_g, fcolor_b, 200);
playSe( SP_ATK01+50+diff01, SE_08);
changeAnime( SP_ATK01+50+diff01, 1, 105);--やられ 
setShake( SP_ATK01+50+diff01, 3, 14);
setMoveKey(  SP_ATK01+50+diff01, 1, 0,  0,  0);
setMoveKey(  SP_ATK01+51+diff01, 1, 50,  -50,  0);

eff03 = entryEffect( SP_ATK01+57+diff01, 30,  0, -1,  0,  80,  -30);   -- 攻撃4
setEffScaleKey( SP_ATK01+57+diff01, eff03, 0.4,3);--サイズ
setEffRotateKey(SP_ATK01+57+diff01, eff03, -80);--角度
playSe( SP_ATK01+57+diff01, SE_09);
changeAnime( SP_ATK01+57+diff01, 1, 108);--やられ 
setShake( SP_ATK01+57+diff01, 3, 14);
setMoveKey(  SP_ATK01+57+diff01, 1, 50,  -50,  -128);
setMoveKey(  SP_ATK01+58+diff01, 1, -80,  30,  -128);

eff04 = entryEffect( SP_ATK01+65+diff01, 4,  0, -1,  0,  -120,  40);   -- 攻撃5
setEffScaleKey( SP_ATK01+65+diff01, eff04, 0.4,2.5);--サイズ
setEffRotateKey(SP_ATK01+65+diff01, eff04, 45);--角度
playSe( SP_ATK01+65+diff01, SE_08);
changeAnime( SP_ATK01+65+diff01, 1, 106);--やられ 
setShake( SP_ATK01+65+diff01, 3, 14);
setMoveKey(  SP_ATK01+65+diff01, 1, -80,  30,  -128);
setMoveKey(  SP_ATK01+66+diff01, 1, 40,  -35,  -128);

eff05 = entryEffect( SP_ATK01+72+diff01, SP_04,  0, -1,  0,  50,  40);   -- 攻撃3
setEffScaleKey( SP_ATK01+72+diff01, eff05, 0.4,3);--サイズ
setEffRotateKey(SP_ATK01+72+diff01, eff05, -100);--角度
--entryFlashBg( (SP_ATK01+72+diff01), 1, fcolor_r, fcolor_g, fcolor_b, 200);
playSe( SP_ATK01+72+diff01, SE_09);
setShake( SP_ATK01+72+diff01, 3, 14);
setMoveKey(  SP_ATK01+72+diff01, 1, 40,  -35,  -128);
setMoveKey(  SP_ATK01+73+diff01, 1, -90,  -90,  -128);

eff06 = entryEffect( SP_ATK01+76+diff01, 32,  0, -1,  0,  -20,  -40);   -- 攻撃3
setEffScaleKey( SP_ATK01+76+diff01, eff06, 0.4,2);--サイズ
setEffRotateKey(SP_ATK01+76+diff01, eff06, 130);--角度
playSe( SP_ATK01+76+diff01, SE_08);
changeAnime( SP_ATK01+76+diff01, 1, 105);--やられ 
setShake( SP_ATK01+76+diff01, 3, 14);
setMoveKey(  SP_ATK01+76+diff01, 1, 90,  -90,  -128);
setMoveKey(  SP_ATK01+77+diff01, 1, -60, 80,  -128);

eff07 = entryEffect( SP_ATK01+80+diff01, SP_04,  0, -1,  0,  70,  0);   -- 攻撃3
setEffScaleKey( SP_ATK01+80+diff01, eff07, 0.4,2.5);--サイズ
setEffRotateKey(SP_ATK01+80+diff01, eff07, 88);--角度
playSe( SP_ATK01+80+diff01, SE_08);
--entryFlashBg( (SP_ATK01+80+diff01), 1, fcolor_r, fcolor_g, fcolor_b, 200);
changeAnime( SP_ATK01+80+diff01, 1, 106);--やられ 
setShake( SP_ATK01+80+diff01, 3, 14);
setMoveKey(  SP_ATK01+80+diff01, 1, -60, 80,  -128);
setMoveKey(  SP_ATK01+81+diff01, 1, 80,  60,  -128);

diff02 = 7

eff08 = entryEffect( SP_ATK01+91+diff01+diff02, 4,  0, -1,  0,  0,  0);   -- 攻撃3
setEffScaleKey( SP_ATK01+91+diff01+diff02, eff08, 2,4);--サイズ
setEffRotateKey(SP_ATK01+91+diff01+diff02, eff08, -15);--角度
playSe( SP_ATK01+91+diff01+diff02, SE_09);
playSe( SP_ATK01+91+diff01+diff02, SE_08);
setShake( SP_ATK01+91+diff01+diff02, 3, 14);
entryFadeBg( SP_ATK01+92+diff01+diff02, 0, 35, 0, 0, 0, 0, 255);          -- ベース暗め　背景
entryEffectLife( SP_ATK01+92+diff01+diff02, 908, 10, 0x00,  -1, 0,  0,  0);   -- 集中線
entryFlashBg( SP_ATK01+92+diff01+diff02, 1, fcolor_r, 0, 0, 100);
--entryFlashBg( SP_ATK01+94+diff01+diff02, 1, 255, 255, 255, 100);
setMoveKey(  SP_ATK01+92+diff01+diff02, 1, 0,  0,  -128);
pauseAll(SP_ATK01+92+diff01+diff02,5);

-- 書き文字エントリー
ct = entryEffectLife( SP_ATK01, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(SP_ATK01, ct, 81, 20);
setEffScaleKey( SP_ATK01, ct, 2.4, 2.4);
setEffRotateKey(SP_ATK01, ct, 20);
setEffAlphaKey(SP_ATK01, ct, 255);
setEffAlphaKey(SP_ATK01+70+diff01, ct, 255);
setEffAlphaKey(SP_ATK01+92+diff01, ct, 0);

entryFade( SP_ATK01+100+diff01+10, 3, 5, 4, fcolor_r, 0, 0, 255); 

entryFade( SP_ATK01+115+diff01+10, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255); 

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 345; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);
stopSe( SP_dodge - 14, SE0, 0 );
stopSe( SP_dodge - 14, SE1, 0 );
stopSe( SP_dodge - 14, SE2, 0 );

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
playSe( SP_ATK01+35, SE_09);
------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
--setDisp( SP_ATK02, 1, 1);
setMoveKey(  SP_ATK02,    1,  400,    0,  50);
setMoveKey(  SP_ATK02+1,    1,    0,   0,   128);

setScaleKey( SP_ATK02,    1,  2.5, 2.5);
setScaleKey( SP_ATK02+1,    1,  1, 1);

changeAnime( SP_ATK02+1, 1, 107);                         -- 手前ダメージ
entryEffect( SP_ATK02+9, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( SP_ATK02+9, SE_10);

setMoveKey(  SP_ATK02+8,    1,    0,   0,   128);
setMoveKey(  SP_ATK02+15,   1,  -60,  -200,  -100);
setMoveKey(  SP_ATK02+16,   1,  -60,  -200,  -100);

setShakeChara( SP_ATK02+16, 1, 5,  10);
setShakeChara( SP_ATK02+21, 1, 10, 20);
setShake(SP_ATK02+14,6,15);
setShake(SP_ATK02+20,15,10);
-- 書き文字エントリー
ct = entryEffectLife( SP_ATK02+16, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake(SP_ATK02+16, ct, 30, 10);
setEffRotateKey( SP_ATK02+16, ct, -40);
setEffScaleKey( SP_ATK02+16, ct, 4.0, 4.0);
setEffScaleKey( SP_ATK02+17, ct, 2.0, 2.0);
setEffScaleKey( SP_ATK02+18, ct, 2.6, 2.6);
setEffScaleKey( SP_ATK02+19, ct, 4.0, 4.0);
setEffScaleKey( SP_ATK02+20, ct, 2.6, 2.6);
setEffScaleKey( SP_ATK02+21, ct, 3.8, 3.8);
setEffScaleKey( SP_ATK02+111, ct, 3.8, 3.8);
setEffAlphaKey( SP_ATK02+16, ct, 255);
setEffAlphaKey( SP_ATK02+106, ct, 255);
setEffAlphaKey( SP_ATK02+116, ct, 0);

playSe( SP_ATK02+4, SE_11);
shuchusen = entryEffectLife( SP_ATK02+4, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( SP_ATK02+4, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(SP_ATK02+15);
entryFade( SP_ATK02+101, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase(SP_end+15);


end

print ("[lua]sp0001 end");
