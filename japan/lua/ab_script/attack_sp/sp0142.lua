
fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

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

tyo = -40;
tyo2 = -60;

SP_01 = 102042; --(120F)
SP_02 = 102043; --(120F)
SP_03 = 102044; --(100F)
SP_04 = 1553; --(122F)


------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI(0, 0);

changeAnime( 0, 0, 0);                       -- 立ち
changeAnime( 0, 1, 101);                       -- 立ち
setDisp( 0, 1, 0);
setDisp( 0, 0, 1);

setMoveKey(   0,   0,    0, -54,   0);
setMoveKey(   1,   0,    0, -54,   0);
setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   1,   0, 1.5, 1.5);

-- 敵
setMoveKey(   0,   1,    -5000,  -5000,  0);
setMoveKey(   1,   1,    -5000,  -5000,  0);
setMoveKey(   2,   1,    -5000,  -5000,  0);
setMoveKey(   3,   1,    -5000,  -5000,  0);
setMoveKey(   4,   1,    -5000,  -5000,  0);
setMoveKey(   5,   1,    -5000,  -5000,  0);
setMoveKey(   6,   1,    -5000,  -5000,  0);
setScaleKey(   1,   1, 1.5, 1.5);
setScaleKey(   2,   1, 1.5, 1.5);
setScaleKey(   3,   1, 1.5, 1.5);
setScaleKey(   4,   1, 1.5, 1.5);
setScaleKey(   5,   1, 1.5, 1.5);
setScaleKey(   6,   1, 1.5, 1.5);
setVisibleUI( 0, 0);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then
------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------

--気を貯める
--         frame, eff, atr,tgt, tag,  x, y
changeAnime(  30, 0, 17);                       -- 溜め!
entryEffect(  30,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
entryEffect(  30,   1500,   0,    -1,  0,  0,  0);    -- eff_001
playSe( 30, SE_01);
setQuake(30,39,15);

entryFade( 61, 4, 6, 8, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  30,  311, 40, 0x80,  -1,  0,  0,  -200); -- オーラ
setEffShake(30, aura, 40, 7);
setEffMoveKey(30, aura, 0, -200);
setEffMoveKey(70, aura, 0, -200);
setEffRotateKey(30, aura, 0);
setEffRotateKey(70, aura, 0);
setEffScaleKey(30, aura, 1.5, 1.5);
setEffScaleKey(70, aura, 1.5, 1.5);
setEffAlphaKey(30, aura, 255);
setEffAlphaKey(70, aura, 255);

setShakeChara( 30, 0, 19, 5);

-- 書き文字エントリー
ctZuzu = entryEffectLife( 30, 10013, 40, 0, -1, 0, 0, 200); -- ズズンッ
setEffShake(30, ctZuzu, 40, 7);
setEffMoveKey(30, ctZuzu, 0, 200);
setEffMoveKey(70, ctZuzu, 0, 200);
setEffRotateKey(30, ctZuzu, 0);
setEffRotateKey(70, ctZuzu, 0);
setEffScaleKey(30, ctZuzu, 0.1, 0.1);
setEffScaleKey(40, ctZuzu, 2.0, 2.0);
setEffScaleKey(70, ctZuzu, 2.0, 2.0);
setEffAlphaKey(30, ctZuzu, 255);
setEffAlphaKey(50, ctZuzu, 255);
setEffAlphaKey(70, ctZuzu, 0);
playSe( 30, SE_02);

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------

changeAnime( 70, 0, 30);                       -- 溜め!
playSe( 73, SE_03);

entryEffect(  70,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect(  70,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
speff = entryEffect(  80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( 80, SE_04);

entryFade( 163, 3, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura2 = entryEffectLife(  70,   311, 100, 0x40,  0,  1,  0,  0); -- オーラ
setShakeChara( 70, 0, 100, 5);
setEffShake(70, aura2, 100, 7);
setEffMoveKey(70, aura2, 0,  0);
setEffMoveKey(170, aura2, 0,  0);
setEffRotateKey(70, aura2, 0);
setEffRotateKey(170, aura2, 0);
setEffScaleKey(70, aura2, 1.5, 1.5);
setEffScaleKey(170, aura2, 1.5, 1.5);
setEffAlphaKey(70, aura2, 255);
setEffAlphaKey(170, aura2, 255);

kame_hand = entryEffect( 70, SP_01, 0x40,  0,  300,  0,  0);   -- 手のカメハメ波部
setEffMoveKey(70, kame_hand, 0, 0);
setEffMoveKey(190, kame_hand, 0, 0);
setEffScaleKey(70, kame_hand, 1.0, 1.0);
setEffScaleKey(190, kame_hand, 1.0, 1.0);
setEffRotateKey(70, kame_hand, 0);
setEffRotateKey(190, kame_hand, 0);
setEffAlphaKey(70, kame_hand, 255);
setEffAlphaKey(190, kame_hand, 255);
--setEffScaleKey( 70, kame_hand, 0.5, 0.5);

-- 書き文字エントリー
ctGo = entryEffectLife( 90, 10008, 60, 0x100, 0, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(90, ctGo, 60, 8);
setEffMoveKey(90, ctGo, -190, 300);
setEffMoveKey(150, ctGo, -190, 300);
setEffScaleKey(90, ctGo, 1.4, 1.4);
setEffScaleKey(150, ctGo, 1.4, 1.4);
setEffRotateKey(90, ctGo, 0);
setEffRotateKey(150, ctGo, 0);
setEffAlphaKey(90, ctGo, 255);
setEffAlphaKey(150, ctGo, 255);


------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( 169,   0, 1.5, 1.5);
setScaleKey( 170,   0, 1.0, 1.0);


if (_SPECIAL_SKILL_LEVEL_ == 0) then
print ("_SPECIAL_SKILL_LEVEL_ == 0");
playSe( 170, SE_05);
speff = entryEffect( 170,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
print ("_SPECIAL_SKILL_LEVEL_ == 1");
playSe( 170, SE_05);
speff = entryEffect( 170, 1120, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( 170, SE_05);
speff = entryEffect( 170, 1121, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end


entryFade( 255, 3, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--entryFlash( (170+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
playSe( 170+64, SE_06);
------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
changeAnime( 260, 0, 31);                                    -- かめはめ発射ポーズ
--[[
setMoveKey(  259,    0,      0,  0,   0);
setMoveKey(  260,    0,   -600,  0,   0);
setMoveKey(  261,    0,   -600,  0,   0);
setMoveKey(  270,    0,   -100,  0,   0);
--]]
setMoveKey(  259,    0,      0,  0,   0);
setMoveKey(  270,    0,      0,  0,   0);
setMoveKey(  290,    0,   -30,  0,   20);

kamehame_beam = entryEffectLife( 260, SP_02, 110, 0x40,  0,  300,  0,  0);   -- 伸びるかめはめ波
setEffMoveKey(260, kamehame_beam, 0, 0);
setEffMoveKey(370, kamehame_beam, 0, 0);
setEffScaleKey(260, kamehame_beam, 1.0, 1.0);
setEffScaleKey(370, kamehame_beam, 1.0, 1.0);
setEffRotateKey(260, kamehame_beam, 0);
setEffRotateKey(370, kamehame_beam, 0);
setEffAlphaKey(260, kamehame_beam, 255);
setEffAlphaKey(370, kamehame_beam, 255);

playSe( 260, SE_07);

--spname = entryEffect( 260, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
--setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 途中からカメハメハが伸びる
--setMoveKey(  299,    0,   -100,  0,   0);
--setMoveKey(  300,    0,   -100,  0,   0);
--setMoveKey(  308,    0,   -1100,  0,   0);
setMoveKey(  300,    0,   -150,  0,   50);
setMoveKey(  305,    0,   -600,  0,   85);
--setMoveKey(  308,    0,   -1100,  0,   0);


entryFade( 365, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
entryFadeBg( 260, 0, 109, 0, 0, 0, 0, 255);       -- ベース暗め　背景
entryFadeBg( 260, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
--entryFadeBg( 300, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景
entryFadeBg( 300, 0, 2, 8, 0, 0, 0, 250);     -- 青い　背景

ryusen = entryEffectLife( 260, 921, 110, 0x80,  -1,  0,  0,  0); -- 流線
setEffMoveKey(260, ryusen, 0, 0);
setEffMoveKey(370, ryusen, 0, 0);
setEffScaleKey(260, ryusen, 1.3, 1.3);
setEffScaleKey(370, ryusen, 1.3, 1.3);
setEffRotateKey(260, ryusen, 190);
setEffRotateKey(370, ryusen, 190);
setEffAlphaKey(260, ryusen, 255);
setEffAlphaKey(370, ryusen, 255);

setShakeChara( 305, 0, 54, 50);

shuchusen = entryEffectLife( 260, 906, 50, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey(260, shuchusen, 0, 0);
setEffMoveKey(310, shuchusen, 0, 0);
setEffScaleKey( 260, shuchusen, 1.0, 1.0);
setEffScaleKey( 300, shuchusen, 1.0, 1.0);
setEffScaleKey( 310, shuchusen, 2.0, 2.0);
setEffRotateKey(260, shuchusen, 0);
setEffRotateKey(310, shuchusen, 0);
setEffAlphaKey(260, shuchusen, 255);
setEffAlphaKey(310, shuchusen, 255);

--entryFlash( (260+10), 1,  fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+80), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+92), 1, fcolor_r, fcolor_g, fcolor_b, 200);

-- 書き文字エントリー
ctZuo = entryEffectLife( 268, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(268, ctZuo, 32, 5);
setEffMoveKey(268, ctZuo, 200, 300);
setEffMoveKey(300, ctZuo, 200, 300);
setEffAlphaKey(268, ctZuo, 255);
setEffAlphaKey(290, ctZuo, 255);
setEffAlphaKey(300, ctZuo, 0);
setEffScaleKey(268, ctZuo, 0.0, 0.0);
setEffScaleKey(272, ctZuo, 1.3, 1.3);
setEffScaleKey(292, ctZuo, 1.3, 1.3);
setEffScaleKey(300, ctZuo, 6.0, 6.0);
SE0=playSe( 300, SE_07);
entryFade( 355, 10,  5, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
setDisp( 370, 0, 0);
setDisp( 370, 1, 1);
changeAnime( 370, 1, 104);                        -- ガード
setMoveKey(  369,    1,  235,  0,   0);
setMoveKey(  370,    1,  235,  0,   0);
setMoveKey(  371,    1,  235,  0,   0);
setScaleKey( 369,    1,  0.7, 0.7);
setScaleKey( 370,    1,  0.7, 0.7);

setMoveKey(  400,    1,   120,  0,   0);
setScaleKey(  400,   1,   1.6,  1.6);

kamehame_beam2 = entryEffect( 370, SP_03, 0x100, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffMoveKey(370, kamehame_beam2, 0, 0);
setEffMoveKey(470, kamehame_beam2, 0, 0);
setEffScaleKey(370, kamehame_beam2, 1, 1);
setEffScaleKey(410, kamehame_beam2, 1, 1);
setEffScaleKey(433, kamehame_beam2, 2.5, 2.5);
setEffScaleKey(470, kamehame_beam2, 2.5, 2.5);
setEffRotateKey(370, kamehame_beam2, 0);
setEffRotateKey(470, kamehame_beam2, 0);
setEffAlphaKey(370, kamehame_beam2, 255);
setEffAlphaKey(470, kamehame_beam2, 255);

setShake( 370, 63, 13);
setShake( 433, 38, 21);
setDamage( 452, 1, 0);  -- ダメージ振動等

--speff = entryEffect( 370, 1506,   0,  -1,  0,  0,  0);    -- カットイン
--setEffReplaceTexture( speff, 6, 3);                       -- カットイン差し替え
--playSe( 370, SE_08);

-- 敵吹っ飛ぶモーション
changeAnime( 432, 1, 108);
setDisp(460, 1, 0);
setMoveKey(  432, 1,  120,    0,  0);
setMoveKey(  460, 1,  400,    0,  0);
setScaleKey( 432, 1,  1.6, 1.6);
setScaleKey( 435, 1,  1.5, 1.5);
setScaleKey( 460, 1,  0.2, 0.2);

-- ** エフェクト等 ** --
setShakeChara( 370, 1, 99, 20);

entryFadeBg( 370, 0, 99, 0,0, 0, 0, 255);          -- ベース暗め　背景

entryEffectLife( 370, 921, 99, 0x80,  -1,  0,  0,  0); -- 流線斜め

--entryFlash( (370+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+80), 1, fcolor_r, fcolor_g, fcolor_b, 200);

-- 書き文字エントリー
ctZud = entryEffectLife( 370, 10014, 80, 0x100, -1, 0, -100, 255); -- ズドドッ
setEffShake(370, ctZud, 99, 20);
setEffMoveKey(370, ctZud, -100, 255);
setEffMoveKey(450, ctZud, -100, 255);
setEffScaleKey(370, ctZud, 2.4, 2.4);
setEffScaleKey(450, ctZud, 2.4, 2.4);
setEffRotateKey(370, ctZud, 70);
setEffRotateKey(450, ctZud, 70);
setEffAlphaKey(370, ctZud, 255);
setEffAlphaKey(430, ctZud, 255);
setEffAlphaKey(450, ctZud, 0);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 384; --エンドフェイズのフレーム数を置き換える

stopSe( SP_dodge-10, SE0,0);
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

playSe( 390, SE_06);

playSe( 455, SE_09);

entryFade( 452, 6,  17, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
--爆発( SP_ATK+110F)
------------------------------------------------------
--abc = 30
SP_ATK = 470

bomb = entryEffect( SP_ATK,SP_04,0x100,-1,0,0,0);
setEffMoveKey(SP_ATK, bomb, 0, 0);
setEffMoveKey(SP_ATK+122, bomb, 0, 0);
setEffScaleKey(SP_ATK, bomb, 1.0, 1.0);
setEffScaleKey(SP_ATK+122, bomb, 1.0, 1.0);
setEffRotateKey(SP_ATK, bomb, 0);
setEffRotateKey(SP_ATK+122, bomb, 0);
setEffAlphaKey(SP_ATK, bomb, 255);
setEffAlphaKey(SP_ATK+122, bomb, 255);
--setDisp( SP_ATK+469+abc,1,1);

--書き文字エントリー
--[[
ct=entryEffectLife( SP_ATK+16,10018,100,0,-1,0,-50,230);--ガッ
setEffShake( SP_ATK+16,ct,30,10);
setEffRotateKey( SP_ATK+16,ct,-40);
setEffScaleKey( SP_ATK+16,ct,4.0,4.0);
setEffScaleKey( SP_ATK+17,ct,2.0,2.0);
setEffScaleKey( SP_ATK+18,ct,2.6,2.6);
setEffScaleKey( SP_ATK+19,ct,4.0,4.0);
setEffScaleKey( SP_ATK+20,ct,2.6,2.6);
setEffScaleKey( SP_ATK+21,ct,3.8,3.8);
setEffScaleKey( SP_ATK+111,ct,3.8,3.8);
setEffAlphaKey( SP_ATK+16,ct,255);
setEffAlphaKey( SP_ATK+101,ct,255);
setEffAlphaKey( SP_ATK+111,ct,0);
--]]
playSe( SP_ATK+4,SE_10);
shuchusen2 = entryEffectLife( SP_ATK+4,906,106,0x80,-1,0,0,0);--集中線
setEffMoveKey(SP_ATK+4, shuchusen2, 0, 0);
setEffMoveKey(SP_ATK+110, shuchusen2, 0, 0);
setEffScaleKey( SP_ATK+4, shuchusen2, 1.0, 1.0);
setEffScaleKey( SP_ATK+110, shuchusen2, 1.0, 1.0);
setEffRotateKey(SP_ATK+4, shuchusen2, 0);
setEffRotateKey(SP_ATK+110, shuchusen2, 0);
setEffAlphaKey(SP_ATK+4, shuchusen2, 255);
setEffAlphaKey(SP_ATK+110, shuchusen2, 255);
--entryEffect( SP_ATK+4,1600,0x00,-1,0,30,-130);--ひび割れ

--ダメージ表示
dealDamage( SP_ATK+17 -10);

--entryFade( SP_ATK+101,8,10,1,8,8,8,255);--blackfade

endPhase( SP_ATK+111 -10);

else

------------------------------------------------------
-- 気溜め( tyo+40F)
------------------------------------------------------
--気を貯める
--         frame, eff, atr,tgt, tag,  x, y
changeAnime(  30, 0, 17);                       -- 溜め!
entryEffect(  30,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
entryEffect(  30,   1500,   0,    -1,  0,  0,  0);    -- eff_001
playSe( 30, SE_01);
setQuake(30,39,15);

entryFade( 61, 4, 6, 8, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  30,   311, 40, 0x80,  -1,  0,  0,  -200); -- オーラ
setEffShake(30, aura, 40, 7);
setEffMoveKey(30, aura, 0, -200);
setEffMoveKey(70, aura, 0, -200);
setEffRotateKey(30, aura, 0);
setEffRotateKey(70, aura, 0);
setEffScaleKey(30, aura, 1.5, 1.5);
setEffScaleKey(70, aura, 1.5, 1.5);
setEffAlphaKey(30, aura, 255);
setEffAlphaKey(70, aura, 255);
	
setShakeChara( 30, 0, 19, 5);

-- 書き文字エントリー
ctZuzu = entryEffectLife( 30, 10013, 40, 0, -1, 0, 0, 200); -- ズズンッ
setEffShake(30, ctZuzu, 40, 7);
setEffMoveKey(30, ctZuzu, 0, 200);
setEffMoveKey(70, ctZuzu, 0, 200);
setEffRotateKey(30, ctZuzu, 0);
setEffRotateKey(70, ctZuzu, 0);
setEffScaleKey(30, ctZuzu, 0.1, 0.1);
setEffScaleKey(40, ctZuzu, 2.0, 2.0);
setEffScaleKey(70, ctZuzu, 2.0, 2.0);
setEffAlphaKey(30, ctZuzu, 255);
setEffAlphaKey(50, ctZuzu, 255);
setEffAlphaKey(70, ctZuzu, 0);
playSe( 30, SE_02);

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------

changeAnime( 70, 0, 30);                       -- 溜め!
playSe( 73, SE_03);

entryEffect(  70,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect(  70,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
--speff = entryEffect(  80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( 80, SE_04);

entryFade( 163, 3, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura2 = entryEffectLife(  70,   311, 100, 0x40,  0,  1,  0,  0); -- オーラ
setShakeChara( 70, 0, 100, 5);
setEffShake(70, aura2, 100, 7);
setEffMoveKey(70, aura2, 0,  0);
setEffMoveKey(170, aura2, 0,  0);
setEffRotateKey(70, aura2, 0);
setEffRotateKey(170, aura2, 0);
setEffScaleKey(70, aura2, 1.5, 1.5);
setEffScaleKey(170, aura2, 1.5, 1.5);
setEffAlphaKey(70, aura2, 255);
setEffAlphaKey(170, aura2, 255);

kame_hand = entryEffect( 70, SP_01, 0x40,      0,  300,  0,  0);   -- 手のカメハメ波部
setEffMoveKey(70, kame_hand, 0, 0);	
setEffMoveKey(190, kame_hand, 0, 0);	
setEffScaleKey(70, kame_hand, 1.0, 1.0);	
setEffScaleKey(190, kame_hand, 1.0, 1.0);	
setEffRotateKey(70, kame_hand, 0);	
setEffRotateKey(190, kame_hand, 0);	
setEffAlphaKey(70, kame_hand, 255);	
setEffAlphaKey(190, kame_hand, 255);
--setEffScaleKey( 70, kame_hand, 0.5, 0.5);

-- 書き文字エントリー
ctGo = entryEffectLife( 90, 10008, 60, 0x100, 0, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(90, ctGo, 60, 8);
setEffMoveKey(90, ctGo, -190, 300);
setEffMoveKey(150, ctGo, -190, 300);
setEffScaleKey(90, ctGo, 1.4, 1.4);
setEffScaleKey(150, ctGo, 1.4, 1.4);
setEffRotateKey(90, ctGo, 0);
setEffRotateKey(150, ctGo, 0);
setEffAlphaKey(90, ctGo, 255);
setEffAlphaKey(150, ctGo, 255);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( 169,   0, 1.5, 1.5);
setScaleKey( 170,   0, 1.0, 1.0);


if (_SPECIAL_SKILL_LEVEL_ == 0) then
print ("_SPECIAL_SKILL_LEVEL_ == 0");
playSe( 170, SE_05);
speff = entryEffect( 170, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
print ("_SPECIAL_SKILL_LEVEL_ == 1");
playSe( 170, SE_05);
speff = entryEffect( 170, 1120, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( 170, SE_05);
speff = entryEffect( 170, 1121, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end


entryFade( 255, 3, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--entryFlash( (170+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
playSe( 170+64, SE_06);

------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
changeAnime( 260, 0, 31);                                    -- かめはめ発射ポーズ
--[[
setMoveKey(  259,    0,      0,  0,   0);
setMoveKey(  260,    0,   -600,  0,   0);
setMoveKey(  261,    0,   -600,  0,   0);
setMoveKey(  270,    0,   -100,  0,   0);
--]]
setMoveKey(  259,    0,      0,  0,   0);
setMoveKey(  270,    0,      0,  0,   0);
setMoveKey(  290,    0,   -30,  0,   20);

kamehame_beam = entryEffectLife( 260, SP_02, 110, 0x40, 0, 300, 0, 0); -- 伸びるかめはめ波	
setEffMoveKey(260, kamehame_beam, 0, 0);	
setEffMoveKey(370, kamehame_beam, 0, 0);	
setEffScaleKey(260, kamehame_beam, 1.0, 1.0);	
setEffScaleKey(370, kamehame_beam, 1.0, 1.0);	
setEffRotateKey(260, kamehame_beam, 0);	
setEffRotateKey(370, kamehame_beam, 0);	
setEffAlphaKey(260, kamehame_beam, 255);	
setEffAlphaKey(370, kamehame_beam, 255);

playSe( 260, SE_07);

--spname = entryEffect( 260, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
--setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 途中からカメハメハが伸びる
--setMoveKey(  299,    0,   -100,  0,   0);
--setMoveKey(  300,    0,   -100,  0,   0);
--setMoveKey(  308,    0,   -1100,  0,   0);
setMoveKey(  300,    0,   -150,  0,   50);
setMoveKey(  305,    0,   -600,  0,   85);
--setMoveKey(  308,    0,   -1100,  0,   0);


entryFade( 365, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
entryFadeBg( 260, 0, 109, 0, 0, 0, 0, 255);       -- ベース暗め　背景
entryFadeBg( 260, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
--entryFadeBg( 300, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景
entryFadeBg( 300, 0, 2, 8, 0, 0, 0, 250);     -- 青い　背景

ryusen = entryEffectLife( 260, 921, 110, 0x80,  -1,  0,  0,  0); -- 流線
setEffMoveKey(260, ryusen, 0, 0);
setEffMoveKey(370, ryusen, 0, 0);
setEffScaleKey(260, ryusen, 1.3, 1.3);
setEffScaleKey(370, ryusen, 1.3, 1.3);
setEffRotateKey(260, ryusen, 190);
setEffRotateKey(370, ryusen, 190);
setEffAlphaKey(260, ryusen, 255);
setEffAlphaKey(370, ryusen, 255);

setShakeChara( 305, 0, 54, 50);

shuchusen = entryEffectLife( 260, 906, 50, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey(260, shuchusen, 0, 0);
setEffMoveKey(310, shuchusen, 0, 0);
setEffScaleKey( 260, shuchusen, 1.0, 1.0);
setEffScaleKey( 300, shuchusen, 1.0, 1.0);
setEffScaleKey( 310, shuchusen, 2.0, 2.0);
setEffRotateKey(260, shuchusen, 0);
setEffRotateKey(310, shuchusen, 0);
setEffAlphaKey(260, shuchusen, 255);
setEffAlphaKey(310, shuchusen, 255);

--entryFlash( (260+10), 1,  fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+80), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+92), 1, fcolor_r, fcolor_g, fcolor_b, 200);

-- 書き文字エントリー
ctZuo = entryEffectLife( 268, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(268, ctZuo, 32, 5);
setEffMoveKey(268, ctZuo, 200, 300);
setEffMoveKey(300, ctZuo, 200, 300);
setEffAlphaKey(268, ctZuo, 255);
setEffAlphaKey(290, ctZuo, 255);
setEffAlphaKey(300, ctZuo, 0);
setEffScaleKey(268, ctZuo, 0.0, 0.0);
setEffScaleKey(272, ctZuo, 1.3, 1.3);
setEffScaleKey(292, ctZuo, 1.3, 1.3);
setEffScaleKey(300, ctZuo, 6.0, 6.0);
SE0=playSe( 300, SE_07);
entryFade( 355, 10,  5, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
setDisp( 370, 0, 0);
setDisp( 370, 1, 1);
changeAnime( 370, 1, 104);                        -- ガード
setMoveKey(  369,    1,  235,  0,   0);
setMoveKey(  370,    1,  235,  0,   0);
setMoveKey(  371,    1,  235,  0,   0);
setScaleKey( 369,    1,  0.7, 0.7);
setScaleKey( 370,    1,  0.7, 0.7);

setMoveKey(  400,    1,   120,  0,   0);
setScaleKey(  400,   1,   1.6,  1.6);

kamehame_beam2 = entryEffect( 370, SP_03,   0x100, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffMoveKey(370, kamehame_beam2, 0, 0);
setEffMoveKey(470, kamehame_beam2, 0, 0);
setEffScaleKey(370, kamehame_beam2, 1, 1);
setEffScaleKey(410, kamehame_beam2, 1, 1);
setEffScaleKey(433, kamehame_beam2, 2.5, 2.5);
setEffScaleKey(470, kamehame_beam2, 2.5, 2.5);
setEffRotateKey(370, kamehame_beam2, 0);
setEffRotateKey(470, kamehame_beam2, 0);
setEffAlphaKey(370, kamehame_beam2, 255);
setEffAlphaKey(470, kamehame_beam2, 255);

setShake( 370, 63, 13);
setShake( 433, 38, 21);
setDamage( 452, 1, 0);  -- ダメージ振動等

--speff = entryEffect( 370, 1506,   0,  -1,  0,  0,  0);    -- カットイン
--setEffReplaceTexture( speff, 6, 3);                       -- カットイン差し替え
--playSe( 370, SE_08);

-- 敵吹っ飛ぶモーション
changeAnime( 432, 1, 108);
setDisp(460, 1, 0);
setMoveKey(  432, 1,  120,    0,  0);
setMoveKey(  460, 1,  400,    0,  0);
setScaleKey( 432, 1,  1.6, 1.6);
setScaleKey( 435, 1,  1.5, 1.5);
setScaleKey( 460, 1,  0.2, 0.2);

-- ** エフェクト等 ** --
setShakeChara( 370, 1, 99, 20);

entryFadeBg( 370, 0, 99, 0,0, 0, 0, 255);          -- ベース暗め　背景

entryEffectLife( 370, 921, 99, 0x80,  -1,  0,  0,  0); -- 流線斜め

--entryFlash( (370+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+80), 1, fcolor_r, fcolor_g, fcolor_b, 200);

-- 書き文字エントリー
ctZud = entryEffectLife( 370, 10014, 80, 0x100, -1, 0, -100, 255); -- ズドドッ
setEffShake(370, ctZud, 99, 20);
setEffMoveKey(370, ctZud, -100, 255);
setEffMoveKey(450, ctZud, -100, 255);
setEffScaleKey(370, ctZud, 2.4, 2.4);
setEffScaleKey(450, ctZud, 2.4, 2.4);
setEffRotateKey(370, ctZud, 0);
setEffRotateKey(450, ctZud, 0);
setEffAlphaKey(370, ctZud, 255);
setEffAlphaKey(430, ctZud, 255);
setEffAlphaKey(450, ctZud, 0);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 384; --エンドフェイズのフレーム数を置き換える

stopSe( SP_dodge-10, SE0,0);
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

playSe( 390, SE_06);

playSe( 455, SE_09);

entryFade( 452, 6,  17, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
--爆発( SP_ATK+110F)
------------------------------------------------------
--abc = 30
SP_ATK = 470

bomb = entryEffect( SP_ATK,SP_04,0x100,-1,0,0,0);
setEffMoveKey(SP_ATK, bomb, 0, 0);
setEffMoveKey(SP_ATK+122, bomb, 0, 0);
setEffScaleKey(SP_ATK, bomb, 1.0, 1.0);
setEffScaleKey(SP_ATK+122, bomb, 1.0, 1.0);
setEffRotateKey(SP_ATK, bomb, 0);
setEffRotateKey(SP_ATK+122, bomb, 0);
setEffAlphaKey(SP_ATK, bomb, 255);
setEffAlphaKey(SP_ATK+122, bomb, 255);
--setDisp( SP_ATK+469+abc,1,1);

--書き文字エントリー
--[[
ct=entryEffectLife( SP_ATK+16,10018,100,0,-1,0,-50,230);--ガッ
setEffShake( SP_ATK+16,ct,30,10);
setEffRotateKey( SP_ATK+16,ct,-40);
setEffScaleKey( SP_ATK+16,ct,4.0,4.0);
setEffScaleKey( SP_ATK+17,ct,2.0,2.0);
setEffScaleKey( SP_ATK+18,ct,2.6,2.6);
setEffScaleKey( SP_ATK+19,ct,4.0,4.0);
setEffScaleKey( SP_ATK+20,ct,2.6,2.6);
setEffScaleKey( SP_ATK+21,ct,3.8,3.8);
setEffScaleKey( SP_ATK+111,ct,3.8,3.8);
setEffAlphaKey( SP_ATK+16,ct,255);
setEffAlphaKey( SP_ATK+101,ct,255);
setEffAlphaKey( SP_ATK+111,ct,0);
--]]
playSe( SP_ATK+4,SE_10);
shuchusen2 = entryEffectLife( SP_ATK+4,906,106,0x80,-1,0,0,0);--集中線
setEffMoveKey(SP_ATK+4, shuchusen2, 0, 0);
setEffMoveKey(SP_ATK+110, shuchusen2, 0, 0);
setEffScaleKey( SP_ATK+4, shuchusen2, 1.0, 1.0);
setEffScaleKey( SP_ATK+110, shuchusen2, 1.0, 1.0);
setEffRotateKey(SP_ATK+4, shuchusen2, 0);
setEffRotateKey(SP_ATK+110, shuchusen2, 0);
setEffAlphaKey(SP_ATK+4, shuchusen2, 255);
setEffAlphaKey(SP_ATK+110, shuchusen2, 255);
--entryEffect( SP_ATK+4,1600,0x00,-1,0,30,-130);--ひび割れ

--ダメージ表示
dealDamage( SP_ATK+17 -10);

--entryFade( SP_ATK+101,8,10,1,8,8,8,255);--blackfade

endPhase( SP_ATK+111 -10);

end
