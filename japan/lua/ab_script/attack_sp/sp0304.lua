

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
SP_05 = 190005;

multi_frm = 2;

--[[
changeAnime( 0, 0, 0);                       -- 立ち
setAnimeLoop( 0, 0, 1);  
setDisp( 0, 1, 0);
setDisp( 0, 0, 1);

setMoveKey(   0,   0,    0, -54,   0);
setMoveKey(   34,   0,    0, -54,   0);
setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   34,   0, 1.5, 1.5);
]]--

------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

spep_1 = 0;

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
setVisibleUI(spep_1, 0);

setDisp( spep_1, 1, 1);
changeAnime( spep_1, 0, 30); 
changeAnime( spep_1, 1, 102); 
setAnimeLoop( spep_1, 1, 1);

setMoveKey(  spep_1,    0,   -800,  -800,   0);
setMoveKey(  spep_1+50,    0,   -800,  -800,   0);
setMoveKey(  spep_1+70,    0,   0,  -54,   0);
setMoveKey(  spep_1+159,    0,   0,  -54,   0);

setScaleKey(  spep_1,  0,  0.3,  0.3);
setScaleKey(  spep_1+50,  0,  0.3,  0.3);
setScaleKey(  spep_1+70,  0,  2.0,  2.0);
setScaleKey(  spep_1+159,  0,  2.0,  2.0);

setMoveKey(  spep_1,    1,   25,  200,   0);
setMoveKey(  spep_1+30,    1,   25,  200,   0);
setMoveKey(  spep_1+50,    1,   900,  800,   0);
setMoveKey(  spep_1+159,    1,   900,  800,   0);

setScaleKey(  spep_1,  1,  1.5,  1.5);
setScaleKey(  spep_1+30,  1,  1.5,  1.5);
setScaleKey(  spep_1+50,  1,  5.0,  5.0);
setScaleKey(  spep_1+159,  1,  5.0,  5.0);
--setScaleKey(  spep_1+160,  1,  1.6,  1.6);

setRotateKey( spep_1, 1, -20); 
setRotateKey( spep_1+159, 1, -20); 

-- ** エフェクト等 ** --

playSe( spep_1+30, SE_04);
playSe( spep_1+90, SE_03);
playSe( spep_1+110, SE_03);
playSe( spep_1+130, SE_03);
playSe( spep_1+150, SE_03);

speff = entryEffect( spep_1+70,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect( spep_1+70,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( spep_1+70, SE_04);

entryFadeBg(spep_1, 0, 159, 0, 0, 0, 0, 255);       -- ベース暗め　背景

ryusen = entryEffectLife( spep_1, 921, 159, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey( spep_1, ryusen, 140);
setEffScaleKey( spep_1, ryusen, 2, 2);

jimen = entryEffectLife( spep_1,190005, 159,  0x40+0x80,  0,  300,  0,  -200);
setEffAlphaKey( spep_1, jimen, 255);
setEffScaleKey( spep_1, jimen, 0.3, 0.3);
setEffScaleKey( spep_1+50, jimen, 0.3, 0.3);
setEffScaleKey( spep_1+70, jimen, 1.0, 1.0);

aura = entryEffectLife(  spep_1,   311, 159, 0x40+0x100,  0,  300,  0,  -200); -- オーラ
setEffScaleKey( spep_1, aura, 0.3, 0.3);
setEffScaleKey( spep_1+50, aura, 0.3, 0.3);
setEffScaleKey( spep_1+70, aura, 1.7, 1.7);

-- 書き文字エントリー

ct = entryEffectLife( spep_1+70, 10008, 85, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake( spep_1+70, ct, 85, 8);
setEffScaleKey( spep_1+70, ct, 1.4, 1.4);

entryFade( spep_1+155, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_5 = spep_1+159;

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( spep_5,   0, 0.7, 0.7);--169
--setScaleKey( 1,   0, 1.0, 1.0);--170

playSe( spep_5, SE_05);--170
speff = entryEffect( spep_5,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

spname = entryEffectLife( spep_5, 1508, 90 ,0x00,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

entryFade( spep_5+85, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--entryFlash( (170+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
playSe( spep_5+75, SE_06);

spep_2 = spep_5+89;
------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
removeAllEffect( spep_2);

setDisp( spep_2, 1, 0);

changeAnime( spep_2, 0, 31);                                    -- かめはめ発射ポーズ
setScaleKey(  spep_2,  0,  1.0, 1.0);
setScaleKey(  spep_2+58,  0,  1.0, 1.0);

setMoveKey(  spep_2-1,    0,   0,  -54,   0);
setMoveKey(  spep_2,    0,      -50,  -100,   0);
--setMoveKey(  spep_2+10,    0,      -250,  -80,   0);
setMoveKey(  spep_2+25,    0,      -250,  -200,   -30);

sen2 = entryEffectLife( spep_2, 921, 60, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_2, sen2, -50);
setEffScaleKey( spep_2, sen2, 1.8, 1.8);

setShakeChara( spep_2, 0, 60, 30);
setShake( spep_2, 60, 20);


kamehame_beam_st = entryEffectLife( spep_2, SP_02, 44, 0x40+0x80,  0,  300,  200,  250);   -- 伸びるかめはめ波oku
setEffScaleKey( spep_2, kamehame_beam_st, 1.5, 1.5);

kamehame_beam = entryEffectLife( spep_2, SP_02, 60, 0x40+0x100,  0,  300,  200,  250);   -- 伸びるかめはめ波temae
setEffScaleKey( spep_2, kamehame_beam, 1.5, 1.5);

setEffRotateKey(spep_2, kamehame_beam_st, -7);
setEffRotateKey(spep_2, kamehame_beam, -7);

setEffAlphaKey(spep_2, kamehame_beam, 0);
setEffAlphaKey(spep_2+44, kamehame_beam, 0);
setEffAlphaKey(spep_2+45, kamehame_beam, 255);

playSe( spep_2, SE_07);

--spname = entryEffect( spep_2, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
--setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 途中からカメハメハが伸びる 
setMoveKey(  spep_2+30,    0,   -550,  -450,   -60); --650
setMoveKey(  spep_2+60,    0,   -1400,  -950,   -90); --1000 600
setDisp( spep_2+60, 0, 0);


-- 相手が画面に現れる
--[[
setDisp( spep_2+40, 1, 1);
changeAnime( spep_2+40, 1, 100);                        -- 敵　気ダメ後ろ
setScaleKey(  spep_2+60,   1,   1.6,  1.6);
setMoveKey(  spep_2+40,    1,  500,  650,   0);
--setMoveKey(  spep_2+50,    1,  150,  380,   -10);
setMoveKey(  spep_2+60,    1,  150,  380,   0);
]]--

--entryFade( spep_2+45, 3, 3, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --

aura = entryEffectLife(  spep_2,   311, 150, 0x40+0x100,  0,  300,  0,  -230); -- オーラ
setEffScaleKey( spep_1+65, aura, 1.7, 1.7);

entryFadeBg( spep_2, 0, 109, 0, 10, 10, 10, 180);       -- ベース暗め　背景
entryFadeBg( spep_2, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
entryFadeBg( spep_2+40, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景


shuchusen = entryEffectLife( spep_2-1, 906, 109, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffRotateKey(spep_2-1, shuchusen, 145);
setEffScaleKey( spep_2-1, shuchusen, 2.8, 2.8);

--entryFlash( (spep_2+10), 1,  fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_2+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_2+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_2+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_2+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_2+80), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_2+92), 1, fcolor_r, fcolor_g, fcolor_b, 200);

-- 書き文字エントリー
ct = entryEffectLife( spep_2+8, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(spep_2+8, ct, 32, 5);
setEffAlphaKey(spep_2+8, ct, 255);
setEffAlphaKey(spep_2+30, ct, 255);
setEffAlphaKey(spep_2+40, ct, 0);
setEffScaleKey(spep_2+8, ct, 0.0, 0.0);
setEffScaleKey(spep_2+12, ct, 1.3, 1.3);
setEffScaleKey(spep_2+32, ct, 1.3, 1.3);
setEffScaleKey(spep_2+40, ct, 6.0, 6.0);
playSe( spep_2+40, SE_07);

entryFade( spep_2+55, 5,  5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_3=spep_2+60 --311 370

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
setDisp( spep_3, 0, 0);
setDisp( spep_3, 1, 1);
changeAnime( spep_3, 1, 118);                        -- 気ダメ後ろ
setAnimeLoop( spep_3, 1, 1);
setRotateKey( spep_3, 1, -20); 
setMoveKey(  spep_3,  1,  500,  350,   0);
setMoveKey(  spep_3+15,  1,  200,  180,   0);
setMoveKey(  spep_3+35,  1,  200,  180,   0);

setDisp( spep_3+35, 1, 0);
setScaleKey( spep_3, 1,  2.5, 2.5);
setScaleKey( spep_3+35, 1,  2.5, 2.5);

--setMoveKey(  spep_3+30,    1,   80,  150,   0);
--setScaleKey(  spep_3+30,   1,   1.6,  1.6);

playSe( spep_3+20, SE_06);

entryFade( spep_3+34, 2,  5, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--setDisp( spep_3+50, 1, 0);

ryusen = entryEffectLife( spep_3-1, 921, 50, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey(spep_3-1, ryusen, 100);
setEffScaleKey( spep_3-1, ryusen, 1.6, 1.6);

kamehame_beam2 = entryEffect( spep_3, SP_03,   0x80, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey(spep_3, kamehame_beam2, 1, 1);
setEffScaleKey(spep_3+50, kamehame_beam2, 1, 1);
--setEffScaleKey(spep_3+84, kamehame_beam2, 2.5, 2.5);
--setDamage( spep_3+50, 1, 0);  -- ダメージ振動等

--speff = entryEffect( spep_3, 1506,   0,  -1,  0,  0,  0);    -- カットイン
--setEffReplaceTexture( speff, 6, 3);                       -- カットイン差し替え
--playSe( spep_3, SE_08);

--playSe( spep_3+85, SE_09);
-- 敵吹っ飛ぶモーション
--[[
changeAnime( spep_3+85, 1, 108);
setMoveKey(  spep_3+85, 1,  120,    -150,  0);
setMoveKey(  spep_3+99, 1,  400,    0,  0);
setScaleKey( spep_3+85, 1,  1.6, 1.6);
setScaleKey( spep_3+88, 1,  1.5, 1.5);
setScaleKey( spep_3+98, 1,  0.2, 0.2);
]]--
-- ** エフェクト等 ** --
setShakeChara( spep_3, 1, 99, 20);

entryFadeBg( spep_3, 0, 50, 0,0, 0, 0, 255);          -- ベース暗め　背景

--entryFlash( (spep_3+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_3+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_3+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_3+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_3+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_3+80), 1, fcolor_r, fcolor_g, fcolor_b, 200);

-- 書き文字エントリー
ct = entryEffectLife( spep_3, 10014, 40, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(spep_3, ct, 99, 20);
setEffScaleKey( spep_3, ct, 2.4, 2.4);
setEffRotateKey(spep_3, ct, 70);
setEffAlphaKey(spep_3, ct, 255);
setEffAlphaKey(spep_3+40, ct, 255);
--setEffAlphaKey(spep_3+50, ct, 0);

ct = entryEffectLife( spep_3+45, 10006, 45, 0x80, -1, 0, 0, 255); -- ギャン
setEffShake(spep_3+45, ct, 99, 20);
setEffScaleKey( spep_3+45, ct, 0.1, 0.1);
setEffScaleKey( spep_3+77, ct, 2.4, 2.4);
setEffScaleKey( spep_3+90, ct, 2.8, 2.8);
setEffAlphaKey(spep_3+45, ct, 255);
setEffAlphaKey(spep_3+70, ct, 255);
setEffAlphaKey(spep_3+90, ct, 0);

playSe( spep_3+48, 1024);

entryFade( spep_3+92, 5, 10, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp( spep_3+90, 1, 0);

removeAllEffect( spep_3+95);


------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 338; --エンドフェイズのフレーム数を置き換える

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

spep_4= spep_3+92+10 --410 469
------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

bakuhatu = entryEffect( spep_4, SP_04, 0,  -1,  0,  0,  0);  
setEffScaleKey( spep_4, bakuhatu, -1.0, 1.0);
setDisp( spep_4, 1, 0);

playSe( spep_4+4, SE_07);
shuchusen = entryEffectLife( spep_4+4, 906, 116, 0x00,  -1, 0,  0,  0);   -- 集中線
--entryEffect( 473, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(spep_4+17);

entryFade( spep_4+110, 5,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_4+120);

else


spep_1 = 0;

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
setVisibleUI(spep_1, 0);

setDisp( spep_1, 1, 1);
changeAnime( spep_1, 0, 30); 
changeAnime( spep_1, 1, 102); 
setAnimeLoop( spep_1, 1, 1);

setMoveKey(  spep_1,    0,   -800,  -800,   0);
setMoveKey(  spep_1+50,    0,   -800,  -800,   0);
setMoveKey(  spep_1+70,    0,   0,  -54,   0);
setMoveKey(  spep_1+159,    0,   0,  -54,   0);

setScaleKey(  spep_1,  0,  0.3,  0.3);
setScaleKey(  spep_1+50,  0,  0.3,  0.3);
setScaleKey(  spep_1+70,  0,  2.0,  2.0);
setScaleKey(  spep_1+159,  0,  2.0,  2.0);

setMoveKey(  spep_1,    1,   25,  200,   0);
setMoveKey(  spep_1+30,    1,   25,  200,   0);
setMoveKey(  spep_1+50,    1,   900,  800,   0);
setMoveKey(  spep_1+159,    1,   900,  800,   0);

setScaleKey(  spep_1,  1,  1.5,  1.5);
setScaleKey(  spep_1+30,  1,  1.5,  1.5);
setScaleKey(  spep_1+50,  1,  5.0,  5.0);
setScaleKey(  spep_1+159,  1,  5.0,  5.0);
--setScaleKey(  spep_1+160,  1,  1.6,  1.6);

setRotateKey( spep_1, 1, -20); 
setRotateKey( spep_1+159, 1, -20); 

-- ** エフェクト等 ** --

playSe( spep_1+30, SE_04);
playSe( spep_1+90, SE_03);
playSe( spep_1+110, SE_03);
playSe( spep_1+130, SE_03);
playSe( spep_1+150, SE_03);

--[[
speff = entryEffect( spep_1+70,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect( spep_1+70,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
]]--

playSe( spep_1+70, SE_04);

entryFadeBg(spep_1, 0, 159, 0, 0, 0, 0, 255);       -- ベース暗め　背景

ryusen = entryEffectLife( spep_1, 921, 159, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey( spep_1, ryusen, 140);
setEffScaleKey( spep_1, ryusen, 2, 2);

jimen = entryEffectLife( spep_1,190005, 159,  0x40+0x80,  0,  300,  0,  -200);
setEffAlphaKey( spep_1, jimen, 255);
setEffScaleKey( spep_1, jimen, 0.3, 0.3);
setEffScaleKey( spep_1+50, jimen, 0.3, 0.3);
setEffScaleKey( spep_1+70, jimen, 1.0, 1.0);

aura = entryEffectLife(  spep_1,   311, 159, 0x40+0x100,  0,  300,  0,  -200); -- オーラ
setEffScaleKey( spep_1, aura, 0.3, 0.3);
setEffScaleKey( spep_1+50, aura, 0.3, 0.3);
setEffScaleKey( spep_1+70, aura, 1.7, 1.7);

-- 書き文字エントリー

ct = entryEffectLife( spep_1+70, 10008, 85, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake( spep_1+70, ct, 85, 8);
setEffScaleKey( spep_1+70, ct, 1.4, 1.4);

entryFade( spep_1+155, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_5 = spep_1+159;

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( spep_5,   0, 0.7, 0.7);--169
--setScaleKey( 1,   0, 1.0, 1.0);--170

playSe( spep_5, SE_05);--170
speff = entryEffect( spep_5,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

spname = entryEffectLife( spep_5, 1508, 90 ,0x00,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

entryFade( spep_5+85, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--entryFlash( (170+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
playSe( spep_5+75, SE_06);

spep_2 = spep_5+89;
------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
removeAllEffect( spep_2);

setDisp( spep_2, 1, 0);

changeAnime( spep_2, 0, 31);                                    -- かめはめ発射ポーズ
setScaleKey(  spep_2,  0,  1.0, 1.0);
setScaleKey(  spep_2+58,  0,  1.0, 1.0);

setMoveKey(  spep_2-1,    0,   0,  -54,   0);
setMoveKey(  spep_2,    0,      -50,  -100,   0);
--setMoveKey(  spep_2+10,    0,      -250,  -80,   0);
setMoveKey(  spep_2+25,    0,      -250,  -200,   -30);

sen2 = entryEffectLife( spep_2, 921, 60, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_2, sen2, -50);
setEffScaleKey( spep_2, sen2, 1.8, 1.8);

setShakeChara( spep_2, 0, 60, 30);
setShake( spep_2, 60, 20);


kamehame_beam_st = entryEffectLife( spep_2, SP_02, 44, 0x40+0x80,  0,  300,  200,  250);   -- 伸びるかめはめ波oku
setEffScaleKey( spep_2, kamehame_beam_st, 1.5, 1.5);

kamehame_beam = entryEffectLife( spep_2, SP_02, 60, 0x40+0x100,  0,  300,  200,  250);   -- 伸びるかめはめ波temae
setEffScaleKey( spep_2, kamehame_beam, 1.5, 1.5);

setEffRotateKey(spep_2, kamehame_beam_st, -7);
setEffRotateKey(spep_2, kamehame_beam, -7);

setEffAlphaKey(spep_2, kamehame_beam, 0);
setEffAlphaKey(spep_2+44, kamehame_beam, 0);
setEffAlphaKey(spep_2+45, kamehame_beam, 255);

playSe( spep_2, SE_07);

--spname = entryEffect( spep_2, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
--setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 途中からカメハメハが伸びる 
setMoveKey(  spep_2+30,    0,   -550,  -450,   -60); --650
setMoveKey(  spep_2+60,    0,   -1400,  -950,   -90); --1000 600
setDisp( spep_2+60, 0, 0);


-- 相手が画面に現れる
--[[
setDisp( spep_2+40, 1, 1);
changeAnime( spep_2+40, 1, 100);                        -- 敵　気ダメ後ろ
setScaleKey(  spep_2+60,   1,   1.6,  1.6);
setMoveKey(  spep_2+40,    1,  500,  650,   0);
--setMoveKey(  spep_2+50,    1,  150,  380,   -10);
setMoveKey(  spep_2+60,    1,  150,  380,   0);
]]--

--entryFade( spep_2+45, 3, 3, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --

aura = entryEffectLife(  spep_2,   311, 150, 0x40+0x100,  0,  300,  0,  -230); -- オーラ
setEffScaleKey( spep_1+65, aura, 1.7, 1.7);

entryFadeBg( spep_2, 0, 109, 0, 10, 10, 10, 180);       -- ベース暗め　背景
entryFadeBg( spep_2, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
entryFadeBg( spep_2+40, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景


shuchusen = entryEffectLife( spep_2-1, 906, 109, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffRotateKey(spep_2-1, shuchusen, 145);
setEffScaleKey( spep_2-1, shuchusen, 2.8, 2.8);

--entryFlash( (spep_2+10), 1,  fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_2+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_2+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_2+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_2+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_2+80), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_2+92), 1, fcolor_r, fcolor_g, fcolor_b, 200);

-- 書き文字エントリー
ct = entryEffectLife( spep_2+8, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(spep_2+8, ct, 32, 5);
setEffAlphaKey(spep_2+8, ct, 255);
setEffAlphaKey(spep_2+30, ct, 255);
setEffAlphaKey(spep_2+40, ct, 0);
setEffScaleKey(spep_2+8, ct, 0.0, 0.0);
setEffScaleKey(spep_2+12, ct, 1.3, 1.3);
setEffScaleKey(spep_2+32, ct, 1.3, 1.3);
setEffScaleKey(spep_2+40, ct, 6.0, 6.0);
playSe( spep_2+40, SE_07);

entryFade( spep_2+55, 5,  5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_3=spep_2+60 --311 370

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
setDisp( spep_3, 0, 0);
setDisp( spep_3, 1, 1);
changeAnime( spep_3, 1, 118);                        -- 気ダメ後ろ
setAnimeLoop( spep_3, 1, 1);
setRotateKey( spep_3, 1, -20); 
setMoveKey(  spep_3,  1,  500,  350,   0);
setMoveKey(  spep_3+15,  1,  200,  180,   0);
setMoveKey(  spep_3+35,  1,  200,  180,   0);

setDisp( spep_3+35, 1, 0);
setScaleKey( spep_3, 1,  2.5, 2.5);
setScaleKey( spep_3+35, 1,  2.5, 2.5);

--setMoveKey(  spep_3+30,    1,   80,  150,   0);
--setScaleKey(  spep_3+30,   1,   1.6,  1.6);

playSe( spep_3+20, SE_06);

entryFade( spep_3+34, 2,  5, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--setDisp( spep_3+50, 1, 0);

ryusen = entryEffectLife( spep_3-1, 921, 50, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey(spep_3-1, ryusen, 100);
setEffScaleKey( spep_3-1, ryusen, 1.6, 1.6);

kamehame_beam2 = entryEffect( spep_3, SP_03,   0x80, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey(spep_3, kamehame_beam2, 1, 1);
setEffScaleKey(spep_3+50, kamehame_beam2, 1, 1);
--setEffScaleKey(spep_3+84, kamehame_beam2, 2.5, 2.5);
--setDamage( spep_3+50, 1, 0);  -- ダメージ振動等

--speff = entryEffect( spep_3, 1506,   0,  -1,  0,  0,  0);    -- カットイン
--setEffReplaceTexture( speff, 6, 3);                       -- カットイン差し替え
--playSe( spep_3, SE_08);

--playSe( spep_3+85, SE_09);
-- 敵吹っ飛ぶモーション
--[[
changeAnime( spep_3+85, 1, 108);
setMoveKey(  spep_3+85, 1,  120,    -150,  0);
setMoveKey(  spep_3+99, 1,  400,    0,  0);
setScaleKey( spep_3+85, 1,  1.6, 1.6);
setScaleKey( spep_3+88, 1,  1.5, 1.5);
setScaleKey( spep_3+98, 1,  0.2, 0.2);
]]--
-- ** エフェクト等 ** --
setShakeChara( spep_3, 1, 99, 20);

entryFadeBg( spep_3, 0, 50, 0,0, 0, 0, 255);          -- ベース暗め　背景

--entryFlash( (spep_3+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_3+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_3+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_3+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_3+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_3+80), 1, fcolor_r, fcolor_g, fcolor_b, 200);

-- 書き文字エントリー
ct = entryEffectLife( spep_3, 10014, 40, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(spep_3, ct, 99, 20);
setEffScaleKey( spep_3, ct, 2.4, 2.4);
setEffRotateKey(spep_3, ct, -70);
setEffAlphaKey(spep_3, ct, 255);
setEffAlphaKey(spep_3+40, ct, 255);
--setEffAlphaKey(spep_3+50, ct, 0);

ct = entryEffectLife( spep_3+45, 10006, 45, 0x80, -1, 0, 0, 255); -- ギャン
setEffShake(spep_3+45, ct, 99, 20);
setEffScaleKey( spep_3+45, ct, 0.1, 0.1);
setEffScaleKey( spep_3+77, ct, 2.4, 2.4);
setEffScaleKey( spep_3+90, ct, 2.8, 2.8);
setEffAlphaKey(spep_3+45, ct, 255);
setEffAlphaKey(spep_3+70, ct, 255);
setEffAlphaKey(spep_3+90, ct, 0);

playSe( spep_3+48, 1024);

entryFade( spep_3+92, 5, 10, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp( spep_3+90, 1, 0);

removeAllEffect( spep_3+95);


------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 338; --エンドフェイズのフレーム数を置き換える

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

spep_4= spep_3+92+10 --410 469
------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

bakuhatu = entryEffect( spep_4, SP_04, 0,  -1,  0,  0,  0);  
setEffScaleKey( spep_4, bakuhatu, -1.0, 1.0);
setDisp( spep_4, 1, 0);

playSe( spep_4+4, SE_07);
shuchusen = entryEffectLife( spep_4+4, 906, 116, 0x00,  -1, 0,  0,  0);   -- 集中線
--entryEffect( 473, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(spep_4+17);

entryFade( spep_4+110, 5,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_4+120);

end
