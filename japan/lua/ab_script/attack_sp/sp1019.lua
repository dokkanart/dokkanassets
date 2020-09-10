print ("[lua]sp1001");

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SP_01 = 150026;
SP_03 = 150027;
SP_04 = 150028;
SP_07 = 150029;


SE_01 = 1035; --気を貯める
SE_02 = 1036; --気が広がる
SE_03 = 1036; --かめはめ
SE_04 = 1018; --カットイン
SE_05 = 1035; --カットイン攻撃
SE_06 = 43; --発射
SE_07 = 1022; --のびる発射
SE_08 = 1003; --huru
SE_09 = 1032; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音
SE_12 = 1004;

------------------
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
-- 気溜め(40F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

spep_1=0;
--         frame, eff, atr,tgt, tag,  x, y
changeAnime(  spep_1+30, 0, 17);                       -- 溜め!
entryEffect(  spep_1+30,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
entryEffect(  spep_1+30,   1500,   0,    -1,  0,  0,  0);    -- eff_001
playSe( spep_1+30, SE_01);

entryFade( spep_1+62, 4, 6, 8, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade

-- ** エフェクト等 ** --
aura1 = entryEffectLife(  spep_1+30,   311, 39, 0x40,  0,  1,  0,  0); -- オーラ
setEffScaleKey( spep_1+30, aura1, 1.5, 1.5);
setShakeChara( spep_1+30, 0, 19, 5);

-- 書き文字エントリー
ct1 = entryEffectLife( spep_1+30, 10013, 39, 0, -1, 0, 0, 200); -- ズズンッ
setEffShake(spep_1+30, ct1, 40, 7);
setEffAlphaKey(spep_1+30, ct1, 255);
setEffAlphaKey(spep_1+50, ct1, 255);
setEffAlphaKey(spep_1+70, ct1, 0);
setEffScaleKey( spep_1+30, ct1, 0.1, 0.1);
setEffScaleKey( spep_1+40, ct1, 2.0, 2.0);
playSe( spep_1+30, SE_02);

------------------------------------------------------
-- 気力解放！(100F)
------------------------------------------------------
spep_2=spep_1+70;

changeAnime(spep_2, 0, 30);                       -- 溜め!

entryEffect(spep_2,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect(spep_2,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
speff = entryEffect(spep_2+10,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(spep_2+10,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe(spep_2+0, SE_03);
playSe(spep_2+10, SE_04);

entryFade( 162, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura2 = entryEffectLife(spep_2+0,   311, 95, 0x40,  0,  1,  0,  0); -- オーラ
setEffScaleKey( 30, aura2, 1.5, 1.5);
setShakeChara(spep_2+0, 0, 49, 5);

-- 書き文字エントリー
ct2 = entryEffectLife(spep_2+20, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(spep_2+20, ct2, 40, 8);
setEffScaleKey(spep_2+20, ct2, 1.4, 1.4);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
spep_3=spep_2+100;

setScaleKey(spep_3-1,   0, 1.5, 1.5);
setScaleKey(spep_3,   0, 1.0, 1.0);

cr3 = entryEffect(spep_3,   1507,   0,  -1,  0,  0,  0);   -- eff_008
setEffReplaceTexture( cr3, 1, 1);
setEffReplaceTexture( cr3, 2, 0);                         -- カード差し替え
setEffReplaceTexture( cr3, 5, 4);                                  -- 技名テクスチャ差し替え
playSe(spep_3, SE_05);
entryFade( 254, 4, 12, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--entryFlash( (170+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);

setEffScaleKey(	spep_3,cr3, 1,1);
setEffScaleKey(spep_3+90,cr3, 1,1);
--[[
--setEffShake(spep_3+70, ct2, 3, 12);
setEffScaleKey(spep_3+73,cr3, 1.2,1.2);
setEffScaleKey(spep_3+78,cr3, 1.2,1.2);
--setEffShake(spep_3+78, ct2, 3, 8);
setEffScaleKey(spep_3+80,cr3, 1.4,1.4);
setEffScaleKey(spep_3+86,cr3, 1.4,1.4);
--setEffShake(spep_3+85, ct2, 8, 15);
setEffScaleKey(spep_3+88,cr3, 2,2);
]]
------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
spep_4=spep_3+90;
changeAnime( spep_4, 0, 31);                                    -- かめはめ発射ポーズ

--P移動
setMoveKey( spep_4-1,    0,      0,  0,   0);
setMoveKey( spep_4,    0,   -600,  0,   0);
setMoveKey( spep_4+1,    0,   -600,  0,   0);
setMoveKey(  spep_4+15,    0,   0,  0,   0);
setMoveKey(  spep_4+22,  0,   100,  0,   0);
setMoveKey(  spep_4+31,  0,   -200,  0,   0);
setMoveKey(  spep_4+30,  0,   -180,  0,   0);
setScaleKey( spep_4+30,0,1,1);
playSe( spep_4+45, SE_06);
setScaleKey( spep_4+46,0,3,3);
setMoveKey(  spep_4+47,  0, 700,  0,   0);

kamehame_beam = entryEffectLife( spep_4+0, SP_03, 109, 0x40+0x80,  0,  0,  0,  0);   -- 伸びるかめはめ波
setEffScaleKey( spep_4+0, kamehame_beam, 2.0, 2.0);


playSe( spep_4+0, SE_07);

spname = entryEffect( spep_4+0, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 途中からカメハメハが伸びる
setMoveKey(  spep_4+39,    0,   -100,  0,   0);
setMoveKey(  spep_4+40,    0,   -100,  0,   0);
setMoveKey(  spep_4+48,    0,   -1100,  0,   0);

--entryFade( 365, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
entryFadeBg( spep_4+0, 0, 109, 0, 10, 10, 10, 180);       -- ベース暗め　背景
entryFadeBg( spep_4+0, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
entryFadeBg( spep_4+40, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景

entryEffectLife( spep_4+0, 920, 40, 0x80,  -1,  0,  0,  0); -- 流線

setShakeChara( spep_4+45, 0, 54, 50);

shuchusen4 = entryEffectLife( spep_4+0, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_4+0, shuchusen4, 1.0, 1.0);
setEffScaleKey( spep_4+40, shuchusen4, 1.0, 1.0);
setEffScaleKey( spep_4+49, shuchusen4, 2.0, 2.0);

--entryFlash( (260+10), 1,  fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+80), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+92), 1, fcolor_r, fcolor_g, fcolor_b, 200);

-- 書き文字エントリー
ct4 = entryEffectLife( spep_4+8, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(spep_4+8, ct4, 32, 5);
setEffAlphaKey(spep_4+8, ct4, 255);
setEffAlphaKey(spep_4+30, ct4, 255);
setEffAlphaKey(spep_4+40, ct4, 0);
setEffScaleKey(spep_4+8, ct4, 0.0, 0.0);
setEffScaleKey(spep_4+12, ct4, 1.3, 1.3);
setEffScaleKey(spep_4+32, ct4, 1.3, 1.3);
setEffScaleKey(spep_4+40, ct4, 6.0, 6.0);

setEffAlphaKey(spep_4+48,spname, 1);
playSe(spep_4+40, SE_07);
entryFade(spep_4+40, 7, 10, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(spep_4+50,    0,   -3000,  0,   0);

------------------------------------------------------
-- 攻撃(100F)
------------------------------------------------------
spep_5=spep_4+60;

setDisp( spep_5, 0, 0);
setDisp( spep_5, 1, 1);
changeAnime( spep_5, 1, 104);                     -- ガード
setMoveKey(  spep_5,    1,  700,  0,   50);
setMoveKey(  spep_5+30,  1,  0,  0,   -128);

--playSe( SP_ATK01+30, SE_07);
diff01 = 15;

setRotateKey( spep_5+35, 1, 0);
setRotateKey( spep_5+36+diff01, 1, 15);
setRotateKey( spep_5+39+diff01, 1, 15);
setRotateKey( spep_5+40+diff01, 1, -10);
setRotateKey( spep_5+49+diff01, 1, -10);
setRotateKey( spep_5+48+diff01, 1, 5);
setRotateKey( spep_5+60+diff01, 1, 0);

-- 敵吹っ飛ぶモーション

setMoveKey(  spep_5+110+diff01+10, 1, 0,  0,  -128);
changeAnime( spep_5+92+diff01+7, 1, 108);
setScaleKey(spep_5+93+diff01+7, 1, 1,1);
setScaleKey(spep_5+94+diff01+7, 1, 2,2);
setScaleKey(spep_5+95+diff01+7, 1, 1,1);
entryEffectLife( spep_5+110+diff01+10, 921, 15, 0x80,  -1,  0,  0,  0); -- 流線斜め
setMoveKey(  spep_5+118+diff01+10, 1, 400,    0,  50);
setDamage(  spep_5+92+17,  1,  0);   --ダメージ振動等


--攻撃演出--

-- ** エフェクト等 ** --
setShakeChara( spep_5, 1, 99, 20);
entryFadeBg( spep_5, 0, 36, 0, 10, 10, 10, 150);          -- ベース暗め　背景
entryEffectLife( spep_5, 921, 36, 0x80,  -1,  0,  0,  0); -- 流線斜め

--entryFlash( (SP_ATK01+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
setDamage(  spep_5+64+diff01,  1,  0);   --ダメージ振動等

entryEffectLife( spep_5+35, 908, 5, 0x00,  -1, 0,  0,  0);   -- 集中線
eff01 = entryEffect( spep_5+35, SP_04, 0, 1,  0,  0,  0);   -- ヒットエフェクト
setEffScaleKey( spep_5+35, eff01,2,2);--サイズ
setEffRotateKey(spep_5+35, eff01,-85);--角度
--entryFlashBg( (SP_ATK01+35), 1, fcolor_r, fcolor_g, fcolor_b, 200);
changeAnime( spep_5+36, 1, 106);--やられ   
playSe( spep_5+35, SE_09);
entryFadeBg( spep_5+35, 0, 66, 0, 0, 0, 0, 255);          -- ベース暗め　背景
pauseAll(spep_5+36,15);

--2撃目--
entryEffectLife( spep_5+50+diff01, 906, 45, 0x00,  -1, 0,  0,  0);   -- 集中線

eff02 = entryEffect( spep_5+50+diff01, SP_04,  0, -1,  0,  0,  0);   -- 攻撃3
setEffScaleKey(spep_5+50+diff01, eff02,0.4,3);--サイズ
setEffRotateKey(spep_5+50+diff01, eff02,60);--角度
--entryFlashBg( (SP_ATK01+50+diff01), 1, fcolor_r, fcolor_g, fcolor_b, 200);
playSe( spep_5+50+diff01, SE_09);
changeAnime( spep_5+50+diff01, 1, 105);--やられ 
setShake( spep_5+50+diff01, 3, 14);
setMoveKey(  spep_5+50+diff01, 1, 0,  0,  0);
setMoveKey(  spep_5+51+diff01, 1, 50,  -50,  0);

eff03 = entryEffect( spep_5+57+diff01, SP_04,  0, -1,  0,  50,  0);   -- 攻撃4
setEffScaleKey( spep_5+57+diff01, eff03, 0.4,3);--サイズ
setEffRotateKey(spep_5+57+diff01, eff03, -110);--角度
playSe( spep_5+57+diff01, SE_09);
changeAnime( spep_5+57+diff01, 1, 108);--やられ 
setShake( spep_5+57+diff01, 3, 14);
setMoveKey(  spep_5+57+diff01, 1, 50,  -50,  -128);
setMoveKey(  spep_5+58+diff01, 1, -80,  30,  -128);

eff04 = entryEffect( spep_5+65+diff01, SP_04,  0, -1,  0,  -80,  0);   -- 攻撃5
setEffScaleKey( spep_5+65+diff01, eff04, 0.4,2.5);--サイズ
setEffRotateKey(spep_5+65+diff01, eff04, 88);--角度
playSe( spep_5+65+diff01, SE_09);
changeAnime( spep_5+65+diff01, 1, 106);--やられ 
setShake( spep_5+65+diff01, 3, 14);
setMoveKey(  spep_5+65+diff01, 1, -80,  30,  -128);
setMoveKey(  spep_5+66+diff01, 1, 40,  -35,  -128);

eff05 = entryEffect( spep_5+72+diff01, SP_04,  0, -1,  0,  20,  0);   -- 攻撃3
setEffScaleKey(spep_5+72+diff01, eff05, 0.4,3);--サイズ
setEffRotateKey(spep_5+72+diff01, eff05, -75);--角度
--entryFlashBg( (SP_ATK01+72+diff01), 1, fcolor_r, fcolor_g, fcolor_b, 200);
playSe( spep_5+72+diff01, SE_09);
setShake( spep_5+72+diff01, 3, 14);
setMoveKey(  spep_5+72+diff01, 1, 40,  -35,  -128);
setMoveKey(  spep_5+73+diff01, 1, -90,  -90,  -128);

eff06 = entryEffect( spep_5+76+diff01, SP_04,  0, -1,  0,  -60,  0);   -- 攻撃3
setEffScaleKey( spep_5+76+diff01, eff06, 0.4,2);--サイズ
setEffRotateKey(spep_5+76+diff01, eff06, 145);--角度
playSe( spep_5+76+diff01, SE_09);
changeAnime( spep_5+76+diff01, 1, 105);--やられ 
setShake( spep_5+76+diff01, 3, 14);
setMoveKey(  spep_5+76+diff01, 1, 90,  -90,  -128);
setMoveKey(  spep_5+77+diff01, 1, -60, 80,  -128);

eff07 = entryEffect( spep_5+80+diff01, SP_04,  0, -1,  0,  70,  0);   -- 攻撃3
setEffScaleKey( spep_5+80+diff01, eff07, 0.4,2.5);--サイズ
setEffRotateKey(spep_5+80+diff01, eff07, -130);--角度
playSe( spep_5+80+diff01, SE_09);
--entryFlashBg( (SP_ATK01+80+diff01), 1, fcolor_r, fcolor_g, fcolor_b, 200);
changeAnime( spep_5+80+diff01, 1, 106);--やられ 
setShake( spep_5+80+diff01, 3, 14);
setMoveKey(  spep_5+80+diff01, 1, -60, 80,  -128);
setMoveKey(  spep_5+81+diff01, 1, 80,  60,  -128);

diff02 = 7

eff08 = entryEffect( spep_5+91+diff01+diff02, SP_07,  0, -1,  0,  0,  0);   -- 攻撃3
--setEffScaleKey( SP_ATK01+91+diff01+diff02, eff08, 2,4);--サイズ
--setEffRotateKey(SP_ATK01+91+diff01+diff02, eff08, -105);--角度
playSe( spep_5+91+diff01+diff02, SE_09);
setShake( spep_5+91+diff01+diff02, 3, 14);
entryFadeBg( spep_5+92+diff01+diff02, 0, 35, 0, 0, 0, 0, 255);          -- ベース暗め　背景
entryEffectLife( spep_5+92+diff01+diff02, 908, 10, 0x00,  -1, 0,  0,  0);   -- 集中線
entryFlashBg( spep_5+92+diff01+diff02, 1, fcolor_r, 0, 0, 100);
--entryFlashBg( SP_ATK01+94+diff01+diff02, 1, 255, 255, 255, 100);
setMoveKey(  spep_5+92+diff01+diff02, 1, 0,  0,  -128);
pauseAll(spep_5+92+diff01+diff02,10);

-- 書き文字エントリー
ct5 = entryEffectLife( spep_5, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(spep_5, ct5, 81, 20);
setEffScaleKey( spep_5, ct5, 2.4, 2.4);
setEffRotateKey(spep_5, ct5, 70);
setEffAlphaKey(spep_5, ct5, 255);
setEffAlphaKey(spep_5+70+diff01, ct5, 255);
setEffAlphaKey(spep_5+92+diff01, ct5, 0);

entryFade( spep_5+100+diff01+10, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255); 

entryFade( spep_5+115+diff01+10, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255); 

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 342; --エンドフェイズのフレーム数を置き換える

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
--setDisp( SP_ATK02, 1, 1);

spep_6= spep_5+142;
SP_end  = spep_6+116;

setDisp( spep_6-1, 1, 1);
setMoveKey(  spep_6-1,    1,  100,  0,   0);
setScaleKey( spep_6-1,    1,  1.0, 1.0);
setMoveKey(  spep_6,    1,    0,   0,   128);
setScaleKey( spep_6,    1,  0.1, 0.1);

changeAnime( spep_6, 1, 107);                         -- 手前ダメージ
entryEffect( spep_6+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_6+8, SE_10);

setMoveKey(  spep_6+8,   1,    0,   0,   128);
setMoveKey(  spep_6+15,   1,  -60,  -200,  -100);
setMoveKey(  spep_6+16,   1,  -60,  -200,  -100);
setDamage( spep_6+16, 1, 0);  -- ダメージ振動等
setShake(spep_6+7,6,15);
setShake(spep_6+13,15,10);

setRotateKey( spep_6,  1,  30 );
setRotateKey( spep_6+2,  1,  80 );
setRotateKey( spep_6+4,  1, 120 );
setRotateKey( spep_6+6,  1, 160 );
setRotateKey( spep_6+8,  1, 200 );
setRotateKey( spep_6+10,  1, 260 );
setRotateKey( spep_6+12,  1, 320 );
setRotateKey( spep_6+14,  1,   0 );

setShakeChara( spep_6+15, 1, 5,  10);
setShakeChara( spep_6+20, 1, 10, 20);

-- 書き文字エントリー
ct6 = entryEffectLife( spep_6+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep_6+15, ct6, 30, 10);
setEffRotateKey( spep_6+15, ct6, -40);
setEffScaleKey( spep_6+15, ct6, 4.0, 4.0);
setEffScaleKey( spep_6+16, ct6, 2.0, 2.0);
setEffScaleKey( spep_6+17, ct6, 2.6, 2.6);
setEffScaleKey( spep_6+18, ct6, 4.0, 4.0);
setEffScaleKey( spep_6+19, ct6, 2.6, 2.6);
setEffScaleKey( spep_6+20, ct6, 3.8, 3.8);
setEffScaleKey( spep_6+110, ct6, 3.8, 3.8);
setEffAlphaKey( spep_6+15, ct6, 255);
setEffAlphaKey( spep_6+105, ct6, 255);
setEffAlphaKey( spep_6+115, ct6, 0);

playSe( spep_6+3, SE_11);
shuchusen = entryEffectLife( spep_6+3, 906, 120, 0x100,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_6+3, 1600,  0x100,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(spep_6+16);

entryFade( spep_6+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase( spep_6+110);
else
-----------------------------------------
--敵側の攻撃
-----------------------------------------
------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------

spep_1=0;
--         frame, eff, atr,tgt, tag,  x, y
changeAnime(  spep_1+30, 0, 17);                       -- 溜め!
entryEffect(  spep_1+30,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
entryEffect(  spep_1+30,   1500,   0,    -1,  0,  0,  0);    -- eff_001
playSe( spep_1+30, SE_01);

entryFade( spep_1+62, 4, 6, 8, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade

-- ** エフェクト等 ** --
aura1 = entryEffectLife(  spep_1+30,   311, 39, 0x40,  0,  1,  0,  0); -- オーラ
setEffScaleKey( spep_1+30, aura1, 1.5, 1.5);
setShakeChara( spep_1+30, 0, 19, 5);

-- 書き文字エントリー
ct1 = entryEffectLife( spep_1+30, 10013, 39, 0, -1, 0, 0, 200); -- ズズンッ
setEffShake(spep_1+30, ct1, 40, 7);
setEffAlphaKey(spep_1+30, ct1, 255);
setEffAlphaKey(spep_1+50, ct1, 255);
setEffAlphaKey(spep_1+70, ct1, 0);
setEffScaleKey( spep_1+30, ct1, 0.1, 0.1);
setEffScaleKey( spep_1+40, ct1, 2.0, 2.0);
playSe( spep_1+30, SE_02);

------------------------------------------------------
-- 気力解放！(100F)
------------------------------------------------------
spep_2=spep_1+70;
--setVisibleUI(spep_2-1, 0);
changeAnime(spep_2, 0, 30);                       -- 溜め!

entryEffect(spep_2,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect(spep_2,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)

--[[
speff = entryEffect(spep_2+10,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(spep_2+10,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
]]--

playSe(spep_2+0, SE_03);
playSe(spep_2+10, SE_04);

entryFade( 162, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura2 = entryEffectLife(spep_2+0,   311, 95, 0x40,  0,  1,  0,  0); -- オーラ
setEffScaleKey( 30, aura2, 1.5, 1.5);
setShakeChara(spep_2+0, 0, 49, 5);

-- 書き文字エントリー
ct2 = entryEffectLife(spep_2+20, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(spep_2+20, ct2, 40, 8);
setEffScaleKey(spep_2+20, ct2, 1.4, 1.4);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
spep_3=spep_2+100;

setScaleKey(spep_3-1,   0, 1.5, 1.5);
setScaleKey(spep_3,   0, 1.0, 1.0);

cr3 = entryEffect(spep_3,   1507,   0,  -1,  0,  0,  0);   -- eff_008
setEffReplaceTexture( cr3, 1, 1);
setEffReplaceTexture( cr3, 2, 0);                         -- カード差し替え
setEffReplaceTexture( cr3, 5, 4);                                  -- 技名テクスチャ差し替え
playSe(spep_3, SE_05);
entryFade( 254, 4, 12, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--entryFlash( (170+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--[[
setEffScaleKey(	spep_3,cr3, 1,1);
setEffScaleKey(spep_3+70,cr3, 1,1);
--setEffShake(spep_3+70, ct2, 3, 12);
setEffScaleKey(spep_3+73,cr3, 1.2,1.2);
setEffScaleKey(spep_3+78,cr3, 1.2,1.2);
--setEffShake(spep_3+78, ct2, 3, 8);
setEffScaleKey(spep_3+80,cr3, 1.4,1.4);
setEffScaleKey(spep_3+86,cr3, 1.4,1.4);
--setEffShake(spep_3+85, ct2, 8, 15);
setEffScaleKey(spep_3+88,cr3, 2,2);
]]--
------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
spep_4=spep_3+90;
changeAnime( spep_4, 0, 31);                                    -- かめはめ発射ポーズ

--P移動
setMoveKey( spep_4-1,    0,      0,  0,   0);
setMoveKey( spep_4,    0,   -600,  0,   0);
setMoveKey( spep_4+1,    0,   -600,  0,   0);
setMoveKey(  spep_4+15,    0,   0,  0,   0);
setMoveKey(  spep_4+22,  0,   100,  0,   0);
setMoveKey(  spep_4+31,  0,   -200,  0,   0);
setMoveKey(  spep_4+30,  0,   -180,  0,   0);
setScaleKey( spep_4+30,0,1,1);
playSe( spep_4+45, SE_06);
setScaleKey( spep_4+46,0,3,3);
setMoveKey(  spep_4+47,  0, 700,  0,   0);

kamehame_beam = entryEffectLife( spep_4+0, SP_03, 109, 0x40+0x80,  0,  0,  0,  0);   -- 伸びるかめはめ波
setEffScaleKey( spep_4+0, kamehame_beam, 2.0, 2.0);


playSe( spep_4+0, SE_07);

spname = entryEffect( spep_4+0, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 途中からカメハメハが伸びる
setMoveKey(  spep_4+39,    0,   -100,  0,   0);
setMoveKey(  spep_4+40,    0,   -100,  0,   0);
setMoveKey(  spep_4+48,    0,   -1100,  0,   0);

--entryFade( 365, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
entryFadeBg( spep_4+0, 0, 109, 0, 10, 10, 10, 180);       -- ベース暗め　背景
entryFadeBg( spep_4+0, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
entryFadeBg( spep_4+40, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景

entryEffectLife( spep_4+0, 920, 40, 0x80,  -1,  0,  0,  0); -- 流線

setShakeChara( spep_4+45, 0, 54, 50);

shuchusen4 = entryEffectLife( spep_4+0, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_4+0, shuchusen4, 1.0, 1.0);
setEffScaleKey( spep_4+40, shuchusen4, 1.0, 1.0);
setEffScaleKey( spep_4+49, shuchusen4, 2.0, 2.0);

--entryFlash( (260+10), 1,  fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+80), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+92), 1, fcolor_r, fcolor_g, fcolor_b, 200);

-- 書き文字エントリー
ct4 = entryEffectLife( spep_4+8, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(spep_4+8, ct4, 32, 5);
setEffAlphaKey(spep_4+8, ct4, 255);
setEffAlphaKey(spep_4+30, ct4, 255);
setEffAlphaKey(spep_4+40, ct4, 0);
setEffScaleKey(spep_4+8, ct4, 0.0, 0.0);
setEffScaleKey(spep_4+12, ct4, 1.3, 1.3);
setEffScaleKey(spep_4+32, ct4, 1.3, 1.3);
setEffScaleKey(spep_4+40, ct4, 6.0, 6.0);

setEffAlphaKey(spep_4+48,spname, 1);
playSe(spep_4+40, SE_07);
entryFade(spep_4+40, 7, 10, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(spep_4+50,    0,   -3000,  0,   0);

------------------------------------------------------
-- 攻撃(100F)
------------------------------------------------------
spep_5=spep_4+60;

setDisp( spep_5, 0, 0);
setDisp( spep_5, 1, 1);
changeAnime( spep_5, 1, 104);                     -- ガード
setMoveKey(  spep_5,    1,  700,  0,   50);
setMoveKey(  spep_5+30,  1,  0,  0,   -128);

--playSe( SP_ATK01+30, SE_07);
diff01 = 15;

setRotateKey( spep_5+35, 1, 0);
setRotateKey( spep_5+36+diff01, 1, 15);
setRotateKey( spep_5+39+diff01, 1, 15);
setRotateKey( spep_5+40+diff01, 1, -10);
setRotateKey( spep_5+49+diff01, 1, -10);
setRotateKey( spep_5+48+diff01, 1, 5);
setRotateKey( spep_5+60+diff01, 1, 0);

-- 敵吹っ飛ぶモーション

setMoveKey(  spep_5+110+diff01+10, 1, 0,  0,  -128);
changeAnime( spep_5+92+diff01+7, 1, 108);
setScaleKey(spep_5+93+diff01+7, 1, 1,1);
setScaleKey(spep_5+94+diff01+7, 1, 2,2);
setScaleKey(spep_5+95+diff01+7, 1, 1,1);
entryEffectLife( spep_5+110+diff01+10, 921, 15, 0x80,  -1,  0,  0,  0); -- 流線斜め
setMoveKey(  spep_5+118+diff01+10, 1, 400,    0,  50);
setDamage(  spep_5+92+17,  1,  0);   --ダメージ振動等


--攻撃演出--

-- ** エフェクト等 ** --
setShakeChara( spep_5, 1, 99, 20);
entryFadeBg( spep_5, 0, 36, 0, 10, 10, 10, 150);          -- ベース暗め　背景
entryEffectLife( spep_5, 921, 36, 0x80,  -1,  0,  0,  0); -- 流線斜め

--entryFlash( (SP_ATK01+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
setDamage(  spep_5+64+diff01,  1,  0);   --ダメージ振動等

entryEffectLife( spep_5+35, 908, 5, 0x00,  -1, 0,  0,  0);   -- 集中線
eff01 = entryEffect( spep_5+35, SP_04, 0, 1,  0,  0,  0);   -- ヒットエフェクト
setEffScaleKey( spep_5+35, eff01,2,2);--サイズ
setEffRotateKey(spep_5+35, eff01,-85);--角度
--entryFlashBg( (SP_ATK01+35), 1, fcolor_r, fcolor_g, fcolor_b, 200);
changeAnime( spep_5+36, 1, 106);--やられ   
playSe( spep_5+35, SE_09);
entryFadeBg( spep_5+35, 0, 66, 0, 0, 0, 0, 255);          -- ベース暗め　背景
pauseAll(spep_5+36,15);

--2撃目--
entryEffectLife( spep_5+50+diff01, 906, 45, 0x00,  -1, 0,  0,  0);   -- 集中線

eff02 = entryEffect( spep_5+50+diff01, SP_04,  0, -1,  0,  0,  0);   -- 攻撃3
setEffScaleKey(spep_5+50+diff01, eff02,0.4,3);--サイズ
setEffRotateKey(spep_5+50+diff01, eff02,60);--角度
--entryFlashBg( (SP_ATK01+50+diff01), 1, fcolor_r, fcolor_g, fcolor_b, 200);
playSe( spep_5+50+diff01, SE_09);
changeAnime( spep_5+50+diff01, 1, 105);--やられ 
setShake( spep_5+50+diff01, 3, 14);
setMoveKey(  spep_5+50+diff01, 1, 0,  0,  0);
setMoveKey(  spep_5+51+diff01, 1, 50,  -50,  0);

eff03 = entryEffect( spep_5+57+diff01, SP_04,  0, -1,  0,  50,  0);   -- 攻撃4
setEffScaleKey( spep_5+57+diff01, eff03, 0.4,3);--サイズ
setEffRotateKey(spep_5+57+diff01, eff03, -110);--角度
playSe( spep_5+57+diff01, SE_09);
changeAnime( spep_5+57+diff01, 1, 108);--やられ 
setShake( spep_5+57+diff01, 3, 14);
setMoveKey(  spep_5+57+diff01, 1, 50,  -50,  -128);
setMoveKey(  spep_5+58+diff01, 1, -80,  30,  -128);

eff04 = entryEffect( spep_5+65+diff01, SP_04,  0, -1,  0,  -80,  0);   -- 攻撃5
setEffScaleKey( spep_5+65+diff01, eff04, 0.4,2.5);--サイズ
setEffRotateKey(spep_5+65+diff01, eff04, 88);--角度
playSe( spep_5+65+diff01, SE_09);
changeAnime( spep_5+65+diff01, 1, 106);--やられ 
setShake( spep_5+65+diff01, 3, 14);
setMoveKey(  spep_5+65+diff01, 1, -80,  30,  -128);
setMoveKey(  spep_5+66+diff01, 1, 40,  -35,  -128);

eff05 = entryEffect( spep_5+72+diff01, SP_04,  0, -1,  0,  20,  0);   -- 攻撃3
setEffScaleKey(spep_5+72+diff01, eff05, 0.4,3);--サイズ
setEffRotateKey(spep_5+72+diff01, eff05, -75);--角度
--entryFlashBg( (SP_ATK01+72+diff01), 1, fcolor_r, fcolor_g, fcolor_b, 200);
playSe( spep_5+72+diff01, SE_09);
setShake( spep_5+72+diff01, 3, 14);
setMoveKey(  spep_5+72+diff01, 1, 40,  -35,  -128);
setMoveKey(  spep_5+73+diff01, 1, -90,  -90,  -128);

eff06 = entryEffect( spep_5+76+diff01, SP_04,  0, -1,  0,  -60,  0);   -- 攻撃3
setEffScaleKey( spep_5+76+diff01, eff06, 0.4,2);--サイズ
setEffRotateKey(spep_5+76+diff01, eff06, 145);--角度
playSe( spep_5+76+diff01, SE_09);
changeAnime( spep_5+76+diff01, 1, 105);--やられ 
setShake( spep_5+76+diff01, 3, 14);
setMoveKey(  spep_5+76+diff01, 1, 90,  -90,  -128);
setMoveKey(  spep_5+77+diff01, 1, -60, 80,  -128);

eff07 = entryEffect( spep_5+80+diff01, SP_04,  0, -1,  0,  70,  0);   -- 攻撃3
setEffScaleKey( spep_5+80+diff01, eff07, 0.4,2.5);--サイズ
setEffRotateKey(spep_5+80+diff01, eff07, -130);--角度
playSe( spep_5+80+diff01, SE_09);
--entryFlashBg( (SP_ATK01+80+diff01), 1, fcolor_r, fcolor_g, fcolor_b, 200);
changeAnime( spep_5+80+diff01, 1, 106);--やられ 
setShake( spep_5+80+diff01, 3, 14);
setMoveKey(  spep_5+80+diff01, 1, -60, 80,  -128);
setMoveKey(  spep_5+81+diff01, 1, 80,  60,  -128);

diff02 = 7

eff08 = entryEffect( spep_5+91+diff01+diff02, SP_07,  0, -1,  0,  0,  0);   -- 攻撃3
--setEffScaleKey( SP_ATK01+91+diff01+diff02, eff08, 2,4);--サイズ
--setEffRotateKey(SP_ATK01+91+diff01+diff02, eff08, -105);--角度
playSe( spep_5+91+diff01+diff02, SE_09);
setShake( spep_5+91+diff01+diff02, 3, 14);
entryFadeBg( spep_5+92+diff01+diff02, 0, 35, 0, 0, 0, 0, 255);          -- ベース暗め　背景
entryEffectLife( spep_5+92+diff01+diff02, 908, 10, 0x00,  -1, 0,  0,  0);   -- 集中線
entryFlashBg( spep_5+92+diff01+diff02, 1, fcolor_r, 0, 0, 100);
--entryFlashBg( SP_ATK01+94+diff01+diff02, 1, 255, 255, 255, 100);
setMoveKey(  spep_5+92+diff01+diff02, 1, 0,  0,  -128);
pauseAll(spep_5+92+diff01+diff02,10);

-- 書き文字エントリー
ct5 = entryEffectLife( spep_5, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(spep_5, ct5, 81, 20);
setEffScaleKey( spep_5, ct5, 2.4, 2.4);
setEffRotateKey(spep_5, ct5, 0);
setEffAlphaKey(spep_5, ct5, 255);
setEffAlphaKey(spep_5+70+diff01, ct5, 255);
setEffAlphaKey(spep_5+92+diff01, ct5, 0);

entryFade( spep_5+100+diff01+10, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255); 

entryFade( spep_5+115+diff01+10, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255); 

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 342; --エンドフェイズのフレーム数を置き換える

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
--setDisp( SP_ATK02, 1, 1);

spep_6= spep_5+142;
SP_end  = spep_6+116;

setDisp( spep_6-1, 1, 1);
setMoveKey(  spep_6-1,    1,  100,  0,   0);
setScaleKey( spep_6-1,    1,  1.0, 1.0);
setMoveKey(  spep_6,    1,    0,   0,   128);
setScaleKey( spep_6,    1,  0.1, 0.1);

changeAnime( spep_6, 1, 107);                         -- 手前ダメージ
entryEffect( spep_6+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_6+8, SE_10);

setMoveKey(  spep_6+8,   1,    0,   0,   128);
setMoveKey(  spep_6+15,   1,  -60,  -200,  -100);
setMoveKey(  spep_6+16,   1,  -60,  -200,  -100);
setDamage( spep_6+16, 1, 0);  -- ダメージ振動等
setShake(spep_6+7,6,15);
setShake(spep_6+13,15,10);

setRotateKey( spep_6,  1,  30 );
setRotateKey( spep_6+2,  1,  80 );
setRotateKey( spep_6+4,  1, 120 );
setRotateKey( spep_6+6,  1, 160 );
setRotateKey( spep_6+8,  1, 200 );
setRotateKey( spep_6+10,  1, 260 );
setRotateKey( spep_6+12,  1, 320 );
setRotateKey( spep_6+14,  1,   0 );

setShakeChara( spep_6+15, 1, 5,  10);
setShakeChara( spep_6+20, 1, 10, 20);

-- 書き文字エントリー
ct6 = entryEffectLife( spep_6+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep_6+15, ct6, 30, 10);
setEffRotateKey( spep_6+15, ct6, -40);
setEffScaleKey( spep_6+15, ct6, 4.0, 4.0);
setEffScaleKey( spep_6+16, ct6, 2.0, 2.0);
setEffScaleKey( spep_6+17, ct6, 2.6, 2.6);
setEffScaleKey( spep_6+18, ct6, 4.0, 4.0);
setEffScaleKey( spep_6+19, ct6, 2.6, 2.6);
setEffScaleKey( spep_6+20, ct6, 3.8, 3.8);
setEffScaleKey( spep_6+110, ct6, 3.8, 3.8);
setEffAlphaKey( spep_6+15, ct6, 255);
setEffAlphaKey( spep_6+105, ct6, 255);
setEffAlphaKey( spep_6+115, ct6, 0);

playSe( spep_6+3, SE_11);
shuchusen = entryEffectLife( spep_6+3, 906, 120, 0x100,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_6+3, 1600,  0x100,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(spep_6+16);

entryFade( spep_6+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase( spep_6+110);
end

print ("[lua]sp0001 end");
