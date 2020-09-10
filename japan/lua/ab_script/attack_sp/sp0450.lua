--sp0450 孫悟空_元気玉

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
SE_08 = 1042; --カットイン
SE_09 = 1023; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音
SE_12 = 09;



SP_01 = 151443;--溜め(正面)
SP_02 = 151444;--スローイング(正面)
SP_03 = 151445;--発射
SP_04 = 151446;--HIT
SP_05 = 151442;--爆発(30F)

SP_03x = 151447;--発射(敵)

multi_frm = 2;


------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
setVisibleUI(0, 0);
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0, -900,   0);
setMoveKey(   1,   0,    0, -900,   0);
setMoveKey(   2,   0,    0, -900,   0);
setMoveKey(   3,   0,    0, -900,   0);
setMoveKey(   4,   0,    0, -900,   0);
setMoveKey(   5,   0,    0, -900,   0);
setMoveKey(   0,   1,    0, 0,   0);
setMoveKey(   1,   1,    0, 0,   0);
setMoveKey(   2,   1,    0, 0,   0);
setMoveKey(   3,   1,    0, 0,   0);
setMoveKey(   4,   1,    0, 0,   0);
setMoveKey(   5,   1,    0, 0,   0);
setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   1,   0, 1.5, 1.5);
setScaleKey(   2,   0, 1.5, 1.5);
setScaleKey(   3,   0, 1.5, 1.5);
setScaleKey(   4,   0, 1.5, 1.5);
setScaleKey(   5,   0, 1.5, 1.5);

------------------------------------------------------
-- 溜め(正面)(260F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then


spep_1 = 0;

-- ** フェード
entryFade( spep_1, 0, 2, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_1, 0, 260, 0, 0, 0, 0, 255);       -- ベース暗め　背景

entryFade(spep_1+54, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade(spep_1+134, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_1+255, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


-- ** エフェクト ** --

kitame = entryEffect( spep_1, SP_01, 0x100, -1,  0,  0,  0);   -- 手のカメハメ波部
setEffMoveKey( spep_1, kitame,  0,  0,  0);
setEffMoveKey( spep_1+260, kitame,  0,  0,  0);
setEffScaleKey( spep_1, kitame, 1.0, 1.0);
setEffScaleKey( spep_1+260, kitame, 1.0, 1.0);
setEffAlphaKey( spep_1, kitame, 255);
setEffAlphaKey( spep_1+260, kitame, 255);
setEffAlphaKey( spep_1+262, kitame, 0);
setEffRotateKey( spep_1, kitame, 0);
setEffRotateKey( spep_1+260, kitame, 0);

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_1+20, 906, 260, 0x100,  -1, 0,  0,  0); -- 集中線
setEffMoveKey( spep_1+20, shuchusen1, -100, 0, 0);
setEffMoveKey( spep_1+59, shuchusen1, -100, 0, 0);
setEffMoveKey( spep_1+60, shuchusen1, 0, 0, 0);
setEffMoveKey( spep_1+260, shuchusen1, 0, 0, 0);
setEffScaleKey( spep_1+20, shuchusen1, 1.6, 1.6);
setEffScaleKey( spep_1+260, shuchusen1, 1.6, 1.6);
setEffAlphaKey( spep_1+20, shuchusen1, 255);
setEffAlphaKey( spep_1+260, shuchusen1, 255);
setEffRotateKey( spep_1+20, shuchusen1, 0);
setEffRotateKey( spep_1+260, shuchusen1, 0);

speff = entryEffect( spep_1+170,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect( spep_1+170,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー
ctgogo = entryEffectLife( spep_1+180, 190006, 69, 0x100, -1, 0, 0, 0);    -- ゴゴゴゴ
setEffMoveKey( spep_1+180,ctgogo,100,500,0);
setEffScaleKey( spep_1+180, ctgogo, 0.7, 0.7);
setEffRotateKey( spep_1+180, ctgogo, 10);
setEffAlphaKey( spep_1+180, ctgogo, 255);
setEffShake(spep_1+180, ctgogo, 69, 10);

playSe(spep_1+20, 8);
playSe(spep_1+60, 9);
playSe(spep_1+175, SE_04);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
spep_2 = spep_1+260;

playSe( spep_2, SE_05);

speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusenct = entryEffectLife( spep_2, 906, 90, 0x100,  -1, 0,  0,  0); -- 集中線ct
setEffMoveKey( spep_2, shuchusenct, 0, 0, 0);
setEffScaleKey( spep_2, shuchusenct, 1.2, 1.2);
setEffAlphaKey( spep_2, shuchusenct, 255);
setEffRotateKey( spep_2, shuchusenct, 0);

-- ** フェード
entryFade( spep_2+85, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


------------------------------------------------------
-- スローイング(正面)(80F)
------------------------------------------------------
spep_3 = spep_2+90;

-- ** フェード
entryFadeBg( spep_3, 0, 80, 0, 0, 0, 0, 255);       -- ベース暗め　背景
entryFade( spep_3+75, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト ** --

kamehame_beam = entryEffect( spep_3, SP_02, 0x100,  -1,  0,  0,  0);   -- 伸びるかめはめ波
setEffMoveKey(  spep_3,kamehame_beam, 0,  0,   0);
setEffMoveKey(  spep_3+80,kamehame_beam, 0,  0,   0);
setEffScaleKey( spep_3,kamehame_beam, 1.0, 1.0);
setEffScaleKey( spep_3+80,kamehame_beam, 1.0, 1.0);
setEffRotateKey( spep_3,kamehame_beam, 0);
setEffRotateKey( spep_3+80,kamehame_beam, 0);
setEffAlphaKey( spep_3,kamehame_beam, 255);
setEffAlphaKey( spep_3+80,kamehame_beam, 255);
setEffAlphaKey( spep_3+81,kamehame_beam, 0);


-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_3, 906, 80, 0x100,  -1, 0,  0,  0); -- 集中線ct
setEffMoveKey( spep_3, shuchusen3, 0, 0, 0);
setEffScaleKey( spep_3, shuchusen3, 1.2, 1.2);
setEffAlphaKey( spep_3, shuchusen3, 255);
setEffRotateKey( spep_3, shuchusen3, 0);

playSe( spep_3+20, SE_06);

------------------------------------------------------
-- 発射(70F)
------------------------------------------------------
spep_4 = spep_3+80;

-- ** フェード
entryFadeBg( spep_4, 0, 70, 0, 0, 0, 0, 255);       -- ベース暗め　背景
entryFade( spep_4+65, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 流線 ** --
ryusen4 = entryEffectLife( spep_4, 921, 70, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( spep_4, ryusen4, 180);
setEffScaleKey( spep_4,ryusen4, 1.1, 1.1);

-- ** エフェクト ** --

beam = entryEffect( spep_4, SP_03, 0x100,  -1,  0,  0,  0);   -- 伸びるかめはめ波
setEffMoveKey(  spep_4,beam, 0,  0,   0);
setEffMoveKey(  spep_4+70,beam, 0,  0,   0);
setEffScaleKey( spep_4,beam, 1.0, 1.0);
setEffScaleKey( spep_4+70,beam, 1.0, 1.0);
setEffRotateKey( spep_4,beam, 0);
setEffRotateKey( spep_4+70,beam, 0);
setEffAlphaKey( spep_4,beam, 255);
setEffAlphaKey( spep_4+70,beam, 255);
setEffAlphaKey( spep_4+71,beam, 0);

-- 書き文字エントリー
ctZuo = entryEffectLife( spep_4+6, 10012, 60, 0, -1, 0, 100, 300); -- ズオッ
setEffShake( spep_4+6, ctZuo, 60, 15);
setEffAlphaKey( spep_4+6, ctZuo, 255);
setEffAlphaKey( spep_4+45, ctZuo, 255);
setEffAlphaKey( spep_4+60, ctZuo, 0);
setEffScaleKey( spep_4+6, ctZuo, 0.1, 0.1);
setEffScaleKey( spep_4+12, ctZuo, 2.5, 2.5);
setEffScaleKey( spep_4+48, ctZuo, 2.5, 2.5);
setEffScaleKey( spep_4+70, ctZuo, 6.5, 6.5);
setEffRotateKey( spep_4+6, ctZuo, 30);

playSe( spep_4+5, SE_07);

------------------------------------------------------
-- HIT(90F)
------------------------------------------------------
spep_5 = spep_4+70;

-- ** フェード
entryFadeBg( spep_5, 0, 90, 0,0, 0, 0, 210);          -- ベース暗め　背景
entryFade( spep_5+27, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_5+85, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** キャラクター ** --
setDisp( spep_5, 0, 0);
setDisp( spep_5, 1, 1);
changeAnime( spep_5, 1, 104);                        -- ガード
setShakeChara( spep_5, 1, 90, 10);

setMoveKey(  spep_5-1,    1,  235,  0,   0);
setMoveKey(  spep_5,    1,  235,  0,   0);
setMoveKey(  spep_5+1,    1,  235,  0,   0);
setMoveKey(  spep_5+32, 1,  150,    0,  0);
setScaleKey( spep_5-1,    1,  0.9, 0.9);
setScaleKey( spep_5,    1,  0.9, 0.9);
setScaleKey( spep_5+32, 1,  1.8, 1.8);
setDisp( spep_5+32, 0, 0);

kamehame_beam2 = entryEffect( spep_5, SP_04,   0, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey(spep_5, kamehame_beam2, 1, 1);

-- ** エフェクト等 ** --
ryusen5 = entryEffectLife( spep_5, 921, 90, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffScaleKey( spep_5,ryusen5, 1.1, 1.1);

-- 書き文字エントリー
ctZudon = entryEffectLife( spep_5, 10014, 32, 0, -1, 0,0, 0); -- ズドドッ
setEffMoveKey(spep_5,ctZudon,100,370,0);
setEffMoveKey(spep_5+32,ctZudon,100,370,0);
setEffShake(spep_5, ctZudon, 99, 10);
setEffScaleKey( spep_5, ctZudon, 3.0, 3.0);
setEffRotateKey(spep_5, ctZudon, 70);
setEffAlphaKey(spep_5, ctZudon, 255);

playSe( spep_5, SE_07);
playSe( spep_5+32, SE_09);

------------------------------------------------------
-- 回避(512)
------------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge = 512; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

setMoveKey(  SP_dodge,    1,  202,  0,   0);
setScaleKey( SP_dodge,    1,  1.2, 1.2);

setMoveKey(  SP_dodge+8,    1,  202,  0,   0);
setScaleKey( SP_dodge+8,    1,  1.2, 1.2);

changeAnime(  SP_dodge+9,    1,  100);
setMoveKey(  SP_dodge+9,    1,  0,  0,   0);
setScaleKey( SP_dodge+9,    1,  1.0, 1.0);
setRotateKey(   SP_dodge+9,   1, 0);

--setScaleKey( SP_dodge,    1,  1.5, 1.5);

setEffMoveKey(SP_dodge,ctZudon,100,370,0);
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


endPhase(SP_dodge+10);


do return end
else end
--------------------------------------------------------
--回避されなかった場合
--------------------------------------------------------


------------------------------------------------------
-- ギャン
------------------------------------------------------
spep_6 = spep_5+90;



entryFade( spep_6-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_6, 0, 60, 0, 0, 0, 0, 255);       -- ベース暗め　背景
setDisp( spep_6 , 1 ,0);

-- ** ギャン ** --
gyan = entryEffectLife( spep_6, SP_05 ,60, 0x100, -1, 0, 0, 0);
setEffMoveKey( spep_6, gyan, 0, 0, 0);
setEffScaleKey( spep_6, gyan,1.0, 1.0);
setEffAlphaKey( spep_6, gyan, 255);
setEffShake( spep_6, gyan, 10);

-- ** 書き文字エントリー ** --
ctgyan = entryEffectLife( spep_6, 10006, 60, 0x100, -1, 0, 0, 400); -- ギャン
setEffAlphaKey( spep_6, ctgyan, 255);
setEffScaleKey( spep_6, ctgyan, 3.0, 3.0);
setEffScaleKey( spep_6+60, ctgyan, 4.0, 4.0);
setEffAlphaKey( spep_6, ctgyan, 255);
setEffAlphaKey( spep_6+60, ctgyan, 80);
setEffShake( spep_6, ctgyan, 60, 10);

-- ** 音 ** --
playSe( spep_6+8, SE_09);


------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
spep7 = spep_6+60;


exp = entryEffect( spep7, 1551, 0,  -1,  0,  0,  0);   -- 爆発
setEffMoveKey( spep7, exp, 0, 0, 0);
setEffScaleKey( spep7, exp, 1.1, 1.1);
setEffAlphaKey( spep7, exp, 255);
setEffRotateKey( spep7, exp, 0);

playSe( spep7, SE_10);
--playSe( spep7+110, SE_10);


-- ダメージ表示
dealDamage(spep7+16);
entryFade( spep7+170, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep7+180);

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 溜め(正面)(260F)
------------------------------------------------------
spep_1 = 0;

-- ** フェード
entryFade( spep_1, 0, 2, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_1, 0, 260, 0, 0, 0, 0, 255);       -- ベース暗め　背景

entryFade(spep_1+54, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade(spep_1+134, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_1+255, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


-- ** エフェクト ** --

kitame = entryEffect( spep_1, SP_01, 0x100, -1,  0,  0,  0);   -- 手のカメハメ波部
setEffMoveKey( spep_1, kitame,  0,  0,  0);
setEffMoveKey( spep_1+260, kitame,  0,  0,  0);
setEffScaleKey( spep_1, kitame, -1.0, 1.0);
setEffScaleKey( spep_1+260, kitame, -1.0, 1.0);
setEffAlphaKey( spep_1, kitame, 255);
setEffAlphaKey( spep_1+260, kitame, 255);
setEffAlphaKey( spep_1+262, kitame, 0);
setEffRotateKey( spep_1, kitame, 0);
setEffRotateKey( spep_1+260, kitame, 0);

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_1+20, 906, 260, 0x100,  -1, 0,  0,  0); -- 集中線
setEffMoveKey( spep_1+20, shuchusen1, -100, 0, 0);
setEffMoveKey( spep_1+59, shuchusen1, -100, 0, 0);
setEffMoveKey( spep_1+60, shuchusen1, 0, 0, 0);
setEffMoveKey( spep_1+260, shuchusen1, 0, 0, 0);
setEffScaleKey( spep_1+20, shuchusen1, 1.6, 1.6);
setEffScaleKey( spep_1+260, shuchusen1, 1.6, 1.6);
setEffAlphaKey( spep_1+20, shuchusen1, 255);
setEffAlphaKey( spep_1+260, shuchusen1, 255);
setEffRotateKey( spep_1+20, shuchusen1, 0);
setEffRotateKey( spep_1+260, shuchusen1, 0);

--speff = entryEffect( spep_1+170,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect( spep_1+170,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー
ctgogo = entryEffectLife( spep_1+180, 190006, 69, 0x100, -1, 0, 0, 0);    -- ゴゴゴゴ
setEffMoveKey( spep_1+180,ctgogo,100,500,0);
setEffScaleKey( spep_1+180, ctgogo, -0.7, 0.7);
setEffRotateKey( spep_1+180, ctgogo, 10);
setEffAlphaKey( spep_1+180, ctgogo, 255);
setEffShake(spep_1+180, ctgogo, 69, 10);

playSe(spep_1+20, 8);
playSe(spep_1+60, 9);
playSe(spep_1+175, SE_04);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
spep_2 = spep_1+260;

playSe( spep_2, SE_05);

speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusenct = entryEffectLife( spep_2, 906, 90, 0x100,  -1, 0,  0,  0); -- 集中線ct
setEffMoveKey( spep_2, shuchusenct, 0, 0, 0);
setEffScaleKey( spep_2, shuchusenct, 1.2, 1.2);
setEffAlphaKey( spep_2, shuchusenct, 255);
setEffRotateKey( spep_2, shuchusenct, 0);

-- ** フェード
entryFade( spep_2+85, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


------------------------------------------------------
-- スローイング(正面)(80F)
------------------------------------------------------
spep_3 = spep_2+90;

-- ** フェード
entryFadeBg( spep_3, 0, 80, 0, 0, 0, 0, 255);       -- ベース暗め　背景
entryFade( spep_3+75, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト ** --

kamehame_beam = entryEffect( spep_3, SP_02, 0x100,  -1,  0,  0,  0);   -- 伸びるかめはめ波
setEffMoveKey(  spep_3,kamehame_beam, 0,  0,   0);
setEffMoveKey(  spep_3+80,kamehame_beam, 0,  0,   0);
setEffScaleKey( spep_3,kamehame_beam, -1.0, 1.0);
setEffScaleKey( spep_3+80,kamehame_beam, -1.0, 1.0);
setEffRotateKey( spep_3,kamehame_beam, 0);
setEffRotateKey( spep_3+80,kamehame_beam, 0);
setEffAlphaKey( spep_3,kamehame_beam, 255);
setEffAlphaKey( spep_3+80,kamehame_beam, 255);
setEffAlphaKey( spep_3+81,kamehame_beam, 0);


-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_3, 906, 80, 0x100,  -1, 0,  0,  0); -- 集中線ct
setEffMoveKey( spep_3, shuchusen3, 0, 0, 0);
setEffScaleKey( spep_3, shuchusen3, 1.2, 1.2);
setEffAlphaKey( spep_3, shuchusen3, 255);
setEffRotateKey( spep_3, shuchusen3, 0);

playSe( spep_3+20, SE_06);

------------------------------------------------------
-- 発射(70F)
------------------------------------------------------
spep_4 = spep_3+80;

-- ** フェード
entryFadeBg( spep_4, 0, 70, 0, 0, 0, 0, 255);       -- ベース暗め　背景
entryFade( spep_4+65, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 流線 ** --
ryusen4 = entryEffectLife( spep_4, 921, 70, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( spep_4, ryusen4, 180);
setEffScaleKey( spep_4,ryusen4, 1.1, 1.1);

-- ** エフェクト ** --

beam = entryEffect( spep_4, SP_03x, 0x100,  -1,  0,  0,  0);   -- 伸びるかめはめ波
setEffMoveKey(  spep_4,beam, 0,  0,   0);
setEffMoveKey(  spep_4+70,beam, 0,  0,   0);
setEffScaleKey( spep_4,beam, 1.0, 1.0);
setEffScaleKey( spep_4+70,beam, 1.0, 1.0);
setEffRotateKey( spep_4,beam, 0);
setEffRotateKey( spep_4+70,beam, 0);
setEffAlphaKey( spep_4,beam, 255);
setEffAlphaKey( spep_4+70,beam, 255);
setEffAlphaKey( spep_4+71,beam, 0);

-- 書き文字エントリー
ctZuo = entryEffectLife( spep_4+6, 10012, 60, 0, -1, 0, 100, 300); -- ズオッ
setEffShake( spep_4+6, ctZuo, 60, 15);
setEffAlphaKey( spep_4+6, ctZuo, 255);
setEffAlphaKey( spep_4+45, ctZuo, 255);
setEffAlphaKey( spep_4+60, ctZuo, 0);
setEffScaleKey( spep_4+6, ctZuo, 0.1, 0.1);
setEffScaleKey( spep_4+12, ctZuo, 2.5, 2.5);
setEffScaleKey( spep_4+48, ctZuo, 2.5, 2.5);
setEffScaleKey( spep_4+70, ctZuo, 6.5, 6.5);
setEffRotateKey( spep_4+6, ctZuo, 30);

playSe( spep_4+5, SE_07);

------------------------------------------------------
-- HIT(90F)
------------------------------------------------------
spep_5 = spep_4+70;

-- ** フェード
entryFadeBg( spep_5, 0, 90, 0,0, 0, 0, 210);          -- ベース暗め　背景
entryFade( spep_5+27, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_5+85, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** キャラクター ** --
setDisp( spep_5, 0, 0);
setDisp( spep_5, 1, 1);
changeAnime( spep_5, 1, 104);                        -- ガード
setShakeChara( spep_5, 1, 90, 10);

setMoveKey(  spep_5-1,    1,  235,  0,   0);
setMoveKey(  spep_5,    1,  235,  0,   0);
setMoveKey(  spep_5+1,    1,  235,  0,   0);
setMoveKey(  spep_5+32, 1,  150,    0,  0);
setScaleKey( spep_5-1,    1,  0.9, 0.9);
setScaleKey( spep_5,    1,  0.9, 0.9);
setScaleKey( spep_5+32, 1,  1.8, 1.8);
setDisp( spep_5+32, 0, 0);

kamehame_beam2 = entryEffect( spep_5, SP_04,   0, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey(spep_5, kamehame_beam2, 1, 1);

-- ** エフェクト等 ** --
ryusen5 = entryEffectLife( spep_5, 921, 90, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffScaleKey( spep_5,ryusen5, 1.1, 1.1);

-- 書き文字エントリー
ctZudon = entryEffectLife( spep_5, 10014, 32, 0, -1, 0,0, 0); -- ズドドッ
setEffMoveKey(spep_5,ctZudon,100,370,0);
setEffMoveKey(spep_5+32,ctZudon,100,370,0);
setEffShake(spep_5, ctZudon, 99, 10);
setEffScaleKey( spep_5, ctZudon, 3.0, 3.0);
setEffRotateKey(spep_5, ctZudon, 0);
setEffAlphaKey(spep_5, ctZudon, 255);

playSe( spep_5, SE_07);
playSe( spep_5+32, SE_09);

------------------------------------------------------
-- 回避(512)
------------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge = 512; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

setMoveKey(  SP_dodge,    1,  202,  0,   0);
setScaleKey( SP_dodge,    1,  1.2, 1.2);

setMoveKey(  SP_dodge+8,    1,  202,  0,   0);
setScaleKey( SP_dodge+8,    1,  1.2, 1.2);

changeAnime(  SP_dodge+9,    1,  100);
setMoveKey(  SP_dodge+9,    1,  0,  0,   0);
setScaleKey( SP_dodge+9,    1,  1.0, 1.0);
setRotateKey(   SP_dodge+9,   1, 0);

--setScaleKey( SP_dodge,    1,  1.5, 1.5);

setEffMoveKey(SP_dodge,ctZudon,100,370,0);
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


endPhase(SP_dodge+10);


do return end
else end
--------------------------------------------------------
--回避されなかった場合
--------------------------------------------------------


------------------------------------------------------
-- ギャン
------------------------------------------------------
spep_6 = spep_5+90;



entryFade( spep_6-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_6, 0, 60, 0, 0, 0, 0, 255);       -- ベース暗め　背景
setDisp( spep_6 , 1 ,0);

-- ** ギャン ** --
gyan = entryEffectLife( spep_6, SP_05 ,60, 0x100, -1, 0, 0, 0);
setEffMoveKey( spep_6, gyan, 0, 0, 0);
setEffScaleKey( spep_6, gyan,-1.0, 1.0);
setEffAlphaKey( spep_6, gyan, 255);
setEffShake( spep_6, gyan, 10);

-- ** 書き文字エントリー ** --
ctgyan = entryEffectLife( spep_6, 10006, 60, 0x100, -1, 0, 0, 400); -- ギャン
setEffAlphaKey( spep_6, ctgyan, 255);
setEffScaleKey( spep_6, ctgyan, 3.0, 3.0);
setEffScaleKey( spep_6+60, ctgyan, 4.0, 4.0);
setEffAlphaKey( spep_6, ctgyan, 255);
setEffAlphaKey( spep_6+60, ctgyan, 80);
setEffShake( spep_6, ctgyan, 60, 10);

-- ** 音 ** --
playSe( spep_6+8, SE_09);


------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
spep7 = spep_6+60;


exp = entryEffect( spep7, 1551, 0,  -1,  0,  0,  0);   -- 爆発
setEffMoveKey( spep7, exp, 0, 0, 0);
setEffScaleKey( spep7, exp, 1.1, 1.1);
setEffAlphaKey( spep7, exp, 255);
setEffRotateKey( spep7, exp, 0);

playSe( spep7, SE_10);
--playSe( spep7+110, SE_10);


-- ダメージ表示
dealDamage(spep7+16);
entryFade( spep7+170, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep7+180);

end
