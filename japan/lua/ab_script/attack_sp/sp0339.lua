

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



SP_01 = 150279;--ef_101
SP_02 = 150280;--ef_102
SP_03 = 150281;--ef_103 
SP_04 = 150282;--ef_104 
SP_05 = 1563;
SP_01e = 150288;--ef_101
SP_02e = 150289;--ef_102
SP_teki = 150304;--ef_103 

--[[
SP_01 = 150283;--ef_101
SP_02 = 150284;--ef_102
SP_03 = 150285;--ef_103 
SP_04 = 150286;--ef_104 
SP_05 = 150287;--ef_105 
]]


multi_frm = 2;

changeAnime( 0, 0, 1);                       -- 立ち
changeAnime( 0, 1, 100);                       -- 立ち
--setAnimeLoop( 0, 0, 1);
--setAnimeLoop( 0, 1, 1);

setDisp( 0, 1, 0);
setDisp( 0, 0, 1);

setMoveKey(   0,   0,    0, -54,   0);
setMoveKey(   1,   1,    0, -54,   0);
setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   1,   1, 1.5, 1.5);


------------------------------------------------------
-- 構え(80F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then


spep_1=0;

--setBgScroll(0,100);
entryFade( spep_1+0, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_1+4, 0, 80, 0, 10, 10, 10, 150);          -- ベース暗め　背景
setVisibleUI( spep_1+4, 0);
setDisp( spep_1+4, 1, 0);
setDisp( spep_1+4, 0, 0);

playSe( spep_1+5, 1003);

kamae = entryEffect(  spep_1+4,   SP_01,   0,  -1,  0,  0,  0);   -- 
setEffScaleKey( spep_1+4, kamae, 1.0, 1.0);
setEffAlphaKey( spep_1+4, kamae, 255);

shuchusenkamae=entryEffectLife( spep_1+4, 906, 76, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_1+4, shuchusenkamae, 1.5, 1.5);
setEffAlphaKey( spep_1+4, shuchusenkamae, 255);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------

spep_2=spep_1+80 ;


entryFade( spep_2-5, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_2, 0, 80, 0, 0, 0, 0, 255);          -- ベース暗め　背景

playSe( spep_2, SE_05);
speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え




------------------------------------------------------
--aura構え(75*2F)
------------------------------------------------------
spep_3=spep_2+90 ;

entryFade( spep_3-5, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_3, 0, 60, 0, 0, 0, 0, 255);          -- ベース暗め　背景

playSe( spep_3, 1018);

shuchusenaura = entryEffectLife( spep_3, 906, 150, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3, shuchusenaura, 1.5, 1.5);
setEffAlphaKey( spep_3, shuchusenaura, 255);

aurakamae = entryEffect(  spep_3,   SP_02,   0,  -1,  0,  0,  -50);   -- 
setEffScaleKey( spep_3, aurakamae, 1.2, 1.2);
setEffAlphaKey( spep_3, aurakamae, 255);

speff = entryEffect(  spep_3+20,   1504,   0x100,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_3+20,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー
ctgogo = entryEffectLife( spep_3+20, 190006, 60, 0x100, -1, 0, 100, 500);    -- ゴゴゴゴ
setEffShake(spep_3+20, ctgogo, 40, 28);
setEffScaleKey(spep_3+20, ctgogo, 0.8, 0.8);
setEffRotateKey(spep_3+20, ctgogo, 10);
setEffAlphaKey( spep_3+20, ctgogo, 255);

playSe( spep_3+80, SE_01);
--playSe( spep_3+90, SE_01);
playSe( spep_3+100, SE_07);

shuchusenkakyuu = entryEffectLife( spep_3, 906, 120, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3, shuchusenkakyuu, 1.5, 1.5);
setEffAlphaKey( spep_3, shuchusenkakyuu, 255);

ctzuo = entryEffectLife( spep_3+100, 10012, 50, 0x100, -1, 0, 0, 400);    -- ズオッ
setEffRotateKey(spep_3+100, ctgogo, 20);
setEffAlphaKey( spep_3+100, ctzuo, 255);
setEffScaleKey( spep_3+100, ctzuo, 2.0, 2.0);
setEffScaleKey( spep_3+150, ctzuo, 3.0, 3.0);
setEffAlphaKey( spep_3+100, ctzuo, 255);
setEffAlphaKey( spep_3+150, ctzuo, 0);
setEffShake( spep_3+100, ctzuo, 45, 8);
setEffRotateKey(spep_3+150, ctzuo, 20);


------------------------------------------------------
--発射(70*2F)
------------------------------------------------------

spep_4=spep_3 +150;
entryFade( spep_4-5, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_4, 0, 140, 0, 10, 10, 10, 180);          -- ベース暗め　背景
--entryFadeBg( spep_4, 0, 140, 0, 10, 10, 10, 180);          -- ベース暗め　背景

ryusenhassya = entryEffectLife( spep_4, 921, 140, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( spep_4, ryusenhassya, -120);
setEffScaleKey( spep_4, ryusenhassya, 1.6, 1.6);
setEffAlphaKey( spep_4, ryusenhassya, 255);

hassya = entryEffect(  spep_4,   SP_03,   0,  -1,  0,  0,  -50);   -- 
setEffScaleKey( spep_4, hassya, 1.2, 1.2);
setEffAlphaKey( spep_4, hassya, 255);
playSe( spep_4+0, SE_06);
playSe( spep_4+56, SE_06);
playSe( spep_4+100, SE_07);

------------------------------------------------------
--火球(100F)
------------------------------------------------------
spep_5=spep_4 +140;
entryFade( spep_5-5, 3, 3, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_5, 0, 60, 0, 10, 10, 10, 180);          -- ベース暗め　背景
setEffRotateKey( spep_5, ryusenhassya, -120);
changeAnime( spep_5, 1, 102);                       -- 立ち

setDisp( spep_5+1, 1, 1);
setMoveKey(   spep_5+0,   1,    0, 0,   0);
setScaleKey(   spep_5+0,   1, 1.5, 1.5);
setMoveKey(   spep_5+1,   1,    1200, -1300,   0);
setScaleKey(   spep_5+1,   1, 3.5, 3.5);

ryusenkakyuu = entryEffectLife( spep_5, 921, 70, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( spep_5, ryusenkakyuu, -120);
setEffScaleKey( spep_5, ryusenkakyuu, 1.6, 1.6);
setEffAlphaKey( spep_5, ryusenkakyuu, 255);

kakyuu = entryEffect(  spep_5,   SP_04,   0x80,  -1,  0,  0,  0);   -- 
setEffScaleKey( spep_5, kakyuu, 1.0, 1.0);
setEffAlphaKey( spep_5, kakyuu, 255);


shuchusenkakyuu = entryEffectLife( spep_5, 906, 70, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_5, shuchusenkakyuu, 1.5, 1.5);
setEffAlphaKey( spep_5, shuchusenkakyuu, 255);

ctzudo = entryEffectLife( spep_5, 10014, 60, 0x100, -1, 0, 0, 400);    -- ズドドドッ
setEffRotateKey( spep_5, ctzudo, 30);

setEffAlphaKey( spep_5, ctzudo, 255);
setEffScaleKey( spep_5, ctzudo, 3.0, 3.0);
setEffScaleKey( spep_5+60, ctzudo, 4.0, 4.0);
setEffAlphaKey( spep_5, ctzudo, 255);
setEffAlphaKey( spep_5+60, ctzudo, 0);
setEffShake( spep_5, ctzudo, 45, 8);
setEffRotateKey( spep_5+60, ctzudo, 30);

setMoveKey(   spep_5+60,   1,    200, -300,   0);
setScaleKey(   spep_5+60,   1, 2.5, 2.5);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 490; --エンドフェイズのフレーム数を置き換える

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


------------------------------------------------------
--ギャン(256F)
------------------------------------------------------
spep_6=spep_5 +60;
entryFade( spep_6-5, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_6, 0, 256, 0, 10, 10, 10, 180);          -- ベース暗め　背景
setMoveKey(   spep_6,   1,    200, -300,   0);
setScaleKey(   spep_6,   1, 2.5, 2.5);
setDisp( spep_6, 1, 0);
playSe( spep_6+8, 1024);
gyan=entryEffectLife(  spep_6,  190002,  60, 0,  -1,  0,  0,  0);   
setEffReplaceTexture( gyan, 1, 1);
setEffReplaceTexture( gyan, 2, 0);                         
setEffReplaceTexture( gyan, 5, 4);

ct4 = entryEffectLife( spep_6+90, 10006, 60, 0x100, -1, 0, 0, 400);    -- ギャン

setEffAlphaKey( spep_6, ct4, 255);
setEffScaleKey( spep_6, ct4, 3.0, 3.0);
setEffScaleKey( spep_6+60, ct4, 4.0, 4.0);
setEffAlphaKey( spep_6, ct4, 255);
setEffAlphaKey( spep_6+60, ct4, 0);
setEffShake( spep_6, ct4, 45, 8);



------------------------------------------------------
--最後(256F)
------------------------------------------------------
spep_7=spep_6 +60;
spep_9=spep_7; 
entryFade( spep_9-10, 5, 20, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_6, 0, 180, 0, 0, 0, 0, 255);          -- ベース暗め　背景

crater = entryEffect(  spep_9-5,   SP_05,   0,  -1,  0,  0,  0);   -- 
setEffScaleKey( spep_9-5, crater, 1.0, 1.0);
setEffAlphaKey( spep_9-5, crater, 255);



--playSe( spep_9, 1042);
playSe( spep_9+59, SE_10);






-- ダメージ表示
dealDamage(spep_9+16+70);

entryFade( spep_9+100+70, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_9+110+70);
else


-----------------------------------------
--敵側の攻撃
-----------------------------------------
--キャラ位置
--setMoveKey( 0,    0,      0,  0,   0);

spep_1=0;

--setBgScroll(0,100);
entryFade( spep_1+0, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_1+4, 0, 80, 0, 10, 10, 10, 150);          -- ベース暗め　背景
setVisibleUI( spep_1+4, 0);
setDisp( spep_1+4, 1, 0);
setDisp( spep_1+4, 0, 0);

playSe( spep_1+5, 1003);

kamae = entryEffect(  spep_1+4,   SP_01e,   0,  -1,  0,  0,  0);   -- 
setEffScaleKey( spep_1+4, kamae, 1.0, 1.0);
setEffAlphaKey( spep_1+4, kamae, 255);

shuchusenkamae=entryEffectLife( spep_1+4, 906, 76, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_1+4, shuchusenkamae, 1.5, 1.5);
setEffAlphaKey( spep_1+4, shuchusenkamae, 255);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------

spep_2=spep_1+80 ;


entryFade( spep_2-5, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_2, 0, 80, 0, 0, 0, 0, 255);          -- ベース暗め　背景

playSe( spep_2, SE_05);
speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え




------------------------------------------------------
--aura構え(75*2F)
------------------------------------------------------
spep_3=spep_2+90 ;

entryFade( spep_3-5, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_3, 0, 60, 0, 0, 0, 0, 255);          -- ベース暗め　背景

playSe( spep_3, 1018);

shuchusenaura = entryEffectLife( spep_3, 906, 150, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3, shuchusenaura, 1.5, 1.5);
setEffAlphaKey( spep_3, shuchusenaura, 255);

aurakamae = entryEffect(  spep_3,   SP_02e,   0,  -1,  0,  0,  -50);   -- 
setEffScaleKey( spep_3, aurakamae, 1.2, 1.2);
setEffAlphaKey( spep_3, aurakamae, 255);

--speff = entryEffect(  spep_3+20,   1504,   0x100,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  spep_3+20,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー
ctgogo = entryEffectLife( spep_3+20, 190006, 60, 0x100, -1, 0, -100, 500);    -- ゴゴゴゴ
setEffShake(spep_3+20, ctgogo, 40, 28);
setEffScaleKey(spep_3+20, ctgogo, -0.8, 0.8);
setEffRotateKey(spep_3+20, ctgogo, 10);
setEffAlphaKey( spep_3+20, ctgogo, 255);

playSe( spep_3+80, SE_01);
--playSe( spep_3+90, SE_01);
playSe( spep_3+100, SE_07);

shuchusenkakyuu = entryEffectLife( spep_3, 906, 120, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3, shuchusenkakyuu, 1.5, 1.5);
setEffAlphaKey( spep_3, shuchusenkakyuu, 255);

ctzuo = entryEffectLife( spep_3+100, 10012, 50, 0x100, -1, 0, 0, 400);    -- ズオッ
setEffRotateKey(spep_3+100, ctgogo, 20);
setEffAlphaKey( spep_3+100, ctzuo, 255);
setEffScaleKey( spep_3+100, ctzuo, 2.0, 2.0);
setEffScaleKey( spep_3+150, ctzuo, 3.0, 3.0);
setEffAlphaKey( spep_3+100, ctzuo, 255);
setEffAlphaKey( spep_3+150, ctzuo, 0);
setEffShake( spep_3+100, ctzuo, 45, 8);
setEffRotateKey(spep_3+150, ctzuo, 20);


------------------------------------------------------
--発射(70*2F)
------------------------------------------------------

spep_4=spep_3 +150;
entryFade( spep_4-5, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_4, 0, 140, 0, 10, 10, 10, 180);          -- ベース暗め　背景
--entryFadeBg( spep_4, 0, 140, 0, 10, 10, 10, 180);          -- ベース暗め　背景

ryusenhassya = entryEffectLife( spep_4, 921, 140, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( spep_4, ryusenhassya, -120);
setEffScaleKey( spep_4, ryusenhassya, 1.6, 1.6);
setEffAlphaKey( spep_4, ryusenhassya, 255);
--SP_teki = 150304;--ef_103 
hassya = entryEffect(  spep_4,   150304,   0,  -1,  0,  0,  0);   -- 
--hassya = entryEffect(  spep_4,   SP_03,   0,  -1,  0,  0,  0);   -- 
setEffScaleKey( spep_4, hassya, 1.0, 1.0);
setEffAlphaKey( spep_4, hassya, 255);
playSe( spep_4+0, SE_06);
playSe( spep_4+56, SE_06);
playSe( spep_4+100, SE_07);

------------------------------------------------------
--火球(100F)
------------------------------------------------------
spep_5=spep_4 +140;
entryFade( spep_5-5, 3, 3, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_5, 0, 60, 0, 10, 10, 10, 180);          -- ベース暗め　背景
setEffRotateKey( spep_5, ryusenhassya, -120);
changeAnime( spep_5, 1, 102);                       -- 立ち

setDisp( spep_5+1, 1, 1);
setMoveKey(   spep_5+0,   1,    0, 0,   0);
setScaleKey(   spep_5+0,   1, 1.5, 1.5);
setMoveKey(   spep_5+1,   1,    1200, -1300,   0);
setScaleKey(   spep_5+1,   1, 3.5, 3.5);

ryusenkakyuu = entryEffectLife( spep_5, 921, 70, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( spep_5, ryusenkakyuu, -120);
setEffScaleKey( spep_5, ryusenkakyuu, 1.6, 1.6);
setEffAlphaKey( spep_5, ryusenkakyuu, 255);

kakyuu = entryEffect(  spep_5,   SP_04,   0x80,  -1,  0,  0,  0);   -- 
setEffScaleKey( spep_5, kakyuu, 1.0, 1.0);
setEffAlphaKey( spep_5, kakyuu, 255);


shuchusenkakyuu = entryEffectLife( spep_5, 906, 70, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_5, shuchusenkakyuu, 1.5, 1.5);
setEffAlphaKey( spep_5, shuchusenkakyuu, 255);

ctzudo = entryEffectLife( spep_5, 10014, 60, 0x100, -1, 0, 0, 400);    -- ズドドドッ
setEffRotateKey( spep_5, ctzudo, -30);

setEffAlphaKey( spep_5, ctzudo, 255);
setEffScaleKey( spep_5, ctzudo, 3.0, 3.0);
setEffScaleKey( spep_5+60, ctzudo, 4.0, 4.0);
setEffAlphaKey( spep_5, ctzudo, 255);
setEffAlphaKey( spep_5+60, ctzudo, 0);
setEffShake( spep_5, ctzudo, 45, 8);
setEffRotateKey( spep_5+60, ctzudo, -30);

setMoveKey(   spep_5+60,   1,    200, -300,   0);
setScaleKey(   spep_5+60,   1, 2.5, 2.5);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 490; --エンドフェイズのフレーム数を置き換える

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


------------------------------------------------------
--ギャン(256F)
------------------------------------------------------
spep_6=spep_5 +60;
entryFade( spep_6-5, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_6, 0, 256, 0, 10, 10, 10, 180);          -- ベース暗め　背景
setMoveKey(   spep_6,   1,    200, -300,   0);
setScaleKey(   spep_6,   1, 2.5, 2.5);
setDisp( spep_6, 1, 0);
playSe( spep_6+8, 1024);
gyan=entryEffectLife(  spep_6,  190002,  60, 0,  -1,  0,  0,  0);   
setEffReplaceTexture( gyan, 1, 1);
setEffReplaceTexture( gyan, 2, 0);                         
setEffReplaceTexture( gyan, 5, 4);

ct4 = entryEffectLife( spep_6+90, 10006, 60, 0x100, -1, 0, 0, 400);    -- ギャン

setEffAlphaKey( spep_6, ct4, 255);
setEffScaleKey( spep_6, ct4, 3.0, 3.0);
setEffScaleKey( spep_6+60, ct4, 4.0, 4.0);
setEffAlphaKey( spep_6, ct4, 255);
setEffAlphaKey( spep_6+60, ct4, 0);
setEffShake( spep_6, ct4, 45, 8);



------------------------------------------------------
--最後(256F)
------------------------------------------------------
spep_7=spep_6 +60;
spep_9=spep_7; 
entryFade( spep_9-10, 5, 20, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_6, 0, 180, 0, 0, 0, 0, 255);          -- ベース暗め　背景

crater = entryEffect(  spep_9-5,   SP_05,   0,  -1,  0,  0,  0);   -- 
setEffScaleKey( spep_9-5, crater, 1.0, 1.0);
setEffAlphaKey( spep_9-5, crater, 255);



--playSe( spep_9, 1042);
playSe( spep_9+59, SE_10);






-- ダメージ表示
dealDamage(spep_9+16+70);

entryFade( spep_9+100+70, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_9+110+70);

end
