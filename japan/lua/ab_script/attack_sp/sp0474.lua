--人造人間21号　1014630
--sp_effect_a2_00093


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
SP_01=151887;--	溜め
SP_02=151888;--	発射
SP_03=151889;--	迫る



--敵側は味方側に1xをつけてます
SP_01x=151890;--溜め(敵)
SP_02x=151891;--発射(敵)
SP_03x=151889;--迫る





------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

setDisp( 0, 1, 0);
setDisp( 0, 0, 0);
setMoveKey(   0,   0,    0, -1000,   0);
setMoveKey(   0,   1,    0, -54,   0);
setMoveKey(   1,   0,    0, -1000,   0);
setMoveKey(   1,   1,    0, -54,   0);
setMoveKey(   2,   0,    0, -1000,   0);
setMoveKey(   2,   1,    0, -54,   0);
setMoveKey(   3,   0,    0, -1000,   0);
setMoveKey(   3,   1,    0, -54,   0);

setScaleKey(   1,   0, 1.6, 1.6);
setScaleKey(   1,   1, 1.6, 1.6);
setRotateKey(   1,   1, 0);
setRotateKey(   1,   0, 0);


multi_frm = 2;

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then
------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 溜め
------------------------------------------------------
spep_0=0;

--エフェクトの再生
tame=entryEffectLife(spep_0,SP_01,198,0x100,-1,0,0,0);

setEffMoveKey(spep_0,tame,0,0,0);
setEffMoveKey(spep_0+198,tame,0,0,0);
setEffScaleKey(spep_0,tame,1.0,1.0);
setEffScaleKey(spep_0+198,tame,1.0,1.0);
setEffAlphaKey(spep_0,tame,255);
setEffAlphaKey(spep_0+198,tame,255);
setEffRotateKey(spep_0,tame,0);
setEffRotateKey(spep_0+198,tame,0);

speff=entryEffect(spep_0+111,1504,0x100,-1,0,0,0);  --カットイン(顔)
setEffReplaceTexture(speff,3,2);  --カットイン差し替え
speff1=entryEffect(spep_0+111,1505,0x100,-1,0,0,0);  --カットイン(セリフ)
setEffReplaceTexture(speff1,4,5);  --セリフカットイン差し替え

--文字エントリー
ctgogo=entryEffectLife(spep_0+124,190006,69,0x100,-1,-120,500);--ゴゴゴ
setEffMoveKey(spep_0+124,ctgogo,-120,500,0);
setEffMoveKey(spep_0+193,ctgogo,-120,500,0);
setEffScaleKey(spep_0+124, ctgogo, 0.7, 0.7);
setEffScaleKey(spep_0+193, ctgogo, 0.7, 0.7);
setEffRotateKey(spep_0+124,ctgogo,-5);
setEffRotateKey(spep_0+193,ctgogo,-5);

--集中線
shuthu1 = entryEffectLife( spep_0 + 69,  906, 129, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 69, shuthu1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 198, shuthu1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 69, shuthu1, 1.55, 1.55 );
setEffScaleKey( spep_0 + 198, shuthu1, 1.55, 1.55 );

setEffRotateKey( spep_0 + 69, shuthu1, 180 );
setEffRotateKey( spep_0 + 198, shuthu1, 180);

setEffAlphaKey( spep_0 + 69, shuthu1, 255 );
setEffAlphaKey( spep_0 + 198, shuthu1, 255 );

--SE
playSe(spep_0,SE_05);
SE1=playSe( spep_0+70, 17);
stopSe(spep_0+130,SE1,5);

--[[
playSe(spep_0+70,SE_03);
playSe(spep_0+90,SE_03);
playSe(spep_0+110,SE_03);
]]
playSe( spep_0+124, SE_04);

--白フェード
entryFade( spep_0, 0,  0, 4, fcolor_r, fcolor_g, fcolor_b, 180);     -- white fade
entryFade( spep_0+193, 5,  2, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--黒背景
entryFadeBg(spep_0+50, 8, 140, 0, 0, 0, 0, 180);  -- 黒　背景

spep_1=spep_0+198;
--------------------------------------
--カードカットイン(90F)
--------------------------------------

playSe(spep_1,SE_05);
shuchusen9=entryEffectLife(spep_1,906,90,0x100,-1,0,0,0);   -- 集中線
setEffScaleKey(spep_1,shuchusen9,1.6,1.6);

speff2=entryEffect(spep_1,1507,0x80,-1,0,0,0);   -- カード
setEffReplaceTexture(speff2,1,1);
setEffReplaceTexture(speff2,2,0);-- カード差し替え
setEffReplaceTexture(speff2,5,4);-- 技名テクスチャ差し替え

-- ** エフェクト等 ** --
entryFade(spep_1+85,3,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_2=spep_1+93;

------------------------------------------------------
-- 発射
------------------------------------------------------
--エフェクトの再生
hassya=entryEffectLife(spep_2,SP_02,158,0x100,-1,0,0,0);

setEffMoveKey(spep_2,hassya,0,0,0);
setEffMoveKey(spep_2+158,hassya,0,0,0);
setEffScaleKey(spep_2,hassya,1.0,1.0);
setEffScaleKey(spep_2+158,hassya,1.0,1.0);
setEffAlphaKey(spep_2,hassya,255);
setEffAlphaKey(spep_2+158,hassya,255);
setEffRotateKey(spep_2,hassya,0);
setEffRotateKey(spep_2+158,hassya,0);

--文字エントリー
ctba = entryEffectLife( spep_2 + 37,  10022, 28, 0x100, -1, 0, -48.9, 239.4 );--バッ
setEffMoveKey( spep_2 + 37, ctba, -48.9, 239.4 , 0 );
setEffMoveKey( spep_2 + 39, ctba, -48.9, 239.4 , 0 );
setEffMoveKey( spep_2 + 41, ctba, -48.8, 239.3 , 0 );
setEffMoveKey( spep_2 + 44, ctba, -48.7, 239.3 , 0 );
setEffMoveKey( spep_2 + 55, ctba, -48.7, 239.3 , 0 );
setEffMoveKey( spep_2 + 57, ctba, -48.6, 239.2 , 0 );
setEffMoveKey( spep_2 + 61, ctba, -48.6, 239.2 , 0 );
setEffMoveKey( spep_2 + 63, ctba, -48.5, 239.2 , 0 );
setEffMoveKey( spep_2 + 65, ctba, -48.4, 239.2 , 0 );

setEffScaleKey( spep_2 + 37, ctba, 0.58, 0.58 );
setEffScaleKey( spep_2 + 39, ctba, 1.16, 1.16 );
setEffScaleKey( spep_2 + 41, ctba, 1.57, 1.57 );
setEffScaleKey( spep_2 + 43, ctba, 1.82, 1.82 );
setEffScaleKey( spep_2 + 45, ctba, 1.9, 1.9 );
setEffScaleKey( spep_2 + 47, ctba, 1.93, 1.93 );
setEffScaleKey( spep_2 + 49, ctba, 1.95, 1.95 );
setEffScaleKey( spep_2 + 51, ctba, 1.98, 1.98 );
setEffScaleKey( spep_2 + 53, ctba, 2, 2 );
setEffScaleKey( spep_2 + 55, ctba, 2.03, 2.03 );
setEffScaleKey( spep_2 + 57, ctba, 2.06, 2.06 );
setEffScaleKey( spep_2 + 59, ctba, 2.16, 2.16 );
setEffScaleKey( spep_2 + 61, ctba, 2.33, 2.33 );
setEffScaleKey( spep_2 + 63, ctba, 2.57, 2.57 );
setEffScaleKey( spep_2 + 65, ctba, 2.87, 2.87 );

setEffRotateKey( spep_2 + 31, ctba, -14.2 );
setEffRotateKey( spep_2 + 65, ctba, -14.2 );

setEffAlphaKey( spep_2 + 37, ctba, 255 );
setEffAlphaKey( spep_2 + 55, ctba, 255 );
setEffAlphaKey( spep_2 + 57, ctba, 245 );
setEffAlphaKey( spep_2 + 59, ctba, 214 );
setEffAlphaKey( spep_2 + 61, ctba, 163 );
setEffAlphaKey( spep_2 + 63, ctba, 92 );
setEffAlphaKey( spep_2 + 65, ctba, 0 );

--流線
ryusen1 = entryEffectLife( spep_2 + 0,  921, 158, 0x80, -1, 0, -80.5, 0.3 );

setEffMoveKey( spep_2 + 0, ryusen1, -80.5, 0.3 , 0 );
setEffMoveKey( spep_2 + 158, ryusen1, -80.5, 0.3 , 0 );

setEffScaleKey( spep_2 + 0, ryusen1, 1.38, 1.41 );
setEffScaleKey( spep_2 + 158, ryusen1, 1.38, 1.41 );

setEffRotateKey( spep_2 + 0, ryusen1, -119 );
setEffRotateKey( spep_2 + 158, ryusen1, -119 );

setEffAlphaKey( spep_2 + 0, ryusen1, 255 );
setEffAlphaKey( spep_2 + 158, ryusen1, 255 );

--集中線
shuchu2 = entryEffectLife( spep_2 + 0,  906, 58, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, shuchu2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 18, shuchu2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 20, shuchu2, 0, 8 , 0 );
setEffMoveKey( spep_2 + 58, shuchu2, 0, 8 , 0 );

setEffScaleKey( spep_2 + 0, shuchu2, 1.78, 2.29 );
setEffScaleKey( spep_2 + 18, shuchu2, 1.78, 2.29 );
setEffScaleKey( spep_2 + 20, shuchu2, 1.35, 1.37 );
setEffScaleKey( spep_2 + 58, shuchu2, 1.35, 1.37 );

setEffRotateKey( spep_2 + 0, shuchu2, 0 );
setEffRotateKey( spep_2 + 58, shuchu2, 0 );

setEffAlphaKey( spep_2 + 0, shuchu2, 255 );
setEffAlphaKey( spep_2 + 48, shuchu2, 255 );
setEffAlphaKey( spep_2 + 50, shuchu2, 204 );
setEffAlphaKey( spep_2 + 52, shuchu2, 153 );
setEffAlphaKey( spep_2 + 54, shuchu2, 102 );
setEffAlphaKey( spep_2 + 56, shuchu2, 51 );
setEffAlphaKey( spep_2 + 58, shuchu2, 0 );

--黒背景
entryFadeBg(spep_2, 0, 158, 0, 0, 0, 0, 180);  -- 黒　背景
--SE
playSe( spep_2+37, SE_06);

--白フェード
entryFade( spep_2+154, 4,  1, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_3=spep_2+158;
------------------------------------------------------
-- 迫る
------------------------------------------------------
--流線
ryusen2 = entryEffectLife( spep_3 + 0,  921, 78, 0x80, -1,  0, -80.5, 0.3);
setEffMoveKey( spep_3 + 0, ryusen2, 0, -80.5, 0.3);
setEffMoveKey( spep_3 + 78, ryusen2, 0, -80.5, 0.3);

setEffScaleKey( spep_3 + 0, ryusen2, 1.38, 1.41 );
setEffScaleKey( spep_3 + 78, ryusen2, 1.38, 1.41 );

setEffRotateKey( spep_3 + 0, ryusen2, -132 );
setEffRotateKey( spep_3 + 78, ryusen2, -132 );

setEffAlphaKey( spep_3 + 0, ryusen2, 255 );
setEffAlphaKey( spep_3 + 78, ryusen2, 255 );


--エフェクトの再生
hit=entryEffectLife(spep_3,SP_03,78,0x80,-1,0,0,0);

setEffMoveKey(spep_3,hit,0,0,0);
setEffMoveKey(spep_3+78,hit,0,0,0);
setEffScaleKey(spep_3,hit,1.0,1.0);
setEffScaleKey(spep_3+78,hit,1.0,1.0);
setEffAlphaKey(spep_3,hit,255);
setEffAlphaKey(spep_3+78,hit,255);
setEffRotateKey(spep_3,hit,0);
setEffRotateKey(spep_3+78,hit,0);

--文字エントリー
ctzudodo = entryEffectLife( spep_3 + 0,  10014, 78, 0x100, -1, 0, 57.8, 363.4 );--ズドドド
setEffMoveKey( spep_3 + 0, ctzudodo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_3 + 3, ctzudodo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_3 + 5, ctzudodo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_3 + 7, ctzudodo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_3 + 9, ctzudodo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_3 + 11, ctzudodo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_3 + 13, ctzudodo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_3 + 15, ctzudodo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_3 + 17, ctzudodo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_3 + 19, ctzudodo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_3 + 21, ctzudodo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_3 + 23, ctzudodo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_3 + 25, ctzudodo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_3 + 27, ctzudodo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_3 + 29, ctzudodo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_3 + 31, ctzudodo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_3 + 33, ctzudodo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_3 + 35, ctzudodo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_3 + 37, ctzudodo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_3 + 39, ctzudodo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_3 + 41, ctzudodo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_3 + 43, ctzudodo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_3 + 45, ctzudodo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_3 + 47, ctzudodo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_3 + 49, ctzudodo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_3 + 51, ctzudodo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_3 + 53, ctzudodo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_3 + 55, ctzudodo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_3 + 57, ctzudodo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_3 + 59, ctzudodo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_3 + 61, ctzudodo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_3 + 63, ctzudodo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_3 + 65, ctzudodo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_3 + 67, ctzudodo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_3 + 69, ctzudodo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_3 + 71, ctzudodo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_3 + 73, ctzudodo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_3 + 75, ctzudodo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_3 + 77, ctzudodo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_3 + 78, ctzudodo, 33.8, 347.4 , 0 );

setEffScaleKey( spep_3 + 0, ctzudodo, 2.87, 3.72 );
setEffScaleKey( spep_3 + 78, ctzudodo, 2.87, 3.72 );

setEffRotateKey( spep_3 + 0, ctzudodo, 80.1 );
setEffRotateKey( spep_3 + 78, ctzudodo, 80.1 );

setEffAlphaKey( spep_3 + 0, ctzudodo, 255 );
setEffAlphaKey( spep_3 + 78, ctzudodo, 255 );

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 78, 1, 0 );
changeAnime( spep_3 + 0, 1, 102 );


setMoveKey( spep_3 + 0, 1, 246.1, -194.1 , 0 );
setMoveKey( spep_3 + 2, 1, 245.1, -194.6 , 0 );
setMoveKey( spep_3 + 4, 1, 247.5, -193.4 , 0 );
setMoveKey( spep_3 + 6, 1, 245.1, -194.8 , 0 );
setMoveKey( spep_3 + 8, 1, 245.8, -192.6 , 0 );
setMoveKey( spep_3 + 10, 1, 243, -194.1 , 0 );


setScaleKey( spep_3 + 0, 1, 1, 1 );
setScaleKey( spep_3 + 10, 1, 1, 1 );


setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 + 78, 1, 0 );


--黒背景
entryFadeBg(spep_3, 0, 78, 0, 0, 0, 0, 180);  -- 黒　背景
--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

SP_dodge = spep_3+10 ; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

pauseAll( SP_dodge, 67);

--キャラクターの固定
setMoveKey(SP_dodge, 1, 243, -194.1 , 0 );
setScaleKey(SP_dodge , 1, 1, 1 );
setRotateKey(SP_dodge,   1, 0);

--キャラクターの固定
setMoveKey(SP_dodge+8, 1, 243, -194.1 , 0 );
setScaleKey(SP_dodge+8 , 1, 1, 1 );
setRotateKey(SP_dodge+8,   1, 0);



setDisp(SP_dodge+9, 0, 0);
setDisp(SP_dodge+9, 1, 0);
--setMoveKey(SP_dodge+9, 1, 0 , 0, 0);
setScaleKey(SP_dodge+9,  1 , 1.34, 1.34 );
setRotateKey(SP_dodge+9,   1, 0);

--setMoveKey(SP_dodge+10, 1, 0 , 0, 0);
setScaleKey(SP_dodge+10,  1 , 1.3 ,1.3);
setRotateKey(SP_dodge+10,   1, 0);


--敵を画面外に表示
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
--敵の動き(続き)
setMoveKey( spep_3 + 12, 1, 245.4, -192.3 , 0 );
setMoveKey( spep_3 + 14, 1, 242.9, -194.7 , 0 );
setMoveKey( spep_3 + 16, 1, 245.2, -191.5 , 0 );
setMoveKey( spep_3 + 18, 1, 241.2, -191.8 , 0 );
setMoveKey( spep_3 + 20, 1, 244.4, -192.2 , 0 );
setMoveKey( spep_3 + 22, 1, 240.4, -189 , 0 );
setMoveKey( spep_3 + 24, 1, 238.7, -192.9 , 0 );
setMoveKey( spep_3 + 26, 1, 240, -188.1 , 0 );
setMoveKey( spep_3 + 28, 1, 235.2, -189.7 , 0 );
setMoveKey( spep_3 + 30, 1, 239.8, -190 , 0 );
setMoveKey( spep_3 + 32, 1, 235.6, -186 , 0 );
setMoveKey( spep_3 + 34, 1, 233.7, -188.9 , 0 );
setMoveKey( spep_3 + 36, 1, 231.9, -183.2 , 0 );
setMoveKey( spep_3 + 38, 1, 233.1, -187.8 , 0 );
setMoveKey( spep_3 + 40, 1, 229.9, -180.8 , 0 );
setMoveKey( spep_3 + 42, 1, 230, -184.5 , 0 );
setMoveKey( spep_3 + 44, 1, 226.2, -179.6 , 0 );
setMoveKey( spep_3 + 46, 1, 221.5, -183.6 , 0 );
setMoveKey( spep_3 + 48, 1, 224.1, -176.6 , 0 );
setMoveKey( spep_3 + 50, 1, 221.1, -182.3 , 0 );
setMoveKey( spep_3 + 52, 1, 219.8, -174.2 , 0 );
setMoveKey( spep_3 + 54, 1, 215.1, -177.8 , 0 );
setMoveKey( spep_3 + 56, 1, 216.5, -171.5 , 0 );
setMoveKey( spep_3 + 58, 1, 208.3, -174.1 , 0 );
setMoveKey( spep_3 + 60, 1, 211.7, -173.7 , 0 );
setMoveKey( spep_3 + 62, 1, 204.3, -170.5 , 0 );
setMoveKey( spep_3 + 64, 1, 206.4, -170.2 , 0 );
setMoveKey( spep_3 + 66, 1, 197.9, -167.1 , 0 );
setMoveKey( spep_3 + 68, 1, 202, -169 , 0 );
setMoveKey( spep_3 + 70, 1, 190.9, -163.4 , 0 );
setMoveKey( spep_3 + 72, 1, 198.2, -160.3 , 0 );
setMoveKey( spep_3 + 74, 1, 187.6, -160.5 , 0 );
setMoveKey( spep_3 + 76, 1, 192.3, -157.3 , 0 );
setMoveKey( spep_3 + 78, 1, 181.4, -157.9 , 0 );

setScaleKey( spep_3 + 12, 1, 0.99, 0.99 );
setScaleKey( spep_3 + 18, 1, 0.99, 0.99 );
setScaleKey( spep_3 + 20, 1, 0.98, 0.98 );
setScaleKey( spep_3 + 24, 1, 0.98, 0.98 );
setScaleKey( spep_3 + 26, 1, 0.97, 0.97 );
setScaleKey( spep_3 + 28, 1, 0.97, 0.97 );
setScaleKey( spep_3 + 30, 1, 0.96, 0.96 );
setScaleKey( spep_3 + 32, 1, 0.96, 0.96 );
setScaleKey( spep_3 + 34, 1, 0.95, 0.95 );
setScaleKey( spep_3 + 36, 1, 0.95, 0.95 );
setScaleKey( spep_3 + 38, 1, 0.94, 0.94 );
setScaleKey( spep_3 + 40, 1, 0.94, 0.94 );
setScaleKey( spep_3 + 42, 1, 0.93, 0.93 );
setScaleKey( spep_3 + 44, 1, 0.92, 0.92 );
setScaleKey( spep_3 + 46, 1, 0.92, 0.92 );
setScaleKey( spep_3 + 48, 1, 0.91, 0.91 );
setScaleKey( spep_3 + 50, 1, 0.9, 0.9 );
setScaleKey( spep_3 + 52, 1, 0.89, 0.89 );
setScaleKey( spep_3 + 54, 1, 0.88, 0.88 );
setScaleKey( spep_3 + 56, 1, 0.88, 0.88 );
setScaleKey( spep_3 + 58, 1, 0.87, 0.87 );
setScaleKey( spep_3 + 60, 1, 0.86, 0.86 );
setScaleKey( spep_3 + 62, 1, 0.85, 0.85 );
setScaleKey( spep_3 + 64, 1, 0.84, 0.84 );
setScaleKey( spep_3 + 66, 1, 0.83, 0.83 );
setScaleKey( spep_3 + 68, 1, 0.82, 0.82 );
setScaleKey( spep_3 + 70, 1, 0.81, 0.81 );
setScaleKey( spep_3 + 72, 1, 0.8, 0.8 );
setScaleKey( spep_3 + 74, 1, 0.78, 0.78 );
setScaleKey( spep_3 + 76, 1, 0.77, 0.77 );
setScaleKey( spep_3 + 78, 1, 0.76, 0.76 );

--SE
playSe( spep_3, SE_06);

--白フェード
entryFade( spep_3+74, 4,  1, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_4=spep_3+78;
------------------------------------------------------
-- ギャン(60F)
------------------------------------------------------
setDisp( spep_4-1, 1, 0);

gyan = entryEffect(  spep_4,  190001,  0x100,  -1,  0,  0,  0);  --ギャン
setEffScaleKey(  spep_4,  gyan,  1.0,  1.0);
setEffAlphaKey(  spep_4,  gyan,  255);

-- 書き文字エントリー --
ct_06 = entryEffectLife( spep_4, 10006, 58, 0x100, -1, 0, 0, 300);    -- ギャン

setEffScaleKey( spep_4, ct_06, 2.0, 2.0);
setEffAlphaKey( spep_4, ct_06, 255);
setEffScaleKey( spep_4+10, ct_06, 3.8, 3.8);
setEffScaleKey( spep_4+58, ct_06, 4.5, 4.5);
setEffAlphaKey( spep_4+58, ct_06, 255);
setEffShake( spep_4, ct_06, 58, 10);

playSe(  spep_4, SE_09);

entryFade(  spep_4+47,  6,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryFadeBg(spep_4,0,60,0,0,0,0,255);
--entryFade( spep_4+50, 4,  8, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_5=spep_4+60;
------------------------------------------------------
-- 爆発
------------------------------------------------------
bakuhatu=entryEffect(spep_5,1683,0x100,-1,0,0,0);
setEffMoveKey(spep_5,bakuhatu,0,0,0);
--setEffMoveKey(spep_5+170,bakuhatu,0,0,0);
setEffScaleKey(spep_5,bakuhatu,1.2,1.2);
--setEffScaleKey(spep_5+170,bakuhatu,1.2,1.2);
setEffAlphaKey(spep_5,bakuhatu,255);
--setEffAlphaKey(spep_5+170,bakuhatu,255);
setEffRotateKey(spep_5,bakuhatu,0);
--setEffRotateKey(spep_5+170,bakuhatu,0);

--SE
playSe( spep_5+4, SE_10);
playSe(  spep_5+113, SE_09);

-- ダメージ表示
dealDamage(spep_5+110);
entryFade( spep_5+180, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_5+190);

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 溜め
------------------------------------------------------
spep_0=0;

--エフェクトの再生
tame=entryEffectLife(spep_0,SP_01x,198,0x100,-1,0,0,0);

setEffMoveKey(spep_0,tame,0,0,0);
setEffMoveKey(spep_0+198,tame,0,0,0);
setEffScaleKey(spep_0,tame,1.0,1.0);
setEffScaleKey(spep_0+198,tame,1.0,1.0);
setEffAlphaKey(spep_0,tame,255);
setEffAlphaKey(spep_0+198,tame,255);
setEffRotateKey(spep_0,tame,0);
setEffRotateKey(spep_0+198,tame,0);

--speff=entryEffect(spep_0+111,1504,0x100,-1,0,0,0);  --カットイン(顔)
--setEffReplaceTexture(speff,3,2);  --カットイン差し替え
--speff1=entryEffect(spep_0+111,1505,0x100,-1,0,0,0);  --カットイン(セリフ)
--setEffReplaceTexture(speff1,4,5);  --セリフカットイン差し替え

--文字エントリー
ctgogo=entryEffectLife(spep_0+124,190006,69,0x100,-1,-120,500);--ゴゴゴ
setEffMoveKey(spep_0+124,ctgogo,-120,500,0);
setEffMoveKey(spep_0+193,ctgogo,-120,500,0);
setEffScaleKey(spep_0+124, ctgogo, -0.7, 0.7);
setEffScaleKey(spep_0+193, ctgogo, -0.7, 0.7);
setEffRotateKey(spep_0+124,ctgogo,-5);
setEffRotateKey(spep_0+193,ctgogo,-5);

--集中線
shuthu1 = entryEffectLife( spep_0 + 69,  906, 129, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 69, shuthu1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 198, shuthu1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 69, shuthu1, 1.55, 1.55 );
setEffScaleKey( spep_0 + 198, shuthu1, 1.55, 1.55 );

setEffRotateKey( spep_0 + 69, shuthu1, 180 );
setEffRotateKey( spep_0 + 198, shuthu1, 180);

setEffAlphaKey( spep_0 + 69, shuthu1, 255 );
setEffAlphaKey( spep_0 + 198, shuthu1, 255 );

--SE
playSe(spep_0,SE_05);
SE1=playSe( spep_0+70, 17);
stopSe(spep_0+130,SE1,5);

--[[
playSe(spep_0+70,SE_03);
playSe(spep_0+90,SE_03);
playSe(spep_0+110,SE_03);
]]
playSe( spep_0+124, SE_04);

--白フェード
entryFade( spep_0, 0,  0, 4, fcolor_r, fcolor_g, fcolor_b, 180);     -- white fade
entryFade( spep_0+193, 5,  2, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--黒背景
entryFadeBg(spep_0+50, 8, 140, 0, 0, 0, 0, 180);  -- 黒　背景

spep_1=spep_0+198;
--------------------------------------
--カードカットイン(90F)
--------------------------------------

playSe(spep_1,SE_05);
shuchusen9=entryEffectLife(spep_1,906,90,0x100,-1,0,0,0);   -- 集中線
setEffScaleKey(spep_1,shuchusen9,1.6,1.6);

speff2=entryEffect(spep_1,1507,0x80,-1,0,0,0);   -- カード
setEffReplaceTexture(speff2,1,1);
setEffReplaceTexture(speff2,2,0);-- カード差し替え
setEffReplaceTexture(speff2,5,4);-- 技名テクスチャ差し替え

-- ** エフェクト等 ** --
entryFade(spep_1+85,3,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_2=spep_1+93;

------------------------------------------------------
-- 発射
------------------------------------------------------
--エフェクトの再生
hassya=entryEffectLife(spep_2,SP_02x,158,0x100,-1,0,0,0);

setEffMoveKey(spep_2,hassya,0,0,0);
setEffMoveKey(spep_2+158,hassya,0,0,0);
setEffScaleKey(spep_2,hassya,1.0,1.0);
setEffScaleKey(spep_2+158,hassya,1.0,1.0);
setEffAlphaKey(spep_2,hassya,255);
setEffAlphaKey(spep_2+158,hassya,255);
setEffRotateKey(spep_2,hassya,0);
setEffRotateKey(spep_2+158,hassya,0);

--文字エントリー
ctba = entryEffectLife( spep_2 + 37,  10022, 28, 0x100, -1, 0, -48.9, 239.4 );--バッ
setEffMoveKey( spep_2 + 37, ctba, -48.9, 239.4 , 0 );
setEffMoveKey( spep_2 + 39, ctba, -48.9, 239.4 , 0 );
setEffMoveKey( spep_2 + 41, ctba, -48.8, 239.3 , 0 );
setEffMoveKey( spep_2 + 44, ctba, -48.7, 239.3 , 0 );
setEffMoveKey( spep_2 + 55, ctba, -48.7, 239.3 , 0 );
setEffMoveKey( spep_2 + 57, ctba, -48.6, 239.2 , 0 );
setEffMoveKey( spep_2 + 61, ctba, -48.6, 239.2 , 0 );
setEffMoveKey( spep_2 + 63, ctba, -48.5, 239.2 , 0 );
setEffMoveKey( spep_2 + 65, ctba, -48.4, 239.2 , 0 );

setEffScaleKey( spep_2 + 37, ctba, 0.58, 0.58 );
setEffScaleKey( spep_2 + 39, ctba, 1.16, 1.16 );
setEffScaleKey( spep_2 + 41, ctba, 1.57, 1.57 );
setEffScaleKey( spep_2 + 43, ctba, 1.82, 1.82 );
setEffScaleKey( spep_2 + 45, ctba, 1.9, 1.9 );
setEffScaleKey( spep_2 + 47, ctba, 1.93, 1.93 );
setEffScaleKey( spep_2 + 49, ctba, 1.95, 1.95 );
setEffScaleKey( spep_2 + 51, ctba, 1.98, 1.98 );
setEffScaleKey( spep_2 + 53, ctba, 2, 2 );
setEffScaleKey( spep_2 + 55, ctba, 2.03, 2.03 );
setEffScaleKey( spep_2 + 57, ctba, 2.06, 2.06 );
setEffScaleKey( spep_2 + 59, ctba, 2.16, 2.16 );
setEffScaleKey( spep_2 + 61, ctba, 2.33, 2.33 );
setEffScaleKey( spep_2 + 63, ctba, 2.57, 2.57 );
setEffScaleKey( spep_2 + 65, ctba, 2.87, 2.87 );

setEffRotateKey( spep_2 + 31, ctba, -14.2 );
setEffRotateKey( spep_2 + 65, ctba, -14.2 );

setEffAlphaKey( spep_2 + 37, ctba, 255 );
setEffAlphaKey( spep_2 + 55, ctba, 255 );
setEffAlphaKey( spep_2 + 57, ctba, 245 );
setEffAlphaKey( spep_2 + 59, ctba, 214 );
setEffAlphaKey( spep_2 + 61, ctba, 163 );
setEffAlphaKey( spep_2 + 63, ctba, 92 );
setEffAlphaKey( spep_2 + 65, ctba, 0 );

--流線
ryusen1 = entryEffectLife( spep_2 + 0,  921, 158, 0x80, -1, 0, -80.5, 0.3 );

setEffMoveKey( spep_2 + 0, ryusen1, -80.5, 0.3 , 0 );
setEffMoveKey( spep_2 + 158, ryusen1, -80.5, 0.3 , 0 );

setEffScaleKey( spep_2 + 0, ryusen1, 1.38, 1.41 );
setEffScaleKey( spep_2 + 158, ryusen1, 1.38, 1.41 );

setEffRotateKey( spep_2 + 0, ryusen1, -119 );
setEffRotateKey( spep_2 + 158, ryusen1, -119 );

setEffAlphaKey( spep_2 + 0, ryusen1, 255 );
setEffAlphaKey( spep_2 + 158, ryusen1, 255 );

--集中線
shuchu2 = entryEffectLife( spep_2 + 0,  906, 58, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, shuchu2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 18, shuchu2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 20, shuchu2, 0, 8 , 0 );
setEffMoveKey( spep_2 + 58, shuchu2, 0, 8 , 0 );

setEffScaleKey( spep_2 + 0, shuchu2, 1.78, 2.29 );
setEffScaleKey( spep_2 + 18, shuchu2, 1.78, 2.29 );
setEffScaleKey( spep_2 + 20, shuchu2, 1.35, 1.37 );
setEffScaleKey( spep_2 + 58, shuchu2, 1.35, 1.37 );

setEffRotateKey( spep_2 + 0, shuchu2, 0 );
setEffRotateKey( spep_2 + 58, shuchu2, 0 );

setEffAlphaKey( spep_2 + 0, shuchu2, 255 );
setEffAlphaKey( spep_2 + 48, shuchu2, 255 );
setEffAlphaKey( spep_2 + 50, shuchu2, 204 );
setEffAlphaKey( spep_2 + 52, shuchu2, 153 );
setEffAlphaKey( spep_2 + 54, shuchu2, 102 );
setEffAlphaKey( spep_2 + 56, shuchu2, 51 );
setEffAlphaKey( spep_2 + 58, shuchu2, 0 );

--黒背景
entryFadeBg(spep_2, 0, 158, 0, 0, 0, 0, 180);  -- 黒　背景
--SE
playSe( spep_2+37, SE_06);

--白フェード
entryFade( spep_2+154, 4,  1, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_3=spep_2+158;
------------------------------------------------------
-- 迫る
------------------------------------------------------
--流線
ryusen2 = entryEffectLife( spep_3 + 0,  921, 78, 0x80, -1,  0, -80.5, 0.3);
setEffMoveKey( spep_3 + 0, ryusen2, 0, -80.5, 0.3);
setEffMoveKey( spep_3 + 78, ryusen2, 0, -80.5, 0.3);

setEffScaleKey( spep_3 + 0, ryusen2, 1.38, 1.41 );
setEffScaleKey( spep_3 + 78, ryusen2, 1.38, 1.41 );

setEffRotateKey( spep_3 + 0, ryusen2, -132 );
setEffRotateKey( spep_3 + 78, ryusen2, -132 );

setEffAlphaKey( spep_3 + 0, ryusen2, 255 );
setEffAlphaKey( spep_3 + 78, ryusen2, 255 );


--エフェクトの再生
hit=entryEffectLife(spep_3,SP_03x,78,0x80,-1,0,0,0);

setEffMoveKey(spep_3,hit,0,0,0);
setEffMoveKey(spep_3+78,hit,0,0,0);
setEffScaleKey(spep_3,hit,1.0,1.0);
setEffScaleKey(spep_3+78,hit,1.0,1.0);
setEffAlphaKey(spep_3,hit,255);
setEffAlphaKey(spep_3+78,hit,255);
setEffRotateKey(spep_3,hit,0);
setEffRotateKey(spep_3+78,hit,0);

--文字エントリー
ctzudodo = entryEffectLife( spep_3 + 0,  10014, 78, 0x80, -1, 0, 57.8, 363.4 );--ズドドド
setEffMoveKey( spep_3 + 0, ctzudodo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_3 + 3, ctzudodo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_3 + 5, ctzudodo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_3 + 7, ctzudodo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_3 + 9, ctzudodo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_3 + 11, ctzudodo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_3 + 13, ctzudodo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_3 + 15, ctzudodo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_3 + 17, ctzudodo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_3 + 19, ctzudodo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_3 + 21, ctzudodo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_3 + 23, ctzudodo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_3 + 25, ctzudodo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_3 + 27, ctzudodo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_3 + 29, ctzudodo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_3 + 31, ctzudodo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_3 + 33, ctzudodo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_3 + 35, ctzudodo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_3 + 37, ctzudodo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_3 + 39, ctzudodo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_3 + 41, ctzudodo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_3 + 43, ctzudodo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_3 + 45, ctzudodo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_3 + 47, ctzudodo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_3 + 49, ctzudodo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_3 + 51, ctzudodo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_3 + 53, ctzudodo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_3 + 55, ctzudodo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_3 + 57, ctzudodo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_3 + 59, ctzudodo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_3 + 61, ctzudodo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_3 + 63, ctzudodo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_3 + 65, ctzudodo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_3 + 67, ctzudodo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_3 + 69, ctzudodo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_3 + 71, ctzudodo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_3 + 73, ctzudodo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_3 + 75, ctzudodo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_3 + 77, ctzudodo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_3 + 78, ctzudodo, 33.8, 347.4 , 0 );
setEffScaleKey( spep_3 + 0, ctzudodo, 2.87, 3.72 );
setEffScaleKey( spep_3 + 78, ctzudodo, 2.87, 3.72 );

setEffRotateKey( spep_3 + 0, ctzudodo, 10.1 );
setEffRotateKey( spep_3 + 78, ctzudodo, 10.1 );

setEffAlphaKey( spep_3 + 0, ctzudodo, 255 );
setEffAlphaKey( spep_3 + 78, ctzudodo, 255 );

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 78, 1, 0 );
changeAnime( spep_3 + 0, 1, 102 );


setMoveKey( spep_3 + 0, 1, 246.1, -194.1 , 0 );
setMoveKey( spep_3 + 2, 1, 245.1, -194.6 , 0 );
setMoveKey( spep_3 + 4, 1, 247.5, -193.4 , 0 );
setMoveKey( spep_3 + 6, 1, 245.1, -194.8 , 0 );
setMoveKey( spep_3 + 8, 1, 245.8, -192.6 , 0 );
setMoveKey( spep_3 + 10, 1, 243, -194.1 , 0 );


setScaleKey( spep_3 + 0, 1, 1, 1 );
setScaleKey( spep_3 + 10, 1, 1, 1 );


setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 + 78, 1, 0 );


--黒背景
entryFadeBg(spep_3, 0, 78, 0, 0, 0, 0, 180);  -- 黒　背景
--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

SP_dodge = spep_3+10 ; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

pauseAll( SP_dodge, 67);

--キャラクターの固定
setMoveKey(SP_dodge, 1, 243, -194.1 , 0 );
setScaleKey(SP_dodge , 1, 1, 1 );
setRotateKey(SP_dodge,   1, 0);

--キャラクターの固定
setMoveKey(SP_dodge+8, 1, 243, -194.1 , 0 );
setScaleKey(SP_dodge+8 , 1, 1, 1 );
setRotateKey(SP_dodge+8,   1, 0);



setDisp(SP_dodge+9, 0, 0);
setDisp(SP_dodge+9, 1, 0);
--setMoveKey(SP_dodge+9, 1, 0 , 0, 0);
setScaleKey(SP_dodge+9,  1 , 1.34, 1.34 );
setRotateKey(SP_dodge+9,   1, 0);

--setMoveKey(SP_dodge+10, 1, 0 , 0, 0);
setScaleKey(SP_dodge+10,  1 , 1.3 ,1.3);
setRotateKey(SP_dodge+10,   1, 0);


--敵を画面外に表示
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
--敵の動き(続き)
setMoveKey( spep_3 + 12, 1, 245.4, -192.3 , 0 );
setMoveKey( spep_3 + 14, 1, 242.9, -194.7 , 0 );
setMoveKey( spep_3 + 16, 1, 245.2, -191.5 , 0 );
setMoveKey( spep_3 + 18, 1, 241.2, -191.8 , 0 );
setMoveKey( spep_3 + 20, 1, 244.4, -192.2 , 0 );
setMoveKey( spep_3 + 22, 1, 240.4, -189 , 0 );
setMoveKey( spep_3 + 24, 1, 238.7, -192.9 , 0 );
setMoveKey( spep_3 + 26, 1, 240, -188.1 , 0 );
setMoveKey( spep_3 + 28, 1, 235.2, -189.7 , 0 );
setMoveKey( spep_3 + 30, 1, 239.8, -190 , 0 );
setMoveKey( spep_3 + 32, 1, 235.6, -186 , 0 );
setMoveKey( spep_3 + 34, 1, 233.7, -188.9 , 0 );
setMoveKey( spep_3 + 36, 1, 231.9, -183.2 , 0 );
setMoveKey( spep_3 + 38, 1, 233.1, -187.8 , 0 );
setMoveKey( spep_3 + 40, 1, 229.9, -180.8 , 0 );
setMoveKey( spep_3 + 42, 1, 230, -184.5 , 0 );
setMoveKey( spep_3 + 44, 1, 226.2, -179.6 , 0 );
setMoveKey( spep_3 + 46, 1, 221.5, -183.6 , 0 );
setMoveKey( spep_3 + 48, 1, 224.1, -176.6 , 0 );
setMoveKey( spep_3 + 50, 1, 221.1, -182.3 , 0 );
setMoveKey( spep_3 + 52, 1, 219.8, -174.2 , 0 );
setMoveKey( spep_3 + 54, 1, 215.1, -177.8 , 0 );
setMoveKey( spep_3 + 56, 1, 216.5, -171.5 , 0 );
setMoveKey( spep_3 + 58, 1, 208.3, -174.1 , 0 );
setMoveKey( spep_3 + 60, 1, 211.7, -173.7 , 0 );
setMoveKey( spep_3 + 62, 1, 204.3, -170.5 , 0 );
setMoveKey( spep_3 + 64, 1, 206.4, -170.2 , 0 );
setMoveKey( spep_3 + 66, 1, 197.9, -167.1 , 0 );
setMoveKey( spep_3 + 68, 1, 202, -169 , 0 );
setMoveKey( spep_3 + 70, 1, 190.9, -163.4 , 0 );
setMoveKey( spep_3 + 72, 1, 198.2, -160.3 , 0 );
setMoveKey( spep_3 + 74, 1, 187.6, -160.5 , 0 );
setMoveKey( spep_3 + 76, 1, 192.3, -157.3 , 0 );
setMoveKey( spep_3 + 78, 1, 181.4, -157.9 , 0 );

setScaleKey( spep_3 + 12, 1, 0.99, 0.99 );
setScaleKey( spep_3 + 18, 1, 0.99, 0.99 );
setScaleKey( spep_3 + 20, 1, 0.98, 0.98 );
setScaleKey( spep_3 + 24, 1, 0.98, 0.98 );
setScaleKey( spep_3 + 26, 1, 0.97, 0.97 );
setScaleKey( spep_3 + 28, 1, 0.97, 0.97 );
setScaleKey( spep_3 + 30, 1, 0.96, 0.96 );
setScaleKey( spep_3 + 32, 1, 0.96, 0.96 );
setScaleKey( spep_3 + 34, 1, 0.95, 0.95 );
setScaleKey( spep_3 + 36, 1, 0.95, 0.95 );
setScaleKey( spep_3 + 38, 1, 0.94, 0.94 );
setScaleKey( spep_3 + 40, 1, 0.94, 0.94 );
setScaleKey( spep_3 + 42, 1, 0.93, 0.93 );
setScaleKey( spep_3 + 44, 1, 0.92, 0.92 );
setScaleKey( spep_3 + 46, 1, 0.92, 0.92 );
setScaleKey( spep_3 + 48, 1, 0.91, 0.91 );
setScaleKey( spep_3 + 50, 1, 0.9, 0.9 );
setScaleKey( spep_3 + 52, 1, 0.89, 0.89 );
setScaleKey( spep_3 + 54, 1, 0.88, 0.88 );
setScaleKey( spep_3 + 56, 1, 0.88, 0.88 );
setScaleKey( spep_3 + 58, 1, 0.87, 0.87 );
setScaleKey( spep_3 + 60, 1, 0.86, 0.86 );
setScaleKey( spep_3 + 62, 1, 0.85, 0.85 );
setScaleKey( spep_3 + 64, 1, 0.84, 0.84 );
setScaleKey( spep_3 + 66, 1, 0.83, 0.83 );
setScaleKey( spep_3 + 68, 1, 0.82, 0.82 );
setScaleKey( spep_3 + 70, 1, 0.81, 0.81 );
setScaleKey( spep_3 + 72, 1, 0.8, 0.8 );
setScaleKey( spep_3 + 74, 1, 0.78, 0.78 );
setScaleKey( spep_3 + 76, 1, 0.77, 0.77 );
setScaleKey( spep_3 + 78, 1, 0.76, 0.76 );

--SE
playSe( spep_3, SE_06);

--白フェード
entryFade( spep_3+74, 4,  1, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_4=spep_3+78;
------------------------------------------------------
-- ギャン(60F)
------------------------------------------------------
setDisp( spep_4-1, 1, 0);

gyan = entryEffect(  spep_4,  190001,  0x100,  -1,  0,  0,  0);  --ギャン
setEffScaleKey(  spep_4,  gyan,  1.0,  1.0);
setEffAlphaKey(  spep_4,  gyan,  255);

-- 書き文字エントリー --
ct_06 = entryEffectLife( spep_4, 10006, 58, 0x100, -1, 0, 0, 300);    -- ギャン

setEffScaleKey( spep_4, ct_06, 2.0, 2.0);
setEffAlphaKey( spep_4, ct_06, 255);
setEffScaleKey( spep_4+10, ct_06, 3.8, 3.8);
setEffScaleKey( spep_4+58, ct_06, 4.5, 4.5);
setEffAlphaKey( spep_4+58, ct_06, 255);
setEffShake( spep_4, ct_06, 58, 10);

playSe(  spep_4, SE_09);

entryFade(  spep_4+47,  6,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryFadeBg(spep_4,0,60,0,0,0,0,255);
--entryFade( spep_4+50, 4,  8, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_5=spep_4+60;
------------------------------------------------------
-- 爆発
------------------------------------------------------
bakuhatu=entryEffect(spep_5,1683,0x100,-1,0,0,0);
setEffMoveKey(spep_5,bakuhatu,0,0,0);
setEffMoveKey(spep_5+200,bakuhatu,0,0,0);
setEffScaleKey(spep_5,bakuhatu,1.2,1.2);
setEffScaleKey(spep_5+200,bakuhatu,1.2,1.2);
setEffAlphaKey(spep_5,bakuhatu,255);
setEffAlphaKey(spep_5+200,bakuhatu,255);
setEffRotateKey(spep_5,bakuhatu,0);
setEffRotateKey(spep_5+200,bakuhatu,0);

--SE
playSe( spep_5+4, SE_10);

-- ダメージ表示
dealDamage(spep_5+110);
entryFade( spep_5+180, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_5+190);


end







