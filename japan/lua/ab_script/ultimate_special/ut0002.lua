--ベジータさんのアクティブさん
--sp_effect_a1_00143

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

--味方
SP_01=	152823	;--	正面構え
SP_02=	152824	;--	横向き構え〜発射・手前
SP_03=	152825	;--	横向き構え〜発射・奥
SP_04=	152826	;--	爆発〜正面ドヤ

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI(0, 0);

changeAnime( 0, 0, 1);                       -- 立ち
changeAnime( 0, 1, 101);                       -- 立ち
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

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
setMoveKey(   0,   1,    -5000,  -5000,  0);
setMoveKey(   1,   1,    -5000,  -5000,  0);
setMoveKey(   2,   1,    -5000,  -5000,  0);
setMoveKey(   3,   1,    -5000,  -5000,  0);
setMoveKey(   4,   1,    -5000,  -5000,  0);
setMoveKey(   5,   1,    -5000,  -5000,  0);
setMoveKey(   6,   1,    -5000,  -5000,  0);
setScaleKey(   1,   1, 0.39, 0.39);
setScaleKey(   2,   1, 0.39, 0.39);
setScaleKey(   3,   1, 0.39, 0.39);
setScaleKey(   4,   1, 0.39, 0.39);
setScaleKey(   5,   1, 0.39, 0.39);
setScaleKey(   6,   1, 0.39, 0.39);


kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 正面構え
------------------------------------------------------
spep_0=0;

--エフェクト

tame = entryEffect( spep_0,   SP_01,   0x80,  -1,  0,  0,  0);

setEffMoveKey( spep_0,  tame,  0,  0,  0);
setEffMoveKey( spep_0+178,  tame,  0,  0,  0);
setEffScaleKey( spep_0,  tame,  1.0,  1.0);
setEffScaleKey( spep_0+178,  tame,  1.0,  1.0);
setEffRotateKey(  spep_0,  tame,  0);
setEffRotateKey(  spep_0+178,  tame,  0);
setEffAlphaKey( spep_0,  tame,  255);
setEffAlphaKey( spep_0+177,  tame,  255);
setEffAlphaKey( spep_0+178,  tame,  0);

--集中線
shuchusen1 = entryEffectLife( spep_0 + 0,  906, 177, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 177, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchusen1, 1.13, 1.87 );
setEffScaleKey( spep_0 + 177, shuchusen1, 1.13, 1.87 );

setEffRotateKey( spep_0 + 0, shuchusen1, 180 );
setEffRotateKey( spep_0 + 177, shuchusen1, 180 );


setEffAlphaKey( spep_0 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 177, shuchusen1, 255 );

--SE多重再生のバッファフレーム
SE_TEMP = 30

--ボイス
--本当の戦いはこれからだ
playVoice(spep_0+16,100);
setVoiceVolume(spep_0+16,100,500);
--playSe(spep_0+SE_TEMP,1081);
--setSeVolume(spep_0+SE_TEMP,1081,500);

--今のオレは誰にも止められんぞー
playVoice(spep_0+158,101);
setVoiceVolume(spep_0+158,101,500);
--playSe(spep_0+158,1082);
--setSeVolume(spep_0+158,1082,500);

--最初のSE単独再生
SE1=playSe(spep_0,1044);--気溜め
setSeVolume(spep_0,1044,80);

--ボイスの1F後から再度再生
--SE1=playSe(spep_0+SE_TEMP+1,1044);--気溜め
--setSeVolume(spep_0+SE_TEMP+1,1044,80);

-- ** エフェクト等 ** --
entryFade(spep_0, 0, 0, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
--entryFade(spep_0+172, 4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_1=spep_0+177;

------------------------------------------------------
-- 正面構え横向き構え
------------------------------------------------------
--エフェクト(前)
beam_f = entryEffect( spep_1,   SP_02,   0x100,  -1,  0,  0,  0);

setEffMoveKey( spep_1,  beam_f,  0,  0,  0);
setEffMoveKey( spep_1+350,  beam_f,  0,  0,  0);
setEffScaleKey( spep_1,  beam_f,  1.0,  1.0);
setEffScaleKey( spep_1+350,  beam_f,  1.0,  1.0);
setEffRotateKey(  spep_1,  beam_f,  0);
setEffRotateKey(  spep_1+350,  beam_f,  0);
setEffAlphaKey( spep_1,  beam_f,  255);
setEffAlphaKey( spep_1+350,  beam_f,  255);


--エフェクト(後)
beam_b = entryEffect( spep_1,   SP_03,   0x80,  -1,  0,  0,  0);

setEffMoveKey( spep_1,  beam_b,  0,  0,  0);
setEffMoveKey( spep_1+350,  beam_b,  0,  0,  0);
setEffScaleKey( spep_1,  beam_b,  1.0,  1.0);
setEffScaleKey( spep_1+350,  beam_b,  1.0,  1.0);
setEffRotateKey(  spep_1,  beam_b,  0);
setEffRotateKey(  spep_1+350,  beam_b,  0);
setEffAlphaKey( spep_1,  beam_b,  255);
setEffAlphaKey( spep_1+350,  beam_b,  255);

--集中線
shuchusen2 = entryEffectLife( spep_1 + 0,  906, 238, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_1 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_1 + 238, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen2, 1.13, 1.87 );
setEffScaleKey( spep_1 + 238, shuchusen2, 1.13, 1.87 );

setEffRotateKey( spep_1 + 0, shuchusen2, 180 );
setEffRotateKey( spep_1 + 238, shuchusen2, 180 );

setEffAlphaKey( spep_1 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_1 + 26, shuchusen2, 255 );
setEffAlphaKey( spep_1 + 28, shuchusen2, 223 );
setEffAlphaKey( spep_1 + 30, shuchusen2, 191 );
setEffAlphaKey( spep_1 + 32, shuchusen2, 159 );
setEffAlphaKey( spep_1 + 34, shuchusen2, 128 );
setEffAlphaKey( spep_1 + 36, shuchusen2, 96 );
--setEffAlphaKey( spep_1 + 38, shuchusen2, 64 );
setEffAlphaKey( spep_1 + 38, shuchusen2, 32 );
setEffAlphaKey( spep_1 + 40, shuchusen2, 0 );
setEffAlphaKey( spep_1 + 129, shuchusen2, 0 );
setEffAlphaKey( spep_1 + 131, shuchusen2, 64 );
setEffAlphaKey( spep_1 + 133, shuchusen2, 128 );
setEffAlphaKey( spep_1 + 135, shuchusen2, 191 );
setEffAlphaKey( spep_1 + 137, shuchusen2, 255 );
setEffAlphaKey( spep_1 + 238, shuchusen2, 255 );

--文字エントリー
ctzuo = entryEffectLife( spep_1-3 -180 + 422,  10012, 44, 0x100, -1, 0, -139.7, 243.8 );--ズオッ

setEffMoveKey( spep_1-3 -180 + 422, ctzuo, -139.7, 243.8 , 0 );
setEffMoveKey( spep_1-3 -180 + 424, ctzuo, -135.5, 317.5 , 0 );
setEffMoveKey( spep_1-3 -180 + 426, ctzuo, -148.9, 364.3 , 0 );
setEffMoveKey( spep_1-3 -180 + 428, ctzuo, -131.5, 387 , 0 );
setEffMoveKey( spep_1-3 -180 + 430, ctzuo, -148.9, 364.2 , 0 );
setEffMoveKey( spep_1-3 -180 + 432, ctzuo, -131.5, 386.9 , 0 );
setEffMoveKey( spep_1-3 -180 + 434, ctzuo, -148.8, 364.3 , 0 );
setEffMoveKey( spep_1-3 -180 + 436, ctzuo, -131.2, 386.8 , 0 );
setEffMoveKey( spep_1-3 -180 + 438, ctzuo, -148.7, 364.2 , 0 );
setEffMoveKey( spep_1-3 -180 + 440, ctzuo, -131.2, 386.7 , 0 );
setEffMoveKey( spep_1-3 -180 + 442, ctzuo, -148.7, 364.1 , 0 );
setEffMoveKey( spep_1-3 -180 + 444, ctzuo, -131.1, 386.7 , 0 );
setEffMoveKey( spep_1-3 -180 + 446, ctzuo, -148.6, 364 , 0 );
setEffMoveKey( spep_1-3 -180 + 448, ctzuo, -130.9, 386.5 , 0 );
setEffMoveKey( spep_1-3 -180 + 450, ctzuo, -148.6, 364 , 0 );
setEffMoveKey( spep_1-3 -180 + 452, ctzuo, -130.8, 386.4 , 0 );
setEffMoveKey( spep_1-3 -180 + 454, ctzuo, -148.6, 364 , 0 );
setEffMoveKey( spep_1-3 -180 + 456, ctzuo, -130.7, 386.4 , 0 );
setEffMoveKey( spep_1-3 -180 + 458, ctzuo, -148.5, 363.9 , 0 );
setEffMoveKey( spep_1-3 -180 + 460, ctzuo, -130.6, 386.2 , 0 );
setEffMoveKey( spep_1-3 -180 + 462, ctzuo, -148.4, 363.9 , 0 );
setEffMoveKey( spep_1-3 -180 + 464, ctzuo, -101.1, 411.4 , 0 );
setEffMoveKey( spep_1-3 -180 + 466, ctzuo, -109.3, 393.4 , 0 );
--setEffMoveKey( spep_1-3 -180 + 468, ctzuo, -89, 407.2 , 0 );

setEffScaleKey( spep_1-3 -180 + 422, ctzuo, 0.34, 0.34 );
setEffScaleKey( spep_1-3 -180 + 424, ctzuo, 1.54, 1.54 );
setEffScaleKey( spep_1-3 -180 + 426, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_1-3 -180 + 462, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_1-3 -180 + 464, ctzuo, 4.09, 4.09 );
setEffScaleKey( spep_1-3 -180 + 466, ctzuo, 5.46, 5.46 );
--setEffScaleKey( spep_1-3 -180 + 468, ctzuo, 6.82, 6.82 );

setEffRotateKey( spep_1-3 -180 + 422, ctzuo, -16.1 );
setEffRotateKey( spep_1-3 -180 + 424, ctzuo, -13.4 );
setEffRotateKey( spep_1-3 -180 + 426, ctzuo, -10.8 );
setEffRotateKey( spep_1-3 -180 + 428, ctzuo, -10.7 );
setEffRotateKey( spep_1-3 -180 + 430, ctzuo, -10.6 );
setEffRotateKey( spep_1-3 -180 + 432, ctzuo, -10.5 );
setEffRotateKey( spep_1-3 -180 + 434, ctzuo, -10.4 );
setEffRotateKey( spep_1-3 -180 + 436, ctzuo, -10.3 );
setEffRotateKey( spep_1-3 -180 + 438, ctzuo, -10.3 );
setEffRotateKey( spep_1-3 -180 + 440, ctzuo, -10.2 );
setEffRotateKey( spep_1-3 -180 + 442, ctzuo, -10.1 );
setEffRotateKey( spep_1-3 -180 + 444, ctzuo, -10 );
setEffRotateKey( spep_1-3 -180 + 446, ctzuo, -9.9 );
setEffRotateKey( spep_1-3 -180 + 448, ctzuo, -9.8 );
setEffRotateKey( spep_1-3 -180 + 450, ctzuo, -9.8 );
setEffRotateKey( spep_1-3 -180 + 452, ctzuo, -9.7 );
setEffRotateKey( spep_1-3 -180 + 454, ctzuo, -9.6 );
setEffRotateKey( spep_1-3 -180 + 456, ctzuo, -9.5 );
setEffRotateKey( spep_1-3 -180 + 458, ctzuo, -9.4 );
setEffRotateKey( spep_1-3 -180 + 460, ctzuo, -9.3 );
setEffRotateKey( spep_1-3 -180 + 462, ctzuo, -9.3 );
setEffRotateKey( spep_1-3 -180 + 464, ctzuo, -7.2 );
setEffRotateKey( spep_1-3 -180 + 466, ctzuo, -5.2 );
--setEffRotateKey( spep_1-3 -180 + 468, ctzuo, -3.1 );

setEffAlphaKey( spep_1-3 -180 + 422, ctzuo, 255 );
setEffAlphaKey( spep_1-3 -180 + 460, ctzuo, 255 );
setEffAlphaKey( spep_1-3 -180 + 462, ctzuo, 170 );
setEffAlphaKey( spep_1-3 -180 + 464, ctzuo, 85 );
setEffAlphaKey( spep_1-3 -180 + 466, ctzuo, 0 );

--文字エントリー
ctzudodo = entryEffectLife( spep_1 -183 + 470,  10014, 58, 0x100, -1, 0, -104.6, 369.9 );--ズドドドッ

setEffMoveKey( spep_1 -183 + 470, ctzudodo, -104.6, 369.9 , 0 );
setEffMoveKey( spep_1 -183 + 472, ctzudodo, -94.5, 383.6 , 0 );
setEffMoveKey( spep_1 -183 + 474, ctzudodo, -98.4, 367.9 , 0 );
setEffMoveKey( spep_1 -183 + 476, ctzudodo, -95.3, 366.8 , 0 );
setEffMoveKey( spep_1 -183 + 478, ctzudodo, -83.6, 391.3 , 0 );
setEffMoveKey( spep_1 -183 + 480, ctzudodo, -95.2, 366.8 , 0 );
setEffMoveKey( spep_1 -183 + 482, ctzudodo, -83.3, 391.5 , 0 );
setEffMoveKey( spep_1 -183 + 484, ctzudodo, -95, 366.7 , 0 );
setEffMoveKey( spep_1 -183 + 486, ctzudodo, -83.1, 391.7 , 0 );
setEffMoveKey( spep_1 -183 + 488, ctzudodo, -94.8, 366.7 , 0 );
setEffMoveKey( spep_1 -183 + 490, ctzudodo, -82.8, 391.9 , 0 );
setEffMoveKey( spep_1 -183 + 492, ctzudodo, -94.7, 366.6 , 0 );
setEffMoveKey( spep_1 -183 + 494, ctzudodo, -82.5, 392.1 , 0 );
setEffMoveKey( spep_1 -183 + 496, ctzudodo, -94.5, 366.6 , 0 );
setEffMoveKey( spep_1 -183 + 498, ctzudodo, -82.2, 392.3 , 0 );
setEffMoveKey( spep_1 -183 + 500, ctzudodo, -94.4, 366.5 , 0 );
setEffMoveKey( spep_1 -183 + 502, ctzudodo, -81.9, 392.5 , 0 );
setEffMoveKey( spep_1 -183 + 504, ctzudodo, -94.2, 366.5 , 0 );
setEffMoveKey( spep_1 -183 + 506, ctzudodo, -81.7, 392.6 , 0 );
setEffMoveKey( spep_1 -183 + 508, ctzudodo, -94, 366.4 , 0 );
setEffMoveKey( spep_1 -183 + 510, ctzudodo, -81.4, 392.8 , 0 );
setEffMoveKey( spep_1 -183 + 512, ctzudodo, -93.9, 366.3 , 0 );
setEffMoveKey( spep_1 -183 + 514, ctzudodo, -81.1, 393 , 0 );
setEffMoveKey( spep_1 -183 + 516, ctzudodo, -93.7, 366.3 , 0 );
setEffMoveKey( spep_1 -183 + 518, ctzudodo, -80.8, 393.2 , 0 );
setEffMoveKey( spep_1 -183 + 520, ctzudodo, -93.6, 366.2 , 0 );
setEffMoveKey( spep_1 -183 + 522, ctzudodo, -80.5, 393.4 , 0 );
setEffMoveKey( spep_1 -183 + 524, ctzudodo, -93.4, 366.2 , 0 );
setEffMoveKey( spep_1 -183 + 526, ctzudodo, -80.3, 393.6 , 0 );
setEffMoveKey( spep_1 -183 + 528, ctzudodo, -80.1, 393.7 , 0 );

setEffScaleKey( spep_1 -183 + 470, ctzudodo, 0.98, 0.98 );
setEffScaleKey( spep_1 -183 + 472, ctzudodo, 1.46, 1.46 );
setEffScaleKey( spep_1 -183 + 474, ctzudodo, 1.94, 1.94 );
setEffScaleKey( spep_1 -183 + 476, ctzudodo, 2.42, 2.42 );
setEffScaleKey( spep_1 -183 + 478, ctzudodo, 2.44, 2.44 );
setEffScaleKey( spep_1 -183 + 480, ctzudodo, 2.45, 2.45 );
setEffScaleKey( spep_1 -183 + 482, ctzudodo, 2.46, 2.46 );
setEffScaleKey( spep_1 -183 + 484, ctzudodo, 2.47, 2.47 );
setEffScaleKey( spep_1 -183 + 486, ctzudodo, 2.49, 2.49 );
setEffScaleKey( spep_1 -183 + 488, ctzudodo, 2.5, 2.5 );
setEffScaleKey( spep_1 -183 + 490, ctzudodo, 2.51, 2.51 );
setEffScaleKey( spep_1 -183 + 492, ctzudodo, 2.52, 2.52 );
setEffScaleKey( spep_1 -183 + 494, ctzudodo, 2.54, 2.54 );
setEffScaleKey( spep_1 -183 + 496, ctzudodo, 2.55, 2.55 );
setEffScaleKey( spep_1 -183 + 498, ctzudodo, 2.56, 2.56 );
setEffScaleKey( spep_1 -183 + 500, ctzudodo, 2.57, 2.57 );
setEffScaleKey( spep_1 -183 + 502, ctzudodo, 2.59, 2.59 );
setEffScaleKey( spep_1 -183 + 504, ctzudodo, 2.6, 2.6 );
setEffScaleKey( spep_1 -183 + 506, ctzudodo, 2.61, 2.61 );
setEffScaleKey( spep_1 -183 + 508, ctzudodo, 2.62, 2.62 );
setEffScaleKey( spep_1 -183 + 510, ctzudodo, 2.64, 2.64 );
setEffScaleKey( spep_1 -183 + 512, ctzudodo, 2.65, 2.65 );
setEffScaleKey( spep_1 -183 + 514, ctzudodo, 2.66, 2.66 );
setEffScaleKey( spep_1 -183 + 516, ctzudodo, 2.67, 2.67 );
setEffScaleKey( spep_1 -183 + 518, ctzudodo, 2.69, 2.69 );
setEffScaleKey( spep_1 -183 + 520, ctzudodo, 2.7, 2.7 );
setEffScaleKey( spep_1 -183 + 522, ctzudodo, 2.71, 2.71 );
setEffScaleKey( spep_1 -183 + 524, ctzudodo, 2.72, 2.72 );
setEffScaleKey( spep_1 -183 + 526, ctzudodo, 2.73, 2.73 );
setEffScaleKey( spep_1 -183 + 528, ctzudodo, 2.75, 2.75 );

setEffRotateKey( spep_1 -183 + 470, ctzudodo, 14.1 );
setEffRotateKey( spep_1 -183 + 528, ctzudodo, 14.1 );

setEffAlphaKey( spep_1 -183 + 470, ctzudodo, 255 );
setEffAlphaKey( spep_1 -183 + 528, ctzudodo, 255 );

--敵の動き
setDisp(spep_1 -3  -180 + 470,1,1);
setDisp(spep_1 -180 + 528,1,0);


changeAnime(spep_1 -3  -180 + 470,1,100);

setMoveKey( spep_1 -3   -180 + 470, 1, 126.5, 183.9 , 0 );
setMoveKey( spep_1 -3 -180 + 472, 1, 126.1, 183.9 , 0 );
setMoveKey( spep_1 -3 -180 + 474, 1, 125.7, 183.9 , 0 );
setMoveKey( spep_1 -3 -180 + 476, 1, 125.3, 183.9 , 0 );
setMoveKey( spep_1 -3 -180 + 478, 1, 124.9, 183.9 , 0 );
setMoveKey( spep_1 -3 -180 + 480, 1, 125.1, 183.8 , 0 );
setMoveKey( spep_1 -3 -180 + 482, 1, 125.3, 183.8 , 0 );
setMoveKey( spep_1 -3 -180 + 484, 1, 125.4, 183.8 , 0 );
setMoveKey( spep_1 -3 -180 + 486, 1, 125.6, 183.8 , 0 );

setMoveKey( spep_1 -3 -180 + 488, 1, 125.8, 183.7 , 0 );
setMoveKey( spep_1 -3 -180 + 490, 1, 126, 183.7 , 0 );
setMoveKey( spep_1 -3 -180 + 492, 1, 126.1, 183.7 , 0 );
setMoveKey( spep_1 -3 -180 + 494, 1, 126.3, 183.7 , 0 );
setMoveKey( spep_1 -3 -180 + 496, 1, 126.5, 183.6 , 0 );
setMoveKey( spep_1 -3 -180 + 498, 1, 126.7, 183.6 , 0 );
setMoveKey( spep_1 -3 -180 + 500, 1, 126.9, 183.6 , 0 );

setScaleKey( spep_1 -3   -180 + 470, 1, 0.05, 0.05 );
--setScaleKey( spep_1 -3 -180 + 472, 1, 0.1, 0.1 );
setScaleKey( spep_1 -3 -180 + 474, 1, 0.14, 0.14 );
setScaleKey( spep_1 -3 -180 + 476, 1, 0.19, 0.19 );
setScaleKey( spep_1 -3 -180 + 478, 1, 0.23, 0.23 );
setScaleKey( spep_1 -3 -180 + 480, 1, 0.24, 0.24 );
setScaleKey( spep_1 -3 -180 + 482, 1, 0.26, 0.26 );
setScaleKey( spep_1 -3 -180 + 484, 1, 0.27, 0.27 );
setScaleKey( spep_1 -3 -180 + 486, 1, 0.29, 0.29 );
setScaleKey( spep_1 -3 -180 + 488, 1, 0.3, 0.3 );
setScaleKey( spep_1 -3 -180 + 490, 1, 0.32, 0.32 );
setScaleKey( spep_1 -3 -180 + 492, 1, 0.33, 0.33 );
setScaleKey( spep_1 -3 -180 + 494, 1, 0.35, 0.35 );
setScaleKey( spep_1 -3 -180 + 496, 1, 0.36, 0.36 );
setScaleKey( spep_1 -3 -180 + 498, 1, 0.38, 0.38 );
setScaleKey( spep_1 -3 -180 + 500, 1, 0.39, 0.39 );

setRotateKey( spep_1 -3   -180 + 470, 1, 0 );
setRotateKey( spep_1 -3   -180 + 500, 1, 0 );

--ファイナルシャイン
playVoice(spep_1+142,102);
setVoiceVolume(spep_1+142,102,500);
--playSe(spep_1+142,1083);
--setSeVolume(spep_1+142,1083,500);

--アターック
playVoice(spep_1+239,103);
setVoiceVolume(spep_1+239,103,500);
--playSe(spep_1+239,1084);
--setSeVolume(spep_1+239,1084,500);

--se
SE2=playSe(spep_1+130,55);--気溜め
setSeVolume(spep_1+130,55,100);
setSeVolume(spep_1+150,55,130);
setSeVolume(spep_1+170,55,170);
setSeVolume(spep_1+190,55,210);
setSeVolume(spep_1+210,55,250);

stopSe(spep_1+128,SE1,0);
stopSe(spep_1+237,SE2,0);

playSe(spep_1+240,1022);
setSeVolume(spep_1+240,1022,180);

SE3=playSe(spep_1+283,1021);
setSeVolume(spep_1+283,1021,180);
--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

SP_dodge = spep_1 -3 -180 + 500 ; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);
stopSe(SP_dodge-13,SE3,0);
pauseAll( SP_dodge, 67);

--キャラクターの固定
setMoveKey(SP_dodge, 1,126.9, 183.6 , 0 );
setScaleKey(SP_dodge , 1, 0.39, 0.39);
setRotateKey(SP_dodge,   1, 0 );

--キャラクターの固定
setMoveKey(SP_dodge+8, 1,126.9, 183.6 , 0 );
setScaleKey(SP_dodge+8 , 1, 0.39, 0.39);
setRotateKey(SP_dodge+8,   1, 0 );

--キャラクターの固定
setMoveKey(SP_dodge+9, 1,126.9, 183.6 , 0 );
setScaleKey(SP_dodge+9 , 1, 0.39, 0.39);
setRotateKey(SP_dodge+9,   1, 0 );

--キャラクターの固定
setMoveKey(SP_dodge+10, 1,126.9, 183.6 , 0 );
setScaleKey(SP_dodge+10 , 1, 0.39, 0.39);
setRotateKey(SP_dodge+10,   1, 0 );

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
setMoveKey( spep_1 -3 -180 + 502, 1, 127, 183.5 , 0 );
setMoveKey( spep_1 -3 -180 + 504, 1, 127.2, 183.5 , 0 );
setMoveKey( spep_1 -3 -180 + 506, 1, 127.4, 183.5 , 0 );
setMoveKey( spep_1 -3 -180 + 508, 1, 127.6, 183.5 , 0 );
setMoveKey( spep_1 -3 -180 + 510, 1, 127.5, 183.5 , 0 );
setMoveKey( spep_1 -3 -180 + 512, 1, 127.4, 183.5 , 0 );
setMoveKey( spep_1 -3 -180 + 514, 1, 127.3, 183.6 , 0 );
setMoveKey( spep_1 -3 -180 + 516, 1, 127.2, 183.6 , 0 );
setMoveKey( spep_1 -3 -180 + 518, 1, 127.1, 183.6 , 0 );
setMoveKey( spep_1 -3 -180 + 520, 1, 127, 183.7 , 0 );
setMoveKey( spep_1 -3 -180 + 522, 1, 126.9, 183.7 , 0 );
setMoveKey( spep_1 -3 -180 + 524, 1, 126.8, 183.7 , 0 );
setMoveKey( spep_1 -3 -180 + 526, 1, 126.7, 183.8 , 0 );
setMoveKey( spep_1  -180 + 528, 1, 126.6, 183.8 , 0 );


setScaleKey( spep_1 -3 -180 + 502, 1, 0.41, 0.41 );
setScaleKey( spep_1 -3 -180 + 504, 1, 0.42, 0.42 );
setScaleKey( spep_1 -3 -180 + 506, 1, 0.44, 0.44 );
setScaleKey( spep_1 -3 -180 + 508, 1, 0.45, 0.45 );
setScaleKey( spep_1 -3 -180 + 510, 1, 0.46, 0.46 );
setScaleKey( spep_1 -3 -180 + 512, 1, 0.46, 0.46 );
setScaleKey( spep_1 -3 -180 + 514, 1, 0.47, 0.47 );
setScaleKey( spep_1 -3 -180 + 516, 1, 0.48, 0.48 );
setScaleKey( spep_1 -3 -180 + 518, 1, 0.49, 0.49 );
setScaleKey( spep_1 -3 -180 + 520, 1, 0.49, 0.49 );
setScaleKey( spep_1 -3 -180 + 522, 1, 0.5, 0.5 );
setScaleKey( spep_1 -3 -180 + 524, 1, 0.51, 0.51 );
setScaleKey( spep_1 -3 -180 + 526, 1, 0.51, 0.51 );
setScaleKey( spep_1  -180 + 528, 1, 0.52, 0.52 );

setRotateKey( spep_1  -180 + 528, 1, 0 );

--白フェード
entryFade(spep_1+124, 6, 0, 5,fcolor_r,fcolor_g,fcolor_b,230);     -- white fade
entryFade(spep_1+236, 0, 2, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_1+340, 4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_2=spep_1+350;
--------------------------------------
--ギャン
--------------------------------------

--エフェクトの再生
gyan = entryEffectLife(  spep_2,  190010,  60,  0x100,  -1,  0,  0,  0);  --ギャン
setEffScaleKey(  spep_2,  gyan,  1.0,  1.0);
setEffScaleKey(  spep_2+60,  gyan,  1.0,  1.0);
setEffAlphaKey(  spep_2,  gyan,  255);
setEffAlphaKey(  spep_2+60,  gyan,  255);


-- 書き文字エントリー --
ctgayn = entryEffectLife( spep_2, 10006, 60, 0x100, -1, 0, 0, 400);    -- ギャン
setEffScaleKey( spep_2, ctgayn, 3.0, 3.0);
setEffScaleKey( spep_2+60, ctgayn, 4.0, 4.0);
setEffAlphaKey( spep_2, ctgayn, 255);
setEffAlphaKey( spep_2+60, ctgayn, 0);
setEffShake( spep_2, ctgayn, 60, 10);

playSe(spep_2,SE_09);
setSeVolume(spep_2,SE_09,250);

entryFade( spep_2+48, 2,  10, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_3 = spep_2+60;

------------------------------------------------------
-- 爆発〜正面ドヤ
------------------------------------------------------

--エフェクト
explosion = entryEffect( spep_3,   SP_04,   0x100,  -1,  0,  0,  0);

setEffMoveKey( spep_3,  explosion,  0,  0,  0);
setEffMoveKey( spep_3+240,  explosion,  0,  0,  0);
setEffScaleKey( spep_3,  explosion,  1.0,  1.0);
setEffScaleKey( spep_3+240,  explosion,  1.0,  1.0);
setEffRotateKey(  spep_3,  explosion,  0);
setEffRotateKey(  spep_3+240,  explosion,  0);
setEffAlphaKey( spep_3,  explosion,  255);
setEffAlphaKey( spep_3+240,  explosion,  255);

--集中線
shuchusen3 = entryEffectLife( spep_3 + 0,  906, 116, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_3 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_3 + 116, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen3, 1.13, 1.87 );
setEffScaleKey( spep_3 + 116, shuchusen3, 1.13, 1.87 );

setEffRotateKey( spep_3 + 0, shuchusen3, 180 );
setEffRotateKey( spep_3 + 116, shuchusen3, 180 );


setEffAlphaKey( spep_3 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_3 + 116, shuchusen3, 255 );


--SE
playSe(spep_3+8,SE_10);
setSeVolume(spep_3+8,SE_10,250);

playSe(spep_3+95,SE_09);
setSeVolume(spep_3+95,SE_09,0);
setSeVolume(spep_3+115,SE_09,0);
setSeVolume(spep_3+116,SE_09,100);


-- ダメージ表示
dealDamage(spep_3+8);
entryFade( spep_3+230, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_3+236);

else end