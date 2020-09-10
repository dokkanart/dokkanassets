--SP0455 1014010 ファイナルスピリッツキャノン

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

SP_01 = 151628; --溜め
SP_02 = 151629; --構え
SP_03 = 151630; --投げる〜着弾

SP_01e = 151631; --溜め
SP_02e = 151632; --構え
SP_03e = 151633; --投げる〜着弾

multi_frm = 2;

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
setVisibleUI(0, 0);
setDisp( 0, 0, 0); --味方非表示
setDisp( 0, 1, 0); --敵非表示

changeAnime( 0, 0, 1); --味方立ちポーズ

setMoveKey( 0, 0, 0,    -900, 0); --味方位置
setMoveKey( 1, 0, 0,    -900, 0); --味方位置
setMoveKey( 2, 0, 0,    -900, 0); --味方位置
setMoveKey( 3, 0, 0,    -900, 0); --味方位置
setMoveKey( 4, 0, 0,    -900, 0); --味方位置
setMoveKey( 5, 0, 0,    -900, 0); --味方位置

setScaleKey( 0,    0,  1.5, 1.5);
setScaleKey( 1,    0,  1.5, 1.5);
setScaleKey( 2,    0,  1.5, 1.5);
setScaleKey( 3,    0,  1.5, 1.5);
setScaleKey( 4,    0,  1.5, 1.5);
setScaleKey( 5,    0,  1.5, 1.5);

setRotateKey( 0,  0, 0);
setRotateKey( 1,  0, 0);
setRotateKey( 2,  0, 0);
setRotateKey( 3,  0, 0);
setRotateKey( 4,  0, 0);
setRotateKey( 5,  0, 0);

setScaleKey( 0,    1,  2.5, 2.5);

------------------------------------------------------
-- 溜め
------------------------------------------------------
spep_1=0;

entryFadeBg( spep_1, 0, 158, 0, 10, 10, 10, 200);          -- ベース暗め　背景
entryFade( spep_1, 0, 0, 6, 255, 255, 255, 200);          -- 白
entryFade( spep_1+40, 10, 10, 8, 255, 255, 255, 255);          -- 白
entryFade( spep_1+149, 7, 3, 7, 255, 255, 255, 255);          -- 白

-- 溜め
Tame = entryEffectLife( spep_1, SP_01, 158, 0, -1, 0, 0, 0);
setEffShake( spep_1, Tame, 158, 10);
setEffAlphaKey( spep_1, Tame,255);
setEffScaleKey( spep_1, Tame, 1.0, 1.0);
setEffRotateKey( spep_1, Tame, 0);

setEffAlphaKey( spep_1+158, Tame,255);
setEffScaleKey( spep_1+158, Tame, 1.0, 1.0);
setEffRotateKey( spep_1+158, Tame, 0);

-- カットイン
speff = entryEffect(  spep_1+71,   1504,   0,     -1,  0,  0,  0);-- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);-- カットイン差し替え
speff = entryEffect(  spep_1+71,   1505,   0,     -1,  0,  0,  0);-- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);-- セリフ差し替え

-- 書き文字エントリー --「ゴゴゴゴッ」
ct_Gogogo = entryEffectLife( spep_1+80, 190006, 78, 0x100, -1, 0, 0, 500);    -- ゴゴゴゴ
setEffShake( spep_1+80, ct_Gogogo, 80, 10);
setEffScaleKey( spep_1+80, ct_Gogogo, 0.8, 0.8);
setEffRotateKey( spep_1+80, ct_Gogogo, 0);
setEffAlphaKey( spep_1+80, ct_Gogogo, 255);

setEffScaleKey( spep_1+148, ct_Gogogo, 0.8, 0.8);
setEffRotateKey( spep_1+148, ct_Gogogo, 0);
setEffAlphaKey( spep_1+148, ct_Gogogo, 255);

setEffScaleKey( spep_1+158, ct_Gogogo, 2.5, 2.5);
setEffRotateKey( spep_1+158, ct_Gogogo, 0);
setEffAlphaKey( spep_1+158, ct_Gogogo, 0);

--　集中線
syucyusen1 = entryEffectLife(spep_1, 906, 158, 0x80, -1, 0, 0, 0);
setEffScaleKey( spep_1, syucyusen1, 1.3, 1.3);
setEffRotateKey( spep_1, syucyusen1, 0);
setEffAlphaKey( spep_1, syucyusen1, 255);
setEffScaleKey( spep_1+58, syucyusen1, 1.3, 1.3);
setEffRotateKey( spep_1+58, syucyusen1, 0);
setEffAlphaKey( spep_1+58, syucyusen1, 255);

setEffScaleKey( spep_1+59, syucyusen1, 1.6, 1.6);
setEffRotateKey( spep_1+59, syucyusen1, 0);
setEffAlphaKey( spep_1+59, syucyusen1, 255);

setEffScaleKey( spep_1+158, syucyusen1, 1.6, 1.6);
setEffRotateKey( spep_1+158, syucyusen1, 0);
setEffAlphaKey( spep_1+158, syucyusen1, 255);

--SE
playSe( spep_1,SE_01);
playSe( spep_1+80,SE_04);

------------------------------------------------------
-- カードカットイン
------------------------------------------------------
spep_2=spep_1+158;

entryFadeBg( spep_2, 0, 88, 0, 10, 10, 10, 200);          -- ベース暗め　背景

playSe( spep_2, SE_05);

speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

shuchusen4 = entryEffectLife( spep_2, 906, 90, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_2, shuchusen4, 1.3, 1.3);
setEffScaleKey( spep_2+90, shuchusen4, 1.3, 1.3);

entryFadeBg(spep_2,0,90,0,0,0,0,255);
entryFade( spep_2+74, 16,  3, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 構え
------------------------------------------------------
spep_3=spep_2+90;

-- 構え
Kamae = entryEffectLife( spep_3, SP_02, 68, 0, -1, 0, 0, 0); 
setEffShake( spep_3, Kamae, 58, 10);
setEffAlphaKey( spep_3, Kamae,255);
setEffScaleKey( spep_3, Kamae, 1.0, 1.0);
setEffRotateKey( spep_3, Kamae, 0);

setEffAlphaKey( spep_3+68, Kamae,255);
setEffScaleKey( spep_3+68, Kamae, 1.0, 1.0);
setEffRotateKey( spep_3+68, Kamae, 0);

-- 背景黒
entryFadeBg(spep_3,0,68,0,0,0,0,220);
entryFade( spep_3+54, 12, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255);

--　書き文字エントリー --「ズオッ」
ct_Zuo = entryEffectLife( spep_3+15, 10012, 43, 0x100, -1, 0, 150, 300);    -- ズオッ
setEffShake( spep_3+15, ct_Zuo, 43, 20);

setEffMoveKey( spep_3+15,ct_Zuo,150, 300,0);
setEffScaleKey( spep_3+15, ct_Zuo, 1.5, 1.5);
setEffRotateKey( spep_3+15, ct_Zuo, 30);
setEffAlphaKey( spep_3+15, ct_Zuo, 255);

setEffMoveKey( spep_3+29,ct_Zuo,100, 400,0);
setEffScaleKey( spep_3+29, ct_Zuo, 3.0, 3.0);
setEffRotateKey( spep_3+29, ct_Zuo, 30);
setEffAlphaKey( spep_3+29, ct_Zuo, 255);

setEffMoveKey( spep_3+48,ct_Zuo,100, 400,0);
setEffScaleKey( spep_3+48, ct_Zuo, 3.0, 3.0);
setEffRotateKey( spep_3+48, ct_Zuo, 30);
setEffAlphaKey( spep_3+48, ct_Zuo, 255);

setEffMoveKey( spep_3+58,ct_Zuo,100, 400,0);
setEffScaleKey( spep_3+58, ct_Zuo, 5.0, 5.0);
setEffRotateKey( spep_3+58, ct_Zuo, 30);
setEffAlphaKey( spep_3+58, ct_Zuo, 30);

--　集中線
syucyusen3 = entryEffectLife(spep_3, 906, 68, 0x80, -1, 0, 0, 0);
setEffScaleKey( spep_3, syucyusen3, 1.0, 1.0);
setEffRotateKey( spep_3, syucyusen3, 0);
setEffAlphaKey( spep_3, syucyusen3, 255);

setEffScaleKey( spep_3+68, syucyusen3, 1.0, 1.0);
setEffRotateKey( spep_3+68, syucyusen3, 0);
setEffAlphaKey( spep_3+68, syucyusen3, 255);

--　流線
ryusen3 = entryEffectLife(spep_3, 921, 68, 0x80, -1, 0, 0, 0);
setEffScaleKey( spep_3, ryusen3, 1.5, 1.5);
setEffRotateKey( spep_3, ryusen3, 155);
setEffAlphaKey( spep_3, ryusen3, 255);

-- SE
playSe( spep_3+15,SE_06);

------------------------------------------------------
-- 投げる〜着弾
------------------------------------------------------
spep_4=spep_3+68;

--敵の動き
setShakeChara(spep_4-1,1,117,25);

changeAnime(spep_4-1,1,100);
setMoveKey(spep_4-1,1,600,0,0);
setScaleKey(spep_4-1,1,0.4,0.4);
setRotateKey(spep_4-1,1,0);
setDisp(spep_4,1,1);

setMoveKey(spep_4+70,1,600,0,0);
setScaleKey(spep_4+70,1,0.4,0.4);
setRotateKey(spep_4+70,1,0);

setMoveKey(spep_4+80,1,400,30,0);
setScaleKey(spep_4+80,1,0.8,0.8);
setRotateKey(spep_4+80,1,0);

-- 構え
Nageru = entryEffectLife( spep_4, SP_03, 116, 0, -1, 0, 0, 0); 
setEffShake( spep_4, Nageru, 116, 10);
setEffAlphaKey( spep_4, Nageru,255);
setEffScaleKey( spep_4, Nageru, 1.0, 1.0);
setEffRotateKey( spep_4, Nageru, 0);

--　集中線
shuchusen4 = entryEffectLife( spep_4, 906, 116, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_4, shuchusen4, 1.0, 1.0);
setEffScaleKey( spep_4+116, shuchusen4, 1.0, 1.0);

--　流線
ryusen4 = entryEffectLife(spep_4, 921, 116, 0x80, -1, 0, 0, 0);
setEffScaleKey( spep_4, ryusen4, 1.3, 1.05);
setEffRotateKey( spep_4, ryusen4, 5);
setEffAlphaKey( spep_4, ryusen4, 255);

-- 背景黒
entryFadeBg(spep_4,0,116,0,0,0,0,220);

-- SE
playSe( spep_4,SE_01);

------------------------------------------------------
-- 回避
------------------------------------------------------
if (_IS_DODGE_ == 1) then

SP_dodge = spep_4+95; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);

pauseAll( SP_dodge, 67);

setMoveKey(SP_dodge,1,174,45,0);
setScaleKey(SP_dodge,1,1.1,1.1);
setRotateKey(SP_dodge,1,0);

setMoveKey(SP_dodge+8,1,174,45,0);
setScaleKey(SP_dodge+8,1,1.1,1.1);
setRotateKey(SP_dodge+8,1,0);

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
--敵の動き
setMoveKey(spep_4+105,1,110,55,0);
setScaleKey(spep_4+105,1,1.3,1.3);
setRotateKey(spep_4+105,1,0);

setMoveKey(spep_4+116,1,120,60,0);
setScaleKey(spep_4+116,1,1.4,1.4);
setRotateKey(spep_4+116,1,0);

--　構え
setEffAlphaKey( spep_4+116, Nageru,255);
setEffScaleKey( spep_4+116, Nageru, 1.0, 1.0);
setEffRotateKey( spep_4+116, Nageru, 0);

--　白フェイド
entryFade(spep_4+109,5,2,0,255,255,255,255);
------------------------------------------------------
-- ギャン
------------------------------------------------------
spep_5=spep_4+116;

setDisp( spep_5-1, 1, 0);

gyan = entryEffect(  spep_5,  190000,  0x100,  -1,  0,  0,  0);  --ギャン
setEffScaleKey(  spep_5,  gyan,  1.0,  1.0);
setEffAlphaKey(  spep_5,  gyan,  255);

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
entryFade( spep_5+30, 28,  2, 16, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 爆発
------------------------------------------------------
spep_6=spep_5+60;

Exp = entryEffect( spep_6, 1560, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_6, Exp, 1.1, 1.1);
setEffAlphaKey( spep_6, Exp, 255);

setEffScaleKey( spep_6+240, Exp, 1.1, 1.1);
setEffAlphaKey( spep_6+240, Exp, 255);

shuchusen6 = entryEffectLife( spep_6, 906, 240, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey(  spep_6,  shuchusen6,  1.6,  1.6);
setEffScaleKey(  spep_6+240,  shuchusen6,  1.6,  1.6);
setEffAlphaKey(  spep_6,  shuchusen6,  255);
setEffAlphaKey(  spep_6+240,  shuchusen6,  255);

playSe( spep_6+4, SE_10);

-- ダメージ表示
dealDamage( spep_6+26);

entryFade( spep_6+160, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_6+170);

else
------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
setVisibleUI(0, 0);
setDisp( 0, 0, 0); --味方非表示
setDisp( 0, 1, 0); --敵非表示

changeAnime( 0, 0, 1); --味方立ちポーズ

setMoveKey( 0, 0, 0,    -900, 0); --味方位置
setMoveKey( 1, 0, 0,    -900, 0); --味方位置
setMoveKey( 2, 0, 0,    -900, 0); --味方位置
setMoveKey( 3, 0, 0,    -900, 0); --味方位置
setMoveKey( 4, 0, 0,    -900, 0); --味方位置
setMoveKey( 5, 0, 0,    -900, 0); --味方位置

setScaleKey( 0,    0,  1.5, 1.5);
setScaleKey( 1,    0,  1.5, 1.5);
setScaleKey( 2,    0,  1.5, 1.5);
setScaleKey( 3,    0,  1.5, 1.5);
setScaleKey( 4,    0,  1.5, 1.5);
setScaleKey( 5,    0,  1.5, 1.5);

setRotateKey( 0,  0, 0);
setRotateKey( 1,  0, 0);
setRotateKey( 2,  0, 0);
setRotateKey( 3,  0, 0);
setRotateKey( 4,  0, 0);
setRotateKey( 5,  0, 0);

setScaleKey( 0,    1,  2.5, 2.5);

------------------------------------------------------
-- 溜め
------------------------------------------------------
spep_1=0;

entryFadeBg( spep_1, 0, 158, 0, 10, 10, 10, 200);          -- ベース暗め　背景
entryFade( spep_1, 0, 0, 6, 255, 255, 255, 200);          -- 白
entryFade( spep_1+40, 10, 10, 8, 255, 255, 255, 255);          -- 白
entryFade( spep_1+149, 7, 3, 7, 255, 255, 255, 255);          -- 白

-- 溜め
Tame = entryEffectLife( spep_1, SP_01e, 158, 0, -1, 0, 0, 0);
setEffShake( spep_1, Tame, 158, 10);
setEffAlphaKey( spep_1, Tame,255);
setEffScaleKey( spep_1, Tame, -1.0, 1.0);
setEffRotateKey( spep_1, Tame, 0);

setEffAlphaKey( spep_1+158, Tame,255);
setEffScaleKey( spep_1+158, Tame, -1.0, 1.0);
setEffRotateKey( spep_1+158, Tame, 0);

-- カットイン
--speff = entryEffect(  spep_1+71,   1504,   0,     -1,  0,  0,  0);-- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);-- カットイン差し替え
--speff = entryEffect(  spep_1+71,   1505,   0,     -1,  0,  0,  0);-- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);-- セリフ差し替え

-- 書き文字エントリー --「ゴゴゴゴッ」
ct_Gogogo = entryEffectLife( spep_1+80, 190006, 78, 0x100, -1, 0, 0, 500);    -- ゴゴゴゴ
setEffShake( spep_1+80, ct_Gogogo, 80, 10);
setEffScaleKey( spep_1+80, ct_Gogogo, -0.8, 0.8);
setEffRotateKey( spep_1+80, ct_Gogogo, 0);
setEffAlphaKey( spep_1+80, ct_Gogogo, 255);

setEffScaleKey( spep_1+148, ct_Gogogo, -0.8, 0.8);
setEffRotateKey( spep_1+148, ct_Gogogo, 0);
setEffAlphaKey( spep_1+148, ct_Gogogo, 255);

setEffScaleKey( spep_1+158, ct_Gogogo, -2.5, 2.5);
setEffRotateKey( spep_1+158, ct_Gogogo, 0);
setEffAlphaKey( spep_1+158, ct_Gogogo, 0);

--　集中線
syucyusen1 = entryEffectLife(spep_1, 906, 158, 0x80, -1, 0, 0, 0);
setEffScaleKey( spep_1, syucyusen1, 1.3, 1.3);
setEffRotateKey( spep_1, syucyusen1, 0);
setEffAlphaKey( spep_1, syucyusen1, 255);
setEffScaleKey( spep_1+58, syucyusen1, 1.3, 1.3);
setEffRotateKey( spep_1+58, syucyusen1, 0);
setEffAlphaKey( spep_1+58, syucyusen1, 255);

setEffScaleKey( spep_1+59, syucyusen1, 1.6, 1.6);
setEffRotateKey( spep_1+59, syucyusen1, 0);
setEffAlphaKey( spep_1+59, syucyusen1, 255);

setEffScaleKey( spep_1+158, syucyusen1, 1.6, 1.6);
setEffRotateKey( spep_1+158, syucyusen1, 0);
setEffAlphaKey( spep_1+158, syucyusen1, 255);

--SE
playSe( spep_1,SE_01);
playSe( spep_1+80,SE_04);

------------------------------------------------------
-- カードカットイン
------------------------------------------------------
spep_2=spep_1+158;

entryFadeBg( spep_2, 0, 88, 0, 10, 10, 10, 200);          -- ベース暗め　背景

playSe( spep_2, SE_05);

speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

shuchusen4 = entryEffectLife( spep_2, 906, 90, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_2, shuchusen4, 1.3, 1.3);
setEffScaleKey( spep_2+90, shuchusen4, 1.3, 1.3);

entryFadeBg(spep_2,0,90,0,0,0,0,255);
entryFade( spep_2+74, 16,  3, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 構え
------------------------------------------------------
spep_3=spep_2+90;

-- 構え
Kamae = entryEffectLife( spep_3, SP_02e, 68, 0, -1, 0, 0, 0); 
setEffShake( spep_3, Kamae, 58, 10);
setEffAlphaKey( spep_3, Kamae,255);
setEffScaleKey( spep_3, Kamae, 1.0, 1.0);
setEffRotateKey( spep_3, Kamae, 0);

setEffAlphaKey( spep_3+68, Kamae,255);
setEffScaleKey( spep_3+68, Kamae, 1.0, 1.0);
setEffRotateKey( spep_3+68, Kamae, 0);

-- 背景黒
entryFadeBg(spep_3,0,68,0,0,0,0,220);
entryFade( spep_3+54, 12, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255);

--　書き文字エントリー --「ズオッ」
ct_Zuo = entryEffectLife( spep_3+15, 10012, 43, 0x100, -1, 0, 150, 300);    -- ズオッ
setEffShake( spep_3+15, ct_Zuo, 43, 20);

setEffMoveKey( spep_3+15,ct_Zuo,150, 300,0);
setEffScaleKey( spep_3+15, ct_Zuo, 1.5, 1.5);
setEffRotateKey( spep_3+15, ct_Zuo, 30);
setEffAlphaKey( spep_3+15, ct_Zuo, 255);

setEffMoveKey( spep_3+29,ct_Zuo,100, 400,0);
setEffScaleKey( spep_3+29, ct_Zuo, 3.0, 3.0);
setEffRotateKey( spep_3+29, ct_Zuo, 30);
setEffAlphaKey( spep_3+29, ct_Zuo, 255);

setEffMoveKey( spep_3+48,ct_Zuo,100, 400,0);
setEffScaleKey( spep_3+48, ct_Zuo, 3.0, 3.0);
setEffRotateKey( spep_3+48, ct_Zuo, 30);
setEffAlphaKey( spep_3+48, ct_Zuo, 255);

setEffMoveKey( spep_3+58,ct_Zuo,100, 400,0);
setEffScaleKey( spep_3+58, ct_Zuo, 5.0, 5.0);
setEffRotateKey( spep_3+58, ct_Zuo, 30);
setEffAlphaKey( spep_3+58, ct_Zuo, 30);

--　集中線
syucyusen3 = entryEffectLife(spep_3, 906, 68, 0x80, -1, 0, 0, 0);
setEffScaleKey( spep_3, syucyusen3, 1.0, 1.0);
setEffRotateKey( spep_3, syucyusen3, 0);
setEffAlphaKey( spep_3, syucyusen3, 255);

setEffScaleKey( spep_3+68, syucyusen3, 1.0, 1.0);
setEffRotateKey( spep_3+68, syucyusen3, 0);
setEffAlphaKey( spep_3+68, syucyusen3, 255);

--　流線
ryusen3 = entryEffectLife(spep_3, 921, 68, 0x80, -1, 0, 0, 0);
setEffScaleKey( spep_3, ryusen3, 1.5, 1.5);
setEffRotateKey( spep_3, ryusen3, 155);
setEffAlphaKey( spep_3, ryusen3, 255);

-- SE
playSe( spep_3+15,SE_06);

------------------------------------------------------
-- 投げる〜着弾
------------------------------------------------------
spep_4=spep_3+68;

--敵の動き
setShakeChara(spep_4-1,1,117,25);

changeAnime(spep_4-1,1,100);
setMoveKey(spep_4-1,1,600,0,0);
setScaleKey(spep_4-1,1,0.4,0.4);
setRotateKey(spep_4-1,1,0);
setDisp(spep_4,1,1);

setMoveKey(spep_4+70,1,600,0,0);
setScaleKey(spep_4+70,1,0.4,0.4);
setRotateKey(spep_4+70,1,0);

setMoveKey(spep_4+80,1,400,30,0);
setScaleKey(spep_4+80,1,0.8,0.8);
setRotateKey(spep_4+80,1,0);

-- 構え
Nageru = entryEffectLife( spep_4, SP_03e, 116, 0, -1, 0, 0, 0); 
setEffShake( spep_4, Nageru, 116, 10);
setEffAlphaKey( spep_4, Nageru,255);
setEffScaleKey( spep_4, Nageru, 1.0, 1.0);
setEffRotateKey( spep_4, Nageru, 0);

--　集中線
shuchusen4 = entryEffectLife( spep_4, 906, 116, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_4, shuchusen4, 1.0, 1.0);
setEffScaleKey( spep_4+116, shuchusen4, 1.0, 1.0);

--　流線
ryusen4 = entryEffectLife(spep_4, 921, 116, 0x80, -1, 0, 0, 0);
setEffScaleKey( spep_4, ryusen4, 1.3, 1.05);
setEffRotateKey( spep_4, ryusen4, 5);
setEffAlphaKey( spep_4, ryusen4, 255);

-- 背景黒
entryFadeBg(spep_4,0,116,0,0,0,0,220);

-- SE
playSe( spep_4,SE_01);

------------------------------------------------------
-- 回避
------------------------------------------------------
if (_IS_DODGE_ == 1) then

SP_dodge = spep_4+95; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);

pauseAll( SP_dodge, 67);

setMoveKey(SP_dodge,1,174,45,0);
setScaleKey(SP_dodge,1,1.1,1.1);
setRotateKey(SP_dodge,1,0);

setMoveKey(SP_dodge+8,1,174,45,0);
setScaleKey(SP_dodge+8,1,1.1,1.1);
setRotateKey(SP_dodge+8,1,0);

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
--敵の動き
setMoveKey(spep_4+105,1,110,55,0);
setScaleKey(spep_4+105,1,1.3,1.3);
setRotateKey(spep_4+105,1,0);

setMoveKey(spep_4+116,1,120,60,0);
setScaleKey(spep_4+116,1,1.4,1.4);
setRotateKey(spep_4+116,1,0);

--　構え
setEffAlphaKey( spep_4+116, Nageru,255);
setEffScaleKey( spep_4+116, Nageru, 1.0, 1.0);
setEffRotateKey( spep_4+116, Nageru, 0);

--　白フェイド
entryFade(spep_4+109,5,2,0,255,255,255,255);
------------------------------------------------------
-- ギャン
------------------------------------------------------
spep_5=spep_4+116;

setDisp( spep_5-1, 1, 0);

gyan = entryEffect(  spep_5,  190000,  0x100,  -1,  0,  0,  0);  --ギャン
setEffScaleKey(  spep_5,  gyan,  1.0,  1.0);
setEffAlphaKey(  spep_5,  gyan,  255);

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
entryFade( spep_5+30, 28,  2, 16, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 爆発
------------------------------------------------------
spep_6=spep_5+60;

Exp = entryEffect( spep_6, 1560, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_6, Exp, 1.1, 1.1);
setEffAlphaKey( spep_6, Exp, 255);

setEffScaleKey( spep_6+240, Exp, 1.1, 1.1);
setEffAlphaKey( spep_6+240, Exp, 255);

shuchusen6 = entryEffectLife( spep_6, 906, 240, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey(  spep_6,  shuchusen6,  1.6,  1.6);
setEffScaleKey(  spep_6+240,  shuchusen6,  1.6,  1.6);
setEffAlphaKey(  spep_6,  shuchusen6,  255);
setEffAlphaKey(  spep_6+240,  shuchusen6,  255);

playSe( spep_6+4, SE_10);

-- ダメージ表示
dealDamage( spep_6+26);

entryFade( spep_6+160, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_6+170);

end