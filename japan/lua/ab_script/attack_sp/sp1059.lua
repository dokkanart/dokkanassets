print ("[lua]sp1001");

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--SP_01 = 100006
--SP_02 = 150041;
SP_01 = 105013;
SP_02 = 105014;
SP_03 = 105015;
SP_04 = 105016;
SP_05 = 2;


SE_01 = 1035; --気を貯める
SE_02 = 1036; --気が広がる
SE_03 = 1036; --かめはめ
SE_04 = 1018; --カットイン
SE_05 = 1035; --カットイン攻撃
SE_06 = 43; --発射
SE_07 = 1022; --のびる発射 1022
SE_08 = 1009; --huru
SE_09 = 1023; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音
SE_12 = 1004;


SP_ATK_3 = 340;
SP_ATK_4 = SP_ATK_3+46+44;

multi_frm = 2;

changeAnime( 0, 0, 0);                       -- 立ち
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0, -54,   0);
setMoveKey(   1,   0,    0, -54,   0);
setMoveKey(   2,   0,    0, -54,   0);
setMoveKey(   3,   0,    0, -54,   0);
setMoveKey(   4,   0,    0, -54,   0);
setMoveKey(   5,   0,    0, -54,   0);
setMoveKey(   6,   0,    0, -54,   0);
setScaleKey(   0,   0, 1.2, 1.2);
setScaleKey(   1,   0, 1.2, 1.2);
setScaleKey(   2,   0, 1.2, 1.2);
setScaleKey(   3,   0, 1.2, 1.2);
setScaleKey(   4,   0, 1.2, 1.2);
setScaleKey(   5,   0, 1.2, 1.2);
setScaleKey(   6,   0, 1.2, 1.2);
setMoveKey(  0,    1,  700,  0,   0);
setMoveKey(  1,    1,  700,  0,   0);
setMoveKey(  2,    1,  700,  0,   0);
setMoveKey(  3,    1,  700,  0,   0);
setMoveKey(  4,    1,  700,  0,   0);
setMoveKey(  5,    1,  700,  0,   0);
setMoveKey(  6,    1,  700,  0,   0);

SP_start = -69;

------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 気力解放！(100F)
------------------------------------------------------

setVisibleUI( SP_start+69, 0);
changeAnime( SP_start+ 70, 0, 30);                       -- 溜め!

entryEffect( SP_start+  70,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect( SP_start+  70,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
entryFadeBg( SP_start+  70, 30, 109, 10, 10, 10, 10, 155);       -- ベース暗め　背景

speff = entryEffect( SP_start+  80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect( SP_start+  80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( SP_start+ 73, 1035);

--[[
playSe( SP_start+ 90, 17);
playSe( SP_start+ 110, 17);
playSe( SP_start+ 130, 17);
playSe( SP_start+ 150, 17);
]]
--v4.11調整
SE001 = playSe( SP_start+ 90, 17);
stopSe(SP_start+ 120,SE001,5);
SE002 = playSe( SP_start+ 110, 17);
stopSe(SP_start+ 140,SE002,5);
SE003 = playSe( SP_start+ 130, 17);
stopSe(SP_start+ 160,SE003,5);
SE004 = playSe( SP_start+ 150, 17);
stopSe(SP_start+ 170,SE004,10);


kamehame_beam = entryEffectLife( SP_start+ 69, SP_01, 101, 0x40,  0,  300,  -200,  150);   -- かめはめ波溜め
setEffScaleKey( SP_start+ 69, kamehame_beam, 1.4, 1.4);

-- ** エフェクト等 ** --
setShakeChara( SP_start+ 70, 0, 90, 10);

-- 書き文字エントリー
ct = entryEffectLife( SP_start+ 90, 10008, 39, 0x100, -1, 0, 190 -370, 300);    -- ゴゴゴ・・・
setEffShake( SP_start+90, ct, 40, 8);
setEffScaleKey( SP_start+90, ct, 1.4, 1.4);

entryFade( SP_start+ 170 -6, 2, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( SP_start+ 169,   0, 1.2, 1.2);
setScaleKey( SP_start+ 170,   0, 0.5, 0.5);

--[[cr = entryEffect( SP_start+  170,   1507,   0,  -1,  0,  0,  0);   -- eff_008
setEffReplaceTexture(  cr, 1, 1);
setEffReplaceTexture(  cr, 2, 0);                         -- カード差し替え
setEffReplaceTexture(  cr, 5, 4);                                  -- 技名テクスチャ差し替え
playSe( SP_start+ 170, SE_05);]]

if (_SPECIAL_SKILL_LEVEL_ == 0) then
print ("_SPECIAL_SKILL_LEVEL_ == 0");
playSe( SP_start+  170, SE_05);
speff = entryEffect( SP_start+  170, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
print ("_SPECIAL_SKILL_LEVEL_ == 1");
playSe( SP_start+  170, SE_05);
speff = entryEffect( SP_start+  170, 1120, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( SP_start+  170, SE_05);
speff = entryEffect( SP_start+  170, 1121, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

entryFade( SP_start+ 255 -2, 3, 5+2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --

------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------

changeAnime( SP_start+ 260, 0, 31);                                    -- かめはめ発射ポーズ

--P移動
setMoveKey( SP_start+  259,    0,      0,  0,   0);
setMoveKey( SP_start+  260,    0,   -600,  0,   0);
setMoveKey( SP_start+  261,    0,   -600,  0,   0);
setMoveKey( SP_start+  270,    0,   -100,  0,   0);
setMoveKey( SP_start+  299,  0,   -100,  0,   0);
setMoveKey( SP_start+  305,  0,   -250,  0,   0);
setMoveKey( SP_start+  333,  0, 1700,  0,   0);
setMoveKey( SP_start+  334,  0, -1700,  0,   0);

setShakeChara( SP_start+ 270, 0, 35, 30);

playSe( SP_start+ 260, 17);

kamehame_beam = entryEffectLife( SP_start+ 260, SP_01, 79, 0x40,  0,  300,  400,  130);   -- 伸びるかめはめ波
setEffScaleKey( SP_start+260,kamehame_beam,3.5,3.5);

playSe( SP_start+ 260, 203);

spname = entryEffect( SP_start+ 260, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture( spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 途中からカメハメハが伸びる

-- ** エフェクト等 ** --
entryFadeBg( SP_start+ 260, 0, 109, 0, 10, 10, 10, 180);       -- ベース暗め　背景

entryEffectLife( SP_start+ 260, 920, 80, 0x80,  -1,  0,  0,  0); -- 流線



shuchusen = entryEffectLife( SP_start+ 260, 906, 60, 0x00,  -1, 0,  0,  0);   -- 集中線

-- 書き文字エントリー
ct = entryEffectLife( SP_start+ 268, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake( SP_start+268, ct, 32, 5);
setEffAlphaKey( SP_start+268, ct, 255);
setEffAlphaKey( SP_start+290, ct, 255);
setEffAlphaKey( SP_start+300, ct, 0);
setEffScaleKey( SP_start+268, ct, 0.0, 0.0);
setEffScaleKey( SP_start+272, ct, 1.3, 1.3);
setEffScaleKey( SP_start+290, ct, 1.3, 1.3);
setEffScaleKey( SP_start+300, ct, 6.0, 6.0);

setEffAlphaKey( SP_start+	308,spname, 1);
SE00 = playSe( SP_start+ 300, SE_07);
--entryFade( SP_start+ 322, 7, 10, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setScaleKey( SP_start+ SP_ATK_3-1,   0, 0.5, 0.5);



------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
setScaleKey( SP_start+ SP_ATK_3,   0, 0.6, 0.6);


setDisp( SP_start+ SP_ATK_3, 1, 1);
changeAnime( SP_start+ SP_ATK_3, 1, 104);                        -- ガード

setMoveKey( SP_start+  SP_ATK_3, 1,  335,  0,   0);
setMoveKey( SP_start+  SP_ATK_3+30, 1,  220,    100,  0);

setScaleKey( SP_start+ SP_ATK_3, 1,  0.7, 0.7);
setScaleKey( SP_start+ SP_ATK_3+30, 1,  1.2, 1.2);

-- ** エフェクト等 ** --
--setShakeChara( SP_start+ SP_ATK_3+20+5, 1, 99, 20);
setShake( SP_start+ SP_ATK_3+20+5,99, 15);


entryFadeBg( SP_start+ SP_ATK_3, 4, 86, 4, 10, 10, 10, 150);          -- ベース暗め　背景


ryusenn = entryEffectLife( SP_start+ SP_ATK_3, 921, 86, 0x80,  -1,  0,  50,  100); -- 流線
--setEffRotateKey( SP_start+ SP_start+SP_ATK_3, ryusenn, -20);
setEffScaleKey( SP_start+ SP_ATK_3, ryusenn, 1.2, 1.2);

kamehame_beam3 = entryEffectLife( SP_start+ SP_ATK_3, SP_01, 32, 0x40+0x80, 0, 300, 300,  100);
setEffScaleKey( SP_start+SP_ATK_3, kamehame_beam3, 2.0, 2.0);
setEffScaleKey( SP_start+SP_ATK_3+30, kamehame_beam3, 2.5, 2.5);
--playSe( SP_start+ SP_ATK_3, SE_08);
setEffRotateKey( SP_start+SP_ATK_3, kamehame_beam3, -10);


SE01 = playSe( SP_start+ SP_ATK_3+45, SE_09);

hit = entryEffect( SP_start+ SP_ATK_3+31, SP_04,   0x100, -1,  0,  180,  130);   -- 専用のヒットエフェクト

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

-- 敵吹っ飛ぶモーション

changeAnime( SP_start+ SP_ATK_3+32, 1, 108);

setMoveKey( SP_start+  SP_ATK_3+58, 1,  220,    100,  0);
setMoveKey( SP_start+  SP_ATK_3+72, 1,  400,    100,  0);
setScaleKey( SP_start+  SP_ATK_3+58, 1,  1.6, 1.6);
setScaleKey( SP_start+  SP_ATK_3+60, 1,  1.5, 1.5);
setScaleKey( SP_start+  SP_ATK_3+72, 1,  0.2, 0.2);

setScaleKey( SP_start+ SP_ATK_3+31,   0, 0.4, 0.4);

setMoveKey( SP_start+  SP_ATK_3,  0, -1700,  20,   0);
setMoveKey( SP_start+  SP_ATK_3+24,  0, -700,  20,   0);
setMoveKey( SP_start+  SP_ATK_3+31,  0, -150,  20,   0);

setShakeChara( SP_start+SP_ATK_3+40,0,30,14);
setShakeChara( SP_start+SP_ATK_3, 1, 79, 20);

entryEffectLife( SP_start+ SP_ATK_3+40, 906, 58, 0x00,  -1, 0,  0,  0);   -- 集中線

entryFade( SP_start+ SP_ATK_3+77, 6,  9, 4, 255, 255, 255, 255);     -- white fade
setMoveKey( SP_start+  SP_ATK_3+84, 1,  400,    100,  0);
setScaleKey( SP_start+ SP_ATK_3+84,   0, 0.4, 0.4);

setScaleKey( SP_start+ SP_ATK_3+43+43,   0, 0.6, 0.6);
setDisp( SP_start+ SP_ATK_3+43+43, 0, 0);
setDisp( SP_start+ SP_ATK_3+43+43, 1, 0);

------------------------------------------------------
-- 回避
------------------------------------------------------
if (_IS_DODGE_ == 1) then

SP_dodge = 280; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);
stopSe( SP_dodge-12, SE00, 0 );
stopSe( SP_dodge-12, SE01, 0 );

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey( SP_dodge+5,  0, -150,  20,   0);
setMoveKey( SP_dodge+9,  0, -1100,  20,   0);

endPhase(SP_dodge+10);

do return end
else end

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
--setScaleKey( SP_start+ SP_ATK_4, 0, 0.7, 0.7);
spep_Finish=361;

--敵の動き--
setDisp( spep_Finish + 0, 1, 1 );
changeAnime( spep_Finish + 0, 1, 107 );

setMoveKey( spep_Finish + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_Finish + 2, 1, 32.5, -4.9 , 0 );
setMoveKey( spep_Finish + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_Finish + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_Finish + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_Finish + 10, 1, 7.1, -92.9 , 0 );
setMoveKey( spep_Finish + 12, 1, -1.9, -124.1 , 0 );

setScaleKey( spep_Finish + 0, 1, 0.22, 0.22 );
setScaleKey( spep_Finish + 2, 1, 0.35, 0.35 );
setScaleKey( spep_Finish + 4, 1, 0.51, 0.51 );
setScaleKey( spep_Finish + 6, 1, 0.7, 0.7 );
setScaleKey( spep_Finish + 8, 1, 0.93, 0.93 );
setScaleKey( spep_Finish + 10, 1, 1.2, 1.2 );
setScaleKey( spep_Finish + 12, 1, 1.5, 1.5 );
setScaleKey( spep_Finish + 14, 1, 1.6, 1.6 );
setScaleKey( spep_Finish + 16, 1, 1.5, 1.5 );
setScaleKey( spep_Finish + 18, 1, 1.6, 1.6 );
setScaleKey( spep_Finish + 20, 1, 1.5, 1.5 );
setScaleKey( spep_Finish + 22, 1, 1.6, 1.6 );
setScaleKey( spep_Finish + 24, 1, 1.5, 1.5 );
setScaleKey( spep_Finish + 26, 1, 1.6, 1.6 );
setScaleKey( spep_Finish + 120, 1, 1.6, 1.6 );

setRotateKey( spep_Finish + 0, 1, 0 );
setRotateKey( spep_Finish + 2, 1, 105 );
setRotateKey( spep_Finish + 4, 1, 240 );
setRotateKey( spep_Finish + 6, 1, 405 );
setRotateKey( spep_Finish + 8, 1, 600 );
setRotateKey( spep_Finish + 10, 1, 825 );
setRotateKey( spep_Finish + 12, 1, 1080 );

--爆発エフェクト
entryEffect( spep_Finish+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_Finish+8, SE_10);

setDamage( spep_Finish +16, 1, 0);  -- ダメージ振動等
setShake(spep_Finish+8,6,15);
setShake(spep_Finish+14,15,10);

--書き文字--
ctGa = entryEffectLife( spep_Finish + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );
setEffShake( spep_Finish + 14, ctGa, 30, 10);

setEffMoveKey( spep_Finish + 14, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_Finish + 16, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_Finish + 18, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_Finish + 20, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_Finish + 22, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_Finish + 24, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_Finish + 26, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_Finish + 28, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_Finish + 30, ctGa, 3.9, 316.1 , 0 );

setEffScaleKey( spep_Finish + 14, ctGa, 2, 2 );
setEffScaleKey( spep_Finish+16, ctGa, 2.0, 2.0);
setEffScaleKey( spep_Finish+17, ctGa, 2.6, 2.6);
setEffScaleKey( spep_Finish+18, ctGa, 4.0, 4.0);
setEffScaleKey( spep_Finish+19, ctGa, 2.6, 2.6);
setEffScaleKey( spep_Finish+20, ctGa, 3.8, 3.8);
setEffScaleKey( spep_Finish+112, ctGa, 3.8, 3.8);

setEffRotateKey( spep_Finish + 14, ctGa, -40 );
setEffRotateKey( spep_Finish + 16, ctGa, -31 );
setEffRotateKey( spep_Finish + 18, ctGa, -40 );
setEffRotateKey( spep_Finish + 20, ctGa, -31 );
setEffRotateKey( spep_Finish + 22, ctGa, -40 );
setEffRotateKey( spep_Finish + 24, ctGa, -31);
setEffRotateKey( spep_Finish + 26, ctGa, -40 );
setEffRotateKey( spep_Finish + 28, ctGa, -31);
setEffRotateKey( spep_Finish + 30, ctGa, -40 );

setEffAlphaKey( spep_Finish + 14, ctGa, 255 );

--集中線（白）
shuchusen = entryEffectLife( spep_Finish+2, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線

--集中線（黒）
shuchusenkuro = entryEffectLife( spep_Finish+14, 1657, 120, 0x80,  -1, 0,  0,  0);   -- 集中線

--ひび割れ
hibi = entryEffect( spep_Finish+2, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(spep_Finish+16);
--entryFade( spep_Finish+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_Finish+100);

else
-----------------------------------------
--敵側の攻撃
-----------------------------------------
setVisibleUI( SP_start+69, 0);
changeAnime( SP_start+ 70, 0, 30);                       -- 溜め!

entryEffect( SP_start+  70,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect( SP_start+  70,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
entryFadeBg( SP_start+  70, 30, 109, 10, 10, 10, 10, 155);       -- ベース暗め　背景

--[[
speff = entryEffect( SP_start+  80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect( SP_start+  80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
--]]

playSe( SP_start+ 73, 1035);

--[[
playSe( SP_start+ 90, 17);
playSe( SP_start+ 110, 17);
playSe( SP_start+ 130, 17);
playSe( SP_start+ 150, 17);
]]
--v4.11調整
SE001 = playSe( SP_start+ 90, 17);
stopSe(SP_start+ 120,SE001,5);
SE002 = playSe( SP_start+ 110, 17);
stopSe(SP_start+ 140,SE002,5);
SE003 = playSe( SP_start+ 130, 17);
stopSe(SP_start+ 160,SE003,5);
SE004 = playSe( SP_start+ 150, 17);
stopSe(SP_start+ 170,SE004,10);

kamehame_beam = entryEffectLife( SP_start+ 69, SP_01, 101, 0x40,  0,  300,  -200,  150);   -- かめはめ波溜め
setEffScaleKey( SP_start+ 69, kamehame_beam, 1.4, 1.4);

-- ** エフェクト等 ** --
setShakeChara( SP_start+ 70, 0, 90, 10);

-- 書き文字エントリー
ct = entryEffectLife( SP_start+ 90, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake( SP_start+90, ct, 40, 8);
setEffScaleKey( SP_start+90, ct, 1.4, 1.4);

entryFade( SP_start+ 170 -6, 2, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( SP_start+ 169,   0, 1.2, 1.2);
setScaleKey( SP_start+ 170,   0, 0.5, 0.5);

--[[cr = entryEffect( SP_start+  170,   1507,   0,  -1,  0,  0,  0);   -- eff_008
setEffReplaceTexture(  cr, 1, 1);
setEffReplaceTexture(  cr, 2, 0);                         -- カード差し替え
setEffReplaceTexture(  cr, 5, 4);                                  -- 技名テクスチャ差し替え
playSe( SP_start+ 170, SE_05);]]

if (_SPECIAL_SKILL_LEVEL_ == 0) then
print ("_SPECIAL_SKILL_LEVEL_ == 0");
playSe( SP_start+  170, SE_05);
speff = entryEffect( SP_start+  170, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
print ("_SPECIAL_SKILL_LEVEL_ == 1");
playSe( SP_start+  170, SE_05);
speff = entryEffect( SP_start+  170, 1120, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( SP_start+  170, SE_05);
speff = entryEffect( SP_start+  170, 1121, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

entryFade( SP_start+ 255 -2, 3, 5+2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --

------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------

changeAnime( SP_start+ 260, 0, 31);                                    -- かめはめ発射ポーズ

--P移動
setMoveKey( SP_start+  259,    0,      0,  0,   0);
setMoveKey( SP_start+  260,    0,   -600,  0,   0);
setMoveKey( SP_start+  261,    0,   -600,  0,   0);
setMoveKey( SP_start+  270,    0,   -100,  0,   0);
setMoveKey( SP_start+  299,  0,   -100,  0,   0);
setMoveKey( SP_start+  305,  0,   -250,  0,   0);
setMoveKey( SP_start+  333,  0, 1700,  0,   0);
setMoveKey( SP_start+  334,  0, -1700,  0,   0);

setShakeChara( SP_start+ 270, 0, 35, 30);

playSe( SP_start+ 260, 17);

kamehame_beam = entryEffectLife( SP_start+ 260, SP_01, 79, 0x40,  0,  300,  400,  130);   -- 伸びるかめはめ波
setEffScaleKey( SP_start+260,kamehame_beam,3.5,3.5);

playSe( SP_start+ 260, 203);

spname = entryEffect( SP_start+ 260, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture( spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 途中からカメハメハが伸びる

-- ** エフェクト等 ** --
entryFadeBg( SP_start+ 260, 0, 109, 0, 10, 10, 10, 180);       -- ベース暗め　背景

entryEffectLife( SP_start+ 260, 920, 80, 0x80,  -1,  0,  0,  0); -- 流線



shuchusen = entryEffectLife( SP_start+ 260, 906, 60, 0x00,  -1, 0,  0,  0);   -- 集中線

-- 書き文字エントリー
ct = entryEffectLife( SP_start+ 268, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake( SP_start+268, ct, 32, 5);
setEffAlphaKey( SP_start+268, ct, 255);
setEffAlphaKey( SP_start+290, ct, 255);
setEffAlphaKey( SP_start+300, ct, 0);
setEffScaleKey( SP_start+268, ct, 0.0, 0.0);
setEffScaleKey( SP_start+272, ct, 1.3, 1.3);
setEffScaleKey( SP_start+290, ct, 1.3, 1.3);
setEffScaleKey( SP_start+300, ct, 6.0, 6.0);

setEffAlphaKey( SP_start+	308,spname, 1);
SE00 = playSe( SP_start+ 300, SE_07);
--entryFade( SP_start+ 322, 7, 10, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setScaleKey( SP_start+ SP_ATK_3-1,   0, 0.5, 0.5);



------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
setScaleKey( SP_start+ SP_ATK_3,   0, 0.6, 0.6);


setDisp( SP_start+ SP_ATK_3, 1, 1);
changeAnime( SP_start+ SP_ATK_3, 1, 104);                        -- ガード

setMoveKey( SP_start+  SP_ATK_3, 1,  335,  0,   0);
setMoveKey( SP_start+  SP_ATK_3+30, 1,  220,    100,  0);

setScaleKey( SP_start+ SP_ATK_3, 1,  0.7, 0.7);
setScaleKey( SP_start+ SP_ATK_3+30, 1,  1.2, 1.2);

-- ** エフェクト等 ** --
--setShakeChara( SP_start+ SP_ATK_3+20+5, 1, 99, 20);
setShake( SP_start+ SP_ATK_3+20+5,99, 15);

entryFadeBg( SP_start+ SP_ATK_3, 4, 86, 4, 10, 10, 10, 150);          -- ベース暗め　背景


ryusenn = entryEffectLife( SP_start+ SP_ATK_3, 921, 86, 0x80,  -1,  0,  50,  100); -- 流線
--setEffRotateKey( SP_start+ SP_start+SP_ATK_3, ryusenn, -20);
setEffScaleKey( SP_start+ SP_ATK_3, ryusenn, 1.2, 1.2);

kamehame_beam3 = entryEffectLife( SP_start+ SP_ATK_3, SP_01, 32, 0x40+0x80, 0, 300, 300,  100);
setEffScaleKey( SP_start+SP_ATK_3, kamehame_beam3, 2.0, 2.0);
setEffScaleKey( SP_start+SP_ATK_3+30, kamehame_beam3, 2.5, 2.5);

--playSe( SP_start+ SP_ATK_3, SE_08);
setEffRotateKey( SP_start+SP_ATK_3, kamehame_beam3, -10);


SE01 = playSe( SP_start+ SP_ATK_3+45, SE_09);

hit = entryEffect( SP_start+ SP_ATK_3+31, SP_04,   0x100, -1,  0,  180,  130);   -- 専用のヒットエフェクト

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

-- 敵吹っ飛ぶモーション

changeAnime( SP_start+ SP_ATK_3+32, 1, 108);

setMoveKey( SP_start+  SP_ATK_3+58, 1,  220,    100,  0);
setMoveKey( SP_start+  SP_ATK_3+72, 1,  400,    100,  0);
setScaleKey( SP_start+  SP_ATK_3+58, 1,  1.6, 1.6);
setScaleKey( SP_start+  SP_ATK_3+60, 1,  1.5, 1.5);
setScaleKey( SP_start+  SP_ATK_3+72, 1,  0.2, 0.2);

setScaleKey( SP_start+ SP_ATK_3+31,   0, 0.4, 0.4);

setMoveKey( SP_start+  SP_ATK_3,  0, -1700,  20,   0);
setMoveKey( SP_start+  SP_ATK_3+24,  0, -700,  20,   0);
setMoveKey( SP_start+  SP_ATK_3+31,  0, -150,  20,   0);

setShakeChara( SP_start+SP_ATK_3+40,0,30,14);
setShakeChara( SP_start+SP_ATK_3, 1, 79, 20);

entryEffectLife( SP_start+ SP_ATK_3+40, 906, 58, 0x00,  -1, 0,  0,  0);   -- 集中線

entryFade( SP_start+ SP_ATK_3+77, 6,  9, 4, 255, 255, 255, 255);     -- white fade
setMoveKey( SP_start+  SP_ATK_3+84, 1,  400,    100,  0);
setScaleKey( SP_start+ SP_ATK_3+84,   0, 0.4, 0.4);

setScaleKey( SP_start+ SP_ATK_3+43+43,   0, 0.6, 0.6);
setDisp( SP_start+ SP_ATK_3+43+43, 0, 0);
setDisp( SP_start+ SP_ATK_3+43+43, 1, 0);


------------------------------------------------------
-- 回避
------------------------------------------------------
if (_IS_DODGE_ == 1) then

SP_dodge = 280; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);
stopSe( SP_dodge-12, SE00, 0 );
stopSe( SP_dodge-12, SE01, 0 );

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, -1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey( SP_dodge+5,  0, -150,  20,   0);
setMoveKey( SP_dodge+9,  0, -1100,  20,   0);

endPhase(SP_dodge+10);

do return end
else end


------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
--setScaleKey( SP_start+ SP_ATK_4, 0, 0.7, 0.7);
--[[
setScaleKey( 361-1, 0, 1.0, 1.0);

setMoveKey( 361,    1,  100,  0,   0);
setScaleKey( 361,    1,  1.0, 1.0);
setMoveKey( 361+1,    1,    0,   0,   128);
setScaleKey( 361+1,    1,  0.1, 0.1);
]]--
spep_Finish=361;

--敵の動き--
setDisp( spep_Finish + 0, 1, 1 );
changeAnime( spep_Finish + 0, 1, 107 );

setMoveKey( spep_Finish + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_Finish + 2, 1, 32.5, -4.9 , 0 );
setMoveKey( spep_Finish + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_Finish + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_Finish + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_Finish + 10, 1, 7.1, -92.9 , 0 );
setMoveKey( spep_Finish + 12, 1, -1.9, -124.1 , 0 );

setScaleKey( spep_Finish + 0, 1, 0.22, 0.22 );
setScaleKey( spep_Finish + 2, 1, 0.35, 0.35 );
setScaleKey( spep_Finish + 4, 1, 0.51, 0.51 );
setScaleKey( spep_Finish + 6, 1, 0.7, 0.7 );
setScaleKey( spep_Finish + 8, 1, 0.93, 0.93 );
setScaleKey( spep_Finish + 10, 1, 1.2, 1.2 );
setScaleKey( spep_Finish + 12, 1, 1.5, 1.5 );
setScaleKey( spep_Finish + 14, 1, 1.6, 1.6 );
setScaleKey( spep_Finish + 16, 1, 1.5, 1.5 );
setScaleKey( spep_Finish + 18, 1, 1.6, 1.6 );
setScaleKey( spep_Finish + 20, 1, 1.5, 1.5 );
setScaleKey( spep_Finish + 22, 1, 1.6, 1.6 );
setScaleKey( spep_Finish + 24, 1, 1.5, 1.5 );
setScaleKey( spep_Finish + 26, 1, 1.6, 1.6 );
setScaleKey( spep_Finish + 120, 1, 1.6, 1.6 );

setRotateKey( spep_Finish + 0, 1, 0 );
setRotateKey( spep_Finish + 2, 1, 105 );
setRotateKey( spep_Finish + 4, 1, 240 );
setRotateKey( spep_Finish + 6, 1, 405 );
setRotateKey( spep_Finish + 8, 1, 600 );
setRotateKey( spep_Finish + 10, 1, 825 );
setRotateKey( spep_Finish + 12, 1, 1080 );

--爆発エフェクト
entryEffect( spep_Finish+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_Finish+8, SE_10);

setDamage( spep_Finish +16, 1, 0);  -- ダメージ振動等
setShake(spep_Finish+8,6,15);
setShake(spep_Finish+14,15,10);

--書き文字--
ctGa = entryEffectLife( spep_Finish + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );
setEffShake( spep_Finish + 14, ctGa, 30, 10);

setEffMoveKey( spep_Finish + 14, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_Finish + 16, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_Finish + 18, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_Finish + 20, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_Finish + 22, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_Finish + 24, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_Finish + 26, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_Finish + 28, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_Finish + 30, ctGa, 3.9, 316.1 , 0 );

setEffScaleKey( spep_Finish + 14, ctGa, 2, 2 );
setEffScaleKey( spep_Finish+16, ctGa, 2.0, 2.0);
setEffScaleKey( spep_Finish+17, ctGa, 2.6, 2.6);
setEffScaleKey( spep_Finish+18, ctGa, 4.0, 4.0);
setEffScaleKey( spep_Finish+19, ctGa, 2.6, 2.6);
setEffScaleKey( spep_Finish+20, ctGa, 3.8, 3.8);
setEffScaleKey( spep_Finish+112, ctGa, 3.8, 3.8);

setEffRotateKey( spep_Finish + 14, ctGa, -40 );
setEffRotateKey( spep_Finish + 16, ctGa, -31 );
setEffRotateKey( spep_Finish + 18, ctGa, -40 );
setEffRotateKey( spep_Finish + 20, ctGa, -31 );
setEffRotateKey( spep_Finish + 22, ctGa, -40 );
setEffRotateKey( spep_Finish + 24, ctGa, -31);
setEffRotateKey( spep_Finish + 26, ctGa, -40 );
setEffRotateKey( spep_Finish + 28, ctGa, -31);
setEffRotateKey( spep_Finish + 30, ctGa, -40 );

setEffAlphaKey( spep_Finish + 14, ctGa, 255 );

--集中線（白）
shuchusen = entryEffectLife( spep_Finish+2, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線

--集中線（黒）
shuchusenkuro = entryEffectLife( spep_Finish+14, 1657, 120, 0x80,  -1, 0,  0,  0);   -- 集中線

--ひび割れ
hibi = entryEffect( spep_Finish+2, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(spep_Finish+16);
--entryFade( spep_Finish+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_Finish+100);

end

print ("[lua]sp0001 end");
