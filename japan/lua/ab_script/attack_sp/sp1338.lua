--1018120:孫悟飯(未来)_爆裂砲火弾
--sp_effect_a1_00187

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

--エフェクト(味方側)
SP_01=  154144  ;-- 登場〜ラッシュ〜蹴り
SP_02=  154145  ;-- 登場〜ラッシュ〜蹴り：背景
SP_03=  154146  ;-- 気功波発射〜敵命中
SP_04=  154147  ;-- フィニッシュ爆発

--エフェクト(てき側)
SP_01x=  154148  ;-- 登場〜ラッシュ〜蹴り  (敵)
SP_02x=  154149  ;-- 登場〜ラッシュ〜蹴り：背景   (敵)
SP_03x=  154150  ;-- 気功波発射〜敵命中   (敵)
SP_04x=  154147  ;-- フィニッシュ爆発    

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

------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--  気功波発射〜敵命中
------------------------------------------------------
--はじめの準備
spep_0 = 0;

-- ** エフェクト等 ** --
fighting_f = entryEffect( spep_0 + 0, SP_01,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, fighting_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 416, fighting_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, fighting_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 416, fighting_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, fighting_f, 0 );
setEffRotateKey( spep_0 + 416, fighting_f, 0 );
setEffAlphaKey( spep_0 + 0, fighting_f, 255 );
setEffAlphaKey( spep_0 + 414, fighting_f, 255 );
setEffAlphaKey( spep_0 + 415, fighting_f, 0 );
setEffAlphaKey( spep_0 + 416, fighting_f, 0 );

-- ** エフェクト等 ** --
fighting_b = entryEffect( spep_0 + 0, SP_02,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, fighting_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 416, fighting_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, fighting_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 416, fighting_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, fighting_b, 0 );
setEffRotateKey( spep_0 + 416, fighting_b, 0 );
setEffAlphaKey( spep_0 + 0, fighting_b, 255 );
setEffAlphaKey( spep_0 + 414, fighting_b, 255 );
setEffAlphaKey( spep_0 + 415, fighting_b, 0 );
setEffAlphaKey( spep_0 + 416, fighting_b, 0 );

-- ** おと ** --
SE0 = playSe( spep_0+0, 1044 ); --砂煙
setSeVolume( spep_0+0, 1044, 70);
setSeVolume( spep_0+80, 1044, 50);
setSeVolume( spep_0+106, 1044, 30);
stopSe( spep_0+108, SE0, 20 );
SE1 = playSe( spep_0+0, 9 ); --向かっていく

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 30; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE0, 0 );
    stopSe( SP_dodge - 12, SE1, 0 );

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
setDisp( spep_0  + 100, 1, 1 );
setDisp( spep_0 -3 + 308, 1, 0 );
setDisp( spep_0 -3 + 372, 1, 1 );
setDisp( spep_0 -9 + 412, 1, 0 );

changeAnime( spep_0  + 100, 1, 101 );
changeAnime( spep_0 -3 + 144, 1, 108 );
changeAnime( spep_0 -3 + 168, 1, 106 );
changeAnime( spep_0 -3 + 180, 1, 108 );
changeAnime( spep_0 -3 + 214, 1, 105 );
changeAnime( spep_0 -3 + 386, 1, 107 );

--setMoveKey( spep_0  + 8, 1, 649.9, -0.1 , 0 );
setMoveKey( spep_0  + 100, 1, 649.9, -0.1 , 0 );
setMoveKey( spep_0 -3 + 104, 1, 488.9, -0.1 , 0 );
setMoveKey( spep_0 -3 + 106, 1, 411.3, -0.1 , 0 );
setMoveKey( spep_0 -3 + 108, 1, 356.7, -0.1 , 0 );
setMoveKey( spep_0 -3 + 110, 1, 314.4, -0.1 , 0 );
setMoveKey( spep_0 -3 + 112, 1, 280.2, -0.1 , 0 );
setMoveKey( spep_0 -3 + 114, 1, 251.8, -0.1 , 0 );
setMoveKey( spep_0 -3 + 116, 1, 227.8, -0.1 , 0 );
setMoveKey( spep_0 -3 + 118, 1, 207.3, -0.1 , 0 );
setMoveKey( spep_0 -3 + 120, 1, 189.8, -0.1 , 0 );
setMoveKey( spep_0 -3 + 122, 1, 174.7, -0.1 , 0 );
setMoveKey( spep_0 -3 + 124, 1, 161.7, -0.1 , 0 );
setMoveKey( spep_0 -3 + 126, 1, 150.6, -0.1 , 0 );
setMoveKey( spep_0 -3 + 128, 1, 141.2, -0.1 , 0 );
setMoveKey( spep_0 -3 + 130, 1, 133.2, -0.1 , 0 );
setMoveKey( spep_0 -3 + 132, 1, 126.6, -0.1 , 0 );
setMoveKey( spep_0 -3 + 134, 1, 121.2, -0.1 , 0 );
setMoveKey( spep_0 -3 + 136, 1, 117, -0.1 , 0 );
setMoveKey( spep_0 -3 + 138, 1, 113.7, -0.1 , 0 );
setMoveKey( spep_0 -3 + 140, 1, 111.5, -0.1 , 0 );
setMoveKey( spep_0 -3 + 143, 1, 110.2, -0.1 , 0 );

a=50;
b=0;
c=-200;

setMoveKey( spep_0 -3 + 144, 1, 109.9+a, -0.1+b , 0 );
setMoveKey( spep_0 -3 + 145, 1, 109.9+a, -0.1+b , 0 );
setMoveKey( spep_0 -3 + 146, 1, 99.9+a, -0.1+b , 0 );
setMoveKey( spep_0 -3 + 147, 1, 99.9+a, -0.1+b , 0 );
--setMoveKey( spep_0 -3 + 146, 1, 128.1+a, -0.1+b , 0 );
setMoveKey( spep_0 -3 + 148, 1, 339.6+a, -0.1+b , 0 );
setMoveKey( spep_0 -3 + 150, 1, 411.2+c, -0.1+b , 0 );
--setMoveKey( spep_0 -3 + 152, 1, 448.5+c, -0.1+b , 0 );
--setMoveKey( spep_0 -3 + 154, 1, 473.1+c, -0.1+b , 0 );
--setMoveKey( spep_0 -3 + 152, 1, 490.5+c, -0.1+b , 0 );
setMoveKey( spep_0 -3 + 152, 1, 503.1+c, -0.1+b , 0 );
setMoveKey( spep_0 -3 + 160, 1, 512+c, -0.1+b , 0 );
setMoveKey( spep_0 -3 + 162, 1, 518.2+c, -0.1+b , 0 );
setMoveKey( spep_0 -3 + 164, 1, 522.2+c, -0.1+b , 0 );
setMoveKey( spep_0 -3 + 167, 1, 524.3+c, -0.1+b , 0 );

d=-400;

--setMoveKey( spep_0 -3 + 168, 1, 499.3+d, -0.1 , 0 );
setMoveKey( spep_0 -3 + 168, 1, 531.6+d, -0.1 , 0 );
setMoveKey( spep_0 -3 + 172, 1, 542.5+d, -0.1 , 0 );
setMoveKey( spep_0 -3 + 179, 1, 542.5+d, -0.1 , 0 );
--setMoveKey( spep_0 -3 + 174, 1, 548.2+d, -0.1 , 0 );
--setMoveKey( spep_0 -3 + 176, 1, 551.1+d, -0.1 , 0 );
--setMoveKey( spep_0 -3 + 179, 1, 552+d, -0.1 , 0 );

e=-450;
x=-20;

setMoveKey( spep_0 -3 + 180, 1, 599.9+e, 37.7+b , 0 );
setMoveKey( spep_0 -3 + 182, 1, 607.4+e+x, 41.9+b , 0 );
setMoveKey( spep_0 -3 + 184, 1, 611.4+e+x, 44.1+b , 0 );
setMoveKey( spep_0 -3 + 186, 1, 613.3+e+x, 45.2+b , 0 );
setMoveKey( spep_0 -3 + 188, 1, 614+e+x, 45.6+b , 0 );
setMoveKey( spep_0 -3 + 190, 1, 617.3+e+x, 47.1+b , 0 );
setMoveKey( spep_0 -3 + 192, 1, 620.6+e+x, 48.7+b , 0 );
setMoveKey( spep_0 -3 + 194, 1, 623.9+e+x, 50.2+b , 0 );
setMoveKey( spep_0 -3 + 196, 1, 627.2+e+x, 51.8+b , 0 );
setMoveKey( spep_0 -3 + 198, 1, 630.5+e+x, 53.4+b , 0 );
setMoveKey( spep_0 -3 + 200, 1, 633.9+e+x, 54.9+b , 0 );
setMoveKey( spep_0 -3 + 202, 1, 637.2+e+x, 56.5+b , 0 );
setMoveKey( spep_0 -3 + 204, 1, 640.5+e+x, 58+b , 0 );
setMoveKey( spep_0 -3 + 206, 1, 643.8+e+x, 59.6+b , 0 );
setMoveKey( spep_0 -3 + 208, 1, 647.1+e+x, 61.1+b , 0 );
setMoveKey( spep_0 -3 + 210, 1, 650.4+e+x, 62.7+b , 0 );
setMoveKey( spep_0 -3 + 213, 1, 653.8+e+x, 64.3+b , 0 );
setMoveKey( spep_0 -3 + 214, 1, 676.7+e+x, 84.2 , 0 );

f=-520;

setMoveKey( spep_0 -3 + 216, 1, 671.9+f, 89.3 , 0 );
setMoveKey( spep_0 -3 + 218, 1, 637.8+f, 125.1 , 0 );
setMoveKey( spep_0 -3 + 220, 1, 615.7+f, 148.7 , 0 );
setMoveKey( spep_0 -3 + 222, 1, 605.4+f, 159.3 , 0 );
setMoveKey( spep_0 -3 + 224, 1, 599.9+f, 165.5 , 0 );
setMoveKey( spep_0 -3 + 226, 1, 596.3+f, 169.2 , 0 );
setMoveKey( spep_0 -3 + 228, 1, 593.8+f, 171.8 , 0 );
setMoveKey( spep_0 -3 + 230, 1, 592+f, 173.4 , 0 );
setMoveKey( spep_0 -3 + 232, 1, 590.9+f, 174.9 , 0 );
setMoveKey( spep_0 -3 + 234, 1, 589.9+f, 175.7 , 0 );
setMoveKey( spep_0 -3 + 236, 1, 589.1+f, 176.4 , 0 );
setMoveKey( spep_0 -3 + 238, 1, 588.7+f, 177.1 , 0 );
setMoveKey( spep_0 -3 + 240, 1, 588.3+f, 177.5 , 0 );
setMoveKey( spep_0 -3 + 242, 1, 588+f, 177.9 , 0 );
setMoveKey( spep_0 -3 + 244, 1, 587.6+f, 178.1 , 0 );
setMoveKey( spep_0 -3 + 246, 1, 587.4+f, 178.4 , 0 );
setMoveKey( spep_0 -3 + 248, 1, 587.3+f, 178.6 , 0 );
setMoveKey( spep_0 -3 + 250, 1, 587.1+f, 178.9 , 0 );
setMoveKey( spep_0 -3 + 252, 1, 586.8+f, 179 , 0 );
setMoveKey( spep_0 -3 + 259, 1, 586.7+f, 179.3 , 0 );

setMoveKey( spep_0 -3 + 260, 1, 160.2, -230.1 , 0 );
setMoveKey( spep_0 -3 + 262, 1, 152.9, -222.5 , 0 );
setMoveKey( spep_0 -3 + 264, 1, 150.6, -220.1 , 0 );
setMoveKey( spep_0 -3 + 266, 1, 149.4, -218.8 , 0 );
setMoveKey( spep_0 -3 + 268, 1, 148.6, -218.1 , 0 );
setMoveKey( spep_0 -3 + 270, 1, 148.2, -217.6 , 0 );
setMoveKey( spep_0 -3 + 272, 1, 148, -217.4 , 0 );
setMoveKey( spep_0 -3 + 274, 1, 147.9, -217.3 , 0 );
setMoveKey( spep_0 -3 + 276, 1, 147.8, -217.2 , 0 );
setMoveKey( spep_0 -3 + 278, 1, 148.2, -217.5 , 0 );
setMoveKey( spep_0 -3 + 280, 1, 148.9, -220 , 0 );
setMoveKey( spep_0 -3 + 282, 1, 150.6, -224.4 , 0 );
setMoveKey( spep_0 -3 + 284, 1, 152.9, -230.5 , 0 );
setMoveKey( spep_0 -3 + 286, 1, 155.8, -238.4 , 0 );
setMoveKey( spep_0 -3 + 288, 1, 159.7, -248.7 , 0 );
setMoveKey( spep_0 -3 + 290, 1, 164.6, -261.7 , 0 );
setMoveKey( spep_0 -3 + 292, 1, 170.7, -277.8 , 0 );
setMoveKey( spep_0 -3 + 294, 1, 178.3, -298 , 0 );
setMoveKey( spep_0 -3 + 296, 1, 187.7, -323.1 , 0 );
setMoveKey( spep_0 -3 + 298, 1, 199.7, -355 , 0 );
setMoveKey( spep_0 -3 + 300, 1, 215.1, -395.9 , 0 );
setMoveKey( spep_0 -3 + 302, 1, 235.7, -450.6 , 0 );
setMoveKey( spep_0 -3 + 304, 1, 265, -528.3 , 0 );
setMoveKey( spep_0 -3 + 306, 1, 311.9, -653 , 0 );
setMoveKey( spep_0 -3 + 308, 1, 404.2, -898.6 , 0 );

setMoveKey( spep_0 -3 + 372, 1, 404.2, -898.6 , 0 );
--setMoveKey( spep_0 -3 + 380, 1, 404.2, -898.6 , 0 );
--setMoveKey( spep_0 -3 + 382, 1, 298.9, -642.6 , 0 );
--setMoveKey( spep_0 -3 + 384, 1, 217.1, -443.6 , 0 );
--setMoveKey( spep_0 -3 + 386, 1, 158.6, -301.3 , 0 );
--setMoveKey( spep_0 -3 + 388, 1, 123.5, -216 , 0 );
--setMoveKey( spep_0 -3 + 390, 1, 111.8, -187.6 , 0 );
setMoveKey( spep_0 -9 + 391, 1, 111.8, -187.6 , 0 );

h=-70;
i=20;
j=0;
k=90;

setMoveKey( spep_0 -9 + 392, 1, 139.9+i, -400+h , 0 );
setMoveKey( spep_0 -9 + 396, 1, 139.9+i, -400+h , 0 );
setMoveKey( spep_0 -9 + 398, 1, 139.9+i, -400+h , 0 );
setMoveKey( spep_0 -9 + 399, 1, 139.9+j, -400+k , 0 );
--setMoveKey( spep_0 -9 + 398, 1, 214.8+i, -376.7+h , 0 );
--setMoveKey( spep_0 -9 + 400, 1, 436.2+i, -312+h , 0 );
--setMoveKey( spep_0 -9 + 402, 1, 617.5+i, -264.1+h , 0 );
--setMoveKey( spep_0 -9 + 404, 1, 715.6+i, -240.2+h , 0 );
--setMoveKey( spep_0 -9 + 406, 1, 771.8+i, -225.7+h , 0 );
--setMoveKey( spep_0 -9 + 408, 1, 807.1+i, -217.5+h , 0 );
--setMoveKey( spep_0 -9 + 410, 1, 830.4+i, -212.9+h , 0 );
--setMoveKey( spep_0 -9 + 412, 1, 845.4+i, -208.6+h , 0 );
--setMoveKey( spep_0 -9 + 414, 1, 855.5+i, -205.8+h , 0 );
--setMoveKey( spep_0 -9 + 416, 1, 864+i, -205.5+h , 0 );
--setMoveKey( spep_0 -9 + 418, 1, 869+i, -204.1+h , 0 );
--setMoveKey( spep_0 -9 + 420, 1, 872.8+i, -203+h , 0 );
setMoveKey( spep_0 -9 + 412, 1, 875.5+j, -201.9+k , 0 );

setScaleKey( spep_0  + 100, 1, 1.4, 1.4 );
setScaleKey( spep_0  + 101, 1, 1.4, 1.4 );
setScaleKey( spep_0 -3 + 143, 1, 1.4, 1.4 );


setScaleKey( spep_0 -3 + 144, 1, 1.7, 1.7 );
setScaleKey( spep_0 -3  + 145, 1, 1.7, 1.7 );
setScaleKey( spep_0 -3+ 146, 1, 1.4, 1.4 );
setScaleKey( spep_0 -3 + 167, 1, 1.4, 1.4 );

setScaleKey( spep_0 -3 + 168, 1, 1.4, 1.4 );
setScaleKey( spep_0 -3 + 179, 1, 1.4, 1.4 );

setScaleKey( spep_0 -3 + 180, 1, 1.6, 1.6 );
setScaleKey( spep_0  + 181, 1, 1.4, 1.4 );
setScaleKey( spep_0 -3 + 213, 1, 1.4, 1.4 );

setScaleKey( spep_0 -3 + 214, 1, 1.4, 1.4 );
setScaleKey( spep_0 -3 + 216, 1, 1.34, 1.34 );
setScaleKey( spep_0 -3 + 218, 1, 0.88, 0.88 );
setScaleKey( spep_0 -3 + 220, 1, 0.59, 0.59 );
setScaleKey( spep_0 -3 + 222, 1, 0.45, 0.45 );
setScaleKey( spep_0 -3 + 224, 1, 0.38, 0.38 );
setScaleKey( spep_0 -3 + 226, 1, 0.33, 0.33 );
setScaleKey( spep_0 -3 + 228, 1, 0.3, 0.3 );
setScaleKey( spep_0 -3 + 230, 1, 0.27, 0.27 );
setScaleKey( spep_0 -3 + 232, 1, 0.26, 0.26 );
setScaleKey( spep_0 -3 + 234, 1, 0.24, 0.24 );
setScaleKey( spep_0 -3 + 236, 1, 0.23, 0.23 );
setScaleKey( spep_0 -3 + 238, 1, 0.23, 0.23 );
setScaleKey( spep_0 -3 + 240, 1, 0.22, 0.22 );
setScaleKey( spep_0 -3 + 242, 1, 0.22, 0.22 );
setScaleKey( spep_0 -3 + 244, 1, 0.21, 0.21 );
setScaleKey( spep_0 -3 + 250, 1, 0.21, 0.21 );
setScaleKey( spep_0 -3 + 259, 1, 0.2, 0.2 );

setScaleKey( spep_0 -3 + 260, 1, 4, 4 );
setScaleKey( spep_0 -3 + 284, 1, 4, 4 );
setScaleKey( spep_0 -3 + 286, 1, 4.04, 4.04 );
setScaleKey( spep_0 -3 + 288, 1, 4.04, 4.04 );
setScaleKey( spep_0 -3 + 290, 1, 4.08, 4.08 );
setScaleKey( spep_0 -3 + 292, 1, 4.08, 4.08 );
setScaleKey( spep_0 -3 + 294, 1, 4.12, 4.12 );
setScaleKey( spep_0 -3 + 296, 1, 4.2, 4.2 );
setScaleKey( spep_0 -3 + 298, 1, 4.24, 4.24 );
setScaleKey( spep_0 -3 + 300, 1, 4.32, 4.32 );
setScaleKey( spep_0 -3 + 302, 1, 4.4, 4.4 );
setScaleKey( spep_0 -3 + 304, 1, 4.56, 4.56 );
setScaleKey( spep_0 -3 + 306, 1, 4.76, 4.76 );
setScaleKey( spep_0 -3 + 308, 1, 5.2, 5.2 );

setScaleKey( spep_0 -3 + 372, 1, 5.2, 5.2 );
setScaleKey( spep_0 -3 + 380, 1, 5.2, 5.2 );
setScaleKey( spep_0 -3 + 382, 1, 4.34, 4.34 );
setScaleKey( spep_0 -9 + 391, 1, 3.66, 3.66 );
--setScaleKey( spep_0 -3 + 386, 1, 3.18, 3.18 );
--setScaleKey( spep_0 -3 + 388, 1, 2.9, 2.9 );
--setScaleKey( spep_0 -3 + 390, 1, 2.8, 2.8 );



setScaleKey( spep_0 -9 + 392, 1, 2.2, 2.2 );
setScaleKey( spep_0 -9 + 396, 1, 1.6, 1.6 );
setScaleKey( spep_0 -9 + 398, 1, 1.64, 1.64 );
setScaleKey( spep_0 -9 + 400, 1, 1.76, 1.76 );
setScaleKey( spep_0 -9 + 402, 1, 1.86, 1.86 );
setScaleKey( spep_0 -9 + 404, 1, 1.92, 1.92 );
setScaleKey( spep_0 -9 + 406, 1, 1.94, 1.94 );
setScaleKey( spep_0 -9 + 408, 1, 1.96, 1.96 );
setScaleKey( spep_0 -9 + 410, 1, 1.98, 1.98 );
setScaleKey( spep_0 -9 + 412, 1, 1.98, 1.98 );
--setScaleKey( spep_0 -9 + 416, 1, 2, 2 );

setRotateKey( spep_0  + 100, 1, 0 );
setRotateKey( spep_0 -3 + 143, 1, 0 );

setRotateKey( spep_0 -3 + 144, 1, 0 );
setRotateKey( spep_0 -3 + 167, 1, 0 );

setRotateKey( spep_0 -3 + 168, 1, -39.2 );
setRotateKey( spep_0 -3 + 179, 1, -39.2 );

setRotateKey( spep_0 -3 + 180, 1, 0 );
setRotateKey( spep_0 -3 + 213, 1, 0 );

setRotateKey( spep_0 -3 + 214, 1, -15 );
setRotateKey( spep_0 -3 + 259, 1, -15 );

setRotateKey( spep_0 -3 + 260, 1, -33.5 );
setRotateKey( spep_0 -3 + 308, 1, -33.5 );

setRotateKey( spep_0 -3 + 372, 1, -33.5 );
setRotateKey( spep_0 -9 + 391, 1, -33.5 );

setRotateKey( spep_0 -9 + 392, 1, -100.6 );
setRotateKey( spep_0 -9 + 396, 1, -100.6 );
setRotateKey( spep_0 -9 + 398, 1, -98.2 );
setRotateKey( spep_0 -9 + 400, 1, -90.9 );
setRotateKey( spep_0 -9 + 402, 1, -84.9 );
setRotateKey( spep_0 -9 + 404, 1, -81.7 );
setRotateKey( spep_0 -9 + 406, 1, -79.8 );
setRotateKey( spep_0 -9 + 408, 1, -78.6 );
setRotateKey( spep_0 -9 + 410, 1, -77.8 );
setRotateKey( spep_0 -9 + 412, 1, -77.3 );
--setRotateKey( spep_0 -9 + 414, 1, -76.9 );
--setRotateKey( spep_0 -9 + 416, 1, -76.7 );
--setRotateKey( spep_0 -9 + 418, 1, -76.5 );
--setRotateKey( spep_0 -9 + 420, 1, -76.4 );
--setRotateKey( spep_0 -9 + 422, 1, -76.3 );



--文字エントリー
ctdon = entryEffectLife( spep_0 -3 + 144,  10019, 10, 0x100, -1, 0, 27.7, 142.8 );--ドンッ

setEffMoveKey( spep_0 -3 + 144, ctdon, 27.7, 142.8 , 0 );
setEffMoveKey( spep_0 -3 + 146, ctdon, 17.7, 207.2 , 0 );
setEffMoveKey( spep_0 -3 + 148, ctdon, -7.4, 225 , 0 );
setEffMoveKey( spep_0 -3 + 150, ctdon, -2, 224.5 , 0 );
setEffMoveKey( spep_0 -3 + 152, ctdon, -27.6, 232.3 , 0 );
setEffMoveKey( spep_0 -3 + 154, ctdon, -39.4, 241 , 0 );

setEffScaleKey( spep_0 -3 + 144, ctdon, 1.24, 1.3 );
setEffScaleKey( spep_0 -3 + 146, ctdon, 2.32, 2.42 );
setEffScaleKey( spep_0 -3 + 148, ctdon, 2.34, 2.44 );
setEffScaleKey( spep_0 -3 + 150, ctdon, 2.35, 2.45 );
setEffScaleKey( spep_0 -3 + 152, ctdon, 2.36, 2.47 );
setEffScaleKey( spep_0 -3 + 154, ctdon, 2.38, 2.48 );

setEffRotateKey( spep_0 -3 + 144, ctdon, -10 );
setEffRotateKey( spep_0 -3 + 154, ctdon, -10 );

setEffAlphaKey( spep_0 -3 + 144, ctdon, 255 );
setEffAlphaKey( spep_0 -3 + 146, ctdon, 255 );
setEffAlphaKey( spep_0 -3 + 148, ctdon, 191 );
setEffAlphaKey( spep_0 -3 + 150, ctdon, 128 );
setEffAlphaKey( spep_0 -3 + 152, ctdon, 64 );
setEffAlphaKey( spep_0 -3 + 154, ctdon, 0 );

--文字エントリー
ctga = entryEffectLife( spep_0 -3 + 168,  10005, 8, 0x100, -1, 0, 32.1, 161.5 );--ガッ

setEffMoveKey( spep_0 -3 + 168, ctga, 32.1, 161.5 , 0 );
setEffMoveKey( spep_0 -3 + 170, ctga, 46.1, 225.2 , 0 );
setEffMoveKey( spep_0 -3 + 172, ctga, 38.1, 209.2 , 0 );
setEffMoveKey( spep_0 -3 + 174, ctga, 46.9, 231.2 , 0 );
setEffMoveKey( spep_0 -3 + 176, ctga, 55.6, 253.3 , 0 );

g=1.1;

setEffScaleKey( spep_0 -3 + 168, ctga, 0.45+g, 0.45+g );
setEffScaleKey( spep_0 -3 + 170, ctga, 0.84+g, 0.93+g );
setEffScaleKey( spep_0 -3 + 172, ctga, 0.67+g, 0.74+g );
setEffScaleKey( spep_0 -3 + 174, ctga, 0.96+g, 1.05+g );
setEffScaleKey( spep_0 -3 + 176, ctga, 1.24+g, 1.37+g );

setEffRotateKey( spep_0 -3 + 168, ctga, 10 );
setEffRotateKey( spep_0 -3 + 176, ctga, 10 );

setEffAlphaKey( spep_0 -3 + 168, ctga, 255 );
setEffAlphaKey( spep_0 -3 + 174, ctga, 255 );
setEffAlphaKey( spep_0 -3 + 176, ctga, 128 );

--文字エントリー
ctga2 = entryEffectLife( spep_0 -3 + 180,  10005, 8, 0x100, -1, 0, 155.3, 200.6 );

setEffMoveKey( spep_0 -3 + 180, ctga2, 155.3, 200.6 , 0 );
setEffMoveKey( spep_0 -3 + 182, ctga2, 161.2, 224.2 , 0 );
setEffMoveKey( spep_0 -3 + 184, ctga2, 165.4, 217.1 , 0 );
setEffMoveKey( spep_0 -3 + 186, ctga2, 167.4, 233.7 , 0 );
setEffMoveKey( spep_0 -3 + 188, ctga2, 169.2, 250.3 , 0 );

setEffScaleKey( spep_0 -3 + 180, ctga2, 0.75+g, 0.69+g );
setEffScaleKey( spep_0 -3 + 182, ctga2, 0.93+g, 1.03+g );
setEffScaleKey( spep_0 -3 + 184, ctga2, 0.71+g, 0.78+g );
setEffScaleKey( spep_0 -3 + 186, ctga2, 0.96+g, 1.05+g );
setEffScaleKey( spep_0 -3 + 188, ctga2, 1.2+g, 1.33+g );

setEffRotateKey( spep_0 -3 + 180, ctga2, 10 );
setEffRotateKey( spep_0 -3 + 188, ctga2, 10 );

setEffAlphaKey( spep_0 -3 + 180, ctga2, 255 );
setEffAlphaKey( spep_0 -3 + 186, ctga2, 255 );
setEffAlphaKey( spep_0 -3 + 188, ctga2, 128 );

--文字エントリー
ctbaki = entryEffectLife( spep_0 -3 + 214,  10020, 20, 0x100, -1, 0, -14.6, 196.7 );

setEffMoveKey( spep_0 -3 + 214, ctbaki, -14.6, 196.7 , 0 );
setEffMoveKey( spep_0 -3 + 216, ctbaki, -6.8, 225.2 , 0 );
setEffMoveKey( spep_0 -3 + 218, ctbaki, -20.6, 262.2 , 0 );
setEffMoveKey( spep_0 -3 + 220, ctbaki, -5.1, 255.7 , 0 );
setEffMoveKey( spep_0 -3 + 222, ctbaki, -12, 265.1 , 0 );
setEffMoveKey( spep_0 -3 + 224, ctbaki, -3.5, 252.8 , 0 );
setEffMoveKey( spep_0 -3 + 226, ctbaki, -18.3, 253.2 , 0 );
setEffMoveKey( spep_0 -3 + 228, ctbaki, -9.8, 256.7 , 0 );
setEffMoveKey( spep_0 -3 + 230, ctbaki, -17.4, 242.5 , 0 );
setEffMoveKey( spep_0 -3 + 232, ctbaki, -18, 252 , 0 );
setEffMoveKey( spep_0 -3 + 234, ctbaki, -20.9, 247.9 , 0 );

setEffScaleKey( spep_0 -3 + 214, ctbaki, 0.87, 0.86 );
setEffScaleKey( spep_0 -3 + 216, ctbaki, 1.59, 1.57 );
setEffScaleKey( spep_0 -3 + 218, ctbaki, 2.31, 2.28 );
setEffScaleKey( spep_0 -3 + 220, ctbaki, 2.3, 2.27 );
setEffScaleKey( spep_0 -3 + 222, ctbaki, 2.28, 2.25 );
setEffScaleKey( spep_0 -3 + 224, ctbaki, 2.25, 2.22 );
setEffScaleKey( spep_0 -3 + 226, ctbaki, 2.2, 2.17 );
setEffScaleKey( spep_0 -3 + 228, ctbaki, 2.14, 2.12 );
setEffScaleKey( spep_0 -3 + 230, ctbaki, 2.07, 2.04 );
setEffScaleKey( spep_0 -3 + 232, ctbaki, 1.98, 1.96 );
setEffScaleKey( spep_0 -3 + 234, ctbaki, 1.88, 1.86 );

setEffRotateKey( spep_0 -3 + 214, ctbaki, 0 );
setEffRotateKey( spep_0 -3 + 234, ctbaki, 0 );

setEffAlphaKey( spep_0 -3 + 214, ctbaki, 255 );
setEffAlphaKey( spep_0 -3 + 218, ctbaki, 255 );
setEffAlphaKey( spep_0 -3 + 220, ctbaki, 251 );
setEffAlphaKey( spep_0 -3 + 222, ctbaki, 239 );
setEffAlphaKey( spep_0 -3 + 224, ctbaki, 219 );
setEffAlphaKey( spep_0 -3 + 226, ctbaki, 191 );
setEffAlphaKey( spep_0 -3 + 228, ctbaki, 155 );
setEffAlphaKey( spep_0 -3 + 230, ctbaki, 112 );
setEffAlphaKey( spep_0 -3 + 232, ctbaki, 60 );
setEffAlphaKey( spep_0 -3 + 234, ctbaki, 0 );

-- ** エフェクト等 ** --
shuchusen1 = entryEffectLife( spep_0  + 288,  906, 84, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_0  + 288, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0  + 372, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0  + 288, shuchusen1, 1.23, 1.27 );
setEffScaleKey( spep_0  + 372, shuchusen1, 1.23, 1.27 );

setEffRotateKey( spep_0  + 288, shuchusen1, 0 );
setEffRotateKey( spep_0  + 372, shuchusen1, 0 );

setEffAlphaKey( spep_0  + 288, shuchusen1, 0 );
setEffAlphaKey( spep_0  + 296, shuchusen1, 0 );
setEffAlphaKey( spep_0  + 297, shuchusen1, 255 );
setEffAlphaKey( spep_0  + 372, shuchusen1, 255 );


-- ** 顔カットイン ** --
speff = entryEffect( spep_0  + 288  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0  + 288 , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_0  +300, 190006, 72, 0x100, -1, 0, 80, 510);    -- ゴゴゴゴ

setEffMoveKey(  spep_0  +300,  ctgogo,  80,  510);
setEffMoveKey(  spep_0  +372,  ctgogo,  80,  510);

setEffAlphaKey( spep_0  +300, ctgogo, 0 );
setEffAlphaKey( spep_0  + 301, ctgogo, 255 );
setEffAlphaKey( spep_0  + 302, ctgogo, 255 );
setEffAlphaKey( spep_0  + 356, ctgogo, 255 );
setEffAlphaKey( spep_0  + 358, ctgogo, 255 );
setEffAlphaKey( spep_0  + 360, ctgogo, 191 );
setEffAlphaKey( spep_0  + 362, ctgogo, 128 );
setEffAlphaKey( spep_0  + 372, ctgogo, 64 );

setEffRotateKey(  spep_0  +300,  ctgogo,  0);
setEffRotateKey(  spep_0  +372,  ctgogo,  0);

setEffScaleKey(  spep_0  +300,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0  +360,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0  +372,  ctgogo, 1.07, 1.07 );

-- ** おと ** --
playSe( spep_0 + 124, 8 ); --迫る
playSe( spep_0 -3 + 144, 1010 ); --ドン
playSe( spep_0 -3 + 168, 1000 ); --ガッ
playSe( spep_0 -3 + 180, 1001 ); --ガッ
playSe( spep_0 -3 + 214, 1011 ); --バキッ
playSe( spep_0 + 236, 43 ); --瞬間移動
playSe( spep_0 + 268, 1109 ); --瞬間移動・後
playSe( spep_0 + 300, 1018 ); --ごごご
playSe( spep_0 + 340, 1072 ); --蹴る前
setSeVolume( spep_0 + 340, 1072, 110 );
setSeVolume( spep_0 + 360, 1072, 140 );
playSe( spep_0 + 386, 1120 ); --蹴り飛ばし

--白フェード
entryFade( spep_0 + 144, 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_0 + 214, 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_0 + 254, 2, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_0 + 386, 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_0 + 410, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1 = spep_0+414;
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
entryFade( spep_1 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

------------------------------------------------------
--  気功波発射〜敵命中
------------------------------------------------------
-- ** エフェクト等 ** --
hit = entryEffect( spep_2 + 0, SP_03,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, hit, 0, 0 , 0 );
setEffMoveKey( spep_2 + 176, hit, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, hit, 1.0, 1.0 );
setEffScaleKey( spep_2 + 176, hit, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, hit, 0 );
setEffRotateKey( spep_2 + 176, hit, 0 );
setEffAlphaKey( spep_2 + 0, hit, 255 );
setEffAlphaKey( spep_2 + 176, hit, 255 );
setEffAlphaKey( spep_2 + 177, hit, 0 );
setEffAlphaKey( spep_2 + 178, hit, 0 );

--文字エントリー

ctzuo = entryEffectLife( spep_2-3 + 122,  10012, 54, 0x100, -1, 0, -46.6, 189.8 );--ズオッ

setEffMoveKey( spep_2-3 + 122, ctzuo, -46.6, 189.8 , 0 );
setEffMoveKey( spep_2-3 + 124, ctzuo, -78, 227.4 , 0 );
setEffMoveKey( spep_2-3 + 126, ctzuo, -117.6, 265.3 , 0 );
setEffMoveKey( spep_2-3 + 128, ctzuo, -142.4, 258.4 , 0 );
setEffMoveKey( spep_2-3 + 130, ctzuo, -116.3, 250.9 , 0 );
setEffMoveKey( spep_2-3 + 132, ctzuo, -138.9, 251.2 , 0 );
setEffMoveKey( spep_2-3 + 134, ctzuo, -116.3, 250.9 , 0 );
setEffMoveKey( spep_2-3 + 136, ctzuo, -138.9, 251.2 , 0 );
setEffMoveKey( spep_2-3 + 138, ctzuo, -116.3, 250.9 , 0 );
setEffMoveKey( spep_2-3 + 140, ctzuo, -138.9, 251.2 , 0 );
setEffMoveKey( spep_2-3 + 142, ctzuo, -116.3, 250.9 , 0 );
setEffMoveKey( spep_2-3 + 144, ctzuo, -138.9, 251.2 , 0 );
setEffMoveKey( spep_2-3 + 146, ctzuo, -116.3, 250.9 , 0 );
setEffMoveKey( spep_2-3 + 148, ctzuo, -138.9, 251.2 , 0 );
setEffMoveKey( spep_2-3 + 150, ctzuo, -116.3, 250.9 , 0 );
setEffMoveKey( spep_2-3 + 152, ctzuo, -138.9, 251.2 , 0 );
setEffMoveKey( spep_2-3 + 154, ctzuo, -116.3, 250.9 , 0 );
setEffMoveKey( spep_2-3 + 156, ctzuo, -138.9, 251.2 , 0 );
setEffMoveKey( spep_2-3 + 158, ctzuo, -116.3, 250.9 , 0 );
setEffMoveKey( spep_2-3 + 160, ctzuo, -138.9, 251.2 , 0 );
setEffMoveKey( spep_2-3 + 162, ctzuo, -116.3, 250.9 , 0 );
setEffMoveKey( spep_2-3 + 164, ctzuo, -138.9, 251.2 , 0 );
setEffMoveKey( spep_2-3 + 166, ctzuo, -116.3, 250.9 , 0 );
setEffMoveKey( spep_2-3 + 168, ctzuo, -138.9, 251.2 , 0 );
setEffMoveKey( spep_2-3 + 170, ctzuo, -116.3, 250.9 , 0 );
setEffMoveKey( spep_2-3 + 172, ctzuo, -138.9, 251.2 , 0 );
setEffMoveKey( spep_2-3 + 174, ctzuo, -116.3, 250.9 , 0 );
setEffMoveKey( spep_2-3 + 176, ctzuo, -138.9, 251.2 , 0 );
--setEffMoveKey( spep_2-3 + 178, ctzuo, -116.3, 250.9 , 0 );
--setEffMoveKey( spep_2-3 + 180, ctzuo, -138.9, 251.2 , 0 );
--setEffMoveKey( spep_2-3 + 182, ctzuo, -116.3, 250.9 , 0 );
--setEffMoveKey( spep_2-3 + 184, ctzuo, -138.9, 251.2 , 0 );
--setEffMoveKey( spep_2-3 + 186, ctzuo, -116.3, 250.9 , 0 );
--setEffMoveKey( spep_2-3 + 188, ctzuo, -138.9, 251.2 , 0 );
--setEffMoveKey( spep_2-3 + 190, ctzuo, -116.3, 250.9 , 0 );
--setEffMoveKey( spep_2-3 + 192, ctzuo, -116.3, 250.9 , 0 );
--setEffMoveKey( spep_2-3 + 194, ctzuo, -138.9, 251.2 , 0 );
--setEffMoveKey( spep_2-3 + 198, ctzuo, -116.3, 250.9 , 0 );

setEffScaleKey( spep_2-3 + 122, ctzuo, 1.02, 1.02 );
setEffScaleKey( spep_2-3 + 124, ctzuo, 2.22, 2.22 );
setEffScaleKey( spep_2-3 + 126, ctzuo, 3.41, 3.41 );
setEffScaleKey( spep_2-3 + 128, ctzuo, 3.07, 3.07 );
setEffScaleKey( spep_2-3 + 130, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_2-3 + 176, ctzuo, 2.73, 2.73 );

setEffRotateKey( spep_2-3 + 122, ctzuo, -17.2 );
setEffRotateKey( spep_2-3 + 176, ctzuo, -17.2 );

setEffAlphaKey( spep_2-3 + 122, ctzuo, 255 );
setEffAlphaKey( spep_2-3 + 192, ctzuo, 255 );
setEffAlphaKey( spep_2-3 + 194, ctzuo, 170 );
setEffAlphaKey( spep_2-3 + 196, ctzuo, 85 );
setEffAlphaKey( spep_2-3 + 176, ctzuo, 0 );

--白フェード
entryFade( spep_2 + 112, 2, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 119, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 180 );  --white fade
entryFade( spep_2 + 168, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** おと ** --
playSe( spep_2 + 16, 1108 ); --着地
setSeVolume( spep_2 + 16, 1108, 150 );
SE2 = playSe( spep_2 + 26, 15 ); --溜める
stopSe( spep_2 + 100, SE2, 10 );
playSe( spep_2 + 106, 1022 ); --発射

--次の準備
spep_3 = spep_2+176;

------------------------------------------------------
-- ギャン
-----------------------------------------------------
-- ** エフェクト等 ** --
gyan = entryEffect( spep_3 + 0, 190000,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, gyan, 0, 0 , 0 );
setEffMoveKey( spep_3 + 60, gyan, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, gyan, 1.0, 1.0 );
setEffScaleKey( spep_3 + 60, gyan, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, gyan, 0 );
setEffRotateKey( spep_3 + 60, gyan, 0 );
setEffAlphaKey( spep_3 + 0, gyan, 255 );
setEffAlphaKey( spep_3 + 60, gyan, 255 );

ctgyan = entryEffectLife( spep_3 + 0,  10006, 58, 0x100, -1, 0, 7.1, 306.8 );--ギャンッ

setEffMoveKey( spep_3 + 0, ctgyan, 7.1, 306.8 , 0 );
setEffMoveKey( spep_3 + 58, ctgyan, 7.1, 306.8 , 0 );

z=2.7;

setEffScaleKey( spep_3 + 0, ctgyan, 0.6 + z, 0.6 + z );
setEffScaleKey( spep_3 + 2, ctgyan, 0.7 + z, 0.7 + z );
setEffScaleKey( spep_3 + 4, ctgyan, 0.8 + z, 0.8 + z );
setEffScaleKey( spep_3 + 6, ctgyan, 0.9 + z, 0.9 + z );
setEffScaleKey( spep_3 + 8, ctgyan, 1 + z, 1 + z );
setEffScaleKey( spep_3 + 10, ctgyan, 1.01 + z, 1.01 + z );
setEffScaleKey( spep_3 + 12, ctgyan, 1.02 + z, 1.02 + z );
setEffScaleKey( spep_3 + 14, ctgyan, 1.02 + z, 1.02 + z );
setEffScaleKey( spep_3 + 16, ctgyan, 1.03 + z, 1.03 + z );
setEffScaleKey( spep_3 + 18, ctgyan, 1.04 + z, 1.04 + z );
setEffScaleKey( spep_3 + 20, ctgyan, 1.05 + z, 1.05 + z );
setEffScaleKey( spep_3 + 22, ctgyan, 1.06 + z, 1.06 + z );
setEffScaleKey( spep_3 + 24, ctgyan, 1.06 + z, 1.06 + z );
setEffScaleKey( spep_3 + 26, ctgyan, 1.07 + z, 1.07 + z );
setEffScaleKey( spep_3 + 28, ctgyan, 1.08 + z, 1.08 + z );
setEffScaleKey( spep_3 + 30, ctgyan, 1.09 + z, 1.09 + z );
setEffScaleKey( spep_3 + 32, ctgyan, 1.1 + z, 1.1 + z );
setEffScaleKey( spep_3 + 34, ctgyan, 1.1 + z, 1.1 + z );
setEffScaleKey( spep_3 + 36, ctgyan, 1.11 + z, 1.11 + z );
setEffScaleKey( spep_3 + 38, ctgyan, 1.12 + z, 1.12 + z );
setEffScaleKey( spep_3 + 40, ctgyan, 1.13 + z, 1.13 + z );
setEffScaleKey( spep_3 + 42, ctgyan, 1.14 + z, 1.14 + z );
setEffScaleKey( spep_3 + 44, ctgyan, 1.14 + z, 1.14 + z );
setEffScaleKey( spep_3 + 46, ctgyan, 1.15 + z, 1.15 + z );
setEffScaleKey( spep_3 + 48, ctgyan, 1.16 + z, 1.16 + z );
setEffScaleKey( spep_3 + 50, ctgyan, 1.17 + z, 1.17 + z );
setEffScaleKey( spep_3 + 52, ctgyan, 1.17 + z, 1.17 + z );
setEffScaleKey( spep_3 + 54, ctgyan, 1.18 + z, 1.18 + z );
setEffScaleKey( spep_3 + 56, ctgyan, 1.19 + z, 1.19 + z );
setEffScaleKey( spep_3 + 58, ctgyan, 1.2 + z, 1.2 + z );

setEffRotateKey( spep_3 + 0, ctgyan, 0 );
setEffRotateKey( spep_3 + 58, ctgyan, 0 );

setEffAlphaKey( spep_3 + 0, ctgyan, 255 );
setEffAlphaKey( spep_3 + 58, ctgyan, 255 );

--白フェード
entryFade( spep_3 + 52, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** おと ** --
playSe( spep_3, 1023 ); --爆発

--次の準備
spep_4 =spep_3+60;

------------------------------------------------------
-- フィニッシュ爆発
-----------------------------------------------------
-- ** エフェクト等 ** --
explosion = entryEffect( spep_4+ 0, SP_04,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4+ 0, explosion, 0, 0 , 0 );
setEffMoveKey( spep_4+ 140, explosion, 0, 0 , 0 );
setEffScaleKey( spep_4+ 0, explosion, 1.0, 1.0 );
setEffScaleKey( spep_4+ 140, explosion, 1.0, 1.0 );
setEffRotateKey( spep_4+ 0, explosion, 0 );
setEffRotateKey( spep_4+ 140, explosion, 0 );
setEffAlphaKey( spep_4+ 0, explosion, 255 );
setEffAlphaKey( spep_4+ 140, explosion, 255 );

-- ** おと ** --
playSe( spep_4 + 18, 1024 ); --爆発

-- ** ダメージ表示 ** --
dealDamage(spep_4 + 10);
endPhase( spep_4 + 136 );
else 

------------------------------------------------------------------------------------------------------------
-- てき側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--  気功波発射〜敵命中
------------------------------------------------------
--はじめの準備
spep_0 = 0;

-- ** エフェクト等 ** --
fighting_f = entryEffect( spep_0 + 0, SP_01x,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, fighting_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 416, fighting_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, fighting_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 416, fighting_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, fighting_f, 0 );
setEffRotateKey( spep_0 + 416, fighting_f, 0 );
setEffAlphaKey( spep_0 + 0, fighting_f, 255 );
setEffAlphaKey( spep_0 + 414, fighting_f, 255 );
setEffAlphaKey( spep_0 + 415, fighting_f, 0 );
setEffAlphaKey( spep_0 + 416, fighting_f, 0 );

-- ** エフェクト等 ** --
fighting_b = entryEffect( spep_0 + 0, SP_02x,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, fighting_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 416, fighting_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, fighting_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 416, fighting_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, fighting_b, 0 );
setEffRotateKey( spep_0 + 416, fighting_b, 0 );
setEffAlphaKey( spep_0 + 0, fighting_b, 255 );
setEffAlphaKey( spep_0 + 414, fighting_b, 255 );
setEffAlphaKey( spep_0 + 415, fighting_b, 0 );
setEffAlphaKey( spep_0 + 416, fighting_b, 0 );

-- ** おと ** --
SE0 = playSe( spep_0+0, 1044 ); --砂煙
setSeVolume( spep_0+0, 1044, 70);
setSeVolume( spep_0+80, 1044, 50);
setSeVolume( spep_0+106, 1044, 30);
stopSe( spep_0+108, SE0, 20 );
SE1 = playSe( spep_0+0, 9 ); --向かっていく

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 30; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE0, 0 );
    stopSe( SP_dodge - 12, SE1, 0 );

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
setDisp( spep_0  + 100, 1, 1 );
setDisp( spep_0 -3 + 308, 1, 0 );
setDisp( spep_0 -3 + 372, 1, 1 );
setDisp( spep_0 -9 + 412, 1, 0 );

changeAnime( spep_0  + 100, 1, 101 );
changeAnime( spep_0 -3 + 144, 1, 108 );
changeAnime( spep_0 -3 + 168, 1, 106 );
changeAnime( spep_0 -3 + 180, 1, 108 );
changeAnime( spep_0 -3 + 214, 1, 105 );
changeAnime( spep_0 -3 + 386, 1, 107 );

--setMoveKey( spep_0  + 8, 1, 649.9, -0.1 , 0 );
setMoveKey( spep_0  + 100, 1, 649.9, -0.1 , 0 );
setMoveKey( spep_0 -3 + 104, 1, 488.9, -0.1 , 0 );
setMoveKey( spep_0 -3 + 106, 1, 411.3, -0.1 , 0 );
setMoveKey( spep_0 -3 + 108, 1, 356.7, -0.1 , 0 );
setMoveKey( spep_0 -3 + 110, 1, 314.4, -0.1 , 0 );
setMoveKey( spep_0 -3 + 112, 1, 280.2, -0.1 , 0 );
setMoveKey( spep_0 -3 + 114, 1, 251.8, -0.1 , 0 );
setMoveKey( spep_0 -3 + 116, 1, 227.8, -0.1 , 0 );
setMoveKey( spep_0 -3 + 118, 1, 207.3, -0.1 , 0 );
setMoveKey( spep_0 -3 + 120, 1, 189.8, -0.1 , 0 );
setMoveKey( spep_0 -3 + 122, 1, 174.7, -0.1 , 0 );
setMoveKey( spep_0 -3 + 124, 1, 161.7, -0.1 , 0 );
setMoveKey( spep_0 -3 + 126, 1, 150.6, -0.1 , 0 );
setMoveKey( spep_0 -3 + 128, 1, 141.2, -0.1 , 0 );
setMoveKey( spep_0 -3 + 130, 1, 133.2, -0.1 , 0 );
setMoveKey( spep_0 -3 + 132, 1, 126.6, -0.1 , 0 );
setMoveKey( spep_0 -3 + 134, 1, 121.2, -0.1 , 0 );
setMoveKey( spep_0 -3 + 136, 1, 117, -0.1 , 0 );
setMoveKey( spep_0 -3 + 138, 1, 113.7, -0.1 , 0 );
setMoveKey( spep_0 -3 + 140, 1, 111.5, -0.1 , 0 );
setMoveKey( spep_0 -3 + 143, 1, 110.2, -0.1 , 0 );

a=50;
b=0;
c=-200;

setMoveKey( spep_0 -3 + 144, 1, 109.9+a, -0.1+b , 0 );
setMoveKey( spep_0 -3 + 145, 1, 109.9+a, -0.1+b , 0 );
setMoveKey( spep_0 -3 + 146, 1, 99.9+a, -0.1+b , 0 );
setMoveKey( spep_0 -3 + 147, 1, 99.9+a, -0.1+b , 0 );
--setMoveKey( spep_0 -3 + 146, 1, 128.1+a, -0.1+b , 0 );
setMoveKey( spep_0 -3 + 148, 1, 339.6+a, -0.1+b , 0 );
setMoveKey( spep_0 -3 + 150, 1, 411.2+c, -0.1+b , 0 );
--setMoveKey( spep_0 -3 + 152, 1, 448.5+c, -0.1+b , 0 );
--setMoveKey( spep_0 -3 + 154, 1, 473.1+c, -0.1+b , 0 );
--setMoveKey( spep_0 -3 + 152, 1, 490.5+c, -0.1+b , 0 );
setMoveKey( spep_0 -3 + 152, 1, 503.1+c, -0.1+b , 0 );
setMoveKey( spep_0 -3 + 160, 1, 512+c, -0.1+b , 0 );
setMoveKey( spep_0 -3 + 162, 1, 518.2+c, -0.1+b , 0 );
setMoveKey( spep_0 -3 + 164, 1, 522.2+c, -0.1+b , 0 );
setMoveKey( spep_0 -3 + 167, 1, 524.3+c, -0.1+b , 0 );

d=-400;

--setMoveKey( spep_0 -3 + 168, 1, 499.3+d, -0.1 , 0 );
setMoveKey( spep_0 -3 + 168, 1, 531.6+d, -0.1 , 0 );
setMoveKey( spep_0 -3 + 172, 1, 542.5+d, -0.1 , 0 );
setMoveKey( spep_0 -3 + 179, 1, 542.5+d, -0.1 , 0 );
--setMoveKey( spep_0 -3 + 174, 1, 548.2+d, -0.1 , 0 );
--setMoveKey( spep_0 -3 + 176, 1, 551.1+d, -0.1 , 0 );
--setMoveKey( spep_0 -3 + 179, 1, 552+d, -0.1 , 0 );

e=-450;
x=-20;

setMoveKey( spep_0 -3 + 180, 1, 599.9+e, 37.7+b , 0 );
setMoveKey( spep_0 -3 + 182, 1, 607.4+e+x, 41.9+b , 0 );
setMoveKey( spep_0 -3 + 184, 1, 611.4+e+x, 44.1+b , 0 );
setMoveKey( spep_0 -3 + 186, 1, 613.3+e+x, 45.2+b , 0 );
setMoveKey( spep_0 -3 + 188, 1, 614+e+x, 45.6+b , 0 );
setMoveKey( spep_0 -3 + 190, 1, 617.3+e+x, 47.1+b , 0 );
setMoveKey( spep_0 -3 + 192, 1, 620.6+e+x, 48.7+b , 0 );
setMoveKey( spep_0 -3 + 194, 1, 623.9+e+x, 50.2+b , 0 );
setMoveKey( spep_0 -3 + 196, 1, 627.2+e+x, 51.8+b , 0 );
setMoveKey( spep_0 -3 + 198, 1, 630.5+e+x, 53.4+b , 0 );
setMoveKey( spep_0 -3 + 200, 1, 633.9+e+x, 54.9+b , 0 );
setMoveKey( spep_0 -3 + 202, 1, 637.2+e+x, 56.5+b , 0 );
setMoveKey( spep_0 -3 + 204, 1, 640.5+e+x, 58+b , 0 );
setMoveKey( spep_0 -3 + 206, 1, 643.8+e+x, 59.6+b , 0 );
setMoveKey( spep_0 -3 + 208, 1, 647.1+e+x, 61.1+b , 0 );
setMoveKey( spep_0 -3 + 210, 1, 650.4+e+x, 62.7+b , 0 );
setMoveKey( spep_0 -3 + 213, 1, 653.8+e+x, 64.3+b , 0 );
setMoveKey( spep_0 -3 + 214, 1, 676.7+e+x, 84.2 , 0 );

f=-520;

setMoveKey( spep_0 -3 + 216, 1, 671.9+f, 89.3 , 0 );
setMoveKey( spep_0 -3 + 218, 1, 637.8+f, 125.1 , 0 );
setMoveKey( spep_0 -3 + 220, 1, 615.7+f, 148.7 , 0 );
setMoveKey( spep_0 -3 + 222, 1, 605.4+f, 159.3 , 0 );
setMoveKey( spep_0 -3 + 224, 1, 599.9+f, 165.5 , 0 );
setMoveKey( spep_0 -3 + 226, 1, 596.3+f, 169.2 , 0 );
setMoveKey( spep_0 -3 + 228, 1, 593.8+f, 171.8 , 0 );
setMoveKey( spep_0 -3 + 230, 1, 592+f, 173.4 , 0 );
setMoveKey( spep_0 -3 + 232, 1, 590.9+f, 174.9 , 0 );
setMoveKey( spep_0 -3 + 234, 1, 589.9+f, 175.7 , 0 );
setMoveKey( spep_0 -3 + 236, 1, 589.1+f, 176.4 , 0 );
setMoveKey( spep_0 -3 + 238, 1, 588.7+f, 177.1 , 0 );
setMoveKey( spep_0 -3 + 240, 1, 588.3+f, 177.5 , 0 );
setMoveKey( spep_0 -3 + 242, 1, 588+f, 177.9 , 0 );
setMoveKey( spep_0 -3 + 244, 1, 587.6+f, 178.1 , 0 );
setMoveKey( spep_0 -3 + 246, 1, 587.4+f, 178.4 , 0 );
setMoveKey( spep_0 -3 + 248, 1, 587.3+f, 178.6 , 0 );
setMoveKey( spep_0 -3 + 250, 1, 587.1+f, 178.9 , 0 );
setMoveKey( spep_0 -3 + 252, 1, 586.8+f, 179 , 0 );
setMoveKey( spep_0 -3 + 259, 1, 586.7+f, 179.3 , 0 );

setMoveKey( spep_0 -3 + 260, 1, 160.2, -230.1 , 0 );
setMoveKey( spep_0 -3 + 262, 1, 152.9, -222.5 , 0 );
setMoveKey( spep_0 -3 + 264, 1, 150.6, -220.1 , 0 );
setMoveKey( spep_0 -3 + 266, 1, 149.4, -218.8 , 0 );
setMoveKey( spep_0 -3 + 268, 1, 148.6, -218.1 , 0 );
setMoveKey( spep_0 -3 + 270, 1, 148.2, -217.6 , 0 );
setMoveKey( spep_0 -3 + 272, 1, 148, -217.4 , 0 );
setMoveKey( spep_0 -3 + 274, 1, 147.9, -217.3 , 0 );
setMoveKey( spep_0 -3 + 276, 1, 147.8, -217.2 , 0 );
setMoveKey( spep_0 -3 + 278, 1, 148.2, -217.5 , 0 );
setMoveKey( spep_0 -3 + 280, 1, 148.9, -220 , 0 );
setMoveKey( spep_0 -3 + 282, 1, 150.6, -224.4 , 0 );
setMoveKey( spep_0 -3 + 284, 1, 152.9, -230.5 , 0 );
setMoveKey( spep_0 -3 + 286, 1, 155.8, -238.4 , 0 );
setMoveKey( spep_0 -3 + 288, 1, 159.7, -248.7 , 0 );
setMoveKey( spep_0 -3 + 290, 1, 164.6, -261.7 , 0 );
setMoveKey( spep_0 -3 + 292, 1, 170.7, -277.8 , 0 );
setMoveKey( spep_0 -3 + 294, 1, 178.3, -298 , 0 );
setMoveKey( spep_0 -3 + 296, 1, 187.7, -323.1 , 0 );
setMoveKey( spep_0 -3 + 298, 1, 199.7, -355 , 0 );
setMoveKey( spep_0 -3 + 300, 1, 215.1, -395.9 , 0 );
setMoveKey( spep_0 -3 + 302, 1, 235.7, -450.6 , 0 );
setMoveKey( spep_0 -3 + 304, 1, 265, -528.3 , 0 );
setMoveKey( spep_0 -3 + 306, 1, 311.9, -653 , 0 );
setMoveKey( spep_0 -3 + 308, 1, 404.2, -898.6 , 0 );

setMoveKey( spep_0 -3 + 372, 1, 404.2, -898.6 , 0 );
--setMoveKey( spep_0 -3 + 380, 1, 404.2, -898.6 , 0 );
--setMoveKey( spep_0 -3 + 382, 1, 298.9, -642.6 , 0 );
--setMoveKey( spep_0 -3 + 384, 1, 217.1, -443.6 , 0 );
--setMoveKey( spep_0 -3 + 386, 1, 158.6, -301.3 , 0 );
--setMoveKey( spep_0 -3 + 388, 1, 123.5, -216 , 0 );
--setMoveKey( spep_0 -3 + 390, 1, 111.8, -187.6 , 0 );
setMoveKey( spep_0 -9 + 391, 1, 111.8, -187.6 , 0 );

h=-70;
i=20;
j=0;
k=90;

setMoveKey( spep_0 -9 + 392, 1, 139.9+i, -400+h , 0 );
setMoveKey( spep_0 -9 + 396, 1, 139.9+i, -400+h , 0 );
setMoveKey( spep_0 -9 + 398, 1, 139.9+i, -400+h , 0 );
setMoveKey( spep_0 -9 + 399, 1, 139.9+j, -400+k , 0 );
--setMoveKey( spep_0 -9 + 398, 1, 214.8+i, -376.7+h , 0 );
--setMoveKey( spep_0 -9 + 400, 1, 436.2+i, -312+h , 0 );
--setMoveKey( spep_0 -9 + 402, 1, 617.5+i, -264.1+h , 0 );
--setMoveKey( spep_0 -9 + 404, 1, 715.6+i, -240.2+h , 0 );
--setMoveKey( spep_0 -9 + 406, 1, 771.8+i, -225.7+h , 0 );
--setMoveKey( spep_0 -9 + 408, 1, 807.1+i, -217.5+h , 0 );
--setMoveKey( spep_0 -9 + 410, 1, 830.4+i, -212.9+h , 0 );
--setMoveKey( spep_0 -9 + 412, 1, 845.4+i, -208.6+h , 0 );
--setMoveKey( spep_0 -9 + 414, 1, 855.5+i, -205.8+h , 0 );
--setMoveKey( spep_0 -9 + 416, 1, 864+i, -205.5+h , 0 );
--setMoveKey( spep_0 -9 + 418, 1, 869+i, -204.1+h , 0 );
--setMoveKey( spep_0 -9 + 420, 1, 872.8+i, -203+h , 0 );
setMoveKey( spep_0 -9 + 412, 1, 875.5+j, -201.9+k , 0 );

setScaleKey( spep_0  + 100, 1, 1.4, 1.4 );
setScaleKey( spep_0  + 101, 1, 1.4, 1.4 );
setScaleKey( spep_0 -3 + 143, 1, 1.4, 1.4 );


setScaleKey( spep_0 -3 + 144, 1, 1.7, 1.7 );
setScaleKey( spep_0 -3  + 145, 1, 1.7, 1.7 );
setScaleKey( spep_0 -3+ 146, 1, 1.4, 1.4 );
setScaleKey( spep_0 -3 + 167, 1, 1.4, 1.4 );

setScaleKey( spep_0 -3 + 168, 1, 1.4, 1.4 );
setScaleKey( spep_0 -3 + 179, 1, 1.4, 1.4 );

setScaleKey( spep_0 -3 + 180, 1, 1.6, 1.6 );
setScaleKey( spep_0  + 181, 1, 1.4, 1.4 );
setScaleKey( spep_0 -3 + 213, 1, 1.4, 1.4 );

setScaleKey( spep_0 -3 + 214, 1, 1.4, 1.4 );
setScaleKey( spep_0 -3 + 216, 1, 1.34, 1.34 );
setScaleKey( spep_0 -3 + 218, 1, 0.88, 0.88 );
setScaleKey( spep_0 -3 + 220, 1, 0.59, 0.59 );
setScaleKey( spep_0 -3 + 222, 1, 0.45, 0.45 );
setScaleKey( spep_0 -3 + 224, 1, 0.38, 0.38 );
setScaleKey( spep_0 -3 + 226, 1, 0.33, 0.33 );
setScaleKey( spep_0 -3 + 228, 1, 0.3, 0.3 );
setScaleKey( spep_0 -3 + 230, 1, 0.27, 0.27 );
setScaleKey( spep_0 -3 + 232, 1, 0.26, 0.26 );
setScaleKey( spep_0 -3 + 234, 1, 0.24, 0.24 );
setScaleKey( spep_0 -3 + 236, 1, 0.23, 0.23 );
setScaleKey( spep_0 -3 + 238, 1, 0.23, 0.23 );
setScaleKey( spep_0 -3 + 240, 1, 0.22, 0.22 );
setScaleKey( spep_0 -3 + 242, 1, 0.22, 0.22 );
setScaleKey( spep_0 -3 + 244, 1, 0.21, 0.21 );
setScaleKey( spep_0 -3 + 250, 1, 0.21, 0.21 );
setScaleKey( spep_0 -3 + 259, 1, 0.2, 0.2 );

setScaleKey( spep_0 -3 + 260, 1, 4, 4 );
setScaleKey( spep_0 -3 + 284, 1, 4, 4 );
setScaleKey( spep_0 -3 + 286, 1, 4.04, 4.04 );
setScaleKey( spep_0 -3 + 288, 1, 4.04, 4.04 );
setScaleKey( spep_0 -3 + 290, 1, 4.08, 4.08 );
setScaleKey( spep_0 -3 + 292, 1, 4.08, 4.08 );
setScaleKey( spep_0 -3 + 294, 1, 4.12, 4.12 );
setScaleKey( spep_0 -3 + 296, 1, 4.2, 4.2 );
setScaleKey( spep_0 -3 + 298, 1, 4.24, 4.24 );
setScaleKey( spep_0 -3 + 300, 1, 4.32, 4.32 );
setScaleKey( spep_0 -3 + 302, 1, 4.4, 4.4 );
setScaleKey( spep_0 -3 + 304, 1, 4.56, 4.56 );
setScaleKey( spep_0 -3 + 306, 1, 4.76, 4.76 );
setScaleKey( spep_0 -3 + 308, 1, 5.2, 5.2 );

setScaleKey( spep_0 -3 + 372, 1, 5.2, 5.2 );
setScaleKey( spep_0 -3 + 380, 1, 5.2, 5.2 );
setScaleKey( spep_0 -3 + 382, 1, 4.34, 4.34 );
setScaleKey( spep_0 -9 + 391, 1, 3.66, 3.66 );
--setScaleKey( spep_0 -3 + 386, 1, 3.18, 3.18 );
--setScaleKey( spep_0 -3 + 388, 1, 2.9, 2.9 );
--setScaleKey( spep_0 -3 + 390, 1, 2.8, 2.8 );



setScaleKey( spep_0 -9 + 392, 1, 2.2, 2.2 );
setScaleKey( spep_0 -9 + 396, 1, 1.6, 1.6 );
setScaleKey( spep_0 -9 + 398, 1, 1.64, 1.64 );
setScaleKey( spep_0 -9 + 400, 1, 1.76, 1.76 );
setScaleKey( spep_0 -9 + 402, 1, 1.86, 1.86 );
setScaleKey( spep_0 -9 + 404, 1, 1.92, 1.92 );
setScaleKey( spep_0 -9 + 406, 1, 1.94, 1.94 );
setScaleKey( spep_0 -9 + 408, 1, 1.96, 1.96 );
setScaleKey( spep_0 -9 + 410, 1, 1.98, 1.98 );
setScaleKey( spep_0 -9 + 412, 1, 1.98, 1.98 );
--setScaleKey( spep_0 -9 + 416, 1, 2, 2 );

setRotateKey( spep_0  + 100, 1, 0 );
setRotateKey( spep_0 -3 + 143, 1, 0 );

setRotateKey( spep_0 -3 + 144, 1, 0 );
setRotateKey( spep_0 -3 + 167, 1, 0 );

setRotateKey( spep_0 -3 + 168, 1, -39.2 );
setRotateKey( spep_0 -3 + 179, 1, -39.2 );

setRotateKey( spep_0 -3 + 180, 1, 0 );
setRotateKey( spep_0 -3 + 213, 1, 0 );

setRotateKey( spep_0 -3 + 214, 1, -15 );
setRotateKey( spep_0 -3 + 259, 1, -15 );

setRotateKey( spep_0 -3 + 260, 1, -33.5 );
setRotateKey( spep_0 -3 + 308, 1, -33.5 );

setRotateKey( spep_0 -3 + 372, 1, -33.5 );
setRotateKey( spep_0 -9 + 391, 1, -33.5 );

setRotateKey( spep_0 -9 + 392, 1, -100.6 );
setRotateKey( spep_0 -9 + 396, 1, -100.6 );
setRotateKey( spep_0 -9 + 398, 1, -98.2 );
setRotateKey( spep_0 -9 + 400, 1, -90.9 );
setRotateKey( spep_0 -9 + 402, 1, -84.9 );
setRotateKey( spep_0 -9 + 404, 1, -81.7 );
setRotateKey( spep_0 -9 + 406, 1, -79.8 );
setRotateKey( spep_0 -9 + 408, 1, -78.6 );
setRotateKey( spep_0 -9 + 410, 1, -77.8 );
setRotateKey( spep_0 -9 + 412, 1, -77.3 );
--setRotateKey( spep_0 -9 + 414, 1, -76.9 );
--setRotateKey( spep_0 -9 + 416, 1, -76.7 );
--setRotateKey( spep_0 -9 + 418, 1, -76.5 );
--setRotateKey( spep_0 -9 + 420, 1, -76.4 );
--setRotateKey( spep_0 -9 + 422, 1, -76.3 );




--文字エントリー
ctdon = entryEffectLife( spep_0 -3 + 144,  10019, 10, 0x100, -1, 0, 27.7, 142.8 );--ドンッ

setEffMoveKey( spep_0 -3 + 144, ctdon, 27.7, 142.8 , 0 );
setEffMoveKey( spep_0 -3 + 146, ctdon, 17.7, 207.2 , 0 );
setEffMoveKey( spep_0 -3 + 148, ctdon, -7.4, 225 , 0 );
setEffMoveKey( spep_0 -3 + 150, ctdon, -2, 224.5 , 0 );
setEffMoveKey( spep_0 -3 + 152, ctdon, -27.6, 232.3 , 0 );
setEffMoveKey( spep_0 -3 + 154, ctdon, -39.4, 241 , 0 );

setEffScaleKey( spep_0 -3 + 144, ctdon, 1.24, 1.3 );
setEffScaleKey( spep_0 -3 + 146, ctdon, 2.32, 2.42 );
setEffScaleKey( spep_0 -3 + 148, ctdon, 2.34, 2.44 );
setEffScaleKey( spep_0 -3 + 150, ctdon, 2.35, 2.45 );
setEffScaleKey( spep_0 -3 + 152, ctdon, 2.36, 2.47 );
setEffScaleKey( spep_0 -3 + 154, ctdon, 2.38, 2.48 );

setEffRotateKey( spep_0 -3 + 144, ctdon, -10 );
setEffRotateKey( spep_0 -3 + 154, ctdon, -10 );

setEffAlphaKey( spep_0 -3 + 144, ctdon, 255 );
setEffAlphaKey( spep_0 -3 + 146, ctdon, 255 );
setEffAlphaKey( spep_0 -3 + 148, ctdon, 191 );
setEffAlphaKey( spep_0 -3 + 150, ctdon, 128 );
setEffAlphaKey( spep_0 -3 + 152, ctdon, 64 );
setEffAlphaKey( spep_0 -3 + 154, ctdon, 0 );

--文字エントリー
ctga = entryEffectLife( spep_0 -3 + 168,  10005, 8, 0x100, -1, 0, 32.1, 161.5 );--ガッ

setEffMoveKey( spep_0 -3 + 168, ctga, 32.1, 161.5 , 0 );
setEffMoveKey( spep_0 -3 + 170, ctga, 46.1, 225.2 , 0 );
setEffMoveKey( spep_0 -3 + 172, ctga, 38.1, 209.2 , 0 );
setEffMoveKey( spep_0 -3 + 174, ctga, 46.9, 231.2 , 0 );
setEffMoveKey( spep_0 -3 + 176, ctga, 55.6, 253.3 , 0 );

g=1.1;

setEffScaleKey( spep_0 -3 + 168, ctga, 0.45+g, 0.45+g );
setEffScaleKey( spep_0 -3 + 170, ctga, 0.84+g, 0.93+g );
setEffScaleKey( spep_0 -3 + 172, ctga, 0.67+g, 0.74+g );
setEffScaleKey( spep_0 -3 + 174, ctga, 0.96+g, 1.05+g );
setEffScaleKey( spep_0 -3 + 176, ctga, 1.24+g, 1.37+g );

setEffRotateKey( spep_0 -3 + 168, ctga, 10 );
setEffRotateKey( spep_0 -3 + 176, ctga, 10 );

setEffAlphaKey( spep_0 -3 + 168, ctga, 255 );
setEffAlphaKey( spep_0 -3 + 174, ctga, 255 );
setEffAlphaKey( spep_0 -3 + 176, ctga, 128 );

--文字エントリー
ctga2 = entryEffectLife( spep_0 -3 + 180,  10005, 8, 0x100, -1, 0, 155.3, 200.6 );

setEffMoveKey( spep_0 -3 + 180, ctga2, 155.3, 200.6 , 0 );
setEffMoveKey( spep_0 -3 + 182, ctga2, 161.2, 224.2 , 0 );
setEffMoveKey( spep_0 -3 + 184, ctga2, 165.4, 217.1 , 0 );
setEffMoveKey( spep_0 -3 + 186, ctga2, 167.4, 233.7 , 0 );
setEffMoveKey( spep_0 -3 + 188, ctga2, 169.2, 250.3 , 0 );

setEffScaleKey( spep_0 -3 + 180, ctga2, 0.75+g, 0.69+g );
setEffScaleKey( spep_0 -3 + 182, ctga2, 0.93+g, 1.03+g );
setEffScaleKey( spep_0 -3 + 184, ctga2, 0.71+g, 0.78+g );
setEffScaleKey( spep_0 -3 + 186, ctga2, 0.96+g, 1.05+g );
setEffScaleKey( spep_0 -3 + 188, ctga2, 1.2+g, 1.33+g );

setEffRotateKey( spep_0 -3 + 180, ctga2, 10 );
setEffRotateKey( spep_0 -3 + 188, ctga2, 10 );

setEffAlphaKey( spep_0 -3 + 180, ctga2, 255 );
setEffAlphaKey( spep_0 -3 + 186, ctga2, 255 );
setEffAlphaKey( spep_0 -3 + 188, ctga2, 128 );

--文字エントリー
ctbaki = entryEffectLife( spep_0 -3 + 214,  10020, 20, 0x100, -1, 0, -14.6, 196.7 );

setEffMoveKey( spep_0 -3 + 214, ctbaki, -14.6, 196.7 , 0 );
setEffMoveKey( spep_0 -3 + 216, ctbaki, -6.8, 225.2 , 0 );
setEffMoveKey( spep_0 -3 + 218, ctbaki, -20.6, 262.2 , 0 );
setEffMoveKey( spep_0 -3 + 220, ctbaki, -5.1, 255.7 , 0 );
setEffMoveKey( spep_0 -3 + 222, ctbaki, -12, 265.1 , 0 );
setEffMoveKey( spep_0 -3 + 224, ctbaki, -3.5, 252.8 , 0 );
setEffMoveKey( spep_0 -3 + 226, ctbaki, -18.3, 253.2 , 0 );
setEffMoveKey( spep_0 -3 + 228, ctbaki, -9.8, 256.7 , 0 );
setEffMoveKey( spep_0 -3 + 230, ctbaki, -17.4, 242.5 , 0 );
setEffMoveKey( spep_0 -3 + 232, ctbaki, -18, 252 , 0 );
setEffMoveKey( spep_0 -3 + 234, ctbaki, -20.9, 247.9 , 0 );

setEffScaleKey( spep_0 -3 + 214, ctbaki, 0.87, 0.86 );
setEffScaleKey( spep_0 -3 + 216, ctbaki, 1.59, 1.57 );
setEffScaleKey( spep_0 -3 + 218, ctbaki, 2.31, 2.28 );
setEffScaleKey( spep_0 -3 + 220, ctbaki, 2.3, 2.27 );
setEffScaleKey( spep_0 -3 + 222, ctbaki, 2.28, 2.25 );
setEffScaleKey( spep_0 -3 + 224, ctbaki, 2.25, 2.22 );
setEffScaleKey( spep_0 -3 + 226, ctbaki, 2.2, 2.17 );
setEffScaleKey( spep_0 -3 + 228, ctbaki, 2.14, 2.12 );
setEffScaleKey( spep_0 -3 + 230, ctbaki, 2.07, 2.04 );
setEffScaleKey( spep_0 -3 + 232, ctbaki, 1.98, 1.96 );
setEffScaleKey( spep_0 -3 + 234, ctbaki, 1.88, 1.86 );

setEffRotateKey( spep_0 -3 + 214, ctbaki, 0 );
setEffRotateKey( spep_0 -3 + 234, ctbaki, 0 );

setEffAlphaKey( spep_0 -3 + 214, ctbaki, 255 );
setEffAlphaKey( spep_0 -3 + 218, ctbaki, 255 );
setEffAlphaKey( spep_0 -3 + 220, ctbaki, 251 );
setEffAlphaKey( spep_0 -3 + 222, ctbaki, 239 );
setEffAlphaKey( spep_0 -3 + 224, ctbaki, 219 );
setEffAlphaKey( spep_0 -3 + 226, ctbaki, 191 );
setEffAlphaKey( spep_0 -3 + 228, ctbaki, 155 );
setEffAlphaKey( spep_0 -3 + 230, ctbaki, 112 );
setEffAlphaKey( spep_0 -3 + 232, ctbaki, 60 );
setEffAlphaKey( spep_0 -3 + 234, ctbaki, 0 );

-- ** エフェクト等 ** --
shuchusen1 = entryEffectLife( spep_0  + 288,  906, 84, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_0  + 288, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0  + 372, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0  + 288, shuchusen1, 1.23, 1.27 );
setEffScaleKey( spep_0  + 372, shuchusen1, 1.23, 1.27 );

setEffRotateKey( spep_0  + 288, shuchusen1, 0 );
setEffRotateKey( spep_0  + 372, shuchusen1, 0 );

setEffAlphaKey( spep_0  + 288, shuchusen1, 0 );
setEffAlphaKey( spep_0  + 296, shuchusen1, 0 );
setEffAlphaKey( spep_0  + 297, shuchusen1, 255 );
setEffAlphaKey( spep_0  + 372, shuchusen1, 255 );


-- ** 顔カットイン ** --
--speff = entryEffect( spep_0  + 288  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0  + 288 , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_0  +300, 190006, 72, 0x100, -1, 0, 0, 510);    -- ゴゴゴゴ

setEffMoveKey(  spep_0  +300,  ctgogo,  0,  510);
setEffMoveKey(  spep_0  +372,  ctgogo,  0,  510);

setEffAlphaKey( spep_0  +300, ctgogo, 0 );
setEffAlphaKey( spep_0  + 301, ctgogo, 255 );
setEffAlphaKey( spep_0  + 302, ctgogo, 255 );
setEffAlphaKey( spep_0  + 356, ctgogo, 255 );
setEffAlphaKey( spep_0  + 358, ctgogo, 255 );
setEffAlphaKey( spep_0  + 360, ctgogo, 191 );
setEffAlphaKey( spep_0  + 362, ctgogo, 128 );
setEffAlphaKey( spep_0  + 372, ctgogo, 64 );

setEffRotateKey(  spep_0  +300,  ctgogo,  0);
setEffRotateKey(  spep_0  +372,  ctgogo,  0);

setEffScaleKey(  spep_0  +300,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_0  +360,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_0  +372,  ctgogo, -1.07, 1.07 );

-- ** おと ** --
playSe( spep_0 + 124, 8 ); --迫る
playSe( spep_0 -3 + 144, 1010 ); --ドン
playSe( spep_0 -3 + 168, 1000 ); --ガッ
playSe( spep_0 -3 + 180, 1001 ); --ガッ
playSe( spep_0 -3 + 214, 1011 ); --バキッ
playSe( spep_0 + 236, 43 ); --瞬間移動
playSe( spep_0 + 268, 1109 ); --瞬間移動・後
playSe( spep_0 + 300, 1018 ); --ごごご
playSe( spep_0 + 340, 1072 ); --蹴る前
setSeVolume( spep_0 + 340, 1072, 110 );
setSeVolume( spep_0 + 360, 1072, 140 );
playSe( spep_0 + 386, 1120 ); --蹴り飛ばし

--白フェード
entryFade( spep_0 + 144, 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_0 + 214, 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_0 + 254, 2, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_0 + 386, 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_0 + 410, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1 = spep_0+414;
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
entryFade( spep_1 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

------------------------------------------------------
--  気功波発射〜敵命中
------------------------------------------------------
-- ** エフェクト等 ** --
hit = entryEffect( spep_2 + 0, SP_03x,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, hit, 0, 0 , 0 );
setEffMoveKey( spep_2 + 176, hit, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, hit, 1.0, 1.0 );
setEffScaleKey( spep_2 + 176, hit, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, hit, 0 );
setEffRotateKey( spep_2 + 176, hit, 0 );
setEffAlphaKey( spep_2 + 0, hit, 255 );
setEffAlphaKey( spep_2 + 176, hit, 255 );
setEffAlphaKey( spep_2 + 177, hit, 0 );
setEffAlphaKey( spep_2 + 178, hit, 0 );

--文字エントリー

ctzuo = entryEffectLife( spep_2-3 + 122,  10012, 54, 0x100, -1, 0, -46.6, 189.8 );--ズオッ

setEffMoveKey( spep_2-3 + 122, ctzuo, -46.6, 189.8 , 0 );
setEffMoveKey( spep_2-3 + 124, ctzuo, -78, 227.4 , 0 );
setEffMoveKey( spep_2-3 + 126, ctzuo, -117.6, 265.3 , 0 );
setEffMoveKey( spep_2-3 + 128, ctzuo, -142.4, 258.4 , 0 );
setEffMoveKey( spep_2-3 + 130, ctzuo, -116.3, 250.9 , 0 );
setEffMoveKey( spep_2-3 + 132, ctzuo, -138.9, 251.2 , 0 );
setEffMoveKey( spep_2-3 + 134, ctzuo, -116.3, 250.9 , 0 );
setEffMoveKey( spep_2-3 + 136, ctzuo, -138.9, 251.2 , 0 );
setEffMoveKey( spep_2-3 + 138, ctzuo, -116.3, 250.9 , 0 );
setEffMoveKey( spep_2-3 + 140, ctzuo, -138.9, 251.2 , 0 );
setEffMoveKey( spep_2-3 + 142, ctzuo, -116.3, 250.9 , 0 );
setEffMoveKey( spep_2-3 + 144, ctzuo, -138.9, 251.2 , 0 );
setEffMoveKey( spep_2-3 + 146, ctzuo, -116.3, 250.9 , 0 );
setEffMoveKey( spep_2-3 + 148, ctzuo, -138.9, 251.2 , 0 );
setEffMoveKey( spep_2-3 + 150, ctzuo, -116.3, 250.9 , 0 );
setEffMoveKey( spep_2-3 + 152, ctzuo, -138.9, 251.2 , 0 );
setEffMoveKey( spep_2-3 + 154, ctzuo, -116.3, 250.9 , 0 );
setEffMoveKey( spep_2-3 + 156, ctzuo, -138.9, 251.2 , 0 );
setEffMoveKey( spep_2-3 + 158, ctzuo, -116.3, 250.9 , 0 );
setEffMoveKey( spep_2-3 + 160, ctzuo, -138.9, 251.2 , 0 );
setEffMoveKey( spep_2-3 + 162, ctzuo, -116.3, 250.9 , 0 );
setEffMoveKey( spep_2-3 + 164, ctzuo, -138.9, 251.2 , 0 );
setEffMoveKey( spep_2-3 + 166, ctzuo, -116.3, 250.9 , 0 );
setEffMoveKey( spep_2-3 + 168, ctzuo, -138.9, 251.2 , 0 );
setEffMoveKey( spep_2-3 + 170, ctzuo, -116.3, 250.9 , 0 );
setEffMoveKey( spep_2-3 + 172, ctzuo, -138.9, 251.2 , 0 );
setEffMoveKey( spep_2-3 + 174, ctzuo, -116.3, 250.9 , 0 );
setEffMoveKey( spep_2-3 + 176, ctzuo, -138.9, 251.2 , 0 );
--setEffMoveKey( spep_2-3 + 178, ctzuo, -116.3, 250.9 , 0 );
--setEffMoveKey( spep_2-3 + 180, ctzuo, -138.9, 251.2 , 0 );
--setEffMoveKey( spep_2-3 + 182, ctzuo, -116.3, 250.9 , 0 );
--setEffMoveKey( spep_2-3 + 184, ctzuo, -138.9, 251.2 , 0 );
--setEffMoveKey( spep_2-3 + 186, ctzuo, -116.3, 250.9 , 0 );
--setEffMoveKey( spep_2-3 + 188, ctzuo, -138.9, 251.2 , 0 );
--setEffMoveKey( spep_2-3 + 190, ctzuo, -116.3, 250.9 , 0 );
--setEffMoveKey( spep_2-3 + 192, ctzuo, -116.3, 250.9 , 0 );
--setEffMoveKey( spep_2-3 + 194, ctzuo, -138.9, 251.2 , 0 );
--setEffMoveKey( spep_2-3 + 198, ctzuo, -116.3, 250.9 , 0 );

setEffScaleKey( spep_2-3 + 122, ctzuo, 1.02, 1.02 );
setEffScaleKey( spep_2-3 + 124, ctzuo, 2.22, 2.22 );
setEffScaleKey( spep_2-3 + 126, ctzuo, 3.41, 3.41 );
setEffScaleKey( spep_2-3 + 128, ctzuo, 3.07, 3.07 );
setEffScaleKey( spep_2-3 + 130, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_2-3 + 176, ctzuo, 2.73, 2.73 );

setEffRotateKey( spep_2-3 + 122, ctzuo, -17.2 );
setEffRotateKey( spep_2-3 + 176, ctzuo, -17.2 );

setEffAlphaKey( spep_2-3 + 122, ctzuo, 255 );
setEffAlphaKey( spep_2-3 + 192, ctzuo, 255 );
setEffAlphaKey( spep_2-3 + 194, ctzuo, 170 );
setEffAlphaKey( spep_2-3 + 196, ctzuo, 85 );
setEffAlphaKey( spep_2-3 + 176, ctzuo, 0 );

--白フェード
entryFade( spep_2 + 112, 2, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 119, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 180 );  --white fade
entryFade( spep_2 + 168, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** おと ** --
playSe( spep_2 + 16, 1108 ); --着地
setSeVolume( spep_2 + 16, 1108, 150 );
SE2 = playSe( spep_2 + 26, 15 ); --溜める
stopSe( spep_2 + 100, SE2, 10 );
playSe( spep_2 + 106, 1022 ); --発射

--次の準備
spep_3 = spep_2+176;

------------------------------------------------------
-- ギャン
-----------------------------------------------------
-- ** エフェクト等 ** --
gyan = entryEffect( spep_3 + 0, 190000,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, gyan, 0, 0 , 0 );
setEffMoveKey( spep_3 + 60, gyan, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, gyan, 1.0, 1.0 );
setEffScaleKey( spep_3 + 60, gyan, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, gyan, 0 );
setEffRotateKey( spep_3 + 60, gyan, 0 );
setEffAlphaKey( spep_3 + 0, gyan, 255 );
setEffAlphaKey( spep_3 + 60, gyan, 255 );

ctgyan = entryEffectLife( spep_3 + 0,  10006, 58, 0x100, -1, 0, 7.1, 306.8 );--ギャンッ

setEffMoveKey( spep_3 + 0, ctgyan, 7.1, 306.8 , 0 );
setEffMoveKey( spep_3 + 58, ctgyan, 7.1, 306.8 , 0 );

z=2.7;

setEffScaleKey( spep_3 + 0, ctgyan, 0.6 + z, 0.6 + z );
setEffScaleKey( spep_3 + 2, ctgyan, 0.7 + z, 0.7 + z );
setEffScaleKey( spep_3 + 4, ctgyan, 0.8 + z, 0.8 + z );
setEffScaleKey( spep_3 + 6, ctgyan, 0.9 + z, 0.9 + z );
setEffScaleKey( spep_3 + 8, ctgyan, 1 + z, 1 + z );
setEffScaleKey( spep_3 + 10, ctgyan, 1.01 + z, 1.01 + z );
setEffScaleKey( spep_3 + 12, ctgyan, 1.02 + z, 1.02 + z );
setEffScaleKey( spep_3 + 14, ctgyan, 1.02 + z, 1.02 + z );
setEffScaleKey( spep_3 + 16, ctgyan, 1.03 + z, 1.03 + z );
setEffScaleKey( spep_3 + 18, ctgyan, 1.04 + z, 1.04 + z );
setEffScaleKey( spep_3 + 20, ctgyan, 1.05 + z, 1.05 + z );
setEffScaleKey( spep_3 + 22, ctgyan, 1.06 + z, 1.06 + z );
setEffScaleKey( spep_3 + 24, ctgyan, 1.06 + z, 1.06 + z );
setEffScaleKey( spep_3 + 26, ctgyan, 1.07 + z, 1.07 + z );
setEffScaleKey( spep_3 + 28, ctgyan, 1.08 + z, 1.08 + z );
setEffScaleKey( spep_3 + 30, ctgyan, 1.09 + z, 1.09 + z );
setEffScaleKey( spep_3 + 32, ctgyan, 1.1 + z, 1.1 + z );
setEffScaleKey( spep_3 + 34, ctgyan, 1.1 + z, 1.1 + z );
setEffScaleKey( spep_3 + 36, ctgyan, 1.11 + z, 1.11 + z );
setEffScaleKey( spep_3 + 38, ctgyan, 1.12 + z, 1.12 + z );
setEffScaleKey( spep_3 + 40, ctgyan, 1.13 + z, 1.13 + z );
setEffScaleKey( spep_3 + 42, ctgyan, 1.14 + z, 1.14 + z );
setEffScaleKey( spep_3 + 44, ctgyan, 1.14 + z, 1.14 + z );
setEffScaleKey( spep_3 + 46, ctgyan, 1.15 + z, 1.15 + z );
setEffScaleKey( spep_3 + 48, ctgyan, 1.16 + z, 1.16 + z );
setEffScaleKey( spep_3 + 50, ctgyan, 1.17 + z, 1.17 + z );
setEffScaleKey( spep_3 + 52, ctgyan, 1.17 + z, 1.17 + z );
setEffScaleKey( spep_3 + 54, ctgyan, 1.18 + z, 1.18 + z );
setEffScaleKey( spep_3 + 56, ctgyan, 1.19 + z, 1.19 + z );
setEffScaleKey( spep_3 + 58, ctgyan, 1.2 + z, 1.2 + z );

setEffRotateKey( spep_3 + 0, ctgyan, 0 );
setEffRotateKey( spep_3 + 58, ctgyan, 0 );

setEffAlphaKey( spep_3 + 0, ctgyan, 255 );
setEffAlphaKey( spep_3 + 58, ctgyan, 255 );

--白フェード
entryFade( spep_3 + 52, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** おと ** --
playSe( spep_3, 1023 ); --爆発

--次の準備
spep_4 =spep_3+60;

------------------------------------------------------
-- フィニッシュ爆発
-----------------------------------------------------
-- ** エフェクト等 ** --
explosion = entryEffect( spep_4+ 0, SP_04x,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4+ 0, explosion, 0, 0 , 0 );
setEffMoveKey( spep_4+ 140, explosion, 0, 0 , 0 );
setEffScaleKey( spep_4+ 0, explosion, 1.0, 1.0 );
setEffScaleKey( spep_4+ 140, explosion, 1.0, 1.0 );
setEffRotateKey( spep_4+ 0, explosion, 0 );
setEffRotateKey( spep_4+ 140, explosion, 0 );
setEffAlphaKey( spep_4+ 0, explosion, 255 );
setEffAlphaKey( spep_4+ 140, explosion, 255 );

-- ** おと ** --
playSe( spep_4 + 18, 1024 ); --爆発

-- ** ダメージ表示 ** --
dealDamage(spep_4 + 10);
endPhase( spep_4 + 136 );


end
