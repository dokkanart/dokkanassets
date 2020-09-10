--1013700　スラッグ　sp0456

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SP_ATK_0 = 6;
SP_ATK_1 = SP_ATK_0+10;
SP_ATK_2 = SP_ATK_1+63;
SP_ATK_3 = SP_ATK_2+92;
SP_ATK_4 = SP_ATK_3+45;


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

--味方側
SP_01 = 151645; --ビーム発射
SP_02 = 151646; --ビーム被弾


--敵側
SP_01x = 151645; --ビーム発射
SP_02x = 151646; --ビーム被弾

multi_frm = 2;

changeAnime( 0, 0, 0);                       -- 立ち
setDisp( 0, 1, 0);


------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
setVisibleUI(0, 0);
setDisp( 0, 0, 0); --味方表示
setDisp( 0, 1, 0); --敵非表示
changeAnime( 0, 0, 1); --味方立ちポーズ
--setMoveKey( 0, 0, 0, -900, 0); --味方位置
--setMoveKey( 1, 0, 0, -900, 0); --味方位置
--setMoveKey( 2, 0, 0, -900, 0); --味方位置
--setMoveKey( 3, 0, 0, -900, 0); --味方位置
--setMoveKey( 4, 0, 0, -900, 0); --味方位置
--setMoveKey( 5, 0, 0, -900, 0); --味方位置
setScaleKey( 0,    0,  2.0, 2.0);
setScaleKey( 1,    0,  2.0, 2.0);
setScaleKey( 2,    0,  2.0, 2.0);
setScaleKey( 3,    0,  2.0, 2.0);
setScaleKey( 4,    0,  2.0, 2.0);
setScaleKey( 5,    0,  2.0, 2.0);
setScaleKey( 0,    1,  1.5, 1.5);
setScaleKey( 1,    1,  1.5, 1.5);
setScaleKey( 2,    1,  1.5, 1.5);
setScaleKey( 3,    1,  1.5, 1.5);
setScaleKey( 4,    1,  1.5, 1.5);
setScaleKey( 5,    1,  1.5, 1.5);
setRotateKey( 0,  0, 0);


------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then


------------------------------------------------------
-- 気溜め
------------------------------------------------------

spep_0=0;
--キャラクターの登場
setDisp(spep_0,0,1);
changeAnime(spep_0,0,17);
setMoveKey(spep_0,0,0,0,0);
setMoveKey(spep_0+1,0,0,0,0);
setMoveKey(spep_0+2,0,0,0,0);
setMoveKey(spep_0+3,0,0,0,0);
setMoveKey(spep_0+4,0,0,0,0);
setMoveKey(spep_0+5,0,0,0,0);
setMoveKey(spep_0+97,0,0,0,0);
setScaleKey(spep_0,0,2.0,2.0);
setScaleKey(spep_0+97,0,2.0,2.0);
setRotateKey(spep_0,0,0);
setRotateKey(spep_0+97,0,0);
setShakeChara(spep_0,0,97,15);

--顔＆セリフカットイン
speff=entryEffect(spep_0+6,1504,0x100,-1,0,0,0);  --カットイン(顔)
setEffReplaceTexture(speff,3,2);  --カットイン差し替え
speff1=entryEffect(spep_0+6,1505,0x100,-1,0,0,0);  --カットイン(セリフ)
setEffReplaceTexture(speff1,4,5);  --セリフカットイン差し替え


--文字エントリー
ctgogo=entryEffectLife(spep_0+19,190006,69,0x100,-1,110,500);--ゴゴゴ
setEffMoveKey(spep_0+19,ctgogo,-30,500,0);
setEffMoveKey(spep_0+93,ctgogo,-30,500,0);
setEffScaleKey(spep_0+19, ctgogo, 0.7, 0.7);
setEffScaleKey(spep_0+93, ctgogo, 0.7, 0.7);

--SE
playSe( spep_0+19, SE_05); --ゴゴゴ

--後ろの気
ef_ki=entryEffectLife(spep_0, 1503, 97,0x80,-1,0,0,0);   -- 集中線
setEffMoveKey(spep_0,ef_ki,0,0,0);
setEffMoveKey(spep_0+97,ef_ki,0,0,0);
setEffScaleKey(spep_0, ef_ki, 1.0, 1.0);
setEffScaleKey(spep_0+97,ef_ki, 1.0, 1.0);

--バチバチ
ef_bati=entryEffectLife(spep_0, 1502, 97,0x100,-1,0,0,0);   -- 集中線
setEffMoveKey(spep_0,ef_bati,0,0,0);
setEffMoveKey(spep_0+97,ef_bati,0,0,0);
setEffScaleKey(spep_0,ef_bati, 1.0, 1.0);
setEffScaleKey(spep_0+97,ef_bati, 1.0, 1.0);

--白フェード
entryFade(spep_0+84, 12, 2,5, fcolor_r, fcolor_g, fcolor_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 60, 0, 0, 0, 0, 255 ); --黒 背景

--敵からの退却
setDisp(spep_0+98,0,0);
setMoveKey(spep_0+97,0,0,0,0);
setMoveKey(spep_0+98,0,0,-900,0);


--次の準備
spep_1=spep_0+97;

--------------------------------------
--カードカットイン(90F)
--------------------------------------

playSe(spep_1,SE_05);
shuchusen3=entryEffectLife(spep_1,906,90,0x100,-1,0,0,0);   -- 集中線
setEffScaleKey(spep_1,shuchusen3,1.6,1.6);

speff2=entryEffect(spep_1,1507,0,-1,0,0,0);   -- カード
setEffReplaceTexture(speff2,1,1);
setEffReplaceTexture(speff2,2,0);-- カード差し替え
setEffReplaceTexture(speff2,5,4);-- 技名テクスチャ差し替え

-- ** エフェクト等 ** --
entryFade(spep_1+85,3,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_2=spep_1+90;

------------------------------------------------------
-- 目からビーム
------------------------------------------------------
--エフェクトの再生
beam=entryEffectLife(spep_2,SP_01,100,0x100,-1,0,0,0);
setEffMoveKey(spep_2,beam,0,0,0);
setEffMoveKey(spep_2+100,beam,0,0,0);
setEffScaleKey(spep_2,beam,1.1,1.0);
setEffScaleKey(spep_2+100,beam,1.1,1.0);
setEffAlphaKey(spep_2,beam,255);
setEffAlphaKey(spep_2+100,beam,255);
setEffRotateKey(spep_2,beam,0);
setEffRotateKey(spep_2+100,beam,0);


--集中線
shuchusen3=entryEffectLife(spep_2,921,100,0x80,-1,20,0,0);-- 集中線
setEffMoveKey(spep_2,shuchusen3,0,0,0);
setEffMoveKey(spep_2+100,shuchusen3,0,0,0);
setEffScaleKey(spep_2,shuchusen3,2.0,1.2);
setEffScaleKey(spep_2+100,shuchusen3,2.0,1.2);
setEffAlphaKey(spep_2,shuchusen3,255);
setEffAlphaKey(spep_2+100,shuchusen3,255);
setEffRotateKey(spep_2,shuchusen3,-190);
setEffRotateKey(spep_2+100,shuchusen3,-190);

--文字エントリー
ctkaltu=entryEffectLife(spep_2+29,10004,17,0x100,-1,200,400);--カッ
setEffMoveKey(spep_2+29,ctkaltu,220,400,0);
setEffMoveKey(spep_2+47,ctkaltu,220,400,0);
setEffScaleKey(spep_2+29,ctkaltu,0.7,0.7);
setEffScaleKey(spep_2+31,ctkaltu,1.8,1.8);
setEffScaleKey(spep_2+47,ctkaltu,1.8,1.8);
setEffRotateKey(spep_2+29,ctkaltu,-10);
setEffRotateKey(spep_2+47,ctkaltu,-10);
setEffShake(spep_2+29,ctkaltu,10,15);

SE1=playSe(spep_2+29,15);
stopSe(spep_2+50,SE1,0);

--文字エントリー
ctzuo=entryEffectLife(spep_2+58,10012,38,0x100,-1,110,500);--ズオ
setEffMoveKey(spep_2,ctzuo,110,220,0);
setEffMoveKey(spep_2+58,ctzuo,140,220,0);
setEffMoveKey(spep_2+68,ctzuo,140,270,0);
setEffScaleKey(spep_2+58,ctzuo,0.5,0.5);
setEffScaleKey(spep_2+68,ctzuo,1.8,1.8);
setEffScaleKey(spep_2+100,ctzuo,1.8,1.8);
setEffRotateKey(spep_2+58,ctzuo,30);
setEffRotateKey(spep_2+97,ctzuo,30);
setEffShake( spep_2,ctzuo,100,20);

playSe(spep_2+58,1022);

--黒背景
entryFadeBg(spep_2, 0, 100, 0, 0, 0, 0, 180);  -- 黒　背景

-- ** エフェクト等 ** --
entryFade(spep_2+95,3,3,3,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_3=spep_2+100;

------------------------------------------------------
-- ビームが当たる
------------------------------------------------------
--エフェクトの再生
hit=entryEffectLife(spep_3,SP_02,100,0x100,-1,0,0,0);
setEffMoveKey(spep_3,hit,0,0,0);
setEffMoveKey(spep_3+100,hit,0,0,0);
setEffScaleKey(spep_3,hit,1.1,1.0);
setEffScaleKey(spep_3+100,hit,1.1,1.0);
setEffAlphaKey(spep_3,hit,255);
setEffAlphaKey(spep_3+100,hit,255);
setEffRotateKey(spep_3,hit,0);
setEffRotateKey(spep_3+100,hit,0);



--文字エントリー
ctzudo=entryEffectLife(spep_3,10014,100,0x100,-1,50,250);--ズドドド
setEffMoveKey(spep_3,ctzudo,50,320,0);
setEffMoveKey(spep_3+100,ctzudo,50,320,0);
setEffScaleKey(spep_3,ctzudo,3.3,3.4);
setEffScaleKey(spep_3+100,ctzudo,3.3,3.4);
setEffRotateKey(spep_3,ctzudo,75);
setEffRotateKey(spep_3+100,ctzudo,75);
setEffShake(spep_3,ctzudo,100,15);

playSe(spep_3,1018);--ズドドド

--集中線
shuchusen4=entryEffectLife(spep_3,921,100,0x80,-1,20,0,0);-- 集中線
setEffMoveKey(spep_3,shuchusen4,0,0,0);
setEffMoveKey(spep_3+100,shuchusen4,0,0,0);
setEffScaleKey(spep_3,shuchusen4,1.2,1.4);
setEffScaleKey(spep_3+100,shuchusen4,1.2,1.4);
setEffAlphaKey(spep_3,shuchusen4,255);
setEffAlphaKey(spep_3+100,shuchusen4,255);
setEffRotateKey(spep_3,shuchusen4,0);
setEffRotateKey(spep_3+100,shuchusen4,0);

--敵の登場
setDisp(spep_3,1,1);
changeAnime(spep_3,1,104);
setMoveKey(spep_3,1,300,-20,0);
setMoveKey(spep_3+49,1,250,-20,0);
setScaleKey(spep_3,1,1.2,1.2);
setScaleKey(spep_3+30,1,2.0,2.0);
setScaleKey(spep_3+49,1,2.0,2.0);
setRotateKey(spep_3,1,0);
setRotateKey(spep_3+49,1,0);
setShakeChara(spep_3,1,49,15);

--敵の登場
setDisp(spep_3+50,1,1);
changeAnime(spep_3+50,1,108);
setMoveKey(spep_3+50,1,250,-120,0);
setMoveKey(spep_3+100,1,250,-120,0);
setScaleKey(spep_3+50,1,2.4,2.4);
setScaleKey(spep_3+100,1,2.4,2.4);
setRotateKey(spep_3+50,1,20);
setRotateKey(spep_3+100,1,20);
setShakeChara(spep_3+50,1,50,15);


setDisp( spep_3+80, 1, 0);

--SE
playSe(  spep_3+38, 1023);

--setDisp(spep_3+100,1,0);

--黒背景
entryFadeBg(spep_3, 0, 100, 0, 0, 0, 0, 180);  -- 黒　背景

-- ** エフェクト等 ** --
entryFade(spep_3+94,3,9,5,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_4=spep_3+100;

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_3+16; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

--キャラクターの固定
setMoveKey(SP_dodge, 1, 290 , -70, 0);
setScaleKey(SP_dodge , 1 , 1.5 ,1.5);
setRotateKey(SP_dodge,   1, 0);

--キャラクターの固定
setMoveKey(SP_dodge+8, 1, 290 , -70, 0);
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
pauseAll( SP_dodge, 67);

entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge+10);

do return end
else end


--------------------------------------
--ダメージ演出
--------------------------------------
setMoveKey( spep_4-2, 1, 700,30,0);
setScaleKey( spep_4-2,    1,  1.0, 1.0);


setDisp( spep_4-1, 1, 1);
setMoveKey(  spep_4-1,    1,  100,  0,   0);
setScaleKey( spep_4-1,    1,  1.0, 1.0);
setMoveKey(  spep_4,    1,    0,   0,   128);
setScaleKey( spep_4,    1,  0.1, 0.1);
setRotateKey( spep_4,    1,  0);

changeAnime( spep_4, 1, 107);                         -- 手前ダメージ
entryEffect( spep_4+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_4+8, SE_10);

setMoveKey(  spep_4+8,   1,    0,   0,   128);
setMoveKey(  spep_4+15,   1,  -60,  -200,  -100);
setMoveKey(  spep_4+16,   1,  -60,  -200,  -100);
setDamage( spep_4+16, 1, 0);  -- ダメージ振動等
setShake(spep_4+7,6,15);
setShake(spep_4+13,15,10);

setRotateKey( spep_4,  1,  30 );
setRotateKey( spep_4+2,  1,  80 );
setRotateKey( spep_4+4,  1, 120 );
setRotateKey( spep_4+6,  1, 160 );
setRotateKey( spep_4+8,  1, 200 );
setRotateKey( spep_4+10,  1, 260 );
setRotateKey( spep_4+12,  1, 320 );
setRotateKey( spep_4+14,  1,   0 );

setShakeChara( spep_4+15, 1, 5,  10);
setShakeChara( spep_4+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep_4+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep_4+15, ct, 30, 10);
setEffRotateKey( spep_4+15, ct, -40);
setEffScaleKey( spep_4+15, ct, 4.0, 4.0);
setEffScaleKey( spep_4+16, ct, 2.0, 2.0);
setEffScaleKey( spep_4+17, ct, 2.6, 2.6);
setEffScaleKey( spep_4+18, ct, 4.0, 4.0);
setEffScaleKey( spep_4+19, ct, 2.6, 2.6);
setEffScaleKey( spep_4+20, ct, 3.8, 3.8);
setEffScaleKey( spep_4+110, ct, 3.8, 3.8);
setEffAlphaKey( spep_4+15, ct, 255);
setEffAlphaKey( spep_4+105, ct, 255);
setEffAlphaKey( spep_4+115, ct, 0);

playSe( spep_4+3, SE_11);
shuchusen = entryEffectLife( spep_4+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_4+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

shuchusenkuro = entryEffectLife( spep_4+15, 1657, 120, 0x80,  -1, 0,  0,  0);   -- 集中線


-- ダメージ表示
dealDamage(spep_4+16);
entryFade( spep_4+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_4+110);

else 

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 気溜め
------------------------------------------------------

spep_0=0;
--キャラクターの登場
setDisp(spep_0,0,1);
changeAnime(spep_0,0,17);
setMoveKey(spep_0,0,0,0,0);
setMoveKey(spep_0+1,0,0,0,0);
setMoveKey(spep_0+2,0,0,0,0);
setMoveKey(spep_0+3,0,0,0,0);
setMoveKey(spep_0+4,0,0,0,0);
setMoveKey(spep_0+5,0,0,0,0);
setMoveKey(spep_0+97,0,0,0,0);
setScaleKey(spep_0,0,2.0,2.0);
setScaleKey(spep_0+97,0,2.0,2.0);
setRotateKey(spep_0,0,0);
setRotateKey(spep_0+97,0,0);
setShakeChara(spep_0,0,97,15);

--顔＆セリフカットイン
--speff=entryEffect(spep_0+6,1504,0x100,-1,0,0,0);  --カットイン(顔)
--setEffReplaceTexture(speff,3,2);  --カットイン差し替え
--speff1=entryEffect(spep_0+6,1505,0x100,-1,0,0,0);  --カットイン(セリフ)
--setEffReplaceTexture(speff1,4,5);  --セリフカットイン差し替え


--文字エントリー
ctgogo=entryEffectLife(spep_0+19,190006,69,0x100,-1,110,500);--ゴゴゴ
setEffMoveKey(spep_0+19,ctgogo,-30,500,0);
setEffMoveKey(spep_0+93,ctgogo,-30,500,0);
setEffScaleKey(spep_0+19, ctgogo, -0.7, 0.7);
setEffScaleKey(spep_0+93, ctgogo, -0.7, 0.7);

--SE
playSe( spep_0+19, SE_05); --ゴゴゴ

--後ろの気
ef_ki=entryEffectLife(spep_0, 1503, 97,0x80,-1,0,0,0);   -- 集中線
setEffMoveKey(spep_0,ef_ki,0,0,0);
setEffMoveKey(spep_0+97,ef_ki,0,0,0);
setEffScaleKey(spep_0, ef_ki, 1.0, 1.0);
setEffScaleKey(spep_0+97,ef_ki, 1.0, 1.0);

--バチバチ
ef_bati=entryEffectLife(spep_0, 1502, 97,0x100,-1,0,0,0);   -- 集中線
setEffMoveKey(spep_0,ef_bati,0,0,0);
setEffMoveKey(spep_0+97,ef_bati,0,0,0);
setEffScaleKey(spep_0,ef_bati, 1.0, 1.0);
setEffScaleKey(spep_0+97,ef_bati, 1.0, 1.0);

--白フェード
entryFade(spep_0+84, 12, 2,5, fcolor_r, fcolor_g, fcolor_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 60, 0, 0, 0, 0, 255 ); --黒 背景

--敵からの退却
setDisp(spep_0+98,0,0);
setMoveKey(spep_0+97,0,0,0,0);
setMoveKey(spep_0+98,0,0,-900,0);


--次の準備
spep_1=spep_0+97;

--------------------------------------
--カードカットイン(90F)
--------------------------------------

playSe(spep_1,SE_05);
shuchusen3=entryEffectLife(spep_1,906,90,0x100,-1,0,0,0);   -- 集中線
setEffScaleKey(spep_1,shuchusen3,1.6,1.6);

speff2=entryEffect(spep_1,1507,0,-1,0,0,0);   -- カード
setEffReplaceTexture(speff2,1,1);
setEffReplaceTexture(speff2,2,0);-- カード差し替え
setEffReplaceTexture(speff2,5,4);-- 技名テクスチャ差し替え

-- ** エフェクト等 ** --
entryFade(spep_1+85,3,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_2=spep_1+90;

------------------------------------------------------
-- 目からビーム
------------------------------------------------------
--エフェクトの再生
beam=entryEffectLife(spep_2,SP_01x,100,0x100,-1,0,0,0);
setEffMoveKey(spep_2,beam,0,0,0);
setEffMoveKey(spep_2+100,beam,0,0,0);
setEffScaleKey(spep_2,beam,1.1,1.0);
setEffScaleKey(spep_2+100,beam,1.1,1.0);
setEffAlphaKey(spep_2,beam,255);
setEffAlphaKey(spep_2+100,beam,255);
setEffRotateKey(spep_2,beam,0);
setEffRotateKey(spep_2+100,beam,0);


--集中線
shuchusen3=entryEffectLife(spep_2,921,100,0x80,-1,20,0,0);-- 集中線
setEffMoveKey(spep_2,shuchusen3,0,0,0);
setEffMoveKey(spep_2+100,shuchusen3,0,0,0);
setEffScaleKey(spep_2,shuchusen3,2.0,1.2);
setEffScaleKey(spep_2+100,shuchusen3,2.0,1.2);
setEffAlphaKey(spep_2,shuchusen3,255);
setEffAlphaKey(spep_2+100,shuchusen3,255);
setEffRotateKey(spep_2,shuchusen3,-190);
setEffRotateKey(spep_2+100,shuchusen3,-190);

--文字エントリー
ctkaltu=entryEffectLife(spep_2+29,10004,17,0x100,-1,200,400);--カッ
setEffMoveKey(spep_2+29,ctkaltu,220,400,0);
setEffMoveKey(spep_2+47,ctkaltu,220,400,0);
setEffScaleKey(spep_2+29,ctkaltu,0.7,0.7);
setEffScaleKey(spep_2+31,ctkaltu,1.8,1.8);
setEffScaleKey(spep_2+47,ctkaltu,1.8,1.8);
setEffRotateKey(spep_2+29,ctkaltu,-10);
setEffRotateKey(spep_2+47,ctkaltu,-10);
setEffShake(spep_2+29,ctkaltu,10,15);

SE1=playSe(spep_2+29,15);
stopSe(spep_2+50,SE1,0);

--文字エントリー
ctzuo=entryEffectLife(spep_2+58,10012,38,0x100,-1,110,500);--ズオ
setEffMoveKey(spep_2,ctzuo,110,220,0);
setEffMoveKey(spep_2+58,ctzuo,140,220,0);
setEffMoveKey(spep_2+68,ctzuo,140,270,0);
setEffScaleKey(spep_2+58,ctzuo,0.5,0.5);
setEffScaleKey(spep_2+68,ctzuo,1.8,1.8);
setEffScaleKey(spep_2+100,ctzuo,1.8,1.8);
setEffRotateKey(spep_2+58,ctzuo,30);
setEffRotateKey(spep_2+97,ctzuo,30);
setEffShake( spep_2,ctzuo,100,20);

playSe(spep_2+58,1022);

--黒背景
entryFadeBg(spep_2, 0, 100, 0, 0, 0, 0, 180);  -- 黒　背景

-- ** エフェクト等 ** --
entryFade(spep_2+95,3,3,3,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_3=spep_2+100;

------------------------------------------------------
-- ビームが当たる
------------------------------------------------------
--エフェクトの再生
hit=entryEffectLife(spep_3,SP_02x,100,0x100,-1,0,0,0);
setEffMoveKey(spep_3,hit,0,0,0);
setEffMoveKey(spep_3+100,hit,0,0,0);
setEffScaleKey(spep_3,hit,1.1,1.0);
setEffScaleKey(spep_3+100,hit,1.1,1.0);
setEffAlphaKey(spep_3,hit,255);
setEffAlphaKey(spep_3+100,hit,255);
setEffRotateKey(spep_3,hit,0);
setEffRotateKey(spep_3+100,hit,0);



--文字エントリー
ctzudo=entryEffectLife(spep_3,10014,100,0x100,-1,50,250);--ズドドド
setEffMoveKey(spep_3,ctzudo,50,320,0);
setEffMoveKey(spep_3+100,ctzudo,50,320,0);
setEffScaleKey(spep_3,ctzudo,3.3,3.4);
setEffScaleKey(spep_3+100,ctzudo,3.3,3.4);
setEffRotateKey(spep_3,ctzudo,0);
setEffRotateKey(spep_3+100,ctzudo,0);
setEffShake(spep_3,ctzudo,100,15);

playSe(spep_3,1018);--ズドドド

--集中線
shuchusen4=entryEffectLife(spep_3,921,100,0x80,-1,20,0,0);-- 集中線
setEffMoveKey(spep_3,shuchusen4,0,0,0);
setEffMoveKey(spep_3+100,shuchusen4,0,0,0);
setEffScaleKey(spep_3,shuchusen4,1.2,1.4);
setEffScaleKey(spep_3+100,shuchusen4,1.2,1.4);
setEffAlphaKey(spep_3,shuchusen4,255);
setEffAlphaKey(spep_3+100,shuchusen4,255);
setEffRotateKey(spep_3,shuchusen4,0);
setEffRotateKey(spep_3+100,shuchusen4,0);

--敵の登場
setDisp(spep_3,1,1);
changeAnime(spep_3,1,104);
setMoveKey(spep_3,1,300,-20,0);
setMoveKey(spep_3+49,1,250,-20,0);
setScaleKey(spep_3,1,1.2,1.2);
setScaleKey(spep_3+30,1,2.0,2.0);
setScaleKey(spep_3+49,1,2.0,2.0);
setRotateKey(spep_3,1,0);
setRotateKey(spep_3+49,1,0);
setShakeChara(spep_3,1,49,15);

--敵の登場
setDisp(spep_3+50,1,1);
changeAnime(spep_3+50,1,108);
setMoveKey(spep_3+50,1,250,-120,0);
setMoveKey(spep_3+100,1,250,-120,0);
setScaleKey(spep_3+50,1,2.4,2.4);
setScaleKey(spep_3+100,1,2.4,2.4);
setRotateKey(spep_3+50,1,20);
setRotateKey(spep_3+100,1,20);
setShakeChara(spep_3+50,1,50,15);


setDisp( spep_3+80, 1, 0);

--SE
playSe(  spep_3+38, 1023);

--setDisp(spep_3+100,1,0);

--黒背景
entryFadeBg(spep_3, 0, 100, 0, 0, 0, 0, 180);  -- 黒　背景

-- ** エフェクト等 ** --
entryFade(spep_3+94,3,9,5,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_4=spep_3+100;

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_3+16; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

--キャラクターの固定
setMoveKey(SP_dodge, 1, 290 , -70, 0);
setScaleKey(SP_dodge , 1 , 1.5 ,1.5);
setRotateKey(SP_dodge,   1, 0);

--キャラクターの固定
setMoveKey(SP_dodge+8, 1, 290 , -70, 0);
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
pauseAll( SP_dodge, 67);

entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge+10);

do return end
else end


--------------------------------------
--ダメージ演出
--------------------------------------
setMoveKey( spep_4-2, 1, 700,30,0);
setScaleKey( spep_4-2,    1,  1.0, 1.0);


setDisp( spep_4-1, 1, 1);
setMoveKey(  spep_4-1,    1,  100,  0,   0);
setScaleKey( spep_4-1,    1,  1.0, 1.0);
setMoveKey(  spep_4,    1,    0,   0,   128);
setScaleKey( spep_4,    1,  0.1, 0.1);
setRotateKey( spep_4,    1,  0);

changeAnime( spep_4, 1, 107);                         -- 手前ダメージ
entryEffect( spep_4+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_4+8, SE_10);

setMoveKey(  spep_4+8,   1,    0,   0,   128);
setMoveKey(  spep_4+15,   1,  -60,  -200,  -100);
setMoveKey(  spep_4+16,   1,  -60,  -200,  -100);
setDamage( spep_4+16, 1, 0);  -- ダメージ振動等
setShake(spep_4+7,6,15);
setShake(spep_4+13,15,10);

setRotateKey( spep_4,  1,  30 );
setRotateKey( spep_4+2,  1,  80 );
setRotateKey( spep_4+4,  1, 120 );
setRotateKey( spep_4+6,  1, 160 );
setRotateKey( spep_4+8,  1, 200 );
setRotateKey( spep_4+10,  1, 260 );
setRotateKey( spep_4+12,  1, 320 );
setRotateKey( spep_4+14,  1,   0 );

setShakeChara( spep_4+15, 1, 5,  10);
setShakeChara( spep_4+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep_4+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep_4+15, ct, 30, 10);
setEffRotateKey( spep_4+15, ct, -40);
setEffScaleKey( spep_4+15, ct, 4.0, 4.0);
setEffScaleKey( spep_4+16, ct, 2.0, 2.0);
setEffScaleKey( spep_4+17, ct, 2.6, 2.6);
setEffScaleKey( spep_4+18, ct, 4.0, 4.0);
setEffScaleKey( spep_4+19, ct, 2.6, 2.6);
setEffScaleKey( spep_4+20, ct, 3.8, 3.8);
setEffScaleKey( spep_4+110, ct, 3.8, 3.8);
setEffAlphaKey( spep_4+15, ct, 255);
setEffAlphaKey( spep_4+105, ct, 255);
setEffAlphaKey( spep_4+115, ct, 0);

playSe( spep_4+3, SE_11);
shuchusen = entryEffectLife( spep_4+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_4+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

shuchusenkuro = entryEffectLife( spep_4+15, 1657, 120, 0x80,  -1, 0,  0,  0);   -- 集中線


-- ダメージ表示
dealDamage(spep_4+16);
entryFade( spep_4+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_4+110);
end