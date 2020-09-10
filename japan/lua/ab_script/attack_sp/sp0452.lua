--sp0452	超サイヤ人ゴッドSSベジータ	ガンマバーストフラッシュ  ver2

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
SP_01=151571;--気溜め
SP_02=151572;--連続気弾撃ち
SP_03=151573;--気弾命中爆発
SP_04=151574;--光弾溜め
SP_05=151575;--発射
SP_06=151576;--迫る
SP_07=190003;--ギャン
SP_08=1556;--爆発

--敵側は味方側に1xをつけてます
SP_01x = 151571;--気溜め
SP_02x = 151572;--連続気弾撃ち
SP_03x = 151573;--気弾命中爆発
SP_04x = 151574;--光弾溜め
SP_05x = 151575;--発射
SP_06x = 151576;--迫る
SP_07x=190003;--ギャン
SP_08x=1556;--爆発



multi_frm = 2;

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then


setVisibleUI(0, 0);
------------------------------------------------------
-- 味方側
------------------------------------------------------

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

--------------------------------------
--気だめ
--------------------------------------

spep_0=0;

--エフェクトの再生
--後ろの黄色い気
entryEffectLife(spep_0,1501,44,0x80,-1,0,0,0);    -- eff_002 レイヤー前後にある

--前の黄色い気
kiiro=entryEffectLife(spep_0,1500,44,0x100,-1,0,0,0);    -- eff_002 レイヤー前後にある
setEffAlphaKey(spep_0+1,kiiro,0);
setEffAlphaKey(spep_0+18,kiiro,0);
setEffAlphaKey(spep_0+19,kiiro,255);

kidame=entryEffectLife(spep_0,SP_01,44,0x80,-1,0,0,0);
setEffMoveKey(spep_0,kidame,0,0,0);
setEffMoveKey(spep_0+44,kidame,0,0,0);
setEffScaleKey(spep_0,kidame,1.0,1.0);
setEffScaleKey(spep_0+44,kidame,1.0,1.0);
setEffAlphaKey(spep_0,kidame,255);
setEffAlphaKey(spep_0+44,kidame,255);
setEffRotateKey(spep_0,kidame,0);
setEffRotateKey(spep_0+44,kidame,0);

--SE
playSe(spep_0,SE_01); 

--集中線
shuchusen = entryEffectLife(spep_0, 1657, 44, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey(spep_0, shuchusen, 1.6, 1.6);

--文字エントリー
ctzuzuzu=entryEffectLife(spep_0,10013,44,0x100,-1,0,130);--ズズズ

setEffShake(spep_0,ctzuzuzu,69,15);
setEffMoveKey(spep_0,ctzuzuzu,0,130);
setEffMoveKey(spep_0+2,ctzuzuzu,0,280);
setEffMoveKey(spep_0+44,ctzuzuzu,0,280);
setEffScaleKey(spep_0,ctzuzuzu,0.8,0.8);
setEffScaleKey(spep_0+4,ctzuzuzu,1.5,1.5)
setEffScaleKey(spep_0+8,ctzuzuzu,3.0,3.0);
setEffScaleKey(spep_0+44,ctzuzuzu,3.0,3.0);
setEffAlphaKey(spep_0,ctzuzuzu,255);
setEffAlphaKey(spep_0+44,ctzuzuzu,255);
setEffRotateKey(spep_0,ctzuzuzu,-5);
setEffRotateKey(spep_0+44,ctzuzuzu,-5);


--黒背景
entryFadeBg( spep_0+10, 5, 29, 0, 0, 0, 0, 210); -- 黒　背景

--白フェード
entryFade(spep_0+29, 7, 10,5, fcolor_r, fcolor_g, fcolor_b, 255);

--次の準備
spep_1=spep_0+44;



--------------------------------------
--連続気弾
--------------------------------------

--エフェクトの再生
kidan=entryEffectLife(spep_1,SP_02,67,0x100,-1,0,0,0);
setEffMoveKey(spep_1,kidan,0,0,0);
setEffMoveKey(spep_1+67,kidan,0,0,0);
setEffScaleKey(spep_1,kidan,1.0,1.0);
setEffScaleKey(spep_1+67,kidan,1.0,1.0);
setEffAlphaKey(spep_1,kidan,255);
setEffAlphaKey(spep_1+67,kidan,255);
setEffRotateKey(spep_1,kidan,0);
setEffRotateKey(spep_1+67,kidan,0);

--黒背景
entryFadeBg( spep_1, 0, 68, 0, 10, 10, 10, 255);  -- 黒　背景

-- ** 音 ** --
playSe( spep_1+8,1030);--344
setSeVolume( spep_1+8,1030, 70 );
playSe( spep_1+18,1025);--354
setSeVolume( spep_1+18,1025, 70 );
playSe( spep_1+28,1030);--364
setSeVolume( spep_1+28,1030, 70 );
playSe( spep_1+38,1025);--374
setSeVolume( spep_1+38,1025, 70 );

seID0=playSe( spep_1+48,1030);--384
setSeVolume( spep_1+48,1030, 70 );

seID1=playSe( spep_1+58,SE_07);--394
setSeVolume( spep_1+58,SE_07, 70 );


--集中線
shuchusen1 = entryEffectLife(spep_1, 920, 68, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey(spep_1, shuchusen1, 1.6, 1.6);

--白フェード
entryFade(spep_1+48, 15, 4,7, fcolor_r, fcolor_g, fcolor_b, 255);

--次の準備
spep_2=spep_1+68;



--------------------------------------
--気弾が命中
--------------------------------------

--エフェクトの再生
hit=entryEffectLife(spep_2,SP_03,90,0x100,-1,0,0,0);
setEffMoveKey(spep_2,hit,0,0,0);
setEffMoveKey(spep_2+90,hit,0,0,0);
setEffScaleKey(spep_2,hit,1.0,1.0);
setEffScaleKey(spep_2+90,hit,1.0,1.0);
setEffAlphaKey(spep_2,hit,255);
setEffAlphaKey(spep_2+90,hit,255);
setEffRotateKey(spep_2,hit,0);
setEffRotateKey(spep_2+90,hit,0);


--敵の配置＆敵の移動
setDisp( spep_2, 1, 1);
changeAnime(spep_2, 1, 104);

------------------------------------------------------
-- 回避
------------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge=spep_2+4; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

--キャラクターの固定
setMoveKey(SP_dodge, 1, 560 , 30, 0);
setScaleKey(SP_dodge , 1 , 1.5 ,1.5);
setRotateKey(SP_dodge,   1, 0);

setMoveKey(SP_dodge+8, 1, 560 , 30, 0);
setScaleKey(SP_dodge+8,  1 , 1.5 ,1.5);
setRotateKey(SP_dodge+8,   1, 0);

setDisp(SP_dodge+9, 1, 0);

setMoveKey(SP_dodge+9, 1, 0 , 0, 0);
setScaleKey(SP_dodge+9,  1 , 1.5 ,1.5);
setRotateKey(SP_dodge+9,   1, 0);

setMoveKey(SP_dodge+10, 1, 0 , 0, 0);
setScaleKey(SP_dodge+10,  1 , 1.5 ,1.5);
setRotateKey(SP_dodge+10,   1, 0);

stopSe( SP_dodge-3, seID0, 0);
stopSe( SP_dodge-3, seID1, 0);
setEffAlphaKey( SP_dodge-3,hit,0)

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

changeAnime(spep_2+13, 1, 106);
setMoveKey(spep_2, 1, 700 , 0, 0);
setMoveKey(spep_2+11, 1, 180 ,0, 0);
setMoveKey(spep_2+13, 1, 180 ,20, 0);
setMoveKey(spep_2+90, 1, 180 ,20, 0);
setScaleKey(spep_2 , 1 , 1.5 ,1.5);
setScaleKey(spep_2+11 , 1 , 1.5 ,1.5);
--setScaleKey(spep_2+12 , 1 , 1.7 ,1.7);
setScaleKey(spep_2+90 , 1 , 1.5 ,1.5);
setRotateKey(spep_2 ,1 ,0);
setRotateKey(spep_2+11 ,1 ,0);
setRotateKey(spep_2+13 ,1 ,-40);
setRotateKey(spep_2+90,1 ,-40);
setShakeChara(spep_2+13 , 1, 90 ,15);

aa = 60;
-- ** 音 ** --
playSe( spep_2+13,SE_09);--442
setSeVolume( spep_2+13,SE_09, aa );
playSe( spep_2+21,SE_09);--450
setSeVolume( spep_2+21,SE_09, aa );
playSe( spep_2+29,SE_09);--458
setSeVolume( spep_2+29,SE_09, aa );
playSe( spep_2+37,SE_09);--466
setSeVolume( spep_2+37,SE_09, aa );
playSe( spep_2+45,SE_09);--474
setSeVolume( spep_2+45,SE_09, aa );
playSe( spep_2+53,SE_09);--482
setSeVolume( spep_2+53,SE_09, aa );
playSe( spep_2+61,SE_09);--490
setSeVolume( spep_2+61,SE_09, aa );
playSe( spep_2+69,SE_09);--490
setSeVolume( spep_2+69,SE_09, aa );
playSe( spep_2+77,SE_09);--490
setSeVolume( spep_2+77,SE_09, aa );
playSe( spep_2+85,SE_09);--490
setSeVolume( spep_2+85,SE_09, aa );


--黒背景
entryFadeBg( spep_2, 0, 90, 0, 10, 10, 10, 255); -- 黒　背景

--集中線
shuchusen2 = entryEffectLife(spep_2, 920, 90, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey(spep_2, shuchusen2, 1.6, 1.6);

--キャラの退却
setDisp(spep_2+91, 1, 0);
setMoveKey(spep_2+92, 1, 0 , 0, 0);

--白フェード
entryFade(spep_2+72, 15, 4,5, fcolor_r, fcolor_g, fcolor_b, 255);

--次の準備
spep_3=spep_2+90;





--------------------------------------
--ガンマバースト溜め
--------------------------------------
--エフェクトの再生
ganma=entryEffectLife(spep_3,SP_04,100,0x80,-1,0,0,0);
setEffMoveKey(spep_3,ganma,0,0,0);
setEffMoveKey(spep_3+100,ganma,0,0,0);
setEffScaleKey(spep_3,ganma,1.0,1.0);
setEffScaleKey(spep_3+100,ganma,1.0,1.0);
setEffAlphaKey(spep_3,ganma,255);
setEffAlphaKey(spep_3+100,ganma,255);
setEffRotateKey(spep_3,ganma,0);
setEffRotateKey(spep_3+100,ganma,0);


--顔＆セリフカットイン
speff=entryEffect(spep_3+12,1504,0x100,-1,0,0,0);  --カットイン(顔)
setEffReplaceTexture(speff,3,2);  --カットイン差し替え
speff1=entryEffect(spep_3+12,1505,0x100,-1,0,0,0);  --カットイン(セリフ)
setEffReplaceTexture(speff1,4,5);  --セリフカットイン差し替え

--SE
playSe( spep_3+24, SE_05); --ゴゴゴ

--集中線
shuchusen3 = entryEffectLife(spep_3, 906, 90, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey(spep_3, shuchusen3, 1.6, 1.6);

--文字エントリー
ctgogo=entryEffectLife(spep_3+24,190006,58,0x100,-1,110,500);--ゴゴゴ
setEffMoveKey(spep_3+24,ctgogo,110,500,0);
setEffMoveKey(spep_3+90,ctgogo,110,500,0);
setEffScaleKey(spep_3+24, ctgogo, 0.7, 0.7);
setEffScaleKey(spep_3+90, ctgogo, 0.7, 0.7);
--黒背景
entryFadeBg( spep_3, 0, 100, 0, 10, 10, 10, 255);  -- 黒　背景

--白フェード
entryFade(spep_3+94, 6, 1,5, fcolor_r, fcolor_g, fcolor_b, 255);


--次の準備
spep_4=spep_3+100;



--------------------------------------
--カードカットイン(90F)
--------------------------------------

playSe( spep_4, SE_05);
shuchusen4 = entryEffectLife(spep_4, 906, 90, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey(spep_4, shuchusen4, 1.6, 1.6);

speff2 = entryEffect(  spep_4,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff2, 1, 1);
setEffReplaceTexture( speff2, 2, 0);-- カード差し替え
setEffReplaceTexture( speff2, 5, 4);-- 技名テクスチャ差し替え

-- ** エフェクト等 ** --
entryFade(spep_4+85, 3, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_5 = spep_4+90;



--------------------------------------
--発射
--------------------------------------

--エフェクトの再生
fieing=entryEffectLife(spep_5,SP_05,70,0x80,-1,0,0,0);
setEffMoveKey(spep_5,fieing,0,0,0);
setEffMoveKey(spep_5+70,fieing,0,0,0);
setEffScaleKey(spep_5,fieing,1.0,1.0);
setEffScaleKey(spep_5+70,fieing,1.0,1.0);
setEffAlphaKey(spep_5,fieing,255);
setEffAlphaKey(spep_5+70,fieing,255);
setEffRotateKey(spep_5,fieing,0);
setEffRotateKey(spep_5+70,fieing,0);

--文字エントリー
ctzuo=entryEffectLife(spep_5+16,10012,60,0x100,-1,100,300);--ズオッ
setEffMoveKey(spep_5+16,ctzuo,100,290,0);
setEffMoveKey(spep_5+60,ctzuo,100,290,0);
setEffScaleKey(spep_5+16,ctzuo, 0.3 ,0.3);
setEffScaleKey(spep_5+22,ctzuo, 2.8 ,2.8);
setEffScaleKey(spep_5+44,ctzuo, 2.8 ,2.8);
setEffScaleKey(spep_5+60,ctzuo, 6.0 ,6.0);
setEffAlphaKey(spep_5+16,ctzuo,255);
setEffAlphaKey(spep_5+44,ctzuo,255);
setEffAlphaKey(spep_5+60,ctzuo,0);
setEffRotateKey(spep_5+16,ctzuo,25);
setEffRotateKey(spep_5+69,ctzuo,25);
setEffShake(spep_5,ctzuo,60,25);

playSe(spep_5+10, SE_07);

--黒背景
entryFadeBg( spep_5, 0, 70, 0, 10, 10, 10, 255);  -- 黒　背景

--集中線
shuchusen5 = entryEffectLife(spep_5, 906, 70, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey(spep_5, shuchusen5, 1.6, 1.6);

-- ** エフェクト等 ** --
entryFade(spep_5+50, 15, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_6=spep_5+70;

--------------------------------------
--迫る
--------------------------------------

--集中線
shuchusen6 = entryEffectLife(spep_6, 921, 100, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffRotateKey(spep_6,shuchusen6,160);
setEffRotateKey(spep_6+100,shuchusen6,160);
setEffScaleKey(spep_6, shuchusen6, 1.6, 1.6);
setEffScaleKey(spep_6+100, shuchusen6, 1.6, 1.6);

--エフェクトの再生
press=entryEffectLife(spep_6,SP_06,100,0x80,-1,0,0,0);
setEffMoveKey(spep_6,press,0,0,0);
setEffMoveKey(spep_6+100,press,0,0,0);
setEffScaleKey(spep_6,press,1.0,1.0);
setEffScaleKey(spep_6+100,press,1.0,1.0);
setEffAlphaKey(spep_6,press,255);
setEffAlphaKey(spep_6+100,press,255);
setEffRotateKey(spep_6,press,0);
setEffRotateKey(spep_6+100,press,0);

--文字エントリー
ctzudodo=entryEffectLife(spep_6-2,10014,100,0x100,-1,30,380);--ズドドドッ
setEffMoveKey(spep_6-2,ctzudodo,80,320,0);
setEffMoveKey(spep_6,ctzudodo,80,325,0);
setEffMoveKey(spep_6+2,ctzudodo,80,320,0);
setEffMoveKey(spep_6+4,ctzudodo,80,325,0);
setEffMoveKey(spep_6+6,ctzudodo,80,320,0);
setEffMoveKey(spep_6+8,ctzudodo,80,325,0);
setEffMoveKey(spep_6+10,ctzudodo,80,320,0);
setEffMoveKey(spep_6+12,ctzudodo,80,325,0);
setEffMoveKey(spep_6+14,ctzudodo,80,320,0);
setEffMoveKey(spep_6+16,ctzudodo,80,325,0);
setEffMoveKey(spep_6+18,ctzudodo,80,320,0);
setEffMoveKey(spep_6+20,ctzudodo,80,325,0);
setEffMoveKey(spep_6+22,ctzudodo,80,320,0);
setEffMoveKey(spep_6+24,ctzudodo,80,325,0);
setEffMoveKey(spep_6+26,ctzudodo,80,320,0);
setEffMoveKey(spep_6+28,ctzudodo,80,325,0);
setEffMoveKey(spep_6+30,ctzudodo,80,320,0);
setEffMoveKey(spep_6+32,ctzudodo,80,325,0);
setEffMoveKey(spep_6+34,ctzudodo,80,320,0);
setEffMoveKey(spep_6+36,ctzudodo,80,325,0);
setEffMoveKey(spep_6+38,ctzudodo,80,320,0);
setEffMoveKey(spep_6+40,ctzudodo,80,325,0);
setEffMoveKey(spep_6+42,ctzudodo,80,320,0);
setEffMoveKey(spep_6+44,ctzudodo,80,325,0);
setEffMoveKey(spep_6+46,ctzudodo,80,325,0);
setEffMoveKey(spep_6+48,ctzudodo,80,320,0);
setEffMoveKey(spep_6+50,ctzudodo,80,325,0);
setEffMoveKey(spep_6+52,ctzudodo,80,320,0);
setEffMoveKey(spep_6+54,ctzudodo,80,325,0);
setEffMoveKey(spep_6+56,ctzudodo,80,320,0);
setEffMoveKey(spep_6+58,ctzudodo,80,325,0);
setEffMoveKey(spep_6+60,ctzudodo,80,320,0);
setEffMoveKey(spep_6+62,ctzudodo,80,325,0);
setEffMoveKey(spep_6+64,ctzudodo,80,320,0);
setEffMoveKey(spep_6+66,ctzudodo,80,325,0);
setEffMoveKey(spep_6+68,ctzudodo,80,320,0);
setEffMoveKey(spep_6+70,ctzudodo,80,325,0);
setEffMoveKey(spep_6+72,ctzudodo,80,320,0);
setEffMoveKey(spep_6+74,ctzudodo,80,325,0);
setEffMoveKey(spep_6+76,ctzudodo,80,320,0);
setEffMoveKey(spep_6+78,ctzudodo,80,325,0);
setEffMoveKey(spep_6+80,ctzudodo,80,320,0);
setEffMoveKey(spep_6+82,ctzudodo,80,325,0);
setEffMoveKey(spep_6+84,ctzudodo,80,320,0);
setEffMoveKey(spep_6+86,ctzudodo,80,325,0);
setEffMoveKey(spep_6+88,ctzudodo,80,320,0);
setEffMoveKey(spep_6+90,ctzudodo,80,325,0);
setEffMoveKey(spep_6+92,ctzudodo,80,320,0);
setEffMoveKey(spep_6+94,ctzudodo,80,325,0);
setEffMoveKey(spep_6+96,ctzudodo,80,320,0);
setEffMoveKey(spep_6+98,ctzudodo,80,325,0);
setEffMoveKey(spep_6+100,ctzudodo,80,320,0);
setEffScaleKey(spep_6-2,ctzudodo, 3.5 ,3.5);
setEffScaleKey(spep_6+100,ctzudodo, 3.5 ,3.5);
setEffAlphaKey(spep_6-2,ctzudodo,255);
setEffAlphaKey(spep_6+100,ctzudodo,255);
setEffRotateKey(spep_6-2,ctzudodo,70);
setEffRotateKey(spep_6+100,ctzudodo,70);
setEffShake(spep_6,ctzudodo,95,15);

--敵の登場
setDisp( spep_6,1,1);
changeAnime(spep_6,1,118);
setMoveKey(spep_6-5,1,500,220,0);
setMoveKey(spep_6+26,1,180,80,0);
setMoveKey(spep_6+100,1,180,80,0)
setScaleKey(spep_6,1,2.2,2.2);
setScaleKey(spep_6+26,1,1.5,1.5);
setScaleKey(spep_6+100,1,1.5,1.5);
setRotateKey(spep_6,1,0);
setShakeChara(spep_6-5,1,100,15);

playSe(spep_6, SE_07);

--キャラの退却
setDisp(spep_6+100, 1, 0);
setMoveKey(spep_6+101, 1, 0 , 0, 0);

--黒背景
entryFadeBg( spep_6, 0, 100, 0, 10, 10, 10, 255);  -- 黒　背景

-- ** エフェクト等 ** --
entryFade(spep_6+65, 30, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_7 = spep_6+100;



--------------------------------------
--ギャン
--------------------------------------

--エフェクトの再生
gyan = entryEffectLife(  spep_7,  190003,  60,  0x100,  -1,  0,  0,  0);  --ギャン
setEffScaleKey(  spep_7,  gyan,  1.0,  1.0);
setEffScaleKey(  spep_7+60,  gyan,  1.0,  1.0);
setEffAlphaKey(  spep_7,  gyan,  255);
setEffAlphaKey(  spep_7+60,  gyan,  255);


-- 書き文字エントリー --
ctgayn = entryEffectLife( spep_7, 10006, 60, 0x100, -1, 0, 0, 400);    -- ギャン
setEffScaleKey( spep_7, ctgayn, 3.0, 3.0);
setEffScaleKey( spep_7+60, ctgayn, 4.0, 4.0);
setEffAlphaKey( spep_7, ctgayn, 255);
setEffAlphaKey( spep_7+60, ctgayn, 0);
setEffShake( spep_7, ctgayn, 60, 10);

playSe(spep_7,SE_09);

entryFade( spep_7+48, 2,  10, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_8 = spep_7+60;

--------------------------------------
--爆発
--------------------------------------
--エフェクトの再生
explosoin=entryEffect(spep_8,SP_08,0x80,-1,0,0,0);
setEffMoveKey(spep_8,explosoin,0,0,0);
setEffMoveKey(spep_8+240,explosoin,0,0,0);
setEffScaleKey(spep_8,explosoin,1.0,1.0);
setEffScaleKey(spep_8+240,explosoin,1.0,1.0);
setEffAlphaKey(spep_8,explosoin,255);
setEffAlphaKey(spep_8+240,explosoin,255);
setEffRotateKey(spep_8,explosoin,0);
setEffRotateKey(spep_8+240,explosoin,0);

playSe( spep_8+4, SE_10);
--shuchusen = entryEffectLife( spep_8+4, 906, 116, 0x00,  -1, 0,  0,  0);   -- 集中線
--entryEffect( 473, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(spep_8+17);

entryFade( spep_8+120, 5,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_8+120);

else


---------------------------------------------
--==敵側==--
---------------------------------------------



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

--------------------------------------
--気だめ
--------------------------------------

spep_0=0;

--エフェクトの再生
--後ろの黄色い気
entryEffectLife(  spep_0,   1501,   44,  0x80, -1,  0,  0,  0);    -- eff_002 レイヤー前後にある

--前の黄色い気
kiiro=entryEffectLife(spep_0,1500,44,0x100,-1,0,0,0);    -- eff_002 レイヤー前後にある
setEffAlphaKey(spep_0+1,kiiro,0);
setEffAlphaKey(spep_0+18,kiiro,0);
setEffAlphaKey(spep_0+19,kiiro,255);

kidame=entryEffectLife(spep_0,SP_01x,44,0x80,-1,0,0,0);
setEffMoveKey(spep_0,kidame,0,0,0);
setEffMoveKey(spep_0+44,kidame,0,0,0);
setEffScaleKey(spep_0,kidame,1.0,1.0);
setEffScaleKey(spep_0+44,kidame,1.0,1.0);
setEffAlphaKey(spep_0,kidame,255);
setEffAlphaKey(spep_0+44,kidame,255);
setEffRotateKey(spep_0,kidame,0);
setEffRotateKey(spep_0+44,kidame,0);

--SE
playSe(spep_0,SE_01); 

--集中線
shuchusen = entryEffectLife(spep_0, 1657, 44, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey(spep_0, shuchusen, 1.6, 1.6);

--文字エントリー
ctzuzuzu=entryEffectLife(spep_0,10013,44,0x100,-1,0,130);--ズズズ

setEffShake(spep_0,ctzuzuzu,69,15);
setEffMoveKey(spep_0,ctzuzuzu,0,130);
setEffMoveKey(spep_0+2,ctzuzuzu,0,280);
setEffMoveKey(spep_0+44,ctzuzuzu,0,280);
setEffScaleKey(spep_0,ctzuzuzu,0.8,0.8);
setEffScaleKey(spep_0+4,ctzuzuzu,1.5,1.5)
setEffScaleKey(spep_0+8,ctzuzuzu,3.0,3.0);
setEffScaleKey(spep_0+44,ctzuzuzu,3.0,3.0);
setEffAlphaKey(spep_0,ctzuzuzu,255);
setEffAlphaKey(spep_0+44,ctzuzuzu,255);
setEffRotateKey(spep_0,ctzuzuzu,10);
setEffRotateKey(spep_0+44,ctzuzuzu,10);


--黒背景	
entryFadeBg( spep_0+10, 5, 29, 0, 0, 0, 0, 210); -- 黒　背景
--白フェード
entryFade(spep_0+29, 7, 10,5, fcolor_r, fcolor_g, fcolor_b, 255);

--次の準備
spep_1=spep_0+44;



--------------------------------------
--連続気弾
--------------------------------------

--エフェクトの再生
kidan=entryEffectLife(spep_1,SP_02x,67,0x100,-1,0,0,0);
setEffMoveKey(spep_1,kidan,0,0,0);
setEffMoveKey(spep_1+67,kidan,0,0,0);
setEffScaleKey(spep_1,kidan,1.0,1.0);
setEffScaleKey(spep_1+67,kidan,1.0,1.0);
setEffAlphaKey(spep_1,kidan,255);
setEffAlphaKey(spep_1+67,kidan,255);
setEffRotateKey(spep_1,kidan,0);
setEffRotateKey(spep_1+67,kidan,0);

--黒背景
entryFadeBg( spep_1, 0, 68, 0, 10, 10, 10, 255);  -- 黒　背景

-- ** 音 ** --
playSe( spep_1+8,1030);--344
setSeVolume( spep_1+8,1030, 70 );
playSe( spep_1+18,1025);--354
setSeVolume( spep_1+18,1025, 70 );
playSe( spep_1+28,1030);--364
setSeVolume( spep_1+28,1030, 70 );
playSe( spep_1+38,1025);--374
setSeVolume( spep_1+38,1025, 70 );

seID0=playSe( spep_1+48,1030);--384
setSeVolume( spep_1+48,1030, 70 );

seID1=playSe( spep_1+58,SE_07);--394
setSeVolume( spep_1+58,SE_07, 70 );

--集中線
shuchusen1 = entryEffectLife(spep_1, 920, 68, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey(spep_1, shuchusen1, 1.6, 1.6);

--白フェード
entryFade(spep_1+48, 15, 4,7, fcolor_r, fcolor_g, fcolor_b, 255);

--次の準備
spep_2=spep_1+68;



--------------------------------------
--気弾が命中
--------------------------------------

--エフェクトの再生
hit=entryEffectLife(spep_2,SP_03x,90,0x100,-1,0,0,0);
setEffMoveKey(spep_2,hit,0,0,0);
setEffMoveKey(spep_2+90,hit,0,0,0);
setEffScaleKey(spep_2,hit,1.0,1.0);
setEffScaleKey(spep_2+90,hit,1.0,1.0);
setEffAlphaKey(spep_2,hit,255);
setEffAlphaKey(spep_2+90,hit,255);
setEffRotateKey(spep_2,hit,0);
setEffRotateKey(spep_2+90,hit,0);


--敵の配置＆敵の移動
setDisp( spep_2, 1, 1);
changeAnime(spep_2, 1, 104);

------------------------------------------------------
-- 回避
------------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge=spep_2+4; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

--キャラクターの固定
setMoveKey(SP_dodge, 1, 560 , 30, 0);
setScaleKey(SP_dodge , 1 , 1.5 ,1.5);
setRotateKey(SP_dodge,   1, 0);

setMoveKey(SP_dodge+8, 1, 560 , 30, 0);
setScaleKey(SP_dodge+8,  1 , 1.5 ,1.5);
setRotateKey(SP_dodge+8,   1, 0);

setDisp(SP_dodge+9, 1, 0);

setMoveKey(SP_dodge+9, 1, 0 , 0, 0);
setScaleKey(SP_dodge+9,  1 , 1.5 ,1.5);
setRotateKey(SP_dodge+9,   1, 0);

setMoveKey(SP_dodge+10, 1, 0 , 0, 0);
setScaleKey(SP_dodge+10,  1 , 1.5 ,1.5);
setRotateKey(SP_dodge+10,   1, 0);

stopSe( SP_dodge-3, seID0, 0);
stopSe( SP_dodge-3, seID1, 0);
setEffAlphaKey( SP_dodge-3,hit,0)

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

changeAnime(spep_2+13, 1, 106);
setMoveKey(spep_2, 1, 700 , 0, 0);
setMoveKey(spep_2+11, 1, 180 ,0, 0);
setMoveKey(spep_2+13, 1, 180 ,20, 0);
setMoveKey(spep_2+90, 1, 180 ,20, 0);
setScaleKey(spep_2 , 1 , 1.5 ,1.5);
setScaleKey(spep_2+11 , 1 , 1.5 ,1.5);
--setScaleKey(spep_2+12 , 1 , 1.7 ,1.7);
setScaleKey(spep_2+90 , 1 , 1.5 ,1.5);
setRotateKey(spep_2 ,1 ,0);
setRotateKey(spep_2+11 ,1 ,0);
setRotateKey(spep_2+13 ,1 ,-40);
setRotateKey(spep_2+90,1 ,-40);
setShakeChara(spep_2+13 , 1, 90 ,15);

aa = 60;
-- ** 音 ** --
playSe( spep_2+13,SE_09);--442
setSeVolume( spep_2+13,SE_09, aa );
playSe( spep_2+21,SE_09);--450
setSeVolume( spep_2+21,SE_09, aa );
playSe( spep_2+29,SE_09);--458
setSeVolume( spep_2+29,SE_09, aa );
playSe( spep_2+37,SE_09);--466
setSeVolume( spep_2+37,SE_09, aa );
playSe( spep_2+45,SE_09);--474
setSeVolume( spep_2+45,SE_09, aa );
playSe( spep_2+53,SE_09);--482
setSeVolume( spep_2+53,SE_09, aa );
playSe( spep_2+61,SE_09);--490
setSeVolume( spep_2+61,SE_09, aa );
playSe( spep_2+69,SE_09);--490
setSeVolume( spep_2+69,SE_09, aa );
playSe( spep_2+77,SE_09);--490
setSeVolume( spep_2+77,SE_09, aa );
playSe( spep_2+85,SE_09);--490
setSeVolume( spep_2+85,SE_09, aa );

--黒背景
entryFadeBg( spep_2, 0, 90, 0, 10, 10, 10, 255); -- 黒　背景

--集中線
shuchusen2 = entryEffectLife(spep_2, 920, 90, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey(spep_2, shuchusen2, 1.6, 1.6);

--キャラの退却
setDisp(spep_2+91, 1, 0);
setMoveKey(spep_2+92, 1, 0 , 0, 0);

--白フェード
entryFade(spep_2+72, 15, 4,5, fcolor_r, fcolor_g, fcolor_b, 255);

--次の準備
spep_3=spep_2+90;





--------------------------------------
--ガンマバースト溜め
--------------------------------------
--エフェクトの再生
ganma=entryEffectLife(spep_3,SP_04x,100,0x80,-1,0,0,0);
setEffMoveKey(spep_3,ganma,0,0,0);
setEffMoveKey(spep_3+100,ganma,0,0,0);
setEffScaleKey(spep_3,ganma,1.0,1.0);
setEffScaleKey(spep_3+100,ganma,1.0,1.0);
setEffAlphaKey(spep_3,ganma,255);
setEffAlphaKey(spep_3+100,ganma,255);
setEffRotateKey(spep_3,ganma,0);
setEffRotateKey(spep_3+100,ganma,0);


--顔＆セリフカットイン
--speff=entryEffect(spep_3+12,1504,0x100,-1,0,0,0);  --カットイン(顔)
--setEffReplaceTexture(speff,3,2);  --カットイン差し替え
--speff1=entryEffect(spep_3+12,1505,0x100,-1,0,0,0);  --カットイン(セリフ)
--setEffReplaceTexture(speff1,4,5);  --セリフカットイン差し替え

--SE
playSe( spep_3+24, SE_05); --ゴゴゴ

--集中線
shuchusen3 = entryEffectLife(spep_3, 906, 90, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey(spep_3, shuchusen3, 1.6, 1.6);

--文字エントリー
ctgogo=entryEffectLife(spep_3+24,190006,58,0x100,-1,110,500);--ゴゴゴ
setEffMoveKey(spep_3+24,ctgogo,110,500,0);
setEffMoveKey(spep_3+90,ctgogo,110,500,0);
setEffScaleKey(spep_3+24, ctgogo, -0.7, 0.7);
setEffScaleKey(spep_3+90, ctgogo, -0.7, 0.7);
--黒背景
entryFadeBg( spep_3, 0, 100, 0, 10, 10, 10, 255);  -- 黒　背景

--白フェード
entryFade(spep_3+94, 6, 1,5, fcolor_r, fcolor_g, fcolor_b, 255);


--次の準備
spep_4=spep_3+100;



--------------------------------------
--カードカットイン(90F)
--------------------------------------

playSe( spep_4, SE_05);
shuchusen4 = entryEffectLife(spep_4, 906, 90, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey(spep_4, shuchusen4, 1.6, 1.6);

speff2 = entryEffect(  spep_4,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff2, 1, 1);
setEffReplaceTexture( speff2, 2, 0);-- カード差し替え
setEffReplaceTexture( speff2, 5, 4);-- 技名テクスチャ差し替え

-- ** エフェクト等 ** --
entryFade(spep_4+85, 3, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_5 = spep_4+90;



--------------------------------------
--発射
--------------------------------------

--エフェクトの再生
fieing=entryEffectLife(spep_5,SP_05x,70,0x80,-1,0,0,0);
setEffMoveKey(spep_5,fieing,0,0,0);
setEffMoveKey(spep_5+70,fieing,0,0,0);
setEffScaleKey(spep_5,fieing,1.0,1.0);
setEffScaleKey(spep_5+70,fieing,1.0,1.0);
setEffAlphaKey(spep_5,fieing,255);
setEffAlphaKey(spep_5+70,fieing,255);
setEffRotateKey(spep_5,fieing,0);
setEffRotateKey(spep_5+70,fieing,0);

--文字エントリー
ctzuo=entryEffectLife(spep_5+16,10012,60,0x100,-1,100,300);--ズオッ
setEffMoveKey(spep_5+16,ctzuo,100,290,0);
setEffMoveKey(spep_5+60,ctzuo,100,290,0);
setEffScaleKey(spep_5+16,ctzuo, 0.3 ,0.3);
setEffScaleKey(spep_5+22,ctzuo, 2.8 ,2.8);
setEffScaleKey(spep_5+44,ctzuo, 2.8 ,2.8);
setEffScaleKey(spep_5+60,ctzuo, 6.0 ,6.0);
setEffAlphaKey(spep_5+16,ctzuo,255);
setEffAlphaKey(spep_5+44,ctzuo,255);
setEffAlphaKey(spep_5+60,ctzuo,0);
setEffRotateKey(spep_5+16,ctzuo,25);
setEffRotateKey(spep_5+69,ctzuo,25);
setEffShake(spep_5,ctzuo,60,25);

playSe(spep_5+10, SE_07);

--黒背景
entryFadeBg( spep_5, 0, 70, 0, 10, 10, 10, 255);  -- 黒　背景

--集中線
shuchusen5 = entryEffectLife(spep_5, 906, 70, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey(spep_5, shuchusen5, 1.6, 1.6);

-- ** エフェクト等 ** --
entryFade(spep_5+50, 15, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_6=spep_5+70;

--------------------------------------
--迫る
--------------------------------------

--集中線
shuchusen6 = entryEffectLife(spep_6, 921, 100, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffRotateKey(spep_6,shuchusen6,160);
setEffRotateKey(spep_6+100,shuchusen6,160);
setEffScaleKey(spep_6, shuchusen6, 1.6, 1.6);
setEffScaleKey(spep_6+100, shuchusen6, 1.6, 1.6);

--エフェクトの再生
press=entryEffectLife(spep_6,SP_06x,100,0x80,-1,0,0,0);
setEffMoveKey(spep_6,press,0,0,0);
setEffMoveKey(spep_6+100,press,0,0,0);
setEffScaleKey(spep_6,press,1.0,1.0);
setEffScaleKey(spep_6+100,press,1.0,1.0);
setEffAlphaKey(spep_6,press,255);
setEffAlphaKey(spep_6+100,press,255);
setEffRotateKey(spep_6,press,0);
setEffRotateKey(spep_6+100,press,0);

--文字エントリー
ctzudodo=entryEffectLife(spep_6-2,10014,100,0x100,-1,30,380);--ズドドドッ
setEffMoveKey(spep_6-2,ctzudodo,80,320,0);
setEffMoveKey(spep_6,ctzudodo,80,325,0);
setEffMoveKey(spep_6+2,ctzudodo,80,320,0);
setEffMoveKey(spep_6+4,ctzudodo,80,325,0);
setEffMoveKey(spep_6+6,ctzudodo,80,320,0);
setEffMoveKey(spep_6+8,ctzudodo,80,325,0);
setEffMoveKey(spep_6+10,ctzudodo,80,320,0);
setEffMoveKey(spep_6+12,ctzudodo,80,325,0);
setEffMoveKey(spep_6+14,ctzudodo,80,320,0);
setEffMoveKey(spep_6+16,ctzudodo,80,325,0);
setEffMoveKey(spep_6+18,ctzudodo,80,320,0);
setEffMoveKey(spep_6+20,ctzudodo,80,325,0);
setEffMoveKey(spep_6+22,ctzudodo,80,320,0);
setEffMoveKey(spep_6+24,ctzudodo,80,325,0);
setEffMoveKey(spep_6+26,ctzudodo,80,320,0);
setEffMoveKey(spep_6+28,ctzudodo,80,325,0);
setEffMoveKey(spep_6+30,ctzudodo,80,320,0);
setEffMoveKey(spep_6+32,ctzudodo,80,325,0);
setEffMoveKey(spep_6+34,ctzudodo,80,320,0);
setEffMoveKey(spep_6+36,ctzudodo,80,325,0);
setEffMoveKey(spep_6+38,ctzudodo,80,320,0);
setEffMoveKey(spep_6+40,ctzudodo,80,325,0);
setEffMoveKey(spep_6+42,ctzudodo,80,320,0);
setEffMoveKey(spep_6+44,ctzudodo,80,325,0);
setEffMoveKey(spep_6+46,ctzudodo,80,325,0);
setEffMoveKey(spep_6+48,ctzudodo,80,320,0);
setEffMoveKey(spep_6+50,ctzudodo,80,325,0);
setEffMoveKey(spep_6+52,ctzudodo,80,320,0);
setEffMoveKey(spep_6+54,ctzudodo,80,325,0);
setEffMoveKey(spep_6+56,ctzudodo,80,320,0);
setEffMoveKey(spep_6+58,ctzudodo,80,325,0);
setEffMoveKey(spep_6+60,ctzudodo,80,320,0);
setEffMoveKey(spep_6+62,ctzudodo,80,325,0);
setEffMoveKey(spep_6+64,ctzudodo,80,320,0);
setEffMoveKey(spep_6+66,ctzudodo,80,325,0);
setEffMoveKey(spep_6+68,ctzudodo,80,320,0);
setEffMoveKey(spep_6+70,ctzudodo,80,325,0);
setEffMoveKey(spep_6+72,ctzudodo,80,320,0);
setEffMoveKey(spep_6+74,ctzudodo,80,325,0);
setEffMoveKey(spep_6+76,ctzudodo,80,320,0);
setEffMoveKey(spep_6+78,ctzudodo,80,325,0);
setEffMoveKey(spep_6+80,ctzudodo,80,320,0);
setEffMoveKey(spep_6+82,ctzudodo,80,325,0);
setEffMoveKey(spep_6+84,ctzudodo,80,320,0);
setEffMoveKey(spep_6+86,ctzudodo,80,325,0);
setEffMoveKey(spep_6+88,ctzudodo,80,320,0);
setEffMoveKey(spep_6+90,ctzudodo,80,325,0);
setEffMoveKey(spep_6+92,ctzudodo,80,320,0);
setEffMoveKey(spep_6+94,ctzudodo,80,325,0);
setEffMoveKey(spep_6+96,ctzudodo,80,320,0);
setEffMoveKey(spep_6+98,ctzudodo,80,325,0);
setEffMoveKey(spep_6+100,ctzudodo,80,320,0);
setEffScaleKey(spep_6-2,ctzudodo, 3.5 ,3.5);
setEffScaleKey(spep_6+100,ctzudodo, 3.5 ,3.5);
setEffAlphaKey(spep_6-2,ctzudodo,255);
setEffAlphaKey(spep_6+100,ctzudodo,255);
setEffRotateKey(spep_6-2,ctzudodo,0);
setEffRotateKey(spep_6+100,ctzudodo,0);
setEffShake(spep_6,ctzudodo,95,15);

--敵の登場
setDisp( spep_6,1,1);
changeAnime(spep_6,1,118);
setMoveKey(spep_6-5,1,500,220,0);
setMoveKey(spep_6+26,1,180,80,0);
setMoveKey(spep_6+100,1,180,80,0)
setScaleKey(spep_6,1,2.2,2.2);
setScaleKey(spep_6+26,1,1.5,1.5);
setScaleKey(spep_6+100,1,1.5,1.5);
setRotateKey(spep_6,1,0);
setShakeChara(spep_6-5,1,100,15);

playSe(spep_6, SE_07);

--キャラの退却
setDisp(spep_6+100, 1, 0);
setMoveKey(spep_6+101, 1, 0 , 0, 0);

--黒背景
entryFadeBg( spep_6, 0, 100, 0, 10, 10, 10, 255);  -- 黒　背景

-- ** エフェクト等 ** --
entryFade(spep_6+65, 30, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_7 = spep_6+100;



--------------------------------------
--ギャン
--------------------------------------

--エフェクトの再生
gyan = entryEffectLife(  spep_7,  190003,  60,  0x100,  -1,  0,  0,  0);  --ギャン
setEffScaleKey(  spep_7,  gyan,  1.0,  1.0);
setEffScaleKey(  spep_7+60,  gyan,  1.0,  1.0);
setEffAlphaKey(  spep_7,  gyan,  255);
setEffAlphaKey(  spep_7+60,  gyan,  255);


-- 書き文字エントリー --
ctgayn = entryEffectLife( spep_7, 10006, 60, 0x100, -1, 0, 0, 400);    -- ギャン
setEffScaleKey( spep_7, ctgayn, 3.0, 3.0);
setEffScaleKey( spep_7+60, ctgayn, 4.0, 4.0);
setEffAlphaKey( spep_7, ctgayn, 255);
setEffAlphaKey( spep_7+60, ctgayn, 0);
setEffShake( spep_7, ctgayn, 60, 10);

playSe(spep_7,SE_09);

entryFade( spep_7+48, 2,  10, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_8 = spep_7+60;

--------------------------------------
--爆発
--------------------------------------
--エフェクトの再生
explosoin=entryEffect(spep_8,SP_08x,0x80,-1,0,0,0);
setEffMoveKey(spep_8,explosoin,0,0,0);
setEffMoveKey(spep_8+240,explosoin,0,0,0);
setEffScaleKey(spep_8,explosoin,1.0,1.0);
setEffScaleKey(spep_8+240,explosoin,1.0,1.0);
setEffAlphaKey(spep_8,explosoin,255);
setEffAlphaKey(spep_8+240,explosoin,255);
setEffRotateKey(spep_8,explosoin,0);
setEffRotateKey(spep_8+240,explosoin,0);

playSe( spep_8+4, SE_10);
--shuchusen = entryEffectLife( spep_8+4, 906, 116, 0x00,  -1, 0,  0,  0);   -- 集中線
--entryEffect( 473, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(spep_8+17);

entryFade( spep_8+120, 5,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_8+120);


end


