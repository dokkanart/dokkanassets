--1013860　超サイヤ人孫悟飯(未来)　爆裂乱舞　sp1180

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
SP_01 = 151687;--溜め
SP_02 = 151688;--蹴り→移動
SP_03 = 151689;--キャッチ→投げ
SP_04 = 151690;--ドロップキック
SP_05 = 151691;--敵がビルに突っ込む
SP_06 = 151692;--構え
SP_07 = 151693;--放つ
SP_08 = 151694;--爆発



--敵側は味方側に1xをつけてます
SP_01x = 151695;--溜め(敵)
SP_02x = 151696;--蹴り→移動(敵)
SP_03x = 151697;--キャッチ→投げ(敵)
SP_04x = 151698;--ドロップキック(敵)
SP_05x = 151691;--敵がビルに突っ込む
SP_06x = 151692;--構え
SP_07x = 151693;--放つ
SP_08x = 151694;--爆発



multi_frm = 2;

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

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

setScaleKey(   1,   0, 1.6, 1.6);
setScaleKey(   1,   1, 1.6, 1.6);
setRotateKey(   1,   1, 0);
setRotateKey(   1,   0, 0);

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 気だめ
------------------------------------------------------
spep_0=0;

--エフェクトの再生
kidame=entryEffectLife(spep_0,SP_01,90,0x80,-1,0,0,0);
setEffMoveKey(spep_0,kidame,0,0,0);
setEffMoveKey(spep_0+90,kidame,0,0,0);
setEffScaleKey(spep_0,kidame,1.0,1.0);
setEffScaleKey(spep_0+90,kidame,1.0,1.0);
setEffAlphaKey(spep_0,kidame,255);
setEffAlphaKey(spep_0+90,kidame,255);
setEffRotateKey(spep_0,kidame,0);
setEffRotateKey(spep_0+90,kidame,0);

--集中線(横)
shuchusen=entryEffectLife(spep_0+25,906,65,0x80,-1,0,0,0);-- 集中線
setEffMoveKey(spep_0+25,shuchusen,0,0,0);
setEffMoveKey(spep_0+120,shuchusen,0,0,0);
setEffScaleKey(spep_0+25,shuchusen,1.2,1.2);
setEffScaleKey(spep_0+120,shuchusen,1.2,1.2);
setEffAlphaKey(spep_0+25,shuchusen,255);
setEffAlphaKey(spep_0+120,shuchusen,255);
setEffRotateKey(spep_0+25,shuchusen,-60);
setEffRotateKey(spep_0+120,shuchusen,-60);


--文字エントリー
ctzuzuzun=entryEffectLife(spep_0+30,10013,33,0x100,-1,0,0,0);-- ズズズン
setEffMoveKey(spep_0+30,ctzuzuzun,0,300,0);
setEffMoveKey(spep_0+63,ctzuzuzun,0,300,0);
setEffScaleKey(spep_0+30,ctzuzuzun,1.5,1.5);
setEffScaleKey(spep_0+35,ctzuzuzun,2.8,2.8);
setEffScaleKey(spep_0+63,ctzuzuzun,2.8,2.8);
setEffAlphaKey(spep_0+30,ctzuzuzun,255);
setEffAlphaKey(spep_0+60,ctzuzuzun,255);
setEffAlphaKey(spep_0+63,ctzuzuzun,0);
setEffRotateKey(spep_0+30,ctzuzuzun,0);
setEffRotateKey(spep_0+63,ctzuzuzun,0);
setEffShake(spep_0+30,ctzuzuzun,33,15);

--黒背景
entryFadeBg(spep_0, 0, 90, 0, 0, 0, 0, 180);  -- 黒　背景

--SE--
playSe(spep_0+30,SE_01);--バキ
playSe(spep_0+70,43);--瞬間移動-

-- ** エフェクト等 ** --
entryFade(spep_0+24,0,4,10,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_0+83,3,5,3,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
--次の準備
spep_1=spep_0+90;

------------------------------------------------------
-- 蹴り→移動
------------------------------------------------------

--エフェクトの再生
kick=entryEffectLife(spep_1,SP_02,120,0x100,-1,0,0,0);
setEffMoveKey(spep_1,kick,0,0,0);
setEffMoveKey(spep_1+120,kick,0,0,0);
setEffScaleKey(spep_1,kick,1.0,1.0);
setEffScaleKey(spep_1+120,kick,1.0,1.0);
setEffAlphaKey(spep_1,kick,255);
setEffAlphaKey(spep_1+120,kick,255);
setEffRotateKey(spep_1,kick,0);
setEffRotateKey(spep_1+120,kick,0);



--集中線(横)
shuchusen2=entryEffectLife(spep_1+57,921,63,0x80,-1,0,0,0);-- 集中線
setEffMoveKey(spep_1+54,shuchusen2,0,0,0);
setEffMoveKey(spep_1+120,shuchusen2,0,0,0);
setEffScaleKey(spep_1+54,shuchusen2,1.4,1.4);
setEffScaleKey(spep_1+120,shuchusen2,1.4,1.4);
setEffAlphaKey(spep_1+57,shuchusen2,0);
setEffAlphaKey(spep_1+60,shuchusen2,255);
setEffAlphaKey(spep_1+61,shuchusen2,255);
setEffAlphaKey(spep_1+120,shuchusen2,255);
setEffRotateKey(spep_1+54,shuchusen2,-70);
setEffRotateKey(spep_1+120,shuchusen2,-70);

--集中線(横)
shuchusen1=entryEffectLife(spep_1+33,906,37,0x100,-1,0,0,0);-- 集中線
setEffMoveKey(spep_1+33,shuchusen1,0,0,0);
setEffMoveKey(spep_1+70,shuchusen1,0,0,0);
setEffScaleKey(spep_1+33,shuchusen1,1.2,1.2);
setEffScaleKey(spep_1+70,shuchusen1,1.2,1.2);
setEffAlphaKey(spep_1+33,shuchusen1,255);
setEffAlphaKey(spep_1+70,shuchusen1,255);
setEffRotateKey(spep_1+33,shuchusen1,0);
setEffRotateKey(spep_1+70,shuchusen1,0);

--文字エントリー
ctbqki=entryEffectLife(spep_1+33,10020,19,0x100,-1,0,0);--バキッ
setEffMoveKey(spep_1+33,ctbqki,60,240,0);
setEffMoveKey(spep_1+54,ctbqki,60,270,0);

setEffScaleKey(spep_1+33,ctbqki, 1.6, 1.6);
setEffScaleKey(spep_1+35,ctbqki, 1.6, 1.6);
setEffScaleKey(spep_1+36,ctbqki, 1.8, 1.8);
setEffScaleKey(spep_1+38,ctbqki, 1.8, 1.8);
setEffScaleKey(spep_1+39,ctbqki, 2.7, 2.7);
setEffScaleKey(spep_1+41,ctbqki, 2.7, 2.7);
setEffScaleKey(spep_1+42,ctbqki, 2.1, 2.1);
setEffScaleKey(spep_1+44,ctbqki, 2.1, 2.1);
setEffScaleKey(spep_1+54,ctbqki, 2.2, 2.2);

setEffRotateKey(spep_1+33,ctbqki,30);
setEffRotateKey(spep_1+35,ctbqki,30);
setEffRotateKey(spep_1+36,ctbqki,0);
setEffRotateKey(spep_1+38,ctbqki,0);
setEffRotateKey(spep_1+39,ctbqki,10);
setEffRotateKey(spep_1+41,ctbqki,10);
setEffRotateKey(spep_1+42,ctbqki,30);
setEffRotateKey(spep_1+44,ctbqki,30);
setEffRotateKey(spep_1+45,ctbqki,10);
setEffRotateKey(spep_1+54,ctbqki,10);

setEffAlphaKey(spep_1+33,ctbqki,255);
setEffAlphaKey(spep_1+44,ctbqki,255);
setEffAlphaKey(spep_1+54,ctbqki,0);


--敵が登場
setDisp( spep_1, 1, 1);
changeAnime(spep_1, 1, 101);
setMoveKey(spep_1,1,40,0,0);
setMoveKey(spep_1+32,1,40,0,0);
setScaleKey(spep_1,1,1.3,1.3);
setScaleKey(spep_1+32,1,1.3,1.3);
setRotateKey(spep_1,1 ,0);
setRotateKey(spep_1+32,1 ,0);
--setShakeChara(spep_1,1,40,15);

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_1+4 ; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

pauseAll( SP_dodge, 67);

--キャラクターの固定
setMoveKey(SP_dodge, 1, 40 , 0, 0);
setScaleKey(SP_dodge , 1 , 1.3 ,1.3);
setRotateKey(SP_dodge,   1, 0);

--キャラクターの固定
setMoveKey(SP_dodge+8, 1, 40 , 0, 0);
setScaleKey(SP_dodge+8 , 1 , 1.3 ,1.3);
setRotateKey(SP_dodge+8,   1, 0);

setDisp(SP_dodge+9, 0, 0);
setDisp(SP_dodge+9, 1, 0);
setMoveKey(SP_dodge+9, 1, 0 , 0, 0);
setScaleKey(SP_dodge+9,  1 , 1.3 ,1.3);
setRotateKey(SP_dodge+9,   1, 0);

setMoveKey(SP_dodge+10, 1, 0 , 0, 0);
setScaleKey(SP_dodge+10,  1 , 1.3 ,1.3);
setRotateKey(SP_dodge+10,   1, 0);

--悟飯を画面外に表示
setMoveKey(SP_dodge+9, 0, 1000 , 1000, 0);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
--entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景

entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge+10);

do return end
else end

--------------------------------------
--回避しなかった場合
--------------------------------------

--敵がダメージを受ける
setDisp( spep_1+33, 1, 1);
changeAnime(spep_1+33, 1, 108);
setMoveKey(spep_1+33,1,130,120,0);
setMoveKey(spep_1+42,1,130,130,0);
setScaleKey(spep_1+33,1,1.8,1.8);
setScaleKey(spep_1+42,1,1.3,1.3);
setRotateKey(spep_1+33,1 ,-40);
setRotateKey(spep_1+42,1 ,-40);
setShakeChara(spep_1+33,1,46,15);

--敵反り返る
setDisp( spep_1+43, 1, 1);
changeAnime(spep_1+43,1, 106);
setMoveKey(spep_1+43,1,100,110,0);
setMoveKey(spep_1+56,1,100,110,0);
setScaleKey(spep_1+43,1,1.1,1.1);
setScaleKey(spep_1+56,1,1.1,1.1);
setRotateKey(spep_1+43,1 ,-35);
setRotateKey(spep_1+56,1 ,-35);
setShakeChara(spep_1+47,1,9,15);


--敵が飛んで行く
setDisp( spep_1+57, 1, 1);
setDisp( spep_1+120, 1, 0);
changeAnime(spep_1+57, 1, 5);

setMoveKey(spep_1+57, 1,150,160,0);
setMoveKey(spep_1+83,1,190,360,0);
setMoveKey(spep_1+120,1,200,370,0);

setScaleKey(spep_1+57,1,1.0,1.0);
setScaleKey(spep_1+83,1,0.2,0.2);
setScaleKey(spep_1+120,1,0.1,0.1);

setRotateKey(spep_1+57,1 ,50);
setRotateKey(spep_1+120,1 ,50);

setShakeChara(spep_1+57,1,73,10);

-- ** エフェクト等 ** --
--entryFade(spep_1,3,3,3,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_1+33,0,0,6,fcolor_r,fcolor_g,fcolor_b,180);     -- white fade
entryFade(spep_1+114,3,3,6,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade


--SE
playSe(spep_1+33,1009);--バキ
playSe(spep_1+98,1018);--移動
playSe(spep_1+5,43);--瞬間移動-

--黒背景
entryFadeBg(spep_1, 0, 120, 0, 0, 0, 0, 180);  -- 黒　背景
--次の準備
spep_2=spep_1+120;

------------------------------------------------------
-- キャッチ→投げ
------------------------------------------------------

--集中線(横)
shuchusen3=entryEffectLife(spep_2,921,86,0x80,-1,0,0,0);-- 集中線
setEffMoveKey(spep_2,shuchusen3,0,0,0);
setEffMoveKey(spep_2+89,shuchusen3,0,0,0);
setEffScaleKey(spep_2,shuchusen3,1.6,1.6);
setEffScaleKey(spep_2+89,shuchusen3,1.6,1.6);
setEffAlphaKey(spep_2,shuchusen3,255);
setEffAlphaKey(spep_2+89,shuchusen3,255);
setEffRotateKey(spep_2,shuchusen3,-73);
setEffRotateKey(spep_2+89,shuchusen3,-73);


--集中線(横)
shuchusen4=entryEffectLife(spep_2+87,921,40,0x80,-1,0,0,0);-- 集中線
setEffMoveKey(spep_2+87,shuchusen4,0,0,0);
setEffMoveKey(spep_2+130,shuchusen4,0,0,0);
setEffScaleKey(spep_2+87,shuchusen4,1.4,1.4);
setEffScaleKey(spep_2+130,shuchusen4,1.4,1.4);
setEffAlphaKey(spep_2+87,shuchusen4,255);
setEffAlphaKey(spep_2+130,shuchusen4,255);
setEffRotateKey(spep_2+87,shuchusen4,225);
setEffRotateKey(spep_2+130,shuchusen4,225);

--集中線(横)
shuchusen5=entryEffectLife(spep_2+60,906,70,0x100,-1,0,0,0);-- 集中線
setEffMoveKey(spep_2+60,shuchusen5,0,0,0);
setEffMoveKey(spep_2+130,shuchusen5,0,0,0);
setEffScaleKey(spep_2+60,shuchusen5,1.2,1.2);
setEffScaleKey(spep_2+130,shuchusen5,1.2,1.2);
setEffAlphaKey(spep_2+60,shuchusen5,255);
setEffAlphaKey(spep_2+130,shuchusen5,255);
setEffRotateKey(spep_2+60,shuchusen5,0);
setEffRotateKey(spep_2+130,shuchusen5,0);

--文字エントリー
ctga=entryEffectLife(spep_2+61,10005,23,0x100,-1,0,0);--ガ

setEffMoveKey(spep_2+61,ctga,-100,300,0);
setEffMoveKey(spep_2+83,ctga,-100,300,0);

setEffScaleKey(spep_2+60,ctga, 1.8, 1.8);
setEffScaleKey(spep_2+62,ctga, 1.8, 1.8);
setEffScaleKey(spep_2+68,ctga, 2.3, 2.3);
setEffScaleKey(spep_2+69,ctga, 2.5, 2.5);
setEffScaleKey(spep_2+83,ctga, 1.5, 1.5);

setEffShake(spep_2+61,ctga,23,15);

setEffRotateKey(spep_2+60,ctga,-20);
setEffRotateKey(spep_2+62,ctga,-20);
setEffRotateKey(spep_2+63,ctga,-30);
setEffRotateKey(spep_2+65,ctga,-30);
setEffRotateKey(spep_2+66,ctga,10);
setEffRotateKey(spep_2+68,ctga,10);
setEffRotateKey(spep_2+69,ctga,-20);
setEffRotateKey(spep_2+83,ctga,-20);

setEffAlphaKey(spep_2+60,ctga,255);
setEffAlphaKey(spep_2+69,ctga,255);
setEffAlphaKey(spep_2+83,ctga,0);



--エフェクトの再生
throwing=entryEffectLife(spep_2,SP_03,125,0x80,-1,0,0,0);
setEffMoveKey(spep_2,throwing,0,0,0);
setEffMoveKey(spep_2+130,throwing,0,0,0);
setEffScaleKey(spep_2,throwing,1.0,1.0);
setEffScaleKey(spep_2+130,throwing,1.0,1.0);
setEffAlphaKey(spep_2,throwing,255);
setEffAlphaKey(spep_2+86,throwing,255);
setEffAlphaKey(spep_2+87,throwing,0);
setEffAlphaKey(spep_2+130,throwing,0);
setEffRotateKey(spep_2,throwing,0);
setEffRotateKey(spep_2+130,throwing,0);

--エフェクトの再生
throwing1=entryEffectLife(spep_2,SP_03,130,0x100,-1,0,0,0);
setEffMoveKey(spep_2,throwing1,0,0,0);
setEffMoveKey(spep_2+130,throwing1,0,0,0);
setEffScaleKey(spep_2,throwing1,1.0,1.0);
setEffScaleKey(spep_2+130,throwing1,1.0,1.0);
setEffAlphaKey(spep_2,throwing1,0);
setEffAlphaKey(spep_2+86,throwing1,0);
setEffAlphaKey(spep_2+87,throwing1,255);
setEffAlphaKey(spep_2+130,throwing1,255);
setEffRotateKey(spep_2,throwing1,0);
setEffRotateKey(spep_2+130,throwing1,0);


--敵が飛んで行くる
setDisp( spep_2+40, 1, 1);
changeAnime(spep_2+40, 1, 5);
setMoveKey(spep_2+40, 1,-600,-900,0);
setMoveKey(spep_2+58,1,0,-10,0);

setScaleKey(spep_2+40,1,5.0,5.0);
setScaleKey(spep_2+58,1,1.5,1.5);

setRotateKey(spep_2+40,1 ,58);
setRotateKey(spep_2+58,1 ,58);
setShakeChara(spep_2+40,1,6,15);

--キャッチする
setDisp( spep_2+59, 1, 1);
changeAnime(spep_2+59, 1, 8);
setMoveKey(spep_2+59, 1,200,120,0);
setMoveKey(spep_2+86,1,200,120,0);
setScaleKey(spep_2+59,1,1.5,1.5);
setScaleKey(spep_2+86,1,1.5,1.5);
setRotateKey(spep_2+59,1 ,22);
setRotateKey(spep_2+86,1 ,22);
setShakeChara(spep_2+59,1,37,15);

--敵を投げる
setDisp( spep_2+87, 1, 1);
changeAnime(spep_2+87, 1, 8);

setMoveKey(spep_2+87, 1,-40,115,0);
setMoveKey(spep_2+110,1,-800,970,0);

setScaleKey(spep_2+87,1,1.5,1.5);
setScaleKey(spep_2+98,1,0.3,0.3);

setRotateKey(spep_2+87,1 ,20);
setRotateKey(spep_2+129,1 ,20);
setShakeChara(spep_2+87,1,32,15);

--SE--
playSe(  spep_2+59,1001);--敵を投げる-
playSe(spep_2+88,1005);--敵を投げる-
playSe(spep_2+110,43);--瞬間移動-

-- ** エフェクト等 ** --
entryFade(spep_2+59,0,0,4,fcolor_r,fcolor_g,fcolor_b,180);     -- white fade
entryFade(spep_2+86,0,0,4,fcolor_r,fcolor_g,fcolor_b,180);     -- white fade
entryFade(spep_2+120,4,7,6,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

setDisp( spep_2+110, 1, 0);

--黒背景
entryFadeBg(spep_2, 0, 130, 0, 0, 0, 0, 180);  -- 黒　背景

--次の準備
spep_3=spep_2+130;



------------------------------------------------------
---ドロップキック
------------------------------------------------------
--エフェクトの再生
dropkick=entryEffectLife(spep_3,SP_04,90,0x100,-1,0,0,0);
setEffMoveKey(spep_3,dropkick,0,0,0);
setEffMoveKey(spep_3+90,dropkick,0,0,0);
setEffScaleKey(spep_3,dropkick,1.0,1.0);
setEffScaleKey(spep_3+90,dropkick,1.0,1.0);
setEffAlphaKey(spep_3,dropkick,255);
setEffAlphaKey(spep_3+90,dropkick,255);
setEffRotateKey(spep_3,dropkick,0);
setEffRotateKey(spep_3+90,dropkick,0);

--飛んでくる
setDisp( spep_3+14, 1, 1);
changeAnime(spep_3+14, 1, 8);

setMoveKey(spep_3+14, 1,510,-510,0);
setMoveKey(spep_3+16,1,100,-100,0);
setMoveKey(spep_3+30,1,0,0,0);

setScaleKey(spep_3+14,1,2.4,2.4);
setScaleKey(spep_3+16,1,2.4,2.4);
setScaleKey(spep_3+30,1,1.8,1.8);

setRotateKey(spep_3+14,1 ,30);
setRotateKey(spep_3+30,1 ,30);

setShakeChara(spep_3+14,1,30,15);

--蹴りが当たる
setDisp( spep_3+31, 1, 1);
changeAnime(spep_3+31, 1, 107);

setMoveKey(spep_3+31, 1,40,-100,0);
setMoveKey(spep_3+56, 1,110,-120,0);
setMoveKey(spep_3+63,1,710,-710,0);
setScaleKey(spep_3+31,1,0.7,0.7);
setScaleKey(spep_3+56,1,0.7,0.7);
setScaleKey(spep_3+57,1,0.9,0.9);
--setScaleKey(spep_3+63,1,0.9,0.9);
setScaleKey(spep_3+63,1,1.2,1.2);
setRotateKey(spep_3+31,1 ,0);
setRotateKey(spep_3+89,1 ,0);
setShakeChara(spep_3+31,1,42,15);

setDisp( spep_3+63, 1, 0);

--集中線(横)
shuchusen6=entryEffectLife(spep_3,921,90,0x80,-1,0,0,0);-- 集中線
setEffMoveKey(spep_3,shuchusen6,0,0,0);
setEffMoveKey(spep_3+90,shuchusen6,0,0,0);
setEffScaleKey(spep_3,shuchusen6,1.4,1.4);
setEffScaleKey(spep_3+90,shuchusen6,1.4,1.4);
setEffAlphaKey(spep_3,shuchusen6,255);
setEffAlphaKey(spep_3+90,shuchusen6,255);
setEffRotateKey(spep_3,shuchusen6,225);
setEffRotateKey(spep_3+90,shuchusen6,225);

--集中線(横)
shuchusen13=entryEffectLife(spep_3+31,906,59,0x80,-1,0,0,0);-- 集中線
setEffMoveKey(spep_3+31,shuchusen13,0,0,0);
setEffMoveKey(spep_3+90,shuchusen13,0,0,0);
setEffScaleKey(spep_3+31,shuchusen13,1.2,1.2);
setEffScaleKey(spep_3+90,shuchusen13,1.2,1.2);
setEffAlphaKey(spep_3+31,shuchusen13,255);
setEffAlphaKey(spep_3+90,shuchusen13,255);
setEffRotateKey(spep_3+31,shuchusen13,0);
setEffRotateKey(spep_3+90,shuchusen13,0);

--文字エントリー
ctdogon=entryEffectLife(spep_3+31,10018,18,0x80,-1,0,250);--ドゴォンッ
setEffMoveKey(spep_3+31,ctdogon,150,350,0);
setEffMoveKey(spep_3+49,ctdogon,150,350,0);
setEffScaleKey(spep_3+31,ctdogon,5.3,4.8);
setEffScaleKey(spep_3+35,ctdogon,5.3,4.8);
setEffScaleKey(spep_3+36,ctdogon,2.9,3.2);
setEffScaleKey(spep_3+49,ctdogon,2.9,3.2);
setEffRotateKey(spep_3+31,ctdogon,30);
setEffRotateKey(spep_3+49,ctdogon,30);
setEffShake(spep_3+31,ctdogon,18,15);
setEffAlphaKey(spep_3+31,ctdogon,255);
setEffAlphaKey(spep_3+42,ctdogon,255);
setEffAlphaKey(spep_3+43,ctdogon,255);
setEffAlphaKey(spep_3+49,ctdogon,0);

-- ** エフェクト等 ** --
entryFade(spep_3+31,0,3,3,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_3+83,4,3,6,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--SE--
playSe(spep_3+2,43);--瞬間移動-	
playSe( spep_3+36, 1010);--ドゴォン

--黒背景
entryFadeBg(spep_3, 0, 90, 0, 0, 0, 0, 180);  -- 黒　背景

--次の準備
spep_4=spep_3+90;

------------------------------------------------------
---敵がビルに突っ込む
------------------------------------------------------

--エフェクトの再生
building=entryEffectLife(spep_4,SP_05,99,0x80,-1,0,0,0);
setEffMoveKey(spep_4,building,0,0,0);
setEffMoveKey(spep_4+100,building,0,0,0);
setEffScaleKey(spep_4,building,1.0,1.0);
setEffScaleKey(spep_4+100,building,1.0,1.0);
setEffAlphaKey(spep_4,building,255);
setEffAlphaKey(spep_4+100,building,255);
setEffRotateKey(spep_4,building,0);
setEffRotateKey(spep_4+100,building,0);

--敵が飛んで行く
setDisp( spep_4, 1, 1);
setDisp( spep_4+26, 1, 0);
changeAnime(spep_4, 1, 5);
setMoveKey(spep_4, 1,-50,-200,0);
setMoveKey(spep_4+30,1,0,-25,0);
setScaleKey(spep_4,1,6.0,6.0);
setScaleKey(spep_4+25,1,0.1,0.1);
setScaleKey(spep_4+33,1,0.1,0.1);
setRotateKey(spep_4,1,20);
setRotateKey(spep_4+35,1,20);
setShakeChara(spep_4,1,30,15);

--文字エントリー
ctdogon2=entryEffectLife(spep_4+34,10018,51,0x100,-1,0,250);--ドゴォンッ
setEffMoveKey(spep_4+34,ctdogon2,100,400,0);
setEffMoveKey(spep_4+85,ctdogon2,100,400,0);

setEffScaleKey(spep_4+34,ctdogon2,4.3,4.3);
setEffScaleKey(spep_4+38,ctdogon2,4.3,4.3);
setEffScaleKey(spep_4+39,ctdogon2,3.5,3.5);
setEffScaleKey(spep_4+83,ctdogon2,3.5,3.5);
setEffRotateKey(spep_4+34,ctdogon2,10);
setEffRotateKey(spep_4+85,ctdogon2,10);
setEffShake(spep_4+34,ctdogon2,51,15);
setEffAlphaKey(spep_4+34,ctdogon2,255);
setEffAlphaKey(spep_4+38,ctdogon2,255);
setEffAlphaKey(spep_4+78,ctdogon2,255);
setEffAlphaKey(spep_4+85,ctdogon2,0);


--SE--
playSe( spep_4+34, SE_09);--ドゴォン


--集中線(横)
shuchusen7=entryEffectLife(spep_4+34,906,56,0x80,-1,0,0,0);-- 集中線
setEffMoveKey(spep_4+34,shuchusen7,0,0,0);
setEffMoveKey(spep_4+90,shuchusen7,0,0,0);
setEffScaleKey(spep_4+34,shuchusen7,1.2,1.2);
setEffScaleKey(spep_4+90,shuchusen7,1.2,1.2);
setEffAlphaKey(spep_4+34,shuchusen7,255);
setEffAlphaKey(spep_4+90,shuchusen7,255);
setEffRotateKey(spep_4+34,shuchusen7,0);
setEffRotateKey(spep_4+90,shuchusen7,0);

-- ** エフェクト等 ** --
entryFade(spep_4+25,2,4,6,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_4+91,4,5,2,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade



setDisp( spep_4+34, 1, 0);
--次の準備
spep_5=spep_4+100;

------------------------------------------------------
---構え
------------------------------------------------------
--エフェクトの再生
tame=entryEffectLife(spep_5,SP_06,110,0x100,-1,0,0,0);
setEffMoveKey(spep_5,tame,0,0,0);
setEffMoveKey(spep_5+110,tame,0,0,0);
setEffScaleKey(spep_5,tame,1.0,1.0);
setEffScaleKey(spep_5+110,tame,1.0,1.0);
setEffAlphaKey(spep_5,tame,255);
setEffAlphaKey(spep_5+110,tame,255);
setEffRotateKey(spep_5,tame,0);
setEffRotateKey(spep_5+110,tame,0);

speff=entryEffect(spep_5+6,1504,0x100,-1,0,0,0);  --カットイン(顔)
setEffReplaceTexture(speff,3,2);  --カットイン差し替え
speff1=entryEffect(spep_5+6,1505,0x100,-1,0,0,0);  --カットイン(セリフ)
setEffReplaceTexture(speff1,4,5);  --セリフカットイン差し替え


--文字エントリー
ctgogo=entryEffectLife(spep_5+19,190006,69,0x100,-1,110,500);--ゴゴゴ
setEffMoveKey(spep_5+19,ctgogo,110,500,0);
setEffMoveKey(spep_5+93,ctgogo,110,500,0);
setEffScaleKey(spep_5+19, ctgogo, 0.7, 0.7);
setEffScaleKey(spep_5+93, ctgogo, 0.7, 0.7);

--集中線(横)
shuchusen8=entryEffectLife(spep_5,906,110,0x100,-1,0,0,0);-- 集中線
setEffMoveKey(spep_5,shuchusen8,0,0,0);
setEffMoveKey(spep_5+110,shuchusen8,0,0,0);
setEffScaleKey(spep_5,shuchusen8,1.2,1.2);
setEffScaleKey(spep_5+110,shuchusen8,1.2,1.2);
setEffAlphaKey(spep_5,shuchusen8,255);
setEffAlphaKey(spep_5+110,shuchusen8,255);
setEffRotateKey(spep_5,shuchusen8,0);
setEffRotateKey(spep_5+110,shuchusen8,0);

--SE
playSe( spep_5+19, SE_05); --ゴゴゴ

-- ** エフェクト等 ** --
entryFade(spep_5+104,4,2,3,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--黒背景
entryFadeBg(spep_5, 0, 110, 0, 0, 0, 0, 180);  -- 黒　背景

--次の準備
spep_6=spep_5+110;

--------------------------------------
--カードカットイン(90F)
--------------------------------------

playSe(spep_6,SE_05);
shuchusen9=entryEffectLife(spep_6,906,90,0x100,-1,0,0,0);   -- 集中線
setEffScaleKey(spep_6,shuchusen9,1.6,1.6);

speff2=entryEffect(spep_6,1507,0,-1,0,0,0);   -- カード
setEffReplaceTexture(speff2,1,1);
setEffReplaceTexture(speff2,2,0);-- カード差し替え
setEffReplaceTexture(speff2,5,4);-- 技名テクスチャ差し替え

-- ** エフェクト等 ** --
entryFade(spep_6+85,3,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_7=spep_6+90;

------------------------------------------------------
--放つ
------------------------------------------------------
--エフェクトの再生
beam=entryEffectLife(spep_7,SP_07,100,0x100,-1,0,0,0);
setEffMoveKey(spep_7,beam,0,0,0);
setEffMoveKey(spep_7+100,beam,0,0,0);
setEffScaleKey(spep_7,beam,1.0,1.0);
setEffScaleKey(spep_7+100,beam,1.0,1.0);
setEffAlphaKey(spep_7,beam,255);
setEffAlphaKey(spep_7+100,beam,255);
setEffRotateKey(spep_7,beam,0);
setEffRotateKey(spep_7+100,beam,0);

--集中線(横)
shuchusen8=entryEffectLife(spep_7,923,100,0x80,-1,0,0,0);-- 集中線
setEffMoveKey(spep_7,shuchusen8,0,0,0);
setEffMoveKey(spep_7+100,shuchusen8,0,0,0);
setEffScaleKey(spep_7,shuchusen8,1.2,1.2);
setEffScaleKey(spep_7+100,shuchusen8,1.2,1.2);
setEffAlphaKey(spep_7,shuchusen8,255);
setEffAlphaKey(spep_7+100,shuchusen8,255);
setEffRotateKey(spep_7,shuchusen8,0);
setEffRotateKey(spep_7+100,shuchusen8,0);

--集中線(横)
shuchusen10=entryEffectLife(spep_7,923,100,0x80,-1,0,0,0);-- 集中線
setEffMoveKey(spep_7,shuchusen10,0,0,0);
setEffMoveKey(spep_7+100,shuchusen10,0,0,0);
setEffScaleKey(spep_7,shuchusen10,1.2,1.2);
setEffScaleKey(spep_7+100,shuchusen10,1.2,1.2);
setEffAlphaKey(spep_7,shuchusen10,255);
setEffAlphaKey(spep_7+100,shuchusen10,255);
setEffRotateKey(spep_7,shuchusen10,0);
setEffRotateKey(spep_7+100,shuchusen10,0);

--集中線(横)
shuchusen11=entryEffectLife(spep_7,906,100,0x100,-1,0,0,0);-- 集中線
setEffMoveKey(spep_7,shuchusen11,0,0,0);
setEffMoveKey(spep_7+100,shuchusen11,0,0,0);
setEffScaleKey(spep_7,shuchusen11,1.2,1.2);
setEffScaleKey(spep_7+100,shuchusen11,1.2,1.2);
setEffAlphaKey(spep_7,shuchusen11,255);
setEffAlphaKey(spep_7+100,shuchusen11,255);
setEffRotateKey(spep_7,shuchusen11,0);
setEffRotateKey(spep_7+100,shuchusen11,0);

--文字エントリー
ctzuo=entryEffectLife(spep_7,10012,49,0x100,-1,0,0);-- ズオッ
setEffMoveKey(spep_7,ctzuo,200,300,0);
setEffMoveKey(spep_7+49,ctzuo,200,300,0);
setEffScaleKey(spep_7,ctzuo,0.5,0.5);
--setEffScaleKey(spep_7+3,ctzuo,3.5,3.5);
setEffScaleKey(spep_7+20,ctzuo,3.0,3.0);
setEffScaleKey(spep_7+49,ctzuo,3.5,3.5);
setEffAlphaKey(spep_7,ctzuo,255);
setEffAlphaKey(spep_7+40,ctzuo,255);
setEffAlphaKey(spep_7+49,ctzuo,0);
setEffRotateKey(spep_7,ctzuo,30);
setEffRotateKey(spep_7+49,ctzuo,30);
setEffShake(spep_7,ctzuo,49,15);

--SE
playSe(spep_7,1018);--ズオッ

--黒背景
entryFadeBg(spep_7, 0, 100, 0, 0, 0, 0, 180);  -- 黒　背景

-- ** エフェクト等 ** --
entryFade(spep_7+95,0,6,0,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_8=spep_7+100

------------------------------------------------------
-- ギャン(60F)
------------------------------------------------------
setDisp( spep_8-1, 1, 0);

gyan = entryEffect(  spep_8,  190000,  0x100,  -1,  0,  0,  0);  --ギャン
setEffScaleKey(  spep_8,  gyan,  1.0,  1.0);
setEffAlphaKey(  spep_8,  gyan,  255);

-- 書き文字エントリー --
ct_06 = entryEffectLife( spep_8, 10006, 58, 0x100, -1, 0, 0, 300);    -- ギャン

setEffScaleKey( spep_8, ct_06, 1.8, 1.8);
setEffAlphaKey( spep_8, ct_06, 255);
setEffScaleKey( spep_8+10, ct_06, 3.8, 3.8);
setEffScaleKey( spep_8+58, ct_06, 4.3, 4.3);
setEffAlphaKey( spep_8+58, ct_06, 255);
setEffShake( spep_8, ct_06, 58, 10);

playSe(  spep_8, SE_09);

entryFade(  spep_8+47,  6,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryFadeBg(spep_8,0,60,0,0,0,0,255);
entryFade( spep_8+50, 4,  8, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_9 = spep_8+60;

------------------------------------------------------
--爆発
------------------------------------------------------
--エフェクトの再生
explosion=entryEffect(spep_9,SP_08,0x100,-1,0,0,0);
setEffMoveKey(spep_9,explosion,0,0,0);
setEffMoveKey(spep_9+160,explosion,0,0,0);
setEffScaleKey(spep_9,explosion,1.0,1.0);
setEffScaleKey(spep_9+160,explosion,1.0,1.0);
setEffAlphaKey(spep_9,explosion,255);
setEffAlphaKey(spep_9+160,explosion,255);
setEffRotateKey(spep_9,explosion,0);
setEffRotateKey(spep_9+160,explosion,0);

--SE--
playSe( spep_9, SE_09);--爆発


--集中線(横)
shuchusen12=entryEffectLife(spep_9,906,160,0x100,-1,0,0,0);-- 集中線
setEffMoveKey(spep_9,shuchusen12,0,0,0);
setEffMoveKey(spep_9+160,shuchusen12,0,0,0);
setEffScaleKey(spep_9,shuchusen12,1.2,1.2);
setEffScaleKey(spep_9+160,shuchusen12,1.2,1.2);
setEffAlphaKey(spep_9,shuchusen12,255);
setEffAlphaKey(spep_9+160,shuchusen12,255);
setEffRotateKey(spep_9,shuchusen12,0);
setEffRotateKey(spep_9+160,shuchusen12,0);

-- ダメージ表示
dealDamage(spep_9+56);
entryFade( spep_9+140, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_9+150);

else
------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

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

setScaleKey(   1,   0, 1.6, 1.6);
setScaleKey(   1,   1, 1.6, 1.6);
setRotateKey(   1,   1, 0);
setRotateKey(   1,   0, 0);

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 気だめ
------------------------------------------------------
spep_0=0;

--エフェクトの再生
kidame=entryEffectLife(spep_0,SP_01x,90,0x80,-1,0,0,0);
setEffMoveKey(spep_0,kidame,0,0,0);
setEffMoveKey(spep_0+90,kidame,0,0,0);
setEffScaleKey(spep_0,kidame,1.0,1.0);
setEffScaleKey(spep_0+90,kidame,1.0,1.0);
setEffAlphaKey(spep_0,kidame,255);
setEffAlphaKey(spep_0+90,kidame,255);
setEffRotateKey(spep_0,kidame,0);
setEffRotateKey(spep_0+90,kidame,0);

--集中線(横)
shuchusen=entryEffectLife(spep_0+25,906,65,0x80,-1,0,0,0);-- 集中線
setEffMoveKey(spep_0+25,shuchusen,0,0,0);
setEffMoveKey(spep_0+120,shuchusen,0,0,0);
setEffScaleKey(spep_0+25,shuchusen,1.2,1.2);
setEffScaleKey(spep_0+120,shuchusen,1.2,1.2);
setEffAlphaKey(spep_0+25,shuchusen,255);
setEffAlphaKey(spep_0+120,shuchusen,255);
setEffRotateKey(spep_0+25,shuchusen,-60);
setEffRotateKey(spep_0+120,shuchusen,-60);


--文字エントリー
ctzuzuzun=entryEffectLife(spep_0+30,10013,33,0x100,-1,0,0,0);-- ズズズン
setEffMoveKey(spep_0+30,ctzuzuzun,0,300,0);
setEffMoveKey(spep_0+63,ctzuzuzun,0,300,0);
setEffScaleKey(spep_0+30,ctzuzuzun,1.5,1.5);
setEffScaleKey(spep_0+35,ctzuzuzun,2.8,2.8);
setEffScaleKey(spep_0+63,ctzuzuzun,2.8,2.8);
setEffAlphaKey(spep_0+30,ctzuzuzun,255);
setEffAlphaKey(spep_0+60,ctzuzuzun,255);
setEffAlphaKey(spep_0+63,ctzuzuzun,0);
setEffRotateKey(spep_0+30,ctzuzuzun,0);
setEffRotateKey(spep_0+63,ctzuzuzun,0);
setEffShake(spep_0+30,ctzuzuzun,33,15);

--黒背景
entryFadeBg(spep_0, 0, 90, 0, 0, 0, 0, 180);  -- 黒　背景

--SE--
playSe(spep_0+30,SE_01);--バキ
playSe(spep_0+70,43);--瞬間移動-

-- ** エフェクト等 ** --
entryFade(spep_0+24,0,4,10,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_0+83,3,5,3,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
--次の準備
spep_1=spep_0+90;

------------------------------------------------------
-- 蹴り→移動
------------------------------------------------------

--エフェクトの再生
kick=entryEffectLife(spep_1,SP_02x,120,0x100,-1,0,0,0);
setEffMoveKey(spep_1,kick,0,0,0);
setEffMoveKey(spep_1+120,kick,0,0,0);
setEffScaleKey(spep_1,kick,1.0,1.0);
setEffScaleKey(spep_1+120,kick,1.0,1.0);
setEffAlphaKey(spep_1,kick,255);
setEffAlphaKey(spep_1+120,kick,255);
setEffRotateKey(spep_1,kick,0);
setEffRotateKey(spep_1+120,kick,0);



--集中線(横)
shuchusen2=entryEffectLife(spep_1+57,921,63,0x80,-1,0,0,0);-- 集中線
setEffMoveKey(spep_1+54,shuchusen2,0,0,0);
setEffMoveKey(spep_1+120,shuchusen2,0,0,0);
setEffScaleKey(spep_1+54,shuchusen2,1.4,1.4);
setEffScaleKey(spep_1+120,shuchusen2,1.4,1.4);
setEffAlphaKey(spep_1+57,shuchusen2,0);
setEffAlphaKey(spep_1+60,shuchusen2,255);
setEffAlphaKey(spep_1+61,shuchusen2,255);
setEffAlphaKey(spep_1+120,shuchusen2,255);
setEffRotateKey(spep_1+54,shuchusen2,-70);
setEffRotateKey(spep_1+120,shuchusen2,-70);

--集中線(横)
shuchusen1=entryEffectLife(spep_1+33,906,37,0x100,-1,0,0,0);-- 集中線
setEffMoveKey(spep_1+33,shuchusen1,0,0,0);
setEffMoveKey(spep_1+70,shuchusen1,0,0,0);
setEffScaleKey(spep_1+33,shuchusen1,1.2,1.2);
setEffScaleKey(spep_1+70,shuchusen1,1.2,1.2);
setEffAlphaKey(spep_1+33,shuchusen1,255);
setEffAlphaKey(spep_1+70,shuchusen1,255);
setEffRotateKey(spep_1+33,shuchusen1,0);
setEffRotateKey(spep_1+70,shuchusen1,0);

--文字エントリー
ctbqki=entryEffectLife(spep_1+33,10020,19,0x100,-1,0,0);--バキッ
setEffMoveKey(spep_1+33,ctbqki,60,240,0);
setEffMoveKey(spep_1+54,ctbqki,60,270,0);

setEffScaleKey(spep_1+33,ctbqki, 1.6, 1.6);
setEffScaleKey(spep_1+35,ctbqki, 1.6, 1.6);
setEffScaleKey(spep_1+36,ctbqki, 1.8, 1.8);
setEffScaleKey(spep_1+38,ctbqki, 1.8, 1.8);
setEffScaleKey(spep_1+39,ctbqki, 2.7, 2.7);
setEffScaleKey(spep_1+41,ctbqki, 2.7, 2.7);
setEffScaleKey(spep_1+42,ctbqki, 2.1, 2.1);
setEffScaleKey(spep_1+44,ctbqki, 2.1, 2.1);
setEffScaleKey(spep_1+54,ctbqki, 2.2, 2.2);

setEffRotateKey(spep_1+33,ctbqki,30);
setEffRotateKey(spep_1+35,ctbqki,30);
setEffRotateKey(spep_1+36,ctbqki,0);
setEffRotateKey(spep_1+38,ctbqki,0);
setEffRotateKey(spep_1+39,ctbqki,10);
setEffRotateKey(spep_1+41,ctbqki,10);
setEffRotateKey(spep_1+42,ctbqki,30);
setEffRotateKey(spep_1+44,ctbqki,30);
setEffRotateKey(spep_1+45,ctbqki,10);
setEffRotateKey(spep_1+54,ctbqki,10);

setEffAlphaKey(spep_1+33,ctbqki,255);
setEffAlphaKey(spep_1+44,ctbqki,255);
setEffAlphaKey(spep_1+54,ctbqki,0);


--敵が登場
setDisp( spep_1, 1, 1);
changeAnime(spep_1, 1, 101);
setMoveKey(spep_1,1,40,0,0);
setMoveKey(spep_1+32,1,40,0,0);
setScaleKey(spep_1,1,1.3,1.3);
setScaleKey(spep_1+32,1,1.3,1.3);
setRotateKey(spep_1,1 ,0);
setRotateKey(spep_1+32,1 ,0);
--setShakeChara(spep_1,1,40,15);

--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

SP_dodge = spep_1+4 ; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

pauseAll( SP_dodge, 67);

--キャラクターの固定
setMoveKey(SP_dodge, 1, 40 , 0, 0);
setScaleKey(SP_dodge , 1 , 1.3 ,1.3);
setRotateKey(SP_dodge,   1, 0);

--キャラクターの固定
setMoveKey(SP_dodge+8, 1, 40 , 0, 0);
setScaleKey(SP_dodge+8 , 1 , 1.3 ,1.3);
setRotateKey(SP_dodge+8,   1, 0);

setDisp(SP_dodge+9, 0, 0);
setDisp(SP_dodge+9, 1, 0);
setMoveKey(SP_dodge+9, 1, 0 , 0, 0);
setScaleKey(SP_dodge+9,  1 , 1.3 ,1.3);
setRotateKey(SP_dodge+9,   1, 0);

setMoveKey(SP_dodge+10, 1, 0 , 0, 0);
setScaleKey(SP_dodge+10,  1 , 1.3 ,1.3);
setRotateKey(SP_dodge+10,   1, 0);

--悟飯を画面外に表示
setMoveKey(SP_dodge+9, 0, 1000 , 1000, 0);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
--entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景

entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge+10);

do return end
else end

--------------------------------------
--回避しなかった場合
--------------------------------------



--敵がダメージを受ける
setDisp( spep_1+33, 1, 1);
changeAnime(spep_1+33, 1, 108);
setMoveKey(spep_1+33,1,130,120,0);
setMoveKey(spep_1+42,1,130,130,0);
setScaleKey(spep_1+33,1,1.8,1.8);
setScaleKey(spep_1+42,1,1.3,1.3);
setRotateKey(spep_1+33,1 ,-40);
setRotateKey(spep_1+42,1 ,-40);
setShakeChara(spep_1+33,1,46,15);

--敵反り返る
setDisp( spep_1+43, 1, 1);
changeAnime(spep_1+43,1, 106);
setMoveKey(spep_1+43,1,100,110,0);
setMoveKey(spep_1+56,1,100,110,0);
setScaleKey(spep_1+43,1,1.1,1.1);
setScaleKey(spep_1+56,1,1.1,1.1);
setRotateKey(spep_1+43,1 ,-35);
setRotateKey(spep_1+56,1 ,-35);
setShakeChara(spep_1+47,1,9,15);


--敵が飛んで行く
setDisp( spep_1+57, 1, 1);
setDisp( spep_1+120, 1, 0);
changeAnime(spep_1+57, 1, 5);

setMoveKey(spep_1+57, 1,150,160,0);
setMoveKey(spep_1+83,1,190,360,0);
setMoveKey(spep_1+120,1,200,370,0);

setScaleKey(spep_1+57,1,1.0,1.0);
setScaleKey(spep_1+83,1,0.2,0.2);
setScaleKey(spep_1+120,1,0.1,0.1);

setRotateKey(spep_1+57,1 ,50);
setRotateKey(spep_1+120,1 ,50);

setShakeChara(spep_1+57,1,73,10);

-- ** エフェクト等 ** --
--entryFade(spep_1,3,3,3,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_1+33,0,0,6,fcolor_r,fcolor_g,fcolor_b,180);     -- white fade
entryFade(spep_1+114,3,3,6,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade


--SE
playSe(spep_1+33,1009);--バキ
playSe(spep_1+98,1018);--移動
playSe(spep_1+5,43);--瞬間移動-

--黒背景
entryFadeBg(spep_1, 0, 120, 0, 0, 0, 0, 180);  -- 黒　背景
--次の準備
spep_2=spep_1+120;

------------------------------------------------------
-- キャッチ→投げ
------------------------------------------------------

--集中線(横)
shuchusen3=entryEffectLife(spep_2,921,86,0x80,-1,0,0,0);-- 集中線
setEffMoveKey(spep_2,shuchusen3,0,0,0);
setEffMoveKey(spep_2+89,shuchusen3,0,0,0);
setEffScaleKey(spep_2,shuchusen3,1.6,1.6);
setEffScaleKey(spep_2+89,shuchusen3,1.6,1.6);
setEffAlphaKey(spep_2,shuchusen3,255);
setEffAlphaKey(spep_2+89,shuchusen3,255);
setEffRotateKey(spep_2,shuchusen3,-73);
setEffRotateKey(spep_2+89,shuchusen3,-73);


--集中線(横)
shuchusen4=entryEffectLife(spep_2+87,921,40,0x80,-1,0,0,0);-- 集中線
setEffMoveKey(spep_2+87,shuchusen4,0,0,0);
setEffMoveKey(spep_2+130,shuchusen4,0,0,0);
setEffScaleKey(spep_2+87,shuchusen4,1.4,1.4);
setEffScaleKey(spep_2+130,shuchusen4,1.4,1.4);
setEffAlphaKey(spep_2+87,shuchusen4,255);
setEffAlphaKey(spep_2+130,shuchusen4,255);
setEffRotateKey(spep_2+87,shuchusen4,225);
setEffRotateKey(spep_2+130,shuchusen4,225);

--集中線(横)
shuchusen5=entryEffectLife(spep_2+60,906,70,0x100,-1,0,0,0);-- 集中線
setEffMoveKey(spep_2+60,shuchusen5,0,0,0);
setEffMoveKey(spep_2+130,shuchusen5,0,0,0);
setEffScaleKey(spep_2+60,shuchusen5,1.2,1.2);
setEffScaleKey(spep_2+130,shuchusen5,1.2,1.2);
setEffAlphaKey(spep_2+60,shuchusen5,255);
setEffAlphaKey(spep_2+130,shuchusen5,255);
setEffRotateKey(spep_2+60,shuchusen5,0);
setEffRotateKey(spep_2+130,shuchusen5,0);

--文字エントリー
ctga=entryEffectLife(spep_2+61,10005,23,0x100,-1,0,0);--ガ

setEffMoveKey(spep_2+61,ctga,-100,300,0);
setEffMoveKey(spep_2+83,ctga,-100,300,0);

setEffScaleKey(spep_2+60,ctga, 1.8, 1.8);
setEffScaleKey(spep_2+62,ctga, 1.8, 1.8);
setEffScaleKey(spep_2+68,ctga, 2.3, 2.3);
setEffScaleKey(spep_2+69,ctga, 2.5, 2.5);
setEffScaleKey(spep_2+83,ctga, 1.5, 1.5);

setEffShake(spep_2+61,ctga,23,15);

setEffRotateKey(spep_2+60,ctga,-20);
setEffRotateKey(spep_2+62,ctga,-20);
setEffRotateKey(spep_2+63,ctga,-30);
setEffRotateKey(spep_2+65,ctga,-30);
setEffRotateKey(spep_2+66,ctga,10);
setEffRotateKey(spep_2+68,ctga,10);
setEffRotateKey(spep_2+69,ctga,-20);
setEffRotateKey(spep_2+83,ctga,-20);

setEffAlphaKey(spep_2+60,ctga,255);
setEffAlphaKey(spep_2+69,ctga,255);
setEffAlphaKey(spep_2+83,ctga,0);



--エフェクトの再生
throwing=entryEffectLife(spep_2,SP_03x,125,0x80,-1,0,0,0);
setEffMoveKey(spep_2,throwing,0,0,0);
setEffMoveKey(spep_2+130,throwing,0,0,0);
setEffScaleKey(spep_2,throwing,1.0,1.0);
setEffScaleKey(spep_2+130,throwing,1.0,1.0);
setEffAlphaKey(spep_2,throwing,255);
setEffAlphaKey(spep_2+86,throwing,255);
setEffAlphaKey(spep_2+87,throwing,0);
setEffAlphaKey(spep_2+130,throwing,0);
setEffRotateKey(spep_2,throwing,0);
setEffRotateKey(spep_2+130,throwing,0);

--エフェクトの再生
throwing1=entryEffectLife(spep_2,SP_03x,130,0x100,-1,0,0,0);
setEffMoveKey(spep_2,throwing1,0,0,0);
setEffMoveKey(spep_2+130,throwing1,0,0,0);
setEffScaleKey(spep_2,throwing1,1.0,1.0);
setEffScaleKey(spep_2+130,throwing1,1.0,1.0);
setEffAlphaKey(spep_2,throwing1,0);
setEffAlphaKey(spep_2+86,throwing1,0);
setEffAlphaKey(spep_2+87,throwing1,255);
setEffAlphaKey(spep_2+130,throwing1,255);
setEffRotateKey(spep_2,throwing1,0);
setEffRotateKey(spep_2+130,throwing1,0);


--敵が飛んで行くる
setDisp( spep_2+40, 1, 1);
changeAnime(spep_2+40, 1, 5);
setMoveKey(spep_2+40, 1,-600,-900,0);
setMoveKey(spep_2+58,1,0,-10,0);

setScaleKey(spep_2+40,1,5.0,5.0);
setScaleKey(spep_2+58,1,1.5,1.5);

setRotateKey(spep_2+40,1 ,58);
setRotateKey(spep_2+58,1 ,58);
setShakeChara(spep_2+40,1,6,15);

--キャッチする
setDisp( spep_2+59, 1, 1);
changeAnime(spep_2+59, 1, 8);
setMoveKey(spep_2+59, 1,200,150,0);
setMoveKey(spep_2+86,1,200,150,0);
setScaleKey(spep_2+59,1,1.5,1.5);
setScaleKey(spep_2+86,1,1.5,1.5);
setRotateKey(spep_2+59,1 ,22);
setRotateKey(spep_2+86,1 ,22);
setShakeChara(spep_2+59,1,37,15);

--敵を投げる
setDisp( spep_2+87, 1, 1);
changeAnime(spep_2+87, 1, 8);

setMoveKey(spep_2+87, 1,-40,115,0);
setMoveKey(spep_2+110,1,-800,970,0);

setScaleKey(spep_2+87,1,1.5,1.5);
setScaleKey(spep_2+98,1,0.3,0.3);

setRotateKey(spep_2+87,1 ,20);
setRotateKey(spep_2+129,1 ,20);
setShakeChara(spep_2+87,1,32,15);

--SE--
playSe(  spep_2+59,1001);--敵を投げる-
playSe(spep_2+88,1005);--敵を投げる-
playSe(spep_2+110,43);--瞬間移動-

-- ** エフェクト等 ** --
entryFade(spep_2+59,0,0,4,fcolor_r,fcolor_g,fcolor_b,180);     -- white fade
entryFade(spep_2+86,0,0,4,fcolor_r,fcolor_g,fcolor_b,180);     -- white fade
entryFade(spep_2+120,4,7,6,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

setDisp( spep_2+110, 1, 0);

--黒背景
entryFadeBg(spep_2, 0, 130, 0, 0, 0, 0, 180);  -- 黒　背景

--次の準備
spep_3=spep_2+130;



------------------------------------------------------
---ドロップキック
------------------------------------------------------
--エフェクトの再生
dropkick=entryEffectLife(spep_3,SP_04x,90,0x100,-1,0,0,0);
setEffMoveKey(spep_3,dropkick,0,0,0);
setEffMoveKey(spep_3+90,dropkick,0,0,0);
setEffScaleKey(spep_3,dropkick,1.0,1.0);
setEffScaleKey(spep_3+90,dropkick,1.0,1.0);
setEffAlphaKey(spep_3,dropkick,255);
setEffAlphaKey(spep_3+90,dropkick,255);
setEffRotateKey(spep_3,dropkick,0);
setEffRotateKey(spep_3+90,dropkick,0);

--飛んでくる
setDisp( spep_3+14, 1, 1);
changeAnime(spep_3+14, 1, 8);

setMoveKey(spep_3+14, 1,510,-510,0);
setMoveKey(spep_3+16,1,100,-100,0);
setMoveKey(spep_3+30,1,0,0,0);

setScaleKey(spep_3+14,1,2.4,2.4);
setScaleKey(spep_3+16,1,2.4,2.4);
setScaleKey(spep_3+30,1,1.8,1.8);

setRotateKey(spep_3+14,1 ,30);
setRotateKey(spep_3+30,1 ,30);

setShakeChara(spep_3+14,1,30,15);

--蹴りが当たる
setDisp( spep_3+31, 1, 1);
changeAnime(spep_3+31, 1, 107);

setMoveKey(spep_3+31, 1,40,-100,0);
setMoveKey(spep_3+56, 1,110,-120,0);
setMoveKey(spep_3+63,1,710,-710,0);
setScaleKey(spep_3+31,1,0.7,0.7);
setScaleKey(spep_3+56,1,0.7,0.7);
setScaleKey(spep_3+57,1,0.9,0.9);
--setScaleKey(spep_3+63,1,0.9,0.9);
setScaleKey(spep_3+63,1,1.2,1.2);
setRotateKey(spep_3+31,1 ,0);
setRotateKey(spep_3+89,1 ,0);
setShakeChara(spep_3+31,1,42,15);

setDisp( spep_3+63, 1, 0);

--集中線(横)
shuchusen6=entryEffectLife(spep_3,921,90,0x80,-1,0,0,0);-- 集中線
setEffMoveKey(spep_3,shuchusen6,0,0,0);
setEffMoveKey(spep_3+90,shuchusen6,0,0,0);
setEffScaleKey(spep_3,shuchusen6,1.4,1.4);
setEffScaleKey(spep_3+90,shuchusen6,1.4,1.4);
setEffAlphaKey(spep_3,shuchusen6,255);
setEffAlphaKey(spep_3+90,shuchusen6,255);
setEffRotateKey(spep_3,shuchusen6,225);
setEffRotateKey(spep_3+90,shuchusen6,225);

--集中線(横)
shuchusen13=entryEffectLife(spep_3+31,906,59,0x80,-1,0,0,0);-- 集中線
setEffMoveKey(spep_3+31,shuchusen13,0,0,0);
setEffMoveKey(spep_3+90,shuchusen13,0,0,0);
setEffScaleKey(spep_3+31,shuchusen13,1.2,1.2);
setEffScaleKey(spep_3+90,shuchusen13,1.2,1.2);
setEffAlphaKey(spep_3+31,shuchusen13,255);
setEffAlphaKey(spep_3+90,shuchusen13,255);
setEffRotateKey(spep_3+31,shuchusen13,0);
setEffRotateKey(spep_3+90,shuchusen13,0);

--文字エントリー
ctdogon=entryEffectLife(spep_3+31,10018,18,0x80,-1,0,250);--ドゴォンッ
setEffMoveKey(spep_3+31,ctdogon,150,350,0);
setEffMoveKey(spep_3+49,ctdogon,150,350,0);
setEffScaleKey(spep_3+31,ctdogon,5.3,4.8);
setEffScaleKey(spep_3+35,ctdogon,5.3,4.8);
setEffScaleKey(spep_3+36,ctdogon,2.9,3.2);
setEffScaleKey(spep_3+49,ctdogon,2.9,3.2);
setEffRotateKey(spep_3+31,ctdogon,30);
setEffRotateKey(spep_3+49,ctdogon,30);
setEffShake(spep_3+31,ctdogon,18,15);
setEffAlphaKey(spep_3+31,ctdogon,255);
setEffAlphaKey(spep_3+42,ctdogon,255);
setEffAlphaKey(spep_3+43,ctdogon,255);
setEffAlphaKey(spep_3+49,ctdogon,0);

-- ** エフェクト等 ** --
entryFade(spep_3+31,0,3,3,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_3+83,4,3,6,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--SE--
playSe(spep_3+2,43);--瞬間移動-	
playSe( spep_3+36, 1010);--ドゴォン

--黒背景
entryFadeBg(spep_3, 0, 90, 0, 0, 0, 0, 180);  -- 黒　背景

--次の準備
spep_4=spep_3+90;

------------------------------------------------------
---敵がビルに突っ込む
------------------------------------------------------

--エフェクトの再生
building=entryEffectLife(spep_4,SP_05x,99,0x80,-1,0,0,0);
setEffMoveKey(spep_4,building,0,0,0);
setEffMoveKey(spep_4+100,building,0,0,0);
setEffScaleKey(spep_4,building,1.0,1.0);
setEffScaleKey(spep_4+100,building,1.0,1.0);
setEffAlphaKey(spep_4,building,255);
setEffAlphaKey(spep_4+100,building,255);
setEffRotateKey(spep_4,building,0);
setEffRotateKey(spep_4+100,building,0);

--敵が飛んで行く
setDisp( spep_4, 1, 1);
setDisp( spep_4+26, 1, 0);
changeAnime(spep_4, 1, 5);
setMoveKey(spep_4, 1,-50,-200,0);
setMoveKey(spep_4+30,1,0,-25,0);
setScaleKey(spep_4,1,6.0,6.0);
setScaleKey(spep_4+25,1,0.1,0.1);
setScaleKey(spep_4+33,1,0.1,0.1);
setRotateKey(spep_4,1,20);
setRotateKey(spep_4+35,1,20);
setShakeChara(spep_4,1,30,15);

--文字エントリー
ctdogon2=entryEffectLife(spep_4+34,10018,51,0x100,-1,0,250);--ドゴォンッ
setEffMoveKey(spep_4+34,ctdogon2,100,400,0);
setEffMoveKey(spep_4+85,ctdogon2,100,400,0);

setEffScaleKey(spep_4+34,ctdogon2,4.3,4.3);
setEffScaleKey(spep_4+38,ctdogon2,4.3,4.3);
setEffScaleKey(spep_4+39,ctdogon2,3.5,3.5);
setEffScaleKey(spep_4+83,ctdogon2,3.5,3.5);
setEffRotateKey(spep_4+34,ctdogon2,10);
setEffRotateKey(spep_4+85,ctdogon2,10);
setEffShake(spep_4+34,ctdogon2,51,15);
setEffAlphaKey(spep_4+34,ctdogon2,255);
setEffAlphaKey(spep_4+38,ctdogon2,255);
setEffAlphaKey(spep_4+78,ctdogon2,255);
setEffAlphaKey(spep_4+85,ctdogon2,0);


--SE--
playSe( spep_4+34, SE_09);--ドゴォン


--集中線(横)
shuchusen7=entryEffectLife(spep_4+34,906,56,0x80,-1,0,0,0);-- 集中線
setEffMoveKey(spep_4+34,shuchusen7,0,0,0);
setEffMoveKey(spep_4+90,shuchusen7,0,0,0);
setEffScaleKey(spep_4+34,shuchusen7,1.2,1.2);
setEffScaleKey(spep_4+90,shuchusen7,1.2,1.2);
setEffAlphaKey(spep_4+34,shuchusen7,255);
setEffAlphaKey(spep_4+90,shuchusen7,255);
setEffRotateKey(spep_4+34,shuchusen7,0);
setEffRotateKey(spep_4+90,shuchusen7,0);

-- ** エフェクト等 ** --
entryFade(spep_4+25,2,4,6,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_4+91,4,5,2,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade



setDisp( spep_4+34, 1, 0);
--次の準備
spep_5=spep_4+100;

------------------------------------------------------
---構え
------------------------------------------------------
--エフェクトの再生
tame=entryEffectLife(spep_5,SP_06x,110,0x100,-1,0,0,0);
setEffMoveKey(spep_5,tame,0,0,0);
setEffMoveKey(spep_5+110,tame,0,0,0);
setEffScaleKey(spep_5,tame,-1.0,1.0);
setEffScaleKey(spep_5+110,tame,-1.0,1.0);
setEffAlphaKey(spep_5,tame,255);
setEffAlphaKey(spep_5+110,tame,255);
setEffRotateKey(spep_5,tame,0);
setEffRotateKey(spep_5+110,tame,0);

--speff=entryEffect(spep_5+6,1504,0x100,-1,0,0,0);  --カットイン(顔)
--setEffReplaceTexture(speff,3,2);  --カットイン差し替え
--speff1=entryEffect(spep_5+6,1505,0x100,-1,0,0,0);  --カットイン(セリフ)
--setEffReplaceTexture(speff1,4,5);  --セリフカットイン差し替え


--文字エントリー
ctgogo=entryEffectLife(spep_5+19,190006,69,0x100,-1,110,500);--ゴゴゴ
setEffMoveKey(spep_5+19,ctgogo,110,500,0);
setEffMoveKey(spep_5+93,ctgogo,110,500,0);
setEffScaleKey(spep_5+19, ctgogo, -0.7, 0.7);
setEffScaleKey(spep_5+93, ctgogo, -0.7, 0.7);

--集中線(横)
shuchusen8=entryEffectLife(spep_5,906,110,0x100,-1,0,0,0);-- 集中線
setEffMoveKey(spep_5,shuchusen8,0,0,0);
setEffMoveKey(spep_5+110,shuchusen8,0,0,0);
setEffScaleKey(spep_5,shuchusen8,1.2,1.2);
setEffScaleKey(spep_5+110,shuchusen8,1.2,1.2);
setEffAlphaKey(spep_5,shuchusen8,255);
setEffAlphaKey(spep_5+110,shuchusen8,255);
setEffRotateKey(spep_5,shuchusen8,0);
setEffRotateKey(spep_5+110,shuchusen8,0);

--SE
playSe( spep_5+19, SE_05); --ゴゴゴ

-- ** エフェクト等 ** --
entryFade(spep_5+104,4,2,3,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--黒背景
entryFadeBg(spep_5, 0, 110, 0, 0, 0, 0, 180);  -- 黒　背景

--次の準備
spep_6=spep_5+110;

--------------------------------------
--カードカットイン(90F)
--------------------------------------

playSe(spep_6,SE_05);
shuchusen9=entryEffectLife(spep_6,906,90,0x100,-1,0,0,0);   -- 集中線
setEffScaleKey(spep_6,shuchusen9,1.6,1.6);

speff2=entryEffect(spep_6,1507,0,-1,0,0,0);   -- カード
setEffReplaceTexture(speff2,1,1);
setEffReplaceTexture(speff2,2,0);-- カード差し替え
setEffReplaceTexture(speff2,5,4);-- 技名テクスチャ差し替え

-- ** エフェクト等 ** --
entryFade(spep_6+85,3,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_7=spep_6+90;

------------------------------------------------------
--放つ
------------------------------------------------------
--エフェクトの再生
beam=entryEffectLife(spep_7,SP_07x,100,0x100,-1,0,0,0);
setEffMoveKey(spep_7,beam,0,0,0);
setEffMoveKey(spep_7+100,beam,0,0,0);
setEffScaleKey(spep_7,beam,-1.0,1.0);
setEffScaleKey(spep_7+100,beam,-1.0,1.0);
setEffAlphaKey(spep_7,beam,255);
setEffAlphaKey(spep_7+100,beam,255);
setEffRotateKey(spep_7,beam,0);
setEffRotateKey(spep_7+100,beam,0);

--集中線(横)
shuchusen8=entryEffectLife(spep_7,923,100,0x80,-1,0,0,0);-- 集中線
setEffMoveKey(spep_7,shuchusen8,0,0,0);
setEffMoveKey(spep_7+100,shuchusen8,0,0,0);
setEffScaleKey(spep_7,shuchusen8,1.2,1.2);
setEffScaleKey(spep_7+100,shuchusen8,1.2,1.2);
setEffAlphaKey(spep_7,shuchusen8,255);
setEffAlphaKey(spep_7+100,shuchusen8,255);
setEffRotateKey(spep_7,shuchusen8,0);
setEffRotateKey(spep_7+100,shuchusen8,0);

--集中線(横)
shuchusen10=entryEffectLife(spep_7,923,100,0x80,-1,0,0,0);-- 集中線
setEffMoveKey(spep_7,shuchusen10,0,0,0);
setEffMoveKey(spep_7+100,shuchusen10,0,0,0);
setEffScaleKey(spep_7,shuchusen10,1.2,1.2);
setEffScaleKey(spep_7+100,shuchusen10,1.2,1.2);
setEffAlphaKey(spep_7,shuchusen10,255);
setEffAlphaKey(spep_7+100,shuchusen10,255);
setEffRotateKey(spep_7,shuchusen10,0);
setEffRotateKey(spep_7+100,shuchusen10,0);

--集中線(横)
shuchusen11=entryEffectLife(spep_7,906,100,0x100,-1,0,0,0);-- 集中線
setEffMoveKey(spep_7,shuchusen11,0,0,0);
setEffMoveKey(spep_7+100,shuchusen11,0,0,0);
setEffScaleKey(spep_7,shuchusen11,1.2,1.2);
setEffScaleKey(spep_7+100,shuchusen11,1.2,1.2);
setEffAlphaKey(spep_7,shuchusen11,255);
setEffAlphaKey(spep_7+100,shuchusen11,255);
setEffRotateKey(spep_7,shuchusen11,0);
setEffRotateKey(spep_7+100,shuchusen11,0);

--文字エントリー
ctzuo=entryEffectLife(spep_7,10012,49,0x100,-1,0,0);-- ズオッ
setEffMoveKey(spep_7,ctzuo,200,300,0);
setEffMoveKey(spep_7+49,ctzuo,200,300,0);
setEffScaleKey(spep_7,ctzuo,0.5,0.5);
--setEffScaleKey(spep_7+3,ctzuo,3.5,3.5);
setEffScaleKey(spep_7+20,ctzuo,3.0,3.0);
setEffScaleKey(spep_7+49,ctzuo,3.5,3.5);
setEffAlphaKey(spep_7,ctzuo,255);
setEffAlphaKey(spep_7+40,ctzuo,255);
setEffAlphaKey(spep_7+49,ctzuo,0);
setEffRotateKey(spep_7,ctzuo,30);
setEffRotateKey(spep_7+49,ctzuo,30);
setEffShake(spep_7,ctzuo,49,15);

--SE
playSe(spep_7,1018);--ズオッ

--黒背景
entryFadeBg(spep_7, 0, 100, 0, 0, 0, 0, 180);  -- 黒　背景

-- ** エフェクト等 ** --
entryFade(spep_7+95,0,6,0,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_8=spep_7+100

------------------------------------------------------
-- ギャン(60F)
------------------------------------------------------
setDisp( spep_8-1, 1, 0);

gyan = entryEffect(  spep_8,  190000,  0x100,  -1,  0,  0,  0);  --ギャン
setEffScaleKey(  spep_8,  gyan,  1.0,  1.0);
setEffAlphaKey(  spep_8,  gyan,  255);

-- 書き文字エントリー --
ct_06 = entryEffectLife( spep_8, 10006, 58, 0x100, -1, 0, 0, 300);    -- ギャン

setEffScaleKey( spep_8, ct_06, 1.8, 1.8);
setEffAlphaKey( spep_8, ct_06, 255);
setEffScaleKey( spep_8+10, ct_06, 3.8, 3.8);
setEffScaleKey( spep_8+58, ct_06, 4.3, 4.3);
setEffAlphaKey( spep_8+58, ct_06, 255);
setEffShake( spep_8, ct_06, 58, 10);

playSe(  spep_8, SE_09);

entryFade(  spep_8+47,  6,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryFadeBg(spep_8,0,60,0,0,0,0,255);
entryFade( spep_8+50, 4,  8, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_9 = spep_8+60;

------------------------------------------------------
--爆発
------------------------------------------------------
--エフェクトの再生
explosion=entryEffect(spep_9,SP_08x,0x100,-1,0,0,0);
setEffMoveKey(spep_9,explosion,0,0,0);
setEffMoveKey(spep_9+160,explosion,0,0,0);
setEffScaleKey(spep_9,explosion,1.0,1.0);
setEffScaleKey(spep_9+160,explosion,1.0,1.0);
setEffAlphaKey(spep_9,explosion,255);
setEffAlphaKey(spep_9+160,explosion,255);
setEffRotateKey(spep_9,explosion,0);
setEffRotateKey(spep_9+160,explosion,0);

--SE--
playSe( spep_9, SE_09);--爆発


--集中線(横)
shuchusen12=entryEffectLife(spep_9,906,160,0x100,-1,0,0,0);-- 集中線
setEffMoveKey(spep_9,shuchusen12,0,0,0);
setEffMoveKey(spep_9+160,shuchusen12,0,0,0);
setEffScaleKey(spep_9,shuchusen12,1.2,1.2);
setEffScaleKey(spep_9+160,shuchusen12,1.2,1.2);
setEffAlphaKey(spep_9,shuchusen12,255);
setEffAlphaKey(spep_9+160,shuchusen12,255);
setEffRotateKey(spep_9,shuchusen12,0);
setEffRotateKey(spep_9+160,shuchusen12,0);

-- ダメージ表示
dealDamage(spep_9+56);
entryFade( spep_9+140, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_9+150);
end