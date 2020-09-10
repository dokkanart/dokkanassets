print ("[lua]sp0127");

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SP_01 = 100381;
SP_02 = 100377;
--SP_02 = 102061;
SP_03 = 100378;
SP_04 = 1550;
SP_05 = 102122;

SE_01 = 1035; --気を貯める
SE_02 = 1036; --気が広がる
SE_03 = 1036; --かめはめ
SE_04 = 1018; --カットイン
SE_05 = 1035; --カットイン攻撃
SE_06 = 1021; --発射
SE_07 = 1021; --のびる発射
SE_08 = 1009; --huru
SE_09 = 1010; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音
SE_12 = 1004;

--if (_IS_SPECIAL_AIM_ALL_ == 0) then --- 全体必殺技の初回時

setVisibleUI(0, 0);

SP_ATK_0 = 0;		--気ダメ

--Card = 60;
--Card = SP_ATK_1+122;
--rn_02 = SP_ATK_1+100;		--タックル



--SP_ATK_4 = SP_ATK_3+120;		--叩き落とし
--SP_ATK_5 = SP_ATK_4+90;		--エネルギー波ため
--SP_ATK_7 = SP_ATK_6+110;		--直撃

SP_start = 8;



------------------------------------------------------
-- 最初の突進
------------------------------------------------------

if (_IS_PLAYER_SIDE_ == 1) then


entryFadeBg( SP_ATK_0, 10, 109, 2, 10, 10, 10, 200);       --ベース暗め　背景

changeAnime( SP_ATK_0, 0, 1);
changeAnime( SP_ATK_0+34, 0, 16);                     
changeAnime( SP_ATK_0, 1, 104);                       
setDisp( SP_ATK_0, 1, 0);
entryEffect(  SP_ATK_0+5,   908,   0x80, -1,  0,  0,  0);    -- eff_002

setMoveKey(   SP_ATK_0,   0,    0, 0,   0);
setMoveKey(   SP_ATK_0+1,   0,    0, 0,   0);
setMoveKey(   SP_ATK_0+109,   0,    0, 0,   0);
--setMoveKey(   SP_ATK_0,   1,    700, 0,   -128);
setScaleKey(   SP_ATK_0,   0, 0.5, 0.5);
setScaleKey(   SP_ATK_0+36,   0, 0.5, 0.5);
setScaleKey(   SP_ATK_0+37,   0, 2.0, 2.0);
setScaleKey(   SP_ATK_0+109,   0, 6.0, 6.0);

setMoveKey(  SP_ATK_0,    1,  700,  0,   0);

setShakeChara( SP_ATK_0, 0, 110, 12);


-- ** エフェクト等 ** --
--aura = entryEffectLife( SP_ATK_0+5,  311,  28,  0x40, 0,  0,  0,  -115);--気力
--setEffScaleKey( SP_ATK_0+5, aura, 0.7, 0.7);
--setEffScaleKey( SP_ATK_0+28, aura, 0.8, 0.8);
--setEffScaleKey( SP_ATK_0+30, aura, 1.0, 1.0);

--kieff = entryEffectLife( SP_ATK_0+5,  1502, 50,  0,  0,  0,  0,  90);
--setEffScaleKey( SP_ATK_0, kieff, 1.5, 1.5);
--playSe( SP_ATK_0+5, SE_01);
--speff = entryEffect(  15+ATK_01,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え

--aura2 = entryEffectLife( SP_ATK_0+45,   707,  18,  0x40+0x80, 0,  0,  0,  0);    -- eff_002
--setEffScaleKey( SP_ATK_0+45, aura2, 1.2, 1.2);

bom = entryEffect( 37+SP_ATK_0,  11,  0x80,  0,  0,  0,  -10);--爆破
setEffMoveKey(  37+SP_ATK_0,  bom,  0,  0,   0);

setEffScaleKey( 37+SP_ATK_0, bom, 2.5, 2.5);
playSe( 37+SP_ATK_0, 1033);
playSe( 40, 1018);

setShake(35+SP_ATK_0, 13, 17);
--entryEffect( 35+SP_ATK_0,  908,  0x80,  0,  0,  0,  0);--集中線

--entryEffectLife( SP_ATK_0+39, 908, 60, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffectLife( SP_ATK_0+39, 906, 100, 0x00,  -1, 0,  0,  0);   -- 集中線

entryFade( SP_ATK_0+29, 4,  6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade 
entryFade( SP_ATK_0+105, 4,  6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--changeAnime( 34+SP_ATK_0, 0,  116); -- タックル開始

SP_ATK_1 = SP_ATK_0+110;	--突進
setEffMoveKey(  SP_ATK_1,  bom,  0,  0,   0);

--Card = SP_ATK_1+120;			--カード表示

--35

---------------------
-- タックル開始
---------------------
playSe( 130, 1018);
playSe( 289, SE_11);

setDisp( SP_ATK_1+98, 0, 0);
setDisp( SP_ATK_1+116, 0, 1);
setDisp( SP_ATK_1+150, 0, 0);
setDisp( SP_ATK_1+234, 0, 1);

setDisp( SP_ATK_1, 1, 1);

changeAnime( SP_ATK_1, 0, 3); 
changeAnime( SP_ATK_1+50, 0, 11);
changeAnime( SP_ATK_1+81, 0, 0);
changeAnime( SP_ATK_1+116, 0, 15);
changeAnime( SP_ATK_1+234, 0, 11);
changeAnime( SP_ATK_1+244-2, 0, 9);
changeAnime( SP_ATK_1+259-2, 0, 11);
changeAnime( SP_ATK_1+269-2, 0, 10);
changeAnime( SP_ATK_1+284-2, 0, 11);

setScaleKey(   SP_ATK_1,   0, 1.5, 1.5);
setScaleKey(   SP_ATK_1+304,   0, 1.5, 1.5);

setScaleKey(   SP_ATK_1,   1, 1.5, 1.5);
setScaleKey(   SP_ATK_1+304,   1, 1.5, 1.5);

--setVisibleUI(SP_ATK_1+14, 0);

--setQuake( SP_ATK_1+3,10,20);
setMoveKey( SP_ATK_1, 0,    -1000, -54,   0);
setMoveKey( SP_ATK_1+30, 0,  0, -54,  0);
setMoveKey( SP_ATK_1+40, 0,  -200, -54,  0);
setMoveKey( SP_ATK_1+50, 0,  -120, -54,  0);
setMoveKey( SP_ATK_1+60, 0,  -120, -54,  0);
setMoveKey( SP_ATK_1+80, 0,  -1000, -54,  0);
setMoveKey( SP_ATK_1+97, 0,  -100, -54,  0);
setMoveKey( SP_ATK_1+115, 0,  -100, -54,  0);
setMoveKey( SP_ATK_1+116, 0,  -100, 194,  0);
setMoveKey( SP_ATK_1+120, 0,  -100, 194,  0);
setMoveKey( SP_ATK_1+140, 0,  -300, 1000,  0);
setMoveKey( SP_ATK_1+225, 0,  -120, -54,  0);
setMoveKey( SP_ATK_1+235, 0,  -110, -54,  0);
setMoveKey( SP_ATK_1+236, 0,  -70, -54,  0);
setMoveKey( SP_ATK_1+304, 0,  -70, -54,  0);
--setMoveKey( SP_ATK_1+236, 0,  -110, -54,  0);

changeAnime( SP_ATK_1, 1, 100);
changeAnime( SP_ATK_1+52, 1, 108);
changeAnime( SP_ATK_1+85, 1, 103);
changeAnime( SP_ATK_1+97, 1, 111);
changeAnime( SP_ATK_1+118, 1, 108);
changeAnime( SP_ATK_1+189, 1, 106);
changeAnime( SP_ATK_1+236, 1, 108);

setMoveKey( SP_ATK_1+30, 1,   1000, -54,   0);
setMoveKey( SP_ATK_1+40, 1,  150, -54,  0);
setMoveKey( SP_ATK_1+50, 1,  100, -54,  0);
setMoveKey( SP_ATK_1+56, 1,  80, -54,  0);
setMoveKey( SP_ATK_1+67, 1,  200, -54,  0);
setMoveKey( SP_ATK_1+85, 1,  150, -54,  0);
setMoveKey( SP_ATK_1+97, 1,  100, -54,  0);
setMoveKey( SP_ATK_1+118, 1,  100, -54,  0);
setMoveKey( SP_ATK_1+160, 1,  120, -94,  0);
setMoveKey( SP_ATK_1+175, 1,  160, -300,  0);
setMoveKey( SP_ATK_1+188, 1,  160, -300,  0);
setMoveKey( SP_ATK_1+208, 1,  200, -124,  0);
setMoveKey( SP_ATK_1+225, 1,  200, -124,  0);
setMoveKey( SP_ATK_1+236, 1,  150, -54,  0);
setMoveKey( SP_ATK_1+237, 1,  150, -54,  0);
setMoveKey( SP_ATK_1+284, 1,  150, -54,  0);
setMoveKey( SP_ATK_1+286, 1,  150, -54,  0);
setMoveKey( SP_ATK_1+304, 1,  1550, -54,  0);
--setMoveKey( SP_ATK_1+238, 1,  90, -54,  0);


setRotateKey( SP_ATK_1,  1,  0 );
setRotateKey( SP_ATK_1+117,  1,  0 );
setRotateKey( SP_ATK_1+118,  1,  50 );
setRotateKey( SP_ATK_1+187,  1,  50 );
setRotateKey( SP_ATK_1+188,  1,  50 );
setRotateKey( SP_ATK_1+235,  1,  50 );
setRotateKey( SP_ATK_1+236,  1,  0 );

syunkan2=entryEffect( SP_ATK_1+98, 700, 0x40+0x100,  0, 300,  0, 0); --瞬間移動
playSe( SP_ATK_1+98, 37);
syunkan4=entryEffect( SP_ATK_1+116, 700, 0x40+0x100,  0, 300,  0, 0); --瞬間移動
playSe( SP_ATK_1+116, 37);
syunkan5=entryEffect( SP_ATK_1+230, 700, 0x40+0x100,  0, 300,  0, 0); --瞬間移動
playSe( SP_ATK_1+116, 37);

ct = entryEffectLife( SP_ATK_1+99, 10011, 14, 0x100, -1, 0, -150, 150);    -- シュンッ
setEffScaleKey(SP_ATK_1+99, ct, 1.4, 1.4);

setShakeChara( SP_ATK_1, 0, 200, 5);
setShakeChara( SP_ATK_1, 1, 186, 5);
setShakeChara( SP_ATK_1+178, 1, 13, 40);
setShakeChara( SP_ATK_1+200, 1, 100, 5);
setShakeChara( SP_ATK_1+230, 1, 100, 15);

hiteff = entryEffect(  SP_ATK_1+52,  4,  1,  1,  0,  0,  0);
playSe(SP_ATK_1+52,1009);
hiteff1 = entryEffect(  SP_ATK_1+118,  4,  1,  1,  0,  0,  0);
playSe(SP_ATK_1+118,1009);
hiteff2 = entryEffect(  SP_ATK_1+236,  4,  1,  1,  0,  0,  0);
playSe(SP_ATK_1+236,1009);
hiteff3 = entryEffect(  369,  4,  1,  1,  0,  0,  0);
playSe(369,1009);
--hiteff4 = entryEffect(  SP_ATK_1+259,  4,  1,  1,  0,  0,  0);
hiteff5 = entryEffect(  SP_ATK_1+249,  4,  1,  1,  0,  0,  0);
playSe(SP_ATK_1+249,1009);
hiteff6 = entryEffect(  SP_ATK_1+268,  4,  1,  1,  0,  0,  0);
playSe(SP_ATK_1+268,1009);
hiteff7 = entryEffect(  394,  6,  1,  1,  0,  0,  0);
setEffRotateKey(394, hiteff7, 180);
setEffScaleKey(394, hiteff7, 2.0, 2.0);
playSe(394,1009);

-- 書き文字エントリー
ct = entryEffectLife( SP_ATK_1+55, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(SP_ATK_1+55, ct, 40, 8);
setEffScaleKey(SP_ATK_1+55, ct, 1.4, 1.4);

entryEffectLife( SP_ATK_1+30, 906, 75, 0x00,  -1, 0,  0,  0);   -- 集中線

entryEffectLife( SP_ATK_1+178, 906, 11, 0x00,  -1, 0,  0,  0);   -- 集中線

ryu = entryEffectLife(SP_ATK_1, 920, 117, 0x80,  -1,  300,  0,  0); -- 流線
setEffScaleKey(SP_ATK_1, ryu, 1.0, 1.0);

ryuryu2 = entryEffectLife(SP_ATK_1+118, 920, 59, 0x80,  -1,  300,  0,  0); -- 流線
setEffRotateKey(SP_ATK_1+118, ryuryu2, 50);
setEffScaleKey(SP_ATK_1+118, ryuryu2, 2.0, 2.0);

ryuryu3 = entryEffectLife(SP_ATK_1+190, 920, 45, 0x80,  -1,  300,  0,  0); -- 流線
setEffRotateKey(SP_ATK_1+190, ryuryu3, -50);
setEffScaleKey(SP_ATK_1+190, ryuryu3, 2.0, 2.0);

ryu = entryEffectLife(SP_ATK_1+236, 920, 69, 0x80,  -1,  300,  0,  0); -- 流線
setEffScaleKey(SP_ATK_1+236, ryu, 1.0, 1.0);

kamehame_beam = entryEffect(SP_ATK_1+145, SP_01,  0x80,  0,  300,  360,  -950);   -- 伸びるかめはめ波

entryFadeBg( SP_ATK_1, 0, 118, 0, 10, 10, 10, 200);       --ベース暗め　背景

entryFadeBg(SP_ATK_1+118, 0, 118, 0, 0, 0, 0, 255);       -- ベース暗い　背景

entryFadeBg( SP_ATK_1+236, 0, 69, 0, 10, 10, 10, 200);       --ベース暗め　背景

entryFade( SP_ATK_1+298, 5, 5, 8, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade



--speff = entryEffect(  SP_ATK_1+45,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  SP_ATK_1+45,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
--end

--setMoveKey( SP_ATK_1+80, 0,  0, 0,   -58);
--playSe( SP_ATK_1+80,  SE_05);


--syutyusen = entryEffectLife( SP_ATK_1+82,  908, 18, 0x80,  0,  0,  0,  0);--集中線
--setEffScaleKey(SP_ATK_1+82, syutyusen, 4.0, 4.0);

--eff_002 = entryEffectLife( SP_ATK_1+88,   707,  12,  0x40+0x80, 0,  0,  0,  0);    -- eff_002
--setEffScaleKey(SP_ATK_1+88, eff_002, 4.0, 4.0);

SP_ATK_2 = SP_ATK_1+305;			--パンチ


------------------------------------------------------
-- 回避 (110F)
------------------------------------------------------

if(_IS_DODGE_ == 1) then

--SP_dodge = 149; --エンドフェイズのフレーム数を置き換える
SP_dodge = 145; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey( SP_dodge+10, 0,  2550, -54,  0);
endPhase(SP_dodge+10);
do return end
else end



--415

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
setScaleKey(   SP_ATK_2,   0, 3.5, 3.5);
setScaleKey(   SP_ATK_2+9,   0, 1.5, 1.5);
setScaleKey(   SP_ATK_2+100,   0, 1.5, 1.5);

setMoveKey( SP_ATK_2, 0,  0, -54,  0);
setMoveKey( SP_ATK_2+100, 0,  0, -54,  0);

changeAnime( SP_ATK_2, 0, 30);                       -- 溜め!
playSe( SP_ATK_2+3, SE_03);

--entryEffect(  80,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
--entryEffect(  80,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
speff = entryEffect(  SP_ATK_2+10,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  SP_ATK_2+10,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( SP_ATK_2+10, SE_04);

kame_hand = entryEffect( SP_ATK_2, SP_02, 0x40,      0,  300,  -100,  40);   -- 手のカメハメ波部
setEffScaleKey( SP_ATK_2, kame_hand, 0.5, 0.5);
setEffAlphaKey( SP_ATK_2+7, kame_hand, 0);
setEffAlphaKey( SP_ATK_2+8, kame_hand, 255);

--entryFade( 165, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--aura = entryEffectLife(  70,   311, 99, 0x40,  0,  1,  0,  -50); -- オーラ
--setEffScaleKey( 30, aura, 1.5, 1.5);
setShakeChara( SP_ATK_2, 0, 100, 10);

entryEffectLife( SP_ATK_2, 906, 100, 0x00,  -1, 0,  0,  0);   -- 集中線

entryFadeBg( SP_ATK_2, 0, 100, 0, 10, 10, 10, 200);       --ベース暗め　背景

-- 書き文字エントリー
ct = entryEffectLife( SP_ATK_2+20, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(SP_ATK_2+20, ct, 40, 8);
setEffScaleKey(SP_ATK_2+20, ct, 1.4, 1.4);

SP_ATK_3 = SP_ATK_2+100;		--ラッシュ

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( SP_ATK_3-1,   0, 1.5, 1.5);
setScaleKey( SP_ATK_3 ,   0, 1.0, 1.0);

playSe( SP_ATK_3 , SE_05);
speff = entryEffect(  SP_ATK_3 ,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


entryFade( SP_ATK_3+85, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--entryFlash( (170+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
playSe( SP_ATK_3+64, SE_06);

SP_ATK_4 = SP_ATK_3+90;

--605
------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
--playSe( SP_start2+ 260, SE_05);
setShakeChara( SP_ATK_4, 0, 115, 25);

setMoveKey( SP_ATK_4,    0,      -800,  100,   0);
setMoveKey( SP_ATK_4+10,    0,      -100,  100,   0);
setMoveKey( SP_ATK_4+30,    0,      -100,  100,   0);

setScaleKey(   SP_ATK_4,   0, 3, 3);
setScaleKey(  SP_ATK_4+10,   0, 0.8, 0.8);
setScaleKey(  SP_ATK_4+100,   0, 0.8, 0.8);

sen2 = entryEffectLife( SP_ATK_4, 921, 284, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey( SP_ATK_4, sen2, 30);
setEffScaleKey( SP_ATK_4, sen2, 1.6, 1.6);

changeAnime( SP_ATK_4, 0, 31);                                    -- かめはめ発射ポーズ

--kira = entryEffectLife( SP_start2+ 260+115, SP_02, 79, 0x40+0x80,  0,  300,  0,  0);   -- 発射前に一瞬光る横長の光エフェクト

--SP_start = 55;

kamehame_beam_st = entryEffect(SP_ATK_4, SP_03, 0x40+0x80,  0,  -1,  900,  -50);   -- 伸びるかめはめ波 323
setEffMoveKey( SP_ATK_4+4, kamehame_beam_st,   600, -50, 0);
setEffMoveKey( SP_ATK_4+5, kamehame_beam_st,   500, -50, 0);
setEffMoveKey( SP_ATK_4+7, kamehame_beam_st,   300, -50, 0);
setEffMoveKey( SP_ATK_4+10, kamehame_beam_st,   200, -50, 0);
setEffMoveKey( SP_ATK_4+15, kamehame_beam_st,   70, -50, 0);
setEffMoveKey( SP_ATK_4+20, kamehame_beam_st,   130, -50, 0);
setEffMoveKey( SP_ATK_4+38, kamehame_beam_st,   130, -50, 0);
setEffMoveKey( SP_ATK_4+58, kamehame_beam_st,   600, -300, 0);
setEffMoveKey( SP_ATK_4+100, kamehame_beam_st,   700, -300, 0);
--setEffRotateKey(SP_ATK_4, kamehame_beam_st, 20);

playSe( SP_ATK_4, SE_07);
playSe( 670, SE_07);
playSe( 710, SE_07);

--spname = entryEffect( SP_start+ 260, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
--setEffReplaceTexture( spname, 7, 4);                                  -- 技名テクスチャ差し替え

setDisp( SP_ATK_4+40, 1, 1);
setDisp( SP_ATK_4+100, 1, 0);

-- 途中からカメハメハが伸びる
setMoveKey( SP_ATK_4+35,    0,   -100,  100,   0);--200
setMoveKey( SP_ATK_4+45,    0,    -700,  300,   0);--353
setMoveKey( SP_ATK_4+200,    0,    -700,  300,   0);--353
--setMoveKey( SP_start+  299,    0,    -700,  300,   -32);--354
--setMoveKey( SP_start+  300,    0,   -650,  300,   -32);--800
setDisp( SP_ATK_4+75, 0, 0);
--setMoveKey( SP_ATK_4+45,    0,   -150,  180,   0);--800


changeAnime( SP_ATK_4+40, 1, 108);                        -- 気ダメ後ろ

setScaleKey( SP_ATK_4+22,    1,  1.5, 1.5);
setScaleKey( SP_ATK_4+100,    1,  1.5, 1.5);

setMoveKey( SP_ATK_4+40+15,    1,  700,  -200,   0);
setMoveKey( SP_ATK_4+60+15,    1,  700,  -200,   0);
setMoveKey( SP_ATK_4+95+10,    1,  200,  -100,   0);
--setScaleKey( SP_ATK_4+44,    1,  0.7, 0.7);
--setScaleKey( SP_ATK_4+45,    1,  0.7, 0.7);

--setMoveKey( SP_ATK_4+45,    1,   120,  0,   0);
setScaleKey( SP_ATK_4+45,   1,   1.6,  1.6);


entryFadeBg(SP_ATK_4, 0, 200, 0, 0, 0, 0, 255);       -- ベース暗い　背景

entryFade( SP_ATK_4+95, 3,  5, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--setShakeChara( SP_start+ 270, 0, 24, 30);


-- 書き文字エントリー
--ct = entryEffectLife( SP_start+ 268, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
--setEffShake( SP_start+268, ct, 32, 5);
--setEffAlphaKey( SP_start+268, ct, 255);
--setEffAlphaKey( SP_start+290, ct, 255);
--setEffAlphaKey( SP_start+300, ct, 0);
--setEffScaleKey( SP_start+268, ct, 0.0, 0.0);
--setEffScaleKey( SP_start+272, ct, 1.3, 1.3);
--setEffScaleKey( SP_start+292, ct, 1.3, 1.3);
--setEffScaleKey( SP_start+300, ct, 6.0, 6.0);
--playSe( SP_start+ 300, SE_07);
--entryFade( SP_start+ 345, 10,  5, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

	SP_ATK_8 = SP_ATK_4+200;		--地球規模の爆発
	------------------------------------------------------
	-- 爆発 (110F)
	------------------------------------------------------
	entryEffect( SP_ATK_8-1, 1586, 0,  -1,  0,  0,  0);   -- 爆発
	setDisp( SP_ATK_8-1, 1, 1);
	setMoveKey(  SP_ATK_8-1,    1,  100,  0,   0);
	setScaleKey( SP_ATK_8-1,    1,  1.0, 1.0);
	setMoveKey(  SP_ATK_8,    1,    0,   0,   128);
	setScaleKey( SP_ATK_8,    1,  0.1, 0.1);
	
	changeAnime( SP_ATK_8, 1, 107);                         -- 手前ダメージ
	--entryEffect( SP_ATK_8+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
	playSe( SP_ATK_8+8, SE_10);
	playSe( 914, SE_10);
	
	setMoveKey(  SP_ATK_8+8,   1,    0,   0,   128);
	setMoveKey(  SP_ATK_8+15,   1,  -60,  -200,  -100);
	--setMoveKey(  SP_ATK_8+16,   1,  -60,  -200,  -100);
	setDamage( SP_ATK_8+16, 1, 0);  -- ダメージ振動等
	setShake(SP_ATK_8+7,6,15);
	setShake(SP_ATK_8+13,15,10);
	
	setRotateKey( SP_ATK_8,  1,  30 );
	setRotateKey( SP_ATK_8+2,  1,  80 );
	setRotateKey( SP_ATK_8+4,  1, 120 );
	setRotateKey( SP_ATK_8+6,  1, 160 );
	setRotateKey( SP_ATK_8+8,  1, 200 );
	setRotateKey( SP_ATK_8+10,  1, 260 );
	setRotateKey( SP_ATK_8+12,  1, 320 );
	setRotateKey( SP_ATK_8+14,  1,   0 );
	
	setShakeChara( SP_ATK_8+15, 1, 5,  10);
	setShakeChara( SP_ATK_8+20, 1, 10, 20);
	
	-- 書き文字エントリー
	
	--playSe( SP_ATK_8+3, SE_11);
	--shuchusen = entryEffectLife( SP_ATK_8+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
	
	-- ダメージ表示
	dealDamage(910);
	
	entryFade( SP_ATK_8+170, 9,  10, 1, 8, 8, 8, 255);             -- black fade
	
	endPhase(SP_ATK_8+180);
	
else

entryFadeBg( SP_ATK_0, 10, 109, 2, 10, 10, 10, 200);       --ベース暗め　背景

changeAnime( SP_ATK_0, 0, 1);
changeAnime( SP_ATK_0+34, 0, 16);                     
changeAnime( SP_ATK_0, 1, 104);                       
setDisp( SP_ATK_0, 1, 0);
entryEffect(  SP_ATK_0+5,   908,   0x80, -1,  0,  0,  0);    -- eff_002

setMoveKey(   SP_ATK_0,   0,    0, 0,   0);
setMoveKey(   SP_ATK_0+109,   0,    0, 0,   0);
--setMoveKey(   SP_ATK_0,   1,    700, 0,   -128);
setScaleKey(   SP_ATK_0,   0, 0.5, 0.5);
setScaleKey(   SP_ATK_0+36,   0, 0.5, 0.5);
setScaleKey(   SP_ATK_0+37,   0, 2.0, 2.0);
setScaleKey(   SP_ATK_0+109,   0, 6.0, 6.0);

setMoveKey(  SP_ATK_0,    1,  700,  0,   0);

setShakeChara( SP_ATK_0, 0, 110, 12);


-- ** エフェクト等 ** --
--aura = entryEffectLife( SP_ATK_0+5,  311,  28,  0x40, 0,  0,  0,  -115);--気力
--setEffScaleKey( SP_ATK_0+5, aura, 0.7, 0.7);
--setEffScaleKey( SP_ATK_0+28, aura, 0.8, 0.8);
--setEffScaleKey( SP_ATK_0+30, aura, 1.0, 1.0);

--kieff = entryEffectLife( SP_ATK_0+5,  1502, 50,  0,  0,  0,  0,  90);
--setEffScaleKey( SP_ATK_0, kieff, 1.5, 1.5);
--playSe( SP_ATK_0+5, SE_01);
--speff = entryEffect(  15+ATK_01,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え

--aura2 = entryEffectLife( SP_ATK_0+45,   707,  18,  0x40+0x80, 0,  0,  0,  0);    -- eff_002
--setEffScaleKey( SP_ATK_0+45, aura2, 1.2, 1.2);

bom = entryEffect( 37+SP_ATK_0,  11,  0x80,  0,  0,  0,  -10);--爆破
setEffMoveKey(  37+SP_ATK_0,  bom,  0,  0,   0);

setEffScaleKey( 37+SP_ATK_0, bom, 2.5, 2.5);
playSe( 37+SP_ATK_0, 1033);
playSe( 40, 1018);

setShake(35+SP_ATK_0, 13, 17);
--entryEffect( 35+SP_ATK_0,  908,  0x80,  0,  0,  0,  0);--集中線

--entryEffectLife( SP_ATK_0+39, 908, 60, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffectLife( SP_ATK_0+39, 906, 100, 0x00,  -1, 0,  0,  0);   -- 集中線

entryFade( SP_ATK_0+29, 4,  6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade 
entryFade( SP_ATK_0+105, 4,  6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--changeAnime( 34+SP_ATK_0, 0,  116); -- タックル開始

SP_ATK_1 = SP_ATK_0+110;	--突進
setEffMoveKey(  SP_ATK_1,  bom,  0,  0,   0);

--Card = SP_ATK_1+120;			--カード表示

--35

---------------------
-- タックル開始
---------------------
playSe( 130, 1018);
playSe( 289, SE_11);

setDisp( SP_ATK_1+98, 0, 0);
setDisp( SP_ATK_1+116, 0, 1);
setDisp( SP_ATK_1+150, 0, 0);
setDisp( SP_ATK_1+234, 0, 1);

setDisp( SP_ATK_1, 1, 1);

changeAnime( SP_ATK_1, 0, 3); 
changeAnime( SP_ATK_1+50, 0, 11);
changeAnime( SP_ATK_1+81, 0, 0);
changeAnime( SP_ATK_1+116, 0, 15);
changeAnime( SP_ATK_1+234, 0, 11);
changeAnime( SP_ATK_1+244-2, 0, 9);
changeAnime( SP_ATK_1+259-2, 0, 11);
changeAnime( SP_ATK_1+269-2, 0, 10);
changeAnime( SP_ATK_1+284-2, 0, 11);

setScaleKey(   SP_ATK_1,   0, 1.5, 1.5);
setScaleKey(   SP_ATK_1+304,   0, 1.5, 1.5);

setScaleKey(   SP_ATK_1,   1, 1.5, 1.5);
setScaleKey(   SP_ATK_1+304,   1, 1.5, 1.5);

--setVisibleUI(SP_ATK_1+14, 0);

--setQuake( SP_ATK_1+3,10,20);
setMoveKey( SP_ATK_1, 0,    -1000, -54,   0);
setMoveKey( SP_ATK_1+30, 0,  0, -54,  0);
setMoveKey( SP_ATK_1+40, 0,  -200, -54,  0);
setMoveKey( SP_ATK_1+50, 0,  -120, -54,  0);
setMoveKey( SP_ATK_1+60, 0,  -120, -54,  0);
setMoveKey( SP_ATK_1+80, 0,  -1000, -54,  0);
setMoveKey( SP_ATK_1+97, 0,  -100, -54,  0);
setMoveKey( SP_ATK_1+115, 0,  -100, -54,  0);
setMoveKey( SP_ATK_1+116, 0,  -100, 194,  0);
setMoveKey( SP_ATK_1+120, 0,  -100, 194,  0);
setMoveKey( SP_ATK_1+140, 0,  -300, 1000,  0);
setMoveKey( SP_ATK_1+225, 0,  -120, -54,  0);
setMoveKey( SP_ATK_1+235, 0,  -110, -54,  0);
setMoveKey( SP_ATK_1+236, 0,  -70, -54,  0);
setMoveKey( SP_ATK_1+304, 0,  -70, -54,  0);
--setMoveKey( SP_ATK_1+236, 0,  -110, -54,  0);

changeAnime( SP_ATK_1, 1, 100);
changeAnime( SP_ATK_1+52, 1, 108);
changeAnime( SP_ATK_1+85, 1, 103);
changeAnime( SP_ATK_1+97, 1, 111);
changeAnime( SP_ATK_1+118, 1, 108);
changeAnime( SP_ATK_1+189, 1, 106);
changeAnime( SP_ATK_1+236, 1, 108);

setMoveKey( SP_ATK_1+30, 1,   1000, -54,   0);
setMoveKey( SP_ATK_1+40, 1,  150, -54,  0);
setMoveKey( SP_ATK_1+50, 1,  100, -54,  0);
setMoveKey( SP_ATK_1+56, 1,  80, -54,  0);
setMoveKey( SP_ATK_1+67, 1,  200, -54,  0);
setMoveKey( SP_ATK_1+85, 1,  150, -54,  0);
setMoveKey( SP_ATK_1+97, 1,  100, -54,  0);
setMoveKey( SP_ATK_1+118, 1,  100, -54,  0);
setMoveKey( SP_ATK_1+160, 1,  120, -94,  0);
setMoveKey( SP_ATK_1+175, 1,  160, -300,  0);
setMoveKey( SP_ATK_1+188, 1,  160, -300,  0);
setMoveKey( SP_ATK_1+208, 1,  200, -124,  0);
setMoveKey( SP_ATK_1+225, 1,  200, -124,  0);
setMoveKey( SP_ATK_1+236, 1,  150, -54,  0);
setMoveKey( SP_ATK_1+237, 1,  150, -54,  0);
setMoveKey( SP_ATK_1+284, 1,  150, -54,  0);
setMoveKey( SP_ATK_1+286, 1,  150, -54,  0);
setMoveKey( SP_ATK_1+304, 1,  1550, -54,  0);
--setMoveKey( SP_ATK_1+238, 1,  90, -54,  0);


setRotateKey( SP_ATK_1,  1,  0 );
setRotateKey( SP_ATK_1+117,  1,  0 );
setRotateKey( SP_ATK_1+118,  1,  50 );
setRotateKey( SP_ATK_1+187,  1,  50 );
setRotateKey( SP_ATK_1+188,  1,  50 );
setRotateKey( SP_ATK_1+235,  1,  50 );
setRotateKey( SP_ATK_1+236,  1,  0 );

syunkan2=entryEffect( SP_ATK_1+98, 700, 0x40+0x100,  0, 300,  0, 0); --瞬間移動
playSe( SP_ATK_1+98, 37);
syunkan4=entryEffect( SP_ATK_1+116, 700, 0x40+0x100,  0, 300,  0, 0); --瞬間移動
playSe( SP_ATK_1+116, 37);
syunkan5=entryEffect( SP_ATK_1+230, 700, 0x40+0x100,  0, 300,  0, 0); --瞬間移動
playSe( SP_ATK_1+116, 37);

ct = entryEffectLife( SP_ATK_1+99, 10011, 14, 0x100, -1, 0, -150, 150);    -- シュンッ
setEffScaleKey(SP_ATK_1+99, ct, 1.4, 1.4);

setShakeChara( SP_ATK_1, 0, 200, 5);
setShakeChara( SP_ATK_1, 1, 186, 5);
setShakeChara( SP_ATK_1+178, 1, 13, 40);
setShakeChara( SP_ATK_1+200, 1, 100, 5);
setShakeChara( SP_ATK_1+230, 1, 100, 15);

hiteff = entryEffect(  SP_ATK_1+52,  4,  1,  1,  0,  0,  0);
playSe(SP_ATK_1+52,1009);
hiteff1 = entryEffect(  SP_ATK_1+118,  4,  1,  1,  0,  0,  0);
playSe(SP_ATK_1+118,1009);
hiteff2 = entryEffect(  SP_ATK_1+236,  4,  1,  1,  0,  0,  0);
playSe(SP_ATK_1+236,1009);
hiteff3 = entryEffect(  369,  4,  1,  1,  0,  0,  0);
playSe(369,1009);
--hiteff4 = entryEffect(  SP_ATK_1+259,  4,  1,  1,  0,  0,  0);
hiteff5 = entryEffect(  SP_ATK_1+249,  4,  1,  1,  0,  0,  0);
playSe(SP_ATK_1+249,1009);
hiteff6 = entryEffect(  SP_ATK_1+268,  4,  1,  1,  0,  0,  0);
playSe(SP_ATK_1+268,1009);
hiteff7 = entryEffect(  394,  6,  1,  1,  0,  0,  0);
setEffRotateKey(394, hiteff7, 180);
setEffScaleKey(394, hiteff7, 2.0, 2.0);
playSe(394,1009);

-- 書き文字エントリー
ct = entryEffectLife( SP_ATK_1+55, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(SP_ATK_1+55, ct, 40, 8);
setEffScaleKey(SP_ATK_1+55, ct, 1.4, 1.4);

entryEffectLife( SP_ATK_1+30, 906, 75, 0x00,  -1, 0,  0,  0);   -- 集中線

entryEffectLife( SP_ATK_1+178, 906, 11, 0x00,  -1, 0,  0,  0);   -- 集中線

ryu = entryEffectLife(SP_ATK_1, 920, 117, 0x80,  -1,  300,  0,  0); -- 流線
setEffScaleKey(SP_ATK_1, ryu, 1.0, 1.0);

ryuryu2 = entryEffectLife(SP_ATK_1+118, 920, 59, 0x80,  -1,  300,  0,  0); -- 流線
setEffRotateKey(SP_ATK_1+118, ryuryu2, 50);
setEffScaleKey(SP_ATK_1+118, ryuryu2, 2.0, 2.0);

ryuryu3 = entryEffectLife(SP_ATK_1+190, 920, 45, 0x80,  -1,  300,  0,  0); -- 流線
setEffRotateKey(SP_ATK_1+190, ryuryu3, -50);
setEffScaleKey(SP_ATK_1+190, ryuryu3, 2.0, 2.0);

ryu = entryEffectLife(SP_ATK_1+236, 920, 69, 0x80,  -1,  300,  0,  0); -- 流線
setEffScaleKey(SP_ATK_1+236, ryu, 1.0, 1.0);

kamehame_beam = entryEffect(SP_ATK_1+145, SP_01,  0x80,  0,  300,  360,  -950);   -- 伸びるかめはめ波

entryFadeBg( SP_ATK_1, 0, 118, 0, 10, 10, 10, 200);       --ベース暗め　背景

entryFadeBg(SP_ATK_1+118, 0, 118, 0, 0, 0, 0, 255);       -- ベース暗い　背景

entryFadeBg( SP_ATK_1+236, 0, 69, 0, 10, 10, 10, 200);       --ベース暗め　背景

entryFade( SP_ATK_1+298, 5, 5, 8, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade



--speff = entryEffect(  SP_ATK_1+45,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  SP_ATK_1+45,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
--end

--setMoveKey( SP_ATK_1+80, 0,  0, 0,   -58);
--playSe( SP_ATK_1+80,  SE_05);


--syutyusen = entryEffectLife( SP_ATK_1+82,  908, 18, 0x80,  0,  0,  0,  0);--集中線
--setEffScaleKey(SP_ATK_1+82, syutyusen, 4.0, 4.0);

--eff_002 = entryEffectLife( SP_ATK_1+88,   707,  12,  0x40+0x80, 0,  0,  0,  0);    -- eff_002
--setEffScaleKey(SP_ATK_1+88, eff_002, 4.0, 4.0);

SP_ATK_2 = SP_ATK_1+305;			--パンチ



------------------------------------------------------
-- 回避 (110F)
------------------------------------------------------

if(_IS_DODGE_ == 1) then

--SP_dodge = 149; --エンドフェイズのフレーム数を置き換える
SP_dodge = 145; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey( SP_dodge+10, 0,  2550, -54,  0);

endPhase(SP_dodge+10);
do return end
else end


--415

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
setScaleKey(   SP_ATK_2,   0, 3.5, 3.5);
setScaleKey(   SP_ATK_2+9,   0, 1.5, 1.5);
setScaleKey(   SP_ATK_2+100,   0, 1.5, 1.5);

setMoveKey( SP_ATK_2, 0,  0, -54,  0);
setMoveKey( SP_ATK_2+100, 0,  0, -54,  0);

changeAnime( SP_ATK_2, 0, 30);                       -- 溜め!
playSe( SP_ATK_2+3, SE_03);

--entryEffect(  80,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
--entryEffect(  80,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
--speff = entryEffect(  SP_ATK_2+10,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  SP_ATK_2+10,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( SP_ATK_2+10, SE_04);

kame_hand = entryEffect( SP_ATK_2, SP_02, 0x40+0x80,      0,  300,  -80,  40);   -- 手のカメハメ波部
setEffAlphaKey( SP_ATK_2+7, kame_hand, 0);
setEffAlphaKey( SP_ATK_2+8, kame_hand, 255);
setEffScaleKey( SP_ATK_2, kame_hand, 0.5, 0.5);

--entryFade( 165, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--aura = entryEffectLife(  70,   311, 99, 0x40,  0,  1,  0,  -50); -- オーラ
--setEffScaleKey( 30, aura, 1.5, 1.5);
setShakeChara( SP_ATK_2, 0, 100, 10);

entryEffectLife( SP_ATK_2, 906, 100, 0x00,  -1, 0,  0,  0);   -- 集中線

entryFadeBg( SP_ATK_2, 0, 100, 0, 10, 10, 10, 200);       --ベース暗め　背景

-- 書き文字エントリー
ct = entryEffectLife( SP_ATK_2+20, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(SP_ATK_2+20, ct, 40, 8);
setEffScaleKey(SP_ATK_2+20, ct, 1.4, 1.4);

SP_ATK_3 = SP_ATK_2+100;		--ラッシュ

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( SP_ATK_3-1,   0, 1.5, 1.5);
setScaleKey( SP_ATK_3 ,   0, 1.0, 1.0);

playSe( SP_ATK_3 , SE_05);
speff = entryEffect(  SP_ATK_3 ,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


entryFade( SP_ATK_3+85, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--entryFlash( (170+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
playSe( SP_ATK_3+64, SE_06);

SP_ATK_4 = SP_ATK_3+90;

--605
------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
--playSe( SP_start2+ 260, SE_05);
setShakeChara( SP_ATK_4, 0, 115, 25);

setMoveKey( SP_ATK_4,    0,      -800,  100,   0);
setMoveKey( SP_ATK_4+10,    0,      -100,  100,   0);
setMoveKey( SP_ATK_4+30,    0,      -100,  100,   0);

setScaleKey(   SP_ATK_4,   0, 3, 3);
setScaleKey(  SP_ATK_4+10,   0, 0.8, 0.8);
setScaleKey(  SP_ATK_4+100,   0, 0.8, 0.8);

sen2 = entryEffectLife( SP_ATK_4, 921, 284, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey( SP_ATK_4, sen2, 30);
setEffScaleKey( SP_ATK_4, sen2, 1.6, 1.6);

changeAnime( SP_ATK_4, 0, 31);                                    -- かめはめ発射ポーズ

--kira = entryEffectLife( SP_start2+ 260+115, SP_02, 79, 0x40+0x80,  0,  300,  0,  0);   -- 発射前に一瞬光る横長の光エフェクト

--SP_start = 55;

kamehame_beam_st = entryEffect(SP_ATK_4, SP_03, 0x40+0x80,  0,  -1,  700,  10);   -- 伸びるかめはめ波 323
setEffMoveKey( SP_ATK_4+2, kamehame_beam_st,   700, 10, 0);
setEffMoveKey( SP_ATK_4+5, kamehame_beam_st,   400, 90, 0);
setEffMoveKey( SP_ATK_4+6, kamehame_beam_st,   400, 90, 0);
setEffMoveKey( SP_ATK_4+7, kamehame_beam_st,   230, 70, 0);
setEffMoveKey( SP_ATK_4+10, kamehame_beam_st,   100, 10, 0);
setEffMoveKey( SP_ATK_4+15, kamehame_beam_st,   100, 10, 0);
setEffMoveKey( SP_ATK_4+20, kamehame_beam_st,   100, 10, 0);
setEffMoveKey( SP_ATK_4+38, kamehame_beam_st,   100, 10, 0);
setEffMoveKey( SP_ATK_4+58, kamehame_beam_st,   600, -300, 0);
setEffMoveKey( SP_ATK_4+100, kamehame_beam_st,   700, -300, 0);
--setEffRotateKey(SP_ATK_4, kamehame_beam_st, 20);

playSe( SP_ATK_4, SE_07);
playSe( 670, SE_07);
playSe( 710, SE_07);

--spname = entryEffect( SP_start+ 260, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
--setEffReplaceTexture( spname, 7, 4);                                  -- 技名テクスチャ差し替え

setDisp( SP_ATK_4+40, 1, 1);
setDisp( SP_ATK_4+100, 1, 0);

-- 途中からカメハメハが伸びる
setMoveKey( SP_ATK_4+35,    0,   -100,  100,   0);--200
setMoveKey( SP_ATK_4+45,    0,    -700,  300,   0);--353
setMoveKey( SP_ATK_4+200,    0,    -700,  300,   0);--353
--setMoveKey( SP_start+  299,    0,    -700,  300,   -32);--354
--setMoveKey( SP_start+  300,    0,   -650,  300,   -32);--800
setDisp( SP_ATK_4+75, 0, 0);
--setMoveKey( SP_ATK_4+45,    0,   -150,  180,   0);--800


changeAnime( SP_ATK_4+40, 1, 108);                        -- 気ダメ後ろ

setScaleKey( SP_ATK_4+22,    1,  1.5, 1.5);
setScaleKey( SP_ATK_4+100,    1,  1.5, 1.5);

setMoveKey( SP_ATK_4+40+15,    1,  700,  -200,   0);
setMoveKey( SP_ATK_4+60+15,    1,  700,  -200,   0);
setMoveKey( SP_ATK_4+95+10,    1,  200,  -100,   0);
--setScaleKey( SP_ATK_4+44,    1,  0.7, 0.7);
--setScaleKey( SP_ATK_4+45,    1,  0.7, 0.7);

--setMoveKey( SP_ATK_4+45,    1,   120,  0,   0);
setScaleKey( SP_ATK_4+45,   1,   1.6,  1.6);


entryFadeBg(SP_ATK_4, 0, 200, 0, 0, 0, 0, 255);       -- ベース暗い　背景

entryFade( SP_ATK_4+95, 3,  5, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--setShakeChara( SP_start+ 270, 0, 24, 30);


-- 書き文字エントリー
--ct = entryEffectLife( SP_start+ 268, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
--setEffShake( SP_start+268, ct, 32, 5);
--setEffAlphaKey( SP_start+268, ct, 255);
--setEffAlphaKey( SP_start+290, ct, 255);
--setEffAlphaKey( SP_start+300, ct, 0);
--setEffScaleKey( SP_start+268, ct, 0.0, 0.0);
--setEffScaleKey( SP_start+272, ct, 1.3, 1.3);
--setEffScaleKey( SP_start+292, ct, 1.3, 1.3);
--setEffScaleKey( SP_start+300, ct, 6.0, 6.0);
--playSe( SP_start+ 300, SE_07);
--entryFade( SP_start+ 345, 10,  5, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

	SP_ATK_8 = SP_ATK_4+200;		--地球規模の爆発
	------------------------------------------------------
	-- 爆発 (110F)
	------------------------------------------------------
	entryEffect( SP_ATK_8-1, 1586, 0,  -1,  0,  0,  0);   -- 爆発
	setDisp( SP_ATK_8-1, 1, 1);
	setMoveKey(  SP_ATK_8-1,    1,  100,  0,   0);
	setScaleKey( SP_ATK_8-1,    1,  1.0, 1.0);
	setMoveKey(  SP_ATK_8,    1,    0,   0,   128);
	setScaleKey( SP_ATK_8,    1,  0.1, 0.1);
	
	changeAnime( SP_ATK_8, 1, 107);                         -- 手前ダメージ
	--entryEffect( SP_ATK_8+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
	playSe( SP_ATK_8+8, SE_10);
	playSe( 914, SE_10);
	
	setMoveKey(  SP_ATK_8+8,   1,    0,   0,   128);
	setMoveKey(  SP_ATK_8+15,   1,  -60,  -200,  -100);
	--setMoveKey(  SP_ATK_8+16,   1,  -60,  -200,  -100);
	setDamage( SP_ATK_8+16, 1, 0);  -- ダメージ振動等
	setShake(SP_ATK_8+7,6,15);
	setShake(SP_ATK_8+13,15,10);
	
	setRotateKey( SP_ATK_8,  1,  30 );
	setRotateKey( SP_ATK_8+2,  1,  80 );
	setRotateKey( SP_ATK_8+4,  1, 120 );
	setRotateKey( SP_ATK_8+6,  1, 160 );
	setRotateKey( SP_ATK_8+8,  1, 200 );
	setRotateKey( SP_ATK_8+10,  1, 260 );
	setRotateKey( SP_ATK_8+12,  1, 320 );
	setRotateKey( SP_ATK_8+14,  1,   0 );
	
	setShakeChara( SP_ATK_8+15, 1, 5,  10);
	setShakeChara( SP_ATK_8+20, 1, 10, 20);
	
	-- 書き文字エントリー
	
	--playSe( SP_ATK_8+3, SE_11);
	--shuchusen = entryEffectLife( SP_ATK_8+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
	
	-- ダメージ表示
	dealDamage(910);
	
	entryFade( SP_ATK_8+170, 9,  10, 1, 8, 8, 8, 255);             -- black fade
	
	endPhase(SP_ATK_8+180);


end
print ("[lua]sp0127 end");
