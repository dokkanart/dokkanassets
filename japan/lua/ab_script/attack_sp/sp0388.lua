
fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SP_01 = 150728;--ef_001
SP_01e = 150729;--ef_001e
SP_02 = 150730;--ef_002
SP_02e = 150731;--ef_003e
SP_03 = 150732;--ef_003

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



setDisp( 0, 1, 0);
setDisp( 0, 0, 0);

setMoveKey( 0, 0,    0, 50,   0);
setMoveKey( 1, 0,    0, 50,   0);
setMoveKey( 2, 0,    0, 50,   0);
setMoveKey( 3, 0,    0, 50,   0);
setMoveKey( 0, 1,    0, -54,   0);
setMoveKey( 1, 1,    0, -54,   0);
setMoveKey( 2, 1,    0, -54,   0);
setMoveKey( 3, 1,    0, -54,   0);

setScaleKey( 0,   1, 1.2, 1.2);
setScaleKey( 1,   1, 1.2, 1.2);
setScaleKey( 0,   0, 1.2, 1.2);
setScaleKey( 1,   0, 1.2, 1.2);

setRotateKey( 0,  1,  0 );
setRotateKey( 1,  1,  0 );

--entryFade( 0, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( 0, 0, 70, 0, 10, 10, 10, 180);       -- ベース暗め　背景
setVisibleUI(0, 0);
setDisp( 0, 0, 1);

changeAnime(  0, 0, 1);     



changeAnime(  30, 0, 17);                       -- 溜め!


kouka2=entryEffect(  30,   1500,   0,    -1,  0,  0,  0);    -- eff_001
setEffMoveKey( 30, kouka2, 0, 0, 0);
setEffScaleKey( 30, kouka2, 1.0, 1.0);
setEffAlphaKey( 30, kouka2, 255);
setEffRotateKey( 30, kouka2, 0);

kouka1=entryEffect(  30,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
setEffMoveKey( 30, kouka1, 0, 0, 0);
setEffScaleKey( 30, kouka1, 1.0, 1.0);
setEffAlphaKey( 30, kouka1, 255);
setEffRotateKey( 30, kouka1, 0);

playSe( 30, SE_01);

entryFade( 62, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  30,   311, 39, 0x40,  0,  1,  0,  -50); -- オーラ
setEffScaleKey( 30, aura, 1.5, 1.5);
setShakeChara( 30, 0, 19, 5);

-- 書き文字エントリー
ct = entryEffectLife( 30, 10013, 39, 0, -1, 0, 0, 350); -- ズズンッ
setEffShake(30, ct, 40, 7);
setEffAlphaKey(30, ct, 255);
setEffAlphaKey(50, ct, 255);
setEffAlphaKey(70, ct, 0);
setEffScaleKey( 30, ct, 0.1, 0.1);
setEffScaleKey( 40, ct, 2.0, 2.0);
playSe( 30, SE_02);


------------------------------------------------------
--ビッグバンアタック溜め
------------------------------------------------------

setMoveKey( 70, 0,    0, 50,   0);
setScaleKey( 70,   0, 1.2, 1.2);

entryFade( 65, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( 65, 0, 105, 0, 10, 10, 10, 180);       -- ベース暗め　背景
playSe( 73, SE_03);
setDisp( 73, 0, 0);

kouka3 = entryEffect( 70, 1503, 0x80,      -1,  0,  0,  0);   -- 手のカメハメ波部
setEffMoveKey( 70, kouka3, 0, 0, 0);
setEffScaleKey( 70, kouka3, 1.0, 1.0);
setEffAlphaKey( 70, kouka3, 255);
setEffRotateKey( 70, kouka3, 0);

kouka4 = entryEffect( 70, 1502, 0x100,      -1,  0,  0,  0);   -- 手のカメハメ波部
setEffMoveKey( 70, kouka4, 0, 0, 0);
setEffScaleKey( 70, kouka4, 1.0, 1.0);
setEffAlphaKey( 70, kouka4, 255);
setEffRotateKey( 70, kouka4, 0);

tame = entryEffect( 70, SP_01, 0x80,      -1,  0,  0,  0);   -- 手のカメハメ波部
setEffMoveKey( 70, tame, 0, 0, 0);
setEffScaleKey( 70, tame, 1.0, 1.0);
setEffAlphaKey( 70, tame, 255);
setEffRotateKey( 70, tame, 0);
setEffShake( 70, tame, 100, 10);




speff = entryEffect(  70,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  70,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( 70, SE_05);


-- 書き文字エントリー
ctgogo = entryEffectLife( 70, 190006, 85, 0x100, -1, 0,0, 500 + 25);    -- ゴゴゴゴ
setEffScaleKey(70, ctgogo, 0.7, 0.7);
setEffRotateKey(70, ctgogo, 10);
setEffAlphaKey( 70, ctgogo, 255);



------------------------------------------------------
-- カードカットイン(F)
------------------------------------------------------

spep_1 = 169;

setMoveKey( spep_1-1, 0,    0, -54,   0);
setMoveKey( spep_1, 0,    -2000, -54,   0);


entryFade( spep_1-10, 3, 15, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_1, 0, 90, 0, 10, 10, 10, 180);       -- ベース暗め　背景


setScaleKey( spep_1,   0, 1.8, 1.8);


playSe( spep_1+5, SE_05);
speff = entryEffect( spep_1,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

--shuchuserush = entryEffectLife( spep_1+1, 906, 85, 0x100,  -1, 0,  0,  0);   -- 集中線
--setEffMoveKey(spep_1+1, shuchuserush, 0, 0, 0);
--setEffScaleKey( spep_1+1, shuchuserush, 1.2, 1.2);
--setEffAlphaKey( spep_1+1, shuchuserush, 255);
--setEffRotateKey( spep_1+1, shuchuserush, 0);


------------------------------------------------------
-- 放つ
------------------------------------------------------

spep_2 = spep_1+90;
entryFade( spep_2-10, 5, 15, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_2+5, 0, 120, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 奥行き流線斜め ** --
sen2 = entryEffectLife( spep_2, 921, 120, 0x80,  -1,  0,  0,  0); -- 奥行き流線斜め
setEffRotateKey( spep_2, sen2, -210);
setEffScaleKey( spep_2, sen2, 1.7, 1.7);
-- ** エフェクト ** --
hanatu = entryEffect( spep_2, SP_02, 0x100,      -1,  0,  0,  0);   -- 手のカメハメ波部
setEffMoveKey( spep_2, hanatu, 0, 0, 0);
setEffScaleKey( spep_2, hanatu, 1.0, 1.0);
setEffAlphaKey( spep_2, hanatu, 255);
setEffRotateKey( spep_2, hanatu, 0);

ctzuo = entryEffectLife( spep_2, 10012, 50, 0x100, -1, 0, 0, 400);    -- ズオッ
setEffRotateKey(spep_2, ctzuo, 20);
setEffAlphaKey( spep_2, ctzuo, 255);
setEffScaleKey( spep_2, ctzuo, 2.0, 2.0);
setEffScaleKey( spep_2+50, ctzuo, 3.0, 3.0);
setEffAlphaKey( spep_2, ctzuo, 255);
setEffAlphaKey( spep_2+50, ctzuo, 0);
setEffShake( spep_2, ctzuo, 45, 8);
setEffRotateKey(spep_2+50, ctzuo, 20);

--spname = entryEffect( spep_2, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
--setEffReplaceTexture(spname, 7, 4);  

playSe( spep_2+5, SE_06);

------------------------------------------------------
-- ビーム敵に向かう(90F)
------------------------------------------------------
--spep_3 = spep_2+120;
spep_3 = spep_2+116;

entryFade( spep_3-5, 3, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_3, 0, 110, 0, 10, 10, 10, 180);          -- ベース暗め　背景

semaru = entryEffect(  spep_3,   SP_03,   0x100,     -1,  0,  0,  0);--導入
setEffMoveKey(spep_3, semaru, 0, 0, 0);
setEffScaleKey( spep_3, semaru, 1.0, 1.0);
setEffAlphaKey( spep_3, semaru, 255);
setEffRotateKey( spep_3, semaru, 0);
-- ** 奥行き流線斜め ** --
sen2 = entryEffectLife( spep_3, 921, 120, 0x80,  -1,  0,  0,  0); -- 奥行き流線斜め
setEffRotateKey( spep_3, sen2, -30);
setEffScaleKey( spep_3, sen2, 1.6, 1.6);

ctzudo = entryEffectLife( spep_3, 10014, 96, 0x100, -1, 0, 100, 300);    -- ズドドドッ
setEffRotateKey( spep_3, ctzudo, 60);
setEffAlphaKey( spep_3, ctzudo, 255);
setEffScaleKey( spep_3, ctzudo, 3.0, 3.0);
setEffAlphaKey( spep_3, ctzudo, 255);
setEffAlphaKey( spep_3+100, ctzudo, 255);
setEffShake( spep_3, ctzudo, 100, 8);
setEffRotateKey( spep_3+100, ctzudo, 60);
-- ** キャラクター ** --
setMoveKey( spep_3-1, 1, 0, 0, 0); --敵位置0

setDisp( spep_3, 1, 1);
changeAnime( spep_3, 1, 104); --敵モーション
setScaleKey( spep_3, 1, 1.6, 1.6); --敵サイズ
setMoveKey( spep_3, 1, 300, 250, 0); --敵位置0

--ここから回避があるので、敵の移動について調整、または回避構文のタイミングを調整

setMoveKey( spep_3+25, 1, 50, 50, 0); --敵位置
setMoveKey( spep_3+60, 1, 50, 50, 0); --敵位置

setDisp( spep_3+60, 1, 0);
setScaleKey( spep_3+60, 1, 1.6, 1.6); --敵サイズ
--playSe( spep_3+60, SE_07);
playSe( spep_3+50, SE_07);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 400; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);


setMoveKey( SP_dodge, 1,    0, 0,   0);
setMoveKey( SP_dodge+1, 1,  0,   0,   0);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade(SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setMoveKey( SP_dodge+8, 0,    0, -54,   0);
setMoveKey( SP_dodge+9, 0,  -1500,   -54,   0);

setMoveKey( SP_dodge+10, 1,  0,   0,   0);
endPhase(SP_dodge+10);
do return end
else end
------------------------------------------------------
-- 最後
------------------------------------------------------
spep_4 = spep_3+100;

entryFade( spep_4-5, 2, 3, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_4+5, 0, 120, 0, 0, 0, 0, 255);       -- ベース暗め　背景


last = entryEffect(  spep_4,   1557,   0x80,     -1,  0,  0,  0);--導入
setEffMoveKey(spep_4, last, 0, 0, 0);
setEffScaleKey( spep_4, last, -1.1, 1.1);
setEffAlphaKey( spep_4, last, 255);
setEffRotateKey( spep_4, last, 0);

playSe( spep_4+4, SE_07);

-- ダメージ表示
dealDamage(spep_4+16);

--entryFade( spep_4+130, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_4+130);


else
------------------------------------------------------
--敵側
------------------------------------------------------

setDisp( 0, 1, 0);
setDisp( 0, 0, 0);

setMoveKey( 0, 0,    0, 50,   0);
setMoveKey( 1, 0,    0, 50,   0);
setMoveKey( 2, 0,    0, 50,   0);
setMoveKey( 3, 0,    0, 50,   0);
setMoveKey( 0, 1,    0, -54,   0);
setMoveKey( 1, 1,    0, -54,   0);
setMoveKey( 2, 1,    0, -54,   0);
setMoveKey( 3, 1,    0, -54,   0);

setScaleKey( 0,   1, 1.2, 1.2);
setScaleKey( 1,   1, 1.2, 1.2);
setScaleKey( 0,   0, 1.2, 1.2);
setScaleKey( 1,   0, 1.2, 1.2);

setRotateKey( 0,  1,  0 );
setRotateKey( 1,  1,  0 );

--entryFade( 0, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( 0, 0, 70, 0, 10, 10, 10, 180);       -- ベース暗め　背景
setVisibleUI(0, 0);
setDisp( 0, 0, 1);

changeAnime(  0, 0, 1);     

changeAnime(  30, 0, 17);                       -- 溜め!


kouka2=entryEffect(  30,   1500,   0,    -1,  0,  0,  0);    -- eff_001
setEffMoveKey( 30, kouka2, 0, 0, 0);
setEffScaleKey( 30, kouka2, 1.0, 1.0);
setEffAlphaKey( 30, kouka2, 255);
setEffRotateKey( 30, kouka2, 0);

kouka1=entryEffect(  30,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
setEffMoveKey( 30, kouka1, 0, 0, 0);
setEffScaleKey( 30, kouka1, 1.0, 1.0);
setEffAlphaKey( 30, kouka1, 255);
setEffRotateKey( 30, kouka1, 0);

playSe( 30, SE_01);

entryFade( 62, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  30,   311, 39, 0x40,  0,  1,  0,  -50); -- オーラ
setEffScaleKey( 30, aura, 1.5, 1.5);
setShakeChara( 30, 0, 19, 5);

-- 書き文字エントリー
ct = entryEffectLife( 30, 10013, 39, 0, -1, 0, 0, 350); -- ズズンッ
setEffShake(30, ct, 40, 7);
setEffAlphaKey(30, ct, 255);
setEffAlphaKey(50, ct, 255);
setEffAlphaKey(70, ct, 0);
setEffScaleKey( 30, ct, 0.1, 0.1);
setEffScaleKey( 40, ct, 2.0, 2.0);
playSe( 30, SE_02);


------------------------------------------------------
--ビッグバンアタック溜め
------------------------------------------------------

setMoveKey( 70, 0,    0, 50,   0);
setScaleKey( 70,   0, 1.2, 1.2);

entryFade( 65, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( 65, 0, 105, 0, 10, 10, 10, 180);       -- ベース暗め　背景
playSe( 73, SE_03);
setDisp( 73, 0, 0);

kouka3 = entryEffect( 70, 1503, 0x80,      -1,  0,  0,  0);   -- 手のカメハメ波部
setEffMoveKey( 70, kouka3, 0, 0, 0);
setEffScaleKey( 70, kouka3, 1.0, 1.0);
setEffAlphaKey( 70, kouka3, 255);
setEffRotateKey( 70, kouka3, 0);

kouka4 = entryEffect( 70, 1502, 0x100,      -1,  0,  0,  0);   -- 手のカメハメ波部
setEffMoveKey( 70, kouka4, 0, 0, 0);
setEffScaleKey( 70, kouka4, 1.0, 1.0);
setEffAlphaKey( 70, kouka4, 255);
setEffRotateKey( 70, kouka4, 0);

tame = entryEffect( 70, SP_01e, 0x80,      -1,  0,  0,  0);   -- 手のカメハメ波部
setEffMoveKey( 70, tame, 0, 0, 0);
setEffScaleKey( 70, tame, 1.0, 1.0);
setEffAlphaKey( 70, tame, 255);
setEffRotateKey( 70, tame, 0);
setEffShake( 70, tame, 100, 10);




--speff = entryEffect(  70,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  70,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( 70, SE_05);


-- 書き文字エントリー
ctgogo = entryEffectLife( 70, 190006, 85, 0x100, -1, 0,00, 500);    -- ゴゴゴゴ
setEffScaleKey(70, ctgogo, -0.7, 0.7);
setEffRotateKey(70, ctgogo, 10);
setEffAlphaKey( 70, ctgogo, 255);



------------------------------------------------------
-- カードカットイン(F)
------------------------------------------------------

spep_1 = 169;

setMoveKey( spep_1-1, 0,    0, -54,   0);
setMoveKey( spep_1, 0,    -2000, -54,   0);


entryFade( spep_1-10, 3, 15, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_1, 0, 90, 0, 10, 10, 10, 180);       -- ベース暗め　背景


setScaleKey( spep_1,   0, 1.8, 1.8);


playSe( spep_1+5, SE_05);
speff = entryEffect( spep_1,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

--shuchuserush = entryEffectLife( spep_1+1, 906, 85, 0x100,  -1, 0,  0,  0);   -- 集中線
--setEffMoveKey(spep_1+1, shuchuserush, 0, 0, 0);
--setEffScaleKey( spep_1+1, shuchuserush, 1.2, 1.2);
--setEffAlphaKey( spep_1+1, shuchuserush, 255);
--setEffRotateKey( spep_1+1, shuchuserush, 0);


------------------------------------------------------
-- 放つ
------------------------------------------------------

spep_2 = spep_1+90;
entryFade( spep_2-10, 5, 15, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_2+5, 0, 120, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 奥行き流線斜め ** --
sen2 = entryEffectLife( spep_2, 921, 120, 0x80,  -1,  0,  0,  0); -- 奥行き流線斜め
setEffRotateKey( spep_2, sen2, -210);
setEffScaleKey( spep_2, sen2, 1.7, 1.7);
-- ** エフェクト ** --
hanatu = entryEffect( spep_2, SP_02e, 0x100,      -1,  0,  0,  0);   -- 手のカメハメ波部
setEffMoveKey( spep_2, hanatu, 0, 0, 0);
setEffScaleKey( spep_2, hanatu, 1.0, 1.0);
setEffAlphaKey( spep_2, hanatu, 255);
setEffRotateKey( spep_2, hanatu, 0);

ctzuo = entryEffectLife( spep_2, 10012, 50, 0x100, -1, 0, 0, 400);    -- ズオッ
setEffRotateKey(spep_2, ctzuo, 20);
setEffAlphaKey( spep_2, ctzuo, 255);
setEffScaleKey( spep_2, ctzuo, 2.0, 2.0);
setEffScaleKey( spep_2+50, ctzuo, 3.0, 3.0);
setEffAlphaKey( spep_2, ctzuo, 255);
setEffAlphaKey( spep_2+50, ctzuo, 0);
setEffShake( spep_2, ctzuo, 45, 8);
setEffRotateKey(spep_2+50, ctzuo, 20);

--spname = entryEffect( spep_2, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
--setEffReplaceTexture(spname, 7, 4);  

playSe( spep_2+5, SE_06);

------------------------------------------------------
-- ビーム敵に向かう(90F)
------------------------------------------------------
--spep_3 = spep_2+120;
spep_3 = spep_2+116;

entryFade( spep_3-5, 3, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_3, 0, 110, 0, 10, 10, 10, 180);          -- ベース暗め　背景

semaru = entryEffect(  spep_3,   SP_03,   0x100,     -1,  0,  0,  0);--導入
setEffMoveKey(spep_3, semaru, 0, 0, 0);
setEffScaleKey( spep_3, semaru, 1.0, 1.0);
setEffAlphaKey( spep_3, semaru, 255);
setEffRotateKey( spep_3, semaru, 0);
-- ** 奥行き流線斜め ** --
sen2 = entryEffectLife( spep_3, 921, 120, 0x80,  -1,  0,  0,  0); -- 奥行き流線斜め
setEffRotateKey( spep_3, sen2, -30);
setEffScaleKey( spep_3, sen2, 1.6, 1.6);

ctzudo = entryEffectLife( spep_3, 10014, 96, 0x100, -1, 0, 100, 300);    -- ズドドドッ
setEffRotateKey( spep_3, ctzudo, 0);
setEffAlphaKey( spep_3, ctzudo, 255);
setEffScaleKey( spep_3, ctzudo, 3.0, 3.0);
setEffAlphaKey( spep_3, ctzudo, 255);
setEffAlphaKey( spep_3+100, ctzudo, 255);
setEffShake( spep_3, ctzudo, 100, 8);
setEffRotateKey( spep_3+100, ctzudo, 0);
setEffScaleKey( spep_3+100, ctzudo, 3.0, 3.0);

-- ** キャラクター ** --
setMoveKey( spep_3-1, 1, 0, 0, 0); --敵位置0

setDisp( spep_3, 1, 1);
changeAnime( spep_3, 1, 104); --敵モーション
setScaleKey( spep_3, 1, 1.6, 1.6); --敵サイズ
setMoveKey( spep_3, 1, 300, 250, 0); --敵位置0

--ここから回避があるので、敵の移動について調整、または回避構文のタイミングを調整

setMoveKey( spep_3+25, 1, 50, 50, 0); --敵位置
setMoveKey( spep_3+60, 1, 50, 50, 0); --敵位置

setDisp( spep_3+60, 1, 0);
setScaleKey( spep_3+60, 1, 1.6, 1.6); --敵サイズ
--playSe( spep_3+60, SE_07);
playSe( spep_3+50, SE_07);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 400; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);


setMoveKey( SP_dodge, 1,    0, 0,   0);
setMoveKey( SP_dodge+1, 1,  0,   0,   0);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade(SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setMoveKey( SP_dodge+8, 0,    0, -54,   0);
setMoveKey( SP_dodge+9, 0,  -1500,   -54,   0);

setMoveKey( SP_dodge+10, 1,  0,   0,   0);
endPhase(SP_dodge+10);
do return end
else end
------------------------------------------------------
-- 最後
------------------------------------------------------
spep_4 = spep_3+100;

entryFade( spep_4-5, 2, 3, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_4+5, 0, 120, 0, 0, 0, 0, 255);       -- ベース暗め　背景


last = entryEffect(  spep_4,   1557,   0x80,     -1,  0,  0,  0);--導入
setEffMoveKey(spep_4, last, 0, 0, 0);
setEffScaleKey( spep_4, last, -1.1, 1.1);
setEffAlphaKey( spep_4, last, 255);
setEffRotateKey( spep_4, last, 0);

playSe( spep_4+4, SE_07);

-- ダメージ表示
dealDamage(spep_4+16);

entryFade( spep_4+130, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_4+130);


end
