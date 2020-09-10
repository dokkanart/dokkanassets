--SP406.lua ホイ　邪光波

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SP_01=150943;	--突撃	ef_001
SP_02=150944;	--ひた走り1	ef_002
SP_03=150945;	--ひた走り2	ef_003
SP_04=150946;	--ひた走り3	ef_004
SP_05=150947;	--逆さま登場	ef_005
SP_06=150948;	--カットイン用	ef_006
SP_07=150949;	--溜めて撃つ	ef_007
SP_08=150950;	--ビーム
SP_09=150951;	--ひた走り1（敵）	ef_102
SP_10=150952;	--ひた走り2（敵）	ef_103
SP_11=150953;	--ひた走り3（敵）	ef_104
SP_12=150954;	--逆さま登場（敵）	ef_105
SP_13=150955;	--カットイン用（敵）	ef_106
SP_14=150956;	--溜めて撃つ（敵）	ef_107

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
SE_13 = 1023; --ギャン
SE_14 = 4; --登場(48)

multi_frm = 2;
changeAnime( 0, 0, 0);                       -- 立ち
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);
setMoveKey(   0,   0,   600, -800,   0);
setMoveKey(   0,   1,   600, -800,   0);
setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   0,   1, 1.5, 1.5);

------------------------------------
--SP_01=150943;	--突撃	ef_001(60F)
------------------------------------
if (_IS_PLAYER_SIDE_ == 1) then

kame_flag = 0x00;
setVisibleUI(0, 0);
spep1=0;

-- ** ホイの動き ** --
Totsugeki = entryEffect(spep1, SP_01 , 0x100, -1 ,0,0,0); 
setEffMoveKey(spep1, Totsugeki, 0, 0, 0);
setEffScaleKey(spep1, Totsugeki, 1.0 ,1.0);
setEffAlphaKey(spep1, Totsugeki, 255);

setEffShake(spep1, Totsugeki , 60, 10);

playSe(spep1,SE_04);

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep1, 906, 59, 0x100, -1, 0, 0, 0);   -- 集中線
setEffMoveKey( spep1, shuchusen1, 0, 0, 0);
setEffScaleKey( spep1, shuchusen1, 1.0, 1.0);
setEffAlphaKey( spep1, shuchusen1, 255);
setEffRotateKey( spep1, shuchusen1, 0);

-- ** 背景 ** --
entryFadeBg( spep1, 0, 59, 0, 0, 0, 0, 150); -- ベース暗め　背景
-- ** 白 ** --
entryFade(spep1+35,23,2,10,fcolor_r, fcolor_g, fcolor_b,255); -- white fade

--(0-59F)
------------------------------------
--SP_02=150944;	--ひた走り1	ef_002(40F)
------------------------------------
spep2=spep1+60;

-- ** 敵の動き ** --
changeAnime(spep2,1,100);
setDisp(spep2,1,1);

setMoveKey(spep2,1,0,0,0);
setMoveKey(spep2+40,1,-50,-30,0);

setScaleKey(spep2,1,1.2,1.2);
setScaleKey(spep2+40,1,1.2,1.2);

setRotateKey(spep2,1,0);
setRotateKey(spep2+40,1,0);

-- ** ホイの動き ** --
Hitarun1 = entryEffect(spep2, SP_02 , 0x100, -1 ,0,0,0); 
setEffMoveKey(spep2, Hitarun1, 0, 0, 0);
setEffScaleKey(spep2, Hitarun1, 1.0 ,1.0);
setEffAlphaKey(spep2, Hitarun1, 255);

setEffShake(spep2, Hitarun1 , 40, 10);

playSe(spep2,SE_04);

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep2, 920, 40, 0x80, -1, 0, 0, 0);   -- 集中線
setEffMoveKey( spep2, shuchusen2, 0, 0, 0);
setEffScaleKey( spep2, shuchusen2, 1.4, 1.4);
setEffAlphaKey( spep2, shuchusen2, 255);
setEffRotateKey( spep2, shuchusen2, 340);

-- ** 背景 ** --
entryFadeBg( spep2, 0, 40, 0, 0, 0, 0, 200); -- ベース暗め　背景

--(60-99F)
------------------------------------
--SP_03=150945;	--ひた走り2	ef_003(26F)
------------------------------------
spep3=spep2+40;

-- ** 敵の動き ** --
setMoveKey(spep3,1,-50,-30,0);
setMoveKey(spep3+26,1,0,0,0);

setScaleKey(spep3,1,1.2,1.2);
setScaleKey(spep3+26,1,1.2,1.2);

setRotateKey(spep3,1,0);
setRotateKey(spep3+26,1,0);

-- ** ホイの動き ** --
Hitarun2 = entryEffect(spep3, SP_03 , 0x100, -1 ,0,0,0); 
setEffMoveKey(spep3, Hitarun2, 600, -500, 0);
setEffScaleKey(spep3, Hitarun2, 1.0 ,1.0);
setEffAlphaKey(spep3, Hitarun2, 255);

setEffShake(spep3, Hitarun2 , 26, 10);

playSe(spep3,SE_04);
-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep3, 920, 26, 0x80, -1, 0, 0, 0);   -- 集中線
setEffMoveKey( spep3, shuchusen3, 0, 0, 0);
setEffScaleKey( spep3, shuchusen3, 1.4, 1.4);
setEffAlphaKey( spep3, shuchusen3, 255);
setEffRotateKey( spep3, shuchusen3, 340);

-- ** 背景 ** --
entryFadeBg( spep3, 0, 26, 0, 0, 0, 0, 200); -- ベース暗め　背景

--(100-125F)
------------------------------------
--SP_04=150946;	--ひた走り3	ef_004(30F)
------------------------------------
spep4=spep3+26;

-- ** 敵の動き ** --
setMoveKey(spep4,1,0,0,0);
setMoveKey(spep4+29,1,-50,-30,0);

setScaleKey(spep4,1,1.2,1.2);
setScaleKey(spep4+29,1,1.2,1.2);

setRotateKey(spep4,1,0);
setRotateKey(spep4+29,1,0);

-- ** ホイの動き ** --
Hitarun3 = entryEffect(spep4, SP_04 , 0x100, -1 ,0,0,0); 
setEffMoveKey(spep4, Hitarun3, 0, 0, 0);
setEffScaleKey(spep4, Hitarun3, 1.0 ,1.0);
setEffAlphaKey(spep4, Hitarun3, 255);

setEffShake(spep4, Hitarun3 , 30, 10);

playSe(spep4,SE_04);
-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep4, 920, 30, 0x80, -1, 0, 0, 0);   -- 集中線
setEffMoveKey( spep4, shuchusen4, 0, 0, 0);
setEffMoveKey( spep4+30, shuchusen4, 0, 0, 0);
setEffScaleKey( spep4, shuchusen4, 1.4, 1.4);
setEffScaleKey( spep4+30, shuchusen4, 1.4, 1.4);
setEffAlphaKey( spep4, shuchusen4, 255);
setEffAlphaKey( spep4+30, shuchusen4, 255);
setEffRotateKey( spep4, shuchusen4, 345);
setEffRotateKey( spep4+30, shuchusen4, 345);
-- ** 背景 ** --
entryFadeBg( spep4, 0, 30, 0, 0, 0, 0, 200); -- ベース暗め　背景

-- ** 白 ** --
entryFade( spep4+21, 7, 3, 7, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

--(126-155F)
------------------------------------
--SP_05=150947;	--逆さま登場	ef_005(90F)
------------------------------------
spep5=spep4+30;

-- ** 敵の動き ** --
changeAnime(spep5,1,102);

--setMoveKey(spep5-1,1,-100,0,0);
setMoveKey(spep5,1,-100,0,0);
setMoveKey(spep5+90,1,-100,0,0);

--setScaleKey(spep5-1,1,1.2,1.2);
setScaleKey(spep5,1,1.2,1.2);
setScaleKey(spep5+90,1,1.2,1.2);

--setRotateKey(spep-1,1,0);
setRotateKey(spep5,1,0);
setRotateKey(spep5+90,1,0);

setDisp(spep5+90,1,0);

-- ** ホイの動き ** --
Sakasa = entryEffect(spep5, SP_05 , 0x100, -1 ,0,0,0); 
setEffMoveKey(spep5, Sakasa, 0, 0, 0);
setEffScaleKey(spep5, Sakasa, 1.0 ,1.0);
setEffAlphaKey(spep5, Sakasa, 255);

setEffShake(spep5, Sakasa , 90, 10);

playSe(spep5+10, SE_14);

-- ** 集中線 ** --
shuchusen5 = entryEffectLife( spep5+20, 906, 70, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey( spep5+20, shuchusen5, 90, 0, 0);
setEffScaleKey( spep5+20, shuchusen5, 1.5, 1.5);
setEffAlphaKey( spep5+20, shuchusen5, 255);
setEffRotateKey( spep5+20, shuchusen5, 0);

setEffMoveKey( spep5+90, shuchusen5, 90, 0, 0);
setEffScaleKey( spep5+90, shuchusen5, 1.5, 1.5);
setEffAlphaKey( spep5+90, shuchusen5, 255);
setEffRotateKey( spep5+90, shuchusen5, 0);

-- ** 背景 ** --
entryFadeBg( spep5, 0, 90, 0, 0, 0, 0, 200); -- ベース暗め　背景
-- ** 白 ** --
entryFade( spep5+71, 15, 5, 9, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

--(156-245F)
------------------------------------
--SP_06=150948;	--カットイン用	ef_006(100F)
------------------------------------
spep6=spep5+90;

Cutin = entryEffect(spep6, SP_06 , 0x100, -1 ,0,0,0); 
setEffMoveKey(spep6, Cutin, 0, 0, 0);
setEffScaleKey(spep6, Cutin, 1.0 ,1.0);
setEffAlphaKey(spep6, Cutin, 255);

setEffShake(spep6, Cutin , 100, 10);

-- ** 顔＆セリフカットイン ** --
speff = entryEffect( spep6+12, 1504, 0, -1, 0, 0, 0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                     -- カットイン差し替え
speff = entryEffect( spep6+12, 1505, 0, -1, 0, 0, 0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                     -- セリフ差し替え

ctGogo = entryEffectLife( spep6+25, 190006, 73, 0x100, -1, 0, 0, 0);    -- ゴゴゴゴ

setEffMoveKey( spep6+25, ctGogo, -50, 500, 0);
setEffScaleKey( spep6+25, ctGogo, 0.7, 0.7);
setEffRotateKey( spep6+25, ctGogo, 0);
setEffAlphaKey( spep6+25, ctGogo, 255);

--setEffMoveKey( spep6+90, ctGogo, -100,500,0);
--setEffScaleKey( spep6+90, ctGogo, 0.7, 0.7);
--setEffRotateKey( spep6+90, ctGogo, 10);
--setEffAlphaKey( spep6+90, ctGogo, 255);

--setEffMoveKey( spep6+97, ctGogo, -100,500,0);
--setEffScaleKey( spep6+97, ctGogo, 2.0, 2.0);
--setEffRotateKey( spep6+97, ctGogo, 10);
--setEffAlphaKey( spep6+97, ctGogo, 255);

setEffMoveKey( spep6+98, ctGogo, -50,500,0);
setEffScaleKey( spep6+98, ctGogo, 0.7, 0.7);
setEffRotateKey( spep6+98, ctGogo, 0);
setEffAlphaKey( spep6+98, ctGogo, 255);

setEffShake(spep6+25, ctGogo, 73, 10);

playSe(spep6+2,SE_04);

-- ** 集中線 ** --
shuchusen6 = entryEffectLife( spep6, 906, 100, 0x80, -1, 0, 0, 0);   -- 集中線
setEffMoveKey( spep6, shuchusen6, 0, 0, 0);
setEffScaleKey( spep6, shuchusen6, 1.0, 1.0);
setEffAlphaKey( spep6, shuchusen6, 255);
setEffRotateKey( spep6, shuchusen6, 0);

-- ** 背景 ** --
entryFadeBg( spep6, 0, 100, 0, 0, 0, 0, 200); -- ベース暗め　背景

-- ** 白 ** --
entryFade( spep6+88, 9, 4, 7, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

--(256-345F)
------------------------------------------------------
-- カードカットイン(95F)
------------------------------------------------------
spep7=spep6+100;

speff = entryEffect( spep7, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep7, 906, 91, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey( spep7, shuchusen, 0, 0, 0);
setEffScaleKey( spep7, shuchusen, 1.0, 1.0);
setEffAlphaKey( spep7, shuchusen, 255);
setEffRotateKey( spep7, shuchusen, 0);

-- ** 白 ** --
entryFade( spep7+83, 5, 5, 8, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep7+1, SE_05);

--(346-440F)
------------------------------------
--SP_07=150949;	--溜めて撃つ	ef_007(80F)
------------------------------------
spep8=spep7+92;

-- ** ホイの動き ** --
TameteUtsu = entryEffect(spep8, SP_07 , 0x100, -1 ,0,0,0); 
setEffMoveKey(spep8, TameteUtsu, 0, 0, 0);
setEffScaleKey(spep8, TameteUtsu, 1.0 ,1.0);
setEffAlphaKey(spep8, TameteUtsu, 255);

setEffShake(spep8, TameteUtsu , 30, 10);

playSe(spep8+29,SE_07);

-- ** 書き文字 ** --
ctZuo = entryEffectLife( spep8+29, 10012, 51, 0x100, -1, 0, 0, 0);    -- ズオ
setEffScaleKey( spep8+29, ctZuo, 1.8, 1.8);
setEffRotateKey( spep8+29, ctZuo, 30);
setEffAlphaKey( spep8+29, ctZuo, 255);
setEffMoveKey( spep8+29, ctZuo, 120,220,0);

setEffShake( spep8+29, ctZuo,51,20);

-- ** 集中線 ** --
shuchusen8 = entryEffectLife( spep8, 906, 80, 0x80, -1, 0, 0, 0);   -- 集中線
setEffMoveKey( spep8, shuchusen8, 0, 0, 0);
setEffScaleKey( spep8, shuchusen8, 1.0, 1.0);
setEffAlphaKey( spep8, shuchusen8, 255);
setEffRotateKey( spep8, shuchusen8, 0);

-- ** 背景 ** --
entryFadeBg( spep8, 0, 80, 0, 0, 0, 0, 200); -- ベース暗め　背景
-- ** 白 ** --
entryFade( spep8+68, 9, 4, 6, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

--(441-520F)
------------------------------------
--SP_08=150950;	--ビーム	(60F)
------------------------------------
spep9=spep8+80;

-- ** 敵の動き ** --
changeAnime(spep9,1,102);
setDisp(spep9,1,1);

setMoveKey(spep9,1,-100,0,0);

setScaleKey(spep9,1,1.2,1.2);

setRotateKey(spep9,1,0);

setShakeChara(spep9,1,60,10);

-- ** ホイの動き ** --
Beam = entryEffect(spep9, SP_08 , 0x100, -1 ,0,0,0); 
setEffMoveKey(spep9,Beam, 0, 0, 0);
setEffScaleKey(spep9, Beam, 1.0 ,1.0);
setEffAlphaKey(spep9, Beam, 255);

setEffShake(spep9, Beam, 60, 10);

playSe(spep9,SE_07);

-- ** 集中線 ** --
shuchusen9 = entryEffectLife( spep9, 921, 60, 0x80, -1, 0, 0, 0);   -- 集中線
setEffMoveKey( spep9, shuchusen9, 0, 0, 0);
setEffScaleKey( spep9, shuchusen9, 1.6, 1.6);
setEffAlphaKey( spep9, shuchusen9, 255);
setEffRotateKey( spep9, shuchusen9, 150);

-- ** 背景 ** --
entryFadeBg( spep9, 0, 60, 0, 0, 0, 0, 255); -- ベース暗め　背景

------------------------------------------------------
-- 回避(SP_dodge = spep9+38)
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 558; --エンドフェイズのフレーム数を置き換える

setMoveKey(SP_dodge,1,-100,0,0);
setScaleKey(SP_dodge,1,1.2,1.2);
setRotateKey(SP_dodge,1,0);

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

dodge = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);

pauseAll( SP_dodge, 67);
entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase( SP_dodge+10);

setDisp(  SP_dodge+1,1,0);
setMoveKey(  SP_dodge+1,    1,  0,  -10000,   0);
setScaleKey( SP_dodge+1,    1,  1.2, 1.2);
setMoveKey(  SP_dodge+20,    1,  0,  -10000,   0);
setScaleKey( SP_dodge+20,    1,  1.2, 1.2);

do return end
else end

------------------------------------
--回避されなかった場合
------------------------------------
setMoveKey(spep9+60,1,-100,0,0);
setScaleKey(spep9+60,1,1.2,1.2);
setRotateKey(spep9+60,1,0);

setDisp(spep9+60,1,0);

-- ** 白 ** --
entryFade( spep9+35, 15, 10, 0, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

--(521-580F)
------------------------------------
--ギャン（紫）(50F)
------------------------------------
spep10=spep9+60;

Gyan = entryEffect(spep10, 190001 , 0x100, -1 ,0,0,0); 
setEffMoveKey(spep10, Gyan, 0, 0, 0);
setEffScaleKey(spep10, Gyan, 1.0 ,1.0);
setEffAlphaKey(spep10, Gyan, 255);

setEffShake(spep10, Gyan , 30, 10);

ctg = entryEffectLife( spep10, 10006, 70, 0x100, -1, 0, 0, 260); -- ギャン
setEffShake(spep10, ctg, 99, 20);
setEffScaleKey( spep10, ctg, 0.1, 0.1);
setEffScaleKey( spep10+30, ctg, 3.4, 3.4);
setEffScaleKey( spep10+54, ctg, 3.8, 3.8);
setEffAlphaKey(spep10, ctg, 255);
setEffAlphaKey(spep10+50, ctg, 255);
setEffAlphaKey(spep10+54, ctg, 0);

-- ** 白 ** --
entryFade( spep10+50, 5, 13, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep10+1, SE_13);

--(581-630F)
------------------------------------
--Finish（定型）
------------------------------------
spep11=spep10+60;

-- ** 敵キャラの動き ** --
setDisp( spep11-1, 1, 1);
setMoveKey(  spep11-1, 1, 60, -40, 0);
setScaleKey( spep11-1, 1, 2, 2);
setRotateKey( spep11-1, 1, -75);
setMoveKey(  spep11, 1, 0, 0, 128);
setScaleKey( spep11, 1, 0.1, 0.1);
changeAnime( spep11, 1, 107);                         -- 手前ダメージ
entryEffect( spep11+8, 1509, 0x80, -1, 0, 0, 0);   -- 爆発
playSe( spep11+13, SE_11);

setMoveKey( spep11+8, 1, 0, 0, 128); --478
setMoveKey( spep11+15, 1, -60, -200, -100);
setDamage( spep11+16, 1, 0);  -- ダメージ振動等
setShake( spep11+7, 6, 15);
setShake( spep11+13, 15, 10);

setRotateKey( spep11, 1, 30 );
setRotateKey( spep11+2, 1, 80 );
setRotateKey( spep11+4, 1, 120 );
setRotateKey( spep11+6, 1, 160 );
setRotateKey( spep11+8, 1, 200 );
setRotateKey( spep11+10, 1, 260 );
setRotateKey( spep11+12, 1, 320 );
setRotateKey( spep11+14, 1, 0 );

setShakeChara( spep11+15, 1, 5, 10);
setShakeChara( spep11+20, 1, 10, 20);

-- 書き文字エントリー
ctGa = entryEffectLife( spep11+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep11+15, ctGa, 30, 10);
setEffRotateKey( spep11+15, ctGa, -40);
setEffScaleKey( spep11+15, ctGa, 4.0, 4.0);
setEffScaleKey( spep11+16, ctGa, 2.0, 2.0);
setEffScaleKey( spep11+17, ctGa, 2.6, 2.6);
setEffScaleKey( spep11+18, ctGa, 4.0, 4.0);
setEffScaleKey( spep11+19, ctGa, 2.6, 2.6);
setEffScaleKey( spep11+20, ctGa, 3.8, 3.8);
setEffScaleKey( spep11+110, ctGa, 3.8, 3.8);
setEffAlphaKey( spep11+15, ctGa, 255);
setEffAlphaKey( spep11+105, ctGa, 255);
setEffAlphaKey( spep11+115, ctGa, 0);

playSe( spep11+8, SE_10);
shuchusen = entryEffectLife( spep11+3, 906, 120, 0x100, -1, 0, 0, 0);   -- 集中線
entryEffect( spep11+3, 1600, 0x100, -1, 0, 30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage( spep11+16);
entryFade( spep11+100, 9, 10, 1, 8, 8, 8, 255); -- black fade
endPhase( spep11+110);

else

------------------------------------
--SP_01=150943;	--突撃	ef_001(60F)
------------------------------------
kame_flag = 0x00;
setVisibleUI(0, 0);
spep1=0;

-- ** ホイの動き ** --
Totsugeki = entryEffect(spep1, SP_01 , 0x100, -1 ,0,0,0); 
setEffMoveKey(spep1, Totsugeki, 0, 0, 0);
setEffScaleKey(spep1, Totsugeki, -1.0 ,1.0);
setEffAlphaKey(spep1, Totsugeki, 255);

setEffShake(spep1, Totsugeki , 60, 10);

playSe(spep1,SE_04);

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep1, 906, 59, 0x100, -1, 0, 0, 0);   -- 集中線
setEffMoveKey( spep1, shuchusen1, 0, 0, 0);
setEffScaleKey( spep1, shuchusen1, 1.0, 1.0);
setEffAlphaKey( spep1, shuchusen1, 255);
setEffRotateKey( spep1, shuchusen1, 0);

-- ** 背景 ** --
entryFadeBg( spep1, 0, 59, 0, 0, 0, 0, 150); -- ベース暗め　背景
-- ** 白 ** --
entryFade(spep1+35,23,2,10,fcolor_r, fcolor_g, fcolor_b,255); -- white fade

--(0-59F)
------------------------------------
--SP_09=150951;	--ひた走り1（敵）	ef_102(40F)
------------------------------------
spep2=spep1+60;

-- ** 敵の動き ** --
changeAnime(spep2,1,100);
setDisp(spep2,1,1);

setMoveKey(spep2,1,0,0,0);
setMoveKey(spep2+40,1,-50,-30,0);

setScaleKey(spep2,1,1.2,1.2);
setScaleKey(spep2+40,1,1.2,1.2);

setRotateKey(spep2,1,0);
setRotateKey(spep2+40,1,0);

-- ** ホイの動き ** --
Hitarun1 = entryEffect(spep2, SP_09 , 0x100, -1 ,0,0,0); 
setEffMoveKey(spep2, Hitarun1, 0, 0, 0);
setEffScaleKey(spep2, Hitarun1, 1.0 ,1.0);
setEffAlphaKey(spep2, Hitarun1, 255);

setEffShake(spep2, Hitarun1 , 40, 10);

playSe(spep2,SE_04);

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep2, 920, 40, 0x80, -1, 0, 0, 0);   -- 集中線
setEffMoveKey( spep2, shuchusen2, 0, 0, 0);
setEffScaleKey( spep2, shuchusen2, 1.4, 1.4);
setEffAlphaKey( spep2, shuchusen2, 255);
setEffRotateKey( spep2, shuchusen2, 340);

-- ** 背景 ** --
entryFadeBg( spep2, 0, 40, 0, 0, 0, 0, 200); -- ベース暗め　背景

--(60-99F)
------------------------------------
--SP_10=150952;	--ひた走り2（敵）	ef_103(26F)
------------------------------------
spep3=spep2+40;

-- ** 敵の動き ** --
setMoveKey(spep3,1,-50,-30,0);
setMoveKey(spep3+26,1,0,0,0);

setScaleKey(spep3,1,1.2,1.2);
setScaleKey(spep3+26,1,1.2,1.2);

setRotateKey(spep3,1,0);
setRotateKey(spep3+26,1,0);

-- ** ホイの動き ** --
Hitarun2 = entryEffect(spep3, SP_10 , 0x100, -1 ,0,0,0); 
setEffMoveKey(spep3, Hitarun2, 600, -500, 0);
setEffScaleKey(spep3, Hitarun2, 1.0 ,1.0);
setEffAlphaKey(spep3, Hitarun2, 255);

setEffShake(spep3, Hitarun2 , 26, 10);

playSe(spep3,SE_04);
-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep3, 920, 26, 0x80, -1, 0, 0, 0);   -- 集中線
setEffMoveKey( spep3, shuchusen3, 0, 0, 0);
setEffScaleKey( spep3, shuchusen3, 1.4, 1.4);
setEffAlphaKey( spep3, shuchusen3, 255);
setEffRotateKey( spep3, shuchusen3, 340);

-- ** 背景 ** --
entryFadeBg( spep3, 0, 26, 0, 0, 0, 0, 200); -- ベース暗め　背景

--(100-125F)
------------------------------------
--SP_11=150953;	--ひた走り3（敵）	ef_104(30F)
------------------------------------
spep4=spep3+26;

-- ** 敵の動き ** --
setMoveKey(spep4,1,0,0,0);
setMoveKey(spep4+29,1,-50,-30,0);

setScaleKey(spep4,1,1.2,1.2);
setScaleKey(spep4+29,1,1.2,1.2);

setRotateKey(spep4,1,0);
setRotateKey(spep4+29,1,0);

-- ** ホイの動き ** --
Hitarun3 = entryEffect(spep4, SP_11 , 0x100, -1 ,0,0,0); 
setEffMoveKey(spep4, Hitarun3, 0, 0, 0);
setEffScaleKey(spep4, Hitarun3, 1.0 ,1.0);
setEffAlphaKey(spep4, Hitarun3, 255);

setEffShake(spep4, Hitarun3 , 30, 10);

playSe(spep4,SE_04);
-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep4, 920, 30, 0x80, -1, 0, 0, 0);   -- 集中線
setEffMoveKey( spep4, shuchusen4, 0, 0, 0);
setEffScaleKey( spep4, shuchusen4, 1.4, 1.4);
setEffAlphaKey( spep4, shuchusen4, 255);
setEffRotateKey( spep4, shuchusen4, 345);

-- ** 背景 ** --
entryFadeBg( spep4, 0, 30, 0, 0, 0, 0, 200); -- ベース暗め　背景

-- ** 白 ** --
entryFade( spep4+21, 7, 3, 7, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

--(126-155F)
------------------------------------
--SP_12=150954;	--逆さま登場（敵）	ef_105(90F)
------------------------------------
spep5=spep4+30;

-- ** 敵の動き ** --
changeAnime(spep5,1,102);

--setMoveKey(spep5-1,1,-100,0,0);
setMoveKey(spep5,1,-100,0,0);
setMoveKey(spep5+90,1,-100,0,0);

--setScaleKey(spep5-1,1,1.2,1.2);
setScaleKey(spep5,1,1.2,1.2);
setScaleKey(spep5+90,1,1.2,1.2);

--setRotateKey(spep-1,1,0);
setRotateKey(spep5,1,0);
setRotateKey(spep5+90,1,0);

setDisp(spep5+90,1,0);

-- ** ホイの動き ** --
Sakasa = entryEffect(spep5, SP_12 , 0x100, -1 ,0,0,0); 
setEffMoveKey(spep5, Sakasa, 0, 0, 0);
setEffScaleKey(spep5, Sakasa, 1.0 ,1.0);
setEffAlphaKey(spep5, Sakasa, 255);

setEffShake(spep5, Sakasa , 90, 10);

playSe(spep5+10, SE_14);

-- ** 集中線 ** --
shuchusen5 = entryEffectLife( spep5+20, 906, 70, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey( spep5+20, shuchusen5, 90, 0, 0);
setEffScaleKey( spep5+20, shuchusen5, 1.5, 1.5);
setEffAlphaKey( spep5+20, shuchusen5, 255);
setEffRotateKey( spep5+20, shuchusen5, 0);

setEffMoveKey( spep5+90, shuchusen5, 90, 0, 0);
setEffScaleKey( spep5+90, shuchusen5, 1.5, 1.5);
setEffAlphaKey( spep5+90, shuchusen5, 255);
setEffRotateKey( spep5+90, shuchusen5, 0);

-- ** 背景 ** --
entryFadeBg( spep5, 0, 90, 0, 0, 0, 0, 200); -- ベース暗め　背景
-- ** 白 ** --
entryFade( spep5+71, 15, 5, 9, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

--(156-245F)
------------------------------------
--SP_13=150955;	--カットイン用（敵）	ef_106(100F)
------------------------------------
spep6=spep5+90;

Cutin = entryEffect(spep6, SP_13 , 0x100, -1 ,0,0,0); 
setEffMoveKey(spep6, Cutin, 0, 0, 0);
setEffScaleKey(spep6, Cutin, 1.0 ,1.0);
setEffAlphaKey(spep6, Cutin, 255);

setEffShake(spep6, Cutin , 100, 10);

ctGogo = entryEffectLife( spep6+25, 190006, 73, 0x100, -1, 0, 0, 0);    -- ゴゴゴゴ

setEffMoveKey( spep6+25, ctGogo, -50,500,0);
setEffScaleKey( spep6+25, ctGogo, -0.7, 0.7);
setEffRotateKey( spep6+25, ctGogo, 0);
setEffAlphaKey( spep6+25, ctGogo, 255);

--setEffMoveKey( spep6+90, ctGogo, -100,500,0);
--setEffScaleKey( spep6+90, ctGogo, -0.7, 0.7);
--setEffRotateKey( spep6+90, ctGogo, 10);
--setEffAlphaKey( spep6+90, ctGogo, 255);

--setEffMoveKey( spep6+97, ctGogo, -100,500,0);
--setEffScaleKey( spep6+97, ctGogo, -2.0, 2.0);
--setEffRotateKey( spep6+97, ctGogo, 10);
--setEffAlphaKey( spep6+97, ctGogo, 255);

setEffMoveKey( spep6+98, ctGogo, -50,500,0);
setEffScaleKey( spep6+98, ctGogo, -0.7, 0.7);
setEffRotateKey( spep6+98, ctGogo, 0);
setEffAlphaKey( spep6+98, ctGogo, 255);

setEffShake(spep6+25, ctGogo, 73, 10);

playSe(spep6+2,SE_04);

-- ** 集中線 ** --
shuchusen6 = entryEffectLife( spep6, 906, 100, 0x80, -1, 0, 0, 0);   -- 集中線
setEffMoveKey( spep6, shuchusen6, 0, 0, 0);
setEffScaleKey( spep6, shuchusen6, 1.0, 1.0);
setEffAlphaKey( spep6, shuchusen6, 255);
setEffRotateKey( spep6, shuchusen6, 0);

-- ** 背景 ** --
entryFadeBg( spep6, 0, 100, 0, 0, 0, 0, 200); -- ベース暗め　背景

-- ** 白 ** --
entryFade( spep6+88, 9, 4, 7, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

--(256-345F)
------------------------------------------------------
-- カードカットイン(95F)
------------------------------------------------------
spep7=spep6+100;

speff = entryEffect( spep7, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep7, 906, 91, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey( spep7, shuchusen, 0, 0, 0);
setEffScaleKey( spep7, shuchusen, 1.0, 1.0);
setEffAlphaKey( spep7, shuchusen, 255);
setEffRotateKey( spep7, shuchusen, 0);

-- ** 白 ** --
entryFade( spep7+83, 5, 5, 8, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep7+1, SE_05);

--(346-440F)
------------------------------------
--SP_14=150956;	--溜めて撃つ（敵）	ef_107(80F)
------------------------------------
spep8=spep7+92;

-- ** ホイの動き ** --
TameteUtsu = entryEffect(spep8, SP_14 , 0x100, -1 ,0,0,0); 
setEffMoveKey(spep8, TameteUtsu, 0, 0, 0);
setEffScaleKey(spep8, TameteUtsu, 1.0 ,1.0);
setEffAlphaKey(spep8, TameteUtsu, 255);

setEffShake(spep8, TameteUtsu , 30, 10);

playSe(spep8+29,SE_07);

-- ** 書き文字 ** --
ctZuo = entryEffectLife( spep8+29, 10012, 51, 0x100, -1, 0, 0, 0);    -- ズオ
setEffScaleKey( spep8+29, ctZuo, 1.8, 1.8);
setEffRotateKey( spep8+29, ctZuo, 30);
setEffAlphaKey( spep8+29, ctZuo, 255);
setEffMoveKey( spep8+29, ctZuo, 120,220,0);

setEffShake( spep8+29, ctZuo,51,20);

-- ** 集中線 ** --
shuchusen8 = entryEffectLife( spep8, 906, 80, 0x80, -1, 0, 0, 0);   -- 集中線
setEffMoveKey( spep8, shuchusen8, 0, 0, 0);
setEffScaleKey( spep8, shuchusen8, 1.0, 1.0);
setEffAlphaKey( spep8, shuchusen8, 255);
setEffRotateKey( spep8, shuchusen8, 0);

-- ** 背景 ** --
entryFadeBg( spep8, 0, 80, 0, 0, 0, 0, 200); -- ベース暗め　背景
-- ** 白 ** --
entryFade( spep8+68, 9, 4, 6, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

--(441-520F)
------------------------------------
--SP_08=150950;	--ビーム	(60F)
------------------------------------
spep9=spep8+80;

-- ** 敵の動き ** --
changeAnime(spep9,1,102);
setDisp(spep9,1,1);

setMoveKey(spep9,1,-100,0,0);

setScaleKey(spep9,1,1.2,1.2);

setRotateKey(spep9,1,0);

setShakeChara(spep9,1,60,10);

-- ** ホイの動き ** --
Beam = entryEffect(spep9, SP_08 , 0x100, -1 ,0,0,0); 
setEffMoveKey(spep9,Beam, 0, 0, 0);
setEffScaleKey(spep9, Beam, 1.0 ,1.0);
setEffAlphaKey(spep9, Beam, 255);

setEffShake(spep9, Beam, 60, 10);

playSe(spep9,SE_07);

-- ** 集中線 ** --
shuchusen9 = entryEffectLife( spep9, 921, 60, 0x80, -1, 0, 0, 0);   -- 集中線
setEffMoveKey( spep9, shuchusen9, 0, 0, 0);
setEffScaleKey( spep9, shuchusen9, 1.6, 1.6);
setEffAlphaKey( spep9, shuchusen9, 255);
setEffRotateKey( spep9, shuchusen9, 150);

-- ** 背景 ** --
entryFadeBg( spep9, 0, 60, 0, 0, 0, 0, 255); -- ベース暗め　背景

------------------------------------------------------
-- 回避(SP_dodge = spep9+38)
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 558; --エンドフェイズのフレーム数を置き換える

setMoveKey(SP_dodge,1,-100,0,0);
setScaleKey(SP_dodge,1,1.2,1.2);
setRotateKey(SP_dodge,1,0);

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

dodge = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);

pauseAll( SP_dodge, 67);
entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase( SP_dodge+10);

setDisp(  SP_dodge+1,1,0);
setMoveKey(  SP_dodge+1,    1,  0,  -10000,   0);
setScaleKey( SP_dodge+1,    1,  1.2, 1.2);
setMoveKey(  SP_dodge+20,    1,  0,  -10000,   0);
setScaleKey( SP_dodge+20,    1,  1.2, 1.2);

do return end
else end

------------------------------------
--回避されなかった場合
------------------------------------
setMoveKey(spep9+60,1,-100,0,0);
setScaleKey(spep9+60,1,1.2,1.2);
setRotateKey(spep9+60,1,0);

setDisp(spep9+60,1,0);

-- ** 白 ** --
entryFade( spep9+35, 15, 10, 0, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

--(521-580F)
------------------------------------
--ギャン（紫）(50F)
------------------------------------
spep10=spep9+60;

Gyan = entryEffect(spep10, 190001 , 0x100, -1 ,0,0,0); 
setEffMoveKey(spep10, Gyan, 0, 0, 0);
setEffScaleKey(spep10, Gyan, 1.0 ,1.0);
setEffAlphaKey(spep10, Gyan, 255);

setEffShake(spep10, Gyan , 30, 10);

ctg = entryEffectLife( spep10, 10006, 70, 0x100, -1, 0, 0, 260); -- ギャン
setEffShake(spep10, ctg, 99, 20);
setEffScaleKey( spep10, ctg, 0.1, 0.1);
setEffScaleKey( spep10+30, ctg, 3.4, 3.4);
setEffScaleKey( spep10+54, ctg, 3.8, 3.8);
setEffAlphaKey(spep10, ctg, 255);
setEffAlphaKey(spep10+50, ctg, 255);
setEffAlphaKey(spep10+54, ctg, 0);


-- ** 白 ** --
entryFade( spep10+50, 5, 13, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep10+1, SE_13);

--(581-630F)
------------------------------------
--Finish（定型）
------------------------------------
spep11=spep10+60;

-- ** 敵キャラの動き ** --
setDisp( spep11-1, 1, 1);
setMoveKey(  spep11-1, 1, 60, -40, 0);
setScaleKey( spep11-1, 1, 2, 2);
setRotateKey( spep11-1, 1, -75);
setMoveKey(  spep11, 1, 0, 0, 128);
setScaleKey( spep11, 1, 0.1, 0.1);
changeAnime( spep11, 1, 107);                         -- 手前ダメージ
entryEffect( spep11+8, 1509, 0x80, -1, 0, 0, 0);   -- 爆発
playSe( spep11+13, SE_11);

setMoveKey( spep11+8, 1, 0, 0, 128); --478
setMoveKey( spep11+15, 1, -60, -200, -100);
setDamage( spep11+16, 1, 0);  -- ダメージ振動等
setShake( spep11+7, 6, 15);
setShake( spep11+13, 15, 10);

setRotateKey( spep11, 1, 30 );
setRotateKey( spep11+2, 1, 80 );
setRotateKey( spep11+4, 1, 120 );
setRotateKey( spep11+6, 1, 160 );
setRotateKey( spep11+8, 1, 200 );
setRotateKey( spep11+10, 1, 260 );
setRotateKey( spep11+12, 1, 320 );
setRotateKey( spep11+14, 1, 0 );

setShakeChara( spep11+15, 1, 5, 10);
setShakeChara( spep11+20, 1, 10, 20);

-- 書き文字エントリー
ctGa = entryEffectLife( spep11+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep11+15, ctGa, 30, 10);
setEffRotateKey( spep11+15, ctGa, -40);
setEffScaleKey( spep11+15, ctGa, 4.0, 4.0);
setEffScaleKey( spep11+16, ctGa, 2.0, 2.0);
setEffScaleKey( spep11+17, ctGa, 2.6, 2.6);
setEffScaleKey( spep11+18, ctGa, 4.0, 4.0);
setEffScaleKey( spep11+19, ctGa, 2.6, 2.6);
setEffScaleKey( spep11+20, ctGa, 3.8, 3.8);
setEffScaleKey( spep11+110, ctGa, 3.8, 3.8);
setEffAlphaKey( spep11+15, ctGa, 255);
setEffAlphaKey( spep11+105, ctGa, 255);
setEffAlphaKey( spep11+115, ctGa, 0);

playSe( spep11+8, SE_10);
shuchusen = entryEffectLife( spep11+3, 906, 120, 0x100, -1, 0, 0, 0);   -- 集中線
entryEffect( spep11+3, 1600, 0x100, -1, 0, 30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage( spep11+16);
entryFade( spep11+100, 9, 10, 1, 8, 8, 8, 255); -- black fade
endPhase( spep11+110);

end