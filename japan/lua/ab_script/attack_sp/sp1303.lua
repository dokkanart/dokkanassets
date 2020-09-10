--1017320:メカフリーザ&コルド大王_最凶一族の力
--sp_effect_a2_00118


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
SP_01=	153697	;--	登場
SP_02=	153698	;--	飛び立ち
SP_03=	153699	;--	メカフリーザ体当り
SP_04=	153701	;--	コルドアッパー＆フリーザ尻尾攻撃
SP_05=	153703	;--	コルドアッパー＆フリーザ尻尾攻撃
SP_06=	153705	;--	コルド斬撃＆フリーザノヴァ
SP_07=	153706	;--	専用ギャン
SP_08=	153707	;--	ノヴァ地面に衝突

--てき
SP_01x=	153697	;--	登場	
SP_02x=	153698	;--	飛び立ち	
SP_03x=	153700	;--	メカフリーザ体当り	(敵)
SP_04x=	153702	;--	コルドアッパー＆フリーザ尻尾攻撃	(敵)
SP_05x=	153704	;--	コルドアッパー＆フリーザ尻尾攻撃	(敵)
SP_06x=	153705	;--	コルド斬撃＆フリーザノヴァ	
SP_07x=	153706	;--	専用ギャン	
SP_08x=	153707	;--	ノヴァ地面に衝突	


------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0, -5000,   0);
setMoveKey(   1,   0,    0, -5000,   0);
setMoveKey(   2,   0,    0, -5000,   0);
setMoveKey(   3,   0,    0, -5000,   0);
setMoveKey(   4,   0,    0, -5000,   0);
setMoveKey(   5,   0,    0, -5000,   0);
setMoveKey(   6,   0,    0, -5000,   0);
setScaleKey(  0,   0,  1.6, 1.6 );
setScaleKey(  1,   0,  1.6, 1.6 );
setScaleKey(  2,   0,  1.6, 1.6 );
setScaleKey(  3,   0,  1.6, 1.6 );
setScaleKey(  4,   0,  1.6, 1.6 );
setScaleKey(  5,   0,  1.6, 1.6 );
setScaleKey(  6,   0,  1.6, 1.6 );
setRotateKey( 0,   0,  0 );
setRotateKey( 1,   0,  0 );
setRotateKey( 2,   0,  0 );
setRotateKey( 3,   0,  0 );
setRotateKey( 4,   0,  0 );
setRotateKey( 5,   0,  0 );
setRotateKey( 6,   0,  0 );

setMoveKey(   0,   1,    0, -5000,   0);
setMoveKey(   1,   1,    0, -5000,   0);
setMoveKey(   2,   1,    0, -5000,   0);
setMoveKey(   3,   1,    0, -5000,   0);
setMoveKey(   4,   1,    0, -5000,   0);
setMoveKey(   5,   1,    0, -5000,   0);
setMoveKey(   6,   1,    0, -5000,   0);
setScaleKey(  0,   1,  1.6, 1.6 );
setScaleKey(  1,   1,  1.6, 1.6 );
setScaleKey(  2,   1,  1.6, 1.6 );
setScaleKey(  3,   1,  1.6, 1.6 );
setScaleKey(  4,   1,  1.6, 1.6 );
setScaleKey(  5,   1,  1.6, 1.6 );
setScaleKey(  6,   1,  1.6, 1.6 );
setRotateKey( 0,   1,  0 );
setRotateKey( 1,   1,  0 );
setRotateKey( 2,   1,  0 );
setRotateKey( 3,   1,  0 );
setRotateKey( 4,   1,  0 );
setRotateKey( 5,   1,  0 );
setRotateKey( 6,   1,  0 );

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then


------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--ため
------------------------------------------------------
--はじめの準備
spep_0=0;


--エフェクトの再生
tame=entryEffect(spep_0,SP_01,0x80,-1,0,0,0);

setEffMoveKey(spep_0,tame,0,0,0);
setEffMoveKey(spep_0+116,tame,0,0,0);
setEffScaleKey(spep_0,tame,1.0,1.0);
setEffScaleKey(spep_0+116,tame,1.0,1.0);
setEffAlphaKey(spep_0,tame,255);
setEffAlphaKey(spep_0+116,tame,255);
setEffRotateKey(spep_0,tame,0);
setEffRotateKey(spep_0+116,tame,0);

--集中線
shuchusen1 = entryEffectLife( spep_0 + 0,  906, 114, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 114, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchusen1, 1.1, 1.1 );
setEffScaleKey( spep_0 + 114, shuchusen1, 1.1, 1.1 );

setEffRotateKey( spep_0 + 0, shuchusen1, 180 );
setEffRotateKey( spep_0 + 114, shuchusen1, 180 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 114, shuchusen1, 255 );

--***カットイン***
speff = entryEffect(  spep_0 + 16 +14,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_0 + 16 +14,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー --
ctgogo = entryEffectLife( spep_0 + 16 +26, 190006, 72, 0x100, -1, 0, 0, 540);    -- ゴゴゴゴ

setEffMoveKey(  spep_0 + 16 +26,  ctgogo,  0,  540);
setEffMoveKey(  spep_0 + 16 +98,  ctgogo,  0,  540);

setEffAlphaKey( spep_0 + 16  + 26, ctgogo, 255 );
setEffAlphaKey( spep_0 + 16  + 27, ctgogo, 255 );
setEffAlphaKey( spep_0 + 16  + 28, ctgogo, 255 );
setEffAlphaKey( spep_0 + 16  + 88, ctgogo, 255 );
setEffAlphaKey( spep_0 + 16  + 90, ctgogo, 255 );
setEffAlphaKey( spep_0 + 16  + 92, ctgogo, 191 );
setEffAlphaKey( spep_0 + 16  + 94, ctgogo, 128 );
setEffAlphaKey( spep_0 + 16  + 96, ctgogo, 64 );
setEffAlphaKey( spep_0 + 16  + 98, ctgogo, 0 );

setEffRotateKey(  spep_0 + 16 +26,  ctgogo,  0);
setEffRotateKey(  spep_0 + 16 +98,  ctgogo,  0);

setEffScaleKey(  spep_0 + 16 +26,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0 + 16 +90,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0 + 16 +98,  ctgogo, 1.07, 1.07 );

entryFade( spep_0 + 108, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--SE
playSe(spep_0,8);--カメラの音
playSe(spep_0+42,1018);--ごごご

--次の準備
spep_1=spep_0+116;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_1 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_1 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_1 + 0, shuchusen, 0 );
setEffRotateKey( spep_1 + 90, shuchusen, 0 );

setEffAlphaKey( spep_1 + 0, shuchusen, 255 );
setEffAlphaKey( spep_1 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );


entryFade( spep_1 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

------------------------------------------------------
--突進
------------------------------------------------------
--エフェクトの再生
tossinn=entryEffect(spep_2,SP_02,0x80,-1,0,0,0);

setEffMoveKey(spep_2,tossinn,0,0,0);
setEffMoveKey(spep_2+56,tossinn,0,0,0);
setEffScaleKey(spep_2,tossinn,1.0,1.0);
setEffScaleKey(spep_2+56,tossinn,1.0,1.0);
setEffAlphaKey(spep_2,tossinn,255);
setEffAlphaKey(spep_2+56,tossinn,255);
setEffRotateKey(spep_2,tossinn,0);
setEffRotateKey(spep_2+56,tossinn,0);

--集中線
shuchusen2 = entryEffectLife( spep_2 + 0,  906, 56, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_2 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 56, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen2, 1.1, 1.1 );
setEffScaleKey( spep_2 + 56, shuchusen2, 1.1, 1.1 );

setEffRotateKey( spep_2 + 0, shuchusen2, 180 );
setEffRotateKey( spep_2 + 56, shuchusen2, 180 );

setEffAlphaKey( spep_2 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 54, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 55, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 56, shuchusen2, 255 );

--SE
playSe(spep_2,9);--ダッシュ音

-- ** 次の準備 ** --
spep_3 = spep_2 + 56;


------------------------------------------------------
--体当り
------------------------------------------------------
--エフェクトの再生
blow=entryEffect(spep_3,SP_03,0x80,-1,0,0,0);

setEffMoveKey(spep_3,blow,0,0,0);
setEffMoveKey(spep_3+94,blow,0,0,0);
setEffScaleKey(spep_3,blow,1.0,1.0);
setEffScaleKey(spep_3+94,blow,1.0,1.0);
setEffAlphaKey(spep_3,blow,255);
setEffAlphaKey(spep_3+94,blow,255);
setEffRotateKey(spep_3,blow,0);
setEffRotateKey(spep_3+94,blow,0);

--SE
SE0=playSe(spep_3,1018);--ダッシュ音
--------------------------------------
--回避 --既存のものの流用
--------------------------------------


if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3+30 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe(SP_dodge-14,SE0,0);--音を止める
   
    pauseAll( SP_dodge, 67);
        
    
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
--敵の動き
setDisp(spep_3 -3 + 66 ,1,1);
setDisp(spep_3  + 89 ,1,0);

changeAnime(spep_3 -3 + 66,1,102);
changeAnime(spep_3 -3 + 78,1,107);

setMoveKey( spep_3 -3 + 66, 1, 549.9, -69.5 , 0 );
setMoveKey( spep_3 -3 + 68, 1, 469.8, -59.3 , 0 );
setMoveKey( spep_3 -3 + 70, 1, 389.7, -49.1 , 0 );
setMoveKey( spep_3 -3 + 72, 1, 309.7, -38.9 , 0 );
setMoveKey( spep_3 -3 + 74, 1, 229.5, -28.7 , 0 );
setMoveKey( spep_3 -3 + 76, 1, 149.4, -18.5 , 0 );
setMoveKey( spep_3 -3 + 77, 1, 149.4, -18.5 , 0 );
setMoveKey( spep_3 -3 + 78, 1, 143.2, -155.3 , 0 );
setMoveKey( spep_3 -3 + 80, 1, 184.6, -213.7 , 0 );
setMoveKey( spep_3 -3 + 82, 1, 226, -272.1 , 0 );
setMoveKey( spep_3 -3 + 84, 1, 267.4, -330.5 , 0 );
setMoveKey( spep_3 -3 + 86, 1, 308.8, -388.9 , 0 );
setMoveKey( spep_3 -3 + 88, 1, 350.2, -447.4 , 0 );
setMoveKey( spep_3 -3 + 90, 1, 391.6, -505.7 , 0 );
setMoveKey( spep_3 +89, 1, 433.1, -564.2 , 0 );

a=1.3;
setScaleKey( spep_3 -3 + 66, 1, 4, 4 );
setScaleKey( spep_3 -3 + 68, 1, 3.7, 3.7 );
setScaleKey( spep_3 -3 + 70, 1, 3.4, 3.4 );
setScaleKey( spep_3 -3 + 72, 1, 3.1, 3.1 );
setScaleKey( spep_3 -3 + 74, 1, 2.8, 2.8 );
setScaleKey( spep_3 -3 + 76, 1, 2.5, 2.5 );
setScaleKey( spep_3 -3 + 77, 1, 2.5, 2.5 );
setScaleKey( spep_3 -3 + 78, 1, 2.5 -a, 2.5 -a );
setScaleKey( spep_3 -3 + 80, 1, 2.86 -a, 2.85 -a );
setScaleKey( spep_3 -3 + 84, 1, 3.57 -a, 3.54 -a );
setScaleKey( spep_3 -3 + 86, 1, 3.93 -a, 3.88 -a );
setScaleKey( spep_3 -3 + 88, 1, 4.29 -a, 4.23 -a );
setScaleKey( spep_3 -3 + 90, 1, 4.64 -a, 4.57 -a );
setScaleKey( spep_3  +89, 1, 5 -a, 4.92 -a );

setRotateKey( spep_3 -3 + 66, 1, 0 );
setRotateKey( spep_3 -3 + 76, 1, 0 );
setRotateKey( spep_3 -3 + 77, 1, 0 );
setRotateKey( spep_3 -3 + 78, 1, -17.6 );
setRotateKey( spep_3 -3 + 80, 1, -12.3 );
setRotateKey( spep_3 -3 + 82, 1, -6.9 );
setRotateKey( spep_3 -3 + 84, 1, -1.5 );
setRotateKey( spep_3 -3 + 86, 1, 3.8 );
setRotateKey( spep_3 -3 + 88, 1, 9.2 );
setRotateKey( spep_3 -3 + 90, 1, 14.6 );
setRotateKey( spep_3 +89, 1, 20 );

--SE
playSe(spep_3 +74,1010);--体当たり

-- ** 次の準備 ** --
spep_4 = spep_3 + 90;


------------------------------------------------------
--格闘
------------------------------------------------------

--エフェクトの再生
fighting_f=entryEffect(spep_4,SP_04,0x100,-1,0,0,0);

setEffMoveKey(spep_4,fighting_f,0,0,0);
setEffMoveKey(spep_4+206,fighting_f,0,0,0);
setEffScaleKey(spep_4,fighting_f,1.0,1.0);
setEffScaleKey(spep_4+206,fighting_f,1.0,1.0);
setEffAlphaKey(spep_4,fighting_f,255);
setEffAlphaKey(spep_4+206,fighting_f,255);
setEffRotateKey(spep_4,fighting_f,0);
setEffRotateKey(spep_4+206,fighting_f,0);

--エフェクトの再生
fighting_b=entryEffect(spep_4,SP_05,0x80,-1,0,0,0);

setEffMoveKey(spep_4,fighting_b,0,0,0);
setEffMoveKey(spep_4+206,fighting_b,0,0,0);
setEffScaleKey(spep_4,fighting_b,1.0,1.0);
setEffScaleKey(spep_4+206,fighting_b,1.0,1.0);
setEffAlphaKey(spep_4,fighting_b,255);
setEffAlphaKey(spep_4+206,fighting_b,255);
setEffRotateKey(spep_4,fighting_b,0);
setEffRotateKey(spep_4+206,fighting_b,0);

--敵の動き
setDisp(spep_4  ,1,1);
setDisp(spep_4 -3 +194 ,1,0);

changeAnime(spep_4 +0,1,106);
changeAnime(spep_4 -3  + 158,1,107);

setMoveKey( spep_4  + 0, 1, -142, -116.1 , 0 );
--setMoveKey( spep_4 -3 + 2, 1, -129, -102.1 , 0 );
setMoveKey( spep_4 -3 + 4, 1, -115.9, -88.1 , 0 );
setMoveKey( spep_4 -3 + 6, 1, -102.9, -74.2 , 0 );
setMoveKey( spep_4 -3 + 8, 1, -89.9, -60.2 , 0 );
setMoveKey( spep_4 -3 + 10, 1, -76.9, -46.2 , 0 );
setMoveKey( spep_4 -3 + 12, 1, -63.8, -32.3 , 0 );
setMoveKey( spep_4 -3 + 14, 1, -50.8, -18.3 , 0 );
setMoveKey( spep_4 -3 + 16, 1, -37.8, -4.3 , 0 );
setMoveKey( spep_4 -3 + 18, 1, -24.8, 9.6 , 0 );
setMoveKey( spep_4 -3 + 20, 1, -11.7, 23.6 , 0 );
setMoveKey( spep_4 -3 + 22, 1, 1.3, 37.5 , 0 );
setMoveKey( spep_4 -3 + 24, 1, 14.3, 51.5 , 0 );
setMoveKey( spep_4 -3 + 26, 1, 27.3, 65.5 , 0 );
setMoveKey( spep_4 -3 + 28, 1, 40.4, 79.4 , 0 );
setMoveKey( spep_4 -3 + 30, 1, 53.4, 93.4 , 0 );
setMoveKey( spep_4 -3 + 32, 1, 56.4, 100 , 0 );
setMoveKey( spep_4 -3 + 34, 1, 59.5, 106.6 , 0 );
setMoveKey( spep_4 -3 + 36, 1, 62.5, 113.1 , 0 );
setMoveKey( spep_4 -3 + 38, 1, 65.6, 119.7 , 0 );
setMoveKey( spep_4 -3 + 40, 1, 68.6, 126.3 , 0 );
setMoveKey( spep_4 -3 + 42, 1, 71.7, 132.9 , 0 );
setMoveKey( spep_4 -3 + 44, 1, 74.7, 139.5 , 0 );
setMoveKey( spep_4 -3 + 46, 1, 77.7, 146.1 , 0 );
setMoveKey( spep_4 -3 + 48, 1, 80.8, 152.6 , 0 );
setMoveKey( spep_4 -3 + 50, 1, 83.8, 159.2 , 0 );
setMoveKey( spep_4 -3 + 52, 1, 86.9, 165.8 , 0 );
setMoveKey( spep_4 -3 + 54, 1, 89.9, 172.4 , 0 );
setMoveKey( spep_4 -3 + 56, 1, 110.1, 267.3 , 0 );
setMoveKey( spep_4 -3 + 58, 1, 111.2, 276.3 , 0 );
setMoveKey( spep_4 -3 + 60, 1, 112.4, 285.2 , 0 );
setMoveKey( spep_4 -3 + 62, 1, 109.7, 276.6 , 0 );
setMoveKey( spep_4 -3 + 64, 1, 106.9, 268 , 0 );
setMoveKey( spep_4 -3 + 66, 1, 107.9, 273 , 0 );
setMoveKey( spep_4 -3 + 68, 1, 108.9, 278 , 0 );
setMoveKey( spep_4 -3 + 70, 1, 109.9, 283 , 0 );
setMoveKey( spep_4 -3 + 72, 1, 110.9, 288 , 0 );
setMoveKey( spep_4 -3 + 74, 1, 111.9, 293 , 0 );
setMoveKey( spep_4 -3 + 76, 1, 112.9, 298 , 0 );
setMoveKey( spep_4 -3 + 78, 1, 113.9, 303 , 0 );
setMoveKey( spep_4 -3 + 80, 1, 123.1, 343.3 , 0 );
setMoveKey( spep_4 -3 + 82, 1, 132.3, 383.6 , 0 );
setMoveKey( spep_4 -3 + 84, 1, 141.5, 423.8 , 0 );
setMoveKey( spep_4 -3 + 86, 1, 150.7, 464.1 , 0 );
setMoveKey( spep_4 -3 + 88, 1, 159.9, 504.4 , 0 );
setMoveKey( spep_4 -3 + 90, 1, 169.1, 544.6 , 0 );
setMoveKey( spep_4 -3 + 92, 1, 178.3, 584.9 , 0 );
setMoveKey( spep_4 -3 + 94, 1, 187.5, 625.2 , 0 );
setMoveKey( spep_4 -3 + 96, 1, 196.7, 665.5 , 0 );
setMoveKey( spep_4 -3 + 98, 1, 205.9, 705.8 , 0 );
setMoveKey( spep_4 -3 + 99, 1, 205.9, 705.8 , 0 );
setMoveKey( spep_4 -3 + 100, 1, 164.2, -721.4 , 0 );
setMoveKey( spep_4 -3 + 102, 1, 151.1, -642.5 , 0 );
setMoveKey( spep_4 -3 + 104, 1, 138, -563.7 , 0 );
setMoveKey( spep_4 -3 + 106, 1, 124.8, -484.8 , 0 );
setMoveKey( spep_4 -3 + 108, 1, 111.7, -405.9 , 0 );
setMoveKey( spep_4 -3 + 110, 1, 98.6, -327 , 0 );
setMoveKey( spep_4 -3 + 112, 1, 85.5, -248.1 , 0 );
setMoveKey( spep_4 -3 + 114, 1, 72.4, -169.2 , 0 );
setMoveKey( spep_4 -3 + 116, 1, 59.3, -90.3 , 0 );
setMoveKey( spep_4 -3 + 118, 1, 57.9, -83.6 , 0 );
setMoveKey( spep_4 -3 + 120, 1, 56.6, -76.8 , 0 );
setMoveKey( spep_4 -3 + 122, 1, 55.3, -70.1 , 0 );
setMoveKey( spep_4 -3 + 124, 1, 53.9, -63.3 , 0 );
setMoveKey( spep_4 -3 + 126, 1, 52.6, -56.5 , 0 );
setMoveKey( spep_4 -3 + 128, 1, 51.2, -49.8 , 0 );
setMoveKey( spep_4 -3 + 130, 1, 49.9, -43 , 0 );
setMoveKey( spep_4 -3 + 132, 1, 48.5, -36.2 , 0 );
setMoveKey( spep_4 -3 + 134, 1, 47.2, -29.5 , 0 );
setMoveKey( spep_4 -3 + 136, 1, 45.9, -22.7 , 0 );
setMoveKey( spep_4 -3 + 157, 1, 45.9, -22.7 , 0 );

setMoveKey( spep_4 -3 + 158, 1, 54.8, -175.4 , 0 );
setMoveKey( spep_4 -3 + 160, 1, 91.5, -202.9 , 0 );
setMoveKey( spep_4 -3 + 162, 1, 59.9, -191 , 0 );
setMoveKey( spep_4 -3 + 164, 1, 54.8, -203.7 , 0 );
setMoveKey( spep_4 -3 + 166, 1, 49.8, -216.5 , 0 );
setMoveKey( spep_4 -3 + 168, 1, 60, -219.3 , 0 );
setMoveKey( spep_4 -3 + 170, 1, 70.3, -222.1 , 0 );
setMoveKey( spep_4 -3 + 172, 1, 72.9, -229.8 , 0 );
setMoveKey( spep_4 -3 + 174, 1, 75.5, -237.7 , 0 );
setMoveKey( spep_4 -3 + 176, 1, 78.1, -245.4 , 0 );
setMoveKey( spep_4 -3 + 178, 1, 80.7, -253.3 , 0 );
setMoveKey( spep_4 -3 + 180, 1, 83.3, -261 , 0 );
setMoveKey( spep_4 -3 + 182, 1, 85.9, -268.8 , 0 );
setMoveKey( spep_4 -3 + 184, 1, 88.6, -276.6 , 0 );
setMoveKey( spep_4 -3 + 186, 1, 142.7, -438.6 , 0 );
setMoveKey( spep_4 -3 + 188, 1, 196.9, -600.6 , 0 );
setMoveKey( spep_4 -3 + 190, 1, 250.9, -762.3 , 0 );
setMoveKey( spep_4 -3 + 192, 1, 305.2, -924.5 , 0 );
setMoveKey( spep_4 -3 + 194, 1, 359.4, -1086.5 , 0 )
--setMoveKey( spep_4 -3 + 196, 1, -142, -116.1 , 0 );
--setMoveKey( spep_4 -3 + 198, 1, -129, -102.1 , 0 );



setScaleKey( spep_4  + 0, 1, 0.5, 0.5 );
setScaleKey( spep_4 -3 + 2, 1, 0.55, 0.55 );
setScaleKey( spep_4 -3 + 4, 1, 0.61, 0.61 );
setScaleKey( spep_4 -3 + 6, 1, 0.66, 0.66 );
setScaleKey( spep_4 -3 + 8, 1, 0.71, 0.71 );
setScaleKey( spep_4 -3 + 10, 1, 0.77, 0.77 );
setScaleKey( spep_4 -3 + 12, 1, 0.82, 0.82 );
setScaleKey( spep_4 -3 + 14, 1, 0.87, 0.87 );
setScaleKey( spep_4 -3 + 16, 1, 0.93, 0.93 );
setScaleKey( spep_4 -3 + 18, 1, 0.98, 0.98 );
setScaleKey( spep_4 -3 + 20, 1, 1.03, 1.03 );
setScaleKey( spep_4 -3 + 22, 1, 1.09, 1.09 );
setScaleKey( spep_4 -3 + 24, 1, 1.14, 1.14 );
setScaleKey( spep_4 -3 + 26, 1, 1.19, 1.19 );
setScaleKey( spep_4 -3 + 28, 1, 1.25, 1.25 );
setScaleKey( spep_4 -3 + 30, 1, 1.3, 1.3 );
setScaleKey( spep_4 -3 + 32, 1, 1.28, 1.28 );
setScaleKey( spep_4 -3 + 34, 1, 1.26, 1.26 );
setScaleKey( spep_4 -3 + 36, 1, 1.25, 1.25 );
setScaleKey( spep_4 -3 + 38, 1, 1.23, 1.23 );
setScaleKey( spep_4 -3 + 40, 1, 1.22, 1.22 );
setScaleKey( spep_4 -3 + 42, 1, 1.2, 1.2 );
setScaleKey( spep_4 -3 + 44, 1, 1.18, 1.18 );
setScaleKey( spep_4 -3 + 46, 1, 1.17, 1.17 );
setScaleKey( spep_4 -3 + 48, 1, 1.15, 1.15 );
setScaleKey( spep_4 -3 + 50, 1, 1.13, 1.13 );
setScaleKey( spep_4 -3 + 52, 1, 1.12, 1.12 );
setScaleKey( spep_4 -3 + 54, 1, 1.1, 1.1 );
setScaleKey( spep_4 -3 + 56, 1, 0.9, 0.9 );
setScaleKey( spep_4 -3 + 58, 1, 0.95, 0.95 );
setScaleKey( spep_4 -3 + 60, 1, 1, 1 );
setScaleKey( spep_4 -3 + 62, 1, 0.95, 0.95 );
setScaleKey( spep_4 -3 + 64, 1, 0.9, 0.9 );
setScaleKey( spep_4 -3 + 66, 1, 0.9, 0.9 );
setScaleKey( spep_4 -3 + 68, 1, 0.89, 0.89 );
setScaleKey( spep_4 -3 + 70, 1, 0.89, 0.89 );
setScaleKey( spep_4 -3 + 72, 1, 0.88, 0.88 );
setScaleKey( spep_4 -3 + 74, 1, 0.88, 0.88 );
setScaleKey( spep_4 -3 + 76, 1, 0.87, 0.87 );
setScaleKey( spep_4 -3 + 78, 1, 0.87, 0.87 );
setScaleKey( spep_4 -3 + 80, 1, 0.8, 0.8 );
setScaleKey( spep_4 -3 + 82, 1, 0.73, 0.73 );
setScaleKey( spep_4 -3 + 84, 1, 0.67, 0.67 );
setScaleKey( spep_4 -3 + 86, 1, 0.6, 0.6 );
setScaleKey( spep_4 -3 + 88, 1, 0.53, 0.53 );
setScaleKey( spep_4 -3 + 90, 1, 0.47, 0.47 );
setScaleKey( spep_4 -3 + 92, 1, 0.4, 0.4 );
setScaleKey( spep_4 -3 + 94, 1, 0.33, 0.33 );
setScaleKey( spep_4 -3 + 96, 1, 0.27, 0.27 );
setScaleKey( spep_4 -3 + 98, 1, 0.2, 0.2 );
setScaleKey( spep_4 -3 + 99, 1, 0.2, 0.2 );
setScaleKey( spep_4 -3 + 100, 1, 4, 4 );
setScaleKey( spep_4 -3 + 102, 1, 3.88, 3.88 );
setScaleKey( spep_4 -3 + 104, 1, 3.75, 3.75 );
setScaleKey( spep_4 -3 + 106, 1, 3.63, 3.63 );
setScaleKey( spep_4 -3 + 108, 1, 3.5, 3.5 );
setScaleKey( spep_4 -3 + 110, 1, 3.38, 3.38 );
setScaleKey( spep_4 -3 + 112, 1, 3.25, 3.25 );
setScaleKey( spep_4 -3 + 114, 1, 3.13, 3.13 );
setScaleKey( spep_4 -3 + 116, 1, 3, 3 );
setScaleKey( spep_4 -3 + 118, 1, 2.98, 2.98 );
setScaleKey( spep_4 -3 + 120, 1, 2.96, 2.96 );
setScaleKey( spep_4 -3 + 122, 1, 2.94, 2.94 );
setScaleKey( spep_4 -3 + 124, 1, 2.92, 2.92 );
setScaleKey( spep_4 -3 + 126, 1, 2.9, 2.9 );
setScaleKey( spep_4 -3 + 128, 1, 2.88, 2.88 );
setScaleKey( spep_4 -3 + 130, 1, 2.86, 2.86 );
setScaleKey( spep_4 -3 + 132, 1, 2.84, 2.84 );
setScaleKey( spep_4 -3 + 134, 1, 2.82, 2.82 );
setScaleKey( spep_4 -3 + 136, 1, 2.8, 2.8 );
setScaleKey( spep_4 -3 + 137, 1, 2.8, 2.8 );
b=1.0;

setScaleKey( spep_4 -3 + 158, 1, 1.96 -b, 1.96 -b );
setScaleKey( spep_4 -3 + 160, 1, 2.26 -b, 2.26 -b );
setScaleKey( spep_4 -3 + 162, 1, 2 -b, 2 -b );
setScaleKey( spep_4 -3 + 164, 1, 2.06 -b, 2.06 -b );
setScaleKey( spep_4 -3 + 166, 1, 2.11 -b, 2.11 -b );
setScaleKey( spep_4 -3 + 168, 1, 2.09 -b, 2.09 -b );
setScaleKey( spep_4 -3 + 170, 1, 2.09 -b, 2.09 -b );
setScaleKey( spep_4 -3 + 172, 1, 2.11 -b, 2.11 -b );
setScaleKey( spep_4 -3 + 174, 1, 2.14 -b, 2.14 -b );
setScaleKey( spep_4 -3 + 176, 1, 2.16 -b, 2.16 -b );
setScaleKey( spep_4 -3 + 178, 1, 2.19 -b, 2.19 -b );
setScaleKey( spep_4 -3 + 180, 1, 2.2 -b, 2.2 -b );
setScaleKey( spep_4 -3 + 182, 1, 2.22 -b, 2.22 -b );
setScaleKey( spep_4 -3 + 184, 1, 2.25 -b, 2.25 -b );
setScaleKey( spep_4 -3 + 186, 1, 2.7 -b, 2.7 -b );
setScaleKey( spep_4 -3 + 188, 1, 3.15 -b, 3.15 -b );
setScaleKey( spep_4 -3 + 190, 1, 3.62 -b, 3.62 -b );
setScaleKey( spep_4 -3 + 192, 1, 4.07 -b, 4.07 -b );
setScaleKey( spep_4 -3 + 194, 1, 4.52 -b, 4.52 -b );

setRotateKey( spep_4  + 0, 1, 53.4 );
setRotateKey( spep_4 -3 + 30, 1, 53.4 );
setRotateKey( spep_4 -3 + 32, 1, 51.9 );
setRotateKey( spep_4 -3 + 34, 1, 50.5 );
setRotateKey( spep_4 -3 + 36, 1, 49 );
setRotateKey( spep_4 -3 + 38, 1, 47.5 );
setRotateKey( spep_4 -3 + 40, 1, 46 );
setRotateKey( spep_4 -3 + 42, 1, 44.5 );
setRotateKey( spep_4 -3 + 44, 1, 43.1 );
setRotateKey( spep_4 -3 + 46, 1, 41.6 );
setRotateKey( spep_4 -3 + 48, 1, 40.1 );
setRotateKey( spep_4 -3 + 50, 1, 38.6 );
setRotateKey( spep_4 -3 + 52, 1, 37.2 );
setRotateKey( spep_4 -3 + 54, 1, 35.7 );
setRotateKey( spep_4 -3 + 157, 1, 35.7 );

setRotateKey( spep_4 -3 + 158, 1, 10.9 );
setRotateKey( spep_4 -3 + 194, 1, 10.9 );

--setRotateKey( spep_4 -3 + 196, 1, 53.4 );

--SE
playSe(spep_4 +30,1011);--パンチ
playSe(spep_4 +78,8);--飛んでいく
playSe(spep_4 +142,1011);--尻尾で叩く
playSe(spep_4 +160,44);--叩き落とす
playSe(spep_4 +190,1023);--地面にぶつかる？

-- ** 次の準備 ** --
spep_5 = spep_4 + 206;

------------------------------------------------------
--斬撃
------------------------------------------------------
--エフェクトの再生
slash=entryEffect(spep_5,SP_06,0x80,-1,0,0,0);

setEffMoveKey(spep_5,slash,0,0,0);
setEffMoveKey(spep_5+264,slash,0,0,0);
setEffScaleKey(spep_5,slash,1.0,1.0);
setEffScaleKey(spep_5+264,slash,1.0,1.0);
setEffAlphaKey(spep_5,slash,255);
setEffAlphaKey(spep_5+264,slash,255);
setEffRotateKey(spep_5,slash,0);
setEffRotateKey(spep_5+264,slash,0);

--集中線
shuchusen3 = entryEffectLife( spep_5 -3 + 48,  906, 12, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_5 -3 + 48, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_5 -3 + 60, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_5 -3 + 48, shuchusen3, 1.05, 1.05 );
setEffScaleKey( spep_5 -3 + 60, shuchusen3, 1.05, 1.05 );

setEffRotateKey( spep_5 -3 + 48, shuchusen3, 0 );
setEffRotateKey( spep_5 -3 + 60, shuchusen3, 0 );

setEffAlphaKey( spep_5 -3 + 48, shuchusen3, 255 );
setEffAlphaKey( spep_5 -3 + 59, shuchusen3, 255 );
setEffAlphaKey( spep_5 -3 + 60, shuchusen3, 0 );

--集中線
shuchusen4 = entryEffectLife( spep_5 + 203,  906, 10, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_5 + 203, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_5 + 213, shuchusen4, 0, 0 , 0 );

setEffRotateKey( spep_5 + 203, shuchusen4, 0 );
setEffRotateKey( spep_5 + 213, shuchusen4, 0 );

setEffAlphaKey( spep_5 + 203, shuchusen4, 255 );
setEffAlphaKey( spep_5 + 212, shuchusen4, 255 );
setEffAlphaKey( spep_5 + 213, shuchusen4, 0 );

--敵の動き
setDisp(spep_5   +56,1,0);
setDisp(spep_5   +57,1,1);
setDisp(spep_5   +58,1,1);
setDisp(spep_5  +77 ,1,0);
setDisp(spep_5  +78 ,1,0);

changeAnime(spep_5  +56,1,107);

d=250;

setMoveKey( spep_5  + 56, 1, 115.3, -429.3+d , 0 );
setMoveKey( spep_5 -3 + 64, 1, 142.6, -526.5+d , 0 );
setMoveKey( spep_5 -3 + 66, 1, 163.5, -600.8+d , 0 );
setMoveKey( spep_5 -3 + 68, 1, 180.8, -662+d , 0 );
setMoveKey( spep_5 -3 + 70, 1, 195.6, -714.7+d , 0 );
setMoveKey( spep_5 -3 + 72, 1, 208.7, -761+d , 0 );
setMoveKey( spep_5 -3 + 74, 1, 220.3, -802.4+d , 0 );
setMoveKey( spep_5 -3 + 76, 1, 230.8, -839.9+d , 0 );
setMoveKey( spep_5  + 78, 1, 240.4, -874.1+d , 0 );
--setMoveKey( spep_5  + 80, 1, 249.3, -905.4+d , 0 );

c=1.7;

setScaleKey( spep_5  + 56, 1, 3.01 -c, 3.01 -c );
setScaleKey( spep_5 -3 + 62, 1, 3.78 -c, 3.78 -c );
setScaleKey( spep_5 -3 + 64, 1, 4.23 -c, 4.23 -c );
setScaleKey( spep_5 -3 + 66, 1, 4.58 -c, 4.58 -c );
setScaleKey( spep_5 -3 + 68, 1, 4.88 -c, 4.88 -c );
setScaleKey( spep_5 -3 + 70, 1, 5.12 -c, 5.12 -c );
setScaleKey( spep_5 -3 + 72, 1, 5.33 -c, 5.33 -c );
setScaleKey( spep_5 -3 + 74, 1, 5.53 -c, 5.53 -c );
setScaleKey( spep_5 -3 + 76, 1, 5.71 -c, 5.71 -c );
setScaleKey( spep_5  + 78, 1, 5.88 -c, 5.88 -c );
--setScaleKey( spep_5 -3 + 80, 1, 6.01 -c, 6.01 -c );

setRotateKey( spep_5 + 56, 1, -1.7 );
setRotateKey( spep_5 -3 + 62, 1, 7.3 );
setRotateKey( spep_5 -3 + 64, 1, 12.6 );
setRotateKey( spep_5 -3 + 66, 1, 16.6 );
setRotateKey( spep_5 -3 + 68, 1, 20 );
setRotateKey( spep_5 -3 + 70, 1, 22.9 );
setRotateKey( spep_5 -3 + 72, 1, 25.4 );
setRotateKey( spep_5 -3 + 74, 1, 27.7 );
setRotateKey( spep_5 -3 + 76, 1, 29.7 );
setRotateKey( spep_5  + 78, 1, 31.6 );
--setRotateKey( spep_5  + 80, 1, 33.3 );

--SE
--playSe(spep_5 +46,1004);--剣を振り下ろす
playSe(spep_5 +58,1032);--斬撃
playSe(spep_5 +112,1018);--ズーム音
SE1=playSe(spep_5 +136,15);--溜めてる音
stopSe(spep_5+204,SE1,0);--音を止める
playSe(spep_5 +210,1022);--放つ音

-- ** 次の準備 ** --
spep_6 = spep_5 + 264;

------------------------------------------------------
--ギャン
------------------------------------------------------
--エフェクトの再生
gyan=entryEffect(spep_6,SP_07,0x80,-1,0,0,0);

setEffMoveKey(spep_6,gyan,0,0,0);
setEffMoveKey(spep_6+56,gyan,0,0,0);
setEffScaleKey(spep_6,gyan,1.0,1.0);
setEffScaleKey(spep_6+56,gyan,1.0,1.0);
setEffAlphaKey(spep_6,gyan,255);
setEffAlphaKey(spep_6+56,gyan,255);
setEffRotateKey(spep_6,gyan,0);
setEffRotateKey(spep_6+56,gyan,0);

--SE
playSe(spep_6,1023);--爆発

-- ** 次の準備 ** --
spep_7 = spep_6 + 56;

------------------------------------------------------
--終わり
------------------------------------------------------
--エフェクトの再生
finish=entryEffect(spep_7,SP_08,0x80,-1,0,0,0);

setEffMoveKey(spep_7,finish,0,0,0);
setEffMoveKey(spep_7+240,finish,0,0,0);
setEffScaleKey(spep_7,finish,1.0,1.0);
setEffScaleKey(spep_7+240,finish,1.0,1.0);
setEffAlphaKey(spep_7,finish,255);
setEffAlphaKey(spep_7+240,finish,255);
setEffRotateKey(spep_7,finish,0);
setEffRotateKey(spep_7+240,finish,0);

--SE
playSe(spep_7,1024);--爆発

dealDamage(spep_7);
endPhase(spep_7 + 230);

else
------------------------------------------------------------------------------------------------------------
-- てき側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--ため
------------------------------------------------------
--はじめの準備
spep_0=0;


--エフェクトの再生
tame=entryEffect(spep_0,SP_01x,0x80,-1,0,0,0);

setEffMoveKey(spep_0,tame,0,0,0);
setEffMoveKey(spep_0+116,tame,0,0,0);
setEffScaleKey(spep_0,tame,-1.0,1.0);
setEffScaleKey(spep_0+116,tame,-1.0,1.0);
setEffAlphaKey(spep_0,tame,255);
setEffAlphaKey(spep_0+116,tame,255);
setEffRotateKey(spep_0,tame,0);
setEffRotateKey(spep_0+116,tame,0);

--集中線
shuchusen1 = entryEffectLife( spep_0 + 0,  906, 114, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 114, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchusen1, 1.1, 1.1 );
setEffScaleKey( spep_0 + 114, shuchusen1, 1.1, 1.1 );

setEffRotateKey( spep_0 + 0, shuchusen1, 180 );
setEffRotateKey( spep_0 + 114, shuchusen1, 180 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 114, shuchusen1, 255 );

--***カットイン***
--speff = entryEffect(  spep_0 + 16 +14,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  spep_0 + 16 +14,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー --
ctgogo = entryEffectLife( spep_0 + 16 +26, 190006, 72, 0x100, -1, 0, 0, 540);    -- ゴゴゴゴ

setEffMoveKey(  spep_0 + 16 +26,  ctgogo,  0,  540);
setEffMoveKey(  spep_0 + 16 +98,  ctgogo,  0,  540);

setEffAlphaKey( spep_0 + 16  + 26, ctgogo, 255 );
setEffAlphaKey( spep_0 + 16  + 27, ctgogo, 255 );
setEffAlphaKey( spep_0 + 16  + 28, ctgogo, 255 );
setEffAlphaKey( spep_0 + 16  + 88, ctgogo, 255 );
setEffAlphaKey( spep_0 + 16  + 90, ctgogo, 255 );
setEffAlphaKey( spep_0 + 16  + 92, ctgogo, 191 );
setEffAlphaKey( spep_0 + 16  + 94, ctgogo, 128 );
setEffAlphaKey( spep_0 + 16  + 96, ctgogo, 64 );
setEffAlphaKey( spep_0 + 16  + 98, ctgogo, 0 );

setEffRotateKey(  spep_0 + 16 +26,  ctgogo,  0);
setEffRotateKey(  spep_0 + 16 +98,  ctgogo,  0);

setEffScaleKey(  spep_0 + 16 +26,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_0 + 16 +90,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_0 + 16 +98,  ctgogo, -1.07, 1.07 );

entryFade( spep_0 + 108, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--SE
playSe(spep_0,8);--カメラの音
playSe(spep_0+42,1018);--ごごご

--次の準備
spep_1=spep_0+116;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_1 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_1 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_1 + 0, shuchusen, 0 );
setEffRotateKey( spep_1 + 90, shuchusen, 0 );

setEffAlphaKey( spep_1 + 0, shuchusen, 255 );
setEffAlphaKey( spep_1 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );


entryFade( spep_1 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

------------------------------------------------------
--突進
------------------------------------------------------
--エフェクトの再生
tossinn=entryEffect(spep_2,SP_02x,0x80,-1,0,0,0);

setEffMoveKey(spep_2,tossinn,0,0,0);
setEffMoveKey(spep_2+56,tossinn,0,0,0);
setEffScaleKey(spep_2,tossinn,-1.0,1.0);
setEffScaleKey(spep_2+56,tossinn,-1.0,1.0);
setEffAlphaKey(spep_2,tossinn,255);
setEffAlphaKey(spep_2+56,tossinn,255);
setEffRotateKey(spep_2,tossinn,0);
setEffRotateKey(spep_2+56,tossinn,0);

--集中線
shuchusen2 = entryEffectLife( spep_2 + 0,  906, 56, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_2 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 56, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen2, 1.1, 1.1 );
setEffScaleKey( spep_2 + 56, shuchusen2, 1.1, 1.1 );

setEffRotateKey( spep_2 + 0, shuchusen2, 180 );
setEffRotateKey( spep_2 + 56, shuchusen2, 180 );

setEffAlphaKey( spep_2 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 54, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 55, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 56, shuchusen2, 255 );

--SE
playSe(spep_2,9);--ダッシュ音

-- ** 次の準備 ** --
spep_3 = spep_2 + 56;


------------------------------------------------------
--体当り
------------------------------------------------------
--エフェクトの再生
blow=entryEffect(spep_3,SP_03x,0x80,-1,0,0,0);

setEffMoveKey(spep_3,blow,0,0,0);
setEffMoveKey(spep_3+94,blow,0,0,0);
setEffScaleKey(spep_3,blow,1.0,1.0);
setEffScaleKey(spep_3+94,blow,1.0,1.0);
setEffAlphaKey(spep_3,blow,255);
setEffAlphaKey(spep_3+94,blow,255);
setEffRotateKey(spep_3,blow,0);
setEffRotateKey(spep_3+94,blow,0);

--SE
SE0=playSe(spep_3,1018);--ダッシュ音
--------------------------------------
--回避 --既存のものの流用
--------------------------------------


if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3+30 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe(SP_dodge-14,SE0,0);--音を止める
   
    pauseAll( SP_dodge, 67);
        
    
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
--敵の動き
setDisp(spep_3 -3 + 66 ,1,1);
setDisp(spep_3  + 89 ,1,0);

changeAnime(spep_3 -3 + 66,1,102);
changeAnime(spep_3 -3 + 78,1,107);

setMoveKey( spep_3 -3 + 66, 1, 549.9, -69.5 , 0 );
setMoveKey( spep_3 -3 + 68, 1, 469.8, -59.3 , 0 );
setMoveKey( spep_3 -3 + 70, 1, 389.7, -49.1 , 0 );
setMoveKey( spep_3 -3 + 72, 1, 309.7, -38.9 , 0 );
setMoveKey( spep_3 -3 + 74, 1, 229.5, -28.7 , 0 );
setMoveKey( spep_3 -3 + 76, 1, 149.4, -18.5 , 0 );
setMoveKey( spep_3 -3 + 77, 1, 149.4, -18.5 , 0 );
setMoveKey( spep_3 -3 + 78, 1, 143.2, -155.3 , 0 );
setMoveKey( spep_3 -3 + 80, 1, 184.6, -213.7 , 0 );
setMoveKey( spep_3 -3 + 82, 1, 226, -272.1 , 0 );
setMoveKey( spep_3 -3 + 84, 1, 267.4, -330.5 , 0 );
setMoveKey( spep_3 -3 + 86, 1, 308.8, -388.9 , 0 );
setMoveKey( spep_3 -3 + 88, 1, 350.2, -447.4 , 0 );
setMoveKey( spep_3 -3 + 90, 1, 391.6, -505.7 , 0 );
setMoveKey( spep_3 +89, 1, 433.1, -564.2 , 0 );

a=1.3;
setScaleKey( spep_3 -3 + 66, 1, 4, 4 );
setScaleKey( spep_3 -3 + 68, 1, 3.7, 3.7 );
setScaleKey( spep_3 -3 + 70, 1, 3.4, 3.4 );
setScaleKey( spep_3 -3 + 72, 1, 3.1, 3.1 );
setScaleKey( spep_3 -3 + 74, 1, 2.8, 2.8 );
setScaleKey( spep_3 -3 + 76, 1, 2.5, 2.5 );
setScaleKey( spep_3 -3 + 77, 1, 2.5, 2.5 );
setScaleKey( spep_3 -3 + 78, 1, 2.5 -a, 2.5 -a );
setScaleKey( spep_3 -3 + 80, 1, 2.86 -a, 2.85 -a );
setScaleKey( spep_3 -3 + 84, 1, 3.57 -a, 3.54 -a );
setScaleKey( spep_3 -3 + 86, 1, 3.93 -a, 3.88 -a );
setScaleKey( spep_3 -3 + 88, 1, 4.29 -a, 4.23 -a );
setScaleKey( spep_3 -3 + 90, 1, 4.64 -a, 4.57 -a );
setScaleKey( spep_3  +89, 1, 5 -a, 4.92 -a );

setRotateKey( spep_3 -3 + 66, 1, 0 );
setRotateKey( spep_3 -3 + 76, 1, 0 );
setRotateKey( spep_3 -3 + 77, 1, 0 );
setRotateKey( spep_3 -3 + 78, 1, -17.6 );
setRotateKey( spep_3 -3 + 80, 1, -12.3 );
setRotateKey( spep_3 -3 + 82, 1, -6.9 );
setRotateKey( spep_3 -3 + 84, 1, -1.5 );
setRotateKey( spep_3 -3 + 86, 1, 3.8 );
setRotateKey( spep_3 -3 + 88, 1, 9.2 );
setRotateKey( spep_3 -3 + 90, 1, 14.6 );
setRotateKey( spep_3 +89, 1, 20 );

--SE
playSe(spep_3 +74,1010);--体当たり

-- ** 次の準備 ** --
spep_4 = spep_3 + 90;

------------------------------------------------------
--格闘
------------------------------------------------------

--エフェクトの再生
fighting_f=entryEffect(spep_4,SP_04x,0x100,-1,0,0,0);

setEffMoveKey(spep_4,fighting_f,0,0,0);
setEffMoveKey(spep_4+206,fighting_f,0,0,0);
setEffScaleKey(spep_4,fighting_f,1.0,1.0);
setEffScaleKey(spep_4+206,fighting_f,1.0,1.0);
setEffAlphaKey(spep_4,fighting_f,255);
setEffAlphaKey(spep_4+206,fighting_f,255);
setEffRotateKey(spep_4,fighting_f,0);
setEffRotateKey(spep_4+206,fighting_f,0);

--エフェクトの再生
fighting_b=entryEffect(spep_4,SP_05x,0x80,-1,0,0,0);

setEffMoveKey(spep_4,fighting_b,0,0,0);
setEffMoveKey(spep_4+206,fighting_b,0,0,0);
setEffScaleKey(spep_4,fighting_b,1.0,1.0);
setEffScaleKey(spep_4+206,fighting_b,1.0,1.0);
setEffAlphaKey(spep_4,fighting_b,255);
setEffAlphaKey(spep_4+206,fighting_b,255);
setEffRotateKey(spep_4,fighting_b,0);
setEffRotateKey(spep_4+206,fighting_b,0);

--敵の動き
setDisp(spep_4  ,1,1);
setDisp(spep_4 -3 +194 ,1,0);

changeAnime(spep_4 +0,1,106);
changeAnime(spep_4 -3  + 158,1,107);

setMoveKey( spep_4  + 0, 1, -142, -116.1 , 0 );
--setMoveKey( spep_4 -3 + 2, 1, -129, -102.1 , 0 );
setMoveKey( spep_4 -3 + 4, 1, -115.9, -88.1 , 0 );
setMoveKey( spep_4 -3 + 6, 1, -102.9, -74.2 , 0 );
setMoveKey( spep_4 -3 + 8, 1, -89.9, -60.2 , 0 );
setMoveKey( spep_4 -3 + 10, 1, -76.9, -46.2 , 0 );
setMoveKey( spep_4 -3 + 12, 1, -63.8, -32.3 , 0 );
setMoveKey( spep_4 -3 + 14, 1, -50.8, -18.3 , 0 );
setMoveKey( spep_4 -3 + 16, 1, -37.8, -4.3 , 0 );
setMoveKey( spep_4 -3 + 18, 1, -24.8, 9.6 , 0 );
setMoveKey( spep_4 -3 + 20, 1, -11.7, 23.6 , 0 );
setMoveKey( spep_4 -3 + 22, 1, 1.3, 37.5 , 0 );
setMoveKey( spep_4 -3 + 24, 1, 14.3, 51.5 , 0 );
setMoveKey( spep_4 -3 + 26, 1, 27.3, 65.5 , 0 );
setMoveKey( spep_4 -3 + 28, 1, 40.4, 79.4 , 0 );
setMoveKey( spep_4 -3 + 30, 1, 53.4, 93.4 , 0 );
setMoveKey( spep_4 -3 + 32, 1, 56.4, 100 , 0 );
setMoveKey( spep_4 -3 + 34, 1, 59.5, 106.6 , 0 );
setMoveKey( spep_4 -3 + 36, 1, 62.5, 113.1 , 0 );
setMoveKey( spep_4 -3 + 38, 1, 65.6, 119.7 , 0 );
setMoveKey( spep_4 -3 + 40, 1, 68.6, 126.3 , 0 );
setMoveKey( spep_4 -3 + 42, 1, 71.7, 132.9 , 0 );
setMoveKey( spep_4 -3 + 44, 1, 74.7, 139.5 , 0 );
setMoveKey( spep_4 -3 + 46, 1, 77.7, 146.1 , 0 );
setMoveKey( spep_4 -3 + 48, 1, 80.8, 152.6 , 0 );
setMoveKey( spep_4 -3 + 50, 1, 83.8, 159.2 , 0 );
setMoveKey( spep_4 -3 + 52, 1, 86.9, 165.8 , 0 );
setMoveKey( spep_4 -3 + 54, 1, 89.9, 172.4 , 0 );
setMoveKey( spep_4 -3 + 56, 1, 110.1, 267.3 , 0 );
setMoveKey( spep_4 -3 + 58, 1, 111.2, 276.3 , 0 );
setMoveKey( spep_4 -3 + 60, 1, 112.4, 285.2 , 0 );
setMoveKey( spep_4 -3 + 62, 1, 109.7, 276.6 , 0 );
setMoveKey( spep_4 -3 + 64, 1, 106.9, 268 , 0 );
setMoveKey( spep_4 -3 + 66, 1, 107.9, 273 , 0 );
setMoveKey( spep_4 -3 + 68, 1, 108.9, 278 , 0 );
setMoveKey( spep_4 -3 + 70, 1, 109.9, 283 , 0 );
setMoveKey( spep_4 -3 + 72, 1, 110.9, 288 , 0 );
setMoveKey( spep_4 -3 + 74, 1, 111.9, 293 , 0 );
setMoveKey( spep_4 -3 + 76, 1, 112.9, 298 , 0 );
setMoveKey( spep_4 -3 + 78, 1, 113.9, 303 , 0 );
setMoveKey( spep_4 -3 + 80, 1, 123.1, 343.3 , 0 );
setMoveKey( spep_4 -3 + 82, 1, 132.3, 383.6 , 0 );
setMoveKey( spep_4 -3 + 84, 1, 141.5, 423.8 , 0 );
setMoveKey( spep_4 -3 + 86, 1, 150.7, 464.1 , 0 );
setMoveKey( spep_4 -3 + 88, 1, 159.9, 504.4 , 0 );
setMoveKey( spep_4 -3 + 90, 1, 169.1, 544.6 , 0 );
setMoveKey( spep_4 -3 + 92, 1, 178.3, 584.9 , 0 );
setMoveKey( spep_4 -3 + 94, 1, 187.5, 625.2 , 0 );
setMoveKey( spep_4 -3 + 96, 1, 196.7, 665.5 , 0 );
setMoveKey( spep_4 -3 + 98, 1, 205.9, 705.8 , 0 );
setMoveKey( spep_4 -3 + 99, 1, 205.9, 705.8 , 0 );
setMoveKey( spep_4 -3 + 100, 1, 164.2, -721.4 , 0 );
setMoveKey( spep_4 -3 + 102, 1, 151.1, -642.5 , 0 );
setMoveKey( spep_4 -3 + 104, 1, 138, -563.7 , 0 );
setMoveKey( spep_4 -3 + 106, 1, 124.8, -484.8 , 0 );
setMoveKey( spep_4 -3 + 108, 1, 111.7, -405.9 , 0 );
setMoveKey( spep_4 -3 + 110, 1, 98.6, -327 , 0 );
setMoveKey( spep_4 -3 + 112, 1, 85.5, -248.1 , 0 );
setMoveKey( spep_4 -3 + 114, 1, 72.4, -169.2 , 0 );
setMoveKey( spep_4 -3 + 116, 1, 59.3, -90.3 , 0 );
setMoveKey( spep_4 -3 + 118, 1, 57.9, -83.6 , 0 );
setMoveKey( spep_4 -3 + 120, 1, 56.6, -76.8 , 0 );
setMoveKey( spep_4 -3 + 122, 1, 55.3, -70.1 , 0 );
setMoveKey( spep_4 -3 + 124, 1, 53.9, -63.3 , 0 );
setMoveKey( spep_4 -3 + 126, 1, 52.6, -56.5 , 0 );
setMoveKey( spep_4 -3 + 128, 1, 51.2, -49.8 , 0 );
setMoveKey( spep_4 -3 + 130, 1, 49.9, -43 , 0 );
setMoveKey( spep_4 -3 + 132, 1, 48.5, -36.2 , 0 );
setMoveKey( spep_4 -3 + 134, 1, 47.2, -29.5 , 0 );
setMoveKey( spep_4 -3 + 136, 1, 45.9, -22.7 , 0 );
setMoveKey( spep_4 -3 + 157, 1, 45.9, -22.7 , 0 );

setMoveKey( spep_4 -3 + 158, 1, 54.8, -175.4 , 0 );
setMoveKey( spep_4 -3 + 160, 1, 91.5, -202.9 , 0 );
setMoveKey( spep_4 -3 + 162, 1, 59.9, -191 , 0 );
setMoveKey( spep_4 -3 + 164, 1, 54.8, -203.7 , 0 );
setMoveKey( spep_4 -3 + 166, 1, 49.8, -216.5 , 0 );
setMoveKey( spep_4 -3 + 168, 1, 60, -219.3 , 0 );
setMoveKey( spep_4 -3 + 170, 1, 70.3, -222.1 , 0 );
setMoveKey( spep_4 -3 + 172, 1, 72.9, -229.8 , 0 );
setMoveKey( spep_4 -3 + 174, 1, 75.5, -237.7 , 0 );
setMoveKey( spep_4 -3 + 176, 1, 78.1, -245.4 , 0 );
setMoveKey( spep_4 -3 + 178, 1, 80.7, -253.3 , 0 );
setMoveKey( spep_4 -3 + 180, 1, 83.3, -261 , 0 );
setMoveKey( spep_4 -3 + 182, 1, 85.9, -268.8 , 0 );
setMoveKey( spep_4 -3 + 184, 1, 88.6, -276.6 , 0 );
setMoveKey( spep_4 -3 + 186, 1, 142.7, -438.6 , 0 );
setMoveKey( spep_4 -3 + 188, 1, 196.9, -600.6 , 0 );
setMoveKey( spep_4 -3 + 190, 1, 250.9, -762.3 , 0 );
setMoveKey( spep_4 -3 + 192, 1, 305.2, -924.5 , 0 );
setMoveKey( spep_4 -3 + 194, 1, 359.4, -1086.5 , 0 )
--setMoveKey( spep_4 -3 + 196, 1, -142, -116.1 , 0 );
--setMoveKey( spep_4 -3 + 198, 1, -129, -102.1 , 0 );



setScaleKey( spep_4  + 0, 1, 0.5, 0.5 );
setScaleKey( spep_4 -3 + 2, 1, 0.55, 0.55 );
setScaleKey( spep_4 -3 + 4, 1, 0.61, 0.61 );
setScaleKey( spep_4 -3 + 6, 1, 0.66, 0.66 );
setScaleKey( spep_4 -3 + 8, 1, 0.71, 0.71 );
setScaleKey( spep_4 -3 + 10, 1, 0.77, 0.77 );
setScaleKey( spep_4 -3 + 12, 1, 0.82, 0.82 );
setScaleKey( spep_4 -3 + 14, 1, 0.87, 0.87 );
setScaleKey( spep_4 -3 + 16, 1, 0.93, 0.93 );
setScaleKey( spep_4 -3 + 18, 1, 0.98, 0.98 );
setScaleKey( spep_4 -3 + 20, 1, 1.03, 1.03 );
setScaleKey( spep_4 -3 + 22, 1, 1.09, 1.09 );
setScaleKey( spep_4 -3 + 24, 1, 1.14, 1.14 );
setScaleKey( spep_4 -3 + 26, 1, 1.19, 1.19 );
setScaleKey( spep_4 -3 + 28, 1, 1.25, 1.25 );
setScaleKey( spep_4 -3 + 30, 1, 1.3, 1.3 );
setScaleKey( spep_4 -3 + 32, 1, 1.28, 1.28 );
setScaleKey( spep_4 -3 + 34, 1, 1.26, 1.26 );
setScaleKey( spep_4 -3 + 36, 1, 1.25, 1.25 );
setScaleKey( spep_4 -3 + 38, 1, 1.23, 1.23 );
setScaleKey( spep_4 -3 + 40, 1, 1.22, 1.22 );
setScaleKey( spep_4 -3 + 42, 1, 1.2, 1.2 );
setScaleKey( spep_4 -3 + 44, 1, 1.18, 1.18 );
setScaleKey( spep_4 -3 + 46, 1, 1.17, 1.17 );
setScaleKey( spep_4 -3 + 48, 1, 1.15, 1.15 );
setScaleKey( spep_4 -3 + 50, 1, 1.13, 1.13 );
setScaleKey( spep_4 -3 + 52, 1, 1.12, 1.12 );
setScaleKey( spep_4 -3 + 54, 1, 1.1, 1.1 );
setScaleKey( spep_4 -3 + 56, 1, 0.9, 0.9 );
setScaleKey( spep_4 -3 + 58, 1, 0.95, 0.95 );
setScaleKey( spep_4 -3 + 60, 1, 1, 1 );
setScaleKey( spep_4 -3 + 62, 1, 0.95, 0.95 );
setScaleKey( spep_4 -3 + 64, 1, 0.9, 0.9 );
setScaleKey( spep_4 -3 + 66, 1, 0.9, 0.9 );
setScaleKey( spep_4 -3 + 68, 1, 0.89, 0.89 );
setScaleKey( spep_4 -3 + 70, 1, 0.89, 0.89 );
setScaleKey( spep_4 -3 + 72, 1, 0.88, 0.88 );
setScaleKey( spep_4 -3 + 74, 1, 0.88, 0.88 );
setScaleKey( spep_4 -3 + 76, 1, 0.87, 0.87 );
setScaleKey( spep_4 -3 + 78, 1, 0.87, 0.87 );
setScaleKey( spep_4 -3 + 80, 1, 0.8, 0.8 );
setScaleKey( spep_4 -3 + 82, 1, 0.73, 0.73 );
setScaleKey( spep_4 -3 + 84, 1, 0.67, 0.67 );
setScaleKey( spep_4 -3 + 86, 1, 0.6, 0.6 );
setScaleKey( spep_4 -3 + 88, 1, 0.53, 0.53 );
setScaleKey( spep_4 -3 + 90, 1, 0.47, 0.47 );
setScaleKey( spep_4 -3 + 92, 1, 0.4, 0.4 );
setScaleKey( spep_4 -3 + 94, 1, 0.33, 0.33 );
setScaleKey( spep_4 -3 + 96, 1, 0.27, 0.27 );
setScaleKey( spep_4 -3 + 98, 1, 0.2, 0.2 );
setScaleKey( spep_4 -3 + 99, 1, 0.2, 0.2 );
setScaleKey( spep_4 -3 + 100, 1, 4, 4 );
setScaleKey( spep_4 -3 + 102, 1, 3.88, 3.88 );
setScaleKey( spep_4 -3 + 104, 1, 3.75, 3.75 );
setScaleKey( spep_4 -3 + 106, 1, 3.63, 3.63 );
setScaleKey( spep_4 -3 + 108, 1, 3.5, 3.5 );
setScaleKey( spep_4 -3 + 110, 1, 3.38, 3.38 );
setScaleKey( spep_4 -3 + 112, 1, 3.25, 3.25 );
setScaleKey( spep_4 -3 + 114, 1, 3.13, 3.13 );
setScaleKey( spep_4 -3 + 116, 1, 3, 3 );
setScaleKey( spep_4 -3 + 118, 1, 2.98, 2.98 );
setScaleKey( spep_4 -3 + 120, 1, 2.96, 2.96 );
setScaleKey( spep_4 -3 + 122, 1, 2.94, 2.94 );
setScaleKey( spep_4 -3 + 124, 1, 2.92, 2.92 );
setScaleKey( spep_4 -3 + 126, 1, 2.9, 2.9 );
setScaleKey( spep_4 -3 + 128, 1, 2.88, 2.88 );
setScaleKey( spep_4 -3 + 130, 1, 2.86, 2.86 );
setScaleKey( spep_4 -3 + 132, 1, 2.84, 2.84 );
setScaleKey( spep_4 -3 + 134, 1, 2.82, 2.82 );
setScaleKey( spep_4 -3 + 136, 1, 2.8, 2.8 );
setScaleKey( spep_4 -3 + 137, 1, 2.8, 2.8 );
b=1.0;

setScaleKey( spep_4 -3 + 158, 1, 1.96 -b, 1.96 -b );
setScaleKey( spep_4 -3 + 160, 1, 2.26 -b, 2.26 -b );
setScaleKey( spep_4 -3 + 162, 1, 2 -b, 2 -b );
setScaleKey( spep_4 -3 + 164, 1, 2.06 -b, 2.06 -b );
setScaleKey( spep_4 -3 + 166, 1, 2.11 -b, 2.11 -b );
setScaleKey( spep_4 -3 + 168, 1, 2.09 -b, 2.09 -b );
setScaleKey( spep_4 -3 + 170, 1, 2.09 -b, 2.09 -b );
setScaleKey( spep_4 -3 + 172, 1, 2.11 -b, 2.11 -b );
setScaleKey( spep_4 -3 + 174, 1, 2.14 -b, 2.14 -b );
setScaleKey( spep_4 -3 + 176, 1, 2.16 -b, 2.16 -b );
setScaleKey( spep_4 -3 + 178, 1, 2.19 -b, 2.19 -b );
setScaleKey( spep_4 -3 + 180, 1, 2.2 -b, 2.2 -b );
setScaleKey( spep_4 -3 + 182, 1, 2.22 -b, 2.22 -b );
setScaleKey( spep_4 -3 + 184, 1, 2.25 -b, 2.25 -b );
setScaleKey( spep_4 -3 + 186, 1, 2.7 -b, 2.7 -b );
setScaleKey( spep_4 -3 + 188, 1, 3.15 -b, 3.15 -b );
setScaleKey( spep_4 -3 + 190, 1, 3.62 -b, 3.62 -b );
setScaleKey( spep_4 -3 + 192, 1, 4.07 -b, 4.07 -b );
setScaleKey( spep_4 -3 + 194, 1, 4.52 -b, 4.52 -b );

setRotateKey( spep_4  + 0, 1, 53.4 );
setRotateKey( spep_4 -3 + 30, 1, 53.4 );
setRotateKey( spep_4 -3 + 32, 1, 51.9 );
setRotateKey( spep_4 -3 + 34, 1, 50.5 );
setRotateKey( spep_4 -3 + 36, 1, 49 );
setRotateKey( spep_4 -3 + 38, 1, 47.5 );
setRotateKey( spep_4 -3 + 40, 1, 46 );
setRotateKey( spep_4 -3 + 42, 1, 44.5 );
setRotateKey( spep_4 -3 + 44, 1, 43.1 );
setRotateKey( spep_4 -3 + 46, 1, 41.6 );
setRotateKey( spep_4 -3 + 48, 1, 40.1 );
setRotateKey( spep_4 -3 + 50, 1, 38.6 );
setRotateKey( spep_4 -3 + 52, 1, 37.2 );
setRotateKey( spep_4 -3 + 54, 1, 35.7 );
setRotateKey( spep_4 -3 + 157, 1, 35.7 );

setRotateKey( spep_4 -3 + 158, 1, 10.9 );
setRotateKey( spep_4 -3 + 194, 1, 10.9 );

--setRotateKey( spep_4 -3 + 196, 1, 53.4 );

--SE
playSe(spep_4 +30,1011);--パンチ
playSe(spep_4 +78,8);--飛んでいく
playSe(spep_4 +142,1011);--尻尾で叩く
playSe(spep_4 +160,44);--叩き落とす
playSe(spep_4 +190,1023);--地面にぶつかる？

-- ** 次の準備 ** --
spep_5 = spep_4 + 206;

------------------------------------------------------
--斬撃
------------------------------------------------------
--エフェクトの再生
slash=entryEffect(spep_5,SP_06x,0x80,-1,0,0,0);

setEffMoveKey(spep_5,slash,0,0,0);
setEffMoveKey(spep_5+264,slash,0,0,0);
setEffScaleKey(spep_5,slash,-1.0,1.0);
setEffScaleKey(spep_5+264,slash,-1.0,1.0);
setEffAlphaKey(spep_5,slash,255);
setEffAlphaKey(spep_5+264,slash,255);
setEffRotateKey(spep_5,slash,0);
setEffRotateKey(spep_5+264,slash,0);

--集中線
shuchusen3 = entryEffectLife( spep_5 -3 + 48,  906, 12, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_5 -3 + 48, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_5 -3 + 60, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_5 -3 + 48, shuchusen3, 1.05, 1.05 );
setEffScaleKey( spep_5 -3 + 60, shuchusen3, 1.05, 1.05 );

setEffRotateKey( spep_5 -3 + 48, shuchusen3, 0 );
setEffRotateKey( spep_5 -3 + 60, shuchusen3, 0 );

setEffAlphaKey( spep_5 -3 + 48, shuchusen3, 255 );
setEffAlphaKey( spep_5 -3 + 59, shuchusen3, 255 );
setEffAlphaKey( spep_5 -3 + 60, shuchusen3, 0 );

--集中線
shuchusen4 = entryEffectLife( spep_5 + 203,  906, 10, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_5 + 203, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_5 + 213, shuchusen4, 0, 0 , 0 );

setEffRotateKey( spep_5 + 203, shuchusen4, 0 );
setEffRotateKey( spep_5 + 213, shuchusen4, 0 );

setEffAlphaKey( spep_5 + 203, shuchusen4, 255 );
setEffAlphaKey( spep_5 + 212, shuchusen4, 255 );
setEffAlphaKey( spep_5 + 213, shuchusen4, 0 );

--敵の動き
setDisp(spep_5   +56,1,0);
setDisp(spep_5   +57,1,1);
setDisp(spep_5   +58,1,1);
setDisp(spep_5  +77 ,1,0);
setDisp(spep_5  +78 ,1,0);

changeAnime(spep_5  +56,1,7);

d=250;

setMoveKey( spep_5  + 56, 1, -115.3, -429.3+d , 0 );
setMoveKey( spep_5 -3 + 64, 1, -142.6, -526.5+d , 0 );
setMoveKey( spep_5 -3 + 66, 1, -163.5, -600.8+d , 0 );
setMoveKey( spep_5 -3 + 68, 1, -180.8, -662+d , 0 );
setMoveKey( spep_5 -3 + 70, 1, -195.6, -714.7+d , 0 );
setMoveKey( spep_5 -3 + 72, 1, -208.7, -761+d , 0 );
setMoveKey( spep_5 -3 + 74, 1, -220.3, -802.4+d , 0 );
setMoveKey( spep_5 -3 + 76, 1, -230.8, -839.9+d , 0 );
setMoveKey( spep_5  + 78, 1, -240.4, -874.1+d , 0 );
--setMoveKey( spep_5  + 80, 1, -249.3, -905.4+d , 0 );

c=1.7;

setScaleKey( spep_5  + 56, 1, 3.01 -c, 3.01 -c );
setScaleKey( spep_5 -3 + 62, 1, 3.78 -c, 3.78 -c );
setScaleKey( spep_5 -3 + 64, 1, 4.23 -c, 4.23 -c );
setScaleKey( spep_5 -3 + 66, 1, 4.58 -c, 4.58 -c );
setScaleKey( spep_5 -3 + 68, 1, 4.88 -c, 4.88 -c );
setScaleKey( spep_5 -3 + 70, 1, 5.12 -c, 5.12 -c );
setScaleKey( spep_5 -3 + 72, 1, 5.33 -c, 5.33 -c );
setScaleKey( spep_5 -3 + 74, 1, 5.53 -c, 5.53 -c );
setScaleKey( spep_5 -3 + 76, 1, 5.71 -c, 5.71 -c );
setScaleKey( spep_5  + 78, 1, 5.88 -c, 5.88 -c );
--setScaleKey( spep_5 -3 + 80, 1, 6.01 -c, 6.01 -c );

setRotateKey( spep_5 + 56, 1, 1.7 );
setRotateKey( spep_5 -3 + 62, 1, -7.3 );
setRotateKey( spep_5 -3 + 64, 1, -12.6 );
setRotateKey( spep_5 -3 + 66, 1, -16.6 );
setRotateKey( spep_5 -3 + 68, 1, -20 );
setRotateKey( spep_5 -3 + 70, 1, -22.9 );
setRotateKey( spep_5 -3 + 72, 1, -25.4 );
setRotateKey( spep_5 -3 + 74, 1, -27.7 );
setRotateKey( spep_5 -3 + 76, 1, -29.7 );
setRotateKey( spep_5  + 78, 1, -31.6 );
--setRotateKey( spep_5  + 80, 1, -33.3 );

--SE
--playSe(spep_5 +46,1004);--剣を振り下ろす
playSe(spep_5 +58,1032);--斬撃
playSe(spep_5 +112,1018);--ズーム音
SE1=playSe(spep_5 +136,15);--溜めてる音
stopSe(spep_5+204,SE1,0);--音を止める
playSe(spep_5 +210,1022);--放つ音

-- ** 次の準備 ** --
spep_6 = spep_5 + 264;

------------------------------------------------------
--ギャン
------------------------------------------------------
--エフェクトの再生
gyan=entryEffect(spep_6,SP_07x,0x80,-1,0,0,0);

setEffMoveKey(spep_6,gyan,0,0,0);
setEffMoveKey(spep_6+56,gyan,0,0,0);
setEffScaleKey(spep_6,gyan,1.0,1.0);
setEffScaleKey(spep_6+56,gyan,1.0,1.0);
setEffAlphaKey(spep_6,gyan,255);
setEffAlphaKey(spep_6+56,gyan,255);
setEffRotateKey(spep_6,gyan,0);
setEffRotateKey(spep_6+56,gyan,0);

--SE
playSe(spep_6,1023);--爆発

-- ** 次の準備 ** --
spep_7 = spep_6 + 56;

------------------------------------------------------
--終わり
------------------------------------------------------
--エフェクトの再生
finish=entryEffect(spep_7,SP_08x,0x80,-1,0,0,0);

setEffMoveKey(spep_7,finish,0,0,0);
setEffMoveKey(spep_7+240,finish,0,0,0);
setEffScaleKey(spep_7,finish,-1.0,1.0);
setEffScaleKey(spep_7+240,finish,-1.0,1.0);
setEffAlphaKey(spep_7,finish,255);
setEffAlphaKey(spep_7+240,finish,255);
setEffRotateKey(spep_7,finish,0);
setEffRotateKey(spep_7+240,finish,0);

--SE
playSe(spep_7,1024);--爆発

dealDamage(spep_7);
endPhase(spep_7 + 230);
end






