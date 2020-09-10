--ブラ　1012090 
--sp_effect_a1_00124


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
SP_01=151858;--	構え
SP_02=151859;--	ベジータ出現
SP_03=151860;--	放つ
SP_04=151861;--	被弾



--敵側は味方側に1xをつけてます
SP_01x=151858;--構え
SP_02x=151862;--ベジータ出現(敵)
SP_03x=151863;--放つ
SP_04x=151861;--被弾(敵)





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
-- 構え
------------------------------------------------------
spep_0=0;

taiki=entryEffectLife(spep_0,SP_01,72,0x100,-1,0,0,0);

setEffMoveKey(spep_0,taiki,0,0,0);
setEffMoveKey(spep_0+72,taiki,0,0,0);
setEffScaleKey(spep_0,taiki,1.0,1.0);
setEffScaleKey(spep_0+72,taiki,1.0,1.0);
setEffAlphaKey(spep_0,taiki,255);
setEffAlphaKey(spep_0+72,taiki,255);
setEffRotateKey(spep_0,taiki,0);
setEffRotateKey(spep_0+72,taiki,0);

shuchu = entryEffectLife( spep_0 + 0,  906, 72, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, shuchu, 0, 0 , 0 );
setEffMoveKey( spep_0 + 72, shuchu, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchu, 1.55, 1.55 );
setEffScaleKey( spep_0 + 72, shuchu, 1.55, 1.55 );

setEffRotateKey( spep_0 + 0, shuchu, 180 );
setEffRotateKey( spep_0 + 72, shuchu, 180 );

setEffAlphaKey( spep_0 + 0, shuchu, 255 );
setEffAlphaKey( spep_0 + 72, shuchu, 255 );

--SE--
playSe(spep_0+52,1018);--移動音


-- ** エフェクト等 ** --
entryFade(spep_0,0,0,3,fcolor_r,fcolor_g,fcolor_b,200);     -- white fade
entryFade(spep_0+68,5,2,1,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_1=spep_0+73;


--------------------------------------
--カードカットイン(90F)
--------------------------------------

playSe(spep_1,SE_05);
shuchusen=entryEffectLife(spep_1,906,90,0x100,-1,0,0,0);   -- 集中線
setEffScaleKey(spep_1,shuchusen,1.6,1.6);

speff2=entryEffect(spep_1,1507,0,-1,0,0,0);   -- カード
setEffReplaceTexture(speff2,1,1);
setEffReplaceTexture(speff2,2,0);-- カード差し替え
setEffReplaceTexture(speff2,5,4);-- 技名テクスチャ差し替え

-- ** エフェクト等 ** --
entryFade(spep_1+85,3,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_2=spep_1+90;

------------------------------------------------------
-- ベジータ出現
------------------------------------------------------
touzyo=entryEffectLife(spep_2,SP_02,278,0x100,-1,0,-30,0);

setEffMoveKey(spep_2,touzyo,0,-30,0);
setEffMoveKey(spep_2+278,touzyo,0,-30,0);
setEffScaleKey(spep_2,touzyo,1.2,1.2);
setEffScaleKey(spep_2+278,touzyo,1.2,1.2);
setEffAlphaKey(spep_2,touzyo,255);
setEffAlphaKey(spep_2+278,touzyo,255);
setEffRotateKey(spep_2,touzyo,0);
setEffRotateKey(spep_2+278,touzyo,0);



--顔カットイン
speff=entryEffect(spep_2+19,1504,0x100,-1,0,0,0);  --カットイン(顔)
setEffReplaceTexture(speff,3,2);  --カットイン差し替え
speff1=entryEffect(spep_2+19,1505,0x100,-1,0,0,0);  --カットイン(セリフ)
setEffReplaceTexture(speff1,4,5);  --セリフカットイン差し替え

--文字エントリー
ctgogo=entryEffectLife(spep_2+31,190006,69,0x100,-1,60,515);--ゴゴゴ
setEffMoveKey(spep_2+31,ctgogo,60,515,0);
setEffMoveKey(spep_2+100,ctgogo,60,515,0);
setEffScaleKey(spep_2+31, ctgogo, 0.7, 0.7);
setEffScaleKey(spep_2+100, ctgogo, 0.7, 0.7);
setEffRotateKey( spep_2 + 31, ctgogo, -10 );
setEffRotateKey( spep_2 + 100, ctgogo, -10 );

--流線
shuchu1 = entryEffectLife( spep_2 + 0,  914, 102, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 102, shuchu1, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchu1, 4.3, 1.13 );
setEffScaleKey( spep_2 + 102, shuchu1, 4.3, 1.13 );

setEffRotateKey( spep_2 + 0, shuchu1, 0 );
setEffRotateKey( spep_2 + 102, shuchu1, 0 );

setEffAlphaKey( spep_2 + 0, shuchu1, 255 );
setEffAlphaKey( spep_2 + 102, shuchu1, 255 );


--後ろの気
ef_ki=entryEffectLife(spep_2+211, 1503, 66,0x80,-1,0,0,0);   -- 集中線
setEffScaleKey(spep_2+211, ef_ki, 1.2, 1.2);
setEffScaleKey(spep_2+211+4, ef_ki, 1.5, 1.5);
setEffScaleKey(spep_2+277,ef_ki, 1.5, 1.5);
setEffMoveKey(spep_2+211,ef_ki,0,0,0);
setEffMoveKey(spep_2+277,ef_ki,0,0,0);
setEffAlphaKey(spep_2+211,ef_ki,255);
setEffAlphaKey(spep_2+277,ef_ki,255);

--バチバチ
ef_bati=entryEffectLife(spep_2+211, 1502, 66,0x100,-1,0,0,0);   -- 集中線
setEffScaleKey(spep_2+211,ef_bati, 1.3, 1.3);
setEffScaleKey(spep_2+277,ef_bati, 1.3, 1.3);
setEffMoveKey(spep_2+211,ef_bati,0,0,0);
setEffMoveKey(spep_2+277,ef_bati,0,0,0);
setEffAlphaKey(spep_2+211,ef_bati,255);
setEffAlphaKey(spep_2+277,ef_bati,255);

ctZun = entryEffectLife( spep_2 + 216,  10016, 62, 0x100, -1, 0, 126.8, 247.3 );
setEffMoveKey( spep_2 + 216, ctZun, 126.8, 247.3 , 0 );
setEffMoveKey( spep_2 + 218, ctZun, 131.4, 264.3 , 0 );
setEffMoveKey( spep_2 + 220, ctZun, 139.9, 269.2 , 0 );
setEffMoveKey( spep_2 + 222, ctZun, 139.6, 283.1 , 0 );
setEffMoveKey( spep_2 + 224, ctZun, 151.2, 284.2 , 0 );
setEffMoveKey( spep_2 + 226, ctZun, 146.4, 287.4 , 0 );
setEffMoveKey( spep_2 + 228, ctZun, 142.9, 295.1 , 0 );
setEffMoveKey( spep_2 + 230, ctZun, 147.1, 290.5 , 0 );
setEffMoveKey( spep_2 + 232, ctZun, 142.4, 301 , 0 );
setEffMoveKey( spep_2 + 234, ctZun, 152.1, 300.6 , 0 );
setEffMoveKey( spep_2 + 236, ctZun, 144.3, 310.2 , 0 );
setEffMoveKey( spep_2 + 238, ctZun, 151, 303.6 , 0 );
setEffMoveKey( spep_2 + 240, ctZun, 146.4, 311.6 , 0 );
setEffMoveKey( spep_2 + 242, ctZun, 142.9, 318.2 , 0 );
setEffMoveKey( spep_2 + 244, ctZun, 147.1, 312.6 , 0 );
setEffMoveKey( spep_2 + 246, ctZun, 142.4, 322 , 0 );
setEffMoveKey( spep_2 + 248, ctZun, 152.1, 320.5 , 0 );
setEffMoveKey( spep_2 + 250, ctZun, 144.3, 329.1 , 0 );
setEffMoveKey( spep_2 + 252, ctZun, 151, 321.4 , 0 );
setEffMoveKey( spep_2 + 254, ctZun, 146.4, 328.3 , 0 );
setEffMoveKey( spep_2 + 256, ctZun, 142.9, 333.8 , 0 );
setEffMoveKey( spep_2 + 258, ctZun, 147.1, 327.1 , 0 );
setEffMoveKey( spep_2 + 260, ctZun, 142.4, 335.4 , 0 );
setEffMoveKey( spep_2 + 262, ctZun, 152.1, 332.9 , 0 );
setEffMoveKey( spep_2 + 264, ctZun, 144.3, 340.4 , 0 );
setEffMoveKey( spep_2 + 266, ctZun, 151, 331.6 , 0 );
setEffMoveKey( spep_2 + 268, ctZun, 146.4, 337.5 , 0 );
setEffMoveKey( spep_2 + 270, ctZun, 142.9, 341.9 , 0 );
setEffMoveKey( spep_2 + 272, ctZun, 147.1, 334.1 , 0 );
setEffMoveKey( spep_2 + 274, ctZun, 142.4, 341.4 , 0 );
setEffMoveKey( spep_2 + 276, ctZun, 152.1, 337.7 , 0 );
setEffMoveKey( spep_2 + 278, ctZun, 146.4, 339.4 , 0 );

-- ctZun
setEffScaleKey( spep_2 + 216, ctZun, 0.81, 0.81 );
setEffScaleKey( spep_2 + 218, ctZun, 1.08, 1.08 );
setEffScaleKey( spep_2 + 220, ctZun, 1.29, 1.29 );
setEffScaleKey( spep_2 + 222, ctZun, 1.44, 1.44 );
setEffScaleKey( spep_2 + 224, ctZun, 1.53, 1.53 );
setEffScaleKey( spep_2 + 226, ctZun, 1.56, 1.56 );

setEffRotateKey( spep_2 + 216, ctZun, 20 );

setEffAlphaKey( spep_2 + 216, ctZun, 255 );
--SE
--playSe(spep_2,1018);--移動音
playSe( spep_2+30, SE_04); --ゴゴゴ
playSe(spep_2+211,SE_01);--気だめ

--黒背景
entryFadeBg(spep_2, 0, 273, 0, 0, 0, 0, 180);  -- 黒　背景

-- ** エフェクト等 ** --
entryFade(spep_2+273,5,2,3,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_3=spep_2+278;

------------------------------------------------------
-- 放つ
------------------------------------------------------
beam=entryEffectLife(spep_3,SP_03,115,0x100,-1,0,0,0);

setEffMoveKey(spep_3,beam,0,0,0);
setEffMoveKey(spep_3+120,beam,0,0,0);
setEffScaleKey(spep_3,beam,1.0,1.0);
setEffScaleKey(spep_3+120,beam,1.0,1.0);
setEffAlphaKey(spep_3,beam,255);
setEffAlphaKey(spep_3+120,beam,255);
setEffRotateKey(spep_3,beam,0);
setEffRotateKey(spep_3+120,beam,0);


--集中線
shuchu2 = entryEffectLife( spep_3 + 0,  906, 48, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_3 + 0, shuchu2, 0, 0 , 0 );
setEffMoveKey( spep_3 + 48, shuchu2, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchu2, 1.5, 1.5 );
setEffScaleKey( spep_3 + 38, shuchu2, 1.5, 1.5 );
setEffScaleKey( spep_3 + 40, shuchu2, 1.54, 1.54 );
setEffScaleKey( spep_3 + 42, shuchu2, 1.66, 1.66 );
setEffScaleKey( spep_3 + 44, shuchu2, 1.86, 1.86 );
setEffScaleKey( spep_3 + 46, shuchu2, 2.14, 2.14 );
setEffScaleKey( spep_3 + 48, shuchu2, 2.5, 2.5 );

setEffRotateKey( spep_3 + 0, shuchu2, 180 );
setEffRotateKey( spep_3 + 48, shuchu2, 180 );

setEffAlphaKey( spep_3 + 0, shuchu2, 255 );
setEffAlphaKey( spep_3 + 48, shuchu2, 255 );



--集中線（斜め）
shuchu3 = entryEffectLife( spep_3 + 0,  921, 115, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_3 + 0, shuchu3, 0, 0 , 0 );
setEffMoveKey( spep_3 + 115, shuchu3, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchu3, 1, 1 );
setEffScaleKey( spep_3 + 115, shuchu3, 1, 1 );

setEffRotateKey( spep_3 + 0, shuchu3, 180 );
setEffRotateKey( spep_3 + 115, shuchu3, 180 );

setEffAlphaKey( spep_3 + 0, shuchu3, 255 );
setEffAlphaKey( spep_3 + 115, shuchu3, 255 );

--文字エントリー
ctzuo = entryEffectLife( spep_3 + 8,  10012, 34, 0x100, -1, 0, 166.5, 310.2 );--ズオッ
setEffMoveKey( spep_3 + 8, ctzuo, 166.5, 310.2 , 0 );
setEffMoveKey( spep_3 + 10, ctzuo, 169.5, 305.5 , 0 );
setEffMoveKey( spep_3 + 12, ctzuo, 167.6, 310.8 , 0 );
setEffMoveKey( spep_3 + 14, ctzuo, 173.1, 301 , 0 );
setEffMoveKey( spep_3 + 16, ctzuo, 168.6, 311.4 , 0 );
setEffMoveKey( spep_3 + 18, ctzuo, 174.8, 298.7 , 0 );
setEffMoveKey( spep_3 + 20, ctzuo, 168.6, 311.4 , 0 );
setEffMoveKey( spep_3 + 22, ctzuo, 174.8, 298.7 , 0 );
setEffMoveKey( spep_3 + 24, ctzuo, 168.6, 311.4 , 0 );
setEffMoveKey( spep_3 + 26, ctzuo, 174.8, 298.7 , 0 );
setEffMoveKey( spep_3 + 28, ctzuo, 168.6, 311.4 , 0 );
setEffMoveKey( spep_3 + 30, ctzuo, 176.6, 296.6 , 0 );
setEffMoveKey( spep_3 + 32, ctzuo, 169.7, 312.1 , 0 );
setEffMoveKey( spep_3 + 34, ctzuo, 170.3, 312.4 , 0 );

setEffScaleKey( spep_3 + 8, ctzuo, 0.37, 0.28 );
setEffScaleKey( spep_3 + 10, ctzuo, 0.74, 0.57 );
setEffScaleKey( spep_3 + 12, ctzuo, 1.12, 0.85 );
setEffScaleKey( spep_3 + 14, ctzuo, 1.49, 1.14 );
setEffScaleKey( spep_3 + 16, ctzuo, 1.86, 1.42 );
setEffScaleKey( spep_3 + 28, ctzuo, 1.86, 1.42 );
setEffScaleKey( spep_3 + 30, ctzuo, 2.23, 1.71 );
setEffScaleKey( spep_3 + 32, ctzuo, 2.6, 1.99 );
setEffScaleKey( spep_3 + 34, ctzuo, 2.98, 2.28 );

setEffRotateKey( spep_3 + 8, ctzuo, 19.2 );
setEffRotateKey( spep_3 + 34, ctzuo, 19.2 );

setEffAlphaKey( spep_3 + 8, ctzuo, 255 );
setEffAlphaKey( spep_3 + 28, ctzuo, 255 );
setEffAlphaKey( spep_3 + 30, ctzuo, 170 );
setEffAlphaKey( spep_3 + 32, ctzuo, 85 );
setEffAlphaKey( spep_3 + 34, ctzuo, 0 );

--SE
playSe(spep_3+1,SE_07);--のびる発射

-- ** エフェクト等 ** --
entryFade(spep_3+115,2,2,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--黒背景
entryFadeBg(spep_3, 0, 118, 0, 0, 0, 0, 255);  -- 黒　背景


--次の準備
spep_4=spep_3+118;

------------------------------------------------------
-- 被弾
------------------------------------------------------

hit=entryEffectLife(spep_4,SP_04,100,0x100,-1,0,0,0);

setEffMoveKey(spep_4,hit,0,0,0);
setEffMoveKey(spep_4+100,hit,0,0,0);
setEffScaleKey(spep_4,hit,1.0,1.0);
setEffScaleKey(spep_4+100,hit,1.0,1.0);
setEffAlphaKey(spep_4,hit,255);
setEffAlphaKey(spep_4+100,hit,255);
setEffRotateKey(spep_4,hit,0);
setEffRotateKey(spep_4+100,hit,0);

--集中線（斜め）
shuchu5 = entryEffectLife( spep_4 + 0,  921, 98, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_4 + 0, shuchu5, 0, 0 , 0 );
setEffMoveKey( spep_4 + 98, shuchu5, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, shuchu5, 1, 1 );
setEffScaleKey( spep_4 + 98, shuchu5, 1, 1 );

setEffRotateKey( spep_4 + 0, shuchu5, 0 );
setEffRotateKey( spep_4 + 98, shuchu5, 0 );

setEffAlphaKey( spep_4 + 0, shuchu5, 255 );
setEffAlphaKey( spep_4 + 98, shuchu5, 255 );

--文字エントリー
ctzudododo = entryEffectLife( spep_4 + 0,  10014, 98, 0x100, -1, 0, 57.8, 363.4 );--ズドドド
setEffMoveKey( spep_4 + 0, ctzudododo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_4 + 2, ctzudododo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_4 + 4, ctzudododo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_4 + 6, ctzudododo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_4 + 8, ctzudododo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_4 + 10, ctzudododo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_4 + 12, ctzudododo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_4 + 14, ctzudododo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_4 + 16, ctzudododo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_4 + 18, ctzudododo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_4 + 20, ctzudododo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_4 + 22, ctzudododo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_4 + 24, ctzudododo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_4 + 26, ctzudododo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_4 + 28, ctzudododo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_4 + 30, ctzudododo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_4 + 32, ctzudododo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_4 + 34, ctzudododo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_4 + 36, ctzudododo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_4 + 38, ctzudododo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_4 + 40, ctzudododo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_4 + 42, ctzudododo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_4 + 44, ctzudododo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_4 + 46, ctzudododo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_4 + 48, ctzudododo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_4 + 50, ctzudododo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_4 + 52, ctzudododo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_4 + 54, ctzudododo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_4 + 56, ctzudododo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_4 + 58, ctzudododo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_4 + 60, ctzudododo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_4 + 62, ctzudododo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_4 + 64, ctzudododo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_4 + 66, ctzudododo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_4 + 68, ctzudododo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_4 + 70, ctzudododo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_4 + 72, ctzudododo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_4 + 74, ctzudododo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_4 + 76, ctzudododo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_4 + 78, ctzudododo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_4 + 80, ctzudododo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_4 + 82, ctzudododo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_4 + 84, ctzudododo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_4 + 86, ctzudododo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_4 + 88, ctzudododo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_4 + 90, ctzudododo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_4 + 92, ctzudododo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_4 + 94, ctzudododo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_4 + 96, ctzudododo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_4 + 98, ctzudododo, 33.8, 347.4 , 0 );

setEffScaleKey( spep_4 + 0, ctzudododo, 2.87, 3.72 );
setEffScaleKey( spep_4 + 98, ctzudododo, 2.87, 3.72 );

setEffRotateKey( spep_4 + 0, ctzudododo, 80.1 );
setEffRotateKey( spep_4 + 98, ctzudododo, 80.1 );

setEffAlphaKey( spep_4 + 0, ctzudododo, 255 );
setEffAlphaKey( spep_4 + 98, ctzudododo, 255 );



--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 69, 1, 1 );
changeAnime( spep_4 + 0, 1, 104 );
changeAnime( spep_4 + 60, 1, 108 );

setMoveKey( spep_4 + 0, 1, 240.9, -29.9 , 0 );
setMoveKey( spep_4 + 2, 1, 240, -30.3 , 0 );
setMoveKey( spep_4 + 4, 1, 239.1, -30.8 , 0 );
setMoveKey( spep_4 + 6, 1, 238.2, -31.3 , 0 );
setMoveKey( spep_4 + 8, 1, 237.2, -31.8 , 0 );
setMoveKey( spep_4 + 10, 1, 236.1, -32.4 , 0 );
setMoveKey( spep_4 + 12, 1, 235, -33 , 0 );
setMoveKey( spep_4 + 14, 1, 233.8, -33.6 , 0 );
setMoveKey( spep_4 + 16, 1, 232.6, -34.3 , 0 );
setMoveKey( spep_4 + 18, 1, 231.3, -34.9 , 0 );
setMoveKey( spep_4 + 20, 1, 230, -35.7 , 0 );
setMoveKey( spep_4 + 22, 1, 228.6, -36.4 , 0 );
setMoveKey( spep_4 + 24, 1, 227.1, -37.2 , 0 );
setMoveKey( spep_4 + 26, 1, 225.6, -38 , 0 );
setMoveKey( spep_4 + 28, 1, 224, -38.8 , 0 );
setMoveKey( spep_4 + 30, 1, 222.4, -39.7 , 0 );
setMoveKey( spep_4 + 32, 1, 220.7, -40.6 , 0 );
setMoveKey( spep_4 + 34, 1, 219, -41.5 , 0 );
setMoveKey( spep_4 + 36, 1, 217.2, -42.4 , 0 );
setMoveKey( spep_4 + 38, 1, 215.4, -43.4 , 0 );
setMoveKey( spep_4 + 40, 1, 213.5, -44.4 , 0 );
setMoveKey( spep_4 + 42, 1, 211.5, -45.5 , 0 );
setMoveKey( spep_4 + 44, 1, 209.5, -46.5 , 0 );
setMoveKey( spep_4 + 46, 1, 207.4, -47.6 , 0 );
setMoveKey( spep_4 + 48, 1, 205.3, -48.8 , 0 );
setMoveKey( spep_4 + 50, 1, 203.1, -49.9 , 0 );
setMoveKey( spep_4 + 52, 1, 200.9, -51.1 , 0 );
setMoveKey( spep_4 + 54, 1, 198.6, -52.3 , 0 );
setMoveKey( spep_4 + 56, 1, 196.2, -53.6 , 0 );
setMoveKey( spep_4 + 59, 1, 193.8, -54.9 , 0 );
setMoveKey( spep_4 + 60, 1, 183.9, -33.8 , 0 );
setMoveKey( spep_4 + 62, 1, 212.4, -2.8 , 0 );
setMoveKey( spep_4 + 64, 1, 182.6, -30.4 , 0 );
setMoveKey( spep_4 + 66, 1, 185.1, -30.2 , 0 );
setMoveKey( spep_4 + 68, 1, 192.5, -29.8 , 0 );
--setMoveKey( spep_4 + 70, 1, 204.9, -29 , 0 );
--setMoveKey( spep_4 + 72, 1, 222.2, -27.9 , 0 );
--setMoveKey( spep_4 + 74, 1, 244.4, -26.5 , 0 );
--setMoveKey( spep_4 + 76, 1, 271.6, -24.9 , 0 );
--setMoveKey( spep_4 + 78, 1, 303.8, -22.9 , 0 );
--setMoveKey( spep_4 + 80, 1, 340.9, -20.5 , 0 );
--setMoveKey( spep_4 + 82, 1, 382.9, -17.9 , 0 );
--setMoveKey( spep_4 + 84, 1, 429.9, -15 , 0 );

setScaleKey( spep_4 + 0, 1, 1.16, 1.16 );
setScaleKey( spep_4 + 2, 1, 1.19, 1.19 );
setScaleKey( spep_4 + 4, 1, 1.21, 1.21 );
setScaleKey( spep_4 + 6, 1, 1.24, 1.24 );
setScaleKey( spep_4 + 8, 1, 1.28, 1.28 );
setScaleKey( spep_4 + 10, 1, 1.31, 1.31 );
setScaleKey( spep_4 + 12, 1, 1.34, 1.34 );
setScaleKey( spep_4 + 14, 1, 1.38, 1.38 );
setScaleKey( spep_4 + 16, 1, 1.42, 1.42 );
setScaleKey( spep_4 + 18, 1, 1.46, 1.46 );
setScaleKey( spep_4 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 22, 1, 1.55, 1.55 );
setScaleKey( spep_4 + 24, 1, 1.59, 1.59 );
setScaleKey( spep_4 + 26, 1, 1.64, 1.64 );
setScaleKey( spep_4 + 28, 1, 1.69, 1.69 );
setScaleKey( spep_4 + 30, 1, 1.74, 1.74 );
setScaleKey( spep_4 + 32, 1, 1.79, 1.79 );
setScaleKey( spep_4 + 34, 1, 1.85, 1.85 );
setScaleKey( spep_4 + 36, 1, 1.9, 1.9 );
setScaleKey( spep_4 + 38, 1, 1.96, 1.96 );
setScaleKey( spep_4 + 40, 1, 2.02, 2.02 );
setScaleKey( spep_4 + 42, 1, 2.08, 2.08 );
setScaleKey( spep_4 + 44, 1, 2.15, 2.15 );
setScaleKey( spep_4 + 46, 1, 2.21, 2.21 );
setScaleKey( spep_4 + 48, 1, 2.28, 2.28 );
setScaleKey( spep_4 + 50, 1, 2.35, 2.35 );
setScaleKey( spep_4 + 52, 1, 2.42, 2.42 );
setScaleKey( spep_4 + 54, 1, 2.49, 2.49 );
setScaleKey( spep_4 + 56, 1, 2.56, 2.56 );
setScaleKey( spep_4 + 59, 1, 2.64, 2.64 );
setScaleKey( spep_4 + 60, 1, 2.38, 2.38 );
setScaleKey( spep_4 + 62, 1, 2.38, 2.38 );
setScaleKey( spep_4 + 64, 1, 2.37, 2.37 );
setScaleKey( spep_4 + 66, 1, 2.35, 2.35 );
setScaleKey( spep_4 + 68, 1, 2.3, 2.3 );
--setScaleKey( spep_4 + 70, 1, 2.2, 2.2 );
--setScaleKey( spep_4 + 72, 1, 2.07, 2.07 );
--setScaleKey( spep_4 + 74, 1, 1.91, 1.91 );
--setScaleKey( spep_4 + 76, 1, 1.7, 1.7 );
--setScaleKey( spep_4 + 78, 1, 1.46, 1.46 );
--setScaleKey( spep_4 + 80, 1, 1.18, 1.18 );
--setScaleKey( spep_4 + 82, 1, 0.86, 0.86 );
--setScaleKey( spep_4 + 84, 1, 0.51, 0.51 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4 + 59, 1, 0 );
setRotateKey( spep_4 + 60, 1, 23.7 );
setRotateKey( spep_4 + 62, 1, -16 );
setRotateKey( spep_4 + 64, 1, 0 );
--setRotateKey( spep_4 + 84, 1, 0 );

setShakeChara( spep_4 , 1, 68 ,20);

--黒背景
entryFadeBg(spep_4, 0, 100, 0, 0, 0, 0, 180);  -- 黒　背景

--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

SP_dodge = spep_4+13 ; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

pauseAll( SP_dodge, 67);

--キャラクターの固定
setMoveKey(SP_dodge, 1, 235, -33 , 0);
setScaleKey(SP_dodge , 1 ,1.34, 1.34 );
setRotateKey(SP_dodge,   1, 0);

--キャラクターの固定
setMoveKey(SP_dodge+8, 1, 235, -33 , 0);
setScaleKey(SP_dodge+8 , 1 , 1.34, 1.34 );
setRotateKey(SP_dodge+8,   1, 0);



setDisp(SP_dodge+9, 0, 0);
setDisp(SP_dodge+9, 1, 0);
setMoveKey(SP_dodge+9, 1, 0 , 0, 0);
setScaleKey(SP_dodge+9,  1 , 1.34, 1.34 );
setRotateKey(SP_dodge+9,   1, 0);

setMoveKey(SP_dodge+10, 1, 0 , 0, 0);
setScaleKey(SP_dodge+10,  1 , 1.3 ,1.3);
setRotateKey(SP_dodge+10,   1, 0);

--[[
--悟飯を画面外に表示
setMoveKey(SP_dodge+8, 0, 0 , -54,   0);
setMoveKey(SP_dodge+9, 0, 1000 , 1000, 0);
]]


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
playSe(spep_4+1,SE_07);--のびる発射



-- ** エフェクト等 ** --
entryFade(spep_4+95,3,9,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_5=spep_4+100;

------------------------------------------------------
-- ガ
------------------------------------------------------




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
endPhase( spep_5+105);



else

--------------------------------------------------------------------------------------------
--敵側
--------------------------------------------------------------------------------------------
------------------------------------------------------
-- 構え
------------------------------------------------------
spep_0=0;

taiki=entryEffectLife(spep_0,SP_01x,72,0x100,-1,0,0,0);

setEffMoveKey(spep_0,taiki,0,0,0);
setEffMoveKey(spep_0+72,taiki,0,0,0);
setEffScaleKey(spep_0,taiki,1.0,1.0);
setEffScaleKey(spep_0+72,taiki,1.0,1.0);
setEffAlphaKey(spep_0,taiki,255);
setEffAlphaKey(spep_0+72,taiki,255);
setEffRotateKey(spep_0,taiki,0);
setEffRotateKey(spep_0+72,taiki,0);

shuchu = entryEffectLife( spep_0 + 0,  906, 72, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, shuchu, 0, 0 , 0 );
setEffMoveKey( spep_0 + 72, shuchu, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchu, 1.55, 1.55 );
setEffScaleKey( spep_0 + 72, shuchu, 1.55, 1.55 );

setEffRotateKey( spep_0 + 0, shuchu, 180 );
setEffRotateKey( spep_0 + 72, shuchu, 180 );

setEffAlphaKey( spep_0 + 0, shuchu, 255 );
setEffAlphaKey( spep_0 + 72, shuchu, 255 );

--SE--
playSe(spep_0+52,1018);--移動音


-- ** エフェクト等 ** --
entryFade(spep_0,0,0,3,fcolor_r,fcolor_g,fcolor_b,200);     -- white fade
entryFade(spep_0+68,5,2,1,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_1=spep_0+73;


--------------------------------------
--カードカットイン(90F)
--------------------------------------

playSe(spep_1,SE_05);
shuchusen=entryEffectLife(spep_1,906,90,0x100,-1,0,0,0);   -- 集中線
setEffScaleKey(spep_1,shuchusen,1.6,1.6);

speff2=entryEffect(spep_1,1507,0,-1,0,0,0);   -- カード
setEffReplaceTexture(speff2,1,1);
setEffReplaceTexture(speff2,2,0);-- カード差し替え
setEffReplaceTexture(speff2,5,4);-- 技名テクスチャ差し替え

-- ** エフェクト等 ** --
entryFade(spep_1+85,3,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_2=spep_1+90;

------------------------------------------------------
-- ベジータ出現
------------------------------------------------------
touzyo=entryEffectLife(spep_2,SP_02x,278,0x100,-1,0,-30,0);

setEffMoveKey(spep_2,touzyo,0,-30,0);
setEffMoveKey(spep_2+278,touzyo,0,-30,0);
setEffScaleKey(spep_2,touzyo,1.2,1.2);
setEffScaleKey(spep_2+278,touzyo,1.2,1.2);
setEffAlphaKey(spep_2,touzyo,255);
setEffAlphaKey(spep_2+278,touzyo,255);
setEffRotateKey(spep_2,touzyo,0);
setEffRotateKey(spep_2+278,touzyo,0);



--顔カットイン
--speff=entryEffect(spep_2+19,1504,0x100,-1,0,0,0);  --カットイン(顔)
--setEffReplaceTexture(speff,3,2);  --カットイン差し替え
--speff1=entryEffect(spep_2+19,1505,0x100,-1,0,0,0);  --カットイン(セリフ)
--setEffReplaceTexture(speff1,4,5);  --セリフカットイン差し替え

--文字エントリー
ctgogo=entryEffectLife(spep_2+31,190006,69,0x100,-1,60,515);--ゴゴゴ
setEffMoveKey(spep_2+31,ctgogo,60,515,0);
setEffMoveKey(spep_2+100,ctgogo,60,515,0);
setEffScaleKey(spep_2+31, ctgogo, -0.7, 0.7);
setEffScaleKey(spep_2+100, ctgogo, -0.7, 0.7);
setEffRotateKey( spep_2 + 31, ctgogo, -10 );
setEffRotateKey( spep_2 + 100, ctgogo, -10 );

--流線
shuchu1 = entryEffectLife( spep_2 + 0,  914, 102, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 102, shuchu1, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchu1, 4.3, 1.13 );
setEffScaleKey( spep_2 + 102, shuchu1, 4.3, 1.13 );

setEffRotateKey( spep_2 + 0, shuchu1, 0 );
setEffRotateKey( spep_2 + 102, shuchu1, 0 );

setEffAlphaKey( spep_2 + 0, shuchu1, 255 );
setEffAlphaKey( spep_2 + 102, shuchu1, 255 );


--後ろの気
ef_ki=entryEffectLife(spep_2+211, 1503, 66,0x80,-1,0,0,0);   -- 集中線
setEffScaleKey(spep_2+211, ef_ki, 1.2, 1.2);
setEffScaleKey(spep_2+211+4, ef_ki, 1.5, 1.5);
setEffScaleKey(spep_2+277,ef_ki, 1.5, 1.5);
setEffMoveKey(spep_2+211,ef_ki,0,0,0);
setEffMoveKey(spep_2+277,ef_ki,0,0,0);
setEffAlphaKey(spep_2+211,ef_ki,255);
setEffAlphaKey(spep_2+277,ef_ki,255);

--バチバチ
ef_bati=entryEffectLife(spep_2+211, 1502, 66,0x100,-1,0,0,0);   -- 集中線
setEffScaleKey(spep_2+211,ef_bati, 1.3, 1.3);
setEffScaleKey(spep_2+277,ef_bati, 1.3, 1.3);
setEffMoveKey(spep_2+211,ef_bati,0,0,0);
setEffMoveKey(spep_2+277,ef_bati,0,0,0);
setEffAlphaKey(spep_2+211,ef_bati,255);
setEffAlphaKey(spep_2+277,ef_bati,255);

ctZun = entryEffectLife( spep_2 + 216,  10016, 62, 0x100, -1, 0, 126.8, 247.3 );
setEffMoveKey( spep_2 + 216, ctZun, 126.8, 247.3 , 0 );
setEffMoveKey( spep_2 + 218, ctZun, 131.4, 264.3 , 0 );
setEffMoveKey( spep_2 + 220, ctZun, 139.9, 269.2 , 0 );
setEffMoveKey( spep_2 + 222, ctZun, 139.6, 283.1 , 0 );
setEffMoveKey( spep_2 + 224, ctZun, 151.2, 284.2 , 0 );
setEffMoveKey( spep_2 + 226, ctZun, 146.4, 287.4 , 0 );
setEffMoveKey( spep_2 + 228, ctZun, 142.9, 295.1 , 0 );
setEffMoveKey( spep_2 + 230, ctZun, 147.1, 290.5 , 0 );
setEffMoveKey( spep_2 + 232, ctZun, 142.4, 301 , 0 );
setEffMoveKey( spep_2 + 234, ctZun, 152.1, 300.6 , 0 );
setEffMoveKey( spep_2 + 236, ctZun, 144.3, 310.2 , 0 );
setEffMoveKey( spep_2 + 238, ctZun, 151, 303.6 , 0 );
setEffMoveKey( spep_2 + 240, ctZun, 146.4, 311.6 , 0 );
setEffMoveKey( spep_2 + 242, ctZun, 142.9, 318.2 , 0 );
setEffMoveKey( spep_2 + 244, ctZun, 147.1, 312.6 , 0 );
setEffMoveKey( spep_2 + 246, ctZun, 142.4, 322 , 0 );
setEffMoveKey( spep_2 + 248, ctZun, 152.1, 320.5 , 0 );
setEffMoveKey( spep_2 + 250, ctZun, 144.3, 329.1 , 0 );
setEffMoveKey( spep_2 + 252, ctZun, 151, 321.4 , 0 );
setEffMoveKey( spep_2 + 254, ctZun, 146.4, 328.3 , 0 );
setEffMoveKey( spep_2 + 256, ctZun, 142.9, 333.8 , 0 );
setEffMoveKey( spep_2 + 258, ctZun, 147.1, 327.1 , 0 );
setEffMoveKey( spep_2 + 260, ctZun, 142.4, 335.4 , 0 );
setEffMoveKey( spep_2 + 262, ctZun, 152.1, 332.9 , 0 );
setEffMoveKey( spep_2 + 264, ctZun, 144.3, 340.4 , 0 );
setEffMoveKey( spep_2 + 266, ctZun, 151, 331.6 , 0 );
setEffMoveKey( spep_2 + 268, ctZun, 146.4, 337.5 , 0 );
setEffMoveKey( spep_2 + 270, ctZun, 142.9, 341.9 , 0 );
setEffMoveKey( spep_2 + 272, ctZun, 147.1, 334.1 , 0 );
setEffMoveKey( spep_2 + 274, ctZun, 142.4, 341.4 , 0 );
setEffMoveKey( spep_2 + 276, ctZun, 152.1, 337.7 , 0 );
setEffMoveKey( spep_2 + 278, ctZun, 146.4, 339.4 , 0 );

-- ctZun
setEffScaleKey( spep_2 + 216, ctZun, 0.81, 0.81 );
setEffScaleKey( spep_2 + 218, ctZun, 1.08, 1.08 );
setEffScaleKey( spep_2 + 220, ctZun, 1.29, 1.29 );
setEffScaleKey( spep_2 + 222, ctZun, 1.44, 1.44 );
setEffScaleKey( spep_2 + 224, ctZun, 1.53, 1.53 );
setEffScaleKey( spep_2 + 226, ctZun, 1.56, 1.56 );

setEffRotateKey( spep_2 + 216, ctZun, 20 );

setEffAlphaKey( spep_2 + 216, ctZun, 255 );
--SE
--playSe(spep_2,1018);--移動音
playSe( spep_2+30, SE_04); --ゴゴゴ
playSe(spep_2+211,SE_01);--気だめ

--黒背景
entryFadeBg(spep_2, 0, 273, 0, 0, 0, 0, 180);  -- 黒　背景

-- ** エフェクト等 ** --
entryFade(spep_2+273,5,2,3,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_3=spep_2+278;

------------------------------------------------------
-- 放つ
------------------------------------------------------
beam=entryEffectLife(spep_3,SP_03x,115,0x100,-1,0,0,0);

setEffMoveKey(spep_3,beam,0,0,0);
setEffMoveKey(spep_3+120,beam,0,0,0);
setEffScaleKey(spep_3,beam,1.0,1.0);
setEffScaleKey(spep_3+120,beam,1.0,1.0);
setEffAlphaKey(spep_3,beam,255);
setEffAlphaKey(spep_3+120,beam,255);
setEffRotateKey(spep_3,beam,0);
setEffRotateKey(spep_3+120,beam,0);


--集中線
shuchu2 = entryEffectLife( spep_3 + 0,  906, 48, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_3 + 0, shuchu2, 0, 0 , 0 );
setEffMoveKey( spep_3 + 48, shuchu2, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchu2, 1.5, 1.5 );
setEffScaleKey( spep_3 + 38, shuchu2, 1.5, 1.5 );
setEffScaleKey( spep_3 + 40, shuchu2, 1.54, 1.54 );
setEffScaleKey( spep_3 + 42, shuchu2, 1.66, 1.66 );
setEffScaleKey( spep_3 + 44, shuchu2, 1.86, 1.86 );
setEffScaleKey( spep_3 + 46, shuchu2, 2.14, 2.14 );
setEffScaleKey( spep_3 + 48, shuchu2, 2.5, 2.5 );

setEffRotateKey( spep_3 + 0, shuchu2, 180 );
setEffRotateKey( spep_3 + 48, shuchu2, 180 );

setEffAlphaKey( spep_3 + 0, shuchu2, 255 );
setEffAlphaKey( spep_3 + 48, shuchu2, 255 );



--集中線（斜め）
shuchu3 = entryEffectLife( spep_3 + 0,  921, 115, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_3 + 0, shuchu3, 0, 0 , 0 );
setEffMoveKey( spep_3 + 115, shuchu3, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchu3, 1, 1 );
setEffScaleKey( spep_3 + 115, shuchu3, 1, 1 );

setEffRotateKey( spep_3 + 0, shuchu3, 180 );
setEffRotateKey( spep_3 + 115, shuchu3, 180 );

setEffAlphaKey( spep_3 + 0, shuchu3, 255 );
setEffAlphaKey( spep_3 + 115, shuchu3, 255 );

--文字エントリー
ctzuo = entryEffectLife( spep_3 + 8,  10012, 34, 0x100, -1, 0, 166.5, 310.2 );--ズオッ
setEffMoveKey( spep_3 + 8, ctzuo, 166.5, 310.2 , 0 );
setEffMoveKey( spep_3 + 10, ctzuo, 169.5, 305.5 , 0 );
setEffMoveKey( spep_3 + 12, ctzuo, 167.6, 310.8 , 0 );
setEffMoveKey( spep_3 + 14, ctzuo, 173.1, 301 , 0 );
setEffMoveKey( spep_3 + 16, ctzuo, 168.6, 311.4 , 0 );
setEffMoveKey( spep_3 + 18, ctzuo, 174.8, 298.7 , 0 );
setEffMoveKey( spep_3 + 20, ctzuo, 168.6, 311.4 , 0 );
setEffMoveKey( spep_3 + 22, ctzuo, 174.8, 298.7 , 0 );
setEffMoveKey( spep_3 + 24, ctzuo, 168.6, 311.4 , 0 );
setEffMoveKey( spep_3 + 26, ctzuo, 174.8, 298.7 , 0 );
setEffMoveKey( spep_3 + 28, ctzuo, 168.6, 311.4 , 0 );
setEffMoveKey( spep_3 + 30, ctzuo, 176.6, 296.6 , 0 );
setEffMoveKey( spep_3 + 32, ctzuo, 169.7, 312.1 , 0 );
setEffMoveKey( spep_3 + 34, ctzuo, 170.3, 312.4 , 0 );

setEffScaleKey( spep_3 + 8, ctzuo, 0.37, 0.28 );
setEffScaleKey( spep_3 + 10, ctzuo, 0.74, 0.57 );
setEffScaleKey( spep_3 + 12, ctzuo, 1.12, 0.85 );
setEffScaleKey( spep_3 + 14, ctzuo, 1.49, 1.14 );
setEffScaleKey( spep_3 + 16, ctzuo, 1.86, 1.42 );
setEffScaleKey( spep_3 + 28, ctzuo, 1.86, 1.42 );
setEffScaleKey( spep_3 + 30, ctzuo, 2.23, 1.71 );
setEffScaleKey( spep_3 + 32, ctzuo, 2.6, 1.99 );
setEffScaleKey( spep_3 + 34, ctzuo, 2.98, 2.28 );

setEffRotateKey( spep_3 + 8, ctzuo, 19.2 );
setEffRotateKey( spep_3 + 34, ctzuo, 19.2 );

setEffAlphaKey( spep_3 + 8, ctzuo, 255 );
setEffAlphaKey( spep_3 + 28, ctzuo, 255 );
setEffAlphaKey( spep_3 + 30, ctzuo, 170 );
setEffAlphaKey( spep_3 + 32, ctzuo, 85 );
setEffAlphaKey( spep_3 + 34, ctzuo, 0 );

--SE
playSe(spep_3+1,SE_07);--のびる発射

-- ** エフェクト等 ** --
entryFade(spep_3+115,2,2,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--黒背景
entryFadeBg(spep_3, 0, 118, 0, 0, 0, 0, 255);  -- 黒　背景


--次の準備
spep_4=spep_3+118;

------------------------------------------------------
-- 被弾
------------------------------------------------------

hit=entryEffectLife(spep_4,SP_04x,100,0x100,-1,0,0,0);

setEffMoveKey(spep_4,hit,0,0,0);
setEffMoveKey(spep_4+100,hit,0,0,0);
setEffScaleKey(spep_4,hit,1.0,1.0);
setEffScaleKey(spep_4+100,hit,1.0,1.0);
setEffAlphaKey(spep_4,hit,255);
setEffAlphaKey(spep_4+100,hit,255);
setEffRotateKey(spep_4,hit,0);
setEffRotateKey(spep_4+100,hit,0);

--集中線（斜め）
shuchu5 = entryEffectLife( spep_4 + 0,  921, 98, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_4 + 0, shuchu5, 0, 0 , 0 );
setEffMoveKey( spep_4 + 98, shuchu5, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, shuchu5, 1, 1 );
setEffScaleKey( spep_4 + 98, shuchu5, 1, 1 );

setEffRotateKey( spep_4 + 0, shuchu5, 0 );
setEffRotateKey( spep_4 + 98, shuchu5, 0 );

setEffAlphaKey( spep_4 + 0, shuchu5, 255 );
setEffAlphaKey( spep_4 + 98, shuchu5, 255 );

--文字エントリー
ctzudododo = entryEffectLife( spep_4 + 0,  10014, 98, 0x100, -1, 0, 57.8, 363.4 );--ズドドド
setEffMoveKey( spep_4 + 0, ctzudododo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_4 + 2, ctzudododo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_4 + 4, ctzudododo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_4 + 6, ctzudododo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_4 + 8, ctzudododo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_4 + 10, ctzudododo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_4 + 12, ctzudododo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_4 + 14, ctzudododo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_4 + 16, ctzudododo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_4 + 18, ctzudododo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_4 + 20, ctzudododo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_4 + 22, ctzudododo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_4 + 24, ctzudododo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_4 + 26, ctzudododo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_4 + 28, ctzudododo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_4 + 30, ctzudododo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_4 + 32, ctzudododo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_4 + 34, ctzudododo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_4 + 36, ctzudododo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_4 + 38, ctzudododo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_4 + 40, ctzudododo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_4 + 42, ctzudododo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_4 + 44, ctzudododo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_4 + 46, ctzudododo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_4 + 48, ctzudododo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_4 + 50, ctzudododo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_4 + 52, ctzudododo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_4 + 54, ctzudododo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_4 + 56, ctzudododo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_4 + 58, ctzudododo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_4 + 60, ctzudododo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_4 + 62, ctzudododo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_4 + 64, ctzudododo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_4 + 66, ctzudododo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_4 + 68, ctzudododo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_4 + 70, ctzudododo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_4 + 72, ctzudododo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_4 + 74, ctzudododo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_4 + 76, ctzudododo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_4 + 78, ctzudododo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_4 + 80, ctzudododo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_4 + 82, ctzudododo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_4 + 84, ctzudododo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_4 + 86, ctzudododo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_4 + 88, ctzudododo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_4 + 90, ctzudododo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_4 + 92, ctzudododo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_4 + 94, ctzudododo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_4 + 96, ctzudododo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_4 + 98, ctzudododo, 33.8, 347.4 , 0 );

setEffScaleKey( spep_4 + 0, ctzudododo, 2.87, 3.72 );
setEffScaleKey( spep_4 + 98, ctzudododo, 2.87, 3.72 );

setEffRotateKey( spep_4 + 0, ctzudododo, 10.1 );
setEffRotateKey( spep_4 + 98, ctzudododo, 10.1 );

setEffAlphaKey( spep_4 + 0, ctzudododo, 255 );
setEffAlphaKey( spep_4 + 98, ctzudododo, 255 );



--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 69, 1, 1 );
changeAnime( spep_4 + 0, 1, 104 );
changeAnime( spep_4 + 60, 1, 108 );

setMoveKey( spep_4 + 0, 1, 240.9, -29.9 , 0 );
setMoveKey( spep_4 + 2, 1, 240, -30.3 , 0 );
setMoveKey( spep_4 + 4, 1, 239.1, -30.8 , 0 );
setMoveKey( spep_4 + 6, 1, 238.2, -31.3 , 0 );
setMoveKey( spep_4 + 8, 1, 237.2, -31.8 , 0 );
setMoveKey( spep_4 + 10, 1, 236.1, -32.4 , 0 );
setMoveKey( spep_4 + 12, 1, 235, -33 , 0 );
setMoveKey( spep_4 + 14, 1, 233.8, -33.6 , 0 );
setMoveKey( spep_4 + 16, 1, 232.6, -34.3 , 0 );
setMoveKey( spep_4 + 18, 1, 231.3, -34.9 , 0 );
setMoveKey( spep_4 + 20, 1, 230, -35.7 , 0 );
setMoveKey( spep_4 + 22, 1, 228.6, -36.4 , 0 );
setMoveKey( spep_4 + 24, 1, 227.1, -37.2 , 0 );
setMoveKey( spep_4 + 26, 1, 225.6, -38 , 0 );
setMoveKey( spep_4 + 28, 1, 224, -38.8 , 0 );
setMoveKey( spep_4 + 30, 1, 222.4, -39.7 , 0 );
setMoveKey( spep_4 + 32, 1, 220.7, -40.6 , 0 );
setMoveKey( spep_4 + 34, 1, 219, -41.5 , 0 );
setMoveKey( spep_4 + 36, 1, 217.2, -42.4 , 0 );
setMoveKey( spep_4 + 38, 1, 215.4, -43.4 , 0 );
setMoveKey( spep_4 + 40, 1, 213.5, -44.4 , 0 );
setMoveKey( spep_4 + 42, 1, 211.5, -45.5 , 0 );
setMoveKey( spep_4 + 44, 1, 209.5, -46.5 , 0 );
setMoveKey( spep_4 + 46, 1, 207.4, -47.6 , 0 );
setMoveKey( spep_4 + 48, 1, 205.3, -48.8 , 0 );
setMoveKey( spep_4 + 50, 1, 203.1, -49.9 , 0 );
setMoveKey( spep_4 + 52, 1, 200.9, -51.1 , 0 );
setMoveKey( spep_4 + 54, 1, 198.6, -52.3 , 0 );
setMoveKey( spep_4 + 56, 1, 196.2, -53.6 , 0 );
setMoveKey( spep_4 + 59, 1, 193.8, -54.9 , 0 );
setMoveKey( spep_4 + 60, 1, 183.9, -33.8 , 0 );
setMoveKey( spep_4 + 62, 1, 212.4, -2.8 , 0 );
setMoveKey( spep_4 + 64, 1, 182.6, -30.4 , 0 );
setMoveKey( spep_4 + 66, 1, 185.1, -30.2 , 0 );
setMoveKey( spep_4 + 68, 1, 192.5, -29.8 , 0 );
--setMoveKey( spep_4 + 70, 1, 204.9, -29 , 0 );
--setMoveKey( spep_4 + 72, 1, 222.2, -27.9 , 0 );
--setMoveKey( spep_4 + 74, 1, 244.4, -26.5 , 0 );
--setMoveKey( spep_4 + 76, 1, 271.6, -24.9 , 0 );
--setMoveKey( spep_4 + 78, 1, 303.8, -22.9 , 0 );
--setMoveKey( spep_4 + 80, 1, 340.9, -20.5 , 0 );
--setMoveKey( spep_4 + 82, 1, 382.9, -17.9 , 0 );
--setMoveKey( spep_4 + 84, 1, 429.9, -15 , 0 );

setScaleKey( spep_4 + 0, 1, 1.16, 1.16 );
setScaleKey( spep_4 + 2, 1, 1.19, 1.19 );
setScaleKey( spep_4 + 4, 1, 1.21, 1.21 );
setScaleKey( spep_4 + 6, 1, 1.24, 1.24 );
setScaleKey( spep_4 + 8, 1, 1.28, 1.28 );
setScaleKey( spep_4 + 10, 1, 1.31, 1.31 );
setScaleKey( spep_4 + 12, 1, 1.34, 1.34 );
setScaleKey( spep_4 + 14, 1, 1.38, 1.38 );
setScaleKey( spep_4 + 16, 1, 1.42, 1.42 );
setScaleKey( spep_4 + 18, 1, 1.46, 1.46 );
setScaleKey( spep_4 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 22, 1, 1.55, 1.55 );
setScaleKey( spep_4 + 24, 1, 1.59, 1.59 );
setScaleKey( spep_4 + 26, 1, 1.64, 1.64 );
setScaleKey( spep_4 + 28, 1, 1.69, 1.69 );
setScaleKey( spep_4 + 30, 1, 1.74, 1.74 );
setScaleKey( spep_4 + 32, 1, 1.79, 1.79 );
setScaleKey( spep_4 + 34, 1, 1.85, 1.85 );
setScaleKey( spep_4 + 36, 1, 1.9, 1.9 );
setScaleKey( spep_4 + 38, 1, 1.96, 1.96 );
setScaleKey( spep_4 + 40, 1, 2.02, 2.02 );
setScaleKey( spep_4 + 42, 1, 2.08, 2.08 );
setScaleKey( spep_4 + 44, 1, 2.15, 2.15 );
setScaleKey( spep_4 + 46, 1, 2.21, 2.21 );
setScaleKey( spep_4 + 48, 1, 2.28, 2.28 );
setScaleKey( spep_4 + 50, 1, 2.35, 2.35 );
setScaleKey( spep_4 + 52, 1, 2.42, 2.42 );
setScaleKey( spep_4 + 54, 1, 2.49, 2.49 );
setScaleKey( spep_4 + 56, 1, 2.56, 2.56 );
setScaleKey( spep_4 + 59, 1, 2.64, 2.64 );
setScaleKey( spep_4 + 60, 1, 2.38, 2.38 );
setScaleKey( spep_4 + 62, 1, 2.38, 2.38 );
setScaleKey( spep_4 + 64, 1, 2.37, 2.37 );
setScaleKey( spep_4 + 66, 1, 2.35, 2.35 );
setScaleKey( spep_4 + 68, 1, 2.3, 2.3 );
--setScaleKey( spep_4 + 70, 1, 2.2, 2.2 );
--setScaleKey( spep_4 + 72, 1, 2.07, 2.07 );
--setScaleKey( spep_4 + 74, 1, 1.91, 1.91 );
--setScaleKey( spep_4 + 76, 1, 1.7, 1.7 );
--setScaleKey( spep_4 + 78, 1, 1.46, 1.46 );
--setScaleKey( spep_4 + 80, 1, 1.18, 1.18 );
--setScaleKey( spep_4 + 82, 1, 0.86, 0.86 );
--setScaleKey( spep_4 + 84, 1, 0.51, 0.51 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4 + 59, 1, 0 );
setRotateKey( spep_4 + 60, 1, 23.7 );
setRotateKey( spep_4 + 62, 1, -16 );
setRotateKey( spep_4 + 64, 1, 0 );
--setRotateKey( spep_4 + 84, 1, 0 );

setShakeChara( spep_4 , 1, 68 ,20);

--黒背景
entryFadeBg(spep_4, 0, 100, 0, 0, 0, 0, 180);  -- 黒　背景

--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

SP_dodge = spep_4+13 ; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

pauseAll( SP_dodge, 67);

--キャラクターの固定
setMoveKey(SP_dodge, 1, 235, -33 , 0);
setScaleKey(SP_dodge , 1 ,1.34, 1.34 );
setRotateKey(SP_dodge,   1, 0);

--キャラクターの固定
setMoveKey(SP_dodge+8, 1, 235, -33 , 0);
setScaleKey(SP_dodge+8 , 1 , 1.34, 1.34 );
setRotateKey(SP_dodge+8,   1, 0);

setDisp(SP_dodge+9, 0, 0);
setDisp(SP_dodge+9, 1, 0);
setMoveKey(SP_dodge+9, 1, 0 , 0, 0);
setScaleKey(SP_dodge+9,  1 , 1.34, 1.34 );
setRotateKey(SP_dodge+9,   1, 0);

setMoveKey(SP_dodge+10, 1, 0 , 0, 0);
setScaleKey(SP_dodge+10,  1 , 1.3 ,1.3);
setRotateKey(SP_dodge+10,   1, 0);

--[[
---悟飯を画面外に表示
setMoveKey(SP_dodge+8, 0, 0 , -54,   0);
setMoveKey(SP_dodge+9, 0, 1000 , 1000, 0);
]]
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
playSe(spep_4+1,SE_07);--のびる発射



-- ** エフェクト等 ** --
entryFade(spep_4+95,3,9,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_5=spep_4+100;

------------------------------------------------------
-- ガ
------------------------------------------------------




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
endPhase( spep_5+105);



end




