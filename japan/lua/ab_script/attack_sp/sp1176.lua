--1013700 スラッグ sp1176
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
SP_01 = 151647; --突進
SP_02 = 151648; --格闘
SP_03 = 151649; --ビーム発射
SP_04 = 151650; --ビーム被弾

--敵側は味方側に1xをつけてます
SP_01x = 151647; --突進
SP_02x = 151648; --格闘
SP_03x = 151649; --ビーム発射
SP_04x = 151650; --ビーム被弾


multi_frm = 2;


------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI(0, 0);
setDisp( 0, 0, 0); --味方表示
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
-- 味方側
------------------------------------------------------

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then


--------------------------------------
--突進
--------------------------------------
spep_0=0;

--白フェード
entryFade(spep_0, 0, 1, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--エフェクトの再生
rush=entryEffectLife(spep_0,SP_01,70,0x100,-1,0,0,0);
setEffMoveKey(spep_0,rush,0,0,0);
setEffMoveKey(spep_0+70,rush,0,0,0);
setEffScaleKey(spep_0,rush,1.0,1.0);
setEffScaleKey(spep_0+70,rush,1.0,1.0);
setEffAlphaKey(spep_0,rush,255);
setEffAlphaKey(spep_0+70,rush,255);
setEffRotateKey(spep_0,rush,0);
setEffRotateKey(spep_0+70,rush,0);



--集中線
shuchusen=entryEffectLife(spep_0,906,70,0x80,-1,20,0,0);-- 集中線
setEffMoveKey(spep_0,shuchusen,0,0,0);
setEffMoveKey(spep_0+70,shuchusen,0,0,0);
setEffScaleKey(spep_0,shuchusen,2.0,1.0);
setEffScaleKey(spep_0+70,shuchusen,2.0,1.0);
setEffAlphaKey(spep_0,shuchusen,255);
setEffAlphaKey(spep_0+70,shuchusen,255);
setEffRotateKey(spep_0,shuchusen,180);
setEffRotateKey(spep_0+70,shuchusen,180);

-- ** エフェクト等 ** --
entryFade(spep_0+64, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--黒背景
entryFadeBg(spep_0, 0, 70, 0, 0, 0, 0, 180);  -- 黒　背景

--SE
playSe(spep_0 ,9);

--次の準備
spep_1=spep_0+70;



--------------------------------------
--格闘
--------------------------------------

--黒背景
entryFadeBg(spep_1, 0, 250, 0, 0, 0, 0, 180);  -- 黒　背景

--集中線
shuchusen2=entryEffectLife(spep_1,914,250,0x80,-1,20,0,0);-- 集中線
setEffMoveKey(spep_1,shuchusen2,0,0,0);
setEffMoveKey(spep_1+250,shuchusen2,0,0,0);
setEffScaleKey(spep_1,shuchusen2,2.0,1.0);
setEffScaleKey(spep_1+250,shuchusen2,2.0,1.0);
setEffAlphaKey(spep_1,shuchusen2,255);
setEffAlphaKey(spep_1+250,shuchusen2,255);
setEffRotateKey(spep_1,shuchusen2,0);
setEffRotateKey(spep_1+250,shuchusen2,0);


--エフェクトの再生
Fight=entryEffectLife(spep_1,SP_02,250,0x80,-1,0,0,0);
setEffMoveKey(spep_1,Fight,0,50,0);
setEffMoveKey(spep_1,Fight,0,50,0);
setEffMoveKey(spep_1+250,Fight,0,0,0);
setEffScaleKey(spep_1,Fight,1.0,1.0);
setEffScaleKey(spep_1+250,Fight,1.0,1.0);
setEffAlphaKey(spep_1,Fight,255);
setEffAlphaKey(spep_1+22,Fight,255);
setEffAlphaKey(spep_1+23,Fight,0);
setEffAlphaKey(spep_1+250,Fight,0);
setEffRotateKey(spep_1,Fight,0);
setEffRotateKey(spep_1+250,Fight,0);

--集中線
shuchusen1=entryEffectLife(spep_1,906,250,0x80,-1,20,0,0);-- 集中線
setEffMoveKey(spep_1,shuchusen1,0,0,0);
setEffMoveKey(spep_1+250,shuchusen1,0,0,0);
setEffScaleKey(spep_1,shuchusen1,4.0,2.0);
setEffScaleKey(spep_1+19,shuchusen1,4.0,2.0);
setEffScaleKey(spep_1+20,shuchusen1,2.0,1.0);
setEffScaleKey(spep_1+164,shuchusen1,2.0,1.0);
setEffScaleKey(spep_1+165,shuchusen1,4.0,2.0);
setEffScaleKey(spep_1+210,shuchusen1,4.0,2.0);
setEffScaleKey(spep_1+211,shuchusen1,2.0,1.0);
setEffScaleKey(spep_1+250,shuchusen1,2.0,1.0);
setEffAlphaKey(spep_1,shuchusen1,255);
setEffAlphaKey(spep_1+250,shuchusen1,255);
setEffRotateKey(spep_1,shuchusen1,180);
setEffRotateKey(spep_1+250,shuchusen1,180);



--エフェクトの再生
Fight1=entryEffectLife(spep_1,SP_02,250,0x100,-1,0,0,0);
setEffMoveKey(spep_1,Fight1,0,50,0);
setEffMoveKey(spep_1,Fight1,0,50,0);
setEffMoveKey(spep_1+250,Fight1,0,0,0);
setEffScaleKey(spep_1,Fight1,1.0,1.0);
setEffScaleKey(spep_1+250,Fight1,1.0,1.0);
setEffAlphaKey(spep_1,Fight1,0);
setEffAlphaKey(spep_1+22,Fight1,0);
setEffAlphaKey(spep_1+23,Fight1,255);
setEffAlphaKey(spep_1+250,Fight1,255);
setEffRotateKey(spep_1,Fight1,0);
setEffRotateKey(spep_1+250,Fight1,0);


--文字エントリー
ctdogaga=entryEffectLife(spep_1+23,10017,94,0x100,-1,0,0);--ドガガガ
setEffMoveKey(spep_1+23,ctdogaga,0,350,0);
setEffMoveKey(spep_1+113,ctdogaga,0,350,0);
setEffScaleKey(spep_1+23,ctdogaga, 1.5, 1.5);
setEffScaleKey(spep_1+24,ctdogaga, 3.5, 3.0);
setEffScaleKey(spep_1+25,ctdogaga, 2.8, 2.6);
setEffScaleKey(spep_1+113,ctdogaga, 2.8, 2.6);
setEffShake(spep_1+23,ctdogaga,94,15);
setEffRotateKey(spep_1,ctdogaga,20);
setEffRotateKey(spep_1+113,ctdogaga,20);
setEffAlphaKey(spep_1,ctdogaga,255);
setEffAlphaKey(spep_1+106,ctdogaga,255);
setEffAlphaKey(spep_1+115,ctdogaga,0);

--文字エントリー
ctga=entryEffectLife(spep_1+153,10005,13,0x100,-1,0,0);--ガ
setEffMoveKey(spep_1+153,ctga,0,250,0);
setEffMoveKey(spep_1+164,ctga,0,250,0);
setEffScaleKey(spep_1+153,ctga, 2.5, 2.5);
setEffScaleKey(spep_1+154,ctga, 2.1, 2.1);
setEffScaleKey(spep_1+164,ctga, 2.1, 2.1);
setEffShake(spep_1+153,ctga,14,15);
setEffRotateKey(spep_1+153,ctga,20);
setEffRotateKey(spep_1+164,ctga,20);

--文字エントリー
ctbqki=entryEffectLife(spep_1+211,10020,19,0x100,-1,0,0);--バキッ
setEffMoveKey(spep_1+211,ctbqki,180,360,0);
setEffMoveKey(spep_1+230,ctbqki,180,360,0);

setEffScaleKey(spep_1+211,ctbqki, 1.6, 1.6);
setEffScaleKey(spep_1+213,ctbqki, 1.6, 1.6);
setEffScaleKey(spep_1+214,ctbqki, 1.7, 1.7);
setEffScaleKey(spep_1+216,ctbqki, 1.7, 1.7);
setEffScaleKey(spep_1+217,ctbqki, 2.3, 2.3);
setEffScaleKey(spep_1+219,ctbqki, 2.3, 2.3);
setEffScaleKey(spep_1+220,ctbqki, 2.0, 2.0);
setEffScaleKey(spep_1+222,ctbqki, 2.0, 2.0);
setEffScaleKey(spep_1+229,ctbqki, 2.3, 2.3);

setEffRotateKey(spep_1+211,ctbqki,30);
setEffRotateKey(spep_1+213,ctbqki,30);
setEffRotateKey(spep_1+214,ctbqki,0);
setEffRotateKey(spep_1+216,ctbqki,0);
setEffRotateKey(spep_1+217,ctbqki,10);
setEffRotateKey(spep_1+219,ctbqki,10);
setEffRotateKey(spep_1+220,ctbqki,30);
setEffRotateKey(spep_1+222,ctbqki,30);
setEffRotateKey(spep_1+223,ctbqki,10);
setEffRotateKey(spep_1+230,ctbqki,10);

setEffAlphaKey(spep_1+210,ctbqki,255);
setEffAlphaKey(spep_1+227,ctbqki,255);
setEffAlphaKey(spep_1+232,ctbqki,0);


--敵の登場
setDisp(spep_1,1,1);
changeAnime(spep_1,1,101);
setMoveKey(spep_1,1,-500,0,0);
setMoveKey(spep_1+10,1,130,0,0);
setMoveKey(spep_1+26,1,130,0,0);
setScaleKey(spep_1,1,1.5,1.5);
setScaleKey(spep_1+24,1,1.5,1.5);
setScaleKey(spep_1+25,1,1.5,1.5);
setRotateKey(spep_1,1,0);
setRotateKey(spep_1+25,1,0);

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 84 ; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

pauseAll( SP_dodge, 67);

--キャラクターの固定
setMoveKey(SP_dodge, 1, 130 , 0, 0);
setScaleKey(SP_dodge , 1 , 1.5 ,1.5);
setRotateKey(SP_dodge,   1, 0);

--キャラクターの固定
setMoveKey(SP_dodge+8, 1, 130 , 0, 0);
setScaleKey(SP_dodge+8 , 1 , 1.5 ,1.5);
setRotateKey(SP_dodge+8,   1, 0);

setDisp(SP_dodge+9, 1, 0);
setMoveKey(SP_dodge+9, 1, 0 , 0, 0);
setScaleKey(SP_dodge+9,  1 , 1.5 ,1.5);
setRotateKey(SP_dodge+9,   1, 0);

setMoveKey(SP_dodge+10, 1, 0 , 0, 0);
setScaleKey(SP_dodge+10,  1 , 1.5 ,1.5);
setRotateKey(SP_dodge+10,   1, 0);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
--entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景

entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge+10);

do return end
else end

--------------------------------------
--回避されなかったら
--------------------------------------

--敵が蹴られてくの字になる
setDisp(spep_1+25,1,1);
changeAnime(spep_1+25,1,108);
setMoveKey(spep_1+25,1,130,0,0);
setMoveKey(spep_1+123,1,130,0,0);
setMoveKey(spep_1+150,1,130,0,0);
setScaleKey(spep_1+25,1,1.3,1.3);
setScaleKey(spep_1+151,1,1.3,1.3);
setScaleKey(spep_1+152,1,1.5,1.5);
setRotateKey(spep_1+26,1,0);
setRotateKey(spep_1+152,1,0);
setShakeChara(spep_1+25,1,130,15);


--敵、反り返り
setDisp(spep_1+153,1,1);
changeAnime(spep_1+153,1,106);
setMoveKey(spep_1+153,1,50,0,0);
setMoveKey(spep_1+162,1,520,0,0);
setMoveKey(spep_1+165,1,520,0,0);
setMoveKey(spep_1+188,1,30,0,0);
setMoveKey(spep_1+211,1,30,0,0);
setScaleKey(spep_1+153,1,1.8,1.8);
setScaleKey(spep_1+161,1,1.8,1.8);
setScaleKey(spep_1+162,1,1.5,1.5);
setScaleKey(spep_1+208,1,1.5,1.5);
setScaleKey(spep_1+209,1,1.8,1.8);
setRotateKey(spep_1+153,1,-50);
setRotateKey(spep_1+210,1,-50);
setShakeChara(spep_1+153,1,59,15);

--敵、くの字
setDisp(spep_1+211,1,1);
changeAnime(spep_1+211,1,108);
setMoveKey(spep_1+212,1,200,0,0);
setMoveKey(spep_1+235,1,200,0,0);
setMoveKey(spep_1+242,1,1100,0,0);
setScaleKey(spep_1+211,1,1.9,1.9);
setScaleKey(spep_1+217,1,1.9,1.9);
setScaleKey(spep_1+218,1,1.7,1.7);
setScaleKey(spep_1+222,1,1.7,1.7);
setRotateKey(spep_1+211,1,0);
setRotateKey(spep_1+256,1,0);
setShakeChara(spep_1+211,1,39,15);



--白フェード
entryFade(spep_1+150, 3, 0, 6, fcolor_r, fcolor_g, fcolor_b, 188);     -- white fade

--白フェード
entryFade(spep_1+209, 3, 0, 5, fcolor_r, fcolor_g, fcolor_b, 188);     -- white fade

--白フェード
entryFade(spep_1+242, 4, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade



--敵からの退却
setDisp(spep_1+250,1,0);

--SE
playSe(  spep_1+23,1000);
playSe(  spep_1+33,1000);
playSe(  spep_1+45,1001);
playSe(  spep_1+55,1001);
playSe(  spep_1+65,1000);
playSe(  spep_1+73,1001);
playSe(  spep_1+81,1000);
playSe(  spep_1+89,1000);
playSe(  spep_1+97,1000);
playSe(  spep_1+105,1000);
playSe(spep_1+153,1009);--バキ
playSe(spep_1+211,1010);--バキ

--次の準備
spep_2=spep_1+250;

------------------------------------------------------
-- 気溜め
------------------------------------------------------
--キャラクターの登場
setDisp(spep_2,0,1);
changeAnime(spep_2,0,17);
setMoveKey(spep_2,0,0,0,0);
setMoveKey(spep_2+97,0,0,0,0);
setScaleKey(spep_2,0,2.0,2.0);
setScaleKey(spep_2+97,0,2.0,2.0);
setRotateKey(spep_2,0,0);
setRotateKey(spep_2+97,0,0);
setShakeChara(spep_2,0,97,15);

--顔＆セリフカットイン
speff=entryEffect(spep_2+6,1504,0x100,-1,0,0,0);  --カットイン(顔)
setEffReplaceTexture(speff,3,2);  --カットイン差し替え
speff1=entryEffect(spep_2+6,1505,0x100,-1,0,0,0);  --カットイン(セリフ)
setEffReplaceTexture(speff1,4,5);  --セリフカットイン差し替え


--文字エントリー
ctgogo=entryEffectLife(spep_2+19,190006,69,0x100,-1,110,500);--ゴゴゴ
setEffMoveKey(spep_2+19,ctgogo,110,500,0);
setEffMoveKey(spep_2+93,ctgogo,110,500,0);
setEffScaleKey(spep_2+19, ctgogo, 0.7, 0.7);
setEffScaleKey(spep_2+93, ctgogo, 0.7, 0.7);

--SE
playSe( spep_2+19, SE_05); --ゴゴゴ

--後ろの気
ef_ki=entryEffectLife(spep_2, 1503, 97,0x80,-1,0,0,0);   -- 集中線
setEffMoveKey(spep_2,ef_ki,0,0,0);
setEffMoveKey(spep_2+97,ef_ki,0,0,0);
setEffScaleKey(spep_2, ef_ki, 1.0, 1.0);
setEffScaleKey(spep_2+97,ef_ki, 1.0, 1.0);

--バチバチ
ef_bati=entryEffectLife(spep_2, 1502, 97,0x100,-1,0,0,0);   -- 集中線
setEffMoveKey(spep_2,ef_bati,0,0,0);
setEffMoveKey(spep_2+97,ef_bati,0,0,0);
setEffScaleKey(spep_2,ef_bati, 1.0, 1.0);
setEffScaleKey(spep_2+97,ef_bati, 1.0, 1.0);

--白フェード
entryFade(spep_2+84, 12, 2,5, fcolor_r, fcolor_g, fcolor_b, 255);

--敵からの退却
setDisp(spep_2+98,0,0);



--次の準備
spep_3=spep_2+97;

--------------------------------------
--カードカットイン(90F)
--------------------------------------

playSe(spep_3,SE_05);
shuchusen3=entryEffectLife(spep_3,906,90,0x100,-1,0,0,0);   -- 集中線
setEffScaleKey(spep_3,shuchusen3,1.6,1.6);

speff2=entryEffect(spep_3,1507,0,-1,0,0,0);   -- カード
setEffReplaceTexture(speff2,1,1);
setEffReplaceTexture(speff2,2,0);-- カード差し替え
setEffReplaceTexture(speff2,5,4);-- 技名テクスチャ差し替え

-- ** エフェクト等 ** --
entryFade(spep_3+85,3,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_4=spep_3+90;

------------------------------------------------------
-- 目からビーム
------------------------------------------------------
--エフェクトの再生
beam=entryEffectLife(spep_4,SP_03,100,0x100,-1,0,0,0);
setEffMoveKey(spep_4,beam,0,0,0);
setEffMoveKey(spep_4+100,beam,0,0,0);
setEffScaleKey(spep_4,beam,1.1,1.0);
setEffScaleKey(spep_4+100,beam,1.1,1.0);
setEffAlphaKey(spep_4,beam,255);
setEffAlphaKey(spep_4+100,beam,255);
setEffRotateKey(spep_4,beam,0);
setEffRotateKey(spep_4+100,beam,0);


--集中線
shuchusen3=entryEffectLife(spep_4,921,100,0x80,-1,20,0,0);-- 集中線
setEffMoveKey(spep_4,shuchusen3,0,0,0);
setEffMoveKey(spep_4+100,shuchusen3,0,0,0);
setEffScaleKey(spep_4,shuchusen3,2.0,1.2);
setEffScaleKey(spep_4+100,shuchusen3,2.0,1.2);
setEffAlphaKey(spep_4,shuchusen3,255);
setEffAlphaKey(spep_4+100,shuchusen3,255);
setEffRotateKey(spep_4,shuchusen3,-190);
setEffRotateKey(spep_4+100,shuchusen3,-190);

--文字エントリー
ctkaltu=entryEffectLife(spep_4+29,10004,18,0x100,-1,200,400);--カッ
setEffMoveKey(spep_4+29,ctkaltu,220,400,0);
setEffMoveKey(spep_4+47,ctkaltu,220,400,0);
setEffScaleKey(spep_4+29,ctkaltu,0.7,0.7);
setEffScaleKey(spep_4+31,ctkaltu,1.8,1.8);
setEffScaleKey(spep_4+47,ctkaltu,1.8,1.8);
setEffRotateKey(spep_4+29,ctkaltu,-10);
setEffRotateKey(spep_4+47,ctkaltu,-10);
setEffShake(spep_4+29,ctkaltu,10,15);

SE1=playSe(spep_4+29,15);
stopSe(spep_4+50,SE1,0);

--文字エントリー
ctzuo=entryEffectLife(spep_4+58,10012,38,0x100,-1,110,500);--ズオ
setEffMoveKey(spep_4,ctzuo,110,220,0);
setEffMoveKey(spep_4+58,ctzuo,150,220,0);
setEffMoveKey(spep_4+68,ctzuo,180,270,0);
setEffScaleKey(spep_4+58,ctzuo,0.5,0.5);
setEffScaleKey(spep_4+68,ctzuo,1.8,1.8);
setEffScaleKey(spep_4+100,ctzuo,1.8,1.8);
setEffRotateKey(spep_4+58,ctzuo,30);
setEffRotateKey(spep_4+97,ctzuo,30);
setEffShake( spep_4,ctzuo,100,20);

playSe(spep_4+58,1022);

--黒背景
entryFadeBg(spep_4, 0, 100, 0, 0, 0, 0, 180);  -- 黒　背景

-- ** エフェクト等 ** --
entryFade(spep_4+95,3,3,3,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_5=spep_4+100;

------------------------------------------------------
-- ビームが当たる
------------------------------------------------------
--エフェクトの再生
hit=entryEffectLife(spep_5,SP_04,100,0x100,-1,0,0,0);
setEffMoveKey(spep_5,hit,0,0,0);
setEffMoveKey(spep_5+100,hit,0,0,0);
setEffScaleKey(spep_5,hit,1.1,1.0);
setEffScaleKey(spep_5+100,hit,1.1,1.0);
setEffAlphaKey(spep_5,hit,255);
setEffAlphaKey(spep_5+100,hit,255);
setEffRotateKey(spep_5,hit,0);
setEffRotateKey(spep_5+100,hit,0);

--文字エントリー
ctzudo=entryEffectLife(spep_5,10014,100,0x100,-1,50,250);--ズドドド
setEffMoveKey(spep_5,ctzudo,50,320,0);
setEffMoveKey(spep_5+100,ctzudo,50,320,0);
setEffScaleKey(spep_5,ctzudo,3.3,3.4);
setEffScaleKey(spep_5+100,ctzudo,3.3,3.4);
setEffRotateKey(spep_5,ctzudo,75);
setEffRotateKey(spep_5+100,ctzudo,75);
setEffShake(spep_5,ctzudo,100,15);

playSe(spep_5,1018);--ズドドド

--集中線
shuchusen4=entryEffectLife(spep_5,921,100,0x80,-1,20,0,0);-- 集中線
setEffMoveKey(spep_5,shuchusen4,0,0,0);
setEffMoveKey(spep_5+100,shuchusen4,0,0,0);
setEffScaleKey(spep_5,shuchusen4,1.2,1.4);
setEffScaleKey(spep_5+100,shuchusen4,1.2,1.4);
setEffAlphaKey(spep_5,shuchusen4,255);
setEffAlphaKey(spep_5+100,shuchusen4,255);
setEffRotateKey(spep_5,shuchusen4,0);
setEffRotateKey(spep_5+100,shuchusen4,0);

--敵の登場
setDisp(spep_5,1,1);
changeAnime(spep_5,1,104);
setMoveKey(spep_5,1,300,-70,0);
setMoveKey(spep_5+49,1,250,-70,0);
setScaleKey(spep_5,1,1.2,1.2);
setScaleKey(spep_5+30,1,1.8,1.8);
setScaleKey(spep_5+49,1,1.8,1.8);
setRotateKey(spep_5,1,0);
setRotateKey(spep_5+49,1,0);
setShakeChara(spep_5,1,49,15);

--敵の登場
setDisp(spep_5+50,1,1);
changeAnime(spep_5+50,1,108);
setMoveKey(spep_5+50,1,250,-120,0);
setMoveKey(spep_5+100,1,250,-120,0);
setScaleKey(spep_5+50,1,1.8,2.4);
setScaleKey(spep_5+100,1,2.4,2.4);
setRotateKey(spep_5+50,1,20);
setRotateKey(spep_5+100,1,20);
setShakeChara(spep_5+50,1,50,15);


--SE
playSe(  spep_5+38, 1023);

setDisp(spep_5+100,1,0);

--黒背景
entryFadeBg(spep_5, 0, 100, 0, 0, 0, 0, 180);  -- 黒　背景

-- ** エフェクト等 ** --
entryFade(spep_5+89,9,3,5,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_6=spep_5+100;

------------------------------------------------------
-- ギャン(60F)
------------------------------------------------------
setDisp( spep_6-1, 1, 0);

gyan = entryEffect(  spep_6,  190010,  0x100,  -1,  0,  0,  0);  --ギャン
setEffScaleKey(  spep_6,  gyan,  1.0,  1.0);
setEffAlphaKey(  spep_6,  gyan,  255);

-- 書き文字エントリー --
ct_06 = entryEffectLife( spep_6, 10006, 58, 0x100, -1, 0, 0, 300);    -- ギャン

setEffScaleKey( spep_6, ct_06, 1.8, 1.8);
setEffAlphaKey( spep_6, ct_06, 255);
setEffScaleKey( spep_6+10, ct_06, 3.8, 3.8);
setEffScaleKey( spep_6+58, ct_06, 4.3, 4.3);
setEffAlphaKey( spep_6+58, ct_06, 255);
setEffShake( spep_6, ct_06, 58, 10);

playSe(  spep_6, SE_09);

entryFade(  spep_6+47,  6,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryFadeBg(spep_6,0,60,0,0,0,0,255);
entryFade( spep_6+50, 4,  8, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_7 = spep_6+60;

------------------------------------------------------
-- 爆発
------------------------------------------------------

--エフェクトの再生
explosion=entryEffect(spep_7,1686,0x80,-1,0,0,0);
setEffMoveKey(spep_7,explosion,0,0,0);
setEffMoveKey(spep_7+120,explosion,0,0,0);
setEffScaleKey(spep_7,explosion,1.0,1.0);
setEffScaleKey(spep_7+120,explosion,1.0,1.0);
setEffAlphaKey(spep_7,explosion,255);
setEffAlphaKey(spep_7+120,explosion,255);
setEffRotateKey(spep_7,explosion,0);
setEffRotateKey(spep_7+120,explosion,0);

--キャラクターの登場
setDisp(spep_7,0,1);
changeAnime(spep_7,0,2);
setMoveKey(spep_7,0,-150,-180,0);
setMoveKey(spep_7+120,0,-200,-180,0);
setScaleKey(spep_7,0,1.8,1.8);
setScaleKey(spep_7+120,0,1.4,1.4);
setRotateKey(spep_7,0,0);
setRotateKey(spep_7+120,0,0);

--集中線
shuchusen5=entryEffectLife(spep_7,906,46,0x80,-1,20,0,0);-- 集中線
setEffMoveKey(spep_7,shuchusen5,300,500,0);
setEffMoveKey(spep_7+46,shuchusen5,300,500,0);
setEffScaleKey(spep_7,shuchusen5,2.0,2.0);
setEffScaleKey(spep_7+46,shuchusen5,2.0,2.0);
setEffAlphaKey(spep_7,shuchusen5,255);
setEffAlphaKey(spep_7+40,shuchusen5,255);
setEffAlphaKey(spep_7+46,shuchusen5,0);
setEffRotateKey(spep_7,shuchusen5,0);
setEffRotateKey(spep_7+46,shuchusen5,0);

playSe(  spep_7, 1024);

-- ダメージ表示
dealDamage(spep_7+26);
entryFade( spep_7+102, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_7+112);


else 

------------------------------------------------------
-- 敵側
------------------------------------------------------
--------------------------------------
--突進
--------------------------------------
spep_0=0;

--白フェード
entryFade(spep_0, 0, 1, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--エフェクトの再生
rush=entryEffectLife(spep_0,SP_01x,70,0x100,-1,0,0,0);
setEffMoveKey(spep_0,rush,0,0,0);
setEffMoveKey(spep_0+70,rush,0,0,0);
setEffScaleKey(spep_0,rush,1.0,1.0);
setEffScaleKey(spep_0+70,rush,1.0,1.0);
setEffAlphaKey(spep_0,rush,255);
setEffAlphaKey(spep_0+70,rush,255);
setEffRotateKey(spep_0,rush,0);
setEffRotateKey(spep_0+70,rush,0);



--集中線
shuchusen=entryEffectLife(spep_0,906,70,0x80,-1,20,0,0);-- 集中線
setEffMoveKey(spep_0,shuchusen,0,0,0);
setEffMoveKey(spep_0+70,shuchusen,0,0,0);
setEffScaleKey(spep_0,shuchusen,2.0,1.0);
setEffScaleKey(spep_0+70,shuchusen,2.0,1.0);
setEffAlphaKey(spep_0,shuchusen,255);
setEffAlphaKey(spep_0+70,shuchusen,255);
setEffRotateKey(spep_0,shuchusen,180);
setEffRotateKey(spep_0+70,shuchusen,180);

-- ** エフェクト等 ** --
entryFade(spep_0+64, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--黒背景
entryFadeBg(spep_0, 0, 70, 0, 0, 0, 0, 180);  -- 黒　背景

--SE
playSe(spep_0 ,9);

--次の準備
spep_1=spep_0+70;



--------------------------------------
--格闘
--------------------------------------

--黒背景
entryFadeBg(spep_1, 0, 250, 0, 0, 0, 0, 180);  -- 黒　背景

--集中線
shuchusen2=entryEffectLife(spep_1,914,250,0x80,-1,20,0,0);-- 集中線
setEffMoveKey(spep_1,shuchusen2,0,0,0);
setEffMoveKey(spep_1+250,shuchusen2,0,0,0);
setEffScaleKey(spep_1,shuchusen2,2.0,1.0);
setEffScaleKey(spep_1+250,shuchusen2,2.0,1.0);
setEffAlphaKey(spep_1,shuchusen2,255);
setEffAlphaKey(spep_1+250,shuchusen2,255);
setEffRotateKey(spep_1,shuchusen2,0);
setEffRotateKey(spep_1+250,shuchusen2,0);


--エフェクトの再生
Fight=entryEffectLife(spep_1,SP_02,250,0x80,-1,0,0,0);
setEffMoveKey(spep_1,Fight,0,50,0);
setEffMoveKey(spep_1,Fight,0,50,0);
setEffMoveKey(spep_1+250,Fight,0,0,0);
setEffScaleKey(spep_1,Fight,1.0,1.0);
setEffScaleKey(spep_1+250,Fight,1.0,1.0);
setEffAlphaKey(spep_1,Fight,255);
setEffAlphaKey(spep_1+22,Fight,255);
setEffAlphaKey(spep_1+23,Fight,0);
setEffAlphaKey(spep_1+250,Fight,0);
setEffRotateKey(spep_1,Fight,0);
setEffRotateKey(spep_1+250,Fight,0);

--集中線
shuchusen1=entryEffectLife(spep_1,906,250,0x80,-1,20,0,0);-- 集中線
setEffMoveKey(spep_1,shuchusen1,0,0,0);
setEffMoveKey(spep_1+250,shuchusen1,0,0,0);
setEffScaleKey(spep_1,shuchusen1,4.0,2.0);
setEffScaleKey(spep_1+19,shuchusen1,4.0,2.0);
setEffScaleKey(spep_1+20,shuchusen1,2.0,1.0);
setEffScaleKey(spep_1+164,shuchusen1,2.0,1.0);
setEffScaleKey(spep_1+165,shuchusen1,4.0,2.0);
setEffScaleKey(spep_1+210,shuchusen1,4.0,2.0);
setEffScaleKey(spep_1+211,shuchusen1,2.0,1.0);
setEffScaleKey(spep_1+250,shuchusen1,2.0,1.0);
setEffAlphaKey(spep_1,shuchusen1,255);
setEffAlphaKey(spep_1+250,shuchusen1,255);
setEffRotateKey(spep_1,shuchusen1,180);
setEffRotateKey(spep_1+250,shuchusen1,180);



--エフェクトの再生
Fight1=entryEffectLife(spep_1,SP_02,250,0x100,-1,0,0,0);
setEffMoveKey(spep_1,Fight1,0,50,0);
setEffMoveKey(spep_1,Fight1,0,50,0);
setEffMoveKey(spep_1+250,Fight1,0,0,0);
setEffScaleKey(spep_1,Fight1,1.0,1.0);
setEffScaleKey(spep_1+250,Fight1,1.0,1.0);
setEffAlphaKey(spep_1,Fight1,0);
setEffAlphaKey(spep_1+22,Fight1,0);
setEffAlphaKey(spep_1+23,Fight1,255);
setEffAlphaKey(spep_1+250,Fight1,255);
setEffRotateKey(spep_1,Fight1,0);
setEffRotateKey(spep_1+250,Fight1,0);


--文字エントリー
ctdogaga=entryEffectLife(spep_1+23,10017,94,0x100,-1,0,0);--ドガガガ
setEffMoveKey(spep_1+23,ctdogaga,0,350,0);
setEffMoveKey(spep_1+113,ctdogaga,0,350,0);
setEffScaleKey(spep_1+23,ctdogaga, 1.5, 1.5);
setEffScaleKey(spep_1+24,ctdogaga, 3.5, 3.0);
setEffScaleKey(spep_1+25,ctdogaga, 2.8, 2.6);
setEffScaleKey(spep_1+113,ctdogaga, 2.8, 2.6);
setEffShake(spep_1+23,ctdogaga,94,15);
setEffRotateKey(spep_1,ctdogaga,-5);
setEffRotateKey(spep_1+113,ctdogaga,-5);
setEffAlphaKey(spep_1,ctdogaga,255);
setEffAlphaKey(spep_1+106,ctdogaga,255);
setEffAlphaKey(spep_1+115,ctdogaga,0);




--文字エントリー
ctga=entryEffectLife(spep_1+153,10005,13,0x100,-1,0,0);--ガ
setEffMoveKey(spep_1+153,ctga,0,250,0);
setEffMoveKey(spep_1+164,ctga,0,250,0);
setEffScaleKey(spep_1+153,ctga, 2.5, 2.5);
setEffScaleKey(spep_1+154,ctga, 2.1, 2.1);
setEffScaleKey(spep_1+164,ctga, 2.1, 2.1);
setEffShake(spep_1+153,ctga,14,15);
setEffRotateKey(spep_1+153,ctga,20);
setEffRotateKey(spep_1+164,ctga,20);

--文字エントリー
ctbqki=entryEffectLife(spep_1+211,10020,19,0x100,-1,0,0);--バキッ
setEffMoveKey(spep_1+211,ctbqki,180,360,0);
setEffMoveKey(spep_1+230,ctbqki,180,360,0);

setEffScaleKey(spep_1+211,ctbqki, 1.6, 1.6);
setEffScaleKey(spep_1+213,ctbqki, 1.6, 1.6);
setEffScaleKey(spep_1+214,ctbqki, 1.7, 1.7);
setEffScaleKey(spep_1+216,ctbqki, 1.7, 1.7);
setEffScaleKey(spep_1+217,ctbqki, 2.3, 2.3);
setEffScaleKey(spep_1+219,ctbqki, 2.3, 2.3);
setEffScaleKey(spep_1+220,ctbqki, 2.0, 2.0);
setEffScaleKey(spep_1+222,ctbqki, 2.0, 2.0);
setEffScaleKey(spep_1+229,ctbqki, 2.3, 2.3);

setEffRotateKey(spep_1+211,ctbqki,30);
setEffRotateKey(spep_1+213,ctbqki,30);
setEffRotateKey(spep_1+214,ctbqki,0);
setEffRotateKey(spep_1+216,ctbqki,0);
setEffRotateKey(spep_1+217,ctbqki,10);
setEffRotateKey(spep_1+219,ctbqki,10);
setEffRotateKey(spep_1+220,ctbqki,30);
setEffRotateKey(spep_1+222,ctbqki,30);
setEffRotateKey(spep_1+223,ctbqki,10);
setEffRotateKey(spep_1+230,ctbqki,10);

setEffAlphaKey(spep_1+210,ctbqki,255);
setEffAlphaKey(spep_1+227,ctbqki,255);
setEffAlphaKey(spep_1+232,ctbqki,0);


--敵の登場
setDisp(spep_1,1,1);
changeAnime(spep_1,1,101);
setMoveKey(spep_1,1,-500,0,0);
setMoveKey(spep_1+10,1,130,0,0);
setMoveKey(spep_1+26,1,130,0,0);
setScaleKey(spep_1,1,1.5,1.5);
setScaleKey(spep_1+24,1,1.5,1.5);
setScaleKey(spep_1+25,1,1.5,1.5);
setRotateKey(spep_1,1,0);
setRotateKey(spep_1+25,1,0);

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 84 ; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

pauseAll( SP_dodge, 67);

--キャラクターの固定
setMoveKey(SP_dodge, 1, 130 , 0, 0);
setScaleKey(SP_dodge , 1 , 1.5 ,1.5);
setRotateKey(SP_dodge,   1, 0);

--キャラクターの固定
setMoveKey(SP_dodge+8, 1, 130 , 0, 0);
setScaleKey(SP_dodge+8 , 1 , 1.5 ,1.5);
setRotateKey(SP_dodge+8,   1, 0);

setDisp(SP_dodge+9, 1, 0);
setMoveKey(SP_dodge+9, 1, 0 , 0, 0);
setScaleKey(SP_dodge+9,  1 , 1.5 ,1.5);
setRotateKey(SP_dodge+9,   1, 0);

setMoveKey(SP_dodge+10, 1, 0 , 0, 0);
setScaleKey(SP_dodge+10,  1 , 1.5 ,1.5);
setRotateKey(SP_dodge+10,   1, 0);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
--entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景

entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge+10);

do return end
else end

--------------------------------------
--回避されなかったら
--------------------------------------

--敵が蹴られてくの字になる
setDisp(spep_1+25,1,1);
changeAnime(spep_1+25,1,108);
setMoveKey(spep_1+25,1,130,0,0);
setMoveKey(spep_1+123,1,130,0,0);
setMoveKey(spep_1+150,1,130,0,0);
setScaleKey(spep_1+25,1,1.3,1.3);
setScaleKey(spep_1+151,1,1.3,1.3);
setScaleKey(spep_1+152,1,1.5,1.5);
setRotateKey(spep_1+26,1,0);
setRotateKey(spep_1+152,1,0);
setShakeChara(spep_1+25,1,130,15);


--敵、反り返り
setDisp(spep_1+153,1,1);
changeAnime(spep_1+153,1,106);
setMoveKey(spep_1+153,1,50,0,0);
setMoveKey(spep_1+162,1,520,0,0);
setMoveKey(spep_1+165,1,520,0,0);
setMoveKey(spep_1+188,1,30,0,0);
setMoveKey(spep_1+211,1,30,0,0);
setScaleKey(spep_1+153,1,1.8,1.8);
setScaleKey(spep_1+161,1,1.8,1.8);
setScaleKey(spep_1+162,1,1.5,1.5);
setScaleKey(spep_1+208,1,1.5,1.5);
setScaleKey(spep_1+209,1,1.8,1.8);
setRotateKey(spep_1+153,1,-50);
setRotateKey(spep_1+210,1,-50);
setShakeChara(spep_1+153,1,59,15);

--敵、くの字
setDisp(spep_1+211,1,1);
changeAnime(spep_1+211,1,108);
setMoveKey(spep_1+212,1,200,0,0);
setMoveKey(spep_1+235,1,200,0,0);
setMoveKey(spep_1+242,1,1100,0,0);
setScaleKey(spep_1+211,1,1.9,1.9);
setScaleKey(spep_1+217,1,1.9,1.9);
setScaleKey(spep_1+218,1,1.7,1.7);
setScaleKey(spep_1+222,1,1.7,1.7);
setRotateKey(spep_1+211,1,0);
setRotateKey(spep_1+256,1,0);
setShakeChara(spep_1+211,1,39,15);




--白フェード
entryFade(spep_1+150, 3, 0, 6, fcolor_r, fcolor_g, fcolor_b, 188);     -- white fade

--白フェード
entryFade(spep_1+209, 3, 0, 5, fcolor_r, fcolor_g, fcolor_b, 188);     -- white fade

--白フェード
entryFade(spep_1+242, 4, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--敵からの退却
setDisp(spep_1+250,1,0);

--SE
playSe(  spep_1+23,1000);
playSe(  spep_1+33,1000);
playSe(  spep_1+45,1001);
playSe(  spep_1+55,1001);
playSe(  spep_1+65,1000);
playSe(  spep_1+73,1001);
playSe(  spep_1+81,1000);
playSe(  spep_1+89,1000);
playSe(  spep_1+97,1000);
playSe(  spep_1+105,1000);
playSe(spep_1+153,1009);--バキ
playSe(spep_1+211,1010);--バキ

--次の準備
spep_2=spep_1+250;

------------------------------------------------------
-- 気溜め
------------------------------------------------------
--キャラクターの登場
setDisp(spep_2,0,1);
changeAnime(spep_2,0,17);
setMoveKey(spep_2,0,0,0,0);
setMoveKey(spep_2+97,0,0,0,0);
setScaleKey(spep_2,0,2.0,2.0);
setScaleKey(spep_2+97,0,2.0,2.0);
setRotateKey(spep_2,0,0);
setRotateKey(spep_2+97,0,0);
setShakeChara(spep_2,0,97,15);

--顔＆セリフカットイン
--speff=entryEffect(spep_2+6,1504,0x100,-1,0,0,0);  --カットイン(顔)
--setEffReplaceTexture(speff,3,2);  --カットイン差し替え
--speff1=entryEffect(spep_2+6,1505,0x100,-1,0,0,0);  --カットイン(セリフ)
--setEffReplaceTexture(speff1,4,5);  --セリフカットイン差し替え


--文字エントリー
ctgogo=entryEffectLife(spep_2+19,190006,69,0x100,-1,110,500);--ゴゴゴ
setEffMoveKey(spep_2+19,ctgogo,110,500,0);
setEffMoveKey(spep_2+93,ctgogo,110,500,0);
setEffScaleKey(spep_2+19, ctgogo, -0.7, 0.7);
setEffScaleKey(spep_2+93, ctgogo, -0.7, 0.7);

--SE
playSe( spep_2+19, SE_05); --ゴゴゴ

--後ろの気
ef_ki=entryEffectLife(spep_2, 1503, 97,0x80,-1,0,0,0);   -- 集中線
setEffMoveKey(spep_2,ef_ki,0,0,0);
setEffMoveKey(spep_2+97,ef_ki,0,0,0);
setEffScaleKey(spep_2, ef_ki, 1.0, 1.0);
setEffScaleKey(spep_2+97,ef_ki, 1.0, 1.0);

--バチバチ
ef_bati=entryEffectLife(spep_2, 1502, 97,0x100,-1,0,0,0);   -- 集中線
setEffMoveKey(spep_2,ef_bati,0,0,0);
setEffMoveKey(spep_2+97,ef_bati,0,0,0);
setEffScaleKey(spep_2,ef_bati, 1.0, 1.0);
setEffScaleKey(spep_2+97,ef_bati, 1.0, 1.0);

--白フェード
entryFade(spep_2+84, 12, 2,5, fcolor_r, fcolor_g, fcolor_b, 255);

--敵からの退却
setDisp(spep_2+98,0,0);



--次の準備
spep_3=spep_2+97;

--------------------------------------
--カードカットイン(90F)
--------------------------------------

playSe(spep_3,SE_05);
shuchusen3=entryEffectLife(spep_3,906,90,0x100,-1,0,0,0);   -- 集中線
setEffScaleKey(spep_3,shuchusen3,1.6,1.6);

speff2=entryEffect(spep_3,1507,0,-1,0,0,0);   -- カード
setEffReplaceTexture(speff2,1,1);
setEffReplaceTexture(speff2,2,0);-- カード差し替え
setEffReplaceTexture(speff2,5,4);-- 技名テクスチャ差し替え

-- ** エフェクト等 ** --
entryFade(spep_3+85,3,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_4=spep_3+90;

------------------------------------------------------
-- 目からビーム
------------------------------------------------------
--エフェクトの再生
beam=entryEffectLife(spep_4,SP_03x,100,0x100,-1,0,0,0);
setEffMoveKey(spep_4,beam,0,0,0);
setEffMoveKey(spep_4+100,beam,0,0,0);
setEffScaleKey(spep_4,beam,1.1,1.0);
setEffScaleKey(spep_4+100,beam,1.1,1.0);
setEffAlphaKey(spep_4,beam,255);
setEffAlphaKey(spep_4+100,beam,255);
setEffRotateKey(spep_4,beam,0);
setEffRotateKey(spep_4+100,beam,0);


--集中線
shuchusen3=entryEffectLife(spep_4,921,100,0x80,-1,20,0,0);-- 集中線
setEffMoveKey(spep_4,shuchusen3,0,0,0);
setEffMoveKey(spep_4+100,shuchusen3,0,0,0);
setEffScaleKey(spep_4,shuchusen3,2.0,1.2);
setEffScaleKey(spep_4+100,shuchusen3,2.0,1.2);
setEffAlphaKey(spep_4,shuchusen3,255);
setEffAlphaKey(spep_4+100,shuchusen3,255);
setEffRotateKey(spep_4,shuchusen3,-190);
setEffRotateKey(spep_4+100,shuchusen3,-190);

--文字エントリー
ctkaltu=entryEffectLife(spep_4+29,10004,18,0x100,-1,200,400);--カッ
setEffMoveKey(spep_4+29,ctkaltu,220,400,0);
setEffMoveKey(spep_4+47,ctkaltu,220,400,0);
setEffScaleKey(spep_4+29,ctkaltu,0.7,0.7);
setEffScaleKey(spep_4+31,ctkaltu,1.8,1.8);
setEffScaleKey(spep_4+47,ctkaltu,1.8,1.8);
setEffRotateKey(spep_4+29,ctkaltu,-10);
setEffRotateKey(spep_4+47,ctkaltu,-10);
setEffShake(spep_4+29,ctkaltu,10,15);

SE1=playSe(spep_4+29,15);
stopSe(spep_4+50,SE1,0);

--文字エントリー
ctzuo=entryEffectLife(spep_4+58,10012,38,0x100,-1,110,500);--ズオ
setEffMoveKey(spep_4,ctzuo,110,220,0);
setEffMoveKey(spep_4+58,ctzuo,150,220,0);
setEffMoveKey(spep_4+68,ctzuo,180,270,0);
setEffScaleKey(spep_4+58,ctzuo,0.5,0.5);
setEffScaleKey(spep_4+68,ctzuo,1.8,1.8);
setEffScaleKey(spep_4+100,ctzuo,1.8,1.8);
setEffRotateKey(spep_4+58,ctzuo,30);
setEffRotateKey(spep_4+97,ctzuo,30);
setEffShake( spep_4,ctzuo,100,20);

playSe(spep_4+58,1022);

--黒背景
entryFadeBg(spep_4, 0, 100, 0, 0, 0, 0, 180);  -- 黒　背景

-- ** エフェクト等 ** --
entryFade(spep_4+95,3,3,3,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_5=spep_4+100;

------------------------------------------------------
-- ビームが当たる
------------------------------------------------------
--エフェクトの再生
hit=entryEffectLife(spep_5,SP_04x,100,0x100,-1,0,0,0);
setEffMoveKey(spep_5,hit,0,0,0);
setEffMoveKey(spep_5+100,hit,0,0,0);
setEffScaleKey(spep_5,hit,1.1,1.0);
setEffScaleKey(spep_5+100,hit,1.1,1.0);
setEffAlphaKey(spep_5,hit,255);
setEffAlphaKey(spep_5+100,hit,255);
setEffRotateKey(spep_5,hit,0);
setEffRotateKey(spep_5+100,hit,0);

--文字エントリー
ctzudo=entryEffectLife(spep_5,10014,100,0x100,-1,50,250);--ズドドド
setEffMoveKey(spep_5,ctzudo,50,320,0);
setEffMoveKey(spep_5+100,ctzudo,50,320,0);
setEffScaleKey(spep_5,ctzudo,3.3,3.4);
setEffScaleKey(spep_5+100,ctzudo,3.3,3.4);
setEffRotateKey(spep_5,ctzudo,0);
setEffRotateKey(spep_5+100,ctzudo,0);
setEffShake(spep_5,ctzudo,100,15);

playSe(spep_5,1018);--ズドドド

--集中線
shuchusen4=entryEffectLife(spep_5,921,100,0x80,-1,20,0,0);-- 集中線
setEffMoveKey(spep_5,shuchusen4,0,0,0);
setEffMoveKey(spep_5+100,shuchusen4,0,0,0);
setEffScaleKey(spep_5,shuchusen4,1.2,1.4);
setEffScaleKey(spep_5+100,shuchusen4,1.2,1.4);
setEffAlphaKey(spep_5,shuchusen4,255);
setEffAlphaKey(spep_5+100,shuchusen4,255);
setEffRotateKey(spep_5,shuchusen4,0);
setEffRotateKey(spep_5+100,shuchusen4,0);

--敵の登場
setDisp(spep_5,1,1);
changeAnime(spep_5,1,104);
setMoveKey(spep_5,1,300,-70,0);
setMoveKey(spep_5+49,1,250,-70,0);
setScaleKey(spep_5,1,1.2,1.2);
setScaleKey(spep_5+30,1,1.8,1.8);
setScaleKey(spep_5+49,1,1.8,1.8);
setRotateKey(spep_5,1,0);
setRotateKey(spep_5+49,1,0);
setShakeChara(spep_5,1,49,15);

--敵の登場
setDisp(spep_5+50,1,1);
changeAnime(spep_5+50,1,108);
setMoveKey(spep_5+50,1,250,-120,0);
setMoveKey(spep_5+100,1,250,-120,0);
setScaleKey(spep_5+50,1,1.8,2.4);
setScaleKey(spep_5+100,1,2.4,2.4);
setRotateKey(spep_5+50,1,20);
setRotateKey(spep_5+100,1,20);
setShakeChara(spep_5+50,1,50,15);


--SE
playSe(  spep_5+38, 1023);

setDisp(spep_5+100,1,0);

--黒背景
entryFadeBg(spep_5, 0, 100, 0, 0, 0, 0, 180);  -- 黒　背景

-- ** エフェクト等 ** --
entryFade(spep_5+89,9,3,5,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_6=spep_5+100;

------------------------------------------------------
-- ギャン(60F)
------------------------------------------------------
setDisp( spep_6-1, 1, 0);

gyan = entryEffect(  spep_6,  190010,  0x100,  -1,  0,  0,  0);  --ギャン
setEffScaleKey(  spep_6,  gyan,  1.0,  1.0);
setEffAlphaKey(  spep_6,  gyan,  255);

-- 書き文字エントリー --
ct_06 = entryEffectLife( spep_6, 10006, 58, 0x100, -1, 0, 0, 300);    -- ギャン

setEffScaleKey( spep_6, ct_06, 1.8, 1.8);
setEffAlphaKey( spep_6, ct_06, 255);
setEffScaleKey( spep_6+10, ct_06, 3.8, 3.8);
setEffScaleKey( spep_6+58, ct_06, 4.3, 4.3);
setEffAlphaKey( spep_6+58, ct_06, 255);
setEffShake( spep_6, ct_06, 58, 10);

playSe(  spep_6, SE_09);

entryFade(  spep_6+47,  6,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryFadeBg(spep_6,0,60,0,0,0,0,255);
entryFade( spep_6+50, 4,  8, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_7 = spep_6+60;

------------------------------------------------------
-- 爆発
------------------------------------------------------

--エフェクトの再生
explosion=entryEffect(spep_7,1686,0x80,-1,0,0,0);
setEffMoveKey(spep_7,explosion,0,0,0);
setEffMoveKey(spep_7+120,explosion,0,0,0);
setEffScaleKey(spep_7,explosion,1.0,1.0);
setEffScaleKey(spep_7+120,explosion,1.0,1.0);
setEffAlphaKey(spep_7,explosion,255);
setEffAlphaKey(spep_7+120,explosion,255);
setEffRotateKey(spep_7,explosion,0);
setEffRotateKey(spep_7+120,explosion,0);

--キャラクターの登場
setDisp(spep_7,0,1);
changeAnime(spep_7,0,2);
setMoveKey(spep_7,0,-150,-180,0);
setMoveKey(spep_7+120,0,-200,-180,0);
setScaleKey(spep_7,0,1.8,1.8);
setScaleKey(spep_7+120,0,1.4,1.4);
setRotateKey(spep_7,0,0);
setRotateKey(spep_7+120,0,0);

--集中線
shuchusen5=entryEffectLife(spep_7,906,46,0x80,-1,20,0,0);-- 集中線
setEffMoveKey(spep_7,shuchusen5,300,500,0);
setEffMoveKey(spep_7+46,shuchusen5,300,500,0);
setEffScaleKey(spep_7,shuchusen5,2.0,2.0);
setEffScaleKey(spep_7+46,shuchusen5,2.0,2.0);
setEffAlphaKey(spep_7,shuchusen5,255);
setEffAlphaKey(spep_7+40,shuchusen5,255);
setEffAlphaKey(spep_7+46,shuchusen5,0);
setEffRotateKey(spep_7,shuchusen5,0);
setEffRotateKey(spep_7+46,shuchusen5,0);

playSe(  spep_7, 1024);

-- ダメージ表示
dealDamage(spep_7+26);
entryFade( spep_7+102, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_7+112);

end