

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

SP_01 = 109082;
SP_02 = 109083;
SP_03 = 109084;
SP_04 = 1577;

multi_frm = 2;

setDisp( 0, 0, 0);
changeAnime( 0, 0, 0);

setMoveKey(   0,   0,    0, -5000,   0);
setMoveKey(   1,   0,    0, -5000,   0);
setMoveKey(   2,   0,    0, -5000,   0);
setMoveKey(   3,   0,    0, -5000,   0);
setMoveKey(   4,   0,    0, -5000,   0);
setMoveKey(   5,   0,    0, -5000,   0);
setMoveKey(   6,   0,    0, -5000,   0);
setScaleKey(  0,   0,  1.6, 1.6 );
setScaleKey(  1,   0,  1.6, 1.6 );
setScaleKey(  2,   0,  1.6, 1.6 );
setScaleKey(  3,   0,  1.6, 1.6 );
setScaleKey(  4,   0,  1.6, 1.6 );
setScaleKey(  5,   0,  1.6, 1.6 );
setScaleKey(  6,   0,  1.6, 1.6 );
setRotateKey( 0,   0,  0 );
setRotateKey( 1,   0,  0 );
setRotateKey( 2,   0,  0 );
setRotateKey( 3,   0,  0 );
setRotateKey( 4,   0,  0 );
setRotateKey( 5,   0,  0 );
setRotateKey( 6,   0,  0 );

setDisp( 0, 1, 0);
changeAnime( 0, 1, 100);

setMoveKey(   0,   1,    0, -5000,   0);
setMoveKey(   1,   1,    0, -5000,   0);
setMoveKey(   2,   1,    0, -5000,   0);
setMoveKey(   3,   1,    0, -5000,   0);
setMoveKey(   4,   1,    0, -5000,   0);
setMoveKey(   5,   1,    0, -5000,   0);
setMoveKey(   6,   1,    0, -5000,   0);
setScaleKey(  0,   1,  1.6, 1.6 );
setScaleKey(  1,   1,  1.6, 1.6 );
setScaleKey(  2,   1,  1.6, 1.6 );
setScaleKey(  3,   1,  1.6, 1.6 );
setScaleKey(  4,   1,  1.6, 1.6 );
setScaleKey(  5,   1,  1.6, 1.6 );
setScaleKey(  6,   1,  1.6, 1.6 );
setRotateKey( 0,   1,  0 );
setRotateKey( 1,   1,  0 );
setRotateKey( 2,   1,  0 );
setRotateKey( 3,   1,  0 );
setRotateKey( 4,   1,  0 );
setRotateKey( 5,   1,  0 );
setRotateKey( 6,   1,  0 );
------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

setVisibleUI(0, 0);

------------------------------------------------------
-- かめはめ波溜め (110F)　
------------------------------------------------------

spep_17 =0;

playSe( spep_17, SE_01);

changeAnime( spep_17, 0, 30); 

--setDisp( spep_17, 0, 0);
--setDisp( spep_17+80, 0, 0);

-- ** エフェクト等 ** 

entryFade( spep_17+80, 6,  10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

kame_hand = entryEffect( spep_17, SP_01, 0x00, -1,  0,  0,  0);   -- 手のカメハメ波部
setEffShake(spep_17, kame_hand, 100, 15);

entryFadeBg( 0, 0, 95, 0, 10, 10, 10, 180);       -- ベース暗め　背景
shuchusen = entryEffectLife( 0, 906, 95, 0x00,  -1, 0,  0,  0);   -- 集中線

speff1 = entryEffect(  0,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン) 117で終了
setEffReplaceTexture( speff1, 3, 2);                           -- カットイン差し替え
speff2 = entryEffect(  0,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff2, 4, 5);                           -- セリフ差し替え

setEffAlphaKey(0, speff1, 255);
setEffAlphaKey(0, speff2, 255);

-- 書き文字エントリー
ct = entryEffectLife( 0, 10008, 95, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(0, ct, 95, 8);
setEffScaleKey(0, ct, 1.4, 1.4);
setEffAlphaKey(0, ct, 255);

spep_2 = spep_17+95

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setMoveKey(  spep_2-1,    0,      100,  -54,   0);
setMoveKey(  spep_2,    0,      0,  0,   0);

--[[
playSe( spep_2, SE_05);
speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え
]]--

if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    playSe( spep_2, SE_05);
    speff = entryEffect( spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
    setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え
    
    elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    playSe( spep_2, SE_05);
    speff = entryEffect( spep_2, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    
    elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    playSe( spep_2, SE_05);
    speff = entryEffect( spep_2, 1121, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    end
     
    shuchusen3 = entryEffectLife( spep_2, 906, 90, 0x100,  -1, 0,  0,  0);
    
    setEffMoveKey(  spep_2,  shuchusen3,  0,  0);
    setEffMoveKey(  spep_2+90,  shuchusen3,  0,  0);
    setEffScaleKey(  spep_2,  shuchusen3,  1.6,  1.6);
    setEffScaleKey(  spep_2+90,  shuchusen3,  1.6,  1.6);
    setEffRotateKey(  spep_2,  shuchusen3,  0);
    setEffRotateKey(  spep_2+90,  shuchusen3,  0);
    setEffAlphaKey(  spep_2,  shuchusen3,  255);
    setEffAlphaKey(  spep_2+90,  shuchusen3,  255);
    

entryFade( spep_2+82, 3, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
playSe( spep_2+64, SE_06);

spep_3=spep_2+85+2; --211 260

------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------

--setDisp( 0, 1, 0);
setDisp( spep_3, 0, 1);
changeAnime( spep_3, 0, 31);                                    -- かめはめ発射ポーズ
setScaleKey(  spep_3,  0,  1.3,  1.3);
setScaleKey(  spep_3+10,  0,  0.8,  0.8);

setMoveKey(  spep_3-1,    0,      0,  0,   0);
setMoveKey(  spep_3,    0,      -50,  -100,   0);
--setMoveKey(  spep_3+10,    0,      -250,  -80,   0);
setMoveKey(  spep_3+25,    0,      -250,  -200,   -30);

sen2 = entryEffectLife( spep_3, 921, 60, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_3, sen2, -50);
setEffScaleKey( spep_3, sen2, 1.8, 1.8);

setShakeChara( spep_3, 0, 60, 30);
setShake( spep_3, 60, 20);
aura = entryEffectLife(  spep_3,   353, 60, 0x40+0x100,  0,  300,  0,  0); -- オーラ
setEffScaleKey( spep_3, aura, 5.4, 5.4);
setEffScaleKey( spep_3+10, aura, 1.2,  1.2);
--setEffRotateKey(spep_3, aura,  -10);
setEffMoveKey(  spep_3,   aura,    0,  -680);
setEffMoveKey(  spep_3+10,   aura,    0,  -200);
setEffAlphaKey(spep_3, aura, 125);
--[[
aura2 = entryEffectLife(  spep_3,   354, 60, 0x40+0x100,  0,  300,  0,  0); -- オーラ
setEffScaleKey( spep_3, aura2, 4.5, 4.5);
setEffScaleKey( spep_3+10, aura2, 1.0,  1.0);
setEffMoveKey(  spep_3,   aura2,    0,  -650);
setEffMoveKey(  spep_3+10,   aura2,    0,  -170);
setEffAlphaKey(spep_3, aura2, 125);
]]--

kamehame_beam_st = entryEffectLife( spep_3, SP_02, 44, 0x40+0x80,  0,  300,  100,  100);   -- 伸びるかめはめ波oku
setEffScaleKey( spep_3, kamehame_beam_st, 3.5, 3.5);
setEffScaleKey( spep_3+10, kamehame_beam_st, 1, 1);

setEffMoveKey(  spep_3,   kamehame_beam_st,    580,  620);
setEffMoveKey(  spep_3+10,   kamehame_beam_st,    180,  220);

kamehame_beam = entryEffectLife( spep_3, SP_02, 60, 0x40+0x100,  0,  300,  100,  100);   -- 伸びるかめはめ波temae
setEffScaleKey( spep_3, kamehame_beam, 3.5, 3.5);
setEffScaleKey( spep_3+10, kamehame_beam, 1, 1);

setEffMoveKey(  spep_3,   kamehame_beam,    580,  620);
setEffMoveKey(  spep_3+10,   kamehame_beam,    180,  220);

setEffRotateKey(spep_3, kamehame_beam_st, -7);
setEffRotateKey(spep_3, kamehame_beam, -7);

setEffAlphaKey(spep_3, kamehame_beam, 0);
setEffAlphaKey(spep_3+44, kamehame_beam, 0);
setEffAlphaKey(spep_3+45, kamehame_beam, 255);

playSe( spep_3, SE_07);

-- 途中からカメハメハが伸びる 
setMoveKey(  spep_3+30,    0,   -650,  -550,   -60); --650
setMoveKey(  spep_3+60,    0,   -850,  -750,   -90); --1000 600
setDisp( spep_3+60, 0, 0);

--[[
-- 相手が画面に現れる
setDisp( spep_3+40, 1, 1);
changeAnime( spep_3+40, 1, 100);                        -- 敵　気ダメ後ろ
setScaleKey(  spep_3+60,   1,   1.6,  1.6);
setMoveKey(  spep_3+40,    1,  500,  650,   0);
--setMoveKey(  spep_3+50,    1,  150,  380,   -10);
setMoveKey(  spep_3+60,    1,  150,  380,   0);
]]--

-- ** エフェクト等 ** --
entryFadeBg( spep_3, 0, 109, 0, 10, 10, 10, 220);       -- ベース暗め　背景

shuchusen = entryEffectLife( spep_3-1, 906, 109, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffRotateKey(spep_3-1, shuchusen, 145);
setEffScaleKey( spep_3-1, shuchusen, 2.8, 2.8);

-- 書き文字エントリー
ct = entryEffectLife( spep_3+8, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(spep_3+8, ct, 32, 5);
setEffAlphaKey(spep_3+8, ct, 255);
setEffAlphaKey(spep_3+30, ct, 255);
setEffAlphaKey(spep_3+40, ct, 0);
setEffScaleKey(spep_3+8, ct, 0.0, 0.0);
setEffScaleKey(spep_3+12, ct, 1.3, 1.3);
setEffScaleKey(spep_3+32, ct, 1.3, 1.3);
setEffScaleKey(spep_3+40, ct, 6.0, 6.0);
playSe( spep_3+40, SE_07);

entryFade( spep_3+55, 5,  5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setScaleKey(  spep_3+60,  0,  0.3,  0.3);

spep_4=spep_3+60 --311 370

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
setDisp( spep_4, 0, 0);
setDisp( spep_4, 1, 1);
changeAnime( spep_4, 1, 118);                        -- 気ダメ後ろ
setRotateKey( spep_4, 1, -20); 
setMoveKey(  spep_4,  1,  500,  350,   0);
setMoveKey(  spep_4+15,  1,  200,  180,   0);
setMoveKey(  spep_4+35,  1,  200,  180,   0);

setDisp( spep_4+35, 1, 0);
setScaleKey( spep_4, 1,  1.6, 1.6);
setScaleKey( spep_4+35, 1,  1.6, 1.6);

playSe( spep_4+20, SE_06);

entryFade( spep_4+34, 2,  5, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

ryusen = entryEffectLife( spep_4-1, 921, 50, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey(spep_4-1, ryusen, 100);
setEffScaleKey( spep_4-1, ryusen, 1.6, 1.6);

kamehame_beam2 = entryEffect( spep_4-1, SP_03,   0x80, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffAlphaKey(spep_4-1, kamehame_beam2, 255);
setEffScaleKey(spep_4-1, kamehame_beam2, 0.8, 0.8);

-- ** エフェクト等 ** --
setShakeChara( spep_4, 1, 99, 20);

entryEffect( spep_4+38, 190000,   0x80, -1,  0,  0,  0);   -- ギャン

entryFadeBg( spep_4, 0, 50, 0,0, 0, 0, 255);          -- ベース暗め　背景

-- 書き文字エントリー
ct = entryEffectLife( spep_4, 10014, 40, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(spep_4, ct, 99, 20);
setEffScaleKey( spep_4, ct, 2.4, 2.4);
setEffRotateKey(spep_4, ct, 70);
setEffAlphaKey(spep_4, ct, 255);
setEffAlphaKey(spep_4+40, ct, 255);

ct = entryEffectLife( spep_4+38, 10006, 45, 0x80, -1, 0, 0, 255); -- ギャン
setEffShake(spep_4+38, ct, 99, 20);
setEffScaleKey( spep_4+38, ct, 0.1, 0.1);
setEffScaleKey( spep_4+70, ct, 2.4, 2.4);
setEffScaleKey( spep_4+83, ct, 2.8, 2.8);
setEffAlphaKey(spep_4+38, ct, 255);
setEffAlphaKey(spep_4+63, ct, 255);
setEffAlphaKey(spep_4+83, ct, 0);

playSe( spep_4+41, 1024);

entryFade( spep_4+85, 5, 10, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp( spep_4+83, 1, 0);

removeAllEffect(spep_4+88);

spep_5=spep_4+85+15 --410 469

------------------------------------------------------
-- 回避
------------------------------------------------------


if(_IS_DODGE_ == 1) then

SP_dodge = 265; --エンドフェイズのフレーム数を置き換える

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
-- 爆発 (110F)
------------------------------------------------------

bakuhatu = entryEffect( spep_5, SP_04, 0,  -1,  0,  0,  0);  
setDisp( spep_5, 1, 0);
setEffScaleKey( spep_5, bakuhatu, 1, 1);

playSe( spep_5+4, SE_07);
shuchusen = entryEffectLife( spep_5+4, 906, 116, 0x00,  -1, 0,  0,  0);   -- 集中線

-- ダメージ表示
dealDamage(spep_5+17);

entryFade( spep_5+120, 5,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_5+120);

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
setVisibleUI(0, 0);

------------------------------------------------------
-- かめはめ波溜め (110F)　
------------------------------------------------------

spep_17 =0;


playSe( spep_17, SE_01);

changeAnime( spep_17, 0, 30); 

setDisp( 0, 1, 0);
setDisp( 0, 0, 0);
--setDisp( spep_17+80, 0, 0);

-- ** エフェクト等 ** 

entryFade( spep_17+80, 6,  10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

kame_hand = entryEffect( spep_17, SP_01, 0x00, -1,  0,  0,  0);   -- 手のカメハメ波部
setEffShake(spep_17, kame_hand, 100, 15);

entryFadeBg( 0, 0, 95, 0, 10, 10, 10, 180);       -- ベース暗め　背景
shuchusen = entryEffectLife( 0, 906, 95, 0x00,  -1, 0,  0,  0);   -- 集中線

--[[
speff1 = entryEffect(  0,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン) 117で終了
setEffReplaceTexture( speff1, 3, 2);                           -- カットイン差し替え
speff2 = entryEffect(  0,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff2, 4, 5);                           -- セリフ差し替え

setEffAlphaKey(0, speff1, 255);
setEffAlphaKey(0, speff2, 255);
]]--

-- 書き文字エントリー
ct = entryEffectLife( 0, 10008, 95, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(0, ct, 95, 8);
setEffScaleKey(0, ct, 1.4, 1.4);
setEffAlphaKey(0, ct, 255);

spep_2 = spep_17+95

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setMoveKey(  spep_2-1,    0,      100,  -54,   0);
setMoveKey(  spep_2,    0,      0,  0,   0);

--[[
playSe( spep_2, SE_05);
speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え
]]--

if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    playSe( spep_2, SE_05);
    speff = entryEffect( spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
    setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え
    
    elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    playSe( spep_2, SE_05);
    speff = entryEffect( spep_2, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    
    elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    playSe( spep_2, SE_05);
    speff = entryEffect( spep_2, 1121, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    end
     
    shuchusen3 = entryEffectLife( spep_2, 906, 90, 0x100,  -1, 0,  0,  0);
    
    setEffMoveKey(  spep_2,  shuchusen3,  0,  0);
    setEffMoveKey(  spep_2+90,  shuchusen3,  0,  0);
    setEffScaleKey(  spep_2,  shuchusen3,  1.6,  1.6);
    setEffScaleKey(  spep_2+90,  shuchusen3,  1.6,  1.6);
    setEffRotateKey(  spep_2,  shuchusen3,  0);
    setEffRotateKey(  spep_2+90,  shuchusen3,  0);
    setEffAlphaKey(  spep_2,  shuchusen3,  255);
    setEffAlphaKey(  spep_2+90,  shuchusen3,  255);
    

    entryFade( spep_2+82, 3, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
playSe( spep_2+64, SE_06);

spep_3=spep_2+85+2; --211 260

------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------

--setDisp( 0, 1, 0);
setDisp( spep_3, 0, 1);
changeAnime( spep_3, 0, 31);                                    -- かめはめ発射ポーズ
setScaleKey(  spep_3,  0,  1.3,  1.3);
setScaleKey(  spep_3+10,  0,  0.8,  0.8);

setMoveKey(  spep_3-1,    0,      0,  0,   0);
setMoveKey(  spep_3,    0,      -50,  -100,   0);
--setMoveKey(  spep_3+10,    0,      -250,  -80,   0);
setMoveKey(  spep_3+25,    0,      -250,  -200,   -30);

sen2 = entryEffectLife( spep_3, 921, 60, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_3, sen2, -50);
setEffScaleKey( spep_3, sen2, 1.8, 1.8);

setShakeChara( spep_3, 0, 60, 30);
setShake( spep_3, 60, 20);
aura = entryEffectLife(  spep_3,   353, 60, 0x40+0x100,  0,  300,  0,  0); -- オーラ
setEffScaleKey( spep_3, aura, 5.4, 5.4);
setEffScaleKey( spep_3+10, aura, 1.2,  1.2);
--setEffRotateKey(spep_3, aura,  -10);
setEffMoveKey(  spep_3,   aura,    0,  -680);
setEffMoveKey(  spep_3+10,   aura,    0,  -200);
setEffAlphaKey(spep_3, aura, 125);
--[[
aura2 = entryEffectLife(  spep_3,   354, 60, 0x40+0x100,  0,  300,  0,  0); -- オーラ
setEffScaleKey( spep_3, aura2, 4.5, 4.5);
setEffScaleKey( spep_3+10, aura2, 1.0,  1.0);
setEffMoveKey(  spep_3,   aura2,    0,  -650);
setEffMoveKey(  spep_3+10,   aura2,    0,  -170);
setEffAlphaKey(spep_3, aura2, 125);
]]--

kamehame_beam_st = entryEffectLife( spep_3, SP_02, 44, 0x40+0x80,  0,  300, 100, 100);   -- 伸びるかめはめ波oku
setEffScaleKey( spep_3, kamehame_beam_st, 4.0, 4.0);
setEffScaleKey( spep_3+10, kamehame_beam_st, 1, 1);

setEffMoveKey(  spep_3,   kamehame_beam_st,    580,  620);
setEffMoveKey(  spep_3+10,   kamehame_beam_st,    180,  220);

kamehame_beam = entryEffectLife( spep_3, SP_02, 60, 0x40+0x100,  0,  300,  100,  100);   -- 伸びるかめはめ波temae
setEffScaleKey( spep_3, kamehame_beam, 4.0, 4.0);
setEffScaleKey( spep_3+10, kamehame_beam, 1, 1);

setEffMoveKey(  spep_3,   kamehame_beam,    580,  620);
setEffMoveKey(  spep_3+10,   kamehame_beam,    180,  220);

setEffRotateKey(spep_3, kamehame_beam_st, -7);
setEffRotateKey(spep_3, kamehame_beam, -7);

setEffAlphaKey(spep_3, kamehame_beam, 0);
setEffAlphaKey(spep_3+44, kamehame_beam, 0);
setEffAlphaKey(spep_3+45, kamehame_beam, 255);

playSe( spep_3, SE_07);

-- 途中からカメハメハが伸びる 
setMoveKey(  spep_3+30,    0,   -650,  -550,   -60); --650
setMoveKey(  spep_3+60,    0,   -850,  -750,   -90); --1000 600
setDisp( spep_3+60, 0, 0);

--[[
-- 相手が画面に現れる
setDisp( spep_3+40, 1, 1);
changeAnime( spep_3+40, 1, 100);                        -- 敵　気ダメ後ろ
setScaleKey(  spep_3+60,   1,   1.6,  1.6);
setMoveKey(  spep_3+40,    1,  500,  650,   0);
--setMoveKey(  spep_3+50,    1,  150,  380,   -10);
setMoveKey(  spep_3+60,    1,  150,  380,   0);
]]--

-- ** エフェクト等 ** --
entryFadeBg( spep_3, 0, 109, 0, 10, 10, 10, 220);       -- ベース暗め　背景

shuchusen = entryEffectLife( spep_3-1, 906, 109, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffRotateKey(spep_3-1, shuchusen, 145);
setEffScaleKey( spep_3-1, shuchusen, 2.8, 2.8);

-- 書き文字エントリー
ct = entryEffectLife( spep_3+8, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(spep_3+8, ct, 32, 5);
setEffAlphaKey(spep_3+8, ct, 255);
setEffAlphaKey(spep_3+30, ct, 255);
setEffAlphaKey(spep_3+40, ct, 0);
setEffScaleKey(spep_3+8, ct, 0.0, 0.0);
setEffScaleKey(spep_3+12, ct, 1.3, 1.3);
setEffScaleKey(spep_3+32, ct, 1.3, 1.3);
setEffScaleKey(spep_3+40, ct, 6.0, 6.0);
playSe( spep_3+40, SE_07);

entryFade( spep_3+55, 5,  5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setScaleKey(  spep_3+60,  0,  0.3,  0.3);

spep_4=spep_3+60 --311 370

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
setDisp( spep_4, 0, 0);
setDisp( spep_4, 1, 1);
changeAnime( spep_4, 1, 118);                        -- 気ダメ後ろ
setRotateKey( spep_4, 1, -20); 
setMoveKey(  spep_4,  1,  500,  350,   0);
setMoveKey(  spep_4+15,  1,  200,  180,   0);
setMoveKey(  spep_4+35,  1,  200,  180,   0);

setDisp( spep_4+35, 1, 0);
setScaleKey( spep_4, 1,  1.6, 1.6);
setScaleKey( spep_4+35, 1,  1.6, 1.6);

playSe( spep_4+20, SE_06);

entryFade( spep_4+34, 2,  5, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

ryusen = entryEffectLife( spep_4-1, 921, 50, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey(spep_4-1, ryusen, 100);
setEffScaleKey( spep_4-1, ryusen, 1.6, 1.6);

kamehame_beam2 = entryEffect( spep_4-1, SP_03,   0x80, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffAlphaKey(spep_4-1, kamehame_beam2, 255);
setEffScaleKey(spep_4-1, kamehame_beam2, 0.8, 0.8);

-- ** エフェクト等 ** --
setShakeChara( spep_4, 1, 99, 20);

entryEffect( spep_4+38, 190000,   0x80, -1,  0,  0,  0);   -- ギャン

entryFadeBg( spep_4, 0, 50, 0,0, 0, 0, 255);          -- ベース暗め　背景

-- 書き文字エントリー
ct = entryEffectLife( spep_4, 10014, 40, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(spep_4, ct, 99, 20);
setEffScaleKey( spep_4, ct, 2.4, 2.4);
setEffRotateKey(spep_4, ct, -70);
setEffAlphaKey(spep_4, ct, 255);
setEffAlphaKey(spep_4+40, ct, 255);

ct = entryEffectLife( spep_4+38, 10006, 45, 0x80, -1, 0, 0, 255); -- ギャン
setEffShake(spep_4+38, ct, 99, 20);
setEffScaleKey( spep_4+38, ct, 0.1, 0.1);
setEffScaleKey( spep_4+70, ct, 2.4, 2.4);
setEffScaleKey( spep_4+83, ct, 2.8, 2.8);
setEffAlphaKey(spep_4+38, ct, 255);
setEffAlphaKey(spep_4+63, ct, 255);
setEffAlphaKey(spep_4+83, ct, 0);

playSe( spep_4+41, 1024);

entryFade( spep_4+85, 5, 10, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp( spep_4+83, 1, 0);

removeAllEffect(spep_4+88);

spep_5=spep_4+85+15 --410 469

------------------------------------------------------
-- 回避
------------------------------------------------------


if(_IS_DODGE_ == 1) then

SP_dodge = 265; --エンドフェイズのフレーム数を置き換える

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
-- 爆発 (110F)
------------------------------------------------------

bakuhatu = entryEffect( spep_5, SP_04, 0,  -1,  0,  0,  0);  
setDisp( spep_5, 1, 0);
setEffScaleKey( spep_5, bakuhatu, 1, 1);

playSe( spep_5+4, SE_07);
shuchusen = entryEffectLife( spep_5+4, 906, 116, 0x00,  -1, 0,  0,  0);   -- 集中線

-- ダメージ表示
dealDamage(spep_5+17);

entryFade( spep_5+120, 5,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_5+120);

end