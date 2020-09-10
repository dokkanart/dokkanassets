--1015590 悟飯&ビーデル_悪いヤツはゆるさない！！
--sp_effect_b4_00076

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
--SE_08 = 1042; --カットイン
SE_09 = 1023; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音

SE_12 = 09;

--味方
SP_01=	152452	;--	手前突進
SP_02=	152453	;--	格闘
SP_03=	152455	;--	見合わせる二人

--敵
SP_01x=	152452	;--	手前突進	
SP_02x=	152454	;--	格闘	(敵)
SP_03x=	152455	;--	見合わせる二人	
------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

setDisp( 0, 1, 0);
setMoveKey(   0,   1,    0, -2000, 0);
setMoveKey(   1,   1,    0, -2000 , 0);
setMoveKey(   2,   1,    0, -2000 , 0);
setMoveKey(   3,   1,    0, -2000 , 0);
setMoveKey(   4,   1,    0, -2000 , 0);
setMoveKey(   5,   1,    0, -2000 , 0);
setMoveKey(   6,   1,    0, -2000 , 0);

setScaleKey(   0,   1, 1.6, 1.6);
setScaleKey(   1,   1, 1.6, 1.6);
setScaleKey(   2,   1, 1.6, 1.6);
setScaleKey(   3,   1, 1.6, 1.6);
setScaleKey(   4,   1, 1.6, 1.6);
setScaleKey(   5,   1, 1.6, 1.6);
setScaleKey(   6,   1, 1.6, 1.6);

setRotateKey(   0,   1, 0);
setRotateKey(   1,   1, 0);
setRotateKey(   2,   1, 0);
setRotateKey(   3,   1, 0);
setRotateKey(   4,   1, 0);
setRotateKey(   5,   1, 0);
setRotateKey(   6,   1, 0);

setDisp( 0, 0, 0);
setMoveKey(   0,   0,    0, -2000, 0);
setMoveKey(   1,   0,    0, -2000 , 0);
setMoveKey(   2,   0,    0, -2000 , 0);
setMoveKey(   3,   0,    0, -2000 , 0);
setMoveKey(   4,   0,    0, -2000 , 0);
setMoveKey(   5,   0,    0, -2000 , 0);
setMoveKey(   6,   0,    0, -2000 , 0);

setScaleKey(   0,   0, 1.6, 1.6);
setScaleKey(   1,   0, 1.6, 1.6);
setScaleKey(   2,   0, 1.6, 1.6);
setScaleKey(   3,   0, 1.6, 1.6);
setScaleKey(   4,   0, 1.6, 1.6);
setScaleKey(   5,   0, 1.6, 1.6);
setScaleKey(   6,   0, 1.6, 1.6);

setRotateKey(   0,   0, 0);
setRotateKey(   1,   0, 0);
setRotateKey(   2,   0, 0);
setRotateKey(   3,   0, 0);
setRotateKey(   4,   0, 0);
setRotateKey(   5,   0, 0);
setRotateKey(   6,   0, 0);

multi_frm = 2;

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
--突進
------------------------------------------------------

spep_0=0;
--エフェクト
rush=entryEffectLife(spep_0,SP_01,168,0x100,-1,0,0,0);
setEffMoveKey( spep_0 + 0, rush, 0, 0 , 0 );
setEffMoveKey( spep_0 + 168, rush, 0, 0 , 0 );

setEffScaleKey(spep_0,rush,1.0,1.0);
setEffScaleKey(spep_0+168,rush,1.0,1.0);

setEffRotateKey(spep_0,rush,0);
setEffRotateKey(spep_0+168,rush,0);

setEffAlphaKey(spep_0,rush,255);
setEffAlphaKey(spep_0+168,rush,255);


--集中線
shuchusen1 = entryEffectLife( spep_0 + 0,  906, 168, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 168, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchusen1, 1.13, 1.61 );
setEffScaleKey( spep_0 + 168, shuchusen1, 1.13, 1.61 );

setEffRotateKey( spep_0 + 0, shuchusen1, 180 );
setEffRotateKey( spep_0 + 168, shuchusen1, 180 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 168, shuchusen1, 255 );

--SE
playSe( spep_0+36, 3);--キラーん

--黒背景
entryFadeBg(spep_0, 0, 168, 0, 0, 0, 0, 200);  -- 黒　背
--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

SP_dodge = spep_0+76 ; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

pauseAll( SP_dodge, 67);
--[[
--キャラクターの固定
setMoveKey(SP_dodge, 1,297.9, -17.4 , 0 );
setScaleKey(SP_dodge , 1, 1.1, 1.1);
setRotateKey(SP_dodge,   1, 0 );

--キャラクターの固定
setMoveKey(SP_dodge+8, 1,297.9, -17.4 , 0 );
setScaleKey(SP_dodge+8 , 1, 1.1, 1.1);
setRotateKey(SP_dodge+8,   1, 0 );
]]

setDisp(SP_dodge+9, 0, 0);
--setDisp(SP_dodge+9, 1, 0);
--setMoveKey(SP_dodge+9, 1, 0 , 0, 0);
--setScaleKey(SP_dodge+9,1,0.9,0.9);
--setRotateKey(SP_dodge+9,   1, 0);

--setMoveKey(SP_dodge+10, 1, 0 , 0, 0);
--setScaleKey(SP_dodge+10,  1 , 0.9, 0.9);
--setRotateKey(SP_dodge+10,   1, 0);


--悟飯を画面外に表示
--setMoveKey(SP_dodge+8, 0, 0 , -54,   0);
setMoveKey(SP_dodge+9, 1, 1000 , 1000, 0);
setMoveKey(SP_dodge+10, 1, 1000 , 1000, 0);


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

--顔カットイン
speff=entryEffect(spep_0+76,1504,0x100,-1,0,0,0);  --カットイン(顔)
setEffReplaceTexture(speff,3,2);  --カットイン差し替え
speff1=entryEffect(spep_0+76,1505,0x100,-1,0,0,0);  --カットイン(セリフ)
setEffReplaceTexture(speff1,4,5);  --セリフカットイン差し替え

--ゴゴゴ
ctgogo=entryEffectLife(spep_0+88,190006,70,0x100,-1,110,520);--ゴゴゴ

setEffMoveKey(spep_0+88,ctgogo,110,520,0);
setEffMoveKey(spep_0+158,ctgogo,110,520,0);

setEffScaleKey(spep_0+88, ctgogo, 0.7, 0.7);
setEffScaleKey(spep_0+158, ctgogo, 0.7, 0.7);

setEffAlphaKey( spep_0 + 88, ctgogo, 0 );
setEffAlphaKey( spep_0 + 89, ctgogo, 255 );
setEffAlphaKey( spep_0 + 90, ctgogo, 255 );
setEffAlphaKey( spep_0 + 158, ctgogo, 255 );

setEffRotateKey(spep_0+88,ctgogo,0);
setEffRotateKey(spep_0+158,ctgogo,0);

--SE
playSe( spep_0 + 88, SE_04);--ごごご

-- ** エフェクト等 ** --
entryFade(spep_0, 0, 0, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_0+158, 4, 8, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_1=spep_0+168;


--------------------------------------
--カードカットイン(90F)
--------------------------------------

playSe(spep_1,SE_05);
shuchusen=entryEffectLife(spep_1,906,90,0x100,-1,0,0,0);   -- 集中線
setEffScaleKey(spep_1,shuchusen,1.6,1.6);

speff2=entryEffect(spep_1,1507,0x80,-1,0,0,0);   -- カード
setEffReplaceTexture(speff2,1,1);
setEffReplaceTexture(speff2,2,0);-- カード差し替え
setEffReplaceTexture(speff2,5,4);-- 技名テクスチャ差し替え

-- ** エフェクト等 ** --
entryFade(spep_1+85,3,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_2=spep_1+90;

------------------------------------------------------
--暴行
------------------------------------------------------
--エフェクト
ssault=entryEffectLife(spep_2,SP_02,320,0x100,-1,0,0,0);
setEffMoveKey( spep_2 + 0, ssault, 0, 0 , 0 );
setEffMoveKey( spep_2 + 320, ssault, 0, 0 , 0 );

setEffScaleKey(spep_2,ssault,1.0,1.0);
setEffScaleKey(spep_2+320,ssault,1.0,1.0);

setEffRotateKey(spep_2,ssault,0);
setEffRotateKey(spep_2+320,ssault,0);

setEffAlphaKey(spep_2,ssault,255);
setEffAlphaKey(spep_2+320,ssault,255);

--集中線
shuchusen2 = entryEffectLife( spep_2 + 0,  906, 320, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_2 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 320, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen2, 1.41, 2 );
setEffScaleKey( spep_2 + 320, shuchusen2, 1.41, 2 );

setEffRotateKey( spep_2 + 0, shuchusen2, 180 );
setEffRotateKey( spep_2 + 320, shuchusen2, 180 );

setEffAlphaKey( spep_2 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 320, shuchusen2, 255 );



--文字エントリー
ctbaki = entryEffectLife( spep_2 + 24,  10020, 26, 0x100, -1, 0, -44.9, 243.5 );--バキッ

setEffMoveKey( spep_2 + 24, ctbaki, -44.9, 243.5 , 0 );
setEffMoveKey( spep_2 + 30, ctbaki, -15.5, 267 , 0 );
setEffMoveKey( spep_2 + 32, ctbaki, 7.2, 246.4 , 0 );
setEffMoveKey( spep_2 + 34, ctbaki, 3.6, 277.4 , 0 );
setEffMoveKey( spep_2 + 36, ctbaki, -8.8, 273 , 0 );
setEffMoveKey( spep_2 + 38, ctbaki, -22.8, 272.1 , 0 );
setEffMoveKey( spep_2 + 40, ctbaki, -14.5, 251.7 , 0 );
setEffMoveKey( spep_2 + 42, ctbaki, -13.8, 252.3 , 0 );
setEffMoveKey( spep_2 + 44, ctbaki, -13, 252.8 , 0 );
setEffMoveKey( spep_2 + 46, ctbaki, -12.3, 253.4 , 0 );
setEffMoveKey( spep_2 + 48, ctbaki, -11.6, 254 , 0 );
setEffMoveKey( spep_2 + 50, ctbaki, -10.9, 254.5 , 0 );

setEffScaleKey( spep_2 + 24, ctbaki, 0.5, 0.5 );
setEffScaleKey( spep_2 + 30, ctbaki, 1.35, 1.35 );
setEffScaleKey( spep_2 + 32, ctbaki, 1.7, 1.7 );
setEffScaleKey( spep_2 + 34, ctbaki, 1.65, 1.65 );
setEffScaleKey( spep_2 + 36, ctbaki, 1.5, 1.5 );
setEffScaleKey( spep_2 + 38, ctbaki, 1.4, 1.4 );
setEffScaleKey( spep_2 + 40, ctbaki, 1.3, 1.3 );
setEffScaleKey( spep_2 + 42, ctbaki, 1.18, 1.18 );
setEffScaleKey( spep_2 + 44, ctbaki, 1.06, 1.06 );
setEffScaleKey( spep_2 + 46, ctbaki, 0.94, 0.94 );
setEffScaleKey( spep_2 + 48, ctbaki, 0.82, 0.82 );
setEffScaleKey( spep_2 + 50, ctbaki, 0.7, 0.7 );

setEffRotateKey( spep_2 + 24, ctbaki, 34.4 );
setEffRotateKey( spep_2 + 30, ctbaki, 21 );
setEffRotateKey( spep_2 + 32, ctbaki, 34.3 );
setEffRotateKey( spep_2 + 34, ctbaki, 43.1 );
setEffRotateKey( spep_2 + 36, ctbaki, 34.3 );
setEffRotateKey( spep_2 + 38, ctbaki, 23.5 );
setEffRotateKey( spep_2 + 40, ctbaki, 34.3 );
setEffRotateKey( spep_2 + 50, ctbaki, 34.3 );

setEffAlphaKey( spep_2 + 24, ctbaki, 255 );
setEffAlphaKey( spep_2 + 40, ctbaki, 255 );
setEffAlphaKey( spep_2 + 42, ctbaki, 204 );
setEffAlphaKey( spep_2 + 44, ctbaki, 153 );
setEffAlphaKey( spep_2 + 46, ctbaki, 102 );
setEffAlphaKey( spep_2 + 48, ctbaki, 51 );
setEffAlphaKey( spep_2 + 50, ctbaki, 0); 

--文字エントリー
ctdon = entryEffectLife( spep_2 + 52,  10019, 20, 0x100, -1, 0, -111.6, 157.8 );--ドンッ

setEffMoveKey( spep_2 + 52, ctdon, -111.6, 157.8 , 0 );
setEffMoveKey( spep_2 + 58, ctdon, -122.5, 176 , 0 );
setEffMoveKey( spep_2 + 60, ctdon, -118.2, 191.8 , 0 );
setEffMoveKey( spep_2 + 62, ctdon, -125, 197.1 , 0 );
setEffMoveKey( spep_2 + 64, ctdon, -115.8, 190.4 , 0 );
setEffMoveKey( spep_2 + 66, ctdon, -124.9, 189.2 , 0 );
setEffMoveKey( spep_2 + 68, ctdon, -120.1, 195.2 , 0 );
setEffMoveKey( spep_2 + 70, ctdon, -120, 185.9 , 0 );
setEffMoveKey( spep_2 + 72, ctdon, -120, 186 , 0 );


setEffScaleKey( spep_2 + 52, ctdon, 0.8, 0.8 );
setEffScaleKey( spep_2 + 58, ctdon, 1.15, 1.15 );
setEffScaleKey( spep_2 + 60, ctdon, 1.5, 1.5 );
setEffScaleKey( spep_2 + 62, ctdon, 1.51, 1.51 );
setEffScaleKey( spep_2 + 64, ctdon, 1.52, 1.52 );
setEffScaleKey( spep_2 + 66, ctdon, 1.53, 1.53 );
setEffScaleKey( spep_2 + 68, ctdon, 1.54, 1.54 );
setEffScaleKey( spep_2 + 70, ctdon, 1.52, 1.52 );
setEffScaleKey( spep_2 + 72, ctdon, 1.57, 1.57 );

setEffRotateKey( spep_2 + 52, ctdon, -0.8 );
setEffRotateKey( spep_2 + 58, ctdon, -0.2 );
setEffRotateKey( spep_2 + 60, ctdon, 0.3 );
setEffRotateKey( spep_2 + 72, ctdon, 0.3 );

setEffAlphaKey( spep_2 + 52, ctdon, 0 );
setEffAlphaKey( spep_2 + 53, ctdon, 255 );
setEffAlphaKey( spep_2 + 54, ctdon, 255 );
setEffAlphaKey( spep_2 + 66, ctdon, 255 );
setEffAlphaKey( spep_2 + 68, ctdon, 170 );
setEffAlphaKey( spep_2 + 70, ctdon, 85 );
setEffAlphaKey( spep_2 + 72, ctdon, 0 );

--文字エントリー
ctdon2 = entryEffectLife( spep_2 + 78,  10019, 14, 0x100, -1, 0, -111.6, 157.8 );--ドンッ

setEffMoveKey( spep_2 + 78, ctdon2, -111.6, 157.8 , 0 );
setEffMoveKey( spep_2 + 84, ctdon2, -122.5, 176 , 0 );
setEffMoveKey( spep_2 + 86, ctdon2, -118.2, 191.8 , 0 );
setEffMoveKey( spep_2 + 88, ctdon2, -124.9, 189.2 , 0 );
setEffMoveKey( spep_2 + 90, ctdon2, -120.1, 195.3 , 0 );
setEffMoveKey( spep_2 + 92, ctdon2, -120.1, 195.6 , 0 );

setEffScaleKey( spep_2 + 78, ctdon2, 0.8, 0.8 );
setEffScaleKey( spep_2 + 84, ctdon2, 1.15, 1.15 );
setEffScaleKey( spep_2 + 86, ctdon2, 1.5, 1.5 );
setEffScaleKey( spep_2 + 88, ctdon2, 1.53, 1.53 );
setEffScaleKey( spep_2 + 90, ctdon2, 1.55, 1.55 );
setEffScaleKey( spep_2 + 92, ctdon2, 1.57, 1.57 );

setEffRotateKey( spep_2 + 78, ctdon2, -0.8 );
setEffRotateKey( spep_2 + 84, ctdon2, -0.2 );
setEffRotateKey( spep_2 + 86, ctdon2, 0.3 );
setEffRotateKey( spep_2 + 92, ctdon2, 0.3 );

setEffAlphaKey( spep_2 + 78, ctdon2, 255 );
setEffAlphaKey( spep_2 + 79, ctdon2, 255 );
setEffAlphaKey( spep_2 + 80, ctdon2, 255 );
setEffAlphaKey( spep_2 + 88, ctdon2, 255 );
setEffAlphaKey( spep_2 + 90, ctdon2, 128 );
setEffAlphaKey( spep_2 + 92, ctdon2, 0 );

--文字エントリー
ctzudodo = entryEffectLife( spep_2 + 94,  10014, 18, 0x100, -1, 0, -89, 227.5 );--ズドドドッ

setEffMoveKey( spep_2 + 94, ctzudodo, -89, 227.5 , 0 );
setEffMoveKey( spep_2 + 96, ctzudodo, -88.5, 215.5 , 0 );
setEffMoveKey( spep_2 + 98, ctzudodo, -88.5, 227.5 , 0 );
setEffMoveKey( spep_2 + 100, ctzudodo, -88, 215 , 0 );
setEffMoveKey( spep_2 + 102, ctzudodo, -88, 227.5 , 0 );
setEffMoveKey( spep_2 + 104, ctzudodo, -87.5, 214.6 , 0 );
setEffMoveKey( spep_2 + 106, ctzudodo, -87.5, 227.4 , 0 );
setEffMoveKey( spep_2 + 108, ctzudodo, -87, 214.2 , 0 );
setEffMoveKey( spep_2 + 112, ctzudodo, -86.8, 227.4 , 0 );

setEffScaleKey( spep_2 + 94, ctzudodo, 2.1, 2.1 );
setEffScaleKey( spep_2 + 96, ctzudodo, 2.13, 2.13 );
setEffScaleKey( spep_2 + 98, ctzudodo, 2.17, 2.17 );
setEffScaleKey( spep_2 + 100, ctzudodo, 2.21, 2.21 );
setEffScaleKey( spep_2 + 102, ctzudodo, 2.24, 2.24 );
setEffScaleKey( spep_2 + 104, ctzudodo, 2.28, 2.28 );
setEffScaleKey( spep_2 + 106, ctzudodo, 2.31, 2.31 );
setEffScaleKey( spep_2 + 108, ctzudodo, 2.35, 2.35 );
setEffScaleKey( spep_2 + 110, ctzudodo, 2.38, 2.38 );
setEffScaleKey( spep_2 + 112, ctzudodo, 2.42, 2.42 );

setEffRotateKey( spep_2 + 94, ctzudodo, -0.8 );
setEffRotateKey( spep_2 + 112, ctzudodo, -0.8 );

setEffAlphaKey( spep_2 + 94, ctzudodo, 255 );
setEffAlphaKey( spep_2 + 110, ctzudodo, 255 );
setEffAlphaKey( spep_2 + 111, ctzudodo, 255 );
setEffAlphaKey( spep_2 + 112, ctzudodo, 0 );


--文字エントリー
ctbaki2 = entryEffectLife( spep_2 + 112,  10020, 26, 0x100, -1, 0, -87.2, 307.5 );--バキッ

setEffMoveKey( spep_2 + 112, ctbaki2, -87.2, 307.5 , 0 );
setEffMoveKey( spep_2 + 118, ctbaki2, -56.8, 310.2 , 0 );
setEffMoveKey( spep_2 + 120, ctbaki2, -60.3, 296 , 0 );
setEffMoveKey( spep_2 + 122, ctbaki2, -64.8, 299 , 0 );
setEffMoveKey( spep_2 + 124, ctbaki2, -70.4, 301 , 0 );
setEffMoveKey( spep_2 + 126, ctbaki2, -80.1, 289 , 0 );
setEffMoveKey( spep_2 + 128, ctbaki2, -80.3, 282.3 , 0 );
setEffMoveKey( spep_2 + 130, ctbaki2, -80.7, 285.2 , 0 );
setEffMoveKey( spep_2 + 132, ctbaki2, -81.2, 288 , 0 );
setEffMoveKey( spep_2 + 134, ctbaki2, -81.8, 290.9 , 0 );
setEffMoveKey( spep_2 + 136, ctbaki2, -82.5, 293.8 , 0 );
setEffMoveKey( spep_2 + 138, ctbaki2, -83.3, 296.8 , 0 );

setEffScaleKey( spep_2 + 112, ctbaki2, 0.7, 0.7 );
setEffScaleKey( spep_2 + 118, ctbaki2, 1.55, 1.55 );
setEffScaleKey( spep_2 + 120, ctbaki2, 1.8, 1.8 );
setEffScaleKey( spep_2 + 122, ctbaki2, 1.8, 1.8 );
setEffScaleKey( spep_2 + 124, ctbaki2, 1.7, 1.7 );
setEffScaleKey( spep_2 + 126, ctbaki2, 1.8, 1.8 );
setEffScaleKey( spep_2 + 128, ctbaki2, 1.6, 1.6 );
setEffScaleKey( spep_2 + 130, ctbaki2, 1.48, 1.48 );
setEffScaleKey( spep_2 + 132, ctbaki2, 1.36, 1.36 );
setEffScaleKey( spep_2 + 134, ctbaki2, 1.24, 1.24 );
setEffScaleKey( spep_2 + 136, ctbaki2, 1.12, 1.12 );
setEffScaleKey( spep_2 + 138, ctbaki2, 1, 1 );

setEffRotateKey( spep_2 + 112, ctbaki2, -18.8 );
setEffRotateKey( spep_2 + 118, ctbaki2, -18.8 );
setEffRotateKey( spep_2 + 120, ctbaki2, -13 );
setEffRotateKey( spep_2 + 122, ctbaki2, -24 );
setEffRotateKey( spep_2 + 124, ctbaki2, -16 );
setEffRotateKey( spep_2 + 126, ctbaki2, -24 );
setEffRotateKey( spep_2 + 128, ctbaki2, -18.8 );
setEffRotateKey( spep_2 + 130, ctbaki2, -21.5 );
setEffRotateKey( spep_2 + 132, ctbaki2, -24.1 );
setEffRotateKey( spep_2 + 134, ctbaki2, -26.8 );
setEffRotateKey( spep_2 + 136, ctbaki2, -29.4 );
setEffRotateKey( spep_2 + 138, ctbaki2, -32.1 );

setEffAlphaKey( spep_2 + 112, ctbaki2, 0 );
setEffAlphaKey( spep_2 + 113, ctbaki2, 255 );
setEffAlphaKey( spep_2 + 114, ctbaki2, 255 );
setEffAlphaKey( spep_2 + 128, ctbaki2, 255 );
setEffAlphaKey( spep_2 + 130, ctbaki2, 204 );
setEffAlphaKey( spep_2 + 132, ctbaki2, 153 );
setEffAlphaKey( spep_2 + 134, ctbaki2, 102 );
setEffAlphaKey( spep_2 + 136, ctbaki2, 51 );
setEffAlphaKey( spep_2 + 138, ctbaki2, 0 );


--文字エントリー
ctbikkuri = entryEffectLife( spep_2 + 184,  10000, 12, 0x100, -1, 0, -152.4, 68.9 );--!!

setEffMoveKey( spep_2 + 184, ctbikkuri, -122.4, 68.9 , 0 );
setEffMoveKey( spep_2 + 186, ctbikkuri, -125.5, 87.1 , 0 );
setEffMoveKey( spep_2 + 188, ctbikkuri, -107.8, 102 , 0 );
setEffMoveKey( spep_2 + 190, ctbikkuri, -98.2, 112.9 , 0 );
setEffMoveKey( spep_2 + 192, ctbikkuri, -97.3, 107.9 , 0 );
setEffMoveKey( spep_2 + 194, ctbikkuri, -97.3, 101 , 0 );
setEffMoveKey( spep_2 + 196, ctbikkuri, -41.5, 102.2 , 0 );


setEffScaleKey( spep_2 + 184, ctbikkuri, 1.29, 1.29 );
setEffScaleKey( spep_2 + 186, ctbikkuri, 1.63, 1.63 );
setEffScaleKey( spep_2 + 188, ctbikkuri, 1.98, 1.98 );
setEffScaleKey( spep_2 + 190, ctbikkuri, 2, 2 );
setEffScaleKey( spep_2 + 192, ctbikkuri, 2.02, 2.02 );
setEffScaleKey( spep_2 + 194, ctbikkuri, 2.04, 2.04 );
setEffScaleKey( spep_2 + 196, ctbikkuri, 2.05, 2.05 );


setEffRotateKey( spep_2 + 184, ctbikkuri, 17.2 );
setEffRotateKey( spep_2 + 186, ctbikkuri, 17.8 );
setEffRotateKey( spep_2 + 188, ctbikkuri, 18.3 );
setEffRotateKey( spep_2 + 196, ctbikkuri, 18.3 );

setEffAlphaKey( spep_2 + 184, ctbikkuri, 255 );
setEffAlphaKey( spep_2 + 190, ctbikkuri, 255 );
setEffAlphaKey( spep_2 + 192, ctbikkuri, 170 );
setEffAlphaKey( spep_2 + 194, ctbikkuri, 85 );
setEffAlphaKey( spep_2 + 196, ctbikkuri, 0 );


--文字エントリー
ctba = entryEffectLife( spep_2 + 236,  10022, 16, 0x100, -1, 0, -112.8, 179.5 );--バッ

setEffMoveKey( spep_2 + 236, ctba, -112.8, 179.5 , 0 );
setEffMoveKey( spep_2 + 238, ctba, -127.4, 198 , 0 );
setEffMoveKey( spep_2 + 240, ctba, -127.4, 214 , 0 );
setEffMoveKey( spep_2 + 242, ctba, -143.3, 219.4 , 0 );
setEffMoveKey( spep_2 + 244, ctba, -135.6, 220.7 , 0 );
setEffMoveKey( spep_2 + 246, ctba, -148.9, 225.4 , 0 );
setEffMoveKey( spep_2 + 248, ctba, -162.4, 227.6 , 0 );
setEffMoveKey( spep_2 + 250, ctba, -151.7, 225.7 , 0 );
setEffMoveKey( spep_2 + 252, ctba, -156.2, 226.3 , 0 );

setEffScaleKey( spep_2 + 236, ctba, 1.29, 1.29 );
setEffScaleKey( spep_2 + 238, ctba, 1.63, 1.63 );
setEffScaleKey( spep_2 + 240, ctba, 1.98, 1.98 );
setEffScaleKey( spep_2 + 242, ctba, 2, 2 );
setEffScaleKey( spep_2 + 244, ctba, 2.02, 2.02 );
setEffScaleKey( spep_2 + 246, ctba, 2.04, 2.04 );
setEffScaleKey( spep_2 + 248, ctba, 2.05, 2.05 );
setEffScaleKey( spep_2 + 250, ctba, 2.06, 2.06 );
setEffScaleKey( spep_2 + 252, ctba, 2.07, 2.07 );

setEffRotateKey( spep_2 + 236, ctba, -20.8 );
setEffRotateKey( spep_2 + 238, ctba, -20.3 );
setEffRotateKey( spep_2 + 240, ctba, -19.7 );
setEffRotateKey( spep_2 + 252, ctba, -19.7 );

setEffAlphaKey( spep_2 + 236, ctba, 255 );
setEffAlphaKey( spep_2 + 246, ctba, 255 );
setEffAlphaKey( spep_2 + 248, ctba, 170 );
setEffAlphaKey( spep_2 + 250, ctba, 85 );
setEffAlphaKey( spep_2 + 252, ctba, 0 );

--文字エントリー
ctbikurihatena = entryEffectLife( spep_2 + 268,  10001, 50, 0x100, -1, 0, -3.6, 166.9 );--!?

setEffMoveKey( spep_2 + 268, ctbikurihatena, -3.6, 166.9 , 0 );
setEffMoveKey( spep_2 + 272, ctbikurihatena, -23.3, 183.6 , 0 );
setEffMoveKey( spep_2 + 274, ctbikurihatena, -3.6, 194.1 , 0 );
setEffMoveKey( spep_2 + 276, ctbikurihatena, -14.7, 131.1 , 0 );
setEffMoveKey( spep_2 + 278, ctbikurihatena, -3.4, 143.3 , 0 );
setEffMoveKey( spep_2 + 280, ctbikurihatena, -0.8, 126.3 , 0 );
setEffMoveKey( spep_2 + 282, ctbikurihatena, -6.2, 146.6 , 0 );
setEffMoveKey( spep_2 + 284, ctbikurihatena, 2.2, 132.3 , 0 );
setEffMoveKey( spep_2 + 286, ctbikurihatena, -7.4, 137.8 , 0 );
setEffMoveKey( spep_2 + 288, ctbikurihatena, 0, 129.4 , 0 );
setEffMoveKey( spep_2 + 290, ctbikurihatena, 1.3, 140 , 0 );
setEffMoveKey( spep_2 + 292, ctbikurihatena, 0.5, 128.1 , 0 );
setEffMoveKey( spep_2 + 294, ctbikurihatena, -3.7, 140.5 , 0 );
setEffMoveKey( spep_2 + 296, ctbikurihatena, 0.3, 131 , 0 );
setEffMoveKey( spep_2 + 298, ctbikurihatena, -3.3, 137.5 , 0 );
setEffMoveKey( spep_2 + 300, ctbikurihatena, 4, 130.2 , 0 );
setEffMoveKey( spep_2 + 302, ctbikurihatena, 1.7, 136.7 , 0 );
setEffMoveKey( spep_2 + 304, ctbikurihatena, 5.9, 132.4 , 0 );
setEffMoveKey( spep_2 + 306, ctbikurihatena, 2.2, 132.7 , 0 );
setEffMoveKey( spep_2 + 308, ctbikurihatena, 7.4, 132.6 , 0 );
setEffMoveKey( spep_2 + 310, ctbikurihatena, 3.7, 132.2 , 0 );
setEffMoveKey( spep_2 + 312, ctbikurihatena, 7.5, 132.1 , 0 );
setEffMoveKey( spep_2 + 314, ctbikurihatena, 5.8, 132.5 , 0 );
setEffMoveKey( spep_2 + 316, ctbikurihatena, 7.4, 132 , 0 );
setEffMoveKey( spep_2 + 318, ctbikurihatena, 7.8, 131.9 , 0 );

setEffScaleKey( spep_2 + 268, ctbikurihatena, 3, 3 );
setEffScaleKey( spep_2 + 272, ctbikurihatena, 3.27, 3.27 );
setEffScaleKey( spep_2 + 274, ctbikurihatena, 3.54, 3.54 );
setEffScaleKey( spep_2 + 276, ctbikurihatena, 2.89, 2.89 );
setEffScaleKey( spep_2 + 278, ctbikurihatena, 2.98, 2.98 );
setEffScaleKey( spep_2 + 280, ctbikurihatena, 3.08, 3.08 );
setEffScaleKey( spep_2 + 282, ctbikurihatena, 3.08, 3.08 );
setEffScaleKey( spep_2 + 284, ctbikurihatena, 3.09, 3.09 );
setEffScaleKey( spep_2 + 288, ctbikurihatena, 3.09, 3.09 );
setEffScaleKey( spep_2 + 290, ctbikurihatena, 3.1, 3.1 );
setEffScaleKey( spep_2 + 292, ctbikurihatena, 3.1, 3.1 );
setEffScaleKey( spep_2 + 294, ctbikurihatena, 3.11, 3.11 );
setEffScaleKey( spep_2 + 298, ctbikurihatena, 3.11, 3.11 );
setEffScaleKey( spep_2 + 300, ctbikurihatena, 3.12, 3.12 );
setEffScaleKey( spep_2 + 304, ctbikurihatena, 3.12, 3.12 );
setEffScaleKey( spep_2 + 306, ctbikurihatena, 3.13, 3.13 );
setEffScaleKey( spep_2 + 308, ctbikurihatena, 3.13, 3.13 );
setEffScaleKey( spep_2 + 310, ctbikurihatena, 3.14, 3.14 );
setEffScaleKey( spep_2 + 314, ctbikurihatena, 3.14, 3.14 );
setEffScaleKey( spep_2 + 316, ctbikurihatena, 3.15, 3.15 );
setEffScaleKey( spep_2 + 318, ctbikurihatena, 3.15, 3.15 );

setEffRotateKey( spep_2 + 268, ctbikurihatena, 24.2 );
setEffRotateKey( spep_2 + 272, ctbikurihatena, 24.8 );
setEffRotateKey( spep_2 + 274, ctbikurihatena, 25.3 );
setEffRotateKey( spep_2 + 318, ctbikurihatena, 25.3 );

setEffAlphaKey( spep_2 + 268, ctbikurihatena, 0 );
setEffAlphaKey( spep_2 + 269, ctbikurihatena, 255 );
setEffAlphaKey( spep_2 + 270, ctbikurihatena, 255 );
setEffAlphaKey( spep_2 + 318, ctbikurihatena, 255 );

--流線
ryusen = entryEffectLife( spep_2 + 0,  914, 318, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_2 + 0, ryusen,0, 0 , 0 );
setEffMoveKey( spep_2 + 318, ryusen, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, ryusen, 1, 1 );
setEffScaleKey( spep_2 + 114, ryusen, 1, 1 );
setEffScaleKey( spep_2 + 115, ryusen, 1, 1 );
setEffScaleKey( spep_2 + 116, ryusen, 1.91, 1.08 );
setEffScaleKey( spep_2 + 156, ryusen, 1.91, 1.08 );
setEffScaleKey( spep_2 + 157, ryusen, 1, 1 );
setEffScaleKey( spep_2 + 158, ryusen, 1, 1 );
setEffScaleKey( spep_2 + 318, ryusen, 1, 1 )

setEffRotateKey( spep_2 + 0, ryusen, 0 );
setEffRotateKey( spep_2 + 114, ryusen, 0 );
setEffRotateKey( spep_2 + 115, ryusen, 0 );
setEffRotateKey( spep_2 + 116, ryusen, 90 );
setEffRotateKey( spep_2 + 156, ryusen, 90 );
setEffRotateKey( spep_2 + 157, ryusen, 0 );
setEffRotateKey( spep_2 + 158, ryusen, 0 );
setEffRotateKey( spep_2 + 318, ryusen, 0 );

setEffAlphaKey( spep_2 + 0, ryusen, 255 );
setEffAlphaKey( spep_2 + 116, ryusen, 255 );
setEffAlphaKey( spep_2 + 140, ryusen, 255 );
setEffAlphaKey( spep_2 + 142, ryusen, 223 );
setEffAlphaKey( spep_2 + 144, ryusen, 191 );
setEffAlphaKey( spep_2 + 146, ryusen, 159 );
setEffAlphaKey( spep_2 + 148, ryusen, 128 );
setEffAlphaKey( spep_2 + 150, ryusen, 96 );
setEffAlphaKey( spep_2 + 152, ryusen, 64 );
setEffAlphaKey( spep_2 + 154, ryusen, 32 );
setEffAlphaKey( spep_2 + 156, ryusen, 0 );--156
setEffAlphaKey( spep_2 + 182, ryusen, 0 );--156
setEffAlphaKey( spep_2 + 190, ryusen, 61 );--176
--setEffAlphaKey( spep_2 + 178, ryusen, 126 );
setEffAlphaKey( spep_2 + 194, ryusen, 190 );--180
setEffAlphaKey( spep_2 + 196, ryusen, 255 );--182
setEffAlphaKey( spep_2 + 318, ryusen, 255 );

--敵の動き
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 318, 1, 0 );

changeAnime( spep_2 + 0, 1, 101 );
changeAnime( spep_2 + 23, 1, 108 );--26
changeAnime( spep_2 + 24, 1, 108 );--26
changeAnime( spep_2 + 113, 1, 104 );--116
changeAnime( spep_2 + 114, 1, 104 );--116
changeAnime( spep_2 + 156, 1, 117 );
changeAnime( spep_2 + 184, 1, 111 );
--delayChara(spep_2 + 184,86,100);

changeAnime( spep_2 +185, 1, 111 );
changeAnime( spep_2 +186, 1, 111 );
changeAnime( spep_2 +187, 1, 111 );
changeAnime( spep_2 +188, 1, 111 );
changeAnime( spep_2 +189, 1, 111 );
changeAnime( spep_2 +190, 1, 111 );
changeAnime( spep_2 +191, 1, 111 );
changeAnime( spep_2 +192, 1, 111 );
changeAnime( spep_2 +193, 1, 111 );
changeAnime( spep_2 +194, 1, 111 );
changeAnime( spep_2 +195, 1, 111 );
changeAnime( spep_2 +196, 1, 111 );
changeAnime( spep_2 +197, 1, 111 );
changeAnime( spep_2 +198, 1, 111 );
changeAnime( spep_2 +199, 1, 111 );
changeAnime( spep_2 +200, 1, 111 );
changeAnime( spep_2 +201, 1, 111 );
changeAnime( spep_2 +202, 1, 111 );
changeAnime( spep_2 +203, 1, 111 );
changeAnime( spep_2 +204, 1, 111 );
changeAnime( spep_2 +205, 1, 111 );
changeAnime( spep_2 +206, 1, 111 );
changeAnime( spep_2 +207, 1, 111 );
changeAnime( spep_2 +208, 1, 111 );
changeAnime( spep_2 +209, 1, 111 );
changeAnime( spep_2 +210, 1, 111 );
changeAnime( spep_2 +211, 1, 111 );
changeAnime( spep_2 +212, 1, 111 );
changeAnime( spep_2 +213, 1, 111 );
changeAnime( spep_2 +214, 1, 111 );
changeAnime( spep_2 +215, 1, 111 );
changeAnime( spep_2 +216, 1, 111 );
changeAnime( spep_2 +217, 1, 111 );
changeAnime( spep_2 +218, 1, 111 );
changeAnime( spep_2 +219, 1, 111 );
changeAnime( spep_2 +220, 1, 111 );
changeAnime( spep_2 +221, 1, 111 );
changeAnime( spep_2 +222, 1, 111 );
changeAnime( spep_2 +223, 1, 111 );
changeAnime( spep_2 +224, 1, 111 );
changeAnime( spep_2 +225, 1, 111 );
changeAnime( spep_2 +226, 1, 111 );
changeAnime( spep_2 +227, 1, 111 );
changeAnime( spep_2 +228, 1, 111 );
changeAnime( spep_2 +229, 1, 111 );
changeAnime( spep_2 +230, 1, 111 );
changeAnime( spep_2 +231, 1, 111 );
changeAnime( spep_2 +232, 1, 111 );
changeAnime( spep_2 +233, 1, 111 );
changeAnime( spep_2 +234, 1, 111 );
changeAnime( spep_2 +235, 1, 111 );
changeAnime( spep_2 +236, 1, 111 );
changeAnime( spep_2 +237, 1, 111 );
changeAnime( spep_2 +238, 1, 111 );
changeAnime( spep_2 +239, 1, 111 );
changeAnime( spep_2 +240, 1, 111 );
changeAnime( spep_2 +241, 1, 111 );
changeAnime( spep_2 +242, 1, 111 );
changeAnime( spep_2 +243, 1, 111 );
changeAnime( spep_2 +244, 1, 111 );
changeAnime( spep_2 +245, 1, 111 );
changeAnime( spep_2 +246, 1, 111 );
changeAnime( spep_2 +247, 1, 111 );
changeAnime( spep_2 +248, 1, 111 );
changeAnime( spep_2 +249, 1, 111 );
changeAnime( spep_2 +250, 1, 111 );
changeAnime( spep_2 +251, 1, 111 );
changeAnime( spep_2 +252, 1, 111 );
changeAnime( spep_2 +253, 1, 111 );
changeAnime( spep_2 +254, 1, 111 );
changeAnime( spep_2 +255, 1, 111 );
changeAnime( spep_2 +256, 1, 111 );
changeAnime( spep_2 +257, 1, 111 );
changeAnime( spep_2 +258, 1, 111 );
changeAnime( spep_2 +259, 1, 111 );
changeAnime( spep_2 +260, 1, 111 );
changeAnime( spep_2 +261, 1, 111 );
changeAnime( spep_2 +262, 1, 111 );
changeAnime( spep_2 +263, 1, 111 );
changeAnime( spep_2 +264, 1, 111 );
changeAnime( spep_2 +265, 1, 111 );
changeAnime( spep_2 +266, 1, 111 );
changeAnime( spep_2 +267, 1, 111 );
changeAnime( spep_2 +268, 1, 111 );
changeAnime( spep_2 +269, 1, 111 );
changeAnime( spep_2 +270, 1, 111 );

changeAnime( spep_2 + 271, 1, 108 );--274
changeAnime( spep_2 + 272, 1, 108 );--274
changeAnime( spep_2 + 306, 1, 101 );

setMoveKey( spep_2 + 0, 1, 475.8, -20.2 , 0 );
setMoveKey( spep_2 + 2, 1, 412, -20.2 , 0 );
setMoveKey( spep_2 + 4, 1, 352.9, -20.2 , 0 );
setMoveKey( spep_2 + 6, 1, 298.5, -20.1 , 0 );
setMoveKey( spep_2 + 8, 1, 248.7, -20.1 , 0 );
setMoveKey( spep_2 + 10, 1, 203.7, -20.1 , 0 );
setMoveKey( spep_2 + 12, 1, 163.2, -20.1 , 0 );
setMoveKey( spep_2 + 14, 1, 127.5, -20.1 , 0 );
setMoveKey( spep_2 + 16, 1, 96.4, -20.1 , 0 );
setMoveKey( spep_2 + 18, 1, 70, -20.1 , 0 );
setMoveKey( spep_2 + 20, 1, 40.7, -28.1 , 0 );
setMoveKey( spep_2 + 22, 1, 31.1, -20.1 , 0 );
--setMoveKey( spep_2 + 25, 1, 11.3, -28.1 , 0 );
setMoveKey( spep_2 + 23, 1, 57.7, 45.1 , 0 );--26
setMoveKey( spep_2 + 24, 1, 57.7, 45.1 , 0 );--26
setMoveKey( spep_2 + 28, 1, 40, 28.4 , 0 );
setMoveKey( spep_2 + 30, 1, 35.9, 27.8 , 0 );
setMoveKey( spep_2 + 32, 1, 33.3, 16.1 , 0 );
setMoveKey( spep_2 + 34, 1, 44, 27 , 0 );
setMoveKey( spep_2 + 36, 1, 41.1, 18.6 , 0 );
setMoveKey( spep_2 + 38, 1, 51.9, 26.2 , 0 );
setMoveKey( spep_2 + 40, 1, 49, 20.9 , 0 );
setMoveKey( spep_2 + 42, 1, 59.6, 25.4 , 0 );
setMoveKey( spep_2 + 44, 1, 57.4, 15.7 , 0 );
setMoveKey( spep_2 + 46, 1, 67.9, 22.1 , 0 );
setMoveKey( spep_2 + 48, 1, 66.6, 15.7 , 0 );
setMoveKey( spep_2 + 50, 1, 75.4, 20.3 , 0 );
--setMoveKey( spep_2 + 52, 1, 78.6, 18.4 , 0 );
setMoveKey( spep_2 + 52, 1, 81.8, 16.5 , 0 );--54
setMoveKey( spep_2 + 53, 1, 178.7, 31.8 , 0 );--56
setMoveKey( spep_2 + 54, 1, 178.7, 31.8 , 0 );--56
setMoveKey( spep_2 + 58, 1, 156.8, 32 , 0 );
setMoveKey( spep_2 + 60, 1, 121.3, 16.2 , 0 );
setMoveKey( spep_2 + 62, 1, 133.9, 24 , 0 );
setMoveKey( spep_2 + 64, 1, 134.4, 11.7 , 0 );
setMoveKey( spep_2 + 66, 1, 142.9, 23.5 , 0 );
setMoveKey( spep_2 + 68, 1, 139.5, 15.2 , 0 );
setMoveKey( spep_2 + 70, 1, 152, 23 , 0 );
setMoveKey( spep_2 + 72, 1, 152.5, 18.7 , 0 );
setMoveKey( spep_2 + 74, 1, 161.1, 22.5 , 0 );
setMoveKey( spep_2 + 76, 1, 163.6, 20.2 , 0 );
setMoveKey( spep_2 + 78, 1, 166.1, 18 , 0 );
setMoveKey( spep_2 + 80, 1, 168.7, 15.7 , 0 );
setMoveKey( spep_2 + 82, 1, 181.6, 23.6 , 0 );
setMoveKey( spep_2 + 84, 1, 182.4, 27.2 , 0 );
setMoveKey( spep_2 + 86, 1, 166.4, 14.8 , 0 );
setMoveKey( spep_2 + 88, 1, 179.1, 18.8 , 0 );
setMoveKey( spep_2 + 90, 1, 179.9, 14.8 , 0 );
setMoveKey( spep_2 + 92, 1, 191.1, 17.5 , 0 );
setMoveKey( spep_2 + 94, 1, 182.5, -5.3 , 0 );
setMoveKey( spep_2 + 96, 1, 190.8, 6.9 , 0 );
setMoveKey( spep_2 + 98, 1, 182.5, -5.3 , 0 );
setMoveKey( spep_2 + 100, 1, 182.1, 11.8 , 0 );
setMoveKey( spep_2 + 102, 1, 200.3, 9.1 , 0 );
setMoveKey( spep_2 + 104, 1, 193.6, 3.6 , 0 );
setMoveKey( spep_2 + 106, 1, 197.8, 2.2 , 0 );
setMoveKey( spep_2 + 108, 1, 187, 4 , 0 );
setMoveKey( spep_2 + 110, 1, 203.6, 3.3 , 0 );
--setMoveKey( spep_2 + 112, 1, 184.6, 3.5 , 0 );
setMoveKey( spep_2 + 112, 1, 186.3, 9 , 0 );--115
setMoveKey( spep_2 + 113, 1, 152.1, 45.5 , 0 );--116
setMoveKey( spep_2 + 114, 1, 152.1, 45.5 , 0 );--116
setMoveKey( spep_2 + 118, 1, 146.9, 55.1 , 0 );
setMoveKey( spep_2 + 120, 1, 151.8, 83.1 , 0 );
setMoveKey( spep_2 + 122, 1, 158.9, 71.7 , 0 );
setMoveKey( spep_2 + 124, 1, 182.2, 82.4 , 0 );
setMoveKey( spep_2 + 126, 1, 183.7, 63.6 , 0 );
setMoveKey( spep_2 + 128, 1, 199, 65.6 , 0 );
setMoveKey( spep_2 + 130, 1, 202.5, 48 , 0 );
setMoveKey( spep_2 + 132, 1, 212.3, 44.9 , 0 );
setMoveKey( spep_2 + 134, 1, 212.2, 25.4 , 0 );
setMoveKey( spep_2 + 136, 1, 222.9, 22.4 , 0 );
setMoveKey( spep_2 + 138, 1, 224.2, 7.6 , 0 );
setMoveKey( spep_2 + 140, 1, 228.4, -3.6 , 0 );
setMoveKey( spep_2 + 142, 1, 232, -15 , 0 );
setMoveKey( spep_2 + 144, 1, 235.2, -26.6 , 0 );
setMoveKey( spep_2 + 146, 1, 238.1, -38.2 , 0 );
setMoveKey( spep_2 + 148, 1, 240.6, -49.9 , 0 );
setMoveKey( spep_2 + 150, 1, 242.8, -61.6 , 0 );
setMoveKey( spep_2 + 152, 1, 244.6, -73.5 , 0 );
setMoveKey( spep_2 + 155, 1, 247.7, -81.7 , 0 );
setMoveKey( spep_2 + 156, 1, 249.7, -75.3 , 0 );
setMoveKey( spep_2 + 158, 1, 252.6, -69.5 , 0 );
setMoveKey( spep_2 + 160, 1, 250.8, -73.2 , 0 );
setMoveKey( spep_2 + 162, 1, 250.8, -73.3 , 0 );
setMoveKey( spep_2 + 164, 1, 250.8, -73.3 , 0 );
setMoveKey( spep_2 + 166, 1, 250.7, -73.3 , 0 );
setMoveKey( spep_2 + 170, 1, 250.7, -73.3 , 0 );
--setMoveKey( spep_2 + 172, 1, 250.7, -71.2 , 0 );
setMoveKey( spep_2 + 171, 1, 248.7, -71.2 , 0 );--174
setMoveKey( spep_2 + 172, 1, 248.7, -71.2 , 0 );--174
setMoveKey( spep_2 + 176, 1, 250.8, -73.3 , 0 );
setMoveKey( spep_2 + 180, 1, 250.8, -73.3 , 0 );
setMoveKey( spep_2 + 183, 1, 250.8, -73.2 , 0 );
--setMoveKey( spep_2 + 184, 1, 149.2, -71.5 , 0 );
setMoveKey( spep_2 + 186-2, 1, 132.9, -63.5 , 0 );
setMoveKey( spep_2 + 188-2, 1, 117.4, -75.7 , 0 );
setMoveKey( spep_2 + 190-2, 1, 119.4, -63.7 , 0 );
setMoveKey( spep_2 + 192-2, 1, 107.7, -76.2 , 0 );
setMoveKey( spep_2 + 194-2, 1, 115.5, -66 , 0 );
setMoveKey( spep_2 + 196-2, 1, 111.9, -77.1 , 0 );
setMoveKey( spep_2 + 198-2, 1, 127.8, -66.4 , 0 );
setMoveKey( spep_2 + 200-2, 1, 157.6, -74.6 , 0 );
setMoveKey( spep_2 + 202-2, 1, 201.4, -68 , 0 );
setMoveKey( spep_2 + 204-2, 1, 244, -77.3 , 0 );
setMoveKey( spep_2 + 206-2, 1, 307.6, -69.8 , 0 );
setMoveKey( spep_2 + 208-2, 1, 371.3, -77.9 , 0 );
setMoveKey( spep_2 + 210-2, 1, 459.8, -69.7 , 0 );
setMoveKey( spep_2 + 212-2, 1, 551.5, -79.1 , 0 );
setMoveKey( spep_2 + 214-2, 1, 669.2, -72.2 , 0 );
setMoveKey( spep_2 + 216-2, 1, 797.3, -73 , 0 );
setMoveKey( spep_2 + 218-2, 1, 939.4, -74 , 0 );
setMoveKey( spep_2 + 220-2, 1, 1092.6, -75 , 0 );
setMoveKey( spep_2 + 228-2, 1, 1092.6, -75 , 0 );
setMoveKey( spep_2 + 230-2, 1, 1092.7, -75 , 0 );
setMoveKey( spep_2 + 234-2, 1, 1092.7, -75 , 0 );
setMoveKey( spep_2 + 236-2, 1, 1362.2, -90.8 , 0 );
setMoveKey( spep_2 + 238-2, 1, 1908.2, -79.6 , 0 );
setMoveKey( spep_2 + 240-2, 1, 1809.4, -84.9 , 0 );
setMoveKey( spep_2 + 242-2, 1, 1724.1, -73.4 , 0 );
setMoveKey( spep_2 + 244-2, 1, 1710.9, -82.2 , 0 );
setMoveKey( spep_2 + 246-2, 1, 1532.8, -72.2 , 0 );
setMoveKey( spep_2 + 248-2, 1, 1339.1, -83.2 , 0 );
setMoveKey( spep_2 + 250, 1, 1161.2, -72.8 , 0 );
--setMoveKey( spep_2 + 252, 1, 967.9, -83.7 , 0 );
setMoveKey( spep_2 + 254+4, 1, 743.4, -72.9 , 0 );
setMoveKey( spep_2 + 256+4, 1, 549.4, -83.7 , 0 );
setMoveKey( spep_2 + 258+4, 1, 410.1, -72.9 , 0 );
setMoveKey( spep_2 + 260+4, 1, 291.3, -83.7 , 0 );
setMoveKey( spep_2 + 262+4, 1, 217.3, -72.9 , 0 );
setMoveKey( spep_2 + 264+4, 1, 153.7, -83.7 , 0 );
setMoveKey( spep_2 + 266+4, 1, 124.8, -72.9 , 0 );
--setMoveKey( spep_2 + 268+2, 1, 96.3, -83.7 , 0 );
setMoveKey( spep_2 + 270+1, 1, 92.5, -72.9 , 0 );
--setMoveKey( spep_2 + 273-2, 1, 79, -83.7 , 0 );
setMoveKey( spep_2 + 274-2, 1, 127.3, -64.8 , 0 );---
setMoveKey( spep_2 + 276-2, 1, 204, -74.6 , 0 );
setMoveKey( spep_2 + 278-2, 1, 263.2, -65.9 , 0 );
setMoveKey( spep_2 + 280-2, 1, 340.5, -73.5 , 0 );
setMoveKey( spep_2 + 282-2, 1, 426.8, -67 , 0 );
setMoveKey( spep_2 + 284-2, 1, 506.5, -72.3 , 0 );
setMoveKey( spep_2 + 286-2, 1, 590.8, -68.1 , 0 );
setMoveKey( spep_2 + 288-2, 1, 670.3, -71.5 , 0 );
setMoveKey( spep_2 + 290-2, 1, 754.8, -68.7 , 0 );
setMoveKey( spep_2 + 292-2, 1, 835.9, -70.2 , 0 );
setMoveKey( spep_2 + 294-2, 1, 918.2, -70.2 , 0 );
setMoveKey( spep_2 + 306, 1, 918.2, -70.2 , 0 );
--setMoveKey( spep_2 + 306, 1, -305.1, 3.5 , 0 );
--setMoveKey( spep_2 + 308, 1, -358.8, 3.5 , 0 );
--setMoveKey( spep_2 + 310, 1, -407.8, 3.5 , 0 );
--setMoveKey( spep_2 + 312, 1, -452.1, 3.6 , 0 );
--setMoveKey( spep_2 + 314, 1, -491.8, 3.6 , 0 );
--setMoveKey( spep_2 + 316, 1, -526.8, 3.6 , 0 );
--setMoveKey( spep_2 + 318, 1, -358.8, 3.5 , 0 );

setScaleKey( spep_2 + 0, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 22, 1, 1.27, 1.27 );--25
setScaleKey( spep_2 + 23, 1, 1.72, 1.72 );--26
setScaleKey( spep_2 + 24, 1, 1.72, 1.72 );--26
setScaleKey( spep_2 + 28, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 30, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 52, 1, 1.27, 1.27 );--54
setScaleKey( spep_2 + 53, 1, 1.72, 1.72 );--56
setScaleKey( spep_2 + 54, 1, 1.72, 1.72 );--56
setScaleKey( spep_2 + 58, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 60, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 80, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 82, 1, 1.59, 1.59 );
setScaleKey( spep_2 + 84, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 86, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 94, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 96, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 98, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 100, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 102, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 104, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 106, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 108, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 110, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 112, 1, 1.27, 1.27 );
--setScaleKey( spep_2 + 115, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 113, 1, 1.89, 1.89 );--116
setScaleKey( spep_2 + 114, 1, 1.89, 1.89 );--116
setScaleKey( spep_2 + 118, 1, 1.61, 1.61 );
setScaleKey( spep_2 + 120, 1, 1.33, 1.33 );
setScaleKey( spep_2 + 155, 1, 1.33, 1.33 );
setScaleKey( spep_2 + 156, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 198, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 200, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 206, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 208, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 210, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 212, 1, 1.24, 1.24 );
setScaleKey( spep_2 + 214, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 216, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 218, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 220, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 234, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 236, 1, 1.59, 1.59 );
setScaleKey( spep_2 + 238, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 240, 1, 1.33, 1.33 );
setScaleKey( spep_2 + 242, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 270, 1, 1.27, 1.27 );--173
setScaleKey( spep_2 + 271, 1, 1.72, 1.72 );--174
setScaleKey( spep_2 + 272, 1, 1.72, 1.72 );--174
setScaleKey( spep_2 + 276, 1, 1.49, 1.49 );
setScaleKey( spep_2 + 278, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 306, 1, 1.27, 1.27 );--318

setRotateKey( spep_2 + 0, 1, 5 );
setRotateKey( spep_2 + 22, 1, 5 );--25
setRotateKey( spep_2 + 23, 1, -23 );--26
setRotateKey( spep_2 + 24, 1, -23 );--26
setRotateKey( spep_2 + 28, 1, -22.7 );
setRotateKey( spep_2 + 30, 1, -22.4 );
setRotateKey( spep_2 + 32, 1, -22 );
setRotateKey( spep_2 + 34, 1, -21.7 );
setRotateKey( spep_2 + 36, 1, -21.4 );
setRotateKey( spep_2 + 38, 1, -21.1 );
setRotateKey( spep_2 + 40, 1, -20.8 );
setRotateKey( spep_2 + 42, 1, -20.5 );
setRotateKey( spep_2 + 44, 1, -20.1 );
setRotateKey( spep_2 + 46, 1, -19.8 );
setRotateKey( spep_2 + 48, 1, -19.5 );
setRotateKey( spep_2 + 50, 1, -19.2 );
setRotateKey( spep_2 + 52, 1, -18.9 );
setRotateKey( spep_2 + 54, 1, -18.6 );
setRotateKey( spep_2 + 56, 1, -18.3 );
setRotateKey( spep_2 + 80, 1, -18.3 );
setRotateKey( spep_2 + 82, 1, -4 );
setRotateKey( spep_2 + 92, 1, -4 );
setRotateKey( spep_2 + 94, 1, 1 );
setRotateKey( spep_2 + 96, 1, -1.5 );
setRotateKey( spep_2 + 98, 1, 1 );
setRotateKey( spep_2 + 100, 1, -4 );
setRotateKey( spep_2 + 112, 1, -4 );--115
setRotateKey( spep_2 + 113, 1, 9.3 );--116
setRotateKey( spep_2 + 114, 1, 9.3 );--116
setRotateKey( spep_2 + 155, 1, 9.3 );
setRotateKey( spep_2 + 156, 1, 0 );
setRotateKey( spep_2 + 305, 1, 0 );
setRotateKey( spep_2 + 306, 1, 5 );
--setRotateKey( spep_2 + 318, 1, 5 );

--SE
playSe( spep_2+24 , 1009);-- ぱんち
playSe( spep_2+52 , 1010);-- ぱんち
playSe( spep_2+78 , 1009);-- ぱんち
playSe( spep_2+94 , 1000);-- ぱんち
playSe( spep_2+104 , 1001);-- ぱんち
playSe( spep_2+112 , 1011);-- けり
playSe( spep_2+156 , 1013);-- 立て直す
playSe( spep_2+184 , 1052);-- 立て直す
--playSe( spep_2+236 , 1003);-- 手の動き
playSe( spep_2+236 , 44);-- なんか近く
playSe( spep_2+274 , 1011);-- 当たる

-- ** エフェクト等 ** --
entryFade(spep_2+232, 0, 6, 2,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_2+268, 0, 6, 2,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_2+312, 4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--黒背景
entryFadeBg(spep_2, 0, 320, 0, 0, 0, 0, 200);  -- 黒　背

--次の準備
spep_3=spep_2+320;

------------------------------------------------------
--ラスト
------------------------------------------------------
--エフェクト
surpise=entryEffect(spep_3,SP_03,0x100,-1,0,0,0);
setEffMoveKey( spep_3 + 0, surpise, 0, 0 , 0 );
setEffMoveKey( spep_3 + 200, surpise, 0, 0 , 0 );

setEffScaleKey(spep_3,surpise,1.0,1.0);
setEffScaleKey(spep_3+200,surpise,1.0,1.0);

setEffRotateKey(spep_3,surpise,0);
setEffRotateKey(spep_3+200,surpise,0);

setEffAlphaKey(spep_3,surpise,255);
setEffAlphaKey(spep_3+200,surpise,255);


--集中線
shuchusen3 = entryEffectLife( spep_3 + 0,  906, 200, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_3 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_3 + 200, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen3, 1.41, 2 );
setEffScaleKey( spep_3 + 200, shuchusen3, 1.41, 2 );

setEffRotateKey( spep_3 + 0, shuchusen3, 180 );
setEffRotateKey( spep_3 + 200, shuchusen3, 180 );

setEffAlphaKey( spep_3 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_3 + 200, shuchusen3, 255 );

--SE
playSe( spep_3 , 44);-- ええぇ…
playSe( spep_3+74 , 1003);-- 振り返る

--黒背景
entryFadeBg(spep_3, 0, 200, 0, 0, 0, 0, 200);  -- 黒　背

-- ダメージ表示
dealDamage(spep_3+16);
entryFade( spep_3+180, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_3+196);

else
------------------------------------------------------
--敵
------------------------------------------------------
------------------------------------------------------
--突進
------------------------------------------------------

spep_0=0;
--エフェクト
rush=entryEffectLife(spep_0,SP_01x,168,0x100,-1,0,0,0);
setEffMoveKey( spep_0 + 0, rush, 0, 0 , 0 );
setEffMoveKey( spep_0 + 168, rush, 0, 0 , 0 );

setEffScaleKey(spep_0,rush,-1.0,1.0);
setEffScaleKey(spep_0+168,rush,-1.0,1.0);

setEffRotateKey(spep_0,rush,0);
setEffRotateKey(spep_0+168,rush,0);

setEffAlphaKey(spep_0,rush,255);
setEffAlphaKey(spep_0+168,rush,255);


--集中線
shuchusen1 = entryEffectLife( spep_0 + 0,  906, 168, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 168, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchusen1, 1.13, 1.61 );
setEffScaleKey( spep_0 + 168, shuchusen1, 1.13, 1.61 );

setEffRotateKey( spep_0 + 0, shuchusen1, 180 );
setEffRotateKey( spep_0 + 168, shuchusen1, 180 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 168, shuchusen1, 255 );

--SE
playSe( spep_0+36, 3);--キラーん

--黒背景
entryFadeBg(spep_0, 0, 168, 0, 0, 0, 0, 200);  -- 黒　背
--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

SP_dodge = spep_0+76 ; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

pauseAll( SP_dodge, 67);
--[[
--キャラクターの固定
setMoveKey(SP_dodge, 1,297.9, -17.4 , 0 );
setScaleKey(SP_dodge , 1, 1.1, 1.1);
setRotateKey(SP_dodge,   1, 0 );

--キャラクターの固定
setMoveKey(SP_dodge+8, 1,297.9, -17.4 , 0 );
setScaleKey(SP_dodge+8 , 1, 1.1, 1.1);
setRotateKey(SP_dodge+8,   1, 0 );
]]

setDisp(SP_dodge+9, 0, 0);
--setDisp(SP_dodge+9, 1, 0);
--setMoveKey(SP_dodge+9, 1, 0 , 0, 0);
--setScaleKey(SP_dodge+9,1,0.9,0.9);
--setRotateKey(SP_dodge+9,   1, 0);

--setMoveKey(SP_dodge+10, 1, 0 , 0, 0);
--setScaleKey(SP_dodge+10,  1 , 0.9, 0.9);
--setRotateKey(SP_dodge+10,   1, 0);


--悟飯を画面外に表示
--setMoveKey(SP_dodge+8, 0, 0 , -54,   0);
setMoveKey(SP_dodge+9, 1, 1000 , 1000, 0);
setMoveKey(SP_dodge+10, 1, 1000 , 1000, 0);


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

--顔カットイン
--speff=entryEffect(spep_0+76,1504,0x100,-1,0,0,0);  --カットイン(顔)
--setEffReplaceTexture(speff,3,2);  --カットイン差し替え
--speff1=entryEffect(spep_0+76,1505,0x100,-1,0,0,0);  --カットイン(セリフ)
--setEffReplaceTexture(speff1,4,5);  --セリフカットイン差し替え

--ゴゴゴ
ctgogo=entryEffectLife(spep_0+88,190006,70,0x100,-1,110,520);--ゴゴゴ

setEffMoveKey(spep_0+88,ctgogo,110,520,0);
setEffMoveKey(spep_0+158,ctgogo,110,520,0);


setEffScaleKey(spep_0+88, ctgogo, -0.7, 0.7);
setEffScaleKey(spep_0+158, ctgogo, -0.7, 0.7);

setEffAlphaKey( spep_0 + 88, ctgogo, 0 );
setEffAlphaKey( spep_0 + 89, ctgogo, 255 );
setEffAlphaKey( spep_0 + 90, ctgogo, 255 );
setEffAlphaKey( spep_0 + 158, ctgogo, 255 );

setEffRotateKey(spep_0+88,ctgogo,0);
setEffRotateKey(spep_0+158,ctgogo,0);

--SE
playSe( spep_0 + 88, SE_04);--ごごご

-- ** エフェクト等 ** --
entryFade(spep_0, 0, 0, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_0+158, 4, 8, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_1=spep_0+168;


--------------------------------------
--カードカットイン(90F)
--------------------------------------

playSe(spep_1,SE_05);
shuchusen=entryEffectLife(spep_1,906,90,0x100,-1,0,0,0);   -- 集中線
setEffScaleKey(spep_1,shuchusen,1.6,1.6);

speff2=entryEffect(spep_1,1507,0x80,-1,0,0,0);   -- カード
setEffReplaceTexture(speff2,1,1);
setEffReplaceTexture(speff2,2,0);-- カード差し替え
setEffReplaceTexture(speff2,5,4);-- 技名テクスチャ差し替え

-- ** エフェクト等 ** --
entryFade(spep_1+85,3,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_2=spep_1+90;

------------------------------------------------------
--暴行
------------------------------------------------------
--エフェクト
ssault=entryEffectLife(spep_2,SP_02x,320,0x100,-1,0,0,0);
setEffMoveKey( spep_2 + 0, ssault, 0, 0 , 0 );
setEffMoveKey( spep_2 + 320, ssault, 0, 0 , 0 );

setEffScaleKey(spep_2,ssault,1.0,1.0);
setEffScaleKey(spep_2+320,ssault,1.0,1.0);

setEffRotateKey(spep_2,ssault,0);
setEffRotateKey(spep_2+320,ssault,0);

setEffAlphaKey(spep_2,ssault,255);
setEffAlphaKey(spep_2+320,ssault,255);

--集中線
shuchusen2 = entryEffectLife( spep_2 + 0,  906, 320, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_2 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 320, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen2, 1.41, 2 );
setEffScaleKey( spep_2 + 320, shuchusen2, 1.41, 2 );

setEffRotateKey( spep_2 + 0, shuchusen2, 180 );
setEffRotateKey( spep_2 + 320, shuchusen2, 180 );

setEffAlphaKey( spep_2 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 320, shuchusen2, 255 );



--文字エントリー
ctbaki = entryEffectLife( spep_2 + 24,  10020, 26, 0x100, -1, 0, -44.9, 243.5 );--バキッ

setEffMoveKey( spep_2 + 24, ctbaki, -44.9, 243.5 , 0 );
setEffMoveKey( spep_2 + 30, ctbaki, -15.5, 267 , 0 );
setEffMoveKey( spep_2 + 32, ctbaki, 7.2, 246.4 , 0 );
setEffMoveKey( spep_2 + 34, ctbaki, 3.6, 277.4 , 0 );
setEffMoveKey( spep_2 + 36, ctbaki, -8.8, 273 , 0 );
setEffMoveKey( spep_2 + 38, ctbaki, -22.8, 272.1 , 0 );
setEffMoveKey( spep_2 + 40, ctbaki, -14.5, 251.7 , 0 );
setEffMoveKey( spep_2 + 42, ctbaki, -13.8, 252.3 , 0 );
setEffMoveKey( spep_2 + 44, ctbaki, -13, 252.8 , 0 );
setEffMoveKey( spep_2 + 46, ctbaki, -12.3, 253.4 , 0 );
setEffMoveKey( spep_2 + 48, ctbaki, -11.6, 254 , 0 );
setEffMoveKey( spep_2 + 50, ctbaki, -10.9, 254.5 , 0 );

setEffScaleKey( spep_2 + 24, ctbaki, 0.5, 0.5 );
setEffScaleKey( spep_2 + 30, ctbaki, 1.35, 1.35 );
setEffScaleKey( spep_2 + 32, ctbaki, 1.7, 1.7 );
setEffScaleKey( spep_2 + 34, ctbaki, 1.65, 1.65 );
setEffScaleKey( spep_2 + 36, ctbaki, 1.5, 1.5 );
setEffScaleKey( spep_2 + 38, ctbaki, 1.4, 1.4 );
setEffScaleKey( spep_2 + 40, ctbaki, 1.3, 1.3 );
setEffScaleKey( spep_2 + 42, ctbaki, 1.18, 1.18 );
setEffScaleKey( spep_2 + 44, ctbaki, 1.06, 1.06 );
setEffScaleKey( spep_2 + 46, ctbaki, 0.94, 0.94 );
setEffScaleKey( spep_2 + 48, ctbaki, 0.82, 0.82 );
setEffScaleKey( spep_2 + 50, ctbaki, 0.7, 0.7 );

setEffRotateKey( spep_2 + 24, ctbaki, -34.4 );
setEffRotateKey( spep_2 + 30, ctbaki, -21 );
setEffRotateKey( spep_2 + 32, ctbaki, -34.3 );
setEffRotateKey( spep_2 + 34, ctbaki, -43.1 );
setEffRotateKey( spep_2 + 36, ctbaki, -34.3 );
setEffRotateKey( spep_2 + 38, ctbaki, -23.5 );
setEffRotateKey( spep_2 + 40, ctbaki, -34.3 );
setEffRotateKey( spep_2 + 50, ctbaki, -34.3 );

setEffAlphaKey( spep_2 + 24, ctbaki, 255 );
setEffAlphaKey( spep_2 + 40, ctbaki, 255 );
setEffAlphaKey( spep_2 + 42, ctbaki, 204 );
setEffAlphaKey( spep_2 + 44, ctbaki, 153 );
setEffAlphaKey( spep_2 + 46, ctbaki, 102 );
setEffAlphaKey( spep_2 + 48, ctbaki, 51 );
setEffAlphaKey( spep_2 + 50, ctbaki, 0); 

--文字エントリー
ctdon = entryEffectLife( spep_2 + 52,  10019, 20, 0x100, -1, 0, -111.6, 157.8 );--ドンッ

setEffMoveKey( spep_2 + 52, ctdon, -111.6, 157.8 , 0 );
setEffMoveKey( spep_2 + 58, ctdon, -122.5, 176 , 0 );
setEffMoveKey( spep_2 + 60, ctdon, -118.2, 191.8 , 0 );
setEffMoveKey( spep_2 + 62, ctdon, -125, 197.1 , 0 );
setEffMoveKey( spep_2 + 64, ctdon, -115.8, 190.4 , 0 );
setEffMoveKey( spep_2 + 66, ctdon, -124.9, 189.2 , 0 );
setEffMoveKey( spep_2 + 68, ctdon, -120.1, 195.2 , 0 );
setEffMoveKey( spep_2 + 70, ctdon, -120, 185.9 , 0 );
setEffMoveKey( spep_2 + 72, ctdon, -120, 186 , 0 );


setEffScaleKey( spep_2 + 52, ctdon, 0.8, 0.8 );
setEffScaleKey( spep_2 + 58, ctdon, 1.15, 1.15 );
setEffScaleKey( spep_2 + 60, ctdon, 1.5, 1.5 );
setEffScaleKey( spep_2 + 62, ctdon, 1.51, 1.51 );
setEffScaleKey( spep_2 + 64, ctdon, 1.52, 1.52 );
setEffScaleKey( spep_2 + 66, ctdon, 1.53, 1.53 );
setEffScaleKey( spep_2 + 68, ctdon, 1.54, 1.54 );
setEffScaleKey( spep_2 + 70, ctdon, 1.52, 1.52 );
setEffScaleKey( spep_2 + 72, ctdon, 1.57, 1.57 );

setEffRotateKey( spep_2 + 52, ctdon, -0.8 );
setEffRotateKey( spep_2 + 58, ctdon, -0.2 );
setEffRotateKey( spep_2 + 60, ctdon, 0.3 );
setEffRotateKey( spep_2 + 72, ctdon, 0.3 );

setEffAlphaKey( spep_2 + 52, ctdon, 0 );
setEffAlphaKey( spep_2 + 53, ctdon, 255 );
setEffAlphaKey( spep_2 + 54, ctdon, 255 );
setEffAlphaKey( spep_2 + 66, ctdon, 255 );
setEffAlphaKey( spep_2 + 68, ctdon, 170 );
setEffAlphaKey( spep_2 + 70, ctdon, 85 );
setEffAlphaKey( spep_2 + 72, ctdon, 0 );

--文字エントリー
ctdon2 = entryEffectLife( spep_2 + 78,  10019, 14, 0x100, -1, 0, -111.6, 157.8 );--ドンッ

setEffMoveKey( spep_2 + 78, ctdon2, -111.6, 157.8 , 0 );
setEffMoveKey( spep_2 + 84, ctdon2, -122.5, 176 , 0 );
setEffMoveKey( spep_2 + 86, ctdon2, -118.2, 191.8 , 0 );
setEffMoveKey( spep_2 + 88, ctdon2, -124.9, 189.2 , 0 );
setEffMoveKey( spep_2 + 90, ctdon2, -120.1, 195.3 , 0 );
setEffMoveKey( spep_2 + 92, ctdon2, -120.1, 195.6 , 0 );

setEffScaleKey( spep_2 + 78, ctdon2, 0.8, 0.8 );
setEffScaleKey( spep_2 + 84, ctdon2, 1.15, 1.15 );
setEffScaleKey( spep_2 + 86, ctdon2, 1.5, 1.5 );
setEffScaleKey( spep_2 + 88, ctdon2, 1.53, 1.53 );
setEffScaleKey( spep_2 + 90, ctdon2, 1.55, 1.55 );
setEffScaleKey( spep_2 + 92, ctdon2, 1.57, 1.57 );

setEffRotateKey( spep_2 + 78, ctdon2, -0.8 );
setEffRotateKey( spep_2 + 84, ctdon2, -0.2 );
setEffRotateKey( spep_2 + 86, ctdon2, 0.3 );
setEffRotateKey( spep_2 + 92, ctdon2, 0.3 );

setEffAlphaKey( spep_2 + 78, ctdon2, 255 );
setEffAlphaKey( spep_2 + 79, ctdon2, 255 );
setEffAlphaKey( spep_2 + 80, ctdon2, 255 );
setEffAlphaKey( spep_2 + 88, ctdon2, 255 );
setEffAlphaKey( spep_2 + 90, ctdon2, 128 );
setEffAlphaKey( spep_2 + 92, ctdon2, 0 );

--文字エントリー
ctzudodo = entryEffectLife( spep_2 + 94,  10014, 18, 0x100, -1, 0, -89, 227.5 );--ズドドドッ

setEffMoveKey( spep_2 + 94, ctzudodo, -89, 227.5 , 0 );
setEffMoveKey( spep_2 + 96, ctzudodo, -88.5, 215.5 , 0 );
setEffMoveKey( spep_2 + 98, ctzudodo, -88.5, 227.5 , 0 );
setEffMoveKey( spep_2 + 100, ctzudodo, -88, 215 , 0 );
setEffMoveKey( spep_2 + 102, ctzudodo, -88, 227.5 , 0 );
setEffMoveKey( spep_2 + 104, ctzudodo, -87.5, 214.6 , 0 );
setEffMoveKey( spep_2 + 106, ctzudodo, -87.5, 227.4 , 0 );
setEffMoveKey( spep_2 + 108, ctzudodo, -87, 214.2 , 0 );
setEffMoveKey( spep_2 + 112, ctzudodo, -86.8, 227.4 , 0 );

setEffScaleKey( spep_2 + 94, ctzudodo, 2.1, 2.1 );
setEffScaleKey( spep_2 + 96, ctzudodo, 2.13, 2.13 );
setEffScaleKey( spep_2 + 98, ctzudodo, 2.17, 2.17 );
setEffScaleKey( spep_2 + 100, ctzudodo, 2.21, 2.21 );
setEffScaleKey( spep_2 + 102, ctzudodo, 2.24, 2.24 );
setEffScaleKey( spep_2 + 104, ctzudodo, 2.28, 2.28 );
setEffScaleKey( spep_2 + 106, ctzudodo, 2.31, 2.31 );
setEffScaleKey( spep_2 + 108, ctzudodo, 2.35, 2.35 );
setEffScaleKey( spep_2 + 110, ctzudodo, 2.38, 2.38 );
setEffScaleKey( spep_2 + 112, ctzudodo, 2.42, 2.42 );

setEffRotateKey( spep_2 + 94, ctzudodo, -70.8 );
setEffRotateKey( spep_2 + 112, ctzudodo, -70.8 );

setEffAlphaKey( spep_2 + 94, ctzudodo, 255 );
setEffAlphaKey( spep_2 + 110, ctzudodo, 255 );
setEffAlphaKey( spep_2 + 111, ctzudodo, 255 );
setEffAlphaKey( spep_2 + 112, ctzudodo, 0 );


--文字エントリー
ctbaki2 = entryEffectLife( spep_2 + 112,  10020, 26, 0x100, -1, 0, -87.2, 307.5 );--バキッ

setEffMoveKey( spep_2 + 112, ctbaki2, -87.2, 307.5 , 0 );
setEffMoveKey( spep_2 + 118, ctbaki2, -56.8, 310.2 , 0 );
setEffMoveKey( spep_2 + 120, ctbaki2, -60.3, 296 , 0 );
setEffMoveKey( spep_2 + 122, ctbaki2, -64.8, 299 , 0 );
setEffMoveKey( spep_2 + 124, ctbaki2, -70.4, 301 , 0 );
setEffMoveKey( spep_2 + 126, ctbaki2, -80.1, 289 , 0 );
setEffMoveKey( spep_2 + 128, ctbaki2, -80.3, 282.3 , 0 );
setEffMoveKey( spep_2 + 130, ctbaki2, -80.7, 285.2 , 0 );
setEffMoveKey( spep_2 + 132, ctbaki2, -81.2, 288 , 0 );
setEffMoveKey( spep_2 + 134, ctbaki2, -81.8, 290.9 , 0 );
setEffMoveKey( spep_2 + 136, ctbaki2, -82.5, 293.8 , 0 );
setEffMoveKey( spep_2 + 138, ctbaki2, -83.3, 296.8 , 0 );

setEffScaleKey( spep_2 + 112, ctbaki2, 0.7, 0.7 );
setEffScaleKey( spep_2 + 118, ctbaki2, 1.55, 1.55 );
setEffScaleKey( spep_2 + 120, ctbaki2, 1.8, 1.8 );
setEffScaleKey( spep_2 + 122, ctbaki2, 1.8, 1.8 );
setEffScaleKey( spep_2 + 124, ctbaki2, 1.7, 1.7 );
setEffScaleKey( spep_2 + 126, ctbaki2, 1.8, 1.8 );
setEffScaleKey( spep_2 + 128, ctbaki2, 1.6, 1.6 );
setEffScaleKey( spep_2 + 130, ctbaki2, 1.48, 1.48 );
setEffScaleKey( spep_2 + 132, ctbaki2, 1.36, 1.36 );
setEffScaleKey( spep_2 + 134, ctbaki2, 1.24, 1.24 );
setEffScaleKey( spep_2 + 136, ctbaki2, 1.12, 1.12 );
setEffScaleKey( spep_2 + 138, ctbaki2, 1, 1 );

setEffRotateKey( spep_2 + 112, ctbaki2, 18.8 );
setEffRotateKey( spep_2 + 118, ctbaki2, 18.8 );
setEffRotateKey( spep_2 + 120, ctbaki2, 13 );
setEffRotateKey( spep_2 + 122, ctbaki2, 24 );
setEffRotateKey( spep_2 + 124, ctbaki2, 16 );
setEffRotateKey( spep_2 + 126, ctbaki2, 24 );
setEffRotateKey( spep_2 + 128, ctbaki2, 18.8 );
setEffRotateKey( spep_2 + 130, ctbaki2, 21.5 );
setEffRotateKey( spep_2 + 132, ctbaki2, 24.1 );
setEffRotateKey( spep_2 + 134, ctbaki2, 26.8 );
setEffRotateKey( spep_2 + 136, ctbaki2, 29.4 );
setEffRotateKey( spep_2 + 138, ctbaki2, 32.1 );

setEffAlphaKey( spep_2 + 112, ctbaki2, 0 );
setEffAlphaKey( spep_2 + 113, ctbaki2, 255 );
setEffAlphaKey( spep_2 + 114, ctbaki2, 255 );
setEffAlphaKey( spep_2 + 128, ctbaki2, 255 );
setEffAlphaKey( spep_2 + 130, ctbaki2, 204 );
setEffAlphaKey( spep_2 + 132, ctbaki2, 153 );
setEffAlphaKey( spep_2 + 134, ctbaki2, 102 );
setEffAlphaKey( spep_2 + 136, ctbaki2, 51 );
setEffAlphaKey( spep_2 + 138, ctbaki2, 0 );


--文字エントリー
ctbikkuri = entryEffectLife( spep_2 + 184,  10000, 12, 0x100, -1, 0, -152.4, 68.9 );--!!

setEffMoveKey( spep_2 + 184, ctbikkuri, -122.4, 68.9 , 0 );
setEffMoveKey( spep_2 + 186, ctbikkuri, -125.5, 87.1 , 0 );
setEffMoveKey( spep_2 + 188, ctbikkuri, -107.8, 102 , 0 );
setEffMoveKey( spep_2 + 190, ctbikkuri, -98.2, 112.9 , 0 );
setEffMoveKey( spep_2 + 192, ctbikkuri, -97.3, 107.9 , 0 );
setEffMoveKey( spep_2 + 194, ctbikkuri, -97.3, 101 , 0 );
setEffMoveKey( spep_2 + 196, ctbikkuri, -41.5, 102.2 , 0 );


setEffScaleKey( spep_2 + 184, ctbikkuri, 1.29, 1.29 );
setEffScaleKey( spep_2 + 186, ctbikkuri, 1.63, 1.63 );
setEffScaleKey( spep_2 + 188, ctbikkuri, 1.98, 1.98 );
setEffScaleKey( spep_2 + 190, ctbikkuri, 2, 2 );
setEffScaleKey( spep_2 + 192, ctbikkuri, 2.02, 2.02 );
setEffScaleKey( spep_2 + 194, ctbikkuri, 2.04, 2.04 );
setEffScaleKey( spep_2 + 196, ctbikkuri, 2.05, 2.05 );


setEffRotateKey( spep_2 + 184, ctbikkuri, 17.2 );
setEffRotateKey( spep_2 + 186, ctbikkuri, 17.8 );
setEffRotateKey( spep_2 + 188, ctbikkuri, 18.3 );
setEffRotateKey( spep_2 + 196, ctbikkuri, 18.3 );

setEffAlphaKey( spep_2 + 184, ctbikkuri, 255 );
setEffAlphaKey( spep_2 + 190, ctbikkuri, 255 );
setEffAlphaKey( spep_2 + 192, ctbikkuri, 170 );
setEffAlphaKey( spep_2 + 194, ctbikkuri, 85 );
setEffAlphaKey( spep_2 + 196, ctbikkuri, 0 );


--文字エントリー
ctba = entryEffectLife( spep_2 + 236,  10022, 16, 0x100, -1, 0, -112.8, 179.5 );--バッ

setEffMoveKey( spep_2 + 236, ctba, -112.8, 179.5 , 0 );
setEffMoveKey( spep_2 + 238, ctba, -127.4, 198 , 0 );
setEffMoveKey( spep_2 + 240, ctba, -127.4, 214 , 0 );
setEffMoveKey( spep_2 + 242, ctba, -143.3, 219.4 , 0 );
setEffMoveKey( spep_2 + 244, ctba, -135.6, 220.7 , 0 );
setEffMoveKey( spep_2 + 246, ctba, -148.9, 225.4 , 0 );
setEffMoveKey( spep_2 + 248, ctba, -162.4, 227.6 , 0 );
setEffMoveKey( spep_2 + 250, ctba, -151.7, 225.7 , 0 );
setEffMoveKey( spep_2 + 252, ctba, -156.2, 226.3 , 0 );

setEffScaleKey( spep_2 + 236, ctba, 1.29, 1.29 );
setEffScaleKey( spep_2 + 238, ctba, 1.63, 1.63 );
setEffScaleKey( spep_2 + 240, ctba, 1.98, 1.98 );
setEffScaleKey( spep_2 + 242, ctba, 2, 2 );
setEffScaleKey( spep_2 + 244, ctba, 2.02, 2.02 );
setEffScaleKey( spep_2 + 246, ctba, 2.04, 2.04 );
setEffScaleKey( spep_2 + 248, ctba, 2.05, 2.05 );
setEffScaleKey( spep_2 + 250, ctba, 2.06, 2.06 );
setEffScaleKey( spep_2 + 252, ctba, 2.07, 2.07 );

setEffRotateKey( spep_2 + 236, ctba, -20.8 );
setEffRotateKey( spep_2 + 238, ctba, -20.3 );
setEffRotateKey( spep_2 + 240, ctba, -19.7 );
setEffRotateKey( spep_2 + 252, ctba, -19.7 );

setEffAlphaKey( spep_2 + 236, ctba, 255 );
setEffAlphaKey( spep_2 + 246, ctba, 255 );
setEffAlphaKey( spep_2 + 248, ctba, 170 );
setEffAlphaKey( spep_2 + 250, ctba, 85 );
setEffAlphaKey( spep_2 + 252, ctba, 0 );

--文字エントリー
ctbikurihatena = entryEffectLife( spep_2 + 268,  10001, 50, 0x100, -1, 0, -3.6, 166.9 );--!?

setEffMoveKey( spep_2 + 268, ctbikurihatena, -3.6, 166.9 , 0 );
setEffMoveKey( spep_2 + 272, ctbikurihatena, -23.3, 183.6 , 0 );
setEffMoveKey( spep_2 + 274, ctbikurihatena, -3.6, 194.1 , 0 );
setEffMoveKey( spep_2 + 276, ctbikurihatena, -14.7, 131.1 , 0 );
setEffMoveKey( spep_2 + 278, ctbikurihatena, -3.4, 143.3 , 0 );
setEffMoveKey( spep_2 + 280, ctbikurihatena, -0.8, 126.3 , 0 );
setEffMoveKey( spep_2 + 282, ctbikurihatena, -6.2, 146.6 , 0 );
setEffMoveKey( spep_2 + 284, ctbikurihatena, 2.2, 132.3 , 0 );
setEffMoveKey( spep_2 + 286, ctbikurihatena, -7.4, 137.8 , 0 );
setEffMoveKey( spep_2 + 288, ctbikurihatena, 0, 129.4 , 0 );
setEffMoveKey( spep_2 + 290, ctbikurihatena, 1.3, 140 , 0 );
setEffMoveKey( spep_2 + 292, ctbikurihatena, 0.5, 128.1 , 0 );
setEffMoveKey( spep_2 + 294, ctbikurihatena, -3.7, 140.5 , 0 );
setEffMoveKey( spep_2 + 296, ctbikurihatena, 0.3, 131 , 0 );
setEffMoveKey( spep_2 + 298, ctbikurihatena, -3.3, 137.5 , 0 );
setEffMoveKey( spep_2 + 300, ctbikurihatena, 4, 130.2 , 0 );
setEffMoveKey( spep_2 + 302, ctbikurihatena, 1.7, 136.7 , 0 );
setEffMoveKey( spep_2 + 304, ctbikurihatena, 5.9, 132.4 , 0 );
setEffMoveKey( spep_2 + 306, ctbikurihatena, 2.2, 132.7 , 0 );
setEffMoveKey( spep_2 + 308, ctbikurihatena, 7.4, 132.6 , 0 );
setEffMoveKey( spep_2 + 310, ctbikurihatena, 3.7, 132.2 , 0 );
setEffMoveKey( spep_2 + 312, ctbikurihatena, 7.5, 132.1 , 0 );
setEffMoveKey( spep_2 + 314, ctbikurihatena, 5.8, 132.5 , 0 );
setEffMoveKey( spep_2 + 316, ctbikurihatena, 7.4, 132 , 0 );
setEffMoveKey( spep_2 + 318, ctbikurihatena, 7.8, 131.9 , 0 );

setEffScaleKey( spep_2 + 268, ctbikurihatena, 3, 3 );
setEffScaleKey( spep_2 + 272, ctbikurihatena, 3.27, 3.27 );
setEffScaleKey( spep_2 + 274, ctbikurihatena, 3.54, 3.54 );
setEffScaleKey( spep_2 + 276, ctbikurihatena, 2.89, 2.89 );
setEffScaleKey( spep_2 + 278, ctbikurihatena, 2.98, 2.98 );
setEffScaleKey( spep_2 + 280, ctbikurihatena, 3.08, 3.08 );
setEffScaleKey( spep_2 + 282, ctbikurihatena, 3.08, 3.08 );
setEffScaleKey( spep_2 + 284, ctbikurihatena, 3.09, 3.09 );
setEffScaleKey( spep_2 + 288, ctbikurihatena, 3.09, 3.09 );
setEffScaleKey( spep_2 + 290, ctbikurihatena, 3.1, 3.1 );
setEffScaleKey( spep_2 + 292, ctbikurihatena, 3.1, 3.1 );
setEffScaleKey( spep_2 + 294, ctbikurihatena, 3.11, 3.11 );
setEffScaleKey( spep_2 + 298, ctbikurihatena, 3.11, 3.11 );
setEffScaleKey( spep_2 + 300, ctbikurihatena, 3.12, 3.12 );
setEffScaleKey( spep_2 + 304, ctbikurihatena, 3.12, 3.12 );
setEffScaleKey( spep_2 + 306, ctbikurihatena, 3.13, 3.13 );
setEffScaleKey( spep_2 + 308, ctbikurihatena, 3.13, 3.13 );
setEffScaleKey( spep_2 + 310, ctbikurihatena, 3.14, 3.14 );
setEffScaleKey( spep_2 + 314, ctbikurihatena, 3.14, 3.14 );
setEffScaleKey( spep_2 + 316, ctbikurihatena, 3.15, 3.15 );
setEffScaleKey( spep_2 + 318, ctbikurihatena, 3.15, 3.15 );

setEffRotateKey( spep_2 + 268, ctbikurihatena, 24.2 );
setEffRotateKey( spep_2 + 272, ctbikurihatena, 24.8 );
setEffRotateKey( spep_2 + 274, ctbikurihatena, 25.3 );
setEffRotateKey( spep_2 + 318, ctbikurihatena, 25.3 );

setEffAlphaKey( spep_2 + 268, ctbikurihatena, 0 );
setEffAlphaKey( spep_2 + 269, ctbikurihatena, 255 );
setEffAlphaKey( spep_2 + 270, ctbikurihatena, 255 );
setEffAlphaKey( spep_2 + 318, ctbikurihatena, 255 );

--流線
ryusen = entryEffectLife( spep_2 + 0,  914, 318, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_2 + 0, ryusen,0, 0 , 0 );
setEffMoveKey( spep_2 + 318, ryusen, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, ryusen, 1, 1 );
setEffScaleKey( spep_2 + 114, ryusen, 1, 1 );
setEffScaleKey( spep_2 + 115, ryusen, 1, 1 );
setEffScaleKey( spep_2 + 116, ryusen, 1.91, 1.08 );
setEffScaleKey( spep_2 + 156, ryusen, 1.91, 1.08 );
setEffScaleKey( spep_2 + 157, ryusen, 1, 1 );
setEffScaleKey( spep_2 + 158, ryusen, 1, 1 );
setEffScaleKey( spep_2 + 318, ryusen, 1, 1 )

setEffRotateKey( spep_2 + 0, ryusen, 0 );
setEffRotateKey( spep_2 + 114, ryusen, 0 );
setEffRotateKey( spep_2 + 115, ryusen, 0 );
setEffRotateKey( spep_2 + 116, ryusen, 90 );
setEffRotateKey( spep_2 + 156, ryusen, 90 );
setEffRotateKey( spep_2 + 157, ryusen, 0 );
setEffRotateKey( spep_2 + 158, ryusen, 0 );
setEffRotateKey( spep_2 + 318, ryusen, 0 );

setEffAlphaKey( spep_2 + 0, ryusen, 255 );
setEffAlphaKey( spep_2 + 116, ryusen, 255 );
setEffAlphaKey( spep_2 + 140, ryusen, 255 );
setEffAlphaKey( spep_2 + 142, ryusen, 223 );
setEffAlphaKey( spep_2 + 144, ryusen, 191 );
setEffAlphaKey( spep_2 + 146, ryusen, 159 );
setEffAlphaKey( spep_2 + 148, ryusen, 128 );
setEffAlphaKey( spep_2 + 150, ryusen, 96 );
setEffAlphaKey( spep_2 + 152, ryusen, 64 );
setEffAlphaKey( spep_2 + 154, ryusen, 32 );
setEffAlphaKey( spep_2 + 156, ryusen, 0 );--156
setEffAlphaKey( spep_2 + 182, ryusen, 0 );--156
setEffAlphaKey( spep_2 + 190, ryusen, 61 );--176
--setEffAlphaKey( spep_2 + 178, ryusen, 126 );
setEffAlphaKey( spep_2 + 194, ryusen, 190 );--180
setEffAlphaKey( spep_2 + 196, ryusen, 255 );--182
setEffAlphaKey( spep_2 + 318, ryusen, 255 );

--敵の動き
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 318, 1, 0 );

changeAnime( spep_2 + 0, 1, 101 );
changeAnime( spep_2 + 23, 1, 108 );--26
changeAnime( spep_2 + 24, 1, 108 );--26
changeAnime( spep_2 + 113, 1, 104 );--116
changeAnime( spep_2 + 114, 1, 104 );--116
changeAnime( spep_2 + 156, 1, 117 );
changeAnime( spep_2 + 184, 1, 111 );
--delayChara(spep_2 + 184,86,100);

changeAnime( spep_2 +185, 1, 111 );
changeAnime( spep_2 +186, 1, 111 );
changeAnime( spep_2 +187, 1, 111 );
changeAnime( spep_2 +188, 1, 111 );
changeAnime( spep_2 +189, 1, 111 );
changeAnime( spep_2 +190, 1, 111 );
changeAnime( spep_2 +191, 1, 111 );
changeAnime( spep_2 +192, 1, 111 );
changeAnime( spep_2 +193, 1, 111 );
changeAnime( spep_2 +194, 1, 111 );
changeAnime( spep_2 +195, 1, 111 );
changeAnime( spep_2 +196, 1, 111 );
changeAnime( spep_2 +197, 1, 111 );
changeAnime( spep_2 +198, 1, 111 );
changeAnime( spep_2 +199, 1, 111 );
changeAnime( spep_2 +200, 1, 111 );
changeAnime( spep_2 +201, 1, 111 );
changeAnime( spep_2 +202, 1, 111 );
changeAnime( spep_2 +203, 1, 111 );
changeAnime( spep_2 +204, 1, 111 );
changeAnime( spep_2 +205, 1, 111 );
changeAnime( spep_2 +206, 1, 111 );
changeAnime( spep_2 +207, 1, 111 );
changeAnime( spep_2 +208, 1, 111 );
changeAnime( spep_2 +209, 1, 111 );
changeAnime( spep_2 +210, 1, 111 );
changeAnime( spep_2 +211, 1, 111 );
changeAnime( spep_2 +212, 1, 111 );
changeAnime( spep_2 +213, 1, 111 );
changeAnime( spep_2 +214, 1, 111 );
changeAnime( spep_2 +215, 1, 111 );
changeAnime( spep_2 +216, 1, 111 );
changeAnime( spep_2 +217, 1, 111 );
changeAnime( spep_2 +218, 1, 111 );
changeAnime( spep_2 +219, 1, 111 );
changeAnime( spep_2 +220, 1, 111 );
changeAnime( spep_2 +221, 1, 111 );
changeAnime( spep_2 +222, 1, 111 );
changeAnime( spep_2 +223, 1, 111 );
changeAnime( spep_2 +224, 1, 111 );
changeAnime( spep_2 +225, 1, 111 );
changeAnime( spep_2 +226, 1, 111 );
changeAnime( spep_2 +227, 1, 111 );
changeAnime( spep_2 +228, 1, 111 );
changeAnime( spep_2 +229, 1, 111 );
changeAnime( spep_2 +230, 1, 111 );
changeAnime( spep_2 +231, 1, 111 );
changeAnime( spep_2 +232, 1, 111 );
changeAnime( spep_2 +233, 1, 111 );
changeAnime( spep_2 +234, 1, 111 );
changeAnime( spep_2 +235, 1, 111 );
changeAnime( spep_2 +236, 1, 111 );
changeAnime( spep_2 +237, 1, 111 );
changeAnime( spep_2 +238, 1, 111 );
changeAnime( spep_2 +239, 1, 111 );
changeAnime( spep_2 +240, 1, 111 );
changeAnime( spep_2 +241, 1, 111 );
changeAnime( spep_2 +242, 1, 111 );
changeAnime( spep_2 +243, 1, 111 );
changeAnime( spep_2 +244, 1, 111 );
changeAnime( spep_2 +245, 1, 111 );
changeAnime( spep_2 +246, 1, 111 );
changeAnime( spep_2 +247, 1, 111 );
changeAnime( spep_2 +248, 1, 111 );
changeAnime( spep_2 +249, 1, 111 );
changeAnime( spep_2 +250, 1, 111 );
changeAnime( spep_2 +251, 1, 111 );
changeAnime( spep_2 +252, 1, 111 );
changeAnime( spep_2 +253, 1, 111 );
changeAnime( spep_2 +254, 1, 111 );
changeAnime( spep_2 +255, 1, 111 );
changeAnime( spep_2 +256, 1, 111 );
changeAnime( spep_2 +257, 1, 111 );
changeAnime( spep_2 +258, 1, 111 );
changeAnime( spep_2 +259, 1, 111 );
changeAnime( spep_2 +260, 1, 111 );
changeAnime( spep_2 +261, 1, 111 );
changeAnime( spep_2 +262, 1, 111 );
changeAnime( spep_2 +263, 1, 111 );
changeAnime( spep_2 +264, 1, 111 );
changeAnime( spep_2 +265, 1, 111 );
changeAnime( spep_2 +266, 1, 111 );
changeAnime( spep_2 +267, 1, 111 );
changeAnime( spep_2 +268, 1, 111 );
changeAnime( spep_2 +269, 1, 111 );
changeAnime( spep_2 +270, 1, 111 );

changeAnime( spep_2 + 271, 1, 108 );--274
changeAnime( spep_2 + 272, 1, 108 );--274
changeAnime( spep_2 + 306, 1, 101 );

setMoveKey( spep_2 + 0, 1, 475.8, -20.2 , 0 );
setMoveKey( spep_2 + 2, 1, 412, -20.2 , 0 );
setMoveKey( spep_2 + 4, 1, 352.9, -20.2 , 0 );
setMoveKey( spep_2 + 6, 1, 298.5, -20.1 , 0 );
setMoveKey( spep_2 + 8, 1, 248.7, -20.1 , 0 );
setMoveKey( spep_2 + 10, 1, 203.7, -20.1 , 0 );
setMoveKey( spep_2 + 12, 1, 163.2, -20.1 , 0 );
setMoveKey( spep_2 + 14, 1, 127.5, -20.1 , 0 );
setMoveKey( spep_2 + 16, 1, 96.4, -20.1 , 0 );
setMoveKey( spep_2 + 18, 1, 70, -20.1 , 0 );
setMoveKey( spep_2 + 20, 1, 40.7, -28.1 , 0 );
setMoveKey( spep_2 + 22, 1, 31.1, -20.1 , 0 );
--setMoveKey( spep_2 + 25, 1, 11.3, -28.1 , 0 );
setMoveKey( spep_2 + 23, 1, 57.7, 45.1 , 0 );--26
setMoveKey( spep_2 + 24, 1, 57.7, 45.1 , 0 );--26
setMoveKey( spep_2 + 28, 1, 40, 28.4 , 0 );
setMoveKey( spep_2 + 30, 1, 35.9, 27.8 , 0 );
setMoveKey( spep_2 + 32, 1, 33.3, 16.1 , 0 );
setMoveKey( spep_2 + 34, 1, 44, 27 , 0 );
setMoveKey( spep_2 + 36, 1, 41.1, 18.6 , 0 );
setMoveKey( spep_2 + 38, 1, 51.9, 26.2 , 0 );
setMoveKey( spep_2 + 40, 1, 49, 20.9 , 0 );
setMoveKey( spep_2 + 42, 1, 59.6, 25.4 , 0 );
setMoveKey( spep_2 + 44, 1, 57.4, 15.7 , 0 );
setMoveKey( spep_2 + 46, 1, 67.9, 22.1 , 0 );
setMoveKey( spep_2 + 48, 1, 66.6, 15.7 , 0 );
setMoveKey( spep_2 + 50, 1, 75.4, 20.3 , 0 );
--setMoveKey( spep_2 + 52, 1, 78.6, 18.4 , 0 );
setMoveKey( spep_2 + 52, 1, 81.8, 16.5 , 0 );--54
setMoveKey( spep_2 + 53, 1, 178.7, 31.8 , 0 );--56
setMoveKey( spep_2 + 54, 1, 178.7, 31.8 , 0 );--56
setMoveKey( spep_2 + 58, 1, 156.8, 32 , 0 );
setMoveKey( spep_2 + 60, 1, 121.3, 16.2 , 0 );
setMoveKey( spep_2 + 62, 1, 133.9, 24 , 0 );
setMoveKey( spep_2 + 64, 1, 134.4, 11.7 , 0 );
setMoveKey( spep_2 + 66, 1, 142.9, 23.5 , 0 );
setMoveKey( spep_2 + 68, 1, 139.5, 15.2 , 0 );
setMoveKey( spep_2 + 70, 1, 152, 23 , 0 );
setMoveKey( spep_2 + 72, 1, 152.5, 18.7 , 0 );
setMoveKey( spep_2 + 74, 1, 161.1, 22.5 , 0 );
setMoveKey( spep_2 + 76, 1, 163.6, 20.2 , 0 );
setMoveKey( spep_2 + 78, 1, 166.1, 18 , 0 );
setMoveKey( spep_2 + 80, 1, 168.7, 15.7 , 0 );
setMoveKey( spep_2 + 82, 1, 181.6, 23.6 , 0 );
setMoveKey( spep_2 + 84, 1, 182.4, 27.2 , 0 );
setMoveKey( spep_2 + 86, 1, 166.4, 14.8 , 0 );
setMoveKey( spep_2 + 88, 1, 179.1, 18.8 , 0 );
setMoveKey( spep_2 + 90, 1, 179.9, 14.8 , 0 );
setMoveKey( spep_2 + 92, 1, 191.1, 17.5 , 0 );
setMoveKey( spep_2 + 94, 1, 182.5, -5.3 , 0 );
setMoveKey( spep_2 + 96, 1, 190.8, 6.9 , 0 );
setMoveKey( spep_2 + 98, 1, 182.5, -5.3 , 0 );
setMoveKey( spep_2 + 100, 1, 182.1, 11.8 , 0 );
setMoveKey( spep_2 + 102, 1, 200.3, 9.1 , 0 );
setMoveKey( spep_2 + 104, 1, 193.6, 3.6 , 0 );
setMoveKey( spep_2 + 106, 1, 197.8, 2.2 , 0 );
setMoveKey( spep_2 + 108, 1, 187, 4 , 0 );
setMoveKey( spep_2 + 110, 1, 203.6, 3.3 , 0 );
--setMoveKey( spep_2 + 112, 1, 184.6, 3.5 , 0 );
setMoveKey( spep_2 + 112, 1, 186.3, 9 , 0 );--115
setMoveKey( spep_2 + 113, 1, 152.1, 45.5 , 0 );--116
setMoveKey( spep_2 + 114, 1, 152.1, 45.5 , 0 );--116
setMoveKey( spep_2 + 118, 1, 146.9, 55.1 , 0 );
setMoveKey( spep_2 + 120, 1, 151.8, 83.1 , 0 );
setMoveKey( spep_2 + 122, 1, 158.9, 71.7 , 0 );
setMoveKey( spep_2 + 124, 1, 182.2, 82.4 , 0 );
setMoveKey( spep_2 + 126, 1, 183.7, 63.6 , 0 );
setMoveKey( spep_2 + 128, 1, 199, 65.6 , 0 );
setMoveKey( spep_2 + 130, 1, 202.5, 48 , 0 );
setMoveKey( spep_2 + 132, 1, 212.3, 44.9 , 0 );
setMoveKey( spep_2 + 134, 1, 212.2, 25.4 , 0 );
setMoveKey( spep_2 + 136, 1, 222.9, 22.4 , 0 );
setMoveKey( spep_2 + 138, 1, 224.2, 7.6 , 0 );
setMoveKey( spep_2 + 140, 1, 228.4, -3.6 , 0 );
setMoveKey( spep_2 + 142, 1, 232, -15 , 0 );
setMoveKey( spep_2 + 144, 1, 235.2, -26.6 , 0 );
setMoveKey( spep_2 + 146, 1, 238.1, -38.2 , 0 );
setMoveKey( spep_2 + 148, 1, 240.6, -49.9 , 0 );
setMoveKey( spep_2 + 150, 1, 242.8, -61.6 , 0 );
setMoveKey( spep_2 + 152, 1, 244.6, -73.5 , 0 );
setMoveKey( spep_2 + 155, 1, 247.7, -81.7 , 0 );
setMoveKey( spep_2 + 156, 1, 249.7, -75.3 , 0 );
setMoveKey( spep_2 + 158, 1, 252.6, -69.5 , 0 );
setMoveKey( spep_2 + 160, 1, 250.8, -73.2 , 0 );
setMoveKey( spep_2 + 162, 1, 250.8, -73.3 , 0 );
setMoveKey( spep_2 + 164, 1, 250.8, -73.3 , 0 );
setMoveKey( spep_2 + 166, 1, 250.7, -73.3 , 0 );
setMoveKey( spep_2 + 170, 1, 250.7, -73.3 , 0 );
--setMoveKey( spep_2 + 172, 1, 250.7, -71.2 , 0 );
setMoveKey( spep_2 + 171, 1, 248.7, -71.2 , 0 );--174
setMoveKey( spep_2 + 172, 1, 248.7, -71.2 , 0 );--174
setMoveKey( spep_2 + 176, 1, 250.8, -73.3 , 0 );
setMoveKey( spep_2 + 180, 1, 250.8, -73.3 , 0 );
setMoveKey( spep_2 + 183, 1, 250.8, -73.2 , 0 );
--setMoveKey( spep_2 + 184, 1, 149.2, -71.5 , 0 );
setMoveKey( spep_2 + 186-2, 1, 132.9, -63.5 , 0 );
setMoveKey( spep_2 + 188-2, 1, 117.4, -75.7 , 0 );
setMoveKey( spep_2 + 190-2, 1, 119.4, -63.7 , 0 );
setMoveKey( spep_2 + 192-2, 1, 107.7, -76.2 , 0 );
setMoveKey( spep_2 + 194-2, 1, 115.5, -66 , 0 );
setMoveKey( spep_2 + 196-2, 1, 111.9, -77.1 , 0 );
setMoveKey( spep_2 + 198-2, 1, 127.8, -66.4 , 0 );
setMoveKey( spep_2 + 200-2, 1, 157.6, -74.6 , 0 );
setMoveKey( spep_2 + 202-2, 1, 201.4, -68 , 0 );
setMoveKey( spep_2 + 204-2, 1, 244, -77.3 , 0 );
setMoveKey( spep_2 + 206-2, 1, 307.6, -69.8 , 0 );
setMoveKey( spep_2 + 208-2, 1, 371.3, -77.9 , 0 );
setMoveKey( spep_2 + 210-2, 1, 459.8, -69.7 , 0 );
setMoveKey( spep_2 + 212-2, 1, 551.5, -79.1 , 0 );
setMoveKey( spep_2 + 214-2, 1, 669.2, -72.2 , 0 );
setMoveKey( spep_2 + 216-2, 1, 797.3, -73 , 0 );
setMoveKey( spep_2 + 218-2, 1, 939.4, -74 , 0 );
setMoveKey( spep_2 + 220-2, 1, 1092.6, -75 , 0 );
setMoveKey( spep_2 + 228-2, 1, 1092.6, -75 , 0 );
setMoveKey( spep_2 + 230-2, 1, 1092.7, -75 , 0 );
setMoveKey( spep_2 + 234-2, 1, 1092.7, -75 , 0 );
setMoveKey( spep_2 + 236-2, 1, 1362.2, -90.8 , 0 );
setMoveKey( spep_2 + 238-2, 1, 1908.2, -79.6 , 0 );
setMoveKey( spep_2 + 240-2, 1, 1809.4, -84.9 , 0 );
setMoveKey( spep_2 + 242-2, 1, 1724.1, -73.4 , 0 );
setMoveKey( spep_2 + 244-2, 1, 1710.9, -82.2 , 0 );
setMoveKey( spep_2 + 246-2, 1, 1532.8, -72.2 , 0 );
setMoveKey( spep_2 + 248-2, 1, 1339.1, -83.2 , 0 );
setMoveKey( spep_2 + 250, 1, 1161.2, -72.8 , 0 );
--setMoveKey( spep_2 + 252, 1, 967.9, -83.7 , 0 );
setMoveKey( spep_2 + 254+4, 1, 743.4, -72.9 , 0 );
setMoveKey( spep_2 + 256+4, 1, 549.4, -83.7 , 0 );
setMoveKey( spep_2 + 258+4, 1, 410.1, -72.9 , 0 );
setMoveKey( spep_2 + 260+4, 1, 291.3, -83.7 , 0 );
setMoveKey( spep_2 + 262+4, 1, 217.3, -72.9 , 0 );
setMoveKey( spep_2 + 264+4, 1, 153.7, -83.7 , 0 );
setMoveKey( spep_2 + 266+4, 1, 124.8, -72.9 , 0 );
--setMoveKey( spep_2 + 268+2, 1, 96.3, -83.7 , 0 );
setMoveKey( spep_2 + 270+1, 1, 92.5, -72.9 , 0 );
--setMoveKey( spep_2 + 273-2, 1, 79, -83.7 , 0 );
setMoveKey( spep_2 + 274-2, 1, 127.3, -64.8 , 0 );---
setMoveKey( spep_2 + 276-2, 1, 204, -74.6 , 0 );
setMoveKey( spep_2 + 278-2, 1, 263.2, -65.9 , 0 );
setMoveKey( spep_2 + 280-2, 1, 340.5, -73.5 , 0 );
setMoveKey( spep_2 + 282-2, 1, 426.8, -67 , 0 );
setMoveKey( spep_2 + 284-2, 1, 506.5, -72.3 , 0 );
setMoveKey( spep_2 + 286-2, 1, 590.8, -68.1 , 0 );
setMoveKey( spep_2 + 288-2, 1, 670.3, -71.5 , 0 );
setMoveKey( spep_2 + 290-2, 1, 754.8, -68.7 , 0 );
setMoveKey( spep_2 + 292-2, 1, 835.9, -70.2 , 0 );
setMoveKey( spep_2 + 294-2, 1, 918.2, -70.2 , 0 );
setMoveKey( spep_2 + 306, 1, 918.2, -70.2 , 0 );
--setMoveKey( spep_2 + 306, 1, -305.1, 3.5 , 0 );
--setMoveKey( spep_2 + 308, 1, -358.8, 3.5 , 0 );
--setMoveKey( spep_2 + 310, 1, -407.8, 3.5 , 0 );
--setMoveKey( spep_2 + 312, 1, -452.1, 3.6 , 0 );
--setMoveKey( spep_2 + 314, 1, -491.8, 3.6 , 0 );
--setMoveKey( spep_2 + 316, 1, -526.8, 3.6 , 0 );
--setMoveKey( spep_2 + 318, 1, -358.8, 3.5 , 0 );

setScaleKey( spep_2 + 0, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 22, 1, 1.27, 1.27 );--25
setScaleKey( spep_2 + 23, 1, 1.72, 1.72 );--26
setScaleKey( spep_2 + 24, 1, 1.72, 1.72 );--26
setScaleKey( spep_2 + 28, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 30, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 52, 1, 1.27, 1.27 );--54
setScaleKey( spep_2 + 53, 1, 1.72, 1.72 );--56
setScaleKey( spep_2 + 54, 1, 1.72, 1.72 );--56
setScaleKey( spep_2 + 58, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 60, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 80, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 82, 1, 1.59, 1.59 );
setScaleKey( spep_2 + 84, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 86, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 94, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 96, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 98, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 100, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 102, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 104, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 106, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 108, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 110, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 112, 1, 1.27, 1.27 );
--setScaleKey( spep_2 + 115, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 113, 1, 1.89, 1.89 );--116
setScaleKey( spep_2 + 114, 1, 1.89, 1.89 );--116
setScaleKey( spep_2 + 118, 1, 1.61, 1.61 );
setScaleKey( spep_2 + 120, 1, 1.33, 1.33 );
setScaleKey( spep_2 + 155, 1, 1.33, 1.33 );
setScaleKey( spep_2 + 156, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 198, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 200, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 206, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 208, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 210, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 212, 1, 1.24, 1.24 );
setScaleKey( spep_2 + 214, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 216, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 218, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 220, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 234, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 236, 1, 1.59, 1.59 );
setScaleKey( spep_2 + 238, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 240, 1, 1.33, 1.33 );
setScaleKey( spep_2 + 242, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 270, 1, 1.27, 1.27 );--173
setScaleKey( spep_2 + 271, 1, 1.72, 1.72 );--174
setScaleKey( spep_2 + 272, 1, 1.72, 1.72 );--174
setScaleKey( spep_2 + 276, 1, 1.49, 1.49 );
setScaleKey( spep_2 + 278, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 306, 1, 1.27, 1.27 );--318

setRotateKey( spep_2 + 0, 1, 5 );
setRotateKey( spep_2 + 22, 1, 5 );--25
setRotateKey( spep_2 + 23, 1, -23 );--26
setRotateKey( spep_2 + 24, 1, -23 );--26
setRotateKey( spep_2 + 28, 1, -22.7 );
setRotateKey( spep_2 + 30, 1, -22.4 );
setRotateKey( spep_2 + 32, 1, -22 );
setRotateKey( spep_2 + 34, 1, -21.7 );
setRotateKey( spep_2 + 36, 1, -21.4 );
setRotateKey( spep_2 + 38, 1, -21.1 );
setRotateKey( spep_2 + 40, 1, -20.8 );
setRotateKey( spep_2 + 42, 1, -20.5 );
setRotateKey( spep_2 + 44, 1, -20.1 );
setRotateKey( spep_2 + 46, 1, -19.8 );
setRotateKey( spep_2 + 48, 1, -19.5 );
setRotateKey( spep_2 + 50, 1, -19.2 );
setRotateKey( spep_2 + 52, 1, -18.9 );
setRotateKey( spep_2 + 54, 1, -18.6 );
setRotateKey( spep_2 + 56, 1, -18.3 );
setRotateKey( spep_2 + 80, 1, -18.3 );
setRotateKey( spep_2 + 82, 1, -4 );
setRotateKey( spep_2 + 92, 1, -4 );
setRotateKey( spep_2 + 94, 1, 1 );
setRotateKey( spep_2 + 96, 1, -1.5 );
setRotateKey( spep_2 + 98, 1, 1 );
setRotateKey( spep_2 + 100, 1, -4 );
setRotateKey( spep_2 + 112, 1, -4 );--115
setRotateKey( spep_2 + 113, 1, 9.3 );--116
setRotateKey( spep_2 + 114, 1, 9.3 );--116
setRotateKey( spep_2 + 155, 1, 9.3 );
setRotateKey( spep_2 + 156, 1, 0 );
setRotateKey( spep_2 + 305, 1, 0 );
setRotateKey( spep_2 + 306, 1, 5 );
--setRotateKey( spep_2 + 318, 1, 5 );

--SE
playSe( spep_2+24 , 1009);-- ぱんち
playSe( spep_2+52 , 1010);-- ぱんち
playSe( spep_2+78 , 1009);-- ぱんち
playSe( spep_2+94 , 1000);-- ぱんち
playSe( spep_2+104 , 1001);-- ぱんち
playSe( spep_2+112 , 1011);-- けり
playSe( spep_2+156 , 1013);-- 立て直す
playSe( spep_2+184 , 1052);-- 立て直す
--playSe( spep_2+236 , 1003);-- 手の動き
playSe( spep_2+236 , 44);-- なんか近く
playSe( spep_2+274 , 1011);-- 当たる

-- ** エフェクト等 ** --
entryFade(spep_2+232, 0, 6, 2,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_2+268, 0, 6, 2,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_2+312, 4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--黒背景
entryFadeBg(spep_2, 0, 320, 0, 0, 0, 0, 200);  -- 黒　背

--次の準備
spep_3=spep_2+320;

------------------------------------------------------
--ラスト
------------------------------------------------------
--エフェクト
surpise=entryEffect(spep_3,SP_03x,0x100,-1,0,0,0);
setEffMoveKey( spep_3 + 0, surpise, 0, 0 , 0 );
setEffMoveKey( spep_3 + 200, surpise, 0, 0 , 0 );

setEffScaleKey(spep_3,surpise,-1.0,1.0);
setEffScaleKey(spep_3+200,surpise,-1.0,1.0);

setEffRotateKey(spep_3,surpise,0);
setEffRotateKey(spep_3+200,surpise,0);

setEffAlphaKey(spep_3,surpise,255);
setEffAlphaKey(spep_3+200,surpise,255);


--集中線
shuchusen3 = entryEffectLife( spep_3 + 0,  906, 200, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_3 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_3 + 200, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen3, 1.41, 2 );
setEffScaleKey( spep_3 + 200, shuchusen3, 1.41, 2 );

setEffRotateKey( spep_3 + 0, shuchusen3, 180 );
setEffRotateKey( spep_3 + 200, shuchusen3, 180 );

setEffAlphaKey( spep_3 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_3 + 200, shuchusen3, 255 );

--SE
playSe( spep_3 , 44);-- ええぇ…
playSe( spep_3+74 , 1003);-- 振り返る

--黒背景
entryFadeBg(spep_3, 0, 200, 0, 0, 0, 0, 200);  -- 黒　背

-- ダメージ表示
dealDamage(spep_3+16);
entryFade( spep_3+180, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_3+196);

end
