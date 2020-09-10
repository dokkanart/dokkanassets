--1018540:超サイヤ人ゴッドSS孫悟空(界王拳)_元気玉(アクティブスキル)
--sp_effect_a2_00124

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--***SE***
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

--エフェクト登録
SP_01=  154384  ;-- ブルーから平常時
SP_02=  154385  ;-- ジャンプして岩山の頂上へ
SP_03=  154386  ;-- 両手を広げて元気玉貯め開始
SP_04=  154387  ;-- 元気玉が完成
SP_05=  154388  ;-- 元気玉を投げる
SP_06=  154389  ;-- 敵に迫る元気玉
SP_07=  154390  ;-- 敵に迫る元気玉
SP_08=  154391  ;-- ブルーになる
SP_09=  154392  ;-- 敵にさらに迫る元気玉
SP_10=  154393  ;-- 敵にさらに迫る元気玉
SP_11=  154394  ;-- 界王拳
SP_12=  154395  ;-- 爆発

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI(0, 0);

changeAnime( 0, 0, 1);                       -- 立ち

setDisp( 0, 0, 0);


setMoveKey(   0,   0,    -5000,  -5000,  0);
setMoveKey(   1,   0,    -5000,  -5000,  0);
setMoveKey(   2,   0,    -5000,  -5000,  0);
setMoveKey(   3,   0,    -5000,  -5000,  0);
setMoveKey(   4,   0,    -5000,  -5000,  0);
setMoveKey(   5,   0,    -5000,  -5000,  0);
setMoveKey(   6,   0,    -5000,  -5000,  0);
setScaleKey(  0,  0,  1.5,  1.5);
setScaleKey(   1,   0, 1.5, 1.5);
setScaleKey(   2,   0, 1.5, 1.5);
setScaleKey(   3,   0, 1.5, 1.5);
setScaleKey(   4,   0, 1.5, 1.5);
setScaleKey(   5,   0, 1.5, 1.5);
setScaleKey(   6,   0, 1.5, 1.5);


-- 敵
setDisp( 0, 1, 0);
changeAnime( 0, 1, 101);                       -- 立ち
setMoveKey(   0,   1,    -5000,  -5000,  0);
setMoveKey(   1,   1,    -5000,  -5000,  0);
setMoveKey(   2,   1,    -5000,  -5000,  0);
setMoveKey(   3,   1,    -5000,  -5000,  0);
setMoveKey(   4,   1,    -5000,  -5000,  0);
setMoveKey(   5,   1,    -5000,  -5000,  0);
setMoveKey(   6,   1,    -5000,  -5000,  0);
setScaleKey(   1,   1, 1.5, 1.5);
setScaleKey(   2,   1, 1.5, 1.5);
setScaleKey(   3,   1, 1.5, 1.5);
setScaleKey(   4,   1, 1.5, 1.5);
setScaleKey(   5,   1, 1.5, 1.5);
setScaleKey(   6,   1, 1.5, 1.5);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then
------------------------------------------------------
--ブルーから平常時
------------------------------------------------------
spep_0=0;

--エフェクト
natural=entryEffect(spep_0,SP_01,0x80,-1,0,0,0);

setEffMoveKey( spep_0 + 0, natural, 0, 0 , 0 );
setEffMoveKey( spep_0 + 54, natural, 0, 0 , 0 );

setEffScaleKey(spep_0,natural,1.0,1.0);
setEffScaleKey(spep_0+54,natural,1.0,1.0);

setEffRotateKey(spep_0,natural,0);
setEffRotateKey(spep_0+54,natural,0);

setEffAlphaKey(spep_0,natural,255);
setEffAlphaKey(spep_0+54,natural,255);

--SE
se_0063 = playSe( spep_0 + 4, 63 );
playSe( spep_0 + 8, 1016 );
setSeVolume( spep_0 + 8,1016, 0 );
setSeVolume( spep_0 + 10,1016, 7 );
setSeVolume( spep_0 + 11,1016, 14 );
setSeVolume( spep_0 + 12,1016, 21 );
setSeVolume( spep_0 + 13,1016, 28 );
setSeVolume( spep_0 + 14,1016, 35 );
setSeVolume( spep_0 + 15,1016, 42 );
setSeVolume( spep_0 + 16,1016, 49 );
setSeVolume( spep_0 + 17,1016, 56 );
setSeVolume( spep_0 + 18,1016, 63 );
setSeVolume( spep_0 + 19,1016, 70 );
setSeVolume( spep_0 + 20,1016, 79 );
se_0044 = playSe( spep_0 + 48, 44 );
setSeVolume( spep_0 + 48,44, 0 );

stopSe( spep_0 + 28, se_0063, 20 );

--次の準備
spep_1=spep_0+54;

------------------------------------------------------
--ジャンプして岩山の頂上へ
------------------------------------------------------
--エフェクト
jump=entryEffect(spep_1,SP_02,0x80,-1,0,0,0);

setEffMoveKey( spep_1 + 0, jump, 0, 0 , 0 );
setEffMoveKey( spep_1 + 74, jump, 0, 0 , 0 );

setEffScaleKey(spep_1,jump,1.0,1.0);
setEffScaleKey(spep_1+74,jump,1.0,1.0);

setEffRotateKey(spep_1,jump,0);
setEffRotateKey(spep_1+74,jump,0);

setEffAlphaKey(spep_1,jump,255);
setEffAlphaKey(spep_1+74,jump,255);

--SE
setSeVolume( spep_1 + 4,44, 26 );
setSeVolume( spep_1 + 5,44, 52 );
setSeVolume( spep_1 + 6,44, 79 );
playSe( spep_1 + 4, 1048 );
setSeVolume( spep_1 + 4,1048, 79 );
se_1109 = playSe( spep_1 + 4, 1109 );
setSeVolume( spep_1 + 4,1109, 71 );

stopSe( spep_1 + 10, se_0044, 42 );
stopSe( spep_1 + 12, se_1109, 18 );
---------------------------------------------------------------------------
-- 回避
---------------------------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 30; --エンドフェイズのフレーム数を置き換える

--    stopSe( SP_dodge - 12, se_0044, 0 );

    playSe( SP_dodge - 12, 1042 );
    
    pauseAll( SP_dodge, 67 );
    
    -- ** 敵キャラクター ** --
    
    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);
    
    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
    setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
    
---------------------------------------------------------------------------
-- 回避しなかった場合
---------------------------------------------------------------------------

playSe( spep_1 + 54, 1108 );
playSe( spep_1 + 56, 1108 );
setSeVolume( spep_1 + 56,1108, 63 );
playSe( spep_1 + 60, 1072 );





--次の準備
spep_2=spep_1+74;

------------------------------------------------------
--両手を広げて元気玉貯め開始
------------------------------------------------------
--エフェクト
tame=entryEffect(spep_2,SP_03,0x100,-1,0,0,0);

setEffMoveKey( spep_2 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_2 + 174, tame, 0, 0 , 0 );

setEffScaleKey(spep_2,tame,1.0,1.0);
setEffScaleKey(spep_2+174,tame,1.0,1.0);

setEffRotateKey(spep_2,tame,0);
setEffRotateKey(spep_2+174,tame,0);

setEffAlphaKey(spep_2,tame,255);
setEffAlphaKey(spep_2+174,tame,255);

--文字エントリー
ctba = entryEffectLife( spep_2-3 + 18,  10022, 10, 0x100, -1, 0, 4, 429.9 );--バッ

setEffMoveKey( spep_2-3 + 18, ctba, 4, 429.9 , 0 );
setEffMoveKey( spep_2-3 + 20, ctba, 4, 439.9 , 0 );
setEffMoveKey( spep_2-3 + 22, ctba, 3.9, 450 , 0 );
setEffMoveKey( spep_2-3 + 24, ctba, 4, 450.1 , 0 );
setEffMoveKey( spep_2-3 + 26, ctba, 4.1, 450.2 , 0 );
setEffMoveKey( spep_2-3 + 28, ctba, 4.2, 450.3 , 0 );

setEffScaleKey( spep_2-3 + 18, ctba, 1.6, 1.6 );
setEffScaleKey( spep_2-3 + 20, ctba, 2.03, 2.03 );
setEffScaleKey( spep_2-3 + 22, ctba, 2.46, 2.46 );
setEffScaleKey( spep_2-3 + 24, ctba, 2.46, 2.46 );
setEffScaleKey( spep_2-3 + 26, ctba, 2.47, 2.47 );
setEffScaleKey( spep_2-3 + 28, ctba, 2.47, 2.47 );

setEffRotateKey( spep_2-3 + 18, ctba, 0 );
setEffRotateKey( spep_2-3 + 28, ctba, 0 );

setEffAlphaKey( spep_2-3 + 18, ctba, 255 );
setEffAlphaKey( spep_2-3 + 22, ctba, 255 );
setEffAlphaKey( spep_2-3 + 24, ctba, 170 );
setEffAlphaKey( spep_2-3 + 26, ctba, 85 );
setEffAlphaKey( spep_2-3 + 28, ctba, 0 );
--[[
--集中線
shuchusen1 = entryEffectLife( spep_2-3 + 30,  906, 66, 0x100, -1, 0, 0, 300 );

setEffMoveKey( spep_2-3 + 30, shuchusen1, 0, 300 , 0 );
setEffMoveKey( spep_2-3 + 96, shuchusen1, 0, 300 , 0 );

setEffScaleKey( spep_2-3 + 30, shuchusen1, 1.12, 1.62 );
setEffScaleKey( spep_2-3 + 96, shuchusen1, 1.12, 1.62 );

setEffRotateKey( spep_2-3 + 30, shuchusen1, 180 );
setEffRotateKey( spep_2-3 + 96, shuchusen1, 180 );

setEffAlphaKey( spep_2-3 + 30, shuchusen1, 255 );
setEffAlphaKey( spep_2-3 + 96, shuchusen1, 255 );
]]--

--オラに元気分けてくれ！
playVoice(spep_2+30,135);
setVoiceVolume(spep_2+30,135,500 -250 );

--SE
playSe( spep_2 + 116, 1175 );
setSeVolume( spep_2 + 116,1175, 25 +20 );

--次の準備
spep_3=spep_2+174;

------------------------------------------------------
--元気玉が完成
------------------------------------------------------
--エフェクト
complete=entryEffect(spep_3,SP_04,0x100,-1,0,0,0);

setEffMoveKey( spep_3 + 0, complete, 0, 0 , 0 );
setEffMoveKey( spep_3 + 74, complete, 0, 0 , 0 );

setEffScaleKey(spep_3,complete,1.0,1.0);
setEffScaleKey(spep_3+74,complete,1.0,1.0);

setEffRotateKey(spep_3,complete,0);
setEffRotateKey(spep_3+74,complete,0);

setEffAlphaKey(spep_3,complete,255);
setEffAlphaKey(spep_3+74,complete,255);

--SE
playSe( spep_3 + 8, 1184 );
setSeVolume( spep_3 + 8,1184, 79 );
se_1185 = playSe( spep_3 + 8, 1185 );
setSeVolume( spep_3 + 8,1185, 79 );

--次の準備
spep_4=spep_3+74;


------------------------------------------------------
--元気玉を投げる
------------------------------------------------------
--エフェクト
throw=entryEffect(spep_4,SP_05,0x100,-1,0,0,0);

setEffMoveKey( spep_4 + 0, throw, 0, 0 , 0 );
setEffMoveKey( spep_4 + 56, throw, 0, 0 , 0 );

setEffScaleKey(spep_4,throw,1.0,1.0);
setEffScaleKey(spep_4+56,throw,1.0,1.0);

setEffRotateKey(spep_4,throw,0);
setEffRotateKey(spep_4+56,throw,0);

setEffAlphaKey(spep_4,throw,255);
setEffAlphaKey(spep_4+56,throw,255);

--SE
playSe( spep_4 + 14, 20 );
setSeVolume( spep_4 + 14, 20, 79 );

SEX=playSe( spep_4 + 14, 1044 );
setSeVolume( spep_4 + 14, 1044, 0 );
setSeVolume( spep_4 +28,1044,0.43);
setSeVolume( spep_4 +29,1044,0.86);
setSeVolume( spep_4 +30,1044,1.29);
setSeVolume( spep_4 +31,1044,1.72);
setSeVolume( spep_4 +32,1044,2.15);
setSeVolume( spep_4 +33,1044,2.58);
setSeVolume( spep_4 +34,1044,3.01);
setSeVolume( spep_4 +35,1044,3.44);
setSeVolume( spep_4 +36,1044,3.87);
setSeVolume( spep_4 +37,1044,4.3);
setSeVolume( spep_4 +38,1044,4.73);
setSeVolume( spep_4 +39,1044,5.16);
setSeVolume( spep_4 +40,1044,5.59);
setSeVolume( spep_4 +41,1044,6.02);
setSeVolume( spep_4 +42,1044,6.45);
setSeVolume( spep_4 +43,1044,6.88);
setSeVolume( spep_4 +44,1044,7.31);
setSeVolume( spep_4 +45,1044,7.74);
setSeVolume( spep_4 +46,1044,8.17);
setSeVolume( spep_4 +47,1044,8.6);
setSeVolume( spep_4 +48,1044,9.03);
setSeVolume( spep_4 +49,1044,9.46);
setSeVolume( spep_4 +50,1044,9.89);
setSeVolume( spep_4 +51,1044,10.32);
setSeVolume( spep_4 +52,1044,10.75);
setSeVolume( spep_4 +53,1044,11.18);
setSeVolume( spep_4 +54,1044,11.61);
setSeVolume( spep_4 +55,1044,12.04);
setSeVolume( spep_4 +56,1044,12.47);
setSeVolume( spep_4 +57,1044,12.9);
setSeVolume( spep_4 +58,1044,13.33);
setSeVolume( spep_4 +59,1044,13.76);
setSeVolume( spep_4 +60,1044,14.19);
setSeVolume( spep_4 +61,1044,14.62);
setSeVolume( spep_4 +62,1044,15.05);
setSeVolume( spep_4 +63,1044,15.48);
setSeVolume( spep_4 +64,1044,15.91);
setSeVolume( spep_4 +65,1044,16.34);
setSeVolume( spep_4 +66,1044,16.77);
setSeVolume( spep_4 +67,1044,17.2);
setSeVolume( spep_4 +68,1044,17.63);
setSeVolume( spep_4 +69,1044,18.06);
setSeVolume( spep_4 +70,1044,18.49);
setSeVolume( spep_4 +71,1044,18.92);
setSeVolume( spep_4 +72,1044,19.35);
setSeVolume( spep_4 +73,1044,19.78);
setSeVolume( spep_4 +74,1044,20.21);
setSeVolume( spep_4 +75,1044,20.64);
setSeVolume( spep_4 +76,1044,21.07);
setSeVolume( spep_4 +77,1044,21.5);
setSeVolume( spep_4 +78,1044,21.93);
setSeVolume( spep_4 +79,1044,22.36);
setSeVolume( spep_4 +80,1044,22.79);
setSeVolume( spep_4 +81,1044,23.22);
setSeVolume( spep_4 +82,1044,23.65);
setSeVolume( spep_4 +83,1044,24.08);
setSeVolume( spep_4 +84,1044,24.51);
setSeVolume( spep_4 +85,1044,24.94);
setSeVolume( spep_4 +86,1044,25.37);
setSeVolume( spep_4 +87,1044,25.8);
setSeVolume( spep_4 +88,1044,26.23);
setSeVolume( spep_4 +89,1044,26.66);
setSeVolume( spep_4 +90,1044,27.09);
setSeVolume( spep_4 +91,1044,27.52);
setSeVolume( spep_4 +92,1044,27.95);
setSeVolume( spep_4 +93,1044,28.38);
setSeVolume( spep_4 +94,1044,28.81);
setSeVolume( spep_4 +95,1044,29.24);
setSeVolume( spep_4 +96,1044,29.67);
setSeVolume( spep_4 +97,1044,30.1);
setSeVolume( spep_4 +98,1044,30.53);
setSeVolume( spep_4 +99,1044,30.96);
setSeVolume( spep_4 +100,1044,31.39);
setSeVolume( spep_4 +101,1044,31.82);
setSeVolume( spep_4 +102,1044,32.25);
setSeVolume( spep_4 +103,1044,32.68);
setSeVolume( spep_4 +104,1044,33.11);
setSeVolume( spep_4 +105,1044,33.54);
setSeVolume( spep_4 +106,1044,33.97);
setSeVolume( spep_4 +107,1044,34.4);
setSeVolume( spep_4 +108,1044,34.83);
setSeVolume( spep_4 +109,1044,35.26);
setSeVolume( spep_4 +110,1044,35.69);
setSeVolume( spep_4 +111,1044,36.12);
setSeVolume( spep_4 +112,1044,36.55);
setSeVolume( spep_4 +113,1044,36.98);
setSeVolume( spep_4 +114,1044,37.41);
setSeVolume( spep_4 +115,1044,37.84);
setSeVolume( spep_4 +116,1044,38.27);
setSeVolume( spep_4 +117,1044,38.7);
setSeVolume( spep_4 +118,1044,39.13);
setSeVolume( spep_4 +119,1044,40);

stopSe( spep_4 + 14, se_1185, 86 );

--はぁぁあああ！
playVoice(spep_4,136);
setVoiceVolume(spep_4,136,500 -250);

--次の準備
spep_5=spep_4+56;

------------------------------------------------------
--敵に迫る元気玉
------------------------------------------------------
--エフェクト
approach_f=entryEffect(spep_5,SP_06,0x100,-1,0,0,0);

setEffMoveKey( spep_5 + 0, approach_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 56, approach_f, 0, 0 , 0 );

setEffScaleKey(spep_5,approach_f,1.0,1.0);
setEffScaleKey(spep_5+56,approach_f,1.0,1.0);

setEffRotateKey(spep_5,approach_f,0);
setEffRotateKey(spep_5+56,approach_f,0);

setEffAlphaKey(spep_5,approach_f,255);
setEffAlphaKey(spep_5+56,approach_f,255);

--エフェクト
approach_b=entryEffect(spep_5,SP_07,0x80,-1,0,0,0);

setEffMoveKey( spep_5 + 0, approach_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 56, approach_b, 0, 0 , 0 );

setEffScaleKey(spep_5,approach_b,1.0,1.0);
setEffScaleKey(spep_5+56,approach_b,1.0,1.0);

setEffRotateKey(spep_5,approach_b,0);
setEffRotateKey(spep_5+56,approach_b,0);

setEffAlphaKey(spep_5,approach_b,255);
setEffAlphaKey(spep_5+56,approach_b,255);

--敵の動き
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 56, 1, 0 );

changeAnime( spep_5 + 0, 1, 118 );

setMoveKey( spep_5 + 0, 1, 227.1, -261 , 0 );
setMoveKey( spep_5 + 2, 1, 228, -261.9 , 0 );
setMoveKey( spep_5 + 4, 1, 229.2, -264.7 , 0 );
setMoveKey( spep_5 + 6, 1, 229.8, -264.2 , 0 );
setMoveKey( spep_5 + 8, 1, 230.3, -265.5 , 0 );
setMoveKey( spep_5 + 10, 1, 231.5, -265.9 , 0 );
setMoveKey( spep_5 + 12, 1, 232.4, -267.9 , 0 );
setMoveKey( spep_5 + 14, 1, 231.2, -266.7 , 0 );
setMoveKey( spep_5 + 16, 1, 234.1, -268.6 , 0 );
setMoveKey( spep_5 + 18, 1, 234.7, -268.9 , 0 );
setMoveKey( spep_5 + 20, 1, 237, -271.5 , 0 );
setMoveKey( spep_5 + 22, 1, 236, -273.1 , 0 );
setMoveKey( spep_5 + 24, 1, 238.2, -271 , 0 );
setMoveKey( spep_5 + 26, 1, 237.3, -274.9 , 0 );
setMoveKey( spep_5 + 28, 1, 236.3, -275.5 , 0 );
setMoveKey( spep_5 + 30, 1, 241, -275.6 , 0 );
setMoveKey( spep_5 + 32, 1, 241.4, -276.4 , 0 );
setMoveKey( spep_5 + 34, 1, 241.9, -280.4 , 0 );
setMoveKey( spep_5 + 36, 1, 244.9, -279.4 , 0 );
setMoveKey( spep_5 + 38, 1, 246.4, -277.7 , 0 );
setMoveKey( spep_5 + 40, 1, 246.9, -278.9 , 0 );
setMoveKey( spep_5 + 42, 1, 246.2, -279.6 , 0 );
setMoveKey( spep_5 + 44, 1, 246.5, -282.6 , 0 );
setMoveKey( spep_5 + 46, 1, 246.6, -284.2 , 0 );
setMoveKey( spep_5 + 48, 1, 248.2, -284.4 , 0 );
setMoveKey( spep_5 + 50, 1, 249.1, -286.5 , 0 );
setMoveKey( spep_5 + 52, 1, 251.4, -286.9 , 0 );
setMoveKey( spep_5 + 54, 1, 249.2, -286.6 , 0 );
setMoveKey( spep_5 + 56, 1, 253.1, -286.9 , 0 );

setScaleKey( spep_5 + 0, 1, 1.25, 1.25 );
setScaleKey( spep_5 + 2, 1, 1.25, 1.25 );
setScaleKey( spep_5 + 4, 1, 1.26, 1.26 );
setScaleKey( spep_5 + 6, 1, 1.26, 1.26 );
setScaleKey( spep_5 + 8, 1, 1.27, 1.27 );
setScaleKey( spep_5 + 10, 1, 1.27, 1.27 );
setScaleKey( spep_5 + 12, 1, 1.28, 1.28 );
setScaleKey( spep_5 + 16, 1, 1.28, 1.28 );
setScaleKey( spep_5 + 18, 1, 1.29, 1.29 );
setScaleKey( spep_5 + 20, 1, 1.29, 1.29 );
setScaleKey( spep_5 + 22, 1, 1.3, 1.3 );
setScaleKey( spep_5 + 24, 1, 1.3, 1.3 );
setScaleKey( spep_5 + 26, 1, 1.31, 1.31 );
setScaleKey( spep_5 + 28, 1, 1.31, 1.31 );
setScaleKey( spep_5 + 30, 1, 1.32, 1.32 );
setScaleKey( spep_5 + 32, 1, 1.32, 1.32 );
setScaleKey( spep_5 + 34, 1, 1.33, 1.33 );
setScaleKey( spep_5 + 36, 1, 1.33, 1.33 );
setScaleKey( spep_5 + 38, 1, 1.34, 1.34 );
setScaleKey( spep_5 + 40, 1, 1.34, 1.34 );
setScaleKey( spep_5 + 42, 1, 1.35, 1.35 );
setScaleKey( spep_5 + 44, 1, 1.35, 1.35 );
setScaleKey( spep_5 + 46, 1, 1.36, 1.36 );
setScaleKey( spep_5 + 48, 1, 1.36, 1.36 );
setScaleKey( spep_5 + 50, 1, 1.37, 1.37 );
setScaleKey( spep_5 + 54, 1, 1.37, 1.37 );
setScaleKey( spep_5 + 56, 1, 1.38, 1.38 );

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5 + 56, 1, 0 );

--SE
--setSeVolume( spep_5 + 10, 1044, 70 );


--次の準備
spep_6=spep_5+56;


------------------------------------------------------
--ブルーになる
------------------------------------------------------
--エフェクト
blue=entryEffect(spep_6,SP_08,0x100,-1,0,0,0);

setEffMoveKey( spep_6 + 0, blue, 0, 0 , 0 );
setEffMoveKey( spep_6 + 46, blue, 0, 0 , 0 );

setEffScaleKey(spep_6,blue,1.0,1.0);
setEffScaleKey(spep_6+46,blue,1.0,1.0);

setEffRotateKey(spep_6,blue,0);
setEffRotateKey(spep_6+46,blue,0);

setEffAlphaKey(spep_6,blue,255);
setEffAlphaKey(spep_6+46,blue,255);

--SE
playSe( spep_6 + 10, 1035 );

--次の準備
spep_7=spep_6+46;

------------------------------------------------------
--敵にさらに迫る元気玉
------------------------------------------------------
--エフェクト
approach2_f=entryEffect(spep_7,SP_09,0x100,-1,0,0,0);

setEffMoveKey( spep_7 + 0, approach2_f, 0, 0 , 0 );
setEffMoveKey( spep_7 + 56, approach2_f, 0, 0 , 0 );

setEffScaleKey(spep_7,approach2_f,1.0,1.0);
setEffScaleKey(spep_7+56,approach2_f,1.0,1.0);

setEffRotateKey(spep_7,approach2_f,0);
setEffRotateKey(spep_7+56,approach2_f,0);

setEffAlphaKey(spep_7,approach2_f,255);
setEffAlphaKey(spep_7+56,approach2_f,255);

--エフェクト
approach2_b=entryEffect(spep_7,SP_10,0x80,-1,0,0,0);

setEffMoveKey( spep_7 + 0, approach2_b, 0, 0 , 0 );
setEffMoveKey( spep_7 + 56, approach2_b, 0, 0 , 0 );

setEffScaleKey(spep_7,approach2_b,1.0,1.0);
setEffScaleKey(spep_7+56,approach2_b,1.0,1.0);

setEffRotateKey(spep_7,approach2_b,0);
setEffRotateKey(spep_7+56,approach2_b,0);

setEffAlphaKey(spep_7,approach2_b,255);
setEffAlphaKey(spep_7+56,approach2_b,255);

--敵の動き
setDisp( spep_7 + 0, 1, 1 );
setDisp( spep_7 + 56, 1, 0 );

changeAnime( spep_7 + 0, 1, 118 );

setMoveKey( spep_7 + 0, 1, 168.8, -429.9 , 0 );
setMoveKey( spep_7 + 2, 1, 169.3, -431.9 , 0 );
setMoveKey( spep_7 + 4, 1, 169.8, -428 , 0 );
setMoveKey( spep_7 + 6, 1, 166.4, -426.8 , 0 );
setMoveKey( spep_7 + 8, 1, 168.6, -431.3 , 0 );
setMoveKey( spep_7 + 10, 1, 171.1, -428.8 , 0 );
setMoveKey( spep_7 + 12, 1, 171.9, -426.2 , 0 );
setMoveKey( spep_7 + 14, 1, 171.9, -427.6 , 0 );
setMoveKey( spep_7 + 16, 1, 173.7, -430.1 , 0 );
setMoveKey( spep_7 + 18, 1, 173.9, -422.6 , 0 );
setMoveKey( spep_7 + 20, 1, 175.2, -428.6 , 0 );
setMoveKey( spep_7 + 22, 1, 176.4, -427.5 , 0 );
setMoveKey( spep_7 + 24, 1, 181, -425.8 , 0 );
setMoveKey( spep_7 + 26, 1, 175.9, -434.5 , 0 );
setMoveKey( spep_7 + 28, 1, 177.2, -425 , 0 );
setMoveKey( spep_7 + 30, 1, 178.1, -428 , 0 );
setMoveKey( spep_7 + 32, 1, 181.1, -427.3 , 0 );
setMoveKey( spep_7 + 34, 1, 184.4, -427.9 , 0 );
setMoveKey( spep_7 + 36, 1, 183.9, -419.7 , 0 );
setMoveKey( spep_7 + 38, 1, 185.8, -424.2 , 0 );
setMoveKey( spep_7 + 40, 1, 189.9, -427.9 , 0 );
setMoveKey( spep_7 + 42, 1, 185, -421.2 , 0 );
setMoveKey( spep_7 + 44, 1, 188.5, -426.7 , 0 );
setMoveKey( spep_7 + 46, 1, 198.7, -426.1 , 0 );
setMoveKey( spep_7 + 48, 1, 198.6, -421.6 , 0 );
setMoveKey( spep_7 + 50, 1, 199.7, -421.3 , 0 );
setMoveKey( spep_7 + 52, 1, 199.3, -414.8 , 0 );
setMoveKey( spep_7 + 54, 1, 206.1, -418.7 , 0 );
setMoveKey( spep_7 + 56, 1, 209.9, -423.8 , 0 );

setScaleKey( spep_7 + 0, 1, 2.11, 2.11 );
setScaleKey( spep_7 + 2, 1, 2.12, 2.12 );
setScaleKey( spep_7 + 4, 1, 2.12, 2.12 );
setScaleKey( spep_7 + 6, 1, 2.13, 2.13 );
setScaleKey( spep_7 + 8, 1, 2.14, 2.14 );
setScaleKey( spep_7 + 10, 1, 2.15, 2.15 );
setScaleKey( spep_7 + 12, 1, 2.16, 2.16 );
setScaleKey( spep_7 + 14, 1, 2.17, 2.17 );
setScaleKey( spep_7 + 16, 1, 2.18, 2.18 );
setScaleKey( spep_7 + 18, 1, 2.19, 2.19 );
setScaleKey( spep_7 + 20, 1, 2.2, 2.2 );
setScaleKey( spep_7 + 22, 1, 2.21, 2.21 );
setScaleKey( spep_7 + 24, 1, 2.23, 2.23 );
setScaleKey( spep_7 + 26, 1, 2.24, 2.24 );
setScaleKey( spep_7 + 28, 1, 2.26, 2.26 );
setScaleKey( spep_7 + 30, 1, 2.28, 2.28 );
setScaleKey( spep_7 + 32, 1, 2.3, 2.3 );
setScaleKey( spep_7 + 34, 1, 2.32, 2.32 );
setScaleKey( spep_7 + 36, 1, 2.35, 2.35 );
setScaleKey( spep_7 + 38, 1, 2.37, 2.37 );
setScaleKey( spep_7 + 40, 1, 2.4, 2.4 );
setScaleKey( spep_7 + 42, 1, 2.44, 2.44 );
setScaleKey( spep_7 + 44, 1, 2.47, 2.47 );
setScaleKey( spep_7 + 46, 1, 2.51, 2.51 );
setScaleKey( spep_7 + 48, 1, 2.56, 2.56 );
setScaleKey( spep_7 + 50, 1, 2.6, 2.6 );
setScaleKey( spep_7 + 52, 1, 2.66, 2.66 );
setScaleKey( spep_7 + 54, 1, 2.71, 2.71 );
setScaleKey( spep_7 + 56, 1, 2.78, 2.78 );

setRotateKey( spep_7 + 0, 1, 18.8 );
setRotateKey( spep_7 + 56, 1, 18.8 );

--SE
playSe( spep_7 + 6, 1036 );
setSeVolume( spep_7 + 6, 1036, 32 +25 );
playSe( spep_7 + 30, 1036 );
setSeVolume( spep_7 + 30, 1036, 32 +25 );
playSe( spep_7 + 54, 1036 );
setSeVolume( spep_7 + 54, 1036, 32 +25 );

--次の準備
spep_8=spep_7+56;
------------------------------------------------------
--界王拳
------------------------------------------------------
--エフェクト
kaioken=entryEffect(spep_8,SP_11,0x100,-1,0,0,0);

setEffMoveKey( spep_8 + 0, kaioken, 0, 0 , 0 );
setEffMoveKey( spep_8 + 256, kaioken, 0, 0 , 0 );

setEffScaleKey(spep_8,kaioken,1.0,1.0);
setEffScaleKey(spep_8+256,kaioken,1.0,1.0);

setEffRotateKey(spep_8,kaioken,0);
setEffRotateKey(spep_8+256,kaioken,0);

setEffAlphaKey(spep_8,kaioken,255);
setEffAlphaKey(spep_8+256,kaioken,255);

ctgogo = entryEffectLife( spep_8  + 0,  190006, 166 -3, 0x100, -1, 0, 0, 367.4 );

setEffMoveKey( spep_8  + 0, ctgogo, 0, 367.4 , 0 );
setEffMoveKey( spep_8 -3 + 166, ctgogo, 0, 387.4 , 0 );

setEffScaleKey( spep_8  + 0, ctgogo, 0.49, 0.49 );
setEffScaleKey( spep_8  + 4, ctgogo, 0.53, 0.53 );
setEffScaleKey( spep_8  + 8, ctgogo, 1.35, 1.35 );
setEffScaleKey( spep_8 -3 + 166, ctgogo, 1.6, 1.6 );

setEffRotateKey(  spep_8,  ctgogo,  0);
setEffRotateKey(  spep_8-3 +166,  ctgogo,  0);

setEffAlphaKey( spep_8  + 0, ctgogo, 255 );
setEffAlphaKey( spep_8 -3 + 156, ctgogo, 255 );
setEffAlphaKey( spep_8 -3 + 158, ctgogo, 204 );
setEffAlphaKey( spep_8 -3 + 160, ctgogo, 153 );
setEffAlphaKey( spep_8 -3 + 162, ctgogo, 102 );
setEffAlphaKey( spep_8 -3 + 164, ctgogo, 51 );
setEffAlphaKey( spep_8 -3 + 166, ctgogo, 0 );

ctzuo = entryEffectLife( spep_8-3 + 178,  10012, 16, 0x100, -1, 0, -57.9, 341.8 );--ズオッ

setEffMoveKey( spep_8-3 + 178, ctzuo, -57.9, 341.8 , 0 );
setEffMoveKey( spep_8-3 + 180, ctzuo, -56.6, 361.8 , 0 );
setEffMoveKey( spep_8-3 + 182, ctzuo, -55.2, 381.7 , 0 );
setEffMoveKey( spep_8-3 + 184, ctzuo, -53.8, 401.6 , 0 );
setEffMoveKey( spep_8-3 + 186, ctzuo, -52.6, 404.8 , 0 );
setEffMoveKey( spep_8-3 + 188, ctzuo, -51.4, 408 , 0 );
setEffMoveKey( spep_8-3 + 190, ctzuo, -50.2, 411.2 , 0 );
setEffMoveKey( spep_8-3 + 192, ctzuo, -49, 414.4 , 0 );
setEffMoveKey( spep_8-3 + 194, ctzuo, -47.8, 417.6 , 0 );

setEffScaleKey( spep_8-3 + 178, ctzuo, 0.87, 0.87 );
--setEffScaleKey( spep_8-3 + 180, ctzuo, 0.53, 0.53 );
--setEffScaleKey( spep_8-3 + 182, ctzuo, 0.8, 0.8 );
setEffScaleKey( spep_8-3 + 184, ctzuo, 3.56, 3.56 );
--setEffScaleKey( spep_8-3 + 186, ctzuo, 1.08, 1.08 );
--setEffScaleKey( spep_8-3 + 188, ctzuo, 1.11, 1.11 );
--setEffScaleKey( spep_8-3 + 190, ctzuo, 1.13, 1.13 );
--setEffScaleKey( spep_8-3 + 192, ctzuo, 1.16, 1.16 );
setEffScaleKey( spep_8-3 + 194, ctzuo, 3.88, 3.88 );

setEffRotateKey( spep_8-3 + 178, ctzuo, 9.2 );
setEffRotateKey( spep_8-3 + 194, ctzuo, 9.2 );

setEffAlphaKey( spep_8-3 + 178, ctzuo, 255 );
setEffAlphaKey( spep_8-3 + 184, ctzuo, 255 );
setEffAlphaKey( spep_8-3 + 186, ctzuo, 204 );
setEffAlphaKey( spep_8-3 + 188, ctzuo, 153 );
setEffAlphaKey( spep_8-3 + 190, ctzuo, 102 );
setEffAlphaKey( spep_8-3 + 192, ctzuo, 51 );
setEffAlphaKey( spep_8-3 + 194, ctzuo, 0 );

--SE
playSe( spep_8 + 22, 1036 );
setSeVolume( spep_8 + 22, 1036, 32 +15 );
playSe( spep_8 + 46, 1036 );
setSeVolume( spep_8 + 46, 1036, 32 +15 );
playSe( spep_8 + 70, 1036 );
setSeVolume( spep_8 + 70, 1036, 32 +15 );
playSe( spep_8 + 94, 1036 );
setSeVolume( spep_8 + 94, 1036, 32 +15 );
playSe( spep_8 + 118, 1036 );
setSeVolume( spep_8 + 118, 1036, 32 +15 );
playSe( spep_8 + 142, 1036 );
setSeVolume( spep_8 + 142, 1036, 32 +15 );
playSe( spep_8 + 166, 1036 );
setSeVolume( spep_8 + 166, 1036, 32 +15 );
playSe( spep_8 + 178, 1035 );
se_1181 = playSe( spep_8 + 178, 1181 );
playSe( spep_8 + 202, 1036 );
setSeVolume( spep_8 + 202, 1036, 32 +15 );
playSe( spep_8 + 190, 1036 );
setSeVolume( spep_8 + 190, 1036, 32 +15 );
playSe( spep_8 + 214, 1036 );
setSeVolume( spep_8 + 214, 1036, 32 +15 );
playSe( spep_8 + 238, 1036 );
setSeVolume( spep_8 + 238, 1036, 32 +15 );

--界王拳！
playVoice(spep_8,137);
setVoiceVolume(spep_8,137,500 -250);

--はああ！
playVoice(spep_8+178,138);
setVoiceVolume(spep_8+178,138,500 -250);

--次の準備
spep_9=spep_8+256;

------------------------------------------------------
--爆発
------------------------------------------------------
--エフェクト
explosion=entryEffect(spep_9,SP_12,0x100,-1,0,0,0);

setEffMoveKey( spep_9 + 0, explosion, 0, 0 , 0 );
setEffMoveKey( spep_9 + 120, explosion, 0, 0 , 0 );

setEffScaleKey(spep_9,explosion,1.0,1.0);
setEffScaleKey(spep_9+120,explosion,1.0,1.0);

setEffRotateKey(spep_9,explosion,0);
setEffRotateKey(spep_9+120,explosion,0);

setEffAlphaKey(spep_9,explosion,255);
setEffAlphaKey(spep_9+120,explosion,255);

--文字エントリー
ctzudodo = entryEffectLife( spep_9 -3 + 28,  10014, 92, 0x100, -1, 0, 88.1, -460.2 );--ズドドドッ

setEffMoveKey( spep_9 -3 + 28, ctzudodo, 88.1, -460.2 , 0 );
setEffMoveKey( spep_9 -3 + 30, ctzudodo, 87.3, -465.4 , 0 );
setEffMoveKey( spep_9 -3 + 32, ctzudodo, 88.6, -456.5 , 0 );
setEffMoveKey( spep_9 -3 + 34, ctzudodo, 86.7, -469.2 , 0 );
setEffMoveKey( spep_9 -3 + 36, ctzudodo, 88.8, -454.6 , 0 );
setEffMoveKey( spep_9 -3 + 38, ctzudodo, 86.7, -469.3 , 0 );
setEffMoveKey( spep_9 -3 + 40, ctzudodo, 88.8, -454.6 , 0 );
setEffMoveKey( spep_9 -3 + 42, ctzudodo, 86.7, -469.4 , 0 );
setEffMoveKey( spep_9 -3 + 44, ctzudodo, 88.8, -454.5 , 0 );
setEffMoveKey( spep_9 -3 + 46, ctzudodo, 86.7, -469.5 , 0 );
setEffMoveKey( spep_9 -3 + 48, ctzudodo, 88.9, -454.4 , 0 );
setEffMoveKey( spep_9 -3 + 50, ctzudodo, 86.6, -469.5 , 0 );
setEffMoveKey( spep_9 -3 + 52, ctzudodo, 88.9, -454.4 , 0 );
setEffMoveKey( spep_9 -3 + 54, ctzudodo, 86.6, -469.6 , 0 );
setEffMoveKey( spep_9 -3 + 56, ctzudodo, 88.9, -454.3 , 0 );
setEffMoveKey( spep_9 -3 + 58, ctzudodo, 86.6, -469.7 , 0 );
setEffMoveKey( spep_9 -3 + 60, ctzudodo, 88.9, -454.2 , 0 );
setEffMoveKey( spep_9 -3 + 62, ctzudodo, 86.6, -469.7 , 0 );
setEffMoveKey( spep_9 -3 + 64, ctzudodo, 88.9, -454.1 , 0 );
setEffMoveKey( spep_9 -3 + 66, ctzudodo, 86.6, -469.8 , 0 );
setEffMoveKey( spep_9 -3 + 68, ctzudodo, 88.9, -454.1 , 0 );
setEffMoveKey( spep_9 -3 + 70, ctzudodo, 86.6, -469.9 , 0 );
setEffMoveKey( spep_9 -3 + 72, ctzudodo, 88.9, -454 , 0 );
setEffMoveKey( spep_9 -3 + 74, ctzudodo, 86.6, -470 , 0 );
setEffMoveKey( spep_9 -3 + 76, ctzudodo, 88.9, -453.9 , 0 );
setEffMoveKey( spep_9 -3 + 78, ctzudodo, 86.6, -470 , 0 );
setEffMoveKey( spep_9 -3 + 80, ctzudodo, 88.9, -453.8 , 0 );
setEffMoveKey( spep_9 -3 + 82, ctzudodo, 86.5, -470.1 , 0 );
setEffMoveKey( spep_9 -3 + 84, ctzudodo, 88.9, -453.8 , 0 );
setEffMoveKey( spep_9 -3 + 86, ctzudodo, 86.5, -470.2 , 0 );
setEffMoveKey( spep_9 -3 + 88, ctzudodo, 88.9, -453.7 , 0 );
setEffMoveKey( spep_9 -3 + 90, ctzudodo, 86.5, -470.2 , 0 );
setEffMoveKey( spep_9 -3 + 92, ctzudodo, 88.9, -453.6 , 0 );
setEffMoveKey( spep_9 -3 + 94, ctzudodo, 86.5, -470.3 , 0 );
setEffMoveKey( spep_9 -3 + 96, ctzudodo, 88.9, -453.5 , 0 );
setEffMoveKey( spep_9 -3 + 98, ctzudodo, 86.5, -470.4 , 0 );
setEffMoveKey( spep_9 -3 + 100, ctzudodo, 88.9, -453.5 , 0 );
setEffMoveKey( spep_9 -3 + 102, ctzudodo, 86.5, -470.5 , 0 );
setEffMoveKey( spep_9 -3 + 104, ctzudodo, 89, -453.4 , 0 );
setEffMoveKey( spep_9 -3 + 106, ctzudodo, 86.5, -470.5 , 0 );
setEffMoveKey( spep_9 -3 + 108, ctzudodo, 89, -453.3 , 0 );
setEffMoveKey( spep_9 -3 + 110, ctzudodo, 86.4, -470.6 , 0 );
setEffMoveKey( spep_9 -3 + 112, ctzudodo, 89, -453.2 , 0 );
setEffMoveKey( spep_9 -3 + 114, ctzudodo, 86.4, -470.7 , 0 );
setEffMoveKey( spep_9 -3 + 116, ctzudodo, 89, -453.2 , 0 );
setEffMoveKey( spep_9 -3 + 118, ctzudodo, 86.4, -470.7 , 0 );
setEffMoveKey( spep_9 -3 + 120, ctzudodo, 86.4, -470.8 , 0 );

setEffScaleKey( spep_9 -3 + 28, ctzudodo, 0.38, 0.38 );
setEffScaleKey( spep_9 -3 + 30, ctzudodo, 0.8, 0.8 );
setEffScaleKey( spep_9 -3 + 32, ctzudodo, 1.22, 1.22 );
setEffScaleKey( spep_9 -3 + 34, ctzudodo, 1.65, 1.65 );
setEffScaleKey( spep_9 -3 + 36, ctzudodo, 1.66, 1.66 );
setEffScaleKey( spep_9 -3 + 38, ctzudodo, 1.66, 1.66 );
setEffScaleKey( spep_9 -3 + 40, ctzudodo, 1.67, 1.67 );
setEffScaleKey( spep_9 -3 + 42, ctzudodo, 1.68, 1.68 );
setEffScaleKey( spep_9 -3 + 44, ctzudodo, 1.69, 1.69 );
setEffScaleKey( spep_9 -3 + 46, ctzudodo, 1.7, 1.7 );
setEffScaleKey( spep_9 -3 + 48, ctzudodo, 1.71, 1.71 );
setEffScaleKey( spep_9 -3 + 50, ctzudodo, 1.71, 1.71 );
setEffScaleKey( spep_9 -3 + 52, ctzudodo, 1.72, 1.72 );
setEffScaleKey( spep_9 -3 + 54, ctzudodo, 1.73, 1.73 );
setEffScaleKey( spep_9 -3 + 56, ctzudodo, 1.74, 1.74 );
setEffScaleKey( spep_9 -3 + 58, ctzudodo, 1.75, 1.75 );
setEffScaleKey( spep_9 -3 + 60, ctzudodo, 1.76, 1.76 );
setEffScaleKey( spep_9 -3 + 62, ctzudodo, 1.76, 1.76 );
setEffScaleKey( spep_9 -3 + 64, ctzudodo, 1.77, 1.77 );
setEffScaleKey( spep_9 -3 + 66, ctzudodo, 1.78, 1.78 );
setEffScaleKey( spep_9 -3 + 68, ctzudodo, 1.79, 1.79 );
setEffScaleKey( spep_9 -3 + 70, ctzudodo, 1.8, 1.8 );
setEffScaleKey( spep_9 -3 + 72, ctzudodo, 1.81, 1.81 );
setEffScaleKey( spep_9 -3 + 74, ctzudodo, 1.81, 1.81 );
setEffScaleKey( spep_9 -3 + 76, ctzudodo, 1.82, 1.82 );
setEffScaleKey( spep_9 -3 + 78, ctzudodo, 1.83, 1.83 );
setEffScaleKey( spep_9 -3 + 80, ctzudodo, 1.84, 1.84 );
setEffScaleKey( spep_9 -3 + 82, ctzudodo, 1.85, 1.85 );
setEffScaleKey( spep_9 -3 + 84, ctzudodo, 1.86, 1.86 );
setEffScaleKey( spep_9 -3 + 86, ctzudodo, 1.86, 1.86 );
setEffScaleKey( spep_9 -3 + 88, ctzudodo, 1.87, 1.87 );
setEffScaleKey( spep_9 -3 + 90, ctzudodo, 1.88, 1.88 );
setEffScaleKey( spep_9 -3 + 92, ctzudodo, 1.89, 1.89 );
setEffScaleKey( spep_9 -3 + 94, ctzudodo, 1.9, 1.9 );
setEffScaleKey( spep_9 -3 + 96, ctzudodo, 1.9, 1.9 );
setEffScaleKey( spep_9 -3 + 98, ctzudodo, 1.91, 1.91 );
setEffScaleKey( spep_9 -3 + 100, ctzudodo, 1.92, 1.92 );
setEffScaleKey( spep_9 -3 + 102, ctzudodo, 1.93, 1.93 );
setEffScaleKey( spep_9 -3 + 104, ctzudodo, 1.94, 1.94 );
setEffScaleKey( spep_9 -3 + 106, ctzudodo, 1.95, 1.95 );
setEffScaleKey( spep_9 -3 + 108, ctzudodo, 1.95, 1.95 );
setEffScaleKey( spep_9 -3 + 110, ctzudodo, 1.96, 1.96 );
setEffScaleKey( spep_9 -3 + 112, ctzudodo, 1.97, 1.97 );
setEffScaleKey( spep_9 -3 + 114, ctzudodo, 1.98, 1.98 );
setEffScaleKey( spep_9 -3 + 116, ctzudodo, 1.99, 1.99 );
setEffScaleKey( spep_9 -3 + 120, ctzudodo, 2, 2 );

setEffRotateKey( spep_9 -3 + 28, ctzudodo, 25.4 );
setEffRotateKey( spep_9 -3 + 120, ctzudodo, 25.4 );

setEffAlphaKey( spep_9 -3 + 28, ctzudodo, 255 );
setEffAlphaKey( spep_9 -3 + 34, ctzudodo, 255 );
setEffAlphaKey( spep_9 -3 + 36, ctzudodo, 249 );
setEffAlphaKey( spep_9 -3 + 38, ctzudodo, 243 );
setEffAlphaKey( spep_9 -3 + 40, ctzudodo, 237 );
setEffAlphaKey( spep_9 -3 + 42, ctzudodo, 231 );
setEffAlphaKey( spep_9 -3 + 44, ctzudodo, 225 );
setEffAlphaKey( spep_9 -3 + 46, ctzudodo, 219 );
setEffAlphaKey( spep_9 -3 + 48, ctzudodo, 213 );
setEffAlphaKey( spep_9 -3 + 50, ctzudodo, 208 );
setEffAlphaKey( spep_9 -3 + 52, ctzudodo, 202 );
setEffAlphaKey( spep_9 -3 + 54, ctzudodo, 196 );
setEffAlphaKey( spep_9 -3 + 56, ctzudodo, 190 );
setEffAlphaKey( spep_9 -3 + 58, ctzudodo, 184 );
setEffAlphaKey( spep_9 -3 + 60, ctzudodo, 178 );
setEffAlphaKey( spep_9 -3 + 62, ctzudodo, 172 );
setEffAlphaKey( spep_9 -3 + 64, ctzudodo, 166 );
setEffAlphaKey( spep_9 -3 + 66, ctzudodo, 160 );
setEffAlphaKey( spep_9 -3 + 68, ctzudodo, 154 );
setEffAlphaKey( spep_9 -3 + 70, ctzudodo, 148 );
setEffAlphaKey( spep_9 -3 + 72, ctzudodo, 142 );
setEffAlphaKey( spep_9 -3 + 74, ctzudodo, 136 );
setEffAlphaKey( spep_9 -3 + 76, ctzudodo, 130 );
setEffAlphaKey( spep_9 -3 + 78, ctzudodo, 125 );
setEffAlphaKey( spep_9 -3 + 80, ctzudodo, 119 );
setEffAlphaKey( spep_9 -3 + 82, ctzudodo, 113 );
setEffAlphaKey( spep_9 -3 + 84, ctzudodo, 107 );
setEffAlphaKey( spep_9 -3 + 86, ctzudodo, 101 );
setEffAlphaKey( spep_9 -3 + 88, ctzudodo, 95 );
setEffAlphaKey( spep_9 -3 + 90, ctzudodo, 89 );
setEffAlphaKey( spep_9 -3 + 92, ctzudodo, 83 );
setEffAlphaKey( spep_9 -3 + 94, ctzudodo, 77 );
setEffAlphaKey( spep_9 -3 + 96, ctzudodo, 71 );
setEffAlphaKey( spep_9 -3 + 98, ctzudodo, 65 );
setEffAlphaKey( spep_9 -3 + 100, ctzudodo, 59 );
setEffAlphaKey( spep_9 -3 + 102, ctzudodo, 53 );
setEffAlphaKey( spep_9 -3 + 104, ctzudodo, 47 );
setEffAlphaKey( spep_9 -3 + 106, ctzudodo, 42 );
setEffAlphaKey( spep_9 -3 + 108, ctzudodo, 36 );
setEffAlphaKey( spep_9 -3 + 110, ctzudodo, 30 );
setEffAlphaKey( spep_9 -3 + 112, ctzudodo, 24 );
setEffAlphaKey( spep_9 -3 + 114, ctzudodo, 18 );
setEffAlphaKey( spep_9 -3 + 116, ctzudodo, 12 );
setEffAlphaKey( spep_9 -3 + 118, ctzudodo, 6 );
setEffAlphaKey( spep_9 -3 + 120, ctzudodo, 0 );

--SE
setSeVolume( spep_9,1044,70 +20);
playSe( spep_9 , 1159 );
setSeVolume( spep_9 , 1159, 56 +20 );
playSe( spep_9 , 1160 );
setSeVolume( spep_9 , 1160, 56 +20 );

stopSe( spep_9 + 118, SEX, 0 );

-- ダメージ表示
dealDamage( spep_9 );
endPhase(spep_9 +118 -4);
else end



