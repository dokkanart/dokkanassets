--sp1154 ケール（暴走）1013421 ギガンティックインパクト

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
SE_08 = 1042; --カットイン
SE_09 = 1023; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音

SE_12 = 09;

SE_13 = 1000; --パンチ 
SE_14 = 1001; --キック 
SE_15 = 1009; --強パンチ 
SE_16 = 1010; --強キック
SE_17 = 1027; --吹っ飛ばし
SE_18 = 1054; --割れる音
SE_19 = 1018;
SE_20 = 10;
SE_21 = 1042;

tyo = -30;
tyo2 = -40;


SP_01 = 151320;--胸爆発
SP_02 = 151321;--岩叩きつけ
SP_03 = 151322;--岩引きずり
SP_04 = 151323;--構える
SP_05 = 151324;--発射
SP_06 = 151325;--迫る
SP_07 = 151326;--構える敵側発射
SP_08 = 151327;--発射
SP_10 = 190011;--ギャン

SP_01e = 151329;
SP_03e = 151330;


multi_frm = 2;

setVisibleUI( 0, 0);
changeAnime( 0, 0, 1);
changeAnime( 0, 1, 100);
setDisp( 0, 1, 0);
setDisp( 0, 0, 1);
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
-- 気溜め(40F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
spep0 = 0

--気を貯める
--         frame, eff, atr,tgt, tag,  x, y
changeAnime(  spep0+30, 0, 17);                       -- 溜め!
entryEffect(  spep0+30,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
entryEffect(  spep0+30,   1500,   0x100,    -1,  0,  0,  0);    -- eff_001
playSe( spep0+30, SE_01); --30

entryFade( spep0+61, 5, 11, 5, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife( spep0+30,   311, 39, 0x40,  0,  0,  0,  -230); -- オーラ
setEffMoveKey( spep0+30,aura,0, -230,0);
setEffRotateKey( spep0+30,aura,0);
setEffAlphaKey( spep0+30,aura,255);
setEffScaleKey(spep0+30, aura, 1.5, 1.5);
setShakeChara(spep0+30, 0, 39, 20);

-- 書き文字エントリー
ctZuzu = entryEffectLife(spep0+30, 10013, 39, 0, -1, 0, 0, 0); -- ズズンッ

setEffMoveKey(spep0+30,ctZuzu,0,200,0);
setEffMoveKey(spep0+40,ctZuzu,0,320,0);
setEffMoveKey(spep0+69,ctZuzu,0,320,0);

setEffRotateKey(spep0+30,ctZuzu,350);
setEffRotateKey(spep0+69,ctZuzu,350);

setEffShake(spep0+30, ctZuzu, 39, 15);

setEffAlphaKey(spep0+30, ctZuzu, 255);
setEffAlphaKey(spep0+69, ctZuzu, 255);

setEffScaleKey( spep0+30, ctZuzu, 0.1, 0.1);
setEffScaleKey( spep0+40, ctZuzu, 3.1, 3.1);
setEffScaleKey( spep0+69, ctZuzu, 3.1, 3.1);
setDisp( spep0+70, 0, 0);
spep_1 = spep0+70 --100+160
------------------------------------------------------
-- 胸爆発(140F)
------------------------------------------------------

ef1 = entryEffect( spep_1, SP_01, 0x100, -1,  0,  0,  0);
setEffMoveKey(  spep_1,  ef1,  0,  0,   0);
setEffScaleKey( spep_1, ef1, 1, 1);
setEffRotateKey(spep_1, ef1, 0);
setEffAlphaKey( spep_1, ef1, 255);


setDisp( spep_1, 1, 1);                                  --敵
changeAnime( spep_1, 1, 101);
setRotateKey( spep_1,  1, 0);
setRotateKey( spep_1+64,  1, 0);
setMoveKey(  spep_1,   1,   230, 15,   0);
setMoveKey(  spep_1+20,   1,  125, 15,   0);
setScaleKey( spep_1,   1, 1.3, 1.3);
setScaleKey( spep_1+90,   1, 1.3, 1.3);
changeAnime( spep_1+65, 1, 106);                         --横にいく
setShakeChara( spep_1+18, 1, 52, 20);
setMoveKey(   spep_1+65,   1,   125, 15,   0);
setMoveKey(   spep_1+80,   1,  680, 15,   0);
setDisp( spep_1+90, 1, 0);


ryuusenn1 = entryEffectLife( spep_1, 914, 64, 0x80,  -1, 0,  0,  0);   -- 横線
setEffScaleKey( spep_1, ryuusenn1, 1.5, 1.5);
setEffAlphaKey( spep_1, ryuusenn1, 255);

shuchusen1 = entryEffectLife( spep_1+65, 906, 73, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_1+65, shuchusen1, 1.5, 1.5);
setEffAlphaKey( spep_1+65, shuchusen1, 255);

-- 書き文字エントリー
ct1 = entryEffectLife( spep_1+65, 10018, 70, 0, -1, 0, 100, 305); -- ドゴォン
setEffShake(spep_1+66, ct1, 75, 20);
setEffScaleKey( spep_1+65, ct1, 2.0, 2.0);
setEffRotateKey(spep_1+65, ct1, 0);
setEffAlphaKey(spep_1+65, ct1, 255);

playSe( spep_1, 1018);
--playSe( spep_1+40, 1042);
playSe( spep_1+65, 1002);


entryFade( spep_1+135, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryFadeBg( spep_1, 0, 140, 0, 10, 10, 10, 210);       -- ベース暗め　背景

spep_2 = spep_1+140 --100+160
------------------------------------------------------
-- 壁ドン(50F)
------------------------------------------------------
entryFadeBg( spep_2, 0, 70, 0, 10, 10, 10, 255);       -- ベース暗め　背景

setDisp( spep_2, 1, 1);                                  --敵
changeAnime( spep_2, 1, 106);
setMoveKey(  spep_2-1,   1,   -530, -15,   0);
setMoveKey(  spep_2,   1,   -530, -15,   0);
setMoveKey(  spep_2+20,   1,  120, -15,   0);
setMoveKey(  spep_2+46,   1,  120, -15,   0);
setScaleKey( spep_2,   1, 1.3, 1.3);
setScaleKey( spep_2+46,   1, 1.3, 1.3);

setRotateKey( spep_2,  1, -20);
setRotateKey( spep_2+36,  1, -20);
setRotateKey( spep_2+37,  1, 10);
setRotateKey( spep_2+46,  1, 10);

setShakeChara( spep_2+1, 1, 69, 20);
setDisp( spep_2+68, 1, 0);

ef2 = entryEffect( spep_2+20, SP_02, 0x100, -1,  0,  0,  0);
setEffMoveKey(  spep_2+20,  ef2,  0,  0,   0);
setEffScaleKey( spep_2+20, ef2, 1, 1);
setEffRotateKey(spep_2+20, ef2, 0);
setEffAlphaKey( spep_2+20, ef2, 255);


ryuusenn2 = entryEffectLife( spep_2, 914, 40, 0x80,  -1, 0,  0,  0);   -- 横線
setEffScaleKey( spep_2, ryuusenn2, 1.5, 1.5);
setEffAlphaKey( spep_2, ryuusenn2, 255);

shuchusen2 = entryEffectLife( spep_2+20, 906, 46, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_2+20, shuchusen2, 1.5, 1.5);
setEffAlphaKey( spep_2+20, shuchusen2, 255);

-- 書き文字エントリー
ct2 = entryEffectLife( spep_2+40, 10021, 26, 0x100, -1, 0, 100, 305); -- バゴォ
setEffShake(spep_2+40, ct2, 75, 20);
setEffScaleKey( spep_2+40, ct2, 2.0, 2.0);
setEffRotateKey(spep_2+40, ct2, 0);
setEffAlphaKey(spep_2+40, ct2, 255);

playSe( spep_2+40, 1011);

entryFade( spep_2+61, 3, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
spep_3 = spep_2+68
------------------------------------------------------
-- 引きづり(100F)
------------------------------------------------------
entryFadeBg( spep_3, 0, 100, 0, 10, 10, 10, 255);       -- ベース暗め　背景

shuchusen3 = entryEffectLife( spep_3, 906, 100, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3, shuchusen3, 1.5, 1.5);
setEffAlphaKey( spep_3, shuchusen3, 255);

ef3 = entryEffect( spep_3, SP_03, 0x80, -1,  0,  0,  0);
setEffMoveKey(  spep_3,  ef3,  0,  0,   0);
setEffScaleKey( spep_3, ef3, 1, 1);
setEffRotateKey(spep_3, ef3, 0);
setEffAlphaKey( spep_3, ef3, 255);

setDisp( spep_3+67, 1, 1);                                  --敵
changeAnime( spep_3, 1, 107);
setMoveKey(  spep_3+66,   1,   100, 0,   0);
setMoveKey(  spep_3+67,   1,   100, 0,   0);
setMoveKey(  spep_3+97,   1,  50, -150,   0);
setScaleKey( spep_3+72,   1, 0.8, 0.8);
setScaleKey( spep_3+98,   1, 1.5, 1.5);
setRotateKey( spep_3+70,  1, -20);
setRotateKey( spep_3+100,  1, -20);
setShakeChara( spep_3+66, 1, 33, 20);
setDisp( spep_3+98, 1, 0);



-- 書き文字エントリー
ct3 = entryEffectLife( spep_3, 10002, 66, 0, -1, 0, 0, 305); -- ガガガ
setEffShake(spep_3, ct3, 75, 20);
setEffScaleKey( spep_3, ct3, 3.0, 3.0);
setEffScaleKey( spep_3+66, ct3, 3.0, 3.0);
setEffRotateKey(spep_3, ct3, 0);
setEffAlphaKey(spep_3, ct3, 255);

--playSe( spep_3, 1044);

seID0 = playSe( spep_3, 1044);
stopSe( spep_3+68, seID0, 10);
playSe( spep_3+67, 1011);

entryFade( spep_3+93, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_4 = spep_3+100

------------------------------------------------------
-- ピッチャー振りかぶって…80
------------------------------------------------------
setDisp( spep_4+0, 0, 0);
setMoveKey(   spep_4,   0,    0, 0,   0);

sen4 = entryEffectLife( spep_4, 921, 90, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_4, sen4, 150);
setEffScaleKey( spep_4, sen4, 1.6, 1.6);

shuchusen4 = entryEffectLife( spep_4, 906, 90, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_4, shuchusen4, 1.5, 1.5);
setEffAlphaKey( spep_4, shuchusen4, 255);

playSe( spep_4, SE_04);

ef4 = entryEffect( spep_4, SP_04, 0x100, -1,  0,  0,  0);
setEffMoveKey(  spep_4, ef4,  0,  0,   0);
setEffScaleKey( spep_4, ef4, 0.8, 0.8);
setEffRotateKey(spep_4, ef4, 0);
setEffAlphaKey( spep_4, ef4, 255);


speff = entryEffect(  spep_4,   1504,   0x100,     -1,  0,  0,  0);   -- eff_005 (カットイン) 117で終了
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_4,   1505,   0x100,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
--speff = entryEffect(  spep_4,   1503,   0x80,     -1,  0,  0,  0);   -- 背景

-- 書き文字エントリー
ctgogo = entryEffectLife( spep_4+20, 190006, 60, 0x100, -1, 0, 0,530, 0);    -- ゴゴゴゴ
setEffShake(spep_4+20, ctgogo, 60, 10);
setEffScaleKey(spep_4+20, ctgogo, 0.7, 0.7);
setEffRotateKey(spep_4+20, ctgogo, 0);
setEffAlphaKey( spep_4+20, ctgogo, 255);


entryFadeBg( spep_4, 0, 100, 0, 10, 10, 10, 210);       -- ベース暗め　背景

entryFade( spep_4+85, 3, 6, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_5=spep_4+90; --100+160+100+160

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
--setMoveKey(   spep_5,   0,    0, 0,   0);
--setEffMoveKey(  spep_5,  ef,  0,  0,   0);
--playSe( spep_5, SE_05);

speff = entryEffect(  spep_5,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え



-- ** エフェクト等 ** --
--playSe( spep_5, SE_05);

-- ** 集中線 ** --
shuchusenz = entryEffectLife( spep_5 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_5 + 0, shuchusenz, 90, 20 );

setEffMoveKey( spep_5 + 0, shuchusenz, 0, 0 , 0 );
setEffMoveKey( spep_5 + 90, shuchusenz, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, shuchusenz, 1.6, 1.6 );
setEffScaleKey( spep_5 + 90, shuchusenz, 1.6, 1.6 );

setEffRotateKey( spep_5 + 0, shuchusenz, 0 );
setEffRotateKey( spep_5 + 90, shuchusenz, 0 );

setEffAlphaKey( spep_5 + 0, shuchusenz, 255 );
setEffAlphaKey( spep_5 + 90, shuchusenz, 255 );

-- ** 極限用 ** --
if (_SPECIAL_SKILL_LEVEL_ == 0) then
print ("_SPECIAL_SKILL_LEVEL_ == 0");
playSe( spep_5, SE_05);
speff = entryEffect( spep_5, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
print ("_SPECIAL_SKILL_LEVEL_ == 1");
playSe( spep_5, SE_05);
speff = entryEffect( spep_5, 1120, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( spep_5, SE_05);
speff = entryEffect( spep_5, 1121, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

entryFade( spep_5+83, 5, 5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_6=spep_5+90;
------------------------------------------------------
-- 投げた！120
------------------------------------------------------

sen5 = entryEffectLife( spep_6-1, 921, 161, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_6-1, sen5, 0);
setEffScaleKey( spep_6-1, sen5, 1.6, 1.6);
setEffAlphaKey(spep_6-1, sen5, 0);
setEffAlphaKey(spep_6, sen5, 255);

setShakeChara( spep_6, 1, 34, 30);


ef6 = entryEffectLife( spep_6, SP_05, 60, 0x100,  -1,  0,  0,  0);   -- 伸びるかめはめ波
setEffMoveKey(  spep_6+50, ef6,  0,  0,   0);
setEffMoveKey(  spep_6+60, ef6,  -580,  0,   0);
setEffScaleKey( spep_6, ef6, 1, 1);
setEffRotateKey(spep_6, ef6, 0);
setEffAlphaKey( spep_6, ef6, 255);

playSe( spep_6, SE_06);



-- ** エフェクト等 ** --
entryFadeBg( spep_6, 0, 60, 0, 10, 10, 10, 210);       -- ベース暗め　背景

shuchusen6 = entryEffectLife( spep_6, 906, 60, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffRotateKey(spep_6, shuchusen6, 145);
setEffScaleKey( spep_6, shuchusen6, 1.5, 1.5);

-- 書き文字エントリー
ct6 = entryEffectLife( spep_6, 10012, 50, 0x100, -1, 0, 100, 200); -- ズオッ
setEffShake(spep_6, ct6, 92, 5);
setEffRotateKey(spep_6, ct6, 31);
setEffShake(spep_6, ct6, 71, 30);
setEffAlphaKey(spep_6, ct6, 255);
setEffAlphaKey(spep_6+15, ct6, 255);
setEffAlphaKey(spep_6+52, ct6, 0);
setEffMoveKey(  spep_6+5,  ct6,  130,  290,   0);
setEffMoveKey(  spep_6+35,  ct6,  130,  290,   0);
setEffMoveKey(  spep_6+52, ct6,  220,  350,   0);
setEffScaleKey(spep_6, ct6, 0.0, 0.0);
setEffScaleKey(spep_6+5, ct6, 2.8, 2.8);
setEffScaleKey(spep_6+35, ct6, 2.8, 2.8);
setEffScaleKey(spep_6+52, ct6, 8.0, 8.0);
--playSe( spep_5+40, SE_07);

--[[
setDisp( spep_6+60, 1, 1);                             --敵
changeAnime( spep_6+60, 1, 100);
setScaleKey( spep_6,  0,  0.8, 0.8);
setMoveKey(  spep_6+60,    1,   625,  -320,   0);
setMoveKey(  spep_6+85,    1,  170,  -25,   0);
setMoveKey(  spep_6+105,   1,  180,  -25,   0);
changeAnime( spep_6+101, 1, 108);
setShakeChara( spep_6+101, 1, 20, 10);
setDisp( spep_6+120, 1, 0);
]]--

entryFade( spep_6+57, 2, 2, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
spep_7=spep_6+60; 


------------------------------------------------------
-- 迫る！60
------------------------------------------------------
entryFadeBg( spep_7, 0, 60, 0, 10, 10, 10, 210);       -- ベース暗め　背景

sen7 = entryEffectLife( spep_7-1, 921, 161, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_7-1, sen7, 0);
setEffScaleKey( spep_7-1, sen7, 1.6, 1.6);
setEffAlphaKey(spep_7-1, sen7, 0);
setEffAlphaKey(spep_7, sen7, 255);

ef7 = entryEffectLife( spep_7, SP_06, 60, 0x100,  -1,  0,  0,  0);   -- 伸びるかめはめ波
setEffMoveKey(  spep_7, ef7,  0,  0,   0);
setEffScaleKey( spep_7, ef7, 1, 1);
setEffRotateKey(spep_7, ef7, 0);
setEffAlphaKey( spep_7, ef7, 255);

setDisp( spep_7, 1, 1);                             --敵
changeAnime( spep_7, 1, 106);
setScaleKey( spep_7,  1,  0.8, 0.8);
setMoveKey(  spep_7,    1,   -100,  0,   0);
setMoveKey(  spep_7+30,    1,  0,  0,   0);
setShakeChara( spep_7, 1, 60, 10);
setDisp( spep_7+59, 1, 0);

playSe( spep_7, SE_07);

entryFade( spep_7+53, 5, 5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_8=spep_7+60;
------------------------------------------------------
-- ギャン(100F)
------------------------------------------------------

playSe( spep_8+60, SE_09);


-- ** エフェクト等 ** --
setShakeChara( spep_8, 1, 99, 20);

entryFadeBg( spep_8, 0, 200, 0, 10, 10, 10, 210);       -- ベース暗め　背景

entryFade( spep_8-8, 5,  5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


-- 書き文字エントリー
gyan = entryEffect( spep_8, SP_10,   0x80, -1,  0,  0,  0);   -- ギャン

ct8 = entryEffectLife( spep_8, 10006, 70, 0x100, -1, 0, 0, 300); -- ギャン
setEffShake(spep_8, ct8, 99, 20);
setEffScaleKey( spep_8, ct8, 2.8, 2.8);
--setEffScaleKey( spep_6+10, ct3, 2.4, 2.4);
setEffScaleKey( spep_8+64, ct8, 4, 4);
setEffAlphaKey(spep_8, ct8, 255);
setEffAlphaKey(spep_8+10, ct8, 255);
setEffAlphaKey(spep_8+64, ct8, 0);

entryFade( spep_8+52, 6,  5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


--removeAllEffect(spep_6+64);

spep_9=spep_8+64; --100+160+100+160+80+120=620

------------------------------------------------------
-- 回避
------------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge = 80; --エンドフェイズのフレーム数を置き換える


playSe( SP_dodge, 1042);

speff = entryEffectUnpausable(  SP_dodge,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setMoveKey( SP_dodge+6,   0,   0, -54,   0);
setMoveKey( SP_dodge+7,   0,   3000, 0,   0);

endPhase(SP_dodge+10);

do return end
else end

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

bakuhatu = entryEffect( spep_9, 1593, 0,  -1,  0,  0,  0);  
setEffScaleKey( spep_9, bakuhatu, 1.1, 1.1);
setDisp( spep_9, 1, 0);

playSe( spep_9+4, SE_10);

-- ダメージ表示
dealDamage(spep_9+17);

--entryFade( spep_9+158, 5,  15, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_9+160);

else




------------------------------------------------------
-- 敵側
------------------------------------------------------
spep0 = 0

--気を貯める
--         frame, eff, atr,tgt, tag,  x, y
changeAnime(  spep0+30, 0, 17);                       -- 溜め!
entryEffect(  spep0+30,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
entryEffect(  spep0+30,   1500,   0x100,    -1,  0,  0,  0);    -- eff_001
playSe( spep0+30, SE_01); --30

entryFade( spep0+61, 5, 11, 5, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife( spep0+30,   311, 39, 0x40,  0,  0,  0,  -230); -- オーラ
setEffMoveKey( spep0+30,aura,0, -230,0);
setEffRotateKey( spep0+30,aura,0);
setEffAlphaKey( spep0+30,aura,255);
setEffScaleKey(spep0+30, aura, 1.5, 1.5);
setShakeChara(spep0+30, 0, 39, 20);

-- 書き文字エントリー
ctZuzu = entryEffectLife(spep0+30, 10013, 39, 0, -1, 0, 0, 0); -- ズズンッ

setEffMoveKey(spep0+30,ctZuzu,0,200,0);
setEffMoveKey(spep0+40,ctZuzu,0,320,0);
setEffMoveKey(spep0+69,ctZuzu,0,320,0);

setEffRotateKey(spep0+30,ctZuzu,350);
setEffRotateKey(spep0+69,ctZuzu,350);

setEffShake(spep0+30, ctZuzu, 39, 15);

setEffAlphaKey(spep0+30, ctZuzu, 255);
setEffAlphaKey(spep0+69, ctZuzu, 255);

setEffScaleKey( spep0+30, ctZuzu, 0.1, 0.1);
setEffScaleKey( spep0+40, ctZuzu, 3.1, 3.1);
setEffScaleKey( spep0+69, ctZuzu, 3.1, 3.1);
setDisp( spep0+70, 0, 0);
spep_1 = spep0+70 --100+160
------------------------------------------------------
-- 胸爆発(140F)
------------------------------------------------------

ef1 = entryEffect( spep_1, SP_01e, 0x100, -1,  0,  0,  0);
setEffMoveKey(  spep_1,  ef1,  0,  0,   0);
setEffScaleKey( spep_1, ef1, 1, 1);
setEffRotateKey(spep_1, ef1, 0);
setEffAlphaKey( spep_1, ef1, 255);


setDisp( spep_1, 1, 1);                                  --敵
changeAnime( spep_1, 1, 101);
setMoveKey(  spep_1,   1,   230, 15,   0);
setMoveKey(  spep_1+20,   1,  125, 15,   0);
setScaleKey( spep_1,   1, 1.3, 1.3);
setScaleKey( spep_1+90,   1, 1.3, 1.3);
changeAnime( spep_1+65, 1, 106);                         --横にいく
setShakeChara( spep_1+18, 1, 52, 20);
setMoveKey(   spep_1+65,   1,   125, 15,   0);
setMoveKey(   spep_1+80,   1,  680, 15,   0);
setDisp( spep_1+90, 1, 0);


ryuusenn1 = entryEffectLife( spep_1, 914, 64, 0x80,  -1, 0,  0,  0);   -- 横線
setEffScaleKey( spep_1, ryuusenn1, 1.5, 1.5);
setEffAlphaKey( spep_1, ryuusenn1, 255);

shuchusen1 = entryEffectLife( spep_1+65, 906, 73, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_1+65, shuchusen1, 1.5, 1.5);
setEffAlphaKey( spep_1+65, shuchusen1, 255);

-- 書き文字エントリー
ct1 = entryEffectLife( spep_1+65, 10018, 70, 0, -1, 0, 100, 305); -- ドゴォン
setEffShake(spep_1+66, ct1, 75, 20);
setEffScaleKey( spep_1+65, ct1, 2.0, 2.0);
setEffRotateKey(spep_1+65, ct1, 0);
setEffAlphaKey(spep_1+65, ct1, 255);

playSe( spep_1, 1018);
--playSe( spep_1+40, 1042);
playSe( spep_1+65, 1002);


entryFade( spep_1+135, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryFadeBg( spep_1, 0, 140, 0, 10, 10, 10, 210);       -- ベース暗め　背景

spep_2 = spep_1+140 --100+160
------------------------------------------------------
-- 壁ドン(50F)
------------------------------------------------------
entryFadeBg( spep_2, 0, 70, 0, 10, 10, 10, 255);       -- ベース暗め　背景

setDisp( spep_2, 1, 1);                                  --敵
changeAnime( spep_2, 1, 106);
setMoveKey(  spep_2-1,   1,   -530, -15,   0);
setMoveKey(  spep_2,   1,   -530, -15,   0);
setMoveKey(  spep_2+20,   1,  120, -15,   0);
setMoveKey(  spep_2+46,   1,  120, -15,   0);
setScaleKey( spep_2,   1, 1.3, 1.3);
setScaleKey( spep_2+46,   1, 1.3, 1.3);

setRotateKey( spep_2,  1, -20);
setRotateKey( spep_2+36,  1, -20);
setRotateKey( spep_2+37,  1, 10);
setRotateKey( spep_2+46,  1, 10);

setShakeChara( spep_2+1, 1, 69, 20);
setDisp( spep_2+68, 1, 0);

ef2 = entryEffect( spep_2+20, SP_02, 0x100, -1,  0,  0,  0);
setEffMoveKey(  spep_2+20,  ef2,  0,  0,   0);
setEffScaleKey( spep_2+20, ef2, 1, 1);
setEffRotateKey(spep_2+20, ef2, 0);
setEffAlphaKey( spep_2+20, ef2, 255);


ryuusenn2 = entryEffectLife( spep_2, 914, 40, 0x80,  -1, 0,  0,  0);   -- 横線
setEffScaleKey( spep_2, ryuusenn2, 1.5, 1.5);
setEffAlphaKey( spep_2, ryuusenn2, 255);

shuchusen2 = entryEffectLife( spep_2+20, 906, 46, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_2+20, shuchusen2, 1.5, 1.5);
setEffAlphaKey( spep_2+20, shuchusen2, 255);

-- 書き文字エントリー
ct2 = entryEffectLife( spep_2+40, 10021, 26, 0x100, -1, 0, 100, 305); -- バゴォ
setEffShake(spep_2+40, ct2, 75, 20);
setEffScaleKey( spep_2+40, ct2, 2.0, 2.0);
setEffRotateKey(spep_2+40, ct2, 0);
setEffAlphaKey(spep_2+40, ct2, 255);

playSe( spep_2+40, 1011);

entryFade( spep_2+61, 3, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
spep_3 = spep_2+68
------------------------------------------------------
-- 引きづり(100F)
------------------------------------------------------
entryFadeBg( spep_3, 0, 100, 0, 10, 10, 10, 255);       -- ベース暗め　背景

shuchusen3 = entryEffectLife( spep_3, 906, 100, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3, shuchusen3, 1.5, 1.5);
setEffAlphaKey( spep_3, shuchusen3, 255);

ef3 = entryEffect( spep_3, SP_03e, 0x80, -1,  0,  0,  0);
setEffMoveKey(  spep_3,  ef3,  0,  0,   0);
setEffScaleKey( spep_3, ef3, 1, 1);
setEffRotateKey(spep_3, ef3, 0);
setEffAlphaKey( spep_3, ef3, 255);

setDisp( spep_3+67, 1, 1);                                  --敵
changeAnime( spep_3, 1, 107);
setMoveKey(  spep_3+66,   1,   100, 0,   0);
setMoveKey(  spep_3+67,   1,   100, 0,   0);
setMoveKey(  spep_3+97,   1,  50, -150,   0);
setScaleKey( spep_3+72,   1, 0.8, 0.8);
setScaleKey( spep_3+98,   1, 1.5, 1.5);
setRotateKey( spep_3+70,  1, -20);
setRotateKey( spep_3+100,  1, -20);
setShakeChara( spep_3+66, 1, 33, 20);
setDisp( spep_3+98, 1, 0);



-- 書き文字エントリー
ct3 = entryEffectLife( spep_3, 10002, 66, 0, -1, 0, 0, 305); -- ガガガ
setEffShake(spep_3, ct3, 75, 20);
setEffScaleKey( spep_3, ct3, 3.0, 3.0);
setEffScaleKey( spep_3+66, ct3, 3.0, 3.0);
setEffRotateKey(spep_3, ct3, 0);
setEffAlphaKey(spep_3, ct3, 255);

--playSe( spep_3, 1044);

seID0 = playSe( spep_3, 1044);
stopSe( spep_3+68, seID0, 10);

playSe( spep_3+67, 1011);

entryFade( spep_3+93, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_4 = spep_3+100

------------------------------------------------------
-- ピッチャー振りかぶって…80
------------------------------------------------------
setDisp( spep_4+0, 0, 0);
setMoveKey(   spep_4,   0,    0, 0,   0);

sen4 = entryEffectLife( spep_4, 921, 90, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_4, sen4, 150);
setEffScaleKey( spep_4, sen4, 1.6, 1.6);

shuchusen4 = entryEffectLife( spep_4, 906, 90, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_4, shuchusen4, 1.5, 1.5);
setEffAlphaKey( spep_4, shuchusen4, 255);

playSe( spep_4, SE_04);

ef4 = entryEffect( spep_4, SP_07, 0x100, -1,  0,  0,  0);
setEffMoveKey(  spep_4, ef4,  0,  0,   0);
setEffScaleKey( spep_4, ef4, 0.8, 0.8);
setEffRotateKey(spep_4, ef4, 0);
setEffAlphaKey( spep_4, ef4, 255);

--[[
speff = entryEffect(  spep_4,   1504,   0x100,     -1,  0,  0,  0);   -- eff_005 (カットイン) 117で終了
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_4,   1505,   0x100,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
--speff = entryEffect(  spep_4,   1503,   0x80,     -1,  0,  0,  0);   -- 背景
]]--
-- 書き文字エントリー
ctgogo = entryEffectLife( spep_4+20, 190006, 60, 0x100, -1, 0, 0,530, 0);    -- ゴゴゴゴ
setEffShake(spep_4+20, ctgogo, 60, 10);
setEffScaleKey(spep_4+20, ctgogo, -0.7, 0.7);
setEffRotateKey(spep_4+20, ctgogo, 0);
setEffAlphaKey( spep_4+20, ctgogo, 255);


entryFadeBg( spep_4, 0, 100, 0, 10, 10, 10, 210);       -- ベース暗め　背景

entryFade( spep_4+85, 3, 6, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_5=spep_4+90; --100+160+100+160

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
--setMoveKey(   spep_5,   0,    0, 0,   0);
--setEffMoveKey(  spep_5,  ef,  0,  0,   0);
--playSe( spep_5, SE_05);

speff = entryEffect(  spep_5,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え



-- ** エフェクト等 ** --
--playSe( spep_5, SE_05);

-- ** 集中線 ** --
shuchusenz = entryEffectLife( spep_5 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_5 + 0, shuchusenz, 90, 20 );

setEffMoveKey( spep_5 + 0, shuchusenz, 0, 0 , 0 );
setEffMoveKey( spep_5 + 90, shuchusenz, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, shuchusenz, 1.6, 1.6 );
setEffScaleKey( spep_5 + 90, shuchusenz, 1.6, 1.6 );

setEffRotateKey( spep_5 + 0, shuchusenz, 0 );
setEffRotateKey( spep_5 + 90, shuchusenz, 0 );

setEffAlphaKey( spep_5 + 0, shuchusenz, 255 );
setEffAlphaKey( spep_5 + 90, shuchusenz, 255 );

-- ** 極限用 ** --
if (_SPECIAL_SKILL_LEVEL_ == 0) then
print ("_SPECIAL_SKILL_LEVEL_ == 0");
playSe( spep_5, SE_05);
speff = entryEffect( spep_5, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
print ("_SPECIAL_SKILL_LEVEL_ == 1");
playSe( spep_5, SE_05);
speff = entryEffect( spep_5, 1120, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( spep_5, SE_05);
speff = entryEffect( spep_5, 1121, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end
entryFade( spep_5+83, 5, 5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_6=spep_5+90;
------------------------------------------------------
-- 投げた！120
------------------------------------------------------

sen5 = entryEffectLife( spep_6-1, 921, 161, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_6-1, sen5, 0);
setEffScaleKey( spep_6-1, sen5, 1.6, 1.6);
setEffAlphaKey(spep_6-1, sen5, 0);
setEffAlphaKey(spep_6, sen5, 255);

setShakeChara( spep_6, 1, 34, 30);


ef6 = entryEffectLife( spep_6, SP_08, 60, 0x100,  -1,  0,  0,  0);   -- 伸びるかめはめ波
setEffMoveKey(  spep_6+50, ef6,  0,  0,   0);
setEffMoveKey(  spep_6+60, ef6,  -580,  0,   0);
setEffScaleKey( spep_6, ef6, 1, 1);
setEffRotateKey(spep_6, ef6, 0);
setEffAlphaKey( spep_6, ef6, 255);

playSe( spep_6, SE_06);



-- ** エフェクト等 ** --
entryFadeBg( spep_6, 0, 60, 0, 10, 10, 10, 210);       -- ベース暗め　背景

shuchusen6 = entryEffectLife( spep_6, 906, 60, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffRotateKey(spep_6, shuchusen6, 145);
setEffScaleKey( spep_6, shuchusen6, 1.5, 1.5);

-- 書き文字エントリー
ct6 = entryEffectLife( spep_6, 10012, 50, 0x100, -1, 0, 100, 200); -- ズオッ
setEffShake(spep_6, ct6, 92, 5);
setEffRotateKey(spep_6, ct6, 31);
setEffShake(spep_6, ct6, 71, 30);
setEffAlphaKey(spep_6, ct6, 255);
setEffAlphaKey(spep_6+15, ct6, 255);
setEffAlphaKey(spep_6+52, ct6, 0);
setEffMoveKey(  spep_6+5,  ct6,  130,  290,   0);
setEffMoveKey(  spep_6+35,  ct6,  130,  290,   0);
setEffMoveKey(  spep_6+52, ct6,  220,  350,   0);
setEffScaleKey(spep_6, ct6, 0.0, 0.0);
setEffScaleKey(spep_6+5, ct6, 2.8, 2.8);
setEffScaleKey(spep_6+35, ct6, 2.8, 2.8);
setEffScaleKey(spep_6+52, ct6, 8.0, 8.0);
--playSe( spep_5+40, SE_07);

--[[
setDisp( spep_6+60, 1, 1);                             --敵
changeAnime( spep_6+60, 1, 100);
setScaleKey( spep_6,  0,  0.8, 0.8);
setMoveKey(  spep_6+60,    1,   625,  -320,   0);
setMoveKey(  spep_6+85,    1,  170,  -25,   0);
setMoveKey(  spep_6+105,   1,  180,  -25,   0);
changeAnime( spep_6+101, 1, 108);
setShakeChara( spep_6+101, 1, 20, 10);
setDisp( spep_6+120, 1, 0);
]]--

entryFade( spep_6+57, 2, 2, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
spep_7=spep_6+60; 


------------------------------------------------------
-- 迫る！60
------------------------------------------------------
entryFadeBg( spep_7, 0, 60, 0, 10, 10, 10, 210);       -- ベース暗め　背景

sen7 = entryEffectLife( spep_7-1, 921, 161, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_7-1, sen7, 0);
setEffScaleKey( spep_7-1, sen7, 1.6, 1.6);
setEffAlphaKey(spep_7-1, sen7, 0);
setEffAlphaKey(spep_7, sen7, 255);

ef7 = entryEffectLife( spep_7, SP_06, 60, 0x100,  -1,  0,  0,  0);   -- 伸びるかめはめ波
setEffMoveKey(  spep_7, ef7,  0,  0,   0);
setEffScaleKey( spep_7, ef7, 1, 1);
setEffRotateKey(spep_7, ef7, 0);
setEffAlphaKey( spep_7, ef7, 255);

setDisp( spep_7, 1, 1);                             --敵
changeAnime( spep_7, 1, 106);
setScaleKey( spep_7,  1,  0.8, 0.8);
setMoveKey(  spep_7,    1,   -100,  0,   0);
setMoveKey(  spep_7+30,    1,  0,  0,   0);
setShakeChara( spep_7, 1, 60, 10);
setDisp( spep_7+59, 1, 0);

playSe( spep_7, SE_07);

entryFade( spep_7+53, 5, 5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_8=spep_7+60;
------------------------------------------------------
-- ギャン(100F)
------------------------------------------------------

playSe( spep_8+60, SE_09);


-- ** エフェクト等 ** --
setShakeChara( spep_8, 1, 99, 20);

entryFadeBg( spep_8, 0, 200, 0, 10, 10, 10, 210);       -- ベース暗め　背景

entryFade( spep_8-8, 5,  5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


-- 書き文字エントリー
gyan = entryEffect( spep_8, SP_10,   0x80, -1,  0,  0,  0);   -- ギャン

ct8 = entryEffectLife( spep_8, 10006, 70, 0x100, -1, 0, 0, 300); -- ギャン
setEffShake(spep_8, ct8, 99, 20);
setEffScaleKey( spep_8, ct8, 2.8, 2.8);
--setEffScaleKey( spep_6+10, ct3, 2.4, 2.4);
setEffScaleKey( spep_8+64, ct8, 4, 4);
setEffAlphaKey(spep_8, ct8, 255);
setEffAlphaKey(spep_8+10, ct8, 255);
setEffAlphaKey(spep_8+64, ct8, 0);

entryFade( spep_8+52, 6,  5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


--removeAllEffect(spep_6+64);

spep_9=spep_8+64; --100+160+100+160+80+120=620

------------------------------------------------------
-- 回避
------------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge = 80; --エンドフェイズのフレーム数を置き換える


playSe( SP_dodge, 1042);

speff = entryEffectUnpausable(  SP_dodge,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setMoveKey( SP_dodge+6,   0,   0, -54,   0);
setMoveKey( SP_dodge+7,   0,   3000, 0,   0);

endPhase(SP_dodge+10);

do return end
else end

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

bakuhatu = entryEffect( spep_9, 1593, 0,  -1,  0,  0,  0);  
setEffScaleKey( spep_9, bakuhatu, 1.1, 1.1);
setDisp( spep_9, 1, 0);

playSe( spep_9+4, SE_10);

-- ダメージ表示
dealDamage(spep_9+17);

--entryFade( spep_9+158, 5,  15, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_9+160);

end