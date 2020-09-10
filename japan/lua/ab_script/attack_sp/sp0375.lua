
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
--SE_08 = 1042; --カットイン
SE_09 = 1023; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音

SE_12 = 09;

----------------------------
SP_01 = 150629; --溜めと構え
SP_02 = 150631; --発射
SP_03 = 150633; --敵にヒット
SP_04 = 150634; --大球体投げる
SP_05 = 150636; --大球体ヒット
----------------------------
SP_06 = 150630; --溜めと構えのエネミー用
SP_07 = 150632; --発射のエネミー用
SP_08 = 150635; --大球体投げるのエネミー用


multi_frm = 2;

changeAnime( 0, 0, 0);                 -- 立ち
setDisp( 0, 1, 0);

------------------------------------------------------
-- 溜めと構え(180F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

spep_1 =0;
setVisibleUI( spep_1, 0);

setDisp(spep_1 ,0,0);
setDisp(spep_1 ,1,0);

entryFade( spep_1, 0,  3, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade 
entryFadeBg( spep_1 , 0, 180, 0, 10, 10, 10, 180);          -- ベース暗め　背景

tame = entryEffect( spep_1 , SP_01, 0x80, -1,  0,  0,  0);   -- 溜めと構え
setEffAlphaKey(spep_1 ,tame,255);
setEffScaleKey( spep_1 , tame, 1, 1);
setEffMoveKey(spep_1 ,tame,0,0);
setEffShake(spep_1+18, tame, 180,10);

entryFade( 17, 2, 0, 2, fcolor_r, fcolor_g, fcolor_b, 180);     -- white fade
entryFade( spep_1+70, 2,  0, 2, fcolor_r, fcolor_g, fcolor_b, 180);     -- white fade 

shuchusen1 = entryEffectLife( spep_1+18 , 906, 180, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_1+2 , shuchusen1, 1.5, 1.5);

speff = entryEffect(  spep_1+90,   1504,  0x80,   -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_1+90,   1505,  0x80,   -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

ct = entryEffectLife( spep_1+103, 190006, 80, 0x80, -1, 0, 30, 510);    -- ゴゴゴゴ
setEffRotateKey(spep_1+103, ct, 0);
setEffAlphaKey( spep_1+103, ct, 255);
setEffScaleKey( spep_1+103, ct, 0.8, 0.8);
setEffAlphaKey( spep_1+103, ct, 255);
setEffAlphaKey( spep_1+103, ct, 0);


setEffAlphaKey(spep_1+180 ,tame,255);
setEffAlphaKey(spep_1+182 ,tame,0);
setEffMoveKey(spep_1+180,tame,0,0);

playSe( spep_1+18, SE_01);
playSe( spep_1+90, SE_04);
------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
spep_2 = spep_1+176;

entryFade( spep_2-5, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

playSe(spep_2, SE_05);

speff = entryEffect(  spep_2 ,   1507,   0,  -1,  0,  0,  0);   -- カード

setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


------------------------------------------------------
-- 発射(120F)
------------------------------------------------------
spep_3 = spep_2+90;--176
entryFade( spep_3-8, 5, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_3 , 0, 120, 0, 10, 10, 10, 210);          -- ベース暗め　背景

ryusen3 = entryEffectLife( spep_3 , 921, 110, 0x80,  -1,  0,  0,  0); 
setEffScaleKey( spep_3, ryusen3, 1.5, 1.5);
setEffRotateKey( spep_3, ryusen3, 270);
setEffAlphaKey( spep_3, ryusen3, 255);

shuchusen3 = entryEffectLife( spep_3 , 906, 120, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3 , shuchusen3, 1.5, 1.5);
setEffAlphaKey( spep_3, shuchusen3, 255);

hassya = entryEffect( spep_3 , SP_02, 0x80, -1,  0,  0,  0);   -- 発射
setEffAlphaKey(spep_3 ,hassya, 255);
setEffScaleKey( spep_3 , hassya, 1, 1);
setEffMoveKey(spep_3 ,hassya, 0,0);
setEffShake(spep_3, hassya, 120, 10);

entryFade( spep_3+17, 0, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryFade( spep_3+33, 2, 0, 2, fcolor_r, fcolor_g, fcolor_b, 150);     -- white fade
entryFade( spep_3+49, 2, 0, 2, fcolor_r, fcolor_g, fcolor_b, 150);     -- white fade
entryFade( spep_3+67, 2, 0, 2, fcolor_r, fcolor_g, fcolor_b, 150);     -- white fade
entryFade( spep_3+81, 2, 0, 2, fcolor_r, fcolor_g, fcolor_b, 150);     -- white fade



Seid =  playSe( spep_3+18, 1033);


------------------------------------------------------
-- 回避
------------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge = spep_3 + 30; --エンドフェイズのフレーム数を置き換える
setEffAlphaKey(SP_dodge ,semaru ,255);
stopSe(SP_dodge-12, Seid,  0);

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setEffAlphaKey(SP_dodge+10 ,semaru ,255);
setEffAlphaKey(SP_dodge+11 ,semaru ,0);

endPhase(SP_dodge+10);

do return end
else end

------------------------------------------------------
-- 回避されなかった場合
------------------------------------------------------

-- 書き文字エントリー
ct3 = entryEffectLife( spep_3+20, 10014, 90, 0x100, -1, 0, 50, 355); -- ズドドッ
setEffShake(spep_3+20, ct3, 100, 20);
setEffScaleKey( spep_3+20, ct3, 3, 3);
setEffRotateKey(spep_3+20, ct3, 50);
setEffMoveKey(spep_3+20 ,ct3,-150,-200);
setEffAlphaKey(spep_3+20, ct3, 255);
setEffAlphaKey(spep_3+120, ct3, 255);
setEffAlphaKey(spep_3+122, ct3, 0);


setEffAlphaKey(spep_3+110 ,hassya,255);
setEffAlphaKey(spep_3+112 ,hassya,0);
setEffMoveKey(spep_3+112 ,hassya,0,0);


playSe( spep_3+33, 1033);
playSe( spep_3+49, 1033);
playSe( spep_3+67, 1033);
playSe( spep_3+81, 1033);
playSe( spep_3+100, 1033);



------------------------------------------------------
-- 敵にヒット(60F)
------------------------------------------------------
spep_4 = spep_3+110;--176+90

entryFade( spep_4-5, 5, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_4 , 0, 160, 0, 10, 10, 10, 210);          -- ベース真っ暗　背景


ataru = entryEffect( spep_4 , SP_03, 0x100, -1,  0,  0,  0); 
setEffAlphaKey(spep_4 ,ataru ,255);
setEffScaleKey( spep_4 , ataru , 1, 1);
setEffMoveKey(spep_4 ,ataru ,0,0);
setEffShake(spep_4, ataru , 60,10);

ryusen4 = entryEffectLife( spep_4 , 921, 60, 0x80,  -1,  0,  0,  0); 
setEffScaleKey( spep_4, ryusen4, 1.5, 1.5);
setEffRotateKey( spep_4, ryusen4, 0);
setEffAlphaKey( spep_4, ryusen4, 255);


setDisp(spep_4, 0, 0);
setDisp(spep_4, 1, 1);
changeAnime(spep_4, 1, 104);
setMoveKey( spep_4, 1,  220,  0,   0);
setScaleKey( spep_4,  1,  0.5, 0.5);
setShakeChara( spep_4,  1,  16, 10);

setMoveKey( spep_4+14, 1,  220,  0,   0);
setScaleKey( spep_4+14,  1,  2.0, 2.0);
setRotateKey(spep_4+14, 1, 0);


changeAnime(spep_4+17, 1, 108);
setMoveKey( spep_4+17, 1,  220,  0,   0);
setScaleKey( spep_4+17,  1,  2.0, 2.0);
setRotateKey(spep_4+17, 1, 00);
setShakeChara( spep_4+17,  1,  44, 20);

setMoveKey( spep_4+18, 1,  220,  0,   0);
setScaleKey( spep_4+18,  1,  2.0, 2.0);
setRotateKey(spep_4+18, 1, -20);


setMoveKey( spep_4+20, 1,  220,  0,   0);
setScaleKey( spep_4+20,  1,  2.0, 2.0);
setRotateKey(spep_4+20, 1, 0);

setMoveKey( spep_4+50, 1,  500,  0,   0);
setScaleKey( spep_4+50,  1,  0.5, 0.5);

setMoveKey( spep_4+60, 1,  2000,  0,   0);
setRotateKey(spep_4+60, 1, 0);


setEffAlphaKey(spep_4+60 ,ataru,255);
setEffAlphaKey(spep_4+62 ,ataru,0);
setEffMoveKey(spep_4+62 ,ataru,0,0);

shuchusen4 = entryEffectLife( spep_4 , 906, 60, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_4 , shuchusen4, 1.5, 1.5);


playSe( spep_4+15, SE_09); --1002







--setDisp(spep_5-2, 1, 0);
------------------------------------------------------
-- 大球体投げる(120F)
------------------------------------------------------
spep_5 = spep_4+60;

entryFade( spep_5-5, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_5 , 0, 120, 0, 10, 10, 10, 210);          -- ベース真っ暗　背景

shuchusen5 = entryEffectLife( spep_5 , 906, 100, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_5 , shuchusen5, 1.5, 1.5);

ryusen5 = entryEffectLife( spep_5 , 921, 100, 0x80,  -1,  0,  0,  0); 
setEffScaleKey( spep_5, ryusen5, 1.5, 1.5);
setEffRotateKey( spep_5, ryusen5, 270);
setEffAlphaKey( spep_5, ryusen5, 255);

hassya5 = entryEffectLife( spep_5 , SP_04,  100,  0x00, -1,  0,  0,  0);   -- 発射
setEffAlphaKey(spep_5 ,hassya5,255);
setEffScaleKey( spep_5 , hassya5, 1, 1);
setEffMoveKey(spep_5 ,hassya5,0,0);
setEffShake(spep_5, hassya5, 120,10);


-- 書き文字エントリー
ct5 = entryEffectLife( spep_5+15, 10012, 70, 0, -1, 0, 200, 330); -- ズオッ
setEffShake(spep_5+15, ct5, 32, 20);
setEffRotateKey( spep_5+15, ct5, 30);
setEffAlphaKey(spep_5+15, ct5, 255);
setEffAlphaKey(spep_5+40, ct5, 255);
setEffAlphaKey(spep_5+60, ct5, 0);
setEffScaleKey(spep_5+15, ct5, 1.5, 1.5);
setEffScaleKey(spep_5+22, ct5, 3.0, 3.0);
setEffScaleKey(spep_5+42, ct5, 3.0, 3.0);
setEffScaleKey(spep_5+60, ct5, 8.0, 8.0);


setEffAlphaKey(spep_5+120 ,hassya5,255);
setEffAlphaKey(spep_5+122 ,hassya5,0);
setEffMoveKey(spep_5+122 ,hassya5,0,0);

entryFade( spep_5+68, 2, 0, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

playSe( spep_5+15, 1025);
playSe( spep_5+42, 1066);

------------------------------------------------------
-- 迫る( 60F)
------------------------------------------------------
spep_6 = spep_5+101;
setDisp( spep_6, 0, 0);
setDisp( spep_6-2, 1, 0);
setDisp( spep_6, 1, 1);
changeAnime( spep_6-1, 1, 106);                        -- 気ダメ後ろ
setMoveKey(  spep_6-1,    1,   150,  0,   0);
setScaleKey(  spep_6-1,   1,   1.5,  1.5);
setScaleKey(  spep_6+60,   1,   1.5,  1.5);
setShakeChara( spep_6-1,  1,  55, 10);
setRotateKey(spep_6-1, 1, -20);

entryFade( spep_6-5, 4, 6, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_6 , 0, 40, 0, 10, 10, 10, 255);          -- ベース真っ暗　背景

ryusen6 = entryEffectLife( spep_6 , 921, 60, 0x80,  -1,  0,  0,  0); 
setEffScaleKey( spep_6, ryusen6, 1.5, 1.5);
setEffRotateKey( spep_6, ryusen6, 0);
setEffAlphaKey( spep_6, ryusen6, 255);
--[[
setMoveKey(  spep_6-2,    1,   120,  0,   0);
setMoveKey(  spep_6-1,    1,  400,  -400,   0);
setMoveKey(  spep_6,    1,  400,  -400,   0);
setMoveKey(  spep_6+30,    1,   120,  -270,   0);

setScaleKey(  spep_6-1,   1,   1.2,  1.2);
setScaleKey(  spep_6+75,   1,   1.2,  1.2);
]]--

semaru = entryEffectLife( spep_6 , SP_05,   56,  0x100, -1,  0,  0,  0);   -- マイナスエネルギーパワーボール迫る
setEffAlphaKey(spep_6 ,semaru ,255);
setEffScaleKey( spep_6 , semaru , 1, 1);
setEffMoveKey(spep_6 ,semaru ,0,0);
setEffShake(spep_6, semaru , 40,10);

setEffAlphaKey(spep_6+38 ,semaru,255);
setEffAlphaKey(spep_6+40 ,semaru,0);
setEffMoveKey(spep_6+40 ,semaru,0,0);

shuchusen6 = entryEffectLife( spep_6 , 906, 58, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_5 , shuchusen6, 1.5, 1.5);

-- 書き文字エントリー
ct6 = entryEffectLife( spep_6, 10014, 58, 0, -1, 0, -150, 355); -- ズドドッ
setEffShake(spep_6, ct6, 99, 20);
setEffScaleKey( spep_6, ct6, 3, 3);
setEffRotateKey(spep_6, ct6, 0);
setEffAlphaKey(spep_6, ct6, 255);
setEffAlphaKey(spep_6+40, ct6, 255);
setEffAlphaKey(spep_6+41, ct6, 0);



------------------------------------------------------

------------------------------------------------------
-- ギャン(50F)
------------------------------------------------------
spep_7 = spep_6+40;

entryFade( spep_7-5, 5,  5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setDisp( spep_7, 1, 0);
entryFadeBg( spep_7, 0, 60, 0,  30, 30, 30, 180);          -- ベース暗め　背景

playSe( spep_7, 1024);

gyan = entryEffect( spep_7,190002,0x80,-1,0,0,0);
setEffAlphaKey( spep_7,gyan,255);

-- 書き文字エントリー
ct7 = entryEffectLife( spep_7, 10006, 48, 0x100, -1, 0, 0, 400);    -- ギャン

setEffAlphaKey( spep_7, ct7, 255);
setEffScaleKey( spep_7, ct7, 3.0, 3.0);
setEffScaleKey( spep_7+60, ct7, 4.0, 4.0);
setEffAlphaKey( spep_7, ct7, 255);
setEffAlphaKey( spep_7+60, ct7, 0);
setEffShake( spep_7, ct7, 60, 10);
------------------------------------------------------
-- ドーム型 (180F)
------------------------------------------------------
spep_8 = spep_7+50;

entryFade( spep_8-5, 5, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_8 , 0, 100, 0, 10, 10, 10, 255);          -- ベース真っ暗　背景

playSe( spep_8, SE_09);
playSe( spep_8+10, SE_10);
playSe( spep_8+60, SE_10);

bakuha = entryEffect( spep_8 , 1599,  0x80, -1,  0,  0,  0);   -- 地球爆発
setEffAlphaKey(spep_8 ,bakuha ,255);
setEffAlphaKey(spep_8+149 ,bakuha ,255);
setEffAlphaKey(spep_8+150 ,bakuha ,0);
setEffScaleKey( spep_8 , bakuha , 1.1, 1.1);
setEffMoveKey(spep_8 ,bakuha ,0,0);


dealDamage(spep_8+40);
setDamage( spep_8+44, 1, 0);  -- ダメージ振動等

entryFade( spep_8+143, 5,  15, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_8+140);

else



------------------------------------------------------
-- 敵側
------------------------------------------------------
spep_1 =0;
setVisibleUI( spep_1, 0);

setDisp(spep_1 ,0,0);
setDisp(spep_1 ,1,0);

entryFade( spep_1, 0,  3, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade 
entryFadeBg( spep_1 , 0, 180, 0, 10, 10, 10, 180);          -- ベース暗め　背景

tame = entryEffect( spep_1 , SP_06, 0x80, -1,  0,  0,  0);   -- 溜めと構え
setEffAlphaKey(spep_1 ,tame,255);
setEffScaleKey( spep_1 , tame, 1, 1);
setEffMoveKey(spep_1 ,tame,0,0);
setEffShake(spep_1+18, tame, 180,10);

entryFade( 17, 2, 0, 2, fcolor_r, fcolor_g, fcolor_b, 180);     -- white fade
entryFade( spep_1+70, 2,  0, 2, fcolor_r, fcolor_g, fcolor_b, 180);     -- white fade 
--[[
speff = entryEffect(  spep_1+90,   1504,  0x80,   -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_1+90,   1505,  0x80,   -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
]]--
ct = entryEffectLife( spep_1+103, 190006, 80, 0x80, -1, 0, 30, 490);    -- ゴゴゴゴ
setEffRotateKey(spep_1+103, ct, 0);
setEffAlphaKey( spep_1+103, ct, 255);
setEffScaleKey( spep_1+103, ct, -0.8, 0.8);
setEffAlphaKey( spep_1+103, ct, 255);
setEffAlphaKey( spep_1+103, ct, 0);

shuchusen1 = entryEffectLife( spep_1+18 , 906, 180, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_1+2 , shuchusen1, 1.5, 1.5);


setEffAlphaKey(spep_1+180 ,tame,255);
setEffAlphaKey(spep_1+182 ,tame,0);
setEffMoveKey(spep_1+180,tame,0,0);

playSe( spep_1+18, SE_01);
playSe( spep_1+90, SE_04);
------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
spep_2 = spep_1+176;

entryFade( spep_2-5, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

playSe(spep_2, SE_05);

speff = entryEffect(  spep_2 ,   1507,   0,  -1,  0,  0,  0);   -- カード

setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


------------------------------------------------------
-- 発射(120F)
------------------------------------------------------
spep_3 = spep_2+90;--176
entryFade( spep_3-8, 5, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_3 , 0, 120, 0, 10, 10, 10, 210);          -- ベース暗め　背景

ryusen3 = entryEffectLife( spep_3 , 921, 110, 0x80,  -1,  0,  0,  0); 
setEffScaleKey( spep_3, ryusen3, 1.5, 1.5);
setEffRotateKey( spep_3, ryusen3, 270);
setEffAlphaKey( spep_3, ryusen3, 255);

shuchusen3 = entryEffectLife( spep_3 , 906, 120, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3 , shuchusen3, 1.5, 1.5);
setEffAlphaKey( spep_3, shuchusen3, 255);

hassya = entryEffect( spep_3 , SP_02, 0x80, -1,  0,  0,  0);   -- 発射
setEffAlphaKey(spep_3 ,hassya, 255);
setEffScaleKey( spep_3 , hassya, -1, 1);
setEffMoveKey(spep_3 ,hassya, 0,0);
setEffShake(spep_3, hassya, 120, 10);

entryFade( spep_3+17, 0, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryFade( spep_3+33, 2, 0, 2, fcolor_r, fcolor_g, fcolor_b, 150);     -- white fade
entryFade( spep_3+49, 2, 0, 2, fcolor_r, fcolor_g, fcolor_b, 150);     -- white fade
entryFade( spep_3+67, 2, 0, 2, fcolor_r, fcolor_g, fcolor_b, 150);     -- white fade
entryFade( spep_3+81, 2, 0, 2, fcolor_r, fcolor_g, fcolor_b, 150);     -- white fade



setEffAlphaKey(spep_3+110 ,hassya,255);
setEffAlphaKey(spep_3+112 ,hassya,0);
setEffMoveKey(spep_3+112 ,hassya,0,0);

Seid =  playSe( spep_3+18, 1033);


------------------------------------------------------
-- 回避
------------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge = spep_3 + 30; --エンドフェイズのフレーム数を置き換える
setEffAlphaKey(SP_dodge ,semaru ,255);
stopSe(SP_dodge-12, Seid,  0);

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setEffAlphaKey(SP_dodge+10 ,semaru ,255);
setEffAlphaKey(SP_dodge+11 ,semaru ,0);

endPhase(SP_dodge+10);

do return end
else end

------------------------------------------------------
-- 回避されなかった場合
------------------------------------------------------

-- 書き文字エントリー
ct3 = entryEffectLife( spep_3+20, 10014, 90, 0x100, -1, 0, -200, -200); -- ズドドッ
setEffShake(spep_3+20, ct3, 100, -20);
setEffScaleKey( spep_3+20, ct3, 3, 3);
setEffRotateKey(spep_3+20, ct3, 10);
setEffMoveKey(spep_3+20 ,ct3,-200,-200);
setEffAlphaKey(spep_3+20, ct3, 255);
setEffAlphaKey(spep_3+120, ct3, 255);
setEffAlphaKey(spep_3+122, ct3, 0);


playSe( spep_3+33, 1033);
playSe( spep_3+49, 1033);
playSe( spep_3+67, 1033);
playSe( spep_3+81, 1033);
playSe( spep_3+100, 1033);

------------------------------------------------------
-- 敵にヒット(60F)
------------------------------------------------------
spep_4 = spep_3+110;--176+90

entryFade( spep_4-5, 5, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_4 , 0, 160, 0, 10, 10, 10, 210);          -- ベース真っ暗　背景


ataru = entryEffect( spep_4 , SP_03, 0x100, -1,  0,  0,  0); 
setEffAlphaKey(spep_4 ,ataru ,255);
setEffScaleKey( spep_4 , ataru , 1, 1);
setEffMoveKey(spep_4 ,ataru ,0,0);
setEffShake(spep_4, ataru , 60,10);

ryusen4 = entryEffectLife( spep_4 , 921, 60, 0x80,  -1,  0,  0,  0); 
setEffScaleKey( spep_4, ryusen4, 1.5, 1.5);
setEffRotateKey( spep_4, ryusen4, 0);
setEffAlphaKey( spep_4, ryusen4, 255);


setDisp(spep_4, 0, 0);
setDisp(spep_4, 1, 1);
changeAnime(spep_4, 1, 104);
setMoveKey( spep_4, 1,  220,  0,   0);
setScaleKey( spep_4,  1,  0.5, 0.5);
setShakeChara( spep_4,  1,  16, 10);

setMoveKey( spep_4+14, 1,  220,  0,   0);
setScaleKey( spep_4+14,  1,  2.0, 2.0);
setRotateKey(spep_4+14, 1, 0);


changeAnime(spep_4+17, 1, 108);
setMoveKey( spep_4+17, 1,  220,  0,   0);
setScaleKey( spep_4+17,  1,  2.0, 2.0);
setRotateKey(spep_4+17, 1, 00);
setShakeChara( spep_4+17,  1,  44, 20);

setMoveKey( spep_4+18, 1,  220,  0,   0);
setScaleKey( spep_4+18,  1,  2.0, 2.0);
setRotateKey(spep_4+18, 1, -20);


setMoveKey( spep_4+20, 1,  220,  0,   0);
setScaleKey( spep_4+20,  1,  2.0, 2.0);
setRotateKey(spep_4+20, 1, 0);

setMoveKey( spep_4+50, 1,  500,  0,   0);
setScaleKey( spep_4+50,  1,  0.5, 0.5);

setMoveKey( spep_4+60, 1,  2000,  0,   0);
setRotateKey(spep_4+60, 1, 0);


setEffAlphaKey(spep_4+60 ,ataru,255);
setEffAlphaKey(spep_4+62 ,ataru,0);
setEffMoveKey(spep_4+62 ,ataru,0,0);

shuchusen4 = entryEffectLife( spep_4 , 906, 60, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_4 , shuchusen4, 1.5, 1.5);


playSe( spep_4+15, SE_09); --1002


--setDisp(spep_5-2, 1, 0);
------------------------------------------------------
-- 大球体投げる(120F)
------------------------------------------------------
spep_5 = spep_4+60;

entryFade( spep_5-5, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_5 , 0, 120, 0, 10, 10, 10, 210);          -- ベース真っ暗　背景

shuchusen5 = entryEffectLife( spep_5 , 906, 100, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_5 , shuchusen5, 1.5, 1.5);

ryusen5 = entryEffectLife( spep_5 , 921, 100, 0x80,  -1,  0,  0,  0); 
setEffScaleKey( spep_5, ryusen5, 1.5, 1.5);
setEffRotateKey( spep_5, ryusen5, 270);
setEffAlphaKey( spep_5, ryusen5, 255);

hassya5 = entryEffectLife( spep_5 , SP_08,  100,  0x00, -1,  0,  0,  0);   -- 発射
setEffAlphaKey(spep_5 ,hassya5,255);
setEffScaleKey( spep_5 , hassya5, 1, 1);
setEffMoveKey(spep_5 ,hassya5,0,0);
setEffShake(spep_5, hassya5, 120,10);


-- 書き文字エントリー
ct5 = entryEffectLife( spep_5+15, 10012, 70, 0, -1, 0, 200, 330); -- ズオッ
setEffShake(spep_5+15, ct5, 32, 20);
setEffRotateKey( spep_5+15, ct5, 30);
setEffAlphaKey(spep_5+15, ct5, 255);
setEffAlphaKey(spep_5+40, ct5, 255);
setEffAlphaKey(spep_5+60, ct5, 0);
setEffScaleKey(spep_5+15, ct5, 1.5, 1.5);
setEffScaleKey(spep_5+22, ct5, 3.0, 3.0);
setEffScaleKey(spep_5+42, ct5, 3.0, 3.0);
setEffScaleKey(spep_5+60, ct5, 8.0, 8.0);


setEffAlphaKey(spep_5+120 ,hassya5,255);
setEffAlphaKey(spep_5+122 ,hassya5,0);
setEffMoveKey(spep_5+122 ,hassya5,0,0);

entryFade( spep_5+68, 2, 0, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

playSe( spep_5+15, 1025);
playSe( spep_5+42, 1066);

------------------------------------------------------
-- 迫る( 60F)
------------------------------------------------------
spep_6 = spep_5+101;
setDisp( spep_6, 0, 0);
setDisp( spep_6-2, 1, 0);
setDisp( spep_6, 1, 1);
changeAnime( spep_6-1, 1, 106);                        -- 気ダメ後ろ
setMoveKey(  spep_6-1,    1,   150,  0,   0);
setScaleKey(  spep_6-1,   1,   1.5,  1.5);
setScaleKey(  spep_6+60,   1,   1.5,  1.5);
setShakeChara( spep_6-1,  1,  55, 10);
setRotateKey(spep_6-1, 1, -20);

entryFade( spep_6-5, 4, 6, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_6 , 0, 40, 0, 10, 10, 10, 255);          -- ベース真っ暗　背景

ryusen6 = entryEffectLife( spep_6 , 921, 60, 0x80,  -1,  0,  0,  0); 
setEffScaleKey( spep_6, ryusen6, 1.5, 1.5);
setEffRotateKey( spep_6, ryusen6, 0);
setEffAlphaKey( spep_6, ryusen6, 255);
--[[
setMoveKey(  spep_6-2,    1,   120,  0,   0);
setMoveKey(  spep_6-1,    1,  400,  -400,   0);
setMoveKey(  spep_6,    1,  400,  -400,   0);
setMoveKey(  spep_6+30,    1,   120,  -270,   0);

setScaleKey(  spep_6-1,   1,   1.2,  1.2);
setScaleKey(  spep_6+75,   1,   1.2,  1.2);
]]--

semaru = entryEffectLife( spep_6 , SP_05,   56,  0x100, -1,  0,  0,  0);   -- マイナスエネルギーパワーボール迫る
setEffAlphaKey(spep_6 ,semaru ,255);
setEffScaleKey( spep_6 , semaru , 1, 1);
setEffMoveKey(spep_6 ,semaru ,0,0);
setEffShake(spep_6, semaru , 40,10);

setEffAlphaKey(spep_6+38 ,semaru,255);
setEffAlphaKey(spep_6+40 ,semaru,0);
setEffMoveKey(spep_6+40 ,semaru,0,0);

shuchusen6 = entryEffectLife( spep_6 , 906, 58, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_5 , shuchusen6, 1.5, 1.5);

-- 書き文字エントリー
ct6 = entryEffectLife( spep_6, 10014, 58, 0, -1, 0, -150, 355); -- ズドドッ
setEffShake(spep_6, ct6, 99, 20);
setEffScaleKey( spep_6, ct6, 3, 3);
setEffRotateKey(spep_6, ct6, 0);
setEffAlphaKey(spep_6, ct6, 255);
setEffAlphaKey(spep_6+40, ct6, 255);
setEffAlphaKey(spep_6+41, ct6, 0);


------------------------------------------------------
-- ギャン(50F)
------------------------------------------------------
spep_7 = spep_6+40;

entryFade( spep_7-5, 5,  5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setDisp( spep_7, 1, 0);
entryFadeBg( spep_7, 0, 60, 0,  30, 30, 30, 180);          -- ベース暗め　背景

playSe( spep_7, 1024);

gyan = entryEffect( spep_7,190002,0x80,-1,0,0,0);
setEffAlphaKey( spep_7,gyan,255);

-- 書き文字エントリー
ct7 = entryEffectLife( spep_7, 10006, 48, 0x100, -1, 0, 0, 400);    -- ギャン

setEffAlphaKey( spep_7, ct7, 255);
setEffScaleKey( spep_7, ct7, 3.0, 3.0);
setEffScaleKey( spep_7+60, ct7, 4.0, 4.0);
setEffAlphaKey( spep_7, ct7, 255);
setEffAlphaKey( spep_7+60, ct7, 0);
setEffShake( spep_7, ct7, 60, 10);
------------------------------------------------------
-- ドーム型 (180F)
------------------------------------------------------
spep_8 = spep_7+50;

entryFade( spep_8-5, 5, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_8 , 0, 100, 0, 10, 10, 10, 255);          -- ベース真っ暗　背景

playSe( spep_8, SE_09);
playSe( spep_8+10, SE_10);
playSe( spep_8+60, SE_10);

bakuha = entryEffect( spep_8 , 1599,  0x80, -1,  0,  0,  0);   -- 地球爆発
setEffAlphaKey(spep_8 ,bakuha ,255);
setEffAlphaKey(spep_8+149 ,bakuha ,255);
setEffAlphaKey(spep_8+150 ,bakuha ,0);
setEffScaleKey( spep_8 , bakuha , 1.1, 1.1);
setEffMoveKey(spep_8 ,bakuha ,0,0);

dealDamage(spep_8+40);
setDamage( spep_8+44, 1, 0);  -- ダメージ振動等

entryFade( spep_8+143, 5,  15, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_8+140);

end
