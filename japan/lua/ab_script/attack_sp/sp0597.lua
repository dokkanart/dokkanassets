--1010070:超サイヤ人孫悟飯_親子かめはめ波3(リメイク)
--sp_effect_a1_00177

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

--エフェクト
SP_01 = 154039; --構え〜発射
SP_02 = 154040; --ビームヒット〜耐える・手前
SP_03 = 154041; --ビームヒット〜耐える・奥
SP_04 = 154042; --カットイン・ベジータ
SP_05 = 154043; --ベジータ発射
SP_06 = 154044; --カットイン・悟空
SP_07 = 154045; --ベジータ気弾着弾・手前
SP_08 = 154046; --ベジータ気弾着弾・奥
SP_09 = 154095; --ナビ歩行
SP_10 = 154096; --押し切る・手前
SP_11 = 154097; --押し切る・奥

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

a=1.8;
b=2.1;


kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 構え〜発射
------------------------------------------------------
--はじめの準備
spep_0 = 0;

-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_0 + 120, tame, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 120, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 120, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 120, tame, 255 );

--集中線
shuchusen1 = entryEffectLife( spep_0  + 0,  906, 38 -2, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_0  + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 -2 + 38, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0  + 0, shuchusen1, 1.08, 1.27 );
setEffScaleKey( spep_0 -2 + 38, shuchusen1, 1.08, 1.27 );

setEffRotateKey( spep_0  + 0, shuchusen1, 180 );
setEffRotateKey( spep_0 -2 + 38, shuchusen1, 180 );

setEffAlphaKey( spep_0  + 0, shuchusen1, 165 );
setEffAlphaKey( spep_0 -2 + 38, shuchusen1, 165 );

--書き文字
ctzuo = entryEffectLife( spep_0 -3 + 40,  10012, 30, 0x100, -1, 0, 76, 259.9 );--ズオッ

setEffMoveKey( spep_0 -3 + 40, ctzuo, 76, 259.9 , 0 );
setEffMoveKey( spep_0 -3 + 42, ctzuo, 93.2, 307.1 , 0 );
setEffMoveKey( spep_0 -3 + 44, ctzuo, 116, 359.9 , 0 );
setEffMoveKey( spep_0 -3 + 46, ctzuo, 111, 354.8 , 0 );
setEffMoveKey( spep_0 -3 + 48, ctzuo, 116, 359.9 , 0 );
setEffMoveKey( spep_0 -3 + 50, ctzuo, 111, 354.8 , 0 );
setEffMoveKey( spep_0 -3 + 52, ctzuo, 116, 359.9 , 0 );
setEffMoveKey( spep_0 -3 + 54, ctzuo, 111, 354.8 , 0 );
setEffMoveKey( spep_0 -3 + 56, ctzuo, 116, 359.9 , 0 );
setEffMoveKey( spep_0 -3 + 58, ctzuo, 111, 354.8 , 0 );
setEffMoveKey( spep_0 -3 + 60, ctzuo, 116, 359.9 , 0 );
setEffMoveKey( spep_0 -3 + 62, ctzuo, 117.6, 353.4 , 0 );
setEffMoveKey( spep_0 -3 + 64, ctzuo, 132, 359.9 , 0 );
setEffMoveKey( spep_0 -3 + 66, ctzuo, 130.5, 350.3 , 0 );
setEffMoveKey( spep_0 -3 + 68, ctzuo, 148, 359.9 , 0 );
setEffMoveKey( spep_0 -3 + 70, ctzuo, 156, 359.9 , 0 );

setEffScaleKey( spep_0 -3 + 40, ctzuo, 0.1, 0.1 );
setEffScaleKey( spep_0 -3 + 42, ctzuo, 0.45 +a, 0.45 +a);
setEffScaleKey( spep_0 -3 + 44, ctzuo, 0.8 +a, 0.8 +a );
setEffScaleKey( spep_0 -3 + 60, ctzuo, 0.8 +a, 0.8 +a );
--setEffScaleKey( spep_0 -3 + 62, ctzuo, 1.04 +a, 1.04 +a );
--setEffScaleKey( spep_0 -3 + 64, ctzuo, 1.28 +a, 1.28 +a );
--setEffScaleKey( spep_0 -3 + 66, ctzuo, 1.52 +a, 1.52 +a );
--setEffScaleKey( spep_0 -3 + 68, ctzuo, 1.76 +a, 1.76 +a );
setEffScaleKey( spep_0 -3 + 70, ctzuo, 2 +a +b, 2 +a +b );

setEffRotateKey( spep_0 -3 + 40, ctzuo, 30 );
setEffRotateKey( spep_0 -3 + 70, ctzuo, 30 );

setEffAlphaKey( spep_0 -3 + 40, ctzuo, 255 );
setEffAlphaKey( spep_0 -3 + 60, ctzuo, 255 );
setEffAlphaKey( spep_0 -3 + 62, ctzuo, 204 );
setEffAlphaKey( spep_0 -3 + 64, ctzuo, 153 );
setEffAlphaKey( spep_0 -3 + 66, ctzuo, 102 );
setEffAlphaKey( spep_0 -3 + 68, ctzuo, 51 );
setEffAlphaKey( spep_0 -3 + 70, ctzuo, 0 );


--白フェード
entryFade( spep_0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_0 +37, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 200 );  --white fade
entryFade( spep_0 +112, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--音
SE1 = playSe( spep_0 + 0, 55 );  --気溜め
stopSe( spep_0 -3 + 40, SE1, 10 );
playSe( spep_0 -3 + 40, 1022 );  --発射

--次の準備
spep_1 = spep_0+118;


------------------------------------------------------
-- ビームヒット〜耐える
------------------------------------------------------
-- ** エフェクト等 ** --
beam_f = entryEffect( spep_1 + 0, SP_02,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, beam_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 146, beam_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, beam_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 146, beam_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, beam_f, 0 );
setEffRotateKey( spep_1 + 146, beam_f, 0 );
setEffAlphaKey( spep_1 + 0, beam_f, 255 );
setEffAlphaKey( spep_1 + 146, beam_f, 255 );

-- ** エフェクト等 ** --
beam_b = entryEffect( spep_1 + 0, SP_03,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, beam_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 146, beam_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, beam_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 146, beam_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, beam_b, 0 );
setEffRotateKey( spep_1 + 146, beam_b, 0 );
setEffAlphaKey( spep_1 + 0, beam_b, 255 );
setEffAlphaKey( spep_1 + 146, beam_b, 255 );

--文字エントリー
ctzudodo = entryEffectLife( spep_1  + 0,  10014, 72 -3, 0x100, -1, 0, 130, 364 );--ズドドドッ

setEffMoveKey( spep_1  + 0, ctzudodo, 130, 364 , 0 );
--setEffMoveKey( spep_1 -3 + 2, ctzudodo, 110.9, 346.4 , 0 );
setEffMoveKey( spep_1 -3 + 4, ctzudodo, 130, 364 , 0 );
setEffMoveKey( spep_1 -3 + 6, ctzudodo, 110.9, 346.4 , 0 );
setEffMoveKey( spep_1 -3 + 8, ctzudodo, 130, 364 , 0 );
setEffMoveKey( spep_1 -3 + 10, ctzudodo, 110.9, 346.4 , 0 );
setEffMoveKey( spep_1 -3 + 12, ctzudodo, 130, 364 , 0 );
setEffMoveKey( spep_1 -3 + 14, ctzudodo, 110.9, 346.4 , 0 );
setEffMoveKey( spep_1 -3 + 16, ctzudodo, 130, 364 , 0 );
setEffMoveKey( spep_1 -3 + 18, ctzudodo, 110.9, 346.4 , 0 );
setEffMoveKey( spep_1 -3 + 20, ctzudodo, 130, 364 , 0 );
setEffMoveKey( spep_1 -3 + 22, ctzudodo, 110.9, 346.4 , 0 );
setEffMoveKey( spep_1 -3 + 24, ctzudodo, 130, 364 , 0 );
setEffMoveKey( spep_1 -3 + 26, ctzudodo, 110.9, 346.4 , 0 );
setEffMoveKey( spep_1 -3 + 28, ctzudodo, 130, 364 , 0 );
setEffMoveKey( spep_1 -3 + 30, ctzudodo, 110.9, 346.4 , 0 );
setEffMoveKey( spep_1 -3 + 32, ctzudodo, 130, 364 , 0 );
setEffMoveKey( spep_1 -3 + 34, ctzudodo, 110.9, 346.4 , 0 );
setEffMoveKey( spep_1 -3 + 36, ctzudodo, 130, 364 , 0 );
setEffMoveKey( spep_1 -3 + 38, ctzudodo, 110.9, 346.4 , 0 );
setEffMoveKey( spep_1 -3 + 40, ctzudodo, 130, 364 , 0 );
setEffMoveKey( spep_1 -3 + 42, ctzudodo, 110.9, 346.4 , 0 );
setEffMoveKey( spep_1 -3 + 44, ctzudodo, 130, 364 , 0 );
setEffMoveKey( spep_1 -3 + 46, ctzudodo, 110.9, 346.4 , 0 );
setEffMoveKey( spep_1 -3 + 48, ctzudodo, 130, 364 , 0 );
setEffMoveKey( spep_1 -3 + 50, ctzudodo, 110.9, 346.4 , 0 );
setEffMoveKey( spep_1 -3 + 52, ctzudodo, 130, 364 , 0 );
setEffMoveKey( spep_1 -3 + 54, ctzudodo, 110.9, 346.4 , 0 );
setEffMoveKey( spep_1 -3 + 56, ctzudodo, 130, 364 , 0 );
setEffMoveKey( spep_1 -3 + 58, ctzudodo, 110.9, 346.4 , 0 );
setEffMoveKey( spep_1 -3 + 60, ctzudodo, 130, 364 , 0 );
setEffMoveKey( spep_1 -3 + 62, ctzudodo, 110.9, 346.4 , 0 );
setEffMoveKey( spep_1 -3 + 64, ctzudodo, 130, 364 , 0 );
setEffMoveKey( spep_1 -3 + 66, ctzudodo, 110.9, 346.4 , 0 );
setEffMoveKey( spep_1 -3 + 68, ctzudodo, 130, 364 , 0 );
setEffMoveKey( spep_1 -3 + 70, ctzudodo, 110.9, 346.4 , 0 );
setEffMoveKey( spep_1 -3 + 72, ctzudodo, 130, 364 , 0 );

setEffScaleKey( spep_1  + 0, ctzudodo, 2.8, 3.4 );
setEffScaleKey( spep_1 -3 + 72, ctzudodo, 2.8, 3.4 );

setEffRotateKey( spep_1 + 0, ctzudodo, 69 );
setEffRotateKey( spep_1 -3 + 72, ctzudodo, 69 );

setEffAlphaKey( spep_1  + 0, ctzudodo, 255 );
setEffAlphaKey( spep_1 -3 + 72, ctzudodo, 255 );

--音
SE2 = playSe( spep_1 + 0, 1021 );  --発射中
SE3 = playSe( spep_1 + 0, 1044 );  --地鳴り
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 40; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE2, 0 );
    stopSe( SP_dodge - 12, SE3, 0 );

    pauseAll( SP_dodge, 67 );
    
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
    
    ------------------------------------------------------
    -- 回避しなかった場合
    ------------------------------------------------------

--敵の動き
setDisp( spep_1 -3  + 74, 1, 1 );
setDisp( spep_1 -3  + 148, 1, 0 );
changeAnime( spep_1 -3  + 74, 1, 118 );

setMoveKey( spep_1 -3 + 74, 1, 1632.7, -635.9 , 0 );
setMoveKey( spep_1 -3 + 76, 1, 1412.7, -577 , 0 );
setMoveKey( spep_1 -3 + 78, 1, 1192.8, -518 , 0 );
setMoveKey( spep_1 -3 + 80, 1, 972.8, -459 , 0 );
setMoveKey( spep_1 -3 + 82, 1, 752.9, -400.1 , 0 );
setMoveKey( spep_1 -3 + 84, 1, 532.9, -341.1 , 0 );
setMoveKey( spep_1 -3 + 86, 1, 312.9, -282.1 , 0 );
setMoveKey( spep_1 -3 + 88, 1, 92.9, -223.1 , 0 );
setMoveKey( spep_1 -3 + 90, 1, 96.9, -224.3 , 0 );
setMoveKey( spep_1 -3 + 92, 1, 101, -225.5 , 0 );
setMoveKey( spep_1 -3 + 94, 1, 105, -226.7 , 0 );
setMoveKey( spep_1 -3 + 96, 1, 109, -227.9 , 0 );
setMoveKey( spep_1 -3 + 98, 1, 113, -229.1 , 0 );
setMoveKey( spep_1 -3 + 100, 1, 117.1, -230.3 , 0 );
setMoveKey( spep_1 -3 + 102, 1, 121.1, -231.5 , 0 );
setMoveKey( spep_1 -3 + 104, 1, 125.1, -232.6 , 0 );
setMoveKey( spep_1 -3 + 106, 1, 129.2, -233.8 , 0 );
setMoveKey( spep_1 -3 + 108, 1, 133.2, -235 , 0 );
setMoveKey( spep_1 -3 + 110, 1, 137.2, -236.2 , 0 );
setMoveKey( spep_1 -3 + 112, 1, 141.2, -237.4 , 0 );
setMoveKey( spep_1 -3 + 114, 1, 145.3, -238.6 , 0 );
setMoveKey( spep_1 -3 + 116, 1, 149.3, -239.8 , 0 );
setMoveKey( spep_1 -3 + 118, 1, 153.3, -241 , 0 );
setMoveKey( spep_1 -3 + 120, 1, 157.3, -242.2 , 0 );
setMoveKey( spep_1 -3 + 122, 1, 161.4, -243.4 , 0 );
setMoveKey( spep_1 -3 + 124, 1, 165.4, -244.6 , 0 );
setMoveKey( spep_1 -3 + 126, 1, 169.4, -245.8 , 0 );
setMoveKey( spep_1 -3 + 128, 1, 173.4, -247 , 0 );
setMoveKey( spep_1 -3 + 130, 1, 177.5, -248.2 , 0 );
setMoveKey( spep_1 -3 + 132, 1, 181.5, -249.4 , 0 );
setMoveKey( spep_1 -3 + 134, 1, 185.5, -250.5 , 0 );
setMoveKey( spep_1 -3 + 136, 1, 189.5, -251.7 , 0 );
setMoveKey( spep_1 -3 + 138, 1, 193.6, -252.9 , 0 );
setMoveKey( spep_1 -3 + 140, 1, 197.6, -254.1 , 0 );
setMoveKey( spep_1 -3 + 142, 1, 201.6, -255.3 , 0 );
setMoveKey( spep_1 -3 + 144, 1, 205.6, -256.5 , 0 );
setMoveKey( spep_1 -3 + 146, 1, 209.7, -257.7 , 0 );
setMoveKey( spep_1 -3 + 148, 1, 213.7, -258.9 , 0 );

setScaleKey( spep_1 -3 + 74, 1, 4.74, 4.74 );
setScaleKey( spep_1 -3 + 76, 1, 4.32, 4.32 );
setScaleKey( spep_1 -3 + 78, 1, 3.91, 3.91 );
setScaleKey( spep_1 -3 + 80, 1, 3.49, 3.49 );
setScaleKey( spep_1 -3 + 82, 1, 3.08, 3.08 );
setScaleKey( spep_1 -3 + 84, 1, 2.66, 2.66 );
setScaleKey( spep_1 -3 + 86, 1, 2.24, 2.24 );
setScaleKey( spep_1 -3 + 88, 1, 1.83, 1.83 );
setScaleKey( spep_1 -3 + 90, 1, 1.83, 1.83 );
setScaleKey( spep_1 -3 + 92, 1, 1.84, 1.84 );
setScaleKey( spep_1 -3 + 94, 1, 1.84, 1.84 );
setScaleKey( spep_1 -3 + 96, 1, 1.85, 1.85 );
setScaleKey( spep_1 -3 + 98, 1, 1.85, 1.85 );
setScaleKey( spep_1 -3 + 100, 1, 1.86, 1.86 );
setScaleKey( spep_1 -3 + 102, 1, 1.86, 1.86 );
setScaleKey( spep_1 -3 + 104, 1, 1.87, 1.87 );
setScaleKey( spep_1 -3 + 106, 1, 1.87, 1.87 );
setScaleKey( spep_1 -3 + 108, 1, 1.88, 1.88 );
setScaleKey( spep_1 -3 + 110, 1, 1.88, 1.88 );
setScaleKey( spep_1 -3 + 112, 1, 1.89, 1.89 );
setScaleKey( spep_1 -3 + 114, 1, 1.89, 1.89 );
setScaleKey( spep_1 -3 + 116, 1, 1.9, 1.9 );
setScaleKey( spep_1 -3 + 118, 1, 1.9, 1.9 );
setScaleKey( spep_1 -3 + 120, 1, 1.91, 1.91 );
setScaleKey( spep_1 -3 + 122, 1, 1.91, 1.91 );
setScaleKey( spep_1 -3 + 124, 1, 1.92, 1.92 );
setScaleKey( spep_1 -3 + 126, 1, 1.92, 1.92 );
setScaleKey( spep_1 -3 + 128, 1, 1.93, 1.93 );
setScaleKey( spep_1 -3 + 130, 1, 1.93, 1.93 );
setScaleKey( spep_1 -3 + 132, 1, 1.94, 1.94 );
setScaleKey( spep_1 -3 + 134, 1, 1.94, 1.94 );
setScaleKey( spep_1 -3 + 136, 1, 1.95, 1.95 );
setScaleKey( spep_1 -3 + 138, 1, 1.95, 1.95 );
setScaleKey( spep_1 -3 + 140, 1, 1.96, 1.96 );
setScaleKey( spep_1 -3 + 142, 1, 1.96, 1.96 );
setScaleKey( spep_1 -3 + 144, 1, 1.97, 1.97 );
setScaleKey( spep_1 -3 + 146, 1, 1.97, 1.97 );
setScaleKey( spep_1 -3 + 148, 1, 1.98, 1.98 );

setRotateKey( spep_1 -3 + 74, 1, 0 );
setRotateKey( spep_1 -3 + 148, 1, 0 );

--白フェード
entryFade( spep_1+69, 0, 6, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1+138, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--音
stopSe( spep_1 + 126, SE3, 20 );

--次の準備
spep_2 = spep_1+146;

------------------------------------------------------
-- ベジータ発射
------------------------------------------------------
-- ** エフェクト等 ** --
bezi_cut = entryEffect( spep_2  + 0, SP_04,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2  + 0, bezi_cut, 0, 0 , 0 );
setEffMoveKey( spep_2  + 60, bezi_cut, 0, 0 , 0 );
setEffScaleKey( spep_2  + 0, bezi_cut, 1.0, 1.0 );
setEffScaleKey( spep_2  + 60, bezi_cut, 1.0, 1.0 );
setEffRotateKey( spep_2  + 0, bezi_cut, 0 );
setEffRotateKey( spep_2  + 60, bezi_cut, 0 );
setEffAlphaKey( spep_2  + 0, bezi_cut, 255 );
setEffAlphaKey( spep_2  + 60, bezi_cut, 255 );

-- ** エフェクト等 ** --
bezi_beam = entryEffect( spep_2 + 0, SP_05,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, bezi_beam, 0, 0 , 0 );
setEffMoveKey( spep_2 + 110, bezi_beam, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, bezi_beam, 1.0, 1.0 );
setEffScaleKey( spep_2 + 110, bezi_beam, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, bezi_beam, 0 );
setEffRotateKey( spep_2 + 110, bezi_beam, 0 );
setEffAlphaKey( spep_2 + 0, bezi_beam, 255 );
setEffAlphaKey( spep_2 + 110, bezi_beam, 255 );

-- 書き文字エントリー --
ctgogo = entryEffectLife( spep_2 +1 +20, 190006, 36, 0x100, -1, 0, 20, 510);    -- ゴゴゴゴ

setEffMoveKey(  spep_2 +1 +20,  ctgogo,  20,  510);
setEffMoveKey(  spep_2 +1 +56,  ctgogo,  20,  510);

setEffAlphaKey( spep_2 +1  + 20, ctgogo, 0 );
setEffAlphaKey( spep_2 +1  + 21, ctgogo, 255 );
setEffAlphaKey( spep_2 +1  + 22, ctgogo, 255 );
setEffAlphaKey( spep_2 +1  + 54, ctgogo, 255 );
setEffAlphaKey( spep_2 +1  + 55, ctgogo, 255 );
setEffAlphaKey( spep_2 +1  + 56, ctgogo, 0 );

setEffRotateKey(  spep_2 +1 +20,  ctgogo,  0);
setEffRotateKey(  spep_2 +1 +56,  ctgogo,  0);

setEffScaleKey(  spep_2 +1 +20,  ctgogo,  0.8,  0.8);
setEffScaleKey(  spep_2 +1 +56,  ctgogo,  0.8,  0.8);

-- 書き文字エントリー --
ctzuo2 = entryEffectLife( spep_2 -2 + 60,  10012, 30, 0x100, -1, 0, -18.2, 221.7 );

setEffMoveKey( spep_2 -2 + 60, ctzuo2, -18.2, 221.7 , 0 );
setEffMoveKey( spep_2 -2 + 62, ctzuo2, -1, 268.9 , 0 );
setEffMoveKey( spep_2 -2 + 64, ctzuo2, 21.8, 321.7 , 0 );
setEffMoveKey( spep_2 -2 + 66, ctzuo2, 16.8, 316.6 , 0 );
setEffMoveKey( spep_2 -2 + 68, ctzuo2, 21.8, 321.7 , 0 );
setEffMoveKey( spep_2 -2 + 70, ctzuo2, 16.8, 316.6 , 0 );
setEffMoveKey( spep_2 -2 + 72, ctzuo2, 21.8, 321.7 , 0 );
setEffMoveKey( spep_2 -2 + 74, ctzuo2, 16.8, 316.6 , 0 );
setEffMoveKey( spep_2 -2 + 76, ctzuo2, 21.8, 321.7 , 0 );
setEffMoveKey( spep_2 -2 + 78, ctzuo2, 16.8, 316.6 , 0 );
setEffMoveKey( spep_2 -2 + 80, ctzuo2, 21.8, 321.7 , 0 );
setEffMoveKey( spep_2 -2 + 82, ctzuo2, 23.4, 315.2 , 0 );
setEffMoveKey( spep_2 -2 + 84, ctzuo2, 37.9, 321.8 , 0 );
setEffMoveKey( spep_2 -2 + 86, ctzuo2, 36.4, 312.1 , 0 );
setEffMoveKey( spep_2 -2 + 88, ctzuo2, 53.9, 321.8 , 0 );
setEffMoveKey( spep_2 -2 + 90, ctzuo2, 61.8, 321.7 , 0 );

setEffScaleKey( spep_2 -2 + 60, ctzuo2, 0.1, 0.1 );
setEffScaleKey( spep_2 -2 + 62, ctzuo2, 0.45, 0.45 );
setEffScaleKey( spep_2 -2 + 64, ctzuo2, 0.8+a, 0.8+a );
setEffScaleKey( spep_2 -2 + 80, ctzuo2, 0.8+a, 0.8+a );
--setEffScaleKey( spep_2 -2 + 82, ctzuo2, 1.04, 1.04 );
--setEffScaleKey( spep_2 -2 + 84, ctzuo2, 1.28, 1.28 );
--setEffScaleKey( spep_2 -2 + 86, ctzuo2, 1.52, 1.52 );
--setEffScaleKey( spep_2 -2 + 88, ctzuo2, 1.76, 1.76 );
setEffScaleKey( spep_2 -2 + 90, ctzuo2, 2+a+b +1, 2+a+b +1);

setEffRotateKey( spep_2 -2 + 60, ctzuo2, 30 );
setEffRotateKey( spep_2 -2 + 90, ctzuo2, 30 );

setEffAlphaKey( spep_2 -2 + 60, ctzuo2, 255 );
setEffAlphaKey( spep_2 -2 + 80, ctzuo2, 255 );
setEffAlphaKey( spep_2 -2 + 82, ctzuo2, 204 );
setEffAlphaKey( spep_2 -2 + 84, ctzuo2, 153 );
setEffAlphaKey( spep_2 -2 + 86, ctzuo2, 102 );
setEffAlphaKey( spep_2 -2 + 88, ctzuo2, 51 );
setEffAlphaKey( spep_2 -2 + 90, ctzuo2, 0 );

--SE
playSe( spep_2 + 0, 8);--出てくる
playSe( spep_2+20, 1018);--ごごご
playSe( spep_2 -2 + 60, 1004);--投げる
playSe( spep_2 -2 + 60, 1013);--投げる

--白フェード
entryFade( spep_2+57, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 200 );  --white fade
entryFade( spep_2+102, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_3 = spep_2+110;


------------------------------------------------------
-- ベジータ気弾着弾
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_3  + 0, SP_07,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3  + 0, hit_f, 0, 0 , 0 );
setEffMoveKey( spep_3  + 190, hit_f, 0, 0 , 0 );
setEffScaleKey( spep_3  + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_3  + 190, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_3  + 0, hit_f, 0 );
setEffRotateKey( spep_3  + 190, hit_f, 0 );
setEffAlphaKey( spep_3  + 0, hit_f, 255 );
setEffAlphaKey( spep_3  + 190, hit_f, 255 );
setEffAlphaKey( spep_3  + 191, hit_f, 0 );
setEffAlphaKey( spep_3  + 192, hit_f, 0 );


-- ** エフェクト等 ** --
goku_cut = entryEffect( spep_3  + 0, SP_06,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3  + 0, goku_cut, 0, 0 , 0 );
setEffMoveKey( spep_3  + 92, goku_cut, 0, 0 , 0 );
setEffScaleKey( spep_3  + 0, goku_cut, 1.0, 1.0 );
setEffScaleKey( spep_3  + 92, goku_cut, 1.0, 1.0 );
setEffRotateKey( spep_3  + 0, goku_cut, 0 );
setEffRotateKey( spep_3  + 92, goku_cut, 0 );
setEffAlphaKey( spep_3  + 0, goku_cut, 255 );
setEffAlphaKey( spep_3  + 92, goku_cut, 255 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_3  + 0, SP_08,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3  + 0, hit_b, 0, 0 , 0 );
setEffMoveKey( spep_3  + 190, hit_b, 0, 0 , 0 );
setEffScaleKey( spep_3  + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_3  + 190, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_3  + 0, hit_b, 0 );
setEffRotateKey( spep_3  + 190, hit_b, 0 );
setEffAlphaKey( spep_3  + 0, hit_b, 255 );
setEffAlphaKey( spep_3  + 190, hit_b, 255 );
setEffAlphaKey( spep_3  + 191, hit_b, 0 );
setEffAlphaKey( spep_3  + 192, hit_b, 0 );

--***カットイン***
speff = entryEffect(  spep_3  +82,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff3 = entryEffect(  spep_3  +82,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff3, 4, 5);  

--敵の動き
setDisp( spep_3  + 0, 1, 1 );
setDisp( spep_3 -3 + 188, 1, 0 );
changeAnime( spep_3  + 0, 1, 118 );

setMoveKey( spep_3  + 0, 1, -111.2, -38.3 , 0 );
--setMoveKey( spep_3 -3 + 2, 1, -116, -45.7 , 0 );
setMoveKey( spep_3 -3 + 4, 1, -108.1, -40.4 , 0 );
setMoveKey( spep_3 -3 + 6, 1, -119.4, -47.7 , 0 );
setMoveKey( spep_3 -3 + 8, 1, -105.1, -42.4 , 0 );
setMoveKey( spep_3 -3 + 10, 1, -109.9, -56.2 , 0 );
setMoveKey( spep_3 -3 + 12, 1, -102, -44.4 , 0 );
setMoveKey( spep_3 -3 + 14, 1, -106.9, -51.8 , 0 );
setMoveKey( spep_3 -3 + 16, 1, -99, -46.4 , 0 );
setMoveKey( spep_3 -3 + 18, 1, -103.8, -92.2 , 0 );
setMoveKey( spep_3 -3 + 20, 1, -96, -48.4 , 0 );
setMoveKey( spep_3 -3 + 22, 1, -126.4, -62.2 , 0 );
setMoveKey( spep_3 -3 + 24, 1, -92.9, -50.4 , 0 );
setMoveKey( spep_3 -3 + 26, 1, -97.8, -96.2 , 0 );
setMoveKey( spep_3 -3 + 28, 1, -89.9, -52.4 , 0 );
setMoveKey( spep_3 -3 + 30, 1, -105.6, -61.8 , 0 );
setMoveKey( spep_3 -3 + 32, 1, -82.9, -58.5 , 0 );
setMoveKey( spep_3 -3 + 34, 1, -85.8, -93.5 , 0 );
setMoveKey( spep_3 -3 + 36, 1, -75.9, -64.5 , 0 );
setMoveKey( spep_3 -3 + 38, 1, -98, -73.9 , 0 );
setMoveKey( spep_3 -3 + 40, 1, -69, -70.5 , 0 );
setMoveKey( spep_3 -3 + 42, 1, -71.9, -99.1 , 0 );
setMoveKey( spep_3 -3 + 44, 1, -62, -76.5 , 0 );
setMoveKey( spep_3 -3 + 46, 1, -84.1, -85.9 , 0 );
setMoveKey( spep_3 -3 + 48, 1, -55, -82.6 , 0 );
setMoveKey( spep_3 -3 + 50, 1, -58, -130.4 , 0 );
setMoveKey( spep_3 -3 + 52, 1, -48.1, -88.6 , 0 );
setMoveKey( spep_3 -3 + 54, 1, -51, -110.8 , 0 );
setMoveKey( spep_3 -3 + 56, 1, -41.1, -94.6 , 0 );
setMoveKey( spep_3 -3 + 58, 1, -44, -116.8 , 0 );
setMoveKey( spep_3 -3 + 60, 1, -32.1, -99.5 , 0 );
setMoveKey( spep_3 -3 + 62, 1, -33, -114.2 , 0 );
setMoveKey( spep_3 -3 + 64, 1, -21.1, -103.2 , 0 );
setMoveKey( spep_3 -3 + 66, 1, -22, -117.9 , 0 );
setMoveKey( spep_3 -3 + 68, 1, -10.1, -107 , 0 );
setMoveKey( spep_3 -3 + 70, 1, -11, -115.3 , 0 );
setMoveKey( spep_3 -3 + 72, 1, 0.9, -110.7 , 0 );
setMoveKey( spep_3 -3 + 74, 1, 0, -125.4 , 0 );
setMoveKey( spep_3 -3 + 76, 1, 11.9, -114.5 , 0 );
setMoveKey( spep_3 -3 + 78, 1, 11, -122.8 , 0 );
setMoveKey( spep_3 -3 + 80, 1, 22.9, -118.2 , 0 );
setMoveKey( spep_3 -3 + 82, 1, 22, -126.5 , 0 );
setMoveKey( spep_3 -3 + 84, 1, 34, -122 , 0 );
setMoveKey( spep_3 -3 + 86, 1, 33, -130.2 , 0 );
setMoveKey( spep_3 -3 + 88, 1, 44.9, -125.7 , 0 );
setMoveKey( spep_3 -3 + 90, 1, 33.4, -132.9 , 0 );
setMoveKey( spep_3 -3 + 92, 1, 47.4, -127.2 , 0 );
setMoveKey( spep_3 -3 + 94, 1, 42.1, -134.4 , 0 );
setMoveKey( spep_3 -3 + 96, 1, 49.7, -128.7 , 0 );
setMoveKey( spep_3 -3 + 98, 1, 38.1, -135.9 , 0 );
setMoveKey( spep_3 -3 + 100, 1, 52.1, -130.2 , 0 );
setMoveKey( spep_3 -3 + 102, 1, 46.9, -143.8 , 0 );
setMoveKey( spep_3 -3 + 104, 1, 54.5, -131.7 , 0 );
setMoveKey( spep_3 -3 + 106, 1, 49.3, -138.9 , 0 );
setMoveKey( spep_3 -3 + 108, 1, 56.9, -133.2 , 0 );
setMoveKey( spep_3 -3 + 110, 1, 51.7, -146.8 , 0 );
setMoveKey( spep_3 -3 + 112, 1, 59.3, -134.7 , 0 );
setMoveKey( spep_3 -3 + 114, 1, 47.7, -135.5 , 0 );
setMoveKey( spep_3 -3 + 116, 1, 61.6, -136.2 , 0 );
setMoveKey( spep_3 -3 + 118, 1, 56.4, -149.8 , 0 );
setMoveKey( spep_3 -3 + 120, 1, 64.1, -137.7 , 0 );
setMoveKey( spep_3 -3 + 122, 1, 58.8, -144.9 , 0 );
setMoveKey( spep_3 -3 + 124, 1, 66.4, -139.2 , 0 );
setMoveKey( spep_3 -3 + 126, 1, 61.2, -152.8 , 0 );
setMoveKey( spep_3 -3 + 128, 1, 68.8, -140.8 , 0 );
setMoveKey( spep_3 -3 + 130, 1, 57.2, -147.9 , 0 );
setMoveKey( spep_3 -3 + 132, 1, 71.2, -142.2 , 0 );
setMoveKey( spep_3 -3 + 134, 1, 66, -155.8 , 0 );
setMoveKey( spep_3 -3 + 136, 1, 73.6, -143.8 , 0 );
setMoveKey( spep_3 -3 + 138, 1, 68.3, -157.3 , 0 );
setMoveKey( spep_3 -3 + 140, 1, 76, -145.3 , 0 );
setMoveKey( spep_3 -3 + 142, 1, 64.4, -152.4 , 0 );
setMoveKey( spep_3 -3 + 144, 1, 78.3, -146.8 , 0 );
setMoveKey( spep_3 -3 + 146, 1, 73.1, -160.3 , 0 );
setMoveKey( spep_3 -3 + 148, 1, 80.7, -148.3 , 0 );
setMoveKey( spep_3 -3 + 150, 1, 75.5, -155.4 , 0 );
setMoveKey( spep_3 -3 + 152, 1, 83.1, -149.8 , 0 );
setMoveKey( spep_3 -3 + 154, 1, 71.5, -156.9 , 0 );
setMoveKey( spep_3 -3 + 156, 1, 85.5, -151.3 , 0 );
setMoveKey( spep_3 -3 + 158, 1, 80.3, -164.8 , 0 );
setMoveKey( spep_3 -3 + 160, 1, 87.9, -152.8 , 0 );
setMoveKey( spep_3 -3 + 162, 1, 82.7, -159.9 , 0 );
setMoveKey( spep_3 -3 + 164, 1, 90.3, -154.3 , 0 );
setMoveKey( spep_3 -3 + 166, 1, 78.7, -161.4 , 0 );
setMoveKey( spep_3 -3 + 168, 1, 92.6, -155.8 , 0 );
setMoveKey( spep_3 -3 + 170, 1, 87.5, -169.3 , 0 );
setMoveKey( spep_3 -3 + 172, 1, 95, -157.3 , 0 );
setMoveKey( spep_3 -3 + 174, 1, 89.8, -164.4 , 0 );
setMoveKey( spep_3 -3 + 176, 1, 97.4, -158.8 , 0 );
setMoveKey( spep_3 -3 + 178, 1, 85.8, -165.9 , 0 );
setMoveKey( spep_3 -3 + 180, 1, 99.8, -160.3 , 0 );
setMoveKey( spep_3 -3 + 182, 1, 94.6, -173.8 , 0 );
setMoveKey( spep_3 -3 + 184, 1, 102.2, -161.8 , 0 );
setMoveKey( spep_3 -3 + 186, 1, 97, -168.9 , 0 );
setMoveKey( spep_3 -3 + 188, 1, 104.6, -163.3 , 0 );

setScaleKey( spep_3  + 0, 1, 1.25, 1.25 );
setScaleKey( spep_3 -3 + 4, 1, 1.25, 1.25 );
setScaleKey( spep_3 -3 + 6, 1, 1.27, 1.27 );
setScaleKey( spep_3 -3 + 14, 1, 1.27, 1.27 );
setScaleKey( spep_3 -3 + 16, 1, 1.29, 1.29 );
setScaleKey( spep_3 -3 + 22, 1, 1.29, 1.29 );
setScaleKey( spep_3 -3 + 24, 1, 1.31, 1.31 );
setScaleKey( spep_3 -3 + 28, 1, 1.31, 1.31 );
setScaleKey( spep_3 -3 + 30, 1, 1.33, 1.33 );
setScaleKey( spep_3 -3 + 32, 1, 1.33, 1.33 );
setScaleKey( spep_3 -3 + 34, 1, 1.35, 1.35 );
setScaleKey( spep_3 -3 + 36, 1, 1.35, 1.35 );
setScaleKey( spep_3 -3 + 38, 1, 1.37, 1.37 );
setScaleKey( spep_3 -3 + 40, 1, 1.39, 1.39 );
setScaleKey( spep_3 -3 + 42, 1, 1.39, 1.39 );
setScaleKey( spep_3 -3 + 44, 1, 1.41, 1.41 );
setScaleKey( spep_3 -3 + 46, 1, 1.41, 1.41 );
setScaleKey( spep_3 -3 + 48, 1, 1.43, 1.43 );
setScaleKey( spep_3 -3 + 50, 1, 1.45, 1.45 );
setScaleKey( spep_3 -3 + 52, 1, 1.45, 1.45 );
setScaleKey( spep_3 -3 + 54, 1, 1.47, 1.47 );
setScaleKey( spep_3 -3 + 56, 1, 1.47, 1.47 );
setScaleKey( spep_3 -3 + 58, 1, 1.49, 1.49 );
setScaleKey( spep_3 -3 + 60, 1, 1.5, 1.5 );
setScaleKey( spep_3 -3 + 62, 1, 1.5, 1.5 );
setScaleKey( spep_3 -3 + 64, 1, 1.52, 1.52 );
setScaleKey( spep_3 -3 + 66, 1, 1.54, 1.54 );
setScaleKey( spep_3 -3 + 68, 1, 1.54, 1.54 );
setScaleKey( spep_3 -3 + 70, 1, 1.56, 1.56 );
setScaleKey( spep_3 -3 + 72, 1, 1.58, 1.58 );
setScaleKey( spep_3 -3 + 74, 1, 1.58, 1.58 );
setScaleKey( spep_3 -3 + 76, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 78, 1, 1.62, 1.62 );
setScaleKey( spep_3 -3 + 80, 1, 1.62, 1.62 );
setScaleKey( spep_3 -3 + 82, 1, 1.64, 1.64 );
setScaleKey( spep_3 -3 + 84, 1, 1.66, 1.66 );
setScaleKey( spep_3 -3 + 86, 1, 1.66, 1.66 );
setScaleKey( spep_3 -3 + 88, 1, 1.68, 1.68 );
setScaleKey( spep_3 -3 + 94, 1, 1.68, 1.68 );
setScaleKey( spep_3 -3 + 96, 1, 1.7, 1.7 );
setScaleKey( spep_3 -3 + 110, 1, 1.7, 1.7 );
setScaleKey( spep_3 -3 + 112, 1, 1.72, 1.72 );
setScaleKey( spep_3 -3 + 126, 1, 1.72, 1.72 );
setScaleKey( spep_3 -3 + 128, 1, 1.74, 1.74 );
setScaleKey( spep_3 -3 + 142, 1, 1.74, 1.74 );
setScaleKey( spep_3 -3 + 144, 1, 1.76, 1.76 );
setScaleKey( spep_3 -3 + 158, 1, 1.76, 1.76 );
setScaleKey( spep_3 -3 + 160, 1, 1.78, 1.78 );
setScaleKey( spep_3 -3 + 174, 1, 1.78, 1.78 );
setScaleKey( spep_3 -3 + 176, 1, 1.8, 1.8 );
setScaleKey( spep_3 -3 + 188, 1, 1.8, 1.8 );

setRotateKey( spep_3  + 0, 1, 0 );
setRotateKey( spep_3 -3 + 188, 1, 0 );

--SE
playSe( spep_3+18 - 3, 1023);--当たった
playSe( spep_3+38, 1018);--カットイン
playSe( spep_3+96, 1018);--カットイン

--白フェード
entryFade( spep_3+15, 0, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3+182, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_4 = spep_3+190;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_4 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_4 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_4 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_4 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_4 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_4 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_4 + 0, shuchusen, 0 );
setEffRotateKey( spep_4 + 90, shuchusen, 0 );

setEffAlphaKey( spep_4 + 0, shuchusen, 255 );
setEffAlphaKey( spep_4 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_4 + 0, SE_05 );

--白フェード
entryFade( spep_4 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 94;

------------------------------------------------------
-- ナビ歩行
------------------------------------------------------
-- ** エフェクト等 ** --
walk = entryEffect( spep_5 + 0, SP_09,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, walk, 0, 0 , 0 );
setEffMoveKey( spep_5 + 220, walk, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, walk, 1.0, 1.0 );
setEffScaleKey( spep_5 + 220, walk, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, walk, 0 );
setEffRotateKey( spep_5 + 220, walk, 0 );
setEffAlphaKey( spep_5 + 0, walk, 255 );
setEffAlphaKey( spep_5 + 220, walk, 255 );

--白フェード
entryFade( spep_5+212, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
SE4 = playSe( spep_5 + 0, 1044 );  --地鳴り
SE5 = playSe( spep_5 + 0, 1124 );  --発射中
setSeVolume( spep_5 + 0, 1124, 70 );
stopSe(spep_5 + 220, SE5, 20 );

-- ** 次の準備 ** --
spep_6 = spep_5 + 220;

------------------------------------------------------
-- 押し切る
------------------------------------------------------
-- ** エフェクト等 ** --
push_f = entryEffect( spep_6 + 0, SP_10,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, push_f, 0, 0 , 0 );
setEffMoveKey( spep_6 + 66, push_f, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, push_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 66, push_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, push_f, 0 );
setEffRotateKey( spep_6 + 66, push_f, 0 );
setEffAlphaKey( spep_6 + 0, push_f, 255 );
setEffAlphaKey( spep_6 + 66, push_f, 255 );
setEffAlphaKey( spep_6 + 67, push_f, 0 );
setEffAlphaKey( spep_6 + 68, push_f, 0 );

-- ** エフェクト等 ** --
push_b = entryEffect( spep_6 + 0, SP_11,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, push_b, 0, 0 , 0 );
setEffMoveKey( spep_6 + 66, push_b, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, push_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 66, push_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, push_b, 0 );
setEffRotateKey( spep_6 + 66, push_b, 0 );
setEffAlphaKey( spep_6 + 0, push_b, 255 );
setEffAlphaKey( spep_6 + 66, push_b, 255 );
setEffAlphaKey( spep_6 + 67, push_b, 0 );
setEffAlphaKey( spep_6 + 68, push_b, 0 );

--文字エントリー
ctzudododo2 = entryEffectLife( spep_6  + 0,  10014, 26 -3, 0x100, -1, 0, 130.1, 416 );

setEffMoveKey( spep_6  + 0, ctzudododo2, 130.1, 416 , 0 );
--setEffMoveKey( spep_6 -3 + 2, ctzudododo2, 115, 391.4 , 0 );
setEffMoveKey( spep_6 -3 + 4, ctzudododo2, 130.1, 416 , 0 );
setEffMoveKey( spep_6 -3 + 6, ctzudododo2, 115, 391.4 , 0 );
setEffMoveKey( spep_6 -3 + 8, ctzudododo2, 130.1, 416 , 0 );
setEffMoveKey( spep_6 -3 + 10, ctzudododo2, 115, 391.4 , 0 );
setEffMoveKey( spep_6 -3 + 12, ctzudododo2, 130.1, 416 , 0 );
setEffMoveKey( spep_6 -3 + 14, ctzudododo2, 115, 391.4 , 0 );
setEffMoveKey( spep_6 -3 + 16, ctzudododo2, 130.1, 416 , 0 );
setEffMoveKey( spep_6 -3 + 18, ctzudododo2, 115, 391.4 , 0 );
setEffMoveKey( spep_6 -3 + 20, ctzudododo2, 130.1, 416 , 0 );
setEffMoveKey( spep_6 -3 + 22, ctzudododo2, 113, 388.2 , 0 );
setEffMoveKey( spep_6 -3 + 24, ctzudododo2, 130.1, 416 , 0 );
setEffMoveKey( spep_6 -3 + 26, ctzudododo2, 108.9, 381.6 , 0 );

setEffScaleKey( spep_6  + 0, ctzudododo2, 1+b, 1+b );
setEffScaleKey( spep_6 -3 + 20, ctzudododo2, 1+b, 1+b );
setEffScaleKey( spep_6 -3 + 22, ctzudododo2, 1.13+b, 1.13+b );
setEffScaleKey( spep_6 -3 + 24, ctzudododo2, 1.27+b, 1.27+b );
setEffScaleKey( spep_6 -3 + 26, ctzudododo2, 1.4+b, 2.5+b );

setEffRotateKey( spep_6  + 0, ctzudododo2, 54.7 );
setEffRotateKey( spep_6 -3 + 26, ctzudododo2, 54.7 );

setEffAlphaKey( spep_6  + 0, ctzudododo2, 255 );
setEffAlphaKey( spep_6 -3 + 20, ctzudododo2, 255 );
setEffAlphaKey( spep_6 -3 + 22, ctzudododo2, 174 );
setEffAlphaKey( spep_6 -3 + 24, ctzudododo2, 94 );
setEffAlphaKey( spep_6 -3 + 26, ctzudododo2, 13 );

--敵の動き
setDisp( spep_6  + 0, 1, 1 );
setDisp( spep_6  + 44 -3, 1, 0 );

changeAnime( spep_6  + 0, 1, 118 );

setMoveKey( spep_6  + 0, 1, -142.6, -40.9 , 0 );
--setMoveKey( spep_6 -3 + 2, 1, -141, -64 , 0 );
setMoveKey( spep_6 -3 + 4, 1, -114.3, -52.5 , 0 );
setMoveKey( spep_6 -3 + 6, 1, -121.3, -66.4 , 0 );
setMoveKey( spep_6 -3 + 8, 1, -90.5, -63 , 0 );
setMoveKey( spep_6 -3 + 10, 1, -89.3, -86.3 , 0 );
setMoveKey( spep_6 -3 + 12, 1, -58.6, -75.1 , 0 );
setMoveKey( spep_6 -3 + 14, 1, -65.3, -98.4 , 0 );
setMoveKey( spep_6 -3 + 16, 1, -31.2, -85.5 , 0 );
setMoveKey( spep_6 -3 + 18, 1, -20.5, -102.3 , 0 );
setMoveKey( spep_6 -3 + 20, 1, 10.5, -91.5 , 0 );
setMoveKey( spep_6 -3 + 22, 1, 131.7, -97.2 , 0 );
setMoveKey( spep_6 -3 + 24, 1, 276.9, -79 , 0 );
setMoveKey( spep_6 -3 + 26, 1, 415.1, -70.9 , 0 );
setMoveKey( spep_6 -3 + 28, 1, 534.9, -76.7 , 0 );
setMoveKey( spep_6 -3 + 30, 1, 678.6, -58.5 , 0 );
setMoveKey( spep_6 -3 + 32, 1, 798.2, -64.2 , 0 );
setMoveKey( spep_6 -3 + 34, 1, 953, -25 , 0 );
setMoveKey( spep_6 -3 + 36, 1, 1082.6, -10.9 , 0 );
setMoveKey( spep_6 -3 + 38, 1, 1236.2, 27.3 , 0 );
setMoveKey( spep_6 -3 + 40, 1, 1365.8, 41.4 , 0 );
setMoveKey( spep_6 -3 + 42, 1, 1519.3, 79.6 , 0 );
setMoveKey( spep_6 -3 + 44, 1, 1633.7, 97.9 , 0 );

setScaleKey( spep_6  + 0, 1, 1.43, 1.43 );
--setScaleKey( spep_6 -3 + 2, 1, 1.48, 1.48 );
setScaleKey( spep_6 -3 + 4, 1, 1.51, 1.51 );
setScaleKey( spep_6 -3 + 6, 1, 1.57, 1.57 );
setScaleKey( spep_6 -3 + 8, 1, 1.6, 1.6 );
setScaleKey( spep_6 -3 + 10, 1, 1.66, 1.66 );
setScaleKey( spep_6 -3 + 12, 1, 1.69, 1.69 );
setScaleKey( spep_6 -3 + 14, 1, 1.75, 1.75 );
setScaleKey( spep_6 -3 + 16, 1, 1.78, 1.78 );
setScaleKey( spep_6 -3 + 18, 1, 1.82, 1.82 );
setScaleKey( spep_6 -3 + 20, 1, 1.87, 1.87 );
setScaleKey( spep_6 -3 + 22, 1, 1.92, 1.92 );
setScaleKey( spep_6 -3 + 24, 1, 1.96, 1.96 );
setScaleKey( spep_6 -3 + 26, 1, 1.99, 1.99 );
setScaleKey( spep_6 -3 + 28, 1, 2.04, 2.04 );
setScaleKey( spep_6 -3 + 30, 1, 2.08, 2.08 );
setScaleKey( spep_6 -3 + 32, 1, 2.13, 2.13 );
setScaleKey( spep_6 -3 + 34, 1, 2.15, 2.15 );
setScaleKey( spep_6 -3 + 36, 1, 2.2, 2.2 );
setScaleKey( spep_6 -3 + 38, 1, 2.24, 2.24 );
setScaleKey( spep_6 -3 + 40, 1, 2.29, 2.29 );
setScaleKey( spep_6 -3 + 42, 1, 2.33, 2.33 );
setScaleKey( spep_6 -3 + 44, 1, 2.36, 2.36 );

setRotateKey( spep_6  + 0, 1, -3.1 );
--setRotateKey( spep_6 -3 + 2, 1, -2.9 );
setRotateKey( spep_6 -3 + 4, 1, -2.6 );
setRotateKey( spep_6 -3 + 6, 1, -2.2 );
setRotateKey( spep_6 -3 + 8, 1, -1.9 );
setRotateKey( spep_6 -3 + 10, 1, -1.6 );
setRotateKey( spep_6 -3 + 12, 1, -1.3 );
setRotateKey( spep_6 -3 + 14, 1, -1 );
setRotateKey( spep_6 -3 + 16, 1, -0.6 );
setRotateKey( spep_6 -3 + 18, 1, -0.3 );
setRotateKey( spep_6 -3 + 20, 1, 0 );
setRotateKey( spep_6 -3 + 22, 1, -1.1 );
setRotateKey( spep_6 -3 + 24, 1, -2.1 );
setRotateKey( spep_6 -3 + 26, 1, -3.2 );
setRotateKey( spep_6 -3 + 28, 1, -4.3 );
setRotateKey( spep_6 -3 + 30, 1, -5.4 );
setRotateKey( spep_6 -3 + 32, 1, -6.4 );
setRotateKey( spep_6 -3 + 34, 1, -7.5 );
setRotateKey( spep_6 -3 + 36, 1, -8.6 );
setRotateKey( spep_6 -3 + 38, 1, -9.7 );
setRotateKey( spep_6 -3 + 40, 1, -10.7 );
setRotateKey( spep_6 -3 + 42, 1, -11.8 );
setRotateKey( spep_6 -3 + 44, 1, -12.9 );

-- ** 音 ** --
stopSe( spep_6 + 30, SE4, 40 );
playSe( spep_6 + 20, 1021 );  --押し出し
setSeVolume( spep_6 + 20, 1021, 120 );

-- ** 次の準備 ** --
spep_7 = spep_6 + 66;

------------------------------------------------------
-- ギャン
-----------------------------------------------------
-- ** エフェクト等 ** --
gyan = entryEffect( spep_7 + 0, 190000,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, gyan, 0, 0 , 0 );
setEffMoveKey( spep_7 + 60, gyan, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, gyan, 1.0, 1.0 );
setEffScaleKey( spep_7 + 60, gyan, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, gyan, 0 );
setEffRotateKey( spep_7 + 60, gyan, 0 );
setEffAlphaKey( spep_7 + 0, gyan, 255 );
setEffAlphaKey( spep_7 + 60, gyan, 255 );

ctgyan = entryEffectLife( spep_7 + 0,  10006, 58, 0x100, -1, 0, 7.1, 306.8 );--ギャンッ

setEffMoveKey( spep_7 + 0, ctgyan, 7.1, 306.8 , 0 );
setEffMoveKey( spep_7 + 58, ctgyan, 7.1, 306.8 , 0 );

z=2.7;

setEffScaleKey( spep_7 + 0, ctgyan, 0.6 + z, 0.6 + z );
setEffScaleKey( spep_7 + 2, ctgyan, 0.7 + z, 0.7 + z );
setEffScaleKey( spep_7 + 4, ctgyan, 0.8 + z, 0.8 + z );
setEffScaleKey( spep_7 + 6, ctgyan, 0.9 + z, 0.9 + z );
setEffScaleKey( spep_7 + 8, ctgyan, 1 + z, 1 + z );
setEffScaleKey( spep_7 + 10, ctgyan, 1.01 + z, 1.01 + z );
setEffScaleKey( spep_7 + 12, ctgyan, 1.02 + z, 1.02 + z );
setEffScaleKey( spep_7 + 14, ctgyan, 1.02 + z, 1.02 + z );
setEffScaleKey( spep_7 + 16, ctgyan, 1.03 + z, 1.03 + z );
setEffScaleKey( spep_7 + 18, ctgyan, 1.04 + z, 1.04 + z );
setEffScaleKey( spep_7 + 20, ctgyan, 1.05 + z, 1.05 + z );
setEffScaleKey( spep_7 + 22, ctgyan, 1.06 + z, 1.06 + z );
setEffScaleKey( spep_7 + 24, ctgyan, 1.06 + z, 1.06 + z );
setEffScaleKey( spep_7 + 26, ctgyan, 1.07 + z, 1.07 + z );
setEffScaleKey( spep_7 + 28, ctgyan, 1.08 + z, 1.08 + z );
setEffScaleKey( spep_7 + 30, ctgyan, 1.09 + z, 1.09 + z );
setEffScaleKey( spep_7 + 32, ctgyan, 1.1 + z, 1.1 + z );
setEffScaleKey( spep_7 + 34, ctgyan, 1.1 + z, 1.1 + z );
setEffScaleKey( spep_7 + 36, ctgyan, 1.11 + z, 1.11 + z );
setEffScaleKey( spep_7 + 38, ctgyan, 1.12 + z, 1.12 + z );
setEffScaleKey( spep_7 + 40, ctgyan, 1.13 + z, 1.13 + z );
setEffScaleKey( spep_7 + 42, ctgyan, 1.14 + z, 1.14 + z );
setEffScaleKey( spep_7 + 44, ctgyan, 1.14 + z, 1.14 + z );
setEffScaleKey( spep_7 + 46, ctgyan, 1.15 + z, 1.15 + z );
setEffScaleKey( spep_7 + 48, ctgyan, 1.16 + z, 1.16 + z );
setEffScaleKey( spep_7 + 50, ctgyan, 1.17 + z, 1.17 + z );
setEffScaleKey( spep_7 + 52, ctgyan, 1.17 + z, 1.17 + z );
setEffScaleKey( spep_7 + 54, ctgyan, 1.18 + z, 1.18 + z );
setEffScaleKey( spep_7 + 56, ctgyan, 1.19 + z, 1.19 + z );
setEffScaleKey( spep_7 + 58, ctgyan, 1.2 + z, 1.2 + z );

setEffRotateKey( spep_7 + 0, ctgyan, 0 );
setEffRotateKey( spep_7 + 58, ctgyan, 0 );

setEffAlphaKey( spep_7 + 0, ctgyan, 255 );
setEffAlphaKey( spep_7 + 58, ctgyan, 255 );

--白フェード
entryFade( spep_7 + 52, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_7, 1023 ); --爆発

--次の準備
spep_8 =spep_7+60;

------------------------------------------------------
-- 終わり
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_8 + 0, 1569,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_8 + 190, finish, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, finish, 1.45, 1.45 );
setEffScaleKey( spep_8 + 190, finish, 1.45, 1.45 );
setEffRotateKey( spep_8 + 0, finish, 0 );
setEffRotateKey( spep_8 + 190, finish, 0 );
setEffAlphaKey( spep_8 + 0, finish, 255 );
setEffAlphaKey( spep_8 + 190, finish, 255 );

-- ** 音 ** --
playSe( spep_8, 1024 ); --フィニッシュ 

-- ** ダメージ表示 ** --
dealDamage(spep_8 + 10);
endPhase( spep_8 + 180 );

else 

------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 構え〜発射
------------------------------------------------------
--はじめの準備
spep_0 = 0;

-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_0 + 120, tame, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tame, -1.0, 1.0 );
setEffScaleKey( spep_0 + 120, tame, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 120, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 120, tame, 255 );

--集中線
shuchusen1 = entryEffectLife( spep_0  + 0,  906, 38 -2, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_0  + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 -2 + 38, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0  + 0, shuchusen1, 1.08, 1.27 );
setEffScaleKey( spep_0 -2 + 38, shuchusen1, 1.08, 1.27 );

setEffRotateKey( spep_0  + 0, shuchusen1, 180 );
setEffRotateKey( spep_0 -2 + 38, shuchusen1, 180 );

setEffAlphaKey( spep_0  + 0, shuchusen1, 165 );
setEffAlphaKey( spep_0 -2 + 38, shuchusen1, 165 );

--書き文字
ctzuo = entryEffectLife( spep_0 -3 + 40,  10012, 30, 0x100, -1, 0, 76, 259.9 );--ズオッ

setEffMoveKey( spep_0 -3 + 40, ctzuo, 76, 259.9 , 0 );
setEffMoveKey( spep_0 -3 + 42, ctzuo, 93.2, 307.1 , 0 );
setEffMoveKey( spep_0 -3 + 44, ctzuo, 116, 359.9 , 0 );
setEffMoveKey( spep_0 -3 + 46, ctzuo, 111, 354.8 , 0 );
setEffMoveKey( spep_0 -3 + 48, ctzuo, 116, 359.9 , 0 );
setEffMoveKey( spep_0 -3 + 50, ctzuo, 111, 354.8 , 0 );
setEffMoveKey( spep_0 -3 + 52, ctzuo, 116, 359.9 , 0 );
setEffMoveKey( spep_0 -3 + 54, ctzuo, 111, 354.8 , 0 );
setEffMoveKey( spep_0 -3 + 56, ctzuo, 116, 359.9 , 0 );
setEffMoveKey( spep_0 -3 + 58, ctzuo, 111, 354.8 , 0 );
setEffMoveKey( spep_0 -3 + 60, ctzuo, 116, 359.9 , 0 );
setEffMoveKey( spep_0 -3 + 62, ctzuo, 117.6, 353.4 , 0 );
setEffMoveKey( spep_0 -3 + 64, ctzuo, 132, 359.9 , 0 );
setEffMoveKey( spep_0 -3 + 66, ctzuo, 130.5, 350.3 , 0 );
setEffMoveKey( spep_0 -3 + 68, ctzuo, 148, 359.9 , 0 );
setEffMoveKey( spep_0 -3 + 70, ctzuo, 156, 359.9 , 0 );

setEffScaleKey( spep_0 -3 + 40, ctzuo, 0.1, 0.1 );
setEffScaleKey( spep_0 -3 + 42, ctzuo, 0.45 +a, 0.45 +a);
setEffScaleKey( spep_0 -3 + 44, ctzuo, 0.8 +a, 0.8 +a );
setEffScaleKey( spep_0 -3 + 60, ctzuo, 0.8 +a, 0.8 +a );
--setEffScaleKey( spep_0 -3 + 62, ctzuo, 1.04 +a, 1.04 +a );
--setEffScaleKey( spep_0 -3 + 64, ctzuo, 1.28 +a, 1.28 +a );
--setEffScaleKey( spep_0 -3 + 66, ctzuo, 1.52 +a, 1.52 +a );
--setEffScaleKey( spep_0 -3 + 68, ctzuo, 1.76 +a, 1.76 +a );
setEffScaleKey( spep_0 -3 + 70, ctzuo, 2 +a +b, 2 +a +b );

setEffRotateKey( spep_0 -3 + 40, ctzuo, 30 );
setEffRotateKey( spep_0 -3 + 70, ctzuo, 30 );

setEffAlphaKey( spep_0 -3 + 40, ctzuo, 255 );
setEffAlphaKey( spep_0 -3 + 60, ctzuo, 255 );
setEffAlphaKey( spep_0 -3 + 62, ctzuo, 204 );
setEffAlphaKey( spep_0 -3 + 64, ctzuo, 153 );
setEffAlphaKey( spep_0 -3 + 66, ctzuo, 102 );
setEffAlphaKey( spep_0 -3 + 68, ctzuo, 51 );
setEffAlphaKey( spep_0 -3 + 70, ctzuo, 0 );


--白フェード
entryFade( spep_0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_0 +37, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 200 );  --white fade
entryFade( spep_0 +112, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--音
SE1 = playSe( spep_0 + 0, 55 );  --気溜め
stopSe( spep_0 -3 + 40, SE1, 10 );
playSe( spep_0 -3 + 40, 1022 );  --発射

--次の準備
spep_1 = spep_0+118;


------------------------------------------------------
-- ビームヒット〜耐える
------------------------------------------------------
-- ** エフェクト等 ** --
beam_f = entryEffect( spep_1 + 0, SP_02,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, beam_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 146, beam_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, beam_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 146, beam_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, beam_f, 0 );
setEffRotateKey( spep_1 + 146, beam_f, 0 );
setEffAlphaKey( spep_1 + 0, beam_f, 255 );
setEffAlphaKey( spep_1 + 146, beam_f, 255 );

-- ** エフェクト等 ** --
beam_b = entryEffect( spep_1 + 0, SP_03,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, beam_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 146, beam_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, beam_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 146, beam_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, beam_b, 0 );
setEffRotateKey( spep_1 + 146, beam_b, 0 );
setEffAlphaKey( spep_1 + 0, beam_b, 255 );
setEffAlphaKey( spep_1 + 146, beam_b, 255 );

--文字エントリー
ctzudodo = entryEffectLife( spep_1  + 0,  10014, 72 -3, 0x100, -1, 0, 130, 364 );--ズドドドッ

setEffMoveKey( spep_1  + 0, ctzudodo, 130, 364 , 0 );
--setEffMoveKey( spep_1 -3 + 2, ctzudodo, 110.9, 346.4 , 0 );
setEffMoveKey( spep_1 -3 + 4, ctzudodo, 130, 364 , 0 );
setEffMoveKey( spep_1 -3 + 6, ctzudodo, 110.9, 346.4 , 0 );
setEffMoveKey( spep_1 -3 + 8, ctzudodo, 130, 364 , 0 );
setEffMoveKey( spep_1 -3 + 10, ctzudodo, 110.9, 346.4 , 0 );
setEffMoveKey( spep_1 -3 + 12, ctzudodo, 130, 364 , 0 );
setEffMoveKey( spep_1 -3 + 14, ctzudodo, 110.9, 346.4 , 0 );
setEffMoveKey( spep_1 -3 + 16, ctzudodo, 130, 364 , 0 );
setEffMoveKey( spep_1 -3 + 18, ctzudodo, 110.9, 346.4 , 0 );
setEffMoveKey( spep_1 -3 + 20, ctzudodo, 130, 364 , 0 );
setEffMoveKey( spep_1 -3 + 22, ctzudodo, 110.9, 346.4 , 0 );
setEffMoveKey( spep_1 -3 + 24, ctzudodo, 130, 364 , 0 );
setEffMoveKey( spep_1 -3 + 26, ctzudodo, 110.9, 346.4 , 0 );
setEffMoveKey( spep_1 -3 + 28, ctzudodo, 130, 364 , 0 );
setEffMoveKey( spep_1 -3 + 30, ctzudodo, 110.9, 346.4 , 0 );
setEffMoveKey( spep_1 -3 + 32, ctzudodo, 130, 364 , 0 );
setEffMoveKey( spep_1 -3 + 34, ctzudodo, 110.9, 346.4 , 0 );
setEffMoveKey( spep_1 -3 + 36, ctzudodo, 130, 364 , 0 );
setEffMoveKey( spep_1 -3 + 38, ctzudodo, 110.9, 346.4 , 0 );
setEffMoveKey( spep_1 -3 + 40, ctzudodo, 130, 364 , 0 );
setEffMoveKey( spep_1 -3 + 42, ctzudodo, 110.9, 346.4 , 0 );
setEffMoveKey( spep_1 -3 + 44, ctzudodo, 130, 364 , 0 );
setEffMoveKey( spep_1 -3 + 46, ctzudodo, 110.9, 346.4 , 0 );
setEffMoveKey( spep_1 -3 + 48, ctzudodo, 130, 364 , 0 );
setEffMoveKey( spep_1 -3 + 50, ctzudodo, 110.9, 346.4 , 0 );
setEffMoveKey( spep_1 -3 + 52, ctzudodo, 130, 364 , 0 );
setEffMoveKey( spep_1 -3 + 54, ctzudodo, 110.9, 346.4 , 0 );
setEffMoveKey( spep_1 -3 + 56, ctzudodo, 130, 364 , 0 );
setEffMoveKey( spep_1 -3 + 58, ctzudodo, 110.9, 346.4 , 0 );
setEffMoveKey( spep_1 -3 + 60, ctzudodo, 130, 364 , 0 );
setEffMoveKey( spep_1 -3 + 62, ctzudodo, 110.9, 346.4 , 0 );
setEffMoveKey( spep_1 -3 + 64, ctzudodo, 130, 364 , 0 );
setEffMoveKey( spep_1 -3 + 66, ctzudodo, 110.9, 346.4 , 0 );
setEffMoveKey( spep_1 -3 + 68, ctzudodo, 130, 364 , 0 );
setEffMoveKey( spep_1 -3 + 70, ctzudodo, 110.9, 346.4 , 0 );
setEffMoveKey( spep_1 -3 + 72, ctzudodo, 130, 364 , 0 );

setEffScaleKey( spep_1  + 0, ctzudodo, 2.8, 3.4 );
setEffScaleKey( spep_1 -3 + 72, ctzudodo, 2.8, 3.4 );

setEffRotateKey( spep_1 + 0, ctzudodo, -9 );
setEffRotateKey( spep_1 -3 + 72, ctzudodo, -9 );

setEffAlphaKey( spep_1  + 0, ctzudodo, 255 );
setEffAlphaKey( spep_1 -3 + 72, ctzudodo, 255 );

--音
SE2 = playSe( spep_1 + 0, 1021 );  --発射中
SE3 = playSe( spep_1 + 0, 1044 );  --地鳴り
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 40; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE2, 0 );
    stopSe( SP_dodge - 12, SE3, 0 );
    
    pauseAll( SP_dodge, 67 );
    
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
    
    ------------------------------------------------------
    -- 回避しなかった場合
    ------------------------------------------------------

--敵の動き
setDisp( spep_1 -3  + 74, 1, 1 );
setDisp( spep_1 -3  + 148, 1, 0 );
changeAnime( spep_1 -3  + 74, 1, 118 );

setMoveKey( spep_1 -3 + 74, 1, 1632.7, -635.9 , 0 );
setMoveKey( spep_1 -3 + 76, 1, 1412.7, -577 , 0 );
setMoveKey( spep_1 -3 + 78, 1, 1192.8, -518 , 0 );
setMoveKey( spep_1 -3 + 80, 1, 972.8, -459 , 0 );
setMoveKey( spep_1 -3 + 82, 1, 752.9, -400.1 , 0 );
setMoveKey( spep_1 -3 + 84, 1, 532.9, -341.1 , 0 );
setMoveKey( spep_1 -3 + 86, 1, 312.9, -282.1 , 0 );
setMoveKey( spep_1 -3 + 88, 1, 92.9, -223.1 , 0 );
setMoveKey( spep_1 -3 + 90, 1, 96.9, -224.3 , 0 );
setMoveKey( spep_1 -3 + 92, 1, 101, -225.5 , 0 );
setMoveKey( spep_1 -3 + 94, 1, 105, -226.7 , 0 );
setMoveKey( spep_1 -3 + 96, 1, 109, -227.9 , 0 );
setMoveKey( spep_1 -3 + 98, 1, 113, -229.1 , 0 );
setMoveKey( spep_1 -3 + 100, 1, 117.1, -230.3 , 0 );
setMoveKey( spep_1 -3 + 102, 1, 121.1, -231.5 , 0 );
setMoveKey( spep_1 -3 + 104, 1, 125.1, -232.6 , 0 );
setMoveKey( spep_1 -3 + 106, 1, 129.2, -233.8 , 0 );
setMoveKey( spep_1 -3 + 108, 1, 133.2, -235 , 0 );
setMoveKey( spep_1 -3 + 110, 1, 137.2, -236.2 , 0 );
setMoveKey( spep_1 -3 + 112, 1, 141.2, -237.4 , 0 );
setMoveKey( spep_1 -3 + 114, 1, 145.3, -238.6 , 0 );
setMoveKey( spep_1 -3 + 116, 1, 149.3, -239.8 , 0 );
setMoveKey( spep_1 -3 + 118, 1, 153.3, -241 , 0 );
setMoveKey( spep_1 -3 + 120, 1, 157.3, -242.2 , 0 );
setMoveKey( spep_1 -3 + 122, 1, 161.4, -243.4 , 0 );
setMoveKey( spep_1 -3 + 124, 1, 165.4, -244.6 , 0 );
setMoveKey( spep_1 -3 + 126, 1, 169.4, -245.8 , 0 );
setMoveKey( spep_1 -3 + 128, 1, 173.4, -247 , 0 );
setMoveKey( spep_1 -3 + 130, 1, 177.5, -248.2 , 0 );
setMoveKey( spep_1 -3 + 132, 1, 181.5, -249.4 , 0 );
setMoveKey( spep_1 -3 + 134, 1, 185.5, -250.5 , 0 );
setMoveKey( spep_1 -3 + 136, 1, 189.5, -251.7 , 0 );
setMoveKey( spep_1 -3 + 138, 1, 193.6, -252.9 , 0 );
setMoveKey( spep_1 -3 + 140, 1, 197.6, -254.1 , 0 );
setMoveKey( spep_1 -3 + 142, 1, 201.6, -255.3 , 0 );
setMoveKey( spep_1 -3 + 144, 1, 205.6, -256.5 , 0 );
setMoveKey( spep_1 -3 + 146, 1, 209.7, -257.7 , 0 );
setMoveKey( spep_1 -3 + 148, 1, 213.7, -258.9 , 0 );

setScaleKey( spep_1 -3 + 74, 1, 4.74, 4.74 );
setScaleKey( spep_1 -3 + 76, 1, 4.32, 4.32 );
setScaleKey( spep_1 -3 + 78, 1, 3.91, 3.91 );
setScaleKey( spep_1 -3 + 80, 1, 3.49, 3.49 );
setScaleKey( spep_1 -3 + 82, 1, 3.08, 3.08 );
setScaleKey( spep_1 -3 + 84, 1, 2.66, 2.66 );
setScaleKey( spep_1 -3 + 86, 1, 2.24, 2.24 );
setScaleKey( spep_1 -3 + 88, 1, 1.83, 1.83 );
setScaleKey( spep_1 -3 + 90, 1, 1.83, 1.83 );
setScaleKey( spep_1 -3 + 92, 1, 1.84, 1.84 );
setScaleKey( spep_1 -3 + 94, 1, 1.84, 1.84 );
setScaleKey( spep_1 -3 + 96, 1, 1.85, 1.85 );
setScaleKey( spep_1 -3 + 98, 1, 1.85, 1.85 );
setScaleKey( spep_1 -3 + 100, 1, 1.86, 1.86 );
setScaleKey( spep_1 -3 + 102, 1, 1.86, 1.86 );
setScaleKey( spep_1 -3 + 104, 1, 1.87, 1.87 );
setScaleKey( spep_1 -3 + 106, 1, 1.87, 1.87 );
setScaleKey( spep_1 -3 + 108, 1, 1.88, 1.88 );
setScaleKey( spep_1 -3 + 110, 1, 1.88, 1.88 );
setScaleKey( spep_1 -3 + 112, 1, 1.89, 1.89 );
setScaleKey( spep_1 -3 + 114, 1, 1.89, 1.89 );
setScaleKey( spep_1 -3 + 116, 1, 1.9, 1.9 );
setScaleKey( spep_1 -3 + 118, 1, 1.9, 1.9 );
setScaleKey( spep_1 -3 + 120, 1, 1.91, 1.91 );
setScaleKey( spep_1 -3 + 122, 1, 1.91, 1.91 );
setScaleKey( spep_1 -3 + 124, 1, 1.92, 1.92 );
setScaleKey( spep_1 -3 + 126, 1, 1.92, 1.92 );
setScaleKey( spep_1 -3 + 128, 1, 1.93, 1.93 );
setScaleKey( spep_1 -3 + 130, 1, 1.93, 1.93 );
setScaleKey( spep_1 -3 + 132, 1, 1.94, 1.94 );
setScaleKey( spep_1 -3 + 134, 1, 1.94, 1.94 );
setScaleKey( spep_1 -3 + 136, 1, 1.95, 1.95 );
setScaleKey( spep_1 -3 + 138, 1, 1.95, 1.95 );
setScaleKey( spep_1 -3 + 140, 1, 1.96, 1.96 );
setScaleKey( spep_1 -3 + 142, 1, 1.96, 1.96 );
setScaleKey( spep_1 -3 + 144, 1, 1.97, 1.97 );
setScaleKey( spep_1 -3 + 146, 1, 1.97, 1.97 );
setScaleKey( spep_1 -3 + 148, 1, 1.98, 1.98 );

setRotateKey( spep_1 -3 + 74, 1, 0 );
setRotateKey( spep_1 -3 + 148, 1, 0 );

--白フェード
entryFade( spep_1+69, 0, 6, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1+138, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--音
stopSe( spep_1 + 126, SE3, 20 );

--次の準備
spep_2 = spep_1+146;

------------------------------------------------------
-- ベジータ発射
------------------------------------------------------
-- ** エフェクト等 ** --
bezi_cut = entryEffect( spep_2  + 0, SP_04,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2  + 0, bezi_cut, 0, 0 , 0 );
setEffMoveKey( spep_2  + 60, bezi_cut, 0, 0 , 0 );
setEffScaleKey( spep_2  + 0, bezi_cut, -1.0, 1.0 );
setEffScaleKey( spep_2  + 60, bezi_cut, -1.0, 1.0 );
setEffRotateKey( spep_2  + 0, bezi_cut, 0 );
setEffRotateKey( spep_2  + 60, bezi_cut, 0 );
setEffAlphaKey( spep_2  + 0, bezi_cut, 255 );
setEffAlphaKey( spep_2  + 60, bezi_cut, 255 );

-- ** エフェクト等 ** --
bezi_beam = entryEffect( spep_2 + 0, SP_05,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, bezi_beam, 0, 0 , 0 );
setEffMoveKey( spep_2 + 110, bezi_beam, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, bezi_beam, 1.0, 1.0 );
setEffScaleKey( spep_2 + 110, bezi_beam, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, bezi_beam, 0 );
setEffRotateKey( spep_2 + 110, bezi_beam, 0 );
setEffAlphaKey( spep_2 + 0, bezi_beam, 255 );
setEffAlphaKey( spep_2 + 110, bezi_beam, 255 );

-- 書き文字エントリー --
ctgogo = entryEffectLife( spep_2 +1 +20, 190006, 36, 0x100, -1, 0, 20, 510);    -- ゴゴゴゴ

setEffMoveKey(  spep_2 +1 +20,  ctgogo,  20,  510);
setEffMoveKey(  spep_2 +1 +56,  ctgogo,  20,  510);

setEffAlphaKey( spep_2 +1  + 20, ctgogo, 0 );
setEffAlphaKey( spep_2 +1  + 21, ctgogo, 255 );
setEffAlphaKey( spep_2 +1  + 22, ctgogo, 255 );
setEffAlphaKey( spep_2 +1  + 54, ctgogo, 255 );
setEffAlphaKey( spep_2 +1  + 55, ctgogo, 255 );
setEffAlphaKey( spep_2 +1  + 56, ctgogo, 0 );

setEffRotateKey(  spep_2 +1 +20,  ctgogo,  0);
setEffRotateKey(  spep_2 +1 +56,  ctgogo,  0);

setEffScaleKey(  spep_2 +1 +20,  ctgogo,  -0.8,  0.8);
setEffScaleKey(  spep_2 +1 +56,  ctgogo,  -0.8,  0.8);

-- 書き文字エントリー --
ctzuo2 = entryEffectLife( spep_2 -2 + 60,  10012, 30, 0x100, -1, 0, -18.2, 221.7 );

setEffMoveKey( spep_2 -2 + 60, ctzuo2, -18.2, 221.7 , 0 );
setEffMoveKey( spep_2 -2 + 62, ctzuo2, -1, 268.9 , 0 );
setEffMoveKey( spep_2 -2 + 64, ctzuo2, 21.8, 321.7 , 0 );
setEffMoveKey( spep_2 -2 + 66, ctzuo2, 16.8, 316.6 , 0 );
setEffMoveKey( spep_2 -2 + 68, ctzuo2, 21.8, 321.7 , 0 );
setEffMoveKey( spep_2 -2 + 70, ctzuo2, 16.8, 316.6 , 0 );
setEffMoveKey( spep_2 -2 + 72, ctzuo2, 21.8, 321.7 , 0 );
setEffMoveKey( spep_2 -2 + 74, ctzuo2, 16.8, 316.6 , 0 );
setEffMoveKey( spep_2 -2 + 76, ctzuo2, 21.8, 321.7 , 0 );
setEffMoveKey( spep_2 -2 + 78, ctzuo2, 16.8, 316.6 , 0 );
setEffMoveKey( spep_2 -2 + 80, ctzuo2, 21.8, 321.7 , 0 );
setEffMoveKey( spep_2 -2 + 82, ctzuo2, 23.4, 315.2 , 0 );
setEffMoveKey( spep_2 -2 + 84, ctzuo2, 37.9, 321.8 , 0 );
setEffMoveKey( spep_2 -2 + 86, ctzuo2, 36.4, 312.1 , 0 );
setEffMoveKey( spep_2 -2 + 88, ctzuo2, 53.9, 321.8 , 0 );
setEffMoveKey( spep_2 -2 + 90, ctzuo2, 61.8, 321.7 , 0 );

setEffScaleKey( spep_2 -2 + 60, ctzuo2, 0.1, 0.1 );
setEffScaleKey( spep_2 -2 + 62, ctzuo2, 0.45, 0.45 );
setEffScaleKey( spep_2 -2 + 64, ctzuo2, 0.8+a, 0.8+a );
setEffScaleKey( spep_2 -2 + 80, ctzuo2, 0.8+a, 0.8+a );
--setEffScaleKey( spep_2 -2 + 82, ctzuo2, 1.04, 1.04 );
--setEffScaleKey( spep_2 -2 + 84, ctzuo2, 1.28, 1.28 );
--setEffScaleKey( spep_2 -2 + 86, ctzuo2, 1.52, 1.52 );
--setEffScaleKey( spep_2 -2 + 88, ctzuo2, 1.76, 1.76 );
setEffScaleKey( spep_2 -2 + 90, ctzuo2, 2+a+b +1, 2+a+b +1);

setEffRotateKey( spep_2 -2 + 60, ctzuo2, 30 );
setEffRotateKey( spep_2 -2 + 90, ctzuo2, 30 );

setEffAlphaKey( spep_2 -2 + 60, ctzuo2, 255 );
setEffAlphaKey( spep_2 -2 + 80, ctzuo2, 255 );
setEffAlphaKey( spep_2 -2 + 82, ctzuo2, 204 );
setEffAlphaKey( spep_2 -2 + 84, ctzuo2, 153 );
setEffAlphaKey( spep_2 -2 + 86, ctzuo2, 102 );
setEffAlphaKey( spep_2 -2 + 88, ctzuo2, 51 );
setEffAlphaKey( spep_2 -2 + 90, ctzuo2, 0 );

--SE
playSe( spep_2 + 0, 8);--出てくる
playSe( spep_2+20, 1018);--ごごご
playSe( spep_2 -2 + 60, 1004);--投げる
playSe( spep_2 -2 + 60, 1013);--投げる

--白フェード
entryFade( spep_2+57, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 200 );  --white fade
entryFade( spep_2+102, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_3 = spep_2+110;


------------------------------------------------------
-- ベジータ気弾着弾
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_3  + 0, SP_07,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3  + 0, hit_f, 0, 0 , 0 );
setEffMoveKey( spep_3  + 190, hit_f, 0, 0 , 0 );
setEffScaleKey( spep_3  + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_3  + 190, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_3  + 0, hit_f, 0 );
setEffRotateKey( spep_3  + 190, hit_f, 0 );
setEffAlphaKey( spep_3  + 0, hit_f, 255 );
setEffAlphaKey( spep_3  + 190, hit_f, 255 );
setEffAlphaKey( spep_3  + 191, hit_f, 0 );
setEffAlphaKey( spep_3  + 192, hit_f, 0 );

--[[
-- ** エフェクト等 ** --
goku_cut = entryEffect( spep_3  + 0, SP_06,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3  + 0, goku_cut, 0, 0 , 0 );
setEffMoveKey( spep_3  + 92, goku_cut, 0, 0 , 0 );
setEffScaleKey( spep_3  + 0, goku_cut, -1.0, 1.0 );
setEffScaleKey( spep_3  + 92, goku_cut, -1.0, 1.0 );
setEffRotateKey( spep_3  + 0, goku_cut, 0 );
setEffRotateKey( spep_3  + 92, goku_cut, 0 );
setEffAlphaKey( spep_3  + 0, goku_cut, 255 );
setEffAlphaKey( spep_3  + 92, goku_cut, 255 );
]]--

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_3  + 0, SP_08,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3  + 0, hit_b, 0, 0 , 0 );
setEffMoveKey( spep_3  + 190, hit_b, 0, 0 , 0 );
setEffScaleKey( spep_3  + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_3  + 190, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_3  + 0, hit_b, 0 );
setEffRotateKey( spep_3  + 190, hit_b, 0 );
setEffAlphaKey( spep_3  + 0, hit_b, 255 );
setEffAlphaKey( spep_3  + 190, hit_b, 255 );
setEffAlphaKey( spep_3  + 191, hit_b, 0 );
setEffAlphaKey( spep_3  + 192, hit_b, 0 );

--[[
--***カットイン***
speff = entryEffect(  spep_3  +82,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff3 = entryEffect(  spep_3  +82,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff3, 4, 5);  
]]--
--敵の動き
setDisp( spep_3  + 0, 1, 1 );
setDisp( spep_3 -3 + 188, 1, 0 );
changeAnime( spep_3  + 0, 1, 118 );

setMoveKey( spep_3  + 0, 1, -111.2, -38.3 , 0 );
--setMoveKey( spep_3 -3 + 2, 1, -116, -45.7 , 0 );
setMoveKey( spep_3 -3 + 4, 1, -108.1, -40.4 , 0 );
setMoveKey( spep_3 -3 + 6, 1, -119.4, -47.7 , 0 );
setMoveKey( spep_3 -3 + 8, 1, -105.1, -42.4 , 0 );
setMoveKey( spep_3 -3 + 10, 1, -109.9, -56.2 , 0 );
setMoveKey( spep_3 -3 + 12, 1, -102, -44.4 , 0 );
setMoveKey( spep_3 -3 + 14, 1, -106.9, -51.8 , 0 );
setMoveKey( spep_3 -3 + 16, 1, -99, -46.4 , 0 );
setMoveKey( spep_3 -3 + 18, 1, -103.8, -92.2 , 0 );
setMoveKey( spep_3 -3 + 20, 1, -96, -48.4 , 0 );
setMoveKey( spep_3 -3 + 22, 1, -126.4, -62.2 , 0 );
setMoveKey( spep_3 -3 + 24, 1, -92.9, -50.4 , 0 );
setMoveKey( spep_3 -3 + 26, 1, -97.8, -96.2 , 0 );
setMoveKey( spep_3 -3 + 28, 1, -89.9, -52.4 , 0 );
setMoveKey( spep_3 -3 + 30, 1, -105.6, -61.8 , 0 );
setMoveKey( spep_3 -3 + 32, 1, -82.9, -58.5 , 0 );
setMoveKey( spep_3 -3 + 34, 1, -85.8, -93.5 , 0 );
setMoveKey( spep_3 -3 + 36, 1, -75.9, -64.5 , 0 );
setMoveKey( spep_3 -3 + 38, 1, -98, -73.9 , 0 );
setMoveKey( spep_3 -3 + 40, 1, -69, -70.5 , 0 );
setMoveKey( spep_3 -3 + 42, 1, -71.9, -99.1 , 0 );
setMoveKey( spep_3 -3 + 44, 1, -62, -76.5 , 0 );
setMoveKey( spep_3 -3 + 46, 1, -84.1, -85.9 , 0 );
setMoveKey( spep_3 -3 + 48, 1, -55, -82.6 , 0 );
setMoveKey( spep_3 -3 + 50, 1, -58, -130.4 , 0 );
setMoveKey( spep_3 -3 + 52, 1, -48.1, -88.6 , 0 );
setMoveKey( spep_3 -3 + 54, 1, -51, -110.8 , 0 );
setMoveKey( spep_3 -3 + 56, 1, -41.1, -94.6 , 0 );
setMoveKey( spep_3 -3 + 58, 1, -44, -116.8 , 0 );
setMoveKey( spep_3 -3 + 60, 1, -32.1, -99.5 , 0 );
setMoveKey( spep_3 -3 + 62, 1, -33, -114.2 , 0 );
setMoveKey( spep_3 -3 + 64, 1, -21.1, -103.2 , 0 );
setMoveKey( spep_3 -3 + 66, 1, -22, -117.9 , 0 );
setMoveKey( spep_3 -3 + 68, 1, -10.1, -107 , 0 );
setMoveKey( spep_3 -3 + 70, 1, -11, -115.3 , 0 );
setMoveKey( spep_3 -3 + 72, 1, 0.9, -110.7 , 0 );
setMoveKey( spep_3 -3 + 74, 1, 0, -125.4 , 0 );
setMoveKey( spep_3 -3 + 76, 1, 11.9, -114.5 , 0 );
setMoveKey( spep_3 -3 + 78, 1, 11, -122.8 , 0 );
setMoveKey( spep_3 -3 + 80, 1, 22.9, -118.2 , 0 );
setMoveKey( spep_3 -3 + 82, 1, 22, -126.5 , 0 );
setMoveKey( spep_3 -3 + 84, 1, 34, -122 , 0 );
setMoveKey( spep_3 -3 + 86, 1, 33, -130.2 , 0 );
setMoveKey( spep_3 -3 + 88, 1, 44.9, -125.7 , 0 );
setMoveKey( spep_3 -3 + 90, 1, 33.4, -132.9 , 0 );
setMoveKey( spep_3 -3 + 92, 1, 47.4, -127.2 , 0 );
setMoveKey( spep_3 -3 + 94, 1, 42.1, -134.4 , 0 );
setMoveKey( spep_3 -3 + 96, 1, 49.7, -128.7 , 0 );
setMoveKey( spep_3 -3 + 98, 1, 38.1, -135.9 , 0 );
setMoveKey( spep_3 -3 + 100, 1, 52.1, -130.2 , 0 );
setMoveKey( spep_3 -3 + 102, 1, 46.9, -143.8 , 0 );
setMoveKey( spep_3 -3 + 104, 1, 54.5, -131.7 , 0 );
setMoveKey( spep_3 -3 + 106, 1, 49.3, -138.9 , 0 );
setMoveKey( spep_3 -3 + 108, 1, 56.9, -133.2 , 0 );
setMoveKey( spep_3 -3 + 110, 1, 51.7, -146.8 , 0 );
setMoveKey( spep_3 -3 + 112, 1, 59.3, -134.7 , 0 );
setMoveKey( spep_3 -3 + 114, 1, 47.7, -135.5 , 0 );
setMoveKey( spep_3 -3 + 116, 1, 61.6, -136.2 , 0 );
setMoveKey( spep_3 -3 + 118, 1, 56.4, -149.8 , 0 );
setMoveKey( spep_3 -3 + 120, 1, 64.1, -137.7 , 0 );
setMoveKey( spep_3 -3 + 122, 1, 58.8, -144.9 , 0 );
setMoveKey( spep_3 -3 + 124, 1, 66.4, -139.2 , 0 );
setMoveKey( spep_3 -3 + 126, 1, 61.2, -152.8 , 0 );
setMoveKey( spep_3 -3 + 128, 1, 68.8, -140.8 , 0 );
setMoveKey( spep_3 -3 + 130, 1, 57.2, -147.9 , 0 );
setMoveKey( spep_3 -3 + 132, 1, 71.2, -142.2 , 0 );
setMoveKey( spep_3 -3 + 134, 1, 66, -155.8 , 0 );
setMoveKey( spep_3 -3 + 136, 1, 73.6, -143.8 , 0 );
setMoveKey( spep_3 -3 + 138, 1, 68.3, -157.3 , 0 );
setMoveKey( spep_3 -3 + 140, 1, 76, -145.3 , 0 );
setMoveKey( spep_3 -3 + 142, 1, 64.4, -152.4 , 0 );
setMoveKey( spep_3 -3 + 144, 1, 78.3, -146.8 , 0 );
setMoveKey( spep_3 -3 + 146, 1, 73.1, -160.3 , 0 );
setMoveKey( spep_3 -3 + 148, 1, 80.7, -148.3 , 0 );
setMoveKey( spep_3 -3 + 150, 1, 75.5, -155.4 , 0 );
setMoveKey( spep_3 -3 + 152, 1, 83.1, -149.8 , 0 );
setMoveKey( spep_3 -3 + 154, 1, 71.5, -156.9 , 0 );
setMoveKey( spep_3 -3 + 156, 1, 85.5, -151.3 , 0 );
setMoveKey( spep_3 -3 + 158, 1, 80.3, -164.8 , 0 );
setMoveKey( spep_3 -3 + 160, 1, 87.9, -152.8 , 0 );
setMoveKey( spep_3 -3 + 162, 1, 82.7, -159.9 , 0 );
setMoveKey( spep_3 -3 + 164, 1, 90.3, -154.3 , 0 );
setMoveKey( spep_3 -3 + 166, 1, 78.7, -161.4 , 0 );
setMoveKey( spep_3 -3 + 168, 1, 92.6, -155.8 , 0 );
setMoveKey( spep_3 -3 + 170, 1, 87.5, -169.3 , 0 );
setMoveKey( spep_3 -3 + 172, 1, 95, -157.3 , 0 );
setMoveKey( spep_3 -3 + 174, 1, 89.8, -164.4 , 0 );
setMoveKey( spep_3 -3 + 176, 1, 97.4, -158.8 , 0 );
setMoveKey( spep_3 -3 + 178, 1, 85.8, -165.9 , 0 );
setMoveKey( spep_3 -3 + 180, 1, 99.8, -160.3 , 0 );
setMoveKey( spep_3 -3 + 182, 1, 94.6, -173.8 , 0 );
setMoveKey( spep_3 -3 + 184, 1, 102.2, -161.8 , 0 );
setMoveKey( spep_3 -3 + 186, 1, 97, -168.9 , 0 );
setMoveKey( spep_3 -3 + 188, 1, 104.6, -163.3 , 0 );

setScaleKey( spep_3  + 0, 1, 1.25, 1.25 );
setScaleKey( spep_3 -3 + 4, 1, 1.25, 1.25 );
setScaleKey( spep_3 -3 + 6, 1, 1.27, 1.27 );
setScaleKey( spep_3 -3 + 14, 1, 1.27, 1.27 );
setScaleKey( spep_3 -3 + 16, 1, 1.29, 1.29 );
setScaleKey( spep_3 -3 + 22, 1, 1.29, 1.29 );
setScaleKey( spep_3 -3 + 24, 1, 1.31, 1.31 );
setScaleKey( spep_3 -3 + 28, 1, 1.31, 1.31 );
setScaleKey( spep_3 -3 + 30, 1, 1.33, 1.33 );
setScaleKey( spep_3 -3 + 32, 1, 1.33, 1.33 );
setScaleKey( spep_3 -3 + 34, 1, 1.35, 1.35 );
setScaleKey( spep_3 -3 + 36, 1, 1.35, 1.35 );
setScaleKey( spep_3 -3 + 38, 1, 1.37, 1.37 );
setScaleKey( spep_3 -3 + 40, 1, 1.39, 1.39 );
setScaleKey( spep_3 -3 + 42, 1, 1.39, 1.39 );
setScaleKey( spep_3 -3 + 44, 1, 1.41, 1.41 );
setScaleKey( spep_3 -3 + 46, 1, 1.41, 1.41 );
setScaleKey( spep_3 -3 + 48, 1, 1.43, 1.43 );
setScaleKey( spep_3 -3 + 50, 1, 1.45, 1.45 );
setScaleKey( spep_3 -3 + 52, 1, 1.45, 1.45 );
setScaleKey( spep_3 -3 + 54, 1, 1.47, 1.47 );
setScaleKey( spep_3 -3 + 56, 1, 1.47, 1.47 );
setScaleKey( spep_3 -3 + 58, 1, 1.49, 1.49 );
setScaleKey( spep_3 -3 + 60, 1, 1.5, 1.5 );
setScaleKey( spep_3 -3 + 62, 1, 1.5, 1.5 );
setScaleKey( spep_3 -3 + 64, 1, 1.52, 1.52 );
setScaleKey( spep_3 -3 + 66, 1, 1.54, 1.54 );
setScaleKey( spep_3 -3 + 68, 1, 1.54, 1.54 );
setScaleKey( spep_3 -3 + 70, 1, 1.56, 1.56 );
setScaleKey( spep_3 -3 + 72, 1, 1.58, 1.58 );
setScaleKey( spep_3 -3 + 74, 1, 1.58, 1.58 );
setScaleKey( spep_3 -3 + 76, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 78, 1, 1.62, 1.62 );
setScaleKey( spep_3 -3 + 80, 1, 1.62, 1.62 );
setScaleKey( spep_3 -3 + 82, 1, 1.64, 1.64 );
setScaleKey( spep_3 -3 + 84, 1, 1.66, 1.66 );
setScaleKey( spep_3 -3 + 86, 1, 1.66, 1.66 );
setScaleKey( spep_3 -3 + 88, 1, 1.68, 1.68 );
setScaleKey( spep_3 -3 + 94, 1, 1.68, 1.68 );
setScaleKey( spep_3 -3 + 96, 1, 1.7, 1.7 );
setScaleKey( spep_3 -3 + 110, 1, 1.7, 1.7 );
setScaleKey( spep_3 -3 + 112, 1, 1.72, 1.72 );
setScaleKey( spep_3 -3 + 126, 1, 1.72, 1.72 );
setScaleKey( spep_3 -3 + 128, 1, 1.74, 1.74 );
setScaleKey( spep_3 -3 + 142, 1, 1.74, 1.74 );
setScaleKey( spep_3 -3 + 144, 1, 1.76, 1.76 );
setScaleKey( spep_3 -3 + 158, 1, 1.76, 1.76 );
setScaleKey( spep_3 -3 + 160, 1, 1.78, 1.78 );
setScaleKey( spep_3 -3 + 174, 1, 1.78, 1.78 );
setScaleKey( spep_3 -3 + 176, 1, 1.8, 1.8 );
setScaleKey( spep_3 -3 + 188, 1, 1.8, 1.8 );

setRotateKey( spep_3  + 0, 1, 0 );
setRotateKey( spep_3 -3 + 188, 1, 0 );

--SE
playSe( spep_3+18 - 3, 1023);--当たった
playSe( spep_3+38, 1018);--カットイン
playSe( spep_3+96, 1018);--カットイン


--白フェード
entryFade( spep_3+15, 0, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3+182, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_4 = spep_3+190;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_4 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_4 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_4 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_4 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_4 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_4 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_4 + 0, shuchusen, 0 );
setEffRotateKey( spep_4 + 90, shuchusen, 0 );

setEffAlphaKey( spep_4 + 0, shuchusen, 255 );
setEffAlphaKey( spep_4 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_4 + 0, SE_05 );

--白フェード
entryFade( spep_4 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 94;

------------------------------------------------------
-- ナビ歩行
------------------------------------------------------
-- ** エフェクト等 ** --
walk = entryEffect( spep_5 + 0, SP_09,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, walk, 0, 0 , 0 );
setEffMoveKey( spep_5 + 220, walk, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, walk, -1.0, 1.0 );
setEffScaleKey( spep_5 + 220, walk, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, walk, 0 );
setEffRotateKey( spep_5 + 220, walk, 0 );
setEffAlphaKey( spep_5 + 0, walk, 255 );
setEffAlphaKey( spep_5 + 220, walk, 255 );

--白フェード
entryFade( spep_5+212, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
SE4 = playSe( spep_5 + 0, 1044 );  --地鳴り
SE5 = playSe( spep_5 + 0, 1124 );  --発射中
setSeVolume( spep_5 + 0, 1124, 70 );
stopSe(spep_5 + 220, SE5, 20 );

-- ** 次の準備 ** --
spep_6 = spep_5 + 220;

------------------------------------------------------
-- 押し切る
------------------------------------------------------
-- ** エフェクト等 ** --
push_f = entryEffect( spep_6 + 0, SP_10,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, push_f, 0, 0 , 0 );
setEffMoveKey( spep_6 + 66, push_f, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, push_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 66, push_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, push_f, 0 );
setEffRotateKey( spep_6 + 66, push_f, 0 );
setEffAlphaKey( spep_6 + 0, push_f, 255 );
setEffAlphaKey( spep_6 + 66, push_f, 255 );
setEffAlphaKey( spep_6 + 67, push_f, 0 );
setEffAlphaKey( spep_6 + 68, push_f, 0 );

-- ** エフェクト等 ** --
push_b = entryEffect( spep_6 + 0, SP_11,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, push_b, 0, 0 , 0 );
setEffMoveKey( spep_6 + 66, push_b, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, push_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 66, push_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, push_b, 0 );
setEffRotateKey( spep_6 + 66, push_b, 0 );
setEffAlphaKey( spep_6 + 0, push_b, 255 );
setEffAlphaKey( spep_6 + 66, push_b, 255 );
setEffAlphaKey( spep_6 + 67, push_b, 0 );
setEffAlphaKey( spep_6 + 68, push_b, 0 );

--文字エントリー
ctzudododo2 = entryEffectLife( spep_6  + 0,  10014, 26 -3, 0x100, -1, 0, 130.1, 416 );

setEffMoveKey( spep_6  + 0, ctzudododo2, 130.1, 416 , 0 );
--setEffMoveKey( spep_6 -3 + 2, ctzudododo2, 115, 391.4 , 0 );
setEffMoveKey( spep_6 -3 + 4, ctzudododo2, 130.1, 416 , 0 );
setEffMoveKey( spep_6 -3 + 6, ctzudododo2, 115, 391.4 , 0 );
setEffMoveKey( spep_6 -3 + 8, ctzudododo2, 130.1, 416 , 0 );
setEffMoveKey( spep_6 -3 + 10, ctzudododo2, 115, 391.4 , 0 );
setEffMoveKey( spep_6 -3 + 12, ctzudododo2, 130.1, 416 , 0 );
setEffMoveKey( spep_6 -3 + 14, ctzudododo2, 115, 391.4 , 0 );
setEffMoveKey( spep_6 -3 + 16, ctzudododo2, 130.1, 416 , 0 );
setEffMoveKey( spep_6 -3 + 18, ctzudododo2, 115, 391.4 , 0 );
setEffMoveKey( spep_6 -3 + 20, ctzudododo2, 130.1, 416 , 0 );
setEffMoveKey( spep_6 -3 + 22, ctzudododo2, 113, 388.2 , 0 );
setEffMoveKey( spep_6 -3 + 24, ctzudododo2, 130.1, 416 , 0 );
setEffMoveKey( spep_6 -3 + 26, ctzudododo2, 108.9, 381.6 , 0 );

setEffScaleKey( spep_6  + 0, ctzudododo2, 1+b, 1+b );
setEffScaleKey( spep_6 -3 + 20, ctzudododo2, 1+b, 1+b );
setEffScaleKey( spep_6 -3 + 22, ctzudododo2, 1.13+b, 1.13+b );
setEffScaleKey( spep_6 -3 + 24, ctzudododo2, 1.27+b, 1.27+b );
setEffScaleKey( spep_6 -3 + 26, ctzudododo2, 1.4+b, 2.5+b );

setEffRotateKey( spep_6  + 0, ctzudododo2, -4.7 );
setEffRotateKey( spep_6 -3 + 26, ctzudododo2, -4.7 );

setEffAlphaKey( spep_6  + 0, ctzudododo2, 255 );
setEffAlphaKey( spep_6 -3 + 20, ctzudododo2, 255 );
setEffAlphaKey( spep_6 -3 + 22, ctzudododo2, 174 );
setEffAlphaKey( spep_6 -3 + 24, ctzudododo2, 94 );
setEffAlphaKey( spep_6 -3 + 26, ctzudododo2, 13 );

--敵の動き
setDisp( spep_6  + 0, 1, 1 );
setDisp( spep_6  + 44 -3, 1, 0 );

changeAnime( spep_6  + 0, 1, 118 );

setMoveKey( spep_6  + 0, 1, -142.6, -40.9 , 0 );
--setMoveKey( spep_6 -3 + 2, 1, -141, -64 , 0 );
setMoveKey( spep_6 -3 + 4, 1, -114.3, -52.5 , 0 );
setMoveKey( spep_6 -3 + 6, 1, -121.3, -66.4 , 0 );
setMoveKey( spep_6 -3 + 8, 1, -90.5, -63 , 0 );
setMoveKey( spep_6 -3 + 10, 1, -89.3, -86.3 , 0 );
setMoveKey( spep_6 -3 + 12, 1, -58.6, -75.1 , 0 );
setMoveKey( spep_6 -3 + 14, 1, -65.3, -98.4 , 0 );
setMoveKey( spep_6 -3 + 16, 1, -31.2, -85.5 , 0 );
setMoveKey( spep_6 -3 + 18, 1, -20.5, -102.3 , 0 );
setMoveKey( spep_6 -3 + 20, 1, 10.5, -91.5 , 0 );
setMoveKey( spep_6 -3 + 22, 1, 131.7, -97.2 , 0 );
setMoveKey( spep_6 -3 + 24, 1, 276.9, -79 , 0 );
setMoveKey( spep_6 -3 + 26, 1, 415.1, -70.9 , 0 );
setMoveKey( spep_6 -3 + 28, 1, 534.9, -76.7 , 0 );
setMoveKey( spep_6 -3 + 30, 1, 678.6, -58.5 , 0 );
setMoveKey( spep_6 -3 + 32, 1, 798.2, -64.2 , 0 );
setMoveKey( spep_6 -3 + 34, 1, 953, -25 , 0 );
setMoveKey( spep_6 -3 + 36, 1, 1082.6, -10.9 , 0 );
setMoveKey( spep_6 -3 + 38, 1, 1236.2, 27.3 , 0 );
setMoveKey( spep_6 -3 + 40, 1, 1365.8, 41.4 , 0 );
setMoveKey( spep_6 -3 + 42, 1, 1519.3, 79.6 , 0 );
setMoveKey( spep_6 -3 + 44, 1, 1633.7, 97.9 , 0 );

setScaleKey( spep_6  + 0, 1, 1.43, 1.43 );
--setScaleKey( spep_6 -3 + 2, 1, 1.48, 1.48 );
setScaleKey( spep_6 -3 + 4, 1, 1.51, 1.51 );
setScaleKey( spep_6 -3 + 6, 1, 1.57, 1.57 );
setScaleKey( spep_6 -3 + 8, 1, 1.6, 1.6 );
setScaleKey( spep_6 -3 + 10, 1, 1.66, 1.66 );
setScaleKey( spep_6 -3 + 12, 1, 1.69, 1.69 );
setScaleKey( spep_6 -3 + 14, 1, 1.75, 1.75 );
setScaleKey( spep_6 -3 + 16, 1, 1.78, 1.78 );
setScaleKey( spep_6 -3 + 18, 1, 1.82, 1.82 );
setScaleKey( spep_6 -3 + 20, 1, 1.87, 1.87 );
setScaleKey( spep_6 -3 + 22, 1, 1.92, 1.92 );
setScaleKey( spep_6 -3 + 24, 1, 1.96, 1.96 );
setScaleKey( spep_6 -3 + 26, 1, 1.99, 1.99 );
setScaleKey( spep_6 -3 + 28, 1, 2.04, 2.04 );
setScaleKey( spep_6 -3 + 30, 1, 2.08, 2.08 );
setScaleKey( spep_6 -3 + 32, 1, 2.13, 2.13 );
setScaleKey( spep_6 -3 + 34, 1, 2.15, 2.15 );
setScaleKey( spep_6 -3 + 36, 1, 2.2, 2.2 );
setScaleKey( spep_6 -3 + 38, 1, 2.24, 2.24 );
setScaleKey( spep_6 -3 + 40, 1, 2.29, 2.29 );
setScaleKey( spep_6 -3 + 42, 1, 2.33, 2.33 );
setScaleKey( spep_6 -3 + 44, 1, 2.36, 2.36 );

setRotateKey( spep_6  + 0, 1, -3.1 );
--setRotateKey( spep_6 -3 + 2, 1, -2.9 );
setRotateKey( spep_6 -3 + 4, 1, -2.6 );
setRotateKey( spep_6 -3 + 6, 1, -2.2 );
setRotateKey( spep_6 -3 + 8, 1, -1.9 );
setRotateKey( spep_6 -3 + 10, 1, -1.6 );
setRotateKey( spep_6 -3 + 12, 1, -1.3 );
setRotateKey( spep_6 -3 + 14, 1, -1 );
setRotateKey( spep_6 -3 + 16, 1, -0.6 );
setRotateKey( spep_6 -3 + 18, 1, -0.3 );
setRotateKey( spep_6 -3 + 20, 1, 0 );
setRotateKey( spep_6 -3 + 22, 1, -1.1 );
setRotateKey( spep_6 -3 + 24, 1, -2.1 );
setRotateKey( spep_6 -3 + 26, 1, -3.2 );
setRotateKey( spep_6 -3 + 28, 1, -4.3 );
setRotateKey( spep_6 -3 + 30, 1, -5.4 );
setRotateKey( spep_6 -3 + 32, 1, -6.4 );
setRotateKey( spep_6 -3 + 34, 1, -7.5 );
setRotateKey( spep_6 -3 + 36, 1, -8.6 );
setRotateKey( spep_6 -3 + 38, 1, -9.7 );
setRotateKey( spep_6 -3 + 40, 1, -10.7 );
setRotateKey( spep_6 -3 + 42, 1, -11.8 );
setRotateKey( spep_6 -3 + 44, 1, -12.9 );

-- ** 音 ** --
stopSe( spep_6 + 30, SE4, 40 );
playSe( spep_6 + 20, 1021 );  --押し出し
setSeVolume( spep_6 + 20, 1021, 120 );

-- ** 次の準備 ** --
spep_7 = spep_6 + 66;

------------------------------------------------------
-- ギャン
-----------------------------------------------------
-- ** エフェクト等 ** --
gyan = entryEffect( spep_7 + 0, 190000,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, gyan, 0, 0 , 0 );
setEffMoveKey( spep_7 + 60, gyan, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, gyan, 1.0, 1.0 );
setEffScaleKey( spep_7 + 60, gyan, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, gyan, 0 );
setEffRotateKey( spep_7 + 60, gyan, 0 );
setEffAlphaKey( spep_7 + 0, gyan, 255 );
setEffAlphaKey( spep_7 + 60, gyan, 255 );

ctgyan = entryEffectLife( spep_7 + 0,  10006, 58, 0x100, -1, 0, 7.1, 306.8 );--ギャンッ

setEffMoveKey( spep_7 + 0, ctgyan, 7.1, 306.8 , 0 );
setEffMoveKey( spep_7 + 58, ctgyan, 7.1, 306.8 , 0 );

z=2.7;

setEffScaleKey( spep_7 + 0, ctgyan, 0.6 + z, 0.6 + z );
setEffScaleKey( spep_7 + 2, ctgyan, 0.7 + z, 0.7 + z );
setEffScaleKey( spep_7 + 4, ctgyan, 0.8 + z, 0.8 + z );
setEffScaleKey( spep_7 + 6, ctgyan, 0.9 + z, 0.9 + z );
setEffScaleKey( spep_7 + 8, ctgyan, 1 + z, 1 + z );
setEffScaleKey( spep_7 + 10, ctgyan, 1.01 + z, 1.01 + z );
setEffScaleKey( spep_7 + 12, ctgyan, 1.02 + z, 1.02 + z );
setEffScaleKey( spep_7 + 14, ctgyan, 1.02 + z, 1.02 + z );
setEffScaleKey( spep_7 + 16, ctgyan, 1.03 + z, 1.03 + z );
setEffScaleKey( spep_7 + 18, ctgyan, 1.04 + z, 1.04 + z );
setEffScaleKey( spep_7 + 20, ctgyan, 1.05 + z, 1.05 + z );
setEffScaleKey( spep_7 + 22, ctgyan, 1.06 + z, 1.06 + z );
setEffScaleKey( spep_7 + 24, ctgyan, 1.06 + z, 1.06 + z );
setEffScaleKey( spep_7 + 26, ctgyan, 1.07 + z, 1.07 + z );
setEffScaleKey( spep_7 + 28, ctgyan, 1.08 + z, 1.08 + z );
setEffScaleKey( spep_7 + 30, ctgyan, 1.09 + z, 1.09 + z );
setEffScaleKey( spep_7 + 32, ctgyan, 1.1 + z, 1.1 + z );
setEffScaleKey( spep_7 + 34, ctgyan, 1.1 + z, 1.1 + z );
setEffScaleKey( spep_7 + 36, ctgyan, 1.11 + z, 1.11 + z );
setEffScaleKey( spep_7 + 38, ctgyan, 1.12 + z, 1.12 + z );
setEffScaleKey( spep_7 + 40, ctgyan, 1.13 + z, 1.13 + z );
setEffScaleKey( spep_7 + 42, ctgyan, 1.14 + z, 1.14 + z );
setEffScaleKey( spep_7 + 44, ctgyan, 1.14 + z, 1.14 + z );
setEffScaleKey( spep_7 + 46, ctgyan, 1.15 + z, 1.15 + z );
setEffScaleKey( spep_7 + 48, ctgyan, 1.16 + z, 1.16 + z );
setEffScaleKey( spep_7 + 50, ctgyan, 1.17 + z, 1.17 + z );
setEffScaleKey( spep_7 + 52, ctgyan, 1.17 + z, 1.17 + z );
setEffScaleKey( spep_7 + 54, ctgyan, 1.18 + z, 1.18 + z );
setEffScaleKey( spep_7 + 56, ctgyan, 1.19 + z, 1.19 + z );
setEffScaleKey( spep_7 + 58, ctgyan, 1.2 + z, 1.2 + z );

setEffRotateKey( spep_7 + 0, ctgyan, 0 );
setEffRotateKey( spep_7 + 58, ctgyan, 0 );

setEffAlphaKey( spep_7 + 0, ctgyan, 255 );
setEffAlphaKey( spep_7 + 58, ctgyan, 255 );

--白フェード
entryFade( spep_7 + 52, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_7, 1023 ); --爆発

--次の準備
spep_8 =spep_7+60;

------------------------------------------------------
-- 終わり
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_8 + 0, 1569,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_8 + 190, finish, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, finish, 1.45, 1.45 );
setEffScaleKey( spep_8 + 190, finish, 1.45, 1.45 );
setEffRotateKey( spep_8 + 0, finish, 0 );
setEffRotateKey( spep_8 + 190, finish, 0 );
setEffAlphaKey( spep_8 + 0, finish, 255 );
setEffAlphaKey( spep_8 + 190, finish, 255 );

-- ** 音 ** --
playSe( spep_8, 1024 ); --フィニッシュ 

-- ** ダメージ表示 ** --
dealDamage(spep_8 + 10);
endPhase( spep_8 + 180 );

end
