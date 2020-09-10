--1017550:ビーデル_ムーンサルトキック
--sp_effect_a9_00057


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
SP_01=	153708	;--	水晶を投げる
SP_02=	153710	;--	水晶が敵に向かう、敵に当たる
SP_03=	153712	;--	水晶が砕ける
SP_04=	153713	;--	背面ジャンプ
SP_05=	153715	;--	敵を蹴り飛ばす

--てき
SP_01x=	153709	;--	水晶を投げる	(敵)
SP_02x=	153711	;--	水晶が敵に向かう、敵に当たる	(敵)
SP_03x=	153712	;--	水晶が砕ける	
SP_04x=	153714	;--	背面ジャンプ	(敵)
SP_05x=	153716	;--	敵を蹴り飛ばす	(敵)

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
-------------------------------------------------------
--水晶を投げる
------------------------------------------------------
--はじめの準備
spep_0=0;

--エフェクトの再生
throw=entryEffect(spep_0,SP_01,0x100,-1,0,0,0);

setEffMoveKey(spep_0,throw,0,0,0);
setEffMoveKey(spep_0+90,throw,0,0,0);
setEffScaleKey(spep_0,throw,1.0,1.0);
setEffScaleKey(spep_0+90,throw,1.0,1.0);
setEffAlphaKey(spep_0,throw,255);
setEffAlphaKey(spep_0+90,throw,255);
setEffRotateKey(spep_0,throw,0);
setEffRotateKey(spep_0+90,throw,0);

--集中線
shuchusen1 = entryEffectLife( spep_0 -3 + 20,  906, 22, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_0 -3 + 20, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 -3 + 42, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 -3 + 22, shuchusen1, 1, 1 );
setEffScaleKey( spep_0 -3 + 42, shuchusen1, 1, 1 );

setEffRotateKey( spep_0 -3 + 22, shuchusen1, 180 );
setEffRotateKey( spep_0 -3 + 42, shuchusen1, 180 );

setEffAlphaKey( spep_0 -3 + 22, shuchusen1, 51 );
setEffAlphaKey( spep_0 -3 + 24, shuchusen1, 102 );
setEffAlphaKey( spep_0 -3 + 26, shuchusen1, 153 );
setEffAlphaKey( spep_0 -3 + 28, shuchusen1, 204 );
setEffAlphaKey( spep_0 -3 + 30, shuchusen1, 255 );
setEffAlphaKey( spep_0 -3 + 30, shuchusen1, 255 );
setEffAlphaKey( spep_0 -3 + 40, shuchusen1, 255 );
setEffAlphaKey( spep_0 -3 + 41, shuchusen1, 255 );
setEffAlphaKey( spep_0 -3 + 42, shuchusen1, 0 );

--流線
ryusen1 = entryEffectLife( spep_0 -3 + 42,  914, 46, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_0 -3 + 42, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 -3 + 88, ryusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 -3 + 42, ryusen1, 2.91, 1.68 );
setEffScaleKey( spep_0 -3 + 88, ryusen1, 2.91, 1.68 );

setEffRotateKey( spep_0 -3 + 42, ryusen1, 158.2 );
setEffRotateKey( spep_0 -3 + 88, ryusen1, 158.2 );

setEffAlphaKey( spep_0 -3 + 42, ryusen1, 255 );
setEffAlphaKey( spep_0 -3 + 88, ryusen1, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 90, 0, 0, 0, 0, 200 );  --黒　背景

--SE
playSe(spep_0 + 18,1007);--手を大きく振り上げる
playSe(spep_0 + 42,1117);--水晶を投げる

-- ** エフェクト等 ** --
entryFade(spep_0+82,4,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fad

--次の準備
spep_1=spep_0+90;

------------------------------------------------------
--クリスタルが当たる
------------------------------------------------------
--エフェクトの再生
hit=entryEffect(spep_1,SP_02,0x100,-1,0,0,0);

setEffMoveKey(spep_1,hit,0,0,0);
setEffMoveKey(spep_1+78,hit,0,0,0);
setEffScaleKey(spep_1,hit,1.0,1.0);
setEffScaleKey(spep_1+78,hit,1.0,1.0);
setEffAlphaKey(spep_1,hit,255);
setEffAlphaKey(spep_1+72,hit,255);
setEffAlphaKey(spep_1+73,hit,255);
setEffAlphaKey(spep_1+74,hit,0);
setEffRotateKey(spep_1,hit,0);
setEffRotateKey(spep_1+78,hit,0);
--[[
--流線
ryusen2 = entryEffectLife( spep_1 + 0,  913, 32, 0x80, -1, 0,  -440.2, 186.8 );

setEffMoveKey( spep_1 + 0, ryusen2,  -425.2, 145.8 , 0 );
setEffMoveKey( spep_1 + 32, ryusen2,  -425.2, 145.8 , 0 );

setEffScaleKey( spep_1 + 0, ryusen2, 1.65, 1.45 );
setEffScaleKey( spep_1 + 32, ryusen2, 1.65, 1.45 );

setEffRotateKey( spep_1 + 0, ryusen2, -33.2 );
setEffRotateKey( spep_1 + 32, ryusen2, -33.2 );

setEffAlphaKey( spep_1 + 0, ryusen2, 255 );
setEffAlphaKey( spep_1 + 32, ryusen2, 255 );
]]
--SE
SE0=playSe(spep_1,1118);--飛んでいく

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 78, 0, 0, 0, 0, 200 );  --黒　背景
--------------------------------------
--回避 --既存のものの流用
--------------------------------------


if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1+20 ; --エンドフェイズのフレーム数を置き換える
    
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

--流線
ryusen3 = entryEffectLife( spep_1  + 33,  914, 24, 0x80, -1, 0, 0, 0);

setEffMoveKey( spep_1  + 33, ryusen3, 0, 0 , 0 );
setEffMoveKey( spep_1  + 56, ryusen3, 0, 0 , 0 );

setEffScaleKey( spep_1  + 33, ryusen3,  2.49, 1.44  );
setEffScaleKey( spep_1  + 56, ryusen3,  2.49, 1.44  );

setEffRotateKey( spep_1  + 33, ryusen3, 169.4 );
setEffRotateKey( spep_1  + 56, ryusen3, 169.4 );

setEffAlphaKey( spep_1  + 33, ryusen3, 255 );
setEffAlphaKey( spep_1  + 55, ryusen3, 255 );
setEffAlphaKey( spep_1  + 56, ryusen3, 0 );

--集中線
shuchusen2 = entryEffectLife( spep_1 + 56,  906, 17, 0x100, -1, 0, 245, 0 );

setEffMoveKey( spep_1 + 56, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_1 + 73, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_1 + 56, shuchusen2, 1.15, 1.15 );
setEffScaleKey( spep_1 + 73, shuchusen2, 1.15, 1.15 );

setEffRotateKey( spep_1 + 56, shuchusen2, 180 );
setEffRotateKey( spep_1 + 73, shuchusen2, 180 );

setEffAlphaKey( spep_1 + 56, shuchusen2, 255 );
setEffAlphaKey( spep_1 + 73, shuchusen2, 255 );

--敵の動き
setDisp( spep_1 -4 + 37, 1, 1);
setDisp( spep_1  + 74, 1, 0);

setShakeChara(spep_1 -4 + 37,1,5);

changeAnime( spep_1 -4 + 37, 1, 101);
changeAnime(  spep_1 -3 + 58, 1, 104);

setMoveKey( spep_1 -4 + 37, 1, 101, 18 , 0 );
--setMoveKey( spep_1 -3 + 38, 1, 96.2, 16.1 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 93.9, 15.2 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 92.4, 14.6 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 91.5, 14.2 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 91.1, 14.1 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 91, 14 , 0 );
setMoveKey( spep_1 -3 + 57, 1, 91, 14 , 0 );

--setMoveKey( spep_1 -3 + 52, 1, 91, 15.9 , 0 );

setMoveKey( spep_1 -3 + 58, 1, 91, 15.9 , 0 );
setMoveKey( spep_1 -3 + 60, 1, 94, 21.9 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 92, 12.9 , 0 );
setMoveKey( spep_1 -3 + 64, 1, 95.8, 20.5 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 91, 15.9 , 0 );
setMoveKey( spep_1 -3 + 68, 1, 94, 21.9 , 0 );
setMoveKey( spep_1 -3 + 70, 1, 92, 12.9 , 0 );
setMoveKey( spep_1 -3 + 72, 1, 95.8, 20.5 , 0 );
setMoveKey( spep_1 -3 + 74, 1, 91, 15.9 , 0 );
setMoveKey( spep_1  + 74, 1, 94, 21.9 , 0 );

setScaleKey( spep_1 -4 + 37, 1, 1.73, 1.73 );
setScaleKey( spep_1  + 74, 1, 1.73, 1.73 );

setRotateKey( spep_1 -4 + 37, 1, -1.5 );
setRotateKey( spep_1 -3 + 48, 1, -1.5 );
setRotateKey( spep_1 -3 + 57, 1, -1.5 );
setRotateKey( spep_1 -3 + 58, 1, -18.7 );
setRotateKey( spep_1  + 74, 1, -18.7 );

--SE
SE2=playSe(spep_1+32,1119);--当たる
stopSe(spep_1+64,SE2,10);--音を止める
playSe(spep_1+58,62);--当たる
--次の準備
spep_2=spep_1+74;
------------------------------------------------------
--クリスタルが砕ける
------------------------------------------------------
--エフェクトの再生
break_down=entryEffect(spep_2,SP_03,0x100,-1,0,0,0);

setEffMoveKey(spep_2,break_down,0,0,0);
setEffMoveKey(spep_2+58,break_down,0,0,0);
setEffScaleKey(spep_2,break_down,1.0,1.0);
setEffScaleKey(spep_2+58,break_down,1.0,1.0);
setEffAlphaKey(spep_2,break_down,255);
setEffAlphaKey(spep_2+56,break_down,255);
setEffAlphaKey(spep_2+57,break_down,255);
setEffAlphaKey(spep_2+58,break_down,0);
setEffRotateKey(spep_2,break_down,0);
setEffRotateKey(spep_2+58,break_down,0);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 68, 0, 0, 0, 0, 255 );  --黒　背景

SE1=playSe(spep_2,1115);--砕ける音
setSeVolume(spep_2,1115,150);
stopSe(spep_2,SE1,58);--音を止める

--次の準備
spep_3=spep_2+58;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_3 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_3 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_3 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_3 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_3 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_3 + 0, shuchusen, 0 );
setEffRotateKey( spep_3 + 90, shuchusen, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen, 255 );
setEffAlphaKey( spep_3 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_3 + 0, SE_05 );


entryFade( spep_3 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 94;

------------------------------------------------------
--回る
------------------------------------------------------
--エフェクトの再生
spin=entryEffect(spep_4,SP_04,0x100,-1,0,0,0);

setEffMoveKey(spep_4,spin,0,0,0);
setEffMoveKey(spep_4+110,spin,0,0,0);
setEffScaleKey(spep_4,spin,1.0,1.0);
setEffScaleKey(spep_4+110,spin,1.0,1.0);
setEffAlphaKey(spep_4,spin,255);
setEffAlphaKey(spep_4+110,spin,255);
setEffRotateKey(spep_4,spin,0);
setEffRotateKey(spep_4+110,spin,0);

--***カットイン***
speff = entryEffect(  spep_4 + 10 +14,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff3 = entryEffect(  spep_4 + 10 +14,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff3, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー --
ctgogo = entryEffectLife( spep_4 + 10 +26, 190006, 72, 0x100, -1, 0, 0, 540);    -- ゴゴゴゴ

setEffMoveKey(  spep_4 + 10 +26,  ctgogo,  0,  540);
setEffMoveKey(  spep_4 + 10 +98,  ctgogo,  0,  540);

setEffAlphaKey( spep_4 + 10  + 26, ctgogo, 255 );
setEffAlphaKey( spep_4 + 10  + 27, ctgogo, 255 );
setEffAlphaKey( spep_4 + 10  + 28, ctgogo, 255 );
setEffAlphaKey( spep_4 + 10  + 88, ctgogo, 255 );
setEffAlphaKey( spep_4 + 10  + 90, ctgogo, 255 );
setEffAlphaKey( spep_4 + 10  + 92, ctgogo, 191 );
setEffAlphaKey( spep_4 + 10  + 94, ctgogo, 128 );
setEffAlphaKey( spep_4 + 10  + 96, ctgogo, 64 );
setEffAlphaKey( spep_4 + 10  + 98, ctgogo, 0 );

setEffRotateKey(  spep_4 + 10 +26,  ctgogo,  0);
setEffRotateKey(  spep_4 + 10 +98,  ctgogo,  0);

setEffScaleKey(  spep_4 + 10 +26,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_4 + 10 +90,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_4 + 10 +98,  ctgogo, 1.07, 1.07 );

--集中線
shuchusen3 = entryEffectLife( spep_4 ,  906, 110, 0x100, -1, 0, 245, 0 );

setEffMoveKey( spep_4 , shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_4 + 110, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_4 , shuchusen3, 1.15, 1.15 );
setEffScaleKey( spep_4 + 110, shuchusen3, 1.15, 1.15 );

setEffRotateKey( spep_4 , shuchusen3, 180 );
setEffRotateKey( spep_4 + 110, shuchusen3, 180 );

setEffAlphaKey( spep_4 + 0, shuchusen3, 0 );
setEffAlphaKey( spep_4 +35, shuchusen3, 0 );
setEffAlphaKey( spep_4 +36, shuchusen3, 255 );
setEffAlphaKey( spep_4 + 110, shuchusen3, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 110, 0, 0, 0, 0, 200 );  --黒　背景

--SE
playSe(spep_4,1116);--砕ける音
setSeVolume(spep_4,1116,90);
playSe(spep_4+32,1018);--ごごご

-- ** エフェクト等 ** --
entryFade(spep_4+102,4,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fad

--次の準備
spep_5=spep_4+110;
------------------------------------------------------
--蹴り飛ばす
------------------------------------------------------
--エフェクトの再生
kick=entryEffect(spep_5,SP_05,0x80,-1,0,0,0);

setEffMoveKey(spep_5, kick,0,0,0);
setEffMoveKey(spep_5+42, kick,0,0,0);
setEffScaleKey(spep_5, kick,1.0,1.0);
setEffScaleKey(spep_5+42, kick,1.0,1.0);
setEffAlphaKey(spep_5, kick,255);
setEffAlphaKey(spep_5+42, kick,255);
setEffRotateKey(spep_5, kick,0);
setEffRotateKey(spep_5+42, kick,0);

--敵の動き
setDisp( spep_5  + 0, 1, 1 );
setDisp( spep_5  + 40, 1, 0 );
changeAnime( spep_5  + 0, 1, 104 );
changeAnime( spep_5 -3 + 13, 1, 107 );

setMoveKey( spep_5  + 0, 1, -3.9, -6.8 , 0 );
--setMoveKey( spep_5 -3 + 2, 1, -3.9, -0.3 , 0 );
setMoveKey( spep_5 -3 + 4, 1, -3.9, 2.3 , 0 );
setMoveKey( spep_5 -3 + 6, 1, -3.9, 3.6 , 0 );
setMoveKey( spep_5 -3 + 8, 1, -3.9, 4 , 0 );
setMoveKey( spep_5 -3 + 11, 1, 0.8, 8.7 , 0 );
setMoveKey( spep_5 -3 + 12, 1, 0.8, 8.7 , 0 );
setMoveKey( spep_5 -3 + 13, 1, 27.5, -38.4 , 0 );
--setMoveKey( spep_5 -3 + 14, 1, 46.3, 10.5 , 0 );
setMoveKey( spep_5 -3 + 17, 1, 22.2, 10.1 , 0 );
setMoveKey( spep_5 -3 + 19, 1, 27.5, -38.4 , 0 );
--setMoveKey( spep_5 -3 + 20, 1, 287.9, -270.3 , 0 );
--setMoveKey( spep_5 -3 + 22, 1, 369.3, -438.2 , 0 );
--setMoveKey( spep_5 -3 + 25, 1, 459.1, -603.8 , 0 );
--setMoveKey( spep_5 -3 + 27, 1, 513.3, -625.4 , 0 );
--setMoveKey( spep_5 -3 + 28, 1, 579.2, -746.9 , 0 );
--setMoveKey( spep_5 -3 + 31, 1, 532.2, -786.9 , 0 );
--setMoveKey( spep_5 -3 + 32, 1, 535.5, -1035.1 , 0 );
--setMoveKey( spep_5 -3 + 34, 1, 556.1, -1071.9 , 0 );
--setMoveKey( spep_5 -3 + 36, 1, 569.5, -1095.7 , 0 );
--setMoveKey( spep_5 -3 + 38, 1, 576.5, -1108.4 , 0 );
setMoveKey( spep_5  + 40, 1, 577.2, -1111 , 0 );

a=1.6;
setScaleKey( spep_5  + 0, 1, 1.71, 1.71  );
setScaleKey( spep_5 -3 + 11, 1, 1.71, 1.71  );
setScaleKey( spep_5 -3 + 12, 1, 1.71, 1.71  );
setScaleKey( spep_5 -3 + 13, 1, 0.68 , 0.68 );
--setScaleKey( spep_5 -3 + 14, 1, 0.98 -a, 0.98 -a );
--setScaleKey( spep_5 -3 + 17, 1, 0.9 -a, 0.9 -a );
--setScaleKey( spep_5 -3 + 19, 1, 1.24 -a, 1.24 -a );
--setScaleKey( spep_5 -3 + 20, 1, 2.06 -a, 2.06 -a );
--setScaleKey( spep_5 -3 + 22, 1, 2.5 -a, 2.5 -a );
--setScaleKey( spep_5 -3 + 25, 1, 3.17 -a, 3.17 -a );
--setScaleKey( spep_5 -3 + 27, 1, 3.48 -a, 3.48 -a );
--setScaleKey( spep_5 -3 + 28, 1, 3.82 -a, 3.82 -a );
--setScaleKey( spep_5 -3 + 31, 1, 3.71 -a, 3.71 -a );
--setScaleKey( spep_5 -3 + 32, 1, 4.29 -a, 4.29 -a );
--setScaleKey( spep_5 -3 + 34, 1, 4.44 -a, 4.44 -a );
--setScaleKey( spep_5 -3 + 36, 1, 4.54 -a, 4.54 -a );
--setScaleKey( spep_5 -3 + 38, 1, 4.58 -a, 4.58 -a );
setScaleKey( spep_5  + 40, 1, 4.61 -a, 4.61 -a );

setRotateKey( spep_5  + 0, 1, 0 );
setRotateKey( spep_5 -3 + 6, 1, 0 );
setRotateKey( spep_5 -3 + 8, 1, 0.2 );
setRotateKey( spep_5 -3 + 11, 1, 0.2 );
setRotateKey( spep_5 -3 + 12, 1, 0.2 );
setRotateKey( spep_5 -3 + 13, 1, -76.5 );
--setRotateKey( spep_5 -3 + 14, 1, -36.5 );
--setRotateKey( spep_5 -3 + 17, 1, -36.5 );
--setRotateKey( spep_5 -3 + 19, 1, -76.5 );
--setRotateKey( spep_5 -3 + 20, 1, -31.5 );
--setRotateKey( spep_5 -3 + 22, 1, -28.5 );
--setRotateKey( spep_5 -3 + 25, 1, -26.4 );
--setRotateKey( spep_5 -3 + 27, 1, -64.8 );
--setRotateKey( spep_5 -3 + 28, 1, -23.4 );
--setRotateKey( spep_5 -3 + 31, 1, -22.4 );
--setRotateKey( spep_5 -3 + 32, 1, -61.8 );
--setRotateKey( spep_5 -3 + 34, 1, -61.3 );
--setRotateKey( spep_5 -3 + 36, 1, -61 );
--etRotateKey( spep_5 -3 + 38, 1, -60.8 );
setRotateKey( spep_5  + 40, 1, -76.5 );

--集中線
shuchusen4 = entryEffectLife( spep_5 + 0,  906, 40, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_5 + 0, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_5 + 40, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, shuchusen4, 1.15, 1.15 );
setEffScaleKey( spep_5 + 40, shuchusen4, 1.15, 1.15 );

setEffRotateKey( spep_5 + 0, shuchusen4, 180 );
setEffRotateKey( spep_5 + 40, shuchusen4, 180 );

setEffAlphaKey( spep_5 + 0, shuchusen4, 255 );
setEffAlphaKey( spep_5 + 40, shuchusen4, 255 );

--SE
playSe(spep_5+8,1009);--ごごご

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0,42, 0, 0, 0, 0, 200 );  --黒　背景

-- ** エフェクト等 ** --
entryFade(spep_5+34,4,10,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fad

--次の準備
spep_6=spep_5+42;

------------------------------------------------------
-- 敵吹っ飛びシーン(100F)
------------------------------------------------------
--[[
-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_6 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_6 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_6 + 100, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( spep_6 + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_6 + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_6 + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_6 + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_6 + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_6 + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_6 + 100, bakuhatsu, 0.9, 0.9 );

setEffRotateKey( spep_6 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_6 + 100, bakuhatsu, 0 );

setEffAlphaKey( spep_6 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_6 + 100, bakuhatsu, 255 );

]]--

-- ** ひび割れ ** --
hibiware = entryEffect( spep_6 + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_6 + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( spep_6 + 100, hibiware, 70, -60, 0 ); 

setEffScaleKey( spep_6 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_6 + 100, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_6 + 2, hibiware, 0 );
setEffRotateKey( spep_6 + 100, hibiware, 0 );

setEffAlphaKey( spep_6 + 2, hibiware, 0 );
setEffAlphaKey( spep_6 + 13, hibiware, 0 );
setEffAlphaKey( spep_6 + 14, hibiware, 255 );
setEffAlphaKey( spep_6 + 100, hibiware, 255 );

-- ** 集中線 ** --
shuchusen_g = entryEffectLife( spep_6 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_6 + 14, shuchusen_g, 32, 25 );

setEffMoveKey( spep_6 + 14, shuchusen_g, 0, 0 , 0 );
setEffMoveKey( spep_6 + 46, shuchusen_g, 0, 0 , 0 );

setEffScaleKey( spep_6 + 14, shuchusen_g, 1, 1 );
setEffScaleKey( spep_6 + 46, shuchusen_g, 1, 1 );

setEffRotateKey( spep_6 + 14, shuchusen_g, 0 );
setEffRotateKey( spep_6 + 46, shuchusen_g, 0 );

setEffAlphaKey( spep_6 + 14, shuchusen_g, 255 );
setEffAlphaKey( spep_6 + 28, shuchusen_g, 255 );
setEffAlphaKey( spep_6 + 30, shuchusen_g, 252 );
setEffAlphaKey( spep_6 + 32, shuchusen_g, 242 );
setEffAlphaKey( spep_6 + 34, shuchusen_g, 227 );
setEffAlphaKey( spep_6 + 36, shuchusen_g, 205 );
setEffAlphaKey( spep_6 + 38, shuchusen_g, 176 );
setEffAlphaKey( spep_6 + 40, shuchusen_g, 142 );
setEffAlphaKey( spep_6 + 42, shuchusen_g, 101 );
setEffAlphaKey( spep_6 + 44, shuchusen_g, 54 );
setEffAlphaKey( spep_6 + 46, shuchusen_g, 0 );

kuroshuchusen_g = entryEffectLife( spep_6 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_6 + 14, kuroshuchusen_g, 0, 0 , 0 );
setEffMoveKey( spep_6 + 100, kuroshuchusen_g, 0, 0 , 0 );

setEffScaleKey( spep_6 + 14, kuroshuchusen_g, 1, 1 );
setEffScaleKey( spep_6 + 100, kuroshuchusen_g, 1, 1 );

setEffRotateKey( spep_6 + 14, kuroshuchusen_g, 0 );
setEffRotateKey( spep_6 + 100, kuroshuchusen_g, 0 );

setEffAlphaKey( spep_6 + 14, kuroshuchusen_g, 255 );
setEffAlphaKey( spep_6 + 100, kuroshuchusen_g, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_6 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_6 + 14, ctga, 14, 20 );

setEffMoveKey( spep_6 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_6 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_6 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_6 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_6 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_6 + 14, ctga, -10.9 );
setEffRotateKey( spep_6 + 15, ctga, -10.9 );
setEffRotateKey( spep_6 + 16, ctga, -14.9 );
setEffRotateKey( spep_6 + 17, ctga, -14.9 );
setEffRotateKey( spep_6 + 18, ctga, -10.9 );
setEffRotateKey( spep_6 + 19, ctga, -10.9 );
setEffRotateKey( spep_6 + 20, ctga, -14.9 );
setEffRotateKey( spep_6 + 21, ctga, -14.9 );
setEffRotateKey( spep_6 + 22, ctga, -10.9 );
setEffRotateKey( spep_6 + 23, ctga, -10.9 );
setEffRotateKey( spep_6 + 24, ctga, -14.9 );
setEffRotateKey( spep_6 + 25, ctga, -14.9 );
setEffRotateKey( spep_6 + 26, ctga, -10.9 );
setEffRotateKey( spep_6 + 27, ctga, -10.9 );
setEffRotateKey( spep_6 + 28, ctga, -14.9 );
setEffRotateKey( spep_6 + 100, ctga, -14.9 );

setEffAlphaKey( spep_6 + 14, ctga, 255 );
setEffAlphaKey( spep_6 + 100, ctga, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_6 + 0, 1, 1 );
changeAnime( spep_6 + 0, 1, 107 );  --ダメージ 手前

setMoveKey( spep_6 + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_6 + 1, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_6 + 2, 1, 31, -3.9 , 0 );
setMoveKey( spep_6 + 3, 1, 31, -3.9 , 0 );
setMoveKey( spep_6 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_6 + 5, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_6 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_6 + 7, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_6 + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_6 + 9, 1, 15, -65.4 , 0 );
setMoveKey( spep_6 + 10, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_6 + 11, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_6 + 12, 1, -45.3, -142.1 , 0 );  --画面にぶつかる
setMoveKey( spep_6 + 100, 1, -45.3, -142.1 , 0 );

setScaleKey( spep_6 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_6 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_6 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_6 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_6 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_6 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_6 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_6 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_6 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_6 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_6 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_6 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_6 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_6 + 110, 1, 1.6, 1.6 );


setRotateKey( spep_6 + 0, 1, -40 );
setRotateKey( spep_6 + 1, 1, -40 );
setRotateKey( spep_6 + 2, 1, 80 );
setRotateKey( spep_6 + 3, 1, 80 );
setRotateKey( spep_6 + 4, 1, 200 );
setRotateKey( spep_6 + 5, 1, 200 );
setRotateKey( spep_6 + 6, 1, 360 );
setRotateKey( spep_6 + 7, 1, 360 );
setRotateKey( spep_6 + 8, 1, 558 );
setRotateKey( spep_6 + 9, 1, 558 );
setRotateKey( spep_6 + 10, 1, 425 );
setRotateKey( spep_6 + 11, 1, 425 );
setRotateKey( spep_6 + 12, 1, -40 );
setRotateKey( spep_6 + 100, 1, -40 );

-- ** 音 ** --
--playSe( spep_6 + 0, 1011 );  --爆発音
playSe( spep_6 + 14, SE_11 );  --割れる音

-- ** ダメージ表示 ** --
dealDamage( spep_6 + 10 );
entryFade( spep_6 + 92, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_6 + 100 );




else 
------------------------------------------------------------------------------------------------------------
-- てき側
------------------------------------------------------------------------------------------------------------
-------------------------------------------------------
--水晶を投げる
------------------------------------------------------
--はじめの準備
spep_0=0;
--エフェクトの再生
throw=entryEffect(spep_0,SP_01x,0x100,-1,0,0,0);

setEffMoveKey(spep_0,throw,0,0,0);
setEffMoveKey(spep_0+90,throw,0,0,0);
setEffScaleKey(spep_0,throw,1.0,1.0);
setEffScaleKey(spep_0+90,throw,1.0,1.0);
setEffAlphaKey(spep_0,throw,255);
setEffAlphaKey(spep_0+90,throw,255);
setEffRotateKey(spep_0,throw,0);
setEffRotateKey(spep_0+90,throw,0);

--集中線
shuchusen1 = entryEffectLife( spep_0 -3 + 20,  906, 22, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_0 -3 + 20, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 -3 + 42, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 -3 + 22, shuchusen1, 1, 1 );
setEffScaleKey( spep_0 -3 + 42, shuchusen1, 1, 1 );

setEffRotateKey( spep_0 -3 + 22, shuchusen1, 180 );
setEffRotateKey( spep_0 -3 + 42, shuchusen1, 180 );

setEffAlphaKey( spep_0 -3 + 22, shuchusen1, 51 );
setEffAlphaKey( spep_0 -3 + 24, shuchusen1, 102 );
setEffAlphaKey( spep_0 -3 + 26, shuchusen1, 153 );
setEffAlphaKey( spep_0 -3 + 28, shuchusen1, 204 );
setEffAlphaKey( spep_0 -3 + 30, shuchusen1, 255 );
setEffAlphaKey( spep_0 -3 + 30, shuchusen1, 255 );
setEffAlphaKey( spep_0 -3 + 40, shuchusen1, 255 );
setEffAlphaKey( spep_0 -3 + 41, shuchusen1, 255 );
setEffAlphaKey( spep_0 -3 + 42, shuchusen1, 0 );

--流線
ryusen1 = entryEffectLife( spep_0 -3 + 42,  914, 46, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_0 -3 + 42, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 -3 + 88, ryusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 -3 + 42, ryusen1, 2.91, 1.68 );
setEffScaleKey( spep_0 -3 + 88, ryusen1, 2.91, 1.68 );

setEffRotateKey( spep_0 -3 + 42, ryusen1, 158.2 );
setEffRotateKey( spep_0 -3 + 88, ryusen1, 158.2 );

setEffAlphaKey( spep_0 -3 + 42, ryusen1, 255 );
setEffAlphaKey( spep_0 -3 + 88, ryusen1, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 90, 0, 0, 0, 0, 200 );  --黒　背景

--SE
playSe(spep_0 + 18,1007);--手を大きく振り上げる
playSe(spep_0 + 42,1117);--水晶を投げる

-- ** エフェクト等 ** --
entryFade(spep_0+82,4,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fad

--次の準備
spep_1=spep_0+90;

------------------------------------------------------
--クリスタルが当たる
------------------------------------------------------
--エフェクトの再生
hit=entryEffect(spep_1,SP_02x,0x100,-1,0,0,0);

setEffMoveKey(spep_1,hit,0,0,0);
setEffMoveKey(spep_1+78,hit,0,0,0);
setEffScaleKey(spep_1,hit,1.0,1.0);
setEffScaleKey(spep_1+78,hit,1.0,1.0);
setEffAlphaKey(spep_1,hit,255);
setEffAlphaKey(spep_1+72,hit,255);
setEffAlphaKey(spep_1+73,hit,255);
setEffAlphaKey(spep_1+74,hit,0);
setEffRotateKey(spep_1,hit,0);
setEffRotateKey(spep_1+78,hit,0);
--[[
--流線
ryusen2 = entryEffectLife( spep_1 + 0,  913, 32, 0x80, -1, 0,  -440.2, 186.8 );

setEffMoveKey( spep_1 + 0, ryusen2,  -425.2, 145.8 , 0 );
setEffMoveKey( spep_1 + 32, ryusen2,  -425.2, 145.8 , 0 );

setEffScaleKey( spep_1 + 0, ryusen2, 1.65, 1.45 );
setEffScaleKey( spep_1 + 32, ryusen2, 1.65, 1.45 );

setEffRotateKey( spep_1 + 0, ryusen2, -33.2 );
setEffRotateKey( spep_1 + 32, ryusen2, -33.2 );

setEffAlphaKey( spep_1 + 0, ryusen2, 255 );
setEffAlphaKey( spep_1 + 32, ryusen2, 255 );
]]
--SE
SE0=playSe(spep_1,1118);--飛んでいく

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 78, 0, 0, 0, 0, 200 );  --黒　背景
--------------------------------------
--回避 --既存のものの流用
--------------------------------------


if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1+20 ; --エンドフェイズのフレーム数を置き換える
    
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


--流線
ryusen3 = entryEffectLife( spep_1  + 33,  914, 24, 0x80, -1, 0, 0, 0);

setEffMoveKey( spep_1  + 33, ryusen3, 0, 0 , 0 );
setEffMoveKey( spep_1  + 56, ryusen3, 0, 0 , 0 );

setEffScaleKey( spep_1  + 33, ryusen3,  2.49, 1.44  );
setEffScaleKey( spep_1  + 56, ryusen3,  2.49, 1.44  );

setEffRotateKey( spep_1  + 33, ryusen3, 169.4 );
setEffRotateKey( spep_1  + 56, ryusen3, 169.4 );

setEffAlphaKey( spep_1  + 33, ryusen3, 255 );
setEffAlphaKey( spep_1  + 55, ryusen3, 255 );
setEffAlphaKey( spep_1  + 56, ryusen3, 0 );

--集中線
shuchusen2 = entryEffectLife( spep_1 + 56,  906, 17, 0x100, -1, 0, 245, 0 );

setEffMoveKey( spep_1 + 56, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_1 + 73, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_1 + 56, shuchusen2, 1.15, 1.15 );
setEffScaleKey( spep_1 + 73, shuchusen2, 1.15, 1.15 );

setEffRotateKey( spep_1 + 56, shuchusen2, 180 );
setEffRotateKey( spep_1 + 73, shuchusen2, 180 );

setEffAlphaKey( spep_1 + 56, shuchusen2, 255 );
setEffAlphaKey( spep_1 + 73, shuchusen2, 255 );

--敵の動き
setDisp( spep_1 -4 + 37, 1, 1);
setDisp( spep_1  + 74, 1, 0);

setShakeChara(spep_1 -4 + 37,1,5);

changeAnime( spep_1 -4 + 37, 1, 101);
changeAnime(  spep_1 -3 + 58, 1, 104);

setMoveKey( spep_1 -4 + 37, 1, 101, 18 , 0 );
--setMoveKey( spep_1 -3 + 38, 1, 96.2, 16.1 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 93.9, 15.2 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 92.4, 14.6 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 91.5, 14.2 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 91.1, 14.1 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 91, 14 , 0 );
setMoveKey( spep_1 -3 + 57, 1, 91, 14 , 0 );

--setMoveKey( spep_1 -3 + 52, 1, 91, 15.9 , 0 );

setMoveKey( spep_1 -3 + 58, 1, 91, 15.9 , 0 );
setMoveKey( spep_1 -3 + 60, 1, 94, 21.9 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 92, 12.9 , 0 );
setMoveKey( spep_1 -3 + 64, 1, 95.8, 20.5 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 91, 15.9 , 0 );
setMoveKey( spep_1 -3 + 68, 1, 94, 21.9 , 0 );
setMoveKey( spep_1 -3 + 70, 1, 92, 12.9 , 0 );
setMoveKey( spep_1 -3 + 72, 1, 95.8, 20.5 , 0 );
setMoveKey( spep_1 -3 + 74, 1, 91, 15.9 , 0 );
setMoveKey( spep_1  + 74, 1, 94, 21.9 , 0 );

setScaleKey( spep_1 -4 + 37, 1, 1.73, 1.73 );
setScaleKey( spep_1  + 74, 1, 1.73, 1.73 );

setRotateKey( spep_1 -4 + 37, 1, -1.5 );
setRotateKey( spep_1 -3 + 48, 1, -1.5 );
setRotateKey( spep_1 -3 + 57, 1, -1.5 );
setRotateKey( spep_1 -3 + 58, 1, -18.7 );
setRotateKey( spep_1  + 74, 1, -18.7 );


--SE
SE2=playSe(spep_1+32,1119);--当たる
stopSe(spep_1+64,SE2,10);--音を止める	
playSe(spep_1+58,62);--当たる	


--次の準備
spep_2=spep_1+74;
------------------------------------------------------
--クリスタルが砕ける
------------------------------------------------------
--エフェクトの再生
break_down=entryEffect(spep_2,SP_03,0x100,-1,0,0,0);

setEffMoveKey(spep_2,break_down,0,0,0);
setEffMoveKey(spep_2+58,break_down,0,0,0);
setEffScaleKey(spep_2,break_down,1.0,1.0);
setEffScaleKey(spep_2+58,break_down,1.0,1.0);
setEffAlphaKey(spep_2,break_down,255);
setEffAlphaKey(spep_2+56,break_down,255);
setEffAlphaKey(spep_2+57,break_down,255);
setEffAlphaKey(spep_2+58,break_down,0);
setEffRotateKey(spep_2,break_down,0);
setEffRotateKey(spep_2+58,break_down,0);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 68, 0, 0, 0, 0, 255 );  --黒　背景

--SE
SE1=playSe(spep_2,1115);--砕ける音
setSeVolume(spep_2,1115,150);
stopSe(spep_2,SE1,68);--音を止める

--次の準備
spep_3=spep_2+58;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_3 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_3 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_3 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_3 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_3 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_3 + 0, shuchusen, 0 );
setEffRotateKey( spep_3 + 90, shuchusen, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen, 255 );
setEffAlphaKey( spep_3 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_3 + 0, SE_05 );


entryFade( spep_3 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 94;

------------------------------------------------------
--回る
------------------------------------------------------
--エフェクトの再生
spin=entryEffect(spep_4,SP_04x,0x100,-1,0,0,0);

setEffMoveKey(spep_4,spin,0,0,0);
setEffMoveKey(spep_4+110,spin,0,0,0);
setEffScaleKey(spep_4,spin,1.0,1.0);
setEffScaleKey(spep_4+110,spin,1.0,1.0);
setEffAlphaKey(spep_4,spin,255);
setEffAlphaKey(spep_4+110,spin,255);
setEffRotateKey(spep_4,spin,0);
setEffRotateKey(spep_4+110,spin,0);

--***カットイン***
--speff = entryEffect(  spep_4 + 10 +14,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff2 = entryEffect(  spep_4 + 10 +14,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff2, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー --
ctgogo = entryEffectLife( spep_4 + 10 +26, 190006, 72, 0x100, -1, 0, 0, 540);    -- ゴゴゴゴ

setEffMoveKey(  spep_4 + 10 +26,  ctgogo,  0,  540);
setEffMoveKey(  spep_4 + 10 +98,  ctgogo,  0,  540);

setEffAlphaKey( spep_4 + 10  + 26, ctgogo, 255 );
setEffAlphaKey( spep_4 + 10  + 27, ctgogo, 255 );
setEffAlphaKey( spep_4 + 10  + 28, ctgogo, 255 );
setEffAlphaKey( spep_4 + 10  + 88, ctgogo, 255 );
setEffAlphaKey( spep_4 + 10  + 90, ctgogo, 255 );
setEffAlphaKey( spep_4 + 10  + 92, ctgogo, 191 );
setEffAlphaKey( spep_4 + 10  + 94, ctgogo, 128 );
setEffAlphaKey( spep_4 + 10  + 96, ctgogo, 64 );
setEffAlphaKey( spep_4 + 10  + 98, ctgogo, 0 );

setEffRotateKey(  spep_4 + 10 +26,  ctgogo,  0);
setEffRotateKey(  spep_4 + 10 +98,  ctgogo,  0);

setEffScaleKey(  spep_4 + 10 +26,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_4 + 10 +90,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_4 + 10 +98,  ctgogo, -1.07, 1.07 );

--集中線
shuchusen3 = entryEffectLife( spep_4 ,  906, 110, 0x100, -1, 0, 245, 0 );

setEffMoveKey( spep_4 , shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_4 + 110, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_4 , shuchusen3, 1.15, 1.15 );
setEffScaleKey( spep_4 + 110, shuchusen3, 1.15, 1.15 );

setEffRotateKey( spep_4 , shuchusen3, 180 );
setEffRotateKey( spep_4 + 110, shuchusen3, 180 );

setEffAlphaKey( spep_4 + 0, shuchusen3, 0 );
setEffAlphaKey( spep_4 +35, shuchusen3, 0 );
setEffAlphaKey( spep_4 +36, shuchusen3, 255 );
setEffAlphaKey( spep_4 + 110, shuchusen3, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 110, 0, 0, 0, 0, 200 );  --黒　背景

--SE
playSe(spep_4,1116);--砕ける音
setSeVolume(spep_4,1116,90);
playSe(spep_4+32,1018);--ごごご

-- ** エフェクト等 ** --
entryFade(spep_4+102,4,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fad

--次の準備
spep_5=spep_4+110;
------------------------------------------------------
--蹴り飛ばす
------------------------------------------------------
--エフェクトの再生
kick=entryEffect(spep_5,SP_05x,0x80,-1,0,0,0);

setEffMoveKey(spep_5, kick,0,0,0);
setEffMoveKey(spep_5+42, kick,0,0,0);
setEffScaleKey(spep_5, kick,1.0,1.0);
setEffScaleKey(spep_5+42, kick,1.0,1.0);
setEffAlphaKey(spep_5, kick,255);
setEffAlphaKey(spep_5+42, kick,255);
setEffRotateKey(spep_5, kick,0);
setEffRotateKey(spep_5+42, kick,0);

--敵の動き
setDisp( spep_5  + 0, 1, 1 );
setDisp( spep_5  + 40, 1, 0 );
changeAnime( spep_5  + 0, 1, 104 );
changeAnime( spep_5 -3 + 13, 1, 107 );

setMoveKey( spep_5  + 0, 1, -3.9, -6.8 , 0 );
--setMoveKey( spep_5 -3 + 2, 1, -3.9, -0.3 , 0 );
setMoveKey( spep_5 -3 + 4, 1, -3.9, 2.3 , 0 );
setMoveKey( spep_5 -3 + 6, 1, -3.9, 3.6 , 0 );
setMoveKey( spep_5 -3 + 8, 1, -3.9, 4 , 0 );
setMoveKey( spep_5 -3 + 11, 1, 0.8, 8.7 , 0 );
setMoveKey( spep_5 -3 + 12, 1, 0.8, 8.7 , 0 );
setMoveKey( spep_5 -3 + 13, 1, 27.5, -38.4 , 0 );
--setMoveKey( spep_5 -3 + 14, 1, 46.3, 10.5 , 0 );
setMoveKey( spep_5 -3 + 17, 1, 22.2, 10.1 , 0 );
setMoveKey( spep_5 -3 + 19, 1, 27.5, -38.4 , 0 );
--setMoveKey( spep_5 -3 + 20, 1, 287.9, -270.3 , 0 );
--setMoveKey( spep_5 -3 + 22, 1, 369.3, -438.2 , 0 );
--setMoveKey( spep_5 -3 + 25, 1, 459.1, -603.8 , 0 );
--setMoveKey( spep_5 -3 + 27, 1, 513.3, -625.4 , 0 );
--setMoveKey( spep_5 -3 + 28, 1, 579.2, -746.9 , 0 );
--setMoveKey( spep_5 -3 + 31, 1, 532.2, -786.9 , 0 );
--setMoveKey( spep_5 -3 + 32, 1, 535.5, -1035.1 , 0 );
--setMoveKey( spep_5 -3 + 34, 1, 556.1, -1071.9 , 0 );
--setMoveKey( spep_5 -3 + 36, 1, 569.5, -1095.7 , 0 );
--setMoveKey( spep_5 -3 + 38, 1, 576.5, -1108.4 , 0 );
setMoveKey( spep_5  + 40, 1, 577.2, -1111 , 0 );

a=1.6;
setScaleKey( spep_5  + 0, 1, 1.71, 1.71  );
setScaleKey( spep_5 -3 + 11, 1, 1.71, 1.71  );
setScaleKey( spep_5 -3 + 12, 1, 1.71, 1.71  );
setScaleKey( spep_5 -3 + 13, 1, 0.68 , 0.68 );
--setScaleKey( spep_5 -3 + 14, 1, 0.98 -a, 0.98 -a );
--setScaleKey( spep_5 -3 + 17, 1, 0.9 -a, 0.9 -a );
--setScaleKey( spep_5 -3 + 19, 1, 1.24 -a, 1.24 -a );
--setScaleKey( spep_5 -3 + 20, 1, 2.06 -a, 2.06 -a );
--setScaleKey( spep_5 -3 + 22, 1, 2.5 -a, 2.5 -a );
--setScaleKey( spep_5 -3 + 25, 1, 3.17 -a, 3.17 -a );
--setScaleKey( spep_5 -3 + 27, 1, 3.48 -a, 3.48 -a );
--setScaleKey( spep_5 -3 + 28, 1, 3.82 -a, 3.82 -a );
--setScaleKey( spep_5 -3 + 31, 1, 3.71 -a, 3.71 -a );
--setScaleKey( spep_5 -3 + 32, 1, 4.29 -a, 4.29 -a );
--setScaleKey( spep_5 -3 + 34, 1, 4.44 -a, 4.44 -a );
--setScaleKey( spep_5 -3 + 36, 1, 4.54 -a, 4.54 -a );
--setScaleKey( spep_5 -3 + 38, 1, 4.58 -a, 4.58 -a );
setScaleKey( spep_5  + 40, 1, 4.61 -a, 4.61 -a );

setRotateKey( spep_5  + 0, 1, 0 );
setRotateKey( spep_5 -3 + 6, 1, 0 );
setRotateKey( spep_5 -3 + 8, 1, 0.2 );
setRotateKey( spep_5 -3 + 11, 1, 0.2 );
setRotateKey( spep_5 -3 + 12, 1, 0.2 );
setRotateKey( spep_5 -3 + 13, 1, -76.5 );
--setRotateKey( spep_5 -3 + 14, 1, -36.5 );
--setRotateKey( spep_5 -3 + 17, 1, -36.5 );
--setRotateKey( spep_5 -3 + 19, 1, -76.5 );
--setRotateKey( spep_5 -3 + 20, 1, -31.5 );
--setRotateKey( spep_5 -3 + 22, 1, -28.5 );
--setRotateKey( spep_5 -3 + 25, 1, -26.4 );
--setRotateKey( spep_5 -3 + 27, 1, -64.8 );
--setRotateKey( spep_5 -3 + 28, 1, -23.4 );
--setRotateKey( spep_5 -3 + 31, 1, -22.4 );
--setRotateKey( spep_5 -3 + 32, 1, -61.8 );
--setRotateKey( spep_5 -3 + 34, 1, -61.3 );
--setRotateKey( spep_5 -3 + 36, 1, -61 );
--etRotateKey( spep_5 -3 + 38, 1, -60.8 );
setRotateKey( spep_5  + 40, 1, -76.5 );

--集中線
shuchusen4 = entryEffectLife( spep_5 + 0,  906, 40, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_5 + 0, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_5 + 40, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, shuchusen4, 1.15, 1.15 );
setEffScaleKey( spep_5 + 40, shuchusen4, 1.15, 1.15 );

setEffRotateKey( spep_5 + 0, shuchusen4, 180 );
setEffRotateKey( spep_5 + 40, shuchusen4, 180 );

setEffAlphaKey( spep_5 + 0, shuchusen4, 255 );
setEffAlphaKey( spep_5 + 40, shuchusen4, 255 );

--SE
playSe(spep_5+8,1009);--ごごご

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0,42, 0, 0, 0, 0, 200 );  --黒　背景

-- ** エフェクト等 ** --
entryFade(spep_5+34,4,10,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fad

--次の準備
spep_6=spep_5+42;

------------------------------------------------------
-- 敵吹っ飛びシーン(100F)
------------------------------------------------------

--[[
-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_6 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_6 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_6 + 100, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( spep_6 + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_6 + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_6 + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_6 + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_6 + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_6 + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_6 + 100, bakuhatsu, 0.9, 0.9 );

setEffRotateKey( spep_6 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_6 + 100, bakuhatsu, 0 );

setEffAlphaKey( spep_6 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_6 + 100, bakuhatsu, 255 );
]]--
-- ** ひび割れ ** --
hibiware = entryEffect( spep_6 + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_6 + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( spep_6 + 100, hibiware, 70, -60, 0 ); 

setEffScaleKey( spep_6 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_6 + 100, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_6 + 2, hibiware, 0 );
setEffRotateKey( spep_6 + 100, hibiware, 0 );

setEffAlphaKey( spep_6 + 2, hibiware, 0 );
setEffAlphaKey( spep_6 + 13, hibiware, 0 );
setEffAlphaKey( spep_6 + 14, hibiware, 255 );
setEffAlphaKey( spep_6 + 100, hibiware, 255 );

-- ** 集中線 ** --
shuchusen_g = entryEffectLife( spep_6 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_6 + 14, shuchusen_g, 32, 25 );

setEffMoveKey( spep_6 + 14, shuchusen_g, 0, 0 , 0 );
setEffMoveKey( spep_6 + 46, shuchusen_g, 0, 0 , 0 );

setEffScaleKey( spep_6 + 14, shuchusen_g, 1, 1 );
setEffScaleKey( spep_6 + 46, shuchusen_g, 1, 1 );

setEffRotateKey( spep_6 + 14, shuchusen_g, 0 );
setEffRotateKey( spep_6 + 46, shuchusen_g, 0 );

setEffAlphaKey( spep_6 + 14, shuchusen_g, 255 );
setEffAlphaKey( spep_6 + 28, shuchusen_g, 255 );
setEffAlphaKey( spep_6 + 30, shuchusen_g, 252 );
setEffAlphaKey( spep_6 + 32, shuchusen_g, 242 );
setEffAlphaKey( spep_6 + 34, shuchusen_g, 227 );
setEffAlphaKey( spep_6 + 36, shuchusen_g, 205 );
setEffAlphaKey( spep_6 + 38, shuchusen_g, 176 );
setEffAlphaKey( spep_6 + 40, shuchusen_g, 142 );
setEffAlphaKey( spep_6 + 42, shuchusen_g, 101 );
setEffAlphaKey( spep_6 + 44, shuchusen_g, 54 );
setEffAlphaKey( spep_6 + 46, shuchusen_g, 0 );

kuroshuchusen_g = entryEffectLife( spep_6 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_6 + 14, kuroshuchusen_g, 0, 0 , 0 );
setEffMoveKey( spep_6 + 100, kuroshuchusen_g, 0, 0 , 0 );

setEffScaleKey( spep_6 + 14, kuroshuchusen_g, 1, 1 );
setEffScaleKey( spep_6 + 100, kuroshuchusen_g, 1, 1 );

setEffRotateKey( spep_6 + 14, kuroshuchusen_g, 0 );
setEffRotateKey( spep_6 + 100, kuroshuchusen_g, 0 );

setEffAlphaKey( spep_6 + 14, kuroshuchusen_g, 255 );
setEffAlphaKey( spep_6 + 100, kuroshuchusen_g, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_6 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_6 + 14, ctga, 14, 20 );

setEffMoveKey( spep_6 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_6 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_6 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_6 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_6 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_6 + 14, ctga, -10.9 );
setEffRotateKey( spep_6 + 15, ctga, -10.9 );
setEffRotateKey( spep_6 + 16, ctga, -14.9 );
setEffRotateKey( spep_6 + 17, ctga, -14.9 );
setEffRotateKey( spep_6 + 18, ctga, -10.9 );
setEffRotateKey( spep_6 + 19, ctga, -10.9 );
setEffRotateKey( spep_6 + 20, ctga, -14.9 );
setEffRotateKey( spep_6 + 21, ctga, -14.9 );
setEffRotateKey( spep_6 + 22, ctga, -10.9 );
setEffRotateKey( spep_6 + 23, ctga, -10.9 );
setEffRotateKey( spep_6 + 24, ctga, -14.9 );
setEffRotateKey( spep_6 + 25, ctga, -14.9 );
setEffRotateKey( spep_6 + 26, ctga, -10.9 );
setEffRotateKey( spep_6 + 27, ctga, -10.9 );
setEffRotateKey( spep_6 + 28, ctga, -14.9 );
setEffRotateKey( spep_6 + 100, ctga, -14.9 );

setEffAlphaKey( spep_6 + 14, ctga, 255 );
setEffAlphaKey( spep_6 + 100, ctga, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_6 + 0, 1, 1 );
changeAnime( spep_6 + 0, 1, 107 );  --ダメージ 手前

setMoveKey( spep_6 + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_6 + 1, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_6 + 2, 1, 31, -3.9 , 0 );
setMoveKey( spep_6 + 3, 1, 31, -3.9 , 0 );
setMoveKey( spep_6 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_6 + 5, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_6 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_6 + 7, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_6 + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_6 + 9, 1, 15, -65.4 , 0 );
setMoveKey( spep_6 + 10, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_6 + 11, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_6 + 12, 1, -45.3, -142.1 , 0 );  --画面にぶつかる
setMoveKey( spep_6 + 100, 1, -45.3, -142.1 , 0 );

setScaleKey( spep_6 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_6 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_6 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_6 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_6 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_6 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_6 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_6 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_6 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_6 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_6 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_6 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_6 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_6 + 110, 1, 1.6, 1.6 );


setRotateKey( spep_6 + 0, 1, -40 );
setRotateKey( spep_6 + 1, 1, -40 );
setRotateKey( spep_6 + 2, 1, 80 );
setRotateKey( spep_6 + 3, 1, 80 );
setRotateKey( spep_6 + 4, 1, 200 );
setRotateKey( spep_6 + 5, 1, 200 );
setRotateKey( spep_6 + 6, 1, 360 );
setRotateKey( spep_6 + 7, 1, 360 );
setRotateKey( spep_6 + 8, 1, 558 );
setRotateKey( spep_6 + 9, 1, 558 );
setRotateKey( spep_6 + 10, 1, 425 );
setRotateKey( spep_6 + 11, 1, 425 );
setRotateKey( spep_6 + 12, 1, -40 );
setRotateKey( spep_6 + 100, 1, -40 );

-- ** 音 ** --
--playSe( spep_6 + 0, 1011 );  --爆発音
playSe( spep_6 + 14, SE_11 );  --割れる音

-- ** ダメージ表示 ** --
dealDamage( spep_6 + 10 );
entryFade( spep_6 + 92, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_6 + 100 );



end
