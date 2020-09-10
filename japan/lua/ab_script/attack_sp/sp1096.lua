--sp1096 超界王拳かめはめ波

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
--SE_08 = 1042; --カットイン
SE_09 = 1023; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音

SE_12 = 09;

SP_01 = 150323;
SP_02 = 150324;
SP_03 = 150325;
SP_04 = 150326;
SP_05 = 150327;
SP_06 = 150328;
SP_07 = 150329;
SP_08 = 150330;
SP_09 = 150331;
SP_10 = 150332;
SP_11 = 150333;

SP_07x = 151745;
SP_08x = 151746;

multi_frm = 2;

------------------------------------------------------
-- テンプレ
------------------------------------------------------

setVisibleUI(0, 0);
setDisp( 0, 0, 0); --味方非表示
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

------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

spep_0=0;

entryFade( spep_0, 0, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fadeスタート
entryFadeBg( spep_0, 0, 98, 0, 0, 0, 0, 210);          -- ベース暗め　背景

Kidame=entryEffectLife(spep_0,SP_01,98,0x80,-1,0,0,0);

setEffMoveKey(spep_0,Kidame,0,0,0);
setEffMoveKey(spep_0+98,Kidame,0,0,0);
setEffScaleKey(spep_0,Kidame,1.0,1.0);
setEffScaleKey(spep_0+98,Kidame,1.0,1.0);
setEffAlphaKey(spep_0,Kidame,255);
setEffAlphaKey(spep_0+98,Kidame,255);
setEffRotateKey(spep_0,Kidame,0);
setEffRotateKey(spep_0+98,Kidame,0);

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0, 906, 98, 0x100,  -1, 0,  0,  0); -- 集中線
setEffMoveKey( spep_0, shuchusen1, 0, 0, 0);
setEffScaleKey( spep_0, shuchusen1, 1.0, 1.0);
setEffAlphaKey( spep_0, shuchusen1, 255);
setEffRotateKey( spep_0, shuchusen1, 0);

setEffMoveKey( spep_0+98, shuchusen1, 0, 0, 0);
setEffScaleKey( spep_0+98, shuchusen1, 1.0, 1.0);
setEffAlphaKey( spep_0+98, shuchusen1, 255);
setEffRotateKey( spep_0+98, shuchusen1, 0);

-- 書き文字エントリー　ゴゴゴ --
ct_gogogo = entryEffectLife( spep_0+20, 190006, 70, 0x100, -1, 0, 0, 500);    -- ゴゴゴゴ
setEffShake( spep_0+20, ct_gogogo, 70, 20);
setEffScaleKey( spep_0+20, ct_gogogo, 0.7, 0.7);
setEffRotateKey( spep_0+20, ct_gogogo, 10);
setEffAlphaKey( spep_0+20, ct_gogogo, 255);

speff = entryEffect(  spep_0+10,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_0+10,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

--playSe( spep_0, SE_01);
playSe( spep_0+14, SE_04);


------------------------------------------------------
--突っ込む(60F)
------------------------------------------------------
spep_1=spep_0+96;

entryFade( spep_1-2, 2, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_1+40, 16, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_1, 0, 58, 0, 0, 0, 0, 210);          -- ベース暗め　背景

Tukkomu=entryEffectLife(spep_1,SP_02,58,0x80,-1,0,0,0);

setEffMoveKey(spep_1,Tukkomu,0,0,0);
setEffMoveKey(spep_1+58,Tukkomu,0,0,0);
setEffScaleKey(spep_1,Tukkomu,1.0,1.0);
setEffScaleKey(spep_1+58,Tukkomue,1.0,1.0);
setEffAlphaKey(spep_1,Tukkomu,255);
setEffAlphaKey(spep_1+58,Tukkomu,255);
setEffRotateKey(spep_1,Tukkomu,0);
setEffRotateKey(spep_1+58,Tukkomu,0);

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_1, 906, 58, 0x100,  -1, 0,  0,  0); -- 集中線
setEffMoveKey( spep_1, shuchusen2, 0, 0, 0);
setEffScaleKey( spep_1, shuchusen2, 1.2, 1.2);
setEffAlphaKey( spep_1, shuchusen2, 255);
setEffRotateKey( spep_1, shuchusen2, 0);

setEffMoveKey( spep_1+58, shuchusen2, 0, 0, 0);
setEffScaleKey( spep_1+58, shuchusen2, 1.4, 1.4);
setEffAlphaKey( spep_1+58, shuchusen2, 255);
setEffRotateKey( spep_1+58, shuchusen2, 0);

playSe( spep_1, 9);

------------------------------------------------------
-- 回避
------------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge = 134; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(   SP_dodge+10,   0,    0, -2000,   0);

endPhase(SP_dodge+10);

do return end
else end
------------------------------------------------------
--パンチ(90F)
------------------------------------------------------
spep_2=spep_1+58;

--敵の動き--
setDisp( spep_2 + 0, 1, 1 );
changeAnime( spep_2 + 0, 1, 102);
setShakeChara( spep_2, 1, 16, 5); 

changeAnime( spep_2 + 16, 1, 107);
setShakeChara( spep_2+16, 1, 42, 10); 

setScaleKey( spep_2,   1, 1.7, 1.7);
setMoveKey( spep_2,   1,    120, 200,   0);
changeAnime( spep_2, 1, 102);                       -- 立ち
setDisp( spep_2, 1, 1);

setMoveKey( spep_2 + 0, 1, 144.7, 239.5 , 0 );
setMoveKey( spep_2 + 2, 1, 152.4, 247.1 , 0 );
setMoveKey( spep_2 + 4, 1, 142.2, 238.7 , 0 );
setMoveKey( spep_2 + 6, 1, 148, 242.2 , 0 );
setMoveKey( spep_2 + 8, 1, 137.8, 233.8 , 0 );
setMoveKey( spep_2 + 10, 1, 143.5, 237.3 , 0 );
setMoveKey( spep_2 + 12, 1, 133.3, 228.9 , 0 );
setMoveKey( spep_2 + 14, 1, 139.1, 232.4 , 0 );
setMoveKey( spep_2 + 16, 1, 128.9, 224 , 0 );
setMoveKey( spep_2 + 19, 1, 134.7, 227.5 , 0 );
setMoveKey( spep_2 + 20, 1, 146.4, 261.7 , 0 );
setMoveKey( spep_2 + 22, 1, 158.7, 272.8 , 0 );
setMoveKey( spep_2 + 24, 1, 155, 271.8 , 0 );
setMoveKey( spep_2 + 26, 1, 167.3, 282.9 , 0 );
setMoveKey( spep_2 + 28, 1, 163.6, 281.9 , 0 );
setMoveKey( spep_2 + 30, 1, 175.9, 293 , 0 );
setMoveKey( spep_2 + 32, 1, 172.2, 292 , 0 );
setMoveKey( spep_2 + 34, 1, 184.6, 303.1 , 0 );
setMoveKey( spep_2 + 36, 1, 180.9, 302.1 , 0 );
setMoveKey( spep_2 + 38, 1, 193.2, 313.2 , 0 );
setMoveKey( spep_2 + 40, 1, 187.5, 308.3 , 0 );
setMoveKey( spep_2 + 42, 1, 201.8, 323.3 , 0 );
setMoveKey( spep_2 + 44, 1, 198.1, 322.4 , 0 );
setMoveKey( spep_2 + 46, 1, 210.5, 333.4 , 0 );
setMoveKey( spep_2 + 48, 1, 206.8, 332.5 , 0 );
setMoveKey( spep_2 + 50, 1, 219.1, 343.5 , 0 );
setMoveKey( spep_2 + 52, 1, 215.4, 342.6 , 0 );
setMoveKey( spep_2 + 54, 1, 227.7, 353.6 , 0 );
setMoveKey( spep_2 + 56, 1, 224, 352.7 , 0 );
--setMoveKey( spep_2 + 58, 1, 236.4, 363.7 , 0 );

setScaleKey( spep_2 + 0, 1, 1.57, 1.57 );
setScaleKey( spep_2 + 2, 1, 1.58, 1.58 );
setScaleKey( spep_2 + 16, 1, 1.58, 1.58 );
setScaleKey( spep_2 + 17, 1, 1, 1 );
setScaleKey( spep_2 + 20, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 22, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 24, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 26, 1, 1.14, 1.14 );
setScaleKey( spep_2 + 28, 1, 1.18, 1.18 );
setScaleKey( spep_2 + 30, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 32, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 34, 1, 1.28, 1.28 );
setScaleKey( spep_2 + 36, 1, 1.32, 1.32 );
setScaleKey( spep_2 + 38, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 40, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 42, 1, 1.42, 1.42 );
setScaleKey( spep_2 + 44, 1, 1.45, 1.45 );
setScaleKey( spep_2 + 46, 1, 1.49, 1.49 );
setScaleKey( spep_2 + 48, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 50, 1, 1.56, 1.56 );
setScaleKey( spep_2 + 52, 1, 1.59, 1.59 );
setScaleKey( spep_2 + 58, 1, 1.63, 1.63 );
--setScaleKey( spep_2 + 58, 1, 1.66, 1.66 );

setRotateKey( spep_2 + 0, 1, -18 );
setRotateKey( spep_2 + 19, 1, -18 );
setRotateKey( spep_2 + 20, 1, 0 );

entryFade( spep_2-4, 3, 4, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--entryFade( spep_2+46, 10, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_2, 0, 56, 0, 30, 30, 30, 180);          -- ベース暗め　背景

playSe( spep_2, 8);
playSe( spep_2+16, 1010);

-- 流線斜め
ryusen = entryEffectLife( spep_2, 921, 56, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffScaleKey( spep_2, ryusen, 1.6, 1.0);
setEffAlphaKey( spep_2, ryusen, 255);
setEffRotateKey( spep_2, ryusen, 120);
setEffScaleKey( spep_2+58, ryusen, 1.697, 1.31);
setEffAlphaKey( spep_2+58, ryusen, 255);
setEffRotateKey( spep_2+58, ryusen, 114.2);

Punch = entryEffectLife(  spep_2,SP_03, 56,0x80,  -1,  0,  0,  0);   -- カード
setEffMoveKey(spep_2,Punch,0,0,0);
setEffMoveKey(spep_2+56,Punch,0,0,0);
setEffScaleKey(spep_2,Punch,1.0,1.0);
setEffScaleKey(spep_2+56,Punch,1.0,1.0);
setEffAlphaKey(spep_2,Punch,255);
setEffAlphaKey(spep_2+56,Punch,255);
setEffRotateKey(spep_2,Punch,0);
setEffRotateKey(spep_2+56,Punch,0);

------------------------------------------------------
-- 後ろ姿(見届ける)
------------------------------------------------------
spep_3=spep_2+58;

entryFade( spep_3-6, 3, 4, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryFadeBg( spep_3, 0, 38, 0, 30, 30, 30, 180);          -- ベース暗め　背景

setDisp( spep_3 , 1, 1 );
--setDisp( spep_3 + 20, 1, 1 );
changeAnime( spep_3 + 0, 1, 106);
setShakeChara( spep_3, 1, 38, 10); 

--changeAnime( spep_3 + 20, 1, 106);

setMoveKey( spep_3 + 0, 1, 147.2, 182.4 , 0 );
setMoveKey( spep_3 + 2, 1, 161.9, 203.2 , 0 );
setMoveKey( spep_3 + 4, 1, 168.7, 224 , 0 );
setMoveKey( spep_3 + 6, 1, 182.7, 244.8 , 0 );
setMoveKey( spep_3 + 8, 1, 190.2, 265.6 , 0 );
setMoveKey( spep_3 + 10, 1, 203.5, 286.4 , 0 );
setMoveKey( spep_3 + 12, 1, 211.7, 307.2 , 0 );
setMoveKey( spep_3 + 14, 1, 224.2, 328 , 0 );
setMoveKey( spep_3 + 16, 1, 233.2, 348.8 , 0 );
setMoveKey( spep_3 + 18, 1, 245.1, 369.6 , 0 );
setMoveKey( spep_3 + 20, 1, 246.6, 374.6 , 0 );
setMoveKey( spep_3 + 22, 1, 250.1, 379.6 , 0 );
setMoveKey( spep_3 + 24, 1, 251.7, 384.6 , 0 );
setMoveKey( spep_3 + 26, 1, 255.3, 389.6 , 0 );
setMoveKey( spep_3 + 28, 1, 256.9, 394.6 , 0 );
setMoveKey( spep_3 + 30, 1, 260.3, 399.5 , 0 );
setMoveKey( spep_3 + 32, 1, 262.1, 404.5 , 0 );
setMoveKey( spep_3 + 34, 1, 265.3, 409.5 , 0 );
setMoveKey( spep_3 + 36, 1, 267.3, 414.5 , 0 );
setMoveKey( spep_3 + 38, 1, 270.4, 419.5 , 0 );

setScaleKey( spep_3 + 0, 1, 1.45, 1.46 );
setScaleKey( spep_3 + 2, 1, 1.33, 1.34 );
setScaleKey( spep_3 + 4, 1, 1.21, 1.22 );
setScaleKey( spep_3 + 6, 1, 1.1, 1.1 );
setScaleKey( spep_3 + 8, 1, 0.98, 0.99 );
setScaleKey( spep_3 + 10, 1, 0.86, 0.87 );
setScaleKey( spep_3 + 12, 1, 0.74, 0.75 );
setScaleKey( spep_3 + 14, 1, 0.62, 0.63 );
setScaleKey( spep_3 + 16, 1, 0.5, 0.51 );
setScaleKey( spep_3 + 18, 1, 0.38, 0.39 );
setScaleKey( spep_3 + 20, 1, 0.36, 0.37 );
setScaleKey( spep_3 + 22, 1, 0.35, 0.35 );
setScaleKey( spep_3 + 24, 1, 0.33, 0.34 );
setScaleKey( spep_3 + 26, 1, 0.31, 0.32 );
setScaleKey( spep_3 + 28, 1, 0.29, 0.3 );
setScaleKey( spep_3 + 30, 1, 0.27, 0.28 );
setScaleKey( spep_3 + 32, 1, 0.25, 0.26 );
setScaleKey( spep_3 + 34, 1, 0.23, 0.24 );
setScaleKey( spep_3 + 36, 1, 0.21, 0.22 );
setScaleKey( spep_3 + 38, 1, 0.19, 0.2 );

setRotateKey( spep_3 + 0, 1, 0 );

--playSe( spep_3, 7);

kamaeru = entryEffectLife(  spep_3,SP_04,16,0x100,  -1,  0,  0,  0);
setEffScaleKey( spep_3, kamaeru, 1.0, 1.0);
setEffAlphaKey( spep_3, kamaeru, 255);
setEffMoveKey( spep_3, kamaeru,   0, 0, 0);

setEffScaleKey( spep_3+16, kamaeru, 1.0, 1.0);
setEffAlphaKey( spep_3+16, kamaeru, 255);
setEffMoveKey( spep_3+16, kamaeru,   0, 0, 0);

-- ぶっ飛ばし流線
buttobashiryusen = entryEffectLife( spep_3, 924, 38, 0x80,  -1,  0,  300,  -300); -- 流線斜め
setEffRotateKey( spep_3, buttobashiryusen, -90);
setEffScaleKey( spep_3, buttobashiryusen, 1.4, 1.4);
setEffAlphaKey( spep_3, buttobashiryusen, 255);

setEffRotateKey( spep_3+38, buttobashiryusen, -90);
setEffScaleKey( spep_3+38, buttobashiryusen, 1.4, 1.4);
setEffAlphaKey( spep_3+38, buttobashiryusen, 255);

------------------------------------------------------
-- つき(100F)
------------------------------------------------------
spep_4=spep_3+38;
entryFade( spep_4, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_4+48, 30, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_4, 0, 80, 0, 30, 30, 30, 180);          -- ベース暗め　背景

setDisp( spep_4 + 0, 1, 1 );
changeAnime( spep_4 + 0, 1, 108);

setMoveKey( spep_4 + 0, 1, -985, -1526 , 0 );
setMoveKey( spep_4 + 2, 1, -860, -1335.8 , 0 );
setMoveKey( spep_4 + 4, 1, -760.3, -1173.8 , 0 );
setMoveKey( spep_4 + 6, 1, -646.8, -1000.1 , 0 );
setMoveKey( spep_4 + 8, 1, -555.4, -850.1 , 0 );
setMoveKey( spep_4 + 10, 1, -455.3, -697.6 , 0 );
setMoveKey( spep_4 + 12, 1, -377, -566 , 0 );
setMoveKey( spep_4 + 14, 1, -285.8, -428.5 , 0 );
setMoveKey( spep_4 + 16, 1, -218.9, -314.1 , 0 );
setMoveKey( spep_4 + 18, 1, -138.4, -192.9 , 0 );
setMoveKey( spep_4 + 20, 1, -88.9, -103.5 , 0 );
setMoveKey( spep_4 + 22, 1, -24.5, -5.4 , 0 );
setMoveKey( spep_4 + 24, 1, 15.2, 68.3 , 0 );
setMoveKey( spep_4 + 26, 1, 70.3, 152.3 , 0 );
setMoveKey( spep_4 + 28, 1, 100, 210.8 , 0 );

setScaleKey( spep_4 + 0, 1, 6.01, 6.01 );
setScaleKey( spep_4 + 2, 1, 5.46, 5.46 );
setScaleKey( spep_4 + 4, 1, 4.95, 4.95 );
setScaleKey( spep_4 + 6, 1, 4.45, 4.45 );
setScaleKey( spep_4 + 8, 1, 4, 4 );
setScaleKey( spep_4 + 10, 1, 3.53, 3.53 );
setScaleKey( spep_4 + 12, 1, 3.1, 3.1 );
setScaleKey( spep_4 + 14, 1, 2.71, 2.71 );
setScaleKey( spep_4 + 16, 1, 2.33, 2.33 );
setScaleKey( spep_4 + 18, 1, 2, 2 );
setScaleKey( spep_4 + 20, 1, 1.73, 1.73 );
setScaleKey( spep_4 + 22, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 24, 1, 1.28, 1.28 );
setScaleKey( spep_4 + 26, 1, 1.08, 1.08 );
setScaleKey( spep_4 + 28, 1, 0.88, 0.88 );

setRotateKey( spep_4 + 0, 1, 0 );

Moon = entryEffectLife(  spep_4,SP_05,80,   0x100,  -1,  0,  0,  0);
setEffScaleKey( spep_4, Moon, 1.0, 1.0);
setEffAlphaKey( spep_4, Moon, 255);
setEffMoveKey( spep_4, Moon,   0, 0, 0);

setEffScaleKey( spep_4+80, Moon, 1.0, 1.0);
setEffAlphaKey( spep_4+80, Moon, 255);
setEffMoveKey( spep_4+80, Moon,   0, 0, 0);

-- ぶっ飛ばし流線
buttobashiryusentuki = entryEffectLife( spep_4, 924, 48, 0x80,  -1,  0,  300,  -300); -- 流線斜め
setEffRotateKey( spep_4, buttobashiryusentuki, -90);
setEffRotateKey( spep_4+48, buttobashiryusentuki, -90);
setEffScaleKey( spep_4, buttobashiryusentuki, 1.4, 1.4);
setEffScaleKey( spep_4+48, buttobashiryusentuki, 1.4, 1.4);
setEffAlphaKey( spep_4, buttobashiryusentuki, 255);
setEffAlphaKey( spep_4+48, buttobashiryusentuki, 255);
--setEffMoveKey( spep_4, buttobashiryusentuki,  200,  -400, 0);
--setEffMoveKey( spep_4+48, buttobashiryusentuki,  200,  -400, 0);

-- ** 集中線 ** --
ryusentuki = entryEffectLife( spep_4+30, 906, 50, 0x80,  -1,  0,  200,  350); -- 流線斜め
setEffScaleKey( spep_4+30, ryusentuki, 1.6, 1.6);
setEffAlphaKey( spep_4+30, ryusentuki, 255);

setEffScaleKey( spep_4+80, ryusentuki, 1.6, 1.6);
setEffAlphaKey( spep_4+80, ryusentuki, 255);

Bakuha = entryEffectLife(  spep_4,SP_06,78,0x80,  -1,  0,  0,  0);
setEffScaleKey( spep_4, Bakuha, 1.0, 1.0);
setEffAlphaKey( spep_4, Bakuha, 255);
setEffMoveKey( spep_4, Bakuha,   0, 0, 0);

setEffScaleKey(spep_4+78, Bakuha, 1.0, 1.0);
setEffAlphaKey(spep_4+78, Bakuha, 255);
setEffMoveKey(spep_4+78, Bakuha,   0, 0, 0);

playSe( spep_4+28, SE_10);

------------------------------------------------------
-- 溜め (110F)
------------------------------------------------------
spep_5=spep_4+80;

setDisp( spep_5, 1, 0);

entryFade( spep_5, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_5+40, 14, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_5, 0, 56, 0, 30, 30, 30, 180);          -- ベース暗め　背景

playSe( spep_5, SE_03);
playSe( spep_5+20, SE_03);
playSe( spep_5+40, SE_03);

tame = entryEffect(  spep_5,   SP_07,   0x80,  -1,  0,  0,  0);   -- カード
setEffScaleKey( spep_5, tame, 1.0, 1.0);
setEffAlphaKey( spep_5, tame, 255);
setEffMoveKey( spep_5, tame,   0, 0, 0);

-- 集中線
shuchusen6 = entryEffectLife( spep_5, 906, 100, 0x100,  -1, 0,  0,  0);
setEffScaleKey( spep_5, shuchusen6, 1.1, 1.1);
setEffAlphaKey( spep_5, shuchusen6, 255);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
spep_6=spep_5+56;

entryFade( spep_6, 0, 1, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_6+70, 16, 2, 0,fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_6, 0, 88, 0, 30, 30, 30, 180);          -- ベース暗め　背景

playSe( spep_6+5, SE_05);

speff = entryEffect(  spep_6,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);    

shuchusencard= entryEffectLife( spep_6, 906, 88, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_6, shuchusencard, 1.5, 1.5);
setEffAlphaKey( spep_6, shuchusencard, 255);
setEffRotateKey(  spep_6,  shuchusencard,  0);
setEffMoveKey(  spep_6,  shuchusencard,  0,  0);
setEffScaleKey( spep_6+88, shuchusencard, 1.5, 1.5);
setEffAlphaKey( spep_6+88, shuchusencard, 255);
setEffRotateKey(  spep_6+88,  shuchusencard,  0);
setEffMoveKey(  spep_6+88,  shuchusencard,  0,  0);

------------------------------------------------------
--発射(60F)
------------------------------------------------------
spep_7=spep_6+88;

entryFade( spep_7, 0, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_7+98, 20, 0,0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_7, 0, 118, 0, 0, 0, 0, 255);          -- ベース暗め　背景

-- 流線斜め
kame = entryEffectLife( spep_7, 921, 118, 0x80,  -1,  0,  0,  0); 
setEffRotateKey( spep_7, kame, 130);
setEffScaleKey( spep_7, kame, 1.8, 1.8);
setEffAlphaKey( spep_7, kame, 255);

setEffRotateKey( spep_7+118, kame, 130);
setEffScaleKey( spep_7+118, kame, 1.8, 1.8);
setEffAlphaKey( spep_7+118, kame, 255);

hassya = entryEffectLife(spep_7,SP_08, 118,0x80,  -1,  0,  0,  0);   -- カード
setEffScaleKey( spep_7, hassya, 1.0, 1.0);
setEffAlphaKey( spep_7, hassya, 255);
setEffMoveKey( spep_7, hassya,   0, 0, 0);

setEffScaleKey( spep_7+118, hassya, 1.0, 1.0);
setEffAlphaKey( spep_7+118, hassya, 255);
setEffMoveKey( spep_7+118, hassya,   0, 0, 0);

spname = entryEffectLife(spep_7, 1508,118,0,  -1,  0,  0,  0);-- かめはめ波文字
setEffReplaceTexture(spname, 7, 4);-- 技名テクスチャ差し替え
setEffAlphaKey( spep_7, spname, 255);
setEffAlphaKey( spep_7+118, spname, 255);

-- 集中線
shuchusen8 = entryEffectLife(spep_7,906,36, 0x100,  -1, 0,  0,  0);
setEffScaleKey( spep_7, shuchusen8, 1.1, 1.1);
setEffAlphaKey( spep_7, shuchusen8, 255);

setEffScaleKey( spep_7+36, shuchusen8, 1.1, 1.1);
setEffAlphaKey( spep_7+36, shuchusen8, 255);

-- 書き文字エントリー
ctzuo = entryEffectLife( spep_7+4, 10012, 32, 0x100, -1, 0, 100, 300);    -- ズオッ
setEffShake(spep_7+4, ctzuo, 40, 28);
setEffScaleKey(spep_7+4, ctzuo, 2.8, 2.8);
setEffRotateKey(spep_7+4, ctzuo, 30);
setEffAlphaKey( spep_7+4, ctzuo, 255);
setEffScaleKey(spep_7+36, ctzuo, 2.8, 2.8);
setEffAlphaKey( spep_7+36, ctzuo, 255);
setEffScaleKey(spep_7+36, ctzuo, 2.8, 2.8);
setEffAlphaKey( spep_7+36, ctzuo, 0);

playSe(spep_7+5,SE_07);

------------------------------------------------------
--月２(60F)
------------------------------------------------------
spep_8=spep_7+118;

entryFade( spep_8, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fad
--entryFade( spep_8+98, 20, 2,0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_8, 0, 118, 0, 0, 0, 0, 255);          -- ベース暗め　背景

--敵の動き
setDisp( spep_8, 1, 0);
setDisp( spep_8+25, 1, 1);

changeAnime( spep_8, 1, 106);                       -- 立ち

setMoveKey( spep_8 + 25, 1, 223.4, 378.7 , 0 );
setMoveKey( spep_8 + 28, 1, 223.4, 378.7 , 0 );
setMoveKey( spep_8 + 30, 1, 215.8, 387.9 , 0 );
setMoveKey( spep_8 + 32, 1, 208.8, 366 , 0 );
setMoveKey( spep_8 + 34, 1, 207.5, 365.7 , 0 );
setMoveKey( spep_8 + 36, 1, 174.2, 333.4 , 0 );
setMoveKey( spep_8 + 38, 1, 167.3, 343.5 , 0 );
setMoveKey( spep_8 + 40, 1, 159.6, 320.7 , 0 );
setMoveKey( spep_8 + 42, 1, 159.1, 321.1 , 0 );
setMoveKey( spep_8 + 44, 1, 125, 288.1 , 0 );
setMoveKey( spep_8 + 46, 1, 114.9, 278.9 , 0 );
setMoveKey( spep_8 + 48, 1, 100.5, 265.4 , 0 );
setMoveKey( spep_8 + 50, 1, 100.4, 264.4 , 0 );
setMoveKey( spep_8 + 52, 1, 95.5, 258.8 , 0 );
setMoveKey( spep_8 + 54, 1, 95.5, 257.8 , 0 );
setMoveKey( spep_8 + 56, 1, 90.5, 252.2 , 0 );
setMoveKey( spep_8 + 58, 1, 90.6, 251.3 , 0 );
setMoveKey( spep_8 + 60, 1, 85.5, 245.5 , 0 );
setMoveKey( spep_8 + 62, 1, 85.6, 244.7 , 0 );
setMoveKey( spep_8 + 64, 1, 80.5, 238.9 , 0 );
setMoveKey( spep_8 + 66, 1, 80.6, 238 , 0 );
setMoveKey( spep_8 + 68, 1, 75.6, 232.2 , 0 );
setMoveKey( spep_8 + 70, 1, 75.8, 231.4 , 0 );
setMoveKey( spep_8 + 72, 1, 70.6, 225.6 , 0 );
setMoveKey( spep_8 + 74, 1, 70.8, 224.9 , 0 );
setMoveKey( spep_8 + 76, 1, 65.6, 218.9 , 0 );
setMoveKey( spep_8 + 78, 1, 65.9, 218.3 , 0 );
setMoveKey( spep_8 + 80, 1, 61.5, 213.4 , 0 );
setMoveKey( spep_8 + 82, 1, 62.9, 213.9 , 0 );
setMoveKey( spep_8 + 84, 1, 58.6, 209 , 0 );
setMoveKey( spep_8 + 86, 1, 60, 209.6 , 0 );
setMoveKey( spep_8 + 88, 1, 55.6, 204.7 , 0 );
setMoveKey( spep_8 + 90, 1, 57, 205.3 , 0 );
setMoveKey( spep_8 + 92, 1, 52.5, 200.3 , 0 );
setMoveKey( spep_8 + 94, 1, 54.1, 201 , 0 );
setMoveKey( spep_8 + 96, 1, 49.6, 195.9 , 0 );
setMoveKey( spep_8 + 98, 1, 51.2, 196.7 , 0 );
setMoveKey( spep_8 + 100, 1, 46.6, 191.6 , 0 );
setMoveKey( spep_8 + 102, 1, 48.2, 192.3 , 0 );
setMoveKey( spep_8 + 104, 1, 43.6, 187.2 , 0 );
setMoveKey( spep_8 + 106, 1, 45.3, 188.1 , 0 );
setMoveKey( spep_8 + 108, 1, 40.6, 182.8 , 0 );
setMoveKey( spep_8 + 110, 1, 42.3, 183.8 , 0 );
setMoveKey( spep_8 + 112, 1, 37.6, 178.5 , 0 );
setMoveKey( spep_8 + 114, 1, 39.4, 179.4 , 0 );
setMoveKey( spep_8 + 116, 1, 34.7, 174.1 , 0 );
setMoveKey( spep_8 + 118, 1, 36.5, 175.1 , 0 );

setScaleKey( spep_8 + 28, 1, 0.23, 0.23 );
setScaleKey( spep_8 + 30, 1, 0.32, 0.32 );
setScaleKey( spep_8 + 32, 1, 0.41, 0.41 );
setScaleKey( spep_8 + 34, 1, 0.49, 0.49 );
setScaleKey( spep_8 + 36, 1, 0.58, 0.58 );
setScaleKey( spep_8 + 38, 1, 0.67, 0.67 );
setScaleKey( spep_8 + 40, 1, 0.76, 0.76 );
setScaleKey( spep_8 + 42, 1, 0.84, 0.84 );
setScaleKey( spep_8 + 44, 1, 0.93, 0.93 );
setScaleKey( spep_8 + 46, 1, 1.02, 1.02 );
setScaleKey( spep_8 + 48, 1, 1.11, 1.11 );
setScaleKey( spep_8 + 50, 1, 1.12, 1.12 );
setScaleKey( spep_8 + 52, 1, 1.13, 1.13 );
setScaleKey( spep_8 + 54, 1, 1.14, 1.14 );
setScaleKey( spep_8 + 56, 1, 1.15, 1.15 );
setScaleKey( spep_8 + 58, 1, 1.16, 1.16 );
setScaleKey( spep_8 + 60, 1, 1.18, 1.18 );
setScaleKey( spep_8 + 62, 1, 1.18, 1.18 );
setScaleKey( spep_8 + 64, 1, 1.2, 1.2 );
setScaleKey( spep_8 + 66, 1, 1.21, 1.21 );
setScaleKey( spep_8 + 68, 1, 1.22, 1.22 );
setScaleKey( spep_8 + 70, 1, 1.23, 1.23 );
setScaleKey( spep_8 + 72, 1, 1.24, 1.24 );
setScaleKey( spep_8 + 74, 1, 1.25, 1.25 );
setScaleKey( spep_8 + 76, 1, 1.27, 1.27 );
setScaleKey( spep_8 + 78, 1, 1.27, 1.27 );
setScaleKey( spep_8 + 80, 1, 1.29, 1.29 );
setScaleKey( spep_8 + 82, 1, 1.3, 1.3 );
setScaleKey( spep_8 + 84, 1, 1.31, 1.31 );
setScaleKey( spep_8 + 86, 1, 1.33, 1.33 );
setScaleKey( spep_8 + 88, 1, 1.34, 1.34 );
setScaleKey( spep_8 + 90, 1, 1.36, 1.36 );
setScaleKey( spep_8 + 92, 1, 1.37, 1.37 );
setScaleKey( spep_8 + 94, 1, 1.39, 1.39 );
setScaleKey( spep_8 + 96, 1, 1.39, 1.39 );
setScaleKey( spep_8 + 98, 1, 1.41, 1.41 );
setScaleKey( spep_8 + 100, 1, 1.42, 1.42 );
setScaleKey( spep_8 + 102, 1, 1.44, 1.44 );
setScaleKey( spep_8 + 104, 1, 1.45, 1.45 );
setScaleKey( spep_8 + 106, 1, 1.46, 1.46 );
setScaleKey( spep_8 + 108, 1, 1.48, 1.48 );
setScaleKey( spep_8 + 110, 1, 1.49, 1.49 );
setScaleKey( spep_8 + 112, 1, 1.5, 1.5 );
setScaleKey( spep_8 + 114, 1, 1.52, 1.52 );
setScaleKey( spep_8 + 116, 1, 1.53, 1.53 );
setScaleKey( spep_8 + 118, 1, 1.54, 1.54 );

setRotateKey( spep_8 + 28, 1, -43.7 );

--　ぶっ飛ばし流線
buttobashiryusentuki9 = entryEffectLife( spep_8, 924, 118, 0x80,  -1,  0,  300,  -300);
setEffRotateKey( spep_8, buttobashiryusentuki9, -90);
setEffScaleKey( spep_8, buttobashiryusentuki9, 1.5, 1.5);
setEffAlphaKey( spep_8, buttobashiryusentuki9, 255);
--setEffMoveKey( spep_8, buttobashiryusentuki9,  300,  -400, 0);

setEffRotateKey( spep_8+118, buttobashiryusentuki9, -90);
setEffScaleKey( spep_8+118, buttobashiryusentuki9, 1.5, 1.5);
setEffAlphaKey( spep_8+118, buttobashiryusentuki9, 255);
setEffMoveKey( spep_8+118, buttobashiryusentuki9,  300,  -400, 0);

tuskituski = entryEffectLife(  spep_8,   SP_10,118,   0x80,  -1,  0,  0,  0);   -- カード
setEffScaleKey( spep_8, tuskituski, 1.0, 1.0);
setEffAlphaKey( spep_8, tuskituski, 255);
setEffMoveKey( spep_8, tuskituski,   0, 0, 0);

setEffScaleKey( spep_8+118, tuskituski, 1.0, 1.0);
setEffAlphaKey( spep_8+118, tuskituski, 255);
setEffMoveKey( spep_8+118, tuskituski,   0, 0, 0);

tukihassya = entryEffectLife(  spep_8,   SP_09,118,   0x100,  -1,  0,  0,  0);   -- カード
setEffScaleKey( spep_8, tukihassya, 1.0, 1.0);
setEffAlphaKey( spep_8, tukihassya, 255);
setEffMoveKey( spep_8, tukihassya,   0, 0, 0);

setEffScaleKey( spep_8+118, tukihassya, 1.0, 1.0);
setEffAlphaKey( spep_8+118, tukihassya, 255);
setEffMoveKey( spep_8+118, tukihassya,   0, 0, 0);

playSe( spep_8, SE_07);


shuchusenumae= entryEffectLife( spep_8+80, 906, 38, 0x100,  -1, 0,  -50, 0);   -- 集中線
setEffScaleKey( spep_8+80, shuchusenumae, 1.4, 1.4);
setEffAlphaKey( spep_8+80, shuchusenumae, 255);
setEffRotateKey(  spep_8+80,  shuchusenumae,  0);

------------------------------------------------------
--ギャン(58F)
------------------------------------------------------
spep_9=spep_8+118;

entryFade( spep_9-14, 10, 5,3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp( spep_9, 1, 0);

playSe( spep_9+8, 1024);

gyan=entryEffectLife(  spep_9,  190000,  58, 0,  -1,  0,  0,  0);
setEffScaleKey( spep_9, gyan, 1.0, 1.0);
setEffAlphaKey( spep_9, gyan, 255);
setEffMoveKey( spep_9, gyan,   0, 0, 0);

setEffScaleKey( spep_9+58, gyan, 1.0, 1.0);
setEffAlphaKey( spep_9+58, gyan, 255);
setEffMoveKey( spep_9+58, gyan,   0, 0, 0);

ctgyan = entryEffectLife( spep_9, 10006, 58, 0x100, -1, 0, 0, 400);    -- ギャン

setEffAlphaKey( spep_9, ctgyan, 255);
setEffScaleKey( spep_9, ctgyan, 3.0, 3.0);
setEffScaleKey( spep_9+58, ctgyan, 4.0, 4.0);
setEffAlphaKey( spep_9, ctgyan, 255);
setEffAlphaKey( spep_9+58, ctgyan, 0);
setEffShake( spep_9, ctgyan, 58, 8);

------------------------------------------------------
--終了
------------------------------------------------------
spep_10=spep_9+58;
entryFadeBg( spep_10, 0, 110, 0, 10, 10, 10, 180);          -- ベース暗め　背景

tukkomu11 = entryEffect(  spep_10,   SP_11,   0,  -1,  0,  0,  0);   -- カード
setEffScaleKey( spep_10, tukkomu11, 1.0, 1.0);
setEffAlphaKey( spep_10, tukkomu11, 255);
setEffMoveKey( spep_10, tukkomu11,   0, 0, 0);

shuchusenketta = entryEffectLife( spep_10, 906, 110, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_10, shuchusenketta, 1.3, 1.3);
setEffAlphaKey( spep_10, shuchusenketta, 255);

playSe( spep_10+5, SE_10);

-- ダメージ表示
dealDamage(spep_10+5);

entryFade( spep_10+90, 15, 10, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--entryFade( spep_10+100, 9,  10, 1, fcolor_r, fcolor_g, fcolor_b, 255);    

endPhase(spep_10+110);

else


-----------------------------------------
--敵側の攻撃
-----------------------------------------
------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------

spep_0=0;

entryFade( spep_0, 0, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fadeスタート
entryFadeBg( spep_0, 0, 98, 0, 0, 0, 0, 210);          -- ベース暗め　背景

Kidame=entryEffectLife(spep_0,SP_01,98,0x80,-1,0,0,0);

setEffMoveKey(spep_0,Kidame,0,0,0);
setEffMoveKey(spep_0+98,Kidame,0,0,0);
setEffScaleKey(spep_0,Kidame,1.0,1.0);
setEffScaleKey(spep_0+98,Kidame,1.0,1.0);
setEffAlphaKey(spep_0,Kidame,255);
setEffAlphaKey(spep_0+98,Kidame,255);
setEffRotateKey(spep_0,Kidame,0);
setEffRotateKey(spep_0+98,Kidame,0);

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0, 906, 98, 0x100,  -1, 0,  0,  0); -- 集中線
setEffMoveKey( spep_0, shuchusen1, 0, 0, 0);
setEffScaleKey( spep_0, shuchusen1, 1.0, 1.0);
setEffAlphaKey( spep_0, shuchusen1, 255);
setEffRotateKey( spep_0, shuchusen1, 0);

setEffMoveKey( spep_0+98, shuchusen1, 0, 0, 0);
setEffScaleKey( spep_0+98, shuchusen1, 1.0, 1.0);
setEffAlphaKey( spep_0+98, shuchusen1, 255);
setEffRotateKey( spep_0+98, shuchusen1, 0);

-- 書き文字エントリー　ゴゴゴ --
ct_gogogo = entryEffectLife( spep_0+20, 190006, 70, 0x100, -1, 0, 0, 500);    -- ゴゴゴゴ
setEffShake( spep_0+20, ct_gogogo, 70, 20);
setEffScaleKey( spep_0+20, ct_gogogo, -0.7, 0.7);
setEffRotateKey( spep_0+20, ct_gogogo, 10);
setEffAlphaKey( spep_0+20, ct_gogogo, 255);

--speff = entryEffect(  spep_0+10,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  spep_0+10,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

--playSe( spep_0, SE_01);
playSe( spep_0+14, SE_04);


------------------------------------------------------
--突っ込む(60F)
------------------------------------------------------
spep_1=spep_0+96;

entryFade( spep_1-2, 2, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_1+40, 16, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_1, 0, 58, 0, 0, 0, 0, 210);          -- ベース暗め　背景

Tukkomu=entryEffectLife(spep_1,SP_02,58,0x80,-1,0,0,0);

setEffMoveKey(spep_1,Tukkomu,0,0,0);
setEffMoveKey(spep_1+58,Tukkomu,0,0,0);
setEffScaleKey(spep_1,Tukkomu,1.0,1.0);
setEffScaleKey(spep_1+58,Tukkomue,1.0,1.0);
setEffAlphaKey(spep_1,Tukkomu,255);
setEffAlphaKey(spep_1+58,Tukkomu,255);
setEffRotateKey(spep_1,Tukkomu,0);
setEffRotateKey(spep_1+58,Tukkomu,0);

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_1, 906, 58, 0x100,  -1, 0,  0,  0); -- 集中線
setEffMoveKey( spep_1, shuchusen2, 0, 0, 0);
setEffScaleKey( spep_1, shuchusen2, 1.2, 1.2);
setEffAlphaKey( spep_1, shuchusen2, 255);
setEffRotateKey( spep_1, shuchusen2, 0);

setEffMoveKey( spep_1+58, shuchusen2, 0, 0, 0);
setEffScaleKey( spep_1+58, shuchusen2, 1.4, 1.4);
setEffAlphaKey( spep_1+58, shuchusen2, 255);
setEffRotateKey( spep_1+58, shuchusen2, 0);

playSe( spep_1, 9);

------------------------------------------------------
-- 回避
------------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge = 134; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(   SP_dodge+10,   0,    0, -2000,   0);

endPhase(SP_dodge+10);

do return end
else end
------------------------------------------------------
--パンチ(90F)
------------------------------------------------------
spep_2=spep_1+58;

--敵の動き--
setDisp( spep_2 + 0, 1, 1 );
changeAnime( spep_2 + 0, 1, 102);
setShakeChara( spep_2, 1, 16, 5); 

changeAnime( spep_2 + 16, 1, 107);
setShakeChara( spep_2+16, 1, 42, 10); 

setScaleKey( spep_2,   1, 1.7, 1.7);
setMoveKey( spep_2,   1,    120, 200,   0);
changeAnime( spep_2, 1, 102);                       -- 立ち
setDisp( spep_2, 1, 1);

setMoveKey( spep_2 + 0, 1, 144.7, 239.5 , 0 );
setMoveKey( spep_2 + 2, 1, 152.4, 247.1 , 0 );
setMoveKey( spep_2 + 4, 1, 142.2, 238.7 , 0 );
setMoveKey( spep_2 + 6, 1, 148, 242.2 , 0 );
setMoveKey( spep_2 + 8, 1, 137.8, 233.8 , 0 );
setMoveKey( spep_2 + 10, 1, 143.5, 237.3 , 0 );
setMoveKey( spep_2 + 12, 1, 133.3, 228.9 , 0 );
setMoveKey( spep_2 + 14, 1, 139.1, 232.4 , 0 );
setMoveKey( spep_2 + 16, 1, 128.9, 224 , 0 );
setMoveKey( spep_2 + 19, 1, 134.7, 227.5 , 0 );
setMoveKey( spep_2 + 20, 1, 146.4, 261.7 , 0 );
setMoveKey( spep_2 + 22, 1, 158.7, 272.8 , 0 );
setMoveKey( spep_2 + 24, 1, 155, 271.8 , 0 );
setMoveKey( spep_2 + 26, 1, 167.3, 282.9 , 0 );
setMoveKey( spep_2 + 28, 1, 163.6, 281.9 , 0 );
setMoveKey( spep_2 + 30, 1, 175.9, 293 , 0 );
setMoveKey( spep_2 + 32, 1, 172.2, 292 , 0 );
setMoveKey( spep_2 + 34, 1, 184.6, 303.1 , 0 );
setMoveKey( spep_2 + 36, 1, 180.9, 302.1 , 0 );
setMoveKey( spep_2 + 38, 1, 193.2, 313.2 , 0 );
setMoveKey( spep_2 + 40, 1, 187.5, 308.3 , 0 );
setMoveKey( spep_2 + 42, 1, 201.8, 323.3 , 0 );
setMoveKey( spep_2 + 44, 1, 198.1, 322.4 , 0 );
setMoveKey( spep_2 + 46, 1, 210.5, 333.4 , 0 );
setMoveKey( spep_2 + 48, 1, 206.8, 332.5 , 0 );
setMoveKey( spep_2 + 50, 1, 219.1, 343.5 , 0 );
setMoveKey( spep_2 + 52, 1, 215.4, 342.6 , 0 );
setMoveKey( spep_2 + 54, 1, 227.7, 353.6 , 0 );
setMoveKey( spep_2 + 56, 1, 224, 352.7 , 0 );
--setMoveKey( spep_2 + 58, 1, 236.4, 363.7 , 0 );

setScaleKey( spep_2 + 0, 1, 1.57, 1.57 );
setScaleKey( spep_2 + 2, 1, 1.58, 1.58 );
setScaleKey( spep_2 + 16, 1, 1.58, 1.58 );
setScaleKey( spep_2 + 17, 1, 1, 1 );
setScaleKey( spep_2 + 20, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 22, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 24, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 26, 1, 1.14, 1.14 );
setScaleKey( spep_2 + 28, 1, 1.18, 1.18 );
setScaleKey( spep_2 + 30, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 32, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 34, 1, 1.28, 1.28 );
setScaleKey( spep_2 + 36, 1, 1.32, 1.32 );
setScaleKey( spep_2 + 38, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 40, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 42, 1, 1.42, 1.42 );
setScaleKey( spep_2 + 44, 1, 1.45, 1.45 );
setScaleKey( spep_2 + 46, 1, 1.49, 1.49 );
setScaleKey( spep_2 + 48, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 50, 1, 1.56, 1.56 );
setScaleKey( spep_2 + 52, 1, 1.59, 1.59 );
setScaleKey( spep_2 + 58, 1, 1.63, 1.63 );
--setScaleKey( spep_2 + 58, 1, 1.66, 1.66 );

setRotateKey( spep_2 + 0, 1, -18 );
setRotateKey( spep_2 + 19, 1, -18 );
setRotateKey( spep_2 + 20, 1, 0 );

entryFade( spep_2-4, 3, 4, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--entryFade( spep_2+46, 10, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_2, 0, 56, 0, 30, 30, 30, 180);          -- ベース暗め　背景

playSe( spep_2, 8);
playSe( spep_2+16, 1010);

-- 流線斜め
ryusen = entryEffectLife( spep_2, 921, 56, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffScaleKey( spep_2, ryusen, 1.6, 1.0);
setEffAlphaKey( spep_2, ryusen, 255);
setEffRotateKey( spep_2, ryusen, 120);
setEffScaleKey( spep_2+58, ryusen, 1.697, 1.31);
setEffAlphaKey( spep_2+58, ryusen, 255);
setEffRotateKey( spep_2+58, ryusen, 114.2);

Punch = entryEffectLife(  spep_2,SP_03, 56,0x80,  -1,  0,  0,  0);   -- カード
setEffMoveKey(spep_2,Punch,0,0,0);
setEffMoveKey(spep_2+56,Punch,0,0,0);
setEffScaleKey(spep_2,Punch,1.0,1.0);
setEffScaleKey(spep_2+56,Punch,1.0,1.0);
setEffAlphaKey(spep_2,Punch,255);
setEffAlphaKey(spep_2+56,Punch,255);
setEffRotateKey(spep_2,Punch,0);
setEffRotateKey(spep_2+56,Punch,0);

------------------------------------------------------
-- 後ろ姿(見届ける)
------------------------------------------------------
spep_3=spep_2+58;

entryFade( spep_3-6, 3, 4, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryFadeBg( spep_3, 0, 38, 0, 30, 30, 30, 180);          -- ベース暗め　背景

setDisp( spep_3 , 1, 1 );
--setDisp( spep_3 + 20, 1, 1 );
changeAnime( spep_3 + 0, 1, 106);
setShakeChara( spep_3, 1, 38, 10); 

--changeAnime( spep_3 + 20, 1, 106);

setMoveKey( spep_3 + 0, 1, 147.2, 182.4 , 0 );
setMoveKey( spep_3 + 2, 1, 161.9, 203.2 , 0 );
setMoveKey( spep_3 + 4, 1, 168.7, 224 , 0 );
setMoveKey( spep_3 + 6, 1, 182.7, 244.8 , 0 );
setMoveKey( spep_3 + 8, 1, 190.2, 265.6 , 0 );
setMoveKey( spep_3 + 10, 1, 203.5, 286.4 , 0 );
setMoveKey( spep_3 + 12, 1, 211.7, 307.2 , 0 );
setMoveKey( spep_3 + 14, 1, 224.2, 328 , 0 );
setMoveKey( spep_3 + 16, 1, 233.2, 348.8 , 0 );
setMoveKey( spep_3 + 18, 1, 245.1, 369.6 , 0 );
setMoveKey( spep_3 + 20, 1, 246.6, 374.6 , 0 );
setMoveKey( spep_3 + 22, 1, 250.1, 379.6 , 0 );
setMoveKey( spep_3 + 24, 1, 251.7, 384.6 , 0 );
setMoveKey( spep_3 + 26, 1, 255.3, 389.6 , 0 );
setMoveKey( spep_3 + 28, 1, 256.9, 394.6 , 0 );
setMoveKey( spep_3 + 30, 1, 260.3, 399.5 , 0 );
setMoveKey( spep_3 + 32, 1, 262.1, 404.5 , 0 );
setMoveKey( spep_3 + 34, 1, 265.3, 409.5 , 0 );
setMoveKey( spep_3 + 36, 1, 267.3, 414.5 , 0 );
setMoveKey( spep_3 + 38, 1, 270.4, 419.5 , 0 );

setScaleKey( spep_3 + 0, 1, 1.45, 1.46 );
setScaleKey( spep_3 + 2, 1, 1.33, 1.34 );
setScaleKey( spep_3 + 4, 1, 1.21, 1.22 );
setScaleKey( spep_3 + 6, 1, 1.1, 1.1 );
setScaleKey( spep_3 + 8, 1, 0.98, 0.99 );
setScaleKey( spep_3 + 10, 1, 0.86, 0.87 );
setScaleKey( spep_3 + 12, 1, 0.74, 0.75 );
setScaleKey( spep_3 + 14, 1, 0.62, 0.63 );
setScaleKey( spep_3 + 16, 1, 0.5, 0.51 );
setScaleKey( spep_3 + 18, 1, 0.38, 0.39 );
setScaleKey( spep_3 + 20, 1, 0.36, 0.37 );
setScaleKey( spep_3 + 22, 1, 0.35, 0.35 );
setScaleKey( spep_3 + 24, 1, 0.33, 0.34 );
setScaleKey( spep_3 + 26, 1, 0.31, 0.32 );
setScaleKey( spep_3 + 28, 1, 0.29, 0.3 );
setScaleKey( spep_3 + 30, 1, 0.27, 0.28 );
setScaleKey( spep_3 + 32, 1, 0.25, 0.26 );
setScaleKey( spep_3 + 34, 1, 0.23, 0.24 );
setScaleKey( spep_3 + 36, 1, 0.21, 0.22 );
setScaleKey( spep_3 + 38, 1, 0.19, 0.2 );

setRotateKey( spep_3 + 0, 1, 0 );

--playSe( spep_3, 7);

kamaeru = entryEffectLife(  spep_3,SP_04,16,0x100,  -1,  0,  0,  0);
setEffScaleKey( spep_3, kamaeru, 1.0, 1.0);
setEffAlphaKey( spep_3, kamaeru, 255);
setEffMoveKey( spep_3, kamaeru,   0, 0, 0);

setEffScaleKey( spep_3+16, kamaeru, 1.0, 1.0);
setEffAlphaKey( spep_3+16, kamaeru, 255);
setEffMoveKey( spep_3+16, kamaeru,   0, 0, 0);

-- ぶっ飛ばし流線
buttobashiryusen = entryEffectLife( spep_3, 924, 38, 0x80,  -1,  0,  300,  -300); -- 流線斜め
setEffRotateKey( spep_3, buttobashiryusen, -90);
setEffScaleKey( spep_3, buttobashiryusen, 1.4, 1.4);
setEffAlphaKey( spep_3, buttobashiryusen, 255);

setEffRotateKey( spep_3+38, buttobashiryusen, -90);
setEffScaleKey( spep_3+38, buttobashiryusen, 1.4, 1.4);
setEffAlphaKey( spep_3+38, buttobashiryusen, 255);

------------------------------------------------------
-- つき(100F)
------------------------------------------------------
spep_4=spep_3+38;
entryFade( spep_4, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_4+48, 30, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_4, 0, 80, 0, 30, 30, 30, 180);          -- ベース暗め　背景

setDisp( spep_4 + 0, 1, 1 );
changeAnime( spep_4 + 0, 1, 108);

setMoveKey( spep_4 + 0, 1, -985, -1526 , 0 );
setMoveKey( spep_4 + 2, 1, -860, -1335.8 , 0 );
setMoveKey( spep_4 + 4, 1, -760.3, -1173.8 , 0 );
setMoveKey( spep_4 + 6, 1, -646.8, -1000.1 , 0 );
setMoveKey( spep_4 + 8, 1, -555.4, -850.1 , 0 );
setMoveKey( spep_4 + 10, 1, -455.3, -697.6 , 0 );
setMoveKey( spep_4 + 12, 1, -377, -566 , 0 );
setMoveKey( spep_4 + 14, 1, -285.8, -428.5 , 0 );
setMoveKey( spep_4 + 16, 1, -218.9, -314.1 , 0 );
setMoveKey( spep_4 + 18, 1, -138.4, -192.9 , 0 );
setMoveKey( spep_4 + 20, 1, -88.9, -103.5 , 0 );
setMoveKey( spep_4 + 22, 1, -24.5, -5.4 , 0 );
setMoveKey( spep_4 + 24, 1, 15.2, 68.3 , 0 );
setMoveKey( spep_4 + 26, 1, 70.3, 152.3 , 0 );
setMoveKey( spep_4 + 28, 1, 100, 210.8 , 0 );

setScaleKey( spep_4 + 0, 1, 6.01, 6.01 );
setScaleKey( spep_4 + 2, 1, 5.46, 5.46 );
setScaleKey( spep_4 + 4, 1, 4.95, 4.95 );
setScaleKey( spep_4 + 6, 1, 4.45, 4.45 );
setScaleKey( spep_4 + 8, 1, 4, 4 );
setScaleKey( spep_4 + 10, 1, 3.53, 3.53 );
setScaleKey( spep_4 + 12, 1, 3.1, 3.1 );
setScaleKey( spep_4 + 14, 1, 2.71, 2.71 );
setScaleKey( spep_4 + 16, 1, 2.33, 2.33 );
setScaleKey( spep_4 + 18, 1, 2, 2 );
setScaleKey( spep_4 + 20, 1, 1.73, 1.73 );
setScaleKey( spep_4 + 22, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 24, 1, 1.28, 1.28 );
setScaleKey( spep_4 + 26, 1, 1.08, 1.08 );
setScaleKey( spep_4 + 28, 1, 0.88, 0.88 );

setRotateKey( spep_4 + 0, 1, 0 );

Moon = entryEffectLife(  spep_4,SP_05,80,   0x100,  -1,  0,  0,  0);
setEffScaleKey( spep_4, Moon, 1.0, 1.0);
setEffAlphaKey( spep_4, Moon, 255);
setEffMoveKey( spep_4, Moon,   0, 0, 0);

setEffScaleKey( spep_4+80, Moon, 1.0, 1.0);
setEffAlphaKey( spep_4+80, Moon, 255);
setEffMoveKey( spep_4+80, Moon,   0, 0, 0);

-- ぶっ飛ばし流線
buttobashiryusentuki = entryEffectLife( spep_4, 924, 48, 0x80,  -1,  0,  300,  -300); -- 流線斜め
setEffRotateKey( spep_4, buttobashiryusentuki, -90);
setEffRotateKey( spep_4+48, buttobashiryusentuki, -90);
setEffScaleKey( spep_4, buttobashiryusentuki, 1.4, 1.4);
setEffScaleKey( spep_4+48, buttobashiryusentuki, 1.4, 1.4);
setEffAlphaKey( spep_4, buttobashiryusentuki, 255);
setEffAlphaKey( spep_4+48, buttobashiryusentuki, 255);
--setEffMoveKey( spep_4, buttobashiryusentuki,  200,  -400, 0);
--setEffMoveKey( spep_4+48, buttobashiryusentuki,  200,  -400, 0);

-- ** 集中線 ** --
ryusentuki = entryEffectLife( spep_4+30, 906, 50, 0x80,  -1,  0,  200,  350); -- 流線斜め
setEffScaleKey( spep_4+30, ryusentuki, 1.6, 1.6);
setEffAlphaKey( spep_4+30, ryusentuki, 255);

setEffScaleKey( spep_4+80, ryusentuki, 1.6, 1.6);
setEffAlphaKey( spep_4+80, ryusentuki, 255);

Bakuha = entryEffectLife(  spep_4,SP_06,78,0x80,  -1,  0,  0,  0);
setEffScaleKey( spep_4, Bakuha, 1.0, 1.0);
setEffAlphaKey( spep_4, Bakuha, 255);
setEffMoveKey( spep_4, Bakuha,   0, 0, 0);

setEffScaleKey(spep_4+78, Bakuha, 1.0, 1.0);
setEffAlphaKey(spep_4+78, Bakuha, 255);
setEffMoveKey(spep_4+78, Bakuha,   0, 0, 0);

playSe( spep_4+28, SE_10);

------------------------------------------------------
-- 溜め (110F)
------------------------------------------------------
spep_5=spep_4+80;

setDisp( spep_5, 1, 0);

entryFade( spep_5, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_5+40, 14, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_5, 0, 56, 0, 30, 30, 30, 180);          -- ベース暗め　背景

playSe( spep_5, SE_03);
playSe( spep_5+20, SE_03);
playSe( spep_5+40, SE_03);

tame = entryEffect(  spep_5,   SP_07x,   0x80,  -1,  0,  0,  0);   -- カード
setEffScaleKey( spep_5, tame, 1.0, 1.0);
setEffAlphaKey( spep_5, tame, 255);
setEffMoveKey( spep_5, tame,   0, 0, 0);

-- 集中線
shuchusen6 = entryEffectLife( spep_5, 906, 100, 0x100,  -1, 0,  0,  0);
setEffScaleKey( spep_5, shuchusen6, 1.1, 1.1);
setEffAlphaKey( spep_5, shuchusen6, 255);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
spep_6=spep_5+56;

entryFade( spep_6, 0, 1, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_6+70, 16, 2, 0,fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_6, 0, 88, 0, 30, 30, 30, 180);          -- ベース暗め　背景

playSe( spep_6+5, SE_05);

speff = entryEffect(  spep_6,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);    

shuchusencard= entryEffectLife( spep_6, 906, 88, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_6, shuchusencard, 1.5, 1.5);
setEffAlphaKey( spep_6, shuchusencard, 255);
setEffRotateKey(  spep_6,  shuchusencard,  0);
setEffMoveKey(  spep_6,  shuchusencard,  0,  0);
setEffScaleKey( spep_6+88, shuchusencard, 1.5, 1.5);
setEffAlphaKey( spep_6+88, shuchusencard, 255);
setEffRotateKey(  spep_6+88,  shuchusencard,  0);
setEffMoveKey(  spep_6+88,  shuchusencard,  0,  0);

------------------------------------------------------
--発射(60F)
------------------------------------------------------
spep_7=spep_6+88;

entryFade( spep_7, 0, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_7+98, 20, 0,0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_7, 0, 118, 0, 0, 0, 0, 255);          -- ベース暗め　背景

-- 流線斜め
kame = entryEffectLife( spep_7, 921, 118, 0x80,  -1,  0,  0,  0); 
setEffRotateKey( spep_7, kame, 130);
setEffScaleKey( spep_7, kame, 1.8, 1.8);
setEffAlphaKey( spep_7, kame, 255);

setEffRotateKey( spep_7+118, kame, 130);
setEffScaleKey( spep_7+118, kame, 1.8, 1.8);
setEffAlphaKey( spep_7+118, kame, 255);

hassya = entryEffectLife(spep_7,SP_08x, 118,0x80,  -1,  0,  0,  0);   -- カード
setEffScaleKey( spep_7, hassya, 1.0, 1.0);
setEffAlphaKey( spep_7, hassya, 255);
setEffMoveKey( spep_7, hassya,   0, 0, 0);

setEffScaleKey( spep_7+118, hassya, 1.0, 1.0);
setEffAlphaKey( spep_7+118, hassya, 255);
setEffMoveKey( spep_7+118, hassya,   0, 0, 0);

spname = entryEffectLife(spep_7, 1508,118,0,  -1,  0,  0,  0);-- かめはめ波文字
setEffReplaceTexture(spname, 7, 4);-- 技名テクスチャ差し替え
setEffAlphaKey( spep_7, spname, 255);
setEffAlphaKey( spep_7+118, spname, 255);

-- 集中線
shuchusen8 = entryEffectLife(spep_7,906,36, 0x100,  -1, 0,  0,  0);
setEffScaleKey( spep_7, shuchusen8, 1.1, 1.1);
setEffAlphaKey( spep_7, shuchusen8, 255);

setEffScaleKey( spep_7+36, shuchusen8, 1.1, 1.1);
setEffAlphaKey( spep_7+36, shuchusen8, 255);

-- 書き文字エントリー
ctzuo = entryEffectLife( spep_7+4, 10012, 32, 0x100, -1, 0, 100, 300);    -- ズオッ
setEffShake(spep_7+4, ctzuo, 40, 28);
setEffScaleKey(spep_7+4, ctzuo, 2.8, 2.8);
setEffRotateKey(spep_7+4, ctzuo, 0);
setEffAlphaKey( spep_7+4, ctzuo, 255);
setEffScaleKey(spep_7+36, ctzuo, 2.8, 2.8);
setEffAlphaKey( spep_7+36, ctzuo, 255);
setEffScaleKey(spep_7+36, ctzuo, 2.8, 2.8);
setEffAlphaKey( spep_7+36, ctzuo, 0);

playSe(spep_7+5,SE_07);

------------------------------------------------------
--月２(60F)
------------------------------------------------------
spep_8=spep_7+118;

entryFade( spep_8, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fad
--entryFade( spep_8+98, 20, 2,0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_8, 0, 118, 0, 0, 0, 0, 255);          -- ベース暗め　背景

--敵の動き
setDisp( spep_8, 1, 0);
setDisp( spep_8+25, 1, 1);

changeAnime( spep_8, 1, 106);                       -- 立ち

setMoveKey( spep_8 + 25, 1, 223.4, 378.7 , 0 );
setMoveKey( spep_8 + 28, 1, 223.4, 378.7 , 0 );
setMoveKey( spep_8 + 30, 1, 215.8, 387.9 , 0 );
setMoveKey( spep_8 + 32, 1, 208.8, 366 , 0 );
setMoveKey( spep_8 + 34, 1, 207.5, 365.7 , 0 );
setMoveKey( spep_8 + 36, 1, 174.2, 333.4 , 0 );
setMoveKey( spep_8 + 38, 1, 167.3, 343.5 , 0 );
setMoveKey( spep_8 + 40, 1, 159.6, 320.7 , 0 );
setMoveKey( spep_8 + 42, 1, 159.1, 321.1 , 0 );
setMoveKey( spep_8 + 44, 1, 125, 288.1 , 0 );
setMoveKey( spep_8 + 46, 1, 114.9, 278.9 , 0 );
setMoveKey( spep_8 + 48, 1, 100.5, 265.4 , 0 );
setMoveKey( spep_8 + 50, 1, 100.4, 264.4 , 0 );
setMoveKey( spep_8 + 52, 1, 95.5, 258.8 , 0 );
setMoveKey( spep_8 + 54, 1, 95.5, 257.8 , 0 );
setMoveKey( spep_8 + 56, 1, 90.5, 252.2 , 0 );
setMoveKey( spep_8 + 58, 1, 90.6, 251.3 , 0 );
setMoveKey( spep_8 + 60, 1, 85.5, 245.5 , 0 );
setMoveKey( spep_8 + 62, 1, 85.6, 244.7 , 0 );
setMoveKey( spep_8 + 64, 1, 80.5, 238.9 , 0 );
setMoveKey( spep_8 + 66, 1, 80.6, 238 , 0 );
setMoveKey( spep_8 + 68, 1, 75.6, 232.2 , 0 );
setMoveKey( spep_8 + 70, 1, 75.8, 231.4 , 0 );
setMoveKey( spep_8 + 72, 1, 70.6, 225.6 , 0 );
setMoveKey( spep_8 + 74, 1, 70.8, 224.9 , 0 );
setMoveKey( spep_8 + 76, 1, 65.6, 218.9 , 0 );
setMoveKey( spep_8 + 78, 1, 65.9, 218.3 , 0 );
setMoveKey( spep_8 + 80, 1, 61.5, 213.4 , 0 );
setMoveKey( spep_8 + 82, 1, 62.9, 213.9 , 0 );
setMoveKey( spep_8 + 84, 1, 58.6, 209 , 0 );
setMoveKey( spep_8 + 86, 1, 60, 209.6 , 0 );
setMoveKey( spep_8 + 88, 1, 55.6, 204.7 , 0 );
setMoveKey( spep_8 + 90, 1, 57, 205.3 , 0 );
setMoveKey( spep_8 + 92, 1, 52.5, 200.3 , 0 );
setMoveKey( spep_8 + 94, 1, 54.1, 201 , 0 );
setMoveKey( spep_8 + 96, 1, 49.6, 195.9 , 0 );
setMoveKey( spep_8 + 98, 1, 51.2, 196.7 , 0 );
setMoveKey( spep_8 + 100, 1, 46.6, 191.6 , 0 );
setMoveKey( spep_8 + 102, 1, 48.2, 192.3 , 0 );
setMoveKey( spep_8 + 104, 1, 43.6, 187.2 , 0 );
setMoveKey( spep_8 + 106, 1, 45.3, 188.1 , 0 );
setMoveKey( spep_8 + 108, 1, 40.6, 182.8 , 0 );
setMoveKey( spep_8 + 110, 1, 42.3, 183.8 , 0 );
setMoveKey( spep_8 + 112, 1, 37.6, 178.5 , 0 );
setMoveKey( spep_8 + 114, 1, 39.4, 179.4 , 0 );
setMoveKey( spep_8 + 116, 1, 34.7, 174.1 , 0 );
setMoveKey( spep_8 + 118, 1, 36.5, 175.1 , 0 );

setScaleKey( spep_8 + 28, 1, 0.23, 0.23 );
setScaleKey( spep_8 + 30, 1, 0.32, 0.32 );
setScaleKey( spep_8 + 32, 1, 0.41, 0.41 );
setScaleKey( spep_8 + 34, 1, 0.49, 0.49 );
setScaleKey( spep_8 + 36, 1, 0.58, 0.58 );
setScaleKey( spep_8 + 38, 1, 0.67, 0.67 );
setScaleKey( spep_8 + 40, 1, 0.76, 0.76 );
setScaleKey( spep_8 + 42, 1, 0.84, 0.84 );
setScaleKey( spep_8 + 44, 1, 0.93, 0.93 );
setScaleKey( spep_8 + 46, 1, 1.02, 1.02 );
setScaleKey( spep_8 + 48, 1, 1.11, 1.11 );
setScaleKey( spep_8 + 50, 1, 1.12, 1.12 );
setScaleKey( spep_8 + 52, 1, 1.13, 1.13 );
setScaleKey( spep_8 + 54, 1, 1.14, 1.14 );
setScaleKey( spep_8 + 56, 1, 1.15, 1.15 );
setScaleKey( spep_8 + 58, 1, 1.16, 1.16 );
setScaleKey( spep_8 + 60, 1, 1.18, 1.18 );
setScaleKey( spep_8 + 62, 1, 1.18, 1.18 );
setScaleKey( spep_8 + 64, 1, 1.2, 1.2 );
setScaleKey( spep_8 + 66, 1, 1.21, 1.21 );
setScaleKey( spep_8 + 68, 1, 1.22, 1.22 );
setScaleKey( spep_8 + 70, 1, 1.23, 1.23 );
setScaleKey( spep_8 + 72, 1, 1.24, 1.24 );
setScaleKey( spep_8 + 74, 1, 1.25, 1.25 );
setScaleKey( spep_8 + 76, 1, 1.27, 1.27 );
setScaleKey( spep_8 + 78, 1, 1.27, 1.27 );
setScaleKey( spep_8 + 80, 1, 1.29, 1.29 );
setScaleKey( spep_8 + 82, 1, 1.3, 1.3 );
setScaleKey( spep_8 + 84, 1, 1.31, 1.31 );
setScaleKey( spep_8 + 86, 1, 1.33, 1.33 );
setScaleKey( spep_8 + 88, 1, 1.34, 1.34 );
setScaleKey( spep_8 + 90, 1, 1.36, 1.36 );
setScaleKey( spep_8 + 92, 1, 1.37, 1.37 );
setScaleKey( spep_8 + 94, 1, 1.39, 1.39 );
setScaleKey( spep_8 + 96, 1, 1.39, 1.39 );
setScaleKey( spep_8 + 98, 1, 1.41, 1.41 );
setScaleKey( spep_8 + 100, 1, 1.42, 1.42 );
setScaleKey( spep_8 + 102, 1, 1.44, 1.44 );
setScaleKey( spep_8 + 104, 1, 1.45, 1.45 );
setScaleKey( spep_8 + 106, 1, 1.46, 1.46 );
setScaleKey( spep_8 + 108, 1, 1.48, 1.48 );
setScaleKey( spep_8 + 110, 1, 1.49, 1.49 );
setScaleKey( spep_8 + 112, 1, 1.5, 1.5 );
setScaleKey( spep_8 + 114, 1, 1.52, 1.52 );
setScaleKey( spep_8 + 116, 1, 1.53, 1.53 );
setScaleKey( spep_8 + 118, 1, 1.54, 1.54 );

setRotateKey( spep_8 + 28, 1, -43.7 );

--　ぶっ飛ばし流線
buttobashiryusentuki9 = entryEffectLife( spep_8, 924, 118, 0x80,  -1,  0,  300,  -300);
setEffRotateKey( spep_8, buttobashiryusentuki9, -90);
setEffScaleKey( spep_8, buttobashiryusentuki9, 1.5, 1.5);
setEffAlphaKey( spep_8, buttobashiryusentuki9, 255);
--setEffMoveKey( spep_8, buttobashiryusentuki9,  300,  -400, 0);

setEffRotateKey( spep_8+118, buttobashiryusentuki9, -90);
setEffScaleKey( spep_8+118, buttobashiryusentuki9, 1.5, 1.5);
setEffAlphaKey( spep_8+118, buttobashiryusentuki9, 255);
setEffMoveKey( spep_8+118, buttobashiryusentuki9,  300,  -400, 0);

tuskituski = entryEffectLife(  spep_8,   SP_10,118,   0x80,  -1,  0,  0,  0);   -- カード
setEffScaleKey( spep_8, tuskituski, 1.0, 1.0);
setEffAlphaKey( spep_8, tuskituski, 255);
setEffMoveKey( spep_8, tuskituski,   0, 0, 0);

setEffScaleKey( spep_8+118, tuskituski, 1.0, 1.0);
setEffAlphaKey( spep_8+118, tuskituski, 255);
setEffMoveKey( spep_8+118, tuskituski,   0, 0, 0);

tukihassya = entryEffectLife(  spep_8,   SP_09,118,   0x100,  -1,  0,  0,  0);   -- カード
setEffScaleKey( spep_8, tukihassya, 1.0, 1.0);
setEffAlphaKey( spep_8, tukihassya, 255);
setEffMoveKey( spep_8, tukihassya,   0, 0, 0);

setEffScaleKey( spep_8+118, tukihassya, 1.0, 1.0);
setEffAlphaKey( spep_8+118, tukihassya, 255);
setEffMoveKey( spep_8+118, tukihassya,   0, 0, 0);

playSe( spep_8, SE_07);


shuchusenumae= entryEffectLife( spep_8+80, 906, 38, 0x100,  -1, 0,  -50, 0);   -- 集中線
setEffScaleKey( spep_8+80, shuchusenumae, 1.4, 1.4);
setEffAlphaKey( spep_8+80, shuchusenumae, 255);
setEffRotateKey(  spep_8+80,  shuchusenumae,  0);

------------------------------------------------------
--ギャン(58F)
------------------------------------------------------
spep_9=spep_8+118;

entryFade( spep_9-14, 10, 5,3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp( spep_9, 1, 0);

playSe( spep_9+8, 1024);

gyan=entryEffectLife(  spep_9,  190000,  58, 0,  -1,  0,  0,  0);
setEffScaleKey( spep_9, gyan, 1.0, 1.0);
setEffAlphaKey( spep_9, gyan, 255);
setEffMoveKey( spep_9, gyan,   0, 0, 0);

setEffScaleKey( spep_9+58, gyan, 1.0, 1.0);
setEffAlphaKey( spep_9+58, gyan, 255);
setEffMoveKey( spep_9+58, gyan,   0, 0, 0);

ctgyan = entryEffectLife( spep_9, 10006, 58, 0x100, -1, 0, 0, 400);    -- ギャン

setEffAlphaKey( spep_9, ctgyan, 255);
setEffScaleKey( spep_9, ctgyan, 3.0, 3.0);
setEffScaleKey( spep_9+58, ctgyan, 4.0, 4.0);
setEffAlphaKey( spep_9, ctgyan, 255);
setEffAlphaKey( spep_9+58, ctgyan, 0);
setEffShake( spep_9, ctgyan, 58, 8);

------------------------------------------------------
--終了
------------------------------------------------------
spep_10=spep_9+58;
--entryFade( spep_10+96, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_10, 0, 110, 0, 10, 10, 10, 180);          -- ベース暗め　背景

tukkomu11 = entryEffect(  spep_10,   SP_11,   0,  -1,  0,  0,  0);   -- カード
setEffScaleKey( spep_10, tukkomu11, 1.0, 1.0);
setEffAlphaKey( spep_10, tukkomu11, 255);
setEffMoveKey( spep_10, tukkomu11,   0, 0, 0);

shuchusenketta = entryEffectLife( spep_10, 906, 110, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_10, shuchusenketta, 1.3, 1.3);
setEffAlphaKey( spep_10, shuchusenketta, 255);

playSe( spep_10+5, SE_10);

-- ダメージ表示
dealDamage(spep_10+5);

entryFade( spep_10+90, 15, 10, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--entryFade( spep_10+96, 9,  10, 0, fcolor_r, fcolor_g, fcolor_b, 255);    

endPhase(spep_10+110);

end
