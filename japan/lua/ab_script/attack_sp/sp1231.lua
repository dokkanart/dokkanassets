--1014160_マイ(未来)_決死の奇襲攻撃
--sp_effect_a8_00032
--スコープで見てるシーンラストの座標を首元に設定する
--   →餃子とか頭の上を擦りそうでとても不安なんなんだが…
--プライオリティとか間違ってらごめんね

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
SP_01=	152395	;--	スコープ(前)
SP_02=	152396	;--	ライフル撃ち
SP_03=	152398	;--	向かうライフルの弾
SP_04=	152399	;--	抜けた後のライフルの弾
SP_05=	152400	;--	ランチャー構え
SP_06=	152402	;--	ランチャー発動
SP_07=	152404	;--	向かうランチャー弾
SP_08=	152405	;--	背景1
SP_09=	152406	;--	背景2
SP_10=	152407	;--	背景3

--敵
SP_01x=	152395	;--	スコープ(前)	
SP_02x=	152397	;--	ライフル撃ち	(敵)
SP_03x=	152398	;--	向かうライフルの弾	
SP_04x=	152399	;--	抜けた後のライフルの弾	
SP_05x=	152401	;--	ランチャー構え	(敵)
SP_06x=	152403	;--	ランチャー発動	(敵)
SP_07x=	152404	;--	向かうランチャー弾	
SP_08x=	152405	;--	背景1
SP_09x=	152406	;--	背景2
SP_10x=	152407	;--	背景3

multi_frm = 2;

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);
--[[
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
]]
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
-- スコープで敵を覗く
------------------------------------------------------

spep_0=0;

--エフェクト
scope_f=entryEffectLife(spep_0,SP_01,200,0x100,-1,0,0,0);
setEffMoveKey( spep_0 + 0, scope_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 200, scope_f, 0, 0 , 0 );

setEffScaleKey(spep_0,scope_f,1.0,1.0);
setEffScaleKey(spep_0+200,scope_f,1.0,1.0);

setEffRotateKey(spep_0,scope_f,0);
setEffRotateKey(spep_0+200,scope_f,0);

setEffAlphaKey(spep_0,scope_f,255);
setEffAlphaKey(spep_0+200,scope_f,255);

--エフェクト
scope_b=entryEffectLife(spep_0,SP_08,200,0x80,-1,0,0,0);
setEffMoveKey( spep_0 + 0, scope_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 200, scope_b, 0, 0 , 0 );

setEffScaleKey(spep_0,scope_b,1.0,1.0);
setEffScaleKey(spep_0+200,scope_b,1.0,1.0);

setEffRotateKey(spep_0,scope_b,0);
setEffRotateKey(spep_0+200,scope_b,0);

setEffAlphaKey(spep_0,scope_b,100);
setEffAlphaKey(spep_0+200,scope_b,100);


--敵の動き
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 198, 1, 0 );
changeAnime( spep_0 + 0, 1, 100 );

setMoveKey( spep_0 + 0, 1, -68.1, -75.5 , 0 );
setMoveKey( spep_0 + 2, 1, -59.4, -69.8 , 0 );
setMoveKey( spep_0 + 4, 1, -50.4, -64.8 , 0 );
setMoveKey( spep_0 + 6, 1, -41, -60.5 , 0 );
setMoveKey( spep_0 + 8, 1, -31.5, -56.6 , 0 );
setMoveKey( spep_0 + 10, 1, -21.7, -53.4 , 0 );
setMoveKey( spep_0 + 12, 1, -11.8, -50.7 , 0 );
setMoveKey( spep_0 + 14, 1, -6.9, -49.9 , 0 );
setMoveKey( spep_0 + 16, 1, -2, -49 , 0 );
setMoveKey( spep_0 + 18, 1, 3, -48.3 , 0 );
setMoveKey( spep_0 + 20, 1, 7.9, -47.5 , 0 );
setMoveKey( spep_0 + 22, 1, 12.9, -46.9 , 0 );
setMoveKey( spep_0 + 24, 1, 17.8, -46.3 , 0 );
setMoveKey( spep_0 + 26, 1, 22.9, -45.9 , 0 );
setMoveKey( spep_0 + 28, 1, 27.9, -45.6 , 0 );
setMoveKey( spep_0 + 30, 1, 32.9, -45.4 , 0 );
setMoveKey( spep_0 + 32, 1, 38, -45.4 , 0 );
setMoveKey( spep_0 + 34, 1, 43, -45.6 , 0 );
setMoveKey( spep_0 + 36, 1, 48, -46.1 , 0 );
setMoveKey( spep_0 + 38, 1, 52.7, -47.7 , 0 );
setMoveKey( spep_0 + 40, 1, 53.8, -52 , 0 );
setMoveKey( spep_0 + 42, 1, 46.5, -56.5 , 0 );
setMoveKey( spep_0 + 44, 1, 37.7, -58.6 , 0 );
setMoveKey( spep_0 + 46, 1, 28.9, -60 , 0 );
setMoveKey( spep_0 + 48, 1, 20, -61 , 0 );
setMoveKey( spep_0 + 50, 1, 11.1, -61.6 , 0 );
setMoveKey( spep_0 + 52, 1, 2.3, -62.1 , 0 );
setMoveKey( spep_0 + 54, 1, -6.6, -62.5 , 0 );
setMoveKey( spep_0 + 56, 1, -15.5, -62.7 , 0 );
setMoveKey( spep_0 + 58, 1, -24.5, -62.7 , 0 );
setMoveKey( spep_0 + 60, 1, -33.4, -62.7 , 0 );
setMoveKey( spep_0 + 62, 1, -42.3, -62.4 , 0 );
setMoveKey( spep_0 + 64, 1, -51.2, -61.9 , 0 );
setMoveKey( spep_0 + 66, 1, -60, -61.1 , 0 );
setMoveKey( spep_0 + 68, 1, -68.5, -58.6 , 0 );
setMoveKey( spep_0 + 70, 1, -68.1, -53.2 , 0 );
setMoveKey( spep_0 + 72, 1, -66.4, -48.1 , 0 );
setMoveKey( spep_0 + 74, 1, -63.6, -43.3 , 0 );
setMoveKey( spep_0 + 76, 1, -59.8, -39.4 , 0 );
setMoveKey( spep_0 + 78, 1, -55.5, -36.2 , 0 );
setMoveKey( spep_0 + 80, 1, -50.8, -33.4 , 0 );
setMoveKey( spep_0 + 82, 1, -45.9, -31.2 , 0 );
setMoveKey( spep_0 + 84, 1, -40.8, -29.3 , 0 );
setMoveKey( spep_0 + 86, 1, -35.6, -28.7 , 0 );
setMoveKey( spep_0 + 88, 1, -30.3, -28.4 , 0 );
setMoveKey( spep_0 + 90, 1, -25, -26.3 , 0 );
setMoveKey( spep_0 + 92, 1, -19.7, -26.3 , 0 );
setMoveKey( spep_0 + 94, 1, -14.3, -24.6 , 0 );
setMoveKey( spep_0 + 96, 1, -8.9, -23.9 , 0 );
setMoveKey( spep_0 + 98, 1, -4, -23.7 , 0 );
setMoveKey( spep_0 + 100, 1, 0.8, -23.5 , 0 );
setMoveKey( spep_0 + 102, 1, 5.6, -23.6 , 0 );
setMoveKey( spep_0 + 104, 1, 10.5, -23.8 , 0 );
setMoveKey( spep_0 + 106, 1, 15.3, -24.3 , 0 );
setMoveKey( spep_0 + 108, 1, 20.1, -25.1 , 0 );
setMoveKey( spep_0 + 110, 1, 24.9, -25 , 0 );
setMoveKey( spep_0 + 112, 1, 29.6, -27.2 , 0 );
setMoveKey( spep_0 + 114, 1, 34.3, -28.7 , 0 );
setMoveKey( spep_0 + 116, 1, 38.8, -29.4 , 0 );
setMoveKey( spep_0 + 118, 1, 43.3, -31.4 , 0 );
setMoveKey( spep_0 + 120, 1, 47.6, -33.7 , 0 );
setMoveKey( spep_0 + 122, 1, 51.7, -36.4 , 0 );
setMoveKey( spep_0 + 124, 1, 55.4, -39.4 , 0 );
setMoveKey( spep_0 + 126, 1, 57.7, -43.3 , 0 );
setMoveKey( spep_0 + 128, 1, 54.2, -42.9 , 0 );
setMoveKey( spep_0 + 130, 1, 50.9, -41.6 , 0 );
setMoveKey( spep_0 + 132, 1, 47.7, -39.9 , 0 );
setMoveKey( spep_0 + 134, 1, 44.5, -38.1 , 0 );
setMoveKey( spep_0 + 136, 1, 41.4, -36.1 , 0 );
setMoveKey( spep_0 + 138, 1, 38.4, -34.2 , 0 );
setMoveKey( spep_0 + 140, 1, 35.4, -32.1 , 0 );
setMoveKey( spep_0 + 142, 1, 32.4, -32.1 , 0 );
setMoveKey( spep_0 + 144, 1, 29.5, -32.1 , 0 );
setMoveKey( spep_0 + 146, 1, 26.5, -34.2 , 0 );
setMoveKey( spep_0 + 148, 1, 24.3, -35.6 , 0 );
setMoveKey( spep_0 + 150, 1, 22.3, -36.8 , 0 );
setMoveKey( spep_0 + 152, 1, 20.2, -38.1 , 0 );
setMoveKey( spep_0 + 154, 1, 18.2, -37.4 , 0 );
setMoveKey( spep_0 + 156, 1, 16.2, -36.6 , 0 );
setMoveKey( spep_0 + 158, 1, 14.1, -35.9 , 0 );
setMoveKey( spep_0 + 160, 1, 12, -35.2 , 0 );
setMoveKey( spep_0 + 162, 1, 9.9, -35.3 , 0 );
setMoveKey( spep_0 + 164, 1, 11, -35.3 , 0 );
setMoveKey( spep_0 + 166, 1, 12.1, -34.2 , 0 );
setMoveKey( spep_0 + 168, 1, 13.2, -34.5 , 0 );
setMoveKey( spep_0 + 170, 1, 14.3, -34.9 , 0 );
setMoveKey( spep_0 + 172, 1, 15.4, -35.6 , 0 );
setMoveKey( spep_0 + 174, 1, 16.4, -36.2 , 0 );
setMoveKey( spep_0 + 176, 1, 17.4, -36.7 , 0 );
setMoveKey( spep_0 + 178, 1, 18.2, -37 , 0 );
setMoveKey( spep_0 + 180, 1, 18.9, -38.1 , 0 );
setMoveKey( spep_0 + 182, 1, 19.4, -38.1 , 0 );
setMoveKey( spep_0 + 184, 1, 19.5, -39 , 0 );
setMoveKey( spep_0 + 186, 1, 19.5, -39.9 , 0 );
setMoveKey( spep_0 + 188, 1, 19.5, -40.8 , 0 );
setMoveKey( spep_0 + 190, 1, 19.5, -41.7 , 0 );
setMoveKey( spep_0 + 192, 1, 19.6, -41.7 , 0 );
setMoveKey( spep_0 + 194, 1, 20, -41.7 , 0 );
setMoveKey( spep_0 + 196, 1, 20.6,-40.5 , 0 );
setMoveKey( spep_0 + 198, 1, 22.2, -40.5 , 0 );

setScaleKey( spep_0 + 0, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 2, 1, 1.84, 1.84 );
setScaleKey( spep_0 + 4, 1, 1.88, 1.88 );
setScaleKey( spep_0 + 6, 1, 1.93, 1.93 );
setScaleKey( spep_0 + 8, 1, 1.97, 1.97 );
setScaleKey( spep_0 + 10, 1, 2.01, 2.01 );
setScaleKey( spep_0 + 12, 1, 2.05, 2.05 );
setScaleKey( spep_0 + 14, 1, 2.09, 2.09 );
setScaleKey( spep_0 + 16, 1, 2.13, 2.13 );
setScaleKey( spep_0 + 18, 1, 2.17, 2.17 );
setScaleKey( spep_0 + 20, 1, 2.22, 2.22 );
setScaleKey( spep_0 + 22, 1, 2.26, 2.26 );
setScaleKey( spep_0 + 24, 1, 2.3, 2.3 );
setScaleKey( spep_0 + 26, 1, 2.3, 2.3 );
setScaleKey( spep_0 + 28, 1, 2.31, 2.31 );
setScaleKey( spep_0 + 30, 1, 2.31, 2.31 );
setScaleKey( spep_0 + 32, 1, 2.32, 2.32 );
setScaleKey( spep_0 + 34, 1, 2.32, 2.32 );
setScaleKey( spep_0 + 36, 1, 2.33, 2.33 );
setScaleKey( spep_0 + 38, 1, 2.33, 2.33 );
setScaleKey( spep_0 + 40, 1, 2.34, 2.34 );
setScaleKey( spep_0 + 42, 1, 2.34, 2.34 );
setScaleKey( spep_0 + 44, 1, 2.35, 2.35 );
setScaleKey( spep_0 + 48, 1, 2.35, 2.35 );
setScaleKey( spep_0 + 50, 1, 2.36, 2.36 );
setScaleKey( spep_0 + 52, 1, 2.36, 2.36 );
setScaleKey( spep_0 + 54, 1, 2.37, 2.37 );
setScaleKey( spep_0 + 56, 1, 2.37, 2.37 );
setScaleKey( spep_0 + 58, 1, 2.38, 2.38 );
setScaleKey( spep_0 + 60, 1, 2.38, 2.38 );
setScaleKey( spep_0 + 62, 1, 2.39, 2.39 );
setScaleKey( spep_0 + 64, 1, 2.39, 2.39 );
setScaleKey( spep_0 + 66, 1, 2.4, 2.4 );
setScaleKey( spep_0 + 198, 1, 2.4, 2.4 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 198, 1, 0 );

--黒背景
entryFadeBg(spep_0, 0, 200, 0, 0, 0, 0, 255);  -- 黒　背


--SE
playSe( spep_0, 1019);--BGM的な
playSe( spep_0+60, 1019);--BGM的な
playSe( spep_0+120, 1019);--BGM的な
SE1=playSe( spep_0+180, 1019);--BGM的な

stopSe(200,SE1,0)
-- ** エフェクト等 ** --
entryFade(spep_0+192, 4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_1=spep_0+200;

------------------------------------------------------
-- 狙撃
------------------------------------------------------
--エフェクト
sniper=entryEffectLife(spep_1,SP_02,80,0x100,-1,0,0,0);
setEffMoveKey( spep_1 + 0, sniper, 0, 0 , 0 );
setEffMoveKey( spep_1 + 80, sniper, 0, 0 , 0 );

setEffScaleKey(spep_1,sniper,1.0,1.0);
setEffScaleKey(spep_1+80,sniper,1.0,1.0);

setEffRotateKey(spep_1,sniper,0);
setEffRotateKey(spep_1+80,sniper,0);

setEffAlphaKey(spep_1,sniper,255);
setEffAlphaKey(spep_1+80,sniper,255);

--エフェクト(背景)
sniper_b=entryEffectLife(spep_1,SP_09,80,0x80,-1,0,0,0);
setEffMoveKey( spep_1 + 0, sniper_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 80, sniper_b, 0, 0 , 0 );

setEffScaleKey(spep_1,sniper_b,1.0,1.0);
setEffScaleKey(spep_1+80,sniper_b,1.0,1.0);

setEffRotateKey(spep_1,sniper_b,0);
setEffRotateKey(spep_1+80,sniper_b,0);

setEffAlphaKey(spep_1,sniper_b,80);
setEffAlphaKey(spep_1+80,sniper_b,80);

--集中線
shuchusen1 = entryEffectLife( spep_1 + 0,  906, 50, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_1 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_1 + 50, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen1, 1.4, 1.75 );
setEffScaleKey( spep_1 + 50, shuchusen1, 1.4, 1.75 );

setEffRotateKey( spep_1 + 0, shuchusen1, 0 );
setEffRotateKey( spep_1 + 50, shuchusen1, 0 );

setEffAlphaKey( spep_1 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_1 + 50, shuchusen1, 255 );

--文字エントリー
ctdon = entryEffectLife( spep_1 + 50,  10019, 26, 0x100, -1, 0, -112.9, 186 );--ドン
setEffMoveKey( spep_1 + 50, ctdon, -112.9, 186 , 0 );
setEffMoveKey( spep_1 + 56, ctdon, -125.6, 204.2 , 0 );
setEffMoveKey( spep_1 + 58, ctdon, -117.5, 219.2 , 0 );
setEffMoveKey( spep_1 + 60, ctdon, -126.6, 227 , 0 );
setEffMoveKey( spep_1 + 62, ctdon, -114.3, 219 , 0 );
setEffMoveKey( spep_1 + 64, ctdon, -126.5, 218.2 , 0 );
setEffMoveKey( spep_1 + 66, ctdon, -120.1, 225.9 , 0 );
setEffMoveKey( spep_1 + 68, ctdon, -119.9, 213.4 , 0 );
setEffMoveKey( spep_1 + 70, ctdon, -124, 227.1 , 0 );
setEffMoveKey( spep_1 + 72, ctdon, -118.8, 217.7 , 0 );
setEffMoveKey( spep_1 + 74, ctdon, -125.7, 221.6 , 0 );
setEffMoveKey( spep_1 + 76, ctdon, -125.7, 221.6 , 0 );

setEffScaleKey( spep_1 + 50, ctdon, 1.29, 1.29 );
setEffScaleKey( spep_1 + 60, ctdon, 1.29, 1.29 );
setEffScaleKey( spep_1 + 62, ctdon, 1.63, 1.63 );
setEffScaleKey( spep_1 + 64, ctdon, 1.98, 1.98 );
setEffScaleKey( spep_1 + 66, ctdon, 2, 2 );
--setEffScaleKey( spep_1 + 62, ctdon, 2.02, 2.02 );
--setEffScaleKey( spep_1 + 68, ctdon, 2.04, 2.04 );
setEffScaleKey( spep_1 + 67, ctdon, 2.04, 2.04 );
setEffScaleKey( spep_1 + 68, ctdon, 2.05, 2.05 );
setEffScaleKey( spep_1 + 70, ctdon, 2.05, 2.05 );
setEffScaleKey( spep_1 + 72, ctdon, 2.06, 2.06 );
setEffScaleKey( spep_1 + 74, ctdon, 2.07, 2.07 );
setEffScaleKey( spep_1 + 76, ctdon, 2.07, 2.07 );

--[[
setEffScaleKey( spep_1 + 54, ctdon, 1.29, 1.29 );
setEffScaleKey( spep_1 + 56, ctdon, 1.63, 1.63 );
setEffScaleKey( spep_1 + 58, ctdon, 1.98, 1.98 );
setEffScaleKey( spep_1 + 60, ctdon, 2, 2 );
setEffScaleKey( spep_1 + 62, ctdon, 2.02, 2.02 );
setEffScaleKey( spep_1 + 64, ctdon, 2.04, 2.04 );
setEffScaleKey( spep_1 + 66, ctdon, 2.04, 2.04 );
setEffScaleKey( spep_1 + 68, ctdon, 2.05, 2.05 );
setEffScaleKey( spep_1 + 70, ctdon, 2.05, 2.05 );
setEffScaleKey( spep_1 + 72, ctdon, 2.06, 2.06 );
setEffScaleKey( spep_1 + 74, ctdon, 2.07, 2.07 );
setEffScaleKey( spep_1 + 76, ctdon, 2.07, 2.07 );
]]--

setEffRotateKey( spep_1 + 50, ctdon, -0.8 );
setEffRotateKey( spep_1 + 56, ctdon, -0.3 );
setEffRotateKey( spep_1 + 58, ctdon, 0.3 );
setEffRotateKey( spep_1 + 76, ctdon, 0.3 );

setEffAlphaKey( spep_1 + 50, ctdon, 255 );
setEffAlphaKey( spep_1 + 64, ctdon, 255 );
setEffAlphaKey( spep_1 + 66, ctdon, 213 );
setEffAlphaKey( spep_1 + 68, ctdon, 170 );
setEffAlphaKey( spep_1 + 70, ctdon, 128 );
setEffAlphaKey( spep_1 + 72, ctdon, 85 );
setEffAlphaKey( spep_1 + 74, ctdon, 42 );
setEffAlphaKey( spep_1 + 76, ctdon, 0 );

--流線(奥行き)
ryusen = entryEffectLife( spep_1 + 50,  921, 28, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_1 + 50, ryusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 78, ryusen, 0, 0 , 0 );

setEffScaleKey( spep_1 + 50, ryusen, 1.88, 1 );
setEffScaleKey( spep_1 + 78, ryusen, 1.88, 1 );

setEffRotateKey( spep_1 + 50, ryusen, 180 );
setEffRotateKey( spep_1 + 78, ryusen, 180 );

setEffAlphaKey( spep_1 + 50, ryusen, 255 );
setEffAlphaKey( spep_1 + 78, ryusen, 255 );

-- ** エフェクト等 ** --
entryFade(spep_1+46, 0, 4, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_1+72, 4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--SE
playSe( spep_1+20, 3);--キラーん


--黒背景
entryFadeBg(spep_1, 0, 80, 0, 0, 0, 0, 255);  -- 黒　背

--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

SP_dodge = spep_1+60 ; --エンドフェイズのフレーム数を置き換える

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
--SE
playSe( spep_1+52, 1014);--発射

--次の準備
spep_2=spep_1+80;

------------------------------------------------------
-- 着弾
------------------------------------------------------
--エフェクト
hit_f=entryEffect(spep_2,SP_03,0x100,-1,0,0,0);
setEffMoveKey( spep_2 + 0, hit_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 34, hit_f, 0, 0 , 0 );

setEffScaleKey(spep_2,hit_f,1.0,1.0);
setEffScaleKey(spep_2+34,hit_f,1.0,1.0);

setEffRotateKey(spep_2,hit_f,0);
setEffRotateKey(spep_2+34,hit_f,0);

setEffAlphaKey(spep_2,hit_f,255);
setEffAlphaKey(spep_2+34,hit_f,255);

--流線(奥行き)
ryusen2 = entryEffectLife( spep_2 ,  921, 68, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_2 , ryusen2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 68, ryusen2, 0, 0 , 0 );

setEffScaleKey( spep_2 , ryusen2, 1, 1 );
setEffScaleKey( spep_2 + 68, ryusen2, 1, 1 );

setEffRotateKey( spep_2 , ryusen2, 0 );
setEffRotateKey( spep_2 + 68, ryusen2, 0 );

setEffAlphaKey( spep_2 , ryusen2, 255 );
setEffAlphaKey( spep_2 + 68, ryusen2, 255 );


--エフェクト
hit_b=entryEffectLife(spep_2,SP_04,70,0x80,-1,0,0,0);
setEffMoveKey( spep_2 + 0, hit_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 70, hit_b, 0, 0 , 0 );

setEffScaleKey(spep_2,hit_b,1.0,1.0);
setEffScaleKey(spep_2+70,hit_b,1.0,1.0);

setEffRotateKey(spep_2,hit_b,0);
setEffRotateKey(spep_2+70,hit_b,0);

setEffAlphaKey(spep_2,hit_b,255);
setEffAlphaKey(spep_2+70,hit_b,255);

--エフェクト(背景)
hit_b2=entryEffectLife(spep_2,SP_09,70,0x80,-1,0,0,0);
setEffMoveKey( spep_2 + 0, hit_b2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 70, hit_b2, 0, 0 , 0 );

setEffScaleKey(spep_2,hit_b2,1.0,1.0);
setEffScaleKey(spep_2+70,hit_b2,1.0,1.0);

setEffRotateKey(spep_2,hit_b2,0);
setEffRotateKey(spep_2+70,hit_b2,0);

setEffAlphaKey(spep_2,hit_b2,80);
setEffAlphaKey(spep_2+70,hit_b2,80);

--敵の動き
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 68, 1, 0 );

changeAnime( spep_2 + 0, 1, 100 );
changeAnime( spep_2 + 22, 1, 108 );

setMoveKey( spep_2 + 0, 1, 363.2, -7 , 0 );
setMoveKey( spep_2 + 2, 1, 353.1, -2.5 , 0 );
setMoveKey( spep_2 + 4, 1, 329, -5.8 , 0 );
setMoveKey( spep_2 + 6, 1, 303.7, 0.1 , 0 );
setMoveKey( spep_2 + 8, 1, 277.4, -5 , 0 );
setMoveKey( spep_2 + 10, 1, 244.1, -4.2 , 0 );
setMoveKey( spep_2 + 12, 1, 229.4, 2.1 , 0 );
setMoveKey( spep_2 + 14, 1, 201.8, -2.7 , 0 );
setMoveKey( spep_2 + 16, 1, 179.3, 4.7 , 0 );
setMoveKey( spep_2 + 18, 1, 162, -2.5 , 0 );
setMoveKey( spep_2 + 21, 1, 148.2, 4.7 , 0 );
setMoveKey( spep_2 + 22, 1, 111, 7 , 0 );
setMoveKey( spep_2 + 24, 1, 111, 7 , 0 );
setMoveKey( spep_2 + 26, 1, 124.1, 7 , 0 );
setMoveKey( spep_2 + 28, 1, 135.2, 7 , 0 );
setMoveKey( spep_2 + 30, 1, 144.3, 7 , 0 );
setMoveKey( spep_2 + 32, 1, 151.4, 6.9 , 0 );
setMoveKey( spep_2 + 34, 1, 156.5, 6.9 , 0 );
setMoveKey( spep_2 + 36, 1, 159.5, 6.9 , 0 );
setMoveKey( spep_2 + 38, 1, 160.5, 6.9 , 0 );
setMoveKey( spep_2 + 40, 1, 161.4, 6.9 , 0 );
setMoveKey( spep_2 + 42, 1, 162.3, 6.9 , 0 );
setMoveKey( spep_2 + 44, 1, 163.2, 6.9 , 0 );
setMoveKey( spep_2 + 46, 1, 164.1, 6.9 , 0 );
setMoveKey( spep_2 + 48, 1, 165, 6.9 , 0 );
setMoveKey( spep_2 + 50, 1, 165.9, 6.9 , 0 );
setMoveKey( spep_2 + 52, 1, 166.8, 6.9 , 0 );
setMoveKey( spep_2 + 54, 1, 167.6, 6.9 , 0 );
setMoveKey( spep_2 + 56, 1, 168.5, 6.9 , 0 );
setMoveKey( spep_2 + 58, 1, 169.4, 6.9 , 0 );
setMoveKey( spep_2 + 60, 1, 170.3, 6.9 , 0 );
setMoveKey( spep_2 + 62, 1, 171.2, 6.9 , 0 );
setMoveKey( spep_2 + 64, 1, 172.1, 6.9 , 0 );
setMoveKey( spep_2 + 66, 1, 173, 6.9 , 0 );
setMoveKey( spep_2 + 68, 1, 173.9, 6.9 , 0 );

setScaleKey( spep_2 + 0, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 2, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 4, 1, 1.16, 1.16 );
setScaleKey( spep_2 + 6, 1, 1.24, 1.24 );
setScaleKey( spep_2 + 8, 1, 1.34, 1.34 );
setScaleKey( spep_2 + 10, 1, 1.46, 1.46 );
setScaleKey( spep_2 + 12, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 14, 1, 1.58, 1.58 );
setScaleKey( spep_2 + 16, 1, 1.65, 1.65 );
setScaleKey( spep_2 + 18, 1, 1.71, 1.71 );
setScaleKey( spep_2 + 21, 1, 1.77, 1.77 );
setScaleKey( spep_2 + 22, 1, 1.92, 1.92 );
setScaleKey( spep_2 + 24, 1, 1.92, 1.92 );
setScaleKey( spep_2 + 26, 1, 1.89, 1.89 );
setScaleKey( spep_2 + 28, 1, 1.86, 1.86 );
setScaleKey( spep_2 + 30, 1, 1.83, 1.83 );
setScaleKey( spep_2 + 32, 1, 1.81, 1.81 );
setScaleKey( spep_2 + 34, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 36, 1, 1.79, 1.79 );
setScaleKey( spep_2 + 38, 1, 1.79, 1.79 );
setScaleKey( spep_2 + 40, 1, 1.78, 1.78 );
setScaleKey( spep_2 + 44, 1, 1.78, 1.78 );
setScaleKey( spep_2 + 46, 1, 1.77, 1.77 );
setScaleKey( spep_2 + 50, 1, 1.77, 1.77 );
setScaleKey( spep_2 + 52, 1, 1.76, 1.76 );
setScaleKey( spep_2 + 54, 1, 1.76, 1.76 );
setScaleKey( spep_2 + 56, 1, 1.75, 1.75 );
setScaleKey( spep_2 + 60, 1, 1.75, 1.75 );
setScaleKey( spep_2 + 62, 1, 1.74, 1.74 );
setScaleKey( spep_2 + 66, 1, 1.74, 1.74 );
setScaleKey( spep_2 + 68, 1, 1.73, 1.73 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 + 68, 1, 0 );

--文字エントリー
ctzuo = entryEffectLife( spep_2 + 22,  10012, 18, 0x100, -1, 0, -109.7, 211.7 );--ズオッ

setEffMoveKey( spep_2 + 22, ctzuo, -109.7, 211.7 , 0 );
setEffMoveKey( spep_2 + 26, ctzuo, -121.2, 236.9 , 0 );
setEffMoveKey( spep_2 + 28, ctzuo, -111.8, 258.7 , 0 );
setEffMoveKey( spep_2 + 30, ctzuo, -120.9, 266.9 , 0 );
setEffMoveKey( spep_2 + 32, ctzuo, -108.6, 259.3 , 0 );
setEffMoveKey( spep_2 + 34, ctzuo, -120.6, 258.9 , 0 );
setEffMoveKey( spep_2 + 36, ctzuo, -114.2, 266.9 , 0 );
setEffMoveKey( spep_2 + 38, ctzuo, -114, 254.6 , 0 );
setEffMoveKey( spep_2 + 40, ctzuo, -114, 254.8 , 0 );

setEffScaleKey( spep_2 + 22, ctzuo, 1.29, 1.29 );
setEffScaleKey( spep_2 + 26, ctzuo, 1.63, 1.63 );
setEffScaleKey( spep_2 + 28, ctzuo, 1.98, 1.98 );
setEffScaleKey( spep_2 + 30, ctzuo, 2, 2 );
setEffScaleKey( spep_2 + 32, ctzuo, 2.02, 2.02 );
setEffScaleKey( spep_2 + 34, ctzuo, 2.04, 2.04 );
setEffScaleKey( spep_2 + 36, ctzuo, 2.05, 2.05 );
setEffScaleKey( spep_2 + 38, ctzuo, 2.06, 2.06 );
setEffScaleKey( spep_2 + 40, ctzuo, 2.07, 2.07 );

setEffRotateKey( spep_2 + 22, ctzuo, -23.8 );
setEffRotateKey( spep_2 + 26, ctzuo, -23.3 );
setEffRotateKey( spep_2 + 28, ctzuo, -22.7 );
setEffRotateKey( spep_2 + 40, ctzuo, -22.7 );

setEffAlphaKey( spep_2 + 22, ctzuo, 255 );
setEffAlphaKey( spep_2 + 34, ctzuo, 255 );
setEffAlphaKey( spep_2 + 36, ctzuo, 170 );
setEffAlphaKey( spep_2 + 38, ctzuo, 85 );
setEffAlphaKey( spep_2 + 40, ctzuo, 0 );

-- ** エフェクト等 ** --
entryFade(spep_2+18, 0, 2, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_2+62, 4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--SE
playSe( spep_2+18, 1002);--ヒット

--黒背景
entryFadeBg(spep_2, 0, 70, 0, 0, 0, 0, 255);  -- 黒　背

--次の準備
spep_3=spep_2+70;

------------------------------------------------------
-- 構える
------------------------------------------------------
--エフェクト
stand=entryEffectLife(spep_3,SP_05,100,0x100,-1,0,0,0);
setEffMoveKey( spep_3 + 0, stand, 0, 0 , 0 );
setEffMoveKey( spep_3 + 100, stand, 0, 0 , 0 );

setEffScaleKey(spep_3,stand,1.0,1.0);
setEffScaleKey(spep_3+100,stand,1.0,1.0);

setEffRotateKey(spep_3,stand,0);
setEffRotateKey(spep_3+100,stand,0);

setEffAlphaKey(spep_3,stand,255);
setEffAlphaKey(spep_3+100,stand,255);

--エフェクト(背景)
stand_b=entryEffectLife(spep_3,SP_09,100,0x80,-1,0,0,0);
setEffMoveKey( spep_3 + 0, stand_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 100, stand_b, 0, 0 , 0 );

setEffScaleKey(spep_3,stand_b,1.0,1.0);
setEffScaleKey(spep_3+100,stand_b,1.0,1.0);

setEffRotateKey(spep_3,stand_b,0);
setEffRotateKey(spep_3+100,stand_b,0);

setEffAlphaKey(spep_3,stand_b,80);
setEffAlphaKey(spep_3+100,stand_b,80);

--集中線
shuchusen2 = entryEffectLife( spep_3 + 0,  906, 98, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_3 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_3 + 98, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen2, 1.4, 1.75 );
setEffScaleKey( spep_3 + 98, shuchusen2, 1.4, 1.75 );

setEffRotateKey( spep_3 + 0, shuchusen2, 0 );
setEffRotateKey( spep_3 + 98, shuchusen2, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_3 + 98, shuchusen2, 255 );

--顔カットイン
speff=entryEffect(spep_3+18,1504,0x100,-1,0,0,0);  --カットイン(顔)
setEffReplaceTexture(speff,3,2);  --カットイン差し替え
speff1=entryEffect(spep_3+18,1505,0x100,-1,0,0,0);  --カットイン(セリフ)
setEffReplaceTexture(speff1,4,5);  --セリフカットイン差し替え

--ゴゴゴ
ctgogo=entryEffectLife(spep_3+30,190006,70,0x100,-1,90,520);--ゴゴゴ

setEffMoveKey(spep_3+30,ctgogo,90,520,0);
setEffMoveKey(spep_3+100,ctgogo,90,520,0);

setEffScaleKey(spep_3+30, ctgogo, 0.7, 0.7);
setEffScaleKey(spep_3+100, ctgogo, 0.7, 0.7);

setEffAlphaKey( spep_3 + 30, ctgogo, 0 );
setEffAlphaKey( spep_3 + 31, ctgogo, 255 );
setEffAlphaKey( spep_3 + 32, ctgogo, 255 );
setEffAlphaKey( spep_3 + 100, ctgogo, 255 );

setEffRotateKey(spep_3+30,ctgogo,0);
setEffRotateKey(spep_3+100,ctgogo,0);

--黒背景
entryFadeBg(spep_3, 0, 100, 0, 0, 0, 0, 255);  -- 黒　背

--SE
playSe( spep_3+30, SE_04);--カットイン


-- ** エフェクト等 ** --
entryFade(spep_3+92, 4, 8, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_4=spep_3+100;

--------------------------------------
--カードカットイン(90F)
--------------------------------------

playSe(spep_4,SE_05);
shuchusen=entryEffectLife(spep_4,906,90,0x100,-1,0,0,0);   -- 集中線
setEffScaleKey(spep_4,shuchusen,1.6,1.6);

speff2=entryEffect(spep_4,1507,0x80,-1,0,0,0);   -- カード
setEffReplaceTexture(speff2,1,1);
setEffReplaceTexture(speff2,2,0);-- カード差し替え
setEffReplaceTexture(speff2,5,4);-- 技名テクスチャ差し替え

-- ** エフェクト等 ** --
entryFade(spep_4+85,3,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_5=spep_4+90;

------------------------------------------------------
-- 発射
------------------------------------------------------
--エフェクト
fieing=entryEffectLife(spep_5,SP_06,60,0x100,-1,0,0,0);
setEffMoveKey( spep_5 + 0, fieing, 0, 0 , 0 );
setEffMoveKey( spep_5 + 60, fieing, 0, 0 , 0 );

setEffScaleKey(spep_5,fieing,1.0,1.0);
setEffScaleKey(spep_5+60,fieing,1.0,1.0);

setEffRotateKey(spep_5,fieing,0);
setEffRotateKey(spep_5+60,fieing,0);

setEffAlphaKey(spep_5,fieing,255);
setEffAlphaKey(spep_5+60,fieing,255);

--流線(奥行き)
ryusen3 = entryEffectLife( spep_5 + 32,  921, 26, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_5 + 32, ryusen3, 0, 0 , 0 );
setEffMoveKey( spep_5 + 58, ryusen3, 0, 0 , 0 );

setEffScaleKey( spep_5 + 32, ryusen3, 1, 1 );
setEffScaleKey( spep_5 + 58, ryusen3, 1, 1 );

setEffRotateKey( spep_5 + 32, ryusen3, 180 );
setEffRotateKey( spep_5 + 58, ryusen3, 180 );

setEffAlphaKey( spep_5 + 32, ryusen3, 255 );
setEffAlphaKey( spep_5 + 58, ryusen3, 255 );

--エフェクト(背景)
fieing_b=entryEffectLife(spep_5,SP_09,60,0x80,-1,0,0,0);
setEffMoveKey( spep_5 + 0, fieing_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 60, fieing_b, 0, 0 , 0 );

setEffScaleKey(spep_5,fieing_b,1.0,1.0);
setEffScaleKey(spep_5+60,fieing_b,1.0,1.0);

setEffRotateKey(spep_5,fieing_b,0);
setEffRotateKey(spep_5+60,fieing_b,0);

setEffAlphaKey(spep_5,fieing_b,80);
setEffAlphaKey(spep_5+60,fieing_b,80);

--集中線
shuchusen3 = entryEffectLife( spep_5 + 0,  906, 28, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_5 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_5 + 28, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, shuchusen3, 1.4, 1.75 );
setEffScaleKey( spep_5 + 28, shuchusen3, 1.4, 1.75 );

setEffRotateKey( spep_5 + 0, shuchusen3, 0 );
setEffRotateKey( spep_5 + 28, shuchusen3, 0 );

setEffAlphaKey( spep_5 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_5 + 28, shuchusen3, 255 );

--文字エントリー
ctdon2 = entryEffectLife( spep_5 + 32,  10019, 16, 0x100, -1, 0, -112.9, 186 );--ドンッ

setEffMoveKey( spep_5 + 32, ctdon2, -112.9, 186 , 0 );
setEffMoveKey( spep_5 + 34, ctdon2, -125.6, 204.2 , 0 );
setEffMoveKey( spep_5 + 36, ctdon2, -117.5, 219.2 , 0 );
setEffMoveKey( spep_5 + 38, ctdon2, -126.6, 227 , 0 );
setEffMoveKey( spep_5 + 40, ctdon2, -114.3, 219 , 0 );
setEffMoveKey( spep_5 + 42, ctdon2, -126.5, 218.2 , 0 );
setEffMoveKey( spep_5 + 44, ctdon2, -120.1, 225.9 , 0 );
setEffMoveKey( spep_5 + 48, ctdon2, -119.9, 213.4 , 0 );

setEffScaleKey( spep_5 + 32, ctdon2, 1.29, 1.29 );
setEffScaleKey( spep_5 + 34, ctdon2, 1.63, 1.63 );
setEffScaleKey( spep_5 + 36, ctdon2, 1.98, 1.98 );
setEffScaleKey( spep_5 + 38, ctdon2, 2, 2 );
setEffScaleKey( spep_5 + 40, ctdon2, 2.02, 2.02 );
setEffScaleKey( spep_5 + 42, ctdon2, 2.04, 2.04 );
setEffScaleKey( spep_5 + 44, ctdon2, 2.05, 2.05 );
setEffScaleKey( spep_5 + 46, ctdon2, 2.06, 2.06 );
setEffScaleKey( spep_5 + 48, ctdon2, 2.07, 2.07 );

setEffRotateKey( spep_5 + 32, ctdon2, -0.8 );
setEffRotateKey( spep_5 + 34, ctdon2, -0.3 );
setEffRotateKey( spep_5 + 38, ctdon2, 0.3 );
setEffRotateKey( spep_5 + 48, ctdon2, 0.3 );

setEffAlphaKey( spep_5 + 32, ctdon2, 255 );
setEffAlphaKey( spep_5 + 42, ctdon2, 255 );
setEffAlphaKey( spep_5 + 44, ctdon2, 170 );
setEffAlphaKey( spep_5 + 46, ctdon2, 85 );
setEffAlphaKey( spep_5 + 48, ctdon2, 0 );

--黒背景
entryFadeBg(spep_5, 0, 60, 0, 0, 0, 0, 255);  -- 黒　背


--SE
playSe( spep_5+28, 1033);--発射オン

-- ** エフェクト等 ** --
entryFade(spep_5+28, 0, 4, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_5+52, 4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_6=spep_5+60;

------------------------------------------------------
-- 着弾
------------------------------------------------------
--エフェクト
landing=entryEffectLife(spep_6,SP_07,110,0x100,-1,0,0,0);
setEffMoveKey( spep_6 + 0, landing, 0, 0 , 0 );
setEffMoveKey( spep_6 + 110, landing, 0, 0 , 0 );

setEffScaleKey(spep_6,landing,1.0,1.0);
setEffScaleKey(spep_6+110,landing,1.0,1.0);

setEffRotateKey(spep_6,landing,0);
setEffRotateKey(spep_6+110,landing,0);

setEffAlphaKey(spep_6,landing,255);
setEffAlphaKey(spep_6+110,landing,255);

--エフェクト(背景)
landing_b=entryEffectLife(spep_6,SP_09,110,0x80,-1,0,0,0);
setEffMoveKey( spep_6 + 0, landing_b, 0, 0 , 0 );
setEffMoveKey( spep_6 + 110, landing_b, 0, 0 , 0 );

setEffScaleKey(spep_6,landing_b,1.0,1.0);
setEffScaleKey(spep_6+110,landing_b,1.0,1.0);

setEffRotateKey(spep_6,landing_b,0);
setEffRotateKey(spep_6+110,landing_b,0);

setEffAlphaKey(spep_6,landing_b,80);
setEffAlphaKey(spep_6+110,landing_b,80);

--文字エントリー
ctzudodo = entryEffectLife( spep_6 + 2,  10014, 20, 0x100, -1, 0, -58.6, -324.8 );--ズドドドッ

setEffMoveKey( spep_6 + 2, ctzudodo, -58.6, -324.8 , 0 );
setEffMoveKey( spep_6 + 4, ctzudodo, -51.4, -305.9 , 0 );
setEffMoveKey( spep_6 + 6, ctzudodo, -43.6, -318.4 , 0 );
setEffMoveKey( spep_6 + 8, ctzudodo, -36.5, -299.4 , 0 );
setEffMoveKey( spep_6 + 10, ctzudodo, -28.6, -312.1 , 0 );
setEffMoveKey( spep_6 + 12, ctzudodo, -21.5, -292.9 , 0 );
setEffMoveKey( spep_6 + 14, ctzudodo, -13.7, -305.7 , 0 );
setEffMoveKey( spep_6 + 16, ctzudodo, -6.5, -286.4 , 0 );
setEffMoveKey( spep_6 + 18, ctzudodo, 1.3, -299.4 , 0 );
setEffMoveKey( spep_6 + 20, ctzudodo, 8.5, -279.8 , 0 );
setEffMoveKey( spep_6 + 22, ctzudodo, 16.3, -293 , 0 );

setEffScaleKey( spep_6 + 2, ctzudodo, 2.75, 2.75 );
setEffScaleKey( spep_6 + 4, ctzudodo, 2.76, 2.76 );
setEffScaleKey( spep_6 + 6, ctzudodo, 2.78, 2.78 );
setEffScaleKey( spep_6 + 8, ctzudodo, 2.79, 2.79 );
setEffScaleKey( spep_6 + 10, ctzudodo, 2.81, 2.81 );
setEffScaleKey( spep_6 + 12, ctzudodo, 2.83, 2.83 );
setEffScaleKey( spep_6 + 14, ctzudodo, 2.84, 2.84 );
setEffScaleKey( spep_6 + 16, ctzudodo, 2.86, 2.86 );
setEffScaleKey( spep_6 + 18, ctzudodo, 2.87, 2.87 );
setEffScaleKey( spep_6 + 20, ctzudodo, 2.89, 2.89 );
setEffScaleKey( spep_6 + 22, ctzudodo, 2.9, 2.9 );

setEffRotateKey( spep_6 + 2, ctzudodo, 16.4 );
setEffRotateKey( spep_6 + 22, ctzudodo, 16.4 );

setEffAlphaKey( spep_6 + 2, ctzudodo, 23 );
setEffAlphaKey( spep_6 + 4, ctzudodo, 46 );
setEffAlphaKey( spep_6 + 6, ctzudodo, 70 );
setEffAlphaKey( spep_6 + 8, ctzudodo, 93 );
setEffAlphaKey( spep_6 + 10, ctzudodo, 116 );
setEffAlphaKey( spep_6 + 12, ctzudodo, 139 );
setEffAlphaKey( spep_6 + 14, ctzudodo, 162 );
setEffAlphaKey( spep_6 + 16, ctzudodo, 185 );
setEffAlphaKey( spep_6 + 18, ctzudodo, 209 );
setEffAlphaKey( spep_6 + 20, ctzudodo, 232 );
setEffAlphaKey( spep_6 + 22, ctzudodo, 255 );

--文字エントリー
ctdogon = entryEffectLife( spep_6 + 26,  10018, 42, 0x100, -1, 0, -7.3, 99.1 );--ドゴォンッ

setEffMoveKey( spep_6 + 26, ctdogon, -7.3, 99.1 , 0 );
setEffMoveKey( spep_6 + 28, ctdogon, -20.6, 133.2 , 0 );
setEffMoveKey( spep_6 + 30, ctdogon, -11.2, 163.7 , 0 );
setEffMoveKey( spep_6 + 32, ctdogon, -30.5, 183.8 , 0 );
setEffMoveKey( spep_6 + 34, ctdogon, -26.1, 186.2 , 0 );
setEffMoveKey( spep_6 + 36, ctdogon, -49, 196.7 , 0 );
setEffMoveKey( spep_6 + 38, ctdogon, -46.5, 206.8 , 0 );
setEffMoveKey( spep_6 + 40, ctdogon, -51.1, 194.2 , 0 );
setEffMoveKey( spep_6 + 42, ctdogon, -60.3, 210.8 , 0 );
setEffMoveKey( spep_6 + 44, ctdogon, -59.3, 201.9 , 0 );
setEffMoveKey( spep_6 + 46, ctdogon, -71.6, 207.5 , 0 );
setEffMoveKey( spep_6 + 48, ctdogon, -71.4, 202.9 , 0 );
setEffMoveKey( spep_6 + 50, ctdogon, -75.6, 212.2 , 0 );
setEffMoveKey( spep_6 + 52, ctdogon, -81.4, 205.2 , 0 );
setEffMoveKey( spep_6 + 54, ctdogon, -89.6, 215.6 , 0 );
setEffMoveKey( spep_6 + 56, ctdogon, -91.9, 210.5 , 0 );
setEffMoveKey( spep_6 + 58, ctdogon, -98.1, 221.8 , 0 );
setEffMoveKey( spep_6 + 60, ctdogon, -98.6, 211.8 , 0 );
setEffMoveKey( spep_6 + 62, ctdogon, -112, 215.9 , 0 );
setEffMoveKey( spep_6 + 64, ctdogon, -113.3, 210 , 0 );
setEffMoveKey( spep_6 + 66, ctdogon, -119, 217.7 , 0 );
setEffMoveKey( spep_6 + 68, ctdogon, -125.1, 217.7 , 0 );

setEffScaleKey( spep_6 + 26, ctdogon, 1.67, 1.67 );
setEffScaleKey( spep_6 + 28, ctdogon, 2.27, 2.27 );
setEffScaleKey( spep_6 + 30, ctdogon, 2.86, 2.86 );
setEffScaleKey( spep_6 + 32, ctdogon, 2.9, 2.9 );
setEffScaleKey( spep_6 + 34, ctdogon, 2.95, 2.95 );
setEffScaleKey( spep_6 + 36, ctdogon, 2.99, 2.99 );
setEffScaleKey( spep_6 + 38, ctdogon, 2.98, 2.98 );
setEffScaleKey( spep_6 + 40, ctdogon, 2.97, 2.97 );
setEffScaleKey( spep_6 + 42, ctdogon, 2.95, 2.95 );
setEffScaleKey( spep_6 + 44, ctdogon, 2.94, 2.94 );
setEffScaleKey( spep_6 + 46, ctdogon, 2.93, 2.93 );
setEffScaleKey( spep_6 + 48, ctdogon, 2.92, 2.92 );
setEffScaleKey( spep_6 + 50, ctdogon, 2.91, 2.91 );
setEffScaleKey( spep_6 + 52, ctdogon, 2.9, 2.9 );
setEffScaleKey( spep_6 + 54, ctdogon, 2.88, 2.88 );
setEffScaleKey( spep_6 + 56, ctdogon, 2.87, 2.87 );
setEffScaleKey( spep_6 + 58, ctdogon, 2.86, 2.86 );
setEffScaleKey( spep_6 + 68, ctdogon, 2.86, 2.86 );

setEffRotateKey( spep_6 + 26, ctdogon, -27.8 );
setEffRotateKey( spep_6 + 28, ctdogon, -27.3 );
setEffRotateKey( spep_6 + 30, ctdogon, -26.7 );
setEffRotateKey( spep_6 + 68, ctdogon, -26.7 );

setEffAlphaKey( spep_6 + 26, ctdogon, 255 );
setEffAlphaKey( spep_6 + 58, ctdogon, 255 );
setEffAlphaKey( spep_6 + 60, ctdogon, 204 );
setEffAlphaKey( spep_6 + 62, ctdogon, 153 );
setEffAlphaKey( spep_6 + 64, ctdogon, 102 );
setEffAlphaKey( spep_6 + 66, ctdogon, 51 );
setEffAlphaKey( spep_6 + 68, ctdogon, 0 );

--敵の動き
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 + 68, 1, 0 );
changeAnime( spep_6 + 0, 1, 108 );

setMoveKey( spep_6 + 0, 1, 363.2, -6 , 0 );
setMoveKey( spep_6 + 2, 1, 353.1, -1.5 , 0 );
setMoveKey( spep_6 + 4, 1, 329, -4.8 , 0 );
setMoveKey( spep_6 + 6, 1, 303.7, 1.1 , 0 );
setMoveKey( spep_6 + 8, 1, 277.4, -4 , 0 );
setMoveKey( spep_6 + 10, 1, 244.1, -3.2 , 0 );
setMoveKey( spep_6 + 12, 1, 229.4, 3.1 , 0 );
setMoveKey( spep_6 + 14, 1, 201.8, -1.7 , 0 );
setMoveKey( spep_6 + 16, 1, 179.3, 5.7 , 0 );
setMoveKey( spep_6 + 18, 1, 162, -1.5 , 0 );
setMoveKey( spep_6 + 20, 1, 148.2, 5.7 , 0 );
setMoveKey( spep_6 + 22, 1, 111, 8 , 0 );
setMoveKey( spep_6 + 24, 1, 111, 8 , 0 );
setMoveKey( spep_6 + 26, 1, 124.1, 8 , 0 );
setMoveKey( spep_6 + 28, 1, 135.2, 8 , 0 );
setMoveKey( spep_6 + 30, 1, 144.3, 8 , 0 );
setMoveKey( spep_6 + 32, 1, 151.4, 7.9 , 0 );
setMoveKey( spep_6 + 34, 1, 156.5, 7.9 , 0 );
setMoveKey( spep_6 + 36, 1, 159.5, 7.9 , 0 );
setMoveKey( spep_6 + 38, 1, 160.5, 7.9 , 0 );
setMoveKey( spep_6 + 40, 1, 161.4, 7.9 , 0 );
setMoveKey( spep_6 + 42, 1, 162.3, 7.9 , 0 );
setMoveKey( spep_6 + 44, 1, 163.2, 7.9 , 0 );
setMoveKey( spep_6 + 46, 1, 164.1, 7.9 , 0 );
setMoveKey( spep_6 + 48, 1, 165, 7.9 , 0 );
setMoveKey( spep_6 + 50, 1, 165.9, 7.9 , 0 );
setMoveKey( spep_6 + 52, 1, 166.8, 7.9 , 0 );
setMoveKey( spep_6 + 54, 1, 167.6, 7.9 , 0 );
setMoveKey( spep_6 + 56, 1, 168.5, 7.9 , 0 );
setMoveKey( spep_6 + 58, 1, 169.4, 7.9 , 0 );
setMoveKey( spep_6 + 60, 1, 170.3, 7.9 , 0 );
setMoveKey( spep_6 + 62, 1, 171.2, 7.9 , 0 );
setMoveKey( spep_6 + 64, 1, 172.1, 7.9 , 0 );
setMoveKey( spep_6 + 66, 1, 173, 7.9 , 0 );
setMoveKey( spep_6 + 68, 1, 173.9, 7.9 , 0 );

setScaleKey( spep_6 + 0, 1, 1.04, 1.04 );
setScaleKey( spep_6 + 2, 1, 1.09, 1.09 );
setScaleKey( spep_6 + 4, 1, 1.16, 1.16 );
setScaleKey( spep_6 + 6, 1, 1.24, 1.24 );
setScaleKey( spep_6 + 8, 1, 1.34, 1.34 );
setScaleKey( spep_6 + 10, 1, 1.46, 1.46 );
setScaleKey( spep_6 + 12, 1, 1.52, 1.52 );
setScaleKey( spep_6 + 14, 1, 1.58, 1.58 );
setScaleKey( spep_6 + 16, 1, 1.65, 1.65 );
setScaleKey( spep_6 + 18, 1, 1.71, 1.71 );
setScaleKey( spep_6 + 20, 1, 1.77, 1.77 );
setScaleKey( spep_6 + 22, 1, 1.92, 1.92 );
setScaleKey( spep_6 + 24, 1, 1.92, 1.92 );
setScaleKey( spep_6 + 26, 1, 1.89, 1.89 );
setScaleKey( spep_6 + 28, 1, 1.86, 1.86 );
setScaleKey( spep_6 + 30, 1, 1.83, 1.83 );
setScaleKey( spep_6 + 32, 1, 1.81, 1.81 );
setScaleKey( spep_6 + 34, 1, 1.8, 1.8 );
setScaleKey( spep_6 + 36, 1, 1.79, 1.79 );
setScaleKey( spep_6 + 38, 1, 1.79, 1.79 );
setScaleKey( spep_6 + 40, 1, 1.78, 1.78 );
setScaleKey( spep_6 + 44, 1, 1.78, 1.78 );
setScaleKey( spep_6 + 46, 1, 1.77, 1.77 );
setScaleKey( spep_6 + 50, 1, 1.77, 1.77 );
setScaleKey( spep_6 + 52, 1, 1.76, 1.76 );
setScaleKey( spep_6 + 54, 1, 1.76, 1.76 );
setScaleKey( spep_6 + 56, 1, 1.75, 1.75 );
setScaleKey( spep_6 + 60, 1, 1.75, 1.75 );
setScaleKey( spep_6 + 62, 1, 1.74, 1.74 );
setScaleKey( spep_6 + 66, 1, 1.74, 1.74 );
setScaleKey( spep_6 + 68, 1, 1.73, 1.73 );

setRotateKey( spep_6 + 0, 1, 0 );
setRotateKey( spep_6 + 68, 1, 0 );

--流線(奥行き)
ryusen4 = entryEffectLife( spep_6,  921, 108, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_6, ryusen4, 0, 0 , 0 );
setEffMoveKey( spep_6 + 108, ryusen4, 0, 0 , 0 );

setEffScaleKey( spep_6, ryusen4, 1, 1 );
setEffScaleKey( spep_6 + 108, ryusen4, 1, 1 );

setEffRotateKey( spep_6, ryusen4, 0 );
setEffRotateKey( spep_6 + 108, ryusen4, 0 );

setEffAlphaKey( spep_6, ryusen4, 255 );
setEffAlphaKey( spep_6 + 108, ryusen4, 255 );

--黒背景
entryFadeBg(spep_6, 0, 110, 0, 0, 0, 0, 255);  -- 黒　背

--SE
playSe( spep_6+20, 1023);--発射オン

-- ** エフェクト等 ** --
entryFade(spep_6+20, 0, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_6+102, 4, 12, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_7=spep_6+110;
------------------------------------------------------
-- ガ
------------------------------------------------------
--エフェクト(背景)
bg=entryEffectLife(spep_7,SP_10,110,0x80,-1,0,0,0);
setEffMoveKey( spep_7 + 0, bg, 0, 0 , 0 );
setEffMoveKey( spep_7 + 110, bg, 0, 0 , 0 );

setEffScaleKey(spep_7,bg,1.0,1.0);
setEffScaleKey(spep_7+110,bg,1.0,1.0);

setEffRotateKey(spep_7,bg,0);
setEffRotateKey(spep_7+110,bg,0);

setEffAlphaKey(spep_7,bg,255);
setEffAlphaKey(spep_7+110,bg,255);

setDisp( spep_7+ 0, 1, 1 );

changeAnime( spep_7, 1, 107);                         -- 手前ダメージ
setMoveKey(  spep_7,    1,  100,  0,   0);
setScaleKey( spep_7,    1,  1.0, 1.0);
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

shuchusen = entryEffectLife( spep_7+15,906, 120, 0x100,  -1, 0,  0,  0);   -- 集中線

-- 書き文字エントリー
ct = entryEffectLife( spep_7+15, 10005, 95, 0x100, -1, 0, -50, 230); -- ガッ
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
setEffAlphaKey( spep_7+110, ct, 0);

playSe( spep_7+14, SE_11);

entryEffect( spep_7+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

shuchusenkuro = entryEffectLife( spep_7+15, 1657, 120, 0x80,  -1, 0,  0,  0);   -- 集中線


-- ダメージ表示
dealDamage(spep_7+16);
entryFade( spep_7+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_7+106);
else

------------------------------------------------------
-- 敵側
------------------------------------------------------

spep_0=0;

--エフェクト
scope_f=entryEffectLife(spep_0,SP_01x,200,0x100,-1,0,0,0);
setEffMoveKey( spep_0 + 0, scope_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 200, scope_f, 0, 0 , 0 );

setEffScaleKey(spep_0,scope_f,1.0,1.0);
setEffScaleKey(spep_0+200,scope_f,1.0,1.0);

setEffRotateKey(spep_0,scope_f,0);
setEffRotateKey(spep_0+200,scope_f,0);

setEffAlphaKey(spep_0,scope_f,255);
setEffAlphaKey(spep_0+200,scope_f,255);

--エフェクト
scope_b=entryEffectLife(spep_0,SP_08x,200,0x80,-1,0,0,0);
setEffMoveKey( spep_0 + 0, scope_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 200, scope_b, 0, 0 , 0 );

setEffScaleKey(spep_0,scope_b,1.0,1.0);
setEffScaleKey(spep_0+200,scope_b,1.0,1.0);

setEffRotateKey(spep_0,scope_b,0);
setEffRotateKey(spep_0+200,scope_b,0);

setEffAlphaKey(spep_0,scope_b,100);
setEffAlphaKey(spep_0+200,scope_b,100);

--敵の動き
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 198, 1, 0 );
changeAnime( spep_0 + 0, 1, 100 );

setMoveKey( spep_0 + 0, 1, -68.1, -75.5 , 0 );
setMoveKey( spep_0 + 2, 1, -59.4, -69.8 , 0 );
setMoveKey( spep_0 + 4, 1, -50.4, -64.8 , 0 );
setMoveKey( spep_0 + 6, 1, -41, -60.5 , 0 );
setMoveKey( spep_0 + 8, 1, -31.5, -56.6 , 0 );
setMoveKey( spep_0 + 10, 1, -21.7, -53.4 , 0 );
setMoveKey( spep_0 + 12, 1, -11.8, -50.7 , 0 );
setMoveKey( spep_0 + 14, 1, -6.9, -49.9 , 0 );
setMoveKey( spep_0 + 16, 1, -2, -49 , 0 );
setMoveKey( spep_0 + 18, 1, 3, -48.3 , 0 );
setMoveKey( spep_0 + 20, 1, 7.9, -47.5 , 0 );
setMoveKey( spep_0 + 22, 1, 12.9, -46.9 , 0 );
setMoveKey( spep_0 + 24, 1, 17.8, -46.3 , 0 );
setMoveKey( spep_0 + 26, 1, 22.9, -45.9 , 0 );
setMoveKey( spep_0 + 28, 1, 27.9, -45.6 , 0 );
setMoveKey( spep_0 + 30, 1, 32.9, -45.4 , 0 );
setMoveKey( spep_0 + 32, 1, 38, -45.4 , 0 );
setMoveKey( spep_0 + 34, 1, 43, -45.6 , 0 );
setMoveKey( spep_0 + 36, 1, 48, -46.1 , 0 );
setMoveKey( spep_0 + 38, 1, 52.7, -47.7 , 0 );
setMoveKey( spep_0 + 40, 1, 53.8, -52 , 0 );
setMoveKey( spep_0 + 42, 1, 46.5, -56.5 , 0 );
setMoveKey( spep_0 + 44, 1, 37.7, -58.6 , 0 );
setMoveKey( spep_0 + 46, 1, 28.9, -60 , 0 );
setMoveKey( spep_0 + 48, 1, 20, -61 , 0 );
setMoveKey( spep_0 + 50, 1, 11.1, -61.6 , 0 );
setMoveKey( spep_0 + 52, 1, 2.3, -62.1 , 0 );
setMoveKey( spep_0 + 54, 1, -6.6, -62.5 , 0 );
setMoveKey( spep_0 + 56, 1, -15.5, -62.7 , 0 );
setMoveKey( spep_0 + 58, 1, -24.5, -62.7 , 0 );
setMoveKey( spep_0 + 60, 1, -33.4, -62.7 , 0 );
setMoveKey( spep_0 + 62, 1, -42.3, -62.4 , 0 );
setMoveKey( spep_0 + 64, 1, -51.2, -61.9 , 0 );
setMoveKey( spep_0 + 66, 1, -60, -61.1 , 0 );
setMoveKey( spep_0 + 68, 1, -68.5, -58.6 , 0 );
setMoveKey( spep_0 + 70, 1, -68.1, -53.2 , 0 );
setMoveKey( spep_0 + 72, 1, -66.4, -48.1 , 0 );
setMoveKey( spep_0 + 74, 1, -63.6, -43.3 , 0 );
setMoveKey( spep_0 + 76, 1, -59.8, -39.4 , 0 );
setMoveKey( spep_0 + 78, 1, -55.5, -36.2 , 0 );
setMoveKey( spep_0 + 80, 1, -50.8, -33.4 , 0 );
setMoveKey( spep_0 + 82, 1, -45.9, -31.2 , 0 );
setMoveKey( spep_0 + 84, 1, -40.8, -29.3 , 0 );
setMoveKey( spep_0 + 86, 1, -35.6, -28.7 , 0 );
setMoveKey( spep_0 + 88, 1, -30.3, -28.4 , 0 );
setMoveKey( spep_0 + 90, 1, -25, -26.3 , 0 );
setMoveKey( spep_0 + 92, 1, -19.7, -26.3 , 0 );
setMoveKey( spep_0 + 94, 1, -14.3, -24.6 , 0 );
setMoveKey( spep_0 + 96, 1, -8.9, -23.9 , 0 );
setMoveKey( spep_0 + 98, 1, -4, -23.7 , 0 );
setMoveKey( spep_0 + 100, 1, 0.8, -23.5 , 0 );
setMoveKey( spep_0 + 102, 1, 5.6, -23.6 , 0 );
setMoveKey( spep_0 + 104, 1, 10.5, -23.8 , 0 );
setMoveKey( spep_0 + 106, 1, 15.3, -24.3 , 0 );
setMoveKey( spep_0 + 108, 1, 20.1, -25.1 , 0 );
setMoveKey( spep_0 + 110, 1, 24.9, -25 , 0 );
setMoveKey( spep_0 + 112, 1, 29.6, -27.2 , 0 );
setMoveKey( spep_0 + 114, 1, 34.3, -28.7 , 0 );
setMoveKey( spep_0 + 116, 1, 38.8, -29.4 , 0 );
setMoveKey( spep_0 + 118, 1, 43.3, -31.4 , 0 );
setMoveKey( spep_0 + 120, 1, 47.6, -33.7 , 0 );
setMoveKey( spep_0 + 122, 1, 51.7, -36.4 , 0 );
setMoveKey( spep_0 + 124, 1, 55.4, -39.4 , 0 );
setMoveKey( spep_0 + 126, 1, 57.7, -43.3 , 0 );
setMoveKey( spep_0 + 128, 1, 54.2, -42.9 , 0 );
setMoveKey( spep_0 + 130, 1, 50.9, -41.6 , 0 );
setMoveKey( spep_0 + 132, 1, 47.7, -39.9 , 0 );
setMoveKey( spep_0 + 134, 1, 44.5, -38.1 , 0 );
setMoveKey( spep_0 + 136, 1, 41.4, -36.1 , 0 );
setMoveKey( spep_0 + 138, 1, 38.4, -34.2 , 0 );
setMoveKey( spep_0 + 140, 1, 35.4, -32.1 , 0 );
setMoveKey( spep_0 + 142, 1, 32.4, -32.1 , 0 );
setMoveKey( spep_0 + 144, 1, 29.5, -32.1 , 0 );
setMoveKey( spep_0 + 146, 1, 26.5, -34.2 , 0 );
setMoveKey( spep_0 + 148, 1, 24.3, -35.6 , 0 );
setMoveKey( spep_0 + 150, 1, 22.3, -36.8 , 0 );
setMoveKey( spep_0 + 152, 1, 20.2, -38.1 , 0 );
setMoveKey( spep_0 + 154, 1, 18.2, -37.4 , 0 );
setMoveKey( spep_0 + 156, 1, 16.2, -36.6 , 0 );
setMoveKey( spep_0 + 158, 1, 14.1, -35.9 , 0 );
setMoveKey( spep_0 + 160, 1, 12, -35.2 , 0 );
setMoveKey( spep_0 + 162, 1, 9.9, -35.3 , 0 );
setMoveKey( spep_0 + 164, 1, 11, -35.3 , 0 );
setMoveKey( spep_0 + 166, 1, 12.1, -34.2 , 0 );
setMoveKey( spep_0 + 168, 1, 13.2, -34.5 , 0 );
setMoveKey( spep_0 + 170, 1, 14.3, -34.9 , 0 );
setMoveKey( spep_0 + 172, 1, 15.4, -35.6 , 0 );
setMoveKey( spep_0 + 174, 1, 16.4, -36.2 , 0 );
setMoveKey( spep_0 + 176, 1, 17.4, -36.7 , 0 );
setMoveKey( spep_0 + 178, 1, 18.2, -37 , 0 );
setMoveKey( spep_0 + 180, 1, 18.9, -38.1 , 0 );
setMoveKey( spep_0 + 182, 1, 19.4, -38.1 , 0 );
setMoveKey( spep_0 + 184, 1, 19.5, -39 , 0 );
setMoveKey( spep_0 + 186, 1, 19.5, -39.9 , 0 );
setMoveKey( spep_0 + 188, 1, 19.5, -40.8 , 0 );
setMoveKey( spep_0 + 190, 1, 19.5, -41.7 , 0 );
setMoveKey( spep_0 + 192, 1, 19.6, -41.7 , 0 );
setMoveKey( spep_0 + 194, 1, 20, -41.7 , 0 );
setMoveKey( spep_0 + 196, 1, 20.6,-40.5 , 0 );
setMoveKey( spep_0 + 198, 1, 22.2, -40.5 , 0 );

setScaleKey( spep_0 + 0, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 2, 1, 1.84, 1.84 );
setScaleKey( spep_0 + 4, 1, 1.88, 1.88 );
setScaleKey( spep_0 + 6, 1, 1.93, 1.93 );
setScaleKey( spep_0 + 8, 1, 1.97, 1.97 );
setScaleKey( spep_0 + 10, 1, 2.01, 2.01 );
setScaleKey( spep_0 + 12, 1, 2.05, 2.05 );
setScaleKey( spep_0 + 14, 1, 2.09, 2.09 );
setScaleKey( spep_0 + 16, 1, 2.13, 2.13 );
setScaleKey( spep_0 + 18, 1, 2.17, 2.17 );
setScaleKey( spep_0 + 20, 1, 2.22, 2.22 );
setScaleKey( spep_0 + 22, 1, 2.26, 2.26 );
setScaleKey( spep_0 + 24, 1, 2.3, 2.3 );
setScaleKey( spep_0 + 26, 1, 2.3, 2.3 );
setScaleKey( spep_0 + 28, 1, 2.31, 2.31 );
setScaleKey( spep_0 + 30, 1, 2.31, 2.31 );
setScaleKey( spep_0 + 32, 1, 2.32, 2.32 );
setScaleKey( spep_0 + 34, 1, 2.32, 2.32 );
setScaleKey( spep_0 + 36, 1, 2.33, 2.33 );
setScaleKey( spep_0 + 38, 1, 2.33, 2.33 );
setScaleKey( spep_0 + 40, 1, 2.34, 2.34 );
setScaleKey( spep_0 + 42, 1, 2.34, 2.34 );
setScaleKey( spep_0 + 44, 1, 2.35, 2.35 );
setScaleKey( spep_0 + 48, 1, 2.35, 2.35 );
setScaleKey( spep_0 + 50, 1, 2.36, 2.36 );
setScaleKey( spep_0 + 52, 1, 2.36, 2.36 );
setScaleKey( spep_0 + 54, 1, 2.37, 2.37 );
setScaleKey( spep_0 + 56, 1, 2.37, 2.37 );
setScaleKey( spep_0 + 58, 1, 2.38, 2.38 );
setScaleKey( spep_0 + 60, 1, 2.38, 2.38 );
setScaleKey( spep_0 + 62, 1, 2.39, 2.39 );
setScaleKey( spep_0 + 64, 1, 2.39, 2.39 );
setScaleKey( spep_0 + 66, 1, 2.4, 2.4 );
setScaleKey( spep_0 + 198, 1, 2.4, 2.4 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 198, 1, 0 );

--黒背景
entryFadeBg(spep_0, 0, 200, 0, 0, 0, 0, 255);  -- 黒　背


--SE
playSe( spep_0, 1019);--BGM的な
playSe( spep_0+60, 1019);--BGM的な
playSe( spep_0+120, 1019);--BGM的な
SE1=playSe( spep_0+180, 1019);--BGM的な

stopSe(200,SE1,0)
-- ** エフェクト等 ** --
entryFade(spep_0+192, 4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_1=spep_0+200;

------------------------------------------------------
-- 狙撃
------------------------------------------------------
--エフェクト
sniper=entryEffectLife(spep_1,SP_02x,80,0x100,-1,0,0,0);
setEffMoveKey( spep_1 + 0, sniper, 0, 0 , 0 );
setEffMoveKey( spep_1 + 80, sniper, 0, 0 , 0 );

setEffScaleKey(spep_1,sniper,1.0,1.0);
setEffScaleKey(spep_1+80,sniper,1.0,1.0);

setEffRotateKey(spep_1,sniper,0);
setEffRotateKey(spep_1+80,sniper,0);

setEffAlphaKey(spep_1,sniper,255);
setEffAlphaKey(spep_1+80,sniper,255);

--エフェクト(背景)
sniper_b=entryEffectLife(spep_1,SP_09x,80,0x80,-1,0,0,0);
setEffMoveKey( spep_1 + 0, sniper_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 80, sniper_b, 0, 0 , 0 );

setEffScaleKey(spep_1,sniper_b,1.0,1.0);
setEffScaleKey(spep_1+80,sniper_b,1.0,1.0);

setEffRotateKey(spep_1,sniper_b,0);
setEffRotateKey(spep_1+80,sniper_b,0);

setEffAlphaKey(spep_1,sniper_b,80);
setEffAlphaKey(spep_1+80,sniper_b,80);

--集中線
shuchusen1 = entryEffectLife( spep_1 + 0,  906, 50, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_1 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_1 + 50, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen1, 1.4, 1.75 );
setEffScaleKey( spep_1 + 50, shuchusen1, 1.4, 1.75 );

setEffRotateKey( spep_1 + 0, shuchusen1, 0 );
setEffRotateKey( spep_1 + 50, shuchusen1, 0 );

setEffAlphaKey( spep_1 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_1 + 50, shuchusen1, 255 );

--文字エントリー
ctdon = entryEffectLife( spep_1 + 50,  10019, 26, 0x100, -1, 0, -112.9, 186 );--ドン
setEffMoveKey( spep_1 + 50, ctdon, -112.9, 186 , 0 );
setEffMoveKey( spep_1 + 56, ctdon, -125.6, 204.2 , 0 );
setEffMoveKey( spep_1 + 58, ctdon, -117.5, 219.2 , 0 );
setEffMoveKey( spep_1 + 60, ctdon, -126.6, 227 , 0 );
setEffMoveKey( spep_1 + 62, ctdon, -114.3, 219 , 0 );
setEffMoveKey( spep_1 + 64, ctdon, -126.5, 218.2 , 0 );
setEffMoveKey( spep_1 + 66, ctdon, -120.1, 225.9 , 0 );
setEffMoveKey( spep_1 + 68, ctdon, -119.9, 213.4 , 0 );
setEffMoveKey( spep_1 + 70, ctdon, -124, 227.1 , 0 );
setEffMoveKey( spep_1 + 72, ctdon, -118.8, 217.7 , 0 );
setEffMoveKey( spep_1 + 74, ctdon, -125.7, 221.6 , 0 );
setEffMoveKey( spep_1 + 76, ctdon, -125.7, 221.6 , 0 );

setEffScaleKey( spep_1 + 50, ctdon, 1.29, 1.29 );
setEffScaleKey( spep_1 + 60, ctdon, 1.29, 1.29 );
setEffScaleKey( spep_1 + 62, ctdon, 1.63, 1.63 );
setEffScaleKey( spep_1 + 64, ctdon, 1.98, 1.98 );
setEffScaleKey( spep_1 + 66, ctdon, 2, 2 );
--setEffScaleKey( spep_1 + 62, ctdon, 2.02, 2.02 );
--setEffScaleKey( spep_1 + 68, ctdon, 2.04, 2.04 );
setEffScaleKey( spep_1 + 67, ctdon, 2.04, 2.04 );
setEffScaleKey( spep_1 + 68, ctdon, 2.05, 2.05 );
setEffScaleKey( spep_1 + 70, ctdon, 2.05, 2.05 );
setEffScaleKey( spep_1 + 72, ctdon, 2.06, 2.06 );
setEffScaleKey( spep_1 + 74, ctdon, 2.07, 2.07 );
setEffScaleKey( spep_1 + 76, ctdon, 2.07, 2.07 );

--[[
setEffScaleKey( spep_1 + 54, ctdon, 1.29, 1.29 );
setEffScaleKey( spep_1 + 56, ctdon, 1.63, 1.63 );
setEffScaleKey( spep_1 + 58, ctdon, 1.98, 1.98 );
setEffScaleKey( spep_1 + 60, ctdon, 2, 2 );
setEffScaleKey( spep_1 + 62, ctdon, 2.02, 2.02 );
setEffScaleKey( spep_1 + 64, ctdon, 2.04, 2.04 );
setEffScaleKey( spep_1 + 66, ctdon, 2.04, 2.04 );
setEffScaleKey( spep_1 + 68, ctdon, 2.05, 2.05 );
setEffScaleKey( spep_1 + 70, ctdon, 2.05, 2.05 );
setEffScaleKey( spep_1 + 72, ctdon, 2.06, 2.06 );
setEffScaleKey( spep_1 + 74, ctdon, 2.07, 2.07 );
setEffScaleKey( spep_1 + 76, ctdon, 2.07, 2.07 );
]]--

setEffRotateKey( spep_1 + 50, ctdon, -0.8 );
setEffRotateKey( spep_1 + 56, ctdon, -0.3 );
setEffRotateKey( spep_1 + 58, ctdon, 0.3 );
setEffRotateKey( spep_1 + 76, ctdon, 0.3 );

setEffAlphaKey( spep_1 + 50, ctdon, 255 );
setEffAlphaKey( spep_1 + 64, ctdon, 255 );
setEffAlphaKey( spep_1 + 66, ctdon, 213 );
setEffAlphaKey( spep_1 + 68, ctdon, 170 );
setEffAlphaKey( spep_1 + 70, ctdon, 128 );
setEffAlphaKey( spep_1 + 72, ctdon, 85 );
setEffAlphaKey( spep_1 + 74, ctdon, 42 );
setEffAlphaKey( spep_1 + 76, ctdon, 0 );

--流線(奥行き)
ryusen = entryEffectLife( spep_1 + 50,  921, 28, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_1 + 50, ryusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 78, ryusen, 0, 0 , 0 );

setEffScaleKey( spep_1 + 50, ryusen, 1.88, 1 );
setEffScaleKey( spep_1 + 78, ryusen, 1.88, 1 );

setEffRotateKey( spep_1 + 50, ryusen, 180 );
setEffRotateKey( spep_1 + 78, ryusen, 180 );

setEffAlphaKey( spep_1 + 50, ryusen, 255 );
setEffAlphaKey( spep_1 + 78, ryusen, 255 );

-- ** エフェクト等 ** --
entryFade(spep_1+46, 0, 4, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_1+72, 4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--SE
playSe( spep_1+20, 3);--キラーん


--黒背景
entryFadeBg(spep_1, 0, 80, 0, 0, 0, 0, 255);  -- 黒　背

--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

SP_dodge = spep_1+60 ; --エンドフェイズのフレーム数を置き換える

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
--SE
playSe( spep_1+52, 1014);--発射

--次の準備
spep_2=spep_1+80;

------------------------------------------------------
-- 着弾
------------------------------------------------------
--エフェクト
hit_f=entryEffect(spep_2,SP_03x,0x100,-1,0,0,0);
setEffMoveKey( spep_2 + 0, hit_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 34, hit_f, 0, 0 , 0 );

setEffScaleKey(spep_2,hit_f,1.0,1.0);
setEffScaleKey(spep_2+34,hit_f,1.0,1.0);

setEffRotateKey(spep_2,hit_f,0);
setEffRotateKey(spep_2+34,hit_f,0);

setEffAlphaKey(spep_2,hit_f,255);
setEffAlphaKey(spep_2+34,hit_f,255);

--流線(奥行き)
ryusen2 = entryEffectLife( spep_2 ,  921, 68, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_2 , ryusen2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 68, ryusen2, 0, 0 , 0 );

setEffScaleKey( spep_2 , ryusen2, 1, 1 );
setEffScaleKey( spep_2 + 68, ryusen2, 1, 1 );

setEffRotateKey( spep_2 , ryusen2, 0 );
setEffRotateKey( spep_2 + 68, ryusen2, 0 );

setEffAlphaKey( spep_2 , ryusen2, 255 );
setEffAlphaKey( spep_2 + 68, ryusen2, 255 );


--エフェクト
hit_b=entryEffectLife(spep_2,SP_04x,70,0x80,-1,0,0,0);
setEffMoveKey( spep_2 + 0, hit_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 70, hit_b, 0, 0 , 0 );

setEffScaleKey(spep_2,hit_b,1.0,1.0);
setEffScaleKey(spep_2+70,hit_b,1.0,1.0);

setEffRotateKey(spep_2,hit_b,0);
setEffRotateKey(spep_2+70,hit_b,0);

setEffAlphaKey(spep_2,hit_b,255);
setEffAlphaKey(spep_2+70,hit_b,255);

--エフェクト(背景)
hit_b2=entryEffectLife(spep_2,SP_09x,70,0x80,-1,0,0,0);
setEffMoveKey( spep_2 + 0, hit_b2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 70, hit_b2, 0, 0 , 0 );

setEffScaleKey(spep_2,hit_b2,1.0,1.0);
setEffScaleKey(spep_2+70,hit_b2,1.0,1.0);

setEffRotateKey(spep_2,hit_b2,0);
setEffRotateKey(spep_2+70,hit_b2,0);

setEffAlphaKey(spep_2,hit_b2,80);
setEffAlphaKey(spep_2+70,hit_b2,80);

--敵の動き
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 68, 1, 0 );

changeAnime( spep_2 + 0, 1, 100 );
changeAnime( spep_2 + 22, 1, 108 );

setMoveKey( spep_2 + 0, 1, 363.2, -7 , 0 );
setMoveKey( spep_2 + 2, 1, 353.1, -2.5 , 0 );
setMoveKey( spep_2 + 4, 1, 329, -5.8 , 0 );
setMoveKey( spep_2 + 6, 1, 303.7, 0.1 , 0 );
setMoveKey( spep_2 + 8, 1, 277.4, -5 , 0 );
setMoveKey( spep_2 + 10, 1, 244.1, -4.2 , 0 );
setMoveKey( spep_2 + 12, 1, 229.4, 2.1 , 0 );
setMoveKey( spep_2 + 14, 1, 201.8, -2.7 , 0 );
setMoveKey( spep_2 + 16, 1, 179.3, 4.7 , 0 );
setMoveKey( spep_2 + 18, 1, 162, -2.5 , 0 );
setMoveKey( spep_2 + 21, 1, 148.2, 4.7 , 0 );
setMoveKey( spep_2 + 22, 1, 111, 7 , 0 );
setMoveKey( spep_2 + 24, 1, 111, 7 , 0 );
setMoveKey( spep_2 + 26, 1, 124.1, 7 , 0 );
setMoveKey( spep_2 + 28, 1, 135.2, 7 , 0 );
setMoveKey( spep_2 + 30, 1, 144.3, 7 , 0 );
setMoveKey( spep_2 + 32, 1, 151.4, 6.9 , 0 );
setMoveKey( spep_2 + 34, 1, 156.5, 6.9 , 0 );
setMoveKey( spep_2 + 36, 1, 159.5, 6.9 , 0 );
setMoveKey( spep_2 + 38, 1, 160.5, 6.9 , 0 );
setMoveKey( spep_2 + 40, 1, 161.4, 6.9 , 0 );
setMoveKey( spep_2 + 42, 1, 162.3, 6.9 , 0 );
setMoveKey( spep_2 + 44, 1, 163.2, 6.9 , 0 );
setMoveKey( spep_2 + 46, 1, 164.1, 6.9 , 0 );
setMoveKey( spep_2 + 48, 1, 165, 6.9 , 0 );
setMoveKey( spep_2 + 50, 1, 165.9, 6.9 , 0 );
setMoveKey( spep_2 + 52, 1, 166.8, 6.9 , 0 );
setMoveKey( spep_2 + 54, 1, 167.6, 6.9 , 0 );
setMoveKey( spep_2 + 56, 1, 168.5, 6.9 , 0 );
setMoveKey( spep_2 + 58, 1, 169.4, 6.9 , 0 );
setMoveKey( spep_2 + 60, 1, 170.3, 6.9 , 0 );
setMoveKey( spep_2 + 62, 1, 171.2, 6.9 , 0 );
setMoveKey( spep_2 + 64, 1, 172.1, 6.9 , 0 );
setMoveKey( spep_2 + 66, 1, 173, 6.9 , 0 );
setMoveKey( spep_2 + 68, 1, 173.9, 6.9 , 0 );

setScaleKey( spep_2 + 0, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 2, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 4, 1, 1.16, 1.16 );
setScaleKey( spep_2 + 6, 1, 1.24, 1.24 );
setScaleKey( spep_2 + 8, 1, 1.34, 1.34 );
setScaleKey( spep_2 + 10, 1, 1.46, 1.46 );
setScaleKey( spep_2 + 12, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 14, 1, 1.58, 1.58 );
setScaleKey( spep_2 + 16, 1, 1.65, 1.65 );
setScaleKey( spep_2 + 18, 1, 1.71, 1.71 );
setScaleKey( spep_2 + 21, 1, 1.77, 1.77 );
setScaleKey( spep_2 + 22, 1, 1.92, 1.92 );
setScaleKey( spep_2 + 24, 1, 1.92, 1.92 );
setScaleKey( spep_2 + 26, 1, 1.89, 1.89 );
setScaleKey( spep_2 + 28, 1, 1.86, 1.86 );
setScaleKey( spep_2 + 30, 1, 1.83, 1.83 );
setScaleKey( spep_2 + 32, 1, 1.81, 1.81 );
setScaleKey( spep_2 + 34, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 36, 1, 1.79, 1.79 );
setScaleKey( spep_2 + 38, 1, 1.79, 1.79 );
setScaleKey( spep_2 + 40, 1, 1.78, 1.78 );
setScaleKey( spep_2 + 44, 1, 1.78, 1.78 );
setScaleKey( spep_2 + 46, 1, 1.77, 1.77 );
setScaleKey( spep_2 + 50, 1, 1.77, 1.77 );
setScaleKey( spep_2 + 52, 1, 1.76, 1.76 );
setScaleKey( spep_2 + 54, 1, 1.76, 1.76 );
setScaleKey( spep_2 + 56, 1, 1.75, 1.75 );
setScaleKey( spep_2 + 60, 1, 1.75, 1.75 );
setScaleKey( spep_2 + 62, 1, 1.74, 1.74 );
setScaleKey( spep_2 + 66, 1, 1.74, 1.74 );
setScaleKey( spep_2 + 68, 1, 1.73, 1.73 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 + 68, 1, 0 );

--文字エントリー
ctzuo = entryEffectLife( spep_2 + 22,  10012, 18, 0x100, -1, 0, -109.7, 211.7 );--ズオッ

setEffMoveKey( spep_2 + 22, ctzuo, -109.7, 211.7 , 0 );
setEffMoveKey( spep_2 + 26, ctzuo, -121.2, 236.9 , 0 );
setEffMoveKey( spep_2 + 28, ctzuo, -111.8, 258.7 , 0 );
setEffMoveKey( spep_2 + 30, ctzuo, -120.9, 266.9 , 0 );
setEffMoveKey( spep_2 + 32, ctzuo, -108.6, 259.3 , 0 );
setEffMoveKey( spep_2 + 34, ctzuo, -120.6, 258.9 , 0 );
setEffMoveKey( spep_2 + 36, ctzuo, -114.2, 266.9 , 0 );
setEffMoveKey( spep_2 + 38, ctzuo, -114, 254.6 , 0 );
setEffMoveKey( spep_2 + 40, ctzuo, -114, 254.8 , 0 );

setEffScaleKey( spep_2 + 22, ctzuo, 1.29, 1.29 );
setEffScaleKey( spep_2 + 26, ctzuo, 1.63, 1.63 );
setEffScaleKey( spep_2 + 28, ctzuo, 1.98, 1.98 );
setEffScaleKey( spep_2 + 30, ctzuo, 2, 2 );
setEffScaleKey( spep_2 + 32, ctzuo, 2.02, 2.02 );
setEffScaleKey( spep_2 + 34, ctzuo, 2.04, 2.04 );
setEffScaleKey( spep_2 + 36, ctzuo, 2.05, 2.05 );
setEffScaleKey( spep_2 + 38, ctzuo, 2.06, 2.06 );
setEffScaleKey( spep_2 + 40, ctzuo, 2.07, 2.07 );

setEffRotateKey( spep_2 + 22, ctzuo, -23.8 );
setEffRotateKey( spep_2 + 26, ctzuo, -23.3 );
setEffRotateKey( spep_2 + 28, ctzuo, -22.7 );
setEffRotateKey( spep_2 + 40, ctzuo, -22.7 );

setEffAlphaKey( spep_2 + 22, ctzuo, 255 );
setEffAlphaKey( spep_2 + 34, ctzuo, 255 );
setEffAlphaKey( spep_2 + 36, ctzuo, 170 );
setEffAlphaKey( spep_2 + 38, ctzuo, 85 );
setEffAlphaKey( spep_2 + 40, ctzuo, 0 );

-- ** エフェクト等 ** --
entryFade(spep_2+18, 0, 2, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_2+62, 4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--SE
playSe( spep_2+18, 1002);--ヒット

--黒背景
entryFadeBg(spep_2, 0, 70, 0, 0, 0, 0, 255);  -- 黒　背

--次の準備
spep_3=spep_2+70;

------------------------------------------------------
-- 構える
------------------------------------------------------
--エフェクト
stand=entryEffectLife(spep_3,SP_05x,100,0x100,-1,0,0,0);
setEffMoveKey( spep_3 + 0, stand, 0, 0 , 0 );
setEffMoveKey( spep_3 + 100, stand, 0, 0 , 0 );

setEffScaleKey(spep_3,stand,1.0,1.0);
setEffScaleKey(spep_3+100,stand,1.0,1.0);

setEffRotateKey(spep_3,stand,0);
setEffRotateKey(spep_3+100,stand,0);

setEffAlphaKey(spep_3,stand,255);
setEffAlphaKey(spep_3+100,stand,255);

--エフェクト(背景)
stand_b=entryEffectLife(spep_3,SP_09x,100,0x80,-1,0,0,0);
setEffMoveKey( spep_3 + 0, stand_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 100, stand_b, 0, 0 , 0 );

setEffScaleKey(spep_3,stand_b,1.0,1.0);
setEffScaleKey(spep_3+100,stand_b,1.0,1.0);

setEffRotateKey(spep_3,stand_b,0);
setEffRotateKey(spep_3+100,stand_b,0);

setEffAlphaKey(spep_3,stand_b,80);
setEffAlphaKey(spep_3+100,stand_b,80);

--集中線
shuchusen2 = entryEffectLife( spep_3 + 0,  906, 98, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_3 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_3 + 98, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen2, 1.4, 1.75 );
setEffScaleKey( spep_3 + 98, shuchusen2, 1.4, 1.75 );

setEffRotateKey( spep_3 + 0, shuchusen2, 0 );
setEffRotateKey( spep_3 + 98, shuchusen2, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_3 + 98, shuchusen2, 255 );

--顔カットイン
--speff=entryEffect(spep_3+18,1504,0x100,-1,0,0,0);  --カットイン(顔)
--setEffReplaceTexture(speff,3,2);  --カットイン差し替え
--speff1=entryEffect(spep_3+18,1505,0x100,-1,0,0,0);  --カットイン(セリフ)
--setEffReplaceTexture(speff1,4,5);  --セリフカットイン差し替え

--ゴゴゴ
ctgogo=entryEffectLife(spep_3+30,190006,70,0x100,-1,90,520);--ゴゴゴ

setEffMoveKey(spep_3+30,ctgogo,90,520,0);
setEffMoveKey(spep_3+100,ctgogo,90,520,0);

setEffScaleKey(spep_3+30, ctgogo, -0.7, 0.7);
setEffScaleKey(spep_3+100, ctgogo, -0.7, 0.7);

setEffAlphaKey( spep_3 + 30, ctgogo, 0 );
setEffAlphaKey( spep_3 + 31, ctgogo, 255 );
setEffAlphaKey( spep_3 + 32, ctgogo, 255 );
setEffAlphaKey( spep_3 + 100, ctgogo, 255 );

setEffRotateKey(spep_3+30,ctgogo,0);
setEffRotateKey(spep_3+100,ctgogo,0);

--黒背景
entryFadeBg(spep_3, 0, 100, 0, 0, 0, 0, 255);  -- 黒　背

--SE
playSe( spep_3+30, SE_04);--カットイン


-- ** エフェクト等 ** --
entryFade(spep_3+92, 4, 8, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_4=spep_3+100;

--------------------------------------
--カードカットイン(90F)
--------------------------------------

playSe(spep_4,SE_05);
shuchusen=entryEffectLife(spep_4,906,90,0x100,-1,0,0,0);   -- 集中線
setEffScaleKey(spep_4,shuchusen,1.6,1.6);

speff2=entryEffect(spep_4,1507,0x80,-1,0,0,0);   -- カード
setEffReplaceTexture(speff2,1,1);
setEffReplaceTexture(speff2,2,0);-- カード差し替え
setEffReplaceTexture(speff2,5,4);-- 技名テクスチャ差し替え

-- ** エフェクト等 ** --
entryFade(spep_4+85,3,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_5=spep_4+90;

------------------------------------------------------
-- 発射
------------------------------------------------------
--エフェクト
fieing=entryEffectLife(spep_5,SP_06x,60,0x100,-1,0,0,0);
setEffMoveKey( spep_5 + 0, fieing, 0, 0 , 0 );
setEffMoveKey( spep_5 + 60, fieing, 0, 0 , 0 );

setEffScaleKey(spep_5,fieing,1.0,1.0);
setEffScaleKey(spep_5+60,fieing,1.0,1.0);

setEffRotateKey(spep_5,fieing,0);
setEffRotateKey(spep_5+60,fieing,0);

setEffAlphaKey(spep_5,fieing,255);
setEffAlphaKey(spep_5+60,fieing,255);

--流線(奥行き)
ryusen3 = entryEffectLife( spep_5 + 32,  921, 26, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_5 + 32, ryusen3, 0, 0 , 0 );
setEffMoveKey( spep_5 + 58, ryusen3, 0, 0 , 0 );

setEffScaleKey( spep_5 + 32, ryusen3, 1, 1 );
setEffScaleKey( spep_5 + 58, ryusen3, 1, 1 );

setEffRotateKey( spep_5 + 32, ryusen3, 180 );
setEffRotateKey( spep_5 + 58, ryusen3, 180 );

setEffAlphaKey( spep_5 + 32, ryusen3, 255 );
setEffAlphaKey( spep_5 + 58, ryusen3, 255 );

--エフェクト(背景)
fieing_b=entryEffectLife(spep_5,SP_09x,60,0x80,-1,0,0,0);
setEffMoveKey( spep_5 + 0, fieing_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 60, fieing_b, 0, 0 , 0 );

setEffScaleKey(spep_5,fieing_b,1.0,1.0);
setEffScaleKey(spep_5+60,fieing_b,1.0,1.0);

setEffRotateKey(spep_5,fieing_b,0);
setEffRotateKey(spep_5+60,fieing_b,0);

setEffAlphaKey(spep_5,fieing_b,80);
setEffAlphaKey(spep_5+60,fieing_b,80);

--集中線
shuchusen3 = entryEffectLife( spep_5 + 0,  906, 28, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_5 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_5 + 28, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, shuchusen3, 1.4, 1.75 );
setEffScaleKey( spep_5 + 28, shuchusen3, 1.4, 1.75 );

setEffRotateKey( spep_5 + 0, shuchusen3, 0 );
setEffRotateKey( spep_5 + 28, shuchusen3, 0 );

setEffAlphaKey( spep_5 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_5 + 28, shuchusen3, 255 );

--文字エントリー
ctdon2 = entryEffectLife( spep_5 + 32,  10019, 16, 0x100, -1, 0, -112.9, 186 );--ドンッ

setEffMoveKey( spep_5 + 32, ctdon2, -112.9, 186 , 0 );
setEffMoveKey( spep_5 + 34, ctdon2, -125.6, 204.2 , 0 );
setEffMoveKey( spep_5 + 36, ctdon2, -117.5, 219.2 , 0 );
setEffMoveKey( spep_5 + 38, ctdon2, -126.6, 227 , 0 );
setEffMoveKey( spep_5 + 40, ctdon2, -114.3, 219 , 0 );
setEffMoveKey( spep_5 + 42, ctdon2, -126.5, 218.2 , 0 );
setEffMoveKey( spep_5 + 44, ctdon2, -120.1, 225.9 , 0 );
setEffMoveKey( spep_5 + 48, ctdon2, -119.9, 213.4 , 0 );

setEffScaleKey( spep_5 + 32, ctdon2, 1.29, 1.29 );
setEffScaleKey( spep_5 + 34, ctdon2, 1.63, 1.63 );
setEffScaleKey( spep_5 + 36, ctdon2, 1.98, 1.98 );
setEffScaleKey( spep_5 + 38, ctdon2, 2, 2 );
setEffScaleKey( spep_5 + 40, ctdon2, 2.02, 2.02 );
setEffScaleKey( spep_5 + 42, ctdon2, 2.04, 2.04 );
setEffScaleKey( spep_5 + 44, ctdon2, 2.05, 2.05 );
setEffScaleKey( spep_5 + 46, ctdon2, 2.06, 2.06 );
setEffScaleKey( spep_5 + 48, ctdon2, 2.07, 2.07 );

setEffRotateKey( spep_5 + 32, ctdon2, -0.8 );
setEffRotateKey( spep_5 + 34, ctdon2, -0.3 );
setEffRotateKey( spep_5 + 38, ctdon2, 0.3 );
setEffRotateKey( spep_5 + 48, ctdon2, 0.3 );

setEffAlphaKey( spep_5 + 32, ctdon2, 255 );
setEffAlphaKey( spep_5 + 42, ctdon2, 255 );
setEffAlphaKey( spep_5 + 44, ctdon2, 170 );
setEffAlphaKey( spep_5 + 46, ctdon2, 85 );
setEffAlphaKey( spep_5 + 48, ctdon2, 0 );

--黒背景
entryFadeBg(spep_5, 0, 60, 0, 0, 0, 0, 255);  -- 黒　背


--SE
playSe( spep_5+28, 1033);--発射オン

-- ** エフェクト等 ** --
entryFade(spep_5+28, 0, 4, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_5+52, 4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_6=spep_5+60;

------------------------------------------------------
-- 着弾
------------------------------------------------------
--エフェクト
landing=entryEffectLife(spep_6,SP_07x,110,0x100,-1,0,0,0);
setEffMoveKey( spep_6 + 0, landing, 0, 0 , 0 );
setEffMoveKey( spep_6 + 110, landing, 0, 0 , 0 );

setEffScaleKey(spep_6,landing,1.0,1.0);
setEffScaleKey(spep_6+110,landing,1.0,1.0);

setEffRotateKey(spep_6,landing,0);
setEffRotateKey(spep_6+110,landing,0);

setEffAlphaKey(spep_6,landing,255);
setEffAlphaKey(spep_6+110,landing,255);

--エフェクト(背景)
landing_b=entryEffectLife(spep_6,SP_09x,110,0x80,-1,0,0,0);
setEffMoveKey( spep_6 + 0, landing_b, 0, 0 , 0 );
setEffMoveKey( spep_6 + 110, landing_b, 0, 0 , 0 );

setEffScaleKey(spep_6,landing_b,1.0,1.0);
setEffScaleKey(spep_6+110,landing_b,1.0,1.0);

setEffRotateKey(spep_6,landing_b,0);
setEffRotateKey(spep_6+110,landing_b,0);

setEffAlphaKey(spep_6,landing_b,80);
setEffAlphaKey(spep_6+110,landing_b,80);

--文字エントリー
ctzudodo = entryEffectLife( spep_6 + 2,  10014, 20, 0x100, -1, 0, -58.6, -324.8 );--ズドドドッ

setEffMoveKey( spep_6 + 2, ctzudodo, -58.6, -324.8 , 0 );
setEffMoveKey( spep_6 + 4, ctzudodo, -51.4, -305.9 , 0 );
setEffMoveKey( spep_6 + 6, ctzudodo, -43.6, -318.4 , 0 );
setEffMoveKey( spep_6 + 8, ctzudodo, -36.5, -299.4 , 0 );
setEffMoveKey( spep_6 + 10, ctzudodo, -28.6, -312.1 , 0 );
setEffMoveKey( spep_6 + 12, ctzudodo, -21.5, -292.9 , 0 );
setEffMoveKey( spep_6 + 14, ctzudodo, -13.7, -305.7 , 0 );
setEffMoveKey( spep_6 + 16, ctzudodo, -6.5, -286.4 , 0 );
setEffMoveKey( spep_6 + 18, ctzudodo, 1.3, -299.4 , 0 );
setEffMoveKey( spep_6 + 20, ctzudodo, 8.5, -279.8 , 0 );
setEffMoveKey( spep_6 + 22, ctzudodo, 16.3, -293 , 0 );

setEffScaleKey( spep_6 + 2, ctzudodo, 2.75, 2.75 );
setEffScaleKey( spep_6 + 4, ctzudodo, 2.76, 2.76 );
setEffScaleKey( spep_6 + 6, ctzudodo, 2.78, 2.78 );
setEffScaleKey( spep_6 + 8, ctzudodo, 2.79, 2.79 );
setEffScaleKey( spep_6 + 10, ctzudodo, 2.81, 2.81 );
setEffScaleKey( spep_6 + 12, ctzudodo, 2.83, 2.83 );
setEffScaleKey( spep_6 + 14, ctzudodo, 2.84, 2.84 );
setEffScaleKey( spep_6 + 16, ctzudodo, 2.86, 2.86 );
setEffScaleKey( spep_6 + 18, ctzudodo, 2.87, 2.87 );
setEffScaleKey( spep_6 + 20, ctzudodo, 2.89, 2.89 );
setEffScaleKey( spep_6 + 22, ctzudodo, 2.9, 2.9 );

setEffRotateKey( spep_6 + 2, ctzudodo, -53.6 );
setEffRotateKey( spep_6 + 22, ctzudodo, -53.6 );

setEffAlphaKey( spep_6 + 2, ctzudodo, 23 );
setEffAlphaKey( spep_6 + 4, ctzudodo, 46 );
setEffAlphaKey( spep_6 + 6, ctzudodo, 70 );
setEffAlphaKey( spep_6 + 8, ctzudodo, 93 );
setEffAlphaKey( spep_6 + 10, ctzudodo, 116 );
setEffAlphaKey( spep_6 + 12, ctzudodo, 139 );
setEffAlphaKey( spep_6 + 14, ctzudodo, 162 );
setEffAlphaKey( spep_6 + 16, ctzudodo, 185 );
setEffAlphaKey( spep_6 + 18, ctzudodo, 209 );
setEffAlphaKey( spep_6 + 20, ctzudodo, 232 );
setEffAlphaKey( spep_6 + 22, ctzudodo, 255 );

--文字エントリー
ctdogon = entryEffectLife( spep_6 + 26,  10018, 42, 0x100, -1, 0, -7.3, 99.1 );--ドゴォンッ

setEffMoveKey( spep_6 + 26, ctdogon, -7.3, 99.1 , 0 );
setEffMoveKey( spep_6 + 28, ctdogon, -20.6, 133.2 , 0 );
setEffMoveKey( spep_6 + 30, ctdogon, -11.2, 163.7 , 0 );
setEffMoveKey( spep_6 + 32, ctdogon, -30.5, 183.8 , 0 );
setEffMoveKey( spep_6 + 34, ctdogon, -26.1, 186.2 , 0 );
setEffMoveKey( spep_6 + 36, ctdogon, -49, 196.7 , 0 );
setEffMoveKey( spep_6 + 38, ctdogon, -46.5, 206.8 , 0 );
setEffMoveKey( spep_6 + 40, ctdogon, -51.1, 194.2 , 0 );
setEffMoveKey( spep_6 + 42, ctdogon, -60.3, 210.8 , 0 );
setEffMoveKey( spep_6 + 44, ctdogon, -59.3, 201.9 , 0 );
setEffMoveKey( spep_6 + 46, ctdogon, -71.6, 207.5 , 0 );
setEffMoveKey( spep_6 + 48, ctdogon, -71.4, 202.9 , 0 );
setEffMoveKey( spep_6 + 50, ctdogon, -75.6, 212.2 , 0 );
setEffMoveKey( spep_6 + 52, ctdogon, -81.4, 205.2 , 0 );
setEffMoveKey( spep_6 + 54, ctdogon, -89.6, 215.6 , 0 );
setEffMoveKey( spep_6 + 56, ctdogon, -91.9, 210.5 , 0 );
setEffMoveKey( spep_6 + 58, ctdogon, -98.1, 221.8 , 0 );
setEffMoveKey( spep_6 + 60, ctdogon, -98.6, 211.8 , 0 );
setEffMoveKey( spep_6 + 62, ctdogon, -112, 215.9 , 0 );
setEffMoveKey( spep_6 + 64, ctdogon, -113.3, 210 , 0 );
setEffMoveKey( spep_6 + 66, ctdogon, -119, 217.7 , 0 );
setEffMoveKey( spep_6 + 68, ctdogon, -125.1, 217.7 , 0 );

setEffScaleKey( spep_6 + 26, ctdogon, 1.67, 1.67 );
setEffScaleKey( spep_6 + 28, ctdogon, 2.27, 2.27 );
setEffScaleKey( spep_6 + 30, ctdogon, 2.86, 2.86 );
setEffScaleKey( spep_6 + 32, ctdogon, 2.9, 2.9 );
setEffScaleKey( spep_6 + 34, ctdogon, 2.95, 2.95 );
setEffScaleKey( spep_6 + 36, ctdogon, 2.99, 2.99 );
setEffScaleKey( spep_6 + 38, ctdogon, 2.98, 2.98 );
setEffScaleKey( spep_6 + 40, ctdogon, 2.97, 2.97 );
setEffScaleKey( spep_6 + 42, ctdogon, 2.95, 2.95 );
setEffScaleKey( spep_6 + 44, ctdogon, 2.94, 2.94 );
setEffScaleKey( spep_6 + 46, ctdogon, 2.93, 2.93 );
setEffScaleKey( spep_6 + 48, ctdogon, 2.92, 2.92 );
setEffScaleKey( spep_6 + 50, ctdogon, 2.91, 2.91 );
setEffScaleKey( spep_6 + 52, ctdogon, 2.9, 2.9 );
setEffScaleKey( spep_6 + 54, ctdogon, 2.88, 2.88 );
setEffScaleKey( spep_6 + 56, ctdogon, 2.87, 2.87 );
setEffScaleKey( spep_6 + 58, ctdogon, 2.86, 2.86 );
setEffScaleKey( spep_6 + 68, ctdogon, 2.86, 2.86 );

setEffRotateKey( spep_6 + 26, ctdogon, -27.8 );
setEffRotateKey( spep_6 + 28, ctdogon, -27.3 );
setEffRotateKey( spep_6 + 30, ctdogon, -26.7 );
setEffRotateKey( spep_6 + 68, ctdogon, -26.7 );

setEffAlphaKey( spep_6 + 26, ctdogon, 255 );
setEffAlphaKey( spep_6 + 58, ctdogon, 255 );
setEffAlphaKey( spep_6 + 60, ctdogon, 204 );
setEffAlphaKey( spep_6 + 62, ctdogon, 153 );
setEffAlphaKey( spep_6 + 64, ctdogon, 102 );
setEffAlphaKey( spep_6 + 66, ctdogon, 51 );
setEffAlphaKey( spep_6 + 68, ctdogon, 0 );

--敵の動き
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 + 68, 1, 0 );
changeAnime( spep_6 + 0, 1, 108 );

setMoveKey( spep_6 + 0, 1, 363.2, -6 , 0 );
setMoveKey( spep_6 + 2, 1, 353.1, -1.5 , 0 );
setMoveKey( spep_6 + 4, 1, 329, -4.8 , 0 );
setMoveKey( spep_6 + 6, 1, 303.7, 1.1 , 0 );
setMoveKey( spep_6 + 8, 1, 277.4, -4 , 0 );
setMoveKey( spep_6 + 10, 1, 244.1, -3.2 , 0 );
setMoveKey( spep_6 + 12, 1, 229.4, 3.1 , 0 );
setMoveKey( spep_6 + 14, 1, 201.8, -1.7 , 0 );
setMoveKey( spep_6 + 16, 1, 179.3, 5.7 , 0 );
setMoveKey( spep_6 + 18, 1, 162, -1.5 , 0 );
setMoveKey( spep_6 + 20, 1, 148.2, 5.7 , 0 );
setMoveKey( spep_6 + 22, 1, 111, 8 , 0 );
setMoveKey( spep_6 + 24, 1, 111, 8 , 0 );
setMoveKey( spep_6 + 26, 1, 124.1, 8 , 0 );
setMoveKey( spep_6 + 28, 1, 135.2, 8 , 0 );
setMoveKey( spep_6 + 30, 1, 144.3, 8 , 0 );
setMoveKey( spep_6 + 32, 1, 151.4, 7.9 , 0 );
setMoveKey( spep_6 + 34, 1, 156.5, 7.9 , 0 );
setMoveKey( spep_6 + 36, 1, 159.5, 7.9 , 0 );
setMoveKey( spep_6 + 38, 1, 160.5, 7.9 , 0 );
setMoveKey( spep_6 + 40, 1, 161.4, 7.9 , 0 );
setMoveKey( spep_6 + 42, 1, 162.3, 7.9 , 0 );
setMoveKey( spep_6 + 44, 1, 163.2, 7.9 , 0 );
setMoveKey( spep_6 + 46, 1, 164.1, 7.9 , 0 );
setMoveKey( spep_6 + 48, 1, 165, 7.9 , 0 );
setMoveKey( spep_6 + 50, 1, 165.9, 7.9 , 0 );
setMoveKey( spep_6 + 52, 1, 166.8, 7.9 , 0 );
setMoveKey( spep_6 + 54, 1, 167.6, 7.9 , 0 );
setMoveKey( spep_6 + 56, 1, 168.5, 7.9 , 0 );
setMoveKey( spep_6 + 58, 1, 169.4, 7.9 , 0 );
setMoveKey( spep_6 + 60, 1, 170.3, 7.9 , 0 );
setMoveKey( spep_6 + 62, 1, 171.2, 7.9 , 0 );
setMoveKey( spep_6 + 64, 1, 172.1, 7.9 , 0 );
setMoveKey( spep_6 + 66, 1, 173, 7.9 , 0 );
setMoveKey( spep_6 + 68, 1, 173.9, 7.9 , 0 );

setScaleKey( spep_6 + 0, 1, 1.04, 1.04 );
setScaleKey( spep_6 + 2, 1, 1.09, 1.09 );
setScaleKey( spep_6 + 4, 1, 1.16, 1.16 );
setScaleKey( spep_6 + 6, 1, 1.24, 1.24 );
setScaleKey( spep_6 + 8, 1, 1.34, 1.34 );
setScaleKey( spep_6 + 10, 1, 1.46, 1.46 );
setScaleKey( spep_6 + 12, 1, 1.52, 1.52 );
setScaleKey( spep_6 + 14, 1, 1.58, 1.58 );
setScaleKey( spep_6 + 16, 1, 1.65, 1.65 );
setScaleKey( spep_6 + 18, 1, 1.71, 1.71 );
setScaleKey( spep_6 + 20, 1, 1.77, 1.77 );
setScaleKey( spep_6 + 22, 1, 1.92, 1.92 );
setScaleKey( spep_6 + 24, 1, 1.92, 1.92 );
setScaleKey( spep_6 + 26, 1, 1.89, 1.89 );
setScaleKey( spep_6 + 28, 1, 1.86, 1.86 );
setScaleKey( spep_6 + 30, 1, 1.83, 1.83 );
setScaleKey( spep_6 + 32, 1, 1.81, 1.81 );
setScaleKey( spep_6 + 34, 1, 1.8, 1.8 );
setScaleKey( spep_6 + 36, 1, 1.79, 1.79 );
setScaleKey( spep_6 + 38, 1, 1.79, 1.79 );
setScaleKey( spep_6 + 40, 1, 1.78, 1.78 );
setScaleKey( spep_6 + 44, 1, 1.78, 1.78 );
setScaleKey( spep_6 + 46, 1, 1.77, 1.77 );
setScaleKey( spep_6 + 50, 1, 1.77, 1.77 );
setScaleKey( spep_6 + 52, 1, 1.76, 1.76 );
setScaleKey( spep_6 + 54, 1, 1.76, 1.76 );
setScaleKey( spep_6 + 56, 1, 1.75, 1.75 );
setScaleKey( spep_6 + 60, 1, 1.75, 1.75 );
setScaleKey( spep_6 + 62, 1, 1.74, 1.74 );
setScaleKey( spep_6 + 66, 1, 1.74, 1.74 );
setScaleKey( spep_6 + 68, 1, 1.73, 1.73 );

setRotateKey( spep_6 + 0, 1, 0 );
setRotateKey( spep_6 + 68, 1, 0 );

--流線(奥行き)
ryusen4 = entryEffectLife( spep_6,  921, 108, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_6, ryusen4, 0, 0 , 0 );
setEffMoveKey( spep_6 + 108, ryusen4, 0, 0 , 0 );

setEffScaleKey( spep_6, ryusen4, 1, 1 );
setEffScaleKey( spep_6 + 108, ryusen4, 1, 1 );

setEffRotateKey( spep_6, ryusen4, 0 );
setEffRotateKey( spep_6 + 108, ryusen4, 0 );

setEffAlphaKey( spep_6, ryusen4, 255 );
setEffAlphaKey( spep_6 + 108, ryusen4, 255 );

--黒背景
entryFadeBg(spep_6, 0, 110, 0, 0, 0, 0, 255);  -- 黒　背

--SE
playSe( spep_6+20, 1023);--発射オン

-- ** エフェクト等 ** --
entryFade(spep_6+20, 0, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_6+102, 4, 12, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_7=spep_6+110;
------------------------------------------------------
-- ガ
------------------------------------------------------
--エフェクト(背景)
bg=entryEffectLife(spep_7,SP_10x,110,0x80,-1,0,0,0);
setEffMoveKey( spep_7 + 0, bg, 0, 0 , 0 );
setEffMoveKey( spep_7 + 110, bg, 0, 0 , 0 );

setEffScaleKey(spep_7,bg,1.0,1.0);
setEffScaleKey(spep_7+110,bg,1.0,1.0);

setEffRotateKey(spep_7,bg,0);
setEffRotateKey(spep_7+110,bg,0);

setEffAlphaKey(spep_7,bg,255);
setEffAlphaKey(spep_7+110,bg,255);

setDisp( spep_7+ 0, 1, 1 );

changeAnime( spep_7, 1, 107);                         -- 手前ダメージ
setMoveKey(  spep_7,    1,  100,  0,   0);
setScaleKey( spep_7,    1,  1.0, 1.0);
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

shuchusen = entryEffectLife( spep_7+15,906, 120, 0x100,  -1, 0,  0,  0);   -- 集中線

-- 書き文字エントリー
ct = entryEffectLife( spep_7+15, 10005, 95, 0x100, -1, 0, -50, 230); -- ガッ
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
setEffAlphaKey( spep_7+110, ct, 0);

playSe( spep_7+14, SE_11);
entryEffect( spep_7+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

shuchusenkuro = entryEffectLife( spep_7+15, 1657, 120, 0x80,  -1, 0,  0,  0);   -- 集中線


-- ダメージ表示
dealDamage(spep_7+16);
entryFade( spep_7+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_7+106);
end

