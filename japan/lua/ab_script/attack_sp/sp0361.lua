
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
SE_09 = 1010; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音
SE_12 = 09;

SP_01 = 150421	--導入	ef_001 (160F)
SP_02 = 150422	--溜め	ef_002 (160F)
SP_03 = 150423	--正面に放つ	ef_003 (40F)
SP_04 = 150424	--横向きに放つ	ef_004 (90F)
SP_05 = 150425	--敵に迫る	ef_005  (100F)
SP_06 = 150426	--ef_001の反転	ef_006
SP_07 = 150427	--ef_002の反転	ef_007
SP_08 = 150428	--ef_003の反転	ef_008
SP_09 = 150429	--ef_004の反転	ef_009

multi_frm = 2;

changeAnime( 0, 0, 0);                       -- 立ち
changeAnime( 0, 1, 100);                       -- 立ち

setMoveKey(   0,   0,    0, -800,   0);
setMoveKey(   0,   1,    0, -800,   0);
setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   0,   1, 1.5, 1.5);

setDisp(1,1,0);

---------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

---------------------------------------------
-- SP01 = 150421;	--導入	ef_001 (160F) --
---------------------------------------------
setVisibleUI( 0, 0);
setRotateKey( 0, 0, 0); 

dounyu = entryEffect( 0,   SP_01,   0x80,     -1,  0,  0,  0);   -- ef_001
setEffScaleKey( 0, dounyu, 1.0, 1.0);
setEffAlphaKey( 0, dounyu, 255);

playSe(23,SE_01);

setEffShake(0,dounyu,160,10);

---------------------------------------------
-- white --
---------------------------------------------
entryFade( 15, 2, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

---------------------------------------------
-- white --
---------------------------------------------
entryFade( 45, 2, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

---------------------------------------------
-- white --
---------------------------------------------
entryFade( 155, 2, 5, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

---------------------------------------------
-- 背景＆集中線 --
---------------------------------------------
shuchusen1 = entryEffectLife( 0, 906, 590, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 0, shuchusen1, 1.5, 1.5);
setEffAlphaKey( 0, shuchusen1, 255);

entryFadeBg( 0, 0, 640, 0, 10, 10, 10, 200);     -- ベース暗め　背景

---------------------------------------------
-- SP02 = 150422;	--溜め	ef_002 (160F)
---------------------------------------------
setVisibleUI( 161, 0);
setRotateKey( 161, 0, 0); 

tame = entryEffect( 161,   SP_02,   0x80,     -1,  0,  0,  0);   -- ef_002
setEffScaleKey( 161, tame, 1.0, 1.0);
setEffAlphaKey( 161, tame, 255);

playSe( 76, SE_04);
playSe( 210, SE_04);

setEffShake(161,tame,160,10);
---------------------------------------------
-- white --
---------------------------------------------
entryFade( 245, 2, 7, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

---------------------------------------------
-- セリフカットイン
---------------------------------------------
speff = entryEffect(  75,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  75,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe(109,SE_04);


--　ゴゴゴゴゴ　を入れる(90〜157 最後は巨大化　153〜157)
gogogo = entryEffectLife(90,190006,67,0x100,-1,0,130,520);
setEffScaleKey(90,gogogo,0.7,0.7);
setEffScaleKey(153,gogogo,0.7,0.7);
setEffScaleKey(156,gogogo,2.0,2.0);
setEffShake(90,gogogo,67,4);

---------------------------------------------
-- white --
---------------------------------------------
entryFade( 316, 2, 12, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

---------------------------------------------
-- NAME & CARD CUT IN (90F) -- 
---------------------------------------------
--[[
speff = entryEffect(  330,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

playSe(330,SE_06);
]]
-- ** 極限用 ** --
if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    playSe( 330, SE_05);
    speff = entryEffect( 330, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    
    
    elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    playSe( 330, SE_05);
    speff = entryEffect( 330, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    
    
    elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    playSe( 330, SE_05);
    speff = entryEffect( 330, 1121, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    end
---------------------------------------------
-- white --
---------------------------------------------
entryFade( 414, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

---------------------------------------------
-- SP03 = 150423;	--正面に放つ	ef_003 (40F)
---------------------------------------------
setVisibleUI( 421, 0);
setRotateKey( 421, 0, 0); 

syoumen = entryEffect( 421,   SP_03,   0x80,     -1,  0,  0,  0);   -- ef_003
setEffScaleKey( 421, syoumen, 1.0, 1.0);
setEffAlphaKey( 421, syoumen, 255);

setEffShake(421,syoumen,40,10);

playSe(456,SE_07);
---------------------------------------------
-- WHITE --
---------------------------------------------
entryFade( 495, 3, 8, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

---------------------------------------------
-- SP04 = 150424;	--横向きに放つ	ef_004 (90F)
---------------------------------------------
setVisibleUI( 503, 0);
setRotateKey( 503, 0, 0); 

shuchusen2 = entryEffectLife( 503, 920, 85, 0x80,  -1, 0,  0,  0);   -- 集中線(横)
setEffScaleKey( 0, shuchusen2, 1.0, 1.0);
setEffAlphaKey( 0, shuchusen2, 255);

yoko = entryEffect( 503,   SP_04,   0x80,     -1,  0,  0,  0);   -- ef_004
setEffScaleKey( 503, yoko, 1.0, 1.0);
setEffAlphaKey( 503, yoko, 255);

setEffShake(503,yoko,90,10);

-- ズオッ　を入れる　
zuo = entryEffectLife(508,10012,29,0x100,-1,0,80,270);
setEffScaleKey(508,zuo,0.2,0.2);
setEffRotateKey(508,zuo,20);
setEffMoveKey(510,zuo,100,320,0);
setEffScaleKey(510,zuo,1.0,1.0);
setEffScaleKey(512,zuo,3.0,3.0);
setEffMoveKey(530,zuo,110,350,0);
setEffScaleKey(530,zuo,5.0,5.0);
setEffAlphaKey( 508, zuo, 255);
setEffAlphaKey( 520, zuo, 255);
setEffAlphaKey( 537, zuo, 20);

setEffShake(508,zuo,29,10);

playSe(525,SE_06);
---------------------------------------------
-- WHITE --
---------------------------------------------
entryFade( 581, 2, 9, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

---------------------------------------------
-- SP05 = 150425;	--敵に迫る	ef_005  (40F)
---------------------------------------------
setVisibleUI( 591, 0);
setRotateKey( 591, 0, 0); 

changeAnime(590,1,104);
setDisp(590,1,1);
setScaleKey(590,1, 1.0, 1.0);
setMoveKey(590,1,200,0,0);

--setScaleKey(610,1, 1.0, 1.0);
--setMoveKey(610,1,200,0,0);
--setScaleKey(610,1, 1.0, 1.0);
--setMoveKey(610,1,150,0,0);



shuchusen3 = entryEffectLife( 590, 921, 45, 0x80,  -1, 0,  0,  0);   -- 集中線（放射）
setEffScaleKey( 590, shuchusen3, 1.0, 1.0);
setEffAlphaKey( 590, shuchusen3, 255);

semaru = entryEffectLife( 591,   SP_05, 45,   0x100,     -1,  0,  0,  0);   -- ef_005
setEffScaleKey( 591, semaru, 1.0, 1.0);
setEffAlphaKey( 591, semaru, 255);
setEffMoveKey(600,semaru,100,0,0);

setEffShake(591,semaru,40,10);

-- ズドドドドッ　を入れる
zudodo = entryEffectLife(591,10014,40,0x100,-1,0,170,370);
setEffRotateKey(591,zudodo,70);
setEffScaleKey(591,zudodo,3.0,3.0);
setEffShake(591,zudodo,29,10);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then
--[[
SP_dodge = 510; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(SP_dodge+10);

]]
SP_dodge = 601; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

-- ** カットイン部分 ** --
speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350, 1000 );   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え
  
kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350, 1100 );   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge+12, 67);

entryFade( SP_dodge+17, 5,  10, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setMoveKey ( SP_dodge+12,1,200,0,0);
setScaleKey( SP_dodge+12,1,2.5,2.5);

setMoveKey(   SP_dodge+5+4+12,   1,    0,   0,   0);
setScaleKey( SP_dodge+5+4+12, 1, 1.0, 1.0);

setDisp(SP_dodge+10+12,1,0);

endPhase(SP_dodge+10+12); --611

do return end
else end
setShake(590,100,5);
------------------------------------------------------
-- 敵やられる
------------------------------------------------------

changeAnime(612,1,108);
setMoveKey(613,1,200,0,0);
setScaleKey(612,1, 2.5, 2.5);
setScaleKey(630,1, 0.3, 0.3);

setMoveKey(   640,   0,    0,   -800,   0);
setMoveKey(   630,   1,    600,   0,   0);

setShakeChara(612,1,18,15);

playSe(613,SE_10);
---------------------------------------------
-- WHITE --
---------------------------------------------
entryFade( 620, 5, 15, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

---------------------------------------------
-- 地球からビーム --
---------------------------------------------
setVisibleUI( 639, 0);
setDisp(639,1,0);

setRotateKey( 639,1.0,1.0);
Finish_01 = 1592;
Finish_01 = entryEffect( 639,   Finish_01,   0x80,     -1,  0,  0,  0);   
setEffScaleKey( 639, Finish_01, 1.0, 1.0);
setEffAlphaKey( 639, Finish_01, 255);

playSe( 642+3, SE_11);

-- ダメージ表示
dealDamage(655+70);

entryFade( 715+70, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase(725+70);

--setEffShake(639,Finish_01,86,10);

else 
-----------------------------------------
--敵側の攻撃
-----------------------------------------
entryFade( 0, 2, 4, 8, 254, 157, 18, 100);     -- white fade
------------------------------------------------------
changeAnime( 0, 0, 0);                       -- 立ち
changeAnime( 0, 1, 100);                       -- 立ち

setMoveKey(   0,   0,    0, -800,   0);
setMoveKey(   0,   1,    0, -800,   0);
setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   0,   1, 1.5, 1.5);

setDisp(1,1,0);

---------------------------------------------
-- SP01 = 150421;	--導入	ef_001 (160F) --
---------------------------------------------
setVisibleUI( 0, 0);
setRotateKey( 0, 0, 0); 

dounyu = entryEffect( 0,   SP_06,   0x80,     -1,  0,  0,  0);   -- ef_001
setEffScaleKey( 0, dounyu, 1.0, 1.0);
setEffAlphaKey( 0, dounyu, 255);

playSe(23,SE_01);

setEffShake(0,dounyu,160,10);

---------------------------------------------
-- white --
---------------------------------------------
entryFade( 15, 2, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

---------------------------------------------
-- white --
---------------------------------------------
entryFade( 45, 2, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

---------------------------------------------
-- white --
---------------------------------------------
entryFade( 155, 2, 5, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

---------------------------------------------
-- 背景＆集中線 --
---------------------------------------------
shuchusen1 = entryEffectLife( 0, 906, 590, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 0, shuchusen1, 1.5, 1.5);
setEffAlphaKey( 0, shuchusen1, 255);

entryFadeBg( 0, 0, 640, 0, 10, 10, 10, 200);     -- ベース暗め　背景

---------------------------------------------
-- SP02 = 150422;	--溜め	ef_002 (160F)
---------------------------------------------
setVisibleUI( 161, 0);
setRotateKey( 161, 0, 0); 

tame = entryEffect( 161,   SP_07,   0x80,     -1,  0,  0,  0);   -- ef_002
setEffScaleKey( 161, tame, 1.0, 1.0);
setEffAlphaKey( 161, tame, 255);

playSe( 76, SE_04);
playSe( 210, SE_04);

setEffShake(161,tame,160,10);
---------------------------------------------
-- white --
---------------------------------------------
entryFade( 245, 2, 7, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--[[
---------------------------------------------
-- セリフカットイン
---------------------------------------------
speff = entryEffect(  75,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  75,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe(109,SE_04);

--　ゴゴゴゴゴ　を入れる(90〜157 最後は巨大化　153〜157)
gogogo = entryEffectLife(90,190006,67,0x100,-1,0,0,520);
setEffScaleKey(90,gogogo,0.7,0.7);
setEffScaleKey(153,gogogo,0.7,0.7);
setEffScaleKey(156,gogogo,2.0,2.0);
setEffShake(90,gogogo,67,4);
]]--

---------------------------------------------
-- white --
---------------------------------------------
entryFade( 316, 2, 12, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

---------------------------------------------
-- NAME & CARD CUT IN (90F) -- 
---------------------------------------------
--[[
speff = entryEffect(  330,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

playSe(330,SE_06);
]]
-- ** 極限用 ** --
if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    playSe( 330, SE_05);
    speff = entryEffect( 330, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    
    
    elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    playSe( 330, SE_05);
    speff = entryEffect( 330, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    
    
    elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    playSe( 330, SE_05);
    speff = entryEffect( 330, 1121, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    end
---------------------------------------------
-- white --
---------------------------------------------
entryFade( 414, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

---------------------------------------------
-- SP03 = 150423;	--正面に放つ	ef_003 (40F)
---------------------------------------------
setVisibleUI( 421, 0);
setRotateKey( 421, 0, 0); 

syoumen = entryEffect( 421,   SP_03,   0x80,     -1,  0,  0,  0);   -- ef_003
setEffScaleKey( 421, syoumen, -1.0, 1.0);
setEffAlphaKey( 421, syoumen, 255);

setEffShake(421,syoumen,40,10);

playSe(456,SE_07);
---------------------------------------------
-- WHITE --
---------------------------------------------
entryFade( 495, 3, 8, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

---------------------------------------------
-- SP04 = 150424;	--横向きに放つ	ef_004 (90F)
---------------------------------------------
setVisibleUI( 503, 0);
setRotateKey( 503, 0, 0); 

shuchusen2 = entryEffectLife( 503, 920, 85, 0x80,  -1, 0,  0,  0);   -- 集中線(横)
setEffScaleKey( 0, shuchusen2, 1.0, 1.0);
setEffAlphaKey( 0, shuchusen2, 255);

yoko = entryEffect( 503,   SP_09,   0x80,     -1,  0,  0,  0);   -- ef_004
setEffScaleKey( 503, yoko, 1.0, 1.0);
setEffAlphaKey( 503, yoko, 255);

setEffShake(503,yoko,90,10);

-- ズオッ　を入れる　
zuo = entryEffectLife(508,10012,29,0x100,-1,0,80,270);
setEffScaleKey(508,zuo,0.2,0.2);
setEffRotateKey(508,zuo,20);
setEffMoveKey(510,zuo,100,320,0);
setEffScaleKey(510,zuo,1.0,1.0);
setEffScaleKey(512,zuo,3.0,3.0);
setEffMoveKey(530,zuo,110,350,0);
setEffScaleKey(530,zuo,5.0,5.0);
setEffAlphaKey( 508, zuo, 255);
setEffAlphaKey( 520, zuo, 255);
setEffAlphaKey( 537, zuo, 20);

setEffShake(508,zuo,29,10);

playSe(525,SE_06);
---------------------------------------------
-- WHITE --
---------------------------------------------
entryFade( 581, 2, 9, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

---------------------------------------------
-- SP05 = 150425;	--敵に迫る	ef_005  (40F)
---------------------------------------------
setVisibleUI( 591, 0);
setRotateKey( 591, 0, 0); 

changeAnime(590,1,104);
setDisp(590,1,1);
setScaleKey(590,1, 1.0, 1.0);
setMoveKey(590,1,200,0,0);

--setScaleKey(610,1, 1.0, 1.0);
--setMoveKey(610,1,200,0,0);
--setScaleKey(610,1, 1.0, 1.0);
--setMoveKey(610,1,150,0,0);



shuchusen3 = entryEffectLife( 590, 921, 45, 0x80,  -1, 0,  0,  0);   -- 集中線（放射）
setEffScaleKey( 590, shuchusen3, 1.0, 1.0);
setEffAlphaKey( 590, shuchusen3, 255);

semaru = entryEffectLife( 591,   SP_05, 45,   0x100,     -1,  0,  0,  0);   -- ef_005
setEffScaleKey( 591, semaru, 1.0, 1.0);
setEffAlphaKey( 591, semaru, 255);
setEffMoveKey(600,semaru,100,0,0);

setEffShake(591,semaru,40,10);

-- ズドドドドッ　を入れる
zudodo = entryEffectLife(591,10014,40,0x100,-1,0,170,370);
setEffRotateKey(591,zudodo,0);
setEffScaleKey(591,zudodo,3.0,3.0);
setEffShake(591,zudodo,29,10);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then
--[[
SP_dodge = 510; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(SP_dodge+10);

]]
SP_dodge = 601; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

-- ** カットイン部分 ** --
speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350, 1000 );   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え
  
kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350, 1100 );   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge+12, 67);

entryFade( SP_dodge+17, 5,  10, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setMoveKey ( SP_dodge+12,1,200,0,0);
setScaleKey( SP_dodge+12,1,2.5,2.5);

setMoveKey(   SP_dodge+5+4+12,   1,    0,   0,   0);
setScaleKey( SP_dodge+5+4+12, 1, 1.0, 1.0);

setDisp(SP_dodge+10+12,1,0);

endPhase(SP_dodge+10+12); --611


do return end
else end
setShake(590,100,5);
------------------------------------------------------
-- 敵やられる
------------------------------------------------------

changeAnime(612,1,108);
setMoveKey(613,1,200,0,0);
setScaleKey(612,1, 2.5, 2.5);
setScaleKey(630,1, 0.3, 0.3);

setMoveKey(   640,   0,    0,   -800,   0);
setMoveKey(   630,   1,    600,   0,   0);

setShakeChara(612,1,18,15);

playSe(613,SE_10);
---------------------------------------------
-- WHITE --
---------------------------------------------
entryFade( 620, 5, 15, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

---------------------------------------------
-- 地球からビーム --
---------------------------------------------
setDisp(639,1,0);
setVisibleUI( 639, 0);
setRotateKey( 639,1.0,1.0);
Finish_01 = 1592;
Finish_01 = entryEffect( 639,   Finish_01,   0x80,     -1,  0,  0,  0);   
setEffScaleKey( 639, Finish_01, 1.0, 1.0);
setEffAlphaKey( 639, Finish_01, 255);

playSe( 642+3, SE_11);

-- ダメージ表示
dealDamage(655+70);

entryFade( 715+70, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase(725+70);


--setEffShake(639,Finish_01,86,10);

end