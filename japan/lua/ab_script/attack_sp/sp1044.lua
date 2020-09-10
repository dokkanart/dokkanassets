print ("[lua]sp1001");

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--SP_01 = 100006
--SP_01 = 150041;--オーラ

SP_01 = 160003;--溜め時のキャラ手前に表示する竜巻
SP_02 = 160004;--横アングル殴りの際身に纏う竜巻 
--SP_07 = 150090;--ヒットエフェクト



SE_01 = 1035; --気を貯める
SE_02 = 1036; --気が広がる
SE_03 = 1036; --かめはめ
SE_04 = 1018; --カットイン
SE_05 = 1035; --カットイン攻撃
SE_06 = 1018; --発射
SE_07 = 1022; --のびる発射
SE_08 = 1009; --huru
SE_09 = 1027; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音
SE_12 = 1004;

SP_ATK_3 = 308;
SP_ATK_4 = SP_ATK_3+120;

--[[
---------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then


else

SP_ATK_0 = 6;
SP_ATK_1 = SP_ATK_0+55;
SP_ATK_2 = SP_ATK_1+45;
SP_ATK_3 = SP_ATK_2+70;
SP_ATK_4 = SP_ATK_3+48;

end
--]]
------------------
multi_frm = 2;

changeAnime( 0, 0, 0);                       -- 立ち
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0, -54,   0);
setMoveKey(   1,   0,    0, -54,   0);
setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   1,   0, 1.5, 1.5);
--setMoveKey(  0,    1,  700,  0,   0);

SP_start = -40;

------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

--setMoveKey(   0,   0,    65, -24,   0);
--setMoveKey(   1,   0,    65, -24,   0);

entryFadeBg( SP_start+ 69, 0, 260, 0, 10, 10, 10, 150);       -- ベース暗め　背景

------------------------------------------------------
-- 気力解放！(100F)
------------------------------------------------------
setVisibleUI( SP_start+69, 0);
changeAnime( SP_start+ 70, 0, 30);                       -- 溜め!
--changeAnime( SP_start+ 70, 0, 50);                       -- 溜め!
setShakeChara( SP_start+ 70 ,0 ,168 ,12);

tornado = entryEffectLife( SP_start+ 70, SP_01, 150, 0x40+0x100,  0, 300,  -80,  40);   -- 竜巻
setEffRotateKey( SP_start+ 70, tornado, 120);
setEffScaleKey( SP_start+ 70, tornado, 1.0, 1.0);

entryEffect( SP_start+  70,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect( SP_start+  70,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)

playSe( SP_start+ 70, SE_04);
--playSe( SP_start+ 80, SE_04);

--entryFade( SP_start+ 165, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--[[
aura = entryEffectLife(  SP_start+70,   311, 100, 0x40,  0,  1,  0,  0); -- オーラ
--entryEffectLife( 90, SP_02, 109, 0x40,  0,  0,  0,  0); 
setEffScaleKey( SP_start+70, aura, 1.5, 1.5);
setShakeChara( SP_start+70, 0, 49, 5);
setEffAlphaKey( SP_start+70, aura, 150);
--]]
speff = entryEffect( SP_start+  80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect( SP_start+  80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー
ct = entryEffectLife( SP_start+ 90, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake( SP_start+90, ct, 40, 8);
setEffScaleKey( SP_start+90, ct, 1.4, 1.4);
--setMoveKey(   SP_start+168,   0,    0, 24,   0);
--setMoveKey(   SP_start+168,   0,    65, -24,   0);
setMoveKey(   SP_start+168,   0,    0, -54,   0);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( SP_start+ 169,   0, 1.5, 1.5);
setScaleKey( SP_start+ 170,   0, 0.7, 0.7);

cr = entryEffect( SP_start+  170,   1507,   0,  -1,  0,  0,  0);   -- eff_008
setEffReplaceTexture( cr, 1, 1);
setEffReplaceTexture( cr, 2, 0);                         -- カード差し替え
setEffReplaceTexture( cr, 5, 4);                                  -- 技名テクスチャ差し替え
playSe( SP_start+ 170, SE_05);

entryFade( SP_start+ 254, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setDisp( SP_start+ 257 , 0 , 0 );

setMoveKey( SP_start+   258,   0,  0, -24,   0); --位置を固定
setScaleKey( SP_start+ 258,   0, 0.7, 0.7);
playSe( SP_start+ 170, SE_06);
removeAllEffect( SP_start+   258 );


------------------------------------------------------
-- 突撃(110F)
------------------------------------------------------

changeAnime( SP_start+ 260, 0, 31);

--味方
setDisp( SP_start+ 260 , 0 , 1 );

tornado2 = entryEffectLife(  SP_start+ 260,   SP_02, 48, 0x40+0x0100,  0,  1,  -40,  200); -- 竜巻
setEffScaleKey( SP_start+ 260, tornado2, 0.8, 0.8);
setEffAlphaKey( SP_start+260, tornado2, 0);
setEffAlphaKey( SP_start+262, tornado2, 0);
setEffAlphaKey( SP_start+263, tornado2, 255);

--P移動
setMoveKey(  SP_start+ 260-1,    0,      0,  0,   0);
setMoveKey(  SP_start+ 260,    0,   -600,  0,   0);
setMoveKey(  SP_start+ 260+1,    0,   -600,  0,   0);
setMoveKey(  SP_start+ 260+5,    0,   50,  0,   0);
setMoveKey(  SP_start+ 260+15,    0,   0,  0,   0);


shuchusen9 = entryEffectLife( SP_start+ 260, 906, 49, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffAlphaKey( SP_start+260, shuchusen9, 255);
entryEffectLife( SP_start+ 260, 920, 49, 0x80,  -1,  0,  0,  0); -- 流線

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 245; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setScaleKey( SP_dodge,   0, 0.7, 0.7);
setMoveKey( SP_dodge+5,  0,  -150,  0,   0);
setMoveKey( SP_dodge+9,  0, -1600,  0,   0);
setDisp( SP_dodge+9 , 0 , 0 );

endPhase(SP_dodge+10);
do return end
else end

setMoveKey(  SP_start+ 260+35,    0,   -150,  0,   0);

playSe( SP_start+ 260+40, SE_06);


setMoveKey(  SP_start+ 260+45,  0, 700,  0,   0);
setMoveKey(  SP_start+ 260+48,  0, 700,  0,   0);
setMoveKey(  SP_start+ 260+49,  0, -1700,  0,   0);


--entryFade( spep_6+45, 3, 5, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade



entryFade( SP_start+ 260+45, 3, 14, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
changeAnime( SP_start+ SP_ATK_3, 0, 31);                        -- 必殺技ポーズ
tornado3 = entryEffectLife( SP_start+ SP_ATK_3, SP_02, 110, 0x40,  0, 0,  -50,  -20);   -- 横アングル殴りの際身に纏う竜巻

--setEffAlphaKey( SP_start+260, tornado3, 180);
setEffScaleKey( SP_start+ SP_ATK_3, tornado3, 0.8, 0.8);
setRotateKey( SP_start+ SP_ATK_3,  1,  -10 );
setRotateKey( SP_start+ SP_ATK_3,  0,  -10 );
setEffRotateKey( SP_start+SP_ATK_3, tornado3, -10);

setDisp( SP_start+ SP_ATK_3, 1, 1);
changeAnime( SP_start+ SP_ATK_3, 1, 104);                        -- ガード


setMoveKey( SP_start+  SP_ATK_3+10,    1,   900,  70,   0);
setScaleKey( SP_start+ SP_ATK_3+10,   1,   0.5,  0.5);
--playSe( SP_start+ SP_ATK_3+7, SE_01);



setScaleKey( SP_start+ SP_ATK_3+25, 1,  1.8, 1.8);
setScaleKey( SP_start+ SP_ATK_3+30, 1,  1.6, 1.6);
--setScaleKey( SP_start+ 258,   0, 0.9, 0.9);

-- ** エフェクト等 ** --
setShakeChara( SP_start+ SP_ATK_3+20+5, 1, 99, 20);
setShake( SP_start+ SP_ATK_3+20+5,99, 15);


-- 書き文字エントリー
ct = entryEffectLife( SP_start+ SP_ATK_3, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake( SP_start+SP_ATK_3, ct, 99, 20);
setEffScaleKey( SP_start+ SP_ATK_3, ct, 2.4, 2.4);
setEffRotateKey( SP_start+SP_ATK_3, ct, 70);
setEffAlphaKey( SP_start+SP_ATK_3, ct, 255);
setEffAlphaKey( SP_start+SP_ATK_3+20+5, ct, 255);
setEffAlphaKey( SP_start+SP_ATK_3+25+5, ct, 0);


setDisp( SP_start+ SP_ATK_3, 0, 1);
--setScaleKey( SP_start+   SP_ATK_3-1,   0, 0.7, 0.7);

setMoveKey( SP_start+  SP_ATK_3+31, 1,  120,    70,  0);
setMoveKey( SP_start+  SP_ATK_3+32, 1,  150,    70,  0);
setMoveKey( SP_start+  SP_ATK_3+35, 1,  150,    70,  0);

changeAnime( SP_start+ SP_ATK_3+34, 1, 108);

setMoveKey( SP_start+  SP_ATK_3+78, 1,  150,    70,  0);
setMoveKey( SP_start+  SP_ATK_3+89, 1,  800,    100,  0);
setMoveKey( SP_start+  SP_ATK_3+91, 1,  1400,    150,  0);
setScaleKey( SP_start+ SP_ATK_3+78, 1,  1.6, 1.6);
setScaleKey( SP_start+ SP_ATK_3+89, 1,  0.4, 0.4);
setScaleKey( SP_start+ SP_ATK_3+91, 1,  0.2, 0.2);

-- ヒットエフェクト

hit_eff_1 = entryEffect( SP_start+ SP_ATK_3+34,  4,  0x40,  -1,  0,  450, 650);--HIT
hit_eff_2 = entryEffect( SP_start+ SP_ATK_3+34,  906,  0x40,  -1,  0,  450, 650);
hit_eff_3 = entryEffect( SP_start+ SP_ATK_3+34,  908,  0x40,  -1,  0,  450, 650);

playSe( SP_start+ SP_ATK_3+34, SE_09);

setEffScaleKey( SP_start+ SP_ATK_3+34, hit_eff_1, 1.5, 1.5);
setEffScaleKey( SP_start+ SP_ATK_3+34, hit_eff_2, 1.5, 1.5);
setEffScaleKey( SP_start+ SP_ATK_3+34, hit_eff_3, 1.5, 1.5);


setMoveKey( SP_start+  SP_ATK_3,  0, -1700,  0,   0);
--setMoveKey( SP_start+  SP_ATK_3+1,  0, -1000,  0,   0);
setMoveKey( SP_start+  SP_ATK_3+24,  0, -700,  0,   0);
setMoveKey( SP_start+  SP_ATK_3+35,  0, -190,  0,   0);
--changeAnime( SP_start+ SP_ATK_3+36, 0, 31);

setShakeChara( SP_start+SP_ATK_3+37 ,0 ,38 ,24);
setShakeChara( SP_start+SP_ATK_3+37 ,1 ,38 ,60);

ryusenn = entryEffectLife( SP_start+ SP_ATK_3-1, 913, 110, 0x80,  -1,  0,  50,  100); -- 流線
--setEffRotateKey( SP_start+SP_ATK_3, ryusenn, -20);
setEffScaleKey( SP_start+ SP_ATK_3-1, ryusenn, 1.2, 1.2);
entryFadeBg( SP_start+ SP_ATK_3-1, 0, 110, 0, 10, 10, 10, 150);       -- ベース暗め　背景


entryFade( SP_start+ SP_ATK_3+105, 4,  12, 5, 255, 255, 255, 255);     -- white fade
setMoveKey( SP_start+  SP_ATK_3+114, 1,  1400,    150,  0);

setRotateKey( SP_start+ SP_ATK_3+110,  1,  10 );

--setMoveKey( SP_start+  SP_ATK_3+105, 1,  1700,    100,  -120);
setDisp( SP_start+SP_ATK_3+110, 1, 0);
removeAllEffect( SP_start+SP_ATK_3+110);
setDisp( SP_start+ SP_ATK_3+110, 0, 0);

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

setMoveKey( SP_start+  SP_ATK_4,    1,  100,  0,   0);
setScaleKey( SP_start+ SP_ATK_4,    1,  1.0, 1.0);
setMoveKey( SP_start+  SP_ATK_4+1,    1,    0,   0,   128);
setScaleKey( SP_start+ SP_ATK_4+1,    1,  0.1, 0.1);
setScaleKey( SP_start+ SP_ATK_4+2,   0, 0.7, 0.7);--追加

changeAnime( SP_start+ SP_ATK_4+1, 1, 107);-- 手前ダメージ
entryEffect( SP_start+ SP_ATK_4+1, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( SP_start+ SP_ATK_4+1, SE_10);

setDisp( SP_start+ SP_ATK_4+8, 1, 1);
setMoveKey( SP_start+  SP_ATK_4+8,    1,    0,   0,   128);
setMoveKey( SP_start+  SP_ATK_4+15,   1,  -60,  -200,  -100);
setMoveKey( SP_start+  SP_ATK_4+16,   1,  -60,  -200,  -100);

setRotateKey( SP_start+ SP_ATK_4,  1,  30 );
setRotateKey( SP_start+ SP_ATK_4+2,  1,  80 );
setRotateKey( SP_start+ SP_ATK_4+4,  1, 120 );
setRotateKey( SP_start+ SP_ATK_4+6,  1, 160 );
setRotateKey( SP_start+ SP_ATK_4+8,  1, 200 );
setRotateKey( SP_start+ SP_ATK_4+10,  1, 260 );
setRotateKey( SP_start+ SP_ATK_4+12,  1, 320 );
setRotateKey( SP_start+ SP_ATK_4+14,  1,   0 );
--setMoveKey( SP_start+  SP_ATK_4+115,   1,  -1000,  -200,  -100);

setShakeChara( SP_start+ SP_ATK_4+15, 1, 5,  10);
setShakeChara( SP_start+ SP_ATK_4+20, 1, 10, 20);
setShake( SP_start+SP_ATK_4+14,6,15);
setShake( SP_start+SP_ATK_4+20,15,10);
-- 書き文字エントリー
ct = entryEffectLife( SP_start+ SP_ATK_4+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( SP_start+ SP_ATK_4+15, ct, 30, 10);
setEffRotateKey( SP_start+ SP_ATK_4+15, ct, -40);
setEffScaleKey( SP_start+ SP_ATK_4+15, ct, 4.0, 4.0);
setEffScaleKey( SP_start+ SP_ATK_4+16, ct, 2.0, 2.0);
setEffScaleKey( SP_start+ SP_ATK_4+17, ct, 2.6, 2.6);
setEffScaleKey( SP_start+ SP_ATK_4+18, ct, 4.0, 4.0);
setEffScaleKey( SP_start+ SP_ATK_4+19, ct, 2.6, 2.6);
setEffScaleKey( SP_start+ SP_ATK_4+20, ct, 3.8, 3.8);
setEffScaleKey( SP_start+ SP_ATK_4+110, ct, 3.8, 3.8);
setEffAlphaKey( SP_start+ SP_ATK_4+15, ct, 255);
setEffAlphaKey( SP_start+ SP_ATK_4+105, ct, 255);
setEffAlphaKey( SP_start+ SP_ATK_4+115, ct, 0);

playSe( SP_start+ SP_ATK_4+4, SE_11);
shuchusen = entryEffectLife( SP_start+ SP_ATK_4, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( SP_start+ SP_ATK_4+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage( SP_start+SP_ATK_4+10);

entryFade( SP_start+ SP_ATK_4+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase( SP_start+SP_ATK_4+110);

else


-----------------------------------------
--敵側の攻撃
-----------------------------------------


entryFadeBg( SP_start+ 69, 0, 260, 0, 10, 10, 10, 150);       -- ベース暗め　背景

------------------------------------------------------
-- 気力解放！(100F)
------------------------------------------------------
setVisibleUI( SP_start+69, 0);
changeAnime( SP_start+ 70, 0, 30);                       -- 溜め!
--changeAnime( SP_start+ 70, 0, 50);                       -- 溜め!
setShakeChara( SP_start+ 70 ,0 ,168 ,12);

tornado = entryEffectLife( SP_start+ 70, SP_01, 150, 0x40+0x100,  0, 300,  -80,  40);   -- 竜巻
setEffRotateKey( SP_start+ 70, tornado, 120);
setEffScaleKey( SP_start+ 70, tornado, 1.0, 1.0);

entryEffect( SP_start+  70,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect( SP_start+  70,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)

playSe( SP_start+ 70, SE_04);
--playSe( SP_start+ 80, SE_04);

--entryFade( SP_start+ 165, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--[[
aura = entryEffectLife(  SP_start+70,   311, 100, 0x40,  0,  1,  0,  0); -- オーラ
--entryEffectLife( 90, SP_02, 109, 0x40,  0,  0,  0,  0); 
setEffScaleKey( SP_start+70, aura, 1.5, 1.5);
setShakeChara( SP_start+70, 0, 49, 5);
setEffAlphaKey( SP_start+70, aura, 150);
--]]

--[[
speff = entryEffect( SP_start+  80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect( SP_start+  80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
--]]

-- 書き文字エントリー
ct = entryEffectLife( SP_start+ 90, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake( SP_start+90, ct, 40, 8);
setEffScaleKey( SP_start+90, ct, 1.4, 1.4);
--setMoveKey(   SP_start+168,   0,    0, 24,   0);
--setMoveKey(   SP_start+168,   0,    65, -24,   0);
setMoveKey(   SP_start+168,   0,    0, -54,   0);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( SP_start+ 169,   0, 1.5, 1.5);
setScaleKey( SP_start+ 170,   0, 0.7, 0.7);

cr = entryEffect( SP_start+  170,   1507,   0,  -1,  0,  0,  0);   -- eff_008
setEffReplaceTexture( cr, 1, 1);
setEffReplaceTexture( cr, 2, 0);                         -- カード差し替え
setEffReplaceTexture( cr, 5, 4);                                  -- 技名テクスチャ差し替え
playSe( SP_start+ 170, SE_05);

entryFade( SP_start+ 254, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setDisp( SP_start+ 257 , 0 , 0 );

setMoveKey( SP_start+   258,   0,  0, -24,   0); --位置を固定
setScaleKey( SP_start+ 258,   0, 0.7, 0.7);
playSe( SP_start+ 170, SE_06);
removeAllEffect( SP_start+   258 );

------------------------------------------------------
-- 突撃(110F)
------------------------------------------------------

changeAnime( SP_start+ 260, 0, 31);

--味方
setDisp( SP_start+ 260 , 0 , 1 );

tornado2 = entryEffectLife(  SP_start+ 260,   SP_02, 48, 0x40+0x0100,  0,  1,  -40,  200); -- 竜巻
setEffScaleKey( SP_start+ 260, tornado2, 0.8, 0.8);
setEffAlphaKey( SP_start+260, tornado2, 0);
setEffAlphaKey( SP_start+262, tornado2, 0);
setEffAlphaKey( SP_start+263, tornado2, 255);

--P移動
setMoveKey(  SP_start+ 260-1,    0,      0,  0,   0);
setMoveKey(  SP_start+ 260,    0,   -600,  0,   0);
setMoveKey(  SP_start+ 260+1,    0,   -600,  0,   0);
setMoveKey(  SP_start+ 260+5,    0,   50,  0,   0);
setMoveKey(  SP_start+ 260+15,    0,   0,  0,   0);


shuchusen9 = entryEffectLife( SP_start+ 260, 906, 49, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffAlphaKey( SP_start+260, shuchusen9, 255);
entryEffectLife( SP_start+ 260, 920, 49, 0x80,  -1,  0,  0,  0); -- 流線

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 245; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, -1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setScaleKey( SP_dodge,   0, 0.7, 0.7);
setMoveKey( SP_dodge+5,  0, -150,  0,   0);
setMoveKey( SP_dodge+9,  0, -1600,  0,   0);
setDisp( SP_dodge+9 , 0 , 0 );

endPhase(SP_dodge+10);
do return end
else end

setMoveKey(  SP_start+ 260+35,    0,   -150,  0,   0);

playSe( SP_start+ 260+40, SE_06);


setMoveKey(  SP_start+ 260+45,  0, 700,  0,   0);
setMoveKey(  SP_start+ 260+48,  0, 700,  0,   0);
setMoveKey(  SP_start+ 260+49,  0, -1700,  0,   0);


--entryFade( spep_6+45, 3, 5, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


entryFade( SP_start+ 260+45, 3, 14, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
changeAnime( SP_start+ SP_ATK_3, 0, 31);                        -- 必殺技ポーズ
tornado3 = entryEffectLife( SP_start+ SP_ATK_3, SP_02, 110, 0x40,  0, 0,  -50,  -20);   -- 横アングル殴りの際身に纏う竜巻

--setEffAlphaKey( SP_start+260, tornado3, 180);
setEffScaleKey( SP_start+ SP_ATK_3, tornado3, 0.8, 0.8);
setRotateKey( SP_start+ SP_ATK_3,  1,  -10 );
setRotateKey( SP_start+ SP_ATK_3,  0,  -10 );
setEffRotateKey( SP_start+SP_ATK_3, tornado3, -10);

setDisp( SP_start+ SP_ATK_3, 1, 1);
changeAnime( SP_start+ SP_ATK_3, 1, 104);                        -- ガード


setMoveKey( SP_start+  SP_ATK_3+10,    1,   900,  70,   0);
setScaleKey( SP_start+ SP_ATK_3+10,   1,   0.5,  0.5);
--playSe( SP_start+ SP_ATK_3+7, SE_01);


setScaleKey( SP_start+ SP_ATK_3+25, 1,  1.8, 1.8);
setScaleKey( SP_start+ SP_ATK_3+30, 1,  1.6, 1.6);
--setScaleKey( SP_start+ 258,   0, 0.9, 0.9);

-- ** エフェクト等 ** --
setShakeChara( SP_start+ SP_ATK_3+20+5, 1, 99, 20);
setShake( SP_start+ SP_ATK_3+20+5,99, 15);


-- 書き文字エントリー
ct = entryEffectLife( SP_start+ SP_ATK_3, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake( SP_start+SP_ATK_3, ct, 99, 20);
setEffScaleKey( SP_start+ SP_ATK_3, ct, 2.4, 2.4);
setEffRotateKey( SP_start+SP_ATK_3, ct, -70);
setEffAlphaKey( SP_start+SP_ATK_3, ct, 255);
setEffAlphaKey( SP_start+SP_ATK_3+20+5, ct, 255);
setEffAlphaKey( SP_start+SP_ATK_3+25+5, ct, 0);


setDisp( SP_start+ SP_ATK_3, 0, 1);
--setScaleKey( SP_start+   SP_ATK_3-1,   0, 0.7, 0.7);

setMoveKey( SP_start+  SP_ATK_3+31, 1,  120,    70,  0);
setMoveKey( SP_start+  SP_ATK_3+32, 1,  150,    70,  0);
setMoveKey( SP_start+  SP_ATK_3+35, 1,  150,    70,  0);

changeAnime( SP_start+ SP_ATK_3+34, 1, 108);

setMoveKey( SP_start+  SP_ATK_3+78, 1,  150,    70,  0);
setMoveKey( SP_start+  SP_ATK_3+89, 1,  800,    100,  0);
setMoveKey( SP_start+  SP_ATK_3+91, 1,  1400,    150,  0);
setScaleKey( SP_start+ SP_ATK_3+78, 1,  1.6, 1.6);
setScaleKey( SP_start+ SP_ATK_3+89, 1,  0.4, 0.4);
setScaleKey( SP_start+ SP_ATK_3+91, 1,  0.2, 0.2);

-- ヒットエフェクト

hit_eff_1 = entryEffect( SP_start+ SP_ATK_3+34,  4,  0x40,  -1,  0,  -200, 650);--HIT
hit_eff_2 = entryEffect( SP_start+ SP_ATK_3+34,  906,  0x40,  -1,  0,  -200, 650);
hit_eff_3 = entryEffect( SP_start+ SP_ATK_3+34,  908,  0x40,  -1,  0,  -200, 650);

playSe( SP_start+ SP_ATK_3+34, SE_09);

setEffScaleKey( SP_start+ SP_ATK_3+34, hit_eff_1, 1.5, 1.5);
setEffScaleKey( SP_start+ SP_ATK_3+34, hit_eff_2, 1.5, 1.5);
setEffScaleKey( SP_start+ SP_ATK_3+34, hit_eff_3, 1.5, 1.5);


setMoveKey( SP_start+  SP_ATK_3,  0, -1700,  0,   0);
--setMoveKey( SP_start+  SP_ATK_3+1,  0, -1000,  0,   0);
setMoveKey( SP_start+  SP_ATK_3+24,  0, -700,  0,   0);
setMoveKey( SP_start+  SP_ATK_3+35,  0, -190,  0,   0);
--changeAnime( SP_start+ SP_ATK_3+36, 0, 31);

setShakeChara( SP_start+SP_ATK_3+37 ,0 ,38 ,24);
setShakeChara( SP_start+SP_ATK_3+37 ,1 ,38 ,60);

ryusenn = entryEffectLife( SP_start+ SP_ATK_3-1, 913, 110, 0x80,  -1,  0,  50,  100); -- 流線
--setEffRotateKey( SP_start+SP_ATK_3, ryusenn, -20);
setEffScaleKey( SP_start+ SP_ATK_3-1, ryusenn, 1.2, 1.2);
entryFadeBg( SP_start+ SP_ATK_3-1, 0, 110, 0, 10, 10, 10, 150);       -- ベース暗め　背景


entryFade( SP_start+ SP_ATK_3+105, 4,  12, 5, 255, 255, 255, 255);     -- white fade
setMoveKey( SP_start+  SP_ATK_3+114, 1,  1400,    150,  0);

setRotateKey( SP_start+ SP_ATK_3+110,  1,  10 );

--setMoveKey( SP_start+  SP_ATK_3+105, 1,  1700,    100,  -120);
setDisp( SP_start+SP_ATK_3+110, 1, 0);
removeAllEffect( SP_start+SP_ATK_3+110);
setDisp( SP_start+ SP_ATK_3+110, 0, 0);

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

setMoveKey( SP_start+  SP_ATK_4,    1,  100,  0,   0);
setScaleKey( SP_start+ SP_ATK_4,    1,  1.0, 1.0);
setMoveKey( SP_start+  SP_ATK_4+1,    1,    0,   0,   128);
setScaleKey( SP_start+ SP_ATK_4+1,    1,  0.1, 0.1);
setScaleKey( SP_start+ SP_ATK_4+2,   0, 0.7, 0.7);--追加

changeAnime( SP_start+ SP_ATK_4+1, 1, 107);-- 手前ダメージ
entryEffect( SP_start+ SP_ATK_4+1, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( SP_start+ SP_ATK_4+1, SE_10);

setDisp( SP_start+ SP_ATK_4+8, 1, 1);
setMoveKey( SP_start+  SP_ATK_4+8,    1,    0,   0,   128);
setMoveKey( SP_start+  SP_ATK_4+15,   1,  -60,  -200,  -100);
setMoveKey( SP_start+  SP_ATK_4+16,   1,  -60,  -200,  -100);

setRotateKey( SP_start+ SP_ATK_4,  1,  30 );
setRotateKey( SP_start+ SP_ATK_4+2,  1,  80 );
setRotateKey( SP_start+ SP_ATK_4+4,  1, 120 );
setRotateKey( SP_start+ SP_ATK_4+6,  1, 160 );
setRotateKey( SP_start+ SP_ATK_4+8,  1, 200 );
setRotateKey( SP_start+ SP_ATK_4+10,  1, 260 );
setRotateKey( SP_start+ SP_ATK_4+12,  1, 320 );
setRotateKey( SP_start+ SP_ATK_4+14,  1,   0 );
--setMoveKey( SP_start+  SP_ATK_4+115,   1,  -1000,  -200,  -100);

setShakeChara( SP_start+ SP_ATK_4+15, 1, 5,  10);
setShakeChara( SP_start+ SP_ATK_4+20, 1, 10, 20);
setShake( SP_start+SP_ATK_4+14,6,15);
setShake( SP_start+SP_ATK_4+20,15,10);
-- 書き文字エントリー
ct = entryEffectLife( SP_start+ SP_ATK_4+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( SP_start+ SP_ATK_4+15, ct, 30, 10);
setEffRotateKey( SP_start+ SP_ATK_4+15, ct, -40);
setEffScaleKey( SP_start+ SP_ATK_4+15, ct, 4.0, 4.0);
setEffScaleKey( SP_start+ SP_ATK_4+16, ct, 2.0, 2.0);
setEffScaleKey( SP_start+ SP_ATK_4+17, ct, 2.6, 2.6);
setEffScaleKey( SP_start+ SP_ATK_4+18, ct, 4.0, 4.0);
setEffScaleKey( SP_start+ SP_ATK_4+19, ct, 2.6, 2.6);
setEffScaleKey( SP_start+ SP_ATK_4+20, ct, 3.8, 3.8);
setEffScaleKey( SP_start+ SP_ATK_4+110, ct, 3.8, 3.8);
setEffAlphaKey( SP_start+ SP_ATK_4+15, ct, 255);
setEffAlphaKey( SP_start+ SP_ATK_4+105, ct, 255);
setEffAlphaKey( SP_start+ SP_ATK_4+115, ct, 0);

playSe( SP_start+ SP_ATK_4+4, SE_11);
shuchusen = entryEffectLife( SP_start+ SP_ATK_4, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( SP_start+ SP_ATK_4+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage( SP_start+SP_ATK_4+10);

entryFade( SP_start+ SP_ATK_4+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase( SP_start+SP_ATK_4+120);

end

print ("[lua]sp0001 end");
