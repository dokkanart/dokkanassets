

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

SP_01 = 100224;
SP_02 = 100225;
SP_03 = 100226;
SP_04 = 1573;

multi_frm = 2;

changeAnime( 0, 0, 0);                       -- 立ち
setDisp( 0, 1, 0);

------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
setVisibleUI(0, 0);
changeAnime( 0, 0, 30);                       -- 溜め!
setScaleKey(   0,   0, 1, 1);

setMoveKey(   0,   0,  -150, 0,   0);
setMoveKey(   1,   0,  -150, 0,   0);
setMoveKey(  117,   0,    -80, -70,   -30);

playSe( 0, SE_03); --かめはめ波
playSe( 25, SE_03); 
playSe( 50, SE_03);
playSe( 75, SE_03); 
playSe( 100, SE_03);  

speff = entryEffect(  30,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン) 117で終了
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
setEffAlphaKey(30, speff, 255);
speff = entryEffect(  30,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
setEffAlphaKey(30, speff, 255);


entryFade( 117, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  0,   355, 117, 0x40+0x80,  0, 300,  0,  -220); -- オーラ
setEffMoveKey(  117,   aura,    0, -350,  0);
setEffScaleKey( 0, aura, 1.6, 1.6);
setEffScaleKey( 40, aura, 1.6, 1.6);
setEffScaleKey( 117, aura, 2.0, 2.0);
setEffAlphaKey(0, aura, 205);


aura1 = entryEffectLife( 0 , 354 , 117 , 0x40+0x100,  0, 300,   0,  -170); -- オーラ350

setEffMoveKey(  117,   aura1,   40, -200,  0);
setEffScaleKey( 0, aura1, 1, 1);
setEffScaleKey( 40, aura1, 1, 1);
setEffScaleKey( 117, aura1, 1.4, 1.4);
setEffAlphaKey(0, aura1, 205);

kame_hand = entryEffect( 0, SP_01, 0x40+0x100, 0,  300,  -50,  20);   -- 手のカメハメ波部 50end
setEffScaleKey( 0, kame_hand, 0.5, 0.5);

setShakeChara( 0, 0, 117, 8);
setShake( 0, 117, 10);

-- 書き文字エントリー
ct = entryEffectLife( 30, 10008, 87, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(30, ct, 95, 8);
setEffScaleKey(30, ct, 1.4, 1.4);

shuchusen5 = entryEffectLife( 0, 906, 117, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 0, shuchusen5, 1.0, 1.0);
setEffScaleKey( 60, shuchusen5, 1.0, 1.0);
setEffScaleKey( 117, shuchusen5, 1.0, 1.0);


entryFadeBg( 0, 0, 120, 0, 0, 0, 0, 190);       -- ベース暗め　背景

spep_2 = 124;
setScaleKey(  spep_2,  0,  1.6,  1.6);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setMoveKey(  spep_2-1,    0,      100,  -54,   0);
setMoveKey(  spep_2,    0,      0,  0,   0);

--playSe( spep_2, SE_05);
--speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
--setEffReplaceTexture( speff, 1, 1);
--setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
--setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


--entryFade( spep_2+85, 3, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--playSe( spep_2+64, SE_06);

-- ** 極限用に調整 ** --
if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    playSe( spep_2, SE_05);
    speff = entryEffect( spep_2, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    
    
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

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_2 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_2 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_2 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_2 + 0, shuchusen, 0 );
setEffRotateKey( spep_2 + 90, shuchusen, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen, 255 );
setEffAlphaKey( spep_2 + 90, shuchusen, 255 );

-- ** 音 ** --
--playSe( spep_2 + 0, SE_05 );

--白フェード
entryFade( spep_2 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;

--spep_3=spep_2+85+2; --211 260

------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------

changeAnime( spep_3, 0, 31);                                    -- かめはめ発射ポーズ
setScaleKey(  spep_3,  0,  1.3,  1.3);
setScaleKey(  spep_3+10,  0,  0.3,  0.3);

setMoveKey(  spep_3-1,    0,      0,  0,   0);
setMoveKey(  spep_3,    0,      -50,  -100,   0);
--setMoveKey(  spep_3+10,    0,      -250,  -80,   0);
setMoveKey(  spep_3+25,    0,      -250,  -200,   -30);

sen2 = entryEffectLife( spep_3, 921, 60, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_3, sen2, -50);
setEffScaleKey( spep_3, sen2, 1.8, 1.8);

setShakeChara( spep_3, 0, 60, 30);
setShake( spep_3, 60, 20);
aura = entryEffectLife(  spep_3,   355, 60, 0x40+0x100,  0,  300,  0,  0); -- オーラ
setEffScaleKey( spep_3, aura, 5.4, 5.4);
setEffScaleKey( spep_3+10, aura, 1.2,  1.2);
--setEffRotateKey(spep_3, aura,  -10);
setEffMoveKey(  spep_3,   aura,    0,  -680);
setEffMoveKey(  spep_3+10,   aura,    0,  -200);
setEffAlphaKey(spep_3, aura, 125);


aura2 = entryEffectLife(  spep_3,   354, 60, 0x40+0x100,  0,  300,  0,  0); -- オーラ
setEffScaleKey( spep_3, aura2, 4.5, 4.5);
setEffScaleKey( spep_3+10, aura2, 1.0,  1.0);
setEffMoveKey(  spep_3,   aura2,    0,  -680);
setEffMoveKey(  spep_3+10,   aura2,    0,  -200);
setEffAlphaKey(spep_3, aura2, 125);

kamehame_beam_st = entryEffectLife( spep_3, SP_02, 44, 0x40+0x80,  0,  300,  0,  0);   -- 伸びるかめはめ波oku
setEffScaleKey( spep_3, kamehame_beam_st, 6.0, 6.0);
setEffScaleKey( spep_3+10, kamehame_beam_st, 1.5, 1.5);

setEffMoveKey(  spep_3,   kamehame_beam_st,    480,  520);
setEffMoveKey(  spep_3+10,   kamehame_beam_st,    80,  120);

kamehame_beam = entryEffectLife( spep_3, SP_02, 60, 0x40+0x100,  0,  300,  0,  0);   -- 伸びるかめはめ波temae
setEffScaleKey( spep_3, kamehame_beam, 6.0, 6.0);
setEffScaleKey( spep_3+10, kamehame_beam, 1.5, 1.5);

setEffMoveKey(  spep_3,   kamehame_beam,    480,  520);
setEffMoveKey(  spep_3+10,   kamehame_beam,    80,  120);

setEffRotateKey(spep_3, kamehame_beam_st, -7);
setEffRotateKey(spep_3, kamehame_beam, -7);

setEffAlphaKey(spep_3, kamehame_beam, 0);
setEffAlphaKey(spep_3+44, kamehame_beam, 0);
setEffAlphaKey(spep_3+45, kamehame_beam, 255);

playSe( spep_3, SE_07);

-- 途中からカメハメハが伸びる 
setMoveKey(  spep_3+30,    0,   -550,  -450,   -60); --650
setMoveKey(  spep_3+60,    0,   -1250,  -650,   -90); --1000 600
setDisp( spep_3+60, 0, 0);


-- 相手が画面に現れる
setDisp( spep_3+40, 1, 1);
changeAnime( spep_3+40, 1, 100);                        -- 敵　気ダメ後ろ
setScaleKey(  spep_3+60,   1,   1.6,  1.6);
setMoveKey(  spep_3+40,    1,  500,  650,   0);
--setMoveKey(  spep_3+50,    1,  150,  380,   -10);
setMoveKey(  spep_3+60,    1,  150,  380,   0);

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
setEffScaleKey(spep_4-1, kamehame_beam2, 1.0, 1.0);

-- ** エフェクト等 ** --
setShakeChara( spep_4, 1, 99, 20);

entryFadeBg( spep_4, 0, 50, 0,0, 0, 0, 255);          -- ベース暗め　背景

-- 書き文字エントリー
ct = entryEffectLife( spep_4, 10014, 40, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(spep_4, ct, 99, 20);
setEffScaleKey( spep_4, ct, 2.4, 2.4);
setEffRotateKey(spep_4, ct, 70);
setEffAlphaKey(spep_4, ct, 255);
setEffAlphaKey(spep_4+40, ct, 255);

ct = entryEffectLife( spep_4+45, 10006, 45, 0x80, -1, 0, 0, 255); -- ギャン
setEffShake(spep_4+45, ct, 99, 20);
setEffScaleKey( spep_4+45, ct, 0.1, 0.1);
setEffScaleKey( spep_4+77, ct, 2.4, 2.4);
setEffScaleKey( spep_4+90, ct, 2.8, 2.8);
setEffAlphaKey(spep_4+45, ct, 255);
setEffAlphaKey(spep_4+70, ct, 255);
setEffAlphaKey(spep_4+90, ct, 0);

playSe( spep_4+48, 1024);

entryFade( spep_4+92, 5, 10, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp( spep_4+90, 1, 0);

removeAllEffect(spep_4+95);

spep_5=spep_4+92+10 --410 469

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 303; --エンドフェイズのフレーム数を置き換える

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
setEffScaleKey( spep_5, bakuhatu, -1, 1);

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
changeAnime( 0, 0, 30);                       -- 溜め!
setScaleKey(   0,   0, 1, 1);

setMoveKey(   0,   0,  -150, 0,   0);
setMoveKey(   1,   0,  -150, 0,   0);
setMoveKey(  117,   0,    -80, -70,   -30);

playSe( 0, SE_03); --かめはめ波
playSe( 25, SE_03); 
playSe( 50, SE_03);
playSe( 75, SE_03); 
playSe( 100, SE_03);  

--[[
speff = entryEffect(  30,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン) 117で終了
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
setEffAlphaKey(30, speff, 255);
speff = entryEffect(  30,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
setEffAlphaKey(30, speff, 255);
--]]


entryFade( 117, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  0,   355, 117, 0x40+0x80,  0, 300,  0,  -170); -- オーラ
setEffMoveKey(  117,   aura,    0, -350,  0);
setEffScaleKey( 0, aura, 1.6, 1.6);
setEffScaleKey( 40, aura, 1.6, 1.6);
setEffScaleKey( 117, aura, 2.0, 2.0);
setEffAlphaKey(0, aura, 205);

aura1 = entryEffectLife( 0 , 354 , 117 , 0x40+0x100,  0, 300,   0,  -170); -- オーラ350

setEffMoveKey(  117,   aura1,   40, -200,  0);
setEffScaleKey( 0, aura1, 1, 1);
setEffScaleKey( 40, aura1, 1, 1);
setEffScaleKey( 117, aura1, 1.4, 1.4);
setEffAlphaKey(0, aura1, 205);

kame_hand = entryEffect( 0, SP_01, 0x40+0x80, 0,  300,  -40,  20);   -- 手のカメハメ波部 50end
setEffScaleKey( 0, kame_hand, 0.5, 0.5);
setEffMoveKey(  0,   kame_hand,   -40,  20,  0);
setEffMoveKey(  117,   kame_hand,   -70,  50,  0);
--setEffScaleKey( 117, kame_hand, 0.7, 0.7);

setShakeChara( 0, 0, 117, 8);
setShake( 0, 117, 10);

-- 書き文字エントリー
ct = entryEffectLife( 30, 10008, 87, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(30, ct, 95, 8);
setEffScaleKey(30, ct, 1.4, 1.4);

shuchusen5 = entryEffectLife( 0, 906, 117, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 0, shuchusen5, 1.0, 1.0);
setEffScaleKey( 60, shuchusen5, 1.0, 1.0);
setEffScaleKey( 117, shuchusen5, 1.0, 1.0);


entryFadeBg( 0, 0, 120, 0, 0, 0, 0, 190);       -- ベース暗め　背景

spep_2 = 124;
setScaleKey(  spep_2,  0,  1.6,  1.6);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setMoveKey(  spep_2-1,    0,      100,  -54,   0);
setMoveKey(  spep_2,    0,      0,  0,   0);

--playSe( spep_2, SE_05);
--speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
--setEffReplaceTexture( speff, 1, 1);
--setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
--setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


--entryFade( spep_2+85, 3, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--playSe( spep_2+64, SE_06);

--spep_3=spep_2+85+2; --211 260
-- ** 極限用に調整 ** --
if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    playSe( spep_2, SE_05);
    speff = entryEffect( spep_2, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    
    
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

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_2 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_2 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_2 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_2 + 0, shuchusen, 0 );
setEffRotateKey( spep_2 + 90, shuchusen, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen, 255 );
setEffAlphaKey( spep_2 + 90, shuchusen, 255 );

-- ** 音 ** --
--playSe( spep_2 + 0, SE_05 );

--白フェード
entryFade( spep_2 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;

------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------

changeAnime( spep_3, 0, 31);                                    -- かめはめ発射ポーズ
setScaleKey(  spep_3,  0,  1.3,  1.3);
setScaleKey(  spep_3+10,  0,  0.3,  0.3);

setMoveKey(  spep_3-1,    0,      0,  0,   0);
setMoveKey(  spep_3,    0,      -50,  -100,   0);
--setMoveKey(  spep_3+10,    0,      -250,  -80,   0);
setMoveKey(  spep_3+25,    0,      -250,  -200,   -30);

sen2 = entryEffectLife( spep_3, 921, 60, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_3, sen2, -50);
setEffScaleKey( spep_3, sen2, 1.8, 1.8);

setShakeChara( spep_3, 0, 60, 30);
setShake( spep_3, 60, 20);
aura = entryEffectLife(  spep_3,   355, 60, 0x40+0x100,  0,  300,  0,  0); -- オーラ
setEffScaleKey( spep_3, aura, 5.4, 5.4);
setEffScaleKey( spep_3+10, aura, 1.2,  1.2);
--setEffRotateKey(spep_3, aura,  -10);
setEffMoveKey(  spep_3,   aura,    0,  -680);
setEffMoveKey(  spep_3+10,   aura,    0,  -200);
setEffAlphaKey(spep_3, aura, 125);


aura2 = entryEffectLife(  spep_3,   354, 60, 0x40+0x100,  0,  300,  0,  0); -- オーラ
setEffScaleKey( spep_3, aura2, 4.5, 4.5);
setEffScaleKey( spep_3+10, aura2, 1.0,  1.0);
setEffMoveKey(  spep_3,   aura2,    0,  -650);
setEffMoveKey(  spep_3+10,   aura2,    0,  -170);
setEffAlphaKey(spep_3, aura2, 125);

kamehame_beam_st = entryEffectLife( spep_3, SP_02, 44, 0x40+0x80,  0,  300,  0,  0);   -- 伸びるかめはめ波oku
setEffScaleKey( spep_3, kamehame_beam_st, 6.0, 6.0);
setEffScaleKey( spep_3+10, kamehame_beam_st, 1.5, 1.5);

setEffMoveKey(  spep_3,   kamehame_beam_st,    480,  520);
setEffMoveKey(  spep_3+10,   kamehame_beam_st,    80,  120);

kamehame_beam = entryEffectLife( spep_3, SP_02, 60, 0x40+0x100,  0,  300,  0,  0);   -- 伸びるかめはめ波temae
setEffScaleKey( spep_3, kamehame_beam, 6.0, 6.0);
setEffScaleKey( spep_3+10, kamehame_beam, 1.5, 1.5);

setEffMoveKey(  spep_3,   kamehame_beam,    480,  520);
setEffMoveKey(  spep_3+10,   kamehame_beam,    80,  120);

setEffRotateKey(spep_3, kamehame_beam_st, -7);
setEffRotateKey(spep_3, kamehame_beam, -7);

setEffAlphaKey(spep_3, kamehame_beam, 0);
setEffAlphaKey(spep_3+44, kamehame_beam, 0);
setEffAlphaKey(spep_3+45, kamehame_beam, 255);

playSe( spep_3, SE_07);

-- 途中からカメハメハが伸びる 
setMoveKey(  spep_3+30,    0,   -550,  -450,   -60); --650
setMoveKey(  spep_3+60,    0,   -1250,  -650,   -90); --1000 600
setDisp( spep_3+60, 0, 0);


-- 相手が画面に現れる
setDisp( spep_3+40, 1, 1);
changeAnime( spep_3+40, 1, 100);                        -- 敵　気ダメ後ろ
setScaleKey(  spep_3+60,   1,   1.6,  1.6);
setMoveKey(  spep_3+40,    1,  500,  650,   0);
--setMoveKey(  spep_3+50,    1,  150,  380,   -10);
setMoveKey(  spep_3+60,    1,  150,  380,   0);

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
setEffScaleKey(spep_4-1, kamehame_beam2, 1.0, 1.0);

-- ** エフェクト等 ** --
setShakeChara( spep_4, 1, 99, 20);

entryFadeBg( spep_4, 0, 50, 0,0, 0, 0, 255);          -- ベース暗め　背景

-- 書き文字エントリー
ct = entryEffectLife( spep_4, 10014, 40, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(spep_4, ct, 99, 20);
setEffScaleKey( spep_4, ct, 2.4, 2.4);
setEffRotateKey(spep_4, ct, -70);
setEffAlphaKey(spep_4, ct, 255);
setEffAlphaKey(spep_4+40, ct, 255);

ct = entryEffectLife( spep_4+45, 10006, 45, 0x80, -1, 0, 0, 255); -- ギャン
setEffShake(spep_4+45, ct, 99, 20);
setEffScaleKey( spep_4+45, ct, 0.1, 0.1);
setEffScaleKey( spep_4+77, ct, 2.4, 2.4);
setEffScaleKey( spep_4+90, ct, 2.8, 2.8);
setEffAlphaKey(spep_4+45, ct, 255);
setEffAlphaKey(spep_4+70, ct, 255);
setEffAlphaKey(spep_4+90, ct, 0);

playSe( spep_4+48, 1024);

entryFade( spep_4+92, 5, 10, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp( spep_4+90, 1, 0);

removeAllEffect(spep_4+95);

spep_5=spep_4+92+10 --410 469

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 303; --エンドフェイズのフレーム数を置き換える

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
setEffScaleKey( spep_5, bakuhatu, -1, 1);

playSe( spep_5+4, SE_07);
shuchusen = entryEffectLife( spep_5+4, 906, 116, 0x00,  -1, 0,  0,  0);   -- 集中線

-- ダメージ表示
dealDamage(spep_5+17);

entryFade( spep_5+120, 5,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_5+120);

end
