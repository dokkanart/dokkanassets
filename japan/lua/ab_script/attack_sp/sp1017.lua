print ("[lua]sp1001");

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SP_01 = 150018;
SP_03 = 150019;
SP_04 = 150020;
SP_05 = 150020;
SP_06 = 150020;
SP_07 = 150021;


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

SP_ATK01 = 314;
SP_ATK02 = 435;
SP_end   = SP_ATK02+116;

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
setVisibleUI(0, 0);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

spep_01=0;

--         frame, eff, atr,tgt, tag,  x, y
changeAnime(  spep_01+30, 0, 17);                       -- 溜め!
entryEffect(  spep_01+30,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
entryEffect(  spep_01+30,   1500,   0,    -1,  0,  0,  0);    -- eff_001
playSe( spep_01+30, SE_01);

entryFade( spep_01+62, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 100);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  spep_01+30,   311, 39, 0x40,  0,  1,  0,  0); -- オーラ
setEffScaleKey( spep_01+30, aura, 1.5, 1.5);
setShakeChara( spep_01+30, 0, 19, 5);

-- 書き文字エントリー
ct = entryEffectLife( spep_01+30, 10013, 39, 0, -1, 0, 0, 200); -- ズズンッ
setEffShake(spep_01+30, ct, 40, 7);
setEffAlphaKey(spep_01+30, ct, 255);
setEffAlphaKey(spep_01+50, ct, 255);
setEffAlphaKey(spep_01+70, ct, 0);
setEffScaleKey( spep_01+30, ct, 0.1, 0.1);
setEffScaleKey( spep_01+40, ct, 2.0, 2.0);
playSe( spep_01+30, SE_02);

------------------------------------------------------
-- 気力解放！(100F)
------------------------------------------------------
spep_02=spep_01+70;--(70-169)
--changeAnime( 70, 0, 30);                       -- 溜め!

entryEffectLife( spep_02, SP_01, 109, 0x40,  0,  0,  0,  0);   -- タメ

entryEffect(  spep_02,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect(  spep_02,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
entryEffectLife( spep_02, SP_01, 109, 0x40,  0,  0,  0,  0);   -- タメ

speff = entryEffect(  spep_02+10,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff1 = entryEffect(  spep_02+10,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff1, 4, 5);                           -- セリフ差し替え

playSe( spep_02, SE_03);
playSe( spep_02+10, SE_04);

--entryFade( 165, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura2 = entryEffectLife(  spep_02,   311, 95, 0x40,  0,  1,  0,  0); -- オーラ
setEffScaleKey( spep_02, aura2, 1.5, 1.5);
setShakeChara( spep_02, 0, 49, 5);

-- 書き文字エントリー
ct2 = entryEffectLife( spep_02+20, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(spep_02+20, ct2, 40, 8);
setEffScaleKey(spep_02+20, ct2, 1.4, 1.4);

entryFade(spep_02+95, 2, 10, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
spep_03=spep_02+100;---(170〜)

setScaleKey( spep_03-1,   0, 1.5, 1.5);
setScaleKey( spep_03,   0, 1.0, 1.0);

--changeAnime( spep_03, 0, 30);   -- 溜め!

cr = entryEffect(  spep_03,   1507,   0,  -1,  0,  0,  0);   -- eff_008
setEffReplaceTexture( cr, 1, 1);
setEffReplaceTexture( cr, 2, 0);                         -- カード差し替え
setEffReplaceTexture( cr, 5, 4);                                  -- 技名テクスチャ差し替え
playSe( spep_03, SE_05);
--[[
setEffScaleKey(	spep_03+20,cr, 1.0,1.0);--1
setEffScaleKey(	spep_03+70,cr, 1.0,1.0);--1
--setEffShake( spep_03+70, ct, 3, 12);
setEffScaleKey(	spep_03+73,cr, 1.0,1.0);--1.2
setEffScaleKey(	spep_03+78,cr, 1.0,1.0);--1.2
--setEffShake( spep_03+78, ct, 3, 8);
setEffScaleKey(	spep_03+80,cr, 1.0,1.0);--1.4
setEffScaleKey(	spep_03+86,cr, 1.0,1.0);--1.4
--setEffShake( spep_03+85, ct, 8, 15); --ct
setEffScaleKey(	spep_03+88,cr, 2,2);
]]--
entryFade(spep_03+84, 2, 6, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
spep_04=spep_03+90;--(260〜)

-- ** エフェクト等 ** --
entryFadeBg( spep_04-3, 0, 129, 0, 10, 10, 10, 180);       -- ベース暗め　背景
entryFadeBg( spep_04, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
entryFadeBg( spep_04+40, 0, 2, 8, 255, 0, 0, 250);     -- 青い　背景


changeAnime( spep_04, 0, 30);                                    -- かめはめ発射ポーズ
setScaleKey( spep_04-1,   0, 1.0, 1.0);
setScaleKey( spep_04+20,   0, 2, 2);

ran = entryEffectLife( spep_04, 921, 23, 0x80,  -1,  0,  0,  0); -- 流線斜め

setEffRotateKey( spep_04,ran,180);
setEffScaleKey( spep_04,ran,1.0,1.0);
setEffAlphaKey( spep_04,ran,255);
setEffMoveKey( spep_04,ran,0,0,0);

setEffRotateKey( spep_04+23, ran, 180);
setEffScaleKey( spep_04+23,ran,1.0,1.0);
setEffAlphaKey( spep_04+23,ran,255);
setEffMoveKey( spep_04+23,ran,0,0,0);

--P移動（突進）
playSe( spep_04, SE_07);
setMoveKey(  spep_04-1,    0,      0,  0,   0);
setMoveKey(  spep_04,    0,    -150,  0,   0);
setMoveKey(  spep_04+20,  0,   500,  140,   -128);
--playSe( 280, SE_06);

spname = entryEffect( spep_04, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

entryFade(spep_04+20, 3, 4, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

----------------------------------------------------

setMoveKey(  spep_04+24,  0,   500,  140,   0);
setMoveKey(  spep_04+25,  0,   -700,  800,   0);
setScaleKey( spep_04+24, 0, 3, 3);
setScaleKey( spep_04+25, 0, 1, 1);
changeAnime( spep_04+25, 0, 31);   

sen = entryEffectLife( spep_04+27, 920, 27, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey( spep_04+27, sen, 45);
setEffScaleKey(spep_04+27, sen, 2.0,2.0);

--移動
setMoveKey(  spep_04+30,    0,   -700,  800,   0);
setMoveKey(  spep_04+50,    0,   700,  -800,   -128);

setEffAlphaKey( spep_04, spname, 255);
setEffAlphaKey( spep_04+50, spname, 255);
setEffAlphaKey( spep_04+52, spname, 0);

entryFade(spep_04+50, 0, 4, 2, 255, 255, 255, 255);     -- white fade
----------------------------------------------------
playSe( spep_04+40, SE_07);

------------------------------------------------------
-- 攻撃(100F)  314〜;
------------------------------------------------------
changeAnime( SP_ATK01, 0, 31);                                    -- かめはめ発射ポーズ
setDisp( SP_ATK01, 0, 0);
setDisp( SP_ATK01, 1, 1);
changeAnime( SP_ATK01, 1, 104);                     -- ガード
setMoveKey(  SP_ATK01,    1,  0,  0,   -100);

--攻撃演出--

-- ** エフェクト等 ** --
setShakeChara( SP_ATK01, 1, 99, 20);
entryFadeBg( SP_ATK01, 0, 36, 0, 10, 10, 10, 150);          -- ベース暗め　背景
entryEffectLife( SP_ATK01, 921, 36, 0x80,  -1,  0,  0,  0); -- 流線斜め
--playSe( SP_ATK01+30, SE_07);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 321; --エンドフェイズのフレーム数を置き換える

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
-------------------------------------------------------
--[[
setRotateKey( SP_ATK01+20, 1, 0);
setRotateKey( SP_ATK01+36-25, 1, 15);
setRotateKey( SP_ATK01+39-25, 1, 15);
setRotateKey( SP_ATK01+40-25, 1, -10);
setRotateKey( SP_ATK01+49-25, 1, -10);
setRotateKey( SP_ATK01+48-25, 1, 5);
setRotateKey( SP_ATK01+60-25, 1, 0);
--]]
-- 書き文字エントリー
ct01 = entryEffectLife( SP_ATK01+8, 10014, 91, 0, -1, 0, -150, 300); -- ズドドッ
setEffShake(SP_ATK01+8, ct01, 73, 20);
setEffScaleKey( SP_ATK01+8, ct01, 2.4, 2.4);
setEffRotateKey(SP_ATK01+8, ct01, 70);
setEffAlphaKey(SP_ATK01+8, ct01, 255);

setMoveKey(  SP_ATK01+15,  1,  50,  0,   -128);

--2撃目--
entryEffectLife( SP_ATK01+18, 906, 45, 0x00,  -1, 0,  0,  0);   -- 集中線

eff02 = entryEffect( SP_ATK01+18, SP_04,  0, -1,  0,  0,  0);   -- 攻撃3
setEffScaleKey( SP_ATK01+18, eff02,0.4,3);--サイズ
setEffRotateKey(SP_ATK01+18, eff02,-70);--角度
--entryFlashBg( (SP_ATK01+43-25), 1, fcolor_r, fcolor_g, fcolor_b, 200);
playSe( SP_ATK01+18, SE_08);
changeAnime( SP_ATK01+18, 1, 105);--やられ 
setShake( SP_ATK01+18, 3, 14);
setMoveKey(  SP_ATK01+18, 1, 0,  0,  -50);
setMoveKey(  SP_ATK01+19, 1, 50,  -50,  -60);
--entryFlash( (SP_ATK01+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);

--2撃目--
entryEffectLife( SP_ATK01+25, 906, 45, 0x00,  -1, 0,  0,  0);   -- 集中線

eff02 = entryEffect( SP_ATK01+25, SP_04,  0, -1,  0,  0,  0);   -- 攻撃3
setEffScaleKey( SP_ATK01+25, eff02,0.4,3);--サイズ
setEffRotateKey(SP_ATK01+25, eff02,70);--角度
--entryFlashBg( (SP_ATK01+50-25), 1, fcolor_r, fcolor_g, fcolor_b, 200);
playSe( SP_ATK01+25, SE_08);
changeAnime( SP_ATK01+25, 1, 105);--やられ 
setShake( SP_ATK01+25, 3, 14);
setMoveKey(  SP_ATK01+25, 1, 0,  0,  -60);
setMoveKey(  SP_ATK01+26, 1, 50,  -50,  -80);

eff03 = entryEffect( SP_ATK01+32, SP_04,  0, -1,  0,  50,  0);   -- 攻撃4
setEffScaleKey( SP_ATK01+32, eff03, 0.4,3);--サイズ
setEffRotateKey(SP_ATK01+32, eff03, -80);--角度
playSe( SP_ATK01+32, SE_09);
changeAnime( SP_ATK01+32, 1, 108);--やられ 
setShake( SP_ATK01+32, 3, 14);
setMoveKey(  SP_ATK01+32, 1, 50,  -50,  -128);
setMoveKey(  SP_ATK01+33, 1, -80,  30,  -128);

entryEffectLife( SP_ATK01+35, 908, 5, 0x00,  -1, 0,  0,  0);   -- 集中線
eff01 = entryEffect( SP_ATK01+35, SP_04, 0, 1,  0,  0,  0);   -- ヒットエフェクト
setEffScaleKey( SP_ATK01+35, eff01,1,2);--サイズ
setEffRotateKey(SP_ATK01+35, eff01,-10);--角度
--entryFlashBg( (SP_ATK01+35), 1, fcolor_r, fcolor_g, fcolor_b, 200);
changeAnime( SP_ATK01+36, 1, 106);--やられ   
playSe( SP_ATK01+35, SE_09);
entryFadeBg( SP_ATK01+35, 0, 66, 0, 0, 0, 0, 255);          -- ベース暗め　背景
pauseAll(SP_ATK01+36,7);

setDamage(  SP_ATK01+39,  1,  0);   --ダメージ振動等

eff04 = entryEffect( SP_ATK01+40, SP_04,  0, -1,  0,  -80,  0);   -- 攻撃5
setEffScaleKey( SP_ATK01+40, eff04, 0.4,2.5);--サイズ
setEffRotateKey(SP_ATK01+40, eff04, 45);--角度
playSe( SP_ATK01+40, SE_08);
changeAnime( SP_ATK01+40, 1, 106);--やられ 
setShake( SP_ATK01+40, 3, 14);
setMoveKey(  SP_ATK01+40, 1, -80,  30,  -128);
setMoveKey(  SP_ATK01+41, 1, 40,  -35,  -128);

setEffAlphaKey(SP_ATK01+45, ct, 255);

eff05 = entryEffect( SP_ATK01+47, SP_04,  0, -1,  0,  20,  0);   -- 攻撃3
setEffScaleKey( SP_ATK01+47, eff05, 0.4,3);--サイズ
setEffRotateKey(SP_ATK01+47, eff05, -100);--角度
--entryFlashBg( (SP_ATK01+72-25), 1, fcolor_r, fcolor_g, fcolor_b, 200);
playSe( SP_ATK01+47, SE_09);
setShake( SP_ATK01+47, 3, 14);
setMoveKey(  SP_ATK01+47, 1, 40,  -35,  -128);
setMoveKey(  SP_ATK01+48, 1, -90,  -90,  -128);

eff06 = entryEffect( SP_ATK01+51, SP_04,  0, -1,  0,  -60,  0);   -- 攻撃3
setEffScaleKey( SP_ATK01+51, eff06, 0.4,2);--サイズ
setEffRotateKey(SP_ATK01+51, eff06, 130);--角度
playSe( SP_ATK01+51, SE_08);
changeAnime( SP_ATK01+51, 1, 105);--やられ 
setShake( SP_ATK01+51, 3, 14);
setMoveKey(  SP_ATK01+51, 1, 90,  -90,  -128);
setMoveKey(  SP_ATK01+52, 1, -60, 80,  -128);

eff07 = entryEffect( SP_ATK01+55, SP_04,  0, -1,  0,  70,  0);   -- 攻撃3
setEffScaleKey( SP_ATK01+55, eff07, 0.4,2.5);--サイズ
setEffRotateKey(SP_ATK01+55, eff07, 88);--角度
playSe( SP_ATK01+55, SE_08);
--entryFlashBg( (SP_ATK01+80-25), 1, fcolor_r, fcolor_g, fcolor_b, 200);
changeAnime( SP_ATK01+55, 1, 106);--やられ 
setShake( SP_ATK01+55, 3, 14);
setMoveKey(  SP_ATK01+55, 1, -60, 80,  -128);
setMoveKey(  SP_ATK01+56, 1, 80,  60,  -128);

setEffAlphaKey(SP_ATK01+67, ct01, 0);
-- 敵吹っ飛ぶモーション
setMoveKey(  SP_ATK01+75, 1, 0,  0,  -128);
changeAnime( SP_ATK01+74, 1, 108);

setMoveKey(  SP_ATK01+74, 1, 0,  0, -128);
eff08 = entryEffect( SP_ATK01+73, SP_07,  0, -1,  0,  0,  0);   -- 攻撃3
playSe( SP_ATK01+73, SE_09);
playSe( SP_ATK01+73, SE_08);
setShake( SP_ATK01+73, 3, 14);
entryFadeBg( SP_ATK01+74, 0, 39, 0, 0, 0, 0, 255);          -- ベース暗め　背景
entryEffectLife( SP_ATK01+73, 906, 10, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffectLife( SP_ATK01+73, 908, 32, 0x00,  -1, 0,  0,  0);   -- 集中線
entryFlashBg( SP_ATK01+74, 1, fcolor_r, 0, 0, 100);
--entryFlashBg( SP_ATK01+94-18, 1, 255, 255, 255, 100);

pauseAll(SP_ATK01+74,3);

entryFadeBg( SP_ATK01+74, 3, 5, 4, 255, 0, 0, 255);

entryEffectLife( SP_ATK01+95, 921, 15, 0x80,  -1,  0,  0,  0); -- 流線斜め

setMoveKey(  SP_ATK01+103, 1, 0,    0,  -128);
setDamage(  SP_ATK01+109,  1,  0);   --ダメージ振動等

setMoveKey(  SP_ATK01+113, 1, 800, 0,  -50); --314
entryFade( 422, 4, 9, 4, fcolor_r, fcolor_g, fcolor_b, 255); 
setDisp( 428,1,0);
------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
setDisp( SP_ATK02+1, 1, 1);
setMoveKey(  SP_ATK02,    1,  800,    0,  -50);
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
ct02 = entryEffectLife( SP_ATK02+16, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake(SP_ATK02+16, ct02, 30, 10);
setEffRotateKey( SP_ATK02+16, ct02, -40);
setEffScaleKey( SP_ATK02+16, ct02, 4.0, 4.0);
setEffScaleKey( SP_ATK02+17, ct02, 2.0, 2.0);
setEffScaleKey( SP_ATK02+18, ct02, 2.6, 2.6);
setEffScaleKey( SP_ATK02+19, ct02, 4.0, 4.0);
setEffScaleKey( SP_ATK02+20, ct02, 2.6, 2.6);
setEffScaleKey( SP_ATK02+21, ct02, 3.8, 3.8);
setEffScaleKey( SP_ATK02+111, ct02, 3.8, 3.8);
setEffAlphaKey( SP_ATK02+16, ct02, 255);
setEffAlphaKey( SP_ATK02+106, ct02, 255);
setEffAlphaKey( SP_ATK02+116, ct02, 0);

playSe( SP_ATK02+4, SE_11);
shuchusen = entryEffectLife( SP_ATK02+4, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( SP_ATK02+4, 1600,0x100,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(SP_ATK02+15);
entryFade( SP_ATK02+101, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase(418+116+15);

else
------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
setVisibleUI(0, 0);

kame_flag = 0x00;

spep_01=0;

--         frame, eff, atr,tgt, tag,  x, y
changeAnime(  spep_01+30, 0, 17);                       -- 溜め!
entryEffect(  spep_01+30,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
entryEffect(  spep_01+30,   1500,   0,    -1,  0,  0,  0);    -- eff_001
playSe( spep_01+30, SE_01);

entryFade( spep_01+62, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 100);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  spep_01+30,   311, 39, 0x40,  0,  1,  0,  0); -- オーラ
setEffScaleKey( spep_01+30, aura, 1.5, 1.5);
setShakeChara( spep_01+30, 0, 19, 5);

-- 書き文字エントリー
ct = entryEffectLife( spep_01+30, 10013, 39, 0, -1, 0, 0, 200); -- ズズンッ
setEffShake(spep_01+30, ct, 40, 7);
setEffAlphaKey(spep_01+30, ct, 255);
setEffAlphaKey(spep_01+50, ct, 255);
setEffAlphaKey(spep_01+70, ct, 0);
setEffScaleKey( spep_01+30, ct, 0.1, 0.1);
setEffScaleKey( spep_01+40, ct, 2.0, 2.0);
playSe( spep_01+30, SE_02);

------------------------------------------------------
-- 気力解放！(100F)
------------------------------------------------------
spep_02=spep_01+70;--(70-169)
--changeAnime( 70, 0, 30);                       -- 溜め!

entryEffectLife( spep_02, SP_01, 109, 0x40,  0,  0,  0,  0);   -- タメ

entryEffect(  spep_02,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect(  spep_02,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
entryEffectLife( spep_02, SP_01, 109, 0x40,  0,  0,  0,  0);   -- タメ
--[[
speff = entryEffect(  spep_02+10,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff1 = entryEffect(  spep_02+10,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff1, 4, 5);                           -- セリフ差し替え
]]--
playSe( spep_02, SE_03);
playSe( spep_02+10, SE_04);

--entryFade( 165, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura2 = entryEffectLife(  spep_02,   311, 95, 0x40,  0,  1,  0,  0); -- オーラ
setEffScaleKey( spep_01+30, aura2, 1.5, 1.5);
setShakeChara( spep_02, 0, 49, 5);

-- 書き文字エントリー
ct2 = entryEffectLife( spep_02+20, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(spep_02+20, ct2, 40, 8);
setEffScaleKey(spep_02+20, ct2, 1.4, 1.4);

entryFade(spep_02+95, 2, 10, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
spep_03=spep_02+100;---(170〜)

setScaleKey( spep_03-1,   0, 1.5, 1.5);
setScaleKey( spep_03,   0, 1.0, 1.0);

--changeAnime( 170, 0, 30);   -- 溜め!

cr = entryEffect(  spep_03,   1507,   0,  -1,  0,  0,  0);   -- eff_008
setEffReplaceTexture( cr, 1, 1);
setEffReplaceTexture( cr, 2, 0);                         -- カード差し替え
setEffReplaceTexture( cr, 5, 4);                                  -- 技名テクスチャ差し替え
playSe( spep_03, SE_05);
--[[
setEffScaleKey(	spep_03+0,cr, 1.0,1.0);--1
setEffScaleKey(	spep_03+70,cr, 1.0,1.0);--1
--setEffShake( spep_03+70, ct, 3, 12);
setEffScaleKey(	spep_03+73,cr, 1.0,1.0);--1.2
setEffScaleKey(	spep_03+78,cr, 1.0,1.0);--1.2
--setEffShake( spep_03+78, ct, 3, 8);
setEffScaleKey(	spep_03+80,cr, 1.0,1.0);--1.4
setEffScaleKey(	spep_03+86,cr, 1.0,1.0);--1.4
--setEffShake( spep_03+85, ct, 8, 15); --ct
setEffScaleKey(	spep_03+88,cr, 2,2);
]]--
entryFade(spep_03+84, 2, 6, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
spep_04=spep_03+90;--(260〜)

-- ** エフェクト等 ** --
entryFadeBg( spep_04-3, 0, 129, 0, 10, 10, 10, 180);       -- ベース暗め　背景
entryFadeBg( spep_04, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
entryFadeBg( spep_04+40, 0, 2, 8, 255, 0, 0, 250);     -- 青い　背景


changeAnime( spep_04, 0, 30);                                    -- かめはめ発射ポーズ
setScaleKey( spep_04-1,   0, 1.0, 1.0);
setScaleKey( spep_04+20,   0, 2, 2);

ran = entryEffectLife( spep_04, 921, 23, 0x80,  -1,  0,  0,  0); -- 流線斜め

setEffRotateKey( spep_04,ran,180);
setEffScaleKey( spep_04,ran,1.0,1.0);
setEffAlphaKey( spep_04,ran,255);
setEffMoveKey( spep_04,ran,0,0,0);

setEffRotateKey( spep_04+23, ran, 180);
setEffScaleKey( spep_04+23,ran,1.0,1.0);
setEffAlphaKey( spep_04+23,ran,255);
setEffMoveKey( spep_04+23,ran,0,0,0);

--P移動（突進）
playSe( spep_04, SE_07);
setMoveKey(  spep_04-1,    0,      0,  0,   0);
setMoveKey(  spep_04,    0,    -150,  0,   0);
setMoveKey(  spep_04+20,  0,   500,  140,   -128);
--playSe( 280, SE_06);

spname = entryEffect( spep_04, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

entryFade(spep_04+20, 3, 4, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

----------------------------------------------------

setMoveKey(  spep_04+24,  0,   500,  140,   0);
setMoveKey(  spep_04+25,  0,   -700,  800,   0);
setScaleKey( spep_04+24, 0, 3, 3);
setScaleKey( spep_04+25, 0, 1, 1);
changeAnime( spep_04+25, 0, 31);   

sen = entryEffectLife( spep_04+27, 920, 27, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey( spep_04+27, sen, 45);
setEffScaleKey(spep_04+27, sen, 2.0,2.0);

--移動
setMoveKey(  spep_04+30,    0,   -700,  800,   0);
setMoveKey(  spep_04+50,    0,   700,  -800,   -128);

setEffAlphaKey( spep_04, spname, 255);
setEffAlphaKey( spep_04+50, spname, 255);
setEffAlphaKey( spep_04+52, spname, 0);

entryFade(spep_04+50, 0, 4, 2, 255, 255, 255, 255);     -- white fade
----------------------------------------------------
playSe( spep_04+40, SE_07);

------------------------------------------------------
-- 攻撃(100F)  314〜;
------------------------------------------------------
changeAnime( SP_ATK01, 0, 31);                                    -- かめはめ発射ポーズ
setDisp( SP_ATK01, 0, 0);
setDisp( SP_ATK01, 1, 1);
changeAnime( SP_ATK01, 1, 104);                     -- ガード
setMoveKey(  SP_ATK01,    1,  0,  0,   -100);

--攻撃演出--

-- ** エフェクト等 ** --
setShakeChara( SP_ATK01, 1, 99, 20);
entryFadeBg( SP_ATK01, 0, 36, 0, 10, 10, 10, 150);          -- ベース暗め　背景
entryEffectLife( SP_ATK01, 921, 36, 0x80,  -1,  0,  0,  0); -- 流線斜め
--playSe( SP_ATK01+30, SE_07);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 321; --エンドフェイズのフレーム数を置き換える

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
-------------------------------------------------------
--[[
setRotateKey( SP_ATK01+20, 1, 0);
setRotateKey( SP_ATK01+36-25, 1, 15);
setRotateKey( SP_ATK01+39-25, 1, 15);
setRotateKey( SP_ATK01+40-25, 1, -10);
setRotateKey( SP_ATK01+49-25, 1, -10);
setRotateKey( SP_ATK01+48-25, 1, 5);
setRotateKey( SP_ATK01+60-25, 1, 0);
--]]
-- 書き文字エントリー
ct01 = entryEffectLife( SP_ATK01+8, 10014, 91, 0, -1, 0, -150, 300); -- ズドドッ
setEffShake(SP_ATK01+8, ct01, 73, 20);
setEffScaleKey( SP_ATK01+8, ct01, 2.4, 2.4);
setEffRotateKey(SP_ATK01+8, ct01, 0);--70
setEffAlphaKey(SP_ATK01+8, ct01, 255);

setMoveKey(  SP_ATK01+15,  1,  50,  0,   -128);

--2撃目--
entryEffectLife( SP_ATK01+18, 906, 45, 0x00,  -1, 0,  0,  0);   -- 集中線

eff02 = entryEffect( SP_ATK01+18, SP_04,  0, -1,  0,  0,  0);   -- 攻撃3
setEffScaleKey( SP_ATK01+18, eff02,0.4,3);--サイズ
setEffRotateKey(SP_ATK01+18, eff02,-70);--角度
--entryFlashBg( (SP_ATK01+43-25), 1, fcolor_r, fcolor_g, fcolor_b, 200);
playSe( SP_ATK01+18, SE_08);
changeAnime( SP_ATK01+18, 1, 105);--やられ 
setShake( SP_ATK01+18, 3, 14);
setMoveKey(  SP_ATK01+18, 1, 0,  0,  -50);
setMoveKey(  SP_ATK01+19, 1, 50,  -50,  -60);
--entryFlash( (SP_ATK01+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);

--2撃目--
entryEffectLife( SP_ATK01+25, 906, 45, 0x00,  -1, 0,  0,  0);   -- 集中線

eff02 = entryEffect( SP_ATK01+25, SP_04,  0, -1,  0,  0,  0);   -- 攻撃3
setEffScaleKey( SP_ATK01+25, eff02,0.4,3);--サイズ
setEffRotateKey(SP_ATK01+25, eff02,70);--角度
--entryFlashBg( (SP_ATK01+50-25), 1, fcolor_r, fcolor_g, fcolor_b, 200);
playSe( SP_ATK01+25, SE_08);
changeAnime( SP_ATK01+25, 1, 105);--やられ 
setShake( SP_ATK01+25, 3, 14);
setMoveKey(  SP_ATK01+25, 1, 0,  0,  -60);
setMoveKey(  SP_ATK01+26, 1, 50,  -50,  -80);

eff03 = entryEffect( SP_ATK01+32, SP_04,  0, -1,  0,  50,  0);   -- 攻撃4
setEffScaleKey( SP_ATK01+32, eff03, 0.4,3);--サイズ
setEffRotateKey(SP_ATK01+32, eff03, -80);--角度
playSe( SP_ATK01+32, SE_09);
changeAnime( SP_ATK01+32, 1, 108);--やられ 
setShake( SP_ATK01+32, 3, 14);
setMoveKey(  SP_ATK01+32, 1, 50,  -50,  -128);
setMoveKey(  SP_ATK01+33, 1, -80,  30,  -128);

entryEffectLife( SP_ATK01+35, 908, 5, 0x00,  -1, 0,  0,  0);   -- 集中線
eff01 = entryEffect( SP_ATK01+35, SP_04, 0, 1,  0,  0,  0);   -- ヒットエフェクト
setEffScaleKey( SP_ATK01+35, eff01,1,2);--サイズ
setEffRotateKey(SP_ATK01+35, eff01,-10);--角度
--entryFlashBg( (SP_ATK01+35), 1, fcolor_r, fcolor_g, fcolor_b, 200);
changeAnime( SP_ATK01+36, 1, 106);--やられ   
playSe( SP_ATK01+35, SE_09);
entryFadeBg( SP_ATK01+35, 0, 66, 0, 0, 0, 0, 255);          -- ベース暗め　背景
pauseAll(SP_ATK01+36,7);

setDamage(  SP_ATK01+39,  1,  0);   --ダメージ振動等

eff04 = entryEffect( SP_ATK01+40, SP_04,  0, -1,  0,  -80,  0);   -- 攻撃5
setEffScaleKey( SP_ATK01+40, eff04, 0.4,2.5);--サイズ
setEffRotateKey(SP_ATK01+40, eff04, 45);--角度
playSe( SP_ATK01+40, SE_08);
changeAnime( SP_ATK01+40, 1, 106);--やられ 
setShake( SP_ATK01+40, 3, 14);
setMoveKey(  SP_ATK01+40, 1, -80,  30,  -128);
setMoveKey(  SP_ATK01+41, 1, 40,  -35,  -128);

setEffAlphaKey(SP_ATK01+45, ct01, 255);

eff05 = entryEffect( SP_ATK01+47, SP_04,  0, -1,  0,  20,  0);   -- 攻撃3
setEffScaleKey( SP_ATK01+47, eff05, 0.4,3);--サイズ
setEffRotateKey(SP_ATK01+47, eff05, -100);--角度
--entryFlashBg( (SP_ATK01+72-25), 1, fcolor_r, fcolor_g, fcolor_b, 200);
playSe( SP_ATK01+47, SE_09);
setShake( SP_ATK01+47, 3, 14);
setMoveKey(  SP_ATK01+47, 1, 40,  -35,  -128);
setMoveKey(  SP_ATK01+48, 1, -90,  -90,  -128);

eff06 = entryEffect( SP_ATK01+51, SP_04,  0, -1,  0,  -60,  0);   -- 攻撃3
setEffScaleKey( SP_ATK01+51, eff06, 0.4,2);--サイズ
setEffRotateKey(SP_ATK01+51, eff06, 130);--角度
playSe( SP_ATK01+51, SE_08);
changeAnime( SP_ATK01+51, 1, 105);--やられ 
setShake( SP_ATK01+51, 3, 14);
setMoveKey(  SP_ATK01+51, 1, 90,  -90,  -128);
setMoveKey(  SP_ATK01+52, 1, -60, 80,  -128);

eff07 = entryEffect( SP_ATK01+55, SP_04,  0, -1,  0,  70,  0);   -- 攻撃3
setEffScaleKey( SP_ATK01+55, eff07, 0.4,2.5);--サイズ
setEffRotateKey(SP_ATK01+55, eff07, 88);--角度
playSe( SP_ATK01+55, SE_08);
--entryFlashBg( (SP_ATK01+80-25), 1, fcolor_r, fcolor_g, fcolor_b, 200);
changeAnime( SP_ATK01+55, 1, 106);--やられ 
setShake( SP_ATK01+55, 3, 14);
setMoveKey(  SP_ATK01+55, 1, -60, 80,  -128);
setMoveKey(  SP_ATK01+56, 1, 80,  60,  -128);

setEffAlphaKey(SP_ATK01+67, ct, 0);
-- 敵吹っ飛ぶモーション
setMoveKey(  SP_ATK01+75, 1, 0,  0,  -128);
changeAnime( SP_ATK01+74, 1, 108);

setMoveKey(  SP_ATK01+74, 1, 0,  0, -128);
eff08 = entryEffect( SP_ATK01+73, SP_07,  0, -1,  0,  0,  0);   -- 攻撃3
playSe( SP_ATK01+73, SE_09);
playSe( SP_ATK01+73, SE_08);
setShake( SP_ATK01+73, 3, 14);
entryFadeBg( SP_ATK01+74, 0, 39, 0, 0, 0, 0, 255);          -- ベース暗め　背景
entryEffectLife( SP_ATK01+73, 906, 10, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffectLife( SP_ATK01+73, 908, 32, 0x00,  -1, 0,  0,  0);   -- 集中線
entryFlashBg( SP_ATK01+74, 1, fcolor_r, 0, 0, 100);
--entryFlashBg( SP_ATK01+94-18, 1, 255, 255, 255, 100);

pauseAll(SP_ATK01+74,3);

entryFadeBg( SP_ATK01+74, 3, 5, 4, 255, 0, 0, 255);

entryEffectLife( SP_ATK01+95, 921, 15, 0x80,  -1,  0,  0,  0); -- 流線斜め

setMoveKey(  SP_ATK01+103, 1, 0,    0,  -128);
setDamage(  SP_ATK01+109,  1,  0);   --ダメージ振動等

setMoveKey(  SP_ATK01+113, 1, 800, 0,  -50); --314
entryFade( 422, 4, 9, 4, fcolor_r, fcolor_g, fcolor_b, 255); 
setDisp( 428,1,0);
------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
setDisp( SP_ATK02+1, 1, 1);
setMoveKey(  SP_ATK02,    1,  800,    0,  -50);
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
ct02 = entryEffectLife( SP_ATK02+16, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake(SP_ATK02+16, ct02, 30, 10);
setEffRotateKey( SP_ATK02+16, ct02, -40);
setEffScaleKey( SP_ATK02+16, ct02, 4.0, 4.0);
setEffScaleKey( SP_ATK02+17, ct02, 2.0, 2.0);
setEffScaleKey( SP_ATK02+18, ct02, 2.6, 2.6);
setEffScaleKey( SP_ATK02+19, ct02, 4.0, 4.0);
setEffScaleKey( SP_ATK02+20, ct02, 2.6, 2.6);
setEffScaleKey( SP_ATK02+21, ct02, 3.8, 3.8);
setEffScaleKey( SP_ATK02+111, ct02, 3.8, 3.8);
setEffAlphaKey( SP_ATK02+16, ct02, 255);
setEffAlphaKey( SP_ATK02+106, ct02, 255);
setEffAlphaKey( SP_ATK02+116, ct02, 0);

playSe( SP_ATK02+4, SE_11);
shuchusen = entryEffectLife( SP_ATK02+4, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( SP_ATK02+4, 1600,  0x100,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(SP_ATK02+15);
entryFade( SP_ATK02+101, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase(418+116+15);

end

print ("[lua]sp0001 end");
