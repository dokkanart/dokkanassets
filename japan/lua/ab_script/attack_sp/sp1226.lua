--1015530 魔神ドミグラ_ボイリングフィスト
--sp_effect_b1_00060

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
SP_01=	152464	;--	構え〜手前突進
SP_02=	152465	;--	横移動
SP_03=	152466	;--	着弾

--敵
SP_01x=	152467	;--	構え〜手前突進	(敵)
SP_02x=	152468	;--	横移動	(敵)
SP_03x=	152469	;--	着弾	(敵)



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
--タメ
------------------------------------------------------
spep_0=0;

--エフェクト
tame=entryEffectLife(spep_0,SP_01,240,0x100,-1,0,0,0);

setEffMoveKey( spep_0 + 0, tame, 0, -100 , 0 );
setEffMoveKey( spep_0 + 240, tame, 0, -100 , 0 );

setEffScaleKey(spep_0,tame,1.0,1.0);
setEffScaleKey(spep_0+240,tame,1.0,1.0);

setEffRotateKey(spep_0,tame,0);
setEffRotateKey(spep_0+240,tame,0);

setEffAlphaKey(spep_0,tame,255);
setEffAlphaKey(spep_0+240,tame,255);

--集中線
shuchusen1 = entryEffectLife( spep_0 + 0,  906, 240, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 240, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchusen1, 1.15, 1.48 );
setEffScaleKey( spep_0 + 240, shuchusen1, 1.15, 1.48 );

setEffRotateKey( spep_0 + 0, shuchusen1, 180 );
setEffRotateKey( spep_0 + 240, shuchusen1, 180 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 240, shuchusen1, 255 );

--顔カットイン
speff=entryEffect(spep_0+124,1504,0x100,-1,0,0,0);  --カットイン(顔)
setEffReplaceTexture(speff,3,2);  --カットイン差し替え
speff1=entryEffect(spep_0+124,1505,0x100,-1,0,0,0);  --カットイン(セリフ)
setEffReplaceTexture(speff1,4,5);  --セリフカットイン差し替え

--ゴゴゴ
ctgogo=entryEffectLife(spep_0+136,190006,70,0x100,-1,0,520);--ゴゴゴ

setEffMoveKey(spep_0+136,ctgogo,0,520,0);
setEffMoveKey(spep_0+206,ctgogo,0,520,0);

setEffScaleKey(spep_0+136, ctgogo, 0.7, 0.7);
setEffScaleKey(spep_0+206, ctgogo, 0.7, 0.7);

setEffAlphaKey( spep_0 + 136, ctgogo, 0 );
setEffAlphaKey( spep_0 + 137, ctgogo, 255 );
setEffAlphaKey( spep_0 + 138, ctgogo, 255 );
setEffAlphaKey( spep_0 + 206, ctgogo, 255 );

setEffRotateKey(spep_0+136,ctgogo,0);
setEffRotateKey(spep_0+206,ctgogo,0);

--se
SE1=playSe(spep_0+18,15);
stopSe(spep_0+70,SE1,5);
playSe(spep_0+62,40);
playSe(spep_0+116,9);
playSe( spep_0+136, SE_04); --ゴゴゴ

-- ** エフェクト等 ** --
entryFade(spep_0, 0, 0, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_0+62, 0, 2, 4,fcolor_r,fcolor_g,fcolor_b,200);     -- white fade
entryFade(spep_0+232, 4, 8, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--黒背景
entryFadeBg(spep_0, 0, 236, 0, 0, 0, 0, 200);  -- 黒　背

--次の準備
spep_1=spep_0+240;

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
entryFade(spep_1+82,4,4,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_2=spep_1+90;
--------------------------------------
--突進
--------------------------------------
--エフェクト
rush=entryEffectLife(spep_2,SP_02,160,0x100,-1,0,0,0);

setEffMoveKey( spep_2 + 0, rush, 0, 0 , 0 );
setEffMoveKey( spep_2 + 160, rush, 0, 0 , 0 );

setEffScaleKey(spep_2,rush,1.0,1.0);
setEffScaleKey(spep_2+160,rush,1.0,1.0);

setEffRotateKey(spep_2,rush,0);
setEffRotateKey(spep_2+160,rush,0);

setEffAlphaKey(spep_2,rush,255);
setEffAlphaKey(spep_2+160,rush,255);

--流線(横)
ryusen = entryEffectLife( spep_2 + 0,  914, 158, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_2 + 0, ryusen, 0, 0 , 0 )
setEffMoveKey( spep_2 + 158, ryusen, 0, 0 , 0 )

setEffScaleKey( spep_2 + 0, ryusen, 1, 1 );
setEffScaleKey( spep_2 + 158, ryusen, 1, 1 );

setEffRotateKey( spep_2 + 0, ryusen, -180 );
setEffRotateKey( spep_2 + 158, ryusen, -180 );

setEffAlphaKey( spep_2 + 0, ryusen, 165 );
setEffAlphaKey( spep_2 + 58, ryusen, 165 );
setEffAlphaKey( spep_2 + 60, ryusen, 255 );
setEffAlphaKey( spep_2 + 158, ryusen, 255 );

--集中線
shuchusen2 = entryEffectLife( spep_2 + 52,  906, 106, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_2 + 52, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 158, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_2 + 52, shuchusen2, 1.15, 1.48 );
setEffScaleKey( spep_2 + 158, shuchusen2, 1.15, 1.48 );

setEffRotateKey( spep_2 + 52, shuchusen2, 0 );
setEffRotateKey( spep_2 + 158, shuchusen2, 0 );

setEffAlphaKey( spep_2 + 52, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 158, shuchusen2, 255 );

--SE
playSe( spep_2, 44); 
playSe( spep_2+52, SE_04); --ゴゴゴ

--黒背景
entryFadeBg(spep_2, 0, 52, 0, 0, 0, 0, 200);  -- 黒　背
entryFadeBg(spep_2+52, 0, 108, 0, 0, 0, 0, 255);  -- 黒　背

-- ** エフェクト等 ** --
entryFade(spep_2+52, 0, 2, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_2+152, 4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_3=spep_2+160;

--------------------------------------
--ヒット
--------------------------------------
--エフェクト
hit=entryEffectLife(spep_3,SP_03,130,0x100,-1,0,0,0);

setEffMoveKey( spep_3 + 0, hit, 0, 0 , 0 );
setEffMoveKey( spep_3 + 130, hit, 0, 0 , 0 );

setEffScaleKey(spep_3,hit,1.0,1.0);
setEffScaleKey(spep_3+130,hit,1.0,1.0);

setEffRotateKey(spep_3,hit,0);
setEffRotateKey(spep_3+130,hit,0);

setEffAlphaKey(spep_3,hit,255);
setEffAlphaKey(spep_3+130,hit,255);

--流線(斜め)
ryusen2 = entryEffectLife( spep_3 + 0,  921, 130, 0x80, -1, 0, -172, -60 );

setEffMoveKey( spep_3 + 0, ryusen2, -172, -60 , 0 )
setEffMoveKey( spep_3 + 130, ryusen2, -172, -60 , 0 );

setEffScaleKey( spep_3 + 0, ryusen2, 1.95, 1.36 );
setEffScaleKey( spep_3 + 130, ryusen2, 1.95, 1.36 );

setEffRotateKey( spep_3 + 0, ryusen2, -34.7 );
setEffRotateKey( spep_3 + 130, ryusen2, -34.7 );

setEffAlphaKey( spep_3 + 0, ryusen2, 255 );
setEffAlphaKey( spep_3 + 130, ryusen2, 255 );

--集中線
shuchusen3 = entryEffectLife( spep_3 + 0,  906, 130, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_3 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_3 + 130, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen3, 1.15, 1.48 );
setEffScaleKey( spep_3 + 130, shuchusen3, 1.15, 1.48 );

setEffRotateKey( spep_3 + 0, shuchusen3, 180 );
setEffRotateKey( spep_3 + 130, shuchusen3, 180 );

setEffAlphaKey( spep_3 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_3 + 130, shuchusen3, 255 );
--SE
playSe( spep_3, SE_04); 
--黒背景
entryFadeBg(spep_3, 0, 130, 0, 0, 0, 0, 200);  -- 黒　背
--敵の動き
setDisp( spep_3 + 2, 1, 1 );
setDisp( spep_3 + 128, 1, 0 );

changeAnime( spep_3 + 2, 1, 100 );
changeAnime( spep_3 + 50, 1, 108 );

setMoveKey( spep_3 + 2, 1, 488.9, 365.4 , 0 );
setMoveKey( spep_3 + 4, 1, 497, 381.5 , 0 );
setMoveKey( spep_3 + 6, 1, 480.9, 373.5 , 0 );
setMoveKey( spep_3 + 8, 1, 497, 381.5 , 0 );
setMoveKey( spep_3 + 10, 1, 488.9, 373.5 , 0 );
setMoveKey( spep_3 + 12, 1, 497, 381.5 , 0 );
setMoveKey( spep_3 + 14, 1, 480.9, 365.4 , 0 );
setMoveKey( spep_3 + 16, 1, 497, 381.5 , 0 );
setMoveKey( spep_3 + 18, 1, 488.9, 373.5 , 0 );
setMoveKey( spep_3 + 20, 1, 497, 381.5 , 0 );
setMoveKey( spep_3 + 22, 1, 488.9, 373.5 , 0 );
setMoveKey( spep_3 + 24, 1, 474.7, 363.4 , 0 );
setMoveKey( spep_3 + 26, 1, 431.4, 325.2 , 0 );
setMoveKey( spep_3 + 28, 1, 415.4, 315.2 , 0 );
setMoveKey( spep_3 + 30, 1, 370.3, 277 , 0 );

setScaleKey( spep_3 + 2, 1, 0.33, 0.33 );
setScaleKey( spep_3 + 22, 1, 0.33, 0.33 );
setScaleKey( spep_3 + 24, 1, 0.39, 0.39 );
setScaleKey( spep_3 + 26, 1, 0.46, 0.46 );
setScaleKey( spep_3 + 28, 1, 0.55, 0.55 );
setScaleKey( spep_3 + 30, 1, 0.65, 0.65 );


setRotateKey( spep_3 + 2, 1, 0 );
setRotateKey( spep_3 + 30, 1, 0 );

--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

SP_dodge = spep_3+30 ; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

pauseAll( SP_dodge, 67);

--キャラクターの固定
setMoveKey(SP_dodge, 1,370.3, 277 , 0 );
setScaleKey(SP_dodge , 1, 0.65, 0.65);
setRotateKey(SP_dodge,   1, 0 );

--キャラクターの固定
setMoveKey(SP_dodge, 1,370.3, 277 , 0 );
setScaleKey(SP_dodge , 1, 0.65, 0.65);
setRotateKey(SP_dodge,   1, 0 );


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
--setMoveKey(SP_dodge+9, 1, 1000 , 1000, 0);
--setMoveKey(SP_dodge+10, 1, 1000 , 1000, 0);


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
setMoveKey( spep_3 + 32, 1, 336.3, 251 , 0 );
setMoveKey( spep_3 + 34, 1, 273.3, 196.7 , 0 );
setMoveKey( spep_3 + 36, 1, 237.6, 170.7 , 0 );
setMoveKey( spep_3 + 38, 1, 172.7, 116.4 , 0 );
setMoveKey( spep_3 + 40, 1, 164.7, 112.4 , 0 );
setMoveKey( spep_3 + 42, 1, 140.6, 92.4 , 0 );
setMoveKey( spep_3 + 44, 1, 132.6, 88.3 , 0 );
setMoveKey( spep_3 + 46, 1, 108.5, 68.2 , 0 );
setMoveKey( spep_3 + 48, 1, 100.5, 64.2 , 0 );
setMoveKey( spep_3 + 50, 1, 168.5, 76.3 , 0 );
setMoveKey( spep_3 + 52, 1, 192.8, 95 , 0 );
setMoveKey( spep_3 + 54, 1, 171.3, 70.6 , 0 );
setMoveKey( spep_3 + 56, 1, 176.4, 99.8 , 0 );
setMoveKey( spep_3 + 58, 1, 157.2, 69.9 , 0 );
setMoveKey( spep_3 + 60, 1, 159.2, 104.2 , 0 );
setMoveKey( spep_3 + 62, 1, 126.1, 98.3 , 0 );
setMoveKey( spep_3 + 64, 1, 151.2, 107.6 , 0 );
setMoveKey( spep_3 + 66, 1, 144.2, 93 , 0 );
setMoveKey( spep_3 + 68, 1, 153, 110.2 , 0 );
setMoveKey( spep_3 + 70, 1, 138.2, 95.8 , 0 );
setMoveKey( spep_3 + 72, 1, 154.8, 112.8 , 0 );
setMoveKey( spep_3 + 74, 1, 140.2, 106.3 , 0 );
setMoveKey( spep_3 + 76, 1, 156.6, 115.4 , 0 );
setMoveKey( spep_3 + 78, 1, 142.1, 101.3 , 0 );
setMoveKey( spep_3 + 80, 1, 158.3, 118 , 0 );
setMoveKey( spep_3 + 82, 1, 151.6, 104.1 , 0 );
setMoveKey( spep_3 + 84, 1, 160, 120.5 , 0 );
setMoveKey( spep_3 + 86, 1, 153.4, 114.3 , 0 );
setMoveKey( spep_3 + 88, 1, 161.7, 123.1 , 0 );
setMoveKey( spep_3 + 90, 1, 147.8, 109.5 , 0 );
setMoveKey( spep_3 + 92, 1, 163.4, 125.6 , 0 );
setMoveKey( spep_3 + 94, 1, 156.9, 119.5 , 0 );
setMoveKey( spep_3 + 96, 1, 165, 128.1 , 0 );
setMoveKey( spep_3 + 98, 1, 151.4, 122.1 , 0 );
setMoveKey( spep_3 + 100, 1, 166.6, 130.6 , 0 );
setMoveKey( spep_3 + 102, 1, 160.3, 117.6 , 0 );
setMoveKey( spep_3 + 104, 1, 168.2, 133.1 , 0 );
setMoveKey( spep_3 + 106, 1, 154.9, 120.3 , 0 );
setMoveKey( spep_3 + 108, 1, 169.7, 135.5 , 0 );
setMoveKey( spep_3 + 110, 1, 163.5, 129.8 , 0 );
setMoveKey( spep_3 + 112, 1, 171.2, 138 , 0 );
setMoveKey( spep_3 + 114, 1, 158.3, 125.5 , 0 );
setMoveKey( spep_3 + 116, 1, 172.7, 140.4 , 0 );
setMoveKey( spep_3 + 118, 1, 166.7, 134.9 , 0 );
setMoveKey( spep_3 + 120, 1, 164.1, 132.8 , 0 );
setMoveKey( spep_3 + 122, 1, 168.2, 137.4 , 0 );
setMoveKey( spep_3 + 124, 1, 159.1, 132.1 , 0 );
setMoveKey( spep_3 + 126, 1, 169.7, 139.9 , 0 );
setMoveKey( spep_3 + 128, 1, 167.2, 131.4 , 0 );

setScaleKey( spep_3 + 32, 1, 0.76, 0.76 );
setScaleKey( spep_3 + 34, 1, 0.89, 0.89 );
setScaleKey( spep_3 + 36, 1, 1.03, 1.03 );
setScaleKey( spep_3 + 38, 1, 1.19, 1.19 );
setScaleKey( spep_3 + 40, 1, 1.23, 1.23 );
setScaleKey( spep_3 + 42, 1, 1.28, 1.28 );
setScaleKey( spep_3 + 44, 1, 1.32, 1.32 );
setScaleKey( spep_3 + 46, 1, 1.36, 1.36 );
setScaleKey( spep_3 + 48, 1, 1.41, 1.41 );
setScaleKey( spep_3 + 50, 1, 2.82, 2.82 );
setScaleKey( spep_3 + 52, 1, 2.59, 2.59 );
setScaleKey( spep_3 + 54, 1, 2.35, 2.35 );
setScaleKey( spep_3 + 56, 1, 2.11, 2.11 );
setScaleKey( spep_3 + 58, 1, 1.88, 1.88 );
setScaleKey( spep_3 + 60, 1, 1.64, 1.64 );
setScaleKey( spep_3 + 62, 1, 1.4, 1.4 );
setScaleKey( spep_3 + 64, 1, 1.39, 1.39 );
setScaleKey( spep_3 + 66, 1, 1.38, 1.38 );
setScaleKey( spep_3 + 68, 1, 1.38, 1.38 );
setScaleKey( spep_3 + 70, 1, 1.37, 1.37 );
setScaleKey( spep_3 + 72, 1, 1.36, 1.36 );
setScaleKey( spep_3 + 74, 1, 1.35, 1.35 );
setScaleKey( spep_3 + 76, 1, 1.34, 1.34 );
setScaleKey( spep_3 + 78, 1, 1.33, 1.33 );
setScaleKey( spep_3 + 80, 1, 1.32, 1.32 );
setScaleKey( spep_3 + 82, 1, 1.31, 1.31 );
setScaleKey( spep_3 + 84, 1, 1.3, 1.3 );
setScaleKey( spep_3 + 86, 1, 1.29, 1.29 );
setScaleKey( spep_3 + 88, 1, 1.28, 1.28 );
setScaleKey( spep_3 + 90, 1, 1.27, 1.27 );
setScaleKey( spep_3 + 92, 1, 1.26, 1.26 );
setScaleKey( spep_3 + 94, 1, 1.25, 1.25 );
setScaleKey( spep_3 + 96, 1, 1.24, 1.24 );
setScaleKey( spep_3 + 98, 1, 1.23, 1.23 );
setScaleKey( spep_3 + 100, 1, 1.23, 1.23 );
setScaleKey( spep_3 + 102, 1, 1.22, 1.22 );
setScaleKey( spep_3 + 104, 1, 1.21, 1.21 );
setScaleKey( spep_3 + 106, 1, 1.2, 1.2 );
setScaleKey( spep_3 + 108, 1, 1.19, 1.19 );
setScaleKey( spep_3 + 110, 1, 1.18, 1.18 );
setScaleKey( spep_3 + 112, 1, 1.17, 1.17 );
setScaleKey( spep_3 + 114, 1, 1.16, 1.16 );
setScaleKey( spep_3 + 116, 1, 1.15, 1.15 );
setScaleKey( spep_3 + 118, 1, 1.14, 1.14 );
setScaleKey( spep_3 + 120, 1, 1.13, 1.13 );
setScaleKey( spep_3 + 122, 1, 1.13, 1.13 );
setScaleKey( spep_3 + 124, 1, 1.12, 1.12 );
setScaleKey( spep_3 + 126, 1, 1.11, 1.11 );
setScaleKey( spep_3 + 128, 1, 1.1, 1.1 );

setRotateKey( spep_3 + 48, 1, 0 );
setRotateKey( spep_3 + 49, 1, 0 );
setRotateKey( spep_3 + 50, 1, -10.5 );
setRotateKey( spep_3 + 128, 1, -10.5 );

--文字エントリー
ctdogon = entryEffectLife( spep_3 + 50,  10018, 38, 0x100, -1, 0, -8.9, 395.5 );--ドゴォンッ

setEffMoveKey( spep_3 + 50, ctdogon, -8.9, 395.5 , 0 );
setEffMoveKey( spep_3 + 52, ctdogon, -4, 392.8 , 0 );
setEffMoveKey( spep_3 + 54, ctdogon, -4, 392.7 , 0 );
setEffMoveKey( spep_3 + 56, ctdogon, -13.3, 397.6 , 0 );
setEffMoveKey( spep_3 + 58, ctdogon, -4, 392.8 , 0 );
setEffMoveKey( spep_3 + 60, ctdogon, -11.8, 396.9 , 0 );
setEffMoveKey( spep_3 + 62, ctdogon, -4, 392.8 , 0 );
setEffMoveKey( spep_3 + 64, ctdogon, -11.6, 396.7 , 0 );
setEffMoveKey( spep_3 + 66, ctdogon, -4, 392.8 , 0 );
setEffMoveKey( spep_3 + 68, ctdogon, -11.3, 396.6 , 0 );
setEffMoveKey( spep_3 + 70, ctdogon, -4, 392.7 , 0 );
setEffMoveKey( spep_3 + 72, ctdogon, -11.1, 396.4 , 0 );
setEffMoveKey( spep_3 + 74, ctdogon, -4, 392.6 , 0 );
setEffMoveKey( spep_3 + 76, ctdogon, -4, 392.6 , 0 );
setEffMoveKey( spep_3 + 78, ctdogon, -10.9, 396.2 , 0 );
setEffMoveKey( spep_3 + 80, ctdogon, -4, 392.6 , 0 );
setEffMoveKey( spep_3 + 82, ctdogon, -10.8, 396.2 , 0 );
setEffMoveKey( spep_3 + 84, ctdogon, -4, 392.7 , 0 );
setEffMoveKey( spep_3 + 86, ctdogon, -10.7, 396.2 , 0 );
setEffMoveKey( spep_3 + 88, ctdogon, -10.7, 396.2 , 0 );

setEffScaleKey( spep_3 + 50, ctdogon, 2.12, 2.12 );
setEffScaleKey( spep_3 + 52, ctdogon, 3.25, 3.25 );
setEffScaleKey( spep_3 + 54, ctdogon, 4.38, 4.38 );
setEffScaleKey( spep_3 + 56, ctdogon, 4.04, 4.04 );
setEffScaleKey( spep_3 + 58, ctdogon, 3.71, 3.71 );
setEffScaleKey( spep_3 + 60, ctdogon, 3.38, 3.38 );
setEffScaleKey( spep_3 + 62, ctdogon, 3.33, 3.33 );
setEffScaleKey( spep_3 + 64, ctdogon, 3.28, 3.28 );
setEffScaleKey( spep_3 + 66, ctdogon, 3.24, 3.24 );
setEffScaleKey( spep_3 + 68, ctdogon, 3.19, 3.19 );
setEffScaleKey( spep_3 + 70, ctdogon, 3.14, 3.14 );
setEffScaleKey( spep_3 + 72, ctdogon, 3.09, 3.09 );
setEffScaleKey( spep_3 + 74, ctdogon, 3.04, 3.04 );
setEffScaleKey( spep_3 + 76, ctdogon, 3, 3 );
setEffScaleKey( spep_3 + 78, ctdogon, 2.98, 2.98 );
setEffScaleKey( spep_3 + 80, ctdogon, 2.97, 2.97 );
setEffScaleKey( spep_3 + 82, ctdogon, 2.96, 2.96 );
setEffScaleKey( spep_3 + 84, ctdogon, 2.95, 2.95 );
setEffScaleKey( spep_3 + 86, ctdogon, 2.94, 2.94 );
setEffScaleKey( spep_3 + 88, ctdogon, 2.93, 2.93 );

setEffRotateKey( spep_3 + 50, ctdogon, -10.5 );
setEffRotateKey( spep_3 + 64, ctdogon, -10.5 );
setEffRotateKey( spep_3 + 66, ctdogon, -10.4 );
setEffRotateKey( spep_3 + 80, ctdogon, -10.4 );
setEffRotateKey( spep_3 + 82, ctdogon, -10.3 );
setEffRotateKey( spep_3 + 88, ctdogon, -10.3 );

setEffAlphaKey( spep_3 + 50, ctdogon, 255 );
setEffAlphaKey( spep_3 + 76, ctdogon, 255 );
setEffAlphaKey( spep_3 + 78, ctdogon, 213 );
setEffAlphaKey( spep_3 + 80, ctdogon, 170 );
setEffAlphaKey( spep_3 + 82, ctdogon, 128 );
setEffAlphaKey( spep_3 + 84, ctdogon, 85 );
setEffAlphaKey( spep_3 + 86, ctdogon, 42 );
setEffAlphaKey( spep_3 + 88, ctdogon, 0 );

-- ** エフェクト等 ** --
entryFade(spep_3+44, 0, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_3+122, 4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--SE
playSe( spep_3+50, 1011); 
--playSe( spep_3+50,1060);
--playSe( spep_3+60,1024);
--次の準備
spep_4=spep_3+130;
--------------------------------------
--アッタク
--------------------------------------
--エフェクト
explosion=entryEffect(spep_4-110,1929,0x100,-1,0,0,0);

setEffMoveKey( spep_4-110 + 0, explosion, 0, 0 , 0 );
setEffMoveKey( spep_4+ 164, explosion, 0, 0 , 0 );

setEffScaleKey(spep_4-110,explosion,1.0,1.0);
setEffScaleKey(spep_4+164,explosion,1.0,1.0);

setEffRotateKey(spep_4-110,explosion,0);
setEffRotateKey(spep_4+164,explosion,0);

setEffAlphaKey(spep_4-110,explosion,0);
setEffAlphaKey(spep_4-2,explosion,0);
setEffAlphaKey(spep_4-1,explosion,0);
setEffAlphaKey(spep_4,explosion,255);
setEffAlphaKey(spep_4+164,explosion,255);

--SE
playSe(spep_4,SE_10);

--黒背景
entryFadeBg(spep_4, 0, 158, 0, 0, 0, 0, 200);  -- 黒　背

-- ダメージ表示
dealDamage(spep_4+10);
entryFade( spep_4+150, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_4+160);

else 
------------------------------------------------------
--敵
------------------------------------------------------
------------------------------------------------------
--タメ
------------------------------------------------------
spep_0=0;

--エフェクト
tame=entryEffectLife(spep_0,SP_01x,240,0x100,-1,0,0,0);

setEffMoveKey( spep_0 + 0, tame, 0, -100 , 0 );
setEffMoveKey( spep_0 + 240, tame, 0, -100 , 0 );

setEffScaleKey(spep_0,tame,-1.0,1.0);
setEffScaleKey(spep_0+240,tame,-1.0,1.0);

setEffRotateKey(spep_0,tame,0);
setEffRotateKey(spep_0+240,tame,0);

setEffAlphaKey(spep_0,tame,255);
setEffAlphaKey(spep_0+240,tame,255);

--集中線
shuchusen1 = entryEffectLife( spep_0 + 0,  906, 240, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 240, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchusen1, 1.15, 1.48 );
setEffScaleKey( spep_0 + 240, shuchusen1, 1.15, 1.48 );

setEffRotateKey( spep_0 + 0, shuchusen1, 180 );
setEffRotateKey( spep_0 + 240, shuchusen1, 180 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 240, shuchusen1, 255 );

--顔カットイン
--speff=entryEffect(spep_0+124,1504,0x100,-1,0,0,0);  --カットイン(顔)
--setEffReplaceTexture(speff,3,2);  --カットイン差し替え
--speff1=entryEffect(spep_0+124,1505,0x100,-1,0,0,0);  --カットイン(セリフ)
--setEffReplaceTexture(speff1,4,5);  --セリフカットイン差し替え

--ゴゴゴ
ctgogo=entryEffectLife(spep_0+136,190006,70,0x100,-1,0,520);--ゴゴゴ

setEffMoveKey(spep_0+136,ctgogo,0,520,0);
setEffMoveKey(spep_0+206,ctgogo,0,520,0);

setEffScaleKey(spep_0+136, ctgogo, -0.7, 0.7);
setEffScaleKey(spep_0+206, ctgogo, -0.7, 0.7);

setEffAlphaKey( spep_0 + 136, ctgogo, 0 );
setEffAlphaKey( spep_0 + 137, ctgogo, 255 );
setEffAlphaKey( spep_0 + 138, ctgogo, 255 );
setEffAlphaKey( spep_0 + 206, ctgogo, 255 );

setEffRotateKey(spep_0+136,ctgogo,0);
setEffRotateKey(spep_0+206,ctgogo,0);


--se
SE1=playSe(spep_0+18,15);
stopSe(spep_0+70,SE1,5);
playSe(spep_0+62,40);
playSe(spep_0+116,9);
playSe( spep_0+136, SE_04); --ゴゴゴ

-- ** エフェクト等 ** --
entryFade(spep_0, 0, 0, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_0+62, 0, 2, 4,fcolor_r,fcolor_g,fcolor_b,200);     -- white fade
entryFade(spep_0+232, 4, 8, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--黒背景
entryFadeBg(spep_0, 0, 236, 0, 0, 0, 0, 200);  -- 黒　背

--次の準備
spep_1=spep_0+240;

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
entryFade(spep_1+82,4,4,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_2=spep_1+90;
--------------------------------------
--突進
--------------------------------------
--エフェクト
rush=entryEffectLife(spep_2,SP_02x,160,0x100,-1,0,0,0);

setEffMoveKey( spep_2 + 0, rush, 0, 0 , 0 );
setEffMoveKey( spep_2 + 160, rush, 0, 0 , 0 );

setEffScaleKey(spep_2,rush,1.0,1.0);
setEffScaleKey(spep_2+160,rush,1.0,1.0);

setEffRotateKey(spep_2,rush,0);
setEffRotateKey(spep_2+160,rush,0);

setEffAlphaKey(spep_2,rush,255);
setEffAlphaKey(spep_2+160,rush,255);

--流線(横)
ryusen = entryEffectLife( spep_2 + 0,  914, 158, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_2 + 0, ryusen, 0, 0 , 0 )
setEffMoveKey( spep_2 + 158, ryusen, 0, 0 , 0 )

setEffScaleKey( spep_2 + 0, ryusen, 1, 1 );
setEffScaleKey( spep_2 + 158, ryusen, 1, 1 );

setEffRotateKey( spep_2 + 0, ryusen, -180 );
setEffRotateKey( spep_2 + 158, ryusen, -180 );

setEffAlphaKey( spep_2 + 0, ryusen, 165 );
setEffAlphaKey( spep_2 + 58, ryusen, 165 );
setEffAlphaKey( spep_2 + 60, ryusen, 255 );
setEffAlphaKey( spep_2 + 158, ryusen, 255 );

--集中線
shuchusen2 = entryEffectLife( spep_2 + 52,  906, 106, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_2 + 52, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 158, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_2 + 52, shuchusen2, 1.15, 1.48 );
setEffScaleKey( spep_2 + 158, shuchusen2, 1.15, 1.48 );

setEffRotateKey( spep_2 + 52, shuchusen2, 0 );
setEffRotateKey( spep_2 + 158, shuchusen2, 0 );

setEffAlphaKey( spep_2 + 52, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 158, shuchusen2, 255 );

--SE
playSe( spep_2, 44); 
playSe( spep_2+52, SE_04); --ゴゴゴ

--黒背景
entryFadeBg(spep_2, 0, 52, 0, 0, 0, 0, 200);  -- 黒　背
entryFadeBg(spep_2+52, 0, 108, 0, 0, 0, 0, 255);  -- 黒　背

-- ** エフェクト等 ** --
entryFade(spep_2+52, 0, 2, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_2+152, 4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_3=spep_2+160;

--------------------------------------
--ヒット
--------------------------------------
--エフェクト
hit=entryEffectLife(spep_3,SP_03x,130,0x100,-1,0,0,0);

setEffMoveKey( spep_3 + 0, hit, 0, 0 , 0 );
setEffMoveKey( spep_3 + 130, hit, 0, 0 , 0 );

setEffScaleKey(spep_3,hit,1.0,1.0);
setEffScaleKey(spep_3+130,hit,1.0,1.0);

setEffRotateKey(spep_3,hit,0);
setEffRotateKey(spep_3+130,hit,0);

setEffAlphaKey(spep_3,hit,255);
setEffAlphaKey(spep_3+130,hit,255);

--流線(斜め)
ryusen2 = entryEffectLife( spep_3 + 0,  921, 130, 0x80, -1, 0, -172, -60 );

setEffMoveKey( spep_3 + 0, ryusen2, -172, -60 , 0 )
setEffMoveKey( spep_3 + 130, ryusen2, -172, -60 , 0 );

setEffScaleKey( spep_3 + 0, ryusen2, 1.95, 1.36 );
setEffScaleKey( spep_3 + 130, ryusen2, 1.95, 1.36 );

setEffRotateKey( spep_3 + 0, ryusen2, -34.7 );
setEffRotateKey( spep_3 + 130, ryusen2, -34.7 );

setEffAlphaKey( spep_3 + 0, ryusen2, 255 );
setEffAlphaKey( spep_3 + 130, ryusen2, 255 );

--集中線
shuchusen3 = entryEffectLife( spep_3 + 0,  906, 130, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_3 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_3 + 130, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen3, 1.15, 1.48 );
setEffScaleKey( spep_3 + 130, shuchusen3, 1.15, 1.48 );

setEffRotateKey( spep_3 + 0, shuchusen3, 180 );
setEffRotateKey( spep_3 + 130, shuchusen3, 180 );

setEffAlphaKey( spep_3 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_3 + 130, shuchusen3, 255 );
--SE
playSe( spep_3, SE_04); 
--黒背景
entryFadeBg(spep_3, 0, 130, 0, 0, 0, 0, 200);  -- 黒　背
--敵の動き
setDisp( spep_3 + 2, 1, 1 );
setDisp( spep_3 + 128, 1, 0 );

changeAnime( spep_3 + 2, 1, 100 );
changeAnime( spep_3 + 50, 1, 108 );

setMoveKey( spep_3 + 2, 1, 488.9, 365.4 , 0 );
setMoveKey( spep_3 + 4, 1, 497, 381.5 , 0 );
setMoveKey( spep_3 + 6, 1, 480.9, 373.5 , 0 );
setMoveKey( spep_3 + 8, 1, 497, 381.5 , 0 );
setMoveKey( spep_3 + 10, 1, 488.9, 373.5 , 0 );
setMoveKey( spep_3 + 12, 1, 497, 381.5 , 0 );
setMoveKey( spep_3 + 14, 1, 480.9, 365.4 , 0 );
setMoveKey( spep_3 + 16, 1, 497, 381.5 , 0 );
setMoveKey( spep_3 + 18, 1, 488.9, 373.5 , 0 );
setMoveKey( spep_3 + 20, 1, 497, 381.5 , 0 );
setMoveKey( spep_3 + 22, 1, 488.9, 373.5 , 0 );
setMoveKey( spep_3 + 24, 1, 474.7, 363.4 , 0 );
setMoveKey( spep_3 + 26, 1, 431.4, 325.2 , 0 );
setMoveKey( spep_3 + 28, 1, 415.4, 315.2 , 0 );
setMoveKey( spep_3 + 30, 1, 370.3, 277 , 0 );

setScaleKey( spep_3 + 2, 1, 0.33, 0.33 );
setScaleKey( spep_3 + 22, 1, 0.33, 0.33 );
setScaleKey( spep_3 + 24, 1, 0.39, 0.39 );
setScaleKey( spep_3 + 26, 1, 0.46, 0.46 );
setScaleKey( spep_3 + 28, 1, 0.55, 0.55 );
setScaleKey( spep_3 + 30, 1, 0.65, 0.65 );


setRotateKey( spep_3 + 2, 1, 0 );
setRotateKey( spep_3 + 30, 1, 0 );

--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

SP_dodge = spep_3+30 ; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

pauseAll( SP_dodge, 67);

--キャラクターの固定
setMoveKey(SP_dodge, 1,370.3, 277 , 0 );
setScaleKey(SP_dodge , 1, 0.65, 0.65);
setRotateKey(SP_dodge,   1, 0 );

--キャラクターの固定
setMoveKey(SP_dodge, 1,370.3, 277 , 0 );
setScaleKey(SP_dodge , 1, 0.65, 0.65);
setRotateKey(SP_dodge,   1, 0 );


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
--setMoveKey(SP_dodge+9, 1, 1000 , 1000, 0);
--setMoveKey(SP_dodge+10, 1, 1000 , 1000, 0);


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
setMoveKey( spep_3 + 32, 1, 336.3, 251 , 0 );
setMoveKey( spep_3 + 34, 1, 273.3, 196.7 , 0 );
setMoveKey( spep_3 + 36, 1, 237.6, 170.7 , 0 );
setMoveKey( spep_3 + 38, 1, 172.7, 116.4 , 0 );
setMoveKey( spep_3 + 40, 1, 164.7, 112.4 , 0 );
setMoveKey( spep_3 + 42, 1, 140.6, 92.4 , 0 );
setMoveKey( spep_3 + 44, 1, 132.6, 88.3 , 0 );
setMoveKey( spep_3 + 46, 1, 108.5, 68.2 , 0 );
setMoveKey( spep_3 + 48, 1, 100.5, 64.2 , 0 );
setMoveKey( spep_3 + 50, 1, 168.5, 76.3 , 0 );
setMoveKey( spep_3 + 52, 1, 192.8, 95 , 0 );
setMoveKey( spep_3 + 54, 1, 171.3, 70.6 , 0 );
setMoveKey( spep_3 + 56, 1, 176.4, 99.8 , 0 );
setMoveKey( spep_3 + 58, 1, 157.2, 69.9 , 0 );
setMoveKey( spep_3 + 60, 1, 159.2, 104.2 , 0 );
setMoveKey( spep_3 + 62, 1, 126.1, 98.3 , 0 );
setMoveKey( spep_3 + 64, 1, 151.2, 107.6 , 0 );
setMoveKey( spep_3 + 66, 1, 144.2, 93 , 0 );
setMoveKey( spep_3 + 68, 1, 153, 110.2 , 0 );
setMoveKey( spep_3 + 70, 1, 138.2, 95.8 , 0 );
setMoveKey( spep_3 + 72, 1, 154.8, 112.8 , 0 );
setMoveKey( spep_3 + 74, 1, 140.2, 106.3 , 0 );
setMoveKey( spep_3 + 76, 1, 156.6, 115.4 , 0 );
setMoveKey( spep_3 + 78, 1, 142.1, 101.3 , 0 );
setMoveKey( spep_3 + 80, 1, 158.3, 118 , 0 );
setMoveKey( spep_3 + 82, 1, 151.6, 104.1 , 0 );
setMoveKey( spep_3 + 84, 1, 160, 120.5 , 0 );
setMoveKey( spep_3 + 86, 1, 153.4, 114.3 , 0 );
setMoveKey( spep_3 + 88, 1, 161.7, 123.1 , 0 );
setMoveKey( spep_3 + 90, 1, 147.8, 109.5 , 0 );
setMoveKey( spep_3 + 92, 1, 163.4, 125.6 , 0 );
setMoveKey( spep_3 + 94, 1, 156.9, 119.5 , 0 );
setMoveKey( spep_3 + 96, 1, 165, 128.1 , 0 );
setMoveKey( spep_3 + 98, 1, 151.4, 122.1 , 0 );
setMoveKey( spep_3 + 100, 1, 166.6, 130.6 , 0 );
setMoveKey( spep_3 + 102, 1, 160.3, 117.6 , 0 );
setMoveKey( spep_3 + 104, 1, 168.2, 133.1 , 0 );
setMoveKey( spep_3 + 106, 1, 154.9, 120.3 , 0 );
setMoveKey( spep_3 + 108, 1, 169.7, 135.5 , 0 );
setMoveKey( spep_3 + 110, 1, 163.5, 129.8 , 0 );
setMoveKey( spep_3 + 112, 1, 171.2, 138 , 0 );
setMoveKey( spep_3 + 114, 1, 158.3, 125.5 , 0 );
setMoveKey( spep_3 + 116, 1, 172.7, 140.4 , 0 );
setMoveKey( spep_3 + 118, 1, 166.7, 134.9 , 0 );
setMoveKey( spep_3 + 120, 1, 164.1, 132.8 , 0 );
setMoveKey( spep_3 + 122, 1, 168.2, 137.4 , 0 );
setMoveKey( spep_3 + 124, 1, 159.1, 132.1 , 0 );
setMoveKey( spep_3 + 126, 1, 169.7, 139.9 , 0 );
setMoveKey( spep_3 + 128, 1, 167.2, 131.4 , 0 );

setScaleKey( spep_3 + 32, 1, 0.76, 0.76 );
setScaleKey( spep_3 + 34, 1, 0.89, 0.89 );
setScaleKey( spep_3 + 36, 1, 1.03, 1.03 );
setScaleKey( spep_3 + 38, 1, 1.19, 1.19 );
setScaleKey( spep_3 + 40, 1, 1.23, 1.23 );
setScaleKey( spep_3 + 42, 1, 1.28, 1.28 );
setScaleKey( spep_3 + 44, 1, 1.32, 1.32 );
setScaleKey( spep_3 + 46, 1, 1.36, 1.36 );
setScaleKey( spep_3 + 48, 1, 1.41, 1.41 );
setScaleKey( spep_3 + 50, 1, 2.82, 2.82 );
setScaleKey( spep_3 + 52, 1, 2.59, 2.59 );
setScaleKey( spep_3 + 54, 1, 2.35, 2.35 );
setScaleKey( spep_3 + 56, 1, 2.11, 2.11 );
setScaleKey( spep_3 + 58, 1, 1.88, 1.88 );
setScaleKey( spep_3 + 60, 1, 1.64, 1.64 );
setScaleKey( spep_3 + 62, 1, 1.4, 1.4 );
setScaleKey( spep_3 + 64, 1, 1.39, 1.39 );
setScaleKey( spep_3 + 66, 1, 1.38, 1.38 );
setScaleKey( spep_3 + 68, 1, 1.38, 1.38 );
setScaleKey( spep_3 + 70, 1, 1.37, 1.37 );
setScaleKey( spep_3 + 72, 1, 1.36, 1.36 );
setScaleKey( spep_3 + 74, 1, 1.35, 1.35 );
setScaleKey( spep_3 + 76, 1, 1.34, 1.34 );
setScaleKey( spep_3 + 78, 1, 1.33, 1.33 );
setScaleKey( spep_3 + 80, 1, 1.32, 1.32 );
setScaleKey( spep_3 + 82, 1, 1.31, 1.31 );
setScaleKey( spep_3 + 84, 1, 1.3, 1.3 );
setScaleKey( spep_3 + 86, 1, 1.29, 1.29 );
setScaleKey( spep_3 + 88, 1, 1.28, 1.28 );
setScaleKey( spep_3 + 90, 1, 1.27, 1.27 );
setScaleKey( spep_3 + 92, 1, 1.26, 1.26 );
setScaleKey( spep_3 + 94, 1, 1.25, 1.25 );
setScaleKey( spep_3 + 96, 1, 1.24, 1.24 );
setScaleKey( spep_3 + 98, 1, 1.23, 1.23 );
setScaleKey( spep_3 + 100, 1, 1.23, 1.23 );
setScaleKey( spep_3 + 102, 1, 1.22, 1.22 );
setScaleKey( spep_3 + 104, 1, 1.21, 1.21 );
setScaleKey( spep_3 + 106, 1, 1.2, 1.2 );
setScaleKey( spep_3 + 108, 1, 1.19, 1.19 );
setScaleKey( spep_3 + 110, 1, 1.18, 1.18 );
setScaleKey( spep_3 + 112, 1, 1.17, 1.17 );
setScaleKey( spep_3 + 114, 1, 1.16, 1.16 );
setScaleKey( spep_3 + 116, 1, 1.15, 1.15 );
setScaleKey( spep_3 + 118, 1, 1.14, 1.14 );
setScaleKey( spep_3 + 120, 1, 1.13, 1.13 );
setScaleKey( spep_3 + 122, 1, 1.13, 1.13 );
setScaleKey( spep_3 + 124, 1, 1.12, 1.12 );
setScaleKey( spep_3 + 126, 1, 1.11, 1.11 );
setScaleKey( spep_3 + 128, 1, 1.1, 1.1 );

setRotateKey( spep_3 + 48, 1, 0 );
setRotateKey( spep_3 + 49, 1, 0 );
setRotateKey( spep_3 + 50, 1, -10.5 );
setRotateKey( spep_3 + 128, 1, -10.5 );

--文字エントリー
ctdogon = entryEffectLife( spep_3 + 50,  10018, 38, 0x100, -1, 0, -8.9, 395.5 );--ドゴォンッ

setEffMoveKey( spep_3 + 50, ctdogon, -8.9, 395.5 , 0 );
setEffMoveKey( spep_3 + 52, ctdogon, -4, 392.8 , 0 );
setEffMoveKey( spep_3 + 54, ctdogon, -4, 392.7 , 0 );
setEffMoveKey( spep_3 + 56, ctdogon, -13.3, 397.6 , 0 );
setEffMoveKey( spep_3 + 58, ctdogon, -4, 392.8 , 0 );
setEffMoveKey( spep_3 + 60, ctdogon, -11.8, 396.9 , 0 );
setEffMoveKey( spep_3 + 62, ctdogon, -4, 392.8 , 0 );
setEffMoveKey( spep_3 + 64, ctdogon, -11.6, 396.7 , 0 );
setEffMoveKey( spep_3 + 66, ctdogon, -4, 392.8 , 0 );
setEffMoveKey( spep_3 + 68, ctdogon, -11.3, 396.6 , 0 );
setEffMoveKey( spep_3 + 70, ctdogon, -4, 392.7 , 0 );
setEffMoveKey( spep_3 + 72, ctdogon, -11.1, 396.4 , 0 );
setEffMoveKey( spep_3 + 74, ctdogon, -4, 392.6 , 0 );
setEffMoveKey( spep_3 + 76, ctdogon, -4, 392.6 , 0 );
setEffMoveKey( spep_3 + 78, ctdogon, -10.9, 396.2 , 0 );
setEffMoveKey( spep_3 + 80, ctdogon, -4, 392.6 , 0 );
setEffMoveKey( spep_3 + 82, ctdogon, -10.8, 396.2 , 0 );
setEffMoveKey( spep_3 + 84, ctdogon, -4, 392.7 , 0 );
setEffMoveKey( spep_3 + 86, ctdogon, -10.7, 396.2 , 0 );
setEffMoveKey( spep_3 + 88, ctdogon, -10.7, 396.2 , 0 );

setEffScaleKey( spep_3 + 50, ctdogon, 2.12, 2.12 );
setEffScaleKey( spep_3 + 52, ctdogon, 3.25, 3.25 );
setEffScaleKey( spep_3 + 54, ctdogon, 4.38, 4.38 );
setEffScaleKey( spep_3 + 56, ctdogon, 4.04, 4.04 );
setEffScaleKey( spep_3 + 58, ctdogon, 3.71, 3.71 );
setEffScaleKey( spep_3 + 60, ctdogon, 3.38, 3.38 );
setEffScaleKey( spep_3 + 62, ctdogon, 3.33, 3.33 );
setEffScaleKey( spep_3 + 64, ctdogon, 3.28, 3.28 );
setEffScaleKey( spep_3 + 66, ctdogon, 3.24, 3.24 );
setEffScaleKey( spep_3 + 68, ctdogon, 3.19, 3.19 );
setEffScaleKey( spep_3 + 70, ctdogon, 3.14, 3.14 );
setEffScaleKey( spep_3 + 72, ctdogon, 3.09, 3.09 );
setEffScaleKey( spep_3 + 74, ctdogon, 3.04, 3.04 );
setEffScaleKey( spep_3 + 76, ctdogon, 3, 3 );
setEffScaleKey( spep_3 + 78, ctdogon, 2.98, 2.98 );
setEffScaleKey( spep_3 + 80, ctdogon, 2.97, 2.97 );
setEffScaleKey( spep_3 + 82, ctdogon, 2.96, 2.96 );
setEffScaleKey( spep_3 + 84, ctdogon, 2.95, 2.95 );
setEffScaleKey( spep_3 + 86, ctdogon, 2.94, 2.94 );
setEffScaleKey( spep_3 + 88, ctdogon, 2.93, 2.93 );

setEffRotateKey( spep_3 + 50, ctdogon, -10.5 );
setEffRotateKey( spep_3 + 64, ctdogon, -10.5 );
setEffRotateKey( spep_3 + 66, ctdogon, -10.4 );
setEffRotateKey( spep_3 + 80, ctdogon, -10.4 );
setEffRotateKey( spep_3 + 82, ctdogon, -10.3 );
setEffRotateKey( spep_3 + 88, ctdogon, -10.3 );

setEffAlphaKey( spep_3 + 50, ctdogon, 255 );
setEffAlphaKey( spep_3 + 76, ctdogon, 255 );
setEffAlphaKey( spep_3 + 78, ctdogon, 213 );
setEffAlphaKey( spep_3 + 80, ctdogon, 170 );
setEffAlphaKey( spep_3 + 82, ctdogon, 128 );
setEffAlphaKey( spep_3 + 84, ctdogon, 85 );
setEffAlphaKey( spep_3 + 86, ctdogon, 42 );
setEffAlphaKey( spep_3 + 88, ctdogon, 0 );

-- ** エフェクト等 ** --
entryFade(spep_3+44, 0, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_3+122, 4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--SE
playSe( spep_3+50, 1011); 
--playSe( spep_3+50,1060);
--playSe( spep_3+60,1024);
--次の準備
spep_4=spep_3+130;
--------------------------------------
--アッタク
--------------------------------------
--エフェクト
explosion=entryEffect(spep_4-110,1929,0x100,-1,0,0,0);

setEffMoveKey( spep_4-110 + 0, explosion, 0, 0 , 0 );
setEffMoveKey( spep_4+ 164, explosion, 0, 0 , 0 );

setEffScaleKey(spep_4-110,explosion,1.0,1.0);
setEffScaleKey(spep_4+164,explosion,1.0,1.0);

setEffRotateKey(spep_4-110,explosion,0);
setEffRotateKey(spep_4+164,explosion,0);

setEffAlphaKey(spep_4-110,explosion,0);
setEffAlphaKey(spep_4-2,explosion,0);
setEffAlphaKey(spep_4-1,explosion,0);
setEffAlphaKey(spep_4,explosion,255);
setEffAlphaKey(spep_4+164,explosion,255);

--SE
playSe(spep_4,SE_10);

--黒背景
entryFadeBg(spep_4, 0, 158, 0, 0, 0, 0, 200);  -- 黒　背

-- ダメージ表示
dealDamage(spep_4+10);
entryFade( spep_4+150, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_4+160);

end


