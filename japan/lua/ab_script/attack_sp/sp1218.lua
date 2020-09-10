--メタルクウラ・コア　4015370　デストロイレーザー
--sp_effect_a3_00053


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
SP_01=	152281	;--	対面
SP_02=	152282	;--	ぐるぐる　前
SP_03=	152283	;--	ぐるぐる　奥
SP_04=	152284	;--	セリフカットイン
SP_05=	152285	;--	発射
SP_06=	152286	;--	被弾　前
SP_07=	152287	;--	被弾　奥
SP_08=	152288	;--	爆発

--敵側
SP_01x=	152289	;--	対面　前
SP_02x=	152290	;--	ぐるぐる　前
SP_03x=	152291	;--	ぐるぐる　奥
SP_04x=	152284	;--	セリフカットイン
SP_05x=	152285	;--	発射
SP_06x=	152286	;--	被弾　前
SP_07x=	152287	;--	被弾　奥
SP_08x=	152288	;--	爆発



------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

--setDisp( 0, 1, 0);
setDisp( 0, 0, 0);
setMoveKey(   0,   0,    0, -2000,   0);
--setMoveKey(   0,   1,    0, -2000, 0);
setMoveKey(   1,   0,    0, -2000,   0);
--setMoveKey(   1,   1,    0, -2000 , 0);
setMoveKey(   2,   0,    0, -2000,   0);
--setMoveKey(   2,   1,    0, -2000 , 0);
setMoveKey(   3,   0,    0, -2000,   0);
--setMoveKey(   3,   1,    0, -2000 , 0);

setScaleKey(   0,   0, 1.6, 1.6);
--setScaleKey(   0,   1, 1.6, 1.6);
setScaleKey(   1,   0, 1.6, 1.6);
--setScaleKey(   1,   1, 1.6, 1.6);
setScaleKey(   2,   0, 1.6, 1.6);
--setScaleKey(   2,   1, 1.6, 1.6);
setScaleKey(   3,   0, 1.6, 1.6);
--setScaleKey(   3,   1, 1.6, 1.6);

--setRotateKey(   0,   1, 0);
setRotateKey(   0,   0, 0);
--setRotateKey(   1,   1, 0);
setRotateKey(   1,   0, 0);
--setRotateKey(   2,   1, 0);
setRotateKey(   2,   0, 0);
--setRotateKey(   3,   1, 0);
setRotateKey(   3,   0, 0);


multi_frm = 2;

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then
------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 威嚇
------------------------------------------------------
--エフェクトの再生

spep_0=0;

--エフェクト再生
intimidation=entryEffectLife(spep_0,SP_01,90,0x80,-1,0,0,0);

setEffMoveKey(spep_0,intimidation,0,0,0);
setEffMoveKey(spep_0+90,intimidation,0,0,0);

setEffScaleKey(spep_0,intimidation,1.0,1.0);
setEffScaleKey(spep_0+90,intimidation,1.0,1.0);

setEffAlphaKey(spep_0,intimidation,255);
setEffAlphaKey(spep_0+90,intimidation,255);

setEffRotateKey(spep_0,intimidation,0);
setEffRotateKey(spep_0+90,intimidation,0);

--集中線
shuchuse = entryEffectLife( spep_0 + 10,  906, 80, 0x100, -1, 0, 0, 8 );
setEffMoveKey( spep_0 + 10, shuchuse, 0, 8 , 0 );
setEffMoveKey( spep_0 + 88, shuchuse, 0, 8 , 0 );
setEffMoveKey( spep_0 + 90, shuchuse, 0, 8 , 0 );

setEffScaleKey( spep_0 + 10, shuchuse, 1.61, 1.63 );
setEffScaleKey( spep_0 + 88, shuchuse, 1.61, 1.63 );
setEffScaleKey( spep_0 + 90, shuchuse, 1.25, 1.27 );

setEffRotateKey( spep_0 + 10, shuchuse, 0 );
setEffRotateKey( spep_0 + 90, shuchuse, 0 );


--敵の動き
setDisp( spep_0, 1, 1 );
setDisp( spep_0+90, 1, 0 );
changeAnime( spep_0, 1, 118 );


setMoveKey( spep_0 + 0, 1, 58.3, -78.5 , 0 );
setMoveKey( spep_0 + 2, 1, 89.1, -159.9 , 0 );
setMoveKey( spep_0 + 4, 1, 103.7, -186.8 , 0 );
setMoveKey( spep_0 + 6, 1, 108.8, -208.8 , 0 );
setMoveKey( spep_0 + 8, 1, 118.8, -225 , 0 );
setMoveKey( spep_0 + 10, 1, 121.3, -239 , 0 );
setMoveKey( spep_0 + 12, 1, 128.3, -249.3 , 0 );
setMoveKey( spep_0 + 14, 1, 129.7, -261.5 , 0 );
setMoveKey( spep_0 + 16, 1, 135.2, -267.6 , 0 );
setMoveKey( spep_0 + 18, 1, 137.3, -278 , 0 );
setMoveKey( spep_0 + 20, 1, 142.4, -283.5 , 0 );
setMoveKey( spep_0 + 22, 1, 143.5, -292.8 , 0 );
setMoveKey( spep_0 + 24, 1, 145.6, -294.3 , 0 );
setMoveKey( spep_0 + 26, 1, 147.4, -303.4 , 0 );
setMoveKey( spep_0 + 28, 1, 149.2, -305.4 , 0 );
setMoveKey( spep_0 + 30, 1, 154.1, -311.9 , 0 );
setMoveKey( spep_0 + 32, 1, 151.8, -316.3 , 0 );
setMoveKey( spep_0 + 34, 1, 156.4, -317.4 , 0 );
setMoveKey( spep_0 + 36, 1, 155.9, -324.8 , 0 );
setMoveKey( spep_0 + 38, 1, 157.6, -323.9 , 0 );
setMoveKey( spep_0 + 40, 1, 159.7, -329.7 , 0 );
setMoveKey( spep_0 + 42, 1, 159.3, -329.1 , 0 );
setMoveKey( spep_0 + 44, 1, 163.3, -334.9 , 0 );
setMoveKey( spep_0 + 46, 1, 159.7, -334.5 , 0 );
setMoveKey( spep_0 + 48, 1, 164.8, -338.5 , 0 );
setMoveKey( spep_0 + 50, 1, 159.9, -340.3 , 0 );
setMoveKey( spep_0 + 52, 1, 165.2, -342.5 , 0 );
setMoveKey( spep_0 + 54, 1, 163, -341.1 , 0 );
setMoveKey( spep_0 + 56, 1, 165.3, -345.7 , 0 );
setMoveKey( spep_0 + 58, 1, 165.1, -341.3 , 0 );
setMoveKey( spep_0 + 60, 1, 165.7, -349.6 , 0 );
setMoveKey( spep_0 + 62, 1, 166.8, -344.6 , 0 );
setMoveKey( spep_0 + 64, 1, 166.6, -350.2 , 0 );
setMoveKey( spep_0 + 66, 1, 166.1, -345.9 , 0 );
setMoveKey( spep_0 + 68, 1, 168.6, -351.4 , 0 );
setMoveKey( spep_0 + 70, 1, 166.8, -346.3 , 0 );
setMoveKey( spep_0 + 72, 1, 168.3, -354.1 , 0 );
setMoveKey( spep_0 + 74, 1, 168.9, -346.2 , 0 );
setMoveKey( spep_0 + 76, 1, 163.8, -353.8 , 0 );
setMoveKey( spep_0 + 78, 1, 168.8, -348.2 , 0 );
setMoveKey( spep_0 + 80, 1, 165.8, -355 , 0 );
setMoveKey( spep_0 + 82, 1, 169.6, -348.4 , 0 );
setMoveKey( spep_0 + 84, 1, 169.2, -354.4 , 0 );
setMoveKey( spep_0 + 86, 1, 168, -348.4 , 0 );
setMoveKey( spep_0 + 88, 1, 169.3, -354 , 0 );
setMoveKey( spep_0 + 90, 1, 58.3, -78.5 , 0 );

setScaleKey( spep_0 + 0, 1, 2.95, 2.95 );
setScaleKey( spep_0 + 2, 1, 2.48, 2.48 );
setScaleKey( spep_0 + 4, 1, 2.3, 2.3 );
setScaleKey( spep_0 + 6, 1, 2.18, 2.18 );
setScaleKey( spep_0 + 8, 1, 2.09, 2.09 );
setScaleKey( spep_0 + 10, 1, 2.01, 2.01 );
setScaleKey( spep_0 + 12, 1, 1.94, 1.94 );
setScaleKey( spep_0 + 14, 1, 1.88, 1.88 );
setScaleKey( spep_0 + 16, 1, 1.83, 1.83 );
setScaleKey( spep_0 + 18, 1, 1.78, 1.78 );
setScaleKey( spep_0 + 20, 1, 1.74, 1.74 );
setScaleKey( spep_0 + 22, 1, 1.7, 1.7 );
setScaleKey( spep_0 + 24, 1, 1.67, 1.67 );
setScaleKey( spep_0 + 26, 1, 1.63, 1.63 );
setScaleKey( spep_0 + 28, 1, 1.61, 1.61 );
setScaleKey( spep_0 + 30, 1, 1.58, 1.58 );
setScaleKey( spep_0 + 32, 1, 1.56, 1.56 );
setScaleKey( spep_0 + 34, 1, 1.53, 1.53 );
setScaleKey( spep_0 + 36, 1, 1.51, 1.51 );
setScaleKey( spep_0 + 38, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 40, 1, 1.48, 1.48 );
setScaleKey( spep_0 + 42, 1, 1.46, 1.46 );
setScaleKey( spep_0 + 44, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 46, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 48, 1, 1.42, 1.42 );
setScaleKey( spep_0 + 50, 1, 1.41, 1.41 );
setScaleKey( spep_0 + 52, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 54, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 56, 1, 1.39, 1.39 );
setScaleKey( spep_0 + 58, 1, 1.38, 1.38 );
setScaleKey( spep_0 + 60, 1, 1.37, 1.37 );
setScaleKey( spep_0 + 62, 1, 1.37, 1.37 );
setScaleKey( spep_0 + 64, 1, 1.36, 1.36 );
setScaleKey( spep_0 + 68, 1, 1.36, 1.36 );
setScaleKey( spep_0 + 70, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 78, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 80, 1, 1.34, 1.34 );
setScaleKey( spep_0 + 88, 1, 1.34, 1.34 );
setScaleKey( spep_0 + 90, 1, 1.34, 1.34 );
--setScaleKey( spep_0 + 90, 1, 2.95, 2.95 );

setRotateKey( spep_0 + 0, 1, 16.2 );
setRotateKey( spep_0 + 2, 1, 17.8 );
setRotateKey( spep_0 + 4, 1, 18.4 );
setRotateKey( spep_0 + 6, 1, 18.8 );
setRotateKey( spep_0 + 8, 1, 19.1 );
setRotateKey( spep_0 + 10, 1, 19.4 );
setRotateKey( spep_0 + 12, 1, 19.7 );
setRotateKey( spep_0 + 14, 1, 19.9 );
setRotateKey( spep_0 + 16, 1, 20 );
setRotateKey( spep_0 + 18, 1, 20.2 );
setRotateKey( spep_0 + 20, 1, 20.3 );
setRotateKey( spep_0 + 22, 1, 20.5 );
setRotateKey( spep_0 + 24, 1, 20.6 );
setRotateKey( spep_0 + 26, 1, 20.7 );
setRotateKey( spep_0 + 28, 1, 20.8 );
setRotateKey( spep_0 + 30, 1, 20.9 );
setRotateKey( spep_0 + 32, 1, 20.9 );
setRotateKey( spep_0 + 34, 1, 21 );
setRotateKey( spep_0 + 36, 1, 21.1 );
setRotateKey( spep_0 + 38, 1, 21.2 );
setRotateKey( spep_0 + 40, 1, 21.2 );
setRotateKey( spep_0 + 42, 1, 21.3 );
setRotateKey( spep_0 + 44, 1, 21.3 );
setRotateKey( spep_0 + 46, 1, 21.4 );
setRotateKey( spep_0 + 50, 1, 21.4 );
setRotateKey( spep_0 + 52, 1, 21.5 );
setRotateKey( spep_0 + 58, 1, 21.5 );
setRotateKey( spep_0 + 60, 1, 21.6 );
setRotateKey( spep_0 + 72, 1, 21.6 );
setRotateKey( spep_0 + 74, 1, 21.7 );
setRotateKey( spep_0 + 88, 1, 21.7 );
setRotateKey( spep_0 + 90, 1, 16.2 );

-- ** エフェクト等 ** --
entryFade(spep_0, 0, 2, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_0+86, 0, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--SE
playSe( spep_0, SE_04);--ズオ

--次の準備
spep_1=spep_0+90;
------------------------------------------------------
-- パンチ
------------------------------------------------------
--エフェクトの再生(前)
punch_f=entryEffectLife(spep_1,SP_02,170,0x100,-1,0,0,0);

setEffMoveKey(spep_1,punch_f,0,0,0);
setEffMoveKey(spep_1+170,punch_f,0,0,0);

setEffScaleKey(spep_1,punch_f,1.0,1.0);
setEffScaleKey(spep_1+170,punch_f,1.0,1.0);

setEffAlphaKey(spep_1,punch_f,255);
setEffAlphaKey(spep_1+170,punch_f,255);

setEffRotateKey(spep_1,punch_f,0);
setEffRotateKey(spep_1+170,punch_f,0);

--エフェクトの再生(後)
punch_b=entryEffectLife(spep_1,SP_03,170,0x80,-1,0,0,0);

setEffMoveKey(spep_1,punch_b,0,0,0);
setEffMoveKey(spep_1+170,punch_b,0,0,0);

setEffScaleKey(spep_1,punch_b,1.0,1.0);
setEffScaleKey(spep_1+170,punch_b,1.0,1.0);

setEffAlphaKey(spep_1,punch_b,255);
setEffAlphaKey(spep_1+170,punch_b,255);

setEffRotateKey(spep_1,punch_b,0);
setEffRotateKey(spep_1+170,punch_b,0);

--敵の動き
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 170, 1, 0 );
changeAnime( spep_1 + 0, 1, 104 );
changeAnime( spep_1 + 30, 1, 108 );
changeAnime( spep_1 + 44, 1, 106 );

setMoveKey( spep_1 + 0, 1, 105.5, -151.3 , 0 );
setMoveKey( spep_1 + 2, 1, 104.5, -151 , 0 );
setMoveKey( spep_1 + 4, 1, 103.6, -150.7 , 0 );
setMoveKey( spep_1 + 6, 1, 102.7, -150.4 , 0 );
setMoveKey( spep_1 + 8, 1, 101.7, -150.2 , 0 );
setMoveKey( spep_1 + 10, 1, 100.8, -149.9 , 0 );
setMoveKey( spep_1 + 12, 1, 99.9, -149.6 , 0 );
setMoveKey( spep_1 + 14, 1, 98.9, -149.3 , 0 );
setMoveKey( spep_1 + 16, 1, 98, -149.1 , 0 );
setMoveKey( spep_1 + 18, 1, 97.1, -148.8 , 0 );


setScaleKey( spep_1 + 0, 1, 1.95, 1.95 );
setScaleKey( spep_1 + 1, 1, 1.95, 1.95 );
setScaleKey( spep_1 + 2, 1, 1.95, 1.95 );
setScaleKey( spep_1 + 18, 1, 1.95, 1.95 );

setRotateKey( spep_1 + 0, 1, 17.3 );
setRotateKey( spep_1 + 1, 1, 17.3 );
setRotateKey( spep_1 + 2, 1, 17.3 );
setRotateKey( spep_1 + 18, 1, 17.3 );

--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

SP_dodge = spep_1+18 ; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

pauseAll( SP_dodge, 67);

--キャラクターの固定
setMoveKey(SP_dodge, 1, 97.1, -148.8 , 0 );
setScaleKey(SP_dodge , 1, 1.95, 1.95 );
setRotateKey(SP_dodge,   1, 17.3 );

--キャラクターの固定
setMoveKey(SP_dodge+8, 1, 97.1, -148.8 , 0 );
setScaleKey(SP_dodge+8 , 1, 1.95, 1.95 );
setRotateKey(SP_dodge+8,   1, 17.3 );


setDisp(SP_dodge+9, 0, 0);
--setDisp(SP_dodge+9, 1, 0);
--setMoveKey(SP_dodge+9, 1, 0 , 0, 0);
setScaleKey(SP_dodge+9,  1 , 1.4, 1.4 );
setRotateKey(SP_dodge+9,   1, 0);

--setMoveKey(SP_dodge+10, 1, 0 , 0, 0);
setScaleKey(SP_dodge+10,  1 , 1.4, 1.4);
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
setMoveKey( spep_1 + 20, 1, 96.1, -148.5 , 0 );
setMoveKey( spep_1 + 22, 1, 95.2, -148.2 , 0 );
setMoveKey( spep_1 + 24, 1, 94.3, -148 , 0 );
setMoveKey( spep_1 + 26, 1, 93.3, -147.7 , 0 );
setMoveKey( spep_1 + 28, 1, 92.4, -147.4 , 0 );
setMoveKey( spep_1 + 30, 1, 91.5, -147.2 , 0 );
setMoveKey( spep_1 + 33, 1, 111.4, -170.4 , 0 );
setMoveKey( spep_1 + 34, 1, 165, -148.9 , 0 );
setMoveKey( spep_1 + 36, 1, 207.8, -219.1 , 0 );
setMoveKey( spep_1 + 38, 1, 218, -232.4 , 0 );
setMoveKey( spep_1 + 40, 1, 188.5, -260.2 , 0 );
setMoveKey( spep_1 + 43, 1, 142.2, -261.1 , 0 );
setMoveKey( spep_1 + 44, 1, 95.4, -254.4 , 0 );
setMoveKey( spep_1 + 46, 1, 86.8, -232.7 , 0 );
setMoveKey( spep_1 + 48, 1, 83.5, -230.2 , 0 );
setMoveKey( spep_1 + 50, 1, 86.7, -226.3 , 0 );
setMoveKey( spep_1 + 52, 1, 89, -223.5 , 0 );
setMoveKey( spep_1 + 54, 1, 90.7, -221.5 , 0 );
setMoveKey( spep_1 + 56, 1, 92, -219.9 , 0 );
setMoveKey( spep_1 + 58, 1, 93, -218.8 , 0 );
setMoveKey( spep_1 + 60, 1, 93.8, -217.9 , 0 );
setMoveKey( spep_1 + 62, 1, 94.4, -217.2 , 0 );
setMoveKey( spep_1 + 64, 1, 94.8, -216.7 , 0 );
setMoveKey( spep_1 + 66, 1, 95.1, -216.3 , 0 );
setMoveKey( spep_1 + 68, 1, 95.3, -216.1 , 0 );
setMoveKey( spep_1 + 70, 1, 95.5, -215.9 , 0 );
setMoveKey( spep_1 + 72, 1, 95.6, -215.8 , 0 );
setMoveKey( spep_1 + 74, 1, 95.6, -215.7 , 0 );
setMoveKey( spep_1 + 76, 1, 95.6, -215.7 , 0 );
setMoveKey( spep_1 + 78, 1, 95.6, -216 , 0 );
setMoveKey( spep_1 + 80, 1, 95.7, -207.9 , 0 );
setMoveKey( spep_1 + 82, 1, 95.7, -207.9 , 0 );
setMoveKey( spep_1 + 84, 1, 95.7, -201.9 , 0 );
setMoveKey( spep_1 + 86, 1, 95.7, -201.9 , 0 );
setMoveKey( spep_1 + 88, 1, 95.7, -195.9 , 0 );
setMoveKey( spep_1 + 90, 1, 95.7, -195.9 , 0 );
setMoveKey( spep_1 + 92, 1, 115.7, -185.9 , 0 );
setMoveKey( spep_1 + 94, 1, 115.7, -185.9 , 0 );
setMoveKey( spep_1 + 96, 1, 109.7, -146 , 0 );
setMoveKey( spep_1 + 98, 1, 109.7, -146 , 0 );
setMoveKey( spep_1 + 100, 1, 83.7, -106 , 0 );
setMoveKey( spep_1 + 102, 1, 55.7, -77.9 , 0 );
setMoveKey( spep_1 + 130, 1, 55.7, -77.9 , 0 );
setMoveKey( spep_1 + 132, 1, 53.1, -76 , 0 );
setMoveKey( spep_1 + 134, 1, 45.5, -70.2 , 0 );
setMoveKey( spep_1 + 136, 1, 33.9, -61.6 , 0 );
setMoveKey( spep_1 + 138, 1, 26.2, -55.9 , 0 );
setMoveKey( spep_1 + 140, 1, 23.6, -54 , 0 );
setMoveKey( spep_1 + 170, 1, 23.6, -54 , 0 );

setScaleKey( spep_1 + 28, 1, 1.95, 1.95 );
setScaleKey( spep_1 + 29, 1, 1.95, 1.95 );
setScaleKey( spep_1 + 30, 1, 2.1, 2.1 );
setScaleKey( spep_1 + 43, 1, 2.1, 2.1 );
setScaleKey( spep_1 + 44, 1, 2, 2 );
setScaleKey( spep_1 + 130, 1, 2, 2 );
setScaleKey( spep_1 + 132, 1, 2.01, 1.98 );
setScaleKey( spep_1 + 134, 1, 2.07, 1.94 );
setScaleKey( spep_1 + 136, 1, 2.14, 1.88 );
setScaleKey( spep_1 + 138, 1, 2.19, 1.83 );
setScaleKey( spep_1 + 140, 1, 2.21, 1.82 );
setScaleKey( spep_1 + 170, 1, 2.21, 1.82 );

setRotateKey( spep_1 + 26, 1, 17.3 );
setRotateKey( spep_1 + 29, 1, 19.3 );
setRotateKey( spep_1 + 30, 1, 56.2 );
setRotateKey( spep_1 + 36, 1, 63.7 );
setRotateKey( spep_1 + 38, 1, 69.1 );
setRotateKey( spep_1 + 40, 1, 72.3 );
setRotateKey( spep_1 + 43, 1, 73.4 );
setRotateKey( spep_1 + 44, 1, 38.1 );
setRotateKey( spep_1 + 46, 1, 40.6 );
setRotateKey( spep_1 + 48, 1, 41.3 );
setRotateKey( spep_1 + 50, 1, 41.8 );
setRotateKey( spep_1 + 52, 1, 42.1 );
setRotateKey( spep_1 + 54, 1, 42.4 );
setRotateKey( spep_1 + 56, 1, 42.6 );
setRotateKey( spep_1 + 58, 1, 42.7 );
setRotateKey( spep_1 + 60, 1, 42.8 );
setRotateKey( spep_1 + 62, 1, 42.9 );
setRotateKey( spep_1 + 64, 1, 43 );
setRotateKey( spep_1 + 66, 1, 43 );
setRotateKey( spep_1 + 68, 1, 43.1 );
setRotateKey( spep_1 + 78, 1, 43.1 );
setRotateKey( spep_1 + 80, 1, 38.6 );
setRotateKey( spep_1 + 82, 1, 38.6 );
setRotateKey( spep_1 + 84, 1, 37.4 );
setRotateKey( spep_1 + 86, 1, 37.4 );
setRotateKey( spep_1 + 88, 1, 36.4 );
setRotateKey( spep_1 + 90, 1, 36.4 );
setRotateKey( spep_1 + 92, 1, 33.5 );
setRotateKey( spep_1 + 94, 1, 33.5 );
setRotateKey( spep_1 + 96, 1, 22.7 );
setRotateKey( spep_1 + 98, 1, 22.7 );
setRotateKey( spep_1 + 100, 1, 15.7 );
setRotateKey( spep_1 + 102, 1, 5.9 );
setRotateKey( spep_1 + 130, 1, 5.9 );
setRotateKey( spep_1 + 132, 1, 4.5 );
setRotateKey( spep_1 + 134, 1, 0.4 );
setRotateKey( spep_1 + 136, 1, -5.7 );
setRotateKey( spep_1 + 138, 1, -9.8 );
setRotateKey( spep_1 + 140, 1, -11.2 );
setRotateKey( spep_1 + 170, 1, -11.2 );

--文字エントリー
ctdon = entryEffectLife( spep_1 + 30,  10019, 14, 0x100, -1, 0, 155.3, 199.6 );--ドンッ
setEffMoveKey( spep_1 + 30, ctdon, 155.3, 199.6 , 0 );
setEffMoveKey( spep_1 + 34, ctdon, 152.5, 233.9 , 0 );
setEffMoveKey( spep_1 + 36, ctdon, 164.5, 253.1 , 0 );
setEffMoveKey( spep_1 + 38, ctdon, 162.8, 266.3 , 0 );
setEffMoveKey( spep_1 + 40, ctdon, 158.6, 260.5 , 0 );
setEffMoveKey( spep_1 + 42, ctdon, 168.8, 263.5 , 0 );
setEffMoveKey( spep_1 + 44, ctdon, 169.3, 264.1 , 0 );

setEffScaleKey( spep_1 + 30, ctdon, 1.29, 1.29 );
setEffScaleKey( spep_1 + 34, ctdon, 1.63, 1.63 );
setEffScaleKey( spep_1 + 36, ctdon, 1.98, 1.98 );
setEffScaleKey( spep_1 + 38, ctdon, 2.01, 2.01 );
setEffScaleKey( spep_1 + 40, ctdon, 2.04, 2.04 );
setEffScaleKey( spep_1 + 42, ctdon, 2.05, 2.05 );
setEffScaleKey( spep_1 + 44, ctdon, 2.07, 2.07 );

setEffRotateKey( spep_1 + 30, ctdon, 35.7 );
setEffRotateKey( spep_1 + 34, ctdon, 36.3 );
setEffRotateKey( spep_1 + 36, ctdon, 36.8 );
setEffRotateKey( spep_1 + 44, ctdon, 36.8 );

setEffAlphaKey( spep_1 + 30, ctdon, 255 );
setEffAlphaKey( spep_1 + 40, ctdon, 255 );
setEffAlphaKey( spep_1 + 42, ctdon, 128 );
setEffAlphaKey( spep_1 + 44, ctdon, 0 );

--集中線
shuchuse2 = entryEffectLife( spep_1 + 24,  906, 144, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_1 + 24, shuchuse2, 0, 0 , 0 );
setEffMoveKey( spep_1 + 168, shuchuse2, 0, 0 , 0 );

setEffScaleKey( spep_1 + 24, shuchuse2, 1.88, 1.94 );
setEffScaleKey( spep_1 + 168, shuchuse2, 1.88, 1.94 );

setEffRotateKey( spep_1 + 24, shuchuse2, 0 );
setEffRotateKey( spep_1 + 168, shuchuse2, 0 );

setEffAlphaKey( spep_1 + 24, shuchuse2, 255 );
setEffAlphaKey( spep_1 + 168, shuchuse2, 255 );


--SE
playSe( spep_1+30, 1010);--パンチ
playSe( spep_1+50, 1027);--重なる
playSe( spep_1+100, 1007);--掴む
playSe( spep_1+122, 1055);--掴む
--1061
--1


-- ** エフェクト等 ** --
entryFade(spep_1+166, 2, 4, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_2=spep_1+170;
------------------------------------------------------
-- 吠える
------------------------------------------------------
--エフェクトの再生
bark=entryEffectLife(spep_2,SP_04,180,0x100,-1,0,0,0);

setEffMoveKey(spep_2,bark,0,0,0);
setEffMoveKey(spep_2+180,bark,0,0,0);

setEffScaleKey(spep_2,bark,1.0,1.0);
setEffScaleKey(spep_2+180,bark,1.0,1.0);

setEffAlphaKey(spep_2,bark,255);
setEffAlphaKey(spep_2+180,bark,255);

setEffRotateKey(spep_2,bark,0);
setEffRotateKey(spep_2+180,bark,0);

--集中線
shuchuse3 = entryEffectLife( spep_2 + 0,  906, 178, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, shuchuse3, 0, 0 , 0 );
setEffMoveKey( spep_2 + 178, shuchuse3, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchuse3, 1.41, 1.39 );
setEffScaleKey( spep_2 + 178, shuchuse3, 1.41, 1.39 );

setEffRotateKey( spep_2 + 0, shuchuse3, 0 );
setEffRotateKey( spep_2 + 178, shuchuse3, 0 );

setEffAlphaKey( spep_2 + 0, shuchuse3, 255 );
setEffAlphaKey( spep_2 + 178, shuchuse3, 255 );

--顔カットイン
speff=entryEffect(spep_2+90,1504,0x100,-1,0,0,0);  --カットイン(顔)
setEffReplaceTexture(speff,3,2);  --カットイン差し替え
speff1=entryEffect(spep_2+90,1505,0x100,-1,0,0,0);  --カットイン(セリフ)
setEffReplaceTexture(speff1,4,5);  --セリフカッ

--文字エントリー
ctgogo=entryEffectLife(spep_2+102,190006,70,0x100,-1,150,520);--ゴゴゴ
setEffMoveKey(spep_2+102,ctgogo,150,520,0);
setEffMoveKey(spep_2+172,ctgogo,150,520,0);
setEffScaleKey(spep_2+102, ctgogo, 0.7, 0.7);
setEffScaleKey(spep_2+172, ctgogo, 0.7, 0.7);

setEffAlphaKey( spep_2 + 102, ctgogo, 0 );
setEffAlphaKey( spep_2 + 103, ctgogo, 255 );
setEffAlphaKey( spep_2 + 104, ctgogo, 255 );
setEffAlphaKey( spep_2 + 172, ctgogo, 255 );

--SE
playSe( spep_2+36, 8);--バチバチ
--playSe( spep_2+90, 1038);--バチバチ
playSe( spep_2+102, SE_04);--カットイン


-- ** エフェクト等 ** --
entryFade(spep_2+170, 6, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_3=spep_2+180;

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
-- 目からビーム
------------------------------------------------------
--エフェクトの再生
beam=entryEffectLife(spep_4,SP_05,88,0x100,-1,0,0,0);

setEffMoveKey(spep_4,beam,0,0,0);
setEffMoveKey(spep_4+88,beam,0,0,0);

setEffScaleKey(spep_4,beam,1.0,1.0);
setEffScaleKey(spep_4+90,beam,1.0,1.0);

setEffAlphaKey(spep_4,beam,255);
setEffAlphaKey(spep_4+86,beam,255);
setEffAlphaKey(spep_4+87,beam,255);
setEffAlphaKey(spep_4+88,beam,0);

setEffRotateKey(spep_4,beam,0);
setEffRotateKey(spep_4+88,beam,0);

--集中線

shuchuse4 = entryEffectLife( spep_4 + 26,  906, 62, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_4 + 26, shuchuse4, 0, 0 , 0 );
setEffMoveKey( spep_4 + 88, shuchuse4, 0, 0 , 0 );

setEffScaleKey( spep_4 + 26, shuchuse4, 1.02, 1.02 );
setEffScaleKey( spep_4 + 88, shuchuse4, 1.02, 1.02 );

setEffRotateKey( spep_4 + 26, shuchuse4, 0 );
setEffRotateKey( spep_4 + 88, shuchuse4, 0 );

setEffAlphaKey( spep_4 + 26, shuchuse4, 255 );
setEffAlphaKey( spep_4 + 86, shuchuse4, 255 );
setEffAlphaKey( spep_4 + 87, shuchuse4, 255 );
setEffAlphaKey( spep_4 + 88, shuchuse4, 0 );

--SE
playSe( spep_4+18, SE_06);--発射

--次の準備
spep_5=spep_4+88;
------------------------------------------------------
-- ヒット
------------------------------------------------------
--エフェクトの再生(前)
hit_f=entryEffectLife(spep_5,SP_06,90,0x100,-1,0,0,0);

setEffMoveKey(spep_5,hit_f,0,0,0);
setEffMoveKey(spep_5+90,hit_f,0,0,0);

setEffScaleKey(spep_5,hit_f,1.0,1.0);
setEffScaleKey(spep_5+90,hit_f,1.0,1.0);

setEffAlphaKey(spep_5,hit_f,255);
setEffAlphaKey(spep_5+90,hit_f,255);

setEffRotateKey(spep_5,hit_f,0);
setEffRotateKey(spep_5+90,hit_f,0);

--エフェクトの再生(後)
hit_b=entryEffectLife(spep_5,SP_07,90,0x80,-1,0,0,0);

setEffMoveKey(spep_5,hit_b,0,0,0);
setEffMoveKey(spep_5+90,hit_b,0,0,0);

setEffScaleKey(spep_5,hit_b,1.0,1.0);
setEffScaleKey(spep_5+90,hit_b,1.0,1.0);

setEffAlphaKey(spep_5,hit_b,255);
setEffAlphaKey(spep_5+90,hit_b,255);

setEffRotateKey(spep_5,hit_b,0);
setEffRotateKey(spep_5+90,hit_b,0);

--文字エントリー
ctzudodod = entryEffectLife( spep_5-4 + 22,  10014, 66, 0x100, -1, 0, 22.5, 276.1 );--ズドドドッ
setEffMoveKey( spep_5-4 + 22, ctzudodod, 22.5, 276.1 , 0 );
setEffMoveKey( spep_5-4 + 28, ctzudodod, 10, 265.1 , 0 );
setEffMoveKey( spep_5-4 + 30, ctzudodod, 26.3, 261.4 , 0 );
setEffMoveKey( spep_5-4 + 32, ctzudodod, 7.1, 265.4 , 0 );
setEffMoveKey( spep_5-4 + 34, ctzudodod, 32.2, 260.3 , 0 );
setEffMoveKey( spep_5-4 + 36, ctzudodod, 10.6, 260.5 , 0 );
setEffMoveKey( spep_5-4 + 38, ctzudodod, 30.5, 259.1 , 0 );
setEffMoveKey( spep_5-4 + 40, ctzudodod, 19.5, 276.5 , 0 );
setEffMoveKey( spep_5-4 + 42, ctzudodod, 20.6, 255.6 , 0 );
setEffMoveKey( spep_5-4 + 44, ctzudodod, 16.4, 273.7 , 0 );
setEffMoveKey( spep_5-4 + 46, ctzudodod, 28.2, 261.5 , 0 );
setEffMoveKey( spep_5-4 + 48, ctzudodod, 14.8, 277 , 0 );
setEffMoveKey( spep_5-4 + 50, ctzudodod, 22.9, 257.4 , 0 );
setEffMoveKey( spep_5-4 + 52, ctzudodod, 11.6, 268.6 , 0 );
setEffMoveKey( spep_5-4 + 54, ctzudodod, 24.8, 254.3 , 0 );
setEffMoveKey( spep_5-4 + 56, ctzudodod, 18.7, 275.8 , 0 );
setEffMoveKey( spep_5-4 + 58, ctzudodod, 15.7, 255.2 , 0 );
setEffMoveKey( spep_5-4 + 60, ctzudodod, 16, 277 , 0 );
setEffMoveKey( spep_5-4 + 62, ctzudodod, 21.2, 251.6 , 0 );
setEffMoveKey( spep_5-4 + 64, ctzudodod, 20.4, 272.9 , 0 );
setEffMoveKey( spep_5-4 + 66, ctzudodod, 14.8, 252.8 , 0 );
setEffMoveKey( spep_5-4 + 68, ctzudodod, 26.4, 268.7 , 0 );
setEffMoveKey( spep_5-4 + 70, ctzudodod, 19.4, 253.1 , 0 );
setEffMoveKey( spep_5-4 + 72, ctzudodod, 26.9, 275 , 0 );
setEffMoveKey( spep_5-4 + 74, ctzudodod, 6.6, 263.9 , 0 );
setEffMoveKey( spep_5-4 + 76, ctzudodod, 28.6, 269.7 , 0 );
setEffMoveKey( spep_5-4 + 78, ctzudodod, 13.4, 250.4 , 0 );
setEffMoveKey( spep_5-4 + 80, ctzudodod, 25.6, 277 , 0 );
setEffMoveKey( spep_5-4 + 82, ctzudodod, 21, 251.8 , 0 );
setEffMoveKey( spep_5-4 + 84, ctzudodod, 10.6, 270.1 , 0 );
setEffMoveKey( spep_5-4 + 86, ctzudodod, 22.4, 276.1 , 0 );
setEffMoveKey( spep_5-4 + 88, ctzudodod, 15.5, 277.1 , 0 );

setEffScaleKey( spep_5-4 + 22, ctzudodod, 1.95, 1.95 );
setEffScaleKey( spep_5-4 + 28, ctzudodod, 2.09, 2.09 );
setEffScaleKey( spep_5-4 + 30, ctzudodod, 2.2, 2.2 );
setEffScaleKey( spep_5-4 + 32, ctzudodod, 2.26, 2.26 );
setEffScaleKey( spep_5-4 + 34, ctzudodod, 2.28, 2.28 );
setEffScaleKey( spep_5-4 + 36, ctzudodod, 2.29, 2.29 );
setEffScaleKey( spep_5-4 + 38, ctzudodod, 2.31, 2.31 );
setEffScaleKey( spep_5-4 + 40, ctzudodod, 2.33, 2.33 );
setEffScaleKey( spep_5-4 + 42, ctzudodod, 2.34, 2.34 );
setEffScaleKey( spep_5-4 + 44, ctzudodod, 2.36, 2.36 );
setEffScaleKey( spep_5-4 + 46, ctzudodod, 2.37, 2.37 );
setEffScaleKey( spep_5-4 + 48, ctzudodod, 2.39, 2.39 );
setEffScaleKey( spep_5-4 + 50, ctzudodod, 2.4, 2.4 );
setEffScaleKey( spep_5-4 + 52, ctzudodod, 2.42, 2.42 );
setEffScaleKey( spep_5-4 + 54, ctzudodod, 2.44, 2.44 );
setEffScaleKey( spep_5-4 + 56, ctzudodod, 2.45, 2.45 );
setEffScaleKey( spep_5-4 + 58, ctzudodod, 2.47, 2.47 );
setEffScaleKey( spep_5-4 + 60, ctzudodod, 2.48, 2.48 );
setEffScaleKey( spep_5-4 + 62, ctzudodod, 2.5, 2.5 );
setEffScaleKey( spep_5-4 + 64, ctzudodod, 2.51, 2.51 );
setEffScaleKey( spep_5-4 + 66, ctzudodod, 2.53, 2.53 );
setEffScaleKey( spep_5-4 + 68, ctzudodod, 2.55, 2.55 );
setEffScaleKey( spep_5-4 + 70, ctzudodod, 2.56, 2.56 );
setEffScaleKey( spep_5-4 + 72, ctzudodod, 2.58, 2.58 );
setEffScaleKey( spep_5-4 + 74, ctzudodod, 2.59, 2.59 );
setEffScaleKey( spep_5-4 + 76, ctzudodod, 2.61, 2.61 );
setEffScaleKey( spep_5-4 + 78, ctzudodod, 2.62, 2.62 );
setEffScaleKey( spep_5-4 + 80, ctzudodod, 2.64, 2.64 );
setEffScaleKey( spep_5-4 + 82, ctzudodod, 2.66, 2.66 );
setEffScaleKey( spep_5-4 + 84, ctzudodod, 2.67, 2.67 );
setEffScaleKey( spep_5-4 + 86, ctzudodod, 2.69, 2.69 );
setEffScaleKey( spep_5-4 + 88, ctzudodod, 2.7, 2.7 );

setEffRotateKey( spep_5-4 + 22, ctzudodod, 24.5 );
setEffRotateKey( spep_5-4 + 88, ctzudodod, 24.5 );

setEffAlphaKey( spep_5-4 + 26, ctzudodod, 0 );
setEffAlphaKey( spep_5-4 + 26, ctzudodod, 31 );
setEffAlphaKey( spep_5-4 + 28, ctzudodod, 129 );
setEffAlphaKey( spep_5-4 + 30, ctzudodod, 199 );
setEffAlphaKey( spep_5-4 + 32, ctzudodod, 241 );
setEffAlphaKey( spep_5-4 + 34, ctzudodod, 255 );
setEffAlphaKey( spep_5-4 + 88, ctzudodod, 255 );


--敵の動き
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 88, 1, 0 );
changeAnime( spep_5 + 0, 1, 106 );

setMoveKey( spep_5 + 0, 1, 20.1, -85.9 , 0 );
setMoveKey( spep_5 + 28, 1, 20.1, -85.9 , 0 );
setMoveKey( spep_5 + 30, 1, 12.5, -85.9 , 0 );
setMoveKey( spep_5 + 32, 1, 25.1, -83.4 , 0 );
setMoveKey( spep_5 + 34, 1, 15.1, -89.1 , 0 );
setMoveKey( spep_5 + 36, 1, 25, -77.3 , 0 );
setMoveKey( spep_5 + 38, 1, 17.4, -91.8 , 0 );
setMoveKey( spep_5 + 40, 1, 24.2, -80 , 0 );
setMoveKey( spep_5 + 42, 1, 14, -89.4 , 0 );
setMoveKey( spep_5 + 44, 1, 26.2, -87.5 , 0 );
setMoveKey( spep_5 + 46, 1, 13, -80.9 , 0 );
setMoveKey( spep_5 + 48, 1, 26.5, -86.9 , 0 );
setMoveKey( spep_5 + 50, 1, 15.3, -78.6 , 0 );
setMoveKey( spep_5 + 52, 1, 27.9, -86.1 , 0 );
setMoveKey( spep_5 + 54, 1, 16.6, -81.8 , 0 );
setMoveKey( spep_5 + 56, 1, 22.1, -92.8 , 0 );
setMoveKey( spep_5 + 58, 1, 20.5, -77.1 , 0 );
setMoveKey( spep_5 + 60, 1, 18.8, -90.8 , 0 );
setMoveKey( spep_5 + 62, 1, 14.8, -80.2 , 0 );
setMoveKey( spep_5 + 64, 1, 27.6, -85.8 , 0 );
setMoveKey( spep_5 + 66, 1, 16.1, -89.9 , 0 );
setMoveKey( spep_5 + 68, 1, 24.8, -82.8 , 0 );
setMoveKey( spep_5 + 70, 1, 12.5, -85.9 , 0 );
setMoveKey( spep_5 + 72, 1, 25.1, -83.4 , 0 );
setMoveKey( spep_5 + 74, 1, 15.1, -89.1 , 0 );
setMoveKey( spep_5 + 76, 1, 25, -77.3 , 0 );
setMoveKey( spep_5 + 78, 1, 17.4, -91.8 , 0 );
setMoveKey( spep_5 + 80, 1, 24.2, -80 , 0 );
setMoveKey( spep_5 + 82, 1, 14, -89.4 , 0 );
setMoveKey( spep_5 + 84, 1, 26.2, -87.5 , 0 );
setMoveKey( spep_5 + 86, 1, 13, -80.9 , 0 );
setMoveKey( spep_5 + 88, 1, 26.5, -86.9 , 0 );

setScaleKey( spep_5 + 0, 1, 1.88, 1.55 );
setScaleKey( spep_5 + 88, 1, 1.88, 1.55 );

setRotateKey( spep_5 + 0, 1, -11.2 );
setRotateKey( spep_5 + 88, 1, -11.2 );

--SE
playSe( spep_5+12, SE_09);--のびる発射

-- ** エフェクト等 ** --
entryFade(spep_5+85,4,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_6=spep_5+90;
------------------------------------------------------
-- 爆発
------------------------------------------------------
--エフェクトの再生
explosion=entryEffect(spep_6,SP_08,0x100,-1,0,0,0);

setEffMoveKey(spep_6,explosion,0,0,0);
setEffMoveKey(spep_6+180,explosion,0,0,0);

setEffScaleKey(spep_6,explosion,1.0,1.0);
setEffScaleKey(spep_6+180,explosion,1.0,1.0);

setEffAlphaKey(spep_6,explosion,255);
setEffAlphaKey(spep_6+180,explosion,255);

setEffRotateKey(spep_6,explosion,0);
setEffRotateKey(spep_6+180,explosion,0);

--集中線
shuchuse5 = entryEffectLife( spep_6 + 40,  906, 150, 0x100, -1, 0, 0, -278 );

setEffMoveKey( spep_6 + 40, shuchuse5, 0, -278 , 0 );
setEffMoveKey( spep_6 + 190, shuchuse5, 0, -278 , 0 );

setEffScaleKey( spep_6 + 40, shuchuse5, 1.23, 1.52 );
setEffScaleKey( spep_6 + 190, shuchuse5, 1.23, 1.52 );

setEffRotateKey( spep_6 + 40, shuchuse5, 0 );
setEffRotateKey( spep_6 + 190, shuchuse5, 0 );

setEffAlphaKey( spep_6 + 40, shuchuse5, 255 );
setEffAlphaKey( spep_6 + 190, shuchuse5, 255 );

--SE
playSe( spep_6, SE_10);--爆発
playSe(  spep_6+113, SE_09);


-- ダメージ表示
dealDamage(spep_6+80);

entryFade( spep_6+180, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_6+190);

else 

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 威嚇
------------------------------------------------------
--エフェクトの再生

spep_0=0;

--エフェクト再生
intimidation=entryEffectLife(spep_0,SP_01x,90,0x80,-1,0,0,0);

setEffMoveKey(spep_0,intimidation,0,0,0);
setEffMoveKey(spep_0+90,intimidation,0,0,0);

setEffScaleKey(spep_0,intimidation,1.0,1.0);
setEffScaleKey(spep_0+90,intimidation,1.0,1.0);

setEffAlphaKey(spep_0,intimidation,255);
setEffAlphaKey(spep_0+90,intimidation,255);

setEffRotateKey(spep_0,intimidation,0);
setEffRotateKey(spep_0+90,intimidation,0);

--集中線
shuchuse = entryEffectLife( spep_0 + 10,  906, 80, 0x100, -1, 0, 0, 8 );
setEffMoveKey( spep_0 + 10, shuchuse, 0, 8 , 0 );
setEffMoveKey( spep_0 + 88, shuchuse, 0, 8 , 0 );
setEffMoveKey( spep_0 + 90, shuchuse, 0, 8 , 0 );

setEffScaleKey( spep_0 + 10, shuchuse, 1.61, 1.63 );
setEffScaleKey( spep_0 + 88, shuchuse, 1.61, 1.63 );
setEffScaleKey( spep_0 + 90, shuchuse, 1.25, 1.27 );

setEffRotateKey( spep_0 + 10, shuchuse, 0 );
setEffRotateKey( spep_0 + 90, shuchuse, 0 );


--敵の動き
setDisp( spep_0, 1, 1 );
setDisp( spep_0+90, 1, 0 );
changeAnime( spep_0, 1, 118 );


setMoveKey( spep_0 + 0, 1, 58.3, -78.5 , 0 );
setMoveKey( spep_0 + 2, 1, 89.1, -159.9 , 0 );
setMoveKey( spep_0 + 4, 1, 103.7, -186.8 , 0 );
setMoveKey( spep_0 + 6, 1, 108.8, -208.8 , 0 );
setMoveKey( spep_0 + 8, 1, 118.8, -225 , 0 );
setMoveKey( spep_0 + 10, 1, 121.3, -239 , 0 );
setMoveKey( spep_0 + 12, 1, 128.3, -249.3 , 0 );
setMoveKey( spep_0 + 14, 1, 129.7, -261.5 , 0 );
setMoveKey( spep_0 + 16, 1, 135.2, -267.6 , 0 );
setMoveKey( spep_0 + 18, 1, 137.3, -278 , 0 );
setMoveKey( spep_0 + 20, 1, 142.4, -283.5 , 0 );
setMoveKey( spep_0 + 22, 1, 143.5, -292.8 , 0 );
setMoveKey( spep_0 + 24, 1, 145.6, -294.3 , 0 );
setMoveKey( spep_0 + 26, 1, 147.4, -303.4 , 0 );
setMoveKey( spep_0 + 28, 1, 149.2, -305.4 , 0 );
setMoveKey( spep_0 + 30, 1, 154.1, -311.9 , 0 );
setMoveKey( spep_0 + 32, 1, 151.8, -316.3 , 0 );
setMoveKey( spep_0 + 34, 1, 156.4, -317.4 , 0 );
setMoveKey( spep_0 + 36, 1, 155.9, -324.8 , 0 );
setMoveKey( spep_0 + 38, 1, 157.6, -323.9 , 0 );
setMoveKey( spep_0 + 40, 1, 159.7, -329.7 , 0 );
setMoveKey( spep_0 + 42, 1, 159.3, -329.1 , 0 );
setMoveKey( spep_0 + 44, 1, 163.3, -334.9 , 0 );
setMoveKey( spep_0 + 46, 1, 159.7, -334.5 , 0 );
setMoveKey( spep_0 + 48, 1, 164.8, -338.5 , 0 );
setMoveKey( spep_0 + 50, 1, 159.9, -340.3 , 0 );
setMoveKey( spep_0 + 52, 1, 165.2, -342.5 , 0 );
setMoveKey( spep_0 + 54, 1, 163, -341.1 , 0 );
setMoveKey( spep_0 + 56, 1, 165.3, -345.7 , 0 );
setMoveKey( spep_0 + 58, 1, 165.1, -341.3 , 0 );
setMoveKey( spep_0 + 60, 1, 165.7, -349.6 , 0 );
setMoveKey( spep_0 + 62, 1, 166.8, -344.6 , 0 );
setMoveKey( spep_0 + 64, 1, 166.6, -350.2 , 0 );
setMoveKey( spep_0 + 66, 1, 166.1, -345.9 , 0 );
setMoveKey( spep_0 + 68, 1, 168.6, -351.4 , 0 );
setMoveKey( spep_0 + 70, 1, 166.8, -346.3 , 0 );
setMoveKey( spep_0 + 72, 1, 168.3, -354.1 , 0 );
setMoveKey( spep_0 + 74, 1, 168.9, -346.2 , 0 );
setMoveKey( spep_0 + 76, 1, 163.8, -353.8 , 0 );
setMoveKey( spep_0 + 78, 1, 168.8, -348.2 , 0 );
setMoveKey( spep_0 + 80, 1, 165.8, -355 , 0 );
setMoveKey( spep_0 + 82, 1, 169.6, -348.4 , 0 );
setMoveKey( spep_0 + 84, 1, 169.2, -354.4 , 0 );
setMoveKey( spep_0 + 86, 1, 168, -348.4 , 0 );
setMoveKey( spep_0 + 88, 1, 169.3, -354 , 0 );
setMoveKey( spep_0 + 90, 1, 58.3, -78.5 , 0 );

setScaleKey( spep_0 + 0, 1, 2.95, 2.95 );
setScaleKey( spep_0 + 2, 1, 2.48, 2.48 );
setScaleKey( spep_0 + 4, 1, 2.3, 2.3 );
setScaleKey( spep_0 + 6, 1, 2.18, 2.18 );
setScaleKey( spep_0 + 8, 1, 2.09, 2.09 );
setScaleKey( spep_0 + 10, 1, 2.01, 2.01 );
setScaleKey( spep_0 + 12, 1, 1.94, 1.94 );
setScaleKey( spep_0 + 14, 1, 1.88, 1.88 );
setScaleKey( spep_0 + 16, 1, 1.83, 1.83 );
setScaleKey( spep_0 + 18, 1, 1.78, 1.78 );
setScaleKey( spep_0 + 20, 1, 1.74, 1.74 );
setScaleKey( spep_0 + 22, 1, 1.7, 1.7 );
setScaleKey( spep_0 + 24, 1, 1.67, 1.67 );
setScaleKey( spep_0 + 26, 1, 1.63, 1.63 );
setScaleKey( spep_0 + 28, 1, 1.61, 1.61 );
setScaleKey( spep_0 + 30, 1, 1.58, 1.58 );
setScaleKey( spep_0 + 32, 1, 1.56, 1.56 );
setScaleKey( spep_0 + 34, 1, 1.53, 1.53 );
setScaleKey( spep_0 + 36, 1, 1.51, 1.51 );
setScaleKey( spep_0 + 38, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 40, 1, 1.48, 1.48 );
setScaleKey( spep_0 + 42, 1, 1.46, 1.46 );
setScaleKey( spep_0 + 44, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 46, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 48, 1, 1.42, 1.42 );
setScaleKey( spep_0 + 50, 1, 1.41, 1.41 );
setScaleKey( spep_0 + 52, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 54, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 56, 1, 1.39, 1.39 );
setScaleKey( spep_0 + 58, 1, 1.38, 1.38 );
setScaleKey( spep_0 + 60, 1, 1.37, 1.37 );
setScaleKey( spep_0 + 62, 1, 1.37, 1.37 );
setScaleKey( spep_0 + 64, 1, 1.36, 1.36 );
setScaleKey( spep_0 + 68, 1, 1.36, 1.36 );
setScaleKey( spep_0 + 70, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 78, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 80, 1, 1.34, 1.34 );
setScaleKey( spep_0 + 88, 1, 1.34, 1.34 );
setScaleKey( spep_0 + 90, 1, 1.34, 1.34 );
--setScaleKey( spep_0 + 90, 1, 2.95, 2.95 );

setRotateKey( spep_0 + 0, 1, 16.2 );
setRotateKey( spep_0 + 2, 1, 17.8 );
setRotateKey( spep_0 + 4, 1, 18.4 );
setRotateKey( spep_0 + 6, 1, 18.8 );
setRotateKey( spep_0 + 8, 1, 19.1 );
setRotateKey( spep_0 + 10, 1, 19.4 );
setRotateKey( spep_0 + 12, 1, 19.7 );
setRotateKey( spep_0 + 14, 1, 19.9 );
setRotateKey( spep_0 + 16, 1, 20 );
setRotateKey( spep_0 + 18, 1, 20.2 );
setRotateKey( spep_0 + 20, 1, 20.3 );
setRotateKey( spep_0 + 22, 1, 20.5 );
setRotateKey( spep_0 + 24, 1, 20.6 );
setRotateKey( spep_0 + 26, 1, 20.7 );
setRotateKey( spep_0 + 28, 1, 20.8 );
setRotateKey( spep_0 + 30, 1, 20.9 );
setRotateKey( spep_0 + 32, 1, 20.9 );
setRotateKey( spep_0 + 34, 1, 21 );
setRotateKey( spep_0 + 36, 1, 21.1 );
setRotateKey( spep_0 + 38, 1, 21.2 );
setRotateKey( spep_0 + 40, 1, 21.2 );
setRotateKey( spep_0 + 42, 1, 21.3 );
setRotateKey( spep_0 + 44, 1, 21.3 );
setRotateKey( spep_0 + 46, 1, 21.4 );
setRotateKey( spep_0 + 50, 1, 21.4 );
setRotateKey( spep_0 + 52, 1, 21.5 );
setRotateKey( spep_0 + 58, 1, 21.5 );
setRotateKey( spep_0 + 60, 1, 21.6 );
setRotateKey( spep_0 + 72, 1, 21.6 );
setRotateKey( spep_0 + 74, 1, 21.7 );
setRotateKey( spep_0 + 88, 1, 21.7 );
setRotateKey( spep_0 + 90, 1, 16.2 );

-- ** エフェクト等 ** --
entryFade(spep_0, 0, 2, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_0+86, 0, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--SE
playSe( spep_0, SE_04);--ズオ

--次の準備
spep_1=spep_0+90;
------------------------------------------------------
-- パンチ
------------------------------------------------------
--エフェクトの再生(前)
punch_f=entryEffectLife(spep_1,SP_02x,170,0x100,-1,0,0,0);

setEffMoveKey(spep_1,punch_f,0,0,0);
setEffMoveKey(spep_1+170,punch_f,0,0,0);

setEffScaleKey(spep_1,punch_f,1.0,1.0);
setEffScaleKey(spep_1+170,punch_f,1.0,1.0);

setEffAlphaKey(spep_1,punch_f,255);
setEffAlphaKey(spep_1+170,punch_f,255);

setEffRotateKey(spep_1,punch_f,0);
setEffRotateKey(spep_1+170,punch_f,0);

--エフェクトの再生(後)
punch_b=entryEffectLife(spep_1,SP_03x,170,0x80,-1,0,0,0);

setEffMoveKey(spep_1,punch_b,0,0,0);
setEffMoveKey(spep_1+170,punch_b,0,0,0);

setEffScaleKey(spep_1,punch_b,1.0,1.0);
setEffScaleKey(spep_1+170,punch_b,1.0,1.0);

setEffAlphaKey(spep_1,punch_b,255);
setEffAlphaKey(spep_1+170,punch_b,255);

setEffRotateKey(spep_1,punch_b,0);
setEffRotateKey(spep_1+170,punch_b,0);

--敵の動き
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 170, 1, 0 );
changeAnime( spep_1 + 0, 1, 104 );
changeAnime( spep_1 + 30, 1, 108 );
changeAnime( spep_1 + 44, 1, 106 );

setMoveKey( spep_1 + 0, 1, 105.5, -151.3 , 0 );
setMoveKey( spep_1 + 2, 1, 104.5, -151 , 0 );
setMoveKey( spep_1 + 4, 1, 103.6, -150.7 , 0 );
setMoveKey( spep_1 + 6, 1, 102.7, -150.4 , 0 );
setMoveKey( spep_1 + 8, 1, 101.7, -150.2 , 0 );
setMoveKey( spep_1 + 10, 1, 100.8, -149.9 , 0 );
setMoveKey( spep_1 + 12, 1, 99.9, -149.6 , 0 );
setMoveKey( spep_1 + 14, 1, 98.9, -149.3 , 0 );
setMoveKey( spep_1 + 16, 1, 98, -149.1 , 0 );
setMoveKey( spep_1 + 18, 1, 97.1, -148.8 , 0 );


setScaleKey( spep_1 + 0, 1, 1.95, 1.95 );
setScaleKey( spep_1 + 1, 1, 1.95, 1.95 );
setScaleKey( spep_1 + 2, 1, 1.95, 1.95 );
setScaleKey( spep_1 + 18, 1, 1.95, 1.95 );

setRotateKey( spep_1 + 0, 1, 17.3 );
setRotateKey( spep_1 + 1, 1, 17.3 );
setRotateKey( spep_1 + 2, 1, 17.3 );
setRotateKey( spep_1 + 18, 1, 17.3 );

--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

SP_dodge = spep_1+18 ; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

pauseAll( SP_dodge, 67);

--キャラクターの固定
setMoveKey(SP_dodge, 1, 97.1, -148.8 , 0 );
setScaleKey(SP_dodge , 1, 1.95, 1.95 );
setRotateKey(SP_dodge,   1, 17.3 );

--キャラクターの固定
setMoveKey(SP_dodge+8, 1, 97.1, -148.8 , 0 );
setScaleKey(SP_dodge+8 , 1, 1.95, 1.95 );
setRotateKey(SP_dodge+8,   1, 17.3 );


setDisp(SP_dodge+9, 0, 0);
--setDisp(SP_dodge+9, 1, 0);
--setMoveKey(SP_dodge+9, 1, 0 , 0, 0);
setScaleKey(SP_dodge+9,  1 , 1.4, 1.4 );
setRotateKey(SP_dodge+9,   1, 0);

--setMoveKey(SP_dodge+10, 1, 0 , 0, 0);
setScaleKey(SP_dodge+10,  1 , 1.4, 1.4);
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
setMoveKey( spep_1 + 20, 1, 96.1, -148.5 , 0 );
setMoveKey( spep_1 + 22, 1, 95.2, -148.2 , 0 );
setMoveKey( spep_1 + 24, 1, 94.3, -148 , 0 );
setMoveKey( spep_1 + 26, 1, 93.3, -147.7 , 0 );
setMoveKey( spep_1 + 28, 1, 92.4, -147.4 , 0 );
setMoveKey( spep_1 + 30, 1, 91.5, -147.2 , 0 );
setMoveKey( spep_1 + 33, 1, 111.4, -170.4 , 0 );
setMoveKey( spep_1 + 34, 1, 165, -148.9 , 0 );
setMoveKey( spep_1 + 36, 1, 207.8, -219.1 , 0 );
setMoveKey( spep_1 + 38, 1, 218, -232.4 , 0 );
setMoveKey( spep_1 + 40, 1, 188.5, -260.2 , 0 );
setMoveKey( spep_1 + 43, 1, 142.2, -261.1 , 0 );
setMoveKey( spep_1 + 44, 1, 95.4, -254.4 , 0 );
setMoveKey( spep_1 + 46, 1, 86.8, -232.7 , 0 );
setMoveKey( spep_1 + 48, 1, 83.5, -230.2 , 0 );
setMoveKey( spep_1 + 50, 1, 86.7, -226.3 , 0 );
setMoveKey( spep_1 + 52, 1, 89, -223.5 , 0 );
setMoveKey( spep_1 + 54, 1, 90.7, -221.5 , 0 );
setMoveKey( spep_1 + 56, 1, 92, -219.9 , 0 );
setMoveKey( spep_1 + 58, 1, 93, -218.8 , 0 );
setMoveKey( spep_1 + 60, 1, 93.8, -217.9 , 0 );
setMoveKey( spep_1 + 62, 1, 94.4, -217.2 , 0 );
setMoveKey( spep_1 + 64, 1, 94.8, -216.7 , 0 );
setMoveKey( spep_1 + 66, 1, 95.1, -216.3 , 0 );
setMoveKey( spep_1 + 68, 1, 95.3, -216.1 , 0 );
setMoveKey( spep_1 + 70, 1, 95.5, -215.9 , 0 );
setMoveKey( spep_1 + 72, 1, 95.6, -215.8 , 0 );
setMoveKey( spep_1 + 74, 1, 95.6, -215.7 , 0 );
setMoveKey( spep_1 + 76, 1, 95.6, -215.7 , 0 );
setMoveKey( spep_1 + 78, 1, 95.6, -216 , 0 );
setMoveKey( spep_1 + 80, 1, 95.7, -207.9 , 0 );
setMoveKey( spep_1 + 82, 1, 95.7, -207.9 , 0 );
setMoveKey( spep_1 + 84, 1, 95.7, -201.9 , 0 );
setMoveKey( spep_1 + 86, 1, 95.7, -201.9 , 0 );
setMoveKey( spep_1 + 88, 1, 95.7, -195.9 , 0 );
setMoveKey( spep_1 + 90, 1, 95.7, -195.9 , 0 );
setMoveKey( spep_1 + 92, 1, 115.7, -185.9 , 0 );
setMoveKey( spep_1 + 94, 1, 115.7, -185.9 , 0 );
setMoveKey( spep_1 + 96, 1, 109.7, -146 , 0 );
setMoveKey( spep_1 + 98, 1, 109.7, -146 , 0 );
setMoveKey( spep_1 + 100, 1, 83.7, -106 , 0 );
setMoveKey( spep_1 + 102, 1, 55.7, -77.9 , 0 );
setMoveKey( spep_1 + 130, 1, 55.7, -77.9 , 0 );
setMoveKey( spep_1 + 132, 1, 53.1, -76 , 0 );
setMoveKey( spep_1 + 134, 1, 45.5, -70.2 , 0 );
setMoveKey( spep_1 + 136, 1, 33.9, -61.6 , 0 );
setMoveKey( spep_1 + 138, 1, 26.2, -55.9 , 0 );
setMoveKey( spep_1 + 140, 1, 23.6, -54 , 0 );
setMoveKey( spep_1 + 170, 1, 23.6, -54 , 0 );

setScaleKey( spep_1 + 28, 1, 1.95, 1.95 );
setScaleKey( spep_1 + 29, 1, 1.95, 1.95 );
setScaleKey( spep_1 + 30, 1, 2.1, 2.1 );
setScaleKey( spep_1 + 43, 1, 2.1, 2.1 );
setScaleKey( spep_1 + 44, 1, 2, 2 );
setScaleKey( spep_1 + 130, 1, 2, 2 );
setScaleKey( spep_1 + 132, 1, 2.01, 1.98 );
setScaleKey( spep_1 + 134, 1, 2.07, 1.94 );
setScaleKey( spep_1 + 136, 1, 2.14, 1.88 );
setScaleKey( spep_1 + 138, 1, 2.19, 1.83 );
setScaleKey( spep_1 + 140, 1, 2.21, 1.82 );
setScaleKey( spep_1 + 170, 1, 2.21, 1.82 );

setRotateKey( spep_1 + 26, 1, 17.3 );
setRotateKey( spep_1 + 29, 1, 19.3 );
setRotateKey( spep_1 + 30, 1, 56.2 );
setRotateKey( spep_1 + 36, 1, 63.7 );
setRotateKey( spep_1 + 38, 1, 69.1 );
setRotateKey( spep_1 + 40, 1, 72.3 );
setRotateKey( spep_1 + 43, 1, 73.4 );
setRotateKey( spep_1 + 44, 1, 38.1 );
setRotateKey( spep_1 + 46, 1, 40.6 );
setRotateKey( spep_1 + 48, 1, 41.3 );
setRotateKey( spep_1 + 50, 1, 41.8 );
setRotateKey( spep_1 + 52, 1, 42.1 );
setRotateKey( spep_1 + 54, 1, 42.4 );
setRotateKey( spep_1 + 56, 1, 42.6 );
setRotateKey( spep_1 + 58, 1, 42.7 );
setRotateKey( spep_1 + 60, 1, 42.8 );
setRotateKey( spep_1 + 62, 1, 42.9 );
setRotateKey( spep_1 + 64, 1, 43 );
setRotateKey( spep_1 + 66, 1, 43 );
setRotateKey( spep_1 + 68, 1, 43.1 );
setRotateKey( spep_1 + 78, 1, 43.1 );
setRotateKey( spep_1 + 80, 1, 38.6 );
setRotateKey( spep_1 + 82, 1, 38.6 );
setRotateKey( spep_1 + 84, 1, 37.4 );
setRotateKey( spep_1 + 86, 1, 37.4 );
setRotateKey( spep_1 + 88, 1, 36.4 );
setRotateKey( spep_1 + 90, 1, 36.4 );
setRotateKey( spep_1 + 92, 1, 33.5 );
setRotateKey( spep_1 + 94, 1, 33.5 );
setRotateKey( spep_1 + 96, 1, 22.7 );
setRotateKey( spep_1 + 98, 1, 22.7 );
setRotateKey( spep_1 + 100, 1, 15.7 );
setRotateKey( spep_1 + 102, 1, 5.9 );
setRotateKey( spep_1 + 130, 1, 5.9 );
setRotateKey( spep_1 + 132, 1, 4.5 );
setRotateKey( spep_1 + 134, 1, 0.4 );
setRotateKey( spep_1 + 136, 1, -5.7 );
setRotateKey( spep_1 + 138, 1, -9.8 );
setRotateKey( spep_1 + 140, 1, -11.2 );
setRotateKey( spep_1 + 170, 1, -11.2 );

--文字エントリー
ctdon = entryEffectLife( spep_1 + 30,  10019, 14, 0x100, -1, 0, 155.3, 199.6 );--ドンッ
setEffMoveKey( spep_1 + 30, ctdon, 155.3, 199.6 , 0 );
setEffMoveKey( spep_1 + 34, ctdon, 152.5, 233.9 , 0 );
setEffMoveKey( spep_1 + 36, ctdon, 164.5, 253.1 , 0 );
setEffMoveKey( spep_1 + 38, ctdon, 162.8, 266.3 , 0 );
setEffMoveKey( spep_1 + 40, ctdon, 158.6, 260.5 , 0 );
setEffMoveKey( spep_1 + 42, ctdon, 168.8, 263.5 , 0 );
setEffMoveKey( spep_1 + 44, ctdon, 169.3, 264.1 , 0 );

setEffScaleKey( spep_1 + 30, ctdon, 1.29, 1.29 );
setEffScaleKey( spep_1 + 34, ctdon, 1.63, 1.63 );
setEffScaleKey( spep_1 + 36, ctdon, 1.98, 1.98 );
setEffScaleKey( spep_1 + 38, ctdon, 2.01, 2.01 );
setEffScaleKey( spep_1 + 40, ctdon, 2.04, 2.04 );
setEffScaleKey( spep_1 + 42, ctdon, 2.05, 2.05 );
setEffScaleKey( spep_1 + 44, ctdon, 2.07, 2.07 );

setEffRotateKey( spep_1 + 30, ctdon, 35.7 );
setEffRotateKey( spep_1 + 34, ctdon, 36.3 );
setEffRotateKey( spep_1 + 36, ctdon, 36.8 );
setEffRotateKey( spep_1 + 44, ctdon, 36.8 );

setEffAlphaKey( spep_1 + 30, ctdon, 255 );
setEffAlphaKey( spep_1 + 40, ctdon, 255 );
setEffAlphaKey( spep_1 + 42, ctdon, 128 );
setEffAlphaKey( spep_1 + 44, ctdon, 0 );

--集中線
shuchuse2 = entryEffectLife( spep_1 + 24,  906, 144, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_1 + 24, shuchuse2, 0, 0 , 0 );
setEffMoveKey( spep_1 + 168, shuchuse2, 0, 0 , 0 );

setEffScaleKey( spep_1 + 24, shuchuse2, 1.88, 1.94 );
setEffScaleKey( spep_1 + 168, shuchuse2, 1.88, 1.94 );

setEffRotateKey( spep_1 + 24, shuchuse2, 0 );
setEffRotateKey( spep_1 + 168, shuchuse2, 0 );

setEffAlphaKey( spep_1 + 24, shuchuse2, 255 );
setEffAlphaKey( spep_1 + 168, shuchuse2, 255 );


--SE
playSe( spep_1+30, 1010);--パンチ
playSe( spep_1+50, 1027);--重なる
playSe( spep_1+100, 1007);--掴む
playSe( spep_1+122, 1055);--掴む

-- ** エフェクト等 ** --
entryFade(spep_1+166, 2, 4, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_2=spep_1+170;
------------------------------------------------------
-- 吠える
------------------------------------------------------
--エフェクトの再生
bark=entryEffectLife(spep_2,SP_04x,180,0x100,-1,0,0,0);

setEffMoveKey(spep_2,bark,0,0,0);
setEffMoveKey(spep_2+180,bark,0,0,0);

setEffScaleKey(spep_2,bark,-1.0,1.0);
setEffScaleKey(spep_2+180,bark,-1.0,1.0);

setEffAlphaKey(spep_2,bark,255);
setEffAlphaKey(spep_2+180,bark,255);

setEffRotateKey(spep_2,bark,0);
setEffRotateKey(spep_2+180,bark,0);

--集中線
shuchuse3 = entryEffectLife( spep_2 + 0,  906, 178, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, shuchuse3, 0, 0 , 0 );
setEffMoveKey( spep_2 + 178, shuchuse3, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchuse3, 1.41, 1.39 );
setEffScaleKey( spep_2 + 178, shuchuse3, 1.41, 1.39 );

setEffRotateKey( spep_2 + 0, shuchuse3, 0 );
setEffRotateKey( spep_2 + 178, shuchuse3, 0 );

setEffAlphaKey( spep_2 + 0, shuchuse3, 255 );
setEffAlphaKey( spep_2 + 178, shuchuse3, 255 );

--顔カットイン
--speff=entryEffect(spep_2+90,1504,0x100,-1,0,0,0);  --カットイン(顔)
--setEffReplaceTexture(speff,3,2);  --カットイン差し替え
--speff1=entryEffect(spep_2+90,1505,0x100,-1,0,0,0);  --カットイン(セリフ)
--setEffReplaceTexture(speff1,4,5);  --セリフカッ

--文字エントリー
--ctgogo=entryEffectLife(spep_2+102,190006,70,0x100,-1,150,520);--ゴゴゴ
--setEffMoveKey(spep_2+102,ctgogo,150,520,0);
--setEffMoveKey(spep_2+172,ctgogo,150,520,0);
--setEffScaleKey(spep_2+102, ctgogo, -0.7, 0.7);
--setEffScaleKey(spep_2+172, ctgogo, -0.7, 0.7);

--setEffAlphaKey( spep_2 + 102, ctgogo, 0 );
--setEffAlphaKey( spep_2 + 103, ctgogo, 255 );
--setEffAlphaKey( spep_2 + 104, ctgogo, 255 );
--setEffAlphaKey( spep_2 + 172, ctgogo, 255 );

--SE
playSe( spep_2+36, 8);--バチバチ
--playSe( spep_2+90, 1038);--バチバチ
playSe( spep_2+102, SE_04);--カットイン


-- ** エフェクト等 ** --
entryFade(spep_2+170, 6, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_3=spep_2+180;

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
-- 目からビーム
------------------------------------------------------
--エフェクトの再生
beam=entryEffectLife(spep_4,SP_05x,88,0x100,-1,0,0,0);

setEffMoveKey(spep_4,beam,0,0,0);
setEffMoveKey(spep_4+88,beam,0,0,0);

setEffScaleKey(spep_4,beam,-1.0,1.0);
setEffScaleKey(spep_4+90,beam,-1.0,1.0);

setEffAlphaKey(spep_4,beam,255);
setEffAlphaKey(spep_4+86,beam,255);
setEffAlphaKey(spep_4+87,beam,255);
setEffAlphaKey(spep_4+88,beam,0);

setEffRotateKey(spep_4,beam,0);
setEffRotateKey(spep_4+88,beam,0);

--集中線

shuchuse4 = entryEffectLife( spep_4 + 26,  906, 62, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_4 + 26, shuchuse4, 0, 0 , 0 );
setEffMoveKey( spep_4 + 88, shuchuse4, 0, 0 , 0 );

setEffScaleKey( spep_4 + 26, shuchuse4, 1.02, 1.02 );
setEffScaleKey( spep_4 + 88, shuchuse4, 1.02, 1.02 );

setEffRotateKey( spep_4 + 26, shuchuse4, 0 );
setEffRotateKey( spep_4 + 88, shuchuse4, 0 );

setEffAlphaKey( spep_4 + 26, shuchuse4, 255 );
setEffAlphaKey( spep_4 + 86, shuchuse4, 255 );
setEffAlphaKey( spep_4 + 87, shuchuse4, 255 );
setEffAlphaKey( spep_4 + 88, shuchuse4, 0 );

--SE
playSe( spep_4+18, SE_06);--発射

--次の準備
spep_5=spep_4+88;
------------------------------------------------------
-- ヒット
------------------------------------------------------
--エフェクトの再生(前)
hit_f=entryEffectLife(spep_5,SP_06x,90,0x100,-1,0,0,0);

setEffMoveKey(spep_5,hit_f,0,0,0);
setEffMoveKey(spep_5+90,hit_f,0,0,0);

setEffScaleKey(spep_5,hit_f,1.0,1.0);
setEffScaleKey(spep_5+90,hit_f,1.0,1.0);

setEffAlphaKey(spep_5,hit_f,255);
setEffAlphaKey(spep_5+90,hit_f,255);

setEffRotateKey(spep_5,hit_f,0);
setEffRotateKey(spep_5+90,hit_f,0);

--エフェクトの再生(後)
hit_b=entryEffectLife(spep_5,SP_07x,90,0x80,-1,0,0,0);

setEffMoveKey(spep_5,hit_b,0,0,0);
setEffMoveKey(spep_5+90,hit_b,0,0,0);

setEffScaleKey(spep_5,hit_b,1.0,1.0);
setEffScaleKey(spep_5+90,hit_b,1.0,1.0);

setEffAlphaKey(spep_5,hit_b,255);
setEffAlphaKey(spep_5+90,hit_b,255);

setEffRotateKey(spep_5,hit_b,0);
setEffRotateKey(spep_5+90,hit_b,0);

--文字エントリー
ctzudodod = entryEffectLife( spep_5-4 + 22,  10014, 66, 0x100, -1, 0, 22.5, 276.1 );--ズドドドッ
setEffMoveKey( spep_5-4 + 22, ctzudodod, 22.5, 276.1 , 0 );
setEffMoveKey( spep_5-4 + 28, ctzudodod, 10, 265.1 , 0 );
setEffMoveKey( spep_5-4 + 30, ctzudodod, 26.3, 261.4 , 0 );
setEffMoveKey( spep_5-4 + 32, ctzudodod, 7.1, 265.4 , 0 );
setEffMoveKey( spep_5-4 + 34, ctzudodod, 32.2, 260.3 , 0 );
setEffMoveKey( spep_5-4 + 36, ctzudodod, 10.6, 260.5 , 0 );
setEffMoveKey( spep_5-4 + 38, ctzudodod, 30.5, 259.1 , 0 );
setEffMoveKey( spep_5-4 + 40, ctzudodod, 19.5, 276.5 , 0 );
setEffMoveKey( spep_5-4 + 42, ctzudodod, 20.6, 255.6 , 0 );
setEffMoveKey( spep_5-4 + 44, ctzudodod, 16.4, 273.7 , 0 );
setEffMoveKey( spep_5-4 + 46, ctzudodod, 28.2, 261.5 , 0 );
setEffMoveKey( spep_5-4 + 48, ctzudodod, 14.8, 277 , 0 );
setEffMoveKey( spep_5-4 + 50, ctzudodod, 22.9, 257.4 , 0 );
setEffMoveKey( spep_5-4 + 52, ctzudodod, 11.6, 268.6 , 0 );
setEffMoveKey( spep_5-4 + 54, ctzudodod, 24.8, 254.3 , 0 );
setEffMoveKey( spep_5-4 + 56, ctzudodod, 18.7, 275.8 , 0 );
setEffMoveKey( spep_5-4 + 58, ctzudodod, 15.7, 255.2 , 0 );
setEffMoveKey( spep_5-4 + 60, ctzudodod, 16, 277 , 0 );
setEffMoveKey( spep_5-4 + 62, ctzudodod, 21.2, 251.6 , 0 );
setEffMoveKey( spep_5-4 + 64, ctzudodod, 20.4, 272.9 , 0 );
setEffMoveKey( spep_5-4 + 66, ctzudodod, 14.8, 252.8 , 0 );
setEffMoveKey( spep_5-4 + 68, ctzudodod, 26.4, 268.7 , 0 );
setEffMoveKey( spep_5-4 + 70, ctzudodod, 19.4, 253.1 , 0 );
setEffMoveKey( spep_5-4 + 72, ctzudodod, 26.9, 275 , 0 );
setEffMoveKey( spep_5-4 + 74, ctzudodod, 6.6, 263.9 , 0 );
setEffMoveKey( spep_5-4 + 76, ctzudodod, 28.6, 269.7 , 0 );
setEffMoveKey( spep_5-4 + 78, ctzudodod, 13.4, 250.4 , 0 );
setEffMoveKey( spep_5-4 + 80, ctzudodod, 25.6, 277 , 0 );
setEffMoveKey( spep_5-4 + 82, ctzudodod, 21, 251.8 , 0 );
setEffMoveKey( spep_5-4 + 84, ctzudodod, 10.6, 270.1 , 0 );
setEffMoveKey( spep_5-4 + 86, ctzudodod, 22.4, 276.1 , 0 );
setEffMoveKey( spep_5-4 + 88, ctzudodod, 15.5, 277.1 , 0 );

setEffScaleKey( spep_5-4 + 22, ctzudodod, 1.95, 1.95 );
setEffScaleKey( spep_5-4 + 28, ctzudodod, 2.09, 2.09 );
setEffScaleKey( spep_5-4 + 30, ctzudodod, 2.2, 2.2 );
setEffScaleKey( spep_5-4 + 32, ctzudodod, 2.26, 2.26 );
setEffScaleKey( spep_5-4 + 34, ctzudodod, 2.28, 2.28 );
setEffScaleKey( spep_5-4 + 36, ctzudodod, 2.29, 2.29 );
setEffScaleKey( spep_5-4 + 38, ctzudodod, 2.31, 2.31 );
setEffScaleKey( spep_5-4 + 40, ctzudodod, 2.33, 2.33 );
setEffScaleKey( spep_5-4 + 42, ctzudodod, 2.34, 2.34 );
setEffScaleKey( spep_5-4 + 44, ctzudodod, 2.36, 2.36 );
setEffScaleKey( spep_5-4 + 46, ctzudodod, 2.37, 2.37 );
setEffScaleKey( spep_5-4 + 48, ctzudodod, 2.39, 2.39 );
setEffScaleKey( spep_5-4 + 50, ctzudodod, 2.4, 2.4 );
setEffScaleKey( spep_5-4 + 52, ctzudodod, 2.42, 2.42 );
setEffScaleKey( spep_5-4 + 54, ctzudodod, 2.44, 2.44 );
setEffScaleKey( spep_5-4 + 56, ctzudodod, 2.45, 2.45 );
setEffScaleKey( spep_5-4 + 58, ctzudodod, 2.47, 2.47 );
setEffScaleKey( spep_5-4 + 60, ctzudodod, 2.48, 2.48 );
setEffScaleKey( spep_5-4 + 62, ctzudodod, 2.5, 2.5 );
setEffScaleKey( spep_5-4 + 64, ctzudodod, 2.51, 2.51 );
setEffScaleKey( spep_5-4 + 66, ctzudodod, 2.53, 2.53 );
setEffScaleKey( spep_5-4 + 68, ctzudodod, 2.55, 2.55 );
setEffScaleKey( spep_5-4 + 70, ctzudodod, 2.56, 2.56 );
setEffScaleKey( spep_5-4 + 72, ctzudodod, 2.58, 2.58 );
setEffScaleKey( spep_5-4 + 74, ctzudodod, 2.59, 2.59 );
setEffScaleKey( spep_5-4 + 76, ctzudodod, 2.61, 2.61 );
setEffScaleKey( spep_5-4 + 78, ctzudodod, 2.62, 2.62 );
setEffScaleKey( spep_5-4 + 80, ctzudodod, 2.64, 2.64 );
setEffScaleKey( spep_5-4 + 82, ctzudodod, 2.66, 2.66 );
setEffScaleKey( spep_5-4 + 84, ctzudodod, 2.67, 2.67 );
setEffScaleKey( spep_5-4 + 86, ctzudodod, 2.69, 2.69 );
setEffScaleKey( spep_5-4 + 88, ctzudodod, 2.7, 2.7 );

setEffRotateKey( spep_5-4 + 22, ctzudodod, -24.5 );
setEffRotateKey( spep_5-4 + 88, ctzudodod, -24.5 );

setEffAlphaKey( spep_5-4 + 26, ctzudodod, 0 );
setEffAlphaKey( spep_5-4 + 26, ctzudodod, 31 );
setEffAlphaKey( spep_5-4 + 28, ctzudodod, 129 );
setEffAlphaKey( spep_5-4 + 30, ctzudodod, 199 );
setEffAlphaKey( spep_5-4 + 32, ctzudodod, 241 );
setEffAlphaKey( spep_5-4 + 34, ctzudodod, 255 );
setEffAlphaKey( spep_5-4 + 88, ctzudodod, 255 );


--敵の動き
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 88, 1, 0 );
changeAnime( spep_5 + 0, 1, 106 );

setMoveKey( spep_5 + 0, 1, 20.1, -85.9 , 0 );
setMoveKey( spep_5 + 28, 1, 20.1, -85.9 , 0 );
setMoveKey( spep_5 + 30, 1, 12.5, -85.9 , 0 );
setMoveKey( spep_5 + 32, 1, 25.1, -83.4 , 0 );
setMoveKey( spep_5 + 34, 1, 15.1, -89.1 , 0 );
setMoveKey( spep_5 + 36, 1, 25, -77.3 , 0 );
setMoveKey( spep_5 + 38, 1, 17.4, -91.8 , 0 );
setMoveKey( spep_5 + 40, 1, 24.2, -80 , 0 );
setMoveKey( spep_5 + 42, 1, 14, -89.4 , 0 );
setMoveKey( spep_5 + 44, 1, 26.2, -87.5 , 0 );
setMoveKey( spep_5 + 46, 1, 13, -80.9 , 0 );
setMoveKey( spep_5 + 48, 1, 26.5, -86.9 , 0 );
setMoveKey( spep_5 + 50, 1, 15.3, -78.6 , 0 );
setMoveKey( spep_5 + 52, 1, 27.9, -86.1 , 0 );
setMoveKey( spep_5 + 54, 1, 16.6, -81.8 , 0 );
setMoveKey( spep_5 + 56, 1, 22.1, -92.8 , 0 );
setMoveKey( spep_5 + 58, 1, 20.5, -77.1 , 0 );
setMoveKey( spep_5 + 60, 1, 18.8, -90.8 , 0 );
setMoveKey( spep_5 + 62, 1, 14.8, -80.2 , 0 );
setMoveKey( spep_5 + 64, 1, 27.6, -85.8 , 0 );
setMoveKey( spep_5 + 66, 1, 16.1, -89.9 , 0 );
setMoveKey( spep_5 + 68, 1, 24.8, -82.8 , 0 );
setMoveKey( spep_5 + 70, 1, 12.5, -85.9 , 0 );
setMoveKey( spep_5 + 72, 1, 25.1, -83.4 , 0 );
setMoveKey( spep_5 + 74, 1, 15.1, -89.1 , 0 );
setMoveKey( spep_5 + 76, 1, 25, -77.3 , 0 );
setMoveKey( spep_5 + 78, 1, 17.4, -91.8 , 0 );
setMoveKey( spep_5 + 80, 1, 24.2, -80 , 0 );
setMoveKey( spep_5 + 82, 1, 14, -89.4 , 0 );
setMoveKey( spep_5 + 84, 1, 26.2, -87.5 , 0 );
setMoveKey( spep_5 + 86, 1, 13, -80.9 , 0 );
setMoveKey( spep_5 + 88, 1, 26.5, -86.9 , 0 );

setScaleKey( spep_5 + 0, 1, 1.88, 1.55 );
setScaleKey( spep_5 + 88, 1, 1.88, 1.55 );

setRotateKey( spep_5 + 0, 1, -11.2 );
setRotateKey( spep_5 + 88, 1, -11.2 );

--SE
playSe( spep_5+12, SE_09);--のびる発射

-- ** エフェクト等 ** --
entryFade(spep_5+85,4,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_6=spep_5+90;
------------------------------------------------------
-- 爆発
------------------------------------------------------
--エフェクトの再生
explosion=entryEffect(spep_6,SP_08x,0x100,-1,0,0,0);

setEffMoveKey(spep_6,explosion,0,0,0);
setEffMoveKey(spep_6+180,explosion,0,0,0);

setEffScaleKey(spep_6,explosion,1.0,1.0);
setEffScaleKey(spep_6+180,explosion,1.0,1.0);

setEffAlphaKey(spep_6,explosion,255);
setEffAlphaKey(spep_6+180,explosion,255);

setEffRotateKey(spep_6,explosion,0);
setEffRotateKey(spep_6+180,explosion,0);

--集中線
shuchuse5 = entryEffectLife( spep_6 + 40,  906, 150, 0x100, -1, 0, 0, -278 );

setEffMoveKey( spep_6 + 40, shuchuse5, 0, -278 , 0 );
setEffMoveKey( spep_6 + 190, shuchuse5, 0, -278 , 0 );

setEffScaleKey( spep_6 + 40, shuchuse5, 1.23, 1.52 );
setEffScaleKey( spep_6 + 190, shuchuse5, 1.23, 1.52 );

setEffRotateKey( spep_6 + 40, shuchuse5, 0 );
setEffRotateKey( spep_6 + 190, shuchuse5, 0 );

setEffAlphaKey( spep_6 + 40, shuchuse5, 255 );
setEffAlphaKey( spep_6 + 190, shuchuse5, 255 );

--SE
playSe( spep_6, SE_10);--爆発
playSe(  spep_6+112, SE_09);


-- ダメージ表示
dealDamage(spep_6+80);

entryFade( spep_6+180, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_6+190);

end
