print ("[lua]sp1001");

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SP_01 = 150033
SP_02 = 150034;
SP_03 = 150035;

SP_04 = 3;
SP_05 = 2;


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

SP_ATK_3 = 340;
SP_ATK_4 = SP_ATK_3+48;

else

SP_ATK_0 = 6;
SP_ATK_1 = SP_ATK_0+55;
SP_ATK_2 = SP_ATK_1+45;
SP_ATK_3 = SP_ATK_2+70;
SP_ATK_4 = SP_ATK_3+48;

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

entryFade( 62, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b,  100);     -- white fade

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

--entryFade( 165, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--aura = entryEffectLife(  70,   311, 95, 0x40,  0,  1,  0,  0); -- オーラ
entryEffectLife( 90, SP_01, 109, 0x40,  0,  0,  0,  0); 
--setEffScaleKey( 30, aura, 1.5, 1.5);
setShakeChara( 70, 0, 49, 5);

-- 書き文字エントリー
ct = entryEffectLife( 90, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(90, ct, 40, 8);
setEffScaleKey(90, ct, 1.4, 1.4);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
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
setMoveKey(  280,    0,   0,  0,   0);
setMoveKey(  296,  0,   100,  0,   0);
setMoveKey(  305,  0,   -200,  0,   0);
setMoveKey(  310,  0,   -180,  0,   0);
playSe( 305, SE_06);
setMoveKey(  318,    0,   -300,  0,   0);

kamehame_beam = entryEffectLife( 260, SP_02, 109, 0x40,  0,  300,  0,  0);   -- 伸びるかめはめ波
setEffRotateKey(260,kamehame_beam,-25);

playSe( 260, SE_07);

spname = entryEffect( 260, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- ** エフェクト等 ** --
entryFadeBg( 260, 0, 109, 0, 10, 10, 10, 180);       -- ベース暗め　背景
entryFadeBg( 260, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
entryFadeBg( 300, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景

entryEffectLife( 260, 920, 40, 0x80,  -1,  0,  0,  0); -- 流線

setShakeChara( 305, 0, 54, 50);

shuchusen = entryEffectLife( 260, 906, 60, 0x00,  -1, 0,  0,  0);   -- 集中線

-- 書き文字エントリー
ct = entryEffectLife( 268, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(268, ct, 32, 5);
setEffAlphaKey(268, ct, 255);
setEffAlphaKey(290, ct, 255);
setEffAlphaKey(300, ct, 0);
setEffScaleKey(268, ct, 0.0, 0.0);
setEffScaleKey(272, ct, 1.3, 1.3);
setEffScaleKey(310, ct, 1.3, 1.3);
setEffScaleKey(328, ct, 6.0, 6.0);

setEffAlphaKey(	308,spname, 1);
playSe( 300, SE_07);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 319; --エンドフェイズのフレーム数を置き換える
setScaleKey(   SP_dodge,   0, 1.5, 1.5);

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(  SP_dodge+3,  0, 700,  0,   0);
setMoveKey(  SP_dodge+9,  0, 1600,  0,   0);

endPhase(SP_dodge+10);
do return end
else end

setMoveKey(  329,  0, 700,  0,   0);
setMoveKey(  333,  0, 700,  0,   0);
setMoveKey(  334,  0, -1700,  0,   0);

entryFade( 322, 7, 10, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
playSe( SP_ATK_3, SE_08);

--end

setDisp( SP_ATK_3, 1, 1);
changeAnime( SP_ATK_3, 1, 104);                        -- ガード

setMoveKey(  SP_ATK_3-1,    1,  235,  0,   0);
setMoveKey(  SP_ATK_3,    1,  235,  0,   0);
setMoveKey(  SP_ATK_3+1,    1,  235,  0,   0);
setScaleKey( SP_ATK_3-1,    1,  0.7, 0.7);
setScaleKey( SP_ATK_3,    1,  0.7, 0.7);

setMoveKey(  SP_ATK_3+15,    1,   120,  0,   0);
setScaleKey( SP_ATK_3+15,   1,   1.6,  1.6);
playSe( SP_ATK_3+12, SE_01);

playSe( SP_ATK_3+27, SE_09);

-- 敵吹っ飛ぶモーション
setMoveKey(  SP_ATK_3+20+5, 1,  180,    0,  0);
setScaleKey( SP_ATK_3+22+5, 1,  1.6, 1.6);
setScaleKey( SP_ATK_3+24+5, 1,  1, 1);

-- ** エフェクト等 ** --
setShakeChara( SP_ATK_3+20+5, 1, 99, 20);

entryFadeBg( SP_ATK_3, 4, 40, 4, 10, 10, 10, 150);          -- ベース暗め　背景

ryusenNanaeme = entryEffectLife( SP_ATK_3, 921, 34, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffScaleKey(SP_ATK_3, ryusenNanaeme, 1.2, 1.2);

-- 書き文字エントリー
ct = entryEffectLife( SP_ATK_3, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(SP_ATK_3, ct, 99, 20);
setEffScaleKey( SP_ATK_3, ct, 2.4, 2.4);
setEffRotateKey(SP_ATK_3, ct, 70);
setEffAlphaKey(SP_ATK_3, ct, 255);
setEffAlphaKey(SP_ATK_3+20+5, ct, 255);
setEffAlphaKey(SP_ATK_3+25+5, ct, 0);

--自キャラ飛び蹴り
setDisp( SP_ATK_3, 0, 1);
setMoveKey(  SP_ATK_3,  0, -1000,  -152,   -10);
setMoveKey(  SP_ATK_3+18,  0, -1000,  -152,   -10);
setMoveKey(  SP_ATK_3+33,  0, 400,  76,   100);

 -- ヒットエフェクト
entryEffect( SP_ATK_3+25, SP_03,   0x100, -1,  0,  0,  0); 

--敵吹っ飛びモーション
setMoveKey(  SP_ATK_3+37, 1,  70,    0,  -120);
setMoveKey(  SP_ATK_3+39, 1,  70,    0,  -120);
setMoveKey(  SP_ATK_3+44, 1,  70,    0,  120);

changeAnime( SP_ATK_3+38, 1, 108); 

setShakeChara(SP_ATK_3+40,0,30,14);
setShakeChara(SP_ATK_3+40,1,30,11);

entryEffectLife( SP_ATK_3+40, 906, 35, 0x00,  -1, 0,  0,  0);   -- 集中線

--entryEffectLife( SP_ATK_3+40, 920, 35, 0x80,  -1,  0,  0,  0); -- 流線
entryFade( SP_ATK_3+40, 4,  5, 1, 255, 255, 255, 255);     -- white fade

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
setDisp( SP_ATK_4-1, 1, 1);
setDisp( SP_ATK_4-1, 0, 0);
setMoveKey(  SP_ATK_4-1,    1,  100,  0,   0);
setScaleKey( SP_ATK_4-1,    1,  1.0, 1.0);
setMoveKey(  SP_ATK_4,    1,    0,   0,   128);
setScaleKey( SP_ATK_4,    1,  0.1, 0.1);

changeAnime(SP_ATK_4, 1, 107);                         -- 手前ダメージ
entryEffect( SP_ATK_4+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( SP_ATK_4+8, SE_10);

setMoveKey(  SP_ATK_4+8,   1,    0,   0,   128);
setMoveKey(  SP_ATK_4+15,   1,  -60,  -200,  -100);
setMoveKey(  SP_ATK_4+16,   1,  -60,  -200,  -100);
setDamage( SP_ATK_4+16, 1, 0);  -- ダメージ振動等
setShake(SP_ATK_4+7,6,15);
setShake(SP_ATK_4+13,15,10);

setRotateKey(SP_ATK_4,  1,  30 );
setRotateKey( SP_ATK_4+2,  1,  80 );
setRotateKey( SP_ATK_4+4,  1, 120 );
setRotateKey( SP_ATK_4+6,  1, 160 );
setRotateKey( SP_ATK_4+8,  1, 200 );
setRotateKey( SP_ATK_4+10,  1, 260 );
setRotateKey( SP_ATK_4+12,  1, 320 );
setRotateKey( SP_ATK_4+14,  1,   0 );

setShakeChara( SP_ATK_4+15, 1, 5,  10);
setShakeChara( SP_ATK_4+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( SP_ATK_4+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( SP_ATK_4+15, ct, 30, 10);
setEffRotateKey( SP_ATK_4+15, ct, -40);
setEffScaleKey( SP_ATK_4+15, ct, 4.0, 4.0);
setEffScaleKey( SP_ATK_4+16, ct, 2.0, 2.0);
setEffScaleKey( SP_ATK_4+17, ct, 2.6, 2.6);
setEffScaleKey( SP_ATK_4+18, ct, 4.0, 4.0);
setEffScaleKey( SP_ATK_4+19, ct, 2.6, 2.6);
setEffScaleKey( SP_ATK_4+20, ct, 3.8, 3.8);
setEffScaleKey( SP_ATK_4+110, ct, 3.8, 3.8);
setEffAlphaKey( SP_ATK_4+15, ct, 255);
setEffAlphaKey( SP_ATK_4+105, ct, 255);
setEffAlphaKey( SP_ATK_4+115, ct, 0);

playSe( SP_ATK_4+3, SE_11);
shuchusen = entryEffectLife( SP_ATK_4+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( SP_ATK_4+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(SP_ATK_4+16);

entryFade( SP_ATK_4+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase( SP_ATK_4+110);


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
changeAnime( SP_ATK_0, 0, 30);                       -- 溜め!
playSe( SP_ATK_0, SE_01);

entryEffect( SP_ATK_0,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect( SP_ATK_0,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)

-- ** エフェクト等 ** --
--aura = entryEffectLife( SP_ATK_0,   311, 100, 0x40,  0,  1,  0,  0); -- オーラ
--setEffScaleKey( SP_ATK_0, aura, 1.5, 1.5);
kamehame_beam = entryEffectLife( SP_ATK_0, SP_01, 50, 0x40,  0,  0,  0,  0);   -- 伸びるかめはめ波
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

setEffAlphaKey( (SP_ATK_1), speff, 255);
setEffAlphaKey( (SP_ATK_1+45), speff, 255);
setEffAlphaKey( SP_ATK_1+47, speff, 0);
entryFade( SP_ATK_1+45, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
changeAnime( SP_ATK_2, 0, 31); 
--P移動
setMoveKey(  SP_ATK_2,    0,      0,  0,   0);
setMoveKey(  SP_ATK_2+1,    0,   -600,  0,   0);
setMoveKey(  SP_ATK_2+2,    0,   -600,  0,   0);
setMoveKey(  SP_ATK_2+16,    0,   0,  0,   0);
setMoveKey(  SP_ATK_2+23,  0,   100,  0,   0);
setMoveKey(  SP_ATK_2+34,  0,   -200,  0,   0);
setMoveKey(  SP_ATK_2+43,  0,   -300,  0,   0);
playSe( SP_ATK_2+47, SE_06);

kamehame_beam = entryEffectLife( SP_ATK_2+1, SP_02, 120, 0x40,  0,  300,  0,  0);   -- 伸びるかめはめ波
setEffRotateKey(SP_ATK_2,kamehame_beam,-25);

playSe(SP_ATK_2+1, SE_07);

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

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 155; --エンドフェイズのフレーム数を置き換える
setScaleKey(   SP_dodge,   0, 1.5, 1.5);

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, -1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(  SP_dodge+3,  0, -300,  0,   0);
setMoveKey(  SP_dodge+9,  0, -1600,  76,   100);

endPhase(SP_dodge+10);
do return end
else end

setMoveKey(  SP_ATK_2+50,  0, 700,  0,   0);

entryFade( SP_ATK_2+64, 5, 8, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
playSe( SP_ATK_3, SE_08);

--end

setDisp( SP_ATK_3, 1, 1);
changeAnime( SP_ATK_3, 1, 104);                        -- ガード

setMoveKey(  SP_ATK_3-1,    1,  235,  0,   0);
setMoveKey(  SP_ATK_3,    1,  235,  0,   0);
setMoveKey(  SP_ATK_3+1,    1,  235,  0,   0);
setScaleKey( SP_ATK_3-1,    1,  0.7, 0.7);
setScaleKey( SP_ATK_3,    1,  0.7, 0.7);

setMoveKey(  SP_ATK_3+15,    1,   120,  0,   0);
setScaleKey( SP_ATK_3+15,   1,   1.6,  1.6);
playSe( SP_ATK_3+12, SE_01);

playSe( SP_ATK_3+27, SE_09);
-- 敵吹っ飛ぶモーション
setMoveKey(  SP_ATK_3+20+5, 1,  180,    0,  0);
setScaleKey( SP_ATK_3+22+5, 1,  1.6, 1.6);
setScaleKey( SP_ATK_3+24+5, 1,  1, 1);

-- ** エフェクト等 ** --
setShakeChara( SP_ATK_3+20+5, 1, 99, 20);

entryFadeBg( SP_ATK_3, 3, 40, 4, 10, 10, 10, 150);          -- ベース暗め　背景

ryusenNanaeme = entryEffectLife( SP_ATK_3, 921, 34, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffScaleKey(SP_ATK_3, ryusenNanaeme, 1.2, 1.2);


-- 書き文字エントリー
ct = entryEffectLife( SP_ATK_3, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(SP_ATK_3, ct, 99, 20);
setEffScaleKey( SP_ATK_3, ct, 2.4, 2.4);
setEffRotateKey(SP_ATK_3, ct, -70);
setEffAlphaKey(SP_ATK_3, ct, 255);
setEffAlphaKey(SP_ATK_3+20+5, ct, 255);
setEffAlphaKey(SP_ATK_3+25+5, ct, 0);

--自キャラ飛び蹴り
setDisp( SP_ATK_3, 0, 1);
setMoveKey(  SP_ATK_3-1,  0, 700,  0,   0);
setMoveKey(  SP_ATK_3,  0, -500,  -152,   -200);
setMoveKey(  SP_ATK_3+18,  0, -500,  -152,   -200);
setMoveKey(  SP_ATK_3+33,  0, 900,  76,   100);

 -- ヒットエフェクト
entryEffect( SP_ATK_3+25, SP_03,   0x100, -1,  0,  0,  0); 

setMoveKey(  SP_ATK_3+37, 1,  70,    0,  -120);
setMoveKey(  SP_ATK_3+39, 1,  70,    0,  -120);
setMoveKey(  SP_ATK_3+44, 1,  70,    0,  120);
changeAnime( SP_ATK_3+38, 1, 108);

setShakeChara(SP_ATK_3+40,0,30,14);
setShakeChara(SP_ATK_3+40,1,30,11);

entryEffectLife( SP_ATK_3+40, 906, 35, 0x00,  -1, 0,  0,  0);   -- 集中線
--entryEffectLife( SP_ATK_3+40, 920, 35, 0x80,  -1,  0,  0,  0); -- 流線
entryFade( SP_ATK_3+40, 4,  5, 1, 255, 255, 255, 255);     -- white fade

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
setDisp( SP_ATK_4-1, 1, 1);
setDisp( SP_ATK_4-1, 0, 0);
setMoveKey(  SP_ATK_4-1,    1,  100,  0,   0);
setScaleKey( SP_ATK_4-1,    1,  1.0, 1.0);
setMoveKey(  SP_ATK_4,    1,    0,   0,   128);
setScaleKey( SP_ATK_4,    1,  0.1, 0.1);

changeAnime(SP_ATK_4, 1, 107);                         -- 手前ダメージ
entryEffect( SP_ATK_4+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( SP_ATK_4+8, SE_10);

setMoveKey(  SP_ATK_4+8,   1,    0,   0,   128);
setMoveKey(  SP_ATK_4+15,   1,  -60,  -200,  -100);
setMoveKey(  SP_ATK_4+16,   1,  -60,  -200,  -100);
setDamage( SP_ATK_4+16, 1, 0);  -- ダメージ振動等
setShake(SP_ATK_4+7,6,15);
setShake(SP_ATK_4+13,15,10);

setRotateKey(SP_ATK_4,  1,  30 );
setRotateKey( SP_ATK_4+2,  1,  80 );
setRotateKey( SP_ATK_4+4,  1, 120 );
setRotateKey( SP_ATK_4+6,  1, 160 );
setRotateKey( SP_ATK_4+8,  1, 200 );
setRotateKey( SP_ATK_4+10,  1, 260 );
setRotateKey( SP_ATK_4+12,  1, 320 );
setRotateKey( SP_ATK_4+14,  1,   0 );

setShakeChara( SP_ATK_4+15, 1, 5,  10);
setShakeChara( SP_ATK_4+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( SP_ATK_4+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( SP_ATK_4+15, ct, 30, 10);
setEffRotateKey( SP_ATK_4+15, ct, -40);
setEffScaleKey( SP_ATK_4+15, ct, 4.0, 4.0);
setEffScaleKey( SP_ATK_4+16, ct, 2.0, 2.0);
setEffScaleKey( SP_ATK_4+17, ct, 2.6, 2.6);
setEffScaleKey( SP_ATK_4+18, ct, 4.0, 4.0);
setEffScaleKey( SP_ATK_4+19, ct, 2.6, 2.6);
setEffScaleKey( SP_ATK_4+20, ct, 3.8, 3.8);
setEffScaleKey( SP_ATK_4+110, ct, 3.8, 3.8);
setEffAlphaKey( SP_ATK_4+15, ct, 255);
setEffAlphaKey( SP_ATK_4+105, ct, 255);
setEffAlphaKey( SP_ATK_4+115, ct, 0);

playSe( SP_ATK_4+3, SE_11);
shuchusen = entryEffectLife( SP_ATK_4+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( SP_ATK_4+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(SP_ATK_4+16);

entryFade( SP_ATK_4+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase( SP_ATK_4+110);
end

print ("[lua]sp0001 end");
