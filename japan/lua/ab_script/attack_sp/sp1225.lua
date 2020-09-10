--1014140 超ミラ_アンドロイドキック
--sp_effect_b1_00059

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
SP_01=	152443	;--	ハイジャンプ
SP_02=	152444	;--	ジャンプ頭頂
SP_03=	152445	;--	ライダーキック
SP_04=	152446	;--	キック命中

--敵
SP_01x=	152443	;--	ハイジャンプ	
SP_02x=	152444	;--	ジャンプ頭頂	
SP_03x=	152445	;--	ライダーキック	
SP_04x=	152447	;--	キック命中	(敵)
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
--ジャンプ
------------------------------------------------------

spep_0=0;

--エフェクト
jump=entryEffectLife(spep_0,SP_01,104,0x100,-1,0,0,0);

setEffMoveKey( spep_0 + 0, jump, 0, 0 , 0 );
setEffMoveKey( spep_0 + 104, jump, 0, 0 , 0 );

setEffScaleKey(spep_0,jump,1.0,1.0);
setEffScaleKey(spep_0+104,jump,1.0,1.0);

setEffRotateKey(spep_0,jump,0);
setEffRotateKey(spep_0+104,jump,0);

setEffAlphaKey(spep_0,jump,255);
setEffAlphaKey(spep_0+104,jump,255);

--流線(縦)
ryusen1 = entryEffectLife( spep_0 + 38,  914, 64, 0x80, -1, 0, 0, 1.9 );

setEffMoveKey( spep_0 + 38, ryusen1, 0, 1.9 , 0 )
setEffMoveKey( spep_0 + 102, ryusen1, 0, 1.9 , 0 );

setEffScaleKey( spep_0 + 38, ryusen1, 1.87, 1 );
setEffScaleKey( spep_0 + 102, ryusen1, 1.87, 1 );

setEffRotateKey( spep_0 + 38, ryusen1, 90 );
setEffRotateKey( spep_0 + 102, ryusen1, 90 );

setEffAlphaKey( spep_0 + 38, ryusen1, 0 );
setEffAlphaKey( spep_0 + 39, ryusen1, 255 );
setEffAlphaKey( spep_0 + 40, ryusen1, 255 );
setEffAlphaKey( spep_0 + 102, ryusen1, 255 );

--SE
playSe(spep_0+22,1013);--構える
--playSe(spep_0+44,1013);--ジャンプ
playSe(spep_0+54,1003);--くるくる
playSe(spep_0+64,1003);--くるくる
playSe(spep_0+74,1003);--くるくる
playSe(spep_0+84,1003);--くるくる
playSe(spep_0+94,1003);--くるくる


--黒背景
entryFadeBg(spep_0+38, 4, 74, 0, 0, 0, 0, 255);  -- 黒　背

-- ** エフェクト等 ** --
entryFade(spep_0+96, 4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_1=spep_0+104;

------------------------------------------------------
--ジャンプ頭頂
------------------------------------------------------
--エフェクト
top=entryEffectLife(spep_1,SP_02,100,0x100,-1,0,0,0);

setEffMoveKey( spep_1 + 0, top, 0, 0 , 0 );
setEffMoveKey( spep_1 + 100, top, 0, 0 , 0 );

setEffScaleKey(spep_1,top,1.0,1.0);
setEffScaleKey(spep_1+100,top,1.0,1.0);

setEffRotateKey(spep_1,top,0);
setEffRotateKey(spep_1+100,top,0);

setEffAlphaKey(spep_1,top,255);
setEffAlphaKey(spep_1+100,top,255);

--流線(縦)
ryusen2 = entryEffectLife( spep_1 ,  914, 100, 0x80, -1, 0, 0, 1.9 );

setEffMoveKey( spep_1 , ryusen2, 0, 1.9 , 0 )
setEffMoveKey( spep_1 + 100, ryusen2, 0, 1.9 , 0 );

setEffScaleKey( spep_1 , ryusen2, 1.87, 1 );
setEffScaleKey( spep_1 + 100, ryusen2, 1.87, 1 );

setEffRotateKey( spep_1 , ryusen2, 90 );
setEffRotateKey( spep_1 + 100, ryusen2, 90 );

setEffAlphaKey( spep_1 , ryusen2, 255 );
setEffAlphaKey( spep_1 + 100, ryusen2, 255 );

--SE
playSe( spep_1+	10	,1003);--くるくる
playSe( spep_1+	20	,1003);--くるくる
playSe( spep_1+	30	,1003);--くるくる
playSe( spep_1+	40	,1003);--くるくる
playSe( spep_1+	50	,1003);--くるくる
playSe( spep_1+	60	,1003);--くるくる
playSe(spep_1+66,1013);--体制を持ち直す

--黒背景
entryFadeBg(spep_1, 0, 100, 0, 0, 0, 0, 255);  -- 黒　背

-- ** エフェクト等 ** --
entryFade(spep_1+92, 4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_2=spep_1+100;

------------------------------------------------------
--キック
------------------------------------------------------
--エフェクト
kick=entryEffectLife(spep_2,SP_03,100,0x100,-1,0,0,0);

setEffMoveKey( spep_2 + 0, kick, 0, 0 , 0 );
setEffMoveKey( spep_2 + 100, kick, 0, 0 , 0 );

setEffScaleKey(spep_2,kick,1.0,1.0);
setEffScaleKey(spep_2+100,kick,1.0,1.0);

setEffRotateKey(spep_2,kick,0);
setEffRotateKey(spep_2+100,kick,0);

setEffAlphaKey(spep_2,kick,255);
setEffAlphaKey(spep_2+100,kick,255);

--集中線
shuchusen1 = entryEffectLife( spep_2 + 0,  906, 100, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_2 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_2 + 100, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen1, 1.3, 1.3 );
setEffScaleKey( spep_2 + 100, shuchusen1, 1.3, 1.3 );

setEffRotateKey( spep_2 + 0, shuchusen1, 180 );
setEffRotateKey( spep_2 + 100, shuchusen1, 180 );

setEffAlphaKey( spep_2 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_2 + 100, shuchusen1, 255 );


--黒背景
entryFadeBg(spep_2, 0, 100, 0, 0, 0, 0, 200);  -- 黒　背
--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

SP_dodge = spep_2+20 ; --エンドフェイズのフレーム数を置き換える

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
speff=entryEffect(spep_2+12,1504,0x100,-1,0,0,0);  --カットイン(顔)
setEffReplaceTexture(speff,3,2);  --カットイン差し替え
speff1=entryEffect(spep_2+12,1505,0x100,-1,0,0,0);  --カットイン(セリフ)
setEffReplaceTexture(speff1,4,5);  --セリフカットイン差し替え

--ゴゴゴ
ctgogo=entryEffectLife(spep_2+24,190006,70,0x100,-1,0,520);--ゴゴゴ

setEffMoveKey(spep_2+24,ctgogo,0,520,0);
setEffMoveKey(spep_2+94,ctgogo,0,520,0);

setEffScaleKey(spep_2+24, ctgogo, 0.7, 0.7);
setEffScaleKey(spep_2+94, ctgogo, 0.7, 0.7);

setEffAlphaKey( spep_2 + 24, ctgogo, 0 );
setEffAlphaKey( spep_2 + 25, ctgogo, 255 );
setEffAlphaKey( spep_2 + 26, ctgogo, 255 );
setEffAlphaKey( spep_2 + 94, ctgogo, 255 );

setEffRotateKey(spep_2+24,ctgogo,0);
setEffRotateKey(spep_2+94,ctgogo,0);

--SE
playSe( spep_2+24, SE_04);--カットイン

-- ** エフェクト等 ** --
entryFade(spep_2+92, 4, 8, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_3=spep_2+100;
--------------------------------------
--カードカットイン(90F)
--------------------------------------

playSe(spep_3,SE_05);
shuchusen=entryEffectLife(spep_3,906,90,0x100,-1,0,0,0);   -- 集中線
setEffScaleKey(spep_3,shuchusen,1.6,1.6);

speff2=entryEffect(spep_3,1507,0x80,-1,0,0,0);   -- カード
setEffReplaceTexture(speff2,1,1);
setEffReplaceTexture(speff2,2,0);-- カード差し替え
setEffReplaceTexture(speff2,5,4);-- 技名テクスチャ差し替え

-- ** エフェクト等 ** --
entryFade(spep_3+85,3,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_4=spep_3+90;
--------------------------------------
--キック命中
--------------------------------------
--エフェクト
hit=entryEffectLife(spep_4,SP_04,80,0x100,-1,0,0,0);

setEffMoveKey( spep_4 + 0, hit, 0, 0 , 0 );
setEffMoveKey( spep_4 + 80, hit, 0, 0 , 0 );

setEffScaleKey(spep_4,hit,1.0,1.0);
setEffScaleKey(spep_4+80,hit,1.0,1.0);

setEffRotateKey(spep_4,hit,0);
setEffRotateKey(spep_4+80,hit,0);

setEffAlphaKey(spep_4,hit,255);
setEffAlphaKey(spep_4+80,hit,255);

--流線(斜め)
ryusen3 = entryEffectLife( spep_4 + 0,  921, 78, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_4 + 0, ryusen3, 0, 0 , 0 );
setEffMoveKey( spep_4 + 78, ryusen3, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, ryusen3, 1.66, 1.09 );
setEffScaleKey( spep_4 + 78, ryusen3, 1.66, 1.09 );

setEffRotateKey( spep_4 + 0, ryusen3, -130 );
setEffRotateKey( spep_4 + 78, ryusen3, -130 );

setEffAlphaKey( spep_4 + 0, ryusen3, 255 );
setEffAlphaKey( spep_4 + 78, ryusen3, 255 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 50, 1, 0 );

changeAnime( spep_4 + 0, 1, 102 );
changeAnime( spep_4 + 25, 1, 107 );--28
changeAnime( spep_4 + 26, 1, 107 );--28

setMoveKey( spep_4 + 0, 1, 665.4, -774.9 , 0 );
setMoveKey( spep_4 + 2, 1, 608.2, -706.1 , 0 );
setMoveKey( spep_4 + 4, 1, 569.3, -664.9 , 0 );
setMoveKey( spep_4 + 6, 1, 518.3, -587 , 0 );
setMoveKey( spep_4 + 8, 1, 455, -545.7 , 0 );
setMoveKey( spep_4 + 10, 1, 404, -467.8 , 0 );
setMoveKey( spep_4 + 12, 1, 365.2, -426.6 , 0 );
setMoveKey( spep_4 + 14, 1, 314.1, -348.8 , 0 );
setMoveKey( spep_4 + 16, 1, 250.8, -307.4 , 0 );
setMoveKey( spep_4 + 18, 1, 199.8, -229.6 , 0 );
setMoveKey( spep_4 + 20, 1, 160.9, -188.3 , 0 );
setMoveKey( spep_4 + 22, 1, 154.8, -162.9 , 0 );
setMoveKey( spep_4 + 24, 1, 136.5, -174.1 , 0 );
--setMoveKey( spep_4 + 27, 1, 130.4, -148.7 , 0 );
setMoveKey( spep_4 + 25, 1, 106.7, -76.3 , 0 );--28
setMoveKey( spep_4 + 26, 1, 106.7, -76.3 , 0 );--28
setMoveKey( spep_4 + 30, 1, 162.8, -130.7 , 0 );
setMoveKey( spep_4 + 32, 1, 206.7, -221.7 , 0 );
setMoveKey( spep_4 + 34, 1, 262.7, -276 , 0 );
setMoveKey( spep_4 + 36, 1, 331.1, -367.1 , 0 );
setMoveKey( spep_4 + 38, 1, 387.1, -421.5 , 0 );
setMoveKey( spep_4 + 40, 1, 443.2, -494.1 , 0 );
setMoveKey( spep_4 + 42, 1, 499.3, -566.7 , 0 );
setMoveKey( spep_4 + 44, 1, 555.4, -639.5 , 0 );
setMoveKey( spep_4 + 46, 1, 611.5, -712.2 , 0 );
setMoveKey( spep_4 + 48, 1, 667.6, -784.9 , 0 );
setMoveKey( spep_4 + 50, 1, 723.7, -857.5 , 0 );

setScaleKey( spep_4 + 0, 1, 3, 3 );
setScaleKey( spep_4 + 2, 1, 2.85, 2.85 );
setScaleKey( spep_4 + 4, 1, 2.7, 2.7 );
setScaleKey( spep_4 + 6, 1, 2.55, 2.55 );
setScaleKey( spep_4 + 8, 1, 2.4, 2.4 );
setScaleKey( spep_4 + 10, 1, 2.25, 2.25 );
setScaleKey( spep_4 + 12, 1, 2.1, 2.1 );
setScaleKey( spep_4 + 14, 1, 1.95, 1.95 );
setScaleKey( spep_4 + 16, 1, 1.8, 1.8 );
setScaleKey( spep_4 + 18, 1, 1.65, 1.65 );
setScaleKey( spep_4 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 22, 1, 1.47, 1.47 );
setScaleKey( spep_4 + 24, 1, 1.43, 1.43 );
--setScaleKey( spep_4 + 27, 1, 1.4, 1.4 );
setScaleKey( spep_4 + 25, 1, 0.8, 0.8 );--28
setScaleKey( spep_4 + 25, 1, 0.8, 0.8 );--26
setScaleKey( spep_4 + 30, 1, 0.89, 0.89 );
setScaleKey( spep_4 + 32, 1, 0.98, 0.98 );
setScaleKey( spep_4 + 34, 1, 1.07, 1.07 );
setScaleKey( spep_4 + 36, 1, 1.16, 1.16 );
setScaleKey( spep_4 + 38, 1, 1.25, 1.25 );
setScaleKey( spep_4 + 40, 1, 1.35, 1.35 );
setScaleKey( spep_4 + 42, 1, 1.44, 1.44 );
setScaleKey( spep_4 + 44, 1, 1.53, 1.53 );
setScaleKey( spep_4 + 46, 1, 1.62, 1.62 );
setScaleKey( spep_4 + 48, 1, 1.71, 1.71 );
setScaleKey( spep_4 + 50, 1, 2, 2 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4 + 24, 1, 0 );
setRotateKey( spep_4 + 25, 1, -1.9 );
setRotateKey( spep_4 + 26, 1, 0 );
setRotateKey( spep_4 + 50, 1, 0 );

--SE
playSe( spep_4, SE_04);--移動音
playSe( spep_4+26, 1011);--移動音

--黒背景
entryFadeBg(spep_4, 0, 80, 0, 0, 0, 0, 200);  -- 黒　背

-- ** エフェクト等 ** --
entryFade(spep_4+72, 4, 12, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_5=spep_4+80;

------------------------------------------------------
-- ガ
------------------------------------------------------
setDisp( spep_5 + 0, 1, 1 );
changeAnime( spep_5, 1, 107);                         -- 手前ダメージ
setMoveKey(  spep_5,    1,  100,  0,   0);
setScaleKey( spep_5,    1,  1.0, 1.0);
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
ct = entryEffectLife( spep_5+15, 10005, 95, 0, -1, 0, -50, 230); -- ガッ
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
setEffAlphaKey( spep_5+110, ct, 0);

playSe( spep_5+14, SE_11);
shuchusen = entryEffectLife( spep_5+3,906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_5+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

shuchusenkuro = entryEffectLife( spep_5+15, 1657, 120, 0x80,  -1, 0,  0,  0);   -- 集中線



-- ダメージ表示
dealDamage(spep_5+16);
entryFade( spep_5+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_5+106);


else
------------------------------------------------------
--敵
------------------------------------------------------
------------------------------------------------------
--ジャンプ
------------------------------------------------------

spep_0=0;

--エフェクト
jump=entryEffectLife(spep_0,SP_01x,104,0x100,-1,0,0,0);

setEffMoveKey( spep_0 + 0, jump, 0, 0 , 0 );
setEffMoveKey( spep_0 + 104, jump, 0, 0 , 0 );

setEffScaleKey(spep_0,jump,1.0,1.0);
setEffScaleKey(spep_0+104,jump,1.0,1.0);

setEffRotateKey(spep_0,jump,0);
setEffRotateKey(spep_0+104,jump,0);

setEffAlphaKey(spep_0,jump,255);
setEffAlphaKey(spep_0+104,jump,255);

--流線(縦)
ryusen1 = entryEffectLife( spep_0 + 38,  914, 64, 0x80, -1, 0, 0, 1.9 );

setEffMoveKey( spep_0 + 38, ryusen1, 0, 1.9 , 0 )
setEffMoveKey( spep_0 + 102, ryusen1, 0, 1.9 , 0 );

setEffScaleKey( spep_0 + 38, ryusen1, 1.87, 1 );
setEffScaleKey( spep_0 + 102, ryusen1, 1.87, 1 );

setEffRotateKey( spep_0 + 38, ryusen1, 90 );
setEffRotateKey( spep_0 + 102, ryusen1, 90 );

setEffAlphaKey( spep_0 + 38, ryusen1, 0 );
setEffAlphaKey( spep_0 + 39, ryusen1, 255 );
setEffAlphaKey( spep_0 + 40, ryusen1, 255 );
setEffAlphaKey( spep_0 + 102, ryusen1, 255 );

--SE
playSe(spep_0+22,1013);--構える
--playSe(spep_0+44,1013);--ジャンプ
playSe(spep_0+54,1003);--くるくる
playSe(spep_0+64,1003);--くるくる
playSe(spep_0+74,1003);--くるくる
playSe(spep_0+84,1003);--くるくる
playSe(spep_0+94,1003);--くるくる


--黒背景
entryFadeBg(spep_0+38, 4, 74, 0, 0, 0, 0, 255);  -- 黒　背

-- ** エフェクト等 ** --
entryFade(spep_0+96, 4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_1=spep_0+104;

------------------------------------------------------
--ジャンプ頭頂
------------------------------------------------------
--エフェクト
top=entryEffectLife(spep_1,SP_02x,100,0x100,-1,0,0,0);

setEffMoveKey( spep_1 + 0, top, 0, 0 , 0 );
setEffMoveKey( spep_1 + 100, top, 0, 0 , 0 );

setEffScaleKey(spep_1,top,1.0,1.0);
setEffScaleKey(spep_1+100,top,1.0,1.0);

setEffRotateKey(spep_1,top,0);
setEffRotateKey(spep_1+100,top,0);

setEffAlphaKey(spep_1,top,255);
setEffAlphaKey(spep_1+100,top,255);

--流線(縦)
ryusen2 = entryEffectLife( spep_1 ,  914, 100, 0x80, -1, 0, 0, 1.9 );

setEffMoveKey( spep_1 , ryusen2, 0, 1.9 , 0 )
setEffMoveKey( spep_1 + 100, ryusen2, 0, 1.9 , 0 );

setEffScaleKey( spep_1 , ryusen2, 1.87, 1 );
setEffScaleKey( spep_1 + 100, ryusen2, 1.87, 1 );

setEffRotateKey( spep_1 , ryusen2, 90 );
setEffRotateKey( spep_1 + 100, ryusen2, 90 );

setEffAlphaKey( spep_1 , ryusen2, 255 );
setEffAlphaKey( spep_1 + 100, ryusen2, 255 );

--SE
playSe( spep_1+	10	,1003);--くるくる
playSe( spep_1+	20	,1003);--くるくる
playSe( spep_1+	30	,1003);--くるくる
playSe( spep_1+	40	,1003);--くるくる
playSe( spep_1+	50	,1003);--くるくる
playSe( spep_1+	60	,1003);--くるくる
playSe(spep_1+66,1013);--体制を持ち直す

--黒背景
entryFadeBg(spep_1, 0, 100, 0, 0, 0, 0, 255);  -- 黒　背

-- ** エフェクト等 ** --
entryFade(spep_1+92, 4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_2=spep_1+100;

------------------------------------------------------
--キック
------------------------------------------------------
--エフェクト
kick=entryEffectLife(spep_2,SP_03x,100,0x100,-1,0,0,0);

setEffMoveKey( spep_2 + 0, kick, 0, 0 , 0 );
setEffMoveKey( spep_2 + 100, kick, 0, 0 , 0 );

setEffScaleKey(spep_2,kick,-1.0,1.0);
setEffScaleKey(spep_2+100,kick,-1.0,1.0);

setEffRotateKey(spep_2,kick,0);
setEffRotateKey(spep_2+100,kick,0);

setEffAlphaKey(spep_2,kick,255);
setEffAlphaKey(spep_2+100,kick,255);

--集中線
shuchusen1 = entryEffectLife( spep_2 + 0,  906, 100, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_2 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_2 + 100, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen1, 1.3, 1.3 );
setEffScaleKey( spep_2 + 100, shuchusen1, 1.3, 1.3 );

setEffRotateKey( spep_2 + 0, shuchusen1, 180 );
setEffRotateKey( spep_2 + 100, shuchusen1, 180 );

setEffAlphaKey( spep_2 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_2 + 100, shuchusen1, 255 );

--黒背景
entryFadeBg(spep_2, 0, 100, 0, 0, 0, 0, 200);  -- 黒　背
--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

SP_dodge = spep_2+20 ; --エンドフェイズのフレーム数を置き換える

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
--speff=entryEffect(spep_2+12,1504,0x100,-1,0,0,0);  --カットイン(顔)
--setEffReplaceTexture(speff,3,2);  --カットイン差し替え
--speff1=entryEffect(spep_2+12,1505,0x100,-1,0,0,0);  --カットイン(セリフ)
--setEffReplaceTexture(speff1,4,5);  --セリフカットイン差し替え

--ゴゴゴ
ctgogo=entryEffectLife(spep_2+24,190006,70,0x100,-1,0,520);--ゴゴゴ

setEffMoveKey(spep_2+24,ctgogo,0,520,0);
setEffMoveKey(spep_2+94,ctgogo,0,520,0);

setEffScaleKey(spep_2+24, ctgogo, -0.7, 0.7);
setEffScaleKey(spep_2+94, ctgogo, -0.7, 0.7);

setEffAlphaKey( spep_2 + 24, ctgogo, 0 );
setEffAlphaKey( spep_2 + 25, ctgogo, 255 );
setEffAlphaKey( spep_2 + 26, ctgogo, 255 );
setEffAlphaKey( spep_2 + 94, ctgogo, 255 );

setEffRotateKey(spep_2+24,ctgogo,0);
setEffRotateKey(spep_2+94,ctgogo,0);

--SE
playSe( spep_2+24, SE_04);--カットイン

-- ** エフェクト等 ** --
entryFade(spep_2+92, 4, 8, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_3=spep_2+100;
--------------------------------------
--カードカットイン(90F)
--------------------------------------

playSe(spep_3,SE_05);
shuchusen=entryEffectLife(spep_3,906,90,0x100,-1,0,0,0);   -- 集中線
setEffScaleKey(spep_3,shuchusen,1.6,1.6);

speff2=entryEffect(spep_3,1507,0x80,-1,0,0,0);   -- カード
setEffReplaceTexture(speff2,1,1);
setEffReplaceTexture(speff2,2,0);-- カード差し替え
setEffReplaceTexture(speff2,5,4);-- 技名テクスチャ差し替え

-- ** エフェクト等 ** --
entryFade(spep_3+85,3,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_4=spep_3+90;
--------------------------------------
--キック命中
--------------------------------------
--エフェクト
hit=entryEffectLife(spep_4,SP_04x,80,0x100,-1,0,0,0);

setEffMoveKey( spep_4 + 0, hit, 0, 0 , 0 );
setEffMoveKey( spep_4 + 80, hit, 0, 0 , 0 );

setEffScaleKey(spep_4,hit,1.0,1.0);
setEffScaleKey(spep_4+80,hit,1.0,1.0);

setEffRotateKey(spep_4,hit,0);
setEffRotateKey(spep_4+80,hit,0);

setEffAlphaKey(spep_4,hit,255);
setEffAlphaKey(spep_4+80,hit,255);

--流線(斜め)
ryusen3 = entryEffectLife( spep_4 + 0,  921, 78, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_4 + 0, ryusen3, 0, 0 , 0 );
setEffMoveKey( spep_4 + 78, ryusen3, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, ryusen3, 1.66, 1.09 );
setEffScaleKey( spep_4 + 78, ryusen3, 1.66, 1.09 );

setEffRotateKey( spep_4 + 0, ryusen3, -130 );
setEffRotateKey( spep_4 + 78, ryusen3, -130 );

setEffAlphaKey( spep_4 + 0, ryusen3, 255 );
setEffAlphaKey( spep_4 + 78, ryusen3, 255 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 50, 1, 0 );

changeAnime( spep_4 + 0, 1, 102 );
changeAnime( spep_4 + 25, 1, 107 );--28
changeAnime( spep_4 + 26, 1, 107 );--28

setMoveKey( spep_4 + 0, 1, 665.4, -774.9 , 0 );
setMoveKey( spep_4 + 2, 1, 608.2, -706.1 , 0 );
setMoveKey( spep_4 + 4, 1, 569.3, -664.9 , 0 );
setMoveKey( spep_4 + 6, 1, 518.3, -587 , 0 );
setMoveKey( spep_4 + 8, 1, 455, -545.7 , 0 );
setMoveKey( spep_4 + 10, 1, 404, -467.8 , 0 );
setMoveKey( spep_4 + 12, 1, 365.2, -426.6 , 0 );
setMoveKey( spep_4 + 14, 1, 314.1, -348.8 , 0 );
setMoveKey( spep_4 + 16, 1, 250.8, -307.4 , 0 );
setMoveKey( spep_4 + 18, 1, 199.8, -229.6 , 0 );
setMoveKey( spep_4 + 20, 1, 160.9, -188.3 , 0 );
setMoveKey( spep_4 + 22, 1, 154.8, -162.9 , 0 );
setMoveKey( spep_4 + 24, 1, 136.5, -174.1 , 0 );
--setMoveKey( spep_4 + 27, 1, 130.4, -148.7 , 0 );
setMoveKey( spep_4 + 25, 1, 106.7, -76.3 , 0 );--28
setMoveKey( spep_4 + 26, 1, 106.7, -76.3 , 0 );--28
setMoveKey( spep_4 + 30, 1, 162.8, -130.7 , 0 );
setMoveKey( spep_4 + 32, 1, 206.7, -221.7 , 0 );
setMoveKey( spep_4 + 34, 1, 262.7, -276 , 0 );
setMoveKey( spep_4 + 36, 1, 331.1, -367.1 , 0 );
setMoveKey( spep_4 + 38, 1, 387.1, -421.5 , 0 );
setMoveKey( spep_4 + 40, 1, 443.2, -494.1 , 0 );
setMoveKey( spep_4 + 42, 1, 499.3, -566.7 , 0 );
setMoveKey( spep_4 + 44, 1, 555.4, -639.5 , 0 );
setMoveKey( spep_4 + 46, 1, 611.5, -712.2 , 0 );
setMoveKey( spep_4 + 48, 1, 667.6, -784.9 , 0 );
setMoveKey( spep_4 + 50, 1, 723.7, -857.5 , 0 );

setScaleKey( spep_4 + 0, 1, 3, 3 );
setScaleKey( spep_4 + 2, 1, 2.85, 2.85 );
setScaleKey( spep_4 + 4, 1, 2.7, 2.7 );
setScaleKey( spep_4 + 6, 1, 2.55, 2.55 );
setScaleKey( spep_4 + 8, 1, 2.4, 2.4 );
setScaleKey( spep_4 + 10, 1, 2.25, 2.25 );
setScaleKey( spep_4 + 12, 1, 2.1, 2.1 );
setScaleKey( spep_4 + 14, 1, 1.95, 1.95 );
setScaleKey( spep_4 + 16, 1, 1.8, 1.8 );
setScaleKey( spep_4 + 18, 1, 1.65, 1.65 );
setScaleKey( spep_4 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 22, 1, 1.47, 1.47 );
setScaleKey( spep_4 + 24, 1, 1.43, 1.43 );
--setScaleKey( spep_4 + 27, 1, 1.4, 1.4 );
setScaleKey( spep_4 + 25, 1, 0.8, 0.8 );--28
setScaleKey( spep_4 + 25, 1, 0.8, 0.8 );--26
setScaleKey( spep_4 + 30, 1, 0.89, 0.89 );
setScaleKey( spep_4 + 32, 1, 0.98, 0.98 );
setScaleKey( spep_4 + 34, 1, 1.07, 1.07 );
setScaleKey( spep_4 + 36, 1, 1.16, 1.16 );
setScaleKey( spep_4 + 38, 1, 1.25, 1.25 );
setScaleKey( spep_4 + 40, 1, 1.35, 1.35 );
setScaleKey( spep_4 + 42, 1, 1.44, 1.44 );
setScaleKey( spep_4 + 44, 1, 1.53, 1.53 );
setScaleKey( spep_4 + 46, 1, 1.62, 1.62 );
setScaleKey( spep_4 + 48, 1, 1.71, 1.71 );
setScaleKey( spep_4 + 50, 1, 2, 2 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4 + 24, 1, 0 );
setRotateKey( spep_4 + 25, 1, -1.9 );
setRotateKey( spep_4 + 26, 1, 0 );
setRotateKey( spep_4 + 50, 1, 0 );

--SE
playSe( spep_4, SE_04);--移動音
playSe( spep_4+26, 1011);--移動音

--黒背景
entryFadeBg(spep_4, 0, 80, 0, 0, 0, 0, 200);  -- 黒　背

-- ** エフェクト等 ** --
entryFade(spep_4+72, 4, 12, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_5=spep_4+80;

------------------------------------------------------
-- ガ
------------------------------------------------------
setDisp( spep_5 + 0, 1, 1 );
changeAnime( spep_5, 1, 107);                         -- 手前ダメージ
setMoveKey(  spep_5,    1,  100,  0,   0);
setScaleKey( spep_5,    1,  1.0, 1.0);
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
ct = entryEffectLife( spep_5+15, 10005, 95, 0, -1, 0, -50, 230); -- ガッ
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
setEffAlphaKey( spep_5+110, ct, 0);

playSe( spep_5+14, SE_11);
shuchusen = entryEffectLife( spep_5+3,906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_5+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

shuchusenkuro = entryEffectLife( spep_5+15, 1657, 120, 0x80,  -1, 0,  0,  0);   -- 集中線



-- ダメージ表示
dealDamage(spep_5+16);
entryFade( spep_5+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_5+106);



 end




