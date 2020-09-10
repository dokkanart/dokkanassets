
fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SP_01 = 150791;--ef_001
SP_01e = 150792;--ef_001e
SP_02 = 150793;--ef_002
SP_02e = 150794;--ef_003e
SP_03 = 150795;--ef_003
SP_03e = 150796;--ef_003e
SP_04 = 150797;--ef_004
SP_04e = 150798;--ef_004e
SP_05 = 150799;--ef_005
SP_06 = 150800;--ef_006


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
SE_12 = 1066;
SE_13 = 1068; --爆煙

SE_12 = 09;

multi_frm = 2;



------------------------------------------------------
--溜め
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

setAnimeLoop(  0, 0, 0);


setDisp( 0, 1, 0);
setDisp( 0, 0, 0);

setMoveKey( 0, 0,    0, -54,   0);
setMoveKey( 1, 0,    0, -54,   0);
setMoveKey( 2, 0,    0, -54,   0);
setMoveKey( 3, 0,    0, -54,   0);
setMoveKey( 0, 1,    0, -54,   0);
setMoveKey( 1, 1,    0, -54,   0);
setMoveKey( 2, 1,    0, -54,   0);
setMoveKey( 3, 1,    0, -54,   0);

setScaleKey( 0,   1, 1.5, 1.5);
setScaleKey( 1,   1, 1.5, 1.5);
setScaleKey( 0,   0, 1.5, 1.5);
setScaleKey( 1,   0, 1.5, 1.5);

setRotateKey( 0,  1,  0 );
setRotateKey( 1,  1,  0 );

--entryFade( 0, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( 0, 0, 50, 0, 10, 10, 10, 180);       -- ベース暗め　背景
setVisibleUI(0, 0);
setDisp( 0, 0, 1);

changeAnime(  0, 0, 1);     
changeAnime(  0, 1, 100);     



changeAnime(  10, 0, 17);                       -- 溜め!
setShakeChara( 10, 0, 40, 10);

kouka2=entryEffectLife(  10,   1500, 29,  0,    -1,  0,  0,  0);    -- eff_001
setEffMoveKey( 10, kouka2, 0, 0, 0);
setEffScaleKey( 10, kouka2, 1.0, 1.0);
setEffAlphaKey( 10, kouka2, 255);
setEffRotateKey( 10, kouka2, 0);

kouka1=entryEffectLife(  10,   1501,  29, 0x80, -1,  0,  0,  0);    -- eff_002
setEffMoveKey( 10, kouka1, 0, 0, 0);
setEffScaleKey( 10, kouka1, 1.0, 1.0);
setEffAlphaKey( 10, kouka1, 255);
setEffRotateKey( 10, kouka1, 0);

playSe( 10, SE_01);


-- ** エフェクト等 ** --
aura = entryEffectLife(  10,   311, 29, 0x40,  0,  1,  0,  -50); -- オーラ
setEffScaleKey( 10, aura, 1.5, 1.5);
setShakeChara( 10, 0, 19, 5);

-- 書き文字エントリー
ct = entryEffectLife( 10, 10013, 29, 0, -1, 0, 0, 350); -- ズズンッ
setEffShake(10, ct, 40, 7);
setEffAlphaKey(10, ct, 255);
setEffAlphaKey(50, ct, 255);
setEffAlphaKey(70, ct, 255);
setEffScaleKey( 10, ct, 0.1, 0.1);
setEffScaleKey( 20, ct, 2.0, 2.0);


setAnimeLoop(  40, 0, 1);
------------------------------------------------------
--突っ込む
------------------------------------------------------
setDisp( 42, 0, 0);
entryFade( 60-23, 3, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( 60-20, 0, 65, 0, 10, 10, 10, 180);       -- ベース暗め　背景
playSe( 60, 1018);


setEffAlphaKey( 73-20, kouka2, 255);
setEffAlphaKey( 73-20, kouka1, 255);
setEffAlphaKey( 74-20, kouka2, 0);
setEffAlphaKey( 74-20, kouka1, 0);



tame = entryEffect( 70-20, SP_01, 0x80,      -1,  0,  0,  0);   -- 手のカメハメ波部
setEffMoveKey( 70-20, tame, 0, 0, 0);
setEffScaleKey( 70-20, tame, 1.0, 1.0);
setEffAlphaKey( 70-20, tame, 255);
setEffRotateKey( 70-20, tame, 0);
setEffShake( 70-20, tame, 100, 10);


-- ** 集中線 ** --
shuchuserush = entryEffectLife( 70-20, 906, 60, 0x100,  -1, 0,  0,  0); -- 集中線
setEffMoveKey(70-20, shuchuserush, 0, 0, 0);
setEffScaleKey( 70-20, shuchuserush, 1.2, 1.2);
setEffAlphaKey( 70-20, shuchuserush, 255);
setEffRotateKey( 70-20, shuchuserush, 0);

ctzuo = entryEffectLife( 70-20, 10012, 50, 0x100, -1, 0, 150, 400);    -- ズオッ
setEffRotateKey(70-20, ctzuo, 20);
setEffAlphaKey( 70-20, ctzuo, 255);
setEffScaleKey( 70-20, ctzuo, 2.0, 2.0);
setEffScaleKey( 70, ctzuo, 2.5, 2.5);
setEffScaleKey( 70+20, ctzuo, 5.5, 5.5);
setEffAlphaKey( 70-20, ctzuo, 255);
setEffAlphaKey( 90-20, ctzuo, 255);
setEffAlphaKey( 70+20, ctzuo, 0);
setEffShake( 70-20, ctzuo, 45, 20);
setEffRotateKey(70+20, ctzuo, 20);
------------------------------------------------------
-- 蹴り(F)
------------------------------------------------------

spep_1 = 70+40;
entryFade( spep_1-10, 5, 10, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_1, 0, 80, 0, 10, 10, 10, 180);       -- ベース暗め　背景
setMoveKey( spep_1-1, 0,    0, -54,   0);
setScaleKey( spep_1-1,   0, 1.5, 1.5);


-- ** 奥行き流線斜め ** --
sen2 = entryEffectLife( spep_1, 921, 35, 0x80,  -1,  0,  0,  0); -- 奥行き流線斜め
setEffRotateKey( spep_1, sen2, -120);
setEffScaleKey( spep_1, sen2, 1.7, 1.7);

-- ** エフェクト ** --
hanatu = entryEffect( spep_1, SP_02, 0x80,      -1,  0,  0,  0);   -- 蹴り
setEffMoveKey( spep_1, hanatu, 0, 0, 0);
setEffScaleKey( spep_1, hanatu, 1.0, 1.0);
setEffAlphaKey( spep_1, hanatu, 255);
setEffRotateKey( spep_1, hanatu, 0);


playSe( spep_1+25, 1010);

-- ** 敵 ** --
setDisp( spep_1, 1, 1);
changeAnime(  spep_1, 1, 118);

setMoveKey( spep_1, 1,    800, -1000,   0);
setMoveKey( spep_1+10, 1,    400, -500,   0);
setMoveKey( spep_1+12, 1,    300, -400,   0);
setMoveKey( spep_1+20, 1,    100, -100,   0);
setScaleKey( spep_1,   1, 6.5, 6.5);
setScaleKey( spep_1+20,   1, 1.5, 1.5);
setScaleKey( spep_1+24,   1, 1.5, 1.5);

changeAnime(  spep_1+25, 1, 107);     
setShakeChara( spep_1+25, 1, 80, 10);
setMoveKey( spep_1+40, 1,    100, -100,   0);
setMoveKey( spep_1+80, 1,    300, -400,   0);
setScaleKey( spep_1+25,   1, 0.8, 0.8);
setScaleKey( spep_1+40,   1, 0.8, 0.8);
setScaleKey( spep_1+80,   1, 2.5, 2.5);

entryFade( spep_1+24, 1, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

semaru = entryEffect(  spep_1+25,   SP_06,   0x100,     -1,  0,  0,  0);--ヒット
setEffMoveKey(spep_1+25, semaru, 0, 0, 0);
setEffScaleKey( spep_1+25, semaru, 1.0, 1.0);
setEffAlphaKey( spep_1+25, semaru, 255);
setEffRotateKey( spep_1+25, semaru, 0);

setDisp( spep_1+80, 1, 0);


-- ** 集中線 ** --
shuchuserush1 = entryEffectLife( spep_1+25, 906, 80, 0x100,  -1, 0,  0,  0); -- 集中線
setEffMoveKey(spep_1+25, shuchuserush1, 0, 0, 0);
setEffScaleKey( spep_1+25, shuchuserush1, 1.2, 1.2);
setEffAlphaKey( spep_1+25, shuchuserush1, 255);
setEffRotateKey( spep_1+25, shuchuserush1, 0);

-- 書き文字エントリー
ct1 = entryEffectLife( spep_1+25, 10005, 50, 0x100, -1, 0, 180, 350); -- ga
setEffShake(spep_1+30, ct1, 20, 20);
setEffAlphaKey(spep_1+25, ct1, 255);
setEffAlphaKey(spep_1+50, ct1, 255);
setEffAlphaKey(spep_1+60, ct1, 0);
setEffScaleKey( spep_1+25, ct1, 2.3, 2.3);
setEffRotateKey( spep_1+25, ct1, 10);


------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 119; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade(SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(SP_dodge+10);
setMoveKey( SP_dodge-1, 0,    0, -550,   0);
--setMoveKey( SP_dodge, 0,    0, -254,   0);
do return end
else end

------------------------------------------------------
-- カットイン
------------------------------------------------------

spep_2 = spep_1+83;

entryFade( spep_2-5, 3, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_2, 0, 126, 0, 10, 10, 10, 180);          -- ベース暗め　背景



semaru = entryEffect(  spep_2,   SP_03,   0x100,     -1,  0,  0,  0);--導入
setEffMoveKey(spep_2, semaru, 0, 0, 0);
setEffScaleKey( spep_2, semaru, 1.0, 1.0);
setEffAlphaKey( spep_2, semaru, 255);
setEffRotateKey( spep_2, semaru, 0);

entryFade( spep_2+24, 1, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 集中線 ** --
shuchuserush = entryEffectLife( spep_2, 906, 126, 0x100,  -1, 0,  0,  0); -- 集中線
setEffMoveKey(spep_2, shuchuserush, 0, 0, 0);
setEffScaleKey( spep_2, shuchuserush, 1.2, 1.2);
setEffAlphaKey( spep_2, shuchuserush, 255);
setEffRotateKey( spep_2, shuchuserush, 0);


speff = entryEffect(  spep_2+30,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_2+30,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( spep_2+30, SE_04);


-- 書き文字エントリー
ctgogo2 = entryEffectLife( spep_2+43, 190006, 64, 0x100, -1, 0, -50, 500);    -- ゴゴゴゴ
setEffScaleKey(spep_2+43, ctgogo2, 0.7, 0.7);
setEffRotateKey(spep_2+43, ctgogo2, 10);
setEffAlphaKey( spep_2+43, ctgogo2, 255);


------------------------------------------------------
-- ka-do(90F)
------------------------------------------------------
--spep_3 = spep_2+120;
spep_3 = spep_2+126;




entryFade( spep_3-10, 3, 15, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_3, 0, 90, 0, 10, 10, 10, 180);       -- ベース暗め　背景


setScaleKey( spep_3,   0, 1.8, 1.8);


playSe( spep_3+5, SE_05);
speff = entryEffect( spep_3,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え



-- ** 集中線 ** --
shuchuserush = entryEffectLife( spep_3, 906, 60, 0x100,  -1, 0,  0,  0); -- 集中線
setEffMoveKey(spep_3, shuchuserush, 0, 0, 0);
setEffScaleKey( spep_3, shuchuserush, 1.2, 1.2);
setEffAlphaKey( spep_3, shuchuserush, 255);
setEffRotateKey( spep_3, shuchuserush, 0);


------------------------------------------------------
-- ビーム撃つ(90F)
------------------------------------------------------
--spep_3 = spep_2+120;
spep_4 = spep_3+97;

entryFade( spep_4-13, 3, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_4, 0, 110, 0, 10, 10, 10, 255);          -- ベース暗め　背景

semaru4 = entryEffect(  spep_4,   SP_04,   0x100,     -1,  0,  0,  0);--導入
setEffMoveKey(spep_4, semaru4, 0, 0, 0);
setEffScaleKey( spep_4, semaru4, 1.0, 1.0);
setEffAlphaKey( spep_4, semaru4, 255);
setEffRotateKey( spep_4, semaru4, 0);

entryFade( spep_4+10, 1, 8, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 奥行き流線斜め ** --
sen4 = entryEffectLife( spep_4+10, 921, 100, 0x80,  -1,  0,  0,  -50); -- 奥行き流線斜め
setEffRotateKey( spep_4+10, sen4, -150);
setEffScaleKey( spep_4+10, sen4, 1.7, 1.7);
setEffMoveKey(spep_4+10, sen4, 0, -50, 0);

playSe( spep_4+10, SE_07);

-- ** 集中線 ** --
shuchuserush4 = entryEffectLife( spep_4, 906,110, 0x100,  -1, 0,  0,  0); -- 集中線
setEffMoveKey(spep_4, shuchuserush4, 0, 0, 0);
setEffScaleKey( spep_4, shuchuserush4, 1.2, 1.2);
setEffAlphaKey( spep_4, shuchuserush4, 255);
setEffRotateKey( spep_4, shuchuserush4, 0);

ctzuo4 = entryEffectLife( spep_4+10, 10012, 100, 0x100, -1, 0, 100, 350);    -- ズオッ
setEffRotateKey(spep_4+10, ctzuo4, 20);
setEffAlphaKey( spep_4+10, ctzuo4, 255);
setEffScaleKey( spep_4+10, ctzuo4, 2.0, 2.0);
setEffScaleKey( spep_4+20, ctzuo4, 3.0, 3.0);
setEffScaleKey( spep_4+80, ctzuo4, 3.0, 3.0);
setEffScaleKey( spep_4+100, ctzuo4, 6.5, 6.5);
setEffAlphaKey( spep_4+10, ctzuo4, 255);
setEffAlphaKey( spep_4+80, ctzuo4, 255);
setEffAlphaKey( spep_4+100, ctzuo4, 0);
setEffShake( spep_4+10, ctzuo4, 100, 20);
setEffRotateKey(spep_4+80, ctzuo4, 20);


------------------------------------------------------
-- ビーム敵に向かう(90F)
------------------------------------------------------
--spep_3 = spep_2+120;
spep_5 = spep_4+110;

entryFade( spep_5-5, 3, 4, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_5, 0, 70, 0, 10, 10, 10, 255);          -- ベース暗め　背景

setMoveKey( spep_5-1, 1,    300, -400,   0);
setScaleKey( spep_5-1,   1, 2.5, 2.5);

setMoveKey( spep_5, 1,    400, 0,   0);
setScaleKey( spep_5,   1, 1.0, 1.0);
changeAnime(  spep_5, 1, 108);     
setDisp( spep_5, 1, 1);


semaru5 = entryEffect(  spep_5,   SP_05,   0x100,     -1,  0,  0,  0);--導入
setEffMoveKey(spep_5, semaru5, 0, 0, 0);
setEffScaleKey( spep_5, semaru5, 1.0, 1.0);
setEffAlphaKey( spep_5, semaru5, 255);
setEffRotateKey( spep_5, semaru5, 0);
-- ** 奥行き流線斜め ** --
sen5 = entryEffectLife( spep_5, 921, 120, 0x80,  -1,  0,  0,  0); -- 奥行き流線斜め
setEffRotateKey( spep_5, sen5, 0);
setEffScaleKey( spep_5, sen5, 1.6, 1.6);

entryFade( spep_5+24, 1, 3, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

ctzudo = entryEffectLife( spep_5, 10014, 24, 0x100, -1, 0, 100, 300);    -- ズドドドッ
setEffRotateKey( spep_5, ctzudo, 60);
setEffAlphaKey( spep_5, ctzudo, 255);
setEffScaleKey( spep_5, ctzudo, 3.0, 3.0);
setEffAlphaKey( spep_5, ctzudo, 255);
setEffAlphaKey( spep_5+100, ctzudo, 255);
setEffShake( spep_5, ctzudo, 100, 8);
setEffRotateKey( spep_5+100, ctzudo, 60);


-- ** 集中線 ** --
shuchuserush5 = entryEffectLife( spep_5, 906,110, 0x100,  -1, 0,  0,  0); -- 集中線
setEffMoveKey(spep_5, shuchuserush5, 0, 0, 0);
setEffScaleKey( spep_5, shuchuserush5, 1.2, 1.2);
setEffAlphaKey( spep_5, shuchuserush5, 255);
setEffRotateKey( spep_5, shuchuserush5, 0);



setMoveKey( spep_5+20, 1,    100, 0,   0);
setScaleKey( spep_5+20,   1, 1.0, 1.0);

setDisp( spep_5+50, 1, 0);
setMoveKey( spep_5+50, 1,    100, 0,   0);
setScaleKey( spep_5+50,   1, 1.0, 1.0);

playSe( spep_5+25, 1011);


entryFade( spep_5+55, 3, 5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- ギャン
------------------------------------------------------
spep_7 = spep_5+60; --


gyan = entryEffect( spep_7, 190001,   0x100, -1,  0,  0,  0);   -- ギャン

playSe( spep_7, SE_09);

ctg = entryEffectLife( spep_7, 10006, 70, 0x100, -1, 0, 0, 260); -- ギャン
setEffShake(spep_7, ctg, 99, 20);
setEffScaleKey( spep_7, ctg, 0.1, 0.1);
setEffScaleKey( spep_7+30, ctg, 3.4, 3.4);
setEffScaleKey( spep_7+54, ctg, 3.8, 3.8);
setEffAlphaKey(spep_7, ctg, 255);
setEffAlphaKey(spep_7+50, ctg, 255);
setEffAlphaKey(spep_7+54, ctg, 0);

entryFade( spep_7+50, 5,  13, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp( spep_7+40, 1, 0);



------------------------------------------------------
-- 最後
------------------------------------------------------
spep_9 = spep_7+60;

entryFade( spep_9-5, 2, 3, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_9+5, 0, 120, 0, 0, 0, 0, 255);       -- ベース暗め　背景


last = entryEffect(  spep_9+8,   1586,   0x80,     -1,  0,  0,  0);--導入
setEffMoveKey(spep_9, last, 0, 0, 0);
setEffScaleKey( spep_9, last, -1.1, 1.1);
setEffAlphaKey( spep_9, last, 255);
setEffRotateKey( spep_9, last, 0);

playSe( spep_9+4, SE_07);

-- ダメージ表示
dealDamage(spep_9+16);

entryFade( spep_9+170, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_9+180);


else
------------------------------------------------------
--敵側
------------------------------------------------------
setAnimeLoop(  0, 0, 0);


setDisp( 0, 1, 0);
setDisp( 0, 0, 0);

setMoveKey( 0, 0,    0, -54,   0);
setMoveKey( 1, 0,    0, -54,   0);
setMoveKey( 2, 0,    0, -54,   0);
setMoveKey( 3, 0,    0, -54,   0);
setMoveKey( 0, 1,    0, -54,   0);
setMoveKey( 1, 1,    0, -54,   0);
setMoveKey( 2, 1,    0, -54,   0);
setMoveKey( 3, 1,    0, -54,   0);

setScaleKey( 0,   1, 1.5, 1.5);
setScaleKey( 1,   1, 1.5, 1.5);
setScaleKey( 0,   0, 1.5, 1.5);
setScaleKey( 1,   0, 1.5, 1.5);

setRotateKey( 0,  1,  0 );
setRotateKey( 1,  1,  0 );

--entryFade( 0, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( 0, 0, 50, 0, 10, 10, 10, 180);       -- ベース暗め　背景
setVisibleUI(0, 0);
setDisp( 0, 0, 1);

changeAnime(  0, 0, 1);     
changeAnime(  0, 1, 100);     



changeAnime(  10, 0, 17);                       -- 溜め!
setShakeChara( 10, 0, 40, 10);

kouka2=entryEffectLife(  10,   1500, 29,  0,    -1,  0,  0,  0);    -- eff_001
setEffMoveKey( 10, kouka2, 0, 0, 0);
setEffScaleKey( 10, kouka2, 1.0, 1.0);
setEffAlphaKey( 10, kouka2, 255);
setEffRotateKey( 10, kouka2, 0);

kouka1=entryEffectLife(  10,   1501,  29, 0x80, -1,  0,  0,  0);    -- eff_002
setEffMoveKey( 10, kouka1, 0, 0, 0);
setEffScaleKey( 10, kouka1, 1.0, 1.0);
setEffAlphaKey( 10, kouka1, 255);
setEffRotateKey( 10, kouka1, 0);

playSe( 10, SE_01);


-- ** エフェクト等 ** --
aura = entryEffectLife(  10,   311, 29, 0x40,  0,  1,  0,  -50); -- オーラ
setEffScaleKey( 10, aura, 1.5, 1.5);
setShakeChara( 10, 0, 19, 5);

-- 書き文字エントリー
ct = entryEffectLife( 10, 10013, 29, 0, -1, 0, 0, 350); -- ズズンッ
setEffShake(10, ct, 40, 7);
setEffAlphaKey(10, ct, 255);
setEffAlphaKey(50, ct, 255);
setEffAlphaKey(70, ct, 255);
setEffScaleKey( 10, ct, 0.1, 0.1);
setEffScaleKey( 20, ct, 2.0, 2.0);


setAnimeLoop(  40, 0, 1);
------------------------------------------------------
--突っ込む
------------------------------------------------------
setDisp( 42, 0, 0);
entryFade( 60-23, 3, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( 60-20, 0, 65, 0, 10, 10, 10, 180);       -- ベース暗め　背景
playSe( 60, 1018);


setEffAlphaKey( 73-20, kouka2, 255);
setEffAlphaKey( 73-20, kouka1, 255);
setEffAlphaKey( 74-20, kouka2, 0);
setEffAlphaKey( 74-20, kouka1, 0);



tame = entryEffect( 70-20, SP_01e, 0x80,      -1,  0,  0,  0);   -- 手のカメハメ波部
setEffMoveKey( 70-20, tame, 0, 0, 0);
setEffScaleKey( 70-20, tame, 1.0, 1.0);
setEffAlphaKey( 70-20, tame, 255);
setEffRotateKey( 70-20, tame, 0);
setEffShake( 70-20, tame, 100, 10);


-- ** 集中線 ** --
shuchuserush = entryEffectLife( 70-20, 906, 60, 0x100,  -1, 0,  0,  0); -- 集中線
setEffMoveKey(70-20, shuchuserush, 0, 0, 0);
setEffScaleKey( 70-20, shuchuserush, 1.2, 1.2);
setEffAlphaKey( 70-20, shuchuserush, 255);
setEffRotateKey( 70-20, shuchuserush, 0);

ctzuo = entryEffectLife( 70-20, 10012, 50, 0x100, -1, 0, 150, 400);    -- ズオッ
setEffRotateKey(70-20, ctzuo, 20);
setEffAlphaKey( 70-20, ctzuo, 255);
setEffScaleKey( 70-20, ctzuo, 2.0, 2.0);
setEffScaleKey( 70, ctzuo, 2.5, 2.5);
setEffScaleKey( 70+20, ctzuo, 5.5, 5.5);
setEffAlphaKey( 70-20, ctzuo, 255);
setEffAlphaKey( 90-20, ctzuo, 255);
setEffAlphaKey( 70+20, ctzuo, 0);
setEffShake( 70-20, ctzuo, 45, 20);
setEffRotateKey(70+20, ctzuo, 20);
------------------------------------------------------
-- 蹴り(F)
------------------------------------------------------

spep_1 = 70+40;
entryFade( spep_1-10, 5, 10, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_1, 0, 80, 0, 10, 10, 10, 180);       -- ベース暗め　背景
setMoveKey( spep_1-1, 0,    0, -54,   0);
setScaleKey( spep_1-1,   0, 1.5, 1.5);


-- ** 奥行き流線斜め ** --
sen2 = entryEffectLife( spep_1, 921, 35, 0x80,  -1,  0,  0,  0); -- 奥行き流線斜め
setEffRotateKey( spep_1, sen2, -120);
setEffScaleKey( spep_1, sen2, 1.7, 1.7);

-- ** エフェクト ** --
hanatu = entryEffect( spep_1, SP_02e, 0x80,      -1,  0,  0,  0);   -- 蹴り
setEffMoveKey( spep_1, hanatu, 0, 0, 0);
setEffScaleKey( spep_1, hanatu, 1.0, 1.0);
setEffAlphaKey( spep_1, hanatu, 255);
setEffRotateKey( spep_1, hanatu, 0);


playSe( spep_1+25, 1010);

-- ** 敵 ** --
setDisp( spep_1, 1, 1);
changeAnime(  spep_1, 1, 118);

setMoveKey( spep_1, 1,    800, -1000,   0);
setMoveKey( spep_1+10, 1,    400, -500,   0);
setMoveKey( spep_1+12, 1,    300, -400,   0);
setMoveKey( spep_1+20, 1,    100, -100,   0);
setScaleKey( spep_1,   1, 6.5, 6.5);
setScaleKey( spep_1+20,   1, 1.5, 1.5);
setScaleKey( spep_1+24,   1, 1.5, 1.5);

changeAnime(  spep_1+25, 1, 107);     
setShakeChara( spep_1+25, 1, 80, 10);
setMoveKey( spep_1+40, 1,    100, -100,   0);
setMoveKey( spep_1+80, 1,    300, -400,   0);
setScaleKey( spep_1+25,   1, 0.8, 0.8);
setScaleKey( spep_1+40,   1, 0.8, 0.8);
setScaleKey( spep_1+80,   1, 2.5, 2.5);

entryFade( spep_1+24, 1, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

semaru = entryEffect(  spep_1+25,   SP_06,   0x100,     -1,  0,  0,  0);--ヒット
setEffMoveKey(spep_1+25, semaru, 0, 0, 0);
setEffScaleKey( spep_1+25, semaru, 1.0, 1.0);
setEffAlphaKey( spep_1+25, semaru, 255);
setEffRotateKey( spep_1+25, semaru, 0);

setDisp( spep_1+80, 1, 0);


-- ** 集中線 ** --
shuchuserush1 = entryEffectLife( spep_1+25, 906, 80, 0x100,  -1, 0,  0,  0); -- 集中線
setEffMoveKey(spep_1+25, shuchuserush1, 0, 0, 0);
setEffScaleKey( spep_1+25, shuchuserush1, 1.2, 1.2);
setEffAlphaKey( spep_1+25, shuchuserush1, 255);
setEffRotateKey( spep_1+25, shuchuserush1, 0);

-- 書き文字エントリー
ct1 = entryEffectLife( spep_1+25, 10005, 50, 0x100, -1, 0, 180, 350); -- ga
setEffShake(spep_1+30, ct1, 20, 20);
setEffAlphaKey(spep_1+25, ct1, 255);
setEffAlphaKey(spep_1+50, ct1, 255);
setEffAlphaKey(spep_1+60, ct1, 0);
setEffScaleKey( spep_1+25, ct1, 2.3, 2.3);
setEffRotateKey( spep_1+25, ct1, 10);


------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 119; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade(SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(SP_dodge+10);
setMoveKey( SP_dodge-1, 0,    0, -550,   0);
--setMoveKey( SP_dodge, 0,    0, -254,   0);
do return end
else end

------------------------------------------------------
-- カットイン
------------------------------------------------------

spep_2 = spep_1+83;

entryFade( spep_2-5, 3, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_2, 0, 126, 0, 10, 10, 10, 180);          -- ベース暗め　背景



semaru = entryEffect(  spep_2,   SP_03,   0x100,     -1,  0,  0,  0);--導入
setEffMoveKey(spep_2, semaru, 0, 0, 0);
setEffScaleKey( spep_2, semaru, 1.0, 1.0);
setEffAlphaKey( spep_2, semaru, 255);
setEffRotateKey( spep_2, semaru, 0);

entryFade( spep_2+24, 1, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 集中線 ** --
shuchuserush = entryEffectLife( spep_2, 906, 126, 0x100,  -1, 0,  0,  0); -- 集中線
setEffMoveKey(spep_2, shuchuserush, 0, 0, 0);
setEffScaleKey( spep_2, shuchuserush, 1.2, 1.2);
setEffAlphaKey( spep_2, shuchuserush, 255);
setEffRotateKey( spep_2, shuchuserush, 0);

--[[
speff = entryEffect(  spep_2+30,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_2+30,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
]]--
playSe( spep_2+30, SE_04);


-- 書き文字エントリー
ctgogo2 = entryEffectLife( spep_2+43, 190006, 64, 0x100, -1, 0, -50, 450);    -- ゴゴゴゴ
setEffScaleKey(spep_2+43, ctgogo2, -0.7, 0.7);
setEffRotateKey(spep_2+43, ctgogo2, 10);
setEffAlphaKey( spep_2+43, ctgogo2, 255);


------------------------------------------------------
-- ka-do(90F)
------------------------------------------------------
--spep_3 = spep_2+120;
spep_3 = spep_2+126;




entryFade( spep_3-10, 3, 15, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_3, 0, 90, 0, 10, 10, 10, 180);       -- ベース暗め　背景


setScaleKey( spep_3,   0, 1.8, 1.8);


playSe( spep_3+5, SE_05);
speff = entryEffect( spep_3,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え



-- ** 集中線 ** --
shuchuserush = entryEffectLife( spep_3, 906, 60, 0x100,  -1, 0,  0,  0); -- 集中線
setEffMoveKey(spep_3, shuchuserush, 0, 0, 0);
setEffScaleKey( spep_3, shuchuserush, 1.2, 1.2);
setEffAlphaKey( spep_3, shuchuserush, 255);
setEffRotateKey( spep_3, shuchuserush, 0);


------------------------------------------------------
-- ビーム撃つ(90F)
------------------------------------------------------
--spep_3 = spep_2+120;
spep_4 = spep_3+97;

entryFade( spep_4-13, 3, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_4, 0, 110, 0, 10, 10, 10, 255);          -- ベース暗め　背景

semaru4 = entryEffect(  spep_4,   SP_04e,   0x100,     -1,  0,  0,  0);--導入
setEffMoveKey(spep_4, semaru4, 0, 0, 0);
setEffScaleKey( spep_4, semaru4, 1.0, 1.0);
setEffAlphaKey( spep_4, semaru4, 255);
setEffRotateKey( spep_4, semaru4, 0);

entryFade( spep_4+10, 1, 8, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 奥行き流線斜め ** --
sen4 = entryEffectLife( spep_4+10, 921, 100, 0x80,  -1,  0,  0,  -50); -- 奥行き流線斜め
setEffRotateKey( spep_4+10, sen4, -150);
setEffScaleKey( spep_4+10, sen4, 1.7, 1.7);
setEffMoveKey(spep_4+10, sen4, 0, -50, 0);

playSe( spep_4+10, SE_07);

-- ** 集中線 ** --
shuchuserush4 = entryEffectLife( spep_4, 906,110, 0x100,  -1, 0,  0,  0); -- 集中線
setEffMoveKey(spep_4, shuchuserush4, 0, 0, 0);
setEffScaleKey( spep_4, shuchuserush4, 1.2, 1.2);
setEffAlphaKey( spep_4, shuchuserush4, 255);
setEffRotateKey( spep_4, shuchuserush4, 0);

ctzuo4 = entryEffectLife( spep_4+10, 10012, 100, 0x100, -1, 0, 100, 350);    -- ズオッ
setEffRotateKey(spep_4+10, ctzuo4, 20);
setEffAlphaKey( spep_4+10, ctzuo4, 255);
setEffScaleKey( spep_4+10, ctzuo4, 2.0, 2.0);
setEffScaleKey( spep_4+20, ctzuo4, 3.0, 3.0);
setEffScaleKey( spep_4+80, ctzuo4, 3.0, 3.0);
setEffScaleKey( spep_4+100, ctzuo4, 6.5, 6.5);
setEffAlphaKey( spep_4+10, ctzuo4, 255);
setEffAlphaKey( spep_4+80, ctzuo4, 255);
setEffAlphaKey( spep_4+100, ctzuo4, 0);
setEffShake( spep_4+10, ctzuo4, 100, 20);
setEffRotateKey(spep_4+80, ctzuo4, 20);


------------------------------------------------------
-- ビーム敵に向かう(90F)
------------------------------------------------------
--spep_3 = spep_2+120;
spep_5 = spep_4+110;

entryFade( spep_5-5, 3, 4, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_5, 0, 70, 0, 10, 10, 10, 255);          -- ベース暗め　背景

setMoveKey( spep_5-1, 1,    300, -400,   0);
setScaleKey( spep_5-1,   1, 2.5, 2.5);

setMoveKey( spep_5, 1,    400, 0,   0);
setScaleKey( spep_5,   1, 1.0, 1.0);
changeAnime(  spep_5, 1, 108);     
setDisp( spep_5, 1, 1);


semaru5 = entryEffect(  spep_5,   SP_05,   0x100,     -1,  0,  0,  0);--導入
setEffMoveKey(spep_5, semaru5, 0, 0, 0);
setEffScaleKey( spep_5, semaru5, 1.0, 1.0);
setEffAlphaKey( spep_5, semaru5, 255);
setEffRotateKey( spep_5, semaru5, 0);
-- ** 奥行き流線斜め ** --
sen5 = entryEffectLife( spep_5, 921, 120, 0x80,  -1,  0,  0,  0); -- 奥行き流線斜め
setEffRotateKey( spep_5, sen5, 0);
setEffScaleKey( spep_5, sen5, 1.6, 1.6);

entryFade( spep_5+24, 1, 3, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

ctzudo = entryEffectLife( spep_5, 10014, 24, 0x100, -1, 0, 100, 300);    -- ズドドドッ
setEffRotateKey( spep_5, ctzudo, 0);
setEffAlphaKey( spep_5, ctzudo, 255);
setEffScaleKey( spep_5, ctzudo, 3.0, 3.0);
setEffAlphaKey( spep_5, ctzudo, 255);
setEffAlphaKey( spep_5+100, ctzudo, 255);
setEffShake( spep_5, ctzudo, 100, 8);
setEffRotateKey( spep_5+100, ctzudo, 0);


-- ** 集中線 ** --
shuchuserush5 = entryEffectLife( spep_5, 906,110, 0x100,  -1, 0,  0,  0); -- 集中線
setEffMoveKey(spep_5, shuchuserush5, 0, 0, 0);
setEffScaleKey( spep_5, shuchuserush5, 1.2, 1.2);
setEffAlphaKey( spep_5, shuchuserush5, 255);
setEffRotateKey( spep_5, shuchuserush5, 0);



setMoveKey( spep_5+20, 1,    100, 0,   0);
setScaleKey( spep_5+20,   1, 1.0, 1.0);

setDisp( spep_5+50, 1, 0);
setMoveKey( spep_5+50, 1,    100, 0,   0);
setScaleKey( spep_5+50,   1, 1.0, 1.0);

playSe( spep_5+25, 1011);


entryFade( spep_5+55, 3, 5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- ギャン
------------------------------------------------------
spep_7 = spep_5+60; --


gyan = entryEffect( spep_7, 190001,   0x100, -1,  0,  0,  0);   -- ギャン

playSe( spep_7, SE_09);

ctg = entryEffectLife( spep_7, 10006, 70, 0x100, -1, 0, 0, 260); -- ギャン
setEffShake(spep_7, ctg, 99, 20);
setEffScaleKey( spep_7, ctg, 0.1, 0.1);
setEffScaleKey( spep_7+30, ctg, 3.4, 3.4);
setEffScaleKey( spep_7+54, ctg, 3.8, 3.8);
setEffAlphaKey(spep_7, ctg, 255);
setEffAlphaKey(spep_7+50, ctg, 255);
setEffAlphaKey(spep_7+54, ctg, 0);

entryFade( spep_7+50, 5,  13, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp( spep_7+40, 1, 0);



------------------------------------------------------
-- 最後
------------------------------------------------------
spep_9 = spep_7+60;

entryFade( spep_9-5, 2, 3, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_9+5, 0, 120, 0, 0, 0, 0, 255);       -- ベース暗め　背景


last = entryEffect(  spep_9+8,   1586,   0x80,     -1,  0,  0,  0);--導入
setEffMoveKey(spep_9, last, 0, 0, 0);
setEffScaleKey( spep_9, last, -1.1, 1.1);
setEffAlphaKey( spep_9, last, 255);
setEffRotateKey( spep_9, last, 0);

playSe( spep_9+4, SE_07);

-- ダメージ表示
dealDamage(spep_9+16);

entryFade( spep_9+170, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_9+180);


end
