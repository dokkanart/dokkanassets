--超サイヤ人ゴテンクス_ギャラクティカドーナツ

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SP_ATK_0 = 6;
SP_ATK_1 = SP_ATK_0+10;
SP_ATK_2 = SP_ATK_1+63;
SP_ATK_3 = SP_ATK_2+92;
SP_ATK_4 = SP_ATK_3+50;

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

SP_01 = 109041;--溜め
SP_02 = 109042; --発射
SP_03 = 109043; --ドーナツ巻きつく全面
SP_04 = 109044; --ドーナツ巻きつく後面
SP_05 = 109045; --光弾発射
SP_06 = 109046; --光弾迫る

multi_frm = 2;

changeAnime( 0, 0, 0);                       -- 立ち
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0, 0,   0);
setMoveKey(   1,   0,    0, 0,   0);
setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   1,   0, 1.5, 1.5);

------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

--気を貯める
--         frame, eff, atr,tgt, tag,  x, y
changeAnime(  30, 0, 17);                       -- 溜め!
entryEffect(  30,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
entryEffect(  30,   1500,   0,    -1,  0,  0,  0);    -- eff_001
playSe( 30, SE_01);

entryFade( 62, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  30,   311, 39, 0x40,  0,  1,  0,  -30); -- オーラ
setEffScaleKey( 30, aura, 1.2, 1.2);
setShakeChara( 30, 0, 19, 5);

-- 書き文字エントリー
ct = entryEffectLife( 30, 10013, 39, 0, -1, -150, 0, 350); -- ズズンッ
setEffShake(30, ct, 40, 7);
setEffAlphaKey(30, ct, 255);
setEffAlphaKey(50, ct, 255);
setEffAlphaKey(70, ct, 0);
setEffScaleKey( 30, ct, 0.1, 0.1);
setEffScaleKey( 40, ct, 2.0, 2.0);
playSe( 30, SE_02);

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
setVisibleUI(69, 0);
changeAnime( 70, 0, 30);                       -- 溜め!
playSe( 73, SE_03);

entryEffect(  70,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect(  70,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
speff = entryEffect(  80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( 80, SE_04);

kame_hand = entryEffect( 70, SP_01, 0x100,      0,  300,  0,  0);   -- 手のカメハメ波部
setEffScaleKey( 70, kame_hand, 0.5, 0.5);

entryFade( 165, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  70,   311, 99, 0x40,  0,  1,  0,  -30); -- オーラ
setEffScaleKey( 30, aura, 1.2, 1.2);
setShakeChara( 70, 0, 49, 5);

-- 書き文字エントリー
ct = entryEffectLife( 90, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(90, ct, 40, 8);
setEffScaleKey(90, ct, 1.4, 1.4);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( 169,   0, 1.5, 1.5);
setScaleKey( 170,   0, 1.0, 1.0);

------------------------------------------------------
-- 極限Z対応
------------------------------------------------------

if (_SPECIAL_SKILL_LEVEL_ == 0) then
print ("_SPECIAL_SKILL_LEVEL_ == 0");
playSe( 170, SE_05);
speff = entryEffect( 170, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
print ("_SPECIAL_SKILL_LEVEL_ == 1");
playSe( 170, SE_05);
speff = entryEffect( 170, 1120, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( 170, SE_05);
speff = entryEffect( 170, 1121, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

------------------------------------------------------

entryFade( 254, 4, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(  255,    0,   0,  0,   0);

------------------------------------------------------
-- ドーナツ発射(110F)
------------------------------------------------------
changeAnime( 260, 0, 31);                                    -- かめはめ発射ポーズ

setMoveKey(  259,    0,      -500,  250,   0);
setMoveKey(  270,    0,   -150,  150,   0);
setMoveKey(  290,    0,   -150,  150,   0);

playSe( 265, SE_06);


kamehame_beam = entryEffectLife( 260, SP_02, 109, 0x40,  0,  300,  0,  0);   -- 伸びるかめはめ波
setEffScaleKey( 260, kamehame_beam, 1.0, 1.0);

--playSe( 260+20, SE_07);

--spname = entryEffect( 260, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
--setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え


setMoveKey(  290,    0,   -300,  200,   70);
setMoveKey(  302,    0,   -450,  220,   120);
setMoveKey(  355,    0,   -900,  0,   0);


--entryFade( 365, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
entryFadeBg( 260, 0, 109, 0, 10, 10, 10, 180);       -- ベース暗め　背景
entryFadeBg( 260, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
--entryFadeBg( 300, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景
entryFadeBg( 300, 0, 2, 8, 0, 0, 0, 250);     -- 青い　背景

--entryEffectLife( 260, 920, 109, 0x80,  -1,  0,  0,  0); -- 流線
sen2 = entryEffectLife( 260, 921, 109, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(260, sen2, 190);
setEffScaleKey(260, sen2, 1.3, 1.3);
setShakeChara( 305, 0, 54, 50);

--setShakeChara( 305, 0, 54, 50);

shuchusen = entryEffectLife( 260, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 260, shuchusen, 1.0, 1.0);
setEffScaleKey( 300, shuchusen, 1.0, 1.0);
setEffScaleKey( 309, shuchusen, 2.0, 2.0);

-- 書き文字エントリー
ct = entryEffectLife( 268, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(268, ct, 32, 5);
setEffAlphaKey(268, ct, 255);
setEffAlphaKey(290, ct, 255);
setEffAlphaKey(300, ct, 0);
setEffScaleKey(268, ct, 0.0, 0.0);
setEffScaleKey(272, ct, 1.3, 1.3);
setEffScaleKey(292, ct, 1.3, 1.3);
setEffScaleKey(300, ct, 6.0, 6.0);

playSe( 300, SE_07);

entryFade( 355, 5,  10, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setScaleKey( 355,   0, 1.0, 1.0);

removeAllEffect(358);


------------------------------------------------------
-- ドーナツ迫る(100F)
------------------------------------------------------
setDisp( 370, 0, 0);
setDisp( 370, 1, 1);
changeAnime( 370, 1, 104);                        -- ガード
setMoveKey(  369,    1,  0,  0,   0);
setMoveKey(  370,    1,  0,  0,   0);
setMoveKey(  371,    1,  0,  0,   0);
setScaleKey( 369,    1,  1.5, 1.5);
setScaleKey( 370,    1,  1.5, 1.5);

setMoveKey(  394,    1,   0,  0,   0);
setScaleKey(  394,   1,   1.6,  1.6);

entryEffectLife( 370, 921, 90, 0x80,  -1,  0,  0,  0); -- 流線斜め

gurumae = entryEffectLife( 370, SP_03, 80 ,  0x100 , 1,  0,  0,  0);--ドーナツ前
gurugo = entryEffectLife( 370, SP_04, 80 ,  0x80 , 1,  0,  0,  0);--ドーナツ後
setEffAlphaKey(370, gurumae, 255);
setEffAlphaKey(370, gurugo, 255);

setEffScaleKey( 370, gurugo, 1.4, 1.4);
setEffScaleKey( 370, gurumae, 1.4, 1.4 ); --
setEffMoveKey( 370, gurugo, 300, 1000);
setEffMoveKey( 370, gurumae, 300, 1000);

setEffScaleKey( 385, gurugo, 2.4, 2.4);
setEffScaleKey( 385, gurumae, 2.4, 2.4 ); --
setEffMoveKey( 385, gurugo, 300, 1000);
setEffMoveKey( 385, gurumae, 300, 1000);

setEffMoveKey( 400, gurugo, 0, 0);
setEffMoveKey( 400, gurumae, 0, 0);


setEffScaleKey( 405, gurugo, 0.8, 0.8);
setEffScaleKey( 405, gurumae, 0.8, 0.8); --
setMoveKey(  425,    1,   0,  0,   0);

spep_3=40;

entryFade( spep_3+405, 6,  8, 7, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade--spep_3+422
setEffAlphaKey(spep_3+411, gurumae, 255);
setEffAlphaKey(spep_3+411, gurugo, 255);
setDisp( spep_3+411, 1, 0);

setEffAlphaKey(spep_3+414, gurumae, 0);
setEffAlphaKey(spep_3+414, gurugo, 0);

-- ** エフェクト等 ** --
setShakeChara( 370, 1, 99, 20);

entryFadeBg( 370, 0, 90, 0, 10, 10, 10, 150);          -- ベース暗め　背景


-- 書き文字エントリー
ct = entryEffectLife( 428, 10007, 65, 0, -1, 0, -100, 255); -- ギュンッ
setEffShake(428, ct, 99, 20);
setEffScaleKey( 428, ct, 2.4, 2.4);
setEffRotateKey(405, ct, 0);
--setEffAlphaKey(415, ct, 155);
setEffAlphaKey(428, ct, 255);
setEffAlphaKey(450, ct, 0);

--playSe( 428, 1015);
--playSe( 428, SE_06);

setMoveKey(  spep_3+411,    1,   0,  0,   0);
setScaleKey(  spep_3+415,   1,   1.6,  1.6);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 420; --エンドフェイズのフレーム数を置き換える

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

spep_4=spep_3+432;--spep_3=40 445

------------------------------------------------------
-- 突撃( 100F)
------------------------------------------------------

playSe( 428, 1017);

setRotateKey( spep_4-1, 0, 35); 
setScaleKey( spep_4,   0, 1.7, 1.7);
changeAnime( spep_4, 0, 3); 
--changeAnime( spep_4, 1, 100); 
setDisp( spep_4, 0, 1);


--P移動
--setMoveKey(  spep_4-1,    0,      0,  0,   0);
setMoveKey(  spep_4,    0,   -600,  150,   0);
--setMoveKey(  spep_4+5,    0,   600,  150,   0);

setMoveKey(  spep_4+20,    0,   600,  -75,   0);

--setScaleKey( spep_4+5,   0, 2.5, 2.5);
setMoveKey(  spep_4+25,    0,   300,  0,   0);
setMoveKey(  spep_4+35,    0,   0,  46,   0);--72

playSe( spep_4, SE_06);

--setDisp( spep_4, 0, 0);

--spep_7=+30;

changeAnime( spep_4+25+15, 0, 19); 
kamehame_beam2 = entryEffectLife( spep_4+25+30, SP_05, 109, 0x40,  0,  300,  230,  -65);   -- 伸びるかめはめ波
setEffScaleKey( spep_4+25+30, kamehame_beam2, 1, 1);
setEffScaleKey( spep_4+25+45, kamehame_beam2, 1.3, 1.3);

setEffAlphaKey( spep_4+25+30, kamehame_beam2, 255);
--setEffAlphaKey( spep_4+25+44, kamehame_beam2, 0);
setEffAlphaKey( spep_4+25+45+30, kamehame_beam2, 255);

playSe( spep_4+25+30, SE_07);
setMoveKey(  spep_4+45+30,    0,   0,  46,   0);
setScaleKey( spep_4+45+30,   0, 1.7, 1.7);

setMoveKey(  spep_4+25+50,    0,   -150,  170,   20);
setMoveKey(  spep_4+25+72,    0,   -300,  200,   35);
setMoveKey(  spep_4+25+115,    0,   -900,  260,   50);

setDisp( spep_4+81+30, 0, 0);--305

--entryFade( 365, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
entryFadeBg( spep_4-14, 0, 166, 0, 10, 10, 10, 180);       -- ベース暗め　背景 260
--entryFadeBg( spep_4, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
--entryFadeBg( spep_4+40, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景

sen2 = entryEffectLife( spep_4-14, 920, 166, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey( spep_4-14, sen2, 20);
setEffScaleKey( spep_4-14, sen2, 1.5, 1.2);

setShakeChara( spep_4+30+30, 0, 24, 30);

-- 書き文字エントリー
ct = entryEffectLife( spep_4+33+30, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake( spep_4+33+30, ct, 32, 5);
setEffAlphaKey( spep_4+33+30, ct, 255);
setEffAlphaKey( spep_4+55+30, ct, 255);
setEffAlphaKey( spep_4+65+30, ct, 0);
setEffScaleKey( spep_4+33+30, ct, 0.0, 0.0);
setEffScaleKey( spep_4+37+30, ct, 1.3, 1.3);
setEffScaleKey( spep_4+57+30, ct, 1.3, 1.3);
setEffScaleKey( spep_4+65+30, ct, 6.0, 6.0);
playSe( spep_4+65+30, SE_07);

entryFade( spep_4+105, 10,  7, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade 355
setScaleKey( spep_4+105+11,   0, 1.7, 1.7);
removeAllEffect(spep_4+105+11);

--spep_6=spep_4+125+10+20;--spep_4=415

spep_6=spep_4+105+25;--spep_4=415

------------------------------------------------------
-- かめはめは迫る( 100F)
------------------------------------------------------

playSe( spep_6+20, SE_06);

--entryFade( spep_6+70, 5,  5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp( spep_6+75, 1, 0);

ryusen = entryEffectLife( spep_6-1, 921, 70, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( spep_6-1, ryusen, 190);
setEffScaleKey( spep_6-1, ryusen, 1.4, 1.4);

kamehame_beam3 = entryEffect( spep_6, SP_06,   0x80, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey(spep_6, kamehame_beam3, 1.2, 1.2);
setEffScaleKey(spep_6+80, kamehame_beam3, 1, 1);
--setEffScaleKey(spep_6+84, kamehame_beam2, 2.5, 2.5);
setDamage( spep_6+82, 1, 0);  -- ダメージ振動等


playSe( spep_6+85, SE_09);

-- ** エフェクト等 ** --
setShakeChara( spep_6, 1, 99, 20);

entryFadeBg( spep_6, 0, 99, 0,0, 0, 0, 255);          -- ベース暗め　背景

-- 書き文字エントリー

ct = entryEffectLife( spep_6-5, 10014, 75, 0, -1, 0, 100, 355); -- ズドドッ
setEffShake(spep_6-5, ct, 99, 20);
setEffScaleKey( spep_6-5, ct, 3, 3);
setEffRotateKey(spep_6-5, ct, 70);
setEffAlphaKey(spep_6-5, ct, 255);
setEffAlphaKey(spep_6+35, ct, 255);
setEffAlphaKey(spep_6+40, ct, 0);

ct = entryEffectLife( spep_6+62-15, 10006, 45, 0x80, -1, 0, 0, 255); -- ギャン
setEffShake(spep_6+62-15, ct, 99, 20);
setEffScaleKey( spep_6+62-15, ct, 0.1, 0.1);
setEffScaleKey( spep_6+75-10, ct, 2.4, 2.4);
setEffScaleKey( spep_6+85-10, ct, 2.8, 2.8);
setEffAlphaKey(spep_6+62-15, ct, 255);
setEffAlphaKey(spep_6+95-10, ct, 255);
setEffAlphaKey(spep_6+110-10, ct, 0);

entryFade( spep_6+85, 6,  10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_5=spep_6+100; --410 469
------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

bakuhatu = entryEffect( spep_5,1558,0,-1,0,0,0);--地球からエネルギー放出
setEffScaleKey( spep_5, bakuhatu, 1.2, 1.2);

setDisp( spep_5, 1, 0);

playSe( spep_5+4, SE_07);
shuchusen = entryEffectLife( spep_5+4, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
--entryEffect( 473, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(spep_5+17);

entryFade( spep_5+101, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_5+111);

else

-----------------------------------------
--敵側の攻撃
-----------------------------------------
--キャラ位置
--setMoveKey( 0,    0,      0,  0,   0);
setMoveKey( 0,    1,      800,  0,   0);


--気を貯める
--         frame, eff, atr,tgt, tag,  x, y
changeAnime(  30, 0, 17);                       -- 溜め!
entryEffect(  30,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
entryEffect(  30,   1500,   0,    -1,  0,  0,  0);    -- eff_001
playSe( 30, SE_01);

entryFade( 62, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  30,   311, 39, 0x40,  0,  1,  0,  -30); -- オーラ
setEffScaleKey( 30, aura, 1.2, 1.2);
setShakeChara( 30, 0, 19, 5);

-- 書き文字エントリー
ct = entryEffectLife( 30, 10013, 39, 0, -1, -150, 0, 350); -- ズズンッ
setEffShake(30, ct, 40, 7);
setEffAlphaKey(30, ct, 255);
setEffAlphaKey(50, ct, 255);
setEffAlphaKey(70, ct, 0);
setEffScaleKey( 30, ct, 0.1, 0.1);
setEffScaleKey( 40, ct, 2.0, 2.0);
playSe( 30, SE_02);

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
setVisibleUI(69, 0);
changeAnime( 70, 0, 30);                       -- 溜め!
playSe( 73, SE_03);

entryEffect(  70,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect(  70,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)

--[[
speff = entryEffect(  80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
--]]

playSe( 80, SE_04);

kame_hand = entryEffect( 70, SP_01, 0x100,      0,  300,  0,  0);   -- 手のカメハメ波部
setEffScaleKey( 70, kame_hand, 0.5, 0.5);

entryFade( 165, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  70,   311, 99, 0x40,  0,  1,  0,  -30); -- オーラ
setEffScaleKey( 30, aura, 1.2, 1.2);
setShakeChara( 70, 0, 49, 5);

-- 書き文字エントリー
ct = entryEffectLife( 90, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(90, ct, 40, 8);
setEffScaleKey(90, ct, 1.4, 1.4);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( 169,   0, 1.5, 1.5);
setScaleKey( 170,   0, 1.0, 1.0);

------------------------------------------------------
-- 極限Z対応
------------------------------------------------------

if (_SPECIAL_SKILL_LEVEL_ == 0) then
print ("_SPECIAL_SKILL_LEVEL_ == 0");
playSe( 170, SE_05);
speff = entryEffect( 170, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
print ("_SPECIAL_SKILL_LEVEL_ == 1");
playSe( 170, SE_05);
speff = entryEffect( 170, 1120, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( 170, SE_05);
speff = entryEffect( 170, 1121, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

------------------------------------------------------

entryFade( 254, 4, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(  255,    0,   0,  0,   0);

------------------------------------------------------
-- ドーナツ発射(110F)
------------------------------------------------------
changeAnime( 260, 0, 31);                                    -- かめはめ発射ポーズ

setMoveKey(  259,    0,      -500,  250,   0);
setMoveKey(  270,    0,   -150,  150,   0);
setMoveKey(  290,    0,   -150,  150,   0);

playSe( 258, SE_06);


kamehame_beam = entryEffectLife( 260, SP_02, 109, 0x40,  0,  300,  0,  0);   -- 伸びるかめはめ波
setEffScaleKey( 260, kamehame_beam, 1.0, 1.0);

--playSe( 260+20, SE_07);

--spname = entryEffect( 260, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
--setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え


setMoveKey(  290,    0,   -300,  200,   70);
setMoveKey(  302,    0,   -450,  220,   120);
setMoveKey(  355,    0,   -900,  0,   0);


--entryFade( 365, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
entryFadeBg( 260, 0, 109, 0, 10, 10, 10, 180);       -- ベース暗め　背景
entryFadeBg( 260, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
--entryFadeBg( 300, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景
entryFadeBg( 300, 0, 2, 8, 0, 0, 0, 250);     -- 青い　背景

--entryEffectLife( 260, 920, 109, 0x80,  -1,  0,  0,  0); -- 流線
sen2 = entryEffectLife( 260, 921, 109, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(260, sen2, 190);
setEffScaleKey(260, sen2, 1.3, 1.3);
setShakeChara( 305, 0, 54, 50);

--setShakeChara( 305, 0, 54, 50);

shuchusen = entryEffectLife( 260, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 260, shuchusen, 1.0, 1.0);
setEffScaleKey( 300, shuchusen, 1.0, 1.0);
setEffScaleKey( 309, shuchusen, 2.0, 2.0);

-- 書き文字エントリー
ct = entryEffectLife( 268, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(268, ct, 32, 5);
setEffAlphaKey(268, ct, 255);
setEffAlphaKey(290, ct, 255);
setEffAlphaKey(300, ct, 0);
setEffScaleKey(268, ct, 0.0, 0.0);
setEffScaleKey(272, ct, 1.3, 1.3);
setEffScaleKey(292, ct, 1.3, 1.3);
setEffScaleKey(300, ct, 6.0, 6.0);

playSe( 300, SE_07);

entryFade( 355, 5,  10, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setScaleKey( 355,   0, 1.0, 1.0);

removeAllEffect(358);

------------------------------------------------------
-- ドーナツ迫る(100F)
------------------------------------------------------
setDisp( 370, 0, 0);
setDisp( 370, 1, 1);
changeAnime( 370, 1, 104);                        -- ガード
setMoveKey(  369,    1,  0,  0,   0);
setMoveKey(  370,    1,  0,  0,   0);
setMoveKey(  371,    1,  0,  0,   0);
setScaleKey( 369,    1,  1.5, 1.5);
setScaleKey( 370,    1,  1.5, 1.5);

setMoveKey(  394,    1,   0,  0,   0);
setScaleKey(  394,   1,   1.6,  1.6);

gurumae = entryEffectLife( 370, SP_03, 80 ,  0x100 , 1,  0,  0,  0);--ドーナツ前
gurugo = entryEffectLife( 370, SP_04, 80 ,  0x80 , 1,  0,  0,  0);--ドーナツ後
setEffAlphaKey(370, gurumae, 255);
setEffAlphaKey(370, gurugo, 255);

setEffScaleKey( 370, gurugo, 1.4, 1.4);
setEffScaleKey( 370, gurumae, 1.4, 1.4 ); --
setEffMoveKey( 370, gurugo, 300, 1000);
setEffMoveKey( 370, gurumae, 300, 1000);

setEffScaleKey( 385, gurugo, 2.4, 2.4);
setEffScaleKey( 385, gurumae, 2.4, 2.4 ); --
setEffMoveKey( 385, gurugo, 300, 1000);
setEffMoveKey( 385, gurumae, 300, 1000);

setEffMoveKey( 400, gurugo, 0, 0);
setEffMoveKey( 400, gurumae, 0, 0);


setEffScaleKey( 405, gurugo, 0.8, 0.8);
setEffScaleKey( 405, gurumae, 0.8, 0.8); --
setMoveKey(  425,    1,   0,  0,   0);

spep_3=40;

entryFade( spep_3+405, 6,  8, 7, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade--spep_3+422
setEffAlphaKey(spep_3+411, gurumae, 255);
setEffAlphaKey(spep_3+411, gurugo, 255);
setDisp( spep_3+411, 1, 0);

setEffAlphaKey(spep_3+414, gurumae, 0);
setEffAlphaKey(spep_3+414, gurugo, 0);

-- ** エフェクト等 ** --
setShakeChara( 370, 1, 99, 20);

entryFadeBg( 370, 0, 90, 0, 10, 10, 10, 150);          -- ベース暗め　背景

entryEffectLife( 370, 921, 90, 0x80,  -1,  0,  0,  0); -- 流線斜め

-- 書き文字エントリー
ct = entryEffectLife( 428, 10007, 65, 0, -1, 0, -100, 255); -- ギュンッ
setEffShake(428, ct, 99, 20);
setEffScaleKey( 428, ct, 2.4, 2.4);
setEffRotateKey(405, ct, 0);
--setEffAlphaKey(415, ct, 155);
setEffAlphaKey(428, ct, 255);
setEffAlphaKey(450, ct, 0);

setMoveKey(  spep_3+411,    1,   0,  0,   0);
setScaleKey(  spep_3+415,   1,   1.6,  1.6);


------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 420; --エンドフェイズのフレーム数を置き換える

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

spep_4=spep_3+432;--spep_3=40 445

------------------------------------------------------
-- 突撃( 100F)
------------------------------------------------------

playSe( 428, 1017);

setRotateKey( spep_4-1, 0, 35); 
setScaleKey( spep_4,   0, 1.7, 1.7);
changeAnime( spep_4, 0, 3); 
--changeAnime( spep_4, 1, 100); 
setDisp( spep_4, 0, 1);


--P移動
--setMoveKey(  spep_4-1,    0,      0,  0,   0);
setMoveKey(  spep_4,    0,   -600,  150,   0);
--setMoveKey(  spep_4+5,    0,   600,  150,   0);

setMoveKey(  spep_4+20,    0,   600,  -75,   0);

--setScaleKey( spep_4+5,   0, 2.5, 2.5);
setMoveKey(  spep_4+25,    0,   300,  0,   0);
setMoveKey(  spep_4+35,    0,   0,  46,   0);--72

playSe( spep_4, SE_06);

--setDisp( spep_4, 0, 0);

--spep_7=+30;

changeAnime( spep_4+25+15, 0, 19); 
kamehame_beam2 = entryEffectLife( spep_4+25+30, SP_05, 109, 0x40,  0,  300,  230,  -65);   -- 伸びるかめはめ波
setEffScaleKey( spep_4+25+30, kamehame_beam2, 1, 1);
setEffScaleKey( spep_4+25+45, kamehame_beam2, 1.3, 1.3);

setEffAlphaKey( spep_4+25+30, kamehame_beam2, 255);
--setEffAlphaKey( spep_4+25+44, kamehame_beam2, 0);
setEffAlphaKey( spep_4+25+45+30, kamehame_beam2, 255);

playSe( spep_4+25+30, SE_07);
setMoveKey(  spep_4+45+30,    0,   0,  46,   0);
setScaleKey( spep_4+45+30,   0, 1.7, 1.7);

setMoveKey(  spep_4+25+50,    0,   -150,  170,   20);
setMoveKey(  spep_4+25+72,    0,   -300,  200,   35);
setMoveKey(  spep_4+25+115,    0,   -900,  260,   50);

setDisp( spep_4+81+30, 0, 0);--305

--entryFade( 365, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
entryFadeBg( spep_4-14, 0, 166, 0, 10, 10, 10, 180);       -- ベース暗め　背景 260
--entryFadeBg( spep_4, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
--entryFadeBg( spep_4+40, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景

sen2 = entryEffectLife( spep_4-14, 920, 166, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey( spep_4-14, sen2, 20);
setEffScaleKey( spep_4-14, sen2, 1.5, 1.2);

setShakeChara( spep_4+30+30, 0, 24, 30);

-- 書き文字エントリー
ct = entryEffectLife( spep_4+33+30, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake( spep_4+33+30, ct, 32, 5);
setEffAlphaKey( spep_4+33+30, ct, 255);
setEffAlphaKey( spep_4+55+30, ct, 255);
setEffAlphaKey( spep_4+65+30, ct, 0);
setEffScaleKey( spep_4+33+30, ct, 0.0, 0.0);
setEffScaleKey( spep_4+37+30, ct, 1.3, 1.3);
setEffScaleKey( spep_4+57+30, ct, 1.3, 1.3);
setEffScaleKey( spep_4+65+30, ct, 6.0, 6.0);
playSe( spep_4+65+30, SE_07);

entryFade( spep_4+105, 10,  7, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade 355
setScaleKey( spep_4+105+11,   0, 1.7, 1.7);
removeAllEffect(spep_4+105+11);

--spep_6=spep_4+125+10+20;--spep_4=415

spep_6=spep_4+105+25;--spep_4=415

------------------------------------------------------
-- かめはめは迫る( 100F)
------------------------------------------------------

playSe( spep_6+20, SE_06);

--entryFade( spep_6+70, 5,  5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp( spep_6+75, 1, 0);

ryusen = entryEffectLife( spep_6-1, 921, 70, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( spep_6-1, ryusen, 190);
setEffScaleKey( spep_6-1, ryusen, 1.4, 1.4);

kamehame_beam3 = entryEffect( spep_6, SP_06,   0x80, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey(spep_6, kamehame_beam3, 1.2, 1.2);
setEffScaleKey(spep_6+80, kamehame_beam3, 1, 1);
--setEffScaleKey(spep_6+84, kamehame_beam2, 2.5, 2.5);
setDamage( spep_6+82, 1, 0);  -- ダメージ振動等


playSe( spep_6+85, SE_09);

-- ** エフェクト等 ** --
setShakeChara( spep_6, 1, 99, 20);

entryFadeBg( spep_6, 0, 99, 0,0, 0, 0, 255);          -- ベース暗め　背景

-- 書き文字エントリー

ct = entryEffectLife( spep_6-5, 10014, 75, 0, -1, 0, 100, 355); -- ズドドッ
setEffShake(spep_6-5, ct, 99, 20);
setEffScaleKey( spep_6-5, ct, 3, 3);
setEffRotateKey(spep_6-5, ct, -70);
setEffAlphaKey(spep_6-5, ct, 255);
setEffAlphaKey(spep_6+35, ct, 255);
setEffAlphaKey(spep_6+40, ct, 0);

ct = entryEffectLife( spep_6+62-15, 10006, 45, 0x80, -1, 0, 0, 255); -- ギャン
setEffShake(spep_6+62-15, ct, 99, 20);
setEffScaleKey( spep_6+62-15, ct, 0.1, 0.1);
setEffScaleKey( spep_6+75-10, ct, 2.4, 2.4);
setEffScaleKey( spep_6+85-10, ct, 2.8, 2.8);
setEffAlphaKey(spep_6+62-15, ct, 255);
setEffAlphaKey(spep_6+95-10, ct, 255);
setEffAlphaKey(spep_6+110-10, ct, 0);

entryFade( spep_6+85, 6,  10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_5=spep_6+100; --410 469
------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

bakuhatu = entryEffect( spep_5,1558,0,-1,0,0,0);--地球からエネルギー放出
setEffScaleKey( spep_5, bakuhatu, 1.2, 1.2);

setDisp( spep_5, 1, 0);

playSe( spep_5+4, SE_07);
shuchusen = entryEffectLife( spep_5+4, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
--entryEffect( 473, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(spep_5+17);

entryFade( spep_5+101, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_5+111);

end
