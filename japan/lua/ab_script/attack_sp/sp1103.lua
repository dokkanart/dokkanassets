
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

SE_13 = 1018; --高速ダッシュ
SE_14 = 1021; --ドリル音
SE_15 = 1044; --地響き
SE_16 = 1033; --攻撃

SP_01 = 150398;--導入タメ
SP_02 = 150399;--正面ドリル手前
SP_03 = 150400;--横ドリル巨大化
SP_04 = 150401;--ドリル引きずる
SP_05 = 150402;--敵吹っ飛ぶ
SP_06 = 150403;--導入タメ敵側
SP_07 = 150404;--正面ドリル手前敵側
SP_08 = 150405;--横ドリル巨大化敵側 
SP_09 = 150406;--吹き飛ぶヒットエフェクト

multi_frm = 2;


setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

------------------------------------------------------
-- 気溜(120F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

spep_1=0;
setVisibleUI( spep_1, 0);

setDisp(spep_1 ,0,0);
setDisp(spep_1 ,1,0);

entryFade( spep_1, 0,  3, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade 
entryFadeBg( spep_1 , 0, 120, 0, 10, 10, 10, 255);          -- 背景黒



tame = entryEffect( spep_1 , SP_01, 0x100, -1,  0,  0,  0);   -- タメポーズ
setEffAlphaKey(spep_1 ,tame,255);
setEffScaleKey( spep_1 , tame, 1, 1);
setEffMoveKey(spep_1 ,tame,0,0);
setEffShake(spep_1, tame, 120,10);

setEffAlphaKey(spep_1+118 ,tame,255);
setEffAlphaKey(spep_1+120 ,tame,0);
setEffMoveKey(spep_1+120 ,tame,0,0);
setEffScaleKey( spep_1+120 , tame, 1, 1);


shuchusen1 = entryEffectLife( spep_1+2 , 906, 120, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_1+2 , shuchusen1, 1.5, 1.5);

entryFade( spep_1+35, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


entryEffectLife(  spep_1+40, 1500, 100,  0,    -1,  0,  0,  0);    -- eff_001
entryEffectLife(  spep_1+40, 1501, 100,  0x80, -1,  0,  0,  0);    -- eff_002

playSe(spep_1+50, SE_01);

playSe(spep_1+40, SE_04);

speff = entryEffect(  spep_1+40,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_1+40,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え


ct = entryEffectLife( spep_1+40, 190006, 80, 0x100, -1, 0, 250, 450);    -- ゴゴゴゴ
setEffRotateKey(spep_1+40, ct, 10);
setEffAlphaKey( spep_1+40, ct, 255);
setEffScaleKey( spep_1+40, ct, 0.7, 0.7);
setEffAlphaKey( spep_1+80, ct, 255);
setEffAlphaKey( spep_1+80, ct, 0);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
spep_2=spep_1+120;

entryFade( spep_2-5, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
playSe( spep_2 , SE_05);

speff = entryEffect(  spep_2 ,   1507,   0,  -1,  0,  0,  0);   -- カード

setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

------------------------------------------------------
-- 画面手前へドリル巨大化(120F)
------------------------------------------------------
spep_3=spep_2+90;

entryFade( spep_3-5, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_3 , 0, 120, 0, 10, 10, 10, 255);          -- ベース真っ暗　背景

shuchusen3 = entryEffectLife( spep_3 , 906, 120, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3 , shuchusen3, 1.5, 1.5);

kyodai = entryEffect( spep_3 , SP_02, 0x80, -1,  0,  0,  0);   -- 正面ドリル巨大化
setEffAlphaKey(spep_3 ,kyodai,255);
setEffScaleKey( spep_3 , kyodai, 1, 1);
setEffMoveKey(spep_3 ,kyodai,0,0);
setEffShake(spep_3, kyodai, 120,10);

setEffScaleKey( spep_3+120 , kyodai, 1, 1);
setEffAlphaKey(spep_3+118 ,kyodai,255);
setEffAlphaKey(spep_3+120 ,kyodai,0);
setEffMoveKey(spep_3+120 ,kyodai,0,0);

playSe( spep_3+16, SE_13);

entryFade( spep_3+14, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- 書き文字エントリー
ct = entryEffectLife( spep_3+16, 10012, 50, 0, -1, 0, 200, 400); -- ズオッ
setEffShake(spep_3+16, ct, 32, 20);
setEffRotateKey( spep_3+16, ct, 30);
setEffAlphaKey(spep_3+16+8, ct, 255);
setEffAlphaKey(spep_3+16+30, ct, 255);
setEffAlphaKey(spep_3+16+40, ct, 0);
setEffScaleKey(spep_3+16, ct, 0.0, 0.0);
setEffScaleKey(spep_3+16+12, ct, 3.5, 3.5);
setEffScaleKey(spep_3+16+32, ct, 3.5, 3.5);
setEffScaleKey(spep_3+16+60, ct, 6.0, 6.0);

------------------------------------------------------
-- 横図ドリル巨大化(90F)
------------------------------------------------------

spep_4=spep_3+120 ;
entryFade( spep_4-5, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_4 , 0, 90, 0, 10, 10, 10, 180);          -- ベース真っ暗　背景

ryusen4 = entryEffectLife( spep_4, 921, 90, 0x80,  -1,  0,  0,  0); -- 流線
setEffScaleKey( spep_4, ryusen4, 1.5 , 1.5);
setEffAlphaKey( spep_4, ryusen4, 255);
setEffRotateKey( spep_4, ryusen4, 200);


--shuchusen4 = entryEffectLife( spep_4 , 906, 90, 0x100,  -1, 0,  0,  0);   -- 集中線
--setEffScaleKey( spep_4 , shuchusen4, 1.5, 1.5);

playSe( spep_4, SE_14);

chisai = entryEffect( spep_4 , SP_03, 0x80, -1,  0,  0,  0);   -- 横構図ドリル巨大化
setEffAlphaKey(spep_4 ,chisai ,255);
setEffScaleKey( spep_4 , chisai , 1, 1);
setEffMoveKey(spep_4 ,chisai ,0,0);
setEffShake(spep_4, chisai , 90,10);

setEffScaleKey( spep_4+90 , chisai , 1, 1);
setEffAlphaKey(spep_4+88 ,chisai,255);
setEffAlphaKey(spep_4+90 ,chisai,0);
setEffMoveKey(spep_4+90 ,chisai,0,0);


------------------------------------------------------
-- ドリルが伸びて下に向かう(190F)
------------------------------------------------------
spep_5=spep_4+90;


entryFade( spep_5-5, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_5 , 0, 190, 0, 10, 10, 10, 255);          -- ベース真っ暗　背景

shuchusen5 = entryEffectLife( spep_5 , 906, 190, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_5 , shuchusen5, 1.5, 1.5);

hassya = entryEffect( spep_5 , SP_04, 0x80, -1,  0,  0,  0);   -- 地を這うドリル
setEffAlphaKey(spep_5 ,hassya ,255);
setEffScaleKey( spep_5 , hassya , 1, 1);
setEffMoveKey(spep_5 ,hassya ,0,0);
setEffShake(spep_5, hassya , 190,10);

setEffAlphaKey(spep_5+188 ,hassya,255);
setEffAlphaKey(spep_5+190 ,hassya,0);
setEffMoveKey(spep_5+190 ,hassya,0,0);
setEffScaleKey( spep_5+190 , hassya , 1, 1);
setEffMoveKey(spep_5+190 ,hassya ,0,0);
setEffScaleKey( spep_5+190 , hassya , 1, 1);

seId2 =playSe( spep_5, SE_14);
seId =playSe( spep_5+10, SE_15);

-- 書き文字エントリー特殊
ct = entryEffectLife( spep_5, 10014, 75, 0, -1, 0, 100, 355); -- ズドドッ
setEffShake(spep_5, ct, 99, 20);
setEffScaleKey( spep_5, ct, 3, 3);
setEffRotateKey(spep_5, ct, 70);
setEffAlphaKey(spep_5, ct, 255);
setEffAlphaKey(spep_5+60, ct, 255);
setEffScaleKey( spep_5+60, ct, 3, 3);
setEffAlphaKey(spep_5+80, ct, 0);
setEffScaleKey( spep_5+80, ct, 6, 6);

entryFade( spep_5+75, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp( spep_5+80, 1, 1);
changeAnime( spep_5+80, 1, 118);                      
setShakeChara(spep_5+80, 1, 110, 10);
setMoveKey(  spep_5+80,    1,   400,  -600,   0);
setScaleKey(  spep_5+80,   1,   4,  4);




------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 514; --エンドフェイズのフレーム数を置き換える
stopSe(SP_dodge-16, seId2,   4);
stopSe(SP_dodge-16, seId,   4);
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

playSe( spep_5+96, SE_09);

setMoveKey(  spep_5+96,    1,   100,  -200,   0);
setScaleKey(  spep_5+96,   1,   2.5,  2.5);

setMoveKey(  spep_5+106,    1,   120,  -220,   0);
setScaleKey(  spep_5+106,   1,   2.6,  2.6);

setMoveKey(  spep_5+116,    1,   140,  -240,   0);
setScaleKey(  spep_5+116,   1,   2.7,  2.7);

setMoveKey(  spep_5+126,    1,   160,  -260,   0);
setScaleKey(  spep_5+126,   1,   2.8,  2.8);

setMoveKey(  spep_5+136,    1,   180,  -280,   0);
setScaleKey(  spep_5+136,   1,   2.8,  2.8);

setMoveKey(  spep_5+146,    1,   200,  -300,   0);
setScaleKey(  spep_5+146,   1,   2.9,  2.9);

setMoveKey(  spep_5+160,    1,   220,  -320,   0);
setScaleKey(  spep_5+160,   1,   3,  3);

setMoveKey(  spep_5+190,    1,   400,  -600,   0);
setScaleKey(  spep_5+190,   1,   4,  4);





------------------------------------------------------
-- 迫る( 100F)
------------------------------------------------------

spep_6=spep_5+190;
setDisp( spep_6+2, 0, 0);
setDisp( spep_6+2, 1, 1);
changeAnime( spep_6+2, 1, 105); 
setShakeChara(spep_6+2, 1, 100,10);           
setScaleKey(  spep_6+2,   1,   4,  4);
setMoveKey(  spep_6+2,    1,   0,  -100,   0);

entryFade( spep_6-5, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_6 , 0, 100, 0, 10, 10, 10, 255);          -- ベース真っ暗　背景
entryFade( spep_6-5, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


setMoveKey(  spep_6+100,    1,  0,  0,   0);
setScaleKey(  spep_6+100,   1,   1,  1);

semaru = entryEffect( spep_6 , SP_05, 0x80, -1,  0,  0,  0);   -- 飛んでく
setEffAlphaKey(spep_6 ,semaru ,255);
setEffScaleKey( spep_6 , semaru , 1, 1);
setEffMoveKey(spep_6 ,semaru ,0,0);
--setEffShake(spep_6, semaru , 100,10);
setEffAlphaKey(spep_6+100 ,semaru ,255);
setEffScaleKey( spep_6+100 , semaru , 1, 1);
setEffMoveKey(spep_6+100 ,semaru ,0,0);

setEffAlphaKey(spep_6+100 ,semaru,255);
--setEffAlphaKey(spep_6+40 ,semaru,0);
setEffMoveKey(spep_6+100 ,semaru,0,0);


ataru = entryEffect( spep_6 , SP_09, 0x100, -1,  0,  0,  0);   -- 飛んでく
setEffAlphaKey(spep_6 ,ataru ,255);
setEffScaleKey( spep_6 , ataru , 1, 1);
setEffMoveKey(spep_6 ,ataru ,0,0);
setEffAlphaKey(spep_6+100 ,ataru ,255);
setEffScaleKey( spep_6+100 , ataru , 1, 1);
setEffMoveKey(spep_6+100 ,ataru ,0,0);

setEffAlphaKey(spep_6+100 ,ataru,255);
--setEffAlphaKey(spep_6+40 ,semaru,0);
setEffMoveKey(spep_6+100 ,ataru,0,0);

-- 書き文字エントリー
ct = entryEffectLife( spep_6, 10014, 75, 0, -1, 0, 50, 300); -- ズドドッ
setEffShake(spep_6, ct, 100, 20);
setEffScaleKey( spep_6, ct, 3, 3);
setEffRotateKey(spep_6, ct, 70);
setEffAlphaKey(spep_6, ct, 255);

setEffAlphaKey(spep_6+60, ct, 255);
setEffScaleKey( spep_6+60, ct, 3, 3);
setEffAlphaKey(spep_6+80, ct, 0);
setEffScaleKey( spep_6+80, ct, 6, 6);

playSe( spep_6, SE_09);
playSe( spep_6+10, SE_16);
playSe( spep_6+20, SE_16);
playSe( spep_6+30, SE_16);
playSe( spep_6+40, SE_16);
playSe( spep_6+50, SE_16);
playSe( spep_6+60, SE_16);
playSe( spep_6+70, SE_16);
playSe( spep_6+80, SE_16);
playSe( spep_6+90, SE_16);


entryEffect( spep_6 , 3, 0x100, -1,  0,  0,  0);
entryEffect( spep_6 , 3, 0x100, -1,  500,  0,  0);


dealDamage(spep_6+20);
setDamage( spep_6+24, 1, 0);  -- ダメージ振動等


endPhase(spep_6+86);

else



------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 気溜(120F)
------------------------------------------------------
spep_1 =0;
setVisibleUI( spep_1, 0);

setDisp(spep_1 ,0,0);
setDisp(spep_1 ,1,0);

entryFade( spep_1, 0,  3, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade 
entryFadeBg( spep_1 , 0, 100, 0, 10, 10, 10, 255);          -- 背景黒

shuchusen1 = entryEffectLife( spep_1+2 , 906, 120, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_1+2 , shuchusen1, 1.5, 1.5);
--[[
tame = entryEffect( spep_1 , SP_01, 0x80, -1,  0,  0,  0);   -- タメポーズ
setEffAlphaKey(spep_1 ,tame,255);
setEffScaleKey( spep_1 , tame, 1, 1);
setEffMoveKey(spep_1 ,tame,0,0);
setEffShake(spep_1, tame, 120,10);
]]
entryFade( spep_1+35, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--entryEffectLife(  spep_1+40, 1501, 100,  0x80, -1,  0,  0,  0);    -- eff_002
--entryEffectLife(  spep_1+40, 1500, 100,  0,    -1,  0,  0, spep_1=0;
setVisibleUI( spep_1, 0);

setDisp(spep_1 ,0,0);
setDisp(spep_1 ,1,0);

entryFade( spep_1, 0,  3, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade 
entryFadeBg( spep_1 , 0, 120, 0, 10, 10, 10, 255);          -- 背景黒



tame = entryEffect( spep_1 , SP_06, 0x100, -1,  0,  0,  0);   -- タメポーズ
setEffAlphaKey(spep_1 ,tame,255);
setEffScaleKey( spep_1 , tame, 1, 1);
setEffMoveKey(spep_1 ,tame,0,0);
setEffShake(spep_1, tame, 120,10);

setEffAlphaKey(spep_1+118 ,tame,255);
setEffAlphaKey(spep_1+120 ,tame,0);
setEffMoveKey(spep_1+120 ,tame,0,0);
setEffScaleKey( spep_1+120 , tame, 1, 1);


shuchusen1 = entryEffectLife( spep_1+2 , 906, 120, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_1+2 , shuchusen1, 1.5, 1.5);

entryFade( spep_1+35, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


entryEffectLife(  spep_1+40, 1500, 100,  0,    -1,  0,  0,  0);    -- eff_001
entryEffectLife(  spep_1+40, 1501, 100,  0x80, -1,  0,  0,  0);    -- eff_002

playSe(spep_1+50, SE_01);

playSe(spep_1+40, SE_04);

--speff = entryEffect(  spep_1+40,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  spep_1+40,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え


--ct = entryEffectLife( spep_1+40, 190006, 80, 0x100, -1, 0, 250, 450);    -- ゴゴゴゴ
--setEffRotateKey(spep_1+40, ct, 10);
--setEffAlphaKey( spep_1+40, ct, 255);
--setEffScaleKey( spep_1+40, ct, 0.7, 0.7);
--setEffAlphaKey( spep_1+80, ct, 255);
--setEffAlphaKey( spep_1+80, ct, 0);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
spep_2=spep_1+120;

entryFade( spep_2-5, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
playSe( spep_2 , SE_05);

speff = entryEffect(  spep_2 ,   1507,   0,  -1,  0,  0,  0);   -- カード

setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

------------------------------------------------------
-- 画面手前へドリル巨大化(120F)
------------------------------------------------------
spep_3=spep_2+90;

entryFade( spep_3-5, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_3 , 0, 120, 0, 10, 10, 10, 255);          -- ベース真っ暗　背景

shuchusen3 = entryEffectLife( spep_3 , 906, 120, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3 , shuchusen3, 1.5, 1.5);

kyodai = entryEffect( spep_3 , SP_02, 0x80, -1,  0,  0,  0);   -- 正面ドリル巨大化
setEffAlphaKey(spep_3 ,kyodai,255);
setEffScaleKey( spep_3 , kyodai, -1, 1);
setEffMoveKey(spep_3 ,kyodai,0,0);
setEffShake(spep_3, kyodai, 120,10);

setEffScaleKey( spep_3+120 , kyodai, -1, 1);
setEffAlphaKey(spep_3+118 ,kyodai,255);
setEffAlphaKey(spep_3+120 ,kyodai,0);
setEffMoveKey(spep_3+120 ,kyodai,0,0);

playSe( spep_3+16, SE_13);

entryFade( spep_3+14, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- 書き文字エントリー
ct = entryEffectLife( spep_3+16, 10012, 50, 0, -1, 0, 200, 400); -- ズオッ
setEffShake(spep_3+16, ct, 32, 20);
setEffRotateKey( spep_3+16, ct, 30);
setEffAlphaKey(spep_3+16+8, ct, 255);
setEffAlphaKey(spep_3+16+30, ct, 255);
setEffAlphaKey(spep_3+16+40, ct, 0);
setEffScaleKey(spep_3+16, ct, 0.0, 0.0);
setEffScaleKey(spep_3+16+12, ct, 3.5, 3.5);
setEffScaleKey(spep_3+16+32, ct, 3.5, 3.5);
setEffScaleKey(spep_3+16+60, ct, 6.0, 6.0);

------------------------------------------------------
-- 横図ドリル巨大化(90F)
------------------------------------------------------

spep_4=spep_3+120 ;
entryFade( spep_4-5, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_4 , 0, 90, 0, 10, 10, 10, 180);          -- ベース真っ暗　背景

ryusen4 = entryEffectLife( spep_4, 921, 90, 0x80,  -1,  0,  0,  0); -- 流線
setEffScaleKey( spep_4, ryusen4, 1.5 , 1.5);
setEffAlphaKey( spep_4, ryusen4, 255);
setEffRotateKey( spep_4, ryusen4, 200);


--shuchusen4 = entryEffectLife( spep_4 , 906, 90, 0x100,  -1, 0,  0,  0);   -- 集中線
--setEffScaleKey( spep_4 , shuchusen4, 1.5, 1.5);

playSe( spep_4, SE_14);

chisai = entryEffect( spep_4 , SP_08, 0x80, -1,  0,  0,  0);   -- 横構図ドリル巨大化
setEffAlphaKey(spep_4 ,chisai ,255);
setEffScaleKey( spep_4 , chisai , 1, 1);
setEffMoveKey(spep_4 ,chisai ,0,0);
setEffShake(spep_4, chisai , 90,10);

setEffScaleKey( spep_4+90 , chisai , 1, 1);
setEffAlphaKey(spep_4+88 ,chisai,255);
setEffAlphaKey(spep_4+90 ,chisai,0);
setEffMoveKey(spep_4+90 ,chisai,0,0);


------------------------------------------------------
-- ドリルが伸びて下に向かう(190F)
------------------------------------------------------
spep_5=spep_4+90;


entryFade( spep_5-5, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_5 , 0, 190, 0, 10, 10, 10, 255);          -- ベース真っ暗　背景

shuchusen5 = entryEffectLife( spep_5 , 906, 190, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_5 , shuchusen5, 1.5, 1.5);

hassya = entryEffect( spep_5 , SP_04, 0x80, -1,  0,  0,  0);   -- 地を這うドリル
setEffAlphaKey(spep_5 ,hassya ,255);
setEffScaleKey( spep_5 , hassya , 1, 1);
setEffMoveKey(spep_5 ,hassya ,0,0);
setEffShake(spep_5, hassya , 190,10);

setEffAlphaKey(spep_5+188 ,hassya,255);
setEffAlphaKey(spep_5+190 ,hassya,0);
setEffMoveKey(spep_5+190 ,hassya,0,0);
setEffScaleKey( spep_5+190 , hassya , 1, 1);
setEffMoveKey(spep_5+190 ,hassya ,0,0);
setEffScaleKey( spep_5+190 , hassya , 1, 1);

seId2 =playSe( spep_5, SE_14);
seId =playSe( spep_5-10, SE_15);

-- 書き文字エントリー特殊
ct = entryEffectLife( spep_5, 10014, 75, 0, -1, 0, 100, 355); -- ズドドッ
setEffShake(spep_5, ct, 99, 20);
setEffScaleKey( spep_5, ct, 3, 3);
setEffRotateKey(spep_5, ct, 0);
setEffAlphaKey(spep_5, ct, 255);
setEffAlphaKey(spep_5+60, ct, 255);
setEffScaleKey( spep_5+60, ct, 3, 3);
setEffAlphaKey(spep_5+80, ct, 0);
setEffScaleKey( spep_5+80, ct, 6, 6);

entryFade( spep_5+75, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp( spep_5+80, 1, 1);
changeAnime( spep_5+80, 1, 118);                      
setShakeChara(spep_5+80, 1, 110, 10);
setMoveKey(  spep_5+80,    1,   400,  -600,   0);
setScaleKey(  spep_5+80,   1,   4,  4);



------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 514; --エンドフェイズのフレーム数を置き換える
stopSe(SP_dodge-16, seId2,   4);
stopSe(SP_dodge-16, seId,   4);
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

playSe( spep_5+96, SE_09);
--playSe( spep_5+96, SE_09);

setMoveKey(  spep_5+96,    1,   100,  -200,   0);
setScaleKey(  spep_5+96,   1,   2.5,  2.5);

setMoveKey(  spep_5+106,    1,   120,  -220,   0);
setScaleKey(  spep_5+106,   1,   2.6,  2.6);

setMoveKey(  spep_5+116,    1,   140,  -240,   0);
setScaleKey(  spep_5+116,   1,   2.7,  2.7);

setMoveKey(  spep_5+126,    1,   160,  -260,   0);
setScaleKey(  spep_5+126,   1,   2.8,  2.8);

setMoveKey(  spep_5+136,    1,   180,  -280,   0);
setScaleKey(  spep_5+136,   1,   2.8,  2.8);

setMoveKey(  spep_5+146,    1,   200,  -300,   0);
setScaleKey(  spep_5+146,   1,   2.9,  2.9);

setMoveKey(  spep_5+160,    1,   220,  -320,   0);
setScaleKey(  spep_5+160,   1,   3,  3);

setMoveKey(  spep_5+190,    1,   400,  -600,   0);
setScaleKey(  spep_5+190,   1,   4,  4);





------------------------------------------------------
-- 迫る( 100F)
------------------------------------------------------

spep_6=spep_5+190;
setDisp( spep_6+2, 0, 0);
setDisp( spep_6+2, 1, 1);
changeAnime( spep_6+2, 1, 105); 
setShakeChara(spep_6+2, 1, 100,10);           
setScaleKey(  spep_6+2,   1,   4,  4);
setMoveKey(  spep_6+2,    1,   0,  -100,   0);

entryFade( spep_6-5, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_6 , 0, 100, 0, 10, 10, 10, 255);          -- ベース真っ暗　背景
entryFade( spep_6-5, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


setMoveKey(  spep_6+100,    1,  0,  0,   0);
setScaleKey(  spep_6+100,   1,   1,  1);

semaru = entryEffect( spep_6 , SP_05, 0x80, -1,  0,  0,  0);   -- 飛んでく
setEffAlphaKey(spep_6 ,semaru ,255);
setEffScaleKey( spep_6 , semaru , 1, 1);
setEffMoveKey(spep_6 ,semaru ,0,0);
setEffAlphaKey(spep_6+100 ,semaru ,255);
setEffScaleKey( spep_6+100 , semaru , 1, 1);
setEffMoveKey(spep_6+100 ,semaru ,0,0);
--setEffShake(spep_6, semaru , 100,10);

setEffAlphaKey(spep_6+100 ,semaru,255);
--setEffAlphaKey(spep_6+40 ,semaru,0);
setEffMoveKey(spep_6+100 ,semaru,0,0);


ataru = entryEffect( spep_6 , SP_09, 0x100, -1,  0,  0,  0);   -- 飛んでく
setEffAlphaKey(spep_6 ,ataru ,255);
setEffScaleKey( spep_6 , ataru , 1, 1);
setEffMoveKey(spep_6 ,ataru ,0,0);
setEffAlphaKey(spep_6+100 ,ataru ,255);
setEffScaleKey( spep_6+100 , ataru , 1, 1);
setEffMoveKey(spep_6+100 ,ataru ,0,0);

setEffAlphaKey(spep_6+100 ,ataru,255);
--setEffAlphaKey(spep_6+40 ,semaru,0);
setEffMoveKey(spep_6+100 ,ataru,0,0);

-- 書き文字エントリー
ct = entryEffectLife( spep_6, 10014, 75, 0, -1, 0, 50, 300); -- ズドドッ
setEffShake(spep_6, ct, 100, 20);
setEffScaleKey( spep_6, ct, 3, 3);
setEffRotateKey(spep_6, ct, 0);
setEffAlphaKey(spep_6, ct, 255);

setEffAlphaKey(spep_6+60, ct, 255);
setEffScaleKey( spep_6+60, ct, 3, 3);
setEffAlphaKey(spep_6+80, ct, 0);
setEffScaleKey( spep_6+80, ct, 6, 6);

playSe( spep_6, SE_09);
playSe( spep_6+10, SE_16);
playSe( spep_6+20, SE_16);
playSe( spep_6+30, SE_16);
playSe( spep_6+40, SE_16);
playSe( spep_6+50, SE_16);
playSe( spep_6+60, SE_16);
playSe( spep_6+70, SE_16);
playSe( spep_6+80, SE_16);
playSe( spep_6+90, SE_16);


entryEffect( spep_6 , 3, 0x100, -1,  0,  0,  0);
entryEffect( spep_6 , 3, 0x100, -1,  500,  0,  0);


dealDamage(spep_6+20);
setDamage( spep_6+24, 1, 0);  -- ダメージ振動等


endPhase(spep_6+86);


end
