
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



SP_01 = 150355;
SP_02 = 150356;
SP_03 = 150357;
SP_04 = 150358;
SP_05 = 150359;
SP_06 = 1566;
SP_07 = 1553; --地球消滅紫


multi_frm = 2;

changeAnime( 0, 0, 0);                       -- 立ち
setDisp( 0, 1, 0);

------------------------------------------------------
-- マイナスエネルギーパワーボール発生(100F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

spep_1 =0;
setVisibleUI( spep_1, 0);

setDisp(spep_1 ,0,0);
setDisp(spep_1 ,1,0);

entryFade( spep_1, 0,  3, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade 
entryFadeBg( spep_1 , 0, 100, 0, 10, 10, 10, 180);          -- ベース暗め　背景

shuchusen1 = entryEffectLife( spep_1+2 , 906, 200, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_1+2 , shuchusen1, 1.5, 1.5);

tame = entryEffect( spep_1 , SP_01, 0x80, -1,  0,  0,  0);   -- マイナスエネルギーパワーボール発生
setEffAlphaKey(spep_1 ,tame,255);
setEffScaleKey( spep_1 , tame, 1, 1);
setEffMoveKey(spep_1 ,tame,0,0);
setEffShake(spep_1, tame, 100,10);

--[[
playSe(spep_1+20, 1020);--溜めてる音
playSe(spep_1+30, 1020);
playSe(spep_1+40, 1020);
playSe(spep_1+50, 1020);
playSe(spep_1+60, 1020);
playSe(spep_1+70, 1020);
playSe(spep_1+80, 1020);
playSe(spep_1+90, 1020);
]]
--v4.11調整
SE001 = playSe(spep_1+20, 1020);--溜めてる音
stopSe(spep_1+40,SE001,5);
SE002 = playSe(spep_1+30, 1020);
stopSe(spep_1+50,SE002,5);
SE003 = playSe(spep_1+40, 1020);
stopSe(spep_1+60,SE003,5);
SE004 = playSe(spep_1+50, 1020);
stopSe(spep_1+70,SE004,5);
SE005 = playSe(spep_1+60, 1020);
stopSe(spep_1+80,SE005,5);
SE006 = playSe(spep_1+70, 1020);
stopSe(spep_1+90,SE006,5);
SE007 = playSe(spep_1+80, 1020);
stopSe(spep_1+100,SE007,5);
SE008 = playSe(spep_1+90, 1020);

setEffAlphaKey(spep_1+98 ,tame,255);
setEffAlphaKey(spep_1+100 ,tame,0);
setEffMoveKey(spep_1+100 ,tame,0,0);

------------------------------------------------------
-- 上空でマイナスエネルギーパワーボール巨大化(200F)
------------------------------------------------------
spep_2 = spep_1+100 ;
entryFade( spep_2-5, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_2 , 0, 200, 0, 10, 10, 10, 255);          -- ベース真っ暗　背景

shuchusen2 = entryEffectLife( spep_2 , 906, 200, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_2 , shuchusen2, 1.5, 1.5);

kyodai = entryEffect( spep_2 , SP_02, 0x80, -1,  0,  0,  0);   -- マイナスエネルギーパワーボール巨大化
setEffAlphaKey(spep_2 ,kyodai,255);
setEffScaleKey( spep_2 , kyodai, 1, 1);
setEffMoveKey(spep_2 ,kyodai,0,0);
setEffShake(spep_2, kyodai, 200,10);


playSe(spep_2+40, SE_04);

speff = entryEffect(  spep_2+40,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_2+40,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え


ct = entryEffectLife( spep_2+40, 190006, 80, 0x100, -1, 0, -150, 500);    -- ゴゴゴゴ
setEffRotateKey(spep_2+40, ct, -10);
setEffAlphaKey( spep_2+40, ct, 255);
setEffScaleKey( spep_2+40, ct, 1.0, 1.0);
setEffAlphaKey( spep_2+80, ct, 255);
setEffAlphaKey( spep_2+80, ct, 0);

playSe(spep_2+20, 1034);

playSe(spep_2+40, 1034);

playSe(spep_2+60, 1034);-- 力をもらう音
--playSe(spep_2+70, 1034);
playSe(spep_2+80, 1034);
--playSe(spep_2+90, 1034);
playSe(spep_2+100, 1034);
--playSe(spep_2+110, 1034);
playSe(spep_2+120, 1034);
--playSe(spep_2+130, 1034);
playSe(spep_2+140, 1034);
--playSe(spep_2+150, 1034);
playSe(spep_2+160, 1034);
--playSe(spep_2+170, 1034);
playSe(spep_2+180, 1034);


setEffAlphaKey(spep_2+198 ,kyodai,255);
setEffAlphaKey(spep_2+200 ,kyodai,0);
setEffMoveKey(spep_2+200 ,kyodai,0,0);

------------------------------------------------------
-- マイナスエネルギーパワーボール縮小(160F)
------------------------------------------------------

spep_3 = spep_2+200 ;
entryFade( spep_3-5, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_3 , 0, 160, 0, 10, 10, 10, 255);          -- ベース真っ暗　背景

shuchusen3 = entryEffectLife( spep_3 , 906, 160, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3 , shuchusen3, 1.5, 1.5);


chisai = entryEffect( spep_3 , SP_03, 0x80, -1,  0,  0,  0);   -- マイナスエネルギーパワーボール縮小
setEffAlphaKey(spep_3 ,chisai ,255);
setEffScaleKey( spep_3 , chisai , 1, 1);
setEffMoveKey(spep_3 ,chisai ,0,0);
setEffShake(spep_3, chisai , 160,10);

playSe(spep_3+10, 1018);-- 縮小音1036も候補
--playSe(spep_3+20, 1018);
--playSe(spep_3+30, 1018);
--playSe(spep_3+40, 1018);
--playSe(spep_3+50, 1018);
playSe(spep_3+60, 1018);
--playSe(spep_3+70, 1018);
--playSe(spep_3+80, 1018);
--playSe(spep_3+90, 1018);
--playSe(spep_3+100, 1018);
--playSe(spep_3+110, 1018);
--playSe(spep_3+120, 1018);
--playSe(spep_3+130, 1018);
--playSe(spep_3+140, 1018);

setEffAlphaKey(spep_3+158 ,kyodai,255);
setEffAlphaKey(spep_3+160 ,kyodai,0);
setEffMoveKey(spep_3+160 ,kyodai,0,0);


------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
spep_4 = spep_3+120 ;

entryFade( spep_4-5, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
playSe( spep_4 , SE_05);

speff = entryEffect(  spep_4 ,   1507,   0,  -1,  0,  0,  0);   -- カード

setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


------------------------------------------------------
-- マイナスエネルギーパワーボール発射(120F)
------------------------------------------------------
spep_5 = spep_4+90;
playSe( spep_5, SE_07);
playSe( spep_5+10 , SE_05);

entryFade( spep_5-5, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_5 , 0, 120, 0, 10, 10, 10, 255);          -- ベース真っ暗　背景

shuchusen5 = entryEffectLife( spep_5 , 906, 120, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_5 , shuchusen5, 1.5, 1.5);

hassya = entryEffect( spep_5 , SP_04, 0x00, -1,  0,  0,  0);   -- マイナスエネルギーパワーボール発射
setEffAlphaKey(spep_5 ,hassya ,255);
setEffScaleKey( spep_5 , hassya , 1, 1);
setEffMoveKey(spep_5 ,hassya ,0,0);
setEffShake(spep_5, hassya , 120,10);

spname = entryEffectLife( spep_5, 1508, 120, 0,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え


ryusen5 = entryEffectLife( spep_5, 921, 120, 0x80,  -1,  0,  0,  0); -- 流線
setEffScaleKey( spep_5, ryusen5, 1.5 , 1.5);
setEffAlphaKey( spep_5, ryusen5, 255);
setEffRotateKey( spep_5, ryusen5, 200);



-- 書き文字エントリー
ct = entryEffectLife( spep_5, 10012, 50, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(spep_5, ct, 32, 20);
setEffRotateKey( spep_5, ct, 30);
setEffAlphaKey(spep_5+8, ct, 255);
setEffAlphaKey(spep_5+30, ct, 255);
setEffAlphaKey(spep_5+40, ct, 0);
setEffScaleKey(spep_5, ct, 0.0, 0.0);
setEffScaleKey(spep_5+12, ct, 3.5, 3.5);
setEffScaleKey(spep_5+32, ct, 3.5, 3.5);
setEffScaleKey(spep_5+60, ct, 6.0, 6.0);


setEffAlphaKey(spep_5+118 ,hassya,255);
setEffAlphaKey(spep_5+120 ,hassya,0);
setEffMoveKey(spep_5+120 ,hassya,0,0);


------------------------------------------------------
-- 迫る( 40F)
------------------------------------------------------
spep_6 = spep_5+120;
setDisp( spep_6, 0, 0);
setDisp( spep_6, 1, 1);
changeAnime( spep_6-1, 1, 118);                        -- 気ダメ後ろ

seId =playSe( spep_6+4 , SE_05);

entryFade( spep_6-10, 4, 6, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_6 , 0, 40, 0, 10, 10, 10, 255);          -- ベース真っ暗　背景

ryusen6 = entryEffectLife( spep_6, 921, 40, 0x80,  -1,  0,  0,  0); -- 流線
setEffScaleKey( spep_6, ryusen6, 2, 2);
setEffAlphaKey( spep_6, ryusen6, 255);
setEffRotateKey( spep_6, ryusen6, 230);

setMoveKey(  spep_6-2,    1,   120,  0,   0);
setMoveKey(  spep_6-1,    1,  400,  -400,   0);
setMoveKey(  spep_6,    1,  400,  -400,   0);
setMoveKey(  spep_6+30,    1,   120,  -270,   0);

setScaleKey(  spep_6-1,   1,   1.2,  1.2);
setScaleKey(  spep_6+75,   1,   1.2,  1.2);


semaru = entryEffect( spep_6 , SP_05, 0x80, -1,  0,  0,  0);   -- マイナスエネルギーパワーボール迫る
setEffAlphaKey(spep_6 ,semaru ,255);
setEffScaleKey( spep_6 , semaru , 1, 1);
setEffMoveKey(spep_6 ,semaru ,0,0);
setEffShake(spep_6, semaru , 40,10);

setEffAlphaKey(spep_6+38 ,semaru,255);
setEffAlphaKey(spep_6+40 ,semaru,0);
setEffMoveKey(spep_6+40 ,semaru,0,0);


-- 書き文字エントリー
ct = entryEffectLife( spep_6, 10014, 75, 0, -1, 0, 100, 355); -- ズドドッ
setEffShake(spep_6, ct, 99, 20);
setEffScaleKey( spep_6, ct, 3, 3);
setEffRotateKey(spep_6, ct, 70);
setEffAlphaKey(spep_6, ct, 255);
setEffAlphaKey(spep_6+40, ct, 255);
setEffAlphaKey(spep_6+41, ct, 0);

------------------------------------------------------
-- 回避
------------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge = 639; --エンドフェイズのフレーム数を置き換える
setEffAlphaKey(SP_dodge ,semaru ,255);
stopSe(SP_dodge-12, seId,   4);

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

------------------------------------------------------
-- ギャン(60F)
------------------------------------------------------
spep_7 = spep_6+40;

entryFade( spep_7-5, 5,  5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setDisp( spep_7, 1, 0);
entryFadeBg( spep_7, 0, 60, 0,  30, 30, 30, 180);          -- ベース暗め　背景

playSe( spep_7, 1024);

gyan = entryEffect( spep_7,190001,0x80,-1,0,0,0);
setEffAlphaKey( spep_7,gyan,255);

-- 書き文字エントリー
ct4 = entryEffectLife( spep_7, 10006, 60, 0x100, -1, 0, 0, 400);    -- ギャン

setEffAlphaKey( spep_7, ct4, 255);
setEffScaleKey( spep_7, ct4, 3.0, 3.0);
setEffScaleKey( spep_7+60, ct4, 4.0, 4.0);
setEffAlphaKey( spep_7, ct4, 255);
setEffAlphaKey( spep_7+60, ct4, 0);
setEffShake( spep_7, ct4, 60, 10);
------------------------------------------------------
-- 地球爆発 (110F)
------------------------------------------------------
spep_8 = spep_7+60;

entryFade( spep_7-5, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_8 , 0, 100, 0, 10, 10, 10, 255);          -- ベース真っ暗　背景

playSe( spep_8, SE_09);
playSe( spep_8+10, SE_10);

bakuha = entryEffect( spep_8 , SP_07, 0x80, -1,  0,  0,  0);   -- 地球爆発
setEffAlphaKey(spep_8 ,bakuha ,255);
setEffScaleKey( spep_8 , bakuha , 1, 1);
setEffMoveKey(spep_8 ,bakuha ,0,0);


dealDamage(spep_8+40);
setDamage( spep_8+44, 1, 0);  -- ダメージ振動等


endPhase(spep_8+100);

else



------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- マイナスエネルギーパワーボール発生(100F)
------------------------------------------------------

spep_1 =0;
setVisibleUI( spep_1, 0);

setDisp(spep_1 ,0,0);
setDisp(spep_1 ,1,0);

entryFade( spep_1, 0,  3, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade 
entryFadeBg( spep_1 , 0, 100, 0, 10, 10, 10, 180);          -- ベース暗め　背景

shuchusen1 = entryEffectLife( spep_1+2 , 906, 200, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_1+2 , shuchusen1, 1.5, 1.5);

tame = entryEffect( spep_1 , SP_01, 0x80, -1,  0,  0,  0);   -- マイナスエネルギーパワーボール発生
setEffAlphaKey(spep_1 ,tame,255);
setEffScaleKey( spep_1 , tame, 1, 1);
setEffMoveKey(spep_1 ,tame,0,0);
setEffShake(spep_1, tame, 100,10);

--[[
playSe(spep_1+20, 1020);--溜めてる音
playSe(spep_1+30, 1020);
playSe(spep_1+40, 1020);
playSe(spep_1+50, 1020);
playSe(spep_1+60, 1020);
playSe(spep_1+70, 1020);
playSe(spep_1+80, 1020);
playSe(spep_1+90, 1020);
]]
--v4.11調整
SE001 = playSe(spep_1+20, 1020);--溜めてる音
stopSe(spep_1+40,SE001,5);
SE002 = playSe(spep_1+30, 1020);
stopSe(spep_1+50,SE002,5);
SE003 = playSe(spep_1+40, 1020);
stopSe(spep_1+60,SE003,5);
SE004 = playSe(spep_1+50, 1020);
stopSe(spep_1+70,SE004,5);
SE005 = playSe(spep_1+60, 1020);
stopSe(spep_1+80,SE005,5);
SE006 = playSe(spep_1+70, 1020);
stopSe(spep_1+90,SE006,5);
SE007 = playSe(spep_1+80, 1020);
stopSe(spep_1+100,SE007,5);
SE008 = playSe(spep_1+90, 1020);

setEffAlphaKey(spep_1+98 ,tame,255);
setEffAlphaKey(spep_1+100 ,tame,0);
setEffMoveKey(spep_1+100 ,tame,0,0);

------------------------------------------------------
-- 上空でマイナスエネルギーパワーボール巨大化(200F)
------------------------------------------------------
spep_2 = spep_1+100 ;
entryFade( spep_2-5, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_2 , 0, 200, 0, 10, 10, 10, 255);          -- ベース真っ暗　背景

shuchusen2 = entryEffectLife( spep_2 , 906, 200, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_2 , shuchusen2, 1.5, 1.5);

kyodai = entryEffect( spep_2 , SP_02, 0x80, -1,  0,  0,  0);   -- マイナスエネルギーパワーボール巨大化
setEffAlphaKey(spep_2 ,kyodai,255);
setEffScaleKey( spep_2 , kyodai, 1, 1);
setEffMoveKey(spep_2 ,kyodai,0,0);
setEffShake(spep_2, kyodai, 200,10);


--playSe(spep_2+40, SE_04);

--speff = entryEffect(  spep_2+40,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  spep_2+40,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え


--ct = entryEffectLife( spep_2+40, 190006, 80, 0x100, -1, 0, -150, 500);    -- ゴゴゴゴ
--setEffRotateKey(spep_2+40, ct, -10);
--setEffAlphaKey( spep_2+40, ct, 255);
--setEffScaleKey( spep_2+40, ct, 1.0, 1.0);
--setEffAlphaKey( spep_2+80, ct, 255);
--setEffAlphaKey( spep_2+80, ct, 0);
playSe(spep_2+20, 1034);	
playSe(spep_2+40, 1034);	


playSe(spep_2+60, 1034);-- 力をもらう音
--playSe(spep_2+70, 1034);
playSe(spep_2+80, 1034);
--playSe(spep_2+90, 1034);
playSe(spep_2+100, 1034);
--playSe(spep_2+110, 1034);
playSe(spep_2+120, 1034);
--playSe(spep_2+130, 1034);
playSe(spep_2+140, 1034);
--playSe(spep_2+150, 1034);
playSe(spep_2+160, 1034);
--playSe(spep_2+170, 1034);
playSe(spep_2+180, 1034);


setEffAlphaKey(spep_2+198 ,kyodai,255);
setEffAlphaKey(spep_2+200 ,kyodai,0);
setEffMoveKey(spep_2+200 ,kyodai,0,0);

------------------------------------------------------
-- マイナスエネルギーパワーボール縮小(160F)
------------------------------------------------------

spep_3 = spep_2+200 ;
entryFade( spep_3-5, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_3 , 0, 160, 0, 10, 10, 10, 255);          -- ベース真っ暗　背景

shuchusen3 = entryEffectLife( spep_3 , 906, 160, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3 , shuchusen3, 1.5, 1.5);


chisai = entryEffect( spep_3 , SP_03, 0x80, -1,  0,  0,  0);   -- マイナスエネルギーパワーボール縮小
setEffAlphaKey(spep_3 ,chisai ,255);
setEffScaleKey( spep_3 , chisai , 1, 1);
setEffMoveKey(spep_3 ,chisai ,0,0);
setEffShake(spep_3, chisai , 160,10);

playSe(spep_3+10, 1018);-- 縮小音1036も候補
--playSe(spep_3+20, 1018);
--playSe(spep_3+30, 1018);
--playSe(spep_3+40, 1018);
--playSe(spep_3+50, 1018);
playSe(spep_3+60, 1018);
--playSe(spep_3+70, 1018);
--playSe(spep_3+80, 1018);
--playSe(spep_3+90, 1018);
--playSe(spep_3+100, 1018);
--playSe(spep_3+110, 1018);
--playSe(spep_3+120, 1018);
--playSe(spep_3+130, 1018);
--playSe(spep_3+140, 1018);

setEffAlphaKey(spep_3+158 ,kyodai,255);
setEffAlphaKey(spep_3+160 ,kyodai,0);
setEffMoveKey(spep_3+160 ,kyodai,0,0);


------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
spep_4 = spep_3+120 ;

entryFade( spep_4-5, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
playSe( spep_4 , SE_05);

speff = entryEffect(  spep_4 ,   1507,   0,  -1,  0,  0,  0);   -- カード

setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


------------------------------------------------------
-- マイナスエネルギーパワーボール発射(120F)
------------------------------------------------------
spep_5 = spep_4+90;
playSe( spep_5, SE_07);
playSe( spep_5+10 , SE_05);

entryFade( spep_5-5, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_5 , 0, 120, 0, 10, 10, 10, 255);          -- ベース真っ暗　背景

shuchusen5 = entryEffectLife( spep_5 , 906, 120, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_5 , shuchusen5, 1.5, 1.5);

hassya = entryEffect( spep_5 , SP_04, 0x00, -1,  0,  0,  0);   -- マイナスエネルギーパワーボール発射
setEffAlphaKey(spep_5 ,hassya ,255);
setEffScaleKey( spep_5 , hassya , 1, 1);
setEffMoveKey(spep_5 ,hassya ,0,0);
setEffShake(spep_5, hassya , 120,10);

spname = entryEffectLife( spep_5, 1508, 120, 0,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え


ryusen5 = entryEffectLife( spep_5, 921, 120, 0x80,  -1,  0,  0,  0); -- 流線
setEffScaleKey( spep_5, ryusen5, 1.5 , 1.5);
setEffAlphaKey( spep_5, ryusen5, 255);
setEffRotateKey( spep_5, ryusen5, 200);



-- 書き文字エントリー
ct = entryEffectLife( spep_5, 10012, 50, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(spep_5, ct, 32, 20);
setEffRotateKey( spep_5, ct, 30);
setEffAlphaKey(spep_5+8, ct, 255);
setEffAlphaKey(spep_5+30, ct, 255);
setEffAlphaKey(spep_5+40, ct, 0);
setEffScaleKey(spep_5, ct, 0.0, 0.0);
setEffScaleKey(spep_5+12, ct, 3.5, 3.5);
setEffScaleKey(spep_5+32, ct, 3.5, 3.5);
setEffScaleKey(spep_5+60, ct, 6.0, 6.0);


setEffAlphaKey(spep_5+118 ,hassya,255);
setEffAlphaKey(spep_5+120 ,hassya,0);
setEffMoveKey(spep_5+120 ,hassya,0,0);


------------------------------------------------------
-- 迫る( 40F)
------------------------------------------------------
spep_6 = spep_5+120;
setDisp( spep_6, 0, 0);
setDisp( spep_6, 1, 1);
changeAnime( spep_6-1, 1, 118);                        -- 気ダメ後ろ

seId =playSe( spep_6+4 , SE_05);

entryFade( spep_6-10, 4, 6, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_6 , 0, 40, 0, 10, 10, 10, 255);          -- ベース真っ暗　背景

ryusen6 = entryEffectLife( spep_6, 921, 40, 0x80,  -1,  0,  0,  0); -- 流線
setEffScaleKey( spep_6, ryusen6, 2, 2);
setEffAlphaKey( spep_6, ryusen6, 255);
setEffRotateKey( spep_6, ryusen6, 230);

setMoveKey(  spep_6-2,    1,   120,  0,   0);
setMoveKey(  spep_6-1,    1,  400,  -400,   0);
setMoveKey(  spep_6,    1,  400,  -400,   0);
setMoveKey(  spep_6+30,    1,   120,  -270,   0);

setScaleKey(  spep_6-1,   1,   1.2,  1.2);
setScaleKey(  spep_6+75,   1,   1.2,  1.2);


semaru = entryEffect( spep_6 , SP_05, 0x80, -1,  0,  0,  0);   -- マイナスエネルギーパワーボール迫る
setEffAlphaKey(spep_6 ,semaru ,255);
setEffScaleKey( spep_6 , semaru , 1, 1);
setEffMoveKey(spep_6 ,semaru ,0,0);
setEffShake(spep_6, semaru , 40,10);

setEffAlphaKey(spep_6+38 ,semaru,255);
setEffAlphaKey(spep_6+40 ,semaru,0);
setEffMoveKey(spep_6+40 ,semaru,0,0);


-- 書き文字エントリー
ct = entryEffectLife( spep_6, 10014, 75, 0, -1, 0, 100, 355); -- ズドドッ
setEffShake(spep_6, ct, 99, 20);
setEffScaleKey( spep_6, ct, 3, 3);
--setEffRotateKey(spep_6, ct, 70);
setEffRotateKey(spep_6, ct, 0);
setEffAlphaKey(spep_6, ct, 255);
setEffAlphaKey(spep_6+40, ct, 255);
setEffAlphaKey(spep_6+41, ct, 0);

------------------------------------------------------
-- 回避
------------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge = 639; --エンドフェイズのフレーム数を置き換える
--SP_dodge = 684; --エンドフェイズのフレーム数を置き換える
--stopSe(SP_dodge-12, seId2,   4);
stopSe(SP_dodge-12, seId,   4);

playSe( SP_dodge-12, 1042);

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

------------------------------------------------------

------------------------------------------------------
-- ギャン(60F)
------------------------------------------------------
spep_7 = spep_6+40;

entryFade( spep_7-5, 5,  5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setDisp( spep_7, 1, 0);
entryFadeBg( spep_7, 0, 60, 0,  30, 30, 30, 180);          -- ベース暗め　背景

playSe( spep_7, 1024);

gyan = entryEffect( spep_7,190001,0x80,-1,0,0,0);
setEffAlphaKey( spep_7,gyan,255);

-- 書き文字エントリー
ct4 = entryEffectLife( spep_7, 10006, 60, 0x100, -1, 0, 0, 400);    -- ギャン

setEffAlphaKey( spep_7, ct4, 255);
setEffScaleKey( spep_7, ct4, 3.0, 3.0);
setEffScaleKey( spep_7+60, ct4, 4.0, 4.0);
setEffAlphaKey( spep_7, ct4, 255);
setEffAlphaKey( spep_7+60, ct4, 0);
setEffShake( spep_7, ct4, 60, 10);
------------------------------------------------------
-- 地球爆発 (110F)
------------------------------------------------------
spep_8 = spep_7+60;

entryFade( spep_7-5, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_8 , 0, 100, 0, 10, 10, 10, 255);          -- ベース真っ暗　背景

playSe( spep_8, SE_09);
playSe( spep_8+10, SE_10);

bakuha = entryEffect( spep_8 , SP_07, 0x80, -1,  0,  0,  0);   -- 地球爆発
setEffAlphaKey(spep_8 ,bakuha ,255);
setEffScaleKey( spep_8 , bakuha , 1, 1);
setEffMoveKey(spep_8 ,bakuha ,0,0);


dealDamage(spep_8+40);
setDamage( spep_8+44, 1, 0);  -- ダメージ振動等


endPhase(spep_8+100);

end
