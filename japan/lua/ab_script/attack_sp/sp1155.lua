--sp1155 1012300 リブリアン_乙女の突進 

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

SP_01=151317; --100f
SP_02=151318; --120f
SP_03=151319; --100f

setVisibleUI(0, 0);

setDisp( 0, 0, 1); --味方表示
setDisp( 0, 1, 0); --敵非表示

changeAnime( 0, 0, 1); --味方立ちポーズ

setMoveKey( 0, 0, 0, -54, 0); --味方位置
setMoveKey( 1, 0, 0, -54, 0); --味方位置
setMoveKey( 2, 0, 0, -54, 0); --味方位置
setMoveKey( 3, 0, 0, -54, 0); --味方位置
setMoveKey( 4, 0, 0, -54, 0); --味方位置
setMoveKey( 5, 0, 0, -54, 0); --味方位置

setScaleKey( 0, 0, 1.5, 1.5);
setScaleKey( 1, 0, 1.5, 1.5);
setScaleKey( 2, 0, 1.5, 1.5);
setScaleKey( 3, 0, 1.5, 1.5);
setScaleKey( 4, 0, 1.5, 1.5);
setScaleKey( 5, 1, 1.5, 1.5);

setRotateKey( 0,  1,  0 );

------------------------------------------------------
-- 気溜め(50F)(0-50F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

spep1=0;
--気を貯める
--         frame, eff, atr,tgt, tag,  x, y
setDisp( 0, 0, 1); --味方表示
setDisp(spep1+50,0,0);

changeAnime(spep1+10,0,17);

setMoveKey(spep1+5,0,0,-54,0);
setMoveKey(spep1+50,0,0,-54,0);
setMoveKey(spep1+51,0,0,-800,0);

setScaleKey(spep1+5, 0, 1.5, 1.5);
setScaleKey(spep1+50, 0, 1.5, 1.5);

setRotateKey(spep1+5, 0, 0);
setRotateKey(spep1+50, 0, 0);

setShakeChara( spep1, 0, 50, 10);

ki1=entryEffectLife(spep1+10,1501,40,0x80, -1,0,0,0);    -- eff_002溜めエフェクト1キャラ後用
setEffMoveKey(spep1+10,ki1,0,0,0);
setEffScaleKey(spep1+10,ki1,1.0,1.0);
setEffRotateKey(spep1+10,ki1,0);
setEffAlphaKey(spep1+10,ki1,255);

setEffMoveKey(spep1+50,ki1,0,0,0);
setEffScaleKey(spep1+50,ki1,1.0,1.0);
setEffRotateKey(spep1+50,ki1,0);
setEffAlphaKey(spep1+50,ki1,255);

ki2=entryEffectLife(spep1+10, 1500, 40, 0,    -1,  0,  0,  0);    -- eff_001溜めエフェクト1キャラ前用
setEffMoveKey(spep1+10,ki2,0,0,0);
setEffScaleKey(spep1+10,ki2,1.0,1.0);
setEffRotateKey(spep1+10,ki2,0);
setEffAlphaKey(spep1+10,ki2,255);

setEffMoveKey(spep1+50,ki2,0,0,0);
setEffScaleKey(spep1+50,ki2,1.0,1.0);
setEffRotateKey(spep1+50,ki2,0);
setEffAlphaKey(spep1+50,ki2,255);

playSe( spep1+10, SE_01);

--[[
-- ** エフェクト等 ** --
entryFadeBg(spep1+10, 0,40,0,10,10,10,220);
]]--

aura = entryEffectLife(  spep1+10,   311, 40, 0x100,  -1,  0,  0,  -230); -- オーラ
setEffScaleKey( spep1+10, aura, 2.3, 2.3);

-- 書き文字エントリー
ctZuzu = entryEffectLife( spep1+10, 10013, 40, 0, -1, 0, 0, 280); -- ズズンッ
setEffShake(spep1+10, ctZuzu, 55, 7);
setEffAlphaKey(spep1+10, ctZuzu, 255);
setEffAlphaKey(spep1+45, ctZuzu, 255);
setEffAlphaKey(spep1+50, ctZuzu, 10);
setEffScaleKey( spep1+10, ctZuzu, 0.1, 0.1);
setEffScaleKey( spep1+15, ctZuzu, 2.6, 2.6);

entryFade( spep1+42, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade

------------------------------------------------------
-- Rolling1(100F)
------------------------------------------------------
spep2=spep1+50;

entryFadeBg(spep2, 0,100,0,10,10,10,220);

-- ** エフェクト等 ** --
Rolling1=entryEffectLife(spep2, SP_01, 100, 0x100, -1 ,0 ,0 ,0);

setEffMoveKey(spep2,Rolling1,0,0,0);
setEffScaleKey(spep2,Rolling1,1.0,1.0);
setEffRotateKey(spep2,Rolling1,0);
setEffAlphaKey(spep2,Rolling1,255);

setEffMoveKey(spep2+100,Rolling1,0,0,0);
setEffScaleKey(spep2+100,Rolling1,1.0,1.0);
setEffRotateKey(spep2+100,Rolling1,0); 
setEffAlphaKey(spep2+100,Rolling1,255);

speff = entryEffect( spep2,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep2,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( spep2+3, SE_04);
--playSe( spep2+70, 8);

-- 書き文字エントリー
ctgogo = entryEffectLife( spep2+10, 190006, 70, 0x100, -1, 0, 0,530, 0);    -- ゴゴゴゴ
setEffShake(spep2+10, ctgogo, 70, 10);
setEffScaleKey(spep2+10, ctgogo, 0.8, 0.8);
setEffRotateKey(spep2+10, ctgogo, 0);
setEffAlphaKey( spep2+10, ctgogo, 255);

entryFade( spep2+92, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade

-- ** エフェクト等 ** --
shuchusen2 = entryEffectLife( spep2, 906, 100, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep2, shuchusen2, 1.0, 1.0);

------------------------------------------------------
-- カードカットイン(90F)(230-320F)
------------------------------------------------------
spep3=spep2+100;

setScaleKey( spep3-1,   0, 1.2, 1.2);
setScaleKey( spep3-1,   0, 1.5, 1.5);
setScaleKey( spep3,   0, 1.0, 1.0);

playSe( spep3+3, SE_05);
speff = entryEffect(  spep3,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

-- ** エフェクト等 ** --
shuchusen3 = entryEffectLife( spep3, 906, 90, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep3, shuchusen3, 1.0, 1.0);

entryFade( spep3+81, 7, 5, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


------------------------------------------------------
-- Rolling2(120F)
------------------------------------------------------
spep4=spep3+90;

entryFadeBg(spep4, 0,120,0,10,10,10,255);

-- ** エフェクト等 ** --
Rolling2=entryEffectLife(spep4,SP_02,120,0x100,-1,0,0,0);

setEffMoveKey(spep4,Rolling2,0,0,0);
setEffScaleKey(spep4,Rolling2,1.0,1.0);
setEffRotateKey(spep4,Rolling2,0);
setEffAlphaKey(spep4,Rolling2,255);

setEffMoveKey(spep4+120,Rolling2,0,0,0);
setEffScaleKey(spep4+120,Rolling2,1.0,1.0);
setEffRotateKey(spep4+120,Rolling2,0);
setEffAlphaKey(spep4+120,Rolling2,255);

spname = entryEffectLife( spep4, 1508,56,  0,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え
setEffAlphaKey( spep4,spname,255);
setEffAlphaKey( spep4+56,spname,255); 

-- ** エフェクト等 ** --
shuchusen4 = entryEffectLife( spep4, 906, 40, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep4, shuchusen4, 1.0, 1.0);

ryusen4 = entryEffectLife( spep4, 921, 120, 0x80,  -1, 0,  0,  0);   -- 流線
setEffScaleKey( spep4, ryusen4, 1.6, 1.6);
setEffRotateKey( spep4, ryusen4, 200);
setEffAlphaKey(spep4,ryusen4,255);

setEffScaleKey( spep4+120, ryusen4, 1.5, 1.5);
setEffRotateKey( spep4+120, ryusen4, 200);
setEffAlphaKey(spep4+120,ryusen4,255);

-- ** 書き文字 ** --
ctZuo = entryEffectLife( spep4+8,10012, 48, 0x100, -1, 0, 0, 0);

setEffMoveKey( spep4+8, ctZuo, 80, 330, 0);
setEffMoveKey( spep4+15, ctZuo, 120, 380,0);
setEffMoveKey( spep4+56, ctZuo, 120, 380,0);

setEffRotateKey( spep4+8, ctZuo, 30);

setEffScaleKey( spep4+8, ctZuo, 0.1, 0.1);
setEffScaleKey( spep4+15, ctZuo, 2.4, 2.4);
setEffScaleKey( spep4+47, ctZuo, 2.4, 2.4);
setEffScaleKey( spep4+56, ctZuo, 6.0, 6.0);

setEffAlphaKey( spep4+8,   ctZuo, 255);
setEffAlphaKey( spep4+47, ctZuo, 255);
setEffAlphaKey( spep4+56, ctZuo, 0);

setEffShake( spep4+8,ctZuo,48,20);

entryFade( spep4+112, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade

playSe( spep4+40, 8);

------------------------------------------------------
-- Rolling3(100F)
------------------------------------------------------
spep5=spep4+120;


setDisp(spep5,1,1);
changeAnime(spep5,1,118);

setMoveKey(spep5-1,1,200,-200,0);


--setScaleKey(spep5-1,1,1.6,1.6);
--setScaleKey(spep5+98,1,1.6,1.6);

setScaleKey(spep5-1,1,2,2);
--setScaleKey(spep5+98,1,2,2);
setScaleKey(spep5+50,1,2,2);


setRotateKey(spep5-1,1,0);
--setRotateKey(spep5+98,1,0);
setRotateKey(spep5+50,1,0);
setShakeChara(spep5-1,1,36,10);

-- ** エフェクト等 ** --
Rolling3=entryEffectLife(spep5,SP_03,100,0x80,-1,0,0,0);

setEffMoveKey(spep5,Rolling3,0,0,0);
setEffScaleKey(spep5,Rolling3,1.0,1.0);
setEffRotateKey(spep5,Rolling3,0);
setEffAlphaKey(spep5,Rolling3,255);

setEffMoveKey(spep5+100,Rolling3,0,0,0);
setEffScaleKey(spep5+100,Rolling3,1.0,1.0);
setEffRotateKey(spep5+100,Rolling3,0);
setEffAlphaKey(spep5+100,Rolling3,255);

-- ** エフェクト等 ** --
shuchusen5 = entryEffectLife( spep5, 906, 100, 0x100,  -1, -400,  0,  0);   -- 集中線
setEffScaleKey( spep5, shuchusen5, 1.8, 1.8);

-- ** 書き文字 ** --
ctZudodo = entryEffectLife( spep5, 10014, 69, 0x100, -1, 0, 0, 400);
setEffScaleKey( spep5, ctZudodo, 2.8, 2.8);
setEffRotateKey(spep5, ctZudodo, 70);
setEffAlphaKey(spep5, ctZudodo, 255);
setEffAlphaKey(spep5+69, ctZudodo, 255);

setEffShake(spep5, ctZudodo,69,20);


playSe( spep5+3, 1042);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 390; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

setMoveKey(SP_dodge+4,1,180,-200,0);
setScaleKey(SP_dodge+4,1,2,2);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(   SP_dodge+10,   0,    -2500, -250,   0);

setMoveKey(   SP_dodge+8,   1,    170,  -50,  0);
setScaleKey(   SP_dodge+8,   1, 1.4, 1.4);

setMoveKey(  SP_dodge+9,    1,  0,  0,   0);
setScaleKey( SP_dodge+9,    1,  1.5, 1.5);
setRotateKey(   SP_dodge+9,   1, 0);

endPhase(SP_dodge+10);
do return end
else end

------------------------------------------------------
-- 回避じゃないとき
------------------------------------------------------

entryFade( spep5+92, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade

playSe( spep5+60, 8);

setShakeChara(spep5+35,1,55,10);

setMoveKey(spep5+98,1,150,-200,0);
setScaleKey(spep5+98,1,2,2);
setRotateKey(spep5+98,1,0);

setDisp(spep5+98,1,0);


------------------------------------------------------
-- 爆発 ( 110F)
------------------------------------------------------
spep6=spep5+100;

setDisp( spep6-1, 1, 1);
setMoveKey(  spep6-1,    1,  100,  0,   0);
setScaleKey( spep6-1,    1,  1.0, 1.0);
setMoveKey(  spep6,    1,    0,   0,   128);
setScaleKey( spep6,    1,  0.1, 0.1);

changeAnime( spep6, 1, 107);                         -- 手前ダメージ
entryEffect( spep6+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep6+8, SE_10);

setMoveKey(  spep6+8,   1,    0,   0,   128);
setMoveKey(  spep6+15,   1,  -60,  -200,  -100);
setMoveKey(  spep6+16,   1,  -60,  -200,  -100);
setDamage( spep6+16, 1, 0);  -- ダメージ振動等
setShake(spep6+7,6,15);
setShake(spep6+13,15,10);

setRotateKey( spep6,  1,  30 );
setRotateKey( spep6+2,  1,  80 );
setRotateKey( spep6+4,  1, 120 );
setRotateKey( spep6+6,  1, 160 );
setRotateKey( spep6+8,  1, 200 );
setRotateKey( spep6+10,  1, 260 );
setRotateKey( spep6+12,  1, 320 );
setRotateKey( spep6+14,  1,   0 );

-- 書き文字エントリー
ctGa = entryEffectLife( spep6+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep6+15, ctGa, 30, 10);
setEffRotateKey( spep6+15, ctGa, -40);
setEffScaleKey( spep6+15, ctGa, 4.0, 4.0);
setEffScaleKey( spep6+16, ctGa, 2.0, 2.0);
setEffScaleKey( spep6+17, ctGa, 2.6, 2.6);
setEffScaleKey( spep6+18, ctGa, 4.0, 4.0);
setEffScaleKey( spep6+19, ctGa, 2.6, 2.6);
setEffScaleKey( spep6+20, ctGa, 3.8, 3.8);
setEffScaleKey( spep6+110, ctGa, 3.8, 3.8);
setEffAlphaKey( spep6+15, ctGa, 255);
setEffAlphaKey( spep6+105, ctGa, 255);
setEffAlphaKey( spep6+115, ctGa, 0);

playSe( spep6+3, SE_11);
shuchusen = entryEffectLife( spep6+3, 906, 110, 0x100,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep6+3, 1600,  0x100,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(spep6+16);
entryFade( spep6+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep6+110);

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 気溜め(50F)(0-50F)
------------------------------------------------------

spep1=0;
--気を貯める
--         frame, eff, atr,tgt, tag,  x, y
setDisp( 0, 0, 1); --味方表示
setDisp(spep1+50,0,0);

changeAnime(spep1+10,0,17);

setMoveKey(spep1+5,0,0,-54,0);
setMoveKey(spep1+50,0,0,-54,0);
setMoveKey(spep1+51,0,0,-800,0);

setScaleKey(spep1+5, 0, 1.5, 1.5);
setScaleKey(spep1+50, 0, 1.5, 1.5);

setRotateKey(spep1+5, 0, 0);
setRotateKey(spep1+50, 0, 0);

setShakeChara( spep1, 0, 50, 10);

ki1=entryEffectLife(spep1+10,1501,40,0x80, -1,0,0,0);    -- eff_002溜めエフェクト1キャラ後用
setEffMoveKey(spep1+10,ki1,0,0,0);
setEffScaleKey(spep1+10,ki1,1.0,1.0);
setEffRotateKey(spep1+10,ki1,0);
setEffAlphaKey(spep1+10,ki1,255);

setEffMoveKey(spep1+50,ki1,0,0,0);
setEffScaleKey(spep1+50,ki1,1.0,1.0);
setEffRotateKey(spep1+50,ki1,0);
setEffAlphaKey(spep1+50,ki1,255);

ki2=entryEffectLife(spep1+10, 1500, 40, 0,    -1,  0,  0,  0);    -- eff_001溜めエフェクト1キャラ前用
setEffMoveKey(spep1+10,ki2,0,0,0);
setEffScaleKey(spep1+10,ki2,1.0,1.0);
setEffRotateKey(spep1+10,ki2,0);
setEffAlphaKey(spep1+10,ki2,255);

setEffMoveKey(spep1+50,ki2,0,0,0);
setEffScaleKey(spep1+50,ki2,1.0,1.0);
setEffRotateKey(spep1+50,ki2,0);
setEffAlphaKey(spep1+50,ki2,255);

playSe( spep1+10, SE_01);

--[[
-- ** エフェクト等 ** --
entryFadeBg(spep1+10, 0,40,0,10,10,10,220);
]]--

aura = entryEffectLife(  spep1+10,   311, 40, 0x100,  -1,  0,  0,  -230); -- オーラ
setEffScaleKey( spep1+10, aura, 2.3, 2.3);

-- 書き文字エントリー
ctZuzu = entryEffectLife( spep1+10, 10013, 40, 0, -1, 0, 0, 280); -- ズズンッ
setEffShake(spep1+10, ctZuzu, 55, 7);
setEffAlphaKey(spep1+10, ctZuzu, 255);
setEffAlphaKey(spep1+45, ctZuzu, 255);
setEffAlphaKey(spep1+50, ctZuzu, 10);
setEffScaleKey( spep1+10, ctZuzu, 0.1, 0.1);
setEffScaleKey( spep1+15, ctZuzu, 2.6, 2.6);

entryFade( spep1+42, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade

------------------------------------------------------
-- Rolling1(100F)
------------------------------------------------------
spep2=spep1+50;

entryFadeBg(spep2, 0,100,0,10,10,10,220);

-- ** エフェクト等 ** --
Rolling1=entryEffectLife(spep2, SP_01, 100, 0x100, -1 ,0 ,0 ,0);

setEffMoveKey(spep2,Rolling1,0,0,0);
setEffScaleKey(spep2,Rolling1,1.0,1.0);
setEffRotateKey(spep2,Rolling1,0);
setEffAlphaKey(spep2,Rolling1,255);

setEffMoveKey(spep2+100,Rolling1,0,0,0);
setEffScaleKey(spep2+100,Rolling1,1.0,1.0);
setEffRotateKey(spep2+100,Rolling1,0); 
setEffAlphaKey(spep2+100,Rolling1,255);

--speff = entryEffect( spep2,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  spep2,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( spep2+3, SE_04);
--playSe( spep2+70, 8);

-- 書き文字エントリー
ctgogo = entryEffectLife( spep2+10, 190006, 70, 0x100, -1, 0, 0,530, 0);    -- ゴゴゴゴ
setEffShake(spep2+10, ctgogo, 70, 10);
setEffScaleKey(spep2+10, ctgogo, -0.8, 0.8);
setEffRotateKey(spep2+10, ctgogo, 0);
setEffAlphaKey( spep2+10, ctgogo, 255);

entryFade( spep2+92, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade

-- ** エフェクト等 ** --
shuchusen2 = entryEffectLife( spep2, 906, 100, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep2, shuchusen2, 1.0, 1.0);

------------------------------------------------------
-- カードカットイン(90F)(230-320F)
------------------------------------------------------
spep3=spep2+100;

setScaleKey( spep3-1,   0, 1.2, 1.2);
setScaleKey( spep3-1,   0, 1.5, 1.5);
setScaleKey( spep3,   0, 1.0, 1.0);

playSe( spep3+3, SE_05);
speff = entryEffect(  spep3,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

-- ** エフェクト等 ** --
shuchusen3 = entryEffectLife( spep3, 906, 90, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep3, shuchusen3, 1.0, 1.0);

entryFade( spep3+81, 7, 5, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


------------------------------------------------------
-- Rolling2(120F)
------------------------------------------------------
spep4=spep3+90;

entryFadeBg(spep4, 0,120,0,10,10,10,255);

-- ** エフェクト等 ** --
Rolling2=entryEffectLife(spep4,SP_02,120,0x100,-1,0,0,0);

setEffMoveKey(spep4,Rolling2,0,0,0);
setEffScaleKey(spep4,Rolling2,1.0,1.0);
setEffRotateKey(spep4,Rolling2,0);
setEffAlphaKey(spep4,Rolling2,255);

setEffMoveKey(spep4+120,Rolling2,0,0,0);
setEffScaleKey(spep4+120,Rolling2,1.0,1.0);
setEffRotateKey(spep4+120,Rolling2,0);
setEffAlphaKey(spep4+120,Rolling2,255);

spname = entryEffectLife( spep4, 1508,56,  0,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え
setEffAlphaKey( spep4,spname,255);
setEffAlphaKey( spep4+56,spname,255); 

-- ** エフェクト等 ** --
shuchusen4 = entryEffectLife( spep4, 906, 40, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep4, shuchusen4, 1.0, 1.0);

ryusen4 = entryEffectLife( spep4, 921, 120, 0x80,  -1, 0,  0,  0);   -- 流線
setEffScaleKey( spep4, ryusen4, 1.6, 1.6);
setEffRotateKey( spep4, ryusen4, 200);
setEffAlphaKey(spep4,ryusen4,255);

setEffScaleKey( spep4+120, ryusen4, 1.5, 1.5);
setEffRotateKey( spep4+120, ryusen4, 200);
setEffAlphaKey(spep4+120,ryusen4,255);

-- ** 書き文字 ** --
ctZuo = entryEffectLife( spep4+8,10012, 48, 0x100, -1, 0, 0, 0);

setEffMoveKey( spep4+8, ctZuo, 80, 330, 0);
setEffMoveKey( spep4+15, ctZuo, 120, 380,0);
setEffMoveKey( spep4+56, ctZuo, 120, 380,0);

setEffRotateKey( spep4+8, ctZuo, 30);

setEffScaleKey( spep4+8, ctZuo, 0.1, 0.1);
setEffScaleKey( spep4+15, ctZuo, 2.4, 2.4);
setEffScaleKey( spep4+47, ctZuo, 2.4, 2.4);
setEffScaleKey( spep4+56, ctZuo, 6.0, 6.0);

setEffAlphaKey( spep4+8,   ctZuo, 255);
setEffAlphaKey( spep4+47, ctZuo, 255);
setEffAlphaKey( spep4+56, ctZuo, 0);

setEffShake( spep4+8,ctZuo,48,20);

entryFade( spep4+112, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade

playSe( spep4+40, 8);

------------------------------------------------------
-- Rolling3(100F)
------------------------------------------------------
spep5=spep4+120;


setDisp(spep5,1,1);
changeAnime(spep5,1,118);

setMoveKey(spep5-1,1,200,-200,0);


--setScaleKey(spep5-1,1,1.6,1.6);
--setScaleKey(spep5+98,1,1.6,1.6);

setScaleKey(spep5-1,1,2,2);
--setScaleKey(spep5+98,1,2,2);
setScaleKey(spep5+50,1,2,2);


setRotateKey(spep5-1,1,0);
--setRotateKey(spep5+98,1,0);
setRotateKey(spep5+50,1,0);
setShakeChara(spep5-1,1,36,10);

-- ** エフェクト等 ** --
Rolling3=entryEffectLife(spep5,SP_03,100,0x80,-1,0,0,0);

setEffMoveKey(spep5,Rolling3,0,0,0);
setEffScaleKey(spep5,Rolling3,1.0,1.0);
setEffRotateKey(spep5,Rolling3,0);
setEffAlphaKey(spep5,Rolling3,255);

setEffMoveKey(spep5+100,Rolling3,0,0,0);
setEffScaleKey(spep5+100,Rolling3,1.0,1.0);
setEffRotateKey(spep5+100,Rolling3,0);
setEffAlphaKey(spep5+100,Rolling3,255);

-- ** エフェクト等 ** --
shuchusen5 = entryEffectLife( spep5, 906, 100, 0x100,  -1, -400,  0,  0);   -- 集中線
setEffScaleKey( spep5, shuchusen5, 1.8, 1.8);

-- ** 書き文字 ** --
ctZudodo = entryEffectLife( spep5, 10014, 69, 0x100, -1, 0, 0, 400);
setEffScaleKey( spep5, ctZudodo, 2.8, 2.8);
setEffRotateKey(spep5, ctZudodo, 0);
setEffAlphaKey(spep5, ctZudodo, 255);
setEffAlphaKey(spep5+69, ctZudodo, 255);

setEffShake(spep5, ctZudodo,69,20);


playSe( spep5+3, 1042);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 390; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

setMoveKey(SP_dodge+4,1,180,-200,0);
setScaleKey(SP_dodge+4,1,2,2);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(   SP_dodge+10,   0,    -2500, -250,   0);

setMoveKey(   SP_dodge+8,   1,    170,  -50,  0);
setScaleKey(   SP_dodge+8,   1, 1.4, 1.4);

setMoveKey(  SP_dodge+9,    1,  0,  0,   0);
setScaleKey( SP_dodge+9,    1,  1.5, 1.5);
setRotateKey(   SP_dodge+9,   1, 0);

endPhase(SP_dodge+10);
do return end
else end

------------------------------------------------------
-- 回避じゃないとき
------------------------------------------------------

entryFade( spep5+92, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade

playSe( spep5+60, 8);

setShakeChara(spep5+35,1,55,10);

setMoveKey(spep5+98,1,150,-200,0);
setScaleKey(spep5+98,1,2,2);
setRotateKey(spep5+98,1,0);

setDisp(spep5+98,1,0);


------------------------------------------------------
-- 爆発 ( 110F)
------------------------------------------------------
spep6=spep5+100;

setDisp( spep6-1, 1, 1);
setMoveKey(  spep6-1,    1,  100,  0,   0);
setScaleKey( spep6-1,    1,  1.0, 1.0);
setMoveKey(  spep6,    1,    0,   0,   128);
setScaleKey( spep6,    1,  0.1, 0.1);

changeAnime( spep6, 1, 107);                         -- 手前ダメージ
entryEffect( spep6+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep6+8, SE_10);

setMoveKey(  spep6+8,   1,    0,   0,   128);
setMoveKey(  spep6+15,   1,  -60,  -200,  -100);
setMoveKey(  spep6+16,   1,  -60,  -200,  -100);
setDamage( spep6+16, 1, 0);  -- ダメージ振動等
setShake(spep6+7,6,15);
setShake(spep6+13,15,10);

setRotateKey( spep6,  1,  30 );
setRotateKey( spep6+2,  1,  80 );
setRotateKey( spep6+4,  1, 120 );
setRotateKey( spep6+6,  1, 160 );
setRotateKey( spep6+8,  1, 200 );
setRotateKey( spep6+10,  1, 260 );
setRotateKey( spep6+12,  1, 320 );
setRotateKey( spep6+14,  1,   0 );

-- 書き文字エントリー
ctGa = entryEffectLife( spep6+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep6+15, ctGa, 30, 10);
setEffRotateKey( spep6+15, ctGa, -40);
setEffScaleKey( spep6+15, ctGa, 4.0, 4.0);
setEffScaleKey( spep6+16, ctGa, 2.0, 2.0);
setEffScaleKey( spep6+17, ctGa, 2.6, 2.6);
setEffScaleKey( spep6+18, ctGa, 4.0, 4.0);
setEffScaleKey( spep6+19, ctGa, 2.6, 2.6);
setEffScaleKey( spep6+20, ctGa, 3.8, 3.8);
setEffScaleKey( spep6+110, ctGa, 3.8, 3.8);
setEffAlphaKey( spep6+15, ctGa, 255);
setEffAlphaKey( spep6+105, ctGa, 255);
setEffAlphaKey( spep6+115, ctGa, 0);

playSe( spep6+3, SE_11);
shuchusen = entryEffectLife( spep6+3, 906, 110, 0x100,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep6+3, 1600,  0x100,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(spep6+16);
entryFade( spep6+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep6+110);


end
