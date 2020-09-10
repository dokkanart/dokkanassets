--1013930 超サイヤ人3ベジータ(SSR) ギャリックシューティング sp1174 

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
SP_01 = 151613; --気溜め
SP_02 = 151614; --前方突進
SP_03 = 151615; --突っ込みキック
SP_04 = 151616; --光弾発生（前）
SP_05 = 151617; --光弾発生（後）

--敵側
SP_01x = 151613; --気溜め
SP_02x = 151614; --前方突進
SP_03x = 151615; --突っ込みキック
SP_04x = 151616; --光弾発生（前）
SP_05x = 151618; --光弾発生（後）（敵）

multi_frm = 2;

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then
------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI(0, 0);
--setDisp( 0, 0, 0); --味方表示
setDisp( 0, 1, 0); --敵非表示
changeAnime( 0, 0, 1); --味方立ちポーズ
--setMoveKey( 0, 0, 0, -900, 0); --味方位置
--setMoveKey( 1, 0, 0, -900, 0); --味方位置
--setMoveKey( 2, 0, 0, -900, 0); --味方位置
--setMoveKey( 3, 0, 0, -900, 0); --味方位置
--setMoveKey( 4, 0, 0, -900, 0); --味方位置
--setMoveKey( 5, 0, 0, -900, 0); --味方位置

--setScaleKey( 0,    0,  1.5, 1.5);
setScaleKey( 0,    1,  1.5, 1.5);
setRotateKey( 0,  0, 0);
------------------------------------------------------
-- 待機モーション
------------------------------------------------------
spep_0=0;


--敵の登場
setDisp( spep_0,0,1);
setDisp( spep_0+41,0,0);
changeAnime(spep_0,0,0);
setMoveKey(spep_0,0,0,0,0);
setMoveKey(spep_0+1,0,0,0,0);
setMoveKey(spep_0+2,0,0,0,0);
setMoveKey(spep_0+3,0,0,0,0);
setMoveKey(spep_0+4,0,0,0,0);
setMoveKey(spep_0+5,0,0,0,0);
setMoveKey(spep_0+40,0,0,0,0);
setScaleKey(spep_0,0,1.5,1.5);
setScaleKey(spep_0+1,0,1.5,1.5);
setScaleKey(spep_0+2,0,1.5,1.5);
setScaleKey(spep_0+3,0,1.5,1.5);
setScaleKey(spep_0+4,0,1.5,1.5);
setScaleKey(spep_0+5,0,1.5,1.5);
setScaleKey(spep_0+40,0,1.5,1.5);
setRotateKey(spep_0,0,0);
setRotateKey(spep_0+40,0,0);

-- ** エフェクト等 ** --
entryFade(spep_0+29, 0, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_1=spep_0+33

------------------------------------------------------
-- 気溜め
------------------------------------------------------

--エフェクトの再生
kidame=entryEffectLife(spep_1,SP_01,97,0x100,-1,0,0,0);
setEffMoveKey(spep_1,kidame,0,0,0);
setEffMoveKey(spep_1+97,kidame,0,0,0);
setEffScaleKey(spep_1,kidame,1.0,1.0);
setEffScaleKey(spep_1+97,kidame,1.0,1.0);
setEffAlphaKey(spep_1,kidame,255);
setEffAlphaKey(spep_1+97,kidame,255);
setEffRotateKey(spep_1,kidame,0);
setEffRotateKey(spep_1+97,kidame,0);

--顔＆セリフカットイン
speff=entryEffect(spep_1+6,1504,0x100,-1,0,0,0);  --カットイン(顔)
setEffReplaceTexture(speff,3,2);  --カットイン差し替え
speff1=entryEffect(spep_1+6,1505,0x100,-1,0,0,0);  --カットイン(セリフ)
setEffReplaceTexture(speff1,4,5);  --セリフカットイン差し替え

--文字エントリー
ctgogo=entryEffectLife(spep_1+19,190006,69,0x100,-1,110,500);--ゴゴゴ
setEffMoveKey(spep_1+19,ctgogo,110,500,0);
setEffMoveKey(spep_1+93,ctgogo,110,500,0);
setEffScaleKey(spep_1+19, ctgogo, 0.7, 0.7);
setEffScaleKey(spep_1+93, ctgogo, 0.7, 0.7);

--SE
playSe( spep_1+19, SE_05); --ゴゴゴ

--後ろの気
ef_ki=entryEffectLife(spep_1, 1503, 97,0x80,0,0,0,0);   -- 集中線
setEffScaleKey(spep_1, ef_ki, 1.0, 1.0);
setEffScaleKey(spep_1+97,ef_ki, 1.0, 1.0);

--バチバチ
ef_bati=entryEffectLife(spep_1, 1502, 97,0x100,0,0,0,0);   -- 集中線
setEffScaleKey(spep_1,ef_bati, 1.0, 1.0);
setEffScaleKey(spep_1+97,ef_bati, 1.0, 1.0);


--集中線
shuchusen=entryEffectLife(spep_1, 906, 97,0x80,0,0,0,0);   -- 集中線
setEffScaleKey(spep_1, shuchusen, 1.5, 1.5);
setEffScaleKey(spep_1+97, shuchusen, 1.5, 1.5);

--黒背景
entryFadeBg( spep_1, 0, 97, 0, 0, 0, 0, 210);  -- 黒　背景

--白フェード
entryFade(spep_1+84, 12, 2,5, fcolor_r, fcolor_g, fcolor_b, 255);

--次の準備
spep_2=spep_1+97;

------------------------------------------------------
-- 前方突進
------------------------------------------------------
rush=entryEffectLife(spep_2,SP_02,44,0x80,-1,0,0,0);
setEffMoveKey(spep_2,rush,0,0,0);
setEffMoveKey(spep_2+44,rush,0,0,0);
setEffScaleKey(spep_2,rush,1.0,1.0);
setEffScaleKey(spep_2+44,rush,1.0,1.0);
setEffAlphaKey(spep_2,rush,255);
setEffAlphaKey(spep_2+44,rush,255);
setEffRotateKey(spep_2,rush,0);
setEffRotateKey(spep_2+44,rush,0);

--SE
playSe(spep_2,1018);--ズオッ

--文字エントリー
ctzuo=entryEffectLife(spep_2,10012,25,0x100,-1,100,300);--ズオッ
setEffMoveKey(spep_2,ctzuo,0,350,0);
setEffMoveKey(spep_2+30,ctzuo,0,350,0);
setEffScaleKey(spep_2,ctzuo, 2.5 ,2.5);
setEffScaleKey(spep_2+2,ctzuo, 2.8 ,2.8);
setEffScaleKey(spep_2+4,ctzuo, 2.5 ,2.5);
setEffScaleKey(spep_2+6,ctzuo, 2.8 ,2.8);
setEffScaleKey(spep_2+8,ctzuo, 2.5 ,2.5);
setEffScaleKey(spep_2+10,ctzuo, 2.8 ,2.8);
setEffScaleKey(spep_2+12,ctzuo, 2.5 ,2.5);
setEffScaleKey(spep_2+14,ctzuo, 2.8 ,2.8);
setEffScaleKey(spep_2+16,ctzuo, 2.5 ,2.5);
setEffScaleKey(spep_2+18,ctzuo, 2.8 ,2.8);
setEffScaleKey(spep_2+20,ctzuo, 2.5 ,2.5);
setEffScaleKey(spep_2+22,ctzuo, 2.8 ,2.8);
setEffScaleKey(spep_2+24,ctzuo, 2.5 ,2.5);
setEffScaleKey(spep_2+25,ctzuo, 2.8 ,2.8);
setEffAlphaKey(spep_2,ctzuo,255);
setEffAlphaKey(spep_2+25,ctzuo,255);
setEffAlphaKey(spep_2+25,ctzuo,0);
setEffRotateKey(spep_2,ctzuo,10);
setEffRotateKey(spep_2+25,ctzuo,10);
setEffShake(spep_2,ctzuo,25,25);

--集中線
shuchusen1=entryEffectLife(spep_2,906,44,0x80,-1,0,0,0);-- 集中線

setEffMoveKey(spep_2,shuchusen1,0,0,0);
setEffMoveKey(spep_2+44,shuchusen1,0,0,0);
setEffScaleKey(spep_2,shuchusen1,1.0,1.0);
setEffScaleKey(spep_2+44,shuchusen1,1.0,1.0);
setEffAlphaKey(spep_2,shuchusen1,255);
setEffAlphaKey(spep_2+44,shuchusen1,255);
setEffRotateKey(spep_2,shuchusen1,0);
setEffRotateKey(spep_2+44,shuchusen1,0);

--黒背景
entryFadeBg( spep_2, 0, 44, 0, 0, 0, 0, 210);  -- 黒　背景

--白フェード
entryFade(spep_2+36, 8, 2,0, fcolor_r, fcolor_g, fcolor_b, 255);

--次の準備
spep_3=spep_2+44;



------------------------------------------------------
-- 敵を蹴る
------------------------------------------------------
--エフェクトの再生
kick=entryEffectLife(spep_3,SP_03,64,0x100,0,0,0,0);
setEffMoveKey(spep_3,kick,0,0,0);
setEffMoveKey(spep_3+64,kick,0,0,0);
setEffScaleKey(spep_3,kick,1.0,1.0);
setEffScaleKey(spep_3+64,kick,1.0,1.0);
setEffAlphaKey(spep_3,kick,255);
setEffAlphaKey(spep_3+64,kick,255);
setEffRotateKey(spep_3,kick,0);
setEffRotateKey(spep_3+64,kick,0);

--集中線(横)
shuchusen2=entryEffectLife(spep_3,920,14,0x80,-1,-50,-50,0);-- 集中線
setEffMoveKey(spep_3,shuchusen2,-50,-50,0);
setEffMoveKey(spep_3+14,shuchusen2,-50,-50,0);
setEffScaleKey(spep_3,shuchusen2,1.2,1.2);
setEffScaleKey(spep_3+14,shuchusen2,1.2,1.2);
setEffAlphaKey(spep_3,shuchusen2,255);
setEffAlphaKey(spep_3+14,shuchusen2,255);
setEffRotateKey(spep_3,shuchusen2,0);
setEffRotateKey(spep_3+14,shuchusen2,0);

--敵の登場
setDisp( spep_3, 1, 1);
changeAnime(spep_3, 1, 104);
setMoveKey(spep_3, 1,530, 160, 0);
setMoveKey(spep_3+14,1,130,50,0);
setScaleKey(spep_3,1,1.3,1.3);
setScaleKey(spep_3+14,1,1.3,1.3);
setRotateKey(spep_3,1 ,0);
setShakeChara(spep_3,1,18,15);


--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_3+2; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

--キャラクターの固定
setMoveKey(SP_dodge, 1, 530 , 160, 0);
setScaleKey(SP_dodge , 1 , 1.3 ,1.3);
setRotateKey(SP_dodge,   1, 0);

setDisp(SP_dodge, 0, 0);
setMoveKey(SP_dodge, 0, 0 , -2000, 0);
setScaleKey(SP_dodge , 0 , 1.3 ,1.3);
setRotateKey(SP_dodge,   0, 0);

setMoveKey(SP_dodge+8, 1, 530 , 160, 0);
setScaleKey(SP_dodge+8,  1 , 1.3 ,1.3);
setRotateKey(SP_dodge+8,   1, 0);

setDisp(SP_dodge+9, 1, 0);
setMoveKey(SP_dodge+9, 1, 0 , 0, 0);
setScaleKey(SP_dodge+9,  1 , 1.5 ,1.5);
setRotateKey(SP_dodge+9,   1, 0);

setMoveKey(SP_dodge+10, 0, 0 ,-2000, 0);
setScaleKey(SP_dodge+10,  0 , 1.5 ,1.5);
setRotateKey(SP_dodge+10,   0, 0);

setMoveKey(SP_dodge+10, 0, 0 , -2000, 0);
setScaleKey(SP_dodge , 0 , 1.3 ,1.3);
setRotateKey(SP_dodge,   0, 0);

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
--回避しなかった場合
--------------------------------------

--集中線(斜め)
shuchusen3=entryEffectLife(spep_3+15,924,49,0x80,-1,-270,-10,0);-- 集中線
setEffMoveKey(spep_3+15,shuchusen3,-270,-10,0);
setEffMoveKey(spep_3+49,shuchusen3,-270,-10,0);
setEffScaleKey(spep_3+15,shuchusen3,1.4,1.4);
setEffScaleKey(spep_3+49,shuchusen3,1.4,1.4);
setEffAlphaKey(spep_3+15,shuchusen3,255);
setEffAlphaKey(spep_3+49,shuchusen3,255);
setEffRotateKey(spep_3+15,shuchusen3,-45);
setEffRotateKey(spep_3+49,shuchusen3,-45);

--敵蹴り飛ばされる
setDisp( spep_3+15, 1, 1);
setDisp( spep_3+44, 1, 0);
changeAnime(spep_3+15, 1, 108);
setMoveKey(spep_3+15, 1,270,90,0);
setMoveKey(spep_3+20, 1,180,150,0);
setMoveKey(spep_3+44,1,200,410,0);
setScaleKey(spep_3+15,1,2.2,2.2);
setScaleKey(spep_3+20,1,1.0,1.0);
setScaleKey(spep_3+44,1,0.0,0.0);
setRotateKey(spep_3+15,1 ,0);

--文字エントリー
ctbaki=entryEffectLife(spep_3+15,10020,49,0x100,-1,50,280);--バキッ
setEffMoveKey(spep_3+15,ctbaki,50,290,0);
setEffMoveKey(spep_3+64,ctbaki,50,290,0);
setEffScaleKey(spep_3+15,ctbaki,2.0,2.0);
setEffScaleKey(spep_3+64,ctbaki,2.0,2.0);
setEffShake(spep_3+15,ctbaki,49,15);

--SE
playSe(spep_3+15,1010);--バキ
--[[
--敵キャラの退出
setDisp( spep_3+48, 1, 0);
setMoveKey(spep_3+48, 1,0, 0, 0);
setScaleKey(spep_3+48,1,1.5,1.5);
]]
--黒背景
entryFadeBg( spep_3, 0, 64, 0, 0, 0, 0, 210);  -- 黒　背景

--白フェード
entryFade(spep_3+50, 14, 0,0, fcolor_r, fcolor_g, fcolor_b, 255);

--次の準備
spep_4=spep_3+64;

--------------------------------------
--カードカットイン(90F)
--------------------------------------

playSe(spep_4,SE_05);
shuchusen3=entryEffectLife(spep_4,906,90,0x100,-1,0,0,0);   -- 集中線
setEffScaleKey(spep_4,shuchusen3,1.6,1.6);

speff2=entryEffect(spep_4,1507,0,-1,0,0,0);   -- カード
setEffReplaceTexture(speff2,1,1);
setEffReplaceTexture(speff2,2,0);-- カード差し替え
setEffReplaceTexture(speff2,5,4);-- 技名テクスチャ差し替え

-- ** エフェクト等 ** --
entryFade(spep_4+85,3,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_5=spep_4+90;


------------------------------------------------------
-- 光弾発生
------------------------------------------------------


--集中線
shuchusen4=entryEffectLife(spep_5,906,44,0x80,0,250,0,0);-- 集中線

setEffMoveKey(spep_5,shuchusen4,250,0,0);
setEffMoveKey(spep_5+44,shuchusen4,250,0,0);
setEffScaleKey(spep_5,shuchusen4,2.0,2.0);
setEffScaleKey(spep_5+44,shuchusen4,2.0,2.0);
setEffAlphaKey(spep_5,shuchusen4,255);
setEffAlphaKey(spep_5+44,shuchusen4,255);
setEffRotateKey(spep_5,shuchusen4,0);
setEffRotateKey(spep_5+44,shuchusen4,0);

--集中線(斜め)
shuchusen5=entryEffectLife(spep_5,921,100,0x80,-1,20,0,0);-- 集中線
setEffMoveKey(spep_5,shuchusen5,20,0,0);
setEffMoveKey(spep_5+100,shuchusen5,20,0,0);
setEffScaleKey(spep_5,shuchusen5,1.5,1.5);
setEffScaleKey(spep_5+100,shuchusen5,1.5,1.5);
setEffAlphaKey(spep_5,shuchusen5,0);
setEffAlphaKey(spep_5+44,shuchusen5,0);
setEffAlphaKey(spep_5+45,shuchusen5,255);
setEffAlphaKey(spep_5+100,shuchusen5,255);
setEffRotateKey(spep_5+45,shuchusen5,-30);
setEffRotateKey(spep_5+100,shuchusen5,-30);

--エフェクトの再生(前)
light_before=entryEffectLife(spep_5,SP_04,100,0x100,0,0,0,0);
setEffMoveKey(spep_5,light_before,0,0,0);
setEffMoveKey(spep_5+100,light_before,0,0,0);
setEffScaleKey(spep_5,light_before,1.0,1.0);
setEffScaleKey(spep_5+100,light_before,1.0,1.0);
setEffAlphaKey(spep_5,light_before,255);
setEffAlphaKey(spep_5+100,light_before,255);
setEffRotateKey(spep_5,light_before,0);
setEffRotateKey(spep_5+100,light_before,0);

--エフェクトの再生(後ろ)
light_behind=entryEffectLife(spep_5,SP_05,100,0x80,0,0,0,0);
setEffMoveKey(spep_5,light_behind,0,0,0);
setEffMoveKey(spep_5+100,light_behind,0,0,0);
setEffScaleKey(spep_5,light_behind,1.0,1.0);
setEffScaleKey(spep_5+100,light_behind,1.0,1.0);
setEffAlphaKey(spep_5,light_behind,255);
setEffAlphaKey(spep_5+100,light_behind,255);
setEffRotateKey(spep_5,light_behind,0);
setEffRotateKey(spep_5+100,light_behind,0);

--SE
playSe(spep_5+5,43);--瞬間移動
playSe(spep_5+15,SE_03);
playSe(spep_5+35,SE_03);
playSe(spep_5+55,SE_03);
playSe(spep_5+75,SE_03);
--playSe(spep_5+95,SE_03);

--敵の飛んでくる
setDisp( spep_5+46, 1, 1);
changeAnime(spep_5+46, 1, 108);
setMoveKey(spep_5+46, 1,-480,-480, 0);
setMoveKey(spep_5+56,1,-135,-50,0);
setScaleKey(spep_5+46,1,2.0,2.0);
setScaleKey(spep_5+56,1,2.0,2.0);
setRotateKey(spep_5+46,1 ,0);
setRotateKey(spep_5+56,1 ,0);

--敵が反り返る
setDisp( spep_5+57, 1, 1);
changeAnime(spep_5+57, 1, 106);
setMoveKey(spep_5+57, 1,-210,100, 0);
setMoveKey(spep_5+100,1,-210,100,0);
setScaleKey(spep_5+57,1,1.8,1.8);
setScaleKey(spep_5+100,1,1.8,1.8);
setRotateKey(spep_5+57,1 ,-70);
setRotateKey(spep_5+100,1 ,-70);
setShakeChara(spep_5+57,1,33,10);

--黒背景
entryFadeBg( spep_5, 0, 100, 0, 0, 0, 0, 210);  -- 黒　背景

-- ** エフェクト等 ** --
entryFade(spep_5+84,14,4,0,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_6=spep_5+100;

------------------------------------------------------
-- ギャン(60F)
------------------------------------------------------
setDisp( spep_6-1, 1, 0);

gyan = entryEffect(  spep_6,  190000,  0x100,  -1,  0,  0,  0);  --ギャン
setEffScaleKey(  spep_6,  gyan,  1.0,  1.0);
setEffAlphaKey(  spep_6,  gyan,  255);

-- 書き文字エントリー --
ct_06 = entryEffectLife( spep_6, 10006, 58, 0x100, -1, 0, 0, 300);    -- ギャン

setEffScaleKey( spep_6, ct_06, 2.0, 2.0);
setEffAlphaKey( spep_6, ct_06, 255);
setEffScaleKey( spep_6+10, ct_06, 3.8, 3.8);
setEffScaleKey( spep_6+58, ct_06, 4.5, 4.5);
setEffAlphaKey( spep_6+58, ct_06, 255);
setEffShake( spep_6, ct_06, 58, 10);

playSe(  spep_6, SE_09);

entryFade(  spep_6+47,  6,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryFadeBg(spep_6,0,60,0,0,0,0,255);
entryFade( spep_6+50, 4,  8, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_7 = spep_6+60;

------------------------------------------------------
-- ダメージ演出
------------------------------------------------------

setDisp( spep_7-5, 1, 1);
setMoveKey(  spep_7-5,    1,  100,  0,   0);
setScaleKey( spep_7-5,    1,  1.0, 1.0);
setMoveKey(  spep_7,    1,    0,   0,   128);
setScaleKey( spep_7,    1,  0.1, 0.1);
setRotateKey( spep_7,    1,  0);

changeAnime( spep_7, 1, 107);                         -- 手前ダメージ
entryEffect( spep_7+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_7+8, SE_10);

setMoveKey(  spep_7+8,   1,    0,   0,   128);
setMoveKey(  spep_7+15,   1,  -60,  -200,  -100);
setMoveKey(  spep_7+16,   1,  -60,  -200,  -100);
setDamage( spep_7+16, 1, 0);  -- ダメージ振動等
setShake(spep_7+7,6,15);
setShake(spep_7+13,15,10);

setRotateKey( spep_7,  1,  30 );
setRotateKey( spep_7+2,  1,  80 );
setRotateKey( spep_7+4,  1, 120 );
setRotateKey( spep_7+6,  1, 160 );
setRotateKey( spep_7+8,  1, 200 );
setRotateKey( spep_7+10,  1, 260 );
setRotateKey( spep_7+12,  1, 320 );
setRotateKey( spep_7+14,  1,   0 );

setShakeChara( spep_7+15, 1, 5,  10);
setShakeChara( spep_7+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep_7+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep_7+15, ct, 30, 10);
setEffRotateKey( spep_7+15, ct, -40);
setEffScaleKey( spep_7+15, ct, 4.0, 4.0);
setEffScaleKey( spep_7+16, ct, 2.0, 2.0);
setEffScaleKey( spep_7+17, ct, 2.6, 2.6);
setEffScaleKey( spep_7+18, ct, 4.0, 4.0);
setEffScaleKey( spep_7+19, ct, 2.6, 2.6);
setEffScaleKey( spep_7+20, ct, 3.8, 3.8);
setEffScaleKey( spep_7+110, ct, 3.8, 3.8);
setEffAlphaKey( spep_7+15, ct, 255);
setEffAlphaKey( spep_7+105, ct, 255);
setEffAlphaKey( spep_7+115, ct, 0);

playSe( spep_7+3, SE_11);
shuchusen = entryEffectLife( spep_7+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_7+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

shuchusenkuro = entryEffectLife( spep_7+15, 1657, 120, 0x80,  -1, 0,  0,  0);   -- 集中線


-- ダメージ表示
dealDamage(spep_7+16);
entryFade( spep_7+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_7+110);




else
------------------------------------------------
--敵側
------------------------------------------------
------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI(0, 0);
--setDisp( 0, 0, 0); --味方表示
setDisp( 0, 1, 0); --敵非表示
changeAnime( 0, 0, 1); --味方立ちポーズ
--setMoveKey( 0, 0, 0, -900, 0); --味方位置
--setMoveKey( 1, 0, 0, -900, 0); --味方位置
--setMoveKey( 2, 0, 0, -900, 0); --味方位置
--setMoveKey( 3, 0, 0, -900, 0); --味方位置
--setMoveKey( 4, 0, 0, -900, 0); --味方位置
--setMoveKey( 5, 0, 0, -900, 0); --味方位置
--setScaleKey( 0,    0,  1.5, 1.5);
setScaleKey( 0,    1,  1.5, 1.5);
setRotateKey( 0,  0, 0);
------------------------------------------------------
-- 待機モーション
------------------------------------------------------
spep_0=0;


--敵の登場
setDisp( spep_0,0,1);
setDisp( spep_0+41,0,0);
changeAnime(spep_0,0,0);
setMoveKey(spep_0,0,0,0,0);
setMoveKey(spep_0+2,0,0,0,0);
setMoveKey(spep_0+3,0,0,0,0);
setMoveKey(spep_0+4,0,0,0,0);
setMoveKey(spep_0+5,0,0,0,0);
setMoveKey(spep_0+40,0,0,0,0);
setScaleKey(spep_0,0,1.5,1.5);
setScaleKey(spep_0+1,0,1.5,1.5);
setScaleKey(spep_0+2,0,1.5,1.5);
setScaleKey(spep_0+3,0,1.5,1.5);
setScaleKey(spep_0+4,0,1.5,1.5);
setScaleKey(spep_0+5,0,1.5,1.5);
setScaleKey(spep_0+40,0,1.5,1.5);
setRotateKey(spep_0,0,0);
setRotateKey(spep_0+40,0,0);

-- ** エフェクト等 ** --
entryFade(spep_0+29, 0, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_1=spep_0+33

------------------------------------------------------
-- 気溜め
------------------------------------------------------

--エフェクトの再生
kidame=entryEffectLife(spep_1,SP_01x,97,0x100,-1,0,0,0);
setEffMoveKey(spep_1,kidame,0,0,0);
setEffMoveKey(spep_1+97,kidame,0,0,0);
setEffScaleKey(spep_1,kidame,1.0,1.0);
setEffScaleKey(spep_1+97,kidame,1.0,1.0);
setEffAlphaKey(spep_1,kidame,255);
setEffAlphaKey(spep_1+97,kidame,255);
setEffRotateKey(spep_1,kidame,0);
setEffRotateKey(spep_1+97,kidame,0);

--顔＆セリフカットイン
--speff=entryEffect(spep_1+6,1504,0x100,-1,0,0,0);  --カットイン(顔)
--setEffReplaceTexture(speff,3,2);  --カットイン差し替え
--speff1=entryEffect(spep_1+6,1505,0x100,-1,0,0,0);  --カットイン(セリフ)
--setEffReplaceTexture(speff1,4,5);  --セリフカットイン差し替え

--文字エントリー
ctgogo=entryEffectLife(spep_1+19,190006,69,0x100,-1,110,500);--ゴゴゴ
setEffMoveKey(spep_1+19,ctgogo,110,500,0);
setEffMoveKey(spep_1+93,ctgogo,110,500,0);
setEffScaleKey(spep_1+19,ctgogo,-0.7,0.7);
setEffScaleKey(spep_1+93,ctgogo,-0.7,0.7);

--SE
playSe( spep_1+19, SE_05); --ゴゴゴ

--後ろの気
ef_ki=entryEffectLife(spep_1, 1503, 97,0x80,0,0,0,0);   -- 集中線
setEffScaleKey(spep_1, ef_ki, 1.0, 1.0);
setEffScaleKey(spep_1+97,ef_ki, 1.0, 1.0);

--バチバチ
ef_bati=entryEffectLife(spep_1, 1502, 97,0x100,0,0,0,0);   -- 集中線
setEffScaleKey(spep_1,ef_bati, 1.0, 1.0);
setEffScaleKey(spep_1+97,ef_bati, 1.0, 1.0);


--集中線
shuchusen=entryEffectLife(spep_1, 906, 97,0x80,0,0,0,0);   -- 集中線
setEffScaleKey(spep_1, shuchusen, 1.5, 1.5);
setEffScaleKey(spep_1+97, shuchusen, 1.5, 1.5);

--黒背景
entryFadeBg( spep_1, 0, 97, 0, 0, 0, 0, 210);  -- 黒　背景

--白フェード
entryFade(spep_1+84, 12, 2,5, fcolor_r, fcolor_g, fcolor_b, 255);

--次の準備
spep_2=spep_1+97;

------------------------------------------------------
-- 前方突進
------------------------------------------------------
rush=entryEffectLife(spep_2,SP_02x,44,0x80,-1,0,0,0);
setEffMoveKey(spep_2,rush,0,0,0);
setEffMoveKey(spep_2+44,rush,0,0,0);
setEffScaleKey(spep_2,rush,1.0,1.0);
setEffScaleKey(spep_2+44,rush,1.0,1.0);
setEffAlphaKey(spep_2,rush,255);
setEffAlphaKey(spep_2+44,rush,255);
setEffRotateKey(spep_2,rush,0);
setEffRotateKey(spep_2+44,rush,0);

--SE
playSe(spep_2,1018);--ズオッ

--文字エントリー
ctzuo=entryEffectLife(spep_2,10012,25,0x100,-1,100,300);--ズオッ
setEffMoveKey(spep_2,ctzuo,0,350,0);
setEffMoveKey(spep_2+30,ctzuo,0,350,0);
setEffScaleKey(spep_2,ctzuo, 2.5 ,2.5);
setEffScaleKey(spep_2+2,ctzuo, 2.8 ,2.8);
setEffScaleKey(spep_2+4,ctzuo, 2.5 ,2.5);
setEffScaleKey(spep_2+6,ctzuo, 2.8 ,2.8);
setEffScaleKey(spep_2+8,ctzuo, 2.5 ,2.5);
setEffScaleKey(spep_2+10,ctzuo, 2.8 ,2.8);
setEffScaleKey(spep_2+12,ctzuo, 2.5 ,2.5);
setEffScaleKey(spep_2+14,ctzuo, 2.8 ,2.8);
setEffScaleKey(spep_2+16,ctzuo, 2.5 ,2.5);
setEffScaleKey(spep_2+18,ctzuo, 2.8 ,2.8);
setEffScaleKey(spep_2+20,ctzuo, 2.5 ,2.5);
setEffScaleKey(spep_2+22,ctzuo, 2.8 ,2.8);
setEffScaleKey(spep_2+24,ctzuo, 2.5 ,2.5);
setEffScaleKey(spep_2+25,ctzuo, 2.8 ,2.8);
setEffAlphaKey(spep_2,ctzuo,255);
setEffAlphaKey(spep_2+25,ctzuo,255);
setEffAlphaKey(spep_2+25,ctzuo,0);
setEffRotateKey(spep_2,ctzuo,10);
setEffRotateKey(spep_2+25,ctzuo,10);
setEffShake(spep_2,ctzuo,25,25);

--集中線
shuchusen1=entryEffectLife(spep_2,906,44,0x80,-1,0,0,0);-- 集中線

setEffMoveKey(spep_2,shuchusen1,0,0,0);
setEffMoveKey(spep_2+44,shuchusen1,0,0,0);
setEffScaleKey(spep_2,shuchusen1,1.0,1.0);
setEffScaleKey(spep_2+44,shuchusen1,1.0,1.0);
setEffAlphaKey(spep_2,shuchusen1,255);
setEffAlphaKey(spep_2+44,shuchusen1,255);
setEffRotateKey(spep_2,shuchusen1,0);
setEffRotateKey(spep_2+44,shuchusen1,0);

--黒背景
entryFadeBg( spep_2, 0, 44, 0, 0, 0, 0, 210);  -- 黒　背景

--白フェード
entryFade(spep_2+36, 8, 2,0, fcolor_r, fcolor_g, fcolor_b, 255);

--次の準備
spep_3=spep_2+44;



------------------------------------------------------
-- 敵を蹴る
------------------------------------------------------
--エフェクトの再生
kick=entryEffectLife(spep_3,SP_03x,64,0x100,0,0,0,0);
setEffMoveKey(spep_3,kick,0,0,0);
setEffMoveKey(spep_3+64,kick,0,0,0);
setEffScaleKey(spep_3,kick,1.0,1.0);
setEffScaleKey(spep_3+64,kick,1.0,1.0);
setEffAlphaKey(spep_3,kick,255);
setEffAlphaKey(spep_3+64,kick,255);
setEffRotateKey(spep_3,kick,0);
setEffRotateKey(spep_3+64,kick,0);

--集中線(横)
shuchusen2=entryEffectLife(spep_3,920,14,0x80,-1,-50,-50,0);-- 集中線
setEffMoveKey(spep_3,shuchusen2,-50,-50,0);
setEffMoveKey(spep_3+14,shuchusen2,-50,-50,0);
setEffScaleKey(spep_3,shuchusen2,1.2,1.2);
setEffScaleKey(spep_3+14,shuchusen2,1.2,1.2);
setEffAlphaKey(spep_3,shuchusen2,255);
setEffAlphaKey(spep_3+14,shuchusen2,255);
setEffRotateKey(spep_3,shuchusen2,0);
setEffRotateKey(spep_3+14,shuchusen2,0);

--敵の登場
setDisp( spep_3, 1, 1);
changeAnime(spep_3, 1, 104);
setMoveKey(spep_3, 1,530, 160, 0);
setMoveKey(spep_3+14,1,130,50,0);
setScaleKey(spep_3,1,1.3,1.3);
setScaleKey(spep_3+14,1,1.3,1.3);
setRotateKey(spep_3,1 ,0);
setShakeChara(spep_3,1,18,15);


--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_3+2; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

--キャラクターの固定
setMoveKey(SP_dodge, 1, 530 , 160, 0);
setScaleKey(SP_dodge , 1 , 1.3 ,1.3);
setRotateKey(SP_dodge,   1, 0);

setDisp(SP_dodge, 0, 0);
setMoveKey(SP_dodge, 0, 0 , -2000, 0);
setScaleKey(SP_dodge , 0 , 1.3 ,1.3);
setRotateKey(SP_dodge,   0, 0);

setMoveKey(SP_dodge+8, 1, 530 , 160, 0);
setScaleKey(SP_dodge+8,  1 , 1.3 ,1.3);
setRotateKey(SP_dodge+8,   1, 0);

setDisp(SP_dodge+9, 1, 0);
setMoveKey(SP_dodge+9, 1, 0 , 0, 0);
setScaleKey(SP_dodge+9,  1 , 1.5 ,1.5);
setRotateKey(SP_dodge+9,   1, 0);

setMoveKey(SP_dodge+10, 0, 0 ,-2000, 0);
setScaleKey(SP_dodge+10,  0 , 1.5 ,1.5);
setRotateKey(SP_dodge+10,   0, 0);

setMoveKey(SP_dodge+10, 0, 0 , -2000, 0);
setScaleKey(SP_dodge , 0 , 1.3 ,1.3);
setRotateKey(SP_dodge,   0, 0);

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
--回避しなかった場合
--------------------------------------

--集中線(斜め)
shuchusen3=entryEffectLife(spep_3+15,924,49,0x80,-1,-270,-10,0);-- 集中線
setEffMoveKey(spep_3+15,shuchusen3,-270,-10,0);
setEffMoveKey(spep_3+49,shuchusen3,-270,-10,0);
setEffScaleKey(spep_3+15,shuchusen3,1.4,1.4);
setEffScaleKey(spep_3+49,shuchusen3,1.4,1.4);
setEffAlphaKey(spep_3+15,shuchusen3,255);
setEffAlphaKey(spep_3+49,shuchusen3,255);
setEffRotateKey(spep_3+15,shuchusen3,-45);
setEffRotateKey(spep_3+49,shuchusen3,-45);

--敵蹴り飛ばされる
setDisp( spep_3+15, 1, 1);
setDisp( spep_3+44, 1, 0);
changeAnime(spep_3+15, 1, 108);
setMoveKey(spep_3+15, 1,270,90,0);
setMoveKey(spep_3+20, 1,180,150,0);
setMoveKey(spep_3+44,1,200,410,0);
setScaleKey(spep_3+15,1,2.2,2.2);
setScaleKey(spep_3+20,1,1.0,1.0);
setScaleKey(spep_3+44,1,0.0,0.0);
setRotateKey(spep_3+15,1 ,0);


--文字エントリー
ctbaki=entryEffectLife(spep_3+15,10020,49,0x100,-1,50,280);--バキッ
setEffMoveKey(spep_3+15,ctbaki,50,290,0);
setEffMoveKey(spep_3+64,ctbaki,50,290,0);
setEffScaleKey(spep_3+15,ctbaki,2.0,2.0);
setEffScaleKey(spep_3+64,ctbaki,2.0,2.0);
setEffShake(spep_3+15,ctbaki,49,15);

--SE
playSe(spep_3+15,1010);--バキ
--[[
--敵キャラの退出
setDisp( spep_3+48, 1, 0);
setMoveKey(spep_3+48, 1,0, 0, 0);
setScaleKey(spep_3+48,1,1.5,1.5);
]]
--黒背景
entryFadeBg( spep_3, 0, 64, 0, 0, 0, 0, 210);  -- 黒　背景

--白フェード
entryFade(spep_3+50, 14, 0,0, fcolor_r, fcolor_g, fcolor_b, 255);

--次の準備
spep_4=spep_3+64;

--------------------------------------
--カードカットイン(90F)
--------------------------------------

playSe(spep_4,SE_05);
shuchusen3=entryEffectLife(spep_4,906,90,0x100,-1,0,0,0);   -- 集中線
setEffScaleKey(spep_4,shuchusen3,1.6,1.6);

speff2=entryEffect(spep_4,1507,0,-1,0,0,0);   -- カード
setEffReplaceTexture(speff2,1,1);
setEffReplaceTexture(speff2,2,0);-- カード差し替え
setEffReplaceTexture(speff2,5,4);-- 技名テクスチャ差し替え

-- ** エフェクト等 ** --
entryFade(spep_4+85,3,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_5=spep_4+90;


------------------------------------------------------
-- 光弾発生
------------------------------------------------------


--集中線
shuchusen4=entryEffectLife(spep_5,906,44,0x80,0,250,0,0);-- 集中線

setEffMoveKey(spep_5,shuchusen4,250,0,0);
setEffMoveKey(spep_5+44,shuchusen4,250,0,0);
setEffScaleKey(spep_5,shuchusen4,2.0,2.0);
setEffScaleKey(spep_5+44,shuchusen4,2.0,2.0);
setEffAlphaKey(spep_5,shuchusen4,255);
setEffAlphaKey(spep_5+44,shuchusen4,255);
setEffRotateKey(spep_5,shuchusen4,0);
setEffRotateKey(spep_5+44,shuchusen4,0);

--集中線(斜め)
shuchusen5=entryEffectLife(spep_5,921,100,0x80,-1,20,0,0);-- 集中線
setEffMoveKey(spep_5,shuchusen5,20,0,0);
setEffMoveKey(spep_5+100,shuchusen5,20,0,0);
setEffScaleKey(spep_5,shuchusen5,1.5,1.5);
setEffScaleKey(spep_5+100,shuchusen5,1.5,1.5);
setEffAlphaKey(spep_5,shuchusen5,0);
setEffAlphaKey(spep_5+44,shuchusen5,0);
setEffAlphaKey(spep_5+45,shuchusen5,255);
setEffAlphaKey(spep_5+100,shuchusen5,255);
setEffRotateKey(spep_5+45,shuchusen5,-30);
setEffRotateKey(spep_5+100,shuchusen5,-30);

--エフェクトの再生(前)
light_before=entryEffectLife(spep_5,SP_04x,100,0x100,0,0,0,0);
setEffMoveKey(spep_5,light_before,0,0,0);
setEffMoveKey(spep_5+100,light_before,0,0,0);
setEffScaleKey(spep_5,light_before,1.0,1.0);
setEffScaleKey(spep_5+100,light_before,1.0,1.0);
setEffAlphaKey(spep_5,light_before,255);
setEffAlphaKey(spep_5+100,light_before,255);
setEffRotateKey(spep_5,light_before,0);
setEffRotateKey(spep_5+100,light_before,0);

--エフェクトの再生(後ろ)
light_behind=entryEffectLife(spep_5,SP_05x,100,0x80,0,0,0,0);
setEffMoveKey(spep_5,light_behind,0,0,0);
setEffMoveKey(spep_5+100,light_behind,0,0,0);
setEffScaleKey(spep_5,light_behind,1.0,1.0);
setEffScaleKey(spep_5+100,light_behind,1.0,1.0);
setEffAlphaKey(spep_5,light_behind,255);
setEffAlphaKey(spep_5+100,light_behind,255);
setEffRotateKey(spep_5,light_behind,0);
setEffRotateKey(spep_5+100,light_behind,0);

--SE
playSe(spep_5+5,43);--瞬間移動
playSe(spep_5+15,SE_03);
playSe(spep_5+35,SE_03);
playSe(spep_5+55,SE_03);
playSe(spep_5+75,SE_03);
--playSe(spep_5+95,SE_03);

--敵の飛んでくる
setDisp( spep_5+46, 1, 1);
changeAnime(spep_5+46, 1, 108);
setMoveKey(spep_5+46, 1,-480,-480, 0);
setMoveKey(spep_5+56,1,-135,-50,0);
setScaleKey(spep_5+46,1,2.0,2.0);
setScaleKey(spep_5+56,1,2.0,2.0);
setRotateKey(spep_5+46,1 ,0);
setRotateKey(spep_5+56,1 ,0);

--敵が反り返る
setDisp( spep_5+57, 1, 1);
changeAnime(spep_5+57, 1, 106);
setMoveKey(spep_5+57, 1,-210,100, 0);
setMoveKey(spep_5+100,1,-210,100,0);
setScaleKey(spep_5+57,1,1.8,1.8);
setScaleKey(spep_5+100,1,1.8,1.8);
setRotateKey(spep_5+57,1 ,-70);
setRotateKey(spep_5+100,1 ,-70);
setShakeChara(spep_5+57,1,33,10);

--黒背景
entryFadeBg( spep_5, 0, 100, 0, 0, 0, 0, 210);  -- 黒　背景

-- ** エフェクト等 ** --
entryFade(spep_5+84,14,4,0,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_6=spep_5+100;

------------------------------------------------------
-- ギャン(60F)
------------------------------------------------------
setDisp( spep_6-1, 1, 0);

gyan = entryEffect(  spep_6,  190000,  0x100,  -1,  0,  0,  0);  --ギャン
setEffScaleKey(  spep_6,  gyan,  1.0,  1.0);
setEffAlphaKey(  spep_6,  gyan,  255);

-- 書き文字エントリー --
ct_06 = entryEffectLife( spep_6, 10006, 58, 0x100, -1, 0, 0, 300);    -- ギャン

setEffScaleKey( spep_6, ct_06, 2.0, 2.0);
setEffAlphaKey( spep_6, ct_06, 255);
setEffScaleKey( spep_6+10, ct_06, 3.8, 3.8);
setEffScaleKey( spep_6+58, ct_06, 4.5, 4.5);
setEffAlphaKey( spep_6+58, ct_06, 255);
setEffShake( spep_6, ct_06, 58, 10);

playSe(  spep_6, SE_09);

entryFade(  spep_6+47,  6,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryFadeBg(spep_6,0,60,0,0,0,0,255);
entryFade( spep_6+50, 4,  8, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_7 = spep_6+60;


------------------------------------------------------
-- ダメージ演出
------------------------------------------------------

setDisp( spep_7-5, 1, 1);
setMoveKey(  spep_7-5,    1,  100,  0,   0);
setScaleKey( spep_7-5,    1,  1.0, 1.0);
setMoveKey(  spep_7,    1,    0,   0,   128);
setScaleKey( spep_7,    1,  0.1, 0.1);
setRotateKey( spep_7,    1,  0);

changeAnime( spep_7, 1, 107);                         -- 手前ダメージ
entryEffect( spep_7+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_7+8, SE_10);

setMoveKey(  spep_7+8,   1,    0,   0,   128);
setMoveKey(  spep_7+15,   1,  -60,  -200,  -100);
setMoveKey(  spep_7+16,   1,  -60,  -200,  -100);
setDamage( spep_7+16, 1, 0);  -- ダメージ振動等
setShake(spep_7+7,6,15);
setShake(spep_7+13,15,10);

setRotateKey( spep_7,  1,  30 );
setRotateKey( spep_7+2,  1,  80 );
setRotateKey( spep_7+4,  1, 120 );
setRotateKey( spep_7+6,  1, 160 );
setRotateKey( spep_7+8,  1, 200 );
setRotateKey( spep_7+10,  1, 260 );
setRotateKey( spep_7+12,  1, 320 );
setRotateKey( spep_7+14,  1,   0 );

setShakeChara( spep_7+15, 1, 5,  10);
setShakeChara( spep_7+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep_7+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep_7+15, ct, 30, 10);
setEffRotateKey( spep_7+15, ct, -40);
setEffScaleKey( spep_7+15, ct, 4.0, 4.0);
setEffScaleKey( spep_7+16, ct, 2.0, 2.0);
setEffScaleKey( spep_7+17, ct, 2.6, 2.6);
setEffScaleKey( spep_7+18, ct, 4.0, 4.0);
setEffScaleKey( spep_7+19, ct, 2.6, 2.6);
setEffScaleKey( spep_7+20, ct, 3.8, 3.8);
setEffScaleKey( spep_7+110, ct, 3.8, 3.8);
setEffAlphaKey( spep_7+15, ct, 255);
setEffAlphaKey( spep_7+105, ct, 255);
setEffAlphaKey( spep_7+115, ct, 0);

playSe( spep_7+3, SE_11);
shuchusen = entryEffectLife( spep_7+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_7+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

shuchusenkuro = entryEffectLife( spep_7+15, 1657, 120, 0x80,  -1, 0,  0,  0);   -- 集中線


-- ダメージ表示
dealDamage(spep_7+16);
entryFade( spep_7+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_7+110);

end
