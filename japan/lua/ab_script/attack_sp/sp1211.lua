--北の界王神

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
SP_01=	152195	;
SP_02=	152196	;
SP_03=	152197	;--	斬撃エフェクト

--敵側
SP_01x=	152224	;--使わない	
SP_02x=	152225	;	

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

entryFade(spep_0+98,8,4,8,255,255,255,255);
entryFadeBg(spep_0,0,108,0,10,10,10,200);

syuugou=entryEffectLife(spep_0,SP_01,108,0x100,-1,0,0,0);

setEffMoveKey(spep_0,syuugou,0,0,0);
setEffMoveKey(spep_0+108,syuugou,0,0,0);

setEffScaleKey(spep_0,syuugou,1.0,1.0);
setEffScaleKey(spep_0+108,syuugou,1.0,1.0);

setEffAlphaKey(spep_0,syuugou,255);
setEffAlphaKey(spep_0+108,syuugou,255);

setEffRotateKey(spep_0,syuugou,0);
setEffRotateKey(spep_0+108,syuugou,0);

shuchusen0 = entryEffectLife( spep_0, 906, 108, 0x100,  -1, 0,  0,  0);  --集中線

setEffMoveKey(  spep_0,  shuchusen0,  0,  0);
setEffScaleKey(  spep_0,  shuchusen0,  1.4,  1.4);
setEffRotateKey(  spep_0,  shuchusen0,  0);
setEffAlphaKey(  spep_0,  shuchusen0,  255);
setEffMoveKey(  spep_0+108,  shuchusen0,  0,  0);
setEffScaleKey(  spep_0+108,  shuchusen0,  1.4,  1.4);
setEffRotateKey(  spep_0+108,  shuchusen0,  0);
setEffAlphaKey(  spep_0+108,  shuchusen0,  255);


------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0+24; --エンドフェイズのフレーム数を置き換える

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

------------------------------------------------------
-- 回避されなかった場合
------------------------------------------------------

--文字エントリー
ctgogo=entryEffectLife(spep_0+26,190006,70,0x100,-1,-10,520);--ゴゴゴ
setEffMoveKey(spep_0+26,ctgogo,-10,520,0);
setEffMoveKey(spep_0+96,ctgogo,-10,520,0);
setEffScaleKey(spep_0+26, ctgogo, 0.7, 0.7);
setEffScaleKey(spep_0+96, ctgogo, 0.7, 0.7);

playSe(spep_0+16,SE_04)

--------------------------------------
--カードカットイン
--------------------------------------
spep_1=spep_0+108;

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
--北 78F
--------------------------------------
spep_2=spep_1+88;

entryFadeBg(spep_2,0,30,0,10,10,10,230);
entryFadeBg(spep_2+29,0,10,0,10,10,10,255);
entryFadeBg(spep_2+38,0,40,0,10,10,10,230);

entryFade(spep_2+68,6,6,0,255,255,255,255);

Bakuen=entryEffectLife( spep_2, SP_03, 76, 0x100,  -1, 0,  0,  0);  --集中線
setEffMoveKey(spep_2,Bakuen,0,0,0);
setEffMoveKey(spep_2+76,Bakuen,0,0,0);

setEffScaleKey(spep_2,Bakuen,-1.0,1.0);
setEffScaleKey(spep_2+26,Bakuen,-1.0,1.0);
setEffScaleKey(spep_2+27,Bakuen,-1.0,1.0);
setEffScaleKey(spep_2+28,Bakuen,-2.0,2.0);
setEffScaleKey(spep_2+76,Bakuen,-2.0,2.0);

setEffAlphaKey(spep_2,Bakuen,255);
setEffAlphaKey(spep_2+76,Bakuen,255);

setEffRotateKey(spep_2,Bakuen,0);
setEffRotateKey(spep_2+26,Bakuen,0);
setEffRotateKey(spep_2+27,Bakuen,0);
setEffRotateKey(spep_2+28,Bakuen,-19.3);
setEffRotateKey(spep_2+76,Bakuen,-19.3);

Kitano=entryEffectLife( spep_2, SP_02, 76, 0x80,  -1, 0,  0,  0);  --集中線
setEffMoveKey(spep_2,Kitano,0,0,0);
setEffMoveKey(spep_2+76,Kitano,0,0,0);

setEffScaleKey(spep_2,Kitano,1.0,1.0);
setEffScaleKey(spep_2+76,Kitano,1.0,1.0);

setEffAlphaKey(spep_2,Kitano,255);
setEffAlphaKey(spep_2+76,Kitano,255);

setEffRotateKey(spep_2,Kitano,0);
setEffRotateKey(spep_2+76,Kitano,0);

setEffShake(spep_2,Kitano,76,10);

--敵--
changeAnime(spep_2 + 38,1,107);
setDisp( spep_2 + 39,1,1);
setDisp( spep_2 + 40,1,1);
setDisp( spep_2 + 76,1,0);

setMoveKey( spep_2 + 61-22, 1, 48.3, -56.8 , 0 );
setMoveKey( spep_2 + 62-22, 1, 48.3, -56.8 , 0 );
setMoveKey( spep_2 + 64-22, 1, 48.3, -56.8 , 0 );
setMoveKey( spep_2 + 66-22, 1, 54.1, -70.2 , 0 );
setMoveKey( spep_2 + 68-22, 1, 59.7, -85.5 , 0 );
setMoveKey( spep_2 + 70-22, 1, 65.1, -99.6 , 0 );
setMoveKey( spep_2 + 72-22, 1, 70.3, -112.6 , 0 );
setMoveKey( spep_2 + 74-22, 1, 75.3, -124.7 , 0 );
setMoveKey( spep_2 + 76-22, 1, 80.1, -136 , 0 );
setMoveKey( spep_2 + 78-22, 1, 84.7, -146.7 , 0 );
setMoveKey( spep_2 + 80-22, 1, 89.1, -156.8 , 0 );
setMoveKey( spep_2 + 82-22, 1, 93.3, -166.3 , 0 );
setMoveKey( spep_2 + 84-22, 1, 97.3, -175.4 , 0 );
setMoveKey( spep_2 + 86-22, 1, 101.2, -183.9 , 0 );
setMoveKey( spep_2 + 88-22, 1, 104.9, -192.1 , 0 );
setMoveKey( spep_2 + 90-22, 1, 108.4, -199.8 , 0 );
setMoveKey( spep_2 + 92-22, 1, 111.8, -207.1 , 0 );
setMoveKey( spep_2 + 94-22, 1, 115, -214 , 0 );
setMoveKey( spep_2 + 96-22, 1, 118, -220.5 , 0 );
--setMoveKey( spep_2 + 98-22, 1, 120.8, -226.5 , 0 );
setScaleKey( spep_2 + 61-22, 1, 0.81, 0.8 );
setScaleKey( spep_2 + 62-22, 1, 0.81, 0.8 );
setScaleKey( spep_2 + 64-22, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 66-22, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 68-22, 1, 0.98, 0.99 );
setScaleKey( spep_2 + 70-22, 1, 1.06, 1.08 );
setScaleKey( spep_2 + 72-22, 1, 1.14, 1.16 );
setScaleKey( spep_2 + 74-22, 1, 1.2, 1.23 );
setScaleKey( spep_2 + 76-22, 1, 1.27, 1.29 );
setScaleKey( spep_2 + 78-22, 1, 1.33, 1.35 );
setScaleKey( spep_2 + 80-22, 1, 1.39, 1.41 );
setScaleKey( spep_2 + 82-22, 1, 1.45, 1.47 );
setScaleKey( spep_2 + 84-22, 1, 1.5, 1.52 );
setScaleKey( spep_2 + 86-22, 1, 1.55, 1.56 );
setScaleKey( spep_2 + 88-22, 1, 1.6, 1.61 );
setScaleKey( spep_2 + 90-22, 1, 1.64, 1.65 );
setScaleKey( spep_2 + 92-22, 1, 1.69, 1.69 );
setScaleKey( spep_2 + 94-22, 1, 1.73, 1.73 );
setScaleKey( spep_2 + 96-22, 1, 1.77, 1.77 );
--setScaleKey( spep_2 + 98-22, 1, 1.8, 1.8 );

setRotateKey( spep_2 + 60-22, 1, 355 ); --36.7　320
setRotateKey( spep_2 + 61-22, 1, 355 ); --36.7
setRotateKey( spep_2 + 96-22, 1, 355 );

setShakeChara( spep_2 + 62-22, 1, 36, 10 );

playSe( spep_2+36,1032);

--------------------------------------
--Last
--------------------------------------
spep_3=spep_2+78;

--敵の動き--
-- ** 次の準備 ** --
--entryFade( spep_3-5, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp( spep_3, 1, 1);
--setMoveKey(  spep_3-1,    1,  100,  0,   0);
--setScaleKey( spep_3-1,    1,  1.0, 1.0);
setMoveKey(  spep_3,    1,    0,   0,   128);
setScaleKey( spep_3,    1,  0.1, 0.1);

changeAnime( spep_3, 1, 107);                         -- 手前ダメージ
entryEffect( spep_3+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_3+8, SE_10);

setMoveKey(  spep_3+8,   1,    0,   0,   128);
setMoveKey(  spep_3+15,   1,  -60,  -200,  -100);
setMoveKey(  spep_3+16,   1,  -60,  -200,  -100);
setDamage( spep_3+16, 1, 0);  -- ダメージ振動等
setShake(spep_3+7,6,15);
setShake(spep_3+13,15,10);

setRotateKey( spep_3,  1,  30 );
setRotateKey( spep_3+2,  1,  80 );
setRotateKey( spep_3+4,  1, 120 );
setRotateKey( spep_3+6,  1, 160 );
setRotateKey( spep_3+8,  1, 200 );
setRotateKey( spep_3+10,  1, 260 );
setRotateKey( spep_3+12,  1, 320 );
setRotateKey( spep_3+14,  1,   0 );

setShakeChara( spep_3+15, 1, 5,  10);
setShakeChara( spep_3+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep_3+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep_3+15, ct, 30, 10);
setEffRotateKey( spep_3+15, ct, -40);
setEffScaleKey( spep_3+15, ct, 4.0, 4.0);
setEffScaleKey( spep_3+16, ct, 2.0, 2.0);
setEffScaleKey( spep_3+17, ct, 2.6, 2.6);
setEffScaleKey( spep_3+18, ct, 4.0, 4.0);
setEffScaleKey( spep_3+19, ct, 2.6, 2.6);
setEffScaleKey( spep_3+20, ct, 3.8, 3.8);
setEffScaleKey( spep_3+110, ct, 3.8, 3.8);
setEffAlphaKey( spep_3+15, ct, 255);
setEffAlphaKey( spep_3+105, ct, 255);
setEffAlphaKey( spep_3+115, ct, 0);

playSe( spep_3+3, SE_11);
shuchusen = entryEffectLife( spep_3+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_3+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

shuchusenkuro = entryEffectLife( spep_3+15, 1657, 120, 0x80,  -1, 0,  0,  0);   -- 集中線

-- ダメージ表示
dealDamage(spep_3+16);
entryFade( spep_3+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_3+110);

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
spep_0=0;

entryFade(spep_0+98,8,4,8,255,255,255,255);
entryFadeBg(spep_0,0,108,0,10,10,10,200);

syuugou=entryEffectLife(spep_0,SP_01,108,0x100,-1,0,0,0);

setEffMoveKey(spep_0,syuugou,0,0,0);
setEffMoveKey(spep_0+108,syuugou,0,0,0);

setEffScaleKey(spep_0,syuugou,-1.0,1.0);
setEffScaleKey(spep_0+108,syuugou,-1.0,1.0);

setEffAlphaKey(spep_0,syuugou,255);
setEffAlphaKey(spep_0+108,syuugou,255);

setEffRotateKey(spep_0,syuugou,0);
setEffRotateKey(spep_0+108,syuugou,0);

shuchusen0 = entryEffectLife( spep_0, 906, 108, 0x100,  -1, 0,  0,  0);  --集中線

setEffMoveKey(  spep_0,  shuchusen0,  0,  0);
setEffScaleKey(  spep_0,  shuchusen0,  1.4,  1.4);
setEffRotateKey(  spep_0,  shuchusen0,  0);
setEffAlphaKey(  spep_0,  shuchusen0,  255);
setEffMoveKey(  spep_0+108,  shuchusen0,  0,  0);
setEffScaleKey(  spep_0+108,  shuchusen0,  1.4,  1.4);
setEffRotateKey(  spep_0+108,  shuchusen0,  0);
setEffAlphaKey(  spep_0+108,  shuchusen0,  255);

------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0+24; --エンドフェイズのフレーム数を置き換える

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

------------------------------------------------------
-- 回避されなかった場合
------------------------------------------------------

--文字エントリー
ctgogo=entryEffectLife(spep_0+26,190006,70,0x100,-1,-10,520);--ゴゴゴ
setEffMoveKey(spep_0+26,ctgogo,-10,520,0);
setEffMoveKey(spep_0+96,ctgogo,-10,520,0);
setEffScaleKey(spep_0+26, ctgogo, -0.7, 0.7);
setEffScaleKey(spep_0+96, ctgogo, -0.7, 0.7);

playSe(spep_0+16,SE_04)

--------------------------------------
--カードカットイン
--------------------------------------
spep_1=spep_0+108;

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

entryFadeBg(spep_2,0,30,0,10,10,10,230);
entryFadeBg(spep_2+29,0,10,0,10,10,10,255);
entryFadeBg(spep_2+38,0,40,0,10,10,10,230);

entryFade(spep_2+68,6,6,0,255,255,255,255);

Bakuen=entryEffectLife( spep_2, SP_03, 76, 0x100,  -1, 0,  0,  0);  --集中線
setEffMoveKey(spep_2,Bakuen,0,0,0);
setEffMoveKey(spep_2+76,Bakuen,0,0,0);

setEffScaleKey(spep_2,Bakuen,-1.0,1.0);
setEffScaleKey(spep_2+26,Bakuen,-1.0,1.0);
setEffScaleKey(spep_2+27,Bakuen,-1.0,1.0);
setEffScaleKey(spep_2+28,Bakuen,-2.0,2.0);
setEffScaleKey(spep_2+76,Bakuen,-2.0,2.0);

setEffAlphaKey(spep_2,Bakuen,255);
setEffAlphaKey(spep_2+76,Bakuen,255);

setEffRotateKey(spep_2,Bakuen,0);
setEffRotateKey(spep_2+26,Bakuen,0);
setEffRotateKey(spep_2+27,Bakuen,0);
setEffRotateKey(spep_2+28,Bakuen,-19.3);
setEffRotateKey(spep_2+76,Bakuen,-19.3);

Kitano=entryEffectLife( spep_2, SP_02x, 76, 0x80,  -1, 0,  0,  0);  --集中線
setEffMoveKey(spep_2,Kitano,0,0,0);
setEffMoveKey(spep_2+76,Kitano,0,0,0);

setEffScaleKey(spep_2,Kitano,1.0,1.0);
setEffScaleKey(spep_2+76,Kitano,1.0,1.0);

setEffAlphaKey(spep_2,Kitano,255);
setEffAlphaKey(spep_2+76,Kitano,255);

setEffRotateKey(spep_2,Kitano,0);
setEffRotateKey(spep_2+76,Kitano,0);

setEffShake(spep_2,Kitano,76,10);

--敵--
changeAnime(spep_2 + 38,1,107);
setDisp( spep_2 + 39,1,1);
setDisp( spep_2 + 40,1,1);
setDisp( spep_2 + 76,1,0);

setMoveKey( spep_2 + 61-22, 1, 48.3, -56.8 , 0 );
setMoveKey( spep_2 + 62-22, 1, 48.3, -56.8 , 0 );
setMoveKey( spep_2 + 64-22, 1, 48.3, -56.8 , 0 );
setMoveKey( spep_2 + 66-22, 1, 54.1, -70.2 , 0 );
setMoveKey( spep_2 + 68-22, 1, 59.7, -85.5 , 0 );
setMoveKey( spep_2 + 70-22, 1, 65.1, -99.6 , 0 );
setMoveKey( spep_2 + 72-22, 1, 70.3, -112.6 , 0 );
setMoveKey( spep_2 + 74-22, 1, 75.3, -124.7 , 0 );
setMoveKey( spep_2 + 76-22, 1, 80.1, -136 , 0 );
setMoveKey( spep_2 + 78-22, 1, 84.7, -146.7 , 0 );
setMoveKey( spep_2 + 80-22, 1, 89.1, -156.8 , 0 );
setMoveKey( spep_2 + 82-22, 1, 93.3, -166.3 , 0 );
setMoveKey( spep_2 + 84-22, 1, 97.3, -175.4 , 0 );
setMoveKey( spep_2 + 86-22, 1, 101.2, -183.9 , 0 );
setMoveKey( spep_2 + 88-22, 1, 104.9, -192.1 , 0 );
setMoveKey( spep_2 + 90-22, 1, 108.4, -199.8 , 0 );
setMoveKey( spep_2 + 92-22, 1, 111.8, -207.1 , 0 );
setMoveKey( spep_2 + 94-22, 1, 115, -214 , 0 );
setMoveKey( spep_2 + 96-22, 1, 118, -220.5 , 0 );
--setMoveKey( spep_2 + 98-22, 1, 120.8, -226.5 , 0 );
setScaleKey( spep_2 + 61-22, 1, 0.81, 0.8 );
setScaleKey( spep_2 + 62-22, 1, 0.81, 0.8 );
setScaleKey( spep_2 + 64-22, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 66-22, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 68-22, 1, 0.98, 0.99 );
setScaleKey( spep_2 + 70-22, 1, 1.06, 1.08 );
setScaleKey( spep_2 + 72-22, 1, 1.14, 1.16 );
setScaleKey( spep_2 + 74-22, 1, 1.2, 1.23 );
setScaleKey( spep_2 + 76-22, 1, 1.27, 1.29 );
setScaleKey( spep_2 + 78-22, 1, 1.33, 1.35 );
setScaleKey( spep_2 + 80-22, 1, 1.39, 1.41 );
setScaleKey( spep_2 + 82-22, 1, 1.45, 1.47 );
setScaleKey( spep_2 + 84-22, 1, 1.5, 1.52 );
setScaleKey( spep_2 + 86-22, 1, 1.55, 1.56 );
setScaleKey( spep_2 + 88-22, 1, 1.6, 1.61 );
setScaleKey( spep_2 + 90-22, 1, 1.64, 1.65 );
setScaleKey( spep_2 + 92-22, 1, 1.69, 1.69 );
setScaleKey( spep_2 + 94-22, 1, 1.73, 1.73 );
setScaleKey( spep_2 + 96-22, 1, 1.77, 1.77 );
--setScaleKey( spep_2 + 98-22, 1, 1.8, 1.8 );

setRotateKey( spep_2 + 60-22, 1, 355 ); --36.7　320
setRotateKey( spep_2 + 61-22, 1, 355 ); --36.7
setRotateKey( spep_2 + 96-22, 1, 355 );

setShakeChara( spep_2 + 62-22, 1, 36, 10 );

playSe( spep_2+36,1032);

--------------------------------------
--Last
--------------------------------------
spep_3=spep_2+78;

--敵の動き--
-- ** 次の準備 ** --
--entryFade( spep_3-5, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp( spep_3, 1, 1);
--setMoveKey(  spep_3-1,    1,  100,  0,   0);
--setScaleKey( spep_3-1,    1,  1.0, 1.0);
setMoveKey(  spep_3,    1,    0,   0,   128);
setScaleKey( spep_3,    1,  0.1, 0.1);

changeAnime( spep_3, 1, 107);                         -- 手前ダメージ
entryEffect( spep_3+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_3+8, SE_10);

setMoveKey(  spep_3+8,   1,    0,   0,   128);
setMoveKey(  spep_3+15,   1,  -60,  -200,  -100);
setMoveKey(  spep_3+16,   1,  -60,  -200,  -100);
setDamage( spep_3+16, 1, 0);  -- ダメージ振動等
setShake(spep_3+7,6,15);
setShake(spep_3+13,15,10);

setRotateKey( spep_3,  1,  30 );
setRotateKey( spep_3+2,  1,  80 );
setRotateKey( spep_3+4,  1, 120 );
setRotateKey( spep_3+6,  1, 160 );
setRotateKey( spep_3+8,  1, 200 );
setRotateKey( spep_3+10,  1, 260 );
setRotateKey( spep_3+12,  1, 320 );
setRotateKey( spep_3+14,  1,   0 );

setShakeChara( spep_3+15, 1, 5,  10);
setShakeChara( spep_3+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep_3+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep_3+15, ct, 30, 10);
setEffRotateKey( spep_3+15, ct, -40);
setEffScaleKey( spep_3+15, ct, 4.0, 4.0);
setEffScaleKey( spep_3+16, ct, 2.0, 2.0);
setEffScaleKey( spep_3+17, ct, 2.6, 2.6);
setEffScaleKey( spep_3+18, ct, 4.0, 4.0);
setEffScaleKey( spep_3+19, ct, 2.6, 2.6);
setEffScaleKey( spep_3+20, ct, 3.8, 3.8);
setEffScaleKey( spep_3+110, ct, 3.8, 3.8);
setEffAlphaKey( spep_3+15, ct, 255);
setEffAlphaKey( spep_3+105, ct, 255);
setEffAlphaKey( spep_3+115, ct, 0);

playSe( spep_3+3, SE_11);
shuchusen = entryEffectLife( spep_3+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_3+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

shuchusenkuro = entryEffectLife( spep_3+15, 1657, 120, 0x80,  -1, 0,  0,  0);   -- 集中線

-- ダメージ表示
dealDamage(spep_3+16);
entryFade( spep_3+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_3+110);

end