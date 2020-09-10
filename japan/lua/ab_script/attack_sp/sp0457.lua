--sp0457 4013710 ダークネスブラスター

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--基本いじらない--
SE_01 = 1035; --気を貯める
SE_02 = 1036; --気が広がる
SE_03 = 1036; --かめはめ
SE_04 = 1018; --顔カットイン・セリフカットイン時に使用
SE_05 = 1035; --カードカットイン時に使用
SE_06 = 1021; --発射
SE_07 = 1022; --のびる発射
SE_08 = 1042; --回避時の気づきに使用
SE_09 = 1023; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音
SE_12 = 09;
---必要なSEがあれば以降に追記----

SP_01=151672; --セリフカットイン	ef_001	100
SP_02=151673; --セリフカットイン敵	ef_001r	
SP_03=151674; --発射	ef_002	100
SP_04=151675; --発射　敵	ef_002r	
SP_05=151676; --ヒット　後面	ef_003	100
SP_06=151677; --ヒット　前面	ef_004	
SP_07=151678; --爆発	ef_005	160
SP_08=151679; --爆発　敵	ef_005r	
multi_frm = 2;

---------------------------------------------------
--初期位置
---------------------------------------------------
setVisibleUI( 0, 0);

setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

changeAnime( 0, 0, 1);

setMoveKey(   0,   0,    0,  -900,   0);
setMoveKey(   0,   1,    0,  0,   0);
setMoveKey(   1,   0,    0,  -900,   0);
setMoveKey(   1,   1,    0,  0,   0);
setMoveKey(   2,   0,    0,  -900,   0);
setMoveKey(   2,   1,    0,  0,   0);
setMoveKey(   3,   0,    0,  -900,   0);
setMoveKey(   3,   1,    0,  0,   0);
setMoveKey(   4,   0,    0,  -900,   0);
setMoveKey(   4,   1,    0,  0,   0);
setMoveKey(   5,   0,    0,  -900,   0);
setMoveKey(   5,   1,    0,  0,   0);
setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   1,   0, 1.5, 1.5);
setScaleKey(   2,   0, 1.5, 1.5);
setScaleKey(   3,   0, 1.5, 1.5);
setScaleKey(   4,   0, 1.5, 1.5);
setScaleKey(   5,   0, 1.5, 1.5);
setScaleKey(   0,   1, 1.2, 1.2);
setScaleKey(   1,   1, 1.2, 1.2);
setScaleKey(   2,   1, 1.2, 1.2);
setScaleKey(   3,   1, 1.2, 1.2);
setScaleKey(   4,   1, 1.2, 1.2);
setScaleKey(   5,   1, 1.2, 1.2);

setRotateKey(   1,   0, 0);
setRotateKey(   0,   1, 0);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then
----------------------------------
-- 立ち
----------------------------------
spep_1=0;

entryFade( spep_1, 0,0,6,255,255,255,180); 

Stand = entryEffectLife( spep_1, SP_01, 100, 0x100, -1, 0, 0, 0); 
setEffShake( spep_1, Stand, 58, 15);
setEffAlphaKey( spep_1, Stand,255);
setEffScaleKey( spep_1, Stand, 1.0, 1.0);
setEffRotateKey( spep_1, Stand, 0);

setEffAlphaKey( spep_1+100, Stand,255);
setEffScaleKey( spep_1+100, Stand, 1.0, 1.0);
setEffRotateKey( spep_1+100, Stand, 0);

speff = entryEffect(  spep_1+8,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_1+8,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( spep_1, SE_01);

shuchusen1 = entryEffectLife( spep_1, 906, 100, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_1, shuchusen1, 1.2, 1.2);
setEffScaleKey( spep_1+100, shuchusen1, 1.2, 1.2);

-- 書き文字エントリー
ctgogo = entryEffectLife( spep_1+23, 190006, 80, 0x100, -1, 0, -150,500, 0);    -- ゴゴゴゴ
setEffShake(spep_1+23, ctgogo, 80, 10);
setEffScaleKey(spep_1+23, ctgogo, 0.8, 0.8);
setEffRotateKey(spep_1+23, ctgogo, 0);
setEffAlphaKey( spep_1+23, ctgogo, 255);

playSe(spep_1+23,SE_04);

-- ** エフェクト等 ** --
entryFadeBg( spep_1, 0, 100, 0, 0, 0, 0, 210);       -- ベース暗め　背景
entryFade( spep_1+83, 7, 13, 6, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade

------------------------------------------
--カードカットイン
------------------------------------------
spep_2=spep_1+100;
playSe( spep_2, SE_05);

speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

shuchusen2 = entryEffectLife( spep_2, 906, 90, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_2, shuchusen2, 1.4, 1.4);
setEffScaleKey( spep_2+90, shuchusen2, 1.4, 1.4);

entryFade( spep_2+70, 17, 5, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 発射
------------------------------------------------------
spep_3=spep_2+92;

entryFadeBg( spep_3, 0, 98, 0, 10, 10, 10, 180);          -- ベース暗め　背景

shuchusen3 = entryEffectLife( spep_3, 921, 98, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3, shuchusen3, 1.6, 1.4);
setEffScaleKey( spep_3+98, shuchusen3, 1.6, 1.4);

setEffRotateKey( spep_3, shuchusen3, 175);
setEffRotateKey( spep_3, shuchusen3, 175);

-- 発射
Burst = entryEffectLife( spep_3, SP_03, 96, 0x100, -1, 0, 0, 0); 
setEffShake( spep_3, Burst, 96, 15);
setEffAlphaKey( spep_3, Burst,255);
setEffScaleKey( spep_3, Burst, 1.0, 1.0);
setEffRotateKey( spep_3, Burst, 0);

setEffAlphaKey( spep_3+96, Burst,255);
setEffScaleKey( spep_3+96, Burst, 1.0, 1.0);
setEffRotateKey( spep_3+96, Burst, 0);

--　ズオ
ct3 = entryEffectLife( spep_3+35, 10012, 55, 0x100, -1, 0, 150, 250);
setEffShake(spep_3+35, ct3, 50, 20);
setEffScaleKey( spep_3+35, ct3, 0.1,0.1);
setEffScaleKey( spep_3+42, ct3, 2.0,2.0);
setEffScaleKey( spep_3+90, ct3, 2.0,2.0);
setEffRotateKey(spep_3+35, ct3, 25);
setEffAlphaKey(spep_3+35, ct3, 255);
setEffAlphaKey(spep_3+90, ct3, 255);

playSe( spep_3+35,SE_06);

entryFade( spep_3+92,4,4,6,255,255,255,255);
------------------------------------------------------
-- Hit
------------------------------------------------------
spep_4=spep_3+98;

entryFadeBg( spep_4, 0,68,0,10,10,10,180); 

setDisp(spep_4,1,1);
changeAnime(spep_4,1,118);
setShakeChara(spep_4,1,20,15);
setScaleKey(spep_4,1,1.3,1.3);
setScaleKey(spep_4+20,1,1.3,1.3);
setMoveKey(spep_4,1,250,-250,0);
setMoveKey(spep_4+20,1,50,-50,0);

setRotateKey(spep_4,1,20);
setRotateKey(spep_4+20,1,20);

ryusen4 = entryEffectLife( spep_4, 921, 68, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_4, ryusen4, 1.6, 1.4);
setEffRotateKey( spep_4, ryusen4, 230);

-- 発射
HitF = entryEffectLife( spep_4, SP_05, 68, 0x100, -1, 0, 0, 0); 
setEffShake( spep_4, HitF, 68, 15);
setEffAlphaKey( spep_4, HitF,255);
setEffScaleKey( spep_4, HitF, 1.0, 1.0);
setEffRotateKey( spep_4, HitF, 0);

HitB = entryEffectLife( spep_4, SP_06, 68, 0x80, -1, 0, 0, 0); 
setEffShake( spep_4, HitB, 68, 15);
setEffAlphaKey( spep_4, HitB,255);
setEffScaleKey( spep_4, HitB, 1.0, 1.0);
setEffRotateKey( spep_4, HitB, 0);

shutyusen4 = entryEffectLife( spep_4, 906, 68, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_4, shutyusen4, 1.5, 1.5);

playSe( spep_4,SE_06);

------------------------------------------------------
-- 回避
------------------------------------------------------
if (_IS_DODGE_ == 1) then

SP_dodge = spep_4+12; --エンドフェイズのフレーム数を置き換える　（spep7+43）

Seid1=playSe(spep_4,SE_06);
stopSe( spep_4,Seid1,0);
playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);

pauseAll( SP_dodge, 67);

setMoveKey(SP_dodge,1,130,-130);
setScaleKey(SP_dodge,1,1.3,1.3);
setRotateKey(SP_dodge,1,20);

setMoveKey(SP_dodge+8,1,130,-130);
setScaleKey(SP_dodge+8,1.3,1.3);
setRotateKey(SP_dodge+8,1,20);

changeAnime(SP_dodge+9,1,100);
setMoveKey(SP_dodge+9,1,0,0,0);
setScaleKey(SP_dodge+9,1,1.0,1.0);
setRotateKey(SP_dodge+9,1,0);

setMoveKey(SP_dodge+10,1,0,0,0);
setScaleKey(SP_dodge+10,1,1.0,1.0);
setRotateKey(SP_dodge+10,1,0);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(SP_dodge+10);

do return end
else end

------------------------------------------------------
-- 回避されなかった場合
------------------------------------------------------

changeAnime(spep_4+21,1,106);
setShakeChara(spep_4+21,1,47,30);
setScaleKey(spep_4+21,1,1.3,1.3);
setScaleKey(spep_4+68,1,1.3,1.3);
setMoveKey(spep_4+21,1,70,-30,0);
setMoveKey(spep_4+68,1,170,-130,0);
setRotateKey(spep_4+21,1,340);
setRotateKey(spep_4+68,1,340);
setDisp(spep_4+68,1,0);

setEffAlphaKey( spep_4+68, HitF,255);
setEffScaleKey( spep_4+68, HitF, 1.0, 1.0);
setEffRotateKey( spep_4+68, HitF, 0);

setEffAlphaKey( spep_4+68, HitB,255);
setEffScaleKey( spep_4+68, HitB, 1.0, 1.0);
setEffRotateKey( spep_4+68, HitB, 0);
setEffScaleKey( spep_4+68, ryusen4, 1.6, 1.4);
setEffRotateKey( spep_4+68, ryusen4, 230);

setEffScaleKey( spep_4+98, shutyusen4, 1.5, 1.5);

--　ズドド
ct4 = entryEffectLife( spep_4+20, 10014, 48, 0x100, -1, 0, 0, 350); -- ズドドッ
setEffShake(spep_4+20, ct4, 80, 20);
setEffScaleKey( spep_4+20, ct4, 3.2, 3.2);
setEffRotateKey(spep_4+20, ct4, 60);
setEffAlphaKey(spep_4+20, ct4, 255);
setEffAlphaKey(spep_4+68, ct4, 255);

playSe( spep_4+21,SE_09);

entryFade( spep_4+62,4,2,6,255,255,255,255);
------------------------------------------------------
--ギャン
------------------------------------------------------
spep_5=spep_4+68;

Gyan=entryEffectLife( spep_5, 190003, 58, 0x100, -1, 0, 0, 0); 
setEffShake( spep_5, Gyan, 58, 10);
setEffAlphaKey( spep_5, Gyan,255);
setEffScaleKey( spep_5, Gyan, 1.0, 1.0);
setEffRotateKey( spep_5, Gyan, 0);

setEffAlphaKey( spep_5+58, Gyan,255);
setEffScaleKey( spep_5+58, Gyan, 1.0, 1.0);
setEffRotateKey( spep_5+58, Gyan, 0);

-- 書き文字エントリー --
ct_05 = entryEffectLife( spep_5, 10006, 58, 0x100, -1, 0, 0, 300);    -- ギャン

setEffScaleKey( spep_5, ct_05, 2.0, 2.0);
setEffAlphaKey( spep_5, ct_05, 255);
setEffScaleKey( spep_5+10, ct_05, 3.8, 3.8);
setEffScaleKey( spep_5+58, ct_05, 4.5, 4.5);
setEffAlphaKey( spep_5+58, ct_05, 255);
setEffShake( spep_5, ct_05, 58, 10);

playSe(  spep_5, SE_09);

entryFadeBg(spep_5,0,60,0,0,0,0,255);
entryFade(spep_5+30, 28, 2, 16, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- Finish
------------------------------------------------------
spep_6=spep_5+58;

entryFadeBg( spep_6, 0,160,0,10,10,10,255); 

Semaru = entryEffect( spep_6, SP_07, 0x100, -1, 0, 0, 0); 
setEffShake( spep_6, Semaru, 58, 10);
setEffAlphaKey( spep_6, Semaru,255);
setEffScaleKey( spep_6, Semaru, 1.0, 1.0);
setEffRotateKey( spep_6, Semaru, 0);

setEffAlphaKey( spep_6+160, Semaru,255);
setEffScaleKey( spep_6+160, Semaru, 1.0, 1.0);
setEffRotateKey( spep_6+160, Semaru, 0);

shuchusen6 = entryEffectLife( spep_6, 906, 160, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_6, shuchusen6, 1.4, 1.4);
setEffScaleKey( spep_6+160, shuchusen6, 1.4, 1.4);

playSe( spep_6,SE_10);

-- ダメージ表示
dealDamage(spep_6+56);
entryFade(spep_6+140, 5,  10, 5, fcolor_r, fcolor_g, fcolor_b, 255);      -- white fade
endPhase(spep_6+150);

else

----------------------------------
-- 立ち
----------------------------------
spep_1=0;

entryFade( spep_1, 0,0,6,255,255,255,180); 

Stand = entryEffectLife( spep_1, SP_02, 100, 0x100, -1, 0, 0, 0); 
setEffShake( spep_1, Stand, 58, 15);
setEffAlphaKey( spep_1, Stand,255);
setEffScaleKey( spep_1, Stand, 1.0, 1.0);
setEffRotateKey( spep_1, Stand, 0);

setEffAlphaKey( spep_1+100, Stand,255);
setEffScaleKey( spep_1+100, Stand, 1.0, 1.0);
setEffRotateKey( spep_1+100, Stand, 0);

--speff = entryEffect(  spep_1+8,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  spep_1+8,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( spep_1, SE_01);

shuchusen1 = entryEffectLife( spep_1, 906, 100, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_1, shuchusen1, 1.2, 1.2);
setEffScaleKey( spep_1+100, shuchusen1, 1.2, 1.2);

-- 書き文字エントリー
ctgogo = entryEffectLife( spep_1+23, 190006, 80, 0x100, -1, 0, 0,500, 0);    -- ゴゴゴゴ
setEffShake(spep_1+23, ctgogo, 80, 10);
setEffScaleKey(spep_1+23, ctgogo, -0.8, 0.8);
setEffRotateKey(spep_1+23, ctgogo, 0);
setEffAlphaKey( spep_1+23, ctgogo, 255);

playSe(spep_1+23,SE_04);

-- ** エフェクト等 ** --
entryFadeBg( spep_1, 0, 100, 0, 0, 0, 0, 210);       -- ベース暗め　背景
entryFade( spep_1+83, 7, 13, 6, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade

------------------------------------------
--カードカットイン
------------------------------------------
spep_2=spep_1+100;
playSe( spep_2, SE_05);

speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

shuchusen2 = entryEffectLife( spep_2, 906, 90, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_2, shuchusen2, 1.4, 1.4);
setEffScaleKey( spep_2+90, shuchusen2, 1.4, 1.4);

entryFade( spep_2+70, 17, 5, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 発射
------------------------------------------------------
spep_3=spep_2+92;

entryFadeBg( spep_3, 0, 98, 0, 10, 10, 10, 180);          -- ベース暗め　背景

shuchusen3 = entryEffectLife( spep_3, 921, 98, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3, shuchusen3, 1.6, 1.4);
setEffScaleKey( spep_3+98, shuchusen3, 1.6, 1.4);

setEffRotateKey( spep_3, shuchusen3, 175);
setEffRotateKey( spep_3, shuchusen3, 175);

-- 発射
Burst = entryEffectLife( spep_3, SP_04, 96, 0x100, -1, 0, 0, 0); 
setEffShake( spep_3, Burst, 96, 15);
setEffAlphaKey( spep_3, Burst,255);
setEffScaleKey( spep_3, Burst, 1.0, 1.0);
setEffRotateKey( spep_3, Burst, 0);

setEffAlphaKey( spep_3+96, Burst,255);
setEffScaleKey( spep_3+96, Burst, 1.0, 1.0);
setEffRotateKey( spep_3+96, Burst, 0);

--　ズオ
ct3 = entryEffectLife( spep_3+35, 10012, 55, 0x100, -1, 0, 150, 250);
setEffShake(spep_3+35, ct3, 50, 20);
setEffScaleKey( spep_3+35, ct3, 0.1,0.1);
setEffScaleKey( spep_3+42, ct3, 2.0,2.0);
setEffScaleKey( spep_3+90, ct3, 2.0,2.0);
setEffRotateKey(spep_3+35, ct3, 25);
setEffAlphaKey(spep_3+35, ct3, 255);
setEffAlphaKey(spep_3+90, ct3, 255);

playSe( spep_3+35,SE_06);

entryFade( spep_3+92,4,4,6,255,255,255,255);
------------------------------------------------------
-- Hit
------------------------------------------------------
spep_4=spep_3+98;

entryFadeBg( spep_4, 0,68,0,10,10,10,180); 

setDisp(spep_4,1,1);
changeAnime(spep_4,1,118);
setShakeChara(spep_4,1,20,15);
setScaleKey(spep_4,1,1.3,1.3);
setScaleKey(spep_4+20,1,1.3,1.3);
setMoveKey(spep_4,1,250,-250,0);
setMoveKey(spep_4+20,1,50,-50,0);

setRotateKey(spep_4,1,20);
setRotateKey(spep_4+20,1,20);

ryusen4 = entryEffectLife( spep_4, 921, 68, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_4, ryusen4, 1.6, 1.4);
setEffRotateKey( spep_4, ryusen4, 230);

-- 発射
HitF = entryEffectLife( spep_4, SP_05, 68, 0x100, -1, 0, 0, 0); 
setEffShake( spep_4, HitF, 68, 15);
setEffAlphaKey( spep_4, HitF,255);
setEffScaleKey( spep_4, HitF, 1.0, 1.0);
setEffRotateKey( spep_4, HitF, 0);

HitB = entryEffectLife( spep_4, SP_06, 68, 0x80, -1, 0, 0, 0); 
setEffShake( spep_4, HitB, 68, 15);
setEffAlphaKey( spep_4, HitB,255);
setEffScaleKey( spep_4, HitB, 1.0, 1.0);
setEffRotateKey( spep_4, HitB, 0);

shutyusen4 = entryEffectLife( spep_4, 906, 68, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_4, shutyusen4, 1.5, 1.5);

playSe( spep_4,SE_06);

------------------------------------------------------
-- 回避
------------------------------------------------------
if (_IS_DODGE_ == 1) then

SP_dodge = spep_4+12; --エンドフェイズのフレーム数を置き換える　（spep7+43）

Seid1=playSe(spep_4,SE_06);
stopSe( spep_4,Seid1,0);
playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);

pauseAll( SP_dodge, 67);

setMoveKey(SP_dodge,1,130,-130);
setScaleKey(SP_dodge,1,1.3,1.3);
setRotateKey(SP_dodge,1,20);

setMoveKey(SP_dodge+8,1,130,-130);
setScaleKey(SP_dodge+8,1.3,1.3);
setRotateKey(SP_dodge+8,1,20);

changeAnime(SP_dodge+9,1,100);
setMoveKey(SP_dodge+9,1,0,0,0);
setScaleKey(SP_dodge+9,1,1.0,1.0);
setRotateKey(SP_dodge+9,1,0);

setMoveKey(SP_dodge+10,1,0,0,0);
setScaleKey(SP_dodge+10,1,1.0,1.0);
setRotateKey(SP_dodge+10,1,0);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(SP_dodge+10);

do return end
else end

------------------------------------------------------
-- 回避されなかった場合
------------------------------------------------------

changeAnime(spep_4+21,1,106);
setShakeChara(spep_4+21,1,47,30);
setScaleKey(spep_4+21,1,1.3,1.3);
setScaleKey(spep_4+68,1,1.3,1.3);
setMoveKey(spep_4+21,1,70,-30,0);
setMoveKey(spep_4+68,1,170,-130,0);
setRotateKey(spep_4+21,1,340);
setRotateKey(spep_4+68,1,340);
setDisp(spep_4+68,1,0);

setEffAlphaKey( spep_4+68, HitF,255);
setEffScaleKey( spep_4+68, HitF, 1.0, 1.0);
setEffRotateKey( spep_4+68, HitF, 0);

setEffAlphaKey( spep_4+68, HitB,255);
setEffScaleKey( spep_4+68, HitB, 1.0, 1.0);
setEffRotateKey( spep_4+68, HitB, 0);
setEffScaleKey( spep_4+68, ryusen4, 1.6, 1.4);
setEffRotateKey( spep_4+68, ryusen4, 230);

setEffScaleKey( spep_4+98, shutyusen4, 1.5, 1.5);

--　ズドド
ct4 = entryEffectLife( spep_4+20, 10014, 48, 0x100, -1, 0, 0, 350); -- ズドドッ
setEffShake(spep_4+20, ct4, 80, 20);
setEffScaleKey( spep_4+20, ct4, 3.2, 3.2);
setEffRotateKey(spep_4+20, ct4, 0);
setEffAlphaKey(spep_4+20, ct4, 255);
setEffAlphaKey(spep_4+68, ct4, 255);

playSe( spep_4+21,SE_09);

entryFade( spep_4+62,4,2,6,255,255,255,255);
------------------------------------------------------
--ギャン
------------------------------------------------------
spep_5=spep_4+68;

Gyan=entryEffectLife( spep_5, 190003, 58, 0x100, -1, 0, 0, 0); 
setEffShake( spep_5, Gyan, 58, 10);
setEffAlphaKey( spep_5, Gyan,255);
setEffScaleKey( spep_5, Gyan, 1.0, 1.0);
setEffRotateKey( spep_5, Gyan, 0);

setEffAlphaKey( spep_5+58, Gyan,255);
setEffScaleKey( spep_5+58, Gyan, 1.0, 1.0);
setEffRotateKey( spep_5+58, Gyan, 0);

-- 書き文字エントリー --
ct_05 = entryEffectLife( spep_5, 10006, 58, 0x100, -1, 0, 0, 300);    -- ギャン

setEffScaleKey( spep_5, ct_05, 2.0, 2.0);
setEffAlphaKey( spep_5, ct_05, 255);
setEffScaleKey( spep_5+10, ct_05, 3.8, 3.8);
setEffScaleKey( spep_5+58, ct_05, 4.5, 4.5);
setEffAlphaKey( spep_5+58, ct_05, 255);
setEffShake( spep_5, ct_05, 58, 10);

playSe(  spep_5, SE_09);

entryFadeBg(spep_5,0,60,0,0,0,0,255);
entryFade(spep_5+30, 28, 2, 16, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- Finish
------------------------------------------------------
spep_6=spep_5+58;

entryFadeBg( spep_6, 0,160,0,10,10,10,255); 

Semaru = entryEffect( spep_6, SP_08, 0x100, -1, 0, 0, 0); 
setEffShake( spep_6, Semaru, 58, 10);
setEffAlphaKey( spep_6, Semaru,255);
setEffScaleKey( spep_6, Semaru, 1.0, 1.0);
setEffRotateKey( spep_6, Semaru, 0);

setEffAlphaKey( spep_6+160, Semaru,255);
setEffScaleKey( spep_6+160, Semaru, 1.0, 1.0);
setEffRotateKey( spep_6+160, Semaru, 0);

shuchusen6 = entryEffectLife( spep_6, 906, 160, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_6, shuchusen6, 1.4, 1.4);
setEffScaleKey( spep_6+160, shuchusen6, 1.4, 1.4);

playSe( spep_6,SE_10);

-- ダメージ表示
dealDamage(spep_6+56);
entryFade(spep_6+140, 5,  10, 5, fcolor_r, fcolor_g, fcolor_b, 255);      -- white fade
endPhase(spep_6+150);

end