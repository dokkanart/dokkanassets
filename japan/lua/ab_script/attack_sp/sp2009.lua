--1019720:ケール_レジストキャノン
--sp_effect_a1_00239

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
SP_01=	155476	;--	構え〜連撃：敵より手前
SP_02=	155478	;--	気弾溜め
SP_03=	155480	;--	気弾発射
SP_04=	155482	;--	集中線：敵より後ろ
SP_05=	155483	;--	ギャン
SP_06=	155484	;--	流配&集中線：敵より後ろ
SP_07=	155485	;--	気弾着弾：敵より手前

--エフェクト(てき)
SP_01x=	155477	;--	構え〜連撃：敵より手前	(敵)
SP_02x=	155479	;--	気弾溜め	(敵)
SP_03x=	155481	;--	気弾発射	(敵)
SP_04x=	155482	;--	集中線：敵より後ろ	
SP_05x=	155483	;--	ギャン	
SP_06x=	155484	;--	流配&集中線：敵より後ろ	
SP_07x=	155485	;--	気弾着弾：敵より手前	


------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

if( _IS_EXTRA_ATTACK_ == 0 ) then
 adjustAttackerLabel( 0, 205);
end

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

--[[
setDisp( 0, 1, 0);
changeAnime( 0, 1, 100);
setAlphaKey( 0, 1, 255 );

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
]]

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 構え〜連撃
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
panting_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, panting_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 312, panting_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, panting_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 312, panting_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, panting_f, 0 );
setEffRotateKey( spep_0 + 312, panting_f, 0 );
setEffAlphaKey( spep_0 + 0, panting_f, 255 );
setEffAlphaKey( spep_0 + 312, panting_f, 255 );

-- ** エフェクト等 ** --
panting_b = entryEffect( spep_0 + 0, SP_06, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, panting_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 312, panting_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, panting_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 312, panting_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, panting_b, 0 );
setEffRotateKey( spep_0 + 312, panting_b, 0 );
setEffAlphaKey( spep_0 + 0, panting_b, 255 );
setEffAlphaKey( spep_0 + 312, panting_b, 255 );

--敵の動き
setDisp( spep_0 + 0, 1, 1 );

changeAnime( spep_0 + 0, 1, 100 );

setMoveKey( spep_0 + 0, 1, 251.3, 169.3 , 0 );
--setMoveKey( spep_0-3 + 2, 1, 247.4, 169.5 , 0 );
setMoveKey( spep_0-3 + 4, 1, 243.5, 169.8 , 0 );
setMoveKey( spep_0-3 + 6, 1, 239.6, 170 , 0 );
setMoveKey( spep_0-3 + 8, 1, 235.6, 170.2 , 0 );
setMoveKey( spep_0-3 + 10, 1, 231.8, 170.4 , 0 );
setMoveKey( spep_0-3 + 12, 1, 227.8, 170.6 , 0 );
setMoveKey( spep_0-3 + 14, 1, 223.9, 170.9 , 0 );
setMoveKey( spep_0-3 + 16, 1, 220.1, 171.1 , 0 );
setMoveKey( spep_0-3 + 18, 1, 216.2, 171.3 , 0 );
setMoveKey( spep_0-3 + 20, 1, 212.3, 171.6 , 0 );
setMoveKey( spep_0-3 + 22, 1, 208.4, 171.8 , 0 );
setMoveKey( spep_0-3 + 24, 1, 204.6, 171.9 , 0 );
setMoveKey( spep_0-3 + 26, 1, 200.7, 172.2 , 0 );
setMoveKey( spep_0-3 + 28, 1, 196.8, 172.4 , 0 );
setMoveKey( spep_0-3 + 30, 1, 193, 172.7 , 0 );
setMoveKey( spep_0-3 + 32, 1, 189.2, 172.9 , 0 );
setMoveKey( spep_0-3 + 34, 1, 185.3, 173.1 , 0 );
setMoveKey( spep_0-3 + 36, 1, 181.5, 173.4 , 0 );
setMoveKey( spep_0-3 + 38, 1, 165, 173.5 , 0 );
setMoveKey( spep_0-3 + 41, 1, 154.8, 173.5 , 0 );

setScaleKey( spep_0 + 0, 1, 0.55+0.5, 0.55+0.5 );
--setScaleKey( spep_0-3 + 2, 1, 0.58, 0.58 );
setScaleKey( spep_0-3 + 4, 1, 0.61+0.5, 0.61+0.5 );
setScaleKey( spep_0-3 + 6, 1, 0.64+0.5, 0.64+0.5 );
setScaleKey( spep_0-3 + 8, 1, 0.67+0.5, 0.67+0.5 );
setScaleKey( spep_0-3 + 10, 1, 0.7+0.5, 0.7+0.5 );
setScaleKey( spep_0-3 + 12, 1, 0.73+0.5, 0.73+0.5 );
setScaleKey( spep_0-3 + 14, 1, 0.76+0.5, 0.76+0.5 );
setScaleKey( spep_0-3 + 16, 1, 0.79+0.5, 0.79+0.5 );
setScaleKey( spep_0-3 + 18, 1, 0.82+0.5, 0.82+0.5 );
setScaleKey( spep_0-3 + 20, 1, 0.85+0.5, 0.85+0.5 );
setScaleKey( spep_0-3 + 22, 1, 0.87+0.5, 0.87+0.5 );
setScaleKey( spep_0-3 + 24, 1, 0.9+0.5, 0.9+0.5 );
setScaleKey( spep_0-3 + 26, 1, 0.93+0.5, 0.93+0.5 );
setScaleKey( spep_0-3 + 28, 1, 0.96+0.5, 0.96+0.5 );
setScaleKey( spep_0-3 + 30, 1, 0.99+0.5, 0.99+0.5 );
setScaleKey( spep_0-3 + 32, 1, 1.02+0.5, 1.02+0.5 );
setScaleKey( spep_0-3 + 34, 1, 1.05+0.5, 1.05+0.5 );
setScaleKey( spep_0-3 + 36, 1, 1.08+0.5, 1.08+0.5 );
setScaleKey( spep_0-3 + 38, 1, 1.27+0.5, 1.27+0.5 );
setScaleKey( spep_0-3 + 41, 1, 1.39+0.5, 1.39+0.5 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );

--SE
SE0=playSe( spep_0 + 0, 8 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 312, 0,  0, 0, 0, 180 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 40; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    
    stopSe( SP_dodge - 12, SE0, 0 );


    pauseAll( SP_dodge, 67 );
    
    --敵の動き
    setMoveKey( SP_dodge+9, 1, 154.8, 173.5 , 0 );
    setScaleKey( SP_dodge+9 + 42, 1, 1.39, 1.39 );
    setRotateKey( SP_dodge+9, 1, 0 );


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
setDisp( spep_0 + 108, 1, 0 );
setDisp( spep_0 + 148, 1, 1 );
setDisp( spep_0 + 310, 1, 0 );


changeAnime( spep_0-3 + 42, 1, 117 );
changeAnime( spep_0-3 + 58, 1, 108 );
changeAnime( spep_0-3 + 102, 1, 106 );
changeAnime( spep_0-3 + 176, 1, 108 );
changeAnime( spep_0-3 + 200, 1, 106 );
changeAnime( spep_0-3 + 250, 1, 108 );

setMoveKey( spep_0-3 + 42, 1, 146.9, 173.5 , 0 );
setMoveKey( spep_0-3 + 44, 1, 140.2, 173.5 , 0 );
setMoveKey( spep_0-3 + 46, 1, 134.5, 173.4 , 0 );
setMoveKey( spep_0-3 + 48, 1, 129.4, 173.4 , 0 );
setMoveKey( spep_0-3 + 50, 1, 125, 173.5 , 0 );
setMoveKey( spep_0-3 + 52, 1, 120.8, 173.4 , 0 );
setMoveKey( spep_0-3 + 54, 1, 117.1, 173.4 , 0 );
setMoveKey( spep_0-3 + 57, 1, 113.7, 173.2 , 0 );
setMoveKey( spep_0-3 + 58, 1, 130.5, 185.3 , 0 );
setMoveKey( spep_0-3 + 60, 1, 135.4, 207.2 , 0 );
setMoveKey( spep_0-3 + 62, 1, 140.5, 183.7 , 0 );
setMoveKey( spep_0-3 + 64, 1, 145.8, 197.3 , 0 );
setMoveKey( spep_0-3 + 66, 1, 142.5, 182.5 , 0 );
setMoveKey( spep_0-3 + 68, 1, 139, 195.1 , 0 );
setMoveKey( spep_0-3 + 70, 1, 135.6, 187.1 , 0 );
setMoveKey( spep_0-3 + 72, 1, 132.2, 187.9 , 0 );
setMoveKey( spep_0-3 + 74, 1, 128.9, 188.5 , 0 );
setMoveKey( spep_0-3 + 76, 1, 125.5, 188.7 , 0 );
setMoveKey( spep_0-3 + 78, 1, 122.2, 188.8 , 0 );
setMoveKey( spep_0-3 + 80, 1, 118.8, 188.7 , 0 );
setMoveKey( spep_0-3 + 82, 1, 115.5, 188.5 , 0 );
setMoveKey( spep_0-3 + 84, 1, 112.2, 188.1 , 0 );
setMoveKey( spep_0-3 + 86, 1, 108.9, 187.7 , 0 );
setMoveKey( spep_0-3 + 88, 1, 105.5, 187.1 , 0 );
setMoveKey( spep_0-3 + 90, 1, 102.2, 186.5 , 0 );
setMoveKey( spep_0-3 + 92, 1, 98.9, 185.8 , 0 );
setMoveKey( spep_0-3 + 94, 1, 95.6, 185.1 , 0 );
setMoveKey( spep_0-3 + 96, 1, 92.3, 184.3 , 0 );
setMoveKey( spep_0-3 + 98, 1, 89.1, 183.4 , 0 );
setMoveKey( spep_0-3 + 101, 1, 85.5, 182.6 , 0 );
setMoveKey( spep_0-3 + 102, 1, 23.1, 300.1 , 0 );
setMoveKey( spep_0-3 + 104, 1, 28.7, 471.5 , 0 );
setMoveKey( spep_0-3 + 106, 1, 23.1, 359.8 , 0 );
setMoveKey( spep_0-3 + 108, 1, 46.7, 650.2 , 0 );
setMoveKey( spep_0-3 + 110, 1, 62.6, 817.2 , 0 );
setMoveKey( spep_0-3 + 112, 1, 74.5, 966.1 , 0 );
setMoveKey( spep_0-3 + 114, 1, 83.9, 1065.3 , 0 );
setMoveKey( spep_0-3 + 116, 1, 91.5, 1153.7 , 0 );
setMoveKey( spep_0-3 + 118, 1, 97.9, 1227.3 , 0 );
setMoveKey( spep_0-3 + 120, 1, 103.3, 1289.7 , 0 );
setMoveKey( spep_0-3 + 122, 1, 108, 1343.9 , 0 );
setMoveKey( spep_0-3 + 124, 1, 112.1, 1391.9 , 0 );
setMoveKey( spep_0-3 + 126, 1, 115.8, 1435.4 , 0 );
setMoveKey( spep_0-3 + 132, 1, 115.8, 1435.4 , 0 );
setMoveKey( spep_0-3 + 134, 1, 115.9, 1435.5 , 0 );
setMoveKey( spep_0-3 + 136, 1, 115.9, 1435.6 , 0 );
setMoveKey( spep_0-3 + 140, 1, 115.9, 1435.6 , 0 );
setMoveKey( spep_0-3 + 142, 1, 116, 1435.7 , 0 );
setMoveKey( spep_0-3 + 144, 1, 116, 1435.7 , 0 );
setMoveKey( spep_0-3 + 146, 1, 116, 1435.8 , 0 );
setMoveKey( spep_0-3 + 148, 1, 115.8, 1435.6 , 0 );
setMoveKey( spep_0-3 + 150, 1, 31.7, -583.4 , 0 );
setMoveKey( spep_0-3 + 152, 1, 38.8, -544 , 0 );
setMoveKey( spep_0-3 + 154, 1, 45.8, -505.2 , 0 );
setMoveKey( spep_0-3 + 156, 1, 52.7, -466.6 , 0 );
setMoveKey( spep_0-3 + 158, 1, 59.5, -428.3 , 0 );
setMoveKey( spep_0-3 + 160, 1, 66.4, -390.1 , 0 );
setMoveKey( spep_0-3 + 162, 1, 73.2, -352.2 , 0 );
setMoveKey( spep_0-3 + 164, 1, 80, -314.2 , 0 );
setMoveKey( spep_0-3 + 166, 1, 86.8, -276.3 , 0 );
setMoveKey( spep_0-3 + 168, 1, 93.6, -238.2 , 0 );
setMoveKey( spep_0-3 + 170, 1, 100.5, -200 , 0 );
setMoveKey( spep_0-3 + 172, 1, 107.4, -161.6 , 0 );
setMoveKey( spep_0-3 + 175, 1, 114.4, -123 , 0 );
setMoveKey( spep_0-3 + 176, 1, 112.5, -27.2 , 0 );
setMoveKey( spep_0-3 + 178, 1, 106.8, -11.9 , 0 );
setMoveKey( spep_0-3 + 180, 1, 101.1, -38.7 , 0 );
setMoveKey( spep_0-3 + 182, 1, 101.2, -20.9 , 0 );
setMoveKey( spep_0-3 + 184, 1, 96.2, -35.7 , 0 );
setMoveKey( spep_0-3 + 186, 1, 91.2, -22.5 , 0 );
setMoveKey( spep_0-3 + 188, 1, 86.2, -29.8 , 0 );
setMoveKey( spep_0-3 + 190, 1, 81.3, -27.6 , 0 );
setMoveKey( spep_0-3 + 192, 1, 76.3, -25.4 , 0 );
setMoveKey( spep_0-3 + 194, 1, 71.2, -23.1 , 0 );
setMoveKey( spep_0-3 + 196, 1, 66.3, -20.9 , 0 );
setMoveKey( spep_0-3 + 199, 1, 61.3, -18.6 , 0 );
setMoveKey( spep_0-3 + 200, 1, 27.8, 72.9 , 0 );
setMoveKey( spep_0-3 + 202, 1, 18.5, 82.7 , 0 );
setMoveKey( spep_0-3 + 204, 1, 17, 58.7 , 0 );
setMoveKey( spep_0-3 + 206, 1, 40.1, 83.3 , 0 );
setMoveKey( spep_0-3 + 208, 1, 56.1, 71 , 0 );
setMoveKey( spep_0-3 + 210, 1, 68.8, 85.8 , 0 );
setMoveKey( spep_0-3 + 212, 1, 79.2, 79.3 , 0 );
setMoveKey( spep_0-3 + 214, 1, 88.1, 82 , 0 );
setMoveKey( spep_0-3 + 216, 1, 95.9, 84.3 , 0 );
setMoveKey( spep_0-3 + 218, 1, 102.8, 86.3 , 0 );
setMoveKey( spep_0-3 + 220, 1, 109, 88.1 , 0 );
setMoveKey( spep_0-3 + 222, 1, 114.6, 89.8 , 0 );
setMoveKey( spep_0-3 + 224, 1, 119.6, 91.3 , 0 );
setMoveKey( spep_0-3 + 226, 1, 124.1, 92.6 , 0 );
setMoveKey( spep_0-3 + 228, 1, 128.3, 93.9 , 0 );
setMoveKey( spep_0-3 + 230, 1, 132.1, 95 , 0 );
setMoveKey( spep_0-3 + 232, 1, 135.6, 96 , 0 );
setMoveKey( spep_0-3 + 234, 1, 138.8, 97 , 0 );
setMoveKey( spep_0-3 + 236, 1, 141.8, 97.8 , 0 );
setMoveKey( spep_0-3 + 238, 1, 144.4, 98.6 , 0 );
setMoveKey( spep_0-3 + 240, 1, 146.9, 99.4 , 0 );
setMoveKey( spep_0-3 + 242, 1, 149.1, 100 , 0 );
setMoveKey( spep_0-3 + 244, 1, 151.2, 100.6 , 0 );
setMoveKey( spep_0-3 + 246, 1, 153.1, 101.2 , 0 );
setMoveKey( spep_0-3 + 249, 1, 154.7, 101.6 , 0 );
setMoveKey( spep_0-3 + 250, 1, 121.4, 128.5 , 0 );
setMoveKey( spep_0-3 + 252, 1, 115.6, 84.8 , 0 );
setMoveKey( spep_0-3 + 254, 1, 109.8, 84.3 , 0 );
setMoveKey( spep_0-3 + 256, 1, 104.2, 52.2 , 0 );
setMoveKey( spep_0-3 + 258, 1, 103.7, 51.7 , 0 );
setMoveKey( spep_0-3 + 260, 1, 103.3, 31.3 , 0 );
setMoveKey( spep_0-3 + 262, 1, 103, 41.1 , 0 );
setMoveKey( spep_0-3 + 264, 1, 112.1, 9.8 , 0 );
setMoveKey( spep_0-3 + 266, 1, 210.4, -135.7 , 0 );
setMoveKey( spep_0-3 + 268, 1, 276.6, -260.2 , 0 );
setMoveKey( spep_0-3 + 270, 1, 325.5, -328 , 0 );
setMoveKey( spep_0-3 + 272, 1, 363.7, -398.4 , 0 );
setMoveKey( spep_0-3 + 274, 1, 407.2, -451.9 , 0 );
setMoveKey( spep_0-3 + 276, 1, 446.7, -523 , 0 );
setMoveKey( spep_0-3 + 278, 1, 483.1, -568.5 , 0 );
setMoveKey( spep_0-3 + 280, 1, 517.2, -623.4 , 0 );
setMoveKey( spep_0-3 + 282, 1, 549.3, -667.6 , 0 );
setMoveKey( spep_0-3 + 284, 1, 579.8, -714.4 , 0 );
setMoveKey( spep_0-3 + 286, 1, 608.9, -754.3 , 0 );
setMoveKey( spep_0-3 + 288, 1, 637, -795.7 , 0 );
setMoveKey( spep_0-3 + 290, 1, 664.1, -832.7 , 0 );
setMoveKey( spep_0-3 + 292, 1, 690.3, -871.3 , 0 );
setMoveKey( spep_0-3 + 294, 1, 715.9, -907.1 , 0 );
setMoveKey( spep_0-3 + 296, 1, 740.9, -941.9 , 0 );
setMoveKey( spep_0-3 + 298, 1, 765.3, -975.8 , 0 );
setMoveKey( spep_0-3 + 300, 1, 789.2, -1008.9 , 0 );
setMoveKey( spep_0-3 + 302, 1, 812.8, -1041.4 , 0 );
setMoveKey( spep_0-3 + 304, 1, 836, -1073.4 , 0 );
setMoveKey( spep_0-3 + 306, 1, 859.1, -1104.9 , 0 );
setMoveKey( spep_0-3 + 308, 1, 881.7, -1135.9 , 0 );
setMoveKey( spep_0 + 310, 1, 904.5, -1166.7 , 0 );


setScaleKey( spep_0-3 + 42, 1, 1.48+0.5, 1.48+0.5 );
setScaleKey( spep_0-3 + 44, 1, 1.56+0.5, 1.56+0.5 );
setScaleKey( spep_0-3 + 46, 1, 1.62+0.5, 1.62+0.5 );
setScaleKey( spep_0-3 + 48, 1, 1.68+0.5, 1.68+0.5 );
setScaleKey( spep_0-3 + 50, 1, 1.73+0.5, 1.73+0.5 );
setScaleKey( spep_0-3 + 52, 1, 1.78+0.5, 1.78+0.5 );
setScaleKey( spep_0-3 + 54, 1, 1.82+0.5, 1.82+0.5 );
setScaleKey( spep_0-3 + 57, 1, 1.86+0.5, 1.86+0.5 );

setScaleKey( spep_0-3 + 58, 1, 2.53+0.5, 2.53+0.5 );
setScaleKey( spep_0-3 + 60, 1, 2.16+0.5, 2.16+0.5 );
setScaleKey( spep_0-3 + 62, 1, 1.8+0.5, 1.8+0.5 );
setScaleKey( spep_0-3 + 64, 1, 1.43+0.5, 1.43+0.5 );
setScaleKey( spep_0-3 + 102, 1, 1.43+0.5, 1.43+0.5 );



setScaleKey( spep_0-3 + 104, 1, 1.65+0.5, 1.65+0.5 );
setScaleKey( spep_0-3 + 106, 1, 1.43+0.5, 1.43+0.5 );
setScaleKey( spep_0-3 + 148, 1, 1.43+0.5, 1.43+0.5 );
setScaleKey( spep_0-3 + 150, 1, 1.32+0.5, 1.32+0.5 );
setScaleKey( spep_0-3 + 175, 1, 1.32+0.5, 1.32+0.5 );


setScaleKey( spep_0-3 + 176, 1, 1.54+0.5, 1.54+0.5 );
setScaleKey( spep_0-3 + 178, 1, 1.43+0.5, 1.43+0.5 );
setScaleKey( spep_0-3 + 180, 1, 1.32+0.5, 1.32+0.5 );
setScaleKey( spep_0-3 + 199, 1, 1.32+0.5, 1.32+0.5 );
setScaleKey( spep_0-3 + 200, 1, 1.54+0.5, 1.54+0.5 );


setScaleKey( spep_0-3 + 202, 1, 1.35+0.5, 1.35+0.5 );
setScaleKey( spep_0-3 + 204, 1, 1.32+0.5, 1.32+0.5 );
setScaleKey( spep_0-3 + 249, 1, 1.32+0.5, 1.32+0.5 );
setScaleKey( spep_0-3 + 250, 1, 1.53+0.5, 1.53+0.5 );
setScaleKey( spep_0-3 + 252, 1, 1.43+0.5, 1.43+0.5 );
setScaleKey( spep_0-3 + 254, 1, 1.32+0.5, 1.32+0.5 );
setScaleKey( spep_0-3 + 256, 1, 1.21+0.5, 1.21+0.5 );
setScaleKey( spep_0-3 + 264, 1, 1.21+0.5, 1.21+0.5 );
setScaleKey( spep_0-3 + 266, 1, 0.99+0.5, 0.99+0.5 );
setScaleKey( spep_0-3 + 268, 1, 0.84+0.5, 0.84+0.5 );
setScaleKey( spep_0-3 + 270, 1, 0.74+0.5, 0.74+0.5 );
setScaleKey( spep_0-3 + 272, 1, 0.66+0.5, 0.66+0.5 );
setScaleKey( spep_0-3 + 274, 1, 0.62+0.5, 0.62+0.5 );
setScaleKey( spep_0-3 + 276, 1, 0.58+0.5, 0.58+0.5 );
setScaleKey( spep_0-3 + 278, 1, 0.55+0.5, 0.55+0.5 );
setScaleKey( spep_0-3 + 280, 1, 0.53+0.5, 0.53+0.5 );
setScaleKey( spep_0-3 + 282, 1, 0.51+0.5, 0.51+0.5 );
setScaleKey( spep_0-3 + 284, 1, 0.49+0.5, 0.49+0.5 );
setScaleKey( spep_0-3 + 286, 1, 0.48+0.5, 0.48+0.5 );
setScaleKey( spep_0-3 + 288, 1, 0.47+0.5, 0.47+0.5 );
setScaleKey( spep_0-3 + 290, 1, 0.46+0.5, 0.46+0.5 );
setScaleKey( spep_0-3 + 292, 1, 0.45+0.5, 0.45+0.5 );
setScaleKey( spep_0-3 + 296, 1, 0.45+0.5, 0.45+0.5 );
setScaleKey( spep_0-3 + 298, 1, 0.44+0.5, 0.44+0.5 );
setScaleKey( spep_0-3 + 304, 1, 0.44+0.5, 0.44+0.5 );
setScaleKey( spep_0-3 + 306, 1, 0.45+0.5, 0.45+0.5 );
setScaleKey( spep_0 + 310, 1, 0.45+0.5, 0.45+0.5 );

setRotateKey( spep_0-3 + 58, 1, 0 );
setRotateKey( spep_0-3 + 60, 1, -2.5 );
setRotateKey( spep_0-3 + 62, 1, -4.5 );
setRotateKey( spep_0-3 + 64, 1, -6.1 );
setRotateKey( spep_0-3 + 66, 1, -7.5 );
setRotateKey( spep_0-3 + 68, 1, -8.7 );
setRotateKey( spep_0-3 + 70, 1, -9.7 );
setRotateKey( spep_0-3 + 72, 1, -10.6 );
setRotateKey( spep_0-3 + 74, 1, -11.4 );
setRotateKey( spep_0-3 + 76, 1, -12.1 );
setRotateKey( spep_0-3 + 78, 1, -12.7 );
setRotateKey( spep_0-3 + 80, 1, -13.3 );
setRotateKey( spep_0-3 + 82, 1, -13.8 );
setRotateKey( spep_0-3 + 84, 1, -14.3 );
setRotateKey( spep_0-3 + 86, 1, -14.7 );
setRotateKey( spep_0-3 + 88, 1, -15.1 );
setRotateKey( spep_0-3 + 90, 1, -15.5 );
setRotateKey( spep_0-3 + 92, 1, -15.8 );
setRotateKey( spep_0-3 + 94, 1, -16.1 );
setRotateKey( spep_0-3 + 96, 1, -16.4 );
setRotateKey( spep_0-3 + 98, 1, -16.7 );
setRotateKey( spep_0-3 + 101, 1, -17 );
setRotateKey( spep_0-3 + 102, 1, -54 );
setRotateKey( spep_0-3 + 108, 1, -54 );
setRotateKey( spep_0-3 + 110, 1, -54.1 );
setRotateKey( spep_0-3 + 148, 1, -54.1 );
setRotateKey( spep_0-3 + 150, 1, -54.2 );
setRotateKey( spep_0-3 + 152, 1, -54.2 );
setRotateKey( spep_0-3 + 154, 1, -54.1 );
setRotateKey( spep_0-3 + 175, 1, -54.1 );
setRotateKey( spep_0-3 + 176, 1, -61.7 );
setRotateKey( spep_0-3 + 182, 1, -61.7 );
setRotateKey( spep_0-3 + 184, 1, -60 );
setRotateKey( spep_0-3 + 186, 1, -58.2 );
setRotateKey( spep_0-3 + 188, 1, -56.4 );
setRotateKey( spep_0-3 + 190, 1, -54.7 );
setRotateKey( spep_0-3 + 192, 1, -52.9 );
setRotateKey( spep_0-3 + 194, 1, -51.2 );
setRotateKey( spep_0-3 + 196, 1, -49.4 );
setRotateKey( spep_0-3 + 199, 1, -47.7 );
setRotateKey( spep_0-3 + 200, 1, -67.7 );
setRotateKey( spep_0-3 + 202, 1, -51.6 );
setRotateKey( spep_0-3 + 204, 1, -48 );
setRotateKey( spep_0-3 + 206, 1, -45.2 );
setRotateKey( spep_0-3 + 208, 1, -43.2 );
setRotateKey( spep_0-3 + 210, 1, -41.6 );
setRotateKey( spep_0-3 + 212, 1, -40.4 );
setRotateKey( spep_0-3 + 214, 1, -39.3 );
setRotateKey( spep_0-3 + 216, 1, -38.3 );
setRotateKey( spep_0-3 + 218, 1, -37.5 );
setRotateKey( spep_0-3 + 220, 1, -36.7 );
setRotateKey( spep_0-3 + 222, 1, -36 );
setRotateKey( spep_0-3 + 224, 1, -35.4 );
setRotateKey( spep_0-3 + 226, 1, -34.8 );
setRotateKey( spep_0-3 + 228, 1, -34.3 );
setRotateKey( spep_0-3 + 230, 1, -33.9 );
setRotateKey( spep_0-3 + 232, 1, -33.4 );
setRotateKey( spep_0-3 + 234, 1, -33 );
setRotateKey( spep_0-3 + 236, 1, -32.7 );
setRotateKey( spep_0-3 + 238, 1, -32.3 );
setRotateKey( spep_0-3 + 240, 1, -32 );
setRotateKey( spep_0-3 + 242, 1, -31.8 );
setRotateKey( spep_0-3 + 244, 1, -31.5 );
setRotateKey( spep_0-3 + 246, 1, -31.3 );
setRotateKey( spep_0-3 + 249, 1, -31.1 );
setRotateKey( spep_0-3 + 250, 1, 26.2 );
setRotateKey( spep_0-3 + 252, 1, 29.7 );
setRotateKey( spep_0-3 + 254, 1, 33.1 );
setRotateKey( spep_0-3 + 256, 1, 36.3 );
setRotateKey( spep_0-3 + 258, 1, 39.3 );
setRotateKey( spep_0-3 + 260, 1, 42.2 );
setRotateKey( spep_0-3 + 262, 1, 44.9 );
setRotateKey( spep_0-3 + 264, 1, 44.9 );
setRotateKey( spep_0-3 + 266, 1, 48.5 );
setRotateKey( spep_0-3 + 268, 1, 50.9 );
setRotateKey( spep_0-3 + 270, 1, 52.6 );
setRotateKey( spep_0-3 + 272, 1, 53.9 );
setRotateKey( spep_0-3 + 274, 1, 54.9 );
setRotateKey( spep_0-3 + 276, 1, 55.7 );
setRotateKey( spep_0-3 + 278, 1, 56.4 );
setRotateKey( spep_0-3 + 280, 1, 57 );
setRotateKey( spep_0-3 + 282, 1, 57.4 );
setRotateKey( spep_0-3 + 284, 1, 57.8 );
setRotateKey( spep_0-3 + 286, 1, 58.2 );
setRotateKey( spep_0-3 + 288, 1, 58.4 );
setRotateKey( spep_0-3 + 290, 1, 58.7 );
setRotateKey( spep_0-3 + 292, 1, 58.9 );
setRotateKey( spep_0-3 + 294, 1, 59.1 );
setRotateKey( spep_0-3 + 296, 1, 59.3 );
setRotateKey( spep_0-3 + 298, 1, 59.4 );
setRotateKey( spep_0-3 + 300, 1, 59.5 );
setRotateKey( spep_0-3 + 302, 1, 59.6 );
setRotateKey( spep_0-3 + 304, 1, 59.7 );
setRotateKey( spep_0-3 + 306, 1, 59.8 );
setRotateKey( spep_0-3 + 308, 1, 59.9 );
setRotateKey( spep_0 + 310, 1, 59.9 );

--集中線
shuchusen1 = entryEffectLife( spep_0-3 + 58,  906, 12, 0x100, -1, 0, 0, -11.5 );
setEffShake( spep_0-3 + 58, shuchusen1, 12, 20 );
setEffMoveKey( spep_0-3 + 58, shuchusen1, 0, -11.5 , 0 );
setEffMoveKey( spep_0-3 + 70, shuchusen1, 0, -11.5 , 0 );

setEffScaleKey( spep_0-3 + 58, shuchusen1, 1.25, 1.25 );
setEffScaleKey( spep_0-3 + 70, shuchusen1, 1.25, 1.25 );

setEffRotateKey( spep_0-3 + 58, shuchusen1, 0 );
setEffRotateKey( spep_0-3 + 70, shuchusen1, 0 );

setEffAlphaKey( spep_0-3 + 58, shuchusen1, 255 );
setEffAlphaKey( spep_0-3 + 70, shuchusen1, 255 );

--集中線
shuchusen2 = entryEffectLife( spep_0-3 + 102,  906, 14, 0x100, -1, 0, 0, 0 );
setEffShake( spep_0-3 + 102, shuchusen2, 14, 20 );
setEffMoveKey( spep_0-3 + 102, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_0-3 + 116, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_0-3 + 102, shuchusen2, 1, 1 );
setEffScaleKey( spep_0-3 + 116, shuchusen2, 1, 1 );

setEffRotateKey( spep_0-3 + 102, shuchusen2, 0 );
setEffRotateKey( spep_0-3 + 116, shuchusen2, 0 );

setEffAlphaKey( spep_0-3 + 102, shuchusen2, 255 );
setEffAlphaKey( spep_0-3 + 116, shuchusen2, 255 );

--集中線
shuchusen3 = entryEffectLife( spep_0-3 + 176,  906, 14, 0x100, -1, 0, 0, 0 );
setEffShake( spep_0-3 + 176, shuchusen3, 14, 20 );
setEffMoveKey( spep_0-3 + 176, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_0-3 + 190, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_0-3 + 176, shuchusen3, 1, 1 );
setEffScaleKey( spep_0-3 + 190, shuchusen3, 1, 1 );

setEffRotateKey( spep_0-3 + 176, shuchusen3, 0 );
setEffRotateKey( spep_0-3 + 190, shuchusen3, 0 );

setEffAlphaKey( spep_0-3 + 176, shuchusen3, 255 );
setEffAlphaKey( spep_0-3 + 190, shuchusen3, 255 );

--集中線
shuchusen4 = entryEffectLife( spep_0-3 + 200,  906, 12, 0x100, -1, 0, 0, 0 );
setEffShake( spep_0-3 + 200, shuchusen4, 12, 20 );
setEffMoveKey( spep_0-3 + 200, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_0-3 + 212, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_0-3 + 200, shuchusen4, 2, 2 );
setEffScaleKey( spep_0-3 + 212, shuchusen4, 2, 2 );

setEffRotateKey( spep_0-3 + 200, shuchusen4, 0 );
setEffRotateKey( spep_0-3 + 212, shuchusen4, 0 );

setEffAlphaKey( spep_0-3 + 200, shuchusen4, 255 );
setEffAlphaKey( spep_0-3 + 212, shuchusen4, 255 );

--集中線
shuchusen5 = entryEffectLife( spep_0-3 + 250,  906, 26, 0x100, -1, 0, -63, 30 );
setEffShake( spep_0-3 + 250, shuchusen5, 26, 20 );
setEffMoveKey( spep_0-3 + 250, shuchusen5, -63, 30 , 0 );
setEffMoveKey( spep_0-3 + 276, shuchusen5, -63, 30 , 0 );

setEffScaleKey( spep_0-3 + 250, shuchusen5, 2, 2 );
setEffScaleKey( spep_0-3 + 276, shuchusen5, 2, 2 );

setEffRotateKey( spep_0-3 + 250, shuchusen5, 0 );
setEffRotateKey( spep_0-3 + 276, shuchusen5, 0 );

setEffScaleKey( spep_0-3 + 250, shuchusen5, 2, 2 );
setEffScaleKey( spep_0-3 + 276, shuchusen5, 2, 2 );

--文字エントリー
ctdon = entryEffectLife( spep_0-3 + 58,  10019, 12, 0x100, -1, 0, -107.3, 357.6 );
setEffShake( spep_0-3 + 58, ctdon, 12, 10 );
setEffMoveKey( spep_0-3 + 58, ctdon, -107.3, 357.6 , 0 );
setEffMoveKey( spep_0-3 + 60, ctdon, -90.9, 361 , 0 );
setEffMoveKey( spep_0-3 + 62, ctdon, -107.3, 357.6 , 0 );
setEffMoveKey( spep_0-3 + 64, ctdon, -90.9, 361 , 0 );
setEffMoveKey( spep_0-3 + 66, ctdon, -107.3, 357.6 , 0 );
setEffMoveKey( spep_0-3 + 68, ctdon, -90.9, 361 , 0 );
setEffMoveKey( spep_0-3 + 70, ctdon, -107.3, 357.6 , 0 );

setEffScaleKey( spep_0-3 + 58, ctdon, 2.09, 2.09 );
setEffScaleKey( spep_0-3 + 70, ctdon, 2.09, 2.09 );

setEffRotateKey( spep_0-3 + 58, ctdon, 15 );
setEffRotateKey( spep_0-3 + 70, ctdon, 15 );

setEffAlphaKey( spep_0-3 + 58, ctdon, 255 );
setEffAlphaKey( spep_0-3 + 70, ctdon, 255 );

--文字エントリー
ctbagon = entryEffectLife( spep_0-3 + 102,  10021, 14, 0x100, -1, 0, 162.9, 4.9 );

setEffMoveKey( spep_0-3 + 102, ctbagon, 162.9, 4.9 , 0 );
setEffMoveKey( spep_0-3 + 116, ctbagon, 162.9, 4.9 , 0 );

setEffScaleKey( spep_0-3 + 102, ctbagon, 2.03, 2.03 );
setEffScaleKey( spep_0-3 + 104, ctbagon, 2.23, 2.23 );
setEffScaleKey( spep_0-3 + 106, ctbagon, 2.03, 2.03 );
setEffScaleKey( spep_0-3 + 108, ctbagon, 2.23, 2.23 );
setEffScaleKey( spep_0-3 + 110, ctbagon, 2.03, 2.03 );
setEffScaleKey( spep_0-3 + 112, ctbagon, 2.23, 2.23 );
setEffScaleKey( spep_0-3 + 114, ctbagon, 2.03, 2.03 );
setEffScaleKey( spep_0-3 + 116, ctbagon, 2.23, 2.23 );

setEffRotateKey( spep_0-3 + 102, ctbagon, 15.5 );
setEffRotateKey( spep_0-3 + 116, ctbagon, 15.5 );

setEffAlphaKey( spep_0-3 + 102, ctbagon, 255 );
setEffAlphaKey( spep_0-3 + 116, ctbagon, 255 );

--文字エントリー
ctbaki = entryEffectLife( spep_0-3 + 176,  10020, 14, 0x100, -1, 0, -45.1, 129.8 );
setEffShake( spep_0-3 + 176, ctbaki, 14, 10 );
setEffMoveKey( spep_0-3 + 176, ctbaki, -45.1, 129.8 , 0 );
setEffMoveKey( spep_0-3 + 178, ctbaki, -36.3, 146.5 , 0 );
setEffMoveKey( spep_0-3 + 180, ctbaki, -45.1, 129.8 , 0 );
setEffMoveKey( spep_0-3 + 182, ctbaki, -36.3, 146.5 , 0 );
setEffMoveKey( spep_0-3 + 184, ctbaki, -45.1, 129.8 , 0 );
setEffMoveKey( spep_0-3 + 186, ctbaki, -36.3, 146.5 , 0 );
setEffMoveKey( spep_0-3 + 188, ctbaki, -45.1, 129.8 , 0 );
setEffMoveKey( spep_0-3 + 190, ctbaki, -36.3, 146.5 , 0 );

setEffScaleKey( spep_0-3 + 176, ctbaki, 1.46, 1.46 );
setEffScaleKey( spep_0-3 + 190, ctbaki, 1.46, 1.46 );

setEffRotateKey( spep_0-3 + 176, ctbaki, -17 );
setEffRotateKey( spep_0-3 + 190, ctbaki, -17 );

setEffAlphaKey( spep_0-3 + 176, ctbaki, 255 );
setEffAlphaKey( spep_0-3 + 190, ctbaki, 255 );

--文字エントリー
ctga = entryEffectLife( spep_0-3 + 200,  10005, 12, 0x100, -1, 0, -114.9, 180.8 );
setEffShake( spep_0-3 + 200, ctga, 12, 10 );
setEffMoveKey( spep_0-3 + 200, ctga, -114.9, 180.8 , 0 );
setEffMoveKey( spep_0-3 + 202, ctga, -102.8, 183.2 , 0 );
setEffMoveKey( spep_0-3 + 204, ctga, -114.9, 180.8 , 0 );
setEffMoveKey( spep_0-3 + 206, ctga, -102.8, 183.2 , 0 );
setEffMoveKey( spep_0-3 + 208, ctga, -114.9, 180.8 , 0 );
setEffMoveKey( spep_0-3 + 210, ctga, -102.8, 183.2 , 0 );
setEffMoveKey( spep_0-3 + 212, ctga, -114.9, 180.8 , 0 );

setEffScaleKey( spep_0-3 + 200, ctga, 1.53, 1.53 );
setEffScaleKey( spep_0-3 + 212, ctga, 1.53, 1.53 );

setEffRotateKey( spep_0-3 + 200, ctga, 15.5 );
setEffRotateKey( spep_0-3 + 212, ctga, 15.5 );

setEffAlphaKey( spep_0-3 + 200, ctga, 255 );
setEffAlphaKey( spep_0-3 + 212, ctga, 255 );

--文字エントリー
ctdogon = entryEffectLife( spep_0-3 + 250,  10018, 26, 0x100, -1, 0, -78, -43.2 );
setEffShake( spep_0-3 + 250, ctdogon, 26, 10 );
setEffMoveKey( spep_0-3 + 250, ctdogon, -78, -43.2 , 0 );
setEffMoveKey( spep_0-3 + 252, ctdogon, -82.2, -84.7 , 0 );
setEffMoveKey( spep_0-3 + 254, ctdogon, -70, -136 , 0 );
setEffMoveKey( spep_0-3 + 256, ctdogon, -78.1, -143.4 , 0 );
setEffMoveKey( spep_0-3 + 258, ctdogon, -66.3, -140.1 , 0 );
setEffMoveKey( spep_0-3 + 260, ctdogon, -60.1, -159.8 , 0 );
setEffMoveKey( spep_0-3 + 262, ctdogon, -60.2, -150.3 , 0 );
setEffMoveKey( spep_0-3 + 264, ctdogon, -48.5, -166.4 , 0 );
setEffMoveKey( spep_0-3 + 266, ctdogon, -51.4, -168.1 , 0 );
setEffMoveKey( spep_0-3 + 268, ctdogon, -36.1, -176.1 , 0 );
setEffMoveKey( spep_0-3 + 270, ctdogon, -41.9, -181.3 , 0 );
setEffMoveKey( spep_0-3 + 272, ctdogon, -16.6, -206.6 , 0 );
setEffMoveKey( spep_0-3 + 274, ctdogon, -28.9, -224.3 , 0 );
setEffMoveKey( spep_0-3 + 276, ctdogon, -22.9, -239.8 , 0 );

setEffScaleKey( spep_0-3 + 250, ctdogon, 0.65, 0.65 );
setEffScaleKey( spep_0-3 + 252, ctdogon, 1.77, 1.77 );
setEffScaleKey( spep_0-3 + 254, ctdogon, 2.9, 2.9 );
setEffScaleKey( spep_0-3 + 256, ctdogon, 2.93, 2.93 );
setEffScaleKey( spep_0-3 + 258, ctdogon, 2.96, 2.96 );
setEffScaleKey( spep_0-3 + 260, ctdogon, 3, 3 );
setEffScaleKey( spep_0-3 + 262, ctdogon, 3.03, 3.03 );
setEffScaleKey( spep_0-3 + 264, ctdogon, 3.07, 3.07 );
setEffScaleKey( spep_0-3 + 266, ctdogon, 3.1, 3.1 );
setEffScaleKey( spep_0-3 + 268, ctdogon, 3.13, 3.13 );
setEffScaleKey( spep_0-3 + 270, ctdogon, 3.56, 3.56 );
setEffScaleKey( spep_0-3 + 272, ctdogon, 3.99, 3.99 );
setEffScaleKey( spep_0-3 + 274, ctdogon, 4.42, 4.42 );
setEffScaleKey( spep_0-3 + 276, ctdogon, 4.85, 4.85 );

setEffRotateKey( spep_0-3 + 250, ctdogon, -30 );
setEffRotateKey( spep_0-3 + 252, ctdogon, -30 );
setEffRotateKey( spep_0-3 + 254, ctdogon, -29.9 );
setEffRotateKey( spep_0-3 + 258, ctdogon, -29.9 );
setEffRotateKey( spep_0-3 + 260, ctdogon, -30 );
setEffRotateKey( spep_0-3 + 276, ctdogon, -30 );

setEffAlphaKey( spep_0-3 + 250, ctdogon, 255 );
setEffAlphaKey( spep_0-3 + 268, ctdogon, 255 );
setEffAlphaKey( spep_0-3 + 270, ctdogon, 191 );
setEffAlphaKey( spep_0-3 + 272, ctdogon, 128 );
setEffAlphaKey( spep_0-3 + 274, ctdogon, 64 );
setEffAlphaKey( spep_0-3 + 276, ctdogon, 0 );


se_1116 = playSe( spep_0 + 39, 1116 );
playSe( spep_0 + 43, 1003 );
playSe( spep_0 + 60, 1000 );
playSe( spep_0 + 62, 1012 );
playSe( spep_0 + 62, 1009 );
setSeVolume( spep_0 + 62, 1009, 77 );
playSe( spep_0 + 104, 1189 );
playSe( spep_0 + 109, 1010 );
playSe( spep_0 + 109, 1001 );
setSeVolume( spep_0 + 109, 1001, 60 );
playSe( spep_0 + 111, 1110 );
se_11161 = playSe( spep_0 + 139, 1116 );
setSeVolume( spep_0 + 139, 1116, 60 );
se_0044 = playSe( spep_0 + 144, 44 );
playSe( spep_0 + 180, 1007 );
playSe( spep_0 + 181, 1110 );
playSe( spep_0 + 197, 1189 );
playSe( spep_0 + 200, 1000 );
playSe( spep_0 + 201, 1012 );
playSe( spep_0 + 228, 1004 );
setSeVolume( spep_0 + 228, 1004, 74 );
playSe( spep_0 + 249, 1004 );
playSe( spep_0 + 249, 19 );
setSeVolume( spep_0 + 249, 19, 49 );
playSe( spep_0 + 249, 1010 );
setSeVolume( spep_0 + 249, 1010, 112 );
playSe( spep_0 + 249, 1001 );
playSe( spep_0 + 261, 1110 );
playSe( spep_0 + 262, 1047 );
setSeVolume( spep_0 + 262, 1047, 79 );
playSe( spep_0 + 268, 1169 );
setSeVolume( spep_0 + 268, 1169, 40 );

stopSe( spep_0 + 62, se_1116, 19 );
stopSe( spep_0 + 156, se_11161, 27 );
stopSe( spep_0 + 166, se_0044, 20 );

--白フェード
entryFade( spep_0+98 , 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_0+246 , 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_0+304 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


-- ** 次の準備 ** --
spep_1=spep_0+312;

------------------------------------------------------
-- 気弾溜め
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_1 + 100, tame, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_1 + 100, tame, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tame, 0 );
setEffRotateKey( spep_1 + 100, tame, 0 );
setEffAlphaKey( spep_1 + 0, tame, 255 );
setEffAlphaKey( spep_1 + 100, tame, 255 );

--集中線
shuchusen6 = entryEffectLife( spep_1 ,  906, 98, 0x100, -1, 0, 0, 0 );
setEffShake( spep_1, shuchusen6, 98, 20 );
setEffMoveKey( spep_1 , shuchusen6, 0, 0 , 0 );
setEffMoveKey( spep_1 + 98, shuchusen6, 0, 0 , 0 );

setEffScaleKey( spep_1, shuchusen6, 1.05, 1.05 );
setEffScaleKey( spep_1 + 98, shuchusen6, 1.05, 1.05 );

setEffRotateKey( spep_1 , shuchusen6, 0 );
setEffRotateKey( spep_1 + 98, shuchusen6, 0 );

setEffAlphaKey( spep_1 , shuchusen6, 0 );
setEffAlphaKey( spep_1-3 + 9, shuchusen6, 0 );
setEffAlphaKey( spep_1-3 + 10, shuchusen6, 255 );
setEffAlphaKey( spep_1 + 98, shuchusen6, 255 );

--顔カットイン
speff = entryEffect( spep_1  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_1  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_1 +12, 190006, 72, 0x100, -1, 0, 0, 510);-- ゴゴゴゴ

setEffMoveKey(  spep_1 +12,  ctgogo,  0,  510);
setEffMoveKey(  spep_1 +84,  ctgogo,  0,  510);

setEffAlphaKey( spep_1 +12, ctgogo, 0 );
setEffAlphaKey( spep_1 + 13, ctgogo, 255 );
setEffAlphaKey( spep_1 + 14, ctgogo, 255 );
setEffAlphaKey( spep_1 + 78, ctgogo, 255 );
setEffAlphaKey( spep_1 + 80, ctgogo, 191 );
setEffAlphaKey( spep_1 + 82, ctgogo, 112 );
setEffAlphaKey( spep_1 + 84, ctgogo, 64 );

setEffRotateKey(  spep_1 +12,  ctgogo,  0);
setEffRotateKey(  spep_1 +84,  ctgogo,  0);

setEffScaleKey(  spep_1 +12,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_1 +74,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_1 +84,  ctgogo, 1.07, 1.07 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 100, 0,  0, 0, 0, 180 ); --くろ 背景

--SE
playSe( spep_1 + 10, 49 );
se_1191 = playSe( spep_1 + 11, 1191 );
setSeVolume( spep_1 + 11, 1191, 178 );
se_1262 = playSe( spep_1 + 11, 1262 );
setSeVolume( spep_1 + 11, 1262, 138 );
se_1037 = playSe( spep_1 + 11, 1037 );
setSeVolume( spep_1 + 11, 1037, 69 );
playSe( spep_1 + 12, 1018 );

stopSe( spep_1 + 57, se_1191, 23 );

--白フェード
entryFade( spep_1+92 , 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2=spep_1+100;
--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_2 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_2 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_2 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_2 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_2 + 0, shuchusen, 0 );
setEffRotateKey( spep_2 + 90, shuchusen, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen, 255 );
setEffAlphaKey( spep_2 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_2 + 0, SE_05 );

stopSe( spep_2 + 2, se_1262, 0 );
stopSe( spep_2 + 2, se_1037, 0 );

--白フェード
entryFade( spep_2 + 80, 6, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;
------------------------------------------------------
-- 気弾発射
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, beam, 0, 0, 0 );
setEffMoveKey( spep_3 + 66, beam, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_3 + 66, beam, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, beam, 0 );
setEffRotateKey( spep_3 + 66, beam, 0 );
setEffAlphaKey( spep_3 + 0, beam, 255 );
setEffAlphaKey( spep_3 + 66, beam, 255 );
setEffAlphaKey( spep_3 + 67, beam, 0 );
setEffAlphaKey( spep_3 + 68, beam, 0 );

--集中線
shuchusen7 = entryEffectLife( spep_3 + 0,  906, 22, 0x100, -1, 0, 0, 39 );
setEffShake( spep_3 + 22, shuchusen7, 22, 20 );
setEffMoveKey( spep_3 + 0, shuchusen7, 0, 39 , 0 );
setEffMoveKey( spep_3 + 22, shuchusen7, 0, 39 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen7, 1.5, 1.2 );
setEffScaleKey( spep_3 + 22, shuchusen7, 1.5, 1.2 );

setEffRotateKey( spep_3 + 0, shuchusen7, 0 );
setEffRotateKey( spep_3 + 22, shuchusen7, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen7, 255 );
setEffAlphaKey( spep_3 + 22, shuchusen7, 255 );

--文字エントリー
ctzuo = entryEffectLife( spep_3-3 + 20,  10012, 24, 0x100, -1, 0, 58.7, 239.5 );
setEffShake( spep_3-3 + 20, ctzuo, 24, 10 );
setEffMoveKey( spep_3-3 + 20, ctzuo, 58.7, 239.5 , 0 );
setEffMoveKey( spep_3-3 + 22, ctzuo, 107, 332.8 , 0 );
setEffMoveKey( spep_3-3 + 24, ctzuo, 111.7, 336.2 , 0 );
setEffMoveKey( spep_3-3 + 26, ctzuo, 125.9, 347.5 , 0 );
setEffMoveKey( spep_3-3 + 28, ctzuo, 130.7, 350.9 , 0 );
setEffMoveKey( spep_3-3 + 30, ctzuo, 144.9, 362.3 , 0 );
setEffMoveKey( spep_3-3 + 32, ctzuo, 149.7, 365.6 , 0 );
setEffMoveKey( spep_3-3 + 34, ctzuo, 163.9, 377 , 0 );
setEffMoveKey( spep_3-3 + 36, ctzuo, 168.7, 380.4 , 0 );
setEffMoveKey( spep_3-3 + 38, ctzuo, 188, 389.2 , 0 );
setEffMoveKey( spep_3-3 + 40, ctzuo, 197.9, 390.1 , 0 );
setEffMoveKey( spep_3-3 + 42, ctzuo, 217.3, 399 , 0 );
setEffMoveKey( spep_3-3 + 44, ctzuo, 227.2, 399.9 , 0 );

a=1.8;

setEffScaleKey( spep_3-3 + 20, ctzuo, 0.38+a, 0.38+a );
setEffScaleKey( spep_3-3 + 22, ctzuo, 0.7+a, 0.7+a );
setEffScaleKey( spep_3-3 + 44, ctzuo, 0.7+a, 0.7+a );

setEffRotateKey( spep_3-3 + 20, ctzuo, 25 );
setEffRotateKey( spep_3-3 + 44, ctzuo, 25 );

setEffAlphaKey( spep_3-3 + 20, ctzuo, 128 );
setEffAlphaKey( spep_3-3 + 22, ctzuo, 255 );
setEffAlphaKey( spep_3-3 + 36, ctzuo, 255 );
setEffAlphaKey( spep_3-3 + 38, ctzuo, 198 );
setEffAlphaKey( spep_3-3 + 40, ctzuo, 140 );
setEffAlphaKey( spep_3-3 + 42, ctzuo, 83 );
setEffAlphaKey( spep_3-3 + 44, ctzuo, 26 );

--SE
playSe( spep_3 + 3, 49 );
playSe( spep_3 + 19, 1027 );
se_1177 = playSe( spep_3 + 19, 1177 );
setSeVolume( spep_3 + 19, 1177, 73 );
se_1022 = playSe( spep_3 + 20, 1022 );
setSeVolume( spep_3 + 20, 1022, 126 );

--白フェード
entryFade( spep_3 + 58, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 66, 0,  0, 0, 0, 180 ); --くろ 背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 66;
------------------------------------------------------
-- 気弾着弾
------------------------------------------------------

-- ** エフェクト等 ** --
hit_f = entryEffect( spep_4 + 0, SP_07, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 70, hit_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 70, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hit_f, 0 );
setEffRotateKey( spep_4 + 70, hit_f, 0 );
setEffAlphaKey( spep_4 + 0, hit_f, 255 );
setEffAlphaKey( spep_4 + 70, hit_f, 255 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_4 + 0, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 70, hit_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 70, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hit_b, 0 );
setEffRotateKey( spep_4 + 70, hit_b, 0 );
setEffAlphaKey( spep_4 + 0, hit_b, 255 );
setEffAlphaKey( spep_4 + 70, hit_b, 255 );

--文字エントリー

ctzudodo = entryEffectLife( spep_4 + 2,  10014, 64, 0x100, -1, 0, -180.5, 429.7 );
setEffShake( spep_4 + 2, ctzudodo, 64, 10 );
setEffMoveKey( spep_4 + 2, ctzudodo, -180.5, 429.7 , 0 );
setEffMoveKey( spep_4 + 4, ctzudodo, -172.9, 435.3 , 0 );
setEffMoveKey( spep_4 + 6, ctzudodo, -162.5, 419 , 0 );
setEffMoveKey( spep_4 + 8, ctzudodo, -155.1, 426.4 , 0 );
setEffMoveKey( spep_4 + 10, ctzudodo, -144.5, 408.3 , 0 );
setEffMoveKey( spep_4 + 12, ctzudodo, -137.3, 417.5 , 0 );
setEffMoveKey( spep_4 + 14, ctzudodo, -126.5, 397.6 , 0 );
setEffMoveKey( spep_4 + 16, ctzudodo, -119.6, 408.6 , 0 );
setEffMoveKey( spep_4 + 18, ctzudodo, -108.5, 387 , 0 );
setEffMoveKey( spep_4 + 20, ctzudodo, -105, 399.9 , 0 );
setEffMoveKey( spep_4 + 22, ctzudodo, -97, 378.3 , 0 );
setEffMoveKey( spep_4 + 24, ctzudodo, -93.5, 391.5 , 0 );
setEffMoveKey( spep_4 + 26, ctzudodo, -85.5, 369.6 , 0 );
setEffMoveKey( spep_4 + 28, ctzudodo, -82.1, 383.1 , 0 );
setEffMoveKey( spep_4 + 30, ctzudodo, -74.1, 361 , 0 );
setEffMoveKey( spep_4 + 32, ctzudodo, -70.7, 374.7 , 0 );
setEffMoveKey( spep_4 + 34, ctzudodo, -62.6, 352.3 , 0 );
setEffMoveKey( spep_4 + 36, ctzudodo, -59.3, 366.3 , 0 );
setEffMoveKey( spep_4 + 38, ctzudodo, -51.1, 343.6 , 0 );
setEffMoveKey( spep_4 + 40, ctzudodo, -47.8, 358 , 0 );
setEffMoveKey( spep_4 + 42, ctzudodo, -39.7, 335 , 0 );
setEffMoveKey( spep_4 + 44, ctzudodo, -36.4, 349.6 , 0 );
setEffMoveKey( spep_4 + 46, ctzudodo, -28.2, 326.3 , 0 );
setEffMoveKey( spep_4 + 48, ctzudodo, -25, 341.2 , 0 );
setEffMoveKey( spep_4 + 50, ctzudodo, -16.8, 317.7 , 0 );
setEffMoveKey( spep_4 + 52, ctzudodo, -13.6, 332.8 , 0 );
setEffMoveKey( spep_4 + 54, ctzudodo, -5.3, 309 , 0 );
setEffMoveKey( spep_4 + 56, ctzudodo, -2.1, 324.4 , 0 );
setEffMoveKey( spep_4 + 58, ctzudodo, 6.2, 300.3 , 0 );
setEffMoveKey( spep_4 + 60, ctzudodo, 9.3, 316 , 0 );
setEffMoveKey( spep_4 + 62, ctzudodo, 11.9, 296 , 0 );
setEffMoveKey( spep_4 + 64, ctzudodo, 9.3, 316 , 0 );
setEffMoveKey( spep_4 + 66, ctzudodo, 11.9, 296 , 0 );

b=0.4;

setEffScaleKey( spep_4 + 2, ctzudodo, 1.35+b, 1.35+b );
setEffScaleKey( spep_4 + 4, ctzudodo, 1.38+b, 1.38+b );
setEffScaleKey( spep_4 + 6, ctzudodo, 1.41+b, 1.41+b );
setEffScaleKey( spep_4 + 8, ctzudodo, 1.44+b, 1.44+b );
setEffScaleKey( spep_4 + 10, ctzudodo, 1.47+b, 1.47+b );
setEffScaleKey( spep_4 + 12, ctzudodo, 1.51+b, 1.51+b );
setEffScaleKey( spep_4 + 14, ctzudodo, 1.54+b, 1.54+b );
setEffScaleKey( spep_4 + 16, ctzudodo, 1.57+b, 1.57+b );
setEffScaleKey( spep_4 + 18, ctzudodo, 1.6+b, 1.6+b );
setEffScaleKey( spep_4 + 20, ctzudodo, 1.6+b, 1.6+b );
setEffScaleKey( spep_4 + 22, ctzudodo, 1.61+b, 1.61+b );
setEffScaleKey( spep_4 + 24, ctzudodo, 1.61+b, 1.61+b );
setEffScaleKey( spep_4 + 26, ctzudodo, 1.62+b, 1.62+b );
setEffScaleKey( spep_4 + 28, ctzudodo, 1.62+b, 1.62+b );
setEffScaleKey( spep_4 + 30, ctzudodo, 1.63+b, 1.63+b );
setEffScaleKey( spep_4 + 32, ctzudodo, 1.63+b, 1.63+b );
setEffScaleKey( spep_4 + 34, ctzudodo, 1.64+b, 1.64+b );
setEffScaleKey( spep_4 + 36, ctzudodo, 1.64+b, 1.64+b );
setEffScaleKey( spep_4 + 38, ctzudodo, 1.65+b, 1.65+b );
setEffScaleKey( spep_4 + 40, ctzudodo, 1.65+b, 1.65+b );
setEffScaleKey( spep_4 + 42, ctzudodo, 1.66+b, 1.66+b );
setEffScaleKey( spep_4 + 44, ctzudodo, 1.66+b, 1.66+b );
setEffScaleKey( spep_4 + 46, ctzudodo, 1.67+b, 1.67+b );
setEffScaleKey( spep_4 + 48, ctzudodo, 1.67+b, 1.67+b );
setEffScaleKey( spep_4 + 50, ctzudodo, 1.68+b, 1.68+b );
setEffScaleKey( spep_4 + 54, ctzudodo, 1.68+b, 1.68+b );
setEffScaleKey( spep_4 + 56, ctzudodo, 1.69+b, 1.69+b );
setEffScaleKey( spep_4 + 58, ctzudodo, 1.69+b, 1.69+b );
setEffScaleKey( spep_4 + 60, ctzudodo, 1.7+b, 1.7+b );
setEffScaleKey( spep_4 + 66, ctzudodo, 1.7+b, 1.7+b );

setEffRotateKey( spep_4 + 2, ctzudodo, 3.7 );
setEffRotateKey( spep_4 + 66, ctzudodo, 3.7 );

setEffAlphaKey( spep_4 + 2, ctzudodo, 28 );
setEffAlphaKey( spep_4 + 4, ctzudodo, 57 );
setEffAlphaKey( spep_4 + 6, ctzudodo, 85 );
setEffAlphaKey( spep_4 + 8, ctzudodo, 113 );
setEffAlphaKey( spep_4 + 10, ctzudodo, 142 );
setEffAlphaKey( spep_4 + 12, ctzudodo, 170 );
setEffAlphaKey( spep_4 + 14, ctzudodo, 198 );
setEffAlphaKey( spep_4 + 16, ctzudodo, 227 );
setEffAlphaKey( spep_4 + 18, ctzudodo, 255 );
setEffAlphaKey( spep_4 + 66, ctzudodo, 255 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 48, 1, 0 );

changeAnime( spep_4 + 0, 1, 107 );

setMoveKey( spep_4 + 0, 1, -651.3, 684.7 , 0 );
setMoveKey( spep_4 + 2, 1, -567.8, 582.9 , 0 );
setMoveKey( spep_4 + 4, 1, -517, 520.6 , 0 );
setMoveKey( spep_4 + 6, 1, -476.4, 470.3 , 0 );
setMoveKey( spep_4 + 8, 1, -441.2, 426.5 , 0 );
setMoveKey( spep_4 + 10, 1, -409.5, 386.8 , 0 );
setMoveKey( spep_4 + 12, 1, -380.2, 350.1 , 0 );
setMoveKey( spep_4 + 14, 1, -352.8, 315.6 , 0 );
setMoveKey( spep_4 + 16, 1, -326.9, 283.1 , 0 );
setMoveKey( spep_4 + 18, 1, -302.3, 252 , 0 );
setMoveKey( spep_4 + 20, 1, -276.2, 220.2 , 0 );
setMoveKey( spep_4 + 22, 1, -251.7, 190.3 , 0 );
setMoveKey( spep_4 + 24, 1, -228.5, 162 , 0 );
setMoveKey( spep_4 + 26, 1, -206.7, 135.3 , 0 );
setMoveKey( spep_4 + 28, 1, -186.2, 110.2 , 0 );
setMoveKey( spep_4 + 30, 1, -166.9, 86.5 , 0 );
setMoveKey( spep_4 + 32, 1, -148.7, 64.3 , 0 );
setMoveKey( spep_4 + 34, 1, -131.8, 43.5 , 0 );
setMoveKey( spep_4 + 36, 1, -116.2, 24.1 , 0 );
setMoveKey( spep_4 + 38, 1, -101.7, 6.3 , 0 );
setMoveKey( spep_4 + 40, 1, -88.4, -10.1 , 0 );
setMoveKey( spep_4 + 42, 1, -76.4, -25 , 0 );
setMoveKey( spep_4 + 44, 1, -65.6, -38.4 , 0 );
setMoveKey( spep_4 + 46, 1, -56.3, -50 , 0 );
setMoveKey( spep_4 + 48, 1, 56.9, -167.7 , 0 );

setScaleKey( spep_4 + 0, 1, 0.35, 0.35 );
setScaleKey( spep_4 + 2, 1, 0.41, 0.41 );
setScaleKey( spep_4 + 4, 1, 0.45, 0.45 );
setScaleKey( spep_4 + 6, 1, 0.49, 0.49 );
setScaleKey( spep_4 + 8, 1, 0.52, 0.52 );
setScaleKey( spep_4 + 10, 1, 0.55, 0.55 );
setScaleKey( spep_4 + 12, 1, 0.58, 0.58 );
setScaleKey( spep_4 + 14, 1, 0.6, 0.61 );
setScaleKey( spep_4 + 16, 1, 0.63, 0.63 );
setScaleKey( spep_4 + 18, 1, 0.66, 0.66 );
setScaleKey( spep_4 + 20, 1, 0.68, 0.68 );
setScaleKey( spep_4 + 22, 1, 0.69, 0.7 );
setScaleKey( spep_4 + 24, 1, 0.71, 0.72 );
setScaleKey( spep_4 + 26, 1, 0.73, 0.73 );
setScaleKey( spep_4 + 28, 1, 0.74, 0.75 );
setScaleKey( spep_4 + 30, 1, 0.76, 0.76 );
setScaleKey( spep_4 + 32, 1, 0.77, 0.78 );
setScaleKey( spep_4 + 34, 1, 0.78, 0.79 );
setScaleKey( spep_4 + 36, 1, 0.8, 0.8 );
setScaleKey( spep_4 + 38, 1, 0.81, 0.82 );
setScaleKey( spep_4 + 40, 1, 0.82, 0.83 );
setScaleKey( spep_4 + 42, 1, 0.83, 0.84 );
setScaleKey( spep_4 + 44, 1, 0.84, 0.85 );
setScaleKey( spep_4 + 46, 1, 0.85, 0.86 );
setScaleKey( spep_4 + 48, 1, 0.86, 0.87 );

setRotateKey( spep_4 + 0, 1, 5.8 );
setRotateKey( spep_4 + 48, 1, 5.8 );

--SE
playSe( spep_4 , 1021 );

--白フェード
entryFade( spep_4 + 62, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_4 , 0, 70, 0,  0, 0, 0, 180 ); --くろ 背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 70;
--------------------------------------
--ギャン
--------------------------------------
-- ** エフェクト等 ** --
gyan = entryEffect( spep_5 + 0, SP_05, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, gyan, 0, 0, 0 );
setEffMoveKey( spep_5 + 60, gyan, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, gyan, 1.0, 1.0 );
setEffScaleKey( spep_5 + 60, gyan, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, gyan, 0 );
setEffRotateKey( spep_5 + 60, gyan, 0 );
setEffAlphaKey( spep_5 + 0, gyan, 255 );
setEffAlphaKey( spep_5 + 60, gyan, 255 );


-- 書き文字エントリー --
ctgayn = entryEffectLife( spep_5, 10006, 60, 0x100, -1, 0, 0, 400);    -- ギャン
setEffMoveKey( spep_5 + 0, ctgayn, 0, 400, 0 );
setEffMoveKey( spep_5 + 60, ctgayn, 0, 400, 0 );
setEffScaleKey( spep_5, ctgayn, 3.0, 3.0);
setEffScaleKey( spep_5+60, ctgayn, 4.0, 4.0);
setEffRotateKey( spep_5 + 0, ctgayn, 0 );
setEffRotateKey( spep_5 + 60, ctgayn, 0 );
setEffAlphaKey( spep_5, ctgayn, 255);
setEffAlphaKey( spep_5+60, ctgayn, 0);
setEffShake( spep_5, ctgayn, 60, 10);

--SE
playSe( spep_5 , 1023 );
setSeVolume( spep_5 , 1023, 126 );

stopSe( spep_5, se_1177, 0 );
stopSe( spep_5 , se_1022, 0 );

entryFade( spep_5+48, 2,  10, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_6 = spep_5+60;
------------------------------------------------------
-- ガ
------------------------------------------------------
--敵の動き
setDisp( spep_6 + 0, 1, 1 );
changeAnime( spep_6 + 0, 1, 107 );
setMoveKey( spep_6 + 0, 1, -3.8, -32.1 , 0 );
setMoveKey( spep_6 + 2, 1, -3.7, -56.6 , 0 );
setMoveKey( spep_6 + 4, 1, -3.4, -88.1 , 0 );
setMoveKey( spep_6 + 6, 1, -3.1, -126.6 , 0 );
setMoveKey( spep_6 + 8, 1, -2.8, -172.1 , 0 );
setMoveKey( spep_6 + 10, 1, -2.4, -224.6 , 0 );
setMoveKey( spep_6 + 12, 1, -1.9, -284.1 , 0 );
setMoveKey( spep_6 + 110, 1, -1.9, -284.1 , 0 );

y=0.4;

setScaleKey( spep_6 + 0, 1, 0.22, 0.22 );
setScaleKey( spep_6 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_6 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_6 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_6 + 8, 1, 0.93, 0.93 );
--setScaleKey( spep_6 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_6 + 12, 1, 1.5-y, 1.5-y );
setScaleKey( spep_6 + 14, 1, 1.6-y, 1.6-y );
setScaleKey( spep_6 + 16, 1, 1.5-y, 1.5-y );
setScaleKey( spep_6 + 18, 1, 1.6-y, 1.6-y );
setScaleKey( spep_6 + 20, 1, 1.5-y, 1.5-y );
setScaleKey( spep_6 + 22, 1, 1.6-y, 1.6-y );
setScaleKey( spep_6 + 24, 1, 1.5-y, 1.5-y );
setScaleKey( spep_6 + 26, 1, 1.6-y, 1.6-y );
setScaleKey( spep_6 + 110, 1, 1.6-y, 1.6-y );

z=30;
setRotateKey( spep_6 + 0, 1, 0-z );
setRotateKey( spep_6 + 2, 1, 105-z );
setRotateKey( spep_6 + 4, 1, 240-z );
setRotateKey( spep_6 + 6, 1, 405-z );
setRotateKey( spep_6 + 8, 1, 600-z );
setRotateKey( spep_6 + 10, 1, 825-z );
setRotateKey( spep_6 + 12, 1, 1080-z );
setRotateKey( spep_6 + 110, 1, 1080-z );
--[[
-- ** エフェクト等 ** --
bg = entryEffect( spep_6 + 0, SP_07x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, bg, 0, 0, 0 );
setEffMoveKey( spep_6 + 100, bg, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, bg, 1.0, 1.0 );
setEffScaleKey( spep_6 + 100, bg, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, bg, 0 );
setEffRotateKey( spep_6 + 100, bg, 0 );
setEffAlphaKey( spep_6 + 0, bg, 255 );
setEffAlphaKey( spep_6 + 100, bg, 255 );
]]
-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_6 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_6 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_6 + 112, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( spep_6 + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_6 + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_6 + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_6 + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_6 + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_6 + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_6 + 112, bakuhatsu, 0.9, 0.9 );

setEffRotateKey( spep_6 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_6 + 112, bakuhatsu, 0 );

setEffAlphaKey( spep_6 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_6 + 112, bakuhatsu, 255 );


-- ** 集中線 ** --
shuchusenga = entryEffectLife( spep_6 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_6 + 14, shuchusenga, 32, 25 );

setEffMoveKey( spep_6 + 14, shuchusenga, 0, 0 , 0 );
setEffMoveKey( spep_6 + 46, shuchusenga, 0, 0 , 0 );

setEffScaleKey( spep_6 + 14, shuchusenga, 1, 1 );
setEffScaleKey( spep_6 + 46, shuchusenga, 1, 1 );

setEffRotateKey( spep_6 + 14, shuchusenga, 0 );
setEffRotateKey( spep_6 + 46, shuchusenga, 0 );

setEffAlphaKey( spep_6 + 14, shuchusenga, 255 );
setEffAlphaKey( spep_6 + 28, shuchusenga, 255 );
setEffAlphaKey( spep_6 + 30, shuchusenga, 252 );
setEffAlphaKey( spep_6 + 32, shuchusenga, 242 );
setEffAlphaKey( spep_6 + 34, shuchusenga, 227 );
setEffAlphaKey( spep_6 + 36, shuchusenga, 205 );
setEffAlphaKey( spep_6 + 38, shuchusenga, 176 );
setEffAlphaKey( spep_6 + 40, shuchusenga, 142 );
setEffAlphaKey( spep_6 + 42, shuchusenga, 101 );
setEffAlphaKey( spep_6 + 44, shuchusenga, 54 );
setEffAlphaKey( spep_6 + 46, shuchusenga, 0 );

shuchusenga2 = entryEffectLife( spep_6 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_6 + 14, shuchusenga2, 0, 0 , 0 );
setEffMoveKey( spep_6 + 100, shuchusenga2, 0, 0 , 0 );

setEffScaleKey( spep_6 + 14, shuchusenga2, 1, 1 );
setEffScaleKey( spep_6 + 100, shuchusenga2, 1, 1 );

setEffRotateKey( spep_6 + 14, shuchusenga2, 0 );
setEffRotateKey( spep_6 + 100, shuchusenga2, 0 );

setEffAlphaKey( spep_6 + 14, shuchusenga2, 255 );
setEffAlphaKey( spep_6 + 100, shuchusenga2, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_6 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_6 + 14, ctga, 14, 20 );

setEffMoveKey( spep_6 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_6 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_6 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_6 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_6 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_6 + 14, ctga, -10.9 );
setEffRotateKey( spep_6 + 15, ctga, -10.9 );
setEffRotateKey( spep_6 + 16, ctga, -14.9 );
setEffRotateKey( spep_6 + 17, ctga, -14.9 );
setEffRotateKey( spep_6 + 18, ctga, -10.9 );
setEffRotateKey( spep_6 + 19, ctga, -10.9 );
setEffRotateKey( spep_6 + 20, ctga, -14.9 );
setEffRotateKey( spep_6 + 21, ctga, -14.9 );
setEffRotateKey( spep_6 + 22, ctga, -10.9 );
setEffRotateKey( spep_6 + 23, ctga, -10.9 );
setEffRotateKey( spep_6 + 24, ctga, -14.9 );
setEffRotateKey( spep_6 + 25, ctga, -14.9 );
setEffRotateKey( spep_6 + 26, ctga, -10.9 );
setEffRotateKey( spep_6 + 27, ctga, -10.9 );
setEffRotateKey( spep_6 + 28, ctga, -14.9 );
setEffRotateKey( spep_6 + 100, ctga, -14.9 );

setEffAlphaKey( spep_6 + 14, ctga, 255 );
setEffAlphaKey( spep_6 + 100, ctga, 255 );

-- ** ひび割れ ** --
hibiware = entryEffect( spep_6 + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_6 + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( spep_6 + 100, hibiware, 70, -60, 0 ); 

setEffScaleKey( spep_6 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_6 + 100, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_6 + 2, hibiware, 0 );
setEffRotateKey( spep_6 + 100, hibiware, 0 );

setEffAlphaKey( spep_6 + 2, hibiware, 0 );
setEffAlphaKey( spep_6 + 13, hibiware, 0 );
setEffAlphaKey( spep_6 + 14, hibiware, 255 );
setEffAlphaKey( spep_6 + 100, hibiware, 255 );

--SE
playSe( spep_6 , 1011 );
setSeVolume( spep_6 + 6, 1011, 60 );
playSe( spep_6 , 1008 );
setSeVolume( spep_6 + 6, 1008, 79 );
playSe( spep_6 + 14, 1054 );
setSeVolume( spep_6 + 14, 1054, 126 );

--終わり
dealDamage( spep_6 +10 );
endPhase( spep_6 + 98 );

else 
------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 構え〜連撃
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
panting_f = entryEffect( spep_0 + 0, SP_01x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, panting_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 312, panting_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, panting_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 312, panting_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, panting_f, 0 );
setEffRotateKey( spep_0 + 312, panting_f, 0 );
setEffAlphaKey( spep_0 + 0, panting_f, 255 );
setEffAlphaKey( spep_0 + 312, panting_f, 255 );

-- ** エフェクト等 ** --
panting_b = entryEffect( spep_0 + 0, SP_06x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, panting_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 312, panting_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, panting_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 312, panting_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, panting_b, 0 );
setEffRotateKey( spep_0 + 312, panting_b, 0 );
setEffAlphaKey( spep_0 + 0, panting_b, 255 );
setEffAlphaKey( spep_0 + 312, panting_b, 255 );

--敵の動き
setDisp( spep_0 + 0, 1, 1 );

changeAnime( spep_0 + 0, 1, 100 );

setMoveKey( spep_0 + 0, 1, 251.3, 169.3 , 0 );
--setMoveKey( spep_0-3 + 2, 1, 247.4, 169.5 , 0 );
setMoveKey( spep_0-3 + 4, 1, 243.5, 169.8 , 0 );
setMoveKey( spep_0-3 + 6, 1, 239.6, 170 , 0 );
setMoveKey( spep_0-3 + 8, 1, 235.6, 170.2 , 0 );
setMoveKey( spep_0-3 + 10, 1, 231.8, 170.4 , 0 );
setMoveKey( spep_0-3 + 12, 1, 227.8, 170.6 , 0 );
setMoveKey( spep_0-3 + 14, 1, 223.9, 170.9 , 0 );
setMoveKey( spep_0-3 + 16, 1, 220.1, 171.1 , 0 );
setMoveKey( spep_0-3 + 18, 1, 216.2, 171.3 , 0 );
setMoveKey( spep_0-3 + 20, 1, 212.3, 171.6 , 0 );
setMoveKey( spep_0-3 + 22, 1, 208.4, 171.8 , 0 );
setMoveKey( spep_0-3 + 24, 1, 204.6, 171.9 , 0 );
setMoveKey( spep_0-3 + 26, 1, 200.7, 172.2 , 0 );
setMoveKey( spep_0-3 + 28, 1, 196.8, 172.4 , 0 );
setMoveKey( spep_0-3 + 30, 1, 193, 172.7 , 0 );
setMoveKey( spep_0-3 + 32, 1, 189.2, 172.9 , 0 );
setMoveKey( spep_0-3 + 34, 1, 185.3, 173.1 , 0 );
setMoveKey( spep_0-3 + 36, 1, 181.5, 173.4 , 0 );
setMoveKey( spep_0-3 + 38, 1, 165, 173.5 , 0 );
setMoveKey( spep_0-3 + 41, 1, 154.8, 173.5 , 0 );

setScaleKey( spep_0 + 0, 1, 0.55+0.5, 0.55+0.5 );
--setScaleKey( spep_0-3 + 2, 1, 0.58, 0.58 );
setScaleKey( spep_0-3 + 4, 1, 0.61+0.5, 0.61+0.5 );
setScaleKey( spep_0-3 + 6, 1, 0.64+0.5, 0.64+0.5 );
setScaleKey( spep_0-3 + 8, 1, 0.67+0.5, 0.67+0.5 );
setScaleKey( spep_0-3 + 10, 1, 0.7+0.5, 0.7+0.5 );
setScaleKey( spep_0-3 + 12, 1, 0.73+0.5, 0.73+0.5 );
setScaleKey( spep_0-3 + 14, 1, 0.76+0.5, 0.76+0.5 );
setScaleKey( spep_0-3 + 16, 1, 0.79+0.5, 0.79+0.5 );
setScaleKey( spep_0-3 + 18, 1, 0.82+0.5, 0.82+0.5 );
setScaleKey( spep_0-3 + 20, 1, 0.85+0.5, 0.85+0.5 );
setScaleKey( spep_0-3 + 22, 1, 0.87+0.5, 0.87+0.5 );
setScaleKey( spep_0-3 + 24, 1, 0.9+0.5, 0.9+0.5 );
setScaleKey( spep_0-3 + 26, 1, 0.93+0.5, 0.93+0.5 );
setScaleKey( spep_0-3 + 28, 1, 0.96+0.5, 0.96+0.5 );
setScaleKey( spep_0-3 + 30, 1, 0.99+0.5, 0.99+0.5 );
setScaleKey( spep_0-3 + 32, 1, 1.02+0.5, 1.02+0.5 );
setScaleKey( spep_0-3 + 34, 1, 1.05+0.5, 1.05+0.5 );
setScaleKey( spep_0-3 + 36, 1, 1.08+0.5, 1.08+0.5 );
setScaleKey( spep_0-3 + 38, 1, 1.27+0.5, 1.27+0.5 );
setScaleKey( spep_0-3 + 41, 1, 1.39+0.5, 1.39+0.5 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );

--SE
SE0=playSe( spep_0 + 0, 8 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 312, 0,  0, 0, 0, 180 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 40; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    
    stopSe( SP_dodge - 12, SE0, 0 );


    pauseAll( SP_dodge, 67 );
    
    --敵の動き
    setMoveKey( SP_dodge+9, 1, 154.8, 173.5 , 0 );
    setScaleKey( SP_dodge+9 + 42, 1, 1.39, 1.39 );
    setRotateKey( SP_dodge+9, 1, 0 );


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
setDisp( spep_0 + 108, 1, 0 );
setDisp( spep_0 + 148, 1, 1 );
setDisp( spep_0 + 310, 1, 0 );


changeAnime( spep_0-3 + 42, 1, 117 );
changeAnime( spep_0-3 + 58, 1, 108 );
changeAnime( spep_0-3 + 102, 1, 106 );
changeAnime( spep_0-3 + 176, 1, 108 );
changeAnime( spep_0-3 + 200, 1, 106 );
changeAnime( spep_0-3 + 250, 1, 108 );

setMoveKey( spep_0-3 + 42, 1, 146.9, 173.5 , 0 );
setMoveKey( spep_0-3 + 44, 1, 140.2, 173.5 , 0 );
setMoveKey( spep_0-3 + 46, 1, 134.5, 173.4 , 0 );
setMoveKey( spep_0-3 + 48, 1, 129.4, 173.4 , 0 );
setMoveKey( spep_0-3 + 50, 1, 125, 173.5 , 0 );
setMoveKey( spep_0-3 + 52, 1, 120.8, 173.4 , 0 );
setMoveKey( spep_0-3 + 54, 1, 117.1, 173.4 , 0 );
setMoveKey( spep_0-3 + 57, 1, 113.7, 173.2 , 0 );
setMoveKey( spep_0-3 + 58, 1, 130.5, 185.3 , 0 );
setMoveKey( spep_0-3 + 60, 1, 135.4, 207.2 , 0 );
setMoveKey( spep_0-3 + 62, 1, 140.5, 183.7 , 0 );
setMoveKey( spep_0-3 + 64, 1, 145.8, 197.3 , 0 );
setMoveKey( spep_0-3 + 66, 1, 142.5, 182.5 , 0 );
setMoveKey( spep_0-3 + 68, 1, 139, 195.1 , 0 );
setMoveKey( spep_0-3 + 70, 1, 135.6, 187.1 , 0 );
setMoveKey( spep_0-3 + 72, 1, 132.2, 187.9 , 0 );
setMoveKey( spep_0-3 + 74, 1, 128.9, 188.5 , 0 );
setMoveKey( spep_0-3 + 76, 1, 125.5, 188.7 , 0 );
setMoveKey( spep_0-3 + 78, 1, 122.2, 188.8 , 0 );
setMoveKey( spep_0-3 + 80, 1, 118.8, 188.7 , 0 );
setMoveKey( spep_0-3 + 82, 1, 115.5, 188.5 , 0 );
setMoveKey( spep_0-3 + 84, 1, 112.2, 188.1 , 0 );
setMoveKey( spep_0-3 + 86, 1, 108.9, 187.7 , 0 );
setMoveKey( spep_0-3 + 88, 1, 105.5, 187.1 , 0 );
setMoveKey( spep_0-3 + 90, 1, 102.2, 186.5 , 0 );
setMoveKey( spep_0-3 + 92, 1, 98.9, 185.8 , 0 );
setMoveKey( spep_0-3 + 94, 1, 95.6, 185.1 , 0 );
setMoveKey( spep_0-3 + 96, 1, 92.3, 184.3 , 0 );
setMoveKey( spep_0-3 + 98, 1, 89.1, 183.4 , 0 );
setMoveKey( spep_0-3 + 101, 1, 85.5, 182.6 , 0 );
setMoveKey( spep_0-3 + 102, 1, 23.1, 300.1 , 0 );
setMoveKey( spep_0-3 + 104, 1, 28.7, 471.5 , 0 );
setMoveKey( spep_0-3 + 106, 1, 23.1, 359.8 , 0 );
setMoveKey( spep_0-3 + 108, 1, 46.7, 650.2 , 0 );
setMoveKey( spep_0-3 + 110, 1, 62.6, 817.2 , 0 );
setMoveKey( spep_0-3 + 112, 1, 74.5, 966.1 , 0 );
setMoveKey( spep_0-3 + 114, 1, 83.9, 1065.3 , 0 );
setMoveKey( spep_0-3 + 116, 1, 91.5, 1153.7 , 0 );
setMoveKey( spep_0-3 + 118, 1, 97.9, 1227.3 , 0 );
setMoveKey( spep_0-3 + 120, 1, 103.3, 1289.7 , 0 );
setMoveKey( spep_0-3 + 122, 1, 108, 1343.9 , 0 );
setMoveKey( spep_0-3 + 124, 1, 112.1, 1391.9 , 0 );
setMoveKey( spep_0-3 + 126, 1, 115.8, 1435.4 , 0 );
setMoveKey( spep_0-3 + 132, 1, 115.8, 1435.4 , 0 );
setMoveKey( spep_0-3 + 134, 1, 115.9, 1435.5 , 0 );
setMoveKey( spep_0-3 + 136, 1, 115.9, 1435.6 , 0 );
setMoveKey( spep_0-3 + 140, 1, 115.9, 1435.6 , 0 );
setMoveKey( spep_0-3 + 142, 1, 116, 1435.7 , 0 );
setMoveKey( spep_0-3 + 144, 1, 116, 1435.7 , 0 );
setMoveKey( spep_0-3 + 146, 1, 116, 1435.8 , 0 );
setMoveKey( spep_0-3 + 148, 1, 115.8, 1435.6 , 0 );
setMoveKey( spep_0-3 + 150, 1, 31.7, -583.4 , 0 );
setMoveKey( spep_0-3 + 152, 1, 38.8, -544 , 0 );
setMoveKey( spep_0-3 + 154, 1, 45.8, -505.2 , 0 );
setMoveKey( spep_0-3 + 156, 1, 52.7, -466.6 , 0 );
setMoveKey( spep_0-3 + 158, 1, 59.5, -428.3 , 0 );
setMoveKey( spep_0-3 + 160, 1, 66.4, -390.1 , 0 );
setMoveKey( spep_0-3 + 162, 1, 73.2, -352.2 , 0 );
setMoveKey( spep_0-3 + 164, 1, 80, -314.2 , 0 );
setMoveKey( spep_0-3 + 166, 1, 86.8, -276.3 , 0 );
setMoveKey( spep_0-3 + 168, 1, 93.6, -238.2 , 0 );
setMoveKey( spep_0-3 + 170, 1, 100.5, -200 , 0 );
setMoveKey( spep_0-3 + 172, 1, 107.4, -161.6 , 0 );
setMoveKey( spep_0-3 + 175, 1, 114.4, -123 , 0 );
setMoveKey( spep_0-3 + 176, 1, 112.5, -27.2 , 0 );
setMoveKey( spep_0-3 + 178, 1, 106.8, -11.9 , 0 );
setMoveKey( spep_0-3 + 180, 1, 101.1, -38.7 , 0 );
setMoveKey( spep_0-3 + 182, 1, 101.2, -20.9 , 0 );
setMoveKey( spep_0-3 + 184, 1, 96.2, -35.7 , 0 );
setMoveKey( spep_0-3 + 186, 1, 91.2, -22.5 , 0 );
setMoveKey( spep_0-3 + 188, 1, 86.2, -29.8 , 0 );
setMoveKey( spep_0-3 + 190, 1, 81.3, -27.6 , 0 );
setMoveKey( spep_0-3 + 192, 1, 76.3, -25.4 , 0 );
setMoveKey( spep_0-3 + 194, 1, 71.2, -23.1 , 0 );
setMoveKey( spep_0-3 + 196, 1, 66.3, -20.9 , 0 );
setMoveKey( spep_0-3 + 199, 1, 61.3, -18.6 , 0 );
setMoveKey( spep_0-3 + 200, 1, 27.8, 72.9 , 0 );
setMoveKey( spep_0-3 + 202, 1, 18.5, 82.7 , 0 );
setMoveKey( spep_0-3 + 204, 1, 17, 58.7 , 0 );
setMoveKey( spep_0-3 + 206, 1, 40.1, 83.3 , 0 );
setMoveKey( spep_0-3 + 208, 1, 56.1, 71 , 0 );
setMoveKey( spep_0-3 + 210, 1, 68.8, 85.8 , 0 );
setMoveKey( spep_0-3 + 212, 1, 79.2, 79.3 , 0 );
setMoveKey( spep_0-3 + 214, 1, 88.1, 82 , 0 );
setMoveKey( spep_0-3 + 216, 1, 95.9, 84.3 , 0 );
setMoveKey( spep_0-3 + 218, 1, 102.8, 86.3 , 0 );
setMoveKey( spep_0-3 + 220, 1, 109, 88.1 , 0 );
setMoveKey( spep_0-3 + 222, 1, 114.6, 89.8 , 0 );
setMoveKey( spep_0-3 + 224, 1, 119.6, 91.3 , 0 );
setMoveKey( spep_0-3 + 226, 1, 124.1, 92.6 , 0 );
setMoveKey( spep_0-3 + 228, 1, 128.3, 93.9 , 0 );
setMoveKey( spep_0-3 + 230, 1, 132.1, 95 , 0 );
setMoveKey( spep_0-3 + 232, 1, 135.6, 96 , 0 );
setMoveKey( spep_0-3 + 234, 1, 138.8, 97 , 0 );
setMoveKey( spep_0-3 + 236, 1, 141.8, 97.8 , 0 );
setMoveKey( spep_0-3 + 238, 1, 144.4, 98.6 , 0 );
setMoveKey( spep_0-3 + 240, 1, 146.9, 99.4 , 0 );
setMoveKey( spep_0-3 + 242, 1, 149.1, 100 , 0 );
setMoveKey( spep_0-3 + 244, 1, 151.2, 100.6 , 0 );
setMoveKey( spep_0-3 + 246, 1, 153.1, 101.2 , 0 );
setMoveKey( spep_0-3 + 249, 1, 154.7, 101.6 , 0 );
setMoveKey( spep_0-3 + 250, 1, 121.4, 128.5 , 0 );
setMoveKey( spep_0-3 + 252, 1, 115.6, 84.8 , 0 );
setMoveKey( spep_0-3 + 254, 1, 109.8, 84.3 , 0 );
setMoveKey( spep_0-3 + 256, 1, 104.2, 52.2 , 0 );
setMoveKey( spep_0-3 + 258, 1, 103.7, 51.7 , 0 );
setMoveKey( spep_0-3 + 260, 1, 103.3, 31.3 , 0 );
setMoveKey( spep_0-3 + 262, 1, 103, 41.1 , 0 );
setMoveKey( spep_0-3 + 264, 1, 112.1, 9.8 , 0 );
setMoveKey( spep_0-3 + 266, 1, 210.4, -135.7 , 0 );
setMoveKey( spep_0-3 + 268, 1, 276.6, -260.2 , 0 );
setMoveKey( spep_0-3 + 270, 1, 325.5, -328 , 0 );
setMoveKey( spep_0-3 + 272, 1, 363.7, -398.4 , 0 );
setMoveKey( spep_0-3 + 274, 1, 407.2, -451.9 , 0 );
setMoveKey( spep_0-3 + 276, 1, 446.7, -523 , 0 );
setMoveKey( spep_0-3 + 278, 1, 483.1, -568.5 , 0 );
setMoveKey( spep_0-3 + 280, 1, 517.2, -623.4 , 0 );
setMoveKey( spep_0-3 + 282, 1, 549.3, -667.6 , 0 );
setMoveKey( spep_0-3 + 284, 1, 579.8, -714.4 , 0 );
setMoveKey( spep_0-3 + 286, 1, 608.9, -754.3 , 0 );
setMoveKey( spep_0-3 + 288, 1, 637, -795.7 , 0 );
setMoveKey( spep_0-3 + 290, 1, 664.1, -832.7 , 0 );
setMoveKey( spep_0-3 + 292, 1, 690.3, -871.3 , 0 );
setMoveKey( spep_0-3 + 294, 1, 715.9, -907.1 , 0 );
setMoveKey( spep_0-3 + 296, 1, 740.9, -941.9 , 0 );
setMoveKey( spep_0-3 + 298, 1, 765.3, -975.8 , 0 );
setMoveKey( spep_0-3 + 300, 1, 789.2, -1008.9 , 0 );
setMoveKey( spep_0-3 + 302, 1, 812.8, -1041.4 , 0 );
setMoveKey( spep_0-3 + 304, 1, 836, -1073.4 , 0 );
setMoveKey( spep_0-3 + 306, 1, 859.1, -1104.9 , 0 );
setMoveKey( spep_0-3 + 308, 1, 881.7, -1135.9 , 0 );
setMoveKey( spep_0 + 310, 1, 904.5, -1166.7 , 0 );


setScaleKey( spep_0-3 + 42, 1, 1.48+0.5, 1.48+0.5 );
setScaleKey( spep_0-3 + 44, 1, 1.56+0.5, 1.56+0.5 );
setScaleKey( spep_0-3 + 46, 1, 1.62+0.5, 1.62+0.5 );
setScaleKey( spep_0-3 + 48, 1, 1.68+0.5, 1.68+0.5 );
setScaleKey( spep_0-3 + 50, 1, 1.73+0.5, 1.73+0.5 );
setScaleKey( spep_0-3 + 52, 1, 1.78+0.5, 1.78+0.5 );
setScaleKey( spep_0-3 + 54, 1, 1.82+0.5, 1.82+0.5 );
setScaleKey( spep_0-3 + 57, 1, 1.86+0.5, 1.86+0.5 );

setScaleKey( spep_0-3 + 58, 1, 2.53+0.5, 2.53+0.5 );
setScaleKey( spep_0-3 + 60, 1, 2.16+0.5, 2.16+0.5 );
setScaleKey( spep_0-3 + 62, 1, 1.8+0.5, 1.8+0.5 );
setScaleKey( spep_0-3 + 64, 1, 1.43+0.5, 1.43+0.5 );
setScaleKey( spep_0-3 + 102, 1, 1.43+0.5, 1.43+0.5 );



setScaleKey( spep_0-3 + 104, 1, 1.65+0.5, 1.65+0.5 );
setScaleKey( spep_0-3 + 106, 1, 1.43+0.5, 1.43+0.5 );
setScaleKey( spep_0-3 + 148, 1, 1.43+0.5, 1.43+0.5 );
setScaleKey( spep_0-3 + 150, 1, 1.32+0.5, 1.32+0.5 );
setScaleKey( spep_0-3 + 175, 1, 1.32+0.5, 1.32+0.5 );


setScaleKey( spep_0-3 + 176, 1, 1.54+0.5, 1.54+0.5 );
setScaleKey( spep_0-3 + 178, 1, 1.43+0.5, 1.43+0.5 );
setScaleKey( spep_0-3 + 180, 1, 1.32+0.5, 1.32+0.5 );
setScaleKey( spep_0-3 + 199, 1, 1.32+0.5, 1.32+0.5 );
setScaleKey( spep_0-3 + 200, 1, 1.54+0.5, 1.54+0.5 );


setScaleKey( spep_0-3 + 202, 1, 1.35+0.5, 1.35+0.5 );
setScaleKey( spep_0-3 + 204, 1, 1.32+0.5, 1.32+0.5 );
setScaleKey( spep_0-3 + 249, 1, 1.32+0.5, 1.32+0.5 );
setScaleKey( spep_0-3 + 250, 1, 1.53+0.5, 1.53+0.5 );
setScaleKey( spep_0-3 + 252, 1, 1.43+0.5, 1.43+0.5 );
setScaleKey( spep_0-3 + 254, 1, 1.32+0.5, 1.32+0.5 );
setScaleKey( spep_0-3 + 256, 1, 1.21+0.5, 1.21+0.5 );
setScaleKey( spep_0-3 + 264, 1, 1.21+0.5, 1.21+0.5 );
setScaleKey( spep_0-3 + 266, 1, 0.99+0.5, 0.99+0.5 );
setScaleKey( spep_0-3 + 268, 1, 0.84+0.5, 0.84+0.5 );
setScaleKey( spep_0-3 + 270, 1, 0.74+0.5, 0.74+0.5 );
setScaleKey( spep_0-3 + 272, 1, 0.66+0.5, 0.66+0.5 );
setScaleKey( spep_0-3 + 274, 1, 0.62+0.5, 0.62+0.5 );
setScaleKey( spep_0-3 + 276, 1, 0.58+0.5, 0.58+0.5 );
setScaleKey( spep_0-3 + 278, 1, 0.55+0.5, 0.55+0.5 );
setScaleKey( spep_0-3 + 280, 1, 0.53+0.5, 0.53+0.5 );
setScaleKey( spep_0-3 + 282, 1, 0.51+0.5, 0.51+0.5 );
setScaleKey( spep_0-3 + 284, 1, 0.49+0.5, 0.49+0.5 );
setScaleKey( spep_0-3 + 286, 1, 0.48+0.5, 0.48+0.5 );
setScaleKey( spep_0-3 + 288, 1, 0.47+0.5, 0.47+0.5 );
setScaleKey( spep_0-3 + 290, 1, 0.46+0.5, 0.46+0.5 );
setScaleKey( spep_0-3 + 292, 1, 0.45+0.5, 0.45+0.5 );
setScaleKey( spep_0-3 + 296, 1, 0.45+0.5, 0.45+0.5 );
setScaleKey( spep_0-3 + 298, 1, 0.44+0.5, 0.44+0.5 );
setScaleKey( spep_0-3 + 304, 1, 0.44+0.5, 0.44+0.5 );
setScaleKey( spep_0-3 + 306, 1, 0.45+0.5, 0.45+0.5 );
setScaleKey( spep_0 + 310, 1, 0.45+0.5, 0.45+0.5 );

setRotateKey( spep_0-3 + 58, 1, 0 );
setRotateKey( spep_0-3 + 60, 1, -2.5 );
setRotateKey( spep_0-3 + 62, 1, -4.5 );
setRotateKey( spep_0-3 + 64, 1, -6.1 );
setRotateKey( spep_0-3 + 66, 1, -7.5 );
setRotateKey( spep_0-3 + 68, 1, -8.7 );
setRotateKey( spep_0-3 + 70, 1, -9.7 );
setRotateKey( spep_0-3 + 72, 1, -10.6 );
setRotateKey( spep_0-3 + 74, 1, -11.4 );
setRotateKey( spep_0-3 + 76, 1, -12.1 );
setRotateKey( spep_0-3 + 78, 1, -12.7 );
setRotateKey( spep_0-3 + 80, 1, -13.3 );
setRotateKey( spep_0-3 + 82, 1, -13.8 );
setRotateKey( spep_0-3 + 84, 1, -14.3 );
setRotateKey( spep_0-3 + 86, 1, -14.7 );
setRotateKey( spep_0-3 + 88, 1, -15.1 );
setRotateKey( spep_0-3 + 90, 1, -15.5 );
setRotateKey( spep_0-3 + 92, 1, -15.8 );
setRotateKey( spep_0-3 + 94, 1, -16.1 );
setRotateKey( spep_0-3 + 96, 1, -16.4 );
setRotateKey( spep_0-3 + 98, 1, -16.7 );
setRotateKey( spep_0-3 + 101, 1, -17 );
setRotateKey( spep_0-3 + 102, 1, -54 );
setRotateKey( spep_0-3 + 108, 1, -54 );
setRotateKey( spep_0-3 + 110, 1, -54.1 );
setRotateKey( spep_0-3 + 148, 1, -54.1 );
setRotateKey( spep_0-3 + 150, 1, -54.2 );
setRotateKey( spep_0-3 + 152, 1, -54.2 );
setRotateKey( spep_0-3 + 154, 1, -54.1 );
setRotateKey( spep_0-3 + 175, 1, -54.1 );
setRotateKey( spep_0-3 + 176, 1, -61.7 );
setRotateKey( spep_0-3 + 182, 1, -61.7 );
setRotateKey( spep_0-3 + 184, 1, -60 );
setRotateKey( spep_0-3 + 186, 1, -58.2 );
setRotateKey( spep_0-3 + 188, 1, -56.4 );
setRotateKey( spep_0-3 + 190, 1, -54.7 );
setRotateKey( spep_0-3 + 192, 1, -52.9 );
setRotateKey( spep_0-3 + 194, 1, -51.2 );
setRotateKey( spep_0-3 + 196, 1, -49.4 );
setRotateKey( spep_0-3 + 199, 1, -47.7 );
setRotateKey( spep_0-3 + 200, 1, -67.7 );
setRotateKey( spep_0-3 + 202, 1, -51.6 );
setRotateKey( spep_0-3 + 204, 1, -48 );
setRotateKey( spep_0-3 + 206, 1, -45.2 );
setRotateKey( spep_0-3 + 208, 1, -43.2 );
setRotateKey( spep_0-3 + 210, 1, -41.6 );
setRotateKey( spep_0-3 + 212, 1, -40.4 );
setRotateKey( spep_0-3 + 214, 1, -39.3 );
setRotateKey( spep_0-3 + 216, 1, -38.3 );
setRotateKey( spep_0-3 + 218, 1, -37.5 );
setRotateKey( spep_0-3 + 220, 1, -36.7 );
setRotateKey( spep_0-3 + 222, 1, -36 );
setRotateKey( spep_0-3 + 224, 1, -35.4 );
setRotateKey( spep_0-3 + 226, 1, -34.8 );
setRotateKey( spep_0-3 + 228, 1, -34.3 );
setRotateKey( spep_0-3 + 230, 1, -33.9 );
setRotateKey( spep_0-3 + 232, 1, -33.4 );
setRotateKey( spep_0-3 + 234, 1, -33 );
setRotateKey( spep_0-3 + 236, 1, -32.7 );
setRotateKey( spep_0-3 + 238, 1, -32.3 );
setRotateKey( spep_0-3 + 240, 1, -32 );
setRotateKey( spep_0-3 + 242, 1, -31.8 );
setRotateKey( spep_0-3 + 244, 1, -31.5 );
setRotateKey( spep_0-3 + 246, 1, -31.3 );
setRotateKey( spep_0-3 + 249, 1, -31.1 );
setRotateKey( spep_0-3 + 250, 1, 26.2 );
setRotateKey( spep_0-3 + 252, 1, 29.7 );
setRotateKey( spep_0-3 + 254, 1, 33.1 );
setRotateKey( spep_0-3 + 256, 1, 36.3 );
setRotateKey( spep_0-3 + 258, 1, 39.3 );
setRotateKey( spep_0-3 + 260, 1, 42.2 );
setRotateKey( spep_0-3 + 262, 1, 44.9 );
setRotateKey( spep_0-3 + 264, 1, 44.9 );
setRotateKey( spep_0-3 + 266, 1, 48.5 );
setRotateKey( spep_0-3 + 268, 1, 50.9 );
setRotateKey( spep_0-3 + 270, 1, 52.6 );
setRotateKey( spep_0-3 + 272, 1, 53.9 );
setRotateKey( spep_0-3 + 274, 1, 54.9 );
setRotateKey( spep_0-3 + 276, 1, 55.7 );
setRotateKey( spep_0-3 + 278, 1, 56.4 );
setRotateKey( spep_0-3 + 280, 1, 57 );
setRotateKey( spep_0-3 + 282, 1, 57.4 );
setRotateKey( spep_0-3 + 284, 1, 57.8 );
setRotateKey( spep_0-3 + 286, 1, 58.2 );
setRotateKey( spep_0-3 + 288, 1, 58.4 );
setRotateKey( spep_0-3 + 290, 1, 58.7 );
setRotateKey( spep_0-3 + 292, 1, 58.9 );
setRotateKey( spep_0-3 + 294, 1, 59.1 );
setRotateKey( spep_0-3 + 296, 1, 59.3 );
setRotateKey( spep_0-3 + 298, 1, 59.4 );
setRotateKey( spep_0-3 + 300, 1, 59.5 );
setRotateKey( spep_0-3 + 302, 1, 59.6 );
setRotateKey( spep_0-3 + 304, 1, 59.7 );
setRotateKey( spep_0-3 + 306, 1, 59.8 );
setRotateKey( spep_0-3 + 308, 1, 59.9 );
setRotateKey( spep_0 + 310, 1, 59.9 );

--集中線
shuchusen1 = entryEffectLife( spep_0-3 + 58,  906, 12, 0x100, -1, 0, 0, -11.5 );
setEffShake( spep_0-3 + 58, shuchusen1, 12, 20 );
setEffMoveKey( spep_0-3 + 58, shuchusen1, 0, -11.5 , 0 );
setEffMoveKey( spep_0-3 + 70, shuchusen1, 0, -11.5 , 0 );

setEffScaleKey( spep_0-3 + 58, shuchusen1, 1.25, 1.25 );
setEffScaleKey( spep_0-3 + 70, shuchusen1, 1.25, 1.25 );

setEffRotateKey( spep_0-3 + 58, shuchusen1, 0 );
setEffRotateKey( spep_0-3 + 70, shuchusen1, 0 );

setEffAlphaKey( spep_0-3 + 58, shuchusen1, 255 );
setEffAlphaKey( spep_0-3 + 70, shuchusen1, 255 );

--集中線
shuchusen2 = entryEffectLife( spep_0-3 + 102,  906, 14, 0x100, -1, 0, 0, 0 );
setEffShake( spep_0-3 + 102, shuchusen2, 14, 20 );
setEffMoveKey( spep_0-3 + 102, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_0-3 + 116, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_0-3 + 102, shuchusen2, 1, 1 );
setEffScaleKey( spep_0-3 + 116, shuchusen2, 1, 1 );

setEffRotateKey( spep_0-3 + 102, shuchusen2, 0 );
setEffRotateKey( spep_0-3 + 116, shuchusen2, 0 );

setEffAlphaKey( spep_0-3 + 102, shuchusen2, 255 );
setEffAlphaKey( spep_0-3 + 116, shuchusen2, 255 );

--集中線
shuchusen3 = entryEffectLife( spep_0-3 + 176,  906, 14, 0x100, -1, 0, 0, 0 );
setEffShake( spep_0-3 + 176, shuchusen3, 14, 20 );
setEffMoveKey( spep_0-3 + 176, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_0-3 + 190, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_0-3 + 176, shuchusen3, 1, 1 );
setEffScaleKey( spep_0-3 + 190, shuchusen3, 1, 1 );

setEffRotateKey( spep_0-3 + 176, shuchusen3, 0 );
setEffRotateKey( spep_0-3 + 190, shuchusen3, 0 );

setEffAlphaKey( spep_0-3 + 176, shuchusen3, 255 );
setEffAlphaKey( spep_0-3 + 190, shuchusen3, 255 );

--集中線
shuchusen4 = entryEffectLife( spep_0-3 + 200,  906, 12, 0x100, -1, 0, 0, 0 );
setEffShake( spep_0-3 + 200, shuchusen4, 12, 20 );
setEffMoveKey( spep_0-3 + 200, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_0-3 + 212, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_0-3 + 200, shuchusen4, 2, 2 );
setEffScaleKey( spep_0-3 + 212, shuchusen4, 2, 2 );

setEffRotateKey( spep_0-3 + 200, shuchusen4, 0 );
setEffRotateKey( spep_0-3 + 212, shuchusen4, 0 );

setEffAlphaKey( spep_0-3 + 200, shuchusen4, 255 );
setEffAlphaKey( spep_0-3 + 212, shuchusen4, 255 );

--集中線
shuchusen5 = entryEffectLife( spep_0-3 + 250,  906, 26, 0x100, -1, 0, -63, 30 );
setEffShake( spep_0-3 + 250, shuchusen5, 26, 20 );
setEffMoveKey( spep_0-3 + 250, shuchusen5, -63, 30 , 0 );
setEffMoveKey( spep_0-3 + 276, shuchusen5, -63, 30 , 0 );

setEffScaleKey( spep_0-3 + 250, shuchusen5, 2, 2 );
setEffScaleKey( spep_0-3 + 276, shuchusen5, 2, 2 );

setEffRotateKey( spep_0-3 + 250, shuchusen5, 0 );
setEffRotateKey( spep_0-3 + 276, shuchusen5, 0 );

setEffScaleKey( spep_0-3 + 250, shuchusen5, 2, 2 );
setEffScaleKey( spep_0-3 + 276, shuchusen5, 2, 2 );

--文字エントリー
ctdon = entryEffectLife( spep_0-3 + 58,  10019, 12, 0x100, -1, 0, -107.3, 357.6 );
setEffShake( spep_0-3 + 58, ctdon, 12, 10 );
setEffMoveKey( spep_0-3 + 58, ctdon, -107.3, 357.6 , 0 );
setEffMoveKey( spep_0-3 + 60, ctdon, -90.9, 361 , 0 );
setEffMoveKey( spep_0-3 + 62, ctdon, -107.3, 357.6 , 0 );
setEffMoveKey( spep_0-3 + 64, ctdon, -90.9, 361 , 0 );
setEffMoveKey( spep_0-3 + 66, ctdon, -107.3, 357.6 , 0 );
setEffMoveKey( spep_0-3 + 68, ctdon, -90.9, 361 , 0 );
setEffMoveKey( spep_0-3 + 70, ctdon, -107.3, 357.6 , 0 );

setEffScaleKey( spep_0-3 + 58, ctdon, 2.09, 2.09 );
setEffScaleKey( spep_0-3 + 70, ctdon, 2.09, 2.09 );

setEffRotateKey( spep_0-3 + 58, ctdon, 15 );
setEffRotateKey( spep_0-3 + 70, ctdon, 15 );

setEffAlphaKey( spep_0-3 + 58, ctdon, 255 );
setEffAlphaKey( spep_0-3 + 70, ctdon, 255 );

--文字エントリー
ctbagon = entryEffectLife( spep_0-3 + 102,  10021, 14, 0x100, -1, 0, 162.9, 4.9 );

setEffMoveKey( spep_0-3 + 102, ctbagon, 162.9, 4.9 , 0 );
setEffMoveKey( spep_0-3 + 116, ctbagon, 162.9, 4.9 , 0 );

setEffScaleKey( spep_0-3 + 102, ctbagon, 2.03, 2.03 );
setEffScaleKey( spep_0-3 + 104, ctbagon, 2.23, 2.23 );
setEffScaleKey( spep_0-3 + 106, ctbagon, 2.03, 2.03 );
setEffScaleKey( spep_0-3 + 108, ctbagon, 2.23, 2.23 );
setEffScaleKey( spep_0-3 + 110, ctbagon, 2.03, 2.03 );
setEffScaleKey( spep_0-3 + 112, ctbagon, 2.23, 2.23 );
setEffScaleKey( spep_0-3 + 114, ctbagon, 2.03, 2.03 );
setEffScaleKey( spep_0-3 + 116, ctbagon, 2.23, 2.23 );

setEffRotateKey( spep_0-3 + 102, ctbagon, 15.5 );
setEffRotateKey( spep_0-3 + 116, ctbagon, 15.5 );

setEffAlphaKey( spep_0-3 + 102, ctbagon, 255 );
setEffAlphaKey( spep_0-3 + 116, ctbagon, 255 );

--文字エントリー
ctbaki = entryEffectLife( spep_0-3 + 176,  10020, 14, 0x100, -1, 0, -45.1, 129.8 );
setEffShake( spep_0-3 + 176, ctbaki, 14, 10 );
setEffMoveKey( spep_0-3 + 176, ctbaki, -45.1, 129.8 , 0 );
setEffMoveKey( spep_0-3 + 178, ctbaki, -36.3, 146.5 , 0 );
setEffMoveKey( spep_0-3 + 180, ctbaki, -45.1, 129.8 , 0 );
setEffMoveKey( spep_0-3 + 182, ctbaki, -36.3, 146.5 , 0 );
setEffMoveKey( spep_0-3 + 184, ctbaki, -45.1, 129.8 , 0 );
setEffMoveKey( spep_0-3 + 186, ctbaki, -36.3, 146.5 , 0 );
setEffMoveKey( spep_0-3 + 188, ctbaki, -45.1, 129.8 , 0 );
setEffMoveKey( spep_0-3 + 190, ctbaki, -36.3, 146.5 , 0 );

setEffScaleKey( spep_0-3 + 176, ctbaki, 1.46, 1.46 );
setEffScaleKey( spep_0-3 + 190, ctbaki, 1.46, 1.46 );

setEffRotateKey( spep_0-3 + 176, ctbaki, -17 );
setEffRotateKey( spep_0-3 + 190, ctbaki, -17 );

setEffAlphaKey( spep_0-3 + 176, ctbaki, 255 );
setEffAlphaKey( spep_0-3 + 190, ctbaki, 255 );

--文字エントリー
ctga = entryEffectLife( spep_0-3 + 200,  10005, 12, 0x100, -1, 0, -114.9, 180.8 );
setEffShake( spep_0-3 + 200, ctga, 12, 10 );
setEffMoveKey( spep_0-3 + 200, ctga, -114.9, 180.8 , 0 );
setEffMoveKey( spep_0-3 + 202, ctga, -102.8, 183.2 , 0 );
setEffMoveKey( spep_0-3 + 204, ctga, -114.9, 180.8 , 0 );
setEffMoveKey( spep_0-3 + 206, ctga, -102.8, 183.2 , 0 );
setEffMoveKey( spep_0-3 + 208, ctga, -114.9, 180.8 , 0 );
setEffMoveKey( spep_0-3 + 210, ctga, -102.8, 183.2 , 0 );
setEffMoveKey( spep_0-3 + 212, ctga, -114.9, 180.8 , 0 );

setEffScaleKey( spep_0-3 + 200, ctga, 1.53, 1.53 );
setEffScaleKey( spep_0-3 + 212, ctga, 1.53, 1.53 );

setEffRotateKey( spep_0-3 + 200, ctga, 15.5 );
setEffRotateKey( spep_0-3 + 212, ctga, 15.5 );

setEffAlphaKey( spep_0-3 + 200, ctga, 255 );
setEffAlphaKey( spep_0-3 + 212, ctga, 255 );

--文字エントリー
ctdogon = entryEffectLife( spep_0-3 + 250,  10018, 26, 0x100, -1, 0, -78, -43.2 );
setEffShake( spep_0-3 + 250, ctdogon, 26, 10 );
setEffMoveKey( spep_0-3 + 250, ctdogon, -78, -43.2 , 0 );
setEffMoveKey( spep_0-3 + 252, ctdogon, -82.2, -84.7 , 0 );
setEffMoveKey( spep_0-3 + 254, ctdogon, -70, -136 , 0 );
setEffMoveKey( spep_0-3 + 256, ctdogon, -78.1, -143.4 , 0 );
setEffMoveKey( spep_0-3 + 258, ctdogon, -66.3, -140.1 , 0 );
setEffMoveKey( spep_0-3 + 260, ctdogon, -60.1, -159.8 , 0 );
setEffMoveKey( spep_0-3 + 262, ctdogon, -60.2, -150.3 , 0 );
setEffMoveKey( spep_0-3 + 264, ctdogon, -48.5, -166.4 , 0 );
setEffMoveKey( spep_0-3 + 266, ctdogon, -51.4, -168.1 , 0 );
setEffMoveKey( spep_0-3 + 268, ctdogon, -36.1, -176.1 , 0 );
setEffMoveKey( spep_0-3 + 270, ctdogon, -41.9, -181.3 , 0 );
setEffMoveKey( spep_0-3 + 272, ctdogon, -16.6, -206.6 , 0 );
setEffMoveKey( spep_0-3 + 274, ctdogon, -28.9, -224.3 , 0 );
setEffMoveKey( spep_0-3 + 276, ctdogon, -22.9, -239.8 , 0 );

setEffScaleKey( spep_0-3 + 250, ctdogon, 0.65, 0.65 );
setEffScaleKey( spep_0-3 + 252, ctdogon, 1.77, 1.77 );
setEffScaleKey( spep_0-3 + 254, ctdogon, 2.9, 2.9 );
setEffScaleKey( spep_0-3 + 256, ctdogon, 2.93, 2.93 );
setEffScaleKey( spep_0-3 + 258, ctdogon, 2.96, 2.96 );
setEffScaleKey( spep_0-3 + 260, ctdogon, 3, 3 );
setEffScaleKey( spep_0-3 + 262, ctdogon, 3.03, 3.03 );
setEffScaleKey( spep_0-3 + 264, ctdogon, 3.07, 3.07 );
setEffScaleKey( spep_0-3 + 266, ctdogon, 3.1, 3.1 );
setEffScaleKey( spep_0-3 + 268, ctdogon, 3.13, 3.13 );
setEffScaleKey( spep_0-3 + 270, ctdogon, 3.56, 3.56 );
setEffScaleKey( spep_0-3 + 272, ctdogon, 3.99, 3.99 );
setEffScaleKey( spep_0-3 + 274, ctdogon, 4.42, 4.42 );
setEffScaleKey( spep_0-3 + 276, ctdogon, 4.85, 4.85 );

setEffRotateKey( spep_0-3 + 250, ctdogon, -30 );
setEffRotateKey( spep_0-3 + 252, ctdogon, -30 );
setEffRotateKey( spep_0-3 + 254, ctdogon, -29.9 );
setEffRotateKey( spep_0-3 + 258, ctdogon, -29.9 );
setEffRotateKey( spep_0-3 + 260, ctdogon, -30 );
setEffRotateKey( spep_0-3 + 276, ctdogon, -30 );

setEffAlphaKey( spep_0-3 + 250, ctdogon, 255 );
setEffAlphaKey( spep_0-3 + 268, ctdogon, 255 );
setEffAlphaKey( spep_0-3 + 270, ctdogon, 191 );
setEffAlphaKey( spep_0-3 + 272, ctdogon, 128 );
setEffAlphaKey( spep_0-3 + 274, ctdogon, 64 );
setEffAlphaKey( spep_0-3 + 276, ctdogon, 0 );


se_1116 = playSe( spep_0 + 39, 1116 );
playSe( spep_0 + 43, 1003 );
playSe( spep_0 + 60, 1000 );
playSe( spep_0 + 62, 1012 );
playSe( spep_0 + 62, 1009 );
setSeVolume( spep_0 + 62, 1009, 77 );
playSe( spep_0 + 104, 1189 );
playSe( spep_0 + 109, 1010 );
playSe( spep_0 + 109, 1001 );
setSeVolume( spep_0 + 109, 1001, 60 );
playSe( spep_0 + 111, 1110 );
se_11161 = playSe( spep_0 + 139, 1116 );
setSeVolume( spep_0 + 139, 1116, 60 );
se_0044 = playSe( spep_0 + 144, 44 );
playSe( spep_0 + 180, 1007 );
playSe( spep_0 + 181, 1110 );
playSe( spep_0 + 197, 1189 );
playSe( spep_0 + 200, 1000 );
playSe( spep_0 + 201, 1012 );
playSe( spep_0 + 228, 1004 );
setSeVolume( spep_0 + 228, 1004, 74 );
playSe( spep_0 + 249, 1004 );
playSe( spep_0 + 249, 19 );
setSeVolume( spep_0 + 249, 19, 49 );
playSe( spep_0 + 249, 1010 );
setSeVolume( spep_0 + 249, 1010, 112 );
playSe( spep_0 + 249, 1001 );
playSe( spep_0 + 261, 1110 );
playSe( spep_0 + 262, 1047 );
setSeVolume( spep_0 + 262, 1047, 79 );
playSe( spep_0 + 268, 1169 );
setSeVolume( spep_0 + 268, 1169, 40 );

stopSe( spep_0 + 62, se_1116, 19 );
stopSe( spep_0 + 156, se_11161, 27 );
stopSe( spep_0 + 166, se_0044, 20 );

--白フェード
entryFade( spep_0+98 , 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_0+246 , 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_0+304 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


-- ** 次の準備 ** --
spep_1=spep_0+312;
------------------------------------------------------
-- 気弾溜め
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_1 + 0, SP_02x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_1 + 100, tame, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_1 + 100, tame, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tame, 0 );
setEffRotateKey( spep_1 + 100, tame, 0 );
setEffAlphaKey( spep_1 + 0, tame, 255 );
setEffAlphaKey( spep_1 + 100, tame, 255 );

--顔カットイン
--speff = entryEffect( spep_1  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_1  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

--集中線
shuchusen6 = entryEffectLife( spep_1 ,  906, 98, 0x100, -1, 0, 0, 0 );
setEffShake( spep_1, shuchusen6, 98, 20 );
setEffMoveKey( spep_1 , shuchusen6, 0, 0 , 0 );
setEffMoveKey( spep_1 + 98, shuchusen6, 0, 0 , 0 );

setEffScaleKey( spep_1, shuchusen6, 1.05, 1.05 );
setEffScaleKey( spep_1 + 98, shuchusen6, 1.05, 1.05 );

setEffRotateKey( spep_1 , shuchusen6, 0 );
setEffRotateKey( spep_1 + 98, shuchusen6, 0 );

setEffAlphaKey( spep_1 , shuchusen6, 0 );
setEffAlphaKey( spep_1-3 + 9, shuchusen6, 0 );
setEffAlphaKey( spep_1-3 + 10, shuchusen6, 255 );
setEffAlphaKey( spep_1 + 98, shuchusen6, 255 );

-- 文字エントリー --
ctgogo = entryEffectLife( spep_1 +12, 190006, 72, 0x100, -1, 0, 100, 510);-- ゴゴゴゴ

setEffMoveKey(  spep_1 +12,  ctgogo,  100,  510);
setEffMoveKey(  spep_1 +84,  ctgogo,  100,  510);

setEffAlphaKey( spep_1 +12, ctgogo, 0 );
setEffAlphaKey( spep_1 + 13, ctgogo, 255 );
setEffAlphaKey( spep_1 + 14, ctgogo, 255 );
setEffAlphaKey( spep_1 + 78, ctgogo, 255 );
setEffAlphaKey( spep_1 + 80, ctgogo, 191 );
setEffAlphaKey( spep_1 + 82, ctgogo, 112 );
setEffAlphaKey( spep_1 + 84, ctgogo, 64 );

setEffRotateKey(  spep_1 +12,  ctgogo,  0);
setEffRotateKey(  spep_1 +84,  ctgogo,  0);

setEffScaleKey(  spep_1 +12,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_1 +74,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_1 +84,  ctgogo, -1.07, 1.07 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 100, 0,  0, 0, 0, 180 ); --くろ 背景

--SE
playSe( spep_1 + 10, 49 );
se_1191 = playSe( spep_1 + 11, 1191 );
setSeVolume( spep_1 + 11, 1191, 178 );
se_1262 = playSe( spep_1 + 11, 1262 );
setSeVolume( spep_1 + 11, 1262, 138 );
se_1037 = playSe( spep_1 + 11, 1037 );
setSeVolume( spep_1 + 11, 1037, 69 );
playSe( spep_1 + 12, 1018 );

stopSe( spep_1 + 57, se_1191, 23 );

--白フェード
entryFade( spep_1+92 , 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2=spep_1+100;
--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_2 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_2 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_2 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_2 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_2 + 0, shuchusen, 0 );
setEffRotateKey( spep_2 + 90, shuchusen, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen, 255 );
setEffAlphaKey( spep_2 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_2 + 0, SE_05 );

stopSe( spep_2 + 2, se_1262, 0 );
stopSe( spep_2 + 2, se_1037, 0 );

--白フェード
entryFade( spep_2 + 80, 6, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;
------------------------------------------------------
-- 気弾発射
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_3 + 0, SP_03x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, beam, 0, 0, 0 );
setEffMoveKey( spep_3 + 66, beam, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_3 + 66, beam, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, beam, 0 );
setEffRotateKey( spep_3 + 66, beam, 0 );
setEffAlphaKey( spep_3 + 0, beam, 255 );
setEffAlphaKey( spep_3 + 66, beam, 255 );
setEffAlphaKey( spep_3 + 67, beam, 0 );
setEffAlphaKey( spep_3 + 68, beam, 0 );

--集中線
shuchusen7 = entryEffectLife( spep_3 + 0,  906, 22, 0x100, -1, 0, 0, 39 );
setEffShake( spep_3 + 22, shuchusen7, 22, 20 );
setEffMoveKey( spep_3 + 0, shuchusen7, 0, 39 , 0 );
setEffMoveKey( spep_3 + 22, shuchusen7, 0, 39 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen7, 1.5, 1.2 );
setEffScaleKey( spep_3 + 22, shuchusen7, 1.5, 1.2 );

setEffRotateKey( spep_3 + 0, shuchusen7, 0 );
setEffRotateKey( spep_3 + 22, shuchusen7, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen7, 255 );
setEffAlphaKey( spep_3 + 22, shuchusen7, 255 );

--文字エントリー
ctzuo = entryEffectLife( spep_3-3 + 20,  10012, 24, 0x100, -1, 0, 58.7, 239.5 );
setEffShake( spep_3-3 + 20, ctzuo, 24, 10 );
setEffMoveKey( spep_3-3 + 20, ctzuo, 58.7, 239.5 , 0 );
setEffMoveKey( spep_3-3 + 22, ctzuo, 107, 332.8 , 0 );
setEffMoveKey( spep_3-3 + 24, ctzuo, 111.7, 336.2 , 0 );
setEffMoveKey( spep_3-3 + 26, ctzuo, 125.9, 347.5 , 0 );
setEffMoveKey( spep_3-3 + 28, ctzuo, 130.7, 350.9 , 0 );
setEffMoveKey( spep_3-3 + 30, ctzuo, 144.9, 362.3 , 0 );
setEffMoveKey( spep_3-3 + 32, ctzuo, 149.7, 365.6 , 0 );
setEffMoveKey( spep_3-3 + 34, ctzuo, 163.9, 377 , 0 );
setEffMoveKey( spep_3-3 + 36, ctzuo, 168.7, 380.4 , 0 );
setEffMoveKey( spep_3-3 + 38, ctzuo, 188, 389.2 , 0 );
setEffMoveKey( spep_3-3 + 40, ctzuo, 197.9, 390.1 , 0 );
setEffMoveKey( spep_3-3 + 42, ctzuo, 217.3, 399 , 0 );
setEffMoveKey( spep_3-3 + 44, ctzuo, 227.2, 399.9 , 0 );

a=1.8;

setEffScaleKey( spep_3-3 + 20, ctzuo, 0.38+a, 0.38+a );
setEffScaleKey( spep_3-3 + 22, ctzuo, 0.7+a, 0.7+a );
setEffScaleKey( spep_3-3 + 44, ctzuo, 0.7+a, 0.7+a );

setEffRotateKey( spep_3-3 + 20, ctzuo, 25 );
setEffRotateKey( spep_3-3 + 44, ctzuo, 25 );

setEffAlphaKey( spep_3-3 + 20, ctzuo, 128 );
setEffAlphaKey( spep_3-3 + 22, ctzuo, 255 );
setEffAlphaKey( spep_3-3 + 36, ctzuo, 255 );
setEffAlphaKey( spep_3-3 + 38, ctzuo, 198 );
setEffAlphaKey( spep_3-3 + 40, ctzuo, 140 );
setEffAlphaKey( spep_3-3 + 42, ctzuo, 83 );
setEffAlphaKey( spep_3-3 + 44, ctzuo, 26 );

--SE
playSe( spep_3 + 3, 49 );
playSe( spep_3 + 19, 1027 );
se_1177 = playSe( spep_3 + 19, 1177 );
setSeVolume( spep_3 + 19, 1177, 73 );
se_1022 = playSe( spep_3 + 20, 1022 );
setSeVolume( spep_3 + 20, 1022, 126 );

--白フェード
entryFade( spep_3 + 58, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 66, 0,  0, 0, 0, 180 ); --くろ 背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 66;
------------------------------------------------------
-- 気弾着弾
------------------------------------------------------

-- ** エフェクト等 ** --
hit_f = entryEffect( spep_4 + 0, SP_07x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 70, hit_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 70, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hit_f, 0 );
setEffRotateKey( spep_4 + 70, hit_f, 0 );
setEffAlphaKey( spep_4 + 0, hit_f, 255 );
setEffAlphaKey( spep_4 + 70, hit_f, 255 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_4 + 0, SP_04x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 70, hit_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 70, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hit_b, 0 );
setEffRotateKey( spep_4 + 70, hit_b, 0 );
setEffAlphaKey( spep_4 + 0, hit_b, 255 );
setEffAlphaKey( spep_4 + 70, hit_b, 255 );

--文字エントリー

ctzudodo = entryEffectLife( spep_4 + 2,  10014, 64, 0x100, -1, 0, -180.5, 429.7 );
setEffShake( spep_4 + 2, ctzudodo, 64, 10 );
setEffMoveKey( spep_4 + 2, ctzudodo, -180.5, 429.7 , 0 );
setEffMoveKey( spep_4 + 4, ctzudodo, -172.9, 435.3 , 0 );
setEffMoveKey( spep_4 + 6, ctzudodo, -162.5, 419 , 0 );
setEffMoveKey( spep_4 + 8, ctzudodo, -155.1, 426.4 , 0 );
setEffMoveKey( spep_4 + 10, ctzudodo, -144.5, 408.3 , 0 );
setEffMoveKey( spep_4 + 12, ctzudodo, -137.3, 417.5 , 0 );
setEffMoveKey( spep_4 + 14, ctzudodo, -126.5, 397.6 , 0 );
setEffMoveKey( spep_4 + 16, ctzudodo, -119.6, 408.6 , 0 );
setEffMoveKey( spep_4 + 18, ctzudodo, -108.5, 387 , 0 );
setEffMoveKey( spep_4 + 20, ctzudodo, -105, 399.9 , 0 );
setEffMoveKey( spep_4 + 22, ctzudodo, -97, 378.3 , 0 );
setEffMoveKey( spep_4 + 24, ctzudodo, -93.5, 391.5 , 0 );
setEffMoveKey( spep_4 + 26, ctzudodo, -85.5, 369.6 , 0 );
setEffMoveKey( spep_4 + 28, ctzudodo, -82.1, 383.1 , 0 );
setEffMoveKey( spep_4 + 30, ctzudodo, -74.1, 361 , 0 );
setEffMoveKey( spep_4 + 32, ctzudodo, -70.7, 374.7 , 0 );
setEffMoveKey( spep_4 + 34, ctzudodo, -62.6, 352.3 , 0 );
setEffMoveKey( spep_4 + 36, ctzudodo, -59.3, 366.3 , 0 );
setEffMoveKey( spep_4 + 38, ctzudodo, -51.1, 343.6 , 0 );
setEffMoveKey( spep_4 + 40, ctzudodo, -47.8, 358 , 0 );
setEffMoveKey( spep_4 + 42, ctzudodo, -39.7, 335 , 0 );
setEffMoveKey( spep_4 + 44, ctzudodo, -36.4, 349.6 , 0 );
setEffMoveKey( spep_4 + 46, ctzudodo, -28.2, 326.3 , 0 );
setEffMoveKey( spep_4 + 48, ctzudodo, -25, 341.2 , 0 );
setEffMoveKey( spep_4 + 50, ctzudodo, -16.8, 317.7 , 0 );
setEffMoveKey( spep_4 + 52, ctzudodo, -13.6, 332.8 , 0 );
setEffMoveKey( spep_4 + 54, ctzudodo, -5.3, 309 , 0 );
setEffMoveKey( spep_4 + 56, ctzudodo, -2.1, 324.4 , 0 );
setEffMoveKey( spep_4 + 58, ctzudodo, 6.2, 300.3 , 0 );
setEffMoveKey( spep_4 + 60, ctzudodo, 9.3, 316 , 0 );
setEffMoveKey( spep_4 + 62, ctzudodo, 11.9, 296 , 0 );
setEffMoveKey( spep_4 + 64, ctzudodo, 9.3, 316 , 0 );
setEffMoveKey( spep_4 + 66, ctzudodo, 11.9, 296 , 0 );

b=0.4;

setEffScaleKey( spep_4 + 2, ctzudodo, 1.35+b, 1.35+b );
setEffScaleKey( spep_4 + 4, ctzudodo, 1.38+b, 1.38+b );
setEffScaleKey( spep_4 + 6, ctzudodo, 1.41+b, 1.41+b );
setEffScaleKey( spep_4 + 8, ctzudodo, 1.44+b, 1.44+b );
setEffScaleKey( spep_4 + 10, ctzudodo, 1.47+b, 1.47+b );
setEffScaleKey( spep_4 + 12, ctzudodo, 1.51+b, 1.51+b );
setEffScaleKey( spep_4 + 14, ctzudodo, 1.54+b, 1.54+b );
setEffScaleKey( spep_4 + 16, ctzudodo, 1.57+b, 1.57+b );
setEffScaleKey( spep_4 + 18, ctzudodo, 1.6+b, 1.6+b );
setEffScaleKey( spep_4 + 20, ctzudodo, 1.6+b, 1.6+b );
setEffScaleKey( spep_4 + 22, ctzudodo, 1.61+b, 1.61+b );
setEffScaleKey( spep_4 + 24, ctzudodo, 1.61+b, 1.61+b );
setEffScaleKey( spep_4 + 26, ctzudodo, 1.62+b, 1.62+b );
setEffScaleKey( spep_4 + 28, ctzudodo, 1.62+b, 1.62+b );
setEffScaleKey( spep_4 + 30, ctzudodo, 1.63+b, 1.63+b );
setEffScaleKey( spep_4 + 32, ctzudodo, 1.63+b, 1.63+b );
setEffScaleKey( spep_4 + 34, ctzudodo, 1.64+b, 1.64+b );
setEffScaleKey( spep_4 + 36, ctzudodo, 1.64+b, 1.64+b );
setEffScaleKey( spep_4 + 38, ctzudodo, 1.65+b, 1.65+b );
setEffScaleKey( spep_4 + 40, ctzudodo, 1.65+b, 1.65+b );
setEffScaleKey( spep_4 + 42, ctzudodo, 1.66+b, 1.66+b );
setEffScaleKey( spep_4 + 44, ctzudodo, 1.66+b, 1.66+b );
setEffScaleKey( spep_4 + 46, ctzudodo, 1.67+b, 1.67+b );
setEffScaleKey( spep_4 + 48, ctzudodo, 1.67+b, 1.67+b );
setEffScaleKey( spep_4 + 50, ctzudodo, 1.68+b, 1.68+b );
setEffScaleKey( spep_4 + 54, ctzudodo, 1.68+b, 1.68+b );
setEffScaleKey( spep_4 + 56, ctzudodo, 1.69+b, 1.69+b );
setEffScaleKey( spep_4 + 58, ctzudodo, 1.69+b, 1.69+b );
setEffScaleKey( spep_4 + 60, ctzudodo, 1.7+b, 1.7+b );
setEffScaleKey( spep_4 + 66, ctzudodo, 1.7+b, 1.7+b );

setEffRotateKey( spep_4 + 2, ctzudodo, -63.7 );
setEffRotateKey( spep_4 + 66, ctzudodo, -63.7 );

setEffAlphaKey( spep_4 + 2, ctzudodo, 28 );
setEffAlphaKey( spep_4 + 4, ctzudodo, 57 );
setEffAlphaKey( spep_4 + 6, ctzudodo, 85 );
setEffAlphaKey( spep_4 + 8, ctzudodo, 113 );
setEffAlphaKey( spep_4 + 10, ctzudodo, 142 );
setEffAlphaKey( spep_4 + 12, ctzudodo, 170 );
setEffAlphaKey( spep_4 + 14, ctzudodo, 198 );
setEffAlphaKey( spep_4 + 16, ctzudodo, 227 );
setEffAlphaKey( spep_4 + 18, ctzudodo, 255 );
setEffAlphaKey( spep_4 + 66, ctzudodo, 255 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 48, 1, 0 );

changeAnime( spep_4 + 0, 1, 107 );

setMoveKey( spep_4 + 0, 1, -651.3, 684.7 , 0 );
setMoveKey( spep_4 + 2, 1, -567.8, 582.9 , 0 );
setMoveKey( spep_4 + 4, 1, -517, 520.6 , 0 );
setMoveKey( spep_4 + 6, 1, -476.4, 470.3 , 0 );
setMoveKey( spep_4 + 8, 1, -441.2, 426.5 , 0 );
setMoveKey( spep_4 + 10, 1, -409.5, 386.8 , 0 );
setMoveKey( spep_4 + 12, 1, -380.2, 350.1 , 0 );
setMoveKey( spep_4 + 14, 1, -352.8, 315.6 , 0 );
setMoveKey( spep_4 + 16, 1, -326.9, 283.1 , 0 );
setMoveKey( spep_4 + 18, 1, -302.3, 252 , 0 );
setMoveKey( spep_4 + 20, 1, -276.2, 220.2 , 0 );
setMoveKey( spep_4 + 22, 1, -251.7, 190.3 , 0 );
setMoveKey( spep_4 + 24, 1, -228.5, 162 , 0 );
setMoveKey( spep_4 + 26, 1, -206.7, 135.3 , 0 );
setMoveKey( spep_4 + 28, 1, -186.2, 110.2 , 0 );
setMoveKey( spep_4 + 30, 1, -166.9, 86.5 , 0 );
setMoveKey( spep_4 + 32, 1, -148.7, 64.3 , 0 );
setMoveKey( spep_4 + 34, 1, -131.8, 43.5 , 0 );
setMoveKey( spep_4 + 36, 1, -116.2, 24.1 , 0 );
setMoveKey( spep_4 + 38, 1, -101.7, 6.3 , 0 );
setMoveKey( spep_4 + 40, 1, -88.4, -10.1 , 0 );
setMoveKey( spep_4 + 42, 1, -76.4, -25 , 0 );
setMoveKey( spep_4 + 44, 1, -65.6, -38.4 , 0 );
setMoveKey( spep_4 + 46, 1, -56.3, -50 , 0 );
setMoveKey( spep_4 + 48, 1, 56.9, -167.7 , 0 );

setScaleKey( spep_4 + 0, 1, 0.35, 0.35 );
setScaleKey( spep_4 + 2, 1, 0.41, 0.41 );
setScaleKey( spep_4 + 4, 1, 0.45, 0.45 );
setScaleKey( spep_4 + 6, 1, 0.49, 0.49 );
setScaleKey( spep_4 + 8, 1, 0.52, 0.52 );
setScaleKey( spep_4 + 10, 1, 0.55, 0.55 );
setScaleKey( spep_4 + 12, 1, 0.58, 0.58 );
setScaleKey( spep_4 + 14, 1, 0.6, 0.61 );
setScaleKey( spep_4 + 16, 1, 0.63, 0.63 );
setScaleKey( spep_4 + 18, 1, 0.66, 0.66 );
setScaleKey( spep_4 + 20, 1, 0.68, 0.68 );
setScaleKey( spep_4 + 22, 1, 0.69, 0.7 );
setScaleKey( spep_4 + 24, 1, 0.71, 0.72 );
setScaleKey( spep_4 + 26, 1, 0.73, 0.73 );
setScaleKey( spep_4 + 28, 1, 0.74, 0.75 );
setScaleKey( spep_4 + 30, 1, 0.76, 0.76 );
setScaleKey( spep_4 + 32, 1, 0.77, 0.78 );
setScaleKey( spep_4 + 34, 1, 0.78, 0.79 );
setScaleKey( spep_4 + 36, 1, 0.8, 0.8 );
setScaleKey( spep_4 + 38, 1, 0.81, 0.82 );
setScaleKey( spep_4 + 40, 1, 0.82, 0.83 );
setScaleKey( spep_4 + 42, 1, 0.83, 0.84 );
setScaleKey( spep_4 + 44, 1, 0.84, 0.85 );
setScaleKey( spep_4 + 46, 1, 0.85, 0.86 );
setScaleKey( spep_4 + 48, 1, 0.86, 0.87 );

setRotateKey( spep_4 + 0, 1, 5.8 );
setRotateKey( spep_4 + 48, 1, 5.8 );

--SE
playSe( spep_4 , 1021 );

--白フェード
entryFade( spep_4 + 62, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_4 , 0, 70, 0,  0, 0, 0, 180 ); --くろ 背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 70;
--------------------------------------
--ギャン
--------------------------------------
-- ** エフェクト等 ** --
gyan = entryEffect( spep_5 + 0, SP_05x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, gyan, 0, 0, 0 );
setEffMoveKey( spep_5 + 60, gyan, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, gyan, 1.0, 1.0 );
setEffScaleKey( spep_5 + 60, gyan, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, gyan, 0 );
setEffRotateKey( spep_5 + 60, gyan, 0 );
setEffAlphaKey( spep_5 + 0, gyan, 255 );
setEffAlphaKey( spep_5 + 60, gyan, 255 );


-- 書き文字エントリー --
ctgayn = entryEffectLife( spep_5, 10006, 60, 0x100, -1, 0, 0, 400);    -- ギャン
setEffMoveKey( spep_5 + 0, ctgayn, 0, 400, 0 );
setEffMoveKey( spep_5 + 60, ctgayn, 0, 400, 0 );
setEffScaleKey( spep_5, ctgayn, 3.0, 3.0);
setEffScaleKey( spep_5+60, ctgayn, 4.0, 4.0);
setEffRotateKey( spep_5 + 0, ctgayn, 0 );
setEffRotateKey( spep_5 + 60, ctgayn, 0 );
setEffAlphaKey( spep_5, ctgayn, 255);
setEffAlphaKey( spep_5+60, ctgayn, 0);
setEffShake( spep_5, ctgayn, 60, 10);

--SE
playSe( spep_5 , 1023 );
setSeVolume( spep_5 , 1023, 126 );

stopSe( spep_5, se_1177, 0 );
stopSe( spep_5 , se_1022, 0 );

entryFade( spep_5+48, 2,  10, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_6 = spep_5+60;
------------------------------------------------------
-- ガ
------------------------------------------------------
--敵の動き
setDisp( spep_6 + 0, 1, 1 );
changeAnime( spep_6 + 0, 1, 107 );
setMoveKey( spep_6 + 0, 1, -3.8, -32.1 , 0 );
setMoveKey( spep_6 + 2, 1, -3.7, -56.6 , 0 );
setMoveKey( spep_6 + 4, 1, -3.4, -88.1 , 0 );
setMoveKey( spep_6 + 6, 1, -3.1, -126.6 , 0 );
setMoveKey( spep_6 + 8, 1, -2.8, -172.1 , 0 );
setMoveKey( spep_6 + 10, 1, -2.4, -224.6 , 0 );
setMoveKey( spep_6 + 12, 1, -1.9, -284.1 , 0 );
setMoveKey( spep_6 + 110, 1, -1.9, -284.1 , 0 );

y=0.4;

setScaleKey( spep_6 + 0, 1, 0.22, 0.22 );
setScaleKey( spep_6 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_6 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_6 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_6 + 8, 1, 0.93, 0.93 );
--setScaleKey( spep_6 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_6 + 12, 1, 1.5-y, 1.5-y );
setScaleKey( spep_6 + 14, 1, 1.6-y, 1.6-y );
setScaleKey( spep_6 + 16, 1, 1.5-y, 1.5-y );
setScaleKey( spep_6 + 18, 1, 1.6-y, 1.6-y );
setScaleKey( spep_6 + 20, 1, 1.5-y, 1.5-y );
setScaleKey( spep_6 + 22, 1, 1.6-y, 1.6-y );
setScaleKey( spep_6 + 24, 1, 1.5-y, 1.5-y );
setScaleKey( spep_6 + 26, 1, 1.6-y, 1.6-y );
setScaleKey( spep_6 + 110, 1, 1.6-y, 1.6-y );

z=30;
setRotateKey( spep_6 + 0, 1, 0-z );
setRotateKey( spep_6 + 2, 1, 105-z );
setRotateKey( spep_6 + 4, 1, 240-z );
setRotateKey( spep_6 + 6, 1, 405-z );
setRotateKey( spep_6 + 8, 1, 600-z );
setRotateKey( spep_6 + 10, 1, 825-z );
setRotateKey( spep_6 + 12, 1, 1080-z );
setRotateKey( spep_6 + 110, 1, 1080-z );
--[[
-- ** エフェクト等 ** --
bg = entryEffect( spep_6 + 0, SP_07x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, bg, 0, 0, 0 );
setEffMoveKey( spep_6 + 100, bg, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, bg, 1.0, 1.0 );
setEffScaleKey( spep_6 + 100, bg, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, bg, 0 );
setEffRotateKey( spep_6 + 100, bg, 0 );
setEffAlphaKey( spep_6 + 0, bg, 255 );
setEffAlphaKey( spep_6 + 100, bg, 255 );
]]
-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_6 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_6 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_6 + 112, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( spep_6 + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_6 + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_6 + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_6 + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_6 + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_6 + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_6 + 112, bakuhatsu, 0.9, 0.9 );

setEffRotateKey( spep_6 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_6 + 112, bakuhatsu, 0 );

setEffAlphaKey( spep_6 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_6 + 112, bakuhatsu, 255 );


-- ** 集中線 ** --
shuchusenga = entryEffectLife( spep_6 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_6 + 14, shuchusenga, 32, 25 );

setEffMoveKey( spep_6 + 14, shuchusenga, 0, 0 , 0 );
setEffMoveKey( spep_6 + 46, shuchusenga, 0, 0 , 0 );

setEffScaleKey( spep_6 + 14, shuchusenga, 1, 1 );
setEffScaleKey( spep_6 + 46, shuchusenga, 1, 1 );

setEffRotateKey( spep_6 + 14, shuchusenga, 0 );
setEffRotateKey( spep_6 + 46, shuchusenga, 0 );

setEffAlphaKey( spep_6 + 14, shuchusenga, 255 );
setEffAlphaKey( spep_6 + 28, shuchusenga, 255 );
setEffAlphaKey( spep_6 + 30, shuchusenga, 252 );
setEffAlphaKey( spep_6 + 32, shuchusenga, 242 );
setEffAlphaKey( spep_6 + 34, shuchusenga, 227 );
setEffAlphaKey( spep_6 + 36, shuchusenga, 205 );
setEffAlphaKey( spep_6 + 38, shuchusenga, 176 );
setEffAlphaKey( spep_6 + 40, shuchusenga, 142 );
setEffAlphaKey( spep_6 + 42, shuchusenga, 101 );
setEffAlphaKey( spep_6 + 44, shuchusenga, 54 );
setEffAlphaKey( spep_6 + 46, shuchusenga, 0 );

shuchusenga2 = entryEffectLife( spep_6 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_6 + 14, shuchusenga2, 0, 0 , 0 );
setEffMoveKey( spep_6 + 100, shuchusenga2, 0, 0 , 0 );

setEffScaleKey( spep_6 + 14, shuchusenga2, 1, 1 );
setEffScaleKey( spep_6 + 100, shuchusenga2, 1, 1 );

setEffRotateKey( spep_6 + 14, shuchusenga2, 0 );
setEffRotateKey( spep_6 + 100, shuchusenga2, 0 );

setEffAlphaKey( spep_6 + 14, shuchusenga2, 255 );
setEffAlphaKey( spep_6 + 100, shuchusenga2, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_6 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_6 + 14, ctga, 14, 20 );

setEffMoveKey( spep_6 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_6 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_6 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_6 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_6 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_6 + 14, ctga, -10.9 );
setEffRotateKey( spep_6 + 15, ctga, -10.9 );
setEffRotateKey( spep_6 + 16, ctga, -14.9 );
setEffRotateKey( spep_6 + 17, ctga, -14.9 );
setEffRotateKey( spep_6 + 18, ctga, -10.9 );
setEffRotateKey( spep_6 + 19, ctga, -10.9 );
setEffRotateKey( spep_6 + 20, ctga, -14.9 );
setEffRotateKey( spep_6 + 21, ctga, -14.9 );
setEffRotateKey( spep_6 + 22, ctga, -10.9 );
setEffRotateKey( spep_6 + 23, ctga, -10.9 );
setEffRotateKey( spep_6 + 24, ctga, -14.9 );
setEffRotateKey( spep_6 + 25, ctga, -14.9 );
setEffRotateKey( spep_6 + 26, ctga, -10.9 );
setEffRotateKey( spep_6 + 27, ctga, -10.9 );
setEffRotateKey( spep_6 + 28, ctga, -14.9 );
setEffRotateKey( spep_6 + 100, ctga, -14.9 );

setEffAlphaKey( spep_6 + 14, ctga, 255 );
setEffAlphaKey( spep_6 + 100, ctga, 255 );

-- ** ひび割れ ** --
hibiware = entryEffect( spep_6 + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_6 + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( spep_6 + 100, hibiware, 70, -60, 0 ); 

setEffScaleKey( spep_6 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_6 + 100, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_6 + 2, hibiware, 0 );
setEffRotateKey( spep_6 + 100, hibiware, 0 );

setEffAlphaKey( spep_6 + 2, hibiware, 0 );
setEffAlphaKey( spep_6 + 13, hibiware, 0 );
setEffAlphaKey( spep_6 + 14, hibiware, 255 );
setEffAlphaKey( spep_6 + 100, hibiware, 255 );

--SE
playSe( spep_6 , 1011 );
setSeVolume( spep_6 + 6, 1011, 60 );
playSe( spep_6 , 1008 );
setSeVolume( spep_6 + 6, 1008, 79 );
playSe( spep_6 + 14, 1054 );
setSeVolume( spep_6 + 14, 1054, 126 );

--終わり
dealDamage( spep_6 +10 );
endPhase( spep_6 + 98 );
end