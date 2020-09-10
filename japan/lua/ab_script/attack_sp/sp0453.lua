--4013840  超サイヤ人ゴッドSSベジータ(進化) 気弾sp453

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

SE_13 = 1056; --電撃
SE_14 = 1043; --電撃
SE_15 = 1044; --地響き
SE_16 = 1033; --攻撃

SP_01 = 151577;--気溜め(90F)
SP_02 = 151578;--正面構図(160F)
SP_03 = 151579;--発射(130F)
SP_04 = 151580;--迫るうねる(92F)
SP_05 = 151581;--命中(90F)
SP_06 = 151582;--地面(90F)
SP_07 = 151583;--ギャン10(60F)
SP_08 = 1682;--必殺技用（地球から光が放出）黄に青バチバチ(180F)

multi_frm = 2;

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
setVisibleUI(0, 0);
setDisp( 0, 0, 0); --味方表示
setDisp( 0, 1, 0); --敵非表示
changeAnime( 0, 0, 1); --味方立ちポーズ
setMoveKey( 0, 0, 0, -900, 0); --味方位置
setMoveKey( 1, 0, 0, -900, 0); --味方位置
setMoveKey( 2, 0, 0, -900, 0); --味方位置
setMoveKey( 3, 0, 0, -900, 0); --味方位置
setMoveKey( 4, 0, 0, -900, 0); --味方位置
setMoveKey( 5, 0, 0, -900, 0); --味方位置
setScaleKey( 0,    0,  1.5, 1.5);
setScaleKey( 0,    1,  1.5, 1.5);
setRotateKey( 0,  0, 0);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
--SP_01 = 151577;--気溜め(90F)
------------------------------------------------------
spep_1=0;

entryEffect(  spep_1,   1500,   0,    -1,  0,  0,  0);    -- eff_001

Kidame1 = entryEffectLife(spep_1,SP_01,90,0x100,-1,0,0,0); -- 気溜め(90F)

setEffAlphaKey(spep_1,Kidame1,255);
setEffAlphaKey(spep_1+90,Kidame1,255);
setEffScaleKey(spep_1,Kidame1,1.0,1.0);
setEffScaleKey(spep_1+90,Kidame1,1.0,1.0);
setEffRotateKey(spep_1,Kidame1,0);
setEffRotateKey(spep_1+90,Kidame1,0);

playSe(spep_1+21, SE_01);

playSe(spep_1+11, SE_04);

shuchusen1 = entryEffectLife( spep_1+21, 906, 69, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_1+21, shuchusen1, 1.0, 1.0);
setEffScaleKey( spep_1+90, shuchusen1, 1.0, 1.0);

entryFade(spep_1+20,0,2,8,fcolor_r, fcolor_g, fcolor_b,255);

entryFadeBg(spep_1,0,90,0,10,10,10,230);
entryFade(spep_1+84,4,4,4,fcolor_r, fcolor_g, fcolor_b,255);

------------------------------------------------------
--SP_02 = 151578;--正面構図(160F)
------------------------------------------------------
spep_2=spep_1+90;

Syoumen = entryEffectLife(spep_2,SP_02,160,0x100,-1,0,0,0); -- 正面構図(160F)

setEffAlphaKey(spep_2,Syoumen,255);
setEffAlphaKey(spep_2+160,Syoumen,255);
setEffScaleKey(spep_2,Syoumen,1.0,1.0);
setEffScaleKey(spep_2+160,Syoumen,1.0,1.0);
setEffRotateKey(spep_2,Syoumen,0);
setEffRotateKey(spep_2+160,Syoumen,0);

shuchusen2 = entryEffectLife( spep_2, 906, 160, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_2, shuchusen2, 1.0, 1.0);
setEffScaleKey( spep_2+160, shuchusen2, 1.0, 1.0);

speff = entryEffect(  spep_2+75,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_2+75,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe(spep_2, SE_01);

playSe( spep_2+50, SE_13);

-- 書き文字エントリー --
ctgogo = entryEffectLife( spep_2+90, 190006, 70, 0x100, -1,  0, 0, 500);    -- ゴゴゴゴ
setEffShake(spep_2+90, ctgogo, 70, 10);
setEffScaleKey(spep_2+90, ctgogo, 0.8, 0.8);
setEffRotateKey(spep_2+90, ctgogo, 0);
setEffAlphaKey( spep_2+90, ctgogo, 255);

entryFadeBg(spep_2,0,160,0,10,10,10,230);
entryFade(spep_2+154,4,4,4,fcolor_r, fcolor_g, fcolor_b,255);

------------------------------------------------------
--カードカットイン(90F)
------------------------------------------------------
spep_3=spep_2+160;

entryFadeBg( spep_3, 0, 88, 0, 10, 10, 10, 200);          -- ベース暗め　背景

playSe( spep_3, SE_05);

speff = entryEffect(  spep_3,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

shuchusen3 = entryEffectLife( spep_3, 906, 90, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3, shuchusen3, 1.0, 1.0);
setEffScaleKey( spep_3+90, shuchusen3, 1.0, 1.0);

entryFadeBg(spep_3,0,90,0,0,0,0,255);
entryFade( spep_3+80, 4,  9, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
--SP_03 = 151579;--発射(130F)
------------------------------------------------------
spep_4=spep_3+90;

Burst = entryEffectLife(spep_4,SP_03,130,0x100,-1,0,0,0); 

setEffAlphaKey(spep_4,Burst,255);
setEffAlphaKey(spep_4+130,Burst,255);
setEffScaleKey(spep_4,Burst,1.0,1.0);
setEffScaleKey(spep_4+130,Burst,1.0,1.0);
setEffRotateKey(spep_4,Burst,0);
setEffRotateKey(spep_4+130,Burst,0);

ryu4 = entryEffectLife(spep_4, 921, 130, 0x80,  -1, 0,  0,  0);   -- 流線
setEffScaleKey(spep_4, ryu4, 1.7, 1.7);
setEffScaleKey(spep_4+130, ryu4, 1.7, 1.7);
setEffRotateKey(spep_4, ryu4, 230);
setEffRotateKey(spep_4+130, ryu4, 230);

playSe( spep_4, SE_07);

-- 書き文字エントリー
ctZuo = entryEffectLife(spep_4+51, 10012, 79, 0, -1, 0, 160, 270); -- ズオッ
setEffShake( spep_4+51, ctZuo, 79, 30)
setEffScaleKey( spep_4+51, ctZuo, 2.2, 2.2);
setEffRotateKey( spep_4+51, ctZuo, 30)

shuchusen4 = entryEffectLife( spep_4, 906, 130, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_4, shuchusen4, 1.0, 1.0);
setEffScaleKey( spep_4+130, shuchusen4, 1.0, 1.0);

entryFadeBg(spep_4,0,130,0,0,0,0,255);
entryFade( spep_4+120, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
------------------------------------------------------
--SP_04 = 151580;--迫るうねる(90F)
------------------------------------------------------
spep_5=spep_4+130;

Uneri = entryEffectLife(spep_5,SP_04,90,0x100,-1,0,0,0); 

setEffAlphaKey(spep_5,Uneri,255);
setEffAlphaKey(spep_5+90,Uneri,255);
setEffScaleKey(spep_5,Uneri,1.0,1.0);
setEffScaleKey(spep_5+90,Uneri,1.0,1.0);
setEffRotateKey(spep_5,Uneri,0);
setEffRotateKey(spep_5+90,Uneri,0);

entryEffectLife( spep_5, 920, 90, 0x80,  -1,  0,  0,  0); -- 流線

shuchusen5 = entryEffectLife( spep_5, 906, 90, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_5, shuchusen5, 1.0, 1.0);
setEffScaleKey( spep_5+90, shuchusen5, 1.0, 1.0);

playSe( spep_5, SE_06);

seId1=playSe( spep_5, SE_15);
stopSe(spep_5+89,seId1,0);

-- 書き文字エントリー
ctzudodo_5 = entryEffectLife( spep_5, 10014, 90, 0x100, -1, 0, 150, 255); -- ズドドッ
setEffShake(spep_5, ctzudodo_5, 90, 40);
setEffScaleKey( spep_5, ctzudodo_5, 2.0, 2.0);
setEffScaleKey( spep_5+5, ctzudodo_5, 3.0, 3.0);
setEffScaleKey( spep_5+90, ctzudodo_5, 4.0, 4.0);
setEffRotateKey(spep_5, ctzudodo_5, 75);
setEffAlphaKey(spep_5, ctzudodo_5, 255);

-- SP_04後方から波動・奥
entryFadeBg(spep_5,0,130,0,0,0,0,255);
entryFade( spep_5+80, 4,  8, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


------------------------------------------------------
--SP_05 = 151581;--命中(90F) SP_06 = 151582;--地面(90F)
------------------------------------------------------
spep_6=spep_5+90;

setDisp( spep_6, 1, 1); --敵表示
setDisp( spep_6+70, 1, 0); --敵表示

changeAnime( spep_6, 1, 104); --敵ガードポーズ
setMoveKey( spep_6, 1, 50, -100)
setMoveKey( spep_6+90, 1, 50, -100)

setScaleKey( spep_6, 1, 1.2, 1.2)

Hit = entryEffectLife(spep_6,SP_05,90,0x100,-1,0,0,0); 

setEffAlphaKey(spep_6,Hit,255);
setEffAlphaKey(spep_6+90,Hit,255);
setEffScaleKey(spep_6,Hit,1.0,1.0);
setEffScaleKey(spep_6+90,Hit,1.0,1.0);
setEffRotateKey(spep_6,Hit,0);
setEffRotateKey(spep_6+90,Hit,0);

--setEffShake(spep_6,Hit,90,15);
playSe( spep_6, SE_06);

-- 書き文字エントリー
ctzudodo_6 = entryEffectLife( spep_6, 10014, 90, 0x100, -1, 0, 150, 255); -- ズドドッ
setEffShake(spep_6, ctzudodo_6, 90, 40);
setEffScaleKey( spep_6, ctzudodo_6, 4.0, 4.0);
setEffScaleKey( spep_6+90, ctzudodo_6, 4.6, 4.6);
setEffRotateKey(spep_6, ctzudodo_6, 75);
setEffAlphaKey(spep_6, ctzudodo_6, 255);

entryEffectLife( spep_6, 920, 90, 0x80,  -1,  0,  0,  0); -- 流線

entryEffectLife( spep_6, 921, 90, 0x80,  -1,  0,  0,  0); -- 流線斜め

Ground = entryEffectLife(spep_6,SP_06,90,0x80,-1,0,0,0); 

setEffAlphaKey(spep_6,Ground,255);
setEffAlphaKey(spep_6+90,Ground,255);
setEffScaleKey(spep_6,Ground,1.0,1.0);
setEffScaleKey(spep_6+90,Ground,1.0,1.0);
setEffRotateKey(spep_6,Ground,0);
setEffRotateKey(spep_6+90,Ground,0);

setEffShake(spep_6,Ground,90,15);

entryFadeBg(spep_6,0,90,0,0,0,0,255);
entryFade( spep_6+80, 4,  6, 1, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 回避
------------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge = spep_6+14; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

seId2=playSe( SP_dodge-4,SE_06);
stopSe( SP_dodge-4,seId2,0);

setMoveKey( SP_dodge, 1, 50, -100);
setScaleKey( SP_dodge, 1, 1.2, 1.2)
setRotateKey( SP_dodge, 1, 0);

setMoveKey( SP_dodge+8, 1, 50, -100);
setScaleKey( SP_dodge+8, 1, 1.2, 1.2)
setRotateKey( SP_dodge+8, 1, 0);

setDisp( SP_dodge+9, 1, 0);

setMoveKey( SP_dodge+9, 1, 0, 0);
setScaleKey( SP_dodge+9, 1, 1.0, 1.0);
setRotateKey( SP_dodge+9, 1, 0);

setMoveKey( SP_dodge+10, 1, 0, 0);
setScaleKey( SP_dodge+10, 1, 1.0, 1.0);
setRotateKey( SP_dodge+10, 1, 0);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--entryFadeBg(SP_dodge,0,50,0,0,0,0,255);

endPhase(SP_dodge+10);

do return end
else end
--------------------------------------------------------

stopSe(spep_6+30,seId2,0);
playSe(spep_6+36,SE_09);

------------------------------------------------------
--SP_07 = 151583;--ギャン10(60F)
------------------------------------------------------
spep_7=spep_6+90;

gyan = entryEffect(  spep_7,  SP_07,  0x100,  -1,  0,  0,  0);  --ギャン
setEffScaleKey(  spep_7,  gyan,  1.0,  1.0);
setEffAlphaKey(  spep_7,  gyan,  255);

-- 書き文字エントリー --
ct7 = entryEffectLife( spep_7, 10006, 58, 0x100, -1, 0, 0, 400);    -- ギャン

setEffScaleKey( spep_7, ct7, 3.0, 3.0);
setEffScaleKey( spep_7+58, ct7, 4.0, 4.0);
setEffAlphaKey( spep_7, ct7, 255);
setEffAlphaKey( spep_7+58, ct7, 0);
setEffShake( spep_7, ct7, 58, 10);

playSe(  spep_7, SE_09);

entryFade(  spep_7+47,  6,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryFadeBg(spep_7,0,60,0,0,0,0,255);
entryFade( spep_7+50, 4,  8, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
------------------------------------------------------
--爆発(180F)
------------------------------------------------------
spep_8=spep_7+58;

bakuhatsu = entryEffect(  spep_8,  SP_08,  0x100,  -1,  0,  0,  0);  --爆発
setEffScaleKey(  spep_8,  bakuhatsu,  1.0,  1.0);
setEffAlphaKey(  spep_8,  bakuhatsu,  255);
setEffAlphaKey(  spep_8+180,  bakuhatsu,  255);


-- 背景 --
entryFadeBg( spep_8, 0, 180, 0, 0, 0, 0, 255);       -- ベース暗め　背景

playSe( spep_8,  SE_10);

-- ダメージ表示
dealDamage( spep_8+57);

entryFade( spep_8+140, 9,  10, 1, fcolor_r, fcolor_g, fcolor_b, 255);             -- white fade

endPhase(spep_8+150);

else

------------------------------------------------------
--敵側
------------------------------------------------------

------------------------------------------------------
--SP_01 = 151577;--気溜め(90F)
------------------------------------------------------
spep_1=0;

entryEffect(  spep_1,   1500,   0,    -1,  0,  0,  0);    -- eff_001

Kidame1 = entryEffectLife(spep_1,SP_01,90,0x100,-1,0,0,0); -- 気溜め(90F)

setEffAlphaKey(spep_1,Kidame1,255);
setEffAlphaKey(spep_1+90,Kidame1,255);
setEffScaleKey(spep_1,Kidame1,1.0,1.0);
setEffScaleKey(spep_1+90,Kidame1,1.0,1.0);
setEffRotateKey(spep_1,Kidame1,0);
setEffRotateKey(spep_1+90,Kidame1,0);

playSe(spep_1+21, SE_01);

playSe(spep_1+11, SE_04);

shuchusen1 = entryEffectLife( spep_1+21, 906, 69, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_1+21, shuchusen1, 1.0, 1.0);
setEffScaleKey( spep_1+90, shuchusen1, 1.0, 1.0);

entryFade(spep_1+20,0,2,8,fcolor_r, fcolor_g, fcolor_b,255);

entryFadeBg(spep_1,0,90,0,10,10,10,230);
entryFade(spep_1+84,4,4,4,fcolor_r, fcolor_g, fcolor_b,255);

------------------------------------------------------
--SP_02 = 151578;--正面構図(160F)
------------------------------------------------------
spep_2=spep_1+90;

Syoumen = entryEffectLife(spep_2,SP_02,160,0x100,-1,0,0,0); -- 正面構図(160F)

setEffAlphaKey(spep_2,Syoumen,255);
setEffAlphaKey(spep_2+160,Syoumen,255);
setEffScaleKey(spep_2,Syoumen,-1.0,1.0);
setEffScaleKey(spep_2+160,Syoumen,-1.0,1.0);
setEffRotateKey(spep_2,Syoumen,0);
setEffRotateKey(spep_2+160,Syoumen,0);

shuchusen2 = entryEffectLife( spep_2, 906, 160, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_2, shuchusen2, 1.0, 1.0);
setEffScaleKey( spep_2+160, shuchusen2, 1.0, 1.0);

--speff = entryEffect(  spep_2+75,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  spep_2+75,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe(spep_2, SE_01);

playSe( spep_2+50, SE_13);

-- 書き文字エントリー --
ctgogo = entryEffectLife( spep_2+90, 190006, 70, 0x100, -1,  0, 0, 500);    -- ゴゴゴゴ
setEffShake(spep_2+90, ctgogo, 70, 10);
setEffScaleKey(spep_2+90, ctgogo, -0.8, 0.8);
setEffRotateKey(spep_2+90, ctgogo, 0);
setEffAlphaKey( spep_2+90, ctgogo, 255);

entryFadeBg(spep_2,0,160,0,10,10,10,230);
entryFade(spep_2+154,4,4,4,fcolor_r, fcolor_g, fcolor_b,255);

------------------------------------------------------
--カードカットイン(90F)
------------------------------------------------------
spep_3=spep_2+160;

entryFadeBg( spep_3, 0, 88, 0, 10, 10, 10, 200);          -- ベース暗め　背景

playSe( spep_3, SE_05);

speff = entryEffect(  spep_3,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

shuchusen3 = entryEffectLife( spep_3, 906, 90, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3, shuchusen3, 1.0, 1.0);
setEffScaleKey( spep_3+90, shuchusen3, 1.0, 1.0);

entryFadeBg(spep_3,0,90,0,0,0,0,255);
entryFade( spep_3+80, 4,  9, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
--SP_03 = 151579;--発射(130F)
------------------------------------------------------
spep_4=spep_3+90;

Burst = entryEffectLife(spep_4,SP_03,130,0x100,-1,0,0,0); 

setEffAlphaKey(spep_4,Burst,255);
setEffAlphaKey(spep_4+130,Burst,255);
setEffScaleKey(spep_4,Burst,1.0,1.0);
setEffScaleKey(spep_4+130,Burst,1.0,1.0);
setEffRotateKey(spep_4,Burst,0);
setEffRotateKey(spep_4+130,Burst,0);

ryu4 = entryEffectLife(spep_4, 921, 130, 0x80,  -1, 0,  0,  0);   -- 流線
setEffScaleKey(spep_4, ryu4, 1.7, 1.7);
setEffScaleKey(spep_4+130, ryu4, 1.7, 1.7);
setEffRotateKey(spep_4, ryu4, 230);
setEffRotateKey(spep_4+130, ryu4, 230);

playSe( spep_4, SE_07);

-- 書き文字エントリー
ctZuo = entryEffectLife(spep_4+51, 10012, 79, 0, -1, 0, 160, 270); -- ズオッ
setEffShake( spep_4+51, ctZuo, 79, 30)
setEffScaleKey( spep_4+51, ctZuo, 2.2, 2.2);
setEffRotateKey( spep_4+51, ctZuo, 30)

shuchusen4 = entryEffectLife( spep_4, 906, 130, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_4, shuchusen4, 1.0, 1.0);
setEffScaleKey( spep_4+130, shuchusen4, 1.0, 1.0);

entryFadeBg(spep_4,0,130,0,0,0,0,255);
entryFade( spep_4+120, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
------------------------------------------------------
--SP_04 = 151580;--迫るうねる(90F)
------------------------------------------------------
spep_5=spep_4+130;

Uneri = entryEffectLife(spep_5,SP_04,90,0x100,-1,0,0,0); 

setEffAlphaKey(spep_5,Uneri,255);
setEffAlphaKey(spep_5+90,Uneri,255);
setEffScaleKey(spep_5,Uneri,1.0,1.0);
setEffScaleKey(spep_5+90,Uneri,1.0,1.0);
setEffRotateKey(spep_5,Uneri,0);
setEffRotateKey(spep_5+90,Uneri,0);

entryEffectLife( spep_5, 920, 90, 0x80,  -1,  0,  0,  0); -- 流線

shuchusen5 = entryEffectLife( spep_5, 906, 90, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_5, shuchusen5, 1.0, 1.0);
setEffScaleKey( spep_5+90, shuchusen5, 1.0, 1.0);

playSe( spep_5, SE_06);

seId1=playSe( spep_5, SE_15);
stopSe(spep_5+89,seId1,0);

-- 書き文字エントリー
ctzudodo_5 = entryEffectLife( spep_5, 10014, 90, 0x100, -1, 0, 150, 255); -- ズドドッ
setEffShake(spep_5, ctzudodo_5, 90, 40);
setEffScaleKey( spep_5, ctzudodo_5, 2.0, 2.0);
setEffScaleKey( spep_5+5, ctzudodo_5, 3.0, 3.0);
setEffScaleKey( spep_5+90, ctzudodo_5, 4.0, 4.0);
setEffRotateKey(spep_5, ctzudodo_5, 5);
setEffAlphaKey(spep_5, ctzudodo_5, 255);

-- SP_04後方から波動・奥
entryFadeBg(spep_5,0,130,0,0,0,0,255);
entryFade( spep_5+80, 4,  8, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


------------------------------------------------------
--SP_05 = 151581;--命中(90F) SP_06 = 151582;--地面(90F)
------------------------------------------------------
spep_6=spep_5+90;

setDisp( spep_6, 1, 1); --敵表示
setDisp( spep_6+70, 1, 0); --敵表示

changeAnime( spep_6, 1, 104); --敵ガードポーズ
setMoveKey( spep_6, 1, 50, -100)
setMoveKey( spep_6+90, 1, 50, -100)

setScaleKey( spep_6, 1, 1.2, 1.2)

Hit = entryEffectLife(spep_6,SP_05,90,0x100,-1,0,0,0); 

setEffAlphaKey(spep_6,Hit,255);
setEffAlphaKey(spep_6+90,Hit,255);
setEffScaleKey(spep_6,Hit,1.0,1.0);
setEffScaleKey(spep_6+90,Hit,1.0,1.0);
setEffRotateKey(spep_6,Hit,0);
setEffRotateKey(spep_6+90,Hit,0);

--setEffShake(spep_6,Hit,90,15);
playSe( spep_6, SE_06);

-- 書き文字エントリー
ctzudodo_6 = entryEffectLife( spep_6, 10014, 90, 0x100, -1, 0, 150, 255); -- ズドドッ
setEffShake(spep_6, ctzudodo_6, 90, 40);
setEffScaleKey( spep_6, ctzudodo_6, 4.0, 4.0);
setEffScaleKey( spep_6+90, ctzudodo_6, 4.6, 4.6);
setEffRotateKey(spep_6, ctzudodo_6, 5);
setEffAlphaKey(spep_6, ctzudodo_6, 255);

entryEffectLife( spep_6, 920, 90, 0x80,  -1,  0,  0,  0); -- 流線

entryEffectLife( spep_6, 921, 90, 0x80,  -1,  0,  0,  0); -- 流線斜め

Ground = entryEffectLife(spep_6,SP_06,90,0x80,-1,0,0,0); 

setEffAlphaKey(spep_6,Ground,255);
setEffAlphaKey(spep_6+90,Ground,255);
setEffScaleKey(spep_6,Ground,1.0,1.0);
setEffScaleKey(spep_6+90,Ground,1.0,1.0);
setEffRotateKey(spep_6,Ground,0);
setEffRotateKey(spep_6+90,Ground,0);

setEffShake(spep_6,Ground,90,15);

entryFadeBg(spep_6,0,90,0,0,0,0,255);
entryFade( spep_6+80, 4,  6, 1, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 回避
------------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge = spep_6+14; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

seId2=playSe( SP_dodge-4,SE_06);
stopSe( SP_dodge-4,seId2,0);

setMoveKey( SP_dodge, 1, 50, -100);
setScaleKey( SP_dodge, 1, 1.2, 1.2)
setRotateKey( SP_dodge, 1, 0);

setMoveKey( SP_dodge+8, 1, 50, -100);
setScaleKey( SP_dodge+8, 1, 1.2, 1.2)
setRotateKey( SP_dodge+8, 1, 0);

setDisp( SP_dodge+9, 1, 0);

setMoveKey( SP_dodge+9, 1, 0, 0);
setScaleKey( SP_dodge+9, 1, 1.0, 1.0);
setRotateKey( SP_dodge+9, 1, 0);

setMoveKey( SP_dodge+10, 1, 0, 0);
setScaleKey( SP_dodge+10, 1, 1.0, 1.0);
setRotateKey( SP_dodge+10, 1, 0);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--entryFadeBg(SP_dodge,0,50,0,0,0,0,255);

endPhase(SP_dodge+10);

do return end
else end
--------------------------------------------------------

stopSe(spep_6+30,seId2,0);
playSe(spep_6+36,SE_09);

------------------------------------------------------
--SP_07 = 151583;--ギャン10(60F)
------------------------------------------------------
spep_7=spep_6+90;

gyan = entryEffect(  spep_7,  SP_07,  0x100,  -1,  0,  0,  0);  --ギャン
setEffScaleKey(  spep_7,  gyan,  1.0,  1.0);
setEffAlphaKey(  spep_7,  gyan,  255);

-- 書き文字エントリー --
ct7 = entryEffectLife( spep_7, 10006, 58, 0x100, -1, 0, 0, 400);    -- ギャン

setEffScaleKey( spep_7, ct7, 3.0, 3.0);
setEffScaleKey( spep_7+58, ct7, 4.0, 4.0);
setEffAlphaKey( spep_7, ct7, 255);
setEffAlphaKey( spep_7+58, ct7, 0);
setEffShake( spep_7, ct7, 58, 10);

playSe(  spep_7, SE_09);

entryFade(  spep_7+47,  6,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryFadeBg(spep_7,0,60,0,0,0,0,255);
entryFade( spep_7+50, 4,  8, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
------------------------------------------------------
--爆発(180F)
------------------------------------------------------
spep_8=spep_7+58;

bakuhatsu = entryEffect(  spep_8,  SP_08,  0x100,  -1,  0,  0,  0);  --爆発
setEffScaleKey(  spep_8,  bakuhatsu,  1.0,  1.0);
setEffAlphaKey(  spep_8,  bakuhatsu,  255);
setEffAlphaKey(  spep_8+180,  bakuhatsu,  255);


-- 背景 --
entryFadeBg( spep_8, 0, 180, 0, 0, 0, 0, 255);       -- ベース暗め　背景

playSe( spep_8,  SE_10);

-- ダメージ表示
dealDamage( spep_8+57);

entryFade( spep_8+140, 9,  10, 1, fcolor_r, fcolor_g, fcolor_b, 255);             -- white fade

endPhase(spep_8+150);

end
