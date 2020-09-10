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
SP_01 = 151725;--気溜(110F)
SP_02 = 151726;--突進(70F)
SP_03 = 151727;--連撃(210F)
SP_04 = 151728;--放つ前(230F)
SP_05 = 151729;--放つ奥(230F)

--敵側
SP_01x = 151730;--気溜(120F)
SP_02x = 151731;--突進(70F)
SP_03x = 151732;--連撃(210F)
SP_04x = 151733;--放つ前(230F)
SP_05x = 151734;--放つ奥(230F)


multi_frm = 2;

-------------------
--テンプレート
-------------------

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

-------------------
--SP_01 気溜(110F)
-------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

spep1=0;

Kidame=entryEffectLife(spep1,SP_01,108,0x80,-1,0,0,0);

setEffMoveKey(spep1,Kidame,0,0,0);
setEffMoveKey(spep1+108,Kidame,0,0,0);
setEffScaleKey(spep1,Kidame,1.0,1.0);
setEffScaleKey(spep1+108,Kidame,1.0,1.0);
setEffAlphaKey(spep1,Kidame,255);
setEffAlphaKey(spep1+108,Kidame,255);
setEffRotateKey(spep1,Kidame,0);
setEffRotateKey(spep1+108,Kidame,0);


-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep1+38, 906, 70, 0x100,  -1, 0,  0,  0); -- 集中線
setEffMoveKey( spep1+38, shuchusen1, 0, 0, 0);
setEffScaleKey( spep1+38, shuchusen1, 1.4, 1.4);
setEffAlphaKey( spep1+38, shuchusen1, 255);
setEffRotateKey( spep1+38, shuchusen1, 0);

-- 書き文字エントリー17
ctzuzun=entryEffectLife(spep1+38,10013,67,0x100,-1,0,200);

setEffShake(spep1+38,ctzuzun,67,15);

setEffMoveKey(spep1+38,ctzuzun,0,200,0);
setEffMoveKey(spep1+46,ctzuzun,0,350,0);
setEffMoveKey(spep1+88,ctzuzun,0,350,0);
setEffScaleKey(spep1+38,ctzuzun,0.8,0.8);
setEffScaleKey(spep1+46,ctzuzun,2.7,2.7);
setEffScaleKey(spep1+88,ctzuzun,2.7,2.7);
setEffAlphaKey(spep1+37,ctzuzun,255);
setEffAlphaKey(spep1+82,ctzuzun,255);
setEffAlphaKey(spep1+88,ctzuzun,0);
setEffRotateKey(spep1+38,ctzuzun,0);
setEffRotateKey(spep1+88,ctzuzun,0);

--SE
playSe(spep1+14, 43);
playSe(spep1+38, SE_01);

--背景・ホワイトフェイド
entryFadeBg( spep1+38, 0, 70, 0, 0, 0, 0, 255);  -- 黒　背景
entryFade( spep1, 0, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255);
entryFade( spep1+37, 0, 0, 4, fcolor_r, fcolor_g, fcolor_b, 180);

-------------------
--カードカットイン(90F)
-------------------
spep2=spep1+110;

entryFade( spep2-6, 3, 4, 3, fcolor_r, fcolor_g, fcolor_b, 255);

playSe( spep2, SE_05);

-- ** 集中線 ** --
shuchusen2 = entryEffectLife(spep2, 906, 90, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey( spep2, shuchusen2, 0, 0, 0);
setEffScaleKey( spep2, shuchusen2, 1.6, 1.6);
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
--SP_02 = 突進(70F)
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
setEffAlphaKey(spep3+52,ctZuo,255);
setEffAlphaKey(spep3+58,ctZuo,0);
setEffScaleKey(spep3+2,ctZuo,0.1,0.1);
setEffScaleKey(spep3+6,ctZuo,2.7,2.7);
setEffScaleKey(spep3+52,ctZuo,2.7,2.7);
--setEffScaleKey(spep3+56,ctZuo,5.7,5.7);
setEffScaleKey(spep3+58,ctZuo,6.5,6.5);
setEffRotateKey(spep3+2,ctZuo,30);
setEffRotateKey(spep3+58,ctZuo,30);

--SE
playSe( spep3+2, 9);

--背景・ホワイトフェイド
entryFadeBg( spep3, 0, 70, 0, 0, 0, 0, 230);  -- 黒　背景
entryFade( spep3+64, 3, 4, 3, fcolor_r, fcolor_g, fcolor_b, 255);

-------------------
--SP_03 = --連撃(210F)
-------------------
spep4=spep3+70;

setDisp(spep4,1,1);
setDisp(spep4+150,1,0);

changeAnime(spep4,1,100);
setShakeChara(spep4,1,20,5);

changeAnime(spep4+20,1,108);
setShakeChara(spep4+20,1,190,10);

--敵のうごき

setMoveKey( spep4 + 0, 1, -875.3, -133 , 0 );
setMoveKey( spep4 + 2, 1, -743.3, -126.3 , 0 );
setMoveKey( spep4 + 4, 1, -611.2, -119.5 , 0 );
setMoveKey( spep4 + 6, 1, -479.2, -112.8 , 0 );
setMoveKey( spep4 + 8, 1, -347.1, -106 , 0 );
setMoveKey( spep4 + 10, 1, -328, -100.3 , 0 );
setMoveKey( spep4 + 12, 1, -308.9, -94.6 , 0 );
setMoveKey( spep4 + 14, 1, -289.7, -88.9 , 0 );
setMoveKey( spep4 + 16, 1, -270.6, -83.2 , 0 );
setMoveKey( spep4 + 18, 1, -251.5, -77.5 , 0 );
setMoveKey( spep4 + 20, 1, -263.5, -91.7 , 0 );
setMoveKey( spep4 + 22, 1, -262.4, -94.2 , 0 );
setMoveKey( spep4 + 24, 1, -253.3, -88.8 , 0 );
setMoveKey( spep4 + 26, 1, -250.3, -93.3 , 0 );
setMoveKey( spep4 + 28, 1, -243.2, -85.9 , 0 );
setMoveKey( spep4 + 30, 1, -240.1, -88.4 , 0 );
setMoveKey( spep4 + 32, 1, -233, -83 , 0 );
setMoveKey( spep4 + 34, 1, -233.9, -85.5 , 0 );
setMoveKey( spep4 + 36, 1, -222.8, -80 , 0 );
setMoveKey( spep4 + 38, 1, -219.7, -82.6 , 0 );
setMoveKey( spep4 + 40, 1, -212.7, -77.1 , 0 );
setMoveKey( spep4 + 42, 1, -212, -79.8 , 0 );
setMoveKey( spep4 + 44, 1, -203.4, -74.6 , 0 );
setMoveKey( spep4 + 46, 1, -200.7, -79.3 , 0 );
setMoveKey( spep4 + 48, 1, -194, -71.9 , 0 );
setMoveKey( spep4 + 50, 1, -190.9, -72.8 , 0 );
setMoveKey( spep4 + 52, 1, -183.8, -69.6 , 0 );
setMoveKey( spep4 + 54, 1, -180.6, -72.4 , 0 );
setMoveKey( spep4 + 56, 1, -173.5, -67.2 , 0 );
setMoveKey( spep4 + 58, 1, -170.2, -70 , 0 );
setMoveKey( spep4 + 60, 1, -163, -64.8 , 0 );
setMoveKey( spep4 + 62, 1, -161.7, -65.6 , 0 );
setMoveKey( spep4 + 64, 1, -152.5, -62.4 , 0 );
setMoveKey( spep4 + 66, 1, -149.1, -65.2 , 0 );
setMoveKey( spep4 + 68, 1, -141.8, -60 , 0 );
setMoveKey( spep4 + 70, 1, -138.5, -64.7 , 0 );
setMoveKey( spep4 + 72, 1, -139.1, -69.5 , 0 );
setMoveKey( spep4 + 74, 1, -129.7, -58.3 , 0 );
setMoveKey( spep4 + 76, 1, -124.2, -59 , 0 );
setMoveKey( spep4 + 78, 1, -116.8, -57.8 , 0 );
setMoveKey( spep4 + 80, 1, -121.3, -56.5 , 0 );
setMoveKey( spep4 + 82, 1, -105.8, -55.2 , 0 );
setMoveKey( spep4 + 84, 1, -102.3, -58 , 0 );
setMoveKey( spep4 + 86, 1, -94.7, -52.7 , 0 );
setMoveKey( spep4 + 88, 1, -93.6, -61.9 , 0 );
setMoveKey( spep4 + 90, 1, -85.5, -58.1 , 0 );
setMoveKey( spep4 + 92, 1, -84.9, -61.8 , 0 );
setMoveKey( spep4 + 94, 1, -74.2, -55.5 , 0 );
setMoveKey( spep4 + 96, 1, -71, -56.7 , 0 );
setMoveKey( spep4 + 98, 1, -63, -51.8 , 0 );
setMoveKey( spep4 + 100, 1, -62.4, -54.5 , 0 );
setMoveKey( spep4 + 102, 1, -51.8, -47.1 , 0 );
setMoveKey( spep4 + 104, 1, -48.6, -47.2 , 0 );
setMoveKey( spep4 + 106, 1, -40.5, -42.2 , 0 );
setMoveKey( spep4 + 108, 1, -39.8, -44.8 , 0 );
setMoveKey( spep4 + 110, 1, -29.1, -37.4 , 0 );
setMoveKey( spep4 + 112, 1, -25.8, -37.5 , 0 );
setMoveKey( spep4 + 114, 1, -17.6, -32.5 , 0 );
setMoveKey( spep4 + 116, 1, -16.8, -35 , 0 );
setMoveKey( spep4 + 118, 1, -6, -27.6 , 0 );
setMoveKey( spep4 + 120, 1, -2.7, -27.6 , 0 );
setMoveKey( spep4 + 122, 1, 5.8, -22.7 , 0 );
setMoveKey( spep4 + 124, 1, 6.8, -25.2 , 0 );
setMoveKey( spep4 + 126, 1, 17.9, -17.7 , 0 );
setMoveKey( spep4 + 128, 1, 21.5, -17.6 , 0 );
setMoveKey( spep4 + 130, 1, 30.3, -12.5 , 0 );
setMoveKey( spep4 + 132, 1, 31.7, -14.9 , 0 );
setMoveKey( spep4 + 134, 1, 43.2, -7.2 , 0 );
setMoveKey( spep4 + 136, 1, 47.2, -7 , 0 );
setMoveKey( spep4 + 138, 1, 56.4, -1.8 , 0 );
setMoveKey( spep4 + 140, 1, 58.1, -4 , 0 );
setMoveKey( spep4 + 142, 1, 69.9, 3.9 , 0 );
setMoveKey( spep4 + 144, 1, 74.3, 4.2 , 0 );
setMoveKey( spep4 + 146, 1, 83.9, 9.6 , 0 );
setMoveKey( spep4 + 148, 1, 86, 7.6 , 0 );
setMoveKey( spep4 + 150, 1, 515, 96.4 , 0 );
setMoveKey( spep4 + 152, 1, 841.2, 154.4 , 0 );
setMoveKey( spep4 + 154, 1, 1139.6, 211.3 , 0 );
setMoveKey( spep4 + 156, 1, 1397.6, 254.6 , 0 );
setMoveKey( spep4 + 158, 1, 1632.8, 301.7 , 0 );
setMoveKey( spep4 + 160, 1, 1825.2, 335.1 , 0 );
setMoveKey( spep4 + 162, 1, 1994.8, 367.4 , 0 );
setMoveKey( spep4 + 164, 1, 2121.6, 386.1 , 0 );

--敵のサイズ
setScaleKey( spep4 + 0, 1, 1.8, 1.8 );
setScaleKey( spep4 + 164, 1, 1.8, 1.8 );

--敵の角度

setRotateKey( spep4 + 0, 1, 0 );
setRotateKey( spep4 + 18, 1, 0 );
setRotateKey( spep4 + 20, 1, -6 );

--ここまで敵のやつ


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
playSe(spep4+150,1011);
playSe(spep4+190, 43);

--背景・ホワイトフェイド
entryFadeBg( spep4, 0, 210, 0, 0, 0, 0, 210);  -- 黒　背景

-------------------
--回避
-------------------

if (_IS_DODGE_ == 1) then

SP_dodge = 272;

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
--回避後
-------------------

entryFade( spep4+17, 0, 0, 7, fcolor_r, fcolor_g, fcolor_b, 180);
entryFade( spep4+135, 10, 0, 12, fcolor_r, fcolor_g, fcolor_b, 180);
entryFade( spep4+201, 6, 6, 6, fcolor_r, fcolor_g, fcolor_b, 255);

-------------------
--フィニッシュ280
-------------------
spep5=spep4+210;

--流線
ryu5 = entryEffectLife(spep5,914,98,0x80,-1,0,0,0);   -- 流線
setEffScaleKey(spep5,ryu5,1.5,1.2);
setEffRotateKey(spep5,ryu5,-45);

--集中線
shuchusen5 = entryEffectLife(spep5, 906, 280, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey(spep5, shuchusen5, 1.8, 1.8);
setEffScaleKey(spep5+99, shuchusen5, 1.8, 1.8);
setEffScaleKey(spep5+100, shuchusen5, 1.2, 1.2);
setEffScaleKey(spep5+280, shuchusen5, 1.2, 1.2);
setEffRotateKey(spep5, shuchusen5, 0);

--手前
Rensya=entryEffectLife(spep5,SP_04,170,0x100,-1,0,0,0);

setEffMoveKey(spep5,Rensya,0,0,0);
setEffMoveKey(spep5+170,Rensya,0,0,0);
setEffScaleKey(spep5,Rensya,1.0,1.0);
setEffScaleKey(spep5+170,Rensya,1.0,1.0);
setEffAlphaKey(spep5,Rensya,255);
setEffAlphaKey(spep5+170,Rensya,255);
setEffRotateKey(spep5,Rensya,0);
setEffRotateKey(spep5+170,Rensya,0);

--うしろ
Rensyaushiro=entryEffect(spep5,SP_05,0x80,-1,0,0,0);

setEffMoveKey(spep5,Rensyaushiro,0,0,0);
setEffScaleKey(spep5,Rensyaushiro,1.0,1.0);
setEffAlphaKey(spep5,Rensyaushiro,255);
setEffRotateKey(spep5,Rensyaushiro,0);


ctgogo=entryEffectLife(spep5+13,190006,69,0x100,-1,0,530);

setEffShake(spep5+13,ctgogo,69,15);

setEffMoveKey(spep5+13,ctgogo,0,530);
setEffMoveKey(spep5+79,ctgogo,0,530);
setEffScaleKey(spep5+13,ctgogo,0.8,0.8);
setEffScaleKey(spep5+79,ctgogo,0.8,0.8);
setEffAlphaKey(spep5+13,ctgogo,255);
setEffAlphaKey(spep5+79,ctgogo,255);
setEffRotateKey(spep5+13,ctgogo,0);
setEffRotateKey(spep5+79,ctgogo,0);

playSe(spep5+4, SE_04);


speff=entryEffect(spep5,1504,0x100,-1,0,0,0);
setEffReplaceTexture(speff,3,2);
speff=entryEffect(spep5,1505,0x100,-1,0,0,0);
setEffReplaceTexture(speff,4,5);


-- 書き文字エントリー
ctZuo = entryEffectLife(spep5+102,10012,48,0x100,-1,0,120,290); -- ズオッ

setEffShake(spep5+102,ctZuo,48,15);

setEffMoveKey(spep5+102,ctZuo, 120, 290);
setEffMoveKey(spep5+106,ctZuo, 120, 350);
setEffAlphaKey(spep5+102,ctZuo,255);
setEffAlphaKey(spep5+142,ctZuo,255);
setEffAlphaKey(spep5+148,ctZuo,0);
setEffScaleKey(spep5+102,ctZuo,0.1,0.1);
setEffScaleKey(spep5+106,ctZuo,2.7,2.7);
setEffScaleKey(spep5+142,ctZuo,2.7,2.7);
setEffScaleKey(spep5+146,ctZuo,5.7,5.7);
setEffScaleKey(spep5+148,ctZuo,6.5,6.5);
setEffRotateKey(spep5+102,ctZuo,30);
setEffRotateKey(spep5+148,ctZuo,30);



--背景・ホワイトフェイド
entryFadeBg( spep5, 0, 98, 0, 0, 0, 0, 210);  -- 黒　背景
entryFadeBg( spep5+98, 0, 182, 0, 0, 0, 0, 255);  -- 黒　背景
entryFade( spep5+92, 4, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255);

--敵側の動き
setDisp( spep5, 1, 0 );
setDisp( spep5 + 76, 1, 1 );
changeAnime( spep5 + 76, 1, 106 );
setShakeChara( spep5 + 76, 1, 24, 10 );
setShakeChara( spep5 + 100, 1, 50, 20 );
setDisp( spep5 + 146, 1, 0 );

setMoveKey( spep5 + 76, 1, -1606.5, -1236.2 , 0 );
setMoveKey( spep5 + 78, 1, -1495.6, -1149.8 , 0 );
setMoveKey( spep5 + 80, 1, -1339.4, -1029.5 , 0 );
setMoveKey( spep5 + 82, 1, -1157.8, -891.4 , 0 );
setMoveKey( spep5 + 84, 1, -938.8, -719.4 , 0 );
setMoveKey( spep5 + 86, 1, -690.4, -531.6 , 0 );
setMoveKey( spep5 + 88, 1, -404.6, -306 , 0 );
setMoveKey( spep5 + 90, 1, -329.2, -255.5 , 0 );
setMoveKey( spep5 + 92, 1, -255.1, -203.4 , 0 );
setMoveKey( spep5 + 94, 1, -196.4, -165.6 , 0 );
setMoveKey( spep5 + 96, 1, -143, -126.3 , 0 );
setMoveKey( spep5 + 98, 1, -104.9, -101.5 , 0 );
setMoveKey( spep5 + 100, 1, -68.2, -75 , 0 );
setMoveKey( spep5 + 102, 1, -46.9, -63 , 0 );
setMoveKey( spep5 + 104, 1, -30.8, -49.3 , 0 );
setMoveKey( spep5 + 106, 1, -28.2, -50.1 , 0 );
setMoveKey( spep5 + 108, 1, -23.8, -42.9 , 0 );
setMoveKey( spep5 + 110, 1, -25.4, -43.7 , 0 );
setMoveKey( spep5 + 112, 1, -19.1, -36.5 , 0 );
setMoveKey( spep5 + 114, 1, -18.7, -35.3 , 0 );
setMoveKey( spep5 + 116, 1, -14.3, -30.1 , 0 );
setMoveKey( spep5 + 118, 1, -14, -32.9 , 0 );
setMoveKey( spep5 + 120, 1, -9.6, -23.7 , 0 );
setMoveKey( spep5 + 122, 1, -11.3, -22.5 , 0 );
setMoveKey( spep5 + 124, 1, -4.9, -17.2 , 0 );
setMoveKey( spep5 + 126, 1, -4.5, -18 , 0 );
setMoveKey( spep5 + 128, 1, -0.2, -10.8 , 0 );
setMoveKey( spep5 + 130, 1, 0.2, -11.6 , 0 );
setMoveKey( spep5 + 132, 1, 3.1, -6.6 , 0 );
setMoveKey( spep5 + 134, 1, 0.1, -9.7 , 0 );
setMoveKey( spep5 + 136, 1, 5, -4.7 , 0 );
setMoveKey( spep5 + 138, 1, 4, -9.8 , 0 );
setMoveKey( spep5 + 140, 1, 6.9, -2.8 , 0 );
setMoveKey( spep5 + 142, 1, 7.9, -5.9 , 0 );
setMoveKey( spep5 + 144, 1, 8.9, -1 , 0 );
setMoveKey( spep5 + 146, 1, 7.9, -4.1 , 0 );

setScaleKey( spep5 + 76, 1, 5, 5 );
setScaleKey( spep5 + 78, 1, 4.68, 4.68 );
setScaleKey( spep5 + 80, 1, 4.25, 4.25 );
setScaleKey( spep5 + 82, 1, 3.74, 3.74 );
setScaleKey( spep5 + 84, 1, 3.13, 3.13 );
setScaleKey( spep5 + 86, 1, 2.43, 2.43 );
setScaleKey( spep5 + 88, 1, 1.63, 1.63 );
setScaleKey( spep5 + 90, 1, 1.49, 1.49 );
setScaleKey( spep5 + 92, 1, 1.37, 1.37 );
setScaleKey( spep5 + 94, 1, 1.27, 1.27 );
setScaleKey( spep5 + 96, 1, 1.18, 1.18 );
setScaleKey( spep5 + 98, 1, 1.11, 1.11 );
setScaleKey( spep5 + 100, 1, 1.05, 1.05 );
setScaleKey( spep5 + 102, 1, 1.01, 1.01 );
setScaleKey( spep5 + 104, 1, 0.99, 0.99 );
setScaleKey( spep5 + 106, 1, 0.98, 0.98 );
setScaleKey( spep5 + 108, 1, 0.98, 0.98 );
setScaleKey( spep5 + 110, 1, 0.97, 0.97 );
setScaleKey( spep5 + 112, 1, 0.97, 0.97 );
setScaleKey( spep5 + 114, 1, 0.96, 0.96 );
setScaleKey( spep5 + 116, 1, 0.96, 0.96 );
setScaleKey( spep5 + 118, 1, 0.95, 0.95 );
setScaleKey( spep5 + 120, 1, 0.95, 0.95 );
setScaleKey( spep5 + 122, 1, 0.94, 0.94 );
setScaleKey( spep5 + 124, 1, 0.94, 0.94 );
setScaleKey( spep5 + 126, 1, 0.93, 0.93 );
setScaleKey( spep5 + 128, 1, 0.93, 0.93 );
setScaleKey( spep5 + 130, 1, 0.92, 0.92 );
setScaleKey( spep5 + 132, 1, 0.81, 0.81 );
setScaleKey( spep5 + 134, 1, 0.7, 0.7 );
setScaleKey( spep5 + 136, 1, 0.59, 0.59 );
setScaleKey( spep5 + 138, 1, 0.49, 0.49 );
setScaleKey( spep5 + 140, 1, 0.38, 0.38 );
setScaleKey( spep5 + 142, 1, 0.27, 0.27 );
setScaleKey( spep5 + 144, 1, 0.16, 0.16 );
setScaleKey( spep5 + 146, 1, 0.05, 0.05 );

setRotateKey( spep5 + 76, 1, -20.9 );
setRotateKey( spep5 + 78, 1, -20.5 );
setRotateKey( spep5 + 80, 1, -20.1 );
setRotateKey( spep5 + 82, 1, -19.5 );
setRotateKey( spep5 + 84, 1, -18.9 );
setRotateKey( spep5 + 86, 1, -18.1 );
setRotateKey( spep5 + 88, 1, -17.3 );
setRotateKey( spep5 + 90, 1, -16.7 );
setRotateKey( spep5 + 92, 1, -16.1 );
setRotateKey( spep5 + 94, 1, -15.6 );
setRotateKey( spep5 + 96, 1, -15.2 );
setRotateKey( spep5 + 98, 1, -14.9 );
setRotateKey( spep5 + 100, 1, -14.6 );
setRotateKey( spep5 + 102, 1, -14.4 );
setRotateKey( spep5 + 104, 1, -14.3 );
setRotateKey( spep5 + 106, 1, -14.3 );
setRotateKey( spep5 + 108, 1, -14 );
setRotateKey( spep5 + 110, 1, -13.8 );
setRotateKey( spep5 + 112, 1, -13.5 );
setRotateKey( spep5 + 114, 1, -13.2 );
setRotateKey( spep5 + 116, 1, -13 );
setRotateKey( spep5 + 118, 1, -12.7 );
setRotateKey( spep5 + 120, 1, -12.4 );
setRotateKey( spep5 + 122, 1, -12.2 );
setRotateKey( spep5 + 124, 1, -11.9 );
setRotateKey( spep5 + 126, 1, -11.6 );
setRotateKey( spep5 + 128, 1, -11.4 );
setRotateKey( spep5 + 130, 1, -11.1 );
setRotateKey( spep5 + 132, 1, -11.3 );
setRotateKey( spep5 + 134, 1, -11.5 );
setRotateKey( spep5 + 136, 1, -11.7 );
setRotateKey( spep5 + 138, 1, -11.9 );
setRotateKey( spep5 + 140, 1, -12.1 );
setRotateKey( spep5 + 142, 1, -12.3 );
setRotateKey( spep5 + 144, 1, -12.5 );
setRotateKey( spep5 + 146, 1, -12.7 );



-- ** 音 ** --
playSe( spep5+30, SE_01);
--playSe( spep5+102, SE_06);
playSe( spep5+102, SE_07);
--playSe( spep5+140, SE_07);
playSe( spep5+140, SE_09);
--playSe( spep5+170, SE_09);
playSe( spep5+170, SE_10);

-- ダメージ表示
dealDamage(spep5+140);
--entryFade( spep5, 9,  10, 1, 8, 8, 8, 255);-- black fade
endPhase( spep5+260);

else

-------------------
--敵側の攻撃
-------------------
--SP_01 気溜(110F)
-------------------

spep1=0;

Kidame=entryEffectLife(spep1,SP_01x,108,0x80,-1,0,0,0);

setEffMoveKey(spep1,Kidame,0,0,0);
setEffMoveKey(spep1+108,Kidame,0,0,0);
setEffScaleKey(spep1,Kidame,1.0,1.0);
setEffScaleKey(spep1+108,Kidame,1.0,1.0);
setEffAlphaKey(spep1,Kidame,255);
setEffAlphaKey(spep1+108,Kidame,255);
setEffRotateKey(spep1,Kidame,0);
setEffRotateKey(spep1+108,Kidame,0);


-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep1+38, 906, 70, 0x100,  -1, 0,  0,  0); -- 集中線
setEffMoveKey( spep1+38, shuchusen1, 0, 0, 0);
setEffScaleKey( spep1+38, shuchusen1, 1.4, 1.4);
setEffAlphaKey( spep1+38, shuchusen1, 255);
setEffRotateKey( spep1+38, shuchusen1, 0);

-- 書き文字エントリー17
ctzuzun=entryEffectLife(spep1+38,10013,67,0x100,-1,0,200);

setEffShake(spep1+38,ctzuzun,67,15);

setEffMoveKey(spep1+38,ctzuzun,0,200,0);
setEffMoveKey(spep1+46,ctzuzun,0,350,0);
setEffMoveKey(spep1+88,ctzuzun,0,350,0);
setEffScaleKey(spep1+38,ctzuzun,0.8,0.8);
setEffScaleKey(spep1+46,ctzuzun,2.7,2.7);
setEffScaleKey(spep1+88,ctzuzun,2.7,2.7);
setEffAlphaKey(spep1+37,ctzuzun,255);
setEffAlphaKey(spep1+82,ctzuzun,255);
setEffAlphaKey(spep1+88,ctzuzun,0);
setEffRotateKey(spep1+38,ctzuzun,0);
setEffRotateKey(spep1+88,ctzuzun,0);

--SE
playSe(spep1+14, 43);
playSe(spep1+38, SE_01);

--背景・ホワイトフェイド
entryFadeBg( spep1+38, 0, 70, 0, 0, 0, 0, 255);  -- 黒　背景
entryFade( spep1, 0, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255);
entryFade( spep1+37, 0, 0, 4, fcolor_r, fcolor_g, fcolor_b, 180);

-------------------
--カードカットイン(90F)
-------------------
spep2=spep1+110;

entryFade( spep2-6, 3, 4, 3, fcolor_r, fcolor_g, fcolor_b, 255);

playSe( spep2, SE_05);

-- ** 集中線 ** --
shuchusen2 = entryEffectLife(spep2, 906, 90, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey( spep2, shuchusen2, 0, 0, 0);
setEffScaleKey( spep2, shuchusen2, 1.6, 1.6);
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
--SP_02 = 突進(70F)
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
setEffAlphaKey(spep3+52,ctZuo,255);
setEffAlphaKey(spep3+58,ctZuo,0);
setEffScaleKey(spep3+2,ctZuo,0.1,0.1);
setEffScaleKey(spep3+6,ctZuo,2.7,2.7);
setEffScaleKey(spep3+52,ctZuo,2.7,2.7);
--setEffScaleKey(spep3+56,ctZuo,5.7,5.7);
setEffScaleKey(spep3+58,ctZuo,6.5,6.5);
setEffRotateKey(spep3+2,ctZuo,0);
setEffRotateKey(spep3+58,ctZuo,0);

--SE
playSe( spep3+2, 9);

--背景・ホワイトフェイド
entryFadeBg( spep3, 0, 70, 0, 0, 0, 0, 230);  -- 黒　背景
entryFade( spep3+64, 3, 4, 3, fcolor_r, fcolor_g, fcolor_b, 255);

-------------------
--SP_03 = --連撃(210F)
-------------------
spep4=spep3+70;

setDisp(spep4,1,1);
setDisp(spep4+150,1,0);

changeAnime(spep4,1,100);
setShakeChara(spep4,1,20,5);

changeAnime(spep4+20,1,108);
setShakeChara(spep4+20,1,190,10);

--敵のうごき

setMoveKey( spep4 + 0, 1, -875.3, -133 , 0 );
setMoveKey( spep4 + 2, 1, -743.3, -126.3 , 0 );
setMoveKey( spep4 + 4, 1, -611.2, -119.5 , 0 );
setMoveKey( spep4 + 6, 1, -479.2, -112.8 , 0 );
setMoveKey( spep4 + 8, 1, -347.1, -106 , 0 );
setMoveKey( spep4 + 10, 1, -328, -100.3 , 0 );
setMoveKey( spep4 + 12, 1, -308.9, -94.6 , 0 );
setMoveKey( spep4 + 14, 1, -289.7, -88.9 , 0 );
setMoveKey( spep4 + 16, 1, -270.6, -83.2 , 0 );
setMoveKey( spep4 + 18, 1, -251.5, -77.5 , 0 );
setMoveKey( spep4 + 20, 1, -263.5, -91.7 , 0 );
setMoveKey( spep4 + 22, 1, -262.4, -94.2 , 0 );
setMoveKey( spep4 + 24, 1, -253.3, -88.8 , 0 );
setMoveKey( spep4 + 26, 1, -250.3, -93.3 , 0 );
setMoveKey( spep4 + 28, 1, -243.2, -85.9 , 0 );
setMoveKey( spep4 + 30, 1, -240.1, -88.4 , 0 );
setMoveKey( spep4 + 32, 1, -233, -83 , 0 );
setMoveKey( spep4 + 34, 1, -233.9, -85.5 , 0 );
setMoveKey( spep4 + 36, 1, -222.8, -80 , 0 );
setMoveKey( spep4 + 38, 1, -219.7, -82.6 , 0 );
setMoveKey( spep4 + 40, 1, -212.7, -77.1 , 0 );
setMoveKey( spep4 + 42, 1, -212, -79.8 , 0 );
setMoveKey( spep4 + 44, 1, -203.4, -74.6 , 0 );
setMoveKey( spep4 + 46, 1, -200.7, -79.3 , 0 );
setMoveKey( spep4 + 48, 1, -194, -71.9 , 0 );
setMoveKey( spep4 + 50, 1, -190.9, -72.8 , 0 );
setMoveKey( spep4 + 52, 1, -183.8, -69.6 , 0 );
setMoveKey( spep4 + 54, 1, -180.6, -72.4 , 0 );
setMoveKey( spep4 + 56, 1, -173.5, -67.2 , 0 );
setMoveKey( spep4 + 58, 1, -170.2, -70 , 0 );
setMoveKey( spep4 + 60, 1, -163, -64.8 , 0 );
setMoveKey( spep4 + 62, 1, -161.7, -65.6 , 0 );
setMoveKey( spep4 + 64, 1, -152.5, -62.4 , 0 );
setMoveKey( spep4 + 66, 1, -149.1, -65.2 , 0 );
setMoveKey( spep4 + 68, 1, -141.8, -60 , 0 );
setMoveKey( spep4 + 70, 1, -138.5, -64.7 , 0 );
setMoveKey( spep4 + 72, 1, -139.1, -69.5 , 0 );
setMoveKey( spep4 + 74, 1, -129.7, -58.3 , 0 );
setMoveKey( spep4 + 76, 1, -124.2, -59 , 0 );
setMoveKey( spep4 + 78, 1, -116.8, -57.8 , 0 );
setMoveKey( spep4 + 80, 1, -121.3, -56.5 , 0 );
setMoveKey( spep4 + 82, 1, -105.8, -55.2 , 0 );
setMoveKey( spep4 + 84, 1, -102.3, -58 , 0 );
setMoveKey( spep4 + 86, 1, -94.7, -52.7 , 0 );
setMoveKey( spep4 + 88, 1, -93.6, -61.9 , 0 );
setMoveKey( spep4 + 90, 1, -85.5, -58.1 , 0 );
setMoveKey( spep4 + 92, 1, -84.9, -61.8 , 0 );
setMoveKey( spep4 + 94, 1, -74.2, -55.5 , 0 );
setMoveKey( spep4 + 96, 1, -71, -56.7 , 0 );
setMoveKey( spep4 + 98, 1, -63, -51.8 , 0 );
setMoveKey( spep4 + 100, 1, -62.4, -54.5 , 0 );
setMoveKey( spep4 + 102, 1, -51.8, -47.1 , 0 );
setMoveKey( spep4 + 104, 1, -48.6, -47.2 , 0 );
setMoveKey( spep4 + 106, 1, -40.5, -42.2 , 0 );
setMoveKey( spep4 + 108, 1, -39.8, -44.8 , 0 );
setMoveKey( spep4 + 110, 1, -29.1, -37.4 , 0 );
setMoveKey( spep4 + 112, 1, -25.8, -37.5 , 0 );
setMoveKey( spep4 + 114, 1, -17.6, -32.5 , 0 );
setMoveKey( spep4 + 116, 1, -16.8, -35 , 0 );
setMoveKey( spep4 + 118, 1, -6, -27.6 , 0 );
setMoveKey( spep4 + 120, 1, -2.7, -27.6 , 0 );
setMoveKey( spep4 + 122, 1, 5.8, -22.7 , 0 );
setMoveKey( spep4 + 124, 1, 6.8, -25.2 , 0 );
setMoveKey( spep4 + 126, 1, 17.9, -17.7 , 0 );
setMoveKey( spep4 + 128, 1, 21.5, -17.6 , 0 );
setMoveKey( spep4 + 130, 1, 30.3, -12.5 , 0 );
setMoveKey( spep4 + 132, 1, 31.7, -14.9 , 0 );
setMoveKey( spep4 + 134, 1, 43.2, -7.2 , 0 );
setMoveKey( spep4 + 136, 1, 47.2, -7 , 0 );
setMoveKey( spep4 + 138, 1, 56.4, -1.8 , 0 );
setMoveKey( spep4 + 140, 1, 58.1, -4 , 0 );
setMoveKey( spep4 + 142, 1, 69.9, 3.9 , 0 );
setMoveKey( spep4 + 144, 1, 74.3, 4.2 , 0 );
setMoveKey( spep4 + 146, 1, 83.9, 9.6 , 0 );
setMoveKey( spep4 + 148, 1, 86, 7.6 , 0 );
setMoveKey( spep4 + 150, 1, 515, 96.4 , 0 );
setMoveKey( spep4 + 152, 1, 841.2, 154.4 , 0 );
setMoveKey( spep4 + 154, 1, 1139.6, 211.3 , 0 );
setMoveKey( spep4 + 156, 1, 1397.6, 254.6 , 0 );
setMoveKey( spep4 + 158, 1, 1632.8, 301.7 , 0 );
setMoveKey( spep4 + 160, 1, 1825.2, 335.1 , 0 );
setMoveKey( spep4 + 162, 1, 1994.8, 367.4 , 0 );
setMoveKey( spep4 + 164, 1, 2121.6, 386.1 , 0 );

--敵のサイズ
setScaleKey( spep4 + 0, 1, 1.8, 1.8 );
setScaleKey( spep4 + 164, 1, 1.8, 1.8 );

--敵の角度

setRotateKey( spep4 + 0, 1, 0 );
setRotateKey( spep4 + 18, 1, 0 );
setRotateKey( spep4 + 20, 1, -6 );

--ここまで敵のやつ


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
setEffRotateKey( spep4+17, ctDogaga, -25);
setEffRotateKey( spep4+122, ctDogaga, -25);

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
playSe(spep4+150,1011);
playSe(spep4+190, 43);

--背景・ホワイトフェイド
entryFadeBg( spep4, 0, 210, 0, 0, 0, 0, 210);  -- 黒　背景

-------------------
--回避
-------------------

if (_IS_DODGE_ == 1) then

SP_dodge = 272;

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
--回避後
-------------------

entryFade( spep4+17, 0, 0, 7, fcolor_r, fcolor_g, fcolor_b, 180);
entryFade( spep4+135, 10, 0, 12, fcolor_r, fcolor_g, fcolor_b, 180);
entryFade( spep4+201, 6, 6, 6, fcolor_r, fcolor_g, fcolor_b, 255);

-------------------
--フィニッシュ280
-------------------
spep5=spep4+210;

--流線
ryu5 = entryEffectLife(spep5,914,98,0x80,-1,0,0,0);   -- 流線
setEffScaleKey(spep5,ryu5,1.5,1.2);
setEffRotateKey(spep5,ryu5,-45);

--集中線
shuchusen5 = entryEffectLife(spep5, 906, 280, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey(spep5, shuchusen5, 1.8, 1.8);
setEffScaleKey(spep5+99, shuchusen5, 1.8, 1.8);
setEffScaleKey(spep5+100, shuchusen5, 1.2, 1.2);
setEffScaleKey(spep5+280, shuchusen5, 1.2, 1.2);
setEffRotateKey(spep5, shuchusen5, 0);

--手前
Rensya=entryEffectLife(spep5,SP_04x,170,0x100,-1,0,0,0);

setEffMoveKey(spep5,Rensya,0,0,0);
setEffMoveKey(spep5+170,Rensya,0,0,0);
setEffScaleKey(spep5,Rensya,1.0,1.0);
setEffScaleKey(spep5+170,Rensya,1.0,1.0);
setEffAlphaKey(spep5,Rensya,255);
setEffAlphaKey(spep5+170,Rensya,255);
setEffRotateKey(spep5,Rensya,0);
setEffRotateKey(spep5+170,Rensya,0);

--うしろ
Rensyaushiro=entryEffect(spep5,SP_05x,0x80,-1,0,0,0);

setEffMoveKey(spep5,Rensyaushiro,0,0,0);
setEffScaleKey(spep5,Rensyaushiro,1.0,1.0);
setEffAlphaKey(spep5,Rensyaushiro,255);
setEffRotateKey(spep5,Rensyaushiro,0);


ctgogo=entryEffectLife(spep5+13,190006,69,0x100,-1,0,530);

setEffShake(spep5+13,ctgogo,69,15);

setEffMoveKey(spep5+13,ctgogo,0,530);
setEffMoveKey(spep5+79,ctgogo,0,530);
setEffScaleKey(spep5+13,ctgogo,-0.8,0.8);
setEffScaleKey(spep5+79,ctgogo,-0.8,0.8);
setEffAlphaKey(spep5+13,ctgogo,255);
setEffAlphaKey(spep5+79,ctgogo,255);
setEffRotateKey(spep5+13,ctgogo,0);
setEffRotateKey(spep5+79,ctgogo,0);

playSe(spep5+4, SE_04);


--speff=entryEffect(spep5,1504,0x100,-1,0,0,0);
--setEffReplaceTexture(speff,3,2);
--speff=entryEffect(spep5,1505,0x100,-1,0,0,0);
--setEffReplaceTexture(speff,4,5);


-- 書き文字エントリー
ctZuo = entryEffectLife(spep5+102,10012,48,0x100,-1,0,120,290); -- ズオッ

setEffShake(spep5+102,ctZuo,48,15);

setEffMoveKey(spep5+102,ctZuo, 120, 290);
setEffMoveKey(spep5+106,ctZuo, 120, 350);
setEffAlphaKey(spep5+102,ctZuo,255);
setEffAlphaKey(spep5+142,ctZuo,255);
setEffAlphaKey(spep5+148,ctZuo,0);
setEffScaleKey(spep5+102,ctZuo,0.1,0.1);
setEffScaleKey(spep5+106,ctZuo,2.7,2.7);
setEffScaleKey(spep5+142,ctZuo,2.7,2.7);
setEffScaleKey(spep5+146,ctZuo,5.7,5.7);
setEffScaleKey(spep5+148,ctZuo,6.5,6.5);
setEffRotateKey(spep5+102,ctZuo,0);
setEffRotateKey(spep5+148,ctZuo,0);



--背景・ホワイトフェイド
entryFadeBg( spep5, 0, 98, 0, 0, 0, 0, 210);  -- 黒　背景
entryFadeBg( spep5+98, 0, 182, 0, 0, 0, 0, 255);  -- 黒　背景
entryFade( spep5+92, 4, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255);

--敵側の動き
setDisp( spep5, 1, 0 );
setDisp( spep5 + 76, 1, 1 );
changeAnime( spep5 + 76, 1, 106 );
setShakeChara( spep5 + 76, 1, 24, 10 );
setShakeChara( spep5 + 100, 1, 50, 20 );
setDisp( spep5 + 146, 1, 0 );

setMoveKey( spep5 + 76, 1, -1606.5, -1236.2 , 0 );
setMoveKey( spep5 + 78, 1, -1495.6, -1149.8 , 0 );
setMoveKey( spep5 + 80, 1, -1339.4, -1029.5 , 0 );
setMoveKey( spep5 + 82, 1, -1157.8, -891.4 , 0 );
setMoveKey( spep5 + 84, 1, -938.8, -719.4 , 0 );
setMoveKey( spep5 + 86, 1, -690.4, -531.6 , 0 );
setMoveKey( spep5 + 88, 1, -404.6, -306 , 0 );
setMoveKey( spep5 + 90, 1, -329.2, -255.5 , 0 );
setMoveKey( spep5 + 92, 1, -255.1, -203.4 , 0 );
setMoveKey( spep5 + 94, 1, -196.4, -165.6 , 0 );
setMoveKey( spep5 + 96, 1, -143, -126.3 , 0 );
setMoveKey( spep5 + 98, 1, -104.9, -101.5 , 0 );
setMoveKey( spep5 + 100, 1, -68.2, -75 , 0 );
setMoveKey( spep5 + 102, 1, -46.9, -63 , 0 );
setMoveKey( spep5 + 104, 1, -30.8, -49.3 , 0 );
setMoveKey( spep5 + 106, 1, -28.2, -50.1 , 0 );
setMoveKey( spep5 + 108, 1, -23.8, -42.9 , 0 );
setMoveKey( spep5 + 110, 1, -25.4, -43.7 , 0 );
setMoveKey( spep5 + 112, 1, -19.1, -36.5 , 0 );
setMoveKey( spep5 + 114, 1, -18.7, -35.3 , 0 );
setMoveKey( spep5 + 116, 1, -14.3, -30.1 , 0 );
setMoveKey( spep5 + 118, 1, -14, -32.9 , 0 );
setMoveKey( spep5 + 120, 1, -9.6, -23.7 , 0 );
setMoveKey( spep5 + 122, 1, -11.3, -22.5 , 0 );
setMoveKey( spep5 + 124, 1, -4.9, -17.2 , 0 );
setMoveKey( spep5 + 126, 1, -4.5, -18 , 0 );
setMoveKey( spep5 + 128, 1, -0.2, -10.8 , 0 );
setMoveKey( spep5 + 130, 1, 0.2, -11.6 , 0 );
setMoveKey( spep5 + 132, 1, 3.1, -6.6 , 0 );
setMoveKey( spep5 + 134, 1, 0.1, -9.7 , 0 );
setMoveKey( spep5 + 136, 1, 5, -4.7 , 0 );
setMoveKey( spep5 + 138, 1, 4, -9.8 , 0 );
setMoveKey( spep5 + 140, 1, 6.9, -2.8 , 0 );
setMoveKey( spep5 + 142, 1, 7.9, -5.9 , 0 );
setMoveKey( spep5 + 144, 1, 8.9, -1 , 0 );
setMoveKey( spep5 + 146, 1, 7.9, -4.1 , 0 );

setScaleKey( spep5 + 76, 1, 5, 5 );
setScaleKey( spep5 + 78, 1, 4.68, 4.68 );
setScaleKey( spep5 + 80, 1, 4.25, 4.25 );
setScaleKey( spep5 + 82, 1, 3.74, 3.74 );
setScaleKey( spep5 + 84, 1, 3.13, 3.13 );
setScaleKey( spep5 + 86, 1, 2.43, 2.43 );
setScaleKey( spep5 + 88, 1, 1.63, 1.63 );
setScaleKey( spep5 + 90, 1, 1.49, 1.49 );
setScaleKey( spep5 + 92, 1, 1.37, 1.37 );
setScaleKey( spep5 + 94, 1, 1.27, 1.27 );
setScaleKey( spep5 + 96, 1, 1.18, 1.18 );
setScaleKey( spep5 + 98, 1, 1.11, 1.11 );
setScaleKey( spep5 + 100, 1, 1.05, 1.05 );
setScaleKey( spep5 + 102, 1, 1.01, 1.01 );
setScaleKey( spep5 + 104, 1, 0.99, 0.99 );
setScaleKey( spep5 + 106, 1, 0.98, 0.98 );
setScaleKey( spep5 + 108, 1, 0.98, 0.98 );
setScaleKey( spep5 + 110, 1, 0.97, 0.97 );
setScaleKey( spep5 + 112, 1, 0.97, 0.97 );
setScaleKey( spep5 + 114, 1, 0.96, 0.96 );
setScaleKey( spep5 + 116, 1, 0.96, 0.96 );
setScaleKey( spep5 + 118, 1, 0.95, 0.95 );
setScaleKey( spep5 + 120, 1, 0.95, 0.95 );
setScaleKey( spep5 + 122, 1, 0.94, 0.94 );
setScaleKey( spep5 + 124, 1, 0.94, 0.94 );
setScaleKey( spep5 + 126, 1, 0.93, 0.93 );
setScaleKey( spep5 + 128, 1, 0.93, 0.93 );
setScaleKey( spep5 + 130, 1, 0.92, 0.92 );
setScaleKey( spep5 + 132, 1, 0.81, 0.81 );
setScaleKey( spep5 + 134, 1, 0.7, 0.7 );
setScaleKey( spep5 + 136, 1, 0.59, 0.59 );
setScaleKey( spep5 + 138, 1, 0.49, 0.49 );
setScaleKey( spep5 + 140, 1, 0.38, 0.38 );
setScaleKey( spep5 + 142, 1, 0.27, 0.27 );
setScaleKey( spep5 + 144, 1, 0.16, 0.16 );
setScaleKey( spep5 + 146, 1, 0.05, 0.05 );

setRotateKey( spep5 + 76, 1, -20.9 );
setRotateKey( spep5 + 78, 1, -20.5 );
setRotateKey( spep5 + 80, 1, -20.1 );
setRotateKey( spep5 + 82, 1, -19.5 );
setRotateKey( spep5 + 84, 1, -18.9 );
setRotateKey( spep5 + 86, 1, -18.1 );
setRotateKey( spep5 + 88, 1, -17.3 );
setRotateKey( spep5 + 90, 1, -16.7 );
setRotateKey( spep5 + 92, 1, -16.1 );
setRotateKey( spep5 + 94, 1, -15.6 );
setRotateKey( spep5 + 96, 1, -15.2 );
setRotateKey( spep5 + 98, 1, -14.9 );
setRotateKey( spep5 + 100, 1, -14.6 );
setRotateKey( spep5 + 102, 1, -14.4 );
setRotateKey( spep5 + 104, 1, -14.3 );
setRotateKey( spep5 + 106, 1, -14.3 );
setRotateKey( spep5 + 108, 1, -14 );
setRotateKey( spep5 + 110, 1, -13.8 );
setRotateKey( spep5 + 112, 1, -13.5 );
setRotateKey( spep5 + 114, 1, -13.2 );
setRotateKey( spep5 + 116, 1, -13 );
setRotateKey( spep5 + 118, 1, -12.7 );
setRotateKey( spep5 + 120, 1, -12.4 );
setRotateKey( spep5 + 122, 1, -12.2 );
setRotateKey( spep5 + 124, 1, -11.9 );
setRotateKey( spep5 + 126, 1, -11.6 );
setRotateKey( spep5 + 128, 1, -11.4 );
setRotateKey( spep5 + 130, 1, -11.1 );
setRotateKey( spep5 + 132, 1, -11.3 );
setRotateKey( spep5 + 134, 1, -11.5 );
setRotateKey( spep5 + 136, 1, -11.7 );
setRotateKey( spep5 + 138, 1, -11.9 );
setRotateKey( spep5 + 140, 1, -12.1 );
setRotateKey( spep5 + 142, 1, -12.3 );
setRotateKey( spep5 + 144, 1, -12.5 );
setRotateKey( spep5 + 146, 1, -12.7 );



-- ** 音 ** --
playSe( spep5+30, SE_01);
--playSe( spep5+102, SE_06);
playSe( spep5+102, SE_07);
--playSe( spep5+140, SE_07);
playSe( spep5+140, SE_09);
--playSe( spep5+170, SE_09);
playSe( spep5+170, SE_10);

-- ダメージ表示
dealDamage(spep5+140);
--entryFade( spep5, 9,  10, 1, 8, 8, 8, 255);-- black fade
endPhase( spep5+260);


end
