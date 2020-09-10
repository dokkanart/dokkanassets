--1014140 ビーデル_ホークチャージ
--sp_effect_b4_00075

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

SP_01=	152387	;--	構えからのオーラ
SP_02=	152389	;--	突進
SP_03=	152391	;--	格闘
SP_04=	152393	;--	ホークチャージ

SP_01x=	152388	;--	構えからのオーラ	(敵)
SP_02x=	152390	;--	突進	(敵)
SP_03x=	152392	;--	格闘	(敵)
SP_04x=	152394	;--	ホークチャージ	(敵)	
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
--ため
------------------------------------------------------
spep_0=0;

--エフェクト
tame=entryEffectLife(spep_0,SP_01,100,0x100,-1,0,0,0);
setEffMoveKey( spep_0 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_0 + 100, tame, 0, 0 , 0 );

setEffScaleKey(spep_0,tame,1.0,1.0);
setEffScaleKey(spep_0+100,tame,1.0,1.0);

setEffRotateKey(spep_0,tame,0);
setEffRotateKey(spep_0+100,tame,0);

setEffAlphaKey(spep_0,tame,255);
setEffAlphaKey(spep_0+100,tame,255);

shuchusen1 = entryEffectLife( spep_0 + 0,  906, 98, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 98, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchusen1, 1.55, 1.55 );
setEffScaleKey( spep_0 + 98, shuchusen1, 1.55, 1.55 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 98, shuchusen1, 255 );

--顔カットイン
speff=entryEffect(spep_0+18,1504,0x100,-1,0,0,0);  --カットイン(顔)
setEffReplaceTexture(speff,3,2);  --カットイン差し替え
speff1=entryEffect(spep_0+18,1505,0x100,-1,0,0,0);  --カットイン(セリフ)
setEffReplaceTexture(speff1,4,5);  --セリフカットイン差し替え

--ゴゴゴ
ctgogo=entryEffectLife(spep_0+30,190006,70,0x100,-1,-190,520);--ゴゴゴ

setEffMoveKey(spep_0+30,ctgogo,-190,520,0);
setEffMoveKey(spep_0+100,ctgogo,-190,520,0);

setEffScaleKey(spep_0+30, ctgogo, 0.7, 0.7);
setEffScaleKey(spep_0+100, ctgogo, 0.7, 0.7);

setEffAlphaKey( spep_0 + 30, ctgogo, 0 );
setEffAlphaKey( spep_0 + 31, ctgogo, 255 );
setEffAlphaKey( spep_0 + 32, ctgogo, 255 );
setEffAlphaKey( spep_0 + 100, ctgogo, 255 );

setEffRotateKey(spep_0+30,ctgogo,0);
setEffRotateKey(spep_0+100,ctgogo,0);

--SE
playSe( spep_0 + 18, SE_04);--ごごご

--黒背景
--entryFadeBg(spep_0, 0, 100, 0, 0, 0, 0, 200);  -- 黒　背

-- ** エフェクト等 ** --
entryFade(spep_0+92, 4, 8, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_1=spep_0+100;

------------------------------------------------------
--とっしん
------------------------------------------------------
--エフェクト
rush=entryEffectLife(spep_1,SP_02,70,0x100,-1,0,0,0);
setEffMoveKey( spep_1 + 0, rush, 0, 0 , 0 );
setEffMoveKey( spep_1 + 70, rush, 0, 0 , 0 );

setEffScaleKey(spep_1,rush,1.0,1.0);
setEffScaleKey(spep_1+70,rush,1.0,1.0);

setEffRotateKey(spep_1,rush,0);
setEffRotateKey(spep_1+70,rush,0);

setEffAlphaKey(spep_1,rush,255);
setEffAlphaKey(spep_1+70,rush,255);

shuchusen2 = entryEffectLife( spep_1 + 0,  906, 68, 0x100, -1, 0, 0,  0);

setEffMoveKey( spep_1 + 0, shuchusen2, 0, 0, 0 );
setEffMoveKey( spep_1 + 68, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen2, 1.4, 1.75 );
setEffScaleKey( spep_1 + 68, shuchusen2, 1.4, 1.75 );

setEffRotateKey( spep_1 + 0, shuchusen2, 0 );
setEffRotateKey( spep_1 + 68, shuchusen2, 0 );

setEffAlphaKey( spep_1 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_1 + 68, shuchusen2, 255 );

--SE
playSe( spep_1 , 44);-- ちかづく

--黒背景
entryFadeBg(spep_1, 1, 70, 0, 0, 0, 0, 200);  -- 黒　背

--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

SP_dodge = spep_1+50 ; --エンドフェイズのフレーム数を置き換える

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

-- ** エフェクト等 ** --
entryFade(spep_1+62, 4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_2=spep_1+70;

------------------------------------------------------
--ぼうこう
------------------------------------------------------
--エフェクト
assault=entryEffectLife(spep_2,SP_03,240,0x100,-1,0,0,0);
setEffMoveKey( spep_2 + 0, assault, 0, 0 , 0 );
setEffMoveKey( spep_2 + 240, assault, 0, 0 , 0 );

setEffScaleKey(spep_2,assault,1.0,1.0);
setEffScaleKey(spep_2+240,assault,1.0,1.0);

setEffRotateKey(spep_2,assault,0);
setEffRotateKey(spep_2+240,assault,0);

setEffAlphaKey(spep_2,assault,255);
setEffAlphaKey(spep_2+240,assault,255);


--敵の動き
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 240, 1, 0 );
changeAnime( spep_2 + 0, 1, 101 );
changeAnime( spep_2 + 18, 1, 108 );
changeAnime( spep_2 + 200, 1, 106 );

setMoveKey( spep_2 + 0, 1, 475.8, -20.2 , 0 );
setMoveKey( spep_2 + 2, 1, 380.9, -20.2 , 0 );
setMoveKey( spep_2 + 4, 1, 296.6, -20.1 , 0 );
setMoveKey( spep_2 + 6, 1, 222.8, -20.1 , 0 );
setMoveKey( spep_2 + 8, 1, 159.4, -20.1 , 0 );
setMoveKey( spep_2 + 10, 1, 106.6, -20.1 , 0 );
setMoveKey( spep_2 + 12, 1, 64.3, -20.1 , 0 );
setMoveKey( spep_2 + 14, 1, 32.4, -20.1 , 0 );
setMoveKey( spep_2 + 17, 1, 11.1, -20.1 , 0 );
setMoveKey( spep_2 + 18, 1, 63.1, 27.8 , 0 );
setMoveKey( spep_2 + 20, 1, 44.2, 17.6 , 0 );
setMoveKey( spep_2 + 22, 1, 40.1, 23.4 , 0 );
setMoveKey( spep_2 + 24, 1, 20.7, 13.2 , 0 );
setMoveKey( spep_2 + 26, 1, 15.9, 19.2 , 0 );
setMoveKey( spep_2 + 28, 1, 10.5, 10.8 , 0 );
setMoveKey( spep_2 + 30, 1, 20.3, 18.5 , 0 );
setMoveKey( spep_2 + 32, 1, 15.9, 6.8 , 0 );
setMoveKey( spep_2 + 34, 1, 24.8, 17.8 , 0 );
setMoveKey( spep_2 + 36, 1, 20, 9.4 , 0 );
setMoveKey( spep_2 + 38, 1, 28.9, 17 , 0 );
setMoveKey( spep_2 + 40, 1, 24.2, 11.7 , 0 );
setMoveKey( spep_2 + 42, 1, 32.9, 16.3 , 0 );
setMoveKey( spep_2 + 44, 1, 28.9, 6.7 , 0 );
setMoveKey( spep_2 + 46, 1, 37.5, 13.1 , 0 );
setMoveKey( spep_2 + 48, 1, 34.3, 6.8 , 0 );
setMoveKey( spep_2 + 50, 1, 41.3, 11.3 , 0 );
setMoveKey( spep_2 + 52, 1, 43.4, 10.8 , 0 );
setMoveKey( spep_2 + 54, 1, 45.5, 10.3 , 0 );
setMoveKey( spep_2 + 56, 1, 47.7, 9.8 , 0 );
setMoveKey( spep_2 + 58, 1, 49.8, 9.3 , 0 );
setMoveKey( spep_2 + 60, 1, 51.9, 8.8 , 0 );
setMoveKey( spep_2 + 62, 1, 54, 8.3 , 0 );
setMoveKey( spep_2 + 64, 1, 56.1, 7.8 , 0 );
setMoveKey( spep_2 + 66, 1, 58.3, 7.3 , 0 );
setMoveKey( spep_2 + 68, 1, 60.4, 6.8 , 0 );
setMoveKey( spep_2 + 70, 1, 62.5, 6.3 , 0 );
setMoveKey( spep_2 + 72, 1, 64.6, 5.8 , 0 );
setMoveKey( spep_2 + 74, 1, 66.7, 5.3 , 0 );
setMoveKey( spep_2 + 76, 1, 68.8, 4.8 , 0 );
setMoveKey( spep_2 + 78, 1, 70.9, 4.3 , 0 );
setMoveKey( spep_2 + 80, 1, 73, 3.8 , 0 );
setMoveKey( spep_2 + 82, 1, 75.2, 3.3 , 0 );
setMoveKey( spep_2 + 84, 1, 77.3, 2.7 , 0 );
setMoveKey( spep_2 + 86, 1, 78.8, 2.2 , 0 );
setMoveKey( spep_2 + 88, 1, 80.3, 1.7 , 0 );
setMoveKey( spep_2 + 90, 1, 81.8, 1.2 , 0 );
setMoveKey( spep_2 + 92, 1, 83.3, 0.7 , 0 );
setMoveKey( spep_2 + 94, 1, 84.8, 0.2 , 0 );
setMoveKey( spep_2 + 96, 1, 86.2, -0.3 , 0 );
setMoveKey( spep_2 + 98, 1, 87.7, -0.8 , 0 );
setMoveKey( spep_2 + 100, 1, 89.2, -1.3 , 0 );
setMoveKey( spep_2 + 102, 1, 90.7, -1.8 , 0 );
setMoveKey( spep_2 + 104, 1, 92.2, -2.4 , 0 );
setMoveKey( spep_2 + 106, 1, 93.7, -2.9 , 0 );
--setMoveKey( spep_2 + 108, 1, 95.2, -3.4 , 0 );
setMoveKey( spep_2 + 107, 1, 114.2, 31.2 , 0 );--110
setMoveKey( spep_2 + 108, 1, 114.2, 31.2 , 0 );--110
setMoveKey( spep_2 + 112, 1, 117.8, 36 , 0 );
setMoveKey( spep_2 + 114, 1, 108.7, 25 , 0 );
setMoveKey( spep_2 + 116, 1, 115.1, 30 , 0 );
setMoveKey( spep_2 + 118, 1, 108.8, 15 , 0 );
setMoveKey( spep_2 + 120, 1, 118.4, 26.6 , 0 );
setMoveKey( spep_2 + 122, 1, 116.1, 18.2 , 0 );
setMoveKey( spep_2 + 124, 1, 129.7, 25.8 , 0 );
setMoveKey( spep_2 + 126, 1, 131.3, 21.4 , 0 );
setMoveKey( spep_2 + 128, 1, 140.9, 25 , 0 );
setMoveKey( spep_2 + 130, 1, 145.3, 23.3 , 0 );
setMoveKey( spep_2 + 132, 1, 149.6, 21.6 , 0 );
setMoveKey( spep_2 + 134, 1, 153.8, 19.8 , 0 );
setMoveKey( spep_2 + 136, 1, 158.2, 18.1 , 0 );
--setMoveKey( spep_2 + 138, 1, 162.5, 16.4 , 0 );
setMoveKey( spep_2 + 137, 1, 183.3, 26 , 0 );--140
setMoveKey( spep_2 + 140, 1, 183.3, 26 , 0 );--140
setMoveKey( spep_2 + 142, 1, 186.2, 31.4 , 0 );
setMoveKey( spep_2 + 144, 1, 176.6, 20.8 , 0 );
setMoveKey( spep_2 + 146, 1, 173, 22.3 , 0 );
setMoveKey( spep_2 + 148, 1, 161.5, 15.7 , 0 );
setMoveKey( spep_2 + 150, 1, 169.4, 18.2 , 0 );
setMoveKey( spep_2 + 152, 1, 172.2, 15.2 , 0 );
setMoveKey( spep_2 + 154, 1, 176.7, 15 , 0 );
setMoveKey( spep_2 + 156, 1, 181.3, 14.7 , 0 );
setMoveKey( spep_2 + 158, 1, 185.8, 14.5 , 0 );
setMoveKey( spep_2 + 160, 1, 190.3, 14.2 , 0 );
setMoveKey( spep_2 + 162, 1, 194.9, 14 , 0 );
--setMoveKey( spep_2 + 164, 1, 199.4, 13.7 , 0 );
setMoveKey( spep_2 + 163, 1, 228, 21.5 , 0 );--166
setMoveKey( spep_2 + 164, 1, 228, 21.5 , 0 );--166
setMoveKey( spep_2 + 168, 1, 228.6, 26.9 , 0 );
setMoveKey( spep_2 + 170, 1, 217.6, 12.2 , 0 );
setMoveKey( spep_2 + 172, 1, 220.4, 21.5 , 0 );
setMoveKey( spep_2 + 174, 1, 218.7, 9.1 , 0 );
setMoveKey( spep_2 + 176, 1, 233.1, 19.5 , 0 );
setMoveKey( spep_2 + 178, 1, 258.4, -9.6 , 0 );
setMoveKey( spep_2 + 180, 1, 246.3, 11.3 , 0 );
setMoveKey( spep_2 + 182, 1, 222.2, -8.7 , 0 );
setMoveKey( spep_2 + 184, 1, 238.4, 17.7 , 0 );
setMoveKey( spep_2 + 186, 1, 228.9, 0.8 , 0 );
setMoveKey( spep_2 + 188, 1, 236.5, 6 , 0 );
setMoveKey( spep_2 + 190, 1, 240.4, -4 , 0 );
setMoveKey( spep_2 + 192, 1, 230.1, 7.6 , 0 );
setMoveKey( spep_2 + 194, 1, 246.6, -2.8 , 0 );
setMoveKey( spep_2 + 196, 1, 226.9, 6 , 0 );
setMoveKey( spep_2 + 199, 1, 228.6, 11.5 , 0 );
setMoveKey( spep_2 + 200, 1, 186.8, 54.8 , 0 );
setMoveKey( spep_2 + 202, 1, 184.3, 67.8 , 0 );
setMoveKey( spep_2 + 204, 1, 172.5, 63.8 , 0 );
setMoveKey( spep_2 + 206, 1, 171.9, 75.3 , 0 );
setMoveKey( spep_2 + 208, 1, 173.3, 76.5 , 0 );
setMoveKey( spep_2 + 210, 1, 182.9, 95.9 , 0 );
setMoveKey( spep_2 + 212, 1, 186.7, 95.2 , 0 );
setMoveKey( spep_2 + 214, 1, 191.5, 103.4 , 0 );
setMoveKey( spep_2 + 216, 1, 195.9, 110.9 , 0 );
setMoveKey( spep_2 + 218, 1, 200, 117.9 , 0 );
setMoveKey( spep_2 + 220, 1, 203.7, 124.2 , 0 );
setMoveKey( spep_2 + 222, 1, 207.1, 129.9 , 0 );
setMoveKey( spep_2 + 224, 1, 210.1, 135 , 0 );
setMoveKey( spep_2 + 226, 1, 212.7, 139.6 , 0 );
setMoveKey( spep_2 + 228, 1, 215, 143.5 , 0 );
setMoveKey( spep_2 + 230, 1, 217, 146.8 , 0 );
setMoveKey( spep_2 + 232, 1, 218.6, 149.5 , 0 );
setMoveKey( spep_2 + 234, 1, 219.8, 151.6 , 0 );
setMoveKey( spep_2 + 236, 1, 220.7, 153.1 , 0 );
setMoveKey( spep_2 + 238, 1, 221.2, 154 , 0 );
setMoveKey( spep_2 + 240, 1, 221.4, 154.3 , 0 );

setScaleKey( spep_2 + 0, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 17, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 18, 1, 1.72, 1.72 );
setScaleKey( spep_2 + 20, 1, 1.61, 1.61 );
setScaleKey( spep_2 + 22, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 24, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 26, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 106, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 107, 1, 1.66, 1.66 );--110
setScaleKey( spep_2 + 108, 1, 1.66, 1.66 );--110
setScaleKey( spep_2 + 110, 1, 1.56, 1.56 );--112
setScaleKey( spep_2 + 114, 1, 1.47, 1.47 );
setScaleKey( spep_2 + 116, 1, 1.37, 1.37 );
setScaleKey( spep_2 + 118, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 136, 1, 1.27, 1.27 );--138
setScaleKey( spep_2 + 138, 1, 1.65, 1.65 );--140
setScaleKey( spep_2 + 142, 1, 1.56, 1.56 );
setScaleKey( spep_2 + 144, 1, 1.46, 1.46 );
setScaleKey( spep_2 + 146, 1, 1.37, 1.37 );
setScaleKey( spep_2 + 148, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 162, 1, 1.27, 1.27 );--164
setScaleKey( spep_2 + 163, 1, 1.65, 1.65 );--166
setScaleKey( spep_2 + 164, 1, 1.65, 1.65 );--166
setScaleKey( spep_2 + 168, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 170, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 172, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 176, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 178, 1, 1.65, 1.65 );
setScaleKey( spep_2 + 180, 1, 1.46, 1.46 );
setScaleKey( spep_2 + 182, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 184, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 186, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 188, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 190, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 192, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 194, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 196, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 199, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 200, 1, 1.66, 1.66 );
setScaleKey( spep_2 + 202, 1, 1.53, 1.53 );
setScaleKey( spep_2 + 204, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 206, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 240, 1, 1.27, 1.27 );

setRotateKey( spep_2 + 0, 1, 5 );
setRotateKey( spep_2 + 17, 1, 5 );
setRotateKey( spep_2 + 18, 1, 0.8 );
setRotateKey( spep_2 + 20, 1, 1.1 );
setRotateKey( spep_2 + 22, 1, 1.5 );
setRotateKey( spep_2 + 24, 1, 1.9 );
setRotateKey( spep_2 + 26, 1, 2.3 );
setRotateKey( spep_2 + 28, 1, 2.7 );
setRotateKey( spep_2 + 30, 1, 3.1 );
setRotateKey( spep_2 + 32, 1, 3.4 );
setRotateKey( spep_2 + 34, 1, 3.8 );
setRotateKey( spep_2 + 36, 1, 4.2 );
setRotateKey( spep_2 + 38, 1, 4.6 );
setRotateKey( spep_2 + 40, 1, 5 );
setRotateKey( spep_2 + 42, 1, 5.4 );
setRotateKey( spep_2 + 44, 1, 5.7 );
setRotateKey( spep_2 + 46, 1, 6.1 );
setRotateKey( spep_2 + 48, 1, 6.5 );
setRotateKey( spep_2 + 50, 1, 6.9 );
setRotateKey( spep_2 + 52, 1, 7.3 );
setRotateKey( spep_2 + 54, 1, 7.7 );
setRotateKey( spep_2 + 56, 1, 8 );
setRotateKey( spep_2 + 58, 1, 8.4 );
setRotateKey( spep_2 + 60, 1, 8.8 );
setRotateKey( spep_2 + 62, 1, 9.2 );
setRotateKey( spep_2 + 64, 1, 9.6 );
setRotateKey( spep_2 + 66, 1, 10 );
setRotateKey( spep_2 + 68, 1, 10.3 );
setRotateKey( spep_2 + 70, 1, 10.7 );
setRotateKey( spep_2 + 72, 1, 11.1 );
setRotateKey( spep_2 + 74, 1, 11.5 );
setRotateKey( spep_2 + 76, 1, 11.9 );
setRotateKey( spep_2 + 78, 1, 12.3 );
setRotateKey( spep_2 + 80, 1, 12.6 );
setRotateKey( spep_2 + 82, 1, 13 );
setRotateKey( spep_2 + 84, 1, 13.4 );
setRotateKey( spep_2 + 86, 1, 13.8 );
setRotateKey( spep_2 + 88, 1, 14.2 );
setRotateKey( spep_2 + 90, 1, 14.6 );
setRotateKey( spep_2 + 92, 1, 14.9 );
setRotateKey( spep_2 + 94, 1, 15.3 );
setRotateKey( spep_2 + 96, 1, 15.7 );
setRotateKey( spep_2 + 98, 1, 16.1 );
setRotateKey( spep_2 + 100, 1, 16.5 );
setRotateKey( spep_2 + 102, 1, 16.9 );
setRotateKey( spep_2 + 104, 1, 17.2 );
setRotateKey( spep_2 + 106, 1, 17.6 );
--setRotateKey( spep_2 + 108, 1, 18 );
setRotateKey( spep_2 + 107, 1, -23 );--110
setRotateKey( spep_2 + 108, 1, -23 );--110
setRotateKey( spep_2 + 110, 1, -23 );
setRotateKey( spep_2 + 112, 1, -22.7 );
setRotateKey( spep_2 + 114, 1, -22.4 );
setRotateKey( spep_2 + 116, 1, -22 );
setRotateKey( spep_2 + 118, 1, -21.7 );
setRotateKey( spep_2 + 120, 1, -21.4 );
setRotateKey( spep_2 + 122, 1, -21.1 );
setRotateKey( spep_2 + 124, 1, -20.8 );
setRotateKey( spep_2 + 126, 1, -20.5 );
setRotateKey( spep_2 + 128, 1, -20.1 );
setRotateKey( spep_2 + 130, 1, -19.8 );
setRotateKey( spep_2 + 132, 1, -19.5 );
setRotateKey( spep_2 + 134, 1, -19.2 );
setRotateKey( spep_2 + 136, 1, -18.9 );
--setRotateKey( spep_2 + 138, 1, -18.6 );
setRotateKey( spep_2 + 137, 1, -18.3 );--140
setRotateKey( spep_2 + 138, 1, -18.3 );--140
setRotateKey( spep_2 + 162, 1, -18.3 );--164
setRotateKey( spep_2 + 163, 1, -4 );--166
setRotateKey( spep_2 + 164, 1, -4 );--166
setRotateKey( spep_2 + 176, 1, -4 );
setRotateKey( spep_2 + 178, 1, 1 );
setRotateKey( spep_2 + 180, 1, -1.5 );
setRotateKey( spep_2 + 182, 1, 1 );
setRotateKey( spep_2 + 184, 1, -4 );
setRotateKey( spep_2 + 199, 1, -4 );
setRotateKey( spep_2 + 200, 1, -46.2 );
setRotateKey( spep_2 + 202, 1, -44.6 );
setRotateKey( spep_2 + 204, 1, -43 );
setRotateKey( spep_2 + 206, 1, -41.5 );
setRotateKey( spep_2 + 208, 1, -40 );
setRotateKey( spep_2 + 210, 1, -38.7 );
setRotateKey( spep_2 + 212, 1, -37.5 );
setRotateKey( spep_2 + 214, 1, -36.3 );
setRotateKey( spep_2 + 216, 1, -35.2 );
setRotateKey( spep_2 + 218, 1, -34.2 );
setRotateKey( spep_2 + 220, 1, -33.3 );
setRotateKey( spep_2 + 222, 1, -32.5 );
setRotateKey( spep_2 + 224, 1, -31.8 );
setRotateKey( spep_2 + 226, 1, -31.1 );
setRotateKey( spep_2 + 228, 1, -30.6 );
setRotateKey( spep_2 + 230, 1, -30.1 );
setRotateKey( spep_2 + 232, 1, -29.7 );
setRotateKey( spep_2 + 234, 1, -29.4 );
setRotateKey( spep_2 + 236, 1, -29.2 );
setRotateKey( spep_2 + 238, 1, -29 );
setRotateKey( spep_2 + 240, 1, -29 );

--文字エントリー
ctbaki = entryEffectLife( spep_2 + 18,  10020, 22, 0x100, -1, 0, -32, 253.5 );--バキ
setEffMoveKey( spep_2 + 18, ctbaki, -32, 253.5 , 0 );
setEffMoveKey( spep_2 + 20, ctbaki, -2.1, 270.9 , 0 );
setEffMoveKey( spep_2 + 22, ctbaki, 14.2, 288.1 , 0 );
setEffMoveKey( spep_2 + 24, ctbaki, 9.5, 282.5 , 0 );
setEffMoveKey( spep_2 + 26, ctbaki, -1, 275.5 , 0 );
setEffMoveKey( spep_2 + 28, ctbaki, -11.4, 273.2 , 0 );
setEffMoveKey( spep_2 + 30, ctbaki, 0.8, 268.1 , 0 );
setEffMoveKey( spep_2 + 32, ctbaki, 1.6, 268.6 , 0 );
setEffMoveKey( spep_2 + 34, ctbaki, 2.3, 269.2 , 0 );
setEffMoveKey( spep_2 + 36, ctbaki, 3, 269.7 , 0 );
setEffMoveKey( spep_2 + 38, ctbaki, 3.7, 270.3 , 0 );
setEffMoveKey( spep_2 + 40, ctbaki, 4.4, 270.8 , 0 );

setEffScaleKey( spep_2 + 18, ctbaki, 0.91, 0.91 );
setEffScaleKey( spep_2 + 20, ctbaki, 1.95, 1.95 );
setEffScaleKey( spep_2 + 22, ctbaki, 2.48, 2.48 );
setEffScaleKey( spep_2 + 24, ctbaki, 2.36, 2.36 );
setEffScaleKey( spep_2 + 26, ctbaki, 2.24, 2.24 );
setEffScaleKey( spep_2 + 28, ctbaki, 2.12, 2.12 );
setEffScaleKey( spep_2 + 30, ctbaki, 2.01, 2.01 );
setEffScaleKey( spep_2 + 32, ctbaki, 1.89, 1.89 );
setEffScaleKey( spep_2 + 34, ctbaki, 1.77, 1.77 );
setEffScaleKey( spep_2 + 36, ctbaki, 1.64, 1.64 );
setEffScaleKey( spep_2 + 38, ctbaki, 1.52, 1.52 );
setEffScaleKey( spep_2 + 40, ctbaki, 1.4, 1.4 );

setEffRotateKey( spep_2 + 18, ctbaki, 34.5 );
setEffRotateKey( spep_2 + 20, ctbaki, 21.1 );
setEffRotateKey( spep_2 + 22, ctbaki, 34.5 );
setEffRotateKey( spep_2 + 24, ctbaki, 43.1 );
setEffRotateKey( spep_2 + 26, ctbaki, 34.3 );
setEffRotateKey( spep_2 + 28, ctbaki, 23.6 );
setEffRotateKey( spep_2 + 30, ctbaki, 34.5 );
setEffRotateKey( spep_2 + 34, ctbaki, 34.5 );
setEffRotateKey( spep_2 + 36, ctbaki, 34.4 );
setEffRotateKey( spep_2 + 40, ctbaki, 34.4 );

setEffAlphaKey( spep_2 + 18, ctbaki, 255 );
setEffAlphaKey( spep_2 + 30, ctbaki, 255 );
setEffAlphaKey( spep_2 + 32, ctbaki, 204 );
setEffAlphaKey( spep_2 + 34, ctbaki, 153 );
setEffAlphaKey( spep_2 + 36, ctbaki, 102 );
setEffAlphaKey( spep_2 + 38, ctbaki, 51 );
setEffAlphaKey( spep_2 + 40, ctbaki, 0 );

--文字エントリー
ctdon = entryEffectLife( spep_2 + 106,  10019, 20, 0x100, -1, 0, -112.9, 185.9 );--ドン
setEffMoveKey( spep_2 + 106, ctdon, -112.9, 185.9 , 0 );
setEffMoveKey( spep_2 + 112, ctdon, -125.5, 204.3 , 0 );
setEffMoveKey( spep_2 + 114, ctdon, -117.2, 219.4 , 0 );
setEffMoveKey( spep_2 + 116, ctdon, -126.3, 227.2 , 0 );
setEffMoveKey( spep_2 + 118, ctdon, -114.1, 219.1 , 0 );
setEffMoveKey( spep_2 + 120, ctdon, -126.2, 218.2 , 0 );
setEffMoveKey( spep_2 + 122, ctdon, -119.9, 225.9 , 0 );
setEffMoveKey( spep_2 + 124, ctdon, -119.7, 213.4 , 0 );
setEffMoveKey( spep_2 + 126, ctdon, -119.7, 213.3 , 0 );

setEffScaleKey( spep_2 + 106, ctdon, 1.29, 1.29 );
setEffScaleKey( spep_2 + 112, ctdon, 1.63, 1.63 );
setEffScaleKey( spep_2 + 114, ctdon, 1.98, 1.98 );
setEffScaleKey( spep_2 + 116, ctdon, 2, 2 );
setEffScaleKey( spep_2 + 118, ctdon, 2.02, 2.02 );
setEffScaleKey( spep_2 + 120, ctdon, 2.04, 2.04 );
setEffScaleKey( spep_2 + 122, ctdon, 2.05, 2.05 );
setEffScaleKey( spep_2 + 124, ctdon, 2.06, 2.06 );
setEffScaleKey( spep_2 + 126, ctdon, 2.07, 2.07 );

setEffRotateKey( spep_2 + 106, ctdon, -0.8 );
setEffRotateKey( spep_2 + 112, ctdon, -0.2 );
setEffRotateKey( spep_2 + 114, ctdon, 0.3 );
setEffRotateKey( spep_2 + 126, ctdon, 0.3 );

setEffAlphaKey( spep_2 + 106, ctdon, 0 );
setEffAlphaKey( spep_2 + 107, ctdon, 255 );
setEffAlphaKey( spep_2 + 108, ctdon, 255 );
setEffAlphaKey( spep_2 + 110, ctdon, 255 );
setEffAlphaKey( spep_2 + 120, ctdon, 255 );
setEffAlphaKey( spep_2 + 122, ctdon, 170 );
setEffAlphaKey( spep_2 + 124, ctdon, 85 );
setEffAlphaKey( spep_2 + 126, ctdon, 0 );

--文字エントリー
ctdon2 = entryEffectLife( spep_2 + 136,  10019, 20, 0x100, -1, 0, -112.9, 186.2 );--ドン
setEffMoveKey( spep_2 + 136, ctdon2, -112.9, 186.2 , 0 );
setEffMoveKey( spep_2 + 142, ctdon2, -125.5, 204.5 , 0 );
setEffMoveKey( spep_2 + 144, ctdon2, -117.2, 219.4 , 0 );
setEffMoveKey( spep_2 + 146, ctdon2, -126.3, 227.2 , 0 );
setEffMoveKey( spep_2 + 148, ctdon2, -114.1, 219.1 , 0 );
setEffMoveKey( spep_2 + 150, ctdon2, -126.2, 218.2 , 0 );
setEffMoveKey( spep_2 + 152, ctdon2, -119.9, 225.9 , 0 );
setEffMoveKey( spep_2 + 154, ctdon2, -119.7, 213.4 , 0 );
setEffMoveKey( spep_2 + 156, ctdon2, -119.7, 213.3 , 0 );

setEffScaleKey( spep_2 + 136, ctdon2, 1.29, 1.29 );
setEffScaleKey( spep_2 + 142, ctdon2, 1.64, 1.64 );
setEffScaleKey( spep_2 + 144, ctdon2, 1.98, 1.98 );
setEffScaleKey( spep_2 + 146, ctdon2, 2, 2 );
setEffScaleKey( spep_2 + 148, ctdon2, 2.02, 2.02 );
setEffScaleKey( spep_2 + 150, ctdon2, 2.04, 2.04 );
setEffScaleKey( spep_2 + 152, ctdon2, 2.05, 2.05 );
setEffScaleKey( spep_2 + 154, ctdon2, 2.06, 2.06 );
setEffScaleKey( spep_2 + 156, ctdon2, 2.07, 2.07 );

setEffRotateKey( spep_2 + 136, ctdon2, -0.8 );
setEffRotateKey( spep_2 + 142, ctdon2, -0.2 );
setEffRotateKey( spep_2 + 144, ctdon2, 0.3 );
setEffRotateKey( spep_2 + 156, ctdon2, 0.3 );

setEffAlphaKey( spep_2 + 136, ctdon2, 0 );
setEffAlphaKey( spep_2 + 137, ctdon2, 255 );
setEffAlphaKey( spep_2 + 138, ctdon2, 255 );
setEffAlphaKey( spep_2 + 150, ctdon2, 255 );
setEffAlphaKey( spep_2 + 152, ctdon2, 170 );
setEffAlphaKey( spep_2 + 154, ctdon2, 85 );
setEffAlphaKey( spep_2 + 156, ctdon2, 0 );

--文字エントリー
ctzudododo = entryEffectLife( spep_2 + 162,  10014, 32, 0x100, -1, 0, -84.7, 266.3 );--ズドドドッ

setEffMoveKey( spep_2 + 162, ctzudododo, -84.7, 266.3 , 0 );
setEffMoveKey( spep_2 + 168, ctzudododo, -84.2, 250.7 , 0 );
setEffMoveKey( spep_2 + 170, ctzudododo, -84.3, 266.3 , 0 );
setEffMoveKey( spep_2 + 172, ctzudododo, -83.8, 250.5 , 0 );
setEffMoveKey( spep_2 + 174, ctzudododo, -84, 266.3 , 0 );
setEffMoveKey( spep_2 + 176, ctzudododo, -83.5, 250.2 , 0 );
setEffMoveKey( spep_2 + 178, ctzudododo, -83.7, 266.3 , 0 );
setEffMoveKey( spep_2 + 180, ctzudododo, -83.2, 249.9 , 0 );
setEffMoveKey( spep_2 + 182, ctzudododo, -83.4, 266.2 , 0 );
setEffMoveKey( spep_2 + 184, ctzudododo, -82.8, 249.6 , 0 );
setEffMoveKey( spep_2 + 186, ctzudododo, -83, 266.2 , 0 );
setEffMoveKey( spep_2 + 188, ctzudododo, -82.5, 249.3 , 0 );
setEffMoveKey( spep_2 + 190, ctzudododo, -82.7, 266.2 , 0 );
setEffMoveKey( spep_2 + 192, ctzudododo, -82.1, 249 , 0 );
setEffMoveKey( spep_2 + 194, ctzudododo, -82.4, 266.2 , 0 );

setEffScaleKey( spep_2 + 162, ctzudododo, 2.73, 2.73 );
setEffScaleKey( spep_2 + 168, ctzudododo, 2.76, 2.76 );
setEffScaleKey( spep_2 + 170, ctzudododo, 2.78, 2.78 );
setEffScaleKey( spep_2 + 172, ctzudododo, 2.8, 2.8 );
setEffScaleKey( spep_2 + 174, ctzudododo, 2.83, 2.83 );
setEffScaleKey( spep_2 + 176, ctzudododo, 2.85, 2.85 );
setEffScaleKey( spep_2 + 178, ctzudododo, 2.87, 2.87 );
setEffScaleKey( spep_2 + 180, ctzudododo, 2.9, 2.9 );
setEffScaleKey( spep_2 + 182, ctzudododo, 2.92, 2.92 );
setEffScaleKey( spep_2 + 184, ctzudododo, 2.95, 2.95 );
setEffScaleKey( spep_2 + 186, ctzudododo, 2.97, 2.97 );
setEffScaleKey( spep_2 + 188, ctzudododo, 2.99, 2.99 );
setEffScaleKey( spep_2 + 190, ctzudododo, 3.02, 3.02 );
setEffScaleKey( spep_2 + 192, ctzudododo, 3.04, 3.04 );
setEffScaleKey( spep_2 + 194, ctzudododo, 3.07, 3.07 );

setEffRotateKey( spep_2 + 162, ctzudododo, -0.6 );
setEffRotateKey( spep_2 + 168, ctzudododo, -0.7 );
setEffRotateKey( spep_2 + 186, ctzudododo, -0.7 );
setEffRotateKey( spep_2 + 188, ctzudododo, -0.8 );
setEffRotateKey( spep_2 + 194, ctzudododo, -0.8 );

setEffAlphaKey( spep_2 + 162, ctzudododo, 0 );
setEffAlphaKey( spep_2 + 163, ctzudododo, 255 );
setEffAlphaKey( spep_2 + 164, ctzudododo, 255 );
setEffAlphaKey( spep_2 + 194, ctzudododo, 255 );




--文字エントリー
ctbaki2 = entryEffectLife( spep_2 + 200,  10020, 22, 0x100, -1, 0, -85.2, 301.9 );--バキ
setEffMoveKey( spep_2 + 200, ctbaki2, -85.2, 301.9 , 0 );
setEffMoveKey( spep_2 + 202, ctbaki2, -53.1, 299.7 , 0 );
setEffMoveKey( spep_2 + 204, ctbaki2, -56.1, 277.5 , 0 );
setEffMoveKey( spep_2 + 206, ctbaki2, -58.5, 284.7 , 0 );
setEffMoveKey( spep_2 + 208, ctbaki2, -66.2, 286.4 , 0 );
setEffMoveKey( spep_2 + 210, ctbaki2, -76.4, 280.8 , 0 );
setEffMoveKey( spep_2 + 212, ctbaki2, -80.2, 279.2 , 0 );
setEffMoveKey( spep_2 + 214, ctbaki2, -80.5, 281.9 , 0 );
setEffMoveKey( spep_2 + 216, ctbaki2, -80.8, 284.7 , 0 );
setEffMoveKey( spep_2 + 218, ctbaki2, -81.3, 287.5 , 0 );
setEffMoveKey( spep_2 + 220, ctbaki2, -81.8, 290.3 , 0 );
setEffMoveKey( spep_2 + 222, ctbaki2, -82.4, 293.1 , 0 );

setEffScaleKey( spep_2 + 200, ctbaki2, 0.91, 0.91 );
setEffScaleKey( spep_2 + 202, ctbaki2, 1.95, 1.95 );
setEffScaleKey( spep_2 + 204, ctbaki2, 2.48, 2.48 );
setEffScaleKey( spep_2 + 206, ctbaki2, 2.36, 2.36 );
setEffScaleKey( spep_2 + 208, ctbaki2, 2.24, 2.24 );
setEffScaleKey( spep_2 + 210, ctbaki2, 2.12, 2.12 );
setEffScaleKey( spep_2 + 212, ctbaki2, 2.01, 2.01 );
setEffScaleKey( spep_2 + 214, ctbaki2, 1.91, 1.91 );
setEffScaleKey( spep_2 + 216, ctbaki2, 1.81, 1.81 );
setEffScaleKey( spep_2 + 218, ctbaki2, 1.7, 1.7 );
setEffScaleKey( spep_2 + 220, ctbaki2, 1.6, 1.6 );
setEffScaleKey( spep_2 + 222, ctbaki2, 1.5, 1.5 );

setEffRotateKey( spep_2 + 200, ctbaki2, -19 );
setEffRotateKey( spep_2 + 202, ctbaki2, -19 );
setEffRotateKey( spep_2 + 204, ctbaki2, -13 );
setEffRotateKey( spep_2 + 206, ctbaki2, -24 );
setEffRotateKey( spep_2 + 208, ctbaki2, -16 );
setEffRotateKey( spep_2 + 210, ctbaki2, -24 );
setEffRotateKey( spep_2 + 212, ctbaki2, -19 );
setEffRotateKey( spep_2 + 214, ctbaki2, -21.6 );
setEffRotateKey( spep_2 + 216, ctbaki2, -24.2 );
setEffRotateKey( spep_2 + 218, ctbaki2, -26.8 );
setEffRotateKey( spep_2 + 220, ctbaki2, -29.4 );
setEffRotateKey( spep_2 + 222, ctbaki2, -32 );

setEffAlphaKey( spep_2 + 200, ctbaki2, 255 );
setEffAlphaKey( spep_2 + 212, ctbaki2, 255 );
setEffAlphaKey( spep_2 + 214, ctbaki2, 204 );
setEffAlphaKey( spep_2 + 216, ctbaki2, 153 );
setEffAlphaKey( spep_2 + 218, ctbaki2, 102 );
setEffAlphaKey( spep_2 + 220, ctbaki2, 51 );
setEffAlphaKey( spep_2 + 222, ctbaki2, 0 );

--流線(横)
ryusen = entryEffectLife( spep_2 + 0,  914, 238, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_2 + 0, ryusen, 0, 0 , 0 );
setEffMoveKey( spep_2 + 238, ryusen, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, ryusen, 1, 1 );
setEffScaleKey( spep_2 + 198, ryusen, 1, 1 );
setEffScaleKey( spep_2 + 199, ryusen, 1, 1 );
setEffScaleKey( spep_2 + 200, ryusen, 2.91, 1.08 );
setEffScaleKey( spep_2 + 238, ryusen, 2.91, 1.08 );

setEffRotateKey( spep_2 + 0, ryusen, 0 );
setEffRotateKey( spep_2 + 198, ryusen, 0 );
setEffRotateKey( spep_2 + 199, ryusen, 0 );
setEffRotateKey( spep_2 + 200, ryusen, 90 );
setEffRotateKey( spep_2 + 238, ryusen, 90 );

setEffAlphaKey( spep_2 + 0, ryusen, 255 );
setEffAlphaKey( spep_2 + 238, ryusen, 255 );

--集中線
shuchusen3 = entryEffectLife( spep_2 + 0,  906, 208, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_2 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_2 + 208, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen3, 1.4, 1.75 );
setEffScaleKey( spep_2 + 208, shuchusen3, 1.4, 1.75 );

setEffRotateKey( spep_2 + 0, shuchusen3, 0 );
setEffRotateKey( spep_2 + 208, shuchusen3, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_2 + 208, shuchusen3, 255 );

--黒背景
entryFadeBg(spep_2, 0, 240, 0, 0, 0, 0, 200);  -- 黒　背

-- ** エフェクト等 ** --
entryFade(spep_2+14, 0, 4, 6,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_2+196, 0, 6, 6,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_2+232, 4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--SE
--playSe( spep_2 , 44);-- ちかづく
playSe( spep_2+18 , 1011);-- けり
playSe( spep_2+108 , 1009);-- ぱんち
playSe( spep_2+138 , 1010);-- ぱんち
playSe( spep_2+164 , 1000);-- ぱんち
playSe( spep_2+174 , 1001);-- ぱんち
playSe( spep_2+184 , 1000);-- ぱんち
--playSe( spep_2+194 , 1001);-- ぱんち
playSe( spep_2+202 , 1011);-- けり

--次の準備
spep_3=spep_2+240;

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

------------------------------------------------------
--敵を飛ばす
------------------------------------------------------
--エフェクト
skip=entryEffectLife(spep_4,SP_04,100,0x100,-1,0,0,0);
setEffMoveKey( spep_4 + 0, skip, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, skip, 0, 0 , 0 );

setEffScaleKey(spep_4,skip,1.0,1.0);
setEffScaleKey(spep_4+100,skip,1.0,1.0);

setEffRotateKey(spep_4,skip,0);
setEffRotateKey(spep_4+100,skip,0);

setEffAlphaKey(spep_4,skip,255);
setEffAlphaKey(spep_4+100,skip,255);


--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 76, 1, 0 );

changeAnime( spep_4 + 0, 1, 106 );

setMoveKey( spep_4 + 0, 1, -71.1, 229.9 , 0 );
setMoveKey( spep_4 + 2, 1, -60.9, 215 , 0 );
setMoveKey( spep_4 + 4, 1, -50.7, 200.1 , 0 );
setMoveKey( spep_4 + 6, 1, -40.5, 185.2 , 0 );
setMoveKey( spep_4 + 8, 1, -30.3, 170.3 , 0 );
setMoveKey( spep_4 + 10, 1, -20.1, 155.4 , 0 );
setMoveKey( spep_4 + 12, 1, -9.9, 140.5 , 0 );
setMoveKey( spep_4 + 14, 1, 0.3, 125.6 , 0 );
setMoveKey( spep_4 + 16, 1, 10.5, 110.7 , 0 );
setMoveKey( spep_4 + 18, 1, 20.8, 95.8 , 0 );
setMoveKey( spep_4 + 20, 1, 31, 80.9 , 0 );
setMoveKey( spep_4 + 22, 1, 41.2, 66 , 0 );
setMoveKey( spep_4 + 24, 1, 51.5, 51 , 0 );
setMoveKey( spep_4 + 26, 1, 61.7, 36.1 , 0 );
setMoveKey( spep_4 + 28, 1, 71.9, 21.2 , 0 );
setMoveKey( spep_4 + 30, 1, 94, 27.5 , 0 );
setMoveKey( spep_4 + 32, 1, 99.7, 62.7 , 0 );
setMoveKey( spep_4 + 34, 1, 96.7, 28.7 , 0 );
setMoveKey( spep_4 + 36, 1, 106.3, 33.6 , 0 );
setMoveKey( spep_4 + 38, 1, 109, 32.5 , 0 );
setMoveKey( spep_4 + 40, 1, 71.8, 21.1 , 0 );
setMoveKey( spep_4 + 42, 1, 69.2, 19.9 , 0 );
setMoveKey( spep_4 + 44, 1, 71.6, 18.8 , 0 );
setMoveKey( spep_4 + 46, 1, 76.7, 22.6 , 0 );
setMoveKey( spep_4 + 48, 1, 93.8, 27.4 , 0 );
setMoveKey( spep_4 + 50, 1, 96.5, 26.2 , 0 );
setMoveKey( spep_4 + 52, 1, 99.7, 10 , 0 );
setMoveKey( spep_4 + 54, 1, 96.9, 8.8 , 0 );
setMoveKey( spep_4 + 56, 1, 114.1, 28.4 , 0 );
setMoveKey( spep_4 + 58, 1, 104.5, 24.2 , 0 );
setMoveKey( spep_4 + 60, 1, 75, 16.6 , 0 );
setMoveKey( spep_4 + 62, 1, 180.9, 23.6 , 0 );
setMoveKey( spep_4 + 64, 1, 279.6, 35.8 , 0 );
setMoveKey( spep_4 + 66, 1, 357, 40.6 , 0 );
setMoveKey( spep_4 + 68, 1, 432, 45.1 , 0 );
setMoveKey( spep_4 + 70, 1, 494, 50.9 , 0 );
setMoveKey( spep_4 + 72, 1, 543.3, 53.9 , 0 );
setMoveKey( spep_4 + 74, 1, 584.1, 56.2 , 0 );
setMoveKey( spep_4 + 76, 1, 612.3, 59.3 , 0 );

setScaleKey( spep_4 + 0, 1, 1.53, 1.53 );
setScaleKey( spep_4 + 28, 1, 1.53, 1.53 );
setScaleKey( spep_4 + 30, 1, 1.68, 1.68 );
setScaleKey( spep_4 + 32, 1, 1.84, 1.84 );
setScaleKey( spep_4 + 34, 1, 1.68, 1.68 );
setScaleKey( spep_4 + 38, 1, 1.68, 1.68 );
setScaleKey( spep_4 + 40, 1, 1.53, 1.53 );
setScaleKey( spep_4 + 44, 1, 1.53, 1.53 );
setScaleKey( spep_4 + 46, 1, 1.56, 1.56 );
setScaleKey( spep_4 + 48, 1, 1.68, 1.68 );
setScaleKey( spep_4 + 58, 1, 1.68, 1.68 );
setScaleKey( spep_4 + 60, 1, 1.53, 1.53 );
setScaleKey( spep_4 + 62, 1, 1.4, 1.4 );
setScaleKey( spep_4 + 64, 1, 1.25, 1.25 );
setScaleKey( spep_4 + 66, 1, 1.11, 1.11 );
setScaleKey( spep_4 + 68, 1, 1, 1 );
setScaleKey( spep_4 + 70, 1, 0.91, 0.91 );
setScaleKey( spep_4 + 72, 1, 0.84, 0.84 );
setScaleKey( spep_4 + 74, 1, 0.78, 0.78 );
setScaleKey( spep_4 + 76, 1, 0.74, 0.74 );

setRotateKey( spep_4 + 0, 1, -42 );
setRotateKey( spep_4 + 2, 1, -41.5 );
setRotateKey( spep_4 + 4, 1, -41 );
setRotateKey( spep_4 + 6, 1, -40.5 );
setRotateKey( spep_4 + 8, 1, -40.1 );
setRotateKey( spep_4 + 10, 1, -39.6 );
setRotateKey( spep_4 + 12, 1, -39.1 );
setRotateKey( spep_4 + 14, 1, -38.6 );
setRotateKey( spep_4 + 16, 1, -38.1 );
setRotateKey( spep_4 + 18, 1, -37.6 );
setRotateKey( spep_4 + 20, 1, -37.1 );
setRotateKey( spep_4 + 22, 1, -36.6 );
setRotateKey( spep_4 + 24, 1, -36.2 );
setRotateKey( spep_4 + 26, 1, -35.7 );
setRotateKey( spep_4 + 28, 1, -35.2 );
setRotateKey( spep_4 + 30, 1, -35 );
setRotateKey( spep_4 + 62, 1, -35 );
setRotateKey( spep_4 + 64, 1, -35.1 );
setRotateKey( spep_4 + 68, 1, -35.1 );
setRotateKey( spep_4 + 70, 1, -35.2 );
setRotateKey( spep_4 + 76, 1, -35.2 );

--流線(奥行き)
ryuusen2 = entryEffectLife( spep_4 + 0,  921, 98, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_4 + 0, ryuusen2, 0, 0 , 0 );
setEffMoveKey( spep_4 + 98, ryuusen2, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, ryuusen2, 1.32, 1.05 );
setEffScaleKey( spep_4 + 98, ryuusen2, 1.32, 1.05);

setEffRotateKey( spep_4 + 0, ryuusen2, 0 );
setEffRotateKey( spep_4 + 98, ryuusen2, 0 );

setEffAlphaKey( spep_4 + 0, ryuusen2, 255 );
setEffAlphaKey( spep_4 + 98, ryuusen2, 255 );

--文字エントリー
ctzuo = entryEffectLife( spep_4 + 58,  10012, 20, 0x100, -1, 0, -42.6, 186.8 );--ズオッ

setEffMoveKey( spep_4 + 58, ctzuo, -42.6, 186.8 , 0 );
setEffMoveKey( spep_4 + 60, ctzuo, -54.9, 219 , 0 );
setEffMoveKey( spep_4 + 62, ctzuo, -44.4, 247.6 , 0 );
setEffMoveKey( spep_4 + 64, ctzuo, -63.7, 267.6 , 0 );
setEffMoveKey( spep_4 + 66, ctzuo, -59.1, 269.9 , 0 );
setEffMoveKey( spep_4 + 68, ctzuo, -82, 280.2 , 0 );
setEffMoveKey( spep_4 + 70, ctzuo, -85.3, 284.1 , 0 );
setEffMoveKey( spep_4 + 72, ctzuo, -95.7, 265.9 , 0 );
setEffMoveKey( spep_4 + 74, ctzuo, -110.4, 275.6 , 0 );
setEffMoveKey( spep_4 + 76, ctzuo, -115.6, 261.2 , 0 );
setEffMoveKey( spep_4 + 78, ctzuo, -126.2, 256.6 , 0 );

setEffScaleKey( spep_4 + 58, ctzuo, 1.67, 1.67 );
setEffScaleKey( spep_4 + 60, ctzuo, 2.27, 2.27 );
setEffScaleKey( spep_4 + 62, ctzuo, 2.86, 2.86 );
setEffScaleKey( spep_4 + 64, ctzuo, 2.9, 2.9 );
setEffScaleKey( spep_4 + 66, ctzuo, 2.95, 2.95 );
setEffScaleKey( spep_4 + 68, ctzuo, 2.99, 2.99 );
setEffScaleKey( spep_4 + 70, ctzuo, 2.93, 2.93 );
setEffScaleKey( spep_4 + 72, ctzuo, 2.87, 2.87 );
setEffScaleKey( spep_4 + 74, ctzuo, 2.81, 2.81 );
setEffScaleKey( spep_4 + 76, ctzuo, 2.75, 2.75 );
setEffScaleKey( spep_4 + 78, ctzuo, 2.69, 2.69 );

setEffRotateKey( spep_4 + 58, ctzuo, -27.8 );
setEffRotateKey( spep_4 + 60, ctzuo, -27.2 );
setEffRotateKey( spep_4 + 62, ctzuo, -26.7 );
setEffRotateKey( spep_4 + 78, ctzuo, -26.7 );

setEffAlphaKey( spep_4 + 58, ctzuo, 255 );
setEffAlphaKey( spep_4 + 68, ctzuo, 255 );
setEffAlphaKey( spep_4 + 70, ctzuo, 204 );
setEffAlphaKey( spep_4 + 72, ctzuo, 153 );
setEffAlphaKey( spep_4 + 74, ctzuo, 102 );
setEffAlphaKey( spep_4 + 76, ctzuo, 51 );
setEffAlphaKey( spep_4 + 78, ctzuo, 0 );
--SE
SE1=playSe( spep_4 , 15);-- ため
stopSe(spep_4+60,SE1,0)
playSe( spep_4+62 , 1049);-- はっしゃ

--黒背景
entryFadeBg(spep_4, 0, 110, 0, 0, 0, 0, 200);  -- 黒　背

-- ** エフェクト等 ** --
entryFade(spep_4+92, 4, 12, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_5=spep_4+100;
------------------------------------------------------
-- ガ
------------------------------------------------------
setDisp( spep_5+ 0, 1, 1 );

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
--てき
------------------------------------------------------
------------------------------------------------------
------------------------------------------------------
--ため
------------------------------------------------------
spep_0=0;

--エフェクト
tame=entryEffectLife(spep_0,SP_01x,100,0x100,-1,0,0,0);
setEffMoveKey( spep_0 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_0 + 100, tame, 0, 0 , 0 );

setEffScaleKey(spep_0,tame,1.0,1.0);
setEffScaleKey(spep_0+100,tame,1.0,1.0);

setEffRotateKey(spep_0,tame,0);
setEffRotateKey(spep_0+100,tame,0);

setEffAlphaKey(spep_0,tame,255);
setEffAlphaKey(spep_0+100,tame,255);

shuchusen1 = entryEffectLife( spep_0 + 0,  906, 98, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 98, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchusen1, 1.55, 1.55 );
setEffScaleKey( spep_0 + 98, shuchusen1, 1.55, 1.55 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 98, shuchusen1, 255 );

--顔カットイン
--speff=entryEffect(spep_0+18,1504,0x100,-1,0,0,0);  --カットイン(顔)
--setEffReplaceTexture(speff,3,2);  --カットイン差し替え
--speff1=entryEffect(spep_0+18,1505,0x100,-1,0,0,0);  --カットイン(セリフ)
--setEffReplaceTexture(speff1,4,5);  --セリフカットイン差し替え

--ゴゴゴ
ctgogo=entryEffectLife(spep_0+30,190006,70,0x100,-1,-190,520);--ゴゴゴ

setEffMoveKey(spep_0+30,ctgogo,-190,520,0);
setEffMoveKey(spep_0+100,ctgogo,-190,520,0);

setEffScaleKey(spep_0+30, ctgogo, -0.7, 0.7);
setEffScaleKey(spep_0+100, ctgogo, -0.7, 0.7);

setEffAlphaKey( spep_0 + 30, ctgogo, 0 );
setEffAlphaKey( spep_0 + 31, ctgogo, 255 );
setEffAlphaKey( spep_0 + 32, ctgogo, 255 );
setEffAlphaKey( spep_0 + 100, ctgogo, 255 );

setEffRotateKey(spep_0+30,ctgogo,0);
setEffRotateKey(spep_0+100,ctgogo,0);

--SE
playSe( spep_0 + 18, SE_04);--ごごご

--黒背景
--entryFadeBg(spep_0, 0, 100, 0, 0, 0, 0, 200);  -- 黒　背

-- ** エフェクト等 ** --
entryFade(spep_0+92, 4, 8, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_1=spep_0+100;

------------------------------------------------------
--とっしん
------------------------------------------------------
--エフェクト
rush=entryEffectLife(spep_1,SP_02x,70,0x100,-1,0,0,0);
setEffMoveKey( spep_1 + 0, rush, 0, 0 , 0 );
setEffMoveKey( spep_1 + 70, rush, 0, 0 , 0 );

setEffScaleKey(spep_1,rush,1.0,1.0);
setEffScaleKey(spep_1+70,rush,1.0,1.0);

setEffRotateKey(spep_1,rush,0);
setEffRotateKey(spep_1+70,rush,0);

setEffAlphaKey(spep_1,rush,255);
setEffAlphaKey(spep_1+70,rush,255);

shuchusen2 = entryEffectLife( spep_1 + 0,  906, 68, 0x100, -1, 0, 0,  0);

setEffMoveKey( spep_1 + 0, shuchusen2, 0, 0, 0 );
setEffMoveKey( spep_1 + 68, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen2, 1.4, 1.75 );
setEffScaleKey( spep_1 + 68, shuchusen2, 1.4, 1.75 );

setEffRotateKey( spep_1 + 0, shuchusen2, 0 );
setEffRotateKey( spep_1 + 68, shuchusen2, 0 );

setEffAlphaKey( spep_1 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_1 + 68, shuchusen2, 255 );

--SE
playSe( spep_1 , 44);-- ちかづく

--黒背景
entryFadeBg(spep_1, 1, 70, 0, 0, 0, 0, 200);  -- 黒　背

--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

SP_dodge = spep_1+50 ; --エンドフェイズのフレーム数を置き換える

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

-- ** エフェクト等 ** --
entryFade(spep_1+62, 4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_2=spep_1+70;

------------------------------------------------------
--ぼうこう
------------------------------------------------------
--エフェクト
assault=entryEffectLife(spep_2,SP_03x,240,0x100,-1,0,0,0);
setEffMoveKey( spep_2 + 0, assault, 0, 0 , 0 );
setEffMoveKey( spep_2 + 240, assault, 0, 0 , 0 );

setEffScaleKey(spep_2,assault,1.0,1.0);
setEffScaleKey(spep_2+240,assault,1.0,1.0);

setEffRotateKey(spep_2,assault,0);
setEffRotateKey(spep_2+240,assault,0);

setEffAlphaKey(spep_2,assault,255);
setEffAlphaKey(spep_2+240,assault,255);


--敵の動き
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 240, 1, 0 );
changeAnime( spep_2 + 0, 1, 101 );
changeAnime( spep_2 + 18, 1, 108 );
changeAnime( spep_2 + 200, 1, 106 );

setMoveKey( spep_2 + 0, 1, 475.8, -20.2 , 0 );
setMoveKey( spep_2 + 2, 1, 380.9, -20.2 , 0 );
setMoveKey( spep_2 + 4, 1, 296.6, -20.1 , 0 );
setMoveKey( spep_2 + 6, 1, 222.8, -20.1 , 0 );
setMoveKey( spep_2 + 8, 1, 159.4, -20.1 , 0 );
setMoveKey( spep_2 + 10, 1, 106.6, -20.1 , 0 );
setMoveKey( spep_2 + 12, 1, 64.3, -20.1 , 0 );
setMoveKey( spep_2 + 14, 1, 32.4, -20.1 , 0 );
setMoveKey( spep_2 + 17, 1, 11.1, -20.1 , 0 );
setMoveKey( spep_2 + 18, 1, 63.1, 27.8 , 0 );
setMoveKey( spep_2 + 20, 1, 44.2, 17.6 , 0 );
setMoveKey( spep_2 + 22, 1, 40.1, 23.4 , 0 );
setMoveKey( spep_2 + 24, 1, 20.7, 13.2 , 0 );
setMoveKey( spep_2 + 26, 1, 15.9, 19.2 , 0 );
setMoveKey( spep_2 + 28, 1, 10.5, 10.8 , 0 );
setMoveKey( spep_2 + 30, 1, 20.3, 18.5 , 0 );
setMoveKey( spep_2 + 32, 1, 15.9, 6.8 , 0 );
setMoveKey( spep_2 + 34, 1, 24.8, 17.8 , 0 );
setMoveKey( spep_2 + 36, 1, 20, 9.4 , 0 );
setMoveKey( spep_2 + 38, 1, 28.9, 17 , 0 );
setMoveKey( spep_2 + 40, 1, 24.2, 11.7 , 0 );
setMoveKey( spep_2 + 42, 1, 32.9, 16.3 , 0 );
setMoveKey( spep_2 + 44, 1, 28.9, 6.7 , 0 );
setMoveKey( spep_2 + 46, 1, 37.5, 13.1 , 0 );
setMoveKey( spep_2 + 48, 1, 34.3, 6.8 , 0 );
setMoveKey( spep_2 + 50, 1, 41.3, 11.3 , 0 );
setMoveKey( spep_2 + 52, 1, 43.4, 10.8 , 0 );
setMoveKey( spep_2 + 54, 1, 45.5, 10.3 , 0 );
setMoveKey( spep_2 + 56, 1, 47.7, 9.8 , 0 );
setMoveKey( spep_2 + 58, 1, 49.8, 9.3 , 0 );
setMoveKey( spep_2 + 60, 1, 51.9, 8.8 , 0 );
setMoveKey( spep_2 + 62, 1, 54, 8.3 , 0 );
setMoveKey( spep_2 + 64, 1, 56.1, 7.8 , 0 );
setMoveKey( spep_2 + 66, 1, 58.3, 7.3 , 0 );
setMoveKey( spep_2 + 68, 1, 60.4, 6.8 , 0 );
setMoveKey( spep_2 + 70, 1, 62.5, 6.3 , 0 );
setMoveKey( spep_2 + 72, 1, 64.6, 5.8 , 0 );
setMoveKey( spep_2 + 74, 1, 66.7, 5.3 , 0 );
setMoveKey( spep_2 + 76, 1, 68.8, 4.8 , 0 );
setMoveKey( spep_2 + 78, 1, 70.9, 4.3 , 0 );
setMoveKey( spep_2 + 80, 1, 73, 3.8 , 0 );
setMoveKey( spep_2 + 82, 1, 75.2, 3.3 , 0 );
setMoveKey( spep_2 + 84, 1, 77.3, 2.7 , 0 );
setMoveKey( spep_2 + 86, 1, 78.8, 2.2 , 0 );
setMoveKey( spep_2 + 88, 1, 80.3, 1.7 , 0 );
setMoveKey( spep_2 + 90, 1, 81.8, 1.2 , 0 );
setMoveKey( spep_2 + 92, 1, 83.3, 0.7 , 0 );
setMoveKey( spep_2 + 94, 1, 84.8, 0.2 , 0 );
setMoveKey( spep_2 + 96, 1, 86.2, -0.3 , 0 );
setMoveKey( spep_2 + 98, 1, 87.7, -0.8 , 0 );
setMoveKey( spep_2 + 100, 1, 89.2, -1.3 , 0 );
setMoveKey( spep_2 + 102, 1, 90.7, -1.8 , 0 );
setMoveKey( spep_2 + 104, 1, 92.2, -2.4 , 0 );
setMoveKey( spep_2 + 106, 1, 93.7, -2.9 , 0 );
--setMoveKey( spep_2 + 108, 1, 95.2, -3.4 , 0 );
setMoveKey( spep_2 + 107, 1, 114.2, 31.2 , 0 );--110
setMoveKey( spep_2 + 108, 1, 114.2, 31.2 , 0 );--110
setMoveKey( spep_2 + 112, 1, 117.8, 36 , 0 );
setMoveKey( spep_2 + 114, 1, 108.7, 25 , 0 );
setMoveKey( spep_2 + 116, 1, 115.1, 30 , 0 );
setMoveKey( spep_2 + 118, 1, 108.8, 15 , 0 );
setMoveKey( spep_2 + 120, 1, 118.4, 26.6 , 0 );
setMoveKey( spep_2 + 122, 1, 116.1, 18.2 , 0 );
setMoveKey( spep_2 + 124, 1, 129.7, 25.8 , 0 );
setMoveKey( spep_2 + 126, 1, 131.3, 21.4 , 0 );
setMoveKey( spep_2 + 128, 1, 140.9, 25 , 0 );
setMoveKey( spep_2 + 130, 1, 145.3, 23.3 , 0 );
setMoveKey( spep_2 + 132, 1, 149.6, 21.6 , 0 );
setMoveKey( spep_2 + 134, 1, 153.8, 19.8 , 0 );
setMoveKey( spep_2 + 136, 1, 158.2, 18.1 , 0 );
--setMoveKey( spep_2 + 138, 1, 162.5, 16.4 , 0 );
setMoveKey( spep_2 + 137, 1, 183.3, 26 , 0 );--140
setMoveKey( spep_2 + 140, 1, 183.3, 26 , 0 );--140
setMoveKey( spep_2 + 142, 1, 186.2, 31.4 , 0 );
setMoveKey( spep_2 + 144, 1, 176.6, 20.8 , 0 );
setMoveKey( spep_2 + 146, 1, 173, 22.3 , 0 );
setMoveKey( spep_2 + 148, 1, 161.5, 15.7 , 0 );
setMoveKey( spep_2 + 150, 1, 169.4, 18.2 , 0 );
setMoveKey( spep_2 + 152, 1, 172.2, 15.2 , 0 );
setMoveKey( spep_2 + 154, 1, 176.7, 15 , 0 );
setMoveKey( spep_2 + 156, 1, 181.3, 14.7 , 0 );
setMoveKey( spep_2 + 158, 1, 185.8, 14.5 , 0 );
setMoveKey( spep_2 + 160, 1, 190.3, 14.2 , 0 );
setMoveKey( spep_2 + 162, 1, 194.9, 14 , 0 );
--setMoveKey( spep_2 + 164, 1, 199.4, 13.7 , 0 );
setMoveKey( spep_2 + 163, 1, 228, 21.5 , 0 );--166
setMoveKey( spep_2 + 164, 1, 228, 21.5 , 0 );--166
setMoveKey( spep_2 + 168, 1, 228.6, 26.9 , 0 );
setMoveKey( spep_2 + 170, 1, 217.6, 12.2 , 0 );
setMoveKey( spep_2 + 172, 1, 220.4, 21.5 , 0 );
setMoveKey( spep_2 + 174, 1, 218.7, 9.1 , 0 );
setMoveKey( spep_2 + 176, 1, 233.1, 19.5 , 0 );
setMoveKey( spep_2 + 178, 1, 258.4, -9.6 , 0 );
setMoveKey( spep_2 + 180, 1, 246.3, 11.3 , 0 );
setMoveKey( spep_2 + 182, 1, 222.2, -8.7 , 0 );
setMoveKey( spep_2 + 184, 1, 238.4, 17.7 , 0 );
setMoveKey( spep_2 + 186, 1, 228.9, 0.8 , 0 );
setMoveKey( spep_2 + 188, 1, 236.5, 6 , 0 );
setMoveKey( spep_2 + 190, 1, 240.4, -4 , 0 );
setMoveKey( spep_2 + 192, 1, 230.1, 7.6 , 0 );
setMoveKey( spep_2 + 194, 1, 246.6, -2.8 , 0 );
setMoveKey( spep_2 + 196, 1, 226.9, 6 , 0 );
setMoveKey( spep_2 + 199, 1, 228.6, 11.5 , 0 );
setMoveKey( spep_2 + 200, 1, 186.8, 54.8 , 0 );
setMoveKey( spep_2 + 202, 1, 184.3, 67.8 , 0 );
setMoveKey( spep_2 + 204, 1, 172.5, 63.8 , 0 );
setMoveKey( spep_2 + 206, 1, 171.9, 75.3 , 0 );
setMoveKey( spep_2 + 208, 1, 173.3, 76.5 , 0 );
setMoveKey( spep_2 + 210, 1, 182.9, 95.9 , 0 );
setMoveKey( spep_2 + 212, 1, 186.7, 95.2 , 0 );
setMoveKey( spep_2 + 214, 1, 191.5, 103.4 , 0 );
setMoveKey( spep_2 + 216, 1, 195.9, 110.9 , 0 );
setMoveKey( spep_2 + 218, 1, 200, 117.9 , 0 );
setMoveKey( spep_2 + 220, 1, 203.7, 124.2 , 0 );
setMoveKey( spep_2 + 222, 1, 207.1, 129.9 , 0 );
setMoveKey( spep_2 + 224, 1, 210.1, 135 , 0 );
setMoveKey( spep_2 + 226, 1, 212.7, 139.6 , 0 );
setMoveKey( spep_2 + 228, 1, 215, 143.5 , 0 );
setMoveKey( spep_2 + 230, 1, 217, 146.8 , 0 );
setMoveKey( spep_2 + 232, 1, 218.6, 149.5 , 0 );
setMoveKey( spep_2 + 234, 1, 219.8, 151.6 , 0 );
setMoveKey( spep_2 + 236, 1, 220.7, 153.1 , 0 );
setMoveKey( spep_2 + 238, 1, 221.2, 154 , 0 );
setMoveKey( spep_2 + 240, 1, 221.4, 154.3 , 0 );

setScaleKey( spep_2 + 0, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 17, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 18, 1, 1.72, 1.72 );
setScaleKey( spep_2 + 20, 1, 1.61, 1.61 );
setScaleKey( spep_2 + 22, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 24, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 26, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 106, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 107, 1, 1.66, 1.66 );--110
setScaleKey( spep_2 + 108, 1, 1.66, 1.66 );--110
setScaleKey( spep_2 + 110, 1, 1.56, 1.56 );--112
setScaleKey( spep_2 + 114, 1, 1.47, 1.47 );
setScaleKey( spep_2 + 116, 1, 1.37, 1.37 );
setScaleKey( spep_2 + 118, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 136, 1, 1.27, 1.27 );--138
setScaleKey( spep_2 + 138, 1, 1.65, 1.65 );--140
setScaleKey( spep_2 + 142, 1, 1.56, 1.56 );
setScaleKey( spep_2 + 144, 1, 1.46, 1.46 );
setScaleKey( spep_2 + 146, 1, 1.37, 1.37 );
setScaleKey( spep_2 + 148, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 162, 1, 1.27, 1.27 );--164
setScaleKey( spep_2 + 163, 1, 1.65, 1.65 );--166
setScaleKey( spep_2 + 164, 1, 1.65, 1.65 );--166
setScaleKey( spep_2 + 168, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 170, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 172, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 176, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 178, 1, 1.65, 1.65 );
setScaleKey( spep_2 + 180, 1, 1.46, 1.46 );
setScaleKey( spep_2 + 182, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 184, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 186, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 188, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 190, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 192, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 194, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 196, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 199, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 200, 1, 1.66, 1.66 );
setScaleKey( spep_2 + 202, 1, 1.53, 1.53 );
setScaleKey( spep_2 + 204, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 206, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 240, 1, 1.27, 1.27 );

setRotateKey( spep_2 + 0, 1, 5 );
setRotateKey( spep_2 + 17, 1, 5 );
setRotateKey( spep_2 + 18, 1, 0.8 );
setRotateKey( spep_2 + 20, 1, 1.1 );
setRotateKey( spep_2 + 22, 1, 1.5 );
setRotateKey( spep_2 + 24, 1, 1.9 );
setRotateKey( spep_2 + 26, 1, 2.3 );
setRotateKey( spep_2 + 28, 1, 2.7 );
setRotateKey( spep_2 + 30, 1, 3.1 );
setRotateKey( spep_2 + 32, 1, 3.4 );
setRotateKey( spep_2 + 34, 1, 3.8 );
setRotateKey( spep_2 + 36, 1, 4.2 );
setRotateKey( spep_2 + 38, 1, 4.6 );
setRotateKey( spep_2 + 40, 1, 5 );
setRotateKey( spep_2 + 42, 1, 5.4 );
setRotateKey( spep_2 + 44, 1, 5.7 );
setRotateKey( spep_2 + 46, 1, 6.1 );
setRotateKey( spep_2 + 48, 1, 6.5 );
setRotateKey( spep_2 + 50, 1, 6.9 );
setRotateKey( spep_2 + 52, 1, 7.3 );
setRotateKey( spep_2 + 54, 1, 7.7 );
setRotateKey( spep_2 + 56, 1, 8 );
setRotateKey( spep_2 + 58, 1, 8.4 );
setRotateKey( spep_2 + 60, 1, 8.8 );
setRotateKey( spep_2 + 62, 1, 9.2 );
setRotateKey( spep_2 + 64, 1, 9.6 );
setRotateKey( spep_2 + 66, 1, 10 );
setRotateKey( spep_2 + 68, 1, 10.3 );
setRotateKey( spep_2 + 70, 1, 10.7 );
setRotateKey( spep_2 + 72, 1, 11.1 );
setRotateKey( spep_2 + 74, 1, 11.5 );
setRotateKey( spep_2 + 76, 1, 11.9 );
setRotateKey( spep_2 + 78, 1, 12.3 );
setRotateKey( spep_2 + 80, 1, 12.6 );
setRotateKey( spep_2 + 82, 1, 13 );
setRotateKey( spep_2 + 84, 1, 13.4 );
setRotateKey( spep_2 + 86, 1, 13.8 );
setRotateKey( spep_2 + 88, 1, 14.2 );
setRotateKey( spep_2 + 90, 1, 14.6 );
setRotateKey( spep_2 + 92, 1, 14.9 );
setRotateKey( spep_2 + 94, 1, 15.3 );
setRotateKey( spep_2 + 96, 1, 15.7 );
setRotateKey( spep_2 + 98, 1, 16.1 );
setRotateKey( spep_2 + 100, 1, 16.5 );
setRotateKey( spep_2 + 102, 1, 16.9 );
setRotateKey( spep_2 + 104, 1, 17.2 );
setRotateKey( spep_2 + 106, 1, 17.6 );
--setRotateKey( spep_2 + 108, 1, 18 );
setRotateKey( spep_2 + 107, 1, -23 );--110
setRotateKey( spep_2 + 108, 1, -23 );--110
setRotateKey( spep_2 + 110, 1, -23 );
setRotateKey( spep_2 + 112, 1, -22.7 );
setRotateKey( spep_2 + 114, 1, -22.4 );
setRotateKey( spep_2 + 116, 1, -22 );
setRotateKey( spep_2 + 118, 1, -21.7 );
setRotateKey( spep_2 + 120, 1, -21.4 );
setRotateKey( spep_2 + 122, 1, -21.1 );
setRotateKey( spep_2 + 124, 1, -20.8 );
setRotateKey( spep_2 + 126, 1, -20.5 );
setRotateKey( spep_2 + 128, 1, -20.1 );
setRotateKey( spep_2 + 130, 1, -19.8 );
setRotateKey( spep_2 + 132, 1, -19.5 );
setRotateKey( spep_2 + 134, 1, -19.2 );
setRotateKey( spep_2 + 136, 1, -18.9 );
--setRotateKey( spep_2 + 138, 1, -18.6 );
setRotateKey( spep_2 + 137, 1, -18.3 );--140
setRotateKey( spep_2 + 138, 1, -18.3 );--140
setRotateKey( spep_2 + 162, 1, -18.3 );--164
setRotateKey( spep_2 + 163, 1, -4 );--166
setRotateKey( spep_2 + 164, 1, -4 );--166
setRotateKey( spep_2 + 176, 1, -4 );
setRotateKey( spep_2 + 178, 1, 1 );
setRotateKey( spep_2 + 180, 1, -1.5 );
setRotateKey( spep_2 + 182, 1, 1 );
setRotateKey( spep_2 + 184, 1, -4 );
setRotateKey( spep_2 + 199, 1, -4 );
setRotateKey( spep_2 + 200, 1, -46.2 );
setRotateKey( spep_2 + 202, 1, -44.6 );
setRotateKey( spep_2 + 204, 1, -43 );
setRotateKey( spep_2 + 206, 1, -41.5 );
setRotateKey( spep_2 + 208, 1, -40 );
setRotateKey( spep_2 + 210, 1, -38.7 );
setRotateKey( spep_2 + 212, 1, -37.5 );
setRotateKey( spep_2 + 214, 1, -36.3 );
setRotateKey( spep_2 + 216, 1, -35.2 );
setRotateKey( spep_2 + 218, 1, -34.2 );
setRotateKey( spep_2 + 220, 1, -33.3 );
setRotateKey( spep_2 + 222, 1, -32.5 );
setRotateKey( spep_2 + 224, 1, -31.8 );
setRotateKey( spep_2 + 226, 1, -31.1 );
setRotateKey( spep_2 + 228, 1, -30.6 );
setRotateKey( spep_2 + 230, 1, -30.1 );
setRotateKey( spep_2 + 232, 1, -29.7 );
setRotateKey( spep_2 + 234, 1, -29.4 );
setRotateKey( spep_2 + 236, 1, -29.2 );
setRotateKey( spep_2 + 238, 1, -29 );
setRotateKey( spep_2 + 240, 1, -29 );

--文字エントリー
ctbaki = entryEffectLife( spep_2 + 18,  10020, 22, 0x100, -1, 0, -32, 253.5 );--バキ
setEffMoveKey( spep_2 + 18, ctbaki, -32, 253.5 , 0 );
setEffMoveKey( spep_2 + 20, ctbaki, -2.1, 270.9 , 0 );
setEffMoveKey( spep_2 + 22, ctbaki, 14.2, 288.1 , 0 );
setEffMoveKey( spep_2 + 24, ctbaki, 9.5, 282.5 , 0 );
setEffMoveKey( spep_2 + 26, ctbaki, -1, 275.5 , 0 );
setEffMoveKey( spep_2 + 28, ctbaki, -11.4, 273.2 , 0 );
setEffMoveKey( spep_2 + 30, ctbaki, 0.8, 268.1 , 0 );
setEffMoveKey( spep_2 + 32, ctbaki, 1.6, 268.6 , 0 );
setEffMoveKey( spep_2 + 34, ctbaki, 2.3, 269.2 , 0 );
setEffMoveKey( spep_2 + 36, ctbaki, 3, 269.7 , 0 );
setEffMoveKey( spep_2 + 38, ctbaki, 3.7, 270.3 , 0 );
setEffMoveKey( spep_2 + 40, ctbaki, 4.4, 270.8 , 0 );

setEffScaleKey( spep_2 + 18, ctbaki, 0.91, 0.91 );
setEffScaleKey( spep_2 + 20, ctbaki, 1.95, 1.95 );
setEffScaleKey( spep_2 + 22, ctbaki, 2.48, 2.48 );
setEffScaleKey( spep_2 + 24, ctbaki, 2.36, 2.36 );
setEffScaleKey( spep_2 + 26, ctbaki, 2.24, 2.24 );
setEffScaleKey( spep_2 + 28, ctbaki, 2.12, 2.12 );
setEffScaleKey( spep_2 + 30, ctbaki, 2.01, 2.01 );
setEffScaleKey( spep_2 + 32, ctbaki, 1.89, 1.89 );
setEffScaleKey( spep_2 + 34, ctbaki, 1.77, 1.77 );
setEffScaleKey( spep_2 + 36, ctbaki, 1.64, 1.64 );
setEffScaleKey( spep_2 + 38, ctbaki, 1.52, 1.52 );
setEffScaleKey( spep_2 + 40, ctbaki, 1.4, 1.4 );

setEffRotateKey( spep_2 + 18, ctbaki, -34.5 );
setEffRotateKey( spep_2 + 20, ctbaki, -21.1 );
setEffRotateKey( spep_2 + 22, ctbaki, -34.5 );
setEffRotateKey( spep_2 + 24, ctbaki, -43.1 );
setEffRotateKey( spep_2 + 26, ctbaki, -34.3 );
setEffRotateKey( spep_2 + 28, ctbaki, -23.6 );
setEffRotateKey( spep_2 + 30, ctbaki, -34.5 );
setEffRotateKey( spep_2 + 34, ctbaki, -34.5 );
setEffRotateKey( spep_2 + 36, ctbaki, -34.4 );
setEffRotateKey( spep_2 + 40, ctbaki, -34.4 );

setEffAlphaKey( spep_2 + 18, ctbaki, 255 );
setEffAlphaKey( spep_2 + 30, ctbaki, 255 );
setEffAlphaKey( spep_2 + 32, ctbaki, 204 );
setEffAlphaKey( spep_2 + 34, ctbaki, 153 );
setEffAlphaKey( spep_2 + 36, ctbaki, 102 );
setEffAlphaKey( spep_2 + 38, ctbaki, 51 );
setEffAlphaKey( spep_2 + 40, ctbaki, 0 );

--文字エントリー
ctdon = entryEffectLife( spep_2 + 106,  10019, 20, 0x100, -1, 0, -112.9, 185.9 );--ドン
setEffMoveKey( spep_2 + 106, ctdon, -112.9, 185.9 , 0 );
setEffMoveKey( spep_2 + 112, ctdon, -125.5, 204.3 , 0 );
setEffMoveKey( spep_2 + 114, ctdon, -117.2, 219.4 , 0 );
setEffMoveKey( spep_2 + 116, ctdon, -126.3, 227.2 , 0 );
setEffMoveKey( spep_2 + 118, ctdon, -114.1, 219.1 , 0 );
setEffMoveKey( spep_2 + 120, ctdon, -126.2, 218.2 , 0 );
setEffMoveKey( spep_2 + 122, ctdon, -119.9, 225.9 , 0 );
setEffMoveKey( spep_2 + 124, ctdon, -119.7, 213.4 , 0 );
setEffMoveKey( spep_2 + 126, ctdon, -119.7, 213.3 , 0 );

setEffScaleKey( spep_2 + 106, ctdon, 1.29, 1.29 );
setEffScaleKey( spep_2 + 112, ctdon, 1.63, 1.63 );
setEffScaleKey( spep_2 + 114, ctdon, 1.98, 1.98 );
setEffScaleKey( spep_2 + 116, ctdon, 2, 2 );
setEffScaleKey( spep_2 + 118, ctdon, 2.02, 2.02 );
setEffScaleKey( spep_2 + 120, ctdon, 2.04, 2.04 );
setEffScaleKey( spep_2 + 122, ctdon, 2.05, 2.05 );
setEffScaleKey( spep_2 + 124, ctdon, 2.06, 2.06 );
setEffScaleKey( spep_2 + 126, ctdon, 2.07, 2.07 );

setEffRotateKey( spep_2 + 106, ctdon, -0.8 );
setEffRotateKey( spep_2 + 112, ctdon, -0.2 );
setEffRotateKey( spep_2 + 114, ctdon, 0.3 );
setEffRotateKey( spep_2 + 126, ctdon, 0.3 );

setEffAlphaKey( spep_2 + 106, ctdon, 0 );
setEffAlphaKey( spep_2 + 107, ctdon, 255 );
setEffAlphaKey( spep_2 + 108, ctdon, 255 );
setEffAlphaKey( spep_2 + 110, ctdon, 255 );
setEffAlphaKey( spep_2 + 120, ctdon, 255 );
setEffAlphaKey( spep_2 + 122, ctdon, 170 );
setEffAlphaKey( spep_2 + 124, ctdon, 85 );
setEffAlphaKey( spep_2 + 126, ctdon, 0 );

--文字エントリー
ctdon2 = entryEffectLife( spep_2 + 136,  10019, 20, 0x100, -1, 0, -112.9, 186.2 );--ドン
setEffMoveKey( spep_2 + 136, ctdon2, -112.9, 186.2 , 0 );
setEffMoveKey( spep_2 + 142, ctdon2, -125.5, 204.5 , 0 );
setEffMoveKey( spep_2 + 144, ctdon2, -117.2, 219.4 , 0 );
setEffMoveKey( spep_2 + 146, ctdon2, -126.3, 227.2 , 0 );
setEffMoveKey( spep_2 + 148, ctdon2, -114.1, 219.1 , 0 );
setEffMoveKey( spep_2 + 150, ctdon2, -126.2, 218.2 , 0 );
setEffMoveKey( spep_2 + 152, ctdon2, -119.9, 225.9 , 0 );
setEffMoveKey( spep_2 + 154, ctdon2, -119.7, 213.4 , 0 );
setEffMoveKey( spep_2 + 156, ctdon2, -119.7, 213.3 , 0 );

setEffScaleKey( spep_2 + 136, ctdon2, 1.29, 1.29 );
setEffScaleKey( spep_2 + 142, ctdon2, 1.64, 1.64 );
setEffScaleKey( spep_2 + 144, ctdon2, 1.98, 1.98 );
setEffScaleKey( spep_2 + 146, ctdon2, 2, 2 );
setEffScaleKey( spep_2 + 148, ctdon2, 2.02, 2.02 );
setEffScaleKey( spep_2 + 150, ctdon2, 2.04, 2.04 );
setEffScaleKey( spep_2 + 152, ctdon2, 2.05, 2.05 );
setEffScaleKey( spep_2 + 154, ctdon2, 2.06, 2.06 );
setEffScaleKey( spep_2 + 156, ctdon2, 2.07, 2.07 );

setEffRotateKey( spep_2 + 136, ctdon2, -0.8 );
setEffRotateKey( spep_2 + 142, ctdon2, -0.2 );
setEffRotateKey( spep_2 + 144, ctdon2, 0.3 );
setEffRotateKey( spep_2 + 156, ctdon2, 0.3 );

setEffAlphaKey( spep_2 + 136, ctdon2, 0 );
setEffAlphaKey( spep_2 + 137, ctdon2, 255 );
setEffAlphaKey( spep_2 + 138, ctdon2, 255 );
setEffAlphaKey( spep_2 + 150, ctdon2, 255 );
setEffAlphaKey( spep_2 + 152, ctdon2, 170 );
setEffAlphaKey( spep_2 + 154, ctdon2, 85 );
setEffAlphaKey( spep_2 + 156, ctdon2, 0 );

--文字エントリー
ctzudododo = entryEffectLife( spep_2 + 162,  10014, 32, 0x100, -1, 0, -84.7, 266.3 );--ズドドドッ

setEffMoveKey( spep_2 + 162, ctzudododo, -84.7, 266.3 , 0 );
setEffMoveKey( spep_2 + 168, ctzudododo, -84.2, 250.7 , 0 );
setEffMoveKey( spep_2 + 170, ctzudododo, -84.3, 266.3 , 0 );
setEffMoveKey( spep_2 + 172, ctzudododo, -83.8, 250.5 , 0 );
setEffMoveKey( spep_2 + 174, ctzudododo, -84, 266.3 , 0 );
setEffMoveKey( spep_2 + 176, ctzudododo, -83.5, 250.2 , 0 );
setEffMoveKey( spep_2 + 178, ctzudododo, -83.7, 266.3 , 0 );
setEffMoveKey( spep_2 + 180, ctzudododo, -83.2, 249.9 , 0 );
setEffMoveKey( spep_2 + 182, ctzudododo, -83.4, 266.2 , 0 );
setEffMoveKey( spep_2 + 184, ctzudododo, -82.8, 249.6 , 0 );
setEffMoveKey( spep_2 + 186, ctzudododo, -83, 266.2 , 0 );
setEffMoveKey( spep_2 + 188, ctzudododo, -82.5, 249.3 , 0 );
setEffMoveKey( spep_2 + 190, ctzudododo, -82.7, 266.2 , 0 );
setEffMoveKey( spep_2 + 192, ctzudododo, -82.1, 249 , 0 );
setEffMoveKey( spep_2 + 194, ctzudododo, -82.4, 266.2 , 0 );

setEffScaleKey( spep_2 + 162, ctzudododo, 2.73, 2.73 );
setEffScaleKey( spep_2 + 168, ctzudododo, 2.76, 2.76 );
setEffScaleKey( spep_2 + 170, ctzudododo, 2.78, 2.78 );
setEffScaleKey( spep_2 + 172, ctzudododo, 2.8, 2.8 );
setEffScaleKey( spep_2 + 174, ctzudododo, 2.83, 2.83 );
setEffScaleKey( spep_2 + 176, ctzudododo, 2.85, 2.85 );
setEffScaleKey( spep_2 + 178, ctzudododo, 2.87, 2.87 );
setEffScaleKey( spep_2 + 180, ctzudododo, 2.9, 2.9 );
setEffScaleKey( spep_2 + 182, ctzudododo, 2.92, 2.92 );
setEffScaleKey( spep_2 + 184, ctzudododo, 2.95, 2.95 );
setEffScaleKey( spep_2 + 186, ctzudododo, 2.97, 2.97 );
setEffScaleKey( spep_2 + 188, ctzudododo, 2.99, 2.99 );
setEffScaleKey( spep_2 + 190, ctzudododo, 3.02, 3.02 );
setEffScaleKey( spep_2 + 192, ctzudododo, 3.04, 3.04 );
setEffScaleKey( spep_2 + 194, ctzudododo, 3.07, 3.07 );

setEffRotateKey( spep_2 + 162, ctzudododo, -70.6 );
setEffRotateKey( spep_2 + 168, ctzudododo, -70.7 );
setEffRotateKey( spep_2 + 186, ctzudododo, -70.7 );
setEffRotateKey( spep_2 + 188, ctzudododo, -70.8 );
setEffRotateKey( spep_2 + 194, ctzudododo, -70.8 );

setEffAlphaKey( spep_2 + 162, ctzudododo, 0 );
setEffAlphaKey( spep_2 + 163, ctzudododo, 255 );
setEffAlphaKey( spep_2 + 164, ctzudododo, 255 );
setEffAlphaKey( spep_2 + 194, ctzudododo, 255 );




--文字エントリー
ctbaki2 = entryEffectLife( spep_2 + 200,  10020, 22, 0x100, -1, 0, -85.2, 301.9 );--バキ
setEffMoveKey( spep_2 + 200, ctbaki2, -85.2, 301.9 , 0 );
setEffMoveKey( spep_2 + 202, ctbaki2, -53.1, 299.7 , 0 );
setEffMoveKey( spep_2 + 204, ctbaki2, -56.1, 277.5 , 0 );
setEffMoveKey( spep_2 + 206, ctbaki2, -58.5, 284.7 , 0 );
setEffMoveKey( spep_2 + 208, ctbaki2, -66.2, 286.4 , 0 );
setEffMoveKey( spep_2 + 210, ctbaki2, -76.4, 280.8 , 0 );
setEffMoveKey( spep_2 + 212, ctbaki2, -80.2, 279.2 , 0 );
setEffMoveKey( spep_2 + 214, ctbaki2, -80.5, 281.9 , 0 );
setEffMoveKey( spep_2 + 216, ctbaki2, -80.8, 284.7 , 0 );
setEffMoveKey( spep_2 + 218, ctbaki2, -81.3, 287.5 , 0 );
setEffMoveKey( spep_2 + 220, ctbaki2, -81.8, 290.3 , 0 );
setEffMoveKey( spep_2 + 222, ctbaki2, -82.4, 293.1 , 0 );

setEffScaleKey( spep_2 + 200, ctbaki2, 0.91, 0.91 );
setEffScaleKey( spep_2 + 202, ctbaki2, 1.95, 1.95 );
setEffScaleKey( spep_2 + 204, ctbaki2, 2.48, 2.48 );
setEffScaleKey( spep_2 + 206, ctbaki2, 2.36, 2.36 );
setEffScaleKey( spep_2 + 208, ctbaki2, 2.24, 2.24 );
setEffScaleKey( spep_2 + 210, ctbaki2, 2.12, 2.12 );
setEffScaleKey( spep_2 + 212, ctbaki2, 2.01, 2.01 );
setEffScaleKey( spep_2 + 214, ctbaki2, 1.91, 1.91 );
setEffScaleKey( spep_2 + 216, ctbaki2, 1.81, 1.81 );
setEffScaleKey( spep_2 + 218, ctbaki2, 1.7, 1.7 );
setEffScaleKey( spep_2 + 220, ctbaki2, 1.6, 1.6 );
setEffScaleKey( spep_2 + 222, ctbaki2, 1.5, 1.5 );

setEffRotateKey( spep_2 + 200, ctbaki2, 19 );
setEffRotateKey( spep_2 + 202, ctbaki2, 19 );
setEffRotateKey( spep_2 + 204, ctbaki2, 13 );
setEffRotateKey( spep_2 + 206, ctbaki2, 24 );
setEffRotateKey( spep_2 + 208, ctbaki2, 16 );
setEffRotateKey( spep_2 + 210, ctbaki2, 24 );
setEffRotateKey( spep_2 + 212, ctbaki2, 19 );
setEffRotateKey( spep_2 + 214, ctbaki2, 21.6 );
setEffRotateKey( spep_2 + 216, ctbaki2, 24.2 );
setEffRotateKey( spep_2 + 218, ctbaki2, 26.8 );
setEffRotateKey( spep_2 + 220, ctbaki2, 29.4 );
setEffRotateKey( spep_2 + 222, ctbaki2, 32 );

setEffAlphaKey( spep_2 + 200, ctbaki2, 255 );
setEffAlphaKey( spep_2 + 212, ctbaki2, 255 );
setEffAlphaKey( spep_2 + 214, ctbaki2, 204 );
setEffAlphaKey( spep_2 + 216, ctbaki2, 153 );
setEffAlphaKey( spep_2 + 218, ctbaki2, 102 );
setEffAlphaKey( spep_2 + 220, ctbaki2, 51 );
setEffAlphaKey( spep_2 + 222, ctbaki2, 0 );

--流線(横)
ryusen = entryEffectLife( spep_2 + 0,  914, 238, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_2 + 0, ryusen, 0, 0 , 0 );
setEffMoveKey( spep_2 + 238, ryusen, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, ryusen, 1, 1 );
setEffScaleKey( spep_2 + 198, ryusen, 1, 1 );
setEffScaleKey( spep_2 + 199, ryusen, 1, 1 );
setEffScaleKey( spep_2 + 200, ryusen, 2.91, 1.08 );
setEffScaleKey( spep_2 + 238, ryusen, 2.91, 1.08 );

setEffRotateKey( spep_2 + 0, ryusen, 0 );
setEffRotateKey( spep_2 + 198, ryusen, 0 );
setEffRotateKey( spep_2 + 199, ryusen, 0 );
setEffRotateKey( spep_2 + 200, ryusen, 90 );
setEffRotateKey( spep_2 + 240, ryusen, 90 );

setEffAlphaKey( spep_2 + 0, ryusen, 255 );
setEffAlphaKey( spep_2 + 240, ryusen, 255 );

--集中線
shuchusen3 = entryEffectLife( spep_2 + 0,  906, 208, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_2 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_2 + 208, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen3, 1.4, 1.75 );
setEffScaleKey( spep_2 + 208, shuchusen3, 1.4, 1.75 );

setEffRotateKey( spep_2 + 0, shuchusen3, 0 );
setEffRotateKey( spep_2 + 208, shuchusen3, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_2 + 208, shuchusen3, 255 );

--黒背景
entryFadeBg(spep_2, 0, 240, 0, 0, 0, 0, 200);  -- 黒　背

-- ** エフェクト等 ** --
entryFade(spep_2+14, 0, 4, 6,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_2+196, 0, 6, 6,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_2+232, 4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--SE
--playSe( spep_2 , 44);-- ちかづく
playSe( spep_2+18 , 1011);-- けり
playSe( spep_2+108 , 1009);-- ぱんち
playSe( spep_2+138 , 1010);-- ぱんち
playSe( spep_2+164 , 1000);-- ぱんち
playSe( spep_2+174 , 1001);-- ぱんち
playSe( spep_2+184 , 1000);-- ぱんち
--playSe( spep_2+194 , 1001);-- ぱんち
playSe( spep_2+202 , 1011);-- けり

--次の準備
spep_3=spep_2+240;

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

------------------------------------------------------
--敵を飛ばす
------------------------------------------------------
--エフェクト
skip=entryEffectLife(spep_4,SP_04x,100,0x100,-1,0,0,0);
setEffMoveKey( spep_4 + 0, skip, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, skip, 0, 0 , 0 );

setEffScaleKey(spep_4,skip,1.0,1.0);
setEffScaleKey(spep_4+100,skip,1.0,1.0);

setEffRotateKey(spep_4,skip,0);
setEffRotateKey(spep_4+100,skip,0);

setEffAlphaKey(spep_4,skip,255);
setEffAlphaKey(spep_4+100,skip,255);


--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 78, 1, 0 );

changeAnime( spep_4 + 0, 1, 106 );

setMoveKey( spep_4 + 0, 1, -71.1, 229.9 , 0 );
setMoveKey( spep_4 + 2, 1, -60.9, 215 , 0 );
setMoveKey( spep_4 + 4, 1, -50.7, 200.1 , 0 );
setMoveKey( spep_4 + 6, 1, -40.5, 185.2 , 0 );
setMoveKey( spep_4 + 8, 1, -30.3, 170.3 , 0 );
setMoveKey( spep_4 + 10, 1, -20.1, 155.4 , 0 );
setMoveKey( spep_4 + 12, 1, -9.9, 140.5 , 0 );
setMoveKey( spep_4 + 14, 1, 0.3, 125.6 , 0 );
setMoveKey( spep_4 + 16, 1, 10.5, 110.7 , 0 );
setMoveKey( spep_4 + 18, 1, 20.8, 95.8 , 0 );
setMoveKey( spep_4 + 20, 1, 31, 80.9 , 0 );
setMoveKey( spep_4 + 22, 1, 41.2, 66 , 0 );
setMoveKey( spep_4 + 24, 1, 51.5, 51 , 0 );
setMoveKey( spep_4 + 26, 1, 61.7, 36.1 , 0 );
setMoveKey( spep_4 + 28, 1, 71.9, 21.2 , 0 );
setMoveKey( spep_4 + 30, 1, 94, 27.5 , 0 );
setMoveKey( spep_4 + 32, 1, 99.7, 62.7 , 0 );
setMoveKey( spep_4 + 34, 1, 96.7, 28.7 , 0 );
setMoveKey( spep_4 + 36, 1, 106.3, 33.6 , 0 );
setMoveKey( spep_4 + 38, 1, 109, 32.5 , 0 );
setMoveKey( spep_4 + 40, 1, 71.8, 21.1 , 0 );
setMoveKey( spep_4 + 42, 1, 69.2, 19.9 , 0 );
setMoveKey( spep_4 + 44, 1, 71.6, 18.8 , 0 );
setMoveKey( spep_4 + 46, 1, 76.7, 22.6 , 0 );
setMoveKey( spep_4 + 48, 1, 93.8, 27.4 , 0 );
setMoveKey( spep_4 + 50, 1, 96.5, 26.2 , 0 );
setMoveKey( spep_4 + 52, 1, 99.7, 10 , 0 );
setMoveKey( spep_4 + 54, 1, 96.9, 8.8 , 0 );
setMoveKey( spep_4 + 56, 1, 114.1, 28.4 , 0 );
setMoveKey( spep_4 + 58, 1, 104.5, 24.2 , 0 );
setMoveKey( spep_4 + 60, 1, 75, 16.6 , 0 );
setMoveKey( spep_4 + 62, 1, 180.9, 23.6 , 0 );
setMoveKey( spep_4 + 64, 1, 279.6, 35.8 , 0 );
setMoveKey( spep_4 + 66, 1, 357, 40.6 , 0 );
setMoveKey( spep_4 + 68, 1, 432, 45.1 , 0 );
setMoveKey( spep_4 + 70, 1, 494, 50.9 , 0 );
setMoveKey( spep_4 + 72, 1, 543.3, 53.9 , 0 );
setMoveKey( spep_4 + 74, 1, 584.1, 56.2 , 0 );
setMoveKey( spep_4 + 76, 1, 612.3, 59.3 , 0 );

setScaleKey( spep_4 + 0, 1, 1.53, 1.53 );
setScaleKey( spep_4 + 28, 1, 1.53, 1.53 );
setScaleKey( spep_4 + 30, 1, 1.68, 1.68 );
setScaleKey( spep_4 + 32, 1, 1.84, 1.84 );
setScaleKey( spep_4 + 34, 1, 1.68, 1.68 );
setScaleKey( spep_4 + 38, 1, 1.68, 1.68 );
setScaleKey( spep_4 + 40, 1, 1.53, 1.53 );
setScaleKey( spep_4 + 44, 1, 1.53, 1.53 );
setScaleKey( spep_4 + 46, 1, 1.56, 1.56 );
setScaleKey( spep_4 + 48, 1, 1.68, 1.68 );
setScaleKey( spep_4 + 58, 1, 1.68, 1.68 );
setScaleKey( spep_4 + 60, 1, 1.53, 1.53 );
setScaleKey( spep_4 + 62, 1, 1.4, 1.4 );
setScaleKey( spep_4 + 64, 1, 1.25, 1.25 );
setScaleKey( spep_4 + 66, 1, 1.11, 1.11 );
setScaleKey( spep_4 + 68, 1, 1, 1 );
setScaleKey( spep_4 + 70, 1, 0.91, 0.91 );
setScaleKey( spep_4 + 72, 1, 0.84, 0.84 );
setScaleKey( spep_4 + 74, 1, 0.78, 0.78 );
setScaleKey( spep_4 + 76, 1, 0.74, 0.74 );

setRotateKey( spep_4 + 0, 1, -42 );
setRotateKey( spep_4 + 2, 1, -41.5 );
setRotateKey( spep_4 + 4, 1, -41 );
setRotateKey( spep_4 + 6, 1, -40.5 );
setRotateKey( spep_4 + 8, 1, -40.1 );
setRotateKey( spep_4 + 10, 1, -39.6 );
setRotateKey( spep_4 + 12, 1, -39.1 );
setRotateKey( spep_4 + 14, 1, -38.6 );
setRotateKey( spep_4 + 16, 1, -38.1 );
setRotateKey( spep_4 + 18, 1, -37.6 );
setRotateKey( spep_4 + 20, 1, -37.1 );
setRotateKey( spep_4 + 22, 1, -36.6 );
setRotateKey( spep_4 + 24, 1, -36.2 );
setRotateKey( spep_4 + 26, 1, -35.7 );
setRotateKey( spep_4 + 28, 1, -35.2 );
setRotateKey( spep_4 + 30, 1, -35 );
setRotateKey( spep_4 + 62, 1, -35 );
setRotateKey( spep_4 + 64, 1, -35.1 );
setRotateKey( spep_4 + 68, 1, -35.1 );
setRotateKey( spep_4 + 70, 1, -35.2 );
setRotateKey( spep_4 + 76, 1, -35.2 );

--流線(奥行き)
ryuusen2 = entryEffectLife( spep_4 + 0,  921, 98, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_4 + 0, ryuusen2, 0, 0 , 0 );
setEffMoveKey( spep_4 + 98, ryuusen2, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, ryuusen2, 1.32, 1.05 );
setEffScaleKey( spep_4 + 98, ryuusen2, 1.32, 1.05);

setEffRotateKey( spep_4 + 0, ryuusen2, 0 );
setEffRotateKey( spep_4 + 98, ryuusen2, 0 );

setEffAlphaKey( spep_4 + 0, ryuusen2, 255 );
setEffAlphaKey( spep_4 + 98, ryuusen2, 255 );

--文字エントリー
ctzuo = entryEffectLife( spep_4 + 58,  10012, 20, 0x100, -1, 0, -42.6, 186.8 );--ズオッ

setEffMoveKey( spep_4 + 58, ctzuo, -42.6, 186.8 , 0 );
setEffMoveKey( spep_4 + 60, ctzuo, -54.9, 219 , 0 );
setEffMoveKey( spep_4 + 62, ctzuo, -44.4, 247.6 , 0 );
setEffMoveKey( spep_4 + 64, ctzuo, -63.7, 267.6 , 0 );
setEffMoveKey( spep_4 + 66, ctzuo, -59.1, 269.9 , 0 );
setEffMoveKey( spep_4 + 68, ctzuo, -82, 280.2 , 0 );
setEffMoveKey( spep_4 + 70, ctzuo, -85.3, 284.1 , 0 );
setEffMoveKey( spep_4 + 72, ctzuo, -95.7, 265.9 , 0 );
setEffMoveKey( spep_4 + 74, ctzuo, -110.4, 275.6 , 0 );
setEffMoveKey( spep_4 + 76, ctzuo, -115.6, 261.2 , 0 );
setEffMoveKey( spep_4 + 78, ctzuo, -126.2, 256.6 , 0 );

setEffScaleKey( spep_4 + 58, ctzuo, 1.67, 1.67 );
setEffScaleKey( spep_4 + 60, ctzuo, 2.27, 2.27 );
setEffScaleKey( spep_4 + 62, ctzuo, 2.86, 2.86 );
setEffScaleKey( spep_4 + 64, ctzuo, 2.9, 2.9 );
setEffScaleKey( spep_4 + 66, ctzuo, 2.95, 2.95 );
setEffScaleKey( spep_4 + 68, ctzuo, 2.99, 2.99 );
setEffScaleKey( spep_4 + 70, ctzuo, 2.93, 2.93 );
setEffScaleKey( spep_4 + 72, ctzuo, 2.87, 2.87 );
setEffScaleKey( spep_4 + 74, ctzuo, 2.81, 2.81 );
setEffScaleKey( spep_4 + 76, ctzuo, 2.75, 2.75 );
setEffScaleKey( spep_4 + 78, ctzuo, 2.69, 2.69 );

setEffRotateKey( spep_4 + 58, ctzuo, -27.8 );
setEffRotateKey( spep_4 + 60, ctzuo, -27.2 );
setEffRotateKey( spep_4 + 62, ctzuo, -26.7 );
setEffRotateKey( spep_4 + 78, ctzuo, -26.7 );

setEffAlphaKey( spep_4 + 58, ctzuo, 255 );
setEffAlphaKey( spep_4 + 68, ctzuo, 255 );
setEffAlphaKey( spep_4 + 70, ctzuo, 204 );
setEffAlphaKey( spep_4 + 72, ctzuo, 153 );
setEffAlphaKey( spep_4 + 74, ctzuo, 102 );
setEffAlphaKey( spep_4 + 76, ctzuo, 51 );
setEffAlphaKey( spep_4 + 78, ctzuo, 0 );
--SE
SE1=playSe( spep_4 , 15);-- ため
stopSe(spep_4+60,SE1,0)
playSe( spep_4+62 , 1049);-- はっしゃ

--黒背景
entryFadeBg(spep_4, 0, 110, 0, 0, 0, 0, 200);  -- 黒　背

-- ** エフェクト等 ** --
entryFade(spep_4+92, 4, 12, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_5=spep_4+100;
------------------------------------------------------
-- ガ
------------------------------------------------------
setDisp( spep_5+ 0, 1, 1 );

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