
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
SE_11 = 1044; --割れる音

SE_12 = 09;

tyo = -30;
tyo2 = -40;

SP_01 = 102082; --横方向移動時にゴジータがまとうオーラ
SP_02 = 102083; --手前に向かってくる時にゴジータがまとうオーラ
SP_03 = 102084; --かまいたち風エフェクト
SP_04 = 102085; --気球を溜め、アップのカメラアングル
SP_05 = 102086; --キラキラエフェクトを敵に向かって投げる（アンダースロー）
SP_06 = 102087; --キラキラが敵に当たり、キラキラが放射状にバースト
SP_07 = 150075;

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI(0, 0);

changeAnime( 0, 0, 0);                       -- 立ち
changeAnime( 0, 1, 101);                       -- 立ち
setDisp( 0, 1, 0);
setDisp( 0, 0, 1);

setMoveKey(   0,   0,    0, -54,   0);
setMoveKey(   1,   0,    0, -54,   0);
setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   1,   0, 1.5, 1.5);

-- 敵
setMoveKey(   0,   1,    -5000,  -5000,  0);
setMoveKey(   1,   1,    -5000,  -5000,  0);
setMoveKey(   2,   1,    -5000,  -5000,  0);
setMoveKey(   3,   1,    -5000,  -5000,  0);
setMoveKey(   4,   1,    -5000,  -5000,  0);
setMoveKey(   5,   1,    -5000,  -5000,  0);
setMoveKey(   6,   1,    -5000,  -5000,  0);
setScaleKey(   1,   1, 1.5, 1.5);
setScaleKey(   2,   1, 1.5, 1.5);
setScaleKey(   3,   1, 1.5, 1.5);
setScaleKey(   4,   1, 1.5, 1.5);
setScaleKey(   5,   1, 1.5, 1.5);
setScaleKey(   6,   1, 1.5, 1.5);
setVisibleUI( 0, 0);
------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
setVisibleUI(0, 0);
changeAnime( 0, 0, 3);                  -- ダッシュ
setScaleKey(   0,   0, 1.5, 1.5);
--setRotateKey( 0, 0 , -30);

setMoveKey(   0,   0,  -550, 0,  0);
setMoveKey(   1,   0,  -550, 0,  0);

setMoveKey(  20,   0,  0, 0,  0);
setMoveKey(  90,   0,  0, 0,  0);
setMoveKey(  100,   0,  -150, 0,  -10);
setMoveKey(  125,   0,  550, 0,  -20);

playSe( 0, 1036);
playSe( 25, 1036);
playSe( 50, 1036);
playSe( 75, 1036);
playSe( 100, 1018);


speff = entryEffect(  30,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン) 117で終了 87
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  30,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

entryFade( 125, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--aura = entryEffectLife(  0,   SP_01, 125, 0x40+0x100,  0,  300,  -250,  150); -- オーラ
--setEffScaleKey( 0, aura, 1, 1 );
--setEffRotateKey( 0, aura, 0);

--aura1 = entryEffectLife(  0,  SP_07, 125, 0x40+0x100,  0,  300,  -100,  0); -- オーラ
--setEffScaleKey( 0, aura1, 1.1, 1.1);
--setEffRotateKey( 0, aura1, 30);

setShakeChara( 0, 0, 125, 10);
setShake( 0, 125, 15);

-- 書き文字エントリー
ctGo = entryEffectLife( 30, 10008, 146, 0x100, -1, 0, 230, 300);    -- ゴゴゴ・・・
setEffShake(30, ctGo, 146, 8);
setEffMoveKey(30, ctGo, 230, 300);
setEffMoveKey(176, ctGo, 230, 300);
setEffScaleKey(30, ctGo, 1.4, 1.4);
setEffScaleKey(176, ctGo, 1.4, 1.4);
setEffRotateKey(30, ctGo, 0);
setEffRotateKey(176, ctGo, 0);
setEffAlphaKey(30, ctGo, 255);
setEffAlphaKey(176, ctGo, 255);

shuchusen = entryEffectLife( 0, 906, 130, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey(0, shuchusen, 0, 0);
setEffMoveKey(130, shuchusen, 0, 0);
setEffScaleKey( 0, shuchusen, 1.0, 1.0);
--setEffScaleKey( 60, shuchusen, 1.0, 1.0);
setEffScaleKey( 130, shuchusen, 1.0, 1.0);
setEffRotateKey(0, shuchusen, 0);
setEffRotateKey(130, shuchusen, 0);
setEffAlphaKey(0, shuchusen, 255);
setEffAlphaKey(130, shuchusen, 255);

ryusen = entryEffectLife( 0, 920, 130, 0x80,  -1,  0,  0,  0); -- 流線
setEffMoveKey(0, ryusen, 0, 0);
setEffMoveKey(130, ryusen, 0, 0);
setEffScaleKey( 0, ryusen, 1.5, 1.5);
setEffScaleKey( 130, ryusen, 1.5, 1.5);
setEffRotateKey(0, ryusen, 0);
setEffRotateKey(130, ryusen, 0);
setEffAlphaKey(0, ryusen, 255);
setEffAlphaKey(130, ryusen, 255);

entryFadeBg( 0, 0, 130, 0, 0, 0, 0, 255);       -- ベース暗め　背景

setScaleKey(   130,   0, 1.5, 1.5);

spep_1 = 132;
setScaleKey(  spep_1,  0,  1.5,  1.5);

------------------------------------------------------
-- 手前向かってくる(90F)
------------------------------------------------------
setScaleKey(  spep_1-1,   0, 1.0, 1.0);
setMoveKey(  spep_1-1,   0,  0, 0,  120);
changeAnime( spep_1, 0, 16); --手前ダッシュ

setMoveKey(  spep_1+10,   0,  0, 0,  -120);
setMoveKey(  spep_1+40,   0,  0, 0,  -40);
setMoveKey(  spep_1+50,   0,  0, 0,  -80);

setScaleKey(  spep_1+40,   0, 1.0, 1.0);
setScaleKey(  spep_1+50,   0, 2.5, 2.5);


aura = entryEffect(  spep_1,  SP_02, 0x40+0x80,  0,  1,  0,  0); -- 向かってくる
setEffMoveKey(spep_1,  aura,  150, 60,   0);
setEffMoveKey(spep_1+5,  aura,  150, 60,   0);
setEffMoveKey(spep_1+40,  aura,  220,70,   0);
setEffMoveKey(spep_1+50,  aura,  500, 115,   0);
setEffScaleKey(spep_1, aura, 1.0, 1.0);
setEffScaleKey(spep_1+10, aura, 1.0, 1.0);
setEffScaleKey(spep_1+40, aura, 1.5, 1.5);
setEffScaleKey(spep_1+50, aura, 3, 3);
setEffRotateKey(spep_1, aura, 90);
setEffRotateKey(spep_1+50, aura, 90);
setEffAlphaKey(spep_1, aura, 255);
setEffAlphaKey(spep_1+50, aura, 255);

playSe( spep_1, 1018);


entryFadeBg( spep_1-1, 0, 53, 0, 0, 0, 0, 255);       -- ベース暗め　背景

shuchusen2 = entryEffectLife( spep_1-1, 906, 53, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey(spep_1-1, shuchusen2, 0, 0);
setEffMoveKey(spep_1+52, shuchusen2, 0, 0);
setEffScaleKey( spep_1-1, shuchusen2, 1.0, 1.0);
setEffScaleKey( spep_1+52, shuchusen2, 1.0, 1.0);
setEffRotateKey(spep_1-1, shuchusen2, 0);
setEffRotateKey(spep_1+52, shuchusen2, 0);
setEffAlphaKey(spep_1-1, shuchusen2, 255);
setEffAlphaKey(spep_1+52, shuchusen2, 255);

entryFade( spep_1+50, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp( spep_1+53 , 0 , 0);

removeAllEffect(spep_1+53);

spep_2 = spep_1+55;

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 150; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

setMoveKey(  SP_dodge+6,   0,  0, 0,  -80);
setMoveKey(  SP_dodge+8,   0,  -1100, 0,  0);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(SP_dodge+10);
do return end
else end

playSe( spep_1+20, 1021);

------------------------------------------------------
-- アタック(90F)
------------------------------------------------------
setDisp( spep_2 , 1 , 1);

changeAnime( spep_2, 1, 100); 
setScaleKey(  spep_2,  1,  1.5,  1.5);
setMoveKey(  spep_2,  1,  150, 50,  30);

changeAnime( spep_2+10, 1, 108);
changeAnime( spep_2+24, 1, 106);
changeAnime( spep_2+51, 1, 108); 

playSe( spep_2+10, 1008);
--playSe( spep_2+24, 1001);
playSe( spep_2+32, 1002);
playSe( spep_2+51, 1008);

setMoveKey(  spep_2+51,  1,  50, 0,  -50);

setMoveKey(  spep_2+75,    1,   650,  100,   120);
setScaleKey(  spep_2+75,  0,  1,  1);

ryusen2 = entryEffectLife( spep_2, 920, 78, 0x80,  -1,  0,  0,  0); -- 流線
setEffMoveKey(spep_2, ryusen2, 0, 0);
setEffMoveKey(spep_2+78, ryusen2, 0, 0);
setEffScaleKey( spep_2, ryusen2, 1.2, 1.2);
setEffScaleKey( spep_2+78, ryusen2, 1.2, 1.2);
setEffRotateKey(spep_2, ryusen2, 0);
setEffRotateKey(spep_2+78, ryusen2, 0);
setEffAlphaKey(spep_2, ryusen2, 255);
setEffAlphaKey(spep_2+78, ryusen2, 255);

entryFadeBg( spep_2, 0, 78, 0, 0, 0, 0, 255);       -- ベース暗め　背景

aura2 = entryEffect( spep_2, SP_03, 0x100,  -1,  0,  0,  0);  --狼牙風風拳エフェクト
setEffMoveKey(spep_2, aura2, 0, 0);
setEffMoveKey(spep_2+100, aura2, 0, 0);
setEffScaleKey( spep_2, aura2, 1.0, 1.0);
setEffScaleKey( spep_2+100, aura2, 1.0, 1.0);
setEffRotateKey(spep_2, aura2, 0);
setEffRotateKey(spep_2+100, aura2, 0);
setEffAlphaKey(spep_2, aura2, 255);
setEffAlphaKey(spep_2+100, aura2, 255);


entryFade( spep_2+75, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

removeAllEffect(spep_2+80);
setDisp( spep_2+78 , 1 , 0);

spep_3 = spep_2+80;

------------------------------------------------------
-- ベジータssgss　登場　かめはめ波溜め(90F)
------------------------------------------------------

setDisp( spep_3 , 0 , 1);
changeAnime( spep_3, 0, 30);                       -- 溜め!
setScaleKey(   spep_3,   0, 4, 4);
setScaleKey(   spep_3+15,   0, 1.8, 1.8);

setMoveKey(   spep_3,   0,  100, -400,   0);
setMoveKey(   spep_3+15,   0,  0, 0,   10);
setMoveKey(  spep_3+117,   0,  0, 0,   10);


playSe( spep_3+20, SE_04);

--playSe( spep_3+50, 1037);

playSe( spep_3+70, 1034);

kame_hand = entryEffect( spep_3, SP_04, 0x40+0x100, 0, 300,  0, 0);   -- 手のカメハメ波部 50end
setEffMoveKey(spep_3, kame_hand, 0, 0);
setEffMoveKey(spep_3+122, kame_hand, 0, 0);
setEffScaleKey( spep_3, kame_hand, 1.0, 1.0);
setEffScaleKey( spep_3+122, kame_hand, 1.0, 1.0);
setEffRotateKey(spep_3, kame_hand, 0);
setEffRotateKey(spep_3+122, kame_hand, 0);
setEffAlphaKey(spep_3, kame_hand, 255);
setEffAlphaKey(spep_3+122, kame_hand, 255);

entryFade( spep_3+110, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura3 = entryEffectLife(spep_3, 311, 118, 0x40+0x80,  0,  1,  0,  0); -- オーラ
setEffMoveKey(spep_3, aura3, 0, 0,   0);
setEffMoveKey(spep_3+15, aura3, 0, 0,   0);
setEffMoveKey(spep_3+118, aura3, 0, 0,  0);
setEffScaleKey(spep_3, aura3, 3, 3);
setEffScaleKey(spep_3, aura3, 1.8, 1.8);
setEffScaleKey(spep_3+15, aura3, 1.8, 1.8);
setEffScaleKey(spep_3+118, aura3, 2.5, 2.5);
setEffRotateKey(spep_3, aura3, 0);
setEffRotateKey(spep_3+118, aura3, 0);
setEffAlphaKey(spep_3, aura3, 255);
setEffAlphaKey(spep_3+118, aura3, 255);

setShakeChara( spep_3, 0, 114, 8);
setShake( spep_3, 114, 15);

-- 書き文字エントリー
--ct = entryEffectLife( spep_3+30, 10008, 87, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
--setEffShake(spep_3+30, ct, 95, 8);
--setEffScaleKey(spep_3+30, ct, 1.4, 1.4);

shuchusen3 = entryEffectLife(spep_3, 906, 118, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey(spep_3, shuchusen3, 0, 0);
setEffMoveKey(spep_3+118, shuchusen3, 0, 0);
setEffScaleKey(spep_3, shuchusen3, 1.0, 1.0);
setEffScaleKey(spep_3+60, shuchusen3, 1.0, 1.0);
setEffScaleKey(spep_3+118, shuchusen3, 1.0, 1.0);
setEffRotateKey(spep_3, shuchusen3, 0);
setEffRotateKey(spep_3+118, shuchusen3, 0);
setEffAlphaKey(spep_3, shuchusen3, 0);
setEffAlphaKey(spep_3+118, shuchusen3, 0);

entryFadeBg( spep_3, 0, 117, 0, 0, 0, 0, 190);       -- ベース暗め　背景

spep_4 = spep_3+117;

setScaleKey(  spep_4,  0,  1.6,  1.6);
setMoveKey(  spep_4,   0,  0, 0,   10);


------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
--setScaleKey( spep_4-1,   0, 1.5, 1.5);
--setScaleKey( spep_4,   0, 1.0, 1.0);
--setMoveKey(  spep_4-1,    0,      100,  -54,   0);
setMoveKey(  spep_4,    0,      0,  0,   0);

if (_SPECIAL_SKILL_LEVEL_ == 0) then
print ("_SPECIAL_SKILL_LEVEL_ == 0");
playSe( spep_4, SE_05);
speff = entryEffect( spep_4,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
print ("_SPECIAL_SKILL_LEVEL_ == 1");
playSe( spep_4, SE_05);
speff = entryEffect( spep_4, 1120, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( spep_4, SE_05);
speff = entryEffect( spep_4, 1121, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

--[[playSe( spep_4, SE_05);
speff = entryEffect(  spep_4,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え]]


entryFade( spep_4+84, 2, 6, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--entryFlash( (170+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
playSe( spep_4+64, SE_06);

spep_5=spep_4+90; --260

------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------

changeAnime( spep_5, 0, 31);    -- かめはめ発射ポーズ

setMoveKey(  spep_5-1,    0,      0,  100,   -20);
setMoveKey(  spep_5+10,    0,      0,  100,   -10);
setMoveKey(  spep_5+20,    0,   -30,  100,   0);

kamehame_beam = entryEffectLife( spep_5, SP_05, 110, 0x40,  0,  300,  -30,  0);   -- 伸びるかめはめ波
setEffMoveKey(spep_5, kamehame_beam, -30,  0);
setEffMoveKey(spep_5+110, kamehame_beam, -30,  0);
setEffScaleKey(spep_5, kamehame_beam, 1.0, 1.0);
setEffScaleKey(spep_5+110, kamehame_beam, 1.0, 1.0);
setEffRotateKey(spep_5, kamehame_beam, 0);
setEffRotateKey(spep_5+110, kamehame_beam, 0);
setEffAlphaKey(spep_5, kamehame_beam, 255);
setEffAlphaKey(spep_5+110, kamehame_beam, 255);
playSe( spep_5, SE_07);

--spname = entryEffect( spep_5, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
--setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 途中からカメハメハが伸びる

setMoveKey(  spep_5+40,    0,   -200,  120,   30);
--setMoveKey(  spep_5+65,    0,   -350,  170,   50);
setMoveKey(  spep_5+85,    0,   -750,  160,   70);

--entryFade( spep_5+105, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
entryFadeBg( spep_5, 0, 109, 0, 0, 0, 0, 255);       -- ベース暗め　背景

ryusen3 = entryEffectLife( spep_5, 921, 110, 0x80,  -1,  0,  0,  0); -- 流線
setEffMoveKey(spep_5, ryusen3, 0, 0);
setEffMoveKey(spep_5+110, ryusen3, 0, 0);
setEffScaleKey(spep_5, ryusen3, 2.0, 2.0);
setEffScaleKey(spep_5+110, ryusen3, 2.0, 2.0);
setEffRotateKey(spep_5, ryusen3, 190);
setEffRotateKey(spep_5+110, ryusen3, 190);
setEffAlphaKey(spep_5, ryusen3, 255);
setEffAlphaKey(spep_5+110, ryusen3, 255);

setShakeChara( spep_5+44, 0, 54, 50);

shuchusen4 = entryEffectLife( spep_5, 906, 50, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey(spep_5, shuchusen4, 0, 0);
setEffMoveKey(spep_5+50, shuchusen4, 0, 0);
setEffScaleKey( spep_5, shuchusen4, 1.0, 1.0);
setEffScaleKey( spep_5+40, shuchusen4, 1.0, 1.0);
setEffScaleKey( spep_5+50, shuchusen4, 2.0, 2.0);
setEffRotateKey(spep_5, shuchusen4, 0);
setEffRotateKey(spep_5+50, shuchusen4, 0);
setEffAlphaKey(spep_5, shuchusen4, 255);
setEffAlphaKey(spep_5+50, shuchusen4, 255);

-- 書き文字エントリー
ctZuo = entryEffectLife( spep_5+8, 10012, 40, 0, -1, 0, 200, 360); -- ズオッ
setEffShake(spep_5+8, ctZuo, 32, 5);
setEffMoveKey(spep_5+8, ctZuo, 200, 360);
setEffMoveKey(spep_5+48, ctZuo, 200, 360);
setEffAlphaKey(spep_5+8, ctZuo, 255);
setEffAlphaKey(spep_5+30, ctZuo, 255);
setEffAlphaKey(spep_5+48, ctZuo, 0);
setEffScaleKey(spep_5+8, ctZuo, 0.0, 0.0);
setEffScaleKey(spep_5+12, ctZuo, 1.3, 1.3);
setEffScaleKey(spep_5+32, ctZuo, 1.3, 1.3);
setEffScaleKey(spep_5+48, ctZuo, 6.0, 6.0);
setEffRotateKey(spep_5+8, ctZuo, 0);
setEffRotateKey(spep_5+48, ctZuo, 0);
playSe( spep_5+60, SE_07);

entryFade( spep_5+86, 10,  5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_6=spep_5+100; --370

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
setDisp( spep_6, 0, 0);
setDisp( spep_6, 1, 1);
changeAnime( spep_6, 1, 108);

setMoveKey(  spep_6-1,    1,  235,  0,   0);
setMoveKey(  spep_6,    1,  235,  0,   0);
setMoveKey(  spep_6+1,    1,  235,  0,   0);

setScaleKey( spep_6-1,    1,  1.5, 1.5);
setScaleKey( spep_6,    1,  1.5, 1.5);

setMoveKey(  spep_6+30,    1,   50,  0,   0);
setScaleKey(  spep_6+30,   1,   2,  2);

changeAnime( spep_6+50, 1, 106);

playSe( spep_6+20, SE_06);

kamehame_beam2 = entryEffect( spep_6, SP_06,  0, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffMoveKey(spep_6, kamehame_beam2, 0, 0);
setEffMoveKey(spep_6+178, kamehame_beam2, 0, 0);
setEffScaleKey(spep_6, kamehame_beam2, 1, 1);
setEffScaleKey(spep_6+82, kamehame_beam2, 1, 1);
setEffScaleKey(spep_6+84, kamehame_beam2, 1.5, 1.5);
setEffScaleKey(spep_6+178, kamehame_beam2, 1.5, 1.5);
setEffRotateKey(spep_6, kamehame_beam2, 0);
setEffRotateKey(spep_6+48, kamehame_beam2, 0);
setEffRotateKey(spep_6+178, kamehame_beam2, 0);
setEffAlphaKey(spep_6, kamehame_beam2, 255);
setEffAlphaKey(spep_6+178, kamehame_beam2, 255);

setDamage( spep_6+82, 1, 0);  -- ダメージ振動等

playSe( spep_6+40, SE_09);


-- ** エフェクト等 ** --
setShakeChara( spep_6, 1, 80, 10);
setShakeChara( spep_6, 1, 90, 20);
setEffShake( spep_6, kamehame_beam2, 170, 10);

entryFadeBg( spep_6, 0, 170, 0,0, 0, 0, 255);          -- ベース暗め　背景

ryusen4 = entryEffectLife( spep_6, 921, 44, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffMoveKey(spep_6, ryusen4, 0, 0);
setEffMoveKey(spep_6+44, ryusen4, 0, 0);
setEffScaleKey(spep_6, ryusen4, 1, 1);
setEffScaleKey(spep_6+44, ryusen4, 1, 1);
setEffRotateKey(spep_6, ryusen4, 0);
setEffRotateKey(spep_6+44, ryusen4, 0);
setEffAlphaKey(spep_6, ryusen4, 255);
setEffAlphaKey(spep_6+44, ryusen4, 255);

-- 書き文字エントリー
ctZud = entryEffectLife( spep_6, 10014, 100, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(spep_6, ctZud, 100, 20);
setEffMoveKey(spep_6, ctZud, -100, 255);
setEffMoveKey(spep_6+100, ctZud, -100, 255);
setEffScaleKey( spep_6, ctZud, 2.4, 2.4);
setEffScaleKey( spep_6+100, ctZud, 2.4, 2.4);
setEffRotateKey(spep_6, ctZud, 70);
setEffRotateKey(spep_6+100, ctZud, 70);
setEffAlphaKey(spep_6, ctZud, 255);
setEffAlphaKey(spep_6+35, ctZud, 255);
setEffAlphaKey(spep_6+55, ctZud, 0);
setEffAlphaKey(spep_6+100, ctZud, 0);

-- ダメージ表示

dealDamage(spep_6+70 -14);

setScaleKey(  spep_6+160,   1,   2,  2);

--entryFade( spep_6+125, 20,  45, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(spep_6+170 -14);

else





------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
setVisibleUI(0, 0);
changeAnime( 0, 0, 3);                  -- ダッシュ
setScaleKey(   0,   0, 1.5, 1.5);
--setRotateKey( 0, 0 , -30);

setMoveKey(   0,   0,  -550, 0,  0);
setMoveKey(   1,   0,  -550, 0,  0);

setMoveKey(  20,   0,  0, 0,  0);
setMoveKey(  90,   0,  0, 0,  0);
setMoveKey(  100,   0,  -150, 0,  -10);
setMoveKey(  125,   0,  550, 0,  -20);

playSe( 0, 1036);
playSe( 25, 1036);
playSe( 50, 1036);
playSe( 75, 1036);
playSe( 100, 1018);


--speff = entryEffect(  30,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン) 117で終了 87
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  30,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

entryFade( 125, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--aura = entryEffectLife(  0,   SP_01, 125, 0x40+0x100,  0,  300,  -250,  150); -- オーラ
--setEffScaleKey( 0, aura, 1, 1 );
--setEffRotateKey( 0, aura, 0);

--aura1 = entryEffectLife(  0,  SP_07, 125, 0x40+0x100,  0,  300,  -100,  0); -- オーラ
--setEffScaleKey( 0, aura1, 1.1, 1.1);
--setEffRotateKey( 0, aura1, 30);

setShakeChara( 0, 0, 125, 10);
setShake( 0, 125, 15);

-- 書き文字エントリー
ctGo = entryEffectLife( 30, 10008, 146, 0x100, -1, 0, 230, 300);    -- ゴゴゴ・・・
setEffShake(30, ctGo, 146, 8);
setEffMoveKey(30, ctGo, 230, 300);
setEffMoveKey(176, ctGo, 230, 300);
setEffScaleKey(30, ctGo, 1.4, 1.4);
setEffScaleKey(176, ctGo, 1.4, 1.4);
setEffRotateKey(30, ctGo, 0);
setEffRotateKey(176, ctGo, 0);
setEffAlphaKey(30, ctGo, 255);
setEffAlphaKey(176, ctGo, 255);

shuchusen = entryEffectLife( 0, 906, 130, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey(0, shuchusen, 0, 0);
setEffMoveKey(130, shuchusen, 0, 0);
setEffScaleKey( 0, shuchusen, 1.0, 1.0);
--setEffScaleKey( 60, shuchusen, 1.0, 1.0);
setEffScaleKey( 130, shuchusen, 1.0, 1.0);
setEffRotateKey(0, shuchusen, 0);
setEffRotateKey(130, shuchusen, 0);
setEffAlphaKey(0, shuchusen, 255);
setEffAlphaKey(130, shuchusen, 255);

ryusen = entryEffectLife( 0, 920, 130, 0x80,  -1,  0,  0,  0); -- 流線
setEffMoveKey(0, ryusen, 0, 0);
setEffMoveKey(130, ryusen, 0, 0);
setEffScaleKey( 0, ryusen, 1.5, 1.5);
setEffScaleKey( 130, ryusen, 1.5, 1.5);
setEffRotateKey(0, ryusen, 0);
setEffRotateKey(130, ryusen, 0);
setEffAlphaKey(0, ryusen, 255);
setEffAlphaKey(130, ryusen, 255);

entryFadeBg( 0, 0, 130, 0, 0, 0, 0, 255);       -- ベース暗め　背景

setScaleKey(   130,   0, 1.5, 1.5);

spep_1 = 132;
setScaleKey(  spep_1,  0,  1.5,  1.5);

------------------------------------------------------
-- 手前向かってくる(90F)
------------------------------------------------------
setScaleKey(  spep_1-1,   0, 1.0, 1.0);
setMoveKey(  spep_1-1,   0,  0, 0,  120);
changeAnime( spep_1, 0, 16); --手前ダッシュ

setMoveKey(  spep_1+10,   0,  0, 0,  -120);
setMoveKey(  spep_1+40,   0,  0, 0,  -40);
setMoveKey(  spep_1+50,   0,  0, 0,  -80);

setScaleKey(  spep_1+40,   0, 1.0, 1.0);
setScaleKey(  spep_1+50,   0, 2.5, 2.5);


aura = entryEffect(  spep_1,  SP_02, 0x40+0x80,  0,  1,  0,  0); -- 向かってくる
setEffMoveKey(spep_1,  aura,  150, 60,   0);
setEffMoveKey(spep_1+5,  aura,  150, 60,   0);
setEffMoveKey(spep_1+40,  aura,  220,70,   0);
setEffMoveKey(spep_1+50,  aura,  500, 115,   0);
setEffScaleKey(spep_1, aura, 1.0, 1.0);
setEffScaleKey(spep_1+10, aura, 1.0, 1.0);
setEffScaleKey(spep_1+40, aura, 1.5, 1.5);
setEffScaleKey(spep_1+50, aura, 3, 3);
setEffRotateKey(spep_1, aura, 90);
setEffRotateKey(spep_1+50, aura, 90);
setEffAlphaKey(spep_1, aura, 255);
setEffAlphaKey(spep_1+50, aura, 255);

playSe( spep_1, 1018);


entryFadeBg( spep_1-1, 0, 53, 0, 0, 0, 0, 255);       -- ベース暗め　背景

shuchusen2 = entryEffectLife( spep_1-1, 906, 53, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey(spep_1-1, shuchusen2, 0, 0);
setEffMoveKey(spep_1+52, shuchusen2, 0, 0);
setEffScaleKey( spep_1-1, shuchusen2, 1.0, 1.0);
setEffScaleKey( spep_1+52, shuchusen2, 1.0, 1.0);
setEffRotateKey(spep_1-1, shuchusen2, 0);
setEffRotateKey(spep_1+52, shuchusen2, 0);
setEffAlphaKey(spep_1-1, shuchusen2, 255);
setEffAlphaKey(spep_1+52, shuchusen2, 255);

entryFade( spep_1+50, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp( spep_1+53 , 0 , 0);

removeAllEffect(spep_1+53);

spep_2 = spep_1+55;

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 150; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

setMoveKey(  SP_dodge+6,   0,  0, 0,  -80);
setMoveKey(  SP_dodge+8,   0,  -1100, 0,  0);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(SP_dodge+10);
do return end
else end

playSe( spep_1+20, 1021);

------------------------------------------------------
-- アタック(90F)
------------------------------------------------------
setDisp( spep_2 , 1 , 1);

changeAnime( spep_2, 1, 100); 
setScaleKey(  spep_2,  1,  1.5,  1.5);
setMoveKey(  spep_2,  1,  150, 50,  30);

changeAnime( spep_2+10, 1, 108);
changeAnime( spep_2+24, 1, 106);
changeAnime( spep_2+51, 1, 108); 

playSe( spep_2+10, 1008);
--playSe( spep_2+24, 1001);
playSe( spep_2+32, 1002);
playSe( spep_2+51, 1008);

setMoveKey(  spep_2+51,  1,  50, 0,  -50);

setMoveKey(  spep_2+75,    1,   650,  100,   120);
setScaleKey(  spep_2+75,  0,  1,  1);

ryusen2 = entryEffectLife( spep_2, 920, 78, 0x80,  -1,  0,  0,  0); -- 流線
setEffMoveKey(spep_2, ryusen2, 0, 0);
setEffMoveKey(spep_2+78, ryusen2, 0, 0);
setEffScaleKey( spep_2, ryusen2, 1.2, 1.2);
setEffScaleKey( spep_2+78, ryusen2, 1.2, 1.2);
setEffRotateKey(spep_2, ryusen2, 0);
setEffRotateKey(spep_2+78, ryusen2, 0);
setEffAlphaKey(spep_2, ryusen2, 255);
setEffAlphaKey(spep_2+78, ryusen2, 255);

entryFadeBg( spep_2, 0, 78, 0, 0, 0, 0, 255);       -- ベース暗め　背景

aura2 = entryEffect( spep_2, SP_03, 0x100,  -1,  0,  0,  0);  --狼牙風風拳エフェクト
setEffMoveKey(spep_2, aura2, 0, 0);
setEffMoveKey(spep_2+100, aura2, 0, 0);
setEffScaleKey( spep_2, aura2, 1.0, 1.0);
setEffScaleKey( spep_2+100, aura2, 1.0, 1.0);
setEffRotateKey(spep_2, aura2, 0);
setEffRotateKey(spep_2+100, aura2, 0);
setEffAlphaKey(spep_2, aura2, 255);
setEffAlphaKey(spep_2+100, aura2, 255);


entryFade( spep_2+75, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

removeAllEffect(spep_2+80);
setDisp( spep_2+78 , 1 , 0);

spep_3 = spep_2+80;

------------------------------------------------------
-- ベジータssgss　登場　かめはめ波溜め(90F)
------------------------------------------------------

setDisp( spep_3 , 0 , 1);
changeAnime( spep_3, 0, 30);                       -- 溜め!
setScaleKey(   spep_3,   0, 4, 4);
setScaleKey(   spep_3+15,   0, 1.8, 1.8);

setMoveKey(   spep_3,   0,  100, -400,   0);
setMoveKey(   spep_3+15,   0,  0, 0,   10);
setMoveKey(  spep_3+117,   0,  0, 0,   10);


playSe( spep_3+20, SE_04);

--playSe( spep_3+50, 1037);

playSe( spep_3+70, 1034);

kame_hand = entryEffect( spep_3, SP_04, 0x40+0x100, 0, 300,  0, 0);   -- 手のカメハメ波部 50end
setEffMoveKey(spep_3, kame_hand, 0, 0);
setEffMoveKey(spep_3+122, kame_hand, 0, 0);
setEffScaleKey( spep_3, kame_hand, 1.0, 1.0);
setEffScaleKey( spep_3+122, kame_hand, 1.0, 1.0);
setEffRotateKey(spep_3, kame_hand, 0);
setEffRotateKey(spep_3+122, kame_hand, 0);
setEffAlphaKey(spep_3, kame_hand, 255);
setEffAlphaKey(spep_3+122, kame_hand, 255);

entryFade( spep_3+110, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura3 = entryEffectLife(spep_3, 311, 118, 0x40+0x80,  0,  1,  0,  0); -- オーラ
setEffMoveKey(spep_3, aura3, 0, 0,   0);
setEffMoveKey(spep_3+15, aura3, 0, 0,   0);
setEffMoveKey(spep_3+118, aura3, 0, 0,  0);
setEffScaleKey(spep_3, aura3, 3, 3);
setEffScaleKey(spep_3, aura3, 1.8, 1.8);
setEffScaleKey(spep_3+15, aura3, 1.8, 1.8);
setEffScaleKey(spep_3+118, aura3, 2.5, 2.5);
setEffRotateKey(spep_3, aura3, 0);
setEffRotateKey(spep_3+118, aura3, 0);
setEffAlphaKey(spep_3, aura3, 255);
setEffAlphaKey(spep_3+118, aura3, 255);

setShakeChara( spep_3, 0, 114, 8);
setShake( spep_3, 114, 15);

-- 書き文字エントリー
--ct = entryEffectLife( spep_3+30, 10008, 87, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
--setEffShake(spep_3+30, ct, 95, 8);
--setEffScaleKey(spep_3+30, ct, 1.4, 1.4);

shuchusen3 = entryEffectLife(spep_3, 906, 118, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey(spep_3, shuchusen3, 0, 0);
setEffMoveKey(spep_3+118, shuchusen3, 0, 0);
setEffScaleKey(spep_3, shuchusen3, 1.0, 1.0);
setEffScaleKey(spep_3+60, shuchusen3, 1.0, 1.0);
setEffScaleKey(spep_3+118, shuchusen3, 1.0, 1.0);
setEffRotateKey(spep_3, shuchusen3, 0);
setEffRotateKey(spep_3+118, shuchusen3, 0);
setEffAlphaKey(spep_3, shuchusen3, 0);
setEffAlphaKey(spep_3+118, shuchusen3, 0);

entryFadeBg( spep_3, 0, 117, 0, 0, 0, 0, 190);       -- ベース暗め　背景

spep_4 = spep_3+117;

setScaleKey(  spep_4,  0,  1.6,  1.6);
setMoveKey(  spep_4,   0,  0, 0,   10);


------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
--setScaleKey( spep_4-1,   0, 1.5, 1.5);
--setScaleKey( spep_4,   0, 1.0, 1.0);
--setMoveKey(  spep_4-1,    0,      100,  -54,   0);
setMoveKey(  spep_4,    0,      0,  0,   0);

if (_SPECIAL_SKILL_LEVEL_ == 0) then
print ("_SPECIAL_SKILL_LEVEL_ == 0");
playSe( spep_4, SE_05);
speff = entryEffect( spep_4,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
print ("_SPECIAL_SKILL_LEVEL_ == 1");
playSe( spep_4, SE_05);
speff = entryEffect( spep_4, 1120, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( spep_4, SE_05);
speff = entryEffect( spep_4, 1121, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

--[[playSe( spep_4, SE_05);
speff = entryEffect(  spep_4,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え]]


entryFade( spep_4+84, 2, 6, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--entryFlash( (170+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
playSe( spep_4+64, SE_06);

spep_5=spep_4+90; --260

------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------

changeAnime( spep_5, 0, 31);    -- かめはめ発射ポーズ

setMoveKey(  spep_5-1,    0,      0,  100,   -20);
setMoveKey(  spep_5+10,    0,      0,  100,   -10);
setMoveKey(  spep_5+20,    0,   -30,  100,   0);

kamehame_beam = entryEffectLife( spep_5, SP_05, 110, 0x40,  0,  300,  -30,  0);   -- 伸びるかめはめ波
setEffMoveKey(spep_5, kamehame_beam, -30,  0);
setEffMoveKey(spep_5+110, kamehame_beam, -30,  0);
setEffScaleKey(spep_5, kamehame_beam, 1.0, 1.0);
setEffScaleKey(spep_5+110, kamehame_beam, 1.0, 1.0);
setEffRotateKey(spep_5, kamehame_beam, 0);
setEffRotateKey(spep_5+110, kamehame_beam, 0);
setEffAlphaKey(spep_5, kamehame_beam, 255);
setEffAlphaKey(spep_5+110, kamehame_beam, 255);
playSe( spep_5, SE_07);

--spname = entryEffect( spep_5, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
--setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 途中からカメハメハが伸びる

setMoveKey(  spep_5+40,    0,   -200,  120,   30);
--setMoveKey(  spep_5+65,    0,   -350,  170,   50);
setMoveKey(  spep_5+85,    0,   -750,  160,   70);

--entryFade( spep_5+105, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
entryFadeBg( spep_5, 0, 109, 0, 0, 0, 0, 255);       -- ベース暗め　背景

ryusen3 = entryEffectLife( spep_5, 921, 110, 0x80,  -1,  0,  0,  0); -- 流線
setEffMoveKey(spep_5, ryusen3, 0, 0);
setEffMoveKey(spep_5+110, ryusen3, 0, 0);
setEffScaleKey(spep_5, ryusen3, 2.0, 2.0);
setEffScaleKey(spep_5+110, ryusen3, 2.0, 2.0);
setEffRotateKey(spep_5, ryusen3, 190);
setEffRotateKey(spep_5+110, ryusen3, 190);
setEffAlphaKey(spep_5, ryusen3, 255);
setEffAlphaKey(spep_5+110, ryusen3, 255);

setShakeChara( spep_5+44, 0, 54, 50);

shuchusen4 = entryEffectLife( spep_5, 906, 50, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey(spep_5, shuchusen4, 0, 0);
setEffMoveKey(spep_5+50, shuchusen4, 0, 0);
setEffScaleKey( spep_5, shuchusen4, 1.0, 1.0);
setEffScaleKey( spep_5+40, shuchusen4, 1.0, 1.0);
setEffScaleKey( spep_5+50, shuchusen4, 2.0, 2.0);
setEffRotateKey(spep_5, shuchusen4, 0);
setEffRotateKey(spep_5+50, shuchusen4, 0);
setEffAlphaKey(spep_5, shuchusen4, 255);
setEffAlphaKey(spep_5+50, shuchusen4, 255);

-- 書き文字エントリー
ctZuo = entryEffectLife( spep_5+8, 10012, 40, 0, -1, 0, 200, 360); -- ズオッ
setEffShake(spep_5+8, ctZuo, 32, 5);
setEffMoveKey(spep_5+8, ctZuo, 200, 360);
setEffMoveKey(spep_5+48, ctZuo, 200, 360);
setEffAlphaKey(spep_5+8, ctZuo, 255);
setEffAlphaKey(spep_5+30, ctZuo, 255);
setEffAlphaKey(spep_5+48, ctZuo, 0);
setEffScaleKey(spep_5+8, ctZuo, 0.0, 0.0);
setEffScaleKey(spep_5+12, ctZuo, 1.3, 1.3);
setEffScaleKey(spep_5+32, ctZuo, 1.3, 1.3);
setEffScaleKey(spep_5+48, ctZuo, 6.0, 6.0);
setEffRotateKey(spep_5+8, ctZuo, 0);
setEffRotateKey(spep_5+48, ctZuo, 0);
playSe( spep_5+60, SE_07);

entryFade( spep_5+86, 10,  5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_6=spep_5+100; --370

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
setDisp( spep_6, 0, 0);
setDisp( spep_6, 1, 1);
changeAnime( spep_6, 1, 108);

setMoveKey(  spep_6-1,    1,  235,  0,   0);
setMoveKey(  spep_6,    1,  235,  0,   0);
setMoveKey(  spep_6+1,    1,  235,  0,   0);

setScaleKey( spep_6-1,    1,  1.5, 1.5);
setScaleKey( spep_6,    1,  1.5, 1.5);

setMoveKey(  spep_6+30,    1,   50,  0,   0);
setScaleKey(  spep_6+30,   1,   2,  2);

changeAnime( spep_6+50, 1, 106);

playSe( spep_6+20, SE_06);

kamehame_beam2 = entryEffect( spep_6, SP_06,  0, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffMoveKey(spep_6, kamehame_beam2, 0, 0);
setEffMoveKey(spep_6+178, kamehame_beam2, 0, 0);
setEffScaleKey(spep_6, kamehame_beam2, 1, 1);
setEffScaleKey(spep_6+82, kamehame_beam2, 1, 1);
setEffScaleKey(spep_6+84, kamehame_beam2, 1.5, 1.5);
setEffScaleKey(spep_6+178, kamehame_beam2, 1.5, 1.5);
setEffRotateKey(spep_6, kamehame_beam2, 0);
setEffRotateKey(spep_6+48, kamehame_beam2, 0);
setEffRotateKey(spep_6+178, kamehame_beam2, 0);
setEffAlphaKey(spep_6, kamehame_beam2, 255);
setEffAlphaKey(spep_6+178, kamehame_beam2, 255);

setDamage( spep_6+82, 1, 0);  -- ダメージ振動等

playSe( spep_6+40, SE_09);


-- ** エフェクト等 ** --
setShakeChara( spep_6, 1, 80, 10);
setShakeChara( spep_6, 1, 90, 20);
setEffShake( spep_6, kamehame_beam2, 170, 10);

entryFadeBg( spep_6, 0, 170, 0,0, 0, 0, 255);          -- ベース暗め　背景

ryusen4 = entryEffectLife( spep_6, 921, 44, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffMoveKey(spep_6, ryusen4, 0, 0);
setEffMoveKey(spep_6+44, ryusen4, 0, 0);
setEffScaleKey(spep_6, ryusen4, 1, 1);
setEffScaleKey(spep_6+44, ryusen4, 1, 1);
setEffRotateKey(spep_6, ryusen4, 0);
setEffRotateKey(spep_6+44, ryusen4, 0);
setEffAlphaKey(spep_6, ryusen4, 255);
setEffAlphaKey(spep_6+44, ryusen4, 255);

-- 書き文字エントリー
ctZud = entryEffectLife( spep_6, 10014, 100, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(spep_6, ctZud, 100, 20);
setEffMoveKey(spep_6, ctZud, -100, 255);
setEffMoveKey(spep_6+100, ctZud, -100, 255);
setEffScaleKey( spep_6, ctZud, 2.4, 2.4);
setEffScaleKey( spep_6+100, ctZud, 2.4, 2.4);
setEffRotateKey(spep_6, ctZud, 0);
setEffRotateKey(spep_6+100, ctZud, 0);
setEffAlphaKey(spep_6, ctZud, 255);
setEffAlphaKey(spep_6+35, ctZud, 255);
setEffAlphaKey(spep_6+55, ctZud, 0);
setEffAlphaKey(spep_6+100, ctZud, 0);

-- ダメージ表示

dealDamage(spep_6+70 -14);

setScaleKey(  spep_6+160,   1,   2,  2);

--entryFade( spep_6+125, 20,  45, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(spep_6+170 -14);

end
