--1015180 ヤムチャ＆プーアル_狼牙風風拳
--sp_effect_b1_00053

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
SP_01=	152408	;--	ジェットモモンガ
SP_02=	152409	;--	蹴り上げ
SP_03=	152410	;--	蹴り上げ　奥
SP_04=	152411	;--	狼牙風風拳
SP_05=	152412	;--	狼牙風風拳　奥
SP_06=	152413	;--	被弾
SP_07=	152414	;--	被弾　奥

--敵
SP_01x=	152408	;--	ジェットモモンガ	
SP_02x=	152415	;--	蹴り上げ	(敵)
SP_03x=	152410	;--	蹴り上げ　奥	
SP_04x=	152416	;--	狼牙風風拳	(敵)
SP_05x=	152412	;--	狼牙風風拳　奥	
SP_06x=	152413	;--	被弾	
SP_07x=	152414	;--	被弾　奥	
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
--運転
------------------------------------------------------

spep_0=0;

--エフェクト
operation=entryEffectLife(spep_0,SP_01,220,0x100,-1,0,0,0);

setEffMoveKey( spep_0 + 0, operation, 0, 0 , 0 );
setEffMoveKey( spep_0 + 220, operation, 0, 0 , 0 );

setEffScaleKey(spep_0,operation,1.0,1.0);
setEffScaleKey(spep_0+220,operation,1.0,1.0);

setEffRotateKey(spep_0,operation,0);
setEffRotateKey(spep_0+220,operation,0);

setEffAlphaKey(spep_0,operation,255);
setEffAlphaKey(spep_0+220,operation,255);

--se
SE1=playSe(spep_0,1044);--地響き

--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

SP_dodge = spep_0+130 ; --エンドフェイズのフレーム数を置き換える

stopSe(SP_dodge-12,SE1,0);
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

--顔カットイン
speff=entryEffect(spep_0+86,1504,0x100,-1,0,0,0);  --カットイン(顔)
setEffReplaceTexture(speff,3,2);  --カットイン差し替え
speff1=entryEffect(spep_0+86,1505,0x100,-1,0,0,0);  --カットイン(セリフ)
setEffReplaceTexture(speff1,4,5);  --セリフカットイン差し替え

--ゴゴゴ
ctgogo=entryEffectLife(spep_0+98,190006,70,0x100,-1,0,520);--ゴゴゴ

setEffMoveKey(spep_0+98,ctgogo,0,520,0);
setEffMoveKey(spep_0+168,ctgogo,0,520,0);

setEffScaleKey(spep_0+98, ctgogo, 0.7, 0.7);
setEffScaleKey(spep_0+168, ctgogo, 0.7, 0.7);

setEffAlphaKey( spep_0 + 98, ctgogo, 0 );
setEffAlphaKey( spep_0 + 99, ctgogo, 255 );
setEffAlphaKey( spep_0 + 100, ctgogo, 255 );
setEffAlphaKey( spep_0 + 168, ctgogo, 255 );

setEffRotateKey(spep_0+98,ctgogo,0);
setEffRotateKey(spep_0+168,ctgogo,0);

-- ** エフェクト等 ** --
entryFade(spep_0+212, 4, 10, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- whit_fe fade

--se
playSe( spep_0+98, SE_04); --ゴゴゴ
playSe( spep_0+190, 1025); --ジャンプ
stopSe(spep_0+220,SE1,0);


--次の準備
spep_1=spep_0+220;

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
--蹴り上げ
--------------------------------------
--エフェクト(前)
kick_f=entryEffectLife(spep_2,SP_02,146,0x100,-1,0,0,0);

setEffMoveKey( spep_2 + 0, kick_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 146, kick_f, 0, 0 , 0 );

setEffScaleKey(spep_2,kick_f,1.0,1.0);
setEffScaleKey(spep_2+146,kick_f,1.0,1.0);

setEffRotateKey(spep_2,kick_f,0);
setEffRotateKey(spep_2+146,kick_f,0);

setEffAlphaKey(spep_2,kick_f,255);
setEffAlphaKey(spep_2+146,kick_f,255);

--エフェクト(後)
kick_b=entryEffectLife(spep_2,SP_03,146,0x80,-1,0,0,0);

setEffMoveKey( spep_2 + 0, kick_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 146, kick_b, 0, 0 , 0 );

setEffScaleKey(spep_2,kick_b,1.0,1.0);
setEffScaleKey(spep_2+146,kick_b,1.0,1.0);

setEffRotateKey(spep_2,kick_b,0);
setEffRotateKey(spep_2+146,kick_b,0);

setEffAlphaKey(spep_2,kick_b,255);
setEffAlphaKey(spep_2+146,kick_b,255);

--敵の動き
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 48, 1, 0);
setDisp( spep_2 + 96, 1, 1);
setDisp( spep_2 + 138, 1, 0);

changeAnime( spep_2 + 0, 1, 104 );
changeAnime( spep_2 + 21, 1, 106 );--24
changeAnime( spep_2 + 22, 1, 106 );--24
changeAnime( spep_2 + 124, 1, 107 );

--setMoveKey( spep_2 + 0, 1, 462, -167.7 , 0 );
setMoveKey( spep_2  , 1, 457.7, -167.7 , 0 );
setMoveKey( spep_2 + 2, 1, 445, -167.7 , 0 );
setMoveKey( spep_2 + 4, 1, 423.7, -167.7 , 0 );
setMoveKey( spep_2 + 6, 1, 394, -167.7 , 0 );
setMoveKey( spep_2 + 8, 1, 355.7, -167.7 , 0 );
setMoveKey( spep_2 + 10, 1, 308.9, -167.7 , 0 );
setMoveKey( spep_2 + 12, 1, 253.7, -167.7 , 0 );
setMoveKey( spep_2 + 14, 1, 189.9, -167.7 , 0 );
setMoveKey( spep_2 + 16, 1, 117.7, -167.7 , 0 );
setMoveKey( spep_2 + 18, 1, 36.9, -167.7 , 0 );
setMoveKey( spep_2 + 20, 1, 34.9, -167.8 , 0 );
setMoveKey( spep_2 + 22, 1, -10.2, -134.9 , 0 );
setMoveKey( spep_2 + 24, 1, 3.5, -122.3 , 0 );
setMoveKey( spep_2 + 26, 1, -9.2, -128 , 0 );
setMoveKey( spep_2 + 28, 1, -2.7, -116.1 , 0 );
setMoveKey( spep_2 + 30, 1, -11, -120.4 , 0 );
setMoveKey( spep_2 + 32, 1, 121.2, 100.7 , 0 );
setMoveKey( spep_2 + 34, 1, 232.4, 292.4 , 0 );
setMoveKey( spep_2 + 36, 1, 326.7, 454.5 , 0 );
setMoveKey( spep_2 + 38, 1, 404, 587.2 , 0 );
setMoveKey( spep_2 + 40, 1, 464, 690.4 , 0 );
setMoveKey( spep_2 + 42, 1, 507, 764.1 , 0 );
setMoveKey( spep_2 + 44, 1, 532.7, 808.4 , 0 );
setMoveKey( spep_2 + 46, 1, 541.3, 823.1 , 0 );

setMoveKey( spep_2 + 96, 1, -148.5, -827.4 , 0 );
setMoveKey( spep_2 + 98, 1, -121, -720.8 , 0 );
setMoveKey( spep_2 + 100, 1, -95.3, -620.9 , 0 );
setMoveKey( spep_2 + 102, 1, -71.3, -527.7 , 0 );
setMoveKey( spep_2 + 104, 1, -49.1, -441.2 , 0 );
setMoveKey( spep_2 + 106, 1, -28.5, -361.5 , 0 );
setMoveKey( spep_2 + 108, 1, -9.7, -288.6 , 0 );
setMoveKey( spep_2 + 110, 1, 7.3, -222.3 , 0 );
setMoveKey( spep_2 + 112, 1, 22.6, -162.8 , 0 );
setMoveKey( spep_2 + 114, 1, 36.2, -110 , 0 );
setMoveKey( spep_2 + 116, 1, 48.1, -63.9 , 0 );
setMoveKey( spep_2 + 118, 1, 58.2, -24.6 , 0 );
--setMoveKey( spep_2 + 120, 1, 66.6, 8 , 0 );
setMoveKey( spep_2 + 120, 1, 118.7, -19.5 , 0 );
setMoveKey( spep_2 + 122, 1, 131.1, -39.4 , 0 );
setMoveKey( spep_2 + 124, 1, 148.1, -147.1 , 0 );
setMoveKey( spep_2 + 126, 1, 189.4, -210.8 , 0 );
setMoveKey( spep_2 + 128, 1, 263.8, -326.9 , 0 );
setMoveKey( spep_2 + 130, 1, 307.1, -396.4 , 0 );
setMoveKey( spep_2 + 132, 1, 394.7, -529.1 , 0 );
setMoveKey( spep_2 + 134, 1, 487, -670.8 , 0 );
setMoveKey( spep_2 + 138, 1, 590.5, -829.4 , 0 );

setScaleKey( spep_2 + 0, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 20, 1, 1.2, 1.2 );--22
setScaleKey( spep_2 + 21, 1, 1.25, 1.25 );--23
setScaleKey( spep_2 + 22, 1, 1.25, 1.25 );--24
setScaleKey( spep_2 + 26, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 28, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 30, 1, 1.2, 1.2 );

setScaleKey( spep_2 + 96, 1, 1, 1 );
setScaleKey( spep_2 + 118, 1, 1, 1 );--120
--setScaleKey( spep_2 + 121, 1, 1, 1 );
setScaleKey( spep_2 + 119, 1, 1.12, 1.12 );--122
setScaleKey( spep_2 + 122, 1, 1.12, 1.12 );--122
setScaleKey( spep_2 + 123, 1, 1.12, 1.12 );--122
--setScaleKey( spep_2 + 124, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 124, 1, 0.47, 0.47 );--126
setScaleKey( spep_2 + 128, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 130, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 132, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 134, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 136, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 138, 1, 0.77, 0.77 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 + 20, 1, 0 );--22
setRotateKey( spep_2 + 21, 1, -35.1 );
setRotateKey( spep_2 + 22, 1, -35.1 );
setRotateKey( spep_2 + 26, 1, -34.2 );
setRotateKey( spep_2 + 28, 1, -33.6 );
setRotateKey( spep_2 + 30, 1, -33.2 );
setRotateKey( spep_2 + 32, 1, -33.1 );
setRotateKey( spep_2 + 34, 1, -27.2 );
setRotateKey( spep_2 + 36, 1, -22.2 );
setRotateKey( spep_2 + 38, 1, -17.9 );
setRotateKey( spep_2 + 40, 1, -14.3 );
setRotateKey( spep_2 + 42, 1, -11.6 );
setRotateKey( spep_2 + 44, 1, -9.7 );
setRotateKey( spep_2 + 46, 1, -8.5 );
setRotateKey( spep_2 + 48, 1, -8.1 );

setRotateKey( spep_2 + 96, 1, -8.2 );
setRotateKey( spep_2 + 98, 1, -8.7 );
setRotateKey( spep_2 + 100, 1, -9.2 );
setRotateKey( spep_2 + 102, 1, -9.6 );
setRotateKey( spep_2 + 104, 1, -10 );
setRotateKey( spep_2 + 106, 1, -10.4 );
setRotateKey( spep_2 + 108, 1, -10.7 );
setRotateKey( spep_2 + 110, 1, -11 );
setRotateKey( spep_2 + 112, 1, -11.3 );
setRotateKey( spep_2 + 114, 1, -11.5 );
setRotateKey( spep_2 + 116, 1, -11.8 );
setRotateKey( spep_2 + 118, 1, -11.9 );
setRotateKey( spep_2 + 119, 1, -12.1 );--120
setRotateKey( spep_2 + 122, 1, 18.2 );--122
setRotateKey( spep_2 + 123, 1, 35.8 );--124
setRotateKey( spep_2 + 124, 1, -20.2 );--126
setRotateKey( spep_2 + 136, 1, -20.2 );



--文字エントリー
ctga = entryEffectLife( spep_2 + 20,  10005, 20, 0x100, -1, 0, 10.2, 49.3 );--ガッ

setEffMoveKey( spep_2 + 20, ctga, 10.2, 49.3 , 0 );--24
setEffMoveKey( spep_2 + 26, ctga, -10.2, 64.6 , 0 );
setEffMoveKey( spep_2 + 28, ctga, -10.5, 73.3 , 0 );
setEffMoveKey( spep_2 + 30, ctga, -19.3, 74 , 0 );
setEffMoveKey( spep_2 + 32, ctga, -10.8, 79.6 , 0 );
setEffMoveKey( spep_2 + 34, ctga, -22.5, 81.2 , 0 );
setEffMoveKey( spep_2 + 36, ctga, -17.9, 81.9 , 0 );
setEffMoveKey( spep_2 + 38, ctga, -25.2, 80.1 , 0 );
setEffMoveKey( spep_2 + 40, ctga, -25.7, 80.6 , 0 );

setEffScaleKey( spep_2 + 20, ctga, 1.17, 1.17 );--24
setEffScaleKey( spep_2 + 26, ctga, 1.53, 1.53 );
setEffScaleKey( spep_2 + 28, ctga, 1.64, 1.64 );
setEffScaleKey( spep_2 + 30, ctga, 1.72, 1.72 );
setEffScaleKey( spep_2 + 32, ctga, 1.77, 1.77 );
setEffScaleKey( spep_2 + 34, ctga, 1.8, 1.8 );
setEffScaleKey( spep_2 + 36, ctga, 1.81, 1.81 );
setEffScaleKey( spep_2 + 38, ctga, 1.84, 1.84 );
setEffScaleKey( spep_2 + 40, ctga, 1.85, 1.85 );

setEffRotateKey( spep_2 + 20, ctga, -20.2 );--24
setEffRotateKey( spep_2 + 40, ctga, -20.2 );

setEffAlphaKey( spep_2 + 20, ctga, 0 );--20
setEffAlphaKey( spep_2 + 21, ctga, 255 );
setEffAlphaKey( spep_2 + 22, ctga, 255 );
setEffAlphaKey( spep_2 + 36, ctga, 255 );
setEffAlphaKey( spep_2 + 38, ctga, 64 );
setEffAlphaKey( spep_2 + 40, ctga, 0 );


--文字エントリー
ctbaki = entryEffectLife( spep_2 + 118,  10020, 18, 0x100, -1, 0, 54.5, 217.2 );--バキッ

setEffMoveKey( spep_2 + 118, ctbaki, 54.5, 217.2 , 0 );--122
setEffMoveKey( spep_2 + 124, ctbaki, 46.5, 225.2 , 0 );
setEffMoveKey( spep_2 + 126, ctbaki, 48, 225.9 , 0 );
setEffMoveKey( spep_2 + 128, ctbaki, 38.6, 235.3 , 0 );
setEffMoveKey( spep_2 + 130, ctbaki, 42.8, 232.9 , 0 );
setEffMoveKey( spep_2 + 132, ctbaki, 37.3, 239.9 , 0 );
setEffMoveKey( spep_2 + 134, ctbaki, 39.4, 251 , 0 );
setEffMoveKey( spep_2 + 136, ctbaki, 41.3, 254.2 , 0 );

setEffScaleKey( spep_2 + 118, ctbaki, 1.25, 1.25 );--122
setEffScaleKey( spep_2 + 124, ctbaki, 1.32, 1.32 );
setEffScaleKey( spep_2 + 126, ctbaki, 1.35, 1.35 );
setEffScaleKey( spep_2 + 128, ctbaki, 1.43, 1.43 );
setEffScaleKey( spep_2 + 130, ctbaki, 1.49, 1.49 );
setEffScaleKey( spep_2 + 132, ctbaki, 1.5, 1.5 );
setEffScaleKey( spep_2 + 134, ctbaki, 1.7, 1.7 );
setEffScaleKey( spep_2 + 136, ctbaki, 1.76, 1.76 );

setEffRotateKey( spep_2 + 118, ctbaki, -4 );--122
setEffRotateKey( spep_2 + 136, ctbaki, -4 );

setEffAlphaKey( spep_2 + 118, ctbaki, 0 );--122
setEffAlphaKey( spep_2 + 119, ctbaki, 255 );
setEffAlphaKey( spep_2 + 132, ctbaki, 255 );
setEffAlphaKey( spep_2 + 134, ctbaki, 64 );
setEffAlphaKey( spep_2 + 136, ctbaki, 0 );

-- ** エフェクト等 ** --
entryFade(spep_2+142, 4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- whit_fe fade

--se
playSe(spep_2+20,1010);--蹴り
playSe(spep_2+78,31);--変身！
playSe(spep_2+118,1009);--はたきおとし

--次の準備
spep_3=spep_2+146;

--------------------------------------
--狼牙風風拳
--------------------------------------
--エフェクト(前)
huhuken_f=entryEffectLife(spep_3,SP_04,402,0x100,-1,0,0,0);

setEffMoveKey( spep_3 + 0, huhuken_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 402, huhuken_f, 0, 0 , 0 );

setEffScaleKey(spep_3,huhuken_f,1.0,1.0);
setEffScaleKey(spep_3+402,huhuken_f,1.0,1.0);

setEffRotateKey(spep_3,huhuken_f,0);
setEffRotateKey(spep_3+402,huhuken_f,0);

setEffAlphaKey(spep_3,huhuken_f,255);
setEffAlphaKey(spep_3+400,huhuken_f,255);
setEffAlphaKey(spep_3+401,huhuken_f,255);
setEffAlphaKey(spep_3+402,huhuken_f,0);

--エフェクト(後)
huhuken_b=entryEffectLife(spep_3,SP_05,402,0x80,-1,0,0,0);

setEffMoveKey( spep_3 + 0, huhuken_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 402, huhuken_b, 0, 0 , 0 );

setEffScaleKey(spep_3,huhuken_b,1.0,1.0);
setEffScaleKey(spep_3+402,huhuken_b,1.0,1.0);

setEffRotateKey(spep_3,huhuken_b,0);
setEffRotateKey(spep_3+402,huhuken_b,0);

setEffAlphaKey(spep_3,huhuken_b,255);
setEffAlphaKey(spep_3+400,huhuken_b,255);
setEffAlphaKey(spep_3+401,huhuken_b,255);
setEffAlphaKey(spep_3+402,huhuken_b,255);

--流線
ryusen = entryEffectLife( spep_3 + 0,  914, 364, 0x80, -1, 0, 705.3, 39.2 );

setEffMoveKey( spep_3 + 0, ryusen, 0, 0 , 0 );
setEffMoveKey( spep_3 + 364, ryusen, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, ryusen, 4.29, 1.12 );
setEffScaleKey( spep_3 + 364, ryusen, 4.29, 1.12 );

setEffRotateKey( spep_3 + 0, ryusen, -180 );
setEffRotateKey( spep_3 + 364, ryusen, -180 );

setEffAlphaKey( spep_3 + 0, ryusen, 118 );
setEffAlphaKey( spep_3 + 52, ryusen, 118 );
setEffAlphaKey( spep_3 + 54, ryusen, 88 );
setEffAlphaKey( spep_3 + 56, ryusen, 59 );
setEffAlphaKey( spep_3 + 58, ryusen, 29 );
setEffAlphaKey( spep_3 + 60, ryusen, 0 );
setEffAlphaKey( spep_3 + 332, ryusen, 0 );
setEffAlphaKey( spep_3 + 334, ryusen, 118 );
setEffAlphaKey( spep_3 + 364, ryusen, 118 );

--敵の動き
setDisp( spep_3 + 60, 1, 1 );
setDisp( spep_3 + 280, 1, 0 );
setDisp( spep_3 + 367, 1, 1 );
setDisp( spep_3 + 368, 1, 1 );
setDisp( spep_3 + 402, 1, 0 );

changeAnime( spep_3 + 60, 1, 108 );
changeAnime( spep_3 + 73, 1, 106 );--76
changeAnime( spep_3 + 74, 1, 106 );--76
changeAnime( spep_3 + 81, 1, 108 );--84
changeAnime( spep_3 + 82, 1, 108 );--84
changeAnime( spep_3 + 103, 1, 106 );--106
changeAnime( spep_3 + 104, 1, 106 );--106
changeAnime( spep_3 + 115, 1, 108 );--118
changeAnime( spep_3 + 116, 1, 108 );--118
changeAnime( spep_3 + 133, 1, 106 );--136
changeAnime( spep_3 + 134, 1, 106 );--136
changeAnime( spep_3 + 155, 1, 108 );--158
changeAnime( spep_3 + 156, 1, 108 );--158
changeAnime( spep_3 + 229, 1, 106 );--232
changeAnime( spep_3 + 230, 1, 106 );--232
changeAnime( spep_3 + 367, 1, 108 );--368
changeAnime( spep_3 + 368, 1, 108 );--368

setMoveKey( spep_3 + 60, 1, -265.4, 526.4 , 0 );
setMoveKey( spep_3 + 62, 1, -211.2, 443.1 , 0 );
setMoveKey( spep_3 + 64, 1, -156.8, 359.6 , 0 );
setMoveKey( spep_3 + 66, 1, -102.5, 275.8 , 0 );
setMoveKey( spep_3 + 68, 1, -48.7, 192.1 , 0 );
setMoveKey( spep_3 + 70, 1, 5.2, 108.8 , 0 );
setMoveKey( spep_3 + 72, 1, 59.4, 25.6 , 0 );
--setMoveKey( spep_3 + 74, 1, 130.4, -43 , 0 );
setMoveKey( spep_3 + 73, 1, 76.4, -55.8 , 0 );
setMoveKey( spep_3 + 74, 1, 76.4, -55.8 , 0 );
setMoveKey( spep_3 + 78, 1, 113.4, -64.7 , 0 );
setMoveKey( spep_3 + 80, 1, 103.3, -65.3 , 0 );
--setMoveKey( spep_3 + 82, 1, 125.6, -59 , 0 );
setMoveKey( spep_3 + 81, 1, 150.7, -63.2 , 0 );--84
setMoveKey( spep_3 + 82, 1, 150.7, -63.2 , 0 );--84
setMoveKey( spep_3 + 86, 1, 158.4, -82.7 , 0 );
setMoveKey( spep_3 + 88, 1, 159.5, -60.4 , 0 );
setMoveKey( spep_3 + 90, 1, 160.4, -73.4 , 0 );
setMoveKey( spep_3 + 92, 1, 153.9, -62.7 , 0 );
setMoveKey( spep_3 + 94, 1, 165.6, -69.3 , 0 );
setMoveKey( spep_3 + 96, 1, 164.5, -67.6 , 0 );
setMoveKey( spep_3 + 98, 1, 163.4, -66.1 , 0 );
setMoveKey( spep_3 + 100, 1, 162.2, -64.6 , 0 );
setMoveKey( spep_3 + 102, 1, 161.1, -63.5 , 0 );
--setMoveKey( spep_3 + 104, 1, 159.9, -62.4 , 0 );
setMoveKey( spep_3 + 103, 1, 103.4, -40.8 , 0 );--106
setMoveKey( spep_3 + 104, 1, 103.4, -40.8 , 0 );--106
setMoveKey( spep_3 + 108, 1, 131.7, -32.5 , 0 );
setMoveKey( spep_3 + 110, 1, 125.3, -40.3 , 0 );
setMoveKey( spep_3 + 112, 1, 150, -37.6 , 0 );
setMoveKey( spep_3 + 114, 1, 141.2, -34.8 , 0 );
--setMoveKey( spep_3 + 116, 1, 145.8, -38.7 , 0 );
setMoveKey( spep_3 + 115, 1, 140.3, -45.8 , 0 );--118
setMoveKey( spep_3 + 116, 1, 140.3, -45.8 , 0 );--118
setMoveKey( spep_3 + 120, 1, 166.6, -38 , 0 );
setMoveKey( spep_3 + 122, 1, 152.7, -34 , 0 );
setMoveKey( spep_3 + 124, 1, 173.1, -26.5 , 0 );
setMoveKey( spep_3 + 126, 1, 159.9, -28.3 , 0 );
setMoveKey( spep_3 + 128, 1, 176.3, -25.5 , 0 );
setMoveKey( spep_3 + 130, 1, 175.1, -24.4 , 0 );
setMoveKey( spep_3 + 132, 1, 173.3, -23.8 , 0 );
--setMoveKey( spep_3 + 134, 1, 170.8, -23.5 , 0 );
setMoveKey( spep_3 + 133, 1, 128.9, -50.5 , 0 );--136
setMoveKey( spep_3 + 134, 1, 128.9, -50.5 , 0 );--136
setMoveKey( spep_3 + 138, 1, 158.1, -73 , 0 );
setMoveKey( spep_3 + 140, 1, 159.3, -57.2 , 0 );
setMoveKey( spep_3 + 142, 1, 188.4, -57 , 0 );
setMoveKey( spep_3 + 144, 1, 170.6, -69.8 , 0 );
--setMoveKey( spep_3 + 146, 1, 188.2, -56.7 , 0 );
setMoveKey( spep_3 + 145, 1, 58.4, 66 , 0 );
setMoveKey( spep_3 + 150, 1, 72.7, 73 , 0 );
setMoveKey( spep_3 + 152, 1, 82.9, 77.9 , 0 );
setMoveKey( spep_3 + 154, 1, 89.1, 80.9 , 0 );
--setMoveKey( spep_3 + 156, 1, 91.1, 81.9 , 0 );
setMoveKey( spep_3 + 155, 1, 85.6, 103.9 , 0 );
setMoveKey( spep_3 + 156, 1, 85.6, 103.9 , 0 );
setMoveKey( spep_3 + 160, 1, 124.8, 98.1 , 0 );
setMoveKey( spep_3 + 162, 1, 114.8, 92.4 , 0 );
setMoveKey( spep_3 + 164, 1, 89.6, 110.7 , 0 );
setMoveKey( spep_3 + 166, 1, 129.8, 100.1 , 0 );
setMoveKey( spep_3 + 168, 1, 115.1, 99.1 , 0 );
setMoveKey( spep_3 + 170, 1, 86.1, 91.4 , 0 );
setMoveKey( spep_3 + 172, 1, 126.3, 104.8 , 0 );
setMoveKey( spep_3 + 174, 1, 114.8, 92.4 , 0 );
setMoveKey( spep_3 + 176, 1, 89.1, 105.8 , 0 );
setMoveKey( spep_3 + 178, 1, 125.6, 111.7 , 0 );
setMoveKey( spep_3 + 180, 1, 115.1, 99.1 , 0 );
setMoveKey( spep_3 + 182, 1, 94, 79.6 , 0 );
setMoveKey( spep_3 + 184, 1, 115.8, 109.6 , 0 );
setMoveKey( spep_3 + 186, 1, 114.8, 92.4 , 0 );
setMoveKey( spep_3 + 188, 1, 87.8, 100.4 , 0 );
setMoveKey( spep_3 + 190, 1, 118.9, 111.1 , 0 );
setMoveKey( spep_3 + 192, 1, 115.1, 99.1 , 0 );
setMoveKey( spep_3 + 194, 1, 93.5, 120.5 , 0 );
setMoveKey( spep_3 + 196, 1, 102.8, 80.3 , 0 );
setMoveKey( spep_3 + 198, 1, 114.8, 92.4 , 0 );
setMoveKey( spep_3 + 200, 1, 81.8, 102.9 , 0 );
setMoveKey( spep_3 + 202, 1, 126.4, 99.5 , 0 );
setMoveKey( spep_3 + 204, 1, 115.1, 99.1 , 0 );
setMoveKey( spep_3 + 206, 1, 98.8, 89.3 , 0 );
setMoveKey( spep_3 + 208, 1, 119.2, 104.9 , 0 );
setMoveKey( spep_3 + 210, 1, 114.8, 92.4 , 0 );
setMoveKey( spep_3 + 212, 1, 88.6, 113.2 , 0 );
setMoveKey( spep_3 + 214, 1, 147.3, 97.2 , 0 );
setMoveKey( spep_3 + 216, 1, 128.6, 94.9 , 0 );
setMoveKey( spep_3 + 218, 1, 143.4, 112 , 0 );
--setMoveKey( spep_3 + 220, 1, 144.5, 94.7 , 0 );
--setMoveKey( spep_3 + 222, 1, 88.7, 9.3 , 0 );
setMoveKey( spep_3 + 119, 1, 110.7, 11.7 , 0 );--224
setMoveKey( spep_3 + 220, 1, 110.7, 11.7 , 0 );--224
setMoveKey( spep_3 + 224, 1, 124.2, 13.5 , 0 );--226
setMoveKey( spep_3 + 228, 1, 129.6, 15.1 , 0 );
--setMoveKey( spep_3 + 230, 1, 126.6, 16.3 , 0 );
setMoveKey( spep_3 + 229, 1, 152.9, -24.2 , 0 );--232
setMoveKey( spep_3 + 230, 1, 182.1, -47.2 , 0 );--232
setMoveKey( spep_3 + 236, 1, 166.1, -40.3 , 0 );
setMoveKey( spep_3 + 238, 1, 189.9, -34.2 , 0 );
setMoveKey( spep_3 + 240, 1, 182.2, -46.3 , 0 );
setMoveKey( spep_3 + 242, 1, 182.7, -32.4 , 0 );
setMoveKey( spep_3 + 244, 1, 192.3, -43.1 , 0 );
setMoveKey( spep_3 + 246, 1, 189.3, -36.2 , 0 );
setMoveKey( spep_3 + 248, 1, 193.4, -41.1 , 0 );
setMoveKey( spep_3 + 250, 1, 195.6, -37.3 , 0 );
setMoveKey( spep_3 + 252, 1, 198.3, -41 , 0 );
setMoveKey( spep_3 + 254, 1, 199, -37.6 , 0 );
setMoveKey( spep_3 + 256, 1, 200.5, -37.6 , 0 );
setMoveKey( spep_3 + 258, 1, 201.8, -37.6 , 0 );
setMoveKey( spep_3 + 260, 1, 203, -37.7 , 0 );
setMoveKey( spep_3 + 262, 1, 204, -37.7 , 0 );
setMoveKey( spep_3 + 264, 1, 204.8, -37.8 , 0 );
setMoveKey( spep_3 + 266, 1, 205.5, -37.8 , 0 );
setMoveKey( spep_3 + 268, 1, 205.9, -37.8 , 0 );
setMoveKey( spep_3 + 270, 1, 206.2, -37.9 , 0 );
setMoveKey( spep_3 + 272, 1, 206.4, -37.9 , 0 );
setMoveKey( spep_3 + 274, 1, 268.1, -49.4 , 0 );
setMoveKey( spep_3 + 276, 1, 453.2, -84.1 , 0 );
setMoveKey( spep_3 + 278, 1, 761.6, -141.8 , 0 );
setMoveKey( spep_3 + 280, 1, 1193.5, -222.5 , 0 );

setMoveKey( spep_3 + 367, 1, -1.1, 180.7 , 0 );
setMoveKey( spep_3 + 368, 1, -1.1, 180.7 , 0 );
setMoveKey( spep_3 + 370, 1, 46.3, 116.2 , 0 );
setMoveKey( spep_3 + 372, 1, 13.5, 111.6 , 0 );
setMoveKey( spep_3 + 374, 1, 40.6, 105.7 , 0 );
setMoveKey( spep_3 + 376, 1, 31.9, 129.4 , 0 );
setMoveKey( spep_3 + 378, 1, 47.9, 114.5 , 0 );
setMoveKey( spep_3 + 380, 1, 50.3, 139.1 , 0 );
setMoveKey( spep_3 + 382, 1, 50.3, 122.2 , 0 );
setMoveKey( spep_3 + 384, 1, 56.3, 142.3 , 0 );
setMoveKey( spep_3 + 386, 1, 48.9, 132.5 , 0 );
setMoveKey( spep_3 + 388, 1, 62.2, 139.7 , 0 );
setMoveKey( spep_3 + 390, 1, 51.5, 133.8 , 0 );
setMoveKey( spep_3 + 392, 1, 56.1, 137.8 , 0 );
setMoveKey( spep_3 + 394, 1, 148, 228.8 , 0 );
setMoveKey( spep_3 + 396, 1, 219.5, 299.7 , 0 );
setMoveKey( spep_3 + 398, 1, 270.6, 350.4 , 0 );
setMoveKey( spep_3 + 400, 1, 301.3, 380.9 , 0 );
setMoveKey( spep_3 + 401, 1, 311.6, 391.1 , 0 );

setScaleKey( spep_3 + 60, 1, 1, 1 );
setScaleKey( spep_3 + 70, 1, 1, 1 );--72
setScaleKey( spep_3 + 72, 1, 1.14, 1.14 );--74
setScaleKey( spep_3 + 73, 1, 1.38, 1.38 );--76
setScaleKey( spep_3 + 74, 1, 1.38, 1.38 );--76
setScaleKey( spep_3 + 78, 1, 1.41, 1.41 );
setScaleKey( spep_3 + 80, 1, 1.41, 1.41 );
setScaleKey( spep_3 + 81, 1, 1.39, 1.39 );--84
setScaleKey( spep_3 + 82, 1, 1.39, 1.39 );--84
setScaleKey( spep_3 + 92, 1, 1.39, 1.39 );
setScaleKey( spep_3 + 94, 1, 1.4, 1.4 );
setScaleKey( spep_3 + 102, 1, 1.4, 1.4 );--104
setScaleKey( spep_3 + 103, 1, 1.41, 1.41 );--106
setScaleKey( spep_3 + 104, 1, 1.41, 1.41 );--106
setScaleKey( spep_3 + 114, 1, 1.41, 1.41 );--116
setScaleKey( spep_3 + 115, 1, 1.39, 1.39 );--118
setScaleKey( spep_3 + 116, 1, 1.39, 1.39 );--118
setScaleKey( spep_3 + 132, 1, 1.39, 1.39 );--134
setScaleKey( spep_3 + 133, 1, 1.41, 1.41 );--136
setScaleKey( spep_3 + 134, 1, 1.41, 1.41 );--136
setScaleKey( spep_3 + 144, 1, 1.41, 1.41 );--146
setScaleKey( spep_3 + 145, 1, 1.65, 1.65 );--148
setScaleKey( spep_3 + 146, 1, 1.65, 1.65 );--148
setScaleKey( spep_3 + 149, 1, 1.65, 1.65 );--150
setScaleKey( spep_3 + 150, 1, 1.64, 1.64 );--152
setScaleKey( spep_3 + 154, 1, 1.64, 1.64 );
setScaleKey( spep_3 + 155, 1, 1.65, 1.65 );--158
setScaleKey( spep_3 + 156, 1, 1.65, 1.65 );--158
setScaleKey( spep_3 + 160, 1, 1.63, 1.63 );
setScaleKey( spep_3 + 162, 1, 1.61, 1.61 );
setScaleKey( spep_3 + 164, 1, 1.65, 1.65 );
setScaleKey( spep_3 + 166, 1, 1.63, 1.63 );
setScaleKey( spep_3 + 168, 1, 1.61, 1.61 );
setScaleKey( spep_3 + 170, 1, 1.65, 1.65 );
setScaleKey( spep_3 + 172, 1, 1.63, 1.63 );
setScaleKey( spep_3 + 174, 1, 1.61, 1.61 );
setScaleKey( spep_3 + 176, 1, 1.65, 1.65 );
setScaleKey( spep_3 + 178, 1, 1.63, 1.63 );
setScaleKey( spep_3 + 180, 1, 1.61, 1.61 );
setScaleKey( spep_3 + 182, 1, 1.65, 1.65 );
setScaleKey( spep_3 + 184, 1, 1.63, 1.63 );
setScaleKey( spep_3 + 186, 1, 1.61, 1.61 );
setScaleKey( spep_3 + 188, 1, 1.65, 1.65 );
setScaleKey( spep_3 + 190, 1, 1.63, 1.63 );
setScaleKey( spep_3 + 192, 1, 1.61, 1.61 );
setScaleKey( spep_3 + 194, 1, 1.65, 1.65 );
setScaleKey( spep_3 + 196, 1, 1.63, 1.63 );
setScaleKey( spep_3 + 198, 1, 1.61, 1.61 );
setScaleKey( spep_3 + 200, 1, 1.65, 1.65 );
setScaleKey( spep_3 + 202, 1, 1.63, 1.63 );
setScaleKey( spep_3 + 204, 1, 1.61, 1.61 );
setScaleKey( spep_3 + 206, 1, 1.65, 1.65 );
setScaleKey( spep_3 + 208, 1, 1.63, 1.63 );
setScaleKey( spep_3 + 210, 1, 1.61, 1.61 );
setScaleKey( spep_3 + 212, 1, 1.65, 1.65 );
setScaleKey( spep_3 + 214, 1, 1.65, 1.65 );
setScaleKey( spep_3 + 216, 1, 1.64, 1.64 );
setScaleKey( spep_3 + 218, 1, 1.63, 1.63 );
--setScaleKey( spep_3 + 220, 1, 1.62, 1.62 );
setScaleKey( spep_3 + 219, 1, 1.37, 1.37 );
setScaleKey( spep_3 + 220, 1, 1.37, 1.37 );
setScaleKey( spep_3 + 223, 1, 1.37, 1.37 );--224
setScaleKey( spep_3 + 224, 1, 1.39, 1.39 );--226
setScaleKey( spep_3 + 228, 1, 1.42, 1.42 );
setScaleKey( spep_3 + 228, 1, 1.47, 1.47 );--230
setScaleKey( spep_3 + 229, 1, 1.52, 1.52 );--232
setScaleKey( spep_3 + 230, 1, 1.52, 1.52 );--232
setScaleKey( spep_3 + 272, 1, 1.52, 1.52 );
setScaleKey( spep_3 + 274, 1, 1.79, 1.79 );
setScaleKey( spep_3 + 276, 1, 2.61, 2.61 );
setScaleKey( spep_3 + 278, 1, 3.98, 3.98 );
setScaleKey( spep_3 + 280, 1, 5.89, 5.89 );

setScaleKey( spep_3 + 367, 1, 3.78, 3.78 );
setScaleKey( spep_3 + 368, 1, 3.78, 3.78 );
--setScaleKey( spep_3 + 370, 1, 1.98, 1.98 );
setScaleKey( spep_3 + 372, 1, 1.84, 1.84 );
setScaleKey( spep_3 + 374, 1, 1.83, 1.83 );
setScaleKey( spep_3 + 376, 1, 1.81, 1.81 );
setScaleKey( spep_3 + 378, 1, 1.79, 1.79 );
setScaleKey( spep_3 + 380, 1, 1.78, 1.78 );
setScaleKey( spep_3 + 382, 1, 1.77, 1.77 );
setScaleKey( spep_3 + 384, 1, 1.76, 1.76 );
setScaleKey( spep_3 + 386, 1, 1.76, 1.76 );
setScaleKey( spep_3 + 388, 1, 1.75, 1.75 );
setScaleKey( spep_3 + 392, 1, 1.75, 1.75 );
setScaleKey( spep_3 + 394, 1, 1.29, 1.29 );
setScaleKey( spep_3 + 396, 1, 0.93, 0.93 );
setScaleKey( spep_3 + 398, 1, 0.67, 0.67 );
setScaleKey( spep_3 + 400, 1, 0.52, 0.52 );
setScaleKey( spep_3 + 401, 1, 0.47, 0.47 );

setRotateKey( spep_3 + 60, 1, 225.6 );
setRotateKey( spep_3 + 62, 1, 303 );
setRotateKey( spep_3 + 64, 1, 380.4 );
setRotateKey( spep_3 + 66, 1, 457.7 );
setRotateKey( spep_3 + 68, 1, 535.1 );
setRotateKey( spep_3 + 70, 1, 612.5 );
setRotateKey( spep_3 + 72, 1, 689.8 );
--setRotateKey( spep_3 + 74, 1, 767.2 );
setRotateKey( spep_3 + 73, 1, 687.5 );--76
setRotateKey( spep_3 + 74, 1, 687.5 );--76
setRotateKey( spep_3 + 78, 1, 695.1 );
setRotateKey( spep_3 + 80, 1, 699.6 );
--setRotateKey( spep_3 + 82, 1, 701.1 );
setRotateKey( spep_3 + 81, 1, 723.7 );--84
setRotateKey( spep_3 + 82, 1, 723.7 );--84
setRotateKey( spep_3 + 86, 1, 723.1 );
setRotateKey( spep_3 + 88, 1, 722.5 );
setRotateKey( spep_3 + 90, 1, 722 );
setRotateKey( spep_3 + 92, 1, 721.6 );
setRotateKey( spep_3 + 94, 1, 721.2 );
setRotateKey( spep_3 + 96, 1, 720.9 );
setRotateKey( spep_3 + 98, 1, 720.7 );
setRotateKey( spep_3 + 100, 1, 720.5 );
setRotateKey( spep_3 + 102, 1, 720.4 );
--setRotateKey( spep_3 + 104, 1, 720.4 );
setRotateKey( spep_3 + 103, 1, 694.5 );--106
setRotateKey( spep_3 + 104, 1, 694.5 );--106
setRotateKey( spep_3 + 108, 1, 697.6 );
setRotateKey( spep_3 + 110, 1, 700.1 );
setRotateKey( spep_3 + 112, 1, 701.8 );
setRotateKey( spep_3 + 114, 1, 702.9 );
--setRotateKey( spep_3 + 116, 1, 703.2 );
setRotateKey( spep_3 + 115, 1, 721.8 );--118
setRotateKey( spep_3 + 116, 1, 721.8 );--118
setRotateKey( spep_3 + 120, 1, 718.2 );
setRotateKey( spep_3 + 122, 1, 715 );
setRotateKey( spep_3 + 124, 1, 712.4 );
setRotateKey( spep_3 + 126, 1, 710.2 );
setRotateKey( spep_3 + 128, 1, 708.5 );
setRotateKey( spep_3 + 130, 1, 707.3 );
setRotateKey( spep_3 + 132, 1, 706.5 );
--setRotateKey( spep_3 + 134, 1, 706.3 );
setRotateKey( spep_3 + 133, 1, 694.5 );--136
setRotateKey( spep_3 + 134, 1, 694.5 );--136
setRotateKey( spep_3 + 138, 1, 696.8 );
setRotateKey( spep_3 + 140, 1, 698.7 );
setRotateKey( spep_3 + 142, 1, 700 );
setRotateKey( spep_3 + 144, 1, 700.7 );
setRotateKey( spep_3 + 144, 1, 701 );--146
setRotateKey( spep_3 + 145, 1, 683.9 );
setRotateKey( spep_3 + 146, 1, 683.9 );
setRotateKey( spep_3 + 149, 1, 685.3 );--150
setRotateKey( spep_3 + 150, 1, 686.4 );--152
setRotateKey( spep_3 + 154, 1, 687 );
--setRotateKey( spep_3 + 156, 1, 687.2 );
setRotateKey( spep_3 + 155, 1, 718 );--158
setRotateKey( spep_3 + 156, 1, 718 );--158
setRotateKey( spep_3 + 160, 1, 716.5 );
setRotateKey( spep_3 + 162, 1, 715 );
setRotateKey( spep_3 + 164, 1, 718 );
setRotateKey( spep_3 + 166, 1, 720.4 );
setRotateKey( spep_3 + 168, 1, 722.7 );
setRotateKey( spep_3 + 170, 1, 718 );
setRotateKey( spep_3 + 172, 1, 716.5 );
setRotateKey( spep_3 + 174, 1, 715 );
setRotateKey( spep_3 + 176, 1, 718 );
setRotateKey( spep_3 + 178, 1, 720.4 );
setRotateKey( spep_3 + 180, 1, 722.7 );
setRotateKey( spep_3 + 182, 1, 718 );
setRotateKey( spep_3 + 184, 1, 716.5 );
setRotateKey( spep_3 + 186, 1, 715 );
setRotateKey( spep_3 + 188, 1, 718 );
setRotateKey( spep_3 + 190, 1, 720.4 );
setRotateKey( spep_3 + 192, 1, 722.7 );
setRotateKey( spep_3 + 194, 1, 718 );
setRotateKey( spep_3 + 196, 1, 716.5 );
setRotateKey( spep_3 + 198, 1, 715 );
setRotateKey( spep_3 + 200, 1, 718 );
setRotateKey( spep_3 + 202, 1, 720.4 );
setRotateKey( spep_3 + 204, 1, 722.7 );
setRotateKey( spep_3 + 206, 1, 718 );
setRotateKey( spep_3 + 208, 1, 716.5 );
setRotateKey( spep_3 + 210, 1, 715 );
setRotateKey( spep_3 + 212, 1, 718 );
setRotateKey( spep_3 + 214, 1, 724.7 );
setRotateKey( spep_3 + 216, 1, 725.4 );
setRotateKey( spep_3 + 218, 1, 726.2 );
setRotateKey( spep_3 + 220, 1, 726.9 );
setRotateKey( spep_3 + 222, 1, 719.9 );
setRotateKey( spep_3 + 224, 1, 723.9 );
setRotateKey( spep_3 + 226, 1, 726.8 );
setRotateKey( spep_3 + 228, 1, 728.5 );
--setRotateKey( spep_3 + 230, 1, 729.1 );
setRotateKey( spep_3 + 229, 1, 677.4 );--232
setRotateKey( spep_3 + 230, 1, 677.4 );--232
setRotateKey( spep_3 + 234, 1, 678.5 );
setRotateKey( spep_3 + 236, 1, 679.5 );
setRotateKey( spep_3 + 238, 1, 680.5 );
setRotateKey( spep_3 + 240, 1, 681.4 );
setRotateKey( spep_3 + 242, 1, 682.3 );
setRotateKey( spep_3 + 243, 1, 683.1 );--224
setRotateKey( spep_3 + 244, 1, 683.9 );--226
setRotateKey( spep_3 + 248, 1, 684.6 );
setRotateKey( spep_3 + 250, 1, 685.2 );
setRotateKey( spep_3 + 252, 1, 685.8 );
setRotateKey( spep_3 + 254, 1, 686.3 );
setRotateKey( spep_3 + 256, 1, 686.8 );
setRotateKey( spep_3 + 258, 1, 687.2 );
setRotateKey( spep_3 + 260, 1, 687.6 );
setRotateKey( spep_3 + 262, 1, 687.9 );
setRotateKey( spep_3 + 264, 1, 688.2 );
setRotateKey( spep_3 + 266, 1, 688.3 );
setRotateKey( spep_3 + 268, 1, 688.5 );
setRotateKey( spep_3 + 270, 1, 688.6 );
setRotateKey( spep_3 + 276, 1, 688.6 );
setRotateKey( spep_3 + 278, 1, 688.7 );
setRotateKey( spep_3 + 367, 1, 720 );
setRotateKey( spep_3 + 368, 1, 720 );
setRotateKey( spep_3 + 392, 1, 720 );
setRotateKey( spep_3 + 394, 1, 724.1 );
setRotateKey( spep_3 + 396, 1, 727.4 );
setRotateKey( spep_3 + 398, 1, 729.7 );
setRotateKey( spep_3 + 400, 1, 731 );
setRotateKey( spep_3 + 401, 1, 731.5 );

--文字エントリー
ctzan = entryEffectLife( spep_3 + 72,  10010, 18, 0x100, -1, 0, -42.4, 107.5 );--ザンッ

setEffMoveKey( spep_3 + 72, ctzan, -42.4, 107.5 , 0 );
setEffMoveKey( spep_3 + 78, ctzan, -55.5, 133.6 , 0 );
setEffMoveKey( spep_3 + 80, ctzan, -52.8, 144.3 , 0 );
setEffMoveKey( spep_3 + 82, ctzan, -59.4, 144.7 , 0 );
setEffMoveKey( spep_3 + 84, ctzan, -49.9, 149.7 , 0 );
setEffMoveKey( spep_3 + 86, ctzan, -54.5, 150.6 , 0 );
setEffMoveKey( spep_3 + 88, ctzan, -60.8, 148.8 , 0 );
setEffMoveKey( spep_3 + 90, ctzan, -60.8, 148.8 , 0 );

setEffScaleKey( spep_3 + 72, ctzan, 0.82, 0.82 );
setEffScaleKey( spep_3 + 78, ctzan, 1.19, 1.19 );
setEffScaleKey( spep_3 + 80, ctzan, 1.31, 1.31 );
setEffScaleKey( spep_3 + 82, ctzan, 1.34, 1.34 );
setEffScaleKey( spep_3 + 84, ctzan, 1.37, 1.37 );
setEffScaleKey( spep_3 + 86, ctzan, 1.39, 1.39 );
setEffScaleKey( spep_3 + 90, ctzan, 1.39, 1.39 );

setEffRotateKey( spep_3 + 72, ctzan, -17.5 );
setEffRotateKey( spep_3 + 90, ctzan, -17.5 );

setEffAlphaKey( spep_3 + 72, ctzan, 0 );
setEffAlphaKey( spep_3 + 73, ctzan, 255 );
setEffAlphaKey( spep_3 + 74, ctzan, 255 );
setEffAlphaKey( spep_3 + 86, ctzan, 255 );
setEffAlphaKey( spep_3 + 88, ctzan, 128 );
setEffAlphaKey( spep_3 + 90, ctzan, 0 );

--文字エントリー
ctga2 = entryEffectLife( spep_3 + 80,  10005, 18, 0x100, -1, 0, 177.2, 177.7 );--ガッ

setEffMoveKey( spep_3 + 80, ctga2, 177.2, 177.7 , 0 );
setEffMoveKey( spep_3 + 86, ctga2, 169.8, 199.1 , 0 );
setEffMoveKey( spep_3 + 88, ctga2, 173.9, 205.5 , 0 );
setEffMoveKey( spep_3 + 90, ctga2, 167.6, 211.6 , 0 );
setEffMoveKey( spep_3 + 92, ctga2, 176.7, 211.7 , 0 );
setEffMoveKey( spep_3 + 94, ctga2, 172.8, 215.5 , 0 );
setEffMoveKey( spep_3 + 96, ctga2, 166.5, 217.7 , 0 );
setEffMoveKey( spep_3 + 98, ctga2, 166.3, 218.3 , 0 );

setEffScaleKey( spep_3 + 80, ctga2, 1.03, 1.03 );
setEffScaleKey( spep_3 + 86, ctga2, 1.34, 1.34 );
setEffScaleKey( spep_3 + 88, ctga2, 1.45, 1.45 );
setEffScaleKey( spep_3 + 90, ctga2, 1.53, 1.53 );
setEffScaleKey( spep_3 + 92, ctga2, 1.58, 1.58 );
setEffScaleKey( spep_3 + 94, ctga2, 1.6, 1.6 );
setEffScaleKey( spep_3 + 96, ctga2, 1.63, 1.63 );
setEffScaleKey( spep_3 + 98, ctga2, 1.64, 1.64 );

setEffRotateKey( spep_3 + 80, ctga2, 13.7 );
setEffRotateKey( spep_3 + 98, ctga2, 13.7 );

setEffAlphaKey( spep_3 + 80, ctga2, 0 );
setEffAlphaKey( spep_3 + 81, ctga2, 255 );
setEffAlphaKey( spep_3 + 82, ctga2, 255 );
setEffAlphaKey( spep_3 + 94, ctga2, 255 );
setEffAlphaKey( spep_3 + 96, ctga2, 64 );
setEffAlphaKey( spep_3 + 98, ctga2, 0 );

--文字エントリー
ctbaki4 = entryEffectLife( spep_3 + 102,  10020, 14, 0x100, -1, 0, 131.9, 298.8 );--バキッ

setEffMoveKey( spep_3 + 102, ctbaki4, 131.9, 298.8 , 0 );
setEffMoveKey( spep_3 + 104, ctbaki4, 130.2, 310 , 0 );
setEffMoveKey( spep_3 + 106, ctbaki4, 131.8, 309.7 , 0 );
setEffMoveKey( spep_3 + 108, ctbaki4, 129.9, 322.7 , 0 );
setEffMoveKey( spep_3 + 110, ctbaki4, 131.8, 318.3 , 0 );
setEffMoveKey( spep_3 + 112, ctbaki4, 131.6, 327.2 , 0 );
setEffMoveKey( spep_3 + 114, ctbaki4, 139.9, 334.8 , 0 );
setEffMoveKey( spep_3 + 116, ctbaki4, 143.3, 336.2 , 0 );

setEffScaleKey( spep_3 + 102, ctbaki4, 1.25, 1.25 );
setEffScaleKey( spep_3 + 104, ctbaki4, 1.32, 1.32 );
setEffScaleKey( spep_3 + 106, ctbaki4, 1.35, 1.35 );
setEffScaleKey( spep_3 + 108, ctbaki4, 1.43, 1.43 );
setEffScaleKey( spep_3 + 110, ctbaki4, 1.49, 1.49 );
setEffScaleKey( spep_3 + 112, ctbaki4, 1.5, 1.5 );
setEffScaleKey( spep_3 + 114, ctbaki4, 1.7, 1.7 );
setEffScaleKey( spep_3 + 116, ctbaki4, 1.76, 1.76 );

setEffRotateKey( spep_3 + 102, ctbaki4, 32.7 );
setEffRotateKey( spep_3 + 116, ctbaki4, 32.7 );

setEffAlphaKey( spep_3 + 102, ctbaki4, 0 );
setEffAlphaKey( spep_3 + 103, ctbaki4, 255 );
setEffAlphaKey( spep_3 + 104, ctbaki4, 255 );
setEffAlphaKey( spep_3 + 110, ctbaki4, 255 );
setEffAlphaKey( spep_3 + 112, ctbaki4, 64 );
setEffAlphaKey( spep_3 + 118, ctbaki4, 0 );



--文字エントリー
ctdon = entryEffectLife( spep_3 + 114,  10019, 16, 0x100, -1, 0, 95.3, 206.9 );--ドンッ

setEffMoveKey( spep_3 + 114, ctdon, 95.3, 206.9 , 0 );
setEffMoveKey( spep_3 + 120, ctdon, 72.8, 232.9 , 0 );
setEffMoveKey( spep_3 + 122, ctdon, 71, 255.3 , 0 );
setEffMoveKey( spep_3 + 124, ctdon, 62, 265 , 0 );
setEffMoveKey( spep_3 + 126, ctdon, 62, 257.9 , 0 );
setEffMoveKey( spep_3 + 128, ctdon, 68.5, 266.5 , 0 );
setEffMoveKey( spep_3 + 130, ctdon, 68.5, 267.4 , 0 );

setEffScaleKey( spep_3 + 114, ctdon, 1.29, 1.29 );
setEffScaleKey( spep_3 + 120, ctdon, 1.63, 1.63 );
setEffScaleKey( spep_3 + 122, ctdon, 1.98, 1.98 );
setEffScaleKey( spep_3 + 124, ctdon, 2.01, 2.01 );
setEffScaleKey( spep_3 + 126, ctdon, 2.04, 2.04 );
setEffScaleKey( spep_3 + 128, ctdon, 2.05, 2.05 );
setEffScaleKey( spep_3 + 130, ctdon, 2.07, 2.07 );

setEffRotateKey( spep_3 + 114, ctdon, -0.3 );
setEffRotateKey( spep_3 + 120, ctdon, 0.3 );
setEffRotateKey( spep_3 + 122, ctdon, 0.8 );
setEffRotateKey( spep_3 + 130, ctdon, 0.8 );

setEffAlphaKey( spep_3 + 114, ctdon, 0 );
setEffAlphaKey( spep_3 + 115, ctdon, 255 );
setEffAlphaKey( spep_3 + 116, ctdon, 255 );
setEffAlphaKey( spep_3 + 126, ctdon, 255 );
setEffAlphaKey( spep_3 + 128, ctdon, 128 );
setEffAlphaKey( spep_3 + 130, ctdon, 0 );

--文字エントリー
ctbaki3 = entryEffectLife( spep_3-4 + 136,  10020, 14, 0x100, -1, 0, 54.5, 217.2 );--バキ

setEffMoveKey( spep_3-4 + 136, ctbaki3, 54.5, 217.2 , 0 );
setEffMoveKey( spep_3-4 + 138, ctbaki3, 46.5, 225.2 , 0 );
setEffMoveKey( spep_3-4 + 140, ctbaki3, 48, 225.9 , 0 );
setEffMoveKey( spep_3-4 + 142, ctbaki3, 36.5, 238 , 0 );
setEffMoveKey( spep_3-4 + 144, ctbaki3, 37.3, 239.9 , 0 );
setEffMoveKey( spep_3-4 + 146, ctbaki3, 39.4, 251 , 0 );
setEffMoveKey( spep_3-4 + 150, ctbaki3, 41.3, 254.2 , 0 );

setEffScaleKey( spep_3-4 + 136, ctbaki3, 1.25, 1.25 );
setEffScaleKey( spep_3-4 + 138, ctbaki3, 1.32, 1.32 );
setEffScaleKey( spep_3-4 + 140, ctbaki3, 1.35, 1.35 );
setEffScaleKey( spep_3-4 + 142, ctbaki3, 1.46, 1.46 );
setEffScaleKey( spep_3-4 + 144, ctbaki3, 1.5, 1.5 );
setEffScaleKey( spep_3-4 + 146, ctbaki3, 1.7, 1.7 );
setEffScaleKey( spep_3-4 + 150, ctbaki3, 1.76, 1.76 )

setEffRotateKey( spep_3-4 + 136, ctbaki3, -4 );
setEffRotateKey( spep_3-4 + 150, ctbaki3, -4 );

setEffAlphaKey( spep_3-4 + 136, ctbaki3, 255 );
setEffAlphaKey( spep_3-4 + 144, ctbaki3, 255 );
setEffAlphaKey( spep_3-4 + 146, ctbaki3, 64 );
setEffAlphaKey( spep_3-4 + 149, ctbaki3, 0 );
setEffAlphaKey( spep_3-4 + 150, ctbaki3, 0 );


--文字エントリー
ctga3 = entryEffectLife( spep_3 + 154,  10005, 12, 0x100, -1, 0, 55.9, 297.7 );--ガッ

setEffMoveKey( spep_3 + 154, ctga3, 55.9, 297.7 , 0 );
setEffMoveKey( spep_3 + 160, ctga3, 43.4, 314.2 , 0 );
setEffMoveKey( spep_3 + 162, ctga3, 36.3, 316.9 , 0 );
setEffMoveKey( spep_3 + 164, ctga3, 39.1, 320.2 , 0 );
setEffMoveKey( spep_3 + 166, ctga3, 34.3, 319.3 , 0 );
setEffMoveKey( spep_3 + 168, ctga3, 34, 319.6 , 0 );

setEffScaleKey( spep_3 + 154, ctga3, 0.76, 0.76 );
setEffScaleKey( spep_3 + 160, ctga3, 1.07, 1.07 );
setEffScaleKey( spep_3 + 162, ctga3, 1.15, 1.15 );
setEffScaleKey( spep_3 + 164, ctga3, 1.18, 1.18 );
setEffScaleKey( spep_3 + 166, ctga3, 1.2, 1.2 );
setEffScaleKey( spep_3 + 168, ctga3, 1.21, 1.21 );

setEffRotateKey( spep_3 + 154, ctga3, -16.3 );
setEffRotateKey( spep_3 + 168, ctga3, -16.3 );

setEffAlphaKey( spep_3 + 154, ctga3, 0 );
setEffAlphaKey( spep_3 + 155, ctga3, 255 );
setEffAlphaKey( spep_3 + 156, ctga3, 255 );
setEffAlphaKey( spep_3 + 164, ctga3, 255 );
setEffAlphaKey( spep_3 + 166, ctga3, 64 );
setEffAlphaKey( spep_3 + 168, ctga3, 0 );

--文字エントリー
ctga4 = entryEffectLife( spep_3-4 + 164,  10005, 10, 0x100, -1, 0, 216.4, 236 );--ガッ

setEffMoveKey( spep_3-4 + 164, ctga4, 216.4, 236 , 0 );
setEffMoveKey( spep_3-4 + 166, ctga4, 218.9, 256.5 , 0 );
setEffMoveKey( spep_3-4 + 168, ctga4, 215.6, 263.4 , 0 );
setEffMoveKey( spep_3-4 + 170, ctga4, 219.9, 263.8 , 0 );
setEffMoveKey( spep_3-4 + 172, ctga4, 215.9, 266.5 , 0 );
setEffMoveKey( spep_3-4 + 174, ctga4, 215.9, 267 , 0 );

setEffScaleKey( spep_3-4 + 164, ctga4, 0.76, 0.76 );
setEffScaleKey( spep_3-4 + 166, ctga4, 1.07, 1.07 );
setEffScaleKey( spep_3-4 + 168, ctga4, 1.15, 1.15 );
setEffScaleKey( spep_3-4 + 170, ctga4, 1.18, 1.18 );
setEffScaleKey( spep_3-4 + 172, ctga4, 1.2, 1.2 );
setEffScaleKey( spep_3-4 + 174, ctga4, 1.21, 1.21 );

setEffRotateKey( spep_3-4 + 164, ctga4, 27.7 );
setEffRotateKey( spep_3-4 + 174, ctga4, 27.7 );

setEffAlphaKey( spep_3-4 + 164, ctga4, 0 );
setEffAlphaKey( spep_3-4 + 165, ctga4, 255 );
setEffAlphaKey( spep_3-4 + 166, ctga4, 255 );
setEffAlphaKey( spep_3-4 + 170, ctga4, 255 );
setEffAlphaKey( spep_3-4 + 172, ctga4, 64 );
setEffAlphaKey( spep_3-4 + 174, ctga4, 0 );

--文字エントリー
ctbaki6 = entryEffectLife( spep_3-4 + 170,  10020, 10, 0x100, -1, 0, 168.5, 380.9 );--バキッ

setEffMoveKey( spep_3-4 + 170, ctbaki6, 168.5, 380.9 , 0 );
setEffMoveKey( spep_3-4 + 172, ctbaki6, 167.6, 388.8 , 0 );
setEffMoveKey( spep_3-4 + 174, ctbaki6, 164.7, 400.6 , 0 );
setEffMoveKey( spep_3-4 + 176, ctbaki6, 165.9, 401.5 , 0 );
setEffMoveKey( spep_3-4 + 178, ctbaki6, 171.3, 407.7 , 0 );
setEffMoveKey( spep_3-4 + 180, ctbaki6, 173.6, 409 , 0 );

setEffScaleKey( spep_3-4 + 170, ctbaki6, 0.91, 0.91 );
setEffScaleKey( spep_3-4 + 172, ctbaki6, 0.98, 0.98 );
setEffScaleKey( spep_3-4 + 174, ctbaki6, 1.06, 1.06 );
setEffScaleKey( spep_3-4 + 176, ctbaki6, 1.09, 1.09 );
setEffScaleKey( spep_3-4 + 178, ctbaki6, 1.23, 1.23 );
setEffScaleKey( spep_3-4 + 180, ctbaki6, 1.28, 1.28 );

setEffRotateKey( spep_3-4 + 170, ctbaki6, 26 );
setEffRotateKey( spep_3-4 + 180, ctbaki6, 26 );

setEffAlphaKey( spep_3-4 + 170, ctbaki6, 0 );
setEffAlphaKey( spep_3-4 + 171, ctbaki6, 255 );
setEffAlphaKey( spep_3-4 + 172, ctbaki6, 255 );
setEffAlphaKey( spep_3-4 + 176, ctbaki6, 255 );
setEffAlphaKey( spep_3-4 + 178, ctbaki6, 64 );
setEffAlphaKey( spep_3-4 + 180, ctbaki6, 0 );

--文字エントリー
ctga5 = entryEffectLife( spep_3-4 + 176,  10005, 10, 0x100, -1, 0, 55.9, 297.7 );--ガッ

setEffMoveKey( spep_3-4 + 176, ctga5, 55.9, 297.7 , 0 );
setEffMoveKey( spep_3-4 + 178, ctga5, 43.4, 314.2 , 0 );
setEffMoveKey( spep_3-4 + 180, ctga5, 36.3, 316.9 , 0 );
setEffMoveKey( spep_3-4 + 182, ctga5, 39.1, 320.2 , 0 );
setEffMoveKey( spep_3-4 + 184, ctga5, 34.3, 319.3 , 0 );
setEffMoveKey( spep_3-4 + 186, ctga5, 34, 319.6 , 0 );

setEffScaleKey( spep_3-4 + 176, ctga5, 0.76, 0.76 );
setEffScaleKey( spep_3-4 + 178, ctga5, 1.07, 1.07 );
setEffScaleKey( spep_3-4 + 180, ctga5, 1.15, 1.15 );
setEffScaleKey( spep_3-4 + 182, ctga5, 1.18, 1.18 );
setEffScaleKey( spep_3-4 + 184, ctga5, 1.2, 1.2 );
setEffScaleKey( spep_3-4 + 186, ctga5, 1.21, 1.21 );

setEffRotateKey( spep_3-4 + 176, ctga5, -16.3 );
setEffRotateKey( spep_3-4 + 186, ctga5, -16.3 );

setEffAlphaKey( spep_3-4 + 176, ctga5, 0 );
setEffAlphaKey( spep_3-4 + 177, ctga5, 255 );
setEffAlphaKey( spep_3-4 + 178, ctga5, 255 );
setEffAlphaKey( spep_3-4 + 182, ctga5, 255 );
setEffAlphaKey( spep_3-4 + 184, ctga5, 64 );
setEffAlphaKey( spep_3-4 + 186, ctga5, 0 );


--文字エントリー
ctbaki7 = entryEffectLife( spep_3-4 + 182,  10020, 10, 0x100, -1, 0, 224.1, 296.7 );--バキッ

setEffMoveKey( spep_3-4 + 182, ctbaki7, 224.1, 296.7 , 0 );
setEffMoveKey( spep_3-4 + 184, ctbaki7, 224.6, 304.6 , 0 );
setEffMoveKey( spep_3-4 + 186, ctbaki7, 223.9, 316.7 , 0 );
setEffMoveKey( spep_3-4 + 188, ctbaki7, 225.3, 317.4 , 0 );
setEffMoveKey( spep_3-4 + 190, ctbaki7, 231.6, 322.5 , 0 );
setEffMoveKey( spep_3-4 + 192, ctbaki7, 234.1, 323.4 , 0 );

setEffScaleKey( spep_3-4 + 182, ctbaki7, 0.91, 0.91 );
setEffScaleKey( spep_3-4 + 184, ctbaki7, 0.98, 0.98 );
setEffScaleKey( spep_3-4 + 186, ctbaki7, 1.06, 1.06 );
setEffScaleKey( spep_3-4 + 188, ctbaki7, 1.09, 1.09 );
setEffScaleKey( spep_3-4 + 190, ctbaki7, 1.23, 1.23 );
setEffScaleKey( spep_3-4 + 192, ctbaki7, 1.28, 1.28 );

setEffRotateKey( spep_3-4 + 182, ctbaki7, 36.4 );
setEffRotateKey( spep_3-4 + 192, ctbaki7, 36.4 );

setEffAlphaKey( spep_3-4 + 182, ctbaki7, 0 );
setEffAlphaKey( spep_3-4 + 183, ctbaki7, 255 );
setEffAlphaKey( spep_3-4 + 184, ctbaki7, 255 );
setEffAlphaKey( spep_3-4 + 188, ctbaki7, 255 );
setEffAlphaKey( spep_3-4 + 190, ctbaki7, 64 );
setEffAlphaKey( spep_3-4 + 192, ctbaki7, 0 );

--文字エントリー
ctga6 = entryEffectLife( spep_3-4 + 188,  10005, 10, 0x100, -1, 0, 216.4, 236 );--ガッ

setEffMoveKey( spep_3-4 + 188, ctga6, 216.4, 236 , 0 );
setEffMoveKey( spep_3-4 + 190, ctga6, 218.9, 256.5 , 0 );
setEffMoveKey( spep_3-4 + 192, ctga6, 215.6, 263.4 , 0 );
setEffMoveKey( spep_3-4 + 194, ctga6, 219.9, 263.8 , 0 );
setEffMoveKey( spep_3-4 + 196, ctga6, 215.9, 266.5 , 0 );
setEffMoveKey( spep_3-4 + 198, ctga6, 215.9, 267 , 0 );

setEffScaleKey( spep_3-4 + 188, ctga6, 0.76, 0.76 );
setEffScaleKey( spep_3-4 + 190, ctga6, 1.07, 1.07 );
setEffScaleKey( spep_3-4 + 192, ctga6, 1.15, 1.15 );
setEffScaleKey( spep_3-4 + 194, ctga6, 1.18, 1.18 );
setEffScaleKey( spep_3-4 + 196, ctga6, 1.2, 1.2 );
setEffScaleKey( spep_3-4 + 198, ctga6, 1.21, 1.21 );

setEffRotateKey( spep_3-4 + 188, ctga6, 27.7 );
setEffRotateKey( spep_3-4 + 198, ctga6, 27.7 );

setEffAlphaKey( spep_3-4 + 188, ctga6, 0 );
setEffAlphaKey( spep_3-4 + 189, ctga6, 255 );
setEffAlphaKey( spep_3-4 + 190, ctga6, 255 );
setEffAlphaKey( spep_3-4 + 194, ctga6, 255 );
setEffAlphaKey( spep_3-4 + 196, ctga6, 64 );
setEffAlphaKey( spep_3-4 + 198, ctga6, 0 );

--文字エントリー
ctbaki8 = entryEffectLife( spep_3-4 + 194,  10020, 10, 0x100, -1, 0, 168.5, 380.9 );--バキッ

setEffMoveKey( spep_3-4 + 194, ctbaki8, 168.5, 380.9 , 0 );
setEffMoveKey( spep_3-4 + 196, ctbaki8, 167.6, 388.8 , 0 );
setEffMoveKey( spep_3-4 + 198, ctbaki8, 164.7, 400.6 , 0 );
setEffMoveKey( spep_3-4 + 200, ctbaki8, 165.9, 401.5 , 0 );
setEffMoveKey( spep_3-4 + 202, ctbaki8, 171.3, 407.7 , 0 );
setEffMoveKey( spep_3-4 + 204, ctbaki8, 173.6, 409 , 0 );

setEffScaleKey( spep_3-4 + 194, ctbaki8, 0.91, 0.91 );
setEffScaleKey( spep_3-4 + 196, ctbaki8, 0.98, 0.98 );
setEffScaleKey( spep_3-4 + 198, ctbaki8, 1.06, 1.06 );
setEffScaleKey( spep_3-4 + 200, ctbaki8, 1.09, 1.09 );
setEffScaleKey( spep_3-4 + 202, ctbaki8, 1.23, 1.23 );
setEffScaleKey( spep_3-4 + 204, ctbaki8, 1.28, 1.28 );

setEffRotateKey( spep_3-4 + 194, ctbaki8, 26 );
setEffRotateKey( spep_3-4 + 204, ctbaki8, 26 );

setEffAlphaKey( spep_3-4 + 194, ctbaki8, 0 );
setEffAlphaKey( spep_3-4 + 195, ctbaki8, 255 );
setEffAlphaKey( spep_3-4 + 196, ctbaki8, 255 );
setEffAlphaKey( spep_3-4 + 200, ctbaki8, 255 );
setEffAlphaKey( spep_3-4 + 202, ctbaki8, 64 );
setEffAlphaKey( spep_3-4 + 204, ctbaki8, 0 );


--文字エントリー
ctga7 = entryEffectLife( spep_3-4 + 200,  10005, 10, 0x100, -1, 0, 55.9, 297.7 );--ガッ

setEffMoveKey( spep_3-4 + 200, ctga7, 55.9, 297.7 , 0 );
setEffMoveKey( spep_3-4 + 202, ctga7, 43.4, 314.2 , 0 );
setEffMoveKey( spep_3-4 + 204, ctga7, 36.3, 316.9 , 0 );
setEffMoveKey( spep_3-4 + 206, ctga7, 39.1, 320.2 , 0 );
setEffMoveKey( spep_3-4 + 208, ctga7, 34.3, 319.3 , 0 );
setEffMoveKey( spep_3-4 + 210, ctga7, 34, 319.6 , 0 );

setEffScaleKey( spep_3-4 + 200, ctga7, 0.76, 0.76 );
setEffScaleKey( spep_3-4 + 202, ctga7, 1.07, 1.07 );
setEffScaleKey( spep_3-4 + 204, ctga7, 1.15, 1.15 );
setEffScaleKey( spep_3-4 + 206, ctga7, 1.18, 1.18 );
setEffScaleKey( spep_3-4 + 208, ctga7, 1.2, 1.2 );
setEffScaleKey( spep_3-4 + 210, ctga7, 1.21, 1.21 );

setEffRotateKey( spep_3-4 + 200, ctga7, -16.3 );
setEffRotateKey( spep_3-4 + 210, ctga7, -16.3 );

setEffAlphaKey( spep_3-4 + 200, ctga7, 0 );
setEffAlphaKey( spep_3-4 + 201, ctga7, 255 );
setEffAlphaKey( spep_3-4 + 202, ctga7, 255 );
setEffAlphaKey( spep_3-4 + 206, ctga7, 255 );
setEffAlphaKey( spep_3-4 + 208, ctga7, 64 );
setEffAlphaKey( spep_3-4 + 210, ctga7, 0 );

--文字エントリー
ctbaki9 = entryEffectLife( spep_3-4 + 206,  10020, 10, 0x100, -1, 0, 224.1, 296.7 );--バキッ

setEffMoveKey( spep_3-4 + 206, ctbaki9, 224.1, 296.7 , 0 );
setEffMoveKey( spep_3-4 + 208, ctbaki9, 224.6, 304.6 , 0 );
setEffMoveKey( spep_3-4 + 210, ctbaki9, 223.9, 316.7 , 0 );
setEffMoveKey( spep_3-4 + 212, ctbaki9, 225.3, 317.4 , 0 );
setEffMoveKey( spep_3-4 + 214, ctbaki9, 231.6, 322.5 , 0 );
setEffMoveKey( spep_3-4 + 216, ctbaki9, 234.1, 323.4 , 0 );

setEffScaleKey( spep_3-4 + 206, ctbaki9, 0.91, 0.91 );
setEffScaleKey( spep_3-4 + 208, ctbaki9, 0.98, 0.98 );
setEffScaleKey( spep_3-4 + 210, ctbaki9, 1.06, 1.06 );
setEffScaleKey( spep_3-4 + 212, ctbaki9, 1.09, 1.09 );
setEffScaleKey( spep_3-4 + 214, ctbaki9, 1.23, 1.23 );
setEffScaleKey( spep_3-4 + 216, ctbaki9, 1.28, 1.28 );

setEffRotateKey( spep_3-4 + 206, ctbaki9, 36.4 );
setEffRotateKey( spep_3-4 + 216, ctbaki9, 36.4 );

setEffAlphaKey( spep_3-4 + 206, ctbaki9, 0 );
setEffAlphaKey( spep_3-4 + 207, ctbaki9, 255 );
setEffAlphaKey( spep_3-4 + 208, ctbaki9, 255 );
setEffAlphaKey( spep_3-4 + 212, ctbaki9, 255 );
setEffAlphaKey( spep_3-4 + 214, ctbaki9, 64 );
setEffAlphaKey( spep_3-4 + 216, ctbaki9, 0 );

--文字エントリー
ctga8 = entryEffectLife( spep_3-4 + 212,  10005, 12, 0x100, -1, 0, 216.4, 236 );--ガッ

setEffMoveKey( spep_3-4 + 212, ctga8, 216.4, 236 , 0 );
setEffMoveKey( spep_3-4 + 214, ctga8, 218.9, 256.5 , 0 );
setEffMoveKey( spep_3-4 + 216, ctga8, 215.6, 263.4 , 0 );
setEffMoveKey( spep_3-4 + 218, ctga8, 219.9, 263.8 , 0 );
setEffMoveKey( spep_3-4 + 220, ctga8, 215.9, 266.5 , 0 );
setEffMoveKey( spep_3-4 + 224, ctga8, 215.9, 267 , 0 );

setEffScaleKey( spep_3-4 + 212, ctga8, 0.76, 0.76 );
setEffScaleKey( spep_3-4 + 214, ctga8, 1.07, 1.07 );
setEffScaleKey( spep_3-4 + 216, ctga8, 1.15, 1.15 );
setEffScaleKey( spep_3-4 + 218, ctga8, 1.18, 1.18 );
setEffScaleKey( spep_3-4 + 220, ctga8, 1.2, 1.2 );
setEffScaleKey( spep_3-4 + 224, ctga8, 1.21, 1.21 );

setEffRotateKey( spep_3-4 + 212, ctga8, 27.7 );
setEffRotateKey( spep_3-4 + 224, ctga8, 27.7 );

setEffAlphaKey( spep_3-4 + 212, ctga8, 0 );
setEffAlphaKey( spep_3-4 + 213, ctga8, 255 );
setEffAlphaKey( spep_3-4 + 214, ctga8, 255 );
setEffAlphaKey( spep_3-4 + 218, ctga8, 255 );
setEffAlphaKey( spep_3-4 + 220, ctga8, 64 );
setEffAlphaKey( spep_3-4 + 223, ctga8, 0 );
setEffAlphaKey( spep_3-4 + 224, ctga8, 0 );

--文字エントリー
ctzan2 = entryEffectLife( spep_3 + 228,  10010, 18, 0x100, -1, 0, 44.2, 181.1 );--ザンッ

setEffMoveKey( spep_3 + 228, ctzan2, 44.2, 181.1 , 0 );
setEffMoveKey( spep_3 + 234, ctzan2, 22.5, 224.2 , 0 );
setEffMoveKey( spep_3 + 236, ctzan2, 26.9, 241.9 , 0 );
setEffMoveKey( spep_3 + 238, ctzan2, 16.1, 242.5 , 0 );
setEffMoveKey( spep_3 + 240, ctzan2, 31.7, 250.7 , 0 );
setEffMoveKey( spep_3 + 242, ctzan2, 24.1, 252.1 , 0 );
setEffMoveKey( spep_3 + 244, ctzan2, 13.8, 249.3 , 0 );
setEffMoveKey( spep_3 + 246, ctzan2, 13.8, 249.3 , 0 );

setEffScaleKey( spep_3 + 228, ctzan2, 1.35, 1.35 );
setEffScaleKey( spep_3 + 234, ctzan2, 1.96, 1.96 );
setEffScaleKey( spep_3 + 236, ctzan2, 2.16, 2.16 );
setEffScaleKey( spep_3 + 238, ctzan2, 2.21, 2.21 );
setEffScaleKey( spep_3 + 240, ctzan2, 2.25, 2.25 );
setEffScaleKey( spep_3 + 242, ctzan2, 2.3, 2.3 );
setEffScaleKey( spep_3 + 246, ctzan2, 2.3, 2.3 );

setEffRotateKey( spep_3 + 228, ctzan2, -17.5 );
setEffRotateKey( spep_3 + 246, ctzan2, -17.5 );

setEffAlphaKey( spep_3 + 228, ctzan2, 0 );
setEffAlphaKey( spep_3 + 229, ctzan2, 255 );
setEffAlphaKey( spep_3 + 230, ctzan2, 255 );
setEffAlphaKey( spep_3 + 242, ctzan2, 255 );
setEffAlphaKey( spep_3 + 244, ctzan2, 128 );
setEffAlphaKey( spep_3 + 246, ctzan2, 0 );

--文字エントリー
ctba = entryEffectLife( spep_3 + 296,  10022, 24, 0x100, -1, 0, -197.5, -403.2 );--バッ

setEffMoveKey( spep_3 + 296, ctba, -197.5, -403.2 , 0 );
setEffMoveKey( spep_3 + 302, ctba, -213.2, -415.2 , 0 );
setEffMoveKey( spep_3 + 304, ctba, -218.4, -419.2 , 0 );
setEffMoveKey( spep_3 + 306, ctba, -219.1, -420.2 , 0 );
setEffMoveKey( spep_3 + 308, ctba, -219.7, -421.1 , 0 );
setEffMoveKey( spep_3 + 310, ctba, -220.4, -422.1 , 0 );
setEffMoveKey( spep_3 + 312, ctba, -221, -423.1 , 0 );
setEffMoveKey( spep_3 + 314, ctba, -221.6, -424 , 0 );
setEffMoveKey( spep_3 + 316, ctba, -223.2, -424.3 , 0 );
setEffMoveKey( spep_3 + 318, ctba, -227.7, -425 , 0 );
setEffMoveKey( spep_3 + 320, ctba, -235.2, -426.2 , 0 );

setEffScaleKey( spep_3 + 296, ctba, 1.02, 1.02 );
setEffScaleKey( spep_3 + 302, ctba, 1.14, 1.14 );
setEffScaleKey( spep_3 + 304, ctba, 1.18, 1.18 );
setEffScaleKey( spep_3 + 306, ctba, 1.19, 1.19 );
setEffScaleKey( spep_3 + 312, ctba, 1.19, 1.19 );
setEffScaleKey( spep_3 + 314, ctba, 1.2, 1.2 );
setEffScaleKey( spep_3 + 316, ctba, 1.21, 1.21 );
setEffScaleKey( spep_3 + 318, ctba, 1.25, 1.25 );
setEffScaleKey( spep_3 + 320, ctba, 1.32, 1.32 );

setEffRotateKey( spep_3 + 296, ctba, -27.2 );
setEffRotateKey( spep_3 + 320, ctba, -27.2 );

setEffAlphaKey( spep_3 + 296, ctba, 0 );
setEffAlphaKey( spep_3 + 297, ctba, 255 );
setEffAlphaKey( spep_3 + 298, ctba, 255 );
setEffAlphaKey( spep_3 + 314, ctba, 255 );
setEffAlphaKey( spep_3 + 316, ctba, 227 );
setEffAlphaKey( spep_3 + 318, ctba, 142 );
setEffAlphaKey( spep_3 + 320, ctba, 0 );

--文字エントリー
ctbaki10 = entryEffectLife( spep_3-4 + 368,  10020, 14, 0x100, -1, 0, -125.3, 386.6 );--バキッ

setEffMoveKey( spep_3-4 + 368, ctbaki10, -125.3, 386.6 , 0 );
setEffMoveKey( spep_3-4 + 370, ctbaki10, -139.3, 397.2 , 0 );
setEffMoveKey( spep_3-4 + 372, ctbaki10, -137.1, 398.6 , 0 );
setEffMoveKey( spep_3-4 + 374, ctbaki10, -153.4, 411 , 0 );
setEffMoveKey( spep_3-4 + 376, ctbaki10, -146.4, 408.2 , 0 );
setEffMoveKey( spep_3-4 + 378, ctbaki10, -156.3, 417.9 , 0 );
setEffMoveKey( spep_3-4 + 380, ctbaki10, -155.6, 435.2 , 0 );
setEffMoveKey( spep_3-4 + 382, ctbaki10, -153.4, 440.4 , 0 );

setEffScaleKey( spep_3-4 + 368, ctbaki10, 1.93, 1.93 );
setEffScaleKey( spep_3-4 + 370, ctbaki10, 2.04, 2.04 );
setEffScaleKey( spep_3-4 + 372, ctbaki10, 2.08, 2.08 );
setEffScaleKey( spep_3-4 + 374, ctbaki10, 2.21, 2.21 );
setEffScaleKey( spep_3-4 + 376, ctbaki10, 2.29, 2.29 );
setEffScaleKey( spep_3-4 + 378, ctbaki10, 2.32, 2.32 );
setEffScaleKey( spep_3-4 + 380, ctbaki10, 2.62, 2.62 );
setEffScaleKey( spep_3-4 + 382, ctbaki10, 2.72, 2.72 );

setEffRotateKey( spep_3-4 + 368, ctbaki10, -11.8 );
setEffRotateKey( spep_3-4 + 382, ctbaki10, -11.8 );

setEffAlphaKey( spep_3-4 + 368, ctbaki10, 255 );
setEffAlphaKey( spep_3-4 + 378, ctbaki10, 255 );
setEffAlphaKey( spep_3-4 + 380, ctbaki10, 64 );
setEffAlphaKey( spep_3-4 + 382, ctbaki10, 0 );


--se
playSe( spep_3, SE_04); --突進
playSe( spep_3+72, 1011); --ザン
playSe( spep_3+80, 1010); --ガッ
playSe( spep_3+102, 1009); --バキッ
playSe( spep_3+114, 1010); --ドンッ
playSe( spep_3+132, 1011); --バキッ
playSe( spep_3+154, 1001); --ガッ
playSe( spep_3-4+166, 1000); --ガッ
playSe( spep_3-4+170, 1009); --バキッ
playSe( spep_3-4+176, 1001); --ガッ
playSe( spep_3-4+182, 1010); --バキッ
playSe( spep_3-4+188, 1009); --ガッ
playSe( spep_3-4+194, 1010); --バキッ
playSe( spep_3-4+200, 1009); --ガッ
playSe( spep_3-4+206, 1010); --バキッ
playSe( spep_3-4+212, 1009); --ガッ
playSe( spep_3+228, 1011); --ザン
playSe( spep_3+296, 1007); --バッ
playSe( spep_3+334, SE_04); --突進
playSe( spep_3+368, 1011); --バキッ

-- ** エフェクト等 ** --
entryFade(spep_3+328, 4, 2, 2,fcolor_r,fcolor_g,fcolor_b,255);     -- whit_fe fade
entryFade(spep_3+360, 4, 2, 2,fcolor_r,fcolor_g,fcolor_b,255);     -- whit_fe fade

--次の準備
spep_4=spep_3+402;
--------------------------------------
--被弾
--------------------------------------
--エフェクト(前)
hit_f=entryEffect(spep_4,SP_06,0x100,-1,0,0,0);

setEffMoveKey( spep_4 + 0, hit_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 288, hit_f, 0, 0 , 0 );

setEffScaleKey(spep_4,hit_f,1.0,1.0);
setEffScaleKey(spep_4+288,hit_f,1.0,1.0);

setEffRotateKey(spep_4,hit_f,0);
setEffRotateKey(spep_4+288,hit_f,0);

setEffAlphaKey(spep_4,hit_f,255);
setEffAlphaKey(spep_4+288,hit_f,255);

--敵の動き
setDisp( spep_4, 1, 1 );
setDisp( spep_4+37, 1, 0);
setDisp( spep_4+38, 1, 0);
setDisp( spep_4+39, 1, 1 );
setDisp( spep_4+40, 1, 1 );
setDisp( spep_4+164, 1, 0 );

changeAnime( spep_4, 1, 105 );
changeAnime( spep_4+39, 1, 108 );
changeAnime( spep_4+40, 1, 108 );

setMoveKey( spep_4 + 0, 1, -4, 1.2 , 0 );
setMoveKey( spep_4 + 2, 1, -3.7, 1.1 , 0 );
setMoveKey( spep_4 + 4, 1, -3.4, 1.1 , 0 );
setMoveKey( spep_4 + 6, 1, -3.1, 1.1 , 0 );
setMoveKey( spep_4 + 8, 1, -2.9, 1.1 , 0 );
setMoveKey( spep_4 + 10, 1, -2.6, 1.1 , 0 );
setMoveKey( spep_4 + 12, 1, -2.4, 1.1 , 0 );
setMoveKey( spep_4 + 14, 1, -2.2, 1.2 , 0 );
setMoveKey( spep_4 + 16, 1, -2, 1.3 , 0 );
setMoveKey( spep_4 + 18, 1, -1.8, 1.3 , 0 );
setMoveKey( spep_4 + 20, 1, -1.6, 1.4 , 0 );
setMoveKey( spep_4 + 22, 1, -1.4, 1.5 , 0 );
setMoveKey( spep_4 + 24, 1, -1.3, 1.6 , 0 );
setMoveKey( spep_4 + 26, 1, -1.1, 1.7 , 0 );
setMoveKey( spep_4 + 28, 1, -1, 1.8 , 0 );
setMoveKey( spep_4 + 30, 1, -0.9, 1.8 , 0 );
setMoveKey( spep_4 + 32, 1, -0.8, 1.9 , 0 );
setMoveKey( spep_4 + 34, 1, -0.7, 2 , 0 );
setMoveKey( spep_4 + 36, 1, -0.6, 2 , 0 );
setMoveKey( spep_4 + 38, 1, -0.5, 2.1 , 0 );
setMoveKey( spep_4 + 39, 1, -453.8, 149.5 , 0 );
setMoveKey( spep_4 + 40, 1, -453.8, 149.5 , 0 );
--setMoveKey( spep_4 + 46, 1, -453.8, 149.5 , 0 );--46
setMoveKey( spep_4 + 48, 1, -359.5, 131.4 , 0 );
setMoveKey( spep_4 + 50, 1, -300.9, 114.9 , 0 );
setMoveKey( spep_4 + 52, 1, -221.5, 104.2 , 0 );
setMoveKey( spep_4 + 54, 1, -166.5, 90.2 , 0 );
setMoveKey( spep_4 + 56, 1, -112.3, 78.7 , 0 );
setMoveKey( spep_4 + 58, 1, -64.1, 68.5 , 0 );
setMoveKey( spep_4 + 60, 1, -21.9, 59.6 , 0 );
setMoveKey( spep_4 + 62, 1, 14.3, 51.9 , 0 );
setMoveKey( spep_4 + 64, 1, 34.4, 46.9 , 0 );
setMoveKey( spep_4 + 66, 1, 84, 43.5 , 0 );
setMoveKey( spep_4 + 68, 1, 101.4, 35.1 , 0 );
setMoveKey( spep_4 + 70, 1, 136.5, 35.7 , 0 );
setMoveKey( spep_4 + 72, 1, 157, 31.2 , 0 );
setMoveKey( spep_4 + 74, 1, 179, 28.3 , 0 );
setMoveKey( spep_4 + 76, 1, 198.6, 25.8 , 0 );
setMoveKey( spep_4 + 78, 1, 215.7, 23.6 , 0 );
setMoveKey( spep_4 + 80, 1, 230.4, 21.7 , 0 );
setMoveKey( spep_4 + 82, 1, 228.6, 18.1 , 0 );
setMoveKey( spep_4 + 84, 1, 257.7, 20.8 , 0 );
setMoveKey( spep_4 + 86, 1, 264.5, 12.5 , 0 );
setMoveKey( spep_4 + 88, 1, 283.9, 15.2 , 0 );
setMoveKey( spep_4 + 90, 1, 289.2, 10.9 , 0 );
setMoveKey( spep_4 + 92, 1, 298.7, 9 , 0 );
setMoveKey( spep_4 + 94, 1, 307.4, 7.2 , 0 );
setMoveKey( spep_4 + 96, 1, 315.2, 5.7 , 0 );
setMoveKey( spep_4 + 98, 1, 322.2, 4.3 , 0 );
setMoveKey( spep_4 + 100, 1, 328.3, 3 , 0 );
setMoveKey( spep_4 + 102, 1, 329.9, 1.3 , 0 );
setMoveKey( spep_4 + 104, 1, 331.6, -0.6 , 0 );
setMoveKey( spep_4 + 106, 1, 333.4, -2.7 , 0 );
setMoveKey( spep_4 + 108, 1, 335.4, -4.9 , 0 );
setMoveKey( spep_4 + 110, 1, 337.5, -7.4 , 0 );
setMoveKey( spep_4 + 112, 1, 339.8, -9.9 , 0 );
setMoveKey( spep_4 + 114, 1, 342.2, -12.6 , 0 );
setMoveKey( spep_4 + 116, 1, 344.7, -15.5 , 0 );
setMoveKey( spep_4 + 118, 1, 345, -17.2 , 0 );
setMoveKey( spep_4 + 120, 1, 351.9, -24.8 , 0 );
setMoveKey( spep_4 + 122, 1, 350, -22.1 , 0 );
setMoveKey( spep_4 + 124, 1, 360.8, -30.5 , 0 );
setMoveKey( spep_4 + 126, 1, 354.2, -32.1 , 0 );
setMoveKey( spep_4 + 128, 1, 366.1, -33.5 , 0 );
setMoveKey( spep_4 + 130, 1, 363.6, -44.3 , 0 );
setMoveKey( spep_4 + 132, 1, 372.8, -40.8 , 0 );
setMoveKey( spep_4 + 134, 1, 374.1, -55.2 , 0 );
setMoveKey( spep_4 + 136, 1, 384.1, -49.2 , 0 );
setMoveKey( spep_4 + 138, 1, 380.1, -66.3 , 0 );
setMoveKey( spep_4 + 140, 1, 392.2, -54.5 , 0 );
setMoveKey( spep_4 + 142, 1, 375.4, -57.4 , 0 );
setMoveKey( spep_4 + 144, 1, 395.3, -60.2 , 0 );
setMoveKey( spep_4 + 146, 1, 370.7, -51.4 , 0 );
setMoveKey( spep_4 + 148, 1, 396.5, -65 , 0 );
setMoveKey( spep_4 + 150, 1, 369.3, -64.1 , 0 );
setMoveKey( spep_4 + 152, 1, 391.2, -46.8 , 0 );
setMoveKey( spep_4 + 154, 1, 372.1, -73.3 , 0 );
setMoveKey( spep_4 + 156, 1, 395.6, -57.2 , 0 );
setMoveKey( spep_4 + 158, 1, 371.8, -74.6 , 0 );
setMoveKey( spep_4 + 160, 1, 407.2, -46 , 0 );
setMoveKey( spep_4 + 162, 1, 357.1, -55.4 , 0 );
setMoveKey( spep_4 + 164, 1, 397.1, -46.5 , 0 );

setScaleKey( spep_4 + 0, 1, 4.1, 4.1 );
setScaleKey( spep_4 + 2, 1, 3.79, 3.79 );
setScaleKey( spep_4 + 4, 1, 3.49, 3.49 );
setScaleKey( spep_4 + 6, 1, 3.2, 3.2 );
setScaleKey( spep_4 + 8, 1, 2.93, 2.93 );
setScaleKey( spep_4 + 10, 1, 2.67, 2.67 );
setScaleKey( spep_4 + 12, 1, 2.42, 2.42 );
setScaleKey( spep_4 + 14, 1, 2.19, 2.19 );
setScaleKey( spep_4 + 16, 1, 1.97, 1.97 );
setScaleKey( spep_4 + 18, 1, 1.76, 1.76 );
setScaleKey( spep_4 + 20, 1, 1.57, 1.57 );
setScaleKey( spep_4 + 22, 1, 1.39, 1.39 );
setScaleKey( spep_4 + 24, 1, 1.22, 1.22 );
setScaleKey( spep_4 + 26, 1, 1.07, 1.07 );
setScaleKey( spep_4 + 28, 1, 0.93, 0.93 );
setScaleKey( spep_4 + 30, 1, 0.8, 0.8 );
setScaleKey( spep_4 + 32, 1, 0.69, 0.69 );
setScaleKey( spep_4 + 34, 1, 0.59, 0.59 );
setScaleKey( spep_4 + 36, 1, 0.5, 0.5 );
--setScaleKey( spep_4 + 38, 1, 0.43, 0.43 );
setScaleKey( spep_4 + 39, 1, 2.79, 2.79 );--46
setScaleKey( spep_4 + 40, 1, 2.79, 2.79 );--46
setScaleKey( spep_4 + 48, 1, 2.48, 2.48 );
setScaleKey( spep_4 + 50, 1, 2.2, 2.2 );
setScaleKey( spep_4 + 52, 1, 1.95, 1.95 );
setScaleKey( spep_4 + 54, 1, 1.71, 1.71 );
setScaleKey( spep_4 + 56, 1, 1.51, 1.51 );
setScaleKey( spep_4 + 58, 1, 1.32, 1.32 );
setScaleKey( spep_4 + 60, 1, 1.16, 1.16 );
setScaleKey( spep_4 + 62, 1, 1.02, 1.02 );
setScaleKey( spep_4 + 64, 1, 0.9, 0.9 );
setScaleKey( spep_4 + 66, 1, 0.83, 0.83 );
setScaleKey( spep_4 + 68, 1, 0.76, 0.76 );
setScaleKey( spep_4 + 70, 1, 0.7, 0.7 );
setScaleKey( spep_4 + 72, 1, 0.64, 0.64 );
setScaleKey( spep_4 + 74, 1, 0.59, 0.59 );
setScaleKey( spep_4 + 76, 1, 0.54, 0.54 );
setScaleKey( spep_4 + 78, 1, 0.5, 0.5 );
setScaleKey( spep_4 + 80, 1, 0.47, 0.47 );
setScaleKey( spep_4 + 82, 1, 0.44, 0.44 );
setScaleKey( spep_4 + 84, 1, 0.42, 0.42 );
setScaleKey( spep_4 + 86, 1, 0.4, 0.4 );
setScaleKey( spep_4 + 88, 1, 0.38, 0.38 );
setScaleKey( spep_4 + 90, 1, 0.36, 0.36 );
setScaleKey( spep_4 + 92, 1, 0.34, 0.34 );
setScaleKey( spep_4 + 94, 1, 0.33, 0.33 );
setScaleKey( spep_4 + 96, 1, 0.31, 0.31 );
setScaleKey( spep_4 + 98, 1, 0.3, 0.3 );
setScaleKey( spep_4 + 100, 1, 0.29, 0.29 );
setScaleKey( spep_4 + 108, 1, 0.29, 0.29 );
setScaleKey( spep_4 + 110, 1, 0.28, 0.28 );
setScaleKey( spep_4 + 122, 1, 0.28, 0.28 );
setScaleKey( spep_4 + 124, 1, 0.27, 0.27 );
setScaleKey( spep_4 + 132, 1, 0.27, 0.27 );
setScaleKey( spep_4 + 134, 1, 0.26, 0.26 );
setScaleKey( spep_4 + 164, 1, 0.26, 0.26 );

setRotateKey( spep_4 + 0, 1, 21 );
setRotateKey( spep_4 + 2, 1, 21.3 );
setRotateKey( spep_4 + 4, 1, 21.6 );
setRotateKey( spep_4 + 6, 1, 21.9 );
setRotateKey( spep_4 + 8, 1, 22.2 );
setRotateKey( spep_4 + 10, 1, 22.5 );
setRotateKey( spep_4 + 12, 1, 22.8 );
setRotateKey( spep_4 + 14, 1, 23 );
setRotateKey( spep_4 + 16, 1, 23.2 );
setRotateKey( spep_4 + 18, 1, 23.4 );
setRotateKey( spep_4 + 20, 1, 23.6 );
setRotateKey( spep_4 + 22, 1, 23.8 );
setRotateKey( spep_4 + 24, 1, 24 );
setRotateKey( spep_4 + 26, 1, 24.2 );
setRotateKey( spep_4 + 28, 1, 24.3 );
setRotateKey( spep_4 + 30, 1, 24.4 );
setRotateKey( spep_4 + 32, 1, 24.6 );
setRotateKey( spep_4 + 34, 1, 24.7 );
setRotateKey( spep_4 + 36, 1, 24.8 );
setRotateKey( spep_4 + 39, 1, 0 );--39
setRotateKey( spep_4 + 40, 1, 0 );--39
setRotateKey( spep_4 + 48, 1, 0.1 );
setRotateKey( spep_4 + 50, 1, 0.2 );
setRotateKey( spep_4 + 52, 1, 0.3 );
setRotateKey( spep_4 + 54, 1, 0.4 );
setRotateKey( spep_4 + 56, 1, 0.5 );
setRotateKey( spep_4 + 58, 1, 0.5 );
setRotateKey( spep_4 + 60, 1, 0.6 );
setRotateKey( spep_4 + 62, 1, 0.7 );
setRotateKey( spep_4 + 64, 1, 0.7 );
setRotateKey( spep_4 + 66, 1, 0.9 );
setRotateKey( spep_4 + 68, 1, 1 );
setRotateKey( spep_4 + 70, 1, 1.1 );
setRotateKey( spep_4 + 72, 1, 1.3 );
setRotateKey( spep_4 + 74, 1, 1.4 );
setRotateKey( spep_4 + 76, 1, 1.5 );
setRotateKey( spep_4 + 78, 1, 1.6 );
setRotateKey( spep_4 + 80, 1, 1.6 );
setRotateKey( spep_4 + 82, 1, 1.7 );
setRotateKey( spep_4 + 84, 1, 2.9 );
setRotateKey( spep_4 + 86, 1, 4.1 );
setRotateKey( spep_4 + 88, 1, 5.2 );
setRotateKey( spep_4 + 90, 1, 6.2 );
setRotateKey( spep_4 + 92, 1, 7.1 );
setRotateKey( spep_4 + 94, 1, 7.9 );
setRotateKey( spep_4 + 96, 1, 8.6 );
setRotateKey( spep_4 + 98, 1, 9.3 );
setRotateKey( spep_4 + 100, 1, 9.9 );
setRotateKey( spep_4 + 102, 1, 10.7 );
setRotateKey( spep_4 + 104, 1, 11.6 );
setRotateKey( spep_4 + 106, 1, 12.6 );
setRotateKey( spep_4 + 108, 1, 13.7 );
setRotateKey( spep_4 + 110, 1, 14.8 );
setRotateKey( spep_4 + 112, 1, 16 );
setRotateKey( spep_4 + 114, 1, 17.3 );
setRotateKey( spep_4 + 116, 1, 18.7 );
setRotateKey( spep_4 + 118, 1, 20.1 );
setRotateKey( spep_4 + 120, 1, 21.6 );
setRotateKey( spep_4 + 122, 1, 23.2 );
setRotateKey( spep_4 + 124, 1, 24.9 );
setRotateKey( spep_4 + 126, 1, 26.6 );
setRotateKey( spep_4 + 128, 1, 28.4 );
setRotateKey( spep_4 + 130, 1, 30.3 );
setRotateKey( spep_4 + 132, 1, 32.3 );
setRotateKey( spep_4 + 134, 1, 34.4 );
setRotateKey( spep_4 + 136, 1, 36.5 );
setRotateKey( spep_4 + 138, 1, 38.7 );
setRotateKey( spep_4 + 164, 1, 38.7 );

--エフェクト(後)
hit_b=entryEffect(spep_4,SP_07,0x80,-1,0,0,0);

setEffMoveKey( spep_4 + 0, hit_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 288, hit_b, 0, 0 , 0 );

setEffScaleKey(spep_4,hit_b,1.0,1.0);
setEffScaleKey(spep_4+288,hit_b,1.0,1.0);

setEffRotateKey(spep_4,hit_b,0);
setEffRotateKey(spep_4+288,hit_b,0);

setEffAlphaKey(spep_4,hit_b,255);
setEffAlphaKey(spep_4+288,hit_b,255);


--se
playSe( spep_4, 44); --敵が飛んでいく
playSe( spep_4+48, 1033); --岩にぶつかる
playSe( spep_4+66, 1033); --岩にぶつかる
playSe( spep_4+82, 1033); --岩にぶつかる
SE2=playSe(spep_4+94,1044);--地響き
stopSe(spep_4+188,SE2,0);
playSe( spep_4+188, 10); --岩にぶつかる

-- ダメージ表示
dealDamage(spep_4+188);
entryFade( spep_4+268, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_4+278);
else 
------------------------------------------------------
--敵がわ
------------------------------------------------------




spep_0=0;

--エフェクト
operation=entryEffectLife(spep_0,SP_01x,220,0x100,-1,0,0,0);

setEffMoveKey( spep_0 + 0, operation, 0, 0 , 0 );
setEffMoveKey( spep_0 + 220, operation, 0, 0 , 0 );

setEffScaleKey(spep_0,operation,-1.0,1.0);
setEffScaleKey(spep_0+220,operation,-1.0,1.0);

setEffRotateKey(spep_0,operation,0);
setEffRotateKey(spep_0+220,operation,0);

setEffAlphaKey(spep_0,operation,255);
setEffAlphaKey(spep_0+220,operation,255);

--se
SE1=playSe(spep_0,1044);--地響き

--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

SP_dodge = spep_0+130 ; --エンドフェイズのフレーム数を置き換える

stopSe(SP_dodge-12,SE1,0);
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

--顔カットイン
--speff=entryEffect(spep_0+86,1504,0x100,-1,0,0,0);  --カットイン(顔)
--setEffReplaceTexture(speff,3,2);  --カットイン差し替え
--speff1=entryEffect(spep_0+86,1505,0x100,-1,0,0,0);  --カットイン(セリフ)
--setEffReplaceTexture(speff1,4,5);  --セリフカットイン差し替え

--ゴゴゴ
--ctgogo=entryEffectLife(spep_0+98,190006,70,0x100,-1,0,520);--ゴゴゴ

--setEffMoveKey(spep_0+98,ctgogo,0,520,0);
--setEffMoveKey(spep_0+168,ctgogo,0,520,0);

--setEffScaleKey(spep_0+98, ctgogo, 0.7, 0.7);
--setEffScaleKey(spep_0+168, ctgogo, 0.7, 0.7);

--setEffAlphaKey( spep_0 + 98, ctgogo, 0 );
--setEffAlphaKey( spep_0 + 99, ctgogo, 255 );
--setEffAlphaKey( spep_0 + 100, ctgogo, 255 );
--setEffAlphaKey( spep_0 + 168, ctgogo, 255 );

--setEffRotateKey(spep_0+98,ctgogo,0);
--setEffRotateKey(spep_0+168,ctgogo,0);

-- ** エフェクト等 ** --
entryFade(spep_0+212, 4, 10, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- whit_fe fade

--se
playSe( spep_0+98, SE_04); --ゴゴゴ
playSe( spep_0+190, 1025); --ジャンプ
stopSe(spep_0+220,SE1,0);

--次の準備
spep_1=spep_0+220;

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
--蹴り上げ
--------------------------------------
--エフェクト(前)
kick_f=entryEffectLife(spep_2,SP_02x,146,0x100,-1,0,0,0);

setEffMoveKey( spep_2 + 0, kick_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 146, kick_f, 0, 0 , 0 );

setEffScaleKey(spep_2,kick_f,1.0,1.0);
setEffScaleKey(spep_2+146,kick_f,1.0,1.0);

setEffRotateKey(spep_2,kick_f,0);
setEffRotateKey(spep_2+146,kick_f,0);

setEffAlphaKey(spep_2,kick_f,255);
setEffAlphaKey(spep_2+146,kick_f,255);

--エフェクト(後)
kick_b=entryEffectLife(spep_2,SP_03x,146,0x80,-1,0,0,0);

setEffMoveKey( spep_2 + 0, kick_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 146, kick_b, 0, 0 , 0 );

setEffScaleKey(spep_2,kick_b,1.0,1.0);
setEffScaleKey(spep_2+146,kick_b,1.0,1.0);

setEffRotateKey(spep_2,kick_b,0);
setEffRotateKey(spep_2+146,kick_b,0);

setEffAlphaKey(spep_2,kick_b,255);
setEffAlphaKey(spep_2+146,kick_b,255);

--敵の動き
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 48, 1, 0);
setDisp( spep_2 + 96, 1, 1);
setDisp( spep_2 + 138, 1, 0);

changeAnime( spep_2 + 0, 1, 104 );
changeAnime( spep_2 + 21, 1, 106 );--24
changeAnime( spep_2 + 22, 1, 106 );--24
changeAnime( spep_2 + 124, 1, 107 );

--setMoveKey( spep_2 + 0, 1, 462, -167.7 , 0 );
setMoveKey( spep_2  , 1, 457.7, -167.7 , 0 );
setMoveKey( spep_2 + 2, 1, 445, -167.7 , 0 );
setMoveKey( spep_2 + 4, 1, 423.7, -167.7 , 0 );
setMoveKey( spep_2 + 6, 1, 394, -167.7 , 0 );
setMoveKey( spep_2 + 8, 1, 355.7, -167.7 , 0 );
setMoveKey( spep_2 + 10, 1, 308.9, -167.7 , 0 );
setMoveKey( spep_2 + 12, 1, 253.7, -167.7 , 0 );
setMoveKey( spep_2 + 14, 1, 189.9, -167.7 , 0 );
setMoveKey( spep_2 + 16, 1, 117.7, -167.7 , 0 );
setMoveKey( spep_2 + 18, 1, 36.9, -167.7 , 0 );
setMoveKey( spep_2 + 20, 1, 34.9, -167.8 , 0 );
setMoveKey( spep_2 + 22, 1, -10.2, -134.9 , 0 );
setMoveKey( spep_2 + 24, 1, 3.5, -122.3 , 0 );
setMoveKey( spep_2 + 26, 1, -9.2, -128 , 0 );
setMoveKey( spep_2 + 28, 1, -2.7, -116.1 , 0 );
setMoveKey( spep_2 + 30, 1, -11, -120.4 , 0 );
setMoveKey( spep_2 + 32, 1, 121.2, 100.7 , 0 );
setMoveKey( spep_2 + 34, 1, 232.4, 292.4 , 0 );
setMoveKey( spep_2 + 36, 1, 326.7, 454.5 , 0 );
setMoveKey( spep_2 + 38, 1, 404, 587.2 , 0 );
setMoveKey( spep_2 + 40, 1, 464, 690.4 , 0 );
setMoveKey( spep_2 + 42, 1, 507, 764.1 , 0 );
setMoveKey( spep_2 + 44, 1, 532.7, 808.4 , 0 );
setMoveKey( spep_2 + 46, 1, 541.3, 823.1 , 0 );

setMoveKey( spep_2 + 96, 1, -148.5, -827.4 , 0 );
setMoveKey( spep_2 + 98, 1, -121, -720.8 , 0 );
setMoveKey( spep_2 + 100, 1, -95.3, -620.9 , 0 );
setMoveKey( spep_2 + 102, 1, -71.3, -527.7 , 0 );
setMoveKey( spep_2 + 104, 1, -49.1, -441.2 , 0 );
setMoveKey( spep_2 + 106, 1, -28.5, -361.5 , 0 );
setMoveKey( spep_2 + 108, 1, -9.7, -288.6 , 0 );
setMoveKey( spep_2 + 110, 1, 7.3, -222.3 , 0 );
setMoveKey( spep_2 + 112, 1, 22.6, -162.8 , 0 );
setMoveKey( spep_2 + 114, 1, 36.2, -110 , 0 );
setMoveKey( spep_2 + 116, 1, 48.1, -63.9 , 0 );
setMoveKey( spep_2 + 118, 1, 58.2, -24.6 , 0 );
--setMoveKey( spep_2 + 120, 1, 66.6, 8 , 0 );
setMoveKey( spep_2 + 120, 1, 118.7, -19.5 , 0 );
setMoveKey( spep_2 + 122, 1, 131.1, -39.4 , 0 );
setMoveKey( spep_2 + 124, 1, 148.1, -147.1 , 0 );
setMoveKey( spep_2 + 126, 1, 189.4, -210.8 , 0 );
setMoveKey( spep_2 + 128, 1, 263.8, -326.9 , 0 );
setMoveKey( spep_2 + 130, 1, 307.1, -396.4 , 0 );
setMoveKey( spep_2 + 132, 1, 394.7, -529.1 , 0 );
setMoveKey( spep_2 + 134, 1, 487, -670.8 , 0 );
setMoveKey( spep_2 + 138, 1, 590.5, -829.4 , 0 );

setScaleKey( spep_2 + 0, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 20, 1, 1.2, 1.2 );--22
setScaleKey( spep_2 + 21, 1, 1.25, 1.25 );--23
setScaleKey( spep_2 + 22, 1, 1.25, 1.25 );--24
setScaleKey( spep_2 + 26, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 28, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 30, 1, 1.2, 1.2 );

setScaleKey( spep_2 + 96, 1, 1, 1 );
setScaleKey( spep_2 + 118, 1, 1, 1 );--120
--setScaleKey( spep_2 + 121, 1, 1, 1 );
setScaleKey( spep_2 + 119, 1, 1.12, 1.12 );--122
setScaleKey( spep_2 + 122, 1, 1.12, 1.12 );--122
setScaleKey( spep_2 + 123, 1, 1.12, 1.12 );--122
--setScaleKey( spep_2 + 124, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 124, 1, 0.47, 0.47 );--126
setScaleKey( spep_2 + 128, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 130, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 132, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 134, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 136, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 138, 1, 0.77, 0.77 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 + 20, 1, 0 );--22
setRotateKey( spep_2 + 21, 1, -35.1 );
setRotateKey( spep_2 + 22, 1, -35.1 );
setRotateKey( spep_2 + 26, 1, -34.2 );
setRotateKey( spep_2 + 28, 1, -33.6 );
setRotateKey( spep_2 + 30, 1, -33.2 );
setRotateKey( spep_2 + 32, 1, -33.1 );
setRotateKey( spep_2 + 34, 1, -27.2 );
setRotateKey( spep_2 + 36, 1, -22.2 );
setRotateKey( spep_2 + 38, 1, -17.9 );
setRotateKey( spep_2 + 40, 1, -14.3 );
setRotateKey( spep_2 + 42, 1, -11.6 );
setRotateKey( spep_2 + 44, 1, -9.7 );
setRotateKey( spep_2 + 46, 1, -8.5 );
setRotateKey( spep_2 + 48, 1, -8.1 );

setRotateKey( spep_2 + 96, 1, -8.2 );
setRotateKey( spep_2 + 98, 1, -8.7 );
setRotateKey( spep_2 + 100, 1, -9.2 );
setRotateKey( spep_2 + 102, 1, -9.6 );
setRotateKey( spep_2 + 104, 1, -10 );
setRotateKey( spep_2 + 106, 1, -10.4 );
setRotateKey( spep_2 + 108, 1, -10.7 );
setRotateKey( spep_2 + 110, 1, -11 );
setRotateKey( spep_2 + 112, 1, -11.3 );
setRotateKey( spep_2 + 114, 1, -11.5 );
setRotateKey( spep_2 + 116, 1, -11.8 );
setRotateKey( spep_2 + 118, 1, -11.9 );
setRotateKey( spep_2 + 119, 1, -12.1 );--120
setRotateKey( spep_2 + 122, 1, 18.2 );--122
setRotateKey( spep_2 + 123, 1, 35.8 );--124
setRotateKey( spep_2 + 124, 1, -20.2 );--126
setRotateKey( spep_2 + 136, 1, -20.2 );



--文字エントリー
ctga = entryEffectLife( spep_2 + 20,  10005, 20, 0x100, -1, 0, 10.2, 49.3 );--ガッ

setEffMoveKey( spep_2 + 20, ctga, 10.2, 49.3 , 0 );--24
setEffMoveKey( spep_2 + 26, ctga, -10.2, 64.6 , 0 );
setEffMoveKey( spep_2 + 28, ctga, -10.5, 73.3 , 0 );
setEffMoveKey( spep_2 + 30, ctga, -19.3, 74 , 0 );
setEffMoveKey( spep_2 + 32, ctga, -10.8, 79.6 , 0 );
setEffMoveKey( spep_2 + 34, ctga, -22.5, 81.2 , 0 );
setEffMoveKey( spep_2 + 36, ctga, -17.9, 81.9 , 0 );
setEffMoveKey( spep_2 + 38, ctga, -25.2, 80.1 , 0 );
setEffMoveKey( spep_2 + 40, ctga, -25.7, 80.6 , 0 );

setEffScaleKey( spep_2 + 20, ctga, 1.17, 1.17 );--24
setEffScaleKey( spep_2 + 26, ctga, 1.53, 1.53 );
setEffScaleKey( spep_2 + 28, ctga, 1.64, 1.64 );
setEffScaleKey( spep_2 + 30, ctga, 1.72, 1.72 );
setEffScaleKey( spep_2 + 32, ctga, 1.77, 1.77 );
setEffScaleKey( spep_2 + 34, ctga, 1.8, 1.8 );
setEffScaleKey( spep_2 + 36, ctga, 1.81, 1.81 );
setEffScaleKey( spep_2 + 38, ctga, 1.84, 1.84 );
setEffScaleKey( spep_2 + 40, ctga, 1.85, 1.85 );

setEffRotateKey( spep_2 + 20, ctga, -20.2 );--24
setEffRotateKey( spep_2 + 40, ctga, -20.2 );

setEffAlphaKey( spep_2 + 20, ctga, 0 );--20
setEffAlphaKey( spep_2 + 21, ctga, 255 );
setEffAlphaKey( spep_2 + 22, ctga, 255 );
setEffAlphaKey( spep_2 + 36, ctga, 255 );
setEffAlphaKey( spep_2 + 38, ctga, 64 );
setEffAlphaKey( spep_2 + 40, ctga, 0 );


--文字エントリー
ctbaki = entryEffectLife( spep_2 + 118,  10020, 18, 0x100, -1, 0, 54.5, 217.2 );--バキッ

setEffMoveKey( spep_2 + 118, ctbaki, 54.5, 217.2 , 0 );--122
setEffMoveKey( spep_2 + 124, ctbaki, 46.5, 225.2 , 0 );
setEffMoveKey( spep_2 + 126, ctbaki, 48, 225.9 , 0 );
setEffMoveKey( spep_2 + 128, ctbaki, 38.6, 235.3 , 0 );
setEffMoveKey( spep_2 + 130, ctbaki, 42.8, 232.9 , 0 );
setEffMoveKey( spep_2 + 132, ctbaki, 37.3, 239.9 , 0 );
setEffMoveKey( spep_2 + 134, ctbaki, 39.4, 251 , 0 );
setEffMoveKey( spep_2 + 136, ctbaki, 41.3, 254.2 , 0 );

setEffScaleKey( spep_2 + 118, ctbaki, 1.25, 1.25 );--122
setEffScaleKey( spep_2 + 124, ctbaki, 1.32, 1.32 );
setEffScaleKey( spep_2 + 126, ctbaki, 1.35, 1.35 );
setEffScaleKey( spep_2 + 128, ctbaki, 1.43, 1.43 );
setEffScaleKey( spep_2 + 130, ctbaki, 1.49, 1.49 );
setEffScaleKey( spep_2 + 132, ctbaki, 1.5, 1.5 );
setEffScaleKey( spep_2 + 134, ctbaki, 1.7, 1.7 );
setEffScaleKey( spep_2 + 136, ctbaki, 1.76, 1.76 );

setEffRotateKey( spep_2 + 118, ctbaki, -4 );--122
setEffRotateKey( spep_2 + 136, ctbaki, -4 );

setEffAlphaKey( spep_2 + 118, ctbaki, 0 );--122
setEffAlphaKey( spep_2 + 119, ctbaki, 255 );
setEffAlphaKey( spep_2 + 132, ctbaki, 255 );
setEffAlphaKey( spep_2 + 134, ctbaki, 64 );
setEffAlphaKey( spep_2 + 136, ctbaki, 0 );

-- ** エフェクト等 ** --
entryFade(spep_2+142, 4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- whit_fe fade

--se
playSe(spep_2+20,1010);--蹴り
playSe(spep_2+78,31);--変身！
playSe(spep_2+118,1009);--はたきおとし

--次の準備
spep_3=spep_2+146;

--------------------------------------
--狼牙風風拳
--------------------------------------
--エフェクト(前)
huhuken_f=entryEffectLife(spep_3,SP_04x,402,0x100,-1,0,0,0);

setEffMoveKey( spep_3 + 0, huhuken_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 402, huhuken_f, 0, 0 , 0 );

setEffScaleKey(spep_3,huhuken_f,1.0,1.0);
setEffScaleKey(spep_3+402,huhuken_f,1.0,1.0);

setEffRotateKey(spep_3,huhuken_f,0);
setEffRotateKey(spep_3+402,huhuken_f,0);

setEffAlphaKey(spep_3,huhuken_f,255);
setEffAlphaKey(spep_3+400,huhuken_f,255);
setEffAlphaKey(spep_3+401,huhuken_f,255);
setEffAlphaKey(spep_3+402,huhuken_f,0);

--エフェクト(後)
huhuken_b=entryEffectLife(spep_3,SP_05x,402,0x80,-1,0,0,0);

setEffMoveKey( spep_3 + 0, huhuken_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 402, huhuken_b, 0, 0 , 0 );

setEffScaleKey(spep_3,huhuken_b,1.0,1.0);
setEffScaleKey(spep_3+402,huhuken_b,1.0,1.0);

setEffRotateKey(spep_3,huhuken_b,0);
setEffRotateKey(spep_3+402,huhuken_b,0);

setEffAlphaKey(spep_3,huhuken_b,255);
setEffAlphaKey(spep_3+400,huhuken_b,255);
setEffAlphaKey(spep_3+401,huhuken_b,255);
setEffAlphaKey(spep_3+402,huhuken_b,255);

--流線
ryusen = entryEffectLife( spep_3 + 0,  914, 364, 0x80, -1, 0, 705.3, 39.2 );

setEffMoveKey( spep_3 + 0, ryusen, 0, 0 , 0 );
setEffMoveKey( spep_3 + 364, ryusen, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, ryusen, 4.29, 1.12 );
setEffScaleKey( spep_3 + 364, ryusen, 4.29, 1.12 );

setEffRotateKey( spep_3 + 0, ryusen, -180 );
setEffRotateKey( spep_3 + 364, ryusen, -180 );

setEffAlphaKey( spep_3 + 0, ryusen, 118 );
setEffAlphaKey( spep_3 + 52, ryusen, 118 );
setEffAlphaKey( spep_3 + 54, ryusen, 88 );
setEffAlphaKey( spep_3 + 56, ryusen, 59 );
setEffAlphaKey( spep_3 + 58, ryusen, 29 );
setEffAlphaKey( spep_3 + 60, ryusen, 0 );
setEffAlphaKey( spep_3 + 332, ryusen, 0 );
setEffAlphaKey( spep_3 + 334, ryusen, 118 );
setEffAlphaKey( spep_3 + 364, ryusen, 118 );

--敵の動き
setDisp( spep_3 + 60, 1, 1 );
setDisp( spep_3 + 280, 1, 0 );
setDisp( spep_3 + 367, 1, 1 );
setDisp( spep_3 + 368, 1, 1 );
setDisp( spep_3 + 402, 1, 0 );

changeAnime( spep_3 + 60, 1, 108 );
changeAnime( spep_3 + 73, 1, 106 );--76
changeAnime( spep_3 + 74, 1, 106 );--76
changeAnime( spep_3 + 81, 1, 108 );--84
changeAnime( spep_3 + 82, 1, 108 );--84
changeAnime( spep_3 + 103, 1, 106 );--106
changeAnime( spep_3 + 104, 1, 106 );--106
changeAnime( spep_3 + 115, 1, 108 );--118
changeAnime( spep_3 + 116, 1, 108 );--118
changeAnime( spep_3 + 133, 1, 106 );--136
changeAnime( spep_3 + 134, 1, 106 );--136
changeAnime( spep_3 + 155, 1, 108 );--158
changeAnime( spep_3 + 156, 1, 108 );--158
changeAnime( spep_3 + 229, 1, 106 );--232
changeAnime( spep_3 + 230, 1, 106 );--232
changeAnime( spep_3 + 367, 1, 108 );--368
changeAnime( spep_3 + 368, 1, 108 );--368

setMoveKey( spep_3 + 60, 1, -265.4, 526.4 , 0 );
setMoveKey( spep_3 + 62, 1, -211.2, 443.1 , 0 );
setMoveKey( spep_3 + 64, 1, -156.8, 359.6 , 0 );
setMoveKey( spep_3 + 66, 1, -102.5, 275.8 , 0 );
setMoveKey( spep_3 + 68, 1, -48.7, 192.1 , 0 );
setMoveKey( spep_3 + 70, 1, 5.2, 108.8 , 0 );
setMoveKey( spep_3 + 72, 1, 59.4, 25.6 , 0 );
--setMoveKey( spep_3 + 74, 1, 130.4, -43 , 0 );
setMoveKey( spep_3 + 73, 1, 76.4, -55.8 , 0 );
setMoveKey( spep_3 + 74, 1, 76.4, -55.8 , 0 );
setMoveKey( spep_3 + 78, 1, 113.4, -64.7 , 0 );
setMoveKey( spep_3 + 80, 1, 103.3, -65.3 , 0 );
--setMoveKey( spep_3 + 82, 1, 125.6, -59 , 0 );
setMoveKey( spep_3 + 81, 1, 150.7, -63.2 , 0 );--84
setMoveKey( spep_3 + 82, 1, 150.7, -63.2 , 0 );--84
setMoveKey( spep_3 + 86, 1, 158.4, -82.7 , 0 );
setMoveKey( spep_3 + 88, 1, 159.5, -60.4 , 0 );
setMoveKey( spep_3 + 90, 1, 160.4, -73.4 , 0 );
setMoveKey( spep_3 + 92, 1, 153.9, -62.7 , 0 );
setMoveKey( spep_3 + 94, 1, 165.6, -69.3 , 0 );
setMoveKey( spep_3 + 96, 1, 164.5, -67.6 , 0 );
setMoveKey( spep_3 + 98, 1, 163.4, -66.1 , 0 );
setMoveKey( spep_3 + 100, 1, 162.2, -64.6 , 0 );
setMoveKey( spep_3 + 102, 1, 161.1, -63.5 , 0 );
--setMoveKey( spep_3 + 104, 1, 159.9, -62.4 , 0 );
setMoveKey( spep_3 + 103, 1, 103.4, -40.8 , 0 );--106
setMoveKey( spep_3 + 104, 1, 103.4, -40.8 , 0 );--106
setMoveKey( spep_3 + 108, 1, 131.7, -32.5 , 0 );
setMoveKey( spep_3 + 110, 1, 125.3, -40.3 , 0 );
setMoveKey( spep_3 + 112, 1, 150, -37.6 , 0 );
setMoveKey( spep_3 + 114, 1, 141.2, -34.8 , 0 );
--setMoveKey( spep_3 + 116, 1, 145.8, -38.7 , 0 );
setMoveKey( spep_3 + 115, 1, 140.3, -45.8 , 0 );--118
setMoveKey( spep_3 + 116, 1, 140.3, -45.8 , 0 );--118
setMoveKey( spep_3 + 120, 1, 166.6, -38 , 0 );
setMoveKey( spep_3 + 122, 1, 152.7, -34 , 0 );
setMoveKey( spep_3 + 124, 1, 173.1, -26.5 , 0 );
setMoveKey( spep_3 + 126, 1, 159.9, -28.3 , 0 );
setMoveKey( spep_3 + 128, 1, 176.3, -25.5 , 0 );
setMoveKey( spep_3 + 130, 1, 175.1, -24.4 , 0 );
setMoveKey( spep_3 + 132, 1, 173.3, -23.8 , 0 );
--setMoveKey( spep_3 + 134, 1, 170.8, -23.5 , 0 );
setMoveKey( spep_3 + 133, 1, 128.9, -50.5 , 0 );--136
setMoveKey( spep_3 + 134, 1, 128.9, -50.5 , 0 );--136
setMoveKey( spep_3 + 138, 1, 158.1, -73 , 0 );
setMoveKey( spep_3 + 140, 1, 159.3, -57.2 , 0 );
setMoveKey( spep_3 + 142, 1, 188.4, -57 , 0 );
setMoveKey( spep_3 + 144, 1, 170.6, -69.8 , 0 );
--setMoveKey( spep_3 + 146, 1, 188.2, -56.7 , 0 );
setMoveKey( spep_3 + 145, 1, 58.4, 66 , 0 );
setMoveKey( spep_3 + 150, 1, 72.7, 73 , 0 );
setMoveKey( spep_3 + 152, 1, 82.9, 77.9 , 0 );
setMoveKey( spep_3 + 154, 1, 89.1, 80.9 , 0 );
--setMoveKey( spep_3 + 156, 1, 91.1, 81.9 , 0 );
setMoveKey( spep_3 + 155, 1, 85.6, 103.9 , 0 );
setMoveKey( spep_3 + 156, 1, 85.6, 103.9 , 0 );
setMoveKey( spep_3 + 160, 1, 124.8, 98.1 , 0 );
setMoveKey( spep_3 + 162, 1, 114.8, 92.4 , 0 );
setMoveKey( spep_3 + 164, 1, 89.6, 110.7 , 0 );
setMoveKey( spep_3 + 166, 1, 129.8, 100.1 , 0 );
setMoveKey( spep_3 + 168, 1, 115.1, 99.1 , 0 );
setMoveKey( spep_3 + 170, 1, 86.1, 91.4 , 0 );
setMoveKey( spep_3 + 172, 1, 126.3, 104.8 , 0 );
setMoveKey( spep_3 + 174, 1, 114.8, 92.4 , 0 );
setMoveKey( spep_3 + 176, 1, 89.1, 105.8 , 0 );
setMoveKey( spep_3 + 178, 1, 125.6, 111.7 , 0 );
setMoveKey( spep_3 + 180, 1, 115.1, 99.1 , 0 );
setMoveKey( spep_3 + 182, 1, 94, 79.6 , 0 );
setMoveKey( spep_3 + 184, 1, 115.8, 109.6 , 0 );
setMoveKey( spep_3 + 186, 1, 114.8, 92.4 , 0 );
setMoveKey( spep_3 + 188, 1, 87.8, 100.4 , 0 );
setMoveKey( spep_3 + 190, 1, 118.9, 111.1 , 0 );
setMoveKey( spep_3 + 192, 1, 115.1, 99.1 , 0 );
setMoveKey( spep_3 + 194, 1, 93.5, 120.5 , 0 );
setMoveKey( spep_3 + 196, 1, 102.8, 80.3 , 0 );
setMoveKey( spep_3 + 198, 1, 114.8, 92.4 , 0 );
setMoveKey( spep_3 + 200, 1, 81.8, 102.9 , 0 );
setMoveKey( spep_3 + 202, 1, 126.4, 99.5 , 0 );
setMoveKey( spep_3 + 204, 1, 115.1, 99.1 , 0 );
setMoveKey( spep_3 + 206, 1, 98.8, 89.3 , 0 );
setMoveKey( spep_3 + 208, 1, 119.2, 104.9 , 0 );
setMoveKey( spep_3 + 210, 1, 114.8, 92.4 , 0 );
setMoveKey( spep_3 + 212, 1, 88.6, 113.2 , 0 );
setMoveKey( spep_3 + 214, 1, 147.3, 97.2 , 0 );
setMoveKey( spep_3 + 216, 1, 128.6, 94.9 , 0 );
setMoveKey( spep_3 + 218, 1, 143.4, 112 , 0 );
--setMoveKey( spep_3 + 220, 1, 144.5, 94.7 , 0 );
--setMoveKey( spep_3 + 222, 1, 88.7, 9.3 , 0 );
setMoveKey( spep_3 + 119, 1, 110.7, 11.7 , 0 );--224
setMoveKey( spep_3 + 220, 1, 110.7, 11.7 , 0 );--224
setMoveKey( spep_3 + 224, 1, 124.2, 13.5 , 0 );--226
setMoveKey( spep_3 + 228, 1, 129.6, 15.1 , 0 );
--setMoveKey( spep_3 + 230, 1, 126.6, 16.3 , 0 );
setMoveKey( spep_3 + 229, 1, 152.9, -24.2 , 0 );--232
setMoveKey( spep_3 + 230, 1, 182.1, -47.2 , 0 );--232
setMoveKey( spep_3 + 236, 1, 166.1, -40.3 , 0 );
setMoveKey( spep_3 + 238, 1, 189.9, -34.2 , 0 );
setMoveKey( spep_3 + 240, 1, 182.2, -46.3 , 0 );
setMoveKey( spep_3 + 242, 1, 182.7, -32.4 , 0 );
setMoveKey( spep_3 + 244, 1, 192.3, -43.1 , 0 );
setMoveKey( spep_3 + 246, 1, 189.3, -36.2 , 0 );
setMoveKey( spep_3 + 248, 1, 193.4, -41.1 , 0 );
setMoveKey( spep_3 + 250, 1, 195.6, -37.3 , 0 );
setMoveKey( spep_3 + 252, 1, 198.3, -41 , 0 );
setMoveKey( spep_3 + 254, 1, 199, -37.6 , 0 );
setMoveKey( spep_3 + 256, 1, 200.5, -37.6 , 0 );
setMoveKey( spep_3 + 258, 1, 201.8, -37.6 , 0 );
setMoveKey( spep_3 + 260, 1, 203, -37.7 , 0 );
setMoveKey( spep_3 + 262, 1, 204, -37.7 , 0 );
setMoveKey( spep_3 + 264, 1, 204.8, -37.8 , 0 );
setMoveKey( spep_3 + 266, 1, 205.5, -37.8 , 0 );
setMoveKey( spep_3 + 268, 1, 205.9, -37.8 , 0 );
setMoveKey( spep_3 + 270, 1, 206.2, -37.9 , 0 );
setMoveKey( spep_3 + 272, 1, 206.4, -37.9 , 0 );
setMoveKey( spep_3 + 274, 1, 268.1, -49.4 , 0 );
setMoveKey( spep_3 + 276, 1, 453.2, -84.1 , 0 );
setMoveKey( spep_3 + 278, 1, 761.6, -141.8 , 0 );
setMoveKey( spep_3 + 280, 1, 1193.5, -222.5 , 0 );

setMoveKey( spep_3 + 367, 1, -1.1, 180.7 , 0 );
setMoveKey( spep_3 + 368, 1, -1.1, 180.7 , 0 );
setMoveKey( spep_3 + 370, 1, 46.3, 116.2 , 0 );
setMoveKey( spep_3 + 372, 1, 13.5, 111.6 , 0 );
setMoveKey( spep_3 + 374, 1, 40.6, 105.7 , 0 );
setMoveKey( spep_3 + 376, 1, 31.9, 129.4 , 0 );
setMoveKey( spep_3 + 378, 1, 47.9, 114.5 , 0 );
setMoveKey( spep_3 + 380, 1, 50.3, 139.1 , 0 );
setMoveKey( spep_3 + 382, 1, 50.3, 122.2 , 0 );
setMoveKey( spep_3 + 384, 1, 56.3, 142.3 , 0 );
setMoveKey( spep_3 + 386, 1, 48.9, 132.5 , 0 );
setMoveKey( spep_3 + 388, 1, 62.2, 139.7 , 0 );
setMoveKey( spep_3 + 390, 1, 51.5, 133.8 , 0 );
setMoveKey( spep_3 + 392, 1, 56.1, 137.8 , 0 );
setMoveKey( spep_3 + 394, 1, 148, 228.8 , 0 );
setMoveKey( spep_3 + 396, 1, 219.5, 299.7 , 0 );
setMoveKey( spep_3 + 398, 1, 270.6, 350.4 , 0 );
setMoveKey( spep_3 + 400, 1, 301.3, 380.9 , 0 );
setMoveKey( spep_3 + 401, 1, 311.6, 391.1 , 0 );

setScaleKey( spep_3 + 60, 1, 1, 1 );
setScaleKey( spep_3 + 70, 1, 1, 1 );--72
setScaleKey( spep_3 + 72, 1, 1.14, 1.14 );--74
setScaleKey( spep_3 + 73, 1, 1.38, 1.38 );--76
setScaleKey( spep_3 + 74, 1, 1.38, 1.38 );--76
setScaleKey( spep_3 + 78, 1, 1.41, 1.41 );
setScaleKey( spep_3 + 80, 1, 1.41, 1.41 );
setScaleKey( spep_3 + 81, 1, 1.39, 1.39 );--84
setScaleKey( spep_3 + 82, 1, 1.39, 1.39 );--84
setScaleKey( spep_3 + 92, 1, 1.39, 1.39 );
setScaleKey( spep_3 + 94, 1, 1.4, 1.4 );
setScaleKey( spep_3 + 102, 1, 1.4, 1.4 );--104
setScaleKey( spep_3 + 103, 1, 1.41, 1.41 );--106
setScaleKey( spep_3 + 104, 1, 1.41, 1.41 );--106
setScaleKey( spep_3 + 114, 1, 1.41, 1.41 );--116
setScaleKey( spep_3 + 115, 1, 1.39, 1.39 );--118
setScaleKey( spep_3 + 116, 1, 1.39, 1.39 );--118
setScaleKey( spep_3 + 132, 1, 1.39, 1.39 );--134
setScaleKey( spep_3 + 133, 1, 1.41, 1.41 );--136
setScaleKey( spep_3 + 134, 1, 1.41, 1.41 );--136
setScaleKey( spep_3 + 144, 1, 1.41, 1.41 );--146
setScaleKey( spep_3 + 145, 1, 1.65, 1.65 );--148
setScaleKey( spep_3 + 146, 1, 1.65, 1.65 );--148
setScaleKey( spep_3 + 149, 1, 1.65, 1.65 );--150
setScaleKey( spep_3 + 150, 1, 1.64, 1.64 );--152
setScaleKey( spep_3 + 154, 1, 1.64, 1.64 );
setScaleKey( spep_3 + 155, 1, 1.65, 1.65 );--158
setScaleKey( spep_3 + 156, 1, 1.65, 1.65 );--158
setScaleKey( spep_3 + 160, 1, 1.63, 1.63 );
setScaleKey( spep_3 + 162, 1, 1.61, 1.61 );
setScaleKey( spep_3 + 164, 1, 1.65, 1.65 );
setScaleKey( spep_3 + 166, 1, 1.63, 1.63 );
setScaleKey( spep_3 + 168, 1, 1.61, 1.61 );
setScaleKey( spep_3 + 170, 1, 1.65, 1.65 );
setScaleKey( spep_3 + 172, 1, 1.63, 1.63 );
setScaleKey( spep_3 + 174, 1, 1.61, 1.61 );
setScaleKey( spep_3 + 176, 1, 1.65, 1.65 );
setScaleKey( spep_3 + 178, 1, 1.63, 1.63 );
setScaleKey( spep_3 + 180, 1, 1.61, 1.61 );
setScaleKey( spep_3 + 182, 1, 1.65, 1.65 );
setScaleKey( spep_3 + 184, 1, 1.63, 1.63 );
setScaleKey( spep_3 + 186, 1, 1.61, 1.61 );
setScaleKey( spep_3 + 188, 1, 1.65, 1.65 );
setScaleKey( spep_3 + 190, 1, 1.63, 1.63 );
setScaleKey( spep_3 + 192, 1, 1.61, 1.61 );
setScaleKey( spep_3 + 194, 1, 1.65, 1.65 );
setScaleKey( spep_3 + 196, 1, 1.63, 1.63 );
setScaleKey( spep_3 + 198, 1, 1.61, 1.61 );
setScaleKey( spep_3 + 200, 1, 1.65, 1.65 );
setScaleKey( spep_3 + 202, 1, 1.63, 1.63 );
setScaleKey( spep_3 + 204, 1, 1.61, 1.61 );
setScaleKey( spep_3 + 206, 1, 1.65, 1.65 );
setScaleKey( spep_3 + 208, 1, 1.63, 1.63 );
setScaleKey( spep_3 + 210, 1, 1.61, 1.61 );
setScaleKey( spep_3 + 212, 1, 1.65, 1.65 );
setScaleKey( spep_3 + 214, 1, 1.65, 1.65 );
setScaleKey( spep_3 + 216, 1, 1.64, 1.64 );
setScaleKey( spep_3 + 218, 1, 1.63, 1.63 );
--setScaleKey( spep_3 + 220, 1, 1.62, 1.62 );
setScaleKey( spep_3 + 219, 1, 1.37, 1.37 );
setScaleKey( spep_3 + 220, 1, 1.37, 1.37 );
setScaleKey( spep_3 + 223, 1, 1.37, 1.37 );--224
setScaleKey( spep_3 + 224, 1, 1.39, 1.39 );--226
setScaleKey( spep_3 + 228, 1, 1.42, 1.42 );
setScaleKey( spep_3 + 228, 1, 1.47, 1.47 );--230
setScaleKey( spep_3 + 229, 1, 1.52, 1.52 );--232
setScaleKey( spep_3 + 230, 1, 1.52, 1.52 );--232
setScaleKey( spep_3 + 272, 1, 1.52, 1.52 );
setScaleKey( spep_3 + 274, 1, 1.79, 1.79 );
setScaleKey( spep_3 + 276, 1, 2.61, 2.61 );
setScaleKey( spep_3 + 278, 1, 3.98, 3.98 );
setScaleKey( spep_3 + 280, 1, 5.89, 5.89 );

setScaleKey( spep_3 + 367, 1, 3.78, 3.78 );
setScaleKey( spep_3 + 368, 1, 3.78, 3.78 );
--setScaleKey( spep_3 + 370, 1, 1.98, 1.98 );
setScaleKey( spep_3 + 372, 1, 1.84, 1.84 );
setScaleKey( spep_3 + 374, 1, 1.83, 1.83 );
setScaleKey( spep_3 + 376, 1, 1.81, 1.81 );
setScaleKey( spep_3 + 378, 1, 1.79, 1.79 );
setScaleKey( spep_3 + 380, 1, 1.78, 1.78 );
setScaleKey( spep_3 + 382, 1, 1.77, 1.77 );
setScaleKey( spep_3 + 384, 1, 1.76, 1.76 );
setScaleKey( spep_3 + 386, 1, 1.76, 1.76 );
setScaleKey( spep_3 + 388, 1, 1.75, 1.75 );
setScaleKey( spep_3 + 392, 1, 1.75, 1.75 );
setScaleKey( spep_3 + 394, 1, 1.29, 1.29 );
setScaleKey( spep_3 + 396, 1, 0.93, 0.93 );
setScaleKey( spep_3 + 398, 1, 0.67, 0.67 );
setScaleKey( spep_3 + 400, 1, 0.52, 0.52 );
setScaleKey( spep_3 + 401, 1, 0.47, 0.47 );

setRotateKey( spep_3 + 60, 1, 225.6 );
setRotateKey( spep_3 + 62, 1, 303 );
setRotateKey( spep_3 + 64, 1, 380.4 );
setRotateKey( spep_3 + 66, 1, 457.7 );
setRotateKey( spep_3 + 68, 1, 535.1 );
setRotateKey( spep_3 + 70, 1, 612.5 );
setRotateKey( spep_3 + 72, 1, 689.8 );
--setRotateKey( spep_3 + 74, 1, 767.2 );
setRotateKey( spep_3 + 73, 1, 687.5 );--76
setRotateKey( spep_3 + 74, 1, 687.5 );--76
setRotateKey( spep_3 + 78, 1, 695.1 );
setRotateKey( spep_3 + 80, 1, 699.6 );
--setRotateKey( spep_3 + 82, 1, 701.1 );
setRotateKey( spep_3 + 81, 1, 723.7 );--84
setRotateKey( spep_3 + 82, 1, 723.7 );--84
setRotateKey( spep_3 + 86, 1, 723.1 );
setRotateKey( spep_3 + 88, 1, 722.5 );
setRotateKey( spep_3 + 90, 1, 722 );
setRotateKey( spep_3 + 92, 1, 721.6 );
setRotateKey( spep_3 + 94, 1, 721.2 );
setRotateKey( spep_3 + 96, 1, 720.9 );
setRotateKey( spep_3 + 98, 1, 720.7 );
setRotateKey( spep_3 + 100, 1, 720.5 );
setRotateKey( spep_3 + 102, 1, 720.4 );
--setRotateKey( spep_3 + 104, 1, 720.4 );
setRotateKey( spep_3 + 103, 1, 694.5 );--106
setRotateKey( spep_3 + 104, 1, 694.5 );--106
setRotateKey( spep_3 + 108, 1, 697.6 );
setRotateKey( spep_3 + 110, 1, 700.1 );
setRotateKey( spep_3 + 112, 1, 701.8 );
setRotateKey( spep_3 + 114, 1, 702.9 );
--setRotateKey( spep_3 + 116, 1, 703.2 );
setRotateKey( spep_3 + 115, 1, 721.8 );--118
setRotateKey( spep_3 + 116, 1, 721.8 );--118
setRotateKey( spep_3 + 120, 1, 718.2 );
setRotateKey( spep_3 + 122, 1, 715 );
setRotateKey( spep_3 + 124, 1, 712.4 );
setRotateKey( spep_3 + 126, 1, 710.2 );
setRotateKey( spep_3 + 128, 1, 708.5 );
setRotateKey( spep_3 + 130, 1, 707.3 );
setRotateKey( spep_3 + 132, 1, 706.5 );
--setRotateKey( spep_3 + 134, 1, 706.3 );
setRotateKey( spep_3 + 133, 1, 694.5 );--136
setRotateKey( spep_3 + 134, 1, 694.5 );--136
setRotateKey( spep_3 + 138, 1, 696.8 );
setRotateKey( spep_3 + 140, 1, 698.7 );
setRotateKey( spep_3 + 142, 1, 700 );
setRotateKey( spep_3 + 144, 1, 700.7 );
setRotateKey( spep_3 + 144, 1, 701 );--146
setRotateKey( spep_3 + 145, 1, 683.9 );
setRotateKey( spep_3 + 146, 1, 683.9 );
setRotateKey( spep_3 + 149, 1, 685.3 );--150
setRotateKey( spep_3 + 150, 1, 686.4 );--152
setRotateKey( spep_3 + 154, 1, 687 );
--setRotateKey( spep_3 + 156, 1, 687.2 );
setRotateKey( spep_3 + 155, 1, 718 );--158
setRotateKey( spep_3 + 156, 1, 718 );--158
setRotateKey( spep_3 + 160, 1, 716.5 );
setRotateKey( spep_3 + 162, 1, 715 );
setRotateKey( spep_3 + 164, 1, 718 );
setRotateKey( spep_3 + 166, 1, 720.4 );
setRotateKey( spep_3 + 168, 1, 722.7 );
setRotateKey( spep_3 + 170, 1, 718 );
setRotateKey( spep_3 + 172, 1, 716.5 );
setRotateKey( spep_3 + 174, 1, 715 );
setRotateKey( spep_3 + 176, 1, 718 );
setRotateKey( spep_3 + 178, 1, 720.4 );
setRotateKey( spep_3 + 180, 1, 722.7 );
setRotateKey( spep_3 + 182, 1, 718 );
setRotateKey( spep_3 + 184, 1, 716.5 );
setRotateKey( spep_3 + 186, 1, 715 );
setRotateKey( spep_3 + 188, 1, 718 );
setRotateKey( spep_3 + 190, 1, 720.4 );
setRotateKey( spep_3 + 192, 1, 722.7 );
setRotateKey( spep_3 + 194, 1, 718 );
setRotateKey( spep_3 + 196, 1, 716.5 );
setRotateKey( spep_3 + 198, 1, 715 );
setRotateKey( spep_3 + 200, 1, 718 );
setRotateKey( spep_3 + 202, 1, 720.4 );
setRotateKey( spep_3 + 204, 1, 722.7 );
setRotateKey( spep_3 + 206, 1, 718 );
setRotateKey( spep_3 + 208, 1, 716.5 );
setRotateKey( spep_3 + 210, 1, 715 );
setRotateKey( spep_3 + 212, 1, 718 );
setRotateKey( spep_3 + 214, 1, 724.7 );
setRotateKey( spep_3 + 216, 1, 725.4 );
setRotateKey( spep_3 + 218, 1, 726.2 );
setRotateKey( spep_3 + 220, 1, 726.9 );
setRotateKey( spep_3 + 222, 1, 719.9 );
setRotateKey( spep_3 + 224, 1, 723.9 );
setRotateKey( spep_3 + 226, 1, 726.8 );
setRotateKey( spep_3 + 228, 1, 728.5 );
--setRotateKey( spep_3 + 230, 1, 729.1 );
setRotateKey( spep_3 + 229, 1, 677.4 );--232
setRotateKey( spep_3 + 230, 1, 677.4 );--232
setRotateKey( spep_3 + 234, 1, 678.5 );
setRotateKey( spep_3 + 236, 1, 679.5 );
setRotateKey( spep_3 + 238, 1, 680.5 );
setRotateKey( spep_3 + 240, 1, 681.4 );
setRotateKey( spep_3 + 242, 1, 682.3 );
setRotateKey( spep_3 + 243, 1, 683.1 );--224
setRotateKey( spep_3 + 244, 1, 683.9 );--226
setRotateKey( spep_3 + 248, 1, 684.6 );
setRotateKey( spep_3 + 250, 1, 685.2 );
setRotateKey( spep_3 + 252, 1, 685.8 );
setRotateKey( spep_3 + 254, 1, 686.3 );
setRotateKey( spep_3 + 256, 1, 686.8 );
setRotateKey( spep_3 + 258, 1, 687.2 );
setRotateKey( spep_3 + 260, 1, 687.6 );
setRotateKey( spep_3 + 262, 1, 687.9 );
setRotateKey( spep_3 + 264, 1, 688.2 );
setRotateKey( spep_3 + 266, 1, 688.3 );
setRotateKey( spep_3 + 268, 1, 688.5 );
setRotateKey( spep_3 + 270, 1, 688.6 );
setRotateKey( spep_3 + 276, 1, 688.6 );
setRotateKey( spep_3 + 278, 1, 688.7 );
setRotateKey( spep_3 + 367, 1, 720 );
setRotateKey( spep_3 + 368, 1, 720 );
setRotateKey( spep_3 + 392, 1, 720 );
setRotateKey( spep_3 + 394, 1, 724.1 );
setRotateKey( spep_3 + 396, 1, 727.4 );
setRotateKey( spep_3 + 398, 1, 729.7 );
setRotateKey( spep_3 + 400, 1, 731 );
setRotateKey( spep_3 + 401, 1, 731.5 );

--文字エントリー
ctzan = entryEffectLife( spep_3 + 72,  10010, 18, 0x100, -1, 0, -42.4, 107.5 );--ザンッ

setEffMoveKey( spep_3 + 72, ctzan, -42.4, 107.5 , 0 );
setEffMoveKey( spep_3 + 78, ctzan, -55.5, 133.6 , 0 );
setEffMoveKey( spep_3 + 80, ctzan, -52.8, 144.3 , 0 );
setEffMoveKey( spep_3 + 82, ctzan, -59.4, 144.7 , 0 );
setEffMoveKey( spep_3 + 84, ctzan, -49.9, 149.7 , 0 );
setEffMoveKey( spep_3 + 86, ctzan, -54.5, 150.6 , 0 );
setEffMoveKey( spep_3 + 88, ctzan, -60.8, 148.8 , 0 );
setEffMoveKey( spep_3 + 90, ctzan, -60.8, 148.8 , 0 );

setEffScaleKey( spep_3 + 72, ctzan, 0.82, 0.82 );
setEffScaleKey( spep_3 + 78, ctzan, 1.19, 1.19 );
setEffScaleKey( spep_3 + 80, ctzan, 1.31, 1.31 );
setEffScaleKey( spep_3 + 82, ctzan, 1.34, 1.34 );
setEffScaleKey( spep_3 + 84, ctzan, 1.37, 1.37 );
setEffScaleKey( spep_3 + 86, ctzan, 1.39, 1.39 );
setEffScaleKey( spep_3 + 90, ctzan, 1.39, 1.39 );

setEffRotateKey( spep_3 + 72, ctzan, -17.5 );
setEffRotateKey( spep_3 + 90, ctzan, -17.5 );

setEffAlphaKey( spep_3 + 72, ctzan, 0 );
setEffAlphaKey( spep_3 + 73, ctzan, 255 );
setEffAlphaKey( spep_3 + 74, ctzan, 255 );
setEffAlphaKey( spep_3 + 86, ctzan, 255 );
setEffAlphaKey( spep_3 + 88, ctzan, 128 );
setEffAlphaKey( spep_3 + 90, ctzan, 0 );

--文字エントリー
ctga2 = entryEffectLife( spep_3 + 80,  10005, 18, 0x100, -1, 0, 177.2, 177.7 );--ガッ

setEffMoveKey( spep_3 + 80, ctga2, 177.2, 177.7 , 0 );
setEffMoveKey( spep_3 + 86, ctga2, 169.8, 199.1 , 0 );
setEffMoveKey( spep_3 + 88, ctga2, 173.9, 205.5 , 0 );
setEffMoveKey( spep_3 + 90, ctga2, 167.6, 211.6 , 0 );
setEffMoveKey( spep_3 + 92, ctga2, 176.7, 211.7 , 0 );
setEffMoveKey( spep_3 + 94, ctga2, 172.8, 215.5 , 0 );
setEffMoveKey( spep_3 + 96, ctga2, 166.5, 217.7 , 0 );
setEffMoveKey( spep_3 + 98, ctga2, 166.3, 218.3 , 0 );

setEffScaleKey( spep_3 + 80, ctga2, 1.03, 1.03 );
setEffScaleKey( spep_3 + 86, ctga2, 1.34, 1.34 );
setEffScaleKey( spep_3 + 88, ctga2, 1.45, 1.45 );
setEffScaleKey( spep_3 + 90, ctga2, 1.53, 1.53 );
setEffScaleKey( spep_3 + 92, ctga2, 1.58, 1.58 );
setEffScaleKey( spep_3 + 94, ctga2, 1.6, 1.6 );
setEffScaleKey( spep_3 + 96, ctga2, 1.63, 1.63 );
setEffScaleKey( spep_3 + 98, ctga2, 1.64, 1.64 );

setEffRotateKey( spep_3 + 80, ctga2, 13.7 );
setEffRotateKey( spep_3 + 98, ctga2, 13.7 );

setEffAlphaKey( spep_3 + 80, ctga2, 0 );
setEffAlphaKey( spep_3 + 81, ctga2, 255 );
setEffAlphaKey( spep_3 + 82, ctga2, 255 );
setEffAlphaKey( spep_3 + 94, ctga2, 255 );
setEffAlphaKey( spep_3 + 96, ctga2, 64 );
setEffAlphaKey( spep_3 + 98, ctga2, 0 );

--文字エントリー
ctbaki4 = entryEffectLife( spep_3 + 102,  10020, 14, 0x100, -1, 0, 131.9, 298.8 );--バキッ

setEffMoveKey( spep_3 + 102, ctbaki4, 131.9, 298.8 , 0 );
setEffMoveKey( spep_3 + 104, ctbaki4, 130.2, 310 , 0 );
setEffMoveKey( spep_3 + 106, ctbaki4, 131.8, 309.7 , 0 );
setEffMoveKey( spep_3 + 108, ctbaki4, 129.9, 322.7 , 0 );
setEffMoveKey( spep_3 + 110, ctbaki4, 131.8, 318.3 , 0 );
setEffMoveKey( spep_3 + 112, ctbaki4, 131.6, 327.2 , 0 );
setEffMoveKey( spep_3 + 114, ctbaki4, 139.9, 334.8 , 0 );
setEffMoveKey( spep_3 + 116, ctbaki4, 143.3, 336.2 , 0 );

setEffScaleKey( spep_3 + 102, ctbaki4, 1.25, 1.25 );
setEffScaleKey( spep_3 + 104, ctbaki4, 1.32, 1.32 );
setEffScaleKey( spep_3 + 106, ctbaki4, 1.35, 1.35 );
setEffScaleKey( spep_3 + 108, ctbaki4, 1.43, 1.43 );
setEffScaleKey( spep_3 + 110, ctbaki4, 1.49, 1.49 );
setEffScaleKey( spep_3 + 112, ctbaki4, 1.5, 1.5 );
setEffScaleKey( spep_3 + 114, ctbaki4, 1.7, 1.7 );
setEffScaleKey( spep_3 + 116, ctbaki4, 1.76, 1.76 );

setEffRotateKey( spep_3 + 102, ctbaki4, 32.7 );
setEffRotateKey( spep_3 + 116, ctbaki4, 32.7 );

setEffAlphaKey( spep_3 + 102, ctbaki4, 0 );
setEffAlphaKey( spep_3 + 103, ctbaki4, 255 );
setEffAlphaKey( spep_3 + 104, ctbaki4, 255 );
setEffAlphaKey( spep_3 + 110, ctbaki4, 255 );
setEffAlphaKey( spep_3 + 112, ctbaki4, 64 );
setEffAlphaKey( spep_3 + 118, ctbaki4, 0 );



--文字エントリー
ctdon = entryEffectLife( spep_3 + 114,  10019, 16, 0x100, -1, 0, 95.3, 206.9 );--ドンッ

setEffMoveKey( spep_3 + 114, ctdon, 95.3, 206.9 , 0 );
setEffMoveKey( spep_3 + 120, ctdon, 72.8, 232.9 , 0 );
setEffMoveKey( spep_3 + 122, ctdon, 71, 255.3 , 0 );
setEffMoveKey( spep_3 + 124, ctdon, 62, 265 , 0 );
setEffMoveKey( spep_3 + 126, ctdon, 62, 257.9 , 0 );
setEffMoveKey( spep_3 + 128, ctdon, 68.5, 266.5 , 0 );
setEffMoveKey( spep_3 + 130, ctdon, 68.5, 267.4 , 0 );

setEffScaleKey( spep_3 + 114, ctdon, 1.29, 1.29 );
setEffScaleKey( spep_3 + 120, ctdon, 1.63, 1.63 );
setEffScaleKey( spep_3 + 122, ctdon, 1.98, 1.98 );
setEffScaleKey( spep_3 + 124, ctdon, 2.01, 2.01 );
setEffScaleKey( spep_3 + 126, ctdon, 2.04, 2.04 );
setEffScaleKey( spep_3 + 128, ctdon, 2.05, 2.05 );
setEffScaleKey( spep_3 + 130, ctdon, 2.07, 2.07 );

setEffRotateKey( spep_3 + 114, ctdon, -0.3 );
setEffRotateKey( spep_3 + 120, ctdon, 0.3 );
setEffRotateKey( spep_3 + 122, ctdon, 0.8 );
setEffRotateKey( spep_3 + 130, ctdon, 0.8 );

setEffAlphaKey( spep_3 + 114, ctdon, 0 );
setEffAlphaKey( spep_3 + 115, ctdon, 255 );
setEffAlphaKey( spep_3 + 116, ctdon, 255 );
setEffAlphaKey( spep_3 + 126, ctdon, 255 );
setEffAlphaKey( spep_3 + 128, ctdon, 128 );
setEffAlphaKey( spep_3 + 130, ctdon, 0 );

--文字エントリー
ctbaki3 = entryEffectLife( spep_3-4 + 136,  10020, 14, 0x100, -1, 0, 54.5, 217.2 );--バキ

setEffMoveKey( spep_3-4 + 136, ctbaki3, 54.5, 217.2 , 0 );
setEffMoveKey( spep_3-4 + 138, ctbaki3, 46.5, 225.2 , 0 );
setEffMoveKey( spep_3-4 + 140, ctbaki3, 48, 225.9 , 0 );
setEffMoveKey( spep_3-4 + 142, ctbaki3, 36.5, 238 , 0 );
setEffMoveKey( spep_3-4 + 144, ctbaki3, 37.3, 239.9 , 0 );
setEffMoveKey( spep_3-4 + 146, ctbaki3, 39.4, 251 , 0 );
setEffMoveKey( spep_3-4 + 150, ctbaki3, 41.3, 254.2 , 0 );

setEffScaleKey( spep_3-4 + 136, ctbaki3, 1.25, 1.25 );
setEffScaleKey( spep_3-4 + 138, ctbaki3, 1.32, 1.32 );
setEffScaleKey( spep_3-4 + 140, ctbaki3, 1.35, 1.35 );
setEffScaleKey( spep_3-4 + 142, ctbaki3, 1.46, 1.46 );
setEffScaleKey( spep_3-4 + 144, ctbaki3, 1.5, 1.5 );
setEffScaleKey( spep_3-4 + 146, ctbaki3, 1.7, 1.7 );
setEffScaleKey( spep_3-4 + 150, ctbaki3, 1.76, 1.76 )

setEffRotateKey( spep_3-4 + 136, ctbaki3, -4 );
setEffRotateKey( spep_3-4 + 150, ctbaki3, -4 );

setEffAlphaKey( spep_3-4 + 136, ctbaki3, 255 );
setEffAlphaKey( spep_3-4 + 144, ctbaki3, 255 );
setEffAlphaKey( spep_3-4 + 146, ctbaki3, 64 );
setEffAlphaKey( spep_3-4 + 149, ctbaki3, 0 );
setEffAlphaKey( spep_3-4 + 150, ctbaki3, 0 );


--文字エントリー
ctga3 = entryEffectLife( spep_3 + 154,  10005, 12, 0x100, -1, 0, 55.9, 297.7 );--ガッ

setEffMoveKey( spep_3 + 154, ctga3, 55.9, 297.7 , 0 );
setEffMoveKey( spep_3 + 160, ctga3, 43.4, 314.2 , 0 );
setEffMoveKey( spep_3 + 162, ctga3, 36.3, 316.9 , 0 );
setEffMoveKey( spep_3 + 164, ctga3, 39.1, 320.2 , 0 );
setEffMoveKey( spep_3 + 166, ctga3, 34.3, 319.3 , 0 );
setEffMoveKey( spep_3 + 168, ctga3, 34, 319.6 , 0 );

setEffScaleKey( spep_3 + 154, ctga3, 0.76, 0.76 );
setEffScaleKey( spep_3 + 160, ctga3, 1.07, 1.07 );
setEffScaleKey( spep_3 + 162, ctga3, 1.15, 1.15 );
setEffScaleKey( spep_3 + 164, ctga3, 1.18, 1.18 );
setEffScaleKey( spep_3 + 166, ctga3, 1.2, 1.2 );
setEffScaleKey( spep_3 + 168, ctga3, 1.21, 1.21 );

setEffRotateKey( spep_3 + 154, ctga3, -16.3 );
setEffRotateKey( spep_3 + 168, ctga3, -16.3 );

setEffAlphaKey( spep_3 + 154, ctga3, 0 );
setEffAlphaKey( spep_3 + 155, ctga3, 255 );
setEffAlphaKey( spep_3 + 156, ctga3, 255 );
setEffAlphaKey( spep_3 + 164, ctga3, 255 );
setEffAlphaKey( spep_3 + 166, ctga3, 64 );
setEffAlphaKey( spep_3 + 168, ctga3, 0 );

--文字エントリー
ctga4 = entryEffectLife( spep_3-4 + 164,  10005, 10, 0x100, -1, 0, 216.4, 236 );--ガッ

setEffMoveKey( spep_3-4 + 164, ctga4, 216.4, 236 , 0 );
setEffMoveKey( spep_3-4 + 166, ctga4, 218.9, 256.5 , 0 );
setEffMoveKey( spep_3-4 + 168, ctga4, 215.6, 263.4 , 0 );
setEffMoveKey( spep_3-4 + 170, ctga4, 219.9, 263.8 , 0 );
setEffMoveKey( spep_3-4 + 172, ctga4, 215.9, 266.5 , 0 );
setEffMoveKey( spep_3-4 + 174, ctga4, 215.9, 267 , 0 );

setEffScaleKey( spep_3-4 + 164, ctga4, 0.76, 0.76 );
setEffScaleKey( spep_3-4 + 166, ctga4, 1.07, 1.07 );
setEffScaleKey( spep_3-4 + 168, ctga4, 1.15, 1.15 );
setEffScaleKey( spep_3-4 + 170, ctga4, 1.18, 1.18 );
setEffScaleKey( spep_3-4 + 172, ctga4, 1.2, 1.2 );
setEffScaleKey( spep_3-4 + 174, ctga4, 1.21, 1.21 );

setEffRotateKey( spep_3-4 + 164, ctga4, 27.7 );
setEffRotateKey( spep_3-4 + 174, ctga4, 27.7 );

setEffAlphaKey( spep_3-4 + 164, ctga4, 0 );
setEffAlphaKey( spep_3-4 + 165, ctga4, 255 );
setEffAlphaKey( spep_3-4 + 166, ctga4, 255 );
setEffAlphaKey( spep_3-4 + 170, ctga4, 255 );
setEffAlphaKey( spep_3-4 + 172, ctga4, 64 );
setEffAlphaKey( spep_3-4 + 174, ctga4, 0 );

--文字エントリー
ctbaki6 = entryEffectLife( spep_3-4 + 170,  10020, 10, 0x100, -1, 0, 168.5, 380.9 );--バキッ

setEffMoveKey( spep_3-4 + 170, ctbaki6, 168.5, 380.9 , 0 );
setEffMoveKey( spep_3-4 + 172, ctbaki6, 167.6, 388.8 , 0 );
setEffMoveKey( spep_3-4 + 174, ctbaki6, 164.7, 400.6 , 0 );
setEffMoveKey( spep_3-4 + 176, ctbaki6, 165.9, 401.5 , 0 );
setEffMoveKey( spep_3-4 + 178, ctbaki6, 171.3, 407.7 , 0 );
setEffMoveKey( spep_3-4 + 180, ctbaki6, 173.6, 409 , 0 );

setEffScaleKey( spep_3-4 + 170, ctbaki6, 0.91, 0.91 );
setEffScaleKey( spep_3-4 + 172, ctbaki6, 0.98, 0.98 );
setEffScaleKey( spep_3-4 + 174, ctbaki6, 1.06, 1.06 );
setEffScaleKey( spep_3-4 + 176, ctbaki6, 1.09, 1.09 );
setEffScaleKey( spep_3-4 + 178, ctbaki6, 1.23, 1.23 );
setEffScaleKey( spep_3-4 + 180, ctbaki6, 1.28, 1.28 );

setEffRotateKey( spep_3-4 + 170, ctbaki6, 26 );
setEffRotateKey( spep_3-4 + 180, ctbaki6, 26 );

setEffAlphaKey( spep_3-4 + 170, ctbaki6, 0 );
setEffAlphaKey( spep_3-4 + 171, ctbaki6, 255 );
setEffAlphaKey( spep_3-4 + 172, ctbaki6, 255 );
setEffAlphaKey( spep_3-4 + 176, ctbaki6, 255 );
setEffAlphaKey( spep_3-4 + 178, ctbaki6, 64 );
setEffAlphaKey( spep_3-4 + 180, ctbaki6, 0 );

--文字エントリー
ctga5 = entryEffectLife( spep_3-4 + 176,  10005, 10, 0x100, -1, 0, 55.9, 297.7 );--ガッ

setEffMoveKey( spep_3-4 + 176, ctga5, 55.9, 297.7 , 0 );
setEffMoveKey( spep_3-4 + 178, ctga5, 43.4, 314.2 , 0 );
setEffMoveKey( spep_3-4 + 180, ctga5, 36.3, 316.9 , 0 );
setEffMoveKey( spep_3-4 + 182, ctga5, 39.1, 320.2 , 0 );
setEffMoveKey( spep_3-4 + 184, ctga5, 34.3, 319.3 , 0 );
setEffMoveKey( spep_3-4 + 186, ctga5, 34, 319.6 , 0 );

setEffScaleKey( spep_3-4 + 176, ctga5, 0.76, 0.76 );
setEffScaleKey( spep_3-4 + 178, ctga5, 1.07, 1.07 );
setEffScaleKey( spep_3-4 + 180, ctga5, 1.15, 1.15 );
setEffScaleKey( spep_3-4 + 182, ctga5, 1.18, 1.18 );
setEffScaleKey( spep_3-4 + 184, ctga5, 1.2, 1.2 );
setEffScaleKey( spep_3-4 + 186, ctga5, 1.21, 1.21 );

setEffRotateKey( spep_3-4 + 176, ctga5, -16.3 );
setEffRotateKey( spep_3-4 + 186, ctga5, -16.3 );

setEffAlphaKey( spep_3-4 + 176, ctga5, 0 );
setEffAlphaKey( spep_3-4 + 177, ctga5, 255 );
setEffAlphaKey( spep_3-4 + 178, ctga5, 255 );
setEffAlphaKey( spep_3-4 + 182, ctga5, 255 );
setEffAlphaKey( spep_3-4 + 184, ctga5, 64 );
setEffAlphaKey( spep_3-4 + 186, ctga5, 0 );


--文字エントリー
ctbaki7 = entryEffectLife( spep_3-4 + 182,  10020, 10, 0x100, -1, 0, 224.1, 296.7 );--バキッ

setEffMoveKey( spep_3-4 + 182, ctbaki7, 224.1, 296.7 , 0 );
setEffMoveKey( spep_3-4 + 184, ctbaki7, 224.6, 304.6 , 0 );
setEffMoveKey( spep_3-4 + 186, ctbaki7, 223.9, 316.7 , 0 );
setEffMoveKey( spep_3-4 + 188, ctbaki7, 225.3, 317.4 , 0 );
setEffMoveKey( spep_3-4 + 190, ctbaki7, 231.6, 322.5 , 0 );
setEffMoveKey( spep_3-4 + 192, ctbaki7, 234.1, 323.4 , 0 );

setEffScaleKey( spep_3-4 + 182, ctbaki7, 0.91, 0.91 );
setEffScaleKey( spep_3-4 + 184, ctbaki7, 0.98, 0.98 );
setEffScaleKey( spep_3-4 + 186, ctbaki7, 1.06, 1.06 );
setEffScaleKey( spep_3-4 + 188, ctbaki7, 1.09, 1.09 );
setEffScaleKey( spep_3-4 + 190, ctbaki7, 1.23, 1.23 );
setEffScaleKey( spep_3-4 + 192, ctbaki7, 1.28, 1.28 );

setEffRotateKey( spep_3-4 + 182, ctbaki7, 36.4 );
setEffRotateKey( spep_3-4 + 192, ctbaki7, 36.4 );

setEffAlphaKey( spep_3-4 + 182, ctbaki7, 0 );
setEffAlphaKey( spep_3-4 + 183, ctbaki7, 255 );
setEffAlphaKey( spep_3-4 + 184, ctbaki7, 255 );
setEffAlphaKey( spep_3-4 + 188, ctbaki7, 255 );
setEffAlphaKey( spep_3-4 + 190, ctbaki7, 64 );
setEffAlphaKey( spep_3-4 + 192, ctbaki7, 0 );

--文字エントリー
ctga6 = entryEffectLife( spep_3-4 + 188,  10005, 10, 0x100, -1, 0, 216.4, 236 );--ガッ

setEffMoveKey( spep_3-4 + 188, ctga6, 216.4, 236 , 0 );
setEffMoveKey( spep_3-4 + 190, ctga6, 218.9, 256.5 , 0 );
setEffMoveKey( spep_3-4 + 192, ctga6, 215.6, 263.4 , 0 );
setEffMoveKey( spep_3-4 + 194, ctga6, 219.9, 263.8 , 0 );
setEffMoveKey( spep_3-4 + 196, ctga6, 215.9, 266.5 , 0 );
setEffMoveKey( spep_3-4 + 198, ctga6, 215.9, 267 , 0 );

setEffScaleKey( spep_3-4 + 188, ctga6, 0.76, 0.76 );
setEffScaleKey( spep_3-4 + 190, ctga6, 1.07, 1.07 );
setEffScaleKey( spep_3-4 + 192, ctga6, 1.15, 1.15 );
setEffScaleKey( spep_3-4 + 194, ctga6, 1.18, 1.18 );
setEffScaleKey( spep_3-4 + 196, ctga6, 1.2, 1.2 );
setEffScaleKey( spep_3-4 + 198, ctga6, 1.21, 1.21 );

setEffRotateKey( spep_3-4 + 188, ctga6, 27.7 );
setEffRotateKey( spep_3-4 + 198, ctga6, 27.7 );

setEffAlphaKey( spep_3-4 + 188, ctga6, 0 );
setEffAlphaKey( spep_3-4 + 189, ctga6, 255 );
setEffAlphaKey( spep_3-4 + 190, ctga6, 255 );
setEffAlphaKey( spep_3-4 + 194, ctga6, 255 );
setEffAlphaKey( spep_3-4 + 196, ctga6, 64 );
setEffAlphaKey( spep_3-4 + 198, ctga6, 0 );

--文字エントリー
ctbaki8 = entryEffectLife( spep_3-4 + 194,  10020, 10, 0x100, -1, 0, 168.5, 380.9 );--バキッ

setEffMoveKey( spep_3-4 + 194, ctbaki8, 168.5, 380.9 , 0 );
setEffMoveKey( spep_3-4 + 196, ctbaki8, 167.6, 388.8 , 0 );
setEffMoveKey( spep_3-4 + 198, ctbaki8, 164.7, 400.6 , 0 );
setEffMoveKey( spep_3-4 + 200, ctbaki8, 165.9, 401.5 , 0 );
setEffMoveKey( spep_3-4 + 202, ctbaki8, 171.3, 407.7 , 0 );
setEffMoveKey( spep_3-4 + 204, ctbaki8, 173.6, 409 , 0 );

setEffScaleKey( spep_3-4 + 194, ctbaki8, 0.91, 0.91 );
setEffScaleKey( spep_3-4 + 196, ctbaki8, 0.98, 0.98 );
setEffScaleKey( spep_3-4 + 198, ctbaki8, 1.06, 1.06 );
setEffScaleKey( spep_3-4 + 200, ctbaki8, 1.09, 1.09 );
setEffScaleKey( spep_3-4 + 202, ctbaki8, 1.23, 1.23 );
setEffScaleKey( spep_3-4 + 204, ctbaki8, 1.28, 1.28 );

setEffRotateKey( spep_3-4 + 194, ctbaki8, 26 );
setEffRotateKey( spep_3-4 + 204, ctbaki8, 26 );

setEffAlphaKey( spep_3-4 + 194, ctbaki8, 0 );
setEffAlphaKey( spep_3-4 + 195, ctbaki8, 255 );
setEffAlphaKey( spep_3-4 + 196, ctbaki8, 255 );
setEffAlphaKey( spep_3-4 + 200, ctbaki8, 255 );
setEffAlphaKey( spep_3-4 + 202, ctbaki8, 64 );
setEffAlphaKey( spep_3-4 + 204, ctbaki8, 0 );


--文字エントリー
ctga7 = entryEffectLife( spep_3-4 + 200,  10005, 10, 0x100, -1, 0, 55.9, 297.7 );--ガッ

setEffMoveKey( spep_3-4 + 200, ctga7, 55.9, 297.7 , 0 );
setEffMoveKey( spep_3-4 + 202, ctga7, 43.4, 314.2 , 0 );
setEffMoveKey( spep_3-4 + 204, ctga7, 36.3, 316.9 , 0 );
setEffMoveKey( spep_3-4 + 206, ctga7, 39.1, 320.2 , 0 );
setEffMoveKey( spep_3-4 + 208, ctga7, 34.3, 319.3 , 0 );
setEffMoveKey( spep_3-4 + 210, ctga7, 34, 319.6 , 0 );

setEffScaleKey( spep_3-4 + 200, ctga7, 0.76, 0.76 );
setEffScaleKey( spep_3-4 + 202, ctga7, 1.07, 1.07 );
setEffScaleKey( spep_3-4 + 204, ctga7, 1.15, 1.15 );
setEffScaleKey( spep_3-4 + 206, ctga7, 1.18, 1.18 );
setEffScaleKey( spep_3-4 + 208, ctga7, 1.2, 1.2 );
setEffScaleKey( spep_3-4 + 210, ctga7, 1.21, 1.21 );

setEffRotateKey( spep_3-4 + 200, ctga7, -16.3 );
setEffRotateKey( spep_3-4 + 210, ctga7, -16.3 );

setEffAlphaKey( spep_3-4 + 200, ctga7, 0 );
setEffAlphaKey( spep_3-4 + 201, ctga7, 255 );
setEffAlphaKey( spep_3-4 + 202, ctga7, 255 );
setEffAlphaKey( spep_3-4 + 206, ctga7, 255 );
setEffAlphaKey( spep_3-4 + 208, ctga7, 64 );
setEffAlphaKey( spep_3-4 + 210, ctga7, 0 );

--文字エントリー
ctbaki9 = entryEffectLife( spep_3-4 + 206,  10020, 10, 0x100, -1, 0, 224.1, 296.7 );--バキッ

setEffMoveKey( spep_3-4 + 206, ctbaki9, 224.1, 296.7 , 0 );
setEffMoveKey( spep_3-4 + 208, ctbaki9, 224.6, 304.6 , 0 );
setEffMoveKey( spep_3-4 + 210, ctbaki9, 223.9, 316.7 , 0 );
setEffMoveKey( spep_3-4 + 212, ctbaki9, 225.3, 317.4 , 0 );
setEffMoveKey( spep_3-4 + 214, ctbaki9, 231.6, 322.5 , 0 );
setEffMoveKey( spep_3-4 + 216, ctbaki9, 234.1, 323.4 , 0 );

setEffScaleKey( spep_3-4 + 206, ctbaki9, 0.91, 0.91 );
setEffScaleKey( spep_3-4 + 208, ctbaki9, 0.98, 0.98 );
setEffScaleKey( spep_3-4 + 210, ctbaki9, 1.06, 1.06 );
setEffScaleKey( spep_3-4 + 212, ctbaki9, 1.09, 1.09 );
setEffScaleKey( spep_3-4 + 214, ctbaki9, 1.23, 1.23 );
setEffScaleKey( spep_3-4 + 216, ctbaki9, 1.28, 1.28 );

setEffRotateKey( spep_3-4 + 206, ctbaki9, 36.4 );
setEffRotateKey( spep_3-4 + 216, ctbaki9, 36.4 );

setEffAlphaKey( spep_3-4 + 206, ctbaki9, 0 );
setEffAlphaKey( spep_3-4 + 207, ctbaki9, 255 );
setEffAlphaKey( spep_3-4 + 208, ctbaki9, 255 );
setEffAlphaKey( spep_3-4 + 212, ctbaki9, 255 );
setEffAlphaKey( spep_3-4 + 214, ctbaki9, 64 );
setEffAlphaKey( spep_3-4 + 216, ctbaki9, 0 );

--文字エントリー
ctga8 = entryEffectLife( spep_3-4 + 212,  10005, 12, 0x100, -1, 0, 216.4, 236 );--ガッ

setEffMoveKey( spep_3-4 + 212, ctga8, 216.4, 236 , 0 );
setEffMoveKey( spep_3-4 + 214, ctga8, 218.9, 256.5 , 0 );
setEffMoveKey( spep_3-4 + 216, ctga8, 215.6, 263.4 , 0 );
setEffMoveKey( spep_3-4 + 218, ctga8, 219.9, 263.8 , 0 );
setEffMoveKey( spep_3-4 + 220, ctga8, 215.9, 266.5 , 0 );
setEffMoveKey( spep_3-4 + 224, ctga8, 215.9, 267 , 0 );

setEffScaleKey( spep_3-4 + 212, ctga8, 0.76, 0.76 );
setEffScaleKey( spep_3-4 + 214, ctga8, 1.07, 1.07 );
setEffScaleKey( spep_3-4 + 216, ctga8, 1.15, 1.15 );
setEffScaleKey( spep_3-4 + 218, ctga8, 1.18, 1.18 );
setEffScaleKey( spep_3-4 + 220, ctga8, 1.2, 1.2 );
setEffScaleKey( spep_3-4 + 224, ctga8, 1.21, 1.21 );

setEffRotateKey( spep_3-4 + 212, ctga8, 27.7 );
setEffRotateKey( spep_3-4 + 224, ctga8, 27.7 );

setEffAlphaKey( spep_3-4 + 212, ctga8, 0 );
setEffAlphaKey( spep_3-4 + 213, ctga8, 255 );
setEffAlphaKey( spep_3-4 + 214, ctga8, 255 );
setEffAlphaKey( spep_3-4 + 218, ctga8, 255 );
setEffAlphaKey( spep_3-4 + 220, ctga8, 64 );
setEffAlphaKey( spep_3-4 + 223, ctga8, 0 );
setEffAlphaKey( spep_3-4 + 224, ctga8, 0 );

--文字エントリー
ctzan2 = entryEffectLife( spep_3 + 228,  10010, 18, 0x100, -1, 0, 44.2, 181.1 );--ザンッ

setEffMoveKey( spep_3 + 228, ctzan2, 44.2, 181.1 , 0 );
setEffMoveKey( spep_3 + 234, ctzan2, 22.5, 224.2 , 0 );
setEffMoveKey( spep_3 + 236, ctzan2, 26.9, 241.9 , 0 );
setEffMoveKey( spep_3 + 238, ctzan2, 16.1, 242.5 , 0 );
setEffMoveKey( spep_3 + 240, ctzan2, 31.7, 250.7 , 0 );
setEffMoveKey( spep_3 + 242, ctzan2, 24.1, 252.1 , 0 );
setEffMoveKey( spep_3 + 244, ctzan2, 13.8, 249.3 , 0 );
setEffMoveKey( spep_3 + 246, ctzan2, 13.8, 249.3 , 0 );

setEffScaleKey( spep_3 + 228, ctzan2, 1.35, 1.35 );
setEffScaleKey( spep_3 + 234, ctzan2, 1.96, 1.96 );
setEffScaleKey( spep_3 + 236, ctzan2, 2.16, 2.16 );
setEffScaleKey( spep_3 + 238, ctzan2, 2.21, 2.21 );
setEffScaleKey( spep_3 + 240, ctzan2, 2.25, 2.25 );
setEffScaleKey( spep_3 + 242, ctzan2, 2.3, 2.3 );
setEffScaleKey( spep_3 + 246, ctzan2, 2.3, 2.3 );

setEffRotateKey( spep_3 + 228, ctzan2, -17.5 );
setEffRotateKey( spep_3 + 246, ctzan2, -17.5 );

setEffAlphaKey( spep_3 + 228, ctzan2, 0 );
setEffAlphaKey( spep_3 + 229, ctzan2, 255 );
setEffAlphaKey( spep_3 + 230, ctzan2, 255 );
setEffAlphaKey( spep_3 + 242, ctzan2, 255 );
setEffAlphaKey( spep_3 + 244, ctzan2, 128 );
setEffAlphaKey( spep_3 + 246, ctzan2, 0 );

--文字エントリー
ctba = entryEffectLife( spep_3 + 296,  10022, 24, 0x100, -1, 0, -197.5, -403.2 );--バッ

setEffMoveKey( spep_3 + 296, ctba, -197.5, -403.2 , 0 );
setEffMoveKey( spep_3 + 302, ctba, -213.2, -415.2 , 0 );
setEffMoveKey( spep_3 + 304, ctba, -218.4, -419.2 , 0 );
setEffMoveKey( spep_3 + 306, ctba, -219.1, -420.2 , 0 );
setEffMoveKey( spep_3 + 308, ctba, -219.7, -421.1 , 0 );
setEffMoveKey( spep_3 + 310, ctba, -220.4, -422.1 , 0 );
setEffMoveKey( spep_3 + 312, ctba, -221, -423.1 , 0 );
setEffMoveKey( spep_3 + 314, ctba, -221.6, -424 , 0 );
setEffMoveKey( spep_3 + 316, ctba, -223.2, -424.3 , 0 );
setEffMoveKey( spep_3 + 318, ctba, -227.7, -425 , 0 );
setEffMoveKey( spep_3 + 320, ctba, -235.2, -426.2 , 0 );

setEffScaleKey( spep_3 + 296, ctba, 1.02, 1.02 );
setEffScaleKey( spep_3 + 302, ctba, 1.14, 1.14 );
setEffScaleKey( spep_3 + 304, ctba, 1.18, 1.18 );
setEffScaleKey( spep_3 + 306, ctba, 1.19, 1.19 );
setEffScaleKey( spep_3 + 312, ctba, 1.19, 1.19 );
setEffScaleKey( spep_3 + 314, ctba, 1.2, 1.2 );
setEffScaleKey( spep_3 + 316, ctba, 1.21, 1.21 );
setEffScaleKey( spep_3 + 318, ctba, 1.25, 1.25 );
setEffScaleKey( spep_3 + 320, ctba, 1.32, 1.32 );

setEffRotateKey( spep_3 + 296, ctba, -27.2 );
setEffRotateKey( spep_3 + 320, ctba, -27.2 );

setEffAlphaKey( spep_3 + 296, ctba, 0 );
setEffAlphaKey( spep_3 + 297, ctba, 255 );
setEffAlphaKey( spep_3 + 298, ctba, 255 );
setEffAlphaKey( spep_3 + 314, ctba, 255 );
setEffAlphaKey( spep_3 + 316, ctba, 227 );
setEffAlphaKey( spep_3 + 318, ctba, 142 );
setEffAlphaKey( spep_3 + 320, ctba, 0 );

--文字エントリー
ctbaki10 = entryEffectLife( spep_3-4 + 368,  10020, 14, 0x100, -1, 0, -125.3, 386.6 );--バキッ

setEffMoveKey( spep_3-4 + 368, ctbaki10, -125.3, 386.6 , 0 );
setEffMoveKey( spep_3-4 + 370, ctbaki10, -139.3, 397.2 , 0 );
setEffMoveKey( spep_3-4 + 372, ctbaki10, -137.1, 398.6 , 0 );
setEffMoveKey( spep_3-4 + 374, ctbaki10, -153.4, 411 , 0 );
setEffMoveKey( spep_3-4 + 376, ctbaki10, -146.4, 408.2 , 0 );
setEffMoveKey( spep_3-4 + 378, ctbaki10, -156.3, 417.9 , 0 );
setEffMoveKey( spep_3-4 + 380, ctbaki10, -155.6, 435.2 , 0 );
setEffMoveKey( spep_3-4 + 382, ctbaki10, -153.4, 440.4 , 0 );

setEffScaleKey( spep_3-4 + 368, ctbaki10, 1.93, 1.93 );
setEffScaleKey( spep_3-4 + 370, ctbaki10, 2.04, 2.04 );
setEffScaleKey( spep_3-4 + 372, ctbaki10, 2.08, 2.08 );
setEffScaleKey( spep_3-4 + 374, ctbaki10, 2.21, 2.21 );
setEffScaleKey( spep_3-4 + 376, ctbaki10, 2.29, 2.29 );
setEffScaleKey( spep_3-4 + 378, ctbaki10, 2.32, 2.32 );
setEffScaleKey( spep_3-4 + 380, ctbaki10, 2.62, 2.62 );
setEffScaleKey( spep_3-4 + 382, ctbaki10, 2.72, 2.72 );

setEffRotateKey( spep_3-4 + 368, ctbaki10, -11.8 );
setEffRotateKey( spep_3-4 + 382, ctbaki10, -11.8 );

setEffAlphaKey( spep_3-4 + 368, ctbaki10, 255 );
setEffAlphaKey( spep_3-4 + 378, ctbaki10, 255 );
setEffAlphaKey( spep_3-4 + 380, ctbaki10, 64 );
setEffAlphaKey( spep_3-4 + 382, ctbaki10, 0 );


--se
playSe( spep_3, SE_04); --突進
playSe( spep_3+72, 1011); --ザン
playSe( spep_3+80, 1010); --ガッ
playSe( spep_3+102, 1009); --バキッ
playSe( spep_3+114, 1010); --ドンッ
playSe( spep_3+132, 1011); --バキッ
playSe( spep_3+154, 1001); --ガッ
playSe( spep_3-4+166, 1000); --ガッ
playSe( spep_3-4+170, 1009); --バキッ
playSe( spep_3-4+176, 1001); --ガッ
playSe( spep_3-4+182, 1010); --バキッ
playSe( spep_3-4+188, 1009); --ガッ
playSe( spep_3-4+194, 1010); --バキッ
playSe( spep_3-4+200, 1009); --ガッ
playSe( spep_3-4+206, 1010); --バキッ
playSe( spep_3-4+212, 1009); --ガッ
playSe( spep_3+228, 1011); --ザン
playSe( spep_3+296, 1007); --バッ
playSe( spep_3+334, SE_04); --突進
playSe( spep_3+368, 1011); --バキッ

-- ** エフェクト等 ** --
entryFade(spep_3+328, 4, 2, 2,fcolor_r,fcolor_g,fcolor_b,255);     -- whit_fe fade
entryFade(spep_3+360, 4, 2, 2,fcolor_r,fcolor_g,fcolor_b,255);     -- whit_fe fade

--次の準備
spep_4=spep_3+402;
--------------------------------------
--被弾
--------------------------------------
--エフェクト(前)
hit_f=entryEffect(spep_4,SP_06x,0x100,-1,0,0,0);

setEffMoveKey( spep_4 + 0, hit_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 288, hit_f, 0, 0 , 0 );

setEffScaleKey(spep_4,hit_f,-1.0,1.0);
setEffScaleKey(spep_4+288,hit_f,-1.0,1.0);

setEffRotateKey(spep_4,hit_f,0);
setEffRotateKey(spep_4+288,hit_f,0);

setEffAlphaKey(spep_4,hit_f,255);
setEffAlphaKey(spep_4+288,hit_f,255);

--敵の動き
setDisp( spep_4, 1, 1 );
setDisp( spep_4+37, 1, 0);
setDisp( spep_4+38, 1, 0);
setDisp( spep_4+39, 1, 1 );
setDisp( spep_4+40, 1, 1 );
setDisp( spep_4+164, 1, 0 );

changeAnime( spep_4, 1, 105 );
changeAnime( spep_4+39, 1, 8 );
changeAnime( spep_4+40, 1, 8 );


setMoveKey( spep_4 + 0, 1, 4, 1.2 , 0 );
setMoveKey( spep_4 + 2, 1, 3.7, 1.1 , 0 );
setMoveKey( spep_4 + 4, 1, 3.4, 1.1 , 0 );
setMoveKey( spep_4 + 6, 1, 3.1, 1.1 , 0 );
setMoveKey( spep_4 + 8, 1, 2.9, 1.1 , 0 );
setMoveKey( spep_4 + 10, 1,2.6, 1.1 , 0 );
setMoveKey( spep_4 + 12, 1,2.4, 1.1 , 0 );
setMoveKey( spep_4 + 14, 1,2.2, 1.2 , 0 );
setMoveKey( spep_4 + 16, 1,2, 1.3 , 0 );
setMoveKey( spep_4 + 18, 1, 1.8, 1.3 , 0 );
setMoveKey( spep_4 + 20, 1, 1.6, 1.4 , 0 );
setMoveKey( spep_4 + 22, 1, 1.4, 1.5 , 0 );
setMoveKey( spep_4 + 24, 1, 1.3, 1.6 , 0 );
setMoveKey( spep_4 + 26, 1, 1.1, 1.7 , 0 );
setMoveKey( spep_4 + 28, 1, 1, 1.8 , 0 );
setMoveKey( spep_4 + 30, 1, 0.9, 1.8 , 0 );
setMoveKey( spep_4 + 32, 1, 0.8, 1.9 , 0 );
setMoveKey( spep_4 + 34, 1, 0.7, 2 , 0 );
setMoveKey( spep_4 + 36, 1, 0.6, 2 , 0 );
setMoveKey( spep_4 + 38, 1, 0.5, 2.1 , 0 );
setMoveKey( spep_4 + 39, 1, 453.8, 149.5 , 0 );
setMoveKey( spep_4 + 40, 1, 453.8, 149.5 , 0 );
--setMoveKey( spep_4 + 46, 1, 453.8, 149.5 , 0 );
setMoveKey( spep_4 + 48, 1, 359.5, 131.4 , 0 );
setMoveKey( spep_4 + 50, 1, 300.9, 114.9 , 0 );
setMoveKey( spep_4 + 52, 1, 221.5, 104.2 , 0 );
setMoveKey( spep_4 + 54, 1, 166.5, 90.2 , 0 );
setMoveKey( spep_4 + 56, 1, 112.3, 78.7 , 0 );
setMoveKey( spep_4 + 58, 1, 64.1, 68.5 , 0 );
setMoveKey( spep_4 + 60, 1, 21.9, 59.6 , 0 );
setMoveKey( spep_4 + 62, 1, -14.3, 51.9 , 0 );
setMoveKey( spep_4 + 64, 1, -34.4, 46.9 , 0 );
setMoveKey( spep_4 + 66, 1, -84, 43.5 , 0 );
setMoveKey( spep_4 + 68, 1, -101.4, 35.1 , 0 );
setMoveKey( spep_4 + 70, 1, -136.5, 35.7 , 0 );
setMoveKey( spep_4 + 72, 1, -157, 31.2 , 0 );
setMoveKey( spep_4 + 74, 1, -179, 28.3 , 0 );
setMoveKey( spep_4 + 76, 1, -198.6, 25.8 , 0 );
setMoveKey( spep_4 + 78, 1, -215.7, 23.6 , 0 );
setMoveKey( spep_4 + 80, 1, -230.4, 21.7 , 0 );
setMoveKey( spep_4 + 82, 1, -228.6, 18.1 , 0 );
setMoveKey( spep_4 + 84, 1, -257.7, 20.8 , 0 );
setMoveKey( spep_4 + 86, 1, -264.5, 12.5 , 0 );
setMoveKey( spep_4 + 88, 1, -283.9, 15.2 , 0 );
setMoveKey( spep_4 + 90, 1, -289.2, 10.9 , 0 );
setMoveKey( spep_4 + 92, 1, -298.7, 9 , 0 );
setMoveKey( spep_4 + 94, 1, -307.4, 7.2 , 0 );
setMoveKey( spep_4 + 96, 1, -315.2, 5.7 , 0 );
setMoveKey( spep_4 + 98, 1, -322.2, 4.3 , 0 );
setMoveKey( spep_4 + 100, 1,-328.3, 3 , 0 );
setMoveKey( spep_4 + 102, 1, -329.9, 1.3 , 0 );
setMoveKey( spep_4 + 104, 1, -331.6, -0.6 , 0 );
setMoveKey( spep_4 + 106, 1, -333.4, -2.7 , 0 );
setMoveKey( spep_4 + 108, 1, -335.4, -4.9 , 0 );
setMoveKey( spep_4 + 110, 1, -337.5, -7.4 , 0 );
setMoveKey( spep_4 + 112, 1, -339.8, -9.9 , 0 );
setMoveKey( spep_4 + 114, 1, -342.2, -12.6 , 0 );
setMoveKey( spep_4 + 116, 1, -344.7, -15.5 , 0 );
setMoveKey( spep_4 + 118, 1, -345, -17.2 , 0 );
setMoveKey( spep_4 + 120, 1, -351.9, -24.8 , 0 );
setMoveKey( spep_4 + 122, 1, -350, -22.1 , 0 );
setMoveKey( spep_4 + 124, 1, -360.8, -30.5 , 0 );
setMoveKey( spep_4 + 126, 1, -354.2, -32.1 , 0 );
setMoveKey( spep_4 + 128, 1, -366.1, -33.5 , 0 );
setMoveKey( spep_4 + 130, 1, -363.6, -44.3 , 0 );
setMoveKey( spep_4 + 132, 1, -372.8, -40.8 , 0 );
setMoveKey( spep_4 + 134, 1, -374.1, -55.2 , 0 );
setMoveKey( spep_4 + 136, 1, -384.1, -49.2 , 0 );
setMoveKey( spep_4 + 138, 1, -380.1, -66.3 , 0 );
setMoveKey( spep_4 + 140, 1, -392.2, -54.5 , 0 );
setMoveKey( spep_4 + 142, 1, -375.4, -57.4 , 0 );
setMoveKey( spep_4 + 144, 1, -395.3, -60.2 , 0 );
setMoveKey( spep_4 + 146, 1, -370.7, -51.4 , 0 );
setMoveKey( spep_4 + 148, 1, -396.5, -65 , 0 );
setMoveKey( spep_4 + 150, 1, -369.3, -64.1 , 0 );
setMoveKey( spep_4 + 152, 1, -391.2, -46.8 , 0 );
setMoveKey( spep_4 + 154, 1, -372.1, -73.3 , 0 );
setMoveKey( spep_4 + 156, 1, -395.6, -57.2 , 0 );
setMoveKey( spep_4 + 158, 1, -371.8, -74.6 , 0 );
setMoveKey( spep_4 + 160, 1, -407.2, -46 , 0 );
setMoveKey( spep_4 + 162, 1, -357.1, -55.4 , 0 );
setMoveKey( spep_4 + 164, 1, -397.1, -46.5 , 0 );

setScaleKey( spep_4 + 0, 1, 4.1, 4.1 );
setScaleKey( spep_4 + 2, 1, 3.79, 3.79 );
setScaleKey( spep_4 + 4, 1, 3.49, 3.49 );
setScaleKey( spep_4 + 6, 1, 3.2, 3.2 );
setScaleKey( spep_4 + 8, 1, 2.93, 2.93 );
setScaleKey( spep_4 + 10, 1, 2.67, 2.67 );
setScaleKey( spep_4 + 12, 1, 2.42, 2.42 );
setScaleKey( spep_4 + 14, 1, 2.19, 2.19 );
setScaleKey( spep_4 + 16, 1, 1.97, 1.97 );
setScaleKey( spep_4 + 18, 1, 1.76, 1.76 );
setScaleKey( spep_4 + 20, 1, 1.57, 1.57 );
setScaleKey( spep_4 + 22, 1, 1.39, 1.39 );
setScaleKey( spep_4 + 24, 1, 1.22, 1.22 );
setScaleKey( spep_4 + 26, 1, 1.07, 1.07 );
setScaleKey( spep_4 + 28, 1, 0.93, 0.93 );
setScaleKey( spep_4 + 30, 1, 0.8, 0.8 );
setScaleKey( spep_4 + 32, 1, 0.69, 0.69 );
setScaleKey( spep_4 + 34, 1, 0.59, 0.59 );
setScaleKey( spep_4 + 36, 1, 0.5, 0.5 );
--setScaleKey( spep_4 + 38, 1, 0.43, 0.43 );
setScaleKey( spep_4 + 39, 1, 2.79, 2.79 );--46
setScaleKey( spep_4 + 40, 1, 2.79, 2.79 );--46
setScaleKey( spep_4 + 48, 1, 2.48, 2.48 );
setScaleKey( spep_4 + 50, 1, 2.2, 2.2 );
setScaleKey( spep_4 + 52, 1, 1.95, 1.95 );
setScaleKey( spep_4 + 54, 1, 1.71, 1.71 );
setScaleKey( spep_4 + 56, 1, 1.51, 1.51 );
setScaleKey( spep_4 + 58, 1, 1.32, 1.32 );
setScaleKey( spep_4 + 60, 1, 1.16, 1.16 );
setScaleKey( spep_4 + 62, 1, 1.02, 1.02 );
setScaleKey( spep_4 + 64, 1, 0.9, 0.9 );
setScaleKey( spep_4 + 66, 1, 0.83, 0.83 );
setScaleKey( spep_4 + 68, 1, 0.76, 0.76 );
setScaleKey( spep_4 + 70, 1, 0.7, 0.7 );
setScaleKey( spep_4 + 72, 1, 0.64, 0.64 );
setScaleKey( spep_4 + 74, 1, 0.59, 0.59 );
setScaleKey( spep_4 + 76, 1, 0.54, 0.54 );
setScaleKey( spep_4 + 78, 1, 0.5, 0.5 );
setScaleKey( spep_4 + 80, 1, 0.47, 0.47 );
setScaleKey( spep_4 + 82, 1, 0.44, 0.44 );
setScaleKey( spep_4 + 84, 1, 0.42, 0.42 );
setScaleKey( spep_4 + 86, 1, 0.4, 0.4 );
setScaleKey( spep_4 + 88, 1, 0.38, 0.38 );
setScaleKey( spep_4 + 90, 1, 0.36, 0.36 );
setScaleKey( spep_4 + 92, 1, 0.34, 0.34 );
setScaleKey( spep_4 + 94, 1, 0.33, 0.33 );
setScaleKey( spep_4 + 96, 1, 0.31, 0.31 );
setScaleKey( spep_4 + 98, 1, 0.3, 0.3 );
setScaleKey( spep_4 + 100, 1, 0.29, 0.29 );
setScaleKey( spep_4 + 108, 1, 0.29, 0.29 );
setScaleKey( spep_4 + 110, 1, 0.28, 0.28 );
setScaleKey( spep_4 + 122, 1, 0.28, 0.28 );
setScaleKey( spep_4 + 124, 1, 0.27, 0.27 );
setScaleKey( spep_4 + 132, 1, 0.27, 0.27 );
setScaleKey( spep_4 + 134, 1, 0.26, 0.26 );
setScaleKey( spep_4 + 164, 1, 0.26, 0.26 );

setRotateKey( spep_4 + 0, 1, 21 );
setRotateKey( spep_4 + 2, 1, 21.3 );
setRotateKey( spep_4 + 4, 1, 21.6 );
setRotateKey( spep_4 + 6, 1, 21.9 );
setRotateKey( spep_4 + 8, 1, 22.2 );
setRotateKey( spep_4 + 10, 1, 22.5 );
setRotateKey( spep_4 + 12, 1, 22.8 );
setRotateKey( spep_4 + 14, 1, 23 );
setRotateKey( spep_4 + 16, 1, 23.2 );
setRotateKey( spep_4 + 18, 1, 23.4 );
setRotateKey( spep_4 + 20, 1, 23.6 );
setRotateKey( spep_4 + 22, 1, 23.8 );
setRotateKey( spep_4 + 24, 1, 24 );
setRotateKey( spep_4 + 26, 1, 24.2 );
setRotateKey( spep_4 + 28, 1, 24.3 );
setRotateKey( spep_4 + 30, 1, 24.4 );
setRotateKey( spep_4 + 32, 1, 24.6 );
setRotateKey( spep_4 + 34, 1, 24.7 );
setRotateKey( spep_4 + 36, 1, 24.8 );
setRotateKey( spep_4 + 39, 1, 0 );
setRotateKey( spep_4 + 40, 1, 0 );
setRotateKey( spep_4 + 48, 1, 0.1 );
setRotateKey( spep_4 + 50, 1, 0.2 );
setRotateKey( spep_4 + 52, 1, 0.3 );
setRotateKey( spep_4 + 54, 1, 0.4 );
setRotateKey( spep_4 + 56, 1, 0.5 );
setRotateKey( spep_4 + 58, 1, 0.5 );
setRotateKey( spep_4 + 60, 1, 0.6 );
setRotateKey( spep_4 + 62, 1, 0.7 );
setRotateKey( spep_4 + 64, 1, 0.7 );
setRotateKey( spep_4 + 66, 1, 0.9 );
setRotateKey( spep_4 + 68, 1, 1 );
setRotateKey( spep_4 + 70, 1, 1.1 );
setRotateKey( spep_4 + 72, 1, 1.3 );
setRotateKey( spep_4 + 74, 1, 1.4 );
setRotateKey( spep_4 + 76, 1, 1.5 );
setRotateKey( spep_4 + 78, 1, 1.6 );
setRotateKey( spep_4 + 80, 1, 1.6 );
setRotateKey( spep_4 + 82, 1, 1.7 );
setRotateKey( spep_4 + 84, 1, 2.9 );
setRotateKey( spep_4 + 86, 1, 4.1 );
setRotateKey( spep_4 + 88, 1, 5.2 );
setRotateKey( spep_4 + 90, 1, 6.2 );
setRotateKey( spep_4 + 92, 1, 7.1 );
setRotateKey( spep_4 + 94, 1, 7.9 );
setRotateKey( spep_4 + 96, 1, 8.6 );
setRotateKey( spep_4 + 98, 1, 9.3 );
setRotateKey( spep_4 + 100, 1, 9.9 );
setRotateKey( spep_4 + 102, 1, 10.7 );
setRotateKey( spep_4 + 104, 1, 11.6 );
setRotateKey( spep_4 + 106, 1, 12.6 );
setRotateKey( spep_4 + 108, 1, 13.7 );
setRotateKey( spep_4 + 110, 1, 14.8 );
setRotateKey( spep_4 + 112, 1, 16 );
setRotateKey( spep_4 + 114, 1, 17.3 );
setRotateKey( spep_4 + 116, 1, 18.7 );
setRotateKey( spep_4 + 118, 1, 20.1 );
setRotateKey( spep_4 + 120, 1, 21.6 );
setRotateKey( spep_4 + 122, 1, 23.2 );
setRotateKey( spep_4 + 124, 1, 24.9 );
setRotateKey( spep_4 + 126, 1, 26.6 );
setRotateKey( spep_4 + 128, 1, 28.4 );
setRotateKey( spep_4 + 130, 1, 30.3 );
setRotateKey( spep_4 + 132, 1, 32.3 );
setRotateKey( spep_4 + 134, 1, 34.4 );
setRotateKey( spep_4 + 136, 1, 36.5 );
setRotateKey( spep_4 + 138, 1, 38.7 );
setRotateKey( spep_4 + 164, 1, 38.7 );

--エフェクト(後)
hit_b=entryEffect(spep_4,SP_07x,0x80,-1,0,0,0);

setEffMoveKey( spep_4 + 0, hit_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 288, hit_b, 0, 0 , 0 );

setEffScaleKey(spep_4,hit_b,-1.0,1.0);
setEffScaleKey(spep_4+288,hit_b,-1.0,1.0);

setEffRotateKey(spep_4,hit_b,0);
setEffRotateKey(spep_4+288,hit_b,0);

setEffAlphaKey(spep_4,hit_b,255);
setEffAlphaKey(spep_4+288,hit_b,255);


--se
playSe( spep_4, 44); --敵が飛んでいく
playSe( spep_4+48, 1033); --岩にぶつかる
playSe( spep_4+66, 1033); --岩にぶつかる
playSe( spep_4+82, 1033); --岩にぶつかる
SE2=playSe(spep_4+94,1044);--地響き
stopSe(spep_4+188,SE2,0);
playSe( spep_4+188, 10); --岩にぶつかる

-- ダメージ表示
dealDamage(spep_4+188);
entryFade( spep_4+268, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_4+278);
 
end
