--ブロリー&チライ&レモ_サプライズアタック

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
SE_08 = 1042; --カットイン
SE_09 = 1023; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音
SE_12 = 09;

--味方側
SP_01 = 154943; --冒頭〜レモが敵に殴りかろうとするシーン
SP_02 = 154944; --冒頭〜レモが敵に殴りかろうとするシーン
SP_03 = 154945; --チライが銃を撃つ〜フィニッシュ
SP_04 = 154946; --チライが銃を撃つ〜フィニッシュ

--敵側
SP_01x = 154947; --冒頭〜レモが敵に殴りかろうとするシーン
SP_02x = 154948; --冒頭〜レモが敵に殴りかろうとするシーン
SP_03x = 154949; --チライが銃を撃つ〜フィニッシュ
SP_04x = 154950; --チライが銃を撃つ〜フィニッシュ

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0, -5000,   0);
setMoveKey(   1,   0,    0, -5000,   0);
setMoveKey(   2,   0,    0, -5000,   0);
setMoveKey(   3,   0,    0, -5000,   0);
setMoveKey(   4,   0,    0, -5000,   0);
setMoveKey(   5,   0,    0, -5000,   0);
setMoveKey(   6,   0,    0, -5000,   0);
setScaleKey(  0,   0,  1.6, 1.6 );
setScaleKey(  1,   0,  1.6, 1.6 );
setScaleKey(  2,   0,  1.6, 1.6 );
setScaleKey(  3,   0,  1.6, 1.6 );
setScaleKey(  4,   0,  1.6, 1.6 );
setScaleKey(  5,   0,  1.6, 1.6 );
setScaleKey(  6,   0,  1.6, 1.6 );
setRotateKey( 0,   0,  0 );
setRotateKey( 1,   0,  0 );
setRotateKey( 2,   0,  0 );
setRotateKey( 3,   0,  0 );
setRotateKey( 4,   0,  0 );
setRotateKey( 5,   0,  0 );
setRotateKey( 6,   0,  0 );

setMoveKey(   0,   1,    0, -5000,   0);
setMoveKey(   1,   1,    0, -5000,   0);
setMoveKey(   2,   1,    0, -5000,   0);
setMoveKey(   3,   1,    0, -5000,   0);
setMoveKey(   4,   1,    0, -5000,   0);
setMoveKey(   5,   1,    0, -5000,   0);
setMoveKey(   6,   1,    0, -5000,   0);
setScaleKey(  0,   1,  1.6, 1.6 );
setScaleKey(  1,   1,  1.6, 1.6 );
setScaleKey(  2,   1,  1.6, 1.6 );
setScaleKey(  3,   1,  1.6, 1.6 );
setScaleKey(  4,   1,  1.6, 1.6 );
setScaleKey(  5,   1,  1.6, 1.6 );
setScaleKey(  6,   1,  1.6, 1.6 );
setRotateKey( 0,   1,  0 );
setRotateKey( 1,   1,  0 );
setRotateKey( 2,   1,  0 );
setRotateKey( 3,   1,  0 );
setRotateKey( 4,   1,  0 );
setRotateKey( 5,   1,  0 );
setRotateKey( 6,   1,  0 );

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 冒頭〜レモが敵に殴りかろうとするシーン(634F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --冒頭〜レモが敵に殴りかろうとするシーン(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 634, start_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 634, start_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, start_f, 0 );
setEffRotateKey( spep_0 + 634, start_f, 0 );
setEffAlphaKey( spep_0 + 0, start_f, 255 );
setEffAlphaKey( spep_0 + 634, start_f, 255 );

start_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 );  --冒頭〜レモが敵に殴りかろうとするシーン(ef_002)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 634, start_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, start_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 634, start_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, start_b, 0 );
setEffRotateKey( spep_0 + 634, start_b, 0 );
setEffAlphaKey( spep_0 + 0, start_b, 255 );
setEffAlphaKey( spep_0 + 634, start_b, 255 );

spep_x = spep_0 + 0;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, -9.9 +35, 515.5 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );

setEffMoveKey( spep_x + 16, ctgogo, -9.9 +35, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -9.9 +35, 515.5 , 0 );

setEffScaleKey( spep_x + 16, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_x + 76, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_x + 78, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_x + 80, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_x + 82, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_x + 84, ctgogo, 1.69, 1.69 );

setEffRotateKey( spep_x + 16, ctgogo, 0 );
setEffRotateKey( spep_x + 84, ctgogo, 0 );

setEffAlphaKey( spep_x + 16, ctgogo, 255 );
setEffAlphaKey( spep_x + 84, ctgogo, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 236, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--入り
playSe( spep_0 + 0, 8 ); 

--ブロリー突進
playSe( spep_0 + 85, 44 ); 
playSe( spep_0 + 85, 1182 ); 

--チライ移動
SE0 = playSe( spep_0 + 103, 1111 ); 
setSeVolume( spep_0 + 103, 1111, 0 );
setSeVolume( spep_0 + 119, 1111, 50 );
setSeVolume( spep_0 + 120, 1111, 79 );
setSeVolume( spep_0 + 129, 1111, 0 );
stopSe( spep_0 + 129, SE0, 0 );

playSe( spep_0 + 117, 1003 ); 
setSeVolume( spep_0 + 117, 1003, 63 );
playSe( spep_0 + 120, 4 ); 
playSe( spep_0 + 123, 1106 ); 
setSeVolume( spep_0 + 123, 1106, 178 );
playSe( spep_0 + 129, 1111 ); 
setSeVolume( spep_0 + 129, 1111, 79 );
playSe( spep_0 + 130, 1107 ); 
setSeVolume( spep_0 + 130, 1107, 178 );

--レモ移動
SE1 = playSe( spep_0 + 150, 1111 ); 
setSeVolume( spep_0 + 150, 1111, 0 );
setSeVolume( spep_0 + 166, 1111, 30 );
setSeVolume( spep_0 + 167, 1111, 50 );
setSeVolume( spep_0 + 182, 1111, 0 );
stopSe( spep_0 + 182, SE1, 0 );

playSe( spep_0 + 170, 1106 ); 
setSeVolume( spep_0 + 170, 1106, 178 );

SE2 = playSe( spep_0 + 183, 1111 ); 
setSeVolume( spep_0 + 183, 1111, 40 );
stopSe( spep_0 + 197, SE2, 0 );

playSe( spep_0 + 185, 1107 ); 

SE3 = playSe( spep_0 + 197, 1111 ); 
setSeVolume( spep_0 + 197, 1111, 50 );
stopSe( spep_0 + 211, SE3, 0 );

playSe( spep_0 + 199, 1106 ); 
setSeVolume( spep_0 + 199, 1106, 178 );

SE4 = playSe( spep_0 + 210, 1111 ); 
setSeVolume( spep_0 + 210, 1111, 40 );
stopSe( spep_0 + 224, SE4, 0 );

playSe( spep_0 + 212, 1107 ); 
setSeVolume( spep_0 + 212, 1107, 178 );

--ゴゴゴ
playSe( spep_x + 16, 1018 ); 

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 236; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );

pauseAll( SP_dodge, 67 );

-- ** カットイン部分 ** --
speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350, 1000 );   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350, 1100 );   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

-- ** 白フェード ** --
entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );

endPhase( SP_dodge + 10 );

do return end
else end

------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------
-- ** 書き文字エントリー ** --
ctdon = entryEffectLife( spep_0 -3 + 370,  10019, 18, 0x100, -1, 0, -80, 229.8 );  --ドンッ
setEffMoveKey( spep_0 -3 + 370, ctdon, -80, 229.8 , 0 );
setEffMoveKey( spep_0 -3 + 372, ctdon, -118, 298.5 , 0 );
setEffMoveKey( spep_0 -3 + 374, ctdon, -112.6, 307.9 , 0 );
setEffMoveKey( spep_0 -3 + 376, ctdon, -109.1, 293 , 0 );
setEffMoveKey( spep_0 -3 + 378, ctdon, -118.3, 309.9 , 0 );
setEffMoveKey( spep_0 -3 + 380, ctdon, -110.6, 299.9 , 0 );
setEffMoveKey( spep_0 -3 + 382, ctdon, -121.9, 306.5 , 0 );
setEffMoveKey( spep_0 -3 + 384, ctdon, -118.7, 303.9 , 0 );
setEffMoveKey( spep_0 -3 + 386, ctdon, -128.2, 322.1 , 0 );
setEffMoveKey( spep_0 -3 + 388, ctdon, -167, 367 , 0 );

setEffScaleKey( spep_0 -3 + 370, ctdon, 1.15, 1.17 );
setEffScaleKey( spep_0 -3 + 372, ctdon, 2.48, 2.54 );
setEffScaleKey( spep_0 -3 + 374, ctdon, 2.48, 2.54 );
setEffScaleKey( spep_0 -3 + 376, ctdon, 2.48, 2.55 );
setEffScaleKey( spep_0 -3 + 378, ctdon, 2.49, 2.56 );
setEffScaleKey( spep_0 -3 + 380, ctdon, 2.5, 2.57 );
setEffScaleKey( spep_0 -3 + 382, ctdon, 2.53, 2.61 );
setEffScaleKey( spep_0 -3 + 384, ctdon, 2.59, 2.69 );
setEffScaleKey( spep_0 -3 + 386, ctdon, 2.7, 2.84 );
setEffScaleKey( spep_0 -3 + 388, ctdon, 3.21, 3.5 );

setEffRotateKey( spep_0 -3 + 370, ctdon, 0 );
setEffRotateKey( spep_0 -3 + 388, ctdon, 0 );

setEffAlphaKey( spep_0 -3 + 370, ctdon, 255 );
setEffAlphaKey( spep_0 -3 + 372, ctdon, 255 );
setEffAlphaKey( spep_0 -3 + 374, ctdon, 255 );
setEffAlphaKey( spep_0 -3 + 376, ctdon, 254 );
setEffAlphaKey( spep_0 -3 + 378, ctdon, 252 );
setEffAlphaKey( spep_0 -3 + 380, ctdon, 247 );
setEffAlphaKey( spep_0 -3 + 382, ctdon, 238 );
setEffAlphaKey( spep_0 -3 + 384, ctdon, 221 );
setEffAlphaKey( spep_0 -3 + 386, ctdon, 184 );
setEffAlphaKey( spep_0 -3 + 388, ctdon, 26 );

ctdogon = entryEffectLife( spep_0 -3 + 424,  10018, 40, 0x100, -1, 0, -11.2, 18.3 );  --ドゴン
setEffMoveKey( spep_0 -3 + 424, ctdogon, -11.2, 18.3 , 0 );
setEffMoveKey( spep_0 -3 + 426, ctdogon, -52.3, 199.1 , 0 );
setEffMoveKey( spep_0 -3 + 428, ctdogon, -34.3, 228.3 , 0 );
setEffMoveKey( spep_0 -3 + 430, ctdogon, -23.4, 216.9 , 0 );
setEffMoveKey( spep_0 -3 + 432, ctdogon, -41, 220.2 , 0 );
setEffMoveKey( spep_0 -3 + 434, ctdogon, -30.4, 229.8 , 0 );
setEffMoveKey( spep_0 -3 + 436, ctdogon, -33.1, 212.5 , 0 );
setEffMoveKey( spep_0 -3 + 438, ctdogon, -36.1, 234.9 , 0 );
setEffMoveKey( spep_0 -3 + 440, ctdogon, -31.1, 221.2 , 0 );
setEffMoveKey( spep_0 -3 + 442, ctdogon, -40.4, 231 , 0 );
setEffMoveKey( spep_0 -3 + 444, ctdogon, -35.6, 223.7 , 0 );
setEffMoveKey( spep_0 -3 + 446, ctdogon, -33.8, 236.9 , 0 );
setEffMoveKey( spep_0 -3 + 448, ctdogon, -37.7, 228.6 , 0 );
setEffMoveKey( spep_0 -3 + 450, ctdogon, -41.2, 245.8 , 0 );
setEffMoveKey( spep_0 -3 + 452, ctdogon, -40.1, 239.4 , 0 );
setEffMoveKey( spep_0 -3 + 454, ctdogon, -44.1, 251.5 , 0 );
setEffMoveKey( spep_0 -3 + 456, ctdogon, -39.3, 246.9 , 0 );
setEffMoveKey( spep_0 -3 + 458, ctdogon, -42.2, 259.5 , 0 );
setEffMoveKey( spep_0 -3 + 460, ctdogon, -40.1, 259.5 , 0 );
setEffMoveKey( spep_0 -3 + 462, ctdogon, -45.6, 266.4 , 0 );
setEffMoveKey( spep_0 -3 + 464, ctdogon, -46.8, 272.2 , 0 );

setEffScaleKey( spep_0 -3 + 424, ctdogon, 2.02, 2.04 );
setEffScaleKey( spep_0 -3 + 426, ctdogon, 3.55, 3.56 );
setEffScaleKey( spep_0 -3 + 428, ctdogon, 3.89, 3.91 );
setEffScaleKey( spep_0 -3 + 432, ctdogon, 3.89, 3.91 );
setEffScaleKey( spep_0 -3 + 434, ctdogon, 3.89, 3.92 );
setEffScaleKey( spep_0 -3 + 436, ctdogon, 3.9, 3.93 );
setEffScaleKey( spep_0 -3 + 438, ctdogon, 3.91, 3.94 );
setEffScaleKey( spep_0 -3 + 440, ctdogon, 3.93, 3.95 );
setEffScaleKey( spep_0 -3 + 442, ctdogon, 3.95, 3.97 );
setEffScaleKey( spep_0 -3 + 444, ctdogon, 3.97, 3.99 );
setEffScaleKey( spep_0 -3 + 446, ctdogon, 4, 4.02 );
setEffScaleKey( spep_0 -3 + 448, ctdogon, 4.03, 4.05 );
setEffScaleKey( spep_0 -3 + 450, ctdogon, 4.06, 4.08 );
setEffScaleKey( spep_0 -3 + 452, ctdogon, 4.09, 4.11 );
setEffScaleKey( spep_0 -3 + 454, ctdogon, 4.13, 4.15 );
setEffScaleKey( spep_0 -3 + 456, ctdogon, 4.18, 4.19 );
setEffScaleKey( spep_0 -3 + 458, ctdogon, 4.22, 4.24 );
setEffScaleKey( spep_0 -3 + 460, ctdogon, 4.27, 4.29 );
setEffScaleKey( spep_0 -3 + 462, ctdogon, 4.32, 4.34 );
setEffScaleKey( spep_0 -3 + 464, ctdogon, 4.38, 4.39 );

setEffRotateKey( spep_0 -3 + 424, ctdogon, -27 +10 );
setEffRotateKey( spep_0 -3 + 464, ctdogon, -27 +10 );

setEffAlphaKey( spep_0 -3 + 424, ctdogon, 255 );
setEffAlphaKey( spep_0 -3 + 430, ctdogon, 255 );
setEffAlphaKey( spep_0 -3 + 432, ctdogon, 254 );
setEffAlphaKey( spep_0 -3 + 434, ctdogon, 251 );
setEffAlphaKey( spep_0 -3 + 436, ctdogon, 247 );
setEffAlphaKey( spep_0 -3 + 438, ctdogon, 241 );
setEffAlphaKey( spep_0 -3 + 440, ctdogon, 233 );
setEffAlphaKey( spep_0 -3 + 442, ctdogon, 223 );
setEffAlphaKey( spep_0 -3 + 444, ctdogon, 212 );
setEffAlphaKey( spep_0 -3 + 446, ctdogon, 199 );
setEffAlphaKey( spep_0 -3 + 448, ctdogon, 184 );
setEffAlphaKey( spep_0 -3 + 450, ctdogon, 167 );
setEffAlphaKey( spep_0 -3 + 452, ctdogon, 148 );
setEffAlphaKey( spep_0 -3 + 454, ctdogon, 128 );
setEffAlphaKey( spep_0 -3 + 456, ctdogon, 106 );
setEffAlphaKey( spep_0 -3 + 458, ctdogon, 82 );
setEffAlphaKey( spep_0 -3 + 460, ctdogon, 56 );
setEffAlphaKey( spep_0 -3 + 462, ctdogon, 29 );
setEffAlphaKey( spep_0 -3 + 464, ctdogon, 0 );

ctexc = entryEffectLife( spep_0 -3 + 514,  10000, 18, 0x100, -1, 0, -127.6, 3.4 );  --！！
setEffShake( spep_0 -3 + 524, ctexc, 8, 30 );
setEffMoveKey( spep_0 -3 + 514, ctexc, -127.6, 3.4 , 0 );
setEffMoveKey( spep_0 -3 + 516, ctexc, -56.1, 89.9 , 0 );
setEffMoveKey( spep_0 -3 + 518, ctexc, -43.9, 134 , 0 );
setEffMoveKey( spep_0 -3 + 520, ctexc, -34.6, 118 , 0 );
setEffMoveKey( spep_0 -3 + 522, ctexc, -67.8, 73.6 , 0 );
setEffMoveKey( spep_0 -3 + 524, ctexc, -75.8, 53.2 , 0 );
setEffMoveKey( spep_0 -3 + 532, ctexc, -75.8, 53.2 , 0 );

setEffScaleKey( spep_0 -3 + 514, ctexc, 1.84, 1.85 );
setEffScaleKey( spep_0 -3 + 516, ctexc, 4.23, 3.83 );
setEffScaleKey( spep_0 -3 + 518, ctexc, 5.03, 4.49 );
setEffScaleKey( spep_0 -3 + 520, ctexc, 4.99, 4.45 );
setEffScaleKey( spep_0 -3 + 522, ctexc, 3.68, 3.22 );
setEffScaleKey( spep_0 -3 + 524, ctexc, 3.16, 2.73 );
setEffScaleKey( spep_0 -3 + 532, ctexc, 3.16, 2.73 );

setEffRotateKey( spep_0 -3 + 514, ctexc, 0 +10 );
setEffRotateKey( spep_0 -3 + 532, ctexc, 0 +10 );

setEffAlphaKey( spep_0 -3 + 514, ctexc, 255 );
setEffAlphaKey( spep_0 -3 + 532, ctexc, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_0 -3 + 312, 1, 1 );
setDisp( spep_0 -3 + 420, 1, 0 );
setDisp( spep_0 -3 + 472, 1, 1 );
setDisp( spep_0 + 640, 1, 0 );

changeAnime( spep_0 -3 + 312, 1, 102 );
changeAnime( spep_0 -3 + 360, 1, 107 );
changeAnime( spep_0 -3 + 468, 1, 118 );
changeAnime( spep_0 -3 + 514, 1, 117 );
changeAnime( spep_0 -3 + 602, 1, 111 );
changeAnime( spep_0 -3 + 603, 1, 111 );
changeAnime( spep_0 -3 + 604, 1, 111 );
changeAnime( spep_0 -3 + 605, 1, 111 );
changeAnime( spep_0 -3 + 606, 1, 111 );
changeAnime( spep_0 -3 + 607, 1, 111 );
changeAnime( spep_0 -3 + 608, 1, 111 );
changeAnime( spep_0 -3 + 609, 1, 111 );
changeAnime( spep_0 -3 + 610, 1, 111 );
changeAnime( spep_0 -3 + 611, 1, 111 );
changeAnime( spep_0 -3 + 612, 1, 111 );
changeAnime( spep_0 -3 + 613, 1, 111 );
changeAnime( spep_0 -3 + 614, 1, 111 );
changeAnime( spep_0 -3 + 615, 1, 111 );
changeAnime( spep_0 -3 + 616, 1, 111 );
changeAnime( spep_0 -3 + 617, 1, 111 );
changeAnime( spep_0 -3 + 618, 1, 111 );
changeAnime( spep_0 -3 + 619, 1, 111 );
changeAnime( spep_0 -3 + 620, 1, 111 );
changeAnime( spep_0 -3 + 621, 1, 111 );
changeAnime( spep_0 -3 + 622, 1, 111 );
changeAnime( spep_0 -3 + 623, 1, 111 );
changeAnime( spep_0 -3 + 624, 1, 111 );
changeAnime( spep_0 -3 + 625, 1, 111 );
changeAnime( spep_0 -3 + 626, 1, 111 );
changeAnime( spep_0 -3 + 627, 1, 111 );
changeAnime( spep_0 -3 + 628, 1, 111 );
changeAnime( spep_0 -3 + 629, 1, 111 );
changeAnime( spep_0 -3 + 630, 1, 111 );
changeAnime( spep_0 -3 + 631, 1, 111 );
changeAnime( spep_0 -3 + 632, 1, 111 );
changeAnime( spep_0 -3 + 633, 1, 111 );
changeAnime( spep_0 -3 + 634, 1, 111 );
changeAnime( spep_0 -3 + 635, 1, 111 );
changeAnime( spep_0 -3 + 636, 1, 111 );
changeAnime( spep_0 -3 + 637, 1, 111 );
changeAnime( spep_0 -3 + 638, 1, 111 );
changeAnime( spep_0 -3 + 639, 1, 111 );
changeAnime( spep_0 -3 + 640, 1, 111 );
changeAnime( spep_0 -3 + 641, 1, 100 );

setMoveKey( spep_0 -3 + 312, 1, 2063.3, -2278.4 , 0 );
setMoveKey( spep_0 -3 + 314, 1, 1329.1, -1465.4 , 0 );
setMoveKey( spep_0 -3 + 316, 1, 974.5, -1036.6 , 0 );
setMoveKey( spep_0 -3 + 318, 1, 771.5, -828.8 , 0 );
setMoveKey( spep_0 -3 + 320, 1, 654.2, -689.5 , 0 );
setMoveKey( spep_0 -3 + 322, 1, 546.1, -534.3 , 0 );
setMoveKey( spep_0 -3 + 324, 1, 481.3, -486.4 , 0 );
setMoveKey( spep_0 -3 + 326, 1, 405.4, -391.4 , 0 );
setMoveKey( spep_0 -3 + 328, 1, 386, -356 , 0 );
setMoveKey( spep_0 -3 + 330, 1, 386.4, -353.6 , 0 );
setMoveKey( spep_0 -3 + 332, 1, 323.7, -275.2 , 0 );
setMoveKey( spep_0 -3 + 334, 1, 309.1, -292.3 , 0 );
setMoveKey( spep_0 -3 + 336, 1, 317.2, -300.9 , 0 );
setMoveKey( spep_0 -3 + 338, 1, 292.6, -276.6 , 0 );
setMoveKey( spep_0 -3 + 340, 1, 293.1, -269.3 , 0 );
setMoveKey( spep_0 -3 + 342, 1, 296.3, -288.7 , 0 );
setMoveKey( spep_0 -3 + 344, 1, 266.7, -280.3 , 0 );
setMoveKey( spep_0 -3 + 346, 1, 271.3, -276 , 0 );
setMoveKey( spep_0 -3 + 348, 1, 266.3, -217.4 , 0 );
setMoveKey( spep_0 -3 + 350, 1, 261.2, -221.7 , 0 );
setMoveKey( spep_0 -3 + 352, 1, 262.1, -228 , 0 );
setMoveKey( spep_0 -3 + 354, 1, 269.3, -199.6 , 0 );
setMoveKey( spep_0 -3 + 356, 1, 291.3, -200.7 , 0 );
setMoveKey( spep_0 -3 + 358, 1, 368.4, -219.1 , 0 );
setMoveKey( spep_0 -3 + 359, 1, 368.4, -219.1 , 0 );
setMoveKey( spep_0 -3 + 360, 1, 458, -377.5 , 0 );
setMoveKey( spep_0 -3 + 362, 1, 194, -294.8 , 0 );
setMoveKey( spep_0 -3 + 364, 1, 160.6, -249.7 , 0 );
setMoveKey( spep_0 -3 + 366, 1, 223.3, -298.3 , 0 );
setMoveKey( spep_0 -3 + 368, 1, 149.2, -267.2 , 0 );
setMoveKey( spep_0 -3 + 370, 1, 187.5, -294.6 , 0 );
setMoveKey( spep_0 -3 + 372, 1, 152, -250.4 , 0 );
setMoveKey( spep_0 -3 + 374, 1, 146.5, -252.6 , 0 );
setMoveKey( spep_0 -3 + 376, 1, 155, -245.2 , 0 );
setMoveKey( spep_0 -3 + 378, 1, 155.5, -253.7 , 0 );
setMoveKey( spep_0 -3 + 380, 1, 159.2, -256.6 , 0 );
setMoveKey( spep_0 -3 + 382, 1, 173.2, -284.7 , 0 );
setMoveKey( spep_0 -3 + 384, 1, 176.3, -266.8 , 0 );
setMoveKey( spep_0 -3 + 386, 1, 194.5, -300.2 , 0 );
setMoveKey( spep_0 -3 + 388, 1, 236, -317 , 0 );
setMoveKey( spep_0 -3 + 390, 1, 272.9, -339.6 , 0 );
setMoveKey( spep_0 -3 + 392, 1, 364.3, -427.3 , 0 );
setMoveKey( spep_0 -3 + 394, 1, 438.3, -502.6 , 0 );
setMoveKey( spep_0 -3 + 396, 1, 467.1, -526.9 , 0 );
setMoveKey( spep_0 -3 + 398, 1, 473.5, -518.2 , 0 );
setMoveKey( spep_0 -3 + 399, 1, 473.5, -518.2 , 0 );
setMoveKey( spep_0 -3 + 400, 1, -463.9, 553.7 , 0 );
setMoveKey( spep_0 -3 + 402, 1, -456.8, 565.6 , 0 );
setMoveKey( spep_0 -3 + 404, 1, -451.3, 556.6 , 0 );
setMoveKey( spep_0 -3 + 406, 1, -443.8, 544.4 , 0 );
setMoveKey( spep_0 -3 + 408, 1, -433.3, 527.3 , 0 );
setMoveKey( spep_0 -3 + 410, 1, -417.2, 501.3 , 0 );
setMoveKey( spep_0 -3 + 412, 1, -395, 465.1 , 0 );
setMoveKey( spep_0 -3 + 414, 1, -354.2, 398.7 , 0 );
setMoveKey( spep_0 -3 + 416, 1, -125.8, 25.1 , 0 );
setMoveKey( spep_0 -3 + 418, 1, -26.2, -135 , 0 );
setMoveKey( spep_0 -3 + 420, 1, -26.2, -135 , 0 );
setMoveKey( spep_0 -3 + 472, 1, 152, -125.7 , 0 );
setMoveKey( spep_0 -3 + 474, 1, 145.2, -130.8 , 0 );
setMoveKey( spep_0 -3 + 476, 1, 151.1, -121.1 , 0 );
setMoveKey( spep_0 -3 + 478, 1, 149.9, -131.7 , 0 );
setMoveKey( spep_0 -3 + 480, 1, 149.8, -122.9 , 0 );
setMoveKey( spep_0 -3 + 482, 1, 152.9, -118.1 , 0 );
setMoveKey( spep_0 -3 + 484, 1, 155.1, -116.7 , 0 );
setMoveKey( spep_0 -3 + 486, 1, 151.5, -113.9 , 0 );
setMoveKey( spep_0 -3 + 488, 1, 145.2, -110.2 , 0 );
setMoveKey( spep_0 -3 + 490, 1, 149, -111.4 , 0 );
setMoveKey( spep_0 -3 + 492, 1, 145.6, -114.7 , 0 );
setMoveKey( spep_0 -3 + 494, 1, 142.7, -106.7 , 0 );
setMoveKey( spep_0 -3 + 496, 1, 151.7, -107.2 , 0 );
setMoveKey( spep_0 -3 + 498, 1, 140.3, -112.8 , 0 );
setMoveKey( spep_0 -3 + 500, 1, 144.2, -103.1 , 0 );
setMoveKey( spep_0 -3 + 502, 1, 141.3, -105.4 , 0 );
setMoveKey( spep_0 -3 + 513, 1, 141.3, -105.4 , 0 );
setMoveKey( spep_0 -3 + 514, 1, 144.7, -107.1 , 0 );
setMoveKey( spep_0 -3 + 516, 1, 141.3, -105.4 , 0 );
setMoveKey( spep_0 -3 + 518, 1, 143, -105.4 , 0 );
setMoveKey( spep_0 -3 + 520, 1, 141.3, -105.4 , 0 );
setMoveKey( spep_0 -3 + 533, 1, 141.3, -105.4 , 0 );
setMoveKey( spep_0 -3 + 534, 1, 190, 0 , 0 );
setMoveKey( spep_0 -3 + 601, 1, 190, 0 , 0 );
setMoveKey( spep_0 -3 + 602, 1, 100.8, 0 , 0 );
setMoveKey( spep_0 -3 + 604, 1, 98, 0 , 0 );
setMoveKey( spep_0 -3 + 606, 1, 95.7, 0 , 0 );
setMoveKey( spep_0 -3 + 608, 1, 93.8, 0 , 0 );
setMoveKey( spep_0 -3 + 610, 1, 92.2, 0 , 0 );
setMoveKey( spep_0 -3 + 612, 1, 91, 0 , 0 );
setMoveKey( spep_0 -3 + 614, 1, 90.1, 0 , 0 );
setMoveKey( spep_0 -3 + 616, 1, 89.4, 0 , 0 );
setMoveKey( spep_0 -3 + 618, 1, 88.8, 0 , 0 );
setMoveKey( spep_0 -3 + 620, 1, 88.4, 0 , 0 );
setMoveKey( spep_0 -3 + 622, 1, 88.2, 0 , 0 );
setMoveKey( spep_0 -3 + 624, 1, 88, 0 , 0 );
setMoveKey( spep_0 -3 + 626, 1, 87.9, 0 , 0 );
setMoveKey( spep_0 -3 + 628, 1, 87.8, 0 , 0 );
setMoveKey( spep_0 + 634, 1, 87.8, 0 , 0 );
setMoveKey( spep_0 + 640, 1, 87.8, 0 , 0 );

setScaleKey( spep_0 -3 + 312, 1, 13.74, 13.74 );
setScaleKey( spep_0 -3 + 314, 1, 9.94, 9.94 );
setScaleKey( spep_0 -3 + 316, 1, 8.07, 8.07 );
setScaleKey( spep_0 -3 + 318, 1, 6.89, 6.89 );
setScaleKey( spep_0 -3 + 320, 1, 6.11, 6.11 );
setScaleKey( spep_0 -3 + 322, 1, 5.56, 5.56 );
setScaleKey( spep_0 -3 + 324, 1, 5.17, 5.17 );
setScaleKey( spep_0 -3 + 326, 1, 4.86, 4.86 );
setScaleKey( spep_0 -3 + 328, 1, 4.6, 4.6 );
setScaleKey( spep_0 -3 + 330, 1, 4.4, 4.4 );
setScaleKey( spep_0 -3 + 332, 1, 4.3, 4.3 );
setScaleKey( spep_0 -3 + 334, 1, 4.17, 4.17 );
setScaleKey( spep_0 -3 + 336, 1, 4.06, 4.06 );
setScaleKey( spep_0 -3 + 338, 1, 4.02, 4.02 );
setScaleKey( spep_0 -3 + 340, 1, 3.96, 3.96 );
setScaleKey( spep_0 -3 + 342, 1, 3.9, 3.9 );
setScaleKey( spep_0 -3 + 344, 1, 3.92, 3.92 );
setScaleKey( spep_0 -3 + 346, 1, 3.87, 3.87 );
setScaleKey( spep_0 -3 + 348, 1, 3.9, 3.9 );
setScaleKey( spep_0 -3 + 350, 1, 3.89, 3.89 );
setScaleKey( spep_0 -3 + 352, 1, 3.89, 3.89 );
setScaleKey( spep_0 -3 + 354, 1, 4.01, 4.01 );
setScaleKey( spep_0 -3 + 356, 1, 4.14, 4.14 );
setScaleKey( spep_0 -3 + 358, 1, 4.53, 4.53 );
setScaleKey( spep_0 -3 + 359, 1, 4.53, 4.53 );
setScaleKey( spep_0 -3 + 360, 1, 1.82, 1.82 );
setScaleKey( spep_0 -3 + 362, 1, 1.57, 1.57 );
setScaleKey( spep_0 -3 + 364, 1, 1.35, 1.35 );
setScaleKey( spep_0 -3 + 366, 1, 1.45, 1.45 );
setScaleKey( spep_0 -3 + 368, 1, 1.29, 1.29 );
setScaleKey( spep_0 -3 + 370, 1, 1.29, 1.29 );
setScaleKey( spep_0 -3 + 372, 1, 1.27, 1.27 );
setScaleKey( spep_0 -3 + 376, 1, 1.27, 1.27 );
setScaleKey( spep_0 -3 + 378, 1, 1.28, 1.28 );
setScaleKey( spep_0 -3 + 380, 1, 1.29, 1.29 );
setScaleKey( spep_0 -3 + 382, 1, 1.31, 1.31 );
setScaleKey( spep_0 -3 + 384, 1, 1.34, 1.34 );
setScaleKey( spep_0 -3 + 386, 1, 1.39, 1.39 );
setScaleKey( spep_0 -3 + 388, 1, 1.44, 1.44 );
setScaleKey( spep_0 -3 + 390, 1, 1.54, 1.54 );
setScaleKey( spep_0 -3 + 392, 1, 1.75, 1.75 );
setScaleKey( spep_0 -3 + 394, 1, 1.9, 1.9 );
setScaleKey( spep_0 -3 + 396, 1, 1.95, 1.95 );
setScaleKey( spep_0 -3 + 398, 1, 1.98, 1.98 );
setScaleKey( spep_0 -3 + 399, 1, 1.98, 1.98 );
setScaleKey( spep_0 -3 + 400, 1, 0.15, 0.15 );
setScaleKey( spep_0 -3 + 402, 1, 0.16, 0.16 );
setScaleKey( spep_0 -3 + 404, 1, 0.16, 0.16 );
setScaleKey( spep_0 -3 + 406, 1, 0.17, 0.17 );
setScaleKey( spep_0 -3 + 408, 1, 0.18, 0.18 );
setScaleKey( spep_0 -3 + 410, 1, 0.2, 0.2 );
setScaleKey( spep_0 -3 + 412, 1, 0.22, 0.22 );
setScaleKey( spep_0 -3 + 414, 1, 0.26, 0.26 );
setScaleKey( spep_0 -3 + 416, 1, 0.5, 0.5 );
setScaleKey( spep_0 -3 + 418, 1, 0.6, 0.6 );
setScaleKey( spep_0 -3 + 420, 1, 0.6, 0.6 );
setScaleKey( spep_0 -3 + 472, 1, 2.24, 2.24 );
setScaleKey( spep_0 -3 + 513, 1, 2.24, 2.24 );
setScaleKey( spep_0 -3 + 514, 1, 2.24, 2.24 );
setScaleKey( spep_0 -3 + 533, 1, 2.24, 2.24 );
setScaleKey( spep_0 -3 + 534, 1, 1.3, 1.3 );
setScaleKey( spep_0 -3 + 601, 1, 1.3, 1.3 );
setScaleKey( spep_0 -3 + 602, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 634, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 640, 1, 1.3, 1.3 );

setRotateKey( spep_0 -3 + 312, 1, 10 );
setRotateKey( spep_0 -3 + 359, 1, 10 );
setRotateKey( spep_0 -3 + 360, 1, -75 );
setRotateKey( spep_0 -3 + 362, 1, -75.9 );
setRotateKey( spep_0 -3 + 364, 1, -76 );
setRotateKey( spep_0 -3 + 374, 1, -76 );
setRotateKey( spep_0 -3 + 376, 1, -75.9 );
setRotateKey( spep_0 -3 + 378, 1, -75.9 );
setRotateKey( spep_0 -3 + 380, 1, -75.6 );
setRotateKey( spep_0 -3 + 382, 1, -74.9 );
setRotateKey( spep_0 -3 + 384, 1, -74 );
setRotateKey( spep_0 -3 + 386, 1, -72.6 );
setRotateKey( spep_0 -3 + 388, 1, -70.6 );
setRotateKey( spep_0 -3 + 390, 1, -67.3 );
setRotateKey( spep_0 -3 + 392, 1, -58 );
setRotateKey( spep_0 -3 + 394, 1, -49.4 );
setRotateKey( spep_0 -3 + 396, 1, -45.9 );
setRotateKey( spep_0 -3 + 398, 1, -45.1 );
setRotateKey( spep_0 -3 + 399, 1, -45.1 );
setRotateKey( spep_0 -3 + 400, 1, 29.8 );
setRotateKey( spep_0 -3 + 402, 1, 29.7 );
setRotateKey( spep_0 -3 + 404, 1, 29.6 );
setRotateKey( spep_0 -3 + 406, 1, 29.4 );
setRotateKey( spep_0 -3 + 408, 1, 29.2 );
setRotateKey( spep_0 -3 + 410, 1, 28.8 );
setRotateKey( spep_0 -3 + 412, 1, 28.3 );
setRotateKey( spep_0 -3 + 414, 1, 27.4 );
setRotateKey( spep_0 -3 + 416, 1, 22.2 );
setRotateKey( spep_0 -3 + 418, 1, 20 );
setRotateKey( spep_0 -3 + 420, 1, 20 );
setRotateKey( spep_0 -3 + 472, 1, 0 );
setRotateKey( spep_0 -3 + 513, 1, 0 );
setRotateKey( spep_0 -3 + 514, 1, 0 );
setRotateKey( spep_0 -3 + 533, 1, 0 );
setRotateKey( spep_0 -3 + 534, 1, 0 );
setRotateKey( spep_0 -3 + 601, 1, 0 );
setRotateKey( spep_0 -3 + 602, 1, 0 );
setRotateKey( spep_0 + 634, 1, 0 );
setRotateKey( spep_0 + 640, 1, 0 );

setBlendColor( spep_0 -3 + 472, 1, 2, 0, 0, 0, 1.0 );
setBlendColor( spep_0 -3 + 492, 1, 2, 0, 0, 0, 1.0 );
setBlendColor( spep_0 -3 + 494, 1, 2, 0.5, 0.25, 0, 0.8 );
setBlendColor( spep_0 -3 + 496, 1, 2, 0.5, 0.25, 0, 0.5 );
setBlendColor( spep_0 -3 + 498, 1, 2, 0.5, 0.25, 0, 0.2 );
setBlendColor( spep_0 -3 + 500, 1, 2, 0.5, 0.25, 0, 0 );

-- ** 音 ** --
--ブロリーダッシュ
SE5 = playSe( spep_0 + 228, 9 ); 
stopSe( spep_0 + 282, SE5, 0 );

playSe( spep_0 + 228, 1072 ); 

SE6 = playSe( spep_0 + 233, 1044 ); 
setSeVolume( spep_0 + 233, 1044, 50 );
stopSe( spep_0 + 352, SE6, 0 );

SE7 = playSe( spep_0 + 245, 1144 ); 
setSeVolume( spep_0 + 245, 1144, 0 );
setSeVolume( spep_0 + 263, 1144, 5 );
setSeVolume( spep_0 + 268, 1144, 8 );
setSeVolume( spep_0 + 274, 1144, 10 );
setSeVolume( spep_0 + 280, 1144, 12 );
setSeVolume( spep_0 + 284, 1144, 14 );
setSeVolume( spep_0 + 288, 1144, 16 );
setSeVolume( spep_0 + 293, 1144, 18 );
stopSe( spep_0 + 362, SE7, 0 );

SE8 = playSe( spep_0 + 245, 1215 ); 
setSeVolume( spep_0 + 245, 1215, 35 );
stopSe( spep_0 + 353, SE8, 0 );

playSe( spep_0 + 260, 1004 ); 

--カメラ引く
SE9 = playSe( spep_0 + 286, 9 ); 
setSeVolume( spep_0 + 286, 9, 0 );
setSeVolume( spep_0 + 297, 9, 10 );
setSeVolume( spep_0 + 300, 9, 30 );
setSeVolume( spep_0 + 302, 9, 60 );
setSeVolume( spep_0 + 306, 9, 80 );
setSeVolume( spep_0 + 309, 9, 100 );
setSeVolume( spep_0 + 321, 9, 100 );
setSeVolume( spep_0 + 328, 9, 92 );
setSeVolume( spep_0 + 336, 9, 78 );
setSeVolume( spep_0 + 340, 9, 70 );
setSeVolume( spep_0 + 348, 9, 56 );
setSeVolume( spep_0 + 356, 9, 32 );
setSeVolume( spep_0 + 364, 9, 10 );
setSeVolume( spep_0 + 379, 9, 0 );
stopSe( spep_0 + 379, SE9, 0 );

SE10 = playSe( spep_0 + 296, 1116 ); 
stopSe( spep_0 + 325, SE10, 19 );

SE11 = playSe( spep_0 + 296, 1175 ); 
setSeVolume( spep_0 + 296, 1175, 10 );
setSeVolume( spep_0 + 346, 1175, 10 );
setSeVolume( spep_0 + 354, 1175, 6 );
setSeVolume( spep_0 + 362, 1175, 4 );
setSeVolume( spep_0 + 370, 1175, 0 );
stopSe( spep_0 + 370, SE11, 0 );

playSe( spep_0 + 302, 1182 ); 
setSeVolume( spep_0 + 302, 1182, 0 );
setSeVolume( spep_0 + 308, 1182, 43 );
setSeVolume( spep_0 + 310, 1182, 65 );
setSeVolume( spep_0 + 312, 1182, 100 );
setSeVolume( spep_0 + 314, 1182, 120 );
setSeVolume( spep_0 + 315, 1182, 126 );

--パンチ
playSe( spep_0 + 348, 1003 ); 
playSe( spep_0 + 358, 1009 ); 
playSe( spep_0 + 358, 1120 ); 

--敵が飛ぶ
SE12 = playSe( spep_0 + 365, 1121 ); 
setSeVolume( spep_0 + 365, 1121, 0 );
setSeVolume( spep_0 + 384, 1121, 20 );
setSeVolume( spep_0 + 387, 1121, 50 );
stopSe( spep_0 + 422, SE12, 0 );
playSe( spep_0 + 384, 1232 ); 

--地面に衝突
playSe( spep_0 + 417, 1159 ); 

--レモ近づく
SE13 = playSe( spep_0 + 495, 13 ); 
setSeVolume( spep_0 + 495, 13, 0 );
setSeVolume( spep_0 + 510, 13, 12 );
setSeVolume( spep_0 + 514, 13, 25 );
setSeVolume( spep_0 + 526, 13, 20 );
setSeVolume( spep_0 + 532, 13, 16 );
setSeVolume( spep_0 + 548, 13, 12 );
setSeVolume( spep_0 + 556, 13, 6 );
setSeVolume( spep_0 + 561, 13, 0 );
stopSe( spep_0 + 561, SE13, 0 );

SE14 = playSe( spep_0 + 508, 1113 ); 
setSeVolume( spep_0 + 508, 1113, 158 );
stopSe( spep_0 + 523, SE14, 0 );

playSe( spep_0 + 508, 36 ); 
setSeVolume( spep_0 + 508, 36, 71 );

SE15 = playSe( spep_0 + 508, 48 ); 
stopSe( spep_0 + 530, SE15, 30 );

playSe( spep_0 + 560, 1003 ); 
setSeVolume( spep_0 + 560, 1003, 71 );

--ブロリー止めに入る
SE16 = playSe( spep_0 + 596, 8 ); 

-- ** 次の準備 ** --
spep_1 = spep_0 + 634;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_1 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_1 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_1 + 0, shuchusen, 0 );
setEffRotateKey( spep_1 + 90, shuchusen, 0 );

setEffAlphaKey( spep_1 + 0, shuchusen, 255 );
setEffAlphaKey( spep_1 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );

--ブロリー止めに入る
stopSe( spep_1 + 24, SE16, 0 );

--銃口が光る
playSe( spep_1 + 7, 15 ); 
setSeVolume( spep_1 + 7, 15, 0 );
playSe( spep_1 + 88, 1042 ); 

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 次の準備 ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

spep_2 = spep_1 + 94;

------------------------------------------------------
-- チライが銃を撃つ〜フィニッシュ(364F)
------------------------------------------------------

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --チライが銃を撃つ〜フィニッシュ(ef_003)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 364, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 364, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 364, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 364, finish_f, 255 );

finish_b = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --チライが銃を撃つ〜フィニッシュ(ef_004)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 364, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 364, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_b, 0 );
setEffRotateKey( spep_2 + 364, finish_b, 0 );
setEffAlphaKey( spep_2 + 0, finish_b, 255 );
setEffAlphaKey( spep_2 + 364, finish_b, 255 );

-- ** 書き文字エントリー ** --
ctbi = entryEffectLife( spep_2 -3 + 74,  10024, 26, 0x100, -1, 0, -90.5, 176.2 );  --ビッ
setEffMoveKey( spep_2 -3 + 74, ctbi, -90.5, 176.2 , 0 );
setEffMoveKey( spep_2 -3 + 76, ctbi, -125.9, 218.9 , 0 );
setEffMoveKey( spep_2 -3 + 78, ctbi, -141.8, 246.3 , 0 );
setEffMoveKey( spep_2 -3 + 80, ctbi, -141.8, 246.3 , 0 );
setEffMoveKey( spep_2 -3 + 82, ctbi, -158, 267.2 , 0 );
setEffMoveKey( spep_2 -3 + 84, ctbi, -153, 261 , 0 );
setEffMoveKey( spep_2 -3 + 86, ctbi, -171, 273.8 , 0 );
setEffMoveKey( spep_2 -3 + 88, ctbi, -169.9, 284.2 , 0 );
setEffMoveKey( spep_2 -3 + 90, ctbi, -174.1, 276.3 , 0 );
setEffMoveKey( spep_2 -3 + 92, ctbi, -182, 297.2 , 0 );
setEffMoveKey( spep_2 -3 + 94, ctbi, -179.3, 287.5 , 0 );
setEffMoveKey( spep_2 -3 + 96, ctbi, -188.7, 298 , 0 );
setEffMoveKey( spep_2 -3 + 98, ctbi, -185, 290.8 , 0 );
setEffMoveKey( spep_2 -3 + 100, ctbi, -186.1, 291 , 0 );

setEffScaleKey( spep_2 -3 + 74, ctbi, 0.95, 0.82 );
setEffScaleKey( spep_2 -3 + 76, ctbi, 1.53, 1.34 );
setEffScaleKey( spep_2 -3 + 78, ctbi, 2.08, 1.83 );
setEffScaleKey( spep_2 -3 + 80, ctbi, 2.08, 1.83 );
setEffScaleKey( spep_2 -3 + 82, ctbi, 2.18, 1.91 );
setEffScaleKey( spep_2 -3 + 84, ctbi, 2.26, 1.98 );
setEffScaleKey( spep_2 -3 + 86, ctbi, 2.34, 2.04 );
setEffScaleKey( spep_2 -3 + 88, ctbi, 2.4, 2.09 );
setEffScaleKey( spep_2 -3 + 90, ctbi, 2.46, 2.14 );
setEffScaleKey( spep_2 -3 + 92, ctbi, 2.5, 2.17 );
setEffScaleKey( spep_2 -3 + 94, ctbi, 2.54, 2.2 );
setEffScaleKey( spep_2 -3 + 96, ctbi, 2.56, 2.22 );
setEffScaleKey( spep_2 -3 + 98, ctbi, 2.58, 2.24 );
setEffScaleKey( spep_2 -3 + 100, ctbi, 2.58, 2.24 );

setEffRotateKey( spep_2 -3 + 74, ctbi, 0 +20 );
setEffRotateKey( spep_2 -3 + 100, ctbi, 0 +20 );

setEffAlphaKey( spep_2 -3 + 74, ctbi, 255 );
setEffAlphaKey( spep_2 -3 + 80, ctbi, 255 );
setEffAlphaKey( spep_2 -3 + 82, ctbi, 211 );
setEffAlphaKey( spep_2 -3 + 84, ctbi, 173 );
setEffAlphaKey( spep_2 -3 + 86, ctbi, 138 );
setEffAlphaKey( spep_2 -3 + 88, ctbi, 108 );
setEffAlphaKey( spep_2 -3 + 90, ctbi, 83 );
setEffAlphaKey( spep_2 -3 + 92, ctbi, 63 );
setEffAlphaKey( spep_2 -3 + 94, ctbi, 47 );
setEffAlphaKey( spep_2 -3 + 96, ctbi, 35 );
setEffAlphaKey( spep_2 -3 + 98, ctbi, 28 );
setEffAlphaKey( spep_2 -3 + 100, ctbi, 26 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_2 + 170 -3, 906, 98, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 170 -3, shuchusen1, 98, 20 );

setEffMoveKey( spep_2 + 170 -3, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_2 + 268 -3, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_2 + 170 -3, shuchusen1, 1.3, 1.3 );
setEffScaleKey( spep_2 + 268 -3, shuchusen1, 1.3, 1.3 );

setEffRotateKey( spep_2 + 170 -3, shuchusen1, 0 );
setEffRotateKey( spep_2 + 268 -3, shuchusen1, 0 );

setEffAlphaKey( spep_2 + 170 -3, shuchusen1, 100 );
setEffAlphaKey( spep_2 + 196 -3, shuchusen1, 255 );
setEffAlphaKey( spep_2 + 267 -3, shuchusen1, 255 );
setEffAlphaKey( spep_2 + 268 -3, shuchusen1, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 102, 1, 1 );
setDisp( spep_2 -3 + 150, 1, 0 );
changeAnime( spep_2 -3 + 102, 1, 111 );
changeAnime( spep_2 -3 + 103, 1, 111 );
changeAnime( spep_2 -3 + 104, 1, 111 );
changeAnime( spep_2 -3 + 105, 1, 111 );
changeAnime( spep_2 -3 + 106, 1, 111 );
changeAnime( spep_2 -3 + 107, 1, 111 );
changeAnime( spep_2 -3 + 108, 1, 111 );
changeAnime( spep_2 -3 + 109, 1, 111 );
changeAnime( spep_2 -3 + 110, 1, 111 );
changeAnime( spep_2 -3 + 111, 1, 111 );
changeAnime( spep_2 -3 + 112, 1, 111 );
changeAnime( spep_2 -3 + 113, 1, 111 );
changeAnime( spep_2 -3 + 114, 1, 111 );
changeAnime( spep_2 -3 + 115, 1, 111 );
changeAnime( spep_2 -3 + 116, 1, 111 );
changeAnime( spep_2 -3 + 117, 1, 111 );
changeAnime( spep_2 -3 + 118, 1, 106 );

setMoveKey( spep_2 -3 + 102, 1, 81.5, 0 , 0 );
setMoveKey( spep_2 -3 + 104, 1, 78.2, 0 , 0 );
setMoveKey( spep_2 -3 + 106, 1, 74.8, 0 , 0 );
setMoveKey( spep_2 -3 + 108, 1, 71.5, 0 , 0 );
setMoveKey( spep_2 -3 + 110, 1, 68.2, 0 , 0 );
setMoveKey( spep_2 -3 + 112, 1, 64.8, 0 , 0 );
setMoveKey( spep_2 -3 + 114, 1, 61.5, 0 , 0 );
setMoveKey( spep_2 -3 + 116, 1, 61.5, 0 , 0 );
setMoveKey( spep_2 -3 + 117, 1, 61.5, 0 , 0 );
setMoveKey( spep_2 -3 + 118, 1, -62.3, 31.5 , 0 );
setMoveKey( spep_2 -3 + 120, 1, -73.4, 28.2 , 0 );
setMoveKey( spep_2 -3 + 122, 1, -90.4, 27.3 , 0 );
setMoveKey( spep_2 -3 + 124, 1, -141.7, 36.6 , 0 );
setMoveKey( spep_2 -3 + 126, 1, -231.9, 38 , 0 );
setMoveKey( spep_2 -3 + 128, 1, -388.8, 46.7 , 0 );
setMoveKey( spep_2 -3 + 130, 1, -464.3, 51 , 0 );
setMoveKey( spep_2 -3 + 132, 1, -509.9, 49.7 , 0 );
setMoveKey( spep_2 -3 + 134, 1, -539.5, 53.7 , 0 );
setMoveKey( spep_2 -3 + 136, 1, -560, 50.8 , 0 );
setMoveKey( spep_2 -3 + 138, 1, -579.6, 55.6 , 0 );
setMoveKey( spep_2 -3 + 140, 1, -593.6, 56.3 , 0 );
setMoveKey( spep_2 -3 + 142, 1, -604.8, 56.9 , 0 );
setMoveKey( spep_2 -3 + 144, 1, -614, 57.3 , 0 );
setMoveKey( spep_2 -3 + 146, 1, -621.5, 57.7 , 0 );
setMoveKey( spep_2 -3 + 148, 1, -627.5, 58 , 0 );
setMoveKey( spep_2 -3 + 150, 1, -632.5, 58.3 , 0 );
setMoveKey( spep_2 -3 + 152, 1, -636.5, 58.5 , 0 );
setMoveKey( spep_2 -3 + 154, 1, -639.6, 58.6 , 0 );
setMoveKey( spep_2 -3 + 156, 1, -642.1, 58.7 , 0 );
setMoveKey( spep_2 -3 + 158, 1, -644, 58.8 , 0 );
setMoveKey( spep_2 -3 + 160, 1, -645.4, 58.9 , 0 );
setMoveKey( spep_2 -3 + 162, 1, -646.4, 58.9 , 0 );
setMoveKey( spep_2 -3 + 164, 1, -647, 59 , 0 );
setMoveKey( spep_2 -3 + 166, 1, -647.3, 59 , 0 );
setMoveKey( spep_2 -3 + 168, 1, -647.4, 59 , 0 );
setMoveKey( spep_2 -3 + 170, 1, -800.4, 59 , 0 );

setScaleKey( spep_2 -3 + 102, 1, 1.3, 1.3 );
setScaleKey( spep_2 -3 + 116, 1, 1.3, 1.3 );
setScaleKey( spep_2 -3 + 117, 1, 1.3, 1.3 );
setScaleKey( spep_2 -3 + 118, 1, 1.37, 1.37 );
setScaleKey( spep_2 -3 + 120, 1, 1.3, 1.3 );
setScaleKey( spep_2 -3 + 170, 1, 1.3, 1.3 );

setRotateKey( spep_2 -3 + 102, 1, 0 );
setRotateKey( spep_2 -3 + 116, 1, 0 );
setRotateKey( spep_2 -3 + 117, 1, 0 );
setRotateKey( spep_2 -3 + 118, 1, -90 );
setRotateKey( spep_2 -3 + 120, 1, -90.6 );
setRotateKey( spep_2 -3 + 122, 1, -92.5 );
setRotateKey( spep_2 -3 + 124, 1, -96.4 );
setRotateKey( spep_2 -3 + 126, 1, -103.3 );
setRotateKey( spep_2 -3 + 128, 1, -115.1 );
setRotateKey( spep_2 -3 + 130, 1, -121.1 );
setRotateKey( spep_2 -3 + 132, 1, -124.4 );
setRotateKey( spep_2 -3 + 134, 1, -126.7 );
setRotateKey( spep_2 -3 + 136, 1, -128.5 );
setRotateKey( spep_2 -3 + 138, 1, -129.8 );
setRotateKey( spep_2 -3 + 140, 1, -130.9 );
setRotateKey( spep_2 -3 + 142, 1, -131.7 );
setRotateKey( spep_2 -3 + 144, 1, -132.4 );
setRotateKey( spep_2 -3 + 146, 1, -133 );
setRotateKey( spep_2 -3 + 148, 1, -133.5 );
setRotateKey( spep_2 -3 + 150, 1, -133.9 );
setRotateKey( spep_2 -3 + 152, 1, -134.2 );
setRotateKey( spep_2 -3 + 154, 1, -134.4 );
setRotateKey( spep_2 -3 + 156, 1, -134.6 );
setRotateKey( spep_2 -3 + 158, 1, -134.7 );
setRotateKey( spep_2 -3 + 160, 1, -134.8 );
setRotateKey( spep_2 -3 + 162, 1, -134.9 );
setRotateKey( spep_2 -3 + 164, 1, -135 );
setRotateKey( spep_2 -3 + 170, 1, -135 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 364, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--銃口が光る
setSeVolume( spep_2 + 0, 15, 10 );
setSeVolume( spep_2 + 2, 15, 36 );
setSeVolume( spep_2 + 4, 15, 79 );

--チライ表示
playSe( spep_2 + 24, 44 ); 
setSeVolume( spep_2 + 24, 44, 71 );

--ビーム発射
playSe( spep_2 + 66, 1016 ); 
SE13 = playSe( spep_2 + 70, 1177 ); 
setSeVolume( spep_2 + 70, 1177, 79 );
stopSe( spep_2 + 113, SE13, 0 );

--被弾
playSe( spep_2 + 109, 1023 ); 
playSe( spep_2 + 117, 1027 ); 
setSeVolume( spep_2 + 117, 1027, 63 );

--チライがニコッとする
playSe( spep_2 + 190, 1126 ); 
setSeVolume( spep_2 + 190, 1126, 0 );
setSeVolume( spep_2 + 220, 1126, 4 );
setSeVolume( spep_2 + 222, 1126, 10 );
setSeVolume( spep_2 + 224, 1126, 16 );

playSe( spep_2 + 219, 1042 ); 

--2人がびっくりする
playSe( spep_2 + 255, 1072 ); 

playSe( spep_2 + 273, 1182 ); 
setSeVolume( spep_2 + 273, 1182, 0 );
setSeVolume( spep_2 + 276, 1182, 10 );
setSeVolume( spep_2 + 280, 1182, 28 );
setSeVolume( spep_2 + 288, 1182, 42 );
setSeVolume( spep_2 + 292, 1182, 63 );

playSe( spep_2 + 274, 8 ); 
setSeVolume( spep_2 + 274, 8, 79 );

playSe( spep_2 + 282, 1051 ); 
setSeVolume( spep_2 + 282, 1051, 0 );
setSeVolume( spep_2 + 286, 1051, 10 );
setSeVolume( spep_2 + 287, 1051, 43 );
setSeVolume( spep_2 + 289, 1051, 63 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 242 );
endPhase( spep_2 + 362 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 冒頭〜レモが敵に殴りかろうとするシーン(634F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01x, 0x100, -1, 0, 0, 0 );  --冒頭〜レモが敵に殴りかろうとするシーン(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 634, start_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 634, start_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, start_f, 0 );
setEffRotateKey( spep_0 + 634, start_f, 0 );
setEffAlphaKey( spep_0 + 0, start_f, 255 );
setEffAlphaKey( spep_0 + 634, start_f, 255 );

start_b = entryEffect( spep_0 + 0, SP_02x, 0x80, -1, 0, 0, 0 );  --冒頭〜レモが敵に殴りかろうとするシーン(ef_002)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 634, start_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, start_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 634, start_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, start_b, 0 );
setEffRotateKey( spep_0 + 634, start_b, 0 );
setEffAlphaKey( spep_0 + 0, start_b, 255 );
setEffAlphaKey( spep_0 + 634, start_b, 255 );

spep_x = spep_0 + 0;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, -9.9 +35, 515.5 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );

setEffMoveKey( spep_x + 16, ctgogo, -9.9 +35, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -9.9 +35, 515.5 , 0 );

setEffScaleKey( spep_x + 16, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_x + 76, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_x + 78, ctgogo, -1.0, 1.0 );
setEffScaleKey( spep_x + 80, ctgogo, -1.09, 1.09 );
setEffScaleKey( spep_x + 82, ctgogo, -1.39, 1.39 );
setEffScaleKey( spep_x + 84, ctgogo, -1.69, 1.69 );

setEffRotateKey( spep_x + 16, ctgogo, 0 );
setEffRotateKey( spep_x + 84, ctgogo, 0 );

setEffAlphaKey( spep_x + 16, ctgogo, 255 );
setEffAlphaKey( spep_x + 84, ctgogo, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 236, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--入り
playSe( spep_0 + 0, 8 ); 

--ブロリー突進
playSe( spep_0 + 85, 44 ); 
playSe( spep_0 + 85, 1182 ); 

--チライ移動
SE0 = playSe( spep_0 + 103, 1111 ); 
setSeVolume( spep_0 + 103, 1111, 0 );
setSeVolume( spep_0 + 119, 1111, 50 );
setSeVolume( spep_0 + 120, 1111, 79 );
setSeVolume( spep_0 + 129, 1111, 0 );
stopSe( spep_0 + 129, SE0, 0 );

playSe( spep_0 + 117, 1003 ); 
setSeVolume( spep_0 + 117, 1003, 63 );
playSe( spep_0 + 120, 4 ); 
playSe( spep_0 + 123, 1106 ); 
setSeVolume( spep_0 + 123, 1106, 178 );
playSe( spep_0 + 129, 1111 ); 
setSeVolume( spep_0 + 129, 1111, 79 );
playSe( spep_0 + 130, 1107 ); 
setSeVolume( spep_0 + 130, 1107, 178 );

--レモ移動
SE1 = playSe( spep_0 + 150, 1111 ); 
setSeVolume( spep_0 + 150, 1111, 0 );
setSeVolume( spep_0 + 166, 1111, 30 );
setSeVolume( spep_0 + 167, 1111, 50 );
setSeVolume( spep_0 + 182, 1111, 0 );
stopSe( spep_0 + 182, SE1, 0 );

playSe( spep_0 + 170, 1106 ); 
setSeVolume( spep_0 + 170, 1106, 178 );

SE2 = playSe( spep_0 + 183, 1111 ); 
setSeVolume( spep_0 + 183, 1111, 40 );
stopSe( spep_0 + 197, SE2, 0 );

playSe( spep_0 + 185, 1107 ); 

SE3 = playSe( spep_0 + 197, 1111 ); 
setSeVolume( spep_0 + 197, 1111, 50 );
stopSe( spep_0 + 211, SE3, 0 );

playSe( spep_0 + 199, 1106 ); 
setSeVolume( spep_0 + 199, 1106, 178 );

SE4 = playSe( spep_0 + 210, 1111 ); 
setSeVolume( spep_0 + 210, 1111, 40 );
stopSe( spep_0 + 224, SE4, 0 );

playSe( spep_0 + 212, 1107 ); 
setSeVolume( spep_0 + 212, 1107, 178 );

--ゴゴゴ
playSe( spep_x + 16, 1018 ); 

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 236; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );

pauseAll( SP_dodge, 67 );

-- ** カットイン部分 ** --
speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350, 1000 );   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350, 1100 );   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

-- ** 白フェード ** --
entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );

endPhase( SP_dodge + 10 );

do return end
else end

------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------
-- ** 書き文字エントリー ** --
ctdon = entryEffectLife( spep_0 -3 + 370,  10019, 18, 0x100, -1, 0, -80, 229.8 );  --ドンッ
setEffMoveKey( spep_0 -3 + 370, ctdon, -80, 229.8 , 0 );
setEffMoveKey( spep_0 -3 + 372, ctdon, -118, 298.5 , 0 );
setEffMoveKey( spep_0 -3 + 374, ctdon, -112.6, 307.9 , 0 );
setEffMoveKey( spep_0 -3 + 376, ctdon, -109.1, 293 , 0 );
setEffMoveKey( spep_0 -3 + 378, ctdon, -118.3, 309.9 , 0 );
setEffMoveKey( spep_0 -3 + 380, ctdon, -110.6, 299.9 , 0 );
setEffMoveKey( spep_0 -3 + 382, ctdon, -121.9, 306.5 , 0 );
setEffMoveKey( spep_0 -3 + 384, ctdon, -118.7, 303.9 , 0 );
setEffMoveKey( spep_0 -3 + 386, ctdon, -128.2, 322.1 , 0 );
setEffMoveKey( spep_0 -3 + 388, ctdon, -167, 367 , 0 );

setEffScaleKey( spep_0 -3 + 370, ctdon, 1.15, 1.17 );
setEffScaleKey( spep_0 -3 + 372, ctdon, 2.48, 2.54 );
setEffScaleKey( spep_0 -3 + 374, ctdon, 2.48, 2.54 );
setEffScaleKey( spep_0 -3 + 376, ctdon, 2.48, 2.55 );
setEffScaleKey( spep_0 -3 + 378, ctdon, 2.49, 2.56 );
setEffScaleKey( spep_0 -3 + 380, ctdon, 2.5, 2.57 );
setEffScaleKey( spep_0 -3 + 382, ctdon, 2.53, 2.61 );
setEffScaleKey( spep_0 -3 + 384, ctdon, 2.59, 2.69 );
setEffScaleKey( spep_0 -3 + 386, ctdon, 2.7, 2.84 );
setEffScaleKey( spep_0 -3 + 388, ctdon, 3.21, 3.5 );

setEffRotateKey( spep_0 -3 + 370, ctdon, 0 );
setEffRotateKey( spep_0 -3 + 388, ctdon, 0 );

setEffAlphaKey( spep_0 -3 + 370, ctdon, 255 );
setEffAlphaKey( spep_0 -3 + 372, ctdon, 255 );
setEffAlphaKey( spep_0 -3 + 374, ctdon, 255 );
setEffAlphaKey( spep_0 -3 + 376, ctdon, 254 );
setEffAlphaKey( spep_0 -3 + 378, ctdon, 252 );
setEffAlphaKey( spep_0 -3 + 380, ctdon, 247 );
setEffAlphaKey( spep_0 -3 + 382, ctdon, 238 );
setEffAlphaKey( spep_0 -3 + 384, ctdon, 221 );
setEffAlphaKey( spep_0 -3 + 386, ctdon, 184 );
setEffAlphaKey( spep_0 -3 + 388, ctdon, 26 );

ctdogon = entryEffectLife( spep_0 -3 + 424,  10018, 40, 0x100, -1, 0, -11.2, 18.3 );  --ドゴン
setEffMoveKey( spep_0 -3 + 424, ctdogon, -11.2, 18.3 , 0 );
setEffMoveKey( spep_0 -3 + 426, ctdogon, -52.3, 199.1 , 0 );
setEffMoveKey( spep_0 -3 + 428, ctdogon, -34.3, 228.3 , 0 );
setEffMoveKey( spep_0 -3 + 430, ctdogon, -23.4, 216.9 , 0 );
setEffMoveKey( spep_0 -3 + 432, ctdogon, -41, 220.2 , 0 );
setEffMoveKey( spep_0 -3 + 434, ctdogon, -30.4, 229.8 , 0 );
setEffMoveKey( spep_0 -3 + 436, ctdogon, -33.1, 212.5 , 0 );
setEffMoveKey( spep_0 -3 + 438, ctdogon, -36.1, 234.9 , 0 );
setEffMoveKey( spep_0 -3 + 440, ctdogon, -31.1, 221.2 , 0 );
setEffMoveKey( spep_0 -3 + 442, ctdogon, -40.4, 231 , 0 );
setEffMoveKey( spep_0 -3 + 444, ctdogon, -35.6, 223.7 , 0 );
setEffMoveKey( spep_0 -3 + 446, ctdogon, -33.8, 236.9 , 0 );
setEffMoveKey( spep_0 -3 + 448, ctdogon, -37.7, 228.6 , 0 );
setEffMoveKey( spep_0 -3 + 450, ctdogon, -41.2, 245.8 , 0 );
setEffMoveKey( spep_0 -3 + 452, ctdogon, -40.1, 239.4 , 0 );
setEffMoveKey( spep_0 -3 + 454, ctdogon, -44.1, 251.5 , 0 );
setEffMoveKey( spep_0 -3 + 456, ctdogon, -39.3, 246.9 , 0 );
setEffMoveKey( spep_0 -3 + 458, ctdogon, -42.2, 259.5 , 0 );
setEffMoveKey( spep_0 -3 + 460, ctdogon, -40.1, 259.5 , 0 );
setEffMoveKey( spep_0 -3 + 462, ctdogon, -45.6, 266.4 , 0 );
setEffMoveKey( spep_0 -3 + 464, ctdogon, -46.8, 272.2 , 0 );

setEffScaleKey( spep_0 -3 + 424, ctdogon, 2.02, 2.04 );
setEffScaleKey( spep_0 -3 + 426, ctdogon, 3.55, 3.56 );
setEffScaleKey( spep_0 -3 + 428, ctdogon, 3.89, 3.91 );
setEffScaleKey( spep_0 -3 + 432, ctdogon, 3.89, 3.91 );
setEffScaleKey( spep_0 -3 + 434, ctdogon, 3.89, 3.92 );
setEffScaleKey( spep_0 -3 + 436, ctdogon, 3.9, 3.93 );
setEffScaleKey( spep_0 -3 + 438, ctdogon, 3.91, 3.94 );
setEffScaleKey( spep_0 -3 + 440, ctdogon, 3.93, 3.95 );
setEffScaleKey( spep_0 -3 + 442, ctdogon, 3.95, 3.97 );
setEffScaleKey( spep_0 -3 + 444, ctdogon, 3.97, 3.99 );
setEffScaleKey( spep_0 -3 + 446, ctdogon, 4, 4.02 );
setEffScaleKey( spep_0 -3 + 448, ctdogon, 4.03, 4.05 );
setEffScaleKey( spep_0 -3 + 450, ctdogon, 4.06, 4.08 );
setEffScaleKey( spep_0 -3 + 452, ctdogon, 4.09, 4.11 );
setEffScaleKey( spep_0 -3 + 454, ctdogon, 4.13, 4.15 );
setEffScaleKey( spep_0 -3 + 456, ctdogon, 4.18, 4.19 );
setEffScaleKey( spep_0 -3 + 458, ctdogon, 4.22, 4.24 );
setEffScaleKey( spep_0 -3 + 460, ctdogon, 4.27, 4.29 );
setEffScaleKey( spep_0 -3 + 462, ctdogon, 4.32, 4.34 );
setEffScaleKey( spep_0 -3 + 464, ctdogon, 4.38, 4.39 );

setEffRotateKey( spep_0 -3 + 424, ctdogon, -27 +10 );
setEffRotateKey( spep_0 -3 + 464, ctdogon, -27 +10 );

setEffAlphaKey( spep_0 -3 + 424, ctdogon, 255 );
setEffAlphaKey( spep_0 -3 + 430, ctdogon, 255 );
setEffAlphaKey( spep_0 -3 + 432, ctdogon, 254 );
setEffAlphaKey( spep_0 -3 + 434, ctdogon, 251 );
setEffAlphaKey( spep_0 -3 + 436, ctdogon, 247 );
setEffAlphaKey( spep_0 -3 + 438, ctdogon, 241 );
setEffAlphaKey( spep_0 -3 + 440, ctdogon, 233 );
setEffAlphaKey( spep_0 -3 + 442, ctdogon, 223 );
setEffAlphaKey( spep_0 -3 + 444, ctdogon, 212 );
setEffAlphaKey( spep_0 -3 + 446, ctdogon, 199 );
setEffAlphaKey( spep_0 -3 + 448, ctdogon, 184 );
setEffAlphaKey( spep_0 -3 + 450, ctdogon, 167 );
setEffAlphaKey( spep_0 -3 + 452, ctdogon, 148 );
setEffAlphaKey( spep_0 -3 + 454, ctdogon, 128 );
setEffAlphaKey( spep_0 -3 + 456, ctdogon, 106 );
setEffAlphaKey( spep_0 -3 + 458, ctdogon, 82 );
setEffAlphaKey( spep_0 -3 + 460, ctdogon, 56 );
setEffAlphaKey( spep_0 -3 + 462, ctdogon, 29 );
setEffAlphaKey( spep_0 -3 + 464, ctdogon, 0 );

ctexc = entryEffectLife( spep_0 -3 + 514,  10000, 18, 0x100, -1, 0, -127.6, 3.4 );  --！！
setEffShake( spep_0 -3 + 524, ctexc, 8, 30 );
setEffMoveKey( spep_0 -3 + 514, ctexc, -127.6, 3.4 , 0 );
setEffMoveKey( spep_0 -3 + 516, ctexc, -56.1, 89.9 , 0 );
setEffMoveKey( spep_0 -3 + 518, ctexc, -43.9, 134 , 0 );
setEffMoveKey( spep_0 -3 + 520, ctexc, -34.6, 118 , 0 );
setEffMoveKey( spep_0 -3 + 522, ctexc, -67.8, 73.6 , 0 );
setEffMoveKey( spep_0 -3 + 524, ctexc, -75.8, 53.2 , 0 );
setEffMoveKey( spep_0 -3 + 532, ctexc, -75.8, 53.2 , 0 );

setEffScaleKey( spep_0 -3 + 514, ctexc, 1.84, 1.85 );
setEffScaleKey( spep_0 -3 + 516, ctexc, 4.23, 3.83 );
setEffScaleKey( spep_0 -3 + 518, ctexc, 5.03, 4.49 );
setEffScaleKey( spep_0 -3 + 520, ctexc, 4.99, 4.45 );
setEffScaleKey( spep_0 -3 + 522, ctexc, 3.68, 3.22 );
setEffScaleKey( spep_0 -3 + 524, ctexc, 3.16, 2.73 );
setEffScaleKey( spep_0 -3 + 532, ctexc, 3.16, 2.73 );

setEffRotateKey( spep_0 -3 + 514, ctexc, 0 +10 );
setEffRotateKey( spep_0 -3 + 532, ctexc, 0 +10 );

setEffAlphaKey( spep_0 -3 + 514, ctexc, 255 );
setEffAlphaKey( spep_0 -3 + 532, ctexc, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_0 -3 + 312, 1, 1 );
setDisp( spep_0 -3 + 420, 1, 0 );
setDisp( spep_0 -3 + 472, 1, 1 );
setDisp( spep_0 + 640, 1, 0 );

changeAnime( spep_0 -3 + 312, 1, 102 );
changeAnime( spep_0 -3 + 360, 1, 107 );
changeAnime( spep_0 -3 + 468, 1, 118 );
changeAnime( spep_0 -3 + 514, 1, 117 );
changeAnime( spep_0 -3 + 602, 1, 111 );
changeAnime( spep_0 -3 + 603, 1, 111 );
changeAnime( spep_0 -3 + 604, 1, 111 );
changeAnime( spep_0 -3 + 605, 1, 111 );
changeAnime( spep_0 -3 + 606, 1, 111 );
changeAnime( spep_0 -3 + 607, 1, 111 );
changeAnime( spep_0 -3 + 608, 1, 111 );
changeAnime( spep_0 -3 + 609, 1, 111 );
changeAnime( spep_0 -3 + 610, 1, 111 );
changeAnime( spep_0 -3 + 611, 1, 111 );
changeAnime( spep_0 -3 + 612, 1, 111 );
changeAnime( spep_0 -3 + 613, 1, 111 );
changeAnime( spep_0 -3 + 614, 1, 111 );
changeAnime( spep_0 -3 + 615, 1, 111 );
changeAnime( spep_0 -3 + 616, 1, 111 );
changeAnime( spep_0 -3 + 617, 1, 111 );
changeAnime( spep_0 -3 + 618, 1, 111 );
changeAnime( spep_0 -3 + 619, 1, 111 );
changeAnime( spep_0 -3 + 620, 1, 111 );
changeAnime( spep_0 -3 + 621, 1, 111 );
changeAnime( spep_0 -3 + 622, 1, 111 );
changeAnime( spep_0 -3 + 623, 1, 111 );
changeAnime( spep_0 -3 + 624, 1, 111 );
changeAnime( spep_0 -3 + 625, 1, 111 );
changeAnime( spep_0 -3 + 626, 1, 111 );
changeAnime( spep_0 -3 + 627, 1, 111 );
changeAnime( spep_0 -3 + 628, 1, 111 );
changeAnime( spep_0 -3 + 629, 1, 111 );
changeAnime( spep_0 -3 + 630, 1, 111 );
changeAnime( spep_0 -3 + 631, 1, 111 );
changeAnime( spep_0 -3 + 632, 1, 111 );
changeAnime( spep_0 -3 + 633, 1, 111 );
changeAnime( spep_0 -3 + 634, 1, 111 );
changeAnime( spep_0 -3 + 635, 1, 111 );
changeAnime( spep_0 -3 + 636, 1, 111 );
changeAnime( spep_0 -3 + 637, 1, 111 );
changeAnime( spep_0 -3 + 638, 1, 111 );
changeAnime( spep_0 -3 + 639, 1, 111 );
changeAnime( spep_0 -3 + 640, 1, 111 );
changeAnime( spep_0 -3 + 641, 1, 100 );

setMoveKey( spep_0 -3 + 312, 1, 2063.3, -2278.4 , 0 );
setMoveKey( spep_0 -3 + 314, 1, 1329.1, -1465.4 , 0 );
setMoveKey( spep_0 -3 + 316, 1, 974.5, -1036.6 , 0 );
setMoveKey( spep_0 -3 + 318, 1, 771.5, -828.8 , 0 );
setMoveKey( spep_0 -3 + 320, 1, 654.2, -689.5 , 0 );
setMoveKey( spep_0 -3 + 322, 1, 546.1, -534.3 , 0 );
setMoveKey( spep_0 -3 + 324, 1, 481.3, -486.4 , 0 );
setMoveKey( spep_0 -3 + 326, 1, 405.4, -391.4 , 0 );
setMoveKey( spep_0 -3 + 328, 1, 386, -356 , 0 );
setMoveKey( spep_0 -3 + 330, 1, 386.4, -353.6 , 0 );
setMoveKey( spep_0 -3 + 332, 1, 323.7, -275.2 , 0 );
setMoveKey( spep_0 -3 + 334, 1, 309.1, -292.3 , 0 );
setMoveKey( spep_0 -3 + 336, 1, 317.2, -300.9 , 0 );
setMoveKey( spep_0 -3 + 338, 1, 292.6, -276.6 , 0 );
setMoveKey( spep_0 -3 + 340, 1, 293.1, -269.3 , 0 );
setMoveKey( spep_0 -3 + 342, 1, 296.3, -288.7 , 0 );
setMoveKey( spep_0 -3 + 344, 1, 266.7, -280.3 , 0 );
setMoveKey( spep_0 -3 + 346, 1, 271.3, -276 , 0 );
setMoveKey( spep_0 -3 + 348, 1, 266.3, -217.4 , 0 );
setMoveKey( spep_0 -3 + 350, 1, 261.2, -221.7 , 0 );
setMoveKey( spep_0 -3 + 352, 1, 262.1, -228 , 0 );
setMoveKey( spep_0 -3 + 354, 1, 269.3, -199.6 , 0 );
setMoveKey( spep_0 -3 + 356, 1, 291.3, -200.7 , 0 );
setMoveKey( spep_0 -3 + 358, 1, 368.4, -219.1 , 0 );
setMoveKey( spep_0 -3 + 359, 1, 368.4, -219.1 , 0 );
setMoveKey( spep_0 -3 + 360, 1, 458, -377.5 , 0 );
setMoveKey( spep_0 -3 + 362, 1, 194, -294.8 , 0 );
setMoveKey( spep_0 -3 + 364, 1, 160.6, -249.7 , 0 );
setMoveKey( spep_0 -3 + 366, 1, 223.3, -298.3 , 0 );
setMoveKey( spep_0 -3 + 368, 1, 149.2, -267.2 , 0 );
setMoveKey( spep_0 -3 + 370, 1, 187.5, -294.6 , 0 );
setMoveKey( spep_0 -3 + 372, 1, 152, -250.4 , 0 );
setMoveKey( spep_0 -3 + 374, 1, 146.5, -252.6 , 0 );
setMoveKey( spep_0 -3 + 376, 1, 155, -245.2 , 0 );
setMoveKey( spep_0 -3 + 378, 1, 155.5, -253.7 , 0 );
setMoveKey( spep_0 -3 + 380, 1, 159.2, -256.6 , 0 );
setMoveKey( spep_0 -3 + 382, 1, 173.2, -284.7 , 0 );
setMoveKey( spep_0 -3 + 384, 1, 176.3, -266.8 , 0 );
setMoveKey( spep_0 -3 + 386, 1, 194.5, -300.2 , 0 );
setMoveKey( spep_0 -3 + 388, 1, 236, -317 , 0 );
setMoveKey( spep_0 -3 + 390, 1, 272.9, -339.6 , 0 );
setMoveKey( spep_0 -3 + 392, 1, 364.3, -427.3 , 0 );
setMoveKey( spep_0 -3 + 394, 1, 438.3, -502.6 , 0 );
setMoveKey( spep_0 -3 + 396, 1, 467.1, -526.9 , 0 );
setMoveKey( spep_0 -3 + 398, 1, 473.5, -518.2 , 0 );
setMoveKey( spep_0 -3 + 399, 1, 473.5, -518.2 , 0 );
setMoveKey( spep_0 -3 + 400, 1, -463.9, 553.7 , 0 );
setMoveKey( spep_0 -3 + 402, 1, -456.8, 565.6 , 0 );
setMoveKey( spep_0 -3 + 404, 1, -451.3, 556.6 , 0 );
setMoveKey( spep_0 -3 + 406, 1, -443.8, 544.4 , 0 );
setMoveKey( spep_0 -3 + 408, 1, -433.3, 527.3 , 0 );
setMoveKey( spep_0 -3 + 410, 1, -417.2, 501.3 , 0 );
setMoveKey( spep_0 -3 + 412, 1, -395, 465.1 , 0 );
setMoveKey( spep_0 -3 + 414, 1, -354.2, 398.7 , 0 );
setMoveKey( spep_0 -3 + 416, 1, -125.8, 25.1 , 0 );
setMoveKey( spep_0 -3 + 418, 1, -26.2, -135 , 0 );
setMoveKey( spep_0 -3 + 420, 1, -26.2, -135 , 0 );
setMoveKey( spep_0 -3 + 472, 1, 152, -125.7 , 0 );
setMoveKey( spep_0 -3 + 474, 1, 145.2, -130.8 , 0 );
setMoveKey( spep_0 -3 + 476, 1, 151.1, -121.1 , 0 );
setMoveKey( spep_0 -3 + 478, 1, 149.9, -131.7 , 0 );
setMoveKey( spep_0 -3 + 480, 1, 149.8, -122.9 , 0 );
setMoveKey( spep_0 -3 + 482, 1, 152.9, -118.1 , 0 );
setMoveKey( spep_0 -3 + 484, 1, 155.1, -116.7 , 0 );
setMoveKey( spep_0 -3 + 486, 1, 151.5, -113.9 , 0 );
setMoveKey( spep_0 -3 + 488, 1, 145.2, -110.2 , 0 );
setMoveKey( spep_0 -3 + 490, 1, 149, -111.4 , 0 );
setMoveKey( spep_0 -3 + 492, 1, 145.6, -114.7 , 0 );
setMoveKey( spep_0 -3 + 494, 1, 142.7, -106.7 , 0 );
setMoveKey( spep_0 -3 + 496, 1, 151.7, -107.2 , 0 );
setMoveKey( spep_0 -3 + 498, 1, 140.3, -112.8 , 0 );
setMoveKey( spep_0 -3 + 500, 1, 144.2, -103.1 , 0 );
setMoveKey( spep_0 -3 + 502, 1, 141.3, -105.4 , 0 );
setMoveKey( spep_0 -3 + 513, 1, 141.3, -105.4 , 0 );
setMoveKey( spep_0 -3 + 514, 1, 144.7, -107.1 , 0 );
setMoveKey( spep_0 -3 + 516, 1, 141.3, -105.4 , 0 );
setMoveKey( spep_0 -3 + 518, 1, 143, -105.4 , 0 );
setMoveKey( spep_0 -3 + 520, 1, 141.3, -105.4 , 0 );
setMoveKey( spep_0 -3 + 533, 1, 141.3, -105.4 , 0 );
setMoveKey( spep_0 -3 + 534, 1, 190, 0 , 0 );
setMoveKey( spep_0 -3 + 601, 1, 190, 0 , 0 );
setMoveKey( spep_0 -3 + 602, 1, 100.8, 0 , 0 );
setMoveKey( spep_0 -3 + 604, 1, 98, 0 , 0 );
setMoveKey( spep_0 -3 + 606, 1, 95.7, 0 , 0 );
setMoveKey( spep_0 -3 + 608, 1, 93.8, 0 , 0 );
setMoveKey( spep_0 -3 + 610, 1, 92.2, 0 , 0 );
setMoveKey( spep_0 -3 + 612, 1, 91, 0 , 0 );
setMoveKey( spep_0 -3 + 614, 1, 90.1, 0 , 0 );
setMoveKey( spep_0 -3 + 616, 1, 89.4, 0 , 0 );
setMoveKey( spep_0 -3 + 618, 1, 88.8, 0 , 0 );
setMoveKey( spep_0 -3 + 620, 1, 88.4, 0 , 0 );
setMoveKey( spep_0 -3 + 622, 1, 88.2, 0 , 0 );
setMoveKey( spep_0 -3 + 624, 1, 88, 0 , 0 );
setMoveKey( spep_0 -3 + 626, 1, 87.9, 0 , 0 );
setMoveKey( spep_0 -3 + 628, 1, 87.8, 0 , 0 );
setMoveKey( spep_0 + 634, 1, 87.8, 0 , 0 );
setMoveKey( spep_0 + 640, 1, 87.8, 0 , 0 );

setScaleKey( spep_0 -3 + 312, 1, 13.74, 13.74 );
setScaleKey( spep_0 -3 + 314, 1, 9.94, 9.94 );
setScaleKey( spep_0 -3 + 316, 1, 8.07, 8.07 );
setScaleKey( spep_0 -3 + 318, 1, 6.89, 6.89 );
setScaleKey( spep_0 -3 + 320, 1, 6.11, 6.11 );
setScaleKey( spep_0 -3 + 322, 1, 5.56, 5.56 );
setScaleKey( spep_0 -3 + 324, 1, 5.17, 5.17 );
setScaleKey( spep_0 -3 + 326, 1, 4.86, 4.86 );
setScaleKey( spep_0 -3 + 328, 1, 4.6, 4.6 );
setScaleKey( spep_0 -3 + 330, 1, 4.4, 4.4 );
setScaleKey( spep_0 -3 + 332, 1, 4.3, 4.3 );
setScaleKey( spep_0 -3 + 334, 1, 4.17, 4.17 );
setScaleKey( spep_0 -3 + 336, 1, 4.06, 4.06 );
setScaleKey( spep_0 -3 + 338, 1, 4.02, 4.02 );
setScaleKey( spep_0 -3 + 340, 1, 3.96, 3.96 );
setScaleKey( spep_0 -3 + 342, 1, 3.9, 3.9 );
setScaleKey( spep_0 -3 + 344, 1, 3.92, 3.92 );
setScaleKey( spep_0 -3 + 346, 1, 3.87, 3.87 );
setScaleKey( spep_0 -3 + 348, 1, 3.9, 3.9 );
setScaleKey( spep_0 -3 + 350, 1, 3.89, 3.89 );
setScaleKey( spep_0 -3 + 352, 1, 3.89, 3.89 );
setScaleKey( spep_0 -3 + 354, 1, 4.01, 4.01 );
setScaleKey( spep_0 -3 + 356, 1, 4.14, 4.14 );
setScaleKey( spep_0 -3 + 358, 1, 4.53, 4.53 );
setScaleKey( spep_0 -3 + 359, 1, 4.53, 4.53 );
setScaleKey( spep_0 -3 + 360, 1, 1.82, 1.82 );
setScaleKey( spep_0 -3 + 362, 1, 1.57, 1.57 );
setScaleKey( spep_0 -3 + 364, 1, 1.35, 1.35 );
setScaleKey( spep_0 -3 + 366, 1, 1.45, 1.45 );
setScaleKey( spep_0 -3 + 368, 1, 1.29, 1.29 );
setScaleKey( spep_0 -3 + 370, 1, 1.29, 1.29 );
setScaleKey( spep_0 -3 + 372, 1, 1.27, 1.27 );
setScaleKey( spep_0 -3 + 376, 1, 1.27, 1.27 );
setScaleKey( spep_0 -3 + 378, 1, 1.28, 1.28 );
setScaleKey( spep_0 -3 + 380, 1, 1.29, 1.29 );
setScaleKey( spep_0 -3 + 382, 1, 1.31, 1.31 );
setScaleKey( spep_0 -3 + 384, 1, 1.34, 1.34 );
setScaleKey( spep_0 -3 + 386, 1, 1.39, 1.39 );
setScaleKey( spep_0 -3 + 388, 1, 1.44, 1.44 );
setScaleKey( spep_0 -3 + 390, 1, 1.54, 1.54 );
setScaleKey( spep_0 -3 + 392, 1, 1.75, 1.75 );
setScaleKey( spep_0 -3 + 394, 1, 1.9, 1.9 );
setScaleKey( spep_0 -3 + 396, 1, 1.95, 1.95 );
setScaleKey( spep_0 -3 + 398, 1, 1.98, 1.98 );
setScaleKey( spep_0 -3 + 399, 1, 1.98, 1.98 );
setScaleKey( spep_0 -3 + 400, 1, 0.15, 0.15 );
setScaleKey( spep_0 -3 + 402, 1, 0.16, 0.16 );
setScaleKey( spep_0 -3 + 404, 1, 0.16, 0.16 );
setScaleKey( spep_0 -3 + 406, 1, 0.17, 0.17 );
setScaleKey( spep_0 -3 + 408, 1, 0.18, 0.18 );
setScaleKey( spep_0 -3 + 410, 1, 0.2, 0.2 );
setScaleKey( spep_0 -3 + 412, 1, 0.22, 0.22 );
setScaleKey( spep_0 -3 + 414, 1, 0.26, 0.26 );
setScaleKey( spep_0 -3 + 416, 1, 0.5, 0.5 );
setScaleKey( spep_0 -3 + 418, 1, 0.6, 0.6 );
setScaleKey( spep_0 -3 + 420, 1, 0.6, 0.6 );
setScaleKey( spep_0 -3 + 472, 1, 2.24, 2.24 );
setScaleKey( spep_0 -3 + 513, 1, 2.24, 2.24 );
setScaleKey( spep_0 -3 + 514, 1, 2.24, 2.24 );
setScaleKey( spep_0 -3 + 533, 1, 2.24, 2.24 );
setScaleKey( spep_0 -3 + 534, 1, 1.3, 1.3 );
setScaleKey( spep_0 -3 + 601, 1, 1.3, 1.3 );
setScaleKey( spep_0 -3 + 602, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 634, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 640, 1, 1.3, 1.3 );

setRotateKey( spep_0 -3 + 312, 1, 10 );
setRotateKey( spep_0 -3 + 359, 1, 10 );
setRotateKey( spep_0 -3 + 360, 1, -75 );
setRotateKey( spep_0 -3 + 362, 1, -75.9 );
setRotateKey( spep_0 -3 + 364, 1, -76 );
setRotateKey( spep_0 -3 + 374, 1, -76 );
setRotateKey( spep_0 -3 + 376, 1, -75.9 );
setRotateKey( spep_0 -3 + 378, 1, -75.9 );
setRotateKey( spep_0 -3 + 380, 1, -75.6 );
setRotateKey( spep_0 -3 + 382, 1, -74.9 );
setRotateKey( spep_0 -3 + 384, 1, -74 );
setRotateKey( spep_0 -3 + 386, 1, -72.6 );
setRotateKey( spep_0 -3 + 388, 1, -70.6 );
setRotateKey( spep_0 -3 + 390, 1, -67.3 );
setRotateKey( spep_0 -3 + 392, 1, -58 );
setRotateKey( spep_0 -3 + 394, 1, -49.4 );
setRotateKey( spep_0 -3 + 396, 1, -45.9 );
setRotateKey( spep_0 -3 + 398, 1, -45.1 );
setRotateKey( spep_0 -3 + 399, 1, -45.1 );
setRotateKey( spep_0 -3 + 400, 1, 29.8 );
setRotateKey( spep_0 -3 + 402, 1, 29.7 );
setRotateKey( spep_0 -3 + 404, 1, 29.6 );
setRotateKey( spep_0 -3 + 406, 1, 29.4 );
setRotateKey( spep_0 -3 + 408, 1, 29.2 );
setRotateKey( spep_0 -3 + 410, 1, 28.8 );
setRotateKey( spep_0 -3 + 412, 1, 28.3 );
setRotateKey( spep_0 -3 + 414, 1, 27.4 );
setRotateKey( spep_0 -3 + 416, 1, 22.2 );
setRotateKey( spep_0 -3 + 418, 1, 20 );
setRotateKey( spep_0 -3 + 420, 1, 20 );
setRotateKey( spep_0 -3 + 472, 1, 0 );
setRotateKey( spep_0 -3 + 513, 1, 0 );
setRotateKey( spep_0 -3 + 514, 1, 0 );
setRotateKey( spep_0 -3 + 533, 1, 0 );
setRotateKey( spep_0 -3 + 534, 1, 0 );
setRotateKey( spep_0 -3 + 601, 1, 0 );
setRotateKey( spep_0 -3 + 602, 1, 0 );
setRotateKey( spep_0 + 634, 1, 0 );
setRotateKey( spep_0 + 640, 1, 0 );

setBlendColor( spep_0 -3 + 472, 1, 2, 0, 0, 0, 1.0 );
setBlendColor( spep_0 -3 + 492, 1, 2, 0, 0, 0, 1.0 );
setBlendColor( spep_0 -3 + 494, 1, 2, 0.5, 0.25, 0, 0.8 );
setBlendColor( spep_0 -3 + 496, 1, 2, 0.5, 0.25, 0, 0.5 );
setBlendColor( spep_0 -3 + 498, 1, 2, 0.5, 0.25, 0, 0.2 );
setBlendColor( spep_0 -3 + 500, 1, 2, 0.5, 0.25, 0, 0 );

-- ** 音 ** --
--ブロリーダッシュ
SE5 = playSe( spep_0 + 228, 9 ); 
stopSe( spep_0 + 282, SE5, 0 );

playSe( spep_0 + 228, 1072 ); 

SE6 = playSe( spep_0 + 233, 1044 ); 
setSeVolume( spep_0 + 233, 1044, 50 );
stopSe( spep_0 + 352, SE6, 0 );

SE7 = playSe( spep_0 + 245, 1144 ); 
setSeVolume( spep_0 + 245, 1144, 0 );
setSeVolume( spep_0 + 263, 1144, 5 );
setSeVolume( spep_0 + 268, 1144, 8 );
setSeVolume( spep_0 + 274, 1144, 10 );
setSeVolume( spep_0 + 280, 1144, 12 );
setSeVolume( spep_0 + 284, 1144, 14 );
setSeVolume( spep_0 + 288, 1144, 16 );
setSeVolume( spep_0 + 293, 1144, 18 );
stopSe( spep_0 + 362, SE7, 0 );

SE8 = playSe( spep_0 + 245, 1215 ); 
setSeVolume( spep_0 + 245, 1215, 35 );
stopSe( spep_0 + 353, SE8, 0 );

playSe( spep_0 + 260, 1004 ); 

--カメラ引く
SE9 = playSe( spep_0 + 286, 9 ); 
setSeVolume( spep_0 + 286, 9, 0 );
setSeVolume( spep_0 + 297, 9, 10 );
setSeVolume( spep_0 + 300, 9, 30 );
setSeVolume( spep_0 + 302, 9, 60 );
setSeVolume( spep_0 + 306, 9, 80 );
setSeVolume( spep_0 + 309, 9, 100 );
setSeVolume( spep_0 + 321, 9, 100 );
setSeVolume( spep_0 + 328, 9, 92 );
setSeVolume( spep_0 + 336, 9, 78 );
setSeVolume( spep_0 + 340, 9, 70 );
setSeVolume( spep_0 + 348, 9, 56 );
setSeVolume( spep_0 + 356, 9, 32 );
setSeVolume( spep_0 + 364, 9, 10 );
setSeVolume( spep_0 + 379, 9, 0 );
stopSe( spep_0 + 379, SE9, 0 );

SE10 = playSe( spep_0 + 296, 1116 ); 
stopSe( spep_0 + 325, SE10, 19 );

SE11 = playSe( spep_0 + 296, 1175 ); 
setSeVolume( spep_0 + 296, 1175, 10 );
setSeVolume( spep_0 + 346, 1175, 10 );
setSeVolume( spep_0 + 354, 1175, 6 );
setSeVolume( spep_0 + 362, 1175, 4 );
setSeVolume( spep_0 + 370, 1175, 0 );
stopSe( spep_0 + 370, SE11, 0 );

playSe( spep_0 + 302, 1182 ); 
setSeVolume( spep_0 + 302, 1182, 0 );
setSeVolume( spep_0 + 308, 1182, 43 );
setSeVolume( spep_0 + 310, 1182, 65 );
setSeVolume( spep_0 + 312, 1182, 100 );
setSeVolume( spep_0 + 314, 1182, 120 );
setSeVolume( spep_0 + 315, 1182, 126 );

--パンチ
playSe( spep_0 + 348, 1003 ); 
playSe( spep_0 + 358, 1009 ); 
playSe( spep_0 + 358, 1120 ); 

--敵が飛ぶ
SE12 = playSe( spep_0 + 365, 1121 ); 
setSeVolume( spep_0 + 365, 1121, 0 );
setSeVolume( spep_0 + 384, 1121, 20 );
setSeVolume( spep_0 + 387, 1121, 50 );
stopSe( spep_0 + 422, SE12, 0 );
playSe( spep_0 + 384, 1232 ); 

--地面に衝突
playSe( spep_0 + 417, 1159 ); 

--レモ近づく
SE13 = playSe( spep_0 + 495, 13 ); 
setSeVolume( spep_0 + 495, 13, 0 );
setSeVolume( spep_0 + 510, 13, 12 );
setSeVolume( spep_0 + 514, 13, 25 );
setSeVolume( spep_0 + 526, 13, 20 );
setSeVolume( spep_0 + 532, 13, 16 );
setSeVolume( spep_0 + 548, 13, 12 );
setSeVolume( spep_0 + 556, 13, 6 );
setSeVolume( spep_0 + 561, 13, 0 );
stopSe( spep_0 + 561, SE13, 0 );

SE14 = playSe( spep_0 + 508, 1113 ); 
setSeVolume( spep_0 + 508, 1113, 158 );
stopSe( spep_0 + 523, SE14, 0 );

playSe( spep_0 + 508, 36 ); 
setSeVolume( spep_0 + 508, 36, 71 );

SE15 = playSe( spep_0 + 508, 48 ); 
stopSe( spep_0 + 530, SE15, 30 );

playSe( spep_0 + 560, 1003 ); 
setSeVolume( spep_0 + 560, 1003, 71 );

--ブロリー止めに入る
SE16 = playSe( spep_0 + 596, 8 ); 

-- ** 次の準備 ** --
spep_1 = spep_0 + 634;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_1 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_1 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_1 + 0, shuchusen, 0 );
setEffRotateKey( spep_1 + 90, shuchusen, 0 );

setEffAlphaKey( spep_1 + 0, shuchusen, 255 );
setEffAlphaKey( spep_1 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );

--ブロリー止めに入る
stopSe( spep_1 + 24, SE16, 0 );

--銃口が光る
playSe( spep_1 + 7, 15 ); 
setSeVolume( spep_1 + 7, 15, 0 );
playSe( spep_1 + 88, 1042 ); 

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 次の準備 ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

spep_2 = spep_1 + 94;

------------------------------------------------------
-- チライが銃を撃つ〜フィニッシュ(364F)
------------------------------------------------------

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_03x, 0x100, -1, 0, 0, 0 );  --チライが銃を撃つ〜フィニッシュ(ef_003)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 364, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 364, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 364, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 364, finish_f, 255 );

finish_b = entryEffect( spep_2 + 0, SP_04x, 0x80, -1, 0, 0, 0 );  --チライが銃を撃つ〜フィニッシュ(ef_004)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 364, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 364, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_b, 0 );
setEffRotateKey( spep_2 + 364, finish_b, 0 );
setEffAlphaKey( spep_2 + 0, finish_b, 255 );
setEffAlphaKey( spep_2 + 364, finish_b, 255 );

-- ** 書き文字エントリー ** --
ctbi = entryEffectLife( spep_2 -3 + 74,  10024, 26, 0x100, -1, 0, -90.5, 176.2 );  --ビッ
setEffMoveKey( spep_2 -3 + 74, ctbi, -90.5, 176.2 , 0 );
setEffMoveKey( spep_2 -3 + 76, ctbi, -125.9, 218.9 , 0 );
setEffMoveKey( spep_2 -3 + 78, ctbi, -141.8, 246.3 , 0 );
setEffMoveKey( spep_2 -3 + 80, ctbi, -141.8, 246.3 , 0 );
setEffMoveKey( spep_2 -3 + 82, ctbi, -158, 267.2 , 0 );
setEffMoveKey( spep_2 -3 + 84, ctbi, -153, 261 , 0 );
setEffMoveKey( spep_2 -3 + 86, ctbi, -171, 273.8 , 0 );
setEffMoveKey( spep_2 -3 + 88, ctbi, -169.9, 284.2 , 0 );
setEffMoveKey( spep_2 -3 + 90, ctbi, -174.1, 276.3 , 0 );
setEffMoveKey( spep_2 -3 + 92, ctbi, -182, 297.2 , 0 );
setEffMoveKey( spep_2 -3 + 94, ctbi, -179.3, 287.5 , 0 );
setEffMoveKey( spep_2 -3 + 96, ctbi, -188.7, 298 , 0 );
setEffMoveKey( spep_2 -3 + 98, ctbi, -185, 290.8 , 0 );
setEffMoveKey( spep_2 -3 + 100, ctbi, -186.1, 291 , 0 );

setEffScaleKey( spep_2 -3 + 74, ctbi, 0.95, 0.82 );
setEffScaleKey( spep_2 -3 + 76, ctbi, 1.53, 1.34 );
setEffScaleKey( spep_2 -3 + 78, ctbi, 2.08, 1.83 );
setEffScaleKey( spep_2 -3 + 80, ctbi, 2.08, 1.83 );
setEffScaleKey( spep_2 -3 + 82, ctbi, 2.18, 1.91 );
setEffScaleKey( spep_2 -3 + 84, ctbi, 2.26, 1.98 );
setEffScaleKey( spep_2 -3 + 86, ctbi, 2.34, 2.04 );
setEffScaleKey( spep_2 -3 + 88, ctbi, 2.4, 2.09 );
setEffScaleKey( spep_2 -3 + 90, ctbi, 2.46, 2.14 );
setEffScaleKey( spep_2 -3 + 92, ctbi, 2.5, 2.17 );
setEffScaleKey( spep_2 -3 + 94, ctbi, 2.54, 2.2 );
setEffScaleKey( spep_2 -3 + 96, ctbi, 2.56, 2.22 );
setEffScaleKey( spep_2 -3 + 98, ctbi, 2.58, 2.24 );
setEffScaleKey( spep_2 -3 + 100, ctbi, 2.58, 2.24 );

setEffRotateKey( spep_2 -3 + 74, ctbi, 0 +20 );
setEffRotateKey( spep_2 -3 + 100, ctbi, 0 +20 );

setEffAlphaKey( spep_2 -3 + 74, ctbi, 255 );
setEffAlphaKey( spep_2 -3 + 80, ctbi, 255 );
setEffAlphaKey( spep_2 -3 + 82, ctbi, 211 );
setEffAlphaKey( spep_2 -3 + 84, ctbi, 173 );
setEffAlphaKey( spep_2 -3 + 86, ctbi, 138 );
setEffAlphaKey( spep_2 -3 + 88, ctbi, 108 );
setEffAlphaKey( spep_2 -3 + 90, ctbi, 83 );
setEffAlphaKey( spep_2 -3 + 92, ctbi, 63 );
setEffAlphaKey( spep_2 -3 + 94, ctbi, 47 );
setEffAlphaKey( spep_2 -3 + 96, ctbi, 35 );
setEffAlphaKey( spep_2 -3 + 98, ctbi, 28 );
setEffAlphaKey( spep_2 -3 + 100, ctbi, 26 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_2 + 170 -3, 906, 98, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 170 -3, shuchusen1, 98, 20 );

setEffMoveKey( spep_2 + 170 -3, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_2 + 268 -3, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_2 + 170 -3, shuchusen1, 1.3, 1.3 );
setEffScaleKey( spep_2 + 268 -3, shuchusen1, 1.3, 1.3 );

setEffRotateKey( spep_2 + 170 -3, shuchusen1, 0 );
setEffRotateKey( spep_2 + 268 -3, shuchusen1, 0 );

setEffAlphaKey( spep_2 + 170 -3, shuchusen1, 100 );
setEffAlphaKey( spep_2 + 196 -3, shuchusen1, 255 );
setEffAlphaKey( spep_2 + 267 -3, shuchusen1, 255 );
setEffAlphaKey( spep_2 + 268 -3, shuchusen1, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 102, 1, 1 );
setDisp( spep_2 -3 + 150, 1, 0 );
changeAnime( spep_2 -3 + 102, 1, 111 );
changeAnime( spep_2 -3 + 103, 1, 111 );
changeAnime( spep_2 -3 + 104, 1, 111 );
changeAnime( spep_2 -3 + 105, 1, 111 );
changeAnime( spep_2 -3 + 106, 1, 111 );
changeAnime( spep_2 -3 + 107, 1, 111 );
changeAnime( spep_2 -3 + 108, 1, 111 );
changeAnime( spep_2 -3 + 109, 1, 111 );
changeAnime( spep_2 -3 + 110, 1, 111 );
changeAnime( spep_2 -3 + 111, 1, 111 );
changeAnime( spep_2 -3 + 112, 1, 111 );
changeAnime( spep_2 -3 + 113, 1, 111 );
changeAnime( spep_2 -3 + 114, 1, 111 );
changeAnime( spep_2 -3 + 115, 1, 111 );
changeAnime( spep_2 -3 + 116, 1, 111 );
changeAnime( spep_2 -3 + 117, 1, 111 );
changeAnime( spep_2 -3 + 118, 1, 106 );

setMoveKey( spep_2 -3 + 102, 1, 81.5, 0 , 0 );
setMoveKey( spep_2 -3 + 104, 1, 78.2, 0 , 0 );
setMoveKey( spep_2 -3 + 106, 1, 74.8, 0 , 0 );
setMoveKey( spep_2 -3 + 108, 1, 71.5, 0 , 0 );
setMoveKey( spep_2 -3 + 110, 1, 68.2, 0 , 0 );
setMoveKey( spep_2 -3 + 112, 1, 64.8, 0 , 0 );
setMoveKey( spep_2 -3 + 114, 1, 61.5, 0 , 0 );
setMoveKey( spep_2 -3 + 116, 1, 61.5, 0 , 0 );
setMoveKey( spep_2 -3 + 117, 1, 61.5, 0 , 0 );
setMoveKey( spep_2 -3 + 118, 1, -62.3, 31.5 , 0 );
setMoveKey( spep_2 -3 + 120, 1, -73.4, 28.2 , 0 );
setMoveKey( spep_2 -3 + 122, 1, -90.4, 27.3 , 0 );
setMoveKey( spep_2 -3 + 124, 1, -141.7, 36.6 , 0 );
setMoveKey( spep_2 -3 + 126, 1, -231.9, 38 , 0 );
setMoveKey( spep_2 -3 + 128, 1, -388.8, 46.7 , 0 );
setMoveKey( spep_2 -3 + 130, 1, -464.3, 51 , 0 );
setMoveKey( spep_2 -3 + 132, 1, -509.9, 49.7 , 0 );
setMoveKey( spep_2 -3 + 134, 1, -539.5, 53.7 , 0 );
setMoveKey( spep_2 -3 + 136, 1, -560, 50.8 , 0 );
setMoveKey( spep_2 -3 + 138, 1, -579.6, 55.6 , 0 );
setMoveKey( spep_2 -3 + 140, 1, -593.6, 56.3 , 0 );
setMoveKey( spep_2 -3 + 142, 1, -604.8, 56.9 , 0 );
setMoveKey( spep_2 -3 + 144, 1, -614, 57.3 , 0 );
setMoveKey( spep_2 -3 + 146, 1, -621.5, 57.7 , 0 );
setMoveKey( spep_2 -3 + 148, 1, -627.5, 58 , 0 );
setMoveKey( spep_2 -3 + 150, 1, -632.5, 58.3 , 0 );
setMoveKey( spep_2 -3 + 152, 1, -636.5, 58.5 , 0 );
setMoveKey( spep_2 -3 + 154, 1, -639.6, 58.6 , 0 );
setMoveKey( spep_2 -3 + 156, 1, -642.1, 58.7 , 0 );
setMoveKey( spep_2 -3 + 158, 1, -644, 58.8 , 0 );
setMoveKey( spep_2 -3 + 160, 1, -645.4, 58.9 , 0 );
setMoveKey( spep_2 -3 + 162, 1, -646.4, 58.9 , 0 );
setMoveKey( spep_2 -3 + 164, 1, -647, 59 , 0 );
setMoveKey( spep_2 -3 + 166, 1, -647.3, 59 , 0 );
setMoveKey( spep_2 -3 + 168, 1, -647.4, 59 , 0 );
setMoveKey( spep_2 -3 + 170, 1, -800.4, 59 , 0 );

setScaleKey( spep_2 -3 + 102, 1, 1.3, 1.3 );
setScaleKey( spep_2 -3 + 116, 1, 1.3, 1.3 );
setScaleKey( spep_2 -3 + 117, 1, 1.3, 1.3 );
setScaleKey( spep_2 -3 + 118, 1, 1.37, 1.37 );
setScaleKey( spep_2 -3 + 120, 1, 1.3, 1.3 );
setScaleKey( spep_2 -3 + 170, 1, 1.3, 1.3 );

setRotateKey( spep_2 -3 + 102, 1, 0 );
setRotateKey( spep_2 -3 + 116, 1, 0 );
setRotateKey( spep_2 -3 + 117, 1, 0 );
setRotateKey( spep_2 -3 + 118, 1, -90 );
setRotateKey( spep_2 -3 + 120, 1, -90.6 );
setRotateKey( spep_2 -3 + 122, 1, -92.5 );
setRotateKey( spep_2 -3 + 124, 1, -96.4 );
setRotateKey( spep_2 -3 + 126, 1, -103.3 );
setRotateKey( spep_2 -3 + 128, 1, -115.1 );
setRotateKey( spep_2 -3 + 130, 1, -121.1 );
setRotateKey( spep_2 -3 + 132, 1, -124.4 );
setRotateKey( spep_2 -3 + 134, 1, -126.7 );
setRotateKey( spep_2 -3 + 136, 1, -128.5 );
setRotateKey( spep_2 -3 + 138, 1, -129.8 );
setRotateKey( spep_2 -3 + 140, 1, -130.9 );
setRotateKey( spep_2 -3 + 142, 1, -131.7 );
setRotateKey( spep_2 -3 + 144, 1, -132.4 );
setRotateKey( spep_2 -3 + 146, 1, -133 );
setRotateKey( spep_2 -3 + 148, 1, -133.5 );
setRotateKey( spep_2 -3 + 150, 1, -133.9 );
setRotateKey( spep_2 -3 + 152, 1, -134.2 );
setRotateKey( spep_2 -3 + 154, 1, -134.4 );
setRotateKey( spep_2 -3 + 156, 1, -134.6 );
setRotateKey( spep_2 -3 + 158, 1, -134.7 );
setRotateKey( spep_2 -3 + 160, 1, -134.8 );
setRotateKey( spep_2 -3 + 162, 1, -134.9 );
setRotateKey( spep_2 -3 + 164, 1, -135 );
setRotateKey( spep_2 -3 + 170, 1, -135 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 364, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--銃口が光る
setSeVolume( spep_2 + 0, 15, 10 );
setSeVolume( spep_2 + 2, 15, 36 );
setSeVolume( spep_2 + 4, 15, 79 );

--チライ表示
playSe( spep_2 + 24, 44 ); 
setSeVolume( spep_2 + 24, 44, 71 );

--ビーム発射
playSe( spep_2 + 66, 1016 ); 
SE13 = playSe( spep_2 + 70, 1177 ); 
setSeVolume( spep_2 + 70, 1177, 79 );
stopSe( spep_2 + 113, SE13, 0 );

--被弾
playSe( spep_2 + 109, 1023 ); 
playSe( spep_2 + 117, 1027 ); 
setSeVolume( spep_2 + 117, 1027, 63 );

--チライがニコッとする
playSe( spep_2 + 190, 1126 ); 
setSeVolume( spep_2 + 190, 1126, 0 );
setSeVolume( spep_2 + 220, 1126, 4 );
setSeVolume( spep_2 + 222, 1126, 10 );
setSeVolume( spep_2 + 224, 1126, 16 );

playSe( spep_2 + 219, 1042 ); 

--2人がびっくりする
playSe( spep_2 + 255, 1072 ); 

playSe( spep_2 + 273, 1182 ); 
setSeVolume( spep_2 + 273, 1182, 0 );
setSeVolume( spep_2 + 276, 1182, 10 );
setSeVolume( spep_2 + 280, 1182, 28 );
setSeVolume( spep_2 + 288, 1182, 42 );
setSeVolume( spep_2 + 292, 1182, 63 );

playSe( spep_2 + 274, 8 ); 
setSeVolume( spep_2 + 274, 8, 79 );

playSe( spep_2 + 282, 1051 ); 
setSeVolume( spep_2 + 282, 1051, 0 );
setSeVolume( spep_2 + 286, 1051, 10 );
setSeVolume( spep_2 + 287, 1051, 43 );
setSeVolume( spep_2 + 289, 1051, 63 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 242 );
endPhase( spep_2 + 362 );

end