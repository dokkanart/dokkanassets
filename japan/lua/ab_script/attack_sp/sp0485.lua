--界王神
--sp_effect_b4_00066
--1012050

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
SP_01=	152158	;--	待機
SP_02=	152159	;--	気溜め
SP_03=	152160	;--	集中
SP_04=	152161	;--	放つ
SP_05=	152162	;--	敵に迫る


--敵側
SP_01x= 152163  ;
SP_02x= 152164  ;
SP_03x= 152165  ;
SP_04x= 152166  ;



------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

setDisp( 0, 1, 0);
setDisp( 0, 0, 0);
setMoveKey(   0,   0,    0, -2000,   0);
setMoveKey(   0,   1,    0, -2000, 0);
setMoveKey(   1,   0,    0, -2000,   0);
setMoveKey(   1,   1,    0, -2000 , 0);
setMoveKey(   2,   0,    0, -2000,   0);
setMoveKey(   2,   1,    0, -2000 , 0);
setMoveKey(   3,   0,    0, -2000,   0);
setMoveKey(   3,   1,    0, -2000 , 0);

setScaleKey(   0,   0, 1.6, 1.6);
setScaleKey(   0,   1, 1.6, 1.6);
setScaleKey(   1,   0, 1.6, 1.6);
setScaleKey(   1,   1, 1.6, 1.6);
setScaleKey(   2,   0, 1.6, 1.6);
setScaleKey(   2,   1, 1.6, 1.6);
setScaleKey(   3,   0, 1.6, 1.6);
setScaleKey(   3,   1, 1.6, 1.6);

setRotateKey(   0,   1, 0);
setRotateKey(   0,   0, 0);
setRotateKey(   1,   1, 0);
setRotateKey(   1,   0, 0);
setRotateKey(   2,   1, 0);
setRotateKey(   2,   0, 0);
setRotateKey(   3,   1, 0);
setRotateKey(   3,   0, 0);


multi_frm = 2;

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then
------------------------------------------------------
-- 味方側
------------------------------------------------------

------------------------------------------------------
-- アイドリング
------------------------------------------------------
spep_0=0;

--white fade
entryFade( spep_0, 0, 0, 8, fcolor_r, fcolor_g, fcolor_b, 255);

--集中線
shuchusen1 = entryEffectLife( spep_0, 906, 30, 0x80, -1, 0, 0, 0);

setEffScaleKey(  spep_0,  shuchusen1,  1.5,  1.5);
setEffScaleKey(  spep_0+30,  shuchusen1,  1.5,  1.5);
setEffMoveKey(  spep_0,  shuchusen1,  0,  0);
setEffMoveKey(  spep_0+30,  shuchusen1,  0,  0);
setEffRotateKey(  spep_0,  shuchusen1,  0);
setEffRotateKey(  spep_0+30,  shuchusen1,  0);
setEffAlphaKey(  spep_0,  shuchusen1,  255);
setEffAlphaKey(  spep_0+30,  shuchusen1,  255);

--界王神アイドリング立ち絵
taiki=entryEffect(  spep_0,  SP_01,  0x80,  -1,  0,  0,  0);
setEffMoveKey(  spep_0,  taiki,  0,  0);
setEffScaleKey(  spep_0,  taiki,  1,  1);
setEffRotateKey(  spep_0,  taiki,  0);
setEffAlphaKey(  spep_0,  taiki,  255);

setEffMoveKey(  spep_0+30,  taiki,  0,  0);
setEffScaleKey(  spep_0+30,  taiki,  1,  1);
setEffRotateKey(  spep_0+30,  taiki,  0);
setEffAlphaKey(  spep_0+25,  taiki,  255);
setEffAlphaKey(  spep_0+26,  taiki,  0);
setEffAlphaKey(  spep_0+30,  taiki,  0);

------------------------------------------------------
-- 気溜め
------------------------------------------------------
spep_1=spep_0+26;

--必殺技共通（黄色中心から爆発）
entryEffect(  spep_1,  1500,  0x100,  -1,  0,  0,  0);
entryEffect(  spep_1 + 1,  1501,  0x80,  -1,  0,  0,  0);

--界王神気溜め立ち絵
kidame=entryEffect(  spep_1,  SP_02,  0x100,  -1,  0,  0,  0); 
setEffMoveKey(  spep_1,  kidame,  0,  0);
setEffScaleKey(  spep_1,  kidame,  1,  1);
setEffRotateKey(  spep_1,  kidame,  0);
setEffAlphaKey(  spep_1,  kidame,  255);

setEffMoveKey(  spep_1+44,  kidame,  0,  0);
setEffScaleKey(  spep_1+44,  kidame,  1,  1);
setEffRotateKey(  spep_1+44,  kidame,  0);
setEffAlphaKey(  spep_1+44,  kidame,  255);

--気力ループ
aura1 = entryEffectLife(  spep_1,  311,  39,  0x100,  -1,  0,  0,  -160);
setEffScaleKey(  spep_1,  aura1,  1.5,  1.5);

--白フェード
entryFadeBg( spep_1,   30, 14,  0, 0, 0, 0, 150);
entryFade( spep_1+31,  4,  9,  0, fcolor_r, fcolor_g, fcolor_b, 255);

--ズズズンッ
ct1 = entryEffectLife( spep_1 + 0,  10013, 36, 0x100, -1, 0, 22, 191.9 );

setEffMoveKey( spep_1 + 0, ct1, 22, 191.9 , 0 );
setEffMoveKey( spep_1 + 3, ct1, 46, 309.9 , 0 );
setEffMoveKey( spep_1 + 4, ct1, 46, 309.9 , 0 );
setEffMoveKey( spep_1 + 36, ct1, 46, 309.9 , 0 );
setEffScaleKey( spep_1 + 0, ct1, 0.8, 0.8 );
setEffScaleKey( spep_1 + 4, ct1, 3.5, 3.5 );
setEffScaleKey( spep_1 + 36, ct1, 3.5, 3.5 );
setEffRotateKey( spep_1 + 0, ct1, 0 );
setEffRotateKey( spep_1 + 36, ct1, 0 );
setEffAlphaKey( spep_1 + 0, ct1, 255 );
setEffAlphaKey( spep_1 + 36, ct1, 255 );

setEffShake(  spep_1, ct1, 36, 8);

-- SE
playSe( spep_1, SE_01);

------------------------------------------------------
-- 集中
------------------------------------------------------
spep_2=spep_1+42;

--界王神集中立ち絵
syutyu1=entryEffect(  spep_2,  SP_03,  0x100,  -1,  0,  0,  0);

setEffMoveKey(  spep_2,  syutyu1,  0,  0);
setEffScaleKey(  spep_2,  syutyu1,  1,  1);
setEffRotateKey(  spep_2,  syutyu1,  0);
setEffAlphaKey(  spep_2,  syutyu1,  255);

setEffMoveKey(  spep_2+100,  syutyu1,  0,  0);
setEffScaleKey(  spep_2+100,  syutyu1,  1,  1);
setEffRotateKey(  spep_2+100,  syutyu1,  0);
setEffAlphaKey(  spep_2+100,  syutyu1,  255);

--大きい黄色オーラ　　--気が中心に集まる
entryEffect(  spep_2,  1503,  0x80,  -1,  0,  0,  0); 
entryEffect(  spep_2,  1502,  0x80,  -1,  0,  0,  0); 

--顔カットイン・セリフカットイン
speff1 = entryEffect(  spep_2+1,  1504,  0,  -1,  0,  0,  0 ,1000 );
setEffReplaceTexture(  speff1, 3, 2);                        
speff2 = entryEffect(  spep_2,  1505,  0,  -1,  0,  0,  0, 1100 );
setEffReplaceTexture(  speff2, 4, 5);   

--気力ループ（薄い）
aura2 = entryEffectLife(  spep_2,  311,  99,  0x100,  -1,  0,  0, -160);
setEffScaleKey(  spep_2,  aura2,  1.5,  1.5);

--白フェード
entryFadeBg( spep_2, 0, 100, 0, 0, 0, 0, 255);
entryFade( spep_2, 0, 0, 4, fcolor_r, fcolor_g, fcolor_b, 255);
entryFade( spep_2+82, 8, 10, 0, fcolor_r, fcolor_g, fcolor_b, 255);

--ゴゴゴゴ
ct2 = entryEffectLife(  spep_2 + 14, 190006, 72, 0x100, -1, 0, 0, 512, 1200);

setEffMoveKey(  spep_2 + 14,  ct2,  0,  512);
setEffScaleKey(  spep_2 + 14,  ct2,  0.8,  0.8);
setEffScaleKey(  spep_2 + 80,  ct2,  0.8,  0.8);
setEffScaleKey(  spep_2 + 86,  ct2,  4,  4);
setEffRotateKey(  spep_2 + 14,  ct2,  0);
setEffAlphaKey(  spep_2 + 14,  ct2,  255);
setEffAlphaKey( spep_2 + 34, ct2, 255 );
setEffAlphaKey( spep_2 + 80, ct2, 255 );
setEffAlphaKey( spep_2 + 86, ct2, 0 );
setEffShake(  spep_2+14, ct2, 72, 8);

--SE
playSe( spep_2, SE_02);
playSe( spep_2 + 14, SE_04);

------------------------------------------------------
-- カードカットイン
------------------------------------------------------
spep_3=spep_2+100;

--カード
speff2=entryEffect(spep_3,1507,0x80,-1,0,0,0);   
setEffReplaceTexture(speff2,1,1);
setEffReplaceTexture(speff2,2,0);-- カード差し替え
setEffReplaceTexture(speff2,5,4);-- 技名テクスチャ差し替え

-- ** エフェクト等 ** --
entryFade(spep_3+85,3,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFadeBg( spep_3, 0, 90, 0, 0, 0, 0, 255);

--SE
playSe(  spep_3,  SE_05);

------------------------------------------------------
-- 放つ
------------------------------------------------------
spep_4=spep_3+90;

--集中線
shuchusen2 = entryEffectLife( spep_4, 906, 44, 0x80,  -1, 0,  0,  0);

setEffScaleKey( spep_4, shuchusen2, 1.0, 1.0);
setEffScaleKey( spep_4+40, shuchusen2, 1.0, 1.0);
setEffScaleKey( spep_4+50, shuchusen2, 2.5, 2.5);

--流線
ryusen1=entryEffectLife( spep_4, 920, 120, 0x80,  -1,  0,  0,  0);

setEffScaleKey(  spep_4,  ryusen1,  1.0,  1.0);
setEffScaleKey(  spep_4+120,  ryusen1,  1.0,  1.0);
setEffMoveKey(  spep_4,  ryusen1,  0,  0);
setEffMoveKey(  spep_4+120,  ryusen1,  0,  0);
setEffRotateKey(  spep_4,  ryusen1,  0);
setEffRotateKey(  spep_4,  ryusen1,  0);
setEffAlphaKey(  spep_4,  ryusen1,  25);
setEffAlphaKey(  spep_4 + 120,  ryusen1,  255);

--気力ループ
aura3 = entryEffectLife(  spep_4,  311,  109,  0x80,  -1,  0,  -200,  -200);

setEffMoveKey(   spep_4,  aura3,  -200,  -200);
setEffScaleKey(  spep_4,  aura3,  2.5,  2.5);
setEffRotateKey( spep_4,  aura3,  0);
setEffAlphaKey(  spep_4,  aura3,  255);

setEffMoveKey(   spep_4+36,  aura3,  -200,  -200);
setEffScaleKey(  spep_4+36,  aura3,  2.5,  2.5);
setEffRotateKey( spep_4+36,  aura3,  0);
setEffAlphaKey(  spep_4+36,  aura3,  255);
 
setEffMoveKey(   spep_4+42, aura3,  -800,  -200);
setEffScaleKey(  spep_4+42, aura3,  2.5,  2.5);
setEffRotateKey( spep_4+42, aura3,  0);
setEffAlphaKey(  spep_4+42, aura3,  255);

--界王神放つ立ち絵
hanatsu = entryEffect(  spep_4,  SP_04,  0x80,  -1,  0,  0,  0);
setEffMoveKey(  spep_4,  hanatsu,  0,  0);
setEffScaleKey(  spep_4,  hanatsu,  1,  1);
setEffRotateKey(  spep_4,  hanatsu,  0);
setEffAlphaKey(  spep_4,  hanatsu,  255);

--黒・白フェード
entryFadeBg( spep_4, 0, 120, 0, 0, 0, 0, 255);
entryFade( spep_4 + 4,  0,  0,  4,  fcolor_r,  fcolor_g,  fcolor_b,  200);
entryFade( spep_4 + 100,  14,  8,  0,  fcolor_r,  fcolor_g,  fcolor_b,  255);

--ズオッ
ct3 = entryEffectLife( spep_4 + 4,  10012, 32, 0x100, -1, 0, 166, 310 );

setEffMoveKey( spep_4 + 4,  ct3, 166, 310);
setEffMoveKey( spep_4 + 36, ct3, 166, 310);

setEffScaleKey( spep_4 + 4, ct3, 0.2, 0.2 );
setEffScaleKey( spep_4 + 8, ct3, 2, 2 );
setEffScaleKey( spep_4 + 36, ct3, 2, 2 );

setEffRotateKey( spep_4 + 4, ct3, 30 );

setEffAlphaKey( spep_4 + 4, ct3, 255 );
setEffAlphaKey( spep_4 + 14, ct3, 255 );
setEffAlphaKey( spep_4 + 28, ct3, 255 );
setEffAlphaKey( spep_4 + 36, ct3, 0 );

setEffShake(  spep_4 + 4, ct3, 32, 8);

--[[
--ズオッ
ct3 = entryEffectLife( spep_4 + 4,  10012, 14, 0x100, -1, 0, 166, 310 );
setEffMoveKey( spep_4 + 4,  ct3, 166, 310);
setEffMoveKey( spep_4 + 18, ct3, 166, 310);

setEffScaleKey( spep_4 + 4, ct3, 0.2, 0.2 );
setEffScaleKey( spep_4 + 8, ct3, 2, 2 );
setEffScaleKey( spep_4 + 17, ct3, 2, 2 );

setEffRotateKey( spep_4 + 4, ct3, 15 );

setEffAlphaKey( spep_4 + 4, ct3, 255 );
setEffAlphaKey( spep_4 + 14, ct3, 255 );
setEffAlphaKey( spep_4 + 18, ct3, 0 );

setEffShake(  spep_4 + 4, ct3, 34, 8);
]]


--SE
playSe( spep_4, SE_07);

------------------------------------------------------
-- 敵に迫る
------------------------------------------------------
spep_5=spep_4+120;

entryEffectLife( spep_5, 921, 91, 0x80,  -1,  0,  0,  0); --斜め流線

semaru=entryEffect(  spep_5,  SP_05,  0x100,  -1,  0,  0,  0);

setEffMoveKey(  spep_5,  semaru,  0,  0);
setEffScaleKey(  spep_5,  semaru,  1,  1);
setEffRotateKey(  spep_5, semaru,  0);
setEffAlphaKey(  spep_5,  semaru,  255);

setEffMoveKey(  spep_5+74,  semaru,  0,  0);
setEffScaleKey(  spep_5+74,  semaru,  1,  1);
setEffRotateKey(  spep_5+74,  semaru,  0);
setEffAlphaKey(  spep_5+74,  semaru,  255);

--ズドドドッ
ct4 = entryEffectLife( spep_5 + 0,  10014, 91, 0x100, -1, 0, 48.6, 350 );

setEffMoveKey( spep_5 + 0, ct4, 48.6, 350 , 0 );
setEffMoveKey( spep_5 + 91, ct4, 48.6, 350 , 0 );
setEffScaleKey( spep_5 + 0, ct4, 2.87, 3.72 );
setEffScaleKey(  spep_5+91,  ct4,  2.87,  3.72);
setEffRotateKey( spep_5 + 0, ct4, 80.1 );
setEffRotateKey(  spep_5+91,  ct4,  80.1);
setEffAlphaKey( spep_5 + 0, ct4, 255 );
setEffAlphaKey(  spep_5+91,  ct4,  255);
setEffShake(  spep_5, ct4, 91, 30);

entryFadeBg( spep_5,     0,   91,  0,  0,  0,  0,  150);
entryFade(   spep_5,     0,   0,   0,  fcolor_r,  fcolor_g,  fcolor_b,  255);
entryFade(   spep_5+63,  0,   0,   6,  fcolor_r,  fcolor_g,  fcolor_b,  200);
entryFade(   spep_5+81,  5,   7,   0,  fcolor_r,  fcolor_g,  fcolor_b,  255);

--敵ふっとび
setDisp( spep_5 + 0, 1, 1 );
changeAnime( spep_5 + 0, 1, 104 );
changeAnime( spep_5 + 63, 1, 108 );

setMoveKey( spep_5 + 0, 1, 364, -6.8 , 0 );
setMoveKey( spep_5 + 63, 1, 81, -0.8 , 0 );
setMoveKey( spep_5 + 80, 1, 504.9, -0.8 , 0 );
setMoveKey( spep_5 + 91, 1, 504.9, -0.8 , 0 );

setScaleKey( spep_5 + 0, 1, 1.04, 1.04 );
setScaleKey( spep_5 + 63, 1, 1.92, 1.92 );
setScaleKey( spep_5 + 66, 1, 1.92, 1.92 );
setScaleKey( spep_5 + 80, 1, 0.47, 0.47 );
setScaleKey( spep_5 + 91, 1, 0.47, 0.47 );

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5 + 91, 1, 0 );

setShakeChara( spep_5, 1, 91, 20);


--SE
SE00 = playSe( spep_5, SE_06);

------------------------------------------------------
-- 回避
------------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge = spep_5+40; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);
stopSe( SP_dodge-12, SE00, 0 );

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(SP_dodge+10);

do return end
else end
------------------------------------------------------
-- 爆発
------------------------------------------------------
playSe( spep_5+63, SE_09);

--敵の動き--
spep_6=spep_5+91;

setDisp( spep_6 + 0, 1, 1 );
changeAnime( spep_6 + 0, 1, 107 );

setMoveKey( spep_6 + 0, 1, 36.2, -4.9 , 0 );
setMoveKey( spep_6 + 2, 1, 32.5, -4.9 , 0 );
setMoveKey( spep_6 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_6 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_6 + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_6 + 10, 1, 7.1, -92.9 , 0 );
setMoveKey( spep_6 + 12, 1, -1.9, -124.1 , 0 );
setMoveKey( spep_6 + 110, 1, -1.9, -124.1 , 0 );

setScaleKey( spep_6 + 0, 1, 0.22, 0.22 );
setScaleKey( spep_6 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_6 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_6 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_6 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_6 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_6 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_6 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_6 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_6 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_6 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_6 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_6 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_6 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_6 + 110, 1, 1.6, 1.6 );

setRotateKey( spep_6 + 0, 1, 0 );
setRotateKey( spep_6 + 2, 1, 105 );
setRotateKey( spep_6 + 4, 1, 240 );
setRotateKey( spep_6 + 6, 1, 405 );
setRotateKey( spep_6 + 8, 1, 600 );
setRotateKey( spep_6 + 10, 1, 825 );
setRotateKey( spep_6 + 12, 1, 1080 );
setRotateKey( spep_6 + 110, 1, 1080 );

--爆発エフェクト
entryEffect( spep_6, 1509,  0x80,  -1,  0,  0,  0);
playSe( spep_6, SE_10);

setDamage( spep_6 + 16, 1, 0);
setShake(spep_6 + 8,6,15);
setShake(spep_6 + 14,15,10);

--ガッ
ctGa = entryEffectLife( spep_6 + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );
setEffShake( spep_6 + 14, ctGa, 20, 10);

setEffMoveKey( spep_6 + 14, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_6 + 16, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_6 + 18, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_6 + 20, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_6 + 22, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_6 + 24, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_6 + 26, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_6 + 28, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_6 + 30, ctGa, 3.9, 316.1 , 0 );

setEffScaleKey( spep_6 + 14, ctGa, 4.0, 4.0 );
setEffScaleKey( spep_6 + 16, ctGa, 4.0, 4.0 );
setEffScaleKey( spep_6 + 17, ctGa, 4.0, 4.0 );
setEffScaleKey( spep_6 + 18, ctGa, 4.0, 4.0 );
setEffScaleKey( spep_6 + 19, ctGa, 4.0, 4.0 );
setEffScaleKey( spep_6 + 20, ctGa, 4.0, 4.0 );
setEffScaleKey( spep_6 + 112, ctGa, 4.0, 4.0 );

setEffRotateKey( spep_6 + 14, ctGa, -30 );
setEffRotateKey( spep_6 + 16, ctGa,   0 );
setEffRotateKey( spep_6 + 18, ctGa, -30 );
setEffRotateKey( spep_6 + 20, ctGa,   0 );
setEffRotateKey( spep_6 + 22, ctGa, -30 );
setEffRotateKey( spep_6 + 24, ctGa,   0 );
setEffRotateKey( spep_6 + 26, ctGa, -30 );
setEffRotateKey( spep_6 + 28, ctGa,   0 );
setEffRotateKey( spep_6 + 30, ctGa, -30 );
setEffRotateKey( spep_6 + 112, ctGa, -30 );

setEffAlphaKey( spep_6 + 14, ctGa, 255 );
setEffAlphaKey( spep_6 + 112, ctGa, 255 );

--集中線（白）
shuchusen3 = entryEffectLife( spep_6+14, 906, 120, 0x00,  -1,  0,  0,  0);

--集中線（黒）
shuchusen4 = entryEffectLife( spep_6+14, 1657, 120, 0x80,  -1,  0,  0,  0);

--ひび割れ
hibi = entryEffect( spep_6+4, 1600,  0x00,  -1,  0,  30, -130);

-- ダメージ表示
dealDamage(spep_6+16);
--entryFade( spep_6+100, 9,  10,  1,  8,  8,  8, 255);
endPhase( spep_6+110 -10);

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- アイドリング
------------------------------------------------------
spep_0=0;

--white fade
entryFade( spep_0, 0, 0, 8, fcolor_r, fcolor_g, fcolor_b, 255);

--集中線
shuchusen1 = entryEffectLife( spep_0, 906, 30, 0x80, -1, 0, 0, 0);

setEffScaleKey(  spep_0,  shuchusen1,  1.5,  1.5);
setEffScaleKey(  spep_0+30,  shuchusen1,  1.5,  1.5);
setEffMoveKey(  spep_0,  shuchusen1,  0,  0);
setEffMoveKey(  spep_0+30,  shuchusen1,  0,  0);
setEffRotateKey(  spep_0,  shuchusen1,  0);
setEffRotateKey(  spep_0+30,  shuchusen1,  0);
setEffAlphaKey(  spep_0,  shuchusen1,  255);
setEffAlphaKey(  spep_0+30,  shuchusen1,  255);

--界王神アイドリング立ち絵
taiki=entryEffect(  spep_0,  SP_01x,  0x80,  -1,  0,  0,  0);
setEffMoveKey(  spep_0,  taiki,  0,  0);
setEffScaleKey(  spep_0,  taiki,  1,  1);
setEffRotateKey(  spep_0,  taiki,  0);
setEffAlphaKey(  spep_0,  taiki,  255);

setEffMoveKey(  spep_0+30,  taiki,  0,  0);
setEffScaleKey(  spep_0+30,  taiki,  1,  1);
setEffRotateKey(  spep_0+30,  taiki,  0);
setEffAlphaKey(  spep_0+25,  taiki,  255);
setEffAlphaKey(  spep_0+26,  taiki,  0);
setEffAlphaKey(  spep_0+30,  taiki,  0);

------------------------------------------------------
-- 気溜め
------------------------------------------------------
spep_1=spep_0+26;

--必殺技共通（黄色中心から爆発）
entryEffect(  spep_1,  1500,  0x100,  -1,  0,  0,  0);
entryEffect(  spep_1 + 1,  1501,  0x80,  -1,  0,  0,  0);

--界王神気溜め立ち絵
kidame=entryEffect(  spep_1,  SP_02x,  0x100,  -1,  0,  0,  0); 
setEffMoveKey(  spep_1,  kidame,  0,  0);
setEffScaleKey(  spep_1,  kidame,  1,  1);
setEffRotateKey(  spep_1,  kidame,  0);
setEffAlphaKey(  spep_1,  kidame,  255);

setEffMoveKey(  spep_1+44,  kidame,  0,  0);
setEffScaleKey(  spep_1+44,  kidame,  1,  1);
setEffRotateKey(  spep_1+44,  kidame,  0);
setEffAlphaKey(  spep_1+44,  kidame,  255);

--気力ループ
aura1 = entryEffectLife(  spep_1,  311,  39,  0x100,  -1,  0,  0,  -160);
setEffScaleKey(  spep_1,  aura1,  1.5,  1.5);

--白フェード
entryFadeBg( spep_1,   30, 14,  0, 0, 0, 0, 150);
entryFade( spep_1+31,  4,  9,  0, fcolor_r, fcolor_g, fcolor_b, 255);

--ズズズンッ
ct1 = entryEffectLife( spep_1 + 0,  10013, 36, 0x100, -1, 0, 22, 191.9 );

setEffMoveKey( spep_1 + 0, ct1, 22, 191.9 , 0 );
setEffMoveKey( spep_1 + 3, ct1, 46, 309.9 , 0 );
setEffMoveKey( spep_1 + 4, ct1, 46, 309.9 , 0 );
setEffMoveKey( spep_1 + 36, ct1, 46, 309.9 , 0 );
setEffScaleKey( spep_1 + 0, ct1, 0.8, 0.8 );
setEffScaleKey( spep_1 + 4, ct1, 3.5, 3.5 );
setEffScaleKey( spep_1 + 36, ct1, 3.5, 3.5 );
setEffRotateKey( spep_1 + 0, ct1, 0 );
setEffRotateKey( spep_1 + 36, ct1, 0 );
setEffAlphaKey( spep_1 + 0, ct1, 255 );
setEffAlphaKey( spep_1 + 36, ct1, 255 );

setEffShake(  spep_1, ct1, 36, 8);

-- SE
playSe( spep_1, SE_01);

------------------------------------------------------
-- 集中
------------------------------------------------------
spep_2=spep_1+42;

--界王神集中立ち絵
syutyu1=entryEffect(  spep_2,  SP_03x,  0x100,  -1,  0,  0,  0);

setEffMoveKey(  spep_2,  syutyu1,  0,  0);
setEffScaleKey(  spep_2,  syutyu1,  1,  1);
setEffRotateKey(  spep_2,  syutyu1,  0);
setEffAlphaKey(  spep_2,  syutyu1,  255);

setEffMoveKey(  spep_2+100,  syutyu1,  0,  0);
setEffScaleKey(  spep_2+100,  syutyu1,  1,  1);
setEffRotateKey(  spep_2+100,  syutyu1,  0);
setEffAlphaKey(  spep_2+100,  syutyu1,  255);

--大きい黄色オーラ　　--気が中心に集まる
entryEffect(  spep_2,  1503,  0x80,  -1,  0,  0,  0); 
entryEffect(  spep_2,  1502,  0x80,  -1,  0,  0,  0); 

--顔カットイン・セリフカットイン
--speff1 = entryEffect(  spep_2+1,  1504,  0,  -1,  0,  0,  0);
--setEffReplaceTexture(  speff1, 3, 2);                        
--speff2 = entryEffect(  spep_2,  1505,  0,  -1,  0,  0,  0);
--setEffReplaceTexture(  speff2, 4, 5);   

--気力ループ（薄い）
aura2 = entryEffectLife(  spep_2,  311,  99,  0x100,  -1,  0,  0, -160);
setEffScaleKey(  spep_2,  aura2,  1.5,  1.5);

--白フェード
entryFadeBg( spep_2, 0, 100, 0, 0, 0, 0, 255);
entryFade( spep_2, 0, 0, 4, fcolor_r, fcolor_g, fcolor_b, 255);
entryFade( spep_2+82, 8, 10, 0, fcolor_r, fcolor_g, fcolor_b, 255);

--ゴゴゴゴ
ct2 = entryEffectLife(  spep_2 + 14, 190006, 72, 0x100, -1, 0, 0, 512);

setEffMoveKey(  spep_2 + 14,  ct2,  0,  512);
setEffScaleKey(  spep_2 + 14,  ct2,  -0.8,  0.8);
setEffScaleKey(  spep_2 + 80,  ct2,  -0.8,  0.8);
setEffScaleKey(  spep_2 + 86,  ct2,  -4,  4);
setEffRotateKey(  spep_2 + 14,  ct2,  0);
setEffAlphaKey(  spep_2 + 14,  ct2,  255);
setEffAlphaKey( spep_2 + 34, ct2, 255 );
setEffAlphaKey( spep_2 + 80, ct2, 255 );
setEffAlphaKey( spep_2 + 86, ct2, 0 );
setEffShake(  spep_2+14, ct2, 72, 8);

--SE
playSe( spep_2, SE_02);
playSe( spep_2 + 14, SE_04);

------------------------------------------------------
-- カードカットイン
------------------------------------------------------
spep_3=spep_2+100;

--カード
speff2=entryEffect(spep_3,1507,0x80,-1,0,0,0);   
setEffReplaceTexture(speff2,1,1);
setEffReplaceTexture(speff2,2,0);-- カード差し替え
setEffReplaceTexture(speff2,5,4);-- 技名テクスチャ差し替え

-- ** エフェクト等 ** --
entryFade(spep_3+85,3,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFadeBg( spep_3, 0, 90, 0, 0, 0, 0, 255);

--SE
playSe(  spep_3,  SE_05);

------------------------------------------------------
-- 放つ
------------------------------------------------------
spep_4=spep_3+90;

--集中線
shuchusen2 = entryEffectLife( spep_4, 906, 44, 0x80,  -1, 0,  0,  0);

setEffScaleKey( spep_4, shuchusen2, 1.0, 1.0);
setEffScaleKey( spep_4+40, shuchusen2, 1.0, 1.0);
setEffScaleKey( spep_4+50, shuchusen2, 2.5, 2.5);

--流線
ryusen1=entryEffectLife( spep_4, 920, 120, 0x80,  -1,  0,  0,  0);

setEffScaleKey(  spep_4,  ryusen1,  1.0,  1.0);
setEffScaleKey(  spep_4+120,  ryusen1,  1.0,  1.0);
setEffMoveKey(  spep_4,  ryusen1,  0,  0);
setEffMoveKey(  spep_4+120,  ryusen1,  0,  0);
setEffRotateKey(  spep_4,  ryusen1,  0);
setEffRotateKey(  spep_4,  ryusen1,  0);
setEffAlphaKey(  spep_4,  ryusen1,  25);
setEffAlphaKey(  spep_4 + 120,  ryusen1,  255);

--気力ループ
aura3 = entryEffectLife(  spep_4,  311,  109,  0x80,  -1,  0,  -200,  -200);

setEffMoveKey(   spep_4,  aura3,  -200,  -200);
setEffScaleKey(  spep_4,  aura3,  2.5,  2.5);
setEffRotateKey( spep_4,  aura3,  0);
setEffAlphaKey(  spep_4,  aura3,  255);

setEffMoveKey(   spep_4+36,  aura3,  -200,  -200);
setEffScaleKey(  spep_4+36,  aura3,  2.5,  2.5);
setEffRotateKey( spep_4+36,  aura3,  0);
setEffAlphaKey(  spep_4+36,  aura3,  255);
 
setEffMoveKey(   spep_4+42, aura3,  -800,  -200);
setEffScaleKey(  spep_4+42, aura3,  2.5,  2.5);
setEffRotateKey( spep_4+42, aura3,  0);
setEffAlphaKey(  spep_4+42, aura3,  255);

--界王神放つ立ち絵
hanatsu = entryEffect(  spep_4,  SP_04x,  0x80,  -1,  0,  0,  0);
setEffMoveKey(  spep_4,  hanatsu,  0,  0);
setEffScaleKey(  spep_4,  hanatsu,  1,  1);
setEffRotateKey(  spep_4,  hanatsu,  0);
setEffAlphaKey(  spep_4,  hanatsu,  255);

--黒・白フェード
entryFadeBg( spep_4, 0, 120, 0, 0, 0, 0, 255);
entryFade( spep_4 + 4,  0,  0,  4,  fcolor_r,  fcolor_g,  fcolor_b,  200);
entryFade( spep_4 + 100,  14,  8,  0,  fcolor_r,  fcolor_g,  fcolor_b,  255);

--ズオッ
ct3 = entryEffectLife( spep_4 + 4,  10012, 32, 0x100, -1, 0, 166, 310 );

setEffMoveKey( spep_4 + 4,  ct3, 166, 310);
setEffMoveKey( spep_4 + 36, ct3, 166, 310);

setEffScaleKey( spep_4 + 4, ct3, 0.2, 0.2 );
setEffScaleKey( spep_4 + 8, ct3, 2, 2 );
setEffScaleKey( spep_4 + 36, ct3, 2, 2 );

setEffRotateKey( spep_4 + 4, ct3, 30 );

setEffAlphaKey( spep_4 + 4, ct3, 255 );
setEffAlphaKey( spep_4 + 14, ct3, 255 );
setEffAlphaKey( spep_4 + 28, ct3, 255 );
setEffAlphaKey( spep_4 + 36, ct3, 0 );

setEffShake(  spep_4 + 4, ct3, 32, 8);

--[[
--ズオッ
ct3 = entryEffectLife( spep_4 + 4,  10012, 14, 0x100, -1, 0, 166, 310 );
setEffMoveKey( spep_4 + 4,  ct3, 166, 310);
setEffMoveKey( spep_4 + 18, ct3, 166, 310);

setEffScaleKey( spep_4 + 4, ct3, 0.2, 0.2 );
setEffScaleKey( spep_4 + 8, ct3, 2, 2 );
setEffScaleKey( spep_4 + 17, ct3, 2, 2 );

setEffRotateKey( spep_4 + 4, ct3, 15 );

setEffAlphaKey( spep_4 + 4, ct3, 255 );
setEffAlphaKey( spep_4 + 14, ct3, 255 );
setEffAlphaKey( spep_4 + 18, ct3, 0 );

setEffShake(  spep_4 + 4, ct3, 34, 8);
]]


--SE
playSe( spep_4, SE_07);

------------------------------------------------------
-- 敵に迫る
------------------------------------------------------
spep_5=spep_4+120;

entryEffectLife( spep_5, 921, 91, 0x80,  -1,  0,  0,  0); --斜め流線

semaru=entryEffect(  spep_5,  SP_05,  0x100,  -1,  0,  0,  0);

setEffMoveKey(  spep_5,  semaru,  0,  0);
setEffScaleKey(  spep_5,  semaru,  1,  1);
setEffRotateKey(  spep_5, semaru,  0);
setEffAlphaKey(  spep_5,  semaru,  255);

setEffMoveKey(  spep_5+74,  semaru,  0,  0);
setEffScaleKey(  spep_5+74,  semaru,  1,  1);
setEffRotateKey(  spep_5+74,  semaru,  0);
setEffAlphaKey(  spep_5+74,  semaru,  255);

--ズドドドッ
ct4 = entryEffectLife( spep_5 + 0,  10014, 91, 0x100, -1, 0, 48.6, 350 );

setEffMoveKey( spep_5 + 0, ct4, 48.6, 350 , 0 );
setEffMoveKey( spep_5 + 91, ct4, 48.6, 350 , 0 );
setEffScaleKey( spep_5 + 0, ct4, 2.87, 3.72 );
setEffScaleKey(  spep_5+91,  ct4,  2.87,  3.72);
setEffRotateKey( spep_5 + 0, ct4, 0);
setEffRotateKey(  spep_5+91,  ct4,  0);
setEffAlphaKey( spep_5 + 0, ct4, 255 );
setEffAlphaKey(  spep_5+91,  ct4,  255);
setEffShake(  spep_5, ct4, 91, 30);

entryFadeBg( spep_5,     0,   91,  0,  0,  0,  0,  150);
entryFade(   spep_5,     0,   0,   0,  fcolor_r,  fcolor_g,  fcolor_b,  255);
entryFade(   spep_5+63,  0,   0,   6,  fcolor_r,  fcolor_g,  fcolor_b,  200);
entryFade(   spep_5+81,  5,   7,   0,  fcolor_r,  fcolor_g,  fcolor_b,  255);

--敵ふっとび
setDisp( spep_5 + 0, 1, 1 );
changeAnime( spep_5 + 0, 1, 104 );
changeAnime( spep_5 + 63, 1, 108 );

setMoveKey( spep_5 + 0, 1, 364, -6.8 , 0 );
setMoveKey( spep_5 + 63, 1, 81, -0.8 , 0 );
setMoveKey( spep_5 + 80, 1, 504.9, -0.8 , 0 );
setMoveKey( spep_5 + 91, 1, 504.9, -0.8 , 0 );

setScaleKey( spep_5 + 0, 1, 1.04, 1.04 );
setScaleKey( spep_5 + 63, 1, 1.92, 1.92 );
setScaleKey( spep_5 + 66, 1, 1.92, 1.92 );
setScaleKey( spep_5 + 80, 1, 0.47, 0.47 );
setScaleKey( spep_5 + 91, 1, 0.47, 0.47 );

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5 + 91, 1, 0 );

setShakeChara( spep_5, 1, 91, 20);


--SE
SE00 = playSe( spep_5, SE_06);

------------------------------------------------------
-- 回避
------------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge = spep_5+40; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);
stopSe( SP_dodge-12, SE00, 0 );

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(SP_dodge+10);

do return end
else end
------------------------------------------------------
-- 爆発
------------------------------------------------------
playSe( spep_5+63, SE_09);

--敵の動き--
spep_6=spep_5+91;

setDisp( spep_6 + 0, 1, 1 );
changeAnime( spep_6 + 0, 1, 107 );

setMoveKey( spep_6 + 0, 1, 36.2, -4.9 , 0 );
setMoveKey( spep_6 + 2, 1, 32.5, -4.9 , 0 );
setMoveKey( spep_6 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_6 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_6 + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_6 + 10, 1, 7.1, -92.9 , 0 );
setMoveKey( spep_6 + 12, 1, -1.9, -124.1 , 0 );
setMoveKey( spep_6 + 110, 1, -1.9, -124.1 , 0 );

setScaleKey( spep_6 + 0, 1, 0.22, 0.22 );
setScaleKey( spep_6 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_6 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_6 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_6 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_6 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_6 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_6 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_6 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_6 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_6 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_6 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_6 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_6 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_6 + 110, 1, 1.6, 1.6 );

setRotateKey( spep_6 + 0, 1, 0 );
setRotateKey( spep_6 + 2, 1, 105 );
setRotateKey( spep_6 + 4, 1, 240 );
setRotateKey( spep_6 + 6, 1, 405 );
setRotateKey( spep_6 + 8, 1, 600 );
setRotateKey( spep_6 + 10, 1, 825 );
setRotateKey( spep_6 + 12, 1, 1080 );
setRotateKey( spep_6 + 110, 1, 1080 );

--爆発エフェクト
entryEffect( spep_6, 1509,  0x80,  -1,  0,  0,  0);
playSe( spep_6, SE_10);

setDamage( spep_6 + 16, 1, 0);
setShake(spep_6 + 8,6,15);
setShake(spep_6 + 14,15,10);

--ガッ
ctGa = entryEffectLife( spep_6 + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );
setEffShake( spep_6 + 14, ctGa, 20, 10);

setEffMoveKey( spep_6 + 14, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_6 + 16, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_6 + 18, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_6 + 20, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_6 + 22, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_6 + 24, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_6 + 26, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_6 + 28, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_6 + 30, ctGa, 3.9, 316.1 , 0 );

setEffScaleKey( spep_6 + 14, ctGa, 4.0, 4.0 );
setEffScaleKey( spep_6 + 16, ctGa, 4.0, 4.0 );
setEffScaleKey( spep_6 + 17, ctGa, 4.0, 4.0 );
setEffScaleKey( spep_6 + 18, ctGa, 4.0, 4.0 );
setEffScaleKey( spep_6 + 19, ctGa, 4.0, 4.0 );
setEffScaleKey( spep_6 + 20, ctGa, 4.0, 4.0 );
setEffScaleKey( spep_6 + 112, ctGa, 4.0, 4.0 );

setEffRotateKey( spep_6 + 14, ctGa, -30 );
setEffRotateKey( spep_6 + 16, ctGa,   0 );
setEffRotateKey( spep_6 + 18, ctGa, -30 );
setEffRotateKey( spep_6 + 20, ctGa,   0 );
setEffRotateKey( spep_6 + 22, ctGa, -30 );
setEffRotateKey( spep_6 + 24, ctGa,   0 );
setEffRotateKey( spep_6 + 26, ctGa, -30 );
setEffRotateKey( spep_6 + 28, ctGa,   0 );
setEffRotateKey( spep_6 + 30, ctGa, -30 );
setEffRotateKey( spep_6 + 112, ctGa, -30 );

setEffAlphaKey( spep_6 + 14, ctGa, 255 );
setEffAlphaKey( spep_6 + 112, ctGa, 255 );

--集中線（白）
shuchusen3 = entryEffectLife( spep_6+14, 906, 120, 0x00,  -1,  0,  0,  0);

--集中線（黒）
shuchusen4 = entryEffectLife( spep_6+14, 1657, 120, 0x80,  -1,  0,  0,  0);

--ひび割れ
hibi = entryEffect( spep_6+4, 1600,  0x00,  -1,  0,  30, -130);

-- ダメージ表示
dealDamage(spep_6+16);
--entryFade( spep_6+100, 9,  10,  1,  8,  8,  8, 255);
endPhase( spep_6+110 -10);

end