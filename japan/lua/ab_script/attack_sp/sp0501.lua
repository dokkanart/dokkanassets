--1015550 黒仮面のサイヤ人_ダークファイナルフラッシュ
--sp_effect_a1_00131

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
SP_01=	152448	;--	溜め
SP_02=	152449	;--	発射
SP_03=	152450	;--	迫る（前）
SP_04=	152451	;--	迫る（後）
--敵
SP_01x=	152448	;--	溜め
SP_02x=	152449	;--	発射
SP_03x=	152450	;--	迫る（前）
SP_04x=	152451	;--	迫る（後）
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
tame=entryEffectLife(spep_0,SP_01,200,0x100,-1,0,0,0);

setEffMoveKey( spep_0 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_0 + 200, tame, 0, 0 , 0 );

setEffScaleKey(spep_0,tame,1.0,1.0);
setEffScaleKey(spep_0+200,tame,1.0,1.0);

setEffRotateKey(spep_0,tame,0);
setEffRotateKey(spep_0+200,tame,0);

setEffAlphaKey(spep_0,tame,255);
setEffAlphaKey(spep_0+200,tame,255);

--顔カットイン
speff=entryEffect(spep_0+112,1504,0x100,-1,0,0,0);  --カットイン(顔)
setEffReplaceTexture(speff,3,2);  --カットイン差し替え
speff1=entryEffect(spep_0+112,1505,0x100,-1,0,0,0);  --カットイン(セリフ)
setEffReplaceTexture(speff1,4,5);  --セリフカットイン差し替え

--ゴゴゴ
ctgogo=entryEffectLife(spep_0+124,190006,70,0x100,-1,0,520);--ゴゴゴ

setEffMoveKey(spep_0+124,ctgogo,0,520,0);
setEffMoveKey(spep_0+194,ctgogo,0,520,0);

setEffScaleKey(spep_0+124, ctgogo, 0.7, 0.7);
setEffScaleKey(spep_0+194, ctgogo, 0.7, 0.7);

setEffAlphaKey( spep_0 + 124, ctgogo, 0 );
setEffAlphaKey( spep_0 + 125, ctgogo, 255 );
setEffAlphaKey( spep_0 + 126, ctgogo, 255 );
setEffAlphaKey( spep_0 + 194, ctgogo, 255 );

setEffRotateKey(spep_0+124,ctgogo,0);
setEffRotateKey(spep_0+194,ctgogo,0);

--集中線
shuchusen1 = entryEffectLife( spep_0 + 24,  906, 170, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_0 + 24, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 198, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 24, shuchusen1, 1.4, 1.4 );
setEffScaleKey( spep_0 + 198, shuchusen1, 1.4, 1.4 );

setEffRotateKey( spep_0 + 24, shuchusen1, 180 );
setEffRotateKey( spep_0 + 198, shuchusen1, 180 );

setEffAlphaKey( spep_0 + 24, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 25, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 26, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 28, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 198, shuchusen1, 255 );

--SE
playSe(spep_0+28,1003);--丸くなる
playSe(spep_0+52,1013);--広がる
SE1=playSe(spep_0+70,15);
stopSe(spep_0+120,SE1,0);
playSe( spep_0+124, SE_04); --ゴゴゴ

--黒背景
entryFadeBg(spep_0, 0, 200, 0, 0, 0, 0, 200);  -- 黒　背

-- ** エフェクト等 ** --
entryFade(spep_0+192, 4, 8, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_1=spep_0+200;

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
--発射
------------------------------------------------------
--エフェクト
firinga=entryEffectLife(spep_2,SP_02,120,0x100,-1,0,0,0);

setEffMoveKey( spep_2 + 0, firinga, 0, 0 , 0 );
setEffMoveKey( spep_2 + 120, firinga, 0, 0 , 0 );

setEffScaleKey(spep_2,firinga,1.0,1.0);
setEffScaleKey(spep_2+120,firinga,1.0,1.0);

setEffRotateKey(spep_2,firinga,0);
setEffRotateKey(spep_2+120,firinga,0);

setEffAlphaKey(spep_2,firinga,255);
setEffAlphaKey(spep_2+120,firinga,255);

--集中線
shuchusen2 = entryEffectLife( spep_2 + 0,  906, 36, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_2 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 36, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen2, 1.18, 1.18 );
setEffScaleKey( spep_2 + 36, shuchusen2, 1.18, 1.18 );

setEffRotateKey( spep_2 + 0, shuchusen2, 180 );
setEffRotateKey( spep_2 + 36, shuchusen2, 180 );

setEffAlphaKey( spep_2 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 36, shuchusen2, 255 );

--流線(斜め)
ryuusen1 = entryEffectLife( spep_2 + 36,  921, 82, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_2 + 36, ryuusen1, 0, 0 , 0 );
setEffMoveKey( spep_2 + 118, ryuusen1, 0, 0 , 0 );

setEffScaleKey( spep_2 + 36, ryuusen1, 1.56, 1.22 );
setEffScaleKey( spep_2 + 118, ryuusen1, 1.56, 1.25 );

setEffRotateKey( spep_2 + 36, ryuusen1, -131.8 );
setEffRotateKey( spep_2 + 118, ryuusen1, -131.8 );

setEffAlphaKey( spep_2 + 36, ryuusen1, 0 );
setEffAlphaKey( spep_2 + 37, ryuusen1, 255 );
setEffAlphaKey( spep_2 + 38, ryuusen1, 255 );
setEffAlphaKey( spep_2 + 118, ryuusen1, 255 );

--SE
playSe( spep_2, SE_02); --気溜め
--黒背景
entryFadeBg(spep_2, 0, 120, 0, 0, 0, 0, 200);  -- 黒　背

--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

SP_dodge = spep_2+30 ; --エンドフェイズのフレーム数を置き換える

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

--文字エントリー
ctzuo = entryEffectLife( spep_2 + 36,  10012, 54, 0x100, -1, 0, 138.4, 175.6 );--ズオッ

setEffMoveKey( spep_2 + 36, ctzuo, 138.4, 175.6 , 0 );
setEffMoveKey( spep_2 + 42, ctzuo, 135.2, 195.7 , 0 );
setEffMoveKey( spep_2 + 44, ctzuo, 105.5, 221.2 , 0 );
setEffMoveKey( spep_2 + 46, ctzuo, 109.2, 239.8 , 0 );
setEffMoveKey( spep_2 + 48, ctzuo, 72.8, 266.8 , 0 );
setEffMoveKey( spep_2 + 50, ctzuo, 83.2, 284 , 0 );
setEffMoveKey( spep_2 + 52, ctzuo, 56.4, 289.7 , 0 );
setEffMoveKey( spep_2 + 54, ctzuo, 84.9, 283.6 , 0 );
setEffMoveKey( spep_2 + 56, ctzuo, 56.3, 289.7 , 0 );
setEffMoveKey( spep_2 + 58, ctzuo, 86.6, 283.3 , 0 );
setEffMoveKey( spep_2 + 60, ctzuo, 56.3, 289.6 , 0 );
setEffMoveKey( spep_2 + 62, ctzuo, 88.3, 282.9 , 0 );
setEffMoveKey( spep_2 + 64, ctzuo, 56.4, 289.7 , 0 );
setEffMoveKey( spep_2 + 66, ctzuo, 90, 282.6 , 0 );
setEffMoveKey( spep_2 + 68, ctzuo, 56.3, 289.6 , 0 );
setEffMoveKey( spep_2 + 70, ctzuo, 91.6, 282.2 , 0 );
setEffMoveKey( spep_2 + 72, ctzuo, 56.3, 289.7 , 0 );
setEffMoveKey( spep_2 + 74, ctzuo, 93.3, 281.9 , 0 );
setEffMoveKey( spep_2 + 76, ctzuo, 56.3, 289.6 , 0 );
setEffMoveKey( spep_2 + 78, ctzuo, 95, 281.5 , 0 );
setEffMoveKey( spep_2 + 80, ctzuo, 56.4, 289.6 , 0 );
setEffMoveKey( spep_2 + 82, ctzuo, 96.7, 281.1 , 0 );
setEffMoveKey( spep_2 + 84, ctzuo, 56.4, 289.6 , 0 );
setEffMoveKey( spep_2 + 86, ctzuo, 98.4, 280.8 , 0 );
setEffMoveKey( spep_2 + 88, ctzuo, 56.4, 289.7 , 0 );
setEffMoveKey( spep_2 + 90, ctzuo, 56.4, 289.7 , 0 );

setEffScaleKey( spep_2 + 36, ctzuo, 1, 1 );
setEffScaleKey( spep_2 + 42, ctzuo, 1.35, 1.35 );
setEffScaleKey( spep_2 + 44, ctzuo, 1.7, 1.7 );
setEffScaleKey( spep_2 + 46, ctzuo, 2.05, 2.05 );
setEffScaleKey( spep_2 + 48, ctzuo, 2.4, 2.4 );
setEffScaleKey( spep_2 + 50, ctzuo, 2.75, 2.75 );
setEffScaleKey( spep_2 + 52, ctzuo, 2.83, 2.83 );
setEffScaleKey( spep_2 + 54, ctzuo, 2.92, 2.92 );
setEffScaleKey( spep_2 + 56, ctzuo, 3.01, 3.01 );
setEffScaleKey( spep_2 + 58, ctzuo, 3.09, 3.09 );
setEffScaleKey( spep_2 + 60, ctzuo, 3.18, 3.18 );
setEffScaleKey( spep_2 + 62, ctzuo, 3.26, 3.26 );
setEffScaleKey( spep_2 + 64, ctzuo, 3.35, 3.35 );
setEffScaleKey( spep_2 + 66, ctzuo, 3.43, 3.43 );
setEffScaleKey( spep_2 + 68, ctzuo, 3.52, 3.52 );
setEffScaleKey( spep_2 + 70, ctzuo, 3.61, 3.61 );
setEffScaleKey( spep_2 + 72, ctzuo, 3.69, 3.69 );
setEffScaleKey( spep_2 + 74, ctzuo, 3.78, 3.78 );
setEffScaleKey( spep_2 + 76, ctzuo, 3.86, 3.86 );
setEffScaleKey( spep_2 + 78, ctzuo, 3.95, 3.95 );
setEffScaleKey( spep_2 + 80, ctzuo, 4.04, 4.04 );
setEffScaleKey( spep_2 + 82, ctzuo, 4.12, 4.12 );
setEffScaleKey( spep_2 + 84, ctzuo, 4.21, 4.21 );
setEffScaleKey( spep_2 + 86, ctzuo, 4.29, 4.29 );
setEffScaleKey( spep_2 + 88, ctzuo, 4.38, 4.38 );
setEffScaleKey( spep_2 + 90, ctzuo, 4.47, 4.47 );

setEffRotateKey( spep_2 + 36, ctzuo, -24.8 );
setEffRotateKey( spep_2 + 42, ctzuo, -25 );
setEffRotateKey( spep_2 + 90, ctzuo, -25 );

setEffAlphaKey( spep_2 + 36, ctzuo, 0 );
setEffAlphaKey( spep_2 + 37, ctzuo, 255 );
setEffAlphaKey( spep_2 + 38, ctzuo, 255 );
setEffAlphaKey( spep_2 + 78, ctzuo, 255 );
setEffAlphaKey( spep_2 + 80, ctzuo, 212 );
setEffAlphaKey( spep_2 + 82, ctzuo, 170 );
setEffAlphaKey( spep_2 + 84, ctzuo, 128 );
setEffAlphaKey( spep_2 + 86, ctzuo, 85 );
setEffAlphaKey( spep_2 + 88, ctzuo, 43 );
setEffAlphaKey( spep_2 + 90, ctzuo, 0 );

-- ** エフェクト等 ** --
entryFade(spep_2+112, 4, 6, 10,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--SE
playSe( spep_2+20, SE_02); --気溜め
playSe( spep_2+38, SE_06); --発射

--次の準備
spep_3=spep_2+120;

--------------------------------------
--命中
--------------------------------------
--エフェクト
hit_f=entryEffectLife(spep_3,SP_03,80,0x100,-1,0,0,0);

setEffMoveKey( spep_3 + 0, hit_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 80, hit_f, 0, 0 , 0 );

setEffScaleKey(spep_3,hit_f,1.0,1.0);
setEffScaleKey(spep_3+80,hit_f,1.0,1.0);

setEffRotateKey(spep_3,hit_f,0);
setEffRotateKey(spep_3+80,hit_f,0);

setEffAlphaKey(spep_3,hit_f,255);
setEffAlphaKey(spep_3+80,hit_f,255);

--エフェクト
hit_b=entryEffectLife(spep_3,SP_04,80,0x80,-1,0,0,0);

setEffMoveKey( spep_3 + 0, hit_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 80, hit_b, 0, 0 , 0 );

setEffScaleKey(spep_3,hit_b,1.0,1.0);
setEffScaleKey(spep_3+80,hit_b,1.0,1.0);

setEffRotateKey(spep_3,hit_b,0);
setEffRotateKey(spep_3+80,hit_b,0);

setEffAlphaKey(spep_3,hit_b,255);
setEffAlphaKey(spep_3+80,hit_b,255);

--集中線
shuchusen3 = entryEffectLife( spep_3 + 0,  906, 78, 0x100, -1, 0, -171, 345.7 );

setEffMoveKey( spep_3 + 0, shuchusen3, -171, 345.7 , 0 );
setEffMoveKey( spep_3 + 78, shuchusen3, -171, 345.7 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen3, 1.66, 1.66 );
setEffScaleKey( spep_3 + 78, shuchusen3, 1.66, 1.66 );

setEffRotateKey( spep_3 + 0, shuchusen3, 180 );
setEffRotateKey( spep_3 + 78, shuchusen3, 180 );

setEffAlphaKey( spep_3 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_3 + 78, shuchusen3, 255 );

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 78, 1, 0 );

changeAnime( spep_3 + 0, 1, 102 );
changeAnime( spep_3 + 27, 1, 107 );-----30

setMoveKey( spep_3 + 0, 1, 322.8, -272.5 , 0 );
setMoveKey( spep_3 + 2, 1, 289, -249 , 0 );
setMoveKey( spep_3 + 4, 1, 267, -206 , 0 );
setMoveKey( spep_3 + 6, 1, 233.5, -184.1 , 0 );
setMoveKey( spep_3 + 8, 1, 200.4, -159.6 , 0 );
setMoveKey( spep_3 + 10, 1, 177.1, -119 , 0 );
setMoveKey( spep_3 + 12, 1, 144.3, -95.8 , 0 );
setMoveKey( spep_3 + 14, 1, 111.8, -70.4 , 0 );
setMoveKey( spep_3 + 16, 1, 116.3, -59.9 , 0 );
setMoveKey( spep_3 + 18, 1, 112.7, -64.2 , 0 );
setMoveKey( spep_3 + 20, 1, 109.1, -67.2 , 0 );
setMoveKey( spep_3 + 22, 1, 113.6, -56.8 , 0 );
setMoveKey( spep_3 + 24, 1, 110.1, -61.1 , 0 );
setMoveKey( spep_3 + 24, 1, 110.1, -61.1 , 0 );
setMoveKey( spep_3 + 26, 1, 110.1, -61.1 , 0 );
--setMoveKey( spep_3 + 26, 1, 106.5, -64 , 0 );
--setMoveKey( spep_3 + 29, 1, 110.9, -53.8 , 0 );
setMoveKey( spep_3 + 27, 1, 51.5, -62.2 , 0 );--30
setMoveKey( spep_3 + 28, 1, 51.5, -62.2 , 0 );--30
setMoveKey( spep_3 + 32, 1, 63.1, -85 , 0 );
setMoveKey( spep_3 + 34, 1, 71, -79.4 , 0 );
setMoveKey( spep_3 + 36, 1, 64.4, -104.2 , 0 );
setMoveKey( spep_3 + 38, 1, 76.4, -127.5 , 0 );
setMoveKey( spep_3 + 40, 1, 84.5, -120.8 , 0 );
setMoveKey( spep_3 + 42, 1, 77.3, -146.2 , 0 );
setMoveKey( spep_3 + 44, 1, 89.7, -170 , 0 );
setMoveKey( spep_3 + 46, 1, 98.1, -162.2 , 0 );
setMoveKey( spep_3 + 48, 1, 90.2, -188.2 , 0 );
setMoveKey( spep_3 + 50, 1, 103.1, -212.5 , 0 );
setMoveKey( spep_3 + 52, 1, 111.6, -203.6 , 0 );
setMoveKey( spep_3 + 54, 1, 103.1, -230.2 , 0 );
setMoveKey( spep_3 + 56, 1, 116.5, -255.1 , 0 );
setMoveKey( spep_3 + 58, 1, 121.4, -234.8 , 0 );
setMoveKey( spep_3 + 60, 1, 109, -251.5 , 0 );
setMoveKey( spep_3 + 62, 1, 118.7, -266.1 , 0 );
setMoveKey( spep_3 + 64, 1, 123.8, -245.6 , 0 );
setMoveKey( spep_3 + 66, 1, 111.1, -262.4 , 0 );
setMoveKey( spep_3 + 68, 1, 121, -277.1 , 0 );
setMoveKey( spep_3 + 70, 1, 126, -256.3 , 0 );
setMoveKey( spep_3 + 72, 1, 113.3, -273.3 , 0 );
setMoveKey( spep_3 + 74, 1, 123.3, -288.1 , 0 );
setMoveKey( spep_3 + 76, 1, 128.3, -267.1 , 0 );
setMoveKey( spep_3 + 78, 1, 115.5, -284.3 , 0 );

setScaleKey( spep_3 + 0, 1, 2.34, 2.34 );
setScaleKey( spep_3 + 2, 1, 2.22, 2.22 );
setScaleKey( spep_3 + 4, 1, 2.1, 2.1 );
setScaleKey( spep_3 + 6, 1, 1.98, 1.98 );
setScaleKey( spep_3 + 8, 1, 1.86, 1.86 );
setScaleKey( spep_3 + 10, 1, 1.74, 1.74 );
setScaleKey( spep_3 + 12, 1, 1.62, 1.62 );
setScaleKey( spep_3 + 14, 1, 1.5, 1.5 );
setScaleKey( spep_3 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_3 + 18, 1, 1.49, 1.49 );
setScaleKey( spep_3 + 20, 1, 1.49, 1.49 );
setScaleKey( spep_3 + 22, 1, 1.48, 1.48 );
setScaleKey( spep_3 + 24, 1, 1.48, 1.48 );
setScaleKey( spep_3 + 26, 1, 1.47, 1.47 );--26
--setScaleKey( spep_3 + 29, 1, 1.47, 1.47 );--29
setScaleKey( spep_3 + 27, 1, 0.64, 0.64 );--30
setScaleKey( spep_3 + 28, 1, 0.64, 0.64 );--30
setScaleKey( spep_3 + 32, 1, 0.67, 0.67 );
setScaleKey( spep_3 + 34, 1, 0.69, 0.69 );
setScaleKey( spep_3 + 36, 1, 0.71, 0.71 );
setScaleKey( spep_3 + 38, 1, 0.73, 0.73 );
setScaleKey( spep_3 + 40, 1, 0.76, 0.76 );
setScaleKey( spep_3 + 42, 1, 0.78, 0.78 );
setScaleKey( spep_3 + 44, 1, 0.8, 0.8 );
setScaleKey( spep_3 + 46, 1, 0.83, 0.83 );
setScaleKey( spep_3 + 48, 1, 0.85, 0.85 );
setScaleKey( spep_3 + 50, 1, 0.87, 0.87 );
setScaleKey( spep_3 + 52, 1, 0.9, 0.9 );
setScaleKey( spep_3 + 54, 1, 0.92, 0.92 );
setScaleKey( spep_3 + 56, 1, 0.94, 0.94 );
setScaleKey( spep_3 + 58, 1, 0.95, 0.95 );
setScaleKey( spep_3 + 60, 1, 0.95, 0.95 );
setScaleKey( spep_3 + 62, 1, 0.96, 0.96 );
setScaleKey( spep_3 + 64, 1, 0.96, 0.96 );
setScaleKey( spep_3 + 66, 1, 0.97, 0.97 );
setScaleKey( spep_3 + 68, 1, 0.97, 0.97 );
setScaleKey( spep_3 + 70, 1, 0.98, 0.98 );
setScaleKey( spep_3 + 72, 1, 0.98, 0.98 );
setScaleKey( spep_3 + 74, 1, 0.99, 0.99 );
setScaleKey( spep_3 + 76, 1, 0.99, 0.99 );
setScaleKey( spep_3 + 78, 1, 1.0, 1.0 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 + 29, 1, 0 );
setRotateKey( spep_3 + 30, 1, -7.3 );
setRotateKey( spep_3 + 32, 1, 1.9 );
setRotateKey( spep_3 + 34, 1, -7.4 );
setRotateKey( spep_3 + 36, 1, -7.4 );
setRotateKey( spep_3 + 38, 1, 1.9 );
setRotateKey( spep_3 + 40, 1, -7.4 );
setRotateKey( spep_3 + 42, 1, -7.4 );
setRotateKey( spep_3 + 44, 1, 1.9 );
setRotateKey( spep_3 + 46, 1, -7.4 );
setRotateKey( spep_3 + 48, 1, -7.4 );
setRotateKey( spep_3 + 50, 1, 1.9 );
setRotateKey( spep_3 + 52, 1, -7.4 );
setRotateKey( spep_3 + 54, 1, -7.4 );
setRotateKey( spep_3 + 56, 1, 1.9 );
setRotateKey( spep_3 + 58, 1, -7.4 );
setRotateKey( spep_3 + 60, 1, -7.4 );
setRotateKey( spep_3 + 62, 1, 1.9 );
setRotateKey( spep_3 + 64, 1, -7.4 );
setRotateKey( spep_3 + 66, 1, -7.4 );
setRotateKey( spep_3 + 68, 1, 1.9 );
setRotateKey( spep_3 + 70, 1, -7.4 );
setRotateKey( spep_3 + 72, 1, -7.4 );
setRotateKey( spep_3 + 74, 1, 1.9 );
setRotateKey( spep_3 + 76, 1, -7.4 );
setRotateKey( spep_3 + 78, 1, -7.4 );

--SE
playSe( spep_3, SE_07); --発射

--黒背景
entryFadeBg(spep_3, 0, 80, 0, 0, 0, 0, 200);  -- 黒　背

-- ** エフェクト等 ** --
entryFade(spep_3+68, 4, 10, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- whit_fe fade

--次の準備
spep_4=spep_3+80;

--------------------------------------
--ギャン
--------------------------------------

--エフェクトの再生
gyan = entryEffectLife(  spep_4,  190001,  60,  0x100,  -1,  0,  0,  0);  --ギャン
setEffScaleKey(  spep_4,  gyan,  1.0,  1.0);
setEffScaleKey(  spep_4+60,  gyan,  1.0,  1.0);
setEffAlphaKey(  spep_4,  gyan,  255);
setEffAlphaKey(  spep_4+60,  gyan,  255);


-- 書き文字エントリー --
ctgayn = entryEffectLife( spep_4, 10006, 60, 0x100, -1, 0, 0, 400);    -- ギャン
setEffScaleKey( spep_4, ctgayn, 3.0, 3.0);
setEffScaleKey( spep_4+60, ctgayn, 4.0, 4.0);
setEffAlphaKey( spep_4, ctgayn, 255);
setEffAlphaKey( spep_4+60, ctgayn, 0);
setEffShake( spep_4, ctgayn, 60, 10);

playSe(spep_4,SE_09);

entryFade( spep_4+48, 2,  10, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_5 = spep_4+60;

------------------------------------------------------
-- 爆発
------------------------------------------------------
--エフェクト
explosion=entryEffect(spep_5,1927,0x100,-1,0,0,0);

setEffMoveKey( spep_5 + 0, explosion, 0, 0 , 0 );
setEffMoveKey( spep_5 + 180, explosion, 0, 0 , 0 );

setEffScaleKey(spep_5,explosion,1.1,1.1);
setEffScaleKey(spep_5+180,explosion,1.1,1.1);

setEffRotateKey(spep_5,explosion,0);
setEffRotateKey(spep_5+180,explosion,0);

setEffAlphaKey(spep_5,explosion,255);
setEffAlphaKey(spep_5+180,explosion,255);

--集中線
shuchusen4 = entryEffectLife( spep_5 + 48,  906, 132, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_5 + 48, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_5 + 180, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_5 + 48, shuchusen4, 1, 1 );
setEffScaleKey( spep_5 + 180, shuchusen4, 1, 1 );

setEffRotateKey( spep_5 + 48, shuchusen4, 180 );
setEffRotateKey( spep_5 + 180, shuchusen4, 180 );

setEffAlphaKey( spep_5 + 48, shuchusen4, 255 );
setEffAlphaKey( spep_5 + 180, shuchusen4, 255 );

--SE
playSe(spep_5,SE_10);

-- ダメージ表示
dealDamage(spep_5+10);
entryFade( spep_5+160, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_5+170);


else 
------------------------------------------------------
-- 敵
------------------------------------------------------
------------------------------------------------------
--タメ
------------------------------------------------------

spep_0=0;

--エフェクト
tame=entryEffectLife(spep_0,SP_01x,200,0x100,-1,0,0,0);

setEffMoveKey( spep_0 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_0 + 200, tame, 0, 0 , 0 );

setEffScaleKey(spep_0,tame,1.0,1.0);
setEffScaleKey(spep_0+200,tame,1.0,1.0);

setEffRotateKey(spep_0,tame,0);
setEffRotateKey(spep_0+200,tame,0);

setEffAlphaKey(spep_0,tame,255);
setEffAlphaKey(spep_0+200,tame,255);

--顔カットイン
--speff=entryEffect(spep_0+112,1504,0x100,-1,0,0,0);  --カットイン(顔)
--setEffReplaceTexture(speff,3,2);  --カットイン差し替え
--speff1=entryEffect(spep_0+112,1505,0x100,-1,0,0,0);  --カットイン(セリフ)
--setEffReplaceTexture(speff1,4,5);  --セリフカットイン差し替え

--ゴゴゴ
ctgogo=entryEffectLife(spep_0+124,190006,70,0x100,-1,0,520);--ゴゴゴ

setEffMoveKey(spep_0+124,ctgogo,0,520,0);
setEffMoveKey(spep_0+194,ctgogo,0,520,0);

setEffScaleKey(spep_0+124, ctgogo, -0.7, 0.7);
setEffScaleKey(spep_0+194, ctgogo, -0.7, 0.7);

setEffAlphaKey( spep_0 + 124, ctgogo, 0 );
setEffAlphaKey( spep_0 + 125, ctgogo, 255 );
setEffAlphaKey( spep_0 + 126, ctgogo, 255 );
setEffAlphaKey( spep_0 + 194, ctgogo, 255 );

setEffRotateKey(spep_0+124,ctgogo,0);
setEffRotateKey(spep_0+194,ctgogo,0);

--集中線
shuchusen1 = entryEffectLife( spep_0 + 24,  906, 170, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_0 + 24, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 198, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 24, shuchusen1, 1.4, 1.4 );
setEffScaleKey( spep_0 + 198, shuchusen1, 1.4, 1.4 );

setEffRotateKey( spep_0 + 24, shuchusen1, 180 );
setEffRotateKey( spep_0 + 198, shuchusen1, 180 );

setEffAlphaKey( spep_0 + 24, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 25, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 26, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 28, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 198, shuchusen1, 255 );

--SE
playSe(spep_0+28,1003);--丸くなる
playSe(spep_0+52,1013);--広がる
SE1=playSe(spep_0+70,15);
stopSe(spep_0+120,SE1,0);
playSe( spep_0+124, SE_04); --ゴゴゴ

--黒背景
entryFadeBg(spep_0, 0, 200, 0, 0, 0, 0, 200);  -- 黒　背

-- ** エフェクト等 ** --
entryFade(spep_0+192, 4, 8, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_1=spep_0+200;

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
--発射
------------------------------------------------------
--エフェクト
firinga=entryEffectLife(spep_2,SP_02x,120,0x100,-1,0,0,0);

setEffMoveKey( spep_2 + 0, firinga, 0, 0 , 0 );
setEffMoveKey( spep_2 + 120, firinga, 0, 0 , 0 );

setEffScaleKey(spep_2,firinga,1.0,1.0);
setEffScaleKey(spep_2+120,firinga,1.0,1.0);

setEffRotateKey(spep_2,firinga,0);
setEffRotateKey(spep_2+120,firinga,0);

setEffAlphaKey(spep_2,firinga,255);
setEffAlphaKey(spep_2+120,firinga,255);

--集中線
shuchusen2 = entryEffectLife( spep_2 + 0,  906, 36, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_2 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 36, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen2, 1.18, 1.18 );
setEffScaleKey( spep_2 + 36, shuchusen2, 1.18, 1.18 );

setEffRotateKey( spep_2 + 0, shuchusen2, 180 );
setEffRotateKey( spep_2 + 36, shuchusen2, 180 );

setEffAlphaKey( spep_2 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 36, shuchusen2, 255 );

--流線(斜め)
ryuusen1 = entryEffectLife( spep_2 + 36,  921, 82, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_2 + 36, ryuusen1, 0, 0 , 0 );
setEffMoveKey( spep_2 + 118, ryuusen1, 0, 0 , 0 );

setEffScaleKey( spep_2 + 36, ryuusen1, 1.56, 1.22 );
setEffScaleKey( spep_2 + 118, ryuusen1, 1.56, 1.25 );

setEffRotateKey( spep_2 + 36, ryuusen1, -131.8 );
setEffRotateKey( spep_2 + 118, ryuusen1, -131.8 );

setEffAlphaKey( spep_2 + 36, ryuusen1, 0 );
setEffAlphaKey( spep_2 + 37, ryuusen1, 255 );
setEffAlphaKey( spep_2 + 38, ryuusen1, 255 );
setEffAlphaKey( spep_2 + 118, ryuusen1, 255 );

--SE
playSe( spep_2, SE_02); --気溜め
--黒背景
entryFadeBg(spep_2, 0, 120, 0, 0, 0, 0, 200);  -- 黒　背

--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

SP_dodge = spep_2+30 ; --エンドフェイズのフレーム数を置き換える

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

--文字エントリー
ctzuo = entryEffectLife( spep_2 + 36,  10012, 54, 0x100, -1, 0, 138.4, 175.6 );--ズオッ

setEffMoveKey( spep_2 + 36, ctzuo, 138.4, 175.6 , 0 );
setEffMoveKey( spep_2 + 42, ctzuo, 135.2, 195.7 , 0 );
setEffMoveKey( spep_2 + 44, ctzuo, 105.5, 221.2 , 0 );
setEffMoveKey( spep_2 + 46, ctzuo, 109.2, 239.8 , 0 );
setEffMoveKey( spep_2 + 48, ctzuo, 72.8, 266.8 , 0 );
setEffMoveKey( spep_2 + 50, ctzuo, 83.2, 284 , 0 );
setEffMoveKey( spep_2 + 52, ctzuo, 56.4, 289.7 , 0 );
setEffMoveKey( spep_2 + 54, ctzuo, 84.9, 283.6 , 0 );
setEffMoveKey( spep_2 + 56, ctzuo, 56.3, 289.7 , 0 );
setEffMoveKey( spep_2 + 58, ctzuo, 86.6, 283.3 , 0 );
setEffMoveKey( spep_2 + 60, ctzuo, 56.3, 289.6 , 0 );
setEffMoveKey( spep_2 + 62, ctzuo, 88.3, 282.9 , 0 );
setEffMoveKey( spep_2 + 64, ctzuo, 56.4, 289.7 , 0 );
setEffMoveKey( spep_2 + 66, ctzuo, 90, 282.6 , 0 );
setEffMoveKey( spep_2 + 68, ctzuo, 56.3, 289.6 , 0 );
setEffMoveKey( spep_2 + 70, ctzuo, 91.6, 282.2 , 0 );
setEffMoveKey( spep_2 + 72, ctzuo, 56.3, 289.7 , 0 );
setEffMoveKey( spep_2 + 74, ctzuo, 93.3, 281.9 , 0 );
setEffMoveKey( spep_2 + 76, ctzuo, 56.3, 289.6 , 0 );
setEffMoveKey( spep_2 + 78, ctzuo, 95, 281.5 , 0 );
setEffMoveKey( spep_2 + 80, ctzuo, 56.4, 289.6 , 0 );
setEffMoveKey( spep_2 + 82, ctzuo, 96.7, 281.1 , 0 );
setEffMoveKey( spep_2 + 84, ctzuo, 56.4, 289.6 , 0 );
setEffMoveKey( spep_2 + 86, ctzuo, 98.4, 280.8 , 0 );
setEffMoveKey( spep_2 + 88, ctzuo, 56.4, 289.7 , 0 );
setEffMoveKey( spep_2 + 90, ctzuo, 56.4, 289.7 , 0 );

setEffScaleKey( spep_2 + 36, ctzuo, 1, 1 );
setEffScaleKey( spep_2 + 42, ctzuo, 1.35, 1.35 );
setEffScaleKey( spep_2 + 44, ctzuo, 1.7, 1.7 );
setEffScaleKey( spep_2 + 46, ctzuo, 2.05, 2.05 );
setEffScaleKey( spep_2 + 48, ctzuo, 2.4, 2.4 );
setEffScaleKey( spep_2 + 50, ctzuo, 2.75, 2.75 );
setEffScaleKey( spep_2 + 52, ctzuo, 2.83, 2.83 );
setEffScaleKey( spep_2 + 54, ctzuo, 2.92, 2.92 );
setEffScaleKey( spep_2 + 56, ctzuo, 3.01, 3.01 );
setEffScaleKey( spep_2 + 58, ctzuo, 3.09, 3.09 );
setEffScaleKey( spep_2 + 60, ctzuo, 3.18, 3.18 );
setEffScaleKey( spep_2 + 62, ctzuo, 3.26, 3.26 );
setEffScaleKey( spep_2 + 64, ctzuo, 3.35, 3.35 );
setEffScaleKey( spep_2 + 66, ctzuo, 3.43, 3.43 );
setEffScaleKey( spep_2 + 68, ctzuo, 3.52, 3.52 );
setEffScaleKey( spep_2 + 70, ctzuo, 3.61, 3.61 );
setEffScaleKey( spep_2 + 72, ctzuo, 3.69, 3.69 );
setEffScaleKey( spep_2 + 74, ctzuo, 3.78, 3.78 );
setEffScaleKey( spep_2 + 76, ctzuo, 3.86, 3.86 );
setEffScaleKey( spep_2 + 78, ctzuo, 3.95, 3.95 );
setEffScaleKey( spep_2 + 80, ctzuo, 4.04, 4.04 );
setEffScaleKey( spep_2 + 82, ctzuo, 4.12, 4.12 );
setEffScaleKey( spep_2 + 84, ctzuo, 4.21, 4.21 );
setEffScaleKey( spep_2 + 86, ctzuo, 4.29, 4.29 );
setEffScaleKey( spep_2 + 88, ctzuo, 4.38, 4.38 );
setEffScaleKey( spep_2 + 90, ctzuo, 4.47, 4.47 );

setEffRotateKey( spep_2 + 36, ctzuo, -24.8 );
setEffRotateKey( spep_2 + 42, ctzuo, -25 );
setEffRotateKey( spep_2 + 90, ctzuo, -25 );

setEffAlphaKey( spep_2 + 36, ctzuo, 0 );
setEffAlphaKey( spep_2 + 37, ctzuo, 255 );
setEffAlphaKey( spep_2 + 38, ctzuo, 255 );
setEffAlphaKey( spep_2 + 78, ctzuo, 255 );
setEffAlphaKey( spep_2 + 80, ctzuo, 212 );
setEffAlphaKey( spep_2 + 82, ctzuo, 170 );
setEffAlphaKey( spep_2 + 84, ctzuo, 128 );
setEffAlphaKey( spep_2 + 86, ctzuo, 85 );
setEffAlphaKey( spep_2 + 88, ctzuo, 43 );
setEffAlphaKey( spep_2 + 90, ctzuo, 0 );

-- ** エフェクト等 ** --
entryFade(spep_2+112, 4, 6, 10,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--SE
playSe( spep_2+20, SE_02); --気溜め
playSe( spep_2+38, SE_06); --発射

--次の準備
spep_3=spep_2+120;

--------------------------------------
--命中
--------------------------------------
--エフェクト
hit_f=entryEffectLife(spep_3,SP_03x,80,0x100,-1,0,0,0);

setEffMoveKey( spep_3 + 0, hit_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 80, hit_f, 0, 0 , 0 );

setEffScaleKey(spep_3,hit_f,1.0,1.0);
setEffScaleKey(spep_3+80,hit_f,1.0,1.0);

setEffRotateKey(spep_3,hit_f,0);
setEffRotateKey(spep_3+80,hit_f,0);

setEffAlphaKey(spep_3,hit_f,255);
setEffAlphaKey(spep_3+80,hit_f,255);

--エフェクト
hit_b=entryEffectLife(spep_3,SP_04x,80,0x80,-1,0,0,0);

setEffMoveKey( spep_3 + 0, hit_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 80, hit_b, 0, 0 , 0 );

setEffScaleKey(spep_3,hit_b,1.0,1.0);
setEffScaleKey(spep_3+80,hit_b,1.0,1.0);

setEffRotateKey(spep_3,hit_b,0);
setEffRotateKey(spep_3+80,hit_b,0);

setEffAlphaKey(spep_3,hit_b,255);
setEffAlphaKey(spep_3+80,hit_b,255);

--集中線
shuchusen3 = entryEffectLife( spep_3 + 0,  906, 78, 0x100, -1, 0, -171, 345.7 );

setEffMoveKey( spep_3 + 0, shuchusen3, -171, 345.7 , 0 );
setEffMoveKey( spep_3 + 78, shuchusen3, -171, 345.7 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen3, 1.66, 1.66 );
setEffScaleKey( spep_3 + 78, shuchusen3, 1.66, 1.66 );

setEffRotateKey( spep_3 + 0, shuchusen3, 180 );
setEffRotateKey( spep_3 + 78, shuchusen3, 180 );

setEffAlphaKey( spep_3 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_3 + 78, shuchusen3, 255 );

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 78, 1, 0 );

changeAnime( spep_3 + 0, 1, 102 );
changeAnime( spep_3 + 27, 1, 107 );-----30

setMoveKey( spep_3 + 0, 1, 322.8, -272.5 , 0 );
setMoveKey( spep_3 + 2, 1, 289, -249 , 0 );
setMoveKey( spep_3 + 4, 1, 267, -206 , 0 );
setMoveKey( spep_3 + 6, 1, 233.5, -184.1 , 0 );
setMoveKey( spep_3 + 8, 1, 200.4, -159.6 , 0 );
setMoveKey( spep_3 + 10, 1, 177.1, -119 , 0 );
setMoveKey( spep_3 + 12, 1, 144.3, -95.8 , 0 );
setMoveKey( spep_3 + 14, 1, 111.8, -70.4 , 0 );
setMoveKey( spep_3 + 16, 1, 116.3, -59.9 , 0 );
setMoveKey( spep_3 + 18, 1, 112.7, -64.2 , 0 );
setMoveKey( spep_3 + 20, 1, 109.1, -67.2 , 0 );
setMoveKey( spep_3 + 22, 1, 113.6, -56.8 , 0 );
setMoveKey( spep_3 + 24, 1, 110.1, -61.1 , 0 );
setMoveKey( spep_3 + 24, 1, 110.1, -61.1 , 0 );
setMoveKey( spep_3 + 26, 1, 110.1, -61.1 , 0 );
--setMoveKey( spep_3 + 26, 1, 106.5, -64 , 0 );
--setMoveKey( spep_3 + 29, 1, 110.9, -53.8 , 0 );
setMoveKey( spep_3 + 27, 1, 51.5, -62.2 , 0 );--30
setMoveKey( spep_3 + 28, 1, 51.5, -62.2 , 0 );--30
setMoveKey( spep_3 + 32, 1, 63.1, -85 , 0 );
setMoveKey( spep_3 + 34, 1, 71, -79.4 , 0 );
setMoveKey( spep_3 + 36, 1, 64.4, -104.2 , 0 );
setMoveKey( spep_3 + 38, 1, 76.4, -127.5 , 0 );
setMoveKey( spep_3 + 40, 1, 84.5, -120.8 , 0 );
setMoveKey( spep_3 + 42, 1, 77.3, -146.2 , 0 );
setMoveKey( spep_3 + 44, 1, 89.7, -170 , 0 );
setMoveKey( spep_3 + 46, 1, 98.1, -162.2 , 0 );
setMoveKey( spep_3 + 48, 1, 90.2, -188.2 , 0 );
setMoveKey( spep_3 + 50, 1, 103.1, -212.5 , 0 );
setMoveKey( spep_3 + 52, 1, 111.6, -203.6 , 0 );
setMoveKey( spep_3 + 54, 1, 103.1, -230.2 , 0 );
setMoveKey( spep_3 + 56, 1, 116.5, -255.1 , 0 );
setMoveKey( spep_3 + 58, 1, 121.4, -234.8 , 0 );
setMoveKey( spep_3 + 60, 1, 109, -251.5 , 0 );
setMoveKey( spep_3 + 62, 1, 118.7, -266.1 , 0 );
setMoveKey( spep_3 + 64, 1, 123.8, -245.6 , 0 );
setMoveKey( spep_3 + 66, 1, 111.1, -262.4 , 0 );
setMoveKey( spep_3 + 68, 1, 121, -277.1 , 0 );
setMoveKey( spep_3 + 70, 1, 126, -256.3 , 0 );
setMoveKey( spep_3 + 72, 1, 113.3, -273.3 , 0 );
setMoveKey( spep_3 + 74, 1, 123.3, -288.1 , 0 );
setMoveKey( spep_3 + 76, 1, 128.3, -267.1 , 0 );
setMoveKey( spep_3 + 78, 1, 115.5, -284.3 , 0 );

setScaleKey( spep_3 + 0, 1, 2.34, 2.34 );
setScaleKey( spep_3 + 2, 1, 2.22, 2.22 );
setScaleKey( spep_3 + 4, 1, 2.1, 2.1 );
setScaleKey( spep_3 + 6, 1, 1.98, 1.98 );
setScaleKey( spep_3 + 8, 1, 1.86, 1.86 );
setScaleKey( spep_3 + 10, 1, 1.74, 1.74 );
setScaleKey( spep_3 + 12, 1, 1.62, 1.62 );
setScaleKey( spep_3 + 14, 1, 1.5, 1.5 );
setScaleKey( spep_3 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_3 + 18, 1, 1.49, 1.49 );
setScaleKey( spep_3 + 20, 1, 1.49, 1.49 );
setScaleKey( spep_3 + 22, 1, 1.48, 1.48 );
setScaleKey( spep_3 + 24, 1, 1.48, 1.48 );
setScaleKey( spep_3 + 26, 1, 1.47, 1.47 );--26
--setScaleKey( spep_3 + 29, 1, 1.47, 1.47 );--29
setScaleKey( spep_3 + 27, 1, 0.64, 0.64 );--30
setScaleKey( spep_3 + 28, 1, 0.64, 0.64 );--30
setScaleKey( spep_3 + 32, 1, 0.67, 0.67 );
setScaleKey( spep_3 + 34, 1, 0.69, 0.69 );
setScaleKey( spep_3 + 36, 1, 0.71, 0.71 );
setScaleKey( spep_3 + 38, 1, 0.73, 0.73 );
setScaleKey( spep_3 + 40, 1, 0.76, 0.76 );
setScaleKey( spep_3 + 42, 1, 0.78, 0.78 );
setScaleKey( spep_3 + 44, 1, 0.8, 0.8 );
setScaleKey( spep_3 + 46, 1, 0.83, 0.83 );
setScaleKey( spep_3 + 48, 1, 0.85, 0.85 );
setScaleKey( spep_3 + 50, 1, 0.87, 0.87 );
setScaleKey( spep_3 + 52, 1, 0.9, 0.9 );
setScaleKey( spep_3 + 54, 1, 0.92, 0.92 );
setScaleKey( spep_3 + 56, 1, 0.94, 0.94 );
setScaleKey( spep_3 + 58, 1, 0.95, 0.95 );
setScaleKey( spep_3 + 60, 1, 0.95, 0.95 );
setScaleKey( spep_3 + 62, 1, 0.96, 0.96 );
setScaleKey( spep_3 + 64, 1, 0.96, 0.96 );
setScaleKey( spep_3 + 66, 1, 0.97, 0.97 );
setScaleKey( spep_3 + 68, 1, 0.97, 0.97 );
setScaleKey( spep_3 + 70, 1, 0.98, 0.98 );
setScaleKey( spep_3 + 72, 1, 0.98, 0.98 );
setScaleKey( spep_3 + 74, 1, 0.99, 0.99 );
setScaleKey( spep_3 + 76, 1, 0.99, 0.99 );
setScaleKey( spep_3 + 78, 1, 1.0, 1.0 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 + 29, 1, 0 );
setRotateKey( spep_3 + 30, 1, -7.3 );
setRotateKey( spep_3 + 32, 1, 1.9 );
setRotateKey( spep_3 + 34, 1, -7.4 );
setRotateKey( spep_3 + 36, 1, -7.4 );
setRotateKey( spep_3 + 38, 1, 1.9 );
setRotateKey( spep_3 + 40, 1, -7.4 );
setRotateKey( spep_3 + 42, 1, -7.4 );
setRotateKey( spep_3 + 44, 1, 1.9 );
setRotateKey( spep_3 + 46, 1, -7.4 );
setRotateKey( spep_3 + 48, 1, -7.4 );
setRotateKey( spep_3 + 50, 1, 1.9 );
setRotateKey( spep_3 + 52, 1, -7.4 );
setRotateKey( spep_3 + 54, 1, -7.4 );
setRotateKey( spep_3 + 56, 1, 1.9 );
setRotateKey( spep_3 + 58, 1, -7.4 );
setRotateKey( spep_3 + 60, 1, -7.4 );
setRotateKey( spep_3 + 62, 1, 1.9 );
setRotateKey( spep_3 + 64, 1, -7.4 );
setRotateKey( spep_3 + 66, 1, -7.4 );
setRotateKey( spep_3 + 68, 1, 1.9 );
setRotateKey( spep_3 + 70, 1, -7.4 );
setRotateKey( spep_3 + 72, 1, -7.4 );
setRotateKey( spep_3 + 74, 1, 1.9 );
setRotateKey( spep_3 + 76, 1, -7.4 );
setRotateKey( spep_3 + 78, 1, -7.4 );

--SE
playSe( spep_3, SE_07); --発射

--黒背景
entryFadeBg(spep_3, 0, 80, 0, 0, 0, 0, 200);  -- 黒　背

-- ** エフェクト等 ** --
entryFade(spep_3+68, 4, 10, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- whit_fe fade

--次の準備
spep_4=spep_3+80;

--------------------------------------
--ギャン
--------------------------------------

--エフェクトの再生
gyan = entryEffectLife(  spep_4,  190001,  60,  0x100,  -1,  0,  0,  0);  --ギャン
setEffScaleKey(  spep_4,  gyan,  1.0,  1.0);
setEffScaleKey(  spep_4+60,  gyan,  1.0,  1.0);
setEffAlphaKey(  spep_4,  gyan,  255);
setEffAlphaKey(  spep_4+60,  gyan,  255);


-- 書き文字エントリー --
ctgayn = entryEffectLife( spep_4, 10006, 60, 0x100, -1, 0, 0, 400);    -- ギャン
setEffScaleKey( spep_4, ctgayn, 3.0, 3.0);
setEffScaleKey( spep_4+60, ctgayn, 4.0, 4.0);
setEffAlphaKey( spep_4, ctgayn, 255);
setEffAlphaKey( spep_4+60, ctgayn, 0);
setEffShake( spep_4, ctgayn, 60, 10);

playSe(spep_4,SE_09);

entryFade( spep_4+48, 2,  10, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_5 = spep_4+60;

------------------------------------------------------
-- 爆発
------------------------------------------------------
--エフェクト
explosion=entryEffect(spep_5,1927,0x100,-1,0,0,0);

setEffMoveKey( spep_5 + 0, explosion, 0, 0 , 0 );
setEffMoveKey( spep_5 + 180, explosion, 0, 0 , 0 );

setEffScaleKey(spep_5,explosion,1.1,1.1);
setEffScaleKey(spep_5+180,explosion,1.1,1.1);

setEffRotateKey(spep_5,explosion,0);
setEffRotateKey(spep_5+180,explosion,0);

setEffAlphaKey(spep_5,explosion,255);
setEffAlphaKey(spep_5+180,explosion,255);

--集中線
shuchusen4 = entryEffectLife( spep_5 + 48,  906, 132, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_5 + 48, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_5 + 180, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_5 + 48, shuchusen4, 1, 1 );
setEffScaleKey( spep_5 + 180, shuchusen4, 1, 1 );

setEffRotateKey( spep_5 + 48, shuchusen4, 180 );
setEffRotateKey( spep_5 + 180, shuchusen4, 180 );

setEffAlphaKey( spep_5 + 48, shuchusen4, 255 );
setEffAlphaKey( spep_5 + 180, shuchusen4, 255 );

--SE
playSe(spep_5,SE_10);

-- ダメージ表示
dealDamage(spep_5+10);
entryFade( spep_5+160, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_5+170);


end




