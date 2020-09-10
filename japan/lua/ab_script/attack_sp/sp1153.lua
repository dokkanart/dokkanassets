--sp1153 超サイヤ人2カリフラ_クラッシュキャノン

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
SP_01 = 151350;--タメ
SP_02 = 151351;--打撃
SP_03 = 151352;--構え
SP_04 = 151353;--発射
SP_05 = 151354;--被弾手前
SP_06 = 151355;--被弾奥



--敵側は味方側にeをつけてます
SP_01e = 151356;--タメ
SP_02e = 151357;--打撃
SP_03e = 151358;--構え
SP_04e = 151359;--発射
SP_05e = 151354;--被弾手前
SP_06e = 151355;--被弾奥


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
-- 気溜め(120F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

spep_0 = 0;

entryFadeBg( spep_0+20, 0, 100, 0, 0, 0, 0, 210);  -- 黒　背景　


kidame = entryEffect(  spep_0,   SP_01,   0,  -1,  0,  0,  0);   --気溜め
setEffScaleKey( spep_0, kidame, 1, 1);
setEffAlphaKey( spep_0, kidame, 255);
setEffShake(spep_0, kidame, 140, 5);

-- 書き文字エントリー
ctZuo = entryEffectLife( spep_0+20, 10013, 90, 0, -1, 0, 0, 350); -- ズオッ
setEffRotateKey(spep_0+20, ctZuo, 0);
setEffShake(spep_0+21, ctZuo, 90, 25);
setEffAlphaKey(spep_0+20, ctZuo, 255);
setEffAlphaKey(spep_0+90, ctZuo, 255);
setEffAlphaKey(spep_0+100, ctZuo, 0);
setEffScaleKey(spep_0+10, ctZuo, 0.0, 0.0);
setEffScaleKey(spep_0+14, ctZuo, 2.0, 2.0);
setEffScaleKey(spep_0+90, ctZuo, 2.0, 2.0);
setEffScaleKey(spep_0+100, ctZuo, 6.0, 6.0);

shuchusen = entryEffectLife( spep_0+20, 906, 100, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_0+20, shuchusen, 1.5, 1.5);
setEffAlphaKey( spep_0+20, shuchusen, 255);

entryFade( spep_0+18, 1, 2, 1, fcolor_r, fcolor_g, fcolor_b, 210);     -- white fade
entryFade( spep_0+115, 3, 4, 2, fcolor_r, fcolor_g, fcolor_b, 210);     -- white fade

playSe( spep_0+20, SE_01);
------------------------------------------------------
-- ラッシュ(160F)
------------------------------------------------------
spep_1 = spep_0+120;

entryFade( spep_1-8, 4, 6, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_1+24, 1, 1, 3, fcolor_r, fcolor_g, fcolor_b, 200);     -- white fade
entryFade( spep_1+110, 1, 1, 3, fcolor_r, fcolor_g, fcolor_b, 180);     -- white fade
entryFadeBg( spep_1, 0, 160, 0, 0, 0, 0, 210);          -- やや暗い　背景

yokosen1 = entryEffectLife( spep_1, 914, 160, 0x80,  -1, 0,  0,  0);   -- 横線
setEffScaleKey( spep_1, yokosen1, 1.6, 1.6);
setEffAlphaKey( spep_1, yokosen1, 255);
setEffRotateKey(spep_1, yokosen1, 0);
setEffMoveKey( spep_1, yokosen1, 0, 0, 0);


touzyo = entryEffect(  spep_1,   SP_02,   0,  -1,  0,  0,  0);   --ラッシュ
setEffScaleKey( spep_1, touzyo, 1, 1);
setEffAlphaKey( spep_1, touzyo, 255);
setEffShake(spep_1, touzyo, 140, 10); 


setDisp( spep_1, 1, 1);--敵表示
setRotateKey(   spep_1,   1, 0);
setRotateKey(   spep_1+24,   1, 0);
setRotateKey(   spep_1+25,   1, 0);
setRotateKey(   spep_1+89,   1, 0);
setRotateKey(   spep_1+90,   1, -30);
setRotateKey(   spep_1+109,   1, -30);
setRotateKey(   spep_1+110,   1, 0);
setRotateKey(   spep_1+150,   1, 0);

setMoveKey(   spep_1,   1,    -500,  0,  0);
setMoveKey(   spep_1+15,   1,    0, 0,  0);
setMoveKey(   spep_1+79,   1,    90, 0,  0);
setMoveKey(   spep_1+109,   1,    120,  100,  0);
setMoveKey(   spep_1+138,   1,    720,  100,  0);
--setMoveKey(   spep_1+150,   1,    120,  700,  0);
setMoveKey(   spep_1+150,   1,    720,  100,  0);

setScaleKey(   spep_1,   1, 1.5, 1.5);
setScaleKey(   spep_1+150,   1, 1.5, 1.5);
--shakeは回転とか途中に入っても挙動しなくなるので短く切りましょう
setShakeChara( spep_1+34, 1, 115 , 10 );

changeAnime( spep_1, 1, 100);  --待機
changeAnime( spep_1+25, 1, 108);  --ダメージ（吹き飛び） 
changeAnime( spep_1+90, 1, 106);  --ダメージ
changeAnime( spep_1+110, 1, 108);  --ダメージ（吹き飛び） 
setDisp( spep_1+150, 1, 0);




-- 書き文字エントリー
ctDokgaga = entryEffectLife( spep_1+24, 10017, 68, 0, -1, 0, 50, 250); -- ドガガガッ
setEffRotateKey(spep_1+24, ctDokgaga, 20);
setEffShake(spep_1+24, ctDokgaga, 72, 5);
setEffAlphaKey(spep_1+24, ctDokgaga, 255);
setEffScaleKey(spep_1+24, ctDokgaga, 1.8, 1.8);
setEffScaleKey(spep_1+36, ctDokgaga, 1.8, 1.8);
setEffScaleKey(spep_1+37, ctDokgaga, 2.5, 2.5);
setEffScaleKey(spep_1+40, ctDokgaga, 2.5, 2.5);
setEffScaleKey(spep_1+41, ctDokgaga, 2.3, 2.3);
setEffScaleKey(spep_1+80, ctDokgaga, 2.3, 2.3);

ctBaki = entryEffectLife( spep_1+115, 10020, 22, 0, -1, 0, -50, 400); -- バキッ
setEffRotateKey(spep_1+115, ctBaki, -10);
setEffRotateKey(spep_1+125, ctBaki, -10);
setEffRotateKey(spep_1+126, ctBaki, 0);
setEffRotateKey(spep_1+127, ctBaki, 0);
setEffRotateKey(spep_1+128, ctBaki, -10);
setEffRotateKey(spep_1+129, ctBaki, -10);
setEffRotateKey(spep_1+130, ctBaki, 0);
setEffRotateKey(spep_1+131, ctBaki, 0);
setEffRotateKey(spep_1+134, ctBaki, -10);
setEffShake(spep_1+116, ctBaki, 72, 5);
setEffAlphaKey(spep_1+115, ctBaki, 255);
setEffAlphaKey(spep_1+125, ctBaki, 255);
setEffAlphaKey(spep_1+135, ctBaki, 0);
setEffScaleKey(spep_1+115, ctBaki, 1.8, 1.8);
setEffScaleKey(spep_1+125, ctBaki, 1.9, 1.9);
setEffScaleKey(spep_1+126, ctBaki, 3.5, 3.5);
setEffScaleKey(spep_1+127, ctBaki, 2.4, 2.4);
setEffScaleKey(spep_1+135, ctBaki, 2.4, 2.4);


shuchusen1 = entryEffectLife( spep_1, 906, 160, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_1, shuchusen1, 1.7, 1.7);
setEffAlphaKey( spep_1, shuchusen1, 255);

--[[
playSe( spep_1+33, 1009);
playSe( spep_1+43, 1009);
playSe( spep_1+50, 1010);
playSe( spep_1+60, 1009);
playSe( spep_1+67, 1009);
playSe( spep_1+75, 1009);
playSe( spep_1+80, 1010);
playSe( spep_1+85, 1010);
playSe( spep_1+93, 1010);
playSe( spep_1+110, 1010);
]]
SE001 = playSe( spep_1+33, 1009);
stopSe(spep_1+48,SE001,10);
SE002 = playSe( spep_1+43, 1009);
stopSe(spep_1+55,SE002,10);
SE003 = playSe( spep_1+50, 1010);
stopSe(spep_1+65,SE003,10);
SE004 = playSe( spep_1+60, 1009);
stopSe(spep_1+73,SE004,10);
SE005 = playSe( spep_1+67, 1009);
stopSe(spep_1+80,SE005,10);
SE006 = playSe( spep_1+75, 1009);
stopSe(spep_1+85,SE006,10);
SE007 = playSe( spep_1+80, 1010);
stopSe(spep_1+90,SE007,10);
SE008 = playSe( spep_1+85, 1010);
stopSe(spep_1+110,SE008,10);
--SE009 = playSe( spep_1+93, 1010);
--stopSe(spep_1+115,SE009,10);
SE010 = playSe( spep_1+110, 1010);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 134; --エンドフェイズのフレーム数を置き換える

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
-- 地面ドン(120F)
------------------------------------------------------
spep_2 = spep_1+160;

entryFade( spep_2-8, 4, 8, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_2, 0, 120, 0, 0, 0, 0, 210);          -- ベース黒　背景


touzyo2 = entryEffect(  spep_2,   SP_03,   0,  -1,  0,  0,  0);   --トランクス
setEffScaleKey( spep_2, touzyo2, 1.0, 1.0);
setEffAlphaKey( spep_2, touzyo2, 255);
setEffShake(spep_2, touzyo2, 110, 10); 
--setEffShake(spep_2+24, touzyo2, 116, 10); 

shuchusen2 = entryEffectLife( spep_2, 906, 180, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_2, shuchusen2, 1.5, 1.5);
setEffAlphaKey( spep_2, shuchusen2, 255);

speff = entryEffect(  spep_2,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_2,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

-- ** 書き文字エントリ ** --
gogogo = entryEffectLife( spep_2+10, 190006, 76, 0x100, -1, 0, 200, 500); -- ゴゴゴゴゴ
setEffScaleKey( spep_2+10, gogogo, 0.8, 0.8);
setEffAlphaKey( spep_2+10, gogogo, 255);
setEffRotateKey( spep_2+10, gogogo, 20);

playSe( spep_2, SE_04);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
spep_3 = spep_2+120;
entryFade( spep_3-8, 4, 6, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--[[
shuchusenct3 = entryEffectLife( spep_3, 906, 90, 0x100,  -1, 0,  0,  0);   -- 集中線 
setEffScaleKey( spep_3, shuchusenct3, 1.5, 1.5);
setEffAlphaKey( spep_3, shuchusenct3, 255);


playSe( spep_3+4, SE_05);

speff = entryEffect(  spep_3,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え
]]--
-- ** 集中線 ** --
shuchusenz = entryEffectLife( spep_3 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusenz, 90, 20 );

setEffMoveKey( spep_3 + 0, shuchusenz, 0, 0 , 0 );
setEffMoveKey( spep_3 + 90, shuchusenz, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusenz, 1.6, 1.6 );
setEffScaleKey( spep_3 + 90, shuchusenz, 1.6, 1.6 );

setEffRotateKey( spep_3 + 0, shuchusenz, 0 );
setEffRotateKey( spep_3 + 90, shuchusenz, 0 );

setEffAlphaKey( spep_3 + 0, shuchusenz, 255 );
setEffAlphaKey( spep_3 + 90, shuchusenz, 255 );

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

------------------------------------------------------
-- 発射(120F)
------------------------------------------------------
spep_4 = spep_3+90;

entryFade( spep_4-8, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_4+15, 1, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_4, 0, 120, 0, 0, 0, 0, 210);          -- 暗め　背景

zimenusiro4 = entryEffect(  spep_4,   SP_04,   0x100,  -1,  0,  0,  0);   --床
setEffScaleKey( spep_4, zimenusiro4, 1.0, 1.0);
setEffAlphaKey( spep_4, zimenusiro4, 255);


shuchusenct4 = entryEffectLife( spep_4, 906, 120, 0x100,  -1, 0,  0,  0);   -- 集中線 
setEffScaleKey( spep_4, shuchusenct4, 1.5, 1.5);
setEffAlphaKey( spep_4, shuchusenct4, 255);


-- 書き文字エントリー
ctZuo4 = entryEffectLife( spep_4+15, 10012, 50, 0x100, -1, 0, 0, 350); -- ズオッ
setEffShake(spep_4+15, ctZuo4, 92, 5);
setEffRotateKey(spep_4+15, ctZuo4, 31);
setEffShake(spep_4+15, ctZuo4, 71, 30);
setEffAlphaKey(spep_4+15, ctZuo4, 255);
setEffAlphaKey(spep_4+30, ctZuo4, 255);
setEffAlphaKey(spep_4+52, ctZuo4, 0);
setEffScaleKey(spep_4+15, ctZuo4, 0.0, 0.0);
setEffScaleKey(spep_4+20, ctZuo4, 2.8, 2.8);
setEffScaleKey(spep_4+45, ctZuo4, 2.8, 2.8);
setEffScaleKey(spep_4+62, ctZuo4, 8.0, 8.0);

--[[
playSe( spep_4+15, SE_06); --506

playSe( spep_4+22, SE_06);
playSe( spep_4+32, SE_06);
playSe( spep_4+42, SE_06);
playSe( spep_4+52, SE_06);
playSe( spep_4+65, SE_06);
playSe( spep_4+80, SE_06);
playSe( spep_4+90, SE_06);
]]
--v4.11調整
SE011 = playSe( spep_4+15, SE_06); --506
stopSe( spep_4+32, SE011,5);
SE012 = playSe( spep_4+22, SE_06);
stopSe( spep_4+42, SE012,5);
SE013 = playSe( spep_4+32, SE_06);
stopSe( spep_4+52, SE013,5);
SE014 = playSe( spep_4+42, SE_06);
stopSe( spep_4+62, SE014,5);
SE015 = playSe( spep_4+52, SE_06);
stopSe( spep_4+75, SE015,5);
SE016 = playSe( spep_4+65, SE_06);
stopSe( spep_4+90, SE016,5);
SE017 = playSe( spep_4+80, SE_06);
stopSe( spep_4+100, SE017,5);
SE018 = playSe( spep_4+90, SE_06);



------------------------------------------------------
-- 当たる(100F)
------------------------------------------------------
spep_5 = spep_4+120;

entryFade( spep_5-8, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_5, 0, 100, 0, 0, 0, 0, 210);          -- 暗め　背景

zimenusiro5 = entryEffect(  spep_5,   SP_05,   0x100,  -1,  0,  0,  0);   --床
setEffScaleKey( spep_5, zimenusiro5, 1.0, 1.0);
setEffAlphaKey( spep_5, zimenusiro5, 255);

setDisp( spep_5, 1, 1);
changeAnime( spep_5, 1, 5);
setMoveKey(  spep_5+1, 1,  0,  0,  -100);
--setMoveKey(  spep_5+20, 1,  0,  0,  -60);
--setMoveKey(  spep_5+40, 1,  0,  0,  -20);
--setMoveKey(  spep_5+60, 1,  0,  0,  10);
setMoveKey(  spep_5+99, 1,  0,  0,  80);

setShakeChara( spep_5+5, 1, 30, 25);
setShakeChara( spep_5+45, 1, 40, 15);

--[[
playSe( spep_5+20, 1011);
playSe( spep_5+40, 1011);
--playSe( spep_5+30, 1008);
playSe( spep_5+60, 1011);
playSe( spep_5+80, 1011);
]]
--v4.11調整
SE021 = playSe( spep_5+20, 1011);
stopSe(spep_5+55, SE021,5);
SE022 = playSe( spep_5+40, 1011);
stopSe(spep_5+75, SE022,5);
--playSe( spep_5+30, 1008);
SE023 = playSe( spep_5+60, 1011);
stopSe(spep_5+95, SE023,5);
SE024 = playSe( spep_5+80, 1011);


setDisp( spep_5+99, 1, 0);

zimenusiro5 = entryEffect(  spep_5,   SP_06,   0x80,  -1,  0,  0,  0);   --床
setEffScaleKey( spep_5, zimenusiro5, 1.0, 1.0);
setEffAlphaKey( spep_5, zimenusiro5, 255);

shuchusenct5 = entryEffectLife( spep_5, 906, 100, 0x100,  -1, 0,  0,  0);   -- 集中線 
setEffScaleKey( spep_5, shuchusenct5, 1.5, 1.5);
setEffAlphaKey( spep_5, shuchusenct5, 255);



--playSe( spep_5+15, SE_07);

------------------------------------------------------
-- 爆発(156F)
------------------------------------------------------
spep_6 = spep_5+100;

entryFade( spep_6-6, 4, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_6, 0, 160, 0, 0, 0, 0, 255);          -- ベース暗め　背景


bom = entryEffect(  spep_6,   1672,   0,  -1,  0,  0,  0);   --爆発
setEffScaleKey( spep_6, bom, 1.0, 1.0);
setEffAlphaKey( spep_6, bom, 255);


-- ダメージ表示
dealDamage( spep_6+16);
--entryFade( spep_6+136, 9, 10, 1, 8, 8, 8, 255); -- black fade
endPhase( spep_6+148);

playSe( spep_6+6, SE_10);

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 気溜め(120F)
------------------------------------------------------

spep_0 = 0;

entryFadeBg( spep_0+20, 0, 100, 0, 0, 0, 0, 210);  -- 黒　背景　


kidame = entryEffect(  spep_0,   SP_01e,   0,  -1,  0,  0,  0);   --気溜め
setEffScaleKey( spep_0, kidame, 1, 1);
setEffAlphaKey( spep_0, kidame, 255);
setEffShake(spep_0, kidame, 140, 5);

-- 書き文字エントリー
ctZuo = entryEffectLife( spep_0+20, 10013, 90, 0, -1, 0, 0, 350); -- ズオッ
setEffRotateKey(spep_0+20, ctZuo, 0);
setEffShake(spep_0+21, ctZuo, 90, 25);
setEffAlphaKey(spep_0+20, ctZuo, 255);
setEffAlphaKey(spep_0+90, ctZuo, 255);
setEffAlphaKey(spep_0+100, ctZuo, 0);
setEffScaleKey(spep_0+10, ctZuo, 0.0, 0.0);
setEffScaleKey(spep_0+14, ctZuo, 2.0, 2.0);
setEffScaleKey(spep_0+90, ctZuo, 2.0, 2.0);
setEffScaleKey(spep_0+100, ctZuo, 6.0, 6.0);

shuchusen = entryEffectLife( spep_0+20, 906, 100, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_0+20, shuchusen, 1.5, 1.5);
setEffAlphaKey( spep_0+20, shuchusen, 255);

entryFade( spep_0+18, 1, 2, 1, fcolor_r, fcolor_g, fcolor_b, 210);     -- white fade
entryFade( spep_0+115, 3, 4, 2, fcolor_r, fcolor_g, fcolor_b, 210);     -- white fade

playSe( spep_0+20, SE_01);
------------------------------------------------------
-- ラッシュ(160F)
------------------------------------------------------
spep_1 = spep_0+120;

entryFade( spep_1-8, 4, 6, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_1+24, 1, 1, 3, fcolor_r, fcolor_g, fcolor_b, 200);     -- white fade
entryFade( spep_1+110, 1, 1, 3, fcolor_r, fcolor_g, fcolor_b, 180);     -- white fade
entryFadeBg( spep_1, 0, 160, 0, 0, 0, 0, 210);          -- やや暗い　背景

yokosen1 = entryEffectLife( spep_1, 914, 160, 0x80,  -1, 0,  0,  0);   -- 横線
setEffScaleKey( spep_1, yokosen1, 1.6, 1.6);
setEffAlphaKey( spep_1, yokosen1, 255);
setEffRotateKey(spep_1, yokosen1, 0);
setEffMoveKey( spep_1, yokosen1, 0, 0, 0);


touzyo = entryEffect(  spep_1,   SP_02e,   0,  -1,  0,  0,  0);   --ラッシュ
setEffScaleKey( spep_1, touzyo, 1, 1);
setEffAlphaKey( spep_1, touzyo, 255);
setEffShake(spep_1, touzyo, 140, 10); 


setDisp( spep_1, 1, 1);--敵表示
setRotateKey(   spep_1,   1, 0);
setRotateKey(   spep_1+24,   1, 0);
setRotateKey(   spep_1+25,   1, 0);
setRotateKey(   spep_1+89,   1, 0);
setRotateKey(   spep_1+90,   1, -30);
setRotateKey(   spep_1+109,   1, -30);
setRotateKey(   spep_1+110,   1, 0);
setRotateKey(   spep_1+150,   1, 0);

setMoveKey(   spep_1,   1,    -500,  0,  0);
setMoveKey(   spep_1+15,   1,    0, 0,  0);
setMoveKey(   spep_1+79,   1,    90, 0,  0);
setMoveKey(   spep_1+109,   1,    120,  100,  0);
setMoveKey(   spep_1+138,   1,    720,  100,  0);
--setMoveKey(   spep_1+150,   1,    120,  700,  0);
setMoveKey(   spep_1+150,   1,    720,  100,  0);

setScaleKey(   spep_1,   1, 1.5, 1.5);
setScaleKey(   spep_1+150,   1, 1.5, 1.5);
--shakeは回転とか途中に入っても挙動しなくなるので短く切りましょう
setShakeChara( spep_1+34, 1, 115 , 10 );

changeAnime( spep_1, 1, 100);  --待機
changeAnime( spep_1+25, 1, 108);  --ダメージ（吹き飛び） 
changeAnime( spep_1+90, 1, 106);  --ダメージ
changeAnime( spep_1+110, 1, 108);  --ダメージ（吹き飛び） 
setDisp( spep_1+150, 1, 0);




-- 書き文字エントリー
ctDokgaga = entryEffectLife( spep_1+24, 10017, 68, 0, -1, 0, 50, 250); -- ドガガガッ
setEffRotateKey(spep_1+24, ctDokgaga, 20);
setEffShake(spep_1+24, ctDokgaga, 72, 5);
setEffAlphaKey(spep_1+24, ctDokgaga, 255);
setEffScaleKey(spep_1+24, ctDokgaga, 1.8, 1.8);
setEffScaleKey(spep_1+36, ctDokgaga, 1.8, 1.8);
setEffScaleKey(spep_1+37, ctDokgaga, 2.5, 2.5);
setEffScaleKey(spep_1+40, ctDokgaga, 2.5, 2.5);
setEffScaleKey(spep_1+41, ctDokgaga, 2.3, 2.3);
setEffScaleKey(spep_1+80, ctDokgaga, 2.3, 2.3);

ctBaki = entryEffectLife( spep_1+115, 10020, 22, 0, -1, 0, -50, 400); -- バキッ
setEffRotateKey(spep_1+115, ctBaki, -10);
setEffRotateKey(spep_1+125, ctBaki, -10);
setEffRotateKey(spep_1+126, ctBaki, 0);
setEffRotateKey(spep_1+127, ctBaki, 0);
setEffRotateKey(spep_1+128, ctBaki, -10);
setEffRotateKey(spep_1+129, ctBaki, -10);
setEffRotateKey(spep_1+130, ctBaki, 0);
setEffRotateKey(spep_1+131, ctBaki, 0);
setEffRotateKey(spep_1+134, ctBaki, -10);
setEffShake(spep_1+116, ctBaki, 72, 5);
setEffAlphaKey(spep_1+115, ctBaki, 255);
setEffAlphaKey(spep_1+125, ctBaki, 255);
setEffAlphaKey(spep_1+135, ctBaki, 0);
setEffScaleKey(spep_1+115, ctBaki, 1.8, 1.8);
setEffScaleKey(spep_1+125, ctBaki, 1.9, 1.9);
setEffScaleKey(spep_1+126, ctBaki, 3.5, 3.5);
setEffScaleKey(spep_1+127, ctBaki, 2.4, 2.4);
setEffScaleKey(spep_1+135, ctBaki, 2.4, 2.4);


shuchusen1 = entryEffectLife( spep_1, 906, 160, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_1, shuchusen1, 1.7, 1.7);
setEffAlphaKey( spep_1, shuchusen1, 255);


--[[
playSe( spep_1+33, 1009);
playSe( spep_1+43, 1009);
playSe( spep_1+50, 1010);
playSe( spep_1+60, 1009);
playSe( spep_1+67, 1009);
playSe( spep_1+75, 1009);
playSe( spep_1+80, 1010);
playSe( spep_1+85, 1010);
playSe( spep_1+93, 1010);
playSe( spep_1+110, 1010);
]]
SE001 = playSe( spep_1+33, 1009);
stopSe(spep_1+48,SE001,10);
SE002 = playSe( spep_1+43, 1009);
stopSe(spep_1+55,SE002,10);
SE003 = playSe( spep_1+50, 1010);
stopSe(spep_1+65,SE003,10);
SE004 = playSe( spep_1+60, 1009);
stopSe(spep_1+73,SE004,10);
SE005 = playSe( spep_1+67, 1009);
stopSe(spep_1+80,SE005,10);
SE006 = playSe( spep_1+75, 1009);
stopSe(spep_1+85,SE006,10);
SE007 = playSe( spep_1+80, 1010);
stopSe(spep_1+90,SE007,10);
SE008 = playSe( spep_1+85, 1010);
stopSe(spep_1+110,SE008,10);
--SE009 = playSe( spep_1+93, 1010);
--stopSe(spep_1+115,SE009,10);
SE010 = playSe( spep_1+110, 1010);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 134; --エンドフェイズのフレーム数を置き換える

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
-- 地面ドン(120F)
------------------------------------------------------
spep_2 = spep_1+160;

entryFade( spep_2-8, 4, 8, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_2, 0, 120, 0, 0, 0, 0, 210);          -- ベース黒　背景


touzyo2 = entryEffect(  spep_2,   SP_03,   0,  -1,  0,  0,  0);   --トランクス
setEffScaleKey( spep_2, touzyo2, -1.0, 1.0);
setEffAlphaKey( spep_2, touzyo2, 255);
setEffShake(spep_2, touzyo2, 110, 10); 
--setEffShake(spep_2+24, touzyo2, 116, 10); 

shuchusen2 = entryEffectLife( spep_2, 906, 180, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_2, shuchusen2, 1.5, 1.5);
setEffAlphaKey( spep_2, shuchusen2, 255);
--[[
speff = entryEffect(  spep_2,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_2,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
]]--
-- ** 書き文字エントリ ** --
gogogo = entryEffectLife( spep_2+10, 190006, 76, 0x100, -1, 0, 200, 500); -- ゴゴゴゴゴ
setEffScaleKey( spep_2+10, gogogo, -0.8, 0.8);
setEffAlphaKey( spep_2+10, gogogo, 255);
setEffRotateKey( spep_2+10, gogogo, 20);

playSe( spep_2, SE_04);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
spep_3 = spep_2+120;
entryFade( spep_3-8, 4, 6, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--[[
shuchusenct3 = entryEffectLife( spep_3, 906, 90, 0x100,  -1, 0,  0,  0);   -- 集中線 
setEffScaleKey( spep_3, shuchusenct3, 1.5, 1.5);
setEffAlphaKey( spep_3, shuchusenct3, 255);


playSe( spep_3+4, SE_05);

speff = entryEffect(  spep_3,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え
]]
-- ** 集中線 ** --
shuchusenz = entryEffectLife( spep_3 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusenz, 90, 20 );

setEffMoveKey( spep_3 + 0, shuchusenz, 0, 0 , 0 );
setEffMoveKey( spep_3 + 90, shuchusenz, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusenz, 1.6, 1.6 );
setEffScaleKey( spep_3 + 90, shuchusenz, 1.6, 1.6 );

setEffRotateKey( spep_3 + 0, shuchusenz, 0 );
setEffRotateKey( spep_3 + 90, shuchusenz, 0 );

setEffAlphaKey( spep_3 + 0, shuchusenz, 255 );
setEffAlphaKey( spep_3 + 90, shuchusenz, 255 );

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

------------------------------------------------------
-- 発射(120F)
------------------------------------------------------
spep_4 = spep_3+90;

entryFade( spep_4-8, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_4+15, 1, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_4, 0, 120, 0, 0, 0, 0, 210);          -- 暗め　背景

zimenusiro4 = entryEffect(  spep_4,   SP_04,   0x100,  -1,  0,  0,  0);   --床
setEffScaleKey( spep_4, zimenusiro4, -1.0, 1.0);
setEffAlphaKey( spep_4, zimenusiro4, 255);


shuchusenct4 = entryEffectLife( spep_4, 906, 120, 0x100,  -1, 0,  0,  0);   -- 集中線 
setEffScaleKey( spep_4, shuchusenct4, 1.5, 1.5);
setEffAlphaKey( spep_4, shuchusenct4, 255);


-- 書き文字エントリー
ctZuo4 = entryEffectLife( spep_4+15, 10012, 50, 0x100, -1, 0, 0, 350); -- ズオッ
setEffShake(spep_4+15, ctZuo4, 92, 5);
setEffRotateKey(spep_4+15, ctZuo4, 31);
setEffShake(spep_4+15, ctZuo4, 71, 30);
setEffAlphaKey(spep_4+15, ctZuo4, 255);
setEffAlphaKey(spep_4+30, ctZuo4, 255);
setEffAlphaKey(spep_4+52, ctZuo4, 0);
setEffScaleKey(spep_4+15, ctZuo4, 0.0, 0.0);
setEffScaleKey(spep_4+20, ctZuo4, 2.8, 2.8);
setEffScaleKey(spep_4+45, ctZuo4, 2.8, 2.8);
setEffScaleKey(spep_4+62, ctZuo4, 8.0, 8.0);

--[[
playSe( spep_4+15, SE_06); --506

playSe( spep_4+22, SE_06);
playSe( spep_4+32, SE_06);
playSe( spep_4+42, SE_06);
playSe( spep_4+52, SE_06);
playSe( spep_4+65, SE_06);
playSe( spep_4+80, SE_06);
playSe( spep_4+90, SE_06);
]]
--v4.11調整
SE011 = playSe( spep_4+15, SE_06); --506
stopSe( spep_4+32, SE011,5);
SE012 = playSe( spep_4+22, SE_06);
stopSe( spep_4+42, SE012,5);
SE013 = playSe( spep_4+32, SE_06);
stopSe( spep_4+52, SE013,5);
SE014 = playSe( spep_4+42, SE_06);
stopSe( spep_4+62, SE014,5);
SE015 = playSe( spep_4+52, SE_06);
stopSe( spep_4+75, SE015,5);
SE016 = playSe( spep_4+65, SE_06);
stopSe( spep_4+90, SE016,5);
SE017 = playSe( spep_4+80, SE_06);
stopSe( spep_4+100, SE017,5);
SE018 = playSe( spep_4+90, SE_06);

------------------------------------------------------
-- 当たる(100F)
------------------------------------------------------
spep_5 = spep_4+120;

entryFade( spep_5-8, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_5, 0, 100, 0, 0, 0, 0, 210);          -- 暗め　背景

zimenusiro5 = entryEffect(  spep_5,   SP_05,   0x100,  -1,  0,  0,  0);   --床
setEffScaleKey( spep_5, zimenusiro5, 1.0, 1.0);
setEffAlphaKey( spep_5, zimenusiro5, 255);

setDisp( spep_5, 1, 1);
changeAnime( spep_5, 1, 5);
setMoveKey(  spep_5, 1,  0,  0,  -100);
--setMoveKey(  spep_5+20, 1,  0,  0,  -60);
--setMoveKey(  spep_5+40, 1,  0,  0,  -20);
--setMoveKey(  spep_5+60, 1,  0,  0,  10);
setMoveKey(  spep_5+99, 1,  0,  0,  80);

setShakeChara( spep_5+5, 1, 30, 25);
setShakeChara( spep_5+45, 1, 40, 15);

--[[
playSe( spep_5+20, 1011);
playSe( spep_5+40, 1011);
--playSe( spep_5+30, 1008);
playSe( spep_5+60, 1011);
playSe( spep_5+80, 1011);
]]
--v4.11調整
SE021 = playSe( spep_5+20, 1011);
stopSe(spep_5+55, SE021,5);
SE022 = playSe( spep_5+40, 1011);
stopSe(spep_5+75, SE022,5);
--playSe( spep_5+30, 1008);
SE023 = playSe( spep_5+60, 1011);
stopSe(spep_5+95, SE023,5);
SE024 = playSe( spep_5+80, 1011);

setDisp( spep_5+99, 1, 0);

zimenusiro5 = entryEffect(  spep_5,   SP_06,   0x80,  -1,  0,  0,  0);   --床
setEffScaleKey( spep_5, zimenusiro5, 1.0, 1.0);
setEffAlphaKey( spep_5, zimenusiro5, 255);

shuchusenct5 = entryEffectLife( spep_5, 906, 100, 0x100,  -1, 0,  0,  0);   -- 集中線 
setEffScaleKey( spep_5, shuchusenct5, 1.5, 1.5);
setEffAlphaKey( spep_5, shuchusenct5, 255);



--playSe( spep_5+15, SE_07);

------------------------------------------------------
-- 爆発(156F)
------------------------------------------------------
spep_6 = spep_5+100;

entryFade( spep_6-6, 4, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_6, 0, 160, 0, 0, 0, 0, 255);          -- ベース暗め　背景


bom = entryEffect(  spep_6,   1672,   0,  -1,  0,  0,  0);   --爆発
setEffScaleKey( spep_6, bom, 1.0, 1.0);
setEffAlphaKey( spep_6, bom, 255);


-- ダメージ表示
dealDamage( spep_6+16);
--entryFade( spep_6+136, 9, 10, 1, 8, 8, 8, 255); -- black fade
endPhase( spep_6+148);

playSe( spep_6+6, SE_10);

end


