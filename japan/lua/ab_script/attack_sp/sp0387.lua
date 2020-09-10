print ("[lua]sp1119");

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SP_01 = 150721;--ef_001
SP_02 = 150722;--ef_002
SP_03 = 150723;--ef_003
SP_04 = 150724;--ef_004
SP_05 = 150725;--ef_005
SP_06 = 150726;--ef_006
SP_07 = 150727;--ef_007

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
SE_13 = 1042; --!?

SE_205 = 205;
SE_208 = 208;


multi_frm = 2;
------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

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
--月見120
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

-- ** キャラクター ** --
setVisibleUI( 0, 0);
changeAnime( 0, 0, 0); -- 立ち
setDisp( 0, 0, 1);
setDisp( 0, 1, 0); --敵非表示



-- ** 背景フェード ** --
entryFadeBg( 0, 0, 40, 0, 0, 0, 0, 200); -- ベース暗め　背景

-- ** オーラエフェクト ** --
ef = entryEffect( 0, SP_01, 0x100, -1, 0, 0, 0); --
setEffMoveKey( 0, ef, 0, 0, 0);
setEffScaleKey( 0, ef, 1.0, 1.0);
setEffAlphaKey( 0, ef, 255);
setEffRotateKey( 0, ef, 0);

-- ** 集中線 ** --
shuchusen = entryEffectLife( 0, 906, 118, 0x100,  -1, 0,  190,  0);   -- 集中線
setEffMoveKey( 0, shuchusen, 0, 150, 0);
setEffScaleKey( 0, shuchusen, 1.5, 1.5);
setEffAlphaKey( 0, shuchusen, 255);
setEffRotateKey( 0, shuchusen, 0);

-- ** くろ背景 ** --
entryFadeBg(   0, 0, 120, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** ホワイトフェード ** --
entryFade( 112, 5, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( 15, 48);


------------------------------------------------------
--変身220
------------------------------------------------------
spep_1 = 120;


-- ** 背景フェード ** --
entryFadeBg( spep_1, 0, 40, 0, 0, 0, 0, 200); -- ベース暗め　背景

-- ** オーラエフェクト ** --
ef1 = entryEffect( spep_1, SP_02, 0x100, -1, 0, 0, 0); --
setEffMoveKey( spep_1, ef1, 0, 0, 0);
setEffScaleKey( spep_1, ef1, 1.0, 1.0);
setEffAlphaKey( spep_1, ef1, 255);
setEffRotateKey( spep_1, ef1, 0);

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_1+83, 906, 137, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey( spep_1+83, shuchusen1, 0, 0, 0);
setEffScaleKey( spep_1+83, shuchusen1, 1.2, 1.2);
setEffAlphaKey( spep_1+83, shuchusen1, 255);
setEffRotateKey( spep_1+83, shuchusen1, 0);


-- ** ホワイトフェード ** --
entryFade( spep_1+210, 3, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_1, 1018);
playSe( spep_1+55, 1042);
playSe( spep_1+90, 1021);--1022--1066

------------------------------------------------------
-- カットイン(100F)
------------------------------------------------------

spep_2 = spep_1+220;

-- ** 背景 ** --
entryFadeBg( spep_2, 0, 90, 0, 10, 10, 10, 180); -- ベース暗め　背景


-- ** オーラエフェクト ** --
ef2 = entryEffect( spep_2, SP_03, 0x100, -1, 0, 0, 0); --
setEffMoveKey( spep_2, ef2, 0, 0, 0);
setEffScaleKey( spep_2, ef2, 1.0, 1.0);
setEffAlphaKey( spep_2, ef2, 255);
setEffRotateKey( spep_2, ef2, 0);


-- ** 集中線 ** --
entryEffectLife( spep_2, 906, 90, 0x100, -1, 0, 0, 0); -- 集中線3


-- ** 顔＆セリフカットイン ** --
speff = entryEffect( spep_2, 1504, 0, -1, 0, 0, 0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                     -- カットイン差し替え
speff = entryEffect( spep_2, 1505, 0, -1, 0, 0, 0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                     -- セリフ差し替え

-- ** 書き文字エントリー ** --
gogogo = entryEffectLife( spep_2+13, 190006, 73, 0x100, -1, 0, 0, 520); -- ゴゴゴゴゴ
setEffScaleKey( spep_2+13, gogogo, 0.7, 0.7);


-- ** 音 ** --
playSe( spep_2, SE_05);

-- ** ホワイトフェード ** --
entryFade( spep_2+80, 5, 15, 5, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade


------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
spep_3 = spep_2+100;
--[[
speff3 = entryEffect( spep_3, 1507, 0x80, -1, 0, 0, 0); -- カード
--setEffReplaceTexture( speff3, 1);
setEffReplaceTexture( speff3, 2, 0); -- カード差し替え
setEffReplaceTexture( speff3, 5, 4); -- 技名テクスチャ差し替え

-- ** 集中線 ** --
entryEffectLife( spep_3, 906, 90, 0x100, -1, 0, 0, 0); -- 集中線3

-- ** ホワイトフェード ** --
entryFade( spep_3+83, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_3, SE_04);
]]
-- ** 極限用に調整 ** --
if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    playSe( spep_3, SE_05);
    speff = entryEffect( spep_3, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    
    
    elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    playSe( spep_3, SE_05);
    speff = entryEffect( spep_3, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    
    
    elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    playSe( spep_3, SE_05);
    speff = entryEffect( spep_3, 1121, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    end

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_3 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_3 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_3 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_3 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_3 + 0, shuchusen, 0 );
setEffRotateKey( spep_3 + 90, shuchusen, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen, 255 );
setEffAlphaKey( spep_3 + 90, shuchusen, 255 );

-- ** 音 ** --
--playSe( spep_3 + 0, SE_05 );

--白フェード
entryFade( spep_3 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
------------------------------------------------------
-- ビーム(190f)
------------------------------------------------------

spep_4 = spep_3+90; --530

-- ** 背景 ** --
entryFadeBg( spep_4, 0, 190, 0, 10, 10, 10, 255); -- ベース暗め　背景

-- ** オーラエフェクト ** --
ef4 = entryEffect( spep_4, SP_04, 0x100, -1, 0, 0, 0); --
setEffMoveKey( spep_4, ef4, 0, 0, 0);
setEffScaleKey( spep_4, ef4, 1.0, 1.0);
setEffAlphaKey( spep_4, ef4, 255);
setEffRotateKey( spep_4, ef4, 0);

--spname = entryEffectLife( spep_4, 1508,  55, 0x100,  -1,  0,  0,  0);               -- かめはめ波文字
--setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- ** 流線 ** --
ryusen4 = entryEffectLife( spep_4, 921, 190, 0x80, -1, 0, 0, 0); -- 流線
setEffMoveKey( spep_4, ryusen4, 0, 0, 0);
setEffScaleKey( spep_4, ryusen4, 1.0, 1.0);
setEffAlphaKey( spep_4, ryusen4, 255);
setEffRotateKey( spep_4, ryusen4, 180);


-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_4, 906, 46, 0x100,  -1, 0,  50,  100);   -- 集中線
setEffScaleKey( spep_4, shuchusen4, 1.2, 1.2);
shuchusen4a = entryEffectLife( spep_4+66, 906, 37, 0x100,  -1, 0,  50,  100);   -- 集中線
setEffScaleKey( spep_4, shuchusen4a, 1.2, 1.2);
shuchusen4b = entryEffectLife( spep_4+118, 906, 70, 0x100,  -1, 0,  50,  100);   -- 集中線
setEffScaleKey( spep_4, shuchusen4b, 1.2, 1.2);

-- 書き文字エントリー
ct = entryEffectLife( spep_4+15, 10012, 51, 0, -1, 0, 250, 300); -- ズオッ
setEffShake(spep_4+15, ct, 51, 30);
setEffAlphaKey(spep_4, ct, 255);
setEffAlphaKey(spep_4+64, ct, 255);
setEffAlphaKey(spep_4+65, ct, 0);
setEffScaleKey(spep_4+15, ct, 1.8, 1.8);
setEffRotateKey( spep_4+15, ct, 30);
setEffRotateKey( spep_4+65, ct, 30);

ct2 = entryEffectLife( spep_4+66, 10012, 51, 0, -1, 0, 270, 300); -- ズオッ
setEffShake(spep_4+66, ct2, 51, 30);
setEffAlphaKey(spep_4+66, ct2, 255);
setEffAlphaKey(spep_4+116, ct2, 255);
setEffAlphaKey(spep_4+117, ct2, 0);
setEffScaleKey(spep_4+66, ct2, 1.8, 1.8);
setEffRotateKey( spep_4+66, ct, -20);
setEffRotateKey( spep_4+117, ct, -20);

ct3 = entryEffectLife( spep_4+118, 10012, 70, 0, -1, 0, 270, 0); -- ズオッ
setEffShake(spep_4+118, ct3, 70, 30);
setEffAlphaKey(spep_4+118, ct3, 255);
setEffAlphaKey(spep_4+187, ct3, 255);
setEffAlphaKey(spep_4+188, ct3, 0);
setEffScaleKey(spep_4+118, ct3, 3.0, 3.0);
setEffRotateKey( spep_4+118, ct3, 30);
setEffRotateKey( spep_4+118, ct3, 30);


-- ** 音 ** --
playSe( spep_4+15, 1022);
playSe( spep_4+66, 1022);
SE0=playSe( spep_4+118, 1022);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = 710; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE0, 0 );

    speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え
    
    kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);
    
    pauseAll( SP_dodge, 67);
    
    entryFade(SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
    
    endPhase(SP_dodge+10);
    
    do return end
    else end

-- ** ホワイトフェード ** --
entryFade( spep_4+180, 3, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


------------------------------------------------------
-- ビーム命中(140F)
------------------------------------------------------
spep_5 = spep_4+190; --

changeAnime( spep_5, 1, 118); -- 立ち
setDisp( spep_5, 1, 1);
setMoveKey(  spep_5,    1,  235,  -150,   0);
setMoveKey(  spep_5,    1,  235,  -150,   0);
setScaleKey( spep_5,    1,  1.3, 1.3);
setScaleKey( spep_5+17,    1,  1.3, 1.3);

changeAnime( spep_5+18, 1, 107); -- 立ち
setScaleKey( spep_5+18,    1,  0.6, 0.6);
setScaleKey( spep_5+140,    1,  0.6, 0.6);

setDisp( spep_5+17, 1, 0);

-- ** 背景 ** --
entryFadeBg( spep_5, 0, 140, 0, 10, 10, 10,230); -- ベース暗め　背景

-- ** オーラエフェクト ** --
ef5 = entryEffect( spep_5, SP_05, 0x100, -1, 0, 0, 0); --
setEffMoveKey( spep_5, ef5, 0, 0, 0);
setEffScaleKey( spep_5, ef5, 1.0, 1.0);
setEffAlphaKey( spep_5, ef5, 255);
setEffRotateKey( spep_5, ef5, 0);


-- ** 流線 ** --
ryusen5 = entryEffectLife( spep_5, 921, 140, 0x80, -1, 0, -50, 0); -- 流線
setEffMoveKey( spep_5, ryusen5, -50, 0, 0);
setEffScaleKey( spep_5, ryusen5, 1.6, 1.6);
setEffAlphaKey( spep_5, ryusen5, 255);
setEffRotateKey( spep_5, ryusen5, 210);

-- ** 音 ** --
playSe( spep_5+18, 1024);
playSe( spep_5+36, 1024);--1024
playSe( spep_5+100, 1024);

entryFade( spep_5+135, 5,  5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- ギャン
------------------------------------------------------
spep_6 = spep_5+140; --


gyan = entryEffect( spep_6, 190001,   0x100, -1,  0,  0,  0);   -- ギャン

playSe( spep_6, SE_09);

ctg = entryEffectLife( spep_6, 10006, 70, 0x100, -1, 0, 0, 260); -- ギャン
setEffShake(spep_6, ctg, 99, 20);
setEffScaleKey( spep_6, ctg, 0.1, 0.1);
setEffScaleKey( spep_6+30, ctg, 3.4, 3.4);
setEffScaleKey( spep_6+54, ctg, 3.8, 3.8);
setEffAlphaKey(spep_6, ctg, 255);
setEffAlphaKey(spep_6+50, ctg, 255);
setEffAlphaKey(spep_6+54, ctg, 0);

entryFade( spep_6+50, 5,  13, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp( spep_6+40, 1, 0);

playSe( spep_6+50, SE_09);

removeAllEffect(spep_6+54);

------------------------------------------------------
-- 爆発 (180F)
------------------------------------------------------
spep_7 = spep_6+60; --


bakuhatu = entryEffect( spep_7+8, SP_06,  0x100,  -1,  0,  0,  0);  
setEffScaleKey( spep_7+8, bakuhatu, 1.0, 1.0);

setDisp( spep_7, 1, 0);

playSe( spep_7+4, SE_10);
playSe( spep_7+90, 1034);



-- ダメージ表示
dealDamage(spep_7+16);

entryFade( spep_7+170, 9,  15, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_7+180);

else

------------------------------------------------------
--反転敵
------------------------------------------------------
-- ** キャラクター ** --
setVisibleUI( 0, 0);
changeAnime( 0, 0, 0); -- 立ち
setDisp( 0, 0, 1);
setDisp( 0, 1, 0); --敵非表示



-- ** 背景フェード ** --
entryFadeBg( 0, 0, 40, 0, 0, 0, 0, 200); -- ベース暗め　背景

-- ** オーラエフェクト ** --
ef = entryEffect( 0, SP_01, 0x100, -1, 0, 0, 0); --
setEffMoveKey( 0, ef, 0, 0, 0);
setEffScaleKey( 0, ef, -1.0, 1.0);
setEffAlphaKey( 0, ef, 255);
setEffRotateKey( 0, ef, 0);

-- ** 集中線 ** --
shuchusen = entryEffectLife( 0, 906, 118, 0x100,  -1, 0,  190,  0);   -- 集中線
setEffMoveKey( 0, shuchusen, 0, 150, 0);
setEffScaleKey( 0, shuchusen, 1.5, 1.5);
setEffAlphaKey( 0, shuchusen, 255);
setEffRotateKey( 0, shuchusen, 0);


-- ** ホワイトフェード ** --
entryFade( 112, 5, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( 15, 48);

-- ** くろ背景 ** --
entryFadeBg(   0, 0, 120, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
--変身220
------------------------------------------------------
spep_1 = 120;


-- ** 背景フェード ** --
entryFadeBg( spep_1, 0, 40, 0, 0, 0, 0, 200); -- ベース暗め　背景

-- ** オーラエフェクト ** --
ef1 = entryEffect( spep_1, SP_07, 0x100, -1, 0, 0, 0); --
setEffMoveKey( spep_1, ef1, 0, 0, 0);
setEffScaleKey( spep_1, ef1, 1.0, 1.0);
setEffAlphaKey( spep_1, ef1, 255);
setEffRotateKey( spep_1, ef1, 0);

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_1+83, 906, 137, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey( spep_1+83, shuchusen1, 0, 0, 0);
setEffScaleKey( spep_1+83, shuchusen1, 1.2, 1.2);
setEffAlphaKey( spep_1+83, shuchusen1, 255);
setEffRotateKey( spep_1+83, shuchusen1, 0);


-- ** ホワイトフェード ** --
entryFade( spep_1+210, 3, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_1, 1018);
playSe( spep_1+55, 1042);
playSe( spep_1+90, 1021);--1022--1066

------------------------------------------------------
-- カットイン(100F)
------------------------------------------------------

spep_2 = spep_1+220;

-- ** 背景 ** --
entryFadeBg( spep_2, 0, 90, 0, 10, 10, 10, 180); -- ベース暗め　背景


-- ** オーラエフェクト ** --
ef2 = entryEffect( spep_2, SP_03, 0x100, -1, 0, 0, 0); --
setEffMoveKey( spep_2, ef2, 0, 0, 0);
setEffScaleKey( spep_2, ef2, 1.0, 1.0);
setEffAlphaKey( spep_2, ef2, 255);
setEffRotateKey( spep_2, ef2, 0);


-- ** 集中線 ** --
entryEffectLife( spep_2, 906, 90, 0x100, -1, 0, 0, 0); -- 集中線3

--[[
-- ** 顔＆セリフカットイン ** --
speff = entryEffect( spep_2, 1504, 0, -1, 0, 0, 0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                     -- カットイン差し替え
speff = entryEffect( spep_2, 1505, 0, -1, 0, 0, 0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                     -- セリフ差し替え
]]--
-- ** 書き文字エントリー ** --
gogogo = entryEffectLife( spep_2+13, 190006, 73, 0x100, -1, 0, 0, 480); -- ゴゴゴゴゴ
setEffScaleKey( spep_2+13, gogogo, -0.7, 0.7);


-- ** 音 ** --
playSe( spep_2, SE_05);

-- ** ホワイトフェード ** --
entryFade( spep_2+80, 5, 15, 5, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade


------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
spep_3 = spep_2+100;
------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
spep_3 = spep_2+100;
--[[
speff3 = entryEffect( spep_3, 1507, 0x80, -1, 0, 0, 0); -- カード
--setEffReplaceTexture( speff3, 1);
setEffReplaceTexture( speff3, 2, 0); -- カード差し替え
setEffReplaceTexture( speff3, 5, 4); -- 技名テクスチャ差し替え

-- ** 集中線 ** --
entryEffectLife( spep_3, 906, 90, 0x100, -1, 0, 0, 0); -- 集中線3

-- ** ホワイトフェード ** --
entryFade( spep_3+83, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_3, SE_04);
]]
-- ** 極限用に調整 ** --
if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    playSe( spep_3, SE_05);
    speff = entryEffect( spep_3, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    
    
    elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    playSe( spep_3, SE_05);
    speff = entryEffect( spep_3, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    
    
    elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    playSe( spep_3, SE_05);
    speff = entryEffect( spep_3, 1121, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    end

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_3 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_3 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_3 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_3 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_3 + 0, shuchusen, 0 );
setEffRotateKey( spep_3 + 90, shuchusen, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen, 255 );
setEffAlphaKey( spep_3 + 90, shuchusen, 255 );

-- ** 音 ** --
--playSe( spep_3 + 0, SE_05 );

--白フェード
entryFade( spep_3 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

------------------------------------------------------
-- ビーム(190f)
------------------------------------------------------

spep_4 = spep_3+90; --530

-- ** 背景 ** --
entryFadeBg( spep_4, 0, 190, 0, 10, 10, 10, 255); -- ベース暗め　背景

-- ** オーラエフェクト ** --
ef4 = entryEffect( spep_4, SP_04, 0x100, -1, 0, 0, 0); --
setEffMoveKey( spep_4, ef4, 0, 0, 0);
setEffScaleKey( spep_4, ef4, 1.0, 1.0);
setEffAlphaKey( spep_4, ef4, 255);
setEffRotateKey( spep_4, ef4, 0);

--spname = entryEffectLife( spep_4, 1508,  55, 0x100,  -1,  0,  0,  0);               -- かめはめ波文字
--setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- ** 流線 ** --
ryusen4 = entryEffectLife( spep_4, 921, 190, 0x80, -1, 0, 0, 0); -- 流線
setEffMoveKey( spep_4, ryusen4, 0, 0, 0);
setEffScaleKey( spep_4, ryusen4, 1.0, 1.0);
setEffAlphaKey( spep_4, ryusen4, 255);
setEffRotateKey( spep_4, ryusen4, 180);


-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_4, 906, 46, 0x100,  -1, 0,  50,  100);   -- 集中線
setEffScaleKey( spep_4, shuchusen4, 1.2, 1.2);
shuchusen4a = entryEffectLife( spep_4+66, 906, 37, 0x100,  -1, 0,  50,  100);   -- 集中線
setEffScaleKey( spep_4, shuchusen4a, 1.2, 1.2);
shuchusen4b = entryEffectLife( spep_4+118, 906, 70, 0x100,  -1, 0,  50,  100);   -- 集中線
setEffScaleKey( spep_4, shuchusen4b, 1.2, 1.2);

-- 書き文字エントリー
ct = entryEffectLife( spep_4+15, 10012, 51, 0, -1, 0, 250, 300); -- ズオッ
setEffShake(spep_4+15, ct, 51, 30);
setEffAlphaKey(spep_4, ct, 255);
setEffAlphaKey(spep_4+64, ct, 255);
setEffAlphaKey(spep_4+65, ct, 0);
setEffScaleKey(spep_4+15, ct, 1.8, 1.8);
setEffRotateKey( spep_4+15, ct, 30);
setEffRotateKey( spep_4+65, ct, 30);

ct2 = entryEffectLife( spep_4+66, 10012, 51, 0, -1, 0, 270, 300); -- ズオッ
setEffShake(spep_4+66, ct2, 51, 30);
setEffAlphaKey(spep_4+66, ct2, 255);
setEffAlphaKey(spep_4+116, ct2, 255);
setEffAlphaKey(spep_4+117, ct2, 0);
setEffScaleKey(spep_4+66, ct2, 1.8, 1.8);
setEffRotateKey( spep_4+66, ct, -20);
setEffRotateKey( spep_4+117, ct, -20);

ct3 = entryEffectLife( spep_4+118, 10012, 70, 0, -1, 0, 270, 0); -- ズオッ
setEffShake(spep_4+118, ct3, 70, 30);
setEffAlphaKey(spep_4+118, ct3, 255);
setEffAlphaKey(spep_4+187, ct3, 255);
setEffAlphaKey(spep_4+188, ct3, 0);
setEffScaleKey(spep_4+118, ct3, 3.0, 3.0);
setEffRotateKey( spep_4+118, ct3, 30);
setEffRotateKey( spep_4+118, ct3, 30);


-- ** 音 ** --
playSe( spep_4+15, 1022);
playSe( spep_4+66, 1022);
SE0=playSe( spep_4+118, 1022);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = 710; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE0, 0 );

    speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え
    
    kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);
    
    pauseAll( SP_dodge, 67);
    
    entryFade(SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
    
    endPhase(SP_dodge+10);
    
    do return end
    else end

-- ** ホワイトフェード ** --
entryFade( spep_4+180, 3, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


------------------------------------------------------
-- ビーム命中(140F)
------------------------------------------------------
spep_5 = spep_4+190; --

changeAnime( spep_5, 1, 118); -- 立ち
setDisp( spep_5, 1, 1);
setMoveKey(  spep_5,    1,  235,  -150,   0);
setMoveKey(  spep_5,    1,  235,  -150,   0);
setScaleKey( spep_5,    1,  1.3, 1.3);
setScaleKey( spep_5+17,    1,  1.3, 1.3);

changeAnime( spep_5+18, 1, 107); -- 立ち
setScaleKey( spep_5+18,    1,  0.6, 0.6);
setScaleKey( spep_5+140,    1,  0.6, 0.6);

setDisp( spep_5+17, 1, 0);

-- ** 背景 ** --
entryFadeBg( spep_5, 0, 140, 0, 10, 10, 10,230); -- ベース暗め　背景

-- ** オーラエフェクト ** --
ef5 = entryEffect( spep_5, SP_05, 0x100, -1, 0, 0, 0); --
setEffMoveKey( spep_5, ef5, 0, 0, 0);
setEffScaleKey( spep_5, ef5, 1.0, 1.0);
setEffAlphaKey( spep_5, ef5, 255);
setEffRotateKey( spep_5, ef5, 0);


-- ** 流線 ** --
ryusen5 = entryEffectLife( spep_5, 921, 140, 0x80, -1, 0, -50, 0); -- 流線
setEffMoveKey( spep_5, ryusen5, -50, 0, 0);
setEffScaleKey( spep_5, ryusen5, 1.6, 1.6);
setEffAlphaKey( spep_5, ryusen5, 255);
setEffRotateKey( spep_5, ryusen5, 210);

-- ** 音 ** --
playSe( spep_5+18, 1024);
playSe( spep_5+36, 1024);--1024
playSe( spep_5+100, 1024);

entryFade( spep_5+135, 5,  5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- ギャン
------------------------------------------------------
spep_6 = spep_5+140; --


gyan = entryEffect( spep_6, 190001,   0x100, -1,  0,  0,  0);   -- ギャン

playSe( spep_6, SE_09);

ctg = entryEffectLife( spep_6, 10006, 70, 0x100, -1, 0, 0, 260); -- ギャン
setEffShake(spep_6, ctg, 99, 20);
setEffScaleKey( spep_6, ctg, 0.1, 0.1);
setEffScaleKey( spep_6+30, ctg, 3.4, 3.4);
setEffScaleKey( spep_6+54, ctg, 3.8, 3.8);
setEffAlphaKey(spep_6, ctg, 255);
setEffAlphaKey(spep_6+50, ctg, 255);
setEffAlphaKey(spep_6+54, ctg, 0);

entryFade( spep_6+50, 5,  13, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp( spep_6+40, 1, 0);

playSe( spep_6+50, SE_09);

removeAllEffect(spep_6+54);

------------------------------------------------------
-- 爆発 (180F)
------------------------------------------------------
spep_7 = spep_6+60; --


bakuhatu = entryEffect( spep_7+8, SP_06,  0x100,  -1,  0,  0,  0);  
setEffScaleKey( spep_7+8, bakuhatu, 1.0, 1.0);

setDisp( spep_7, 1, 0);

playSe( spep_7+4, SE_10);
playSe( spep_7+90, 1034);



-- ダメージ表示
dealDamage(spep_7+16);

entryFade( spep_7+170, 9,  15, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_7+180);

end
