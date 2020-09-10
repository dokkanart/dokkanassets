--1013770  ビルス＆ウイス 気弾sp0449

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

--味方側
SP_01 = 151489;--(120F)
SP_02 = 151490;--(140F)
SP_03 = 151491;--(40F)
SP_04 = 151492;--(80F)
SP_05 = 151493;--(44F)
SP_06 = 151494;--(100F)
SP_07 = 151495;--(100F)
SP_08 = 151496;--(180F)
SP_09 = 151497;--(100F)
SP_10 = 151498;--(130F)

--敵側
SP_01x = 151515;--バリア
SP_07x = 151516;--たま発
SP_09x = 151517;--地球崩壊
SP_10x = 151518;--ラスト

multi_frm = 2;

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
setVisibleUI(0, 0);
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);
changeAnime( 0, 0, 1);                       -- 立ち

setMoveKey(   0,   0,    0, -900,   0);
setMoveKey(   1,   0,    0, -900,   0);
setMoveKey(   2,   0,    0, -900,   0);
setMoveKey(   3,   0,    0, -900,   0);
setMoveKey(   4,   0,    0, -900,   0);
setMoveKey(   5,   0,    0, -900,   0);

setMoveKey(   0,   1,    150, -200,   0);
setMoveKey(   1,   1,    151, -188,   0);
setMoveKey(   2,   1,    151, -176,   0);
setMoveKey(   3,   1,    152, -164,   0);
setMoveKey(   4,   1,    153, -152,   0);
setMoveKey(   5,   1,    153, -140,   0);


------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- バリア(120F)
------------------------------------------------------

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

spep1=0;

--背景
entryFadeBg( spep1+25, 0, 95, 0, 0, 0, 0, 210);  -- 黒　背景

-- ** てき ** --
setDisp(spep1,1,1);
changeAnime(spep1,1,100);--正面
setMoveKey(spep1,1,150,-200,0);
setMoveKey(spep1+30,1,170,0,0);
setMoveKey(spep1+36,1,170,0,0);

changeAnime(spep1+36,1,106);--背中伸ばしたやられモーション

setMoveKey(spep1+110,1,50,140,0);
setMoveKey(spep1+116,1,50,140,0);
setDisp(spep1+116,1,0);

setScaleKey(spep1,1,1.0,1.0);
setScaleKey(spep1+36,1,1.0,1.0);
setScaleKey(spep1+37,1,1.0,1.0);
setScaleKey(spep1+116,1,1.0,1.0);

setRotateKey(spep1,1,0);
setRotateKey(spep1+36,1,0);
setRotateKey(spep1+37,1,0);
setRotateKey(spep1+116,1,0);

-- ** エフェクト等 ** --
Kidame=entryEffectLife(spep1,SP_01,116,0x100,-1,0,0,0);

setEffMoveKey(spep1,Kidame,0,0,0);
setEffMoveKey(spep1+116,Kidame,0,0,0);
setEffScaleKey(spep1,Kidame,1.0,1.0);
setEffScaleKey(spep1+116,Kidame,1.0,1.0);
setEffAlphaKey(spep1,Kidame,255);
setEffAlphaKey(spep1+116,Kidame,255);
setEffAlphaKey(spep1+116,Kidame,255);
setEffAlphaKey(spep1+117,Kidame,0);
setEffRotateKey(spep1,Kidame,0);
setEffRotateKey(spep1+116,Kidame,0);

-- ** SE等 ** --
playSe( spep1+36, 32);--バリアはるおと
playSe( spep1+80, 4);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 20; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

setMoveKey(SP_dodge,1,163,46,0);
setMoveKey(SP_dodge+8,1,163,46,0);

setDisp(SP_dodge+9,1,0);
setMoveKey(SP_dodge+9,1,0,-10000,0);
setMoveKey(SP_dodge+10,1,0,-10000,0);

setScaleKey(SP_dodge,1,1.0,1.0);
setScaleKey(SP_dodge+8,1,1.0,1.0);
setScaleKey(SP_dodge+9,1,1.0,1.0);
setScaleKey(SP_dodge+10,1,1.0,1.0);

setRotateKey(SP_dodge,1,0);
setRotateKey(SP_dodge+8,1,0);
setRotateKey(SP_dodge+9,1,0);
setRotateKey(SP_dodge+10,1,0);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(SP_dodge+10);
do return end
else end

------------------------------------------------------
-- 正面(140F)
------------------------------------------------------
spep2=spep1+116;

-- ** 次の準備 ** --
entryFade( spep2-10, 5, 5, 4, 77, 162, 32, 255);     -- white fade緑
--entryFadeBg( spep_3, 0, 90, 0, 0, 0, 0, 255); -- ベース暗め　背景

-- ** 背景 ** --
entryFadeBg( spep2, 0, 140, 0, 0, 0, 0, 255); -- ベース暗め　背景

-- ** エフェクト等 ** --
tama5 = entryEffect( spep2, SP_02, 0, -1, 0, 0, 0);   --迫る〜命中　50f
setEffScaleKey( spep2, tama5, 1, 1);
setEffMoveKey( spep2, tama5, 0, 0, 0);
setEffAlphaKey( spep2, tama5, 255);
setEffAlphaKey( spep2+140, tama5, 255);
setEffAlphaKey( spep2+141, tama5, 0);

-- ** 集中線 ** --
shuchusen5 = entryEffectLife( spep2+50, 906, 90, 0x100,  -1, 0,  0,  0); -- 集中線
setEffMoveKey( spep2+50, shuchusen5, 0, 0, 0);
setEffScaleKey( spep2+50, shuchusen5, 1.4, 1.4);
setEffAlphaKey( spep2+50, shuchusen5, 255);
setEffRotateKey( spep2+50, shuchusen5, 0);

speff = entryEffect(  spep2+54,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep2+54,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー --
ctgogo = entryEffectLife( spep2+60, 190006, 70, 0x100, -1,  0, 0, 500);    -- ゴゴゴゴ
setEffShake(spep2+60, ctgogo, 70, 10);
setEffScaleKey(spep2+60, ctgogo, 0.8, 0.8);
setEffRotateKey(spep2+60, ctgogo, 0);
setEffAlphaKey( spep2+60, ctgogo, 255);

-- ** 音 ** --
playSe( spep2+54, SE_04);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
spep3=spep2+140;

-- ** 次の準備 ** --
entryFade( spep3-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- カードカットイン
speff = entryEffect( spep3, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep3, 906, 90, 0x100,  -1, 0,  0,  0); -- 集中線5
setEffMoveKey( spep3, shuchusen3, 0, 0, 0);
setEffScaleKey( spep3, shuchusen3, 1.8, 1.8);
setEffAlphaKey( spep3, shuchusen3, 255);
setEffRotateKey( spep3, shuchusen3, 0);

-- ** 音 ** --
playSe( spep3+5, SE_05);
------------------------------------------------------
-- 正面に放つ(60F)　
------------------------------------------------------

-- ** 次の準備 ** --
spep4 = spep3+90;
entryFade( spep4-6, 3, 6, 3, 77, 162, 32, 255);     -- white fade

-- ** 背景 ** --
entryFadeBg( spep4, 0, 10, 6, 77, 162, 32, 255); -- ベース暗め　背景
entryFadeBg( spep4+10, 0, 50, 0, 0, 0, 0, 255); -- ベース暗め　背景

-- ** エフェクト等 ** --
hasi6 = entryEffect( spep4, SP_03, 0x80, -1, 0, 0, 0);   --発射　50f
setEffMoveKey( spep4, hasi6, 0, 0, 0);
setEffScaleKey( spep4, hasi6, 1, 1);
setEffAlphaKey( spep4, hasi6, 255);
setEffAlphaKey( spep4+60, hasi6, 255);
setEffAlphaKey( spep4+61, hasi6, 0);

-- ** 集中線 ** --
shuchusen6 = entryEffectLife( spep4, 906, 60, 0x100,  -1, 0,  0,  0); -- 集中線
setEffMoveKey( spep4, shuchusen6, 0, 0, 0);
setEffScaleKey( spep4, shuchusen6, 1.3, 1.3);
setEffAlphaKey( spep4, shuchusen6, 255);
setEffRotateKey( spep4, shuchusen6, 0);

-- ** 音 ** --
playSe( spep4+5, 1011);

bagon = entryEffectLife(spep4,10021,60,0x100,-1,0,0,0);-- bago
setEffMoveKey(spep4,bagon, 0,300,0);
setEffScaleKey(spep4,bagon,2.5,2,5);
setEffRotateKey(spep4,bagon,0);
setEffAlphaKey(spep4,bagon,255);
setEffShake(spep4,bagon,60,10);

-- ** てき ** --
setDisp( spep4, 1, 1);
changeAnime( spep4, 1, 107);   
setMoveKey(  spep4,  1,  0,  0, 0);
setMoveKey(  spep4+59,  1,  -100,  -600, 0);
setScaleKey( spep4,    1,  0.3, 0.3);
setScaleKey( spep4+46,    1,  2.0, 2.0);
setScaleKey( spep4+59,    1,  2.5, 2.5);
setShakeChara( spep4,  1,  58, 10);
setDisp( spep4+59, 1, 0);

------------------------------------------------------
-- ウイス(40F)　
------------------------------------------------------
-- ** 次の準備 ** --
spep5=spep4+60;
entryFade( spep5-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 背景 ** --
entryFadeBg( spep5, 0, 40, 0, 0, 0, 0, 255); -- ベース暗め　背景

-- ** SE等 ** --
playSe( spep5+8, 4);--瞬間移動
playSe( spep5+20, 1001);--1004

-- ** 流線 ** --
ryu5 = entryEffectLife(spep5, 914, 40, 0x80,  -1, 0,  0,  0);   -- 流線

setEffScaleKey(spep5, ryu5, 1.4, 1.4);
setEffScaleKey(spep5+40, ryu5, 1.4, 1.4);
setEffAlphaKey(spep5,ryu5,255);
setEffAlphaKey(spep5+40,ryu5,255);
setEffAlphaKey(spep5+41,ryu5,0);
setEffRotateKey(spep5, ryu5, 0);
setEffRotateKey(spep5+19, ryu5, 0);
setEffRotateKey(spep5+20, ryu5, 90);
setEffRotateKey(spep5+40, ryu5, 90);

-- ** エフェクト等 ** --
Rensya=entryEffectLife(spep5,SP_04,70,0x80,-1,0,0,0);

setEffMoveKey(spep5,Rensya,0,0,0);
setEffMoveKey(spep5+40,Rensya,0,0,0);
setEffScaleKey(spep5,Rensya,1.0,1.0);
setEffScaleKey(spep5+40,Rensya,1.0,1.0);
setEffAlphaKey(spep5,Rensya,255);
setEffAlphaKey(spep5+40,Rensya,255);
setEffAlphaKey(spep5+41,Rensya,0);
setEffRotateKey(spep5,Rensya,0);
setEffRotateKey(spep5+40,Rensya,0);

-- ** てき ** --
setDisp( spep5, 1, 1);
changeAnime(spep5,1,106);
changeAnime(spep5+21,1,108);
setShakeChara( spep5, 1, 40, 10);

setMoveKey(spep5,1,-600,0,0);
setMoveKey(spep5+18,1,0,0,0);
setMoveKey(spep5+20,1,0,0,0);
setMoveKey(spep5+34,1,0,-600,0);
setMoveKey(spep5+39,1,0,-1200,0);

setScaleKey(spep5,1,1.5,1.5);
setScaleKey(spep5+39,1,1.5,1.5);

setRotateKey(spep5,1,30);
setRotateKey(spep5+20,1,30);
setRotateKey(spep5+21,1,90);
setRotateKey(spep5+39,1,90);

setDisp( spep5+39, 1, 0);

-- 書き文字エントリー
ctBaki = entryEffectLife( spep5+20, 10020, 6, 0x100, -1, 0, -100, 250); -- バキ

setEffShake( spep5+20, ctBaki, 4, 15);
setEffAlphaKey( spep5+20, ctBaki, 255);
setEffAlphaKey( spep5+26, ctBaki, 255);
--setEffAlphaKey( spep5+27, ctBaki, 0);
setEffScaleKey( spep5+20, ctBaki, 1.8, 1.8);
setEffScaleKey( spep5+26, ctBaki, 1.8, 1.8);
setEffRotateKey( spep5+20, ctBaki, -10);
setEffRotateKey( spep5+26, ctBaki, -10);

------------------------------------------------------
-- ひだん(40F)　
------------------------------------------------------
spep6=spep5+40;

entryFade( spep6-4, 2, 4, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 背景 ** --
entryFadeBg( spep6, 0, 40, 0, 0, 0, 0, 255); -- ベース暗め　背景


-- ** 流線 ** --
ryu6 = entryEffectLife(spep6, 914, 40, 0x80,  -1, 0,  0,  0);   -- 流線
setEffScaleKey(spep6,ryu6, 1.4, 1.4);
setEffScaleKey(spep6+40,ryu6, 1.4, 1.4);
setEffAlphaKey(spep6,ryu6,255);
setEffAlphaKey(spep6+40,ryu6,255);
setEffAlphaKey(spep6+41,ryu6,0);
setEffRotateKey(spep6,ryu6, 90);
setEffRotateKey(spep6+40,ryu6, 90);

-- ** エフェクト等 ** --

Hidan=entryEffectLife(spep6,SP_05,40,0x80,-1,0,0,0);

setEffMoveKey(spep6,Hidan,0,0,0);
setEffMoveKey(spep6+40,Hidan,0,0,0);
setEffScaleKey(spep6,Hidan,1.0,1.0);
setEffScaleKey(spep6+40,Hidan,1.0,1.0);
setEffAlphaKey(spep6,Hidan,255);
setEffAlphaKey(spep6+40,Hidan,255);
setEffAlphaKey(spep6+41,Hidan,0);
setEffRotateKey(spep6,Hidan,0);
setEffRotateKey(spep6+40,Hidan,0);

-- ** てき ** --
setDisp(spep6+1,1,1);
changeAnime(spep6,1,108);
setShakeChara( spep6,  1,  40, 10);
setMoveKey(spep6,1,0,700,0);
setMoveKey(spep6+8,1,0,-550,0);
changeAnime(spep6+8,1,106);
setMoveKey(spep6+30,1,0,-100,0);
setMoveKey(spep6+40,1,0,-50,0);

setScaleKey(spep6+1,1,1.5,1.5);
setScaleKey(spep6+9,1,1.5,1.5);
setScaleKey(spep6+10,1,1.5,1.5);
setScaleKey(spep6+40,1,1.5,1.5);

setRotateKey(spep6,1,90);
setRotateKey(spep6+7,1,90);
setRotateKey(spep6+8,1,30);
setRotateKey(spep6+40,1,30);

-- 書き文字エントリー
ctDogown = entryEffectLife( spep6+8, 10018, 32, 0x100, -1, 0, 0, 300); -- ドゴォン

setEffShake( spep6+8, ctDogown, 32, 20);
setEffAlphaKey( spep6+8, ctDogown, 255);
setEffAlphaKey( spep6+30, ctDogown, 255);
setEffAlphaKey( spep6+40, ctDogown, 0);
setEffScaleKey( spep6+8, ctDogown, 2.0, 2.0);
setEffScaleKey( spep6+14, ctDogown, 3.8, 3.8);
setEffScaleKey( spep6+40, ctDogown, 3.8, 3.8);
setEffRotateKey( spep6+8, ctDogown, 0);
setEffRotateKey( spep6+40, ctDogown, 0);

playSe( spep6+8, 1009);


------------------------------------------------------
-- 正面に放つ(60F)　
------------------------------------------------------
spep7=spep6+40;

setDisp(spep7,1,0);

entryFade( spep7-4, 2, 4, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep7, 0, 60, 0, 0, 0, 0, 255);  -- 黒　背景

Hitfront=entryEffectLife(spep7,SP_06,60,0x100,-1,0,0,0);

setEffMoveKey(spep7,Hitfront,0,0,0);
setEffMoveKey(spep7+60,Hitfront,0,0,0);
setEffScaleKey(spep7,Hitfront,1.0,1.0);
setEffScaleKey(spep7+60,Hitfront,1.0,1.0);
setEffAlphaKey(spep7,Hitfront,255);
setEffAlphaKey(spep7+60,Hitfront,255);
setEffAlphaKey(spep7+61,Hitfront,0);
setEffRotateKey(spep7,Hitfront,0);
setEffRotateKey(spep7+60,Hitfront,0);

playSe( spep7+4, SE_06);

--流線
ryu7 = entryEffectLife(spep7,921,60,0x80,-1,0,0,0);   -- 流線
setEffScaleKey(spep7,ryu7, 1.4, 1.4);
setEffScaleKey(spep7+60,ryu7, 1.4, 1.4);
setEffAlphaKey(spep7,ryu7,255);
setEffAlphaKey(spep7+60,ryu7,255);
setEffRotateKey(spep7,ryu7,90);
setEffRotateKey(spep7+60,ryu7,90);

------------------------------------------------------
-- たま迫る(80F)　
------------------------------------------------------
spep8=spep7+60;

entryFade( spep8-4, 2, 4, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep8, 0, 80, 0, 0, 0, 0, 255);  -- 黒　背景

Hitbehind=entryEffectLife(spep8,SP_07,80,0x100,-1,0,0,0);

setEffMoveKey(spep8,Hitbehind,0,0,0);
setEffMoveKey(spep8+80,Hitbehind,0,0,0);
setEffScaleKey(spep8,Hitbehind,1.0,1.0);
setEffScaleKey(spep8+80,Hitbehind,1.0,1.0);
setEffAlphaKey(spep8,Hitbehind,255);
setEffAlphaKey(spep8+80,Hitbehind,255);
setEffAlphaKey(spep8+81,Hitbehind,0);
setEffRotateKey(spep8,Hitbehind,0);
setEffRotateKey(spep8+80,Hitbehind,0);

-- 書き文字エントリー
ctZuo = entryEffectLife(spep8+20,10012,60,0x100,-1,0,120,350); -- ズオッ
setEffShake(spep8+20,ctZuo,60,15);

setEffAlphaKey(spep8+20,ctZuo,255);
setEffAlphaKey(spep8+60,ctZuo,255);
setEffAlphaKey(spep8+80,ctZuo,0);
setEffScaleKey(spep8+20,ctZuo,0.1,0.1);
setEffScaleKey(spep8+25,ctZuo,2.5,2.5);
setEffScaleKey(spep8+60,ctZuo,2.5,2.5);
setEffScaleKey(spep8+80,ctZuo,6.5,6.5);
setEffRotateKey(spep8+20,ctZuo,40);
setEffRotateKey(spep8+80,ctZuo,40);

-- ** 集中線
shuchusen8 = entryEffectLife(spep8,906,20,0x80,-1,0,0,0);-- 集中線

setEffMoveKey(spep8,shuchusen8,0,0,0);
setEffMoveKey(spep8+20,shuchusen8,0,0,0);
setEffScaleKey(spep8,shuchusen8,1.2,1.2);
setEffScaleKey(spep8+20,shuchusen8,1.2,1.2);
setEffAlphaKey(spep8,shuchusen8,255);
setEffAlphaKey(spep8+20,shuchusen8,255);
setEffAlphaKey(spep8+21,shuchusen8,0);
setEffRotateKey(spep8,shuchusen8,0);
setEffRotateKey(spep8+20,shuchusen8,0);

--流線
ryu8a = entryEffectLife(spep8, 920, 20, 0x80,  -1, 0,  0,  0);   -- 流線

setEffScaleKey(spep8, ryu8a, 1.6, 1.6);
setEffScaleKey(spep8+20, ryu8a, 1.6, 1.6);
setEffRotateKey(spep8, ryu8a, 230);
setEffRotateKey(spep8+20, ryu8a, 230);

--流線
ryu8b = entryEffectLife(spep8+21, 921, 59, 0x80,  -1, 0,  0,  0);   -- 流線

setEffScaleKey(spep8+21, ryu8b, 1.7, 1.7);
setEffScaleKey(spep8+80, ryu8b, 1.7, 1.7);
setEffRotateKey(spep8+21, ryu8b, 230);
setEffRotateKey(spep8+80, ryu8b, 230);

playSe( spep8+20, SE_07);

entryFade( spep8+74, 3, 6, 3, 255, 255, 255, 255);  -- 白

-------------------
--ギャン(60F)
-------------------
spep9=spep8+80;
entryFadeBg( spep9, 0, 60, 0, 0, 0, 0, 255);  -- 黒　背景

Exp0=entryEffect(spep9,190002,0x100,-1,0,0,0);

setEffMoveKey(spep9,Exp0,0,0,0);
setEffMoveKey(spep9+60,Exp0,0,0,0);
setEffScaleKey(spep9,Exp0,1.0,1.0);
setEffScaleKey(spep9+60,Exp0,1.0,1.0);
setEffAlphaKey(spep9,Exp0,255);
setEffAlphaKey(spep9+60,Exp0,255);
setEffAlphaKey(spep9+61,Exp0,0);
setEffRotateKey(spep9,Exp0,0);
setEffRotateKey(spep9+60,Exp0,0);
--setEffRotateKey(spep9+60,gyan,0);

setEffShake( spep9, Exp0, 60, 10);

-- ** 書き文字エントリー ** --
ctgyan = entryEffectLife( spep9, 10006, 60, 0x100, -1, 0, 0, 400); -- ギャン
setEffScaleKey( spep9, ctgyan, 3.0, 3.0);
setEffScaleKey( spep9+60, ctgyan, 4.0, 4.0);
setEffAlphaKey( spep9, ctgyan, 255);
setEffAlphaKey( spep9+60, ctgyan, 80);
setEffShake( spep9, ctgyan, 60, 10);

-- ** 音 ** --
playSe( spep9+8, SE_09);

------------------------------------------------------
-- ばくは(100F)　
------------------------------------------------------
spep10=spep9+60;

Exp=entryEffectLife(spep10,SP_08,180,0x80,-1,0,0,0);

entryFade( spep10-6, 3, 4, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep10, 0, 100, 0, 0, 0, 0, 255);  -- 黒　背景

setEffMoveKey(spep10,Exp,0,0,0);
setEffMoveKey(spep10+100,Exp,0,0,0);
setEffScaleKey(spep10,Exp,1.1,1.1);
setEffScaleKey(spep10+100,Exp,1.1,1.1);
setEffAlphaKey(spep10,Exp,255);
setEffAlphaKey(spep10+100,Exp,255);
setEffAlphaKey(spep10+101,Exp,0);
setEffRotateKey(spep10,Exp,0);
setEffRotateKey(spep10+100,Exp,0);

-- ** 集中線
shuchusen10 = entryEffectLife(spep10,906,100,0x100,-1,0,0,0);-- 集中線

setEffMoveKey(spep10,shuchusen10,0,0,0);
setEffMoveKey(spep10+100,shuchusen10,0,0,0);
setEffScaleKey(spep10,shuchusen10,1.3,1.3);
setEffScaleKey(spep10+100,shuchusen10,1.3,1.3);
setEffAlphaKey(spep10,shuchusen10,255);
setEffAlphaKey(spep10+100,shuchusen10,255);
setEffRotateKey(spep10,shuchusen10,0);
setEffRotateKey(spep10+100,shuchusen10,0);

playSe( spep10+4, SE_10);

------------------------------------------------------
-- hukann(100F)　
------------------------------------------------------
spep11=spep10+100;

entryFade( spep11-6, 3, 4, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

Exp2=entryEffect(spep11,SP_09,0x100,-1,0,0,0);

setEffMoveKey(spep11,Exp2,0,0,0);
setEffMoveKey(spep11+100,Exp2,0,0,0);
setEffScaleKey(spep11,Exp2,1.1,1.1);
setEffScaleKey(spep11+100,Exp2,1.1,1.1);
setEffAlphaKey(spep11,Exp2,255);
setEffAlphaKey(spep11+100,Exp2,255);
setEffRotateKey(spep11,Exp2,0);
setEffRotateKey(spep11+100,Exp2,0);

playSe( spep11+4, SE_10);

------------------------------------------------------
--びっくり(120F)　
------------------------------------------------------
spep12=spep11+100;

entryFade( spep12-6, 3, 4, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

Exp3=entryEffect(spep12,SP_10,0x80,-1,0,0,0);

setEffMoveKey(spep12,Exp3,0,0,0);
setEffMoveKey(spep12+130,Exp3,0,0,0);
setEffScaleKey(spep12,Exp3,1.0,1.0);
setEffScaleKey(spep12+130,Exp3,1.0,1.0);
setEffAlphaKey(spep12,Exp3,255);
setEffAlphaKey(spep12+130,Exp3,255);
setEffRotateKey(spep12,Exp,0);
setEffRotateKey(spep12+130,Exp3,0);

playSe( spep12+20, 24);

-- ダメージ表示
dealDamage(spep12+10);
entryFade( spep12+110, 9,  10, 1, 8, 8, 8, 255);-- black fade
endPhase( spep12+120);

else
------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- バリア(120F)
------------------------------------------------------

spep1=0;

--背景
entryFadeBg( spep1+25, 0, 95, 0, 0, 0, 0, 210);  -- 黒　背景

-- ** てき ** --
setDisp(spep1,1,1);
changeAnime(spep1,1,100);--正面
setMoveKey(spep1,1,150,-200,0);
setMoveKey(spep1+30,1,170,0,0);
setMoveKey(spep1+36,1,170,0,0);

changeAnime(spep1+36,1,106);--背中伸ばしたやられモーション

setMoveKey(spep1+110,1,50,140,0);
setMoveKey(spep1+116,1,50,140,0);
setDisp(spep1+116,1,0);

setScaleKey(spep1,1,1.0,1.0);
setScaleKey(spep1+36,1,1.0,1.0);
setScaleKey(spep1+37,1,1.0,1.0);
setScaleKey(spep1+116,1,1.0,1.0);

setRotateKey(spep1,1,0);
setRotateKey(spep1+36,1,0);
setRotateKey(spep1+37,1,0);
setRotateKey(spep1+116,1,0);

-- ** エフェクト等 ** --
Kidame=entryEffectLife(spep1,SP_01x,116,0x100,-1,0,0,0);

setEffMoveKey(spep1,Kidame,0,0,0);
setEffMoveKey(spep1+116,Kidame,0,0,0);
setEffScaleKey(spep1,Kidame,1.0,1.0);
setEffScaleKey(spep1+116,Kidame,1.0,1.0);
setEffAlphaKey(spep1,Kidame,255);
setEffAlphaKey(spep1+116,Kidame,255);
setEffAlphaKey(spep1+116,Kidame,255);
setEffAlphaKey(spep1+117,Kidame,0);
setEffRotateKey(spep1,Kidame,0);
setEffRotateKey(spep1+116,Kidame,0);

-- ** SE等 ** --
playSe( spep1+36, 32);--バリアはるおと
playSe( spep1+80, 4);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 20; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

setMoveKey(SP_dodge,1,163,46,0);
setMoveKey(SP_dodge+8,1,163,46,0);

setDisp(SP_dodge+9,1,0);
setMoveKey(SP_dodge+9,1,0,-10000,0);
setMoveKey(SP_dodge+10,1,0,-10000,0);

setScaleKey(SP_dodge,1,1.0,1.0);
setScaleKey(SP_dodge+8,1,1.0,1.0);
setScaleKey(SP_dodge+9,1,1.0,1.0);
setScaleKey(SP_dodge+10,1,1.0,1.0);

setRotateKey(SP_dodge,1,0);
setRotateKey(SP_dodge+8,1,0);
setRotateKey(SP_dodge+9,1,0);
setRotateKey(SP_dodge+10,1,0);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(SP_dodge+10);
do return end
else end

------------------------------------------------------
-- 正面(140F)
------------------------------------------------------
spep2=spep1+116;

-- ** 次の準備 ** --
entryFade( spep2-10, 5, 5, 4, 77, 162, 32, 255);     -- white fade緑
--entryFadeBg( spep_3, 0, 90, 0, 0, 0, 0, 255); -- ベース暗め　背景

-- ** 背景 ** --
entryFadeBg( spep2, 0, 140, 0, 0, 0, 0, 255); -- ベース暗め　背景

-- ** エフェクト等 ** --
tama5 = entryEffect( spep2, SP_02, 0, -1, 0, 0, 0);   --迫る〜命中　50f
setEffScaleKey( spep2, tama5, -1, 1);
setEffMoveKey( spep2, tama5, 0, 0, 0);
setEffAlphaKey( spep2, tama5, 255);
setEffAlphaKey( spep2+140, tama5, 255);
setEffAlphaKey( spep2+141, tama5, 0);

-- ** 集中線 ** --
shuchusen5 = entryEffectLife( spep2+50, 906, 90, 0x100,  -1, 0,  0,  0); -- 集中線
setEffMoveKey( spep2+50, shuchusen5, 0, 0, 0);
setEffScaleKey( spep2+50, shuchusen5, 1.4, 1.4);
setEffAlphaKey( spep2+50, shuchusen5, 255);
setEffRotateKey( spep2+50, shuchusen5, 0);

--speff = entryEffect(  spep2+54,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  spep2+54,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー --
ctgogo = entryEffectLife( spep2+60, 190006, 70, 0x100, -1,  0, 0, 500);    -- ゴゴゴゴ
setEffShake(spep2+60, ctgogo, 70, 10);
setEffScaleKey(spep2+60, ctgogo, -0.8, 0.8);
setEffRotateKey(spep2+60, ctgogo, 0);
setEffAlphaKey( spep2+60, ctgogo, 255);

-- ** 音 ** --
playSe( spep2+54, SE_04);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
spep3=spep2+140;

-- ** 次の準備 ** --
entryFade( spep3-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- カードカットイン
speff = entryEffect( spep3, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep3, 906, 90, 0x100,  -1, 0,  0,  0); -- 集中線5
setEffMoveKey( spep3, shuchusen3, 0, 0, 0);
setEffScaleKey( spep3, shuchusen3, 1.8, 1.8);
setEffAlphaKey( spep3, shuchusen3, 255);
setEffRotateKey( spep3, shuchusen3, 0);

-- ** 音 ** --
playSe( spep3+5, SE_05);
------------------------------------------------------
-- 正面に放つ(60F)　
------------------------------------------------------

-- ** 次の準備 ** --
spep4 = spep3+90;
entryFade( spep4-6, 3, 6, 3, 77, 162, 32, 255);     -- white fade

-- ** 背景 ** --
entryFadeBg( spep4, 0, 10, 6, 77, 162, 32, 255); -- ベース暗め　背景
entryFadeBg( spep4+10, 0, 50, 0, 0, 0, 0, 255); -- ベース暗め　背景

-- ** エフェクト等 ** --
hasi6 = entryEffect( spep4, SP_03, 0x80, -1, 0, 0, 0);   --発射　50f
setEffMoveKey( spep4, hasi6, 0, 0, 0);
setEffScaleKey( spep4, hasi6, -1, 1);
setEffAlphaKey( spep4, hasi6, 255);
setEffAlphaKey( spep4+60, hasi6, 255);
setEffAlphaKey( spep4+61, hasi6, 0);

-- ** 集中線 ** --
shuchusen6 = entryEffectLife( spep4, 906, 60, 0x100,  -1, 0,  0,  0); -- 集中線
setEffMoveKey( spep4, shuchusen6, 0, 0, 0);
setEffScaleKey( spep4, shuchusen6, 1.3, 1.3);
setEffAlphaKey( spep4, shuchusen6, 255);
setEffRotateKey( spep4, shuchusen6, 0);

-- ** 音 ** --
playSe( spep4+5, 1011);

bagon = entryEffectLife(spep4,10021,60,0x100,-1,0,0,0);-- bago
setEffMoveKey(spep4,bagon, 0,300,0);
setEffScaleKey(spep4,bagon,2.5,2,5);
setEffRotateKey(spep4,bagon,0);
setEffAlphaKey(spep4,bagon,255);
setEffShake(spep4,bagon,60,10);

-- ** てき ** --
setDisp( spep4, 1, 1);
changeAnime( spep4, 1, 107);   
setMoveKey(  spep4,  1,  0,  0, 0);
setMoveKey(  spep4+59,  1,  -100,  -600, 0);
setScaleKey( spep4,    1,  0.3, 0.3);
setScaleKey( spep4+46,    1,  2.0, 2.0);
setScaleKey( spep4+59,    1,  2.5, 2.5);
setShakeChara( spep4,  1,  58, 10);
setDisp( spep4+59, 1, 0);

------------------------------------------------------
-- ウイス(40F)　
------------------------------------------------------
-- ** 次の準備 ** --
spep5=spep4+60;
entryFade( spep5-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 背景 ** --
entryFadeBg( spep5, 0, 40, 0, 0, 0, 0, 255); -- ベース暗め　背景

-- ** SE等 ** --
playSe( spep5+8, 4);--瞬間移動
playSe( spep5+20, 1001);--1004

-- ** 流線 ** --
ryu5 = entryEffectLife(spep5, 914, 40, 0x80,  -1, 0,  0,  0);   -- 流線

setEffScaleKey(spep5, ryu5, 1.4, 1.4);
setEffScaleKey(spep5+40, ryu5, 1.4, 1.4);
setEffAlphaKey(spep5,ryu5,255);
setEffAlphaKey(spep5+40,ryu5,255);
setEffAlphaKey(spep5+41,ryu5,0);
setEffRotateKey(spep5, ryu5, 0);
setEffRotateKey(spep5+19, ryu5, 0);
setEffRotateKey(spep5+20, ryu5, 90);
setEffRotateKey(spep5+40, ryu5, 90);

-- ** エフェクト等 ** --
Rensya=entryEffectLife(spep5,SP_04,70,0x80,-1,0,0,0);

setEffMoveKey(spep5,Rensya,0,0,0);
setEffMoveKey(spep5+40,Rensya,0,0,0);
setEffScaleKey(spep5,Rensya,1.0,1.0);
setEffScaleKey(spep5+40,Rensya,1.0,1.0);
setEffAlphaKey(spep5,Rensya,255);
setEffAlphaKey(spep5+40,Rensya,255);
setEffAlphaKey(spep5+41,Rensya,0);
setEffRotateKey(spep5,Rensya,0);
setEffRotateKey(spep5+40,Rensya,0);

-- ** てき ** --
setDisp( spep5, 1, 1);
changeAnime(spep5,1,106);
changeAnime(spep5+21,1,108);
setShakeChara( spep5, 1, 40, 10);

setMoveKey(spep5,1,-600,0,0);
setMoveKey(spep5+18,1,0,0,0);
setMoveKey(spep5+20,1,0,0,0);
setMoveKey(spep5+34,1,0,-600,0);
setMoveKey(spep5+39,1,0,-1200,0);

setScaleKey(spep5,1,1.5,1.5);
setScaleKey(spep5+39,1,1.5,1.5);

setRotateKey(spep5,1,30);
setRotateKey(spep5+20,1,30);
setRotateKey(spep5+21,1,90);
setRotateKey(spep5+39,1,90);

setDisp( spep5+39, 1, 0);

-- 書き文字エントリー
ctBaki = entryEffectLife( spep5+20, 10020, 6, 0x100, -1, 0, -100, 250); -- バキ

setEffShake( spep5+20, ctBaki, 4, 15);
setEffAlphaKey( spep5+20, ctBaki, 255);
setEffAlphaKey( spep5+26, ctBaki, 255);
--setEffAlphaKey( spep5+27, ctBaki, 0);
setEffScaleKey( spep5+20, ctBaki, 1.8, 1.8);
setEffScaleKey( spep5+26, ctBaki, 1.8, 1.8);
setEffRotateKey( spep5+20, ctBaki, -10);
setEffRotateKey( spep5+26, ctBaki, -10);

------------------------------------------------------
-- ひだん(40F)　
------------------------------------------------------
spep6=spep5+40;

entryFade( spep6-4, 2, 4, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 背景 ** --
entryFadeBg( spep6, 0, 40, 0, 0, 0, 0, 255); -- ベース暗め　背景


-- ** 流線 ** --
ryu6 = entryEffectLife(spep6, 914, 40, 0x80,  -1, 0,  0,  0);   -- 流線
setEffScaleKey(spep6,ryu6, 1.4, 1.4);
setEffScaleKey(spep6+40,ryu6, 1.4, 1.4);
setEffAlphaKey(spep6,ryu6,255);
setEffAlphaKey(spep6+40,ryu6,255);
setEffAlphaKey(spep6+41,ryu6,0);
setEffRotateKey(spep6,ryu6, 90);
setEffRotateKey(spep6+40,ryu6, 90);

-- ** エフェクト等 ** --

Hidan=entryEffectLife(spep6,SP_05,40,0x80,-1,0,0,0);

setEffMoveKey(spep6,Hidan,0,0,0);
setEffMoveKey(spep6+40,Hidan,0,0,0);
setEffScaleKey(spep6,Hidan,-1.0,1.0);
setEffScaleKey(spep6+40,Hidan,-1.0,1.0);
setEffAlphaKey(spep6,Hidan,255);
setEffAlphaKey(spep6+40,Hidan,255);
setEffAlphaKey(spep6+41,Hidan,0);
setEffRotateKey(spep6,Hidan,0);
setEffRotateKey(spep6+40,Hidan,0);

-- ** てき ** --
setDisp(spep6+1,1,1);
changeAnime(spep6,1,108);
setShakeChara( spep6,  1,  40, 10);
setMoveKey(spep6,1,0,700,0);
setMoveKey(spep6+8,1,0,-550,0);
changeAnime(spep6+8,1,106);
setMoveKey(spep6+30,1,0,-100,0);
setMoveKey(spep6+40,1,0,-50,0);

setScaleKey(spep6+1,1,1.5,1.5);
setScaleKey(spep6+9,1,1.5,1.5);
setScaleKey(spep6+10,1,1.5,1.5);
setScaleKey(spep6+40,1,1.5,1.5);

setRotateKey(spep6,1,90);
setRotateKey(spep6+7,1,90);
setRotateKey(spep6+8,1,30);
setRotateKey(spep6+40,1,30);

-- 書き文字エントリー
ctDogown = entryEffectLife( spep6+8, 10018, 32, 0x100, -1, 0, 0, 300); -- ドゴォン

setEffShake( spep6+8, ctDogown, 32, 20);
setEffAlphaKey( spep6+8, ctDogown, 255);
setEffAlphaKey( spep6+30, ctDogown, 255);
setEffAlphaKey( spep6+40, ctDogown, 0);
setEffScaleKey( spep6+8, ctDogown, 2.0, 2.0);
setEffScaleKey( spep6+14, ctDogown, 3.8, 3.8);
setEffScaleKey( spep6+40, ctDogown, 3.8, 3.8);
setEffRotateKey( spep6+8, ctDogown, 0);
setEffRotateKey( spep6+40, ctDogown, 0);

playSe( spep6+8, 1009);


------------------------------------------------------
-- 正面に放つ(60F)　
------------------------------------------------------
spep7=spep6+40;

setDisp(spep7,1,0);

entryFade( spep7-4, 2, 4, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep7, 0, 60, 0, 0, 0, 0, 255);  -- 黒　背景

Hitfront=entryEffectLife(spep7,SP_06,60,0x100,-1,0,0,0);

setEffMoveKey(spep7,Hitfront,0,0,0);
setEffMoveKey(spep7+60,Hitfront,0,0,0);
setEffScaleKey(spep7,Hitfront,-1.0,1.0);
setEffScaleKey(spep7+60,Hitfront,-1.0,1.0);
setEffAlphaKey(spep7,Hitfront,255);
setEffAlphaKey(spep7+60,Hitfront,255);
setEffAlphaKey(spep7+61,Hitfront,0);
setEffRotateKey(spep7,Hitfront,0);
setEffRotateKey(spep7+60,Hitfront,0);

playSe( spep7+4, SE_06);

--流線
ryu7 = entryEffectLife(spep7,921,60,0x80,-1,0,0,0);   -- 流線
setEffScaleKey(spep7,ryu7, 1.4, 1.4);
setEffScaleKey(spep7+60,ryu7, 1.4, 1.4);
setEffAlphaKey(spep7,ryu7,255);
setEffAlphaKey(spep7+60,ryu7,255);
setEffRotateKey(spep7,ryu7,90);
setEffRotateKey(spep7+60,ryu7,90);

------------------------------------------------------
-- たま迫る(80F)　
------------------------------------------------------
spep8=spep7+60;

entryFade( spep8-4, 2, 4, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep8, 0, 80, 0, 0, 0, 0, 255);  -- 黒　背景

Hitbehind=entryEffectLife(spep8,SP_07x,80,0x100,-1,0,0,0);

setEffMoveKey(spep8,Hitbehind,0,0,0);
setEffMoveKey(spep8+80,Hitbehind,0,0,0);
setEffScaleKey(spep8,Hitbehind,1.0,1.0);
setEffScaleKey(spep8+80,Hitbehind,1.0,1.0);
setEffAlphaKey(spep8,Hitbehind,255);
setEffAlphaKey(spep8+80,Hitbehind,255);
setEffAlphaKey(spep8+81,Hitbehind,0);
setEffRotateKey(spep8,Hitbehind,0);
setEffRotateKey(spep8+80,Hitbehind,0);

-- 書き文字エントリー
ctZuo = entryEffectLife(spep8+20,10012,60,0x100,-1,0,120,350); -- ズオッ
setEffShake(spep8+20,ctZuo,60,15);

setEffAlphaKey(spep8+20,ctZuo,255);
setEffAlphaKey(spep8+60,ctZuo,255);
setEffAlphaKey(spep8+80,ctZuo,0);
setEffScaleKey(spep8+20,ctZuo,0.1,0.1);
setEffScaleKey(spep8+25,ctZuo,2.5,2.5);
setEffScaleKey(spep8+60,ctZuo,2.5,2.5);
setEffScaleKey(spep8+80,ctZuo,6.5,6.5);
setEffRotateKey(spep8+20,ctZuo,40);
setEffRotateKey(spep8+80,ctZuo,40);

-- ** 集中線
shuchusen8 = entryEffectLife(spep8,906,20,0x80,-1,0,0,0);-- 集中線

setEffMoveKey(spep8,shuchusen8,0,0,0);
setEffMoveKey(spep8+20,shuchusen8,0,0,0);
setEffScaleKey(spep8,shuchusen8,1.2,1.2);
setEffScaleKey(spep8+20,shuchusen8,1.2,1.2);
setEffAlphaKey(spep8,shuchusen8,255);
setEffAlphaKey(spep8+20,shuchusen8,255);
setEffAlphaKey(spep8+21,shuchusen8,0);
setEffRotateKey(spep8,shuchusen8,0);
setEffRotateKey(spep8+20,shuchusen8,0);

--流線
ryu8a = entryEffectLife(spep8, 920, 20, 0x80,  -1, 0,  0,  0);   -- 流線

setEffScaleKey(spep8, ryu8a, 1.6, 1.6);
setEffScaleKey(spep8+20, ryu8a, 1.6, 1.6);
setEffRotateKey(spep8, ryu8a, 230);
setEffRotateKey(spep8+20, ryu8a, 230);

--流線
ryu8b = entryEffectLife(spep8+21, 921, 59, 0x80,  -1, 0,  0,  0);   -- 流線

setEffScaleKey(spep8+21, ryu8b, 1.7, 1.7);
setEffScaleKey(spep8+80, ryu8b, 1.7, 1.7);
setEffRotateKey(spep8+21, ryu8b, 230);
setEffRotateKey(spep8+80, ryu8b, 230);

playSe( spep8+20, SE_07);

entryFade( spep8+74, 3, 6, 3, 255, 255, 255, 255);  -- 白

-------------------
--ギャン(60F)
-------------------
spep9=spep8+80;
entryFadeBg( spep9, 0, 60, 0, 0, 0, 0, 255);  -- 黒　背景

Exp0=entryEffect(spep9,190002,0x100,-1,0,0,0);

setEffMoveKey(spep9,Exp0,0,0,0);
setEffMoveKey(spep9+60,Exp0,0,0,0);
setEffScaleKey(spep9,Exp0,1.0,1.0);
setEffScaleKey(spep9+60,Exp0,1.0,1.0);
setEffAlphaKey(spep9,Exp0,255);
setEffAlphaKey(spep9+60,Exp0,255);
setEffAlphaKey(spep9+61,Exp0,0);
setEffRotateKey(spep9,Exp0,0);
setEffRotateKey(spep9+60,Exp0,0);
--setEffRotateKey(spep9+60,gyan,0);

setEffShake( spep9, Exp0, 60, 10);

-- ** 書き文字エントリー ** --
ctgyan = entryEffectLife( spep9, 10006, 60, 0x100, -1, 0, 0, 400); -- ギャン
setEffScaleKey( spep9, ctgyan, 3.0, 3.0);
setEffScaleKey( spep9+60, ctgyan, 4.0, 4.0);
setEffAlphaKey( spep9, ctgyan, 255);
setEffAlphaKey( spep9+60, ctgyan, 80);
setEffShake( spep9, ctgyan, 60, 10);

-- ** 音 ** --
playSe( spep9+8, SE_09);

------------------------------------------------------
-- ばくは(100F)　
------------------------------------------------------
spep10=spep9+60;

Exp=entryEffectLife(spep10,SP_08,180,0x80,-1,0,0,0);

entryFade( spep10-6, 3, 4, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep10, 0, 100, 0, 0, 0, 0, 255);  -- 黒　背景

setEffMoveKey(spep10,Exp,0,0,0);
setEffMoveKey(spep10+100,Exp,0,0,0);
setEffScaleKey(spep10,Exp,-1.1,1.1);
setEffScaleKey(spep10+100,Exp,-1.1,1.1);
setEffAlphaKey(spep10,Exp,255);
setEffAlphaKey(spep10+100,Exp,255);
setEffAlphaKey(spep10+101,Exp,0);
setEffRotateKey(spep10,Exp,0);
setEffRotateKey(spep10+100,Exp,0);

-- ** 集中線
shuchusen10 = entryEffectLife(spep10,906,100,0x100,-1,0,0,0);-- 集中線

setEffMoveKey(spep10,shuchusen10,0,0,0);
setEffMoveKey(spep10+100,shuchusen10,0,0,0);
setEffScaleKey(spep10,shuchusen10,1.3,1.3);
setEffScaleKey(spep10+100,shuchusen10,1.3,1.3);
setEffAlphaKey(spep10,shuchusen10,255);
setEffAlphaKey(spep10+100,shuchusen10,255);
setEffRotateKey(spep10,shuchusen10,0);
setEffRotateKey(spep10+100,shuchusen10,0);

playSe( spep10+4, SE_10);

------------------------------------------------------
-- hukann(100F)　
------------------------------------------------------
spep11=spep10+100;

entryFade( spep11-6, 3, 4, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

Exp2=entryEffect(spep11,SP_09x,0x100,-1,0,0,0);

setEffMoveKey(spep11,Exp2,0,0,0);
setEffMoveKey(spep11+100,Exp2,0,0,0);
setEffScaleKey(spep11,Exp2,1.1,1.1);
setEffScaleKey(spep11+100,Exp2,1.1,1.1);
setEffAlphaKey(spep11,Exp2,255);
setEffAlphaKey(spep11+100,Exp2,255);
setEffRotateKey(spep11,Exp2,0);
setEffRotateKey(spep11+100,Exp2,0);

playSe( spep11+4, SE_10);

------------------------------------------------------
--びっくり(120F)　
------------------------------------------------------
spep12=spep11+100;

entryFade( spep12-6, 3, 4, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

Exp3=entryEffect(spep12,SP_10x,0x80,-1,0,0,0);

setEffMoveKey(spep12,Exp3,0,0,0);
setEffMoveKey(spep12+130,Exp3,0,0,0);
setEffScaleKey(spep12,Exp3,1.0,1.0);
setEffScaleKey(spep12+130,Exp3,1.0,1.0);
setEffAlphaKey(spep12,Exp3,255);
setEffAlphaKey(spep12+130,Exp3,255);
setEffRotateKey(spep12,Exp,0);
setEffRotateKey(spep12+130,Exp3,0);

playSe( spep12+20, 24);

-- ダメージ表示
dealDamage(spep12+10);
entryFade( spep12+110, 9,  10, 1, 8, 8, 8, 255);-- black fade
endPhase( spep12+120);
end
