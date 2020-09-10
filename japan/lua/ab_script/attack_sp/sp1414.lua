--4019150:超サイヤ人バーダック_リベンジャーアサルト
--sp_effect_b4_00134

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

--エフェクト(味方)
SP_01=	155094	;--	冒頭気溜め〜気弾溜め・手前
SP_02=	155095	;--	冒頭気溜め〜気弾溜め・奥
SP_03=	155096	;--	気弾発射〜フィニッシュ・手前
SP_04=	155097	;--	気弾発射〜フィニッシュ・奥

--エフェクト(敵)
SP_01x=	155098	;--	冒頭気溜め〜気弾溜め・手前	(敵)
SP_02x=	155099	;--	冒頭気溜め〜気弾溜め・奥	(敵)
SP_03x=	155100	;--	気弾発射〜フィニッシュ・手前	(敵)
SP_04x=	155101	;--	気弾発射〜フィニッシュ・奥	(敵)
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

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 対峙
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
tame_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 644, tame_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 644, tame_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame_f, 0 );
setEffRotateKey( spep_0 + 644, tame_f, 0 );
setEffAlphaKey( spep_0 + 0, tame_f, 255 );
setEffAlphaKey( spep_0 + 644, tame_f, 255 );

-- ** エフェクト等 ** --
tame_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 644, tame_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 644, tame_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame_b, 0 );
setEffRotateKey( spep_0 + 644, tame_b, 0 );
setEffAlphaKey( spep_0 + 0, tame_b, 255 );
setEffAlphaKey( spep_0 + 644, tame_b, 255 );

--SE
SE0=playSe( spep_0 + 12, 1035 );
se_1024 = playSe( spep_0 + 12, 1024 );
setSeVolume( spep_0 + 12, 1024, 79 );
SE1=playSe( spep_0 + 12, 1182 );
SE2=playSe( spep_0 + 17, 1068 );
setSeVolume( spep_0 + 17, 1068, 79 );
-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 636, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 50; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE0, 0 );
    stopSe( SP_dodge - 12, SE1, 0 );
    stopSe( SP_dodge - 12, SE2, 0 );
    stopSe( SP_dodge - 12, se_1024, 0 );
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
setDisp( spep_0-3 + 78, 1, 1 );
setDisp( spep_0-1 + 246, 1, 0 );
setDisp( spep_0-1 + 250, 1, 1 );
setDisp( spep_0-1 + 282, 1, 0 );
setDisp( spep_0-1 + 286, 1, 1 );
setDisp( spep_0-1 + 292, 1, 0 );
setDisp( spep_0-1 + 298, 1, 1 );
setDisp( spep_0-1 + 306, 1, 0 );
setDisp( spep_0-1 + 312, 1, 1 );
setDisp( spep_0-1 + 318, 1, 0 );
setDisp( spep_0-1 + 324, 1, 1 );
setDisp( spep_0-1 + 332, 1, 0 );
setDisp( spep_0-1 + 336, 1, 1 );
setDisp( spep_0-1 + 344, 1, 0 );
setDisp( spep_0-1 + 348, 1, 1 );
setDisp( spep_0-1 + 354, 1, 0 );
setDisp( spep_0-1 + 392, 1, 1 );
setDisp( spep_0-1 + 540, 1, 0 );

changeAnime( spep_0-3 +78 , 1, 102 );
changeAnime( spep_0-3 +114 , 1, 107);
changeAnime( spep_0-3 +138 , 1, 107 );
changeAnime( spep_0-3 +158 , 1, 105 );
changeAnime( spep_0-3 +192 , 1, 6 );
changeAnime( spep_0-3 +214 , 1, 106 );
changeAnime( spep_0-3 +252 , 1, 106 );
changeAnime( spep_0-3 +264 , 1, 7 );
changeAnime( spep_0-3 +268 , 1, 106 );
changeAnime( spep_0-3 +264 , 1, 7 );
changeAnime( spep_0-3 +268 , 1, 106 );
changeAnime( spep_0-3 +274 , 1, 7 );
changeAnime( spep_0-3 +278 , 1, 106 );
changeAnime( spep_0-3 +288 , 1, 7 );
changeAnime( spep_0-3 +290 , 1, 106 );
changeAnime( spep_0-3 +300 , 1, 7 );
changeAnime( spep_0-3 +304 , 1, 106 );
changeAnime( spep_0-3 +314 , 1, 7 );
changeAnime( spep_0-3 +316 , 1, 106 );
changeAnime( spep_0-3 +326 , 1, 7 );
changeAnime( spep_0-3 +328 , 1, 106 );
changeAnime( spep_0-3 +338 , 1, 7 );
changeAnime( spep_0-3 +340 , 1, 106 );
changeAnime( spep_0-3 +350 , 1, 7 );
changeAnime( spep_0-3 +354 , 1, 106 );
changeAnime( spep_0-3 +394 , 1, 6 );
changeAnime( spep_0-3 +406 , 1, 106 );
changeAnime( spep_0-3 +414 , 1, 107 );
changeAnime( spep_0-3 +426 , 1, 106 );
changeAnime( spep_0-3 +428 , 1, 5 );
changeAnime( spep_0-3 +450 , 1, 6 );
changeAnime( spep_0-3 +474 , 1, 7 );
changeAnime( spep_0-3 +498 , 1, 108 );
changeAnime( spep_0-3 +504 , 1, 106 );

setMoveKey( spep_0-3 + 78, 1, 983.4, -1619.9 , 0 );
setMoveKey( spep_0-3 + 80, 1, 982.3, -1618.5 , 0 );
setMoveKey( spep_0-3 + 82, 1, 978.7, -1613.8 , 0 );
setMoveKey( spep_0-3 + 84, 1, 971.8, -1604.6 , 0 );
setMoveKey( spep_0-3 + 86, 1, 960.5, -1589.9 , 0 );
setMoveKey( spep_0-3 + 88, 1, 944, -1568.2 , 0 );
setMoveKey( spep_0-3 + 90, 1, 920.7, -1537.7 , 0 );
setMoveKey( spep_0-3 + 92, 1, 889.1, -1496.2 , 0 );
setMoveKey( spep_0-3 + 94, 1, 846.8, -1440.7 , 0 );
setMoveKey( spep_0-3 + 96, 1, 790.7, -1367 , 0 );
setMoveKey( spep_0-3 + 98, 1, 715.8, -1268.7 , 0 );
setMoveKey( spep_0-3 + 100, 1, 614.1, -1135.3 , 0 );
setMoveKey( spep_0-3 + 102, 1, 470.6, -946.9 , 0 );
setMoveKey( spep_0-3 + 104, 1, 308.3, -733.9 , 0 );
setMoveKey( spep_0-3 + 106, 1, 230.4, -631.7 , 0 );
setMoveKey( spep_0-3 + 108, 1, 194.4, -584.4 , 0 );
setMoveKey( spep_0-3 + 110, 1, 179.9, -565.4 , 0 );
setMoveKey( spep_0-3 + 112, 1, 176.8, -561.2 , 0 );
setMoveKey( spep_0-3 + 113, 1, 176.8, -561.2 , 0 );

setMoveKey( spep_0-3 + 114, 1, 19.7, -722.3 , 0 );
setMoveKey( spep_0-3 + 116, 1, 48.9, -639.2 , 0 );
setMoveKey( spep_0-3 + 118, 1, 55, -708.5 , 0 );
setMoveKey( spep_0-3 + 120, 1, 38.9, -580.2 , 0 );
setMoveKey( spep_0-3 + 122, 1, 51.8, -643.3 , 0 );
setMoveKey( spep_0-3 + 124, 1, 63.6, -628.5 , 0 );
setMoveKey( spep_0-3 + 126, 1, 101.3, -682.1 , 0 );
setMoveKey( spep_0-3 + 128, 1, 371, -787 , 0 );
setMoveKey( spep_0-3 + 130, 1, 605, -916.7 , 0 );
setMoveKey( spep_0-3 + 132, 1, 727.7, -973.9 , 0 );
setMoveKey( spep_0-3 + 134, 1, 762.3, -990.2 , 0 );
setMoveKey( spep_0-3 + 137, 1, 769.6, -993.4 , 0 );

setMoveKey( spep_0-3 + 138, 1, -396.4, 127.4 , 0 );
setMoveKey( spep_0-3 + 140, 1, -396.4, 127.4 , 0 );
setMoveKey( spep_0-3 + 142, 1, -395.5, 127.1 , 0 );
setMoveKey( spep_0-3 + 144, 1, -392.4, 126.2 , 0 );
setMoveKey( spep_0-3 + 146, 1, -386.4, 124.6 , 0 );
setMoveKey( spep_0-3 + 148, 1, -376, 121.6 , 0 );
setMoveKey( spep_0-3 + 150, 1, -359.1, 116.9 , 0 );
setMoveKey( spep_0-3 + 152, 1, -331.7, 109.3 , 0 );
setMoveKey( spep_0-3 + 154, 1, -281.8, 95.3 , 0 );
setMoveKey( spep_0-3 + 156, 1, -113.2, 48.2 , 0 );
setMoveKey( spep_0-3 + 157, 1, -113.2, 48.2 , 0 );

setMoveKey( spep_0-3 + 158, 1, -70.9, 86.2 , 0 );
setMoveKey( spep_0-3 + 160, 1, 6.9, 38.1 , 0 );
setMoveKey( spep_0-3 + 162, 1, 11.9, 38.1 , 0 );
setMoveKey( spep_0-3 + 164, 1, -77.2, 76.5 , 0 );
setMoveKey( spep_0-3 + 166, 1, -0.6, 38.1 , 0 );
setMoveKey( spep_0-3 + 168, 1, -11.3, 41.3 , 0 );
setMoveKey( spep_0-3 + 170, 1, -128, 95.5 , 0 );
setMoveKey( spep_0-3 + 172, 1, -153.3, 106.7 , 0 );
setMoveKey( spep_0-3 + 174, 1, -245.3, 126 , 0 );
setMoveKey( spep_0-3 + 176, 1, -323.7, 141.1 , 0 );
setMoveKey( spep_0-3 + 178, 1, -362.6, 148.7 , 0 );
setMoveKey( spep_0-3 + 180, 1, -385, 153 , 0 );
setMoveKey( spep_0-3 + 182, 1, -398.4, 155.6 , 0 );
setMoveKey( spep_0-3 + 184, 1, -406.3, 157.1 , 0 );
setMoveKey( spep_0-3 + 186, 1, -410.6, 157.9 , 0 );
setMoveKey( spep_0-3 + 188, 1, -412.7, 158.3 , 0 );
setMoveKey( spep_0-3 + 190, 1, -413.2, 158.4 , 0 );
setMoveKey( spep_0-3 + 191, 1, -413.2, 158.4 , 0 );

setMoveKey( spep_0-3 + 192, 1, 734.3, 298.9 , 0 );
setMoveKey( spep_0-3 + 194, 1, 734.3, 298.8 , 0 );
setMoveKey( spep_0-3 + 195, 1, 734.3, 298.8 , 0 );
setMoveKey( spep_0-3 + 196, 1, -185.1, 598.7 , 0 );
setMoveKey( spep_0-3 + 197, 1, -185.1, 598.7 , 0 );
setMoveKey( spep_0-3 + 198, 1, -170.5, 585.7 , 0 );
setMoveKey( spep_0-3 + 199, 1, -170.5, 585.7 , 0 );
setMoveKey( spep_0-3 + 200, 1, -283.5, 597.2 , 0 );
setMoveKey( spep_0-3 + 201, 1, -283.5, 597.2 , 0 );
setMoveKey( spep_0-3 + 202, 1, -292.6, 580.4 , 0 );
setMoveKey( spep_0-3 + 203, 1, -292.6, 580.4 , 0 );
setMoveKey( spep_0-3 + 204, 1, -305.7, 596.6 , 0 );
setMoveKey( spep_0-3 + 205, 1, -305.7, 596.6 , 0 );
setMoveKey( spep_0-3 + 206, 1, -322.2, 596 , 0 );
setMoveKey( spep_0-3 + 207, 1, -322.2, 596 , 0 );
setMoveKey( spep_0-3 + 208, 1, -339.5, 588.1 , 0 );
setMoveKey( spep_0-3 + 209, 1, -339.5, 588.1 , 0 );
setMoveKey( spep_0-3 + 210, 1, -344, 588.2 , 0 );
setMoveKey( spep_0-3 + 213, 1, -344, 588.2 , 0 );

setMoveKey( spep_0-3 + 214, 1, -22.7, 447.9 , 0 );
setMoveKey( spep_0-3 + 215, 1, -22.7, 447.9 , 0 );
setMoveKey( spep_0-3 + 216, 1, -22.7, 446.9 , 0 );
setMoveKey( spep_0-3 + 217, 1, -22.7, 446.9 , 0 );
setMoveKey( spep_0-3 + 218, 1, -147.2, 345.4 , 0 );
setMoveKey( spep_0-3 + 219, 1, -147.2, 345.4 , 0 );
setMoveKey( spep_0-3 + 220, 1, -146.8, 344.6 , 0 );
setMoveKey( spep_0-3 + 221, 1, -146.8, 344.6 , 0 );
setMoveKey( spep_0-3 + 222, 1, -229.8, 270.6 , 0 );
setMoveKey( spep_0-3 + 223, 1, -229.8, 270.6 , 0 );
setMoveKey( spep_0-3 + 224, 1, -229.1, 269.8 , 0 );
setMoveKey( spep_0-3 + 225, 1, -229.1, 269.8 , 0 );
setMoveKey( spep_0-3 + 226, 1, -228.3, 268.9 , 0 );
setMoveKey( spep_0-3 + 227, 1, -228.3, 268.9 , 0 );
setMoveKey( spep_0-3 + 228, 1, -131.2, -326.1 , 0 );
setMoveKey( spep_0-3 + 229, 1, -131.2, -326.1 , 0 );
setMoveKey( spep_0-3 + 230, 1, -130.6, -324.8 , 0 );
setMoveKey( spep_0-3 + 231, 1, -130.6, -324.8 , 0 );
setMoveKey( spep_0-3 + 232, 1, 393.9, 39.6 , 0 );
setMoveKey( spep_0-3 + 233, 1, 393.9, 39.6 , 0 );
setMoveKey( spep_0-3 + 234, 1, 392.4, 39.5 , 0 );
setMoveKey( spep_0-3 + 235, 1, 392.4, 39.5 , 0 );
setMoveKey( spep_0-3 + 236, 1, 390.8, 39.3 , 0 );
setMoveKey( spep_0-3 + 237, 1, 390.8, 39.3 , 0 );
setMoveKey( spep_0-3 + 238, 1, 31.2, 442 , 0 );
setMoveKey( spep_0-3 + 239, 1, 31.2, 442 , 0 );
setMoveKey( spep_0-3 + 240, 1, 31.1, 439.9 , 0 );
setMoveKey( spep_0-3 + 241, 1, 31.1, 439.9 , 0 );
setMoveKey( spep_0-3 + 242, 1, -336.5, 171 , 0 );
setMoveKey( spep_0-3 + 243, 1, -336.5, 171 , 0 );
setMoveKey( spep_0-3 + 244, 1, -334.7, 170.1 , 0 );
setMoveKey( spep_0-3 + 245, 1, -334.7, 170.1 , 0 );
setMoveKey( spep_0-3 + 246, 1, -332.8, 169.2 , 0 );
setMoveKey( spep_0-3 + 251, 1, -332.8, 169.2 , 0 );

setMoveKey( spep_0-3 + 252, 1, 384.9, -81.5 , 0 );
setMoveKey( spep_0-3 + 253, 1, 384.9, -81.5 , 0 );
setMoveKey( spep_0-3 + 254, 1, 382.5, -81 , 0 );
setMoveKey( spep_0-3 + 255, 1, 382.5, -81 , 0 );
setMoveKey( spep_0-3 + 256, 1, 380.1, -80.4 , 0 );
setMoveKey( spep_0-3 + 257, 1, 380.1, -80.4 , 0 );
setMoveKey( spep_0-3 + 258, 1, 30.8, 408.4 , 0 );
setMoveKey( spep_0-3 + 259, 1, 30.8, 408.4 , 0 );
setMoveKey( spep_0-3 + 260, 1, 30.7, 405.5 , 0 );
setMoveKey( spep_0-3 + 261, 1, 30.7, 405.5 , 0 );
setMoveKey( spep_0-3 + 262, 1, 30.6, 402.4 , 0 );
setMoveKey( spep_0-3 + 263, 1, 30.6, 402.4 , 0 );

setMoveKey( spep_0-3 + 264, 1, 5.6, -247.4 , 0 );
setMoveKey( spep_0-3 + 267, 1, 5.8, -245.4 , 0 );

setMoveKey( spep_0-3 + 268, 1, -233.6, 317.9 , 0 );
setMoveKey( spep_0-3 + 269, 1, -233.6, 317.9 , 0 );
setMoveKey( spep_0-3 + 270, 1, -231.3, 315.2 , 0 );
setMoveKey( spep_0-3 + 271, 1, -231.3, 315.2 , 0 );
setMoveKey( spep_0-3 + 272, 1, -231.4, 313.4 , 0 );
setMoveKey( spep_0-3 + 273, 1, -231.4, 313.4 , 0 );

setMoveKey( spep_0-3 + 274, 1, -46.9, -217.1 , 0 );
setMoveKey( spep_0-3 + 277, 1, -47.8, -210.3 , 0 );

setMoveKey( spep_0-3 + 278, 1, -256.3, 279.3 , 0 );
setMoveKey( spep_0-3 + 279, 1, -256.3, 279.3 , 0 );
setMoveKey( spep_0-3 + 280, 1, 284.3, 180.4 , 0 );
setMoveKey( spep_0-3 + 281, 1, 284.3, 180.4 , 0 );
setMoveKey( spep_0-3 + 282, 1, 286.7, 175.6 , 0 );
setMoveKey( spep_0-3 + 286, 1, 286.7, 175.6 , 0 );
setMoveKey( spep_0-3 + 287, 1, 286.7, 175.6 , 0 );

setMoveKey( spep_0-3 + 288, 1, -44.2, -199.1 , 0 );
setMoveKey( spep_0-3 + 289, 1, -44.2, -199.1 , 0 );

setMoveKey( spep_0-3 + 290, 1, -234, 264.3 , 0 );
setMoveKey( spep_0-3 + 291, 1, -234, 264.3 , 0 );
setMoveKey( spep_0-3 + 292, 1, -237.3, 261.9 , 0 );
setMoveKey( spep_0-3 + 299, 1, -237.3, 261.9 , 0 );

setMoveKey( spep_0-3 + 300, 1, -36.6, -180.5 , 0 );
setMoveKey( spep_0-3 + 301, 1, -36.6, -180.5 , 0 );
setMoveKey( spep_0-3 + 302, 1, -34.1, -181.7 , 0 );
setMoveKey( spep_0-3 + 303, 1, -34.1, -181.7 , 0 );

setMoveKey( spep_0-3 + 304, 1, -212.9, 240.2 , 0 );
setMoveKey( spep_0-3 + 305, 1, -212.9, 240.2 , 0 );
setMoveKey( spep_0-3 + 306, 1, 245.7, 148 , 0 );
setMoveKey( spep_0-3 + 313, 1, 245.7, 148 , 0 );

setMoveKey( spep_0-3 + 314, 1, -32.3, -160 , 0 );
setMoveKey( spep_0-3 + 315, 1, -32.3, -160 , 0 );

setMoveKey( spep_0-3 + 316, 1, -186.4, 210.5 , 0 );
setMoveKey( spep_0-3 + 317, 1, -186.4, 210.5 , 0 );
setMoveKey( spep_0-3 + 318, 1, 218.2, 136.8 , 0 );
setMoveKey( spep_0-3 + 325, 1, 218.2, 136.8 , 0 );

setMoveKey( spep_0-3 + 326, 1, -26.7, -140.9 , 0 );
setMoveKey( spep_0-3 + 327, 1, -26.7, -140.9 , 0 );

setMoveKey( spep_0-3 + 328, 1, -158.8, 182 , 0 );
setMoveKey( spep_0-3 + 329, 1, -158.8, 182 , 0 );
setMoveKey( spep_0-3 + 330, 1, 191.2, 116.9 , 0 );
setMoveKey( spep_0-3 + 331, 1, 191.2, 116.9 , 0 );
setMoveKey( spep_0-3 + 332, 1, 186.1, 107.8 , 0 );
setMoveKey( spep_0-3 + 337, 1, 186.1, 107.8 , 0 );

setMoveKey( spep_0-3 + 338, 1, -19.5, -116.7 , 0 );
setMoveKey( spep_0-3 + 339, 1, -19.5, -116.7 , 0 );

setMoveKey( spep_0-3 + 340, 1, -127.4, 149.8 , 0 );
setMoveKey( spep_0-3 + 341, 1, -127.4, 149.8 , 0 );
setMoveKey( spep_0-3 + 342, 1, -125.8, 148.2 , 0 );
setMoveKey( spep_0-3 + 343, 1, -125.8, 148.2 , 0 );
setMoveKey( spep_0-3 + 344, 1, 159.2, 89 , 0 );
setMoveKey( spep_0-3 + 349, 1, 159.2, 89 , 0 );

setMoveKey( spep_0-3 + 350, 1, -7.8, -91.4 , 0 );
setMoveKey( spep_0-3 + 351, 1, -7.8, -91.4 , 0 );
setMoveKey( spep_0-3 + 352, 1, -10, -90.8 , 0 );
setMoveKey( spep_0-3 + 353, 1, -10, -90.8 , 0 );

setMoveKey( spep_0-3 + 354, 1, -88.6, 116.2 , 0 );
setMoveKey( spep_0-3 + 393, 1, -88.6, 116.2 , 0 );

setMoveKey( spep_0-3 + 394, 1, -1416.8, -1197 , 0 );
setMoveKey( spep_0-3 + 396, 1, -1426.5, -1224.6 , 0 );
setMoveKey( spep_0-3 + 398, 1, -1455.5, -1307.5 , 0 );
setMoveKey( spep_0-3 + 400, 1, -1503.9, -1444.9 , 0 );
setMoveKey( spep_0-3 + 402, 1, -1360.3, -1381.8 , 0 );
setMoveKey( spep_0-3 + 404, 1, -1084.8, -1260.4 , 0 );
setMoveKey( spep_0-3 + 405, 1, -1084.8, -1260.4 , 0 );

setMoveKey( spep_0-3 + 406, 1, 1023.5, -940.3 , 0 );
setMoveKey( spep_0-3 + 408, 1, 966.2, -954.1 , 0 );
setMoveKey( spep_0-3 + 410, 1, 856.2, -980.5 , 0 );
setMoveKey( spep_0-3 + 412, 1, 680.2, -1023.5 , 0 );
setMoveKey( spep_0-3 + 413, 1, 680.2, -1023.5 , 0 );

setMoveKey( spep_0-3 + 414, 1, -423.9, 233.7 , 0 );
setMoveKey( spep_0-3 + 416, 1, -653.8, 389.7 , 0 );
setMoveKey( spep_0-3 + 418, 1, -653.8, 389.6 , 0 );
setMoveKey( spep_0-3 + 420, 1, -199.3, -156 , 0 );
setMoveKey( spep_0-3 + 422, 1, -63, -144.1 , 0 );
setMoveKey( spep_0-3 + 424, 1, 73.4, -132.4 , 0 );
setMoveKey( spep_0-3 + 425, 1, 73.4, -132.4 , 0 );

setMoveKey( spep_0-3 + 426, 1, 95.3, 113 , 0 );
setMoveKey( spep_0-3 + 427, 1, 95.3, 113 , 0 );

setMoveKey( spep_0-3 + 428, 1, 104.3, -56.8 , 0 );
setMoveKey( spep_0-3 + 430, 1, 104.5, -56.9 , 0 );
setMoveKey( spep_0-3 + 432, 1, 104.6, -56.9 , 0 );
setMoveKey( spep_0-3 + 434, 1, 104.6, -57 , 0 );
setMoveKey( spep_0-3 + 438, 1, 104.6, -57 , 0 );
setMoveKey( spep_0-3 + 440, 1, 104.7, -57.1 , 0 );
setMoveKey( spep_0-3 + 446, 1, 104.7, -57.1 , 0 );
setMoveKey( spep_0-3 + 448, 1, 104.7, -57.2 , 0 );
setMoveKey( spep_0-3 + 449, 1, 104.7, -57.2 , 0 );

setMoveKey( spep_0-3 + 450, 1, 346.1, 350.4 , 0 );
setMoveKey( spep_0-3 + 452, 1, 87.1, 182.6 , 0 );
setMoveKey( spep_0-3 + 454, 1, 47.1, 156.6 , 0 );
setMoveKey( spep_0-3 + 456, 1, 28.6, 144.6 , 0 );
setMoveKey( spep_0-3 + 458, 1, 18.5, 138 , 0 );
setMoveKey( spep_0-3 + 460, 1, 12.4, 134 , 0 );
setMoveKey( spep_0-3 + 462, 1, 8.5, 131.5 , 0 );
setMoveKey( spep_0-3 + 464, 1, 5.7, 129.7 , 0 );
setMoveKey( spep_0-3 + 466, 1, 3.7, 128.3 , 0 );
setMoveKey( spep_0-3 + 468, 1, 1.9, 127.1 , 0 );
setMoveKey( spep_0-3 + 470, 1, 0.2, 126 , 0 );
setMoveKey( spep_0-3 + 472, 1, -1.5, 124.8 , 0 );
setMoveKey( spep_0-3 + 473, 1, -1.5, 124.8 , 0 );

setMoveKey( spep_0-3 + 474, 1, 30.1, -3.8 , 0 );
setMoveKey( spep_0-3 + 476, 1, 29.8, -3.5 , 0 );
setMoveKey( spep_0-3 + 478, 1, 29.3, -3.1 , 0 );
setMoveKey( spep_0-3 + 480, 1, 28.7, -2.5 , 0 );
setMoveKey( spep_0-3 + 482, 1, 27.8, -1.6 , 0 );
setMoveKey( spep_0-3 + 484, 1, 26.5, -0.3 , 0 );
setMoveKey( spep_0-3 + 486, 1, 24.4, 1.8 , 0 );
setMoveKey( spep_0-3 + 488, 1, 21, 5.2 , 0 );
setMoveKey( spep_0-3 + 490, 1, 14.2, 11.9 , 0 );
setMoveKey( spep_0-3 + 492, 1, -6.4, 32.7 , 0 );
setMoveKey( spep_0-3 + 494, 1, -19.2, 45.5 , 0 );
setMoveKey( spep_0-3 + 496, 1, -23, 48.4 , 0 );
setMoveKey( spep_0-3 + 497, 1, -23, 48.4 , 0 );

setMoveKey( spep_0-3 + 498, 1, 136.4, 145.3 , 0 );
setMoveKey( spep_0-3 + 500, 1, 52.7, 88.7 , 0 );
setMoveKey( spep_0-3 + 502, 1, 118.8, 144.7 , 0 );
setMoveKey( spep_0-3 + 503, 1, 118.8, 144.7 , 0 );

setMoveKey( spep_0-3 + 504, 1, 274.5, 307.6 , 0 );
setMoveKey( spep_0-3 + 506, 1, 281, 331.8 , 0 );
setMoveKey( spep_0-3 + 508, 1, 324.7, 349.2 , 0 );
setMoveKey( spep_0-3 + 510, 1, 312.3, 373.4 , 0 );
setMoveKey( spep_0-3 + 512, 1, 349, 401 , 0 );
setMoveKey( spep_0-3 + 514, 1, 332.1, 427.2 , 0 );
setMoveKey( spep_0-3 + 516, 1, 345.2, 420.8 , 0 );
setMoveKey( spep_0-3 + 518, 1, 349.2, 425.1 , 0 );
setMoveKey( spep_0-3 + 520, 1, 352.2, 428.3 , 0 );
setMoveKey( spep_0-3 + 522, 1, 354.2, 430.5 , 0 );
setMoveKey( spep_0-3 + 524, 1, 355.8, 432.1 , 0 );
setMoveKey( spep_0-3 + 526, 1, 356.8, 433.2 , 0 );
setMoveKey( spep_0-3 + 528, 1, 357.5, 433.9 , 0 );
setMoveKey( spep_0-3 + 530, 1, 357.9, 434.4 , 0 );
setMoveKey( spep_0-3 + 532, 1, 358.2, 434.7 , 0 );
setMoveKey( spep_0-3 + 534, 1, 358.3, 434.9 , 0 );
setMoveKey( spep_0-3 + 536, 1, 358.4, 435 , 0 );
setMoveKey( spep_0-3 + 538, 1, 358.5, 435.1 , 0 );
setMoveKey( spep_0-1 + 540, 1, 358.3, 434.8 , 0 );



setScaleKey( spep_0-3 + 78, 1, 6.3, 6.3 );
setScaleKey( spep_0-3 + 113, 1, 6.3, 6.3 );

setScaleKey( spep_0-3 + 114, 1, 2.48, 2.48 );
setScaleKey( spep_0-3 + 116, 1, 2.46, 2.46 );
setScaleKey( spep_0-3 + 118, 1, 2.44, 2.44 );
setScaleKey( spep_0-3 + 120, 1, 2.46, 2.46 );
setScaleKey( spep_0-3 + 122, 1, 2.48, 2.48 );
setScaleKey( spep_0-3 + 124, 1, 2.53, 2.53 );
setScaleKey( spep_0-3 + 126, 1, 2.62, 2.62 );
setScaleKey( spep_0-3 + 128, 1, 3.11, 3.11 );
setScaleKey( spep_0-3 + 130, 1, 3.58, 3.58 );
setScaleKey( spep_0-3 + 132, 1, 3.76, 3.76 );
setScaleKey( spep_0-3 + 134, 1, 3.83, 3.83 );
setScaleKey( spep_0-3 + 136, 1, 3.85, 3.85 );
setScaleKey( spep_0-3 + 137, 1, 3.85, 3.85 );

setScaleKey( spep_0-3 + 138, 1, 0.08, 0.08 );
setScaleKey( spep_0-3 + 140, 1, 0.08, 0.08 );
setScaleKey( spep_0-3 + 142, 1, 0.09, 0.09 );
setScaleKey( spep_0-3 + 144, 1, 0.09, 0.09 );
setScaleKey( spep_0-3 + 146, 1, 0.1, 0.1 );
setScaleKey( spep_0-3 + 148, 1, 0.11, 0.11 );
setScaleKey( spep_0-3 + 150, 1, 0.13, 0.13 );
setScaleKey( spep_0-3 + 152, 1, 0.16, 0.16 );
setScaleKey( spep_0-3 + 154, 1, 0.22, 0.22 );
setScaleKey( spep_0-3 + 156, 1, 0.43, 0.43 );
setScaleKey( spep_0-3 + 157, 1, 0.43, 0.43 );

setScaleKey( spep_0-3 + 158, 1, 1.32, 1.32 );
setScaleKey( spep_0-3 + 160, 1, 1.16, 1.16 );
setScaleKey( spep_0-3 + 162, 1, 1.16, 1.16 );
setScaleKey( spep_0-3 + 164, 1, 1.21, 1.21 );
setScaleKey( spep_0-3 + 166, 1, 1.16, 1.16 );
setScaleKey( spep_0-3 + 170, 1, 1.16, 1.16 );
setScaleKey( spep_0-3 + 172, 1, 1.07, 1.07 );
setScaleKey( spep_0-3 + 174, 1, 0.7, 0.7 );
setScaleKey( spep_0-3 + 176, 1, 0.45, 0.45 );
setScaleKey( spep_0-3 + 178, 1, 0.32, 0.32 );
setScaleKey( spep_0-3 + 180, 1, 0.25, 0.25 );
setScaleKey( spep_0-3 + 182, 1, 0.21, 0.21 );
setScaleKey( spep_0-3 + 184, 1, 0.18, 0.18 );
setScaleKey( spep_0-3 + 186, 1, 0.17, 0.17 );
setScaleKey( spep_0-3 + 188, 1, 0.16, 0.16 );
setScaleKey( spep_0-3 + 191, 1, 0.16, 0.16 );

setScaleKey( spep_0-3 + 192, 1, 10.5, 10.5 );
setScaleKey( spep_0-3 + 213, 1, 10.5, 10.5 );

setScaleKey( spep_0-3 + 214, 1, 2.2, 2.2 );
setScaleKey( spep_0-3 + 216, 1, 2.2, 2.2 );
setScaleKey( spep_0-3 + 217, 1, 2.2, 2.2 );
setScaleKey( spep_0-3 + 218, 1, 2.19, 2.19 );
setScaleKey( spep_0-3 + 219, 1, 2.19, 2.19 );
setScaleKey( spep_0-3 + 220, 1, 2.19, 2.19 );
setScaleKey( spep_0-3 + 221, 1, 2.19, 2.19 );
setScaleKey( spep_0-3 + 222, 1, 2.18, 2.18 );
setScaleKey( spep_0-3 + 223, 1, 2.18, 2.18 );
setScaleKey( spep_0-3 + 224, 1, 2.18, 2.18 );
setScaleKey( spep_0-3 + 225, 1, 2.18, 2.18 );
setScaleKey( spep_0-3 + 226, 1, 2.17, 2.17 );
setScaleKey( spep_0-3 + 227, 1, 2.17, 2.17 );
setScaleKey( spep_0-3 + 228, 1, 2.16, 2.16 );
setScaleKey( spep_0-3 + 229, 1, 2.16, 2.16 );
setScaleKey( spep_0-3 + 230, 1, 2.15, 2.15 );
setScaleKey( spep_0-3 + 231, 1, 2.15, 2.15 );
setScaleKey( spep_0-3 + 232, 1, 2.15, 2.15 );
setScaleKey( spep_0-3 + 233, 1, 2.15, 2.15 );
setScaleKey( spep_0-3 + 234, 1, 2.14, 2.14 );
setScaleKey( spep_0-3 + 235, 1, 2.14, 2.14 );
setScaleKey( spep_0-3 + 236, 1, 2.13, 2.13 );
setScaleKey( spep_0-3 + 237, 1, 2.13, 2.13 );
setScaleKey( spep_0-3 + 238, 1, 2.12, 2.12 );
setScaleKey( spep_0-3 + 239, 1, 2.12, 2.12 );
setScaleKey( spep_0-3 + 240, 1, 2.11, 2.11 );
setScaleKey( spep_0-3 + 241, 1, 2.11, 2.11 );
setScaleKey( spep_0-3 + 242, 1, 2.1, 2.1 );
setScaleKey( spep_0-3 + 243, 1, 2.1, 2.1 );
setScaleKey( spep_0-3 + 244, 1, 2.09, 2.09 );
setScaleKey( spep_0-3 + 245, 1, 2.09, 2.09 );
setScaleKey( spep_0-3 + 246, 1, 2.08, 2.08 );
setScaleKey( spep_0-3 + 251, 1, 2.08, 2.08 );

setScaleKey( spep_0-3 + 252, 1, 2.04, 2.04 );
setScaleKey( spep_0-3 + 253, 1, 2.04, 2.04 );
setScaleKey( spep_0-3 + 254, 1, 2.03, 2.03 );
setScaleKey( spep_0-3 + 255, 1, 2.03, 2.03 );
setScaleKey( spep_0-3 + 256, 1, 2.01, 2.01 );
setScaleKey( spep_0-3 + 257, 1, 2.01, 2.01 );
setScaleKey( spep_0-3 + 258, 1, 2, 2 );
setScaleKey( spep_0-3 + 259, 1, 2, 2 );
setScaleKey( spep_0-3 + 260, 1, 1.98, 1.98 );
setScaleKey( spep_0-3 + 261, 1, 1.98, 1.98 );
setScaleKey( spep_0-3 + 262, 1, 1.97, 1.97 );
setScaleKey( spep_0-3 + 263, 1, 1.97, 1.97 );

setScaleKey( spep_0-3 + 264, 1, 0.84, 0.84 );
setScaleKey( spep_0-3 + 265, 1, 0.84, 0.84 );
setScaleKey( spep_0-3 + 266, 1, 0.83, 0.83 );
setScaleKey( spep_0-3 + 267, 1, 0.83, 0.83 );

setScaleKey( spep_0-3 + 268, 1, 1.92, 1.92 );
setScaleKey( spep_0-3 + 269, 1, 1.92, 1.92 );
setScaleKey( spep_0-3 + 270, 1, 1.91, 1.91 );
setScaleKey( spep_0-3 + 271, 1, 1.91, 1.91 );
setScaleKey( spep_0-3 + 272, 1, 1.89, 1.89 );
setScaleKey( spep_0-3 + 273, 1, 1.89, 1.89 );

setScaleKey( spep_0-3 + 274, 1, 0.8, 0.8 );
setScaleKey( spep_0-3 + 275, 1, 0.8, 0.8 );
setScaleKey( spep_0-3 + 276, 1, 0.79, 0.79 );
setScaleKey( spep_0-3 + 277, 1, 0.79, 0.79 );

setScaleKey( spep_0-3 + 278, 1, 1.83, 1.83 );
setScaleKey( spep_0-3 + 279, 1, 1.83, 1.83 );
setScaleKey( spep_0-3 + 280, 1, 1.81, 1.81 );
setScaleKey( spep_0-3 + 281, 1, 1.81, 1.81 );
setScaleKey( spep_0-3 + 282, 1, 1.79, 1.79 );
setScaleKey( spep_0-3 + 287, 1, 1.79, 1.79 );

setScaleKey( spep_0-3 + 288, 1, 0.74, 0.74 );
setScaleKey( spep_0-3 + 289, 1, 0.74, 0.74 );

setScaleKey( spep_0-3 + 290, 1, 1.71, 1.71 );
setScaleKey( spep_0-3 + 291, 1, 1.71, 1.71 );
setScaleKey( spep_0-3 + 292, 1, 1.69, 1.69 );
setScaleKey( spep_0-3 + 299, 1, 1.69, 1.69 );

setScaleKey( spep_0-3 + 300, 1, 0.68, 0.68 );
setScaleKey( spep_0-3 + 301, 1, 0.68, 0.68 );
setScaleKey( spep_0-3 + 302, 1, 0.67, 0.67 );
setScaleKey( spep_0-3 + 303, 1, 0.67, 0.67 );

setScaleKey( spep_0-3 + 304, 1, 1.54, 1.54 );
setScaleKey( spep_0-3 + 305, 1, 1.54, 1.54 );
setScaleKey( spep_0-3 + 306, 1, 1.52, 1.52 );
setScaleKey( spep_0-3 + 313, 1, 1.52, 1.52 );

setScaleKey( spep_0-3 + 314, 1, 0.6, 0.6 );
setScaleKey( spep_0-3 + 315, 1, 0.6, 0.6 );

setScaleKey( spep_0-3 + 316, 1, 1.38, 1.38 );
setScaleKey( spep_0-3 + 317, 1, 1.38, 1.38 );
setScaleKey( spep_0-3 + 318, 1, 1.35, 1.35 );
setScaleKey( spep_0-3 + 324, 1, 1.35, 1.35 );

setScaleKey( spep_0-3 + 326, 1, 0.53, 0.53 );
setScaleKey( spep_0-3 + 327, 1, 0.53, 0.53 );

setScaleKey( spep_0-3 + 328, 1, 1.2, 1.2 );
setScaleKey( spep_0-3 + 329, 1, 1.2, 1.2 );
setScaleKey( spep_0-3 + 330, 1, 1.17, 1.17 );
setScaleKey( spep_0-3 + 331, 1, 1.17, 1.17 );
setScaleKey( spep_0-3 + 332, 1, 1.13, 1.13 );
setScaleKey( spep_0-3 + 337, 1, 1.13, 1.13 );

setScaleKey( spep_0-3 + 338, 1, 0.44, 0.44 );
setScaleKey( spep_0-3 + 339, 1, 0.44, 0.44 );

setScaleKey( spep_0-3 + 340, 1, 1, 1 );
setScaleKey( spep_0-3 + 341, 1, 1, 1 );
setScaleKey( spep_0-3 + 342, 1, 0.96, 0.96 );
setScaleKey( spep_0-3 + 343, 1, 0.96, 0.96 );
setScaleKey( spep_0-3 + 344, 1, 0.92, 0.92 );
setScaleKey( spep_0-3 + 349, 1, 0.92, 0.92 );

setScaleKey( spep_0-3 + 350, 1, 0.35, 0.35 );
setScaleKey( spep_0-3 + 351, 1, 0.35, 0.35 );
setScaleKey( spep_0-3 + 352, 1, 0.33, 0.33 );
setScaleKey( spep_0-3 + 353, 1, 0.33, 0.33 );

setScaleKey( spep_0-3 + 354, 1, 0.74, 0.74 );
setScaleKey( spep_0-3 + 393, 1, 0.74, 0.74 );

setScaleKey( spep_0-3 + 394, 1, 9.42, 9.42 );
setScaleKey( spep_0-3 + 396, 1, 9.77, 9.77 );
setScaleKey( spep_0-3 + 398, 1, 10.82, 10.82 );
setScaleKey( spep_0-3 + 400, 1, 12.57, 12.57 );
setScaleKey( spep_0-3 + 402, 1, 12.57, 12.57 );
setScaleKey( spep_0-3 + 404, 1, 12.56, 12.56 );
setScaleKey( spep_0-3 + 405, 1, 12.56, 12.56 );

setScaleKey( spep_0-3 + 406, 1, 12.59, 12.59 );
setScaleKey( spep_0-3 + 408, 1, 12.87, 12.87 );
setScaleKey( spep_0-3 + 410, 1, 13.41, 13.41 );
setScaleKey( spep_0-3 + 412, 1, 14.27, 14.27 );
setScaleKey( spep_0-3 + 413, 1, 14.27, 14.27 );

setScaleKey( spep_0-3 + 414, 1, 4.2, 4.2 );
setScaleKey( spep_0-3 + 416, 1, 5.25, 5.25 );
setScaleKey( spep_0-3 + 418, 1, 5.25, 5.25 );
setScaleKey( spep_0-3 + 420, 1, 4.72, 4.72 );
setScaleKey( spep_0-3 + 422, 1, 4.2, 4.2 );
setScaleKey( spep_0-3 + 424, 1, 3.67, 3.67 );
setScaleKey( spep_0-3 + 425, 1, 3.67, 3.67 );

setScaleKey( spep_0-3 + 426, 1, 4.72, 4.72 );
setScaleKey( spep_0-3 + 427, 1, 4.72, 4.72 );

setScaleKey( spep_0-3 + 428, 1, 3.15, 3.15 );
setScaleKey( spep_0-3 + 430, 1, 1.94, 1.94 );
setScaleKey( spep_0-3 + 432, 1, 1.37, 1.37 );
setScaleKey( spep_0-3 + 434, 1, 1, 1 );
setScaleKey( spep_0-3 + 436, 1, 0.74, 0.74 );
setScaleKey( spep_0-3 + 438, 1, 0.54, 0.54 );
setScaleKey( spep_0-3 + 440, 1, 0.4, 0.4 );
setScaleKey( spep_0-3 + 442, 1, 0.3, 0.3 );
setScaleKey( spep_0-3 + 444, 1, 0.23, 0.23 );
setScaleKey( spep_0-3 + 446, 1, 0.19, 0.19 );
setScaleKey( spep_0-3 + 448, 1, 0.16, 0.16 );
setScaleKey( spep_0-3 + 449, 1, 0.16, 0.16 );

setScaleKey( spep_0-3 + 450, 1, 1.37, 1.37 );
setScaleKey( spep_0-3 + 473, 1, 1.37, 1.37 );

setScaleKey( spep_0-3 + 474, 1, 0.08, 0.08 );
setScaleKey( spep_0-3 + 476, 1, 0.09, 0.09 );
setScaleKey( spep_0-3 + 478, 1, 0.09, 0.09 );
setScaleKey( spep_0-3 + 480, 1, 0.1, 0.1 );
setScaleKey( spep_0-3 + 482, 1, 0.1, 0.1 );
setScaleKey( spep_0-3 + 484, 1, 0.11, 0.11 );
setScaleKey( spep_0-3 + 486, 1, 0.13, 0.13 );
setScaleKey( spep_0-3 + 488, 1, 0.16, 0.16 );
setScaleKey( spep_0-3 + 490, 1, 0.22, 0.22 );
setScaleKey( spep_0-3 + 492, 1, 0.39, 0.39 );
setScaleKey( spep_0-3 + 494, 1, 0.5, 0.5 );
setScaleKey( spep_0-3 + 496, 1, 0.53, 0.53 );
setScaleKey( spep_0-3 + 497, 1, 0.53, 0.53 );

setScaleKey( spep_0-3 + 498, 1, 1.92, 1.92 );
setScaleKey( spep_0-3 + 500, 1, 1.66, 1.66 );
setScaleKey( spep_0-3 + 502, 1, 1.5, 1.5 );
setScaleKey( spep_0-3 + 503, 1, 1.5, 1.5 );

setScaleKey( spep_0-3 + 504, 1, 0.87, 0.87 );
setScaleKey( spep_0-3 + 506, 1, 0.6, 0.6 );
setScaleKey( spep_0-3 + 508, 1, 0.45, 0.45 );
setScaleKey( spep_0-3 + 510, 1, 0.35, 0.35 );
setScaleKey( spep_0-3 + 512, 1, 0.29, 0.29 );
setScaleKey( spep_0-3 + 514, 1, 0.24, 0.24 );
setScaleKey( spep_0-3 + 516, 1, 0.21, 0.21 );
setScaleKey( spep_0-3 + 518, 1, 0.19, 0.19 );
setScaleKey( spep_0-3 + 520, 1, 0.17, 0.17 );
setScaleKey( spep_0-3 + 522, 1, 0.16, 0.16 );
setScaleKey( spep_0-3 + 524, 1, 0.15, 0.15 );
setScaleKey( spep_0-3 + 526, 1, 0.14, 0.14 );
setScaleKey( spep_0-3 + 532, 1, 0.14, 0.14 );
setScaleKey( spep_0-3 + 534, 1, 0.13, 0.13 );
setScaleKey( spep_0-1 + 540, 1, 0.13, 0.13 );



setRotateKey( spep_0-3 + 78, 1, 0 );
setRotateKey( spep_0-3 + 113, 1, 0 );

setRotateKey( spep_0-3 + 114, 1, -80 );
setRotateKey( spep_0-3 + 116, 1, -79.8 );
setRotateKey( spep_0-3 + 118, 1, -79.7 );
setRotateKey( spep_0-3 + 120, 1, -79.4 );
setRotateKey( spep_0-3 + 122, 1, -79.1 );
setRotateKey( spep_0-3 + 124, 1, -78.5 );
setRotateKey( spep_0-3 + 126, 1, -77.1 );
setRotateKey( spep_0-3 + 128, 1, -70.3 );
setRotateKey( spep_0-3 + 130, 1, -63.8 );
setRotateKey( spep_0-3 + 132, 1, -61.2 );
setRotateKey( spep_0-3 + 134, 1, -60.2 );
setRotateKey( spep_0-3 + 136, 1, -60 );
setRotateKey( spep_0-3 + 137, 1, -60 );

setRotateKey( spep_0-3 + 138, 1, -20 );
setRotateKey( spep_0-3 + 157, 1, -20 );

setRotateKey( spep_0-3 + 158, 1, -40 );
setRotateKey( spep_0-3 + 191, 1, -40 );

setRotateKey( spep_0-3 + 192, 1, 80 );
setRotateKey( spep_0-3 + 194, 1, 80 );
setRotateKey( spep_0-3 + 195, 1, 80 );
setRotateKey( spep_0-3 + 196, 1, 25 );
setRotateKey( spep_0-3 + 198, 1, 25 );
setRotateKey( spep_0-3 + 199, 1, 25 );
setRotateKey( spep_0-3 + 200, 1, 20 );
setRotateKey( spep_0-3 + 201, 1, 20 );
setRotateKey( spep_0-3 + 202, 1, 19.8 );
setRotateKey( spep_0-3 + 203, 1, 19.8 );
setRotateKey( spep_0-3 + 204, 1, 19 );
setRotateKey( spep_0-3 + 205, 1, 19 );
setRotateKey( spep_0-3 + 206, 1, 18 );
setRotateKey( spep_0-3 + 207, 1, 18 );
setRotateKey( spep_0-3 + 208, 1, 17.2 );
setRotateKey( spep_0-3 + 209, 1, 17.2 );
setRotateKey( spep_0-3 + 210, 1, 17 );
setRotateKey( spep_0-3 + 213, 1, 17 );

setRotateKey( spep_0-3 + 214, 1, -30 );
setRotateKey( spep_0-3 + 216, 1, -30 );
setRotateKey( spep_0-3 + 217, 1, -30 );
setRotateKey( spep_0-3 + 218, 1, -40 );
setRotateKey( spep_0-3 + 220, 1, -40 );
setRotateKey( spep_0-3 + 221, 1, -40 );
setRotateKey( spep_0-3 + 222, 1, -75 );
setRotateKey( spep_0-3 + 226, 1, -75 );
setRotateKey( spep_0-3 + 227, 1, -75 );
setRotateKey( spep_0-3 + 228, 1, -170 );
setRotateKey( spep_0-3 + 230, 1, -170 );
setRotateKey( spep_0-3 + 231, 1, -170 );
setRotateKey( spep_0-3 + 232, 1, -315 );
setRotateKey( spep_0-3 + 236, 1, -315 );
setRotateKey( spep_0-3 + 237, 1, -315 );
setRotateKey( spep_0-3 + 238, 1, -395 );
setRotateKey( spep_0-3 + 240, 1, -395 );
setRotateKey( spep_0-3 + 241, 1, -395 );
setRotateKey( spep_0-3 + 242, 1, -460 );
setRotateKey( spep_0-3 + 246, 1, -460 );
setRotateKey( spep_0-3 + 251, 1, -460 );

setRotateKey( spep_0-3 + 252, 1, -300 );
setRotateKey( spep_0-3 + 256, 1, -300 );
setRotateKey( spep_0-3 + 257, 1, -300 );
setRotateKey( spep_0-3 + 258, 1, -395 );
setRotateKey( spep_0-3 + 262, 1, -395 );
setRotateKey( spep_0-3 + 263, 1, -395 );

setRotateKey( spep_0-3 + 264, 1, -389.2 );
setRotateKey( spep_0-3 + 266, 1, -389.2 );
setRotateKey( spep_0-3 + 267, 1, -389.2 );

setRotateKey( spep_0-3 + 268, 1, -450 );
setRotateKey( spep_0-3 + 272, 1, -450 );
setRotateKey( spep_0-3 + 273, 1, -450 );

setRotateKey( spep_0-3 + 274, 1, -360 );
setRotateKey( spep_0-3 + 276, 1, -360 );
setRotateKey( spep_0-3 + 277, 1, -360 );

setRotateKey( spep_0-3 + 278, 1, -450 );
setRotateKey( spep_0-3 + 279, 1, -450 );
setRotateKey( spep_0-3 + 280, 1, -345 );
setRotateKey( spep_0-3 + 282, 1, -345 );
setRotateKey( spep_0-3 + 287, 1, -345 );

setRotateKey( spep_0-3 + 288, 1, -360 );
setRotateKey( spep_0-3 + 289, 1, -360 );

setRotateKey( spep_0-3 + 290, 1, -450 );
setRotateKey( spep_0-3 + 299, 1, -450 );

setRotateKey( spep_0-3 + 300, 1, -360 );
setRotateKey( spep_0-3 + 303, 1, -360 );

setRotateKey( spep_0-3 + 304, 1, -450 );
setRotateKey( spep_0-3 + 305, 1, -450 );
setRotateKey( spep_0-3 + 306, 1, -345 );
setRotateKey( spep_0-3 + 313, 1, -345 );

setRotateKey( spep_0-3 + 314, 1, -360 );
setRotateKey( spep_0-3 + 315, 1, -360 );

setRotateKey( spep_0-3 + 316, 1, -450 );
setRotateKey( spep_0-3 + 317, 1, -450 );
setRotateKey( spep_0-3 + 318, 1, -345 );
setRotateKey( spep_0-3 + 325, 1, -345 );

setRotateKey( spep_0-3 + 326, 1, -360 );
setRotateKey( spep_0-3 + 327, 1, -360 );

setRotateKey( spep_0-3 + 328, 1, -450 );
setRotateKey( spep_0-3 + 329, 1, -450 );
setRotateKey( spep_0-3 + 330, 1, -345 );
setRotateKey( spep_0-3 + 332, 1, -345 );
setRotateKey( spep_0-3 + 337, 1, -345 );

setRotateKey( spep_0-3 + 338, 1, -360 );
setRotateKey( spep_0-3 + 339, 1, -360 );

setRotateKey( spep_0-3 + 340, 1, -450 );
setRotateKey( spep_0-3 + 342, 1, -450 );
setRotateKey( spep_0-3 + 343, 1, -450 );
setRotateKey( spep_0-3 + 344, 1, -345 );
setRotateKey( spep_0-3 + 349, 1, -345 );

setRotateKey( spep_0-3 + 350, 1, -360 );
setRotateKey( spep_0-3 + 353, 1, -360 );

setRotateKey( spep_0-3 + 354, 1, -450 );
setRotateKey( spep_0-3 + 393, 1, -450 );

setRotateKey( spep_0-3 + 394, 1, -60.1 );
setRotateKey( spep_0-3 + 396, 1, -61.2 );
setRotateKey( spep_0-3 + 398, 1, -64.6 );
setRotateKey( spep_0-3 + 400, 1, -70.2 );
setRotateKey( spep_0-3 + 405, 1, -70.2 );

setRotateKey( spep_0-3 + 406, 1, 55 );
setRotateKey( spep_0-3 + 408, 1, 57.5 );
setRotateKey( spep_0-3 + 410, 1, 62.3 );
setRotateKey( spep_0-3 + 412, 1, 70 );
setRotateKey( spep_0-3 + 413, 1, 70 );

setRotateKey( spep_0-3 + 414, 1, 15 );
setRotateKey( spep_0-3 + 416, 1, -5 );
setRotateKey( spep_0-3 + 418, 1, -5 );
setRotateKey( spep_0-3 + 420, 1, -75 );
setRotateKey( spep_0-3 + 422, 1, -82.5 );
setRotateKey( spep_0-3 + 424, 1, -90 );
setRotateKey( spep_0-3 + 425, 1, -90 );

setRotateKey( spep_0-3 + 426, 1, -15 );
setRotateKey( spep_0-3 + 427, 1, -15 );

setRotateKey( spep_0-3 + 428, 1, 50 );
setRotateKey( spep_0-3 + 449, 1, 50 );

setRotateKey( spep_0-3 + 450, 1, -75 );
setRotateKey( spep_0-3 + 473, 1, -75 );

setRotateKey( spep_0-3 + 474, 1, 40 );
setRotateKey( spep_0-3 + 497, 1, 40 );

setRotateKey( spep_0-3 + 498, 1, 0 );
setRotateKey( spep_0-3 + 500, 1, 0.2 );
setRotateKey( spep_0-3 + 502, 1, 2.1 );
setRotateKey( spep_0-3 + 503, 1, 2.1 );

setRotateKey( spep_0-3 + 504, 1, -22.7 );
setRotateKey( spep_0-3 + 506, 1, -20 );
setRotateKey( spep_0-3 + 508, 1, -18.4 );
setRotateKey( spep_0-3 + 510, 1, -17.4 );
setRotateKey( spep_0-3 + 512, 1, -16.7 );
setRotateKey( spep_0-3 + 514, 1, -16.2 );
setRotateKey( spep_0-3 + 516, 1, -15.9 );
setRotateKey( spep_0-3 + 518, 1, -15.6 );
setRotateKey( spep_0-3 + 520, 1, -15.4 );
setRotateKey( spep_0-3 + 522, 1, -15.3 );
setRotateKey( spep_0-3 + 524, 1, -15.2 );
setRotateKey( spep_0-3 + 526, 1, -15.1 );
setRotateKey( spep_0-3 + 528, 1, -15.1 );
setRotateKey( spep_0-3 + 530, 1, -15 );
setRotateKey( spep_0-1 + 540, 1, -15 );

--文字エントリー
ctga = entryEffectLife( spep_0-3 + 114,  10005, 22, 0x100, -1, 0, 138.4, -26.6 );--ガッ

setEffMoveKey( spep_0-3 + 114, ctga, 138.4, -26.6 , 0 );
setEffMoveKey( spep_0-3 + 116, ctga, 183.2, 94.9 , 0 );
setEffMoveKey( spep_0-3 + 118, ctga, 219.5, 137.9 , 0 );
setEffMoveKey( spep_0-3 + 120, ctga, 219.5, 173.5 , 0 );
setEffMoveKey( spep_0-3 + 122, ctga, 220, 182.8 , 0 );
setEffMoveKey( spep_0-3 + 124, ctga, 239.4, 170.4 , 0 );
setEffMoveKey( spep_0-3 + 126, ctga, 226.1, 194.3 , 0 );
setEffMoveKey( spep_0-3 + 128, ctga, 238.5, 177.5 , 0 );
setEffMoveKey( spep_0-3 + 130, ctga, 230, 218.9 , 0 );
setEffMoveKey( spep_0-3 + 132, ctga, 270.5, 235.3 , 0 );
setEffMoveKey( spep_0-3 + 134, ctga, 242.9, 246.7 , 0 );
setEffMoveKey( spep_0-3 + 136, ctga, 260.3, 242.3 , 0 );

setEffScaleKey( spep_0-3 + 114, ctga, 1.03, 1.03 );
setEffScaleKey( spep_0-3 + 116, ctga, 2.2, 2.19 );
setEffScaleKey( spep_0-3 + 118, ctga, 2.68, 2.67 );
setEffScaleKey( spep_0-3 + 120, ctga, 2.93, 2.91 );
setEffScaleKey( spep_0-3 + 122, ctga, 3.01, 3 );
setEffScaleKey( spep_0-3 + 124, ctga, 3.03, 3.02 );
setEffScaleKey( spep_0-3 + 126, ctga, 3.11, 3.09 );
setEffScaleKey( spep_0-3 + 128, ctga, 3.28, 3.26 );
setEffScaleKey( spep_0-3 + 130, ctga, 3.57, 3.55 );
setEffScaleKey( spep_0-3 + 132, ctga, 3.86, 3.84 );
setEffScaleKey( spep_0-3 + 134, ctga, 4.01, 3.99 );
setEffScaleKey( spep_0-3 + 136, ctga, 4.06, 4.04 );

setEffRotateKey( spep_0-3 + 114, ctga, 0 );
setEffRotateKey( spep_0-3 + 136, ctga, 0 );

setEffAlphaKey( spep_0-3 + 114, ctga, 255 );
setEffAlphaKey( spep_0-3 + 122, ctga, 255 );
setEffAlphaKey( spep_0-3 + 124, ctga, 251 );
setEffAlphaKey( spep_0-3 + 126, ctga, 234 );
setEffAlphaKey( spep_0-3 + 128, ctga, 197 );
setEffAlphaKey( spep_0-3 + 130, ctga, 134 );
setEffAlphaKey( spep_0-3 + 132, ctga, 70 );
setEffAlphaKey( spep_0-3 + 134, ctga, 37 );
setEffAlphaKey( spep_0-3 + 136, ctga, 26 );

--文字エントリー
ctaki = entryEffectLife( spep_0-3 + 160,  10020, 24, 0x100, -1, 0, -20.6, 99 );--バキッ

setEffMoveKey( spep_0-3 + 160, ctaki, -20.6, 99 , 0 );
setEffMoveKey( spep_0-3 + 162, ctaki, -69.6, 192.4 , 0 );
setEffMoveKey( spep_0-3 + 164, ctaki, -68.3, 204.8 , 0 );
setEffMoveKey( spep_0-3 + 166, ctaki, -72.3, 220.2 , 0 );
setEffMoveKey( spep_0-3 + 168, ctaki, -76.5, 208.5 , 0 );
setEffMoveKey( spep_0-3 + 170, ctaki, -81.6, 221.7 , 0 );
setEffMoveKey( spep_0-3 + 172, ctaki, -96.6, 237.8 , 0 );
setEffMoveKey( spep_0-3 + 174, ctaki, -102.5, 257.1 , 0 );
setEffMoveKey( spep_0-3 + 176, ctaki, -133.8, 285.7 , 0 );
setEffMoveKey( spep_0-3 + 178, ctaki, -125.9, 302.6 , 0 );
setEffMoveKey( spep_0-3 + 180, ctaki, -134.3, 292.1 , 0 );
setEffMoveKey( spep_0-3 + 182, ctaki, -138.2, 305.6 , 0 );
setEffMoveKey( spep_0-3 + 184, ctaki, -138.6, 306.4 , 0 );

setEffScaleKey( spep_0-3 + 160, ctaki, 0.7, 0.7 );
setEffScaleKey( spep_0-3 + 162, ctaki, 1.66, 1.66 );
setEffScaleKey( spep_0-3 + 164, ctaki, 1.87, 1.87 );
setEffScaleKey( spep_0-3 + 166, ctaki, 1.91, 1.91 );
setEffScaleKey( spep_0-3 + 168, ctaki, 1.92, 1.92 );
setEffScaleKey( spep_0-3 + 170, ctaki, 1.95, 1.95 );
setEffScaleKey( spep_0-3 + 172, ctaki, 2.04, 2.04 );
setEffScaleKey( spep_0-3 + 174, ctaki, 2.22, 2.22 );
setEffScaleKey( spep_0-3 + 176, ctaki, 2.35, 2.35 );
setEffScaleKey( spep_0-3 + 178, ctaki, 2.42, 2.42 );
setEffScaleKey( spep_0-3 + 180, ctaki, 2.45, 2.45 );
setEffScaleKey( spep_0-3 + 182, ctaki, 2.48, 2.48 );
setEffScaleKey( spep_0-3 + 184, ctaki, 2.49, 2.49 );

setEffRotateKey( spep_0-3 + 160, ctaki, -13.5 );
setEffRotateKey( spep_0-3 + 184, ctaki, -13.5 );

setEffAlphaKey( spep_0-3 + 160, ctaki, 255 );
setEffAlphaKey( spep_0-3 + 166, ctaki, 255 );
setEffAlphaKey( spep_0-3 + 168, ctaki, 251 );
setEffAlphaKey( spep_0-3 + 170, ctaki, 236 );
setEffAlphaKey( spep_0-3 + 172, ctaki, 195 );
setEffAlphaKey( spep_0-3 + 174, ctaki, 119 );
setEffAlphaKey( spep_0-3 + 176, ctaki, 62 );
setEffAlphaKey( spep_0-3 + 178, ctaki, 31 );
setEffAlphaKey( spep_0-3 + 180, ctaki, 14 );
setEffAlphaKey( spep_0-3 + 182, ctaki, 5 );
setEffAlphaKey( spep_0-3 + 184, ctaki, 0 );

--文字エントリー
ctba = entryEffectLife( spep_0-3 + 200,  10022, 12, 0x100, -1, 0, -93.9, 209.2 );

setEffMoveKey( spep_0-3 + 200, ctba, -93.9, 209.2 , 0 );
setEffMoveKey( spep_0-3 + 202, ctba, -71.3, 237.1 , 0 );
setEffMoveKey( spep_0-3 + 204, ctba, 39.9, 291 , 0 );
setEffMoveKey( spep_0-3 + 206, ctba, 24.9, 290.1 , 0 );
setEffMoveKey( spep_0-3 + 208, ctba, 51.4, 273.9 , 0 );
setEffMoveKey( spep_0-3 + 210, ctba, 83.6, 284.1 , 0 );
setEffMoveKey( spep_0-3 + 212, ctba, 99, 303.1 , 0 );

setEffScaleKey( spep_0-3 + 200, ctba, 1.75, 1.76 );
setEffScaleKey( spep_0-3 + 202, ctba, 2.15, 2.16 );
setEffScaleKey( spep_0-3 + 204, ctba, 3.34, 3.37 );
setEffScaleKey( spep_0-3 + 206, ctba, 3.46, 3.49 );
setEffScaleKey( spep_0-3 + 208, ctba, 3.57, 3.6 );
setEffScaleKey( spep_0-3 + 210, ctba, 3.69, 3.72 );
setEffScaleKey( spep_0-3 + 212, ctba, 3.8, 3.84 );

setEffRotateKey( spep_0-3 + 200, ctba, 0 );
setEffRotateKey( spep_0-3 + 212, ctba, 0 );

--文字エントリー
ctdon = entryEffectLife( spep_0-3 + 498,  10019, 28, 0x100, -1, 0, -18.5, 153.6 );

setEffMoveKey( spep_0-3 + 498, ctdon, -18.5, 153.6 , 0 );
setEffMoveKey( spep_0-3 + 500, ctdon, 8.1, 191.2 , 0 );
setEffMoveKey( spep_0-3 + 502, ctdon, 38.4, 205.5 , 0 );
setEffMoveKey( spep_0-3 + 504, ctdon, 37.9, 224.4 , 0 );
setEffMoveKey( spep_0-3 + 506, ctdon, 58.1, 220.4 , 0 );
setEffMoveKey( spep_0-3 + 508, ctdon, 45.5, 221.4 , 0 );
setEffMoveKey( spep_0-3 + 510, ctdon, 53.5, 231 , 0 );
setEffMoveKey( spep_0-3 + 512, ctdon, 54.7, 216.5 , 0 );
setEffMoveKey( spep_0-3 + 514, ctdon, 52, 235.1 , 0 );
setEffMoveKey( spep_0-3 + 516, ctdon, 63.9, 227.3 , 0 );
setEffMoveKey( spep_0-3 + 518, ctdon, 65.5, 240.1 , 0 );
setEffMoveKey( spep_0-3 + 520, ctdon, 81.1, 239.6 , 0 );
setEffMoveKey( spep_0-3 + 522, ctdon, 87.2, 253.8 , 0 );
setEffMoveKey( spep_0-3 + 524, ctdon, 88.3, 244.5 , 0 );
setEffMoveKey( spep_0-3 + 526, ctdon, 89.5, 244.9 , 0 );

setEffScaleKey( spep_0-3 + 498, ctdon, 1, 1 );
setEffScaleKey( spep_0-3 + 500, ctdon, 1.77, 1.77 );
setEffScaleKey( spep_0-3 + 502, ctdon, 2.13, 2.13 );
setEffScaleKey( spep_0-3 + 504, ctdon, 2.34, 2.34 );
setEffScaleKey( spep_0-3 + 506, ctdon, 2.46, 2.46 );
setEffScaleKey( spep_0-3 + 508, ctdon, 2.5, 2.5 );
setEffScaleKey( spep_0-3 + 510, ctdon, 2.5, 2.5 );
setEffScaleKey( spep_0-3 + 512, ctdon, 2.52, 2.52 );
setEffScaleKey( spep_0-3 + 514, ctdon, 2.55, 2.55 );
setEffScaleKey( spep_0-3 + 516, ctdon, 2.62, 2.62 );
setEffScaleKey( spep_0-3 + 518, ctdon, 2.76, 2.76 );
setEffScaleKey( spep_0-3 + 520, ctdon, 2.88, 2.88 );
setEffScaleKey( spep_0-3 + 522, ctdon, 2.96, 2.96 );
setEffScaleKey( spep_0-3 + 524, ctdon, 2.99, 2.99 );
setEffScaleKey( spep_0-3 + 526, ctdon, 3, 3 );

setEffRotateKey( spep_0-3 + 498, ctdon, -0.8 );
setEffRotateKey( spep_0-3 + 500, ctdon, -0.2 );
setEffRotateKey( spep_0-3 + 502, ctdon, 0 );
setEffRotateKey( spep_0-3 + 504, ctdon, 0.1 );
setEffRotateKey( spep_0-3 + 506, ctdon, 0.2 );
setEffRotateKey( spep_0-3 + 508, ctdon, 0.3 );
setEffRotateKey( spep_0-3 + 526, ctdon, 0.3 );

setEffAlphaKey( spep_0-3 + 498, ctdon, 255 );
setEffAlphaKey( spep_0-3 + 508, ctdon, 255 );
setEffAlphaKey( spep_0-3 + 510, ctdon, 253 );
setEffAlphaKey( spep_0-3 + 512, ctdon, 247 );
setEffAlphaKey( spep_0-3 + 514, ctdon, 231 );
setEffAlphaKey( spep_0-3 + 516, ctdon, 195 );
setEffAlphaKey( spep_0-3 + 518, ctdon, 124 );
setEffAlphaKey( spep_0-3 + 520, ctdon, 59 );
setEffAlphaKey( spep_0-3 + 522, ctdon, 22 );
setEffAlphaKey( spep_0-3 + 524, ctdon, 6 );
setEffAlphaKey( spep_0-3 + 526, ctdon, 0 );


-- ** 顔カットイン ** --
speff = entryEffect( spep_0 + 550  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0 + 550  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_0 +562, 190006, 72, 0x100, -1, 0, 80, 510);-- ゴゴゴゴ

setEffMoveKey(  spep_0 +562,  ctgogo,  80,  510);
setEffMoveKey(  spep_0 +634,  ctgogo,  80,  510);

setEffAlphaKey( spep_0 +562, ctgogo, 0 );
setEffAlphaKey( spep_0 + 563, ctgogo, 255 );
setEffAlphaKey( spep_0 + 564, ctgogo, 255 );
setEffAlphaKey( spep_0 + 628, ctgogo, 255 );
setEffAlphaKey( spep_0 + 630, ctgogo, 191 );
setEffAlphaKey( spep_0 + 632, ctgogo, 112 );
setEffAlphaKey( spep_0 + 634, ctgogo, 64 );

setEffRotateKey(  spep_0 +562,  ctgogo,  0);
setEffRotateKey(  spep_0 +634,  ctgogo,  0);

setEffScaleKey(  spep_0 +562,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0 +624,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0 +634,  ctgogo, 1.07, 1.07 );

-- ** 音 ** --
playSe( spep_0 + 562, 1018 );


se_11091 = playSe( spep_0 + 70, 1109 );
playSe( spep_0 + 85, 1003 );
setSeVolume( spep_0 + 85, 1003, 79 );
se_1117 = playSe( spep_0 + 87, 1117 );
setSeVolume( spep_0 + 87, 1117, 158 );
playSe( spep_0 + 108, 1189 );
playSe( spep_0 + 114, 1120 );
se_11831 = playSe( spep_0 + 126, 1183 );
se_11211= playSe( spep_0 + 126, 1121 );
setSeVolume( spep_0 + 126, 1121, 63 );
se_11092 = playSe( spep_0 + 147, 1109 );
playSe( spep_0 + 155, 1004 );
playSe( spep_0 + 160, 1010 );
playSe( spep_0 + 164, 1110 );
se_11832 = playSe( spep_0 + 169, 1183 );
setSeVolume( spep_0 + 169, 1183, 32 );
se_11093 = playSe( spep_0 + 178, 1109 );
playSe( spep_0 + 187, 1233 );
setSeVolume( spep_0 + 187, 1233, 79 );
se_1007 = playSe( spep_0 + 200, 1007 );
setSeVolume( spep_0 + 200, 1007, 126 );
se_11821 = playSe( spep_0 + 227, 1182 );
setSeVolume( spep_0 + 227, 1182, 0 );
setSeVolume( spep_0 + 228, 1182, 0 );
setSeVolume( spep_0 + 229, 1182, 4.2 );
setSeVolume( spep_0 + 230, 1182, 8.4 );
setSeVolume( spep_0 + 231, 1182, 12.6 );
setSeVolume( spep_0 + 232, 1182, 16.8 );
setSeVolume( spep_0 + 233, 1182, 21 );
setSeVolume( spep_0 + 234, 1182, 25.2 );
setSeVolume( spep_0 + 235, 1182, 29.4 );
setSeVolume( spep_0 + 236, 1182, 33.6 );
setSeVolume( spep_0 + 237, 1182, 37.8 );
setSeVolume( spep_0 + 238, 1182, 42 );
setSeVolume( spep_0 + 239, 1182, 46.2 );
setSeVolume( spep_0 + 240, 1182, 50.4 );
setSeVolume( spep_0 + 241, 1182, 54.6 );
setSeVolume( spep_0 + 242, 1182, 58.8 );
setSeVolume( spep_0 + 243, 1182, 63 );
playSe( spep_0 + 233, 1004 );
setSeVolume( spep_0 + 233, 1004, 79 );
playSe( spep_0 + 261, 1004 );
se_11822 = playSe( spep_0 + 268, 1182 );
setSeVolume( spep_0 + 268, 1182, 0 );
setSeVolume( spep_0 + 269, 1182, 0 );
setSeVolume( spep_0 + 270, 1182, 5.27 );
setSeVolume( spep_0 + 271, 1182, 10.53 );
setSeVolume( spep_0 + 272, 1182, 15.8 );
setSeVolume( spep_0 + 273, 1182, 21.07 );
setSeVolume( spep_0 + 274, 1182, 26.33 );
setSeVolume( spep_0 + 275, 1182, 31.6 );
setSeVolume( spep_0 + 276, 1182, 36.87 );
setSeVolume( spep_0 + 277, 1182, 42.13 );
setSeVolume( spep_0 + 278, 1182, 47.4 );
setSeVolume( spep_0 + 279, 1182, 52.67 );
setSeVolume( spep_0 + 280, 1182, 57.93 );
setSeVolume( spep_0 + 281, 1182, 63.2 );
setSeVolume( spep_0 + 282, 1182, 68.47 );
setSeVolume( spep_0 + 283, 1182, 73.73 );
setSeVolume( spep_0 + 284, 1182, 79 );
se_00081 = playSe( spep_0 + 272, 8 );
setSeVolume( spep_0 + 272, 8, 50 );
playSe( spep_0 + 287, 1003 );
setSeVolume( spep_0 + 287, 1003, 63 );
se_00082 = playSe( spep_0 + 295, 8 );
setSeVolume( spep_0 + 295, 8, 56 );
playSe( spep_0 + 309, 1003 );
setSeVolume( spep_0 + 309, 1003, 89 );
playSe( spep_0 + 312, 1182 );
setSeVolume( spep_0 + 312, 1182, 0 );
setSeVolume( spep_0 + 313, 1182, 0 );
setSeVolume( spep_0 + 314, 1182, 6.67 );
setSeVolume( spep_0 + 315, 1182, 13.33 );
setSeVolume( spep_0 + 316, 1182, 20 );
setSeVolume( spep_0 + 317, 1182, 26.67 );
setSeVolume( spep_0 + 318, 1182, 33.33 );
setSeVolume( spep_0 + 319, 1182, 40 );
setSeVolume( spep_0 + 320, 1182, 46.67 );
setSeVolume( spep_0 + 321, 1182, 53.33 );
setSeVolume( spep_0 + 322, 1182, 60 );
setSeVolume( spep_0 + 323, 1182, 66.67 );
setSeVolume( spep_0 + 324, 1182, 73.33 );
setSeVolume( spep_0 + 325, 1182, 80 );
setSeVolume( spep_0 + 326, 1182, 86.67 );
setSeVolume( spep_0 + 327, 1182, 93.33 );
setSeVolume( spep_0 + 328, 1182, 100 );
se_00083 = playSe( spep_0 + 316, 8 );
setSeVolume( spep_0 + 316, 8, 126 );
playSe( spep_0 + 322, 4 );
setSeVolume( spep_0 + 322, 4, 50 );
playSe( spep_0 + 325, 1003 );
setSeVolume( spep_0 + 325, 1003, 79 );
se_00084 = playSe( spep_0 + 325, 8 );
setSeVolume( spep_0 + 325, 8, 79 );
playSe( spep_0 + 330, 4 );
setSeVolume( spep_0 + 330, 4, 71 );
se_00085 = playSe( spep_0 + 333, 8 );
playSe( spep_0 + 337, 4 );
setSeVolume( spep_0 + 337, 4, 79 );
playSe( spep_0 + 340, 1003 );
setSeVolume( spep_0 + 340, 1003, 89 );
se_00086 = playSe( spep_0 + 343, 8 );
playSe( spep_0 + 344, 4 );
setSeVolume( spep_0 + 344, 4, 89 );
se_00087 = playSe( spep_0 + 347, 8 );
setSeVolume( spep_0 + 347, 8, 158 );
playSe( spep_0 + 348, 4 );
se_1116 = playSe( spep_0 + 356, 1116 );
setSeVolume( spep_0 + 356, 9, 112 );
playSe( spep_0 + 356, 9 );
se_1119 = playSe( spep_0 + 360, 1119 );
setSeVolume( spep_0 + 360, 1119, 32 );
playSe( spep_0 + 422, 1004 );
playSe( spep_0 + 423, 1064 );
playSe( spep_0 + 423, 1182 );
playSe( spep_0 + 430, 8 );
se_1121 = playSe( spep_0 + 442, 1121 );
setSeVolume( spep_0 + 442, 1121, 71 );
playSe( spep_0 + 470, 43 );
playSe( spep_0 + 502, 1189 );
playSe( spep_0 + 505, 1123 );
setSeVolume( spep_0 + 505, 1123, 89 );
se_1158 = playSe( spep_0 + 509, 1158 );
setSeVolume( spep_0 + 509, 1158, 0 );
setSeVolume( spep_0 + 584, 1158, 0 );
setSeVolume( spep_0 + 585, 1158, 21 );
setSeVolume( spep_0 + 586, 1158, 42 );
setSeVolume( spep_0 + 587, 1158, 63 );
playSe( spep_0 + 570, 1003 );
setSeVolume( spep_0 + 570, 1003, 79 );
se_1224 = playSe( spep_0 + 586, 1224 );
setSeVolume( spep_0 + 586, 1224, 63 );
playSe( spep_0 + 598, 1225 );


stopSe( spep_0 + 62, se_1024, 22 );
stopSe( spep_0 + 88, se_11091, 9 );
stopSe( spep_0 + 126, se_1117, 0 );
stopSe( spep_0 + 160, se_11831, 0 );
stopSe( spep_0 + 160, se_11211, 0 );
stopSe( spep_0 + 165, se_11092, 9 );
stopSe( spep_0 + 216, se_11832, 0 );
stopSe( spep_0 + 196, se_11093, 9 );
stopSe( spep_0 + 220, se_1007, 0 );
stopSe( spep_0 + 268, se_11821, 0 );
stopSe( spep_0 + 312, se_11822, 0 );
stopSe( spep_0 + 297, se_00081, 0 );
stopSe( spep_0 + 318, se_00082, 0 );
stopSe( spep_0 + 327, se_00083, 0 );
stopSe( spep_0 + 337, se_00084, 0 );
stopSe( spep_0 + 346, se_00085, 0 );
stopSe( spep_0 + 351, se_00086, 0 );
stopSe( spep_0 + 358, se_00087, 0 );
stopSe( spep_0 + 377, se_1116, 10 );
stopSe( spep_0 + 408, se_1119, 7 );
stopSe( spep_0 + 529, se_1121, 0 );
stopSe( spep_0 + 600, se_1224, 16 );


--白フェード
entryFade( spep_0 + 636, 0, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--はじめの準備
spep_1=spep_0+644;

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
stopSe( spep_1 + 5, se_1158, 0 );

--白フェード
entryFade( spep_1 + 80, 6, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

------------------------------------------------------
-- 対峙
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 410, finish_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 410, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 410, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 410, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 410, finish_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 410, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_b, 0 );
setEffRotateKey( spep_2 + 410, finish_b, 0 );

--敵の動き
setDisp( spep_2-3 + 114, 1, 1 );
setDisp( spep_2-1 + 190, 1, 0 );

changeAnime( spep_2-3 +114 , 1, 106 );

setMoveKey( spep_2-3 + 114, 1, 464.7, 453.1 , 0 );
setMoveKey( spep_2-3 + 116, 1, 467.1, 449.1 , 0 );
setMoveKey( spep_2-3 + 118, 1, 461.4, 445.2 , 0 );
setMoveKey( spep_2-3 + 120, 1, 462.4, 444.8 , 0 );
setMoveKey( spep_2-3 + 122, 1, 460.8, 442.7 , 0 );
setMoveKey( spep_2-3 + 124, 1, 459.3, 440.8 , 0 );
setMoveKey( spep_2-3 + 126, 1, 457.8, 439 , 0 );
setMoveKey( spep_2-3 + 128, 1, 389.4, 367.4 , 0 );
setMoveKey( spep_2-3 + 130, 1, 354.4, 330.9 , 0 );
setMoveKey( spep_2-3 + 132, 1, 331.8, 307.2 , 0 );
setMoveKey( spep_2-3 + 134, 1, 316, 290.7 , 0 );
setMoveKey( spep_2-3 + 136, 1, 304.4, 278.6 , 0 );
setMoveKey( spep_2-3 + 138, 1, 295.9, 269.7 , 0 );
setMoveKey( spep_2-3 + 140, 1, 289.5, 263.1 , 0 );
setMoveKey( spep_2-3 + 142, 1, 284.8, 258.2 , 0 );
setMoveKey( spep_2-3 + 144, 1, 281.3, 254.6 , 0 );
setMoveKey( spep_2-3 + 146, 1, 279, 252.2 , 0 );
setMoveKey( spep_2-3 + 148, 1, 278.8, 252.1 , 0 );
setMoveKey( spep_2-3 + 150, 1, 278.6, 252 , 0 );
setMoveKey( spep_2-3 + 152, 1, 278.2, 251.7 , 0 );
setMoveKey( spep_2-3 + 154, 1, 277.5, 251.2 , 0 );
setMoveKey( spep_2-3 + 156, 1, 276.8, 250.6 , 0 );
setMoveKey( spep_2-3 + 158, 1, 275.7, 249.8 , 0 );
setMoveKey( spep_2-3 + 160, 1, 274.4, 248.8 , 0 );
setMoveKey( spep_2-3 + 162, 1, 272.8, 247.5 , 0 );
setMoveKey( spep_2-3 + 164, 1, 270.8, 245.9 , 0 );
setMoveKey( spep_2-3 + 166, 1, 268.3, 244 , 0 );
setMoveKey( spep_2-3 + 168, 1, 265.4, 241.5 , 0 );
setMoveKey( spep_2-3 + 170, 1, 261.6, 238.5 , 0 );
setMoveKey( spep_2-3 + 172, 1, 256.9, 234.7 , 0 );
setMoveKey( spep_2-3 + 174, 1, 250.9, 229.8 , 0 );
setMoveKey( spep_2-3 + 176, 1, 242.8, 223.2 , 0 );
setMoveKey( spep_2-3 + 178, 1, 230.8, 213.4 , 0 );
setMoveKey( spep_2-3 + 180, 1, 205.1, 163.2 , 0 );
setMoveKey( spep_2-3 + 182, 1, 146.4, 117.2 , 0 );
setMoveKey( spep_2-3 + 184, 1, 54.6, 84 , 0 );
setMoveKey( spep_2-3 + 186, 1, 47.6, 55.6 , 0 );
setMoveKey( spep_2-3 + 188, 1, 58.9, 73.6 , 0 );
setMoveKey( spep_2-1 + 190, 1, 100.6, 64.3 , 0 );

setScaleKey( spep_2-3 + 114, 1, 0.11, 0.11 );
setScaleKey( spep_2-3 + 116, 1, 0.11, 0.11 );
setScaleKey( spep_2-3 + 118, 1, 0.1, 0.1 );
setScaleKey( spep_2-3 + 126, 1, 0.1, 0.1 );
setScaleKey( spep_2-3 + 128, 1, 0.14, 0.14 );
setScaleKey( spep_2-3 + 130, 1, 0.16, 0.16 );
setScaleKey( spep_2-3 + 132, 1, 0.17, 0.17 );
setScaleKey( spep_2-3 + 134, 1, 0.18, 0.18 );
setScaleKey( spep_2-3 + 136, 1, 0.19, 0.19 );
setScaleKey( spep_2-3 + 140, 1, 0.19, 0.19 );
setScaleKey( spep_2-3 + 142, 1, 0.2, 0.2 );
setScaleKey( spep_2-3 + 154, 1, 0.2, 0.2 );
setScaleKey( spep_2-3 + 156, 1, 0.21, 0.21 );
setScaleKey( spep_2-3 + 160, 1, 0.21, 0.21 );
setScaleKey( spep_2-3 + 162, 1, 0.22, 0.22 );
setScaleKey( spep_2-3 + 164, 1, 0.22, 0.22 );
setScaleKey( spep_2-3 + 166, 1, 0.23, 0.23 );
setScaleKey( spep_2-3 + 168, 1, 0.23, 0.23 );
setScaleKey( spep_2-3 + 170, 1, 0.24, 0.24 );
setScaleKey( spep_2-3 + 172, 1, 0.26, 0.26 );
setScaleKey( spep_2-3 + 174, 1, 0.27, 0.27 );
setScaleKey( spep_2-3 + 176, 1, 0.29, 0.29 );
setScaleKey( spep_2-3 + 178, 1, 0.33, 0.33 );
setScaleKey( spep_2-3 + 180, 1, 0.39, 0.39 );
setScaleKey( spep_2-3 + 182, 1, 0.6, 0.6 );
setScaleKey( spep_2-3 + 184, 1, 0.75, 0.75 );
setScaleKey( spep_2-3 + 186, 1, 0.8, 0.8 );
setScaleKey( spep_2-3 + 188, 1, 0.79, 0.79 );
setScaleKey( spep_2-1 + 190, 1, 0.65, 0.65 );

setRotateKey( spep_2-3 + 114, 1, 0 );
setRotateKey( spep_2-1 + 190, 1, 0 );


--文字エントリー

ctzuo = entryEffectLife( spep_2-3 + 116,  10012, 28, 0x100, -1, 0, -45.1, 102.5 );

setEffMoveKey( spep_2-3 + 116, ctzuo, -45.1, 102.5 , 0 );
setEffMoveKey( spep_2-3 + 118, ctzuo, -42.3, 112.7 , 0 );
setEffMoveKey( spep_2-3 + 120, ctzuo, -68.7, 138.8 , 0 );
setEffMoveKey( spep_2-3 + 122, ctzuo, -98.3, 184.3 , 0 );
setEffMoveKey( spep_2-3 + 124, ctzuo, -81.3, 193.1 , 0 );
setEffMoveKey( spep_2-3 + 126, ctzuo, -103.1, 196.4 , 0 );
setEffMoveKey( spep_2-3 + 128, ctzuo, -82.9, 199.4 , 0 );
setEffMoveKey( spep_2-3 + 130, ctzuo, -104.5, 197.7 , 0 );
setEffMoveKey( spep_2-3 + 132, ctzuo, -85.7, 206.4 , 0 );
setEffMoveKey( spep_2-3 + 134, ctzuo, -123.2, 214.9 , 0 );
setEffMoveKey( spep_2-3 + 136, ctzuo, -95.1, 230.5 , 0 );
setEffMoveKey( spep_2-3 + 138, ctzuo, -142.8, 232.9 , 0 );
setEffMoveKey( spep_2-3 + 140, ctzuo, -100.6, 244.5 , 0 );
setEffMoveKey( spep_2-3 + 142, ctzuo, -151, 240.6 , 0 );
setEffMoveKey( spep_2-3 + 144, ctzuo, -152, 241.3 , 0 );

setEffScaleKey( spep_2-3 + 116, ctzuo, 0.9, 0.9 );
setEffScaleKey( spep_2-3 + 118, ctzuo, 1.05, 1.05 );
setEffScaleKey( spep_2-3 + 120, ctzuo, 1.5, 1.5 );
setEffScaleKey( spep_2-3 + 122, ctzuo, 2.25, 2.25 );
setEffScaleKey( spep_2-3 + 124, ctzuo, 2.35, 2.35 );
setEffScaleKey( spep_2-3 + 126, ctzuo, 2.44, 2.44 );
setEffScaleKey( spep_2-3 + 128, ctzuo, 2.46, 2.46 );
setEffScaleKey( spep_2-3 + 130, ctzuo, 2.55, 2.55 );
setEffScaleKey( spep_2-3 + 132, ctzuo, 2.97, 2.97 );
setEffScaleKey( spep_2-3 + 134, ctzuo, 3.91, 3.91 );
setEffScaleKey( spep_2-3 + 136, ctzuo, 4.72, 4.72 );
setEffScaleKey( spep_2-3 + 138, ctzuo, 5.34, 5.34 );
setEffScaleKey( spep_2-3 + 140, ctzuo, 5.75, 5.75 );
setEffScaleKey( spep_2-3 + 142, ctzuo, 5.95, 5.95 );
setEffScaleKey( spep_2-3 + 144, ctzuo, 6, 6 );

setEffRotateKey( spep_2-3 + 116, ctzuo, -27 );
setEffRotateKey( spep_2-3 + 144, ctzuo, -27 );

setEffAlphaKey( spep_2-3 + 116, ctzuo, 255 );
setEffAlphaKey( spep_2-3 + 126, ctzuo, 255 );
setEffAlphaKey( spep_2-3 + 128, ctzuo, 254 );
setEffAlphaKey( spep_2-3 + 130, ctzuo, 248 );
setEffAlphaKey( spep_2-3 + 132, ctzuo, 218 );
setEffAlphaKey( spep_2-3 + 134, ctzuo, 150 );
setEffAlphaKey( spep_2-3 + 136, ctzuo, 91 );
setEffAlphaKey( spep_2-3 + 138, ctzuo, 47 );
setEffAlphaKey( spep_2-3 + 140, ctzuo, 18 );
setEffAlphaKey( spep_2-3 + 142, ctzuo, 4 );
setEffAlphaKey( spep_2-3 + 144, ctzuo, 0 );

--SE
playSe( spep_2 + 0, 1036 );
setSeVolume( spep_2 + 0, 1036, 79 );
playSe( spep_2 + 17, 1072 );
playSe( spep_2 + 24, 1036 );
setSeVolume( spep_2 + 24, 1036, 79 );
playSe( spep_2 + 48, 1036 );
setSeVolume( spep_2 + 48, 1036, 79 );
playSe( spep_2 + 52, 1004 );
setSeVolume( spep_2 + 52, 1004, 71 );
playSe( spep_2 + 72, 1036 );
playSe( spep_2 + 96, 1036 );
se_1193 = playSe( spep_2 + 101, 1193 );
setSeVolume( spep_2 + 101, 1193, 0 );
setSeVolume( spep_2 + 106, 1193, 50 );
setSeVolume( spep_2 + 107, 1193, 100 );
setSeVolume( spep_2 + 108, 1193, 150 );
setSeVolume( spep_2 + 109, 1193, 200 );
playSe( spep_2 + 118, 1212 );
setSeVolume( spep_2 + 118, 1212, 45 );
playSe( spep_2 + 118, 1027 );
playSe( spep_2 + 140, 1022 );
setSeVolume( spep_2 + 140, 1022, 0 );
setSeVolume( spep_2 + 141, 1022, 4.86 );
setSeVolume( spep_2 + 142, 1022, 9.72 );
setSeVolume( spep_2 + 143, 1022, 14.59 );
setSeVolume( spep_2 + 144, 1022, 19.45 );
setSeVolume( spep_2 + 145, 1022, 24.31 );
setSeVolume( spep_2 + 146, 1022, 29.17 );
setSeVolume( spep_2 + 147, 1022, 34.03 );
setSeVolume( spep_2 + 148, 1022, 38.9 );
setSeVolume( spep_2 + 149, 1022, 43.76 );
setSeVolume( spep_2 + 150, 1022, 48.62 );
setSeVolume( spep_2 + 151, 1022, 53.48 );
setSeVolume( spep_2 + 152, 1022, 58.34 );
setSeVolume( spep_2 + 153, 1022, 63.21 );
setSeVolume( spep_2 + 154, 1022, 68.07 );
setSeVolume( spep_2 + 155, 1022, 72.93 );
setSeVolume( spep_2 + 156, 1022, 77.79 );
setSeVolume( spep_2 + 157, 1022, 82.66 );
setSeVolume( spep_2 + 158, 1022, 87.52 );
setSeVolume( spep_2 + 159, 1022, 92.38 );
setSeVolume( spep_2 + 160, 1022, 97.24 );
setSeVolume( spep_2 + 161, 1022, 102.1 );
setSeVolume( spep_2 + 162, 1022, 106.97 );
setSeVolume( spep_2 + 163, 1022, 111.83 );
setSeVolume( spep_2 + 164, 1022, 116.69 );
setSeVolume( spep_2 + 165, 1022, 121.55 );
setSeVolume( spep_2 + 166, 1022, 126.41 );
setSeVolume( spep_2 + 167, 1022, 131.28 );
setSeVolume( spep_2 + 168, 1022, 136.14 );
setSeVolume( spep_2 + 169, 1022, 141 );
playSe( spep_2 + 195, 1021 );
se_1176 = playSe( spep_2 + 204, 1176 );
playSe( spep_2 + 207, 1056 );
setSeVolume( spep_2 + 207, 1056, 50 );
playSe( spep_2 + 225, 1027 );
setSeVolume( spep_2 + 225, 1027, 89 );
setSeVolume( spep_2 + 255, 1147, 50 );
playSe( spep_2 + 239, 1027 );
setSeVolume( spep_2 + 239, 1027, 89 );
playSe( spep_2 + 252, 1027 );
se_1147 = playSe( spep_2 + 255, 1147 );
playSe( spep_2 + 266, 1027 );
setSeVolume( spep_2 + 266, 1027, 112 );
playSe( spep_2 + 276, 1159 );
setSeVolume( spep_2 + 276, 1159, 89 );
playSe( spep_2 + 347, 1024 );
playSe( spep_2 + 349, 1023 );
setSeVolume( spep_2 + 349, 1023, 126 );

stopSe( spep_2 + 139, se_1193, 141 );
stopSe( spep_2 + 296, se_1176, 32 );
stopSe( spep_2 + 293, se_1147, 0 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 400, 0,  0, 0, 0, 255 ); --くろ 背景

--終わり
dealDamage( spep_2 + 280 );
endPhase( spep_2 + 400 );
else 
------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 対峙
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
tame_f = entryEffect( spep_0 + 0, SP_01x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 644, tame_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 644, tame_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame_f, 0 );
setEffRotateKey( spep_0 + 644, tame_f, 0 );
setEffAlphaKey( spep_0 + 0, tame_f, 255 );
setEffAlphaKey( spep_0 + 644, tame_f, 255 );

-- ** エフェクト等 ** --
tame_b = entryEffect( spep_0 + 0, SP_02x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 644, tame_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 644, tame_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame_b, 0 );
setEffRotateKey( spep_0 + 644, tame_b, 0 );
setEffAlphaKey( spep_0 + 0, tame_b, 255 );
setEffAlphaKey( spep_0 + 644, tame_b, 255 );

--SE
SE0=playSe( spep_0 + 12, 1035 );
se_1024 = playSe( spep_0 + 12, 1024 );
setSeVolume( spep_0 + 12, 1024, 79 );
SE1=playSe( spep_0 + 12, 1182 );
SE2=playSe( spep_0 + 17, 1068 );
setSeVolume( spep_0 + 17, 1068, 79 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 636, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 50; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE0, 0 );
    stopSe( SP_dodge - 12, SE1, 0 );
    stopSe( SP_dodge - 12, SE2, 0 );
    stopSe( SP_dodge - 12, se_1024, 0 );
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
setDisp( spep_0-3 + 78, 1, 1 );
setDisp( spep_0-1 + 246, 1, 0 );
setDisp( spep_0-1 + 250, 1, 1 );
setDisp( spep_0-1 + 282, 1, 0 );
setDisp( spep_0-1 + 286, 1, 1 );
setDisp( spep_0-1 + 292, 1, 0 );
setDisp( spep_0-1 + 298, 1, 1 );
setDisp( spep_0-1 + 306, 1, 0 );
setDisp( spep_0-1 + 312, 1, 1 );
setDisp( spep_0-1 + 318, 1, 0 );
setDisp( spep_0-1 + 324, 1, 1 );
setDisp( spep_0-1 + 332, 1, 0 );
setDisp( spep_0-1 + 336, 1, 1 );
setDisp( spep_0-1 + 344, 1, 0 );
setDisp( spep_0-1 + 348, 1, 1 );
setDisp( spep_0-1 + 354, 1, 0 );
setDisp( spep_0-1 + 392, 1, 1 );
setDisp( spep_0-1 + 540, 1, 0 );

changeAnime( spep_0-3 +78 , 1, 102 );
changeAnime( spep_0-3 +114 , 1, 107);
changeAnime( spep_0-3 +138 , 1, 107 );
changeAnime( spep_0-3 +158 , 1, 105 );
changeAnime( spep_0-3 +192 , 1, 6 );
changeAnime( spep_0-3 +214 , 1, 106 );
changeAnime( spep_0-3 +252 , 1, 106 );
changeAnime( spep_0-3 +264 , 1, 7 );
changeAnime( spep_0-3 +268 , 1, 106 );
changeAnime( spep_0-3 +264 , 1, 7 );
changeAnime( spep_0-3 +268 , 1, 106 );
changeAnime( spep_0-3 +274 , 1, 7 );
changeAnime( spep_0-3 +278 , 1, 106 );
changeAnime( spep_0-3 +288 , 1, 7 );
changeAnime( spep_0-3 +290 , 1, 106 );
changeAnime( spep_0-3 +300 , 1, 7 );
changeAnime( spep_0-3 +304 , 1, 106 );
changeAnime( spep_0-3 +314 , 1, 7 );
changeAnime( spep_0-3 +316 , 1, 106 );
changeAnime( spep_0-3 +326 , 1, 7 );
changeAnime( spep_0-3 +328 , 1, 106 );
changeAnime( spep_0-3 +338 , 1, 7 );
changeAnime( spep_0-3 +340 , 1, 106 );
changeAnime( spep_0-3 +350 , 1, 7 );
changeAnime( spep_0-3 +354 , 1, 106 );
changeAnime( spep_0-3 +394 , 1, 6 );
changeAnime( spep_0-3 +406 , 1, 106 );
changeAnime( spep_0-3 +414 , 1, 107 );
changeAnime( spep_0-3 +426 , 1, 106 );
changeAnime( spep_0-3 +428 , 1, 5 );
changeAnime( spep_0-3 +450 , 1, 6 );
changeAnime( spep_0-3 +474 , 1, 7 );
changeAnime( spep_0-3 +498 , 1, 108 );
changeAnime( spep_0-3 +504 , 1, 106 );

setMoveKey( spep_0-3 + 78, 1, 983.4, -1619.9 , 0 );
setMoveKey( spep_0-3 + 80, 1, 982.3, -1618.5 , 0 );
setMoveKey( spep_0-3 + 82, 1, 978.7, -1613.8 , 0 );
setMoveKey( spep_0-3 + 84, 1, 971.8, -1604.6 , 0 );
setMoveKey( spep_0-3 + 86, 1, 960.5, -1589.9 , 0 );
setMoveKey( spep_0-3 + 88, 1, 944, -1568.2 , 0 );
setMoveKey( spep_0-3 + 90, 1, 920.7, -1537.7 , 0 );
setMoveKey( spep_0-3 + 92, 1, 889.1, -1496.2 , 0 );
setMoveKey( spep_0-3 + 94, 1, 846.8, -1440.7 , 0 );
setMoveKey( spep_0-3 + 96, 1, 790.7, -1367 , 0 );
setMoveKey( spep_0-3 + 98, 1, 715.8, -1268.7 , 0 );
setMoveKey( spep_0-3 + 100, 1, 614.1, -1135.3 , 0 );
setMoveKey( spep_0-3 + 102, 1, 470.6, -946.9 , 0 );
setMoveKey( spep_0-3 + 104, 1, 308.3, -733.9 , 0 );
setMoveKey( spep_0-3 + 106, 1, 230.4, -631.7 , 0 );
setMoveKey( spep_0-3 + 108, 1, 194.4, -584.4 , 0 );
setMoveKey( spep_0-3 + 110, 1, 179.9, -565.4 , 0 );
setMoveKey( spep_0-3 + 112, 1, 176.8, -561.2 , 0 );
setMoveKey( spep_0-3 + 113, 1, 176.8, -561.2 , 0 );

setMoveKey( spep_0-3 + 114, 1, 19.7, -722.3 , 0 );
setMoveKey( spep_0-3 + 116, 1, 48.9, -639.2 , 0 );
setMoveKey( spep_0-3 + 118, 1, 55, -708.5 , 0 );
setMoveKey( spep_0-3 + 120, 1, 38.9, -580.2 , 0 );
setMoveKey( spep_0-3 + 122, 1, 51.8, -643.3 , 0 );
setMoveKey( spep_0-3 + 124, 1, 63.6, -628.5 , 0 );
setMoveKey( spep_0-3 + 126, 1, 101.3, -682.1 , 0 );
setMoveKey( spep_0-3 + 128, 1, 371, -787 , 0 );
setMoveKey( spep_0-3 + 130, 1, 605, -916.7 , 0 );
setMoveKey( spep_0-3 + 132, 1, 727.7, -973.9 , 0 );
setMoveKey( spep_0-3 + 134, 1, 762.3, -990.2 , 0 );
setMoveKey( spep_0-3 + 137, 1, 769.6, -993.4 , 0 );

setMoveKey( spep_0-3 + 138, 1, -396.4, 127.4 , 0 );
setMoveKey( spep_0-3 + 140, 1, -396.4, 127.4 , 0 );
setMoveKey( spep_0-3 + 142, 1, -395.5, 127.1 , 0 );
setMoveKey( spep_0-3 + 144, 1, -392.4, 126.2 , 0 );
setMoveKey( spep_0-3 + 146, 1, -386.4, 124.6 , 0 );
setMoveKey( spep_0-3 + 148, 1, -376, 121.6 , 0 );
setMoveKey( spep_0-3 + 150, 1, -359.1, 116.9 , 0 );
setMoveKey( spep_0-3 + 152, 1, -331.7, 109.3 , 0 );
setMoveKey( spep_0-3 + 154, 1, -281.8, 95.3 , 0 );
setMoveKey( spep_0-3 + 156, 1, -113.2, 48.2 , 0 );
setMoveKey( spep_0-3 + 157, 1, -113.2, 48.2 , 0 );

setMoveKey( spep_0-3 + 158, 1, -70.9, 86.2 , 0 );
setMoveKey( spep_0-3 + 160, 1, 6.9, 38.1 , 0 );
setMoveKey( spep_0-3 + 162, 1, 11.9, 38.1 , 0 );
setMoveKey( spep_0-3 + 164, 1, -77.2, 76.5 , 0 );
setMoveKey( spep_0-3 + 166, 1, -0.6, 38.1 , 0 );
setMoveKey( spep_0-3 + 168, 1, -11.3, 41.3 , 0 );
setMoveKey( spep_0-3 + 170, 1, -128, 95.5 , 0 );
setMoveKey( spep_0-3 + 172, 1, -153.3, 106.7 , 0 );
setMoveKey( spep_0-3 + 174, 1, -245.3, 126 , 0 );
setMoveKey( spep_0-3 + 176, 1, -323.7, 141.1 , 0 );
setMoveKey( spep_0-3 + 178, 1, -362.6, 148.7 , 0 );
setMoveKey( spep_0-3 + 180, 1, -385, 153 , 0 );
setMoveKey( spep_0-3 + 182, 1, -398.4, 155.6 , 0 );
setMoveKey( spep_0-3 + 184, 1, -406.3, 157.1 , 0 );
setMoveKey( spep_0-3 + 186, 1, -410.6, 157.9 , 0 );
setMoveKey( spep_0-3 + 188, 1, -412.7, 158.3 , 0 );
setMoveKey( spep_0-3 + 190, 1, -413.2, 158.4 , 0 );
setMoveKey( spep_0-3 + 191, 1, -413.2, 158.4 , 0 );

setMoveKey( spep_0-3 + 192, 1, 734.3, 298.9 , 0 );
setMoveKey( spep_0-3 + 194, 1, 734.3, 298.8 , 0 );
setMoveKey( spep_0-3 + 195, 1, 734.3, 298.8 , 0 );
setMoveKey( spep_0-3 + 196, 1, -185.1, 598.7 , 0 );
setMoveKey( spep_0-3 + 197, 1, -185.1, 598.7 , 0 );
setMoveKey( spep_0-3 + 198, 1, -170.5, 585.7 , 0 );
setMoveKey( spep_0-3 + 199, 1, -170.5, 585.7 , 0 );
setMoveKey( spep_0-3 + 200, 1, -283.5, 597.2 , 0 );
setMoveKey( spep_0-3 + 201, 1, -283.5, 597.2 , 0 );
setMoveKey( spep_0-3 + 202, 1, -292.6, 580.4 , 0 );
setMoveKey( spep_0-3 + 203, 1, -292.6, 580.4 , 0 );
setMoveKey( spep_0-3 + 204, 1, -305.7, 596.6 , 0 );
setMoveKey( spep_0-3 + 205, 1, -305.7, 596.6 , 0 );
setMoveKey( spep_0-3 + 206, 1, -322.2, 596 , 0 );
setMoveKey( spep_0-3 + 207, 1, -322.2, 596 , 0 );
setMoveKey( spep_0-3 + 208, 1, -339.5, 588.1 , 0 );
setMoveKey( spep_0-3 + 209, 1, -339.5, 588.1 , 0 );
setMoveKey( spep_0-3 + 210, 1, -344, 588.2 , 0 );
setMoveKey( spep_0-3 + 213, 1, -344, 588.2 , 0 );

setMoveKey( spep_0-3 + 214, 1, -22.7, 447.9 , 0 );
setMoveKey( spep_0-3 + 215, 1, -22.7, 447.9 , 0 );
setMoveKey( spep_0-3 + 216, 1, -22.7, 446.9 , 0 );
setMoveKey( spep_0-3 + 217, 1, -22.7, 446.9 , 0 );
setMoveKey( spep_0-3 + 218, 1, -147.2, 345.4 , 0 );
setMoveKey( spep_0-3 + 219, 1, -147.2, 345.4 , 0 );
setMoveKey( spep_0-3 + 220, 1, -146.8, 344.6 , 0 );
setMoveKey( spep_0-3 + 221, 1, -146.8, 344.6 , 0 );
setMoveKey( spep_0-3 + 222, 1, -229.8, 270.6 , 0 );
setMoveKey( spep_0-3 + 223, 1, -229.8, 270.6 , 0 );
setMoveKey( spep_0-3 + 224, 1, -229.1, 269.8 , 0 );
setMoveKey( spep_0-3 + 225, 1, -229.1, 269.8 , 0 );
setMoveKey( spep_0-3 + 226, 1, -228.3, 268.9 , 0 );
setMoveKey( spep_0-3 + 227, 1, -228.3, 268.9 , 0 );
setMoveKey( spep_0-3 + 228, 1, -131.2, -326.1 , 0 );
setMoveKey( spep_0-3 + 229, 1, -131.2, -326.1 , 0 );
setMoveKey( spep_0-3 + 230, 1, -130.6, -324.8 , 0 );
setMoveKey( spep_0-3 + 231, 1, -130.6, -324.8 , 0 );
setMoveKey( spep_0-3 + 232, 1, 393.9, 39.6 , 0 );
setMoveKey( spep_0-3 + 233, 1, 393.9, 39.6 , 0 );
setMoveKey( spep_0-3 + 234, 1, 392.4, 39.5 , 0 );
setMoveKey( spep_0-3 + 235, 1, 392.4, 39.5 , 0 );
setMoveKey( spep_0-3 + 236, 1, 390.8, 39.3 , 0 );
setMoveKey( spep_0-3 + 237, 1, 390.8, 39.3 , 0 );
setMoveKey( spep_0-3 + 238, 1, 31.2, 442 , 0 );
setMoveKey( spep_0-3 + 239, 1, 31.2, 442 , 0 );
setMoveKey( spep_0-3 + 240, 1, 31.1, 439.9 , 0 );
setMoveKey( spep_0-3 + 241, 1, 31.1, 439.9 , 0 );
setMoveKey( spep_0-3 + 242, 1, -336.5, 171 , 0 );
setMoveKey( spep_0-3 + 243, 1, -336.5, 171 , 0 );
setMoveKey( spep_0-3 + 244, 1, -334.7, 170.1 , 0 );
setMoveKey( spep_0-3 + 245, 1, -334.7, 170.1 , 0 );
setMoveKey( spep_0-3 + 246, 1, -332.8, 169.2 , 0 );
setMoveKey( spep_0-3 + 251, 1, -332.8, 169.2 , 0 );

setMoveKey( spep_0-3 + 252, 1, 384.9, -81.5 , 0 );
setMoveKey( spep_0-3 + 253, 1, 384.9, -81.5 , 0 );
setMoveKey( spep_0-3 + 254, 1, 382.5, -81 , 0 );
setMoveKey( spep_0-3 + 255, 1, 382.5, -81 , 0 );
setMoveKey( spep_0-3 + 256, 1, 380.1, -80.4 , 0 );
setMoveKey( spep_0-3 + 257, 1, 380.1, -80.4 , 0 );
setMoveKey( spep_0-3 + 258, 1, 30.8, 408.4 , 0 );
setMoveKey( spep_0-3 + 259, 1, 30.8, 408.4 , 0 );
setMoveKey( spep_0-3 + 260, 1, 30.7, 405.5 , 0 );
setMoveKey( spep_0-3 + 261, 1, 30.7, 405.5 , 0 );
setMoveKey( spep_0-3 + 262, 1, 30.6, 402.4 , 0 );
setMoveKey( spep_0-3 + 263, 1, 30.6, 402.4 , 0 );

setMoveKey( spep_0-3 + 264, 1, 5.6, -247.4 , 0 );
setMoveKey( spep_0-3 + 267, 1, 5.8, -245.4 , 0 );

setMoveKey( spep_0-3 + 268, 1, -233.6, 317.9 , 0 );
setMoveKey( spep_0-3 + 269, 1, -233.6, 317.9 , 0 );
setMoveKey( spep_0-3 + 270, 1, -231.3, 315.2 , 0 );
setMoveKey( spep_0-3 + 271, 1, -231.3, 315.2 , 0 );
setMoveKey( spep_0-3 + 272, 1, -231.4, 313.4 , 0 );
setMoveKey( spep_0-3 + 273, 1, -231.4, 313.4 , 0 );

setMoveKey( spep_0-3 + 274, 1, -46.9, -217.1 , 0 );
setMoveKey( spep_0-3 + 277, 1, -47.8, -210.3 , 0 );

setMoveKey( spep_0-3 + 278, 1, -256.3, 279.3 , 0 );
setMoveKey( spep_0-3 + 279, 1, -256.3, 279.3 , 0 );
setMoveKey( spep_0-3 + 280, 1, 284.3, 180.4 , 0 );
setMoveKey( spep_0-3 + 281, 1, 284.3, 180.4 , 0 );
setMoveKey( spep_0-3 + 282, 1, 286.7, 175.6 , 0 );
setMoveKey( spep_0-3 + 286, 1, 286.7, 175.6 , 0 );
setMoveKey( spep_0-3 + 287, 1, 286.7, 175.6 , 0 );

setMoveKey( spep_0-3 + 288, 1, -44.2, -199.1 , 0 );
setMoveKey( spep_0-3 + 289, 1, -44.2, -199.1 , 0 );

setMoveKey( spep_0-3 + 290, 1, -234, 264.3 , 0 );
setMoveKey( spep_0-3 + 291, 1, -234, 264.3 , 0 );
setMoveKey( spep_0-3 + 292, 1, -237.3, 261.9 , 0 );
setMoveKey( spep_0-3 + 299, 1, -237.3, 261.9 , 0 );

setMoveKey( spep_0-3 + 300, 1, -36.6, -180.5 , 0 );
setMoveKey( spep_0-3 + 301, 1, -36.6, -180.5 , 0 );
setMoveKey( spep_0-3 + 302, 1, -34.1, -181.7 , 0 );
setMoveKey( spep_0-3 + 303, 1, -34.1, -181.7 , 0 );

setMoveKey( spep_0-3 + 304, 1, -212.9, 240.2 , 0 );
setMoveKey( spep_0-3 + 305, 1, -212.9, 240.2 , 0 );
setMoveKey( spep_0-3 + 306, 1, 245.7, 148 , 0 );
setMoveKey( spep_0-3 + 313, 1, 245.7, 148 , 0 );

setMoveKey( spep_0-3 + 314, 1, -32.3, -160 , 0 );
setMoveKey( spep_0-3 + 315, 1, -32.3, -160 , 0 );

setMoveKey( spep_0-3 + 316, 1, -186.4, 210.5 , 0 );
setMoveKey( spep_0-3 + 317, 1, -186.4, 210.5 , 0 );
setMoveKey( spep_0-3 + 318, 1, 218.2, 136.8 , 0 );
setMoveKey( spep_0-3 + 325, 1, 218.2, 136.8 , 0 );

setMoveKey( spep_0-3 + 326, 1, -26.7, -140.9 , 0 );
setMoveKey( spep_0-3 + 327, 1, -26.7, -140.9 , 0 );

setMoveKey( spep_0-3 + 328, 1, -158.8, 182 , 0 );
setMoveKey( spep_0-3 + 329, 1, -158.8, 182 , 0 );
setMoveKey( spep_0-3 + 330, 1, 191.2, 116.9 , 0 );
setMoveKey( spep_0-3 + 331, 1, 191.2, 116.9 , 0 );
setMoveKey( spep_0-3 + 332, 1, 186.1, 107.8 , 0 );
setMoveKey( spep_0-3 + 337, 1, 186.1, 107.8 , 0 );

setMoveKey( spep_0-3 + 338, 1, -19.5, -116.7 , 0 );
setMoveKey( spep_0-3 + 339, 1, -19.5, -116.7 , 0 );

setMoveKey( spep_0-3 + 340, 1, -127.4, 149.8 , 0 );
setMoveKey( spep_0-3 + 341, 1, -127.4, 149.8 , 0 );
setMoveKey( spep_0-3 + 342, 1, -125.8, 148.2 , 0 );
setMoveKey( spep_0-3 + 343, 1, -125.8, 148.2 , 0 );
setMoveKey( spep_0-3 + 344, 1, 159.2, 89 , 0 );
setMoveKey( spep_0-3 + 349, 1, 159.2, 89 , 0 );

setMoveKey( spep_0-3 + 350, 1, -7.8, -91.4 , 0 );
setMoveKey( spep_0-3 + 351, 1, -7.8, -91.4 , 0 );
setMoveKey( spep_0-3 + 352, 1, -10, -90.8 , 0 );
setMoveKey( spep_0-3 + 353, 1, -10, -90.8 , 0 );

setMoveKey( spep_0-3 + 354, 1, -88.6, 116.2 , 0 );
setMoveKey( spep_0-3 + 393, 1, -88.6, 116.2 , 0 );

setMoveKey( spep_0-3 + 394, 1, -1416.8, -1197 , 0 );
setMoveKey( spep_0-3 + 396, 1, -1426.5, -1224.6 , 0 );
setMoveKey( spep_0-3 + 398, 1, -1455.5, -1307.5 , 0 );
setMoveKey( spep_0-3 + 400, 1, -1503.9, -1444.9 , 0 );
setMoveKey( spep_0-3 + 402, 1, -1360.3, -1381.8 , 0 );
setMoveKey( spep_0-3 + 404, 1, -1084.8, -1260.4 , 0 );
setMoveKey( spep_0-3 + 405, 1, -1084.8, -1260.4 , 0 );

setMoveKey( spep_0-3 + 406, 1, 1023.5, -940.3 , 0 );
setMoveKey( spep_0-3 + 408, 1, 966.2, -954.1 , 0 );
setMoveKey( spep_0-3 + 410, 1, 856.2, -980.5 , 0 );
setMoveKey( spep_0-3 + 412, 1, 680.2, -1023.5 , 0 );
setMoveKey( spep_0-3 + 413, 1, 680.2, -1023.5 , 0 );

setMoveKey( spep_0-3 + 414, 1, -423.9, 233.7 , 0 );
setMoveKey( spep_0-3 + 416, 1, -653.8, 389.7 , 0 );
setMoveKey( spep_0-3 + 418, 1, -653.8, 389.6 , 0 );
setMoveKey( spep_0-3 + 420, 1, -199.3, -156 , 0 );
setMoveKey( spep_0-3 + 422, 1, -63, -144.1 , 0 );
setMoveKey( spep_0-3 + 424, 1, 73.4, -132.4 , 0 );
setMoveKey( spep_0-3 + 425, 1, 73.4, -132.4 , 0 );

setMoveKey( spep_0-3 + 426, 1, 95.3, 113 , 0 );
setMoveKey( spep_0-3 + 427, 1, 95.3, 113 , 0 );

setMoveKey( spep_0-3 + 428, 1, 104.3, -56.8 , 0 );
setMoveKey( spep_0-3 + 430, 1, 104.5, -56.9 , 0 );
setMoveKey( spep_0-3 + 432, 1, 104.6, -56.9 , 0 );
setMoveKey( spep_0-3 + 434, 1, 104.6, -57 , 0 );
setMoveKey( spep_0-3 + 438, 1, 104.6, -57 , 0 );
setMoveKey( spep_0-3 + 440, 1, 104.7, -57.1 , 0 );
setMoveKey( spep_0-3 + 446, 1, 104.7, -57.1 , 0 );
setMoveKey( spep_0-3 + 448, 1, 104.7, -57.2 , 0 );
setMoveKey( spep_0-3 + 449, 1, 104.7, -57.2 , 0 );

setMoveKey( spep_0-3 + 450, 1, 346.1, 350.4 , 0 );
setMoveKey( spep_0-3 + 452, 1, 87.1, 182.6 , 0 );
setMoveKey( spep_0-3 + 454, 1, 47.1, 156.6 , 0 );
setMoveKey( spep_0-3 + 456, 1, 28.6, 144.6 , 0 );
setMoveKey( spep_0-3 + 458, 1, 18.5, 138 , 0 );
setMoveKey( spep_0-3 + 460, 1, 12.4, 134 , 0 );
setMoveKey( spep_0-3 + 462, 1, 8.5, 131.5 , 0 );
setMoveKey( spep_0-3 + 464, 1, 5.7, 129.7 , 0 );
setMoveKey( spep_0-3 + 466, 1, 3.7, 128.3 , 0 );
setMoveKey( spep_0-3 + 468, 1, 1.9, 127.1 , 0 );
setMoveKey( spep_0-3 + 470, 1, 0.2, 126 , 0 );
setMoveKey( spep_0-3 + 472, 1, -1.5, 124.8 , 0 );
setMoveKey( spep_0-3 + 473, 1, -1.5, 124.8 , 0 );

setMoveKey( spep_0-3 + 474, 1, 30.1, -3.8 , 0 );
setMoveKey( spep_0-3 + 476, 1, 29.8, -3.5 , 0 );
setMoveKey( spep_0-3 + 478, 1, 29.3, -3.1 , 0 );
setMoveKey( spep_0-3 + 480, 1, 28.7, -2.5 , 0 );
setMoveKey( spep_0-3 + 482, 1, 27.8, -1.6 , 0 );
setMoveKey( spep_0-3 + 484, 1, 26.5, -0.3 , 0 );
setMoveKey( spep_0-3 + 486, 1, 24.4, 1.8 , 0 );
setMoveKey( spep_0-3 + 488, 1, 21, 5.2 , 0 );
setMoveKey( spep_0-3 + 490, 1, 14.2, 11.9 , 0 );
setMoveKey( spep_0-3 + 492, 1, -6.4, 32.7 , 0 );
setMoveKey( spep_0-3 + 494, 1, -19.2, 45.5 , 0 );
setMoveKey( spep_0-3 + 496, 1, -23, 48.4 , 0 );
setMoveKey( spep_0-3 + 497, 1, -23, 48.4 , 0 );

setMoveKey( spep_0-3 + 498, 1, 136.4, 145.3 , 0 );
setMoveKey( spep_0-3 + 500, 1, 52.7, 88.7 , 0 );
setMoveKey( spep_0-3 + 502, 1, 118.8, 144.7 , 0 );
setMoveKey( spep_0-3 + 503, 1, 118.8, 144.7 , 0 );

setMoveKey( spep_0-3 + 504, 1, 274.5, 307.6 , 0 );
setMoveKey( spep_0-3 + 506, 1, 281, 331.8 , 0 );
setMoveKey( spep_0-3 + 508, 1, 324.7, 349.2 , 0 );
setMoveKey( spep_0-3 + 510, 1, 312.3, 373.4 , 0 );
setMoveKey( spep_0-3 + 512, 1, 349, 401 , 0 );
setMoveKey( spep_0-3 + 514, 1, 332.1, 427.2 , 0 );
setMoveKey( spep_0-3 + 516, 1, 345.2, 420.8 , 0 );
setMoveKey( spep_0-3 + 518, 1, 349.2, 425.1 , 0 );
setMoveKey( spep_0-3 + 520, 1, 352.2, 428.3 , 0 );
setMoveKey( spep_0-3 + 522, 1, 354.2, 430.5 , 0 );
setMoveKey( spep_0-3 + 524, 1, 355.8, 432.1 , 0 );
setMoveKey( spep_0-3 + 526, 1, 356.8, 433.2 , 0 );
setMoveKey( spep_0-3 + 528, 1, 357.5, 433.9 , 0 );
setMoveKey( spep_0-3 + 530, 1, 357.9, 434.4 , 0 );
setMoveKey( spep_0-3 + 532, 1, 358.2, 434.7 , 0 );
setMoveKey( spep_0-3 + 534, 1, 358.3, 434.9 , 0 );
setMoveKey( spep_0-3 + 536, 1, 358.4, 435 , 0 );
setMoveKey( spep_0-3 + 538, 1, 358.5, 435.1 , 0 );
setMoveKey( spep_0-1 + 540, 1, 358.3, 434.8 , 0 );



setScaleKey( spep_0-3 + 78, 1, 6.3, 6.3 );
setScaleKey( spep_0-3 + 113, 1, 6.3, 6.3 );

setScaleKey( spep_0-3 + 114, 1, 2.48, 2.48 );
setScaleKey( spep_0-3 + 116, 1, 2.46, 2.46 );
setScaleKey( spep_0-3 + 118, 1, 2.44, 2.44 );
setScaleKey( spep_0-3 + 120, 1, 2.46, 2.46 );
setScaleKey( spep_0-3 + 122, 1, 2.48, 2.48 );
setScaleKey( spep_0-3 + 124, 1, 2.53, 2.53 );
setScaleKey( spep_0-3 + 126, 1, 2.62, 2.62 );
setScaleKey( spep_0-3 + 128, 1, 3.11, 3.11 );
setScaleKey( spep_0-3 + 130, 1, 3.58, 3.58 );
setScaleKey( spep_0-3 + 132, 1, 3.76, 3.76 );
setScaleKey( spep_0-3 + 134, 1, 3.83, 3.83 );
setScaleKey( spep_0-3 + 136, 1, 3.85, 3.85 );
setScaleKey( spep_0-3 + 137, 1, 3.85, 3.85 );

setScaleKey( spep_0-3 + 138, 1, 0.08, 0.08 );
setScaleKey( spep_0-3 + 140, 1, 0.08, 0.08 );
setScaleKey( spep_0-3 + 142, 1, 0.09, 0.09 );
setScaleKey( spep_0-3 + 144, 1, 0.09, 0.09 );
setScaleKey( spep_0-3 + 146, 1, 0.1, 0.1 );
setScaleKey( spep_0-3 + 148, 1, 0.11, 0.11 );
setScaleKey( spep_0-3 + 150, 1, 0.13, 0.13 );
setScaleKey( spep_0-3 + 152, 1, 0.16, 0.16 );
setScaleKey( spep_0-3 + 154, 1, 0.22, 0.22 );
setScaleKey( spep_0-3 + 156, 1, 0.43, 0.43 );
setScaleKey( spep_0-3 + 157, 1, 0.43, 0.43 );

setScaleKey( spep_0-3 + 158, 1, 1.32, 1.32 );
setScaleKey( spep_0-3 + 160, 1, 1.16, 1.16 );
setScaleKey( spep_0-3 + 162, 1, 1.16, 1.16 );
setScaleKey( spep_0-3 + 164, 1, 1.21, 1.21 );
setScaleKey( spep_0-3 + 166, 1, 1.16, 1.16 );
setScaleKey( spep_0-3 + 170, 1, 1.16, 1.16 );
setScaleKey( spep_0-3 + 172, 1, 1.07, 1.07 );
setScaleKey( spep_0-3 + 174, 1, 0.7, 0.7 );
setScaleKey( spep_0-3 + 176, 1, 0.45, 0.45 );
setScaleKey( spep_0-3 + 178, 1, 0.32, 0.32 );
setScaleKey( spep_0-3 + 180, 1, 0.25, 0.25 );
setScaleKey( spep_0-3 + 182, 1, 0.21, 0.21 );
setScaleKey( spep_0-3 + 184, 1, 0.18, 0.18 );
setScaleKey( spep_0-3 + 186, 1, 0.17, 0.17 );
setScaleKey( spep_0-3 + 188, 1, 0.16, 0.16 );
setScaleKey( spep_0-3 + 191, 1, 0.16, 0.16 );

setScaleKey( spep_0-3 + 192, 1, 10.5, 10.5 );
setScaleKey( spep_0-3 + 213, 1, 10.5, 10.5 );

setScaleKey( spep_0-3 + 214, 1, 2.2, 2.2 );
setScaleKey( spep_0-3 + 216, 1, 2.2, 2.2 );
setScaleKey( spep_0-3 + 217, 1, 2.2, 2.2 );
setScaleKey( spep_0-3 + 218, 1, 2.19, 2.19 );
setScaleKey( spep_0-3 + 219, 1, 2.19, 2.19 );
setScaleKey( spep_0-3 + 220, 1, 2.19, 2.19 );
setScaleKey( spep_0-3 + 221, 1, 2.19, 2.19 );
setScaleKey( spep_0-3 + 222, 1, 2.18, 2.18 );
setScaleKey( spep_0-3 + 223, 1, 2.18, 2.18 );
setScaleKey( spep_0-3 + 224, 1, 2.18, 2.18 );
setScaleKey( spep_0-3 + 225, 1, 2.18, 2.18 );
setScaleKey( spep_0-3 + 226, 1, 2.17, 2.17 );
setScaleKey( spep_0-3 + 227, 1, 2.17, 2.17 );
setScaleKey( spep_0-3 + 228, 1, 2.16, 2.16 );
setScaleKey( spep_0-3 + 229, 1, 2.16, 2.16 );
setScaleKey( spep_0-3 + 230, 1, 2.15, 2.15 );
setScaleKey( spep_0-3 + 231, 1, 2.15, 2.15 );
setScaleKey( spep_0-3 + 232, 1, 2.15, 2.15 );
setScaleKey( spep_0-3 + 233, 1, 2.15, 2.15 );
setScaleKey( spep_0-3 + 234, 1, 2.14, 2.14 );
setScaleKey( spep_0-3 + 235, 1, 2.14, 2.14 );
setScaleKey( spep_0-3 + 236, 1, 2.13, 2.13 );
setScaleKey( spep_0-3 + 237, 1, 2.13, 2.13 );
setScaleKey( spep_0-3 + 238, 1, 2.12, 2.12 );
setScaleKey( spep_0-3 + 239, 1, 2.12, 2.12 );
setScaleKey( spep_0-3 + 240, 1, 2.11, 2.11 );
setScaleKey( spep_0-3 + 241, 1, 2.11, 2.11 );
setScaleKey( spep_0-3 + 242, 1, 2.1, 2.1 );
setScaleKey( spep_0-3 + 243, 1, 2.1, 2.1 );
setScaleKey( spep_0-3 + 244, 1, 2.09, 2.09 );
setScaleKey( spep_0-3 + 245, 1, 2.09, 2.09 );
setScaleKey( spep_0-3 + 246, 1, 2.08, 2.08 );
setScaleKey( spep_0-3 + 251, 1, 2.08, 2.08 );

setScaleKey( spep_0-3 + 252, 1, 2.04, 2.04 );
setScaleKey( spep_0-3 + 253, 1, 2.04, 2.04 );
setScaleKey( spep_0-3 + 254, 1, 2.03, 2.03 );
setScaleKey( spep_0-3 + 255, 1, 2.03, 2.03 );
setScaleKey( spep_0-3 + 256, 1, 2.01, 2.01 );
setScaleKey( spep_0-3 + 257, 1, 2.01, 2.01 );
setScaleKey( spep_0-3 + 258, 1, 2, 2 );
setScaleKey( spep_0-3 + 259, 1, 2, 2 );
setScaleKey( spep_0-3 + 260, 1, 1.98, 1.98 );
setScaleKey( spep_0-3 + 261, 1, 1.98, 1.98 );
setScaleKey( spep_0-3 + 262, 1, 1.97, 1.97 );
setScaleKey( spep_0-3 + 263, 1, 1.97, 1.97 );

setScaleKey( spep_0-3 + 264, 1, 0.84, 0.84 );
setScaleKey( spep_0-3 + 265, 1, 0.84, 0.84 );
setScaleKey( spep_0-3 + 266, 1, 0.83, 0.83 );
setScaleKey( spep_0-3 + 267, 1, 0.83, 0.83 );

setScaleKey( spep_0-3 + 268, 1, 1.92, 1.92 );
setScaleKey( spep_0-3 + 269, 1, 1.92, 1.92 );
setScaleKey( spep_0-3 + 270, 1, 1.91, 1.91 );
setScaleKey( spep_0-3 + 271, 1, 1.91, 1.91 );
setScaleKey( spep_0-3 + 272, 1, 1.89, 1.89 );
setScaleKey( spep_0-3 + 273, 1, 1.89, 1.89 );

setScaleKey( spep_0-3 + 274, 1, 0.8, 0.8 );
setScaleKey( spep_0-3 + 275, 1, 0.8, 0.8 );
setScaleKey( spep_0-3 + 276, 1, 0.79, 0.79 );
setScaleKey( spep_0-3 + 277, 1, 0.79, 0.79 );

setScaleKey( spep_0-3 + 278, 1, 1.83, 1.83 );
setScaleKey( spep_0-3 + 279, 1, 1.83, 1.83 );
setScaleKey( spep_0-3 + 280, 1, 1.81, 1.81 );
setScaleKey( spep_0-3 + 281, 1, 1.81, 1.81 );
setScaleKey( spep_0-3 + 282, 1, 1.79, 1.79 );
setScaleKey( spep_0-3 + 287, 1, 1.79, 1.79 );

setScaleKey( spep_0-3 + 288, 1, 0.74, 0.74 );
setScaleKey( spep_0-3 + 289, 1, 0.74, 0.74 );

setScaleKey( spep_0-3 + 290, 1, 1.71, 1.71 );
setScaleKey( spep_0-3 + 291, 1, 1.71, 1.71 );
setScaleKey( spep_0-3 + 292, 1, 1.69, 1.69 );
setScaleKey( spep_0-3 + 299, 1, 1.69, 1.69 );

setScaleKey( spep_0-3 + 300, 1, 0.68, 0.68 );
setScaleKey( spep_0-3 + 301, 1, 0.68, 0.68 );
setScaleKey( spep_0-3 + 302, 1, 0.67, 0.67 );
setScaleKey( spep_0-3 + 303, 1, 0.67, 0.67 );

setScaleKey( spep_0-3 + 304, 1, 1.54, 1.54 );
setScaleKey( spep_0-3 + 305, 1, 1.54, 1.54 );
setScaleKey( spep_0-3 + 306, 1, 1.52, 1.52 );
setScaleKey( spep_0-3 + 313, 1, 1.52, 1.52 );

setScaleKey( spep_0-3 + 314, 1, 0.6, 0.6 );
setScaleKey( spep_0-3 + 315, 1, 0.6, 0.6 );

setScaleKey( spep_0-3 + 316, 1, 1.38, 1.38 );
setScaleKey( spep_0-3 + 317, 1, 1.38, 1.38 );
setScaleKey( spep_0-3 + 318, 1, 1.35, 1.35 );
setScaleKey( spep_0-3 + 324, 1, 1.35, 1.35 );

setScaleKey( spep_0-3 + 326, 1, 0.53, 0.53 );
setScaleKey( spep_0-3 + 327, 1, 0.53, 0.53 );

setScaleKey( spep_0-3 + 328, 1, 1.2, 1.2 );
setScaleKey( spep_0-3 + 329, 1, 1.2, 1.2 );
setScaleKey( spep_0-3 + 330, 1, 1.17, 1.17 );
setScaleKey( spep_0-3 + 331, 1, 1.17, 1.17 );
setScaleKey( spep_0-3 + 332, 1, 1.13, 1.13 );
setScaleKey( spep_0-3 + 337, 1, 1.13, 1.13 );

setScaleKey( spep_0-3 + 338, 1, 0.44, 0.44 );
setScaleKey( spep_0-3 + 339, 1, 0.44, 0.44 );

setScaleKey( spep_0-3 + 340, 1, 1, 1 );
setScaleKey( spep_0-3 + 341, 1, 1, 1 );
setScaleKey( spep_0-3 + 342, 1, 0.96, 0.96 );
setScaleKey( spep_0-3 + 343, 1, 0.96, 0.96 );
setScaleKey( spep_0-3 + 344, 1, 0.92, 0.92 );
setScaleKey( spep_0-3 + 349, 1, 0.92, 0.92 );

setScaleKey( spep_0-3 + 350, 1, 0.35, 0.35 );
setScaleKey( spep_0-3 + 351, 1, 0.35, 0.35 );
setScaleKey( spep_0-3 + 352, 1, 0.33, 0.33 );
setScaleKey( spep_0-3 + 353, 1, 0.33, 0.33 );

setScaleKey( spep_0-3 + 354, 1, 0.74, 0.74 );
setScaleKey( spep_0-3 + 393, 1, 0.74, 0.74 );

setScaleKey( spep_0-3 + 394, 1, 9.42, 9.42 );
setScaleKey( spep_0-3 + 396, 1, 9.77, 9.77 );
setScaleKey( spep_0-3 + 398, 1, 10.82, 10.82 );
setScaleKey( spep_0-3 + 400, 1, 12.57, 12.57 );
setScaleKey( spep_0-3 + 402, 1, 12.57, 12.57 );
setScaleKey( spep_0-3 + 404, 1, 12.56, 12.56 );
setScaleKey( spep_0-3 + 405, 1, 12.56, 12.56 );

setScaleKey( spep_0-3 + 406, 1, 12.59, 12.59 );
setScaleKey( spep_0-3 + 408, 1, 12.87, 12.87 );
setScaleKey( spep_0-3 + 410, 1, 13.41, 13.41 );
setScaleKey( spep_0-3 + 412, 1, 14.27, 14.27 );
setScaleKey( spep_0-3 + 413, 1, 14.27, 14.27 );

setScaleKey( spep_0-3 + 414, 1, 4.2, 4.2 );
setScaleKey( spep_0-3 + 416, 1, 5.25, 5.25 );
setScaleKey( spep_0-3 + 418, 1, 5.25, 5.25 );
setScaleKey( spep_0-3 + 420, 1, 4.72, 4.72 );
setScaleKey( spep_0-3 + 422, 1, 4.2, 4.2 );
setScaleKey( spep_0-3 + 424, 1, 3.67, 3.67 );
setScaleKey( spep_0-3 + 425, 1, 3.67, 3.67 );

setScaleKey( spep_0-3 + 426, 1, 4.72, 4.72 );
setScaleKey( spep_0-3 + 427, 1, 4.72, 4.72 );

setScaleKey( spep_0-3 + 428, 1, 3.15, 3.15 );
setScaleKey( spep_0-3 + 430, 1, 1.94, 1.94 );
setScaleKey( spep_0-3 + 432, 1, 1.37, 1.37 );
setScaleKey( spep_0-3 + 434, 1, 1, 1 );
setScaleKey( spep_0-3 + 436, 1, 0.74, 0.74 );
setScaleKey( spep_0-3 + 438, 1, 0.54, 0.54 );
setScaleKey( spep_0-3 + 440, 1, 0.4, 0.4 );
setScaleKey( spep_0-3 + 442, 1, 0.3, 0.3 );
setScaleKey( spep_0-3 + 444, 1, 0.23, 0.23 );
setScaleKey( spep_0-3 + 446, 1, 0.19, 0.19 );
setScaleKey( spep_0-3 + 448, 1, 0.16, 0.16 );
setScaleKey( spep_0-3 + 449, 1, 0.16, 0.16 );

setScaleKey( spep_0-3 + 450, 1, 1.37, 1.37 );
setScaleKey( spep_0-3 + 473, 1, 1.37, 1.37 );

setScaleKey( spep_0-3 + 474, 1, 0.08, 0.08 );
setScaleKey( spep_0-3 + 476, 1, 0.09, 0.09 );
setScaleKey( spep_0-3 + 478, 1, 0.09, 0.09 );
setScaleKey( spep_0-3 + 480, 1, 0.1, 0.1 );
setScaleKey( spep_0-3 + 482, 1, 0.1, 0.1 );
setScaleKey( spep_0-3 + 484, 1, 0.11, 0.11 );
setScaleKey( spep_0-3 + 486, 1, 0.13, 0.13 );
setScaleKey( spep_0-3 + 488, 1, 0.16, 0.16 );
setScaleKey( spep_0-3 + 490, 1, 0.22, 0.22 );
setScaleKey( spep_0-3 + 492, 1, 0.39, 0.39 );
setScaleKey( spep_0-3 + 494, 1, 0.5, 0.5 );
setScaleKey( spep_0-3 + 496, 1, 0.53, 0.53 );
setScaleKey( spep_0-3 + 497, 1, 0.53, 0.53 );

setScaleKey( spep_0-3 + 498, 1, 1.92, 1.92 );
setScaleKey( spep_0-3 + 500, 1, 1.66, 1.66 );
setScaleKey( spep_0-3 + 502, 1, 1.5, 1.5 );
setScaleKey( spep_0-3 + 503, 1, 1.5, 1.5 );

setScaleKey( spep_0-3 + 504, 1, 0.87, 0.87 );
setScaleKey( spep_0-3 + 506, 1, 0.6, 0.6 );
setScaleKey( spep_0-3 + 508, 1, 0.45, 0.45 );
setScaleKey( spep_0-3 + 510, 1, 0.35, 0.35 );
setScaleKey( spep_0-3 + 512, 1, 0.29, 0.29 );
setScaleKey( spep_0-3 + 514, 1, 0.24, 0.24 );
setScaleKey( spep_0-3 + 516, 1, 0.21, 0.21 );
setScaleKey( spep_0-3 + 518, 1, 0.19, 0.19 );
setScaleKey( spep_0-3 + 520, 1, 0.17, 0.17 );
setScaleKey( spep_0-3 + 522, 1, 0.16, 0.16 );
setScaleKey( spep_0-3 + 524, 1, 0.15, 0.15 );
setScaleKey( spep_0-3 + 526, 1, 0.14, 0.14 );
setScaleKey( spep_0-3 + 532, 1, 0.14, 0.14 );
setScaleKey( spep_0-3 + 534, 1, 0.13, 0.13 );
setScaleKey( spep_0-1 + 540, 1, 0.13, 0.13 );



setRotateKey( spep_0-3 + 78, 1, 0 );
setRotateKey( spep_0-3 + 113, 1, 0 );

setRotateKey( spep_0-3 + 114, 1, -80 );
setRotateKey( spep_0-3 + 116, 1, -79.8 );
setRotateKey( spep_0-3 + 118, 1, -79.7 );
setRotateKey( spep_0-3 + 120, 1, -79.4 );
setRotateKey( spep_0-3 + 122, 1, -79.1 );
setRotateKey( spep_0-3 + 124, 1, -78.5 );
setRotateKey( spep_0-3 + 126, 1, -77.1 );
setRotateKey( spep_0-3 + 128, 1, -70.3 );
setRotateKey( spep_0-3 + 130, 1, -63.8 );
setRotateKey( spep_0-3 + 132, 1, -61.2 );
setRotateKey( spep_0-3 + 134, 1, -60.2 );
setRotateKey( spep_0-3 + 136, 1, -60 );
setRotateKey( spep_0-3 + 137, 1, -60 );

setRotateKey( spep_0-3 + 138, 1, -20 );
setRotateKey( spep_0-3 + 157, 1, -20 );

setRotateKey( spep_0-3 + 158, 1, -40 );
setRotateKey( spep_0-3 + 191, 1, -40 );

setRotateKey( spep_0-3 + 192, 1, 80 );
setRotateKey( spep_0-3 + 194, 1, 80 );
setRotateKey( spep_0-3 + 195, 1, 80 );
setRotateKey( spep_0-3 + 196, 1, 25 );
setRotateKey( spep_0-3 + 198, 1, 25 );
setRotateKey( spep_0-3 + 199, 1, 25 );
setRotateKey( spep_0-3 + 200, 1, 20 );
setRotateKey( spep_0-3 + 201, 1, 20 );
setRotateKey( spep_0-3 + 202, 1, 19.8 );
setRotateKey( spep_0-3 + 203, 1, 19.8 );
setRotateKey( spep_0-3 + 204, 1, 19 );
setRotateKey( spep_0-3 + 205, 1, 19 );
setRotateKey( spep_0-3 + 206, 1, 18 );
setRotateKey( spep_0-3 + 207, 1, 18 );
setRotateKey( spep_0-3 + 208, 1, 17.2 );
setRotateKey( spep_0-3 + 209, 1, 17.2 );
setRotateKey( spep_0-3 + 210, 1, 17 );
setRotateKey( spep_0-3 + 213, 1, 17 );

setRotateKey( spep_0-3 + 214, 1, -30 );
setRotateKey( spep_0-3 + 216, 1, -30 );
setRotateKey( spep_0-3 + 217, 1, -30 );
setRotateKey( spep_0-3 + 218, 1, -40 );
setRotateKey( spep_0-3 + 220, 1, -40 );
setRotateKey( spep_0-3 + 221, 1, -40 );
setRotateKey( spep_0-3 + 222, 1, -75 );
setRotateKey( spep_0-3 + 226, 1, -75 );
setRotateKey( spep_0-3 + 227, 1, -75 );
setRotateKey( spep_0-3 + 228, 1, -170 );
setRotateKey( spep_0-3 + 230, 1, -170 );
setRotateKey( spep_0-3 + 231, 1, -170 );
setRotateKey( spep_0-3 + 232, 1, -315 );
setRotateKey( spep_0-3 + 236, 1, -315 );
setRotateKey( spep_0-3 + 237, 1, -315 );
setRotateKey( spep_0-3 + 238, 1, -395 );
setRotateKey( spep_0-3 + 240, 1, -395 );
setRotateKey( spep_0-3 + 241, 1, -395 );
setRotateKey( spep_0-3 + 242, 1, -460 );
setRotateKey( spep_0-3 + 246, 1, -460 );
setRotateKey( spep_0-3 + 251, 1, -460 );

setRotateKey( spep_0-3 + 252, 1, -300 );
setRotateKey( spep_0-3 + 256, 1, -300 );
setRotateKey( spep_0-3 + 257, 1, -300 );
setRotateKey( spep_0-3 + 258, 1, -395 );
setRotateKey( spep_0-3 + 262, 1, -395 );
setRotateKey( spep_0-3 + 263, 1, -395 );

setRotateKey( spep_0-3 + 264, 1, -389.2 );
setRotateKey( spep_0-3 + 266, 1, -389.2 );
setRotateKey( spep_0-3 + 267, 1, -389.2 );

setRotateKey( spep_0-3 + 268, 1, -450 );
setRotateKey( spep_0-3 + 272, 1, -450 );
setRotateKey( spep_0-3 + 273, 1, -450 );

setRotateKey( spep_0-3 + 274, 1, -360 );
setRotateKey( spep_0-3 + 276, 1, -360 );
setRotateKey( spep_0-3 + 277, 1, -360 );

setRotateKey( spep_0-3 + 278, 1, -450 );
setRotateKey( spep_0-3 + 279, 1, -450 );
setRotateKey( spep_0-3 + 280, 1, -345 );
setRotateKey( spep_0-3 + 282, 1, -345 );
setRotateKey( spep_0-3 + 287, 1, -345 );

setRotateKey( spep_0-3 + 288, 1, -360 );
setRotateKey( spep_0-3 + 289, 1, -360 );

setRotateKey( spep_0-3 + 290, 1, -450 );
setRotateKey( spep_0-3 + 299, 1, -450 );

setRotateKey( spep_0-3 + 300, 1, -360 );
setRotateKey( spep_0-3 + 303, 1, -360 );

setRotateKey( spep_0-3 + 304, 1, -450 );
setRotateKey( spep_0-3 + 305, 1, -450 );
setRotateKey( spep_0-3 + 306, 1, -345 );
setRotateKey( spep_0-3 + 313, 1, -345 );

setRotateKey( spep_0-3 + 314, 1, -360 );
setRotateKey( spep_0-3 + 315, 1, -360 );

setRotateKey( spep_0-3 + 316, 1, -450 );
setRotateKey( spep_0-3 + 317, 1, -450 );
setRotateKey( spep_0-3 + 318, 1, -345 );
setRotateKey( spep_0-3 + 325, 1, -345 );

setRotateKey( spep_0-3 + 326, 1, -360 );
setRotateKey( spep_0-3 + 327, 1, -360 );

setRotateKey( spep_0-3 + 328, 1, -450 );
setRotateKey( spep_0-3 + 329, 1, -450 );
setRotateKey( spep_0-3 + 330, 1, -345 );
setRotateKey( spep_0-3 + 332, 1, -345 );
setRotateKey( spep_0-3 + 337, 1, -345 );

setRotateKey( spep_0-3 + 338, 1, -360 );
setRotateKey( spep_0-3 + 339, 1, -360 );

setRotateKey( spep_0-3 + 340, 1, -450 );
setRotateKey( spep_0-3 + 342, 1, -450 );
setRotateKey( spep_0-3 + 343, 1, -450 );
setRotateKey( spep_0-3 + 344, 1, -345 );
setRotateKey( spep_0-3 + 349, 1, -345 );

setRotateKey( spep_0-3 + 350, 1, -360 );
setRotateKey( spep_0-3 + 353, 1, -360 );

setRotateKey( spep_0-3 + 354, 1, -450 );
setRotateKey( spep_0-3 + 393, 1, -450 );

setRotateKey( spep_0-3 + 394, 1, -60.1 );
setRotateKey( spep_0-3 + 396, 1, -61.2 );
setRotateKey( spep_0-3 + 398, 1, -64.6 );
setRotateKey( spep_0-3 + 400, 1, -70.2 );
setRotateKey( spep_0-3 + 405, 1, -70.2 );

setRotateKey( spep_0-3 + 406, 1, 55 );
setRotateKey( spep_0-3 + 408, 1, 57.5 );
setRotateKey( spep_0-3 + 410, 1, 62.3 );
setRotateKey( spep_0-3 + 412, 1, 70 );
setRotateKey( spep_0-3 + 413, 1, 70 );

setRotateKey( spep_0-3 + 414, 1, 15 );
setRotateKey( spep_0-3 + 416, 1, -5 );
setRotateKey( spep_0-3 + 418, 1, -5 );
setRotateKey( spep_0-3 + 420, 1, -75 );
setRotateKey( spep_0-3 + 422, 1, -82.5 );
setRotateKey( spep_0-3 + 424, 1, -90 );
setRotateKey( spep_0-3 + 425, 1, -90 );

setRotateKey( spep_0-3 + 426, 1, -15 );
setRotateKey( spep_0-3 + 427, 1, -15 );

setRotateKey( spep_0-3 + 428, 1, 50 );
setRotateKey( spep_0-3 + 449, 1, 50 );

setRotateKey( spep_0-3 + 450, 1, -75 );
setRotateKey( spep_0-3 + 473, 1, -75 );

setRotateKey( spep_0-3 + 474, 1, 40 );
setRotateKey( spep_0-3 + 497, 1, 40 );

setRotateKey( spep_0-3 + 498, 1, 0 );
setRotateKey( spep_0-3 + 500, 1, 0.2 );
setRotateKey( spep_0-3 + 502, 1, 2.1 );
setRotateKey( spep_0-3 + 503, 1, 2.1 );

setRotateKey( spep_0-3 + 504, 1, -22.7 );
setRotateKey( spep_0-3 + 506, 1, -20 );
setRotateKey( spep_0-3 + 508, 1, -18.4 );
setRotateKey( spep_0-3 + 510, 1, -17.4 );
setRotateKey( spep_0-3 + 512, 1, -16.7 );
setRotateKey( spep_0-3 + 514, 1, -16.2 );
setRotateKey( spep_0-3 + 516, 1, -15.9 );
setRotateKey( spep_0-3 + 518, 1, -15.6 );
setRotateKey( spep_0-3 + 520, 1, -15.4 );
setRotateKey( spep_0-3 + 522, 1, -15.3 );
setRotateKey( spep_0-3 + 524, 1, -15.2 );
setRotateKey( spep_0-3 + 526, 1, -15.1 );
setRotateKey( spep_0-3 + 528, 1, -15.1 );
setRotateKey( spep_0-3 + 530, 1, -15 );
setRotateKey( spep_0-1 + 540, 1, -15 );

--文字エントリー
ctga = entryEffectLife( spep_0-3 + 114,  10005, 22, 0x100, -1, 0, 138.4, -26.6 );--ガッ

setEffMoveKey( spep_0-3 + 114, ctga, 138.4, -26.6 , 0 );
setEffMoveKey( spep_0-3 + 116, ctga, 183.2, 94.9 , 0 );
setEffMoveKey( spep_0-3 + 118, ctga, 219.5, 137.9 , 0 );
setEffMoveKey( spep_0-3 + 120, ctga, 219.5, 173.5 , 0 );
setEffMoveKey( spep_0-3 + 122, ctga, 220, 182.8 , 0 );
setEffMoveKey( spep_0-3 + 124, ctga, 239.4, 170.4 , 0 );
setEffMoveKey( spep_0-3 + 126, ctga, 226.1, 194.3 , 0 );
setEffMoveKey( spep_0-3 + 128, ctga, 238.5, 177.5 , 0 );
setEffMoveKey( spep_0-3 + 130, ctga, 230, 218.9 , 0 );
setEffMoveKey( spep_0-3 + 132, ctga, 270.5, 235.3 , 0 );
setEffMoveKey( spep_0-3 + 134, ctga, 242.9, 246.7 , 0 );
setEffMoveKey( spep_0-3 + 136, ctga, 260.3, 242.3 , 0 );

setEffScaleKey( spep_0-3 + 114, ctga, 1.03, 1.03 );
setEffScaleKey( spep_0-3 + 116, ctga, 2.2, 2.19 );
setEffScaleKey( spep_0-3 + 118, ctga, 2.68, 2.67 );
setEffScaleKey( spep_0-3 + 120, ctga, 2.93, 2.91 );
setEffScaleKey( spep_0-3 + 122, ctga, 3.01, 3 );
setEffScaleKey( spep_0-3 + 124, ctga, 3.03, 3.02 );
setEffScaleKey( spep_0-3 + 126, ctga, 3.11, 3.09 );
setEffScaleKey( spep_0-3 + 128, ctga, 3.28, 3.26 );
setEffScaleKey( spep_0-3 + 130, ctga, 3.57, 3.55 );
setEffScaleKey( spep_0-3 + 132, ctga, 3.86, 3.84 );
setEffScaleKey( spep_0-3 + 134, ctga, 4.01, 3.99 );
setEffScaleKey( spep_0-3 + 136, ctga, 4.06, 4.04 );

setEffRotateKey( spep_0-3 + 114, ctga, 0 );
setEffRotateKey( spep_0-3 + 136, ctga, 0 );

setEffAlphaKey( spep_0-3 + 114, ctga, 255 );
setEffAlphaKey( spep_0-3 + 122, ctga, 255 );
setEffAlphaKey( spep_0-3 + 124, ctga, 251 );
setEffAlphaKey( spep_0-3 + 126, ctga, 234 );
setEffAlphaKey( spep_0-3 + 128, ctga, 197 );
setEffAlphaKey( spep_0-3 + 130, ctga, 134 );
setEffAlphaKey( spep_0-3 + 132, ctga, 70 );
setEffAlphaKey( spep_0-3 + 134, ctga, 37 );
setEffAlphaKey( spep_0-3 + 136, ctga, 26 );

--文字エントリー
ctaki = entryEffectLife( spep_0-3 + 160,  10020, 24, 0x100, -1, 0, -20.6, 99 );--バキッ

setEffMoveKey( spep_0-3 + 160, ctaki, -20.6, 99 , 0 );
setEffMoveKey( spep_0-3 + 162, ctaki, -69.6, 192.4 , 0 );
setEffMoveKey( spep_0-3 + 164, ctaki, -68.3, 204.8 , 0 );
setEffMoveKey( spep_0-3 + 166, ctaki, -72.3, 220.2 , 0 );
setEffMoveKey( spep_0-3 + 168, ctaki, -76.5, 208.5 , 0 );
setEffMoveKey( spep_0-3 + 170, ctaki, -81.6, 221.7 , 0 );
setEffMoveKey( spep_0-3 + 172, ctaki, -96.6, 237.8 , 0 );
setEffMoveKey( spep_0-3 + 174, ctaki, -102.5, 257.1 , 0 );
setEffMoveKey( spep_0-3 + 176, ctaki, -133.8, 285.7 , 0 );
setEffMoveKey( spep_0-3 + 178, ctaki, -125.9, 302.6 , 0 );
setEffMoveKey( spep_0-3 + 180, ctaki, -134.3, 292.1 , 0 );
setEffMoveKey( spep_0-3 + 182, ctaki, -138.2, 305.6 , 0 );
setEffMoveKey( spep_0-3 + 184, ctaki, -138.6, 306.4 , 0 );

setEffScaleKey( spep_0-3 + 160, ctaki, 0.7, 0.7 );
setEffScaleKey( spep_0-3 + 162, ctaki, 1.66, 1.66 );
setEffScaleKey( spep_0-3 + 164, ctaki, 1.87, 1.87 );
setEffScaleKey( spep_0-3 + 166, ctaki, 1.91, 1.91 );
setEffScaleKey( spep_0-3 + 168, ctaki, 1.92, 1.92 );
setEffScaleKey( spep_0-3 + 170, ctaki, 1.95, 1.95 );
setEffScaleKey( spep_0-3 + 172, ctaki, 2.04, 2.04 );
setEffScaleKey( spep_0-3 + 174, ctaki, 2.22, 2.22 );
setEffScaleKey( spep_0-3 + 176, ctaki, 2.35, 2.35 );
setEffScaleKey( spep_0-3 + 178, ctaki, 2.42, 2.42 );
setEffScaleKey( spep_0-3 + 180, ctaki, 2.45, 2.45 );
setEffScaleKey( spep_0-3 + 182, ctaki, 2.48, 2.48 );
setEffScaleKey( spep_0-3 + 184, ctaki, 2.49, 2.49 );

setEffRotateKey( spep_0-3 + 160, ctaki, -13.5 );
setEffRotateKey( spep_0-3 + 184, ctaki, -13.5 );

setEffAlphaKey( spep_0-3 + 160, ctaki, 255 );
setEffAlphaKey( spep_0-3 + 166, ctaki, 255 );
setEffAlphaKey( spep_0-3 + 168, ctaki, 251 );
setEffAlphaKey( spep_0-3 + 170, ctaki, 236 );
setEffAlphaKey( spep_0-3 + 172, ctaki, 195 );
setEffAlphaKey( spep_0-3 + 174, ctaki, 119 );
setEffAlphaKey( spep_0-3 + 176, ctaki, 62 );
setEffAlphaKey( spep_0-3 + 178, ctaki, 31 );
setEffAlphaKey( spep_0-3 + 180, ctaki, 14 );
setEffAlphaKey( spep_0-3 + 182, ctaki, 5 );
setEffAlphaKey( spep_0-3 + 184, ctaki, 0 );

--文字エントリー
ctba = entryEffectLife( spep_0-3 + 200,  10022, 12, 0x100, -1, 0, -93.9, 209.2 );

setEffMoveKey( spep_0-3 + 200, ctba, -93.9, 209.2 , 0 );
setEffMoveKey( spep_0-3 + 202, ctba, -71.3, 237.1 , 0 );
setEffMoveKey( spep_0-3 + 204, ctba, 39.9, 291 , 0 );
setEffMoveKey( spep_0-3 + 206, ctba, 24.9, 290.1 , 0 );
setEffMoveKey( spep_0-3 + 208, ctba, 51.4, 273.9 , 0 );
setEffMoveKey( spep_0-3 + 210, ctba, 83.6, 284.1 , 0 );
setEffMoveKey( spep_0-3 + 212, ctba, 99, 303.1 , 0 );

setEffScaleKey( spep_0-3 + 200, ctba, 1.75, 1.76 );
setEffScaleKey( spep_0-3 + 202, ctba, 2.15, 2.16 );
setEffScaleKey( spep_0-3 + 204, ctba, 3.34, 3.37 );
setEffScaleKey( spep_0-3 + 206, ctba, 3.46, 3.49 );
setEffScaleKey( spep_0-3 + 208, ctba, 3.57, 3.6 );
setEffScaleKey( spep_0-3 + 210, ctba, 3.69, 3.72 );
setEffScaleKey( spep_0-3 + 212, ctba, 3.8, 3.84 );

setEffRotateKey( spep_0-3 + 200, ctba, 0 );
setEffRotateKey( spep_0-3 + 212, ctba, 0 );

--文字エントリー
ctdon = entryEffectLife( spep_0-3 + 498,  10019, 28, 0x100, -1, 0, -18.5, 153.6 );

setEffMoveKey( spep_0-3 + 498, ctdon, -18.5, 153.6 , 0 );
setEffMoveKey( spep_0-3 + 500, ctdon, 8.1, 191.2 , 0 );
setEffMoveKey( spep_0-3 + 502, ctdon, 38.4, 205.5 , 0 );
setEffMoveKey( spep_0-3 + 504, ctdon, 37.9, 224.4 , 0 );
setEffMoveKey( spep_0-3 + 506, ctdon, 58.1, 220.4 , 0 );
setEffMoveKey( spep_0-3 + 508, ctdon, 45.5, 221.4 , 0 );
setEffMoveKey( spep_0-3 + 510, ctdon, 53.5, 231 , 0 );
setEffMoveKey( spep_0-3 + 512, ctdon, 54.7, 216.5 , 0 );
setEffMoveKey( spep_0-3 + 514, ctdon, 52, 235.1 , 0 );
setEffMoveKey( spep_0-3 + 516, ctdon, 63.9, 227.3 , 0 );
setEffMoveKey( spep_0-3 + 518, ctdon, 65.5, 240.1 , 0 );
setEffMoveKey( spep_0-3 + 520, ctdon, 81.1, 239.6 , 0 );
setEffMoveKey( spep_0-3 + 522, ctdon, 87.2, 253.8 , 0 );
setEffMoveKey( spep_0-3 + 524, ctdon, 88.3, 244.5 , 0 );
setEffMoveKey( spep_0-3 + 526, ctdon, 89.5, 244.9 , 0 );

setEffScaleKey( spep_0-3 + 498, ctdon, 1, 1 );
setEffScaleKey( spep_0-3 + 500, ctdon, 1.77, 1.77 );
setEffScaleKey( spep_0-3 + 502, ctdon, 2.13, 2.13 );
setEffScaleKey( spep_0-3 + 504, ctdon, 2.34, 2.34 );
setEffScaleKey( spep_0-3 + 506, ctdon, 2.46, 2.46 );
setEffScaleKey( spep_0-3 + 508, ctdon, 2.5, 2.5 );
setEffScaleKey( spep_0-3 + 510, ctdon, 2.5, 2.5 );
setEffScaleKey( spep_0-3 + 512, ctdon, 2.52, 2.52 );
setEffScaleKey( spep_0-3 + 514, ctdon, 2.55, 2.55 );
setEffScaleKey( spep_0-3 + 516, ctdon, 2.62, 2.62 );
setEffScaleKey( spep_0-3 + 518, ctdon, 2.76, 2.76 );
setEffScaleKey( spep_0-3 + 520, ctdon, 2.88, 2.88 );
setEffScaleKey( spep_0-3 + 522, ctdon, 2.96, 2.96 );
setEffScaleKey( spep_0-3 + 524, ctdon, 2.99, 2.99 );
setEffScaleKey( spep_0-3 + 526, ctdon, 3, 3 );

setEffRotateKey( spep_0-3 + 498, ctdon, -0.8 );
setEffRotateKey( spep_0-3 + 500, ctdon, -0.2 );
setEffRotateKey( spep_0-3 + 502, ctdon, 0 );
setEffRotateKey( spep_0-3 + 504, ctdon, 0.1 );
setEffRotateKey( spep_0-3 + 506, ctdon, 0.2 );
setEffRotateKey( spep_0-3 + 508, ctdon, 0.3 );
setEffRotateKey( spep_0-3 + 526, ctdon, 0.3 );

setEffAlphaKey( spep_0-3 + 498, ctdon, 255 );
setEffAlphaKey( spep_0-3 + 508, ctdon, 255 );
setEffAlphaKey( spep_0-3 + 510, ctdon, 253 );
setEffAlphaKey( spep_0-3 + 512, ctdon, 247 );
setEffAlphaKey( spep_0-3 + 514, ctdon, 231 );
setEffAlphaKey( spep_0-3 + 516, ctdon, 195 );
setEffAlphaKey( spep_0-3 + 518, ctdon, 124 );
setEffAlphaKey( spep_0-3 + 520, ctdon, 59 );
setEffAlphaKey( spep_0-3 + 522, ctdon, 22 );
setEffAlphaKey( spep_0-3 + 524, ctdon, 6 );
setEffAlphaKey( spep_0-3 + 526, ctdon, 0 );


-- ** 顔カットイン ** --
--speff = entryEffect( spep_0 + 550  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0 + 550  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_0 +562, 190006, 72, 0x100, -1, 0, 80, 510);-- ゴゴゴゴ

setEffMoveKey(  spep_0 +562,  ctgogo,  80,  510);
setEffMoveKey(  spep_0 +634,  ctgogo,  80,  510);

setEffAlphaKey( spep_0 +562, ctgogo, 0 );
setEffAlphaKey( spep_0 + 563, ctgogo, 255 );
setEffAlphaKey( spep_0 + 564, ctgogo, 255 );
setEffAlphaKey( spep_0 + 628, ctgogo, 255 );
setEffAlphaKey( spep_0 + 630, ctgogo, 191 );
setEffAlphaKey( spep_0 + 632, ctgogo, 112 );
setEffAlphaKey( spep_0 + 634, ctgogo, 64 );

setEffRotateKey(  spep_0 +562,  ctgogo,  0);
setEffRotateKey(  spep_0 +634,  ctgogo,  0);

setEffScaleKey(  spep_0 +562,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_0 +624,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_0 +634,  ctgogo, -1.07, 1.07 );

-- ** 音 ** --
playSe( spep_0 + 562, 1018 );


se_11091 = playSe( spep_0 + 70, 1109 );
playSe( spep_0 + 85, 1003 );
setSeVolume( spep_0 + 85, 1003, 79 );
se_1117 = playSe( spep_0 + 87, 1117 );
setSeVolume( spep_0 + 87, 1117, 158 );
playSe( spep_0 + 108, 1189 );
playSe( spep_0 + 114, 1120 );
se_11831 = playSe( spep_0 + 126, 1183 );
se_11211= playSe( spep_0 + 126, 1121 );
setSeVolume( spep_0 + 126, 1121, 63 );
se_11092 = playSe( spep_0 + 147, 1109 );
playSe( spep_0 + 155, 1004 );
playSe( spep_0 + 160, 1010 );
playSe( spep_0 + 164, 1110 );
se_11832 = playSe( spep_0 + 169, 1183 );
setSeVolume( spep_0 + 169, 1183, 32 );
se_11093 = playSe( spep_0 + 178, 1109 );
playSe( spep_0 + 187, 1233 );
setSeVolume( spep_0 + 187, 1233, 79 );
se_1007 = playSe( spep_0 + 200, 1007 );
setSeVolume( spep_0 + 200, 1007, 126 );
se_11821 = playSe( spep_0 + 227, 1182 );
setSeVolume( spep_0 + 227, 1182, 0 );
setSeVolume( spep_0 + 228, 1182, 0 );
setSeVolume( spep_0 + 229, 1182, 4.2 );
setSeVolume( spep_0 + 230, 1182, 8.4 );
setSeVolume( spep_0 + 231, 1182, 12.6 );
setSeVolume( spep_0 + 232, 1182, 16.8 );
setSeVolume( spep_0 + 233, 1182, 21 );
setSeVolume( spep_0 + 234, 1182, 25.2 );
setSeVolume( spep_0 + 235, 1182, 29.4 );
setSeVolume( spep_0 + 236, 1182, 33.6 );
setSeVolume( spep_0 + 237, 1182, 37.8 );
setSeVolume( spep_0 + 238, 1182, 42 );
setSeVolume( spep_0 + 239, 1182, 46.2 );
setSeVolume( spep_0 + 240, 1182, 50.4 );
setSeVolume( spep_0 + 241, 1182, 54.6 );
setSeVolume( spep_0 + 242, 1182, 58.8 );
setSeVolume( spep_0 + 243, 1182, 63 );
playSe( spep_0 + 233, 1004 );
setSeVolume( spep_0 + 233, 1004, 79 );
playSe( spep_0 + 261, 1004 );
se_11822 = playSe( spep_0 + 268, 1182 );
setSeVolume( spep_0 + 268, 1182, 0 );
setSeVolume( spep_0 + 269, 1182, 0 );
setSeVolume( spep_0 + 270, 1182, 5.27 );
setSeVolume( spep_0 + 271, 1182, 10.53 );
setSeVolume( spep_0 + 272, 1182, 15.8 );
setSeVolume( spep_0 + 273, 1182, 21.07 );
setSeVolume( spep_0 + 274, 1182, 26.33 );
setSeVolume( spep_0 + 275, 1182, 31.6 );
setSeVolume( spep_0 + 276, 1182, 36.87 );
setSeVolume( spep_0 + 277, 1182, 42.13 );
setSeVolume( spep_0 + 278, 1182, 47.4 );
setSeVolume( spep_0 + 279, 1182, 52.67 );
setSeVolume( spep_0 + 280, 1182, 57.93 );
setSeVolume( spep_0 + 281, 1182, 63.2 );
setSeVolume( spep_0 + 282, 1182, 68.47 );
setSeVolume( spep_0 + 283, 1182, 73.73 );
setSeVolume( spep_0 + 284, 1182, 79 );
se_00081 = playSe( spep_0 + 272, 8 );
setSeVolume( spep_0 + 272, 8, 50 );
playSe( spep_0 + 287, 1003 );
setSeVolume( spep_0 + 287, 1003, 63 );
se_00082 = playSe( spep_0 + 295, 8 );
setSeVolume( spep_0 + 295, 8, 56 );
playSe( spep_0 + 309, 1003 );
setSeVolume( spep_0 + 309, 1003, 89 );
playSe( spep_0 + 312, 1182 );
setSeVolume( spep_0 + 312, 1182, 0 );
setSeVolume( spep_0 + 313, 1182, 0 );
setSeVolume( spep_0 + 314, 1182, 6.67 );
setSeVolume( spep_0 + 315, 1182, 13.33 );
setSeVolume( spep_0 + 316, 1182, 20 );
setSeVolume( spep_0 + 317, 1182, 26.67 );
setSeVolume( spep_0 + 318, 1182, 33.33 );
setSeVolume( spep_0 + 319, 1182, 40 );
setSeVolume( spep_0 + 320, 1182, 46.67 );
setSeVolume( spep_0 + 321, 1182, 53.33 );
setSeVolume( spep_0 + 322, 1182, 60 );
setSeVolume( spep_0 + 323, 1182, 66.67 );
setSeVolume( spep_0 + 324, 1182, 73.33 );
setSeVolume( spep_0 + 325, 1182, 80 );
setSeVolume( spep_0 + 326, 1182, 86.67 );
setSeVolume( spep_0 + 327, 1182, 93.33 );
setSeVolume( spep_0 + 328, 1182, 100 );
se_00083 = playSe( spep_0 + 316, 8 );
setSeVolume( spep_0 + 316, 8, 126 );
playSe( spep_0 + 322, 4 );
setSeVolume( spep_0 + 322, 4, 50 );
playSe( spep_0 + 325, 1003 );
setSeVolume( spep_0 + 325, 1003, 79 );
se_00084 = playSe( spep_0 + 325, 8 );
setSeVolume( spep_0 + 325, 8, 79 );
playSe( spep_0 + 330, 4 );
setSeVolume( spep_0 + 330, 4, 71 );
se_00085 = playSe( spep_0 + 333, 8 );
playSe( spep_0 + 337, 4 );
setSeVolume( spep_0 + 337, 4, 79 );
playSe( spep_0 + 340, 1003 );
setSeVolume( spep_0 + 340, 1003, 89 );
se_00086 = playSe( spep_0 + 343, 8 );
playSe( spep_0 + 344, 4 );
setSeVolume( spep_0 + 344, 4, 89 );
se_00087 = playSe( spep_0 + 347, 8 );
setSeVolume( spep_0 + 347, 8, 158 );
playSe( spep_0 + 348, 4 );
se_1116 = playSe( spep_0 + 356, 1116 );
setSeVolume( spep_0 + 356, 9, 112 );
playSe( spep_0 + 356, 9 );
se_1119 = playSe( spep_0 + 360, 1119 );
setSeVolume( spep_0 + 360, 1119, 32 );
playSe( spep_0 + 422, 1004 );
playSe( spep_0 + 423, 1064 );
playSe( spep_0 + 423, 1182 );
playSe( spep_0 + 430, 8 );
se_1121 = playSe( spep_0 + 442, 1121 );
setSeVolume( spep_0 + 442, 1121, 71 );
playSe( spep_0 + 470, 43 );
playSe( spep_0 + 502, 1189 );
playSe( spep_0 + 505, 1123 );
setSeVolume( spep_0 + 505, 1123, 89 );
se_1158 = playSe( spep_0 + 509, 1158 );
setSeVolume( spep_0 + 509, 1158, 0 );
setSeVolume( spep_0 + 584, 1158, 0 );
setSeVolume( spep_0 + 585, 1158, 21 );
setSeVolume( spep_0 + 586, 1158, 42 );
setSeVolume( spep_0 + 587, 1158, 63 );
playSe( spep_0 + 570, 1003 );
setSeVolume( spep_0 + 570, 1003, 79 );
se_1224 = playSe( spep_0 + 586, 1224 );
setSeVolume( spep_0 + 586, 1224, 63 );
playSe( spep_0 + 598, 1225 );


stopSe( spep_0 + 62, se_1024, 22 );
stopSe( spep_0 + 88, se_11091, 9 );
stopSe( spep_0 + 126, se_1117, 0 );
stopSe( spep_0 + 160, se_11831, 0 );
stopSe( spep_0 + 160, se_11211, 0 );
stopSe( spep_0 + 165, se_11092, 9 );
stopSe( spep_0 + 216, se_11832, 0 );
stopSe( spep_0 + 196, se_11093, 9 );
stopSe( spep_0 + 220, se_1007, 0 );
stopSe( spep_0 + 268, se_11821, 0 );
stopSe( spep_0 + 312, se_11822, 0 );
stopSe( spep_0 + 297, se_00081, 0 );
stopSe( spep_0 + 318, se_00082, 0 );
stopSe( spep_0 + 327, se_00083, 0 );
stopSe( spep_0 + 337, se_00084, 0 );
stopSe( spep_0 + 346, se_00085, 0 );
stopSe( spep_0 + 351, se_00086, 0 );
stopSe( spep_0 + 358, se_00087, 0 );
stopSe( spep_0 + 377, se_1116, 10 );
stopSe( spep_0 + 408, se_1119, 7 );
stopSe( spep_0 + 529, se_1121, 0 );
stopSe( spep_0 + 600, se_1224, 16 );


--白フェード
entryFade( spep_0 + 636, 0, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--はじめの準備
spep_1=spep_0+644;

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
stopSe( spep_1 + 5, se_1158, 0 );

--白フェード
entryFade( spep_1 + 80, 6, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

------------------------------------------------------
-- 対峙
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_03x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 410, finish_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 410, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 410, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 410, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_2 + 0, SP_04x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 410, finish_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 410, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_b, 0 );
setEffRotateKey( spep_2 + 410, finish_b, 0 );

--敵の動き
setDisp( spep_2-3 + 114, 1, 1 );
setDisp( spep_2-1 + 190, 1, 0 );

changeAnime( spep_2-3 +114 , 1, 106 );

setMoveKey( spep_2-3 + 114, 1, 464.7, 453.1 , 0 );
setMoveKey( spep_2-3 + 116, 1, 467.1, 449.1 , 0 );
setMoveKey( spep_2-3 + 118, 1, 461.4, 445.2 , 0 );
setMoveKey( spep_2-3 + 120, 1, 462.4, 444.8 , 0 );
setMoveKey( spep_2-3 + 122, 1, 460.8, 442.7 , 0 );
setMoveKey( spep_2-3 + 124, 1, 459.3, 440.8 , 0 );
setMoveKey( spep_2-3 + 126, 1, 457.8, 439 , 0 );
setMoveKey( spep_2-3 + 128, 1, 389.4, 367.4 , 0 );
setMoveKey( spep_2-3 + 130, 1, 354.4, 330.9 , 0 );
setMoveKey( spep_2-3 + 132, 1, 331.8, 307.2 , 0 );
setMoveKey( spep_2-3 + 134, 1, 316, 290.7 , 0 );
setMoveKey( spep_2-3 + 136, 1, 304.4, 278.6 , 0 );
setMoveKey( spep_2-3 + 138, 1, 295.9, 269.7 , 0 );
setMoveKey( spep_2-3 + 140, 1, 289.5, 263.1 , 0 );
setMoveKey( spep_2-3 + 142, 1, 284.8, 258.2 , 0 );
setMoveKey( spep_2-3 + 144, 1, 281.3, 254.6 , 0 );
setMoveKey( spep_2-3 + 146, 1, 279, 252.2 , 0 );
setMoveKey( spep_2-3 + 148, 1, 278.8, 252.1 , 0 );
setMoveKey( spep_2-3 + 150, 1, 278.6, 252 , 0 );
setMoveKey( spep_2-3 + 152, 1, 278.2, 251.7 , 0 );
setMoveKey( spep_2-3 + 154, 1, 277.5, 251.2 , 0 );
setMoveKey( spep_2-3 + 156, 1, 276.8, 250.6 , 0 );
setMoveKey( spep_2-3 + 158, 1, 275.7, 249.8 , 0 );
setMoveKey( spep_2-3 + 160, 1, 274.4, 248.8 , 0 );
setMoveKey( spep_2-3 + 162, 1, 272.8, 247.5 , 0 );
setMoveKey( spep_2-3 + 164, 1, 270.8, 245.9 , 0 );
setMoveKey( spep_2-3 + 166, 1, 268.3, 244 , 0 );
setMoveKey( spep_2-3 + 168, 1, 265.4, 241.5 , 0 );
setMoveKey( spep_2-3 + 170, 1, 261.6, 238.5 , 0 );
setMoveKey( spep_2-3 + 172, 1, 256.9, 234.7 , 0 );
setMoveKey( spep_2-3 + 174, 1, 250.9, 229.8 , 0 );
setMoveKey( spep_2-3 + 176, 1, 242.8, 223.2 , 0 );
setMoveKey( spep_2-3 + 178, 1, 230.8, 213.4 , 0 );
setMoveKey( spep_2-3 + 180, 1, 205.1, 163.2 , 0 );
setMoveKey( spep_2-3 + 182, 1, 146.4, 117.2 , 0 );
setMoveKey( spep_2-3 + 184, 1, 54.6, 84 , 0 );
setMoveKey( spep_2-3 + 186, 1, 47.6, 55.6 , 0 );
setMoveKey( spep_2-3 + 188, 1, 58.9, 73.6 , 0 );
setMoveKey( spep_2-1 + 190, 1, 100.6, 64.3 , 0 );

setScaleKey( spep_2-3 + 114, 1, 0.11, 0.11 );
setScaleKey( spep_2-3 + 116, 1, 0.11, 0.11 );
setScaleKey( spep_2-3 + 118, 1, 0.1, 0.1 );
setScaleKey( spep_2-3 + 126, 1, 0.1, 0.1 );
setScaleKey( spep_2-3 + 128, 1, 0.14, 0.14 );
setScaleKey( spep_2-3 + 130, 1, 0.16, 0.16 );
setScaleKey( spep_2-3 + 132, 1, 0.17, 0.17 );
setScaleKey( spep_2-3 + 134, 1, 0.18, 0.18 );
setScaleKey( spep_2-3 + 136, 1, 0.19, 0.19 );
setScaleKey( spep_2-3 + 140, 1, 0.19, 0.19 );
setScaleKey( spep_2-3 + 142, 1, 0.2, 0.2 );
setScaleKey( spep_2-3 + 154, 1, 0.2, 0.2 );
setScaleKey( spep_2-3 + 156, 1, 0.21, 0.21 );
setScaleKey( spep_2-3 + 160, 1, 0.21, 0.21 );
setScaleKey( spep_2-3 + 162, 1, 0.22, 0.22 );
setScaleKey( spep_2-3 + 164, 1, 0.22, 0.22 );
setScaleKey( spep_2-3 + 166, 1, 0.23, 0.23 );
setScaleKey( spep_2-3 + 168, 1, 0.23, 0.23 );
setScaleKey( spep_2-3 + 170, 1, 0.24, 0.24 );
setScaleKey( spep_2-3 + 172, 1, 0.26, 0.26 );
setScaleKey( spep_2-3 + 174, 1, 0.27, 0.27 );
setScaleKey( spep_2-3 + 176, 1, 0.29, 0.29 );
setScaleKey( spep_2-3 + 178, 1, 0.33, 0.33 );
setScaleKey( spep_2-3 + 180, 1, 0.39, 0.39 );
setScaleKey( spep_2-3 + 182, 1, 0.6, 0.6 );
setScaleKey( spep_2-3 + 184, 1, 0.75, 0.75 );
setScaleKey( spep_2-3 + 186, 1, 0.8, 0.8 );
setScaleKey( spep_2-3 + 188, 1, 0.79, 0.79 );
setScaleKey( spep_2-1 + 190, 1, 0.65, 0.65 );

setRotateKey( spep_2-3 + 114, 1, 0 );
setRotateKey( spep_2-1 + 190, 1, 0 );


--文字エントリー

ctzuo = entryEffectLife( spep_2-3 + 116,  10012, 28, 0x100, -1, 0, -45.1, 102.5 );

setEffMoveKey( spep_2-3 + 116, ctzuo, -45.1, 102.5 , 0 );
setEffMoveKey( spep_2-3 + 118, ctzuo, -42.3, 112.7 , 0 );
setEffMoveKey( spep_2-3 + 120, ctzuo, -68.7, 138.8 , 0 );
setEffMoveKey( spep_2-3 + 122, ctzuo, -98.3, 184.3 , 0 );
setEffMoveKey( spep_2-3 + 124, ctzuo, -81.3, 193.1 , 0 );
setEffMoveKey( spep_2-3 + 126, ctzuo, -103.1, 196.4 , 0 );
setEffMoveKey( spep_2-3 + 128, ctzuo, -82.9, 199.4 , 0 );
setEffMoveKey( spep_2-3 + 130, ctzuo, -104.5, 197.7 , 0 );
setEffMoveKey( spep_2-3 + 132, ctzuo, -85.7, 206.4 , 0 );
setEffMoveKey( spep_2-3 + 134, ctzuo, -123.2, 214.9 , 0 );
setEffMoveKey( spep_2-3 + 136, ctzuo, -95.1, 230.5 , 0 );
setEffMoveKey( spep_2-3 + 138, ctzuo, -142.8, 232.9 , 0 );
setEffMoveKey( spep_2-3 + 140, ctzuo, -100.6, 244.5 , 0 );
setEffMoveKey( spep_2-3 + 142, ctzuo, -151, 240.6 , 0 );
setEffMoveKey( spep_2-3 + 144, ctzuo, -152, 241.3 , 0 );

setEffScaleKey( spep_2-3 + 116, ctzuo, 0.9, 0.9 );
setEffScaleKey( spep_2-3 + 118, ctzuo, 1.05, 1.05 );
setEffScaleKey( spep_2-3 + 120, ctzuo, 1.5, 1.5 );
setEffScaleKey( spep_2-3 + 122, ctzuo, 2.25, 2.25 );
setEffScaleKey( spep_2-3 + 124, ctzuo, 2.35, 2.35 );
setEffScaleKey( spep_2-3 + 126, ctzuo, 2.44, 2.44 );
setEffScaleKey( spep_2-3 + 128, ctzuo, 2.46, 2.46 );
setEffScaleKey( spep_2-3 + 130, ctzuo, 2.55, 2.55 );
setEffScaleKey( spep_2-3 + 132, ctzuo, 2.97, 2.97 );
setEffScaleKey( spep_2-3 + 134, ctzuo, 3.91, 3.91 );
setEffScaleKey( spep_2-3 + 136, ctzuo, 4.72, 4.72 );
setEffScaleKey( spep_2-3 + 138, ctzuo, 5.34, 5.34 );
setEffScaleKey( spep_2-3 + 140, ctzuo, 5.75, 5.75 );
setEffScaleKey( spep_2-3 + 142, ctzuo, 5.95, 5.95 );
setEffScaleKey( spep_2-3 + 144, ctzuo, 6, 6 );

setEffRotateKey( spep_2-3 + 116, ctzuo, -27 );
setEffRotateKey( spep_2-3 + 144, ctzuo, -27 );

setEffAlphaKey( spep_2-3 + 116, ctzuo, 255 );
setEffAlphaKey( spep_2-3 + 126, ctzuo, 255 );
setEffAlphaKey( spep_2-3 + 128, ctzuo, 254 );
setEffAlphaKey( spep_2-3 + 130, ctzuo, 248 );
setEffAlphaKey( spep_2-3 + 132, ctzuo, 218 );
setEffAlphaKey( spep_2-3 + 134, ctzuo, 150 );
setEffAlphaKey( spep_2-3 + 136, ctzuo, 91 );
setEffAlphaKey( spep_2-3 + 138, ctzuo, 47 );
setEffAlphaKey( spep_2-3 + 140, ctzuo, 18 );
setEffAlphaKey( spep_2-3 + 142, ctzuo, 4 );
setEffAlphaKey( spep_2-3 + 144, ctzuo, 0 );

--SE
playSe( spep_2 + 0, 1036 );
setSeVolume( spep_2 + 0, 1036, 79 );
playSe( spep_2 + 17, 1072 );
playSe( spep_2 + 24, 1036 );
setSeVolume( spep_2 + 24, 1036, 79 );
playSe( spep_2 + 48, 1036 );
setSeVolume( spep_2 + 48, 1036, 79 );
playSe( spep_2 + 52, 1004 );
setSeVolume( spep_2 + 52, 1004, 71 );
playSe( spep_2 + 72, 1036 );
playSe( spep_2 + 96, 1036 );
se_1193 = playSe( spep_2 + 101, 1193 );
setSeVolume( spep_2 + 101, 1193, 0 );
setSeVolume( spep_2 + 106, 1193, 50 );
setSeVolume( spep_2 + 107, 1193, 100 );
setSeVolume( spep_2 + 108, 1193, 150 );
setSeVolume( spep_2 + 109, 1193, 200 );
playSe( spep_2 + 118, 1212 );
setSeVolume( spep_2 + 118, 1212, 45 );
playSe( spep_2 + 118, 1027 );
playSe( spep_2 + 140, 1022 );
setSeVolume( spep_2 + 140, 1022, 0 );
setSeVolume( spep_2 + 141, 1022, 4.86 );
setSeVolume( spep_2 + 142, 1022, 9.72 );
setSeVolume( spep_2 + 143, 1022, 14.59 );
setSeVolume( spep_2 + 144, 1022, 19.45 );
setSeVolume( spep_2 + 145, 1022, 24.31 );
setSeVolume( spep_2 + 146, 1022, 29.17 );
setSeVolume( spep_2 + 147, 1022, 34.03 );
setSeVolume( spep_2 + 148, 1022, 38.9 );
setSeVolume( spep_2 + 149, 1022, 43.76 );
setSeVolume( spep_2 + 150, 1022, 48.62 );
setSeVolume( spep_2 + 151, 1022, 53.48 );
setSeVolume( spep_2 + 152, 1022, 58.34 );
setSeVolume( spep_2 + 153, 1022, 63.21 );
setSeVolume( spep_2 + 154, 1022, 68.07 );
setSeVolume( spep_2 + 155, 1022, 72.93 );
setSeVolume( spep_2 + 156, 1022, 77.79 );
setSeVolume( spep_2 + 157, 1022, 82.66 );
setSeVolume( spep_2 + 158, 1022, 87.52 );
setSeVolume( spep_2 + 159, 1022, 92.38 );
setSeVolume( spep_2 + 160, 1022, 97.24 );
setSeVolume( spep_2 + 161, 1022, 102.1 );
setSeVolume( spep_2 + 162, 1022, 106.97 );
setSeVolume( spep_2 + 163, 1022, 111.83 );
setSeVolume( spep_2 + 164, 1022, 116.69 );
setSeVolume( spep_2 + 165, 1022, 121.55 );
setSeVolume( spep_2 + 166, 1022, 126.41 );
setSeVolume( spep_2 + 167, 1022, 131.28 );
setSeVolume( spep_2 + 168, 1022, 136.14 );
setSeVolume( spep_2 + 169, 1022, 141 );
playSe( spep_2 + 195, 1021 );
se_1176 = playSe( spep_2 + 204, 1176 );
playSe( spep_2 + 207, 1056 );
setSeVolume( spep_2 + 207, 1056, 50 );
playSe( spep_2 + 225, 1027 );
setSeVolume( spep_2 + 225, 1027, 89 );
setSeVolume( spep_2 + 255, 1147, 50 );
playSe( spep_2 + 239, 1027 );
setSeVolume( spep_2 + 239, 1027, 89 );
playSe( spep_2 + 252, 1027 );
se_1147 = playSe( spep_2 + 255, 1147 );
playSe( spep_2 + 266, 1027 );
setSeVolume( spep_2 + 266, 1027, 112 );
playSe( spep_2 + 276, 1159 );
setSeVolume( spep_2 + 276, 1159, 89 );
playSe( spep_2 + 347, 1024 );
playSe( spep_2 + 349, 1023 );
setSeVolume( spep_2 + 349, 1023, 126 );

stopSe( spep_2 + 139, se_1193, 141 );
stopSe( spep_2 + 296, se_1176, 32 );
stopSe( spep_2 + 293, se_1147, 0 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 400, 0,  0, 0, 0, 255 ); --くろ 背景

--終わり
dealDamage( spep_2 + 280 );
endPhase( spep_2 + 400 );

end