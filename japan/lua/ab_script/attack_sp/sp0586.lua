--7018490:超サイヤ人孫悟空_新規：元気玉超サイヤ人
--sp_effect_b1_00090

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
SP_01=	154594	;--	前半
SP_02=	154595	;--	後半：奥
SP_03=	154596	;--	後半手前
SP_04=	154597	;--	KO

--てき
SP_01x=	154598	;--	前半	(敵)
SP_02x=	154599	;--	後半：奥	(敵)
SP_03x=	154600	;--	後半手前	(敵)
SP_04x=	154597	;--	KO	
------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

setDisp( 0, 0, 0);
changeAnime( 0, 0, 0);

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

setDisp( 0, 1, 0);
changeAnime( 0, 1, 100);

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

adjustAttackerLabel( 0, -80); 
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then
------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 前半
------------------------------------------------------
spep_0=0;

-- ** エフェクト等 ** --
first = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_0 + 0, first, 0, 0 , 0 );
setEffMoveKey( spep_0 + 422, first, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first, 1.0, 1.0 );
setEffScaleKey( spep_0 + 422, first, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first, 0 );
setEffRotateKey( spep_0 + 422, first, 0 );
setEffAlphaKey( spep_0 + 0, first, 255 );
setEffAlphaKey( spep_0 + 422, first, 255 );
setEffAlphaKey( spep_0 + 423, first, 0 );
setEffAlphaKey( spep_0 + 424, first, 0 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_0 + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0 + 0, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

se_1181 = playSe( spep_0 + 0, 1181 );
playSe( spep_0 + 12, 1018 );
se_1128 = playSe( spep_0 + 138, 1128 );
setSeVolume( spep_0 + 138, 1128, 0 );
setSeVolume( spep_0 + 256, 1128, 19 );
setSeVolume( spep_0 + 257, 1128, 38 );
setSeVolume( spep_0 + 258, 1128, 57 );
setSeVolume( spep_0 + 259, 1128, 79 );
se_1176 = playSe( spep_0 + 139, 1176 );
setSeVolume( spep_0 + 139, 1176, 63 );
SE0=playSe( spep_0 + 175, 1035 );
SE1=playSe( spep_0 + 208, 1036 );
setSeVolume( spep_0 + 208, 1036, 63 );



------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 230; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );

    --音を消す
    stopSe(  SP_dodge - 12, SE0, 0 );
    stopSe(  SP_dodge - 12, SE1, 0 );
    stopSe(  SP_dodge - 12, se_1181, 0 );
    stopSe(  SP_dodge - 12, se_1128, 0 );
    stopSe(  SP_dodge - 12, se_1176, 0 );

    pauseAll( SP_dodge, 67 );
    

    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,-1,  0,  0,  -350 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );   -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100, -1,  0,  0,  350 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);

    
    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 ); -- white fade
    setMoveKey( SP_dodge + 10,   0,-2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------
--SE
se_1036 = playSe( spep_0 + 232, 1036 );
setSeVolume( spep_0 + 232, 1036, 63 );
se_1158 = playSe( spep_0 + 241, 1158 );
setSeVolume( spep_0 + 241, 1158, 79 );
se_1044 = playSe( spep_0 + 250, 1044 );
se_1166 = playSe( spep_0 + 250, 1166 );
playSe( spep_0 + 254, 1171 );
playSe( spep_0 + 259, 1179 );
playSe( spep_0 + 340, 1036 );
setSeVolume( spep_0 + 340, 1036, 63 );
se_0017 = playSe( spep_0 + 352, 17 );
setSeVolume( spep_0 + 352, 17, 71 );
se_1190 = playSe( spep_0 + 352, 1190 );
playSe( spep_0 + 364, 1036 );
setSeVolume( spep_0 + 364, 1036, 63 );
se_1036 = playSe( spep_0 + 388, 1036 );
setSeVolume( spep_0 + 388, 1036, 63 );


stopSe( spep_0 + 398, se_1181, 0 );
stopSe( spep_0 + 398, se_1128, 0 );
stopSe( spep_0 + 398, se_1176, 0 );
stopSe( spep_0 + 245, se_1036, 0 );
stopSe( spep_0 + 398, se_1158, 0 );
stopSe( spep_0 + 326, se_1044, 34 );
stopSe( spep_0 + 320, se_1166, 46 );
stopSe( spep_0 + 422, se_0017, 0 );
stopSe( spep_0 + 422, se_1190, 0 );
stopSe( spep_0 + 422, se_1036, 0 );

--白フェード
entryFade( spep_0 + 412, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

--次の準備
spep_1=spep_0+422;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
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

--白フェード
entryFade( spep_1 + 82, 6, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
-- 後半
------------------------------------------------------
-- ** エフェクト等 ** --
letter_f = entryEffect( spep_2 + 0, SP_02, 0x80, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_2 + 0, letter_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 766, letter_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, letter_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 766, letter_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, letter_f, 0 );
setEffRotateKey( spep_2 + 766, letter_f, 0 );
setEffAlphaKey( spep_2 + 0, letter_f, 255 );
setEffAlphaKey( spep_2 + 766, letter_f, 255 );

-- ** エフェクト等 ** --
letter_b = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_2 + 0, letter_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 766, letter_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, letter_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 766, letter_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, letter_b, 0 );
setEffRotateKey( spep_2 + 766, letter_b, 0 );
setEffAlphaKey( spep_2 + 0, letter_b, 255 );
setEffAlphaKey( spep_2 + 766, letter_b, 255 );

--敵の動き
setDisp( spep_2 -3 +190, 1, 1 );
setDisp( spep_2  +247, 1, 0 );

changeAnime( spep_2 -3 + 190, 1, 104 );

setMoveKey( spep_2-3 + 190, 1, 174.3, -85.6 , 0 );
setMoveKey( spep_2 + 247, 1, 174.3, -85.6 , 0 );

setScaleKey( spep_2-3 + 190, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 247, 1, 0.7, 0.7 );

setRotateKey( spep_2-3 + 190, 1, 15.1 );
setRotateKey( spep_2 + 247, 1, 15.1 );

--敵の動き
setDisp( spep_2 -3 +312, 1, 1 );
setDisp( spep_2 -3  +342, 1, 0 );

changeAnime( spep_2 -3 + 312, 1, 118 );

setMoveKey( spep_2-3 + 312, 1, 352, -214.5 , 0 );
setMoveKey( spep_2-3 + 314, 1, 353.1, -214.9 , 0 );
setMoveKey( spep_2-3 + 316, 1, 356.6, -216.3 , 0 );
setMoveKey( spep_2-3 + 318, 1, 362.9, -218.7 , 0 );
setMoveKey( spep_2-3 + 320, 1, 372.3, -222.3 , 0 );
setMoveKey( spep_2-3 + 322, 1, 385.3, -227.3 , 0 );
setMoveKey( spep_2-3 + 324, 1, 402.5, -233.8 , 0 );
setMoveKey( spep_2-3 + 326, 1, 424.7, -242.4 , 0 );
setMoveKey( spep_2-3 + 328, 1, 453, -253.1 , 0 );
setMoveKey( spep_2-3 + 330, 1, 489, -266.9 , 0 );
setMoveKey( spep_2-3 + 332, 1, 534.8, -284.5 , 0 );
setMoveKey( spep_2-3 + 334, 1, 594, -307.2 , 0 );
setMoveKey( spep_2-3 + 336, 1, 672.6, -337.3 , 0 );
setMoveKey( spep_2-3 + 338, 1, 782.8, -379.4 , 0 );
setMoveKey( spep_2-3 + 340, 1, 955.3, -445.6 , 0 );
setMoveKey( spep_2-3 + 342, 1, 1319.2, -584.9 , 0 );

setScaleKey( spep_2-3 + 312, 1, 4, 4 );
setScaleKey( spep_2-3 + 314, 1, 4.01, 4.01 );
setScaleKey( spep_2-3 + 316, 1, 4.03, 4.03 );
setScaleKey( spep_2-3 + 318, 1, 4.07, 4.07 );
setScaleKey( spep_2-3 + 320, 1, 4.12, 4.12 );
setScaleKey( spep_2-3 + 322, 1, 4.2, 4.2 );
setScaleKey( spep_2-3 + 324, 1, 4.31, 4.31 );
setScaleKey( spep_2-3 + 326, 1, 4.44, 4.44 );
setScaleKey( spep_2-3 + 328, 1, 4.61, 4.61 );
setScaleKey( spep_2-3 + 330, 1, 4.83, 4.83 );
setScaleKey( spep_2-3 + 332, 1, 5.1, 5.1 );
setScaleKey( spep_2-3 + 334, 1, 5.46, 5.46 );
setScaleKey( spep_2-3 + 336, 1, 5.94, 5.94 );
setScaleKey( spep_2-3 + 338, 1, 6.61, 6.61 );
setScaleKey( spep_2-3 + 340, 1, 7.66, 7.66 );
setScaleKey( spep_2-3 + 342, 1, 9.87, 9.87 );

setRotateKey( spep_2-3 + 312, 1, 13 );
setRotateKey( spep_2-3 + 334, 1, 12.9 );
setRotateKey( spep_2-3 + 340, 1, 12.9 );
setRotateKey( spep_2-3 + 342, 1, 12.8 );

--敵の動き
setDisp( spep_2 -3 +432, 1, 1 );
setDisp( spep_2 -3  +556, 1, 0 );

changeAnime( spep_2 -3 + 432, 1, 108 );
changeAnime( spep_2 -3 + 488, 1, 106 );

a=95;
b=30;
c=30;
e=-10;

setMoveKey( spep_2-3 + 432, 1, 814.6-e, -299.2-a , 0 );
setMoveKey( spep_2-3 + 434, 1, 656.6-e, -245.7-a , 0 );
setMoveKey( spep_2-3 + 436, 1, 521.5-e, -199.8-a , 0 );
setMoveKey( spep_2-3 + 438, 1, 412.2-e, -162.8-a , 0 );
setMoveKey( spep_2-3 + 440, 1, 333.9-e, -136.2-a , 0 );
setMoveKey( spep_2-3 + 442, 1, 273.8-e, -115.8-a , 0 );
setMoveKey( spep_2-3 + 444, 1, 237.8-e, -103.5-a , 0 );
setMoveKey( spep_2-3 + 446, 1, 199.1-e, -47.3-a , 0 );
setMoveKey( spep_2-3 + 448, 1, 193.4-e, 2.2-a , 0 );
setMoveKey( spep_2-3 + 450, 1, 185.4-e, 72.3-a , 0 );
setMoveKey( spep_2-3 + 452, 1, 175-e, 163.2-a , 0 );
setMoveKey( spep_2-3 + 454, 1, 162.2-e, 274.9-a , 0 );
setMoveKey( spep_2-3 + 456, 1, 147.1-e, 407.2-a , 0 );
setMoveKey( spep_2-3 + 458, 1, 145.6-e, 398.6-a , 0 );
setMoveKey( spep_2-3 + 460, 1, 141.3-e, 375.3-a , 0 );
setMoveKey( spep_2-3 + 462, 1, 135.2-e, 342.3-a , 0 );
setMoveKey( spep_2-3 + 464, 1, 128.3-e, 304.8-a , 0 );
setMoveKey( spep_2-3 + 466, 1, 121.6-e, 268.3-a , 0 );
setMoveKey( spep_2-3 + 468, 1, 116-e, 238-a , 0 );
setMoveKey( spep_2-3 + 470, 1, 112.2-e, 217.6-a , 0 );
setMoveKey( spep_2-3 + 472, 1, 113.8-e, 207-a , 0 );
setMoveKey( spep_2-3 + 474, 1, 108.6-e, 204.1-a , 0 );
setMoveKey( spep_2-3 + 476, 1, 111.2-e, 192.1-a , 0 );
setMoveKey( spep_2-3 + 478, 1, 109.6-e, 182.6-a , 0 );
setMoveKey( spep_2-3 + 480, 1, 110.3-e, 168.4-a , 0 );
setMoveKey( spep_2-3 + 482, 1, 107.6-e, 155-a , 0 );
setMoveKey( spep_2-3 + 484, 1, 101.9-e, 135.1-a , 0 );
setMoveKey( spep_2-3 + 486, 1, 89.6-e, 123.2-a , 0 );
setMoveKey( spep_2-3 + 487, 1, 89.6-e, 123.2-a , 0 );
setMoveKey( spep_2-3 + 488, 1, 25.3-e, 116.5-a , 0 );
setMoveKey( spep_2-3 + 490, 1, 25.1-b+20, 106.2-c-60 , 0 );
setMoveKey( spep_2-3 + 492, 1, 25.5-b, 93.7-c-60 , 0 );

setMoveKey( spep_2-3 + 494, 1, 26.9-b-10, 76.9-c-50 , 0 );

setMoveKey( spep_2-3 + 496, 1, 29.4-b-10, 60.5-c-50 , 0 );
setMoveKey( spep_2-3 + 498, 1, 32.2-b-10, 43.2-c-30 , 0 );
setMoveKey( spep_2-3 + 500, 1, 29.5-b, 31.7-c-20 , 0 );
setMoveKey( spep_2-3 + 502, 1, 28.8-b, 19.6-c-20 , 0 );
setMoveKey( spep_2-3 + 504, 1, 30-b, 6-c-20 , 0 );
setMoveKey( spep_2-3 + 506, 1, 26.2-b+5, -2.4-c-10 , 0 );
setMoveKey( spep_2-3 + 508, 1, 28.2-b+5, -12.3-c , 0 );
setMoveKey( spep_2-3 + 510, 1, 26.2-b+10, -18.7-c , 0 );
setMoveKey( spep_2-3 + 512, 1, 26-b+10, -20.5-c , 0 );
setMoveKey( spep_2-3 + 514, 1, 27.1-b+10, -26.4-c , 0 );
setMoveKey( spep_2-3 + 516, 1, 28.5-b+10, -26-c , 0 );
setMoveKey( spep_2-3 + 518, 1, 26.4-b+10, -26.4-c , 0 );
setMoveKey( spep_2-3 + 520, 1, 29.3-b+10, -25.1-c , 0 );
setMoveKey( spep_2-3 + 522, 1, 26.7-b+10, -27-c , 0 );
setMoveKey( spep_2-3 + 524, 1, 27.9-b+10, -24.1-c , 0 );
setMoveKey( spep_2-3 + 526, 1, 27.8-b+10, -28.1-c , 0 );
setMoveKey( spep_2-3 + 528, 1, 27.7-b+10, -24.3-c , 0 );
setMoveKey( spep_2-3 + 530, 1, 27.9-b+10, -27.8-c , 0 );
setMoveKey( spep_2-3 + 532, 1, 27.4-b+10, -23.7-c , 0 );
setMoveKey( spep_2-3 + 534, 1, 29.9-b+10, -27.9-c , 0 );
setMoveKey( spep_2-3 + 536, 1, 24-b+10, -25.8-c , 0 );
setMoveKey( spep_2-3 + 538, 1, 30.1-b+10, -26.7-c , 0 );
setMoveKey( spep_2-3 + 540, 1, 24.2-b+10, -23.1-c , 0 );
setMoveKey( spep_2-3 + 542, 1, 30-b+10, -28.7 -c, 0 );
setMoveKey( spep_2-3 + 544, 1, 26.1-b+10, -23.4-c , 0 );
setMoveKey( spep_2-3 + 546, 1, 25.9-b+10, -31.6-c , 0 );
setMoveKey( spep_2-3 + 548, 1, 30.9-b+10, -19.7-c , 0 );
setMoveKey( spep_2-3 + 550, 1, 29.3-b+10, -33.3-c , 0 );
setMoveKey( spep_2-3 + 552, 1, 22.5-b+10, -22.8-c , 0 );
setMoveKey( spep_2-3 + 554, 1, 33.7-b+10, -31.2-c , 0 );
setMoveKey( spep_2-3 + 556, 1, 28.1-b+10, -25.8-c , 0 );

setScaleKey( spep_2-3 + 432, 1, 13.6, 13.6 );
setScaleKey( spep_2-3 + 434, 1, 11.35, 11.35 );
setScaleKey( spep_2-3 + 436, 1, 9.42, 9.42 );
setScaleKey( spep_2-3 + 438, 1, 7.86, 7.86 );
setScaleKey( spep_2-3 + 440, 1, 6.74, 6.74 );
setScaleKey( spep_2-3 + 442, 1, 5.89, 5.89 );
setScaleKey( spep_2-3 + 444, 1, 5.38, 5.38 );
setScaleKey( spep_2-3 + 446, 1, 5.22, 5.22 );
setScaleKey( spep_2-3 + 464, 1, 5.22, 5.22 );
setScaleKey( spep_2-3 + 466, 1, 5.21, 5.21 );
setScaleKey( spep_2-3 + 470, 1, 5.21, 5.21 );
setScaleKey( spep_2-3 + 472, 1, 5.17, 5.17 );
setScaleKey( spep_2-3 + 474, 1, 5.12, 5.12 );
setScaleKey( spep_2-3 + 476, 1, 4.96, 4.96 );
setScaleKey( spep_2-3 + 478, 1, 4.8, 4.8 );
setScaleKey( spep_2-3 + 480, 1, 4.59, 4.59 );
setScaleKey( spep_2-3 + 482, 1, 4.38, 4.38 );
setScaleKey( spep_2-3 + 484, 1, 4.12, 4.12 );
setScaleKey( spep_2-3 + 486, 1, 3.91, 3.91 );
setScaleKey( spep_2-3 + 487, 1, 3.91, 3.91 );
setScaleKey( spep_2-3 + 488, 1, 3.65, 3.65 );
setScaleKey( spep_2-3 + 490, 1, 3.39, 3.39 );
setScaleKey( spep_2-3 + 492, 1, 3.13, 3.13 );
setScaleKey( spep_2-3 + 494, 1, 2.87, 2.87 );
setScaleKey( spep_2-3 + 496, 1, 2.61, 2.61 );
setScaleKey( spep_2-3 + 498, 1, 2.35, 2.35 );
setScaleKey( spep_2-3 + 500, 1, 2.14, 2.14 );
setScaleKey( spep_2-3 + 502, 1, 1.93, 1.93 );
setScaleKey( spep_2-3 + 504, 1, 1.72, 1.72 );
setScaleKey( spep_2-3 + 506, 1, 1.57, 1.57 );
setScaleKey( spep_2-3 + 508, 1, 1.41, 1.41 );
setScaleKey( spep_2-3 + 510, 1, 1.31, 1.31 );
setScaleKey( spep_2-3 + 512, 1, 1.25, 1.25 );
setScaleKey( spep_2-3 + 514, 1, 1.2, 1.2 );
setScaleKey( spep_2-3 + 556, 1, 1.2, 1.2 );

setRotateKey( spep_2-3 + 432, 1, -0.7 );
setRotateKey( spep_2-3 + 434, 1, -6.9 );
setRotateKey( spep_2-3 + 436, 1, -12.2 );
setRotateKey( spep_2-3 + 438, 1, -16.5 );
setRotateKey( spep_2-3 + 440, 1, -19.5 );
setRotateKey( spep_2-3 + 442, 1, -21.9 );
setRotateKey( spep_2-3 + 444, 1, -23.3 );
setRotateKey( spep_2-3 + 446, 1, -23.9 );
setRotateKey( spep_2-3 + 448, 1, -24.2 );
setRotateKey( spep_2-3 + 450, 1, -24.7 );
setRotateKey( spep_2-3 + 452, 1, -25.3 );
setRotateKey( spep_2-3 + 454, 1, -26 );
setRotateKey( spep_2-3 + 456, 1, -26.9 );
setRotateKey( spep_2-3 + 458, 1, -26.8 );
setRotateKey( spep_2-3 + 460, 1, -26.7 );
setRotateKey( spep_2-3 + 462, 1, -26.6 );
setRotateKey( spep_2-3 + 464, 1, -26.5 );
setRotateKey( spep_2-3 + 466, 1, -26.3 );
setRotateKey( spep_2-3 + 468, 1, -26.2 );
setRotateKey( spep_2-3 + 470, 1, -26.1 );
setRotateKey( spep_2-3 + 472, 1, -25.9 );
setRotateKey( spep_2-3 + 474, 1, -25.5 );
setRotateKey( spep_2-3 + 476, 1, -24.9 );
setRotateKey( spep_2-3 + 478, 1, -24 );
setRotateKey( spep_2-3 + 480, 1, -23 );
setRotateKey( spep_2-3 + 482, 1, -21.9 );
setRotateKey( spep_2-3 + 484, 1, -17.1 );
setRotateKey( spep_2-3 + 486, 1, -12.4 );
setRotateKey( spep_2-3 + 487, 1, -12.4 );
setRotateKey( spep_2-3 + 488, 1, -67.9 );
setRotateKey( spep_2-3 + 490, 1, -56.6 );
setRotateKey( spep_2-3 + 492, 1, -48.5 );
setRotateKey( spep_2-3 + 494, 1, -47.3 );
setRotateKey( spep_2-3 + 496, 1, -46 );
setRotateKey( spep_2-3 + 498, 1, -44.8 );
setRotateKey( spep_2-3 + 500, 1, -43.7 );
setRotateKey( spep_2-3 + 502, 1, -42.6 );
setRotateKey( spep_2-3 + 504, 1, -41.6 );
setRotateKey( spep_2-3 + 506, 1, -40.8 );
setRotateKey( spep_2-3 + 508, 1, -40 );
setRotateKey( spep_2-3 + 510, 1, -39.5 );
setRotateKey( spep_2-3 + 512, 1, -39.2 );
setRotateKey( spep_2-3 + 514, 1, -39.1 );
setRotateKey( spep_2-3 + 516, 1, -39 );
setRotateKey( spep_2-3 + 518, 1, -38.9 );
setRotateKey( spep_2-3 + 520, 1, -38.9 );
setRotateKey( spep_2-3 + 522, 1, -38.8 );
setRotateKey( spep_2-3 + 524, 1, -38.7 );
setRotateKey( spep_2-3 + 526, 1, -38.6 );
setRotateKey( spep_2-3 + 528, 1, -38.6 );
setRotateKey( spep_2-3 + 530, 1, -38.5 );
setRotateKey( spep_2-3 + 532, 1, -38.4 );
setRotateKey( spep_2-3 + 534, 1, -38.4 );
setRotateKey( spep_2-3 + 536, 1, -38.3 );
setRotateKey( spep_2-3 + 538, 1, -38.2 );
setRotateKey( spep_2-3 + 540, 1, -38.1 );
setRotateKey( spep_2-3 + 542, 1, -38.1 );
setRotateKey( spep_2-3 + 544, 1, -38 );
setRotateKey( spep_2-3 + 556, 1, -38 );

se_1181 = playSe( spep_2 + 0, 1181 );
se_1176 = playSe( spep_2 + 0, 1176 );
playSe( spep_2 + 42, 1206 );
se_1044 = playSe( spep_2 + 97, 1044 );
setSeVolume( spep_2 + 42,1044,3.5);
setSeVolume( spep_2 + 43,1044,7);
setSeVolume( spep_2 + 44,1044,10.5);
setSeVolume( spep_2 + 45,1044,14);
setSeVolume( spep_2 + 46,1044,17.5);
setSeVolume( spep_2 + 47,1044,21);
setSeVolume( spep_2 + 48,1044,24.5);
setSeVolume( spep_2 + 49,1044,28);
setSeVolume( spep_2 + 50,1044,31.5);
setSeVolume( spep_2 + 51,1044,35);
setSeVolume( spep_2 + 52,1044,38.5);
setSeVolume( spep_2 + 53,1044,42);
setSeVolume( spep_2 + 54,1044,45.5);
setSeVolume( spep_2 + 55,1044,49);
setSeVolume( spep_2 + 56,1044,52.5);
setSeVolume( spep_2 + 57,1044,56);
setSeVolume( spep_2 + 58,1044,59.5);
setSeVolume( spep_2 + 59,1044,63);
setSeVolume( spep_2 + 60,1044,66.5);
setSeVolume( spep_2 + 61,1044,70);
setSeVolume( spep_2 + 62,1044,73.5);
setSeVolume( spep_2 + 63,1044,77);
setSeVolume( spep_2 + 64,1044,80.5);
setSeVolume( spep_2 + 65,1044,84);
setSeVolume( spep_2 + 66,1044,87.5);
setSeVolume( spep_2 + 67,1044,91);
setSeVolume( spep_2 + 68,1044,94.5);
setSeVolume( spep_2 + 69,1044,98);
setSeVolume( spep_2 + 70,1044,101.5);
setSeVolume( spep_2 + 71,1044,105);
setSeVolume( spep_2 + 72,1044,108.5);
setSeVolume( spep_2 + 73,1044,112);
setSeVolume( spep_2 + 74,1044,115.5);
setSeVolume( spep_2 + 75,1044,119);
setSeVolume( spep_2 + 76,1044,122.5);
setSeVolume( spep_2 + 77,1044,126);
setSeVolume( spep_2 + 78,1044,129.5);
setSeVolume( spep_2 + 79,1044,133);
setSeVolume( spep_2 + 80,1044,136.5);
setSeVolume( spep_2 + 81,1044,140);
setSeVolume( spep_2 + 82,1044,143.5);
setSeVolume( spep_2 + 83,1044,147);
setSeVolume( spep_2 + 84,1044,150.5);
setSeVolume( spep_2 + 85,1044,154);
setSeVolume( spep_2 + 86,1044,157.5);
setSeVolume( spep_2 + 87,1044,161);
setSeVolume( spep_2 + 88,1044,164.5);
setSeVolume( spep_2 + 89,1044,168);
setSeVolume( spep_2 + 90,1044,171.5);
setSeVolume( spep_2 + 91,1044,175);
setSeVolume( spep_2 + 92,1044,178.5);
setSeVolume( spep_2 + 93,1044,182);
setSeVolume( spep_2 + 94,1044,185.5);
setSeVolume( spep_2 + 95,1044,189);
setSeVolume( spep_2 + 96,1044,192.5);
setSeVolume( spep_2 + 97,1044,200);
setSeVolume( spep_2 + 192,1044,32);
se_1166 = playSe( spep_2 + 150, 1166 );
setSeVolume( spep_2 + 150, 1166, 18 );
playSe( spep_2 + 162, 1068 );
playSe( spep_2 + 191, 1036 );
setSeVolume( spep_2 + 191, 1036, 40 );
playSe( spep_2 + 215, 1036 );
setSeVolume( spep_2 + 215, 1036, 40 );
se_1036 = playSe( spep_2 + 239, 1036 );
setSeVolume( spep_2 + 239, 1036, 40 );
playSe( spep_2 + 248, 1036 );
setSeVolume( spep_2 + 248, 1036, 141 );
playSe( spep_2 + 272, 1036 );
setSeVolume( spep_2 + 272, 1036, 141 );
playSe( spep_2 + 296, 1036 );
setSeVolume( spep_2 + 296, 1036, 141 );
se_1072 = playSe( spep_2 + 310, 1072 );
playSe( spep_2 + 319, 1036 );
playSe( spep_2 + 343, 1036 );
setSeVolume( spep_2 + 343, 1036, 56 );
playSe( spep_2 + 347, 1004 );
playSe( spep_2 + 367, 1036 );
setSeVolume( spep_2 + 367, 1036, 56 );
playSe( spep_2 + 379, 1012 );
playSe( spep_2 + 383, 1187 );
setSeVolume( spep_2 + 383, 1187, 89 );
playSe( spep_2 + 383, 1123 );
setSeVolume( spep_2 + 383, 1123, 56 );
playSe( spep_2 + 389, 1117 );
setSeVolume( spep_2 + 389, 1117, 158 );
playSe( spep_2 + 391, 1036 );
setSeVolume( spep_2 + 391, 1036, 56 );
playSe( spep_2 + 411, 1021 );
setSeVolume( spep_2 + 411, 1021, 79 );
playSe( spep_2 + 455, 40 );
playSe( spep_2 + 559, 1126 );
setSeVolume( spep_2 + 559, 1126, 40 );
playSe( spep_2 + 559, 1159 );
setSeVolume( spep_2 + 559, 1159, 63 );
playSe( spep_2 + 559, 1023 );
--playSe( spep_2 + 604, 1036 );
--setSeVolume( spep_2 + 604, 1036, 141 );
--playSe( spep_2 + 628, 1036 );
--setSeVolume( spep_2 + 628, 1036, 141 );

stopSe( spep_2 + 42, se_1181, 0 );
stopSe( spep_2 + 42, se_1176, 0 );
stopSe( spep_2 + 319, se_1044, 0 );
stopSe( spep_2 + 319, se_1166, 0 );
stopSe( spep_2 + 248, se_1036, 0 );
stopSe( spep_2 + 370, se_1072, 0 );
stopSe( spep_2 + 630, se_1036, 0 );


ko = entryEffectLife(  spep_2+646,  SP_04,  300,  0x100,  -1, 0, 0, 0);

setEffMoveKey(  spep_2+646,  ko,  0,  0);
setEffMoveKey(  spep_2+946,  ko,  0,  0);
setEffScaleKey(  spep_2+646,  ko,  1.0,  1.0);
setEffScaleKey(  spep_2+946,  ko,  1.0,  1.0);
setEffRotateKey(  spep_2+646,  ko,  0);
setEffRotateKey(  spep_2+946,  ko,  0);
setEffAlphaKey(  spep_2+646,  ko,  255);
setEffAlphaKey(  spep_2+946,  ko,  255);

dealDamage( spep_2 + 556 );
entryFade( spep_2 + 630, 5,  30, 0, 0, 0, 0, 255);             -- black fade
hideKoScreen();  --黒フィルター削除
endPhase( spep_2 + 630 +20 );

else 
------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 前半
------------------------------------------------------
spep_0=0;

-- ** エフェクト等 ** --
first = entryEffect( spep_0 + 0, SP_01x, 0x100, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_0 + 0, first, 0, 0 , 0 );
setEffMoveKey( spep_0 + 422, first, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first, -1.0, 1.0 );
setEffScaleKey( spep_0 + 422, first, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first, 0 );
setEffRotateKey( spep_0 + 422, first, 0 );
setEffAlphaKey( spep_0 + 0, first, 255 );
setEffAlphaKey( spep_0 + 422, first, 255 );
setEffAlphaKey( spep_0 + 423, first, 0 );
setEffAlphaKey( spep_0 + 424, first, 0 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0 + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0 + 0, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

se_1181 = playSe( spep_0 + 0, 1181 );
playSe( spep_0 + 12, 1018 );
se_1128 = playSe( spep_0 + 138, 1128 );
setSeVolume( spep_0 + 138, 1128, 0 );
setSeVolume( spep_0 + 256, 1128, 19 );
setSeVolume( spep_0 + 257, 1128, 38 );
setSeVolume( spep_0 + 258, 1128, 57 );
setSeVolume( spep_0 + 259, 1128, 79 );
se_1176 = playSe( spep_0 + 139, 1176 );
setSeVolume( spep_0 + 139, 1176, 63 );
SE0=playSe( spep_0 + 175, 1035 );
SE1=playSe( spep_0 + 208, 1036 );
setSeVolume( spep_0 + 208, 1036, 63 );



------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 230; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );

    --音を消す
    stopSe(  SP_dodge - 12, SE0, 0 );
    stopSe(  SP_dodge - 12, SE1, 0 );
    stopSe(  SP_dodge - 12, se_1181, 0 );
    stopSe(  SP_dodge - 12, se_1128, 0 );
    stopSe(  SP_dodge - 12, se_1176, 0 );

    pauseAll( SP_dodge, 67 );
    

    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,-1,  0,  0,  -350 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );   -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100, -1,  0,  0,  350 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);

    
    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 ); -- white fade
    setMoveKey( SP_dodge + 10,   0,-2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------
--SE
se_1036 = playSe( spep_0 + 232, 1036 );
setSeVolume( spep_0 + 232, 1036, 63 );
se_1158 = playSe( spep_0 + 241, 1158 );
setSeVolume( spep_0 + 241, 1158, 79 );
se_1044 = playSe( spep_0 + 250, 1044 );
se_1166 = playSe( spep_0 + 250, 1166 );
playSe( spep_0 + 254, 1171 );
playSe( spep_0 + 259, 1179 );
playSe( spep_0 + 340, 1036 );
setSeVolume( spep_0 + 340, 1036, 63 );
se_0017 = playSe( spep_0 + 352, 17 );
setSeVolume( spep_0 + 352, 17, 71 );
se_1190 = playSe( spep_0 + 352, 1190 );
playSe( spep_0 + 364, 1036 );
setSeVolume( spep_0 + 364, 1036, 63 );
se_1036 = playSe( spep_0 + 388, 1036 );
setSeVolume( spep_0 + 388, 1036, 63 );


stopSe( spep_0 + 398, se_1181, 0 );
stopSe( spep_0 + 398, se_1128, 0 );
stopSe( spep_0 + 398, se_1176, 0 );
stopSe( spep_0 + 245, se_1036, 0 );
stopSe( spep_0 + 398, se_1158, 0 );
stopSe( spep_0 + 326, se_1044, 34 );
stopSe( spep_0 + 320, se_1166, 46 );
stopSe( spep_0 + 422, se_0017, 0 );
stopSe( spep_0 + 422, se_1190, 0 );
stopSe( spep_0 + 422, se_1036, 0 );

--白フェード
entryFade( spep_0 + 412, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

--次の準備
spep_1=spep_0+422;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
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

--白フェード
entryFade( spep_1 + 82, 6, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

------------------------------------------------------
-- 後半
------------------------------------------------------
-- ** エフェクト等 ** --
letter_f = entryEffect( spep_2 + 0, SP_02x, 0x80, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_2 + 0, letter_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 766, letter_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, letter_f, -1.0, 1.0 );
setEffScaleKey( spep_2 + 766, letter_f, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, letter_f, 0 );
setEffRotateKey( spep_2 + 766, letter_f, 0 );
setEffAlphaKey( spep_2 + 0, letter_f, 255 );
setEffAlphaKey( spep_2 + 766, letter_f, 255 );

-- ** エフェクト等 ** --
letter_b = entryEffect( spep_2 + 0, SP_03x, 0x100, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_2 + 0, letter_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 766, letter_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, letter_b, -1.0, 1.0 );
setEffScaleKey( spep_2 + 766, letter_b, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, letter_b, 0 );
setEffRotateKey( spep_2 + 766, letter_b, 0 );
setEffAlphaKey( spep_2 + 0, letter_b, 255 );
setEffAlphaKey( spep_2 + 766, letter_b, 255 );

--敵の動き
setDisp( spep_2 -3 +190, 1, 1 );
setDisp( spep_2  +247, 1, 0 );

changeAnime( spep_2 -3 + 190, 1, 104 );

setMoveKey( spep_2-3 + 190, 1, 174.3, -85.6 , 0 );
setMoveKey( spep_2 + 247, 1, 174.3, -85.6 , 0 );

setScaleKey( spep_2-3 + 190, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 247, 1, 0.7, 0.7 );

setRotateKey( spep_2-3 + 190, 1, 15.1 );
setRotateKey( spep_2 + 247, 1, 15.1 );

--敵の動き
setDisp( spep_2 -3 +312, 1, 1 );
setDisp( spep_2 -3  +342, 1, 0 );

changeAnime( spep_2 -3 + 312, 1, 118 );

setMoveKey( spep_2-3 + 312, 1, 352, -214.5 , 0 );
setMoveKey( spep_2-3 + 314, 1, 353.1, -214.9 , 0 );
setMoveKey( spep_2-3 + 316, 1, 356.6, -216.3 , 0 );
setMoveKey( spep_2-3 + 318, 1, 362.9, -218.7 , 0 );
setMoveKey( spep_2-3 + 320, 1, 372.3, -222.3 , 0 );
setMoveKey( spep_2-3 + 322, 1, 385.3, -227.3 , 0 );
setMoveKey( spep_2-3 + 324, 1, 402.5, -233.8 , 0 );
setMoveKey( spep_2-3 + 326, 1, 424.7, -242.4 , 0 );
setMoveKey( spep_2-3 + 328, 1, 453, -253.1 , 0 );
setMoveKey( spep_2-3 + 330, 1, 489, -266.9 , 0 );
setMoveKey( spep_2-3 + 332, 1, 534.8, -284.5 , 0 );
setMoveKey( spep_2-3 + 334, 1, 594, -307.2 , 0 );
setMoveKey( spep_2-3 + 336, 1, 672.6, -337.3 , 0 );
setMoveKey( spep_2-3 + 338, 1, 782.8, -379.4 , 0 );
setMoveKey( spep_2-3 + 340, 1, 955.3, -445.6 , 0 );
setMoveKey( spep_2-3 + 342, 1, 1319.2, -584.9 , 0 );

setScaleKey( spep_2-3 + 312, 1, 4, 4 );
setScaleKey( spep_2-3 + 314, 1, 4.01, 4.01 );
setScaleKey( spep_2-3 + 316, 1, 4.03, 4.03 );
setScaleKey( spep_2-3 + 318, 1, 4.07, 4.07 );
setScaleKey( spep_2-3 + 320, 1, 4.12, 4.12 );
setScaleKey( spep_2-3 + 322, 1, 4.2, 4.2 );
setScaleKey( spep_2-3 + 324, 1, 4.31, 4.31 );
setScaleKey( spep_2-3 + 326, 1, 4.44, 4.44 );
setScaleKey( spep_2-3 + 328, 1, 4.61, 4.61 );
setScaleKey( spep_2-3 + 330, 1, 4.83, 4.83 );
setScaleKey( spep_2-3 + 332, 1, 5.1, 5.1 );
setScaleKey( spep_2-3 + 334, 1, 5.46, 5.46 );
setScaleKey( spep_2-3 + 336, 1, 5.94, 5.94 );
setScaleKey( spep_2-3 + 338, 1, 6.61, 6.61 );
setScaleKey( spep_2-3 + 340, 1, 7.66, 7.66 );
setScaleKey( spep_2-3 + 342, 1, 9.87, 9.87 );

setRotateKey( spep_2-3 + 312, 1, 13 );
setRotateKey( spep_2-3 + 334, 1, 12.9 );
setRotateKey( spep_2-3 + 340, 1, 12.9 );
setRotateKey( spep_2-3 + 342, 1, 12.8 );

--敵の動き
setDisp( spep_2 -3 +432, 1, 1 );
setDisp( spep_2 -3  +556, 1, 0 );

changeAnime( spep_2 -3 + 432, 1, 108 );
changeAnime( spep_2 -3 + 488, 1, 106 );

a=95;
b=30;
c=30;
e=-10;

setMoveKey( spep_2-3 + 432, 1, 814.6-e, -299.2-a , 0 );
setMoveKey( spep_2-3 + 434, 1, 656.6-e, -245.7-a , 0 );
setMoveKey( spep_2-3 + 436, 1, 521.5-e, -199.8-a , 0 );
setMoveKey( spep_2-3 + 438, 1, 412.2-e, -162.8-a , 0 );
setMoveKey( spep_2-3 + 440, 1, 333.9-e, -136.2-a , 0 );
setMoveKey( spep_2-3 + 442, 1, 273.8-e, -115.8-a , 0 );
setMoveKey( spep_2-3 + 444, 1, 237.8-e, -103.5-a , 0 );
setMoveKey( spep_2-3 + 446, 1, 199.1-e, -47.3-a , 0 );
setMoveKey( spep_2-3 + 448, 1, 193.4-e, 2.2-a , 0 );
setMoveKey( spep_2-3 + 450, 1, 185.4-e, 72.3-a , 0 );
setMoveKey( spep_2-3 + 452, 1, 175-e, 163.2-a , 0 );
setMoveKey( spep_2-3 + 454, 1, 162.2-e, 274.9-a , 0 );
setMoveKey( spep_2-3 + 456, 1, 147.1-e, 407.2-a , 0 );
setMoveKey( spep_2-3 + 458, 1, 145.6-e, 398.6-a , 0 );
setMoveKey( spep_2-3 + 460, 1, 141.3-e, 375.3-a , 0 );
setMoveKey( spep_2-3 + 462, 1, 135.2-e, 342.3-a , 0 );
setMoveKey( spep_2-3 + 464, 1, 128.3-e, 304.8-a , 0 );
setMoveKey( spep_2-3 + 466, 1, 121.6-e, 268.3-a , 0 );
setMoveKey( spep_2-3 + 468, 1, 116-e, 238-a , 0 );
setMoveKey( spep_2-3 + 470, 1, 112.2-e, 217.6-a , 0 );
setMoveKey( spep_2-3 + 472, 1, 113.8-e, 207-a , 0 );
setMoveKey( spep_2-3 + 474, 1, 108.6-e, 204.1-a , 0 );
setMoveKey( spep_2-3 + 476, 1, 111.2-e, 192.1-a , 0 );
setMoveKey( spep_2-3 + 478, 1, 109.6-e, 182.6-a , 0 );
setMoveKey( spep_2-3 + 480, 1, 110.3-e, 168.4-a , 0 );
setMoveKey( spep_2-3 + 482, 1, 107.6-e, 155-a , 0 );
setMoveKey( spep_2-3 + 484, 1, 101.9-e, 135.1-a , 0 );
setMoveKey( spep_2-3 + 486, 1, 89.6-e, 123.2-a , 0 );
setMoveKey( spep_2-3 + 487, 1, 89.6-e, 123.2-a , 0 );
setMoveKey( spep_2-3 + 488, 1, 25.3-e, 116.5-a , 0 );
setMoveKey( spep_2-3 + 490, 1, 25.1-b+20, 106.2-c-60 , 0 );
setMoveKey( spep_2-3 + 492, 1, 25.5-b, 93.7-c-60 , 0 );

setMoveKey( spep_2-3 + 494, 1, 26.9-b-10, 76.9-c-50 , 0 );

setMoveKey( spep_2-3 + 496, 1, 29.4-b-10, 60.5-c-50 , 0 );
setMoveKey( spep_2-3 + 498, 1, 32.2-b-10, 43.2-c-30 , 0 );
setMoveKey( spep_2-3 + 500, 1, 29.5-b, 31.7-c-20 , 0 );
setMoveKey( spep_2-3 + 502, 1, 28.8-b, 19.6-c-20 , 0 );
setMoveKey( spep_2-3 + 504, 1, 30-b, 6-c-20 , 0 );
setMoveKey( spep_2-3 + 506, 1, 26.2-b+5, -2.4-c-10 , 0 );
setMoveKey( spep_2-3 + 508, 1, 28.2-b+5, -12.3-c , 0 );
setMoveKey( spep_2-3 + 510, 1, 26.2-b+10, -18.7-c , 0 );
setMoveKey( spep_2-3 + 512, 1, 26-b+10, -20.5-c , 0 );
setMoveKey( spep_2-3 + 514, 1, 27.1-b+10, -26.4-c , 0 );
setMoveKey( spep_2-3 + 516, 1, 28.5-b+10, -26-c , 0 );
setMoveKey( spep_2-3 + 518, 1, 26.4-b+10, -26.4-c , 0 );
setMoveKey( spep_2-3 + 520, 1, 29.3-b+10, -25.1-c , 0 );
setMoveKey( spep_2-3 + 522, 1, 26.7-b+10, -27-c , 0 );
setMoveKey( spep_2-3 + 524, 1, 27.9-b+10, -24.1-c , 0 );
setMoveKey( spep_2-3 + 526, 1, 27.8-b+10, -28.1-c , 0 );
setMoveKey( spep_2-3 + 528, 1, 27.7-b+10, -24.3-c , 0 );
setMoveKey( spep_2-3 + 530, 1, 27.9-b+10, -27.8-c , 0 );
setMoveKey( spep_2-3 + 532, 1, 27.4-b+10, -23.7-c , 0 );
setMoveKey( spep_2-3 + 534, 1, 29.9-b+10, -27.9-c , 0 );
setMoveKey( spep_2-3 + 536, 1, 24-b+10, -25.8-c , 0 );
setMoveKey( spep_2-3 + 538, 1, 30.1-b+10, -26.7-c , 0 );
setMoveKey( spep_2-3 + 540, 1, 24.2-b+10, -23.1-c , 0 );
setMoveKey( spep_2-3 + 542, 1, 30-b+10, -28.7 -c, 0 );
setMoveKey( spep_2-3 + 544, 1, 26.1-b+10, -23.4-c , 0 );
setMoveKey( spep_2-3 + 546, 1, 25.9-b+10, -31.6-c , 0 );
setMoveKey( spep_2-3 + 548, 1, 30.9-b+10, -19.7-c , 0 );
setMoveKey( spep_2-3 + 550, 1, 29.3-b+10, -33.3-c , 0 );
setMoveKey( spep_2-3 + 552, 1, 22.5-b+10, -22.8-c , 0 );
setMoveKey( spep_2-3 + 554, 1, 33.7-b+10, -31.2-c , 0 );
setMoveKey( spep_2-3 + 556, 1, 28.1-b+10, -25.8-c , 0 );


setScaleKey( spep_2-3 + 432, 1, 13.6, 13.6 );
setScaleKey( spep_2-3 + 434, 1, 11.35, 11.35 );
setScaleKey( spep_2-3 + 436, 1, 9.42, 9.42 );
setScaleKey( spep_2-3 + 438, 1, 7.86, 7.86 );
setScaleKey( spep_2-3 + 440, 1, 6.74, 6.74 );
setScaleKey( spep_2-3 + 442, 1, 5.89, 5.89 );
setScaleKey( spep_2-3 + 444, 1, 5.38, 5.38 );
setScaleKey( spep_2-3 + 446, 1, 5.22, 5.22 );
setScaleKey( spep_2-3 + 464, 1, 5.22, 5.22 );
setScaleKey( spep_2-3 + 466, 1, 5.21, 5.21 );
setScaleKey( spep_2-3 + 470, 1, 5.21, 5.21 );
setScaleKey( spep_2-3 + 472, 1, 5.17, 5.17 );
setScaleKey( spep_2-3 + 474, 1, 5.12, 5.12 );
setScaleKey( spep_2-3 + 476, 1, 4.96, 4.96 );
setScaleKey( spep_2-3 + 478, 1, 4.8, 4.8 );
setScaleKey( spep_2-3 + 480, 1, 4.59, 4.59 );
setScaleKey( spep_2-3 + 482, 1, 4.38, 4.38 );
setScaleKey( spep_2-3 + 484, 1, 4.12, 4.12 );
setScaleKey( spep_2-3 + 486, 1, 3.91, 3.91 );
setScaleKey( spep_2-3 + 487, 1, 3.91, 3.91 );
setScaleKey( spep_2-3 + 488, 1, 3.65, 3.65 );
setScaleKey( spep_2-3 + 490, 1, 3.39, 3.39 );
setScaleKey( spep_2-3 + 492, 1, 3.13, 3.13 );
setScaleKey( spep_2-3 + 494, 1, 2.87, 2.87 );
setScaleKey( spep_2-3 + 496, 1, 2.61, 2.61 );
setScaleKey( spep_2-3 + 498, 1, 2.35, 2.35 );
setScaleKey( spep_2-3 + 500, 1, 2.14, 2.14 );
setScaleKey( spep_2-3 + 502, 1, 1.93, 1.93 );
setScaleKey( spep_2-3 + 504, 1, 1.72, 1.72 );
setScaleKey( spep_2-3 + 506, 1, 1.57, 1.57 );
setScaleKey( spep_2-3 + 508, 1, 1.41, 1.41 );
setScaleKey( spep_2-3 + 510, 1, 1.31, 1.31 );
setScaleKey( spep_2-3 + 512, 1, 1.25, 1.25 );
setScaleKey( spep_2-3 + 514, 1, 1.2, 1.2 );
setScaleKey( spep_2-3 + 556, 1, 1.2, 1.2 );

setRotateKey( spep_2-3 + 432, 1, -0.7 );
setRotateKey( spep_2-3 + 434, 1, -6.9 );
setRotateKey( spep_2-3 + 436, 1, -12.2 );
setRotateKey( spep_2-3 + 438, 1, -16.5 );
setRotateKey( spep_2-3 + 440, 1, -19.5 );
setRotateKey( spep_2-3 + 442, 1, -21.9 );
setRotateKey( spep_2-3 + 444, 1, -23.3 );
setRotateKey( spep_2-3 + 446, 1, -23.9 );
setRotateKey( spep_2-3 + 448, 1, -24.2 );
setRotateKey( spep_2-3 + 450, 1, -24.7 );
setRotateKey( spep_2-3 + 452, 1, -25.3 );
setRotateKey( spep_2-3 + 454, 1, -26 );
setRotateKey( spep_2-3 + 456, 1, -26.9 );
setRotateKey( spep_2-3 + 458, 1, -26.8 );
setRotateKey( spep_2-3 + 460, 1, -26.7 );
setRotateKey( spep_2-3 + 462, 1, -26.6 );
setRotateKey( spep_2-3 + 464, 1, -26.5 );
setRotateKey( spep_2-3 + 466, 1, -26.3 );
setRotateKey( spep_2-3 + 468, 1, -26.2 );
setRotateKey( spep_2-3 + 470, 1, -26.1 );
setRotateKey( spep_2-3 + 472, 1, -25.9 );
setRotateKey( spep_2-3 + 474, 1, -25.5 );
setRotateKey( spep_2-3 + 476, 1, -24.9 );
setRotateKey( spep_2-3 + 478, 1, -24 );
setRotateKey( spep_2-3 + 480, 1, -23 );
setRotateKey( spep_2-3 + 482, 1, -21.9 );
setRotateKey( spep_2-3 + 484, 1, -17.1 );
setRotateKey( spep_2-3 + 486, 1, -12.4 );
setRotateKey( spep_2-3 + 487, 1, -12.4 );
setRotateKey( spep_2-3 + 488, 1, -67.9 );
setRotateKey( spep_2-3 + 490, 1, -56.6 );
setRotateKey( spep_2-3 + 492, 1, -48.5 );
setRotateKey( spep_2-3 + 494, 1, -47.3 );
setRotateKey( spep_2-3 + 496, 1, -46 );
setRotateKey( spep_2-3 + 498, 1, -44.8 );
setRotateKey( spep_2-3 + 500, 1, -43.7 );
setRotateKey( spep_2-3 + 502, 1, -42.6 );
setRotateKey( spep_2-3 + 504, 1, -41.6 );
setRotateKey( spep_2-3 + 506, 1, -40.8 );
setRotateKey( spep_2-3 + 508, 1, -40 );
setRotateKey( spep_2-3 + 510, 1, -39.5 );
setRotateKey( spep_2-3 + 512, 1, -39.2 );
setRotateKey( spep_2-3 + 514, 1, -39.1 );
setRotateKey( spep_2-3 + 516, 1, -39 );
setRotateKey( spep_2-3 + 518, 1, -38.9 );
setRotateKey( spep_2-3 + 520, 1, -38.9 );
setRotateKey( spep_2-3 + 522, 1, -38.8 );
setRotateKey( spep_2-3 + 524, 1, -38.7 );
setRotateKey( spep_2-3 + 526, 1, -38.6 );
setRotateKey( spep_2-3 + 528, 1, -38.6 );
setRotateKey( spep_2-3 + 530, 1, -38.5 );
setRotateKey( spep_2-3 + 532, 1, -38.4 );
setRotateKey( spep_2-3 + 534, 1, -38.4 );
setRotateKey( spep_2-3 + 536, 1, -38.3 );
setRotateKey( spep_2-3 + 538, 1, -38.2 );
setRotateKey( spep_2-3 + 540, 1, -38.1 );
setRotateKey( spep_2-3 + 542, 1, -38.1 );
setRotateKey( spep_2-3 + 544, 1, -38 );
setRotateKey( spep_2-3 + 556, 1, -38 );

se_1181 = playSe( spep_2 + 0, 1181 );
se_1176 = playSe( spep_2 + 0, 1176 );
playSe( spep_2 + 42, 1206 );
se_1044 = playSe( spep_2 + 97, 1044 );
setSeVolume( spep_2 + 42,1044,3.5);
setSeVolume( spep_2 + 43,1044,7);
setSeVolume( spep_2 + 44,1044,10.5);
setSeVolume( spep_2 + 45,1044,14);
setSeVolume( spep_2 + 46,1044,17.5);
setSeVolume( spep_2 + 47,1044,21);
setSeVolume( spep_2 + 48,1044,24.5);
setSeVolume( spep_2 + 49,1044,28);
setSeVolume( spep_2 + 50,1044,31.5);
setSeVolume( spep_2 + 51,1044,35);
setSeVolume( spep_2 + 52,1044,38.5);
setSeVolume( spep_2 + 53,1044,42);
setSeVolume( spep_2 + 54,1044,45.5);
setSeVolume( spep_2 + 55,1044,49);
setSeVolume( spep_2 + 56,1044,52.5);
setSeVolume( spep_2 + 57,1044,56);
setSeVolume( spep_2 + 58,1044,59.5);
setSeVolume( spep_2 + 59,1044,63);
setSeVolume( spep_2 + 60,1044,66.5);
setSeVolume( spep_2 + 61,1044,70);
setSeVolume( spep_2 + 62,1044,73.5);
setSeVolume( spep_2 + 63,1044,77);
setSeVolume( spep_2 + 64,1044,80.5);
setSeVolume( spep_2 + 65,1044,84);
setSeVolume( spep_2 + 66,1044,87.5);
setSeVolume( spep_2 + 67,1044,91);
setSeVolume( spep_2 + 68,1044,94.5);
setSeVolume( spep_2 + 69,1044,98);
setSeVolume( spep_2 + 70,1044,101.5);
setSeVolume( spep_2 + 71,1044,105);
setSeVolume( spep_2 + 72,1044,108.5);
setSeVolume( spep_2 + 73,1044,112);
setSeVolume( spep_2 + 74,1044,115.5);
setSeVolume( spep_2 + 75,1044,119);
setSeVolume( spep_2 + 76,1044,122.5);
setSeVolume( spep_2 + 77,1044,126);
setSeVolume( spep_2 + 78,1044,129.5);
setSeVolume( spep_2 + 79,1044,133);
setSeVolume( spep_2 + 80,1044,136.5);
setSeVolume( spep_2 + 81,1044,140);
setSeVolume( spep_2 + 82,1044,143.5);
setSeVolume( spep_2 + 83,1044,147);
setSeVolume( spep_2 + 84,1044,150.5);
setSeVolume( spep_2 + 85,1044,154);
setSeVolume( spep_2 + 86,1044,157.5);
setSeVolume( spep_2 + 87,1044,161);
setSeVolume( spep_2 + 88,1044,164.5);
setSeVolume( spep_2 + 89,1044,168);
setSeVolume( spep_2 + 90,1044,171.5);
setSeVolume( spep_2 + 91,1044,175);
setSeVolume( spep_2 + 92,1044,178.5);
setSeVolume( spep_2 + 93,1044,182);
setSeVolume( spep_2 + 94,1044,185.5);
setSeVolume( spep_2 + 95,1044,189);
setSeVolume( spep_2 + 96,1044,192.5);
setSeVolume( spep_2 + 97,1044,200);
setSeVolume( spep_2 + 192,1044,32);
se_1166 = playSe( spep_2 + 150, 1166 );
setSeVolume( spep_2 + 150, 1166, 18 );
playSe( spep_2 + 162, 1068 );
playSe( spep_2 + 191, 1036 );
setSeVolume( spep_2 + 191, 1036, 40 );
playSe( spep_2 + 215, 1036 );
setSeVolume( spep_2 + 215, 1036, 40 );
se_1036 = playSe( spep_2 + 239, 1036 );
setSeVolume( spep_2 + 239, 1036, 40 );
playSe( spep_2 + 248, 1036 );
setSeVolume( spep_2 + 248, 1036, 141 );
playSe( spep_2 + 272, 1036 );
setSeVolume( spep_2 + 272, 1036, 141 );
playSe( spep_2 + 296, 1036 );
setSeVolume( spep_2 + 296, 1036, 141 );
se_1072 = playSe( spep_2 + 310, 1072 );
playSe( spep_2 + 319, 1036 );
playSe( spep_2 + 343, 1036 );
setSeVolume( spep_2 + 343, 1036, 56 );
playSe( spep_2 + 347, 1004 );
playSe( spep_2 + 367, 1036 );
setSeVolume( spep_2 + 367, 1036, 56 );
playSe( spep_2 + 379, 1012 );
playSe( spep_2 + 383, 1187 );
setSeVolume( spep_2 + 383, 1187, 89 );
playSe( spep_2 + 383, 1123 );
setSeVolume( spep_2 + 383, 1123, 56 );
playSe( spep_2 + 389, 1117 );
setSeVolume( spep_2 + 389, 1117, 158 );
playSe( spep_2 + 391, 1036 );
setSeVolume( spep_2 + 391, 1036, 56 );
playSe( spep_2 + 411, 1021 );
setSeVolume( spep_2 + 411, 1021, 79 );
playSe( spep_2 + 455, 40 );
playSe( spep_2 + 559, 1126 );
setSeVolume( spep_2 + 559, 1126, 40 );
playSe( spep_2 + 559, 1159 );
setSeVolume( spep_2 + 559, 1159, 63 );
playSe( spep_2 + 559, 1023 );
--playSe( spep_2 + 604, 1036 );
--setSeVolume( spep_2 + 604, 1036, 141 );
--playSe( spep_2 + 628, 1036 );
--setSeVolume( spep_2 + 628, 1036, 141 );

stopSe( spep_2 + 42, se_1181, 0 );
stopSe( spep_2 + 42, se_1176, 0 );
stopSe( spep_2 + 319, se_1044, 0 );
stopSe( spep_2 + 319, se_1166, 0 );
stopSe( spep_2 + 248, se_1036, 0 );
stopSe( spep_2 + 370, se_1072, 0 );
stopSe( spep_2 + 630, se_1036, 0 );


ko = entryEffectLife(  spep_2+646,  SP_04,  300,  0x100,  -1, 0, 0, 0);

setEffMoveKey(  spep_2+646,  ko,  0,  0);
setEffMoveKey(  spep_2+946,  ko,  0,  0);
setEffScaleKey(  spep_2+646,  ko,  1.0,  1.0);
setEffScaleKey(  spep_2+946,  ko,  1.0,  1.0);
setEffRotateKey(  spep_2+646,  ko,  0);
setEffRotateKey(  spep_2+946,  ko,  0);
setEffAlphaKey(  spep_2+646,  ko,  255);
setEffAlphaKey(  spep_2+946,  ko,  255);

dealDamage( spep_2 + 556 );
entryFade( spep_2 + 630, 5,  30, 0, 0, 0, 0, 255);             -- black fade
hideKoScreen();  --黒フィルター削除
endPhase( spep_2 + 630 +20 );

end