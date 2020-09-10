-- ビルス(モナカスーツ)_技名未定(SSR)
--sp_effect_b1_00056

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
SP_01=	152361	;--	殴り～頭回転
SP_02=	152362	;--	頭ひっかかりエフェクト
SP_03=	152363	;--	頭回転停止
SP_04=	152364	;--	前方突進
SP_05=	152365	;--	殴りフィニッシュ

--敵
SP_01x=	152366	;--	殴り～頭回転	(敵)
SP_02x=	152362	;--	頭ひっかかりエフェクト	
SP_03x=	152363	;--	頭回転停止	
SP_04x=	152364	;--	前方突進	
SP_05x=	152367	;--	殴りフィニッシュ	(敵)
------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI(0, 0);

changeAnime( 0, 0, 1);                       -- 立ち
changeAnime( 0, 1, 101);                       -- 立ち
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    -2000,  0,  0);
setMoveKey(   1,   0,    -2000,  0,  0);
setMoveKey(   2,   0,    -2000,  0,  0);
setMoveKey(   3,   0,    -2000,  0,  0);
setMoveKey(   4,   0,    -2000,  0,  0);
setMoveKey(   5,   0,    -2000,  0,  0);
setMoveKey(   6,   0,    -2000,  0,  0);
setMoveKey(   20,  0,    -2000,  0,  0);
setScaleKey(  0,  0,  1.5,  1.5);
setScaleKey(   1,   0, 1.5, 1.5);
setScaleKey(   2,   0, 1.5, 1.5);
setScaleKey(   3,   0, 1.5, 1.5);
setScaleKey(   4,   0, 1.5, 1.5);
setScaleKey(   5,   0, 1.5, 1.5);
setScaleKey(   6,   0, 1.5, 1.5);
--setScaleKey(  20,  0,  1.5,  1.5);

-- 敵

setMoveKey(   0,   1,    -2000,  0,  0);
setMoveKey(   1,   1,    -2000,  0,  0);
setMoveKey(   2,   1,    -2000,  0,  0);
setMoveKey(   3,   1,    -2000,  0,  0);
setMoveKey(   4,   1,    -2000,  0,  0);
setMoveKey(   5,   1,    -2000,  0,  0);
setMoveKey(   6,   1,    -2000,  0,  0);
setMoveKey(   20,  1,    -2000,  0,  0);
setScaleKey(   1,   1, 1.5, 1.5);
setScaleKey(   2,   1, 1.5, 1.5);
setScaleKey(   3,   1, 1.5, 1.5);
setScaleKey(   4,   1, 1.5, 1.5);
setScaleKey(   5,   1, 1.5, 1.5);
setScaleKey(   6,   1, 1.5, 1.5);
--setScaleKey(   20,   1, 1.5, 1.5);


kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- カウンター
------------------------------------------------------
spep_0=0;

--流線(横)
ryusen = entryEffectLife( spep_0 + 0,  920, 56, 0x80, -1, 0, -1, 0 );

setEffMoveKey( spep_0 , ryusen, -1, 0 , 0 );
setEffMoveKey( spep_0 + 56, ryusen, -1, 0 , 0 );

setEffScaleKey( spep_0 , ryusen, 1, 1 );
setEffScaleKey( spep_0 + 56, ryusen, 1, 1 );

setEffRotateKey( spep_0 , ryusen, 0 );
setEffRotateKey( spep_0 + 56, ryusen, 0 );

setEffAlphaKey(spep_0,ryusen,0);
setEffAlphaKey(spep_0+21,ryusen,0);
setEffAlphaKey(spep_0+22,ryusen,255);
setEffAlphaKey(spep_0+23,ryusen,255);
setEffAlphaKey(spep_0+56,ryusen,255);

--エフェクト
counter_b1=entryEffectLife(spep_0,SP_01,226,0x80,-1,0,0,0);

setEffScaleKey(spep_0,counter_b1,1.0,1.0);
setEffScaleKey(spep_0+226,counter_b1,1.0,1.0);

setEffRotateKey(spep_0,counter_b1,0);
setEffRotateKey(spep_0+226,counter_b1,0);

setEffAlphaKey(spep_0,counter_b1,255);
setEffAlphaKey(spep_0+226,counter_b1,255);

--エフェクト
counter_b2=entryEffectLife(spep_0,SP_01,226,0x100,-1,0,0,0);

setEffScaleKey(spep_0,counter_b2,1.0,1.0);
setEffScaleKey(spep_0+226,counter_b2,1.0,1.0);

setEffRotateKey(spep_0,counter_b2,0);
setEffRotateKey(spep_0+226,counter_b2,0);

setEffAlphaKey(spep_0,counter_b2,255);
setEffAlphaKey(spep_0+124,counter_b2,255);
setEffAlphaKey(spep_0+125,counter_b2,0);
setEffAlphaKey(spep_0+126,counter_b2,0);
setEffAlphaKey(spep_0+226,counter_b2,0);


--エフェクト
counter_f=entryEffectLife(spep_0,SP_02,226,0x100,-1,0,0,0);

setEffScaleKey(spep_0,counter_f,1.0,1.0);
setEffScaleKey(spep_0+226,counter_f,1.0,1.0);

setEffRotateKey(spep_0,counter_f,0);
setEffRotateKey(spep_0+226,counter_f,0);

setEffAlphaKey(spep_0,counter_f,255);
setEffAlphaKey(spep_0+226,counter_f,255);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 224, 0, 0, 0, 0, 180 );  --黒　背景

--敵の動き
setDisp( spep_0 + 18, 1, 1 );
setDisp( spep_0 + 170, 1, 0 );
changeAnime( spep_0 + 18, 1, 103 );
changeAnime( spep_0 + 57, 1, 109 );--60
changeAnime( spep_0 + 58, 1, 109 );--60
changeAnime( spep_0 + 95, 1, 106 );--98
changeAnime( spep_0 + 96, 1, 106 );--98

setMoveKey( spep_0 + 18, 1, 637.7, -54.7 , 0 );
setMoveKey( spep_0 + 20, 1, 602.6, -54.7 , 0 );
setMoveKey( spep_0 + 22, 1, 567.6, -54.7 , 0 );
setMoveKey( spep_0 + 24, 1, 532.6, -54.7 , 0 );
setMoveKey( spep_0 + 26, 1, 497.6, -54.7 , 0 );

setScaleKey( spep_0 + 18, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 26, 1, 1.1, 1.1 );

setRotateKey( spep_0 + 18, 1, 0 );
setRotateKey( spep_0 + 26, 1, 0 );

--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

SP_dodge = spep_0+26 ; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

pauseAll( SP_dodge, 67);

--キャラクターの固定
setMoveKey(SP_dodge, 1,497.6, -54.7 , 0 );
setScaleKey(SP_dodge , 1, 1.1, 1.1);
setRotateKey(SP_dodge,   1, 0 );

--キャラクターの固定
setMoveKey(SP_dodge+8, 1,497.6, -54.7 , 0 );
setScaleKey(SP_dodge+8 , 1, 1.1, 1.1);
setRotateKey(SP_dodge+8,   1, 0 );


setDisp(SP_dodge+9, 0, 0);
--setDisp(SP_dodge+9, 1, 0);
--setMoveKey(SP_dodge+9, 1, 0 , 0, 0);
setScaleKey(SP_dodge+9,1,0.9,0.9);
setRotateKey(SP_dodge+9,   1, 0);

--setMoveKey(SP_dodge+10, 1, 0 , 0, 0);
setScaleKey(SP_dodge+10,  1 , 0.9, 0.9);
setRotateKey(SP_dodge+10,   1, 0);


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
setMoveKey( spep_0 + 28, 1, 462.6, -54.7 , 0 );
setMoveKey( spep_0 + 30, 1, 427.6, -54.7 , 0 );
setMoveKey( spep_0 + 32, 1, 392.6, -54.7 , 0 );
setMoveKey( spep_0 + 34, 1, 357.6, -54.7 , 0 );
setMoveKey( spep_0 + 36, 1, 322.6, -54.7 , 0 );
setMoveKey( spep_0 + 38, 1, 287.6, -54.7 , 0 );
setMoveKey( spep_0 + 40, 1, 252.6, -54.7 , 0 );
setMoveKey( spep_0 + 42, 1, 217.6, -54.7 , 0 );
setMoveKey( spep_0 + 44, 1, 203.9, -54.7 , 0 );
setMoveKey( spep_0 + 46, 1, 190.1, -54.7 , 0 );
setMoveKey( spep_0 + 48, 1, 176.4, -54.7 , 0 );
setMoveKey( spep_0 + 50, 1, 162.6, -54.7 , 0 );
setMoveKey( spep_0 + 52, 1, 148.9, -54.7 , 0 );
setMoveKey( spep_0 + 56, 1, 135.1, -54.7 , 0 );
--setMoveKey( spep_0 + 56, 1, 121.4, -54.7 , 0 );
--setMoveKey( spep_0 + 58, 1, 107.6, -54.7 , 0 );
setMoveKey( spep_0 + 57, 1, 118.9, -33.8 , 0 );--60
setMoveKey( spep_0 + 58, 1, 118.9, -33.8 , 0 );--60
setMoveKey( spep_0 + 62, 1, 114.8, -37.9 , 0 );
setMoveKey( spep_0 + 64, 1, 122.2, -38.8 , 0 );
setMoveKey( spep_0 + 66, 1, 121.1, -33.5 , 0 );
setMoveKey( spep_0 + 68, 1, 127.4, -33.7 , 0 );
setMoveKey( spep_0 + 70, 1, 124.2, -38.9 , 0 );
setMoveKey( spep_0 + 72, 1, 130.6, -38.6 , 0 );
setMoveKey( spep_0 + 74, 1, 127.5, -33.2 , 0 );
setMoveKey( spep_0 + 76, 1, 133.2, -35.6 , 0 );
setMoveKey( spep_0 + 78, 1, 135.3, -35.6 , 0 );
setMoveKey( spep_0 + 80, 1, 137.4, -35.7 , 0 );
setMoveKey( spep_0 + 82, 1, 139.5, -35.7 , 0 );
setMoveKey( spep_0 + 84, 1, 141.6, -35.7 , 0 );
setMoveKey( spep_0 + 86, 1, 143.7, -35.8 , 0 );
setMoveKey( spep_0 + 88, 1, 145.8, -35.8 , 0 );
setMoveKey( spep_0 + 90, 1, 148.3, -35.8 , 0 );
setMoveKey( spep_0 + 92, 1, 150.8, -35.8 , 0 );
setMoveKey( spep_0 + 93, 1, 150.8, -35.8 , 0 );
---setMoveKey( spep_0 + 94, 1, 153.3, -35.8 , 0 );
--setMoveKey( spep_0 + 96, 1, 155.8, -35.8 , 0 );
--setMoveKey( spep_0 + 93, 1, 94.6, -12.7 , 0 );--90
setMoveKey( spep_0 + 95, 1, 94.6, -12.7 , 0 );--90
setMoveKey( spep_0 + 96, 1, 94.6, -12.7 , 0 );--90
setMoveKey( spep_0 + 100, 1, 105.2, -8.6 , 0 );
setMoveKey( spep_0 + 102, 1, 100.3, -17.9 , 0 );
setMoveKey( spep_0 + 104, 1, 113.2, -9.5 , 0 );
setMoveKey( spep_0 + 106, 1, 109.3, -9.7 , 0 );
setMoveKey( spep_0 + 108, 1, 124.3, -10 , 0 );
setMoveKey( spep_0 + 110, 1, 116.1, -15.3 , 0 );
setMoveKey( spep_0 + 112, 1, 122, -11.9 , 0 );
setMoveKey( spep_0 + 114, 1, 127.8, -8.6 , 0 );
setMoveKey( spep_0 + 116, 1, 132, -10.2 , 0 );
setMoveKey( spep_0 + 118, 1, 136.3, -8.7 , 0 );
setMoveKey( spep_0 + 120, 1, 141.9, -9.7 , 0 );
setMoveKey( spep_0 + 122, 1, 146.5, -9.6 , 0 );
--setMoveKey( spep_0 + 124, 1, 151.6, -9.1 , 0 );
--setMoveKey( spep_0 + 125, 1, 158.8, -12.5 , 0 );
--setMoveKey( spep_0 + 126, 1, 158.8, -12.5 , 0 );
setMoveKey( spep_0 + 125, 1, 162.3, -76.2 , 0 );--128
setMoveKey( spep_0 + 130, 1, 176.3, -90 , 0 );
setMoveKey( spep_0 + 132, 1, 190.3, -103.7 , 0 );
setMoveKey( spep_0 + 134, 1, 204.3, -117.5 , 0 );
setMoveKey( spep_0 + 136, 1, 218.3, -131.2 , 0 );
setMoveKey( spep_0 + 138, 1, 232.3, -145 , 0 );
setMoveKey( spep_0 + 140, 1, 246.3, -158.7 , 0 );
setMoveKey( spep_0 + 142, 1, 260.3, -172.5 , 0 );
setMoveKey( spep_0 + 144, 1, 274.3, -186.2 , 0 );
setMoveKey( spep_0 + 146, 1, 283.1, -193.1 , 0 );
setMoveKey( spep_0 + 148, 1, 291.9, -199.9 , 0 );
setMoveKey( spep_0 + 150, 1, 300.7, -206.8 , 0 );
setMoveKey( spep_0 + 152, 1, 309.5, -213.6 , 0 );
setMoveKey( spep_0 + 154, 1, 370.9, -246.4 , 0 );
setMoveKey( spep_0 + 156, 1, 432.2, -279.2 , 0 );
setMoveKey( spep_0 + 158, 1, 493.4, -312 , 0 );
setMoveKey( spep_0 + 160, 1, 554.8, -344.8 , 0 );
setMoveKey( spep_0 + 162, 1, 616.1, -377.6 , 0 );
setMoveKey( spep_0 + 164, 1, 677.4, -410.3 , 0 );
setMoveKey( spep_0 + 166, 1, 738.7, -443.2 , 0 );
setMoveKey( spep_0 + 168, 1, 800, -476 , 0 );
setMoveKey( spep_0 + 170, 1, 861.4, -508.8 , 0 );

setScaleKey( spep_0 + 124, 1, 1.1, 1.1 ); --126
setScaleKey( spep_0 + 125, 1, 1.63, 1.63 ); --128
setScaleKey( spep_0 + 126, 1, 1.63, 1.63 ); --128
setScaleKey( spep_0 + 130, 1, 1.78, 1.78 );
setScaleKey( spep_0 + 132, 1, 1.93, 1.93 );
setScaleKey( spep_0 + 134, 1, 2.08, 2.08 );
setScaleKey( spep_0 + 136, 1, 2.23, 2.23 );
setScaleKey( spep_0 + 138, 1, 2.38, 2.38 );
setScaleKey( spep_0 + 140, 1, 2.53, 2.53 );
setScaleKey( spep_0 + 142, 1, 2.68, 2.68 );
setScaleKey( spep_0 + 144, 1, 2.84, 2.84 );
setScaleKey( spep_0 + 146, 1, 2.86, 2.86 );
setScaleKey( spep_0 + 148, 1, 2.88, 2.88 );
setScaleKey( spep_0 + 150, 1, 2.9, 2.9 );
setScaleKey( spep_0 + 152, 1, 2.92, 2.92 );
setScaleKey( spep_0 + 154, 1, 2.94, 2.94 );
setScaleKey( spep_0 + 156, 1, 2.97, 2.97 );
setScaleKey( spep_0 + 158, 1, 2.99, 2.99 );
setScaleKey( spep_0 + 160, 1, 3.01, 3.01 );
setScaleKey( spep_0 + 162, 1, 3.03, 3.03 );
setScaleKey( spep_0 + 164, 1, 3.05, 3.05 );
setScaleKey( spep_0 + 166, 1, 3.07, 3.07 );
setScaleKey( spep_0 + 168, 1, 3.09, 3.09 );
setScaleKey( spep_0 + 170, 1, 3.12, 3.12 );

setRotateKey( spep_0 + 96, 1, 0 );
setRotateKey( spep_0 + 98, 1, 0 );
setRotateKey( spep_0 + 100, 1, 8 );
setRotateKey( spep_0 + 102, 1, 15.9 );
setRotateKey( spep_0 + 104, 1, 23.9 );
setRotateKey( spep_0 + 106, 1, 31.9 );
setRotateKey( spep_0 + 108, 1, 39.9 );
setRotateKey( spep_0 + 110, 1, 47.8 );
setRotateKey( spep_0 + 112, 1, 55.8 );
setRotateKey( spep_0 + 114, 1, 57.7 );
setRotateKey( spep_0 + 116, 1, 59.6 );
setRotateKey( spep_0 + 118, 1, 61.5 );
setRotateKey( spep_0 + 120, 1, 63.4 );
setRotateKey( spep_0 + 122, 1, 65.3 );
--setRotateKey( spep_0 + 124, 1, 67.2 );
--setRotateKey( spep_0 + 126, 1, 69.1 );
setRotateKey( spep_0 + 126, 1, 93.3 );--128
setRotateKey( spep_0 + 130, 1, 93.5 );
setRotateKey( spep_0 + 144, 1, 93.5 );
setRotateKey( spep_0 + 146, 1, 108 );
setRotateKey( spep_0 + 148, 1, 122.5 );
setRotateKey( spep_0 + 150, 1, 137 );
setRotateKey( spep_0 + 152, 1, 151.5 );
setRotateKey( spep_0 + 154, 1, 159.4 );
setRotateKey( spep_0 + 156, 1, 167.4 );
setRotateKey( spep_0 + 158, 1, 175.3 );
setRotateKey( spep_0 + 160, 1, 183.3 );
setRotateKey( spep_0 + 162, 1, 191.2 );
setRotateKey( spep_0 + 164, 1, 199.2 );
setRotateKey( spep_0 + 166, 1, 207.1 );
setRotateKey( spep_0 + 168, 1, 215.1 );
setRotateKey( spep_0 + 170, 1, 223 );

--集中線
shuchusen = entryEffectLife( spep_0 + 56,  906, 168, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_0 + 56, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_0 + 96, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_0 + 97, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_0 + 98, shuchusen, 100, 0 , 0 );
setEffMoveKey( spep_0 + 160, shuchusen, 100, 0 , 0 );
setEffMoveKey( spep_0 + 161, shuchusen, 100, 0 , 0 );
setEffMoveKey( spep_0 + 162, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_0 + 224, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_0 + 56, shuchusen, 1.5, 1.5 );
setEffScaleKey( spep_0 + 96, shuchusen, 1.5, 1.5 );
setEffScaleKey( spep_0 + 97, shuchusen, 1.5, 1.5 );
setEffScaleKey( spep_0 + 98, shuchusen, 1.32, 1.32 );
setEffScaleKey( spep_0 + 160, shuchusen, 1.32, 1.32 );
setEffScaleKey( spep_0 + 161, shuchusen, 1.32, 1.32 )
setEffScaleKey( spep_0 + 162, shuchusen, 1, 1 );
setEffScaleKey( spep_0 + 224, shuchusen, 1, 1 );

setEffRotateKey( spep_0 + 56, shuchusen, 180 );
setEffRotateKey( spep_0 + 224, shuchusen, 180 );

setEffAlphaKey( spep_0 + 56, shuchusen, 0 );
setEffAlphaKey( spep_0 + 57, shuchusen, 255 );
setEffAlphaKey( spep_0 + 58, shuchusen, 255 );
setEffAlphaKey( spep_0 + 70, shuchusen, 255 );
setEffAlphaKey( spep_0 + 71, shuchusen, 0 );
setEffAlphaKey( spep_0 + 72, shuchusen, 0 );
setEffAlphaKey( spep_0 + 92, shuchusen, 0 );
setEffAlphaKey( spep_0 + 93, shuchusen, 0 );
setEffAlphaKey( spep_0 + 94, shuchusen, 255 );
setEffAlphaKey( spep_0 + 112, shuchusen, 255 );
setEffAlphaKey( spep_0 + 113, shuchusen, 0 );
setEffAlphaKey( spep_0 + 114, shuchusen, 0 );
setEffAlphaKey( spep_0 + 160, shuchusen, 0 );
setEffAlphaKey( spep_0 + 161, shuchusen, 0 );
setEffAlphaKey( spep_0 + 162, shuchusen, 255 );
setEffAlphaKey( spep_0 + 224, shuchusen, 255 );

--文字エントリー
ctbaki = entryEffectLife( spep_0 + 94,  10020, 18, 0x100, -1, 0, 80.5, 186.8 );--バキ

setEffMoveKey( spep_0 + 94, ctbaki, 80.5, 186.8 , 0 );
setEffMoveKey( spep_0 + 100, ctbaki, 85.2, 182.5 , 0 );
setEffMoveKey( spep_0 + 102, ctbaki, 80.5, 186.8 , 0 );
setEffMoveKey( spep_0 + 104, ctbaki, 85.2, 182.5 , 0 );
setEffMoveKey( spep_0 + 106, ctbaki, 80.5, 186.8 , 0 );
setEffMoveKey( spep_0 + 108, ctbaki, 85.2, 182.5 , 0 );
setEffMoveKey( spep_0 + 110, ctbaki, 80.5, 186.8 , 0 );
setEffMoveKey( spep_0 + 112, ctbaki, 85.2, 182.5 , 0 );
--setEffMoveKey( spep_0 + 114, ctbaki, 80.5, 186.8 , 0 );

setEffScaleKey( spep_0 + 94, ctbaki, 1.61, 1.61 );
setEffScaleKey( spep_0 + 112, ctbaki, 1.61, 1.61 );

setEffRotateKey( spep_0 + 94, ctbaki, 14 );
setEffRotateKey( spep_0 + 112, ctbaki, 14 );

setEffAlphaKey( spep_0 + 94, ctbaki, 0 );
setEffAlphaKey( spep_0 + 95, ctbaki, 255 );
setEffAlphaKey( spep_0 + 96, ctbaki, 255 );
setEffAlphaKey( spep_0 + 110, ctbaki, 255 );
--setEffAlphaKey( spep_0 + 111, ctbaki, 0 );
setEffAlphaKey( spep_0 + 112, ctbaki, 0 );

--文字エントリー
ctga = entryEffectLife( spep_0 + 124,  10005, 38, 0x100, -1, 0, 52.9, 184.8 );--ガ

setEffMoveKey( spep_0 + 124, ctga, 52.9, 184.8 , 0 );
setEffMoveKey( spep_0 + 130, ctga, 68.4, 199.2 , 0 );
setEffMoveKey( spep_0 + 132, ctga, 81.6, 215.8 , 0 );
setEffMoveKey( spep_0 + 134, ctga, 84.8, 216.1 , 0 );
setEffMoveKey( spep_0 + 136, ctga, 85, 219.4 , 0 );
setEffMoveKey( spep_0 + 138, ctga, 88.2, 219.7 , 0 );
setEffMoveKey( spep_0 + 140, ctga, 88.4, 223 , 0 );
setEffMoveKey( spep_0 + 142, ctga, 91.7, 223.1 , 0 );
setEffMoveKey( spep_0 + 144, ctga, 91.6, 226.7 , 0 );
setEffMoveKey( spep_0 + 146, ctga, 95, 226.7 , 0 );
setEffMoveKey( spep_0 + 148, ctga, 95, 230.2 , 0 );
setEffMoveKey( spep_0 + 150, ctga, 98.5, 230.3 , 0 );
setEffMoveKey( spep_0 + 152, ctga, 98.4, 233.9 , 0 );
setEffMoveKey( spep_0 + 154, ctga, 101.9, 233.8 , 0 );
setEffMoveKey( spep_0 + 156, ctga, 101.7, 237.4 , 0 );
setEffMoveKey( spep_0 + 158, ctga, 105.4, 237.3 , 0 );
setEffMoveKey( spep_0 + 160, ctga, 105, 241 , 0 );
setEffMoveKey( spep_0 + 162, ctga, 106.8, 242.8 , 0 );

setEffScaleKey( spep_0 + 124, ctga, 0.53, 0.53 );
setEffScaleKey( spep_0 + 130, ctga, 0.77, 0.77 );
setEffScaleKey( spep_0 + 132, ctga, 1, 1 );
setEffScaleKey( spep_0 + 134, ctga, 1.03, 1.03 );
setEffScaleKey( spep_0 + 136, ctga, 1.05, 1.05 );
setEffScaleKey( spep_0 + 138, ctga, 1.08, 1.08 );
setEffScaleKey( spep_0 + 140, ctga, 1.11, 1.11 );
setEffScaleKey( spep_0 + 142, ctga, 1.14, 1.14 );
setEffScaleKey( spep_0 + 144, ctga, 1.16, 1.16 );
setEffScaleKey( spep_0 + 146, ctga, 1.19, 1.19 );
setEffScaleKey( spep_0 + 148, ctga, 1.22, 1.22 );
setEffScaleKey( spep_0 + 150, ctga, 1.25, 1.25 );
setEffScaleKey( spep_0 + 152, ctga, 1.27, 1.27 );
setEffScaleKey( spep_0 + 154, ctga, 1.3, 1.3 );
setEffScaleKey( spep_0 + 156, ctga, 1.33, 1.33 );
setEffScaleKey( spep_0 + 158, ctga, 1.35, 1.35 );
setEffScaleKey( spep_0 + 160, ctga, 1.38, 1.38 );
setEffScaleKey( spep_0 + 162, ctga, 1.41, 1.41 );

setEffRotateKey( spep_0 + 124, ctga, -12.6 );
setEffRotateKey( spep_0 + 130, ctga, -12.7 );
setEffRotateKey( spep_0 + 162, ctga, -12.7 );

setEffAlphaKey( spep_0 + 124, ctga, 0 );
setEffAlphaKey( spep_0 + 127, ctga, 255 );
setEffAlphaKey( spep_0 + 128, ctga, 255 );
setEffAlphaKey( spep_0 + 156, ctga, 255 );
setEffAlphaKey( spep_0 + 158, ctga, 170 );
setEffAlphaKey( spep_0 + 160, ctga, 85 );
setEffAlphaKey( spep_0 + 162, ctga, 0 );



--SE
playSe( spep_0+20, 44);--移動
playSe( spep_0+58, 1000);--パンチ
playSe( spep_0+96, 1010);--パンチ
playSe( spep_0+124, 1009);--頭に足が当たる
playSe( spep_0+156,4);--くるくる
playSe( spep_0+166,4);--くるくる
playSe( spep_0+176,4);--くるくる
playSe( spep_0+186,4);--くるくる
playSe( spep_0+196,4);--くるくる
playSe( spep_0+206,4);--くるくる
playSe( spep_0+216,4);--くるくる

-- ** エフェクト等 ** --
entryFade(spep_0+216, 4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade


--次の準備
spep_1=spep_0+224;

------------------------------------------------------
-- 顔を抑える
------------------------------------------------------
--エフェクト
suppress=entryEffectLife(spep_1,SP_03,140,0x100,-1,0,0,0);

setEffScaleKey(spep_1,suppress,1.0,1.0);
setEffScaleKey(spep_1+140,suppress,1.0,1.0);

setEffRotateKey(spep_1,suppress,0);
setEffRotateKey(spep_1+140,suppress,0);

setEffAlphaKey(spep_1,suppress,255);
setEffAlphaKey(spep_1+140,suppress,255);

--集中線
shuchusen2 = entryEffectLife( spep_1 + 54,  906, 84, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_1 + 54, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_1 + 138, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_1 + 54, shuchusen2, 1, 1 );
setEffScaleKey( spep_1 + 138, shuchusen2, 1, 1 );

setEffRotateKey( spep_1 + 54, shuchusen2, 180 );
setEffRotateKey( spep_1 + 138, shuchusen2, 180 );

setEffAlphaKey( spep_1 + 54, shuchusen2, 0 );
setEffAlphaKey( spep_1 + 55, shuchusen2, 255 );
setEffAlphaKey( spep_1 + 56, shuchusen2, 255 );
setEffAlphaKey( spep_1 + 138, shuchusen2, 255 );

--ゴゴゴ
ctgogo=entryEffectLife(spep_1+70,190006,70,0x100,-1,90,520);--ゴゴゴ

setEffMoveKey(spep_1+70,ctgogo,90,520,0);
setEffMoveKey(spep_1+140,ctgogo,90,520,0);

setEffScaleKey(spep_1+70, ctgogo, 0.7, 0.7);
setEffScaleKey(spep_1+140, ctgogo, 0.7, 0.7);

setEffAlphaKey( spep_1 + 70, ctgogo, 0 );
setEffAlphaKey( spep_1 + 71, ctgogo, 255 );
setEffAlphaKey( spep_1 + 72, ctgogo, 255 );
setEffAlphaKey( spep_1 + 140, ctgogo, 255 );

setEffRotateKey(spep_1+70,ctgogo,0);
setEffRotateKey(spep_1+140,ctgogo,0);

--顔カットイン
speff = entryEffect(  spep_1+58,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_1+58,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

--SE
playSe( spep_1+	0	, 4);--くるくる
playSe( spep_1+	10	, 4);--くるくる
playSe( spep_1+	20	, 4);--くるくる
playSe( spep_1+	30	, 4);--くるくる
playSe( spep_1+	40	, 4);--くるくる
playSe( spep_1+	50	, 4);--くるくる
playSe( spep_1+	60	, 4);--くるくる
playSe( spep_1+70, SE_04);--カットイン

-- ** エフェクト等 ** --
entryFade(spep_1+132, 4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 140, 0, 0, 0, 0, 180 );  --黒　背景

--次の準備
spep_2=spep_1+140;

------------------------------------------------------
-- Scene03　CARD
------------------------------------------------------


playSe( spep_2, SE_05);
speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

shuchusen3 = entryEffectLife( spep_2, 906, 90, 0x100,  -1, 0,  0,  0);  --集中線

setEffMoveKey(  spep_2,  shuchusen3,  0,  0);
setEffScaleKey(  spep_2,  shuchusen3,  1.0,  1.0);
setEffRotateKey(  spep_2,  shuchusen3,  0);
setEffAlphaKey(  spep_2,  shuchusen3,  255);
setEffMoveKey(  spep_2+90,  shuchusen3,  0,  0);
setEffScaleKey(  spep_2+90,  shuchusen3,  1.0,  1.0);
setEffRotateKey(  spep_2+90,  shuchusen3,  0);
setEffAlphaKey(  spep_2+90,  shuchusen3,  255);

entryFade( spep_2+84, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_3=spep_2+90;

------------------------------------------------------
-- 突進
------------------------------------------------------
--エフェクト
rush=entryEffectLife(spep_3,SP_04,64,0x100,-1,0,0,0);

setEffScaleKey(spep_3,rush,1.0,1.0);
setEffScaleKey(spep_3+64,rush,1.0,1.0);

setEffRotateKey(spep_3,rush,0);
setEffRotateKey(spep_3+64,rush,0);

setEffAlphaKey(spep_3,rush,255);
setEffAlphaKey(spep_3+64,rush,255);

--集中線
shuchusen4 = entryEffectLife( spep_3 + 0,  906, 62, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_3 + 0, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_3 + 62, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen4, 1.14, 1.14 );
setEffScaleKey( spep_3 + 62, shuchusen4, 1.14, 1.14 );

setEffRotateKey( spep_3 + 0, shuchusen4, 180 );
setEffRotateKey( spep_3 + 62, shuchusen4, 180 );

setEffAlphaKey( spep_3 + 0, shuchusen4, 255 );
setEffAlphaKey( spep_3 + 62, shuchusen4, 255 );

-- ** エフェクト等 ** --
entryFade(spep_3+56, 4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 64, 0, 0, 0, 0, 180 );  --黒　背景

--SE
playSe( spep_3, SE_04);--移動

--次の準備
spep_4=spep_3+64;

------------------------------------------------------
-- 敵を吹っ飛ばす
------------------------------------------------------
--エフェクト
skip=entryEffect(spep_4,SP_05,0x100,-1,0,0,0);

setEffScaleKey(spep_4,skip,1.0,1.0);
setEffScaleKey(spep_4+140,skip,1.0,1.0);

setEffRotateKey(spep_4,skip,0);
setEffRotateKey(spep_4+140,skip,0);

setEffAlphaKey(spep_4,skip,255);
setEffAlphaKey(spep_4+140,skip,255);

--集中線
shuchusen5 = entryEffectLife( spep_4 + 0,  906, 140, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_4 + 0, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_4 + 140, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, shuchusen5, 1.8, 1.8 );
setEffScaleKey( spep_4 + 140, shuchusen5, 1.8, 1.8 );

setEffRotateKey( spep_4 + 0, shuchusen5, 180 );
setEffRotateKey( spep_4 + 140, shuchusen5, 180 );

setEffAlphaKey( spep_4 + 0, shuchusen5, 255 );
setEffAlphaKey( spep_4 + 140, shuchusen5, 255 );

--流線
ryuusen2 = entryEffectLife( spep_4 + 0,  924, 58, 0x80, -1, 0, -380.3, -16.9 );

setEffMoveKey( spep_4 + 0, ryuusen2, -380.3, -16.9 , 0 );-- -380.8
setEffMoveKey( spep_4 + 58, ryuusen2, -380.3, -16.9 , 0 );

setEffScaleKey( spep_4 + 0, ryuusen2, 1.2, 1.1 );
setEffScaleKey( spep_4 + 58, ryuusen2, 1.2, 1.1 );--2.49

setEffRotateKey( spep_4 + 0, ryuusen2, 0 );
setEffRotateKey( spep_4 + 58, ryuusen2, 0 );

setEffAlphaKey( spep_4 + 0, ryuusen2, 255 );
setEffAlphaKey( spep_4 + 58, ryuusen2, 255 );

ctbagon = entryEffectLife( spep_4 + 0,  10021, 38, 0x100, -1, 0, 71, 172.6 );

setEffMoveKey( spep_4 + 0, ctbagon, 71, 172.6 , 0 );
setEffMoveKey( spep_4 + 2, ctbagon, 81.7, 188.3 , 0 );
setEffMoveKey( spep_4 + 4, ctbagon, 86.9, 212.5 , 0 );
setEffMoveKey( spep_4 + 6, ctbagon, 99.2, 225.8 , 0 );
setEffMoveKey( spep_4 + 8, ctbagon, 103, 252.6 , 0 );
setEffMoveKey( spep_4 + 10, ctbagon, 116.7, 263.5 , 0 );
setEffMoveKey( spep_4 + 12, ctbagon, 111.6, 274.3 , 0 );
setEffMoveKey( spep_4 + 14, ctbagon, 118.1, 266.9 , 0 );
setEffMoveKey( spep_4 + 16, ctbagon, 113, 277.7 , 0 );
setEffMoveKey( spep_4 + 18, ctbagon, 119.6, 270.4 , 0 );
setEffMoveKey( spep_4 + 20, ctbagon, 114.5, 281.2 , 0 );
setEffMoveKey( spep_4 + 22, ctbagon, 121, 273.8 , 0 );
setEffMoveKey( spep_4 + 24, ctbagon, 115.9, 284.6 , 0 );
setEffMoveKey( spep_4 + 26, ctbagon, 122.4, 277.2 , 0 );
setEffMoveKey( spep_4 + 28, ctbagon, 117.3, 288 , 0 );
setEffMoveKey( spep_4 + 30, ctbagon, 123.8, 280.6 , 0 );
setEffMoveKey( spep_4 + 32, ctbagon, 118.8, 291.5 , 0 );
setEffMoveKey( spep_4 + 34, ctbagon, 125.3, 284.1 , 0 );
setEffMoveKey( spep_4 + 36, ctbagon, 120.2, 294.9 , 0 );
setEffMoveKey( spep_4 + 38, ctbagon, 120.9, 296.6 , 0 );

setEffScaleKey( spep_4 + 0, ctbagon, 0.92, 0.92 );
setEffScaleKey( spep_4 + 2, ctbagon, 1.28, 1.28 );
setEffScaleKey( spep_4 + 4, ctbagon, 1.63, 1.63 );
setEffScaleKey( spep_4 + 6, ctbagon, 1.99, 1.99 );
setEffScaleKey( spep_4 + 8, ctbagon, 2.34, 2.34 );
setEffScaleKey( spep_4 + 10, ctbagon, 2.7, 2.7 );
setEffScaleKey( spep_4 + 38, ctbagon, 2.7, 2.7 );

setEffRotateKey( spep_4 + 0, ctbagon, 29 );
setEffRotateKey( spep_4 + 38, ctbagon, 29 );

setEffAlphaKey( spep_4 + 0, ctbagon, 255 );
setEffAlphaKey( spep_4 + 30, ctbagon, 255 );
setEffAlphaKey( spep_4 + 32, ctbagon, 191 );
setEffAlphaKey( spep_4 + 34, ctbagon, 128 );
setEffAlphaKey( spep_4 + 36, ctbagon, 64 );
setEffAlphaKey( spep_4 + 38, ctbagon, 0 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 58, 1, 0 );
changeAnime( spep_4 + 0, 1, 105 );

setMoveKey( spep_4 + 0, 1, 97.7, 51.6 , 0 );
setMoveKey( spep_4 + 2, 1, 96.6, 30.2 , 0 );
setMoveKey( spep_4 + 4, 1, 121.3, 25.3 , 0 );
setMoveKey( spep_4 + 6, 1, 120.2, 31.6 , 0 );
setMoveKey( spep_4 + 8, 1, 145, 24.9 , 0 );
setMoveKey( spep_4 + 10, 1, 143.9, 3.4 , 0 );
setMoveKey( spep_4 + 12, 1, 168.6, -1.5 , 0 );
setMoveKey( spep_4 + 14, 1, 166.3, 10 , 0 );
setMoveKey( spep_4 + 16, 1, 189.8, 8.5 , 0 );
setMoveKey( spep_4 + 18, 1, 187.5, -7.8 , 0 );
setMoveKey( spep_4 + 20, 1, 211.1, -7.5 , 0 );
setMoveKey( spep_4 + 22, 1, 208.8, 4 , 0 );
setMoveKey( spep_4 + 24, 1, 232.3, 2.5 , 0 );
setMoveKey( spep_4 + 26, 1, 230, -13.9 , 0 );
setMoveKey( spep_4 + 28, 1, 242.9, -12.1 , 0 );
setMoveKey( spep_4 + 30, 1, 230, 0.9 , 0 );

setScaleKey( spep_4 + 0, 1, 2.19, 2.19 );
setScaleKey( spep_4 + 2, 1, 2.03, 2.03 );
setScaleKey( spep_4 + 4, 1, 1.86, 1.86 );
setScaleKey( spep_4 + 6, 1, 1.7, 1.7 );
setScaleKey( spep_4 + 8, 1, 1.54, 1.54 );
setScaleKey( spep_4 + 10, 1, 1.37, 1.37 );
setScaleKey( spep_4 + 12, 1, 1.21, 1.21 );
setScaleKey( spep_4 + 14, 1, 1.07, 1.07 );
setScaleKey( spep_4 + 16, 1, 0.93, 0.93 );
setScaleKey( spep_4 + 18, 1, 0.79, 0.79 );
setScaleKey( spep_4 + 20, 1, 0.65, 0.65 );
setScaleKey( spep_4 + 22, 1, 0.51, 0.51 );
setScaleKey( spep_4 + 24, 1, 0.37, 0.37 );
setScaleKey( spep_4 + 26, 1, 0.23, 0.23 );
setScaleKey( spep_4 + 28, 1, 0.22, 0.22 );
setScaleKey( spep_4 + 30, 1, 0.21, 0.21 );
setScaleKey( spep_4 + 32, 1, 0.21, 0.21 );
setScaleKey( spep_4 + 34, 1, 0.2, 0.2 );
setScaleKey( spep_4 + 36, 1, 0.19, 0.19 );
setScaleKey( spep_4 + 38, 1, 0.18, 0.18 );
setScaleKey( spep_4 + 40, 1, 0.17, 0.17 );
setScaleKey( spep_4 + 42, 1, 0.17, 0.17 );
setScaleKey( spep_4 + 44, 1, 0.16, 0.16 );
setScaleKey( spep_4 + 46, 1, 0.15, 0.15 );
setScaleKey( spep_4 + 48, 1, 0.14, 0.14 );
setScaleKey( spep_4 + 50, 1, 0.13, 0.13 );
setScaleKey( spep_4 + 52, 1, 0.12, 0.12 );
setScaleKey( spep_4 + 54, 1, 0.12, 0.12 );
setScaleKey( spep_4 + 56, 1, 0.11, 0.11 );
setScaleKey( spep_4 + 58, 1, 0.1, 0.1 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4 + 58, 1, 0 );

--SE
playSe( spep_4, 1011);--タックル
playSe( spep_4+56, 3);--キラーん

-- ダメージ表示
dealDamage( spep_4+56);
entryFade( spep_4+118, 9,  10, 1, 8, 8, 8, 255); -- black fade
endPhase( spep_4+128);

else
--------------------------------------------------
--敵
--------------------------------------------------

------------------------------------------------------
-- カウンター
------------------------------------------------------
spep_0=0;

--流線(横)
ryusen = entryEffectLife( spep_0 + 0,  920, 56, 0x80, -1, 0, -1, 0 );

setEffMoveKey( spep_0 , ryusen, -1, 0 , 0 );
setEffMoveKey( spep_0 + 56, ryusen, -1, 0 , 0 );

setEffScaleKey( spep_0 , ryusen, 1, 1 );
setEffScaleKey( spep_0 + 56, ryusen, 1, 1 );

setEffRotateKey( spep_0 , ryusen, 0 );
setEffRotateKey( spep_0 + 56, ryusen, 0 );

setEffAlphaKey(spep_0,ryusen,0);
setEffAlphaKey(spep_0+21,ryusen,0);
setEffAlphaKey(spep_0+22,ryusen,255);
setEffAlphaKey(spep_0+23,ryusen,255);
setEffAlphaKey(spep_0+56,ryusen,255);

--エフェクト
counter_b1=entryEffectLife(spep_0,SP_01x,226,0x80,-1,0,0,0);

setEffScaleKey(spep_0,counter_b1,1.0,1.0);
setEffScaleKey(spep_0+226,counter_b1,1.0,1.0);

setEffRotateKey(spep_0,counter_b1,0);
setEffRotateKey(spep_0+226,counter_b1,0);

setEffAlphaKey(spep_0,counter_b1,255);
setEffAlphaKey(spep_0+226,counter_b1,255);

--エフェクト
counter_b2=entryEffectLife(spep_0,SP_01x,226,0x100,-1,0,0,0);

setEffScaleKey(spep_0,counter_b2,1.0,1.0);
setEffScaleKey(spep_0+226,counter_b2,1.0,1.0);

setEffRotateKey(spep_0,counter_b2,0);
setEffRotateKey(spep_0+226,counter_b2,0);

setEffAlphaKey(spep_0,counter_b2,255);
setEffAlphaKey(spep_0+124,counter_b2,255);
setEffAlphaKey(spep_0+125,counter_b2,0);
setEffAlphaKey(spep_0+126,counter_b2,0);
setEffAlphaKey(spep_0+226,counter_b2,0);


--エフェクト
counter_f=entryEffectLife(spep_0,SP_02x,226,0x100,-1,0,0,0);

setEffScaleKey(spep_0,counter_f,1.0,1.0);
setEffScaleKey(spep_0+226,counter_f,1.0,1.0);

setEffRotateKey(spep_0,counter_f,0);
setEffRotateKey(spep_0+226,counter_f,0);

setEffAlphaKey(spep_0,counter_f,255);
setEffAlphaKey(spep_0+226,counter_f,255);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 224, 0, 0, 0, 0, 180 );  --黒　背景

--敵の動き
setDisp( spep_0 + 18, 1, 1 );
setDisp( spep_0 + 170, 1, 0 );
changeAnime( spep_0 + 18, 1, 103 );
changeAnime( spep_0 + 57, 1, 109 );--60
changeAnime( spep_0 + 58, 1, 109 );--60
changeAnime( spep_0 + 95, 1, 106 );--98
changeAnime( spep_0 + 96, 1, 106 );--98

setMoveKey( spep_0 + 18, 1, 637.7, -54.7 , 0 );
setMoveKey( spep_0 + 20, 1, 602.6, -54.7 , 0 );
setMoveKey( spep_0 + 22, 1, 567.6, -54.7 , 0 );
setMoveKey( spep_0 + 24, 1, 532.6, -54.7 , 0 );
setMoveKey( spep_0 + 26, 1, 497.6, -54.7 , 0 );

setScaleKey( spep_0 + 18, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 26, 1, 1.1, 1.1 );

setRotateKey( spep_0 + 18, 1, 0 );
setRotateKey( spep_0 + 26, 1, 0 );

--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

SP_dodge = spep_0+26 ; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

pauseAll( SP_dodge, 67);

--キャラクターの固定
setMoveKey(SP_dodge, 1,497.6, -54.7 , 0 );
setScaleKey(SP_dodge , 1, 1.1, 1.1);
setRotateKey(SP_dodge,   1, 0 );

--キャラクターの固定
setMoveKey(SP_dodge+8, 1,497.6, -54.7 , 0 );
setScaleKey(SP_dodge+8 , 1, 1.1, 1.1);
setRotateKey(SP_dodge+8,   1, 0 );


setDisp(SP_dodge+9, 0, 0);
--setDisp(SP_dodge+9, 1, 0);
--setMoveKey(SP_dodge+9, 1, 0 , 0, 0);
setScaleKey(SP_dodge+9,1,0.9,0.9);
setRotateKey(SP_dodge+9,   1, 0);

--setMoveKey(SP_dodge+10, 1, 0 , 0, 0);
setScaleKey(SP_dodge+10,  1 , 0.9, 0.9);
setRotateKey(SP_dodge+10,   1, 0);


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
setMoveKey( spep_0 + 28, 1, 462.6, -54.7 , 0 );
setMoveKey( spep_0 + 30, 1, 427.6, -54.7 , 0 );
setMoveKey( spep_0 + 32, 1, 392.6, -54.7 , 0 );
setMoveKey( spep_0 + 34, 1, 357.6, -54.7 , 0 );
setMoveKey( spep_0 + 36, 1, 322.6, -54.7 , 0 );
setMoveKey( spep_0 + 38, 1, 287.6, -54.7 , 0 );
setMoveKey( spep_0 + 40, 1, 252.6, -54.7 , 0 );
setMoveKey( spep_0 + 42, 1, 217.6, -54.7 , 0 );
setMoveKey( spep_0 + 44, 1, 203.9, -54.7 , 0 );
setMoveKey( spep_0 + 46, 1, 190.1, -54.7 , 0 );
setMoveKey( spep_0 + 48, 1, 176.4, -54.7 , 0 );
setMoveKey( spep_0 + 50, 1, 162.6, -54.7 , 0 );
setMoveKey( spep_0 + 52, 1, 148.9, -54.7 , 0 );
setMoveKey( spep_0 + 56, 1, 135.1, -54.7 , 0 );
--setMoveKey( spep_0 + 56, 1, 121.4, -54.7 , 0 );
--setMoveKey( spep_0 + 58, 1, 107.6, -54.7 , 0 );
setMoveKey( spep_0 + 57, 1, 118.9, -33.8 , 0 );--60
setMoveKey( spep_0 + 58, 1, 118.9, -33.8 , 0 );--60
setMoveKey( spep_0 + 62, 1, 114.8, -37.9 , 0 );
setMoveKey( spep_0 + 64, 1, 122.2, -38.8 , 0 );
setMoveKey( spep_0 + 66, 1, 121.1, -33.5 , 0 );
setMoveKey( spep_0 + 68, 1, 127.4, -33.7 , 0 );
setMoveKey( spep_0 + 70, 1, 124.2, -38.9 , 0 );
setMoveKey( spep_0 + 72, 1, 130.6, -38.6 , 0 );
setMoveKey( spep_0 + 74, 1, 127.5, -33.2 , 0 );
setMoveKey( spep_0 + 76, 1, 133.2, -35.6 , 0 );
setMoveKey( spep_0 + 78, 1, 135.3, -35.6 , 0 );
setMoveKey( spep_0 + 80, 1, 137.4, -35.7 , 0 );
setMoveKey( spep_0 + 82, 1, 139.5, -35.7 , 0 );
setMoveKey( spep_0 + 84, 1, 141.6, -35.7 , 0 );
setMoveKey( spep_0 + 86, 1, 143.7, -35.8 , 0 );
setMoveKey( spep_0 + 88, 1, 145.8, -35.8 , 0 );
setMoveKey( spep_0 + 90, 1, 148.3, -35.8 , 0 );
setMoveKey( spep_0 + 92, 1, 150.8, -35.8 , 0 );
setMoveKey( spep_0 + 93, 1, 150.8, -35.8 , 0 );
---setMoveKey( spep_0 + 94, 1, 153.3, -35.8 , 0 );
--setMoveKey( spep_0 + 96, 1, 155.8, -35.8 , 0 );
--setMoveKey( spep_0 + 93, 1, 94.6, -12.7 , 0 );--90
setMoveKey( spep_0 + 95, 1, 94.6, -12.7 , 0 );--90
setMoveKey( spep_0 + 96, 1, 94.6, -12.7 , 0 );--90
setMoveKey( spep_0 + 100, 1, 105.2, -8.6 , 0 );
setMoveKey( spep_0 + 102, 1, 100.3, -17.9 , 0 );
setMoveKey( spep_0 + 104, 1, 113.2, -9.5 , 0 );
setMoveKey( spep_0 + 106, 1, 109.3, -9.7 , 0 );
setMoveKey( spep_0 + 108, 1, 124.3, -10 , 0 );
setMoveKey( spep_0 + 110, 1, 116.1, -15.3 , 0 );
setMoveKey( spep_0 + 112, 1, 122, -11.9 , 0 );
setMoveKey( spep_0 + 114, 1, 127.8, -8.6 , 0 );
setMoveKey( spep_0 + 116, 1, 132, -10.2 , 0 );
setMoveKey( spep_0 + 118, 1, 136.3, -8.7 , 0 );
setMoveKey( spep_0 + 120, 1, 141.9, -9.7 , 0 );
setMoveKey( spep_0 + 122, 1, 146.5, -9.6 , 0 );
--setMoveKey( spep_0 + 124, 1, 151.6, -9.1 , 0 );
--setMoveKey( spep_0 + 125, 1, 158.8, -12.5 , 0 );
--setMoveKey( spep_0 + 126, 1, 158.8, -12.5 , 0 );
setMoveKey( spep_0 + 125, 1, 162.3, -76.2 , 0 );--128
setMoveKey( spep_0 + 130, 1, 176.3, -90 , 0 );
setMoveKey( spep_0 + 132, 1, 190.3, -103.7 , 0 );
setMoveKey( spep_0 + 134, 1, 204.3, -117.5 , 0 );
setMoveKey( spep_0 + 136, 1, 218.3, -131.2 , 0 );
setMoveKey( spep_0 + 138, 1, 232.3, -145 , 0 );
setMoveKey( spep_0 + 140, 1, 246.3, -158.7 , 0 );
setMoveKey( spep_0 + 142, 1, 260.3, -172.5 , 0 );
setMoveKey( spep_0 + 144, 1, 274.3, -186.2 , 0 );
setMoveKey( spep_0 + 146, 1, 283.1, -193.1 , 0 );
setMoveKey( spep_0 + 148, 1, 291.9, -199.9 , 0 );
setMoveKey( spep_0 + 150, 1, 300.7, -206.8 , 0 );
setMoveKey( spep_0 + 152, 1, 309.5, -213.6 , 0 );
setMoveKey( spep_0 + 154, 1, 370.9, -246.4 , 0 );
setMoveKey( spep_0 + 156, 1, 432.2, -279.2 , 0 );
setMoveKey( spep_0 + 158, 1, 493.4, -312 , 0 );
setMoveKey( spep_0 + 160, 1, 554.8, -344.8 , 0 );
setMoveKey( spep_0 + 162, 1, 616.1, -377.6 , 0 );
setMoveKey( spep_0 + 164, 1, 677.4, -410.3 , 0 );
setMoveKey( spep_0 + 166, 1, 738.7, -443.2 , 0 );
setMoveKey( spep_0 + 168, 1, 800, -476 , 0 );
setMoveKey( spep_0 + 170, 1, 861.4, -508.8 , 0 );

setScaleKey( spep_0 + 124, 1, 1.1, 1.1 ); --126
setScaleKey( spep_0 + 125, 1, 1.63, 1.63 ); --128
setScaleKey( spep_0 + 126, 1, 1.63, 1.63 ); --128
setScaleKey( spep_0 + 130, 1, 1.78, 1.78 );
setScaleKey( spep_0 + 132, 1, 1.93, 1.93 );
setScaleKey( spep_0 + 134, 1, 2.08, 2.08 );
setScaleKey( spep_0 + 136, 1, 2.23, 2.23 );
setScaleKey( spep_0 + 138, 1, 2.38, 2.38 );
setScaleKey( spep_0 + 140, 1, 2.53, 2.53 );
setScaleKey( spep_0 + 142, 1, 2.68, 2.68 );
setScaleKey( spep_0 + 144, 1, 2.84, 2.84 );
setScaleKey( spep_0 + 146, 1, 2.86, 2.86 );
setScaleKey( spep_0 + 148, 1, 2.88, 2.88 );
setScaleKey( spep_0 + 150, 1, 2.9, 2.9 );
setScaleKey( spep_0 + 152, 1, 2.92, 2.92 );
setScaleKey( spep_0 + 154, 1, 2.94, 2.94 );
setScaleKey( spep_0 + 156, 1, 2.97, 2.97 );
setScaleKey( spep_0 + 158, 1, 2.99, 2.99 );
setScaleKey( spep_0 + 160, 1, 3.01, 3.01 );
setScaleKey( spep_0 + 162, 1, 3.03, 3.03 );
setScaleKey( spep_0 + 164, 1, 3.05, 3.05 );
setScaleKey( spep_0 + 166, 1, 3.07, 3.07 );
setScaleKey( spep_0 + 168, 1, 3.09, 3.09 );
setScaleKey( spep_0 + 170, 1, 3.12, 3.12 );

--集中線
shuchusen = entryEffectLife( spep_0 + 56,  906, 168, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_0 + 56, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_0 + 96, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_0 + 97, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_0 + 98, shuchusen, 100, 0 , 0 );
setEffMoveKey( spep_0 + 160, shuchusen, 100, 0 , 0 );
setEffMoveKey( spep_0 + 161, shuchusen, 100, 0 , 0 );
setEffMoveKey( spep_0 + 162, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_0 + 224, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_0 + 56, shuchusen, 1.5, 1.5 );
setEffScaleKey( spep_0 + 96, shuchusen, 1.5, 1.5 );
setEffScaleKey( spep_0 + 97, shuchusen, 1.5, 1.5 );
setEffScaleKey( spep_0 + 98, shuchusen, 1.32, 1.32 );
setEffScaleKey( spep_0 + 160, shuchusen, 1.32, 1.32 );
setEffScaleKey( spep_0 + 161, shuchusen, 1.32, 1.32 )
setEffScaleKey( spep_0 + 162, shuchusen, 1, 1 );
setEffScaleKey( spep_0 + 224, shuchusen, 1, 1 );

setEffRotateKey( spep_0 + 56, shuchusen, 180 );
setEffRotateKey( spep_0 + 224, shuchusen, 180 );

setEffAlphaKey( spep_0 + 56, shuchusen, 0 );
setEffAlphaKey( spep_0 + 57, shuchusen, 255 );
setEffAlphaKey( spep_0 + 58, shuchusen, 255 );
setEffAlphaKey( spep_0 + 70, shuchusen, 255 );
setEffAlphaKey( spep_0 + 71, shuchusen, 0 );
setEffAlphaKey( spep_0 + 72, shuchusen, 0 );
setEffAlphaKey( spep_0 + 92, shuchusen, 0 );
setEffAlphaKey( spep_0 + 93, shuchusen, 0 );
setEffAlphaKey( spep_0 + 94, shuchusen, 255 );
setEffAlphaKey( spep_0 + 112, shuchusen, 255 );
setEffAlphaKey( spep_0 + 113, shuchusen, 0 );
setEffAlphaKey( spep_0 + 114, shuchusen, 0 );
setEffAlphaKey( spep_0 + 160, shuchusen, 0 );
setEffAlphaKey( spep_0 + 161, shuchusen, 0 );
setEffAlphaKey( spep_0 + 162, shuchusen, 255 );
setEffAlphaKey( spep_0 + 224, shuchusen, 255 );

setRotateKey( spep_0 + 96, 1, 0 );
setRotateKey( spep_0 + 98, 1, 0 );
setRotateKey( spep_0 + 100, 1, 8 );
setRotateKey( spep_0 + 102, 1, 15.9 );
setRotateKey( spep_0 + 104, 1, 23.9 );
setRotateKey( spep_0 + 106, 1, 31.9 );
setRotateKey( spep_0 + 108, 1, 39.9 );
setRotateKey( spep_0 + 110, 1, 47.8 );
setRotateKey( spep_0 + 112, 1, 55.8 );
setRotateKey( spep_0 + 114, 1, 57.7 );
setRotateKey( spep_0 + 116, 1, 59.6 );
setRotateKey( spep_0 + 118, 1, 61.5 );
setRotateKey( spep_0 + 120, 1, 63.4 );
setRotateKey( spep_0 + 122, 1, 65.3 );
--setRotateKey( spep_0 + 124, 1, 67.2 );
--setRotateKey( spep_0 + 126, 1, 69.1 );
setRotateKey( spep_0 + 126, 1, 93.3 );--128
setRotateKey( spep_0 + 130, 1, 93.5 );
setRotateKey( spep_0 + 144, 1, 93.5 );
setRotateKey( spep_0 + 146, 1, 108 );
setRotateKey( spep_0 + 148, 1, 122.5 );
setRotateKey( spep_0 + 150, 1, 137 );
setRotateKey( spep_0 + 152, 1, 151.5 );
setRotateKey( spep_0 + 154, 1, 159.4 );
setRotateKey( spep_0 + 156, 1, 167.4 );
setRotateKey( spep_0 + 158, 1, 175.3 );
setRotateKey( spep_0 + 160, 1, 183.3 );
setRotateKey( spep_0 + 162, 1, 191.2 );
setRotateKey( spep_0 + 164, 1, 199.2 );
setRotateKey( spep_0 + 166, 1, 207.1 );
setRotateKey( spep_0 + 168, 1, 215.1 );
setRotateKey( spep_0 + 170, 1, 223 );

--文字エントリー
ctbaki = entryEffectLife( spep_0 + 94,  10020, 18, 0x100, -1, 0, 80.5, 186.8 );--バキ

setEffMoveKey( spep_0 + 94, ctbaki, 80.5, 186.8 , 0 );
setEffMoveKey( spep_0 + 100, ctbaki, 85.2, 182.5 , 0 );
setEffMoveKey( spep_0 + 102, ctbaki, 80.5, 186.8 , 0 );
setEffMoveKey( spep_0 + 104, ctbaki, 85.2, 182.5 , 0 );
setEffMoveKey( spep_0 + 106, ctbaki, 80.5, 186.8 , 0 );
setEffMoveKey( spep_0 + 108, ctbaki, 85.2, 182.5 , 0 );
setEffMoveKey( spep_0 + 110, ctbaki, 80.5, 186.8 , 0 );
setEffMoveKey( spep_0 + 112, ctbaki, 85.2, 182.5 , 0 );
--setEffMoveKey( spep_0 + 114, ctbaki, 80.5, 186.8 , 0 );

setEffScaleKey( spep_0 + 94, ctbaki, 1.61, 1.61 );
setEffScaleKey( spep_0 + 112, ctbaki, 1.61, 1.61 );

setEffRotateKey( spep_0 + 94, ctbaki, 14 );
setEffRotateKey( spep_0 + 112, ctbaki, 14 );

setEffAlphaKey( spep_0 + 94, ctbaki, 0 );
setEffAlphaKey( spep_0 + 95, ctbaki, 255 );
setEffAlphaKey( spep_0 + 96, ctbaki, 255 );
setEffAlphaKey( spep_0 + 110, ctbaki, 255 );
--setEffAlphaKey( spep_0 + 111, ctbaki, 0 );
setEffAlphaKey( spep_0 + 112, ctbaki, 0 );

--文字エントリー
ctga = entryEffectLife( spep_0 + 124,  10005, 38, 0x100, -1, 0, 52.9, 184.8 );--ガ

setEffMoveKey( spep_0 + 124, ctga, 52.9, 184.8 , 0 );
setEffMoveKey( spep_0 + 130, ctga, 68.4, 199.2 , 0 );
setEffMoveKey( spep_0 + 132, ctga, 81.6, 215.8 , 0 );
setEffMoveKey( spep_0 + 134, ctga, 84.8, 216.1 , 0 );
setEffMoveKey( spep_0 + 136, ctga, 85, 219.4 , 0 );
setEffMoveKey( spep_0 + 138, ctga, 88.2, 219.7 , 0 );
setEffMoveKey( spep_0 + 140, ctga, 88.4, 223 , 0 );
setEffMoveKey( spep_0 + 142, ctga, 91.7, 223.1 , 0 );
setEffMoveKey( spep_0 + 144, ctga, 91.6, 226.7 , 0 );
setEffMoveKey( spep_0 + 146, ctga, 95, 226.7 , 0 );
setEffMoveKey( spep_0 + 148, ctga, 95, 230.2 , 0 );
setEffMoveKey( spep_0 + 150, ctga, 98.5, 230.3 , 0 );
setEffMoveKey( spep_0 + 152, ctga, 98.4, 233.9 , 0 );
setEffMoveKey( spep_0 + 154, ctga, 101.9, 233.8 , 0 );
setEffMoveKey( spep_0 + 156, ctga, 101.7, 237.4 , 0 );
setEffMoveKey( spep_0 + 158, ctga, 105.4, 237.3 , 0 );
setEffMoveKey( spep_0 + 160, ctga, 105, 241 , 0 );
setEffMoveKey( spep_0 + 162, ctga, 106.8, 242.8 , 0 );

setEffScaleKey( spep_0 + 124, ctga, 0.53, 0.53 );
setEffScaleKey( spep_0 + 130, ctga, 0.77, 0.77 );
setEffScaleKey( spep_0 + 132, ctga, 1, 1 );
setEffScaleKey( spep_0 + 134, ctga, 1.03, 1.03 );
setEffScaleKey( spep_0 + 136, ctga, 1.05, 1.05 );
setEffScaleKey( spep_0 + 138, ctga, 1.08, 1.08 );
setEffScaleKey( spep_0 + 140, ctga, 1.11, 1.11 );
setEffScaleKey( spep_0 + 142, ctga, 1.14, 1.14 );
setEffScaleKey( spep_0 + 144, ctga, 1.16, 1.16 );
setEffScaleKey( spep_0 + 146, ctga, 1.19, 1.19 );
setEffScaleKey( spep_0 + 148, ctga, 1.22, 1.22 );
setEffScaleKey( spep_0 + 150, ctga, 1.25, 1.25 );
setEffScaleKey( spep_0 + 152, ctga, 1.27, 1.27 );
setEffScaleKey( spep_0 + 154, ctga, 1.3, 1.3 );
setEffScaleKey( spep_0 + 156, ctga, 1.33, 1.33 );
setEffScaleKey( spep_0 + 158, ctga, 1.35, 1.35 );
setEffScaleKey( spep_0 + 160, ctga, 1.38, 1.38 );
setEffScaleKey( spep_0 + 162, ctga, 1.41, 1.41 );

setEffRotateKey( spep_0 + 124, ctga, -12.6 );
setEffRotateKey( spep_0 + 130, ctga, -12.7 );
setEffRotateKey( spep_0 + 162, ctga, -12.7 );

setEffAlphaKey( spep_0 + 124, ctga, 0 );
setEffAlphaKey( spep_0 + 127, ctga, 255 );
setEffAlphaKey( spep_0 + 128, ctga, 255 );
setEffAlphaKey( spep_0 + 156, ctga, 255 );
setEffAlphaKey( spep_0 + 158, ctga, 170 );
setEffAlphaKey( spep_0 + 160, ctga, 85 );
setEffAlphaKey( spep_0 + 162, ctga, 0 );



--SE
playSe( spep_0+20, 44);--移動
playSe( spep_0+58, 1000);--パンチ
playSe( spep_0+96, 1010);--パンチ
playSe( spep_0+124, 1009);--頭に足が当たる
playSe( spep_0+156,4);--くるくる
playSe( spep_0+166,4);--くるくる
playSe( spep_0+176,4);--くるくる
playSe( spep_0+186,4);--くるくる
playSe( spep_0+196,4);--くるくる
playSe( spep_0+206,4);--くるくる
playSe( spep_0+216,4);--くるくる

-- ** エフェクト等 ** --
entryFade(spep_0+216, 4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade


--次の準備
spep_1=spep_0+224;

------------------------------------------------------
-- 顔を抑える
------------------------------------------------------
--エフェクト
suppress=entryEffectLife(spep_1,SP_03x,140,0x100,-1,0,0,0);

setEffScaleKey(spep_1,suppress,-1.0,1.0);
setEffScaleKey(spep_1+140,suppress,-1.0,1.0);

setEffRotateKey(spep_1,suppress,0);
setEffRotateKey(spep_1+140,suppress,0);

setEffAlphaKey(spep_1,suppress,255);
setEffAlphaKey(spep_1+140,suppress,255);

--集中線
shuchusen2 = entryEffectLife( spep_1 + 54,  906, 84, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_1 + 54, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_1 + 138, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_1 + 54, shuchusen2, 1, 1 );
setEffScaleKey( spep_1 + 138, shuchusen2, 1, 1 );

setEffRotateKey( spep_1 + 54, shuchusen2, 180 );
setEffRotateKey( spep_1 + 138, shuchusen2, 180 );

setEffAlphaKey( spep_1 + 54, shuchusen2, 0 );
setEffAlphaKey( spep_1 + 55, shuchusen2, 255 );
setEffAlphaKey( spep_1 + 56, shuchusen2, 255 );
setEffAlphaKey( spep_1 + 138, shuchusen2, 255 );

--ゴゴゴ
ctgogo=entryEffectLife(spep_1+70,190006,70,0x100,-1,90,520);--ゴゴゴ

setEffMoveKey(spep_1+70,ctgogo,90,520,0);
setEffMoveKey(spep_1+140,ctgogo,90,520,0);

setEffScaleKey(spep_1+70, ctgogo, -0.7, 0.7);
setEffScaleKey(spep_1+140, ctgogo,- 0.7, 0.7);

setEffAlphaKey( spep_1 + 70, ctgogo, 0 );
setEffAlphaKey( spep_1 + 71, ctgogo, 255 );
setEffAlphaKey( spep_1 + 72, ctgogo, 255 );
setEffAlphaKey( spep_1 + 140, ctgogo, 255 );

setEffRotateKey(spep_1+70,ctgogo,0);
setEffRotateKey(spep_1+140,ctgogo,0);

--顔カットイン
--speff = entryEffect(  spep_1+58,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  spep_1+58,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

--SE
playSe( spep_1+	0	, 4);--くるくる
playSe( spep_1+	10	, 4);--くるくる
playSe( spep_1+	20	, 4);--くるくる
playSe( spep_1+	30	, 4);--くるくる
playSe( spep_1+	40	, 4);--くるくる
playSe( spep_1+	50	, 4);--くるくる
playSe( spep_1+	60	, 4);--くるくる
playSe( spep_1+70, SE_04);--カットイン

-- ** エフェクト等 ** --
entryFade(spep_1+132, 4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 140, 0, 0, 0, 0, 180 );  --黒　背景

--次の準備
spep_2=spep_1+140;

------------------------------------------------------
-- Scene03　CARD
------------------------------------------------------


playSe( spep_2, SE_05);
speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

shuchusen3 = entryEffectLife( spep_2, 906, 90, 0x100,  -1, 0,  0,  0);  --集中線

setEffMoveKey(  spep_2,  shuchusen3,  0,  0);
setEffScaleKey(  spep_2,  shuchusen3,  1.0,  1.0);
setEffRotateKey(  spep_2,  shuchusen3,  0);
setEffAlphaKey(  spep_2,  shuchusen3,  255);
setEffMoveKey(  spep_2+90,  shuchusen3,  0,  0);
setEffScaleKey(  spep_2+90,  shuchusen3,  1.0,  1.0);
setEffRotateKey(  spep_2+90,  shuchusen3,  0);
setEffAlphaKey(  spep_2+90,  shuchusen3,  255);

entryFade( spep_2+84, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_3=spep_2+90;

------------------------------------------------------
-- 突進
------------------------------------------------------
--エフェクト
rush=entryEffectLife(spep_3,SP_04x,64,0x100,-1,0,0,0);

setEffScaleKey(spep_3,rush,-1.0,1.0);
setEffScaleKey(spep_3+64,rush,-1.0,1.0);

setEffRotateKey(spep_3,rush,0);
setEffRotateKey(spep_3+64,rush,0);

setEffAlphaKey(spep_3,rush,255);
setEffAlphaKey(spep_3+64,rush,255);

--集中線
shuchusen4 = entryEffectLife( spep_3 + 0,  906, 62, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_3 + 0, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_3 + 62, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen4, 1.14, 1.14 );
setEffScaleKey( spep_3 + 62, shuchusen4, 1.14, 1.14 );

setEffRotateKey( spep_3 + 0, shuchusen4, 180 );
setEffRotateKey( spep_3 + 62, shuchusen4, 180 );

setEffAlphaKey( spep_3 + 0, shuchusen4, 255 );
setEffAlphaKey( spep_3 + 62, shuchusen4, 255 );

-- ** エフェクト等 ** --
entryFade(spep_3+56, 4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 64, 0, 0, 0, 0, 180 );  --黒　背景

--SE
playSe( spep_3, SE_04);--移動

--次の準備
spep_4=spep_3+64;

------------------------------------------------------
-- 敵を吹っ飛ばす
------------------------------------------------------
--エフェクト
skip=entryEffect(spep_4,SP_05x,0x100,-1,0,0,0);

setEffScaleKey(spep_4,skip,1.0,1.0);
setEffScaleKey(spep_4+140,skip,1.0,1.0);

setEffRotateKey(spep_4,skip,0);
setEffRotateKey(spep_4+140,skip,0);

setEffAlphaKey(spep_4,skip,255);
setEffAlphaKey(spep_4+140,skip,255);

--集中線
shuchusen5 = entryEffectLife( spep_4 + 0,  906, 140, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_4 + 0, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_4 + 140, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, shuchusen5, 1.8, 1.8 );
setEffScaleKey( spep_4 + 140, shuchusen5, 1.8, 1.8 );

setEffRotateKey( spep_4 + 0, shuchusen5, 180 );
setEffRotateKey( spep_4 + 140, shuchusen5, 180 );

setEffAlphaKey( spep_4 + 0, shuchusen5, 255 );
setEffAlphaKey( spep_4 + 140, shuchusen5, 255 );

--流線
ryuusen2 = entryEffectLife( spep_4 + 0,  924, 58, 0x80, -1, 0, -380.3, -16.9 );

setEffMoveKey( spep_4 + 0, ryuusen2, -380.3, -16.9 , 0 );-- -380.8
setEffMoveKey( spep_4 + 58, ryuusen2, -380.3, -16.9 , 0 );

setEffScaleKey( spep_4 + 0, ryuusen2, 1.2, 1.1 );
setEffScaleKey( spep_4 + 58, ryuusen2, 1.2, 1.1 );--2.49

setEffRotateKey( spep_4 + 0, ryuusen2, 0 );
setEffRotateKey( spep_4 + 58, ryuusen2, 0 );

setEffAlphaKey( spep_4 + 0, ryuusen2, 255 );
setEffAlphaKey( spep_4 + 58, ryuusen2, 255 );

ctbagon = entryEffectLife( spep_4 + 0,  10021, 38, 0x100, -1, 0, 71, 172.6 );

setEffMoveKey( spep_4 + 0, ctbagon, 71, 172.6 , 0 );
setEffMoveKey( spep_4 + 2, ctbagon, 81.7, 188.3 , 0 );
setEffMoveKey( spep_4 + 4, ctbagon, 86.9, 212.5 , 0 );
setEffMoveKey( spep_4 + 6, ctbagon, 99.2, 225.8 , 0 );
setEffMoveKey( spep_4 + 8, ctbagon, 103, 252.6 , 0 );
setEffMoveKey( spep_4 + 10, ctbagon, 116.7, 263.5 , 0 );
setEffMoveKey( spep_4 + 12, ctbagon, 111.6, 274.3 , 0 );
setEffMoveKey( spep_4 + 14, ctbagon, 118.1, 266.9 , 0 );
setEffMoveKey( spep_4 + 16, ctbagon, 113, 277.7 , 0 );
setEffMoveKey( spep_4 + 18, ctbagon, 119.6, 270.4 , 0 );
setEffMoveKey( spep_4 + 20, ctbagon, 114.5, 281.2 , 0 );
setEffMoveKey( spep_4 + 22, ctbagon, 121, 273.8 , 0 );
setEffMoveKey( spep_4 + 24, ctbagon, 115.9, 284.6 , 0 );
setEffMoveKey( spep_4 + 26, ctbagon, 122.4, 277.2 , 0 );
setEffMoveKey( spep_4 + 28, ctbagon, 117.3, 288 , 0 );
setEffMoveKey( spep_4 + 30, ctbagon, 123.8, 280.6 , 0 );
setEffMoveKey( spep_4 + 32, ctbagon, 118.8, 291.5 , 0 );
setEffMoveKey( spep_4 + 34, ctbagon, 125.3, 284.1 , 0 );
setEffMoveKey( spep_4 + 36, ctbagon, 120.2, 294.9 , 0 );
setEffMoveKey( spep_4 + 38, ctbagon, 120.9, 296.6 , 0 );

setEffScaleKey( spep_4 + 0, ctbagon, 0.92, 0.92 );
setEffScaleKey( spep_4 + 2, ctbagon, 1.28, 1.28 );
setEffScaleKey( spep_4 + 4, ctbagon, 1.63, 1.63 );
setEffScaleKey( spep_4 + 6, ctbagon, 1.99, 1.99 );
setEffScaleKey( spep_4 + 8, ctbagon, 2.34, 2.34 );
setEffScaleKey( spep_4 + 10, ctbagon, 2.7, 2.7 );
setEffScaleKey( spep_4 + 38, ctbagon, 2.7, 2.7 );

setEffRotateKey( spep_4 + 0, ctbagon, 29 );
setEffRotateKey( spep_4 + 38, ctbagon, 29 );

setEffAlphaKey( spep_4 + 0, ctbagon, 255 );
setEffAlphaKey( spep_4 + 30, ctbagon, 255 );
setEffAlphaKey( spep_4 + 32, ctbagon, 191 );
setEffAlphaKey( spep_4 + 34, ctbagon, 128 );
setEffAlphaKey( spep_4 + 36, ctbagon, 64 );
setEffAlphaKey( spep_4 + 38, ctbagon, 0 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 58, 1, 0 );
changeAnime( spep_4 + 0, 1, 105 );

setMoveKey( spep_4 + 0, 1, 97.7, 51.6 , 0 );
setMoveKey( spep_4 + 2, 1, 96.6, 30.2 , 0 );
setMoveKey( spep_4 + 4, 1, 121.3, 25.3 , 0 );
setMoveKey( spep_4 + 6, 1, 120.2, 31.6 , 0 );
setMoveKey( spep_4 + 8, 1, 145, 24.9 , 0 );
setMoveKey( spep_4 + 10, 1, 143.9, 3.4 , 0 );
setMoveKey( spep_4 + 12, 1, 168.6, -1.5 , 0 );
setMoveKey( spep_4 + 14, 1, 166.3, 10 , 0 );
setMoveKey( spep_4 + 16, 1, 189.8, 8.5 , 0 );
setMoveKey( spep_4 + 18, 1, 187.5, -7.8 , 0 );
setMoveKey( spep_4 + 20, 1, 211.1, -7.5 , 0 );
setMoveKey( spep_4 + 22, 1, 208.8, 4 , 0 );
setMoveKey( spep_4 + 24, 1, 232.3, 2.5 , 0 );
setMoveKey( spep_4 + 26, 1, 230, -13.9 , 0 );
setMoveKey( spep_4 + 28, 1, 242.9, -12.1 , 0 );
setMoveKey( spep_4 + 30, 1, 230, 0.9 , 0 );

setScaleKey( spep_4 + 0, 1, 2.19, 2.19 );
setScaleKey( spep_4 + 2, 1, 2.03, 2.03 );
setScaleKey( spep_4 + 4, 1, 1.86, 1.86 );
setScaleKey( spep_4 + 6, 1, 1.7, 1.7 );
setScaleKey( spep_4 + 8, 1, 1.54, 1.54 );
setScaleKey( spep_4 + 10, 1, 1.37, 1.37 );
setScaleKey( spep_4 + 12, 1, 1.21, 1.21 );
setScaleKey( spep_4 + 14, 1, 1.07, 1.07 );
setScaleKey( spep_4 + 16, 1, 0.93, 0.93 );
setScaleKey( spep_4 + 18, 1, 0.79, 0.79 );
setScaleKey( spep_4 + 20, 1, 0.65, 0.65 );
setScaleKey( spep_4 + 22, 1, 0.51, 0.51 );
setScaleKey( spep_4 + 24, 1, 0.37, 0.37 );
setScaleKey( spep_4 + 26, 1, 0.23, 0.23 );
setScaleKey( spep_4 + 28, 1, 0.22, 0.22 );
setScaleKey( spep_4 + 30, 1, 0.21, 0.21 );
setScaleKey( spep_4 + 32, 1, 0.21, 0.21 );
setScaleKey( spep_4 + 34, 1, 0.2, 0.2 );
setScaleKey( spep_4 + 36, 1, 0.19, 0.19 );
setScaleKey( spep_4 + 38, 1, 0.18, 0.18 );
setScaleKey( spep_4 + 40, 1, 0.17, 0.17 );
setScaleKey( spep_4 + 42, 1, 0.17, 0.17 );
setScaleKey( spep_4 + 44, 1, 0.16, 0.16 );
setScaleKey( spep_4 + 46, 1, 0.15, 0.15 );
setScaleKey( spep_4 + 48, 1, 0.14, 0.14 );
setScaleKey( spep_4 + 50, 1, 0.13, 0.13 );
setScaleKey( spep_4 + 52, 1, 0.12, 0.12 );
setScaleKey( spep_4 + 54, 1, 0.12, 0.12 );
setScaleKey( spep_4 + 56, 1, 0.11, 0.11 );
setScaleKey( spep_4 + 58, 1, 0.1, 0.1 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4 + 58, 1, 0 );

--SE
playSe( spep_4, 1011);--タックル
playSe( spep_4+56, 3);--キラーん

-- ダメージ表示
dealDamage( spep_4+56);
entryFade( spep_4+118, 9,  10, 1, 8, 8, 8, 255); -- black fade
endPhase( spep_4+128);

end

