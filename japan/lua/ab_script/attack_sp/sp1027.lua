print ("[lua]sp1001");

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--SP_01 = 100004
SP_04 = 3
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
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then
Card = 170
rn_02 = 320;
SP_ATK_3 = rn_02+10;
SP_ATK_4 = SP_ATK_3+78;
SP_end   = SP_ATK_4+116;

else

SP_ATK_0 = 6;
SP_ATK_1 = SP_ATK_0+55;
Card = SP_ATK_1;
SP_ATK_2 = SP_ATK_1+45;
rn_02 = SP_ATK_2+72;
SP_ATK_3 = rn_02+10;
SP_ATK_4 = SP_ATK_3+78;
SP_end   = SP_ATK_4+116;

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

entryFade( 62, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  30,   311, 39, 0x40,  0,  1,  0,  0); -- オーラ
setEffScaleKey( 30, aura, 1.5, 1.5);
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

------------------------------------------------------
-- 気力解放！(100F)
------------------------------------------------------
setVisibleUI(69, 0);
changeAnime( 70, 0, 30);                       -- 溜め!

entryEffect(  70,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect(  70,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
speff = entryEffect(  80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( 70, SE_03);
playSe( 80, SE_04);

entryFade( 165, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  70,   311, 95, 0x40,  0,  1,  0,  0); -- オーラ
setEffScaleKey( 70, aura, 1.5, 1.5);
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
changeAnime( Card+5, 0, 31);

-- ** エフェクト等 ** --
--entryFlash( (170+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);

setEffScaleKey(	170,cr, 1,1);
setEffScaleKey(	260,cr, 1,1);
--[[
--setEffShake( 240, ct, 3, 12);
setEffScaleKey(	243,cr, 1.2,1.2);
setEffScaleKey(	248,cr, 1.2,1.2);
--setEffShake( 248, ct, 3, 8);
setEffScaleKey(	250,cr, 1.4,1.4);
setEffScaleKey(	256,cr, 1.4,1.4);
setEffShake( 255, ct, 8, 15);
setEffScaleKey(	258,cr, 2,2);
]]
------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
setScaleKey( 260,0,2,2);
changeAnime( 260, 0, 3);                                    -- かめはめ発射ポーズ

--P移動
setMoveKey(  259,    0,      0,  0,   0);
setMoveKey(  260,    0,   -600,  0,   0);
setMoveKey(  261,    0,   -600,  0,   0);
setMoveKey(  275,    0,   0,  0,   0);
setMoveKey(  282,  0,   100,  0,   0);
setMoveKey(  291,  0,   -150,  0,   0);
setMoveKey(  300,  0,   -80,  0,   0);
setScaleKey( 300,0,2,2);
playSe( 305, SE_06);
setScaleKey( 306,0,3,3);
setMoveKey(  307,  0, 700,  0,   0);

--kamehame_beam = entryEffectLife( 260, SP_02, 109, 0x40,  0,  300,  0,  0);   -- 伸びるかめはめ波

SE0=playSe( 260, SE_07);


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


-- フェード中に膝蹴り状態をセット
changeAnime( 310, 0, 31);

setScaleKey( 310,   0, 5, 5);
setScaleKey( 311,   0, 1, 1);
setMoveKey( 310, 0,  0, 0,   -128);
setMoveKey( 311, 0,  -150, -150,   0);

sen = entryEffectLife( 311, 920, 100, 0x80,  -1,  0,  0,  0); -- 流線
setEffScaleKey( 311,sen,2.5,2.5);
setEffRotateKey( 311,sen,-60);

--敵
changeAnime(  310, 1, 104);    
setMoveKey( 310, 1,  800,  0,  -128);
setMoveKey( 311, 1,  50, 0,   0);
--setZanzou(311, 0,  1);
setScaleKey( 310,    1,  1, 1);
setScaleKey( 311,    1, 2.5, 2.5);
setDisp( 311, 1, 1);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 290; --エンドフェイズのフレーム数を置き換える
stopSe(SP_dodge-14,SE0,0);--音を止める
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

entryFadeBg( 300, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景
entryFade( 300, 7, 10, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
------------------------------------------------------
-- ATK
------------------------------------------------------
playSe( 300, SE_07);
entryFadeBg( rn_02, 0, 50, 4, 0, 0, 0, 255);          -- ベース暗め　背景

--setMoveKey( rn_02, 0,  -250, -1100,   0);
--setMoveKey( rn_02+15, 0,  -250, -1100,   0);


entryEffect( SP_ATK_3+20,   1500, 0,  -1,  0,  0,  0); -- オーラ


setEnvZoomEnable( rn_02,  1);

setMoveKey( rn_02, 1,  100, 0,   0);

changeAnime(  rn_02+1, 1, 108);

aura = entryEffectLife(  rn_02,   1500, 39, 0x80,  -1,  0,  0,  0); -- オーラ

playSe( rn_02+5, SE_05);
playSe( rn_02, 1052);

-----------------------------------------
--Dragon = entryEffect( rn_02+30, SP_04,  0x40+0x80, 1,  0,  0,  0);   -- 迫るかめはめ波
playSe( rn_02, SE_08);
--setZanzou(Card+6, 0,  0);
setEnvZoomEnable( SP_ATK_3,  0)
--playSe( SP_ATK_3, 1050);

--playSe( SP_ATK_3+27, SE_09);
-- 敵吹っ飛ぶモーション
--setMoveKey(  SP_ATK_3+20+5, 1,  10, 150,   0);

-- ** エフェクト等 ** --
setShakeChara( SP_ATK_3+20+5, 1, 99, 20);
entryFadeBg( SP_ATK_3, 0, 64, 4, 0, 0, 0, 255);          -- ベース暗め　背景

-- 書き文字エントリー
ct = entryEffectLife( SP_ATK_3, 10021, 99, 0, -1, 0, -130, 330); -- bako
setEffShake(rn_02+5, ct, 99, 35);
setEffScaleKey( rn_02+5, ct, 2.4, 2.4);
setEffAlphaKey(rn_02+5, ct, 255);
setEffAlphaKey(rn_02+5+20+5, ct, 255);
setEffAlphaKey(rn_02+5+25+5, ct, 0);

entryFadeBg(SP_ATK_3+36,0,43,3,0,0,0);
setQuake(SP_ATK_3+36,30,20);
--playSe( SP_ATK_3+36, 1044);
setDisp( SP_ATK_3+36, 0, 1);
--setMoveKey(  SP_ATK_3+36, 1,  10, 150,   0);
setShakeChara(SP_ATK_3+40,0,30,14);
setShakeChara(SP_ATK_3+40,1,30,11);

entryEffectLife( SP_ATK_3+40, 906, 35, 0x00,  -1, 0,  0,  0);   -- 集中線
entryFade( SP_ATK_3+40, 30,  10, 1, 255, 255, 255, 255);     -- white fade


------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
--setDisp( SP_ATK_4, 1, 1);
setDisp( SP_ATK_4, 0, 0);
setMoveKey( SP_ATK_4-1, 0,  -150, -150,   0);
setMoveKey( SP_ATK_4, 0,  -700, -0,   0);

setMoveKey(  SP_ATK_4,    1,  400,    0,  50);
setMoveKey(  SP_ATK_4+1,    1,    0,   0,   128);

setScaleKey( SP_ATK_4,    1,  2.5, 2.5);
setScaleKey( SP_ATK_4+1,    1,  1, 1);

changeAnime( SP_ATK_4+1, 1, 107);                         -- 手前ダメージ
entryEffect( SP_ATK_4+9, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( SP_ATK_4+9, SE_10);

setMoveKey(  SP_ATK_4+8,    1,    0,   0,   128);
setMoveKey(  SP_ATK_4+15,   1,  -60,  -200,  -100);
setMoveKey(  SP_ATK_4+16,   1,  -60,  -200,  -100);

setShakeChara( SP_ATK_4+16, 1, 5,  10);
setShakeChara( SP_ATK_4+21, 1, 10, 20);
setShake(SP_ATK_4+14,6,15);
setShake(SP_ATK_4+20,15,10);
-- 書き文字エントリー
ct = entryEffectLife( SP_ATK_4+16, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake(SP_ATK_4+16, ct, 30, 10);
setEffRotateKey( SP_ATK_4+16, ct, -40);
setEffScaleKey( SP_ATK_4+16, ct, 4.0, 4.0);
setEffScaleKey( SP_ATK_4+17, ct, 2.0, 2.0);
setEffScaleKey( SP_ATK_4+18, ct, 2.6, 2.6);
setEffScaleKey( SP_ATK_4+19, ct, 4.0, 4.0);
setEffScaleKey( SP_ATK_4+20, ct, 2.6, 2.6);
setEffScaleKey( SP_ATK_4+21, ct, 3.8, 3.8);
setEffScaleKey( SP_ATK_4+111, ct, 3.8, 3.8);
setEffAlphaKey( SP_ATK_4+16, ct, 255);
setEffAlphaKey( SP_ATK_4+106, ct, 255);
setEffAlphaKey( SP_ATK_4+116, ct, 0);

playSe( SP_ATK_4+4, SE_11);
shuchusen = entryEffectLife( SP_ATK_4+4, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( SP_ATK_4+4, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(SP_ATK_4+15);
entryFade( SP_ATK_4+101, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase(SP_ATK_4+111);


else
-----------------------------------------
--敵側の攻撃
-----------------------------------------
--キャラ位置
setMoveKey( 0,    0,      0,  0,   0);
setMoveKey( 0,    1,      800,  0,   0);

entryFade( 0, 2, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
setVisibleUI(SP_ATK_0, 0);
changeAnime( SP_ATK_0, 0, 	17);                       -- 溜め!
playSe( SP_ATK_0, SE_01);

entryEffect( SP_ATK_0,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect( SP_ATK_0,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)

-- ** エフェクト等 ** --
aura = entryEffectLife( SP_ATK_0,   311, 100, 0x40,  0,  1,  0,  0); -- オーラ
setEffScaleKey( SP_ATK_0, aura, 1.5, 1.5);
setShakeChara( SP_ATK_0+15, 0, 49, 5);


------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------

speff = entryEffect(  SP_ATK_1,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
--setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え
playSe( SP_ATK_1, SE_05);

spname = entryEffect( SP_ATK_1+10, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- ** エフェクト等 ** --
--entryFlash( (SP_ATK_1+10), 1, fcolor_r, fcolor_g, fcolor_b, 100);
--entryFlash( (SP_ATK_1+22), 1, fcolor_r, fcolor_g, fcolor_b, 100);

--entryFlash( (SP_ATK_1+36), 1, fcolor_r, fcolor_g, fcolor_b, 100);
--entryFlash( (SP_ATK_1+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
----entryFlash( (SP_ATK_1+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
changeAnime( SP_ATK_1+5, 0, 3); 
setScaleKey(   SP_ATK_1+4,   0, 1.5, 1.5);
setScaleKey( SP_ATK_1+5);

setEffAlphaKey( (SP_ATK_1), speff, 255);
setEffAlphaKey( (SP_ATK_1+45), speff, 255);
setEffAlphaKey( SP_ATK_1+47, speff, 0);
entryFade( SP_ATK_1+45, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------

--P移動
setMoveKey(  SP_ATK_2,    0,      0,  -54,   0);
setMoveKey(  SP_ATK_2+1,    0,   -600,  0,   0);
setMoveKey(  SP_ATK_2+2,    0,   -600,  0,   0);
setMoveKey(  SP_ATK_2+16,    0,   0,  0,   0);
setMoveKey(  SP_ATK_2+23,  0,   100,  0,   0);
setMoveKey(  SP_ATK_2+34,  0,   -200,  0,   0);
setMoveKey(  SP_ATK_2+43,  0,   -180,  0,   0);

setScaleKey( SP_ATK_1+49,0,2.5,2.5);
setScaleKey( SP_ATK_1+50,0,1,1);
setScaleKey( SP_ATK_2+23,0,1,1);

setScaleKey( SP_ATK_2+49,0,2.8,2.8);
setMoveKey(  SP_ATK_2+50,  0, 1000,  0,   0);

--kamehame_beam = entryEffectLife( SP_ATK_2+1, SP_02, 90, 0x40,  0,  300,  0,  0);   -- 伸びるかめはめ波


SE0=playSe(SP_ATK_2+1, SE_07);

spname = entryEffect( SP_ATK_2, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

entryFade( SP_ATK_2+5, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
entryFadeBg( SP_ATK_2, 0, 109, 0, 10, 10, 10, 180);       -- ベース暗め　背景
entryFadeBg( SP_ATK_2, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
entryFadeBg( SP_ATK_2+40, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景

entryEffectLife( SP_ATK_2, 920, 75, 0x80,  -1,  0,  0,  0); -- 流線

setShakeChara( SP_ATK_2+5, 0, 54, 50);

shuchusen = entryEffectLife( SP_ATK_2, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( SP_ATK_2, shuchusen, 1.0, 1.0);
setEffScaleKey( SP_ATK_2+40, shuchusen, 1.0, 1.0);
setEffScaleKey( SP_ATK_2+46, shuchusen, 2.0, 2.0);

--entryFlash( (SP_ATK_2+10), 1,  fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (SP_ATK_2+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (SP_ATK_2+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (SP_ATK_2+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (SP_ATK_2+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
----entryFlash( (SP_ATK_2+80), 1, fcolor_r, fcolor_g, fcolor_b, 200);
----entryFlash( (SP_ATK_2+90), 1, fcolor_r, fcolor_g, fcolor_b, 255);
--playSe( SP_ATK_2+90, SE_06);

-- 書き文字エントリー
ct = entryEffectLife( SP_ATK_2+8, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(SP_ATK_2+8, ct, 32, 5);
setEffAlphaKey(SP_ATK_2+8, ct, 255);
setEffAlphaKey(SP_ATK_2+30, ct, 255);
setEffAlphaKey(SP_ATK_2+40, ct, 0);
setEffScaleKey(SP_ATK_2+8, ct, 0.0, 0.0);
setEffScaleKey(SP_ATK_2+12, ct, 1.3, 1.3);
setEffScaleKey(SP_ATK_2+32, ct, 1.3, 1.3);
setEffScaleKey(SP_ATK_2+40, ct, 6.0, 6.0);
setEffAlphaKey(SP_ATK_2+71,spname,1);

entryFade( SP_ATK_2+64, 5, 8, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
-- フェード中に膝蹴り状態をセット
changeAnime( SP_ATK_2+70, 0, 31);

setScaleKey( SP_ATK_2+70,   0, 5, 5);
setScaleKey( SP_ATK_2+71,   0, 1, 1);
setMoveKey( SP_ATK_2+70, 0,  1000,  0,   0);
setMoveKey( SP_ATK_2+71, 0,  -170, -200,   0);


sen = entryEffectLife( SP_ATK_2+71, 920, 88, 0x80,  -1,  0,  0,  0); -- 流線
setEffScaleKey( SP_ATK_2+71, sen, 2.5, 2.5);
setEffRotateKey( SP_ATK_2+71, sen, -60);

--敵
changeAnime(  SP_ATK_2+70, 1, 108);    
setMoveKey( SP_ATK_2+70, 1,  800,  0,  -128);
setMoveKey( SP_ATK_2+71, 1,  50, 0,   0);
--setZanzou(SP_ATK_2+71, 0,  1);
setScaleKey( SP_ATK_2+70,    1,  1, 1);
setScaleKey( SP_ATK_2+71,    1, 2.5, 2.5);
setDisp( SP_ATK_2+71, 1, 1);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 165; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);
stopSe(SP_dodge-14,SE0,0);--音を止める

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
playSe( SP_ATK_2+47, SE_06);
------------------------------------------------------
-- ATK
------------------------------------------------------
entryFadeBg( rn_02, 0, 50, 4, 0, 0, 0, 255);          -- ベース暗め　背景

--setMoveKey( 152, 0,  -170, -200,   0);



entryEffect( SP_ATK_3+20,   1500, 0,  -1,  0,  0,  0); -- オーラ

--setEnvZoomEnable( 155,  1);
--setMoveKey( rn_02+20, 0,  -150, -150,   0);
entryEffectLife( rn_02-1, 906, 35, 0x00,  -1, 0,  0,  0);   -- 集中線

--setMoveKey( 148, 1,  120, -50,   0);
--setMoveKey( 152, 1,  100, 0,   0);
--setMoveKey( rn_02+5, 1,  150, 200,   0);
--setMoveKey( rn_02+20, 1,  10, 150,   0);
--changeAnime(  152, 1, 108);

aura = entryEffectLife( rn_02+25,   1500, 39, 0x80,  -1,  0,  0,  0); -- オーラ

playSe( rn_02+5, SE_05);
playSe( rn_02, 1052);
-----------------------------------------
--Dragon = entryEffect( rn_02+20, SP_04,  0x40+0x80, 1,  0,  0,  0);   -- 迫るかめはめ波
playSe( rn_02, SE_08);
--setZanzou(Card+6, 0,  0);
--setEnvZoomEnable( 177,  0)
--playSe( SP_ATK_3, 1050);

--playSe( SP_ATK_3+27, SE_09);
-- 敵吹っ飛ぶモーション
--setMoveKey(  SP_ATK_3+20+5, 1,  10, 150,   0);

-- ** エフェクト等 ** --
setShakeChara( SP_ATK_3+20+5, 1, 99, 20);
entryFadeBg( SP_ATK_3, 0, 64, 4, 0, 0, 0, 255);          -- ベース暗め　背景

-- 書き文字エントリー
ct = entryEffectLife( SP_ATK_3, 10021, 99, 0, -1, 0, -130, 330); -- bako
setEffShake(SP_ATK_3, ct, 99, 35);
setEffScaleKey( SP_ATK_3, ct, 2.4, 2.4);
setEffAlphaKey(SP_ATK_3, ct, 255);
setEffAlphaKey(SP_ATK_3+20+5, ct, 255);
setEffAlphaKey(SP_ATK_3+25+5, ct, 0);


entryFadeBg(SP_ATK_3+36,0,43,3,0,0,0);
setQuake(SP_ATK_3+36,30,20);
--playSe( SP_ATK_3+36, 1044);
setDisp( SP_ATK_3+36, 0, 1);
--setMoveKey(  SP_ATK_3+36, 1,  10, 150,   0);
setShakeChara(SP_ATK_3+40,0,30,14);
setShakeChara(SP_ATK_3+40,1,30,11);

entryEffectLife( SP_ATK_3+40, 906, 35, 0x00,  -1, 0,  0,  0);   -- 集中線
entryFade( SP_ATK_3+40, 30,  10, 1, 255, 255, 255, 255);     -- white fade

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
--setDisp( SP_ATK02, 1, 1);
setDisp( SP_ATK_4, 0, 0);
setMoveKey( SP_ATK_4-1, 0,  -170, -200,   0);
setMoveKey( SP_ATK_4, 0,  -700, -0,   0);

setMoveKey(  SP_ATK_4,    1,  400,    0,  50);
setMoveKey(  SP_ATK_4+1,    1,    0,   0,   128);

setScaleKey( SP_ATK_4,    1,  2.5, 2.5);
setScaleKey( SP_ATK_4+1,    1,  1, 1);

changeAnime( SP_ATK_4+1, 1, 107);                         -- 手前ダメージ
entryEffect( SP_ATK_4+9, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( SP_ATK_4+9, SE_10);

setMoveKey(  SP_ATK_4+8,    1,    0,   0,   128);
setMoveKey(  SP_ATK_4+15,   1,  -60,  -200,  -100);
setMoveKey(  SP_ATK_4+16,   1,  -60,  -200,  -100);

setShakeChara( SP_ATK_4+16, 1, 5,  10);
setShakeChara( SP_ATK_4+21, 1, 10, 20);
setShake(SP_ATK_4+15,6,15);
setShake(SP_ATK_4+21,15,9);

-- 書き文字エントリー
ct = entryEffectLife( SP_ATK_4+16, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake(SP_ATK_4+16, ct, 30, 10);
setEffRotateKey( SP_ATK_4+16, ct, -40);
setEffScaleKey( SP_ATK_4+16, ct, 4.0, 4.0);
setEffScaleKey( SP_ATK_4+17, ct, 2.0, 2.0);
setEffScaleKey( SP_ATK_4+18, ct, 2.6, 2.6);
setEffScaleKey( SP_ATK_4+19, ct, 4.0, 4.0);
setEffScaleKey( SP_ATK_4+20, ct, 2.6, 2.6);
setEffScaleKey( SP_ATK_4+21, ct, 3.8, 3.8);
setEffScaleKey( SP_ATK_4+111, ct, 3.8, 3.8);
setEffAlphaKey( SP_ATK_4+16, ct, 255);
setEffAlphaKey( SP_ATK_4+106, ct, 255);
setEffAlphaKey( SP_ATK_4+116, ct, 0);

playSe( SP_ATK_4+4, SE_11);
shuchusen = entryEffectLife( SP_ATK_4+4, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( SP_ATK_4+4, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(SP_ATK_4+15);
entryFade( SP_ATK_4+101, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase(SP_end+15);
end

print ("[lua]sp0001 end");
