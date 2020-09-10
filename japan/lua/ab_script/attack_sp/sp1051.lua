--sp1051 アルティメット悟飯_爆裂ラッシュ(1006701)
--2018/7/3　極限Z覚醒

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SP_ATK_0 = 6;
SP_ATK_1 = SP_ATK_0+10;
SP_ATK_2 = SP_ATK_1+63;
SP_ATK_3 = SP_ATK_2+92;
SP_ATK_4 = SP_ATK_3+45;

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

tyo = -30;
tyo2 = -40;

SP_01 = 100021;
SP_02 = 100022;
SP_03 = 100223;--迫る
SP_04 = 1551;--地球上でエネルギー波
SP_05 = 109054;--敵が光弾を避ける時の瞬間移動エフェクト
SP_06 = 150096;--アルティメット孫悟飯正面向きのキャラ画像
SP_07 = 160000;--移動時の風切りオーラエフェクト
SP_08 = 160008;--正面アングル用の風切りオーラエフェクト

multi_frm = 2;

changeAnime( 0, 0, 0);                       -- 立ち
setDisp( 0, 1, 0);

------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
setDisp( 0, 0, 0);
entryFadeBg( 0, 0, 170, 0, 10, 10, 10, 180);       -- ベース暗め　背景

setVisibleUI(0, 0);
playSe( 0, 1018);

playSe( 30, 1035); --かめはめ波

ulgohann = entryEffectLife(  0,   SP_06, 170, 0x80,  -1,  0,  0,  0); --  悟飯の絵
setEffShake(0, ulgohann, 110, 7);
aura = entryEffectLife( 0, SP_08, 170, 0x100,  -1, 0,  0,  -50);   -- 正面アングル用の風切りオーラエフェクト

setEffScaleKey( 0, ulgohann, 0.1, 0.1);
setEffScaleKey( 20, ulgohann, 1.0, 1.0);

setEffScaleKey(  0,   aura, 0.6, 0.6);
setEffScaleKey(  20,   aura, 4.5, 4.5);

--setEffAlphaKey( 0, tornado2, 100);

-- ** エフェクト等 ** --
--aura = entryEffectLife(  30,   SP_07, 95, 0x40,  0,  1,  0,  -50); -- オーラ　311
--setEffScaleKey( 30, aura, 1.5, 1.5);

speff = entryEffect(  30,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン) 117で終了
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  30,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

setEffScaleKey( 116, ulgohann, 1.0, 1.0);
setEffScaleKey(  116,   aura, 4.5, 4.5);

setEffScaleKey( 120, ulgohann, 2.0, 2.0);
setEffScaleKey(  120,   aura, 9.0, 9.0);

entryFade( 120, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 揺れ等 ** --
--setShakeChara( 30, 0, 95, 7);
setShake( 30, 125, 15);

-- 書き文字エントリー
ct = entryEffectLife( 30, 10008, 95, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(30, ct, 95, 8);
setEffScaleKey(30, ct, 1.4, 1.4);

shuchusen5 = entryEffectLife( 0, 906, 95, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 0, shuchusen5, 1.0, 1.0);
setEffScaleKey( 60, shuchusen5, 1.0, 1.0);
setEffScaleKey( 125, shuchusen5, 1.0, 1.0);


spep_kyokugen = 127;
setScaleKey(  spep_kyokugen,  0,  1.6,  1.6);

------------------------------------------------------
-- カードカットイン(90F) きょくげんZ覚醒
------------------------------------------------------
setScaleKey( spep_kyokugen-1,   0, 1.5, 1.5);
setScaleKey( spep_kyokugen,   0, 1.0, 1.0);

--[[playSe( spep_kyokugen, SE_05);
speff = entryEffect(  spep_kyokugen,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え]]

entryFade( spep_kyokugen+85, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

removeAllEffect(spep_kyokugen-1);
--カード登場時前に全てのエフェクトを止める

if (_SPECIAL_SKILL_LEVEL_ == 0) then

print ("_SPECIAL_SKILL_LEVEL_ == 0");
playSe( spep_kyokugen, SE_05);
speff = entryEffect(  spep_kyokugen,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
print ("_SPECIAL_SKILL_LEVEL_ == 1");
playSe( spep_kyokugen, SE_05);
speff = entryEffect(  spep_kyokugen,   1120,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( spep_kyokugen, SE_05);
speff = entryEffect(  spep_kyokugen,   1121,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

end

-- ** エフェクト等 ** --
--entryFlash( (170+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);

entryFade( spep_kyokugen+85, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--playSe( spep_kyokugen+64, SE_06);

removeAllEffect(spep_kyokugen+87);

spep_6=spep_kyokugen+85+5; --211 260

------------------------------------------------------
-- 突進(60F) --217
------------------------------------------------------
setBgScroll(spep_6,100);

setScaleKey( spep_6, 0, 1.4, 1.4);
changeAnime( spep_6, 0, 3); 
changeAnime( spep_6, 1, 100); 
setDisp( spep_6, 1, 1);
setScaleKey( spep_6, 1, 1.0, 1.0);
setMoveKey(  spep_6,  1, 1700,  0,   0);
setRotateKey( spep_6,  1,  -5 );
setRotateKey( spep_6,  0,  -10 );
setDisp( spep_6, 0, 1);

--P移動

--setEnvZoomEnable(spep_6+50,1);

setScaleKey( spep_6, 0, 1.4, 1.4);
setScaleKey( spep_6+1, 0, 1.2, 1.2);


setMoveKey(  spep_6+1,  0, -1700,  0,   0);
setMoveKey(  spep_6+2,  0, -700,  0,   0);

setMoveKey(  spep_6+1,  1, 1700,  0,   0);
setMoveKey(  spep_6+2,  1, 550,  0,   0);

ryusen_1=entryEffectLife( spep_6, 920, 60, 0x80,  -1,  0,  0,  0); -- 流線 90-30
--setEffRotateKey(spep_6,ryusen_1,-10);
setEffScaleKey(  spep_6, ryusen_1, 1.3, 1.3);

shuchusen8 = entryEffectLife( spep_6, 906, 42, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_6, shuchusen8, 1.5, 1.5);

entryFadeBg( spep_6, 0, 340, 0, 10, 10, 10, 180);       -- ベース暗め　背景 406
--entryFadeBg( spep_6, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
--entryFadeBg( spep_6+20, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景


setShakeChara( spep_6, 0, 334, 15);
setShakeChara( spep_6, 1, 334, 15);
setShake(spep_6,334, 10);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 226; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

seid=playSe(spep_6, 1018);
stopSe(spep_6,seid,0);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(  SP_dodge+5,  0, -54,  0,   0);
setMoveKey(  SP_dodge+9,  0, -1100,  0,   0);
setBgScroll(SP_dodge+9,0);

endPhase(SP_dodge+10);
do return end
else end
----------------------------------------
playSe( spep_6, 1018);

aura1 = entryEffectLife(  spep_6,  SP_07, 125, 0x40+0x100,  0,  300,  0,  0); -- オーラ
setEffScaleKey( spep_6, aura1, 2.0, 2.0);
--setEffRotateKey( spep_6, aura1, 90);
setEffAlphaKey(spep_6, aura1, 255);
setEffRotateKey( spep_6, aura1, 85);

setMoveKey(  spep_6+12,  0, -100,  0,   0);

setMoveKey(  spep_6+12,  1, 70,  0,   0);

--右大パンチ

setEffAlphaKey(spep_6+6, aura1, 255);
setEffAlphaKey(spep_6+12, aura1, 0);

setEnvZoomEnable(spep_6+11,1);

spep_9=spep_6+11; --パンチの開始

changeAnime( spep_6+11,   0, 11 );--パンチ3
playSe( spep_6+12,1009);--SE

entryEffect(  spep_6+11,   3,   0,  1,   0,  -30,  0);
entryEffect(  spep_6+11,   908,   0,  1,   0,  -30,  0);

setDamage( spep_6+12, 1, 0);  -- ダメージ振動等
changeAnime( spep_6+12,   1, 108 ); --敵モーション

setMoveKey(  spep_6+12,  0, -160,  0,   0);
setMoveKey(  spep_6+22,  0, -120,  0,   0);

setMoveKey(  spep_6+12,  1, 0,  0,   0);
setMoveKey(  spep_6+22,  1, 30,  0,   0);


changeAnime( spep_9+10,   0, 9 );--パンチ1
playSe( spep_9+11,1000);--SE
entryEffect(  spep_9+10,   1,   0,  1,   0,  0,  0);
entryEffect(  spep_9+10,   908,   0,  1,   0,  0,  0);

setDamage( spep_9+11, 1, 0);  -- ダメージ振動等
changeAnime( spep_9+11,   1, 106 ); --敵モーション

setMoveKey(  spep_9+11,  0, -120,  0,   0);
setMoveKey(  spep_9+21,  0, -90,  0,   0);

setMoveKey(  spep_9+11,  1, 30,  0,   0);
setMoveKey(  spep_9+21,  1, 60,  10,   0);


changeAnime( spep_9+20,   0, 14);--キック3
playSe( spep_9+21,1025);--SE
entryEffect(  spep_9+20,   3,   0,  1,   0,  0,  0);
entryEffect(  spep_9+20,   908,   0,  1,   0,  0,  0);

setDamage( spep_9+21, 1, 0);  -- ダメージ振動等
changeAnime( spep_9+21,   1, 108 ); --敵モーション

setMoveKey(  spep_9+21,  0, -90,  0,   0);
setMoveKey(  spep_9+31,  0, -60,  0,   -20);

setMoveKey(  spep_9+21,  1, 60,  10,   0);
setMoveKey(  spep_9+31,  1, 560,  800,   60);
setDisp( spep_9+32, 1, 0);
setScaleKey( spep_9+21, 1,  1.0, 1.0);
setScaleKey( spep_9+31, 1,  0.2, 0.2);

setEnvZoomEnable(spep_9+21,0);-- -18

setBgScroll( spep_9+50, 40);

setRotateKey( spep_9+49 , 0 , -10);
changeAnime( spep_9+50,   0, 3); --ダッシュ
setRotateKey( spep_9+50 , 0 , -65);
setMoveKey(  spep_9+50,  0, -60,  0,   -20);
setMoveKey(  spep_9+55,  0, 560,  800,   60);
setDisp( spep_9+55, 0, 0);

setScaleKey( spep_9+50, 0,  1.2, 1.2);
setScaleKey( spep_9+55, 0,  0.6, 0.6);

aura1 = entryEffectLife(  spep_9+50,  SP_07, 125, 0x40+0x100,  0,  300,  0,  0); -- オーラ
setEffScaleKey( spep_9+50, aura1, 2.0, 2.0);
setEffRotateKey( spep_9, aura1, 10);
setEffAlphaKey(spep_9+50, aura1, 255);
setEffAlphaKey(spep_9+54, aura1, 0);
playSe( spep_9+50, 1035); --かめはめ波

--setEffRotateKey( spep_9+80, aura1, 85);


-- 書き文字エントリー
ct = entryEffectLife( spep_6+11, 10017, 52, 0, -1, 0, 0, 200); -- ドガガガッ
setEffShake(spep_6+11, ct, 32, 5);
setEffAlphaKey(spep_6+11, ct, 255);
setEffAlphaKey(spep_9+21, ct, 255);
setEffAlphaKey(spep_9+31, ct, 0);
setEffScaleKey(spep_6+9, ct, 0.0, 0.0);
setEffScaleKey(spep_6+15, ct, 1.8, 1.8);
setEffScaleKey(spep_9+21, ct, 1.8, 1.8);
setEffScaleKey(spep_9+31, ct, 6.0, 6.0);

--２回目の連撃

spep_10=spep_9+60; --２カット目の開始 90-30

setMoveKey(   spep_10,   1, -300, -1136, -60);
setDisp( spep_10+5, 1, 1);
setMoveKey(   spep_10+20,   1, 0, 0, 0);
setScaleKey( spep_10, 1,  0.4, 0.4);
setScaleKey( spep_10+10, 1,  0.8, 0.8);
setScaleKey( spep_10+20, 1,  1.0, 1.0);
setScaleKey( spep_10+10, 0,  1.4, 1.4);

setBgScroll( spep_10, 100);

setMoveKey(   spep_10,   0, -300, -1136, -60);
--setMoveKey(   spep_9+80,   1, -300, -1136, 0);
--setDisp( spep_10, 1, 0);
setRotateKey( spep_10+18 , 0 , -65);
--setEffAlphaKey(spep_10, aura1, 255);

setEffAlphaKey(spep_10+10, aura1, 0);
setEffAlphaKey(spep_10+11, aura1, 255);
setEffAlphaKey(spep_10+19, aura1, 0);

ryusen_1=entryEffectLife( spep_9+50, 920, 28, 0x80,  -1,  0,  0,  0); -- 流線 406 80-30
setEffRotateKey(spep_9,ryusen_1,-70);
setEffScaleKey(  spep_9, ryusen_1, 1.6, 1.6);

setMoveKey(  spep_10+20,  0, -170,  0,   0);
setRotateKey( spep_10+19 , 0 , 0);
setScaleKey( spep_10+19, 0,  1.2, 1.2);

setDisp( spep_10, 0, 1);

setEnvZoomEnable(spep_10+20,1);

setMoveKey(  spep_10+5,  1, 250,  600,   0);
changeAnime( spep_10+5,   1, 106 ); --敵モーション
setRotateKey( spep_10+5,  1,  0 );

setMoveKey(  spep_10+20,  1, 20,  100,   0);

changeAnime( spep_10+19,   0, 12);--キック1
playSe( spep_10+20,1001);--SE
entryEffect(  spep_10+19,  2,   0,  1,   0,  0,  0);
entryEffect(  spep_10+19,   908,   0,  1,   0,  0,  0);

setDamage( spep_10+20, 1, 0);  -- ダメージ振動等
changeAnime( spep_10+19,   1, 108 ); --敵モーション

setMoveKey(  spep_10+20,  0, -170,  0,   0);
setMoveKey(  spep_10+30,  0, -140,  0,   0);

setMoveKey(  spep_10+20,  1, 20,  10,   0);
setMoveKey(  spep_10+30,  1, 50,  20,   0);


changeAnime( spep_10+30,   0, 11 );--パンチ3
playSe( spep_10+31,1009);--SE
entryEffect(  spep_10+30,   3,   0,  1,   0,  0,  0);
entryEffect(  spep_10+30,   908,   0,  1,   0,  0,  0);

setDamage( spep_10+31, 1, 0);  -- ダメージ振動等
changeAnime( spep_10+31,   1, 108 ); --敵モーション

setMoveKey(  spep_10+30,  0, -140,  0,   0);
setMoveKey(  spep_10+40,  0, -110,  0,   0);

setMoveKey(  spep_10+30,  1, 50,  0,   0);
setMoveKey(  spep_10+40,  1, 80,  10,   0);

changeAnime( spep_10+40,   0, 14);--キック3
playSe( spep_10+41,1025);--SE
entryEffect(  spep_10+40,   3,   0,  1,   0,  0,  0);
entryEffect(  spep_10+40,   908,   0,  1,   0,  0,  0);

setDamage( spep_10+41, 1, 0);  -- ダメージ振動等
changeAnime( spep_10+41,   1, 108 ); --敵モーション

setMoveKey(  spep_10+41,  0, -110,  0,   0);
setMoveKey(  spep_10+61,  0, -80,  0,   0);

setMoveKey(  spep_10+41,  1, 80,  0,   0);
setMoveKey(  spep_10+61,  1, 1400,  0,   0);
setDisp( spep_10+62, 1, 0);

shuchusen8 = entryEffectLife( spep_10, 906, 52, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_10, shuchusen8, 1.5, 1.5);

-- 書き文字エントリー
ct = entryEffectLife( spep_10+19, 10017, 52, 0, -1, 0, 0, 200); -- ドガガガッ
setEffShake(spep_10+19, ct, 32, 5);
setEffAlphaKey(spep_10+19, ct, 255);
setEffAlphaKey(spep_10+29, ct, 255);
setEffAlphaKey(spep_10+41, ct, 0);
setEffScaleKey(spep_10+17, ct, 0.0, 0.0);
setEffScaleKey(spep_10+23, ct, 1.8, 1.8);
setEffScaleKey(spep_10+31, ct, 1.8, 1.8);
setEffScaleKey(spep_10+41, ct, 6.0, 6.0);

setEnvZoomEnable(spep_10+59,0);-- 18

setMoveKey(  spep_10+69,  0, -800,  0,   0);

setBgScroll( spep_10+67, 60);

setMoveKey(  spep_10+67,  1, -1200,  0,   0);
setDisp( spep_10+70, 1, 1);
setMoveKey(  spep_10+77,  1, 300,  0,   0);
setMoveKey(  spep_10+94,  1, 300,  0,   0);
setMoveKey(  spep_10+104,  1, -200,  0,   0);
setMoveKey(  spep_10+130,  1, 0,  0,   0);

setBgScroll( spep_10+90, 100);

setScaleKey( spep_10+90, 0,  1.2, 1.2);
setMoveKey(  spep_10+90,  0, -800,  200,   0);
changeAnime( spep_10+90,   0, 3 ); --ダッシュモーション
aura = entryEffectLife(  spep_10+90,   SP_07, 20, 0x40,  0,  1,  0,  30); -- オーラ
setEffScaleKey( spep_10+90, aura, 2.6, 2.6);
setShakeChara( spep_10+90, 0, 49, 5);
setEffRotateKey( spep_10+90, aura, 90);
setEffAlphaKey(spep_10+90, aura, 255);
setEffAlphaKey(spep_10+95, aura, 255);
setEffAlphaKey(spep_10+100, aura, 0);
playSe( spep_10+90, 1035); --かめはめ波

--setDisp( spep_10+100, 0, 0);
setMoveKey(  spep_10+100,  0, 180,  200,   0);
changeAnime( spep_10+100,   0, 101 ); --左向きのモーション

ryusen_1=entryEffectLife( spep_10+19, 920, 122, 0x80,  -1,  0,  0,  0); -- 流線 406
--setEffRotateKey(spep_6,ryusen_1,-10);
setEffScaleKey(  spep_10+19, ryusen_1, 1.6, 1.6);

setBgScroll( spep_10+114, 0);

setMoveKey(  spep_10+114,  0, 180,  200,   0);
changeAnime( spep_10+115,   0, 117 ); --左向きの構えモーション
aura = entryEffectLife(  spep_10+115,   SP_07, 20, 0x40,  0,  1,  0,  30); -- オーラ
setEffScaleKey( spep_10+115, aura, 2.6, 2.6);
setShakeChara( spep_10+115, 0, 49, 5);
setEffRotateKey( spep_10+115, aura, 180);
setEffAlphaKey(spep_10+115, aura, 255);
setEffAlphaKey(spep_10+130, aura, 255);
setEffAlphaKey(spep_10+135, aura, 0);
playSe( spep_10+115, 1035); --かめはめ波
setMoveKey(  spep_10+115,  0, 180,  250,   0);
setMoveKey(  spep_10+135,  0, 180,  200,   0);

shuchusen8 = entryEffectLife( spep_10+115, 906, 21, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_10+115, shuchusen8, 1.5, 1.5);

setEnvZoomEnable(spep_10+130,1);

changeAnime( spep_10+135,   0, 115 ); --左向きの叩きつけモーション

playSe( spep_10+138,1025);--SE
entryEffect(  spep_10+138,   3,   0,  1,   0,  0,  0);
entryEffect(  spep_10+138,   908,   0,  1,   0,  0,  0);

setDamage( spep_10+139, 1, 0);  -- ダメージ振動等
changeAnime( spep_10+139,   1, 106 ); --敵モーション
setBgScroll( spep_10+139, 50);

setEnvZoomEnable(spep_10+142,0);

setMoveKey(  spep_10+138,  1, 0,  0,   0);
--setMoveKey(  spep_10+138,  0, 100,  100,   0);
setMoveKey(  spep_10+138,  0, 180,  210,   0);
setMoveKey(  spep_10+148,  0, 600,  700,   40);
setMoveKey(  spep_10+158,  1, -300,  -1136,   -60);
setDisp( spep_10+158, 1, 0);
setDisp( spep_10+158, 0, 0);
setScaleKey( spep_10+138, 1,  1.0, 1.0);
setScaleKey( spep_10+158, 1,  2.0, 2.0);

spep_11=spep_10+168; --３カット目の開始

setMoveKey(  spep_11,  1, 300,  1136,   40);
setDisp( spep_11, 1, 1);


setMoveKey(  spep_11+30,  1, 100,  0,   0);
setMoveKey(  spep_11+30,  0, -150,  0,   0);
changeAnime( spep_11+30,   0, 1 ); --キック３

setScaleKey( spep_11, 1,  0.4, 0.4);
setScaleKey( spep_11+30, 1,  1.0, 1.0);

ryusen_1=entryEffectLife( spep_10+138, 920, 70, 0x80,  -1,  0,  0,  0); -- 流線 406
setEffRotateKey(spep_10+135,ryusen_1,-70);
setEffScaleKey(  spep_10+135, ryusen_1, 1.6, 1.6);

syunkan1=entryEffect( spep_11+40, SP_05, 0x40+0x100,  0, 300,  0, 0); --瞬間移動
setDisp( spep_11+45, 0, 1);
changeAnime( spep_11+48,   0, 17 ); --気溜め

setMoveKey(  spep_11+47,  0, -150,  0,   0);
aura = entryEffectLife(  spep_11+48,   SP_07, 28, 0x40,  0,  1,  0,  30); -- オーラ
setEffScaleKey( spep_11+48, aura, 2.6, 2.6);
setShakeChara( spep_11+48, 0, 49, 5);
setEffRotateKey( spep_11+48, aura, 180);
setEffAlphaKey(spep_11+48, aura, 255);
setEffAlphaKey(spep_11+48+22, aura, 255);
setEffAlphaKey(spep_11+48+28, aura, 0);
playSe( spep_11+48, 1035); --かめはめ波
setMoveKey(  spep_11+48,  0, -150,  50,   0);

changeAnime( spep_11+48+27,   0, 14 ); --キック３

shuchusen8 = entryEffectLife( spep_11+48, 906, 27, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_11+48, shuchusen8, 1.5, 1.5);

setEnvZoomEnable(spep_11+42+27,1);

playSe( spep_11+48+27,1025);--SE
entryEffect(  spep_11+48+27,   3,   0,  1,   0,  0,  0);
entryEffect(  spep_11+48+27,   908,   0,  1,   0,  0,  0);

setDamage( spep_11+49+27, 1, 0);  -- ダメージ振動等
changeAnime( spep_11+49+27,   1, 108 ); --敵モーション
setMoveKey(  spep_11+46+27,  0, -150,  10,   0);

--setDisp( spep_6+160, 1, 0);
setMoveKey(  spep_11+47+27,  1, 100,  0,   0);

setMoveKey(  spep_11+48+27,  0, -150,  10,   0);
setMoveKey(  spep_11+48+27,  0, -54,  0,   0);
setMoveKey(  spep_11+68+27,  1, 1000,  0,   0);
setDisp( spep_11+68+27, 1, 0);

setEnvZoomEnable(spep_11+52+27,0);


ryusen_1=entryEffectLife( spep_11+40, 920, 154, 0x80,  -1,  0,  0,  0); -- 流線 406
--setEffRotateKey(spep_6,ryusen_1,-70);
setEffScaleKey(  spep_6, ryusen_1, 1.3, 1.3);

-- ** エフェクト等 ** --

--ここのエフェクトはカット数に合わせて調整

spep_7=spep_11+68+5+27; --211 260

setBgScroll( spep_7, 0);

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------


changeAnime( spep_7, 0, 30);                       -- 溜め!
setDisp( spep_7, 0, 1);

playSe( spep_7+4, SE_03);

playSe( spep_7+11, SE_04);
--setEnvZoomEnable(spep_7+10,1);

kame_hand = entryEffect( spep_7+10, SP_01, 0x40,  0,  300,  0,  0);   -- 手のカメハメ波部
setEffScaleKey( spep_7+10, kame_hand, 0.3, 0.3);

setEffScaleKey( spep_7+40, kame_hand, 1.0, 1.0);

-- ** エフェクト等 ** --
aura = entryEffectLife(  spep_7+10,   SP_07, 107, 0x40,  0,  1,  0,  90); -- オーラ311
setEffScaleKey( spep_7+10, aura, 2.6, 2.6);
setShakeChara( spep_7+10, 0, 49, 5);
setEffRotateKey( spep_7+10, aura, 180);


shuchusen8 = entryEffectLife( spep_7, 906, 76, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_7+50, shuchusen8, 1.5, 1.5);

-- 書き文字エントリー
ct = entryEffectLife( spep_7+10, 10008, 100, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(spep_7+10, ct, 100, 8);
setEffScaleKey(spep_7+10, ct, 1.4, 1.4);

entryFade( spep_7+70, 5,  8, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(  spep_7+70,  0, 0,  0,   0);

setMoveKey(  spep_7+70,  1, 360,  800,   0);

setScaleKey( spep_7+75, 0, 1.7, 1.7);

removeAllEffect(spep_7+77);

entryFadeBg( spep_7, 0, 82, 0, 10, 10, 10, 180);       -- ベース暗め　背景


spep_8=spep_7+82; --260

------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
changeAnime( spep_8, 0, 31);                                    -- かめはめ発射ポーズ
setRotateKey( spep_8-1,  1,  0);

setMoveKey(  spep_8-1,    0,      0,  0,   0);
setMoveKey(  spep_8,    0,   -600,  0,   0);
setMoveKey(  spep_8+1,    0,   -600,  0,   0);
setMoveKey(  spep_8+10,    0,   -100,  0,   0);

kamehame_beam = entryEffectLife( spep_8, SP_02, 109, 0x40,  0,  300,  0,  0);   -- 伸びるかめはめ波

playSe( spep_8, SE_07);

-- 途中からカメハメハが伸びる
setMoveKey(  spep_8+39,    0,   -100,  0,   0);
setMoveKey(  spep_8+40,    0,   -100,  0,   0);
setMoveKey(  spep_8+48,    0,   -1100,  0,   0);

entryFade( spep_8+105, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
entryFadeBg( spep_8, 0, 109, 0, 10, 10, 10, 180);       -- ベース暗め　背景
entryFadeBg( spep_8, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
entryFadeBg( spep_8+40, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景

entryEffectLife( spep_8, 920, 109, 0x80,  -1,  0,  0,  0); -- 流線

setShakeChara( spep_8, 0, 54, 30);

shuchusen = entryEffectLife( spep_8, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_8, shuchusen, 1.0, 1.0);
setEffScaleKey( spep_8+40, shuchusen, 1.0, 1.0);
setEffScaleKey( spep_8+49, shuchusen, 2.0, 2.0);


-- 書き文字エントリー
ct = entryEffectLife( spep_8+8, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(spep_8+8, ct, 32, 5);
setEffAlphaKey(spep_8+8, ct, 255);
setEffAlphaKey(spep_8+30, ct, 255);
setEffAlphaKey(spep_8+40, ct, 0);
setEffScaleKey(spep_8+8, ct, 0.0, 0.0);
setEffScaleKey(spep_8+12, ct, 1.3, 1.3);
setEffScaleKey(spep_8+32, ct, 1.3, 1.3);
setEffScaleKey(spep_8+40, ct, 6.0, 6.0);
playSe( spep_8+40, SE_07);


spep_5 = spep_8+111;

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------

setDisp( spep_5, 0, 0);
setDisp( spep_5, 1, 1);
changeAnime( spep_5-5, 1, 118);                        -- 気ダメ後ろ
setMoveKey(  spep_5-5,    1,   120,  0,   0);
setMoveKey(  spep_5-5,    1,  400,  -400,   0);
setMoveKey(  spep_5,    1,  400,  -400,   0);
setScaleKey(  spep_5-5,   1,   1.6,  1.6);
--setScaleKey( spep_5-5,    1,  1, 1);

setMoveKey(  spep_5+30,    1,   120,  -270,   0);
setScaleKey(  spep_5+38,   1,   1.6,  1.6);

playSe( spep_5+20, SE_06);
entryFade( spep_5+32, 5,  5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setDisp( spep_5+38, 1, 0);

ryusen = entryEffectLife( spep_5-1, 921, 50, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey(spep_5-1, ryusen, 190);
setEffScaleKey( spep_5-1, ryusen, 1.4, 1.4);

kamehame_beam2 = entryEffect( spep_5, SP_03,   0x80, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey(spep_5, kamehame_beam2, 1, 1);
setEffScaleKey(spep_5+72, kamehame_beam2, 1, 1);
--setEffScaleKey(454, kamehame_beam2, 2.5, 2.5);
setDamage( spep_5+72, 1, 0);  -- ダメージ振動等

playSe( spep_5+85, SE_09);
-- ** エフェクト等 ** --
setShakeChara( spep_5, 1, 99, 20);

entryFadeBg( spep_5-1, 0, 100, 0,0, 0, 0, 255);          -- ベース暗め　背景

-- 書き文字エントリー
ct = entryEffectLife( spep_5, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(spep_5, ct, 99, 20);
setEffScaleKey( spep_5, ct, 2.4, 2.4);
setEffRotateKey(spep_5, ct, 70);
setEffAlphaKey(spep_5, ct, 255);
setEffAlphaKey(spep_5+25, ct, 255);
setEffAlphaKey(spep_5+35, ct, 0);

ct = entryEffectLife( spep_5+60, 10006, 30, 0x80, -1, 0, 0, 255); -- ギャン
setEffShake(spep_5+60, ct, 99, 20);
setEffScaleKey( spep_5+60, ct, 0.1, 0.1);
setEffScaleKey( spep_5+65, ct, 2.4, 2.4);
setEffScaleKey( spep_5+90, ct, 2.8, 2.8);
setEffAlphaKey(spep_5+60, ct, 255);
setEffAlphaKey(spep_5+75, ct, 255);
setEffAlphaKey(spep_5+90, ct, 0);

entryFade( spep_5+82, 6,  17, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

bakuhatu=entryEffect( spep_5+99, SP_04, 0,  -1,  0,  0,  0);   -- 宇宙からの俯瞰視点で地球が光弾で爆発する演出（青）
setEffScaleKey( spep_5+99, bakuhatu, 1.1, 1.1);

playSe( spep_5+108, SE_10);

setDamage( spep_5+116, 1, 0);  -- ダメージ振動等

--playSe( spep_5+103, SE_11);
shuchusen = entryEffectLife( spep_5+103, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線

--entryEffect( 473, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(spep_5+116 -10);

--entryFade( spep_5+200, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_5+210 -10);


else

------------------------------------------------------
-- 敵側
------------------------------------------------------
setDisp( 0, 0, 0);
entryFadeBg( 0, 0, 170, 0, 10, 10, 10, 180);       -- ベース暗め　背景

setVisibleUI(0, 0);
playSe( 0, 1018);

playSe( 30, 1035); --かめはめ波

ulgohann = entryEffectLife(  0,   SP_06, 170, 0x80,  -1,  0,  0,  0); --  悟飯の絵
setEffShake(0, ulgohann, 110, 7);
aura = entryEffectLife( 0, SP_08, 170, 0x100,  -1, 0,  0,  -50);   -- 正面アングル用の風切りオーラエフェクト

setEffScaleKey( 0, ulgohann, -0.1, 0.1);
setEffScaleKey( 20, ulgohann, -1.0, 1.0);

setEffScaleKey(  0,   aura, 0.6, 0.6);
setEffScaleKey(  20,   aura, 4.5, 4.5);

--setEffAlphaKey( 0, tornado2, 100);

-- ** エフェクト等 ** --
--aura = entryEffectLife(  30,   SP_07, 95, 0x40,  0,  1,  0,  -50); -- オーラ　311
--setEffScaleKey( 30, aura, 1.5, 1.5);

--[[
speff = entryEffect(  30,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン) 117で終了
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  30,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
--]]

setEffScaleKey( 116, ulgohann, -1.0, 1.0);
setEffScaleKey(  116,   aura, 4.5, 4.5);

setEffScaleKey( 120, ulgohann, -2.0, 2.0);
setEffScaleKey(  120,   aura, 9.0, 9.0);

entryFade( 120, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 揺れ等 ** --
--setShakeChara( 30, 0, 95, 7);
setShake( 30, 125, 15);

-- 書き文字エントリー
ct = entryEffectLife( 30, 10008, 95, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(30, ct, 95, 8);
setEffScaleKey(30, ct, 1.4, 1.4);

shuchusen5 = entryEffectLife( 0, 906, 95, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 0, shuchusen5, 1.0, 1.0);
setEffScaleKey( 60, shuchusen5, 1.0, 1.0);
setEffScaleKey( 125, shuchusen5, 1.0, 1.0);


spep_kyokugen = 127;
setScaleKey(  spep_kyokugen,  0,  1.6,  1.6);

------------------------------------------------------
-- カードカットイン(90F) きょくげんZ覚醒
------------------------------------------------------
setScaleKey( spep_kyokugen-1,   0, 1.5, 1.5);
setScaleKey( spep_kyokugen,   0, 1.0, 1.0);

--[[playSe( spep_kyokugen, SE_05);
speff = entryEffect(  spep_kyokugen,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え]]

entryFade( spep_kyokugen+85, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

removeAllEffect(spep_kyokugen-1);
--カード登場時前に全てのエフェクトを止める

if (_SPECIAL_SKILL_LEVEL_ == 0) then

print ("_SPECIAL_SKILL_LEVEL_ == 0");
playSe( spep_kyokugen, SE_05);
speff = entryEffect(  spep_kyokugen,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
print ("_SPECIAL_SKILL_LEVEL_ == 1");
playSe( spep_kyokugen, SE_05);
speff = entryEffect(  spep_kyokugen,   1120,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( spep_kyokugen, SE_05);
speff = entryEffect(  spep_kyokugen,   1121,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

end

-- ** エフェクト等 ** --
--entryFlash( (170+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);

entryFade( spep_kyokugen+85, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--playSe( spep_kyokugen+64, SE_06);

removeAllEffect(spep_kyokugen+87);

spep_6=spep_kyokugen+85+5; --211 260

------------------------------------------------------
-- 突進(60F)
------------------------------------------------------
setBgScroll(spep_6,100);

setScaleKey( spep_6, 0, 1.4, 1.4);
changeAnime( spep_6, 0, 3); 
changeAnime( spep_6, 1, 100); 
setDisp( spep_6, 1, 1);
setScaleKey( spep_6, 1, 1.0, 1.0);
setMoveKey(  spep_6,  1, 1700,  0,   0);
setRotateKey( spep_6,  1,  -5 );
setRotateKey( spep_6,  0,  -10 );
setDisp( spep_6, 0, 1);

--P移動

--setEnvZoomEnable(spep_6+50,1);

setScaleKey( spep_6, 0, 1.4, 1.4);
setScaleKey( spep_6+1, 0, 1.2, 1.2);


setMoveKey(  spep_6+1,  0, -1700,  0,   0);
setMoveKey(  spep_6+2,  0, -700,  0,   0);

setMoveKey(  spep_6+1,  1, 1700,  0,   0);
setMoveKey(  spep_6+2,  1, 550,  0,   0);

ryusen_1=entryEffectLife( spep_6, 920, 60, 0x80,  -1,  0,  0,  0); -- 流線 90-30
--setEffRotateKey(spep_6,ryusen_1,-10);
setEffScaleKey(  spep_6, ryusen_1, 1.3, 1.3);

shuchusen8 = entryEffectLife( spep_6, 906, 42, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_6, shuchusen8, 1.5, 1.5);

-- ** エフェクト等 ** --
entryFadeBg( spep_6, 0, 340, 0, 10, 10, 10, 180);       -- ベース暗め　背景 406
--entryFadeBg( spep_6, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
--entryFadeBg( spep_6+20, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景


setShakeChara( spep_6, 0, 334, 15);
setShakeChara( spep_6, 1, 334, 15);
setShake(spep_6,334, 10);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 226; --エンドフェイズのフレーム数を置き換える

seid=playSe(spep_6, 1018);
stopSe(spep_6,seid,0);

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, -1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(  SP_dodge+5,  0, -54,  0,   0);
setMoveKey(  SP_dodge+9,  0, -1100,  0,   0);
setBgScroll(SP_dodge+9,0);

endPhase(SP_dodge+10);
do return end
else end
-----------------------------------------
playSe(spep_6, 1018);

aura1 = entryEffectLife(  spep_6,  SP_07, 125, 0x40+0x100,  0,  300,  0,  0); -- オーラ
setEffScaleKey( spep_6, aura1, 2.0, 2.0);
--setEffRotateKey( spep_6, aura1, 90);
setEffAlphaKey(spep_6, aura1, 255);
setEffRotateKey( spep_6, aura1, 85);

setMoveKey(  spep_6+12,  0, -100,  0,   0);

setMoveKey(  spep_6+12,  1, 70,  0,   0);

--右大パンチ

setEffAlphaKey(spep_6+6, aura1, 255);
setEffAlphaKey(spep_6+12, aura1, 0);

setEnvZoomEnable(spep_6+11,1);

spep_9=spep_6+11; --パンチの開始

changeAnime( spep_6+11,   0, 11 );--パンチ3
playSe( spep_6+12,1009);--SE
entryEffect(  spep_6+11,   3,   0,  1,   0,  -30,  0);
entryEffect(  spep_6+11,   908,   0,  1,   0,  -30,  0);

setDamage( spep_6+12, 1, 0);  -- ダメージ振動等
changeAnime( spep_6+12,   1, 108 ); --敵モーション

setMoveKey(  spep_6+12,  0, -160,  0,   0);
setMoveKey(  spep_6+22,  0, -120,  0,   0);

setMoveKey(  spep_6+12,  1, 0,  0,   0);
setMoveKey(  spep_6+22,  1, 30,  0,   0);


changeAnime( spep_9+10,   0, 9 );--パンチ1
playSe( spep_9+11,1000);--SE
entryEffect(  spep_9+10,   1,   0,  1,   0,  0,  0);
entryEffect(  spep_9+10,   908,   0,  1,   0,  0,  0);

setDamage( spep_9+11, 1, 0);  -- ダメージ振動等
changeAnime( spep_9+11,   1, 106 ); --敵モーション

setMoveKey(  spep_9+11,  0, -120,  0,   0);
setMoveKey(  spep_9+21,  0, -90,  0,   0);

setMoveKey(  spep_9+11,  1, 30,  0,   0);
setMoveKey(  spep_9+21,  1, 60,  10,   0);


changeAnime( spep_9+20,   0, 14);--キック3
playSe( spep_9+21,1025);--SE
entryEffect(  spep_9+20,   3,   0,  1,   0,  0,  0);
entryEffect(  spep_9+20,   908,   0,  1,   0,  0,  0);

setDamage( spep_9+21, 1, 0);  -- ダメージ振動等
changeAnime( spep_9+21,   1, 108 ); --敵モーション

setMoveKey(  spep_9+21,  0, -90,  0,   0);
setMoveKey(  spep_9+31,  0, -60,  0,   -20);

setMoveKey(  spep_9+21,  1, 60,  10,   0);
setMoveKey(  spep_9+31,  1, 560,  800,   60);
setDisp( spep_9+32, 1, 0);
setScaleKey( spep_9+21, 1,  1.0, 1.0);
setScaleKey( spep_9+31, 1,  0.2, 0.2);

setEnvZoomEnable(spep_9+21,0);-- -18

setBgScroll( spep_9+50, 40);

setRotateKey( spep_9+49 , 0 , -10);
changeAnime( spep_9+50,   0, 3); --ダッシュ
setRotateKey( spep_9+50 , 0 , -65);
setMoveKey(  spep_9+50,  0, -60,  0,   -20);
setMoveKey(  spep_9+55,  0, 560,  800,   60);
setDisp( spep_9+55, 0, 0);

setScaleKey( spep_9+50, 0,  1.2, 1.2);
setScaleKey( spep_9+55, 0,  0.6, 0.6);

aura1 = entryEffectLife(  spep_9+50,  SP_07, 125, 0x40+0x100,  0,  300,  0,  0); -- オーラ
setEffScaleKey( spep_9+50, aura1, 2.0, 2.0);
setEffRotateKey( spep_9, aura1, 10);
setEffAlphaKey(spep_9+50, aura1, 255);
setEffAlphaKey(spep_9+54, aura1, 0);
playSe( spep_9+50, 1035); --かめはめ波

--setEffRotateKey( spep_9+80, aura1, 85);


-- 書き文字エントリー
ct = entryEffectLife( spep_6+11, 10017, 52, 0, -1, 0, 0, 200); -- ドガガガッ
setEffShake(spep_6+11, ct, 32, 5);
setEffAlphaKey(spep_6+11, ct, 255);
setEffAlphaKey(spep_9+21, ct, 255);
setEffAlphaKey(spep_9+31, ct, 0);
setEffScaleKey(spep_6+9, ct, 0.0, 0.0);
setEffScaleKey(spep_6+15, ct, 1.8, 1.8);
setEffScaleKey(spep_9+21, ct, 1.8, 1.8);
setEffScaleKey(spep_9+31, ct, 6.0, 6.0);

--２回目の連撃

spep_10=spep_9+60; --２カット目の開始 90-30

setMoveKey(   spep_10,   1, -300, -1136, -60);
setDisp( spep_10+5, 1, 1);
setMoveKey(   spep_10+20,   1, 0, 0, 0);
setScaleKey( spep_10, 1,  0.4, 0.4);
setScaleKey( spep_10+10, 1,  0.8, 0.8);
setScaleKey( spep_10+20, 1,  1.0, 1.0);
setScaleKey( spep_10+10, 0,  1.4, 1.4);

setBgScroll( spep_10, 100);

setMoveKey(   spep_10,   0, -300, -1136, -60);
--setMoveKey(   spep_9+80,   1, -300, -1136, 0);
--setDisp( spep_10, 1, 0);
setRotateKey( spep_10+18 , 0 , -65);
--setEffAlphaKey(spep_10, aura1, 255);

setEffAlphaKey(spep_10+10, aura1, 0);
setEffAlphaKey(spep_10+11, aura1, 255);
setEffAlphaKey(spep_10+19, aura1, 0);

ryusen_1=entryEffectLife( spep_9+50, 920, 28, 0x80,  -1,  0,  0,  0); -- 流線 406 80-30
setEffRotateKey(spep_9,ryusen_1,-70);
setEffScaleKey(  spep_9, ryusen_1, 1.6, 1.6);

setMoveKey(  spep_10+20,  0, -170,  0,   0);
setRotateKey( spep_10+19 , 0 , 0);
setScaleKey( spep_10+19, 0,  1.2, 1.2);

setDisp( spep_10, 0, 1);

setEnvZoomEnable(spep_10+20,1);

setMoveKey(  spep_10+5,  1, 250,  600,   0);
changeAnime( spep_10+5,   1, 106 ); --敵モーション
setRotateKey( spep_10+5,  1,  0 );

setMoveKey(  spep_10+20,  1, 20,  100,   0);

changeAnime( spep_10+19,   0, 12);--キック1
playSe( spep_10+20,1001);--SE
entryEffect(  spep_10+19,  2,   0,  1,   0,  0,  0);
entryEffect(  spep_10+19,   908,   0,  1,   0,  0,  0);

setDamage( spep_10+20, 1, 0);  -- ダメージ振動等
changeAnime( spep_10+19,   1, 108 ); --敵モーション

setMoveKey(  spep_10+20,  0, -170,  0,   0);
setMoveKey(  spep_10+30,  0, -140,  0,   0);

setMoveKey(  spep_10+20,  1, 20,  10,   0);
setMoveKey(  spep_10+30,  1, 50,  20,   0);


changeAnime( spep_10+30,   0, 11 );--パンチ3
playSe( spep_10+31,1009);--SE
entryEffect(  spep_10+30,   3,   0,  1,   0,  0,  0);
entryEffect(  spep_10+30,   908,   0,  1,   0,  0,  0);

setDamage( spep_10+31, 1, 0);  -- ダメージ振動等
changeAnime( spep_10+31,   1, 108 ); --敵モーション

setMoveKey(  spep_10+30,  0, -140,  0,   0);
setMoveKey(  spep_10+40,  0, -110,  0,   0);

setMoveKey(  spep_10+30,  1, 50,  0,   0);
setMoveKey(  spep_10+40,  1, 80,  10,   0);

changeAnime( spep_10+40,   0, 14);--キック3
playSe( spep_10+41,1025);--SE
entryEffect(  spep_10+40,   3,   0,  1,   0,  0,  0);
entryEffect(  spep_10+40,   908,   0,  1,   0,  0,  0);

setDamage( spep_10+41, 1, 0);  -- ダメージ振動等
changeAnime( spep_10+41,   1, 108 ); --敵モーション

setMoveKey(  spep_10+41,  0, -110,  0,   0);
setMoveKey(  spep_10+61,  0, -80,  0,   0);

setMoveKey(  spep_10+41,  1, 80,  0,   0);
setMoveKey(  spep_10+61,  1, 1400,  0,   0);
setDisp( spep_10+62, 1, 0);

shuchusen8 = entryEffectLife( spep_10, 906, 52, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_10, shuchusen8, 1.5, 1.5);

-- 書き文字エントリー
ct = entryEffectLife( spep_10+19, 10017, 52, 0, -1, 0, 0, 200); -- ドガガガッ
setEffShake(spep_10+19, ct, 32, 5);
setEffAlphaKey(spep_10+19, ct, 255);
setEffAlphaKey(spep_10+29, ct, 255);
setEffAlphaKey(spep_10+41, ct, 0);
setEffScaleKey(spep_10+17, ct, 0.0, 0.0);
setEffScaleKey(spep_10+23, ct, 1.8, 1.8);
setEffScaleKey(spep_10+31, ct, 1.8, 1.8);
setEffScaleKey(spep_10+41, ct, 6.0, 6.0);

setEnvZoomEnable(spep_10+59,0);-- 18

setMoveKey(  spep_10+69,  0, -800,  0,   0);

setBgScroll( spep_10+67, 60);

setMoveKey(  spep_10+67,  1, -1200,  0,   0);
setDisp( spep_10+70, 1, 1);
setMoveKey(  spep_10+77,  1, 300,  0,   0);
setMoveKey(  spep_10+94,  1, 300,  0,   0);
setMoveKey(  spep_10+104,  1, -200,  0,   0);
setMoveKey(  spep_10+130,  1, 0,  0,   0);

setBgScroll( spep_10+90, 100);

setScaleKey( spep_10+90, 0,  1.2, 1.2);
setMoveKey(  spep_10+90,  0, -800,  200,   0);
changeAnime( spep_10+90,   0, 3 ); --ダッシュモーション
aura = entryEffectLife(  spep_10+90,   SP_07, 20, 0x40,  0,  1,  0,  30); -- オーラ
setEffScaleKey( spep_10+90, aura, 2.6, 2.6);
setShakeChara( spep_10+90, 0, 49, 5);
setEffRotateKey( spep_10+90, aura, 90);
setEffAlphaKey(spep_10+90, aura, 255);
setEffAlphaKey(spep_10+95, aura, 255);
setEffAlphaKey(spep_10+100, aura, 0);
playSe( spep_10+90, 1035); --かめはめ波

--setDisp( spep_10+100, 0, 0);
setMoveKey(  spep_10+100,  0, 180,  200,   0);
changeAnime( spep_10+100,   0, 101 ); --左向きのモーション

ryusen_1=entryEffectLife( spep_10+19, 920, 122, 0x80,  -1,  0,  0,  0); -- 流線 406
--setEffRotateKey(spep_6,ryusen_1,-10);
setEffScaleKey(  spep_10+19, ryusen_1, 1.6, 1.6);

setBgScroll( spep_10+114, 0);

setMoveKey(  spep_10+114,  0, 180,  200,   0);
changeAnime( spep_10+115,   0, 117 ); --左向きの構えモーション
aura = entryEffectLife(  spep_10+115,   SP_07, 20, 0x40,  0,  1,  0,  30); -- オーラ
setEffScaleKey( spep_10+115, aura, 2.6, 2.6);
setShakeChara( spep_10+115, 0, 49, 5);
setEffRotateKey( spep_10+115, aura, 180);
setEffAlphaKey(spep_10+115, aura, 255);
setEffAlphaKey(spep_10+130, aura, 255);
setEffAlphaKey(spep_10+135, aura, 0);
playSe( spep_10+115, 1035); --かめはめ波
setMoveKey(  spep_10+115,  0, 180,  250,   0);
setMoveKey(  spep_10+135,  0, 180,  200,   0);

shuchusen8 = entryEffectLife( spep_10+115, 906, 21, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_10+115, shuchusen8, 1.5, 1.5);

setEnvZoomEnable(spep_10+130,1);

changeAnime( spep_10+135,   0, 115 ); --左向きの叩きつけモーション

playSe( spep_10+138,1025);--SE
entryEffect(  spep_10+138,   3,   0,  1,   0,  0,  0);
entryEffect(  spep_10+138,   908,   0,  1,   0,  0,  0);

setDamage( spep_10+139, 1, 0);  -- ダメージ振動等
changeAnime( spep_10+139,   1, 106 ); --敵モーション

setBgScroll( spep_10+139, 50);

setEnvZoomEnable(spep_10+142,0);

setMoveKey(  spep_10+138,  1, 0,  0,   0);
--setMoveKey(  spep_10+138,  0, 100,  100,   0);
setMoveKey(  spep_10+138,  0, 180,  210,   0);
setMoveKey(  spep_10+148,  0, 600,  700,   40);
setMoveKey(  spep_10+158,  1, -300,  -1136,   -60);
setDisp( spep_10+158, 1, 0);
setDisp( spep_10+158, 0, 0);
setScaleKey( spep_10+138, 1,  1.0, 1.0);
setScaleKey( spep_10+158, 1,  2.0, 2.0);

spep_11=spep_10+168; --３カット目の開始

setMoveKey(  spep_11,  1, 300,  1136,   40);
setDisp( spep_11, 1, 1);


setMoveKey(  spep_11+30,  1, 100,  0,   0);
setMoveKey(  spep_11+30,  0, -150,  0,   0);
changeAnime( spep_11+30,   0, 1 ); --キック３

setScaleKey( spep_11, 1,  0.4, 0.4);
setScaleKey( spep_11+30, 1,  1.0, 1.0);

ryusen_1=entryEffectLife( spep_10+138, 920, 70, 0x80,  -1,  0,  0,  0); -- 流線 406
setEffRotateKey(spep_10+135,ryusen_1,-70);
setEffScaleKey(  spep_10+135, ryusen_1, 1.6, 1.6);

syunkan1=entryEffect( spep_11+40, SP_05, 0x40+0x100,  0, 300,  0, 0); --瞬間移動
setDisp( spep_11+45, 0, 1);
changeAnime( spep_11+48,   0, 17 ); --気溜め

setMoveKey(  spep_11+47,  0, -150,  0,   0);
aura = entryEffectLife(  spep_11+48,   SP_07, 28, 0x40,  0,  1,  0,  30); -- オーラ
setEffScaleKey( spep_11+48, aura, 2.6, 2.6);
setShakeChara( spep_11+48, 0, 49, 5);
setEffRotateKey( spep_11+48, aura, 180);
setEffAlphaKey(spep_11+48, aura, 255);
setEffAlphaKey(spep_11+48+22, aura, 255);
setEffAlphaKey(spep_11+48+28, aura, 0);
playSe( spep_11+48, 1035); --かめはめ波
setMoveKey(  spep_11+48,  0, -150,  50,   0);

changeAnime( spep_11+48+27,   0, 14 ); --キック３

shuchusen8 = entryEffectLife( spep_11+48, 906, 27, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_11+48, shuchusen8, 1.5, 1.5);

setEnvZoomEnable(spep_11+42+27,1);

playSe( spep_11+48+27,1025);--SE
entryEffect(  spep_11+48+27,   3,   0,  1,   0,  0,  0);
entryEffect(  spep_11+48+27,   908,   0,  1,   0,  0,  0);

setDamage( spep_11+49+27, 1, 0);  -- ダメージ振動等
changeAnime( spep_11+49+27,   1, 108 ); --敵モーション
setMoveKey(  spep_11+46+27,  0, -150,  10,   0);

--setDisp( spep_6+160, 1, 0);
setMoveKey(  spep_11+47+27,  1, 100,  0,   0);

setMoveKey(  spep_11+48+27,  0, -150,  10,   0);
setMoveKey(  spep_11+48+27,  0, -54,  0,   0);
setMoveKey(  spep_11+68+27,  1, 1000,  0,   0);
setDisp( spep_11+68+27, 1, 0);

setEnvZoomEnable(spep_11+52+27,0);


ryusen_1=entryEffectLife( spep_11+40, 920, 154, 0x80,  -1,  0,  0,  0); -- 流線 406
--setEffRotateKey(spep_6,ryusen_1,-70);
setEffScaleKey(  spep_11+40, ryusen_1, 1.3, 1.3);


--ここのエフェクトはカット数に合わせて調整

spep_7=spep_11+68+5+27; --211 260

setBgScroll( spep_7, 0);

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------


changeAnime( spep_7, 0, 30);                       -- 溜め!
setDisp( spep_7, 0, 1);

playSe( spep_7+4, SE_03);

playSe( spep_7+11, SE_04);
--setEnvZoomEnable(spep_7+10,1);

kame_hand = entryEffect( spep_7+10, SP_01, 0x40+0x80,  0,  300,  0,  0);   -- 手のカメハメ波部
setEffScaleKey( spep_7+10, kame_hand, 0.3, 0.3);

setEffScaleKey( spep_7+40, kame_hand, 1.0, 1.0);

-- ** エフェクト等 ** --
aura = entryEffectLife(  spep_7+10,   SP_07, 107, 0x40,  0,  1,  0,  90); -- オーラ311
setEffScaleKey( spep_7+10, aura, 2.6, 2.6);
setShakeChara( spep_7+10, 0, 49, 5);
setEffRotateKey( spep_7+10, aura, 180);


shuchusen8 = entryEffectLife( spep_7, 906, 76, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_7+50, shuchusen8, 1.5, 1.5);

-- 書き文字エントリー
ct = entryEffectLife( spep_7+10, 10008, 100, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(spep_7+10, ct, 100, 8);
setEffScaleKey(spep_7+10, ct, 1.4, 1.4);

entryFade( spep_7+70, 5,  8, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(  spep_7+70,  0, 0,  0,   0);

setMoveKey(  spep_7+70,  1, 360,  800,   0);

setScaleKey( spep_7+75, 0, 1.7, 1.7);

removeAllEffect(spep_7+77);

entryFadeBg( spep_7, 0, 82, 0, 10, 10, 10, 180);       -- ベース暗め　背景


spep_8=spep_7+82; --260

------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
changeAnime( spep_8, 0, 31);                                    -- かめはめ発射ポーズ
setRotateKey( spep_8-1,  1,  0);

setMoveKey(  spep_8-1,    0,      0,  0,   0);
setMoveKey(  spep_8,    0,   -600,  0,   0);
setMoveKey(  spep_8+1,    0,   -600,  0,   0);
setMoveKey(  spep_8+10,    0,   -100,  0,   0);

kamehame_beam = entryEffectLife( spep_8, SP_02, 109, 0x40,  0,  300,  0,  0);   -- 伸びるかめはめ波

playSe( spep_8, SE_07);

-- 途中からカメハメハが伸びる
setMoveKey(  spep_8+39,    0,   -100,  0,   0);
setMoveKey(  spep_8+40,    0,   -100,  0,   0);
setMoveKey(  spep_8+48,    0,   -1100,  0,   0);

entryFade( spep_8+105, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
entryFadeBg( spep_8, 0, 109, 0, 10, 10, 10, 180);       -- ベース暗め　背景
entryFadeBg( spep_8, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
entryFadeBg( spep_8+40, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景

entryEffectLife( spep_8, 920, 109, 0x80,  -1,  0,  0,  0); -- 流線

setShakeChara( spep_8, 0, 54, 30);

shuchusen = entryEffectLife( spep_8, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_8, shuchusen, 1.0, 1.0);
setEffScaleKey( spep_8+40, shuchusen, 1.0, 1.0);
setEffScaleKey( spep_8+49, shuchusen, 2.0, 2.0);


-- 書き文字エントリー
ct = entryEffectLife( spep_8+8, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(spep_8+8, ct, 32, 5);
setEffAlphaKey(spep_8+8, ct, 255);
setEffAlphaKey(spep_8+30, ct, 255);
setEffAlphaKey(spep_8+40, ct, 0);
setEffScaleKey(spep_8+8, ct, 0.0, 0.0);
setEffScaleKey(spep_8+12, ct, 1.3, 1.3);
setEffScaleKey(spep_8+32, ct, 1.3, 1.3);
setEffScaleKey(spep_8+40, ct, 6.0, 6.0);
playSe( spep_8+40, SE_07);


spep_5 = spep_8+111;

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------

setDisp( spep_5, 0, 0);
setDisp( spep_5, 1, 1);
changeAnime( spep_5-5, 1, 118);                        -- 気ダメ後ろ
setMoveKey(  spep_5-5,    1,   120,  0,   0);
setMoveKey(  spep_5-5,    1,  400,  -400,   0);
setMoveKey(  spep_5,    1,  400,  -400,   0);
setScaleKey(  spep_5-5,   1,   1.6,  1.6);
--setScaleKey( spep_5-5,    1,  1, 1);

setMoveKey(  spep_5+30,    1,   120,  -270,   0);
setScaleKey(  spep_5+38,   1,   1.6,  1.6);

playSe( spep_5+20, SE_06);
entryFade( spep_5+32, 5,  5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setDisp( spep_5+38, 1, 0);

ryusen = entryEffectLife( spep_5-1, 921, 50, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey(spep_5-1, ryusen, 190);
setEffScaleKey( spep_5-1, ryusen, 1.4, 1.4);

kamehame_beam2 = entryEffect( spep_5, SP_03,   0x80, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey(spep_5, kamehame_beam2, 1, 1);
setEffScaleKey(spep_5+72, kamehame_beam2, 1, 1);
--setEffScaleKey(454, kamehame_beam2, 2.5, 2.5);
setDamage( spep_5+72, 1, 0);  -- ダメージ振動等

playSe( spep_5+85, SE_09);
-- ** エフェクト等 ** --
setShakeChara( spep_5, 1, 99, 20);

entryFadeBg( spep_5-1, 0, 100, 0,0, 0, 0, 255);          -- ベース暗め　背景

-- 書き文字エントリー
ct = entryEffectLife( spep_5, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(spep_5, ct, 99, 20);
setEffScaleKey( spep_5, ct, 2.4, 2.4);
setEffRotateKey(spep_5, ct, -70);
setEffAlphaKey(spep_5, ct, 255);
setEffAlphaKey(spep_5+25, ct, 255);
setEffAlphaKey(spep_5+35, ct, 0);

ct = entryEffectLife( spep_5+60, 10006, 30, 0x80, -1, 0, 0, 255); -- ギャン
setEffShake(spep_5+60, ct, 99, 20);
setEffScaleKey( spep_5+60, ct, 0.1, 0.1);
setEffScaleKey( spep_5+65, ct, 2.4, 2.4);
setEffScaleKey( spep_5+90, ct, 2.8, 2.8);
setEffAlphaKey(spep_5+60, ct, 255);
setEffAlphaKey(spep_5+75, ct, 255);
setEffAlphaKey(spep_5+90, ct, 0);

entryFade( spep_5+82, 6,  17, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

--entryEffect( spep_5+99, SP_04, 0,  -1,  0,  0,  0);   -- 宇宙からの俯瞰視点で地球が光弾で爆発する演出（青）
bakuhatu=entryEffect( spep_5+99, SP_04, 0,  -1,  0,  0,  0);   -- 宇宙からの俯瞰視点で地球が光弾で爆発する演出（青）
setEffScaleKey( spep_5+99, bakuhatu, 1.1, 1.1);

playSe( spep_5+108, SE_10);

setDamage( spep_5+116, 1, 0);  -- ダメージ振動等

--playSe( spep_5+103, SE_11);
shuchusen = entryEffectLife( spep_5+103, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線

--entryEffect( 473, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(spep_5+116 -10);

--entryFade( spep_5+200, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_5+210 -10);

end
