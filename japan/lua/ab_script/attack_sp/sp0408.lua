print ("[lua]sp0408");

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

tyo = -30;
tyo2 = -40;

SP_01 = 150914;
SP_02 = 150915;
SP_03 = 150916;

multi_frm = 2;

changeAnime( 0, 0, 1);                       -- 立ち
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0, 0,   0);
setMoveKey(   1,   0,    0, 0,   0);
setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   1,   0, 1.5, 1.5);

------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

spep0=0;

setVisibleUI(spep0, 0);

--気を貯める
--         frame, eff, atr,tgt, tag,  x, y
changeAnime(  spep0+30, 0, 17);                       -- 溜め!
entryEffect(  spep0+30,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
entryEffect(  spep0+30,   1500,   0x100,    -1,  0,  0,  0);    -- eff_001
playSe( spep0+30, SE_01); --30

entryFade( spep0+61, 5, 11, 5, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife( spep0+30,   311, 39, 0x100,  0,  0,  0,  0); -- オーラ
setEffMoveKey( spep0+30,aura,0,-170,0);
setEffRotateKey( spep0+30,aura,0);
setEffAlphaKey( spep0+30,aura,255);
setEffScaleKey(spep0+30, aura, 1.5, 1.5);
setShakeChara(spep0+30, 0, 39, 20);

-- 書き文字エントリー
ctZuzu = entryEffectLife(spep0+30, 10013, 39, 0, -1, 0, 0, 0); -- ズズンッ

setEffMoveKey(spep0+30,ctZuzu,0,200,0);
setEffMoveKey(spep0+40,ctZuzu,0,320,0);
setEffMoveKey(spep0+69,ctZuzu,0,320,0);

setEffRotateKey(spep0+30,ctZuzu,350);
setEffRotateKey(spep0+69,ctZuzu,350);

setEffShake(spep0+30, ctZuzu, 39, 15);

setEffAlphaKey(spep0+30, ctZuzu, 255);
setEffAlphaKey(spep0+69, ctZuzu, 255);

setEffScaleKey( spep0+30, ctZuzu, 0.1, 0.1);
setEffScaleKey( spep0+40, ctZuzu, 3.1, 3.1);
setEffScaleKey( spep0+69, ctZuzu, 3.1, 3.1);

playSe( spep0+45, SE_02);

--0〜69F
------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
spep1=spep0+70;

changeAnime(spep1, 0, 30);                       -- 溜め!
playSe( spep1+3, SE_03);

entryEffect(spep1,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect( spep1,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
speff = entryEffect(spep1+10,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(spep1+10,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe(spep1+10, SE_04);

kitame=entryEffect( spep1, SP_01, 0x100, 0,  -60,  40,  0);   -- 手のカメハメ波部
setEffMoveKey( spep1, kitame,  -60,  40,  0);
setEffScaleKey(spep1, kitame, 0.4,0.4);
setEffAlphaKey(spep1, kitame, 255);
setEffRotateKey(spep1, kitame, 0);

setEffShake(spep1, kitame, 100, 5);

entryFade(spep1+92, 3, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife( spep1,   311, 99, 0x100,  0,  0,  0,  0); -- オーラ
setEffMoveKey( spep1,aura,0,-170,0);
setEffRotateKey( spep1,aura,0);
setEffAlphaKey( spep1,aura,255);
setEffScaleKey( spep1, aura, 1.5, 1.5);
setShakeChara( spep1, 0, 99, 10);

-- 書き文字エントリー
ctgogo = entryEffectLife( spep1+23, 190006, 69, 0x100, -1, 0, 0, 0);    -- ゴゴゴゴ
setEffMoveKey( spep1+23, ctgogo, 100, 500, 0);
setEffScaleKey( spep1+23, ctgogo, 0.7, 0.7);
setEffRotateKey( spep1+23, ctgogo, 10);
setEffAlphaKey( spep1+23, ctgogo, 255);

setEffScaleKey( spep1+85, ctgogo, 0.7, 0.7);
setEffRotateKey( spep1+85, ctgogo, 10);
setEffAlphaKey( spep1+85, ctgogo, 255);

setEffScaleKey( spep1+92, ctgogo, 2.0, 2.0);
setEffRotateKey( spep1+92, ctgogo, 10);
setEffAlphaKey( spep1+92, ctgogo, 255);

setEffShake(spep1+20, ctgogo, 69, 10);
--70〜169F
------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
spep2=spep1+100;

setScaleKey( spep2-1,   0, 1.5, 1.5);
setScaleKey( spep2,   0, 1.0, 1.0);

playSe( spep2, SE_05);
speff = entryEffect(  spep2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

entryFade( spep2+85, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(  spep2+88,    0,      0,  0,   0);
-- ** エフェクト等 ** --
--playSe( 170+64, SE_06);

--170〜259F
------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
spep3=spep2+90;

changeAnime( spep3-1, 0, 31);                                    -- かめはめ発射ポーズ
setMoveKey(  spep3-1,    0,      -480,  0,   0);
setMoveKey(  spep3+4,    0,      -480,  0,   0);
setMoveKey(  spep3+10,    0,   -180,  0,   0);
setMoveKey(  spep3+39,    0,   -180,  0,   0);
setMoveKey(  spep3+41,    0,      -500,  0,   0);
setMoveKey(  spep3+45,    0,      -700,  0,   0);

setScaleKey( spep3-2,   0, 0.5, 0.5);
setScaleKey( spep3+10,   0, 0.9, 0.9);
setScaleKey( spep3+39,   0, 0.9, 0.9);
setScaleKey( spep3+42,   0, 0.5, 0.5);
setScaleKey( spep3+45,   0, 0.5, 0.5);

setShakeChara( spep3, 0, 45, 20);

kamehame_beam = entryEffectLife( spep3+3, SP_02, 109, 0x100,  0,  0,  0,  0);   -- 伸びるかめはめ波

setEffMoveKey(  spep3+3,kamehame_beam, 250,  70,   0);
setEffMoveKey(  spep3+4,kamehame_beam, 250,  70,   0);
setEffMoveKey(  spep3+10,kamehame_beam, 510,  80,   0);
setEffMoveKey(  spep3+39,kamehame_beam, 510,  80,   0);
setEffMoveKey(  spep3+41,kamehame_beam, 190,  70,   0);
setEffMoveKey(  spep3+44,kamehame_beam, -230,  70,   0);
setEffMoveKey(  spep3+109+3,kamehame_beam, -230,  70,   0);

setEffScaleKey( spep3+3,kamehame_beam, 0.8, 0.8);
setEffScaleKey( spep3+109+3,kamehame_beam, 0.8, 0.8);

setEffRotateKey( spep3+3,kamehame_beam, 0);
setEffRotateKey( spep3+109+3,kamehame_beam, 0);

setEffAlphaKey( spep3+3,kamehame_beam, 255);
setEffAlphaKey( spep3+109+3,kamehame_beam, 255);

playSe( spep3, SE_07);

-- 途中からカメハメハが伸びる
--setMoveKey(  spep3+40,    0,   -150,  0,   50);
--setMoveKey(  spep3+45,    0,   -600,  0,   80);

entryFade( spep3+105, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
entryFadeBg( spep3, 0, 110, 0, 0, 0, 0, 255);       -- ベース暗め　背景

sen2 = entryEffectLife( spep3, 921, 109, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep3, sen2, 190);
setEffScaleKey(  spep3, sen2, 1.3, 1.3);

shuchusen = entryEffectLife(spep3, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey(spep3, shuchusen, 1.0, 1.0);
setEffScaleKey(spep3+40, shuchusen, 1.0, 1.0);
setEffScaleKey(spep3+49, shuchusen, 2.0, 2.0);

-- 書き文字エントリー
ctZuo = entryEffectLife(spep3+6, 10012, 38, 0, -1, 0,0, 0); -- ズオッ
setEffMoveKey(spep3+6,ctZuo,130,380,0);
setEffShake(spep3+6, ctZuo, 32, 10);
setEffRotateKey(spep3+6, ctZuo, 20);
setEffAlphaKey(spep3+6, ctZuo, 255);
setEffAlphaKey(spep3+37, ctZuo, 255);
setEffAlphaKey(spep3+44, ctZuo, 0);
setEffScaleKey(spep3+8, ctZuo, 0.0, 0.0);
setEffScaleKey(spep3+13, ctZuo, 2.5, 2.5);
setEffScaleKey(spep3+37, ctZuo, 2.5, 2.5);
setEffScaleKey(spep3+44, ctZuo, 6.0, 6.0);
playSe(spep3+40, SE_07);
entryFade(spep3+95, 10,  5, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--260〜369F
------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
spep4=spep3+110;

setDisp( spep4, 0, 0);
setDisp( spep4, 1, 1);
changeAnime( spep4, 1, 104);                        -- ガード
setMoveKey(  spep4-1,    1,  235,  0,   0);
setMoveKey(  spep4,    1,  235,  0,   0);
setMoveKey(  spep4+1,    1,  235,  0,   0);
setScaleKey( spep4-1,    1,  0.9, 0.9);
setScaleKey( spep4,    1,  0.9, 0.9);

kamehame_beam2 = entryEffect( spep4, SP_03,   0, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey(spep4, kamehame_beam2, 1, 1);

-- ** エフェクト等 ** --
setShakeChara( spep4, 1, 99, 10);

entryFadeBg( spep4, 0, 99, 0,0, 0, 0, 160);          -- ベース暗め　背景

entryEffectLife( spep4, 921, 99, 0x80,  -1,  0,  0,  0); -- 流線斜め

-- 書き文字エントリー
ctZudon = entryEffectLife( spep4, 10014, 70, 0, -1, 0,0, 0); -- ズドドッ
setEffMoveKey(spep4,ctZudon,-30,370,0);
setEffShake(spep4, ctZudon, 99, 10);
setEffScaleKey( spep4, ctZudon, 3.0, 3.0);
setEffRotateKey(spep4, ctZudon, 70);
setEffAlphaKey(spep4, ctZudon, 255);
------------------------------------------------------
-- 回避(412F spep4+42)
------------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge = 412; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

setMoveKey(  SP_dodge,    1,  235,  0,   0);
setScaleKey( SP_dodge,    1,  1.5, 1.5);

setEffMoveKey(SP_dodge,ctZudon,-30,370,0);
setEffScaleKey( SP_dodge, ctZudon, 3.0, 3.0);
setEffRotateKey(SP_dodge, ctZudon, 70);
setEffAlphaKey(SP_dodge, ctZudon, 255);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp(  SP_dodge+1,1,0);
setMoveKey(  SP_dodge+1,    1,  0,  -10000,   0);
setScaleKey( SP_dodge+1,    1,  1.5, 1.5);
setMoveKey(  SP_dodge+20,    1,  0,  -10000,   0);
setScaleKey( SP_dodge+20,    1,  1.5, 1.5);

setEffMoveKey(SP_dodge+10,ctZudon,-30,370,0);
setEffScaleKey( SP_dodge+10, ctZudon, 3.0, 3.0);
setEffRotateKey(SP_dodge+10, ctZudon, 70);
setEffAlphaKey(SP_dodge+10, ctZudon, 255);

endPhase(SP_dodge+10);
setDisp(SP_dodge+10,1,0);

do return end
else end
--------------------------------------------------------
--回避されなかった場合
--------------------------------------------------------
setMoveKey(  spep4+58,    1,   235,  0,   0);
setScaleKey(  spep4+58,   1,   1.9,  1.9);

playSe( spep4+20, SE_06);

setEffScaleKey(spep4+82, kamehame_beam2, 1, 1);
setEffScaleKey(spep4+84, kamehame_beam2, 2.5, 2.5);
setDamage( spep4+82, 1, 0);  -- ダメージ振動等

playSe( spep4+58, SE_09);

-- 敵吹っ飛ぶモーション
changeAnime( spep4+58, 1, 108);
setMoveKey(  spep4+58, 1,  275,    0,  0);
setMoveKey(  spep4+99, 1,  0,    0,  0);
setScaleKey( spep4+58, 1,  1.6, 1.6);
setScaleKey( spep4+59, 1,  1.5, 1.5);
setScaleKey( spep4+98, 1,  0.2, 0.2);

setEffAlphaKey(spep4+65, ctZudon, 255);
setEffAlphaKey(spep4+70, ctZudon, 0);

entryFade( spep4+82, 6,  17, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--370〜469F
------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
spep5=spep4+100;

setDisp( spep5-1, 1, 1);
setMoveKey(  spep5-1,    1,  100,  0,   0);
setScaleKey( spep5-1,    1,  1.0, 1.0);
setMoveKey(  spep5,    1,    0,   0,   128);
setScaleKey( spep5,    1,  0.1, 0.1);

changeAnime( spep5, 1, 107);                         -- 手前ダメージ
entryEffect( spep5+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep5+8, SE_10);

setMoveKey(  spep5+8,   1,    0,   0,   128);
setMoveKey(  spep5+15,   1,  -60,  -200,  -100);
--setMoveKey(  486,   1,  -60,  -200,  -100);
setDamage( spep5+16, 1, 0);  -- ダメージ振動等
setShake(spep5+7,6,15);
setShake(spep5+13,15,10);

setRotateKey( spep5,  1,  30 );
setRotateKey( spep5+2,  1,  80 );
setRotateKey( spep5+4,  1, 120 );
setRotateKey( spep5+6,  1, 160 );
setRotateKey( spep5+8,  1, 200 );
setRotateKey( spep5+10,  1, 260 );
setRotateKey( spep5+12,  1, 320 );
setRotateKey( spep5+14,  1,   0 );

setShakeChara( spep5+15, 1, 5,  10);
setShakeChara( spep5+20, 1, 10, 20);

-- 書き文字エントリー
ctGa = entryEffectLife( spep5+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake(spep5+15, ctGa, 30, 10);
setEffRotateKey( spep5+15, ctGa, -40);
setEffScaleKey( spep5+15, ctGa, 4.0, 4.0);
setEffScaleKey( spep5+16, ctGa, 2.0, 2.0);
setEffScaleKey( spep5+17, ctGa, 2.6, 2.6);
setEffScaleKey( spep5+18, ctGa, 4.0, 4.0);
setEffScaleKey( spep5+19, ctGa, 2.6, 2.6);
setEffScaleKey( spep5+20, ctGa, 3.8, 3.8);
setEffScaleKey( spep5+110, ctGa, 3.8, 3.8);
setEffAlphaKey( spep5+15, ctGa, 255);
setEffAlphaKey( spep5+105, ctGa, 255);
setEffAlphaKey( spep5+115, ctGa, 0);

playSe( spep5+3, SE_11);
shuchusen = entryEffectLife( spep5+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep5+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(spep5+16);

entryFade( spep5+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep5+110);
else

------------------------------------------------------
-- 敵側
------------------------------------------------------
spep0=0;

setVisibleUI(spep0, 0);

--気を貯める
--         frame, eff, atr,tgt, tag,  x, y
changeAnime(  spep0+30, 0, 17);                       -- 溜め!
entryEffect(  spep0+30,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
entryEffect(  spep0+30,   1500,   0x100,    -1,  0,  0,  0);    -- eff_001
playSe( spep0+30, SE_01); --30

entryFade( spep0+61, 5, 11, 5, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife( spep0+30,   311, 39, 0x100,  0,  0,  0,  0); -- オーラ
setEffMoveKey( spep0+30,aura,0,-170,0);
setEffRotateKey( spep0+30,aura,0);
setEffAlphaKey( spep0+30,aura,255);
setEffScaleKey(spep0+30, aura, 1.5, 1.5);
setShakeChara(spep0+30, 0, 39, 20);

-- 書き文字エントリー
ctZuzu = entryEffectLife(spep0+30, 10013, 39, 0, -1, 0, 0, 0); -- ズズンッ

setEffMoveKey(spep0+30,ctZuzu,0,200,0);
setEffMoveKey(spep0+40,ctZuzu,0,320,0);
setEffMoveKey(spep0+69,ctZuzu,0,320,0);

setEffRotateKey(spep0+30,ctZuzu,20);
setEffRotateKey(spep0+69,ctZuzu,20);

setEffShake(spep0+30, ctZuzu, 39, 15);

setEffAlphaKey(spep0+30, ctZuzu, 255);
setEffAlphaKey(spep0+69, ctZuzu, 255);

setEffScaleKey( spep0+30, ctZuzu, 0.1, 0.1);
setEffScaleKey( spep0+40, ctZuzu, 3.1, 3.1);
setEffScaleKey( spep0+69, ctZuzu, 3.1, 3.1);

playSe( spep0+45, SE_02);

--0〜69F
------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
spep1=spep0+70;

changeAnime(spep1, 0, 30);                       -- 溜め!
playSe( spep1+3, SE_03);

entryEffect(spep1,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect( spep1,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)

--[[
speff = entryEffect(spep1+10,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(spep1+10,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
]]--

playSe(spep1+10, SE_04);

kitame=entryEffect( spep1, SP_01, 0x80, 0,  -50,  40,  0);   -- 手のカメハメ波部
setEffMoveKey( spep1, kitame,  -50,  30,  0);
setEffScaleKey(spep1, kitame, 0.4,0.4);
setEffAlphaKey(spep1, kitame, 255);
setEffRotateKey(spep1, kitame, 0);

setEffShake(spep1, kitame, 100, 5);

entryFade(spep1+92, 3, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife( spep1,   311, 99, 0x100,  0,  0,  0,  0); -- オーラ
setEffMoveKey( spep1,aura,0,-170,0);
setEffRotateKey( spep1,aura,0);
setEffAlphaKey( spep1,aura,255);
setEffScaleKey( spep1, aura, 1.5, 1.5);
setShakeChara( spep1, 0, 99, 10);

-- 書き文字エントリー
ctgogo = entryEffectLife( spep1+23, 190006, 69, 0x100, -1, 0, 0, 0);    -- ゴゴゴゴ
setEffMoveKey( spep1+23,ctgogo,0,500,0);
setEffScaleKey( spep1+23, ctgogo, -0.7, 0.7);
setEffRotateKey( spep1+23, ctgogo, 10);
setEffAlphaKey( spep1+23, ctgogo, 255);

setEffScaleKey( spep1+85, ctgogo, -0.7, 0.7);
setEffRotateKey( spep1+85, ctgogo, 10);
setEffAlphaKey( spep1+85, ctgogo, 255);

setEffScaleKey( spep1+92, ctgogo, -2.0, 2.0);
setEffRotateKey( spep1+92, ctgogo, 10);
setEffAlphaKey( spep1+92, ctgogo, 255);

setEffShake(spep1+20, ctgogo, 69, 10);
--70〜169F
------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
spep2=spep1+100;

setScaleKey( spep2-1,   0, 1.5, 1.5);
setScaleKey( spep2,   0, 1.0, 1.0);

playSe( spep2, SE_05);
speff = entryEffect(  spep2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

entryFade( spep2+85, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(  spep2+88,    0,      0,  0,   0);
-- ** エフェクト等 ** --
--playSe( 170+64, SE_06);

--170〜259F
------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
spep3=spep2+90;

changeAnime( spep3-1, 0, 31);                                    -- かめはめ発射ポーズ
setMoveKey(  spep3-1,    0,      -420,  0,   0);
setMoveKey(  spep3+4,    0,      -420,  0,   0);
setMoveKey(  spep3+10,    0,   -120,  0,   0);
setMoveKey(  spep3+39,    0,   -120,  0,   0);
setMoveKey(  spep3+41,    0,      -440,  0,   0);
setMoveKey(  spep3+45,    0,      -700,  0,   0);

setScaleKey( spep3-2,   0, 0.5, 0.5);
setScaleKey( spep3+10,   0, 0.9, 0.9);
setScaleKey( spep3+39,   0, 0.9, 0.9);
setScaleKey( spep3+42,   0, 0.5, 0.5);
setScaleKey( spep3+45,   0, 0.5, 0.5);

setShakeChara( spep3, 0, 45, 20);

kamehame_beam = entryEffectLife( spep3+3, SP_02, 109, 0x100,  0,  0,  0,  0);   -- 伸びるかめはめ波

setEffMoveKey(  spep3+3,kamehame_beam, 190,  70,   0);
setEffMoveKey(  spep3+4,kamehame_beam, 190,  70,   0);
setEffMoveKey(  spep3+10,kamehame_beam, 450,  80,   0);
setEffMoveKey(  spep3+39,kamehame_beam, 450,  80,   0);
setEffMoveKey(  spep3+41,kamehame_beam, 130,  70,   0);
setEffMoveKey(  spep3+44,kamehame_beam, -230,  70,   0);
setEffMoveKey(  spep3+109+3,kamehame_beam, -230,  70,   0);

setEffScaleKey( spep3+3,kamehame_beam, 0.8, 0.8);
setEffScaleKey( spep3+109+3,kamehame_beam, 0.8, 0.8);

setEffRotateKey( spep3+3,kamehame_beam, 0);
setEffRotateKey( spep3+109+3,kamehame_beam, 0);

setEffAlphaKey( spep3+3,kamehame_beam, 255);
setEffAlphaKey( spep3+109+3,kamehame_beam, 255);

playSe( spep3, SE_07);

-- 途中からカメハメハが伸びる
--setMoveKey(  spep3+40,    0,   -150,  0,   50);
--setMoveKey(  spep3+45,    0,   -600,  0,   80);

entryFade( spep3+105, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
entryFadeBg( spep3, 0, 110, 0, 0, 0, 0, 255);       -- ベース暗め　背景

sen2 = entryEffectLife( spep3, 921, 109, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep3, sen2, 190);
setEffScaleKey(  spep3, sen2, 1.3, 1.3);

shuchusen = entryEffectLife(spep3, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey(spep3, shuchusen, 1.0, 1.0);
setEffScaleKey(spep3+40, shuchusen, 1.0, 1.0);
setEffScaleKey(spep3+49, shuchusen, 2.0, 2.0);

-- 書き文字エントリー
ctZuo = entryEffectLife(spep3+6, 10012, 38, 0, -1, 0,0, 0); -- ズオッ
setEffMoveKey(spep3+6,ctZuo,130,380,0);
setEffShake(spep3+6, ctZuo, 32, 10);
setEffRotateKey(spep3+6, ctZuo, 20);
setEffAlphaKey(spep3+6, ctZuo, 255);
setEffAlphaKey(spep3+37, ctZuo, 255);
setEffAlphaKey(spep3+44, ctZuo, 0);
setEffScaleKey(spep3+8, ctZuo, 0.0, 0.0);
setEffScaleKey(spep3+13, ctZuo, 2.5, 2.5);
setEffScaleKey(spep3+37, ctZuo, 2.5, 2.5);
setEffScaleKey(spep3+44, ctZuo, 6.0, 6.0);
playSe(spep3+40, SE_07);
entryFade(spep3+95, 10,  5, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--260〜369F
------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
spep4=spep3+110;

setDisp( spep4, 0, 0);
setDisp( spep4, 1, 1);
changeAnime( spep4, 1, 104);                        -- ガード
setMoveKey(  spep4-1,    1,  235,  0,   0);
setMoveKey(  spep4,    1,  235,  0,   0);
setMoveKey(  spep4+1,    1,  235,  0,   0);
setScaleKey( spep4-1,    1,  0.9, 0.9);
setScaleKey( spep4,    1,  0.9, 0.9);

kamehame_beam2 = entryEffect( spep4, SP_03,   0, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey(spep4, kamehame_beam2, 1, 1);

-- ** エフェクト等 ** --
setShakeChara( spep4, 1, 99, 10);

entryFadeBg( spep4, 0, 99, 0,0, 0, 0, 160);          -- ベース暗め　背景

entryEffectLife( spep4, 921, 99, 0x80,  -1,  0,  0,  0); -- 流線斜め

-- 書き文字エントリー
ctZudon = entryEffectLife( spep4, 10014, 70, 0, -1, 0,0, 0); -- ズドドッ
setEffMoveKey(spep4,ctZudon,-30,370,0);
setEffShake(spep4, ctZudon, 99, 10);
setEffScaleKey( spep4, ctZudon, 3.0, 3.0);
setEffRotateKey(spep4, ctZudon, 0);
setEffAlphaKey(spep4, ctZudon, 255);
------------------------------------------------------
-- 回避(412F spep4+42)
------------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge = 412; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

setMoveKey(  SP_dodge,    1,  235,  0,   0);
setScaleKey( SP_dodge,    1,  1.5, 1.5);

setEffMoveKey(SP_dodge,ctZudon,-30,370,0);
setEffScaleKey( SP_dodge, ctZudon, 3.0, 3.0);
setEffRotateKey(SP_dodge, ctZudon, 0);
setEffAlphaKey(SP_dodge, ctZudon, 255);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp(  SP_dodge+1,1,0);
setMoveKey(  SP_dodge+1,    1,  0,  -10000,   0);
setScaleKey( SP_dodge+1,    1,  1.5, 1.5);
setMoveKey(  SP_dodge+20,    1,  0,  -10000,   0);
setScaleKey( SP_dodge+20,    1,  1.5, 1.5);
--setMoveKey(  SP_dodge+20,    1,  0,  -2000,   0);
--setScaleKey( SP_dodge+20,    1,  1.5, 1.5);

setEffMoveKey(SP_dodge+10,ctZudon,-30,370,0);
setEffScaleKey( SP_dodge+10, ctZudon, 3.0, 3.0);
setEffRotateKey(SP_dodge+10, ctZudon, 0);
setEffAlphaKey(SP_dodge+10, ctZudon, 255);

endPhase(SP_dodge+10);

setDisp(SP_dodge+10,1,0);

do return end
else end
--------------------------------------------------------
--回避されなかった場合
--------------------------------------------------------
setMoveKey(  spep4+58,    1,   235,  0,   0);
setScaleKey(  spep4+58,   1,   1.9,  1.9);

playSe( spep4+20, SE_06);

setEffScaleKey(spep4+82, kamehame_beam2, 1, 1);
setEffScaleKey(spep4+84, kamehame_beam2, 2.5, 2.5);
setDamage( spep4+82, 1, 0);  -- ダメージ振動等

playSe( spep4+58, SE_09);

-- 敵吹っ飛ぶモーション
changeAnime( spep4+58, 1, 108);
setMoveKey(  spep4+58, 1,  275,    0,  0);
setMoveKey(  spep4+99, 1,  0,    0,  0);
setScaleKey( spep4+58, 1,  1.6, 1.6);
setScaleKey( spep4+59, 1,  1.5, 1.5);
setScaleKey( spep4+98, 1,  0.2, 0.2);

setEffAlphaKey(spep4+65, ctZudon, 255);
setEffAlphaKey(spep4+70, ctZudon, 0);

entryFade( spep4+82, 6,  17, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--370〜469F
------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
spep5=spep4+100;

setDisp( spep5-1, 1, 1);
setMoveKey(  spep5-1,    1,  100,  0,   0);
setScaleKey( spep5-1,    1,  1.0, 1.0);
setMoveKey(  spep5,    1,    0,   0,   128);
setScaleKey( spep5,    1,  0.1, 0.1);

changeAnime( spep5, 1, 107);                         -- 手前ダメージ
entryEffect( spep5+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep5+8, SE_10);

setMoveKey(  spep5+8,   1,    0,   0,   128);
setMoveKey(  spep5+15,   1,  -60,  -200,  -100);
--setMoveKey(  486,   1,  -60,  -200,  -100);
setDamage( spep5+16, 1, 0);  -- ダメージ振動等
setShake(spep5+7,6,15);
setShake(spep5+13,15,10);

setRotateKey( spep5,  1,  30 );
setRotateKey( spep5+2,  1,  80 );
setRotateKey( spep5+4,  1, 120 );
setRotateKey( spep5+6,  1, 160 );
setRotateKey( spep5+8,  1, 200 );
setRotateKey( spep5+10,  1, 260 );
setRotateKey( spep5+12,  1, 320 );
setRotateKey( spep5+14,  1,   0 );

setShakeChara( spep5+15, 1, 5,  10);
setShakeChara( spep5+20, 1, 10, 20);

-- 書き文字エントリー
ctGa = entryEffectLife( spep5+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake(spep5+15, ctGa, 30, 10);
setEffRotateKey( spep5+15, ctGa, -40);
setEffScaleKey( spep5+15, ctGa, 4.0, 4.0);
setEffScaleKey( spep5+16, ctGa, 2.0, 2.0);
setEffScaleKey( spep5+17, ctGa, 2.6, 2.6);
setEffScaleKey( spep5+18, ctGa, 4.0, 4.0);
setEffScaleKey( spep5+19, ctGa, 2.6, 2.6);
setEffScaleKey( spep5+20, ctGa, 3.8, 3.8);
setEffScaleKey( spep5+110, ctGa, 3.8, 3.8);
setEffAlphaKey( spep5+15, ctGa, 255);
setEffAlphaKey( spep5+105, ctGa, 255);
setEffAlphaKey( spep5+115, ctGa, 0);

playSe( spep5+3, SE_11);
shuchusen = entryEffectLife( spep5+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep5+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(spep5+16);

entryFade( spep5+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep5+110);

end
