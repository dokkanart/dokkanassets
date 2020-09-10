--ミスター・サタン　1015090　チャンピオン最後の切り札(悟空ver)
--sp_effect_b4_00066

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
SP_01=	152130	;--	構え
SP_02=	152131	;--	打つ〜放つ
SP_03=	152132	;--	迫る〜着弾

--敵側
SP_01x=	152133	;--	構え	
SP_02x=	152131	;--	打つ〜放つ	(敵)
SP_03x=	152134	;--	迫る〜着弾	(敵)

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

setDisp( 0, 1, 0);
setDisp( 0, 0, 0);
setMoveKey(   0,   0,    0, -2000,   0);
setMoveKey(   0,   1,    0, -2000, 0);
setMoveKey(   1,   0,    0, -2000,   0);
setMoveKey(   1,   1,    0, -2000 , 0);
setMoveKey(   2,   0,    0, -2000,   0);
setMoveKey(   2,   1,    0, -2000 , 0);
setMoveKey(   3,   0,    0, -2000,   0);
setMoveKey(   3,   1,    0, -2000 , 0);

setScaleKey(   0,   0, 1.6, 1.6);
setScaleKey(   0,   1, 1.6, 1.6);
setScaleKey(   1,   0, 1.6, 1.6);
setScaleKey(   1,   1, 1.6, 1.6);
setScaleKey(   2,   0, 1.6, 1.6);
setScaleKey(   2,   1, 1.6, 1.6);
setScaleKey(   3,   0, 1.6, 1.6);
setScaleKey(   3,   1, 1.6, 1.6);

setRotateKey(   0,   1, 0);
setRotateKey(   0,   0, 0);
setRotateKey(   1,   1, 0);
setRotateKey(   1,   0, 0);
setRotateKey(   2,   1, 0);
setRotateKey(   2,   0, 0);
setRotateKey(   3,   1, 0);
setRotateKey(   3,   0, 0);


multi_frm = 2;

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then
------------------------------------------------------
-- 味方側
------------------------------------------------------
--------------------------------------
--構え
--------------------------------------
spep_0=0;

--エフェクトの再生
tame=entryEffectLife(spep_0,SP_01,123,0x100,-1,0,0,0);

setEffMoveKey(spep_0,tame,0,0,0);
setEffMoveKey(spep_0+123,tame,0,0,0);
setEffScaleKey(spep_0,tame,1.0,1.0);
setEffScaleKey(spep_0+123,tame,1.0,1.0);
setEffAlphaKey(spep_0,tame,255);
setEffAlphaKey(spep_0+123,tame,255);
setEffRotateKey(spep_0,tame,0);
setEffRotateKey(spep_0+123,tame,0);

--集中線
shuchuse1 = entryEffectLife( spep_0 + 17,  906, 106, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 17, shuchuse1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 123, shuchuse1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 17, shuchuse1, 1.8, 1.8 );
setEffScaleKey( spep_0 + 123, shuchuse1, 1.8, 1.8);

setEffRotateKey( spep_0 + 17, shuchuse1, 0 );
setEffRotateKey( spep_0 + 123, shuchuse1, 0 );

--顔カットイン
speff=entryEffect(spep_0+19,1504,0x100,-1,0,0,0);  --カットイン(顔)
setEffReplaceTexture(speff,3,2);  --カットイン差し替え
speff1=entryEffect(spep_0+19,1505,0x100,-1,0,0,0);  --カットイン(セリフ)
setEffReplaceTexture(speff1,4,5);  --セリフカットイン差し替え

--文字エントリー
ctgogo=entryEffectLife(spep_0+32,190006,69,0x100,-1,-10,520);--ゴゴゴ
setEffMoveKey(spep_0+32,ctgogo,-10,520,0);
setEffMoveKey(spep_0+101,ctgogo,-10,520,0);
setEffScaleKey(spep_0+32, ctgogo, 0.7, 0.7);
setEffScaleKey(spep_0+101, ctgogo, 0.7, 0.7);

--文字エントリー
ctba = entryEffectLife( spep_0 + 46,  10022, 22, 0x100, -1, 0, -148.9, 164 );--バッ
setEffMoveKey( spep_0 + 46, ctba, -148.9, 164 , 0 );
setEffMoveKey( spep_0 + 48, ctba, -154.3, 166.3 , 0 );
setEffMoveKey( spep_0 + 50, ctba, -148.9, 164 , 0 );
setEffMoveKey( spep_0 + 52, ctba, -155.4, 166.6 , 0 );
setEffMoveKey( spep_0 + 54, ctba, -149, 164 , 0 );
setEffMoveKey( spep_0 + 56, ctba, -149, 164 , 0 );
setEffMoveKey( spep_0 + 58, ctba, -153.7, 166.4 , 0 );
setEffMoveKey( spep_0 + 60, ctba, -148.9, 164.1 , 0 );
setEffMoveKey( spep_0 + 62, ctba, -153.6, 166.5 , 0 );
setEffMoveKey( spep_0 + 64, ctba, -148.9, 164.1 , 0 );
setEffMoveKey( spep_0 + 66, ctba, -153.7, 166.4 , 0 );
setEffMoveKey( spep_0 + 68, ctba, -153.8, 166.4 , 0 );

setEffScaleKey( spep_0 + 46, ctba, 0.82, 0.82 );
setEffScaleKey( spep_0 + 48, ctba, 1.22, 1.22 );
setEffScaleKey( spep_0 + 50, ctba, 1.62, 1.62 );
setEffScaleKey( spep_0 + 52, ctba, 1.45, 1.45 );
setEffScaleKey( spep_0 + 54, ctba, 1.28, 1.28 );
setEffScaleKey( spep_0 + 56, ctba, 1.11, 1.11 );
setEffScaleKey( spep_0 + 58, ctba, 1.11, 1.11 );
setEffScaleKey( spep_0 + 60, ctba, 1.1, 1.1 );
setEffScaleKey( spep_0 + 64, ctba, 1.1, 1.1 );
setEffScaleKey( spep_0 + 66, ctba, 1.11, 1.11 );
setEffScaleKey( spep_0 + 68, ctba, 1.11, 1.11 );

setEffRotateKey( spep_0 + 46, ctba, -15 );
setEffRotateKey( spep_0 + 48, ctba, -18.7 );
setEffRotateKey( spep_0 + 50, ctba, -22.4 );
setEffRotateKey( spep_0 + 52, ctba, -19.9 );
setEffRotateKey( spep_0 + 54, ctba, -17.5 );
setEffRotateKey( spep_0 + 56, ctba, -15 );
setEffRotateKey( spep_0 + 68, ctba, -15 );

setEffAlphaKey( spep_0 + 46, ctba, 255 );
setEffAlphaKey( spep_0 + 62, ctba, 255 );
setEffAlphaKey( spep_0 + 64, ctba, 170 );
setEffAlphaKey( spep_0 + 66, ctba, 85 );
setEffAlphaKey( spep_0 + 68, ctba, 0 );

--SE
playSe( spep_0+32, SE_04); --ゴゴゴ

-- ** エフェクト等 ** --
entryFade(spep_0,0,0,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_0+17,0,1,4,fcolor_r,fcolor_g,fcolor_b,140);     -- white fade
entryFade(spep_0+118,5,4,2,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--黒背景
entryFadeBg(spep_0, 0, 20, 0, 0, 0, 0, 100);  -- 黒　背景
entryFadeBg(spep_0+18, 0, 105, 0, 0, 0, 0, 180);  -- 黒　背景

--次の準備
spep_1=spep_0+122;


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

--------------------------------------
--打つ〜放つ
--------------------------------------

--エフェクトの再生
strike=entryEffectLife(spep_2,SP_02,196,0x100,-1,0,0,0);

setEffMoveKey(spep_2,strike,0,0,0);
setEffMoveKey(spep_2+196,strike,0,0,0);
setEffScaleKey(spep_2,strike,1.0,1.0);
setEffScaleKey(spep_2+196,strike,1.0,1.0);
setEffAlphaKey(spep_2,strike,255);
setEffAlphaKey(spep_2+196,strike,255);
setEffRotateKey(spep_2,strike,0);
setEffRotateKey(spep_2+196,strike,0);


--文字エントリー
ctdon = entryEffectLife( spep_2 + 40,  10019, 34, 0x100, -1, 0, -108.2, 340.6 );--ドン

setEffMoveKey( spep_2 + 40, ctdon, -108.2, 340.6 , 0 );
setEffMoveKey( spep_2 + 42, ctdon, -108.1, 340.8 , 0 );
setEffMoveKey( spep_2 + 44, ctdon, -121.1, 350 , 0 );
setEffMoveKey( spep_2 + 46, ctdon, -108.1, 340.6 , 0 );
setEffMoveKey( spep_2 + 48, ctdon, -117.3, 347.1 , 0 );
setEffMoveKey( spep_2 + 50, ctdon, -108.1, 340.6 , 0 );
setEffMoveKey( spep_2 + 52, ctdon, -117, 346.9 , 0 );
setEffMoveKey( spep_2 + 54, ctdon, -108.1, 340.5 , 0 );
setEffMoveKey( spep_2 + 56, ctdon, -116.8, 346.7 , 0 );
setEffMoveKey( spep_2 + 58, ctdon, -108.1, 340.5 , 0 );
setEffMoveKey( spep_2 + 60, ctdon, -116.5, 346.5 , 0 );
setEffMoveKey( spep_2 + 62, ctdon, -108.1, 340.5 , 0 );
setEffMoveKey( spep_2 + 64, ctdon, -116.3, 346.3 , 0 );
setEffMoveKey( spep_2 + 66, ctdon, -108.1, 340.5 , 0 );
setEffMoveKey( spep_2 + 68, ctdon, -116.1, 346.2 , 0 );
setEffMoveKey( spep_2 + 70, ctdon, -108.1, 340.5 , 0 );
setEffMoveKey( spep_2 + 72, ctdon, -116, 346.2 , 0 );
setEffMoveKey( spep_2 + 74, ctdon, -116, 346.2 , 0 );

setEffScaleKey( spep_2 + 40, ctdon, 2.09, 2.09 );
setEffScaleKey( spep_2 + 42, ctdon, 4.34, 4.34 );
setEffScaleKey( spep_2 + 44, ctdon, 3.77, 3.77 );
setEffScaleKey( spep_2 + 46, ctdon, 3.21, 3.21 );
setEffScaleKey( spep_2 + 48, ctdon, 2.64, 2.64 );
setEffScaleKey( spep_2 + 50, ctdon, 2.6, 2.6 );
setEffScaleKey( spep_2 + 52, ctdon, 2.57, 2.57 );
setEffScaleKey( spep_2 + 54, ctdon, 2.53, 2.53 );
setEffScaleKey( spep_2 + 56, ctdon, 2.5, 2.5 );
setEffScaleKey( spep_2 + 58, ctdon, 2.46, 2.46 );
setEffScaleKey( spep_2 + 60, ctdon, 2.43, 2.43 );
setEffScaleKey( spep_2 + 62, ctdon, 2.39, 2.39 );
setEffScaleKey( spep_2 + 64, ctdon, 2.36, 2.36 );
setEffScaleKey( spep_2 + 66, ctdon, 2.32, 2.32 );
setEffScaleKey( spep_2 + 68, ctdon, 2.32, 2.32 );
setEffScaleKey( spep_2 + 70, ctdon, 2.31, 2.31 );
setEffScaleKey( spep_2 + 72, ctdon, 2.3, 2.3 );
setEffScaleKey( spep_2 + 74, ctdon, 2.3, 2.3 );

setEffRotateKey( spep_2 + 40, ctdon, -9.5 );
setEffRotateKey( spep_2 + 56, ctdon, -9.5 );
setEffRotateKey( spep_2 + 58, ctdon, -9.4 );
setEffRotateKey( spep_2 + 70, ctdon, -9.4 );
setEffRotateKey( spep_2 + 72, ctdon, -9.5 );
setEffRotateKey( spep_2 + 74, ctdon, -9.5 );

setEffAlphaKey( spep_2 + 40, ctdon, 255 );
setEffAlphaKey( spep_2 + 66, ctdon, 255 );
setEffAlphaKey( spep_2 + 68, ctdon, 191 );
setEffAlphaKey( spep_2 + 70, ctdon, 128 );
setEffAlphaKey( spep_2 + 72, ctdon, 64 );
setEffAlphaKey( spep_2 + 74, ctdon, 0 );

--文字エントリー
ctshun = entryEffectLife( spep_2 + 94,  10011, 16, 0x100, -1, 0, -52.1, 324.5 );--シュンッ

setEffMoveKey( spep_2 + 94, ctshun, -52.1, 324.5 , 0 );
setEffMoveKey( spep_2 + 104, ctshun, -52.1, 324.5 , 0 );
setEffMoveKey( spep_2 + 106, ctshun, -52, 324.4 , 0 );
setEffMoveKey( spep_2 + 110, ctshun, -52, 324.4 , 0 );

setEffScaleKey( spep_2 + 94, ctshun, 1.65, 1.65 );
setEffScaleKey( spep_2 + 96, ctshun, 2.78, 2.78 );
setEffScaleKey( spep_2 + 98, ctshun, 2.46, 2.46 );
setEffScaleKey( spep_2 + 100, ctshun, 2.14, 2.14 );
setEffScaleKey( spep_2 + 102, ctshun, 1.82, 1.82 );
setEffScaleKey( spep_2 + 104, ctshun, 1.79, 1.79 );
setEffScaleKey( spep_2 + 106, ctshun, 1.77, 1.77 );
setEffScaleKey( spep_2 + 108, ctshun, 1.74, 1.74 );
setEffScaleKey( spep_2 + 110, ctshun, 1.71, 1.71 );

setEffRotateKey( spep_2 + 94, ctshun, -8.7 );
setEffRotateKey( spep_2 + 110, ctshun, -8.7 );

setEffAlphaKey( spep_2 + 94, ctshun, 255 );
setEffAlphaKey( spep_2 + 100, ctshun, 255 );
setEffAlphaKey( spep_2 + 102, ctshun, 191 );
setEffAlphaKey( spep_2 + 104, ctshun, 128 );
setEffAlphaKey( spep_2 + 106, ctshun, 64 );
setEffAlphaKey( spep_2 + 110, ctshun, 0 );

---------------------------------------------------------------------
--文字エントリー

ctzuo = entryEffectLife( spep_2 + 130,  10012, 30, 0x100, -1, 0, 78.7, 260.5 ); --ズオ

setEffMoveKey( spep_2 + 130, ctzuo, 78.7, 260.5 , 0 );
setEffMoveKey( spep_2 + 136, ctzuo, 117.2, 303.7 , 0 );
setEffMoveKey( spep_2 + 140, ctzuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_2 + 136, ctzuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_2 + 138, ctzuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_2 + 140, ctzuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_2 + 142, ctzuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_2 + 144, ctzuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_2 + 146, ctzuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_2 + 148, ctzuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_2 + 150, ctzuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_2 + 152, ctzuo, 173.1, 345.5 , 0 );
setEffMoveKey( spep_2 + 154, ctzuo, 166.7, 367.9 , 0 );
setEffMoveKey( spep_2 + 156, ctzuo, 211.6, 339 , 0 );
setEffMoveKey( spep_2 + 158, ctzuo, 195.7, 370.9 , 0 );
setEffMoveKey( spep_2 + 160, ctzuo, 210.3, 372.4 , 0 );

setEffScaleKey( spep_2 + 130, ctzuo, 0.34, 0.34 );
setEffScaleKey( spep_2 + 136, ctzuo, 1.54, 1.54 );
setEffScaleKey( spep_2 + 140, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_2 + 150, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_2 + 152, ctzuo, 3.55, 3.55 );
setEffScaleKey( spep_2 + 154, ctzuo, 4.37, 4.37 );
setEffScaleKey( spep_2 + 156, ctzuo, 5.19, 5.19 );
setEffScaleKey( spep_2 + 158, ctzuo, 6.01, 6.01 );
setEffScaleKey( spep_2 + 160, ctzuo, 6.82, 6.82 );

setEffRotateKey( spep_2 + 130, ctzuo, 27.2 );
setEffRotateKey( spep_2 + 160, ctzuo, 27.2 );

setEffAlphaKey( spep_2 + 130, ctzuo, 255 );
setEffAlphaKey( spep_2 + 150, ctzuo, 255 );
setEffAlphaKey( spep_2 + 152, ctzuo, 204 );
setEffAlphaKey( spep_2 + 154, ctzuo, 153 );
setEffAlphaKey( spep_2 + 156, ctzuo, 102 );
setEffAlphaKey( spep_2 + 158, ctzuo, 51 );
setEffAlphaKey( spep_2 + 160, ctzuo, 0 );
---------------------------------------------------------------------


--集中線
shuchuse2 = entryEffectLife( spep_2 + 0,  906, 196, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_2 + 0, shuchuse2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 196, shuchuse2, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchuse2, 1.8, 1.8 );
setEffScaleKey( spep_2 + 196, shuchuse2, 1.8, 1.8 );

setEffRotateKey( spep_2 + 0, shuchuse2, 0 );
setEffRotateKey( spep_2 + 196, shuchuse2, 0 );

--流線
ryuusen1 = entryEffectLife( spep_2 + 130,  923, 66, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 130, ryuusen1, 0, 0 , 0 );
setEffMoveKey( spep_2 + 196, ryuusen1, 0, 0 , 0 );

setEffScaleKey( spep_2 + 130, ryuusen1, 1.0, 1.0 );
setEffScaleKey( spep_2 + 196, ryuusen1, 1.0, 1.0 );

setEffRotateKey( spep_2 + 130, ryuusen1, 0 );
setEffRotateKey( spep_2 + 196, ryuusen1, 0 );

setEffAlphaKey( spep_2 + 130, ryuusen1, 255 );
setEffAlphaKey( spep_2 + 196, ryuusen1, 255 );

-- ** エフェクト等 ** --
entryFade(spep_2+36,0,4,6,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_2+128,0,6,8,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_2+190,4,4,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--SE
playSe( spep_2+40, 1025); --銃声
playSe( spep_2+94, 43); --瞬間移動
SE1=playSe( spep_2+109, 15); --き演算を貯める
stopSe(spep_2+132,SE1,0);
playSe( spep_2+138, SE_06); --気円斬を投げる

--黒背景
entryFadeBg(spep_2, 0, 196, 0, 0, 0, 0, 180);  -- 黒　背景

--次の準備
spep_3=spep_2+196;
--------------------------------------
--迫る〜着弾
--------------------------------------
--エフェクトの再生
press=entryEffect(spep_3,SP_03,0x100,-1,0,0,0);

setEffMoveKey(spep_3,press,0,0,0);
setEffMoveKey(spep_3+296,press,0,0,0);
setEffScaleKey(spep_3,press,1.0,1.0);
setEffScaleKey(spep_3+296,press,1.0,1.0);
setEffAlphaKey(spep_3,press,255);
setEffAlphaKey(spep_3+296,press,255);
setEffRotateKey(spep_3,press,0);
setEffRotateKey(spep_3+296,press,0);

--黒背景
entryFadeBg(spep_3, 0, 280, 0, 0, 0, 0, 180);  -- 黒　背景

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 60, 1, 0 );
changeAnime( spep_3 + 0, 1, 100 );
changeAnime( spep_3 + 40, 1, 108 );

setMoveKey( spep_3 + 0, 1, 726.3, 727.1 , 0 );
setMoveKey( spep_3 + 2, 1, 631.5, 635 , 0 );
setMoveKey( spep_3 + 4, 1, 536.7, 542.8 , 0 );
setMoveKey( spep_3 + 6, 1, 441.9, 450.7 , 0 );
setMoveKey( spep_3 + 8, 1, 347.1, 358.5 , 0 );
setMoveKey( spep_3 + 10, 1, 252.2, 266.4 , 0 );
setMoveKey( spep_3 + 12, 1, 157.4, 174.2 , 0 );


setScaleKey( spep_3 + 0, 1, 0.26, 0.26 );
setScaleKey( spep_3 + 2, 1, 0.4, 0.4 );
setScaleKey( spep_3 + 4, 1, 0.53, 0.53 );
setScaleKey( spep_3 + 6, 1, 0.66, 0.66 );
setScaleKey( spep_3 + 8, 1, 0.79, 0.79 );
setScaleKey( spep_3 + 10, 1, 0.92, 0.92 );
setScaleKey( spep_3 + 12, 1, 1.05, 1.05 );


setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 + 12, 1, 0 );


--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

SP_dodge = spep_3+12 ; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

pauseAll( SP_dodge, 67);

--キャラクターの固定
setMoveKey(SP_dodge, 1, 157.4, 174.2, 0 );
setScaleKey(SP_dodge , 1, 1.05, 1.05 );
setRotateKey(SP_dodge,   1, 0);

--キャラクターの固定
setMoveKey(SP_dodge+8, 1, 157.4, 174.2, 0 );
setScaleKey(SP_dodge+8 , 1, 1.05, 1.05  );
setRotateKey(SP_dodge+8,   1, 0);



setDisp(SP_dodge+9, 0, 0);
--setDisp(SP_dodge+9, 1, 0);
--setMoveKey(SP_dodge+9, 1, 0 , 0, 0);
setScaleKey(SP_dodge+9,  1 , 1.05, 1.05 );
setRotateKey(SP_dodge+9,   1, 0);

--setMoveKey(SP_dodge+10, 1, 0 , 0, 0);
setScaleKey(SP_dodge+10,  1 , 1.05, 1.05);
setRotateKey(SP_dodge+10,   1, 0);


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

setMoveKey( spep_3 + 14, 1, 152.8, 169.3 , 0 );
setMoveKey( spep_3 + 16, 1, 148.2, 164.3 , 0 );
setMoveKey( spep_3 + 18, 1, 143.5, 159.4 , 0 );
setMoveKey( spep_3 + 20, 1, 138.9, 154.5 , 0 );
setMoveKey( spep_3 + 22, 1, 134.3, 149.5 , 0 );
setMoveKey( spep_3 + 24, 1, 129.7, 144.6 , 0 );
setMoveKey( spep_3 + 26, 1, 125, 139.7 , 0 );
setMoveKey( spep_3 + 28, 1, 120.4, 134.8 , 0 );
setMoveKey( spep_3 + 30, 1, 115.8, 129.8 , 0 );
setMoveKey( spep_3 + 32, 1, 111.2, 124.9 , 0 );
setMoveKey( spep_3 + 34, 1, 106.5, 120 , 0 );
setMoveKey( spep_3 + 36, 1, 101.9, 115 , 0 );
setMoveKey( spep_3 + 39, 1, 97.3, 110.1 , 0 );
setMoveKey( spep_3 + 40, 1, 115, 74.6 , 0 );
setMoveKey( spep_3 + 42, 1, 132.8, 111.6 , 0 );
setMoveKey( spep_3 + 44, 1, 132.1, 97.5 , 0 );
setMoveKey( spep_3 + 46, 1, 149.9, 134.5 , 0 );
setMoveKey( spep_3 + 48, 1, 149.7, 120.3 , 0 );
setMoveKey( spep_3 + 50, 1, 167.1, 157.3 , 0 );
setMoveKey( spep_3 + 52, 1, 166, 144.4 , 0 );
setMoveKey( spep_3 + 54, 1, 184.2, 180.2 , 0 );

setScaleKey( spep_3 + 14, 1, 1.06, 1.06 );
setScaleKey( spep_3 + 16, 1, 1.07, 1.07 );
setScaleKey( spep_3 + 18, 1, 1.08, 1.08 );
setScaleKey( spep_3 + 20, 1, 1.1, 1.1 );
setScaleKey( spep_3 + 22, 1, 1.11, 1.11 );
setScaleKey( spep_3 + 24, 1, 1.12, 1.12 );
setScaleKey( spep_3 + 26, 1, 1.13, 1.13 );
setScaleKey( spep_3 + 28, 1, 1.14, 1.14 );
setScaleKey( spep_3 + 30, 1, 1.15, 1.15 );
setScaleKey( spep_3 + 32, 1, 1.17, 1.17 );
setScaleKey( spep_3 + 34, 1, 1.18, 1.18 );
setScaleKey( spep_3 + 36, 1, 1.19, 1.19 );
setScaleKey( spep_3 + 39, 1, 1.2, 1.2 );
setScaleKey( spep_3 + 40, 1, 1.21, 1.21 );
setScaleKey( spep_3 + 54, 1, 1.21, 1.21 );

setRotateKey( spep_3 + 39, 1, 0 );
setRotateKey( spep_3 + 40, 1, -15.2 );
setRotateKey( spep_3 + 54, 1, -15.2 );

----------------------------------------------------------
--文字エントリー
ctbikkuri = entryEffectLife( spep_3 + 12,  10001, 16, 0x100, -1, 0, 133.3, 369.6 );--!?
setEffMoveKey( spep_3 + 12, ctbikkuri, 133.3, 369.6 , 0 );
setEffMoveKey( spep_3 + 14, ctbikkuri, 136.2, 402.7 , 0 );
setEffMoveKey( spep_3 + 16, ctbikkuri, 122.4, 391.5 , 0 );
setEffMoveKey( spep_3 + 18, ctbikkuri, 126.2, 362.6 , 0 );
setEffMoveKey( spep_3 + 20, ctbikkuri, 113.6, 368.1 , 0 );
setEffMoveKey( spep_3 + 22, ctbikkuri, 115.9, 358.6 , 0 );
setEffMoveKey( spep_3 + 24, ctbikkuri, 103.3, 364.1 , 0 );
setEffMoveKey( spep_3 + 26, ctbikkuri, 105.6, 354.6 , 0 );
setEffMoveKey( spep_3 + 28, ctbikkuri, 93, 360.1 , 0 );
--setEffMoveKey( spep_3 + 30, ctbikkuri, 95.3, 350.6 , 0 );
--setEffMoveKey( spep_3 + 32, ctbikkuri, 90.2, 348.6 , 0 );

setEffScaleKey( spep_3 + 12, ctbikkuri, 2.32, 2.32 );
setEffScaleKey( spep_3 + 14, ctbikkuri, 3.41, 3.41 );
setEffScaleKey( spep_3 + 16, ctbikkuri, 2.95, 2.95 );
setEffScaleKey( spep_3 + 18, ctbikkuri, 2.49, 2.49 );
setEffScaleKey( spep_3 + 28, ctbikkuri, 2.49, 2.49 );

setEffRotateKey( spep_3 + 12, ctbikkuri, 0 );
setEffRotateKey( spep_3 + 28, ctbikkuri, 0 );

setEffAlphaKey( spep_3 + 12, ctbikkuri, 255 );
setEffAlphaKey( spep_3 + 28, ctbikkuri, 255 );
----------------------------------------------------------
--文字エントリー
ctzan = entryEffectLife( spep_3 + 36,  10010, 18, 0x100, -1, 0, -140.5, 237.5 );--ザン
setEffMoveKey( spep_3 + 36, ctzan, -140.5, 237.5 , 0 );
setEffMoveKey( spep_3 + 42, ctzan, -136.3, 236.4 , 0 );
setEffMoveKey( spep_3 + 44, ctzan, -144.2, 238.5 , 0 );
setEffMoveKey( spep_3 + 46, ctzan, -136.4, 236.4 , 0 );
setEffMoveKey( spep_3 + 48, ctzan, -143.3, 238.2 , 0 );
setEffMoveKey( spep_3 + 50, ctzan, -136.3, 236.3 , 0 );
setEffMoveKey( spep_3 + 52, ctzan, -142.4, 238 , 0 );
setEffMoveKey( spep_3 + 54, ctzan, -136.2, 236.3 , 0 );
--setEffMoveKey( spep_3 + 56, ctzan, -141.9, 237.8 , 0 );

setEffScaleKey( spep_3 + 36, ctzan, 1.54, 1.54 );
setEffScaleKey( spep_3 + 42, ctzan, 2.17, 2.17 );
setEffScaleKey( spep_3 + 44, ctzan, 2.8, 2.8 );
setEffScaleKey( spep_3 + 46, ctzan, 2.65, 2.65 );
setEffScaleKey( spep_3 + 48, ctzan, 2.5, 2.5 );
setEffScaleKey( spep_3 + 50, ctzan, 2.35, 2.35 );
setEffScaleKey( spep_3 + 52, ctzan, 2.2, 2.2 );
setEffScaleKey( spep_3 + 54, ctzan, 2.05, 2.05 );
--setEffScaleKey( spep_3 + 56, ctzan, 2.05, 2.05 );

setEffRotateKey( spep_3 + 36, ctzan, -18.5 );
setEffRotateKey( spep_3 + 54, ctzan, -18.5 );

setEffAlphaKey( spep_3 + 36, ctzan, 255 );
setEffAlphaKey( spep_3 + 54, ctzan, 255 );
----------------------------------------------------------

--文字エントリー

ctdogon = entryEffectLife( spep_3 + 64,  10018, 190, 0x100, -1, 0, -49.5, 397.3 );--ドゴン
setEffMoveKey( spep_3 + 62, ctdogon, -49.5, 397.3 , 0 );
setEffMoveKey( spep_3 + 70, ctdogon, -48, 396.8 , 0 );
setEffMoveKey( spep_3 + 72, ctdogon, -48.1, 396.7 , 0 );
setEffMoveKey( spep_3 + 74, ctdogon, -50.9, 397.3 , 0 );
setEffMoveKey( spep_3 + 76, ctdogon, -48, 396.7 , 0 );
setEffMoveKey( spep_3 + 78, ctdogon, -50.4, 397.3 , 0 );
setEffMoveKey( spep_3 + 80, ctdogon, -48, 396.7 , 0 );
setEffMoveKey( spep_3 + 82, ctdogon, -50.4, 397.3 , 0 );
setEffMoveKey( spep_3 + 84, ctdogon, -48, 396.7 , 0 );
setEffMoveKey( spep_3 + 86, ctdogon, -50.4, 397.3 , 0 );
setEffMoveKey( spep_3 + 88, ctdogon, -48, 396.7 , 0 );
setEffMoveKey( spep_3 + 90, ctdogon, -50.3, 397.3 , 0 );
setEffMoveKey( spep_3 + 92, ctdogon, -48, 396.7 , 0 );
setEffMoveKey( spep_3 + 94, ctdogon, -50.3, 397.3 , 0 );
setEffMoveKey( spep_3 + 96, ctdogon, -48, 396.7 , 0 );
setEffMoveKey( spep_3 + 98, ctdogon, -50.3, 397.3 , 0 );
setEffMoveKey( spep_3 + 100, ctdogon, -48, 396.7 , 0 );
setEffMoveKey( spep_3 + 102, ctdogon, -50.3, 397.3 , 0 );
setEffMoveKey( spep_3 + 104, ctdogon, -48, 396.7 , 0 );
setEffMoveKey( spep_3 + 106, ctdogon, -50.3, 397.2 , 0 );
setEffMoveKey( spep_3 + 108, ctdogon, -48, 396.7 , 0 );
setEffMoveKey( spep_3 + 110, ctdogon, -50.3, 397.2 , 0 );
setEffMoveKey( spep_3 + 112, ctdogon, -48, 396.7 , 0 );
setEffMoveKey( spep_3 + 114, ctdogon, -50.3, 397.2 , 0 );
setEffMoveKey( spep_3 + 116, ctdogon, -48, 396.7 , 0 );
setEffMoveKey( spep_3 + 118, ctdogon, -50.3, 397.2 , 0 );
setEffMoveKey( spep_3 + 120, ctdogon, -48, 396.7 , 0 );
setEffMoveKey( spep_3 + 122, ctdogon, -50.3, 397.2 , 0 );
setEffMoveKey( spep_3 + 124, ctdogon, -48, 396.7 , 0 );
setEffMoveKey( spep_3 + 126, ctdogon, -50.3, 397.2 , 0 );
setEffMoveKey( spep_3 + 128, ctdogon, -48, 396.7 , 0 );
setEffMoveKey( spep_3 + 130, ctdogon, -50.3, 397.2 , 0 );
setEffMoveKey( spep_3 + 132, ctdogon, -48, 396.7 , 0 );
setEffMoveKey( spep_3 + 134, ctdogon, -50.3, 397.2 , 0 );
setEffMoveKey( spep_3 + 136, ctdogon, -48, 396.7 , 0 );
setEffMoveKey( spep_3 + 138, ctdogon, -50.3, 397.2 , 0 );
setEffMoveKey( spep_3 + 140, ctdogon, -48, 396.7 , 0 );
setEffMoveKey( spep_3 + 142, ctdogon, -50.3, 397.2 , 0 );
setEffMoveKey( spep_3 + 144, ctdogon, -48, 396.7 , 0 );
setEffMoveKey( spep_3 + 146, ctdogon, -50.2, 397.2 , 0 );
setEffMoveKey( spep_3 + 148, ctdogon, -48, 396.7 , 0 );
setEffMoveKey( spep_3 + 150, ctdogon, -50.2, 397.2 , 0 );
setEffMoveKey( spep_3 + 152, ctdogon, -48, 396.7 , 0 );
setEffMoveKey( spep_3 + 154, ctdogon, -50.2, 397.2 , 0 );
setEffMoveKey( spep_3 + 156, ctdogon, -48, 396.7 , 0 );
setEffMoveKey( spep_3 + 158, ctdogon, -50.2, 397.2 , 0 );
setEffMoveKey( spep_3 + 160, ctdogon, -48, 396.6 , 0 );
setEffMoveKey( spep_3 + 162, ctdogon, -50.2, 397.2 , 0 );
setEffMoveKey( spep_3 + 164, ctdogon, -48, 396.6 , 0 );
setEffMoveKey( spep_3 + 166, ctdogon, -50.2, 397.2 , 0 );
setEffMoveKey( spep_3 + 168, ctdogon, -48, 396.6 , 0 );
setEffMoveKey( spep_3 + 170, ctdogon, -50.2, 397.2 , 0 );
setEffMoveKey( spep_3 + 172, ctdogon, -48, 396.6 , 0 );
setEffMoveKey( spep_3 + 174, ctdogon, -50.2, 397.1 , 0 );
setEffMoveKey( spep_3 + 176, ctdogon, -48, 396.6 , 0 );
setEffMoveKey( spep_3 + 178, ctdogon, -50.2, 397.1 , 0 );
setEffMoveKey( spep_3 + 180, ctdogon, -48, 396.6 , 0 );
setEffMoveKey( spep_3 + 182, ctdogon, -50.2, 397.1 , 0 );
setEffMoveKey( spep_3 + 184, ctdogon, -48, 396.6 , 0 );
setEffMoveKey( spep_3 + 186, ctdogon, -50.2, 397.1 , 0 );
setEffMoveKey( spep_3 + 188, ctdogon, -48, 396.6 , 0 );
setEffMoveKey( spep_3 + 190, ctdogon, -50.2, 397.1 , 0 );
setEffMoveKey( spep_3 + 192, ctdogon, -48, 396.6 , 0 );
setEffMoveKey( spep_3 + 194, ctdogon, -50.2, 397.1 , 0 );
setEffMoveKey( spep_3 + 196, ctdogon, -48, 396.6 , 0 );
setEffMoveKey( spep_3 + 198, ctdogon, -50.2, 397.1 , 0 );
setEffMoveKey( spep_3 + 200, ctdogon, -48, 396.6 , 0 );
setEffMoveKey( spep_3 + 202, ctdogon, -50.2, 397.1 , 0 );
setEffMoveKey( spep_3 + 204, ctdogon, -48, 396.6 , 0 );
setEffMoveKey( spep_3 + 206, ctdogon, -50.1, 397.1 , 0 );
setEffMoveKey( spep_3 + 208, ctdogon, -48, 396.6 , 0 );
setEffMoveKey( spep_3 + 210, ctdogon, -50.1, 397.1 , 0 );
setEffMoveKey( spep_3 + 212, ctdogon, -48, 396.6 , 0 );
setEffMoveKey( spep_3 + 214, ctdogon, -50.1, 397.1 , 0 );
setEffMoveKey( spep_3 + 216, ctdogon, -48, 396.6 , 0 );
setEffMoveKey( spep_3 + 218, ctdogon, -50.1, 397.1 , 0 );
setEffMoveKey( spep_3 + 220, ctdogon, -48, 396.6 , 0 );
setEffMoveKey( spep_3 + 222, ctdogon, -50.1, 397.1 , 0 );
setEffMoveKey( spep_3 + 224, ctdogon, -48, 396.6 , 0 );
setEffMoveKey( spep_3 + 226, ctdogon, -50.1, 397.1 , 0 );
setEffMoveKey( spep_3 + 228, ctdogon, -48, 396.6 , 0 );
setEffMoveKey( spep_3 + 230, ctdogon, -50.1, 397.1 , 0 );
setEffMoveKey( spep_3 + 232, ctdogon, -48, 396.6 , 0 );
setEffMoveKey( spep_3 + 234, ctdogon, -50.1, 397.1 , 0 );
setEffMoveKey( spep_3 + 236, ctdogon, -48, 396.6 , 0 );
setEffMoveKey( spep_3 + 238, ctdogon, -50.1, 397.1 , 0 );
setEffMoveKey( spep_3 + 240, ctdogon, -48, 396.6 , 0 );
setEffMoveKey( spep_3 + 242, ctdogon, -50.1, 397.1 , 0 );
setEffMoveKey( spep_3 + 244, ctdogon, -48, 396.6 , 0 );
setEffMoveKey( spep_3 + 246, ctdogon, -50.1, 397.1 , 0 );
setEffMoveKey( spep_3 + 248, ctdogon, -48, 396.6 , 0 );
setEffMoveKey( spep_3 + 250, ctdogon, -50.1, 397.1 , 0 );
setEffMoveKey( spep_3 + 252, ctdogon, -48, 396.6 , 0 );
setEffMoveKey( spep_3 + 254, ctdogon, -50.1, 397.1 , 0 );
--setEffMoveKey( spep_3 + 256, ctdogon, -48, 396.7 , 0 );
--setEffMoveKey( spep_3 + 258, ctdogon, -50.1, 397.1 , 0 );
--setEffMoveKey( spep_3 + 260, ctdogon, -50.1, 397.2 , 0 );


-- ctdogon
setEffScaleKey( spep_3 +62, ctdogon, 1.78, 1.78 );
setEffScaleKey( spep_3 + 70, ctdogon, 2.72, 2.72 );
setEffScaleKey( spep_3 + 72, ctdogon, 3.67, 3.67 );
setEffScaleKey( spep_3 + 74, ctdogon, 3.39, 3.39 );
setEffScaleKey( spep_3 + 76, ctdogon, 3.11, 3.11 );
setEffScaleKey( spep_3 + 78, ctdogon, 2.83, 2.83 );
setEffScaleKey( spep_3 + 80, ctdogon, 2.83, 2.83 );
setEffScaleKey( spep_3 + 82, ctdogon, 2.82, 2.82 );
setEffScaleKey( spep_3 + 84, ctdogon, 2.82, 2.82 );
setEffScaleKey( spep_3 + 86, ctdogon, 2.81, 2.81 );
setEffScaleKey( spep_3 + 90, ctdogon, 2.81, 2.81 );
setEffScaleKey( spep_3 + 92, ctdogon, 2.8, 2.8 );
setEffScaleKey( spep_3 + 94, ctdogon, 2.8, 2.8 );
setEffScaleKey( spep_3 + 96, ctdogon, 2.79, 2.79 );
setEffScaleKey( spep_3 + 98, ctdogon, 2.79, 2.79 );
setEffScaleKey( spep_3 + 100, ctdogon, 2.78, 2.78 );
setEffScaleKey( spep_3 + 104, ctdogon, 2.78, 2.78 );
setEffScaleKey( spep_3 + 106, ctdogon, 2.77, 2.77 );
setEffScaleKey( spep_3 + 108, ctdogon, 2.77, 2.77 );
setEffScaleKey( spep_3 + 110, ctdogon, 2.76, 2.76 );
setEffScaleKey( spep_3 + 114, ctdogon, 2.76, 2.76 );
setEffScaleKey( spep_3 + 116, ctdogon, 2.75, 2.75 );
setEffScaleKey( spep_3 + 118, ctdogon, 2.75, 2.75 );
setEffScaleKey( spep_3 + 120, ctdogon, 2.74, 2.74 );
setEffScaleKey( spep_3 + 122, ctdogon, 2.74, 2.74 );
setEffScaleKey( spep_3 + 124, ctdogon, 2.73, 2.73 );
setEffScaleKey( spep_3 + 128, ctdogon, 2.73, 2.73 );
setEffScaleKey( spep_3 + 130, ctdogon, 2.72, 2.72 );
setEffScaleKey( spep_3 + 132, ctdogon, 2.72, 2.72 );
setEffScaleKey( spep_3 + 134, ctdogon, 2.71, 2.71 );
setEffScaleKey( spep_3 + 138, ctdogon, 2.71, 2.71 );
setEffScaleKey( spep_3 + 140, ctdogon, 2.7, 2.7 );
setEffScaleKey( spep_3 + 142, ctdogon, 2.7, 2.7 );
setEffScaleKey( spep_3 + 144, ctdogon, 2.69, 2.69 );
setEffScaleKey( spep_3 + 146, ctdogon, 2.69, 2.69 );
setEffScaleKey( spep_3 + 148, ctdogon, 2.68, 2.68 );
setEffScaleKey( spep_3 + 152, ctdogon, 2.68, 2.68 );
setEffScaleKey( spep_3 + 154, ctdogon, 2.67, 2.67 );
setEffScaleKey( spep_3 + 156, ctdogon, 2.67, 2.67 );
setEffScaleKey( spep_3 + 158, ctdogon, 2.66, 2.66 );
setEffScaleKey( spep_3 + 162, ctdogon, 2.66, 2.66 );
setEffScaleKey( spep_3 + 164, ctdogon, 2.65, 2.65 );
setEffScaleKey( spep_3 + 166, ctdogon, 2.65, 2.65 );
setEffScaleKey( spep_3 + 168, ctdogon, 2.64, 2.64 );
setEffScaleKey( spep_3 + 170, ctdogon, 2.64, 2.64 );
setEffScaleKey( spep_3 + 172, ctdogon, 2.63, 2.63 );
setEffScaleKey( spep_3 + 176, ctdogon, 2.63, 2.63 );
setEffScaleKey( spep_3 + 178, ctdogon, 2.62, 2.62 );
setEffScaleKey( spep_3 + 180, ctdogon, 2.62, 2.62 );
setEffScaleKey( spep_3 + 182, ctdogon, 2.61, 2.61 );
setEffScaleKey( spep_3 + 186, ctdogon, 2.61, 2.61 );
setEffScaleKey( spep_3 + 188, ctdogon, 2.6, 2.6 );
setEffScaleKey( spep_3 + 190, ctdogon, 2.6, 2.6 );
setEffScaleKey( spep_3 + 192, ctdogon, 2.59, 2.59 );
setEffScaleKey( spep_3 + 194, ctdogon, 2.59, 2.59 );
setEffScaleKey( spep_3 + 196, ctdogon, 2.58, 2.58 );
setEffScaleKey( spep_3 + 200, ctdogon, 2.58, 2.58 );
setEffScaleKey( spep_3 + 202, ctdogon, 2.57, 2.57 );
setEffScaleKey( spep_3 + 204, ctdogon, 2.57, 2.57 );
setEffScaleKey( spep_3 + 206, ctdogon, 2.56, 2.56 );
setEffScaleKey( spep_3 + 210, ctdogon, 2.56, 2.56 );
setEffScaleKey( spep_3 + 212, ctdogon, 2.55, 2.55 );
setEffScaleKey( spep_3 + 214, ctdogon, 2.55, 2.55 );
setEffScaleKey( spep_3 + 216, ctdogon, 2.54, 2.54 );
setEffScaleKey( spep_3 + 218, ctdogon, 2.54, 2.54 );
setEffScaleKey( spep_3 + 220, ctdogon, 2.53, 2.53 );
setEffScaleKey( spep_3 + 224, ctdogon, 2.53, 2.53 );
setEffScaleKey( spep_3 + 226, ctdogon, 2.52, 2.52 );
setEffScaleKey( spep_3 + 228, ctdogon, 2.52, 2.52 );
setEffScaleKey( spep_3 + 230, ctdogon, 2.51, 2.51 );
setEffScaleKey( spep_3 + 234, ctdogon, 2.51, 2.51 );
setEffScaleKey( spep_3 + 236, ctdogon, 2.5, 2.5 );
setEffScaleKey( spep_3 + 238, ctdogon, 2.5, 2.5 );
setEffScaleKey( spep_3 + 240, ctdogon, 2.49, 2.49 );
setEffScaleKey( spep_3 + 242, ctdogon, 2.49, 2.49 );
setEffScaleKey( spep_3 + 244, ctdogon, 2.48, 2.48 );
setEffScaleKey( spep_3 + 248, ctdogon, 2.48, 2.48 );
setEffScaleKey( spep_3 + 250, ctdogon, 2.47, 2.47 );
setEffScaleKey( spep_3 + 252, ctdogon, 2.47, 2.47 );
setEffScaleKey( spep_3 + 254, ctdogon, 2.46, 2.46 );
--setEffScaleKey( spep_3 + 256, ctdogon, 2.46, 2.46 );
--setEffScaleKey( spep_3 + 258, ctdogon, 2.45, 2.45 );
--setEffScaleKey( spep_3 + 260, ctdogon, 2.45, 2.45 );

setEffRotateKey( spep_3 + 62, ctdogon, -22.5 );
setEffRotateKey( spep_3 + 116, ctdogon, -22.5 );
setEffRotateKey( spep_3 + 118, ctdogon, -22.4 );
setEffRotateKey( spep_3 + 192, ctdogon, -22.4 );
setEffRotateKey( spep_3 + 194, ctdogon, -22.3 );
setEffRotateKey( spep_3 + 254, ctdogon, -22.3 );

setEffAlphaKey( spep_3 + 62, ctdogon, 255 );
setEffAlphaKey( spep_3 + 232, ctdogon, 255 );
setEffAlphaKey( spep_3 + 234, ctdogon, 237 );
setEffAlphaKey( spep_3 + 236, ctdogon, 219 );
setEffAlphaKey( spep_3 + 238, ctdogon, 200 );
setEffAlphaKey( spep_3 + 240, ctdogon, 182 );
setEffAlphaKey( spep_3 + 242, ctdogon, 164 );
setEffAlphaKey( spep_3 + 244, ctdogon, 146 );
setEffAlphaKey( spep_3 + 246, ctdogon, 128 );
setEffAlphaKey( spep_3 + 248, ctdogon, 109 );
setEffAlphaKey( spep_3 + 250, ctdogon, 91 );
setEffAlphaKey( spep_3 + 252, ctdogon, 55 );
setEffAlphaKey( spep_3 + 254, ctdogon, 0 );
--setEffAlphaKey( spep_3 + 256, ctdogon, 0 );
--setEffAlphaKey( spep_3 + 258, ctdogon, 18 );
--setEffAlphaKey( spep_3 + 260, ctdogon, 0 );

--流線
ryuusen2 = entryEffectLife( spep_3 + 0,  921, 104, 0x80, -1, 0, 23.5, 12.9 );
setEffMoveKey( spep_3 + 0, ryuusen2, 23.5, 16.9 , 0 );
setEffMoveKey( spep_3 + 104, ryuusen2, 23.5, 16.9 , 0 );

setEffScaleKey( spep_3 + 0, ryuusen2, 1.59, 1.42 );
setEffScaleKey( spep_3 + 104, ryuusen2, 1.59, 1.42 );

setEffRotateKey( spep_3 + 0, ryuusen2, -55 );
setEffRotateKey( spep_3 + 104, ryuusen2, -55 );

setEffAlphaKey( spep_3 + 0, ryuusen2, 255 );
setEffAlphaKey( spep_3 + 94, ryuusen2, 255 );
setEffAlphaKey( spep_3 + 96, ryuusen2, 204 );
setEffAlphaKey( spep_3 + 98, ryuusen2, 153 );
setEffAlphaKey( spep_3 + 100, ryuusen2, 102 );
setEffAlphaKey( spep_3 + 102, ryuusen2, 51 );
setEffAlphaKey( spep_3 + 104, ryuusen2, 0 );

--集中線
shuchuse3 = entryEffectLife( spep_3 + 0,  906, 280, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_3 + 0, shuchuse3, 0, 0 , 0 );
setEffMoveKey( spep_3 + 280, shuchuse3, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchuse3, 1.8, 1.8 );
setEffScaleKey( spep_3 + 280, shuchuse3, 1.8, 1.8 );

setEffRotateKey( spep_3 + 0, shuchuse3, 0 );
setEffRotateKey( spep_3 + 280, shuchuse3, 0 );

-- ** エフェクト等 ** --
entryFade(spep_3+36,0,2,4,fcolor_r,fcolor_g,fcolor_b,180);     -- white 
entryFade(spep_3+48,6,8,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white 

--SE
playSe( spep_3, SE_06); --気円斬を投げる
playSe( spep_3+36, 1032); --気円斬が当たる
playSe( spep_3+64, 1023); --爆発

-- ダメージ表示
dealDamage(spep_3+150);
entryFade( spep_3+270, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_3+280);

else 
------------------------------------------------------
-- 敵側
------------------------------------------------------
--------------------------------------
--構え
--------------------------------------
--------------------------------------
--構え
--------------------------------------
spep_0=0;

--エフェクトの再生
tame=entryEffectLife(spep_0,SP_01,123,0x100,-1,0,0,0);

setEffMoveKey(spep_0,tame,0,0,0);
setEffMoveKey(spep_0+123,tame,0,0,0);
setEffScaleKey(spep_0,tame,1.0,1.0);
setEffScaleKey(spep_0+123,tame,1.0,1.0);
setEffAlphaKey(spep_0,tame,255);
setEffAlphaKey(spep_0+123,tame,255);
setEffRotateKey(spep_0,tame,0);
setEffRotateKey(spep_0+123,tame,0);

--集中線
shuchuse1 = entryEffectLife( spep_0 + 17,  906, 106, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 17, shuchuse1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 123, shuchuse1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 17, shuchuse1, 1.8, 1.8 );
setEffScaleKey( spep_0 + 123, shuchuse1, 1.8, 1.8);

setEffRotateKey( spep_0 + 17, shuchuse1, 0 );
setEffRotateKey( spep_0 + 123, shuchuse1, 0 );

--顔カットイン
--speff=entryEffect(spep_0+19,1504,0x100,-1,0,0,0);  --カットイン(顔)
--setEffReplaceTexture(speff,3,2);  --カットイン差し替え
--speff1=entryEffect(spep_0+19,1505,0x100,-1,0,0,0);  --カットイン(セリフ)
--setEffReplaceTexture(speff1,4,5);  --セリフカットイン差し替え

--文字エントリー
ctgogo=entryEffectLife(spep_0+32,190006,69,0x100,-1,-10,520);--ゴゴゴ
setEffMoveKey(spep_0+32,ctgogo,-10,520,0);
setEffMoveKey(spep_0+101,ctgogo,-10,520,0);
setEffScaleKey(spep_0+32, ctgogo, -0.7, 0.7);
setEffScaleKey(spep_0+101, ctgogo, -0.7, 0.7);

--文字エントリー
ctba = entryEffectLife( spep_0 + 46,  10022, 22, 0x100, -1, 0, -148.9, 164 );--バッ
setEffMoveKey( spep_0 + 46, ctba, -148.9, 164 , 0 );
setEffMoveKey( spep_0 + 48, ctba, -154.3, 166.3 , 0 );
setEffMoveKey( spep_0 + 50, ctba, -148.9, 164 , 0 );
setEffMoveKey( spep_0 + 52, ctba, -155.4, 166.6 , 0 );
setEffMoveKey( spep_0 + 54, ctba, -149, 164 , 0 );
setEffMoveKey( spep_0 + 56, ctba, -149, 164 , 0 );
setEffMoveKey( spep_0 + 58, ctba, -153.7, 166.4 , 0 );
setEffMoveKey( spep_0 + 60, ctba, -148.9, 164.1 , 0 );
setEffMoveKey( spep_0 + 62, ctba, -153.6, 166.5 , 0 );
setEffMoveKey( spep_0 + 64, ctba, -148.9, 164.1 , 0 );
setEffMoveKey( spep_0 + 66, ctba, -153.7, 166.4 , 0 );
setEffMoveKey( spep_0 + 68, ctba, -153.8, 166.4 , 0 );

setEffScaleKey( spep_0 + 46, ctba, 0.82, 0.82 );
setEffScaleKey( spep_0 + 48, ctba, 1.22, 1.22 );
setEffScaleKey( spep_0 + 50, ctba, 1.62, 1.62 );
setEffScaleKey( spep_0 + 52, ctba, 1.45, 1.45 );
setEffScaleKey( spep_0 + 54, ctba, 1.28, 1.28 );
setEffScaleKey( spep_0 + 56, ctba, 1.11, 1.11 );
setEffScaleKey( spep_0 + 58, ctba, 1.11, 1.11 );
setEffScaleKey( spep_0 + 60, ctba, 1.1, 1.1 );
setEffScaleKey( spep_0 + 64, ctba, 1.1, 1.1 );
setEffScaleKey( spep_0 + 66, ctba, 1.11, 1.11 );
setEffScaleKey( spep_0 + 68, ctba, 1.11, 1.11 );

setEffRotateKey( spep_0 + 46, ctba, -15 );
setEffRotateKey( spep_0 + 48, ctba, -18.7 );
setEffRotateKey( spep_0 + 50, ctba, -22.4 );
setEffRotateKey( spep_0 + 52, ctba, -19.9 );
setEffRotateKey( spep_0 + 54, ctba, -17.5 );
setEffRotateKey( spep_0 + 56, ctba, -15 );
setEffRotateKey( spep_0 + 68, ctba, -15 );

setEffAlphaKey( spep_0 + 46, ctba, 255 );
setEffAlphaKey( spep_0 + 62, ctba, 255 );
setEffAlphaKey( spep_0 + 64, ctba, 170 );
setEffAlphaKey( spep_0 + 66, ctba, 85 );
setEffAlphaKey( spep_0 + 68, ctba, 0 );

--SE
playSe( spep_0+32, SE_04); --ゴゴゴ

-- ** エフェクト等 ** --
entryFade(spep_0,0,0,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_0+17,0,1,4,fcolor_r,fcolor_g,fcolor_b,140);     -- white fade
entryFade(spep_0+118,5,4,2,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--黒背景
entryFadeBg(spep_0, 0, 20, 0, 0, 0, 0, 100);  -- 黒　背景
entryFadeBg(spep_0+18, 0, 105, 0, 0, 0, 0, 180);  -- 黒　背景

--次の準備
spep_1=spep_0+122;

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

--------------------------------------
--打つ〜放つ
--------------------------------------

--エフェクトの再生
strike=entryEffectLife(spep_2,SP_02x,196,0x100,-1,0,0,0);

setEffMoveKey(spep_2,strike,0,0,0);
setEffMoveKey(spep_2+196,strike,0,0,0);
setEffScaleKey(spep_2,strike,-1.0,1.0);
setEffScaleKey(spep_2+196,strike,-1.0,1.0);
setEffAlphaKey(spep_2,strike,255);
setEffAlphaKey(spep_2+196,strike,255);
setEffRotateKey(spep_2,strike,0);
setEffRotateKey(spep_2+196,strike,0);


--文字エントリー
ctdon = entryEffectLife( spep_2 + 40,  10019, 34, 0x100, -1, 0, -108.2, 340.6 );--ドン

setEffMoveKey( spep_2 + 40, ctdon, -108.2, 340.6 , 0 );
setEffMoveKey( spep_2 + 42, ctdon, -108.1, 340.8 , 0 );
setEffMoveKey( spep_2 + 44, ctdon, -121.1, 350 , 0 );
setEffMoveKey( spep_2 + 46, ctdon, -108.1, 340.6 , 0 );
setEffMoveKey( spep_2 + 48, ctdon, -117.3, 347.1 , 0 );
setEffMoveKey( spep_2 + 50, ctdon, -108.1, 340.6 , 0 );
setEffMoveKey( spep_2 + 52, ctdon, -117, 346.9 , 0 );
setEffMoveKey( spep_2 + 54, ctdon, -108.1, 340.5 , 0 );
setEffMoveKey( spep_2 + 56, ctdon, -116.8, 346.7 , 0 );
setEffMoveKey( spep_2 + 58, ctdon, -108.1, 340.5 , 0 );
setEffMoveKey( spep_2 + 60, ctdon, -116.5, 346.5 , 0 );
setEffMoveKey( spep_2 + 62, ctdon, -108.1, 340.5 , 0 );
setEffMoveKey( spep_2 + 64, ctdon, -116.3, 346.3 , 0 );
setEffMoveKey( spep_2 + 66, ctdon, -108.1, 340.5 , 0 );
setEffMoveKey( spep_2 + 68, ctdon, -116.1, 346.2 , 0 );
setEffMoveKey( spep_2 + 70, ctdon, -108.1, 340.5 , 0 );
setEffMoveKey( spep_2 + 72, ctdon, -116, 346.2 , 0 );
setEffMoveKey( spep_2 + 74, ctdon, -116, 346.2 , 0 );

setEffScaleKey( spep_2 + 40, ctdon, 2.09, 2.09 );
setEffScaleKey( spep_2 + 42, ctdon, 4.34, 4.34 );
setEffScaleKey( spep_2 + 44, ctdon, 3.77, 3.77 );
setEffScaleKey( spep_2 + 46, ctdon, 3.21, 3.21 );
setEffScaleKey( spep_2 + 48, ctdon, 2.64, 2.64 );
setEffScaleKey( spep_2 + 50, ctdon, 2.6, 2.6 );
setEffScaleKey( spep_2 + 52, ctdon, 2.57, 2.57 );
setEffScaleKey( spep_2 + 54, ctdon, 2.53, 2.53 );
setEffScaleKey( spep_2 + 56, ctdon, 2.5, 2.5 );
setEffScaleKey( spep_2 + 58, ctdon, 2.46, 2.46 );
setEffScaleKey( spep_2 + 60, ctdon, 2.43, 2.43 );
setEffScaleKey( spep_2 + 62, ctdon, 2.39, 2.39 );
setEffScaleKey( spep_2 + 64, ctdon, 2.36, 2.36 );
setEffScaleKey( spep_2 + 66, ctdon, 2.32, 2.32 );
setEffScaleKey( spep_2 + 68, ctdon, 2.32, 2.32 );
setEffScaleKey( spep_2 + 70, ctdon, 2.31, 2.31 );
setEffScaleKey( spep_2 + 72, ctdon, 2.3, 2.3 );
setEffScaleKey( spep_2 + 74, ctdon, 2.3, 2.3 );

setEffRotateKey( spep_2 + 40, ctdon, -9.5 );
setEffRotateKey( spep_2 + 56, ctdon, -9.5 );
setEffRotateKey( spep_2 + 58, ctdon, -9.4 );
setEffRotateKey( spep_2 + 70, ctdon, -9.4 );
setEffRotateKey( spep_2 + 72, ctdon, -9.5 );
setEffRotateKey( spep_2 + 74, ctdon, -9.5 );

setEffAlphaKey( spep_2 + 40, ctdon, 255 );
setEffAlphaKey( spep_2 + 66, ctdon, 255 );
setEffAlphaKey( spep_2 + 68, ctdon, 191 );
setEffAlphaKey( spep_2 + 70, ctdon, 128 );
setEffAlphaKey( spep_2 + 72, ctdon, 64 );
setEffAlphaKey( spep_2 + 74, ctdon, 0 );

--文字エントリー
ctshun = entryEffectLife( spep_2 + 94,  10011, 16, 0x100, -1, 0, -52.1, 324.5 );--シュンッ

setEffMoveKey( spep_2 + 94, ctshun, -52.1, 324.5 , 0 );
setEffMoveKey( spep_2 + 104, ctshun, -52.1, 324.5 , 0 );
setEffMoveKey( spep_2 + 106, ctshun, -52, 324.4 , 0 );
setEffMoveKey( spep_2 + 110, ctshun, -52, 324.4 , 0 );

setEffScaleKey( spep_2 + 94, ctshun, 1.65, 1.65 );
setEffScaleKey( spep_2 + 96, ctshun, 2.78, 2.78 );
setEffScaleKey( spep_2 + 98, ctshun, 2.46, 2.46 );
setEffScaleKey( spep_2 + 100, ctshun, 2.14, 2.14 );
setEffScaleKey( spep_2 + 102, ctshun, 1.82, 1.82 );
setEffScaleKey( spep_2 + 104, ctshun, 1.79, 1.79 );
setEffScaleKey( spep_2 + 106, ctshun, 1.77, 1.77 );
setEffScaleKey( spep_2 + 108, ctshun, 1.74, 1.74 );
setEffScaleKey( spep_2 + 110, ctshun, 1.71, 1.71 );

setEffRotateKey( spep_2 + 94, ctshun, -8.7 );
setEffRotateKey( spep_2 + 110, ctshun, -8.7 );

setEffAlphaKey( spep_2 + 94, ctshun, 255 );
setEffAlphaKey( spep_2 + 100, ctshun, 255 );
setEffAlphaKey( spep_2 + 102, ctshun, 191 );
setEffAlphaKey( spep_2 + 104, ctshun, 128 );
setEffAlphaKey( spep_2 + 106, ctshun, 64 );
setEffAlphaKey( spep_2 + 110, ctshun, 0 );

---------------------------------------------------------------------
--文字エントリー

ctzuo = entryEffectLife( spep_2 + 130,  10012, 30, 0x100, -1, 0, 78.7, 260.5 ); --ズオ

setEffMoveKey( spep_2 + 130, ctzuo, 78.7, 260.5 , 0 );
setEffMoveKey( spep_2 + 132, ctzuo, 117.2, 303.7 , 0 );
setEffMoveKey( spep_2 + 134, ctzuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_2 + 136, ctzuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_2 + 138, ctzuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_2 + 140, ctzuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_2 + 142, ctzuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_2 + 144, ctzuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_2 + 146, ctzuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_2 + 148, ctzuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_2 + 150, ctzuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_2 + 152, ctzuo, 173.1, 345.5 , 0 );
setEffMoveKey( spep_2 + 154, ctzuo, 166.7, 367.9 , 0 );
setEffMoveKey( spep_2 + 156, ctzuo, 211.6, 339 , 0 );
setEffMoveKey( spep_2 + 158, ctzuo, 195.7, 370.9 , 0 );
setEffMoveKey( spep_2 + 160, ctzuo, 210.3, 372.4 , 0 );

setEffScaleKey( spep_2 + 130, ctzuo, 0.34, 0.34 );
setEffScaleKey( spep_2 + 132, ctzuo, 1.54, 1.54 );
setEffScaleKey( spep_2 + 134, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_2 + 150, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_2 + 152, ctzuo, 3.55, 3.55 );
setEffScaleKey( spep_2 + 154, ctzuo, 4.37, 4.37 );
setEffScaleKey( spep_2 + 156, ctzuo, 5.19, 5.19 );
setEffScaleKey( spep_2 + 158, ctzuo, 6.01, 6.01 );
setEffScaleKey( spep_2 + 160, ctzuo, 6.82, 6.82 );

setEffRotateKey( spep_2 + 130, ctzuo, 27.2 );
setEffRotateKey( spep_2 + 160, ctzuo, 27.2 );

setEffAlphaKey( spep_2 + 130, ctzuo, 255 );
setEffAlphaKey( spep_2 + 150, ctzuo, 255 );
setEffAlphaKey( spep_2 + 152, ctzuo, 204 );
setEffAlphaKey( spep_2 + 154, ctzuo, 153 );
setEffAlphaKey( spep_2 + 156, ctzuo, 102 );
setEffAlphaKey( spep_2 + 158, ctzuo, 51 );
setEffAlphaKey( spep_2 + 160, ctzuo, 0 );
---------------------------------------------------------------------


--集中線
shuchuse2 = entryEffectLife( spep_2 + 0,  906, 196, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_2 + 0, shuchuse2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 196, shuchuse2, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchuse2, 1.8, 1.8 );
setEffScaleKey( spep_2 + 196, shuchuse2, 1.8, 1.8 );

setEffRotateKey( spep_2 + 0, shuchuse2, 0 );
setEffRotateKey( spep_2 + 196, shuchuse2, 0 );

--流線
ryuusen1 = entryEffectLife( spep_2 + 130,  923, 66, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 130, ryuusen1, 0, 0 , 0 );
setEffMoveKey( spep_2 + 196, ryuusen1, 0, 0 , 0 );

setEffScaleKey( spep_2 + 130, ryuusen1, 1.0, 1.0 );
setEffScaleKey( spep_2 + 196, ryuusen1, 1.0, 1.0 );

setEffRotateKey( spep_2 + 130, ryuusen1, 0 );
setEffRotateKey( spep_2 + 196, ryuusen1, 0 );

setEffAlphaKey( spep_2 + 130, ryuusen1, 255 );
setEffAlphaKey( spep_2 + 196, ryuusen1, 255 );

-- ** エフェクト等 ** --
entryFade(spep_2+36,0,4,6,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_2+128,0,6,8,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_2+190,4,4,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--SE
playSe( spep_2+40, 1025); --銃声
playSe( spep_2+94, 43); --瞬間移動
SE1=playSe( spep_2+109, 15); --き演算を貯める
stopSe(spep_2+132,SE1,0);
playSe( spep_2+136, SE_06); --気円斬を投げる

--黒背景
entryFadeBg(spep_2, 0, 196, 0, 0, 0, 0, 180);  -- 黒　背景

--次の準備
spep_3=spep_2+196;
--------------------------------------
--迫る〜着弾
--------------------------------------
--エフェクトの再生
press=entryEffect(spep_3,SP_03x,0x100,-1,0,0,0);

setEffMoveKey(spep_3,press,0,0,0);
setEffMoveKey(spep_3+296,press,0,0,0);
setEffScaleKey(spep_3,press,1.0,1.0);
setEffScaleKey(spep_3+296,press,1.0,1.0);
setEffAlphaKey(spep_3,press,255);
setEffAlphaKey(spep_3+296,press,255);
setEffRotateKey(spep_3,press,0);
setEffRotateKey(spep_3+296,press,0);

--黒背景
entryFadeBg(spep_3, 0, 280, 0, 0, 0, 0, 180);  -- 黒　背景

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 60, 1, 0 );
changeAnime( spep_3 + 0, 1, 100 );
changeAnime( spep_3 + 40, 1, 108 );

setMoveKey( spep_3 + 0, 1, 726.3, 727.1 , 0 );
setMoveKey( spep_3 + 2, 1, 631.5, 635 , 0 );
setMoveKey( spep_3 + 4, 1, 536.7, 542.8 , 0 );
setMoveKey( spep_3 + 6, 1, 441.9, 450.7 , 0 );
setMoveKey( spep_3 + 8, 1, 347.1, 358.5 , 0 );
setMoveKey( spep_3 + 10, 1, 252.2, 266.4 , 0 );
setMoveKey( spep_3 + 12, 1, 157.4, 174.2 , 0 );
setMoveKey( spep_3 + 14, 1, 152.8, 169.3 , 0 );

setScaleKey( spep_3 + 0, 1, 0.26, 0.26 );
setScaleKey( spep_3 + 2, 1, 0.4, 0.4 );
setScaleKey( spep_3 + 4, 1, 0.53, 0.53 );
setScaleKey( spep_3 + 6, 1, 0.66, 0.66 );
setScaleKey( spep_3 + 8, 1, 0.79, 0.79 );
setScaleKey( spep_3 + 10, 1, 0.92, 0.92 );
setScaleKey( spep_3 + 12, 1, 1.05, 1.05 );
setScaleKey( spep_3 + 14, 1, 1.06, 1.06 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 + 14, 1, 0 );


--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

SP_dodge = spep_3+14 ; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

pauseAll( SP_dodge, 67);

--キャラクターの固定
setMoveKey(SP_dodge, 1, 157.4, 174.2, 0 );
setScaleKey(SP_dodge , 1, 1.05, 1.05 );
setRotateKey(SP_dodge,   1, 0);

--キャラクターの固定
setMoveKey(SP_dodge+8, 1, 157.4, 174.2, 0 );
setScaleKey(SP_dodge+8 , 1, 1.05, 1.05  );
setRotateKey(SP_dodge+8,   1, 0);



setDisp(SP_dodge+9, 0, 0);
--setDisp(SP_dodge+9, 1, 0);
--setMoveKey(SP_dodge+9, 1, 0 , 0, 0);
setScaleKey(SP_dodge+9,  1 , 1.05, 1.05 );
setRotateKey(SP_dodge+9,   1, 0);

--setMoveKey(SP_dodge+10, 1, 0 , 0, 0);
setScaleKey(SP_dodge+10,  1 , 1.05, 1.05);
setRotateKey(SP_dodge+10,   1, 0);


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


setMoveKey( spep_3 + 16, 1, 148.2, 164.3 , 0 );
setMoveKey( spep_3 + 18, 1, 143.5, 159.4 , 0 );
setMoveKey( spep_3 + 20, 1, 138.9, 154.5 , 0 );
setMoveKey( spep_3 + 22, 1, 134.3, 149.5 , 0 );
setMoveKey( spep_3 + 24, 1, 129.7, 144.6 , 0 );
setMoveKey( spep_3 + 26, 1, 125, 139.7 , 0 );
setMoveKey( spep_3 + 28, 1, 120.4, 134.8 , 0 );
setMoveKey( spep_3 + 30, 1, 115.8, 129.8 , 0 );
setMoveKey( spep_3 + 32, 1, 111.2, 124.9 , 0 );
setMoveKey( spep_3 + 34, 1, 106.5, 120 , 0 );
setMoveKey( spep_3 + 36, 1, 101.9, 115 , 0 );
setMoveKey( spep_3 + 39, 1, 97.3, 110.1 , 0 );
setMoveKey( spep_3 + 40, 1, 115, 74.6 , 0 );
setMoveKey( spep_3 + 42, 1, 132.8, 111.6 , 0 );
setMoveKey( spep_3 + 44, 1, 132.1, 97.5 , 0 );
setMoveKey( spep_3 + 46, 1, 149.9, 134.5 , 0 );
setMoveKey( spep_3 + 48, 1, 149.7, 120.3 , 0 );
setMoveKey( spep_3 + 50, 1, 167.1, 157.3 , 0 );
setMoveKey( spep_3 + 52, 1, 166, 144.4 , 0 );
setMoveKey( spep_3 + 54, 1, 184.2, 180.2 , 0 );


setScaleKey( spep_3 + 16, 1, 1.07, 1.07 );
setScaleKey( spep_3 + 18, 1, 1.08, 1.08 );
setScaleKey( spep_3 + 20, 1, 1.1, 1.1 );
setScaleKey( spep_3 + 22, 1, 1.11, 1.11 );
setScaleKey( spep_3 + 24, 1, 1.12, 1.12 );
setScaleKey( spep_3 + 26, 1, 1.13, 1.13 );
setScaleKey( spep_3 + 28, 1, 1.14, 1.14 );
setScaleKey( spep_3 + 30, 1, 1.15, 1.15 );
setScaleKey( spep_3 + 32, 1, 1.17, 1.17 );
setScaleKey( spep_3 + 34, 1, 1.18, 1.18 );
setScaleKey( spep_3 + 36, 1, 1.19, 1.19 );
setScaleKey( spep_3 + 39, 1, 1.2, 1.2 );
setScaleKey( spep_3 + 40, 1, 1.21, 1.21 );
setScaleKey( spep_3 + 54, 1, 1.21, 1.21 );

setRotateKey( spep_3 + 39, 1, 0 );
setRotateKey( spep_3 + 40, 1, -15.2 );
setRotateKey( spep_3 + 54, 1, -15.2 );

----------------------------------------------------------
--文字エントリー
ctbikkuri = entryEffectLife( spep_3 + 12,  10001, 16, 0x100, -1, 0, 133.3, 369.6 );--!?
setEffMoveKey( spep_3 + 12, ctbikkuri, 133.3, 369.6 , 0 );
setEffMoveKey( spep_3 + 14, ctbikkuri, 136.2, 402.7 , 0 );
setEffMoveKey( spep_3 + 16, ctbikkuri, 122.4, 391.5 , 0 );
setEffMoveKey( spep_3 + 18, ctbikkuri, 126.2, 362.6 , 0 );
setEffMoveKey( spep_3 + 20, ctbikkuri, 113.6, 368.1 , 0 );
setEffMoveKey( spep_3 + 22, ctbikkuri, 115.9, 358.6 , 0 );
setEffMoveKey( spep_3 + 24, ctbikkuri, 103.3, 364.1 , 0 );
setEffMoveKey( spep_3 + 26, ctbikkuri, 105.6, 354.6 , 0 );
setEffMoveKey( spep_3 + 28, ctbikkuri, 93, 360.1 , 0 );
--setEffMoveKey( spep_3 + 30, ctbikkuri, 95.3, 350.6 , 0 );
--setEffMoveKey( spep_3 + 32, ctbikkuri, 90.2, 348.6 , 0 );

setEffScaleKey( spep_3 + 12, ctbikkuri, 2.32, 2.32 );
setEffScaleKey( spep_3 + 14, ctbikkuri, 3.41, 3.41 );
setEffScaleKey( spep_3 + 16, ctbikkuri, 2.95, 2.95 );
setEffScaleKey( spep_3 + 18, ctbikkuri, 2.49, 2.49 );
setEffScaleKey( spep_3 + 28, ctbikkuri, 2.49, 2.49 );

setEffRotateKey( spep_3 + 12, ctbikkuri, 0 );
setEffRotateKey( spep_3 + 28, ctbikkuri, 0 );

setEffAlphaKey( spep_3 + 12, ctbikkuri, 255 );
setEffAlphaKey( spep_3 + 28, ctbikkuri, 255 );
----------------------------------------------------------
--文字エントリー
ctzan = entryEffectLife( spep_3 + 36,  10010, 18, 0x100, -1, 0, -140.5, 237.5 );--ザン
setEffMoveKey( spep_3 + 36, ctzan, -140.5, 237.5 , 0 );
setEffMoveKey( spep_3 + 42, ctzan, -136.3, 236.4 , 0 );
setEffMoveKey( spep_3 + 44, ctzan, -144.2, 238.5 , 0 );
setEffMoveKey( spep_3 + 46, ctzan, -136.4, 236.4 , 0 );
setEffMoveKey( spep_3 + 48, ctzan, -143.3, 238.2 , 0 );
setEffMoveKey( spep_3 + 50, ctzan, -136.3, 236.3 , 0 );
setEffMoveKey( spep_3 + 52, ctzan, -142.4, 238 , 0 );
setEffMoveKey( spep_3 + 54, ctzan, -136.2, 236.3 , 0 );
--setEffMoveKey( spep_3 + 56, ctzan, -141.9, 237.8 , 0 );

setEffScaleKey( spep_3 + 36, ctzan, 1.54, 1.54 );
setEffScaleKey( spep_3 + 42, ctzan, 2.17, 2.17 );
setEffScaleKey( spep_3 + 44, ctzan, 2.8, 2.8 );
setEffScaleKey( spep_3 + 46, ctzan, 2.65, 2.65 );
setEffScaleKey( spep_3 + 48, ctzan, 2.5, 2.5 );
setEffScaleKey( spep_3 + 50, ctzan, 2.35, 2.35 );
setEffScaleKey( spep_3 + 52, ctzan, 2.2, 2.2 );
setEffScaleKey( spep_3 + 54, ctzan, 2.05, 2.05 );
--setEffScaleKey( spep_3 + 56, ctzan, 2.05, 2.05 );

setEffRotateKey( spep_3 + 36, ctzan, -18.5 );
setEffRotateKey( spep_3 + 54, ctzan, -18.5 );

setEffAlphaKey( spep_3 + 36, ctzan, 255 );
setEffAlphaKey( spep_3 + 54, ctzan, 255 );
----------------------------------------------------------

--文字エントリー

ctdogon = entryEffectLife( spep_3 + 64,  10018, 190, 0x100, -1, 0, -49.5, 397.3 );--ドゴン
setEffMoveKey( spep_3 + 62, ctdogon, -49.5, 397.3 , 0 );
setEffMoveKey( spep_3 + 70, ctdogon, -48, 396.8 , 0 );
setEffMoveKey( spep_3 + 72, ctdogon, -48.1, 396.7 , 0 );
setEffMoveKey( spep_3 + 74, ctdogon, -50.9, 397.3 , 0 );
setEffMoveKey( spep_3 + 76, ctdogon, -48, 396.7 , 0 );
setEffMoveKey( spep_3 + 78, ctdogon, -50.4, 397.3 , 0 );
setEffMoveKey( spep_3 + 80, ctdogon, -48, 396.7 , 0 );
setEffMoveKey( spep_3 + 82, ctdogon, -50.4, 397.3 , 0 );
setEffMoveKey( spep_3 + 84, ctdogon, -48, 396.7 , 0 );
setEffMoveKey( spep_3 + 86, ctdogon, -50.4, 397.3 , 0 );
setEffMoveKey( spep_3 + 88, ctdogon, -48, 396.7 , 0 );
setEffMoveKey( spep_3 + 90, ctdogon, -50.3, 397.3 , 0 );
setEffMoveKey( spep_3 + 92, ctdogon, -48, 396.7 , 0 );
setEffMoveKey( spep_3 + 94, ctdogon, -50.3, 397.3 , 0 );
setEffMoveKey( spep_3 + 96, ctdogon, -48, 396.7 , 0 );
setEffMoveKey( spep_3 + 98, ctdogon, -50.3, 397.3 , 0 );
setEffMoveKey( spep_3 + 100, ctdogon, -48, 396.7 , 0 );
setEffMoveKey( spep_3 + 102, ctdogon, -50.3, 397.3 , 0 );
setEffMoveKey( spep_3 + 104, ctdogon, -48, 396.7 , 0 );
setEffMoveKey( spep_3 + 106, ctdogon, -50.3, 397.2 , 0 );
setEffMoveKey( spep_3 + 108, ctdogon, -48, 396.7 , 0 );
setEffMoveKey( spep_3 + 110, ctdogon, -50.3, 397.2 , 0 );
setEffMoveKey( spep_3 + 112, ctdogon, -48, 396.7 , 0 );
setEffMoveKey( spep_3 + 114, ctdogon, -50.3, 397.2 , 0 );
setEffMoveKey( spep_3 + 116, ctdogon, -48, 396.7 , 0 );
setEffMoveKey( spep_3 + 118, ctdogon, -50.3, 397.2 , 0 );
setEffMoveKey( spep_3 + 120, ctdogon, -48, 396.7 , 0 );
setEffMoveKey( spep_3 + 122, ctdogon, -50.3, 397.2 , 0 );
setEffMoveKey( spep_3 + 124, ctdogon, -48, 396.7 , 0 );
setEffMoveKey( spep_3 + 126, ctdogon, -50.3, 397.2 , 0 );
setEffMoveKey( spep_3 + 128, ctdogon, -48, 396.7 , 0 );
setEffMoveKey( spep_3 + 130, ctdogon, -50.3, 397.2 , 0 );
setEffMoveKey( spep_3 + 132, ctdogon, -48, 396.7 , 0 );
setEffMoveKey( spep_3 + 134, ctdogon, -50.3, 397.2 , 0 );
setEffMoveKey( spep_3 + 136, ctdogon, -48, 396.7 , 0 );
setEffMoveKey( spep_3 + 138, ctdogon, -50.3, 397.2 , 0 );
setEffMoveKey( spep_3 + 140, ctdogon, -48, 396.7 , 0 );
setEffMoveKey( spep_3 + 142, ctdogon, -50.3, 397.2 , 0 );
setEffMoveKey( spep_3 + 144, ctdogon, -48, 396.7 , 0 );
setEffMoveKey( spep_3 + 146, ctdogon, -50.2, 397.2 , 0 );
setEffMoveKey( spep_3 + 148, ctdogon, -48, 396.7 , 0 );
setEffMoveKey( spep_3 + 150, ctdogon, -50.2, 397.2 , 0 );
setEffMoveKey( spep_3 + 152, ctdogon, -48, 396.7 , 0 );
setEffMoveKey( spep_3 + 154, ctdogon, -50.2, 397.2 , 0 );
setEffMoveKey( spep_3 + 156, ctdogon, -48, 396.7 , 0 );
setEffMoveKey( spep_3 + 158, ctdogon, -50.2, 397.2 , 0 );
setEffMoveKey( spep_3 + 160, ctdogon, -48, 396.6 , 0 );
setEffMoveKey( spep_3 + 162, ctdogon, -50.2, 397.2 , 0 );
setEffMoveKey( spep_3 + 164, ctdogon, -48, 396.6 , 0 );
setEffMoveKey( spep_3 + 166, ctdogon, -50.2, 397.2 , 0 );
setEffMoveKey( spep_3 + 168, ctdogon, -48, 396.6 , 0 );
setEffMoveKey( spep_3 + 170, ctdogon, -50.2, 397.2 , 0 );
setEffMoveKey( spep_3 + 172, ctdogon, -48, 396.6 , 0 );
setEffMoveKey( spep_3 + 174, ctdogon, -50.2, 397.1 , 0 );
setEffMoveKey( spep_3 + 176, ctdogon, -48, 396.6 , 0 );
setEffMoveKey( spep_3 + 178, ctdogon, -50.2, 397.1 , 0 );
setEffMoveKey( spep_3 + 180, ctdogon, -48, 396.6 , 0 );
setEffMoveKey( spep_3 + 182, ctdogon, -50.2, 397.1 , 0 );
setEffMoveKey( spep_3 + 184, ctdogon, -48, 396.6 , 0 );
setEffMoveKey( spep_3 + 186, ctdogon, -50.2, 397.1 , 0 );
setEffMoveKey( spep_3 + 188, ctdogon, -48, 396.6 , 0 );
setEffMoveKey( spep_3 + 190, ctdogon, -50.2, 397.1 , 0 );
setEffMoveKey( spep_3 + 192, ctdogon, -48, 396.6 , 0 );
setEffMoveKey( spep_3 + 194, ctdogon, -50.2, 397.1 , 0 );
setEffMoveKey( spep_3 + 196, ctdogon, -48, 396.6 , 0 );
setEffMoveKey( spep_3 + 198, ctdogon, -50.2, 397.1 , 0 );
setEffMoveKey( spep_3 + 200, ctdogon, -48, 396.6 , 0 );
setEffMoveKey( spep_3 + 202, ctdogon, -50.2, 397.1 , 0 );
setEffMoveKey( spep_3 + 204, ctdogon, -48, 396.6 , 0 );
setEffMoveKey( spep_3 + 206, ctdogon, -50.1, 397.1 , 0 );
setEffMoveKey( spep_3 + 208, ctdogon, -48, 396.6 , 0 );
setEffMoveKey( spep_3 + 210, ctdogon, -50.1, 397.1 , 0 );
setEffMoveKey( spep_3 + 212, ctdogon, -48, 396.6 , 0 );
setEffMoveKey( spep_3 + 214, ctdogon, -50.1, 397.1 , 0 );
setEffMoveKey( spep_3 + 216, ctdogon, -48, 396.6 , 0 );
setEffMoveKey( spep_3 + 218, ctdogon, -50.1, 397.1 , 0 );
setEffMoveKey( spep_3 + 220, ctdogon, -48, 396.6 , 0 );
setEffMoveKey( spep_3 + 222, ctdogon, -50.1, 397.1 , 0 );
setEffMoveKey( spep_3 + 224, ctdogon, -48, 396.6 , 0 );
setEffMoveKey( spep_3 + 226, ctdogon, -50.1, 397.1 , 0 );
setEffMoveKey( spep_3 + 228, ctdogon, -48, 396.6 , 0 );
setEffMoveKey( spep_3 + 230, ctdogon, -50.1, 397.1 , 0 );
setEffMoveKey( spep_3 + 232, ctdogon, -48, 396.6 , 0 );
setEffMoveKey( spep_3 + 234, ctdogon, -50.1, 397.1 , 0 );
setEffMoveKey( spep_3 + 236, ctdogon, -48, 396.6 , 0 );
setEffMoveKey( spep_3 + 238, ctdogon, -50.1, 397.1 , 0 );
setEffMoveKey( spep_3 + 240, ctdogon, -48, 396.6 , 0 );
setEffMoveKey( spep_3 + 242, ctdogon, -50.1, 397.1 , 0 );
setEffMoveKey( spep_3 + 244, ctdogon, -48, 396.6 , 0 );
setEffMoveKey( spep_3 + 246, ctdogon, -50.1, 397.1 , 0 );
setEffMoveKey( spep_3 + 248, ctdogon, -48, 396.6 , 0 );
setEffMoveKey( spep_3 + 250, ctdogon, -50.1, 397.1 , 0 );
setEffMoveKey( spep_3 + 252, ctdogon, -48, 396.6 , 0 );
setEffMoveKey( spep_3 + 254, ctdogon, -50.1, 397.1 , 0 );
--setEffMoveKey( spep_3 + 256, ctdogon, -48, 396.7 , 0 );
--setEffMoveKey( spep_3 + 258, ctdogon, -50.1, 397.1 , 0 );
--setEffMoveKey( spep_3 + 260, ctdogon, -50.1, 397.2 , 0 );


-- ctdogon
setEffScaleKey( spep_3 +62, ctdogon, 1.78, 1.78 );
setEffScaleKey( spep_3 + 70, ctdogon, 2.72, 2.72 );
setEffScaleKey( spep_3 + 72, ctdogon, 3.67, 3.67 );
setEffScaleKey( spep_3 + 74, ctdogon, 3.39, 3.39 );
setEffScaleKey( spep_3 + 76, ctdogon, 3.11, 3.11 );
setEffScaleKey( spep_3 + 78, ctdogon, 2.83, 2.83 );
setEffScaleKey( spep_3 + 80, ctdogon, 2.83, 2.83 );
setEffScaleKey( spep_3 + 82, ctdogon, 2.82, 2.82 );
setEffScaleKey( spep_3 + 84, ctdogon, 2.82, 2.82 );
setEffScaleKey( spep_3 + 86, ctdogon, 2.81, 2.81 );
setEffScaleKey( spep_3 + 90, ctdogon, 2.81, 2.81 );
setEffScaleKey( spep_3 + 92, ctdogon, 2.8, 2.8 );
setEffScaleKey( spep_3 + 94, ctdogon, 2.8, 2.8 );
setEffScaleKey( spep_3 + 96, ctdogon, 2.79, 2.79 );
setEffScaleKey( spep_3 + 98, ctdogon, 2.79, 2.79 );
setEffScaleKey( spep_3 + 100, ctdogon, 2.78, 2.78 );
setEffScaleKey( spep_3 + 104, ctdogon, 2.78, 2.78 );
setEffScaleKey( spep_3 + 106, ctdogon, 2.77, 2.77 );
setEffScaleKey( spep_3 + 108, ctdogon, 2.77, 2.77 );
setEffScaleKey( spep_3 + 110, ctdogon, 2.76, 2.76 );
setEffScaleKey( spep_3 + 114, ctdogon, 2.76, 2.76 );
setEffScaleKey( spep_3 + 116, ctdogon, 2.75, 2.75 );
setEffScaleKey( spep_3 + 118, ctdogon, 2.75, 2.75 );
setEffScaleKey( spep_3 + 120, ctdogon, 2.74, 2.74 );
setEffScaleKey( spep_3 + 122, ctdogon, 2.74, 2.74 );
setEffScaleKey( spep_3 + 124, ctdogon, 2.73, 2.73 );
setEffScaleKey( spep_3 + 128, ctdogon, 2.73, 2.73 );
setEffScaleKey( spep_3 + 130, ctdogon, 2.72, 2.72 );
setEffScaleKey( spep_3 + 132, ctdogon, 2.72, 2.72 );
setEffScaleKey( spep_3 + 134, ctdogon, 2.71, 2.71 );
setEffScaleKey( spep_3 + 138, ctdogon, 2.71, 2.71 );
setEffScaleKey( spep_3 + 140, ctdogon, 2.7, 2.7 );
setEffScaleKey( spep_3 + 142, ctdogon, 2.7, 2.7 );
setEffScaleKey( spep_3 + 144, ctdogon, 2.69, 2.69 );
setEffScaleKey( spep_3 + 146, ctdogon, 2.69, 2.69 );
setEffScaleKey( spep_3 + 148, ctdogon, 2.68, 2.68 );
setEffScaleKey( spep_3 + 152, ctdogon, 2.68, 2.68 );
setEffScaleKey( spep_3 + 154, ctdogon, 2.67, 2.67 );
setEffScaleKey( spep_3 + 156, ctdogon, 2.67, 2.67 );
setEffScaleKey( spep_3 + 158, ctdogon, 2.66, 2.66 );
setEffScaleKey( spep_3 + 162, ctdogon, 2.66, 2.66 );
setEffScaleKey( spep_3 + 164, ctdogon, 2.65, 2.65 );
setEffScaleKey( spep_3 + 166, ctdogon, 2.65, 2.65 );
setEffScaleKey( spep_3 + 168, ctdogon, 2.64, 2.64 );
setEffScaleKey( spep_3 + 170, ctdogon, 2.64, 2.64 );
setEffScaleKey( spep_3 + 172, ctdogon, 2.63, 2.63 );
setEffScaleKey( spep_3 + 176, ctdogon, 2.63, 2.63 );
setEffScaleKey( spep_3 + 178, ctdogon, 2.62, 2.62 );
setEffScaleKey( spep_3 + 180, ctdogon, 2.62, 2.62 );
setEffScaleKey( spep_3 + 182, ctdogon, 2.61, 2.61 );
setEffScaleKey( spep_3 + 186, ctdogon, 2.61, 2.61 );
setEffScaleKey( spep_3 + 188, ctdogon, 2.6, 2.6 );
setEffScaleKey( spep_3 + 190, ctdogon, 2.6, 2.6 );
setEffScaleKey( spep_3 + 192, ctdogon, 2.59, 2.59 );
setEffScaleKey( spep_3 + 194, ctdogon, 2.59, 2.59 );
setEffScaleKey( spep_3 + 196, ctdogon, 2.58, 2.58 );
setEffScaleKey( spep_3 + 200, ctdogon, 2.58, 2.58 );
setEffScaleKey( spep_3 + 202, ctdogon, 2.57, 2.57 );
setEffScaleKey( spep_3 + 204, ctdogon, 2.57, 2.57 );
setEffScaleKey( spep_3 + 206, ctdogon, 2.56, 2.56 );
setEffScaleKey( spep_3 + 210, ctdogon, 2.56, 2.56 );
setEffScaleKey( spep_3 + 212, ctdogon, 2.55, 2.55 );
setEffScaleKey( spep_3 + 214, ctdogon, 2.55, 2.55 );
setEffScaleKey( spep_3 + 216, ctdogon, 2.54, 2.54 );
setEffScaleKey( spep_3 + 218, ctdogon, 2.54, 2.54 );
setEffScaleKey( spep_3 + 220, ctdogon, 2.53, 2.53 );
setEffScaleKey( spep_3 + 224, ctdogon, 2.53, 2.53 );
setEffScaleKey( spep_3 + 226, ctdogon, 2.52, 2.52 );
setEffScaleKey( spep_3 + 228, ctdogon, 2.52, 2.52 );
setEffScaleKey( spep_3 + 230, ctdogon, 2.51, 2.51 );
setEffScaleKey( spep_3 + 234, ctdogon, 2.51, 2.51 );
setEffScaleKey( spep_3 + 236, ctdogon, 2.5, 2.5 );
setEffScaleKey( spep_3 + 238, ctdogon, 2.5, 2.5 );
setEffScaleKey( spep_3 + 240, ctdogon, 2.49, 2.49 );
setEffScaleKey( spep_3 + 242, ctdogon, 2.49, 2.49 );
setEffScaleKey( spep_3 + 244, ctdogon, 2.48, 2.48 );
setEffScaleKey( spep_3 + 248, ctdogon, 2.48, 2.48 );
setEffScaleKey( spep_3 + 250, ctdogon, 2.47, 2.47 );
setEffScaleKey( spep_3 + 252, ctdogon, 2.47, 2.47 );
setEffScaleKey( spep_3 + 254, ctdogon, 2.46, 2.46 );
--setEffScaleKey( spep_3 + 256, ctdogon, 2.46, 2.46 );
--setEffScaleKey( spep_3 + 258, ctdogon, 2.45, 2.45 );
--setEffScaleKey( spep_3 + 260, ctdogon, 2.45, 2.45 );

setEffRotateKey( spep_3 + 62, ctdogon, -22.5 );
setEffRotateKey( spep_3 + 116, ctdogon, -22.5 );
setEffRotateKey( spep_3 + 118, ctdogon, -22.4 );
setEffRotateKey( spep_3 + 192, ctdogon, -22.4 );
setEffRotateKey( spep_3 + 194, ctdogon, -22.3 );
setEffRotateKey( spep_3 + 254, ctdogon, -22.3 );

setEffAlphaKey( spep_3 + 62, ctdogon, 255 );
setEffAlphaKey( spep_3 + 232, ctdogon, 255 );
setEffAlphaKey( spep_3 + 234, ctdogon, 237 );
setEffAlphaKey( spep_3 + 236, ctdogon, 219 );
setEffAlphaKey( spep_3 + 238, ctdogon, 200 );
setEffAlphaKey( spep_3 + 240, ctdogon, 182 );
setEffAlphaKey( spep_3 + 242, ctdogon, 164 );
setEffAlphaKey( spep_3 + 244, ctdogon, 146 );
setEffAlphaKey( spep_3 + 246, ctdogon, 128 );
setEffAlphaKey( spep_3 + 248, ctdogon, 109 );
setEffAlphaKey( spep_3 + 250, ctdogon, 91 );
setEffAlphaKey( spep_3 + 252, ctdogon, 55 );
setEffAlphaKey( spep_3 + 254, ctdogon, 0 );
--setEffAlphaKey( spep_3 + 256, ctdogon, 0 );
--setEffAlphaKey( spep_3 + 258, ctdogon, 18 );
--setEffAlphaKey( spep_3 + 260, ctdogon, 0 );

--流線
ryuusen2 = entryEffectLife( spep_3 + 0,  921, 104, 0x80, -1, 0, 23.5, 12.9 );
setEffMoveKey( spep_3 + 0, ryuusen2, 23.5, 16.9 , 0 );
setEffMoveKey( spep_3 + 104, ryuusen2, 23.5, 16.9 , 0 );

setEffScaleKey( spep_3 + 0, ryuusen2, 1.59, 1.42 );
setEffScaleKey( spep_3 + 104, ryuusen2, 1.59, 1.42 );

setEffRotateKey( spep_3 + 0, ryuusen2, -55 );
setEffRotateKey( spep_3 + 104, ryuusen2, -55 );

setEffAlphaKey( spep_3 + 0, ryuusen2, 255 );
setEffAlphaKey( spep_3 + 94, ryuusen2, 255 );
setEffAlphaKey( spep_3 + 96, ryuusen2, 204 );
setEffAlphaKey( spep_3 + 98, ryuusen2, 153 );
setEffAlphaKey( spep_3 + 100, ryuusen2, 102 );
setEffAlphaKey( spep_3 + 102, ryuusen2, 51 );
setEffAlphaKey( spep_3 + 104, ryuusen2, 0 );

--集中線
shuchuse3 = entryEffectLife( spep_3 + 0,  906, 280, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_3 + 0, shuchuse3, 0, 0 , 0 );
setEffMoveKey( spep_3 + 280, shuchuse3, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchuse3, 1.8, 1.8 );
setEffScaleKey( spep_3 + 280, shuchuse3, 1.8, 1.8 );

setEffRotateKey( spep_3 + 0, shuchuse3, 0 );
setEffRotateKey( spep_3 + 280, shuchuse3, 0 );

-- ** エフェクト等 ** --
entryFade(spep_3+36,0,2,4,fcolor_r,fcolor_g,fcolor_b,180);     -- white 
entryFade(spep_3+48,6,8,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white 

--SE
playSe( spep_3, SE_06); --気円斬を投げる
playSe( spep_3+36, 1032); --気円斬が当たる
playSe( spep_3+64, 1023); --爆発

-- ダメージ表示
dealDamage(spep_3+150);
entryFade( spep_3+270, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_3+280);




end

