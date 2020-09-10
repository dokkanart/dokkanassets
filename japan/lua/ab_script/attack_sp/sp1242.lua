--1015600 トランクス(青年期)(未来)&マイ(未来)_決死の反攻
--sp_effect_a8_00033

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
SP_01=	152571	;--	格闘１　手前
SP_02=	152572	;--	格闘１　奥
SP_03=	152573	;--	格闘２　手前
SP_04=	152574	;--	格闘２　奥
SP_05=	152575	;--	気溜め
SP_06=	152576	;--	ダメージ　手前
SP_07=	152577	;--	ダメージ　奥
SP_08=	152578	;--	ダメージ　奥

--敵
SP_01x=	152579	;--	格闘１　手前
SP_02x=	152580	;--	格闘１　奥
SP_03x=	152573	;--	格闘２　手前
SP_04x=	152574	;--	格闘２　奥
SP_05x=	152581	;--	気溜め
SP_06x=	152582	;--	ダメージ　手前
SP_07x=	152577	;--	ダメージ　奥
SP_08x=	152583	;--	ダメージ　奥
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
--カットイン
------------------------------------------------------

spep_0=0;


--エフェクト
kattoin=entryEffectLife(spep_0,SP_01,100,0x100,-1,0,0,0);

setEffMoveKey( spep_0 + 0, kattoin, 0, 0 , 0 );
setEffMoveKey( spep_0 + 100, kattoin, 0, 0 , 0 );
setEffScaleKey(spep_0,kattoin,1.0,1.0);
setEffScaleKey(spep_0+100,kattoin,1.0,1.0);
setEffRotateKey(spep_0,kattoin,0);
setEffRotateKey(spep_0+100,kattoin,0);
setEffAlphaKey(spep_0,kattoin,255);
setEffAlphaKey(spep_0+100,kattoin,255);

--集中線
shuchusen1 = entryEffectLife( spep_0 + 0,  906, 100, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 100, shuchusen1, 0, 0 , 0);

setEffScaleKey( spep_0 + 0, shuchusen1, 1.0, 1.0 );
setEffScaleKey( spep_0 + 100, shuchusen1, 1.0, 1.0 );

setEffRotateKey( spep_0 + 0, shuchusen1, 180 );
setEffRotateKey( spep_0 + 100, shuchusen1, 180 );

setEffAlphaKey(spep_0,shuchusen1,255);
setEffAlphaKey(spep_0+100,shuchusen1,255);

--顔カットイン
speff=entryEffect(spep_0+10,1504,0x100,-1,0,0,0);  --カットイン(顔)
setEffReplaceTexture(speff,3,2);  --カットイン差し替え
speff1=entryEffect(spep_0+10,1505,0x100,-1,0,0,0);  --カットイン(セリフ)
setEffReplaceTexture(speff1,4,5);  --セリフカットイン差し替え

--ゴゴゴ
ctgogo=entryEffectLife(spep_0+22,190006,78,0x100,-1,150,520);--ゴゴゴ

setEffMoveKey(spep_0+22,ctgogo,150,520,0);
setEffMoveKey(spep_0+100,ctgogo,150,520,0);

setEffScaleKey(spep_0+22, ctgogo, 0.7, 0.7);
setEffScaleKey(spep_0+100, ctgogo, 0.7, 0.7);

setEffAlphaKey( spep_0 +22, ctgogo, 0 );
setEffAlphaKey( spep_0 + 23, ctgogo, 255 );
setEffAlphaKey( spep_0 + 24, ctgogo, 255 );
setEffAlphaKey( spep_0 + 100, ctgogo, 255 );

setEffRotateKey(spep_0+22,ctgogo,0);
setEffRotateKey(spep_0+100,ctgogo,0);

--黒背景
entryFadeBg(spep_0, 0, 100, 0, 0, 0, 0, 200);  -- 黒　背

-- ** エフェクト等 ** --
entryFade(spep_0,0, 2, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- whit_fe fade
entryFade(spep_0+92,4, 10, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- whit_fe fade

--SE
playSe( spep_0+22, SE_04); --ゴゴゴ

--次の準備
spep_1=spep_0+100;
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
entryFade(spep_1+84,4,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_2=spep_1+94;

--------------------------------------
--閃光弾をうつ
--------------------------------------
--エフェクト
senkou=entryEffectLife(spep_2,SP_02,90,0x100,-1,0,0,0);

setEffMoveKey( spep_2 + 0, senkou, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, senkou, 0, 0 , 0 );
setEffScaleKey(spep_2,senkou,1.0,1.0);
setEffScaleKey(spep_2+90,senkou,1.0,1.0);
setEffRotateKey(spep_2,senkou,0);
setEffRotateKey(spep_2+90,senkou,0);
setEffAlphaKey(spep_2,senkou,255);
setEffAlphaKey(spep_2+90,senkou,255);

--流線
ryuusen1=entryEffectLife(spep_2,914,90,0x80,-1,0,0,0);

setEffMoveKey( spep_2 + 0, ryuusen1, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, ryuusen1, 0, 0 , 0 );
setEffScaleKey(spep_2,ryuusen1,1.0,1.0);
setEffScaleKey(spep_2+90,ryuusen1,1.0,1.0);
setEffRotateKey(spep_2,ryuusen1,0);
setEffRotateKey(spep_2+90,ryuusen1,0);
setEffAlphaKey(spep_2,ryuusen1,255);
setEffAlphaKey(spep_2+90,ryuusen1,255);

--集中線
shuchusen2 = entryEffectLife( spep_2 + 0,  906, 46, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_2 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 46, shuchusen2, 0, 0 , 0);

setEffScaleKey( spep_2 + 0, shuchusen2, 1.5, 1.5 );
setEffScaleKey( spep_2 + 36, shuchusen2, 1.5, 1.5 );
setEffScaleKey( spep_2 + 38, shuchusen2, 1.54, 1.54 );
setEffScaleKey( spep_2 + 40, shuchusen2, 1.66, 1.66 );
setEffScaleKey( spep_2 + 43, shuchusen2, 1.86, 1.86 );
setEffScaleKey( spep_2 + 44, shuchusen2, 2.14, 2.14 );
setEffScaleKey( spep_2 + 46, shuchusen2, 2.5, 2.5 );

setEffRotateKey(spep_2,shuchusen2,0);
setEffRotateKey(spep_2+46,shuchusen2,0);

setEffAlphaKey(spep_2,shuchusen2,255);
setEffAlphaKey(spep_2+46,shuchusen2,255);

--黒背景
entryFadeBg(spep_2, 0, 90, 0, 0, 0, 0, 200);  -- 黒　背

--SE
playSe(  spep_2+12,  1008);  --閃光弾発射

-- ** エフェクト等 ** --
entryFade(spep_2+78,4, 10, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- whit_fe fade

--次の準備
spep_3=spep_2+90;
--------------------------------------
--目潰し
--------------------------------------
--エフェクト
hit1=entryEffectLife(spep_3,SP_03,80,0x100,-1,0,0,0);

setEffMoveKey( spep_3 + 0, hit1, 0, 0 , 0 );
setEffMoveKey( spep_3 + 80, hit1, 0, 0 , 0 );
setEffScaleKey(spep_3,hit1,1.0,1.0);
setEffScaleKey(spep_3+80,hit1,1.0,1.0);
setEffRotateKey(spep_3,hit1,0);
setEffRotateKey(spep_3+80,hit1,0);
setEffAlphaKey(spep_3,hit1,255);
setEffAlphaKey(spep_3+80,hit1,255);

--流線
ryuusen2=entryEffectLife(spep_3,921,80,0x80,-1,0,0,0);

setEffMoveKey( spep_3 + 0, ryuusen2, 0, 0 , 0 );
setEffMoveKey( spep_3 + 80, ryuusen2, 0, 0 , 0 );
setEffScaleKey(spep_3,ryuusen2,1.0,1.0);
setEffScaleKey(spep_3+80,ryuusen2,1.0,1.0);
setEffRotateKey(spep_3,ryuusen2,0);
setEffRotateKey(spep_3+80,ryuusen2,0);
setEffAlphaKey(spep_3,ryuusen2,255);
setEffAlphaKey(spep_3+80,ryuusen2,255);

--敵の動き
setDisp(spep_3,1,1);
setDisp(spep_3+78,1,0);

changeAnime( spep_3 + 0, 1, 100 );
changeAnime( spep_3-3 + 32, 1, 104 );

setMoveKey( spep_3 + 0, 1, 240.3, -0.3 , 0 );
setMoveKey( spep_3 + 2, 1, 246.9, 9 , 0 );
setMoveKey( spep_3-3 + 4, 1, 235.6, 2.4 , 0 );
setMoveKey( spep_3-3 + 6, 1, 240.3, 7.7 , 0 );
setMoveKey( spep_3-3 + 8, 1, 228.9, 1 , 0 );
setMoveKey( spep_3-3 + 10, 1, 233.6, 6.4 , 0 );
setMoveKey( spep_3-3 + 12, 1, 222.3, -0.3 , 0 );
setMoveKey( spep_3-3 + 14, 1, 226.9, 5 , 0 );
setMoveKey( spep_3-3 + 16, 1, 215.6, -1.6 , 0 );
setMoveKey( spep_3-3 + 18, 1, 220.3, 3.7 , 0 );
setMoveKey( spep_3-3 + 20, 1, 208.9, -3 , 0 );
setMoveKey( spep_3-3 + 22, 1, 213.6, 2.4 , 0 );

setScaleKey( spep_3 + 0, 1, 0.59, 0.59 );
setScaleKey( spep_3 + 2, 1, 0.63, 0.63 );
setScaleKey( spep_3-3 + 4, 1, 0.68, 0.68 );
setScaleKey( spep_3-3 + 6, 1, 0.73, 0.73 );
setScaleKey( spep_3-3 + 8, 1, 0.78, 0.78 );
setScaleKey( spep_3-3 + 10, 1, 0.82, 0.82 );
setScaleKey( spep_3-3 + 12, 1, 0.87, 0.87 );
setScaleKey( spep_3-3 + 14, 1, 0.92, 0.92 );
setScaleKey( spep_3-3 + 16, 1, 0.97, 0.97 );
setScaleKey( spep_3-3 + 18, 1, 1.01, 1.01 );
setScaleKey( spep_3-3 + 20, 1, 1.06, 1.06 );
setScaleKey( spep_3-3 + 22, 1, 1.11, 1.11 );


setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 + 20, 1, 0 );

--SE
playSe(  spep_3,  8);  --敵に向かう

--黒背景
entryFadeBg(spep_3, 0, 80, 0, 0, 0, 0, 200);  -- 黒　背

--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3+20 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    
    pauseAll( SP_dodge, 67);
    
    --キャラクターの固定
    setMoveKey(SP_dodge, 1,213.6, 2.4 , 0  );
    setScaleKey(SP_dodge , 1, 1.11, 1.11);
    setRotateKey(SP_dodge,   1, 0 );
    
    --キャラクターの固定
    setMoveKey(SP_dodge+8, 1,213.6, 2.4 , 0  );
    setScaleKey(SP_dodge+8 , 1, 1.11, 1.11);
    setRotateKey(SP_dodge+8,   1, 0 );
    
    
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
    setMoveKey(SP_dodge+9, 1, 213.6, 2.4, 0);
    setMoveKey(SP_dodge+10, 1, 213.6, 2.4, 0);
    
    
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

setMoveKey( spep_3-3 + 24, 1, 202.3, -4.3 , 0 );
setMoveKey( spep_3-3 + 26, 1, 206.9, 1 , 0 );
setMoveKey( spep_3-3 + 28, 1, 195.6, -5.6 , 0 );
setMoveKey( spep_3-3 + 31, 1, 200.3, -0.3 , 0 );
setMoveKey( spep_3-3 + 32, 1, 152.2, -6.3 , 0 );
setMoveKey( spep_3-3 + 34, 1, 162.3, -0.3 , 0 );
setMoveKey( spep_3-3 + 36, 1, 156.5, -6.3 , 0 );
setMoveKey( spep_3-3 + 38, 1, 166.7, -0.3 , 0 );
setMoveKey( spep_3-3 + 40, 1, 160.9, -6.3 , 0 );
setMoveKey( spep_3-3 + 42, 1, 171, -0.3 , 0 );
setMoveKey( spep_3-3 + 44, 1, 165.2, -6.3 , 0 );
setMoveKey( spep_3-3 + 46, 1, 175.4, -0.3 , 0 );
setMoveKey( spep_3-3 + 48, 1, 169.6, -6.3 , 0 );
setMoveKey( spep_3-3 + 50, 1, 179.7, -0.3 , 0 );
setMoveKey( spep_3-3 + 52, 1, 173.9, -6.3 , 0 );
setMoveKey( spep_3-3 + 54, 1, 184.1, -0.3 , 0 );
setMoveKey( spep_3-3 + 56, 1, 178.3, -6.3 , 0 );
setMoveKey( spep_3-3 + 58, 1, 188.4, -0.3 , 0 );
setMoveKey( spep_3-3 + 60, 1, 182.6, -6.3 , 0 );
setMoveKey( spep_3-3 + 62, 1, 192.8, -0.3 , 0 );
setMoveKey( spep_3-3 + 64, 1, 187, -6.3 , 0 );
setMoveKey( spep_3-3 + 66, 1, 197.1, -0.3 , 0 );
setMoveKey( spep_3-3 + 68, 1, 191.3, -6.3 , 0 );
setMoveKey( spep_3-3 + 70, 1, 201.5, -0.3 , 0 );
setMoveKey( spep_3-3 + 72, 1, 195.7, -6.3 , 0 );
setMoveKey( spep_3-3 + 74, 1, 205.8, -0.3 , 0 );
setMoveKey( spep_3-3 + 76, 1, 200, -6.3 , 0 );
setMoveKey( spep_3-3 + 78, 1, 210.2, -0.3 , 0 );

setScaleKey( spep_3-3 + 24, 1, 1.16, 1.16 );
setScaleKey( spep_3-3 + 26, 1, 1.21, 1.21 );
setScaleKey( spep_3-3 + 28, 1, 1.25, 1.25 );
setScaleKey( spep_3-3 + 31, 1, 1.3, 1.3 );
setScaleKey( spep_3-3 + 32, 1, 1.3, 1.3 );
setScaleKey( spep_3-3 + 34, 1, 1.29, 1.29 );
setScaleKey( spep_3-3 + 36, 1, 1.27, 1.27 );
setScaleKey( spep_3-3 + 38, 1, 1.26, 1.26 );
setScaleKey( spep_3-3 + 40, 1, 1.24, 1.24 );
setScaleKey( spep_3-3 + 42, 1, 1.23, 1.23 );
setScaleKey( spep_3-3 + 44, 1, 1.22, 1.22 );
setScaleKey( spep_3-3 + 46, 1, 1.2, 1.2 );
setScaleKey( spep_3-3 + 48, 1, 1.19, 1.19 );
setScaleKey( spep_3-3 + 50, 1, 1.17, 1.17 );
setScaleKey( spep_3-3 + 52, 1, 1.16, 1.16 );
setScaleKey( spep_3-3 + 54, 1, 1.15, 1.15 );
setScaleKey( spep_3-3 + 56, 1, 1.13, 1.13 );
setScaleKey( spep_3-3 + 58, 1, 1.12, 1.12 );
setScaleKey( spep_3-3 + 60, 1, 1.1, 1.1 );
setScaleKey( spep_3-3 + 62, 1, 1.09, 1.09 );
setScaleKey( spep_3-3 + 64, 1, 1.08, 1.08 );
setScaleKey( spep_3-3 + 66, 1, 1.06, 1.06 );
setScaleKey( spep_3-3 + 68, 1, 1.05, 1.05 );
setScaleKey( spep_3-3 + 70, 1, 1.03, 1.03 );
setScaleKey( spep_3-3 + 72, 1, 1.02, 1.02 );
setScaleKey( spep_3-3 + 74, 1, 1, 1 );
setScaleKey( spep_3-3 + 76, 1, 0.99, 0.99 );
setScaleKey( spep_3-3 + 78, 1, 0.98, 0.98 );

setRotateKey( spep_3 + 78, 1, 0 );

--文字エントリー
ctka = entryEffectLife( spep_3 + 28,  10004, 48, 0x100, -1, 0, 72.3, 79.5 );--カッ

setEffShake(  spep_3+28,  ctka,  48,  10);  --揺れ
setEffMoveKey( spep_3 + 28, ctka, 72.3, 79.5 , 0 );
setEffMoveKey( spep_3 + 30, ctka, 80.7, 107.9 , 0 );
setEffMoveKey( spep_3 + 32, ctka, 89, 136.4 , 0 );
setEffMoveKey( spep_3 + 34, ctka, 97.3, 164.9 , 0 );
setEffMoveKey( spep_3 + 36, ctka, 105.7, 193.4 , 0 );
setEffMoveKey( spep_3 + 38, ctka, 114, 221.9 , 0 );
setEffMoveKey( spep_3 + 60, ctka, 114, 221.9 , 0 );
setEffMoveKey( spep_3 + 62, ctka, 117.6, 234.2 , 0 );
setEffMoveKey( spep_3 + 64, ctka, 121.2, 246.5 , 0 );
setEffMoveKey( spep_3 + 66, ctka, 124.8, 258.8 , 0 );
setEffMoveKey( spep_3 + 68, ctka, 128.4, 271.2 , 0 );
setEffMoveKey( spep_3 + 70, ctka, 132, 283.4 , 0 );
setEffMoveKey( spep_3 + 72, ctka, 135.6, 295.8 , 0 );
setEffMoveKey( spep_3 + 74, ctka, 139.2, 308 , 0 );
setEffMoveKey( spep_3 + 76, ctka, 142.8, 320.4 , 0 );

setEffScaleKey( spep_3 + 28, ctka, 0.37, 0.37 );
setEffScaleKey( spep_3 + 30, ctka, 0.78, 0.78 );
setEffScaleKey( spep_3 + 32, ctka, 1.13, 1.13 );
setEffScaleKey( spep_3 + 34, ctka, 1.58, 1.58 );
setEffScaleKey( spep_3 + 36, ctka, 1.9, 1.9 );
setEffScaleKey( spep_3 + 38, ctka, 2.37, 2.37 );
setEffScaleKey( spep_3 + 72, ctka, 3.27, 3.27 );
setEffScaleKey( spep_3 + 74, ctka, 3.57, 3.57 );
setEffScaleKey( spep_3 + 76, ctka, 3.74, 3.74 );

setEffRotateKey( spep_3 + 28, ctka, 14.3 );
setEffRotateKey( spep_3 + 30, ctka, 14.5 );
setEffRotateKey( spep_3 + 76, ctka, 14.5 );

setEffAlphaKey( spep_3 + 28, ctka, 0 );
setEffAlphaKey( spep_3 + 29, ctka, 255 );
setEffAlphaKey( spep_3 + 30, ctka, 255 );
setEffAlphaKey( spep_3 + 60, ctka, 255 );
setEffAlphaKey( spep_3 + 62, ctka, 223 );
setEffAlphaKey( spep_3 + 64, ctka, 191 );
setEffAlphaKey( spep_3 + 66, ctka, 159 );
setEffAlphaKey( spep_3 + 68, ctka, 128 );
setEffAlphaKey( spep_3 + 70, ctka, 96 );
setEffAlphaKey( spep_3 + 72, ctka, 64 );
setEffAlphaKey( spep_3 + 74, ctka, 32 );
setEffAlphaKey( spep_3 + 76, ctka, 0 );

--SE
playSe(  spep_3+30,  1042);  --光る

-- ** エフェクト等 ** --
entryFade(spep_3+72,4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- whit_fe fade

--次の準備
spep_4=spep_3+80;
--------------------------------------
--突進
--------------------------------------
--エフェクト
rush=entryEffectLife(spep_4,SP_04,80,0x100,-1,0,0,0);

setEffMoveKey( spep_4 + 0, rush, 0, 0 , 0 );
setEffMoveKey( spep_4 + 80, rush, 0, 0 , 0 );
setEffScaleKey(spep_4,rush,1.0,1.0);
setEffScaleKey(spep_4+80,rush,1.0,1.0);
setEffRotateKey(spep_4,rush,0);
setEffRotateKey(spep_4+80,rush,0);
setEffAlphaKey(spep_4,rush,255);
setEffAlphaKey(spep_4+80,rush,255);

--集中線
shuchusen3 = entryEffectLife( spep_4 + 0,  906, 80, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_4 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_4 + 80, shuchusen3, 0, 0 , 0);

setEffScaleKey( spep_4 + 0, shuchusen3, 1.0, 1.0 );
setEffScaleKey( spep_4 + 80, shuchusen3, 1.0, 1.0 );

setEffRotateKey( spep_4 + 0, shuchusen3, 180 );
setEffRotateKey( spep_4 + 80, shuchusen3, 180 );

setEffAlphaKey(spep_4,shuchusen3,255);
setEffAlphaKey(spep_4+80,shuchusen3,255);

--文字エントリー
ctzuo = entryEffectLife( spep_4 + 4,  10012, 70, 0x100, -1, 0, 77.2, 224.6 );--ズオッ

setEffShake(  spep_4+4,  ctzuo,  68,  20);  --揺れ

setEffMoveKey( spep_4 + 4, ctzuo, 77.2, 224.6 , 0 );
setEffMoveKey( spep_4 + 8, ctzuo, 93.4, 232.8 , 0 );
setEffMoveKey( spep_4 + 10, ctzuo, 103.7, 249 , 0 );
setEffMoveKey( spep_4 + 12, ctzuo, 121.1, 255.8 , 0 );
setEffMoveKey( spep_4 + 14, ctzuo, 130.5, 273.3 , 0 );
setEffMoveKey( spep_4 + 16, ctzuo, 148.7, 278.8 , 0 );
setEffMoveKey( spep_4 + 18, ctzuo, 157.2, 297.6 , 0 );
setEffMoveKey( spep_4 + 20, ctzuo, 162.6, 290.2 , 0 );
setEffMoveKey( spep_4 + 64, ctzuo, 162.6, 290.2 , 0 );
setEffMoveKey( spep_4 + 66, ctzuo, 174.7, 313.3 , 0 );
setEffMoveKey( spep_4 + 68, ctzuo, 198.5, 320.2 , 0 );
setEffMoveKey( spep_4 + 70, ctzuo, 209.5, 344.8 , 0 );
setEffMoveKey( spep_4 + 72, ctzuo, 234.5, 350.2 , 0 );
setEffMoveKey( spep_4 + 74, ctzuo, 252.6, 365.1 , 0 );

setEffScaleKey( spep_4 + 4, ctzuo, 1, 1 );
setEffScaleKey( spep_4 + 8, ctzuo, 1.17, 1.17 );
setEffScaleKey( spep_4 + 10, ctzuo, 1.34, 1.34 );
setEffScaleKey( spep_4 + 12, ctzuo, 1.51, 1.51 );
setEffScaleKey( spep_4 + 14, ctzuo, 1.68, 1.68 );
setEffScaleKey( spep_4 + 16, ctzuo, 1.85, 1.85 );
setEffScaleKey( spep_4 + 18, ctzuo, 2.02, 2.02 );
setEffScaleKey( spep_4 + 64, ctzuo, 2.02, 2.02 );
setEffScaleKey( spep_4 + 66, ctzuo, 2.24, 2.24 );
setEffScaleKey( spep_4 + 68, ctzuo, 2.46, 2.46 );
setEffScaleKey( spep_4 + 70, ctzuo, 2.68, 2.68 );
setEffScaleKey( spep_4 + 72, ctzuo, 2.9, 2.9 );
setEffScaleKey( spep_4 + 74, ctzuo, 3.13, 3.13 );

setEffRotateKey( spep_4 + 4, ctzuo, -9.3 );
setEffRotateKey( spep_4 + 8, ctzuo, -9.5 );
setEffRotateKey( spep_4 + 74, ctzuo, -9.5 );

setEffAlphaKey( spep_4 + 4, ctzuo, 255 );
setEffAlphaKey( spep_4 + 64, ctzuo, 255 );
setEffAlphaKey( spep_4 + 66, ctzuo, 204 );
setEffAlphaKey( spep_4 + 68, ctzuo, 153 );
setEffAlphaKey( spep_4 + 70, ctzuo, 102 );
setEffAlphaKey( spep_4 + 72, ctzuo, 51 );
setEffAlphaKey( spep_4 + 74, ctzuo, 0 );

--黒背景
entryFadeBg(spep_4, 0, 80, 0, 0, 0, 0, 200);  -- 黒　背

--SE
playSe(  spep_4,  9);  --突進

-- ** エフェクト等 ** --
entryFade(spep_4+72,4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- whit_fe fade

--次の準備
spep_5=spep_4+80;

--------------------------------------
--ラッシュ
--------------------------------------
--エフェクト
attack=entryEffectLife(spep_5,SP_05,196,0x100,-1,0,0,0);

setEffMoveKey( spep_5 + 0, attack, 0, 0 , 0 );
setEffMoveKey( spep_5 + 196, attack, 0, 0 , 0 );
setEffScaleKey(spep_5,attack,1.0,1.0);
setEffScaleKey(spep_5+196,attack,1.0,1.0);
setEffRotateKey(spep_5,attack,0);
setEffRotateKey(spep_5+196,attack,0);
setEffAlphaKey(spep_5,attack,255);
setEffAlphaKey(spep_5+196,attack,255);

--流線(横)
ryusen3 = entryEffectLife( spep_5 + 0,  914, 144, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_5 + 0, ryusen3, 0, 0 , 0 );
setEffMoveKey( spep_5 + 144, ryusen3, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, ryusen3, 1, 1 );
setEffScaleKey( spep_5 + 60, ryusen3, 1, 1 );
setEffScaleKey( spep_5 + 102, ryusen3, 2.5, 1.25 );
setEffScaleKey( spep_5 + 144, ryusen3, 2.5, 1.25 );

setEffRotateKey( spep_5 + 0, ryusen3, 0 );
setEffRotateKey( spep_5 + 60, ryusen3, 0 );
setEffRotateKey( spep_5 + 98, ryusen3, 161 );
setEffRotateKey( spep_5 + 144, ryusen3, 161 );


setEffAlphaKey( spep_5 + 0, ryusen3, 255 );
setEffAlphaKey( spep_5 + 24, ryusen3, 255 );
setEffAlphaKey( spep_5 + 25, ryusen3, 0 );
setEffAlphaKey( spep_5 + 26, ryusen3, 0 );
--setEffAlphaKey( spep_5 + 100, ryusen3, 0 );
setEffAlphaKey( spep_5 + 98, ryusen3, 0 );
setEffAlphaKey( spep_5 + 99, ryusen3, 255 );
setEffAlphaKey( spep_5 + 100, ryusen3, 255 );

setEffAlphaKey( spep_5 + 142, ryusen3, 255 );
setEffAlphaKey( spep_5 + 143, ryusen3, 0 );
setEffAlphaKey( spep_5 + 144, ryusen3, 0 );

--集中線
shuchusen4 = entryEffectLife( spep_5 + 24,  906, 172, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_5 + 24, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_5 + 196, shuchusen4, 0, 0 , 0);

setEffScaleKey( spep_5 + 24, shuchusen4, 1.0, 1.0 );
setEffScaleKey( spep_5 + 196, shuchusen4, 1.0, 1.0 );

setEffRotateKey( spep_5 + 24, shuchusen4, 180 );
setEffRotateKey( spep_5 + 196, shuchusen4, 180 );

setEffAlphaKey(spep_5+24,shuchusen4,0);
setEffAlphaKey(spep_5+25,shuchusen4,255);
setEffAlphaKey(spep_5+26,shuchusen4,255);
setEffAlphaKey(spep_5+40,shuchusen4,255);
setEffAlphaKey(spep_5+42,shuchusen4,255);
setEffAlphaKey(spep_5+43,shuchusen4,0);
setEffAlphaKey(spep_5+44,shuchusen4,0);
setEffAlphaKey(spep_5+45,shuchusen4,0);
setEffAlphaKey(spep_5+46,shuchusen4,255);
setEffAlphaKey(spep_5+64,shuchusen4,255);
setEffAlphaKey(spep_5+65,shuchusen4,0);
setEffAlphaKey(spep_5+66,shuchusen4,0);
setEffAlphaKey(spep_5+68,shuchusen4,0);
setEffAlphaKey(spep_5+69,shuchusen4,255);
setEffAlphaKey(spep_5+70,shuchusen4,255);
setEffAlphaKey(spep_5+98,shuchusen4,255);
setEffAlphaKey(spep_5+99,shuchusen4,0);
setEffAlphaKey(spep_5+100,shuchusen4,0);
setEffAlphaKey(spep_5+160,shuchusen4,0);
setEffAlphaKey(spep_5+161,shuchusen4,0);
setEffAlphaKey(spep_5+162,shuchusen4,255);
setEffAlphaKey(spep_5+196,shuchusen4,255);

--流線(斜め)
ryuusen4 = entryEffectLife( spep_5 + 142,  921, 52, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_5 + 142, ryuusen4, 0, 0 , 0 );
setEffMoveKey( spep_5 + 194, ryuusen4, 0, 0 , 0 );

setEffScaleKey( spep_5 + 142, ryuusen4, 1.91, 1.25 );
setEffScaleKey( spep_5 + 194, ryuusen4, 1.91, 1.25 );

setEffRotateKey( spep_5 + 142, ryuusen4, -55 );
setEffRotateKey( spep_5 + 194, ryuusen4, -55 );

setEffAlphaKey( spep_5 + 142, ryuusen4, 0 );
setEffAlphaKey( spep_5 + 143, ryuusen4, 255 );
setEffAlphaKey( spep_5 + 144, ryuusen4, 255 );
setEffAlphaKey( spep_5 + 194, ryuusen4, 255 );

--文字エントリー
ctgaltu = entryEffectLife( spep_5 + 24,  10005, 12, 0x100, -1, 0, -50.6, 201 );--ガッ

setEffShake(  spep_5+24,  ctgaltu,  8,  15);  --揺れ

setEffMoveKey( spep_5 + 24, ctgaltu, -50.6, 201 , 0 );
setEffMoveKey( spep_5 + 30, ctgaltu, -61.8, 210.8 , 0 );
setEffMoveKey( spep_5 + 34, ctgaltu, -77.6, 221.8 , 0 );
setEffMoveKey( spep_5 + 36, ctgaltu, -89.6, 225.4 , 0 );

setEffScaleKey( spep_5 + 24, ctgaltu, 0.59, 0.59 );
setEffScaleKey( spep_5 + 30, ctgaltu, 1.09, 1.09 );
setEffScaleKey( spep_5 + 32, ctgaltu, 1.59, 1.59 );
setEffScaleKey( spep_5 + 36, ctgaltu, 1.59, 1.59 );

setEffRotateKey( spep_5 + 24, ctgaltu, -14.1 );
setEffRotateKey( spep_5 + 30, ctgaltu, -14.2 );
setEffRotateKey( spep_5 + 36, ctgaltu, -14.2 );

setEffAlphaKey( spep_5 + 24, ctgaltu, 0 );
setEffAlphaKey( spep_5 + 25, ctgaltu, 255 );
setEffAlphaKey( spep_5 + 26, ctgaltu, 255 );
setEffAlphaKey( spep_5 + 36, ctgaltu, 255 );

--文字エントリー
ctgalyu2 = entryEffectLife( spep_5 + 46,  10005, 14, 0x100, -1, 0, 42, 199.6 );--ガッ

setEffShake(  spep_5+46,  ctgalyu2,  14,  15);  --揺れ

setEffMoveKey( spep_5 + 46, ctgalyu2, 42, 199.6 , 0 );
setEffMoveKey( spep_5 + 52, ctgalyu2, 61.6, 221 , 0 );
setEffMoveKey( spep_5 + 54, ctgalyu2, 68.9, 254.6 , 0 );
setEffMoveKey( spep_5 + 58, ctgalyu2, 68.9, 254.6 , 0 );
setEffMoveKey( spep_5 + 60, ctgalyu2, 77.9, 245.8 , 0 );

setEffScaleKey( spep_5 + 46, ctgalyu2, 0.6, 0.6 );
setEffScaleKey( spep_5 + 52, ctgalyu2, 1.1, 1.1 );
setEffScaleKey( spep_5 + 54, ctgalyu2, 1.59, 1.59 );
setEffScaleKey( spep_5 + 60, ctgalyu2, 1.59, 1.59 );

setEffRotateKey( spep_5 + 46, ctgalyu2, 14.3 );
setEffRotateKey( spep_5 + 60, ctgalyu2, 14.3 );

setEffAlphaKey( spep_5 + 46, ctgalyu2, 255 );
setEffAlphaKey( spep_5 + 60, ctgalyu2, 255 );

--文字エントリー
ctbaki = entryEffectLife( spep_5 + 68,  10020, 16, 0x100, -1, 0, 36.9, 268 );--バキッ

setEffShake(  spep_5+68,  ctbaki,  16,  15);  --揺れ

setEffMoveKey( spep_5 + 68, ctbaki, 36.9, 268 , 0 );
setEffMoveKey( spep_5 + 74, ctbaki, 28.4, 298.5 , 0 );
setEffMoveKey( spep_5 + 84, ctbaki, 12.4, 329 , 0 );

setEffScaleKey( spep_5 + 68, ctbaki, 0.59, 0.59 );
setEffScaleKey( spep_5 + 74, ctbaki, 0.93, 0.93 );
setEffScaleKey( spep_5 + 76, ctbaki, 1.27, 1.27 );
setEffScaleKey( spep_5 + 84, ctbaki, 1.27, 1.27 );

setEffRotateKey( spep_5 + 68, ctbaki, -16.3 );
setEffRotateKey( spep_5 + 74, ctbaki, -16.4 );
setEffRotateKey( spep_5 + 84, ctbaki, -16.4 );

setEffAlphaKey( spep_5 + 68, ctbaki, 0 );
setEffAlphaKey( spep_5 + 69, ctbaki, 255 );
setEffAlphaKey( spep_5 + 70, ctbaki, 255 );
setEffAlphaKey( spep_5 + 84, ctbaki, 255 );

--文字エントリー
ctbakon = entryEffectLife( spep_5 + 142,  10021, 30, 0x100, -1, 0, -81.8, 287.4 );--バゴォッ

setEffShake(  spep_5+142,  ctbakon,  30,  20);  --揺れ

setEffMoveKey( spep_5 + 142, ctbakon, -81.8, 287.4 , 0 );
setEffMoveKey( spep_5 + 172, ctbakon, -82.6, 363.2 , 0 );

setEffScaleKey( spep_5 + 142, ctbakon, 1, 1 );
setEffScaleKey( spep_5 + 148, ctbakon, 1.62, 1.62 );
setEffScaleKey( spep_5 + 150, ctbakon, 2.23, 2.23 );
setEffScaleKey( spep_5 + 172, ctbakon, 2.23, 2.23 );

setEffRotateKey( spep_5 + 142, ctbakon, 0 );
setEffRotateKey( spep_5 + 172, ctbakon, 0 );

setEffAlphaKey( spep_5 + 142, ctbakon, 0 );
setEffAlphaKey( spep_5 + 143, ctbakon, 255 );
setEffAlphaKey( spep_5 + 144, ctbakon, 255 );
setEffAlphaKey( spep_5 + 168, ctbakon, 255 );
setEffAlphaKey( spep_5 + 170, ctbakon, 170 );
setEffAlphaKey( spep_5 + 172, ctbakon, 85 );
setEffAlphaKey( spep_5 + 174, ctbakon, 0 );

--敵の動き
setDisp(spep_5,1,1);
setDisp(spep_5+194,1,0);

changeAnime( spep_5 + 0, 1, 104 );
changeAnime( spep_5-3 + 28, 1, 106 );
changeAnime( spep_5-3 + 48, 1, 108 );
changeAnime( spep_5-3 + 148, 1, 106 );


setShakeChara(spep_5-3 + 28, 1,169,10);

setMoveKey( spep_5-3 + 0, 1, -825.2, -3 , 0 );
setMoveKey( spep_5-3 + 2, 1, -672.5, -3 , 0 );
setMoveKey( spep_5-3 + 4, 1, -519.7, -3 , 0 );
setMoveKey( spep_5-3 + 6, 1, -367, -3 , 0 );
setMoveKey( spep_5-3 + 8, 1, -317, -3 , 0 );
setMoveKey( spep_5-3 + 10, 1, -267, -3 , 0 );
setMoveKey( spep_5-3 + 12, 1, -216.9, -3 , 0 );
setMoveKey( spep_5-3 + 14, 1, -166.9, -3 , 0 );
setMoveKey( spep_5-3 + 16, 1, -116.8, -3 , 0 );
setMoveKey( spep_5-3 + 18, 1, -66.9, -3 , 0 );
setMoveKey( spep_5-3 + 20, 1, -16.9, -3 , 0 );
setMoveKey( spep_5-3 + 22, 1, 33.2, -3 , 0 );
setMoveKey( spep_5-3 + 24, 1, 45.1, -4.6 , 0 );
setMoveKey( spep_5-3 + 26, 1, 57.1, -6.2 , 0 );
setMoveKey( spep_5-3 + 28, 1, 34, 41.8 , 0 );
setMoveKey( spep_5-3 + 30, 1, 35.3, 37.8 , 0 );
setMoveKey( spep_5-3 + 32, 1, 34.5, 43.8 , 0 );
setMoveKey( spep_5-3 + 34, 1, 45.8, 33.8 , 0 );
setMoveKey( spep_5-3 + 36, 1, 41, 33.8 , 0 );
setMoveKey( spep_5-3 + 38, 1, 45.6, 33.8 , 0 );
setMoveKey( spep_5-3 + 40, 1, 50.3, 33.8 , 0 );
setMoveKey( spep_5-3 + 42, 1, 54.9, 33.8 , 0 );
setMoveKey( spep_5-3 + 44, 1, 59.4, 33.8 , 0 );
setMoveKey( spep_5-3 + 46, 1, 64.1, 33.8 , 0 );
setMoveKey( spep_5-3 + 48, 1, 105.7, 33.8 , 0 );
setMoveKey( spep_5-3 + 50, 1, 100.9, 43.8 , 0 );
setMoveKey( spep_5-3 + 52, 1, 111.5, 33.8 , 0 );
setMoveKey( spep_5-3 + 54, 1, 106, 33.8 , 0 );
setMoveKey( spep_5-3 + 56, 1, 116.6, 33.8 , 0 );
setMoveKey( spep_5-3 + 58, 1, 111.2, 43.8 , 0 );
setMoveKey( spep_5-3 + 60, 1, 115, 42.2 , 0 );
setMoveKey( spep_5-3 + 62, 1, 119, 40.5 , 0 );
setMoveKey( spep_5-3 + 64, 1, 122.8, 38.8 , 0 );
setMoveKey( spep_5-3 + 66, 1, 126.7, 37.2 , 0 );
setMoveKey( spep_5-3 + 68, 1, 130.7, 35.5 , 0 );
setMoveKey( spep_5-3 + 70, 1, 134.4, 33.8 , 0 );
setMoveKey( spep_5-3 + 72, 1, 129, 33.8 , 0 );
setMoveKey( spep_5-3 + 74, 1, 138.3, 33.8 , 0 );
setMoveKey( spep_5-3 + 76, 1, 131.6, 43.8 , 0 );
setMoveKey( spep_5-3 + 78, 1, 136.9, 37.8 , 0 );
setMoveKey( spep_5-3 + 80, 1, 138.2, 37.8 , 0 );
setMoveKey( spep_5-3 + 82, 1, 139.5, 37.8 , 0 );
setMoveKey( spep_5-3 + 84, 1, 140.8, 37.8 , 0 );
setMoveKey( spep_5-3 + 86, 1, 142.1, 37.8 , 0 );
setMoveKey( spep_5-3 + 88, 1, 143.4, 37.8 , 0 );
setMoveKey( spep_5-3 + 90, 1, 144.7, 37.8 , 0 );
setMoveKey( spep_5-3 + 92, 1, 146.2, 37.8 , 0 );
setMoveKey( spep_5-3 + 94, 1, 147.5, 37.8 , 0 );
setMoveKey( spep_5-3 + 96, 1, 148.8, 37.8 , 0 );
setMoveKey( spep_5-3 + 98, 1, 150.1, 37.8 , 0 );
setMoveKey( spep_5-3 + 100, 1, 151.4, 37.8 , 0 );
setMoveKey( spep_5-3 + 102, 1, 152.7, 37.8 , 0 );
setMoveKey( spep_5-3 + 104, 1, 154, 37.8 , 0 );
setMoveKey( spep_5-3 + 106, 1, 155.3, 37.8 , 0 );
setMoveKey( spep_5-3 + 108, 1, 156.6, 37.8 , 0 );
setMoveKey( spep_5-3 + 110, 1, 157.9, 37.8 , 0 );
setMoveKey( spep_5-3 + 112, 1, 159.2, 37.8 , 0 );
setMoveKey( spep_5-3 + 114, 1, 160.5, 37.8 , 0 );
setMoveKey( spep_5-3 + 116, 1, 161.8, 37.8 , 0 );
setMoveKey( spep_5-3 + 118, 1, 163.1, 37.8 , 0 );
setMoveKey( spep_5-3 + 120, 1, 164.4, 37.8 , 0 );
setMoveKey( spep_5-3 + 122, 1, 165.7, 37.8 , 0 );
setMoveKey( spep_5-3 + 124, 1, 167, 37.8 , 0 );
setMoveKey( spep_5-3 + 126, 1, 168.3, 37.8 , 0 );
setMoveKey( spep_5-3 + 128, 1, 169.7, 37.8 , 0 );
setMoveKey( spep_5-3 + 130, 1, 171, 37.8 , 0 );
setMoveKey( spep_5-3 + 132, 1, 172.3, 37.8 , 0 );
setMoveKey( spep_5-3 + 134, 1, 173.6, 37.8 , 0 );
setMoveKey( spep_5-3 + 136, 1, 174.9, 37.8 , 0 );
setMoveKey( spep_5-3 + 138, 1, 176.2, 37.8 , 0 );
setMoveKey( spep_5-3 + 140, 1, 177.5, 37.8 , 0 );
setMoveKey( spep_5-3 + 142, 1, 178.8, 37.8 , 0 );
setMoveKey( spep_5-3 + 144, 1, 180.1, 37.8 , 0 );
setMoveKey( spep_5-3 + 146, 1, 186.3, 54.3 , 0 );
setMoveKey( spep_5-3 + 148, 1, 80.9, 97.1 , 0 );
setMoveKey( spep_5-3 + 150, 1, 91.3, 152.9 , 0 );
setMoveKey( spep_5-3 + 152, 1, 113.1, 188.6 , 0 );
setMoveKey( spep_5-3 + 154, 1, 121.7, 222.6 , 0 );
setMoveKey( spep_5-3 + 156, 1, 138, 276.6 , 0 );
setMoveKey( spep_5-3 + 158, 1, 158.3, 314.4 , 0 );
setMoveKey( spep_5-3 + 160, 1, 184.6, 370.3 , 0 );
setMoveKey( spep_5-3 + 162, 1, 198.8, 410.1 , 0 );
setMoveKey( spep_5-3 + 164, 1, 205.6, 420.2 , 0 );
setMoveKey( spep_5-3 + 166, 1, 200.4, 414.4 , 0 );
setMoveKey( spep_5-3 + 168, 1, 205.2, 420.5 , 0 );
setMoveKey( spep_5-3 + 170, 1, 206, 422.6 , 0 );
setMoveKey( spep_5-3 + 172, 1, 206.7, 424.7 , 0 );
setMoveKey( spep_5-3 + 174, 1, 207.5, 426.7 , 0 );
setMoveKey( spep_5-3 + 176, 1, 208.3, 428.8 , 0 );
setMoveKey( spep_5-3 + 178, 1, 209.1, 430.9 , 0 );
setMoveKey( spep_5-3 + 180, 1, 209.9, 433 , 0 );
setMoveKey( spep_5-3 + 182, 1, 210.6, 435.1 , 0 );
setMoveKey( spep_5-3 + 184, 1, 211.4, 437.1 , 0 );
setMoveKey( spep_5-3 + 186, 1, 212.2, 439.2 , 0 );
setMoveKey( spep_5-3 + 188, 1, 213, 441.3 , 0 );
setMoveKey( spep_5-3 + 190, 1, 213.8, 443.5 , 0 );
setMoveKey( spep_5-3 + 192, 1, 214.5, 445.6 , 0 );
setMoveKey( spep_5-3 + 194, 1, 215.3, 447.7 , 0 );
setMoveKey( spep_5-3 + 196, 1, 215.3, 447.7 , 0 );

a=0.4;

setScaleKey( spep_5 + 0, 1, 1.2+a, 1.2+a );
setScaleKey( spep_5 + 44, 1, 1.2+a, 1.2+a );
setScaleKey( spep_5-3 + 47, 1, 1.05+a, 1.05+a );
setScaleKey( spep_5-3 + 48, 1, 1.05+a, 1.05+a );
setScaleKey( spep_5-3 + 145, 1, 1.05+a, 1.05+a );
setScaleKey( spep_5-3 + 146, 1, 1.2+a, 1.2+a );
setScaleKey( spep_5-3 + 148, 1, 1.2+a, 1.2+a );
setScaleKey( spep_5-3 + 149, 1, 1.2+a, 1.2+a );
setScaleKey( spep_5-3 + 150, 1, 1.07+a, 1.07+a );
setScaleKey( spep_5-3 + 152, 1, 0.94+a, 0.94+a );
setScaleKey( spep_5-3 + 154, 1, 0.81+a, 0.81+a );
setScaleKey( spep_5-3 + 156, 1, 0.69+a, 0.69+a );
setScaleKey( spep_5-3 + 158, 1, 0.56+a, 0.56+a );
setScaleKey( spep_5-3 + 160, 1, 0.43+a, 0.43+a );
setScaleKey( spep_5-3 + 162, 1, 0.3+a, 0.3+a );
setScaleKey( spep_5-3 + 164, 1, 0.29+a, 0.29+a );
setScaleKey( spep_5-3 + 166, 1, 0.28+a, 0.28+a );
setScaleKey( spep_5-3 + 168, 1, 0.27+a, 0.27+a );
setScaleKey( spep_5-3 + 170, 1, 0.27+a, 0.27+a );
setScaleKey( spep_5-3 + 172, 1, 0.26+a, 0.26+a );
setScaleKey( spep_5-3 + 174, 1, 0.25+a, 0.25+a );
setScaleKey( spep_5-3 + 176, 1, 0.24+a, 0.24+a );
setScaleKey( spep_5-3 + 178, 1, 0.23+a, 0.23+a );
setScaleKey( spep_5-3 + 180, 1, 0.22+a, 0.22+a );
setScaleKey( spep_5-3 + 182, 1, 0.21+a, 0.21+a );
setScaleKey( spep_5-3 + 184, 1, 0.2+a, 0.2+a );
setScaleKey( spep_5-3 + 186, 1, 0.19+a, 0.19+a );
setScaleKey( spep_5-3 + 188, 1, 0.19+a, 0.19+a );
setScaleKey( spep_5-3 + 190, 1, 0.18+a, 0.18+a );
setScaleKey( spep_5-3 + 192, 1, 0.17+a, 0.17+a );
setScaleKey( spep_5-3 + 194, 1, 0.16+a, 0.16+a );

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5 + 24, 1, 0 );
setRotateKey( spep_5-3 + 28, 1, -35.6 );
setRotateKey( spep_5-3 + 46, 1, -35.6 );
setRotateKey( spep_5-3 + 47, 1, -35.6 );
setRotateKey( spep_5-3 + 48, 1, -10.3 );
setRotateKey( spep_5-3 + 70, 1, -10.3 );
setRotateKey( spep_5-3 + 71, 1, -10.3 )
setRotateKey( spep_5-3 + 72, 1, 15.9 );
setRotateKey( spep_5-3 + 147, 1, 15.9 );
setRotateKey( spep_5-3 + 148, 1, -35.6 );
setRotateKey( spep_5 + 194, 1, -35.6 );

--黒背景
entryFadeBg(spep_5, 0, 196, 0, 0, 0, 0, 200);  -- 黒　背

--SE
playSe(  spep_5+26,  1000);  --パンチ
playSe(  spep_5+46,  1007);  --パンチ
playSe(  spep_5+70,  1001);  --キック
playSe(  spep_5+146,  1002);  --廻し蹴り
playSe(  spep_5+176,  43);  --瞬間移動

-- ** エフェクト等 ** --
entryFade(spep_5+188,4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- whit_fe fade

--次の準備
spep_6=spep_5+196;

--------------------------------------
--ロケットランチャー
--------------------------------------
--エフェクト
rocket=entryEffectLife(spep_6,SP_06,80,0x100,-1,0,0,0);

setEffMoveKey( spep_6 + 0, rocket, 0, 0 , 0 );
setEffMoveKey( spep_6 + 80, rocket, 0, 0 , 0 );
setEffScaleKey(spep_6,rocket,1.0,1.0);
setEffScaleKey(spep_6+80,rocket,1.0,1.0);
setEffRotateKey(spep_6,rocket,0);
setEffRotateKey(spep_6+80,rocket,0);
setEffAlphaKey(spep_6,rocket,255);
setEffAlphaKey(spep_6+80,rocket,255);

--流線
ryuusen5 = entryEffectLife( spep_6 + 0,  921, 78, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_6 + 0, ryuusen5, 0, 0 , 0 );
setEffMoveKey( spep_6 + 78, ryuusen5, 0, 0 , 0 );

setEffScaleKey( spep_6 + 0, ryuusen5, 1.55, 1.73 );
setEffScaleKey( spep_6 + 78, ryuusen5, 1.55, 1.73 );

setEffRotateKey( spep_6 + 0, ryuusen5, 173.6 );
setEffRotateKey( spep_6 + 78, ryuusen5, 173.6 );

setEffAlphaKey( spep_6 + 0, ryuusen5, 255 );
setEffAlphaKey( spep_6 + 78, ryuusen5, 255 );

--文字エントリー
ctdon = entryEffectLife( spep_6-4 + 32,  10019, 16, 0x100, -1, 0, -169, 268.9 );--ドンッ

setEffShake(  spep_6-4+32,  ctdon,  16,  20);  --揺れ

setEffMoveKey( spep_6-4 + 32, ctdon, -169, 268.9 , 0 );
setEffMoveKey( spep_6-4 + 34, ctdon, -181.6, 287.3 , 0 );
setEffMoveKey( spep_6-4 + 42, ctdon, -182.3, 301.2 , 0 );
setEffMoveKey( spep_6-4 + 44, ctdon, -176, 308.9 , 0 );
setEffMoveKey( spep_6-4 + 46, ctdon, -175.8, 296.4 , 0 );
setEffMoveKey( spep_6-4 + 48, ctdon, -175.8, 296.3 , 0 );

setEffScaleKey( spep_6-4 + 32, ctdon, 1.29, 1.29 );
setEffScaleKey( spep_6-4 + 34, ctdon, 1.63, 1.63 );
setEffScaleKey( spep_6-4 + 36, ctdon, 1.98, 1.98 );
setEffScaleKey( spep_6-4 + 38, ctdon, 2, 2 );
setEffScaleKey( spep_6-4 + 40, ctdon, 2.02, 2.02 );
setEffScaleKey( spep_6-4 + 42, ctdon, 2.04, 2.04 );
setEffScaleKey( spep_6-4 + 44, ctdon, 2.05, 2.05 );
setEffScaleKey( spep_6-4 + 46, ctdon, 2.06, 2.06 );
setEffScaleKey( spep_6-4 + 48, ctdon, 2.07, 2.07 );

setEffRotateKey( spep_6-4 + 32, ctdon, -0.8 );
setEffRotateKey( spep_6-4 + 34, ctdon, -0.2 );
setEffRotateKey( spep_6-4 + 36, ctdon, 0.3 );
setEffRotateKey( spep_6-4 + 48, ctdon, 0.3 );

setEffAlphaKey( spep_6-4 + 32, ctdon, 0 );
setEffAlphaKey( spep_6-4 + 33, ctdon, 255 );
setEffAlphaKey( spep_6-4 + 34, ctdon, 255 );
setEffAlphaKey( spep_6-4 + 42, ctdon, 255 );
setEffAlphaKey( spep_6-4 + 44, ctdon, 170 );
setEffAlphaKey( spep_6-4 + 46, ctdon, 85 );
setEffAlphaKey( spep_6-4 + 48, ctdon, 0 );

--黒背景
entryFadeBg(spep_6, 0, 80, 0, 0, 0, 0, 200);  -- 黒　背

--SE
playSe(  spep_6+30,  1027);  --ロケラン発射
playSe(  spep_6+56,  1018);  --弾道

-- ** エフェクト等 ** --
entryFade(spep_6+72,4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- whit_fe fade

--次の準備
spep_7=spep_6+80;
--------------------------------------
--ロケットランチャーが当たる
--------------------------------------
--エフェクト
hit2=entryEffectLife(spep_7,SP_07,60,0x100,-1,0,0,0);

setEffMoveKey( spep_7 + 0, hit2, 0, 0 , 0 );
setEffMoveKey( spep_7 + 60, hit2, 0, 0 , 0 );
setEffScaleKey(spep_7,hit2,1.0,1.0);
setEffScaleKey(spep_7+60,hit2,1.0,1.0);
setEffRotateKey(spep_7,hit2,0);
setEffRotateKey(spep_7+60,hit2,0);
setEffAlphaKey(spep_7,hit2,255);
setEffAlphaKey(spep_7+60,hit2,255);

--文字エントリー
ctzudodo = entryEffectLife( spep_7 + 0,  10014, 20, 0x100, -1, 0, -66.6, -312.5 );--ズドドドッ

setEffShake(  spep_7,  ctzudodo,  20,  10);  --揺れ
setEffMoveKey( spep_7 + 0, ctzudodo, -66.6, -312.5 , 0 );
setEffMoveKey( spep_7 + 2, ctzudodo, -58.8, -324.8 , 0 );
setEffMoveKey( spep_7 + 4, ctzudodo, -51.6, -306 , 0 );
setEffMoveKey( spep_7 + 6, ctzudodo, -43.8, -318.5 , 0 );
setEffMoveKey( spep_7 + 8, ctzudodo, -36.6, -299.5 , 0 );
setEffMoveKey( spep_7 + 10, ctzudodo, -28.8, -312.1 , 0 );
setEffMoveKey( spep_7 + 12, ctzudodo, -21.7, -293 , 0 );
setEffMoveKey( spep_7 + 14, ctzudodo, -13.8, -305.8 , 0 );
setEffMoveKey( spep_7 + 16, ctzudodo, -6.7, -286.5 , 0 );
setEffMoveKey( spep_7 + 18, ctzudodo, 1.2, -299.5 , 0 );
setEffMoveKey( spep_7 + 20, ctzudodo, 8.3, -279.9 , 0 );
--setEffMoveKey( spep_7 + 22, ctzudodo, 16.1, -293.1 , 0 );

setEffScaleKey( spep_7 + 0, ctzudodo, 2.73, 2.73 );
setEffScaleKey( spep_7 + 2, ctzudodo, 2.75, 2.75 );
setEffScaleKey( spep_7 + 4, ctzudodo, 2.76, 2.76 );
setEffScaleKey( spep_7 + 6, ctzudodo, 2.78, 2.78 );
setEffScaleKey( spep_7 + 8, ctzudodo, 2.8, 2.8 );
setEffScaleKey( spep_7 + 10, ctzudodo, 2.81, 2.81 );
setEffScaleKey( spep_7 + 12, ctzudodo, 2.83, 2.83 );
setEffScaleKey( spep_7 + 14, ctzudodo, 2.84, 2.84 );
setEffScaleKey( spep_7 + 16, ctzudodo, 2.86, 2.86 );
setEffScaleKey( spep_7 + 18, ctzudodo, 2.88, 2.88 );
setEffScaleKey( spep_7 + 20, ctzudodo, 2.89, 2.89 );
--setEffScaleKey( spep_7 + 22, ctzudodo, 2.91, 2.91 );

setEffRotateKey( spep_7 + 0, ctzudodo, 16.4 );
setEffRotateKey( spep_7 + 20, ctzudodo, 16.4 );

setEffAlphaKey( spep_7 + 0, ctzudodo, 255 );
setEffAlphaKey( spep_7 + 20, ctzudodo, 255 );

--集中線
shuchusen5 = entryEffectLife( spep_7-6 + 26,  906, 38, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_7 + 26-6, shuchusen5, 0, 0, 0 );
setEffMoveKey( spep_7 + 58, shuchusen5, 0, 0, 0 );

setEffScaleKey( spep_7 + 26-6, shuchusen5, 1.17, 1.17 );
setEffScaleKey( spep_7 + 58, shuchusen5, 1.17, 1.17 );

setEffRotateKey( spep_7-6 + 26, shuchusen5, 180 );
setEffRotateKey( spep_7 + 58, shuchusen5, 180 );

setEffAlphaKey( spep_7 -6+ 26, shuchusen5, 255 );
setEffAlphaKey( spep_7 + 58, shuchusen5, 255 );

--流線
ryuusen6 = entryEffectLife( spep_7 + 0,  921, 24, 0x80, -1, 0, -148, -52 );

setEffMoveKey( spep_7 + 0, ryuusen6, -148, -52 , 0 );
setEffMoveKey( spep_7 + 24, ryuusen6, -148, -52 , 0 );

setEffScaleKey( spep_7 + 0, ryuusen6, 2, 1.37 );
setEffScaleKey( spep_7 + 24, ryuusen6, 2, 1.37 );

setEffRotateKey( spep_7 + 0, ryuusen6, -38.2 );
setEffRotateKey( spep_7 + 24, ryuusen6, -38.2 );

setEffAlphaKey( spep_7 + 0, ryuusen6, 255 );
setEffAlphaKey( spep_7 + 24, ryuusen6, 255 );

--文字エントリー
ctdogon = entryEffectLife( spep_7-6 + 26,  10018, 30, 0x100, -1, 0, -7.3, 99 );--ドゴォンッ

setEffShake(  spep_7-6+26,  ctdogon,  30,  10);  --揺れ

setEffMoveKey( spep_7-6 + 26, ctdogon, -7.3, 99 , 0 );
setEffMoveKey( spep_7-6 + 28, ctdogon, -20.6, 133 , 0 );
setEffMoveKey( spep_7-6 + 30, ctdogon, -10.9, 163.5 , 0 );
setEffMoveKey( spep_7-6 + 32, ctdogon, -30.3, 183.7 , 0 );
setEffMoveKey( spep_7-6 + 34, ctdogon, -25.8, 186.1 , 0 );
setEffMoveKey( spep_7-6 + 36, ctdogon, -48.7, 196.6 , 0 );
setEffMoveKey( spep_7-6 + 38, ctdogon, -50.2, 207.8 , 0 );
setEffMoveKey( spep_7-6 + 40, ctdogon, -58.7, 196.5 , 0 );
setEffMoveKey( spep_7-6 + 42, ctdogon, -71.8, 214 , 0 );
setEffMoveKey( spep_7-6 + 44, ctdogon, -74.9, 206.5 , 0 );
setEffMoveKey( spep_7-6 + 46, ctdogon, -90.9, 213.1 , 0 );
setEffMoveKey( spep_7-6 + 48, ctdogon, -97.8, 221.6 , 0 );
setEffMoveKey( spep_7-6 + 50, ctdogon, -99.9, 211.7 , 0 );
setEffMoveKey( spep_7-6 + 52, ctdogon, -114.8, 215.7 , 0 );
setEffMoveKey( spep_7-6 + 54, ctdogon, -117.6, 209.9 , 0 );
setEffMoveKey( spep_7-6 + 56, ctdogon, -125.2, 209.9 , 0 );

setEffScaleKey( spep_7-6 + 26, ctdogon, 1.67, 1.67 );
setEffScaleKey( spep_7-6 + 28, ctdogon, 2.27, 2.27 );
setEffScaleKey( spep_7-6 + 30, ctdogon, 2.86, 2.86 );
setEffScaleKey( spep_7-6 + 32, ctdogon, 2.9, 2.9 );
setEffScaleKey( spep_7-6 + 34, ctdogon, 2.95, 2.95 );
setEffScaleKey( spep_7-6 + 36, ctdogon, 2.99, 2.99 );
setEffScaleKey( spep_7-6 + 38, ctdogon, 2.97, 2.97 );
setEffScaleKey( spep_7-6 + 40, ctdogon, 2.95, 2.95 );
setEffScaleKey( spep_7-6 + 42, ctdogon, 2.93, 2.93 );
setEffScaleKey( spep_7-6 + 44, ctdogon, 2.9, 2.9 );
setEffScaleKey( spep_7-6 + 46, ctdogon, 2.88, 2.88 );
setEffScaleKey( spep_7-6 + 48, ctdogon, 2.86, 2.86 );
setEffScaleKey( spep_7-6 + 56, ctdogon, 2.86, 2.86 );

setEffRotateKey( spep_7-6 + 26, ctdogon, -27.8 );
setEffRotateKey( spep_7-6 + 28, ctdogon, -27.2 );
setEffRotateKey( spep_7-6 + 56, ctdogon, -26.7 );

setEffAlphaKey( spep_7-6 + 26, ctdogon, 0 );
setEffAlphaKey( spep_7-6 + 27, ctdogon, 255 );
setEffAlphaKey( spep_7-6 + 28, ctdogon, 255 );
setEffAlphaKey( spep_7-6 + 48, ctdogon, 255 );
setEffAlphaKey( spep_7-6 + 50, ctdogon, 191 );
setEffAlphaKey( spep_7-6 + 52, ctdogon, 128 );
setEffAlphaKey( spep_7-6 + 54, ctdogon, 64 );
setEffAlphaKey( spep_7-6 + 56, ctdogon, 0 );

--敵の動き
setDisp(spep_7,1,1);
setDisp(spep_7+32,1,0);

changeAnime( spep_7 + 0, 1, 106 );

setMoveKey( spep_7 + 4, 1, 497.8, 523.3 , 0 );
setMoveKey( spep_7 + 6, 1, 451.9, 480.9 , 0 );
setMoveKey( spep_7 + 8, 1, 406, 438.4 , 0 );
setMoveKey( spep_7 + 10, 1, 360.2, 396 , 0 );
setMoveKey( spep_7 + 12, 1, 314.3, 353.5 , 0 );
setMoveKey( spep_7 + 14, 1, 268.4, 311.1 , 0 );
setMoveKey( spep_7 + 16, 1, 222.5, 268.7 , 0 );
setMoveKey( spep_7 + 18, 1, 176.7, 226.2 , 0 );
setMoveKey( spep_7 + 20, 1, 130.8, 183.7 , 0 );
setMoveKey( spep_7 + 22, 1, 84.9, 141.3 , 0 );
setMoveKey( spep_7 + 24, 1, 34.1, 111 , 0 );
setMoveKey( spep_7 + 26, 1, 46.4, 86.5 , 0 );
setMoveKey( spep_7 + 28, 1, 48.8, 108.6 , 0 );
setMoveKey( spep_7 + 30, 1, 29.2, 91.4 , 0 );
setMoveKey( spep_7 + 32, 1, 34.1, 111 , 0 );

setScaleKey( spep_7 + 4, 1, 0.8, 0.8 );
setScaleKey( spep_7 + 6, 1, 0.87, 0.87 );
setScaleKey( spep_7 + 8, 1, 0.94, 0.94 );
setScaleKey( spep_7 + 10, 1, 1.01, 1.01 );
setScaleKey( spep_7 + 12, 1, 1.08, 1.08 );
setScaleKey( spep_7 + 14, 1, 1.15, 1.15 );
setScaleKey( spep_7 + 16, 1, 1.22, 1.22 );
setScaleKey( spep_7 + 18, 1, 1.29, 1.29 );
setScaleKey( spep_7 + 20, 1, 1.36, 1.36 );
setScaleKey( spep_7 + 22, 1, 1.43, 1.43 );
setScaleKey( spep_7 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_7 + 32, 1, 1.5, 1.5 );

setRotateKey( spep_7 + 4, 1, -35.6 );
setRotateKey( spep_7 + 32, 1, -35.6 );

--黒背景
entryFadeBg(spep_7, 0, 60, 0, 0, 0, 0, 200);  -- 黒　背

--SE
playSe(  spep_7+22,  1023);  --HIT

-- ** エフェクト等 ** --
entryFade(spep_7+52,4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- whit_fe fade

--次の準備
spep_8=spep_7+60;

--------------------------------------
--爆発
--------------------------------------
--エフェクト
explosion=entryEffect(spep_8,SP_08,0x100,-1,0,0,0);

setEffMoveKey( spep_8 + 0, explosion, 0, 0 , 0 );
setEffMoveKey( spep_8 + 180, explosion, 0, 0 , 0 );
setEffScaleKey(spep_8,explosion,1.0,1.0);
setEffScaleKey(spep_8+180,explosion,1.0,1.0);
setEffRotateKey(spep_8,explosion,0);
setEffRotateKey(spep_8+180,explosion,0);
setEffAlphaKey(spep_8,explosion,255);
setEffAlphaKey(spep_8+180,explosion,255);

--集中線
shuchusen6 = entryEffectLife( spep_8 + 0,  906, 180, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_8 + 0, shuchusen6, 0, 0 , 0 );
setEffMoveKey( spep_8 + 180, shuchusen6, 0, 0 , 0);

setEffScaleKey( spep_8 + 0, shuchusen6, 1.0, 1.0 );
setEffScaleKey( spep_8 + 180, shuchusen6, 1.0, 1.0 );

setEffRotateKey( spep_8 + 0, shuchusen6, 180 );
setEffRotateKey( spep_8 + 180, shuchusen6, 180 );

setEffAlphaKey(spep_8,shuchusen6,255);
setEffAlphaKey(spep_8+180,shuchusen6,255);

--黒背景
entryFadeBg(spep_8, 0, 180, 0, 0, 0, 0, 200);  -- 黒　背

--SE
playSe(  spep_8,  1024);  --爆発
playSe(  spep_8+60,  43);  --瞬間移動

-- ダメージ表示
dealDamage(spep_8+2);
entryFade( spep_8+160, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_8+170);

else 

------------------------------------------------------
--敵
------------------------------------------------------
------------------------------------------------------
--カットイン
------------------------------------------------------

spep_0=0;

--エフェクト
kattoin=entryEffectLife(spep_0,SP_01x,100,0x100,-1,0,0,0);

setEffMoveKey( spep_0 + 0, kattoin, 0, 0 , 0 );
setEffMoveKey( spep_0 + 100, kattoin, 0, 0 , 0 );
setEffScaleKey(spep_0,kattoin,1.0,1.0);
setEffScaleKey(spep_0+100,kattoin,1.0,1.0);
setEffRotateKey(spep_0,kattoin,0);
setEffRotateKey(spep_0+100,kattoin,0);
setEffAlphaKey(spep_0,kattoin,255);
setEffAlphaKey(spep_0+100,kattoin,255);

--集中線
shuchusen1 = entryEffectLife( spep_0 + 0,  906, 100, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 100, shuchusen1, 0, 0 , 0);

setEffScaleKey( spep_0 + 0, shuchusen1, 1.0, 1.0 );
setEffScaleKey( spep_0 + 100, shuchusen1, 1.0, 1.0 );

setEffRotateKey( spep_0 + 0, shuchusen1, 180 );
setEffRotateKey( spep_0 + 100, shuchusen1, 180 );

setEffAlphaKey(spep_0,shuchusen1,255);
setEffAlphaKey(spep_0+100,shuchusen1,255);

--顔カットイン
--speff=entryEffect(spep_0+10,1504,0x100,-1,0,0,0);  --カットイン(顔)
--setEffReplaceTexture(speff,3,2);  --カットイン差し替え
--speff1=entryEffect(spep_0+10,1505,0x100,-1,0,0,0);  --カットイン(セリフ)
--setEffReplaceTexture(speff1,4,5);  --セリフカットイン差し替え

--ゴゴゴ
ctgogo=entryEffectLife(spep_0+22,190006,78,0x100,-1,150,520);--ゴゴゴ

setEffMoveKey(spep_0+22,ctgogo,150,520,0);
setEffMoveKey(spep_0+100,ctgogo,150,520,0);

setEffScaleKey(spep_0+22, ctgogo, -0.7, 0.7);
setEffScaleKey(spep_0+100, ctgogo, -0.7, 0.7);

setEffAlphaKey( spep_0 +22, ctgogo, 0 );
setEffAlphaKey( spep_0 + 23, ctgogo, 255 );
setEffAlphaKey( spep_0 + 24, ctgogo, 255 );
setEffAlphaKey( spep_0 + 100, ctgogo, 255 );

setEffRotateKey(spep_0+22,ctgogo,0);
setEffRotateKey(spep_0+100,ctgogo,0);

--黒背景
entryFadeBg(spep_0, 0, 100, 0, 0, 0, 0, 200);  -- 黒　背

-- ** エフェクト等 ** --
entryFade(spep_0,0, 2, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- whit_fe fade
entryFade(spep_0+92,4, 10, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- whit_fe fade

--SE
playSe( spep_0+22, SE_04); --ゴゴゴ

--次の準備
spep_1=spep_0+100;
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
entryFade(spep_1+84,4,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_2=spep_1+94;

--------------------------------------
--閃光弾をうつ
--------------------------------------
--エフェクト
senkou=entryEffectLife(spep_2,SP_02x,90,0x100,-1,0,0,0);

setEffMoveKey( spep_2 + 0, senkou, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, senkou, 0, 0 , 0 );
setEffScaleKey(spep_2,senkou,1.0,1.0);
setEffScaleKey(spep_2+90,senkou,1.0,1.0);
setEffRotateKey(spep_2,senkou,0);
setEffRotateKey(spep_2+90,senkou,0);
setEffAlphaKey(spep_2,senkou,255);
setEffAlphaKey(spep_2+90,senkou,255);

--流線
ryuusen1=entryEffectLife(spep_2,914,90,0x80,-1,0,0,0);

setEffMoveKey( spep_2 + 0, ryuusen1, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, ryuusen1, 0, 0 , 0 );
setEffScaleKey(spep_2,ryuusen1,1.0,1.0);
setEffScaleKey(spep_2+90,ryuusen1,1.0,1.0);
setEffRotateKey(spep_2,ryuusen1,0);
setEffRotateKey(spep_2+90,ryuusen1,0);
setEffAlphaKey(spep_2,ryuusen1,255);
setEffAlphaKey(spep_2+90,ryuusen1,255);

--集中線
shuchusen2 = entryEffectLife( spep_2 + 0,  906, 46, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_2 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 46, shuchusen2, 0, 0 , 0);

setEffScaleKey( spep_2 + 0, shuchusen2, 1.5, 1.5 );
setEffScaleKey( spep_2 + 36, shuchusen2, 1.5, 1.5 );
setEffScaleKey( spep_2 + 38, shuchusen2, 1.54, 1.54 );
setEffScaleKey( spep_2 + 40, shuchusen2, 1.66, 1.66 );
setEffScaleKey( spep_2 + 43, shuchusen2, 1.86, 1.86 );
setEffScaleKey( spep_2 + 44, shuchusen2, 2.14, 2.14 );
setEffScaleKey( spep_2 + 46, shuchusen2, 2.5, 2.5 );

setEffRotateKey(spep_2,shuchusen2,0);
setEffRotateKey(spep_2+46,shuchusen2,0);

setEffAlphaKey(spep_2,shuchusen2,255);
setEffAlphaKey(spep_2+46,shuchusen2,255);

--黒背景
entryFadeBg(spep_2, 0, 90, 0, 0, 0, 0, 200);  -- 黒　背

--SE
playSe(  spep_2+12,  1008);  --閃光弾発射

-- ** エフェクト等 ** --
entryFade(spep_2+78,4, 10, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- whit_fe fade

--次の準備
spep_3=spep_2+90;
--------------------------------------
--目潰し
--------------------------------------
--エフェクト
hit1=entryEffectLife(spep_3,SP_03x,80,0x100,-1,0,0,0);

setEffMoveKey( spep_3 + 0, hit1, 0, 0 , 0 );
setEffMoveKey( spep_3 + 80, hit1, 0, 0 , 0 );
setEffScaleKey(spep_3,hit1,1.0,1.0);
setEffScaleKey(spep_3+80,hit1,1.0,1.0);
setEffRotateKey(spep_3,hit1,0);
setEffRotateKey(spep_3+80,hit1,0);
setEffAlphaKey(spep_3,hit1,255);
setEffAlphaKey(spep_3+80,hit1,255);

--流線
ryuusen2=entryEffectLife(spep_3,921,80,0x80,-1,0,0,0);

setEffMoveKey( spep_3 + 0, ryuusen2, 0, 0 , 0 );
setEffMoveKey( spep_3 + 80, ryuusen2, 0, 0 , 0 );
setEffScaleKey(spep_3,ryuusen2,1.0,1.0);
setEffScaleKey(spep_3+80,ryuusen2,1.0,1.0);
setEffRotateKey(spep_3,ryuusen2,0);
setEffRotateKey(spep_3+80,ryuusen2,0);
setEffAlphaKey(spep_3,ryuusen2,255);
setEffAlphaKey(spep_3+80,ryuusen2,255);

--敵の動き
setDisp(spep_3,1,1);
setDisp(spep_3+78,1,0);

changeAnime( spep_3 + 0, 1, 100 );
changeAnime( spep_3-3 + 32, 1, 104 );

setMoveKey( spep_3 + 0, 1, 240.3, -0.3 , 0 );
setMoveKey( spep_3 + 2, 1, 246.9, 9 , 0 );
setMoveKey( spep_3-3 + 4, 1, 235.6, 2.4 , 0 );
setMoveKey( spep_3-3 + 6, 1, 240.3, 7.7 , 0 );
setMoveKey( spep_3-3 + 8, 1, 228.9, 1 , 0 );
setMoveKey( spep_3-3 + 10, 1, 233.6, 6.4 , 0 );
setMoveKey( spep_3-3 + 12, 1, 222.3, -0.3 , 0 );
setMoveKey( spep_3-3 + 14, 1, 226.9, 5 , 0 );
setMoveKey( spep_3-3 + 16, 1, 215.6, -1.6 , 0 );
setMoveKey( spep_3-3 + 18, 1, 220.3, 3.7 , 0 );
setMoveKey( spep_3-3 + 20, 1, 208.9, -3 , 0 );
setMoveKey( spep_3-3 + 22, 1, 213.6, 2.4 , 0 );

setScaleKey( spep_3 + 0, 1, 0.59, 0.59 );
setScaleKey( spep_3 + 2, 1, 0.63, 0.63 );
setScaleKey( spep_3-3 + 4, 1, 0.68, 0.68 );
setScaleKey( spep_3-3 + 6, 1, 0.73, 0.73 );
setScaleKey( spep_3-3 + 8, 1, 0.78, 0.78 );
setScaleKey( spep_3-3 + 10, 1, 0.82, 0.82 );
setScaleKey( spep_3-3 + 12, 1, 0.87, 0.87 );
setScaleKey( spep_3-3 + 14, 1, 0.92, 0.92 );
setScaleKey( spep_3-3 + 16, 1, 0.97, 0.97 );
setScaleKey( spep_3-3 + 18, 1, 1.01, 1.01 );
setScaleKey( spep_3-3 + 20, 1, 1.06, 1.06 );
setScaleKey( spep_3-3 + 22, 1, 1.11, 1.11 );


setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 + 20, 1, 0 );

--SE
playSe(  spep_3,  8);  --敵に向かう

--黒背景
entryFadeBg(spep_3, 0, 80, 0, 0, 0, 0, 200);  -- 黒　背

--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3+20 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    
    pauseAll( SP_dodge, 67);
    
    --キャラクターの固定
    setMoveKey(SP_dodge, 1,213.6, 2.4 , 0  );
    setScaleKey(SP_dodge , 1, 1.11, 1.11);
    setRotateKey(SP_dodge,   1, 0 );
    
    --キャラクターの固定
    setMoveKey(SP_dodge+8, 1,213.6, 2.4 , 0  );
    setScaleKey(SP_dodge+8 , 1, 1.11, 1.11);
    setRotateKey(SP_dodge+8,   1, 0 );
    
    
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
    setMoveKey(SP_dodge+9, 1, 213.6, 2.4, 0);
    setMoveKey(SP_dodge+10, 1, 213.6, 2.4, 0);
    
    
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

setMoveKey( spep_3-3 + 24, 1, 202.3, -4.3 , 0 );
setMoveKey( spep_3-3 + 26, 1, 206.9, 1 , 0 );
setMoveKey( spep_3-3 + 28, 1, 195.6, -5.6 , 0 );
setMoveKey( spep_3-3 + 31, 1, 200.3, -0.3 , 0 );
setMoveKey( spep_3-3 + 32, 1, 152.2, -6.3 , 0 );
setMoveKey( spep_3-3 + 34, 1, 162.3, -0.3 , 0 );
setMoveKey( spep_3-3 + 36, 1, 156.5, -6.3 , 0 );
setMoveKey( spep_3-3 + 38, 1, 166.7, -0.3 , 0 );
setMoveKey( spep_3-3 + 40, 1, 160.9, -6.3 , 0 );
setMoveKey( spep_3-3 + 42, 1, 171, -0.3 , 0 );
setMoveKey( spep_3-3 + 44, 1, 165.2, -6.3 , 0 );
setMoveKey( spep_3-3 + 46, 1, 175.4, -0.3 , 0 );
setMoveKey( spep_3-3 + 48, 1, 169.6, -6.3 , 0 );
setMoveKey( spep_3-3 + 50, 1, 179.7, -0.3 , 0 );
setMoveKey( spep_3-3 + 52, 1, 173.9, -6.3 , 0 );
setMoveKey( spep_3-3 + 54, 1, 184.1, -0.3 , 0 );
setMoveKey( spep_3-3 + 56, 1, 178.3, -6.3 , 0 );
setMoveKey( spep_3-3 + 58, 1, 188.4, -0.3 , 0 );
setMoveKey( spep_3-3 + 60, 1, 182.6, -6.3 , 0 );
setMoveKey( spep_3-3 + 62, 1, 192.8, -0.3 , 0 );
setMoveKey( spep_3-3 + 64, 1, 187, -6.3 , 0 );
setMoveKey( spep_3-3 + 66, 1, 197.1, -0.3 , 0 );
setMoveKey( spep_3-3 + 68, 1, 191.3, -6.3 , 0 );
setMoveKey( spep_3-3 + 70, 1, 201.5, -0.3 , 0 );
setMoveKey( spep_3-3 + 72, 1, 195.7, -6.3 , 0 );
setMoveKey( spep_3-3 + 74, 1, 205.8, -0.3 , 0 );
setMoveKey( spep_3-3 + 76, 1, 200, -6.3 , 0 );
setMoveKey( spep_3-3 + 78, 1, 210.2, -0.3 , 0 );

setScaleKey( spep_3-3 + 24, 1, 1.16, 1.16 );
setScaleKey( spep_3-3 + 26, 1, 1.21, 1.21 );
setScaleKey( spep_3-3 + 28, 1, 1.25, 1.25 );
setScaleKey( spep_3-3 + 31, 1, 1.3, 1.3 );
setScaleKey( spep_3-3 + 32, 1, 1.3, 1.3 );
setScaleKey( spep_3-3 + 34, 1, 1.29, 1.29 );
setScaleKey( spep_3-3 + 36, 1, 1.27, 1.27 );
setScaleKey( spep_3-3 + 38, 1, 1.26, 1.26 );
setScaleKey( spep_3-3 + 40, 1, 1.24, 1.24 );
setScaleKey( spep_3-3 + 42, 1, 1.23, 1.23 );
setScaleKey( spep_3-3 + 44, 1, 1.22, 1.22 );
setScaleKey( spep_3-3 + 46, 1, 1.2, 1.2 );
setScaleKey( spep_3-3 + 48, 1, 1.19, 1.19 );
setScaleKey( spep_3-3 + 50, 1, 1.17, 1.17 );
setScaleKey( spep_3-3 + 52, 1, 1.16, 1.16 );
setScaleKey( spep_3-3 + 54, 1, 1.15, 1.15 );
setScaleKey( spep_3-3 + 56, 1, 1.13, 1.13 );
setScaleKey( spep_3-3 + 58, 1, 1.12, 1.12 );
setScaleKey( spep_3-3 + 60, 1, 1.1, 1.1 );
setScaleKey( spep_3-3 + 62, 1, 1.09, 1.09 );
setScaleKey( spep_3-3 + 64, 1, 1.08, 1.08 );
setScaleKey( spep_3-3 + 66, 1, 1.06, 1.06 );
setScaleKey( spep_3-3 + 68, 1, 1.05, 1.05 );
setScaleKey( spep_3-3 + 70, 1, 1.03, 1.03 );
setScaleKey( spep_3-3 + 72, 1, 1.02, 1.02 );
setScaleKey( spep_3-3 + 74, 1, 1, 1 );
setScaleKey( spep_3-3 + 76, 1, 0.99, 0.99 );
setScaleKey( spep_3-3 + 78, 1, 0.98, 0.98 );

setRotateKey( spep_3 + 78, 1, 0 );

--文字エントリー
ctka = entryEffectLife( spep_3 + 28,  10004, 48, 0x100, -1, 0, 72.3, 79.5 );--カッ

setEffShake(  spep_3+28,  ctka,  48,  10);  --揺れ
setEffMoveKey( spep_3 + 28, ctka, 72.3, 79.5 , 0 );
setEffMoveKey( spep_3 + 30, ctka, 80.7, 107.9 , 0 );
setEffMoveKey( spep_3 + 32, ctka, 89, 136.4 , 0 );
setEffMoveKey( spep_3 + 34, ctka, 97.3, 164.9 , 0 );
setEffMoveKey( spep_3 + 36, ctka, 105.7, 193.4 , 0 );
setEffMoveKey( spep_3 + 38, ctka, 114, 221.9 , 0 );
setEffMoveKey( spep_3 + 60, ctka, 114, 221.9 , 0 );
setEffMoveKey( spep_3 + 62, ctka, 117.6, 234.2 , 0 );
setEffMoveKey( spep_3 + 64, ctka, 121.2, 246.5 , 0 );
setEffMoveKey( spep_3 + 66, ctka, 124.8, 258.8 , 0 );
setEffMoveKey( spep_3 + 68, ctka, 128.4, 271.2 , 0 );
setEffMoveKey( spep_3 + 70, ctka, 132, 283.4 , 0 );
setEffMoveKey( spep_3 + 72, ctka, 135.6, 295.8 , 0 );
setEffMoveKey( spep_3 + 74, ctka, 139.2, 308 , 0 );
setEffMoveKey( spep_3 + 76, ctka, 142.8, 320.4 , 0 );

setEffScaleKey( spep_3 + 28, ctka, 0.37, 0.37 );
setEffScaleKey( spep_3 + 30, ctka, 0.78, 0.78 );
setEffScaleKey( spep_3 + 32, ctka, 1.13, 1.13 );
setEffScaleKey( spep_3 + 34, ctka, 1.58, 1.58 );
setEffScaleKey( spep_3 + 36, ctka, 1.9, 1.9 );
setEffScaleKey( spep_3 + 38, ctka, 2.37, 2.37 );
setEffScaleKey( spep_3 + 72, ctka, 3.27, 3.27 );
setEffScaleKey( spep_3 + 74, ctka, 3.57, 3.57 );
setEffScaleKey( spep_3 + 76, ctka, 3.74, 3.74 );

setEffRotateKey( spep_3 + 28, ctka, 14.3 );
setEffRotateKey( spep_3 + 30, ctka, 14.5 );
setEffRotateKey( spep_3 + 76, ctka, 14.5 );

setEffAlphaKey( spep_3 + 28, ctka, 0 );
setEffAlphaKey( spep_3 + 29, ctka, 255 );
setEffAlphaKey( spep_3 + 30, ctka, 255 );
setEffAlphaKey( spep_3 + 60, ctka, 255 );
setEffAlphaKey( spep_3 + 62, ctka, 223 );
setEffAlphaKey( spep_3 + 64, ctka, 191 );
setEffAlphaKey( spep_3 + 66, ctka, 159 );
setEffAlphaKey( spep_3 + 68, ctka, 128 );
setEffAlphaKey( spep_3 + 70, ctka, 96 );
setEffAlphaKey( spep_3 + 72, ctka, 64 );
setEffAlphaKey( spep_3 + 74, ctka, 32 );
setEffAlphaKey( spep_3 + 76, ctka, 0 );

--SE
playSe(  spep_3+30,  1042);  --光る

-- ** エフェクト等 ** --
entryFade(spep_3+72,4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- whit_fe fade

--次の準備
spep_4=spep_3+80;
--------------------------------------
--突進
--------------------------------------
--エフェクト
rush=entryEffectLife(spep_4,SP_04x,80,0x100,-1,0,0,0);

setEffMoveKey( spep_4 + 0, rush, 0, 0 , 0 );
setEffMoveKey( spep_4 + 80, rush, 0, 0 , 0 );
setEffScaleKey(spep_4,rush,-1.0,1.0);
setEffScaleKey(spep_4+80,rush,-1.0,1.0);
setEffRotateKey(spep_4,rush,0);
setEffRotateKey(spep_4+80,rush,0);
setEffAlphaKey(spep_4,rush,255);
setEffAlphaKey(spep_4+80,rush,255);

--集中線
shuchusen3 = entryEffectLife( spep_4 + 0,  906, 80, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_4 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_4 + 80, shuchusen3, 0, 0 , 0);

setEffScaleKey( spep_4 + 0, shuchusen3, 1.0, 1.0 );
setEffScaleKey( spep_4 + 80, shuchusen3, 1.0, 1.0 );

setEffRotateKey( spep_4 + 0, shuchusen3, 180 );
setEffRotateKey( spep_4 + 80, shuchusen3, 180 );

setEffAlphaKey(spep_4,shuchusen3,255);
setEffAlphaKey(spep_4+80,shuchusen3,255);

--文字エントリー
ctzuo = entryEffectLife( spep_4 + 4,  10012, 70, 0x100, -1, 0, 77.2, 224.6 );--ズオッ

setEffShake(  spep_4+4,  ctzuo,  68,  20);  --揺れ

setEffMoveKey( spep_4 + 4, ctzuo, 77.2, 224.6 , 0 );
setEffMoveKey( spep_4 + 8, ctzuo, 93.4, 232.8 , 0 );
setEffMoveKey( spep_4 + 10, ctzuo, 103.7, 249 , 0 );
setEffMoveKey( spep_4 + 12, ctzuo, 121.1, 255.8 , 0 );
setEffMoveKey( spep_4 + 14, ctzuo, 130.5, 273.3 , 0 );
setEffMoveKey( spep_4 + 16, ctzuo, 148.7, 278.8 , 0 );
setEffMoveKey( spep_4 + 18, ctzuo, 157.2, 297.6 , 0 );
setEffMoveKey( spep_4 + 20, ctzuo, 162.6, 290.2 , 0 );
setEffMoveKey( spep_4 + 64, ctzuo, 162.6, 290.2 , 0 );
setEffMoveKey( spep_4 + 66, ctzuo, 174.7, 313.3 , 0 );
setEffMoveKey( spep_4 + 68, ctzuo, 198.5, 320.2 , 0 );
setEffMoveKey( spep_4 + 70, ctzuo, 209.5, 344.8 , 0 );
setEffMoveKey( spep_4 + 72, ctzuo, 234.5, 350.2 , 0 );
setEffMoveKey( spep_4 + 74, ctzuo, 252.6, 365.1 , 0 );

setEffScaleKey( spep_4 + 4, ctzuo, 1, 1 );
setEffScaleKey( spep_4 + 8, ctzuo, 1.17, 1.17 );
setEffScaleKey( spep_4 + 10, ctzuo, 1.34, 1.34 );
setEffScaleKey( spep_4 + 12, ctzuo, 1.51, 1.51 );
setEffScaleKey( spep_4 + 14, ctzuo, 1.68, 1.68 );
setEffScaleKey( spep_4 + 16, ctzuo, 1.85, 1.85 );
setEffScaleKey( spep_4 + 18, ctzuo, 2.02, 2.02 );
setEffScaleKey( spep_4 + 64, ctzuo, 2.02, 2.02 );
setEffScaleKey( spep_4 + 66, ctzuo, 2.24, 2.24 );
setEffScaleKey( spep_4 + 68, ctzuo, 2.46, 2.46 );
setEffScaleKey( spep_4 + 70, ctzuo, 2.68, 2.68 );
setEffScaleKey( spep_4 + 72, ctzuo, 2.9, 2.9 );
setEffScaleKey( spep_4 + 74, ctzuo, 3.13, 3.13 );

setEffRotateKey( spep_4 + 4, ctzuo, -9.3 );
setEffRotateKey( spep_4 + 8, ctzuo, -9.5 );
setEffRotateKey( spep_4 + 74, ctzuo, -9.5 );

setEffAlphaKey( spep_4 + 4, ctzuo, 255 );
setEffAlphaKey( spep_4 + 64, ctzuo, 255 );
setEffAlphaKey( spep_4 + 66, ctzuo, 204 );
setEffAlphaKey( spep_4 + 68, ctzuo, 153 );
setEffAlphaKey( spep_4 + 70, ctzuo, 102 );
setEffAlphaKey( spep_4 + 72, ctzuo, 51 );
setEffAlphaKey( spep_4 + 74, ctzuo, 0 );

--黒背景
entryFadeBg(spep_4, 0, 80, 0, 0, 0, 0, 200);  -- 黒　背

--SE
playSe(  spep_4,  9);  --突進

-- ** エフェクト等 ** --
entryFade(spep_4+72,4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- whit_fe fade

--次の準備
spep_5=spep_4+80;

--------------------------------------
--ラッシュ
--------------------------------------
--エフェクト
attack=entryEffectLife(spep_5,SP_05x,196,0x100,-1,0,0,0);

setEffMoveKey( spep_5 + 0, attack, 0, 0 , 0 );
setEffMoveKey( spep_5 + 196, attack, 0, 0 , 0 );
setEffScaleKey(spep_5,attack,1.0,1.0);
setEffScaleKey(spep_5+196,attack,1.0,1.0);
setEffRotateKey(spep_5,attack,0);
setEffRotateKey(spep_5+196,attack,0);
setEffAlphaKey(spep_5,attack,255);
setEffAlphaKey(spep_5+196,attack,255);

--流線(横)
ryusen3 = entryEffectLife( spep_5 + 0,  914, 144, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_5 + 0, ryusen3, 0, 0 , 0 );
setEffMoveKey( spep_5 + 144, ryusen3, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, ryusen3, 1, 1 );
setEffScaleKey( spep_5 + 60, ryusen3, 1, 1 );
setEffScaleKey( spep_5 + 102, ryusen3, 2.5, 1.25 );
setEffScaleKey( spep_5 + 144, ryusen3, 2.5, 1.25 );

setEffRotateKey( spep_5 + 0, ryusen3, 0 );
setEffRotateKey( spep_5 + 60, ryusen3, 0 );
setEffRotateKey( spep_5 + 98, ryusen3, 161 );
setEffRotateKey( spep_5 + 144, ryusen3, 161 );


setEffAlphaKey( spep_5 + 0, ryusen3, 255 );
setEffAlphaKey( spep_5 + 24, ryusen3, 255 );
setEffAlphaKey( spep_5 + 25, ryusen3, 0 );
setEffAlphaKey( spep_5 + 26, ryusen3, 0 );
--setEffAlphaKey( spep_5 + 100, ryusen3, 0 );
setEffAlphaKey( spep_5 + 98, ryusen3, 0 );
setEffAlphaKey( spep_5 + 99, ryusen3, 255 );
setEffAlphaKey( spep_5 + 100, ryusen3, 255 );

setEffAlphaKey( spep_5 + 142, ryusen3, 255 );
setEffAlphaKey( spep_5 + 143, ryusen3, 0 );
setEffAlphaKey( spep_5 + 144, ryusen3, 0 );

--集中線
shuchusen4 = entryEffectLife( spep_5 + 24,  906, 172, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_5 + 24, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_5 + 196, shuchusen4, 0, 0 , 0);

setEffScaleKey( spep_5 + 24, shuchusen4, 1.0, 1.0 );
setEffScaleKey( spep_5 + 196, shuchusen4, 1.0, 1.0 );

setEffRotateKey( spep_5 + 24, shuchusen4, 180 );
setEffRotateKey( spep_5 + 196, shuchusen4, 180 );

setEffAlphaKey(spep_5+24,shuchusen4,0);
setEffAlphaKey(spep_5+25,shuchusen4,255);
setEffAlphaKey(spep_5+26,shuchusen4,255);
setEffAlphaKey(spep_5+40,shuchusen4,255);
setEffAlphaKey(spep_5+42,shuchusen4,255);
setEffAlphaKey(spep_5+43,shuchusen4,0);
setEffAlphaKey(spep_5+44,shuchusen4,0);
setEffAlphaKey(spep_5+45,shuchusen4,0);
setEffAlphaKey(spep_5+46,shuchusen4,255);
setEffAlphaKey(spep_5+64,shuchusen4,255);
setEffAlphaKey(spep_5+65,shuchusen4,0);
setEffAlphaKey(spep_5+66,shuchusen4,0);
setEffAlphaKey(spep_5+68,shuchusen4,0);
setEffAlphaKey(spep_5+69,shuchusen4,255);
setEffAlphaKey(spep_5+70,shuchusen4,255);
setEffAlphaKey(spep_5+98,shuchusen4,255);
setEffAlphaKey(spep_5+99,shuchusen4,0);
setEffAlphaKey(spep_5+100,shuchusen4,0);
setEffAlphaKey(spep_5+160,shuchusen4,0);
setEffAlphaKey(spep_5+161,shuchusen4,0);
setEffAlphaKey(spep_5+162,shuchusen4,255);
setEffAlphaKey(spep_5+196,shuchusen4,255);

--流線(斜め)
ryuusen4 = entryEffectLife( spep_5 + 142,  921, 52, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_5 + 142, ryuusen4, 0, 0 , 0 );
setEffMoveKey( spep_5 + 194, ryuusen4, 0, 0 , 0 );

setEffScaleKey( spep_5 + 142, ryuusen4, 1.91, 1.25 );
setEffScaleKey( spep_5 + 194, ryuusen4, 1.91, 1.25 );

setEffRotateKey( spep_5 + 142, ryuusen4, -55 );
setEffRotateKey( spep_5 + 194, ryuusen4, -55 );

setEffAlphaKey( spep_5 + 142, ryuusen4, 0 );
setEffAlphaKey( spep_5 + 143, ryuusen4, 255 );
setEffAlphaKey( spep_5 + 144, ryuusen4, 255 );
setEffAlphaKey( spep_5 + 194, ryuusen4, 255 );

--文字エントリー
ctgaltu = entryEffectLife( spep_5 + 24,  10005, 12, 0x100, -1, 0, -50.6, 201 );--ガッ

setEffShake(  spep_5+24,  ctgaltu,  8,  15);  --揺れ

setEffMoveKey( spep_5 + 24, ctgaltu, -50.6, 201 , 0 );
setEffMoveKey( spep_5 + 30, ctgaltu, -61.8, 210.8 , 0 );
setEffMoveKey( spep_5 + 34, ctgaltu, -77.6, 221.8 , 0 );
setEffMoveKey( spep_5 + 36, ctgaltu, -89.6, 225.4 , 0 );

setEffScaleKey( spep_5 + 24, ctgaltu, 0.59, 0.59 );
setEffScaleKey( spep_5 + 30, ctgaltu, 1.09, 1.09 );
setEffScaleKey( spep_5 + 32, ctgaltu, 1.59, 1.59 );
setEffScaleKey( spep_5 + 36, ctgaltu, 1.59, 1.59 );

setEffRotateKey( spep_5 + 24, ctgaltu, -14.1 );
setEffRotateKey( spep_5 + 30, ctgaltu, -14.2 );
setEffRotateKey( spep_5 + 36, ctgaltu, -14.2 );

setEffAlphaKey( spep_5 + 24, ctgaltu, 0 );
setEffAlphaKey( spep_5 + 25, ctgaltu, 255 );
setEffAlphaKey( spep_5 + 26, ctgaltu, 255 );
setEffAlphaKey( spep_5 + 36, ctgaltu, 255 );

--文字エントリー
ctgalyu2 = entryEffectLife( spep_5 + 46,  10005, 14, 0x100, -1, 0, 42, 199.6 );--ガッ

setEffShake(  spep_5+46,  ctgalyu2,  14,  15);  --揺れ

setEffMoveKey( spep_5 + 46, ctgalyu2, 42, 199.6 , 0 );
setEffMoveKey( spep_5 + 52, ctgalyu2, 61.6, 221 , 0 );
setEffMoveKey( spep_5 + 54, ctgalyu2, 68.9, 254.6 , 0 );
setEffMoveKey( spep_5 + 58, ctgalyu2, 68.9, 254.6 , 0 );
setEffMoveKey( spep_5 + 60, ctgalyu2, 77.9, 245.8 , 0 );

setEffScaleKey( spep_5 + 46, ctgalyu2, 0.6, 0.6 );
setEffScaleKey( spep_5 + 52, ctgalyu2, 1.1, 1.1 );
setEffScaleKey( spep_5 + 54, ctgalyu2, 1.59, 1.59 );
setEffScaleKey( spep_5 + 60, ctgalyu2, 1.59, 1.59 );

setEffRotateKey( spep_5 + 46, ctgalyu2, 14.3 );
setEffRotateKey( spep_5 + 60, ctgalyu2, 14.3 );

setEffAlphaKey( spep_5 + 46, ctgalyu2, 255 );
setEffAlphaKey( spep_5 + 60, ctgalyu2, 255 );

--文字エントリー
ctbaki = entryEffectLife( spep_5 + 68,  10020, 16, 0x100, -1, 0, 36.9, 268 );--バキッ

setEffShake(  spep_5+68,  ctbaki,  16,  15);  --揺れ

setEffMoveKey( spep_5 + 68, ctbaki, 36.9, 268 , 0 );
setEffMoveKey( spep_5 + 74, ctbaki, 28.4, 298.5 , 0 );
setEffMoveKey( spep_5 + 84, ctbaki, 12.4, 329 , 0 );

setEffScaleKey( spep_5 + 68, ctbaki, 0.59, 0.59 );
setEffScaleKey( spep_5 + 74, ctbaki, 0.93, 0.93 );
setEffScaleKey( spep_5 + 76, ctbaki, 1.27, 1.27 );
setEffScaleKey( spep_5 + 84, ctbaki, 1.27, 1.27 );

setEffRotateKey( spep_5 + 68, ctbaki, -16.3 );
setEffRotateKey( spep_5 + 74, ctbaki, -16.4 );
setEffRotateKey( spep_5 + 84, ctbaki, -16.4 );

setEffAlphaKey( spep_5 + 68, ctbaki, 0 );
setEffAlphaKey( spep_5 + 69, ctbaki, 255 );
setEffAlphaKey( spep_5 + 70, ctbaki, 255 );
setEffAlphaKey( spep_5 + 84, ctbaki, 255 );

--文字エントリー
ctbakon = entryEffectLife( spep_5 + 142,  10021, 30, 0x100, -1, 0, -81.8, 287.4 );--バゴォッ

setEffShake(  spep_5+142,  ctbakon,  30,  20);  --揺れ

setEffMoveKey( spep_5 + 142, ctbakon, -81.8, 287.4 , 0 );
setEffMoveKey( spep_5 + 172, ctbakon, -82.6, 363.2 , 0 );

setEffScaleKey( spep_5 + 142, ctbakon, 1, 1 );
setEffScaleKey( spep_5 + 148, ctbakon, 1.62, 1.62 );
setEffScaleKey( spep_5 + 150, ctbakon, 2.23, 2.23 );
setEffScaleKey( spep_5 + 172, ctbakon, 2.23, 2.23 );

setEffRotateKey( spep_5 + 142, ctbakon, 0 );
setEffRotateKey( spep_5 + 172, ctbakon, 0 );

setEffAlphaKey( spep_5 + 142, ctbakon, 0 );
setEffAlphaKey( spep_5 + 143, ctbakon, 255 );
setEffAlphaKey( spep_5 + 144, ctbakon, 255 );
setEffAlphaKey( spep_5 + 168, ctbakon, 255 );
setEffAlphaKey( spep_5 + 170, ctbakon, 170 );
setEffAlphaKey( spep_5 + 172, ctbakon, 85 );
setEffAlphaKey( spep_5 + 174, ctbakon, 0 );

--敵の動き
setDisp(spep_5,1,1);
setDisp(spep_5+194,1,0);

changeAnime( spep_5 + 0, 1, 104 );
changeAnime( spep_5-3 + 28, 1, 106 );
changeAnime( spep_5-3 + 48, 1, 108 );
changeAnime( spep_5-3 + 148, 1, 106 );


setShakeChara(spep_5-3 + 28, 1,169,10);

setMoveKey( spep_5-3 + 0, 1, -825.2, -3 , 0 );
setMoveKey( spep_5-3 + 2, 1, -672.5, -3 , 0 );
setMoveKey( spep_5-3 + 4, 1, -519.7, -3 , 0 );
setMoveKey( spep_5-3 + 6, 1, -367, -3 , 0 );
setMoveKey( spep_5-3 + 8, 1, -317, -3 , 0 );
setMoveKey( spep_5-3 + 10, 1, -267, -3 , 0 );
setMoveKey( spep_5-3 + 12, 1, -216.9, -3 , 0 );
setMoveKey( spep_5-3 + 14, 1, -166.9, -3 , 0 );
setMoveKey( spep_5-3 + 16, 1, -116.8, -3 , 0 );
setMoveKey( spep_5-3 + 18, 1, -66.9, -3 , 0 );
setMoveKey( spep_5-3 + 20, 1, -16.9, -3 , 0 );
setMoveKey( spep_5-3 + 22, 1, 33.2, -3 , 0 );
setMoveKey( spep_5-3 + 24, 1, 45.1, -4.6 , 0 );
setMoveKey( spep_5-3 + 26, 1, 57.1, -6.2 , 0 );
setMoveKey( spep_5-3 + 28, 1, 34, 41.8 , 0 );
setMoveKey( spep_5-3 + 30, 1, 35.3, 37.8 , 0 );
setMoveKey( spep_5-3 + 32, 1, 34.5, 43.8 , 0 );
setMoveKey( spep_5-3 + 34, 1, 45.8, 33.8 , 0 );
setMoveKey( spep_5-3 + 36, 1, 41, 33.8 , 0 );
setMoveKey( spep_5-3 + 38, 1, 45.6, 33.8 , 0 );
setMoveKey( spep_5-3 + 40, 1, 50.3, 33.8 , 0 );
setMoveKey( spep_5-3 + 42, 1, 54.9, 33.8 , 0 );
setMoveKey( spep_5-3 + 44, 1, 59.4, 33.8 , 0 );
setMoveKey( spep_5-3 + 46, 1, 64.1, 33.8 , 0 );
setMoveKey( spep_5-3 + 48, 1, 105.7, 33.8 , 0 );
setMoveKey( spep_5-3 + 50, 1, 100.9, 43.8 , 0 );
setMoveKey( spep_5-3 + 52, 1, 111.5, 33.8 , 0 );
setMoveKey( spep_5-3 + 54, 1, 106, 33.8 , 0 );
setMoveKey( spep_5-3 + 56, 1, 116.6, 33.8 , 0 );
setMoveKey( spep_5-3 + 58, 1, 111.2, 43.8 , 0 );
setMoveKey( spep_5-3 + 60, 1, 115, 42.2 , 0 );
setMoveKey( spep_5-3 + 62, 1, 119, 40.5 , 0 );
setMoveKey( spep_5-3 + 64, 1, 122.8, 38.8 , 0 );
setMoveKey( spep_5-3 + 66, 1, 126.7, 37.2 , 0 );
setMoveKey( spep_5-3 + 68, 1, 130.7, 35.5 , 0 );
setMoveKey( spep_5-3 + 70, 1, 134.4, 33.8 , 0 );
setMoveKey( spep_5-3 + 72, 1, 129, 33.8 , 0 );
setMoveKey( spep_5-3 + 74, 1, 138.3, 33.8 , 0 );
setMoveKey( spep_5-3 + 76, 1, 131.6, 43.8 , 0 );
setMoveKey( spep_5-3 + 78, 1, 136.9, 37.8 , 0 );
setMoveKey( spep_5-3 + 80, 1, 138.2, 37.8 , 0 );
setMoveKey( spep_5-3 + 82, 1, 139.5, 37.8 , 0 );
setMoveKey( spep_5-3 + 84, 1, 140.8, 37.8 , 0 );
setMoveKey( spep_5-3 + 86, 1, 142.1, 37.8 , 0 );
setMoveKey( spep_5-3 + 88, 1, 143.4, 37.8 , 0 );
setMoveKey( spep_5-3 + 90, 1, 144.7, 37.8 , 0 );
setMoveKey( spep_5-3 + 92, 1, 146.2, 37.8 , 0 );
setMoveKey( spep_5-3 + 94, 1, 147.5, 37.8 , 0 );
setMoveKey( spep_5-3 + 96, 1, 148.8, 37.8 , 0 );
setMoveKey( spep_5-3 + 98, 1, 150.1, 37.8 , 0 );
setMoveKey( spep_5-3 + 100, 1, 151.4, 37.8 , 0 );
setMoveKey( spep_5-3 + 102, 1, 152.7, 37.8 , 0 );
setMoveKey( spep_5-3 + 104, 1, 154, 37.8 , 0 );
setMoveKey( spep_5-3 + 106, 1, 155.3, 37.8 , 0 );
setMoveKey( spep_5-3 + 108, 1, 156.6, 37.8 , 0 );
setMoveKey( spep_5-3 + 110, 1, 157.9, 37.8 , 0 );
setMoveKey( spep_5-3 + 112, 1, 159.2, 37.8 , 0 );
setMoveKey( spep_5-3 + 114, 1, 160.5, 37.8 , 0 );
setMoveKey( spep_5-3 + 116, 1, 161.8, 37.8 , 0 );
setMoveKey( spep_5-3 + 118, 1, 163.1, 37.8 , 0 );
setMoveKey( spep_5-3 + 120, 1, 164.4, 37.8 , 0 );
setMoveKey( spep_5-3 + 122, 1, 165.7, 37.8 , 0 );
setMoveKey( spep_5-3 + 124, 1, 167, 37.8 , 0 );
setMoveKey( spep_5-3 + 126, 1, 168.3, 37.8 , 0 );
setMoveKey( spep_5-3 + 128, 1, 169.7, 37.8 , 0 );
setMoveKey( spep_5-3 + 130, 1, 171, 37.8 , 0 );
setMoveKey( spep_5-3 + 132, 1, 172.3, 37.8 , 0 );
setMoveKey( spep_5-3 + 134, 1, 173.6, 37.8 , 0 );
setMoveKey( spep_5-3 + 136, 1, 174.9, 37.8 , 0 );
setMoveKey( spep_5-3 + 138, 1, 176.2, 37.8 , 0 );
setMoveKey( spep_5-3 + 140, 1, 177.5, 37.8 , 0 );
setMoveKey( spep_5-3 + 142, 1, 178.8, 37.8 , 0 );
setMoveKey( spep_5-3 + 144, 1, 180.1, 37.8 , 0 );
setMoveKey( spep_5-3 + 146, 1, 186.3, 54.3 , 0 );
setMoveKey( spep_5-3 + 148, 1, 80.9, 97.1 , 0 );
setMoveKey( spep_5-3 + 150, 1, 91.3, 152.9 , 0 );
setMoveKey( spep_5-3 + 152, 1, 113.1, 188.6 , 0 );
setMoveKey( spep_5-3 + 154, 1, 121.7, 222.6 , 0 );
setMoveKey( spep_5-3 + 156, 1, 138, 276.6 , 0 );
setMoveKey( spep_5-3 + 158, 1, 158.3, 314.4 , 0 );
setMoveKey( spep_5-3 + 160, 1, 184.6, 370.3 , 0 );
setMoveKey( spep_5-3 + 162, 1, 198.8, 410.1 , 0 );
setMoveKey( spep_5-3 + 164, 1, 205.6, 420.2 , 0 );
setMoveKey( spep_5-3 + 166, 1, 200.4, 414.4 , 0 );
setMoveKey( spep_5-3 + 168, 1, 205.2, 420.5 , 0 );
setMoveKey( spep_5-3 + 170, 1, 206, 422.6 , 0 );
setMoveKey( spep_5-3 + 172, 1, 206.7, 424.7 , 0 );
setMoveKey( spep_5-3 + 174, 1, 207.5, 426.7 , 0 );
setMoveKey( spep_5-3 + 176, 1, 208.3, 428.8 , 0 );
setMoveKey( spep_5-3 + 178, 1, 209.1, 430.9 , 0 );
setMoveKey( spep_5-3 + 180, 1, 209.9, 433 , 0 );
setMoveKey( spep_5-3 + 182, 1, 210.6, 435.1 , 0 );
setMoveKey( spep_5-3 + 184, 1, 211.4, 437.1 , 0 );
setMoveKey( spep_5-3 + 186, 1, 212.2, 439.2 , 0 );
setMoveKey( spep_5-3 + 188, 1, 213, 441.3 , 0 );
setMoveKey( spep_5-3 + 190, 1, 213.8, 443.5 , 0 );
setMoveKey( spep_5-3 + 192, 1, 214.5, 445.6 , 0 );
setMoveKey( spep_5-3 + 194, 1, 215.3, 447.7 , 0 );
setMoveKey( spep_5-3 + 196, 1, 215.3, 447.7 , 0 );


a=0.4;

setScaleKey( spep_5 + 0, 1, 1.2+a, 1.2+a );
setScaleKey( spep_5 + 44, 1, 1.2+a, 1.2+a );
setScaleKey( spep_5-3 + 47, 1, 1.05+a, 1.05+a );
setScaleKey( spep_5-3 + 48, 1, 1.05+a, 1.05+a );
setScaleKey( spep_5-3 + 145, 1, 1.05+a, 1.05+a );
setScaleKey( spep_5-3 + 146, 1, 1.2+a, 1.2+a );
setScaleKey( spep_5-3 + 148, 1, 1.2+a, 1.2+a );
setScaleKey( spep_5-3 + 149, 1, 1.2+a, 1.2+a );
setScaleKey( spep_5-3 + 150, 1, 1.07+a, 1.07+a );
setScaleKey( spep_5-3 + 152, 1, 0.94+a, 0.94+a );
setScaleKey( spep_5-3 + 154, 1, 0.81+a, 0.81+a );
setScaleKey( spep_5-3 + 156, 1, 0.69+a, 0.69+a );
setScaleKey( spep_5-3 + 158, 1, 0.56+a, 0.56+a );
setScaleKey( spep_5-3 + 160, 1, 0.43+a, 0.43+a );
setScaleKey( spep_5-3 + 162, 1, 0.3+a, 0.3+a );
setScaleKey( spep_5-3 + 164, 1, 0.29+a, 0.29+a );
setScaleKey( spep_5-3 + 166, 1, 0.28+a, 0.28+a );
setScaleKey( spep_5-3 + 168, 1, 0.27+a, 0.27+a );
setScaleKey( spep_5-3 + 170, 1, 0.27+a, 0.27+a );
setScaleKey( spep_5-3 + 172, 1, 0.26+a, 0.26+a );
setScaleKey( spep_5-3 + 174, 1, 0.25+a, 0.25+a );
setScaleKey( spep_5-3 + 176, 1, 0.24+a, 0.24+a );
setScaleKey( spep_5-3 + 178, 1, 0.23+a, 0.23+a );
setScaleKey( spep_5-3 + 180, 1, 0.22+a, 0.22+a );
setScaleKey( spep_5-3 + 182, 1, 0.21+a, 0.21+a );
setScaleKey( spep_5-3 + 184, 1, 0.2+a, 0.2+a );
setScaleKey( spep_5-3 + 186, 1, 0.19+a, 0.19+a );
setScaleKey( spep_5-3 + 188, 1, 0.19+a, 0.19+a );
setScaleKey( spep_5-3 + 190, 1, 0.18+a, 0.18+a );
setScaleKey( spep_5-3 + 192, 1, 0.17+a, 0.17+a );
setScaleKey( spep_5-3 + 194, 1, 0.16+a, 0.16+a );

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5 + 24, 1, 0 );
setRotateKey( spep_5-3 + 28, 1, -35.6 );
setRotateKey( spep_5-3 + 46, 1, -35.6 );
setRotateKey( spep_5-3 + 47, 1, -35.6 );
setRotateKey( spep_5-3 + 48, 1, -10.3 );
setRotateKey( spep_5-3 + 70, 1, -10.3 );
setRotateKey( spep_5-3 + 71, 1, -10.3 )
setRotateKey( spep_5-3 + 72, 1, 15.9 );
setRotateKey( spep_5-3 + 147, 1, 15.9 );
setRotateKey( spep_5-3 + 148, 1, -35.6 );
setRotateKey( spep_5 + 194, 1, -35.6 );

--黒背景
entryFadeBg(spep_5, 0, 196, 0, 0, 0, 0, 200);  -- 黒　背

--SE
playSe(  spep_5+26,  1000);  --パンチ
playSe(  spep_5+46,  1007);  --パンチ
playSe(  spep_5+70,  1001);  --キック
playSe(  spep_5+146,  1002);  --廻し蹴り
playSe(  spep_5+176,  43);  --瞬間移動

-- ** エフェクト等 ** --
entryFade(spep_5+188,4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- whit_fe fade

--次の準備
spep_6=spep_5+196;

--------------------------------------
--ロケットランチャー
--------------------------------------
--エフェクト
rocket=entryEffectLife(spep_6,SP_06x,80,0x100,-1,0,0,0);

setEffMoveKey( spep_6 + 0, rocket, 0, 0 , 0 );
setEffMoveKey( spep_6 + 80, rocket, 0, 0 , 0 );
setEffScaleKey(spep_6,rocket,1.0,1.0);
setEffScaleKey(spep_6+80,rocket,1.0,1.0);
setEffRotateKey(spep_6,rocket,0);
setEffRotateKey(spep_6+80,rocket,0);
setEffAlphaKey(spep_6,rocket,255);
setEffAlphaKey(spep_6+80,rocket,255);

--流線
ryuusen5 = entryEffectLife( spep_6 + 0,  921, 78, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_6 + 0, ryuusen5, 0, 0 , 0 );
setEffMoveKey( spep_6 + 78, ryuusen5, 0, 0 , 0 );

setEffScaleKey( spep_6 + 0, ryuusen5, 1.55, 1.73 );
setEffScaleKey( spep_6 + 78, ryuusen5, 1.55, 1.73 );

setEffRotateKey( spep_6 + 0, ryuusen5, 173.6 );
setEffRotateKey( spep_6 + 78, ryuusen5, 173.6 );

setEffAlphaKey( spep_6 + 0, ryuusen5, 255 );
setEffAlphaKey( spep_6 + 78, ryuusen5, 255 );

--文字エントリー
ctdon = entryEffectLife( spep_6-4 + 32,  10019, 16, 0x100, -1, 0, -169, 268.9 );--ドンッ

setEffShake(  spep_6-4+32,  ctdon,  16,  20);  --揺れ

setEffMoveKey( spep_6-4 + 32, ctdon, -169, 268.9 , 0 );
setEffMoveKey( spep_6-4 + 34, ctdon, -181.6, 287.3 , 0 );
setEffMoveKey( spep_6-4 + 42, ctdon, -182.3, 301.2 , 0 );
setEffMoveKey( spep_6-4 + 44, ctdon, -176, 308.9 , 0 );
setEffMoveKey( spep_6-4 + 46, ctdon, -175.8, 296.4 , 0 );
setEffMoveKey( spep_6-4 + 48, ctdon, -175.8, 296.3 , 0 );

setEffScaleKey( spep_6-4 + 32, ctdon, 1.29, 1.29 );
setEffScaleKey( spep_6-4 + 34, ctdon, 1.63, 1.63 );
setEffScaleKey( spep_6-4 + 36, ctdon, 1.98, 1.98 );
setEffScaleKey( spep_6-4 + 38, ctdon, 2, 2 );
setEffScaleKey( spep_6-4 + 40, ctdon, 2.02, 2.02 );
setEffScaleKey( spep_6-4 + 42, ctdon, 2.04, 2.04 );
setEffScaleKey( spep_6-4 + 44, ctdon, 2.05, 2.05 );
setEffScaleKey( spep_6-4 + 46, ctdon, 2.06, 2.06 );
setEffScaleKey( spep_6-4 + 48, ctdon, 2.07, 2.07 );

setEffRotateKey( spep_6-4 + 32, ctdon, -0.8 );
setEffRotateKey( spep_6-4 + 34, ctdon, -0.2 );
setEffRotateKey( spep_6-4 + 36, ctdon, 0.3 );
setEffRotateKey( spep_6-4 + 48, ctdon, 0.3 );

setEffAlphaKey( spep_6-4 + 32, ctdon, 0 );
setEffAlphaKey( spep_6-4 + 33, ctdon, 255 );
setEffAlphaKey( spep_6-4 + 34, ctdon, 255 );
setEffAlphaKey( spep_6-4 + 42, ctdon, 255 );
setEffAlphaKey( spep_6-4 + 44, ctdon, 170 );
setEffAlphaKey( spep_6-4 + 46, ctdon, 85 );
setEffAlphaKey( spep_6-4 + 48, ctdon, 0 );

--黒背景
entryFadeBg(spep_6, 0, 80, 0, 0, 0, 0, 200);  -- 黒　背

--SE
playSe(  spep_6+30,  1027);  --ロケラン発射
playSe(  spep_6+56,  1018);  --弾道

-- ** エフェクト等 ** --
entryFade(spep_6+72,4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- whit_fe fade

--次の準備
spep_7=spep_6+80;
--------------------------------------
--ロケットランチャーが当たる
--------------------------------------
--エフェクト
hit2=entryEffectLife(spep_7,SP_07x,60,0x100,-1,0,0,0);

setEffMoveKey( spep_7 + 0, hit2, 0, 0 , 0 );
setEffMoveKey( spep_7 + 60, hit2, 0, 0 , 0 );
setEffScaleKey(spep_7,hit2,1.0,1.0);
setEffScaleKey(spep_7+60,hit2,1.0,1.0);
setEffRotateKey(spep_7,hit2,0);
setEffRotateKey(spep_7+60,hit2,0);
setEffAlphaKey(spep_7,hit2,255);
setEffAlphaKey(spep_7+60,hit2,255);

--文字エントリー
ctzudodo = entryEffectLife( spep_7 + 0,  10014, 20, 0x100, -1, 0, -66.6, -312.5 );--ズドドドッ

setEffShake(  spep_7,  ctzudodo,  20,  10);  --揺れ
setEffMoveKey( spep_7 + 0, ctzudodo, -66.6, -312.5 , 0 );
setEffMoveKey( spep_7 + 2, ctzudodo, -58.8, -324.8 , 0 );
setEffMoveKey( spep_7 + 4, ctzudodo, -51.6, -306 , 0 );
setEffMoveKey( spep_7 + 6, ctzudodo, -43.8, -318.5 , 0 );
setEffMoveKey( spep_7 + 8, ctzudodo, -36.6, -299.5 , 0 );
setEffMoveKey( spep_7 + 10, ctzudodo, -28.8, -312.1 , 0 );
setEffMoveKey( spep_7 + 12, ctzudodo, -21.7, -293 , 0 );
setEffMoveKey( spep_7 + 14, ctzudodo, -13.8, -305.8 , 0 );
setEffMoveKey( spep_7 + 16, ctzudodo, -6.7, -286.5 , 0 );
setEffMoveKey( spep_7 + 18, ctzudodo, 1.2, -299.5 , 0 );
setEffMoveKey( spep_7 + 20, ctzudodo, 8.3, -279.9 , 0 );
--setEffMoveKey( spep_7 + 22, ctzudodo, 16.1, -293.1 , 0 );

setEffScaleKey( spep_7 + 0, ctzudodo, 2.73, 2.73 );
setEffScaleKey( spep_7 + 2, ctzudodo, 2.75, 2.75 );
setEffScaleKey( spep_7 + 4, ctzudodo, 2.76, 2.76 );
setEffScaleKey( spep_7 + 6, ctzudodo, 2.78, 2.78 );
setEffScaleKey( spep_7 + 8, ctzudodo, 2.8, 2.8 );
setEffScaleKey( spep_7 + 10, ctzudodo, 2.81, 2.81 );
setEffScaleKey( spep_7 + 12, ctzudodo, 2.83, 2.83 );
setEffScaleKey( spep_7 + 14, ctzudodo, 2.84, 2.84 );
setEffScaleKey( spep_7 + 16, ctzudodo, 2.86, 2.86 );
setEffScaleKey( spep_7 + 18, ctzudodo, 2.88, 2.88 );
setEffScaleKey( spep_7 + 20, ctzudodo, 2.89, 2.89 );
--setEffScaleKey( spep_7 + 22, ctzudodo, 2.91, 2.91 );

setEffRotateKey( spep_7 + 0, ctzudodo, -66.4 );
setEffRotateKey( spep_7 + 20, ctzudodo, -66.4 );

setEffAlphaKey( spep_7 + 0, ctzudodo, 255 );
setEffAlphaKey( spep_7 + 20, ctzudodo, 255 );

--集中線
shuchusen5 = entryEffectLife( spep_7-6 + 26,  906, 38, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_7 + 26-6, shuchusen5, 0, 0, 0 );
setEffMoveKey( spep_7 + 58, shuchusen5, 0, 0, 0 );

setEffScaleKey( spep_7 + 26-6, shuchusen5, 1.17, 1.17 );
setEffScaleKey( spep_7 + 58, shuchusen5, 1.17, 1.17 );

setEffRotateKey( spep_7-6 + 26, shuchusen5, 180 );
setEffRotateKey( spep_7 + 58, shuchusen5, 180 );

setEffAlphaKey( spep_7 -6+ 26, shuchusen5, 255 );
setEffAlphaKey( spep_7 + 58, shuchusen5, 255 );

--流線
ryuusen6 = entryEffectLife( spep_7 + 0,  921, 24, 0x80, -1, 0, -148, -52 );

setEffMoveKey( spep_7 + 0, ryuusen6, -148, -52 , 0 );
setEffMoveKey( spep_7 + 24, ryuusen6, -148, -52 , 0 );

setEffScaleKey( spep_7 + 0, ryuusen6, 2, 1.37 );
setEffScaleKey( spep_7 + 24, ryuusen6, 2, 1.37 );

setEffRotateKey( spep_7 + 0, ryuusen6, -38.2 );
setEffRotateKey( spep_7 + 24, ryuusen6, -38.2 );

setEffAlphaKey( spep_7 + 0, ryuusen6, 255 );
setEffAlphaKey( spep_7 + 24, ryuusen6, 255 );

--文字エントリー
ctdogon = entryEffectLife( spep_7-6 + 26,  10018, 30, 0x100, -1, 0, -7.3, 99 );--ドゴォンッ

setEffShake(  spep_7-6+26,  ctdogon,  30,  10);  --揺れ

setEffMoveKey( spep_7-6 + 26, ctdogon, -7.3, 99 , 0 );
setEffMoveKey( spep_7-6 + 28, ctdogon, -20.6, 133 , 0 );
setEffMoveKey( spep_7-6 + 30, ctdogon, -10.9, 163.5 , 0 );
setEffMoveKey( spep_7-6 + 32, ctdogon, -30.3, 183.7 , 0 );
setEffMoveKey( spep_7-6 + 34, ctdogon, -25.8, 186.1 , 0 );
setEffMoveKey( spep_7-6 + 36, ctdogon, -48.7, 196.6 , 0 );
setEffMoveKey( spep_7-6 + 38, ctdogon, -50.2, 207.8 , 0 );
setEffMoveKey( spep_7-6 + 40, ctdogon, -58.7, 196.5 , 0 );
setEffMoveKey( spep_7-6 + 42, ctdogon, -71.8, 214 , 0 );
setEffMoveKey( spep_7-6 + 44, ctdogon, -74.9, 206.5 , 0 );
setEffMoveKey( spep_7-6 + 46, ctdogon, -90.9, 213.1 , 0 );
setEffMoveKey( spep_7-6 + 48, ctdogon, -97.8, 221.6 , 0 );
setEffMoveKey( spep_7-6 + 50, ctdogon, -99.9, 211.7 , 0 );
setEffMoveKey( spep_7-6 + 52, ctdogon, -114.8, 215.7 , 0 );
setEffMoveKey( spep_7-6 + 54, ctdogon, -117.6, 209.9 , 0 );
setEffMoveKey( spep_7-6 + 56, ctdogon, -125.2, 209.9 , 0 );

setEffScaleKey( spep_7-6 + 26, ctdogon, 1.67, 1.67 );
setEffScaleKey( spep_7-6 + 28, ctdogon, 2.27, 2.27 );
setEffScaleKey( spep_7-6 + 30, ctdogon, 2.86, 2.86 );
setEffScaleKey( spep_7-6 + 32, ctdogon, 2.9, 2.9 );
setEffScaleKey( spep_7-6 + 34, ctdogon, 2.95, 2.95 );
setEffScaleKey( spep_7-6 + 36, ctdogon, 2.99, 2.99 );
setEffScaleKey( spep_7-6 + 38, ctdogon, 2.97, 2.97 );
setEffScaleKey( spep_7-6 + 40, ctdogon, 2.95, 2.95 );
setEffScaleKey( spep_7-6 + 42, ctdogon, 2.93, 2.93 );
setEffScaleKey( spep_7-6 + 44, ctdogon, 2.9, 2.9 );
setEffScaleKey( spep_7-6 + 46, ctdogon, 2.88, 2.88 );
setEffScaleKey( spep_7-6 + 48, ctdogon, 2.86, 2.86 );
setEffScaleKey( spep_7-6 + 56, ctdogon, 2.86, 2.86 );

setEffRotateKey( spep_7-6 + 26, ctdogon, -27.8 );
setEffRotateKey( spep_7-6 + 28, ctdogon, -27.2 );
setEffRotateKey( spep_7-6 + 56, ctdogon, -26.7 );

setEffAlphaKey( spep_7-6 + 26, ctdogon, 0 );
setEffAlphaKey( spep_7-6 + 27, ctdogon, 255 );
setEffAlphaKey( spep_7-6 + 28, ctdogon, 255 );
setEffAlphaKey( spep_7-6 + 48, ctdogon, 255 );
setEffAlphaKey( spep_7-6 + 50, ctdogon, 191 );
setEffAlphaKey( spep_7-6 + 52, ctdogon, 128 );
setEffAlphaKey( spep_7-6 + 54, ctdogon, 64 );
setEffAlphaKey( spep_7-6 + 56, ctdogon, 0 );

--敵の動き
setDisp(spep_7,1,1);
setDisp(spep_7+32,1,0);

changeAnime( spep_7 + 0, 1, 106 );

setMoveKey( spep_7 + 4, 1, 497.8, 523.3 , 0 );
setMoveKey( spep_7 + 6, 1, 451.9, 480.9 , 0 );
setMoveKey( spep_7 + 8, 1, 406, 438.4 , 0 );
setMoveKey( spep_7 + 10, 1, 360.2, 396 , 0 );
setMoveKey( spep_7 + 12, 1, 314.3, 353.5 , 0 );
setMoveKey( spep_7 + 14, 1, 268.4, 311.1 , 0 );
setMoveKey( spep_7 + 16, 1, 222.5, 268.7 , 0 );
setMoveKey( spep_7 + 18, 1, 176.7, 226.2 , 0 );
setMoveKey( spep_7 + 20, 1, 130.8, 183.7 , 0 );
setMoveKey( spep_7 + 22, 1, 84.9, 141.3 , 0 );
setMoveKey( spep_7 + 24, 1, 34.1, 111 , 0 );
setMoveKey( spep_7 + 26, 1, 46.4, 86.5 , 0 );
setMoveKey( spep_7 + 28, 1, 48.8, 108.6 , 0 );
setMoveKey( spep_7 + 30, 1, 29.2, 91.4 , 0 );
setMoveKey( spep_7 + 32, 1, 34.1, 111 , 0 );

setScaleKey( spep_7 + 4, 1, 0.8, 0.8 );
setScaleKey( spep_7 + 6, 1, 0.87, 0.87 );
setScaleKey( spep_7 + 8, 1, 0.94, 0.94 );
setScaleKey( spep_7 + 10, 1, 1.01, 1.01 );
setScaleKey( spep_7 + 12, 1, 1.08, 1.08 );
setScaleKey( spep_7 + 14, 1, 1.15, 1.15 );
setScaleKey( spep_7 + 16, 1, 1.22, 1.22 );
setScaleKey( spep_7 + 18, 1, 1.29, 1.29 );
setScaleKey( spep_7 + 20, 1, 1.36, 1.36 );
setScaleKey( spep_7 + 22, 1, 1.43, 1.43 );
setScaleKey( spep_7 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_7 + 32, 1, 1.5, 1.5 );

setRotateKey( spep_7 + 4, 1, -35.6 );
setRotateKey( spep_7 + 32, 1, -35.6 );

--黒背景
entryFadeBg(spep_7, 0, 60, 0, 0, 0, 0, 200);  -- 黒　背

--SE
playSe(  spep_7+22,  1023);  --HIT

-- ** エフェクト等 ** --
entryFade(spep_7+52,4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- whit_fe fade

--次の準備
spep_8=spep_7+60;

--------------------------------------
--爆発
--------------------------------------
--エフェクト
explosion=entryEffect(spep_8,SP_08x,0x100,-1,0,0,0);

setEffMoveKey( spep_8 + 0, explosion, 0, 0 , 0 );
setEffMoveKey( spep_8 + 180, explosion, 0, 0 , 0 );
setEffScaleKey(spep_8,explosion,1.0,1.0);
setEffScaleKey(spep_8+180,explosion,1.0,1.0);
setEffRotateKey(spep_8,explosion,0);
setEffRotateKey(spep_8+180,explosion,0);
setEffAlphaKey(spep_8,explosion,255);
setEffAlphaKey(spep_8+180,explosion,255);

--集中線
shuchusen6 = entryEffectLife( spep_8 + 0,  906, 180, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_8 + 0, shuchusen6, 0, 0 , 0 );
setEffMoveKey( spep_8 + 180, shuchusen6, 0, 0 , 0);

setEffScaleKey( spep_8 + 0, shuchusen6, 1.0, 1.0 );
setEffScaleKey( spep_8 + 180, shuchusen6, 1.0, 1.0 );

setEffRotateKey( spep_8 + 0, shuchusen6, 180 );
setEffRotateKey( spep_8 + 180, shuchusen6, 180 );

setEffAlphaKey(spep_8,shuchusen6,255);
setEffAlphaKey(spep_8+180,shuchusen6,255);

--黒背景
entryFadeBg(spep_8, 0, 180, 0, 0, 0, 0, 200);  -- 黒　背

--SE
playSe(  spep_8,  1024);  --爆発
playSe(  spep_8+60,  43);  --瞬間移動

-- ダメージ表示
dealDamage(spep_8+2);
entryFade( spep_8+160, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_8+170);


end