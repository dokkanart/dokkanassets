--1013870　人造人間18号	ジャージ	格闘sp1165

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
SP_01 = 151463;--気溜(150F)
SP_02 = 151464;--突進(70F)
SP_03 = 151465;--連撃(210F)
SP_04 = 151466;--連射(110F)
SP_05 = 151467;--被弾(80F)
SP_06 = 151468;--HIT(前)(100F)
SP_07 = 151469;--HIT(後)(100F)
SP_08 = 151470;--爆発(140F)

--敵側
SP_01x = 151471;--気溜(150F)
SP_02x = 151472;--突進(70F)
SP_03x = 151473;--連撃(210F)
SP_04x = 151474;--連射(110F)

multi_frm = 2;

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

-------------------
--テンプレート
-------------------

setVisibleUI(0, 0);
setDisp( 0, 0, 1); --味方表示
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

-------------------
--SP_01 = 151463;--気溜(150F)
-------------------
spep1=0;

Kidame=entryEffectLife(spep1,SP_01,148,0x80,-1,0,0,0);

setEffMoveKey(spep1,Kidame,0,0,0);
setEffMoveKey(spep1+148,Kidame,0,0,0);
setEffScaleKey(spep1,Kidame,1.0,1.0);
setEffScaleKey(spep1+148,Kidame,1.0,1.0);
setEffAlphaKey(spep1,Kidame,255);
setEffAlphaKey(spep1+148,Kidame,255);
setEffRotateKey(spep1,Kidame,0);
setEffRotateKey(spep1+148,Kidame,0);


-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep1+38, 906, 112, 0x100,  -1, 0,  0,  0); -- 集中線
setEffMoveKey( spep1+38, shuchusen1, 0, 0, 0);
setEffScaleKey( spep1+38, shuchusen1, 1.4, 1.4);
setEffAlphaKey( spep1+38, shuchusen1, 255);
setEffRotateKey( spep1+38, shuchusen1, 0);

-- 書き文字エントリー17
ctzuzun=entryEffectLife(spep1+38,10013,57,0x100,-1,0,200);

setEffShake(spep1+38,ctzuzun,39,15);

setEffMoveKey(spep1+38,ctzuzun,0,200,0);
setEffMoveKey(spep1+46,ctzuzun,0,350,0);
setEffMoveKey(spep1+78,ctzuzun,0,350,0);
setEffScaleKey(spep1+38,ctzuzun,0.8,0.8);
setEffScaleKey(spep1+46,ctzuzun,2.7,2.7);
setEffScaleKey(spep1+78,ctzuzun,2.7,2.7);
setEffAlphaKey(spep1+37,ctzuzun,255);
setEffAlphaKey(spep1+72,ctzuzun,255);
setEffAlphaKey(spep1+78,ctzuzun,0);
setEffRotateKey(spep1+38,ctzuzun,0);
setEffRotateKey(spep1+78,ctzuzun,0);

ctgogo=entryEffectLife(spep1+83,190006,69,0x100,-1,0,530);

setEffShake(spep1+83,ctgogo,69,15);

setEffMoveKey(spep1+83,ctgogo,0,530);
setEffMoveKey(spep1+149,ctgogo,0,530);
setEffScaleKey(spep1+83,ctgogo,0.8,0.8);
setEffScaleKey(spep1+149,ctgogo,0.8,0.8);
setEffAlphaKey(spep1+83,ctgogo,255);
setEffAlphaKey(spep1+149,ctgogo,255);
setEffRotateKey(spep1+83,ctgogo,0);
setEffRotateKey(spep1+149,ctgogo,0);

speff=entryEffect(spep1+70,1504,0x100,-1,0,0,0);
setEffReplaceTexture(speff,3,2);
speff=entryEffect(spep1+70,1505,0x100,-1,0,0,0);
setEffReplaceTexture(speff,4,5);

--SE
playSe(spep1+21, SE_02);
playSe(spep1+70, SE_04);

--背景・ホワイトフェイド
entryFadeBg( spep1+38, 0, 129, 0, 0, 0, 0, 210);  -- 黒　背景
entryFade( spep1+37, 0, 0, 10, fcolor_r, fcolor_g, fcolor_b, 180);
entryFade( spep1+141, 6, 6, 6, fcolor_r, fcolor_g, fcolor_b, 255);

-------------------
--カードカットイン(90F)
-------------------
spep2=spep1+150;

playSe( spep2, SE_05);

-- ** 集中線 ** --
shuchusen2 = entryEffectLife(spep2, 906, 90, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey( spep2, shuchusen2, 0, 0, 0);
setEffScaleKey( spep2, shuchusen2, 1.0, 1.0);
setEffAlphaKey( spep2, shuchusen2, 255);
setEffRotateKey( spep2, shuchusen2, 0);

-- カードカットイン
speff = entryEffect(  spep2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);-- カード差し替え
setEffReplaceTexture( speff, 5, 4);-- 技名テクスチャ差し替え

-- ** エフェクト等 ** --
entryFade(spep2+85, 3, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-------------------
--SP_02 = 151464;--突進(70F)
-------------------
spep3=spep2+90;

Tosshin=entryEffectLife(spep3,SP_02,70,0x80,-1,0,0,0);

setEffMoveKey(spep3,Tosshin,0,0,0);
setEffMoveKey(spep3+70,Tosshin,0,0,0);
setEffScaleKey(spep3,Tosshin,1.0,1.0);
setEffScaleKey(spep3+70,Tosshin,1.0,1.0);
setEffAlphaKey(spep3,Tosshin,255);
setEffAlphaKey(spep3+70,Tosshin,255);
setEffRotateKey(spep3,Tosshin,0);
setEffRotateKey(spep3+70,Tosshin,0);

-- ** 集中線
shuchusen3 = entryEffectLife(spep3,906,70,0x100,-1,0,0,0);-- 集中線

setEffMoveKey(spep3,shuchusen3,0,0,0);
setEffMoveKey(spep3+70,shuchusen3,0,0,0);
setEffScaleKey(spep3,shuchusen3,1.0,1.0);
setEffScaleKey(spep3+70,shuchusen3,1.0,1.0);
setEffAlphaKey(spep3,shuchusen3,255);
setEffAlphaKey(spep3+70,shuchusen3,255);
setEffRotateKey(spep3,shuchusen3,0);
setEffRotateKey(spep3+70,shuchusen3,0);

-- 書き文字エントリー
ctZuo = entryEffectLife(spep3+2,10012,58,0x100,-1,0,120,290); -- ズオッ

setEffShake(spep3+2,ctZuo,65,15);

setEffMoveKey(spep3+2,ctZuo, 120, 290);
setEffMoveKey(spep3+6,ctZuo, 120, 350);
setEffAlphaKey(spep3+2,ctZuo,255);
setEffAlphaKey(spep3+54,ctZuo,255);
setEffAlphaKey(spep3+58,ctZuo,0);
setEffScaleKey(spep3+2,ctZuo,0.1,0.1);
setEffScaleKey(spep3+6,ctZuo,2.7,2.7);
setEffScaleKey(spep3+52,ctZuo,2.7,2.7);
setEffScaleKey(spep3+56,ctZuo,5.7,5.7);
setEffScaleKey(spep3+58,ctZuo,6.5,6.5);
setEffRotateKey(spep3+2,ctZuo,30);
setEffRotateKey(spep3+58,ctZuo,30);

--SE
playSe( spep3+2, 9);

--背景・ホワイトフェイド
entryFadeBg( spep3, 0, 280, 0, 0, 0, 0, 210);  -- 黒　背景
entryFade( spep3+61, 6, 6, 6, fcolor_r, fcolor_g, fcolor_b, 255);

-------------------
--回避
-------------------

if (_IS_DODGE_ == 1) then

SP_dodge = 330;

playSe( SP_dodge-12, 1042);

setMoveKey(SP_dodge,1,0,0);
setScaleKey(   SP_dodge,   1, 1.5, 1.5);
setRotateKey(   SP_dodge,   1, 0);

setMoveKey(SP_dodge+8,1,0,0);
setScaleKey(   SP_dodge+8,   1, 1.5, 1.5);
setRotateKey(   SP_dodge+8,   1, 0);

changeAnime(  SP_dodge+9,    1,  100);
setMoveKey(  SP_dodge+9,    1,  0,  0,   0);
setScaleKey( SP_dodge+9,    1,  1.0, 1.0);
setRotateKey(   SP_dodge+9,   1, 0);

setMoveKey(  SP_dodge+10,    1,  0,  0,   0);
setScaleKey( SP_dodge+10,    1,  1.0, 1.0);
setRotateKey(   SP_dodge+10,   1, 0);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);
entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景
pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase( SP_dodge+10);

do return end
else end

-------------------
--SP_03 = 151465;--連撃(210F)
-------------------
spep4=spep3+70;

setDisp(spep4,1,1);
setDisp(spep4+150,1,0);

changeAnime(spep4,1,100);
changeAnime(spep4+17,1,108);

setMoveKey(spep4,1,-300,-50,0);
setMoveKey(spep4+24,1,-240,-10,0);
setMoveKey(spep4+122,1,100,50,0);
setMoveKey(spep4+150,1,124,70,0);
setScaleKey(spep4,1,1.5,1.5);
setScaleKey(spep4+122,1,1.5,1.5);
setScaleKey(spep4+150,1,1.8,1.8); --1.8
setRotateKey(spep4, 1, 340); --340
setRotateKey(spep4+150, 1, 340); --340

Rengeki=entryEffectLife(spep4,SP_03,208,0x100,-1,0,0,0);

setEffMoveKey(spep4,Rengeki,0,0,0);
setEffMoveKey(spep4+208,Rengeki,0,0,0);
setEffScaleKey(spep4,Rengeki,1.0,1.0);
setEffScaleKey(spep4+208,Rengeki,1.0,1.0);
setEffAlphaKey(spep4,Rengeki,255);
setEffAlphaKey(spep4+208,Rengeki,255);
setEffRotateKey(spep4,Rengeki,0);
setEffRotateKey(spep4+208,Rengeki,0);


--流線
ryu4 = entryEffectLife(spep4, 914, 210, 0x80,  -1, 0,  0,  0);   -- 流線

setEffScaleKey(spep4, ryu4, 1.4, 1.4);
setEffScaleKey(spep4+210, ryu4, 1.4, 1.4);
setEffRotateKey(spep4, ryu4, 345);
setEffRotateKey(spep4+210, ryu4, 345);

-- 書き文字エントリー
ctDogaga = entryEffectLife( spep4+17, 10017, 98, 0x100, -1, 0,0, 380); -- ドガ

setEffShake(spep4+17,ctDogaga,98,15);

setEffAlphaKey( spep4+17, ctDogaga, 255);
setEffAlphaKey( spep4+122, ctDogaga, 255);
setEffScaleKey( spep4+17, ctDogaga, 1.8, 1.8);
setEffScaleKey( spep4+18, ctDogaga, 3.0, 3.0);
setEffScaleKey( spep4+19, ctDogaga, 2.7, 2.7);
setEffScaleKey( spep4+122, ctDogaga, 2.7, 2.7);
setEffRotateKey( spep4+17, ctDogaga, 25);
setEffRotateKey( spep4+122, ctDogaga, 25);

-- ** 集中線
shuchusen4 = entryEffectLife(spep4,906,210,0x100,-1,0,0,0);-- 集中線

setEffMoveKey(spep4,shuchusen4,0,0,0);
setEffMoveKey(spep4+210,shuchusen4,0,0,0);
setEffScaleKey(spep4,shuchusen4,1.2,1.2);
setEffScaleKey(spep4+210,shuchusen4,1.2,1.2);
setEffAlphaKey(spep4,shuchusen4,255);
setEffAlphaKey(spep4+210,shuchusen4,255);
setEffRotateKey(spep4,shuchusen4,0);
setEffRotateKey(spep4+210,shuchusen3,0);

-- 書き文字エントリー
ctBaki = entryEffectLife( spep4+145, 10020, 26, 0x100, -1, 0, 200, 300); -- バキ

setEffShake( spep4+145, ctBaki, 26, 15);
setEffAlphaKey( spep4+145, ctBaki, 255);
setEffAlphaKey( spep4+162, ctBaki, 255);
setEffAlphaKey( spep4+165, ctBaki, 0);
setEffScaleKey( spep4+145, ctBaki, 1.8, 1.8);
setEffScaleKey( spep4+162, ctBaki, 1.8, 1.8);
setEffScaleKey( spep4+166, ctBaki, 6.0, 6.0);
setEffRotateKey( spep4+145, ctBaki, 20);
setEffRotateKey( spep4+146, ctBaki, 20);
setEffRotateKey( spep4+147, ctBaki, 0);
setEffRotateKey( spep4+148, ctBaki, 0);
setEffRotateKey( spep4+149, ctBaki, 10);
setEffRotateKey( spep4+150, ctBaki, 10);
setEffRotateKey( spep4+151, ctBaki, 0);
setEffRotateKey( spep4+152, ctBaki, 0);
setEffRotateKey( spep4+153, ctBaki, 15);
setEffRotateKey( spep4+154, ctBaki, 15);
setEffRotateKey( spep4+155, ctBaki, 10);
setEffRotateKey( spep4+156, ctBaki, 10);

--SE
playSe(spep4+22,1009);
playSe(spep4+34,1000);
playSe(spep4+44,1001);
playSe(spep4+54,1000);
playSe(spep4+72,1009);
playSe(spep4+84,1000);
playSe(spep4+102,1001);
playSe(spep4+110,1001);
playSe(spep4+116,1010);
playSe(spep4+150,1009);

--背景・ホワイトフェイド
entryFade( spep4+17, 0, 0, 7, fcolor_r, fcolor_g, fcolor_b, 180);
entryFade( spep4+135, 10, 0, 12, fcolor_r, fcolor_g, fcolor_b, 180);
entryFade( spep4+201, 6, 6, 6, fcolor_r, fcolor_g, fcolor_b, 255);

-------------------
--SP_04 = 151466;--連射(110F)
-------------------
spep5=spep4+210;

Rensya=entryEffectLife(spep5,SP_04,108,0x100,-1,0,0,0);

setEffMoveKey(spep5,Rensya,0,0,0);
setEffMoveKey(spep5+108,Rensya,0,0,0);
setEffScaleKey(spep5,Rensya,1.0,1.0);
setEffScaleKey(spep5+108,Rensya,1.0,1.0);
setEffAlphaKey(spep5,Rensya,255);
setEffAlphaKey(spep5+108,Rensya,255);
setEffRotateKey(spep5,Rensya,0);
setEffRotateKey(spep5+108,Rensya,0);

--流線
ryu5 = entryEffectLife(spep5,914,110,0x80,-1,0,0,0);   -- 流線
setEffScaleKey(spep5,ryu5,1.2,1.2);
setEffRotateKey(spep5,ryu5,0);

--集中線
shuchusen5 = entryEffectLife(spep5, 906, 110, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey(spep5, shuchusen5, 1.6, 1.6);
setEffRotateKey(spep5+110, shuchusen5, 0);

-- 書き文字エントリー
ctZubaba5a=entryEffectLife( spep5+9,10015,38,0x100,-1, 0, 0, 350);-- ズババ

setEffShake(spep5+14,ctZubaba5a,42,15);

setEffAlphaKey(spep5+14,ctZubaba5a,255);
setEffAlphaKey(spep5+56,ctZubaba5a,255);
setEffScaleKey(spep5+14,ctZubaba5a,2.5,2.5);
setEffScaleKey(spep5+56,ctZubaba5a,2.5,2.5);
setEffRotateKey(spep5+14,ctZubaba5a,345);
setEffRotateKey(spep5+56,ctZubaba5a,345);

-- 書き文字エントリー
ctZubaba5b=entryEffectLife(spep5+64,10015,40,0x100,-1,0,0,350); -- ズババ

setEffShake(spep5+70,ctZubaba5b,40,15)

setEffAlphaKey(spep5+64,ctZubaba5b,255);
setEffAlphaKey(spep5+110,ctZubaba5b,255);
setEffScaleKey(spep5+64,ctZubaba5b,2.5,2.5);
setEffScaleKey(spep5+110,ctZubaba5b,2.5,2.5);
setEffRotateKey(spep5+64,ctZubaba5b,20);
setEffRotateKey(spep5+110,ctZubaba5b,20);

--SE
playSe(spep5+14,1016);
playSe(spep5+24,1016);
playSe(spep5+44,1016);
playSe(spep5+54,1016);
playSe(spep5+70,1016);
playSe(spep5+80,1016);
playSe(spep5+90,1016);
playSe(spep5+100,1016);
playSe(spep5+110,1016);

--背景・ホワイトフェイド
entryFadeBg( spep5, 0, 110, 0, 0, 0, 0, 210);  -- 黒　背景
entryFade( spep5+60, 6, 3, 3, fcolor_r, fcolor_g, fcolor_b, 255);
entryFade( spep5+101, 6, 6, 6, fcolor_r, fcolor_g, fcolor_b, 255);

-------------------
--SP_05 = 151467;--被弾(80F)
-------------------
spep6=spep5+110;

--敵側の動き
changeAnime(spep6,1,108);
setDisp(spep6,1,1);
setDisp(spep6+75,1,0);
setShakeChara(spep6,1,78,20);
setScaleKey(spep6,1,1.0,1.0);
setScaleKey(spep6+78,1,1.0,1.0);
setMoveKey(spep6,1,50,0,0);
setMoveKey(spep6+78,1,50,0,0);
setRotateKey(spep6, 1, 0);
setRotateKey(spep6+78, 1, 0);

Hidan=entryEffectLife(spep6,SP_05,78,0x100,-1,0,0,0);

setEffMoveKey(spep6,Hidan,0,0,0);
setEffMoveKey(spep6+78,Hidan,0,0,0);
setEffScaleKey(spep6,Hidan,1.0,1.0);
setEffScaleKey(spep6+78,Hidan,1.0,1.0);
setEffAlphaKey(spep6,Hidan,255);
setEffAlphaKey(spep6+78,Hidan,255);
setEffRotateKey(spep6,Hidan,0);
setEffRotateKey(spep6+78,Hidan,0);

-- ** 集中線
shuchusen6 = entryEffectLife(spep6, 906, 80, 0x100,  -1, 0,  0,  0);-- 集中線

setEffScaleKey(spep6,shuchusen6,1.2,1.2);
setEffScaleKey(spep6+80,shuchusen6,1.2,1.2);
setEffRotateKey(spep6,shuchusen6,0);
setEffRotateKey(spep6+80,shuchusen6,0);
setEffAlphaKey(spep6,shuchusen6,255);
setEffAlphaKey(spep6+80,shuchusen6,255);

--SE
playSe(spep6+20,1011);
playSe(spep6+25,1011);
playSe(spep6+30,1011);
playSe(spep6+40,1011);
playSe(spep6+45,1011);
playSe(spep6+50,1011);
playSe(spep6+55,1011);
playSe(spep6+60,1011);
playSe(spep6+65,1011);
playSe(spep6+70,1011);
playSe(spep6+75,1011);
playSe(spep6+80,1011);

--背景・ホワイトフェイド
entryFadeBg( spep6, 0, 80, 0, 0, 0, 0, 210);  -- 黒　背景
entryFade( spep6+15, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255);
entryFade( spep6+71, 6, 6, 6, fcolor_r, fcolor_g, fcolor_b, 255);

-------------------
--SP_06 = 151468;--HIT(前)(100F)
--SP_07 = 151469;--HIT(後)(100F)
-------------------
spep7=spep6+80;

--敵側の動き
changeAnime(spep7,1,105);
setDisp(spep7,1,1);
setDisp(spep7+100,1,0);
setShakeChara(spep7,1,100,20);
setScaleKey(spep7,1,1.7,1.7);
setScaleKey(spep7+100,1,0.3,0.3);
setMoveKey(spep7,1,0,0,0);
setMoveKey(spep7+100,1,0,0,0);
setRotateKey(spep7,1,350);

Hitfront=entryEffectLife(spep7,SP_06,98,0x100,-1,0,0,0);

setEffMoveKey(spep7,Hitfront,0,0,0);
setEffMoveKey(spep7+98,Hitfront,0,0,0);
setEffScaleKey(spep7,Hitfront,1.5,1.5);
setEffScaleKey(spep7+98,Hitfront,1.0,1.0);
setEffAlphaKey(spep7,Hitfront,255);
setEffAlphaKey(spep7+98,Hitfront,255);
setEffRotateKey(spep7,Hitfront,0);
setEffRotateKey(spep7+98,Hitfront,0);

Hitbehind=entryEffectLife(spep7,SP_07,98,0x80,-1,0,0,0);

setEffMoveKey(spep7,Hitbehind,0,0,0);
setEffMoveKey(spep7+98,Hitbehind,0,0,0);
setEffScaleKey(spep7,Hitbehind,1.0,1.0);
setEffScaleKey(spep7+98,Hitbehind,1.0,1.0);
setEffAlphaKey(spep7,Hitbehind,255);
setEffAlphaKey(spep7+98,Hitbehind,255);
setEffRotateKey(spep7,Hitbehind,0);
setEffRotateKey(spep7+98,Hitbehind,0);

playSe( spep7+5, 1011);
playSe( spep7+10, 1011);
playSe( spep7+15, 1011);
playSe( spep7+20, 1011);
playSe( spep7+25, 1011);
playSe( spep7+30, 1011);
playSe( spep7+35, 1011);
playSe( spep7+40, 1011);
playSe( spep7+55, 1011);
playSe( spep7+60, 1011);
playSe( spep7+65, 1011);
playSe( spep7+70, 1011);
playSe( spep7+75, 1011);
playSe( spep7+80, 1011);
playSe( spep7+85, 1011);
playSe( spep7+90, 1011);
playSe( spep7+95, 1011);
playSe( spep7+100, 1011);

--背景・ホワイトフェイド
entryFadeBg( spep7, 0, 100, 0, 0, 0, 0, 210);  -- 黒　背景
entryFade( spep7+91, 6, 6, 6, fcolor_r, fcolor_g, fcolor_b, 255);

-------------------
--SP_08 = 151470;--爆発(140F)
-------------------
spep8=spep7+96;

Exp=entryEffect(spep8,SP_08,0x80,-1,0,0,0);

setEffMoveKey(spep8,Exp,0,0,0);
setEffMoveKey(spep8+140,Exp,0,0,0);
setEffScaleKey(spep8,Exp,1.0,1.0);
setEffScaleKey(spep8+140,Exp,1.0,1.0);
setEffAlphaKey(spep8,Exp,255);
setEffAlphaKey(spep8+140,Exp,255);
setEffRotateKey(spep8,Exp,0);
setEffRotateKey(spep8+140,Exp,0);

--集中線
shuchusen8 = entryEffectLife(spep8, 906, 110, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey(spep8, shuchusen8, 1.4, 1.4);
setEffRotateKey(spep8+110, shuchusen8, 0);

-- ** 音 ** --
playSe( spep8+6, SE_10);

-- ダメージ表示
dealDamage(spep8+36);
entryFade( spep8+120, 9,  10, 1, 8, 8, 8, 255);-- black fade
endPhase( spep8+130);

else


-------------------
--テンプレート
-------------------

setVisibleUI(0, 0);
setDisp( 0, 0, 1); --味方表示
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

-------------------
--SP_01 = 151463;--気溜(150F)
-------------------
spep1=0;

Kidame=entryEffectLife(spep1,SP_01x,148,0x80,-1,0,0,0);

setEffMoveKey(spep1,Kidame,0,0,0);
setEffMoveKey(spep1+148,Kidame,0,0,0);
setEffScaleKey(spep1,Kidame,1.0,1.0);
setEffScaleKey(spep1+148,Kidame,1.0,1.0);
setEffAlphaKey(spep1,Kidame,255);
setEffAlphaKey(spep1+148,Kidame,255);
setEffRotateKey(spep1,Kidame,0);
setEffRotateKey(spep1+148,Kidame,0);


-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep1+38, 906, 112, 0x100,  -1, 0,  0,  0); -- 集中線
setEffMoveKey( spep1+38, shuchusen1, 0, 0, 0);
setEffScaleKey( spep1+38, shuchusen1, 1.4, 1.4);
setEffAlphaKey( spep1+38, shuchusen1, 255);
setEffRotateKey( spep1+38, shuchusen1, 0);

-- 書き文字エントリー17
ctzuzun=entryEffectLife(spep1+38,10013,57,0x100,-1,0,200);

setEffShake(spep1+38,ctzuzun,39,15);

setEffMoveKey(spep1+38,ctzuzun,0,200,0);
setEffMoveKey(spep1+46,ctzuzun,0,350,0);
setEffMoveKey(spep1+78,ctzuzun,0,350,0);
setEffScaleKey(spep1+38,ctzuzun,0.8,0.8);
setEffScaleKey(spep1+46,ctzuzun,2.7,2.7);
setEffScaleKey(spep1+78,ctzuzun,2.7,2.7);
setEffAlphaKey(spep1+37,ctzuzun,255);
setEffAlphaKey(spep1+72,ctzuzun,255);
setEffAlphaKey(spep1+78,ctzuzun,0);
setEffRotateKey(spep1+38,ctzuzun,0);
setEffRotateKey(spep1+78,ctzuzun,0);

ctgogo=entryEffectLife(spep1+83,190006,69,0x100,-1,0,530);

setEffShake(spep1+83,ctgogo,69,15);

setEffMoveKey(spep1+83,ctgogo,0,530);
setEffMoveKey(spep1+149,ctgogo,0,530);
setEffScaleKey(spep1+83,ctgogo,-0.8,0.8);
setEffScaleKey(spep1+149,ctgogo,-0.8,0.8);
setEffAlphaKey(spep1+83,ctgogo,255);
setEffAlphaKey(spep1+149,ctgogo,255);
setEffRotateKey(spep1+83,ctgogo,0);
setEffRotateKey(spep1+149,ctgogo,0);

--speff=entryEffect(spep1+70,1504,0x100,-1,0,0,0);
--setEffReplaceTexture(speff,3,2);
--speff=entryEffect(spep1+70,1505,0x100,-1,0,0,0);
--setEffReplaceTexture(speff,4,5);

--SE
playSe(spep1+21, SE_02);
playSe(spep1+70, SE_04);

--背景・ホワイトフェイド
entryFadeBg( spep1+38, 0, 129, 0, 0, 0, 0, 210);  -- 黒　背景
entryFade( spep1+37, 0, 0, 10, fcolor_r, fcolor_g, fcolor_b, 180);
entryFade( spep1+141, 6, 6, 6, fcolor_r, fcolor_g, fcolor_b, 255);

-------------------
--カードカットイン(90F)
-------------------
spep2=spep1+150;

playSe( spep2, SE_05);

-- ** 集中線 ** --
shuchusen2 = entryEffectLife(spep2, 906, 90, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey( spep2, shuchusen2, 0, 0, 0);
setEffScaleKey( spep2, shuchusen2, 1.0, 1.0);
setEffAlphaKey( spep2, shuchusen2, 255);
setEffRotateKey( spep2, shuchusen2, 0);

-- カードカットイン
speff = entryEffect(  spep2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);-- カード差し替え
setEffReplaceTexture( speff, 5, 4);-- 技名テクスチャ差し替え

-- ** エフェクト等 ** --
entryFade(spep2+85, 3, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-------------------
--SP_02 = 151464;--突進(70F)
-------------------
spep3=spep2+90;

Tosshin=entryEffectLife(spep3,SP_02x,70,0x80,-1,0,0,0);

setEffMoveKey(spep3,Tosshin,0,0,0);
setEffMoveKey(spep3+70,Tosshin,0,0,0);
setEffScaleKey(spep3,Tosshin,1.0,1.0);
setEffScaleKey(spep3+70,Tosshin,1.0,1.0);
setEffAlphaKey(spep3,Tosshin,255);
setEffAlphaKey(spep3+70,Tosshin,255);
setEffRotateKey(spep3,Tosshin,0);
setEffRotateKey(spep3+70,Tosshin,0);

-- ** 集中線
shuchusen3 = entryEffectLife(spep3,906,70,0x100,-1,0,0,0);-- 集中線

setEffMoveKey(spep3,shuchusen3,0,0,0);
setEffMoveKey(spep3+70,shuchusen3,0,0,0);
setEffScaleKey(spep3,shuchusen3,1.0,1.0);
setEffScaleKey(spep3+70,shuchusen3,1.0,1.0);
setEffAlphaKey(spep3,shuchusen3,255);
setEffAlphaKey(spep3+70,shuchusen3,255);
setEffRotateKey(spep3,shuchusen3,0);
setEffRotateKey(spep3+70,shuchusen3,0);

-- 書き文字エントリー
ctZuo = entryEffectLife(spep3+2,10012,58,0x100,-1,0,120,290); -- ズオッ

setEffShake(spep3+2,ctZuo,65,15);

setEffMoveKey(spep3+2,ctZuo, 120, 290);
setEffMoveKey(spep3+6,ctZuo, 120, 350);
setEffAlphaKey(spep3+2,ctZuo,255);
setEffAlphaKey(spep3+54,ctZuo,255);
setEffAlphaKey(spep3+58,ctZuo,0);
setEffScaleKey(spep3+2,ctZuo,0.1,0.1);
setEffScaleKey(spep3+6,ctZuo,2.7,2.7);
setEffScaleKey(spep3+52,ctZuo,2.7,2.7);
setEffScaleKey(spep3+56,ctZuo,5.7,5.7);
setEffScaleKey(spep3+58,ctZuo,6.5,6.5);
setEffRotateKey(spep3+2,ctZuo,30);
setEffRotateKey(spep3+58,ctZuo,30);

--SE
playSe( spep3+2, 9);

--背景・ホワイトフェイド
entryFadeBg( spep3, 0, 280, 0, 0, 0, 0, 210);  -- 黒　背景
entryFade( spep3+61, 6, 6, 6, fcolor_r, fcolor_g, fcolor_b, 255);

-------------------
--回避
-------------------

if (_IS_DODGE_ == 1) then

SP_dodge = 330;

playSe( SP_dodge-12, 1042);

setMoveKey(SP_dodge,1,0,0);
setScaleKey(   SP_dodge,   1, 1.5, 1.5);
setRotateKey(   SP_dodge,   1, 0);

setMoveKey(SP_dodge+8,1,0,0);
setScaleKey(   SP_dodge+8,   1, 1.5, 1.5);
setRotateKey(   SP_dodge+8,   1, 0);

changeAnime(  SP_dodge+9,    1,  100);
setMoveKey(  SP_dodge+9,    1,  0,  0,   0);
setScaleKey( SP_dodge+9,    1,  1.0, 1.0);
setRotateKey(   SP_dodge+9,   1, 0);

setMoveKey(  SP_dodge+10,    1,  0,  0,   0);
setScaleKey( SP_dodge+10,    1,  1.0, 1.0);
setRotateKey(   SP_dodge+10,   1, 0);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);
entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景
pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase( SP_dodge+10);

do return end
else end

-------------------
--SP_03 = 151465;--連撃(210F)
-------------------
spep4=spep3+70;

setDisp(spep4,1,1);
setDisp(spep4+150,1,0);

changeAnime(spep4,1,100);
changeAnime(spep4+17,1,108);

setMoveKey(spep4,1,-300,-50,0);
setMoveKey(spep4+24,1,-240,-10,0);
setMoveKey(spep4+122,1,100,50,0);
setMoveKey(spep4+150,1,124,70,0);
setScaleKey(spep4,1,1.5,1.5);
setScaleKey(spep4+122,1,1.5,1.5);
setScaleKey(spep4+150,1,1.8,1.8); --1.8
setRotateKey(spep4, 1, 340); --340
setRotateKey(spep4+150, 1, 340); --340

Rengeki=entryEffectLife(spep4,SP_03x,208,0x100,-1,0,0,0);

setEffMoveKey(spep4,Rengeki,0,0,0);
setEffMoveKey(spep4+208,Rengeki,0,0,0);
setEffScaleKey(spep4,Rengeki,1.0,1.0);
setEffScaleKey(spep4+208,Rengeki,1.0,1.0);
setEffAlphaKey(spep4,Rengeki,255);
setEffAlphaKey(spep4+208,Rengeki,255);
setEffRotateKey(spep4,Rengeki,0);
setEffRotateKey(spep4+208,Rengeki,0);


--流線
ryu4 = entryEffectLife(spep4, 914, 210, 0x80,  -1, 0,  0,  0);   -- 流線

setEffScaleKey(spep4, ryu4, 1.4, 1.4);
setEffScaleKey(spep4+210, ryu4, 1.4, 1.4);
setEffRotateKey(spep4, ryu4, 345);
setEffRotateKey(spep4+210, ryu4, 345);

-- 書き文字エントリー
ctDogaga = entryEffectLife( spep4+17, 10017, 98, 0x100, -1, 0,0, 380); -- ドガ

setEffShake(spep4+17,ctDogaga,98,15);

setEffAlphaKey( spep4+17, ctDogaga, 255);
setEffAlphaKey( spep4+122, ctDogaga, 255);
setEffScaleKey( spep4+17, ctDogaga, 1.8, 1.8);
setEffScaleKey( spep4+18, ctDogaga, 3.0, 3.0);
setEffScaleKey( spep4+19, ctDogaga, 2.7, 2.7);
setEffScaleKey( spep4+122, ctDogaga, 2.7, 2.7);
setEffRotateKey( spep4+17, ctDogaga, 25);
setEffRotateKey( spep4+122, ctDogaga, 25);

-- ** 集中線
shuchusen4 = entryEffectLife(spep4,906,210,0x100,-1,0,0,0);-- 集中線

setEffMoveKey(spep4,shuchusen4,0,0,0);
setEffMoveKey(spep4+210,shuchusen4,0,0,0);
setEffScaleKey(spep4,shuchusen4,1.2,1.2);
setEffScaleKey(spep4+210,shuchusen4,1.2,1.2);
setEffAlphaKey(spep4,shuchusen4,255);
setEffAlphaKey(spep4+210,shuchusen4,255);
setEffRotateKey(spep4,shuchusen4,0);
setEffRotateKey(spep4+210,shuchusen3,0);

-- 書き文字エントリー
ctBaki = entryEffectLife( spep4+145, 10020, 26, 0x100, -1, 0, 200, 300); -- バキ

setEffShake( spep4+145, ctBaki, 26, 15);
setEffAlphaKey( spep4+145, ctBaki, 255);
setEffAlphaKey( spep4+162, ctBaki, 255);
setEffAlphaKey( spep4+165, ctBaki, 0);
setEffScaleKey( spep4+145, ctBaki, 1.8, 1.8);
setEffScaleKey( spep4+162, ctBaki, 1.8, 1.8);
setEffScaleKey( spep4+166, ctBaki, 6.0, 6.0);
setEffRotateKey( spep4+145, ctBaki, 20);
setEffRotateKey( spep4+146, ctBaki, 20);
setEffRotateKey( spep4+147, ctBaki, 0);
setEffRotateKey( spep4+148, ctBaki, 0);
setEffRotateKey( spep4+149, ctBaki, 10);
setEffRotateKey( spep4+150, ctBaki, 10);
setEffRotateKey( spep4+151, ctBaki, 0);
setEffRotateKey( spep4+152, ctBaki, 0);
setEffRotateKey( spep4+153, ctBaki, 15);
setEffRotateKey( spep4+154, ctBaki, 15);
setEffRotateKey( spep4+155, ctBaki, 10);
setEffRotateKey( spep4+156, ctBaki, 10);

--SE
playSe(spep4+22,1009);
playSe(spep4+34,1000);
playSe(spep4+44,1001);
playSe(spep4+54,1000);
playSe(spep4+72,1009);
playSe(spep4+84,1000);
playSe(spep4+102,1001);
playSe(spep4+110,1001);
playSe(spep4+116,1010);
playSe(spep4+150,1009);

--背景・ホワイトフェイド
entryFade( spep4+17, 0, 0, 7, fcolor_r, fcolor_g, fcolor_b, 180);
entryFade( spep4+135, 10, 0, 12, fcolor_r, fcolor_g, fcolor_b, 180);
entryFade( spep4+201, 6, 6, 6, fcolor_r, fcolor_g, fcolor_b, 255);

-------------------
--SP_04 = 151466;--連射(110F)
-------------------
spep5=spep4+210;

Rensya=entryEffectLife(spep5,SP_04x,108,0x100,-1,0,0,0);

setEffMoveKey(spep5,Rensya,0,0,0);
setEffMoveKey(spep5+108,Rensya,0,0,0);
setEffScaleKey(spep5,Rensya,1.0,1.0);
setEffScaleKey(spep5+108,Rensya,1.0,1.0);
setEffAlphaKey(spep5,Rensya,255);
setEffAlphaKey(spep5+108,Rensya,255);
setEffRotateKey(spep5,Rensya,0);
setEffRotateKey(spep5+108,Rensya,0);

--流線
ryu5 = entryEffectLife(spep5,914,110,0x80,-1,0,0,0);   -- 流線
setEffScaleKey(spep5,ryu5,1.2,1.2);
setEffRotateKey(spep5,ryu5,0);

--集中線
shuchusen5 = entryEffectLife(spep5, 906, 110, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey(spep5, shuchusen5, 1.6, 1.6);
setEffRotateKey(spep5+110, shuchusen5, 0);

-- 書き文字エントリー
ctZubaba5a=entryEffectLife( spep5+9,10015,38,0x100,-1, 0, 0, 350);-- ズババ

setEffShake(spep5+14,ctZubaba5a,42,15);

setEffAlphaKey(spep5+14,ctZubaba5a,255);
setEffAlphaKey(spep5+56,ctZubaba5a,255);
setEffScaleKey(spep5+14,ctZubaba5a,2.5,2.5);
setEffScaleKey(spep5+56,ctZubaba5a,2.5,2.5);
setEffRotateKey(spep5+14,ctZubaba5a,345);
setEffRotateKey(spep5+56,ctZubaba5a,345);

-- 書き文字エントリー
ctZubaba5b=entryEffectLife(spep5+64,10015,40,0x100,-1,0,0,350); -- ズババ

setEffShake(spep5+70,ctZubaba5b,40,15)

setEffAlphaKey(spep5+64,ctZubaba5b,255);
setEffAlphaKey(spep5+110,ctZubaba5b,255);
setEffScaleKey(spep5+64,ctZubaba5b,2.5,2.5);
setEffScaleKey(spep5+110,ctZubaba5b,2.5,2.5);
setEffRotateKey(spep5+64,ctZubaba5b,20);
setEffRotateKey(spep5+110,ctZubaba5b,20);

--SE
playSe(spep5+14,1016);
playSe(spep5+24,1016);
playSe(spep5+44,1016);
playSe(spep5+54,1016);
playSe(spep5+70,1016);
playSe(spep5+80,1016);
playSe(spep5+90,1016);
playSe(spep5+100,1016);
playSe(spep5+110,1016);

--背景・ホワイトフェイド
entryFadeBg( spep5, 0, 110, 0, 0, 0, 0, 210);  -- 黒　背景
entryFade( spep5+60, 6, 3, 3, fcolor_r, fcolor_g, fcolor_b, 255);
entryFade( spep5+101, 6, 6, 6, fcolor_r, fcolor_g, fcolor_b, 255);

-------------------
--SP_05 = 151467;--被弾(80F)
-------------------
spep6=spep5+110;

--敵側の動き
changeAnime(spep6,1,108);
setDisp(spep6,1,1);
setDisp(spep6+75,1,0);
setShakeChara(spep6,1,78,20);
setScaleKey(spep6,1,1.0,1.0);
setScaleKey(spep6+78,1,1.0,1.0);
setMoveKey(spep6,1,50,0,0);
setMoveKey(spep6+78,1,50,0,0);
setRotateKey(spep6, 1, 0);
setRotateKey(spep6+78, 1, 0);

Hidan=entryEffectLife(spep6,SP_05,78,0x100,-1,0,0,0);

setEffMoveKey(spep6,Hidan,0,0,0);
setEffMoveKey(spep6+78,Hidan,0,0,0);
setEffScaleKey(spep6,Hidan,1.0,1.0);
setEffScaleKey(spep6+78,Hidan,1.0,1.0);
setEffAlphaKey(spep6,Hidan,255);
setEffAlphaKey(spep6+78,Hidan,255);
setEffRotateKey(spep6,Hidan,0);
setEffRotateKey(spep6+78,Hidan,0);

-- ** 集中線
shuchusen6 = entryEffectLife(spep6, 906, 80, 0x100,  -1, 0,  0,  0);-- 集中線

setEffScaleKey(spep6,shuchusen6,1.2,1.2);
setEffScaleKey(spep6+80,shuchusen6,1.2,1.2);
setEffRotateKey(spep6,shuchusen6,0);
setEffRotateKey(spep6+80,shuchusen6,0);
setEffAlphaKey(spep6,shuchusen6,255);
setEffAlphaKey(spep6+80,shuchusen6,255);

--SE
playSe(spep6+20,1011);
playSe(spep6+25,1011);
playSe(spep6+30,1011);
playSe(spep6+40,1011);
playSe(spep6+45,1011);
playSe(spep6+50,1011);
playSe(spep6+55,1011);
playSe(spep6+60,1011);
playSe(spep6+65,1011);
playSe(spep6+70,1011);
playSe(spep6+75,1011);
playSe(spep6+80,1011);

--背景・ホワイトフェイド
entryFadeBg( spep6, 0, 80, 0, 0, 0, 0, 210);  -- 黒　背景
entryFade( spep6+15, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255);
entryFade( spep6+71, 6, 6, 6, fcolor_r, fcolor_g, fcolor_b, 255);

-------------------
--SP_06 = 151468;--HIT(前)(100F)
--SP_07 = 151469;--HIT(後)(100F)
-------------------
spep7=spep6+80;

--敵側の動き
changeAnime(spep7,1,105);
setDisp(spep7,1,1);
setDisp(spep7+100,1,0);
setShakeChara(spep7,1,100,20);
setScaleKey(spep7,1,1.7,1.7);
setScaleKey(spep7+100,1,0.3,0.3);
setMoveKey(spep7,1,0,0,0);
setMoveKey(spep7+100,1,0,0,0);
setRotateKey(spep7,1,350);

Hitfront=entryEffectLife(spep7,SP_06,98,0x100,-1,0,0,0);

setEffMoveKey(spep7,Hitfront,0,0,0);
setEffMoveKey(spep7+98,Hitfront,0,0,0);
setEffScaleKey(spep7,Hitfront,1.5,1.5);
setEffScaleKey(spep7+98,Hitfront,1.0,1.0);
setEffAlphaKey(spep7,Hitfront,255);
setEffAlphaKey(spep7+98,Hitfront,255);
setEffRotateKey(spep7,Hitfront,0);
setEffRotateKey(spep7+98,Hitfront,0);

Hitbehind=entryEffectLife(spep7,SP_07,98,0x80,-1,0,0,0);

setEffMoveKey(spep7,Hitbehind,0,0,0);
setEffMoveKey(spep7+98,Hitbehind,0,0,0);
setEffScaleKey(spep7,Hitbehind,1.0,1.0);
setEffScaleKey(spep7+98,Hitbehind,1.0,1.0);
setEffAlphaKey(spep7,Hitbehind,255);
setEffAlphaKey(spep7+98,Hitbehind,255);
setEffRotateKey(spep7,Hitbehind,0);
setEffRotateKey(spep7+98,Hitbehind,0);

playSe( spep7+5, 1011);
playSe( spep7+10, 1011);
playSe( spep7+15, 1011);
playSe( spep7+20, 1011);
playSe( spep7+25, 1011);
playSe( spep7+30, 1011);
playSe( spep7+35, 1011);
playSe( spep7+40, 1011);
playSe( spep7+55, 1011);
playSe( spep7+60, 1011);
playSe( spep7+65, 1011);
playSe( spep7+70, 1011);
playSe( spep7+75, 1011);
playSe( spep7+80, 1011);
playSe( spep7+85, 1011);
playSe( spep7+90, 1011);
playSe( spep7+95, 1011);
playSe( spep7+100, 1011);

--背景・ホワイトフェイド
entryFadeBg( spep7, 0, 100, 0, 0, 0, 0, 210);  -- 黒　背景
entryFade( spep7+91, 6, 6, 6, fcolor_r, fcolor_g, fcolor_b, 255);

-------------------
--SP_08 = 151470;--爆発(140F)
-------------------
spep8=spep7+96;

Exp=entryEffect(spep8,SP_08,0x80,-1,0,0,0);

setEffMoveKey(spep8,Exp,0,0,0);
setEffMoveKey(spep8+140,Exp,0,0,0);
setEffScaleKey(spep8,Exp,1.0,1.0);
setEffScaleKey(spep8+140,Exp,1.0,1.0);
setEffAlphaKey(spep8,Exp,255);
setEffAlphaKey(spep8+140,Exp,255);
setEffRotateKey(spep8,Exp,0);
setEffRotateKey(spep8+140,Exp,0);

--集中線
shuchusen8 = entryEffectLife(spep8, 906, 110, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey(spep8, shuchusen8, 1.4, 1.4);
setEffRotateKey(spep8+110, shuchusen8, 0);

-- ** 音 ** --
playSe( spep8+6, SE_10);

-- ダメージ表示
dealDamage(spep8+36);
entryFade( spep8+120, 9,  10, 1, 8, 8, 8, 255);-- black fade
endPhase( spep8+130);

end
