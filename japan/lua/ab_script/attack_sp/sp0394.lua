--sp0394.lua
--sp_effect_b4_00036	

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SP_01=150816;--溜め	ef_001	75	バトルキャラ込み
SP_02=150817;--ef_001の敵用	ef_001r	75	バトルキャラ込み
SP_03=150818;--超能力	ef_002	70	バトルキャラ込み
SP_04=150819;--ef_002の敵用	ef_002r	70	バトルキャラ込み
SP_05=150820;--突っ込む	ef_003	40	バトルキャラ込み
SP_06=150821;--ef_003の敵用	ef_003r	40	バトルキャラ込み
SP_07=150822;--蹴り	ef_004	35	バトルキャラ込み
SP_08=150823;--ef_004の敵用	ef_004r	35	バトルキャラ込み

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

multi_frm = 2;


changeAnime( 0, 1, 100);                       -- 立ち
setDisp( 0, 1, 0);

changeAnime( 0, 0, 0);                       -- 立ち
setDisp( 0, 0, 0);
setMoveKey(   0,   0,   600, -800, 0);
setScaleKey(   0,   0, 1.5, 1.5);

setRotateKey(   0,   0, 0);
setMoveKey(   0,   1,   600, -800,0);
setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   0,   1, 1.5, 1.5);

------------------
--SP_01=150816; --溜め	ef_001	75	バトルキャラ込み 0-149
------------------
if (_IS_PLAYER_SIDE_ == 1) then
kame_flag = 0x00;
setVisibleUI(0, 0);

spep_1=0;

--集中線
shuchusen_1= entryEffectLife(spep_1+7,906, 143, 0x80, -1 ,0,0,0);

setEffMoveKey(spep_1+7, shuchusen_1, 0, 0, 0);
setEffScaleKey(spep_1+7, shuchusen_1, 1.0 ,1.0);
setEffAlphaKey(spep_1+7, shuchusen_1, 255);
setEffRotateKey(spep_1+7, shuchusen_1, 0);

setEffMoveKey(spep_1+150, shuchusen_1, 0, 0, 0);
setEffScaleKey(spep_1+150, shuchusen_1, 1.0 ,1.0);
setEffAlphaKey(spep_1+150, shuchusen_1, 255);
setEffRotateKey(spep_1+150, shuchusen_1,0);

spatack_1= entryEffectLife(spep_1, SP_01,150, 0x80, -1 ,0,0,0);

setEffMoveKey(spep_1, spatack_1,0, 0, 0);
setEffScaleKey(spep_1, spatack_1,1.0 ,1.0);
setEffAlphaKey(spep_1, spatack_1,255);
setEffRotateKey(spep_1, spatack_1,0);

setEffMoveKey(spep_1+150, spatack_1,0, 0, 0);
setEffScaleKey(spep_1+150, spatack_1,1.0 ,1.0);
setEffAlphaKey(spep_1+150, spatack_1,255);
setEffRotateKey(spep_1+150, spatack_1,0);

setEffShake(spep_1, spatack_1, 150, 10);

--7Fから白F
entryFade( spep_1+7,0,2,8,255,255,255,200);             -- black fade

--コメントカットイン
speff = entryEffect(  spep_1+63,   1504,   0,-1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_1+63,   1505,   0,-1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe(spep_1+63,SE_04);

aura3= entryEffectLife(spep_1+7,311, 143, 0x80,  -1,  15,  -100,  0); -- オーラ
setEffMoveKey(spep_1+7, aura3,15, -100, 0);
setEffScaleKey(spep_1+7, aura3, 1.0, 1.0);
setEffAlphaKey(spep_1+7, aura3,255);
setEffRotateKey(spep_1+7, aura3,0);

setEffMoveKey(spep_1+150, aura3,15, -100, 0);
setEffScaleKey(spep_1+150, aura3,1.0 ,1.0);
setEffAlphaKey(spep_1+150, aura3,255);
setEffRotateKey(spep_1+150, aura3,0);

playSe(spep_1+7,SE_01);--SE_01 = 1035; --気を貯める

ctgogo= entryEffectLife( spep_1+76, 190006, 74, 0x100, -1, -200, 500, 0);    -- ゴゴゴゴ
setEffScaleKey( spep_1+76, ctgogo, 0.7, 0.7);
setEffRotateKey( spep_1+76, ctgogo, 10);
setEffAlphaKey( spep_1+76, ctgogo, 255);
setEffMoveKey( spep_1+76, ctgogo, -200, 500,0);

setEffScaleKey( spep_1+143, ctgogo, 0.7, 0.7);
setEffRotateKey( spep_1+143, ctgogo, 10);
setEffAlphaKey( spep_1+143, ctgogo, 255);
setEffMoveKey( spep_1+143, ctgogo, -200, 500,0);

setEffScaleKey( spep_1+150, ctgogo, 2.0, 2.0);
setEffRotateKey( spep_1+150, ctgogo, 10);
setEffAlphaKey( spep_1+150, ctgogo, 255);
setEffMoveKey( spep_1+150, ctgogo, -200, 500,0);

entryFadeBg( spep_1+7,0,143,0,10,10,10,160);
entryFade( spep_1+145,3,4,3,255,255,255,255);
------------------
--カードカットイン(定型文)
------------------
spep_2 = spep_1+150;

-- ** 背景 ** --
entryFadeBg( spep_2, 0, 89, 0, 10, 10, 10, 180); -- ベース暗め　背景

-- ** カードカットイン ** --
speff_2 = entryEffect( spep_2, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff_2, 1, 1);
setEffReplaceTexture( speff_2, 2, 0); -- カード差し替え
setEffReplaceTexture( speff_2, 5, 4); -- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen_2 = entryEffectLife( spep_2+1, 906, 89, 0x80, -1, 0, 0, 0); -- 集中線

setEffMoveKey( spep_2+1, shuchusen_2, 0, 0, 0);
setEffScaleKey( spep_2+1, shuchusen_2, 1.2, 1.2);
setEffAlphaKey( spep_2+1, shuchusen_2, 255);
setEffRotateKey( spep_2+1, shuchusen_2, 0);

-- ** 音 ** --
playSe(spep_2+5,SE_05);

entryFade(spep_2+83,5,8,5,255,255,255,255);

------------------
--SP_03=150818; --超能力	ef_002	70	バトルキャラ込み 245
------------------
spep_3 = spep_2+95;

spatack_3 = entryEffectLife(spep_3, SP_03 , 140, 0x100, -1 ,0,0,0);

setEffMoveKey(spep_3, spatack_3, 0, 0, 0);
setEffScaleKey(spep_3, spatack_3, 1.0 ,1.0);
setEffAlphaKey(spep_3, spatack_3, 255);
setEffRotateKey(spep_3, spatack_3, 0);

--setEffShake(spep_3, spatack_3, 70, 20);

----------------------
--敵の動き
----------------------
changeAnime(spep_3,1,103);
setDisp(spep_3,1,1);

setMoveKey(spep_3, 1, 800, 850, 0);
setEffScaleKey(spep_3, 1, 1.0 ,1.0);
setEffRotateKey(spep_3, 1, 0);

shuchusen3a = entryEffectLife( spep_3, 923, 40, 0x80,  -1, 0,  0,  0);

setEffMoveKey( spep_3, shuchusen3a, 0, 0, 0);
setEffScaleKey( spep_3, shuchusen3a, 1.6, 1.6);
setEffAlphaKey( spep_3, shuchusen3a, 255);
setEffRotateKey( spep_3, shuchusen3a, 35);

entryFadeBg( spep_3, 0, 140, 0, 10, 10, 10, 160);-- ベース暗め　背景

setMoveKey(spep_3+22, 1, 400, 450, 0);
setEffScaleKey(spep_3+22, 1, 1.5 ,1.5);
setEffRotateKey(spep_3+22, 1, 0);

shuchusen3b = entryEffectLife( spep_3, 906, 140, 0x80,  -1, 0,  0,  0);

setEffMoveKey( spep_3, shuchusen3b, 0, 0, 0);
setEffScaleKey( spep_3, shuchusen3b, 1.3, 1.3);
setEffAlphaKey( spep_3, shuchusen3b, 255);
setEffRotateKey( spep_3, shuchusen3b, 0);

-------------------------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = 273; --エンドフェイズのフレーム数を置き換える spep_3+28

setMoveKey(SP_dodge, 1, 158, 162, 0);
setEffScaleKey(SP_dodge, 1, 1.5 ,1.5);
setEffRotateKey(SP_dodge, 1, 0);

setMoveKey(SP_dodge+9, 1, 158, 162, 0);
setEffScaleKey(SP_dodge+9, 1, 1.5 ,1.5);
setEffRotateKey(SP_dodge+9, 1, 0);

setDisp(SP_dodge+9, 1, 0);

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

dodge = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(SP_dodge+10);

do return end
else end

--[[
----------------------
--敵の動き
----------------------
changeAnime(spep_3,1,103);
setDisp(spep_3,1,1);

setMoveKey(spep_3, 1, 800, 850, 0);
setEffScaleKey(spep_3, 1, 1.0 ,1.0);
setEffRotateKey(spep_3, 1, 0);
]]--

--changeAnime(spep_3+22,1,106);
entryFade(spep_3+35,1,2,1,255,255,255,180);

playSe(spep_3+38,1034); --超能力
playSe(spep_3+78,1034); --超能力

changeAnime(spep_3+37,1,108);

setMoveKey(spep_3+37, 1, 140, 180, 0);
setEffScaleKey(spep_3+37, 1, 1.5 ,1.5);
setEffRotateKey(spep_3+37, 1, 0);

entryFade(spep_3+81,1,2,1,255,255,255,180);

changeAnime(spep_3+83,1,106);

setMoveKey(spep_3+83, 1, 150, 180, 0);
setEffScaleKey(spep_3+83, 1, 1.5 ,1.5);
setEffRotateKey(spep_3+83, 1, 0);

setMoveKey(spep_3+140, 1, 150, 180, 0);
setEffScaleKey(spep_3+140, 1, 1.5 ,1.5);
setEffRotateKey(spep_3+140, 1, 0);

setEffMoveKey(spep_3+140, spatack_3, 0, 0, 0);
setEffScaleKey(spep_3+140, spatack_3, 1.0 ,1.0);
setEffAlphaKey(spep_3+140, spatack_3, 255);
setEffRotateKey(spep_3+140, spatack_3, 0);

setShakeChara(spep_3+37,1,103,20);
----------------------
--集中線＆背景
----------------------
--[[
shuchusen3a = entryEffectLife( spep_3, 923, 40, 0x80,  -1, 0,  0,  0);

setEffMoveKey( spep_3, shuchusen3a, 0, 0, 0);
setEffScaleKey( spep_3, shuchusen3a, 1.6, 1.6);
setEffAlphaKey( spep_3, shuchusen3a, 255);
setEffRotateKey( spep_3, shuchusen3a, 35);

]]--
setEffMoveKey( spep_3+40, shuchusen3a, 0, 0, 0);
setEffScaleKey( spep_3+40, shuchusen3a, 1.6, 1.6);
setEffAlphaKey( spep_3+40, shuchusen3a, 255);
setEffRotateKey( spep_3+40, shuchusen3a, 35);
--[[
shuchusen3b = entryEffectLife( spep_3, 906, 140, 0x80,  -1, 0,  0,  0);

setEffMoveKey( spep_3, shuchusen3b, 0, 0, 0);
setEffScaleKey( spep_3, shuchusen3b, 1.3, 1.3);
setEffAlphaKey( spep_3, shuchusen3b, 255);
setEffRotateKey( spep_3, shuchusen3b, 0);
]]--
setEffMoveKey( spep_3+140, shuchusen3b, 0, 0, 0);
setEffScaleKey( spep_3+140, shuchusen3b, 1.3, 1.3);
setEffAlphaKey( spep_3+140, shuchusen3b, 255);
setEffRotateKey( spep_3+140, shuchusen3b, 0);

entryFadeBg( spep_3+90, 20, 30, 0, 10, 10, 10, 255);-- ベース暗め　背景

entryFade(spep_3+135,3,6,3,255,255,255,255);

------------------
--SP_05=150820; --突っ込む	ef_003	40	バトルキャラ込み　386
------------------
spep_4 = spep_3+141;

setDisp(spep_4,1,0);
setMoveKey(spep_4, 1, 100, 150, 0);
setEffScaleKey(spep_4, 1, 1.5 ,1.5);
setEffRotateKey(spep_4, 1, 0);

playSe(spep_4+12,1018);

spatack_4 = entryEffectLife(spep_4, SP_05, 80, 0x100, -1 ,0,0,0);

setEffMoveKey(spep_4, spatack_4, 0, 0, 0);
setEffScaleKey(spep_4, spatack_4, 1.0 ,1.0);
setEffAlphaKey(spep_4, spatack_4, 255);
setEffRotateKey(spep_4, spatack_4, 0);

setEffMoveKey(spep_4+80, spatack_4, 0, 0, 0);
setEffScaleKey(spep_4+80, spatack_4, 1.0 ,1.0);
setEffAlphaKey(spep_4+80, spatack_4, 255);
setEffRotateKey(spep_4+80, spatack_4, 0);

setEffShake(spep_4, spatack_4, 80, 20);
----------------------
--集中線＆背景
----------------------
shuchusen4 = entryEffectLife( spep_4, 906, 80, 0x80,  -1, 0,  0,  0);

setEffMoveKey( spep_4, shuchusen4, 0, 0, 0);
setEffScaleKey( spep_4, shuchusen4, 1.2, 1.2);
setEffAlphaKey( spep_4, shuchusen4, 255);
setEffRotateKey( spep_4, shuchusen4, 0);

setEffMoveKey( spep_4+80, shuchusen4, 0, 0, 0);
setEffScaleKey( spep_4+80, shuchusen4, 1.2, 1.2);
setEffAlphaKey( spep_4+80, shuchusen4, 255);
setEffRotateKey( spep_4+80, shuchusen4, 0);

entryFadeBg( spep_4, 0, 80, 0, 10, 10, 10, 160);-- ベース暗め　背景

entryFade( spep_4+75,3,6,3,255,255,255,255);
----------------------
--書き文字「ズオッ」
----------------------
--255
ctzuo = entryEffectLife( spep_4+11, 10012, 69, 0x100, -1, 0, 0, 0);    -- ズオ
setEffScaleKey( spep_4+11, ctzuo, 0.4, 0.4);
setEffRotateKey( spep_4+11, ctzuo, 30);
setEffAlphaKey( spep_4+11, ctzuo, 255);
setEffMoveKey( spep_4+11, ctzuo, 100,380,0);

setEffScaleKey( spep_4+16, ctzuo, 2.3, 2.3);
setEffRotateKey( spep_4+16, ctzuo, 30);
setEffAlphaKey( spep_4+16, ctzuo, 255);
setEffMoveKey( spep_4+16, ctzuo, 100,380,0);

setEffScaleKey( spep_4+68, ctzuo, 2.3, 2.3);
setEffRotateKey( spep_4+68, ctzuo, 30);
setEffAlphaKey( spep_4+68, ctzuo, 255);
setEffMoveKey( spep_4+68, ctzuo, 100,380,0);

setEffScaleKey( spep_4+80, ctzuo, 5.0, 5.0);
setEffRotateKey( spep_4+80, ctzuo, 30);
setEffAlphaKey( spep_4+80, ctzuo, 0);
setEffMoveKey( spep_4+80, ctzuo, 100,380,0);

setEffShake(spep_4,ctzuo,69,20);
------------------
--SP_07=150822; --蹴り	ef_004	35	バトルキャラ込み 467
------------------
spep_5 = spep_4+81;

spatack_5 = entryEffectLife(spep_5, SP_07, 70, 0x100, -1 ,0,0,0);

setEffMoveKey(spep_5, spatack_5, 0, 0, 0);
setEffScaleKey(spep_5, spatack_5, 1.0 ,1.0);
setEffAlphaKey(spep_5, spatack_5, 255);
setEffRotateKey(spep_5, spatack_5, 0);

setEffMoveKey(spep_5+70, spatack_5, 0, 0, 0);
setEffScaleKey(spep_5+70, spatack_5, 1.0 ,1.0);
setEffAlphaKey(spep_5+70, spatack_5, 255);
setEffRotateKey(spep_5+70, spatack_5, 0);

setEffShake(spep_5, spatack_4, 70, 20);

entryFadeBg( spep_5, 0, 70, 0, 10, 10, 10, 255);-- ベース暗め　背景

playSe(spep_5+26,1010);
----------------------
--敵の動き
----------------------
changeAnime(spep_5,1,106);
setDisp(spep_5,1,1);

setMoveKey(spep_5, 1, 0, 0, 0);
setScaleKey(spep_5, 1, 1.5 ,1.5);
setRotateKey(spep_5, 1, 0);

setMoveKey(spep_5+24, 1, 0, 0, 0);
setScaleKey(spep_5+24, 1, 1.5 ,1.5);
setRotateKey(spep_5+24, 1, 0);

changeAnime(spep_5+25,1,108);

setMoveKey(spep_5+25, 1, 50, 50, 0);
setScaleKey(spep_5+25, 1, 1.5 ,1.5);
setRotateKey(spep_5+25, 1, 0);

setMoveKey(spep_5+68, 1, 50, 50, 0);
setScaleKey(spep_5+68, 1, 1.5 ,1.5);
setRotateKey(spep_5+68, 1, 0);

setDisp(spep_5+68, 1, 0);

setShakeChara(spep_5,1,70,20);
----------------------
--集中線＆背景
----------------------
shuchusen5a = entryEffectLife( spep_5, 923, 70, 0x80,  -1, 0,  0,  0);

setEffMoveKey( spep_5, shuchusen5a, 0, 0, 0);
setEffScaleKey( spep_5, shuchusen5a, 1.6, 1.6);
setEffAlphaKey( spep_5, shuchusen5a, 255);
setEffRotateKey( spep_5, shuchusen5a, 35);

setEffMoveKey( spep_5+25, shuchusen5a, 0, 0, 0);
setEffScaleKey( spep_5+25, shuchusen5a, 1.6, 1.6);
setEffAlphaKey( spep_5+25, shuchusen5a, 255);
setEffRotateKey( spep_5+25, shuchusen5a, 35);

shuchusen5b = entryEffectLife( spep_5, 906, 70, 0x80,  -1, 0,  0,  0);

setEffMoveKey( spep_5, shuchusen5b, 0, 0, 0);
setEffScaleKey( spep_5, shuchusen5b, 1.2, 1.2);
setEffAlphaKey( spep_5, shuchusen5b, 255);
setEffRotateKey( spep_5, shuchusen5b, 0);

setEffMoveKey( spep_5+70, shuchusen5b, 0, 0, 0);
setEffScaleKey( spep_5+70, shuchusen5b, 1.2, 1.2);
setEffAlphaKey( spep_5+70, shuchusen5b, 255);
setEffRotateKey( spep_5+70, shuchusen5b, 0);

entryFadeBg( spep_5, 0, 35, 0, 10, 10, 10, 160);-- ベース暗め　背景
entryFade( spep_5+62,6,10,3,255,255,255,255);
----------------------
--書き文字「バキッ」
----------------------
baki_5=entryEffectLife(spep_5+28,10020,42, 0, -1, 0, 0, 0);

setEffMoveKey(spep_5+28,baki_5,0,300,0);
setEffScaleKey(spep_5+28,baki_5,2.0,2.0);
setEffRotateKey(spep_5+28,baki_5,10);
setEffAlphaKey(spep_5+28,baki_5,255);

setEffMoveKey(spep_5+34,baki_5,0,300,0);
setEffScaleKey(spep_5+34,baki_5,2.0,2.0);
setEffRotateKey(spep_5+34,baki_5,10);
setEffAlphaKey(spep_5+34,baki_5,255);

setEffMoveKey(spep_5+35,baki_5,0,300,0);
setEffScaleKey(spep_5+35,baki_5,2.0,2.0);
setEffRotateKey(spep_5+35,baki_5,20);
setEffAlphaKey(spep_5+35,baki_5,255);

setEffMoveKey(spep_5+36,baki_5,0,300,0);
setEffScaleKey(spep_5+36,baki_5,3.5,3.5);
setEffRotateKey(spep_5+36,baki_5,350);
setEffAlphaKey(spep_5+36,baki_5,255);

setEffMoveKey(spep_5+39,baki_5,0,300,0);
setEffScaleKey(spep_5+39,baki_5,3.5,3.5);
setEffRotateKey(spep_5+39,baki_5,350);
setEffAlphaKey(spep_5+39,baki_5,255);

setEffMoveKey(spep_5+40,baki_5,0,300,0);
setEffScaleKey(spep_5+40,baki_5,2.0,2.0);
setEffRotateKey(spep_5+40,baki_5,10);
setEffAlphaKey(spep_5+40,baki_5,255);

setEffMoveKey(spep_5+45,baki_5,0,300,0);
setEffScaleKey(spep_5+45,baki_5,2.0,2.0);
setEffRotateKey(spep_5+45,baki_5,10);
setEffAlphaKey(spep_5+45,baki_5,255);

setEffMoveKey(spep_5+70,baki_5,0,300,0);
setEffScaleKey(spep_5+70,baki_5,2.0,2.0);
setEffRotateKey(spep_5+70,baki_5,10);
setEffAlphaKey(spep_5+70,baki_5,60);

setEffShake(spep_5,baki_5,10,20);
------------------
--定番の爆発
------------------
spep_e = spep_5+70;

setDisp( spep_e-1, 1, 1);
setMoveKey(  spep_e-1,    1,  100,  0,   0);
setScaleKey( spep_e-1,    1,  1.0, 1.0);
setMoveKey(  spep_e,    1,    0,   0,   128);
setScaleKey( spep_e,    1,  0.1, 0.1);

changeAnime( spep_e, 1, 107);                         -- 手前ダメージ
entryEffect( spep_e+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_e+8, SE_10);

setMoveKey(  spep_e+8,   1,    0,   0,   128);
setMoveKey(  spep_e+15,   1,  -60,  -200,  -100);
setMoveKey(  spep_e+16,   1,  -60,  -200,  -100);
setDamage( spep_e+16, 1, 0);  -- ダメージ振動等
setShake(spep_e+7,6,15);
setShake(spep_e+13,15,10);

setRotateKey( spep_e,  1,  30 );
setRotateKey( spep_e+2,  1,  80 );
setRotateKey( spep_e+4,  1, 120 );
setRotateKey( spep_e+6,  1, 160 );
setRotateKey( spep_e+8,  1, 200 );
setRotateKey( spep_e+10,  1, 260 );
setRotateKey( spep_e+12,  1, 320 );
setRotateKey( spep_e+14,  1,   0 );

setShakeChara( spep_e+15, 1, 5,  10);
setShakeChara( spep_e+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep_e+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep_e+15, ct, 30, 10);
setEffRotateKey( spep_e+15, ct, -40);
setEffScaleKey( spep_e+15, ct, 4.0, 4.0);
setEffScaleKey( spep_e+16, ct, 2.0, 2.0);
setEffScaleKey( spep_e+17, ct, 2.6, 2.6);
setEffScaleKey( spep_e+18, ct, 4.0, 4.0);
setEffScaleKey( spep_e+19, ct, 2.6, 2.6);
setEffScaleKey( spep_e+20, ct, 3.8, 3.8);
setEffScaleKey( spep_e+110, ct, 3.8, 3.8);
setEffAlphaKey( spep_e+15, ct, 255);
setEffAlphaKey( spep_e+105, ct, 255);
setEffAlphaKey( spep_e+115, ct, 0);

playSe( spep_e+3, SE_11);
shuchusen = entryEffectLife( spep_e+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_e+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(spep_e+16);

entryFade( spep_e+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase( spep_e+110);

else

------------------
--SP_01=150816; --溜め	ef_001	75	バトルキャラ込み 0-149
------------------
kame_flag = 0x00;
setVisibleUI(0, 0);

spep_1=0;

--集中線
shuchusen_1= entryEffectLife(spep_1+7,906, 143, 0x80, -1 ,0,0,0);

setEffMoveKey(spep_1+7, shuchusen_1, 0, 0, 0);
setEffScaleKey(spep_1+7, shuchusen_1, 1.0 ,1.0);
setEffAlphaKey(spep_1+7, shuchusen_1, 255);
setEffRotateKey(spep_1+7, shuchusen_1, 0);

setEffMoveKey(spep_1+150, shuchusen_1, 0,0, 0);
setEffScaleKey(spep_1+150, shuchusen_1, 1.0 ,1.0);
setEffAlphaKey(spep_1+150, shuchusen_1, 255);
setEffRotateKey(spep_1+150, shuchusen_1,0);

spatack_1= entryEffectLife(spep_1, SP_02,150, 0x80, -1 ,0,0,0);

setEffMoveKey(spep_1, spatack_1,0, 0, 0);
setEffScaleKey(spep_1, spatack_1,1.0 ,1.0);
setEffAlphaKey(spep_1, spatack_1,255);
setEffRotateKey(spep_1, spatack_1,0);

setEffMoveKey(spep_1+150, spatack_1,0, 0, 0);
setEffScaleKey(spep_1+150, spatack_1,1.0 ,1.0);
setEffAlphaKey(spep_1+150, spatack_1,255);
setEffRotateKey(spep_1+150, spatack_1,0);

setEffShake(spep_1, spatack_1, 150, 10);

--7Fから白F
entryFade( spep_1+7,0,2,8,255,255,255,200);             -- black fade
--[[
--コメントカットイン
speff = entryEffect(  spep_1+63,   1504,   0,-1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_1+63,   1505,   0,-1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
]]--
playSe(spep_1+63,SE_04);

aura3 = entryEffectLife(spep_1+7,311, 143, 0x80,  -1,  15,  -100,  0); -- オーラ
setEffMoveKey(spep_1+7, aura3,15, -100, 0);
setEffScaleKey( spep_1+7, aura3, 1.0, 1.0);
setEffAlphaKey(spep_1+7, aura3,255);
setEffRotateKey(spep_1+7, aura3,0);

setEffMoveKey(spep_1+150, aura3,-15, -100, 0);
setEffScaleKey(spep_1+150, aura3,1.0 ,1.0);
setEffAlphaKey(spep_1+150, aura3,255);
setEffRotateKey(spep_1+150, aura3,0);

playSe(spep_1+7,SE_01);--SE_01 = 1035; --気を貯める

ctgogo= entryEffectLife( spep_1+76, 190006, 74, 0x100, -1, -200, 500, 0);    -- ゴゴゴゴ
setEffScaleKey( spep_1+76, ctgogo, -0.7, 0.7);
setEffRotateKey( spep_1+76, ctgogo, 10);
setEffAlphaKey( spep_1+76, ctgogo, 255);
setEffMoveKey( spep_1+76, ctgogo, -200, 500,0);

setEffScaleKey( spep_1+143, ctgogo, -0.7, 0.7);
setEffRotateKey( spep_1+143, ctgogo, 10);
setEffAlphaKey( spep_1+143, ctgogo, 255);
setEffMoveKey( spep_1+143, ctgogo, -200, 500,0);

setEffScaleKey( spep_1+150, ctgogo, -2.0, 2.0);
setEffRotateKey( spep_1+150, ctgogo, 10);
setEffAlphaKey( spep_1+150, ctgogo, 255);
setEffMoveKey( spep_1+150, ctgogo, -200, 500,0);

entryFadeBg( spep_1+7,0,143,0,10,10,10,160);
entryFade( spep_1+145,3,4,3,255,255,255,255);
------------------
--カードカットイン(定型文)
------------------
spep_2 = spep_1+150;

-- ** 背景 ** --
entryFadeBg( spep_2, 0, 89, 0, 10, 10, 10, 180); -- ベース暗め　背景

-- ** カードカットイン ** --
speff_2 = entryEffect( spep_2, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff_2, 1, 1);
setEffReplaceTexture( speff_2, 2, 0); -- カード差し替え
setEffReplaceTexture( speff_2, 5, 4); -- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen_2 = entryEffectLife( spep_2+1, 906, 89, 0x80, -1, 0, 0, 0); -- 集中線

setEffMoveKey( spep_2+1, shuchusen_2, 0, 0, 0);
setEffScaleKey( spep_2+1, shuchusen_2, 1.2, 1.2);
setEffAlphaKey( spep_2+1, shuchusen_2, 255);
setEffRotateKey( spep_2+1, shuchusen_2, 0);

-- ** 音 ** --
playSe(spep_2+5,SE_05);

entryFade(spep_2+83,5,8,5,255,255,255,255);

------------------
--SP_03=150818; --超能力	ef_002	70	バトルキャラ込み 245
------------------
spep_3 = spep_2+95;

spatack_3 = entryEffectLife(spep_3, SP_04 , 140, 0x100, -1 ,0,0,0);

setEffMoveKey(spep_3, spatack_3, 0, 0, 0);
setEffScaleKey(spep_3, spatack_3, 1.0 ,1.0);
setEffAlphaKey(spep_3, spatack_3, 255);
setEffRotateKey(spep_3, spatack_3, 0);

--setEffShake(spep_3, spatack_3, 70, 20);

----------------------
--敵の動き
----------------------
changeAnime(spep_3,1,103);
setDisp(spep_3,1,1);

setMoveKey(spep_3, 1, 800, 850, 0);
setEffScaleKey(spep_3, 1, 1.0 ,1.0);
setEffRotateKey(spep_3, 1, 0);

shuchusen3a = entryEffectLife( spep_3, 923, 40, 0x80,  -1, 0,  0,  0);

setEffMoveKey( spep_3, shuchusen3a, 0, 0, 0);
setEffScaleKey( spep_3, shuchusen3a, 1.6, 1.6);
setEffAlphaKey( spep_3, shuchusen3a, 255);
setEffRotateKey( spep_3, shuchusen3a, 35);

entryFadeBg( spep_3, 0, 140, 0, 10, 10, 10, 160);-- ベース暗め　背景

setMoveKey(spep_3+22, 1, 400, 450, 0);
setEffScaleKey(spep_3+22, 1, 1.5 ,1.5);
setEffRotateKey(spep_3+22, 1, 0);

shuchusen3b = entryEffectLife( spep_3, 906, 140, 0x80,  -1, 0,  0,  0);

setEffMoveKey( spep_3, shuchusen3b, 0, 0, 0);
setEffScaleKey( spep_3, shuchusen3b, 1.3, 1.3);
setEffAlphaKey( spep_3, shuchusen3b, 255);
setEffRotateKey( spep_3, shuchusen3b, 0);

-------------------------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = 273; --エンドフェイズのフレーム数を置き換える spep_3+28

setMoveKey(SP_dodge, 1, 158, 162, 0);
setEffScaleKey(SP_dodge, 1, 1.5 ,1.5);
setEffRotateKey(SP_dodge, 1, 0);

setMoveKey(SP_dodge+9, 1, 158, 162, 0);
setEffScaleKey(SP_dodge+9, 1, 1.5 ,1.5);
setEffRotateKey(SP_dodge+9, 1, 0);


setDisp(SP_dodge+9, 1, 0);

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

dodge = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(SP_dodge+10);

do return end
else end

--[[
----------------------
--敵の動き
----------------------
changeAnime(spep_3,1,103);
setDisp(spep_3,1,1);

setMoveKey(spep_3, 1, 800, 850, 0);
setEffScaleKey(spep_3, 1, 1.0 ,1.0);
setEffRotateKey(spep_3, 1, 0);
]]--

--changeAnime(spep_3+22,1,106);
entryFade(spep_3+35,1,2,1,255,255,255,180);

playSe(spep_3+38,1034); --超能力
playSe(spep_3+78,1034); --超能力

changeAnime(spep_3+37,1,108);

setMoveKey(spep_3+37, 1, 140, 180, 0);
setEffScaleKey(spep_3+37, 1, 1.5 ,1.5);
setEffRotateKey(spep_3+37, 1, 0);

entryFade(spep_3+81,1,2,1,255,255,255,180);

changeAnime(spep_3+83,1,106);

setMoveKey(spep_3+83, 1, 150, 180, 0);
setEffScaleKey(spep_3+83, 1, 1.5 ,1.5);
setEffRotateKey(spep_3+83, 1, 0);

setMoveKey(spep_3+140, 1, 150, 180, 0);
setEffScaleKey(spep_3+140, 1, 1.5 ,1.5);
setEffRotateKey(spep_3+140, 1, 0);

setEffMoveKey(spep_3+140, spatack_3, 0, 0, 0);
setEffScaleKey(spep_3+140, spatack_3, 1.0 ,1.0);
setEffAlphaKey(spep_3+140, spatack_3, 255);
setEffRotateKey(spep_3+140, spatack_3, 0);

setShakeChara(spep_3+37,1,103,20);
----------------------
--集中線＆背景
----------------------
--[[
shuchusen3a = entryEffectLife( spep_3, 923, 40, 0x80,  -1, 0,  0,  0);

setEffMoveKey( spep_3, shuchusen3a, 0, 0, 0);
setEffScaleKey( spep_3, shuchusen3a, 1.6, 1.6);
setEffAlphaKey( spep_3, shuchusen3a, 255);
setEffRotateKey( spep_3, shuchusen3a, 35);

]]--
setEffMoveKey( spep_3+40, shuchusen3a, 0, 0, 0);
setEffScaleKey( spep_3+40, shuchusen3a, 1.6, 1.6);
setEffAlphaKey( spep_3+40, shuchusen3a, 255);
setEffRotateKey( spep_3+40, shuchusen3a, 35);
--[[
shuchusen3b = entryEffectLife( spep_3, 906, 140, 0x80,  -1, 0,  0,  0);

setEffMoveKey( spep_3, shuchusen3b, 0, 0, 0);
setEffScaleKey( spep_3, shuchusen3b, 1.3, 1.3);
setEffAlphaKey( spep_3, shuchusen3b, 255);
setEffRotateKey( spep_3, shuchusen3b, 0);
]]--
setEffMoveKey( spep_3+140, shuchusen3b, 0, 0, 0);
setEffScaleKey( spep_3+140, shuchusen3b, 1.3, 1.3);
setEffAlphaKey( spep_3+140, shuchusen3b, 255);
setEffRotateKey( spep_3+140, shuchusen3b, 0);

entryFadeBg( spep_3+90, 20, 30, 0, 10, 10, 10, 255);-- ベース暗め　背景

entryFade(spep_3+135,3,6,3,255,255,255,255);

------------------
--SP_05=150820; --突っ込む	ef_003	40	バトルキャラ込み　386
------------------
spep_4 = spep_3+141;

setDisp(spep_4,1,0);
setMoveKey(spep_4, 1, 100, 150, 0);
setEffScaleKey(spep_4, 1, 1.5 ,1.5);
setEffRotateKey(spep_4, 1, 0);

playSe(spep_4+12,1018);

spatack_4 = entryEffectLife(spep_4, SP_06, 80, 0x100, -1 ,0,0,0);

setEffMoveKey(spep_4, spatack_4, 0, 0, 0);
setEffScaleKey(spep_4, spatack_4, 1.0 ,1.0);
setEffAlphaKey(spep_4, spatack_4, 255);
setEffRotateKey(spep_4, spatack_4, 0);

setEffMoveKey(spep_4+80, spatack_4, 0, 0, 0);
setEffScaleKey(spep_4+80, spatack_4, 1.0 ,1.0);
setEffAlphaKey(spep_4+80, spatack_4, 255);
setEffRotateKey(spep_4+80, spatack_4, 0);

setEffShake(spep_4, spatack_4, 80, 20);
----------------------
--集中線＆背景
----------------------
shuchusen4 = entryEffectLife( spep_4, 906, 80, 0x80,  -1, 0,  0,  0);

setEffMoveKey( spep_4, shuchusen4, 0, 0, 0);
setEffScaleKey( spep_4, shuchusen4, 1.2, 1.2);
setEffAlphaKey( spep_4, shuchusen4, 255);
setEffRotateKey( spep_4, shuchusen4, 0);

setEffMoveKey( spep_4+80, shuchusen4, 0, 0, 0);
setEffScaleKey( spep_4+80, shuchusen4, 1.2, 1.2);
setEffAlphaKey( spep_4+80, shuchusen4, 255);
setEffRotateKey( spep_4+80, shuchusen4, 0);

entryFadeBg( spep_4, 0, 80, 0, 10, 10, 10, 160);-- ベース暗め　背景

entryFade( spep_4+75,3,6,3,255,255,255,255);
----------------------
--書き文字「ズオッ」
----------------------
--255
ctzuo = entryEffectLife( spep_4+11, 10012, 69, 0x100, -1, 0, 0, 0);    -- ズオ
setEffScaleKey( spep_4+11, ctzuo, 0.4, 0.4);
setEffRotateKey( spep_4+11, ctzuo, 30);
setEffAlphaKey( spep_4+11, ctzuo, 255);
setEffMoveKey( spep_4+11, ctzuo, 100,380,0);

setEffScaleKey( spep_4+16, ctzuo, 2.3, 2.3);
setEffRotateKey( spep_4+16, ctzuo, 30);
setEffAlphaKey( spep_4+16, ctzuo, 255);
setEffMoveKey( spep_4+16, ctzuo, 100,380,0);

setEffScaleKey( spep_4+68, ctzuo, 2.3, 2.3);
setEffRotateKey( spep_4+68, ctzuo, 30);
setEffAlphaKey( spep_4+68, ctzuo, 255);
setEffMoveKey( spep_4+68, ctzuo, 100,380,0);

setEffScaleKey( spep_4+80, ctzuo, 5.0, 5.0);
setEffRotateKey( spep_4+80, ctzuo, 30);
setEffAlphaKey( spep_4+80, ctzuo, 0);
setEffMoveKey( spep_4+80, ctzuo, 100,380,0);

setEffShake(spep_4,ctzuo,69,20);
------------------
--SP_07=150822; --蹴り	ef_004	35	バトルキャラ込み 467
------------------
spep_5 = spep_4+81;

spatack_5 = entryEffectLife(spep_5, SP_08, 70, 0x100, -1 ,0,0,0);

setEffMoveKey(spep_5, spatack_5, 0, 0, 0);
setEffScaleKey(spep_5, spatack_5, 1.0 ,1.0);
setEffAlphaKey(spep_5, spatack_5, 255);
setEffRotateKey(spep_5, spatack_5, 0);

setEffMoveKey(spep_5+70, spatack_5, 0, 0, 0);
setEffScaleKey(spep_5+70, spatack_5, 1.0 ,1.0);
setEffAlphaKey(spep_5+70, spatack_5, 255);
setEffRotateKey(spep_5+70, spatack_5, 0);

setEffShake(spep_5, spatack_4, 70, 20);

entryFadeBg( spep_5, 0, 70, 0, 10, 10, 10, 255);-- ベース暗め　背景

playSe(spep_5+26,1010);
----------------------
--敵の動き
----------------------
changeAnime(spep_5,1,106);
setDisp(spep_5,1,1);

setMoveKey(spep_5, 1, 0, 0, 0);
setScaleKey(spep_5, 1, 1.5 ,1.5);
setRotateKey(spep_5, 1, 0);

setMoveKey(spep_5+24, 1, 0, 0, 0);
setScaleKey(spep_5+24, 1, 1.5 ,1.5);
setRotateKey(spep_5+24, 1, 0);

changeAnime(spep_5+25,1,108);

setMoveKey(spep_5+25, 1, 50, 50, 0);
setScaleKey(spep_5+25, 1, 1.5 ,1.5);
setRotateKey(spep_5+25, 1, 0);

setMoveKey(spep_5+68, 1, 50, 50, 0);
setScaleKey(spep_5+68, 1, 1.5 ,1.5);
setRotateKey(spep_5+68, 1, 0);

setDisp(spep_5+68, 1, 0);

setShakeChara(spep_5,1,70,20);
----------------------
--集中線＆背景
----------------------
shuchusen5a = entryEffectLife( spep_5, 923, 70, 0x80,  -1, 0,  0,  0);

setEffMoveKey( spep_5, shuchusen5a, 0, 0, 0);
setEffScaleKey( spep_5, shuchusen5a, 1.6, 1.6);
setEffAlphaKey( spep_5, shuchusen5a, 255);
setEffRotateKey( spep_5, shuchusen5a, 35);

setEffMoveKey( spep_5+25, shuchusen5a, 0, 0, 0);
setEffScaleKey( spep_5+25, shuchusen5a, 1.6, 1.6);
setEffAlphaKey( spep_5+25, shuchusen5a, 255);
setEffRotateKey( spep_5+25, shuchusen5a, 35);

shuchusen5b = entryEffectLife( spep_5, 906, 70, 0x80,  -1, 0,  0,  0);

setEffMoveKey( spep_5, shuchusen5b, 0, 0, 0);
setEffScaleKey( spep_5, shuchusen5b, 1.2, 1.2);
setEffAlphaKey( spep_5, shuchusen5b, 255);
setEffRotateKey( spep_5, shuchusen5b, 0);

setEffMoveKey( spep_5+70, shuchusen5b, 0, 0, 0);
setEffScaleKey( spep_5+70, shuchusen5b, 1.2, 1.2);
setEffAlphaKey( spep_5+70, shuchusen5b, 255);
setEffRotateKey( spep_5+70, shuchusen5b, 0);

entryFadeBg( spep_5, 0, 35, 0, 10, 10, 10, 160);-- ベース暗め　背景
entryFade( spep_5+62,6,10,3,255,255,255,255);
----------------------
--書き文字「バキッ」
----------------------
baki_5=entryEffectLife(spep_5+28,10020,42, 0, -1, 0, 0, 0);

setEffMoveKey(spep_5+28,baki_5,0,300,0);
setEffScaleKey(spep_5+28,baki_5,2.0,2.0);
setEffRotateKey(spep_5+28,baki_5,10);
setEffAlphaKey(spep_5+28,baki_5,255);

setEffMoveKey(spep_5+34,baki_5,0,300,0);
setEffScaleKey(spep_5+34,baki_5,2.0,2.0);
setEffRotateKey(spep_5+34,baki_5,10);
setEffAlphaKey(spep_5+34,baki_5,255);

setEffMoveKey(spep_5+35,baki_5,0,300,0);
setEffScaleKey(spep_5+35,baki_5,2.0,2.0);
setEffRotateKey(spep_5+35,baki_5,20);
setEffAlphaKey(spep_5+35,baki_5,255);

setEffMoveKey(spep_5+36,baki_5,0,300,0);
setEffScaleKey(spep_5+36,baki_5,3.5,3.5);
setEffRotateKey(spep_5+36,baki_5,350);
setEffAlphaKey(spep_5+36,baki_5,255);

setEffMoveKey(spep_5+39,baki_5,0,300,0);
setEffScaleKey(spep_5+39,baki_5,3.5,3.5);
setEffRotateKey(spep_5+39,baki_5,350);
setEffAlphaKey(spep_5+39,baki_5,255);

setEffMoveKey(spep_5+40,baki_5,0,300,0);
setEffScaleKey(spep_5+40,baki_5,2.0,2.0);
setEffRotateKey(spep_5+40,baki_5,10);
setEffAlphaKey(spep_5+40,baki_5,255);

setEffMoveKey(spep_5+45,baki_5,0,300,0);
setEffScaleKey(spep_5+45,baki_5,2.0,2.0);
setEffRotateKey(spep_5+45,baki_5,10);
setEffAlphaKey(spep_5+45,baki_5,255);

setEffMoveKey(spep_5+70,baki_5,0,300,0);
setEffScaleKey(spep_5+70,baki_5,2.0,2.0);
setEffRotateKey(spep_5+70,baki_5,10);
setEffAlphaKey(spep_5+70,baki_5,60);

setEffShake(spep_5,baki_5,10,20);
------------------
--定番の爆発
------------------
spep_e = spep_5+70;

setDisp( spep_e-1, 1, 1);
setMoveKey(  spep_e-1,    1,  100,  0,   0);
setScaleKey( spep_e-1,    1,  1.0, 1.0);
setMoveKey(  spep_e,    1,    0,   0,   128);
setScaleKey( spep_e,    1,  0.1, 0.1);

changeAnime( spep_e, 1, 107);                         -- 手前ダメージ
entryEffect( spep_e+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_e+8, SE_10);

setMoveKey(  spep_e+8,   1,    0,   0,   128);
setMoveKey(  spep_e+15,   1,  -60,  -200,  -100);
setMoveKey(  spep_e+16,   1,  -60,  -200,  -100);
setDamage( spep_e+16, 1, 0);  -- ダメージ振動等
setShake(spep_e+7,6,15);
setShake(spep_e+13,15,10);

setRotateKey( spep_e,  1,  30 );
setRotateKey( spep_e+2,  1,  80 );
setRotateKey( spep_e+4,  1, 120 );
setRotateKey( spep_e+6,  1, 160 );
setRotateKey( spep_e+8,  1, 200 );
setRotateKey( spep_e+10,  1, 260 );
setRotateKey( spep_e+12,  1, 320 );
setRotateKey( spep_e+14,  1,   0 );

setShakeChara( spep_e+15, 1, 5,  10);
setShakeChara( spep_e+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep_e+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep_e+15, ct, 30, 10);
setEffRotateKey( spep_e+15, ct, -40);
setEffScaleKey( spep_e+15, ct, 4.0, 4.0);
setEffScaleKey( spep_e+16, ct, 2.0, 2.0);
setEffScaleKey( spep_e+17, ct, 2.6, 2.6);
setEffScaleKey( spep_e+18, ct, 4.0, 4.0);
setEffScaleKey( spep_e+19, ct, 2.6, 2.6);
setEffScaleKey( spep_e+20, ct, 3.8, 3.8);
setEffScaleKey( spep_e+110, ct, 3.8, 3.8);
setEffAlphaKey( spep_e+15, ct, 255);
setEffAlphaKey( spep_e+105, ct, 255);
setEffAlphaKey( spep_e+115, ct, 0);

playSe( spep_e+3, SE_11);
shuchusen = entryEffectLife( spep_e+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_e+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(spep_e+16);

entryFade( spep_e+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase( spep_e+110);

end