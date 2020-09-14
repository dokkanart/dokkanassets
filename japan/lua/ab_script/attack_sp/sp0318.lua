-- 1007170 超17号_ヘルズストーム
-- sp0318

-- ゴゴゴの位置調整
-- カットイン後の白フェードの調整
-- 書き文字のプライオリティ
-- 斜線の削除
-- 回避調整

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SP_ATK_0 = 6;
SP_ATK_1 = SP_ATK_0+10;
SP_ATK_2 = SP_ATK_1+63;
SP_ATK_3 = SP_ATK_2+92;
SP_ATK_4 = 247;

SE_01 = 1035; --気を貯める
SE_02 = 17; --気が広がる
SE_03 = 19; --かめはめ
SE_04 = 1018; --カットイン
SE_05 = 1035; --カットイン攻撃
SE_06 = 09; --発射
SE_07 = 08; --のびる発射
--SE_08 = 1042; --カットイン
SE_09 = 1006; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音

SE_12 = 09;
SE_13 = 1030;

parX = 27;

SP_01 = 108050;
SP_02 = 108051;
SP_03 = 108052;
SP_04 = 108053;
SP_05 = 108054;


changeAnime( 0, 0, 0);                       -- 立ち
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0, -54,   0);
setMoveKey(   1,   0,    0, -54,   0);
setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   1,   0, 1.5, 1.5);

setVisibleUI(0,0);
------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

spep_1=0;

--気を貯める
--         frame, eff, atr,tgt, tag,  x, y
changeAnime(  spep_1+30, 0, 17);                       -- 溜め!
entryEffect(  spep_1+30,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
entryEffect(  spep_1+30,   1500,   0,    -1,  0,  0,  0);    -- eff_001
playSe( spep_1+30, SE_01);

entryFade( spep_1+62, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b,  100);     -- white fade

-- ** エフェクト等 ** --
--aura = entryEffectLife(  30,   311, 39, 0x40,  0,  1,  0,  0); -- オーラ
--setEffScaleKey( 30, aura, 1.5, 1.5);
setShakeChara( spep_1+30, 0, 19, 5);

--setQuake(30,39,15);

-- 書き文字エントリー
ctZuzuzun = entryEffectLife( spep_1+30, 10013, 39, 0x100, -1, 0, 0, 200); -- ズズンッ
setEffShake(spep_1+30, ctZuzuzun, 40, 7);
setEffAlphaKey(spep_1+30, ctZuzuzun, 255);
setEffAlphaKey(spep_1+50, ctZuzuzun, 255);
setEffAlphaKey(spep_1+70, ctZuzuzun, 0);
setEffScaleKey(spep_1+30, ctZuzuzun, 0.1, 0.1);
setEffScaleKey(spep_1+40, ctZuzuzun, 2.0, 2.0);
playSe(spep_1+30, SE_02);

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
spep_2=spep_1+70; --70
changeAnime( spep_2, 0, 30);                       -- 溜め!
playSe( spep_2+3, SE_03);

--entryFadeBg( 40, 30, 109, 10, 0, 0, 0, 255);       -- ベース暗め　背景
--entryEffect(  70,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
--entryEffect(  70,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
speff = entryEffect(  spep_2+10,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_2+10,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

entryFadeBg( spep_2-1, 0, 101, 0, 10, 10, 10, 180);       -- ベース暗め　背景

shuchusen2 = entryEffectLife( spep_2, 906, 100, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_2, shuchusen2, 1.0, 1.0);
setEffScaleKey( spep_2+40, shuchusen2, 1.0, 1.0);
setEffScaleKey( spep_2+49, shuchusen2, 2.0, 2.0);

playSe( spep_2+10, SE_04);

kame_hand = entryEffect( spep_2+0, SP_01, 0x40,      0,  300,  200,  110);   -- 手のカメハメ波部
setEffScaleKey( spep_2+0, kame_hand, 0.5, 0.5);

--entryFade( 165, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--aura = entryEffectLife(  70,   311, 99, 0x40,  0,  1,  0,  0); -- オーラ
--setEffScaleKey( 30, aura, 1.5, 1.5);
setShakeChara( spep_2+0, 0, 49, 5);

-- 書き文字エントリー
ctgogo=entryEffectLife(spep_2+20,190006,69,0x100,-1,0,500);

setEffShake(spep_2+20,ctgogo,69,15);

setEffMoveKey(spep_2+20,ctgogo,0,500);
setEffMoveKey(spep_2+89,ctgogo,0,500);
setEffScaleKey(spep_2+20,ctgogo,0.8,0.8);
setEffScaleKey(spep_2+89,ctgogo,0.8,0.8);
setEffAlphaKey(spep_2+20,ctgogo,255);
setEffAlphaKey(spep_2+89,ctgogo,255);
setEffRotateKey(spep_2+20,ctgogo,0);
setEffRotateKey(spep_2+89,ctgogo,0);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
spep_3=spep_2+100;--170

setScaleKey( spep_3-1,   0, 1.5, 1.5);
setScaleKey( spep_3,   0, 1.0, 1.0);

playSe( spep_3, SE_05);
speff = entryEffect(  spep_3,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


entryFade( spep_3+85, 3, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--entryFlash( (170+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
playSe( spep_3+64, SE_06);
------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
spep_4=spep_3+90; --260

changeAnime( spep_4, 0, 31);                                    -- かめはめ発射ポーズ

setMoveKey(  spep_4-2,   0,    0, -54,   0);
setMoveKey(  spep_4-1,   0,    0, -54,   0);
setMoveKey(  spep_4,    0,   -600,  0,   0);
setMoveKey(  spep_4+1,    0,   -600,  0,   0);
setMoveKey(  spep_4+10,    0,   -100,  0,   0);

kamehame_beam = entryEffectLife( spep_4, SP_02, 109, 0x40,  0,  300,  350,  240);   -- 伸びるかめはめ波

playSe( spep_4, SE_07);

spname = entryEffect( spep_4, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 途中からカメハメハが伸びる
setMoveKey(  spep_4+89,    0,   -100,  0,   0);
setMoveKey(  spep_4+90,    0,   -100,  0,   0);
setMoveKey(  spep_4+100,    0,   -1100,  0,   0);

-- ** エフェクト等 ** --
entryFadeBg( spep_4, 0, 109, 0, 10, 10, 10, 180);       -- ベース暗め　背景
entryFadeBg( spep_4, 0, 40, 0, 0, 0, 0, 255);    -- 最初だけ明るい　背景
entryFadeBg( spep_4+40, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景

entryEffectLife( spep_4, 920, 109, 0x80,  -1,  0,  0,  0); -- 流線

setShakeChara( spep_4-1, 0, 60, 15);

shuchusen4 = entryEffectLife( spep_4, 906, 49, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_4, shuchusen4, 1.0, 1.0);
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
ctZuo = entryEffectLife( spep_4+8, 10012, 32, 0x100, -1, 0, 200, 300); -- ズオッ
setEffShake(spep_4+8, ctZuo, 32, 5);
setEffAlphaKey(spep_4+8, ctZuo, 255);
setEffAlphaKey(spep_4+30, ctZuo, 255);
setEffAlphaKey(spep_4+40, ctZuo, 0);
setEffScaleKey(spep_4+8, ctZuo, 0.0, 0.0);
setEffScaleKey(spep_4+12, ctZuo, 1.3, 1.3);
setEffScaleKey(spep_4+32, ctZuo, 1.3, 1.3);
setEffScaleKey(spep_4+40, ctZuo, 6.0, 6.0);

for cnt = 0, 96, 3 do --174
seid=playSe( 260+cnt, SE_13);
setSeVolume(260+cnt, SE_13, 60 );
end

------------------------------------------------------
-- 回避
------------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge = 370; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(SP_dodge+10);

do return end
else end

--playSe( 455-65, SE_09);
------------------------------------------------------
--隔離 (回避の挙動)
------------------------------------------------------
for cnt = 0, 78, 3 do --174
seid2=playSe( 359+cnt, SE_13);
setSeVolume(359+cnt, SE_13, 70 );
end

entryFade( spep_4+105, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
spep_5=spep_4+110;--370

setDisp( spep_5, 0, 0);
setDisp( spep_5, 1, 1);
changeAnime( spep_5, 1, 104);                        -- ガード
setMoveKey(  spep_5-1,    1,  235,  0,   0);
setMoveKey(  spep_5,    1,  235,  0,   0);
setMoveKey(  spep_5+1,    1,  235,  0,   0);
setScaleKey( spep_5-1,    1,  0.7, 0.7);
setScaleKey( spep_5,    1,  0.7, 0.7);

setMoveKey(  spep_5+40,    1,   120,  0,   0);
setScaleKey(  spep_5+40,   1,   1.6,  1.6);

--playSe( 390, 1043);

kamehame_beam2 = entryEffectLife( spep_5, SP_03, 70,  0x100, -1,  0,  0,  0);   -- 迫るかめはめ波
--setEffScaleKey(370, kamehame_beam2, 1, 1);
--setEffScaleKey(452-parX, kamehame_beam2, 1, 1);
--setEffScaleKey(454-parX, kamehame_beam2, 2.5, 2.5);
setDamage( spep_5+17, 1, 0);  -- ダメージ振動等

--speff = entryEffect( 370, 1506,   0,  -1,  0,  0,  0);    -- カットイン
--setEffReplaceTexture( speff, 6, 3);                       -- カットイン差し替え
--playSe( 370, SE_08);

-- 敵吹っ飛ぶモーション
changeAnime( spep_5+20, 1, 108);
entryEffectLife( spep_5+20, 10016, 10, 0x100, -1, 0, 60, 90); -- ズドドッ
setMoveKey(  spep_5+20, 1,  120,    0,  0);
--setMoveKey(  410-65, 1,  600,    0,  0); --謎の１行
setMoveKey(  spep_5+40, 1,  600,    0,  0);
setScaleKey( spep_5+17, 1,  1.5, 1.5);
setScaleKey( spep_5+20, 1,  1.6, 1.6);
setScaleKey( spep_5+38, 1,  0.2, 0.2);

-- ** エフェクト等 ** --
setShakeChara( spep_5, 1, 99, 20);

entryFadeBg( spep_5, 0, 99, 0, 10, 10, 10, 150);          -- ベース暗め　背景

ryusen = entryEffectLife( spep_5, 921, 39, 0x80,  -1,  0,  0,  0); -- 流線斜め

-- 書き文字エントリー
ct = entryEffectLife( spep_5, 10014, 39, 0x100, -1, 0, -100, 255); -- ズドドッ
setEffShake(spep_5, ct, 39, 20);
setEffScaleKey( spep_5, ct, 2.4, 2.4);
setEffRotateKey(spep_5, ct, 10);
setEffAlphaKey(spep_5, ct, 255);
setEffAlphaKey(spep_5+409, ct, 255);

entryFade( spep_5+30, 6,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
spep_6 = spep_5+40;

entryEffect( spep_6, SP_04, 0,  -1,  0,  0,  0);
entryEffect( spep_6, SP_05, 0,  -1,  0,  0,  0);  
setDisp( spep_6, 1, 1);
changeAnime( spep_6, 1, 5);


setMoveKey(  spep_6+1, 1,  0,  0,  -100);

entryEffect( spep_6+10, 2, 0x40+0x100, 1,  300,  -150,  100);
entryEffect( spep_6+16, 1, 0x40+0x100, 1,  300,  80,  -30);
entryFade( spep_6+13, 0, 8, 0, 255, 0, 0, 50);     -- red fade
setShakeChara( spep_6+10, 1, 3, 20);
setShakeChara( spep_6+16, 1, 3, 10);
--playSe( spep_5+13, 1008);

setMoveKey(  spep_6+20, 1,  0,  0,  -50);

entryEffect( spep_6+25, 3, 0x40+0x100, 1,  300,  70,  150);
entryEffect( spep_6+35, 2, 0x40+0x100, 1,  300,  -70,  -80);
entryFade( spep_6+35, 0, 8, 0, 255, 0, 0, 50);     -- red fade
setShakeChara( spep_6+25, 1, 3, 25);
setShakeChara( spep_6+35, 1, 3, 15);
playSe( spep_6+45, 1011);


setMoveKey(  spep_6+35, 1,  0,  0,  0);

entryEffect( spep_6+42, 1, 0x40+0x100, 1,  300,  -120,  30);
entryEffect( spep_6+46, 3, 0x40+0x100, 1,  300,  -120,  30);
entryFade( spep_6+50, 0, 8, 0, 255, 0, 0, 50);     -- red fade
setShakeChara( spep_6+42, 1, 3, 15);
setShakeChara( spep_6+46, 1, 3, 25);
--playSe( spep_5+66, 1011);


entryFade( spep_6+70, 0, 8, 0, 255, 0, 0, 50);     -- red fade
playSe( spep_6+92, 1008);

entryFade( spep_6+85, 0, 8, 0, 255, 0, 0, 50);     -- red fade

--playSe( spep_5+115, 1002);

playSe( spep_6+129, 1011);

setMoveKey(  spep_6+75, 1,  0,  0,  120);
setMoveKey(  spep_6+76, 1,  0,  900,  120);

setDisp( spep_6+70, 1, 0);

--setShake(spep_6, 134, 17);

playSe( spep_6, 1016);
playSe( spep_6+15, 1016);
playSe( spep_6+27, 1016);
playSe( spep_6+39, 1016);
playSe( spep_6+51, 1016);
playSe( spep_6+65, 1016);
playSe( spep_6+73, 1016);
playSe( spep_6+88, 1016);
playSe( spep_6+96, 1016);
playSe( spep_6+109, 1016);
playSe( spep_6+117, 1016);
playSe( spep_6+128, 1016);
playSe( spep_6+140, 1016);

-- 書き文字エントリー
ct = entryEffectLife( spep_6, 10014, 59, 0x100, -1, 0, -100, 255); -- ズドドッ
setEffShake(spep_6, ct, 59, 20);
setEffScaleKey( spep_6, ct, 2.4, 2.4);
setEffRotateKey(spep_6, ct, 10);
setEffAlphaKey(spep_6, ct, 255);
setEffAlphaKey(spep_6+49, ct, 255);
setEffAlphaKey(spep_6+59, ct, 0);

--playSe( spep_5+4, SE_07);
shuchusen = entryEffectLife( spep_6, 906, 140, 0x80,  -1, 0,  0,  0);   -- 集中線
--entryEffect( 473, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(spep_6+17);

entryFadeBg( spep_6+35, 40, 65, 0,255, 255, 255, 255);          -- ベース暗め　背景

entryFade( spep_6+130, 5,  10, 5, fcolor_r, fcolor_g, fcolor_b, 255);      -- white fade

endPhase(spep_6+136);

else

spep_1=0;

--気を貯める
--         frame, eff, atr,tgt, tag,  x, y
changeAnime(  spep_1+30, 0, 17);                       -- 溜め!
entryEffect(  spep_1+30,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
entryEffect(  spep_1+30,   1500,   0,    -1,  0,  0,  0);    -- eff_001
playSe( spep_1+30, SE_01);

entryFade( spep_1+62, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b,  100);     -- white fade

-- ** エフェクト等 ** --
--aura = entryEffectLife(  30,   311, 39, 0x40,  0,  1,  0,  0); -- オーラ
--setEffScaleKey( 30, aura, 1.5, 1.5);
setShakeChara( spep_1+30, 0, 19, 5);

--setQuake(30,39,15);

-- 書き文字エントリー
ctZuzuzun = entryEffectLife( spep_1+30, 10013, 39, 0x100, -1, 0, 0, 200); -- ズズンッ
setEffShake(spep_1+30, ctZuzuzun, 40, 7);
setEffAlphaKey(spep_1+30, ctZuzuzun, 255);
setEffAlphaKey(spep_1+50, ctZuzuzun, 255);
setEffAlphaKey(spep_1+70, ctZuzuzun, 0);
setEffScaleKey(spep_1+30, ctZuzuzun, 0.1, 0.1);
setEffScaleKey(spep_1+40, ctZuzuzun, 2.0, 2.0);
playSe(spep_1+30, SE_02);

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
spep_2=spep_1+70; --70
changeAnime( spep_2, 0, 30);                       -- 溜め!
playSe( spep_2+3, SE_03);

--entryFadeBg( 40, 30, 109, 10, 0, 0, 0, 255);       -- ベース暗め　背景
--entryEffect(  70,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
--entryEffect(  70,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
--speff = entryEffect(  spep_2+10,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--peff = entryEffect(  spep_2+10,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

entryFadeBg( spep_2-1, 0, 101, 0, 10, 10, 10, 180);       -- ベース暗め　背景

shuchusen2 = entryEffectLife( spep_2, 906, 100, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_2, shuchusen2, 1.0, 1.0);
setEffScaleKey( spep_2+40, shuchusen2, 1.0, 1.0);
setEffScaleKey( spep_2+49, shuchusen2, 2.0, 2.0);

playSe( spep_2+10, SE_04);

kame_hand = entryEffect( spep_2+0, SP_01, 0x40,      0,  300,  200,  110);   -- 手のカメハメ波部
setEffScaleKey( spep_2+0, kame_hand, 0.5, 0.5);

--entryFade( 165, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--aura = entryEffectLife(  70,   311, 99, 0x40,  0,  1,  0,  0); -- オーラ
--setEffScaleKey( 30, aura, 1.5, 1.5);
setShakeChara( spep_2+0, 0, 49, 5);

-- 書き文字エントリー
ctgogo=entryEffectLife(spep_2+20,190006,69,0x100,-1,0,500);

setEffShake(spep_2+20,ctgogo,69,15);

setEffMoveKey(spep_2+20,ctgogo,0,500);
setEffMoveKey(spep_2+89,ctgogo,0,500);
setEffScaleKey(spep_2+20,ctgogo,-0.8,0.8);
setEffScaleKey(spep_2+89,ctgogo,-0.8,0.8);
setEffAlphaKey(spep_2+20,ctgogo,255);
setEffAlphaKey(spep_2+89,ctgogo,255);
setEffRotateKey(spep_2+20,ctgogo,0);
setEffRotateKey(spep_2+89,ctgogo,0);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
spep_3=spep_2+100;--170

setScaleKey( spep_3-1,   0, 1.5, 1.5);
setScaleKey( spep_3,   0, 1.0, 1.0);

playSe( spep_3, SE_05);
speff = entryEffect(  spep_3,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


entryFade( spep_3+85, 3, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--entryFlash( (170+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
playSe( spep_3+64, SE_06);
------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
spep_4=spep_3+90; --260

changeAnime( spep_4, 0, 31);                                    -- かめはめ発射ポーズ

setMoveKey(  spep_4-2,   0,    0, -54,   0);
setMoveKey(  spep_4-1,   0,    0, -54,   0);
setMoveKey(  spep_4,    0,   -600,  0,   0);
setMoveKey(  spep_4+1,    0,   -600,  0,   0);
setMoveKey(  spep_4+10,    0,   -100,  0,   0);

kamehame_beam = entryEffectLife( spep_4, SP_02, 109, 0x40,  0,  300,  350,  240);   -- 伸びるかめはめ波

playSe( spep_4, SE_07);

spname = entryEffect( spep_4, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 途中からカメハメハが伸びる
setMoveKey(  spep_4+89,    0,   -100,  0,   0);
setMoveKey(  spep_4+90,    0,   -100,  0,   0);
setMoveKey(  spep_4+100,    0,   -1100,  0,   0);

-- ** エフェクト等 ** --
entryFadeBg( spep_4, 0, 109, 0, 10, 10, 10, 180);       -- ベース暗め　背景
entryFadeBg( spep_4, 0, 40, 0, 0, 0, 0, 255);    -- 最初だけ明るい　背景
entryFadeBg( spep_4+40, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景

entryEffectLife( spep_4, 920, 109, 0x80,  -1,  0,  0,  0); -- 流線

setShakeChara( spep_4-1, 0, 60, 15);

shuchusen4 = entryEffectLife( spep_4, 906, 49, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_4, shuchusen4, 1.0, 1.0);
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
ctZuo = entryEffectLife( spep_4+8, 10012, 32, 0x100, -1, 0, 200, 300); -- ズオッ
setEffShake(spep_4+8, ctZuo, 32, 5);
setEffAlphaKey(spep_4+8, ctZuo, 255);
setEffAlphaKey(spep_4+30, ctZuo, 255);
setEffAlphaKey(spep_4+40, ctZuo, 0);
setEffScaleKey(spep_4+8, ctZuo, 0.0, 0.0);
setEffScaleKey(spep_4+12, ctZuo, 1.3, 1.3);
setEffScaleKey(spep_4+32, ctZuo, 1.3, 1.3);
setEffScaleKey(spep_4+40, ctZuo, 6.0, 6.0);

for cnt = 0, 96, 3 do --174
seid=playSe( 260+cnt, SE_13);
setSeVolume(260+cnt, SE_13, 60 );
end

------------------------------------------------------
-- 回避
------------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge = 370; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(SP_dodge+10);

do return end
else end

--playSe( 455-65, SE_09);
------------------------------------------------------
--隔離 (回避の挙動)
------------------------------------------------------
for cnt = 0, 78, 3 do --174
seid2=playSe( 359+cnt, SE_13);
setSeVolume(359+cnt, SE_13, 70 );
end

entryFade( spep_4+105, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
spep_5=spep_4+110;--370

setDisp( spep_5, 0, 0);
setDisp( spep_5, 1, 1);
changeAnime( spep_5, 1, 104);                        -- ガード
setMoveKey(  spep_5-1,    1,  235,  0,   0);
setMoveKey(  spep_5,    1,  235,  0,   0);
setMoveKey(  spep_5+1,    1,  235,  0,   0);
setScaleKey( spep_5-1,    1,  0.7, 0.7);
setScaleKey( spep_5,    1,  0.7, 0.7);

setMoveKey(  spep_5+40,    1,   120,  0,   0);
setScaleKey(  spep_5+40,   1,   1.6,  1.6);

--playSe( 390, 1043);

kamehame_beam2 = entryEffectLife( spep_5, SP_03, 70,  0x100, -1,  0,  0,  0);   -- 迫るかめはめ波
--setEffScaleKey(370, kamehame_beam2, 1, 1);
--setEffScaleKey(452-parX, kamehame_beam2, 1, 1);
--setEffScaleKey(454-parX, kamehame_beam2, 2.5, 2.5);
setDamage( spep_5+17, 1, 0);  -- ダメージ振動等

--speff = entryEffect( 370, 1506,   0,  -1,  0,  0,  0);    -- カットイン
--setEffReplaceTexture( speff, 6, 3);                       -- カットイン差し替え
--playSe( 370, SE_08);

-- 敵吹っ飛ぶモーション
changeAnime( spep_5+20, 1, 108);
entryEffectLife( spep_5+20, 10016, 10, 0x100, -1, 0, 60, 90); -- ズドドッ
setMoveKey(  spep_5+20, 1,  120,    0,  0);
--setMoveKey(  410-65, 1,  600,    0,  0); --謎の１行
setMoveKey(  spep_5+40, 1,  600,    0,  0);
setScaleKey( spep_5+17, 1,  1.5, 1.5);
setScaleKey( spep_5+20, 1,  1.6, 1.6);
setScaleKey( spep_5+38, 1,  0.2, 0.2);

-- ** エフェクト等 ** --
setShakeChara( spep_5, 1, 99, 20);

entryFadeBg( spep_5, 0, 99, 0, 10, 10, 10, 150);          -- ベース暗め　背景

ryusen = entryEffectLife( spep_5, 921, 39, 0x80,  -1,  0,  0,  0); -- 流線斜め

-- 書き文字エントリー
ct = entryEffectLife( spep_5, 10014, 39, 0x100, -1, 0, -100, 255); -- ズドドッ
setEffShake(spep_5, ct, 39, 20);
setEffScaleKey( spep_5, ct, 2.4, 2.4);
setEffRotateKey(spep_5, ct, 10);
setEffAlphaKey(spep_5, ct, 255);
setEffAlphaKey(spep_5+409, ct, 255);

entryFade( spep_5+30, 6,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
spep_6 = spep_5+40;

entryEffect( spep_6, SP_04, 0,  -1,  0,  0,  0);
entryEffect( spep_6, SP_05, 0,  -1,  0,  0,  0);  
setDisp( spep_6, 1, 1);
changeAnime( spep_6, 1, 5);


setMoveKey(  spep_6+1, 1,  0,  0,  -100);

entryEffect( spep_6+10, 2, 0x40+0x100, 1,  300,  -150,  100);
entryEffect( spep_6+16, 1, 0x40+0x100, 1,  300,  80,  -30);
entryFade( spep_6+13, 0, 8, 0, 255, 0, 0, 50);     -- red fade
setShakeChara( spep_6+10, 1, 3, 20);
setShakeChara( spep_6+16, 1, 3, 10);
--playSe( spep_5+13, 1008);

setMoveKey(  spep_6+20, 1,  0,  0,  -50);

entryEffect( spep_6+25, 3, 0x40+0x100, 1,  300,  70,  150);
entryEffect( spep_6+35, 2, 0x40+0x100, 1,  300,  -70,  -80);
entryFade( spep_6+35, 0, 8, 0, 255, 0, 0, 50);     -- red fade
setShakeChara( spep_6+25, 1, 3, 25);
setShakeChara( spep_6+35, 1, 3, 15);
playSe( spep_6+45, 1011);


setMoveKey(  spep_6+35, 1,  0,  0,  0);

entryEffect( spep_6+42, 1, 0x40+0x100, 1,  300,  -120,  30);
entryEffect( spep_6+46, 3, 0x40+0x100, 1,  300,  -120,  30);
entryFade( spep_6+50, 0, 8, 0, 255, 0, 0, 50);     -- red fade
setShakeChara( spep_6+42, 1, 3, 15);
setShakeChara( spep_6+46, 1, 3, 25);
--playSe( spep_5+66, 1011);


entryFade( spep_6+70, 0, 8, 0, 255, 0, 0, 50);     -- red fade
playSe( spep_6+92, 1008);

entryFade( spep_6+85, 0, 8, 0, 255, 0, 0, 50);     -- red fade

--playSe( spep_5+115, 1002);

playSe( spep_6+129, 1011);

setMoveKey(  spep_6+75, 1,  0,  0,  120);
setMoveKey(  spep_6+76, 1,  0,  900,  120);
setDisp( spep_6+70, 1, 0);

--setShake(spep_6, 140, 17);

playSe( spep_6, 1016);
playSe( spep_6+15, 1016);
playSe( spep_6+27, 1016);
playSe( spep_6+39, 1016);
playSe( spep_6+51, 1016);
playSe( spep_6+65, 1016);
playSe( spep_6+73, 1016);
playSe( spep_6+88, 1016);
playSe( spep_6+96, 1016);
playSe( spep_6+109, 1016);
playSe( spep_6+117, 1016);
playSe( spep_6+128, 1016);
playSe( spep_6+140, 1016);

-- 書き文字エントリー
ct = entryEffectLife( spep_6, 10014, 59, 0x100, -1, 0, -100, 255); -- ズドドッ
setEffShake(spep_6, ct, 59, 20);
setEffScaleKey( spep_6, ct, 2.4, 2.4);
setEffRotateKey(spep_6, ct, 10);
setEffAlphaKey(spep_6, ct, 255);
setEffAlphaKey(spep_6+49, ct, 255);
setEffAlphaKey(spep_6+59, ct, 0);

--playSe( spep_5+4, SE_07);
shuchusen = entryEffectLife( spep_6, 906, 140, 0x80,  -1, 0,  0,  0);   -- 集中線
--entryEffect( 473, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(spep_6+17);

entryFadeBg( spep_6+35, 40, 65, 0,255, 255, 255, 255);          -- ベース暗め　背景

entryFade( spep_6+130, 5,  10, 5, fcolor_r, fcolor_g, fcolor_b, 255);      -- white fade

endPhase(spep_6+136);

end
