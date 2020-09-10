print ("[lua]sp0386");

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SP_01 = 150694;--溜め
SP_02 = 150695;--エネルギー弾溜め
SP_03 = 150696;--エネルギー弾溜め2
SP_04 = 150697;--エネルギー弾
SP_05 = 150698;--構え→投げる

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
SE_13 = 15;
multi_frm = 2;

changeAnime( 0, 0, 0);                       -- 立ち
setDisp( 0, 1, 0);
setDisp( 0, 0, 0);

setMoveKey( 0, 0,    0, -54,   0);
setMoveKey( 1, 0,    0, -54,   0);

setScaleKey( 0,   0, 1.5, 1.5);
setScaleKey( 1,   0, 1.5, 1.5);
setRotateKey( 0,  1,  0 );
setRotateKey( 1,  1,  0 );

------------------------------------------------------
--溜め
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

setVisibleUI(5, 0);

-- ** フェード ** --
--entryFade( 0, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( 5, 0, 100, 0, 10, 10, 10, 180);       -- ベース暗め　背景


-- ** キャラクター ** --
setDisp( 5, 0, 0);
setMoveKey( 5, 0,    -2000, -54,   0);

-- ** エフェクト ** --
tame = entryEffect(  5,   SP_01,   0x80,     -1,  0,  0,  0);--導入
setEffMoveKey(5, tame, 0, 0, 0);
setEffScaleKey( 5, tame, 1.0, 1.0);
setEffAlphaKey( 5, tame, 255);
setEffRotateKey( 5, tame, 0);

-- ** 集中線 ** --
shuchusen = entryEffectLife( 5, 906, 95, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey(5, shuchusen, 0, 0, 0);
setEffScaleKey( 5, shuchusen, 1.2, 1.2);
setEffAlphaKey( 5, shuchusen, 255);
setEffRotateKey( 5, shuchusen, 0);

-- ** カットイン ** --
speff = entryEffect(  5,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  5,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( 18, 190006, 85, 0x100, -1, 0, 0, 500);    -- ゴゴゴゴ
setEffScaleKey(5, ctgogo, 0.7, 0.7);
setEffRotateKey(5, ctgogo, 10);
setEffAlphaKey( 5, ctgogo, 255);

-- ** 音 ** --
playSe( 5, SE_04);

-- ** ホワイトフェード ** --
entryFade( 88, 3, 13, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- みんなからの元気(100F)
------------------------------------------------------

spep_1 = 100;

entryFadeBg( spep_1, 0, 290, 0, 10, 10, 10, 180);       -- ベース暗め　背景

-- ** エフェクト ** --
minna = entryEffectLife( spep_1, SP_02, 278, 0, -1, 0, 0, 0);--導入
setEffMoveKey( spep_1, minna, 0, 0, 0);
setEffScaleKey( spep_1, minna, 1.0, 1.0);
setEffAlphaKey( spep_1, minna, 255);
setEffRotateKey( spep_1, minna, 0);

-- ** 音 ** --
seID1=playSe( spep_1,SE_13);
seID2=playSe( spep_1+50,SE_13);
seID3=playSe( spep_1+90,SE_13);
seID4=playSe( spep_1+120,SE_13);
seID5=playSe( spep_1+140,SE_13);
seID6=playSe( spep_1+200,SE_13);
seID7=playSe( spep_1+240,SE_13);
stopSe( spep_1+46, seID1, 20);
stopSe( spep_1+96, seID2, 20);
stopSe( spep_1+136, seID3, 20);
stopSe( spep_1+166, seID4, 20);
stopSe( spep_1+186, seID5, 20);
stopSe( spep_1+246, seID6, 20);
stopSe( spep_1+266, seID7, 40);
--stopSe( spep_1+260, seID7, 0);

-- ** ホワイトフェード ** --
entryFade( spep_1+260, 18, 3, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade280


------------------------------------------------------
-- エネルギー弾溜め2(288F)
------------------------------------------------------

spep_2 = spep_1+278;--288

-- ** フェード ** --
entryFadeBg( spep_2, 0, 180, 0, 10, 10, 10, 180);       -- ベース暗め　背景
entryFadeBg( spep_2, 0, 45, 30, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** エフェクト ** --
morau = entryEffect( spep_2, SP_03, 0, -1, 0, 0, 0);--導入
setEffMoveKey( spep_2, morau, 0, 0, 0);
setEffScaleKey( spep_2, morau, 1.0, 1.0);
setEffAlphaKey( spep_2, morau, 255);
setEffRotateKey( spep_2, morau, 0);

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_2, 906, 180, 0x100, -1, 0, 0, 0); -- 集中線
setEffMoveKey( spep_2, shuchusen2, 0, 0, 0);
setEffRotateKey( spep_2, shuchusen2, 0);
setEffScaleKey( spep_2, shuchusen2, 1.4, 1.4);
setEffAlphaKey( spep_2, shuchusen2, 255);

-- ** 音 ** --
playSe( spep_2+50, SE_03);
playSe( spep_2+75, SE_03); 
playSe( spep_2+100, SE_03);  
playSe( spep_2+125, SE_03);  
playSe( spep_2+150, SE_03);

-- ** ホワイトフェード ** --
entryFade( spep_2+174, 3, 5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- カードカットイン(570F)
------------------------------------------------------
spep_3 = spep_2+182;

-- ** フェード ** --
entryFadeBg( spep_3, 0, 100, 0, 10, 10, 10, 180);          -- ベース暗め　背景
--[[
speff = entryEffect( spep_3,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え
]]
-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_3+1, 906, 85, 0x100,  -1, 0,  0,  0);   -- 集中線3
setEffMoveKey( spep_3+1, shuchusen3, 0, 0, 0);
setEffScaleKey( spep_3+1, shuchusen3, 1.2, 1.2);
setEffAlphaKey( spep_3+1, shuchusen3, 255);
setEffRotateKey( spep_3+1, shuchusen3, 0);


-- ** 極限用 ** --
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
    
-- ** ホワイトフェード ** --
entryFade( spep_3+85, 3, 10, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 音 ** --
--playSe( spep_3, SE_05);

------------------------------------------------------
-- 元気玉発射(F)
------------------------------------------------------
spep_4 = spep_3+98;

-- ** フェード ** --
entryFadeBg( spep_4-1, 0, 117, 0, 0, 0, 0, 255);
entryFadeBg( spep_4, 0, 38, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white
entryFadeBg( spep_4+38, 0, 10, 0, 78, 252, 241, 150);     -- blue
entryFadeBg( spep_4+55, 10, 0, 10, 78, 252, 241, 150);     -- blue
entryFadeBg( spep_4+86, 8, 2, 5, 78, 252, 241, 150);     -- blue

-- ** エフェクト ** --
hassya = entryEffect( spep_4, SP_04, 0, -1, 0, 0, 0);--導入
setEffMoveKey( spep_4, hassya, 0, 0, 0);
setEffScaleKey( spep_4, hassya, 1.0, 1.0);
setEffAlphaKey( spep_4, hassya, 255);
setEffRotateKey( spep_4, hassya, 0);
setDisp( spep_4, 0, 1);

-- ** キャラクター ** --
changeAnime( spep_4, 0, 31);     -- かめはめ発射ポーズ
setMoveKey( spep_4-1, 0, -550, 400, 0);
setMoveKey( spep_4+4, 0, -225, 250, 0);
setMoveKey( spep_4+8, 0, -100, 150, 0);
setMoveKey( spep_4+10, 0, -100, 150, 0);

setScaleKey( spep_4, 0, 0.8, 0.8);
setScaleKey( spep_4+100, 0, 0.8, 0.8);

setMoveKey( spep_4+64, 0, -550, 300, 70);
setMoveKey( spep_4+75, 0, -900, 350, 120);

setShakeChara( spep_4, 0, 64, 12);

-- ** 奥行き流線斜め ** --
sen2 = entryEffectLife( spep_4, 921, 109, 0x80,  -1,  0,  0,  0); -- 奥行き流線斜め
setEffRotateKey( spep_4, sen2, 190);
setEffScaleKey( spep_4, sen2, 1.3, 1.3);

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_4, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線4
setEffScaleKey( spep_4, shuchusen4, 1.0, 1.0);
setEffScaleKey( spep_4+40, shuchusen4, 1.0, 1.0);
setEffScaleKey( spep_4+49, shuchusen4, 2.0, 2.0);

-- 書き文字エントリー
ctzuo = entryEffectLife( spep_4+4, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake( spep_4+4, ctzuo, 32, 15);
setEffAlphaKey( spep_4+4, ctzuo, 255);
setEffAlphaKey( spep_4+26, ctzuo, 255);
setEffAlphaKey( spep_4+36, ctzuo, 0);
setEffScaleKey( spep_4+4, ctzuo, 0.5, 0.5);
setEffScaleKey( spep_4+7, ctzuo, 2.5, 2.5);
setEffScaleKey( spep_4+26, ctzuo, 2.5, 2.5);
setEffScaleKey( spep_4+36, ctzuo, 6.5, 6.5);
setEffRotateKey( spep_4+4, ctzuo, 30);

-- ** 音 ** --
playSe( spep_4, SE_07);
se01 = playSe( spep_4+40, SE_07);

-- ** ホワイトフェード ** --
entryFade( spep_4+103, 8, 10, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 元気玉向かう(F)
------------------------------------------------------
spep_5 = spep_4+120;

-- ** フェード ** --
entryFadeBg( spep_5, 0, 200, 0, 0, 0, 0, 180);          -- ベース暗め　背景

-- ** エフェクト ** --
gyann = entryEffect(  spep_5,   SP_05,   0x80,     -1,  0,  0,  0);--導入
setEffMoveKey(spep_5, gyann, 0, 0, 0);
setEffScaleKey( spep_5, gyann, 1.0, 1.0);
setEffAlphaKey( spep_5, gyann, 255);
setEffRotateKey( spep_5, gyann, 0);

-- ** キャラクター ** --
setDisp( spep_5, 0, 0);
setDisp( spep_5, 1, 1);
changeAnime( spep_5-1, 1, 118);                        -- 気ダメ後ろ

setMoveKey( spep_5-2, 1, 120, 0, 0);
setMoveKey( spep_5-1, 1, 400, -400, 0);
setMoveKey( spep_5, 1, 400, -400, 0);
setMoveKey( spep_5+30, 1, 120, -270, 0);

setScaleKey( spep_5-1, 1, 1.5, 1.5);
setScaleKey( spep_5+75, 1, 1.5, 1.5);

setDisp( spep_5+75, 1, 0);

-- ** 流線 ** --
ryusen = entryEffectLife( spep_5-1, 921, 70, 0x80,  -1,  0,  0,  0, -1000 ); -- 流線斜め
setEffRotateKey( spep_5-1, ryusen, 220);
setEffScaleKey( spep_5-1, ryusen, 1.6, 1.6);

setDamage( spep_5+82, 1, 0);  -- ダメージ振動等

-- ** 音 ** --
seID = playSe( spep_5+20, SE_06);
playSe( spep_5+85, SE_09);

-- ** エフェクト等 ** --
setShakeChara( spep_5, 1, 99, 20);

-- 書き文字エントリー
ctzudodo = entryEffectLife( spep_5, 10014, 75, 0, -1, 0, 100, 355); -- ズドドッ
setEffShake(spep_5, ctzudodo, 99, 20);
setEffScaleKey( spep_5, ctzudodo, 3, 3);
setEffRotateKey(spep_5, ctzudodo, 70);
setEffAlphaKey(spep_5, ctzudodo, 255);
setEffAlphaKey(spep_5+65, ctzudodo, 255);
setEffAlphaKey(spep_5+75, ctzudodo, 0);

-- ** ホワイトフェード ** --
entryFade( spep_5+70, 5, 5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_5+127, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
gyan = entryEffectLife( spep_5+77, 10006, 45, 0x100, -1, 0, 0, 255); -- ギャン
setEffShake( spep_5+77, gyan, 99, 20);
setEffScaleKey( spep_5+77, gyan, 0.1, 0.1);
setEffScaleKey( spep_5+90, gyan, 2.4, 2.4);
setEffScaleKey( spep_5+100, gyan, 2.8, 2.8);
setEffAlphaKey( spep_5+77, gyan, 255);
setEffAlphaKey( spep_5+110, gyan, 255);
setEffAlphaKey( spep_5+125, gyan, 0);


------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 810; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);
stopSe( SP_dodge-12, seID, 0);
stopSe( SP_dodge-12, se01, 0);

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


------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

spep_6 = spep_5+137;

entryFade( spep_6-5, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_6, 0, 70, 0, 10, 10, 10, 255);          -- ベース暗め　背景

-- ** エフェクト等 ** --
bakuhatu = entryEffect( spep_6, 1551, 0, -1,  0,  0,  0);--導入
setEffMoveKey(spep_6, bakuhatu, 0, 0, 0);
setEffScaleKey( spep_6, bakuhatu, 1.1, 1.1);
setEffAlphaKey( spep_6, bakuhatu, 255);
setEffRotateKey( spep_6, bakuhatu, 0);

-- ** 音 ** --
playSe( spep_6+4, SE_07);

-- ダメージ表示
dealDamage(spep_6+16);

--entryFade( spep_6+130, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_6+130);

-----------------------
--各変数のフレーム数
-----------------------
--spep_1 = 100;
--spep_2 = spep_1+288; = 388
--spep_3 = spep_2+182; = 570
--spep_4 = spep_3+98; = 668
--spep_5 = spep_4+120; = 788
--spep_6 = spep_5+137; = 925

else

------------------------------------------------------
--敵
------------------------------------------------------
------------------------------------------------------
--溜め
------------------------------------------------------

setVisibleUI(5, 0);

-- ** フェード ** --
--entryFade( 0, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( 5, 0, 100, 0, 10, 10, 10, 180);       -- ベース暗め　背景


-- ** キャラクター ** --
setDisp( 5, 0, 0);
setMoveKey( 5, 0,    -2000, -54,   0);

-- ** エフェクト ** --
tame = entryEffect(  5,   SP_01,   0x80,     -1,  0,  0,  0);--導入
setEffMoveKey(5, tame, 0, 0, 0);
setEffScaleKey( 5, tame, -1.0, 1.0);
setEffAlphaKey( 5, tame, 255);
setEffRotateKey( 5, tame, 0);

-- ** 集中線 ** --
shuchusen = entryEffectLife( 5, 906, 95, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey(5, shuchusen, 0, 0, 0);
setEffScaleKey( 5, shuchusen, 1.2, 1.2);
setEffAlphaKey( 5, shuchusen, 255);
setEffRotateKey( 5, shuchusen, 0);


--[[
-- ** カットイン ** --
speff = entryEffect(  5,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  5,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
]]--

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( 18, 190006, 85, 0x100, -1, 0, 0, 500);    -- ゴゴゴゴ
setEffScaleKey(5, ctgogo, -0.7, 0.7);
setEffRotateKey(5, ctgogo, 10);
setEffAlphaKey( 5, ctgogo, 255);

-- ** 音 ** --
playSe( 5, SE_04);

-- ** ホワイトフェード ** --
entryFade( 88, 3, 13, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- みんなからの元気(100F)
------------------------------------------------------

spep_1 = 100;

entryFadeBg( spep_1, 0, 290, 0, 10, 10, 10, 180);       -- ベース暗め　背景

-- ** エフェクト ** --
minna = entryEffectLife( spep_1, SP_02, 278, 0, -1, 0, 0, 0);--導入
setEffMoveKey( spep_1, minna, 0, 0, 0);
setEffScaleKey( spep_1, minna, -1.0, 1.0);
setEffAlphaKey( spep_1, minna, 255);
setEffRotateKey( spep_1, minna, 0);

-- ** 音 ** --
seID1=playSe( spep_1,SE_13);
seID2=playSe( spep_1+50,SE_13);
seID3=playSe( spep_1+90,SE_13);
seID4=playSe( spep_1+120,SE_13);
seID5=playSe( spep_1+140,SE_13);
seID6=playSe( spep_1+200,SE_13);
seID7=playSe( spep_1+240,SE_13);
stopSe( spep_1+46, seID1, 20);
stopSe( spep_1+96, seID2, 20);
stopSe( spep_1+136, seID3, 20);
stopSe( spep_1+166, seID4, 20);
stopSe( spep_1+186, seID5, 20);
stopSe( spep_1+246, seID6, 20);
stopSe( spep_1+266, seID7, 40);
--stopSe( spep_1+260, seID7, 0);

-- ** ホワイトフェード ** --
entryFade( spep_1+260, 18, 3, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade280


------------------------------------------------------
-- エネルギー弾溜め2(288F)
------------------------------------------------------

spep_2 = spep_1+278;--288

-- ** フェード ** --
entryFadeBg( spep_2, 0, 180, 0, 10, 10, 10, 180);       -- ベース暗め　背景
entryFadeBg( spep_2, 0, 45, 30, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** エフェクト ** --
morau = entryEffect( spep_2, SP_03, 0, -1, 0, 0, 0);--導入
setEffMoveKey( spep_2, morau, 0, 0, 0);
setEffScaleKey( spep_2, morau, -1.0, 1.0);
setEffAlphaKey( spep_2, morau, 255);
setEffRotateKey( spep_2, morau, 0);

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_2, 906, 180, 0x100, -1, 0, 0, 0); -- 集中線
setEffMoveKey( spep_2, shuchusen2, 0, 0, 0);
setEffRotateKey( spep_2, shuchusen2, 0);
setEffScaleKey( spep_2, shuchusen2, 1.4, 1.4);
setEffAlphaKey( spep_2, shuchusen2, 255);

-- ** 音 ** --
playSe( spep_2+50, SE_03);
playSe( spep_2+75, SE_03); 
playSe( spep_2+100, SE_03);  
playSe( spep_2+125, SE_03);  
playSe( spep_2+150, SE_03);

-- ** ホワイトフェード ** --
entryFade( spep_2+174, 3, 5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- カードカットイン(570F)
------------------------------------------------------
spep_3 = spep_2+182;

-- ** フェード ** --
entryFadeBg( spep_3, 0, 100, 0, 10, 10, 10, 180);          -- ベース暗め　背景
--[[
speff = entryEffect( spep_3,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え
]]

-- ** 極限用 ** --
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
shuchusen3 = entryEffectLife( spep_3+1, 906, 85, 0x100,  -1, 0,  0,  0);   -- 集中線3
setEffMoveKey( spep_3+1, shuchusen3, 0, 0, 0);
setEffScaleKey( spep_3+1, shuchusen3, 1.2, 1.2);
setEffAlphaKey( spep_3+1, shuchusen3, 255);
setEffRotateKey( spep_3+1, shuchusen3, 0);

-- ** ホワイトフェード ** --
entryFade( spep_3+85, 3, 10, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 音 ** --
--playSe( spep_3, SE_05);

------------------------------------------------------
-- 元気玉発射(F)
------------------------------------------------------
spep_4 = spep_3+98;

-- ** フェード ** --
entryFadeBg( spep_4-1, 0, 117, 0, 0, 0, 0, 255);
entryFadeBg( spep_4, 0, 38, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white
entryFadeBg( spep_4+38, 0, 10, 0, 78, 252, 241, 150);     -- blue
entryFadeBg( spep_4+55, 10, 0, 10, 78, 252, 241, 150);     -- blue
entryFadeBg( spep_4+86, 8, 2, 5, 78, 252, 241, 150);     -- blue

-- ** エフェクト ** --
hassya = entryEffect( spep_4, SP_04, 0, -1, 0, 0, 0);--導入
setEffMoveKey( spep_4, hassya, 0, 0, 0);
setEffScaleKey( spep_4, hassya, 1.0, 1.0);
setEffAlphaKey( spep_4, hassya, 255);
setEffRotateKey( spep_4, hassya, 0);
setDisp( spep_4, 0, 1);

-- ** キャラクター ** --
changeAnime( spep_4, 0, 31);     -- かめはめ発射ポーズ
setMoveKey( spep_4-1, 0, -550, 400, 0);
setMoveKey( spep_4+4, 0, -225, 250, 0);
setMoveKey( spep_4+8, 0, -100, 150, 0);
setMoveKey( spep_4+10, 0, -100, 150, 0);

setScaleKey( spep_4, 0, 0.8, 0.8);
setScaleKey( spep_4+100, 0, 0.8, 0.8);

setMoveKey( spep_4+64, 0, -550, 300, 70);
setMoveKey( spep_4+75, 0, -900, 350, 120);

setShakeChara( spep_4, 0, 64, 12);

-- ** 奥行き流線斜め ** --
sen2 = entryEffectLife( spep_4, 921, 109, 0x80,  -1,  0,  0,  0); -- 奥行き流線斜め
setEffRotateKey( spep_4, sen2, 190);
setEffScaleKey( spep_4, sen2, 1.3, 1.3);

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_4, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線4
setEffScaleKey( spep_4, shuchusen4, 1.0, 1.0);
setEffScaleKey( spep_4+40, shuchusen4, 1.0, 1.0);
setEffScaleKey( spep_4+49, shuchusen4, 2.0, 2.0);

-- 書き文字エントリー
ctzuo = entryEffectLife( spep_4+4, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake( spep_4+4, ctzuo, 32, 15);
setEffAlphaKey( spep_4+4, ctzuo, 255);
setEffAlphaKey( spep_4+26, ctzuo, 255);
setEffAlphaKey( spep_4+36, ctzuo, 0);
setEffScaleKey( spep_4+4, ctzuo, 0.5, 0.5);
setEffScaleKey( spep_4+7, ctzuo, 2.5, 2.5);
setEffScaleKey( spep_4+26, ctzuo, 2.5, 2.5);
setEffScaleKey( spep_4+36, ctzuo, 6.5, 6.5);
setEffRotateKey( spep_4+4, ctzuo, 30);

-- ** 音 ** --
playSe( spep_4, SE_07);
se01 = playSe( spep_4+40, SE_07);

-- ** ホワイトフェード ** --
entryFade( spep_4+103, 8, 10, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 元気玉向かう(F)
------------------------------------------------------
spep_5 = spep_4+120;

-- ** フェード ** --
entryFadeBg( spep_5, 0, 200, 0, 0, 0, 0, 180);          -- ベース暗め　背景

-- ** エフェクト ** --
gyann = entryEffect(  spep_5,   SP_05,   0x80,     -1,  0,  0,  0);--導入
setEffMoveKey(spep_5, gyann, 0, 0, 0);
setEffScaleKey( spep_5, gyann, 1.0, 1.0);
setEffAlphaKey( spep_5, gyann, 255);
setEffRotateKey( spep_5, gyann, 0);

-- ** キャラクター ** --
setDisp( spep_5, 0, 0);
setDisp( spep_5, 1, 1);
changeAnime( spep_5-1, 1, 118);                        -- 気ダメ後ろ

setMoveKey( spep_5-2, 1, 120, 0, 0);
setMoveKey( spep_5-1, 1, 400, -400, 0);
setMoveKey( spep_5, 1, 400, -400, 0);
setMoveKey( spep_5+30, 1, 120, -270, 0);

setScaleKey( spep_5-1, 1, 1.5, 1.5);
setScaleKey( spep_5+75, 1, 1.5, 1.5);

setDisp( spep_5+75, 1, 0);

-- ** 流線 ** --
ryusen = entryEffectLife( spep_5-1, 921, 70, 0x80,  -1,  0,  0,  0, -1000 ); -- 流線斜め
setEffRotateKey( spep_5-1, ryusen, 220);
setEffScaleKey( spep_5-1, ryusen, 1.6, 1.6);

setDamage( spep_5+82, 1, 0);  -- ダメージ振動等

-- ** 音 ** --
seID = playSe( spep_5+20, SE_06);
playSe( spep_5+85, SE_09);

-- ** エフェクト等 ** --
setShakeChara( spep_5, 1, 99, 20);

-- 書き文字エントリー
ctzudodo = entryEffectLife( spep_5, 10014, 75, 0, -1, 0, 100, 355); -- ズドドッ
setEffShake(spep_5, ctzudodo, 99, 20);
setEffScaleKey( spep_5, ctzudodo, 3, 3);
setEffRotateKey(spep_5, ctzudodo, 0);
setEffAlphaKey(spep_5, ctzudodo, 255);
setEffAlphaKey(spep_5+65, ctzudodo, 255);
setEffAlphaKey(spep_5+75, ctzudodo, 0);

-- ** ホワイトフェード ** --
entryFade( spep_5+70, 5, 5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_5+127, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
gyan = entryEffectLife( spep_5+77, 10006, 45, 0x100, -1, 0, 0, 255); -- ギャン
setEffShake( spep_5+77, gyan, 99, 20);
setEffScaleKey( spep_5+77, gyan, 0.1, 0.1);
setEffScaleKey( spep_5+90, gyan, 2.4, 2.4);
setEffScaleKey( spep_5+100, gyan, 2.8, 2.8);
setEffAlphaKey( spep_5+77, gyan, 255);
setEffAlphaKey( spep_5+110, gyan, 255);
setEffAlphaKey( spep_5+125, gyan, 0);


------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 810; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);
stopSe( SP_dodge-12, seID, 0);
stopSe( SP_dodge-12, se01, 0);

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


------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

spep_6 = spep_5+137;

entryFade( spep_6-5, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_6, 0, 70, 0, 10, 10, 10, 255);          -- ベース暗め　背景

-- ** エフェクト等 ** --
bakuhatu = entryEffect( spep_6, 1551, 0, -1,  0,  0,  0);--導入
setEffMoveKey(spep_6, bakuhatu, 0, 0, 0);
setEffScaleKey( spep_6, bakuhatu, 1.1, 1.1);
setEffAlphaKey( spep_6, bakuhatu, 255);
setEffRotateKey( spep_6, bakuhatu, 0);

-- ** 音 ** --
playSe( spep_6+4, SE_07);

-- ダメージ表示
dealDamage(spep_6+16);

--entryFade( spep_6+130, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_6+130);


end