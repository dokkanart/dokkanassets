

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

tyo = -30;
tyo2 = -40;

--SP_01 = 100159;
--SP_02 = 100160;
--SP_03 = 100161;
--SP_04 = 1551;

--SP_01 = 100362;
--SP_02 = 100354;
--SP_02 = 160024;
--SP_03 = 100355;

SP_01 = 102184;
--SP_02 = 100354;
SP_02 = 102185;
SP_03 = 102186;
SP_04 = 102187;
SP_05 = 102188;


changeAnime( 0, 0, 0);                       -- 立ち
setDisp( 0, 1, 0);
setDisp( 0, 0, 0);

setMoveKey(   0,   0,    0, -54,   0);
setMoveKey(   1,   0,    0, -54,   0);
setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   1,   0, 1.5, 1.5);

------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

--気を貯める
--         frame, eff, atr,tgt, tag,  x, y
--changeAnime(  30, 0, 17);                       -- 溜め!
--entryEffect(  30,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
--entryEffect(  30,   1500,   0,    -1,  0,  0,  0);    -- eff_001
--playSe( 30, SE_01);

playSe( 5, SE_04);

speff = entryEffect(  70,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  70,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

kame_hand = entryEffect( 1, SP_01, 0x100,      0,  300,  0,  70);   -- 手のカメハメ波部
setEffScaleKey( 1, kame_hand, 1.0, 1.0);
setEffShake(1, kame_hand, 154, 8);

entryFade( 24, 1, 9, 1, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

SE001 = playSe( 36, SE_03);
setSeVolume( 36, SE_03, 70 );
stopSe( 48, SE001, 10 );

SE002 = playSe( 46, SE_03);
setSeVolume( 46, SE_03, 70 );
stopSe( 58, SE002, 10 );

SE003 = playSe( 56, SE_03);
setSeVolume( 56, SE_03, 70 );
stopSe( 78, SE003, 10 );

SE004 = playSe( 76, SE_03);
setSeVolume( 76, SE_03, 70 );
stopSe( 88, SE004, 10 );

SE005 = playSe( 86, SE_03);
setSeVolume( 86, SE_03, 70 );
stopSe( 98, SE005, 10 );

SE006 = playSe( 96, SE_03);
setSeVolume( 96, SE_03, 70 );
stopSe( 108, SE006, 10 );

SE007 = playSe( 106, SE_03);
setSeVolume( 106, SE_03, 70 );
stopSe( 118, SE007, 10 );

SE008 = playSe( 116, SE_03);
setSeVolume( 116, SE_03, 70 );
stopSe( 128, SE008, 10 );

SE009 = playSe( 126, SE_03);
setSeVolume( 126, SE_03, 70 );
stopSe( 138, SE009, 10 );

SE010 = playSe( 136, SE_03);
setSeVolume( 136, SE_03, 70 );
stopSe( 148, SE010, 10 );

SE011 = playSe( 146, SE_03);
setSeVolume( 146, SE_03, 70 );
stopSe( 158, SE011, 10 );

shuchusen = entryEffectLife( 0, 906, 149, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 0, shuchusen, 2.0, 2.0);
setEffScaleKey( 40, shuchusen, 2.0, 2.0);
setEffScaleKey( 49, shuchusen, 2.0, 2.0);

entryEffectLife( 0, 920, 149, 0x80,  -1,  0,  0,  0); -- 流線

entryFadeBg( 0, 0, 179, 0, 10, 10, 10, 180);       -- ベース暗め　背景

-- 書き文字エントリー
ct = entryEffectLife( 40, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(40, ct, 40, 8);
setEffScaleKey(40, ct, 1.4, 1.4);

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
setVisibleUI(1, 0);
changeAnime( 70, 0, 30);                       -- 溜め!
--playSe( 73, SE_03);

--playSe( 80, SE_04);

--kame_hand = entryEffect( 70, SP_01, 0x40,      0,  300,  -100,  100);   -- 手のカメハメ波部
--setEffScaleKey( 70, kame_hand, 0.5, 0.5);

--entryFade( 165, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--aura = entryEffectLife(  70,   311, 99, 0x40,  0,  1,  0,  -50); -- オーラ
--setEffScaleKey( 30, aura, 1.5, 1.5);
--setShakeChara( 70, 0, 49, 5);

-- 書き文字エントリー
--ct = entryEffectLife( 90, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
--setEffShake(90, ct, 40, 8);
--setEffScaleKey(90, ct, 1.4, 1.4);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( 154,   0, 1.5, 1.5);
setScaleKey( 155,   0, 1.0, 1.0);

setScaleKey( 240,   0, 1.0, 1.0);
setScaleKey( 246,   0, 3.5, 3.5);

setMoveKey(  154,    0,  700,  -700,   0);
setMoveKey(  246,    0,  700,  -700,   0);

--[[playSe( 155, SE_05);
speff = entryEffect(  155,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え]]

if (_SPECIAL_SKILL_LEVEL_ == 0) then
print ("_SPECIAL_SKILL_LEVEL_ == 0");
playSe( 155, SE_05);
speff = entryEffect( 155, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
print ("_SPECIAL_SKILL_LEVEL_ == 1");
playSe( 155, SE_05);
speff = entryEffect( 155, 1120, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( 155, SE_05);
speff = entryEffect( 155, 1121, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

entryFade( 238, 2, 8, 14, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--entryFlash( (170+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
playSe( 125+64+30, SE_06);

------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
setDisp( 246, 0, 1);
changeAnime( 246, 0, 30);
changeAnime( 306, 0, 31); 
setMoveKey(  247,    0,  700,  -700,   -100);
setMoveKey(  260,    0,  -200,  100,   0);
setMoveKey(  305,    0,  -200,  100,   0);
setMoveKey(  310,    0,  -800,  200,   0);


setScaleKey( 247,   0, 3.5, 3.5);
setScaleKey( 257,   0, 2.0, 2.0);
setScaleKey( 305,   0, 2.0, 2.0);
setScaleKey( 306,   0, 0.7, 0.7);
setScaleKey( 376,   0, 0.7, 0.7);

setShakeChara( 247, 0, 99, 20);

playSe( 217, SE_04);

--shuchusen = entryEffectLife( 217, 906, 51, 0x80,  -1, 0,  0,  0);   -- 集中線
--setEffScaleKey( 217, shuchusen, 1.0, 1.0);
--setEffScaleKey( 257, shuchusen, 1.0, 1.0);
--setEffScaleKey( 266, shuchusen, 2.0, 2.0);

sen2 = entryEffectLife( 246, 921, 120, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(246, sen2, -150);
setEffScaleKey( 246, sen2, 2.0, 2.0);

--sen2 = entryEffectLife( 287, 921, 82, 0x80,  -1,  0,  0,  0); -- 流線
--setEffRotateKey(287, sen2, 310);
--setEffScaleKey( 287, sen2, 2.0, 2.0);

shuchusen = entryEffectLife( 306, 906, 66, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 306, shuchusen, 1.0, 1.0);
setEffScaleKey( 326, shuchusen, 1.0, 1.0);
--setEffScaleKey( 266, shuchusen, 2.0, 2.0);

kamehame_beam = entryEffect( 247, SP_02, 0x40+0x100,  0,  300,  -100,  100);   -- 伸びるかめはめ波
setEffMoveKey(  247,kamehame_beam ,  -100,   100,  0);
setEffMoveKey(  256,kamehame_beam ,  -10,   0,  0);
setEffMoveKey(  257,kamehame_beam ,  0,   0,  0);
setEffMoveKey(  258,kamehame_beam ,  200,   -100,  0);
setEffMoveKey(  305,kamehame_beam ,  200,   -100,  0);
setEffMoveKey(  306,kamehame_beam ,  800,   -200,  0);
setEffMoveKey(  376,kamehame_beam ,  800,   -200,  0);
setEffShake(247, kamehame_beam, 100, 8);

playSe( 306, SE_07);

entryFadeBg( 215, 0, 149, 0, 10, 10, 10, 180);       -- ベース暗め　背景



--entryFade( 365, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
removeAllEffect(369);

--書き文字エントリー
ct = entryEffectLife( 286+20, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(286+20, ct, 32, 5);
setEffAlphaKey(286+20, ct, 255);
setEffAlphaKey(308+20, ct, 255);
setEffAlphaKey(318+20, ct, 0);
setEffScaleKey(286+20, ct, 0.0, 0.0);
setEffScaleKey(290+20, ct, 1.3, 1.3);
setEffScaleKey(310+20, ct, 1.3, 1.3);
setEffScaleKey(318+20, ct, 6.0, 6.0);

--playSe( 287, SE_07);

entryFade( 355, 10,  5, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade



------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
setDisp( 370, 0, 0);
setDisp( 370, 1, 0);
--changeAnime( 370, 1, 104);                        -- ガード
--setMoveKey(  369,    1,  235,  0,   0);
--setMoveKey(  370,    1,  235,  0,   0);
--setMoveKey(  371,    1,  235,  0,   0);
--setScaleKey( 369,    1,  0.7, 0.7);
--setScaleKey( 370,    1,  0.7, 0.7);

--setMoveKey(  400,    1,   120,  0,   0);
--setScaleKey(  400,   1,   1.6,  1.6);

playSe( 375, SE_07);

SE00 = playSe( 535, SE_07);

kamehame_beam2 = entryEffect( 370, SP_03,   0x100, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey(370, kamehame_beam2, 1, 1);
setEffScaleKey(452, kamehame_beam2, 1, 1);
--setEffScaleKey(454, kamehame_beam2, 2.5, 2.5);
setDamage( 452, 1, 0);  -- ダメージ振動等

--entryFadeBg( 370, 0, 209, 0, 255, 255, 255, 255);       -- ベース暗め　背景
--entryFadeBg( 370, 0, 30, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
entryFadeBg( 370, 0, 135, 0, 10, 10, 10, 180);       -- ベース暗め　背景

sen3 = entryEffectLife( 369, 920, 134, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(369, sen3, -130);
setEffScaleKey(369, sen3, 2.0, 2.0);

shuchusen1 = entryEffectLife( 366, 906, 135, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 366, shuchusen1, 1.0, 1.0);
setEffScaleKey( 386, shuchusen1, 1.0, 1.0);

--speff = entryEffect( 370, 1506,   0,  -1,  0,  0,  0);    -- カットイン
--setEffReplaceTexture( speff, 6, 3);                       -- カットイン差し替え
--playSe( 370, SE_08);

--playSe( 455, SE_09);
-- 敵吹っ飛ぶモーション
--changeAnime( 455, 1, 108);
--setMoveKey(  455, 1,  120,    0,  0);
--setMoveKey(  469, 1,  400,    0,  0);
--setScaleKey( 455, 1,  1.6, 1.6);
--setScaleKey( 458, 1,  1.5, 1.5);
--setScaleKey( 468, 1,  0.2, 0.2);

-- ** エフェクト等 ** --
--setShakeChara( 370, 1, 99, 20);

--entryFadeBg( 370, 0, 99, 0,0, 0, 0, 255);          -- ベース暗め　背景

--entryEffectLife( 370, 921, 99, 0x80,  -1,  0,  0,  0); -- 流線斜め

--entryFlash( (370+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+80), 1, fcolor_r, fcolor_g, fcolor_b, 200);

-- 書き文字エントリー
ct = entryEffectLife( 370, 10014, 99, 0, -1, 0, 50, 255); -- ズドドッ
setEffShake(370, ct, 99, 20);
setEffScaleKey( 370, ct, 2.4, 2.4);
setEffRotateKey(370, ct, 70);
setEffAlphaKey(370, ct, 255);
setEffAlphaKey(430, ct, 255);
setEffAlphaKey(450, ct, 0);

setMoveKey(  492,    1,  500,  -500,   -80);

setScaleKey( 492,    1,  2.5, 2.5);

entryFade( 492, 8,  8, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


--507
------------------------------------------------------
-- 迫る(110F)
------------------------------------------------------

setDisp( 506, 1, 0);
setDisp( 506, 1, 1);
setDisp( 663, 1, 0);
--setDisp( 612, 1, 0);
changeAnime( 507, 1, 102);                        -- ガード
setMoveKey(  506,    1,  500,  -500,   -80);
setMoveKey(  516,    1,  200,  -150,   0);
 --setMoveKey(  550,    1,  50, 50,   0);
setMoveKey(  670,    1,  200, -150,   0);
--setMoveKey(  626,    1,  0,  0,   0);

setScaleKey( 506,    1,  2.5, 2.5);
--setScaleKey( 535,    1,  2.5, 2.5);
setScaleKey( 516,    1,  1.5, 1.5);
setScaleKey( 670,    1,  1.5, 1.5);
--setScaleKey( 526,    1,  2.5, 2.5);

setShakeChara( 506, 1, 199, 10);

entryFadeBg( 506, 0, 169, 0, 10, 10, 10, 180);       -- ベース暗め　背景

playSe( 507, SE_04);

--entryFade( 600, 1,  10, 1, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--sen5 = entryEffectLife( 526, 920, 149, 0x80,  -1,  0,  0,  0); -- 流線
--setEffRotateKey(526, sen5, 130);
--setEffScaleKey(526, sen5, 2.0, 2.0);

sen9 = entryEffectLife( 506, 921, 170, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(506, sen9, -120);
setEffScaleKey( 506, sen9, 2.0, 2.0);

shuchusen11 = entryEffectLife( 506, 906, 175, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 506, shuchusen11, 1.0, 1.0);
setEffScaleKey( 506, shuchusen11, 1.0, 1.0);

kamehame_beam5 = entryEffect( 506, SP_04,   0x100, -1,  0,  0,  0);   -- 迫るかめはめ波

--書き文字エントリー
--ct = entryEffectLife( 612, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
--setEffShake(612, ct, 32, 5);
--setEffAlphaKey(612, ct, 255);
--setEffAlphaKey(624, ct, 255);
--setEffAlphaKey(634, ct, 0);
--setEffScaleKey(612, ct, 0.0, 0.0);
--setEffScaleKey(616, ct, 1.3, 1.3);
--setEffScaleKey(626, ct, 1.3, 1.3);
--setEffScaleKey(634, ct, 6.0, 6.0);

entryFade( 667, 4,  5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 550; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);
stopSe( SP_dodge-12, SE00, 0 );

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

playSe( 670, SE_06);


kamehame_beamEX = entryEffect( 670, 190002,   0x80, -1,  0,  0,  0);   -- ギャン

ct = entryEffectLife( 677, 10006, 45, 0x80, -1, 0, 0, 255); -- ギャン
setEffShake(677, ct, 99, 20);
setEffScaleKey( 677, ct, 0.1, 0.1);
setEffScaleKey( 690, ct, 2.4, 2.4);
setEffScaleKey( 710, ct, 2.8, 2.8);
setEffAlphaKey(677, ct, 255);
setEffAlphaKey(710, ct, 255);
setEffAlphaKey(725, ct, 0);

entryFade( 720, 6,  5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade




------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

sen2 = entryEffectLife( 725, 921, 152, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey( 725, sen2, 310);
setEffScaleKey( 725, sen2, 2.0, 2.0);

entryFadeBg( 725, 0, 149, 0, 10, 10, 10, 180);       -- ベース暗め　背景

kamehame_beam5 = entryEffect( 725, SP_05,   0x100, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffShake(725, kamehame_beam5, 180, 8);
setEffScaleKey( 725, kamehame_beam5, 1.1, 1.1);

shuchusen = entryEffectLife( 725, 906, 153, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 725, shuchusen, 1.0, 1.0);
setEffScaleKey(  765, shuchusen, 1.0, 1.0);

--playSe( 733, 1018);
playSe( 745, SE_10);

-- ダメージ表示
dealDamage(745);


--entryFade( 762+98, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(780+88);
else



--敵
------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
--kame_flag = 0x00;
--if (_IS_PLAYER_SIDE_ == 1) then

--気を貯める
--         frame, eff, atr,tgt, tag,  x, y
--changeAnime(  30, 0, 17);                       -- 溜め!
--entryEffect(  30,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
--entryEffect(  30,   1500,   0,    -1,  0,  0,  0);    -- eff_001
--playSe( 30, SE_01);

playSe( 5, SE_04);

--speff = entryEffect(  70,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  70,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

kame_hand = entryEffect( 1, SP_01, 0x100,      0,  300,  0,  70);   -- 手のカメハメ波部
setEffScaleKey( 1, kame_hand, -1.0, 1.0);
setEffShake(1, kame_hand, 154, 8);

entryFade( 24, 1, 9, 1, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

SE001 = playSe( 36, SE_03);
setSeVolume( 36, SE_03, 70 );
stopSe( 48, SE001, 10 );

SE002 = playSe( 46, SE_03);
setSeVolume( 46, SE_03, 70 );
stopSe( 58, SE002, 10 );

SE003 = playSe( 56, SE_03);
setSeVolume( 56, SE_03, 70 );
stopSe( 78, SE003, 10 );

SE004 = playSe( 76, SE_03);
setSeVolume( 76, SE_03, 70 );
stopSe( 88, SE004, 10 );

SE005 = playSe( 86, SE_03);
setSeVolume( 86, SE_03, 70 );
stopSe( 98, SE005, 10 );

SE006 = playSe( 96, SE_03);
setSeVolume( 96, SE_03, 70 );
stopSe( 108, SE006, 10 );

SE007 = playSe( 106, SE_03);
setSeVolume( 106, SE_03, 70 );
stopSe( 118, SE007, 10 );

SE008 = playSe( 116, SE_03);
setSeVolume( 116, SE_03, 70 );
stopSe( 128, SE008, 10 );

SE009 = playSe( 126, SE_03);
setSeVolume( 126, SE_03, 70 );
stopSe( 138, SE009, 10 );

SE010 = playSe( 136, SE_03);
setSeVolume( 136, SE_03, 70 );
stopSe( 148, SE010, 10 );

SE011 = playSe( 146, SE_03);
setSeVolume( 146, SE_03, 70 );
stopSe( 158, SE011, 10 );

shuchusen = entryEffectLife( 0, 906, 149, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 0, shuchusen, 2.0, 2.0);
setEffScaleKey( 40, shuchusen, 2.0, 2.0);
setEffScaleKey( 49, shuchusen, 2.0, 2.0);

entryEffectLife( 0, 920, 149, 0x80,  -1,  0,  0,  0); -- 流線

entryFadeBg( 0, 0, 179, 0, 10, 10, 10, 180);       -- ベース暗め　背景

-- 書き文字エントリー
ct = entryEffectLife( 40, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(40, ct, 40, 8);
setEffScaleKey(40, ct, 1.4, 1.4);

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
setVisibleUI(1, 0);
changeAnime( 70, 0, 30);                       -- 溜め!
--playSe( 73, SE_03);

--playSe( 80, SE_04);

--kame_hand = entryEffect( 70, SP_01, 0x40,      0,  300,  -100,  100);   -- 手のカメハメ波部
--setEffScaleKey( 70, kame_hand, 0.5, 0.5);

--entryFade( 165, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--aura = entryEffectLife(  70,   311, 99, 0x40,  0,  1,  0,  -50); -- オーラ
--setEffScaleKey( 30, aura, 1.5, 1.5);
--setShakeChara( 70, 0, 49, 5);

-- 書き文字エントリー
--ct = entryEffectLife( 90, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
--setEffShake(90, ct, 40, 8);
--setEffScaleKey(90, ct, 1.4, 1.4);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( 154,   0, 1.5, 1.5);
setScaleKey( 155,   0, 1.0, 1.0);

setScaleKey( 240,   0, 1.0, 1.0);
setScaleKey( 246,   0, 3.5, 3.5);

setMoveKey(  154,    0,  700,  -700,   0);
setMoveKey(  246,    0,  700,  -700,   0);

--[[playSe( 155, SE_05);
speff = entryEffect(  155,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え]]

if (_SPECIAL_SKILL_LEVEL_ == 0) then
print ("_SPECIAL_SKILL_LEVEL_ == 0");
playSe( 155, SE_05);
speff = entryEffect( 155, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
print ("_SPECIAL_SKILL_LEVEL_ == 1");
playSe( 155, SE_05);
speff = entryEffect( 155, 1120, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( 155, SE_05);
speff = entryEffect( 155, 1121, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

entryFade( 238, 2, 8, 14, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


-- ** エフェクト等 ** --
--entryFlash( (170+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
playSe( 125+64+30, SE_06);

------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
setDisp( 246, 0, 1);
changeAnime( 246, 0, 30);
changeAnime( 306, 0, 31); 
setMoveKey(  247,    0,  700,  -700,   -100);
setMoveKey(  260,    0,  -200,  100,   0);
setMoveKey(  305,    0,  -200,  100,   0);
setMoveKey(  310,    0,  -800,  200,   0);


setScaleKey( 247,   0, 3.5, 3.5);
setScaleKey( 257,   0, 2.0, 2.0);
setScaleKey( 305,   0, 2.0, 2.0);
setScaleKey( 306,   0, 0.7, 0.7);
setScaleKey( 376,   0, 0.7, 0.7);

setShakeChara( 247, 0, 99, 20);

playSe( 217, SE_04);

--shuchusen = entryEffectLife( 217, 906, 51, 0x80,  -1, 0,  0,  0);   -- 集中線
--setEffScaleKey( 217, shuchusen, 1.0, 1.0);
--setEffScaleKey( 257, shuchusen, 1.0, 1.0);
--setEffScaleKey( 266, shuchusen, 2.0, 2.0);

sen2 = entryEffectLife( 246, 921, 120, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(246, sen2, -150);
setEffScaleKey( 246, sen2, 2.0, 2.0);

--sen2 = entryEffectLife( 287, 921, 82, 0x80,  -1,  0,  0,  0); -- 流線
--setEffRotateKey(287, sen2, 310);
--setEffScaleKey( 287, sen2, 2.0, 2.0);

shuchusen = entryEffectLife( 306, 906, 66, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 306, shuchusen, 1.0, 1.0);
setEffScaleKey( 326, shuchusen, 1.0, 1.0);
--setEffScaleKey( 266, shuchusen, 2.0, 2.0);

kamehame_beam = entryEffect( 247, SP_02, 0x40+0x100,  0,  300,  -100,  100);   -- 伸びるかめはめ波
setEffMoveKey(  247,kamehame_beam ,  -100,   100,  0);
setEffMoveKey(  256,kamehame_beam ,  -10,   0,  0);
setEffMoveKey(  257,kamehame_beam ,  0,   0,  0);
setEffMoveKey(  258,kamehame_beam ,  200,   -100,  0);
setEffMoveKey(  305,kamehame_beam ,  200,   -100,  0);
setEffMoveKey(  306,kamehame_beam ,  800,   -200,  0);
setEffMoveKey(  376,kamehame_beam ,  800,   -200,  0);
setEffShake(247, kamehame_beam, 100, 8);

playSe( 306, SE_07);

entryFadeBg( 215, 0, 149, 0, 10, 10, 10, 180);       -- ベース暗め　背景



--entryFade( 365, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
removeAllEffect(369);

--書き文字エントリー
ct = entryEffectLife( 286+20, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(286+20, ct, 32, 5);
setEffAlphaKey(286+20, ct, 255);
setEffAlphaKey(308+20, ct, 255);
setEffAlphaKey(318+20, ct, 0);
setEffScaleKey(286+20, ct, 0.0, 0.0);
setEffScaleKey(290+20, ct, 1.3, 1.3);
setEffScaleKey(310+20, ct, 1.3, 1.3);
setEffScaleKey(318+20, ct, 6.0, 6.0);

--playSe( 287, SE_07);

entryFade( 355, 10,  5, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade



------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
setDisp( 370, 0, 0);
setDisp( 370, 1, 0);
--changeAnime( 370, 1, 104);                        -- ガード
--setMoveKey(  369,    1,  235,  0,   0);
--setMoveKey(  370,    1,  235,  0,   0);
--setMoveKey(  371,    1,  235,  0,   0);
--setScaleKey( 369,    1,  0.7, 0.7);
--setScaleKey( 370,    1,  0.7, 0.7);

--setMoveKey(  400,    1,   120,  0,   0);
--setScaleKey(  400,   1,   1.6,  1.6);

playSe( 375, SE_07);

SE00 = playSe( 535, SE_07);

kamehame_beam2 = entryEffect( 370, SP_03,   0x100, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey(370, kamehame_beam2, 1, 1);
setEffScaleKey(452, kamehame_beam2, 1, 1);
--setEffScaleKey(454, kamehame_beam2, 2.5, 2.5);
setDamage( 452, 1, 0);  -- ダメージ振動等

--entryFadeBg( 370, 0, 209, 0, 255, 255, 255, 255);       -- ベース暗め　背景
--entryFadeBg( 370, 0, 30, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
entryFadeBg( 370, 0, 135, 0, 10, 10, 10, 180);       -- ベース暗め　背景

sen3 = entryEffectLife( 369, 920, 134, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(369, sen3, -130);
setEffScaleKey(369, sen3, 2.0, 2.0);

shuchusen1 = entryEffectLife( 366, 906, 135, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 366, shuchusen1, 1.0, 1.0);
setEffScaleKey( 386, shuchusen1, 1.0, 1.0);

--speff = entryEffect( 370, 1506,   0,  -1,  0,  0,  0);    -- カットイン
--setEffReplaceTexture( speff, 6, 3);                       -- カットイン差し替え
--playSe( 370, SE_08);

--playSe( 455, SE_09);
-- 敵吹っ飛ぶモーション
--changeAnime( 455, 1, 108);
--setMoveKey(  455, 1,  120,    0,  0);
--setMoveKey(  469, 1,  400,    0,  0);
--setScaleKey( 455, 1,  1.6, 1.6);
--setScaleKey( 458, 1,  1.5, 1.5);
--setScaleKey( 468, 1,  0.2, 0.2);

-- ** エフェクト等 ** --
--setShakeChara( 370, 1, 99, 20);

--entryFadeBg( 370, 0, 99, 0,0, 0, 0, 255);          -- ベース暗め　背景

--entryEffectLife( 370, 921, 99, 0x80,  -1,  0,  0,  0); -- 流線斜め

--entryFlash( (370+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+80), 1, fcolor_r, fcolor_g, fcolor_b, 200);

-- 書き文字エントリー
ct = entryEffectLife( 370, 10014, 99, 0, -1, 0, 50, 255); -- ズドドッ
setEffShake(370, ct, 99, 20);
setEffScaleKey( 370, ct, 2.4, 2.4);
setEffRotateKey(370, ct, -70);
setEffAlphaKey(370, ct, 255);
setEffAlphaKey(430, ct, 255);
setEffAlphaKey(450, ct, 0);

setMoveKey(  492,    1,  500,  -500,   -80);

setScaleKey( 492,    1,  2.5, 2.5);

entryFade( 492, 8,  8, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


--507
------------------------------------------------------
-- 迫る(110F)
------------------------------------------------------

setDisp( 506, 1, 0);
setDisp( 506, 1, 1);
setDisp( 663, 1, 0);
--setDisp( 612, 1, 0);
changeAnime( 507, 1, 102);                        -- ガード
setMoveKey(  506,    1,  500,  -500,   -80);
setMoveKey(  516,    1,  200,  -150,   0);
 --setMoveKey(  550,    1,  50, 50,   0);
setMoveKey(  670,    1,  200, -150,   0);
--setMoveKey(  626,    1,  0,  0,   0);

setScaleKey( 506,    1,  2.5, 2.5);
--setScaleKey( 535,    1,  2.5, 2.5);
setScaleKey( 516,    1,  1.5, 1.5);
setScaleKey( 670,    1,  1.5, 1.5);
--setScaleKey( 526,    1,  2.5, 2.5);

setShakeChara( 506, 1, 199, 10);

entryFadeBg( 506, 0, 169, 0, 10, 10, 10, 180);       -- ベース暗め　背景

playSe( 507, SE_04);

--entryFade( 600, 1,  10, 1, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--sen5 = entryEffectLife( 526, 920, 149, 0x80,  -1,  0,  0,  0); -- 流線
--setEffRotateKey(526, sen5, 130);
--setEffScaleKey(526, sen5, 2.0, 2.0);

sen9 = entryEffectLife( 506, 921, 170, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(506, sen9, -120);
setEffScaleKey( 506, sen9, 2.0, 2.0);

shuchusen11 = entryEffectLife( 506, 906, 175, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 506, shuchusen11, 1.0, 1.0);
setEffScaleKey( 506, shuchusen11, 1.0, 1.0);

kamehame_beam5 = entryEffect( 506, SP_04,   0x100, -1,  0,  0,  0);   -- 迫るかめはめ波

--書き文字エントリー
--ct = entryEffectLife( 612, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
--setEffShake(612, ct, 32, 5);
--setEffAlphaKey(612, ct, 255);
--setEffAlphaKey(624, ct, 255);
--setEffAlphaKey(634, ct, 0);
--setEffScaleKey(612, ct, 0.0, 0.0);
--setEffScaleKey(616, ct, 1.3, 1.3);
--setEffScaleKey(626, ct, 1.3, 1.3);
--setEffScaleKey(634, ct, 6.0, 6.0);

entryFade( 667, 4,  5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 550; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);
stopSe( SP_dodge-12, SE00, 0 );

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

playSe( 670, SE_06);


kamehame_beamEX = entryEffect( 670, 190002,   0x80, -1,  0,  0,  0);   -- ギャン

ct = entryEffectLife( 677, 10006, 45, 0x80, -1, 0, 0, 255); -- ギャン
setEffShake(677, ct, 99, 20);
setEffScaleKey( 677, ct, 0.1, 0.1);
setEffScaleKey( 690, ct, 2.4, 2.4);
setEffScaleKey( 710, ct, 2.8, 2.8);
setEffAlphaKey(677, ct, 255);
setEffAlphaKey(710, ct, 255);
setEffAlphaKey(725, ct, 0);

entryFade( 720, 6,  5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade




------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

sen2 = entryEffectLife( 725, 921, 152, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey( 725, sen2, 310);
setEffScaleKey( 725, sen2, 2.0, 2.0);

entryFadeBg( 725, 0, 149, 0, 10, 10, 10, 180);       -- ベース暗め　背景

kamehame_beam5 = entryEffect( 725, SP_05,   0x100, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffShake(725, kamehame_beam5, 180, 8);
setEffScaleKey( 725, kamehame_beam5, 1.1, 1.1);

shuchusen = entryEffectLife( 725, 906, 153, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 725, shuchusen, 1.0, 1.0);
setEffScaleKey(  765, shuchusen, 1.0, 1.0);

--playSe( 733, 1018);
playSe( 745, SE_10);

-- ダメージ表示
dealDamage(745);


--entryFade( 762+98, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(780+88);
end
