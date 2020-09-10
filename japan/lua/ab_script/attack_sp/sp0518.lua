--1016140 フリーザ(最終形態)_プチスーパーノヴァ
--sp_effect_a2_00098

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
SE_12 = 1019; --上空の音
SE_13 = 1073; --気弾を落とす音
SE_14 = 8; --気弾が落ちて行く音
SE_15 = 1027; --小さく爆発
SE_16 = 1022; --ヤムチャ消し炭爆発
SE_17 = 1068; --雲が晴れるところの爆発

--味方
SP_01=	152613	;--	上空から登場（前）
SP_02=	152614	;--	上空から登場（後）
SP_03=	152615	;--	放つ
SP_04=	152616	;--	落下
SP_05=  152617  ;-- 空見上げ1
SP_06=  152618  ;-- 被爆（前）
SP_07=  152619  ;-- 被爆（後）
SP_08=  152620  ;-- 空見上げ2

--敵
SP_01x=  152613  ;-- 上空から登場（前）
SP_02x=  152614  ;-- 上空から登場（後）
SP_03x=  152638  ;-- 放つ
SP_04x=  152616  ;-- 落下
SP_05x=  152617  ;-- 空見上げ1
SP_06x=  152618  ;-- 被爆（前）
SP_07x=  152619  ;-- 被爆（後）
SP_08x=  152620  ;-- 空見上げ2
------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

--[[setDisp( 0, 1, 0);
setMoveKey(   0,   1,    0, -2000, 0);
setMoveKey(   1,   1,    0, -2000 , 0);
setMoveKey(   2,   1,    0, -2000 , 0);
setMoveKey(   3,   1,    0, -2000 , 0);
setMoveKey(   4,   1,    0, -2000 , 0);
setMoveKey(   5,   1,    0, -2000 , 0);
setMoveKey(   6,   1,    0, -2000 , 0);

setScaleKey(   0,   1, 1.6, 1.6);
setScaleKey(   1,   1, 1.6, 1.6);
setScaleKey(   2,   1, 1.6, 1.6);
setScaleKey(   3,   1, 1.6, 1.6);
setScaleKey(   4,   1, 1.6, 1.6);
setScaleKey(   5,   1, 1.6, 1.6);
setScaleKey(   6,   1, 1.6, 1.6);

setRotateKey(   0,   1, 0);
setRotateKey(   1,   1, 0);
setRotateKey(   2,   1, 0);
setRotateKey(   3,   1, 0);
setRotateKey(   4,   1, 0);
setRotateKey(   5,   1, 0);
setRotateKey(   6,   1, 0);]]

setDisp( 0, 0, 0);
setMoveKey(   0,   0,    0, -2000, 0);
setMoveKey(   1,   0,    0, -2000 , 0);
setMoveKey(   2,   0,    0, -2000 , 0);
setMoveKey(   3,   0,    0, -2000 , 0);
setMoveKey(   4,   0,    0, -2000 , 0);
setMoveKey(   5,   0,    0, -2000 , 0);
setMoveKey(   6,   0,    0, -2000 , 0);

setScaleKey(   0,   0, 1.6, 1.6);
setScaleKey(   1,   0, 1.6, 1.6);
setScaleKey(   2,   0, 1.6, 1.6);
setScaleKey(   3,   0, 1.6, 1.6);
setScaleKey(   4,   0, 1.6, 1.6);
setScaleKey(   5,   0, 1.6, 1.6);
setScaleKey(   6,   0, 1.6, 1.6);

setRotateKey(   0,   0, 0);
setRotateKey(   1,   0, 0);
setRotateKey(   2,   0, 0);
setRotateKey(   3,   0, 0);
setRotateKey(   4,   0, 0);
setRotateKey(   5,   0, 0);
setRotateKey(   6,   0, 0);

multi_frm = 2;

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
--出て来る(200F)
------------------------------------------------------

spep_0 = 0;

--上空の音
playSe( spep_0+40, SE_12);
playSe( spep_0+80, SE_12);
--エフェクト(前)
freeza_f = entryEffectLife(spep_0, SP_01, 196, 0x100, -1, 0, 0, 0);

setEffMoveKey( spep_0, freeza_f, 0, 0 , 0 );
setEffMoveKey( spep_0+196, freeza_f, 0, 0 , 0 );

setEffScaleKey(spep_0, freeza_f, 1.0, 1.0);
setEffScaleKey(spep_0+196, freeza_f, 1.0, 1.0);

setEffRotateKey(spep_0, freeza_f, 0);
setEffRotateKey(spep_0+196, freeza_f, 0);

setEffAlphaKey(spep_0, freeza_f, 255);
setEffAlphaKey(spep_0+196, freeza_f, 255);

--エフェクト(後)
freeza_b = entryEffectLife(spep_0, SP_02, 196, 0x80, -1, 0, 0, 0);

setEffMoveKey( spep_0, freeza_b, 0, 0 , 0 );
setEffMoveKey( spep_0+196, freeza_b, 0, 0 , 0 );

setEffScaleKey(spep_0, freeza_b, 1.0, 1.0);
setEffScaleKey(spep_0+196, freeza_b, 1.0, 1.0);

setEffRotateKey(spep_0, freeza_b, 0);
setEffRotateKey(spep_0+196, freeza_b, 0);

setEffAlphaKey(spep_0, freeza_b, 255);
setEffAlphaKey(spep_0+196, freeza_b, 255);

--敵の動き
a = 4;

setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 - a + 52, 1, 0 );
changeAnime( spep_0 + 0, 1, 102);

setMoveKey( spep_0 - a + 4, 1, 151.3, -108.9 , 0 );
setMoveKey( spep_0 - a + 6, 1, 172.8, -135.6 , 0 );
setMoveKey( spep_0 - a + 8, 1, 194.3, -162.4 , 0 );
setMoveKey( spep_0 - a + 10, 1, 215.9, -189.1 , 0 );
setMoveKey( spep_0 - a + 12, 1, 237.4, -215.8 , 0 );
setMoveKey( spep_0 - a + 14, 1, 258.9, -242.5 , 0 );
setMoveKey( spep_0 - a + 16, 1, 280.4, -269.3 , 0 );
setMoveKey( spep_0 - a + 18, 1, 302, -296 , 0 );
setMoveKey( spep_0 - a + 20, 1, 323.5, -322.7 , 0 );
setMoveKey( spep_0 - a + 22, 1, 345, -349.4 , 0 );
setMoveKey( spep_0 - a + 24, 1, 366.5, -376.2 , 0 );
setMoveKey( spep_0 - a + 26, 1, 388.1, -402.9 , 0 );
setMoveKey( spep_0 - a + 28, 1, 409.6, -429.6 , 0 );
setMoveKey( spep_0 - a + 30, 1, 431.1, -456.3 , 0 );
setMoveKey( spep_0 - a + 32, 1, 452.6, -483.1 , 0 );
setMoveKey( spep_0 - a + 34, 1, 474.2, -509.8 , 0 );
setMoveKey( spep_0 - a + 36, 1, 495.7, -536.5 , 0 );
setMoveKey( spep_0 - a + 38, 1, 517.2, -563.2 , 0 );
setMoveKey( spep_0 - a + 40, 1, 538.7, -590 , 0 );
setMoveKey( spep_0 - a + 42, 1, 560.3, -616.7 , 0 );
setMoveKey( spep_0 - a + 44, 1, 581.8, -643.4 , 0 );
setMoveKey( spep_0 - a + 46, 1, 603.3, -670.1 , 0 );
setMoveKey( spep_0 - a + 48, 1, 624.8, -696.9 , 0 );
setMoveKey( spep_0 - a + 50, 1, 646.3, -723.6 , 0 );

setScaleKey( spep_0 - a + 4, 1, 1.72, 1.72 );
setScaleKey( spep_0 - a + 6, 1, 1.86, 1.86 );
setScaleKey( spep_0 - a + 8, 1, 2, 2 );
setScaleKey( spep_0 - a + 10, 1, 2.14, 2.14 );
setScaleKey( spep_0 - a + 12, 1, 2.28, 2.28 );
setScaleKey( spep_0 - a + 14, 1, 2.42, 2.42 );
setScaleKey( spep_0 - a + 16, 1, 2.57, 2.57 );
setScaleKey( spep_0 - a + 18, 1, 2.71, 2.71 );
setScaleKey( spep_0 - a + 20, 1, 2.85, 2.85 );
setScaleKey( spep_0 - a + 22, 1, 2.99, 2.99 );
setScaleKey( spep_0 - a + 24, 1, 3.13, 3.13 );
setScaleKey( spep_0 - a + 26, 1, 3.27, 3.27 );
setScaleKey( spep_0 - a + 28, 1, 3.41, 3.41 );
setScaleKey( spep_0 - a + 30, 1, 3.55, 3.55 );
setScaleKey( spep_0 - a + 32, 1, 3.69, 3.69 );
setScaleKey( spep_0 - a + 34, 1, 3.83, 3.83 );
setScaleKey( spep_0 - a + 36, 1, 3.97, 3.97 );
setScaleKey( spep_0 - a + 38, 1, 4.11, 4.11 );
setScaleKey( spep_0 - a + 40, 1, 4.25, 4.25 );
setScaleKey( spep_0 - a + 42, 1, 4.39, 4.39 );
setScaleKey( spep_0 - a + 44, 1, 4.53, 4.53 );
setScaleKey( spep_0 - a + 46, 1, 4.67, 4.67 );
setScaleKey( spep_0 - a + 48, 1, 4.81, 4.81 );
setScaleKey( spep_0 - a + 50, 1, 4.95, 4.95 );

setRotateKey( spep_0 - a + 4, 1, 0 );
setRotateKey( spep_0 - a + 50, 1, 0 );

--カットインSE
playSe( spep_0+116, SE_04);

--顔カットイン&文字
speff = entryEffect( spep_0+102,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture(  speff, 3, 2);                           -- カットイン差し替え
speff1 = entryEffect( spep_0+102,   1505,   0,     -1,  0,  0,  -40);   -- eff_006 (セリフ)
setEffReplaceTexture(  speff1, 4, 5); 

--書き文字(ゴゴゴゴゴ)
ctGo = entryEffectLife( spep_0+114, 190006, 72, 0x100, -1, 0, 0, 0);    -- ゴゴゴゴゴ
setEffShake( spep_0+114, ctGo, 72, 8);

setEffScaleKey( spep_0+114, ctGo, 0.65, 0.65);
setEffScaleKey( spep_0+178, ctGo, 0.65, 0.65);
setEffScaleKey( spep_0+186, ctGo, 1.3, 1.3);

setEffMoveKey(  spep_0+114,  ctGo, -20, 525);
setEffMoveKey(  spep_0+186,  ctGo, -20, 525);

setEffRotateKey(  spep_0+114,  ctGo,  0);
setEffRotateKey(  spep_0+186,  ctGo,  0);

setEffAlphaKey(  spep_0+114,  ctGo,  0);
setEffAlphaKey(  spep_0+115,  ctGo,  255);
setEffAlphaKey(  spep_0+116,  ctGo,  255);
setEffAlphaKey(  spep_0+178,  ctGo,  255);
setEffAlphaKey(  spep_0+186,  ctGo,  0);

--集中線
shuchusen = entryEffectLife( spep_0+114, 906, 82, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey(  spep_0+114,  shuchusen,  0,  0);
setEffMoveKey(  spep_0+196,  shuchusen,  0,  0);

setEffScaleKey( spep_0+114, shuchusen, 1.2, 1.5);
setEffScaleKey( spep_0+196, shuchusen, 1.2, 1.5);

setEffRotateKey( spep_0+114, shuchusen, 0);
setEffRotateKey( spep_0+196, shuchusen, 0);

setEffAlphaKey( spep_0+114, shuchusen, 0);
setEffAlphaKey( spep_0+115, shuchusen, 255);
setEffAlphaKey( spep_0+116, shuchusen, 255);
setEffAlphaKey( spep_0+196, shuchusen, 255);

--白フェード
entryFade(spep_0+190, 4, 6, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_1=196;

--------------------------------------
--カードカットイン(90F)
--------------------------------------

playSe(spep_1, SE_05);
shuchusen2 = entryEffectLife(spep_1, 906, 90, 0x100, -1, 0, 0, 0);   -- 集中線
setEffMoveKey(  spep_1,  shuchusen2,  0,  0);
setEffMoveKey(  spep_1+90,  shuchusen2,  0,  0);

setEffScaleKey( spep_1, shuchusen2, 1.2, 1.5);
setEffScaleKey( spep_1+90, shuchusen2, 1.2, 1.5);

setEffRotateKey( spep_1, shuchusen2, 0);
setEffRotateKey( spep_1+90, shuchusen2, 0);

setEffAlphaKey( spep_1, shuchusen2, 255);
setEffAlphaKey( spep_1+90, shuchusen2, 255);

speff2 = entryEffect(spep_1, 1507, 0x80, -1, 0, 0, 0);   -- カード
setEffReplaceTexture(speff2, 1, 1);
setEffReplaceTexture(speff2, 2, 0);-- カード差し替え
setEffReplaceTexture(speff2, 5, 4);-- 技名テクスチャ差し替え

-- ** エフェクト等 ** --
entryFade(spep_1+85, 3, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_2 = spep_1+90;

------------------------------------------------------
--落とす(120F)
------------------------------------------------------

--落とす音
playSe( spep_2+40, SE_13);
--エフェクト(後)
drop = entryEffectLife(spep_2, SP_03, 116, 0x100, -1, 0, 0, 0);
setEffMoveKey( spep_2, drop, 0, 0 , 0 );
setEffMoveKey( spep_2+116, drop, 0, 0 , 0 );

setEffScaleKey(spep_2, drop, 1.0, 1.0);
setEffScaleKey(spep_2+116, drop, 1.0, 1.0);

setEffRotateKey(spep_2, drop, 0);
setEffRotateKey(spep_2+116, drop, 0);

setEffAlphaKey(spep_2, drop, 255);
setEffAlphaKey(spep_2+116, drop, 255);

--白フェード
entryFade(spep_2+106, 8, 16, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_3 = spep_2+116;

------------------------------------------------------
--落ちてく(120F)
------------------------------------------------------

--落ちてく音
playSe( spep_3, SE_14);
--エフェクト(後)
falling = entryEffectLife(spep_3, SP_04, 116, 0x100, -1, 0, 0, 0);

setEffMoveKey( spep_3, falling, 0, 0 , 0 );
setEffMoveKey( spep_3+116, falling, 0, 0 , 0 );

setEffScaleKey(spep_3, falling, 1.0, 1.0);
setEffScaleKey(spep_3+116, falling, 1.0, 1.0);

setEffRotateKey(spep_3, falling, 0);
setEffRotateKey(spep_3+116, falling, 0);

setEffAlphaKey(spep_3, falling, 255);
setEffAlphaKey(spep_3+116, falling, 255);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_3+60; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);
stopSe( 5, seID, 0);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

dodge = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);

pauseAll( SP_dodge, 67);
entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase( SP_dodge+10);

do return end
else end

------------------------------------------------------
-- 続き
------------------------------------------------------

--白フェード
entryFade(spep_3+112, 4, 6, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_4 = spep_3+116;

------------------------------------------------------
-- ボッ(90F)
------------------------------------------------------

--ボッ
playSe( spep_4+50, SE_15);
--エフェクト(後)
miniBomb = entryEffectLife(spep_4, SP_05, 86, 0x100, -1, 0, 0, 0);
setEffMoveKey( spep_4, miniBomb, 0, 0 , 0 );
setEffMoveKey( spep_4+86, miniBomb, 0, 0 , 0 );

setEffScaleKey(spep_4, miniBomb, 1.0, 1.0);
setEffScaleKey(spep_4+86, miniBomb, 1.0, 1.0);

setEffRotateKey(spep_4, miniBomb, 0);
setEffRotateKey(spep_4+86, miniBomb, 0);

setEffAlphaKey(spep_4, miniBomb, 255);
setEffAlphaKey(spep_4+86, miniBomb, 255);

--集中線
shuchusen3 = entryEffectLife( spep_4+46, 906, 40, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey(  spep_4+46,  shuchusen3,  0,  0);
setEffMoveKey(  spep_4+86,  shuchusen3,  0,  0);

setEffScaleKey( spep_4+46, shuchusen3, 1.4, 1.2);
setEffScaleKey( spep_4+86, shuchusen3, 1.4, 1.2);

setEffRotateKey( spep_4+46, shuchusen3, 30);
setEffRotateKey( spep_4+86, shuchusen3, 30);

setEffAlphaKey( spep_4+46, shuchusen3, 255);
setEffAlphaKey( spep_4+86, shuchusen3, 255);

--白フェード
entryFade(spep_4+74, 6, 12, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_5 = spep_4+86;

------------------------------------------------------
-- 爆発(120F)
------------------------------------------------------

--大爆発
playSe( spep_5, SE_16);
--エフェクト(前)
bomb_f = entryEffectLife(spep_5, SP_06, 116, 0x100, -1, 0, 0, 0);
setEffMoveKey( spep_5, bomb_f, 0, 0 , 0 );
setEffMoveKey( spep_5+116, bomb_f, 0, 0 , 0 );

setEffScaleKey(spep_5, bomb_f, 1.0, 1.0);
setEffScaleKey(spep_5+116, bomb_f, 1.0, 1.0);

setEffRotateKey(spep_5, bomb_f, 0);
setEffRotateKey(spep_5+116, bomb_f, 0);

setEffAlphaKey(spep_5, bomb_f, 255);
setEffAlphaKey(spep_5+116, bomb_f, 255);

--エフェクト(後)
bomb_b = entryEffectLife(spep_5, SP_07, 116, 0x80, -1, 0, 0, 0);
setEffMoveKey( spep_5, bomb_b, 0, 0 , 0 );
setEffMoveKey( spep_5+116, bomb_b, 0, 0 , 0 );

setEffScaleKey(spep_5, bomb_b, 1.0, 1.0);
setEffScaleKey(spep_5+116, bomb_b, 1.0, 1.0);

setEffRotateKey(spep_5, bomb_b, 0);
setEffRotateKey(spep_5+116, bomb_b, 0);

setEffAlphaKey(spep_5, bomb_b, 255);
setEffAlphaKey(spep_5+116, bomb_b, 255);

--集中線
shuchusen4 = entryEffectLife( spep_5+30, 906, 86, 0x10,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey(  spep_5+30,  shuchusen4,  -174,  320);
setEffMoveKey(  spep_5+116,  shuchusen4,  -174,  320);

setEffScaleKey( spep_5+30, shuchusen4, 1.4, 1.2);
setEffScaleKey( spep_5+116, shuchusen4, 1.4, 1.2);

setEffRotateKey( spep_5+30, shuchusen4, 30);
setEffRotateKey( spep_5+116, shuchusen4, 30);

setEffAlphaKey( spep_5+30, shuchusen4, 255);
setEffAlphaKey( spep_5+116, shuchusen4, 255);

--書き文字(ズオッ)
ctZuo = entryEffectLife( spep_5 - a + 38, 10012, 46, 0x100, -1, 0, -81.3, 301.8 );
setEffShake(spep_5 - a + 38, ctZuo, 80, 20);

setEffMoveKey( spep_5 - a + 38, ctZuo, -81.3, 301.8 , 0 );
setEffMoveKey( spep_5 - a + 40, ctZuo, -25.2, 302.2 , 0 );
setEffMoveKey( spep_5 - a + 42, ctZuo, 24.5, 292.8 , 0 );
setEffMoveKey( spep_5 - a + 44, ctZuo, 86.2, 301.6 , 0 );
setEffMoveKey( spep_5 - a + 46, ctZuo, 78.6, 288.4 , 0 );
setEffMoveKey( spep_5 - a + 48, ctZuo, 88.9, 301.6 , 0 );
setEffMoveKey( spep_5 - a + 50, ctZuo, 81.2, 288.2 , 0 );
setEffMoveKey( spep_5 - a + 52, ctZuo, 91.6, 301.6 , 0 );
setEffMoveKey( spep_5 - a + 54, ctZuo, 83.7, 287.9 , 0 );
setEffMoveKey( spep_5 - a + 56, ctZuo, 94.2, 301.6 , 0 );
setEffMoveKey( spep_5 - a + 58, ctZuo, 86.2, 287.7 , 0 );
setEffMoveKey( spep_5 - a + 60, ctZuo, 96.8, 301.5 , 0 );
setEffMoveKey( spep_5 - a + 62, ctZuo, 88.7, 287.5 , 0 );
setEffMoveKey( spep_5 - a + 64, ctZuo, 99.5, 301.5 , 0 );
setEffMoveKey( spep_5 - a + 66, ctZuo, 91.2, 287.3 , 0 );
setEffMoveKey( spep_5 - a + 68, ctZuo, 102.1, 301.6 , 0 );
setEffMoveKey( spep_5 - a + 70, ctZuo, 98.1, 286.7 , 0 );
setEffMoveKey( spep_5 - a + 72, ctZuo, 114.1, 301.4 , 0 );
setEffMoveKey( spep_5 - a + 74, ctZuo, 109.5, 285.7 , 0 );
setEffMoveKey( spep_5 - a + 76, ctZuo, 126, 301.5 , 0 );
setEffMoveKey( spep_5 - a + 78, ctZuo, 120.9, 284.8 , 0 );
setEffMoveKey( spep_5 - a + 80, ctZuo, 137.9, 301.3 , 0 );
setEffMoveKey( spep_5 - a + 82, ctZuo, 132.2, 283.8 , 0 );
setEffMoveKey( spep_5 - a + 84, ctZuo, 137.9, 283.3 , 0 );

setEffScaleKey( spep_5 - a + 38, ctZuo, 0.1, 0.1 );
setEffScaleKey( spep_5 - a + 40, ctZuo, 0.8, 0.8 );
setEffScaleKey( spep_5 - a + 42, ctZuo, 1.5, 1.5 );
setEffScaleKey( spep_5 - a + 44, ctZuo, 2.2, 2.2 );
setEffScaleKey( spep_5 - a + 46, ctZuo, 2.22, 2.22 );
setEffScaleKey( spep_5 - a + 48, ctZuo, 2.23, 2.23 );
setEffScaleKey( spep_5 - a + 50, ctZuo, 2.25, 2.25 );
setEffScaleKey( spep_5 - a + 52, ctZuo, 2.27, 2.27 );
setEffScaleKey( spep_5 - a + 54, ctZuo, 2.28, 2.28 );
setEffScaleKey( spep_5 - a + 56, ctZuo, 2.3, 2.3 );
setEffScaleKey( spep_5 - a + 58, ctZuo, 2.32, 2.32 );
setEffScaleKey( spep_5 - a + 60, ctZuo, 2.33, 2.33 );
setEffScaleKey( spep_5 - a + 62, ctZuo, 2.35, 2.35 );
setEffScaleKey( spep_5 - a + 64, ctZuo, 2.37, 2.37 );
setEffScaleKey( spep_5 - a + 66, ctZuo, 2.38, 2.38 );
setEffScaleKey( spep_5 - a + 68, ctZuo, 2.4, 2.4 );
setEffScaleKey( spep_5 - a + 70, ctZuo, 2.48, 2.48 );
setEffScaleKey( spep_5 - a + 72, ctZuo, 2.55, 2.55 );
setEffScaleKey( spep_5 - a + 74, ctZuo, 2.63, 2.63 );
setEffScaleKey( spep_5 - a + 76, ctZuo, 2.7, 2.7 );
setEffScaleKey( spep_5 - a + 78, ctZuo, 2.78, 2.78 );
setEffScaleKey( spep_5 - a + 80, ctZuo, 2.85, 2.85 );
setEffScaleKey( spep_5 - a + 82, ctZuo, 2.93, 2.93 );
setEffScaleKey( spep_5 - a + 84, ctZuo, 3, 3 );

setEffRotateKey( spep_5 - a + 38, ctZuo, -22.3 );
setEffRotateKey( spep_5 - a + 40, ctZuo, -22.4 );
setEffRotateKey( spep_5 - a + 84, ctZuo, -22.4 );

setEffAlphaKey( spep_5 - a + 38, ctZuo, 255 );
setEffAlphaKey( spep_5 - a + 68, ctZuo, 255 );
setEffAlphaKey( spep_5 - a + 70, ctZuo, 223 );
setEffAlphaKey( spep_5 - a + 72, ctZuo, 191 );
setEffAlphaKey( spep_5 - a + 74, ctZuo, 159 );
setEffAlphaKey( spep_5 - a + 76, ctZuo, 128 );
setEffAlphaKey( spep_5 - a + 78, ctZuo, 96 );
setEffAlphaKey( spep_5 - a + 80, ctZuo, 64 );
setEffAlphaKey( spep_5 - a + 82, ctZuo, 32 );
setEffAlphaKey( spep_5 - a + 84, ctZuo, 0 );

--敵の動き
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 116, 1, 0 );
changeAnime( spep_5 + 0, 1, 102);

setMoveKey( spep_5 + 0, 1, 143, -101 , 0 );
setMoveKey( spep_5 + 2, 1, 139.7, -101.8 , 0 );
setMoveKey( spep_5 + 4, 1, 140.5, -100.5 , 0 );
setMoveKey( spep_5 + 6, 1, 137.2, -97.3 , 0 );
setMoveKey( spep_5 + 8, 1, 138, -96 , 0 );
setMoveKey( spep_5 + 10, 1, 134.7, -96.8 , 0 );
setMoveKey( spep_5 + 12, 1, 135.5, -95.5 , 0 );
setMoveKey( spep_5 + 14, 1, 132.2, -92.3 , 0 );
setMoveKey( spep_5 + 16, 1, 133, -91 , 0 );
setMoveKey( spep_5 + 18, 1, 129.7, -91.8 , 0 );
setMoveKey( spep_5 + 20, 1, 130.5, -90.5 , 0 );
setMoveKey( spep_5 + 22, 1, 127.2, -87.3 , 0 );
setMoveKey( spep_5 + 24, 1, 128, -86 , 0 );
setMoveKey( spep_5 + 26, 1, 124.7, -86.8 , 0 );
setMoveKey( spep_5 + 28, 1, 125.5, -85.5 , 0 );
setMoveKey( spep_5 + 30, 1, 122.2, -82.3 , 0 );
setMoveKey( spep_5 + 32, 1, 123, -81 , 0 );
setMoveKey( spep_5 + 34, 1, 119.7, -81.8 , 0 );
setMoveKey( spep_5 + 36, 1, 120.5, -80.5 , 0 );
setMoveKey( spep_5 + 38, 1, 117.2, -77.3 , 0 );
setMoveKey( spep_5 + 40, 1, 120, -74 , 0 );
setMoveKey( spep_5 + 42, 1, 112.7, -78.8 , 0 );
setMoveKey( spep_5 + 44, 1, 117.5, -77.5 , 0 );
setMoveKey( spep_5 + 46, 1, 110.2, -70.3 , 0 );
setMoveKey( spep_5 + 48, 1, 115, -69 , 0 );
setMoveKey( spep_5 + 50, 1, 109, -75 , 0 );
setMoveKey( spep_5 + 52, 1, 115, -75 , 0 );
setMoveKey( spep_5 + 54, 1, 109, -69 , 0 );
setMoveKey( spep_5 + 56, 1, 115, -69 , 0 );
setMoveKey( spep_5 + 58, 1, 109, -75 , 0 );
setMoveKey( spep_5 + 60, 1, 115, -75 , 0 );
setMoveKey( spep_5 + 62, 1, 109, -69 , 0 );
setMoveKey( spep_5 + 64, 1, 115, -69 , 0 );
setMoveKey( spep_5 + 66, 1, 109, -75 , 0 );
setMoveKey( spep_5 + 68, 1, 115, -75 , 0 );
setMoveKey( spep_5 + 70, 1, 109, -69 , 0 );
setMoveKey( spep_5 + 72, 1, 115, -69 , 0 );
setMoveKey( spep_5 + 74, 1, 109, -75 , 0 );
setMoveKey( spep_5 + 76, 1, 115, -75 , 0 );
setMoveKey( spep_5 + 78, 1, 109, -69 , 0 );
setMoveKey( spep_5 + 80, 1, 115, -69 , 0 );
setMoveKey( spep_5 + 82, 1, 109, -75 , 0 );
setMoveKey( spep_5 + 84, 1, 115, -75 , 0 );
setMoveKey( spep_5 + 86, 1, 109, -69 , 0 );
setMoveKey( spep_5 + 88, 1, 115, -69 , 0 );
setMoveKey( spep_5 + 90, 1, 109, -75 , 0 );
setMoveKey( spep_5 + 92, 1, 115, -75 , 0 );
setMoveKey( spep_5 + 94, 1, 109, -69 , 0 );
setMoveKey( spep_5 + 96, 1, 115, -69 , 0 );
setMoveKey( spep_5 + 98, 1, 109, -75 , 0 );
setMoveKey( spep_5 + 100, 1, 115, -75 , 0 );
setMoveKey( spep_5 + 102, 1, 109, -69 , 0 );
setMoveKey( spep_5 + 104, 1, 115, -69 , 0 );
setMoveKey( spep_5 + 106, 1, 109, -75 , 0 );
setMoveKey( spep_5 + 108, 1, 115, -75 , 0 );
setMoveKey( spep_5 + 110, 1, 109, -69 , 0 );
setMoveKey( spep_5 + 112, 1, 115, -69 , 0 );
setMoveKey( spep_5 + 114, 1, 109, -75 , 0 );
setMoveKey( spep_5 + 116, 1, 115, -75 , 0 );

setScaleKey( spep_5 + 0, 1, 1.35, 1.35 );
setScaleKey( spep_5 + 2, 1, 1.33, 1.33 );
setScaleKey( spep_5 + 4, 1, 1.32, 1.32 );
setScaleKey( spep_5 + 6, 1, 1.3, 1.3 );
setScaleKey( spep_5 + 8, 1, 1.29, 1.29 );
setScaleKey( spep_5 + 10, 1, 1.27, 1.27 );
setScaleKey( spep_5 + 12, 1, 1.26, 1.26 );
setScaleKey( spep_5 + 14, 1, 1.25, 1.25 );
setScaleKey( spep_5 + 16, 1, 1.23, 1.23 );
setScaleKey( spep_5 + 18, 1, 1.22, 1.22 );
setScaleKey( spep_5 + 20, 1, 1.2, 1.2 );
setScaleKey( spep_5 + 22, 1, 1.19, 1.19 );
setScaleKey( spep_5 + 24, 1, 1.17, 1.17 );
setScaleKey( spep_5 + 26, 1, 1.16, 1.16 );
setScaleKey( spep_5 + 28, 1, 1.15, 1.15 );
setScaleKey( spep_5 + 30, 1, 1.13, 1.13 );
setScaleKey( spep_5 + 32, 1, 1.12, 1.12 );
setScaleKey( spep_5 + 34, 1, 1.1, 1.1 );
setScaleKey( spep_5 + 36, 1, 1.09, 1.09 );
setScaleKey( spep_5 + 38, 1, 1.07, 1.07 );
setScaleKey( spep_5 + 40, 1, 1.06, 1.06 );
setScaleKey( spep_5 + 42, 1, 1.04, 1.04 );
setScaleKey( spep_5 + 44, 1, 1.03, 1.03 );
setScaleKey( spep_5 + 46, 1, 1.01, 1.01 );
setScaleKey( spep_5 + 48, 1, 1, 1 );
setScaleKey( spep_5 + 116, 1, 1, 1 );

setRotateKey( spep_5 + 0, 1, 32.1 );
setRotateKey( spep_5 + 2, 1, 32.2 );
setRotateKey( spep_5 + 116, 1, 32.2 );

--次の準備
spep_6 = spep_5+116;

------------------------------------------------------
-- 雲晴れる(220F)
------------------------------------------------------
--雲が晴れる音
playSe( spep_6, SE_17);
playSe( spep_6+60, SE_14);
--エフェクト(前)
bigBomb = entryEffect(spep_6, SP_08, 0x100, -1, 0, 0, 0);
setEffMoveKey( spep_6, bigBomb, 0, 0 , 0 );
setEffMoveKey( spep_6+220, bigBomb, 0, 0 , 0 );

setEffScaleKey(spep_6, bigBomb, 1.0, 1.0);
setEffScaleKey(spep_6+220, bigBomb, 1.0, 1.0);

setEffRotateKey(spep_6, bigBomb, 0);
setEffRotateKey(spep_6+220, bigBomb, 0);

setEffAlphaKey(spep_6, bigBomb, 255);
setEffAlphaKey(spep_6+220, bigBomb, 255);

--集中線
shuchusen5 = entryEffectLife( spep_6+74, 906, 80, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey(  spep_6+74,  shuchusen5,  0,  0);
setEffMoveKey(  spep_6+154,  shuchusen5,  0,  0);

setEffScaleKey( spep_6+74, shuchusen5, 1, 1);
setEffScaleKey( spep_6+154, shuchusen5, 1, 1);

setEffRotateKey( spep_6+74, shuchusen5, 0);
setEffRotateKey( spep_6+154, shuchusen5, 0);

setEffAlphaKey( spep_6+74, shuchusen5, 255);
setEffAlphaKey( spep_6+154, shuchusen5, 255);

dealDamage(spep_6+60);
endPhase( spep_6+200);

else 
------------------------------------------------------------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------------------------------------------------------------

------------------------------------------------------
--出て来る(200F)
------------------------------------------------------

spep_0 = 0;

--上空の音
playSe( spep_0+40, SE_12);
playSe( spep_0+80, SE_12);
--エフェクト(前)
freeza_f = entryEffectLife(spep_0, SP_01x, 196, 0x100, -1, 0, 0, 0);

setEffMoveKey( spep_0, freeza_f, 0, 0 , 0 );
setEffMoveKey( spep_0+196, freeza_f, 0, 0 , 0 );

setEffScaleKey(spep_0, freeza_f, 1.0, 1.0);
setEffScaleKey(spep_0+196, freeza_f, 1.0, 1.0);

setEffRotateKey(spep_0, freeza_f, 0);
setEffRotateKey(spep_0+196, freeza_f, 0);

setEffAlphaKey(spep_0, freeza_f, 255);
setEffAlphaKey(spep_0+196, freeza_f, 255);

--エフェクト(後)
freeza_b = entryEffectLife(spep_0, SP_02x, 196, 0x80, -1, 0, 0, 0);

setEffMoveKey( spep_0, freeza_b, 0, 0 , 0 );
setEffMoveKey( spep_0+196, freeza_b, 0, 0 , 0 );

setEffScaleKey(spep_0, freeza_b, 1.0, 1.0);
setEffScaleKey(spep_0+196, freeza_b, 1.0, 1.0);

setEffRotateKey(spep_0, freeza_b, 0);
setEffRotateKey(spep_0+196, freeza_b, 0);

setEffAlphaKey(spep_0, freeza_b, 255);
setEffAlphaKey(spep_0+196, freeza_b, 255);

--敵の動き
a = 4;

setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 - a + 52, 1, 0 );
changeAnime( spep_0 + 0, 1, 102);

setMoveKey( spep_0 - a + 4, 1, 151.3, -108.9 , 0 );
setMoveKey( spep_0 - a + 6, 1, 172.8, -135.6 , 0 );
setMoveKey( spep_0 - a + 8, 1, 194.3, -162.4 , 0 );
setMoveKey( spep_0 - a + 10, 1, 215.9, -189.1 , 0 );
setMoveKey( spep_0 - a + 12, 1, 237.4, -215.8 , 0 );
setMoveKey( spep_0 - a + 14, 1, 258.9, -242.5 , 0 );
setMoveKey( spep_0 - a + 16, 1, 280.4, -269.3 , 0 );
setMoveKey( spep_0 - a + 18, 1, 302, -296 , 0 );
setMoveKey( spep_0 - a + 20, 1, 323.5, -322.7 , 0 );
setMoveKey( spep_0 - a + 22, 1, 345, -349.4 , 0 );
setMoveKey( spep_0 - a + 24, 1, 366.5, -376.2 , 0 );
setMoveKey( spep_0 - a + 26, 1, 388.1, -402.9 , 0 );
setMoveKey( spep_0 - a + 28, 1, 409.6, -429.6 , 0 );
setMoveKey( spep_0 - a + 30, 1, 431.1, -456.3 , 0 );
setMoveKey( spep_0 - a + 32, 1, 452.6, -483.1 , 0 );
setMoveKey( spep_0 - a + 34, 1, 474.2, -509.8 , 0 );
setMoveKey( spep_0 - a + 36, 1, 495.7, -536.5 , 0 );
setMoveKey( spep_0 - a + 38, 1, 517.2, -563.2 , 0 );
setMoveKey( spep_0 - a + 40, 1, 538.7, -590 , 0 );
setMoveKey( spep_0 - a + 42, 1, 560.3, -616.7 , 0 );
setMoveKey( spep_0 - a + 44, 1, 581.8, -643.4 , 0 );
setMoveKey( spep_0 - a + 46, 1, 603.3, -670.1 , 0 );
setMoveKey( spep_0 - a + 48, 1, 624.8, -696.9 , 0 );
setMoveKey( spep_0 - a + 50, 1, 646.3, -723.6 , 0 );

setScaleKey( spep_0 - a + 4, 1, 1.72, 1.72 );
setScaleKey( spep_0 - a + 6, 1, 1.86, 1.86 );
setScaleKey( spep_0 - a + 8, 1, 2, 2 );
setScaleKey( spep_0 - a + 10, 1, 2.14, 2.14 );
setScaleKey( spep_0 - a + 12, 1, 2.28, 2.28 );
setScaleKey( spep_0 - a + 14, 1, 2.42, 2.42 );
setScaleKey( spep_0 - a + 16, 1, 2.57, 2.57 );
setScaleKey( spep_0 - a + 18, 1, 2.71, 2.71 );
setScaleKey( spep_0 - a + 20, 1, 2.85, 2.85 );
setScaleKey( spep_0 - a + 22, 1, 2.99, 2.99 );
setScaleKey( spep_0 - a + 24, 1, 3.13, 3.13 );
setScaleKey( spep_0 - a + 26, 1, 3.27, 3.27 );
setScaleKey( spep_0 - a + 28, 1, 3.41, 3.41 );
setScaleKey( spep_0 - a + 30, 1, 3.55, 3.55 );
setScaleKey( spep_0 - a + 32, 1, 3.69, 3.69 );
setScaleKey( spep_0 - a + 34, 1, 3.83, 3.83 );
setScaleKey( spep_0 - a + 36, 1, 3.97, 3.97 );
setScaleKey( spep_0 - a + 38, 1, 4.11, 4.11 );
setScaleKey( spep_0 - a + 40, 1, 4.25, 4.25 );
setScaleKey( spep_0 - a + 42, 1, 4.39, 4.39 );
setScaleKey( spep_0 - a + 44, 1, 4.53, 4.53 );
setScaleKey( spep_0 - a + 46, 1, 4.67, 4.67 );
setScaleKey( spep_0 - a + 48, 1, 4.81, 4.81 );
setScaleKey( spep_0 - a + 50, 1, 4.95, 4.95 );

setRotateKey( spep_0 - a + 4, 1, 0 );
setRotateKey( spep_0 - a + 50, 1, 0 );

--カットインSE
playSe( spep_0+116, SE_04);

--顔カットイン&文字
--speff = entryEffect( spep_0+102,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture(  speff, 3, 2);                           -- カットイン差し替え
--speff1 = entryEffect( spep_0+102,   1505,   0,     -1,  0,  0,  -40);   -- eff_006 (セリフ)
--setEffReplaceTexture(  speff1, 4, 5); 

--書き文字(ゴゴゴゴゴ)
ctGo = entryEffectLife( spep_0+114, 190006, 72, 0x100, -1, 0, 0, 0);    -- ゴゴゴゴゴ
setEffShake( spep_0+114, ctGo, 72, 8);

setEffScaleKey( spep_0+114, ctGo, -0.65, 0.65);
setEffScaleKey( spep_0+178, ctGo, -0.65, 0.65);
setEffScaleKey( spep_0+186, ctGo, -1.3, 1.3);

setEffMoveKey(  spep_0+114,  ctGo, -20, 525);
setEffMoveKey(  spep_0+186,  ctGo, -20, 525);

setEffRotateKey(  spep_0+114,  ctGo,  0);
setEffRotateKey(  spep_0+186,  ctGo,  0);

setEffAlphaKey(  spep_0+114,  ctGo,  0);
setEffAlphaKey(  spep_0+115,  ctGo,  255);
setEffAlphaKey(  spep_0+116,  ctGo,  255);
setEffAlphaKey(  spep_0+178,  ctGo,  255);
setEffAlphaKey(  spep_0+186,  ctGo,  0);

--集中線
shuchusen = entryEffectLife( spep_0+114, 906, 82, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey(  spep_0+114,  shuchusen,  0,  0);
setEffMoveKey(  spep_0+196,  shuchusen,  0,  0);

setEffScaleKey( spep_0+114, shuchusen, 1.2, 1.5);
setEffScaleKey( spep_0+196, shuchusen, 1.2, 1.5);

setEffRotateKey( spep_0+114, shuchusen, 0);
setEffRotateKey( spep_0+196, shuchusen, 0);

setEffAlphaKey( spep_0+114, shuchusen, 0);
setEffAlphaKey( spep_0+115, shuchusen, 255);
setEffAlphaKey( spep_0+116, shuchusen, 255);
setEffAlphaKey( spep_0+196, shuchusen, 255);

--白フェード
entryFade(spep_0+190, 4, 6, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_1=196;

--------------------------------------
--カードカットイン(90F)
--------------------------------------

playSe(spep_1, SE_05);
shuchusen2 = entryEffectLife(spep_1, 906, 90, 0x100, -1, 0, 0, 0);   -- 集中線
setEffMoveKey(  spep_1,  shuchusen2,  0,  0);
setEffMoveKey(  spep_1+90,  shuchusen2,  0,  0);

setEffScaleKey( spep_1, shuchusen2, 1.2, 1.5);
setEffScaleKey( spep_1+90, shuchusen2, 1.2, 1.5);

setEffRotateKey( spep_1, shuchusen2, 0);
setEffRotateKey( spep_1+90, shuchusen2, 0);

setEffAlphaKey( spep_1, shuchusen2, 255);
setEffAlphaKey( spep_1+90, shuchusen2, 255);

speff2 = entryEffect(spep_1, 1507, 0x80, -1, 0, 0, 0);   -- カード
setEffReplaceTexture(speff2, 1, 1);
setEffReplaceTexture(speff2, 2, 0);-- カード差し替え
setEffReplaceTexture(speff2, 5, 4);-- 技名テクスチャ差し替え

-- ** エフェクト等 ** --
entryFade(spep_1+85, 3, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_2 = spep_1+90;

------------------------------------------------------
--落とす(120F)
------------------------------------------------------

--落とす音
playSe( spep_2+40, SE_13);
--エフェクト(後)
drop = entryEffectLife(spep_2, SP_03x, 116, 0x100, -1, 0, 0, 0);
setEffMoveKey( spep_2, drop, 0, 0 , 0 );
setEffMoveKey( spep_2+116, drop, 0, 0 , 0 );

setEffScaleKey(spep_2, drop, 1.0, 1.0);
setEffScaleKey(spep_2+116, drop, 1.0, 1.0);

setEffRotateKey(spep_2, drop, 0);
setEffRotateKey(spep_2+116, drop, 0);

setEffAlphaKey(spep_2, drop, 255);
setEffAlphaKey(spep_2+116, drop, 255);

--白フェード
entryFade(spep_2+106, 8, 16, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_3 = spep_2+116;

------------------------------------------------------
--落ちてく(120F)
------------------------------------------------------

--落ちてく音
playSe( spep_3, SE_14);
--エフェクト(後)
falling = entryEffectLife(spep_3, SP_04x, 116, 0x100, -1, 0, 0, 0);

setEffMoveKey( spep_3, falling, 0, 0 , 0 );
setEffMoveKey( spep_3+116, falling, 0, 0 , 0 );

setEffScaleKey(spep_3, falling, 1.0, 1.0);
setEffScaleKey(spep_3+116, falling, 1.0, 1.0);

setEffRotateKey(spep_3, falling, 0);
setEffRotateKey(spep_3+116, falling, 0);

setEffAlphaKey(spep_3, falling, 255);
setEffAlphaKey(spep_3+116, falling, 255);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_3+60; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);
stopSe( 5, seID, 0);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

dodge = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);

pauseAll( SP_dodge, 67);
entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase( SP_dodge+10);

do return end
else end

------------------------------------------------------
-- 続き
------------------------------------------------------

--白フェード
entryFade(spep_3+112, 4, 6, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_4 = spep_3+116;

------------------------------------------------------
-- ボッ(90F)
------------------------------------------------------

--ボッ
playSe( spep_4+50, SE_15);
--エフェクト(後)
miniBomb = entryEffectLife(spep_4, SP_05x, 86, 0x100, -1, 0, 0, 0);
setEffMoveKey( spep_4, miniBomb, 0, 0 , 0 );
setEffMoveKey( spep_4+86, miniBomb, 0, 0 , 0 );

setEffScaleKey(spep_4, miniBomb, 1.0, 1.0);
setEffScaleKey(spep_4+86, miniBomb, 1.0, 1.0);

setEffRotateKey(spep_4, miniBomb, 0);
setEffRotateKey(spep_4+86, miniBomb, 0);

setEffAlphaKey(spep_4, miniBomb, 255);
setEffAlphaKey(spep_4+86, miniBomb, 255);

--集中線
shuchusen3 = entryEffectLife( spep_4+46, 906, 40, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey(  spep_4+46,  shuchusen3,  0,  0);
setEffMoveKey(  spep_4+86,  shuchusen3,  0,  0);

setEffScaleKey( spep_4+46, shuchusen3, 1.4, 1.2);
setEffScaleKey( spep_4+86, shuchusen3, 1.4, 1.2);

setEffRotateKey( spep_4+46, shuchusen3, 30);
setEffRotateKey( spep_4+86, shuchusen3, 30);

setEffAlphaKey( spep_4+46, shuchusen3, 255);
setEffAlphaKey( spep_4+86, shuchusen3, 255);

--白フェード
entryFade(spep_4+74, 6, 12, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_5 = spep_4+86;

------------------------------------------------------
-- 爆発(120F)
------------------------------------------------------

--大爆発
playSe( spep_5, SE_16);
--エフェクト(前)
bomb_f = entryEffectLife(spep_5, SP_06x, 116, 0x100, -1, 0, 0, 0);
setEffMoveKey( spep_5, bomb_f, 0, 0 , 0 );
setEffMoveKey( spep_5+116, bomb_f, 0, 0 , 0 );

setEffScaleKey(spep_5, bomb_f, 1.0, 1.0);
setEffScaleKey(spep_5+116, bomb_f, 1.0, 1.0);

setEffRotateKey(spep_5, bomb_f, 0);
setEffRotateKey(spep_5+116, bomb_f, 0);

setEffAlphaKey(spep_5, bomb_f, 255);
setEffAlphaKey(spep_5+116, bomb_f, 255);

--エフェクト(後)
bomb_b = entryEffectLife(spep_5, SP_07x, 116, 0x80, -1, 0, 0, 0);
setEffMoveKey( spep_5, bomb_b, 0, 0 , 0 );
setEffMoveKey( spep_5+116, bomb_b, 0, 0 , 0 );

setEffScaleKey(spep_5, bomb_b, 1.0, 1.0);
setEffScaleKey(spep_5+116, bomb_b, 1.0, 1.0);

setEffRotateKey(spep_5, bomb_b, 0);
setEffRotateKey(spep_5+116, bomb_b, 0);

setEffAlphaKey(spep_5, bomb_b, 255);
setEffAlphaKey(spep_5+116, bomb_b, 255);

--集中線
shuchusen4 = entryEffectLife( spep_5+30, 906, 86, 0x10,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey(  spep_5+30,  shuchusen4,  -174,  320);
setEffMoveKey(  spep_5+116,  shuchusen4,  -174,  320);

setEffScaleKey( spep_5+30, shuchusen4, 1.4, 1.2);
setEffScaleKey( spep_5+116, shuchusen4, 1.4, 1.2);

setEffRotateKey( spep_5+30, shuchusen4, 30);
setEffRotateKey( spep_5+116, shuchusen4, 30);

setEffAlphaKey( spep_5+30, shuchusen4, 255);
setEffAlphaKey( spep_5+116, shuchusen4, 255);

--書き文字(ズオッ)
ctZuo = entryEffectLife( spep_5 - a + 38, 10012, 46, 0x100, -1, 0, -81.3, 301.8 );
setEffShake(spep_5 - a + 38, ctZuo, 80, 20);

setEffMoveKey( spep_5 - a + 38, ctZuo, -81.3, 301.8 , 0 );
setEffMoveKey( spep_5 - a + 40, ctZuo, -25.2, 302.2 , 0 );
setEffMoveKey( spep_5 - a + 42, ctZuo, 24.5, 292.8 , 0 );
setEffMoveKey( spep_5 - a + 44, ctZuo, 86.2, 301.6 , 0 );
setEffMoveKey( spep_5 - a + 46, ctZuo, 78.6, 288.4 , 0 );
setEffMoveKey( spep_5 - a + 48, ctZuo, 88.9, 301.6 , 0 );
setEffMoveKey( spep_5 - a + 50, ctZuo, 81.2, 288.2 , 0 );
setEffMoveKey( spep_5 - a + 52, ctZuo, 91.6, 301.6 , 0 );
setEffMoveKey( spep_5 - a + 54, ctZuo, 83.7, 287.9 , 0 );
setEffMoveKey( spep_5 - a + 56, ctZuo, 94.2, 301.6 , 0 );
setEffMoveKey( spep_5 - a + 58, ctZuo, 86.2, 287.7 , 0 );
setEffMoveKey( spep_5 - a + 60, ctZuo, 96.8, 301.5 , 0 );
setEffMoveKey( spep_5 - a + 62, ctZuo, 88.7, 287.5 , 0 );
setEffMoveKey( spep_5 - a + 64, ctZuo, 99.5, 301.5 , 0 );
setEffMoveKey( spep_5 - a + 66, ctZuo, 91.2, 287.3 , 0 );
setEffMoveKey( spep_5 - a + 68, ctZuo, 102.1, 301.6 , 0 );
setEffMoveKey( spep_5 - a + 70, ctZuo, 98.1, 286.7 , 0 );
setEffMoveKey( spep_5 - a + 72, ctZuo, 114.1, 301.4 , 0 );
setEffMoveKey( spep_5 - a + 74, ctZuo, 109.5, 285.7 , 0 );
setEffMoveKey( spep_5 - a + 76, ctZuo, 126, 301.5 , 0 );
setEffMoveKey( spep_5 - a + 78, ctZuo, 120.9, 284.8 , 0 );
setEffMoveKey( spep_5 - a + 80, ctZuo, 137.9, 301.3 , 0 );
setEffMoveKey( spep_5 - a + 82, ctZuo, 132.2, 283.8 , 0 );
setEffMoveKey( spep_5 - a + 84, ctZuo, 137.9, 283.3 , 0 );

setEffScaleKey( spep_5 - a + 38, ctZuo, 0.1, 0.1 );
setEffScaleKey( spep_5 - a + 40, ctZuo, 0.8, 0.8 );
setEffScaleKey( spep_5 - a + 42, ctZuo, 1.5, 1.5 );
setEffScaleKey( spep_5 - a + 44, ctZuo, 2.2, 2.2 );
setEffScaleKey( spep_5 - a + 46, ctZuo, 2.22, 2.22 );
setEffScaleKey( spep_5 - a + 48, ctZuo, 2.23, 2.23 );
setEffScaleKey( spep_5 - a + 50, ctZuo, 2.25, 2.25 );
setEffScaleKey( spep_5 - a + 52, ctZuo, 2.27, 2.27 );
setEffScaleKey( spep_5 - a + 54, ctZuo, 2.28, 2.28 );
setEffScaleKey( spep_5 - a + 56, ctZuo, 2.3, 2.3 );
setEffScaleKey( spep_5 - a + 58, ctZuo, 2.32, 2.32 );
setEffScaleKey( spep_5 - a + 60, ctZuo, 2.33, 2.33 );
setEffScaleKey( spep_5 - a + 62, ctZuo, 2.35, 2.35 );
setEffScaleKey( spep_5 - a + 64, ctZuo, 2.37, 2.37 );
setEffScaleKey( spep_5 - a + 66, ctZuo, 2.38, 2.38 );
setEffScaleKey( spep_5 - a + 68, ctZuo, 2.4, 2.4 );
setEffScaleKey( spep_5 - a + 70, ctZuo, 2.48, 2.48 );
setEffScaleKey( spep_5 - a + 72, ctZuo, 2.55, 2.55 );
setEffScaleKey( spep_5 - a + 74, ctZuo, 2.63, 2.63 );
setEffScaleKey( spep_5 - a + 76, ctZuo, 2.7, 2.7 );
setEffScaleKey( spep_5 - a + 78, ctZuo, 2.78, 2.78 );
setEffScaleKey( spep_5 - a + 80, ctZuo, 2.85, 2.85 );
setEffScaleKey( spep_5 - a + 82, ctZuo, 2.93, 2.93 );
setEffScaleKey( spep_5 - a + 84, ctZuo, 3, 3 );

setEffRotateKey( spep_5 - a + 38, ctZuo, -22.3 );
setEffRotateKey( spep_5 - a + 40, ctZuo, -22.4 );
setEffRotateKey( spep_5 - a + 84, ctZuo, -22.4 );

setEffAlphaKey( spep_5 - a + 38, ctZuo, 255 );
setEffAlphaKey( spep_5 - a + 68, ctZuo, 255 );
setEffAlphaKey( spep_5 - a + 70, ctZuo, 223 );
setEffAlphaKey( spep_5 - a + 72, ctZuo, 191 );
setEffAlphaKey( spep_5 - a + 74, ctZuo, 159 );
setEffAlphaKey( spep_5 - a + 76, ctZuo, 128 );
setEffAlphaKey( spep_5 - a + 78, ctZuo, 96 );
setEffAlphaKey( spep_5 - a + 80, ctZuo, 64 );
setEffAlphaKey( spep_5 - a + 82, ctZuo, 32 );
setEffAlphaKey( spep_5 - a + 84, ctZuo, 0 );

--敵の動き
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 116, 1, 0 );
changeAnime( spep_5 + 0, 1, 102);

setMoveKey( spep_5 + 0, 1, 143, -101 , 0 );
setMoveKey( spep_5 + 2, 1, 139.7, -101.8 , 0 );
setMoveKey( spep_5 + 4, 1, 140.5, -100.5 , 0 );
setMoveKey( spep_5 + 6, 1, 137.2, -97.3 , 0 );
setMoveKey( spep_5 + 8, 1, 138, -96 , 0 );
setMoveKey( spep_5 + 10, 1, 134.7, -96.8 , 0 );
setMoveKey( spep_5 + 12, 1, 135.5, -95.5 , 0 );
setMoveKey( spep_5 + 14, 1, 132.2, -92.3 , 0 );
setMoveKey( spep_5 + 16, 1, 133, -91 , 0 );
setMoveKey( spep_5 + 18, 1, 129.7, -91.8 , 0 );
setMoveKey( spep_5 + 20, 1, 130.5, -90.5 , 0 );
setMoveKey( spep_5 + 22, 1, 127.2, -87.3 , 0 );
setMoveKey( spep_5 + 24, 1, 128, -86 , 0 );
setMoveKey( spep_5 + 26, 1, 124.7, -86.8 , 0 );
setMoveKey( spep_5 + 28, 1, 125.5, -85.5 , 0 );
setMoveKey( spep_5 + 30, 1, 122.2, -82.3 , 0 );
setMoveKey( spep_5 + 32, 1, 123, -81 , 0 );
setMoveKey( spep_5 + 34, 1, 119.7, -81.8 , 0 );
setMoveKey( spep_5 + 36, 1, 120.5, -80.5 , 0 );
setMoveKey( spep_5 + 38, 1, 117.2, -77.3 , 0 );
setMoveKey( spep_5 + 40, 1, 120, -74 , 0 );
setMoveKey( spep_5 + 42, 1, 112.7, -78.8 , 0 );
setMoveKey( spep_5 + 44, 1, 117.5, -77.5 , 0 );
setMoveKey( spep_5 + 46, 1, 110.2, -70.3 , 0 );
setMoveKey( spep_5 + 48, 1, 115, -69 , 0 );
setMoveKey( spep_5 + 50, 1, 109, -75 , 0 );
setMoveKey( spep_5 + 52, 1, 115, -75 , 0 );
setMoveKey( spep_5 + 54, 1, 109, -69 , 0 );
setMoveKey( spep_5 + 56, 1, 115, -69 , 0 );
setMoveKey( spep_5 + 58, 1, 109, -75 , 0 );
setMoveKey( spep_5 + 60, 1, 115, -75 , 0 );
setMoveKey( spep_5 + 62, 1, 109, -69 , 0 );
setMoveKey( spep_5 + 64, 1, 115, -69 , 0 );
setMoveKey( spep_5 + 66, 1, 109, -75 , 0 );
setMoveKey( spep_5 + 68, 1, 115, -75 , 0 );
setMoveKey( spep_5 + 70, 1, 109, -69 , 0 );
setMoveKey( spep_5 + 72, 1, 115, -69 , 0 );
setMoveKey( spep_5 + 74, 1, 109, -75 , 0 );
setMoveKey( spep_5 + 76, 1, 115, -75 , 0 );
setMoveKey( spep_5 + 78, 1, 109, -69 , 0 );
setMoveKey( spep_5 + 80, 1, 115, -69 , 0 );
setMoveKey( spep_5 + 82, 1, 109, -75 , 0 );
setMoveKey( spep_5 + 84, 1, 115, -75 , 0 );
setMoveKey( spep_5 + 86, 1, 109, -69 , 0 );
setMoveKey( spep_5 + 88, 1, 115, -69 , 0 );
setMoveKey( spep_5 + 90, 1, 109, -75 , 0 );
setMoveKey( spep_5 + 92, 1, 115, -75 , 0 );
setMoveKey( spep_5 + 94, 1, 109, -69 , 0 );
setMoveKey( spep_5 + 96, 1, 115, -69 , 0 );
setMoveKey( spep_5 + 98, 1, 109, -75 , 0 );
setMoveKey( spep_5 + 100, 1, 115, -75 , 0 );
setMoveKey( spep_5 + 102, 1, 109, -69 , 0 );
setMoveKey( spep_5 + 104, 1, 115, -69 , 0 );
setMoveKey( spep_5 + 106, 1, 109, -75 , 0 );
setMoveKey( spep_5 + 108, 1, 115, -75 , 0 );
setMoveKey( spep_5 + 110, 1, 109, -69 , 0 );
setMoveKey( spep_5 + 112, 1, 115, -69 , 0 );
setMoveKey( spep_5 + 114, 1, 109, -75 , 0 );
setMoveKey( spep_5 + 116, 1, 115, -75 , 0 );

setScaleKey( spep_5 + 0, 1, 1.35, 1.35 );
setScaleKey( spep_5 + 2, 1, 1.33, 1.33 );
setScaleKey( spep_5 + 4, 1, 1.32, 1.32 );
setScaleKey( spep_5 + 6, 1, 1.3, 1.3 );
setScaleKey( spep_5 + 8, 1, 1.29, 1.29 );
setScaleKey( spep_5 + 10, 1, 1.27, 1.27 );
setScaleKey( spep_5 + 12, 1, 1.26, 1.26 );
setScaleKey( spep_5 + 14, 1, 1.25, 1.25 );
setScaleKey( spep_5 + 16, 1, 1.23, 1.23 );
setScaleKey( spep_5 + 18, 1, 1.22, 1.22 );
setScaleKey( spep_5 + 20, 1, 1.2, 1.2 );
setScaleKey( spep_5 + 22, 1, 1.19, 1.19 );
setScaleKey( spep_5 + 24, 1, 1.17, 1.17 );
setScaleKey( spep_5 + 26, 1, 1.16, 1.16 );
setScaleKey( spep_5 + 28, 1, 1.15, 1.15 );
setScaleKey( spep_5 + 30, 1, 1.13, 1.13 );
setScaleKey( spep_5 + 32, 1, 1.12, 1.12 );
setScaleKey( spep_5 + 34, 1, 1.1, 1.1 );
setScaleKey( spep_5 + 36, 1, 1.09, 1.09 );
setScaleKey( spep_5 + 38, 1, 1.07, 1.07 );
setScaleKey( spep_5 + 40, 1, 1.06, 1.06 );
setScaleKey( spep_5 + 42, 1, 1.04, 1.04 );
setScaleKey( spep_5 + 44, 1, 1.03, 1.03 );
setScaleKey( spep_5 + 46, 1, 1.01, 1.01 );
setScaleKey( spep_5 + 48, 1, 1, 1 );
setScaleKey( spep_5 + 116, 1, 1, 1 );

setRotateKey( spep_5 + 0, 1, 32.1 );
setRotateKey( spep_5 + 2, 1, 32.2 );
setRotateKey( spep_5 + 116, 1, 32.2 );

--次の準備
spep_6 = spep_5+116;

------------------------------------------------------
-- 雲晴れる(220F)
------------------------------------------------------
--雲が晴れる音
playSe( spep_6, SE_17);
playSe( spep_6+60, SE_14);
--エフェクト(前)
bigBomb = entryEffect(spep_6, SP_08x, 0x100, -1, 0, 0, 0);
setEffMoveKey( spep_6, bigBomb, 0, 0 , 0 );
setEffMoveKey( spep_6+220, bigBomb, 0, 0 , 0 );

setEffScaleKey(spep_6, bigBomb, 1.0, 1.0);
setEffScaleKey(spep_6+220, bigBomb, 1.0, 1.0);

setEffRotateKey(spep_6, bigBomb, 0);
setEffRotateKey(spep_6+220, bigBomb, 0);

setEffAlphaKey(spep_6, bigBomb, 255);
setEffAlphaKey(spep_6+220, bigBomb, 255);

--集中線
shuchusen5 = entryEffectLife( spep_6+74, 906, 80, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey(  spep_6+74,  shuchusen5,  0,  0);
setEffMoveKey(  spep_6+154,  shuchusen5,  0,  0);

setEffScaleKey( spep_6+74, shuchusen5, 1, 1);
setEffScaleKey( spep_6+154, shuchusen5, 1, 1);

setEffRotateKey( spep_6+74, shuchusen5, 0);
setEffRotateKey( spep_6+154, shuchusen5, 0);

setEffAlphaKey( spep_6+74, shuchusen5, 255);
setEffAlphaKey( spep_6+154, shuchusen5, 255);

dealDamage(spep_6+60);
endPhase( spep_6+200);

end