--1013190 sp0432 ４倍界王拳かめはめ波

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
SP_01 = 151121;--溜め〜構え(180)
SP_02 = 151123;--放つ1(70)
SP_03 = 151125;--かめはめ波上昇(130)
SP_04 = 151126;--かめはめ波接近(120)
SP_05 = 151127;--放つ2_増量(150)
SP_06 = 151129;--放つ3_遠景(110)
SP_07 = 151131;--直撃波動(170)
SP_08 = 151132;--直撃波動用背景(170)
SP_09 = 1557;--爆発

--敵側は味方側に1xをつけてます
SP_11 = 151122;--ef_001の反転
SP_12 = 151124;--ef_002の反転
SP_15 = 151128;--ef_005の反転
SP_16 = 151130;--ef_006の反転

multi_frm = 2;

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
setVisibleUI( 0, 0);
changeAnime( 0, 0, 1); 

setDisp( 0, 1, 0);
setDisp( 0, 0, 0);
setMoveKey(   0,   0,    0, -54,   0);
setMoveKey(   0,   1,    0, -54,   0);
setMoveKey(   1,   0,    0, -54,   0);
setMoveKey(   1,   1,    0, -54,   0);
setMoveKey(   2,   0,    0, -54,   0);
setMoveKey(   2,   1,    0, -54,   0);
setMoveKey(   3,   0,    0, -54,   0);
setMoveKey(   3,   1,    0, -54,   0);

setScaleKey(   0,   0, 1.6, 1.6);
setScaleKey(   0,   1, 1.6, 1.6);
setRotateKey(   0,   1, 0);
setRotateKey(   0,   0, 0);

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- --溜め〜構え(180)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

spep_0 = 0;

Tame = entryEffectLife( spep_0, SP_01, 180, 0x100, -1,  0,  0,  0);  
setEffScaleKey( spep_0, Tame, 1.0, 1.0);
setEffMoveKey( spep_0, Tame, 0, 0, 0);

-- 書き文字エントリー
ctZuzun = entryEffectLife( spep_0+30, 10013, 50, 0x100, -1, 0, 0, 200,0); -- ズズンッ

setEffMoveKey( spep_0+30,ctZuzun,0,200,0);
setEffMoveKey( spep_0+35,ctZuzun,0,300,0);
setEffMoveKey( spep_0+80,ctZuzun,0,300,0);

setEffRotateKey( spep_0+30,ctZuzun,-10);
setEffShake(spep_0+30, ctZuzun, 50, 20);
setEffAlphaKey(spep_0+30, ctZuzun, 255);
setEffAlphaKey(spep_0+80, ctZuzun, 255);
setEffScaleKey( spep_0+30, ctZuzun, 0.2, 0.2);
setEffScaleKey( spep_0+35, ctZuzun, 2.0, 2.0);

-- ** 集中線 ** --
Syu0 = entryEffectLife( spep_0+30, 906, 150, 0x80, -1,  0,  0,  0);

setEffScaleKey( spep_0+30, Syu0 , 1.0, 1.0);
--setEffScaleKey( spep_1+70, Syu1 , 1.0, 1.0);
setEffMoveKey( spep_0+30, Syu0 , 0, 0, 0);
--setEffMoveKey( spep_1+70, Syu1 , 0, 0, 0);
setEffRotateKey( spep_0+30, Syu0, 0);
--setEffRotateKey( spep_1+70, Syu1, 0);
setEffAlphaKey( spep_0+30, Syu0, 255);
--setEffAlphaKey( spep_1+70, Syu1, 255);

-- ** 背景 ** --
entryFadeBg( spep_0, 0, 180, 0, 30, 30, 30, 255); -- ベース暗め　背景

-- ** ホワイトフェード ** --
entryFade( spep_0+29, 0, 3, 3, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade
entryFade( spep_0+158, 20, 4, 20, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade

-- ** 音 ** --
playSe( spep_0, SE_01);
playSe( spep_0+30, SE_02);
playSe( spep_0+115, SE_03);
playSe( spep_0+134, SE_03);
playSe( spep_0+153, SE_03);

---------------------------------
----放つ1(70)　250
---------------------------------
spep_1 = spep_0+180;

Burst1 = entryEffectLife( spep_1, SP_02, 70, 0x100, -1,  0,  0,  0);
setEffScaleKey( spep_1, Burst1 , 1.0, 1.0);
setEffMoveKey( spep_1, Burst1 , 0, 0, 0);

-- ** 集中線 ** --
Syu1 = entryEffectLife( spep_1, 906, 70, 0x80, -1,  0,  0,  0);

setEffScaleKey( spep_1, Syu1 , 1.0, 1.0);
--setEffScaleKey( spep_1+70, Syu1 , 1.0, 1.0);
setEffMoveKey( spep_1, Syu1 , 0, 0, 0);
--setEffMoveKey( spep_1+70, Syu1 , 0, 0, 0);
setEffRotateKey( spep_1, Syu1, 0);
--setEffRotateKey( spep_1+70, Syu1, 0);
setEffAlphaKey( spep_1, Syu1, 255);
--setEffAlphaKey( spep_1+70, Syu1, 255);

-- 書き文字エントリー
ctzuo1 = entryEffectLife( spep_1, 10012, 70, 0, -1, 0, -100, 100,0); -- ズオッ
setEffMoveKey(spep_1, ctzuo1, -130, 100,0);
setEffMoveKey(spep_1+10, ctzuo1, -80, 300,0);
setEffMoveKey(spep_1+40, ctzuo1, -80, 300,0);
setEffShake(spep_1, ctzuo1, 66, 15);
setEffAlphaKey(spep_1, ctzuo1, 255);
setEffAlphaKey(spep_1+40, ctzuo1, 255);
setEffAlphaKey(spep_1+70, ctzuo1, 0);
setEffScaleKey(spep_1, ctzuo1, 0.1, 0.1);
setEffScaleKey(spep_1+10, ctzuo1, 2.0, 2.0);
setEffScaleKey(spep_1+40, ctzuo1, 2.0, 2.0);
setEffScaleKey(spep_1+70, ctzuo1, 6.0, 6.0);
setEffRotateKey(spep_1, ctzuo1, 350);
setEffRotateKey(spep_1+70, ctzuo1, 350);

-- ** 背景 ** --
entryFadeBg( spep_1, 0, 70, 0, 30, 30, 30, 255); -- ベース暗め　背景

-- ** ホワイトフェード ** --
entryFade( spep_1+29, 0, 3, 3, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade
entryFade( spep_1+43, 24, 5, 14, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade

-- ** 音 ** --
playSe( spep_1+5, SE_07);

---------------------------------
--かめはめ波上昇(130)　380
---------------------------------
spep_2 = spep_1+70;

Raise = entryEffectLife( spep_2, SP_03, 130, 0x100, -1,  0,  0,  0);
setEffScaleKey( spep_2, Raise , 1.0, 1.0);
setEffMoveKey( spep_2, Raise , 0, 0, 0);

-- ** 流線 ** --
Ryu2 = entryEffectLife( spep_2, 920, 130, 0x80, -1,  0,  0,  0);

setEffScaleKey( spep_2, Ryu2 , 1.7, 1.7);
--setEffScaleKey( spep_3+130, Ryu2 , 1.0, 1.0);
setEffMoveKey( spep_2, Ryu2 , 0, 0, 0);
--setEffMoveKey( spep_3+130, Ryu2 , 0, 0, 0);
setEffRotateKey( spep_2, Ryu2, 285);
--setEffRotateKey( spep_3+130, Ryu2, 0);
setEffAlphaKey( spep_2, Ryu2, 255);
--setEffAlphaKey( spep_3+130, Ryu2, 255);

-- 書き文字エントリー --
CtZudo2 = entryEffectLife( spep_2, 10014, 130, 0x100, -1, 0, 200,350, 0); -- ズドドッ
setEffShake(spep_2, CtZudo2, 170, 20);
setEffScaleKey( spep_2, CtZudo2, 2.8, 2.8);
setEffScaleKey( spep_2+110, CtZudo2, 2.8, 2.8);
setEffScaleKey( spep_2+130, CtZudo2, 4.0, 4.0);
setEffRotateKey(spep_2, CtZudo2, 70);
setEffAlphaKey(spep_2, CtZudo2, 255);
setEffAlphaKey(spep_2+110, CtZudo2, 255);
setEffAlphaKey(spep_2+130, CtZudo2, 180);
-- ** 背景 ** --
entryFadeBg( spep_2, 0, 130, 0, 30, 30, 30, 255); -- ベース暗め　背景

-- ** ホワイトフェード ** --
entryFade( spep_2+103, 26, 2, 8, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade

-- ** 音 ** --
playSe( spep_2, SE_07);

---------------------------------
--かめはめ波接近(120)　500
---------------------------------
spep_3 = spep_2+130;

Sekkin = entryEffectLife( spep_3, SP_04, 120, 0x100, -1,  0,  0,  0);
setEffScaleKey( spep_3, Sekkin , 1.0, 1.0);
setEffMoveKey( spep_3, Sekkin , 0, 0, 0);

changeAnime( spep_3+30, 1, 104); 

setDisp( spep_3+30, 1, 1); 
setDisp( spep_3+120, 1, 0);

setMoveKey( spep_3+30, 1, 300, 400, 0);
setMoveKey( spep_3+120, 1, 50, 100, 0);

setScaleKey( spep_3+30, 1, 0.1, 0.1);
setScaleKey( spep_3+120, 1, 1.3, 1.3);

setRotateKey( spep_3+30, 1, 330);
setRotateKey( spep_3+120, 1, 330);

-- ** 集中線 ** --
Syu3 = entryEffectLife( spep_3, 906, 120, 0x80, -1,  0,  0,  0);

setEffScaleKey( spep_3, Syu3 , 1.0, 1.0);
--setEffScaleKey( spep_3+120, Syu3 , 1.0, 1.0);
setEffMoveKey( spep_3, Syu3 , 0, 0, 0);
--setEffMoveKey( spep_3+120, Syu3 , 0, 0, 0);
setEffRotateKey( spep_3, Syu3, 0);
--setEffRotateKey( spep_3+120, Syu3, 0);
setEffAlphaKey( spep_3, Syu3, 295);
--setEffAlphaKey( spep_3+70, Syu3, 255);


-- ** ふっ飛ばし流線 ** --
Futtobi = entryEffectLife( spep_3, 924, 120, 0x80, -1,  0,  0,  0);

setEffScaleKey( spep_3, Futtobi , 1.1, 1.1);
--setEffScaleKey( spep_3+120, Futtobi, 1.0, 1.0);
setEffMoveKey( spep_3, Futtobi, -50, -50, 0);
--setEffMoveKey( spep_3+120, Futtobi, 0, 0, 0);
setEffRotateKey( spep_3, Futtobi, 305);
--setEffRotateKey( spep_3+120, Futtobi, 0);
setEffAlphaKey( spep_3, Futtobi, 255);
--setEffAlphaKey( spep_3+120, Futtobi, 255);

-- ** 背景 ** --
entryFadeBg( spep_3, 0, 120, 0, 30, 30, 30, 255); -- ベース暗め　背景

-- ** ホワイトフェード ** --
entryFade( spep_3+111, 7, 4, 7, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade

-- ** 音 ** --
playSe( spep_3, SE_07);

------------------------------------------------------
-- 回避タイミング
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 480; --エンドフェイズのフレーム数を置き換える spep_3+100

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

setMoveKey( SP_dodge, 1, 104, 67, 0);
setScaleKey( SP_dodge, 1, 1.4, 1.4);
setRotateKey( SP_dodge, 1, 330);

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setMoveKey( SP_dodge+1, 1, 104, 67, 0);
setScaleKey( SP_dodge+1, 1, 1.4, 1.4);
setRotateKey( SP_dodge+1, 1, 330);

setMoveKey( SP_dodge+8, 1, 104, 67, 0);
setScaleKey( SP_dodge+8, 1, 1.4, 1.4);
setRotateKey( SP_dodge+8, 1, 330);

setMoveKey( SP_dodge+9, 1, 0, 0, 0);
setScaleKey( SP_dodge+9, 1, 1.2, 1.2);
setRotateKey( SP_dodge+9, 1, 0);

setMoveKey(   SP_dodge+10,   0,    -2500, -250,   0);

endPhase(SP_dodge+10);
do return end
else end

---------------------------------
--カードカットイン(90)
---------------------------------
spep_4 = spep_3+120;

setScaleKey( spep_4-1,   0, 1.2, 1.2);
--setScaleKey( spep_4-1,   0, 1.5, 1.5);
setScaleKey( spep_4,   0, 1.0, 1.0);

speff = entryEffect(  spep_4,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

-- ** ホワイトフェード ** --
entryFade( spep_4+81, 7, 4, 7, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade

-- ** 音 ** --
playSe( spep_4, SE_05);

---------------------------------
--放つ2_増量(150)
---------------------------------
spep_5 = spep_4+90;

Burst2 = entryEffectLife( spep_5, SP_05, 150, 0x80, -1,  0,  0,  0);
setEffScaleKey( spep_5, Burst2 , 1.0, 1.0);
setEffMoveKey( spep_5, Burst2 , 0, 0, 0);

-- ** カットイン ** --
speff = entryEffect(  spep_5,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_5,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー --
ctgogo = entryEffectLife( spep_5+10, 190006, 70, 0x100, -1, 0, 0,530, 0);    -- ゴゴゴゴ
setEffShake(spep_5+10, ctgogo, 70, 10);
setEffScaleKey(spep_5+10, ctgogo, 0.8, 0.8);
setEffRotateKey(spep_5+10, ctgogo, 0);
setEffAlphaKey( spep_5+10, ctgogo, 255);

-- ** 集中線 ** --
Syu5 = entryEffectLife( spep_5, 906, 150, 0x80, -1,  0,  0,  0);

setEffScaleKey( spep_5, Syu5 , 1.0, 1.0);
--setEffScaleKey( spep_5+150, Syu5 , 1.0, 1.0);
setEffMoveKey( spep_5, Syu5 , 0, 0, 0);
--setEffMoveKey( spep_5+150, Syu5 , 0, 0, 0);
setEffRotateKey( spep_5, Syu5, 0);
--setEffRotateKey( spep_5+150, Syu5, 0);
setEffAlphaKey( spep_5, Syu5, 255);
--setEffAlphaKey( spep_5+150, Syu5, 255);

-- ** 背景 ** --
entryFadeBg( spep_5, 0, 150, 0, 30, 30, 30, 255); -- ベース暗め　背景

-- ** ホワイトフェード ** --
entryFade( spep_5+141, 7, 4, 7, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade

-- ** 音 ** --
playSe( spep_5, SE_10);
playSe( spep_5+15, SE_07);

---------------------------------
--放つ3_遠景(110)
---------------------------------
spep_6 = spep_5+90;

Burst3 = entryEffectLife( spep_6, SP_06, 110, 0x100, -1,  0,  0,  0);
setEffScaleKey( spep_6, Burst3 , 1.0, 1.0);
setEffMoveKey( spep_6, Burst3 , 0, 0, 0);

-- ** ホワイトフェード ** --
entryFade( spep_6+101, 7, 4, 7, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade

-- ** 音 ** --
playSe( spep_6+20, SE_10);

---------------------------------
--直撃波動(170)
--直撃波動用背景(170)
---------------------------------
spep_7 = spep_6+110;

Hit1 = entryEffectLife( spep_7, SP_07, 170, 0x100, -1,  0,  0,  0);   
setEffScaleKey( spep_7, Hit1 , 1.0, 1.0);
setEffMoveKey( spep_7, Hit1 , 0, 0, 0);

changeAnime(spep_7,1,108);

setDisp(spep_7,1,1);
setDisp(spep_7+55,1,0);

setMoveKey(spep_7-1,1,50,100,0);
setMoveKey(spep_7,1,-400,-600,0);
setMoveKey(spep_7+55,1,-50,-100,0);

setScaleKey(spep_7,1,1.5,1.5);
setScaleKey(spep_7+55,1,1.5,1.5);

setRotateKey(spep_7,1,325);
setRotateKey(spep_7+55,1,325);

-- ** 流線 ** --
Ryu7 = entryEffectLife( spep_7, 921, 170, 0x80, -1,  0,  0,  0);

setEffScaleKey( spep_7, Ryu7 , 1.2, 1.2);
--setEffScaleKey( spep_7+170, Ryu7 , 1.0, 1.0);
setEffMoveKey( spep_7, Ryu7 , 0, 0, 0);
--setEffMoveKey( spep_7+170, Ryu7 , 0, 0, 0);
setEffRotateKey( spep_7, Ryu7, 125);
--setEffRotateKey( spep_7+170, Ryu7, 0);
setEffAlphaKey( spep_7, Ryu7, 255);
--setEffAlphaKey( spep_7+170, Ryu7, 255);

Hit2 = entryEffectLife( spep_7, SP_08, 170, 0x80, -1,  0,  0,  0);   
setEffScaleKey( spep_7, Hit2 , 1.0, 1.0);
setEffMoveKey( spep_7, Hit2 , 0, 0, 0);

-- ** 集中線 ** --
Syu7 = entryEffectLife( spep_7, 906, 170, 0x100, -1,  0,  0,  0);

setEffScaleKey( spep_7, Syu7 , 1.0, 1.0);
--setEffScaleKey( spep_7+170, Syu7 , 1.0, 1.0);
setEffMoveKey( spep_7, Syu7 , 0, 0, 0);
--setEffMoveKey( spep_7+170, Syu7 , 0, 0, 0);
setEffRotateKey( spep_7, Syu7, 0);
--setEffRotateKey( spep_7+170, Syu7, 0);
setEffAlphaKey( spep_7, Syu7, 255);
--setEffAlphaKey( spep_7+170, Syu7, 255);

-- 書き文字エントリー --
CtZudo7 = entryEffectLife( spep_7, 10014, 170, 0x100, -1, 0, -200,370, 0); -- ズドドッ
setEffShake(spep_7, CtZudo7, 170, 20);
setEffScaleKey( spep_7, CtZudo7, 3.0, 3.0);
setEffRotateKey(spep_7, CtZudo7, 5);
setEffAlphaKey(spep_7, CtZudo7, 255);
setEffAlphaKey(spep_7+170, CtZudo7, 255);

-- ** 背景 ** --
entryFadeBg( spep_7, 0, 170, 0, 30, 30, 30, 180); -- ベース暗め　背景

-- ** ホワイトフェード ** --
entryFade( spep_7+49, 4, 4, 4, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade
entryFade( spep_7+161, 7, 4, 7, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade

-- ** 音 ** --
playSe( spep_7, SE_07);
playSe( spep_7+55, SE_09);

---------------------------------
--爆破(110)
---------------------------------
spep_8 = spep_7+170;

Exp = entryEffect( spep_8, SP_09, 0x100, -1,  0,  0,  0);   
setEffScaleKey( spep_8, Exp , -1.1, 1.1);
setEffMoveKey( spep_8, Exp , 0, 0, 0);

-- ダメージ表示
dealDamage( spep_8+16);
entryFade( spep_8+100, 9, 10, 1, 8, 8, 8, 255); -- black fade
endPhase( spep_8+110);

-- ** ホワイトフェード ** --

-- ** 音 ** --
playSe( spep_8, SE_10);

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- --溜め〜構え(180)
------------------------------------------------------
kame_flag = 0x00;

spep_0 = 0;

Tame = entryEffectLife( spep_0, SP_11, 180, 0x100, -1,  0,  0,  0);  
setEffScaleKey( spep_0, Tame, 1.0, 1.0);
setEffMoveKey( spep_0, Tame, 0, 0, 0);

-- 書き文字エントリー
ctZuzun = entryEffectLife( spep_0+30, 10013, 50, 0x100, -1, 0, 0, 200,0); -- ズズンッ

setEffMoveKey( spep_0+30,ctZuzun,0,200,0);
setEffMoveKey( spep_0+35,ctZuzun,0,300,0);
setEffMoveKey( spep_0+80,ctZuzun,0,300,0);

setEffRotateKey( spep_0+30,ctZuzun,20);
setEffShake(spep_0+30, ctZuzun, 50, 20);
setEffAlphaKey(spep_0+30, ctZuzun, 255);
setEffAlphaKey(spep_0+80, ctZuzun, 255);
setEffScaleKey( spep_0+30, ctZuzun, 0.2, 0.2);
setEffScaleKey( spep_0+35, ctZuzun, 2.0, 2.0);

-- ** 集中線 ** --
Syu0 = entryEffectLife( spep_0+30, 906, 150, 0x80, -1,  0,  0,  0);

setEffScaleKey( spep_0+30, Syu0 , 1.0, 1.0);
--setEffScaleKey( spep_1+70, Syu1 , 1.0, 1.0);
setEffMoveKey( spep_0+30, Syu0 , 0, 0, 0);
--setEffMoveKey( spep_1+70, Syu1 , 0, 0, 0);
setEffRotateKey( spep_0+30, Syu0, 0);
--setEffRotateKey( spep_1+70, Syu1, 0);
setEffAlphaKey( spep_0+30, Syu0, 255);
--setEffAlphaKey( spep_1+70, Syu1, 255);

-- ** 背景 ** --
entryFadeBg( spep_0, 0, 180, 0, 30, 30, 30, 255); -- ベース暗め　背景

-- ** ホワイトフェード ** --
entryFade( spep_0+29, 0, 3, 3, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade
entryFade( spep_0+158, 20, 4, 20, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade

-- ** 音 ** --
playSe( spep_0, SE_01);
playSe( spep_0+30, SE_02);
playSe( spep_0+115, SE_03);
playSe( spep_0+134, SE_03);
playSe( spep_0+153, SE_03);

---------------------------------
----放つ1(70)　250
---------------------------------
spep_1 = spep_0+180;

Burst1 = entryEffectLife( spep_1, SP_12, 70, 0x100, -1,  0,  0,  0);
setEffScaleKey( spep_1, Burst1 , 1.0, 1.0);
setEffMoveKey( spep_1, Burst1 , 0, 0, 0);

-- ** 集中線 ** --
Syu1 = entryEffectLife( spep_1, 906, 70, 0x80, -1,  0,  0,  0);

setEffScaleKey( spep_1, Syu1 , 1.0, 1.0);
--setEffScaleKey( spep_1+70, Syu1 , 1.0, 1.0);
setEffMoveKey( spep_1, Syu1 , 0, 0, 0);
--setEffMoveKey( spep_1+70, Syu1 , 0, 0, 0);
setEffRotateKey( spep_1, Syu1, 0);
--setEffRotateKey( spep_1+70, Syu1, 0);
setEffAlphaKey( spep_1, Syu1, 255);
--setEffAlphaKey( spep_1+70, Syu1, 255);

-- 書き文字エントリー
ctzuo1 = entryEffectLife( spep_1, 10012, 70, 0, -1, 0, -100, 100,0); -- ズオッ
setEffMoveKey(spep_1, ctzuo1, -130, 100,0);
setEffMoveKey(spep_1+10, ctzuo1, -80, 300,0);
setEffMoveKey(spep_1+40, ctzuo1, -80, 300,0);
setEffShake(spep_1, ctzuo1, 66, 15);
setEffAlphaKey(spep_1, ctzuo1, 255);
setEffAlphaKey(spep_1+40, ctzuo1, 255);
setEffAlphaKey(spep_1+70, ctzuo1, 0);
setEffScaleKey(spep_1, ctzuo1, 0.1, 0.1);
setEffScaleKey(spep_1+10, ctzuo1, 2.0, 2.0);
setEffScaleKey(spep_1+40, ctzuo1, 2.0, 2.0);
setEffScaleKey(spep_1+70, ctzuo1, 6.0, 6.0);
setEffRotateKey(spep_1, ctzuo1, 350);
setEffRotateKey(spep_1+70, ctzuo1, 350);

-- ** 背景 ** --
entryFadeBg( spep_1, 0, 70, 0, 30, 30, 30, 255); -- ベース暗め　背景

-- ** ホワイトフェード ** --
entryFade( spep_1+29, 0, 3, 3, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade
entryFade( spep_1+43, 24, 5, 14, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade

-- ** 音 ** --
playSe( spep_1+5, SE_07);

---------------------------------
--かめはめ波上昇(130)　380
---------------------------------
spep_2 = spep_1+70;

Raise = entryEffectLife( spep_2, SP_03, 130, 0x100, -1,  0,  0,  0);
setEffScaleKey( spep_2, Raise , 1.0, 1.0);
setEffMoveKey( spep_2, Raise , 0, 0, 0);

-- ** 流線 ** --
Ryu2 = entryEffectLife( spep_2, 920, 130, 0x80, -1,  0,  0,  0);

setEffScaleKey( spep_2, Ryu2 , 1.7, 1.7);
--setEffScaleKey( spep_3+130, Ryu2 , 1.0, 1.0);
setEffMoveKey( spep_2, Ryu2 , 0, 0, 0);
--setEffMoveKey( spep_3+130, Ryu2 , 0, 0, 0);
setEffRotateKey( spep_2, Ryu2, 285);
--setEffRotateKey( spep_3+130, Ryu2, 0);
setEffAlphaKey( spep_2, Ryu2, 255);
--setEffAlphaKey( spep_3+130, Ryu2, 255);

-- 書き文字エントリー --
CtZudo2 = entryEffectLife( spep_2, 10014, 130, 0x100, -1, 0, 100,350, 0); -- ズドドッ
setEffShake(spep_2, CtZudo2, 170, 20);
setEffScaleKey( spep_2, CtZudo2, 2.8, 2.8);
setEffScaleKey( spep_2+110, CtZudo2, 2.8, 2.8);
setEffScaleKey( spep_2+130, CtZudo2, 4.0, 4.0);
setEffRotateKey(spep_2, CtZudo2, -20);
setEffAlphaKey(spep_2, CtZudo2, 255);
setEffAlphaKey(spep_2+110, CtZudo2, 255);
setEffAlphaKey(spep_2+130, CtZudo2, 180);
-- ** 背景 ** --
entryFadeBg( spep_2, 0, 130, 0, 30, 30, 30, 255); -- ベース暗め　背景

-- ** ホワイトフェード ** --
entryFade( spep_2+103, 26, 2, 8, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade

-- ** 音 ** --
playSe( spep_2, SE_07);

---------------------------------
--かめはめ波接近(120)　500
---------------------------------
spep_3 = spep_2+130;

Sekkin = entryEffectLife( spep_3, SP_04, 120, 0x100, -1,  0,  0,  0);
setEffScaleKey( spep_3, Sekkin , 1.0, 1.0);
setEffMoveKey( spep_3, Sekkin , 0, 0, 0);

changeAnime( spep_3+30, 1, 104); 

setDisp( spep_3+30, 1, 1); 
setDisp( spep_3+120, 1, 0);

setMoveKey( spep_3+30, 1, 300, 400, 0);
setMoveKey( spep_3+120, 1, 50, 100, 0);

setScaleKey( spep_3+30, 1, 0.1, 0.1);
setScaleKey( spep_3+120, 1, 1.3, 1.3);

setRotateKey( spep_3+30, 1, 330);
setRotateKey( spep_3+120, 1, 330);

-- ** 集中線 ** --
Syu3 = entryEffectLife( spep_3, 906, 120, 0x80, -1,  0,  0,  0);

setEffScaleKey( spep_3, Syu3 , 1.0, 1.0);
--setEffScaleKey( spep_3+120, Syu3 , 1.0, 1.0);
setEffMoveKey( spep_3, Syu3 , 0, 0, 0);
--setEffMoveKey( spep_3+120, Syu3 , 0, 0, 0);
setEffRotateKey( spep_3, Syu3, 0);
--setEffRotateKey( spep_3+120, Syu3, 0);
setEffAlphaKey( spep_3, Syu3, 295);
--setEffAlphaKey( spep_3+70, Syu3, 255);


-- ** ふっ飛ばし流線 ** --
Futtobi = entryEffectLife( spep_3, 924, 120, 0x80, -1,  0,  0,  0);

setEffScaleKey( spep_3, Futtobi , 1.1, 1.1);
--setEffScaleKey( spep_3+120, Futtobi, 1.0, 1.0);
setEffMoveKey( spep_3, Futtobi, -50, -50, 0);
--setEffMoveKey( spep_3+120, Futtobi, 0, 0, 0);
setEffRotateKey( spep_3, Futtobi, 305);
--setEffRotateKey( spep_3+120, Futtobi, 0);
setEffAlphaKey( spep_3, Futtobi, 255);
--setEffAlphaKey( spep_3+120, Futtobi, 255);

-- ** 背景 ** --
entryFadeBg( spep_3, 0, 120, 0, 30, 30, 30, 255); -- ベース暗め　背景

-- ** ホワイトフェード ** --
entryFade( spep_3+111, 7, 4, 7, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade

-- ** 音 ** --
playSe( spep_3, SE_07);

------------------------------------------------------
-- 回避タイミング
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 480; --エンドフェイズのフレーム数を置き換える spep_3+100

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

setMoveKey( SP_dodge, 1, 104, 67, 0);
setScaleKey( SP_dodge, 1, 1.4, 1.4);
setRotateKey( SP_dodge, 1, 330);

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setMoveKey( SP_dodge+1, 1, 104, 67, 0);
setScaleKey( SP_dodge+1, 1, 1.4, 1.4);
setRotateKey( SP_dodge+1, 1, 330);

setMoveKey( SP_dodge+8, 1, 104, 67, 0);
setScaleKey( SP_dodge+8, 1, 1.4, 1.4);
setRotateKey( SP_dodge+8, 1, 330);

setMoveKey( SP_dodge+9, 1, 0, 0, 0);
setScaleKey( SP_dodge+9, 1, 1.2, 1.2);
setRotateKey( SP_dodge+9, 1, 0);

setMoveKey(   SP_dodge+10,   0,    -2500, -250,   0);

endPhase(SP_dodge+10);
do return end
else end

---------------------------------
--カードカットイン(90)
---------------------------------
spep_4 = spep_3+120;

setScaleKey( spep_4-1,   0, 1.2, 1.2);
--setScaleKey( spep_4-1,   0, 1.5, 1.5);
setScaleKey( spep_4,   0, 1.0, 1.0);

speff = entryEffect(  spep_4,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

-- ** ホワイトフェード ** --
entryFade( spep_4+81, 7, 4, 7, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade

-- ** 音 ** --
playSe( spep_4, SE_05);

---------------------------------
--放つ2_増量(150)
---------------------------------
spep_5 = spep_4+90;

Burst2 = entryEffectLife( spep_5, SP_15, 150, 0x80, -1,  0,  0,  0);
setEffScaleKey( spep_5, Burst2 , 1.0, 1.0);
setEffMoveKey( spep_5, Burst2 , 0, 0, 0);
--[[
-- ** カットイン ** --
speff = entryEffect(  spep_5,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_5,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
]]--
-- 書き文字エントリー --
ctgogo = entryEffectLife( spep_5+10, 190006, 70, 0x100, -1, 0, 0,530, 0);    -- ゴゴゴゴ
setEffShake(spep_5+10, ctgogo, 70, 10);
setEffScaleKey(spep_5+10, ctgogo, -0.8, 0.8);
setEffRotateKey(spep_5+10, ctgogo, 0);
setEffAlphaKey( spep_5+10, ctgogo, 255);

-- ** 集中線 ** --
Syu5 = entryEffectLife( spep_5, 906, 150, 0x80, -1,  0,  0,  0);

setEffScaleKey( spep_5, Syu5 , 1.0, 1.0);
--setEffScaleKey( spep_5+150, Syu5 , 1.0, 1.0);
setEffMoveKey( spep_5, Syu5 , 0, 0, 0);
--setEffMoveKey( spep_5+150, Syu5 , 0, 0, 0);
setEffRotateKey( spep_5, Syu5, 0);
--setEffRotateKey( spep_5+150, Syu5, 0);
setEffAlphaKey( spep_5, Syu5, 255);
--setEffAlphaKey( spep_5+150, Syu5, 255);

-- ** 背景 ** --
entryFadeBg( spep_5, 0, 150, 0, 30, 30, 30, 255); -- ベース暗め　背景

-- ** ホワイトフェード ** --
entryFade( spep_5+141, 7, 4, 7, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade

-- ** 音 ** --
playSe( spep_5, SE_10);
playSe( spep_5+15, SE_07);

---------------------------------
--放つ3_遠景(110)
---------------------------------
spep_6 = spep_5+90;

Burst3 = entryEffectLife( spep_6, SP_16, 110, 0x100, -1,  0,  0,  0);
setEffScaleKey( spep_6, Burst3 , 1.0, 1.0);
setEffMoveKey( spep_6, Burst3 , 0, 0, 0);

-- ** ホワイトフェード ** --
entryFade( spep_6+101, 7, 4, 7, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade

-- ** 音 ** --
playSe( spep_6+20, SE_10);

---------------------------------
--直撃波動(170)
--直撃波動用背景(170)
---------------------------------
spep_7 = spep_6+110;

Hit1 = entryEffectLife( spep_7, SP_07, 170, 0x100, -1,  0,  0,  0);   
setEffScaleKey( spep_7, Hit1 , 1.0, 1.0);
setEffMoveKey( spep_7, Hit1 , 0, 0, 0);

changeAnime(spep_7,1,108);

setDisp(spep_7,1,1);
setDisp(spep_7+55,1,0);

setMoveKey(spep_7-1,1,50,100,0);
setMoveKey(spep_7,1,-400,-600,0);
setMoveKey(spep_7+55,1,-50,-100,0);

setScaleKey(spep_7,1,1.5,1.5);
setScaleKey(spep_7+55,1,1.5,1.5);

setRotateKey(spep_7,1,325);
setRotateKey(spep_7+55,1,325);

-- ** 流線 ** --
Ryu7 = entryEffectLife( spep_7, 921, 170, 0x80, -1,  0,  0,  0);

setEffScaleKey( spep_7, Ryu7 , 1.2, 1.2);
--setEffScaleKey( spep_7+170, Ryu7 , 1.0, 1.0);
setEffMoveKey( spep_7, Ryu7 , 0, 0, 0);
--setEffMoveKey( spep_7+170, Ryu7 , 0, 0, 0);
setEffRotateKey( spep_7, Ryu7, 125);
--setEffRotateKey( spep_7+170, Ryu7, 0);
setEffAlphaKey( spep_7, Ryu7, 255);
--setEffAlphaKey( spep_7+170, Ryu7, 255);

Hit2 = entryEffectLife( spep_7, SP_08, 170, 0x80, -1,  0,  0,  0);   
setEffScaleKey( spep_7, Hit2 , 1.0, 1.0);
setEffMoveKey( spep_7, Hit2 , 0, 0, 0);

-- ** 集中線 ** --
Syu7 = entryEffectLife( spep_7, 906, 170, 0x100, -1,  0,  0,  0);

setEffScaleKey( spep_7, Syu7 , 1.0, 1.0);
--setEffScaleKey( spep_7+170, Syu7 , 1.0, 1.0);
setEffMoveKey( spep_7, Syu7 , 0, 0, 0);
--setEffMoveKey( spep_7+170, Syu7 , 0, 0, 0);
setEffRotateKey( spep_7, Syu7, 0);
--setEffRotateKey( spep_7+170, Syu7, 0);
setEffAlphaKey( spep_7, Syu7, 255);
--setEffAlphaKey( spep_7+170, Syu7, 255);

-- 書き文字エントリー --
CtZudo7 = entryEffectLife( spep_7, 10014, 170, 0x100, -1, 0, -100,370, 0); -- ズドドッ
setEffShake(spep_7, CtZudo7, 170, 20);
setEffScaleKey( spep_7, CtZudo7, 3.0, 3.0);
setEffRotateKey(spep_7, CtZudo7, -15);
setEffAlphaKey(spep_7, CtZudo7, 255);
setEffAlphaKey(spep_7+170, CtZudo7, 255);

-- ** 背景 ** --
entryFadeBg( spep_7, 0, 170, 0, 30, 30, 30, 180); -- ベース暗め　背景

-- ** ホワイトフェード ** --
entryFade( spep_7+49, 4, 4, 4, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade
entryFade( spep_7+161, 7, 4, 7, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade

-- ** 音 ** --
playSe( spep_7, SE_07);
playSe( spep_7+55, SE_09);

---------------------------------
--爆破(110)
---------------------------------
spep_8 = spep_7+170;

Exp = entryEffect( spep_8, SP_09, 0x100, -1,  0,  0,  0);   
setEffScaleKey( spep_8, Exp , -1.1, 1.1);
setEffMoveKey( spep_8, Exp , 0, 0, 0);

-- ダメージ表示
dealDamage( spep_8+16);
entryFade( spep_8+100, 9, 10, 1, 8, 8, 8, 255); -- black fade
endPhase( spep_8+120);

-- ** ホワイトフェード ** --

-- ** 音 ** --
playSe( spep_8, SE_10);

end