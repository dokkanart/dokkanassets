print ("[lua]sp0371");

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SP_01 = 150583;--発射
SP_02 = 150584;--迫る
SP_03 = 1596;--キノコ雲爆発&青空
SP_04 = 1597;--地球を周回


SE_01 = 1035; --気を貯める
SE_02 = 1036; --気が広がる
SE_03 = 1036; --かめはめ
SE_04 = 1018; --カットイン
SE_05 = 1035; --カットイン攻撃
SE_06 = 1021; --発射
SE_07 = 1022; --のびる発射
SE_08 = 1042; --カットイン
SE_09 = 1023; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音

SE_12 = 09;

multi_frm = 2;


------------------------------------------------------
--フュージョン
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then


setVisibleUI(0, 0);
setDisp( 0, 0, 1); --味方表示
setDisp( 0, 1, 0); --敵非表示
changeAnime( 0, 0, 0); --味方立ちポーズ
setMoveKey( 0, 0, 10, -80, 0); --味方位置
setMoveKey( 1, 0, 10, -80, 0); --味方位置
setMoveKey( 2, 0, 10, -80, 0); --味方位置
setMoveKey( 3, 0, 10, -80, 0); --味方位置
setMoveKey( 4, 0, 10, -80, 0); --味方位置
setMoveKey( 5, 0, 10, -80, 0); --味方位置

-- ** 背景 ** --
--entryFadeBg( 0, 0, 322, 0, 0, 0, 0, 200); -- ベース暗め　背景
setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   1,   0, 1.5, 1.5);
setScaleKey(   2,   0, 1.5, 1.5);
setScaleKey(   3,   0, 1.5, 1.5);
setScaleKey(   4,   0, 1.5, 1.5);
setScaleKey(   5,   0, 1.5, 1.5);
setRotateKey( 0,  0,  0 );



--気を貯める
--         frame, eff, atr,tgt, tag,  x, y
changeAnime(  30, 0, 17);                       -- 溜め!
setAnimeLoop(  30, 0, 1);
eff002=entryEffectLife(  30,   1501,  40, 0x80, -1,  0,  0,  0);    -- eff_002
setEffMoveKey(30, eff002, 0, 0, 0);
setEffScaleKey( 30, eff002, 1.0, 1.0);
setEffAlphaKey( 30, eff002, 255);
setEffRotateKey( 30, eff002, 0);

eff001=entryEffectLife(  30,   1500,  40, 0x80, -1,  0,  0,  0);    -- eff_001
setEffMoveKey(30, eff001, 0, 0, 0);
setEffScaleKey( 30, eff001, 1.0, 1.0);
setEffAlphaKey( 30, eff001, 255);
setEffRotateKey( 30, eff001, 0);
playSe( 30, SE_01);

entryFade( 62, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b,  100);     -- white fade
--[[
-- ** エフェクト等 ** --
aura = entryEffectLife(  30,   311, 39, 0x100,  -1,  0,  0,  -100); -- オーラ
setEffScaleKey( 30, aura, 1.5, 1.5);
setShakeChara( 30, 0, 59, 5);
]]
-- ** エフェクト等 ** --
aura = entryEffectLife(  30,   311, 40, 0x100,  -1,  0,  0,  -205); -- オーラ
setEffMoveKey(30, aura, 0, -205, 0);
setEffAlphaKey( 30, aura, 255);
setEffRotateKey( 30, aura, 0);
setEffScaleKey( 30, aura, 1.5, 1.5);
setShakeChara( 30, 0, 100, 5);

-- 書き文字エントリー
ct = entryEffectLife( 30, 10013, 39, 0, -1, 0, 0, 300); -- ズズンッ
setEffAlphaKey(30, ct, 255);
setEffAlphaKey(50, ct, 255);
setEffAlphaKey(70, ct, 0);
setEffScaleKey( 30, ct, 0.1, 0.1);
setEffScaleKey( 40, ct, 2.5, 2.5);
setEffShake(31, ct, 40, 7);
playSe( 30, SE_02);


------------------------------------------------------
-- 顔カットイン	(90f)
------------------------------------------------------

spep_1=70;

changeAnime( spep_1, 0, 30);
setMoveKey( spep_1-1, 0, 10, -80, 0); --味方位置
setMoveKey( spep_1, 0, 30, -70, 0); --味方位置
setMoveKey( spep_1+99, 0, 30, -70, 0); --味方位置



entryFade( spep_1-10, 3, 15, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_1, 0, 70, 0, 10, 10, 10, 180);       -- ベース暗め　背景
playSe( spep_1+10, SE_04);



eff004=entryEffect(  spep_1,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
setEffMoveKey(spep_1, eff004, 0, 0, 0);
setEffScaleKey( spep_1, eff004, 1.0, 1.0);
setEffAlphaKey( spep_1, eff004, 255);
setEffRotateKey( spep_1, eff004, 0);

-- ** エフェクト等 ** --
aura2 = entryEffectLife(  spep_1,   311, 100, 0x100,  -1,  0,  0,  -205); -- オーラ
setEffMoveKey(spep_1, aura2, 0, -205, 0);
setEffAlphaKey( spep_1, aura2, 255);
setEffRotateKey( spep_1, aura2, 0);
setEffScaleKey( spep_1, aura2, 1.5, 1.5);
setShakeChara( spep_1, 0, 100, 5);

eff003=entryEffect(  spep_1,   1502,   0x100,     -1,  0,  0,  0);   -- eff_003 (気)
setEffMoveKey(spep_1, eff003, 0, 0, 0);
setEffScaleKey( spep_1, eff003, 1.0, 1.0);
setEffAlphaKey( spep_1, eff003, 255);
setEffRotateKey( spep_1, eff003, 0);
--カットイン表示

speff1 = entryEffect(  spep_1,   1504,   0x100,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff1, 3, 2);                           -- カットイン差し替え
speff2 = entryEffect(  spep_1,   1505,   0x100,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff2, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー
ctgogo = entryEffectLife( spep_1, 190006, 85, 0x100, -1, 0, 30, 530);    -- ゴゴゴゴ
setEffScaleKey(spep_1, ctgogo, 0.7, 0.7);
setEffRotateKey(spep_1, ctgogo, 10);
setEffAlphaKey( spep_1, ctgogo, 255);

setEffScaleKey(spep_1+85, ctgogo, 0.7, 0.7);
setEffRotateKey(spep_1+85, ctgogo, 10);
setEffAlphaKey( spep_1+85, ctgogo, 255);
--setEffShake(spep_1, ctgogo, 40, 28);
------------------------------------------------------
-- カードカットイン(90f)
------------------------------------------------------

spep_2=spep_1+100;

entryFade( spep_2-10, 5, 15, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_2+5, 0, 90, 0, 10, 10, 10, 180);       -- ベース暗め　背景
setMoveKey( spep_2, 0, 0, 0, 0); --味方位置
setScaleKey(   spep_2,   0, 1.5, 1.5);
setRotateKey( spep_2,  0,  0 );

--カード絵＋技名
playSe( spep_2+10, SE_05);
speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え



------------------------------------------------------
-- 手前へ突進(100F)
------------------------------------------------------
spep_3=spep_2+90;

setDisp( spep_3, 0, 0); --キャラクター非表示



entryFade( spep_3-5, 3, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_3, 0, 120, 0, 0, 0, 0, 255);          -- ベース暗め　背景



ryusentame = entryEffectLife( spep_3, 921, 120, 0x80,  -1,  0,  0, 0); -- 奥行き流線斜め
setEffMoveKey(spep_3, ryusentame, 0, 0, 0);
setEffRotateKey( spep_3, ryusentame, -135);
setEffScaleKey( spep_3, ryusentame, 1.6, 1.7);
setEffAlphaKey( spep_3, ryusentame, 255);

-- ** エフェクト等 ** --
huseikai3 = entryEffect( spep_3, SP_01, 0x100, -1, 0, 0, 0); 
setEffMoveKey( spep_3, huseikai3, 0, 0, 0);
setEffScaleKey( spep_3, huseikai3, 1.0, 1.0);
setEffAlphaKey( spep_3, huseikai3, 255);
setEffRotateKey( spep_3, huseikai3, 0);


ctzuo = entryEffectLife( spep_3, 10012, 90, 0x100, -1, 0, 100, 300);    -- ズオッ
setEffRotateKey(spep_3, ctzuo, 20);
setEffAlphaKey( spep_3, ctzuo, 255);
setEffScaleKey( spep_3, ctzuo, 2.0, 2.0);
setEffScaleKey( spep_3+50, ctzuo, 2.0, 2.0);
setEffScaleKey( spep_3+90, ctzuo, 3.0, 3.0);
setEffAlphaKey( spep_3, ctzuo, 255);
setEffAlphaKey( spep_3+90, ctzuo, 20);
setEffAlphaKey( spep_3+50, ctzuo, 255);
setEffShake( spep_3+5, ctzuo, 45, 20);
setEffRotateKey(spep_3+90, ctzuo, 20);

spname = entryEffectLife( spep_3, 1508,  120,0x100,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え
setEffMoveKey(spep_3, spname, 0, 0, 0);
setEffRotateKey( spep_3, spname, 0);
setEffScaleKey( spep_3, spname, 1.0, 1.0);
setEffAlphaKey( spep_3, spname, 255);



playSe( spep_3+25, 1022);
--playSe( spep_3+60, SE_03);
playSe( spep_3+60, 1018);
--playSe( spep_3+60, SE_03);


------------------------------------------------------
-- 遠くから迫る(130F)
------------------------------------------------------
spep_4=spep_3+120;


entryFade( spep_4-5, 3, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_4, 0, 70, 0, 10, 10, 10, 100);          -- ベース暗め　背景
setEffAlphaKey( spep_4-5, spname, 255);
setEffAlphaKey( spep_4, spname, 0);


ryusen = entryEffectLife( spep_4, 921, 100, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffMoveKey( spep_4, ryusen, 0, 0, 0);
setEffRotateKey(spep_4, ryusen, -130);
setEffScaleKey( spep_4, ryusen, 2.0, 2.0);
setEffAlphaKey( spep_4, ryusen, 255);



-- ** エフェクト等 ** --
chikyu = entryEffect( spep_4, SP_02, 0x80, -1, 0, 0, 0); 
setEffMoveKey( spep_4, chikyu, 0, 0, 0);
setEffScaleKey( spep_4, chikyu, 1.0, 1.0);
setEffAlphaKey( spep_4, chikyu, 255);
setEffRotateKey( spep_4, chikyu, 0);


setDisp( spep_4, 0, 0);
setMoveKey(  spep_4,    0,  -2000, 0,   0);
setDisp( spep_4, 1, 1);
changeAnime( spep_4, 1, 118);
setShakeChara( spep_4, 0, 72, 15);

--changeAnime( spep_4, 1, 102);                        -- 後ろ姿

setMoveKey(  spep_4,    1,  500, -900,   0);
setMoveKey(  spep_4+30,    1,  150,  -300,   0);
setMoveKey(  spep_4+71,    1,  150,  -300,   0);

setScaleKey(  spep_4,   1,   1.5,  1.5);
setScaleKey(  spep_4+71,   1,   1.5,  1.5);



-- ** エフェクト等 ** --

playSe( spep_4+11, 1042);
playSe( spep_4+58, SE_07);


setShakeChara( spep_4, 1, 100, 20);

entryFadeBg( spep_4, 0, 100, 0,10, 10, 10, 180);          -- ベース暗め　背景

-- 書き文字エントリー
ct = entryEffectLife( spep_4, 10014, 72, 0, -1, 0, 100, 255); -- ズドドッ
setEffShake(spep_4, ct, 72, 20);
setEffScaleKey( spep_4, ct, 2.4, 2.4);
setEffRotateKey(spep_4, ct, 70);
setEffAlphaKey(spep_4, ct, 255);
setEffAlphaKey(spep_4+70, ct, 255);
setEffAlphaKey(spep_4+72, ct, 0);


------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 425; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade(SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setMoveKey( SP_dodge+8, 0,    0, -54,   0);
setMoveKey( SP_dodge+9, 0,  -1500,   -54,   0);

endPhase(SP_dodge+10);
do return end
else end
------------------------------------------------------
-- 続き
------------------------------------------------------


------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
spep_9=spep_4+72; --410 469

entryFade( spep_9-5, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--entryFadeBg( spep_9, 0, 0, 0, 0, 0, 0, 255);          -- ベース暗め　背景
setEffAlphaKey( spep_9-1, bunnshin, 255);
setRotateKey( spep_9-1,  0,  0 );
setRotateKey( spep_9,  1,  -20 );

setEffAlphaKey( spep_9, bunnshin, 0);

setScaleKey(   spep_9-1,   1, 1.6, 1.6);
setMoveKey(   spep_9-1,   1,    1000, 10,   0);
setDisp( spep_9-1, 1, 1);

setMoveKey(   spep_9,   1,    -300, -100,   0);
setScaleKey(   spep_9,   1, 2.6, 2.6);
changeAnime( spep_9, 1, 108);                        -- 後ろ姿


setMoveKey(   spep_9+5,   1,    -250, -300,   0);
setScaleKey(   spep_9+5,   1, 2.6, 2.6);
--setRotateKey( spep_9,  1,  -10 );

setMoveKey(   spep_9+20,   1,    0, -300,   0);
setRotateKey( spep_9+20,  1,  0 );

setMoveKey(   spep_9+30,   1,    200, -200,   0);
setScaleKey(   spep_9+30,   1, 0.6, 0.6);
setRotateKey( spep_9+30,  1,  -45 );
chousei =3;
setMoveKey(   spep_9+36-chousei,   1,    0, -200,   0);
setRotateKey( spep_9+36-chousei,  1,  -90 );

setMoveKey(   spep_9+38-chousei,   1,    -50, -250,   0);
setRotateKey( spep_9+38-chousei,  1,  -180 );

setMoveKey(   spep_9+40-chousei,   1,    -50, -300,   0);
setRotateKey( spep_9+40-chousei,  1,  -180 );

setMoveKey(   spep_9+42-chousei,   1,    0, -340,   0);
setRotateKey( spep_9+42-chousei,  1,  -180 );

setMoveKey(   spep_9+46-chousei,   1,    20, -370,   0);
setRotateKey( spep_9+46-chousei,  1,  -270 );

setMoveKey(   spep_9+48-chousei,   1,    15, -390,   0);
setRotateKey( spep_9+48-chousei,  1,  -270 );
setDisp( spep_9+48-chousei, 1, 0);
setScaleKey(   spep_9+48,   1, 0.0, 0.0);
setRotateKey( spep_9+48,  1,  -330 );

playSe( spep_9+3, 1018);

--playSe( spep_9, SE_10);
--playSe( spep_9+10, SE_09);
playSe( spep_9+60, SE_10);

bg = entryEffect(  spep_9,   SP_04,   0x80,     -1,  0,  0,  0);--導入
setEffMoveKey(spep_9, bg, 0, 0, 0);
setEffScaleKey( spep_9, bg, 1.1, 1.1);
setEffAlphaKey( spep_9, bg, 255);
setEffRotateKey( spep_9, bg, 0);

eff = entryEffect(  spep_9,   SP_03,   0x100,     -1,  0,  0,  0);--導入
setEffMoveKey(spep_9, eff, 0, 0, 0);
setEffScaleKey( spep_9, eff, 1.1, 1.1);
setEffAlphaKey( spep_9, eff, 255);
setEffRotateKey( spep_9, eff, 0);

setEffMoveKey(spep_9+140, eff, 0, 0, 0);
setEffScaleKey( spep_9+140, eff, 1.1, 1.1);
setEffAlphaKey( spep_9+140, eff, 255);
setEffRotateKey( spep_9+140, eff, 0);

setEffMoveKey(spep_9+141, eff, 0, 0, 0);
setEffScaleKey( spep_9+141, eff, 1.1, 1.1);
setEffAlphaKey( spep_9+141, eff, 0);
setEffRotateKey( spep_9+141, eff, 0);

shuchusen3 = entryEffectLife( spep_9+0, 906, 170, 0x100,  -1, 0,  100,  -100);   -- 集中線3
setEffMoveKey( spep_9+0, shuchusen3, 100, -100, 0);
setEffScaleKey( spep_9+0, shuchusen3, 2.0, 2.0);
setEffAlphaKey( spep_9+0, shuchusen3, 255);
setEffRotateKey( spep_9+0, shuchusen3, 0);

-- ダメージ表示
dealDamage(spep_9+76);

entryFade( spep_9+160, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_9+170);

else
-----------------------------------------
--敵側の攻撃
-----------------------------------------

------------------------------------------------------
--フュージョン
------------------------------------------------------


setVisibleUI(0, 0);
setDisp( 0, 0, 1); --味方表示
setDisp( 0, 1, 0); --敵非表示
changeAnime( 0, 0, 0); --味方立ちポーズ
setMoveKey( 0, 0, 10, -80, 0); --味方位置
setMoveKey( 1, 0, 10, -80, 0); --味方位置
setMoveKey( 2, 0, 10, -80, 0); --味方位置
setMoveKey( 3, 0, 10, -80, 0); --味方位置
setMoveKey( 4, 0, 10, -80, 0); --味方位置
setMoveKey( 5, 0, 10, -80, 0); --味方位置

-- ** 背景 ** --
--entryFadeBg( 0, 0, 322, 0, 0, 0, 0, 200); -- ベース暗め　背景
setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   1,   0, 1.5, 1.5);
setScaleKey(   2,   0, 1.5, 1.5);
setScaleKey(   3,   0, 1.5, 1.5);
setScaleKey(   4,   0, 1.5, 1.5);
setScaleKey(   5,   0, 1.5, 1.5);
setRotateKey( 0,  0,  0 );



--気を貯める
--         frame, eff, atr,tgt, tag,  x, y
changeAnime(  30, 0, 17);                       -- 溜め!
setAnimeLoop(  30, 0, 1);
eff002=entryEffectLife(  30,   1501,  40, 0x80, -1,  0,  0,  0);    -- eff_002
setEffMoveKey(30, eff002, 0, 0, 0);
setEffScaleKey( 30, eff002, 1.0, 1.0);
setEffAlphaKey( 30, eff002, 255);
setEffRotateKey( 30, eff002, 0);

eff001=entryEffectLife(  30,   1500,  40, 0x80, -1,  0,  0,  0);    -- eff_001
setEffMoveKey(30, eff001, 0, 0, 0);
setEffScaleKey( 30, eff001, 1.0, 1.0);
setEffAlphaKey( 30, eff001, 255);
setEffRotateKey( 30, eff001, 0);
playSe( 30, SE_01);

entryFade( 62, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b,  100);     -- white fade
--[[
-- ** エフェクト等 ** --
aura = entryEffectLife(  30,   311, 39, 0x100,  -1,  0,  0,  -100); -- オーラ
setEffScaleKey( 30, aura, 1.5, 1.5);
setShakeChara( 30, 0, 59, 5);
]]
-- ** エフェクト等 ** --
aura = entryEffectLife(  30,   311, 40, 0x100,  -1,  0,  0,  -205); -- オーラ
setEffMoveKey(30, aura, 0, -205, 0);
setEffAlphaKey( 30, aura, 255);
setEffRotateKey( 30, aura, 0);
setEffScaleKey( 30, aura, 1.5, 1.5);
setShakeChara( 30, 0, 100, 5);

-- 書き文字エントリー
ct = entryEffectLife( 30, 10013, 39, 0, -1, 0, 0, 300); -- ズズンッ
setEffAlphaKey(30, ct, 255);
setEffAlphaKey(50, ct, 255);
setEffAlphaKey(70, ct, 0);
setEffScaleKey( 30, ct, 0.1, 0.1);
setEffScaleKey( 40, ct, 2.5, 2.5);
setEffShake(31, ct, 40, 7);
playSe( 30, SE_02);


------------------------------------------------------
-- 顔カットイン	(90f)
------------------------------------------------------

spep_1=70;

changeAnime( spep_1, 0, 30);
setMoveKey( spep_1-1, 0, 10, -80, 0); --味方位置
setMoveKey( spep_1, 0, 30, -70, 0); --味方位置
setMoveKey( spep_1+99, 0, 30, -70, 0); --味方位置



entryFade( spep_1-10, 3, 15, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_1, 0, 70, 0, 10, 10, 10, 180);       -- ベース暗め　背景
playSe( spep_1+10, SE_04);



eff004=entryEffect(  spep_1,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
setEffMoveKey(spep_1, eff004, 0, 0, 0);
setEffScaleKey( spep_1, eff004, 1.0, 1.0);
setEffAlphaKey( spep_1, eff004, 255);
setEffRotateKey( spep_1, eff004, 0);

-- ** エフェクト等 ** --
aura2 = entryEffectLife(  spep_1,   311, 100, 0x100,  -1,  0,  0,  -205); -- オーラ
setEffMoveKey(spep_1, aura2, 0, -205, 0);
setEffAlphaKey( spep_1, aura2, 255);
setEffRotateKey( spep_1, aura2, 0);
setEffScaleKey( spep_1, aura2, 1.5, 1.5);
setShakeChara( spep_1, 0, 100, 5);

eff003=entryEffect(  spep_1,   1502,   0x100,     -1,  0,  0,  0);   -- eff_003 (気)
setEffMoveKey(spep_1, eff003, 0, 0, 0);
setEffScaleKey( spep_1, eff003, 1.0, 1.0);
setEffAlphaKey( spep_1, eff003, 255);
setEffRotateKey( spep_1, eff003, 0);
--カットイン表示

--speff1 = entryEffect(  spep_1,   1504,   0x100,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff1, 3, 2);                           -- カットイン差し替え
--speff2 = entryEffect(  spep_1,   1505,   0x100,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff2, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー
ctgogo = entryEffectLife( spep_1, 190006, 85, 0x100, -1, 0, 30, 530);    -- ゴゴゴゴ
setEffScaleKey(spep_1, ctgogo, -0.7, 0.7);
setEffRotateKey(spep_1, ctgogo, 10);
setEffAlphaKey( spep_1, ctgogo, 255);

setEffScaleKey(spep_1+85, ctgogo, -0.7, 0.7);
setEffRotateKey(spep_1+85, ctgogo, 10);
setEffAlphaKey( spep_1+85, ctgogo, 255);
--setEffShake(spep_1, ctgogo, 40, 28);
------------------------------------------------------
-- カードカットイン(90f)
------------------------------------------------------

spep_2=spep_1+100;

entryFade( spep_2-10, 5, 15, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_2+5, 0, 90, 0, 10, 10, 10, 180);       -- ベース暗め　背景
setMoveKey( spep_2, 0, 0, 0, 0); --味方位置
setScaleKey(   spep_2,   0, 1.5, 1.5);
setRotateKey( spep_2,  0,  0 );

--カード絵＋技名
playSe( spep_2+10, SE_05);
speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え



------------------------------------------------------
-- 手前へ突進(100F)
------------------------------------------------------
spep_3=spep_2+90;

setDisp( spep_3, 0, 0); --キャラクター非表示



entryFade( spep_3-5, 3, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_3, 0, 120, 0, 0, 0, 0, 255);          -- ベース暗め　背景



ryusentame = entryEffectLife( spep_3, 921, 120, 0x80,  -1,  0,  0, 0); -- 奥行き流線斜め
setEffMoveKey(spep_3, ryusentame, 0, 0, 0);
setEffRotateKey( spep_3, ryusentame, -135);
setEffScaleKey( spep_3, ryusentame, 1.6, 1.7);
setEffAlphaKey( spep_3, ryusentame, 255);

-- ** エフェクト等 ** --
huseikai3 = entryEffect( spep_3, SP_01, 0x100, -1, 0, 0, 0); 
setEffMoveKey( spep_3, huseikai3, 0, 0, 0);
setEffScaleKey( spep_3, huseikai3, 1.0, 1.0);
setEffAlphaKey( spep_3, huseikai3, 255);
setEffRotateKey( spep_3, huseikai3, 0);


ctzuo = entryEffectLife( spep_3, 10012, 90, 0x100, -1, 0, 100, 300);    -- ズオッ
setEffRotateKey(spep_3, ctzuo, 20);
setEffAlphaKey( spep_3, ctzuo, 255);
setEffScaleKey( spep_3, ctzuo, 2.0, 2.0);
setEffScaleKey( spep_3+50, ctzuo, 2.0, 2.0);
setEffScaleKey( spep_3+90, ctzuo, 3.0, 3.0);
setEffAlphaKey( spep_3, ctzuo, 255);
setEffAlphaKey( spep_3+90, ctzuo, 20);
setEffAlphaKey( spep_3+50, ctzuo, 255);
setEffShake( spep_3+5, ctzuo, 45, 20);
setEffRotateKey(spep_3+90, ctzuo, 20);

spname = entryEffectLife( spep_3, 1508,  120,0x100,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え
setEffMoveKey(spep_3, spname, 0, 0, 0);
setEffRotateKey( spep_3, spname, 0);
setEffScaleKey( spep_3, spname, 1.0, 1.0);
setEffAlphaKey( spep_3, spname, 255);



playSe( spep_3+25, 1022);
--playSe( spep_3+60, SE_03);
playSe( spep_3+60, 1018);
--playSe( spep_3+60, SE_03);


------------------------------------------------------
-- 遠くから迫る(130F)
------------------------------------------------------
spep_4=spep_3+120;


entryFade( spep_4-5, 3, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_4, 0, 70, 0, 10, 10, 10, 100);          -- ベース暗め　背景
setEffAlphaKey( spep_4-5, spname, 255);
setEffAlphaKey( spep_4, spname, 0);


ryusen = entryEffectLife( spep_4, 921, 100, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffMoveKey( spep_4, ryusen, 0, 0, 0);
setEffRotateKey(spep_4, ryusen, -130);
setEffScaleKey( spep_4, ryusen, 2.0, 2.0);
setEffAlphaKey( spep_4, ryusen, 255);



-- ** エフェクト等 ** --
chikyu = entryEffect( spep_4, SP_02, 0x80, -1, 0, 0, 0); 
setEffMoveKey( spep_4, chikyu, 0, 0, 0);
setEffScaleKey( spep_4, chikyu, 1.0, 1.0);
setEffAlphaKey( spep_4, chikyu, 255);
setEffRotateKey( spep_4, chikyu, 0);


setDisp( spep_4, 0, 0);
setMoveKey(  spep_4,    0,  -2000, 0,   0);
setDisp( spep_4, 1, 1);
changeAnime( spep_4, 1, 118);
setShakeChara( spep_4, 0, 72, 15);

--changeAnime( spep_4, 1, 102);                        -- 後ろ姿

setMoveKey(  spep_4,    1,  500, -900,   0);
setMoveKey(  spep_4+30,    1,  150,  -300,   0);
setMoveKey(  spep_4+71,    1,  150,  -300,   0);

setScaleKey(  spep_4,   1,   1.5,  1.5);
setScaleKey(  spep_4+71,   1,   1.5,  1.5);



-- ** エフェクト等 ** --

playSe( spep_4+11, 1042);
playSe( spep_4+58, SE_07);


setShakeChara( spep_4, 1, 100, 20);

entryFadeBg( spep_4, 0, 100, 0,10, 10, 10, 180);          -- ベース暗め　背景

-- 書き文字エントリー
ct = entryEffectLife( spep_4, 10014, 72, 0, -1, 0, 100, 255); -- ズドドッ
setEffShake(spep_4, ct, 72, 20);
setEffScaleKey( spep_4, ct, 2.4, 2.4);
setEffRotateKey(spep_4, ct, 10);
setEffAlphaKey(spep_4, ct, 255);
setEffAlphaKey(spep_4+70, ct, 255);
setEffAlphaKey(spep_4+72, ct, 0);


------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 425; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade(SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setMoveKey( SP_dodge+8, 0,    0, -54,   0);
setMoveKey( SP_dodge+9, 0,  -1500,   -54,   0);

endPhase(SP_dodge+10);
do return end
else end
------------------------------------------------------
-- 続き
------------------------------------------------------


------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
spep_9=spep_4+72; --410 469

entryFade( spep_9-5, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--entryFadeBg( spep_9, 0, 0, 0, 0, 0, 0, 255);          -- ベース暗め　背景
setEffAlphaKey( spep_9-1, bunnshin, 255);
setRotateKey( spep_9-1,  0,  0 );
setRotateKey( spep_9,  1,  -20 );

setEffAlphaKey( spep_9, bunnshin, 0);

setScaleKey(   spep_9-1,   1, 1.6, 1.6);
setMoveKey(   spep_9-1,   1,    1000, 10,   0);
setDisp( spep_9-1, 1, 1);

setMoveKey(   spep_9,   1,    -300, -100,   0);
setScaleKey(   spep_9,   1, 2.6, 2.6);
changeAnime( spep_9, 1, 108);                        -- 後ろ姿


setMoveKey(   spep_9+5,   1,    -250, -300,   0);
setScaleKey(   spep_9+5,   1, 2.6, 2.6);
--setRotateKey( spep_9,  1,  -10 );

setMoveKey(   spep_9+20,   1,    0, -300,   0);
setRotateKey( spep_9+20,  1,  0 );

setMoveKey(   spep_9+30,   1,    200, -200,   0);
setScaleKey(   spep_9+30,   1, 0.6, 0.6);
setRotateKey( spep_9+30,  1,  -45 );
chousei =3;
setMoveKey(   spep_9+36-chousei,   1,    0, -200,   0);
setRotateKey( spep_9+36-chousei,  1,  -90 );

setMoveKey(   spep_9+38-chousei,   1,    -50, -250,   0);
setRotateKey( spep_9+38-chousei,  1,  -180 );

setMoveKey(   spep_9+40-chousei,   1,    -50, -300,   0);
setRotateKey( spep_9+40-chousei,  1,  -180 );

setMoveKey(   spep_9+42-chousei,   1,    0, -340,   0);
setRotateKey( spep_9+42-chousei,  1,  -180 );

setMoveKey(   spep_9+46-chousei,   1,    20, -370,   0);
setRotateKey( spep_9+46-chousei,  1,  -270 );

setMoveKey(   spep_9+48-chousei,   1,    15, -390,   0);
setRotateKey( spep_9+48-chousei,  1,  -270 );
setDisp( spep_9+48-chousei, 1, 0);
setScaleKey(   spep_9+48,   1, 0.0, 0.0);
setRotateKey( spep_9+48,  1,  -330 );

playSe( spep_9+3, 1018);

--playSe( spep_9, SE_10);
--playSe( spep_9+10, SE_09);
playSe( spep_9+60, SE_10);

bg = entryEffect(  spep_9,   SP_04,   0x80,     -1,  0,  0,  0);--導入
setEffMoveKey(spep_9, bg, 0, 0, 0);
setEffScaleKey( spep_9, bg, 1.1, 1.1);
setEffAlphaKey( spep_9, bg, 255);
setEffRotateKey( spep_9, bg, 0);

eff = entryEffect(  spep_9,   SP_03,   0x100,     -1,  0,  0,  0);--導入
setEffMoveKey(spep_9, eff, 0, 0, 0);
setEffScaleKey( spep_9, eff, 1.1, 1.1);
setEffAlphaKey( spep_9, eff, 255);
setEffRotateKey( spep_9, eff, 0);

setEffMoveKey(spep_9+140, eff, 0, 0, 0);
setEffScaleKey( spep_9+140, eff, 1.1, 1.1);
setEffAlphaKey( spep_9+140, eff, 255);
setEffRotateKey( spep_9+140, eff, 0);

setEffMoveKey(spep_9+141, eff, 0, 0, 0);
setEffScaleKey( spep_9+141, eff, 1.1, 1.1);
setEffAlphaKey( spep_9+141, eff, 0);
setEffRotateKey( spep_9+141, eff, 0);

shuchusen3 = entryEffectLife( spep_9+0, 906, 170, 0x100,  -1, 0,  100,  -100);   -- 集中線3
setEffMoveKey( spep_9+0, shuchusen3, 100, -100, 0);
setEffScaleKey( spep_9+0, shuchusen3, 2.0, 2.0);
setEffAlphaKey( spep_9+0, shuchusen3, 255);
setEffRotateKey( spep_9+0, shuchusen3, 0);

-- ダメージ表示
dealDamage(spep_9+76);

entryFade( spep_9+160, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_9+170);

end