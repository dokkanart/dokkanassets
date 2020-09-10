--sp0438 超サイヤ人2ケフラ_ギガンティックブラスト

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
SP_01 = 151360;--溜め〜仰け反り
SP_02 = 151361;--雷発射
SP_03 = 151362;--雷着弾
SP_04 = 151363;--爪制作〜発射
SP_05 = 151364;--爪着弾
SP_06 = 151365;--ビーム溜め
SP_07 = 151366;--ビーム発射
SP_08 = 151367;--ビーム迫る




--敵側は味方側にeをつけてます
SP_01e = 151368;--溜め〜仰け反り
SP_02e = 151369;--雷発射
SP_03e = 151362;--雷着弾
SP_04e = 151370;--爪制作〜発射
SP_05e = 151364;--爪着弾
SP_06e = 151371;--ビーム溜め
SP_07e = 151372;--ビーム発射
SP_08e = 151367;--ビーム迫る


multi_frm = 2;


------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

setDisp( 0, 1, 0);
setDisp( 0, 0, 0);
setMoveKey(   0,   0,    0, -54,   0);
setMoveKey(   0,   1,    0, -54,   0);
setMoveKey(   1,   0,    0, -54,   0);
setMoveKey(   1,   1,    0, -54,   0);
setMoveKey(   2,   0,    0, -54,   0);
setMoveKey(   2,   1,    0, -54,   0);
setMoveKey(   3,   0,    0, -54,   0);
setMoveKey(   3,   1,    0, -54,   0);

setScaleKey(   1,   0, 1.6, 1.6);
setScaleKey(   1,   1, 1.6, 1.6);
setRotateKey(   1,   1, 0);
setRotateKey(   1,   0, 0);

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 気溜め(200F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

spep_0 = 0;

entryFadeBg( spep_0, 20, 200, 0, 0, 0, 0, 210);  -- 黒　背景　


kidame = entryEffect(  spep_0,   SP_01,   0,  -1,  0,  0,  0);   --気溜め
setEffScaleKey( spep_0, kidame, 1, 1);
setEffAlphaKey( spep_0, kidame, 255);
setEffShake(spep_0, kidame, 200, 10);

-- 書き文字エントリー
ctZuo = entryEffectLife( spep_0+20, 10013, 59, 0, -1, 0, 0, 350); -- ズオッ
setEffRotateKey(spep_0+20, ctZuo, 0);
setEffShake(spep_0+21, ctZuo, 90, 25);
setEffAlphaKey(spep_0+20, ctZuo, 255);
setEffAlphaKey(spep_0+90, ctZuo, 255);
setEffAlphaKey(spep_0+100, ctZuo, 0);
setEffScaleKey(spep_0+10, ctZuo, 0.0, 0.0);
setEffScaleKey(spep_0+14, ctZuo, 2.0, 2.0);
setEffScaleKey(spep_0+90, ctZuo, 2.0, 2.0);
--setEffScaleKey(spep_0+100, ctZuo, 6.0, 6.0);

shuchusen = entryEffectLife( spep_0+20, 906, 180, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_0+20, shuchusen, 1.5, 1.5);
setEffAlphaKey( spep_0+20, shuchusen, 255);

speff = entryEffect(  spep_0+80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_0+80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

-- ** 書き文字エントリ ** --
gogogo = entryEffectLife( spep_0+90, 190006, 76, 0x100, -1, 0, 200, 500); -- ゴゴゴゴゴ
setEffScaleKey( spep_0+90, gogogo, 0.8, 0.8);
setEffAlphaKey( spep_0+90, gogogo, 255);
setEffRotateKey( spep_0+90, gogogo, 20);

playSe( spep_0+20, SE_05);
playSe( spep_0+80, SE_04);
------------------------------------------------------
-- 雷発射(90F)
------------------------------------------------------
spep_1 = spep_0+200;

entryFade( spep_1-8, 4, 6, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_1, 0, 90, 0, 0, 0, 0, 210);          -- やや暗い　背景


touzyo = entryEffect(  spep_1,   SP_02,   0,  -1,  0,  0,  0);   --ラッシュ
setEffScaleKey( spep_1, touzyo, 1, 1);
setEffAlphaKey( spep_1, touzyo, 255);
setEffShake(spep_1, touzyo, 90, 10); 

-- 書き文字エントリー
ctZuo1 = entryEffectLife( spep_1+50, 10012, 40, 0x100, -1, 0, 150, 350); -- ズオッ
setEffShake(spep_1+50, ctZuo1, 92, 30);
setEffRotateKey(spep_1+50, ctZuo1, 31);
setEffAlphaKey(spep_1+50, ctZuo1, 255);
setEffAlphaKey(spep_1+75, ctZuo1, 255);
setEffAlphaKey(spep_1+82, ctZuo1, 0);
setEffScaleKey(spep_1+50, ctZuo1, 0.0, 0.0);
setEffScaleKey(spep_1+52, ctZuo1, 2.8, 2.8);
setEffScaleKey(spep_1+75, ctZuo1, 2.8, 2.8);
setEffScaleKey(spep_1+82, ctZuo1, 8.0, 8.0);

shuchusen1 = entryEffectLife( spep_1, 906, 90, 0x100,  -1, 0,  -200,  200);   -- 集中線
setEffScaleKey( spep_1, shuchusen1, 1.7, 1.7);
setEffAlphaKey( spep_1, shuchusen1, 255);

playSe( spep_1, 44);
playSe( spep_1+50, 9);


------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 260; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(   SP_dodge+10,   0,    -2500, -250,   0);

endPhase(SP_dodge+10);
do return end
else end


------------------------------------------------------
-- 雷着弾(70F)
------------------------------------------------------
spep_2 = spep_1+90;

entryFade( spep_2-8, 4, 8, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_2, 0, 70, 0, 0, 0, 0, 255);          -- ベース黒　背景


touzyo2 = entryEffect(  spep_2,   SP_03,   0,  -1,  0,  0,  0);   --トランクス
setEffScaleKey( spep_2, touzyo2, 1.0, 1.0);
setEffAlphaKey( spep_2, touzyo2, 255);
setEffShake(spep_2, touzyo2, 70, 10); 


shuchusen2 = entryEffectLife( spep_2, 906, 90, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_2, shuchusen2, 1.5, 1.5);
setEffAlphaKey( spep_2, shuchusen2, 255);

setDisp( spep_2, 1, 1);
changeAnime( spep_2, 1, 102);
changeAnime( spep_2+24, 1, 108);
setMoveKey(  spep_2-1, 1,  400,  -150,  0);
setMoveKey(  spep_2, 1,  400,  -150,  0);
setMoveKey(  spep_2+24, 1,  100,  -200,  0);
setMoveKey(  spep_2+40, 1,  100,  -200,  0);
setMoveKey(  spep_2+68, 1,  150,  -150,  0);
setScaleKey( spep_2, 1, 1.5, 1.5);
setScaleKey( spep_2+24, 1, 1.2, 1.2);
setScaleKey( spep_2+68, 1, 1.2, 1.2);

setShakeChara( spep_2+1, 1, 67, 15);

setDisp( spep_2+68, 1, 0);

playSe( spep_2, 1008);
playSe( spep_2+10, 1008);
playSe( spep_2+30, 1008);
playSe( spep_2+40, 1008);
playSe( spep_2+60, 1008);
------------------------------------------------------
-- 爪制作〜発射(60F)
------------------------------------------------------
spep_3 = spep_2+70;

entryFade( spep_3-8, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_3, 0, 60, 0, 0, 0, 0, 210);          -- 暗め　背景

zimenusiro3 = entryEffect(  spep_3,   SP_04,   0x100,  -1,  0,  0,  0);   --
setEffScaleKey( spep_3, zimenusiro3, 1.0, 1.0);
setEffAlphaKey( spep_3, zimenusiro3, 255);
setEffShake(spep_3, zimenusiro3, 60, 10); 

shuchusenct3 = entryEffectLife( spep_3, 906, 60, 0x100,  -1, 0,  0,  0);   -- 集中線 
setEffScaleKey( spep_3, shuchusenct3, 1.5, 1.5);
setEffAlphaKey( spep_3, shuchusenct3, 255);


playSe( spep_3, 44);

------------------------------------------------------
-- 爪着弾(70F)
------------------------------------------------------
spep_4 = spep_3+60;

entryFade( spep_4-8, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_4, 0, 70, 0, 0, 0, 0, 255);          -- 暗め　背景

zimenusiro4 = entryEffect(  spep_4,   SP_05,   0x100,  -1,  0,  0,  0);   --床
setEffScaleKey( spep_4, zimenusiro4, 1.0, 1.0);
setEffAlphaKey( spep_4, zimenusiro4, 255);
setEffShake(spep_4, zimenusiro4, 70, 10); 


setDisp( spep_4, 1, 1);
changeAnime( spep_4, 1, 108);
changeAnime( spep_4+22, 1, 106);
setMoveKey(  spep_4-1, 1,  150,  -200,  0);
setMoveKey(  spep_4, 1,  150,  -200,  0);
setMoveKey(  spep_4+21, 1,  150,  -200,  0);
setMoveKey(  spep_4+22, 1,  200,  -150,  0);
setMoveKey(  spep_4+67, 1,  230,  -120,  0);
setScaleKey( spep_4, 1, 1.2, 1.2);
setScaleKey( spep_4+68, 1, 1.2, 1.2);
setShakeChara( spep_4+1, 1, 69, 15);

setDisp( spep_4+68, 1, 0);

shuchusenct4 = entryEffectLife( spep_4, 906, 70, 0x100,  -1, 0,  0,  0);   -- 集中線 
setEffScaleKey( spep_4, shuchusenct4, 1.5, 1.5);
setEffAlphaKey( spep_4, shuchusenct4, 255);


--playSe( spep_4+20, 8);
playSe( spep_4+20, 1026);

------------------------------------------------------
-- ビーム溜め(120F)
------------------------------------------------------
spep_5 = spep_4+70;

entryFade( spep_5-8, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_5, 0, 120, 0, 0, 0, 0, 210);          -- 暗め　背景

zimenusiro5 = entryEffect(  spep_5,   SP_06,   0x100,  -1,  0,  0,  0);   --床
setEffScaleKey( spep_5, zimenusiro5, 1.0, 1.0);
setEffAlphaKey( spep_5, zimenusiro5, 255);
setEffShake(spep_5+50, zimenusiro5, 120, 25); 

shuchusenct5 = entryEffectLife( spep_5, 906, 120, 0x100,  -1, 0,  0,  0);   -- 集中線 
setEffScaleKey( spep_5, shuchusenct5, 1.5, 1.5);
setEffAlphaKey( spep_5, shuchusenct5, 255);


entryFade( spep_5+48, 1, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

playSe( spep_5, 44);
playSe( spep_5+50, 17);
seID0 = playSe( spep_5+50, 17);
stopSe( spep_5+115, seID0, 0);
------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
spep_6 = spep_5+120;
entryFade( spep_6-8, 4, 6, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

shuchusenct6 = entryEffectLife( spep_6, 906, 90, 0x100,  -1, 0,  0,  0);   -- 集中線 
setEffScaleKey( spep_6, shuchusenct6, 1.5, 1.5);
setEffAlphaKey( spep_6, shuchusenct6, 255);


playSe( spep_6+4, SE_05);

speff = entryEffect(  spep_6,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え



------------------------------------------------------
-- ビーム発射(100F)
------------------------------------------------------
spep_7 = spep_6+90;

entryFade( spep_7-8, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_7, 0, 100, 0, 0, 0, 0, 255);          -- 暗め　背景

zimenusiro7 = entryEffect(  spep_7,   SP_07,   0x100,  -1,  0,  0,  0);   --床
setEffScaleKey( spep_7, zimenusiro7, 1.0, 1.0);
setEffAlphaKey( spep_7, zimenusiro7, 255);
setEffShake(spep_7, zimenusiro7, 100, 25); 

ryuusen7 = entryEffectLife( spep_7, 921, 100, 0x80,  -1, 0,  0,  0);   --  
setEffScaleKey( spep_7, ryuusen7, 1.7, 1.7);
setEffAlphaKey( spep_7, ryuusen7, 255);
setEffRotateKey( spep_7, ryuusen7, 220);


shuchusenct7 = entryEffectLife( spep_7, 906, 100, 0x100,  -1, 0,  0,  0);   -- 集中線 
setEffScaleKey( spep_7, shuchusenct7, 1.5, 1.5);
setEffAlphaKey( spep_7, shuchusenct7, 255);


-- 書き文字エントリー
ctZuo7 = entryEffectLife( spep_7, 10012, 92, 0x100, -1, 0, 50, 350); -- ズオッ
setEffShake(spep_7, ctZuo7, 92, 25);
setEffRotateKey(spep_7, ctZuo7, 31);
setEffAlphaKey(spep_7, ctZuo7, 255);
setEffAlphaKey(spep_7+60, ctZuo7, 255);
setEffAlphaKey(spep_7+92, ctZuo7, 0);
setEffScaleKey(spep_7, ctZuo7, 0.0, 0.0);
setEffScaleKey(spep_7+5, ctZuo7, 2.8, 2.8);
setEffScaleKey(spep_7+80, ctZuo7, 2.8, 2.8);
setEffScaleKey(spep_7+92, ctZuo7, 8.0, 8.0);


playSe( spep_7, SE_06);

------------------------------------------------------
-- ヒット(60F)
------------------------------------------------------
spep_8 = spep_7+100;

entryFade( spep_8-8, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_8, 0, 60, 0, 0, 0, 0, 210);          -- 暗め　背景

zimenusiro8 = entryEffect(  spep_8,   SP_08,   0x100,  -1,  0,  0,  0);   --床
setEffScaleKey( spep_8, zimenusiro8, 1.0, 1.0);
setEffAlphaKey( spep_8, zimenusiro8, 255);
setEffShake(spep_8, zimenusiro8, 60, 25); 

ryuusen8 = entryEffectLife( spep_8, 921, 60, 0x80,  -1, 0,  0,  0);   --  
setEffScaleKey( spep_8, ryuusen8, 1.7, 1.7);
setEffAlphaKey( spep_8, ryuusen8, 255);
setEffRotateKey( spep_8, ryuusen8, 40);


shuchusenct8 = entryEffectLife( spep_8, 906, 60, 0x100,  -1, 0,  0,  0);   -- 集中線 
setEffScaleKey( spep_8, shuchusenct8, 1.5, 1.5);
setEffAlphaKey( spep_8, shuchusenct8, 255);

setDisp( spep_8, 1, 1);
changeAnime( spep_8, 1, 106);
setMoveKey(  spep_8-1, 1,  150,  -200,  0);
setMoveKey(  spep_8, 1,  150,  -200,  0);
setScaleKey( spep_8, 1, 1.2, 1.2);
setScaleKey( spep_8+58, 1, 1.2, 1.2);

setShakeChara( spep_8+1, 1, 58, 15);

setDisp( spep_8+58, 1, 0);


-- 書き文字エントリー
ctZuo8 = entryEffectLife( spep_8, 10014, 60, 0x100, -1, 0, -200, 400); -- ズオッ
setEffShake(spep_8, ctZuo8, 92, 25);
setEffRotateKey(spep_8, ctZuo8, 0);
setEffShake(spep_8, ctZuo8, 71, 30);
setEffAlphaKey(spep_8, ctZuo8, 255);
setEffAlphaKey(spep_8+60, ctZuo8, 255);
setEffAlphaKey(spep_8+92, ctZuo8, 0);
setEffScaleKey(spep_8, ctZuo8, 	2.5, 2.5);
setEffScaleKey(spep_8+60, ctZuo8, 2.5, 2.5);


playSe( spep_8+15, SE_07);

------------------------------------------------------
-- ギャン
------------------------------------------------------
spep_9 = spep_8+60;
entryFade( spep_9-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** ギャン ** --
gyan = entryEffectLife( spep_9, 190002 ,60, 0x100, -1, 0, 0, 0);
setEffMoveKey( spep_9, gyan, 0, 0, 0);
setEffScaleKey( spep_9, gyan,1.0, 1.0);
setEffAlphaKey( spep_9, gyan, 255);
setEffShake( spep_9, gyan, 10);

-- ** 書き文字エントリー ** --
ctgyan = entryEffectLife( spep_9, 10006, 60, 0x100, -1, 0, 0, 400); -- ギャン
setEffAlphaKey( spep_9, ctgyan, 255);
setEffScaleKey( spep_9, ctgyan, 3.0, 3.0);
setEffScaleKey( spep_9+60, ctgyan, 4.0, 4.0);
setEffAlphaKey( spep_9, ctgyan, 255);
setEffAlphaKey( spep_9+60, ctgyan, 80);
setEffShake( spep_9, ctgyan, 60, 10);

-- ** 音 ** --
playSe( spep_9+8, SE_09);



------------------------------------------------------
-- 爆発(190F)
------------------------------------------------------
spep_10 = spep_9+60;

entryFade( spep_10-6, 4, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_10, 0, 190, 0, 0, 0, 0, 255);          -- ベース暗め　背景


bom = entryEffect(  spep_10,   1671,   0,  -1,  0,  0,  0);   --爆発
setEffScaleKey( spep_10, bom, 1.0, 1.0);
setEffAlphaKey( spep_10, bom, 255);


-- ダメージ表示
dealDamage( spep_10+16);
entryFade( spep_10+136, 9, 10, 1, 8, 8, 8, 255); -- black fade
endPhase( spep_10+148);

playSe( spep_10+10, SE_10);

else

------------------------------------------------------
-- 敵側
------------------------------------------------------

spep_0 = 0;

entryFadeBg( spep_0, 20, 200, 0, 0, 0, 0, 210);  -- 黒　背景　


kidame = entryEffect(  spep_0,   SP_01e,   0,  -1,  0,  0,  0);   --気溜め
setEffScaleKey( spep_0, kidame, 1, 1);
setEffAlphaKey( spep_0, kidame, 255);
setEffShake(spep_0, kidame, 200, 10);

-- 書き文字エントリー
ctZuo = entryEffectLife( spep_0+20, 10013, 59, 0, -1, 0, 0, 350); -- ズオッ
setEffRotateKey(spep_0+20, ctZuo, 0);
setEffShake(spep_0+21, ctZuo, 90, 25);
setEffAlphaKey(spep_0+20, ctZuo, 255);
setEffAlphaKey(spep_0+90, ctZuo, 255);
setEffAlphaKey(spep_0+100, ctZuo, 0);
setEffScaleKey(spep_0+10, ctZuo, 0.0, 0.0);
setEffScaleKey(spep_0+14, ctZuo, 2.0, 2.0);
setEffScaleKey(spep_0+90, ctZuo, 2.0, 2.0);
--setEffScaleKey(spep_0+100, ctZuo, 6.0, 6.0);

shuchusen = entryEffectLife( spep_0+20, 906, 180, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_0+20, shuchusen, 1.5, 1.5);
setEffAlphaKey( spep_0+20, shuchusen, 255);
--[[
speff = entryEffect(  spep_0+80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_0+80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
]]--
-- ** 書き文字エントリ ** --
gogogo = entryEffectLife( spep_0+90, 190006, 76, 0x100, -1, 0, 200, 500); -- ゴゴゴゴゴ
setEffScaleKey( spep_0+90, gogogo, -0.8, 0.8);
setEffAlphaKey( spep_0+90, gogogo, 255);
setEffRotateKey( spep_0+90, gogogo, 20);

playSe( spep_0+20, SE_05);
playSe( spep_0+80, SE_04);
------------------------------------------------------
-- 雷発射(90F)
------------------------------------------------------
spep_1 = spep_0+200;

entryFade( spep_1-8, 4, 6, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_1, 0, 90, 0, 0, 0, 0, 210);          -- やや暗い　背景


touzyo = entryEffect(  spep_1,   SP_02e,   0,  -1,  0,  0,  0);   --ラッシュ
setEffScaleKey( spep_1, touzyo, 1, 1);
setEffAlphaKey( spep_1, touzyo, 255);
setEffShake(spep_1, touzyo, 90, 10); 

-- 書き文字エントリー
ctZuo1 = entryEffectLife( spep_1+50, 10012, 40, 0x100, -1, 0, 150, 350); -- ズオッ
setEffShake(spep_1+50, ctZuo1, 92, 30);
setEffRotateKey(spep_1+50, ctZuo1, 31);
setEffAlphaKey(spep_1+50, ctZuo1, 255);
setEffAlphaKey(spep_1+75, ctZuo1, 255);
setEffAlphaKey(spep_1+82, ctZuo1, 0);
setEffScaleKey(spep_1+50, ctZuo1, 0.0, 0.0);
setEffScaleKey(spep_1+52, ctZuo1, 2.8, 2.8);
setEffScaleKey(spep_1+75, ctZuo1, 2.8, 2.8);
setEffScaleKey(spep_1+82, ctZuo1, 8.0, 8.0);

shuchusen1 = entryEffectLife( spep_1, 906, 90, 0x100,  -1, 0,  -200,  200);   -- 集中線
setEffScaleKey( spep_1, shuchusen1, 1.7, 1.7);
setEffAlphaKey( spep_1, shuchusen1, 255);

playSe( spep_1, 44);
playSe( spep_1+50, 9);


------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 260; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(   SP_dodge+10,   0,    -2500, -250,   0);

endPhase(SP_dodge+10);
do return end
else end


------------------------------------------------------
-- 雷着弾(70F)
------------------------------------------------------
spep_2 = spep_1+90;

entryFade( spep_2-8, 4, 8, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_2, 0, 70, 0, 0, 0, 0, 255);          -- ベース黒　背景


touzyo2 = entryEffect(  spep_2,   SP_03,   0,  -1,  0,  0,  0);   --トランクス
setEffScaleKey( spep_2, touzyo2, 1.0, 1.0);
setEffAlphaKey( spep_2, touzyo2, 255);
setEffShake(spep_2, touzyo2, 70, 10); 


shuchusen2 = entryEffectLife( spep_2, 906, 90, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_2, shuchusen2, 1.5, 1.5);
setEffAlphaKey( spep_2, shuchusen2, 255);

setDisp( spep_2, 1, 1);
changeAnime( spep_2, 1, 102);
changeAnime( spep_2+24, 1, 108);
setMoveKey(  spep_2-1, 1,  400,  -150,  0);
setMoveKey(  spep_2, 1,  400,  -150,  0);
setMoveKey(  spep_2+24, 1,  100,  -200,  0);
setMoveKey(  spep_2+40, 1,  100,  -200,  0);
setMoveKey(  spep_2+68, 1,  150,  -150,  0);
setScaleKey( spep_2, 1, 1.5, 1.5);
setScaleKey( spep_2+24, 1, 1.2, 1.2);
setScaleKey( spep_2+68, 1, 1.2, 1.2);

setShakeChara( spep_2+1, 1, 67, 15);

setDisp( spep_2+68, 1, 0);

playSe( spep_2, 1008);
playSe( spep_2+10, 1008);
playSe( spep_2+30, 1008);
playSe( spep_2+40, 1008);
playSe( spep_2+60, 1008);
------------------------------------------------------
-- 爪制作〜発射(60F)
------------------------------------------------------
spep_3 = spep_2+70;

entryFade( spep_3-8, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_3, 0, 60, 0, 0, 0, 0, 210);          -- 暗め　背景

zimenusiro3 = entryEffect(  spep_3,   SP_04e,   0x100,  -1,  0,  0,  0);   --
setEffScaleKey( spep_3, zimenusiro3, 1.0, 1.0);
setEffAlphaKey( spep_3, zimenusiro3, 255);
setEffShake(spep_3, zimenusiro3, 60, 10); 

shuchusenct3 = entryEffectLife( spep_3, 906, 60, 0x100,  -1, 0,  0,  0);   -- 集中線 
setEffScaleKey( spep_3, shuchusenct3, 1.5, 1.5);
setEffAlphaKey( spep_3, shuchusenct3, 255);


playSe( spep_3, 44);

------------------------------------------------------
-- 爪着弾(70F)
------------------------------------------------------
spep_4 = spep_3+60;

entryFade( spep_4-8, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_4, 0, 70, 0, 0, 0, 0, 255);          -- 暗め　背景

zimenusiro4 = entryEffect(  spep_4,   SP_05,   0x100,  -1,  0,  0,  0);   --床
setEffScaleKey( spep_4, zimenusiro4, 1.0, 1.0);
setEffAlphaKey( spep_4, zimenusiro4, 255);
setEffShake(spep_4, zimenusiro4, 70, 10); 


setDisp( spep_4, 1, 1);
changeAnime( spep_4, 1, 108);
changeAnime( spep_4+22, 1, 106);
setMoveKey(  spep_4-1, 1,  150,  -200,  0);
setMoveKey(  spep_4, 1,  150,  -200,  0);
setMoveKey(  spep_4+21, 1,  150,  -200,  0);
setMoveKey(  spep_4+22, 1,  200,  -150,  0);
setMoveKey(  spep_4+67, 1,  230,  -120,  0);
setScaleKey( spep_4, 1, 1.2, 1.2);
setScaleKey( spep_4+68, 1, 1.2, 1.2);
setShakeChara( spep_4+1, 1, 69, 15);

setDisp( spep_4+68, 1, 0);

shuchusenct4 = entryEffectLife( spep_4, 906, 70, 0x100,  -1, 0,  0,  0);   -- 集中線 
setEffScaleKey( spep_4, shuchusenct4, 1.5, 1.5);
setEffAlphaKey( spep_4, shuchusenct4, 255);


--playSe( spep_4+20, 8);
playSe( spep_4+20, 1026);

------------------------------------------------------
-- ビーム溜め(120F)
------------------------------------------------------
spep_5 = spep_4+70;

entryFade( spep_5-8, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_5, 0, 120, 0, 0, 0, 0, 210);          -- 暗め　背景

zimenusiro5 = entryEffect(  spep_5,   SP_06e,   0x100,  -1,  0,  0,  0);   --床
setEffScaleKey( spep_5, zimenusiro5, 1.0, 1.0);
setEffAlphaKey( spep_5, zimenusiro5, 255);
setEffShake(spep_5+50, zimenusiro5, 120, 25); 

shuchusenct5 = entryEffectLife( spep_5, 906, 120, 0x100,  -1, 0,  0,  0);   -- 集中線 
setEffScaleKey( spep_5, shuchusenct5, 1.5, 1.5);
setEffAlphaKey( spep_5, shuchusenct5, 255);


entryFade( spep_5+48, 1, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

playSe( spep_5, 44);
playSe( spep_5+50, 17);
seID0 = playSe( spep_5+50, 17);
stopSe( spep_5+115, seID0, 0);
------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
spep_6 = spep_5+120;
entryFade( spep_6-8, 4, 6, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

shuchusenct6 = entryEffectLife( spep_6, 906, 90, 0x100,  -1, 0,  0,  0);   -- 集中線 
setEffScaleKey( spep_6, shuchusenct6, 1.5, 1.5);
setEffAlphaKey( spep_6, shuchusenct6, 255);


playSe( spep_6+4, SE_05);

speff = entryEffect(  spep_6,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え



------------------------------------------------------
-- ビーム発射(100F)
------------------------------------------------------
spep_7 = spep_6+90;

entryFade( spep_7-8, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_7, 0, 100, 0, 0, 0, 0, 255);          -- 暗め　背景

zimenusiro7 = entryEffect(  spep_7,   SP_07e,   0x100,  -1,  0,  0,  0);   --床
setEffScaleKey( spep_7, zimenusiro7, 1.0, 1.0);
setEffAlphaKey( spep_7, zimenusiro7, 255);
setEffShake(spep_7, zimenusiro7, 100, 25); 

ryuusen7 = entryEffectLife( spep_7, 921, 100, 0x80,  -1, 0,  0,  0);   --  
setEffScaleKey( spep_7, ryuusen7, 1.7, 1.7);
setEffAlphaKey( spep_7, ryuusen7, 255);
setEffRotateKey( spep_7, ryuusen7, 220);


shuchusenct7 = entryEffectLife( spep_7, 906, 100, 0x100,  -1, 0,  0,  0);   -- 集中線 
setEffScaleKey( spep_7, shuchusenct7, 1.5, 1.5);
setEffAlphaKey( spep_7, shuchusenct7, 255);


-- 書き文字エントリー
ctZuo7 = entryEffectLife( spep_7, 10012, 92, 0x100, -1, 0, 50, 350); -- ズオッ
setEffShake(spep_7, ctZuo7, 92, 25);
setEffRotateKey(spep_7, ctZuo7, 31);
setEffAlphaKey(spep_7, ctZuo7, 255);
setEffAlphaKey(spep_7+60, ctZuo7, 255);
setEffAlphaKey(spep_7+92, ctZuo7, 0);
setEffScaleKey(spep_7, ctZuo7, 0.0, 0.0);
setEffScaleKey(spep_7+5, ctZuo7, 2.8, 2.8);
setEffScaleKey(spep_7+80, ctZuo7, 2.8, 2.8);
setEffScaleKey(spep_7+92, ctZuo7, 8.0, 8.0);


playSe( spep_7, SE_06);

------------------------------------------------------
-- ヒット(60F)
------------------------------------------------------
spep_8 = spep_7+100;

entryFade( spep_8-8, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_8, 0, 60, 0, 0, 0, 0, 210);          -- 暗め　背景

zimenusiro8 = entryEffect(  spep_8,   SP_08,   0x100,  -1,  0,  0,  0);   --床
setEffScaleKey( spep_8, zimenusiro8, 1.0, 1.0);
setEffAlphaKey( spep_8, zimenusiro8, 255);
setEffShake(spep_8, zimenusiro8, 60, 25); 

ryuusen8 = entryEffectLife( spep_8, 921, 60, 0x80,  -1, 0,  0,  0);   --  
setEffScaleKey( spep_8, ryuusen8, 1.7, 1.7);
setEffAlphaKey( spep_8, ryuusen8, 255);
setEffRotateKey( spep_8, ryuusen8, 40);


shuchusenct8 = entryEffectLife( spep_8, 906, 60, 0x100,  -1, 0,  0,  0);   -- 集中線 
setEffScaleKey( spep_8, shuchusenct8, 1.5, 1.5);
setEffAlphaKey( spep_8, shuchusenct8, 255);

setDisp( spep_8, 1, 1);
changeAnime( spep_8, 1, 106);
setMoveKey(  spep_8-1, 1,  150,  -200,  0);
setMoveKey(  spep_8, 1,  150,  -200,  0);
setScaleKey( spep_8, 1, 1.2, 1.2);
setScaleKey( spep_8+58, 1, 1.2, 1.2);

setShakeChara( spep_8+1, 1, 58, 15);

setDisp( spep_8+58, 1, 0);


-- 書き文字エントリー
ctZuo8 = entryEffectLife( spep_8, 10014, 60, 0x100, -1, 0, -200, 400); -- ズオッ
setEffShake(spep_8, ctZuo8, 92, 25);
setEffRotateKey(spep_8, ctZuo8, 0);
setEffShake(spep_8, ctZuo8, 71, 30);
setEffAlphaKey(spep_8, ctZuo8, 255);
setEffAlphaKey(spep_8+60, ctZuo8, 255);
setEffAlphaKey(spep_8+92, ctZuo8, 0);
setEffScaleKey(spep_8, ctZuo8, 	2.5, 2.5);
setEffScaleKey(spep_8+60, ctZuo8, 2.5, 2.5);


playSe( spep_8+15, SE_07);

------------------------------------------------------
-- ギャン
------------------------------------------------------
spep_9 = spep_8+60;
entryFade( spep_9-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** ギャン ** --
gyan = entryEffectLife( spep_9, 190002 ,60, 0x100, -1, 0, 0, 0);
setEffMoveKey( spep_9, gyan, 0, 0, 0);
setEffScaleKey( spep_9, gyan,1.0, 1.0);
setEffAlphaKey( spep_9, gyan, 255);
setEffShake( spep_9, gyan, 10);

-- ** 書き文字エントリー ** --
ctgyan = entryEffectLife( spep_9, 10006, 60, 0x100, -1, 0, 0, 400); -- ギャン
setEffAlphaKey( spep_9, ctgyan, 255);
setEffScaleKey( spep_9, ctgyan, 3.0, 3.0);
setEffScaleKey( spep_9+60, ctgyan, 4.0, 4.0);
setEffAlphaKey( spep_9, ctgyan, 255);
setEffAlphaKey( spep_9+60, ctgyan, 80);
setEffShake( spep_9, ctgyan, 60, 10);

-- ** 音 ** --
playSe( spep_9+8, SE_09);



------------------------------------------------------
-- 爆発(190F)
------------------------------------------------------
spep_10 = spep_9+60;

entryFade( spep_10-6, 4, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_10, 0, 190, 0, 0, 0, 0, 255);          -- ベース暗め　背景


bom = entryEffect(  spep_10,   1671,   0,  -1,  0,  0,  0);   --爆発
setEffScaleKey( spep_10, bom, 1.0, 1.0);
setEffAlphaKey( spep_10, bom, 255);


-- ダメージ表示
dealDamage( spep_10+16);
entryFade( spep_10+136, 9, 10, 1, 8, 8, 8, 255); -- black fade
endPhase( spep_10+148);

playSe( spep_10+10, SE_10);

end


