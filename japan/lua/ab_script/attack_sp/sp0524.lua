--未来悟飯_激烈魔閃

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

--味方側
SP_01 = 152801; --通常ポーズ
SP_02 = 152802; --気溜め
SP_03 = 152803; --発射
SP_04 = 190003; --ギャン
SP_05 = 152805; --爆発

--共通エフェクト
SP_06 = 1503; --気溜め背景
SP_07 = 1502; --集中線

--敵側
SP_01r = 152806; --通常ポーズ
SP_02r = 152807; --気溜め
SP_03r = 152803; --発射
SP_04r = 190003; --ギャン
SP_05r = 152805; --爆発

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

a = 2.0;

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------
spep_0 = 1;

--素立ち
stand = entryEffectLife(spep_0, SP_01, 18, 0x100, -1, 0, 0, 0);
setEffMoveKey(spep_0, stand, 0, 0, 0);
setEffMoveKey(spep_0+18, stand, 0, 0, 0);
setEffScaleKey(spep_0, stand, 1.0, 1.0);
setEffScaleKey(spep_0+18, stand, 1.0, 1.0);
setEffRotateKey(spep_0, stand, 0);
setEffRotateKey(spep_0+18, stand, 0);
setEffAlphaKey(spep_0, stand, 255);
setEffAlphaKey(spep_0+16, stand, 255);
setEffAlphaKey(spep_0+17, stand, 255);
setEffAlphaKey(spep_0+18, stand, 0);

spep_1 = spep_0 + 18;

------------------------------------------------------
-- 気溜め(110F)
------------------------------------------------------
--気溜め
charge = entryEffectLife(spep_1, SP_02, 110, 0x100, -1, 0, 0, 0);
setEffMoveKey(spep_1, charge, 0, 0, 0);
setEffMoveKey(spep_1+110, charge, 0, 0, 0);
setEffScaleKey(spep_1, charge, 1.0, 1.0);
setEffScaleKey(spep_1+110, charge, 1.0, 1.0);
setEffRotateKey(spep_1, charge, 0);
setEffRotateKey(spep_1+110, charge, 0);
setEffAlphaKey(spep_1, charge, 255);
setEffAlphaKey(spep_1+110, charge, 255);

--気溜め背景
charge_back = entryEffectLife(spep_1, SP_06, 110, 0x80, -1, 0, 0, 0);
setEffMoveKey(spep_1, charge_back, 0, 0, 0);
setEffMoveKey(spep_1+110, charge_back, 0, 0, 0);
setEffScaleKey(spep_1, charge_back, 1.0, 1.0);
setEffScaleKey(spep_1+110, charge_back, 1.0, 1.0);
setEffRotateKey(spep_1, charge_back, 0);
setEffRotateKey(spep_1+110, charge_back, 0);
setEffAlphaKey(spep_1, charge_back, 0);
setEffAlphaKey(spep_1+50, charge_back, 255);
setEffAlphaKey(spep_1+110, charge_back, 255);

--バチバチ
charge_front = entryEffectLife(spep_1, SP_07, 110, 0x100, -1, 0, 0, 0);
setEffMoveKey(spep_1, charge_front, 0, 0, 0);
setEffMoveKey(spep_1+110, charge_front, 0, 0, 0);
setEffScaleKey(spep_1, charge_front, 1.0, 1.0);
setEffScaleKey(spep_1+110, charge_front, 1.0, 1.0);
setEffRotateKey(spep_1, charge_front, 0);
setEffRotateKey(spep_1+110, charge_front, 0);
setEffAlphaKey(spep_1, charge_front, 255);
setEffAlphaKey(spep_1+110, charge_front, 255);

--集中線
shuchusen1 = entryEffectLife( spep_1, 906, 110, 0x100,  -1, 0,  0,  0);
setEffMoveKey(  spep_1,  shuchusen1,  0,  0);
setEffMoveKey(  spep_1+110,  shuchusen1,  0,  0);
setEffScaleKey(  spep_1,  shuchusen1,  1.6,  1.6);
setEffScaleKey(  spep_1+110,  shuchusen1,  1.6,  1.6);
setEffRotateKey(  spep_1,  shuchusen1,  0);
setEffRotateKey(  spep_1+110,  shuchusen1,  0);
setEffAlphaKey(  spep_1,  shuchusen1,  255);
setEffAlphaKey(  spep_1+110,  shuchusen1,  255);

--顔カットイン
speff=entryEffect(spep_1+16, 1504, 0x100, -1, 0, 0, 0);  --カットイン(顔)
setEffReplaceTexture(speff, 3, 2);  --カットイン差し替え
speff1=entryEffect(spep_1+16 ,1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
setEffReplaceTexture(speff1, 4, 5);  --セリフカットイン差し替え

--書き文字(ゴゴゴ)
ctGo = entryEffectLife( spep_1 + 24,  190006, 76, 0x100, -1, 0, 30, 523.7 );
setEffShake(spep_1+24, ctGo, 76, 10);
setEffMoveKey( spep_1 + 24, ctGo, 30, 523.7 , 0 );
setEffMoveKey( spep_1 + 100, ctGo, 30, 523.7 , 0 );
setEffScaleKey( spep_1 + 24, ctGo, 0.8, 0.8 );
setEffScaleKey( spep_1 + 100, ctGo, 0.8, 0.8 );
setEffRotateKey( spep_1 + 24, ctGo, 0 );
setEffRotateKey( spep_1 + 100, ctGo, 0 );
setEffAlphaKey( spep_1 + 24, ctGo, 255 );
setEffAlphaKey( spep_1 + 100, ctGo, 255 );

--書き文字(ズズンッ)
ctZuz = entryEffectLife( spep_1 + 0,  10013, 36, 0x100, -1, 0, 22, 191.9 );
setEffMoveKey( spep_1 + 0, ctZuz, 22, 191.9 , 0 );
setEffMoveKey( spep_1 + 2, ctZuz, 29.8, 246.3 , 0 );
setEffMoveKey( spep_1 + 4, ctZuz, 49.2, 309.6 , 0 );
setEffMoveKey( spep_1 + 6, ctZuz, 46.8, 334 , 0 );
setEffMoveKey( spep_1 + 8, ctZuz, 52.9, 331.8 , 0 );
setEffMoveKey( spep_1 + 10, ctZuz, 39.3, 310.4 , 0 );
setEffMoveKey( spep_1 + 12, ctZuz, 36, 299.9 , 0 );
setEffMoveKey( spep_1 + 36, ctZuz, 36, 299.9 , 0 );
setEffScaleKey( spep_1 + 0, ctZuz, 0.38 + a, 0.38 + a);
setEffScaleKey( spep_1 + 2, ctZuz, 0.62 + a, 0.62 + a);
setEffScaleKey( spep_1 + 4, ctZuz, 0.85 + a, 0.85 + a);
setEffScaleKey( spep_1 + 6, ctZuz, 1 + a, 1 + a);
setEffScaleKey( spep_1 + 36, ctZuz, 1 + a, 1 + a);
setEffRotateKey( spep_1 + 0, ctZuz, 0 );
setEffRotateKey( spep_1 + 36, ctZuz, 0 );
setEffAlphaKey( spep_1 + 0, ctZuz, 255 );
setEffAlphaKey( spep_1 + 2, ctZuz, 236 );
setEffAlphaKey( spep_1 + 4, ctZuz, 189 );
setEffAlphaKey( spep_1 + 6, ctZuz, 145 );
setEffAlphaKey( spep_1 + 8, ctZuz, 104 );
setEffAlphaKey( spep_1 + 10, ctZuz, 65 );
setEffAlphaKey( spep_1 + 12, ctZuz, 0 );
setEffAlphaKey( spep_1 + 36, ctZuz, 0 );

--気溜めSE
playSe(spep_1, 1035);

--カットインSE
playSe(spep_1+28, 1018);

--気弾溜めSE
--playSe(spep_1+40, 1036);
playSe(spep_1+60, 1036);
playSe(spep_1+80, 1036);
playSe(spep_1+100, 1036);




--黒背景
entryFadeBg(spep_1, 26, 86, 0, 0, 0, 0, 210);  -- 黒　背

spep_2 = spep_1 + 110;

------------------------------------------------------
-- カード(90F)
------------------------------------------------------
--***フェードと背景***
entryFade( spep_2-14, 6, 12, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

playSe( spep_2, SE_05);
speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                         -- 技名テクスチャ差し替え

shuchusen2 = entryEffectLife( spep_2, 906, 90, 0x100,  -1, 0,  0,  0);
setEffMoveKey(  spep_2,  shuchusen2,  0,  0);
setEffMoveKey(  spep_2+90,  shuchusen2,  0,  0);
setEffScaleKey(  spep_2,  shuchusen2,  1.6,  1.6);
setEffScaleKey(  spep_2+90,  shuchusen2,  1.6,  1.6);
setEffRotateKey(  spep_2,  shuchusen2,  0);
setEffRotateKey(  spep_2+90,  shuchusen2,  0);
setEffAlphaKey(  spep_2,  shuchusen2,  255);
setEffAlphaKey(  spep_2+90,  shuchusen2,  255);

--***背景と白フェード***
entryFade( spep_2+82, 6, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_3 = spep_2 + 90;

------------------------------------------------------
-- 発射(150F)
------------------------------------------------------

--発射
shoot = entryEffectLife(spep_3, SP_03, 150, 0x100, -1, 0, 0, 0);
setEffMoveKey(spep_3, shoot, 0, 0, 0);
setEffMoveKey(spep_3+150, shoot, 0, 0, 0);
setEffScaleKey(spep_3, shoot, 1.0, 1.0);
setEffScaleKey(spep_3+150, shoot, 1.0, 1.0);
setEffRotateKey(spep_3, shoot, 0);
setEffRotateKey(spep_3+150, shoot, 0);
setEffAlphaKey(spep_3, shoot, 255);
setEffAlphaKey(spep_3+150, shoot, 255);

--書き文字(ズオッ)
ctZuo = entryEffectLife( spep_3 + 8,  10012, 132, 0x100, -1, 0, -110.5, -168 );
setEffShake( spep_3+8, ctZuo, 132, 20);
setEffMoveKey( spep_3 + 8, ctZuo, -110.5, -168 , 0 );
setEffMoveKey( spep_3 + 140, ctZuo, -110.5, -68 , 0 );
setEffScaleKey( spep_3 + 8, ctZuo, 0.1, 0.1 );
--setEffScaleKey( spep_3 + 10, ctZuo, 0.45 + a, 0.45 + a );
setEffScaleKey( spep_3 + 12, ctZuo, 0.8 + a, 0.8 + a );
setEffScaleKey( spep_3 + 84, ctZuo, 0.8 + a, 0.8 + a );
setEffScaleKey( spep_3 + 86, ctZuo, 1.04 + a, 1.04 + a );
setEffScaleKey( spep_3 + 88, ctZuo, 1.28 + a, 1.28 + a );
setEffScaleKey( spep_3 + 90, ctZuo, 1.52 + a, 1.52 + a );
setEffScaleKey( spep_3 + 92, ctZuo, 1.76 + a, 1.76 + a );
setEffScaleKey( spep_3 + 94, ctZuo, 2.5+ a, 2.5 + a );
setEffScaleKey( spep_3 + 140, ctZuo, 2.5+ a, 2.5 + a );
setEffRotateKey( spep_3 + 8, ctZuo, 30 );
setEffRotateKey( spep_3 + 140, ctZuo, 30 );
setEffAlphaKey( spep_3 + 8, ctZuo, 255 );
setEffAlphaKey( spep_3 + 84, ctZuo, 255 );
setEffAlphaKey( spep_3 + 86, ctZuo, 204 );
setEffAlphaKey( spep_3 + 88, ctZuo, 153 );
setEffAlphaKey( spep_3 + 90, ctZuo, 102 );
setEffAlphaKey( spep_3 + 92, ctZuo, 51 );
setEffAlphaKey( spep_3 + 94, ctZuo, 0 );
setEffAlphaKey( spep_3 + 140, ctZuo, 0 );

--集中線
shuchusen3 = entryEffectLife( spep_3, 906, 60, 0x80,  -1, 0,  0,  0);
setEffMoveKey(  spep_3,  shuchusen3,  0,  0);
setEffMoveKey(  spep_3+60,  shuchusen3,  0,  0);
setEffScaleKey(  spep_3,  shuchusen3,  1.6,  1.6);
setEffScaleKey(  spep_3+60,  shuchusen3,  1.6,  1.6);
setEffRotateKey(  spep_3,  shuchusen3,  0);
setEffRotateKey(  spep_3+60,  shuchusen3,  0);
setEffAlphaKey(  spep_3,  shuchusen3,  255);
setEffAlphaKey(  spep_3+60,  shuchusen3,  255);

--流線
ryusen = entryEffectLife( spep_3, 923, 150, 0x80,  -1, 0,  0,  0);
setEffMoveKey(  spep_3,  ryusen,  0,  0);
setEffMoveKey(  spep_3+150,  ryusen,  0,  0);
setEffScaleKey(  spep_3,  ryusen,  1.6, 1 );
setEffScaleKey(  spep_3+150,  ryusen,  1.6, 1 );
setEffRotateKey(  spep_3,  ryusen,  0);
setEffRotateKey(  spep_3+150,  ryusen,  0);
setEffAlphaKey(  spep_3,  ryusen,  255);
setEffAlphaKey(  spep_3+150,  ryusen,  255);

--伸びる気弾SE
playSe(spep_3, 1022);

--黒背景
entryFadeBg(spep_3, 0, 150, 0, 0, 0, 0, 255);  -- 黒　背

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_3+110; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

setMoveKey(  SP_dodge+6,   0,  0, 0,  -80);
setMoveKey(  SP_dodge+8,   0,  -1100, 0,  0);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(SP_dodge+10);
do return end
else end

------------------------------------------------------
-- 発射の続き
------------------------------------------------------

--***背景と白フェード***
entryFade( spep_3+130, 6, 14, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_4 = spep_3 + 150;

------------------------------------------------------
-- ギャン(60F)
------------------------------------------------------

--ギャン
gyan = entryEffectLife(spep_4, SP_04, 60, 0x100, -1, 0, 0, 0);
setEffMoveKey(spep_4, gyan, 0, 0);
setEffMoveKey(spep_4+60, gyan, 0, 0);
setEffScaleKey( spep_4, gyan, 1.0, 1.0);
setEffScaleKey( spep_4+60, gyan, 1.0, 1.0);
setEffRotateKey(spep_4, gyan, 0);
setEffRotateKey(spep_4+60, gyan, 0);
setEffAlphaKey(spep_4, gyan, 255);
setEffAlphaKey(spep_4+60, gyan, 255);

--書き文字(ギャン)
ctGyan = entryEffectLife( spep_4, 10006, 60, 0x100, -1, 0, 0, 320);    -- ギャン
setEffMoveKey(spep_4, ctGyan, 0, 320);
setEffMoveKey(spep_4+60, ctGyan, 0, 320);
setEffScaleKey( spep_4, ctGyan, 2.0, 2.0);
setEffScaleKey( spep_4+10, ctGyan, 3.6, 3.6);
setEffScaleKey( spep_4+60, ctGyan, 4.0, 4.0);
setEffRotateKey(spep_4, ctGyan, 0);
setEffRotateKey(spep_4+60, ctGyan, 0);
setEffAlphaKey( spep_4, ctGyan, 255);
setEffAlphaKey( spep_4+60, ctGyan, 255);

--被弾SE
playSe(spep_4, SE_09);

--黒背景
entryFadeBg(spep_4, 0, 60, 0, 0, 0, 0, 255);  -- 黒　背

--***背景と白フェード***
entryFade( spep_4+20, 36, 8 , 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_5 = spep_4 + 60;

------------------------------------------------------
-- 爆発(234F)
------------------------------------------------------

--爆発
bomb = entryEffect(spep_5, SP_05, 0x100, -1, 0, 0, 0);
setEffMoveKey(spep_5, bomb, 0, 0);
setEffMoveKey(spep_5+234, bomb, 0, 0);
setEffScaleKey( spep_5, bomb, 1.0, 1.0);
setEffScaleKey( spep_5+234, bomb, 1.0, 1.0);
setEffRotateKey(spep_5, bomb, 0);
setEffRotateKey(spep_5+234, bomb, 0);
setEffAlphaKey(spep_5, bomb, 255);
setEffAlphaKey(spep_5+234, bomb, 255);

--爆発SE
playSe(spep_5+18, 1024); --爆発

--黒背景
entryFadeBg(spep_5, 0, 234, 0, 0, 0, 0, 255);  -- 黒　背

dealDamage(spep_5+70);

endPhase(spep_5+220);

else

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

spep_0 = 1;

--素立ち
stand = entryEffectLife(spep_0, SP_01r, 18, 0x100, -1, 0, 0, 0);
setEffMoveKey(spep_0, stand, 0, 0, 0);
setEffMoveKey(spep_0+18, stand, 0, 0, 0);
setEffScaleKey(spep_0, stand, 1.0, 1.0);
setEffScaleKey(spep_0+18, stand, 1.0, 1.0);
setEffRotateKey(spep_0, stand, 0);
setEffRotateKey(spep_0+18, stand, 0);
setEffAlphaKey(spep_0, stand, 255);
setEffAlphaKey(spep_0+16, stand, 255);
setEffAlphaKey(spep_0+17, stand, 255);
setEffAlphaKey(spep_0+18, stand, 0);

spep_1 = spep_0 + 18;

------------------------------------------------------
-- 気溜め(110F)
------------------------------------------------------
--気溜め
charge = entryEffectLife(spep_1, SP_02r, 110, 0x100, -1, 0, 0, 0);
setEffMoveKey(spep_1, charge, 0, 0, 0);
setEffMoveKey(spep_1+110, charge, 0, 0, 0);
setEffScaleKey(spep_1, charge, 1.0, 1.0);
setEffScaleKey(spep_1+110, charge, 1.0, 1.0);
setEffRotateKey(spep_1, charge, 0);
setEffRotateKey(spep_1+110, charge, 0);
setEffAlphaKey(spep_1, charge, 255);
setEffAlphaKey(spep_1+110, charge, 255);

--気溜め背景
charge_back = entryEffectLife(spep_1, SP_06, 110, 0x80, -1, 0, 0, 0);
setEffMoveKey(spep_1, charge_back, 0, 0, 0);
setEffMoveKey(spep_1+110, charge_back, 0, 0, 0);
setEffScaleKey(spep_1, charge_back, 1.0, 1.0);
setEffScaleKey(spep_1+110, charge_back, 1.0, 1.0);
setEffRotateKey(spep_1, charge_back, 0);
setEffRotateKey(spep_1+110, charge_back, 0);
setEffAlphaKey(spep_1, charge_back, 0);
setEffAlphaKey(spep_1+50, charge_back, 255);
setEffAlphaKey(spep_1+110, charge_back, 255);

--バチバチ
charge_front = entryEffectLife(spep_1, SP_07, 110, 0x100, -1, 0, 0, 0);
setEffMoveKey(spep_1, charge_front, 0, 0, 0);
setEffMoveKey(spep_1+110, charge_front, 0, 0, 0);
setEffScaleKey(spep_1, charge_front, 1.0, 1.0);
setEffScaleKey(spep_1+110, charge_front, 1.0, 1.0);
setEffRotateKey(spep_1, charge_front, 0);
setEffRotateKey(spep_1+110, charge_front, 0);
setEffAlphaKey(spep_1, charge_front, 255);
setEffAlphaKey(spep_1+110, charge_front, 255);

--集中線
shuchusen1 = entryEffectLife( spep_1, 906, 110, 0x100,  -1, 0,  0,  0);
setEffMoveKey(  spep_1,  shuchusen1,  0,  0);
setEffMoveKey(  spep_1+110,  shuchusen1,  0,  0);
setEffScaleKey(  spep_1,  shuchusen1,  1.6,  1.6);
setEffScaleKey(  spep_1+110,  shuchusen1,  1.6,  1.6);
setEffRotateKey(  spep_1,  shuchusen1,  0);
setEffRotateKey(  spep_1+110,  shuchusen1,  0);
setEffAlphaKey(  spep_1,  shuchusen1,  255);
setEffAlphaKey(  spep_1+110,  shuchusen1,  255);

--顔カットイン
--speff=entryEffect(spep_1+16, 1504, 0x100, -1, 0, 0, 0);  --カットイン(顔)
--setEffReplaceTexture(speff, 3, 2);  --カットイン差し替え
--speff1=entryEffect(spep_1+16 ,1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
--setEffReplaceTexture(speff1, 4, 5);  --セリフカットイン差し替え

--書き文字(ゴゴゴ)
ctGo = entryEffectLife( spep_1 + 24,  190006, 76, 0x100, -1, 0, 30, 523.7 );
setEffShake(spep_1+24, ctGo, 76, 10);
setEffMoveKey( spep_1 + 24, ctGo, 30, 523.7 , 0 );
setEffMoveKey( spep_1 + 100, ctGo, 30, 523.7 , 0 );
setEffScaleKey( spep_1 + 24, ctGo, -0.8, 0.8 );
setEffScaleKey( spep_1 + 100, ctGo, -0.8, 0.8 );
setEffRotateKey( spep_1 + 24, ctGo, 0 );
setEffRotateKey( spep_1 + 100, ctGo, 0 );
setEffAlphaKey( spep_1 + 24, ctGo, 255 );
setEffAlphaKey( spep_1 + 100, ctGo, 255 );

--書き文字(ズズンッ)
ctZuz = entryEffectLife( spep_1 + 0,  10013, 36, 0x100, -1, 0, 22, 191.9 );
setEffMoveKey( spep_1 + 0, ctZuz, 22, 191.9 , 0 );
setEffMoveKey( spep_1 + 2, ctZuz, 29.8, 246.3 , 0 );
setEffMoveKey( spep_1 + 4, ctZuz, 49.2, 309.6 , 0 );
setEffMoveKey( spep_1 + 6, ctZuz, 46.8, 334 , 0 );
setEffMoveKey( spep_1 + 8, ctZuz, 52.9, 331.8 , 0 );
setEffMoveKey( spep_1 + 10, ctZuz, 39.3, 310.4 , 0 );
setEffMoveKey( spep_1 + 12, ctZuz, 36, 299.9 , 0 );
setEffMoveKey( spep_1 + 36, ctZuz, 36, 299.9 , 0 );
setEffScaleKey( spep_1 + 0, ctZuz, 0.38 + a, 0.38 + a);
setEffScaleKey( spep_1 + 2, ctZuz, 0.62 + a, 0.62 + a);
setEffScaleKey( spep_1 + 4, ctZuz, 0.85 + a, 0.85 + a);
setEffScaleKey( spep_1 + 6, ctZuz, 1 + a, 1 + a);
setEffScaleKey( spep_1 + 36, ctZuz, 1 + a, 1 + a);
setEffRotateKey( spep_1 + 0, ctZuz, 0 );
setEffRotateKey( spep_1 + 36, ctZuz, 0 );
setEffAlphaKey( spep_1 + 0, ctZuz, 255 );
setEffAlphaKey( spep_1 + 2, ctZuz, 236 );
setEffAlphaKey( spep_1 + 4, ctZuz, 189 );
setEffAlphaKey( spep_1 + 6, ctZuz, 145 );
setEffAlphaKey( spep_1 + 8, ctZuz, 104 );
setEffAlphaKey( spep_1 + 10, ctZuz, 65 );
setEffAlphaKey( spep_1 + 12, ctZuz, 0 );
setEffAlphaKey( spep_1 + 36, ctZuz, 0 );

--気溜めSE
playSe(spep_1, 1035);

--カットインSE
playSe(spep_1+28, 1018);

--気弾溜めSE
--playSe(spep_1+40, 1036);
playSe(spep_1+60, 1036);
playSe(spep_1+80, 1036);
playSe(spep_1+100, 1036);




--黒背景
entryFadeBg(spep_1, 26, 86, 0, 0, 0, 0, 210);  -- 黒　背

spep_2 = spep_1 + 110;

------------------------------------------------------
-- カード(90F)
------------------------------------------------------
--***フェードと背景***
entryFade( spep_2-14, 6, 12, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

playSe( spep_2, SE_05);
speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                         -- 技名テクスチャ差し替え

shuchusen2 = entryEffectLife( spep_2, 906, 90, 0x100,  -1, 0,  0,  0);
setEffMoveKey(  spep_2,  shuchusen2,  0,  0);
setEffMoveKey(  spep_2+90,  shuchusen2,  0,  0);
setEffScaleKey(  spep_2,  shuchusen2,  1.6,  1.6);
setEffScaleKey(  spep_2+90,  shuchusen2,  1.6,  1.6);
setEffRotateKey(  spep_2,  shuchusen2,  0);
setEffRotateKey(  spep_2+90,  shuchusen2,  0);
setEffAlphaKey(  spep_2,  shuchusen2,  255);
setEffAlphaKey(  spep_2+90,  shuchusen2,  255);

--***背景と白フェード***
entryFade( spep_2+82, 6, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_3 = spep_2 + 90;

------------------------------------------------------
-- 発射(150F)
------------------------------------------------------

--発射
shoot = entryEffectLife(spep_3, SP_03r, 150, 0x100, -1, 0, 0, 0);
setEffMoveKey(spep_3, shoot, 0, 0, 0);
setEffMoveKey(spep_3+150, shoot, 0, 0, 0);
setEffScaleKey(spep_3, shoot, -1.0, 1.0);
setEffScaleKey(spep_3+150, shoot, -1.0, 1.0);
setEffRotateKey(spep_3, shoot, 0);
setEffRotateKey(spep_3+150, shoot, 0);
setEffAlphaKey(spep_3, shoot, 255);
setEffAlphaKey(spep_3+150, shoot, 255);

--書き文字(ズオッ)
ctZuo = entryEffectLife( spep_3 + 8,  10012, 132, 0x100, -1, 0, -110.5, -168 );
setEffShake( spep_3+8, ctZuo, 132, 20);
setEffMoveKey( spep_3 + 8, ctZuo, -110.5, -168 , 0 );
setEffMoveKey( spep_3 + 140, ctZuo, -110.5, -68 , 0 );
setEffScaleKey( spep_3 + 8, ctZuo, 0.1, 0.1 );
--setEffScaleKey( spep_3 + 10, ctZuo, 0.45 + a, 0.45 + a );
setEffScaleKey( spep_3 + 12, ctZuo, 0.8 + a, 0.8 + a );
setEffScaleKey( spep_3 + 84, ctZuo, 0.8 + a, 0.8 + a );
setEffScaleKey( spep_3 + 86, ctZuo, 1.04 + a, 1.04 + a );
setEffScaleKey( spep_3 + 88, ctZuo, 1.28 + a, 1.28 + a );
setEffScaleKey( spep_3 + 90, ctZuo, 1.52 + a, 1.52 + a );
setEffScaleKey( spep_3 + 92, ctZuo, 1.76 + a, 1.76 + a );
setEffScaleKey( spep_3 + 94, ctZuo, 2.5+ a, 2.5 + a );
setEffScaleKey( spep_3 + 140, ctZuo, 2.5+ a, 2.5 + a );
setEffRotateKey( spep_3 + 8, ctZuo, 0 );
setEffRotateKey( spep_3 + 140, ctZuo, 0 );
setEffAlphaKey( spep_3 + 8, ctZuo, 255 );
setEffAlphaKey( spep_3 + 84, ctZuo, 255 );
setEffAlphaKey( spep_3 + 86, ctZuo, 204 );
setEffAlphaKey( spep_3 + 88, ctZuo, 153 );
setEffAlphaKey( spep_3 + 90, ctZuo, 102 );
setEffAlphaKey( spep_3 + 92, ctZuo, 51 );
setEffAlphaKey( spep_3 + 94, ctZuo, 0 );
setEffAlphaKey( spep_3 + 140, ctZuo, 0 );

--集中線
shuchusen3 = entryEffectLife( spep_3, 906, 60, 0x80,  -1, 0,  0,  0);
setEffMoveKey(  spep_3,  shuchusen3,  0,  0);
setEffMoveKey(  spep_3+60,  shuchusen3,  0,  0);
setEffScaleKey(  spep_3,  shuchusen3,  1.6,  1.6);
setEffScaleKey(  spep_3+60,  shuchusen3,  1.6,  1.6);
setEffRotateKey(  spep_3,  shuchusen3,  0);
setEffRotateKey(  spep_3+60,  shuchusen3,  0);
setEffAlphaKey(  spep_3,  shuchusen3,  255);
setEffAlphaKey(  spep_3+60,  shuchusen3,  255);

--流線
ryusen = entryEffectLife( spep_3, 923, 150, 0x80,  -1, 0,  0,  0);
setEffMoveKey(  spep_3,  ryusen,  0,  0);
setEffMoveKey(  spep_3+150,  ryusen,  0,  0);
setEffScaleKey(  spep_3,  ryusen,  1.6, 1 );
setEffScaleKey(  spep_3+150,  ryusen,  1.6, 1 );
setEffRotateKey(  spep_3,  ryusen,  0);
setEffRotateKey(  spep_3+150,  ryusen,  0);
setEffAlphaKey(  spep_3,  ryusen,  255);
setEffAlphaKey(  spep_3+150,  ryusen,  255);

--伸びる気弾SE
playSe(spep_3, 1022);

--黒背景
entryFadeBg(spep_3, 0, 150, 0, 0, 0, 0, 255);  -- 黒　背

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_3+110; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

setMoveKey(  SP_dodge+6,   0,  0, 0,  -80);
setMoveKey(  SP_dodge+8,   0,  -1100, 0,  0);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(SP_dodge+10);
do return end
else end

------------------------------------------------------
-- 発射の続き
------------------------------------------------------

--***背景と白フェード***
entryFade( spep_3+130, 6, 14, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_4 = spep_3 + 150;

------------------------------------------------------
-- ギャン(60F)
------------------------------------------------------

--ギャン
gyan = entryEffectLife(spep_4, SP_04r, 60, 0x100, -1, 0, 0, 0);
setEffMoveKey(spep_4, gyan, 0, 0);
setEffMoveKey(spep_4+60, gyan, 0, 0);
setEffScaleKey( spep_4, gyan, 1.0, 1.0);
setEffScaleKey( spep_4+60, gyan, 1.0, 1.0);
setEffRotateKey(spep_4, gyan, 0);
setEffRotateKey(spep_4+60, gyan, 0);
setEffAlphaKey(spep_4, gyan, 255);
setEffAlphaKey(spep_4+60, gyan, 255);

--書き文字(ギャン)
ctGyan = entryEffectLife( spep_4, 10006, 60, 0x100, -1, 0, 0, 320);    -- ギャン
setEffMoveKey(spep_4, ctGyan, 0, 320);
setEffMoveKey(spep_4+60, ctGyan, 0, 320);
setEffScaleKey( spep_4, ctGyan, 2.0, 2.0);
setEffScaleKey( spep_4+10, ctGyan, 3.6, 3.6);
setEffScaleKey( spep_4+60, ctGyan, 4.0, 4.0);
setEffRotateKey(spep_4, ctGyan, 0);
setEffRotateKey(spep_4+60, ctGyan, 0);
setEffAlphaKey( spep_4, ctGyan, 255);
setEffAlphaKey( spep_4+60, ctGyan, 255);

--被弾SE
playSe(spep_4, SE_09);

--黒背景
entryFadeBg(spep_4, 0, 60, 0, 0, 0, 0, 255);  -- 黒　背

--***背景と白フェード***
entryFade( spep_4+20, 36, 8 , 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_5 = spep_4 + 60;

------------------------------------------------------
-- 爆発(234F)
------------------------------------------------------

--爆発
bomb = entryEffect(spep_5, SP_05r, 0x100, -1, 0, 0, 0);
setEffMoveKey(spep_5, bomb, 0, 0);
setEffMoveKey(spep_5+234, bomb, 0, 0);
setEffScaleKey( spep_5, bomb, 1.0, 1.0);
setEffScaleKey( spep_5+234, bomb, 1.0, 1.0);
setEffRotateKey(spep_5, bomb, 0);
setEffRotateKey(spep_5+234, bomb, 0);
setEffAlphaKey(spep_5, bomb, 255);
setEffAlphaKey(spep_5+234, bomb, 255);

--爆発SE
playSe(spep_5+18, 1024); --爆発

--黒背景
entryFadeBg(spep_5, 0, 234, 0, 0, 0, 0, 255);  -- 黒　背

dealDamage(spep_5+70);

endPhase(spep_5+220);

end


