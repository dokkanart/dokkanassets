

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SP_ATK_0 = 6;
SP_ATK_1 = SP_ATK_0+10;
SP_ATK_2 = SP_ATK_1+63;
SP_ATK_3 = SP_ATK_2+92;
SP_ATK_4 = SP_ATK_3+50;

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
SE_13 = 1037;
SE_14 = 1047;--or1034

SP_01 = 100251;--溜め
SP_02 = 100252; --発射
SP_03 = 100253; --光弾発射時の背景渦巻きエフェクト
SP_04 = 100262;--魔封波にかかってグルグル巻き
SP_05 = 4;--暗転後のヒットエフェクト
SP_06 = 100263;--電子ジャー
--SP_13 = 103045;--チョコ


multi_frm = 2;

changeAnime( 0, 0, 30);                       -- 立ち
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0, -54,   0);
setMoveKey(   1,   0,    0, -54,   0);
setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   1,   0, 1.5, 1.5);

------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
SP_start =-69
setMoveKey(   0,   0,    0, 0,   0);
setMoveKey(   1,   0,    0, 0,   0);

setVisibleUI(69+SP_start, 0);
changeAnime( SP_start+ 70, 0, 30);                       -- 溜め!
playSe( SP_start+ 73, SE_03);

entryEffect( SP_start+  70,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect( SP_start+  70,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
speff = entryEffect( SP_start+  80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect( SP_start+  80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( SP_start+ 80, SE_04);

--kame_hand = entryEffect( SP_start+ 70, SP_01, 0x100,      0,  300,  -30,  35);   -- 手元

entryFade( SP_start+ 165, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife( SP_start+  70,   311, 99, 0x40+0x100,  0,  1,  0,  -50); -- オーラ
setEffScaleKey( SP_start+ 30, aura, 1.5, 1.5);
setShakeChara( SP_start+ 70, 0, 49, 5);
setEffAlphaKey( SP_start+70, aura, 200);

kame_hand = entryEffect( SP_start+70, SP_01, 0x40+0x100,      0,  300,  -80,  0);   
setEffScaleKey( SP_start+ 70, kame_hand, 0.5, 0.5);

-- 書き文字エントリー
ct = entryEffectLife( SP_start+ 90, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake( SP_start+90, ct, 40, 8);
setEffScaleKey( SP_start+90, ct, 1.4, 1.4);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( SP_start+ 169,   0, 1.5, 1.5);
setScaleKey( SP_start+ 170,   0, 1.0, 1.0);

playSe( SP_start+ 170, SE_05);
speff = entryEffect( SP_start+  170,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


entryFade( SP_start+ 255, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey( SP_start+  258,    0,      0,  0,   0);

-- ** エフェクト等 ** --
playSe( SP_start+ 170+64, SE_06);
------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
changeAnime( SP_start+ 260, 0, 31);                                    -- かめはめ発射ポーズ

setMoveKey( SP_start+  259,    0,      -300,  0,   0);

entryEffectLife( SP_start+ 260, 920, 125, 0x80,  -1,  0,  0,  0); -- 流線

mahuubabg = entryEffectLife( SP_start+ 260, SP_03, 125, 0x80,  0, -1,  200,  0);   -- 光弾発射時の背景渦巻き

kamehame_beam = entryEffectLife( SP_start+ 260, SP_02, 125, 0x40,  0,  300,  80,  0);   -- 伸びるかめはめ波
setEffAlphaKey( SP_start+260, kamehame_beam, 0);
setEffAlphaKey( SP_start+263, kamehame_beam, 0);
setEffAlphaKey( SP_start+264, kamehame_beam, 255);

playSe( SP_start+ 260, SE_07);

spname = entryEffect( SP_start+ 260, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture( spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 途中からカメハメハが伸びる

setMoveKey( SP_start+  299,    0,   -300,  0,   0);--250

setMoveKey( SP_start+  302,    0,   -500,  0,   0);--250
setDisp( SP_start+ 306, 0, 0);

setMoveKey( SP_start+  308,    0,   -1200,  0,   0);

setDisp( SP_start+ 260, 1, 1);
changeAnime( SP_start+ 260, 1, 104);                        -- ガード
setScaleKey( SP_start+ 170,   0, 1.2, 1.2);

setMoveKey( SP_start+  260,    1,  600,  50,   0);
setScaleKey( SP_start+ 260,    1,  1.5, 1.5);
setMoveKey( SP_start+  340,    1,  600,  50,   0);

setMoveKey( SP_start+  360,    1,  200,  70,   0);
changeAnime( SP_start+ 360, 1, 108);                        -- ガード

setShakeChara( SP_start+ 360, 1, 20, 25);
playSe( SP_start+ 360, SE_09);

entryFade( SP_start+ 373, 3, 6, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setDisp( SP_start+ 377, 0, 0);
setDisp( SP_start+ 377, 1, 0);

-- ** エフェクト等 ** --
entryFadeBg( SP_start+ 260, 0, 125, 0, 10, 10, 10, 180);       -- ベース暗め　背景
--entryFadeBg( SP_start+ 260, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
--entryFadeBg( SP_start+ 300, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景

setShakeChara( SP_start+ 305, 0, 54, 50);
setShake( SP_start+305, 72, 15);

shuchusen = entryEffectLife( SP_start+ 260, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( SP_start+ 260, shuchusen, 1.0, 1.0);
setEffScaleKey( SP_start+ 300, shuchusen, 1.0, 1.0);
setEffScaleKey( SP_start+ 309, shuchusen, 2.0, 2.0);

-- 書き文字エントリー
ct = entryEffectLife( SP_start+ 268, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake( SP_start+268, ct, 32, 5);
setEffAlphaKey( SP_start+268, ct, 255);
setEffAlphaKey( SP_start+290, ct, 255);
setEffAlphaKey( SP_start+300, ct, 0);
setEffScaleKey( SP_start+268, ct, 0.0, 0.0);
setEffScaleKey( SP_start+272, ct, 1.3, 1.3);
setEffScaleKey( SP_start+292, ct, 1.3, 1.3);
setEffScaleKey( SP_start+300, ct, 6.0, 6.0);

playSe( SP_start+ 300, SE_07);

removeAllEffect( SP_start+ 381);

SP_start2 =12

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------

playSe( SP_start2+ SP_start+ 389, SE_13);
--playSe( SP_start2+ SP_start+ 407, SE_13);
--playSe( SP_start2+ SP_start+ 427, SE_13);

kamehame_beam2 = entryEffect( SP_start2+ SP_start+ 370, SP_04,   0, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey( SP_start2+ SP_start+370, kamehame_beam2, 1, 1);
setEffScaleKey( SP_start2+ SP_start+452, kamehame_beam2, 1, 1);
--setEffScaleKey( SP_start2+ SP_start+454, kamehame_beam2, 2.5, 2.5);
--setDamage( SP_start2+ SP_start+ 425, 1, 0);  -- ダメージ振動等

ct = entryEffectLife( SP_start2+ SP_start+ 370, 10014, 116, 0, -1, 0, 0, 255); -- ズドドッ
setEffShake(SP_start2+ SP_start+ 370, ct, 99, 20);
setEffScaleKey( SP_start2+ SP_start+ 370, ct, 2.8, 2.8);
setEffRotateKey(SP_start2+ SP_start+ 370, ct, 70);
setEffAlphaKey(SP_start2+ SP_start+ 370, ct, 255);
setEffAlphaKey(SP_start2+ SP_start+ 370+104, ct, 255);
setEffAlphaKey(SP_start2+ SP_start+ 370+114, ct, 0);

entryFade( SP_start2+ SP_start+ 482, 5,  6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade 410
removeAllEffect( SP_start2+SP_start+ 490);

playSe( SP_start2+ SP_start+ 499, SE_14);
cte = entryEffectLife( SP_start2+ SP_start+ 499, SP_06, 30, 0, -1, 0, 0, 150);-- 電子ジャー 真ん中のほうが視点を変えないで済む
setEffScaleKey( SP_start2+ SP_start+499, cte, 1, 1);
setEffAlphaKey( SP_start2+ SP_start+499, cte, 255);

eff09 = entryEffectLife( SP_start2+ SP_start+ 505, 906, 99, 0, -1, 0, 0, 0); -- 白集中線
setEffAlphaKey( SP_start2+ SP_start+505, eff09, 255);

SP_ATK012=516;--416

entryFade( SP_start2+ SP_start+ SP_ATK012+10, 6,  10, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade 410

setEffAlphaKey( SP_start2+ SP_start+SP_ATK012+20, eff09, 0);

SP_ATK011=SP_ATK012+50;--416

setEffAlphaKey( SP_start2+ SP_start+SP_ATK012+43, cte, 0);


------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 279; --エンドフェイズのフレーム数を置き換える

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

------------------------------------------------------
-- 暗転後攻撃(100F)
------------------------------------------------------
setDisp( SP_start2+ SP_start+ SP_ATK011, 0, 0);
diff01 = 10;
diff02 = -35;--ギュッの分の時間を短縮
diff04 = 0;


--攻撃演出--

-- ** エフェクト等 ** --
--setShakeChara( SP_start2+ SP_start+ SP_ATK011, 1, 99, 20);
entryFadeBg( SP_start2+ SP_start+ SP_ATK011+diff02, 0, 115+diff01+10+12, 0, 0, 0, 0, 255);          -- ベース暗 背景 469 ~ 505
entryEffectLife( SP_start2+ SP_start+ SP_ATK011+diff02, 921, 115+diff01+10+12, 0x80,  -1,  0,  0,  0); -- 流線斜め ~505
--entryFlash( SP_start2+ SP_start+ (SP_ATK011+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
setDamage( SP_start2+ SP_start+  SP_ATK011+64+diff01+diff02,  1,  0);   --ダメージ振動等 ~543

eff01 = entryEffect( SP_start2+ diff04+ SP_start+ SP_ATK011+35+diff02, SP_05, 0, 1,  0,  0,  0);   -- ヒットエフェクト 
setEffScaleKey( SP_start2+ diff04+ SP_start+ SP_ATK011+35+diff02, eff01,2,2);--サイズ
setEffRotateKey( SP_start2+ diff04+ SP_start+SP_ATK011+35+diff02, eff01,-10);--角度
--entryFlashBg( SP_start2+ diff04+ SP_start+ (SP_ATK011+35), 1, fcolor_r, fcolor_g, fcolor_b, 200);
changeAnime( SP_start2+ diff04+ SP_start+ SP_ATK011+36+diff02, 1, 106);--やられ   
playSe( SP_start2+ diff04+ SP_start+ SP_ATK011+35+diff02, SE_09);
entryFadeBg( SP_start2+ diff04+ SP_start+ SP_ATK011+35+diff02, 0, 66, 0, 0, 0, 0, 255);          -- ベース暗め　背景
pauseAll( SP_start2+ diff04+ SP_start+SP_ATK011+36+diff02,10);

--2撃目--
entryEffectLife( SP_start2+ diff04+ SP_start+ SP_ATK011+50+diff01+diff02, 906, 45, 0x00,  -1, 0,  0,  0);   -- 集中線

eff02 = entryEffect( SP_start2+ diff04+ SP_start+ SP_ATK011+50+diff01+diff02, SP_05,  0, -1,  0,  0,  0);   -- 攻撃3
setEffScaleKey( SP_start2+ diff04+ SP_start+ SP_ATK011+50+diff01+diff02, eff02,2,3);--サイズ
setEffRotateKey( SP_start2+ diff04+ SP_start+SP_ATK011+50+diff01+diff02, eff02,-70);--角度
--entryFlashBg( SP_start2+ diff04+ SP_start+ (SP_ATK011+50+diff01), 1, fcolor_r, fcolor_g, fcolor_b, 200);
playSe( SP_start2+ diff04+ SP_start+ SP_ATK011+50+diff01+diff02, SE_08);
changeAnime( SP_start2+ diff04+ SP_start+ SP_ATK011+50+diff01+diff02, 1, 105);--やられ 
setShake( SP_start2+ diff04+ SP_start+ SP_ATK011+50+diff01+diff02, 3, 14);
setMoveKey( SP_start2+ diff04+ SP_start+  SP_ATK011+50+diff01+diff02, 1, 0,  0,  0);
setMoveKey( SP_start2+ diff04+ SP_start+  SP_ATK011+51+diff01+diff02, 1, 50,  -50,  0);

eff03 = entryEffect( SP_start2+ diff04+ SP_start+ SP_ATK011+57+diff01+diff02, SP_05,  0, -1,  0,  50,  0);   -- 攻撃4
setEffScaleKey( SP_start2+ diff04+ SP_start+ SP_ATK011+57+diff01+diff02, eff03, 3,3);--サイズ
setEffRotateKey( SP_start2+ diff04+ SP_start+SP_ATK011+57+diff01+diff02, eff03, 70);--角度
playSe( SP_start2+ diff04+ SP_start+ SP_ATK011+57+diff01+diff02, SE_09);
changeAnime( SP_start2+ diff04+ SP_start+ SP_ATK011+57+diff01+diff02, 1, 108);--やられ 
setShake( SP_start2+ diff04+ SP_start+ SP_ATK011+57+diff01+diff02, 3, 14);
setMoveKey( SP_start2+ diff04+ SP_start+  SP_ATK011+57+diff01+diff02, 1, 50,  -50,  -128);
setMoveKey( SP_start2+ diff04+ SP_start+  SP_ATK011+58+diff01+diff02, 1, -80,  30,  -128);

eff04 = entryEffect( SP_start2+ diff04+ SP_start+ SP_ATK011+65+diff01+diff02, SP_05,  0, -1,  0,  -80,  0);   -- 攻撃5
setEffScaleKey( SP_start2+ diff04+ SP_start+ SP_ATK011+65+diff01+diff02, eff04, 3,2);--サイズ
setEffRotateKey( SP_start2+ diff04+ SP_start+SP_ATK011+65+diff01+diff02, eff04, -80);--角度
playSe( SP_start2+ diff04+ SP_start+ SP_ATK011+65+diff01+diff02, SE_08);
changeAnime( SP_start2+ diff04+ SP_start+ SP_ATK011+65+diff01+diff02, 1, 106);--やられ 
setShake( SP_start2+ diff04+ SP_start+ SP_ATK011+65+diff01+diff02, 3, 14);
setMoveKey( SP_start2+ diff04+ SP_start+  SP_ATK011+65+diff01+diff02, 1, -80,  30,  -128);
setMoveKey( SP_start2+ diff04+ SP_start+  SP_ATK011+66+diff01+diff02, 1, 40,  -35,  -128);

eff05 = entryEffect( SP_start2+ diff04+ SP_start+ SP_ATK011+72+diff01+diff02, SP_05,  0, -1,  0,  20,  0);   -- 攻撃3
setEffScaleKey( SP_start2+ diff04+ SP_start+ SP_ATK011+72+diff01+diff02, eff05, 0.4,3);--サイズ
setEffRotateKey( SP_start2+ diff04+ SP_start+SP_ATK011+72+diff01+diff02, eff05, 45);--角度
--entryFlashBg( SP_start2+ diff04+ SP_start+ (SP_ATK011+72+diff01), 1, fcolor_r, fcolor_g, fcolor_b, 200);
playSe( SP_start2+ diff04+ SP_start+ SP_ATK011+72+diff01+diff02, SE_09);
setShake( SP_start2+ diff04+ SP_start+ SP_ATK011+72+diff01+diff02, 3, 14);
setMoveKey( SP_start2+ diff04+ SP_start+  SP_ATK011+72+diff01+diff02, 1, 40,  -35,  -128);
setMoveKey( SP_start2+ diff04+ SP_start+  SP_ATK011+73+diff01+diff02, 1, -90,  -90,  -128);

eff06 = entryEffect( SP_start2+ diff04+ SP_start+ SP_ATK011+76+diff01+diff02, SP_05,  0, -1,  0,  -60,  0);   -- 攻撃3
setEffScaleKey( SP_start2+ diff04+ SP_start+ SP_ATK011+76+diff01+diff02, eff06, 1,2);--サイズ
setEffRotateKey( SP_start2+ diff04+ SP_start+SP_ATK011+76+diff01+diff02, eff06, -100);--角度
playSe( SP_start2+ diff04+ SP_start+ SP_ATK011+76+diff01+diff02, SE_08);
changeAnime( SP_start2+ diff04+ SP_start+ SP_ATK011+76+diff01+diff02, 1, 105);--やられ 
setShake( SP_start2+ diff04+ SP_start+ SP_ATK011+76+diff01+diff02, 3, 14);
setMoveKey( SP_start2+ diff04+ SP_start+  SP_ATK011+76+diff01+diff02, 1, 90,  -90,  -128);
setMoveKey( SP_start2+ diff04+ SP_start+  SP_ATK011+77+diff01+diff02, 1, -60, 80,  -128);

eff07 = entryEffect( SP_start2+ diff04+ SP_start+ SP_ATK011+80+diff01+diff02, SP_05,  0, -1,  0,  70,  0);   -- 攻撃3
setEffScaleKey( SP_start2+ diff04+ SP_start+ SP_ATK011+80+diff01+diff02, eff07, 2,1.5);--サイズ
setEffRotateKey( SP_start2+ diff04+ SP_start+SP_ATK011+80+diff01+diff02, eff07, 130);--角度
playSe( SP_start2+ diff04+ SP_start+ SP_ATK011+80+diff01+diff02, SE_08);
--entryFlashBg( SP_start2+ diff04+ SP_start+ (SP_ATK011+80+diff01), 1, fcolor_r, fcolor_g, fcolor_b, 200);
changeAnime( SP_start2+ diff04+ SP_start+ SP_ATK011+80+diff01+diff02, 1, 106);--やられ 
setShake( SP_start2+ diff04+ SP_start+ SP_ATK011+80+diff01+diff02, 3, 14);
setMoveKey( SP_start2+ diff04+ SP_start+  SP_ATK011+80+diff01+diff02, 1, -60, 80,  -128);
setMoveKey( SP_start2+ diff04+ SP_start+  SP_ATK011+81+diff01+diff02, 1, 80,  60,  -128);

diff03 = 7

eff08 = entryEffect( SP_start2+ diff04+ SP_start+ SP_ATK011+91+diff01+diff02+diff03, SP_05,  0, -1,  0,  0,  0);   -- 攻撃3
setEffScaleKey( SP_start2+ diff04+ SP_start+ SP_ATK011+91+diff01+diff02+diff03, eff08, 2,4);--サイズ
setEffRotateKey( SP_start2+ diff04+ SP_start+SP_ATK011+91+diff01+diff02+diff03, eff08, -15);--角度
playSe( SP_start2+ diff04+ SP_start+ SP_ATK011+91+diff01+diff02+diff03, SE_09);
setShake( SP_start2+ diff04+ SP_start+ SP_ATK011+91+diff01+diff02+diff03, 3, 14);
--entryFadeBg( SP_start2+ diff04+ SP_start+ SP_ATK011+92+diff01+diff02, 0, 35, 0, 0, 0, 0, 255);          -- ベース暗め　背景
entryEffectLife( SP_start2+ diff04+ SP_start+ SP_ATK011+92+diff01+diff02+diff03, 908, 10, 0x00,  -1, 0,  0,  0);   -- 集中線
--entryFlashBg( SP_start2+ diff04+ SP_start+ SP_ATK011+92+diff01+diff02, 1, fcolor_r, 0, 0, 100);
--entryFlashBg( SP_start2+ diff04+ SP_start+ SP_ATK011+94+diff01+diff02, 1, 255, 255, 255, 100);
setMoveKey( SP_start2+ diff04+ SP_start+  SP_ATK011+92+diff01+diff02+diff03, 1, 0,  0,  -128);
pauseAll( SP_start2+ diff04+ SP_start+SP_ATK011+92+diff01+diff02+diff03,5);

-- 書き文字エントリー
ct = entryEffectLife( SP_start2+ diff04+ SP_start+ SP_ATK011+35+diff02, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake( SP_start2+ diff04+ SP_start+SP_ATK011+35+diff02, ct, 81, 20);
setEffScaleKey( SP_start2+ diff04+ SP_start+ SP_ATK011+35+diff02, ct, 2.4, 2.4);
setEffRotateKey( SP_start2+ diff04+ SP_start+SP_ATK011+35+diff02, ct, 70);
setEffAlphaKey( SP_start2+ diff04+ SP_start+SP_ATK011+35+diff02, ct, 255);
setEffAlphaKey( SP_start2+ diff04+ SP_start+SP_ATK011+103+diff01+diff02, ct, 255);
setEffAlphaKey( SP_start2+ diff04+ SP_start+SP_ATK011+127+diff01+diff02, ct, 0);

--entryFade( SP_start2+ diff04+ SP_start+ SP_ATK011+100+diff01+10, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 100); 

entryFade( SP_start2+ diff04+ SP_start+ SP_ATK011+115+diff01+10+diff02, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255); 

setDisp( SP_start2+ diff04+SP_start+ SP_ATK011+115+diff01+10+12+diff02, 1, 0);

SP_ATK022=diff04+SP_ATK011+115+diff01+10+12+diff02;

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
setMoveKey( SP_start2+  SP_start+  SP_ATK022,    1,  400,    0,  50);
setDisp( SP_start2+ SP_start+ SP_ATK022, 1, 1);

setMoveKey( SP_start2+  SP_start+  SP_ATK022+1,    1,    0,   0,   128);

setScaleKey( SP_start2+  SP_start+ SP_ATK022,    1,  2.5, 2.5);
setScaleKey( SP_start2+  SP_start+ SP_ATK022+1,    1,  1, 1);

changeAnime( SP_start2+  SP_start+ SP_ATK022+1, 1, 107);                         -- 手前ダメージ
entryEffect( SP_start2+  SP_start+ SP_ATK022+9, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( SP_start2+  SP_start+ SP_ATK022+9, SE_10);

setMoveKey( SP_start2+  SP_start+  SP_ATK022+8,    1,    0,   0,   128);
setMoveKey( SP_start2+  SP_start+  SP_ATK022+15,   1,  -60,  -200,  -100);
setMoveKey( SP_start2+  SP_start+  SP_ATK022+16,   1,  -60,  -200,  -100);

setRotateKey( SP_start2+ SP_start+ SP_ATK022+1,  1,  30 );
setRotateKey( SP_start2+ SP_start+ SP_ATK022+3,  1,  80 );
setRotateKey( SP_start2+ SP_start+ SP_ATK022+5,  1, 120 );
setRotateKey( SP_start2+ SP_start+ SP_ATK022+7,  1, 160 );
setRotateKey( SP_start2+ SP_start+ SP_ATK022+9,  1, 200 );
setRotateKey( SP_start2+ SP_start+ SP_ATK022+11,  1, 260 );
setRotateKey( SP_start2+ SP_start+ SP_ATK022+13,  1, 320 );
setRotateKey( SP_start2+ SP_start+ SP_ATK022+15,  1,   0 );

setShakeChara( SP_start2+  SP_start+ SP_ATK022+16, 1, 5,  10);
setShakeChara( SP_start2+  SP_start+ SP_ATK022+21, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( SP_start2+  SP_start+ SP_ATK022+16, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( SP_start2+  SP_start+SP_ATK022+16, ct, 30, 10);
setEffRotateKey( SP_start2+  SP_start+ SP_ATK022+16, ct, -40);
setEffScaleKey( SP_start2+  SP_start+ SP_ATK022+16, ct, 4.0, 4.0);
setEffScaleKey( SP_start2+  SP_start+ SP_ATK022+17, ct, 2.0, 2.0);
setEffScaleKey( SP_start2+  SP_start+ SP_ATK022+18, ct, 2.6, 2.6);
setEffScaleKey( SP_start2+  SP_start+ SP_ATK022+19, ct, 4.0, 4.0);
setEffScaleKey( SP_start2+  SP_start+ SP_ATK022+20, ct, 2.6, 2.6);
setEffScaleKey( SP_start2+  SP_start+ SP_ATK022+21, ct, 3.8, 3.8);
setEffScaleKey( SP_start2+  SP_start+ SP_ATK022+111, ct, 3.8, 3.8);
setEffAlphaKey( SP_start2+  SP_start+ SP_ATK022+16, ct, 255);
setEffAlphaKey( SP_start2+  SP_start+ SP_ATK022+106, ct, 255);
setEffAlphaKey( SP_start2+  SP_start+ SP_ATK022+116, ct, 0);

playSe( SP_start2+  SP_start+ SP_ATK022+4, SE_11);
shuchusen = entryEffectLife( SP_start2+  SP_start+ SP_ATK022+4, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( SP_start2+  SP_start+ SP_ATK022+4, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage( SP_start2+  SP_start+SP_ATK022+4);
entryFade( SP_start2+  SP_start+ SP_ATK022+101, 9,  10, 1, 8, 8, 8, 255);             -- black fade

SP_end = SP_ATK022+120;

endPhase( SP_start2+  SP_start+SP_end);

else

-----------------------------------------
--敵側の攻撃
-----------------------------------------
--キャラ位置
--setMoveKey( 0,    0,      0,  0,   0);
--setMoveKey( 0,    1,      800,  0,   0);

SP_start =-69
setMoveKey(   0,   0,    0, 0,   0);
setMoveKey(   1,   0,    0, 0,   0);

setVisibleUI(69+SP_start, 0);
changeAnime( SP_start+ 70, 0, 30);                       -- 溜め!
playSe( SP_start+ 73, SE_03);

entryEffect( SP_start+  70,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect( SP_start+  70,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)

--[[
speff = entryEffect( SP_start+  80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect( SP_start+  80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
--]]
playSe( SP_start+ 80, SE_04);

--kame_hand = entryEffect( SP_start+ 70, SP_01, 0x100,      0,  300,  -30,  35);   -- 手元

entryFade( SP_start+ 165, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife( SP_start+  70,   311, 99, 0x40+0x100,  0,  1,  0,  -50); -- オーラ
setEffScaleKey( SP_start+ 30, aura, 1.5, 1.5);
setShakeChara( SP_start+ 70, 0, 49, 5);
setEffAlphaKey( SP_start+70, aura, 200);

kame_hand = entryEffect( SP_start+70, SP_01, 0x40+0x100,      0,  300,  -80,  0);   
setEffScaleKey( SP_start+ 70, kame_hand, 0.5, 0.5);

-- 書き文字エントリー
ct = entryEffectLife( SP_start+ 90, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake( SP_start+90, ct, 40, 8);
setEffScaleKey( SP_start+90, ct, 1.4, 1.4);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( SP_start+ 169,   0, 1.5, 1.5);
setScaleKey( SP_start+ 170,   0, 1.0, 1.0);

playSe( SP_start+ 170, SE_05);
speff = entryEffect( SP_start+  170,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


entryFade( SP_start+ 255, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey( SP_start+  258,    0,      0,  0,   0);

-- ** エフェクト等 ** --
playSe( SP_start+ 170+64, SE_06);
------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
changeAnime( SP_start+ 260, 0, 31);                                    -- かめはめ発射ポーズ

setMoveKey( SP_start+  259,    0,      -300,  0,   0);

entryEffectLife( SP_start+ 260, 920, 125, 0x80,  -1,  0,  0,  0); -- 流線

mahuubabg = entryEffectLife( SP_start+ 260, SP_03, 125, 0x80,  0, -1,  200,  0);   -- 光弾発射時の背景渦巻き

kamehame_beam = entryEffectLife( SP_start+ 260, SP_02, 125, 0x40,  0,  300,  80,  0);   -- 伸びるかめはめ波
setEffAlphaKey( SP_start+260, kamehame_beam, 0);
setEffAlphaKey( SP_start+263, kamehame_beam, 0);
setEffAlphaKey( SP_start+264, kamehame_beam, 255);

playSe( SP_start+ 260, SE_07);

spname = entryEffect( SP_start+ 260, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture( spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 途中からカメハメハが伸びる

setMoveKey( SP_start+  299,    0,   -300,  0,   0);--250

setMoveKey( SP_start+  302,    0,   -500,  0,   0);--250
setDisp( SP_start+ 306, 0, 0);

setMoveKey( SP_start+  308,    0,   -1200,  0,   0);

setDisp( SP_start+ 260, 1, 1);
changeAnime( SP_start+ 260, 1, 104);                        -- ガード
setScaleKey( SP_start+ 170,   0, 1.2, 1.2);

setMoveKey( SP_start+  260,    1,  600,  50,   0);
setScaleKey( SP_start+ 260,    1,  1.5, 1.5);
setMoveKey( SP_start+  340,    1,  600,  50,   0);

setMoveKey( SP_start+  360,    1,  200,  70,   0);
changeAnime( SP_start+ 360, 1, 108);                        -- ガード

setShakeChara( SP_start+ 360, 1, 20, 25);
playSe( SP_start+ 360, SE_09);

entryFade( SP_start+ 373, 3, 6, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setDisp( SP_start+ 377, 0, 0);
setDisp( SP_start+ 377, 1, 0);

-- ** エフェクト等 ** --
entryFadeBg( SP_start+ 260, 0, 125, 0, 10, 10, 10, 180);       -- ベース暗め　背景
--entryFadeBg( SP_start+ 260, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
--entryFadeBg( SP_start+ 300, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景

setShakeChara( SP_start+ 305, 0, 54, 50);
setShake( SP_start+305, 72, 15);

shuchusen = entryEffectLife( SP_start+ 260, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( SP_start+ 260, shuchusen, 1.0, 1.0);
setEffScaleKey( SP_start+ 300, shuchusen, 1.0, 1.0);
setEffScaleKey( SP_start+ 309, shuchusen, 2.0, 2.0);

-- 書き文字エントリー
ct = entryEffectLife( SP_start+ 268, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake( SP_start+268, ct, 32, 5);
setEffAlphaKey( SP_start+268, ct, 255);
setEffAlphaKey( SP_start+290, ct, 255);
setEffAlphaKey( SP_start+300, ct, 0);
setEffScaleKey( SP_start+268, ct, 0.0, 0.0);
setEffScaleKey( SP_start+272, ct, 1.3, 1.3);
setEffScaleKey( SP_start+292, ct, 1.3, 1.3);
setEffScaleKey( SP_start+300, ct, 6.0, 6.0);

playSe( SP_start+ 300, SE_07);

removeAllEffect( SP_start+ 381);

SP_start2 =12


------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------

playSe( SP_start2+ SP_start+ 389, SE_13);
--playSe( SP_start2+ SP_start+ 407, SE_13);
--playSe( SP_start2+ SP_start+ 427, SE_13);

kamehame_beam2 = entryEffect( SP_start2+ SP_start+ 370, SP_04,   0, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey( SP_start2+ SP_start+370, kamehame_beam2, 1, 1);
setEffScaleKey( SP_start2+ SP_start+452, kamehame_beam2, 1, 1);
--setEffScaleKey( SP_start2+ SP_start+454, kamehame_beam2, 2.5, 2.5);
--setDamage( SP_start2+ SP_start+ 425, 1, 0);  -- ダメージ振動等

ct = entryEffectLife( SP_start2+ SP_start+ 370, 10014, 116, 0, -1, 0, 0, 255); -- ズドドッ
setEffShake(SP_start2+ SP_start+ 370, ct, 99, 20);
setEffScaleKey( SP_start2+ SP_start+ 370, ct, 2.8, 2.8);
setEffRotateKey(SP_start2+ SP_start+ 370, ct, -70);
setEffAlphaKey(SP_start2+ SP_start+ 370, ct, 255);
setEffAlphaKey(SP_start2+ SP_start+ 370+104, ct, 255);
setEffAlphaKey(SP_start2+ SP_start+ 370+114, ct, 0);

entryFade( SP_start2+ SP_start+ 482, 5,  6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade 410
removeAllEffect( SP_start2+SP_start+ 490);

playSe( SP_start2+ SP_start+ 499, SE_14);
cte = entryEffectLife( SP_start2+ SP_start+ 499, SP_06, 30, 0, -1, 0, 0, 150);-- 電子ジャー 真ん中のほうが視点を変えないで済む
setEffScaleKey( SP_start2+ SP_start+499, cte, -1, 1);
setEffAlphaKey( SP_start2+ SP_start+499, cte, 255);

eff09 = entryEffectLife( SP_start2+ SP_start+ 505, 906, 99, 0, -1, 0, 0, 0); -- 白集中線
setEffAlphaKey( SP_start2+ SP_start+505, eff09, 255);

SP_ATK012=516;--416

entryFade( SP_start2+ SP_start+ SP_ATK012+10, 6,  10, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade 410

setEffAlphaKey( SP_start2+ SP_start+SP_ATK012+20, eff09, 0);

SP_ATK011=SP_ATK012+50;--416

setEffAlphaKey( SP_start2+ SP_start+SP_ATK012+43, cte, 0);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 279; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

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

------------------------------------------------------
-- 暗転後攻撃(100F)
------------------------------------------------------
setDisp( SP_start2+ SP_start+ SP_ATK011, 0, 0);
diff01 = 10;
diff02 = -35;--ギュッの分の時間を短縮
diff04 = 0;


--攻撃演出--

-- ** エフェクト等 ** --
--setShakeChara( SP_start2+ SP_start+ SP_ATK011, 1, 99, 20);
entryFadeBg( SP_start2+ SP_start+ SP_ATK011+diff02, 0, 115+diff01+10+12, 0, 0, 0, 0, 255);          -- ベース暗 背景 469 ~ 505
entryEffectLife( SP_start2+ SP_start+ SP_ATK011+diff02, 921, 115+diff01+10+12, 0x80,  -1,  0,  0,  0); -- 流線斜め ~505
--entryFlash( SP_start2+ SP_start+ (SP_ATK011+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
setDamage( SP_start2+ SP_start+  SP_ATK011+64+diff01+diff02,  1,  0);   --ダメージ振動等 ~543

eff01 = entryEffect( SP_start2+ diff04+ SP_start+ SP_ATK011+35+diff02, SP_05, 0, 1,  0,  0,  0);   -- ヒットエフェクト 
setEffScaleKey( SP_start2+ diff04+ SP_start+ SP_ATK011+35+diff02, eff01,2,2);--サイズ
setEffRotateKey( SP_start2+ diff04+ SP_start+SP_ATK011+35+diff02, eff01,-10);--角度
--entryFlashBg( SP_start2+ diff04+ SP_start+ (SP_ATK011+35), 1, fcolor_r, fcolor_g, fcolor_b, 200);
changeAnime( SP_start2+ diff04+ SP_start+ SP_ATK011+36+diff02, 1, 106);--やられ   
playSe( SP_start2+ diff04+ SP_start+ SP_ATK011+35+diff02, SE_09);
entryFadeBg( SP_start2+ diff04+ SP_start+ SP_ATK011+35+diff02, 0, 66, 0, 0, 0, 0, 255);          -- ベース暗め　背景
pauseAll( SP_start2+ diff04+ SP_start+SP_ATK011+36+diff02,10);

--2撃目--
entryEffectLife( SP_start2+ diff04+ SP_start+ SP_ATK011+50+diff01+diff02, 906, 45, 0x00,  -1, 0,  0,  0);   -- 集中線

eff02 = entryEffect( SP_start2+ diff04+ SP_start+ SP_ATK011+50+diff01+diff02, SP_05,  0, -1,  0,  0,  0);   -- 攻撃3
setEffScaleKey( SP_start2+ diff04+ SP_start+ SP_ATK011+50+diff01+diff02, eff02,2,3);--サイズ
setEffRotateKey( SP_start2+ diff04+ SP_start+SP_ATK011+50+diff01+diff02, eff02,-70);--角度
--entryFlashBg( SP_start2+ diff04+ SP_start+ (SP_ATK011+50+diff01), 1, fcolor_r, fcolor_g, fcolor_b, 200);
playSe( SP_start2+ diff04+ SP_start+ SP_ATK011+50+diff01+diff02, SE_08);
changeAnime( SP_start2+ diff04+ SP_start+ SP_ATK011+50+diff01+diff02, 1, 105);--やられ 
setShake( SP_start2+ diff04+ SP_start+ SP_ATK011+50+diff01+diff02, 3, 14);
setMoveKey( SP_start2+ diff04+ SP_start+  SP_ATK011+50+diff01+diff02, 1, 0,  0,  0);
setMoveKey( SP_start2+ diff04+ SP_start+  SP_ATK011+51+diff01+diff02, 1, 50,  -50,  0);

eff03 = entryEffect( SP_start2+ diff04+ SP_start+ SP_ATK011+57+diff01+diff02, SP_05,  0, -1,  0,  50,  0);   -- 攻撃4
setEffScaleKey( SP_start2+ diff04+ SP_start+ SP_ATK011+57+diff01+diff02, eff03, 3,3);--サイズ
setEffRotateKey( SP_start2+ diff04+ SP_start+SP_ATK011+57+diff01+diff02, eff03, 70);--角度
playSe( SP_start2+ diff04+ SP_start+ SP_ATK011+57+diff01+diff02, SE_09);
changeAnime( SP_start2+ diff04+ SP_start+ SP_ATK011+57+diff01+diff02, 1, 108);--やられ 
setShake( SP_start2+ diff04+ SP_start+ SP_ATK011+57+diff01+diff02, 3, 14);
setMoveKey( SP_start2+ diff04+ SP_start+  SP_ATK011+57+diff01+diff02, 1, 50,  -50,  -128);
setMoveKey( SP_start2+ diff04+ SP_start+  SP_ATK011+58+diff01+diff02, 1, -80,  30,  -128);

eff04 = entryEffect( SP_start2+ diff04+ SP_start+ SP_ATK011+65+diff01+diff02, SP_05,  0, -1,  0,  -80,  0);   -- 攻撃5
setEffScaleKey( SP_start2+ diff04+ SP_start+ SP_ATK011+65+diff01+diff02, eff04, 3,2);--サイズ
setEffRotateKey( SP_start2+ diff04+ SP_start+SP_ATK011+65+diff01+diff02, eff04, -80);--角度
playSe( SP_start2+ diff04+ SP_start+ SP_ATK011+65+diff01+diff02, SE_08);
changeAnime( SP_start2+ diff04+ SP_start+ SP_ATK011+65+diff01+diff02, 1, 106);--やられ 
setShake( SP_start2+ diff04+ SP_start+ SP_ATK011+65+diff01+diff02, 3, 14);
setMoveKey( SP_start2+ diff04+ SP_start+  SP_ATK011+65+diff01+diff02, 1, -80,  30,  -128);
setMoveKey( SP_start2+ diff04+ SP_start+  SP_ATK011+66+diff01+diff02, 1, 40,  -35,  -128);

eff05 = entryEffect( SP_start2+ diff04+ SP_start+ SP_ATK011+72+diff01+diff02, SP_05,  0, -1,  0,  20,  0);   -- 攻撃3
setEffScaleKey( SP_start2+ diff04+ SP_start+ SP_ATK011+72+diff01+diff02, eff05, 0.4,3);--サイズ
setEffRotateKey( SP_start2+ diff04+ SP_start+SP_ATK011+72+diff01+diff02, eff05, 45);--角度
--entryFlashBg( SP_start2+ diff04+ SP_start+ (SP_ATK011+72+diff01), 1, fcolor_r, fcolor_g, fcolor_b, 200);
playSe( SP_start2+ diff04+ SP_start+ SP_ATK011+72+diff01+diff02, SE_09);
setShake( SP_start2+ diff04+ SP_start+ SP_ATK011+72+diff01+diff02, 3, 14);
setMoveKey( SP_start2+ diff04+ SP_start+  SP_ATK011+72+diff01+diff02, 1, 40,  -35,  -128);
setMoveKey( SP_start2+ diff04+ SP_start+  SP_ATK011+73+diff01+diff02, 1, -90,  -90,  -128);

eff06 = entryEffect( SP_start2+ diff04+ SP_start+ SP_ATK011+76+diff01+diff02, SP_05,  0, -1,  0,  -60,  0);   -- 攻撃3
setEffScaleKey( SP_start2+ diff04+ SP_start+ SP_ATK011+76+diff01+diff02, eff06, 1,2);--サイズ
setEffRotateKey( SP_start2+ diff04+ SP_start+SP_ATK011+76+diff01+diff02, eff06, -100);--角度
playSe( SP_start2+ diff04+ SP_start+ SP_ATK011+76+diff01+diff02, SE_08);
changeAnime( SP_start2+ diff04+ SP_start+ SP_ATK011+76+diff01+diff02, 1, 105);--やられ 
setShake( SP_start2+ diff04+ SP_start+ SP_ATK011+76+diff01+diff02, 3, 14);
setMoveKey( SP_start2+ diff04+ SP_start+  SP_ATK011+76+diff01+diff02, 1, 90,  -90,  -128);
setMoveKey( SP_start2+ diff04+ SP_start+  SP_ATK011+77+diff01+diff02, 1, -60, 80,  -128);

eff07 = entryEffect( SP_start2+ diff04+ SP_start+ SP_ATK011+80+diff01+diff02, SP_05,  0, -1,  0,  70,  0);   -- 攻撃3
setEffScaleKey( SP_start2+ diff04+ SP_start+ SP_ATK011+80+diff01+diff02, eff07, 2,1.5);--サイズ
setEffRotateKey( SP_start2+ diff04+ SP_start+SP_ATK011+80+diff01+diff02, eff07, 130);--角度
playSe( SP_start2+ diff04+ SP_start+ SP_ATK011+80+diff01+diff02, SE_08);
--entryFlashBg( SP_start2+ diff04+ SP_start+ (SP_ATK011+80+diff01), 1, fcolor_r, fcolor_g, fcolor_b, 200);
changeAnime( SP_start2+ diff04+ SP_start+ SP_ATK011+80+diff01+diff02, 1, 106);--やられ 
setShake( SP_start2+ diff04+ SP_start+ SP_ATK011+80+diff01+diff02, 3, 14);
setMoveKey( SP_start2+ diff04+ SP_start+  SP_ATK011+80+diff01+diff02, 1, -60, 80,  -128);
setMoveKey( SP_start2+ diff04+ SP_start+  SP_ATK011+81+diff01+diff02, 1, 80,  60,  -128);

diff03 = 7

eff08 = entryEffect( SP_start2+ diff04+ SP_start+ SP_ATK011+91+diff01+diff02+diff03, SP_05,  0, -1,  0,  0,  0);   -- 攻撃3
setEffScaleKey( SP_start2+ diff04+ SP_start+ SP_ATK011+91+diff01+diff02+diff03, eff08, 2,4);--サイズ
setEffRotateKey( SP_start2+ diff04+ SP_start+SP_ATK011+91+diff01+diff02+diff03, eff08, -15);--角度
playSe( SP_start2+ diff04+ SP_start+ SP_ATK011+91+diff01+diff02+diff03, SE_09);
setShake( SP_start2+ diff04+ SP_start+ SP_ATK011+91+diff01+diff02+diff03, 3, 14);
--entryFadeBg( SP_start2+ diff04+ SP_start+ SP_ATK011+92+diff01+diff02, 0, 35, 0, 0, 0, 0, 255);          -- ベース暗め　背景
entryEffectLife( SP_start2+ diff04+ SP_start+ SP_ATK011+92+diff01+diff02+diff03, 908, 10, 0x00,  -1, 0,  0,  0);   -- 集中線
--entryFlashBg( SP_start2+ diff04+ SP_start+ SP_ATK011+92+diff01+diff02, 1, fcolor_r, 0, 0, 100);
--entryFlashBg( SP_start2+ diff04+ SP_start+ SP_ATK011+94+diff01+diff02, 1, 255, 255, 255, 100);
setMoveKey( SP_start2+ diff04+ SP_start+  SP_ATK011+92+diff01+diff02+diff03, 1, 0,  0,  -128);
pauseAll( SP_start2+ diff04+ SP_start+SP_ATK011+92+diff01+diff02+diff03,5);

-- 書き文字エントリー
ct = entryEffectLife( SP_start2+ diff04+ SP_start+ SP_ATK011+35+diff02, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake( SP_start2+ diff04+ SP_start+SP_ATK011+35+diff02, ct, 81, 20);
setEffScaleKey( SP_start2+ diff04+ SP_start+ SP_ATK011+35+diff02, ct, 2.4, 2.4);
setEffRotateKey( SP_start2+ diff04+ SP_start+SP_ATK011+35+diff02, ct, -70);
setEffAlphaKey( SP_start2+ diff04+ SP_start+SP_ATK011+35+diff02, ct, 255);
setEffAlphaKey( SP_start2+ diff04+ SP_start+SP_ATK011+103+diff01+diff02, ct, 255);
setEffAlphaKey( SP_start2+ diff04+ SP_start+SP_ATK011+127+diff01+diff02, ct, 0);

--entryFade( SP_start2+ diff04+ SP_start+ SP_ATK011+100+diff01+10, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 100); 

entryFade( SP_start2+ diff04+ SP_start+ SP_ATK011+115+diff01+10+diff02, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255); 

setDisp( SP_start2+ diff04+SP_start+ SP_ATK011+115+diff01+10+12+diff02, 1, 0);


SP_ATK022=diff04+SP_ATK011+115+diff01+10+12+diff02;

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
setMoveKey( SP_start2+  SP_start+  SP_ATK022,    1,  400,    0,  50);
setDisp( SP_start2+ SP_start+ SP_ATK022, 1, 1);

setMoveKey( SP_start2+  SP_start+  SP_ATK022+1,    1,    0,   0,   128);

setScaleKey( SP_start2+  SP_start+ SP_ATK022,    1,  2.5, 2.5);
setScaleKey( SP_start2+  SP_start+ SP_ATK022+1,    1,  1, 1);

changeAnime( SP_start2+  SP_start+ SP_ATK022+1, 1, 107);                         -- 手前ダメージ
entryEffect( SP_start2+  SP_start+ SP_ATK022+9, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( SP_start2+  SP_start+ SP_ATK022+9, SE_10);

setMoveKey( SP_start2+  SP_start+  SP_ATK022+8,    1,    0,   0,   128);
setMoveKey( SP_start2+  SP_start+  SP_ATK022+15,   1,  -60,  -200,  -100);
setMoveKey( SP_start2+  SP_start+  SP_ATK022+16,   1,  -60,  -200,  -100);

setRotateKey( SP_start2+ SP_start+ SP_ATK022+1,  1,  30 );
setRotateKey( SP_start2+ SP_start+ SP_ATK022+3,  1,  80 );
setRotateKey( SP_start2+ SP_start+ SP_ATK022+5,  1, 120 );
setRotateKey( SP_start2+ SP_start+ SP_ATK022+7,  1, 160 );
setRotateKey( SP_start2+ SP_start+ SP_ATK022+9,  1, 200 );
setRotateKey( SP_start2+ SP_start+ SP_ATK022+11,  1, 260 );
setRotateKey( SP_start2+ SP_start+ SP_ATK022+13,  1, 320 );
setRotateKey( SP_start2+ SP_start+ SP_ATK022+15,  1,   0 );

setShakeChara( SP_start2+  SP_start+ SP_ATK022+16, 1, 5,  10);
setShakeChara( SP_start2+  SP_start+ SP_ATK022+21, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( SP_start2+  SP_start+ SP_ATK022+16, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( SP_start2+  SP_start+SP_ATK022+16, ct, 30, 10);
setEffRotateKey( SP_start2+  SP_start+ SP_ATK022+16, ct, -40);
setEffScaleKey( SP_start2+  SP_start+ SP_ATK022+16, ct, 4.0, 4.0);
setEffScaleKey( SP_start2+  SP_start+ SP_ATK022+17, ct, 2.0, 2.0);
setEffScaleKey( SP_start2+  SP_start+ SP_ATK022+18, ct, 2.6, 2.6);
setEffScaleKey( SP_start2+  SP_start+ SP_ATK022+19, ct, 4.0, 4.0);
setEffScaleKey( SP_start2+  SP_start+ SP_ATK022+20, ct, 2.6, 2.6);
setEffScaleKey( SP_start2+  SP_start+ SP_ATK022+21, ct, 3.8, 3.8);
setEffScaleKey( SP_start2+  SP_start+ SP_ATK022+111, ct, 3.8, 3.8);
setEffAlphaKey( SP_start2+  SP_start+ SP_ATK022+16, ct, 255);
setEffAlphaKey( SP_start2+  SP_start+ SP_ATK022+106, ct, 255);
setEffAlphaKey( SP_start2+  SP_start+ SP_ATK022+116, ct, 0);

playSe( SP_start2+  SP_start+ SP_ATK022+4, SE_11);
shuchusen = entryEffectLife( SP_start2+  SP_start+ SP_ATK022+4, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( SP_start2+  SP_start+ SP_ATK022+4, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage( SP_start2+  SP_start+SP_ATK022+4);
entryFade( SP_start2+  SP_start+ SP_ATK022+101, 9,  10, 1, 8, 8, 8, 255);             -- black fade

SP_end = SP_ATK022+120;

endPhase( SP_start2+  SP_start+SP_end);

end
