

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

SP_01 = 100221;
SP_02 = 100222;
SP_03 = 100223;
SP_04 = 1558;

multi_frm = 2;

changeAnime( 0, 0, 0);                       -- 立ち
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0, 0,   0);
setMoveKey(   1,   0,    0, 0,   0);

setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   1,   0, 1.5, 1.5);

setVisibleUI(0, 0);
------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

--気を貯める
--         frame, eff, atr,tgt, tag,  x, y
changeAnime(  30, 0, 17);                       -- 溜め!

entryEffect(  30,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
entryEffect(  30,   1500,   0,    -1,  0,  0,  0);    -- eff_001
playSe( 30, SE_01);

entryFade( 62, 5, 8, 8, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  30,   311, 39, 0x40,  0,  1,  0,  0); -- オーラ
setEffScaleKey( 30, aura, 1.5, 1.5);
setShakeChara( 30, 0, 19, 5);


-- 書き文字エントリー
ct = entryEffectLife( 30, 10013, 39, 0, -1, 0, 0, 250); -- ズズンッ
setEffShake(30, ct, 40, 7);
setEffAlphaKey(30, ct, 255);
setEffAlphaKey(50, ct, 255);
setEffAlphaKey(70, ct, 0);
setEffScaleKey( 30, ct, 0.1, 0.1);
setEffScaleKey( 40, ct, 2.0, 2.0);
playSe( 30, SE_02);

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------

changeAnime( 70, 0, 30);                       -- 溜め!
playSe( 73, SE_03);

setMoveKey(   69,   0,    0,  0,   0);
setMoveKey(   70,   0,    50, -54,   32);
setMoveKey(   170,   0,    80, -54,   32);

setScaleKey(   69,   0, 1.5, 1.5);
setScaleKey(   70,   0, 1.0, 1.0);

entryEffect(  70,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect(  70,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
speff = entryEffect(  80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( 80, SE_04);

kame_hand = entryEffect( 70, SP_01, 0x40,      0,  300,  0,  0);   -- 手のカメハメ波部
--setEffScaleKey( 70, kame_hand, 0.5, 0.5);

entryFade( 160, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  70,   311, 99, 0x40,  0,  1,  0,  0); -- オーラ
setEffScaleKey( 70, aura, 3.0, 3.0);
setShakeChara( 70, 0, 49, 5);

-- 書き文字エントリー
ct = entryEffectLife( 90, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(90, ct, 40, 8);
setEffScaleKey(90, ct, 1.4, 1.4);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
spep5=170;

setScaleKey( spep5-1,   0, 1.5, 1.5);
setScaleKey( spep5,   0, 1.0, 1.0);

--playSe( spep5, SE_05);
--speff = entryEffect(  spep5,   1507,   0,  -1,  0,  0,  0);   -- カード
--setEffReplaceTexture( speff, 1, 1);
--setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
--setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

entryFade( spep5+84, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

removeAllEffect(spep5-1);
--カード登場時前に全てのエフェクトを止める

if (_SPECIAL_SKILL_LEVEL_ == 0) then
print ("_SPECIAL_SKILL_LEVEL_ == 0");
playSe( spep5, SE_05);
speff = entryEffect( spep5, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
print ("_SPECIAL_SKILL_LEVEL_ == 1");
playSe( spep5, SE_05);
speff = entryEffect( spep5, 1120, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( spep5, SE_05);
speff = entryEffect( spep5, 1121, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end                            -- 技名テクスチャ差し替え

-- ** エフェクト等 ** --
--entryFlash( (170+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);

entryFade( spep5+85, 7,  10, 5, 255, 255, 255, 255);     -- white fade
--removeAllEffect( spep5+90 );
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
setMoveKey(  260,    0,      -700,  600,   0);
setMoveKey(  270,    0,      -300,  100,   0);
setMoveKey(  290,    0,      -300,  100,   0);

setRotateKey(259,0,0);
setRotateKey(260,0,-20);
setRotateKey(290,0,-20);
--setMoveKey(  290,    0,   -30,  0,   20);

-- 相手が画面に現れる
setDisp( 310, 1, 1);

sen2 = entryEffectLife( 260, 921, 99, 0x80,  -1,  0,  -380,  0); -- 流線
setEffRotateKey(260, sen2, 15);
setEffScaleKey( 260, sen2, 1.9, 1.9);

kamehame_beam_st = entryEffectLife( 260, SP_02, 44, 0x40+0x80,  0,  0,  420,  -50);   -- 伸びるかめはめ波
kamehame_beam = entryEffectLife( 260, SP_02, 109, 0x100,  0,  0,  20,  -150);   -- 伸びるかめはめ波
setEffScaleKey(260, kamehame_beam, 1.2,1.2);
setEffScaleKey(309, kamehame_beam, 1.2,1.2);
setEffAlphaKey(260, kamehame_beam, 0);
setEffAlphaKey(304, kamehame_beam, 0);
setEffAlphaKey(305, kamehame_beam, 255);

playSe( 260, SE_07);

--spname = entryEffect( 260, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
--setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 途中からカメハメハが伸びる
--setMoveKey(  299,    0,   -100,  0,   0);
--setMoveKey(  300,    0,   -100,  0,   0);
--setMoveKey(  308,    0,   -1100,  0,   0);
setMoveKey(  300,    0,   -250,  100,   0);
setMoveKey(  305,    0,   -1100,  500,   -32);
--setMoveKey(  308,    0,   -1100,  0,   0);
setDisp( 305, 0, 0);
changeAnime( 305, 1, 100);                        -- 気ダメ後ろ
setMoveKey(  304,    1,  500,  -200,   64);
setMoveKey(  305,    1,  500,  -200,   64);
setMoveKey(  306,    1,  500,  -200,   64);
setScaleKey( 304,    1,  0.7, 0.7);
setScaleKey( 305,    1,  0.7, 0.7);

setMoveKey(  345,    1,   120,  0,   0);
setScaleKey(  345,   1,   1.6,  1.6);

entryFade( 365, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
entryFadeBg( 260, 0, 109, 0, 10, 10, 10, 180);       -- ベース暗め　背景
entryFadeBg( 260, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
entryFadeBg( 300, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景


setShakeChara( 270, 0, 24, 30);


shuchusen = entryEffectLife( 259, 906, 109, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffRotateKey(259, shuchusen, 145);
setEffScaleKey( 259, shuchusen, 2.8, 2.8);

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
playSe( 300, SE_07);
entryFade( 355, 10,  5, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
setDisp( 370, 0, 0);
setDisp( 370, 1, 1);
changeAnime( 365, 1, 118);                        -- 気ダメ後ろ
setMoveKey(  365,    1,   120,  0,   0);
setMoveKey(  366,    1,  400,  -400,   0);
setMoveKey(  370,    1,  400,  -400,   0);
setScaleKey(  365,   1,   1.6,  1.6);
setScaleKey( 366,    1,  1, 1);

setMoveKey(  400,    1,   120,  -270,   0);
setMoveKey(  468,    1,   120,  -270,   0);
setScaleKey(  400,   1,   1.6,  1.6);

playSe( 370, SE_06);

ryusen = entryEffectLife( 369, 921, 50, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey(369, ryusen, 190);
setEffScaleKey( 369, ryusen, 1.4, 1.4);

kamehame_beam2 = entryEffect( 370, SP_03,   0x80, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey(370, kamehame_beam2, 1, 1);

-- 敵吹っ飛ぶモーション
--[[
changeAnime( 455, 1, 108);
setMoveKey(  455, 1,  120,    -150,  0);
setMoveKey(  469, 1,  400,    0,  0);
setScaleKey( 455, 1,  1.6, 1.6);
setScaleKey( 458, 1,  1.5, 1.5);
setScaleKey( 468, 1,  0.2, 0.2);
]]--
-- ** エフェクト等 ** --
setShakeChara( 370, 1, 99, 20);

entryFadeBg( 370, 0, 99, 0,0, 0, 0, 255);          -- ベース暗め　背景

--entryFlash( (370+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+80), 1, fcolor_r, fcolor_g, fcolor_b, 200);

-- 書き文字エントリー
ctZudodo = entryEffectLife( 370, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(370, ctZudodo, 99, 20);
setEffScaleKey( 370, ctZudodo, 2.4, 2.4);
setEffRotateKey(370, ctZudodo, 70);
setEffAlphaKey(370, ctZudodo, 255);

------------------------------------------------------
-- 回避
------------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge = 400; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

setMoveKey(  SP_dodge,    1,   120,  -270,   0);
setScaleKey(  SP_dodge,   1,   1.6,  1.6);

setMoveKey(  SP_dodge+9,    1,   120,  -270,   0);
setScaleKey(  SP_dodge+9,   1,   1.6,  1.6);

setMoveKey(  SP_dodge+10,    1,   0,  0,   0);
setScaleKey(  SP_dodge+10,   1,   1.0,  1.0);

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(SP_dodge+10);

do return end
else end

------------------------------------------------------
-- 回避されなかった場合
------------------------------------------------------
entryFade( 415, 5,  5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setDisp( 420, 1, 0);

setEffScaleKey(452, kamehame_beam2, 1, 1);
--setEffScaleKey(454, kamehame_beam2, 2.5, 2.5);
setDamage( 452, 1, 0);  -- ダメージ振動等

--speff = entryEffect( 370, 1506,   0,  -1,  0,  0,  0);    -- カットイン
--setEffReplaceTexture( speff, 6, 3);                       -- カットイン差し替え
--playSe( 370, SE_08);

playSe( 430, SE_09);

setEffAlphaKey(410, ctZudodo, 255);
setEffAlphaKey(420, ctZudodo, 0);

ct = entryEffectLife( 430, 10006, 30, 0x80, -1, 0, 0, 255); -- ギャン
setEffShake(430, ct, 99, 20);
setEffScaleKey( 430, ct, 0.1, 0.1);
setEffScaleKey( 435, ct, 2.4, 2.4);
setEffScaleKey( 460, ct, 2.8, 2.8);
setEffAlphaKey(430, ct, 255);
setEffAlphaKey(445, ct, 255);
setEffAlphaKey(460, ct, 0);

entryFade( 452, 6,  17, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
explosion=entryEffect( 469, SP_04, 0,  -1,  0,  0,  0);   -- 伸びるかめはめ波
setEffScaleKey(469, explosion, 1.2, 1.2);
setEffScaleKey(580, explosion, 1.2, 1.2);

setDisp( 469, 1, 1);
setMoveKey(  469,    1,  100,  0,   0);
setScaleKey( 469,    1,  1.0, 1.0);
setMoveKey(  470,    1,    0,   0,   128);
setScaleKey( 470,    1,  0.1, 0.1);

changeAnime( 470, 1, 107);                         -- 手前ダメージ
--entryEffect( 478, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( 478, SE_10);

setMoveKey(  478,   1,    0,   0,   128);
setMoveKey(  485,   1,  -60,  -200,  -100);
--setMoveKey(  486,   1,  -60,  -200,  -100);
setDamage( 486, 1, 0);  -- ダメージ振動等
setShake(477,6,15);
setShake(483,15,10);

setRotateKey( 470,  1,  30 );
setRotateKey( 472,  1,  80 );
setRotateKey( 474,  1, 120 );
setRotateKey( 476,  1, 160 );
setRotateKey( 478,  1, 200 );
setRotateKey( 480,  1, 260 );
setRotateKey( 482,  1, 320 );
setRotateKey( 484,  1,   0 );

setShakeChara( 485, 1, 5,  10);
setShakeChara( 490, 1, 10, 20);

-- 書き文字エントリー
--[[
ct = entryEffectLife( 485, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake(485, ct, 30, 10);
setEffRotateKey( 485, ct, -40);
setEffScaleKey( 485, ct, 4.0, 4.0);
setEffScaleKey( 486, ct, 2.0, 2.0);
setEffScaleKey( 487, ct, 2.6, 2.6);
setEffScaleKey( 488, ct, 4.0, 4.0);
setEffScaleKey( 489, ct, 2.6, 2.6);
setEffScaleKey( 490, ct, 3.8, 3.8);
setEffScaleKey( 580, ct, 3.8, 3.8);
setEffAlphaKey( 485, ct, 255);
setEffAlphaKey( 575, ct, 255);
setEffAlphaKey( 585, ct, 0);
--]]
--playSe( 473, SE_11);
shuchusen = entryEffectLife( 473, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線

--entryEffect( 473, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(486);

entryFade( 570, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(580);
else


------------------------------------------------------
-- 気溜め( tyo+40F)
------------------------------------------------------

--気を貯める
changeAnime( tyo+30, 0, 17);                       -- 溜め!
entryEffect( tyo+30,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
entryEffect( tyo+30,   1500,   0,    -1,  0,  0,  0);    -- eff_001
playSe( tyo+30, SE_01);

entryFade( tyo+62, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife( tyo+30,   311, 39, 0x40+0x80,  0,  1,  0,  0); -- オーラ
setEffScaleKey( tyo+30, aura, 1.5, 1.5);
setShakeChara( tyo+30, 0, 19, 5);

-- 書き文字エントリー
ct = entryEffectLife( tyo+30, 10013, 39, 0, -1, 0, 0, 250); -- ズズンッ
setEffShake( tyo+30, ct, 40, 7);
setEffAlphaKey( tyo+30, ct, 255);
setEffAlphaKey( tyo+50, ct, 255);
setEffAlphaKey( tyo+70, ct, 0);
setEffScaleKey( tyo+30, ct, 0.1, 0.1);
setEffScaleKey( tyo+40, ct, 2.0, 2.0);
playSe( tyo+30, SE_02);


--気を貯める
entryEffect(5,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
entryEffect(5,   1500,   0,    -1,  0,  0,  0);    -- eff_001
playSe(5, SE_01);

-- ** エフェクト等 ** --
aura = entryEffectLife(5,   311, 39, 0x40+0x80,  0,  1,  0,  0); -- オーラ
setEffScaleKey(5, aura, 1.5, 1.5);
setShakeChara(5, 0, 19, 5);


------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
--setVisibleUI( tyo+69, 0);
changeAnime(tyo+70, 0, 30);                       -- かめはめ波溜め!
playSe( tyo+73, SE_03);

setMoveKey(   tyo+69,   0,    0,  0,   0);
setMoveKey(   tyo+70,   0,    -50, -54,   32);
setMoveKey(   tyo+170,   0,    -80, -54,   32);

setScaleKey(   tyo+69,   0, 1.5, 1.5);
setScaleKey(   tyo+70,   0, 1.0, 1.0);

entryEffect( tyo+70,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 ( tyo2+気)
entryEffect( tyo+70,   1502,   0,     -1,  0,  0,  0);   -- eff_003 ( tyo2+気)
--speff = entryEffect(80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 ( tyo2+カットイン)
--setEffReplaceTexture(speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 ( tyo2+セリフ)
--setEffReplaceTexture(speff, 4, 5);                           -- セリフ差し替え

playSe( tyo+80, SE_04);

kame_hand = entryEffect( tyo+71, SP_01, 0x40,   0,  300,  0,  0);   -- 手のカメハメ波部
--setEffScaleKey( tyo+71, kame_hand, 0.5, 0.5);

entryFade( tyo+156, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife( tyo+70,   311, 99, 0x40+0x80,  0,  1,  0,  0); -- オーラ
setEffScaleKey( tyo+30, aura, 3.0, 3.0);
setShakeChara( tyo2+70, 0, 49, 5);

-- 書き文字エントリー
ct = entryEffectLife( tyo2+90, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake( tyo2+90, ct, 40, 8);
setEffScaleKey( tyo2+90, ct, 1.4, 1.4);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
spep5=tyo2+170;

setScaleKey( spep5-1,   0, 1.5, 1.5);
setScaleKey( spep5,   0, 1.0, 1.0);

--playSe( spep5, SE_05);
--speff = entryEffect(  spep5,   1507,   0,  -1,  0,  0,  0);   -- カード
--setEffReplaceTexture( speff, 1, 1);
--setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
--setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

entryFade( spep5+84, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

removeAllEffect(spep5-1);
--カード登場時前に全てのエフェクトを止める

if (_SPECIAL_SKILL_LEVEL_ == 0) then
print ("_SPECIAL_SKILL_LEVEL_ == 0");
playSe( spep5, SE_05);
speff = entryEffect( spep5, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
print ("_SPECIAL_SKILL_LEVEL_ == 1");
playSe( spep5, SE_05);
speff = entryEffect( spep5, 1120, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
setEffScaleKey( spep5, speff, 1.0, 1.0);

elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( spep5, SE_05);
speff = entryEffect( spep5, 1121, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
setEffScaleKey( spep5, speff, 1.0, 1.0);
end

-- ** エフェクト等 ** --
--entryFlash( (170+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);

entryFade( spep5+85, 7,  10, 5, 255, 255, 255, 255);     -- white fade
--removeAllEffect( spep5+90 );
------------------------------------------------------
-- カメハメハ発射(tyo2+110F)
------------------------------------------------------
changeAnime(tyo2+260, 0, 31);                                    -- かめはめ発射ポーズ
--[[
setMoveKey(tyo2+259,    0,      0,  0,   0);
setMoveKey(tyo2+260,    0,   -600,  0,   0);
setMoveKey(tyo2+261,    0,   -600,  0,   0);
setMoveKey(tyo2+270,    0,   -100,  0,   0);
--]]


setMoveKey(  tyo2+259,    0,      0,  0,   0);
setMoveKey(  tyo2+260,    0,      -700,  600,   0);
setMoveKey(  tyo2+270,    0,      -300,  100,   0);
setMoveKey(  tyo2+290,    0,      -300,  100,   0);

setRotateKey(tyo2+259,0,0);
setRotateKey(tyo2+260,0,0);
setRotateKey(tyo2+290,0,0);

-- 相手が画面に現れる
setDisp( tyo2+310, 1, 1);

sen2 = entryEffectLife( tyo2+260, 921, 99, 0x80,  -1,  0,  -380,  0); -- 流線
setEffRotateKey(tyo2+260, sen2, 15);
setEffScaleKey( tyo2+260, sen2, 1.9, 1.9);


kamehame_beam_st = entryEffectLife( tyo2+260, SP_02, 44, 0x40+0x80,  0,  0,  400,  -100);   -- 伸びるかめはめ波
kamehame_beam = entryEffectLife(tyo2+260, SP_02, 109, x100,  0,  0,  20,  -150);   -- 伸びるかめはめ波
setEffScaleKey(tyo2+260, kamehame_beam, 1.2,1.2);
setEffScaleKey(tyo2+309, kamehame_beam, 1.2,1.2);
setEffAlphaKey(tyo2+260, kamehame_beam, 0);
setEffAlphaKey(tyo2+304, kamehame_beam, 0);
setEffAlphaKey(tyo2+305, kamehame_beam, 255);
playSe(tyo2+260, SE_07);

--spname = entryEffect(tyo2+260, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
--setEffReplaceTexture(tyo2+spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 途中からカメハメハが伸びる
--setMoveKey(tyo2+299,    0,   -100,  0,   0);
--setMoveKey(tyo2+300,    0,   -100,  0,   0);
--setMoveKey(tyo2+308,    0,   -1100,  0,   0);
setMoveKey(  tyo2+300,    0,   -250,  100,   0);
setMoveKey(  tyo2+305,    0,   -1100,  500,   -32);
--setMoveKey(tyo2+308,    0,   -1100,  0,   0);
changeAnime( tyo2+305, 1, 100);                        -- 気ダメ後ろ
setMoveKey(  tyo2+304,    1,  500,  -200,   64);
setMoveKey(  tyo2+305,    1,  500,  -200,   64);
setMoveKey(  tyo2+306,    1,  500,  -200,   64);
setScaleKey( tyo2+304,    1,  0.7, 0.7);
setScaleKey( tyo2+305,    1,  0.7, 0.7);

setMoveKey(  tyo2+345,    1,   120,  0,   0);
setScaleKey(  tyo2+345,   1,   1.6,  1.6);

entryFade(tyo2+356, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
entryFadeBg( tyo2+260, 0, 109, 0, 10, 10, 10, 180);       -- ベース暗め　背景
entryFadeBg( tyo2+260, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
entryFadeBg( tyo2+300, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景


setShakeChara(tyo2+270, 0, 54, 50);

shuchusen = entryEffectLife(tyo2+260, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey(tyo2+260, shuchusen, 1.0, 1.0);
setEffScaleKey(tyo2+300, shuchusen, 1.0, 1.0);
setEffScaleKey(tyo2+309, shuchusen, 2.0, 2.0);

--entryFlash(tyo2+(tyo2+260+10), 1,  fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash(tyo2+(tyo2+260+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash(tyo2+(tyo2+260+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash(tyo2+(tyo2+260+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash(tyo2+(tyo2+260+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash(tyo2+(tyo2+260+80), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash(tyo2+(tyo2+260+92), 1, fcolor_r, fcolor_g, fcolor_b, 200);

-- 書き文字エントリー
ct = entryEffectLife(tyo2+268, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(tyo2+268, ct, 32, 5);
setEffAlphaKey(tyo2+268, ct, 255);
setEffAlphaKey(tyo2+290, ct, 255);
setEffAlphaKey(tyo2+300, ct, 0);
setEffScaleKey(tyo2+268, ct, 0.0, 0.0);
setEffScaleKey(tyo2+272, ct, 1.3, 1.3);
setEffScaleKey(tyo2+292, ct, 1.3, 1.3);
setEffScaleKey(tyo2+300, ct, 6.0, 6.0);
playSe(tyo2+300, SE_07);

------------------------------------------------------
-- かめはめは迫る(tyo2+100F)
------------------------------------------------------
setDisp(tyo2+370, 0, 0);
setDisp(tyo2+370, 1, 1);
changeAnime(tyo2+370, 1, 118);                        -- 気ダメ後ろ
setMoveKey(  tyo2+365,    1,   120,  0,   0);
setMoveKey(  tyo2+366,    1,  400,  -400,   0);
setMoveKey(  tyo2+370,    1,  400,  -400,   0);
setScaleKey(  tyo2+365,   1,   1.6,  1.6);
setScaleKey( tyo2+366,    1,  1, 1);

kamehame_beam2 = entryEffect(tyo2+370, SP_03,   0x80, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey(tyo2+370, kamehame_beam2, 1, 1);

-- 敵吹っ飛ぶモーション
--[[
changeAnime(tyo2+455, 1, 108);
setMoveKey(tyo2+455, 1,  120,    0,  0);
setMoveKey(tyo2+469, 1,  400,    0,  0);
setScaleKey(tyo2+455, 1,  1.6, 1.6);
setScaleKey(tyo2+458, 1,  1.5, 1.5);
setScaleKey(tyo2+468, 1,  0.2, 0.2);
]]--
-- ** エフェクト等 ** --
setShakeChara(tyo2+370, 1, 99, 20);

entryFadeBg(tyo2+370, 0, 99, 0, 255, 255, 255);          -- ベース暗め　背景

ryusen = entryEffectLife(tyo2+368, 921, 50, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey(tyo2+368, ryusen, 190);
setEffScaleKey( tyo2+368, ryusen, 1.4, 1.4);

-- 書き文字エントリー
ctZudodo = entryEffectLife(tyo2+370, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(tyo2+370, ctZudodo, 99, 20);
setEffScaleKey(tyo2+370, ctZudodo, 2.4, 2.4);
setEffRotateKey(tyo2+370, ctZudodo, -70);
setEffAlphaKey(tyo2+370, ctZudodo, 255);

playSe(tyo2+370, SE_06);

------------------------------------------------------
-- 回避
------------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge = 355; --エンドフェイズのフレーム数を置き換える

--Seid=playSe(330, SE_06);
--stopSe(330,Seid,0);

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);

setMoveKey(  SP_dodge,    1,   120,  -270,   0);
setScaleKey(  SP_dodge,   1,   1.6,  1.6);

setMoveKey(  SP_dodge+9,    1,   120,  -270,   0);
setScaleKey(  SP_dodge+9,   1,   1.6,  1.6);

setMoveKey(  SP_dodge+10,    1,   0,  0,   0);
setScaleKey(  SP_dodge+10,   1,   1.0,  1.0);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(SP_dodge+10);

do return end
else end

------------------------------------------------------
-- 回避され頒った場合 (tyo2+110F)
------------------------------------------------------
setMoveKey(  tyo2+400,    1,   120,  -270,   0);
setScaleKey(  tyo2+400,   1,   1.6,  1.6);

entryFade( tyo2+415, 5,  5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setDisp( tyo2+420, 1, 0);

setEffScaleKey(tyo2+452, kamehame_beam2, 1, 1);
--setEffScaleKey(tyo2+454, kamehame_beam2, 2.5, 2.5);
setDamage(tyo2+452, 1, 0);  -- ダメージ振動等

--speff = entryEffect(tyo2+370, 1506,   0,  -1,  0,  0,  0);    -- カットイン
--setEffReplaceTexture(tyo2+speff, 6, 3);                       -- カットイン差し替え
--playSe(tyo2+370, SE_08);

playSe(tyo2+430, SE_09);

setEffAlphaKey(tyo2+410, ctZudodo, 255);
setEffAlphaKey(tyo2+420, ctZudodo, 0);

ct2 = entryEffectLife( tyo2+430, 10006, 30, 0x80, -1, 0, 0, 255); -- ギャン
setEffShake(tyo2+430, ct2, 99, 20);
setEffScaleKey( tyo2+430, ct2, 0.1, 0.1);
setEffScaleKey( tyo2+435, ct2, 2.4, 2.4);
setEffScaleKey( tyo2+460, ct2, 2.8, 2.8);
setEffAlphaKey(tyo2+430, ct2, 255);
setEffAlphaKey(tyo2+445, ct2, 255);
setEffAlphaKey(tyo2+460, ct2, 0);

entryFade(tyo2+452, 6,  17, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 爆発 (tyo2+110F)
------------------------------------------------------
bom = entryEffect( tyo2+469, SP_04, 0,  -1,  0,  0,  0);   -- 伸びるかめはめ波
setEffScaleKey(tyo2+469, bom, 1.2, 1.2);
setEffScaleKey(tyo2+580, bom, 1.2, 1.2);
--setEffRotateKey(tyo2+469,bom,180);
setDisp(tyo2+469, 1, 1);
setMoveKey(tyo2+469,    1,  100,  0,   0);
setScaleKey(tyo2+469,    1,  1.0, 1.0);
setMoveKey(tyo2+470,    1,    0,   0,   128);
setScaleKey(tyo2+470,    1,  0.1, 0.1);

changeAnime(tyo2+470, 1, 107);                         -- 手前ダメージ
--entryEffect(tyo2+478, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe(tyo2+478, SE_10);

setMoveKey(tyo2+478,   1,    0,   0,   128);
setMoveKey(tyo2+485,   1,  -60,  -200,  -100);
--setMoveKey(tyo2+486,   1,  -60,  -200,  -100);
setDamage(tyo2+486, 1, 0);  -- ダメージ振動等
setShake(tyo2+477,6,15);
setShake(tyo2+483,15,10);

setRotateKey(tyo2+470,  1,  30 );
setRotateKey(tyo2+472,  1,  80 );
setRotateKey(tyo2+474,  1, 120 );
setRotateKey(tyo2+476,  1, 160 );
setRotateKey(tyo2+478,  1, 200 );
setRotateKey(tyo2+480,  1, 260 );
setRotateKey(tyo2+482,  1, 320 );
setRotateKey(tyo2+484,  1,   0 );

setShakeChara(tyo2+485, 1, 5,  10);
setShakeChara(tyo2+490, 1, 10, 20);

-- 書き文字エントリー
--[[
ct = entryEffectLife(tyo2+485, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake(tyo2+485, ct, 30, 10);
setEffRotateKey(tyo2+485, ct, -40);
setEffScaleKey(tyo2+485, ct, 4.0, 4.0);
setEffScaleKey(tyo2+486, ct, 2.0, 2.0);
setEffScaleKey(tyo2+487, ct, 2.6, 2.6);
setEffScaleKey(tyo2+488, ct, 4.0, 4.0);
setEffScaleKey(tyo2+489, ct, 2.6, 2.6);
setEffScaleKey(tyo2+490, ct, 3.8, 3.8);
setEffScaleKey(tyo2+580, ct, 3.8, 3.8);
setEffAlphaKey(tyo2+485, ct, 255);
setEffAlphaKey(tyo2+575, ct, 255);
setEffAlphaKey(tyo2+585, ct, 0);
--]]
--playSe(tyo2+473, SE_11);
shuchusen = entryEffectLife(tyo2+473, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
--entryEffect(tyo2+473, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(tyo2+486);

entryFade(tyo2+570, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(tyo2+580);
end