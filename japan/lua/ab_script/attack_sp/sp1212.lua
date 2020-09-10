--南の界王神

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SE_01 = 1035; --気を貯める
SE_02 = 1036; --気が広がる
SE_03 = 1036; --かめはめ
SE_04 = 1018; --顔カットイン
SE_05 = 1035; --カットイン攻撃
SE_06 = 1021; --発射
SE_07 = 1022; --のびる発射
SE_08 = 1042; --カットイン
SE_09 = 1023; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音
SE_12 = 09;

--味方側
SP_01=	152192	;
SP_02=	152193	;--手前突進
SP_03=	152194	;

--敵側
SP_01x=	152222	;	
SP_03x=	152223	;	

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI(0, 0);

changeAnime( 0, 0, 1);                       -- 立ち
changeAnime( 0, 1, 101);                       -- 立ち
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    -5000,  -5000,  0);
setMoveKey(   1,   0,    -5000,  -5000,  0);
setMoveKey(   2,   0,    -5000,  -5000,  0);
setMoveKey(   3,   0,    -5000,  -5000,  0);
setMoveKey(   4,   0,    -5000,  -5000,  0);
setMoveKey(   5,   0,    -5000,  -5000,  0);
setMoveKey(   6,   0,    -5000,  -5000,  0);
setScaleKey(  0,  0,  1.5,  1.5);
setScaleKey(   1,   0, 1.5, 1.5);
setScaleKey(   2,   0, 1.5, 1.5);
setScaleKey(   3,   0, 1.5, 1.5);
setScaleKey(   4,   0, 1.5, 1.5);
setScaleKey(   5,   0, 1.5, 1.5);
setScaleKey(   6,   0, 1.5, 1.5);

-- 敵

setMoveKey(   0,   1,    -5000,  -5000,  0);
setMoveKey(   1,   1,    -5000,  -5000,  0);
setMoveKey(   2,   1,    -5000,  -5000,  0);
setMoveKey(   3,   1,    -5000,  -5000,  0);
setMoveKey(   4,   1,    -5000,  -5000,  0);
setMoveKey(   5,   1,    -5000,  -5000,  0);
setMoveKey(   6,   1,    -5000,  -5000,  0);
setScaleKey(   0,   1, 1.5, 1.5);
setScaleKey(   1,   1, 1.5, 1.5);
setScaleKey(   2,   1, 1.5, 1.5);
setScaleKey(   3,   1, 1.5, 1.5);
setScaleKey(   4,   1, 1.5, 1.5);
setScaleKey(   5,   1, 1.5, 1.5);
setScaleKey(   6,   1, 1.5, 1.5);

multi_frm = 2;

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------
spep_0=0;

entryFade(spep_0+64,8,4,8,255,255,255,255);
entryFadeBg(spep_0+12,6,56,0,10,10,10,255);

syuugou=entryEffectLife(spep_0,SP_01,74,0x100,-1,0,0,0);

setEffMoveKey(spep_0,syuugou,0,0,0);
setEffMoveKey(spep_0+74,syuugou,0,0,0);

setEffScaleKey(spep_0,syuugou,1.0,1.0);
setEffScaleKey(spep_0+74,syuugou,1.0,1.0);

setEffAlphaKey(spep_0,syuugou,255);
setEffAlphaKey(spep_0+74,syuugou,255);

setEffRotateKey(spep_0,syuugou,0);
setEffRotateKey(spep_0+74,syuugou,0);

shuchusen0 = entryEffectLife( spep_0+20, 906, 18, 0x100,  -1, 0,  0,  0);  --集中線

setEffMoveKey(  spep_0+20,  shuchusen0,  0,  0);
setEffScaleKey(  spep_0+20,  shuchusen0,  1.4,  1.4);
setEffRotateKey(  spep_0+20,  shuchusen0,  0);
setEffAlphaKey(  spep_0+20,  shuchusen0,  255);
setEffMoveKey(  spep_0+38,  shuchusen0,  0,  0);
setEffScaleKey(  spep_0+38,  shuchusen0,  1.4,  1.4);
setEffRotateKey(  spep_0+38,  shuchusen0,  0);
setEffAlphaKey(  spep_0+38,  shuchusen0,  255);

--流線1
ryusen0=entryEffectLife( spep_0 + 30,  922, 44, 0x80, -1, 0, 0, 0 );
setEffMoveKey(spep_0+30,ryusen0,0,0,0);
setEffMoveKey(spep_0+74,ryusen0,0,0,0);

setEffScaleKey(spep_0+30,ryusen0,1.0,1.0);
setEffScaleKey(spep_0+74,ryusen0,1.0,1.0);

setEffAlphaKey(spep_0+30,ryusen0,255);
setEffAlphaKey(spep_0+74,ryusen0,255);

setEffRotateKey(spep_0+30,ryusen0,90);
setEffRotateKey(spep_0+74,ryusen0,90);

playSe( spep_0,44);

--------------------------------------
--カードカットイン
--------------------------------------
spep_1=spep_0+74;

playSe( spep_1, SE_05);
speff = entryEffect(  spep_1,   1507, 0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

shuchusen1 = entryEffectLife( spep_1, 906, 90, 0x100,  -1, 0,  0,  0);  --集中線

setEffMoveKey(  spep_1,  shuchusen1,  0,  0);
setEffScaleKey(  spep_1,  shuchusen1,  1.4,  1.4);
setEffRotateKey(  spep_1,  shuchusen1,  0);
setEffAlphaKey(  spep_1,  shuchusen1,  255);
setEffMoveKey(  spep_1+90,  shuchusen1,  0,  0);
setEffScaleKey(  spep_1+90,  shuchusen1,  1.4,  1.4);
setEffRotateKey(  spep_1+90,  shuchusen1,  0);
setEffAlphaKey(  spep_1+90,  shuchusen1,  255);

entryFade( spep_1+72, 16, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--------------------------------------
--北
--------------------------------------
spep_2=spep_1+88;

entryFadeBg(spep_2,0,98,0,10,10,10,255);
entryFade(spep_2+88,6,6,0,255,255,255,255);

Kitano=entryEffectLife( spep_2, SP_02, 96, 0x80,  -1, 0,  0,  0);  --集中線
setEffMoveKey(spep_2,Kitano,0,0,0);
setEffMoveKey(spep_2+96,Kitano,0,0,0);

setEffScaleKey(spep_2,Kitano,1.0,1.0);
setEffScaleKey(spep_2+96,Kitano,1.0,1.0);

setEffAlphaKey(spep_2,Kitano,255);
setEffAlphaKey(spep_2+96,Kitano,255);

setEffRotateKey(spep_2,Kitano,0);
setEffRotateKey(spep_2+96,Kitano,0);

setEffShake(spep_2,Kitano,96,10);

shuchusen2 = entryEffectLife( spep_2, 906, 98, 0x100,  -1, 0,  0,  0);  --集中線

setEffMoveKey(  spep_2,  shuchusen2,  0,  0);
setEffScaleKey(  spep_2,  shuchusen2,  1.4,  1.4);
setEffRotateKey(  spep_2,  shuchusen2,  0);
setEffAlphaKey(  spep_2,  shuchusen2,  255);
setEffMoveKey(  spep_2+96,  shuchusen2,  0,  0);
setEffScaleKey(  spep_2+96,  shuchusen2,  1.4,  1.4);
setEffRotateKey(  spep_2+96,  shuchusen2,  0);
setEffAlphaKey(  spep_2+96,  shuchusen2,  255);

--文字エントリー
ctgogo=entryEffectLife(spep_2+10,190006,70,0x100,-1,-10,520);--ゴゴゴ
setEffMoveKey(spep_2+10,ctgogo,-10,520,0);
setEffMoveKey(spep_2+80,ctgogo,-10,520,0);
setEffScaleKey(spep_2+10, ctgogo, 0.7, 0.7);
setEffScaleKey(spep_2+80, ctgogo, 0.7, 0.7);

playSe( spep_2,44);
playSe(spep_2+10,SE_04);

------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2+88; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

pauseAll( SP_dodge, 67);

setMoveKey(SP_dodge,1,0,0,0);
setScaleKey(SP_dodge,1,1.5,1.5);
setRotateKey(SP_dodge,1,0);

setMoveKey(SP_dodge+9,1,0,0,0);
setScaleKey(SP_dodge+9,1,1.5,1.5);
setRotateKey(SP_dodge+9,1,0);

setDisp(SP_dodge+9,1,0);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景
pauseAll( SP_dodge, 67);

entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge+10);

do return end
else end


--------------------------------------
--58F
--------------------------------------
spep_3=spep_2+98;

entryFadeBg(spep_3,0,58,0,10,10,10,255);
entryFade(spep_3+56,0,6,0,255,255,255,255);

Minamino=entryEffectLife( spep_3+2, SP_03, 56, 0x100,  -1, 0,  0,  0);  --集中線
setEffMoveKey(spep_3+2,Minamino,0,0,0);
setEffMoveKey(spep_3+58,Minamino,0,0,0);

setEffScaleKey(spep_3+2,Minamino,1.0,1.0);
setEffScaleKey(spep_3+58,Minamino,1.0,1.0);

setEffAlphaKey(spep_3+2,Minamino,255);
setEffAlphaKey(spep_3+58,Minamino,255);

setEffRotateKey(spep_3+2,Minamino,0);
setEffRotateKey(spep_3+58,Minamino,0);

setEffShake(spep_3+2,Minamino,56,10);

--エネミー
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 56, 1, 0 );

changeAnime( spep_3 + 0, 1, 100 );
changeAnime( spep_3 + 16, 1, 106 );
changeAnime( spep_3 + 32, 1, 108 );

setMoveKey( spep_3 + 0, 1, 511.5, 323.5 , 0 );
setMoveKey( spep_3 + 6, 1, 511.5, 323.5 , 0 );
setMoveKey( spep_3 + 8, 1, 403.5, 260.8 , 0 );
setMoveKey( spep_3 + 10, 1, 295.4, 198.1 , 0 );
setMoveKey( spep_3 + 12, 1, 187.3, 135.4 , 0 );
setMoveKey( spep_3 + 15, 1, 154.2, 107.3 , 0 );
setMoveKey( spep_3 + 16, 1, 121, 79.1 , 0 );
setMoveKey( spep_3 + 18, 1, 120.1, 75.4 , 0 );
setMoveKey( spep_3 + 20, 1, 110.7, 81.6 , 0 );
setMoveKey( spep_3 + 22, 1, 109.8, 77.9 , 0 );
setMoveKey( spep_3 + 24, 1, 100.4, 84.1 , 0 );
setMoveKey( spep_3 + 26, 1, 99.5, 80.4 , 0 );
setMoveKey( spep_3 + 29, 1, 135.3, 105.4 , 0 );
setMoveKey( spep_3 + 30, 1, 175.4, 125.4 , 0 );
setMoveKey( spep_3 + 32, 1, 199.4, 139.5 , 0 );
setMoveKey( spep_3 + 34, 1, 223.3, 153.7 , 0 );
setMoveKey( spep_3 + 36, 1, 247.3, 167.8 , 0 );
setMoveKey( spep_3 + 38, 1, 271.4, 182 , 0 );
setMoveKey( spep_3 + 40, 1, 295.3, 196.1 , 0 );
setMoveKey( spep_3 + 42, 1, 319.4, 210.3 , 0 );
setMoveKey( spep_3 + 44, 1, 343.5, 224.4 , 0 );
setMoveKey( spep_3 + 46, 1, 367.4, 238.6 , 0 );
setMoveKey( spep_3 + 48, 1, 391.4, 252.7 , 0 );
setMoveKey( spep_3 + 50, 1, 415.5, 266.9 , 0 );
setMoveKey( spep_3 + 52, 1, 439.4, 281 , 0 );
setMoveKey( spep_3 + 54, 1, 463.4, 295.1 , 0 );
setMoveKey( spep_3 + 56, 1, 487.4, 309.3 , 0 );
setMoveKey( spep_3 + 58, 1, 511.5, 323.5 , 0 );

setScaleKey( spep_3 + 0, 1, 0.6, 0.6 );
setScaleKey( spep_3 + 6, 1, 0.6, 0.6 );
setScaleKey( spep_3 + 8, 1, 0.8, 0.8 );
setScaleKey( spep_3 + 10, 1, 1, 1 );
setScaleKey( spep_3 + 12, 1, 1.2, 1.2 );
setScaleKey( spep_3 + 26, 1, 1.2, 1.2 );
setScaleKey( spep_3 + 29, 1, 1.15, 1.15 );
setScaleKey( spep_3 + 30, 1, 1.1, 1.1 );
setScaleKey( spep_3 + 32, 1, 1.06, 1.06 );
setScaleKey( spep_3 + 34, 1, 1.03, 1.03 );
setScaleKey( spep_3 + 36, 1, 0.99, 0.99 );
setScaleKey( spep_3 + 38, 1, 0.96, 0.96 );
setScaleKey( spep_3 + 40, 1, 0.92, 0.92 );
setScaleKey( spep_3 + 42, 1, 0.89, 0.89 );
setScaleKey( spep_3 + 44, 1, 0.85, 0.85 );
setScaleKey( spep_3 + 46, 1, 0.81, 0.81 );
setScaleKey( spep_3 + 48, 1, 0.78, 0.78 );
setScaleKey( spep_3 + 50, 1, 0.74, 0.74 );
setScaleKey( spep_3 + 52, 1, 0.71, 0.71 );
setScaleKey( spep_3 + 54, 1, 0.67, 0.67 );
setScaleKey( spep_3 + 56, 1, 0.64, 0.64 );
setScaleKey( spep_3 + 58, 1, 0.6, 0.6 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 + 15, 1, 0 );
setRotateKey( spep_3 + 16, 1, -60 );
setRotateKey( spep_3 + 29, 1, -60 );
setRotateKey( spep_3 + 30, 1, 0 );

--流線
ryusen6 = entryEffectLife( spep_3, 921, 58, 0x80,  -1, 0,-50.6, 63.9);  --集中線
setEffMoveKey(spep_3,ryusen6,-50.6, 63.9,0);
setEffMoveKey(spep_3+58,ryusen6,-50.6, 63.9,0);

setEffScaleKey(spep_3,ryusen6,1.5,1.5);
setEffScaleKey(spep_3+58,ryusen6,1.5,1.5);

setEffAlphaKey(spep_3,ryusen6,255);
setEffAlphaKey(spep_3+58,ryusen6,255);

setEffRotateKey(spep_3,ryusen6,340); --46
setEffRotateKey(spep_3+58,ryusen6,340);

--SE
playSe( spep_3+30,1011);

--------------------------------------
--Last
--------------------------------------
spep_4=spep_3+58;

--敵の動き--
setDisp( spep_4 + 0, 1, 1 );
changeAnime( spep_4 + 0, 1, 107 );

setMoveKey( spep_4 + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_4 + 2, 1, 32.5, -4.9 , 0 );
setMoveKey( spep_4 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_4 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_4 + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_4 + 10, 1, 7.1, -92.9 , 0 );
setMoveKey( spep_4 + 12, 1, -1.9, -124.1 , 0 );

setScaleKey( spep_4 + 0, 1, 0.22, 0.22 );
setScaleKey( spep_4 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_4 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_4 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_4 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_4 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_4 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 110, 1, 1.6, 1.6 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4 + 2, 1, 105 );
setRotateKey( spep_4 + 4, 1, 240 );
setRotateKey( spep_4 + 6, 1, 405 );
setRotateKey( spep_4 + 8, 1, 600 );
setRotateKey( spep_4 + 10, 1, 825 );
setRotateKey( spep_4 + 12, 1, 1080 );

--爆発エフェクト
entryEffect( spep_4+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_4+8, SE_10);

setDamage( spep_4 +16, 1, 0);  -- ダメージ振動等
setShake(spep_4+8,6,15);
setShake(spep_4+14,15,10);

--書き文字--
ctGa = entryEffectLife( spep_4 + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );
setEffShake( spep_4 + 14, ctGa, 30, 10);

setEffMoveKey( spep_4 + 14, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 16, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_4 + 18, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 20, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_4 + 22, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 24, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_4 + 26, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 28, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_4 + 30, ctGa, 3.9, 316.1 , 0 );

setEffScaleKey( spep_4 + 14, ctGa, 2, 2 );
setEffScaleKey( spep_4+16, ctGa, 2.0, 2.0);
setEffScaleKey( spep_4+17, ctGa, 2.6, 2.6);
setEffScaleKey( spep_4+18, ctGa, 4.0, 4.0);
setEffScaleKey( spep_4+19, ctGa, 2.6, 2.6);
setEffScaleKey( spep_4+20, ctGa, 3.8, 3.8);
setEffScaleKey( spep_4+112, ctGa, 3.8, 3.8);

setEffRotateKey( spep_4 + 14, ctGa, -40 );
setEffRotateKey( spep_4 + 16, ctGa, -31 );
setEffRotateKey( spep_4 + 18, ctGa, -40 );
setEffRotateKey( spep_4 + 20, ctGa, -31 );
setEffRotateKey( spep_4 + 22, ctGa, -40 );
setEffRotateKey( spep_4 + 24, ctGa, -31);
setEffRotateKey( spep_4 + 26, ctGa, -40 );
setEffRotateKey( spep_4 + 28, ctGa, -31);
setEffRotateKey( spep_4 + 30, ctGa, -40 );

setEffAlphaKey( spep_4 + 14, ctGa, 255 );

--集中線（白）
shuchusen = entryEffectLife( spep_4+2, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線

--集中線（黒）
shuchusenkuro = entryEffectLife( spep_4+14, 1657, 120, 0x80,  -1, 0,  0,  0);   -- 集中線

--ひび割れ
hibi = entryEffect( spep_4+2, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(spep_4+16);
entryFade( spep_4+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_4+110);
else

------------------------------------------------------
-- 味方側
------------------------------------------------------
spep_0=0;

entryFade(spep_0+64,8,4,8,255,255,255,255);
entryFadeBg(spep_0+12,6,56,0,10,10,10,255);

syuugou=entryEffectLife(spep_0,SP_01x,74,0x100,-1,0,0,0);

setEffMoveKey(spep_0,syuugou,0,0,0);
setEffMoveKey(spep_0+74,syuugou,0,0,0);

setEffScaleKey(spep_0,syuugou,1.0,1.0);
setEffScaleKey(spep_0+74,syuugou,1.0,1.0);

setEffAlphaKey(spep_0,syuugou,255);
setEffAlphaKey(spep_0+74,syuugou,255);

setEffRotateKey(spep_0,syuugou,0);
setEffRotateKey(spep_0+74,syuugou,0);

shuchusen0 = entryEffectLife( spep_0+20, 906, 18, 0x100,  -1, 0,  0,  0);  --集中線

setEffMoveKey(  spep_0+20,  shuchusen0,  0,  0);
setEffScaleKey(  spep_0+20,  shuchusen0,  1.4,  1.4);
setEffRotateKey(  spep_0+20,  shuchusen0,  0);
setEffAlphaKey(  spep_0+20,  shuchusen0,  255);
setEffMoveKey(  spep_0+38,  shuchusen0,  0,  0);
setEffScaleKey(  spep_0+38,  shuchusen0,  1.4,  1.4);
setEffRotateKey(  spep_0+38,  shuchusen0,  0);
setEffAlphaKey(  spep_0+38,  shuchusen0,  255);

--流線1
ryusen0=entryEffectLife( spep_0 + 30,  922, 44, 0x80, -1, 0, 0, 0 );
setEffMoveKey(spep_0+30,ryusen0,0,0,0);
setEffMoveKey(spep_0+74,ryusen0,0,0,0);

setEffScaleKey(spep_0+30,ryusen0,1.0,1.0);
setEffScaleKey(spep_0+74,ryusen0,1.0,1.0);

setEffAlphaKey(spep_0+30,ryusen0,255);
setEffAlphaKey(spep_0+74,ryusen0,255);

setEffRotateKey(spep_0+30,ryusen0,90);
setEffRotateKey(spep_0+74,ryusen0,90);

playSe( spep_0,44);

--------------------------------------
--カードカットイン
--------------------------------------
spep_1=spep_0+74;

playSe( spep_1, SE_05);
speff = entryEffect(  spep_1,   1507, 0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

shuchusen1 = entryEffectLife( spep_1, 906, 90, 0x100,  -1, 0,  0,  0);  --集中線

setEffMoveKey(  spep_1,  shuchusen1,  0,  0);
setEffScaleKey(  spep_1,  shuchusen1,  1.4,  1.4);
setEffRotateKey(  spep_1,  shuchusen1,  0);
setEffAlphaKey(  spep_1,  shuchusen1,  255);
setEffMoveKey(  spep_1+90,  shuchusen1,  0,  0);
setEffScaleKey(  spep_1+90,  shuchusen1,  1.4,  1.4);
setEffRotateKey(  spep_1+90,  shuchusen1,  0);
setEffAlphaKey(  spep_1+90,  shuchusen1,  255);

entryFade( spep_1+72, 16, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--------------------------------------
--北
--------------------------------------
spep_2=spep_1+88;

entryFadeBg(spep_2,0,98,0,10,10,10,255);
entryFade(spep_2+88,6,6,0,255,255,255,255);

Kitano=entryEffectLife( spep_2, SP_02, 96, 0x80,  -1, 0,  0,  0);  --集中線
setEffMoveKey(spep_2,Kitano,0,0,0);
setEffMoveKey(spep_2+96,Kitano,0,0,0);

setEffScaleKey(spep_2,Kitano,-1.0,1.0);
setEffScaleKey(spep_2+96,Kitano,-1.0,1.0);

setEffAlphaKey(spep_2,Kitano,255);
setEffAlphaKey(spep_2+96,Kitano,255);

setEffRotateKey(spep_2,Kitano,0);
setEffRotateKey(spep_2+96,Kitano,0);

setEffShake(spep_2,Kitano,96,10);

shuchusen2 = entryEffectLife( spep_2, 906, 98, 0x100,  -1, 0,  0,  0);  --集中線

setEffMoveKey(  spep_2,  shuchusen2,  0,  0);
setEffScaleKey(  spep_2,  shuchusen2,  1.4,  1.4);
setEffRotateKey(  spep_2,  shuchusen2,  0);
setEffAlphaKey(  spep_2,  shuchusen2,  255);
setEffMoveKey(  spep_2+96,  shuchusen2,  0,  0);
setEffScaleKey(  spep_2+96,  shuchusen2,  1.4,  1.4);
setEffRotateKey(  spep_2+96,  shuchusen2,  0);
setEffAlphaKey(  spep_2+96,  shuchusen2,  255);

--文字エントリー
ctgogo=entryEffectLife(spep_2+10,190006,70,0x100,-1,-10,520);--ゴゴゴ
setEffMoveKey(spep_2+10,ctgogo,-10,520,0);
setEffMoveKey(spep_2+80,ctgogo,-10,520,0);
setEffScaleKey(spep_2+10, ctgogo, -0.7, 0.7);
setEffScaleKey(spep_2+80, ctgogo, -0.7, 0.7);

playSe( spep_2,44);
playSe(spep_2+10,SE_04);

------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2+88; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

pauseAll( SP_dodge, 67);

setMoveKey(SP_dodge,1,0,0,0);
setScaleKey(SP_dodge,1,1.5,1.5);
setRotateKey(SP_dodge,1,0);

setMoveKey(SP_dodge+9,1,0,0,0);
setScaleKey(SP_dodge+9,1,1.5,1.5);
setRotateKey(SP_dodge+9,1,0);

setDisp(SP_dodge+9,1,0);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景
pauseAll( SP_dodge, 67);

entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge+10);

do return end
else end

--------------------------------------
--58F
--------------------------------------
spep_3=spep_2+98;

entryFadeBg(spep_3,0,58,0,10,10,10,255);
entryFade(spep_3+56,0,6,0,255,255,255,255);

Minamino=entryEffectLife( spep_3+2, SP_03x, 56, 0x100,  -1, 0,  0,  0);  --集中線
setEffMoveKey(spep_3+2,Minamino,0,0,0);
setEffMoveKey(spep_3+58,Minamino,0,0,0);

setEffScaleKey(spep_3+2,Minamino,1.0,1.0);
setEffScaleKey(spep_3+58,Minamino,1.0,1.0);

setEffAlphaKey(spep_3+2,Minamino,255);
setEffAlphaKey(spep_3+58,Minamino,255);

setEffRotateKey(spep_3+2,Minamino,0);
setEffRotateKey(spep_3+58,Minamino,0);

setEffShake(spep_3+2,Minamino,56,10);

--エネミー
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 56, 1, 0 );

changeAnime( spep_3 + 0, 1, 100 );
changeAnime( spep_3 + 16, 1, 106 );
changeAnime( spep_3 + 32, 1, 108 );

setMoveKey( spep_3 + 0, 1, 511.5, 323.5 , 0 );
setMoveKey( spep_3 + 6, 1, 511.5, 323.5 , 0 );
setMoveKey( spep_3 + 8, 1, 403.5, 260.8 , 0 );
setMoveKey( spep_3 + 10, 1, 295.4, 198.1 , 0 );
setMoveKey( spep_3 + 12, 1, 187.3, 135.4 , 0 );
setMoveKey( spep_3 + 15, 1, 154.2, 107.3 , 0 );
setMoveKey( spep_3 + 16, 1, 121, 79.1 , 0 );
setMoveKey( spep_3 + 18, 1, 120.1, 75.4 , 0 );
setMoveKey( spep_3 + 20, 1, 110.7, 81.6 , 0 );
setMoveKey( spep_3 + 22, 1, 109.8, 77.9 , 0 );
setMoveKey( spep_3 + 24, 1, 100.4, 84.1 , 0 );
setMoveKey( spep_3 + 26, 1, 99.5, 80.4 , 0 );
setMoveKey( spep_3 + 29, 1, 135.3, 105.4 , 0 );
setMoveKey( spep_3 + 30, 1, 175.4, 125.4 , 0 );
setMoveKey( spep_3 + 32, 1, 199.4, 139.5 , 0 );
setMoveKey( spep_3 + 34, 1, 223.3, 153.7 , 0 );
setMoveKey( spep_3 + 36, 1, 247.3, 167.8 , 0 );
setMoveKey( spep_3 + 38, 1, 271.4, 182 , 0 );
setMoveKey( spep_3 + 40, 1, 295.3, 196.1 , 0 );
setMoveKey( spep_3 + 42, 1, 319.4, 210.3 , 0 );
setMoveKey( spep_3 + 44, 1, 343.5, 224.4 , 0 );
setMoveKey( spep_3 + 46, 1, 367.4, 238.6 , 0 );
setMoveKey( spep_3 + 48, 1, 391.4, 252.7 , 0 );
setMoveKey( spep_3 + 50, 1, 415.5, 266.9 , 0 );
setMoveKey( spep_3 + 52, 1, 439.4, 281 , 0 );
setMoveKey( spep_3 + 54, 1, 463.4, 295.1 , 0 );
setMoveKey( spep_3 + 56, 1, 487.4, 309.3 , 0 );
setMoveKey( spep_3 + 58, 1, 511.5, 323.5 , 0 );

setScaleKey( spep_3 + 0, 1, 0.6, 0.6 );
setScaleKey( spep_3 + 6, 1, 0.6, 0.6 );
setScaleKey( spep_3 + 8, 1, 0.8, 0.8 );
setScaleKey( spep_3 + 10, 1, 1, 1 );
setScaleKey( spep_3 + 12, 1, 1.2, 1.2 );
setScaleKey( spep_3 + 26, 1, 1.2, 1.2 );
setScaleKey( spep_3 + 29, 1, 1.15, 1.15 );
setScaleKey( spep_3 + 30, 1, 1.1, 1.1 );
setScaleKey( spep_3 + 32, 1, 1.06, 1.06 );
setScaleKey( spep_3 + 34, 1, 1.03, 1.03 );
setScaleKey( spep_3 + 36, 1, 0.99, 0.99 );
setScaleKey( spep_3 + 38, 1, 0.96, 0.96 );
setScaleKey( spep_3 + 40, 1, 0.92, 0.92 );
setScaleKey( spep_3 + 42, 1, 0.89, 0.89 );
setScaleKey( spep_3 + 44, 1, 0.85, 0.85 );
setScaleKey( spep_3 + 46, 1, 0.81, 0.81 );
setScaleKey( spep_3 + 48, 1, 0.78, 0.78 );
setScaleKey( spep_3 + 50, 1, 0.74, 0.74 );
setScaleKey( spep_3 + 52, 1, 0.71, 0.71 );
setScaleKey( spep_3 + 54, 1, 0.67, 0.67 );
setScaleKey( spep_3 + 56, 1, 0.64, 0.64 );
setScaleKey( spep_3 + 58, 1, 0.6, 0.6 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 + 15, 1, 0 );
setRotateKey( spep_3 + 16, 1, -60 );
setRotateKey( spep_3 + 29, 1, -60 );
setRotateKey( spep_3 + 30, 1, 0 );

--流線
ryusen6 = entryEffectLife( spep_3, 921, 58, 0x80,  -1, 0,-50.6, 63.9);  --集中線
setEffMoveKey(spep_3,ryusen6,-50.6, 63.9,0);
setEffMoveKey(spep_3+58,ryusen6,-50.6, 63.9,0);

setEffScaleKey(spep_3,ryusen6,1.5,1.5);
setEffScaleKey(spep_3+58,ryusen6,1.5,1.5);

setEffAlphaKey(spep_3,ryusen6,255);
setEffAlphaKey(spep_3+58,ryusen6,255);

setEffRotateKey(spep_3,ryusen6,340); --46
setEffRotateKey(spep_3+58,ryusen6,340);

--SE
playSe( spep_3+30,1011);

--------------------------------------
--Last
--------------------------------------
spep_4=spep_3+58;

--敵の動き--
setDisp( spep_4 + 0, 1, 1 );
changeAnime( spep_4 + 0, 1, 107 );

setMoveKey( spep_4 + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_4 + 2, 1, 32.5, -4.9 , 0 );
setMoveKey( spep_4 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_4 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_4 + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_4 + 10, 1, 7.1, -92.9 , 0 );
setMoveKey( spep_4 + 12, 1, -1.9, -124.1 , 0 );

setScaleKey( spep_4 + 0, 1, 0.22, 0.22 );
setScaleKey( spep_4 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_4 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_4 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_4 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_4 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_4 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 110, 1, 1.6, 1.6 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4 + 2, 1, 105 );
setRotateKey( spep_4 + 4, 1, 240 );
setRotateKey( spep_4 + 6, 1, 405 );
setRotateKey( spep_4 + 8, 1, 600 );
setRotateKey( spep_4 + 10, 1, 825 );
setRotateKey( spep_4 + 12, 1, 1080 );

--爆発エフェクト
entryEffect( spep_4+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_4+8, SE_10);

setDamage( spep_4 +16, 1, 0);  -- ダメージ振動等
setShake(spep_4+8,6,15);
setShake(spep_4+14,15,10);

--書き文字--
ctGa = entryEffectLife( spep_4 + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );
setEffShake( spep_4 + 14, ctGa, 30, 10);

setEffMoveKey( spep_4 + 14, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 16, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_4 + 18, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 20, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_4 + 22, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 24, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_4 + 26, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 28, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_4 + 30, ctGa, 3.9, 316.1 , 0 );

setEffScaleKey( spep_4 + 14, ctGa, 2, 2 );
setEffScaleKey( spep_4+16, ctGa, 2.0, 2.0);
setEffScaleKey( spep_4+17, ctGa, 2.6, 2.6);
setEffScaleKey( spep_4+18, ctGa, 4.0, 4.0);
setEffScaleKey( spep_4+19, ctGa, 2.6, 2.6);
setEffScaleKey( spep_4+20, ctGa, 3.8, 3.8);
setEffScaleKey( spep_4+112, ctGa, 3.8, 3.8);

setEffRotateKey( spep_4 + 14, ctGa, -40 );
setEffRotateKey( spep_4 + 16, ctGa, -31 );
setEffRotateKey( spep_4 + 18, ctGa, -40 );
setEffRotateKey( spep_4 + 20, ctGa, -31 );
setEffRotateKey( spep_4 + 22, ctGa, -40 );
setEffRotateKey( spep_4 + 24, ctGa, -31);
setEffRotateKey( spep_4 + 26, ctGa, -40 );
setEffRotateKey( spep_4 + 28, ctGa, -31);
setEffRotateKey( spep_4 + 30, ctGa, -40 );

setEffAlphaKey( spep_4 + 14, ctGa, 255 );

--集中線（白）
shuchusen = entryEffectLife( spep_4+2, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線

--集中線（黒）
shuchusenkuro = entryEffectLife( spep_4+14, 1657, 120, 0x80,  -1, 0,  0,  0);   -- 集中線

--ひび割れ
hibi = entryEffect( spep_4+2, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(spep_4+16);
entryFade( spep_4+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_4+110);
end