--激烈界王神乱舞
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
SP_01=	152180	;--	格闘　前面
SP_02=	152181	;--	格闘　背面
SP_03=	152182	;--	吹っ飛び
SP_04=	152183	;--	溜め
SP_05=	152184	;--	発射
SP_06=	152185	;--	被弾　前面
SP_07=	152186	;--	被弾　背面

--敵側
SP_01x=	152187	;--	格闘　前面	
SP_02x=	152188	;--	格闘　背面	
SP_03x=	152189	;--	吹っ飛び	
SP_06x=	152190	;--	被弾　前面	
SP_07x=	152191	;--	被弾　背面	

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI(0, 0);

changeAnime( 0, 0, 1);                       -- 立ち
changeAnime( 0, 1, 101);                       -- 立ち
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    -5000,  -5000,  0);
setMoveKey(   1,   0,    -5000,  -5000,  0);
setMoveKey(   2,   0,    -5000,  -5000,  0);
setMoveKey(   3,   0,    -5000,  -5000,  0);
setMoveKey(   4,   0,    -5000,  -5000,  0);
setMoveKey(   5,   0,    -5000,  -5000,  0);
setMoveKey(   6,   0,    -5000,  -5000,  0);
setScaleKey(  0,  0,  1.5,  1.5);
setScaleKey(   1,   0, 1.5, 1.5);
setScaleKey(   2,   0, 1.5, 1.5);
setScaleKey(   3,   0, 1.5, 1.5);
setScaleKey(   4,   0, 1.5, 1.5);
setScaleKey(   5,   0, 1.5, 1.5);
setScaleKey(   6,   0, 1.5, 1.5);

-- 敵

setMoveKey(   0,   1,    -5000,  -5000,  0);
setMoveKey(   1,   1,    -5000,  -5000,  0);
setMoveKey(   2,   1,    -5000,  -5000,  0);
setMoveKey(   3,   1,    -5000,  -5000,  0);
setMoveKey(   4,   1,    -5000,  -5000,  0);
setMoveKey(   5,   1,    -5000,  -5000,  0);
setMoveKey(   6,   1,    -5000,  -5000,  0);
setScaleKey(   0,   1, 1.5, 1.5);
setScaleKey(   1,   1, 1.5, 1.5);
setScaleKey(   2,   1, 1.5, 1.5);
setScaleKey(   3,   1, 1.5, 1.5);
setScaleKey(   4,   1, 1.5, 1.5);
setScaleKey(   5,   1, 1.5, 1.5);
setScaleKey(   6,   1, 1.5, 1.5);

multi_frm = 2;

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then
------------------------------------------------------
-- 味方側
------------------------------------------------------
spep_0=0;

entryFade(spep_0+104,12,2,10,255,255,255,255);
entryFadeBg(spep_0+20,10,88,0,10,10,10,230);

syuugou=entryEffectLife(spep_0,SP_01,118,0x80,-1,0,0,0);

setEffMoveKey(spep_0,syuugou,0,0,0);
setEffMoveKey(spep_0+118,syuugou,0,0,0);

setEffScaleKey(spep_0,syuugou,1.0,1.0);
setEffScaleKey(spep_0+118,syuugou,1.0,1.0);

setEffAlphaKey(spep_0,syuugou,255);
setEffAlphaKey(spep_0+118,syuugou,255);

setEffRotateKey(spep_0,syuugou,0);
setEffRotateKey(spep_0+118,syuugou,0);

setEffShake(spep_0+20,syuugou,98,10);

--集中線
shuchusen0=entryEffectLife(spep_0+18,906,100,0x80,-1,0,0,0);

setEffMoveKey(spep_0+18,shuchusen0,0,0,0);
setEffMoveKey(spep_0+118,shuchusen0,0,0,0);

setEffScaleKey(spep_0+18,shuchusen0,1.4,1.4);
setEffScaleKey(spep_0+118,shuchusen0,1.4,1.4);

setEffAlphaKey(spep_0+18,shuchusen0,255);
setEffAlphaKey(spep_0+118,shuchusen0,255);

--顔カットイン
speff=entryEffect(spep_0+14,1504,0x100,-1,0,0,0);  --カットイン(顔)
setEffReplaceTexture(speff,3,2);  --カットイン差し替え
speff1=entryEffect(spep_0+14,1505,0x100,-1,0,0,0);  --カットイン(セリフ)
setEffReplaceTexture(speff1,4,5);  --セリフカットイン差し替え

--[[
--オーラ
aura=entryEffectLife(spep_0+20,1501,98,0x80,-1,0,0,0);
setEffMoveKey(spep_0+20, aura, 0,0,0);
setEffMoveKey(spep_0+118, aura, 0,0,0);

setEffScaleKey(spep_0+20, aura, 0.3,0.3);
setEffScaleKey(spep_0+30, aura, 1.0,1.0);
setEffScaleKey(spep_0+118, aura, 1.0,1.0);

--オーラ2
aura2=entryEffectLife(spep_0+52,1501,68,0x80,-1,0,0,0);
setEffMoveKey(spep_0+52, aura2, 0,0,0);
setEffMoveKey(spep_0+118, aura2, 0,0,0);

setEffScaleKey(spep_0+52, aura2, 1.0,1.0);
setEffScaleKey(spep_0+118, aura2, 1.0,1.0);
]]--

--文字エントリー
ctgogo=entryEffectLife(spep_0+24,190006,70,0x100,-1,-10,520);--ゴゴゴ
setEffMoveKey(spep_0+24,ctgogo,-10,520,0);
setEffMoveKey(spep_0+94,ctgogo,-10,520,0);
setEffScaleKey(spep_0+24, ctgogo, 0.7, 0.7);
setEffScaleKey(spep_0+94, ctgogo, 0.7, 0.7);

--SE
playSe(spep_0+14,SE_01)
playSe(spep_0+24,SE_04)

--------------------------------------
--カードカットイン
--------------------------------------
spep_1=spep_0+118;

playSe( spep_1, SE_05);
speff = entryEffect(  spep_1,   1507, 0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

shuchusen1 = entryEffectLife( spep_1, 906, 90, 0x100,  -1, 0,  0,  0);  --集中線

setEffMoveKey(  spep_1,  shuchusen1,  0,  0);
setEffScaleKey(  spep_1,  shuchusen1,  1.0,  1.0);
setEffRotateKey(  spep_1,  shuchusen1,  0);
setEffAlphaKey(  spep_1,  shuchusen1,  255);
setEffMoveKey(  spep_1+90,  shuchusen1,  0,  0);
setEffScaleKey(  spep_1+90,  shuchusen1,  1.0,  1.0);
setEffRotateKey(  spep_1+90,  shuchusen1,  0);
setEffAlphaKey(  spep_1+90,  shuchusen1,  255);

entryFade( spep_1+84, 4, 6, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- idou
------------------------------------------------------
spep_2=spep_1+94;

entryFadeBg(spep_2,0,138,0,10,10,10,255);

Tossin=entryEffectLife( spep_2, SP_02, 138, 0x100,  -1, 0,  0,  0);

setEffMoveKey(spep_2,Tossin,0,0,0);
setEffMoveKey(spep_2+138,Tossin,0,0,0);

setEffScaleKey(spep_2,Tossin,1.0,1.0);
setEffScaleKey(spep_2+138,Tossin,1.0,1.0);

setEffAlphaKey(spep_2,Tossin,255);
setEffAlphaKey(spep_2+138,Tossin,255);

setEffRotateKey(spep_2,Tossin,0);
setEffRotateKey(spep_2+138,Tossin,0);

setEffShake(spep_2,Tossin,138,10);


--流線2
ryusen2b=entryEffectLife( spep_2,  922, 138, 0x80, -1, 0, 0, 0 );
setEffMoveKey(spep_2,ryusen2b,0,0,0);
setEffMoveKey(spep_2+138,ryusen2b,0,0,0);

setEffScaleKey(spep_2,ryusen2b,1.0,1.0);
setEffScaleKey(spep_2+138,ryusen2b,1.0,1.0);

setEffAlphaKey(spep_2,ryusen2b,255);
setEffAlphaKey(spep_2+138,ryusen2b,255);

setEffRotateKey(spep_2,ryusen2b,90);
setEffRotateKey(spep_2+138,ryusen2b,90);

--SE
playSe( spep_2,44);
playSe( spep_2+40,1034); --1034 拘束音

------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2+64; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

pauseAll( SP_dodge, 67);

setDisp(SP_dodge,1,0);

setMoveKey(SP_dodge,1,0,0,0);
setScaleKey(SP_dodge,1,1.5,1.5);
setRotateKey(SP_dodge,1,0);

setMoveKey(SP_dodge+9,1,0,0,0);
setScaleKey(SP_dodge+9,1,1.5,1.5);
setRotateKey(SP_dodge+9,1,0);

setDisp(SP_dodge+9,1,0);

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
-- 回避されなかった場合
------------------------------------------------------
--流線1
ryusen2a=entryEffectLife( spep_2 + 54,  922, 24, 0x100, -1, 0, 0, 0 );

setEffMoveKey(spep_2+54,ryusen2a,0,0,0);
setEffScaleKey(spep_2+54,ryusen2a,1.0,1.0);
setEffAlphaKey(spep_2+54,ryusen2a,200);
setEffRotateKey(spep_2+54,ryusen2a,90);

setEffMoveKey(spep_2+78,ryusen2a,0,0,0);
setEffScaleKey(spep_2+78,ryusen2a,1.0,1.0);
setEffAlphaKey(spep_2+78,ryusen2a,200);
setEffRotateKey(spep_2+78,ryusen2a,90);

entryFade(spep_2+62,6,2,6,255,255,255,255);
entryFade(spep_2+126,12,2,4,255,255,255,255);

--書き文字　！？ 10001
ctpinch = entryEffectLife( spep_2-4 + 78,  10001, 34, 0x100, -1, 0, -97.1, 293.6 );
setEffMoveKey( spep_2-4 + 78, ctpinch, -97.1, 293.6 , 0 );
setEffMoveKey( spep_2-4 + 80, ctpinch, -106.2, 307 , 0 );
setEffMoveKey( spep_2-4 + 82, ctpinch, -123.4, 308.9 , 0 );
setEffMoveKey( spep_2-4 + 84, ctpinch, -122.3, 317.4 , 0 );
setEffMoveKey( spep_2-4 + 86, ctpinch, -117.6, 315.4 , 0 );
setEffMoveKey( spep_2-4 + 88, ctpinch, -115.8, 319.4 , 0 );
setEffMoveKey( spep_2-4 + 90, ctpinch, -121.8, 310.6 , 0 );
setEffMoveKey( spep_2-4 + 92, ctpinch, -121, 316.8 , 0 );
setEffMoveKey( spep_2-4 + 94, ctpinch, -117.6, 315.3 , 0 );
setEffMoveKey( spep_2-4 + 96, ctpinch, -116.1, 318.7 , 0 );
setEffMoveKey( spep_2-4 + 98, ctpinch, -121.5, 311 , 0 );
setEffMoveKey( spep_2-4 + 100, ctpinch, -121, 316.8 , 0 );
setEffMoveKey( spep_2-4 + 102, ctpinch, -117.6, 315.3 , 0 );
setEffMoveKey( spep_2-4 + 104, ctpinch, -115.7, 319.8 , 0 );
setEffMoveKey( spep_2-4 + 106, ctpinch, -123.8, 308.4 , 0 );
setEffMoveKey( spep_2-4 + 108, ctpinch, -124, 318.2 , 0 );
setEffMoveKey( spep_2-4 + 110, ctpinch, -117.5, 315.3 , 0 );

setEffScaleKey( spep_2-4 + 78, ctpinch, 0.1, 0.1 );
setEffScaleKey( spep_2-4 + 80, ctpinch, 1.55, 1.55 );
setEffScaleKey( spep_2-4 + 82, ctpinch, 3, 3 );
setEffScaleKey( spep_2-4 + 84, ctpinch, 2.8, 2.8 );
setEffScaleKey( spep_2-4 + 86, ctpinch, 2.6, 2.6 );
setEffScaleKey( spep_2-4 + 88, ctpinch, 2.4, 2.4 );
setEffScaleKey( spep_2-4 + 90, ctpinch, 2.2, 2.2 );
setEffScaleKey( spep_2-4 + 92, ctpinch, 2, 2 );
setEffScaleKey( spep_2-4 + 102, ctpinch, 2, 2 );
setEffScaleKey( spep_2-4 + 104, ctpinch, 2.6, 2.6 );
setEffScaleKey( spep_2-4 + 106, ctpinch, 3.2, 3.2 );
setEffScaleKey( spep_2-4 + 108, ctpinch, 3.8, 3.8 );
setEffScaleKey( spep_2-4 + 110, ctpinch, 4.4, 4.4 );
setEffScaleKey( spep_2-4 + 112, ctpinch, 5, 5 );

setEffRotateKey( spep_2-4 + 78, ctpinch, -21.3 );
setEffRotateKey( spep_2-4 + 80, ctpinch, -21.5 );
setEffRotateKey( spep_2-4 + 112, ctpinch, -21.5 );

setEffAlphaKey( spep_2-4 + 78, ctpinch, 255 );
setEffAlphaKey( spep_2-4 + 102, ctpinch, 255 );
setEffAlphaKey( spep_2-4 + 104, ctpinch, 204 );
setEffAlphaKey( spep_2-4 + 106, ctpinch, 153 );
setEffAlphaKey( spep_2-4 + 108, ctpinch, 102 );
setEffAlphaKey( spep_2-4 + 110, ctpinch, 51 );
setEffAlphaKey( spep_2-4 + 112, ctpinch, 0 );

--敵の動き
changeAnime( spep_2-2 +72,1,104);
changeAnime( spep_2-2 +99,1,106);
changeAnime( spep_2-2 +100,1,106);

setDisp( spep_2-2 +72,1,1);
setDisp( spep_2-2 +142,1,0);

setMoveKey( spep_2-2 + 72, 1, 733.6, -2.1 , 0 );
setMoveKey( spep_2-2 + 74, 1, 330.2, -2.1 , 0 );
setMoveKey( spep_2-2 + 76, 1, 156.7, -2.1 , 0 );
setMoveKey( spep_2-2 + 78, 1, 138.1, -2.1 , 0 );
setMoveKey( spep_2-2 + 80, 1, 119.9, -2.1 , 0 );
setMoveKey( spep_2-2 + 82, 1, 117.2, -2.1 , 0 );
setMoveKey( spep_2-2 + 84, 1, 114.3, -2.1 , 0 );
setMoveKey( spep_2-2 + 86, 1, 111.5, -2.1 , 0 );
setMoveKey( spep_2-2 + 88, 1, 108.7, -2.1 , 0 );
setMoveKey( spep_2-2 + 90, 1, 105.9, -2.1 , 0 );
setMoveKey( spep_2-2 + 92, 1, 103, -2.1 , 0 );
setMoveKey( spep_2-2 + 94, 1, 100.3, -2.1 , 0 );
setMoveKey( spep_2-2 + 96, 1, 97.4, -2.1 , 0 );
setMoveKey( spep_2-2 + 98, 1, 94.6, -2.1 , 0 );
setMoveKey( spep_2-2 + 99, 1,  83, 75.9 , 0 );
setMoveKey( spep_2-2 + 100, 1, 83, 75.9 , 0 );
setMoveKey( spep_2-2 + 102, 1, 80.8, 68 , 0 );
setMoveKey( spep_2-2 + 104, 1, 86.1, 75.5 , 0 );
setMoveKey( spep_2-2 + 106, 1, 77.8, 70.6 , 0 );
setMoveKey( spep_2-2 + 108, 1, 86.1, 76.5 , 0 );
setMoveKey( spep_2-2 + 110, 1, 77.8, 74.6 , 0 );
setMoveKey( spep_2-2 + 112, 1, 83.1, 83.5 , 0 );
setMoveKey( spep_2-2 + 114, 1, 80.8, 75.6 , 0 );
setMoveKey( spep_2-2 + 116, 1, 86.1, 83 , 0 );
setMoveKey( spep_2-2 + 118, 1, 77.8, 78.1 , 0 );
setMoveKey( spep_2-2 + 120, 1, 86.1, 84 , 0 );
setMoveKey( spep_2-2 + 122, 1, 77.8, 82.1 , 0 );
setMoveKey( spep_2-2 + 124, 1, 83.1, 91.1 , 0 );
setMoveKey( spep_2-2 + 126, 1, 80.8, 83.2 , 0 );
setMoveKey( spep_2-2 + 128, 1, 86.1, 90.6 , 0 );
setMoveKey( spep_2-2 + 130, 1, 77.8, 85.7 , 0 );
setMoveKey( spep_2-2 + 132, 1, 86.1, 91.6 , 0 );
setMoveKey( spep_2-2 + 134, 1, 77.8, 89.7 , 0 );
setMoveKey( spep_2-2 + 136, 1, 83.1, 98.6 , 0 );
setMoveKey( spep_2-2 + 138, 1, 80.8, 90.8 , 0 );
setMoveKey( spep_2-2 + 142, 1, 80.8, 90.8 , 0 );

setScaleKey( spep_2-2 + 72, 1, 1.44, 1.44 );
setScaleKey( spep_2-2 + 142, 1, 1.44, 1.44 );

setRotateKey( spep_2-2 + 72, 1, 0 );
setRotateKey( spep_2-2 + 98, 1, 0 );
setRotateKey( spep_2-2 + 99, 1, -39.9 );
setRotateKey( spep_2-2 + 100, 1, -39.9 );
setRotateKey( spep_2-2 + 142, 1, -39.9 );

setShakeChara( spep_2-2 + 100, 1, 46, 15 );

playSe( spep_2+72,1034); --1034 拘束音
playSe( spep_2+97,1034); --1034 拘束音
playSe( spep_2+122,1034); --1034 拘束音

--------------------------------------
--南と西
--------------------------------------
spep_3=spep_2+138;

entryFadeBg(spep_3,0,68,0,10,10,10,255);
entryFade(spep_3+60,6,4,6,255,255,255,255);

bress=entryEffectLife( spep_3, SP_03, 68, 0x100,  -1, 0,  0,  0);  --集中線
setEffMoveKey(spep_3,bress,0,0,0);
setEffMoveKey(spep_3+68,bress,0,0,0);

setEffScaleKey(spep_3,bress,1.0,1.0);
setEffScaleKey(spep_3+68,bress,1.0,1.0);

setEffAlphaKey(spep_3,bress,255);
setEffAlphaKey(spep_3+68,bress,255);

setEffRotateKey(spep_3,bress,0);
setEffRotateKey(spep_3+68,bress,0);

setEffShake(spep_3,bress,68,10);

-- 集中線
shuchusen3=entryEffectLife( spep_3+44, 906, 24, 0x100,  -1, 0,  0,  0);  --集中線
setEffMoveKey(spep_3+44,shuchusen3,0,0,0);
setEffMoveKey(spep_3+68,shuchusen3,0,0,0);

setEffScaleKey(spep_3+44,shuchusen3,1.4,1.4);
setEffScaleKey(spep_3+68,shuchusen3,1.4,1.4);

setEffAlphaKey(spep_3+44,shuchusen3,255);
setEffAlphaKey(spep_3+68,shuchusen3,255);

setEffRotateKey(spep_3+44,shuchusen3,0);
setEffRotateKey(spep_3+68,shuchusen3,0);

-- 流線
ryusen3 = entryEffectLife( spep_3, 921, 68, 0x80,  -1, 0,  0,  0);  --集中線
setEffMoveKey(spep_3,ryusen3,0,0,0);
setEffMoveKey(spep_3+68,ryusen3,0,0,0);

setEffScaleKey(spep_3,ryusen3,1.0,1.0);
setEffScaleKey(spep_3+68,ryusen3,1.0,1.0);

setEffAlphaKey(spep_3,ryusen3,255);
setEffAlphaKey(spep_3+68,ryusen3,255);

setEffRotateKey(spep_3,ryusen3,180);
setEffRotateKey(spep_3+68,ryusen3,180);

--SE
playSe( spep_3,SE_01);
playSe( spep_3+34,1022);
--------------------------------------
--HIT
--------------------------------------
spep_4=spep_3+68;

entryFadeBg(spep_4,0,68,0,10,10,10,255);
entryFade(spep_4+62,4,4,4,255,255,255,255);

hit4=entryEffectLife( spep_4, SP_04, 68, 0x100,  -1, 0,  0,  0);  --集中線
setEffMoveKey(spep_4,hit4,0,0,0);
setEffMoveKey(spep_4+68,hit4,0,0,0);

setEffScaleKey(spep_4,hit4,1.0,1.0);
setEffScaleKey(spep_4+68,hit4,1.0,1.0);

setEffAlphaKey(spep_4,hit4,255);
setEffAlphaKey(spep_4+68,hit4,255);

setEffRotateKey(spep_4,hit4,0);
setEffRotateKey(spep_4+68,hit4,0);

setEffShake(spep_4,hit4,68,10);

setDisp( spep_4 + 0, 1, 1 );
changeAnime( spep_4 + 0, 1, 106 );
setDisp( spep_4 + 68, 1, 0 );

setMoveKey( spep_4 + 0, 1, 34.5, 33.9 , 0 );
setMoveKey( spep_4 + 2, 1, 40.2, 33.9 , 0 );
setMoveKey( spep_4 + 4, 1, 62.8, 34.1 , 0 );
setMoveKey( spep_4 + 6, 1, 69.6, 34.1 , 0 );
setMoveKey( spep_4 + 8, 1, 91.1, 34.3 , 0 );
setMoveKey( spep_4 + 10, 1, 99.1, 34.3 , 0 );
setMoveKey( spep_4 + 12, 1, 119.3, 34.5 , 0 );
setMoveKey( spep_4 + 14, 1, 114, 34.3 , 0 );
setMoveKey( spep_4 + 16, 1, 119.6, 34.4 , 0 );
setMoveKey( spep_4 + 18, 1, 114.5, 34.3 , 0 );
setMoveKey( spep_4 + 20, 1, 120, 34.5 , 0 );
setMoveKey( spep_4 + 22, 1, 115, 34.4 , 0 );
setMoveKey( spep_4 + 24, 1, 120.5, 34.5 , 0 );
setMoveKey( spep_4 + 26, 1, 115.4, 34.4 , 0 );
setMoveKey( spep_4 + 28, 1, 120.9, 34.5 , 0 );
setMoveKey( spep_4 + 30, 1, 115.9, 34.4 , 0 );
setMoveKey( spep_4 + 32, 1, 121.2, 34.5 , 0 );
setMoveKey( spep_4 + 34, 1, 116.3, 34.4 , 0 );
setMoveKey( spep_4 + 36, 1, 121.6, 34.5 , 0 );
setMoveKey( spep_4 + 38, 1, 116.7, 34.4 , 0 );
setMoveKey( spep_4 + 40, 1, 122, 34.5 , 0 );
setMoveKey( spep_4 + 42, 1, 117.2, 34.4 , 0 );
setMoveKey( spep_4 + 44, 1, 122.5, 34.5 , 0 );
setMoveKey( spep_4 + 46, 1, 117.5, 34.4 , 0 );
setMoveKey( spep_4 + 48, 1, 122.8, 34.5 , 0 );
setMoveKey( spep_4 + 50, 1, 118.1, 34.5 , 0 );
setMoveKey( spep_4 + 52, 1, 123.2, 34.6 , 0 );
setMoveKey( spep_4 + 54, 1, 118.5, 34.5 , 0 );
setMoveKey( spep_4 + 56, 1, 123.6, 34.6 , 0 );
setMoveKey( spep_4 + 58, 1, 118.9, 34.5 , 0 );
setMoveKey( spep_4 + 60, 1, 124, 34.5 , 0 );
setMoveKey( spep_4 + 62, 1, 119.5, 34.4 , 0 );
setMoveKey( spep_4 + 64, 1, 124.4, 34.5 , 0 );
setMoveKey( spep_4 + 66, 1, 119.9, 34.5 , 0 );
setMoveKey( spep_4 + 68, 1, 124.7, 34.6 , 0 );

setScaleKey( spep_4 + 0, 1, 2.5, 2.5 );
setScaleKey( spep_4 + 2, 1, 2.33, 2.33 );
setScaleKey( spep_4 + 4, 1, 2.17, 2.17 );
setScaleKey( spep_4 + 6, 1, 2, 2 );
setScaleKey( spep_4 + 8, 1, 1.83, 1.83 );
setScaleKey( spep_4 + 10, 1, 1.67, 1.67 );
setScaleKey( spep_4 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 14, 1, 1.49, 1.49 );
setScaleKey( spep_4 + 16, 1, 1.48, 1.48 );
setScaleKey( spep_4 + 18, 1, 1.48, 1.48 );
setScaleKey( spep_4 + 20, 1, 1.47, 1.47 );
setScaleKey( spep_4 + 22, 1, 1.46, 1.46 );
setScaleKey( spep_4 + 24, 1, 1.46, 1.46 );
setScaleKey( spep_4 + 26, 1, 1.45, 1.45 );
setScaleKey( spep_4 + 28, 1, 1.44, 1.44 );
setScaleKey( spep_4 + 30, 1, 1.43, 1.43 );
setScaleKey( spep_4 + 32, 1, 1.43, 1.43 );
setScaleKey( spep_4 + 34, 1, 1.42, 1.42 );
setScaleKey( spep_4 + 36, 1, 1.41, 1.41 );
setScaleKey( spep_4 + 38, 1, 1.41, 1.41 );
setScaleKey( spep_4 + 40, 1, 1.4, 1.4 );
setScaleKey( spep_4 + 42, 1, 1.39, 1.39 );
setScaleKey( spep_4 + 44, 1, 1.39, 1.39 );
setScaleKey( spep_4 + 46, 1, 1.38, 1.38 );
setScaleKey( spep_4 + 48, 1, 1.37, 1.37 );
setScaleKey( spep_4 + 50, 1, 1.36, 1.36 );
setScaleKey( spep_4 + 52, 1, 1.36, 1.36 );
setScaleKey( spep_4 + 54, 1, 1.35, 1.35 );
setScaleKey( spep_4 + 56, 1, 1.34, 1.34 );
setScaleKey( spep_4 + 58, 1, 1.34, 1.34 );
setScaleKey( spep_4 + 60, 1, 1.33, 1.33 );
setScaleKey( spep_4 + 62, 1, 1.32, 1.32 );
setScaleKey( spep_4 + 64, 1, 1.31, 1.31 );
setScaleKey( spep_4 + 66, 1, 1.31, 1.31 );
setScaleKey( spep_4 + 68, 1, 1.3, 1.3 );

setRotateKey( spep_4 + 0, 1, -39.9 ); -- -39.9
setRotateKey( spep_4 + 68, 1, -39.9 ); -- -39.9

setShakeChara( spep_4 + 0, 1, 68, 10 );

--書き文字　ズドド 10014
ctZudodo= entryEffectLife( spep_4 ,  10014, 68, 0x100, -1, 0, 0, 526.1 ); --(22.5,326.1)
setEffMoveKey( spep_4 , ctZudodo, 22.5, 326.1 , 0 );
setEffMoveKey( spep_4+68 , ctZudodo, 22.5, 326.1 , 0 );

setEffScaleKey( spep_4, ctZudodo, 3.25, 3.25 ); --2.95
setEffScaleKey( spep_4+68, ctZudodo, 3.25, 3.25 );

setEffRotateKey( spep_4, ctZudodo, 20);
setEffRotateKey( spep_4+68, ctZudodo, 20);

setEffAlphaKey( spep_4, ctZudodo, 255 );
setEffAlphaKey( spep_4+68, ctZudodo, 255 );

setEffShake(spep_4,ctZudodo,68,20);

-- 流線
ryusen4 = entryEffectLife( spep_4, 921, 68, 0x80,  -1, 0,  0,  0);  --集中線
setEffMoveKey(spep_4,ryusen4,0,0,0);
setEffMoveKey(spep_4+68,ryusen4,0,0,0);

setEffScaleKey(spep_4,ryusen4,1.0,1.0);
setEffScaleKey(spep_4+68,ryusen4,1.0,1.0);

setEffAlphaKey(spep_4,ryusen4,255);
setEffAlphaKey(spep_4+68,ryusen4,255);

setEffRotateKey(spep_4,ryusen4,0);
setEffRotateKey(spep_4+68,ryusen4,0);

playSe( spep_4+2, 1040); --大界王神HIT
playSe( spep_4+12, 1040);
playSe( spep_4+22, 1040);
playSe( spep_4+26,1024);
--------------------------------------
--北
--------------------------------------
spep_5=spep_4+68;

entryFadeBg(spep_5,0,52,0,10,10,10,200);
entryFadeBg(spep_5+51,0,10,0,10,10,10,255);
entryFadeBg(spep_5+60,0,38,0,10,10,10,200);

entryFade(spep_5+90,7,2,5,255,255,255,255);

Bakuen=entryEffectLife( spep_5, SP_05, 68, 0x100,  -1, 0,  0,  0);  --集中線
setEffMoveKey(spep_5,Bakuen,0,0,0);
setEffMoveKey(spep_5+68,Bakuen,0,0,0);

setEffScaleKey(spep_5,Bakuen,-1.0,1.0);
setEffScaleKey(spep_5+48,Bakuen,-1.0,1.0);
setEffScaleKey(spep_5+49,Bakuen,-1.0,1.0);
setEffScaleKey(spep_5+50,Bakuen,-2.0,2.0);
setEffScaleKey(spep_5+68,Bakuen,-2.0,2.0);

setEffAlphaKey(spep_5,Bakuen,255);
setEffAlphaKey(spep_5+68,Bakuen,255);

setEffRotateKey(spep_5,Bakuen,0);
setEffRotateKey(spep_5+48,Bakuen,0);
setEffRotateKey(spep_5+49,Bakuen,0);
setEffRotateKey(spep_5+50,Bakuen,-19.3);
setEffRotateKey(spep_5+98,Bakuen,-19.3);

--集中線
shuchusen5a=entryEffectLife( spep_5, 906, 50, 0x80,  -1, 0,  0,  0);  --集中線
setEffMoveKey(spep_5,shuchusen5a,0,0,0);
setEffMoveKey(spep_5+50,shuchusen5a,0,0,0);

setEffScaleKey(spep_5,shuchusen5a,1.4,1.4);
setEffScaleKey(spep_5+50,shuchusen5a,1.4,1.4);
setEffAlphaKey(spep_5,shuchusen5a,0);
setEffAlphaKey(spep_5+27,shuchusen5a,0);
setEffAlphaKey(spep_5+28,shuchusen5a,255);
setEffAlphaKey(spep_5+50,shuchusen5a,255);

setEffRotateKey(spep_5,shuchusen5a,0);
setEffRotateKey(spep_5+50,shuchusen5a,0);

Kitano=entryEffectLife( spep_5, SP_06, 96, 0x80,  -1, 0,  0,  0);  --集中線
setEffMoveKey(spep_5,Kitano,0,0,0);
setEffMoveKey(spep_5+96,Kitano,0,0,0);

setEffScaleKey(spep_5,Kitano,1.0,1.0);
setEffScaleKey(spep_5+96,Kitano,1.0,1.0);

setEffAlphaKey(spep_5,Kitano,255);
setEffAlphaKey(spep_5+96,Kitano,255);

setEffRotateKey(spep_5,Kitano,0);
setEffRotateKey(spep_5+96,Kitano,0);

setEffShake(spep_5,Kitano,96,10);

--敵--
changeAnime(spep_5 + 60,1,107);
setDisp( spep_5 + 61,1,1);
setDisp( spep_5 + 62,1,1);
setDisp( spep_5 + 96,1,0);

setMoveKey( spep_5 + 61, 1, 47, -53.6 , 0 );
setMoveKey( spep_5 + 62, 1, 47, -53.6 , 0 );
setMoveKey( spep_5 + 64, 1, 48.3, -56.8 , 0 );
setMoveKey( spep_5 + 66, 1, 54.1, -70.2 , 0 );
setMoveKey( spep_5 + 68, 1, 59.7, -85.5 , 0 );
setMoveKey( spep_5 + 70, 1, 65.1, -99.6 , 0 );
setMoveKey( spep_5 + 72, 1, 70.3, -112.6 , 0 );
setMoveKey( spep_5 + 74, 1, 75.3, -124.7 , 0 );
setMoveKey( spep_5 + 76, 1, 80.1, -136 , 0 );
setMoveKey( spep_5 + 78, 1, 84.7, -146.7 , 0 );
setMoveKey( spep_5 + 80, 1, 89.1, -156.8 , 0 );
setMoveKey( spep_5 + 82, 1, 93.3, -166.3 , 0 );
setMoveKey( spep_5 + 84, 1, 97.3, -175.4 , 0 );
setMoveKey( spep_5 + 86, 1, 101.2, -183.9 , 0 );
setMoveKey( spep_5 + 88, 1, 104.9, -192.1 , 0 );
setMoveKey( spep_5 + 90, 1, 108.4, -199.8 , 0 );
setMoveKey( spep_5 + 92, 1, 111.8, -207.1 , 0 );
setMoveKey( spep_5 + 94, 1, 115, -214 , 0 );
setMoveKey( spep_5 + 96, 1, 118, -220.5 , 0 );
setMoveKey( spep_5 + 98, 1, 120.8, -226.5 , 0 );

setScaleKey( spep_5 + 62, 1, 0.81, 0.8 );
setScaleKey( spep_5 + 64, 1, 0.82, 0.82 );
setScaleKey( spep_5 + 66, 1, 0.9, 0.9 );
setScaleKey( spep_5 + 68, 1, 0.98, 0.99 );
setScaleKey( spep_5 + 70, 1, 1.06, 1.08 );
setScaleKey( spep_5 + 72, 1, 1.14, 1.16 );
setScaleKey( spep_5 + 74, 1, 1.2, 1.23 );
setScaleKey( spep_5 + 76, 1, 1.27, 1.29 );
setScaleKey( spep_5 + 78, 1, 1.33, 1.35 );
setScaleKey( spep_5 + 80, 1, 1.39, 1.41 );
setScaleKey( spep_5 + 82, 1, 1.45, 1.47 );
setScaleKey( spep_5 + 84, 1, 1.5, 1.52 );
setScaleKey( spep_5 + 86, 1, 1.55, 1.56 );
setScaleKey( spep_5 + 88, 1, 1.6, 1.61 );
setScaleKey( spep_5 + 90, 1, 1.64, 1.65 );
setScaleKey( spep_5 + 92, 1, 1.69, 1.69 );
setScaleKey( spep_5 + 94, 1, 1.73, 1.73 );
setScaleKey( spep_5 + 96, 1, 1.77, 1.77 );
setScaleKey( spep_5 + 98, 1, 1.8, 1.8 );

setRotateKey( spep_5 + 62, 1, 355 ); --36.7
setRotateKey( spep_5 + 98, 1, 355 );

setShakeChara( spep_5 + 62, 1, 36, 10 );

shuchusen5b=entryEffectLife( spep_5+61, 906, 35, 0x100,  -1, 0,  0,  0);  --集中線
setEffMoveKey(spep_5+61,shuchusen5b,0,0,0);
setEffMoveKey(spep_5+96,shuchusen5b,0,0,0);

setEffScaleKey(spep_5+61,shuchusen5b,1.4,1.4);
setEffScaleKey(spep_5+96,shuchusen5b,1.4,1.4);

setEffAlphaKey(spep_5+61,shuchusen5b,255);
setEffAlphaKey(spep_5+96,shuchusen5b,255);

setEffRotateKey(spep_5+61,shuchusen5b,0);
setEffRotateKey(spep_5+96,shuchusen5b,0);

--playSe( spep_5,43);
playSe( spep_5+58,1032);

--------------------------------------
--南の
--------------------------------------
spep_6=spep_5+98;

entryFadeBg(spep_6,0,98,0,10,10,10,255);
entryFade(spep_6+92,5,6,4,255,255,255,255);

Minamino=entryEffectLife( spep_6, SP_07, 98, 0x100,  -1, 0,  0,  0);  --集中線
setEffMoveKey(spep_6,Minamino,0,0,0);
setEffMoveKey(spep_6+98,Minamino,0,0,0);

setEffScaleKey(spep_6,Minamino,1.0,1.0);
setEffScaleKey(spep_6+98,Minamino,1.0,1.0);

setEffAlphaKey(spep_6,Minamino,255);
setEffAlphaKey(spep_6+98,Minamino,255);

setEffRotateKey(spep_6,Minamino,0);
setEffRotateKey(spep_6+98,Minamino,0);

setEffShake(spep_6,Minamino,98,10);

--エネミー
setDisp( spep_6 + 40, 1, 1 );
changeAnime( spep_6 + 0, 1, 107 );

setMoveKey( spep_6 + 2, 1, 120.8, 26.5 , 0 );
setMoveKey( spep_6 + 4, 1, 120.8, 26.5 , 0 );
setMoveKey( spep_6 + 6, 1, 470.2, 504.4 , 0 );
setMoveKey( spep_6 + 8, 1, 470.8, 505.5 , 0 );
setMoveKey( spep_6 + 10, 1, 471.9, 504.4 , 0 );
setMoveKey( spep_6 + 12, 1, 471.9, 505.5 , 0 );
setMoveKey( spep_6 + 14, 1, 470.2, 504.4 , 0 );
setMoveKey( spep_6 + 16, 1, 470.8, 505.5 , 0 );
setMoveKey( spep_6 + 18, 1, 471.9, 504.4 , 0 );
setMoveKey( spep_6 + 20, 1, 471.9, 505.5 , 0 );
setMoveKey( spep_6 + 22, 1, 470.2, 504.4 , 0 );
setMoveKey( spep_6 + 24, 1, 470.8, 505.5 , 0 );
setMoveKey( spep_6 + 26, 1, 471.9, 504.4 , 0 );
setMoveKey( spep_6 + 28, 1, 471.9, 505.5 , 0 );
setMoveKey( spep_6 + 30, 1, 470.2, 504.4 , 0 );
setMoveKey( spep_6 + 32, 1, 470.8, 505.5 , 0 );
setMoveKey( spep_6 + 34, 1, 471.9, 504.4 , 0 );
setMoveKey( spep_6 + 36, 1, 471.9, 505.5 , 0 );
setMoveKey( spep_6 + 38, 1, 470.2, 504.4 , 0 );
setMoveKey( spep_6 + 40, 1, 470.8, 505.5 , 0 );
setMoveKey( spep_6 + 42, 1, 471.9, 504.4 , 0 );
setMoveKey( spep_6 + 44, 1, 471.9, 505.5 , 0 );
setMoveKey( spep_6 + 46, 1, 470.2, 504.4 , 0 );
setMoveKey( spep_6 + 48, 1, 470.8, 505.5 , 0 );
setMoveKey( spep_6 + 50, 1, 471.9, 504.4 , 0 );
setMoveKey( spep_6 + 52, 1, 471.9, 505.5 , 0 );
setMoveKey( spep_6 + 54, 1, 470.2, 504.4 , 0 );
setMoveKey( spep_6 + 56, 1, 470.8, 505.5 , 0 );
setMoveKey( spep_6 + 58, 1, 471.9, 504.4 , 0 );
setMoveKey( spep_6 + 60, 1, 415, 435.1 , 0 );
setMoveKey( spep_6 + 62, 1, 355, 362.6 , 0 );
setMoveKey( spep_6 + 64, 1, 298.8, 294.3 , 0 );
setMoveKey( spep_6 + 66, 1, 244.3, 220.9 , 0 );
setMoveKey( spep_6 + 68, 1, 187.5, 153.4 , 0 );
setMoveKey( spep_6 + 70, 1, 160.3, 132.2 , 0 );
setMoveKey( spep_6 + 72, 1, 144.1, 122.2 , 0 );
setMoveKey( spep_6 + 74, 1, 132.4, 104.9 , 0 );
setMoveKey( spep_6 + 76, 1, 121.1, 102.4 , 0 );
setMoveKey( spep_6 + 78, 1, 102.2, 90.4 , 0 );
setMoveKey( spep_6 + 80, 1, 103.4, 94.9 , 0 );
setMoveKey( spep_6 + 82, 1, 107.1, 89.2 , 0 );
setMoveKey( spep_6 + 84, 1, 105.7, 93.7 , 0 );
setMoveKey( spep_6 + 86, 1, 96.6, 88 , 0 );
setMoveKey( spep_6 + 88, 1, 97.8, 92.5 , 0 );
setMoveKey( spep_6 + 90, 1, 101.5, 86.8 , 0 );
setMoveKey( spep_6 + 92, 1, 100.1, 91.3 , 0 );
setMoveKey( spep_6 + 94, 1, 91, 85.6 , 0 );
setMoveKey( spep_6 + 96, 1, 92.2, 90.1 , 0 );
setMoveKey( spep_6 + 98, 1, 95.9, 84.4 , 0 );

setScaleKey( spep_6 + 4, 1, 1.8, 1.8 );
setScaleKey( spep_6 + 40, 1, 0.1, 0.1 );
setScaleKey( spep_6 + 58, 1, 0.1, 0.1 );
setScaleKey( spep_6 + 60, 1, 0.14, 0.14 );
setScaleKey( spep_6 + 62, 1, 0.18, 0.18 );
setScaleKey( spep_6 + 64, 1, 0.22, 0.22 );
setScaleKey( spep_6 + 66, 1, 0.26, 0.26 );
setScaleKey( spep_6 + 68, 1, 0.3, 0.3 );
setScaleKey( spep_6 + 70, 1, 0.36, 0.36 );
setScaleKey( spep_6 + 72, 1, 0.39, 0.39 );
setScaleKey( spep_6 + 74, 1, 0.4, 0.4 );
setScaleKey( spep_6 + 76, 1, 0.43, 0.43 );
setScaleKey( spep_6 + 78, 1, 0.45, 0.45 );
setScaleKey( spep_6 + 98, 1, 0.45, 0.45 );

setRotateKey( spep_6 + 2, 1, 320  );
setRotateKey( spep_6 + 40, 1, 80.7 );
setRotateKey( spep_6 + 77, 1, 80.7 );
setRotateKey( spep_6 + 78, 1, 80.7 );
setRotateKey( spep_6 + 98, 1, 80.7 ); --82.7

--集中線
shuchusen6a=entryEffectLife( spep_6+14, 906, 41, 0x100,  -1, 0,  0,  0);  --集中線
setEffMoveKey(spep_6+14,shuchusen6a,0,0,0);
setEffMoveKey(spep_6+45,shuchusen6a,0,0,0);

setEffScaleKey(spep_6+14,shuchusen6a,1.4,1.4);
setEffScaleKey(spep_6+45,shuchusen6a,1.4,1.4);

setEffAlphaKey(spep_6+14,shuchusen6a,255);
setEffAlphaKey(spep_6+45,shuchusen6a,255);
setEffAlphaKey(spep_6+46,shuchusen6a,0);

setEffRotateKey(spep_6+14,shuchusen6a,0);
setEffRotateKey(spep_6+45,shuchusen6a,0);

--流線
ryusen6 = entryEffectLife( spep_6+46, 923, 31, 0x80,  -1, 0,  0,  0);  --集中線
setEffMoveKey(spep_6+46,ryusen6,0,0,0);
setEffMoveKey(spep_6+77,ryusen6,0,0,0);

setEffScaleKey(spep_6+46,ryusen6,1.2,1.2);
setEffScaleKey(spep_6+77,ryusen6,1.2,1.2);

setEffAlphaKey(spep_6+46,ryusen6,255);
setEffAlphaKey(spep_6+77,ryusen6,255);

setEffRotateKey(spep_6+46,ryusen6,40);
setEffRotateKey(spep_6+77,ryusen6,40);

--集中線
shuchusen6b=entryEffectLife( spep_6+78, 906, 20, 0x100,  -1, 0,  0,  0);  --集中線
setEffMoveKey(spep_6+78,shuchusen6b,0,0,0);
setEffMoveKey(spep_6+98,shuchusen6b,0,0,0);

setEffScaleKey(spep_6+78,shuchusen6b,1.4,1.4);
setEffScaleKey(spep_6+98,shuchusen6b,1.4,1.4);

setEffAlphaKey(spep_6+78,shuchusen6b,255);
setEffAlphaKey(spep_6+98,shuchusen6b,255);

setEffRotateKey(spep_6+78,shuchusen6b,0);
setEffRotateKey(spep_6+98,shuchusen6b,0);

--SE
playSe( spep_6+6,43);
playSe( spep_6+20,SE_01);
playSe( spep_6+74,1011);

--------------------------------------
--Last
--------------------------------------
spep_7=spep_6+100;

--敵の動き--
-- ** 次の準備 ** --
--entryFade( spep_7-5, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp( spep_7, 1, 1);
--setMoveKey(  spep_7-1,    1,  100,  0,   0);
--setScaleKey( spep_7-1,    1,  1.0, 1.0);
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
spep_0=0;

entryFade(spep_0+104,12,2,10,255,255,255,255);
entryFadeBg(spep_0+20,10,88,0,10,10,10,230);

syuugou=entryEffectLife(spep_0,SP_01x,118,0x80,-1,0,0,0);

setEffMoveKey(spep_0,syuugou,0,0,0);
setEffMoveKey(spep_0+118,syuugou,0,0,0);

setEffScaleKey(spep_0,syuugou,1.0,1.0);
setEffScaleKey(spep_0+118,syuugou,1.0,1.0);

setEffAlphaKey(spep_0,syuugou,255);
setEffAlphaKey(spep_0+118,syuugou,255);

setEffRotateKey(spep_0,syuugou,0);
setEffRotateKey(spep_0+118,syuugou,0);

setEffShake(spep_0+20,syuugou,98,10);

--集中線
shuchusen0=entryEffectLife(spep_0+18,906,100,0x80,-1,0,0,0);

setEffMoveKey(spep_0+18,shuchusen0,0,0,0);
setEffMoveKey(spep_0+118,shuchusen0,0,0,0);

setEffScaleKey(spep_0+18,shuchusen0,1.4,1.4);
setEffScaleKey(spep_0+118,shuchusen0,1.4,1.4);

setEffAlphaKey(spep_0+18,shuchusen0,255);
setEffAlphaKey(spep_0+118,shuchusen0,255);

--顔カットイン
--speff=entryEffect(spep_0+14,1504,0x100,-1,0,0,0);  --カットイン(顔)
--setEffReplaceTexture(speff,3,2);  --カットイン差し替え
--speff1=entryEffect(spep_0+14,1505,0x100,-1,0,0,0);  --カットイン(セリフ)
--setEffReplaceTexture(speff1,4,5);  --セリフカットイン差し替え

--[[
--オーラ
aura=entryEffectLife(spep_0+20,1501,98,0x80,-1,0,0,0);
setEffMoveKey(spep_0+20, aura, 0,0,0);
setEffMoveKey(spep_0+118, aura, 0,0,0);

setEffScaleKey(spep_0+20, aura, 0.3,0.3);
setEffScaleKey(spep_0+30, aura, 1.0,1.0);
setEffScaleKey(spep_0+118, aura, 1.0,1.0);

--オーラ2
aura2=entryEffectLife(spep_0+52,1501,68,0x80,-1,0,0,0);
setEffMoveKey(spep_0+52, aura2, 0,0,0);
setEffMoveKey(spep_0+118, aura2, 0,0,0);

setEffScaleKey(spep_0+52, aura2, 1.0,1.0);
setEffScaleKey(spep_0+118, aura2, 1.0,1.0);
]]--

--文字エントリー
ctgogo=entryEffectLife(spep_0+24,190006,70,0x100,-1,-10,520);--ゴゴゴ
setEffMoveKey(spep_0+24,ctgogo,-10,520,0);
setEffMoveKey(spep_0+94,ctgogo,-10,520,0);
setEffScaleKey(spep_0+24, ctgogo, -0.7, 0.7);
setEffScaleKey(spep_0+94, ctgogo, -0.7, 0.7);

--SE
playSe(spep_0+14,SE_01)
playSe(spep_0+24,SE_04)

--------------------------------------
--カードカットイン
--------------------------------------
spep_1=spep_0+118;

playSe( spep_1, SE_05);
speff = entryEffect(  spep_1,   1507, 0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

shuchusen1 = entryEffectLife( spep_1, 906, 90, 0x100,  -1, 0,  0,  0);  --集中線

setEffMoveKey(  spep_1,  shuchusen1,  0,  0);
setEffScaleKey(  spep_1,  shuchusen1,  1.0,  1.0);
setEffRotateKey(  spep_1,  shuchusen1,  0);
setEffAlphaKey(  spep_1,  shuchusen1,  255);
setEffMoveKey(  spep_1+90,  shuchusen1,  0,  0);
setEffScaleKey(  spep_1+90,  shuchusen1,  1.0,  1.0);
setEffRotateKey(  spep_1+90,  shuchusen1,  0);
setEffAlphaKey(  spep_1+90,  shuchusen1,  255);

entryFade( spep_1+84, 4, 6, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- idou
------------------------------------------------------
spep_2=spep_1+94;

entryFadeBg(spep_2,0,138,0,10,10,10,255);

Tossin=entryEffectLife( spep_2, SP_02x, 138, 0x100,  -1, 0,  0,  0);

setEffMoveKey(spep_2,Tossin,0,0,0);
setEffMoveKey(spep_2+138,Tossin,0,0,0);

setEffScaleKey(spep_2,Tossin,1.0,1.0);
setEffScaleKey(spep_2+138,Tossin,1.0,1.0);

setEffAlphaKey(spep_2,Tossin,255);
setEffAlphaKey(spep_2+138,Tossin,255);

setEffRotateKey(spep_2,Tossin,0);
setEffRotateKey(spep_2+138,Tossin,0);

setEffShake(spep_2,Tossin,138,10);

--流線2
ryusen2b=entryEffectLife( spep_2,  922, 138, 0x80, -1, 0, 0, 0 );
setEffMoveKey(spep_2,ryusen2b,0,0,0);
setEffMoveKey(spep_2+138,ryusen2b,0,0,0);

setEffScaleKey(spep_2,ryusen2b,1.0,1.0);
setEffScaleKey(spep_2+138,ryusen2b,1.0,1.0);

setEffAlphaKey(spep_2,ryusen2b,255);
setEffAlphaKey(spep_2+138,ryusen2b,255);

setEffRotateKey(spep_2,ryusen2b,90);
setEffRotateKey(spep_2+138,ryusen2b,90);

--SE
playSe( spep_2,44);
playSe( spep_2+40,1034); --1034 拘束音

------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2+64; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

pauseAll( SP_dodge, 67);

setDisp(SP_dodge,1,0);

setMoveKey(SP_dodge,1,0,0,0);
setScaleKey(SP_dodge,1,1.5,1.5);
setRotateKey(SP_dodge,1,0);

setMoveKey(SP_dodge+9,1,0,0,0);
setScaleKey(SP_dodge+9,1,1.5,1.5);
setRotateKey(SP_dodge+9,1,0);
setDisp(SP_dodge+9,1,0);

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
-- 回避されなかった場合
------------------------------------------------------
--流線1
ryusen2a=entryEffectLife( spep_2 + 54,  922, 24, 0x100, -1, 0, 0, 0 );

setEffMoveKey(spep_2+54,ryusen2a,0,0,0);
setEffScaleKey(spep_2+54,ryusen2a,1.0,1.0);
setEffAlphaKey(spep_2+54,ryusen2a,200);
setEffRotateKey(spep_2+54,ryusen2a,90);

setEffMoveKey(spep_2+78,ryusen2a,0,0,0);
setEffScaleKey(spep_2+78,ryusen2a,1.0,1.0);
setEffAlphaKey(spep_2+78,ryusen2a,200);
setEffRotateKey(spep_2+78,ryusen2a,90);

entryFade(spep_2+62,6,2,6,255,255,255,255);
entryFade(spep_2+126,12,2,4,255,255,255,255);

--書き文字　！？ 10001
ctpinch = entryEffectLife( spep_2-4 + 78,  10001, 34, 0x100, -1, 0, -97.1, 293.6 );
setEffMoveKey( spep_2-4 + 78, ctpinch, -97.1, 293.6 , 0 );
setEffMoveKey( spep_2-4 + 80, ctpinch, -106.2, 307 , 0 );
setEffMoveKey( spep_2-4 + 82, ctpinch, -123.4, 308.9 , 0 );
setEffMoveKey( spep_2-4 + 84, ctpinch, -122.3, 317.4 , 0 );
setEffMoveKey( spep_2-4 + 86, ctpinch, -117.6, 315.4 , 0 );
setEffMoveKey( spep_2-4 + 88, ctpinch, -115.8, 319.4 , 0 );
setEffMoveKey( spep_2-4 + 90, ctpinch, -121.8, 310.6 , 0 );
setEffMoveKey( spep_2-4 + 92, ctpinch, -121, 316.8 , 0 );
setEffMoveKey( spep_2-4 + 94, ctpinch, -117.6, 315.3 , 0 );
setEffMoveKey( spep_2-4 + 96, ctpinch, -116.1, 318.7 , 0 );
setEffMoveKey( spep_2-4 + 98, ctpinch, -121.5, 311 , 0 );
setEffMoveKey( spep_2-4 + 100, ctpinch, -121, 316.8 , 0 );
setEffMoveKey( spep_2-4 + 102, ctpinch, -117.6, 315.3 , 0 );
setEffMoveKey( spep_2-4 + 104, ctpinch, -115.7, 319.8 , 0 );
setEffMoveKey( spep_2-4 + 106, ctpinch, -123.8, 308.4 , 0 );
setEffMoveKey( spep_2-4 + 108, ctpinch, -124, 318.2 , 0 );
setEffMoveKey( spep_2-4 + 110, ctpinch, -117.5, 315.3 , 0 );

setEffScaleKey( spep_2-4 + 78, ctpinch, 0.1, 0.1 );
setEffScaleKey( spep_2-4 + 80, ctpinch, 1.55, 1.55 );
setEffScaleKey( spep_2-4 + 82, ctpinch, 3, 3 );
setEffScaleKey( spep_2-4 + 84, ctpinch, 2.8, 2.8 );
setEffScaleKey( spep_2-4 + 86, ctpinch, 2.6, 2.6 );
setEffScaleKey( spep_2-4 + 88, ctpinch, 2.4, 2.4 );
setEffScaleKey( spep_2-4 + 90, ctpinch, 2.2, 2.2 );
setEffScaleKey( spep_2-4 + 92, ctpinch, 2, 2 );
setEffScaleKey( spep_2-4 + 102, ctpinch, 2, 2 );
setEffScaleKey( spep_2-4 + 104, ctpinch, 2.6, 2.6 );
setEffScaleKey( spep_2-4 + 106, ctpinch, 3.2, 3.2 );
setEffScaleKey( spep_2-4 + 108, ctpinch, 3.8, 3.8 );
setEffScaleKey( spep_2-4 + 110, ctpinch, 4.4, 4.4 );
setEffScaleKey( spep_2-4 + 112, ctpinch, 5, 5 );

setEffRotateKey( spep_2-4 + 78, ctpinch, -21.3 );
setEffRotateKey( spep_2-4 + 80, ctpinch, -21.5 );
setEffRotateKey( spep_2-4 + 112, ctpinch, -21.5 );

setEffAlphaKey( spep_2-4 + 78, ctpinch, 255 );
setEffAlphaKey( spep_2-4 + 102, ctpinch, 255 );
setEffAlphaKey( spep_2-4 + 104, ctpinch, 204 );
setEffAlphaKey( spep_2-4 + 106, ctpinch, 153 );
setEffAlphaKey( spep_2-4 + 108, ctpinch, 102 );
setEffAlphaKey( spep_2-4 + 110, ctpinch, 51 );
setEffAlphaKey( spep_2-4 + 112, ctpinch, 0 );

--敵の動き
changeAnime( spep_2-2 +72,1,104);
changeAnime( spep_2-2 +99,1,106);
changeAnime( spep_2-2 +100,1,106);

setDisp( spep_2-2 +72,1,1);
setDisp( spep_2-2 +142,1,0);

setMoveKey( spep_2-2 + 72, 1, 733.6, -2.1 , 0 );
setMoveKey( spep_2-2 + 74, 1, 330.2, -2.1 , 0 );
setMoveKey( spep_2-2 + 76, 1, 156.7, -2.1 , 0 );
setMoveKey( spep_2-2 + 78, 1, 138.1, -2.1 , 0 );
setMoveKey( spep_2-2 + 80, 1, 119.9, -2.1 , 0 );
setMoveKey( spep_2-2 + 82, 1, 117.2, -2.1 , 0 );
setMoveKey( spep_2-2 + 84, 1, 114.3, -2.1 , 0 );
setMoveKey( spep_2-2 + 86, 1, 111.5, -2.1 , 0 );
setMoveKey( spep_2-2 + 88, 1, 108.7, -2.1 , 0 );
setMoveKey( spep_2-2 + 90, 1, 105.9, -2.1 , 0 );
setMoveKey( spep_2-2 + 92, 1, 103, -2.1 , 0 );
setMoveKey( spep_2-2 + 94, 1, 100.3, -2.1 , 0 );
setMoveKey( spep_2-2 + 96, 1, 97.4, -2.1 , 0 );
setMoveKey( spep_2-2 + 98, 1, 94.6, -2.1 , 0 );
setMoveKey( spep_2-2 + 99, 1,  83, 75.9 , 0 );
setMoveKey( spep_2-2 + 100, 1, 83, 75.9 , 0 );
setMoveKey( spep_2-2 + 102, 1, 80.8, 68 , 0 );
setMoveKey( spep_2-2 + 104, 1, 86.1, 75.5 , 0 );
setMoveKey( spep_2-2 + 106, 1, 77.8, 70.6 , 0 );
setMoveKey( spep_2-2 + 108, 1, 86.1, 76.5 , 0 );
setMoveKey( spep_2-2 + 110, 1, 77.8, 74.6 , 0 );
setMoveKey( spep_2-2 + 112, 1, 83.1, 83.5 , 0 );
setMoveKey( spep_2-2 + 114, 1, 80.8, 75.6 , 0 );
setMoveKey( spep_2-2 + 116, 1, 86.1, 83 , 0 );
setMoveKey( spep_2-2 + 118, 1, 77.8, 78.1 , 0 );
setMoveKey( spep_2-2 + 120, 1, 86.1, 84 , 0 );
setMoveKey( spep_2-2 + 122, 1, 77.8, 82.1 , 0 );
setMoveKey( spep_2-2 + 124, 1, 83.1, 91.1 , 0 );
setMoveKey( spep_2-2 + 126, 1, 80.8, 83.2 , 0 );
setMoveKey( spep_2-2 + 128, 1, 86.1, 90.6 , 0 );
setMoveKey( spep_2-2 + 130, 1, 77.8, 85.7 , 0 );
setMoveKey( spep_2-2 + 132, 1, 86.1, 91.6 , 0 );
setMoveKey( spep_2-2 + 134, 1, 77.8, 89.7 , 0 );
setMoveKey( spep_2-2 + 136, 1, 83.1, 98.6 , 0 );
setMoveKey( spep_2-2 + 138, 1, 80.8, 90.8 , 0 );
setMoveKey( spep_2-2 + 142, 1, 80.8, 90.8 , 0 );

setScaleKey( spep_2-2 + 72, 1, 1.44, 1.44 );
setScaleKey( spep_2-2 + 142, 1, 1.44, 1.44 );

setRotateKey( spep_2-2 + 72, 1, 0 );
setRotateKey( spep_2-2 + 98, 1, 0 );
setRotateKey( spep_2-2 + 99, 1, -39.9 );
setRotateKey( spep_2-2 + 100, 1, -39.9 );
setRotateKey( spep_2-2 + 142, 1, -39.9 );

setShakeChara( spep_2-2 + 100, 1, 46, 15 );

playSe( spep_2+72,1034); --1034 拘束音
playSe( spep_2+97,1034); --1034 拘束音
playSe( spep_2+122,1034); --1034 拘束音

--------------------------------------
--南と西
--------------------------------------
spep_3=spep_2+138;

entryFadeBg(spep_3,0,68,0,10,10,10,255);
entryFade(spep_3+60,6,4,6,255,255,255,255);

bress=entryEffectLife( spep_3, SP_03x, 68, 0x100,  -1, 0,  0,  0);  --集中線
setEffMoveKey(spep_3,bress,0,0,0);
setEffMoveKey(spep_3+68,bress,0,0,0);

setEffScaleKey(spep_3,bress,1.0,1.0);
setEffScaleKey(spep_3+68,bress,1.0,1.0);

setEffAlphaKey(spep_3,bress,255);
setEffAlphaKey(spep_3+68,bress,255);

setEffRotateKey(spep_3,bress,0);
setEffRotateKey(spep_3+68,bress,0);

setEffShake(spep_3,bress,68,10);

-- 集中線
shuchusen3=entryEffectLife( spep_3+44, 906, 24, 0x100,  -1, 0,  0,  0);  --集中線
setEffMoveKey(spep_3+44,shuchusen3,0,0,0);
setEffMoveKey(spep_3+68,shuchusen3,0,0,0);

setEffScaleKey(spep_3+44,shuchusen3,1.4,1.4);
setEffScaleKey(spep_3+68,shuchusen3,1.4,1.4);

setEffAlphaKey(spep_3+44,shuchusen3,255);
setEffAlphaKey(spep_3+68,shuchusen3,255);

setEffRotateKey(spep_3+44,shuchusen3,0);
setEffRotateKey(spep_3+68,shuchusen3,0);

-- 流線
ryusen3 = entryEffectLife( spep_3, 921, 68, 0x80,  -1, 0,  0,  0);  --集中線
setEffMoveKey(spep_3,ryusen3,0,0,0);
setEffMoveKey(spep_3+68,ryusen3,0,0,0);

setEffScaleKey(spep_3,ryusen3,1.0,1.0);
setEffScaleKey(spep_3+68,ryusen3,1.0,1.0);

setEffAlphaKey(spep_3,ryusen3,255);
setEffAlphaKey(spep_3+68,ryusen3,255);

setEffRotateKey(spep_3,ryusen3,180);
setEffRotateKey(spep_3+68,ryusen3,180);

--SE
playSe( spep_3,SE_01);
playSe( spep_3+34,1022);
--------------------------------------
--HIT
--------------------------------------
spep_4=spep_3+68;

entryFadeBg(spep_4,0,68,0,10,10,10,255);
entryFade(spep_4+62,4,4,4,255,255,255,255);

hit4=entryEffectLife( spep_4, SP_04, 68, 0x100,  -1, 0,  0,  0);  --集中線
setEffMoveKey(spep_4,hit4,0,0,0);
setEffMoveKey(spep_4+68,hit4,0,0,0);

setEffScaleKey(spep_4,hit4,1.0,1.0);
setEffScaleKey(spep_4+68,hit4,1.0,1.0);

setEffAlphaKey(spep_4,hit4,255);
setEffAlphaKey(spep_4+68,hit4,255);

setEffRotateKey(spep_4,hit4,0);
setEffRotateKey(spep_4+68,hit4,0);

setEffShake(spep_4,hit4,68,10);

setDisp( spep_4 + 0, 1, 1 );
changeAnime( spep_4 + 0, 1, 106 );
setDisp( spep_4 + 68, 1, 0 );

setMoveKey( spep_4 + 0, 1, 34.5, 33.9 , 0 );
setMoveKey( spep_4 + 2, 1, 40.2, 33.9 , 0 );
setMoveKey( spep_4 + 4, 1, 62.8, 34.1 , 0 );
setMoveKey( spep_4 + 6, 1, 69.6, 34.1 , 0 );
setMoveKey( spep_4 + 8, 1, 91.1, 34.3 , 0 );
setMoveKey( spep_4 + 10, 1, 99.1, 34.3 , 0 );
setMoveKey( spep_4 + 12, 1, 119.3, 34.5 , 0 );
setMoveKey( spep_4 + 14, 1, 114, 34.3 , 0 );
setMoveKey( spep_4 + 16, 1, 119.6, 34.4 , 0 );
setMoveKey( spep_4 + 18, 1, 114.5, 34.3 , 0 );
setMoveKey( spep_4 + 20, 1, 120, 34.5 , 0 );
setMoveKey( spep_4 + 22, 1, 115, 34.4 , 0 );
setMoveKey( spep_4 + 24, 1, 120.5, 34.5 , 0 );
setMoveKey( spep_4 + 26, 1, 115.4, 34.4 , 0 );
setMoveKey( spep_4 + 28, 1, 120.9, 34.5 , 0 );
setMoveKey( spep_4 + 30, 1, 115.9, 34.4 , 0 );
setMoveKey( spep_4 + 32, 1, 121.2, 34.5 , 0 );
setMoveKey( spep_4 + 34, 1, 116.3, 34.4 , 0 );
setMoveKey( spep_4 + 36, 1, 121.6, 34.5 , 0 );
setMoveKey( spep_4 + 38, 1, 116.7, 34.4 , 0 );
setMoveKey( spep_4 + 40, 1, 122, 34.5 , 0 );
setMoveKey( spep_4 + 42, 1, 117.2, 34.4 , 0 );
setMoveKey( spep_4 + 44, 1, 122.5, 34.5 , 0 );
setMoveKey( spep_4 + 46, 1, 117.5, 34.4 , 0 );
setMoveKey( spep_4 + 48, 1, 122.8, 34.5 , 0 );
setMoveKey( spep_4 + 50, 1, 118.1, 34.5 , 0 );
setMoveKey( spep_4 + 52, 1, 123.2, 34.6 , 0 );
setMoveKey( spep_4 + 54, 1, 118.5, 34.5 , 0 );
setMoveKey( spep_4 + 56, 1, 123.6, 34.6 , 0 );
setMoveKey( spep_4 + 58, 1, 118.9, 34.5 , 0 );
setMoveKey( spep_4 + 60, 1, 124, 34.5 , 0 );
setMoveKey( spep_4 + 62, 1, 119.5, 34.4 , 0 );
setMoveKey( spep_4 + 64, 1, 124.4, 34.5 , 0 );
setMoveKey( spep_4 + 66, 1, 119.9, 34.5 , 0 );
setMoveKey( spep_4 + 68, 1, 124.7, 34.6 , 0 );

setScaleKey( spep_4 + 0, 1, 2.5, 2.5 );
setScaleKey( spep_4 + 2, 1, 2.33, 2.33 );
setScaleKey( spep_4 + 4, 1, 2.17, 2.17 );
setScaleKey( spep_4 + 6, 1, 2, 2 );
setScaleKey( spep_4 + 8, 1, 1.83, 1.83 );
setScaleKey( spep_4 + 10, 1, 1.67, 1.67 );
setScaleKey( spep_4 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 14, 1, 1.49, 1.49 );
setScaleKey( spep_4 + 16, 1, 1.48, 1.48 );
setScaleKey( spep_4 + 18, 1, 1.48, 1.48 );
setScaleKey( spep_4 + 20, 1, 1.47, 1.47 );
setScaleKey( spep_4 + 22, 1, 1.46, 1.46 );
setScaleKey( spep_4 + 24, 1, 1.46, 1.46 );
setScaleKey( spep_4 + 26, 1, 1.45, 1.45 );
setScaleKey( spep_4 + 28, 1, 1.44, 1.44 );
setScaleKey( spep_4 + 30, 1, 1.43, 1.43 );
setScaleKey( spep_4 + 32, 1, 1.43, 1.43 );
setScaleKey( spep_4 + 34, 1, 1.42, 1.42 );
setScaleKey( spep_4 + 36, 1, 1.41, 1.41 );
setScaleKey( spep_4 + 38, 1, 1.41, 1.41 );
setScaleKey( spep_4 + 40, 1, 1.4, 1.4 );
setScaleKey( spep_4 + 42, 1, 1.39, 1.39 );
setScaleKey( spep_4 + 44, 1, 1.39, 1.39 );
setScaleKey( spep_4 + 46, 1, 1.38, 1.38 );
setScaleKey( spep_4 + 48, 1, 1.37, 1.37 );
setScaleKey( spep_4 + 50, 1, 1.36, 1.36 );
setScaleKey( spep_4 + 52, 1, 1.36, 1.36 );
setScaleKey( spep_4 + 54, 1, 1.35, 1.35 );
setScaleKey( spep_4 + 56, 1, 1.34, 1.34 );
setScaleKey( spep_4 + 58, 1, 1.34, 1.34 );
setScaleKey( spep_4 + 60, 1, 1.33, 1.33 );
setScaleKey( spep_4 + 62, 1, 1.32, 1.32 );
setScaleKey( spep_4 + 64, 1, 1.31, 1.31 );
setScaleKey( spep_4 + 66, 1, 1.31, 1.31 );
setScaleKey( spep_4 + 68, 1, 1.3, 1.3 );

setRotateKey( spep_4 + 0, 1, -39.9 ); -- -39.9
setRotateKey( spep_4 + 68, 1, -39.9 ); -- -39.9

setShakeChara( spep_4 + 0, 1, 68, 10 );

--書き文字　ズドド 10014
ctZudodo= entryEffectLife( spep_4 ,  10014, 68, 0x100, -1, 0, 0, 526.1 ); --(22.5,326.1)
setEffMoveKey( spep_4 , ctZudodo, 22.5, 326.1 , 0 );
setEffMoveKey( spep_4+68 , ctZudodo, 22.5, 326.1 , 0 );

setEffScaleKey( spep_4, ctZudodo, 3.25, 3.25 ); --2.95
setEffScaleKey( spep_4+68, ctZudodo, 3.25, 3.25 );

setEffRotateKey( spep_4, ctZudodo, -50);
setEffRotateKey( spep_4+68, ctZudodo, -50);

setEffAlphaKey( spep_4, ctZudodo, 255 );
setEffAlphaKey( spep_4+68, ctZudodo, 255 );

setEffShake(spep_4,ctZudodo,68,20);

-- 流線
ryusen4 = entryEffectLife( spep_4, 921, 68, 0x80,  -1, 0,  0,  0);  --集中線
setEffMoveKey(spep_4,ryusen4,0,0,0);
setEffMoveKey(spep_4+68,ryusen4,0,0,0);

setEffScaleKey(spep_4,ryusen4,1.0,1.0);
setEffScaleKey(spep_4+68,ryusen4,1.0,1.0);

setEffAlphaKey(spep_4,ryusen4,255);
setEffAlphaKey(spep_4+68,ryusen4,255);

setEffRotateKey(spep_4,ryusen4,0);
setEffRotateKey(spep_4+68,ryusen4,0);

playSe( spep_4+2, 1040); --大界王神HIT
playSe( spep_4+12, 1040);
playSe( spep_4+22, 1040);
playSe( spep_4+26,1024);
--------------------------------------
--北
--------------------------------------
spep_5=spep_4+68;

entryFadeBg(spep_5,0,52,0,10,10,10,200);
entryFadeBg(spep_5+51,0,10,0,10,10,10,255);
entryFadeBg(spep_5+60,0,38,0,10,10,10,200);

entryFade(spep_5+90,7,2,5,255,255,255,255);

Bakuen=entryEffectLife( spep_5, SP_05, 68, 0x100,  -1, 0,  0,  0);  --集中線
setEffMoveKey(spep_5,Bakuen,0,0,0);
setEffMoveKey(spep_5+68,Bakuen,0,0,0);

setEffScaleKey(spep_5,Bakuen,-1.0,1.0);
setEffScaleKey(spep_5+48,Bakuen,-1.0,1.0);
setEffScaleKey(spep_5+49,Bakuen,-1.0,1.0);
setEffScaleKey(spep_5+50,Bakuen,-2.0,2.0);
setEffScaleKey(spep_5+68,Bakuen,-2.0,2.0);

setEffAlphaKey(spep_5,Bakuen,255);
setEffAlphaKey(spep_5+68,Bakuen,255);

setEffRotateKey(spep_5,Bakuen,0);
setEffRotateKey(spep_5+48,Bakuen,0);
setEffRotateKey(spep_5+49,Bakuen,0);
setEffRotateKey(spep_5+50,Bakuen,-19.3);
setEffRotateKey(spep_5+98,Bakuen,-19.3);

--集中線
shuchusen5a=entryEffectLife( spep_5, 906, 50, 0x80,  -1, 0,  0,  0);  --集中線
setEffMoveKey(spep_5,shuchusen5a,0,0,0);
setEffMoveKey(spep_5+50,shuchusen5a,0,0,0);

setEffScaleKey(spep_5,shuchusen5a,1.4,1.4);
setEffScaleKey(spep_5+50,shuchusen5a,1.4,1.4);
setEffAlphaKey(spep_5,shuchusen5a,0);
setEffAlphaKey(spep_5+27,shuchusen5a,0);
setEffAlphaKey(spep_5+28,shuchusen5a,255);
setEffAlphaKey(spep_5+50,shuchusen5a,255);

setEffRotateKey(spep_5,shuchusen5a,0);
setEffRotateKey(spep_5+50,shuchusen5a,0);

Kitano=entryEffectLife( spep_5, SP_06x, 96, 0x80,  -1, 0,  0,  0);  --集中線
setEffMoveKey(spep_5,Kitano,0,0,0);
setEffMoveKey(spep_5+96,Kitano,0,0,0);

setEffScaleKey(spep_5,Kitano,1.0,1.0);
setEffScaleKey(spep_5+96,Kitano,1.0,1.0);

setEffAlphaKey(spep_5,Kitano,0);
setEffAlphaKey(spep_5+51,Kitano,0);
setEffAlphaKey(spep_5+52,Kitano,255);
setEffAlphaKey(spep_5+96,Kitano,255);

setEffRotateKey(spep_5,Kitano,0);
setEffRotateKey(spep_5+96,Kitano,0);

setEffShake(spep_5,Kitano,96,10);

Kitano2=entryEffectLife( spep_5, SP_06, 96, 0x80,  -1, 0,  0,  0);  --集中線
setEffMoveKey(spep_5,Kitano2,0,0,0);
setEffMoveKey(spep_5+96,Kitano2,0,0,0);

setEffScaleKey(spep_5,Kitano2,-1.0,1.0);
setEffScaleKey(spep_5+96,Kitano2,-1.0,1.0);

setEffAlphaKey(spep_5,Kitano2,255);
setEffAlphaKey(spep_5+51,Kitano2,255);
setEffAlphaKey(spep_5+52,Kitano2,0);

setEffRotateKey(spep_5,Kitano2,0);
setEffRotateKey(spep_5+96,Kitano2,0);

setEffShake(spep_5,Kitano2,96,10);


--敵--
changeAnime(spep_5 + 60,1,107);
setDisp( spep_5 + 61,1,1);
setDisp( spep_5 + 62,1,1);
setDisp( spep_5 + 96,1,0);

setMoveKey( spep_5 + 61, 1, 47, -53.6 , 0 );
setMoveKey( spep_5 + 62, 1, 47, -53.6 , 0 );
setMoveKey( spep_5 + 64, 1, 48.3, -56.8 , 0 );
setMoveKey( spep_5 + 66, 1, 54.1, -70.2 , 0 );
setMoveKey( spep_5 + 68, 1, 59.7, -85.5 , 0 );
setMoveKey( spep_5 + 70, 1, 65.1, -99.6 , 0 );
setMoveKey( spep_5 + 72, 1, 70.3, -112.6 , 0 );
setMoveKey( spep_5 + 74, 1, 75.3, -124.7 , 0 );
setMoveKey( spep_5 + 76, 1, 80.1, -136 , 0 );
setMoveKey( spep_5 + 78, 1, 84.7, -146.7 , 0 );
setMoveKey( spep_5 + 80, 1, 89.1, -156.8 , 0 );
setMoveKey( spep_5 + 82, 1, 93.3, -166.3 , 0 );
setMoveKey( spep_5 + 84, 1, 97.3, -175.4 , 0 );
setMoveKey( spep_5 + 86, 1, 101.2, -183.9 , 0 );
setMoveKey( spep_5 + 88, 1, 104.9, -192.1 , 0 );
setMoveKey( spep_5 + 90, 1, 108.4, -199.8 , 0 );
setMoveKey( spep_5 + 92, 1, 111.8, -207.1 , 0 );
setMoveKey( spep_5 + 94, 1, 115, -214 , 0 );
setMoveKey( spep_5 + 96, 1, 118, -220.5 , 0 );
setMoveKey( spep_5 + 98, 1, 120.8, -226.5 , 0 );

setScaleKey( spep_5 + 62, 1, 0.81, 0.8 );
setScaleKey( spep_5 + 64, 1, 0.82, 0.82 );
setScaleKey( spep_5 + 66, 1, 0.9, 0.9 );
setScaleKey( spep_5 + 68, 1, 0.98, 0.99 );
setScaleKey( spep_5 + 70, 1, 1.06, 1.08 );
setScaleKey( spep_5 + 72, 1, 1.14, 1.16 );
setScaleKey( spep_5 + 74, 1, 1.2, 1.23 );
setScaleKey( spep_5 + 76, 1, 1.27, 1.29 );
setScaleKey( spep_5 + 78, 1, 1.33, 1.35 );
setScaleKey( spep_5 + 80, 1, 1.39, 1.41 );
setScaleKey( spep_5 + 82, 1, 1.45, 1.47 );
setScaleKey( spep_5 + 84, 1, 1.5, 1.52 );
setScaleKey( spep_5 + 86, 1, 1.55, 1.56 );
setScaleKey( spep_5 + 88, 1, 1.6, 1.61 );
setScaleKey( spep_5 + 90, 1, 1.64, 1.65 );
setScaleKey( spep_5 + 92, 1, 1.69, 1.69 );
setScaleKey( spep_5 + 94, 1, 1.73, 1.73 );
setScaleKey( spep_5 + 96, 1, 1.77, 1.77 );
setScaleKey( spep_5 + 98, 1, 1.8, 1.8 );

setRotateKey( spep_5 + 62, 1, 355 ); --36.7
setRotateKey( spep_5 + 98, 1, 355 );

setShakeChara( spep_5 + 62, 1, 36, 10 );

shuchusen5b=entryEffectLife( spep_5+61, 906, 35, 0x100,  -1, 0,  0,  0);  --集中線
setEffMoveKey(spep_5+61,shuchusen5b,0,0,0);
setEffMoveKey(spep_5+96,shuchusen5b,0,0,0);

setEffScaleKey(spep_5+61,shuchusen5b,1.4,1.4);
setEffScaleKey(spep_5+96,shuchusen5b,1.4,1.4);

setEffAlphaKey(spep_5+61,shuchusen5b,255);
setEffAlphaKey(spep_5+96,shuchusen5b,255);

setEffRotateKey(spep_5+61,shuchusen5b,0);
setEffRotateKey(spep_5+96,shuchusen5b,0);

--playSe( spep_5,43);
playSe( spep_5+58,1032);

--------------------------------------
--南の
--------------------------------------
spep_6=spep_5+98;

entryFadeBg(spep_6,0,98,0,10,10,10,255);
entryFade(spep_6+92,5,6,4,255,255,255,255);

Minamino=entryEffectLife( spep_6, SP_07x, 98, 0x100,  -1, 0,  0,  0);  --集中線
setEffMoveKey(spep_6,Minamino,0,0,0);
setEffMoveKey(spep_6+98,Minamino,0,0,0);

setEffScaleKey(spep_6,Minamino,1.0,1.0);
setEffScaleKey(spep_6+98,Minamino,1.0,1.0);

setEffAlphaKey(spep_6,Minamino,255);
setEffAlphaKey(spep_6+98,Minamino,255);

setEffRotateKey(spep_6,Minamino,0);
setEffRotateKey(spep_6+98,Minamino,0);

setEffShake(spep_6,Minamino,98,10);

--エネミー
setDisp( spep_6 + 40, 1, 1 );
changeAnime( spep_6 + 0, 1, 107 );

setMoveKey( spep_6 + 2, 1, 120.8, 26.5 , 0 );
setMoveKey( spep_6 + 4, 1, 120.8, 26.5 , 0 );
setMoveKey( spep_6 + 6, 1, 470.2, 504.4 , 0 );
setMoveKey( spep_6 + 8, 1, 470.8, 505.5 , 0 );
setMoveKey( spep_6 + 10, 1, 471.9, 504.4 , 0 );
setMoveKey( spep_6 + 12, 1, 471.9, 505.5 , 0 );
setMoveKey( spep_6 + 14, 1, 470.2, 504.4 , 0 );
setMoveKey( spep_6 + 16, 1, 470.8, 505.5 , 0 );
setMoveKey( spep_6 + 18, 1, 471.9, 504.4 , 0 );
setMoveKey( spep_6 + 20, 1, 471.9, 505.5 , 0 );
setMoveKey( spep_6 + 22, 1, 470.2, 504.4 , 0 );
setMoveKey( spep_6 + 24, 1, 470.8, 505.5 , 0 );
setMoveKey( spep_6 + 26, 1, 471.9, 504.4 , 0 );
setMoveKey( spep_6 + 28, 1, 471.9, 505.5 , 0 );
setMoveKey( spep_6 + 30, 1, 470.2, 504.4 , 0 );
setMoveKey( spep_6 + 32, 1, 470.8, 505.5 , 0 );
setMoveKey( spep_6 + 34, 1, 471.9, 504.4 , 0 );
setMoveKey( spep_6 + 36, 1, 471.9, 505.5 , 0 );
setMoveKey( spep_6 + 38, 1, 470.2, 504.4 , 0 );
setMoveKey( spep_6 + 40, 1, 470.8, 505.5 , 0 );
setMoveKey( spep_6 + 42, 1, 471.9, 504.4 , 0 );
setMoveKey( spep_6 + 44, 1, 471.9, 505.5 , 0 );
setMoveKey( spep_6 + 46, 1, 470.2, 504.4 , 0 );
setMoveKey( spep_6 + 48, 1, 470.8, 505.5 , 0 );
setMoveKey( spep_6 + 50, 1, 471.9, 504.4 , 0 );
setMoveKey( spep_6 + 52, 1, 471.9, 505.5 , 0 );
setMoveKey( spep_6 + 54, 1, 470.2, 504.4 , 0 );
setMoveKey( spep_6 + 56, 1, 470.8, 505.5 , 0 );
setMoveKey( spep_6 + 58, 1, 471.9, 504.4 , 0 );
setMoveKey( spep_6 + 60, 1, 415, 435.1 , 0 );
setMoveKey( spep_6 + 62, 1, 355, 362.6 , 0 );
setMoveKey( spep_6 + 64, 1, 298.8, 294.3 , 0 );
setMoveKey( spep_6 + 66, 1, 244.3, 220.9 , 0 );
setMoveKey( spep_6 + 68, 1, 187.5, 153.4 , 0 );
setMoveKey( spep_6 + 70, 1, 160.3, 132.2 , 0 );
setMoveKey( spep_6 + 72, 1, 144.1, 122.2 , 0 );
setMoveKey( spep_6 + 74, 1, 132.4, 104.9 , 0 );
setMoveKey( spep_6 + 76, 1, 121.1, 102.4 , 0 );
setMoveKey( spep_6 + 78, 1, 102.2, 90.4 , 0 );
setMoveKey( spep_6 + 80, 1, 103.4, 94.9 , 0 );
setMoveKey( spep_6 + 82, 1, 107.1, 89.2 , 0 );
setMoveKey( spep_6 + 84, 1, 105.7, 93.7 , 0 );
setMoveKey( spep_6 + 86, 1, 96.6, 88 , 0 );
setMoveKey( spep_6 + 88, 1, 97.8, 92.5 , 0 );
setMoveKey( spep_6 + 90, 1, 101.5, 86.8 , 0 );
setMoveKey( spep_6 + 92, 1, 100.1, 91.3 , 0 );
setMoveKey( spep_6 + 94, 1, 91, 85.6 , 0 );
setMoveKey( spep_6 + 96, 1, 92.2, 90.1 , 0 );
setMoveKey( spep_6 + 98, 1, 95.9, 84.4 , 0 );

setScaleKey( spep_6 + 4, 1, 1.8, 1.8 );
setScaleKey( spep_6 + 40, 1, 0.1, 0.1 );
setScaleKey( spep_6 + 58, 1, 0.1, 0.1 );
setScaleKey( spep_6 + 60, 1, 0.14, 0.14 );
setScaleKey( spep_6 + 62, 1, 0.18, 0.18 );
setScaleKey( spep_6 + 64, 1, 0.22, 0.22 );
setScaleKey( spep_6 + 66, 1, 0.26, 0.26 );
setScaleKey( spep_6 + 68, 1, 0.3, 0.3 );
setScaleKey( spep_6 + 70, 1, 0.36, 0.36 );
setScaleKey( spep_6 + 72, 1, 0.39, 0.39 );
setScaleKey( spep_6 + 74, 1, 0.4, 0.4 );
setScaleKey( spep_6 + 76, 1, 0.43, 0.43 );
setScaleKey( spep_6 + 78, 1, 0.45, 0.45 );
setScaleKey( spep_6 + 98, 1, 0.45, 0.45 );

setRotateKey( spep_6 + 2, 1, 320  );
setRotateKey( spep_6 + 40, 1, 80.7 );
setRotateKey( spep_6 + 77, 1, 80.7 );
setRotateKey( spep_6 + 78, 1, 80.7 );
setRotateKey( spep_6 + 98, 1, 80.7 ); --82.7

--集中線
shuchusen6a=entryEffectLife( spep_6+14, 906, 41, 0x100,  -1, 0,  0,  0);  --集中線
setEffMoveKey(spep_6+14,shuchusen6a,0,0,0);
setEffMoveKey(spep_6+45,shuchusen6a,0,0,0);

setEffScaleKey(spep_6+14,shuchusen6a,1.4,1.4);
setEffScaleKey(spep_6+45,shuchusen6a,1.4,1.4);

setEffAlphaKey(spep_6+14,shuchusen6a,255);
setEffAlphaKey(spep_6+45,shuchusen6a,255);
setEffAlphaKey(spep_6+46,shuchusen6a,0);

setEffRotateKey(spep_6+14,shuchusen6a,0);
setEffRotateKey(spep_6+45,shuchusen6a,0);

--流線
ryusen6 = entryEffectLife( spep_6+46, 923, 31, 0x80,  -1, 0,  0,  0);  --集中線
setEffMoveKey(spep_6+46,ryusen6,0,0,0);
setEffMoveKey(spep_6+77,ryusen6,0,0,0);

setEffScaleKey(spep_6+46,ryusen6,1.2,1.2);
setEffScaleKey(spep_6+77,ryusen6,1.2,1.2);

setEffAlphaKey(spep_6+46,ryusen6,255);
setEffAlphaKey(spep_6+77,ryusen6,255);

setEffRotateKey(spep_6+46,ryusen6,40);
setEffRotateKey(spep_6+77,ryusen6,40);

--集中線
shuchusen6b=entryEffectLife( spep_6+78, 906, 20, 0x100,  -1, 0,  0,  0);  --集中線
setEffMoveKey(spep_6+78,shuchusen6b,0,0,0);
setEffMoveKey(spep_6+98,shuchusen6b,0,0,0);

setEffScaleKey(spep_6+78,shuchusen6b,1.4,1.4);
setEffScaleKey(spep_6+98,shuchusen6b,1.4,1.4);

setEffAlphaKey(spep_6+78,shuchusen6b,255);
setEffAlphaKey(spep_6+98,shuchusen6b,255);

setEffRotateKey(spep_6+78,shuchusen6b,0);
setEffRotateKey(spep_6+98,shuchusen6b,0);

--SE
playSe( spep_6+6,43);
playSe( spep_6+20,SE_01);
playSe( spep_6+74,1011);

--------------------------------------
--Last
--------------------------------------
spep_7=spep_6+100;

--敵の動き--
-- ** 次の準備 ** --
--entryFade( spep_7-5, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp( spep_7, 1, 1);
--setMoveKey(  spep_7-1,    1,  100,  0,   0);
--setScaleKey( spep_7-1,    1,  1.0, 1.0);
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
