--  1013900 人造人間18号　ジャージ　格闘sp1169

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
SP_01 = 151537;--タメ
SP_02 = 151539;--背景土煙
SP_03 = 151540;--振りかぶり突進
SP_04 = 151541;--ヒット
SP_05 = 151543;--突き抜けた後
SP_06 = 151545;--爆発


--敵側は味方側に1xをつけてます

SP_01x = 151538;--気溜め　敵
SP_02x = 151542;--ヒット　敵
SP_03x = 151544;--突き抜けた後　敵


multi_frm = 2;

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

setDisp( 0, 1, 0);--味方表示
setDisp( 0, 0, 0);--敵非表示
changeAnime( 0, 0, 1);--味方立ちポーズ

setMoveKey(   0,   0,    0, -900,   0);
setMoveKey(   0,   1,    0, -54,   0);
setMoveKey(   1,   0,    0, -900,   0);
setMoveKey(   1,   1,    0, -54,   0);
setMoveKey(   2,   0,    0, -900,   0);
setMoveKey(   2,   1,    0, -54,   0);
setMoveKey(   3,   0,    0, -900,   0);
setMoveKey(   3,   1,    0, -54,   0);

setScaleKey(   1,   0, 1.6, 1.6);
setScaleKey(   1,   1, 1.6, 1.6);
setRotateKey(   1,   1, 0);
setRotateKey(   1,   0, 0);


kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 気溜め(120F)
------------------------------------------------------

-- ** 次の準備 ** --
spep_1 = 0;

Kidame=entryEffectLife(spep_1,SP_01,80,0x80,-1,0,0,0);

setEffMoveKey(spep_1, Kidame, 0, 0, 0);
setEffMoveKey(spep_1+88, Kidame, 0, 0, 0);

setEffScaleKey(spep_1, Kidame, 1.0, 1.0);
setEffScaleKey(spep_1+88, Kidame, 1.0, 1.0);

setEffAlphaKey(spep_1, Kidame, 255);
setEffAlphaKey(spep_1+88, Kidame, 255);


shuchusen1 = entryEffectLife(spep_1,906,80,0x80,-1,0,0,0);  -- 集中線

setEffMoveKey(spep_1, shuchusen1, 0, 0, 0);
setEffMoveKey(spep_1+88, shuchusen1, 0, 0, 0);

setEffScaleKey(spep_1, shuchusen1, 1.0, 1.0);
setEffScaleKey(spep_1+88, shuchusen1, 1.0, 1.0);

setEffAlphaKey(spep_1, shuchusen1, 0);
setEffAlphaKey(spep_1+15, shuchusen1, 0);
setEffAlphaKey(spep_1+16, shuchusen1, 255);
setEffAlphaKey(spep_1+88, shuchusen1, 255);


ctdon=entryEffectLife(spep_1, 10019, 69, 0x100, -1, 0, 530); -- ドン効果音

setEffMoveKey(spep_1,ctdon,150,350);
setEffMoveKey(spep_1+88,ctdon,150,350);

setEffScaleKey(spep_1,ctdon,2.4,2.4);
setEffScaleKey(spep_1+88,ctdon,2.4,2.4);


setEffAlphaKey(spep_1, ctdon, 0);
setEffAlphaKey(spep_1+19, ctdon, 0);
setEffAlphaKey(spep_1+20, ctdon, 255);
setEffAlphaKey(spep_1+40, ctdon, 255);
setEffAlphaKey(spep_1+41, ctdon, 0);
setEffAlphaKey(spep_1+88, ctdon, 0);

setEffRotateKey(spep_1,ctdon,45);
setEffRotateKey(spep_1+40,ctdon,45);

setEffShake(spep_1,ctdon,69,15);


--背景・ホワイトフェイド
entryFade( spep_1, 0, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);
entryFadeBg( spep_1, 0, 80, 0, 0, 0, 0, 210);  -- 黒　背景
entryFade( spep_1+70, 6, 6, 6, fcolor_r, fcolor_g, fcolor_b, 255);


--se
playSe( spep_1+5, SE_01);

------------------------------------------------------
-- 突進
------------------------------------------------------

spep_2 = spep_1+81;

ctdon2 = entryEffectLife(spep_2+10,10019,35,0x100,-1,0,530); -- ドン効果音

setEffShake(spep_2+10, ctdon2, 59, 15);

setEffMoveKey(spep_2+10,ctdon2,150,350);
setEffMoveKey(spep_2+45,ctdon2,150,350);

setEffScaleKey(spep_1+10,ctdon2,2.4,2.4);
setEffScaleKey(spep_1+45,ctdon2,2.4,2.4);

setEffAlphaKey(spep_2+10, ctdon2, 255);
setEffAlphaKey(spep_2+45, ctdon2, 255);

setEffRotateKey(spep_2+10, ctdon2, 45);
setEffRotateKey(spep_2+45, ctdon2, 45);


tosshin_2 = entryEffectLife( spep_2, SP_02,74, 0x80, -1,  0,  0,  0);

setEffMoveKey(spep_2,tosshin_2,0,0,0);
setEffMoveKey(spep_2+78,tosshin_2,0,0,0);

setEffScaleKey(spep_2, tosshin_2, 1.0, 1.0);
setEffScaleKey(spep_2+78, tosshin_2, 1.0, 1.0);

setEffAlphaKey(spep_2,tosshin_2,255);
setEffAlphaKey(spep_2+78,tosshin_2,255);

setEffRotateKey(spep_2, tosshin_2, 0);
setEffRotateKey(spep_2+78, tosshin_2, 0);


shuchusen2 = entryEffectLife(spep_2,906,76,0x80,-1,0,0,0);  -- 集中線

setEffMoveKey(spep_2,shuchusen2,0,0,0);
setEffMoveKey(spep_2+76,shuchusen2,0,0,0);
setEffMoveKey(spep_2+78,shuchusen2,0,0,0);

setEffScaleKey(spep_2, shuchusen2, 1.0, 1.0);
setEffScaleKey(spep_2+76, shuchusen2, 1.0, 1.0);
setEffScaleKey(spep_2+78, shuchusen2, 1.0, 1.0);

setEffAlphaKey(spep_2,shuchusen2,255);
setEffAlphaKey(spep_2+76,shuchusen2,255);
setEffAlphaKey(spep_2+78,shuchusen2,255);

setEffRotateKey(spep_2, shuchusen2, 0);
setEffRotateKey(spep_2+76, shuchusen2, 0);
setEffRotateKey(spep_2+78, shuchusen2, 0);



--背景・ホワイトフェイド
entryFadeBg( spep_2, 0, 80, 0, 0, 0, 0, 210);  -- 黒背景
entryFade( spep_2+64, 6, 6, 6, fcolor_r, fcolor_g, fcolor_b, 255);


--SE
playSe( spep_2+2, 9);

------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2+60; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

setDisp(  SP_dodge,0,0);

setMoveKey( SP_dodge, 1, 0, 0);
setScaleKey( SP_dodge, 1, 1.5, 1.5);

setEffAlphaKey(SP_dodge-1, ctdon2, 255);
setEffAlphaKey(SP_dodge, ctdon2, 0);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade


endPhase(SP_dodge+10);
setDisp(SP_dodge+10,1,0);


do return end
else end

-------------------------------------------------------------------------



--------------------------------------
--カードカットイン(90F)
--------------------------------------

spep_3 = spep_2+74;

playSe( spep_3, SE_05);

shuchusen3 = entryEffectLife(spep_3, 906, 90, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey(spep_3,shuchusen3,0,0,0);
setEffMoveKey(spep_3+90,shuchusen3,0,0,0);
setEffScaleKey(spep_3, shuchusen3, 1.0, 1.0);
setEffScaleKey(spep_3+90, shuchusen3, 1.0, 1.0);
setEffRotateKey(spep_3, shuchusen3, 0);
setEffRotateKey(spep_3+90, shuchusen3, 0);

speff2 = entryEffect(  spep_3,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff2, 1, 1);
setEffReplaceTexture( speff2, 2, 0);-- カード差し替え
setEffReplaceTexture( speff2, 5, 4);-- 技名テクスチャ差し替え

-- ** エフェクト等 ** --
entryFade(spep_3+83, 6, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


------------------------------------------------------
-- 振りかぶり突進とセリフカットイン
------------------------------------------------------


spep_4 = spep_3+90;

tosshin_4 = entryEffectLife(spep_4, SP_03, 108, 0x80, -1, 0, 0, 0);     --振りかぶり突進

setEffMoveKey(spep_4, tosshin_4, 0, 0, 0);
setEffMoveKey(spep_4+108, tosshin_4, 0, 0, 0);


setEffScaleKey(spep_4, tosshin_4, 1.0, 1.0);
setEffScaleKey(spep_4+108, tosshin_4, 1.0, 1.0);

setEffAlphaKey(spep_4, tosshin_4, 255);
setEffAlphaKey(spep_4+108, tosshin_4, 255);


setEffRotateKey(spep_4, tosshin_4, 0);
setEffRotateKey(spep_4+108, tosshin_4, 0);


shuchusen4 = entryEffectLife(spep_4, 906, 108, 0x80, -1, 0, 0, 0);  -- 集中線

setEffMoveKey(spep_4, shuchusen4, 0, 0, 0);
setEffMoveKey(spep_4+108, shuchusen4, 0, 0, 0);

setEffScaleKey(spep_4, shuchusen4, 1.0, 1.0);
setEffScaleKey(spep_4+108, shuchusen4, 1.0, 1.0);

setEffAlphaKey(spep_4, shuchusen4, 255);
setEffAlphaKey(spep_4+108, shuchusen4, 255);

setEffRotateKey(spep_4, shuchusen4, 0);


ctgogo=entryEffectLife(spep_4+29, 190006, 40, 0x100, -1, 0, 530);

setEffShake(spep_4+32, ctgogo, 69, 15);

setEffMoveKey(spep_4+32, ctgogo, 0, 500);
setEffMoveKey(spep_4+72, ctgogo, 0, 500);

setEffScaleKey(spep_4+32, ctgogo, 0.8, 0.8);
setEffScaleKey(spep_4+72, ctgogo, 0.8, 0.8);

setEffAlphaKey(spep_4+32, ctgogo, 255);
setEffAlphaKey(spep_4+72, ctgogo, 255);

setEffRotateKey(spep_4+32, ctgogo, 0);
setEffRotateKey(spep_4+72, ctgogo, 0);

speff = entryEffect(spep_4+15 ,1504 ,0x80, -1, 0, 0, 0);
setEffReplaceTexture(speff, 3, 2);
speff = entryEffect(spep_4+15, 1505, 0x80, -1, 0, 0, 0);
setEffReplaceTexture(speff, 4, 5);



--背景・ホワイトフェイド
entryFadeBg( spep_4, 0, 110, 0, 0, 0, 0, 210);  -- 黒背景
entryFade( spep_4+100, 6, 6, 6, fcolor_r, fcolor_g, fcolor_b, 255);


--SE
playSe(spep_4+10, SE_04);



------------------------------------------------------
-- ヒット
------------------------------------------------------

-- ** 次の準備 ** --
spep_5 = spep_4+110;

hit=entryEffectLife(spep_5, SP_04, 50, 0x100, -1, 0, 0, 0);     --ヒット

setEffMoveKey(spep_5, hit, 0, 0, 0);
setEffMoveKey(spep_5+50, hit, 0, 0, 0);

setEffScaleKey(spep_5, hit, 1.0, 1.0);
setEffScaleKey(spep_5+50, hit, 1.0, 1.0);

setEffAlphaKey(spep_5, hit, 255);
setEffAlphaKey(spep_5+50, hit, 255);


setEffRotateKey(spep_5, hit, 0);
setEffRotateKey(spep_5+50, hit, 0);


ctbaki = entryEffectLife(spep_5,10020,69,0x100,-1,0,530); -- バキ効果音


setEffShake(spep_5, ctbaki, 69, 15);

setEffMoveKey(spep_5, ctbaki, 100, 280);
setEffMoveKey(spep_5+50, ctbaki, 100, 280);


setEffScaleKey(spep_5, ctbaki, 1.7, 1.7);
setEffScaleKey(spep_5+50, ctbaki, 1.7, 1.7);

setEffAlphaKey(spep_5, ctbaki, 0);
setEffAlphaKey(spep_5+6, ctbaki, 0);
setEffAlphaKey(spep_5+9, ctbaki, 255);
setEffAlphaKey(spep_5+39, ctbaki, 255);
setEffAlphaKey(spep_5+40, ctbaki, 0);
setEffAlphaKey(spep_5+50, ctbaki, 0);


setEffRotateKey(spep_5, ctbaki, 50);
setEffRotateKey(spep_5+50, ctbaki, 50);

--敵の配置＆敵の移動

changeAnime(spep_5, 1, 104);
changeAnime(spep_5+7, 1, 108);

setDisp(spep_5, 1, 1);
setDisp(spep_5+49, 1, 1);
setDisp(spep_5+50, 1, 0);

setMoveKey(spep_5, 1, 550, 250, 0);
setMoveKey(spep_5+7, 1, 60, 45, 0);--ヤムチャ当たる
setMoveKey(spep_5+50, 1, 70, 55, 0);

setScaleKey(spep_5 , 1, 1.5,1.5);
setScaleKey(spep_5+10 , 1, 1.5,1.5);
setScaleKey(spep_5+50 , 1, 1.5,1.5);

setRotateKey(spep_5 , 1, 330);
setRotateKey(spep_5+50 , 1, 330);

setShakeChara(spep_5 , 1, 40 ,15);

--流線
ryu = entryEffectLife(spep_5, 914, 50, 0x80,  -1, 0,  0,  0);   -- 流線

setMoveKey(spep_5, 1, 0 , 0, 0);
setMoveKey(spep_5+50, 1, 0, 0, 0);

setEffScaleKey(spep_5, ryu, 1.6, 1.6);
setEffScaleKey(spep_5+50, ryu, 1.6, 1.6);

setEffRotateKey(spep_5, ryu, 335);
setEffRotateKey(spep_5+50, ryu, 335);




--背景・ホワイトフェイド
entryFadeBg(spep_5, 0, 48, 0, 0, 0, 0, 210);  -- 黒背景
entryFade(spep_5+7, 0, 1, 6, fcolor_r, fcolor_g, fcolor_b, 255);
entryFade(spep_5+40, 6, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);


--SE
playSe(spep_5+8, 1009);


------------------------------------------------------
-- 突き抜け花火 (60F)突き抜けと同時に動いてます。
------------------------------------------------------


spep_6 = spep_5+52;


ctzun = entryEffectLife(spep_6,10016,69,0x100,-1,0,530); -- ズン効果音

setEffShake(spep_6, ctzun, 69, 15);

setEffMoveKey(spep_6, ctzun, -100, 230);
setEffMoveKey(spep_6+60, ctzun, -100, 230);

setEffScaleKey(spep_6, ctzun, 2.5, 2.5);
setEffScaleKey(spep_6+60, ctzun, 2.5, 2.5);


setEffAlphaKey(spep_6, ctzun, 255);
setEffAlphaKey(spep_6+50, ctzun, 255);
setEffAlphaKey(spep_6+51, ctzun, 0);
setEffAlphaKey(spep_6+60, ctzun, 0);


setEffRotateKey(spep_6, ctbaki, 345);
setEffRotateKey(spep_6+60, ctbaki, 345);


ryu2 = entryEffectLife(spep_6, 914, 50, 0x80,  -1, 0,  0,  0);   -- 流線

setMoveKey(spep_6, 1, 0 , 0, 0);
setMoveKey(spep_6+60, 1, 0, 0, 0);

setEffScaleKey(spep_6, ryu2, 1.6, 1.6);
setEffScaleKey(spep_6+60, ryu2, 1.6, 1.6);

setEffRotateKey(spep_6, ryu2, 335);
setEffRotateKey(spep_6+60, ryu2, 335);

tsukinukeB=entryEffectLife(spep_6,SP_05,60,0x80,-1,0,0,0);   --突き抜け

setEffMoveKey(spep_6,tsukinukeB,0,0,0);
setEffMoveKey(spep_6+60,tsukinukeB,0,0,0);

setEffScaleKey(spep_6,tsukinukeB,1.0,1.0);
setEffScaleKey(spep_6+60,tsukinukeB,1.0,1.0);

setEffAlphaKey(spep_6,tsukinukeB,265);
setEffAlphaKey(spep_6+60,tsukinukeB,265);

setEffRotateKey(spep_6,tsukinukeB,0);
setEffRotateKey(spep_6+60,tsukinukeB,0);


hanabi=entryEffectLife(spep_6,SP_06,60,0x100,-1,0,0,0);     --突き抜け火花

setEffMoveKey(spep_6,hanabi,0,0,0);
setEffMoveKey(spep_6+60,hanabi,0,0,0);

setEffScaleKey(spep_6,hanabi,1.0,1.0);
setEffScaleKey(spep_6+60,hanabi,1.0,1.0);

setEffAlphaKey(spep_6,hanabi,255);
setEffAlphaKey(spep_6+60,hanabi,255);

setEffRotateKey(spep_6,hanabi,0);
setEffRotateKey(spep_6+60,hanabi,0);


--敵の配置＆敵の移動


changeAnime(spep_6, 1, 106);

setDisp(spep_6, 1, 1);
setDisp(spep_6+60, 1, 0);

setMoveKey(spep_6, 1, 0, 0, 0);
setMoveKey(spep_6+1, 1, -50, -70, 0);
setMoveKey(spep_6+37, 1, -220, -100, 0); --起点
setMoveKey(spep_6+43, 1, -220, -100, 0); --起点
setMoveKey(spep_6+53, 1, -900, -450, 0);
setMoveKey(spep_6+60, 1, -800, -450, 0); --終点


setScaleKey(spep_6, 1, 1.5,1.5);
setScaleKey(spep_6+60, 1, 1.5, 1.5);

setRotateKey(spep_6 , 1, 0);
setRotateKey(spep_6+1, 1, 285);
setRotateKey(spep_6+60 , 1, 285);


setShakeChara(spep_6 , 1, 40 ,15);



entryFadeBg(spep_6, 0, 53, 0, 0, 0, 0, 210);  -- 黒背景
entryFade(spep_6+48, 5, 10, 5, fcolor_r, fcolor_g, fcolor_b, 255);


--SE
playSe( spep_6+2, 1025);

------------------------------------------------------
-- 爆発 ( 110F)
------------------------------------------------------

spep_7 = spep_6+61;

setDisp( spep_7-1, 1, 1);
setMoveKey(  spep_7-1,    1,  100,  0,   0);
setScaleKey( spep_7-1,    1,  1.0, 1.0);
setMoveKey(  spep_7,    1,    0,   0,   128);
setScaleKey( spep_7,    1,  0.1, 0.1);

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

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 気溜め(120F)
------------------------------------------------------

-- ** 次の準備 ** --
spep_1 = 0;

Kidame=entryEffectLife(spep_1,SP_01x,80,0x80,-1,0,0,0);

setEffMoveKey(spep_1, Kidame, 0, 0, 0);
setEffMoveKey(spep_1+88, Kidame, 0, 0, 0);

setEffScaleKey(spep_1, Kidame, 1.0, 1.0);
setEffScaleKey(spep_1+88, Kidame, 1.0, 1.0);

setEffAlphaKey(spep_1, Kidame, 255);
setEffAlphaKey(spep_1+88, Kidame, 255);


shuchusen1 = entryEffectLife(spep_1,906,80,0x80,-1,0,0,0);  -- 集中線

setEffMoveKey(spep_1, shuchusen1, 0, 0, 0);
setEffMoveKey(spep_1+88, shuchusen1, 0, 0, 0);

setEffScaleKey(spep_1, shuchusen1, 1.0, 1.0);
setEffScaleKey(spep_1+88, shuchusen1, 1.0, 1.0);

setEffAlphaKey(spep_1, shuchusen1, 0);
setEffAlphaKey(spep_1+15, shuchusen1, 0);
setEffAlphaKey(spep_1+16, shuchusen1, 255);
setEffAlphaKey(spep_1+88, shuchusen1, 255);


ctdon=entryEffectLife(spep_1, 10019, 69, 0x100, -1, 0, 530); -- ドン効果音

setEffMoveKey(spep_1,ctdon,150,350);
setEffMoveKey(spep_1+88,ctdon,150,350);

setEffScaleKey(spep_1,ctdon,2.4,2.4);
setEffScaleKey(spep_1+88,ctdon,2.4,2.4);


setEffAlphaKey(spep_1, ctdon, 0);
setEffAlphaKey(spep_1+19, ctdon, 0);
setEffAlphaKey(spep_1+20, ctdon, 255);
setEffAlphaKey(spep_1+40, ctdon, 255);
setEffAlphaKey(spep_1+41, ctdon, 0);
setEffAlphaKey(spep_1+88, ctdon, 0);

setEffRotateKey(spep_1,ctdon,45);
setEffRotateKey(spep_1+40,ctdon,45);

setEffShake(spep_1,ctdon,69,15);


--背景・ホワイトフェイド
entryFade( spep_1, 0, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);
entryFadeBg( spep_1, 0, 80, 0, 0, 0, 0, 210);  -- 黒　背景
entryFade( spep_1+70, 6, 6, 6, fcolor_r, fcolor_g, fcolor_b, 255);


--se
playSe( spep_1+5, SE_01);


spep_2 = spep_1+81;

ctdon2 = entryEffectLife(spep_2+10,10019,35,0x100,-1,0,530); -- ドン効果音

setEffShake(spep_2+10, ctdon2, 59, 15);

setEffMoveKey(spep_2+10,ctdon2,150,350);
setEffMoveKey(spep_2+45,ctdon2,150,350);

setEffScaleKey(spep_1+10,ctdon2,2.4,2.4);
setEffScaleKey(spep_1+45,ctdon2,2.4,2.4);

setEffAlphaKey(spep_2+10, ctdon2, 255);
setEffAlphaKey(spep_2+45, ctdon2, 255);

setEffRotateKey(spep_2+10, ctdon2, 45);
setEffRotateKey(spep_2+45, ctdon2, 45);


tosshin_2 = entryEffectLife( spep_2, SP_02,76, 0x80, -1,  0,  0,  0);

setEffMoveKey(spep_2,tosshin_2,0,0,0);
setEffMoveKey(spep_2+78,tosshin_2,0,0,0);

setEffScaleKey(spep_2, tosshin_2, -1.0, 1.0);
setEffScaleKey(spep_2+78, tosshin_2, -1.0, 1.0);

setEffAlphaKey(spep_2,tosshin_2,255);
setEffAlphaKey(spep_2+78,tosshin_2,255);

setEffRotateKey(spep_2, tosshin_2, 0);
setEffRotateKey(spep_2+78, tosshin_2, 0);


shuchusen2 = entryEffectLife(spep_2,906,76,0x80,-1,0,0,0);  -- 集中線

setEffMoveKey(spep_2,shuchusen2,0,0,0);
setEffMoveKey(spep_2+76,shuchusen2,0,0,0);
setEffMoveKey(spep_2+78,shuchusen2,0,0,0);

setEffScaleKey(spep_2, shuchusen2, 1.0, 1.0);
setEffScaleKey(spep_2+76, shuchusen2, 1.0, 1.0);
setEffScaleKey(spep_2+78, shuchusen2, 1.0, 1.0);

setEffAlphaKey(spep_2,shuchusen2,255);
setEffAlphaKey(spep_2+76,shuchusen2,255);
setEffAlphaKey(spep_2+78,shuchusen2,255);

setEffRotateKey(spep_2, shuchusen2, 0);
setEffRotateKey(spep_2+76, shuchusen2, 0);
setEffRotateKey(spep_2+78, shuchusen2, 0);



--背景・ホワイトフェイド
entryFadeBg( spep_2, 0, 80, 0, 0, 0, 0, 210);  -- 黒背景
entryFade( spep_2+66, 6, 8, 6, fcolor_r, fcolor_g, fcolor_b, 255);


--SE
playSe( spep_2+2, 9);

------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2+60; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

setDisp(  SP_dodge,0,0);

setMoveKey( SP_dodge, 1, 0, 0);
setScaleKey( SP_dodge, 1, 1.5, 1.5);

setEffAlphaKey(SP_dodge-1, ctdon2, 255);
setEffAlphaKey(SP_dodge, ctdon2, 0);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade


endPhase(SP_dodge+10);
setDisp(SP_dodge+10,1,0);


do return end
else end

-------------------------------------------------------------------------



--------------------------------------
--カードカットイン(90F)
--------------------------------------

spep_3 = spep_2+79;

playSe( spep_3, SE_05);

shuchusen3 = entryEffectLife(spep_3, 906, 90, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey(spep_3,shuchusen3,0,0,0);
setEffMoveKey(spep_3+90,shuchusen3,0,0,0);
setEffScaleKey(spep_3, shuchusen3, 1.0, 1.0);
setEffScaleKey(spep_3+90, shuchusen3, 1.0, 1.0);
setEffRotateKey(spep_3, shuchusen3, 0);
setEffRotateKey(spep_3+90, shuchusen3, 0);

speff2 = entryEffect(  spep_3,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff2, 1, 1);
setEffReplaceTexture( speff2, 2, 0);-- カード差し替え
setEffReplaceTexture( speff2, 5, 4);-- 技名テクスチャ差し替え

-- ** エフェクト等 ** --
entryFade(spep_3+83, 6, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


------------------------------------------------------
-- 振りかぶり突進とセリフカットイン
------------------------------------------------------


spep_4 = spep_3+90;

tosshin_4 = entryEffectLife(spep_4, SP_03, 108, 0x80, -1, 0, 0, 0);     --振りかぶり突進

setEffMoveKey(spep_4, tosshin_4, 0, 0, 0);
setEffMoveKey(spep_4+110, tosshin_4, 0, 0, 0);
setEffMoveKey(spep_4+116, tosshin_4, 0, 0, 0);


setEffScaleKey(spep_4, tosshin_4, -1.0, 1.0);
setEffScaleKey(spep_4+110, tosshin_4, -1.0, 1.0);
setEffScaleKey(spep_4+116, tosshin_4, -1.0, 1.0);

setEffAlphaKey(spep_4, tosshin_4, 255);
setEffAlphaKey(spep_4+110, tosshin_4, 255);
setEffAlphaKey(spep_4+116, tosshin_4, 255);


setEffRotateKey(spep_4, tosshin_4, 0);
setEffRotateKey(spep_4+110, tosshin_4, 0);
setEffRotateKey(spep_4+116, tosshin_4, 0);


shuchusen4 = entryEffectLife(spep_4, 906, 110, 0x80, -1, 0, 0, 0);  -- 集中線

setEffMoveKey(spep_4, shuchusen4, 0, 0, 0);
setEffMoveKey(spep_4+110, shuchusen4, 0, 0, 0);
setEffMoveKey(spep_4+116, shuchusen4, 0, 0, 0);

setEffScaleKey(spep_4, shuchusen4, 1.0, 1.0);
setEffScaleKey(spep_4+110, shuchusen4, 1.0, 1.0);
setEffScaleKey(spep_4+116, shuchusen4, 1.0, 1.0);

setEffAlphaKey(spep_4, shuchusen4, 255);
setEffAlphaKey(spep_4+110, shuchusen4, 255);
setEffAlphaKey(spep_4+116, shuchusen4, 255);

setEffRotateKey(spep_4, shuchusen4, 0);


ctgogo=entryEffectLife(spep_4+29, 190006, 40, 0x100, -1, 0, 530);

setEffShake(spep_4+54, ctgogo, 69, 15);

setEffMoveKey(spep_4+54, ctgogo, 0, 500);
setEffMoveKey(spep_4+104, ctgogo, 0, 500);

setEffScaleKey(spep_4+54, ctgogo, -0.8, 0.8);
setEffScaleKey(spep_4+104, ctgogo, -0.8, 0.8);

setEffAlphaKey(spep_4+54, ctgogo, 255);
setEffAlphaKey(spep_4+104, ctgogo, 255);

setEffRotateKey(spep_4+25, ctgogo, 0);
setEffRotateKey(spep_4+104, ctgogo, 0);

--speff = entryEffect(spep_4+10 ,1504 ,0x80, -1, 0, 0, 0);
--setEffReplaceTexture(speff, 3, 2);
--speff = entryEffect(spep_4+10, 1505, 0x80, -1, 0, 0, 0);
--setEffReplaceTexture(speff, 4, 5);



--背景・ホワイトフェイド
entryFadeBg( spep_4, 0, 110, 0, 0, 0, 0, 210);  -- 黒背景
entryFade( spep_4+100, 6, 6, 6, fcolor_r, fcolor_g, fcolor_b, 255);


--SE
playSe(spep_4+10, SE_04);



------------------------------------------------------
-- ヒット
------------------------------------------------------

-- ** 次の準備 ** --
spep_5 = spep_4+110;

hit=entryEffectLife(spep_5, SP_02x, 50, 0x100, -1, 0, 0, 0);     --ヒット

setEffMoveKey(spep_5, hit, 0, 0, 0);
setEffMoveKey(spep_5+50, hit, 0, 0, 0);

setEffScaleKey(spep_5, hit, 1.0, 1.0);
setEffScaleKey(spep_5+50, hit, 1.0, 1.0);

setEffAlphaKey(spep_5, hit, 255);
setEffAlphaKey(spep_5+50, hit, 255);


setEffRotateKey(spep_5, hit, 0);
setEffRotateKey(spep_5+50, hit, 0);


ctbaki = entryEffectLife(spep_5,10020,69,0x100,-1,0,530); -- バキ効果音


setEffShake(spep_5, ctbaki, 69, 15);

setEffMoveKey(spep_5, ctbaki, 100, 280);
setEffMoveKey(spep_5+50, ctbaki, 100, 280);


setEffScaleKey(spep_5, ctbaki, 1.7, 1.7);
setEffScaleKey(spep_5+50, ctbaki, 1.7, 1.7);

setEffAlphaKey(spep_5, ctbaki, 0);
setEffAlphaKey(spep_5+13, ctbaki, 0);
setEffAlphaKey(spep_5+15, ctbaki, 255);
setEffAlphaKey(spep_5+39, ctbaki, 255);
setEffAlphaKey(spep_5+40, ctbaki, 0);
setEffAlphaKey(spep_5+50, ctbaki, 0);


setEffRotateKey(spep_5, ctbaki, -50);
setEffRotateKey(spep_5+50, ctbaki, -50);

--敵の配置＆敵の移動

changeAnime(spep_5, 1, 104);
changeAnime(spep_5+7, 1, 108);

setDisp(spep_5, 1, 1);
setDisp(spep_5+49, 1, 1);
setDisp(spep_5+50, 1, 0);

setMoveKey(spep_5, 1, 550, 250, 0);
setMoveKey(spep_5+7, 1, 60, 45, 0);--ヤムチャ当たる
setMoveKey(spep_5+50, 1, 70, 55, 0);

setScaleKey(spep_5 , 1, 1.5,1.5);
setScaleKey(spep_5+10 , 1, 1.5,1.5);
setScaleKey(spep_5+50 , 1, 1.5,1.5);

setRotateKey(spep_5 , 1, 330);
setRotateKey(spep_5+50 , 1, 330);

setShakeChara(spep_5 , 1, 40 ,15);

--流線
ryu = entryEffectLife(spep_5, 914, 50, 0x80,  -1, 0,  0,  0);   -- 流線

setMoveKey(spep_5, 1, 0 , 0, 0);
setMoveKey(spep_5+50, 1, 0, 0, 0);

setEffScaleKey(spep_5, ryu, 1.6, 1.6);
setEffScaleKey(spep_5+50, ryu, 1.6, 1.6);

setEffRotateKey(spep_5, ryu, 335);
setEffRotateKey(spep_5+50, ryu, 335);




--背景・ホワイトフェイド
entryFadeBg(spep_5, 0, 48, 0, 0, 0, 0, 210);  -- 黒背景
entryFade(spep_5+7, 0, 1, 6, fcolor_r, fcolor_g, fcolor_b, 230);
entryFade(spep_5+40, 6, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);


--SE
playSe(spep_5+8, 1009);


------------------------------------------------------
-- 突き抜け花火 (60F)突き抜けと同時に動いてます。
------------------------------------------------------


spep_6 = spep_5+52;


ctzun = entryEffectLife(spep_6,10016,69,0x100,-1,0,530); -- ズン効果音

setEffShake(spep_6, ctzun, 69, 15);

setEffMoveKey(spep_6, ctzun, -100, 230);
setEffMoveKey(spep_6+60, ctzun, -100, 230);

setEffScaleKey(spep_6, ctzun, 2.5, 2.5);
setEffScaleKey(spep_6+60, ctzun, 2.5, 2.5);


setEffAlphaKey(spep_6, ctzun, 255);
setEffAlphaKey(spep_6+50, ctzun, 255);
setEffAlphaKey(spep_6+51, ctzun, 0);
setEffAlphaKey(spep_6+60, ctzun, 0);


setEffRotateKey(spep_6, ctbaki, 345);
setEffRotateKey(spep_6+60, ctbaki, 345);


ryu2 = entryEffectLife(spep_6, 914, 50, 0x80,  -1, 0,  0,  0);   -- 流線

setMoveKey(spep_6, 1, 0 , 0, 0);
setMoveKey(spep_6+60, 1, 0, 0, 0);

setEffScaleKey(spep_6, ryu2, 1.6, 1.6);
setEffScaleKey(spep_6+60, ryu2, 1.6, 1.6);

setEffRotateKey(spep_6, ryu2, 335);
setEffRotateKey(spep_6+60, ryu2, 335);

tsukinukeB=entryEffectLife(spep_6,SP_03x,60,0x80,-1,0,0,0);   --突き抜け

setEffMoveKey(spep_6,tsukinukeB,0,0,0);
setEffMoveKey(spep_6+60,tsukinukeB,0,0,0);

setEffScaleKey(spep_6,tsukinukeB,1.0,1.0);
setEffScaleKey(spep_6+60,tsukinukeB,1.0,1.0);

setEffAlphaKey(spep_6,tsukinukeB,265);
setEffAlphaKey(spep_6+60,tsukinukeB,265);

setEffRotateKey(spep_6,tsukinukeB,0);
setEffRotateKey(spep_6+60,tsukinukeB,0);


hanabi=entryEffectLife(spep_6,SP_06,60,0x100,-1,0,0,0);     --突き抜け火花

setEffMoveKey(spep_6,hanabi,0,0,0);
setEffMoveKey(spep_6+60,hanabi,0,0,0);

setEffScaleKey(spep_6,hanabi,1.0,1.0);
setEffScaleKey(spep_6+60,hanabi,1.0,1.0);

setEffAlphaKey(spep_6,hanabi,255);
setEffAlphaKey(spep_6+60,hanabi,255);

setEffRotateKey(spep_6,hanabi,0);
setEffRotateKey(spep_6+60,hanabi,0);


--敵の配置＆敵の移動


changeAnime(spep_6, 1, 106);

setDisp(spep_6, 1, 1);
setDisp(spep_6+60, 1, 0);

setMoveKey(spep_6, 1, 0, 0, 0);
setMoveKey(spep_6+1, 1, -50, -70, 0);
setMoveKey(spep_6+37, 1, -220, -100, 0); --起点
setMoveKey(spep_6+43, 1, -220, -100, 0); --起点
setMoveKey(spep_6+53, 1, -900, -450, 0);
setMoveKey(spep_6+60, 1, -800, -450, 0); --終点


setScaleKey(spep_6, 1, 1.5,1.5);
setScaleKey(spep_6+60, 1, 1.5, 1.5);

setRotateKey(spep_6 , 1, 0);
setRotateKey(spep_6+1, 1, 285);
setRotateKey(spep_6+60 , 1, 285);


setShakeChara(spep_6 , 1, 40 ,15);



entryFadeBg(spep_6, 0, 53, 0, 0, 0, 0, 210);  -- 黒背景
entryFade(spep_6+48, 5, 10, 5, fcolor_r, fcolor_g, fcolor_b, 255);


--SE
playSe( spep_6+2, 1025);

------------------------------------------------------
-- 爆発 ( 110F)
------------------------------------------------------

spep_7 = spep_6+61;

setDisp( spep_7-1, 1, 1);
setMoveKey(  spep_7-1,    1,  100,  0,   0);
setScaleKey( spep_7-1,    1,  1.0, 1.0);
setMoveKey(  spep_7,    1,    0,   0,   128);
setScaleKey( spep_7,    1,  0.1, 0.1);

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


