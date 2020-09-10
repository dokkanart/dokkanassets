--ロボット兵 1015320 スーパーテックガトリング
--sp_effect_a8_00030
--プライオリティとかエフェクトとか間違ってたらごめんね


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
SE_13 = 1030;

--味方側
SP_01=	152307	;--	構え
SP_02=	152308	;--	ワイヤー発射
SP_03=	152309	;--	ワイヤー命中
SP_04=	152310	;--	空1
SP_05=	152311	;--	ガトリング発射
SP_06=	152312	;--	連携プレイ
SP_07=	152313	;--	空2
SP_08=	152314	;--	砲撃命中
SP_09=	152315	;--	爆発

--敵側
SP_01x=	152316	;--	構え	(敵)
SP_02x=	152317	;--	ワイヤー発射	(敵)
SP_03x=	152309	;--	ワイヤー命中	
SP_04x=	152310	;--	空1	
SP_05x=	152318	;--	ガトリング発射	(敵)
SP_06x=	152312	;--	連携プレイ	
SP_07x=	152313	;--	空2	
SP_08x=	152314	;--	砲撃命中	
SP_09x=	152315	;--	爆発	


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
------------------------------------------------------
-- 溜め
------------------------------------------------------
spep_0=0;

--エフェクト再生
tame=entryEffectLife(spep_0,SP_01,90,0x100,-1,0,0,0);

setEffMoveKey(spep_0,tame,0,0,0);
setEffMoveKey(spep_0+90,tame,0,0,0);

setEffScaleKey(spep_0,tame,1.0,1.0);
setEffScaleKey(spep_0+90,tame,1.0,1.0);

setEffAlphaKey(spep_0,tame,255);
setEffAlphaKey(spep_0+90,tame,255);

setEffRotateKey(spep_0,tame,0);
setEffRotateKey(spep_0+90,tame,0);

--集中線
shuchusen1 = entryEffectLife( spep_0 + 0,  906, 88, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 88, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchusen1, 1.3, 1.3 );
setEffScaleKey( spep_0 + 88, shuchusen1, 1.3, 1.3 );

setEffRotateKey( spep_0 + 0, shuchusen1, 180 );
setEffRotateKey( spep_0 + 88, shuchusen1, 180 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 154 );
setEffAlphaKey( spep_0 + 88, shuchusen1, 154 );


--文字エントリー
ctgogo=entryEffectLife(spep_0+18,190006,70,0x100,-1,-10,520);--ゴゴゴ
setEffMoveKey(spep_0+18,ctgogo,-10,520,0);
setEffMoveKey(spep_0+88,ctgogo,-10,520,0);

setEffScaleKey(spep_0+18, ctgogo, 0.7, 0.7);
setEffScaleKey(spep_0+88, ctgogo, 0.7, 0.7);

setEffAlphaKey( spep_0 + 18, ctgogo, 0 );
setEffAlphaKey( spep_0 + 19, ctgogo, 255 );
setEffAlphaKey( spep_0 + 20, ctgogo, 255 );
setEffAlphaKey( spep_0 + 88, ctgogo, 255 );


--顔カットイン
speff=entryEffect(spep_0+6,1504,0x100,-1,0,0,0);  --カットイン(顔)
setEffReplaceTexture(speff,3,2);  --カットイン差し替え
speff1=entryEffect(spep_0+6,1505,0x100,-1,0,0,0);  --カットイン(セリフ
setEffReplaceTexture(speff1,4,5);  --セリフカットイン差し替え

--SE
playSe( spep_0 + 18, SE_04);

-- ** エフェクト等 ** --
entryFade(spep_0+82, 6, 4, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_1=spep_0+90;

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

------------------------------------------------------
-- 手を飛ばす
------------------------------------------------------
--エフェクト再生
skip=entryEffectLife(spep_2,SP_02,60,0x100,-1,0,0,0);

setEffMoveKey(spep_2,skip,0,0,0);
setEffMoveKey(spep_2+60,skip,0,0,0);

setEffScaleKey(spep_2,skip,1.0,1.0);
setEffScaleKey(spep_2+60,skip,1.0,1.0);

setEffAlphaKey(spep_2,skip,255);
setEffAlphaKey(spep_2+60,skip,255);

setEffRotateKey(spep_2,skip,0);
setEffRotateKey(spep_2+60,skip,0);

--集中線
shuchusen2 = entryEffectLife( spep_2 + 0,  906, 58, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_2 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 8, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 16, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 24, shuchusen2, -130.3, -116.8 , 0 );
setEffMoveKey( spep_2 + 58, shuchusen2, -130.3, -116.8 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen2, 1.3, 1.3 );
setEffScaleKey( spep_2 + 8, shuchusen2, 1.3, 1.3 );
setEffScaleKey( spep_2 + 10, shuchusen2, 1.4, 1.4 );
setEffScaleKey( spep_2 + 12, shuchusen2, 1.5, 1.5 );
setEffScaleKey( spep_2 + 14, shuchusen2, 1.47, 1.47 );
setEffScaleKey( spep_2 + 16, shuchusen2, 1.43, 1.43 );
setEffScaleKey( spep_2 + 18, shuchusen2, 1.4, 1.4 );
setEffScaleKey( spep_2 + 20, shuchusen2, 1.37, 1.37 );
setEffScaleKey( spep_2 + 22, shuchusen2, 1.33, 1.33 );
setEffScaleKey( spep_2 + 24, shuchusen2, 1.3, 1.3 );
setEffScaleKey( spep_2 + 58, shuchusen2, 1.3, 1.3 );

setEffRotateKey( spep_2 + 0, shuchusen2, 180 );
setEffRotateKey( spep_2 + 58, shuchusen2, 180 );

setEffAlphaKey( spep_2 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 58, shuchusen2, 255 );

--文字エントリー
ctgyun = entryEffectLife( spep_2 + 10,  10007, 20, 0x100, -1, 0, 104.4, 141.6 );--ギュンッ

setEffMoveKey( spep_2 + 10, ctgyun, 104.4, 141.6 , 0 );
setEffMoveKey( spep_2 + 14, ctgyun, 108.7, 147.7 , 0 );
setEffMoveKey( spep_2 + 16, ctgyun, 112.9, 153.7 , 0 );
setEffMoveKey( spep_2 + 18, ctgyun, 117, 159.7 , 0 );
setEffMoveKey( spep_2 + 20, ctgyun, 121.2, 165.8 , 0 );
setEffMoveKey( spep_2 + 22, ctgyun, 125.3, 171.8 , 0 );
setEffMoveKey( spep_2 + 24, ctgyun, 129.5, 177.8 , 0 );
setEffMoveKey( spep_2 + 26, ctgyun, 131.8, 181.3 , 0 );
setEffMoveKey( spep_2 + 28, ctgyun, 134.2, 184.7 , 0 );
setEffMoveKey( spep_2 + 30, ctgyun, 136.6, 188.2 , 0 );

setEffScaleKey( spep_2 + 10, ctgyun, 1, 1 );
setEffScaleKey( spep_2 + 14, ctgyun, 1.12, 1.12 );
setEffScaleKey( spep_2 + 16, ctgyun, 1.24, 1.24 );
setEffScaleKey( spep_2 + 18, ctgyun, 1.36, 1.36 );
setEffScaleKey( spep_2 + 20, ctgyun, 1.49, 1.49 );
setEffScaleKey( spep_2 + 22, ctgyun, 1.61, 1.61 );
setEffScaleKey( spep_2 + 24, ctgyun, 1.73, 1.73 );
setEffScaleKey( spep_2 + 26, ctgyun, 1.8, 1.8 );
setEffScaleKey( spep_2 + 28, ctgyun, 1.87, 1.87 );
setEffScaleKey( spep_2 + 30, ctgyun, 1.94, 1.94 );

setEffRotateKey( spep_2 + 10, ctgyun, 26.8 );
setEffRotateKey( spep_2 + 14, ctgyun, 27 );
setEffRotateKey( spep_2 + 30, ctgyun, 27 );

setEffAlphaKey( spep_2 + 10, ctgyun, 0 );
setEffAlphaKey( spep_2 + 11, ctgyun, 255 );
setEffAlphaKey( spep_2 + 12, ctgyun, 255 );
setEffAlphaKey( spep_2 + 24, ctgyun, 255 );
setEffAlphaKey( spep_2 + 26, ctgyun, 179 );
setEffAlphaKey( spep_2 + 28, ctgyun, 102 );
setEffAlphaKey( spep_2 + 30, ctgyun, 26 );

-- ** エフェクト等 ** --
entryFade(spep_2+52, 6, 4, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade




--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

SP_dodge = spep_2+30 ; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

pauseAll( SP_dodge, 67);

--キャラクターの固定
setMoveKey(SP_dodge, 1,63.1, -159.5 , 0 );
setScaleKey(SP_dodge , 1, 0.9, 0.9);
setRotateKey(SP_dodge,   1, 0 );

--キャラクターの固定
setMoveKey(SP_dodge+8, 1,63.1, -159.5 , 0 );
setScaleKey(SP_dodge+8 , 1, 0.9, 0.9);
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

--SE
playSe( spep_2+12, 44);

--次の準備
spep_3=spep_2+60;

------------------------------------------------------
--敵を掴む
------------------------------------------------------
--エフェクト再生(前)
grab_f=entryEffectLife(spep_3,SP_03,60,0x100,-1,0,0,0);

setEffMoveKey(spep_3,grab_f,0,0,0);
setEffMoveKey(spep_3+60,grab_f,0,0,0);

setEffScaleKey(spep_3,grab_f,1.0,1.0);
setEffScaleKey(spep_3+60,grab_f,1.0,1.0);

setEffAlphaKey(spep_3,grab_f,255);
setEffAlphaKey(spep_3+60,grab_f,255);

setEffRotateKey(spep_3,grab_f,0);
setEffRotateKey(spep_3+60,grab_f,0);

--エフェクト再生(後)
grab_b=entryEffectLife(spep_3,SP_04,60,0x80,-1,0,0,0);

setEffMoveKey(spep_3,grab_b,0,0,0);
setEffMoveKey(spep_3+60,grab_b,0,0,0);

setEffScaleKey(spep_3,grab_b,1.0,1.0);
setEffScaleKey(spep_3+60,grab_b,1.0,1.0);

setEffAlphaKey(spep_3,grab_b,255);
setEffAlphaKey(spep_3+60,grab_b,255);

setEffRotateKey(spep_3,grab_b,0);
setEffRotateKey(spep_3+60,grab_b,0);


--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 60, 1, 0 );

changeAnime( spep_3 + 0, 1, 100 );
changeAnime( spep_3 + 11, 1, 108 );
changeAnime( spep_3 + 12, 1, 108 );

setMoveKey( spep_3 + 0, 1, 381.8, 450.8 , 0 );
setMoveKey( spep_3 + 2, 1, 329.8, 374.9 , 0 );
setMoveKey( spep_3 + 4, 1, 277.8, 298.9 , 0 );
setMoveKey( spep_3 + 6, 1, 225.9, 223 , 0 );
setMoveKey( spep_3 + 8, 1, 173.9, 147.1 , 0 );
setMoveKey( spep_3 + 11, 1, 64.7, 5.8 , 0 );
setMoveKey( spep_3 + 12, 1, 64.7, 5.8 , 0 );
setMoveKey( spep_3 + 14, 1, 79.4, -13.9 , 0 );
setMoveKey( spep_3 + 16, 1, 80.7, 6 , 0 );
setMoveKey( spep_3 + 18, 1, 66.2, -8.4 , 0 );
setMoveKey( spep_3 + 20, 1, 70.1, 11.6 , 0 );
setMoveKey( spep_3 + 22, 1, 84.8, -8.1 , 0 );
setMoveKey( spep_3 + 24, 1, 86.1, 11.8 , 0 );
setMoveKey( spep_3 + 26, 1, 71.6, -2.6 , 0 );
setMoveKey( spep_3 + 28, 1, 75.5, 17.4 , 0 );
setMoveKey( spep_3 + 30, 1, 90.2, -2.3 , 0 );
setMoveKey( spep_3 + 32, 1, 91.5, 17.6 , 0 );
setMoveKey( spep_3 + 34, 1, 77, 3.2 , 0 );
setMoveKey( spep_3 + 36, 1, 80.9, 23.2 , 0 );
setMoveKey( spep_3 + 38, 1, 95.6, 3.5 , 0 );
setMoveKey( spep_3 + 40, 1, 96.9, 23.4 , 0 );
setMoveKey( spep_3 + 42, 1, 82.4, 9 , 0 );
setMoveKey( spep_3 + 44, 1, 86.3, 29 , 0 );
setMoveKey( spep_3 + 46, 1, 101, 9.3 , 0 );
setMoveKey( spep_3 + 48, 1, 102.3, 29.2 , 0 );
setMoveKey( spep_3 + 50, 1, 87.8, 14.8 , 0 );
setMoveKey( spep_3 + 52, 1, 91.7, 34.8 , 0 );
setMoveKey( spep_3 + 54, 1, 106.4, 15.1 , 0 );
setMoveKey( spep_3 + 56, 1, 107.7, 35 , 0 );
setMoveKey( spep_3 + 58, 1, 93.2, 20.6 , 0 );

setScaleKey( spep_3 + 0, 1, 0.8, 0.8 );
setScaleKey( spep_3 + 2, 1, 0.88, 0.88 );
setScaleKey( spep_3 + 4, 1, 0.97, 0.97 );
setScaleKey( spep_3 + 6, 1, 1.05, 1.05 );
setScaleKey( spep_3 + 8, 1, 1.13, 1.13 );
setScaleKey( spep_3 + 10, 1, 1.13, 1.13 );
setScaleKey( spep_3 + 11, 1, 1.3, 1.3 );
setScaleKey( spep_3 + 12, 1, 1.3, 1.3 );
setScaleKey( spep_3 + 14, 1, 1.3, 1.3 );
setScaleKey( spep_3 + 16, 1, 1.29, 1.29 );
setScaleKey( spep_3 + 22, 1, 1.29, 1.29 );
setScaleKey( spep_3 + 24, 1, 1.28, 1.28 );
setScaleKey( spep_3 + 28, 1, 1.28, 1.28 );
setScaleKey( spep_3 + 30, 1, 1.27, 1.27 );
setScaleKey( spep_3 + 36, 1, 1.27, 1.27 );
setScaleKey( spep_3 + 38, 1, 1.26, 1.26 );
setScaleKey( spep_3 + 42, 1, 1.26, 1.26 );
setScaleKey( spep_3 + 44, 1, 1.25, 1.25 );
setScaleKey( spep_3 + 50, 1, 1.25, 1.25 );
setScaleKey( spep_3 + 52, 1, 1.24, 1.24 );
setScaleKey( spep_3 + 58, 1, 1.24, 1.24 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 + 58, 1, 0 );



--文字エントリー
ctga = entryEffectLife( spep_3 + 10,  10005, 20, 0x100, -1, 0, 0.3, 107.4 );--ガッ

setEffMoveKey( spep_3 + 10, ctga, 0.3, 107.4 , 0 );
setEffMoveKey( spep_3 + 14, ctga, -23, 148.8 , 0 );
setEffMoveKey( spep_3 + 16, ctga, -63.1, 188.7 , 0 );
setEffMoveKey( spep_3 + 18, ctga, -50.7, 189.9 , 0 );
setEffMoveKey( spep_3 + 20, ctga, -63.1, 188.7 , 0 );
setEffMoveKey( spep_3 + 22, ctga, -50.7, 189.9 , 0 );
setEffMoveKey( spep_3 + 24, ctga, -63.1, 188.7 , 0 );
setEffMoveKey( spep_3 + 26, ctga, -50.7, 189.9 , 0 );
setEffMoveKey( spep_3 + 28, ctga, -63.1, 188.7 , 0 );
setEffMoveKey( spep_3 + 30, ctga, -50.7, 189.9 , 0 );

setEffScaleKey( spep_3 + 10, ctga, 0.55, 0.55 );
setEffScaleKey( spep_3 + 14, ctga, 1.07, 1.07 );
setEffScaleKey( spep_3 + 16, ctga, 1.59, 1.59 );
setEffScaleKey( spep_3 + 30, ctga, 1.59, 1.59); 

setEffRotateKey( spep_3 + 10, ctga, -36.4 );
setEffRotateKey( spep_3 + 30, ctga, -36.4 );

setEffAlphaKey( spep_3 + 10, ctga, 0 );
setEffAlphaKey( spep_3 + 11, ctga, 255 );
setEffAlphaKey( spep_3 + 12, ctga, 255 );
setEffAlphaKey( spep_3 + 60, ctga, 255 );

--流線(奥行き)
rhuusen = entryEffectLife( spep_3 + 0,  921, 10, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_3 + 0, rhuusen, 0, 0 , 0 );
setEffMoveKey( spep_3 + 10, rhuusen, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, rhuusen, 1.35, 1.08 );
setEffScaleKey( spep_3 + 10, rhuusen, 1.35, 1.08 );

setEffRotateKey( spep_3 + 0, rhuusen, -50.4 );
setEffRotateKey( spep_3 + 10, rhuusen, -50.4 );

setEffAlphaKey( spep_3 + 0, rhuusen, 255 );
setEffAlphaKey( spep_3 + 10, rhuusen, 255 );

--集中線
shuchusen3 = entryEffectLife( spep_3 + 0,  906, 58, 0x100, -1, 0, 0, 1.8 );

setEffMoveKey( spep_3 + 0, shuchusen3, 0, 1.8 , 0 );
setEffMoveKey( spep_3 + 58, shuchusen3, 0, 1.8 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen3, 1.15, 1.15 );
setEffScaleKey( spep_3 + 58, shuchusen3, 1.15, 1.15 );

setEffRotateKey( spep_3 + 0, shuchusen3, 180 );
setEffRotateKey( spep_3 + 58, shuchusen3, 180 );

setEffAlphaKey( spep_3 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_3 + 58, shuchusen3, 255 );

-- ** エフェクト等 ** --
entryFade(spep_3+52, 6, 4, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--SE
playSe( spep_3, 44);
playSe( spep_3+12, 1001);


--次の準備
spep_4=spep_3+60;

------------------------------------------------------
--ガトリングを飛ばす
------------------------------------------------------
--エフェクト再生
skip2=entryEffectLife(spep_4,SP_05,60,0x100,-1,0,0,0);

setEffMoveKey(spep_4,skip2,0,0,0);
setEffMoveKey(spep_4+60,skip2,0,0,0);

setEffScaleKey(spep_4,skip2,1.0,1.0);
setEffScaleKey(spep_4+60,skip2,1.0,1.0);

setEffAlphaKey(spep_4,skip2,255);
setEffAlphaKey(spep_4+60,skip2,255);

setEffRotateKey(spep_4,skip2,0);
setEffRotateKey(spep_4+60,skip2,0);

--集中線
shuchusen4 = entryEffectLife( spep_4 + 18,  906, 38, 0x100, -1, 0, 320, 173.4 );

setEffMoveKey( spep_4 + 18, shuchusen4, 320, 173.4 , 0 );
setEffMoveKey( spep_4 + 58, shuchusen4, 320, 173.4 , 0 );

setEffScaleKey( spep_4 + 18, shuchusen4, 1.52, 1.4 );
setEffScaleKey( spep_4 + 58, shuchusen4, 1.52, 1.4 );

setEffRotateKey( spep_4 + 18, shuchusen4, 180 );
setEffRotateKey( spep_4 + 58, shuchusen4, 180 );

setEffAlphaKey( spep_4 + 18, shuchusen4, 0 );
setEffAlphaKey( spep_4 + 19, shuchusen4, 255 );
setEffAlphaKey( spep_4 + 20, shuchusen4, 255 );
setEffAlphaKey( spep_4 + 58, shuchusen4, 255 );

--SE
playSe( spep_4+8, 1025);

-- ** エフェクト等 ** --
entryFade(spep_4+52, 6, 4, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_5=spep_4+60;

------------------------------------------------------
--ガトリングを打つ
------------------------------------------------------
--エフェクト再生(前)
hit_f=entryEffectLife(spep_5,SP_06,200,0x100,-1,0,0,0);

setEffMoveKey(spep_5,hit_f,0,0,0);
setEffMoveKey(spep_5+200,hit_f,0,0,0);

setEffScaleKey(spep_5,hit_f,1.0,1.0);
setEffScaleKey(spep_5+200,hit_f,1.0,1.0);

setEffAlphaKey(spep_5,hit_f,255);
setEffAlphaKey(spep_5+200,hit_f,255);

setEffRotateKey(spep_5,hit_f,0);
setEffRotateKey(spep_5+200,hit_f,0);

--エフェクト再生(後)
hit_b=entryEffectLife(spep_5,SP_07,200,0x80,-1,0,0,0);

setEffMoveKey(spep_5,hit_b,0,0,0);
setEffMoveKey(spep_5+200,hit_b,0,0,0);

setEffScaleKey(spep_5,hit_b,1.0,1.0);
setEffScaleKey(spep_5+200,hit_b,1.0,1.0);

setEffAlphaKey(spep_5,hit_b,255);
setEffAlphaKey(spep_5+200,hit_b,255);

setEffRotateKey(spep_5,hit_b,0);
setEffRotateKey(spep_5+200,hit_b,0);


--流線(奥行き)
rhuusen2 = entryEffectLife( spep_5 ,  921, 72, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_5 + 0, rhuusen2, 0, 0 , 0 );
setEffMoveKey( spep_5 + 72, rhuusen2, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, rhuusen2, 1.35, 1.08 );
setEffScaleKey( spep_5 + 72, rhuusen2, 1.35, 1.08 );

setEffRotateKey( spep_5 + 0, rhuusen2, -50.4 );
setEffRotateKey( spep_5 + 72, rhuusen2, -50.4 );

setEffAlphaKey( spep_5 + 0, rhuusen2, 255 );
setEffAlphaKey( spep_5 + 70, rhuusen2, 255 );
setEffAlphaKey( spep_5 + 71, rhuusen2, 255 );
setEffAlphaKey( spep_5 + 72, rhuusen2, 0 );

--流線(下)

rhuusen3 = entryEffectLife( spep_5 ,  914, 198, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_5,  rhuusen3, 0, 0 , 0 );
setEffMoveKey( spep_5+198,  rhuusen3, 0, 0 , 0 );

setEffScaleKey( spep_5 , rhuusen3, 3.74, 1.32 );
setEffScaleKey( spep_5 + 198, rhuusen3, 3.74, 1.32 );

setEffRotateKey( spep_5 , rhuusen3, -90 );
setEffRotateKey( spep_5 + 198, rhuusen3, -90 );

setEffAlphaKey( spep_5 , rhuusen3, 0 );
setEffAlphaKey( spep_5+1 , rhuusen3, 0 );
setEffAlphaKey( spep_5+2 , rhuusen3, 0 );
setEffAlphaKey( spep_5 + 70, rhuusen3, 0 );
setEffAlphaKey( spep_5 + 71, rhuusen3, 0 );
setEffAlphaKey( spep_5 + 72, rhuusen3, 255 );
setEffAlphaKey( spep_5 + 198, rhuusen3, 255 );

--文字エントリー
ctzudododo = entryEffectLife( spep_5 + 16,  10014, 56, 0x100, -1, 0, 134.7, 264.4 );--ズドドド

setEffMoveKey( spep_5 + 16, ctzudododo, 134.7, 264.4 , 0 );
setEffMoveKey( spep_5 + 20, ctzudododo, 131.8, 271 , 0 );
setEffMoveKey( spep_5 + 22, ctzudododo, 148.2, 281.7 , 0 );
setEffMoveKey( spep_5 + 24, ctzudododo, 135.7, 286.2 , 0 );
setEffMoveKey( spep_5 + 26, ctzudododo, 155, 290.4 , 0 );
setEffMoveKey( spep_5 + 28, ctzudododo, 135.7, 286.2 , 0 );
setEffMoveKey( spep_5 + 30, ctzudododo, 155, 290.4 , 0 );
setEffMoveKey( spep_5 + 32, ctzudododo, 135.7, 286.2 , 0 );
setEffMoveKey( spep_5 + 34, ctzudododo, 155, 290.4 , 0 );
setEffMoveKey( spep_5 + 36, ctzudododo, 135.7, 286.2 , 0 );
setEffMoveKey( spep_5 + 38, ctzudododo, 155, 290.4 , 0 );
setEffMoveKey( spep_5 + 40, ctzudododo, 135.7, 286.2 , 0 );
setEffMoveKey( spep_5 + 42, ctzudododo, 155, 290.4 , 0 );
setEffMoveKey( spep_5 + 44, ctzudododo, 135.7, 286.2 , 0 );
setEffMoveKey( spep_5 + 46, ctzudododo, 155, 290.4 , 0 );
setEffMoveKey( spep_5 + 48, ctzudododo, 135.7, 286.2 , 0 );
setEffMoveKey( spep_5 + 50, ctzudododo, 155, 290.4 , 0 );
setEffMoveKey( spep_5 + 52, ctzudododo, 135.7, 286.2 , 0 );
setEffMoveKey( spep_5 + 54, ctzudododo, 155, 290.4 , 0 );
setEffMoveKey( spep_5 + 56, ctzudododo, 135.7, 286.2 , 0 );
setEffMoveKey( spep_5 + 58, ctzudododo, 155, 290.4 , 0 );
setEffMoveKey( spep_5 + 60, ctzudododo, 135.7, 286.2 , 0 );
setEffMoveKey( spep_5 + 62, ctzudododo, 155, 290.4 , 0 );
setEffMoveKey( spep_5 + 64, ctzudododo, 135.7, 286.2 , 0 );
setEffMoveKey( spep_5 + 66, ctzudododo, 155, 290.4 , 0 );

setEffScaleKey( spep_5 + 16, ctzudododo, 0.65, 0.65 );
setEffScaleKey( spep_5 + 20, ctzudododo, 1.29, 1.29 );
setEffScaleKey( spep_5 + 22, ctzudododo, 1.94, 1.94 );
setEffScaleKey( spep_5 + 24, ctzudododo, 2.59, 2.59 );
setEffScaleKey( spep_5 + 72, ctzudododo, 2.59, 2.59 );

setEffRotateKey( spep_5 + 16, ctzudododo, 63.6 );
setEffRotateKey( spep_5 + 20, ctzudododo, 63.4 );
setEffRotateKey( spep_5 + 72, ctzudododo, 63.4 );

setEffAlphaKey( spep_5 + 16, ctzudododo, 0 );
setEffAlphaKey( spep_5 + 17, ctzudododo, 255 );
setEffAlphaKey( spep_5 + 18, ctzudododo, 255 );
setEffAlphaKey( spep_5 + 70, ctzudododo, 255 );
setEffAlphaKey( spep_5 + 71, ctzudododo, 255 );
setEffAlphaKey( spep_5 + 72, ctzudododo, 0 );

setEffShake(spep_5 + 16, ctzudododo,56,5);


--敵の動き
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 82, 1, 1 );

changeAnime( spep_5 + 0, 1, 108 );

setMoveKey( spep_5 + 0, 1, 25.9, 27 , 0 );
setMoveKey( spep_5 + 20, 1, 25.9, 27 , 0 );
setMoveKey( spep_5 + 22, 1, 19.3, 38 , 0 );
setMoveKey( spep_5 + 24, 1, 32.5, 18.2 , 0 );
setMoveKey( spep_5 + 26, 1, 34.7, 31.4 , 0 );
setMoveKey( spep_5 + 28, 1, 19.3, 22.6 , 0 );
setMoveKey( spep_5 + 30, 1, 34.7, 29.2 , 0 );
setMoveKey( spep_5 + 32, 1, 19.3, 38 , 0 );
setMoveKey( spep_5 + 34, 1, 32.5, 18.2 , 0 );
setMoveKey( spep_5 + 36, 1, 34.7, 31.4 , 0 );
setMoveKey( spep_5 + 38, 1, 19.3, 22.6 , 0 );
setMoveKey( spep_5 + 40, 1, 34.7, 29.2 , 0 );
setMoveKey( spep_5 + 42, 1, 19.3, 38 , 0 );
setMoveKey( spep_5 + 44, 1, 32.5, 18.2 , 0 );
setMoveKey( spep_5 + 46, 1, 34.7, 31.4 , 0 );
setMoveKey( spep_5 + 48, 1, 19.3, 22.6 , 0 );
setMoveKey( spep_5 + 50, 1, 34.7, 29.2 , 0 );
setMoveKey( spep_5 + 52, 1, 19.3, 38 , 0 );
setMoveKey( spep_5 + 54, 1, 32.5, 18.2 , 0 );
setMoveKey( spep_5 + 56, 1, 34.7, 31.4 , 0 );
setMoveKey( spep_5 + 58, 1, 19.3, 22.6 , 0 );
setMoveKey( spep_5 + 60, 1, 34.7, 29.2 , 0 );
setMoveKey( spep_5 + 62, 1, 19.3, 38 , 0 );
setMoveKey( spep_5 + 64, 1, 32.5, 18.2 , 0 );
setMoveKey( spep_5 + 66, 1, 34.7, 31.4 , 0 );
setMoveKey( spep_5 + 68, 1, 19.3, 22.6 , 0 );
setMoveKey( spep_5 + 70, 1, 34.7, 190.5 , 0 );
setMoveKey( spep_5 + 72, 1, 19.3, 360.6 , 0 );
setMoveKey( spep_5 + 74, 1, 32.5, 502 , 0 );
setMoveKey( spep_5 + 76, 1, 34.7, 676.7 , 0 );
setMoveKey( spep_5 + 78, 1, 19.3, 829.2 , 0 );
setMoveKey( spep_5 + 80, 1, 34.7, 997 , 0 );
setMoveKey( spep_5 + 82, 1, 19.3, 1167.3 , 0 );

setScaleKey( spep_5 + 0, 1, 1.3, 1.3 );
setScaleKey( spep_5 + 82, 1, 1.3, 1.3 );

setRotateKey( spep_5 + 0, 1, -12 );
setRotateKey( spep_5 + 82, 1, -12 );




--SE
playSe( spep_5, 44);
--for cnt = 0, 60, 3 do
--playSe( spep_5+cnt, SE_13);
--end
for cnt = 0, 40, 3 do
playSe( spep_5+20+cnt, SE_13);
end

playSe( spep_5+58, 8);
playSe( spep_5+140, 1025);
playSe( spep_5+154, 1025);
playSe( spep_5+174, 1025);
playSe( spep_5+194, 1025);

-- ** エフェクト等 ** --
entryFade(spep_5+192, 6, 4, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_6=spep_5+200;

------------------------------------------------------
--たくさん弾が当たる
------------------------------------------------------
--エフェクト再生
bullet=entryEffectLife(spep_6,SP_08,80,0x100,-1,0,0,0);

setEffMoveKey(spep_6,bullet,0,0,0);
setEffMoveKey(spep_6+80,bullet,0,0,0);

setEffScaleKey(spep_6,bullet,1.0,1.0);
setEffScaleKey(spep_6+80,bullet,1.0,1.0);

setEffAlphaKey(spep_6,bullet,255);
setEffAlphaKey(spep_6+80,bullet,255);

setEffRotateKey(spep_6,bullet,0);
setEffRotateKey(spep_6+80,bullet,0);

--集中線
shuchusen5 = entryEffectLife( spep_6 + 0,  906, 78, 0x100, -1, 0, 0, 162 );

setEffMoveKey( spep_6 + 0, shuchusen5, 0, 162 , 0 );
setEffMoveKey( spep_6 + 78, shuchusen5, 0, 162 , 0 );

setEffScaleKey( spep_6 + 0, shuchusen5, 1.3, 1.57 );
setEffScaleKey( spep_6 + 78, shuchusen5, 1.3, 1.57 );

setEffRotateKey( spep_6 + 0, shuchusen5, 180 );
setEffRotateKey( spep_6 + 78, shuchusen5, 180 );

setEffAlphaKey( spep_6 + 0, shuchusen5, 154 );
setEffAlphaKey( spep_6 + 78, shuchusen5, 154 );

-- ** エフェクト等 ** --
entryFade(spep_6+72, 6, 4, 4,255,124,0,255);     -- white fade

--SE
playSe( spep_6, 1023);

--次の準備
spep_7=spep_6+80

------------------------------------------------------
--爆発
------------------------------------------------------
--エフェクト再生
explosion=entryEffect(spep_7,SP_09,0x100,-1,0,0,0);

setEffMoveKey(spep_7,explosion,0,0,0);
setEffMoveKey(spep_7+150,explosion,0,0,0);

setEffScaleKey(spep_7,explosion,1.0,1.0);
setEffScaleKey(spep_7+150,explosion,1.0,1.0);

setEffAlphaKey(spep_7,explosion,255);
setEffAlphaKey(spep_7+150,explosion,255);

setEffRotateKey(spep_7,explosion,0);
setEffRotateKey(spep_7+150,explosion,0);

--集中線
shuchusen6 = entryEffectLife( spep_7 + 0,  906, 148, 0x100, -1, 0, 354.9, 306.1 );

setEffMoveKey( spep_7 + 0, shuchusen6, 0, 306.1 , 0 );
setEffMoveKey( spep_7 + 148, shuchusen6, 0, 306.1 , 0 );

setEffScaleKey( spep_7 + 0, shuchusen6, 1.67, 1.67 );
setEffScaleKey( spep_7 + 148, shuchusen6, 1.67, 1.67 );

setEffRotateKey( spep_7 + 0, shuchusen6, 180 );
setEffRotateKey( spep_7 + 148, shuchusen6, 180 );

setEffAlphaKey( spep_7 + 0, shuchusen6, 255 );
setEffAlphaKey( spep_7 + 148, shuchusen6, 255 );


--SE
playSe( spep_7, 1024);

-- ダメージ表示
dealDamage(spep_7,10);

entryFade( spep_7+130, 10,  12, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_7+140);



else 

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 溜め
------------------------------------------------------
spep_0=0;

--エフェクト再生
tame=entryEffectLife(spep_0,SP_01x,90,0x100,-1,0,0,0);

setEffMoveKey(spep_0,tame,0,0,0);
setEffMoveKey(spep_0+90,tame,0,0,0);

setEffScaleKey(spep_0,tame,1.0,1.0);
setEffScaleKey(spep_0+90,tame,1.0,1.0);

setEffAlphaKey(spep_0,tame,255);
setEffAlphaKey(spep_0+90,tame,255);

setEffRotateKey(spep_0,tame,0);
setEffRotateKey(spep_0+90,tame,0);

--集中線
shuchusen1 = entryEffectLife( spep_0 + 0,  906, 88, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 88, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchusen1, 1.3, 1.3 );
setEffScaleKey( spep_0 + 88, shuchusen1, 1.3, 1.3 );

setEffRotateKey( spep_0 + 0, shuchusen1, 180 );
setEffRotateKey( spep_0 + 88, shuchusen1, 180 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 154 );
setEffAlphaKey( spep_0 + 88, shuchusen1, 154 );


--文字エントリー
ctgogo=entryEffectLife(spep_0+18,190006,70,0x100,-1,-10,520);--ゴゴゴ
setEffMoveKey(spep_0+18,ctgogo,-10,520,0);
setEffMoveKey(spep_0+88,ctgogo,-10,520,0);
setEffScaleKey(spep_0+18, ctgogo, -0.7, 0.7);
setEffScaleKey(spep_0+88, ctgogo, -0.7, 0.7);

setEffAlphaKey( spep_0 + 18, ctgogo, 0 );
setEffAlphaKey( spep_0 + 19, ctgogo, 255 );
setEffAlphaKey( spep_0 + 20, ctgogo, 255 );
setEffAlphaKey( spep_0 + 88, ctgogo, 255 );


--顔カットイン
--speff=entryEffect(spep_0+6,1504,0x100,-1,0,0,0);  --カットイン(顔)
--setEffReplaceTexture(speff,3,2);  --カットイン差し替え
--speff1=entryEffect(spep_0+6,1505,0x100,-1,0,0,0);  --カットイン(セリフ

--SE
playSe( spep_0 + 18, SE_04);

-- ** エフェクト等 ** --
entryFade(spep_0+82, 6, 4, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_1=spep_0+90;

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

------------------------------------------------------
-- 手を飛ばす
------------------------------------------------------
--エフェクト再生
skip=entryEffectLife(spep_2,SP_02x,60,0x100,-1,0,0,0);

setEffMoveKey(spep_2,skip,0,0,0);
setEffMoveKey(spep_2+60,skip,0,0,0);

setEffScaleKey(spep_2,skip,1.0,1.0);
setEffScaleKey(spep_2+60,skip,1.0,1.0);

setEffAlphaKey(spep_2,skip,255);
setEffAlphaKey(spep_2+60,skip,255);

setEffRotateKey(spep_2,skip,0);
setEffRotateKey(spep_2+60,skip,0);

--集中線
shuchusen2 = entryEffectLife( spep_2 + 0,  906, 58, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_2 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 8, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 16, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 24, shuchusen2, -130.3, -116.8 , 0 );
setEffMoveKey( spep_2 + 58, shuchusen2, -130.3, -116.8 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen2, 1.3, 1.3 );
setEffScaleKey( spep_2 + 8, shuchusen2, 1.3, 1.3 );
setEffScaleKey( spep_2 + 10, shuchusen2, 1.4, 1.4 );
setEffScaleKey( spep_2 + 12, shuchusen2, 1.5, 1.5 );
setEffScaleKey( spep_2 + 14, shuchusen2, 1.47, 1.47 );
setEffScaleKey( spep_2 + 16, shuchusen2, 1.43, 1.43 );
setEffScaleKey( spep_2 + 18, shuchusen2, 1.4, 1.4 );
setEffScaleKey( spep_2 + 20, shuchusen2, 1.37, 1.37 );
setEffScaleKey( spep_2 + 22, shuchusen2, 1.33, 1.33 );
setEffScaleKey( spep_2 + 24, shuchusen2, 1.3, 1.3 );
setEffScaleKey( spep_2 + 58, shuchusen2, 1.3, 1.3 );

setEffRotateKey( spep_2 + 0, shuchusen2, 180 );
setEffRotateKey( spep_2 + 58, shuchusen2, 180 );

setEffAlphaKey( spep_2 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 58, shuchusen2, 255 );

--文字エントリー
ctgyun = entryEffectLife( spep_2 + 10,  10007, 20, 0x100, -1, 0, 104.4, 141.6 );--ギュンッ

setEffMoveKey( spep_2 + 10, ctgyun, 104.4, 141.6 , 0 );
setEffMoveKey( spep_2 + 14, ctgyun, 108.7, 147.7 , 0 );
setEffMoveKey( spep_2 + 16, ctgyun, 112.9, 153.7 , 0 );
setEffMoveKey( spep_2 + 18, ctgyun, 117, 159.7 , 0 );
setEffMoveKey( spep_2 + 20, ctgyun, 121.2, 165.8 , 0 );
setEffMoveKey( spep_2 + 22, ctgyun, 125.3, 171.8 , 0 );
setEffMoveKey( spep_2 + 24, ctgyun, 129.5, 177.8 , 0 );
setEffMoveKey( spep_2 + 26, ctgyun, 131.8, 181.3 , 0 );
setEffMoveKey( spep_2 + 28, ctgyun, 134.2, 184.7 , 0 );
setEffMoveKey( spep_2 + 30, ctgyun, 136.6, 188.2 , 0 );

setEffScaleKey( spep_2 + 10, ctgyun, 1, 1 );
setEffScaleKey( spep_2 + 14, ctgyun, 1.12, 1.12 );
setEffScaleKey( spep_2 + 16, ctgyun, 1.24, 1.24 );
setEffScaleKey( spep_2 + 18, ctgyun, 1.36, 1.36 );
setEffScaleKey( spep_2 + 20, ctgyun, 1.49, 1.49 );
setEffScaleKey( spep_2 + 22, ctgyun, 1.61, 1.61 );
setEffScaleKey( spep_2 + 24, ctgyun, 1.73, 1.73 );
setEffScaleKey( spep_2 + 26, ctgyun, 1.8, 1.8 );
setEffScaleKey( spep_2 + 28, ctgyun, 1.87, 1.87 );
setEffScaleKey( spep_2 + 30, ctgyun, 1.94, 1.94 );

setEffRotateKey( spep_2 + 10, ctgyun, 26.8 );
setEffRotateKey( spep_2 + 14, ctgyun, 27 );
setEffRotateKey( spep_2 + 30, ctgyun, 27 );

setEffAlphaKey( spep_2 + 10, ctgyun, 0 );
setEffAlphaKey( spep_2 + 11, ctgyun, 255 );
setEffAlphaKey( spep_2 + 12, ctgyun, 255 );
setEffAlphaKey( spep_2 + 24, ctgyun, 255 );
setEffAlphaKey( spep_2 + 26, ctgyun, 179 );
setEffAlphaKey( spep_2 + 28, ctgyun, 102 );
setEffAlphaKey( spep_2 + 30, ctgyun, 26 );

-- ** エフェクト等 ** --
entryFade(spep_2+52, 6, 4, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade



--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

SP_dodge = spep_2+30 ; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

pauseAll( SP_dodge, 67);

--キャラクターの固定
setMoveKey(SP_dodge, 1,63.1, -159.5 , 0 );
setScaleKey(SP_dodge , 1, 0.9, 0.9);
setRotateKey(SP_dodge,   1, 0 );

--キャラクターの固定
setMoveKey(SP_dodge+8, 1,63.1, -159.5 , 0 );
setScaleKey(SP_dodge+8 , 1, 0.9, 0.9);
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

--SE
playSe( spep_2+12, 44);


--次の準備
spep_3=spep_2+60;

------------------------------------------------------
--敵を掴む
------------------------------------------------------
--エフェクト再生(前)
grab_f=entryEffectLife(spep_3,SP_03x,60,0x100,-1,0,0,0);

setEffMoveKey(spep_3,grab_f,0,0,0);
setEffMoveKey(spep_3+60,grab_f,0,0,0);

setEffScaleKey(spep_3,grab_f,1.0,1.0);
setEffScaleKey(spep_3+60,grab_f,1.0,1.0);

setEffAlphaKey(spep_3,grab_f,255);
setEffAlphaKey(spep_3+60,grab_f,255);

setEffRotateKey(spep_3,grab_f,0);
setEffRotateKey(spep_3+60,grab_f,0);

--エフェクト再生(後)
grab_b=entryEffectLife(spep_3,SP_04x,60,0x80,-1,0,0,0);

setEffMoveKey(spep_3,grab_b,0,0,0);
setEffMoveKey(spep_3+60,grab_b,0,0,0);

setEffScaleKey(spep_3,grab_b,1.0,1.0);
setEffScaleKey(spep_3+60,grab_b,1.0,1.0);

setEffAlphaKey(spep_3,grab_b,255);
setEffAlphaKey(spep_3+60,grab_b,255);

setEffRotateKey(spep_3,grab_b,0);
setEffRotateKey(spep_3+60,grab_b,0);


--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 60, 1, 0 );

changeAnime( spep_3 + 0, 1, 100 );
changeAnime( spep_3 + 11, 1, 108 );
changeAnime( spep_3 + 12, 1, 108 );

setMoveKey( spep_3 + 0, 1, 381.8, 450.8 , 0 );
setMoveKey( spep_3 + 2, 1, 329.8, 374.9 , 0 );
setMoveKey( spep_3 + 4, 1, 277.8, 298.9 , 0 );
setMoveKey( spep_3 + 6, 1, 225.9, 223 , 0 );
setMoveKey( spep_3 + 8, 1, 173.9, 147.1 , 0 );
setMoveKey( spep_3 + 11, 1, 64.7, 5.8 , 0 );
setMoveKey( spep_3 + 12, 1, 64.7, 5.8 , 0 );
setMoveKey( spep_3 + 14, 1, 79.4, -13.9 , 0 );
setMoveKey( spep_3 + 16, 1, 80.7, 6 , 0 );
setMoveKey( spep_3 + 18, 1, 66.2, -8.4 , 0 );
setMoveKey( spep_3 + 20, 1, 70.1, 11.6 , 0 );
setMoveKey( spep_3 + 22, 1, 84.8, -8.1 , 0 );
setMoveKey( spep_3 + 24, 1, 86.1, 11.8 , 0 );
setMoveKey( spep_3 + 26, 1, 71.6, -2.6 , 0 );
setMoveKey( spep_3 + 28, 1, 75.5, 17.4 , 0 );
setMoveKey( spep_3 + 30, 1, 90.2, -2.3 , 0 );
setMoveKey( spep_3 + 32, 1, 91.5, 17.6 , 0 );
setMoveKey( spep_3 + 34, 1, 77, 3.2 , 0 );
setMoveKey( spep_3 + 36, 1, 80.9, 23.2 , 0 );
setMoveKey( spep_3 + 38, 1, 95.6, 3.5 , 0 );
setMoveKey( spep_3 + 40, 1, 96.9, 23.4 , 0 );
setMoveKey( spep_3 + 42, 1, 82.4, 9 , 0 );
setMoveKey( spep_3 + 44, 1, 86.3, 29 , 0 );
setMoveKey( spep_3 + 46, 1, 101, 9.3 , 0 );
setMoveKey( spep_3 + 48, 1, 102.3, 29.2 , 0 );
setMoveKey( spep_3 + 50, 1, 87.8, 14.8 , 0 );
setMoveKey( spep_3 + 52, 1, 91.7, 34.8 , 0 );
setMoveKey( spep_3 + 54, 1, 106.4, 15.1 , 0 );
setMoveKey( spep_3 + 56, 1, 107.7, 35 , 0 );
setMoveKey( spep_3 + 58, 1, 93.2, 20.6 , 0 );

setScaleKey( spep_3 + 0, 1, 0.8, 0.8 );
setScaleKey( spep_3 + 2, 1, 0.88, 0.88 );
setScaleKey( spep_3 + 4, 1, 0.97, 0.97 );
setScaleKey( spep_3 + 6, 1, 1.05, 1.05 );
setScaleKey( spep_3 + 8, 1, 1.13, 1.13 );
setScaleKey( spep_3 + 10, 1, 1.13, 1.13 );
setScaleKey( spep_3 + 11, 1, 1.3, 1.3 );
setScaleKey( spep_3 + 12, 1, 1.3, 1.3 );
setScaleKey( spep_3 + 14, 1, 1.3, 1.3 );
setScaleKey( spep_3 + 16, 1, 1.29, 1.29 );
setScaleKey( spep_3 + 22, 1, 1.29, 1.29 );
setScaleKey( spep_3 + 24, 1, 1.28, 1.28 );
setScaleKey( spep_3 + 28, 1, 1.28, 1.28 );
setScaleKey( spep_3 + 30, 1, 1.27, 1.27 );
setScaleKey( spep_3 + 36, 1, 1.27, 1.27 );
setScaleKey( spep_3 + 38, 1, 1.26, 1.26 );
setScaleKey( spep_3 + 42, 1, 1.26, 1.26 );
setScaleKey( spep_3 + 44, 1, 1.25, 1.25 );
setScaleKey( spep_3 + 50, 1, 1.25, 1.25 );
setScaleKey( spep_3 + 52, 1, 1.24, 1.24 );
setScaleKey( spep_3 + 58, 1, 1.24, 1.24 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 + 58, 1, 0 );



--文字エントリー
ctga = entryEffectLife( spep_3 + 10,  10005, 20, 0x100, -1, 0, 0.3, 107.4 );--ガッ

setEffMoveKey( spep_3 + 10, ctga, 0.3, 107.4 , 0 );
setEffMoveKey( spep_3 + 14, ctga, -23, 148.8 , 0 );
setEffMoveKey( spep_3 + 16, ctga, -63.1, 188.7 , 0 );
setEffMoveKey( spep_3 + 18, ctga, -50.7, 189.9 , 0 );
setEffMoveKey( spep_3 + 20, ctga, -63.1, 188.7 , 0 );
setEffMoveKey( spep_3 + 22, ctga, -50.7, 189.9 , 0 );
setEffMoveKey( spep_3 + 24, ctga, -63.1, 188.7 , 0 );
setEffMoveKey( spep_3 + 26, ctga, -50.7, 189.9 , 0 );
setEffMoveKey( spep_3 + 28, ctga, -63.1, 188.7 , 0 );
setEffMoveKey( spep_3 + 30, ctga, -50.7, 189.9 , 0 );

setEffScaleKey( spep_3 + 10, ctga, 0.55, 0.55 );
setEffScaleKey( spep_3 + 14, ctga, 1.07, 1.07 );
setEffScaleKey( spep_3 + 16, ctga, 1.59, 1.59 );
setEffScaleKey( spep_3 + 30, ctga, 1.59, 1.59); 

setEffRotateKey( spep_3 + 10, ctga, -36.4 );
setEffRotateKey( spep_3 + 30, ctga, -36.4 );

setEffAlphaKey( spep_3 + 10, ctga, 0 );
setEffAlphaKey( spep_3 + 11, ctga, 255 );
setEffAlphaKey( spep_3 + 12, ctga, 255 );
setEffAlphaKey( spep_3 + 60, ctga, 255 );

--流線(奥行き)
rhuusen = entryEffectLife( spep_3 + 0,  921, 10, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_3 + 0, rhuusen, 0, 0 , 0 );
setEffMoveKey( spep_3 + 10, rhuusen, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, rhuusen, 1.35, 1.08 );
setEffScaleKey( spep_3 + 10, rhuusen, 1.35, 1.08 );

setEffRotateKey( spep_3 + 0, rhuusen, -50.4 );
setEffRotateKey( spep_3 + 10, rhuusen, -50.4 );

setEffAlphaKey( spep_3 + 0, rhuusen, 255 );
setEffAlphaKey( spep_3 + 10, rhuusen, 255 );

--集中線
shuchusen3 = entryEffectLife( spep_3 + 0,  906, 58, 0x100, -1, 0, 0, 1.8 );

setEffMoveKey( spep_3 + 0, shuchusen3, 0, 1.8 , 0 );
setEffMoveKey( spep_3 + 58, shuchusen3, 0, 1.8 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen3, 1.15, 1.15 );
setEffScaleKey( spep_3 + 58, shuchusen3, 1.15, 1.15 );

setEffRotateKey( spep_3 + 0, shuchusen3, 180 );
setEffRotateKey( spep_3 + 58, shuchusen3, 180 );

setEffAlphaKey( spep_3 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_3 + 58, shuchusen3, 255 );

-- ** エフェクト等 ** --
entryFade(spep_3+52, 6, 4, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--SE
playSe( spep_3, 44);
playSe( spep_3+12, 1001);


--次の準備
spep_4=spep_3+60;

------------------------------------------------------
--ガトリングを飛ばす
------------------------------------------------------
--エフェクト再生
skip2=entryEffectLife(spep_4,SP_05x,60,0x100,-1,0,0,0);

setEffMoveKey(spep_4,skip2,0,0,0);
setEffMoveKey(spep_4+60,skip2,0,0,0);

setEffScaleKey(spep_4,skip2,1.0,1.0);
setEffScaleKey(spep_4+60,skip2,1.0,1.0);

setEffAlphaKey(spep_4,skip2,255);
setEffAlphaKey(spep_4+60,skip2,255);

setEffRotateKey(spep_4,skip2,0);
setEffRotateKey(spep_4+60,skip2,0);

--集中線
shuchusen4 = entryEffectLife( spep_4 + 18,  906, 38, 0x100, -1, 0, 320, 173.4 );

setEffMoveKey( spep_4 + 18, shuchusen4, 320, 173.4 , 0 );
setEffMoveKey( spep_4 + 58, shuchusen4, 320, 173.4 , 0 );

setEffScaleKey( spep_4 + 18, shuchusen4, 1.52, 1.4 );
setEffScaleKey( spep_4 + 58, shuchusen4, 1.52, 1.4 );

setEffRotateKey( spep_4 + 18, shuchusen4, 180 );
setEffRotateKey( spep_4 + 58, shuchusen4, 180 );

setEffAlphaKey( spep_4 + 18, shuchusen4, 0 );
setEffAlphaKey( spep_4 + 19, shuchusen4, 255 );
setEffAlphaKey( spep_4 + 20, shuchusen4, 255 );
setEffAlphaKey( spep_4 + 58, shuchusen4, 255 );

--SE
playSe( spep_4+8, 1025);

-- ** エフェクト等 ** --
entryFade(spep_4+52, 6, 4, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_5=spep_4+60;

------------------------------------------------------
--ガトリングを打つ
------------------------------------------------------
--エフェクト再生(前)
hit_f=entryEffectLife(spep_5,SP_06x,200,0x100,-1,0,0,0);

setEffMoveKey(spep_5,hit_f,0,0,0);
setEffMoveKey(spep_5+200,hit_f,0,0,0);

setEffScaleKey(spep_5,hit_f,1.0,1.0);
setEffScaleKey(spep_5+200,hit_f,1.0,1.0);

setEffAlphaKey(spep_5,hit_f,255);
setEffAlphaKey(spep_5+200,hit_f,255);

setEffRotateKey(spep_5,hit_f,0);
setEffRotateKey(spep_5+200,hit_f,0);

--エフェクト再生(後)
hit_b=entryEffectLife(spep_5,SP_07x,200,0x80,-1,0,0,0);

setEffMoveKey(spep_5,hit_b,0,0,0);
setEffMoveKey(spep_5+200,hit_b,0,0,0);

setEffScaleKey(spep_5,hit_b,1.0,1.0);
setEffScaleKey(spep_5+200,hit_b,1.0,1.0);

setEffAlphaKey(spep_5,hit_b,255);
setEffAlphaKey(spep_5+200,hit_b,255);

setEffRotateKey(spep_5,hit_b,0);
setEffRotateKey(spep_5+200,hit_b,0);


--流線(奥行き)
rhuusen2 = entryEffectLife( spep_5 ,  921, 72, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_5 + 0, rhuusen2, 0, 0 , 0 );
setEffMoveKey( spep_5 + 72, rhuusen2, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, rhuusen2, 1.35, 1.08 );
setEffScaleKey( spep_5 + 72, rhuusen2, 1.35, 1.08 );

setEffRotateKey( spep_5 + 0, rhuusen2, -50.4 );
setEffRotateKey( spep_5 + 72, rhuusen2, -50.4 );

setEffAlphaKey( spep_5 + 0, rhuusen2, 255 );
setEffAlphaKey( spep_5 + 70, rhuusen2, 255 );
setEffAlphaKey( spep_5 + 71, rhuusen2, 255 );
setEffAlphaKey( spep_5 + 72, rhuusen2, 0 );

--流線(下)

rhuusen3 = entryEffectLife( spep_5 ,  914, 198, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_5,  rhuusen3, 0, 0 , 0 );
setEffMoveKey( spep_5+198,  rhuusen3, 0, 0 , 0 );

setEffScaleKey( spep_5 , rhuusen3, 3.74, 1.32 );
setEffScaleKey( spep_5 + 198, rhuusen3, 3.74, 1.32 );

setEffRotateKey( spep_5 , rhuusen3, -90 );
setEffRotateKey( spep_5 + 198, rhuusen3, -90 );

setEffAlphaKey( spep_5 , rhuusen3, 0 );
setEffAlphaKey( spep_5+1 , rhuusen3, 0 );
setEffAlphaKey( spep_5+2 , rhuusen3, 0 );
setEffAlphaKey( spep_5 + 70, rhuusen3, 0 );
setEffAlphaKey( spep_5 + 71, rhuusen3, 0 );
setEffAlphaKey( spep_5 + 72, rhuusen3, 255 );
setEffAlphaKey( spep_5 + 198, rhuusen3, 255 );

--文字エントリー
ctzudododo = entryEffectLife( spep_5 + 16,  10014, 56, 0x100, -1, 0, 34.7, 264.4 );--ズドドド

setEffMoveKey( spep_5 + 16, ctzudododo, 34.7, 264.4 , 0 );
setEffMoveKey( spep_5 + 20, ctzudododo, 31.8, 271 , 0 );
setEffMoveKey( spep_5 + 22, ctzudododo, 48.2, 281.7 , 0 );
setEffMoveKey( spep_5 + 24, ctzudododo, 35.7, 286.2 , 0 );
setEffMoveKey( spep_5 + 26, ctzudododo, 55, 290.4 , 0 );
setEffMoveKey( spep_5 + 28, ctzudododo, 35.7, 286.2 , 0 );
setEffMoveKey( spep_5 + 30, ctzudododo, 55, 290.4 , 0 );
setEffMoveKey( spep_5 + 32, ctzudododo, 35.7, 286.2 , 0 );
setEffMoveKey( spep_5 + 34, ctzudododo, 55, 290.4 , 0 );
setEffMoveKey( spep_5 + 36, ctzudododo, 35.7, 286.2 , 0 );
setEffMoveKey( spep_5 + 38, ctzudododo, 55, 290.4 , 0 );
setEffMoveKey( spep_5 + 40, ctzudododo, 35.7, 286.2 , 0 );
setEffMoveKey( spep_5 + 42, ctzudododo, 55, 290.4 , 0 );
setEffMoveKey( spep_5 + 44, ctzudododo, 35.7, 286.2 , 0 );
setEffMoveKey( spep_5 + 46, ctzudododo, 55, 290.4 , 0 );
setEffMoveKey( spep_5 + 48, ctzudododo, 35.7, 286.2 , 0 );
setEffMoveKey( spep_5 + 50, ctzudododo, 55, 290.4 , 0 );
setEffMoveKey( spep_5 + 52, ctzudododo, 35.7, 286.2 , 0 );
setEffMoveKey( spep_5 + 54, ctzudododo, 55, 290.4 , 0 );
setEffMoveKey( spep_5 + 56, ctzudododo, 35.7, 286.2 , 0 );
setEffMoveKey( spep_5 + 58, ctzudododo, 55, 290.4 , 0 );
setEffMoveKey( spep_5 + 60, ctzudododo, 35.7, 286.2 , 0 );
setEffMoveKey( spep_5 + 62, ctzudododo, 55, 290.4 , 0 );
setEffMoveKey( spep_5 + 64, ctzudododo, 35.7, 286.2 , 0 );
setEffMoveKey( spep_5 + 66, ctzudododo, 55, 290.4 , 0 );

setEffScaleKey( spep_5 + 16, ctzudododo, 0.65, 0.65 );
setEffScaleKey( spep_5 + 20, ctzudododo, 1.29, 1.29 );
setEffScaleKey( spep_5 + 22, ctzudododo, 1.94, 1.94 );
setEffScaleKey( spep_5 + 24, ctzudododo, 2.59, 2.59 );
setEffScaleKey( spep_5 + 72, ctzudododo, 2.59, 2.59 );

setEffRotateKey( spep_5 + 16, ctzudododo, -3.6 );
setEffRotateKey( spep_5 + 20, ctzudododo, -3.4 );
setEffRotateKey( spep_5 + 72, ctzudododo, -3.4 );

setEffAlphaKey( spep_5 + 16, ctzudododo, 0 );
setEffAlphaKey( spep_5 + 17, ctzudododo, 255 );
setEffAlphaKey( spep_5 + 18, ctzudododo, 255 );
setEffAlphaKey( spep_5 + 70, ctzudododo, 255 );
setEffAlphaKey( spep_5 + 71, ctzudododo, 255 );
setEffAlphaKey( spep_5 + 72, ctzudododo, 0 );

setEffShake(spep_5 + 16, ctzudododo,56,5);

--敵の動き
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 82, 1, 1 );

changeAnime( spep_5 + 0, 1, 108 );

setMoveKey( spep_5 + 0, 1, 25.9, 27 , 0 );
setMoveKey( spep_5 + 20, 1, 25.9, 27 , 0 );
setMoveKey( spep_5 + 22, 1, 19.3, 38 , 0 );
setMoveKey( spep_5 + 24, 1, 32.5, 18.2 , 0 );
setMoveKey( spep_5 + 26, 1, 34.7, 31.4 , 0 );
setMoveKey( spep_5 + 28, 1, 19.3, 22.6 , 0 );
setMoveKey( spep_5 + 30, 1, 34.7, 29.2 , 0 );
setMoveKey( spep_5 + 32, 1, 19.3, 38 , 0 );
setMoveKey( spep_5 + 34, 1, 32.5, 18.2 , 0 );
setMoveKey( spep_5 + 36, 1, 34.7, 31.4 , 0 );
setMoveKey( spep_5 + 38, 1, 19.3, 22.6 , 0 );
setMoveKey( spep_5 + 40, 1, 34.7, 29.2 , 0 );
setMoveKey( spep_5 + 42, 1, 19.3, 38 , 0 );
setMoveKey( spep_5 + 44, 1, 32.5, 18.2 , 0 );
setMoveKey( spep_5 + 46, 1, 34.7, 31.4 , 0 );
setMoveKey( spep_5 + 48, 1, 19.3, 22.6 , 0 );
setMoveKey( spep_5 + 50, 1, 34.7, 29.2 , 0 );
setMoveKey( spep_5 + 52, 1, 19.3, 38 , 0 );
setMoveKey( spep_5 + 54, 1, 32.5, 18.2 , 0 );
setMoveKey( spep_5 + 56, 1, 34.7, 31.4 , 0 );
setMoveKey( spep_5 + 58, 1, 19.3, 22.6 , 0 );
setMoveKey( spep_5 + 60, 1, 34.7, 29.2 , 0 );
setMoveKey( spep_5 + 62, 1, 19.3, 38 , 0 );
setMoveKey( spep_5 + 64, 1, 32.5, 18.2 , 0 );
setMoveKey( spep_5 + 66, 1, 34.7, 31.4 , 0 );
setMoveKey( spep_5 + 68, 1, 19.3, 22.6 , 0 );
setMoveKey( spep_5 + 70, 1, 34.7, 190.5 , 0 );
setMoveKey( spep_5 + 72, 1, 19.3, 360.6 , 0 );
setMoveKey( spep_5 + 74, 1, 32.5, 502 , 0 );
setMoveKey( spep_5 + 76, 1, 34.7, 676.7 , 0 );
setMoveKey( spep_5 + 78, 1, 19.3, 829.2 , 0 );
setMoveKey( spep_5 + 80, 1, 34.7, 997 , 0 );
setMoveKey( spep_5 + 82, 1, 19.3, 1167.3 , 0 );

setScaleKey( spep_5 + 0, 1, 1.3, 1.3 );
setScaleKey( spep_5 + 82, 1, 1.3, 1.3 );

setRotateKey( spep_5 + 0, 1, -12 );
setRotateKey( spep_5 + 82, 1, -12 );




--SE
playSe( spep_5, 44);
--for cnt = 0, 60, 3 do
--playSe( spep_5+cnt, SE_13);
--end
for cnt = 0, 40, 3 do
playSe( spep_5+20+cnt, SE_13);
end

playSe( spep_5+58, 8);
playSe( spep_5+140, 1025);
playSe( spep_5+154, 1025);
playSe( spep_5+174, 1025);
playSe( spep_5+194, 1025);

-- ** エフェクト等 ** --
entryFade(spep_5+192, 6, 4, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_6=spep_5+200;

------------------------------------------------------
--たくさん弾が当たる
------------------------------------------------------
--エフェクト再生
bullet=entryEffectLife(spep_6,SP_08x,80,0x100,-1,0,0,0);

setEffMoveKey(spep_6,bullet,0,0,0);
setEffMoveKey(spep_6+80,bullet,0,0,0);

setEffScaleKey(spep_6,bullet,1.0,1.0);
setEffScaleKey(spep_6+80,bullet,1.0,1.0);

setEffAlphaKey(spep_6,bullet,255);
setEffAlphaKey(spep_6+80,bullet,255);

setEffRotateKey(spep_6,bullet,0);
setEffRotateKey(spep_6+80,bullet,0);

--集中線
shuchusen5 = entryEffectLife( spep_6 + 0,  906, 78, 0x100, -1, 0, 0, 162 );

setEffMoveKey( spep_6 + 0, shuchusen5, 0, 162 , 0 );
setEffMoveKey( spep_6 + 78, shuchusen5, 0, 162 , 0 );

setEffScaleKey( spep_6 + 0, shuchusen5, 1.3, 1.57 );
setEffScaleKey( spep_6 + 78, shuchusen5, 1.3, 1.57 );

setEffRotateKey( spep_6 + 0, shuchusen5, 180 );
setEffRotateKey( spep_6 + 78, shuchusen5, 180 );

setEffAlphaKey( spep_6 + 0, shuchusen5, 154 );
setEffAlphaKey( spep_6 + 78, shuchusen5, 154 );

-- ** エフェクト等 ** --
entryFade(spep_6+72, 6, 4, 4,255,124,0,255);     -- white fade

--SE
playSe( spep_6, 1023);

--次の準備
spep_7=spep_6+80

------------------------------------------------------
--爆発
------------------------------------------------------
--エフェクト再生
explosion=entryEffect(spep_7,SP_09x,0x100,-1,0,0,0);

setEffMoveKey(spep_7,explosion,0,0,0);
setEffMoveKey(spep_7+150,explosion,0,0,0);

setEffScaleKey(spep_7,explosion,1.0,1.0);
setEffScaleKey(spep_7+150,explosion,1.0,1.0);

setEffAlphaKey(spep_7,explosion,255);
setEffAlphaKey(spep_7+150,explosion,255);

setEffRotateKey(spep_7,explosion,0);
setEffRotateKey(spep_7+150,explosion,0);

--集中線
shuchusen6 = entryEffectLife( spep_7 + 0,  906, 148, 0x100, -1, 0, 354.9, 306.1 );

setEffMoveKey( spep_7 + 0, shuchusen6, 0, 306.1 , 0 );
setEffMoveKey( spep_7 + 148, shuchusen6, 0, 306.1 , 0 );

setEffScaleKey( spep_7 + 0, shuchusen6, 1.67, 1.67 );
setEffScaleKey( spep_7 + 148, shuchusen6, 1.67, 1.67 );

setEffRotateKey( spep_7 + 0, shuchusen6, 180 );
setEffRotateKey( spep_7 + 148, shuchusen6, 180 );

setEffAlphaKey( spep_7 + 0, shuchusen6, 255 );
setEffAlphaKey( spep_7 + 148, shuchusen6, 255 );


--SE
playSe( spep_7, 1024);

-- ダメージ表示
dealDamage(spep_7,10);

entryFade( spep_7+130, 10,  12, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_7+140);
end




