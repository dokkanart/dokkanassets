--1013890 人造人間17号　sp1168


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
SP_01 = 151506;--バリア出す
SP_02 = 151507;--突撃
SP_03 = 151508;--バリア手に収束
SP_04 = 151510;--パンチ



--敵側は味方側に1xをつけてます

SP_01x = 151506;--バリア出す
SP_02x = 151507;--突撃
SP_03x = 151509;--バリア手に収束(敵)
SP_04x = 151511;--パンチ(敵)


multi_frm = 2;

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

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
------------------------------------------------------
-- 気溜め(120F)
------------------------------------------------------
spep_0=0;

--エフェクトの再生
barrier=entryEffectLife(spep_0,SP_01,117,0x80,-1,0,0,0);
setEffMoveKey(spep_0,barrier,0,0,0);
setEffMoveKey(spep_0+120,barrier,0,0,0);
setEffScaleKey(spep_0,barrier,1.0,1.0);
setEffScaleKey(spep_0+120,barrier,1.0,1.0);
setEffAlphaKey(spep_0,barrier,255);
setEffAlphaKey(spep_0+120,barrier,255);
setEffRotateKey(spep_0,barrier,0);
setEffRotateKey(spep_0+120,barrier,0);

--白フェード
entryFade(spep_0, 0, 5, 15, fcolor_r, fcolor_g, fcolor_b, 255);

--文字エントリー
ctgogo=entryEffectLife(spep_0+34,190006,69,0x100,-1,150,480);--ゴゴゴ

setEffShake(spep_0+34,ctgogo,69,15);
setEffMoveKey(spep_0+34,ctgogo,150,480);
setEffMoveKey(spep_0+96,ctgogo,150,480);
setEffScaleKey(spep_0+34,ctgogo,0.8,0.8);
setEffScaleKey(spep_0+96,ctgogo,0.8,0.8);
setEffAlphaKey(spep_0+34,ctgogo,255);
setEffAlphaKey(spep_0+96,ctgogo,255);
setEffRotateKey(spep_0+34,ctgogo,0);
setEffRotateKey(spep_0+96,ctgogo,0);


--顔＆セリフカットイン
speff=entryEffect(spep_0+14,1504,0x100,-1,0,0,0);  --カットイン(顔)
setEffReplaceTexture(speff,3,2);  --カットイン差し替え
speff1=entryEffect(spep_0+14,1505,0x100,-1,0,0,0);  --カットイン(セリフ)
setEffReplaceTexture(speff1,4,5);  --セリフカットイン差し替え

--SE
--SE = playSe(spep_0+25 ,1020);
--stopSe(spep_0+55 ,SE ,10)
playSe( spep_0+34, SE_05); --ゴゴゴ

--黒背景
entryFadeBg( spep_0, 0, 120, 0, 0, 0, 0, 210);  -- 黒　背景

--集中線
shuchusen = entryEffectLife(spep_0, 906, 102, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey(spep_0, shuchusen, 1.6, 1.6);


--白フェード
entryFade(spep_0+102, 10, 7,8, fcolor_r, fcolor_g, fcolor_b, 255);

--次の準備
spep_1 = spep_0+120;


--------------------------------------


--------------------------------------
--突進
--------------------------------------
--エフェクトの再生
rush=entryEffectLife(spep_1,SP_02,74,0x80,-1,0,0,0);
setEffMoveKey(spep_1,rush,0,0,0);
setEffMoveKey(spep_1+74,rush,0,0,0);
setEffScaleKey(spep_1,rush,1.0,1.0);
setEffScaleKey(spep_1+74,rush,1.0,1.0);
setEffAlphaKey(spep_1,rush,255);
setEffAlphaKey(spep_1+74,rush,255);
setEffRotateKey(spep_1,rush,0);
setEffRotateKey(spep_1+74,rush,0);

--煙
--[[
smoke=entryEffectLife(spep_1,1510,67,0x80,-1,0,0,0);
setEffMoveKey(spep_1,smoke,0,0,0);
setEffMoveKey(spep_1+72,smoke,0,0,0);
setEffScaleKey(spep_1,smoke,0.5,0.5);
setEffScaleKey(spep_1+72,smoke,1,1);
setEffAlphaKey(spep_1,smoke,255);
setEffAlphaKey(spep_1+72,smoke,255);
setEffRotateKey(spep_1,smoke,0);
setEffRotateKey(spep_1+72,smoke,0);
setEffShake(spep_1,smoke,spep_1+72,15);

--岩が飛び散る
rock=entryEffectLife(spep_1,909,72,0x80,-1,0,0,0);
setEffMoveKey(spep_1,rock,0,0,0);
setEffMoveKey(spep_1+72,rock,0,0,0);
setEffScaleKey(spep_1,rock,0.5,0.5);
setEffScaleKey(spep_1+72,rock,0.5,0.5);
setEffAlphaKey(spep_1,rock,255);
setEffAlphaKey(spep_1+72,rock,255);
setEffRotateKey(spep_1,rock,0);
setEffRotateKey(spep_1+72,rock,0);
setEffShake(spep_1,rock,spep_1+72,15);


--キャラクターの配置＆キャラの拡大
setDisp( spep_1, 0, 1);
setMoveKey(spep_1, 0, 0 , -50, 0);
setMoveKey(spep_1+20, 0, 0 , -100, 0);
setMoveKey(spep_1+50, 0, 0 , -100, 0);
setMoveKey(spep_1+72, 0, 0 , -250, 0);
changeAnime(spep_1, 0, 16);
setScaleKey(spep_1 , 0 , 1.8 ,1.8);
setScaleKey(spep_1+20 , 0 , 4.0 ,4.0);
setScaleKey(spep_1+50 , 0 , 4.0 ,4.0);
setScaleKey(spep_1+66 , 0 , 8.0 ,8.0);
setRotateKey(spep_1 ,0 ,18);
setRotateKey(spep_1+72 ,0 ,18);
setShakeChara(spep_1 , 0, 72 ,15);
]]

--文字エントリー
ctdon=entryEffectLife(spep_1+5,10019,45,0x100,-1,100,350);--ドンッ

setEffShake(spep_1+5,ctdon,72,15);
setEffMoveKey(spep_1+5,ctdon,100,350);
setEffMoveKey(spep_1+5,ctdon,100,350);
setEffScaleKey(spep_1+5,ctdon,2,2);
setEffScaleKey(spep_1+50,ctdon,2,2);
setEffAlphaKey(spep_1+4,ctdon,255);
setEffAlphaKey(spep_1+50,ctdon,255);
setEffRotateKey(spep_1+4,ctdon,47);
setEffRotateKey(spep_1+50,ctdon,47);

--SE
playSe(spep_1 ,9);

--黒背景
entryFadeBg( spep_1, 0, 72, 0, 0, 0, 0, 210);  -- 黒　背景

--集中線
shuchusen1 = entryEffectLife(spep_1, 906, 72, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey(spep_1, shuchusen1, 1.6, 1.6);

--[[
--キャラクターの退却
setDisp( spep_1+56, 0, 0);
setMoveKey(spep_1+72, 0, 0 , -30, 0);
setMoveKey(spep_1+73, 0, 0 , -900, 0);
setScaleKey(spep_1+72 , 0 , 4.0,4.0);
setScaleKey(spep_1+73 , 0 , 1.5,1.5);
]]
--白フェード
entryFade(spep_1+65, 5, 10,4, fcolor_r, fcolor_g, fcolor_b, 255);


--次の準備
spep_2 = spep_1+80;

--------------------------------------
--手にバリアが集まる
--------------------------------------

--エフェクトの再生
barrier2=entryEffectLife(spep_2,SP_03,96,0x100,-1,0,0,0);
setEffMoveKey(spep_2,barrier2,0,0,0);
setEffMoveKey(spep_2+96,barrier2,0,0,0);
setEffScaleKey(spep_2,barrier2,1.0,1.0);
setEffScaleKey(spep_2+96,barrier2,1.0,1.0);
setEffAlphaKey(spep_2,barrier2,255);
setEffAlphaKey(spep_2+96,barrier2,255);
setEffRotateKey(spep_2,barrier2,0);
setEffRotateKey(spep_2+96,barrier2,0);


--文字エントリー
ctzuo=entryEffectLife(spep_2+10,10012,79,0x100,-1,50,380);--ズオッ

setEffShake(spep_2+10,ctzuo,79,15);

setEffMoveKey(spep_2+10,ctzuo,50,380);
setEffMoveKey(spep_2+12,ctzuo,52,375);
setEffMoveKey(spep_2+24,ctzuo,50,380);	
setEffMoveKey(spep_2+26,ctzuo,52,375);
setEffMoveKey(spep_2+28,ctzuo,50,380);	
setEffMoveKey(spep_2+30,ctzuo,52,375);	
setEffMoveKey(spep_2+32,ctzuo,50,380);	
setEffMoveKey(spep_2+34,ctzuo,52,375);	
setEffMoveKey(spep_2+36,ctzuo,50,380);	
setEffMoveKey(spep_2+38,ctzuo,52,375);	
setEffMoveKey(spep_2+40,ctzuo,50,380);	
setEffMoveKey(spep_2+42,ctzuo,52,375);	
setEffMoveKey(spep_2+44,ctzuo,50,380);	
setEffMoveKey(spep_2+46,ctzuo,52,375);	
setEffMoveKey(spep_2+48,ctzuo,50,380);	
setEffMoveKey(spep_2+50,ctzuo,52,375);	
setEffMoveKey(spep_2+52,ctzuo,50,380);
setEffMoveKey(spep_2+54,ctzuo,52,375);
setEffMoveKey(spep_2+56,ctzuo,50,380);	
setEffMoveKey(spep_2+58,ctzuo,52,375);
setEffMoveKey(spep_2+60,ctzuo,50,380);	
setEffMoveKey(spep_2+62,ctzuo,52,375);	
setEffMoveKey(spep_2+64,ctzuo,50,380);	
setEffMoveKey(spep_2+66,ctzuo,52,375);	
setEffMoveKey(spep_2+68,ctzuo,50,380);	
setEffMoveKey(spep_2+70,ctzuo,52,375);	
setEffMoveKey(spep_2+72,ctzuo,50,380);	
setEffMoveKey(spep_2+74,ctzuo,52,375);	
setEffMoveKey(spep_2+76,ctzuo,50,380);	
setEffMoveKey(spep_2+78,ctzuo,52,375);	
setEffMoveKey(spep_2+80,ctzuo,50,380);	
setEffMoveKey(spep_2+82,ctzuo,52,375);	
setEffMoveKey(spep_2+84,ctzuo,50,380);
setEffMoveKey(spep_2+86,ctzuo,52,375);	
setEffMoveKey(spep_2+89,ctzuo,50,380);

setEffScaleKey(spep_2+10,ctzuo,0.5,0.5);
setEffScaleKey(spep_2+15,ctzuo,2.5,2.5);
setEffScaleKey(spep_2+89,ctzuo,2.5,2.5);

setEffAlphaKey(spep_2+10,ctzuo,255);
setEffAlphaKey(spep_2+89,ctzuo,255);

setEffRotateKey(spep_2+10,ctzuo,45);
setEffRotateKey(spep_2+89,ctzuo,45);

--SE
playSeLife(spep_2,1018,36,0);
playSe(spep_2+34,1038);

--黒背景
entryFadeBg( spep_2, 0, 120, 0, 0, 0, 0, 210);  -- 黒　背景

--白フェード
entryFade(spep_2+90, 5, 2,5, fcolor_r, fcolor_g, fcolor_b, 255);

--集中線
shuchusen2 = entryEffectLife(spep_2, 924, 95, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey(spep_2,shuchusen2,0,0,0);
setEffMoveKey(spep_2+95,shuchusen2,0,0,0);
setEffScaleKey(spep_2, shuchusen2, 1.6, 1.6);
setEffScaleKey(spep_2+95, shuchusen2, 1.6, 1.6);
setEffRotateKey(spep_2, shuchusen2, 180);
setEffRotateKey(spep_2+95, shuchusen2, 180);

--次の準備
spep_3 = spep_2+95;

--------------------------------------
--カードカットイン(90F)
--------------------------------------

playSe( spep_3, SE_05);
shuchusen3 = entryEffectLife(spep_3, 906, 90, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey(spep_3, shuchusen3, 1.6, 1.6);

speff2 = entryEffect(  spep_3,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff2, 1, 1);
setEffReplaceTexture( speff2, 2, 0);-- カード差し替え
setEffReplaceTexture( speff2, 5, 4);-- 技名テクスチャ差し替え

-- ** エフェクト等 ** --
entryFade(spep_3+85, 3, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_4 = spep_3+90;

--------------------------------------
--敵を殴る
--------------------------------------
--エフェクトの再生
hit=entryEffectLife(spep_4,SP_04,90,0x100,-1,0,0,0);

setEffMoveKey(spep_4,hit,0,0,0);
setEffMoveKey(spep_4+90,hit,0,0,0);

setEffScaleKey(spep_4,hit,1.0,1.0);
setEffScaleKey(spep_4+90,hit,1.0,1.0);

setEffAlphaKey(spep_4,hit,255);
setEffAlphaKey(spep_4+90,hit,255);

setEffRotateKey(spep_4,hit,0);
setEffRotateKey(spep_4+90,hit,0);

--敵の配置＆敵の移動
setDisp( spep_4, 1, 1);
changeAnime(spep_4, 1, 104);
setMoveKey(spep_4, 1, 700 , 30, 0);
setMoveKey(spep_4+10, 1, 200 , 30, 0);
setMoveKey(spep_4+47, 1, 100 , 30, 0);
setScaleKey(spep_4 , 1 , 1.5 ,1.5);
setScaleKey(spep_4+40 , 1 , 1.5 ,1.5);
setRotateKey(spep_4 ,1 ,0);
setShakeChara(spep_4+10 , 1, 40 ,15);


--SE
playSe(spep_4+3,1018);
playSe(spep_4+51,1010);--バキ

--敵の構図が変わる＆敵が飛んで行く
changeAnime(spep_4+50, 1, 108);
setMoveKey(spep_4+50, 1, 110 , 30, 0);
setMoveKey(spep_4+80, 1, 700 , 30, 0);
setScaleKey(spep_4+50 , 1 , 1.5 ,1.5);
setScaleKey(spep_4+80 , 1 , 1.5 ,1.5);
setRotateKey(spep_4+80 ,1 ,0);
setShakeChara(spep_4+50 , 1, 30 ,15);

-- ** エフェクト等 ** --
entryFade(spep_4+49, 0, 0, 3, fcolor_r, fcolor_g, fcolor_b, 180);     -- white fade

--文字エントリー
ctzudodo=entryEffectLife(spep_4,10014,46,0x100,-1,0,300);--ズドドドッ

setEffShake(spep_4,ctzudodo,90,15);
setEffMoveKey(spep_4,ctzudodo,0,300);
setEffMoveKey(spep_4+46,ctzudodo,0,300);
setEffScaleKey(spep_4,ctzudodo,1.8,1.8);
setEffScaleKey(spep_2+46,ctzudodo,1.8,1.8);
setEffAlphaKey(spep_2,ctzudodo,255);
setEffAlphaKey(spep_2+46,ctzudodo,255);
setEffRotateKey(spep_2,ctzudodo,46);
setEffRotateKey(spep_2+46,ctzudodo,46);

--文字エントリー
ctbaki=entryEffectLife(spep_4+51,10020,37,0x100,-1,220,250);--バキ

--setEffShake(spep_4+54,ctbaki,90,15);
setEffMoveKey(spep_4+51,ctbaki,220,250);
setEffMoveKey(spep_4+86,ctbaki,220,250);
setEffScaleKey(spep_4+51,ctbaki,1.8,1.8);
setEffScaleKey(spep_4+54,ctbaki,2,2);
setEffScaleKey(spep_4+56,ctbaki,1.8,1.8);
setEffScaleKey(spep_4+58,ctbaki,2,2);
setEffScaleKey(spep_4+60,ctbaki,1.8,1.8);
setEffScaleKey(spep_4+62,ctbaki,2,2);
setEffScaleKey(spep_4+64,ctbaki,1.8,1.8);
setEffScaleKey(spep_4+66,ctbaki,2,2);
setEffScaleKey(spep_4+68,ctbaki,1.8,1.8);
setEffScaleKey(spep_4+70,ctbaki,2,2);
setEffScaleKey(spep_4+72,ctbaki,1.8,1.8);
setEffScaleKey(spep_4+74,ctbaki,2,2);
setEffScaleKey(spep_4+76,ctbaki,1.8,1.8);
setEffScaleKey(spep_4+78,ctbaki,2,2);
setEffScaleKey(spep_4+80,ctbaki,1.8,1.8);
setEffScaleKey(spep_4+82,ctbaki,2,2);
setEffScaleKey(spep_4+84,ctbaki,1.8,1.8);
setEffScaleKey(spep_4+86,ctbaki,2,2);
setEffScaleKey(spep_4+88,ctbaki,1.8,1.8);

setEffAlphaKey(spep_4+51,ctbaki,255);
setEffAlphaKey(spep_4+88,ctbaki,255);

setEffRotateKey(spep_4+51,ctbaki,35);
setEffRotateKey(spep_4+88,ctbaki,35);

--敵キャラクターの非表示
setDisp(spep_4+72, 1, 0);


--黒背景
entryFadeBg( spep_4, 0, 88, 0, 0, 0, 0, 210);  -- 黒　背景

--集中線
shuchusen4 = entryEffectLife(spep_4, 920, 88, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey(spep_4, shuchusen4, 1.6, 1.6);
setEffRotateKey(spep_4, shuchusen4, 180);
setEffRotateKey(spep_4+88, shuchusen4, 180);

--白フェード
entryFade(spep_4+76, 10, 6,5, fcolor_r, fcolor_g, fcolor_b, 255);

--次の準備
spep_5 = spep_4+88;

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_4+30; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

--キャラクターの固定
setMoveKey(SP_dodge, 1, 317 , 30, 0);
setScaleKey(SP_dodge , 1 , 1.5 ,1.5);
setRotateKey(SP_dodge,   1, 0);

setMoveKey(SP_dodge+8, 1, 317 , 30, 0);
setScaleKey(SP_dodge+8,  1 , 1.5 ,1.5);
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
entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景
pauseAll( SP_dodge, 67);

entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge+10);

do return end
else end

--------------------------------------
--ダメージ演出
--------------------------------------
setMoveKey( spep_5-2, 1, 700,30,0);
setScaleKey( spep_5-2,    1,  1.0, 1.0);


setDisp( spep_5-1, 1, 1);
setMoveKey(  spep_5-1,    1,  100,  0,   0);
setScaleKey( spep_5-1,    1,  1.0, 1.0);
setMoveKey(  spep_5,    1,    0,   0,   128);
setScaleKey( spep_5,    1,  0.1, 0.1);
setRotateKey( spep_5,    1,  0);

changeAnime( spep_5, 1, 107);                         -- 手前ダメージ
entryEffect( spep_5+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_5+8, SE_10);

setMoveKey(  spep_5+8,   1,    0,   0,   128);
setMoveKey(  spep_5+15,   1,  -60,  -200,  -100);
setMoveKey(  spep_5+16,   1,  -60,  -200,  -100);
setDamage( spep_5+16, 1, 0);  -- ダメージ振動等
setShake(spep_5+7,6,15);
setShake(spep_5+13,15,10);

setRotateKey( spep_5,  1,  30 );
setRotateKey( spep_5+2,  1,  80 );
setRotateKey( spep_5+4,  1, 120 );
setRotateKey( spep_5+6,  1, 160 );
setRotateKey( spep_5+8,  1, 200 );
setRotateKey( spep_5+10,  1, 260 );
setRotateKey( spep_5+12,  1, 320 );
setRotateKey( spep_5+14,  1,   0 );

setShakeChara( spep_5+15, 1, 5,  10);
setShakeChara( spep_5+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep_5+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep_5+15, ct, 30, 10);
setEffRotateKey( spep_5+15, ct, -40);
setEffScaleKey( spep_5+15, ct, 4.0, 4.0);
setEffScaleKey( spep_5+16, ct, 2.0, 2.0);
setEffScaleKey( spep_5+17, ct, 2.6, 2.6);
setEffScaleKey( spep_5+18, ct, 4.0, 4.0);
setEffScaleKey( spep_5+19, ct, 2.6, 2.6);
setEffScaleKey( spep_5+20, ct, 3.8, 3.8);
setEffScaleKey( spep_5+110, ct, 3.8, 3.8);
setEffAlphaKey( spep_5+15, ct, 255);
setEffAlphaKey( spep_5+105, ct, 255);
setEffAlphaKey( spep_5+115, ct, 0);

playSe( spep_5+3, SE_11);
shuchusen = entryEffectLife( spep_5+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_5+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

shuchusenkuro = entryEffectLife( spep_5+15, 1657, 120, 0x80,  -1, 0,  0,  0);   -- 集中線


-- ダメージ表示
dealDamage(spep_5+16);
entryFade( spep_5+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_5+110);

else
------------------------------------------------------
-- 敵側
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

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 気溜め(120F)
------------------------------------------------------
spep_0=0;

--エフェクトの再生
barrier=entryEffectLife(spep_0,SP_01x,117,0x80,-1,0,0,0);
setEffMoveKey(spep_0,barrier,0,0,0);
setEffMoveKey(spep_0+120,barrier,0,0,0);
setEffScaleKey(spep_0,barrier,-1.0,1.0);
setEffScaleKey(spep_0+120,barrier,-1.0,1.0);
setEffAlphaKey(spep_0,barrier,255);
setEffAlphaKey(spep_0+120,barrier,255);
setEffRotateKey(spep_0,barrier,0);
setEffRotateKey(spep_0+120,barrier,0);

--白フェード
entryFade(spep_0, 0, 5, 15, fcolor_r, fcolor_g, fcolor_b, 255);

--文字エントリー
ctgogo=entryEffectLife(spep_0+34,190006,69,0x100,-1,150,480);--ゴゴゴ

setEffShake(spep_0+34,ctgogo,69,15);
setEffMoveKey(spep_0+34,ctgogo,150,480);
setEffMoveKey(spep_0+96,ctgogo,150,480);
setEffScaleKey(spep_0+34,ctgogo,-0.8,0.8);
setEffScaleKey(spep_0+96,ctgogo,-0.8,0.8);
setEffAlphaKey(spep_0+34,ctgogo,255);
setEffAlphaKey(spep_0+96,ctgogo,255);
setEffRotateKey(spep_0+34,ctgogo,0);
setEffRotateKey(spep_0+96,ctgogo,0);


--顔＆セリフカットイン
--speff=entryEffect(spep_0+14,1504,0x100,-1,0,0,0);  --カットイン(顔)
--setEffReplaceTexture(speff,3,2);  --カットイン差し替え
--speff1=entryEffect(spep_0+14,1505,0x100,-1,0,0,0);  --カットイン(セリフ)
--setEffReplaceTexture(speff1,4,5);  --セリフカットイン差し替え

--SE
--SE = playSe(spep_0+25 ,1020);
--stopSe(spep_0+55 ,SE ,10)
playSe( spep_0+34, SE_05); --ゴゴゴ

--黒背景
entryFadeBg( spep_0, 0, 120, 0, 0, 0, 0, 210);  -- 黒　背景

--集中線
shuchusen = entryEffectLife(spep_0, 906, 102, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey(spep_0, shuchusen, 1.6, 1.6);


--白フェード
entryFade(spep_0+102, 10, 7,8, fcolor_r, fcolor_g, fcolor_b, 255);

--次の準備
spep_1 = spep_0+120;


--------------------------------------


--------------------------------------
--突進
--------------------------------------
--エフェクトの再生
rush=entryEffectLife(spep_1,SP_02x,74,0x80,-1,0,0,0);
setEffMoveKey(spep_1,rush,0,0,0);
setEffMoveKey(spep_1+74,rush,0,0,0);
setEffScaleKey(spep_1,rush,-1.0,1.0);
setEffScaleKey(spep_1+74,rush,-1.0,1.0);
setEffAlphaKey(spep_1,rush,255);
setEffAlphaKey(spep_1+74,rush,255);
setEffRotateKey(spep_1,rush,0);
setEffRotateKey(spep_1+74,rush,0);

--煙
--[[
smoke=entryEffectLife(spep_1,1510,67,0x80,-1,0,0,0);
setEffMoveKey(spep_1,smoke,0,0,0);
setEffMoveKey(spep_1+72,smoke,0,0,0);
setEffScaleKey(spep_1,smoke,0.5,0.5);
setEffScaleKey(spep_1+72,smoke,1,1);
setEffAlphaKey(spep_1,smoke,255);
setEffAlphaKey(spep_1+72,smoke,255);
setEffRotateKey(spep_1,smoke,0);
setEffRotateKey(spep_1+72,smoke,0);
setEffShake(spep_1,smoke,spep_1+72,15);

--岩が飛び散る
rock=entryEffectLife(spep_1,909,72,0x80,-1,0,0,0);
setEffMoveKey(spep_1,rock,0,0,0);
setEffMoveKey(spep_1+72,rock,0,0,0);
setEffScaleKey(spep_1,rock,0.5,0.5);
setEffScaleKey(spep_1+72,rock,0.5,0.5);
setEffAlphaKey(spep_1,rock,255);
setEffAlphaKey(spep_1+72,rock,255);
setEffRotateKey(spep_1,rock,0);
setEffRotateKey(spep_1+72,rock,0);
setEffShake(spep_1,rock,spep_1+72,15);


--キャラクターの配置＆キャラの拡大
setDisp( spep_1, 0, 1);
setMoveKey(spep_1, 0, 0 , -50, 0);
setMoveKey(spep_1+20, 0, 0 , -100, 0);
setMoveKey(spep_1+50, 0, 0 , -100, 0);
setMoveKey(spep_1+72, 0, 0 , -250, 0);
changeAnime(spep_1, 0, 16);
setScaleKey(spep_1 , 0 , 1.8 ,1.8);
setScaleKey(spep_1+20 , 0 , 4.0 ,4.0);
setScaleKey(spep_1+50 , 0 , 4.0 ,4.0);
setScaleKey(spep_1+66 , 0 , 8.0 ,8.0);
setRotateKey(spep_1 ,0 ,18);
setRotateKey(spep_1+72 ,0 ,18);
setShakeChara(spep_1 , 0, 72 ,15);
]]

--文字エントリー
ctdon=entryEffectLife(spep_1+5,10019,45,0x100,-1,100,350);--ドンッ

setEffShake(spep_1+5,ctdon,72,15);
setEffMoveKey(spep_1+5,ctdon,100,350);
setEffMoveKey(spep_1+5,ctdon,100,350);
setEffScaleKey(spep_1+5,ctdon,2,2);
setEffScaleKey(spep_1+50,ctdon,2,2);
setEffAlphaKey(spep_1+4,ctdon,255);
setEffAlphaKey(spep_1+50,ctdon,255);
setEffRotateKey(spep_1+4,ctdon,47);
setEffRotateKey(spep_1+50,ctdon,47);

--SE
playSe(spep_1 ,9);

--黒背景
entryFadeBg( spep_1, 0, 72, 0, 0, 0, 0, 210);  -- 黒　背景

--集中線
shuchusen1 = entryEffectLife(spep_1, 906, 72, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey(spep_1, shuchusen1, 1.6, 1.6);

--[[
--キャラクターの退却
setDisp( spep_1+56, 0, 0);
setMoveKey(spep_1+72, 0, 0 , -30, 0);
setMoveKey(spep_1+73, 0, 0 , -900, 0);
setScaleKey(spep_1+72 , 0 , 4.0,4.0);
setScaleKey(spep_1+73 , 0 , 1.5,1.5);
]]
--白フェード
entryFade(spep_1+65, 5, 10,4, fcolor_r, fcolor_g, fcolor_b, 255);


--次の準備
spep_2 = spep_1+80;

--------------------------------------
--手にバリアが集まる
--------------------------------------

--エフェクトの再生
barrier2=entryEffectLife(spep_2,SP_03x,96,0x100,-1,0,0,0);
setEffMoveKey(spep_2,barrier2,0,0,0);
setEffMoveKey(spep_2+96,barrier2,0,0,0);
setEffScaleKey(spep_2,barrier2,-1.0,1.0);
setEffScaleKey(spep_2+96,barrier2,-1.0,1.0);
setEffAlphaKey(spep_2,barrier2,255);
setEffAlphaKey(spep_2+96,barrier2,255);
setEffRotateKey(spep_2,barrier2,0);
setEffRotateKey(spep_2+96,barrier2,0);


--文字エントリー
ctzuo=entryEffectLife(spep_2+10,10012,79,0x100,-1,50,380);--ズオッ

setEffShake(spep_2+10,ctzuo,79,15);

setEffMoveKey(spep_2+10,ctzuo,50,380);
setEffMoveKey(spep_2+12,ctzuo,52,375);
setEffMoveKey(spep_2+24,ctzuo,50,380);	
setEffMoveKey(spep_2+26,ctzuo,52,375);
setEffMoveKey(spep_2+28,ctzuo,50,380);	
setEffMoveKey(spep_2+30,ctzuo,52,375);	
setEffMoveKey(spep_2+32,ctzuo,50,380);	
setEffMoveKey(spep_2+34,ctzuo,52,375);	
setEffMoveKey(spep_2+36,ctzuo,50,380);	
setEffMoveKey(spep_2+38,ctzuo,52,375);	
setEffMoveKey(spep_2+40,ctzuo,50,380);	
setEffMoveKey(spep_2+42,ctzuo,52,375);	
setEffMoveKey(spep_2+44,ctzuo,50,380);	
setEffMoveKey(spep_2+46,ctzuo,52,375);	
setEffMoveKey(spep_2+48,ctzuo,50,380);	
setEffMoveKey(spep_2+50,ctzuo,52,375);	
setEffMoveKey(spep_2+52,ctzuo,50,380);
setEffMoveKey(spep_2+54,ctzuo,52,375);
setEffMoveKey(spep_2+56,ctzuo,50,380);	
setEffMoveKey(spep_2+58,ctzuo,52,375);
setEffMoveKey(spep_2+60,ctzuo,50,380);	
setEffMoveKey(spep_2+62,ctzuo,52,375);	
setEffMoveKey(spep_2+64,ctzuo,50,380);	
setEffMoveKey(spep_2+66,ctzuo,52,375);	
setEffMoveKey(spep_2+68,ctzuo,50,380);	
setEffMoveKey(spep_2+70,ctzuo,52,375);	
setEffMoveKey(spep_2+72,ctzuo,50,380);	
setEffMoveKey(spep_2+74,ctzuo,52,375);	
setEffMoveKey(spep_2+76,ctzuo,50,380);	
setEffMoveKey(spep_2+78,ctzuo,52,375);	
setEffMoveKey(spep_2+80,ctzuo,50,380);	
setEffMoveKey(spep_2+82,ctzuo,52,375);	
setEffMoveKey(spep_2+84,ctzuo,50,380);
setEffMoveKey(spep_2+86,ctzuo,52,375);	
setEffMoveKey(spep_2+89,ctzuo,50,380);

setEffScaleKey(spep_2+10,ctzuo,0.5,0.5);
setEffScaleKey(spep_2+15,ctzuo,2.5,2.5);
setEffScaleKey(spep_2+89,ctzuo,2.5,2.5);

setEffAlphaKey(spep_2+10,ctzuo,255);
setEffAlphaKey(spep_2+89,ctzuo,255);

setEffRotateKey(spep_2+10,ctzuo,45);
setEffRotateKey(spep_2+89,ctzuo,45);

--SE
playSeLife(spep_2,1018,36,0);
playSe(spep_2+34,1038);

--黒背景
entryFadeBg( spep_2, 0, 120, 0, 0, 0, 0, 210);  -- 黒　背景

--白フェード
entryFade(spep_2+90, 5, 2,5, fcolor_r, fcolor_g, fcolor_b, 255);

--集中線
shuchusen2 = entryEffectLife(spep_2, 924, 95, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey(spep_2,shuchusen2,0,0,0);
setEffMoveKey(spep_2+95,shuchusen2,0,0,0);
setEffScaleKey(spep_2, shuchusen2, 1.6, 1.6);
setEffScaleKey(spep_2+95, shuchusen2, 1.6, 1.6);
setEffRotateKey(spep_2, shuchusen2, 180);
setEffRotateKey(spep_2+95, shuchusen2, 180);

--次の準備
spep_3 = spep_2+95;

--------------------------------------
--カードカットイン(90F)
--------------------------------------

playSe( spep_3, SE_05);
shuchusen3 = entryEffectLife(spep_3, 906, 90, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey(spep_3, shuchusen3, 1.6, 1.6);

speff2 = entryEffect(  spep_3,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff2, 1, 1);
setEffReplaceTexture( speff2, 2, 0);-- カード差し替え
setEffReplaceTexture( speff2, 5, 4);-- 技名テクスチャ差し替え

-- ** エフェクト等 ** --
entryFade(spep_3+85, 3, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_4 = spep_3+90;

--------------------------------------
--敵を殴る
--------------------------------------
--エフェクトの再生
hit=entryEffectLife(spep_4,SP_04x,90,0x100,-1,0,0,0);

setEffMoveKey(spep_4,hit,0,0,0);
setEffMoveKey(spep_4+90,hit,0,0,0);

setEffScaleKey(spep_4,hit,-1.0,1.0);
setEffScaleKey(spep_4+90,hit,-1.0,1.0);

setEffAlphaKey(spep_4,hit,255);
setEffAlphaKey(spep_4+90,hit,255);

setEffRotateKey(spep_4,hit,0);
setEffRotateKey(spep_4+90,hit,0);

--敵の配置＆敵の移動
setDisp( spep_4, 1, 1);
changeAnime(spep_4, 1, 104);
setMoveKey(spep_4, 1, 700 , 30, 0);
setMoveKey(spep_4+10, 1, 200 , 30, 0);
setMoveKey(spep_4+47, 1, 100 , 30, 0);
setScaleKey(spep_4 , 1 , 1.5 ,1.5);
setScaleKey(spep_4+40 , 1 , 1.5 ,1.5);
setRotateKey(spep_4 ,1 ,0);
setShakeChara(spep_4+10 , 1, 40 ,15);


--SE
playSe(spep_4+3,1018);
playSe(spep_4+51,1010);--バキ

--敵の構図が変わる＆敵が飛んで行く
changeAnime(spep_4+50, 1, 108);
setMoveKey(spep_4+50, 1, 110 , 30, 0);
setMoveKey(spep_4+80, 1, 700 , 30, 0);
setScaleKey(spep_4+50 , 1 , 1.5 ,1.5);
setScaleKey(spep_4+80 , 1 , 1.5 ,1.5);
setRotateKey(spep_4+80 ,1 ,0);
setShakeChara(spep_4+50 , 1, 30 ,15);

-- ** エフェクト等 ** --
entryFade(spep_4+49, 0, 0, 3, fcolor_r, fcolor_g, fcolor_b, 180);     -- white fade

--文字エントリー
ctzudodo=entryEffectLife(spep_4,10014,46,0x100,-1,0,300);--ズドドドッ

setEffShake(spep_4,ctzudodo,90,15);
setEffMoveKey(spep_4,ctzudodo,0,300);
setEffMoveKey(spep_4+46,ctzudodo,0,300);
setEffScaleKey(spep_4,ctzudodo,1.8,1.8);
setEffScaleKey(spep_2+46,ctzudodo,1.8,1.8);
setEffAlphaKey(spep_2,ctzudodo,255);
setEffAlphaKey(spep_2+46,ctzudodo,255);
setEffRotateKey(spep_2,ctzudodo,-24);
setEffRotateKey(spep_2+46,ctzudodo,-24);

--文字エントリー
ctbaki=entryEffectLife(spep_4+51,10020,37,0x100,-1,220,250);--バキ

--setEffShake(spep_4+54,ctbaki,90,15);
setEffMoveKey(spep_4+51,ctbaki,220,250);
setEffMoveKey(spep_4+86,ctbaki,220,250);
setEffScaleKey(spep_4+51,ctbaki,1.8,1.8);
setEffScaleKey(spep_4+54,ctbaki,2,2);
setEffScaleKey(spep_4+56,ctbaki,1.8,1.8);
setEffScaleKey(spep_4+58,ctbaki,2,2);
setEffScaleKey(spep_4+60,ctbaki,1.8,1.8);
setEffScaleKey(spep_4+62,ctbaki,2,2);
setEffScaleKey(spep_4+64,ctbaki,1.8,1.8);
setEffScaleKey(spep_4+66,ctbaki,2,2);
setEffScaleKey(spep_4+68,ctbaki,1.8,1.8);
setEffScaleKey(spep_4+70,ctbaki,2,2);
setEffScaleKey(spep_4+72,ctbaki,1.8,1.8);
setEffScaleKey(spep_4+74,ctbaki,2,2);
setEffScaleKey(spep_4+76,ctbaki,1.8,1.8);
setEffScaleKey(spep_4+78,ctbaki,2,2);
setEffScaleKey(spep_4+80,ctbaki,1.8,1.8);
setEffScaleKey(spep_4+82,ctbaki,2,2);
setEffScaleKey(spep_4+84,ctbaki,1.8,1.8);
setEffScaleKey(spep_4+86,ctbaki,2,2);
setEffScaleKey(spep_4+88,ctbaki,1.8,1.8);

setEffAlphaKey(spep_4+51,ctbaki,255);
setEffAlphaKey(spep_4+88,ctbaki,255);

setEffRotateKey(spep_4+51,ctbaki,35);
setEffRotateKey(spep_4+88,ctbaki,35);

--敵キャラクターの非表示
setDisp(spep_4+72, 1, 0);


--黒背景
entryFadeBg( spep_4, 0, 88, 0, 0, 0, 0, 210);  -- 黒　背景

--集中線
shuchusen4 = entryEffectLife(spep_4, 920, 88, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey(spep_4, shuchusen4, 1.6, 1.6);
setEffRotateKey(spep_4, shuchusen4, 180);
setEffRotateKey(spep_4+88, shuchusen4, 180);

--白フェード
entryFade(spep_4+76, 10, 6,5, fcolor_r, fcolor_g, fcolor_b, 255);

--次の準備
spep_5 = spep_4+88;

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_4+30; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

--キャラクターの固定
setMoveKey(SP_dodge, 1, 317 , 30, 0);
setScaleKey(SP_dodge , 1 , 1.5 ,1.5);
setRotateKey(SP_dodge,   1, 0);

setMoveKey(SP_dodge+8, 1, 317 , 30, 0);
setScaleKey(SP_dodge+8,  1 , 1.5 ,1.5);
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
entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景
pauseAll( SP_dodge, 67);

entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge+10);

do return end
else end

--------------------------------------
--ダメージ演出
--------------------------------------
setMoveKey( spep_5-2, 1, 700,30,0);
setScaleKey( spep_5-2,    1,  1.0, 1.0);


setDisp( spep_5-1, 1, 1);
setMoveKey(  spep_5-1,    1,  100,  0,   0);
setScaleKey( spep_5-1,    1,  1.0, 1.0);
setMoveKey(  spep_5,    1,    0,   0,   128);
setScaleKey( spep_5,    1,  0.1, 0.1);
setRotateKey( spep_5,    1,  0);

changeAnime( spep_5, 1, 107);                         -- 手前ダメージ
entryEffect( spep_5+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_5+8, SE_10);

setMoveKey(  spep_5+8,   1,    0,   0,   128);
setMoveKey(  spep_5+15,   1,  -60,  -200,  -100);
setMoveKey(  spep_5+16,   1,  -60,  -200,  -100);
setDamage( spep_5+16, 1, 0);  -- ダメージ振動等
setShake(spep_5+7,6,15);
setShake(spep_5+13,15,10);

setRotateKey( spep_5,  1,  30 );
setRotateKey( spep_5+2,  1,  80 );
setRotateKey( spep_5+4,  1, 120 );
setRotateKey( spep_5+6,  1, 160 );
setRotateKey( spep_5+8,  1, 200 );
setRotateKey( spep_5+10,  1, 260 );
setRotateKey( spep_5+12,  1, 320 );
setRotateKey( spep_5+14,  1,   0 );

setShakeChara( spep_5+15, 1, 5,  10);
setShakeChara( spep_5+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep_5+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep_5+15, ct, 30, 10);
setEffRotateKey( spep_5+15, ct, -40);
setEffScaleKey( spep_5+15, ct, 4.0, 4.0);
setEffScaleKey( spep_5+16, ct, 2.0, 2.0);
setEffScaleKey( spep_5+17, ct, 2.6, 2.6);
setEffScaleKey( spep_5+18, ct, 4.0, 4.0);
setEffScaleKey( spep_5+19, ct, 2.6, 2.6);
setEffScaleKey( spep_5+20, ct, 3.8, 3.8);
setEffScaleKey( spep_5+110, ct, 3.8, 3.8);
setEffAlphaKey( spep_5+15, ct, 255);
setEffAlphaKey( spep_5+105, ct, 255);
setEffAlphaKey( spep_5+115, ct, 0);

playSe( spep_5+3, SE_11);
shuchusen = entryEffectLife( spep_5+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_5+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

shuchusenkuro = entryEffectLife( spep_5+15, 1657, 120, 0x80,  -1, 0,  0,  0);   -- 集中線


-- ダメージ表示
dealDamage(spep_5+16);
entryFade( spep_5+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_5+110);

end