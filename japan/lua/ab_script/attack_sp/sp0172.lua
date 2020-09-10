

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

tyo = -40;
tyo2 = -60;

SP_01 = 100259;
SP_02 = 100260;
SP_03 = 100261;
SP_04 = 1562;

multi_frm = 2;

changeAnime( 0, 0, 0);                       -- 立ち
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0, -54,   0);
setMoveKey(   1,   0,    0, -54,   0);
setMoveKey(   2,   0,    0, -54,   0);
setMoveKey(   3,   0,    0, -54,   0);
setMoveKey(   4,   0,    0, -54,   0);
setMoveKey(   5,   0,    0,-54,   0);

setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   1,   0, 1.5, 1.5);
setScaleKey(   2,   0, 1.5, 1.5);
setScaleKey(   3,   0, 1.5, 1.5);
setScaleKey(   4,   0, 1.5, 1.5);
setScaleKey(   5,   0, 1.5, 1.5);

setMoveKey(   0,   1,    0, -54,   0);
setMoveKey(   1,   1,    0, -54,   0);
setMoveKey(   2,   1,    0, -54,   0);
setMoveKey(   3,   1,    0, -54,   0);
setMoveKey(   4,   1,    0, -54,   0);
setMoveKey(   5,   1,    0, -54,   0);

setScaleKey(   0,   1, 1.5, 1.5);
setScaleKey(   1,   1, 1.5, 1.5);
setScaleKey(   2,   1, 1.5, 1.5);
setScaleKey(   3,   1, 1.5, 1.5);
setScaleKey(   4,   1, 1.5, 1.5);
setScaleKey(   5,   1, 1.5, 1.5);

SP_start = -60;

------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then
setVisibleUI(0, 0);

entryFadeBg( 0, 0, 170, 0, 10, 10, 10, 180);       -- ベース暗め　背景

--freeza = entryEffect( 0, SP_01, 0x40,      0,  0,  0,  0);   -- 手のカメハメ波部
freeza = entryEffectLife(  0,   SP_01, 170, 0x80,  -1,  0,  0,  0); -- フリーザの絵
setEffShake(0, freeza, 110, 7);
setEffMoveKey(0,  freeza,  0,  0,  0);
setEffMoveKey(170,  freeza,  0,  0,  0);
setEffScaleKey( 0, freeza, 3.0, 3.0);
setEffScaleKey( 15, freeza, 1.0, 1.0);

playSe( 0, SE_01);

-- ** エフェクト等 ** --
aura = entryEffectLife(  0,   341, 170, 0x80,  -1,  0,  0,  0); -- オーラ
setEffScaleKey( 0, aura, 7.5, 7.5);
setEffScaleKey( 15, aura, 2.5, 2.5);
setEffMoveKey( 0,    aura,   0,  -670);
setEffMoveKey( 15,    aura,   0,  -270);

--setShakeChara( 0, 0, 49, 5);

setQuake( 0, 110, 5);
------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------

setVisibleUI( SP_start+69, 0);
--changeAnime( SP_start+ 70, 0, 30);                       -- 溜め!
playSe( SP_start+ 73, SE_03);

--entryEffect( SP_start+  70,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
--entryEffect( SP_start+  70,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
speff = entryEffect( SP_start+  80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect( SP_start+  80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( SP_start+ 80, SE_04);

-- 書き文字エントリー
ct = entryEffectLife( SP_start+ 90, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake( SP_start+90, ct, 40, 8);
setEffScaleKey( SP_start+90, ct, 1.4, 1.4);
setEffScaleKey( SP_start+90, ct, 0.9, 0.9);
setEffScaleKey( SP_start+90, ct, 2.4, 2.4);

-- 極限Z覚醒 --
------------------------------------------------------
-- カードカットイン　(290〜380F)
------------------------------------------------------
spep_2=SP_start+170;

setScaleKey( spep_2-1,   0, 1.5, 1.5);
setScaleKey( spep_2,   0, 1.0, 1.0);

playSe( spep_2, SE_05);
speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

entryFade( spep_2+85, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

removeAllEffect(spep_2-1);
--カード登場時前に全てのエフェクトを止める

if (_SPECIAL_SKILL_LEVEL_ == 0) then

print ("_SPECIAL_SKILL_LEVEL_ == 0");
playSe( spep_2, SE_05);
speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
print ("_SPECIAL_SKILL_LEVEL_ == 1");
playSe( spep_2, SE_05);
speff = entryEffect(  spep_2,   1120,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( spep_2, SE_05);
speff = entryEffect(  spep_2,   1121,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

end

-- ** エフェクト等 ** --
--entryFlash( (170+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);

entryFade( spep_2+85, 7,  10, 5, 255, 255, 255, 255);     -- white fade
--removeAllEffect( spep5+90 );

------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
changeAnime( SP_start+ 260, 0, 30);                                    -- かめはめ発射ポーズ
setDisp( SP_start+ 260, 0, 1);

setMoveKey( SP_start+ 259,    0,      -200,  0,   0);
setShakeChara( SP_start+259, 0, 159, 25);

-- ** エフェクト等 ** --
entryFadeBg(  SP_start+ 260, 0, 159, 0, 10, 10, 10, 180);       -- ベース暗め　背景
entryFadeBg( SP_start+ 260, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
--entryFadeBg( SP_start2+ SP_start+ 300, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景
entryFadeBg(  SP_start+ 300, 0, 2, 8, 0, 0, 0, 250);     -- 青い　背景

sen2 = entryEffectLife( SP_start+ 260, 921, 159, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(  SP_start+260, sen2, 150);
setEffScaleKey(  SP_start+ 260, sen2, 1.6, 1.6);

spep_3=20;

changeAnime( SP_start+ spep_3+260, 0, 31);                                    -- かめはめ発射ポーズ
setRotateKey( SP_start+ spep_3+260,  0,  -20 );

--kamehame_beam = entryEffectLife( SP_start+ spep_3+260, SP_02, 109, 0x40,  0,  300,  200,  100);   -- 伸びるかめはめ波
kamehame_beam = entryEffectLife( SP_start+ spep_3+260, SP_02, 109, 0,  -1,  0,  0,  0);   -- 伸びるかめはめ波 220
--setEffMoveKey(    SP_start+  spep_3+260,   kamehame_beam,    -100, 0,   0);

playSe( SP_start+ spep_3+260, SE_07);
setEffRotateKey( SP_start+spep_3+260, kamehame_beam, -15);
setEffScaleKey(  SP_start+ spep_3+260, kamehame_beam, 1.0, 1.0);
setEffScaleKey(  SP_start+ spep_3+300, kamehame_beam, 1.0, 1.0);
setEffScaleKey(  SP_start+ spep_3+330, kamehame_beam, 1.5, 1.5);


SP_start2 = -16;

setMoveKey( SP_start2+ SP_start+  spep_3+291,    0,   -200,  -20,   0);--236 フレーム毎に距離を測る必要があるので、きつい
setMoveKey( SP_start2+ SP_start+  spep_3+292,    0,   -300,  -60,   0);--238

setMoveKey( SP_start2+ SP_start+  spep_3+294,    0,   -350,  -100,   0);--238

setMoveKey( SP_start2+ SP_start+  spep_3+296,    0,   -460,  -150,   0);--242

setMoveKey( SP_start2+ SP_start+  spep_3+300,    0,   -620,  -200,   0);--246

setDisp( SP_start2+ SP_start+ spep_3+302, 0, 0);
--setEffMoveKey(   SP_start2+ SP_start+  spep_3+300,   kamehame_beam,    -70, 50,   0);

setMoveKey( SP_start2+ SP_start+  spep_3+330,    0,   -300,  -50,   0);

entryFade( SP_start2+ SP_start+ spep_3+365, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


-- 書き文字エントリー
ct = entryEffectLife( SP_start+ spep_3+268, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(  SP_start+spep_3+268, ct, 32, 5);
setEffAlphaKey(  SP_start+spep_3+268, ct, 255);
setEffAlphaKey( SP_start2+ SP_start+spep_3+290, ct, 255);
setEffAlphaKey( SP_start2+ SP_start+spep_3+300, ct, 0);
setEffScaleKey(  SP_start+spep_3+268, ct, 0.0, 0.0);
setEffScaleKey(  SP_start+spep_3+272, ct, 1.3, 1.3);
setEffScaleKey( SP_start2+ SP_start+spep_3+292, ct, 1.3, 1.3);
setEffScaleKey( SP_start2+ SP_start+spep_3+300, ct, 6.0, 6.0);
playSe( SP_start2+ SP_start+ spep_3+300, SE_07);
entryFade( SP_start2+ SP_start+ spep_3+355, 10,  5, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

removeAllEffect( SP_start2+ SP_start+spep_3+369);

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
setDisp( SP_start2+ SP_start+ spep_3+ 370, 0, 0);
setMoveKey( SP_start2+ SP_start+ spep_3+ 369, 0, -300,  -50,   0);
setMoveKey( SP_start2+ SP_start+ spep_3+ 370, 0, 0,-800,0);

setDisp( SP_start2+ SP_start+ spep_3+ 370, 1, 1);

changeAnime( SP_start2+ SP_start+ spep_3+ 370, 1, 118);                        -- 気ダメ後ろ
setRotateKey( SP_start2+ SP_start+ spep_3+ 370, 1, -20); 
setMoveKey( SP_start2+ SP_start+ spep_3+  370,  1,  500,  350,   0);
setMoveKey( SP_start2+ SP_start+ spep_3+  370+15,  1,  200,  180,   0);

setDisp( SP_start2+ SP_start+ spep_3+ 370+40, 1, 0);
setScaleKey( SP_start2+ SP_start+ spep_3+ 370, 1,  2.5, 2.5);

playSe( SP_start2+ SP_start+ spep_3+ 390, SE_06);

ryusen = entryEffectLife( SP_start2+ SP_start+ spep_3+ 370, 921, 44, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( SP_start2+ SP_start+ spep_3+370, ryusen, 100);
setEffScaleKey( SP_start2+ SP_start+ spep_3+ 370, ryusen, 1.6, 1.6);

kamehame_beam2 = entryEffect( SP_start2+ SP_start+ spep_3+ 370, SP_03,   0x80, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey( SP_start2+ SP_start+ spep_3+370, kamehame_beam2, 1, 1);
setEffScaleKey( SP_start2+ SP_start+ spep_3+452, kamehame_beam2, 1, 1);
setEffScaleKey( SP_start2+ SP_start+ spep_3+454, kamehame_beam2, 2.5, 2.5);
setDamage( SP_start2+ SP_start+ spep_3+ 452, 1, 0);  -- ダメージ振動等

--speff = entryEffect( SP_start2+ SP_start+ spep_3+ 370, 1506,   0,  -1,  0,  0,  0);    -- カットイン
--setEffReplaceTexture( SP_start2+ SP_start+ spep_3+ speff, 6, 3);                       -- カットイン差し替え
--playSe( SP_start2+ SP_start+ spep_3+ 370, SE_08);

playSe( SP_start2+ SP_start+ spep_3+ 415, SE_09);

-- ** エフェクト等 ** --
setShakeChara( SP_start2+ SP_start+ spep_3+ 370, 1, 99, 20);

entryFadeBg( SP_start2+ SP_start+ spep_3+ 370, 0, 89, 0,0, 0, 0, 255);          -- ベース暗め　背景
setScaleKey( SP_start2+ SP_start+ spep_3+ 370+45, 1,  2.5, 2.5);


ct = entryEffectLife( SP_start2+ SP_start+ spep_3+ 370, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(SP_start2+ SP_start+ spep_3+ 370, ct, 99, 20);
setEffScaleKey( SP_start2+ SP_start+ spep_3+ 370, ct, 2.4, 2.4);
setEffRotateKey(SP_start2+ SP_start+ spep_3+ 370, ct, 0);
setEffAlphaKey(SP_start2+ SP_start+ spep_3+ 370, ct, 255);
setEffAlphaKey(SP_start2+ SP_start+ spep_3+ 370+30, ct, 255);
setEffAlphaKey(SP_start2+ SP_start+ spep_3+ 370+40, ct, 0);

ct2= entryEffectLife( SP_start2+ SP_start+ spep_3+ 370+45, 10006, 45, 0x80, -1, 0, 0, 255); -- ギャン
setEffShake( SP_start2+ SP_start+spep_3+ 370+45, ct2, 99, 20);
setEffScaleKey( SP_start2+ SP_start+ spep_3+ 370+45, ct2, 0.1, 0.1);
setEffScaleKey( SP_start2+ SP_start+ spep_3+ 370+77, ct2, 2.4, 2.4);
setEffScaleKey( SP_start2+ SP_start+ spep_3+ 370+90, ct2, 2.8, 2.8);
setEffAlphaKey( SP_start2+ SP_start+spep_3+ 370+45, ct2, 255);
setEffAlphaKey( SP_start2+ SP_start+spep_3+ 370+70, ct2, 255);
setEffAlphaKey( SP_start2+ SP_start+spep_3+ 370+90, ct2, 0);


entryFade( SP_start2+ SP_start+ spep_3+ 448, 6,  17, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setDisp( SP_start2+ SP_start+ spep_3+ 450, 1, 0);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 343; --エンドフェイズのフレーム数を置き換える

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

spep_5 = 465;

------------------------------------------------------
--回避されなかった場合
------------------------------------------------------
setMoveKey( SP_start2+ SP_start+ spep_3+  370+35,  1,  200,  180,   0);
------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
entryEffect( SP_start2+ SP_start+ spep_3+ spep_5, SP_04, 0x100,  -1,  0,  0,  0);  

playSe( SP_start2+ SP_start+ spep_3+ spep_5+4, SE_07);

-- ダメージ表示
dealDamage( SP_start2+ SP_start+ spep_3+spep_5+17);

entryFade( SP_start2+ SP_start+ spep_3+ spep_5+110, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase( SP_start2+ SP_start+ spep_3+spep_5+120);

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
setVisibleUI(0, 0);

entryFadeBg( 0, 0, 170, 0, 10, 10, 10, 180);       -- ベース暗め　背景

--freeza = entryEffect( 0, SP_01, 0x40,      0,  0,  0,  0);   -- 手のカメハメ波部
freeza = entryEffectLife(  0,   SP_01, 170, 0x80,  -1,  0,  0,  0); -- フリーザの絵
setEffShake(0, freeza, 110, 7);

setEffScaleKey( 0, freeza, 3.0, 3.0);
setEffScaleKey( 15, freeza, 1.0, 1.0);

playSe( 0, SE_01);

-- ** エフェクト等 ** --
aura = entryEffectLife(  0,   341, 170, 0x80,  -1,  0,  0,  0); -- オーラ
setEffScaleKey( 0, aura, 7.5, 7.5);
setEffScaleKey( 15, aura, 2.5, 2.5);
setEffMoveKey( 0,    aura,   0,  -670);
setEffMoveKey( 15,    aura,   0,  -270);

setShakeChara( 0, 0, 49, 5);

setQuake( 0, 110, 5);
------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------

setVisibleUI( SP_start+69, 0);
--changeAnime( SP_start+ 70, 0, 30);                       -- 溜め!
playSe( SP_start+ 73, SE_03);

--entryEffect( SP_start+  70,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
--entryEffect( SP_start+  70,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
--[[
speff = entryEffect( SP_start+  80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect( SP_start+  80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
--]]

playSe( SP_start+ 80, SE_04);

-- 書き文字エントリー
ct = entryEffectLife( SP_start+ 90, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake( SP_start+90, ct, 40, 8);
setEffScaleKey( SP_start+90, ct, 1.4, 1.4);
setEffScaleKey( SP_start+90, ct, 0.9, 0.9);
setEffScaleKey( SP_start+90, ct, 2.4, 2.4);

-- 極限Z覚醒 --
------------------------------------------------------
-- カードカットイン　(290〜380F)
------------------------------------------------------
spep_2=SP_start+170;

setScaleKey( spep_2-1,   0, 1.5, 1.5);
setScaleKey( spep_2,   0, 1.0, 1.0);

playSe( spep_2, SE_05);
speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

entryFade( spep_2+85, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

removeAllEffect(spep_2-1);
--カード登場時前に全てのエフェクトを止める

if (_SPECIAL_SKILL_LEVEL_ == 0) then

print ("_SPECIAL_SKILL_LEVEL_ == 0");
playSe( spep_2, SE_05);
speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
print ("_SPECIAL_SKILL_LEVEL_ == 1");
playSe( spep_2, SE_05);
speff = entryEffect(  spep_2,   1120,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( spep_2, SE_05);
speff = entryEffect(  spep_2,   1121,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

end

-- ** エフェクト等 ** --
--entryFlash( (170+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);

entryFade( spep_2+85, 7,  10, 5, 255, 255, 255, 255);     -- white fade
--removeAllEffect( spep5+90 );
------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
changeAnime( SP_start+ 260, 0, 30);                                    -- かめはめ発射ポーズ
setDisp( SP_start+ 260, 0, 1);

setMoveKey( SP_start+ 259,    0,      -200,  0,   0);
setShakeChara( SP_start+259, 0, 159, 25);

-- ** エフェクト等 ** --
entryFadeBg(  SP_start+ 260, 0, 159, 0, 10, 10, 10, 180);       -- ベース暗め　背景
entryFadeBg( SP_start+ 260, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
--entryFadeBg( SP_start2+ SP_start+ 300, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景
entryFadeBg(  SP_start+ 300, 0, 2, 8, 0, 0, 0, 250);     -- 青い　背景

sen2 = entryEffectLife( SP_start+ 260, 921, 159, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(  SP_start+260, sen2, 150);
setEffScaleKey(  SP_start+ 260, sen2, 1.6, 1.6);

spep_3=20;

changeAnime( SP_start+ spep_3+260, 0, 31);                                    -- かめはめ発射ポーズ
setRotateKey( SP_start+ spep_3+260,  0,  -20 );

--kamehame_beam = entryEffectLife( SP_start+ spep_3+260, SP_02, 109, 0x40,  0,  300,  200,  100);   -- 伸びるかめはめ波
kamehame_beam = entryEffectLife( SP_start+ spep_3+260, SP_02, 109, 0,  -1,  0,  0,  0);   -- 伸びるかめはめ波 220
--setEffMoveKey(    SP_start+  spep_3+260,   kamehame_beam,    -100, 0,   0);

playSe( SP_start+ spep_3+260, SE_07);
setEffRotateKey( SP_start+spep_3+260, kamehame_beam, -15);
setEffScaleKey(  SP_start+ spep_3+260, kamehame_beam, 1.0, 1.0);
setEffScaleKey(  SP_start+ spep_3+300, kamehame_beam, 1.0, 1.0);
setEffScaleKey(  SP_start+ spep_3+330, kamehame_beam, 1.5, 1.5);


SP_start2 = -16;

setMoveKey( SP_start2+ SP_start+  spep_3+291,    0,   -200,  -20,   0);--236 フレーム毎に距離を測る必要があるので、きつい
setMoveKey( SP_start2+ SP_start+  spep_3+292,    0,   -300,  -60,   0);--238

setMoveKey( SP_start2+ SP_start+  spep_3+294,    0,   -350,  -100,   0);--238

setMoveKey( SP_start2+ SP_start+  spep_3+296,    0,   -460,  -150,   0);--242

setMoveKey( SP_start2+ SP_start+  spep_3+300,    0,   -620,  -200,   0);--246

setDisp( SP_start2+ SP_start+ spep_3+302, 0, 0);
--setEffMoveKey(   SP_start2+ SP_start+  spep_3+300,   kamehame_beam,    -70, 50,   0);

setMoveKey( SP_start2+ SP_start+  spep_3+330,    0,   -300,  -50,   0);

entryFade( SP_start2+ SP_start+ spep_3+365, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


-- 書き文字エントリー
ct = entryEffectLife( SP_start+ spep_3+268, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(  SP_start+spep_3+268, ct, 32, 5);
setEffAlphaKey(  SP_start+spep_3+268, ct, 255);
setEffAlphaKey( SP_start2+ SP_start+spep_3+290, ct, 255);
setEffAlphaKey( SP_start2+ SP_start+spep_3+300, ct, 0);
setEffScaleKey(  SP_start+spep_3+268, ct, 0.0, 0.0);
setEffScaleKey(  SP_start+spep_3+272, ct, 1.3, 1.3);
setEffScaleKey( SP_start2+ SP_start+spep_3+292, ct, 1.3, 1.3);
setEffScaleKey( SP_start2+ SP_start+spep_3+300, ct, 6.0, 6.0);
playSe( SP_start2+ SP_start+ spep_3+300, SE_07);
entryFade( SP_start2+ SP_start+ spep_3+355, 10,  5, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

removeAllEffect( SP_start2+ SP_start+spep_3+369);

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
setDisp( SP_start2+ SP_start+ spep_3+ 370, 0, 0);
setMoveKey( SP_start2+ SP_start+ spep_3+ 369, 0, -300,  -50,   0);
setMoveKey( SP_start2+ SP_start+ spep_3+ 370, 0, 0,-800,0);

setDisp( SP_start2+ SP_start+ spep_3+ 370, 1, 1);

changeAnime( SP_start2+ SP_start+ spep_3+ 370, 1, 118);                        -- 気ダメ後ろ
setRotateKey( SP_start2+ SP_start+ spep_3+ 370, 1, -20); 
setMoveKey( SP_start2+ SP_start+ spep_3+  370,  1,  500,  350,   0);
setMoveKey( SP_start2+ SP_start+ spep_3+  370+15,  1,  200,  180,   0);
setMoveKey( SP_start2+ SP_start+ spep_3+  370+35,  1,  200,  180,   0);

setDisp( SP_start2+ SP_start+ spep_3+ 370+40, 1, 0);
setScaleKey( SP_start2+ SP_start+ spep_3+ 370, 1,  2.5, 2.5);

playSe( SP_start2+ SP_start+ spep_3+ 390, SE_06);

ryusen = entryEffectLife( SP_start2+ SP_start+ spep_3+ 370, 921, 44, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( SP_start2+ SP_start+ spep_3+370, ryusen, 100);
setEffScaleKey( SP_start2+ SP_start+ spep_3+ 370, ryusen, 1.6, 1.6);

kamehame_beam2 = entryEffect( SP_start2+ SP_start+ spep_3+ 370, SP_03,   0x80, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey( SP_start2+ SP_start+ spep_3+370, kamehame_beam2, 1, 1);
setEffScaleKey( SP_start2+ SP_start+ spep_3+452, kamehame_beam2, 1, 1);
setEffScaleKey( SP_start2+ SP_start+ spep_3+454, kamehame_beam2, 2.5, 2.5);
setDamage( SP_start2+ SP_start+ spep_3+ 452, 1, 0);  -- ダメージ振動等

--speff = entryEffect( SP_start2+ SP_start+ spep_3+ 370, 1506,   0,  -1,  0,  0,  0);    -- カットイン
--setEffReplaceTexture( SP_start2+ SP_start+ spep_3+ speff, 6, 3);                       -- カットイン差し替え
--playSe( SP_start2+ SP_start+ spep_3+ 370, SE_08);

playSe( SP_start2+ SP_start+ spep_3+ 415, SE_09);

-- ** エフェクト等 ** --
setShakeChara( SP_start2+ SP_start+ spep_3+ 370, 1, 99, 20);

entryFadeBg( SP_start2+ SP_start+ spep_3+ 370, 0, 89, 0,0, 0, 0, 255);          -- ベース暗め　背景
setScaleKey( SP_start2+ SP_start+ spep_3+ 370+45, 1,  2.5, 2.5);


ct = entryEffectLife( SP_start2+ SP_start+ spep_3+ 370, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(SP_start2+ SP_start+ spep_3+ 370, ct, 99, 20);
setEffScaleKey( SP_start2+ SP_start+ spep_3+ 370, ct, 2.4, 2.4);
setEffRotateKey(SP_start2+ SP_start+ spep_3+ 370, ct, 0);
setEffAlphaKey(SP_start2+ SP_start+ spep_3+ 370, ct, 255);
setEffAlphaKey(SP_start2+ SP_start+ spep_3+ 370+30, ct, 255);
setEffAlphaKey(SP_start2+ SP_start+ spep_3+ 370+40, ct, 0);

ct2= entryEffectLife( SP_start2+ SP_start+ spep_3+ 370+45, 10006, 45, 0x80, -1, 0, 0, 255); -- ギャン
setEffShake( SP_start2+ SP_start+spep_3+ 370+45, ct2, 99, 20);
setEffScaleKey( SP_start2+ SP_start+ spep_3+ 370+45, ct2, 0.1, 0.1);
setEffScaleKey( SP_start2+ SP_start+ spep_3+ 370+77, ct2, 2.4, 2.4);
setEffScaleKey( SP_start2+ SP_start+ spep_3+ 370+90, ct2, 2.8, 2.8);
setEffAlphaKey( SP_start2+ SP_start+spep_3+ 370+45, ct2, 255);
setEffAlphaKey( SP_start2+ SP_start+spep_3+ 370+70, ct2, 255);
setEffAlphaKey( SP_start2+ SP_start+spep_3+ 370+90, ct2, 0);


entryFade( SP_start2+ SP_start+ spep_3+ 448, 6,  17, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setDisp( SP_start2+ SP_start+ spep_3+ 450, 1, 0);


------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 343; --エンドフェイズのフレーム数を置き換える

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

spep_5 = 465;

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
entryEffect( SP_start2+ SP_start+ spep_3+ spep_5, SP_04, 0x100,  -1,  0,  0,  0);  

playSe( SP_start2+ SP_start+ spep_3+ spep_5+4, SE_07);

-- ダメージ表示
dealDamage( SP_start2+ SP_start+ spep_3+spep_5+17);

entryFade( SP_start2+ SP_start+ spep_3+ spep_5+110, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase( SP_start2+ SP_start+ spep_3+spep_5+120);

end
