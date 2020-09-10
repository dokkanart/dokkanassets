--超サイヤ人ゴテンクス＆ゴースト　1015270　スーパーゴーストカミカゼアタック
--sp_effect_b4_00070

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
SP_01=	152236	;--	口からゴースト
SP_02=	152237	;--	突撃開始
SP_03=	152238	;--	突撃
SP_04=	152239	;--	コソコソ話し
SP_05=	152240	;--	ナビ
SP_06=	152241	;--	群がる(前）
SP_07=	152242	;--	群がる（後）
SP_08=	152243	;--	フィニッシュ

--敵側
SP_01x=	152236	;--	口からゴースト	
SP_02x=	152237	;--	突撃開始	
SP_03x=	152244	;--	突撃	(敵)
SP_04x=	152239	;--	コソコソ話し	
SP_05x=	152240	;--	ナビ	
SP_06x=	152241	;--	群がる(前）	
SP_07x=	152242	;--	群がる（後）	
SP_08x=	152245	;--	フィニッシュ	(敵)

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
--溜め
--------------------------------------
spep_0=0;

--エフェクトの再生
tame=entryEffectLife(spep_0,SP_01,140,0x100,-1,0,0,0);

setEffMoveKey(spep_0,tame,0,0,0);
setEffMoveKey(spep_0+140,tame,0,0,0);
setEffScaleKey(spep_0,tame,1.0,1.0);
setEffScaleKey(spep_0+140,tame,1.0,1.0);
setEffAlphaKey(spep_0,tame,255);
setEffAlphaKey(spep_0+140,tame,255);
setEffRotateKey(spep_0,tame,0);
setEffRotateKey(spep_0+140,tame,0);

--集中線
syutyuse = entryEffectLife( spep_0 + 0,  906, 32, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_0 + 0, syutyuse, 0, 0 , 0 );
setEffMoveKey( spep_0 + 32, syutyuse, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, syutyuse, 1, 1 );
setEffScaleKey( spep_0 + 32, syutyuse, 1, 1 );

setEffRotateKey( spep_0 + 0, syutyuse, 0 );
setEffRotateKey( spep_0 + 32, syutyuse, 0 );

setEffAlphaKey( spep_0 + 0, syutyuse, 255 );
setEffAlphaKey( spep_0 + 32, syutyuse, 255 );

-- ** エフェクト等 ** --
entryFade(spep_0, 0, 2, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_0+132, 6, 4, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--黒背景
entryFadeBg(spep_0, 0, 140, 0, 0, 0, 0, 180);  -- 黒　背景

--SE
playSe( spep_0+26, 31); --口から何か出す
playSe( spep_0+56, 31); --口から何か出す
playSe( spep_0+88, 31); --口から何か出す

--次の準備
spep_1=spep_0+140;

--------------------------------------
--やったるぜ！
--------------------------------------

--エフェクトの再生
pause=entryEffectLife(spep_1,SP_02,100,0x100,-1,0,50,0);

setEffMoveKey(spep_1,pause,0,50,0);
setEffMoveKey(spep_1+100,pause,0,50,0);
setEffScaleKey(spep_1,pause,1.0,1.0);
setEffScaleKey(spep_1+100,pause,1.0,1.0);
setEffAlphaKey(spep_1,pause,255);
setEffAlphaKey(spep_1+100,pause,255);
setEffRotateKey(spep_1,pause,0);
setEffRotateKey(spep_1+100,pause,0);

--集中線
syutyuse2 = entryEffectLife( spep_1 + 0,  906, 98, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_1 + 0, syutyuse2, 0, 0 , 0 );
setEffMoveKey( spep_1 + 98, syutyuse2, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, syutyuse2, 1, 1 );
setEffScaleKey( spep_1 + 98, syutyuse2, 1, 1 );

setEffRotateKey( spep_1 + 0, syutyuse2, 0 );
setEffRotateKey( spep_1 + 98, syutyuse2, 0 );

setEffAlphaKey( spep_1 + 0, syutyuse2, 255 );
setEffAlphaKey( spep_1 + 98, syutyuse2, 255 );

--顔カットイン
speff=entryEffect(spep_1+14,1504,0x100,-1,0,0,0);  --カットイン(顔)
setEffReplaceTexture(speff,3,2);  --カットイン差し替え
speff1=entryEffect(spep_1+14,1505,0x100,-1,0,0,0);  --カットイン(セリフ)
setEffReplaceTexture(speff1,4,5);  --セリフカットイン差し替え

--文字エントリー
ctgogo=entryEffectLife(spep_1+26,190006,70,0x100,-1,55,520);--ゴゴゴ
setEffMoveKey(spep_1+26,ctgogo,55,520,0);
setEffMoveKey(spep_1+96,ctgogo,55,520,0);
setEffScaleKey(spep_1+26, ctgogo, 0.7, 0.7);
setEffScaleKey(spep_1+96, ctgogo, 0.7, 0.7);

setEffAlphaKey( spep_1 + 26, ctgogo, 0 );
setEffAlphaKey( spep_1 + 27, ctgogo, 255 );
setEffAlphaKey( spep_1 + 28, ctgogo, 255 );
setEffAlphaKey( spep_1 + 96, ctgogo, 255 );

-- ** エフェクト等 ** --
entryFade(spep_1+92, 6, 4, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--黒背景
entryFadeBg(spep_1, 0, 100, 0, 0, 0, 0, 180);  -- 黒　背景

--SE
playSe( spep_1+26, SE_04); --ゴゴゴ


--次の準備
spep_2=spep_1+100;


--------------------------------------
--カードカットイン(90F)
--------------------------------------

playSe(spep_2,SE_05);
shuchusen9=entryEffectLife(spep_2,906,90,0x100,-1,0,0,0);   -- 集中線
setEffScaleKey(spep_2,shuchusen9,1.6,1.6);

speff2=entryEffect(spep_2,1507,0x80,-1,0,0,0);   -- カード
setEffReplaceTexture(speff2,1,1);
setEffReplaceTexture(speff2,2,0);-- カード差し替え
setEffReplaceTexture(speff2,5,4);-- 技名テクスチャ差し替え

-- ** エフェクト等 ** --
entryFade(spep_2+85,3,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_3=spep_2+90;

--------------------------------------
--フェイント
--------------------------------------
--エフェクトの再生
feint=entryEffectLife(spep_3,SP_03,100,0x100,-1,0,0,0);

setEffMoveKey(spep_3,feint,0,0,0);
setEffMoveKey(spep_3+100,feint,0,0,0);
setEffScaleKey(spep_3,feint,1.0,1.0);
setEffScaleKey(spep_3+100,feint,1.0,1.0);
setEffAlphaKey(spep_3,feint,255);
setEffAlphaKey(spep_3+100,feint,255);
setEffRotateKey(spep_3,feint,0);
setEffRotateKey(spep_3+100,feint,0);

--黒背景
entryFadeBg(spep_3, 0, 100, 0, 0, 0, 0, 180);  -- 黒　背景

--流線
ryuusen = entryEffectLife( spep_3 + 0,  923, 56, 0x80, -1, 0, 0, 0 );--斜め

setEffMoveKey( spep_3 + 0, ryuusen, 0, 0 , 0 );
setEffMoveKey( spep_3 + 56, ryuusen, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, ryuusen, 1.36, 1.29 );
setEffScaleKey( spep_3 + 56, ryuusen, 1.36, 1.29 );
--------------------------------------------------------------------------
setEffRotateKey( spep_3 + 0, ryuusen, 37.5 );
setEffRotateKey( spep_3 + 56, ryuusen, 37.5 );
--------------------------------------------------------------------------
setEffAlphaKey( spep_3 + 0, ryuusen, 255 );
setEffAlphaKey( spep_3 + 56, ryuusen, 255 );

--流線
ryuusen2 = entryEffectLife( spep_3 + 60,  920, 10, 0x80, -1, 0, 0, 0 );--横

setEffMoveKey( spep_3 + 60, ryuusen2, 0, 0 , 0 );
setEffMoveKey( spep_3 + 70, ryuusen2, 0, 0 , 0 );

setEffScaleKey( spep_3 + 60, ryuusen2, 2.0, 1.7 );
setEffScaleKey( spep_3 + 70, ryuusen2, 2.0, 1.7 );

setEffRotateKey( spep_3 + 60, ryuusen2, -172.3 );
setEffRotateKey( spep_3 + 70, ryuusen2, -172.3 );

setEffAlphaKey( spep_3 + 60, ryuusen2, 255 );
setEffAlphaKey( spep_3 + 70, ryuusen2, 255 );


--SE
playSe( spep_3, 8); --移動音

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 100, 1, 0 );
changeAnime( spep_3 + 0, 1, 101 );

setMoveKey( spep_3 + 0, 1, 282.6, 332 , 0 );
setMoveKey( spep_3 + 2, 1, 270.3, 314.6 , 0 );
setMoveKey( spep_3 + 4, 1, 258, 297.2 , 0 );
setMoveKey( spep_3 + 6, 1, 245.8, 279.8 , 0 );
setMoveKey( spep_3 + 8, 1, 233.5, 262.4 , 0 );
setMoveKey( spep_3 + 10, 1, 221.2, 244.9 , 0 );
setMoveKey( spep_3 + 12, 1, 208.9, 227.5 , 0 );
setMoveKey( spep_3 + 14, 1, 196.7, 210.1 , 0 );
setMoveKey( spep_3 + 16, 1, 193.7, 206.3 , 0 );
setMoveKey( spep_3 + 18, 1, 190.7, 202.4 , 0 );
setMoveKey( spep_3 + 20, 1, 187.8, 198.6 , 0 );
setMoveKey( spep_3 + 22, 1, 184.8, 194.8 , 0 );
setMoveKey( spep_3 + 24, 1, 181.9, 191 , 0 );
setMoveKey( spep_3 + 26, 1, 178.9, 187.1 , 0 );
setMoveKey( spep_3 + 28, 1, 176, 183.3 , 0 );
setMoveKey( spep_3 + 30, 1, 173, 179.5 , 0 );
setMoveKey( spep_3 + 32, 1, 170, 175.7 , 0 );
setMoveKey( spep_3 + 34, 1, 167.1, 171.8 , 0 );
setMoveKey( spep_3 + 36, 1, 164.1, 168 , 0 );
setMoveKey( spep_3 + 38, 1, 161.2, 164.2 , 0 );
setMoveKey( spep_3 + 40, 1, 158.2, 160.4 , 0 );


setScaleKey( spep_3 + 0, 1, 0.26, 0.26 );
setScaleKey( spep_3 + 2, 1, 0.29, 0.29 );
setScaleKey( spep_3 + 4, 1, 0.33, 0.33 );
setScaleKey( spep_3 + 6, 1, 0.36, 0.36 );
setScaleKey( spep_3 + 8, 1, 0.4, 0.4 );
setScaleKey( spep_3 + 10, 1, 0.43, 0.43 );
setScaleKey( spep_3 + 12, 1, 0.47, 0.47 );
setScaleKey( spep_3 + 14, 1, 0.5, 0.5 );
setScaleKey( spep_3 + 16, 1, 0.52, 0.52 );
setScaleKey( spep_3 + 18, 1, 0.53, 0.53 );
setScaleKey( spep_3 + 20, 1, 0.55, 0.55 );
setScaleKey( spep_3 + 22, 1, 0.56, 0.56 );
setScaleKey( spep_3 + 24, 1, 0.58, 0.58 );
setScaleKey( spep_3 + 26, 1, 0.59, 0.59 );
setScaleKey( spep_3 + 28, 1, 0.61, 0.61 );
setScaleKey( spep_3 + 30, 1, 0.62, 0.62 );
setScaleKey( spep_3 + 32, 1, 0.64, 0.64 );
setScaleKey( spep_3 + 34, 1, 0.65, 0.65 );
setScaleKey( spep_3 + 36, 1, 0.67, 0.67 );
setScaleKey( spep_3 + 38, 1, 0.68, 0.68 );
setScaleKey( spep_3 + 40, 1, 0.7, 0.7 );


setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 + 40, 1, 0 );


--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

SP_dodge = spep_3+40 ; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

pauseAll( SP_dodge, 67);

--キャラクターの固定
setMoveKey(SP_dodge, 1, 158.2, 160.4, 0 );
setScaleKey(SP_dodge , 1, 0.7, 0.7  );
setRotateKey(SP_dodge,   1, 0);

--キャラクターの固定
setMoveKey(SP_dodge+8, 1, 158.2, 160.4, 0 );
setScaleKey(SP_dodge+8 , 1, 0.7, 0.7  );
setRotateKey(SP_dodge+8,   1, 0);



setDisp(SP_dodge+9, 0, 0);
--setDisp(SP_dodge+9, 1, 0);
--setMoveKey(SP_dodge+9, 1, 0 , 0, 0);
setScaleKey(SP_dodge+9,  1 , 0.7, 0.7 );
setRotateKey(SP_dodge+9,   1, 0);

--setMoveKey(SP_dodge+10, 1, 0 , 0, 0);
setScaleKey(SP_dodge+10,  1 , 0.7, 0.7);
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
setMoveKey( spep_3 + 42, 1, 155.3, 156.5 , 0 );
setMoveKey( spep_3 + 44, 1, 152.3, 152.7 , 0 );
setMoveKey( spep_3 + 46, 1, 149.3, 148.9 , 0 );
setMoveKey( spep_3 + 48, 1, 146.4, 145.1 , 0 );
setMoveKey( spep_3 + 50, 1, 143.4, 141.2 , 0 );
setMoveKey( spep_3 + 52, 1, 140.5, 137.4 , 0 );
setMoveKey( spep_3 + 54, 1, 137.5, 133.6 , 0 );
setMoveKey( spep_3 + 56, 1, 134.6, 129.8 , 0 );
setMoveKey( spep_3 + 58, 1, 131.6, 125.9 , 0 );
setMoveKey( spep_3 + 60, 1, 128.7, 122.1 , 0 );
setMoveKey( spep_3 + 62, 1, 121.5, 112.8 , 0 );
setMoveKey( spep_3 + 64, 1, 114.4, 103.5 , 0 );
setMoveKey( spep_3 + 66, 1, 107.3, 94.1 , 0 );
setMoveKey( spep_3 + 68, 1, 100.2, 84.8 , 0 );
setMoveKey( spep_3 + 70, 1, 93.1, 75.5 , 0 );
setMoveKey( spep_3 + 72, 1, 86, 66.2 , 0 );
setMoveKey( spep_3 + 74, 1, 78.9, 56.8 , 0 );
setMoveKey( spep_3 + 76, 1, 71.8, 47.5 , 0 );
setMoveKey( spep_3 + 78, 1, 64.7, 38.2 , 0 );
setMoveKey( spep_3 + 100, 1, 64.7, 38.2 , 0 );

setScaleKey( spep_3 + 42, 1, 0.71, 0.71 );
setScaleKey( spep_3 + 44, 1, 0.73, 0.73 );
setScaleKey( spep_3 + 46, 1, 0.74, 0.74 );
setScaleKey( spep_3 + 48, 1, 0.76, 0.76 );
setScaleKey( spep_3 + 50, 1, 0.77, 0.77 );
setScaleKey( spep_3 + 52, 1, 0.79, 0.79 );
setScaleKey( spep_3 + 54, 1, 0.8, 0.8 );
setScaleKey( spep_3 + 56, 1, 0.82, 0.82 );
setScaleKey( spep_3 + 58, 1, 0.84, 0.84 );
setScaleKey( spep_3 + 60, 1, 0.85, 0.85 );
setScaleKey( spep_3 + 62, 1, 0.88, 0.88 );
setScaleKey( spep_3 + 64, 1, 0.91, 0.91 );
setScaleKey( spep_3 + 66, 1, 0.94, 0.94 );
setScaleKey( spep_3 + 68, 1, 0.98, 0.98 );
setScaleKey( spep_3 + 70, 1, 1.01, 1.01 );
setScaleKey( spep_3 + 72, 1, 1.04, 1.04 );
setScaleKey( spep_3 + 74, 1, 1.07, 1.07 );
setScaleKey( spep_3 + 76, 1, 1.1, 1.1 );
setScaleKey( spep_3 + 78, 1, 1.13, 1.13 );
setScaleKey( spep_3 + 100, 1, 1.13, 1.13 );

setRotateKey( spep_3 + 100, 1, 0 );

--文字エントリー
ctbikkuri = entryEffectLife( spep_3 + 70,  10001, 28, 0x100, -1, 0, 52.5, 178 );--!?
setEffMoveKey( spep_3 + 70, ctbikkuri, 52.5, 178 , 0 );
setEffMoveKey( spep_3 + 72, ctbikkuri, 38.5, 198 , 0 );
setEffMoveKey( spep_3 + 74, ctbikkuri, 12.9, 209.9 , 0 );
setEffMoveKey( spep_3 + 76, ctbikkuri, -20.3, 208.8 , 0 );
setEffMoveKey( spep_3 + 78, ctbikkuri, 1.1, 225.7 , 0 );
setEffMoveKey( spep_3 + 80, ctbikkuri, 26.2, 235.2 , 0 );
setEffMoveKey( spep_3 + 82, ctbikkuri, 52.5, 236.9 , 0 );
setEffMoveKey( spep_3 + 84, ctbikkuri, 77.7, 230.8 , 0 );
setEffMoveKey( spep_3 + 86, ctbikkuri, 67.8, 233.5 , 0 );
setEffMoveKey( spep_3 + 98, ctbikkuri, 57.5, 235.1 , 0 );

setEffScaleKey( spep_3 + 70, ctbikkuri, 0.81, 0.81 );
setEffScaleKey( spep_3 + 72, ctbikkuri, 1.41, 1.41 );
setEffScaleKey( spep_3 + 74, ctbikkuri, 2, 2 );
setEffScaleKey( spep_3 + 76, ctbikkuri, 2.6, 2.6 );
setEffScaleKey( spep_3 + 78, ctbikkuri, 2.56, 2.56 );
setEffScaleKey( spep_3 + 80, ctbikkuri, 2.52, 2.52 );
setEffScaleKey( spep_3 + 82, ctbikkuri, 2.47, 2.47 );
setEffScaleKey( spep_3 + 84, ctbikkuri, 2.43, 2.43 );
setEffScaleKey( spep_3 + 98, ctbikkuri, 2.43, 2.43 );

setEffRotateKey( spep_3 + 70, ctbikkuri, 0 );
setEffRotateKey( spep_3 + 72, ctbikkuri, -18.3 );
setEffRotateKey( spep_3 + 74, ctbikkuri, -36.6 );
setEffRotateKey( spep_3 + 76, ctbikkuri, -54.9 );
setEffRotateKey( spep_3 + 78, ctbikkuri, -37.8 );
setEffRotateKey( spep_3 + 80, ctbikkuri, -20.6 );
setEffRotateKey( spep_3 + 82, ctbikkuri, -3.4 );
setEffRotateKey( spep_3 + 84, ctbikkuri, 13.8 );
setEffRotateKey( spep_3 + 86, ctbikkuri, 6.9 );
setEffRotateKey( spep_3 + 88, ctbikkuri, 0 );
setEffRotateKey( spep_3 + 98, ctbikkuri, 0 );

setEffAlphaKey( spep_3 + 70, ctbikkuri, 255 );
setEffAlphaKey( spep_3 + 98, ctbikkuri, 255 );

-- ** エフェクト等 ** --
entryFade(spep_3+92, 6, 4, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--SE
playSe( spep_3+60, 44); --移動音

--次の準備
spep_4=spep_3+100;


--------------------------------------
--井戸端会議
--------------------------------------
--エフェクトの再生
conference=entryEffectLife(spep_4,SP_04,120,0x100,-1,0,0,0);

setEffMoveKey(spep_4,conference,0,0,0);
setEffMoveKey(spep_4+120,conference,0,0,0);
setEffScaleKey(spep_4,conference,1.0,1.0);
setEffScaleKey(spep_4+120,conference,1.0,1.0);
setEffAlphaKey(spep_4,conference,255);
setEffAlphaKey(spep_4+120,conference,255);
setEffRotateKey(spep_4,conference,0);
setEffRotateKey(spep_4+120,conference,0);

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 118, 1, 0 );
changeAnime( spep_4 + 0, 1, 116 );

setMoveKey( spep_4 + 0, 1, 202.8, 432.1 , 0 );
setMoveKey( spep_4 + 2, 1, 202, 430.6 , 0 );
setMoveKey( spep_4 + 4, 1, 200.8, 429.1 , 0 );
setMoveKey( spep_4 + 6, 1, 199.9, 427.9 , 0 );
setMoveKey( spep_4 + 8, 1, 199.2, 426.3 , 0 );
setMoveKey( spep_4 + 10, 1, 197.8, 424.8 , 0 );
setMoveKey( spep_4 + 12, 1, 196.8, 423.7 , 0 );
setMoveKey( spep_4 + 14, 1, 196.2, 422.1 , 0 );
setMoveKey( spep_4 + 16, 1, 194.8, 420.6 , 0 );
setMoveKey( spep_4 + 18, 1, 193.9, 419.5 , 0 );
setMoveKey( spep_4 + 20, 1, 193.4, 417.7 , 0 );
setMoveKey( spep_4 + 22, 1, 191.8, 416.3 , 0 );
setMoveKey( spep_4 + 24, 1, 190.8, 415.3 , 0 );
setMoveKey( spep_4 + 26, 1, 190.4, 413.5 , 0 );
setMoveKey( spep_4 + 28, 1, 188.8, 412 , 0 );
setMoveKey( spep_4 + 30, 1, 187.9, 411 , 0 );
setMoveKey( spep_4 + 32, 1, 187.6, 409.2 , 0 );
setMoveKey( spep_4 + 34, 1, 185.9, 407.7 , 0 );
setMoveKey( spep_4 + 36, 1, 185, 406.9 , 0 );
setMoveKey( spep_4 + 38, 1, 184.7, 404.9 , 0 );
setMoveKey( spep_4 + 40, 1, 182.8, 403.4 , 0 );
setMoveKey( spep_4 + 42, 1, 181.9, 402.6 , 0 );
setMoveKey( spep_4 + 44, 1, 181.8, 400.7 , 0 );
setMoveKey( spep_4 + 46, 1, 179.7, 399.2 , 0 );
setMoveKey( spep_4 + 48, 1, 178.9, 398.4 , 0 );
setMoveKey( spep_4 + 50, 1, 178.8, 396.4 , 0 );
setMoveKey( spep_4 + 52, 1, 176.8, 394.9 , 0 );
setMoveKey( spep_4 + 54, 1, 168.7, 383.9 , 0 );
setMoveKey( spep_4 + 56, 1, 161.8, 371.2 , 0 );
setMoveKey( spep_4 + 58, 1, 152, 359.3 , 0 );
setMoveKey( spep_4 + 60, 1, 144.1, 348.5 , 0 );
setMoveKey( spep_4 + 62, 1, 118.9, 308 , 0 );
setMoveKey( spep_4 + 64, 1, 88.7, 268.3 , 0 );
setMoveKey( spep_4 + 66, 1, 61.9, 231.2 , 0 );
setMoveKey( spep_4 + 68, 1, 65.1, 229 , 0 );
setMoveKey( spep_4 + 70, 1, 61, 228.5 , 0 );
setMoveKey( spep_4 + 72, 1, 61.3, 230.7 , 0 );
setMoveKey( spep_4 + 74, 1, 64.4, 228.2 , 0 );
setMoveKey( spep_4 + 76, 1, 60.1, 227.7 , 0 );
setMoveKey( spep_4 + 78, 1, 60.7, 230 , 0 );
setMoveKey( spep_4 + 80, 1, 63.7, 227.4 , 0 );
setMoveKey( spep_4 + 82, 1, 59.5, 227 , 0 );
setMoveKey( spep_4 + 84, 1, 59.9, 229.2 , 0 );
setMoveKey( spep_4 + 86, 1, 63.1, 226.7 , 0 );
setMoveKey( spep_4 + 88, 1, 58.8, 226.3 , 0 );
setMoveKey( spep_4 + 90, 1, 59.3, 228.5 , 0 );
setMoveKey( spep_4 + 92, 1, 62.4, 225.9 , 0 );
setMoveKey( spep_4 + 94, 1, 58, 225.5 , 0 );
setMoveKey( spep_4 + 96, 1, 58.5, 227.7 , 0 );
setMoveKey( spep_4 + 98, 1, 61.7, 225.1 , 0 );
setMoveKey( spep_4 + 100, 1, 57.3, 224.8 , 0 );
setMoveKey( spep_4 + 102, 1, 57.7, 227.1 , 0 );
setMoveKey( spep_4 + 104, 1, 61, 224.4 , 0 );
setMoveKey( spep_4 + 106, 1, 56.5, 224 , 0 );
setMoveKey( spep_4 + 108, 1, 57, 226.4 , 0 );
setMoveKey( spep_4 + 110, 1, 60.4, 223.7 , 0 );
setMoveKey( spep_4 + 112, 1, 55.8, 223.2 , 0 );
setMoveKey( spep_4 + 114, 1, 56.3, 225.6 , 0 );
setMoveKey( spep_4 + 116, 1, 59.7, 222.8 , 0 );
setMoveKey( spep_4 + 118, 1, 55.1, 222.4 , 0 );

setScaleKey( spep_4 + 0, 1, 0.06, 0.06 );
setScaleKey( spep_4 + 2, 1, 0.07, 0.07 );
setScaleKey( spep_4 + 4, 1, 0.08, 0.08 );
setScaleKey( spep_4 + 6, 1, 0.1, 0.1 );
setScaleKey( spep_4 + 8, 1, 0.11, 0.11 );
setScaleKey( spep_4 + 10, 1, 0.12, 0.12 );
setScaleKey( spep_4 + 12, 1, 0.13, 0.13 );
setScaleKey( spep_4 + 14, 1, 0.14, 0.14 );
setScaleKey( spep_4 + 16, 1, 0.15, 0.15 );
setScaleKey( spep_4 + 18, 1, 0.17, 0.17 );
setScaleKey( spep_4 + 20, 1, 0.18, 0.18 );
setScaleKey( spep_4 + 22, 1, 0.19, 0.19 );
setScaleKey( spep_4 + 24, 1, 0.2, 0.2 );
setScaleKey( spep_4 + 26, 1, 0.21, 0.21 );
setScaleKey( spep_4 + 28, 1, 0.23, 0.23 );
setScaleKey( spep_4 + 30, 1, 0.24, 0.24 );
setScaleKey( spep_4 + 32, 1, 0.25, 0.25 );
setScaleKey( spep_4 + 34, 1, 0.26, 0.26 );
setScaleKey( spep_4 + 36, 1, 0.27, 0.27 );
setScaleKey( spep_4 + 38, 1, 0.28, 0.28 );
setScaleKey( spep_4 + 40, 1, 0.3, 0.3 );
setScaleKey( spep_4 + 42, 1, 0.31, 0.31 );
setScaleKey( spep_4 + 44, 1, 0.32, 0.32 );
setScaleKey( spep_4 + 46, 1, 0.33, 0.33 );
setScaleKey( spep_4 + 48, 1, 0.34, 0.34 );
setScaleKey( spep_4 + 50, 1, 0.35, 0.35 );
setScaleKey( spep_4 + 52, 1, 0.37, 0.37 );
setScaleKey( spep_4 + 54, 1, 0.43, 0.43 );
setScaleKey( spep_4 + 56, 1, 0.49, 0.49 );
setScaleKey( spep_4 + 58, 1, 0.55, 0.55 );
setScaleKey( spep_4 + 60, 1, 0.61, 0.61 );
setScaleKey( spep_4 + 62, 1, 0.82, 0.82 );
setScaleKey( spep_4 + 64, 1, 1.03, 1.03 );
setScaleKey( spep_4 + 66, 1, 1.24, 1.24 );
setScaleKey( spep_4 + 70, 1, 1.24, 1.24 );
setScaleKey( spep_4 + 72, 1, 1.25, 1.25 );
setScaleKey( spep_4 + 74, 1, 1.26, 1.26 );
setScaleKey( spep_4 + 76, 1, 1.26, 1.26 );
setScaleKey( spep_4 + 78, 1, 1.27, 1.27 );
setScaleKey( spep_4 + 80, 1, 1.28, 1.28 );
setScaleKey( spep_4 + 82, 1, 1.28, 1.28 );
setScaleKey( spep_4 + 84, 1, 1.29, 1.29 );
setScaleKey( spep_4 + 86, 1, 1.3, 1.3 );
setScaleKey( spep_4 + 88, 1, 1.3, 1.3 );
setScaleKey( spep_4 + 90, 1, 1.31, 1.31 );
setScaleKey( spep_4 + 92, 1, 1.32, 1.32 );
setScaleKey( spep_4 + 94, 1, 1.32, 1.32 );
setScaleKey( spep_4 + 96, 1, 1.33, 1.33 );
setScaleKey( spep_4 + 98, 1, 1.34, 1.34 );
setScaleKey( spep_4 + 100, 1, 1.34, 1.34 );
setScaleKey( spep_4 + 102, 1, 1.35, 1.35 );
setScaleKey( spep_4 + 104, 1, 1.35, 1.35 );
setScaleKey( spep_4 + 106, 1, 1.36, 1.36 );
setScaleKey( spep_4 + 108, 1, 1.37, 1.37 );
setScaleKey( spep_4 + 110, 1, 1.37, 1.37 );
setScaleKey( spep_4 + 112, 1, 1.38, 1.38 );
setScaleKey( spep_4 + 114, 1, 1.39, 1.39 );
setScaleKey( spep_4 + 116, 1, 1.39, 1.39 );
setScaleKey( spep_4 + 118, 1, 1.4, 1.4 );

setRotateKey( spep_4 + 0, 1, -21.2 );
setRotateKey( spep_4 + 2, 1, -20.9 );
setRotateKey( spep_4 + 4, 1, -20.7 );
setRotateKey( spep_4 + 6, 1, -20.5 );
setRotateKey( spep_4 + 8, 1, -20.3 );
setRotateKey( spep_4 + 10, 1, -20.1 );
setRotateKey( spep_4 + 12, 1, -19.9 );
setRotateKey( spep_4 + 14, 1, -19.7 );
setRotateKey( spep_4 + 16, 1, -19.5 );
setRotateKey( spep_4 + 18, 1, -19.3 );
setRotateKey( spep_4 + 20, 1, -19.1 );
setRotateKey( spep_4 + 22, 1, -18.9 );
setRotateKey( spep_4 + 24, 1, -18.7 );
setRotateKey( spep_4 + 26, 1, -18.5 );
setRotateKey( spep_4 + 28, 1, -18.3 );
setRotateKey( spep_4 + 30, 1, -18.1 );
setRotateKey( spep_4 + 32, 1, -17.9 );
setRotateKey( spep_4 + 34, 1, -17.7 );
setRotateKey( spep_4 + 36, 1, -17.5 );
setRotateKey( spep_4 + 38, 1, -17.3 );
setRotateKey( spep_4 + 40, 1, -17.1 );
setRotateKey( spep_4 + 42, 1, -16.9 );
setRotateKey( spep_4 + 44, 1, -16.7 );
setRotateKey( spep_4 + 46, 1, -16.5 );
setRotateKey( spep_4 + 48, 1, -16.3 );
setRotateKey( spep_4 + 50, 1, -16.1 );
setRotateKey( spep_4 + 52, 1, -15.9 );
setRotateKey( spep_4 + 54, 1, -15.7 );
setRotateKey( spep_4 + 56, 1, -15.5 );
setRotateKey( spep_4 + 58, 1, -15.3 );
setRotateKey( spep_4 + 60, 1, -15.1 );
setRotateKey( spep_4 + 62, 1, -14.7 );
setRotateKey( spep_4 + 64, 1, -14.2 );
setRotateKey( spep_4 + 66, 1, -13.8 );
setRotateKey( spep_4 + 118, 1, -13.8 );


--流線
ryuusen3 = entryEffectLife( spep_4 + 28,  924, 38, 0x80, -1, 0, 0, 0 );--奥行き

setEffMoveKey( spep_4 + 28, ryuusen3, -400, -120, 0 );
setEffMoveKey( spep_4 + 66, ryuusen3, -400, -120 , 0 );

setEffScaleKey( spep_4 + 28, ryuusen3, 1.6, 1.6 );
setEffScaleKey( spep_4 + 66, ryuusen3, 1.6, 1.6 );

setEffRotateKey( spep_4 + 28, ryuusen3, -40 );
setEffRotateKey( spep_4 + 66, ryuusen3, -40 );

setEffAlphaKey( spep_4 + 28, ryuusen3, 255 );
setEffAlphaKey( spep_4 + 66, ryuusen3, 255 );

--集中線
syutyuse3 = entryEffectLife( spep_4 + 68,  906, 50, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_4 + 68, syutyuse3, 0, 0 , 0 );
setEffMoveKey( spep_4 + 118, syutyuse3, 0, 0 , 0 );

setEffScaleKey( spep_4 + 68, syutyuse3, 1.26, 1.26 );
setEffScaleKey( spep_4 + 118, syutyuse3, 1.26, 1.26 );

setEffRotateKey( spep_4 + 68, syutyuse3, 180 );
setEffRotateKey( spep_4 + 118, syutyuse3, 180 );

setEffAlphaKey( spep_4 + 68, syutyuse3, 255 );
setEffAlphaKey( spep_4 + 118, syutyuse3, 255 );


-- ** エフェクト等 ** --
entryFade(spep_4+112, 6, 4, 4,0,0,0,255);     -- black fade

--黒背景
entryFadeBg(spep_4, 0, 120, 0, 0, 0, 0, 180);  -- 黒　背景

--SE
playSe( spep_4, 1018); --移動音
playSe( spep_4+68, 1026); --カットイン

--次の準備
spep_5=spep_4+120;

--------------------------------------
--振り返る
--------------------------------------
--エフェクトの再生
smile=entryEffectLife(spep_5,SP_05,148,0x100,-1,0,0,0);

setEffMoveKey(spep_5,smile,0,0,0);
setEffMoveKey(spep_5+148,smile,0,0,0);
setEffScaleKey(spep_5,smile,1.0,1.0);
setEffScaleKey(spep_5+148,smile,1.0,1.0);
setEffAlphaKey(spep_5,smile,255);
setEffAlphaKey(spep_5+148,smile,255);
setEffRotateKey(spep_5,smile,0);
setEffRotateKey(spep_5+148,smile,0);

--集中線
syutyuse4 = entryEffectLife( spep_5 + 104, 906, 44, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_5 + 104, syutyuse4, 0, 0 , 0 );
setEffMoveKey( spep_5 + 148, syutyuse4, 0, 0 , 0 );

setEffScaleKey( spep_5 + 104, syutyuse4, 1, 1 );
setEffScaleKey( spep_5 + 148, syutyuse4, 1, 1 );

setEffRotateKey( spep_5 + 104, syutyuse4, 0 );
setEffRotateKey( spep_5 + 148, syutyuse4, 0 );

setEffAlphaKey( spep_5 + 104, syutyuse4, 255 );
setEffAlphaKey( spep_5 + 148, syutyuse4, 255 );


-- ** エフェクト等 ** --
entryFade(spep_5+140, 6, 4, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--黒背景
entryFadeBg(spep_5, 0, 146, 0, 0, 0, 0, 180);  -- 黒　背景

--SE
playSe( spep_5+32, 1003); --振り返る
playSe( spep_5+104, 45); --笑う

--次の準備
spep_6=spep_5+148;

--------------------------------------
--抱きついて爆発
--------------------------------------
--エフェクトの再生(前)
hug_front=entryEffectLife(spep_6,SP_06,90,0x100,-1,0,0,0);

setEffMoveKey(spep_6,hug_front,0,0,0);
setEffMoveKey(spep_6+90,hug_front,0,0,0);
setEffScaleKey(spep_6,hug_front,1.0,1.0);
setEffScaleKey(spep_6+90,hug_front,1.0,1.0);
setEffAlphaKey(spep_6,hug_front,255);
setEffAlphaKey(spep_6+90,hug_front,255);
setEffRotateKey(spep_6,hug_front,0);
setEffRotateKey(spep_6+90,hug_front,0)

--エフェクトの再生(後)
hug_back=entryEffectLife(spep_6,SP_07,90,0x80,-1,0,0,0);

setEffMoveKey(spep_6,hug_back,0,0,0);
setEffMoveKey(spep_6+90,hug_back,0,0,0);
setEffScaleKey(spep_6,hug_back,1.0,1.0);
setEffScaleKey(spep_6+90,hug_back,1.0,1.0);
setEffAlphaKey(spep_6,hug_back,255);
setEffAlphaKey(spep_6+90,hug_back,255);
setEffRotateKey(spep_6,hug_back,0);
setEffRotateKey(spep_6+90,hug_back,0)

--敵の動き
setDisp( spep_6 + 0, 1, 1 );
changeAnime( spep_6 + 0, 1, 100 );
changeAnime( spep_6 + 48, 1, 106 );

setMoveKey( spep_6 + 0, 1, 4.8, -3.3 , 0 );
setMoveKey( spep_6 + 2, 1, 4.7, -3.1 , 0 );
setMoveKey( spep_6 + 4, 1, 4.8, -3.4 , 0 );
setMoveKey( spep_6 + 6, 1, 4.8, -3.2 , 0 );
setMoveKey( spep_6 + 8, 1, 5, -3.4 , 0 );
setMoveKey( spep_6 + 10, 1, 5, -3.2 , 0 );
setMoveKey( spep_6 + 12, 1, 5.1, -3.5 , 0 );
setMoveKey( spep_6 + 14, 1, 5.1, -3.3 , 0 );
setMoveKey( spep_6 + 16, 1, 5.9, -2.5 , 0 );
setMoveKey( spep_6 + 18, 1, 6.7, -1.7 , 0 );
setMoveKey( spep_6 + 20, 1, 7.4, -0.9 , 0 );
setMoveKey( spep_6 + 22, 1, 8.3, -0.1 , 0 );
setMoveKey( spep_6 + 24, 1, 9.1, 0.7 , 0 );
setMoveKey( spep_6 + 26, 1, 1.1, -7.3 , 0 );
setMoveKey( spep_6 + 28, 1, 1.1, 0.7 , 0 );
setMoveKey( spep_6 + 30, 1, 9.1, -7.3 , 0 );
setMoveKey( spep_6 + 32, 1, 6.4, -4.6 , 0 );
setMoveKey( spep_6 + 34, 1, 2.1, -0.3 , 0 );
setMoveKey( spep_6 + 36, 1, 1.6, 0.1 , 0 );
setMoveKey( spep_6 + 38, 1, 5.7, -3.9 , 0 );
setMoveKey( spep_6 + 40, 1, 9, -7.2 , 0 );
setMoveKey( spep_6 + 42, 1, 7, -5.3 , 0 );
setMoveKey( spep_6 + 44, 1, 2.6, -0.9 , 0 );
setMoveKey( spep_6 + 47, 1, 1.3, 0.4 , 0 );
setMoveKey( spep_6 + 48, 1, -16, 40.8 , 0 );
setMoveKey( spep_6 + 50, 1, -16.1, 37.1 , 0 );
setMoveKey( spep_6 + 52, 1, -13.4, 38.1 , 0 );
setMoveKey( spep_6 + 54, 1, -21.6, 42.6 , 0 );
setMoveKey( spep_6 + 56, 1, -19.9, 44.6 , 0 );
setMoveKey( spep_6 + 58, 1, -23.7, 39.5 , 0 );
setMoveKey( spep_6 + 60, 1, -19.9, 37.2 , 0 );
setMoveKey( spep_6 + 62, 1, -23.7, 43.2 , 0 );
setMoveKey( spep_6 + 64, 1, -19.9, 43.4 , 0 );
setMoveKey( spep_6 + 66, 1, -23.7, 37.6 , 0 );
setMoveKey( spep_6 + 68, 1, -19.9, 39 , 0 );
setMoveKey( spep_6 + 70, 1, -23.7, 44.5 , 0 );
setMoveKey( spep_6 + 72, 1, -19.9, 41.3 , 0 );
setMoveKey( spep_6 + 74, 1, -23.7, 36.8 , 0 );
setMoveKey( spep_6 + 76, 1, -19.9, 44.7 , 0 );
setMoveKey( spep_6 + 78, 1, -15.7, 36.8 , 0 );
setMoveKey( spep_6 + 80, 1, -11.9, 36.7 , 0 );
setMoveKey( spep_6 + 82, 1, -15.7, 36.8 , 0 );
setMoveKey( spep_6 + 84, 1, -11.9, 36.7 , 0 );
setMoveKey( spep_6 + 86, 1, -15.7, 36.8 , 0 );
setMoveKey( spep_6 + 88, 1, -11.9, 36.7 , 0 );

setScaleKey( spep_6 + 0, 1, 4.2, 4.2 );
setScaleKey( spep_6 + 2, 1, 3.79, 3.79 );
setScaleKey( spep_6 + 4, 1, 3.4, 3.4 );
setScaleKey( spep_6 + 6, 1, 3, 3 );
setScaleKey( spep_6 + 8, 1, 2.6, 2.6 );
setScaleKey( spep_6 + 10, 1, 2.2, 2.2 );
setScaleKey( spep_6 + 12, 1, 1.81, 1.81 );
setScaleKey( spep_6 + 14, 1, 1.4, 1.4 );
setScaleKey( spep_6 + 88, 1, 1.4, 1.4 );

setRotateKey( spep_6 + 0, 1, 0 );
setRotateKey( spep_6 + 47, 1, 0 );
setRotateKey( spep_6 + 48, 1, -50 );
setRotateKey( spep_6 + 88, 1, -50 );

--集中線
syutyuse5 = entryEffectLife( spep_6 + 18,  906, 70, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_6 + 18, syutyuse5, 0, 0 , 0 );
setEffMoveKey( spep_6 + 88, syutyuse5, 0, 0 , 0 );

setEffScaleKey( spep_6 + 18, syutyuse5, 1.27, 1.27 );
setEffScaleKey( spep_6 + 88, syutyuse5, 1.27, 1.27 );

setEffRotateKey( spep_6 + 18, syutyuse5, 0 );
setEffRotateKey( spep_6 + 88, syutyuse5, 0 );

setEffAlphaKey( spep_6 + 18, syutyuse5, 0 );
setEffAlphaKey( spep_6 + 19, syutyuse5, 255 );
setEffAlphaKey( spep_6 + 20, syutyuse5, 255 );
setEffAlphaKey( spep_6 + 88, syutyuse5, 255 );

--文字エントリー
ctbikkuri2 = entryEffectLife( spep_6 + 18,  10000, 36, 0x100, -1, 0, 16.4, 260.2 );--!!

setEffMoveKey( spep_6 + 18, ctbikkuri2, 16.4, 260.2 , 0 );
setEffMoveKey( spep_6 + 24, ctbikkuri2, 18.7, 271.2 , 0 );
setEffMoveKey( spep_6 + 26, ctbikkuri2, 16.4, 286.8 , 0 );
setEffMoveKey( spep_6 + 28, ctbikkuri2, 20.2, 296.4 , 0 );
setEffMoveKey( spep_6 + 30, ctbikkuri2, 16.4, 300.2 , 0 );
setEffMoveKey( spep_6 + 32, ctbikkuri2, 20.2, 296.4 , 0 );
setEffMoveKey( spep_6 + 34, ctbikkuri2, 16.4, 300.2 , 0 );
setEffMoveKey( spep_6 + 36, ctbikkuri2, 20.2, 296.4 , 0 );
setEffMoveKey( spep_6 + 38, ctbikkuri2, 16.4, 300.2 , 0 );
setEffMoveKey( spep_6 + 40, ctbikkuri2, 20.2, 296.4 , 0 );
setEffMoveKey( spep_6 + 42, ctbikkuri2, 16.4, 300.2 , 0 );
setEffMoveKey( spep_6 + 44, ctbikkuri2, 20.2, 296.4 , 0 );
setEffMoveKey( spep_6 + 46, ctbikkuri2, 16.4, 300.2 , 0 );
setEffMoveKey( spep_6 + 48, ctbikkuri2, 20.2, 296.4 , 0 );
setEffMoveKey( spep_6 + 50, ctbikkuri2, 16.4, 300.2 , 0 );
setEffMoveKey( spep_6 + 52, ctbikkuri2, 20.2, 296.4 , 0 );
setEffMoveKey( spep_6 + 54, ctbikkuri2, 16.4, 300.2 , 0 );
--setEffMoveKey( spep_6 + 56, ctbikkuri2, 20.2, 296.4 , 0 );

setEffScaleKey( spep_6 + 18, ctbikkuri2, 1.23, 1.23 );
setEffScaleKey( spep_6 + 24, ctbikkuri2, 1.88, 1.88 );
setEffScaleKey( spep_6 + 26, ctbikkuri2, 2.52, 2.52 );
setEffScaleKey( spep_6 + 28, ctbikkuri2, 3.17, 3.17 );
setEffScaleKey( spep_6 + 54, ctbikkuri2, 3.17, 3.17 );

setEffRotateKey( spep_6 + 18, ctbikkuri2, 0 );
setEffRotateKey( spep_6 + 54, ctbikkuri2, 0 );

setEffAlphaKey( spep_6 + 18, ctbikkuri2, 0 );
setEffAlphaKey( spep_6 + 19, ctbikkuri2, 255 );
setEffAlphaKey( spep_6 + 20, ctbikkuri2, 255 );
setEffAlphaKey( spep_6 + 54, ctbikkuri2, 255 );

--SE
playSe( spep_6+18, 1007); --掴む音
SE1=playSe( spep_6+50, 1042); --き演算を貯める
--stopSe(spep_6+90,SE1,0);


-- ** エフェクト等 ** --
entryFade(spep_6+82, 6, 4, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--黒背景
entryFadeBg(spep_6, 0, 90, 0, 0, 0, 0, 180);  -- 黒　背景

--次の準備
spep_7=spep_6+90;

------------------------------------------------------
-- ギャン(60F)
------------------------------------------------------
setDisp( spep_7-1, 1, 0);

gyan = entryEffect(  spep_7,  190003,  0x100,  -1,  0,  0,  0);  --ギャン
setEffScaleKey(  spep_7,  gyan,  1.0,  1.0);
setEffAlphaKey(  spep_7,  gyan,  255);

--[[
-- 書き文字エントリー --
ct_06 = entryEffectLife( spep_7, 10006, 58, 0x100, -1, 0, 0, 300);    -- ギャン

setEffScaleKey( spep_7, ct_06, 2.0, 2.0);
setEffAlphaKey( spep_7, ct_06, 255);
setEffScaleKey( spep_7+10, ct_06, 3.8, 3.8);
setEffScaleKey( spep_7+58, ct_06, 4.5, 4.5);
setEffAlphaKey( spep_7+58, ct_06, 255);
setEffShake( spep_7, ct_06, 58, 10);
]]--

playSe(  spep_7, SE_09);

entryFade(  spep_7+47,  6,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryFadeBg(spep_7,0,60,0,0,0,0,255);
entryFade( spep_7+50, 4,  6, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_8 = spep_7+60;

------------------------------------------------------
--大きく爆発
------------------------------------------------------
--エフェクトの再生
explosion=entryEffect(spep_8,SP_08,0x100,-1,0,0,0);

setEffMoveKey(spep_8,explosion,0,0,0);
setEffMoveKey(spep_8+140,explosion,0,0,0);
setEffScaleKey(spep_8,explosion,1.0,1.0);
setEffScaleKey(spep_8+140,explosion,1.0,1.0);
setEffAlphaKey(spep_8,explosion,255);
setEffAlphaKey(spep_8+140,explosion,255);
setEffRotateKey(spep_8,explosion,0);
setEffRotateKey(spep_8+140,explosion,0)


--集中線
syutyuuse6 = entryEffectLife( spep_8 + 0,  906, 130, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_8 + 0, syutyuuse6, 0, 0 , 0 );
setEffMoveKey( spep_8 + 138, syutyuuse6, 0, 0 , 0 );

setEffScaleKey( spep_8 + 0, syutyuuse6, 1.32, 1.59 );
setEffScaleKey( spep_8 + 138, syutyuuse6, 1.32, 1.59 );

setEffRotateKey( spep_8 + 0, syutyuuse6, 180 );
setEffRotateKey( spep_8 + 138, syutyuuse6, 180 );


setEffAlphaKey( spep_8 + 0, syutyuuse6, 0 );
setEffAlphaKey( spep_8 + 6, syutyuuse6, 0 );
setEffAlphaKey( spep_8 + 7, syutyuuse6, 0 );
setEffAlphaKey( spep_8 + 8, syutyuuse6, 255 );
setEffAlphaKey( spep_8 + 138, syutyuuse6, 255 );


--文字エントリー
ctdokon = entryEffectLife( spep_8, 10018, 38, 0x100, -1, 0, 65.2, 393.7 );

setEffMoveKey( spep_8 + 2, ctdokon, 65.2, 393.7 , 0 );
setEffMoveKey( spep_8 + 4, ctdokon, 63.9, 392.8 , 0 );
setEffMoveKey( spep_8 + 6, ctdokon, 64, 392.7 , 0 );
setEffMoveKey( spep_8 + 8, ctdokon, 66.5, 394.2 , 0 );
setEffMoveKey( spep_8 + 10, ctdokon, 64, 392.8 , 0 );
setEffMoveKey( spep_8 + 12, ctdokon, 66.1, 394 , 0 );
setEffMoveKey( spep_8 + 14, ctdokon, 64, 392.8 , 0 );
setEffMoveKey( spep_8 + 16, ctdokon, 66, 393.9 , 0 );
setEffMoveKey( spep_8 + 18, ctdokon, 64, 392.8 , 0 );
setEffMoveKey( spep_8 + 20, ctdokon, 66, 393.8 , 0 );
setEffMoveKey( spep_8 + 22, ctdokon, 64, 392.7 , 0 );
setEffMoveKey( spep_8 + 24, ctdokon, 65.9, 393.8 , 0 );
setEffMoveKey( spep_8 + 36, ctdokon, 64, 392.7 , 0 );
setEffMoveKey( spep_8 + 38, ctdokon, 64, 392.7 , 0 );
setEffMoveKey( spep_8 + 30, ctdokon, 65.9, 393.7 , 0 );
setEffMoveKey( spep_8 + 32, ctdokon, 64, 392.7 , 0 );
setEffMoveKey( spep_8 + 34, ctdokon, 65.8, 393.7 , 0 );
setEffMoveKey( spep_8 + 36, ctdokon, 64, 392.7 , 0 );
setEffMoveKey( spep_8 + 38, ctdokon, 65.8, 393.7 , 0 );

--[[
setEffScaleKey( spep_8 + 0, ctdokon, 1.78, 1.78 );
setEffScaleKey( spep_8 + 2, ctdokon, 2.72, 2.72 );
setEffScaleKey( spep_8 + 4, ctdokon, 3.67, 3.67 );
setEffScaleKey( spep_8 + 6, ctdokon, 3.39, 3.39 );
setEffScaleKey( spep_8 + 8, ctdokon, 3.11, 3.11 );
setEffScaleKey( spep_8 + 10, ctdokon, 2.83, 2.83 );
setEffScaleKey( spep_8 + 12, ctdokon, 2.79, 2.79 );
setEffScaleKey( spep_8 + 14, ctdokon, 2.75, 2.75 );
setEffScaleKey( spep_8 + 16, ctdokon, 2.71, 2.71 );
setEffScaleKey( spep_8 + 18, ctdokon, 2.67, 2.67 );
setEffScaleKey( spep_8 + 20, ctdokon, 2.63, 2.63 );
setEffScaleKey( spep_8 + 22, ctdokon, 2.59, 2.59 );
setEffScaleKey( spep_8 + 24, ctdokon, 2.55, 2.55 );
setEffScaleKey( spep_8 + 26, ctdokon, 2.51, 2.51 );
setEffScaleKey( spep_8 + 28, ctdokon, 2.5, 2.5 );
setEffScaleKey( spep_8 + 30, ctdokon, 2.49, 2.49 );
setEffScaleKey( spep_8 + 32, ctdokon, 2.48, 2.48 );
setEffScaleKey( spep_8 + 34, ctdokon, 2.47, 2.47 );
setEffScaleKey( spep_8 + 36, ctdokon, 2.46, 2.46 );
setEffScaleKey( spep_8 + 38, ctdokon, 2.45, 2.45 );
]]
setEffScaleKey( spep_8 + 0, ctdokon, 1.78, 1.78 );
setEffScaleKey( spep_8 + 38, ctdokon, 3.95, 3.95 );

setEffRotateKey( spep_8 + 0, ctdokon, -6.8 );
setEffRotateKey( spep_8 + 38, ctdokon, -6.8 );
setEffRotateKey( spep_8 + 40, ctdokon, -6.7 );
setEffRotateKey( spep_8 + 34, ctdokon, -6.7 );
setEffRotateKey( spep_8 + 36, ctdokon, -6.6 );
setEffRotateKey( spep_8 + 38, ctdokon, -6.6 );


setEffAlphaKey( spep_8 + 0, ctdokon, 255 );
setEffAlphaKey( spep_8 + 24, ctdokon, 255 );
setEffAlphaKey( spep_8 + 26, ctdokon, 213 );
setEffAlphaKey( spep_8 + 28, ctdokon, 170 );
setEffAlphaKey( spep_8 + 30, ctdokon, 128 );
setEffAlphaKey( spep_8 + 32, ctdokon, 85 );
setEffAlphaKey( spep_8 + 36, ctdokon, 42 );
setEffAlphaKey( spep_8 + 38, ctdokon, 0 );



--黒背景
entryFadeBg(spep_8, 0, 130, 0, 0, 0, 0, 180);  -- 黒　背景

--SE
playSe( spep_8, 1024); --移動音

-- ダメージ表示
dealDamage(spep_8+40);

entryFade( spep_8+120, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_8+130);


else 

------------------------------------------------------
-- 敵
------------------------------------------------------
--------------------------------------
--溜め
--------------------------------------
spep_0=0;

--エフェクトの再生
tame=entryEffectLife(spep_0,SP_01x,140,0x100,-1,0,0,0);

setEffMoveKey(spep_0,tame,0,0,0);
setEffMoveKey(spep_0+140,tame,0,0,0);
setEffScaleKey(spep_0,tame,-1.0,1.0);
setEffScaleKey(spep_0+140,tame,-1.0,1.0);
setEffAlphaKey(spep_0,tame,255);
setEffAlphaKey(spep_0+140,tame,255);
setEffRotateKey(spep_0,tame,0);
setEffRotateKey(spep_0+140,tame,0);

--集中線
syutyuse = entryEffectLife( spep_0 + 0,  906, 32, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_0 + 0, syutyuse, 0, 0 , 0 );
setEffMoveKey( spep_0 + 32, syutyuse, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, syutyuse, 1, 1 );
setEffScaleKey( spep_0 + 32, syutyuse, 1, 1 );

setEffRotateKey( spep_0 + 0, syutyuse, 0 );
setEffRotateKey( spep_0 + 32, syutyuse, 0 );

setEffAlphaKey( spep_0 + 0, syutyuse, 255 );
setEffAlphaKey( spep_0 + 32, syutyuse, 255 );

-- ** エフェクト等 ** --
entryFade(spep_0, 0, 2, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_0+132, 6, 4, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--黒背景
entryFadeBg(spep_0, 0, 140, 0, 0, 0, 0, 180);  -- 黒　背景

--SE
playSe( spep_0+26, 31); --口から何か出す
playSe( spep_0+56, 31); --口から何か出す
playSe( spep_0+88, 31); --口から何か出す

--次の準備
spep_1=spep_0+140;

--------------------------------------
--やったるぜ！
--------------------------------------

--エフェクトの再生
pause=entryEffectLife(spep_1,SP_02x,100,0x100,-1,0,50,0);

setEffMoveKey(spep_1,pause,0,50,0);
setEffMoveKey(spep_1+100,pause,0,50,0);
setEffScaleKey(spep_1,pause,-1.0,1.0);
setEffScaleKey(spep_1+100,pause,-1.0,1.0);
setEffAlphaKey(spep_1,pause,255);
setEffAlphaKey(spep_1+100,pause,255);
setEffRotateKey(spep_1,pause,0);
setEffRotateKey(spep_1+100,pause,0);

--集中線
syutyuse2 = entryEffectLife( spep_1 + 0,  906, 98, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_1 + 0, syutyuse2, 0, 0 , 0 );
setEffMoveKey( spep_1 + 98, syutyuse2, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, syutyuse2, 1, 1 );
setEffScaleKey( spep_1 + 98, syutyuse2, 1, 1 );

setEffRotateKey( spep_1 + 0, syutyuse2, 0 );
setEffRotateKey( spep_1 + 98, syutyuse2, 0 );

setEffAlphaKey( spep_1 + 0, syutyuse2, 255 );
setEffAlphaKey( spep_1 + 98, syutyuse2, 255 );

--顔カットイン
--speff=entryEffect(spep_1+14,1504,0x100,-1,0,0,0);  --カットイン(顔)
--setEffReplaceTexture(speff,3,2);  --カットイン差し替え
--speff1=entryEffect(spep_1+14,1505,0x100,-1,0,0,0);  --カットイン(セリフ)
--setEffReplaceTexture(speff1,4,5);  --セリフカットイン差し替え

--文字エントリー
ctgogo=entryEffectLife(spep_1+26,190006,70,0x100,-1,-10,520);--ゴゴゴ
setEffMoveKey(spep_1+26,ctgogo,-10,520,0);
setEffMoveKey(spep_1+96,ctgogo,-10,520,0);
setEffScaleKey(spep_1+26, ctgogo, -0.7, 0.7);
setEffScaleKey(spep_1+96, ctgogo, -0.7, 0.7);

setEffAlphaKey( spep_1 + 26, ctgogo, 0 );
setEffAlphaKey( spep_1 + 27, ctgogo, 255 );
setEffAlphaKey( spep_1 + 28, ctgogo, 255 );
setEffAlphaKey( spep_1 + 96, ctgogo, 255 );

-- ** エフェクト等 ** --
entryFade(spep_1+92, 6, 4, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--黒背景
entryFadeBg(spep_1, 0, 100, 0, 0, 0, 0, 180);  -- 黒　背景

--SE
playSe( spep_1+26, SE_04); --ゴゴゴ


--次の準備
spep_2=spep_1+100;


--------------------------------------
--カードカットイン(90F)
--------------------------------------

playSe(spep_2,SE_05);
shuchusen9=entryEffectLife(spep_2,906,90,0x100,-1,0,0,0);   -- 集中線
setEffScaleKey(spep_2,shuchusen9,1.6,1.6);

speff2=entryEffect(spep_2,1507,0x80,-1,0,0,0);   -- カード
setEffReplaceTexture(speff2,1,1);
setEffReplaceTexture(speff2,2,0);-- カード差し替え
setEffReplaceTexture(speff2,5,4);-- 技名テクスチャ差し替え

-- ** エフェクト等 ** --
entryFade(spep_2+85,3,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_3=spep_2+90;

--------------------------------------
--フェイント
--------------------------------------
--エフェクトの再生
feint=entryEffectLife(spep_3,SP_03x,100,0x100,-1,0,0,0);

setEffMoveKey(spep_3,feint,0,0,0);
setEffMoveKey(spep_3+100,feint,0,0,0);
setEffScaleKey(spep_3,feint,1.0,1.0);
setEffScaleKey(spep_3+100,feint,1.0,1.0);
setEffAlphaKey(spep_3,feint,255);
setEffAlphaKey(spep_3+100,feint,255);
setEffRotateKey(spep_3,feint,0);
setEffRotateKey(spep_3+100,feint,0);

--黒背景
entryFadeBg(spep_3, 0, 100, 0, 0, 0, 0, 180);  -- 黒　背景

--流線
ryuusen = entryEffectLife( spep_3 + 0,  923, 56, 0x80, -1, 0, 0, 0 );--斜め

setEffMoveKey( spep_3 + 0, ryuusen, 0, 0 , 0 );
setEffMoveKey( spep_3 + 56, ryuusen, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, ryuusen, 1.36, 1.29 );
setEffScaleKey( spep_3 + 56, ryuusen, 1.36, 1.29 );
--------------------------------------------------------------------------
setEffRotateKey( spep_3 + 0, ryuusen, 37.5 );
setEffRotateKey( spep_3 + 56, ryuusen, 37.5 );
--------------------------------------------------------------------------
setEffAlphaKey( spep_3 + 0, ryuusen, 255 );
setEffAlphaKey( spep_3 + 56, ryuusen, 255 );

--流線
ryuusen2 = entryEffectLife( spep_3 + 60,  920, 10, 0x80, -1, 0, 0, 0 );--横

setEffMoveKey( spep_3 + 60, ryuusen2, 0, 0 , 0 );
setEffMoveKey( spep_3 + 70, ryuusen2, 0, 0 , 0 );

setEffScaleKey( spep_3 + 60, ryuusen2, 2.0, 1.7 );
setEffScaleKey( spep_3 + 70, ryuusen2, 2.0, 1.7 );

setEffRotateKey( spep_3 + 60, ryuusen2, -172.3 );
setEffRotateKey( spep_3 + 70, ryuusen2, -172.3 );

setEffAlphaKey( spep_3 + 60, ryuusen2, 255 );
setEffAlphaKey( spep_3 + 70, ryuusen2, 255 );


--SE
playSe( spep_3, 8); --移動音

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 100, 1, 0 );
changeAnime( spep_3 + 0, 1, 101 );

setMoveKey( spep_3 + 0, 1, 282.6, 332 , 0 );
setMoveKey( spep_3 + 2, 1, 270.3, 314.6 , 0 );
setMoveKey( spep_3 + 4, 1, 258, 297.2 , 0 );
setMoveKey( spep_3 + 6, 1, 245.8, 279.8 , 0 );
setMoveKey( spep_3 + 8, 1, 233.5, 262.4 , 0 );
setMoveKey( spep_3 + 10, 1, 221.2, 244.9 , 0 );
setMoveKey( spep_3 + 12, 1, 208.9, 227.5 , 0 );
setMoveKey( spep_3 + 14, 1, 196.7, 210.1 , 0 );
setMoveKey( spep_3 + 16, 1, 193.7, 206.3 , 0 );
setMoveKey( spep_3 + 18, 1, 190.7, 202.4 , 0 );
setMoveKey( spep_3 + 20, 1, 187.8, 198.6 , 0 );
setMoveKey( spep_3 + 22, 1, 184.8, 194.8 , 0 );
setMoveKey( spep_3 + 24, 1, 181.9, 191 , 0 );
setMoveKey( spep_3 + 26, 1, 178.9, 187.1 , 0 );
setMoveKey( spep_3 + 28, 1, 176, 183.3 , 0 );
setMoveKey( spep_3 + 30, 1, 173, 179.5 , 0 );
setMoveKey( spep_3 + 32, 1, 170, 175.7 , 0 );
setMoveKey( spep_3 + 34, 1, 167.1, 171.8 , 0 );
setMoveKey( spep_3 + 36, 1, 164.1, 168 , 0 );
setMoveKey( spep_3 + 38, 1, 161.2, 164.2 , 0 );
setMoveKey( spep_3 + 40, 1, 158.2, 160.4 , 0 );


setScaleKey( spep_3 + 0, 1, 0.26, 0.26 );
setScaleKey( spep_3 + 2, 1, 0.29, 0.29 );
setScaleKey( spep_3 + 4, 1, 0.33, 0.33 );
setScaleKey( spep_3 + 6, 1, 0.36, 0.36 );
setScaleKey( spep_3 + 8, 1, 0.4, 0.4 );
setScaleKey( spep_3 + 10, 1, 0.43, 0.43 );
setScaleKey( spep_3 + 12, 1, 0.47, 0.47 );
setScaleKey( spep_3 + 14, 1, 0.5, 0.5 );
setScaleKey( spep_3 + 16, 1, 0.52, 0.52 );
setScaleKey( spep_3 + 18, 1, 0.53, 0.53 );
setScaleKey( spep_3 + 20, 1, 0.55, 0.55 );
setScaleKey( spep_3 + 22, 1, 0.56, 0.56 );
setScaleKey( spep_3 + 24, 1, 0.58, 0.58 );
setScaleKey( spep_3 + 26, 1, 0.59, 0.59 );
setScaleKey( spep_3 + 28, 1, 0.61, 0.61 );
setScaleKey( spep_3 + 30, 1, 0.62, 0.62 );
setScaleKey( spep_3 + 32, 1, 0.64, 0.64 );
setScaleKey( spep_3 + 34, 1, 0.65, 0.65 );
setScaleKey( spep_3 + 36, 1, 0.67, 0.67 );
setScaleKey( spep_3 + 38, 1, 0.68, 0.68 );
setScaleKey( spep_3 + 40, 1, 0.7, 0.7 );


setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 + 40, 1, 0 );


--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

SP_dodge = spep_3+40 ; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

pauseAll( SP_dodge, 67);

--キャラクターの固定
setMoveKey(SP_dodge, 1, 158.2, 160.4, 0 );
setScaleKey(SP_dodge , 1, 0.7, 0.7  );
setRotateKey(SP_dodge,   1, 0);

--キャラクターの固定
setMoveKey(SP_dodge+8, 1, 158.2, 160.4, 0 );
setScaleKey(SP_dodge+8 , 1, 0.7, 0.7  );
setRotateKey(SP_dodge+8,   1, 0);



setDisp(SP_dodge+9, 0, 0);
--setDisp(SP_dodge+9, 1, 0);
--setMoveKey(SP_dodge+9, 1, 0 , 0, 0);
setScaleKey(SP_dodge+9,  1 , 0.7, 0.7 );
setRotateKey(SP_dodge+9,   1, 0);

--setMoveKey(SP_dodge+10, 1, 0 , 0, 0);
setScaleKey(SP_dodge+10,  1 , 0.7, 0.7);
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
setMoveKey( spep_3 + 42, 1, 155.3, 156.5 , 0 );
setMoveKey( spep_3 + 44, 1, 152.3, 152.7 , 0 );
setMoveKey( spep_3 + 46, 1, 149.3, 148.9 , 0 );
setMoveKey( spep_3 + 48, 1, 146.4, 145.1 , 0 );
setMoveKey( spep_3 + 50, 1, 143.4, 141.2 , 0 );
setMoveKey( spep_3 + 52, 1, 140.5, 137.4 , 0 );
setMoveKey( spep_3 + 54, 1, 137.5, 133.6 , 0 );
setMoveKey( spep_3 + 56, 1, 134.6, 129.8 , 0 );
setMoveKey( spep_3 + 58, 1, 131.6, 125.9 , 0 );
setMoveKey( spep_3 + 60, 1, 128.7, 122.1 , 0 );
setMoveKey( spep_3 + 62, 1, 121.5, 112.8 , 0 );
setMoveKey( spep_3 + 64, 1, 114.4, 103.5 , 0 );
setMoveKey( spep_3 + 66, 1, 107.3, 94.1 , 0 );
setMoveKey( spep_3 + 68, 1, 100.2, 84.8 , 0 );
setMoveKey( spep_3 + 70, 1, 93.1, 75.5 , 0 );
setMoveKey( spep_3 + 72, 1, 86, 66.2 , 0 );
setMoveKey( spep_3 + 74, 1, 78.9, 56.8 , 0 );
setMoveKey( spep_3 + 76, 1, 71.8, 47.5 , 0 );
setMoveKey( spep_3 + 78, 1, 64.7, 38.2 , 0 );
setMoveKey( spep_3 + 100, 1, 64.7, 38.2 , 0 );

setScaleKey( spep_3 + 42, 1, 0.71, 0.71 );
setScaleKey( spep_3 + 44, 1, 0.73, 0.73 );
setScaleKey( spep_3 + 46, 1, 0.74, 0.74 );
setScaleKey( spep_3 + 48, 1, 0.76, 0.76 );
setScaleKey( spep_3 + 50, 1, 0.77, 0.77 );
setScaleKey( spep_3 + 52, 1, 0.79, 0.79 );
setScaleKey( spep_3 + 54, 1, 0.8, 0.8 );
setScaleKey( spep_3 + 56, 1, 0.82, 0.82 );
setScaleKey( spep_3 + 58, 1, 0.84, 0.84 );
setScaleKey( spep_3 + 60, 1, 0.85, 0.85 );
setScaleKey( spep_3 + 62, 1, 0.88, 0.88 );
setScaleKey( spep_3 + 64, 1, 0.91, 0.91 );
setScaleKey( spep_3 + 66, 1, 0.94, 0.94 );
setScaleKey( spep_3 + 68, 1, 0.98, 0.98 );
setScaleKey( spep_3 + 70, 1, 1.01, 1.01 );
setScaleKey( spep_3 + 72, 1, 1.04, 1.04 );
setScaleKey( spep_3 + 74, 1, 1.07, 1.07 );
setScaleKey( spep_3 + 76, 1, 1.1, 1.1 );
setScaleKey( spep_3 + 78, 1, 1.13, 1.13 );
setScaleKey( spep_3 + 100, 1, 1.13, 1.13 );

setRotateKey( spep_3 + 100, 1, 0 );

--文字エントリー
ctbikkuri = entryEffectLife( spep_3 + 70,  10001, 28, 0x100, -1, 0, 52.5, 178 );--!?
setEffMoveKey( spep_3 + 70, ctbikkuri, 52.5, 178 , 0 );
setEffMoveKey( spep_3 + 72, ctbikkuri, 38.5, 198 , 0 );
setEffMoveKey( spep_3 + 74, ctbikkuri, 12.9, 209.9 , 0 );
setEffMoveKey( spep_3 + 76, ctbikkuri, -20.3, 208.8 , 0 );
setEffMoveKey( spep_3 + 78, ctbikkuri, 1.1, 225.7 , 0 );
setEffMoveKey( spep_3 + 80, ctbikkuri, 26.2, 235.2 , 0 );
setEffMoveKey( spep_3 + 82, ctbikkuri, 52.5, 236.9 , 0 );
setEffMoveKey( spep_3 + 84, ctbikkuri, 77.7, 230.8 , 0 );
setEffMoveKey( spep_3 + 86, ctbikkuri, 67.8, 233.5 , 0 );
setEffMoveKey( spep_3 + 98, ctbikkuri, 57.5, 235.1 , 0 );

setEffScaleKey( spep_3 + 70, ctbikkuri, 0.81, 0.81 );
setEffScaleKey( spep_3 + 72, ctbikkuri, 1.41, 1.41 );
setEffScaleKey( spep_3 + 74, ctbikkuri, 2, 2 );
setEffScaleKey( spep_3 + 76, ctbikkuri, 2.6, 2.6 );
setEffScaleKey( spep_3 + 78, ctbikkuri, 2.56, 2.56 );
setEffScaleKey( spep_3 + 80, ctbikkuri, 2.52, 2.52 );
setEffScaleKey( spep_3 + 82, ctbikkuri, 2.47, 2.47 );
setEffScaleKey( spep_3 + 84, ctbikkuri, 2.43, 2.43 );
setEffScaleKey( spep_3 + 98, ctbikkuri, 2.43, 2.43 );

setEffRotateKey( spep_3 + 70, ctbikkuri, 0 );
setEffRotateKey( spep_3 + 72, ctbikkuri, -18.3 );
setEffRotateKey( spep_3 + 74, ctbikkuri, -36.6 );
setEffRotateKey( spep_3 + 76, ctbikkuri, -54.9 );
setEffRotateKey( spep_3 + 78, ctbikkuri, -37.8 );
setEffRotateKey( spep_3 + 80, ctbikkuri, -20.6 );
setEffRotateKey( spep_3 + 82, ctbikkuri, -3.4 );
setEffRotateKey( spep_3 + 84, ctbikkuri, 13.8 );
setEffRotateKey( spep_3 + 86, ctbikkuri, 6.9 );
setEffRotateKey( spep_3 + 88, ctbikkuri, 0 );
setEffRotateKey( spep_3 + 98, ctbikkuri, 0 );

setEffAlphaKey( spep_3 + 70, ctbikkuri, 255 );
setEffAlphaKey( spep_3 + 98, ctbikkuri, 255 );

-- ** エフェクト等 ** --
entryFade(spep_3+92, 6, 4, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--SE
playSe( spep_3+60, 44); --移動音

--次の準備
spep_4=spep_3+100;


--------------------------------------
--井戸端会議
--------------------------------------
--エフェクトの再生
conference=entryEffectLife(spep_4,SP_04x,120,0x100,-1,0,0,0);

setEffMoveKey(spep_4,conference,0,0,0);
setEffMoveKey(spep_4+120,conference,0,0,0);
setEffScaleKey(spep_4,conference,-1.0,1.0);
setEffScaleKey(spep_4+120,conference,-1.0,1.0);
setEffAlphaKey(spep_4,conference,255);
setEffAlphaKey(spep_4+120,conference,255);
setEffRotateKey(spep_4,conference,0);
setEffRotateKey(spep_4+120,conference,0);

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 118, 1, 0 );
changeAnime( spep_4 + 0, 1, 116 );

setMoveKey( spep_4 + 0, 1, 202.8, 432.1 , 0 );
setMoveKey( spep_4 + 2, 1, 202, 430.6 , 0 );
setMoveKey( spep_4 + 4, 1, 200.8, 429.1 , 0 );
setMoveKey( spep_4 + 6, 1, 199.9, 427.9 , 0 );
setMoveKey( spep_4 + 8, 1, 199.2, 426.3 , 0 );
setMoveKey( spep_4 + 10, 1, 197.8, 424.8 , 0 );
setMoveKey( spep_4 + 12, 1, 196.8, 423.7 , 0 );
setMoveKey( spep_4 + 14, 1, 196.2, 422.1 , 0 );
setMoveKey( spep_4 + 16, 1, 194.8, 420.6 , 0 );
setMoveKey( spep_4 + 18, 1, 193.9, 419.5 , 0 );
setMoveKey( spep_4 + 20, 1, 193.4, 417.7 , 0 );
setMoveKey( spep_4 + 22, 1, 191.8, 416.3 , 0 );
setMoveKey( spep_4 + 24, 1, 190.8, 415.3 , 0 );
setMoveKey( spep_4 + 26, 1, 190.4, 413.5 , 0 );
setMoveKey( spep_4 + 28, 1, 188.8, 412 , 0 );
setMoveKey( spep_4 + 30, 1, 187.9, 411 , 0 );
setMoveKey( spep_4 + 32, 1, 187.6, 409.2 , 0 );
setMoveKey( spep_4 + 34, 1, 185.9, 407.7 , 0 );
setMoveKey( spep_4 + 36, 1, 185, 406.9 , 0 );
setMoveKey( spep_4 + 38, 1, 184.7, 404.9 , 0 );
setMoveKey( spep_4 + 40, 1, 182.8, 403.4 , 0 );
setMoveKey( spep_4 + 42, 1, 181.9, 402.6 , 0 );
setMoveKey( spep_4 + 44, 1, 181.8, 400.7 , 0 );
setMoveKey( spep_4 + 46, 1, 179.7, 399.2 , 0 );
setMoveKey( spep_4 + 48, 1, 178.9, 398.4 , 0 );
setMoveKey( spep_4 + 50, 1, 178.8, 396.4 , 0 );
setMoveKey( spep_4 + 52, 1, 176.8, 394.9 , 0 );
setMoveKey( spep_4 + 54, 1, 168.7, 383.9 , 0 );
setMoveKey( spep_4 + 56, 1, 161.8, 371.2 , 0 );
setMoveKey( spep_4 + 58, 1, 152, 359.3 , 0 );
setMoveKey( spep_4 + 60, 1, 144.1, 348.5 , 0 );
setMoveKey( spep_4 + 62, 1, 118.9, 308 , 0 );
setMoveKey( spep_4 + 64, 1, 88.7, 268.3 , 0 );
setMoveKey( spep_4 + 66, 1, 61.9, 231.2 , 0 );
setMoveKey( spep_4 + 68, 1, 65.1, 229 , 0 );
setMoveKey( spep_4 + 70, 1, 61, 228.5 , 0 );
setMoveKey( spep_4 + 72, 1, 61.3, 230.7 , 0 );
setMoveKey( spep_4 + 74, 1, 64.4, 228.2 , 0 );
setMoveKey( spep_4 + 76, 1, 60.1, 227.7 , 0 );
setMoveKey( spep_4 + 78, 1, 60.7, 230 , 0 );
setMoveKey( spep_4 + 80, 1, 63.7, 227.4 , 0 );
setMoveKey( spep_4 + 82, 1, 59.5, 227 , 0 );
setMoveKey( spep_4 + 84, 1, 59.9, 229.2 , 0 );
setMoveKey( spep_4 + 86, 1, 63.1, 226.7 , 0 );
setMoveKey( spep_4 + 88, 1, 58.8, 226.3 , 0 );
setMoveKey( spep_4 + 90, 1, 59.3, 228.5 , 0 );
setMoveKey( spep_4 + 92, 1, 62.4, 225.9 , 0 );
setMoveKey( spep_4 + 94, 1, 58, 225.5 , 0 );
setMoveKey( spep_4 + 96, 1, 58.5, 227.7 , 0 );
setMoveKey( spep_4 + 98, 1, 61.7, 225.1 , 0 );
setMoveKey( spep_4 + 100, 1, 57.3, 224.8 , 0 );
setMoveKey( spep_4 + 102, 1, 57.7, 227.1 , 0 );
setMoveKey( spep_4 + 104, 1, 61, 224.4 , 0 );
setMoveKey( spep_4 + 106, 1, 56.5, 224 , 0 );
setMoveKey( spep_4 + 108, 1, 57, 226.4 , 0 );
setMoveKey( spep_4 + 110, 1, 60.4, 223.7 , 0 );
setMoveKey( spep_4 + 112, 1, 55.8, 223.2 , 0 );
setMoveKey( spep_4 + 114, 1, 56.3, 225.6 , 0 );
setMoveKey( spep_4 + 116, 1, 59.7, 222.8 , 0 );
setMoveKey( spep_4 + 118, 1, 55.1, 222.4 , 0 );

setScaleKey( spep_4 + 0, 1, 0.06, 0.06 );
setScaleKey( spep_4 + 2, 1, 0.07, 0.07 );
setScaleKey( spep_4 + 4, 1, 0.08, 0.08 );
setScaleKey( spep_4 + 6, 1, 0.1, 0.1 );
setScaleKey( spep_4 + 8, 1, 0.11, 0.11 );
setScaleKey( spep_4 + 10, 1, 0.12, 0.12 );
setScaleKey( spep_4 + 12, 1, 0.13, 0.13 );
setScaleKey( spep_4 + 14, 1, 0.14, 0.14 );
setScaleKey( spep_4 + 16, 1, 0.15, 0.15 );
setScaleKey( spep_4 + 18, 1, 0.17, 0.17 );
setScaleKey( spep_4 + 20, 1, 0.18, 0.18 );
setScaleKey( spep_4 + 22, 1, 0.19, 0.19 );
setScaleKey( spep_4 + 24, 1, 0.2, 0.2 );
setScaleKey( spep_4 + 26, 1, 0.21, 0.21 );
setScaleKey( spep_4 + 28, 1, 0.23, 0.23 );
setScaleKey( spep_4 + 30, 1, 0.24, 0.24 );
setScaleKey( spep_4 + 32, 1, 0.25, 0.25 );
setScaleKey( spep_4 + 34, 1, 0.26, 0.26 );
setScaleKey( spep_4 + 36, 1, 0.27, 0.27 );
setScaleKey( spep_4 + 38, 1, 0.28, 0.28 );
setScaleKey( spep_4 + 40, 1, 0.3, 0.3 );
setScaleKey( spep_4 + 42, 1, 0.31, 0.31 );
setScaleKey( spep_4 + 44, 1, 0.32, 0.32 );
setScaleKey( spep_4 + 46, 1, 0.33, 0.33 );
setScaleKey( spep_4 + 48, 1, 0.34, 0.34 );
setScaleKey( spep_4 + 50, 1, 0.35, 0.35 );
setScaleKey( spep_4 + 52, 1, 0.37, 0.37 );
setScaleKey( spep_4 + 54, 1, 0.43, 0.43 );
setScaleKey( spep_4 + 56, 1, 0.49, 0.49 );
setScaleKey( spep_4 + 58, 1, 0.55, 0.55 );
setScaleKey( spep_4 + 60, 1, 0.61, 0.61 );
setScaleKey( spep_4 + 62, 1, 0.82, 0.82 );
setScaleKey( spep_4 + 64, 1, 1.03, 1.03 );
setScaleKey( spep_4 + 66, 1, 1.24, 1.24 );
setScaleKey( spep_4 + 70, 1, 1.24, 1.24 );
setScaleKey( spep_4 + 72, 1, 1.25, 1.25 );
setScaleKey( spep_4 + 74, 1, 1.26, 1.26 );
setScaleKey( spep_4 + 76, 1, 1.26, 1.26 );
setScaleKey( spep_4 + 78, 1, 1.27, 1.27 );
setScaleKey( spep_4 + 80, 1, 1.28, 1.28 );
setScaleKey( spep_4 + 82, 1, 1.28, 1.28 );
setScaleKey( spep_4 + 84, 1, 1.29, 1.29 );
setScaleKey( spep_4 + 86, 1, 1.3, 1.3 );
setScaleKey( spep_4 + 88, 1, 1.3, 1.3 );
setScaleKey( spep_4 + 90, 1, 1.31, 1.31 );
setScaleKey( spep_4 + 92, 1, 1.32, 1.32 );
setScaleKey( spep_4 + 94, 1, 1.32, 1.32 );
setScaleKey( spep_4 + 96, 1, 1.33, 1.33 );
setScaleKey( spep_4 + 98, 1, 1.34, 1.34 );
setScaleKey( spep_4 + 100, 1, 1.34, 1.34 );
setScaleKey( spep_4 + 102, 1, 1.35, 1.35 );
setScaleKey( spep_4 + 104, 1, 1.35, 1.35 );
setScaleKey( spep_4 + 106, 1, 1.36, 1.36 );
setScaleKey( spep_4 + 108, 1, 1.37, 1.37 );
setScaleKey( spep_4 + 110, 1, 1.37, 1.37 );
setScaleKey( spep_4 + 112, 1, 1.38, 1.38 );
setScaleKey( spep_4 + 114, 1, 1.39, 1.39 );
setScaleKey( spep_4 + 116, 1, 1.39, 1.39 );
setScaleKey( spep_4 + 118, 1, 1.4, 1.4 );

setRotateKey( spep_4 + 0, 1, -21.2 );
setRotateKey( spep_4 + 2, 1, -20.9 );
setRotateKey( spep_4 + 4, 1, -20.7 );
setRotateKey( spep_4 + 6, 1, -20.5 );
setRotateKey( spep_4 + 8, 1, -20.3 );
setRotateKey( spep_4 + 10, 1, -10.1 );
setRotateKey( spep_4 + 12, 1, -19.9 );
setRotateKey( spep_4 + 14, 1, -19.7 );
setRotateKey( spep_4 + 16, 1, -19.5 );
setRotateKey( spep_4 + 18, 1, -19.3 );
setRotateKey( spep_4 + 20, 1, -19.1 );
setRotateKey( spep_4 + 22, 1, -18.9 );
setRotateKey( spep_4 + 24, 1, -18.7 );
setRotateKey( spep_4 + 26, 1, -18.5 );
setRotateKey( spep_4 + 28, 1, -18.3 );
setRotateKey( spep_4 + 30, 1, -18.1 );
setRotateKey( spep_4 + 32, 1, -17.9 );
setRotateKey( spep_4 + 34, 1, -17.7 );
setRotateKey( spep_4 + 36, 1, -17.5 );
setRotateKey( spep_4 + 38, 1, -17.3 );
setRotateKey( spep_4 + 40, 1, -17.1 );
setRotateKey( spep_4 + 42, 1, -16.9 );
setRotateKey( spep_4 + 44, 1, -16.7 );
setRotateKey( spep_4 + 46, 1, -16.5 );
setRotateKey( spep_4 + 48, 1, -16.3 );
setRotateKey( spep_4 + 50, 1, -16.1 );
setRotateKey( spep_4 + 52, 1, -15.9 );
setRotateKey( spep_4 + 54, 1, -15.7 );
setRotateKey( spep_4 + 56, 1, -15.5 );
setRotateKey( spep_4 + 58, 1, -15.3 );
setRotateKey( spep_4 + 60, 1, -15.1 );
setRotateKey( spep_4 + 62, 1, -14.7 );
setRotateKey( spep_4 + 64, 1, -14.2 );
setRotateKey( spep_4 + 66, 1, -13.8 );
setRotateKey( spep_4 + 118, 1, -13.8 );


--流線
ryuusen3 = entryEffectLife( spep_4 + 28,  924, 38, 0x80, -1, 0, 0, 0 );--奥行き

setEffMoveKey( spep_4 + 28, ryuusen3, -400, -120, 0 );
setEffMoveKey( spep_4 + 66, ryuusen3, -400, -120 , 0 );

setEffScaleKey( spep_4 + 28, ryuusen3, 1.6, 1.6 );
setEffScaleKey( spep_4 + 66, ryuusen3, 1.6, 1.6 );

setEffRotateKey( spep_4 + 28, ryuusen3, -40 );
setEffRotateKey( spep_4 + 66, ryuusen3, -40 );

setEffAlphaKey( spep_4 + 28, ryuusen3, 255 );
setEffAlphaKey( spep_4 + 66, ryuusen3, 255 );

--集中線
syutyuse3 = entryEffectLife( spep_4 + 68,  906, 50, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_4 + 68, syutyuse3, 0, 0 , 0 );
setEffMoveKey( spep_4 + 118, syutyuse3, 0, 0 , 0 );

setEffScaleKey( spep_4 + 68, syutyuse3, 1.26, 1.26 );
setEffScaleKey( spep_4 + 118, syutyuse3, 1.26, 1.26 );

setEffRotateKey( spep_4 + 68, syutyuse3, 180 );
setEffRotateKey( spep_4 + 118, syutyuse3, 180 );

setEffAlphaKey( spep_4 + 68, syutyuse3, 255 );
setEffAlphaKey( spep_4 + 118, syutyuse3, 255 );


-- ** エフェクト等 ** --
entryFade(spep_4+112, 6, 4, 4,0,0,0,255);     -- black fade

--黒背景
entryFadeBg(spep_4, 0, 120, 0, 0, 0, 0, 180);  -- 黒　背景

--SE
playSe( spep_4, 1018); --移動音
playSe( spep_4+68, 1026); --カットイン

--次の準備
spep_5=spep_4+120;

--------------------------------------
--振り返る
--------------------------------------
--エフェクトの再生
smile=entryEffectLife(spep_5,SP_05x,148,0x100,-1,0,0,0);

setEffMoveKey(spep_5,smile,0,0,0);
setEffMoveKey(spep_5+148,smile,0,0,0);
setEffScaleKey(spep_5,smile,1.0,1.0);
setEffScaleKey(spep_5+148,smile,1.0,1.0);
setEffAlphaKey(spep_5,smile,255);
setEffAlphaKey(spep_5+148,smile,255);
setEffRotateKey(spep_5,smile,0);
setEffRotateKey(spep_5+148,smile,0);

--集中線
syutyuse4 = entryEffectLife( spep_5 + 104, 906, 44, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_5 + 104, syutyuse4, 0, 0 , 0 );
setEffMoveKey( spep_5 + 148, syutyuse4, 0, 0 , 0 );

setEffScaleKey( spep_5 + 104, syutyuse4, -1, 1 );
setEffScaleKey( spep_5 + 148, syutyuse4, -1, 1 );

setEffRotateKey( spep_5 + 104, syutyuse4, 0 );
setEffRotateKey( spep_5 + 148, syutyuse4, 0 );

setEffAlphaKey( spep_5 + 104, syutyuse4, 255 );
setEffAlphaKey( spep_5 + 148, syutyuse4, 255 );


-- ** エフェクト等 ** --
entryFade(spep_5+140, 6, 4, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--黒背景
entryFadeBg(spep_5, 0, 146, 0, 0, 0, 0, 180);  -- 黒　背景

--SE
playSe( spep_5+32, 1003); --振り返る
playSe( spep_5+104, 45); --笑う

--次の準備
spep_6=spep_5+148;

--------------------------------------
--抱きついて爆発
--------------------------------------
--エフェクトの再生(前)
hug_front=entryEffectLife(spep_6,SP_06x,90,0x100,-1,0,0,0);

setEffMoveKey(spep_6,hug_front,0,0,0);
setEffMoveKey(spep_6+90,hug_front,0,0,0);
setEffScaleKey(spep_6,hug_front,1.0,1.0);
setEffScaleKey(spep_6+90,hug_front,1.0,1.0);
setEffAlphaKey(spep_6,hug_front,255);
setEffAlphaKey(spep_6+90,hug_front,255);
setEffRotateKey(spep_6,hug_front,0);
setEffRotateKey(spep_6+90,hug_front,0)

--エフェクトの再生(後)
hug_back=entryEffectLife(spep_6,SP_07x,90,0x80,-1,0,0,0);

setEffMoveKey(spep_6,hug_back,0,0,0);
setEffMoveKey(spep_6+90,hug_back,0,0,0);
setEffScaleKey(spep_6,hug_back,1.0,1.0);
setEffScaleKey(spep_6+90,hug_back,1.0,1.0);
setEffAlphaKey(spep_6,hug_back,255);
setEffAlphaKey(spep_6+90,hug_back,255);
setEffRotateKey(spep_6,hug_back,0);
setEffRotateKey(spep_6+90,hug_back,0)

--敵の動き
setDisp( spep_6 + 0, 1, 1 );
changeAnime( spep_6 + 0, 1, 100 );
changeAnime( spep_6 + 48, 1, 106 );

setMoveKey( spep_6 + 0, 1, 4.8, -3.3 , 0 );
setMoveKey( spep_6 + 2, 1, 4.7, -3.1 , 0 );
setMoveKey( spep_6 + 4, 1, 4.8, -3.4 , 0 );
setMoveKey( spep_6 + 6, 1, 4.8, -3.2 , 0 );
setMoveKey( spep_6 + 8, 1, 5, -3.4 , 0 );
setMoveKey( spep_6 + 10, 1, 5, -3.2 , 0 );
setMoveKey( spep_6 + 12, 1, 5.1, -3.5 , 0 );
setMoveKey( spep_6 + 14, 1, 5.1, -3.3 , 0 );
setMoveKey( spep_6 + 16, 1, 5.9, -2.5 , 0 );
setMoveKey( spep_6 + 18, 1, 6.7, -1.7 , 0 );
setMoveKey( spep_6 + 20, 1, 7.4, -0.9 , 0 );
setMoveKey( spep_6 + 22, 1, 8.3, -0.1 , 0 );
setMoveKey( spep_6 + 24, 1, 9.1, 0.7 , 0 );
setMoveKey( spep_6 + 26, 1, 1.1, -7.3 , 0 );
setMoveKey( spep_6 + 28, 1, 1.1, 0.7 , 0 );
setMoveKey( spep_6 + 30, 1, 9.1, -7.3 , 0 );
setMoveKey( spep_6 + 32, 1, 6.4, -4.6 , 0 );
setMoveKey( spep_6 + 34, 1, 2.1, -0.3 , 0 );
setMoveKey( spep_6 + 36, 1, 1.6, 0.1 , 0 );
setMoveKey( spep_6 + 38, 1, 5.7, -3.9 , 0 );
setMoveKey( spep_6 + 40, 1, 9, -7.2 , 0 );
setMoveKey( spep_6 + 42, 1, 7, -5.3 , 0 );
setMoveKey( spep_6 + 44, 1, 2.6, -0.9 , 0 );
setMoveKey( spep_6 + 47, 1, 1.3, 0.4 , 0 );
setMoveKey( spep_6 + 48, 1, -16, 40.8 , 0 );
setMoveKey( spep_6 + 50, 1, -16.1, 37.1 , 0 );
setMoveKey( spep_6 + 52, 1, -13.4, 38.1 , 0 );
setMoveKey( spep_6 + 54, 1, -21.6, 42.6 , 0 );
setMoveKey( spep_6 + 56, 1, -19.9, 44.6 , 0 );
setMoveKey( spep_6 + 58, 1, -23.7, 39.5 , 0 );
setMoveKey( spep_6 + 60, 1, -19.9, 37.2 , 0 );
setMoveKey( spep_6 + 62, 1, -23.7, 43.2 , 0 );
setMoveKey( spep_6 + 64, 1, -19.9, 43.4 , 0 );
setMoveKey( spep_6 + 66, 1, -23.7, 37.6 , 0 );
setMoveKey( spep_6 + 68, 1, -19.9, 39 , 0 );
setMoveKey( spep_6 + 70, 1, -23.7, 44.5 , 0 );
setMoveKey( spep_6 + 72, 1, -19.9, 41.3 , 0 );
setMoveKey( spep_6 + 74, 1, -23.7, 36.8 , 0 );
setMoveKey( spep_6 + 76, 1, -19.9, 44.7 , 0 );
setMoveKey( spep_6 + 78, 1, -15.7, 36.8 , 0 );
setMoveKey( spep_6 + 80, 1, -11.9, 36.7 , 0 );
setMoveKey( spep_6 + 82, 1, -15.7, 36.8 , 0 );
setMoveKey( spep_6 + 84, 1, -11.9, 36.7 , 0 );
setMoveKey( spep_6 + 86, 1, -15.7, 36.8 , 0 );
setMoveKey( spep_6 + 88, 1, -11.9, 36.7 , 0 );

setScaleKey( spep_6 + 0, 1, 4.2, 4.2 );
setScaleKey( spep_6 + 2, 1, 3.79, 3.79 );
setScaleKey( spep_6 + 4, 1, 3.4, 3.4 );
setScaleKey( spep_6 + 6, 1, 3, 3 );
setScaleKey( spep_6 + 8, 1, 2.6, 2.6 );
setScaleKey( spep_6 + 10, 1, 2.2, 2.2 );
setScaleKey( spep_6 + 12, 1, 1.81, 1.81 );
setScaleKey( spep_6 + 14, 1, 1.4, 1.4 );
setScaleKey( spep_6 + 88, 1, 1.4, 1.4 );

setRotateKey( spep_6 + 0, 1, 0 );
setRotateKey( spep_6 + 47, 1, 0 );
setRotateKey( spep_6 + 48, 1, -50 );
setRotateKey( spep_6 + 88, 1, -50 );

--集中線
syutyuse5 = entryEffectLife( spep_6 + 18,  906, 70, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_6 + 18, syutyuse5, 0, 0 , 0 );
setEffMoveKey( spep_6 + 88, syutyuse5, 0, 0 , 0 );

setEffScaleKey( spep_6 + 18, syutyuse5, 1.27, 1.27 );
setEffScaleKey( spep_6 + 88, syutyuse5, 1.27, 1.27 );

setEffRotateKey( spep_6 + 18, syutyuse5, 0 );
setEffRotateKey( spep_6 + 88, syutyuse5, 0 );

setEffAlphaKey( spep_6 + 18, syutyuse5, 0 );
setEffAlphaKey( spep_6 + 19, syutyuse5, 255 );
setEffAlphaKey( spep_6 + 20, syutyuse5, 255 );
setEffAlphaKey( spep_6 + 88, syutyuse5, 255 );

--文字エントリー
ctbikkuri2 = entryEffectLife( spep_6 + 18,  10000, 36, 0x100, -1, 0, 16.4, 260.2 );--!!

setEffMoveKey( spep_6 + 18, ctbikkuri2, 16.4, 260.2 , 0 );
setEffMoveKey( spep_6 + 24, ctbikkuri2, 18.7, 271.2 , 0 );
setEffMoveKey( spep_6 + 26, ctbikkuri2, 16.4, 286.8 , 0 );
setEffMoveKey( spep_6 + 28, ctbikkuri2, 20.2, 296.4 , 0 );
setEffMoveKey( spep_6 + 30, ctbikkuri2, 16.4, 300.2 , 0 );
setEffMoveKey( spep_6 + 32, ctbikkuri2, 20.2, 296.4 , 0 );
setEffMoveKey( spep_6 + 34, ctbikkuri2, 16.4, 300.2 , 0 );
setEffMoveKey( spep_6 + 36, ctbikkuri2, 20.2, 296.4 , 0 );
setEffMoveKey( spep_6 + 38, ctbikkuri2, 16.4, 300.2 , 0 );
setEffMoveKey( spep_6 + 40, ctbikkuri2, 20.2, 296.4 , 0 );
setEffMoveKey( spep_6 + 42, ctbikkuri2, 16.4, 300.2 , 0 );
setEffMoveKey( spep_6 + 44, ctbikkuri2, 20.2, 296.4 , 0 );
setEffMoveKey( spep_6 + 46, ctbikkuri2, 16.4, 300.2 , 0 );
setEffMoveKey( spep_6 + 48, ctbikkuri2, 20.2, 296.4 , 0 );
setEffMoveKey( spep_6 + 50, ctbikkuri2, 16.4, 300.2 , 0 );
setEffMoveKey( spep_6 + 52, ctbikkuri2, 20.2, 296.4 , 0 );
setEffMoveKey( spep_6 + 54, ctbikkuri2, 16.4, 300.2 , 0 );
--setEffMoveKey( spep_6 + 56, ctbikkuri2, 20.2, 296.4 , 0 );

setEffScaleKey( spep_6 + 18, ctbikkuri2, 1.23, 1.23 );
setEffScaleKey( spep_6 + 24, ctbikkuri2, 1.88, 1.88 );
setEffScaleKey( spep_6 + 26, ctbikkuri2, 2.52, 2.52 );
setEffScaleKey( spep_6 + 28, ctbikkuri2, 3.17, 3.17 );
setEffScaleKey( spep_6 + 54, ctbikkuri2, 3.17, 3.17 );

setEffRotateKey( spep_6 + 18, ctbikkuri2, 0 );
setEffRotateKey( spep_6 + 54, ctbikkuri2, 0 );

setEffAlphaKey( spep_6 + 18, ctbikkuri2, 0 );
setEffAlphaKey( spep_6 + 19, ctbikkuri2, 255 );
setEffAlphaKey( spep_6 + 20, ctbikkuri2, 255 );
setEffAlphaKey( spep_6 + 54, ctbikkuri2, 255 );

--SE
playSe( spep_6+18, 1007); --掴む音
SE1=playSe( spep_6+50, 1042); --き演算を貯める
--stopSe(spep_6+90,SE1,0);


-- ** エフェクト等 ** --
entryFade(spep_6+82, 6, 4, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--黒背景
entryFadeBg(spep_6, 0, 90, 0, 0, 0, 0, 180);  -- 黒　背景

--次の準備
spep_7=spep_6+90;

------------------------------------------------------
-- ギャン(60F)
------------------------------------------------------
setDisp( spep_7-1, 1, 0);

gyan = entryEffect(  spep_7,  190003,  0x100,  -1,  0,  0,  0);  --ギャン
setEffScaleKey(  spep_7,  gyan,  1.0,  1.0);
setEffAlphaKey(  spep_7,  gyan,  255);

--[[
-- 書き文字エントリー --
ct_06 = entryEffectLife( spep_7, 10006, 58, 0x100, -1, 0, 0, 300);    -- ギャン

setEffScaleKey( spep_7, ct_06, 2.0, 2.0);
setEffAlphaKey( spep_7, ct_06, 255);
setEffScaleKey( spep_7+10, ct_06, 3.8, 3.8);
setEffScaleKey( spep_7+58, ct_06, 4.5, 4.5);
setEffAlphaKey( spep_7+58, ct_06, 255);
setEffShake( spep_7, ct_06, 58, 10);
]]--

playSe(  spep_7, SE_09);

entryFade(  spep_7+47,  6,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryFadeBg(spep_7,0,60,0,0,0,0,255);
entryFade( spep_7+50, 4,  6, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_8 = spep_7+60;

------------------------------------------------------
--大きく爆発
------------------------------------------------------
--エフェクトの再生
explosion=entryEffect(spep_8,SP_08x,0x100,-1,0,0,0);

setEffMoveKey(spep_8,explosion,0,0,0);
setEffMoveKey(spep_8+140,explosion,0,0,0);
setEffScaleKey(spep_8,explosion,1.0,1.0);
setEffScaleKey(spep_8+140,explosion,1.0,1.0);
setEffAlphaKey(spep_8,explosion,255);
setEffAlphaKey(spep_8+140,explosion,255);
setEffRotateKey(spep_8,explosion,0);
setEffRotateKey(spep_8+140,explosion,0)

--集中線
syutyuuse6 = entryEffectLife( spep_8 + 0,  906, 130, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_8 + 0, syutyuuse6, 0, 0 , 0 );
setEffMoveKey( spep_8 + 138, syutyuuse6, 0, 0 , 0 );

setEffScaleKey( spep_8 + 0, syutyuuse6, 1.32, 1.59 );
setEffScaleKey( spep_8 + 138, syutyuuse6, 1.32, 1.59 );

setEffRotateKey( spep_8 + 0, syutyuuse6, 180 );
setEffRotateKey( spep_8 + 138, syutyuuse6, 180 );


setEffAlphaKey( spep_8 + 0, syutyuuse6, 0 );
setEffAlphaKey( spep_8 + 6, syutyuuse6, 0 );
setEffAlphaKey( spep_8 + 7, syutyuuse6, 0 );
setEffAlphaKey( spep_8 + 8, syutyuuse6, 255 );
setEffAlphaKey( spep_8 + 138, syutyuuse6, 255 );

--文字エントリー
ctdokon = entryEffectLife( spep_8, 10018, 38, 0x100, -1, 0, 65.2, 393.7 );

setEffMoveKey( spep_8 + 2, ctdokon, 65.2, 393.7 , 0 );
setEffMoveKey( spep_8 + 4, ctdokon, 63.9, 392.8 , 0 );
setEffMoveKey( spep_8 + 6, ctdokon, 64, 392.7 , 0 );
setEffMoveKey( spep_8 + 8, ctdokon, 66.5, 394.2 , 0 );
setEffMoveKey( spep_8 + 10, ctdokon, 64, 392.8 , 0 );
setEffMoveKey( spep_8 + 12, ctdokon, 66.1, 394 , 0 );
setEffMoveKey( spep_8 + 14, ctdokon, 64, 392.8 , 0 );
setEffMoveKey( spep_8 + 16, ctdokon, 66, 393.9 , 0 );
setEffMoveKey( spep_8 + 18, ctdokon, 64, 392.8 , 0 );
setEffMoveKey( spep_8 + 20, ctdokon, 66, 393.8 , 0 );
setEffMoveKey( spep_8 + 22, ctdokon, 64, 392.7 , 0 );
setEffMoveKey( spep_8 + 24, ctdokon, 65.9, 393.8 , 0 );
setEffMoveKey( spep_8 + 36, ctdokon, 64, 392.7 , 0 );
setEffMoveKey( spep_8 + 38, ctdokon, 64, 392.7 , 0 );
setEffMoveKey( spep_8 + 30, ctdokon, 65.9, 393.7 , 0 );
setEffMoveKey( spep_8 + 32, ctdokon, 64, 392.7 , 0 );
setEffMoveKey( spep_8 + 34, ctdokon, 65.8, 393.7 , 0 );
setEffMoveKey( spep_8 + 36, ctdokon, 64, 392.7 , 0 );
setEffMoveKey( spep_8 + 38, ctdokon, 65.8, 393.7 , 0 );

--[[
setEffScaleKey( spep_8 + 0, ctdokon, 1.78, 1.78 );
setEffScaleKey( spep_8 + 2, ctdokon, 2.72, 2.72 );
setEffScaleKey( spep_8 + 4, ctdokon, 3.67, 3.67 );
setEffScaleKey( spep_8 + 6, ctdokon, 3.39, 3.39 );
setEffScaleKey( spep_8 + 8, ctdokon, 3.11, 3.11 );
setEffScaleKey( spep_8 + 10, ctdokon, 2.83, 2.83 );
setEffScaleKey( spep_8 + 12, ctdokon, 2.79, 2.79 );
setEffScaleKey( spep_8 + 14, ctdokon, 2.75, 2.75 );
setEffScaleKey( spep_8 + 16, ctdokon, 2.71, 2.71 );
setEffScaleKey( spep_8 + 18, ctdokon, 2.67, 2.67 );
setEffScaleKey( spep_8 + 20, ctdokon, 2.63, 2.63 );
setEffScaleKey( spep_8 + 22, ctdokon, 2.59, 2.59 );
setEffScaleKey( spep_8 + 24, ctdokon, 2.55, 2.55 );
setEffScaleKey( spep_8 + 26, ctdokon, 2.51, 2.51 );
setEffScaleKey( spep_8 + 28, ctdokon, 2.5, 2.5 );
setEffScaleKey( spep_8 + 30, ctdokon, 2.49, 2.49 );
setEffScaleKey( spep_8 + 32, ctdokon, 2.48, 2.48 );
setEffScaleKey( spep_8 + 34, ctdokon, 2.47, 2.47 );
setEffScaleKey( spep_8 + 36, ctdokon, 2.46, 2.46 );
setEffScaleKey( spep_8 + 38, ctdokon, 2.45, 2.45 );
]]
setEffScaleKey( spep_8 + 0, ctdokon, 1.78, 1.78 );
setEffScaleKey( spep_8 + 38, ctdokon, 3.95, 3.95 );

setEffRotateKey( spep_8 + 0, ctdokon, -6.8 );
setEffRotateKey( spep_8 + 38, ctdokon, -6.8 );
setEffRotateKey( spep_8 + 40, ctdokon, -6.7 );
setEffRotateKey( spep_8 + 34, ctdokon, -6.7 );
setEffRotateKey( spep_8 + 36, ctdokon, -6.6 );
setEffRotateKey( spep_8 + 38, ctdokon, -6.6 );


setEffAlphaKey( spep_8 + 0, ctdokon, 255 );
setEffAlphaKey( spep_8 + 24, ctdokon, 255 );
setEffAlphaKey( spep_8 + 26, ctdokon, 213 );
setEffAlphaKey( spep_8 + 28, ctdokon, 170 );
setEffAlphaKey( spep_8 + 30, ctdokon, 128 );
setEffAlphaKey( spep_8 + 32, ctdokon, 85 );
setEffAlphaKey( spep_8 + 36, ctdokon, 42 );
setEffAlphaKey( spep_8 + 38, ctdokon, 0 );

--黒背景
entryFadeBg(spep_8, 0, 130, 0, 0, 0, 0, 180);  -- 黒　背景

--SE
playSe( spep_8, 1024); --移動音

-- ダメージ表示
dealDamage(spep_8+40);

entryFade( spep_8+120, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_8+130);


end


