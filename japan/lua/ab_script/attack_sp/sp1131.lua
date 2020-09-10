
fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SP_01 = 150854;--ef_001
SP_02 = 150855;--ef_001e
SP_03 = 150856;--ef_002
SP_04 = 150857;--ef_003e
SP_05 = 150858;--ef_003
SP_06 = 150859;--ef_003e

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
SE_12 = 1066;
SE_13 = 1068; --爆煙

SE_12 = 09;

multi_frm = 2;



------------------------------------------------------
--溜め
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

setAnimeLoop(  0, 0, 0);


setDisp( 0, 1, 0);
setDisp( 0, 0, 0);

setMoveKey( 0, 0,    0, -54,   0);
setMoveKey( 1, 0,    0, -54,   0);
setMoveKey( 2, 0,    0, -54,   0);
setMoveKey( 3, 0,    0, -54,   0);
setMoveKey( 125, 0,    0, -54,   0);
setMoveKey( 0, 1,    0, -54,   0);
setMoveKey( 1, 1,    0, -54,   0);
setMoveKey( 2, 1,    0, -54,   0);
setMoveKey( 3, 1,    0, -54,   0);

setScaleKey( 0,   1, 1.3, 1.3);
setScaleKey( 1,   1, 1.3, 1.3);
setScaleKey( 90,   1, 1.3, 1.3);
setScaleKey( 0,   0, 1.3, 1.3);
setScaleKey( 1,   0, 1.3, 1.3);
setScaleKey( 2,   0, 1.3, 1.3);
setScaleKey( 3,   0, 1.3, 1.3);
setScaleKey( 4,   0, 1.3, 1.3);
setScaleKey( 90,   0, 1.3, 1.3);

setRotateKey( 0,  1,  0 );
setRotateKey( 1,  1,  0 );

--entryFade( 0, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( 0, 0, 50, 0, 10, 10, 10, 180);       -- ベース暗め　背景
setVisibleUI(0, 0);
setDisp( 0, 0, 1);

changeAnime(  0, 0, 1);     
changeAnime(  0, 1, 100);     

changeAnime(  0, 0, 17);                       -- 溜め!
setShakeChara( 0, 0, 126, 10);

------------------------------------------------------
-- カットイン
------------------------------------------------------

spep_2 = 0;
entryFadeBg( spep_2, 0, 90, 0, 10, 10, 10, 210);          -- ベース暗め　背景

aura = entryEffectLife(  0,   311, 80, 0x40,  0,  1,  -20,  -50); -- オーラ
setEffScaleKey( 0, aura, 1.5, 1.5);

-- ** 集中線 ** --
shuchuserush = entryEffectLife( spep_2, 906, 126, 0x100,  -1, 0,  0,  0); -- 集中線
setEffMoveKey(spep_2, shuchuserush, 0, 0, 0);
setEffScaleKey( spep_2, shuchuserush, 1.2, 1.2);
setEffAlphaKey( spep_2, shuchuserush, 255);
setEffRotateKey( spep_2, shuchuserush, 0);

entryEffect(  spep_2,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect(  spep_2,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
speff = entryEffect(  spep_2,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_2,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( spep_2+3, SE_04);


-- 書き文字エントリー
ctgogo2 = entryEffectLife( spep_2+13, 190006, 62, 0x100, -1, 0, -50, 500);    -- ゴゴゴゴ
setEffScaleKey(spep_2+13, ctgogo2, 0.7, 0.7);
setEffRotateKey(spep_2+13, ctgogo2, 10);
setEffAlphaKey( spep_2+13, ctgogo2, 255);

setDisp( 90, 0, 0);
------------------------------------------------------
-- ka-do(90F)
------------------------------------------------------
spep_3 = spep_2+90;

entryFade( spep_3-10, 3, 15, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


setScaleKey( spep_3,   0, 1.8, 1.8);


playSe( spep_3+5, SE_05);
speff = entryEffect( spep_3,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え



-- ** 集中線 ** --
shuchuserush3 = entryEffectLife( spep_3, 906, 60, 0x100,  -1, 0,  0,  0); -- 集中線
setEffMoveKey(spep_3, shuchuserush3, 0, 0, 0);
setEffScaleKey( spep_3, shuchuserush3, 1.2, 1.2);
setEffAlphaKey( spep_3, shuchuserush3, 255);
setEffRotateKey( spep_3, shuchuserush3, 0);


------------------------------------------------------
-- 移動〜蹴り(80F)
------------------------------------------------------
spep_4 = spep_3+97;

entryFade( spep_4-13, 3, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--entryFadeBg( spep_4, 0, 80, 0, 10, 10, 10, 0);          -- ベース暗め　背景
entryFadeBg( spep_4+9, 6, 105, 0, 10, 10, 10, 210);          -- ベース暗め　背景


setDisp( spep_4, 1, 1);
changeAnime(  spep_4, 1, 101); 
setMoveKey( spep_4, 1,    650,  0,   0);
setMoveKey( spep_4+40, 1,    650,  0,   0);
setMoveKey( spep_4+50, 1,    100,  0,   0);
setMoveKey( spep_4+51, 1,    100,  20,   0);
setMoveKey( spep_4+61, 1,    650,  550,   0);
setMoveKey( spep_4+76, 1,    650,  550,   0);
changeAnime(  spep_4+51, 1, 106);
setRotateKey( spep_4,  1,  0 );
setRotateKey( spep_4+50,  1,  0 );
setRotateKey( spep_4+51,  1,  -20 );

semaru4 = entryEffect(  spep_4,   SP_01,   0x100,     -1,  0,  0,  0);--導入
setEffMoveKey(spep_4, semaru4, 0, 0, 0);
setEffScaleKey( spep_4, semaru4, 1.0, 1.0);
setEffAlphaKey( spep_4, semaru4, 255);
setEffRotateKey( spep_4, semaru4, 0);


-- ** 奥行き流線斜め ** --
sen4 = entryEffectLife( spep_4+6, 922, 44, 0x80,  -1,  0,  0,  -50); -- 奥行き流線斜め
setEffRotateKey( spep_4+6, sen4, 90);
setEffScaleKey( spep_4+6, sen4, 1.7, 1.7);
setEffMoveKey(spep_4+6, sen4, 0, -50, 0);

sen4a = entryEffectLife( spep_4+51, 922, 59, 0x80,  -1,  0,  0,  -50); -- 奥行き流線斜め
setEffRotateKey( spep_4+51, sen4a, -140);
setEffScaleKey( spep_4+51, sen4a, 1.7, 1.7);
setEffMoveKey(spep_4+51, sen4a, 0, -50, 0);

playSe( spep_4+10, 1018);--移動
playSe( spep_4+51, 1010);--蹴り

-- ** 集中線 ** --
shuchuserush4 = entryEffectLife( spep_4+51, 906, 59, 0x100,  -1, 0,  0,  0); -- 集中線
setEffMoveKey(spep_4+51, shuchuserush4, 0, 0, 0);
setEffScaleKey( spep_4+51, shuchuserush4, 1.2, 1.2);
setEffAlphaKey( spep_4+51, shuchuserush4, 255);
setEffRotateKey( spep_4+51, shuchuserush4, 0);

ctzuo4 = entryEffectLife( spep_4+51, 10020, 16, 0x100, -1, 0, -100, 200);    -- バキッ
setEffRotateKey(spep_4+10, ctzuo4, 0);
setEffAlphaKey( spep_4+51, ctzuo4, 255);
setEffAlphaKey( spep_4+66, ctzuo4, 255);
setEffScaleKey( spep_4+51, ctzuo4, 2.0, 2.0);
setEffScaleKey( spep_4+80, ctzuo4, 2.0, 2.0);

setEffShake( spep_4+51, ctzuo4, 100, 20);



syunkan4=entryEffect( spep_4+75, 700, 0x100,  -1, 0,  -50, -20); --瞬間移動
setEffScaleKey( spep_4+75, syunkan4, 1.4, 1.4);
setDisp( spep_4+76, 1, 0);



entryFade( spep_4+105, 2, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
spep_7 = spep_4+115;

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 225; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade(SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setMoveKey( SP_dodge-1, 0,    0, -54,   0);
setMoveKey( SP_dodge+6, 0,    0, -54,   0);
setMoveKey( SP_dodge+7, 0,    0, -5400,   0);
setScaleKey( SP_dodge-2,   0, 1.3, 1.3);
setScaleKey( SP_dodge-1,   0, 1.3, 1.3);
setScaleKey( SP_dodge,   0, 1.3, 1.3);
setScaleKey( SP_dodge+1,   0, 1.3, 1.3);
setScaleKey( SP_dodge+2,   0, 1.3, 1.3);
setScaleKey( SP_dodge+190,   0, 1.3, 1.3);

endPhase(SP_dodge+10);

do return end
else end

------------------------------------------------------
-- ピンボール
------------------------------------------------------

entryFadeBg( spep_7, 0, 150, 0, 10, 10, 10, 180);       -- ベース暗め　背景

setDisp( spep_7-2, 1, 1);

setMoveKey(   spep_7-1,   1,  -550, -150,   -100);
setMoveKey(   spep_7,   1,  -550, -150,   -100);
setMoveKey(   spep_7+20,   1,  -180, 300,   90); --1c
setMoveKey(   spep_7+40,   1,  550, -450,   -200); --2c
setMoveKey(   spep_7+50,   1,  -550, -50,   -100); --3c
setMoveKey(   spep_7+65,   1,  -150, 350,   60); --4c
setMoveKey(   spep_7+85,   1,  300, 100,   128); --5c
setMoveKey(   spep_7+105, 1,  -750, -400,  -200);
setMoveKey(   spep_7+115, 1,  -750, -400,  -200);


--味方
setDrawFront( spep_7+95, 0, 0);
setDisp( spep_7+95 , 0 , 1 );
changeAnime( spep_7+95, 0, 16);
setMoveKey(   spep_7+95,   0,  300, 100,   128); --5c
setMoveKey(   spep_7+115, 0,  -150, -50,  -200);
setMoveKey(   spep_7+130, 0,  120, 90,  20);
setMoveKey(   spep_7+135, 0,  120, 90,  20);
--[[
syunkan1=entryEffect( spep_7+132, 700, 0x100,  0, 0,  10, 0); --瞬間移動
setDisp( spep_7+135, 0, 0);
syunkan2=entryEffect( spep_7+132, 700, 0x40+0x100,  0, 0,  10, 0); --瞬間移動
setEffScaleKey( spep_7+132, syunkan1, 0.4, 0.4);
setEffScaleKey( spep_7+132, syunkan2, 0.4, 0.4);
]]--

setRotateKey( spep_7+95 , 0 , 0);
setRotateKey( spep_7+135 , 0 , -20);
setRotateKey( spep_7+135 , 0 , 0);
--setEffRotateKey( spep_7+130 , syunkan1 , -20);
--setEffRotateKey( spep_7+130 , syunkan2 , -20);


sho1=entryEffect( spep_7+20, 908, 0x20, 1,  300,  0,  0); 
sho1a=entryEffect( spep_7+20, 908, 0x20, 1,  300,  0,  0); 
sho2=entryEffect( spep_7+40, 908, 0x20, 1,  300,  0,  0); 
sho2b=entryEffect( spep_7+40, 908, 0x20, 1,  300,  0,  0); 
sho3=entryEffect( spep_7+50, 908, 0x20, 1,  300,  0,  0); 
sho3c=entryEffect( spep_7+50, 908, 0x20, 1,  300,  0,  0); 
sho4=entryEffect( spep_7+65, 908, 0x20, 1,  300,  0,  0); 
sho4d=entryEffect( spep_7+65, 908, 0x20, 1,  300,  0,  0); 
sho5=entryEffect( spep_7+85, 908, 0x20, 1,  300,  0,  0); 
sho5e=entryEffect( spep_7+85, 908, 0x20, 1,  300,  0,  0); 
--sho6=entryEffect( spep_7+105, 908, 0x20, 1,  300,  0,  0); 

playSe( spep_7+20, 1025);
playSe( spep_7+40, 1025);
playSe( spep_7+48, 1025);
playSe( spep_7+62, 1025);
playSe( spep_7+81, 1025);
playSe( spep_7+140, 1018);
--playSe( spep_7+132, 1034);

changeAnime( spep_7, 1, 106); 
changeAnime( spep_7+21, 1, 107);
changeAnime( spep_7+41, 1, 8);
changeAnime( spep_7+51, 1, 106);
changeAnime( spep_7+66, 1, 108);
changeAnime( spep_7+86, 1, 7);


setEffScaleKey( spep_7+20, sho1, 0.7, 0.7);
setEffScaleKey( spep_7+20, sho1a, 1, 1);
setEffScaleKey( spep_7+40, sho2, 4, 4);
setEffScaleKey( spep_7+40, sho2b, 3, 3);
setEffScaleKey( spep_7+51, sho3, 3, 3);
setEffScaleKey( spep_7+51, sho3c, 3, 3);
setEffScaleKey( spep_7+66, sho4, 1, 1);
setEffScaleKey( spep_7+66, sho4d, 1.5, 1.5);
setEffScaleKey( spep_7+86, sho5, 0.5, 0.5);
setEffScaleKey( spep_7+86, sho5e, 0.4, 0.4);

setEffRotateKey( spep_7+20,sho1a,-30);
setEffRotateKey( spep_7+40,sho2b,30);
setEffRotateKey( spep_7+51,sho3c,-50);
setEffRotateKey( spep_7+66,sho4d,-10);
setEffRotateKey( spep_7+86,sho5e,40);


--setMoveKey(   spep_7+120, 1,  -550, -300,  -200);
--setMoveKey(  spep_7+130,   1,    -120, -110,   -200); 
--setMoveKey(  spep_7+145,   1,    -130, -120,   -200); 

setShakeChara( spep_7, 1, 114, 8);
setShake( spep_7,150, 25);


shuchusen9 = entryEffectLife( spep_7, 906, 150, 0x00,  -1, 0,  0,  0);   -- 集中線

entryFade( spep_7+110, 3, 15, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--spep_3=spep_7+145+15;

setDisp( spep_7+110, 1, 0);
setDisp( spep_7+120, 0, 0);
--setDisp( spep_7+150, 0, 1);
setScaleKey( spep_7+150,  1,  1, 1);
setScaleKey( spep_7+150,  0,  1, 1);
setRotateKey( spep_7+150 , 0 , 0);

spep_5 = spep_7+125;

------------------------------------------------------
-- 強パンチ(100F)
------------------------------------------------------

entryFade( spep_5-5, 3, 4, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryFadeBg( spep_5, 0, 100, 0, 10, 10, 10, 255);          -- ベース暗め　背景

semaru5 = entryEffect(  spep_5,   SP_03,   0x100,     -1,  0,  0,  0);--導入
setEffMoveKey(spep_5, semaru5, 0, 0, 0);
setEffScaleKey( spep_5, semaru5, 1.0, 1.0);
setEffAlphaKey( spep_5, semaru5, 255);
setEffRotateKey( spep_5, semaru5, 0);

setDisp( spep_5, 1, 1);
setShakeChara( spep_5, 1, 100, 18);
changeAnime(  spep_5, 1, 106);
setMoveKey( spep_5-3, 1,    0,  0,   0);
setMoveKey( spep_5-1, 1,    50,  50,   0);

changeAnime(  spep_5+61, 1, 108); 
setMoveKey( spep_5+63, 1,    50,  50,   0);
setMoveKey( spep_5+75, 1,    700,  700,   0);
setMoveKey( spep_5+97, 1,    700,  700,   0);
setRotateKey( spep_5,  1,  -30);
setRotateKey( spep_5+55,  1,  -30);
setRotateKey( spep_5+51,  1,  -20 );

-- ** 奥行き流線斜め ** --
sen5 = entryEffectLife( spep_5, 922, 100, 0x80,  -1,  0,  0,  0); -- 奥行き流線斜め
setEffRotateKey( spep_5, sen5, -130);
setEffScaleKey( spep_5, sen5, 1.6, 1.6);

semaru5a = entryEffect(  spep_5+5,   SP_05,   0x80,     -1,  0,  0,  0);--導入
setEffMoveKey(spep_5+5, semaru5a, 0, 0, 0);
setEffScaleKey( spep_5+5, semaru5a, 1.8, 1.8);
setEffAlphaKey( spep_5+5, semaru5a, 255);
setEffRotateKey( spep_5+5, semaru5a, 0);

-- ** 集中線 ** --
shuchuserush5 = entryEffectLife( spep_5+63, 906,35, 0x80,  -1, 0,  0,  0); -- 集中線
setEffMoveKey(spep_5+63, shuchuserush5, 0, 0, 0);
setEffScaleKey( spep_5+63, shuchuserush5, 1.2, 1.2);
setEffAlphaKey( spep_5+63, shuchuserush5, 255);
setEffRotateKey( spep_5+63, shuchuserush5, 0);

--setDisp( spep_5+100, 1, 0);

playSe( spep_5+61, 1011);--1025

entryFade( spep_5+61, 1, 2, 2, fcolor_r, fcolor_g, fcolor_b, 210);     -- white fade
entryFade( spep_5+95, 3, 10, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
spep_6 = spep_5+100; --

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

setDisp( spep_6-1, 1, 1);
setDisp( spep_6-1, 0, 0);
setMoveKey(  spep_6-1,    1,  100,  0,   0);
setScaleKey( spep_6-1,    1,  1, 1);
setMoveKey(  spep_6,    1,    0,   0,   128);
setScaleKey( spep_6,    1,  0.1, 0.1);

changeAnime( spep_6, 1, 107);                         -- 手前ダメージ
entryEffect( spep_6+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_6+8, SE_10);

setMoveKey(  spep_6+8,   1,    0,   0,   128);
setMoveKey(  spep_6+15,   1,  -60,  -200,  -100);
setMoveKey(  spep_6+16,   1,  -60,  -200,  -100);
setDamage( spep_6+16, 1, 0);  -- ダメージ振動等
setShake(spep_6+7,6,15);
setShake(spep_6+13,15,10);

setRotateKey( spep_6,  1,  30 );
setRotateKey( spep_6+2,  1,  80 );
setRotateKey( spep_6+4,  1, 120 );
setRotateKey( spep_6+6,  1, 160 );
setRotateKey( spep_6+8,  1, 200 );
setRotateKey( spep_6+10,  1, 260 );
setRotateKey( spep_6+12,  1, 320 );
setRotateKey( spep_6+14,  1,   0 );

setShakeChara( spep_6+15, 1, 5,  10);
setShakeChara( spep_6+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep_6+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep_6+15, ct, 30, 10);
setEffRotateKey( spep_6+15, ct, -40);
setEffScaleKey( spep_6+15, ct, 4.0, 4.0);
setEffScaleKey( spep_6+16, ct, 2.0, 2.0);
setEffScaleKey( spep_6+17, ct, 2.6, 2.6);
setEffScaleKey( spep_6+18, ct, 4.0, 4.0);
setEffScaleKey( spep_6+19, ct, 2.6, 2.6);
setEffScaleKey( spep_6+20, ct, 3.8, 3.8);
setEffScaleKey( spep_6+110, ct, 3.8, 3.8);
setEffAlphaKey( spep_6+15, ct, 255);
setEffAlphaKey( spep_6+105, ct, 255);
setEffAlphaKey( spep_6+115, ct, 0);

playSe( spep_6+3, SE_11);
shuchusen = entryEffectLife( spep_6+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_6+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(spep_6+16);

entryFade( spep_6+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase( spep_6+110);

else
------------------------------------------------------
--敵側
------------------------------------------------------
setDisp( 0, 1, 0);
setDisp( 0, 0, 0);

setMoveKey( 0, 0,    0, -54,   0);
setMoveKey( 1, 0,    0, -54,   0);
setMoveKey( 2, 0,    0, -54,   0);
setMoveKey( 3, 0,    0, -54,   0);
setMoveKey( 125, 0,    0, -54,   0);
setMoveKey( 0, 1,    0, -54,   0);
setMoveKey( 1, 1,    0, -54,   0);
setMoveKey( 2, 1,    0, -54,   0);
setMoveKey( 3, 1,    0, -54,   0);

setScaleKey( 0,   1, 1.3, 1.3);
setScaleKey( 1,   1, 1.3, 1.3);
setScaleKey( 90,   1, 1.3, 1.3);
setScaleKey( 0,   0, 1.3, 1.3);
setScaleKey( 1,   0, 1.3, 1.3);
setScaleKey( 2,   0, 1.3, 1.3);
setScaleKey( 3,   0, 1.3, 1.3);
setScaleKey( 4,   0, 1.3, 1.3);
setScaleKey( 90,   0, 1.3, 1.3);

setRotateKey( 0,  1,  0 );
setRotateKey( 1,  1,  0 );

entryFadeBg( 0, 0, 50, 0, 10, 10, 10, 180);       -- ベース暗め　背景
setVisibleUI(0, 0);
setDisp( 0, 0, 1);

changeAnime(  0, 0, 1);     
changeAnime(  0, 1, 100);     

changeAnime(  0, 0, 17);                       -- 溜め!
setShakeChara( 0, 0, 126, 10);

------------------------------------------------------
-- カットイン
------------------------------------------------------

spep_2 = 0;
entryFadeBg( spep_2, 0, 90, 0, 10, 10, 10, 210);          -- ベース暗め　背景

aura = entryEffectLife(  0,   311, 80, 0x40,  0,  1,  -20,  -50); -- オーラ
setEffScaleKey( 0, aura, 1.5, 1.5);

-- ** 集中線 ** --
shuchuserush = entryEffectLife( spep_2, 906, 126, 0x100,  -1, 0,  0,  0); -- 集中線
setEffMoveKey(spep_2, shuchuserush, 0, 0, 0);
setEffScaleKey( spep_2, shuchuserush, 1.2, 1.2);
setEffAlphaKey( spep_2, shuchuserush, 255);
setEffRotateKey( spep_2, shuchuserush, 0);

entryEffect(  spep_2,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect(  spep_2,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
--[[
speff = entryEffect(  spep_2,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_2,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
]]--
playSe( spep_2+3, SE_04);


-- 書き文字エントリー
ctgogo2 = entryEffectLife( spep_2+13, 190006, 62, 0x100, -1, 0, 0, 480);    -- ゴゴゴゴ
setEffScaleKey(spep_2+13, ctgogo2, -0.7, 0.7);
setEffRotateKey(spep_2+13, ctgogo2, 10);
setEffAlphaKey( spep_2+13, ctgogo2, 255);

setDisp( 90, 0, 0);
------------------------------------------------------
-- ka-do(90F)
------------------------------------------------------
spep_3 = spep_2+90;

entryFade( spep_3-10, 3, 15, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


setScaleKey( spep_3,   0, 1.8, 1.8);


playSe( spep_3+5, SE_05);
speff = entryEffect( spep_3,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え



-- ** 集中線 ** --
shuchuserush3 = entryEffectLife( spep_3, 906, 60, 0x100,  -1, 0,  0,  0); -- 集中線
setEffMoveKey(spep_3, shuchuserush3, 0, 0, 0);
setEffScaleKey( spep_3, shuchuserush3, 1.2, 1.2);
setEffAlphaKey( spep_3, shuchuserush3, 255);
setEffRotateKey( spep_3, shuchuserush3, 0);


------------------------------------------------------
-- 移動〜蹴り(80F)
------------------------------------------------------
spep_4 = spep_3+97;

entryFade( spep_4-13, 3, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--entryFadeBg( spep_4, 0, 80, 0, 10, 10, 10, 0);          -- ベース暗め　背景
entryFadeBg( spep_4+9, 6, 105, 0, 10, 10, 10, 210);          -- ベース暗め　背景


setDisp( spep_4, 1, 1);
changeAnime(  spep_4, 1, 101); 
setMoveKey( spep_4, 1,    650,  0,   0);
setMoveKey( spep_4+40, 1,    650,  0,   0);
setMoveKey( spep_4+50, 1,    100,  0,   0);
setMoveKey( spep_4+51, 1,    100,  20,   0);
setMoveKey( spep_4+61, 1,    650,  550,   0);
setMoveKey( spep_4+76, 1,    650,  550,   0);
changeAnime(  spep_4+51, 1, 106);
setRotateKey( spep_4,  1,  0 );
setRotateKey( spep_4+50,  1,  0 );
setRotateKey( spep_4+51,  1,  -20 );

semaru4 = entryEffect(  spep_4,   SP_02,   0x100,     -1,  0,  0,  0);--導入
setEffMoveKey(spep_4, semaru4, 0, 0, 0);
setEffScaleKey( spep_4, semaru4, 1.0, 1.0);
setEffAlphaKey( spep_4, semaru4, 255);
setEffRotateKey( spep_4, semaru4, 0);


-- ** 奥行き流線斜め ** --
sen4 = entryEffectLife( spep_4+6, 922, 44, 0x80,  -1,  0,  0,  -50); -- 奥行き流線斜め
setEffRotateKey( spep_4+6, sen4, 90);
setEffScaleKey( spep_4+6, sen4, 1.7, 1.7);
setEffMoveKey(spep_4+6, sen4, 0, -50, 0);

sen4a = entryEffectLife( spep_4+51, 922, 59, 0x80,  -1,  0,  0,  -50); -- 奥行き流線斜め
setEffRotateKey( spep_4+51, sen4a, -140);
setEffScaleKey( spep_4+51, sen4a, 1.7, 1.7);
setEffMoveKey(spep_4+51, sen4a, 0, -50, 0);

playSe( spep_4+10, 1018);--移動
playSe( spep_4+51, 1010);--蹴り

-- ** 集中線 ** --
shuchuserush4 = entryEffectLife( spep_4+51, 906, 59, 0x100,  -1, 0,  0,  0); -- 集中線
setEffMoveKey(spep_4+51, shuchuserush4, 0, 0, 0);
setEffScaleKey( spep_4+51, shuchuserush4, 1.2, 1.2);
setEffAlphaKey( spep_4+51, shuchuserush4, 255);
setEffRotateKey( spep_4+51, shuchuserush4, 0);

ctzuo4 = entryEffectLife( spep_4+51, 10020, 16, 0x100, -1, 0, -100, 200);    -- バキッ
setEffRotateKey(spep_4+10, ctzuo4, 0);
setEffAlphaKey( spep_4+51, ctzuo4, 255);
setEffAlphaKey( spep_4+66, ctzuo4, 255);
setEffScaleKey( spep_4+51, ctzuo4, 2.0, 2.0);
setEffScaleKey( spep_4+80, ctzuo4, 2.0, 2.0);

setEffShake( spep_4+51, ctzuo4, 100, 20);



syunkan4=entryEffect( spep_4+75, 700, 0x100,  -1, 0,  -50, -20); --瞬間移動
setEffScaleKey( spep_4+75, syunkan4, 1.4, 1.4);
setDisp( spep_4+76, 1, 0);



entryFade( spep_4+105, 2, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
spep_7 = spep_4+115;

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 225; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade(SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setMoveKey( SP_dodge-1, 0,    0, -54,   0);
setMoveKey( SP_dodge+6, 0,    0, -54,   0);
setMoveKey( SP_dodge+7, 0,    0, -5400,   0);
setScaleKey( SP_dodge-2,   0, 1.3, 1.3);
setScaleKey( SP_dodge-1,   0, 1.3, 1.3);
setScaleKey( SP_dodge,   0, 1.3, 1.3);
setScaleKey( SP_dodge+1,   0, 1.3, 1.3);
setScaleKey( SP_dodge+2,   0, 1.3, 1.3);
setScaleKey( SP_dodge+190,   0, 1.3, 1.3);

endPhase(SP_dodge+10);

do return end
else end

------------------------------------------------------
-- ピンボール
------------------------------------------------------

entryFadeBg( spep_7, 0, 150, 0, 10, 10, 10, 180);       -- ベース暗め　背景

setDisp( spep_7-2, 1, 1);

setMoveKey(   spep_7-1,   1,  -550, -150,   -100);
setMoveKey(   spep_7,   1,  -550, -150,   -100);
setMoveKey(   spep_7+20,   1,  -180, 300,   90); --1c
setMoveKey(   spep_7+40,   1,  550, -450,   -200); --2c
setMoveKey(   spep_7+50,   1,  -550, -50,   -100); --3c
setMoveKey(   spep_7+65,   1,  -150, 350,   60); --4c
setMoveKey(   spep_7+85,   1,  300, 100,   128); --5c
setMoveKey(   spep_7+105, 1,  -750, -400,  -200);
setMoveKey(   spep_7+115, 1,  -750, -400,  -200);


--味方
setDrawFront( spep_7+95, 0, 0);
setDisp( spep_7+95 , 0 , 1 );
changeAnime( spep_7+95, 0, 16);
setMoveKey(   spep_7+95,   0,  300, 100,   128); --5c
setMoveKey(   spep_7+115, 0,  -150, -50,  -200);
setMoveKey(   spep_7+130, 0,  120, 90,  20);
setMoveKey(   spep_7+135, 0,  120, 90,  20);
--[[
syunkan1=entryEffect( spep_7+132, 700, 0x100,  0, 0,  10, 0); --瞬間移動
setDisp( spep_7+135, 0, 0);
syunkan2=entryEffect( spep_7+132, 700, 0x40+0x100,  0, 0,  10, 0); --瞬間移動
setEffScaleKey( spep_7+132, syunkan1, 0.4, 0.4);
setEffScaleKey( spep_7+132, syunkan2, 0.4, 0.4);
]]--

setRotateKey( spep_7+95 , 0 , 0);
setRotateKey( spep_7+135 , 0 , -20);
setRotateKey( spep_7+135 , 0 , 0);
--setEffRotateKey( spep_7+130 , syunkan1 , -20);
--setEffRotateKey( spep_7+130 , syunkan2 , -20);


sho1=entryEffect( spep_7+20, 908, 0x20, 1,  300,  0,  0); 
sho1a=entryEffect( spep_7+20, 908, 0x20, 1,  300,  0,  0); 
sho2=entryEffect( spep_7+40, 908, 0x20, 1,  300,  0,  0); 
sho2b=entryEffect( spep_7+40, 908, 0x20, 1,  300,  0,  0); 
sho3=entryEffect( spep_7+50, 908, 0x20, 1,  300,  0,  0); 
sho3c=entryEffect( spep_7+50, 908, 0x20, 1,  300,  0,  0); 
sho4=entryEffect( spep_7+65, 908, 0x20, 1,  300,  0,  0); 
sho4d=entryEffect( spep_7+65, 908, 0x20, 1,  300,  0,  0); 
sho5=entryEffect( spep_7+85, 908, 0x20, 1,  300,  0,  0); 
sho5e=entryEffect( spep_7+85, 908, 0x20, 1,  300,  0,  0); 
--sho6=entryEffect( spep_7+105, 908, 0x20, 1,  300,  0,  0); 

playSe( spep_7+20, 1025);
playSe( spep_7+40, 1025);
playSe( spep_7+48, 1025);
playSe( spep_7+62, 1025);
playSe( spep_7+81, 1025);
playSe( spep_7+140, 1018);
--playSe( spep_7+132, 1034);

changeAnime( spep_7, 1, 106); 
changeAnime( spep_7+21, 1, 107);
changeAnime( spep_7+41, 1, 8);
changeAnime( spep_7+51, 1, 106);
changeAnime( spep_7+66, 1, 108);
changeAnime( spep_7+86, 1, 7);


setEffScaleKey( spep_7+20, sho1, 0.7, 0.7);
setEffScaleKey( spep_7+20, sho1a, 1, 1);
setEffScaleKey( spep_7+40, sho2, 4, 4);
setEffScaleKey( spep_7+40, sho2b, 3, 3);
setEffScaleKey( spep_7+51, sho3, 3, 3);
setEffScaleKey( spep_7+51, sho3c, 3, 3);
setEffScaleKey( spep_7+66, sho4, 1, 1);
setEffScaleKey( spep_7+66, sho4d, 1.5, 1.5);
setEffScaleKey( spep_7+86, sho5, 0.5, 0.5);
setEffScaleKey( spep_7+86, sho5e, 0.4, 0.4);

setEffRotateKey( spep_7+20,sho1a,-30);
setEffRotateKey( spep_7+40,sho2b,30);
setEffRotateKey( spep_7+51,sho3c,-50);
setEffRotateKey( spep_7+66,sho4d,-10);
setEffRotateKey( spep_7+86,sho5e,40);


--setMoveKey(   spep_7+120, 1,  -550, -300,  -200);
--setMoveKey(  spep_7+130,   1,    -120, -110,   -200); 
--setMoveKey(  spep_7+145,   1,    -130, -120,   -200); 

setShakeChara( spep_7, 1, 114, 8);
setShake( spep_7,150, 25);


shuchusen9 = entryEffectLife( spep_7, 906, 150, 0x00,  -1, 0,  0,  0);   -- 集中線

entryFade( spep_7+110, 3, 15, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--spep_3=spep_7+145+15;

setDisp( spep_7+110, 1, 0);
setDisp( spep_7+120, 0, 0);
--setDisp( spep_7+150, 0, 1);
setScaleKey( spep_7+150,  1,  1, 1);
setScaleKey( spep_7+150,  0,  1, 1);
setRotateKey( spep_7+150 , 0 , 0);

spep_5 = spep_7+125;

------------------------------------------------------
-- 強パンチ(100F)
------------------------------------------------------

entryFade( spep_5-5, 3, 4, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryFadeBg( spep_5, 0, 100, 0, 10, 10, 10, 255);          -- ベース暗め　背景

semaru5 = entryEffect(  spep_5,   SP_04,   0x100,     -1,  0,  0,  0);--導入
setEffMoveKey(spep_5, semaru5, 0, 0, 0);
setEffScaleKey( spep_5, semaru5, 1.0, 1.0);
setEffAlphaKey( spep_5, semaru5, 255);
setEffRotateKey( spep_5, semaru5, 0);

setDisp( spep_5, 1, 1);
setShakeChara( spep_5, 1, 100, 18);
changeAnime(  spep_5, 1, 106);
setMoveKey( spep_5-3, 1,    0,  0,   0);
setMoveKey( spep_5-1, 1,    50,  50,   0);

changeAnime(  spep_5+61, 1, 108); 
setMoveKey( spep_5+63, 1,    50,  50,   0);
setMoveKey( spep_5+75, 1,    700,  700,   0);
setMoveKey( spep_5+97, 1,    700,  700,   0);
setRotateKey( spep_5,  1,  -30);
setRotateKey( spep_5+55,  1,  -30);
setRotateKey( spep_5+51,  1,  -20 );

-- ** 奥行き流線斜め ** --
sen5 = entryEffectLife( spep_5, 922, 100, 0x80,  -1,  0,  0,  0); -- 奥行き流線斜め
setEffRotateKey( spep_5, sen5, -130);
setEffScaleKey( spep_5, sen5, 1.6, 1.6);

semaru5a = entryEffect(  spep_5+5,   SP_06,   0x80,     -1,  0,  0,  0);--導入
setEffMoveKey(spep_5+5, semaru5a, 0, 0, 0);
setEffScaleKey( spep_5+5, semaru5a, 1.8, 1.8);
setEffAlphaKey( spep_5+5, semaru5a, 255);
setEffRotateKey( spep_5+5, semaru5a, 0);

-- ** 集中線 ** --
shuchuserush5 = entryEffectLife( spep_5+63, 906,35, 0x80,  -1, 0,  0,  0); -- 集中線
setEffMoveKey(spep_5+63, shuchuserush5, 0, 0, 0);
setEffScaleKey( spep_5+63, shuchuserush5, 1.2, 1.2);
setEffAlphaKey( spep_5+63, shuchuserush5, 255);
setEffRotateKey( spep_5+63, shuchuserush5, 0);

--setDisp( spep_5+100, 1, 0);

playSe( spep_5+61, 1011);--1025

entryFade( spep_5+61, 1, 2, 2, fcolor_r, fcolor_g, fcolor_b, 210);     -- white fade
entryFade( spep_5+95, 3, 10, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
spep_6 = spep_5+100; --

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

setDisp( spep_6-1, 1, 1);
setDisp( spep_6-1, 0, 0);
setMoveKey(  spep_6-1,    1,  100,  0,   0);
setScaleKey( spep_6-1,    1,  1, 1);
setMoveKey(  spep_6,    1,    0,   0,   128);
setScaleKey( spep_6,    1,  0.1, 0.1);

changeAnime( spep_6, 1, 107);                         -- 手前ダメージ
entryEffect( spep_6+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_6+8, SE_10);

setMoveKey(  spep_6+8,   1,    0,   0,   128);
setMoveKey(  spep_6+15,   1,  -60,  -200,  -100);
setMoveKey(  spep_6+16,   1,  -60,  -200,  -100);
setDamage( spep_6+16, 1, 0);  -- ダメージ振動等
setShake(spep_6+7,6,15);
setShake(spep_6+13,15,10);

setRotateKey( spep_6,  1,  30 );
setRotateKey( spep_6+2,  1,  80 );
setRotateKey( spep_6+4,  1, 120 );
setRotateKey( spep_6+6,  1, 160 );
setRotateKey( spep_6+8,  1, 200 );
setRotateKey( spep_6+10,  1, 260 );
setRotateKey( spep_6+12,  1, 320 );
setRotateKey( spep_6+14,  1,   0 );

setShakeChara( spep_6+15, 1, 5,  10);
setShakeChara( spep_6+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep_6+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep_6+15, ct, 30, 10);
setEffRotateKey( spep_6+15, ct, -40);
setEffScaleKey( spep_6+15, ct, 4.0, 4.0);
setEffScaleKey( spep_6+16, ct, 2.0, 2.0);
setEffScaleKey( spep_6+17, ct, 2.6, 2.6);
setEffScaleKey( spep_6+18, ct, 4.0, 4.0);
setEffScaleKey( spep_6+19, ct, 2.6, 2.6);
setEffScaleKey( spep_6+20, ct, 3.8, 3.8);
setEffScaleKey( spep_6+110, ct, 3.8, 3.8);
setEffAlphaKey( spep_6+15, ct, 255);
setEffAlphaKey( spep_6+105, ct, 255);
setEffAlphaKey( spep_6+115, ct, 0);

playSe( spep_6+3, SE_11);
shuchusen = entryEffectLife( spep_6+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_6+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(spep_6+16);

entryFade( spep_6+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase( spep_6+110);

end
