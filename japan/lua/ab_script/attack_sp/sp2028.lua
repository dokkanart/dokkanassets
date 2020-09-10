--1019910:ジレン_ヒートウェーブ・マグネトロン
--sp_effect_a1_00231

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
SP_01=	155746	;--	開始〜殴り〜気弾溜め：手前
SP_02=	155747	;--	開始〜殴り〜気弾溜め：奥
SP_03=	155748	;--	発射〜爆発

--エフェクト(てき)
SP_01x=	155749	;--	開始〜殴り〜気弾溜め：手前	(敵)
SP_02x=	155750	;--	開始〜殴り〜気弾溜め：奥	(敵)
SP_03x=	155751	;--	発射〜爆発	(敵)

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

if( _IS_EXTRA_ATTACK_ == 0 ) then
 adjustAttackerLabel( 0, 205);
end

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


kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 冒頭
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
tame_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 450, tame_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 450, tame_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame_f, 0 );
setEffRotateKey( spep_0 + 450, tame_f, 0 );
setEffAlphaKey( spep_0 + 0, tame_f, 255 );
setEffAlphaKey( spep_0 + 450, tame_f, 255 );

-- ** エフェクト等 ** --
tame_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 450, tame_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 450, tame_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame_b, 0 );
setEffRotateKey( spep_0 + 450, tame_b, 0 );
setEffAlphaKey( spep_0 + 0, tame_b, 255 );
setEffAlphaKey( spep_0 + 450, tame_b, 255 );

--敵の動き
setDisp( spep_0-3 + 30, 1, 1);
setDisp( spep_0-3 + 100, 1, 0);

changeAnime( spep_0-3 + 30, 1, 102);


setMoveKey( spep_0-3 + 30, 1, 548, -437.3 , 0 );
setMoveKey( spep_0-3 + 32, 1, 476.8, -366.2 , 0 );
setMoveKey( spep_0-3 + 34, 1, 405.7, -295.1 , 0 );
setMoveKey( spep_0-3 + 36, 1, 358.2, -244.8 , 0 );
setMoveKey( spep_0-3 + 38, 1, 310.8, -194.4 , 0 );
setMoveKey( spep_0-3 + 40, 1, 263.4, -144.1 , 0 );
setMoveKey( spep_0-3 + 42, 1, 261.1, -138.8 , 0 );
setMoveKey( spep_0-3 + 44, 1, 258.8, -133.5 , 0 );
setMoveKey( spep_0-3 + 46, 1, 256.5, -128.2 , 0 );
setMoveKey( spep_0-3 + 48, 1, 254.3, -122.9 , 0 );
setMoveKey( spep_0-3 + 50, 1, 252, -117.7 , 0 );
setMoveKey( spep_0-3 + 52, 1, 249.7, -112.4 , 0 );
setMoveKey( spep_0-3 + 54, 1, 247.4, -107.1 , 0 );
setMoveKey( spep_0-3 + 56, 1, 245.2, -101.8 , 0 );
setMoveKey( spep_0-3 + 58, 1, 242.9, -96.5 , 0 );
setMoveKey( spep_0-3 + 60, 1, 240.6, -91.2 , 0 );
setMoveKey( spep_0-3 + 62, 1, 238.3, -86 , 0 );
setMoveKey( spep_0-3 + 64, 1, 236.1, -80.7 , 0 );
setMoveKey( spep_0-3 + 66, 1, 233.8, -75.4 , 0 );
setMoveKey( spep_0-3 + 68, 1, 231.5, -70.1 , 0 );
setMoveKey( spep_0-3 + 70, 1, 229.2, -64.8 , 0 );
setMoveKey( spep_0-3 + 72, 1, 226.9, -59.5 , 0 );
setMoveKey( spep_0-3 + 74, 1, 224.7, -54.3 , 0 );
setMoveKey( spep_0-3 + 76, 1, 223.9, -53.5 , 0 );
setMoveKey( spep_0-3 + 78, 1, 223.1, -52.7 , 0 );
setMoveKey( spep_0-3 + 80, 1, 222.3, -51.9 , 0 );
setMoveKey( spep_0-3 + 82, 1, 221.5, -51.1 , 0 );
setMoveKey( spep_0-3 + 84, 1, 220.7, -50.4 , 0 );
setMoveKey( spep_0-3 + 86, 1, 219.9, -49.6 , 0 );
setMoveKey( spep_0-3 + 88, 1, 211.1, -64.8 , 0 );
setMoveKey( spep_0-3 + 90, 1, 231.2, -55.5 , 0 );
setMoveKey( spep_0-3 + 92, 1, 235.3, -70.3 , 0 );
setMoveKey( spep_0-3 + 94, 1, 255.3, -69.1 , 0 );
setMoveKey( spep_0-3 + 96, 1, 371.6, -149.4 , 0 );
setMoveKey( spep_0-3 + 98, 1, 771.1, -507.1 , 0 );
setMoveKey( spep_0-3 + 100, 1, 1154.9, -865 , 0 );

setScaleKey( spep_0-3 + 30, 1, 3.64, 3.64 );
setScaleKey( spep_0-3 + 32, 1, 3.37, 3.37 );
setScaleKey( spep_0-3 + 34, 1, 3.09, 3.09 );
setScaleKey( spep_0-3 + 36, 1, 2.75, 2.75 );
setScaleKey( spep_0-3 + 38, 1, 2.42, 2.42 );
setScaleKey( spep_0-3 + 40, 1, 2.08, 2.08 );
setScaleKey( spep_0-3 + 42, 1, 2.07, 2.07 );
setScaleKey( spep_0-3 + 44, 1, 2.05, 2.05 );
setScaleKey( spep_0-3 + 46, 1, 2.04, 2.04 );
setScaleKey( spep_0-3 + 48, 1, 2.03, 2.03 );
setScaleKey( spep_0-3 + 50, 1, 2.02, 2.02 );
setScaleKey( spep_0-3 + 52, 1, 2, 2 );
setScaleKey( spep_0-3 + 54, 1, 1.99, 1.99 );
setScaleKey( spep_0-3 + 56, 1, 1.98, 1.98 );
setScaleKey( spep_0-3 + 58, 1, 1.96, 1.96 );
setScaleKey( spep_0-3 + 60, 1, 1.95, 1.95 );
setScaleKey( spep_0-3 + 62, 1, 1.94, 1.94 );
setScaleKey( spep_0-3 + 64, 1, 1.93, 1.93 );
setScaleKey( spep_0-3 + 66, 1, 1.91, 1.91 );
setScaleKey( spep_0-3 + 68, 1, 1.9, 1.9 );
setScaleKey( spep_0-3 + 70, 1, 1.89, 1.89 );
setScaleKey( spep_0-3 + 72, 1, 1.87, 1.87 );
setScaleKey( spep_0-3 + 74, 1, 1.86, 1.86 );
setScaleKey( spep_0-3 + 76, 1, 1.86, 1.86 );
setScaleKey( spep_0-3 + 78, 1, 1.85, 1.85 );
setScaleKey( spep_0-3 + 80, 1, 1.85, 1.85 );
setScaleKey( spep_0-3 + 82, 1, 1.84, 1.84 );
setScaleKey( spep_0-3 + 84, 1, 1.84, 1.84 );
setScaleKey( spep_0-3 + 86, 1, 1.83, 1.83 );
setScaleKey( spep_0-3 + 88, 1, 1.83, 1.83 );
setScaleKey( spep_0-3 + 90, 1, 1.94, 1.94 );
setScaleKey( spep_0-3 + 92, 1, 2.06, 2.06 );
setScaleKey( spep_0-3 + 94, 1, 2.17, 2.17 );
setScaleKey( spep_0-3 + 96, 1, 2.77, 2.77 );
setScaleKey( spep_0-3 + 98, 1, 4.94, 4.94 );
setScaleKey( spep_0-3 + 100, 1, 7.1, 7.1 );

setRotateKey( spep_0-3 + 30, 1, 0 );
setRotateKey( spep_0-3 + 100, 1, 0 );

--SE
SE0=playSe( spep_0 + 0, 8 );--ジレン奥へ
se_1117 = playSe( spep_0 + 0, 1117 );--ジレン奥へ
se_1267 = playSe( spep_0 + 0, 1267 );--ジレン奥へ
setSeVolume( spep_0 + 0, 1267, 45 );
se_1268 = playSe( spep_0 + 0, 1268 );--ジレン奥へ
setSeVolume( spep_0 + 0, 1268, 138 );
SE1=playSe( spep_0 + 0, 1264 );--ジレン向かってくる
setSeVolume( spep_0 + 0, 1264, 0 );
setSeVolume( spep_0 + 90, 1264, 0 );
setSeVolume( spep_0 + 91, 1264, 1.92 );
setSeVolume( spep_0 + 92, 1264, 3.83 );
setSeVolume( spep_0 + 93, 1264, 5.75 );
setSeVolume( spep_0 + 94, 1264, 7.67 );
setSeVolume( spep_0 + 95, 1264, 9.58 );
setSeVolume( spep_0 + 96, 1264, 11.5 );
setSeVolume( spep_0 + 97, 1264, 13.42 );
setSeVolume( spep_0 + 98, 1264, 15.33 );
setSeVolume( spep_0 + 99, 1264, 17.25 );
setSeVolume( spep_0 + 100, 1264, 19.17 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 450, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 120; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE0, 0 );
    stopSe( SP_dodge - 12, SE1, 0 );
    stopSe( SP_dodge - 12, se_1117, 0 );
    stopSe( SP_dodge - 12, se_1267, 0 );
    stopSe( SP_dodge - 12, se_1268, 0 );

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

--敵の動き
setDisp( spep_0-3 + 152, 1, 1);
setDisp( spep_0-7 + 306, 1, 0);

changeAnime( spep_0-3 + 152, 1, 104);
changeAnime( spep_0-3 + 268, 1, 107);

setMoveKey( spep_0-3 + 152, 1, 324.9, -212.4 , 0 );
setMoveKey( spep_0-3 + 154, 1, 315.4, -235.3 , 0 );
setMoveKey( spep_0-3 + 156, 1, 322, -210.2 , 0 );
setMoveKey( spep_0-3 + 158, 1, 304.5, -217.1 , 0 );
setMoveKey( spep_0-3 + 160, 1, 319.1, -208 , 0 );
setMoveKey( spep_0-3 + 162, 1, 309.6, -198.9 , 0 );
setMoveKey( spep_0-3 + 164, 1, 316.2, -205.8 , 0 );
setMoveKey( spep_0-3 + 166, 1, 306.7, -228.7 , 0 );
setMoveKey( spep_0-3 + 168, 1, 313.3, -203.7 , 0 );
setMoveKey( spep_0-3 + 170, 1, 303.8, -210.6 , 0 );
setMoveKey( spep_0-3 + 172, 1, 310.4, -201.5 , 0 );
setMoveKey( spep_0-3 + 174, 1, 300.9, -208.4 , 0 );
setMoveKey( spep_0-3 + 176, 1, 307.5, -199.3 , 0 );
setMoveKey( spep_0-3 + 178, 1, 306, -198.2 , 0 );
setMoveKey( spep_0-3 + 180, 1, 304.6, -197.1 , 0 );
setMoveKey( spep_0-3 + 182, 1, 303.1, -196 , 0 );
setMoveKey( spep_0-3 + 184, 1, 301.7, -194.9 , 0 );
setMoveKey( spep_0-3 + 186, 1, 300.2, -193.8 , 0 );
setMoveKey( spep_0-3 + 188, 1, 298.8, -192.7 , 0 );
setMoveKey( spep_0-3 + 190, 1, 297.3, -191.6 , 0 );
setMoveKey( spep_0-3 + 192, 1, 295.8, -190.5 , 0 );
setMoveKey( spep_0-3 + 194, 1, 294.4, -189.4 , 0 );
setMoveKey( spep_0-3 + 196, 1, 292.9, -188.3 , 0 );
setMoveKey( spep_0-3 + 198, 1, 291.5, -187.2 , 0 );
setMoveKey( spep_0-3 + 200, 1, 290, -186.1 , 0 );
setMoveKey( spep_0-3 + 202, 1, 288.6, -185 , 0 );
setMoveKey( spep_0-3 + 204, 1, 287.1, -183.9 , 0 );
setMoveKey( spep_0-3 + 206, 1, 285.7, -182.8 , 0 );
setMoveKey( spep_0-3 + 208, 1, 284.2, -181.7 , 0 );
setMoveKey( spep_0-3 + 210, 1, 282.8, -180.6 , 0 );
setMoveKey( spep_0-3 + 212, 1, 281.3, -179.5 , 0 );
setMoveKey( spep_0-3 + 214, 1, 279.9, -178.5 , 0 );
setMoveKey( spep_0-3 + 216, 1, 278.4, -177.4 , 0 );
setMoveKey( spep_0-3 + 218, 1, 277, -176.3 , 0 );
setMoveKey( spep_0-3 + 219, 1, 277, -176.3 , 0 );
setMoveKey( spep_0-3 + 220, 1, -107.4, -58.5 , 0 );
setMoveKey( spep_0-3 + 222, 1, -111.4, -58.5 , 0 );
setMoveKey( spep_0-3 + 224, 1, -107.4, -58.5 , 0 );
setMoveKey( spep_0-3 + 226, 1, -107.4, -62.5 , 0 );
setMoveKey( spep_0-3 + 228, 1, -107.4, -58.5 , 0 );
setMoveKey( spep_0-3 + 230, 1, -111.4, -62.5 , 0 );
setMoveKey( spep_0-3 + 232, 1, -107.4, -58.5 , 0 );
setMoveKey( spep_0-3 + 234, 1, -111.4, -58.5 , 0 );
setMoveKey( spep_0-3 + 236, 1, -107.4, -58.5 , 0 );
setMoveKey( spep_0-3 + 238, 1, -107.4, -66.5 , 0 );
setMoveKey( spep_0-3 + 240, 1, -107.4, -58.5 , 0 );
setMoveKey( spep_0-3 + 242, 1, -111.4, -62.5 , 0 );
setMoveKey( spep_0-3 + 244, 1, -107.4, -58.5 , 0 );
setMoveKey( spep_0-3 + 246, 1, -111.4, -62.5 , 0 );
setMoveKey( spep_0-3 + 248, 1, -107.4, -58.5 , 0 );
setMoveKey( spep_0-3 + 250, 1, -111.4, -58.5 , 0 );
setMoveKey( spep_0-3 + 252, 1, -107.4, -58.5 , 0 );
setMoveKey( spep_0-3 + 254, 1, -111.4, -66.5 , 0 );
setMoveKey( spep_0-3 + 256, 1, -107.4, -58.5 , 0 );
setMoveKey( spep_0-3 + 258, 1, -111.4, -62.5 , 0 );
setMoveKey( spep_0-3 + 260, 1, -107.4, -58.5 , 0 );
setMoveKey( spep_0-3 + 262, 1, -111.4, -58.5 , 0 );
setMoveKey( spep_0-3 + 264, 1, -107.4, -58.5 , 0 );
setMoveKey( spep_0-3 + 266, 1, -115.4, -94.5 , 0 );
setMoveKey( spep_0-3 + 267, 1, -115.4, -94.5 , 0 );

setMoveKey( spep_0-7 + 272, 1, -90.5, -56.3 , 0 );
setMoveKey( spep_0-7 + 274, 1, -80, -84.8 , 0 );
setMoveKey( spep_0-7 + 276, 1, -13.5, -73.3 , 0 );
setMoveKey( spep_0-7 + 278, 1, 17, -105.8 , 0 );
setMoveKey( spep_0-7 + 280, 1, 63.4, -90.4 , 0 );
setMoveKey( spep_0-7 + 282, 1, 93.9, -106.9 , 0 );
setMoveKey( spep_0-7 + 284, 1, 381.2, -336.8 , 0 );
setMoveKey( spep_0-7 + 286, 1, 652.6, -566.8 , 0 );
setMoveKey( spep_0-7 + 288, 1, 940.1, -812.9 , 0 );
setMoveKey( spep_0-7 + 290, 1, 1211.6, -1067.1 , 0 );
setMoveKey( spep_0-7 + 292, 1, 1499.1, -1289.5 , 0 );
setMoveKey( spep_0-7 + 294, 1, 1762.7, -1535.9 , 0 );
setMoveKey( spep_0-7 + 296, 1, 2058.4, -1766.5 , 0 );
setMoveKey( spep_0-7 + 298, 1, 2322, -2005.2 , 0 );
setMoveKey( spep_0-7 + 300, 1, 2617.8, -2244 , 0 );
setMoveKey( spep_0-7 + 302, 1, 2889.5, -2514.9 , 0 );
setMoveKey( spep_0-7 + 304, 1, 3177.3, -2722 , 0 );
setMoveKey( spep_0-7 + 306, 1, 3441.2, -2969.2 , 0 );

setScaleKey( spep_0-3 + 152, 1, 3.33, 3.33 );
setScaleKey( spep_0-3 + 154, 1, 3.33, 3.33 );
setScaleKey( spep_0-3 + 156, 1, 3.32, 3.32 );
setScaleKey( spep_0-3 + 158, 1, 3.31, 3.31 );
setScaleKey( spep_0-3 + 160, 1, 3.3, 3.3 );
setScaleKey( spep_0-3 + 162, 1, 3.29, 3.29 );
setScaleKey( spep_0-3 + 164, 1, 3.29, 3.29 );
setScaleKey( spep_0-3 + 166, 1, 3.28, 3.28 );
setScaleKey( spep_0-3 + 168, 1, 3.27, 3.27 );
setScaleKey( spep_0-3 + 170, 1, 3.26, 3.26 );
setScaleKey( spep_0-3 + 172, 1, 3.25, 3.25 );
setScaleKey( spep_0-3 + 174, 1, 3.24, 3.24 );
setScaleKey( spep_0-3 + 176, 1, 3.24, 3.24 );
setScaleKey( spep_0-3 + 178, 1, 3.23, 3.23 );
setScaleKey( spep_0-3 + 180, 1, 3.22, 3.22 );
setScaleKey( spep_0-3 + 182, 1, 3.21, 3.21 );
setScaleKey( spep_0-3 + 184, 1, 3.2, 3.2 );
setScaleKey( spep_0-3 + 186, 1, 3.2, 3.2 );
setScaleKey( spep_0-3 + 188, 1, 3.19, 3.19 );
setScaleKey( spep_0-3 + 190, 1, 3.18, 3.18 );
setScaleKey( spep_0-3 + 192, 1, 3.17, 3.17 );
setScaleKey( spep_0-3 + 194, 1, 3.16, 3.16 );
setScaleKey( spep_0-3 + 196, 1, 3.16, 3.16 );
setScaleKey( spep_0-3 + 198, 1, 3.15, 3.15 );
setScaleKey( spep_0-3 + 200, 1, 3.14, 3.14 );
setScaleKey( spep_0-3 + 202, 1, 3.13, 3.13 );
setScaleKey( spep_0-3 + 204, 1, 3.12, 3.12 );
setScaleKey( spep_0-3 + 206, 1, 3.11, 3.11 );
setScaleKey( spep_0-3 + 208, 1, 3.11, 3.11 );
setScaleKey( spep_0-3 + 210, 1, 3.1, 3.1 );
setScaleKey( spep_0-3 + 212, 1, 3.09, 3.09 );
setScaleKey( spep_0-3 + 214, 1, 3.08, 3.08 );
setScaleKey( spep_0-3 + 216, 1, 3.07, 3.07 );
setScaleKey( spep_0-3 + 218, 1, 3.07, 3.07 );
setScaleKey( spep_0-3 + 219, 1, 3.07, 3.07 );
setScaleKey( spep_0-3 + 220, 1, 0.71, 0.71 );
setScaleKey( spep_0-3 + 266, 1, 0.71, 0.71 );
setScaleKey( spep_0-3 + 267, 1, 0.71, 0.71 );

setScaleKey( spep_0-7 + 272, 1, 0.41, 0.41 );
setScaleKey( spep_0-7 + 274, 1, 0.51, 0.51 );
setScaleKey( spep_0-7 + 276, 1, 0.62, 0.62 );
setScaleKey( spep_0-7 + 278, 1, 0.72, 0.72 );
setScaleKey( spep_0-7 + 280, 1, 0.83, 0.83 );
setScaleKey( spep_0-7 + 282, 1, 0.93, 0.93 );
setScaleKey( spep_0-7 + 284, 1, 2.27, 2.27 );
setScaleKey( spep_0-7 + 286, 1, 3.61, 3.61 );
setScaleKey( spep_0-7 + 288, 1, 4.95, 4.95 );
setScaleKey( spep_0-7 + 290, 1, 6.29, 6.29 );
setScaleKey( spep_0-7 + 292, 1, 7.63, 7.63 );
setScaleKey( spep_0-7 + 294, 1, 8.97, 8.97 );
setScaleKey( spep_0-7 + 296, 1, 10.31, 10.31 );
setScaleKey( spep_0-7 + 298, 1, 11.65, 11.65 );
setScaleKey( spep_0-7 + 300, 1, 12.99, 12.99 );
setScaleKey( spep_0-7 + 302, 1, 14.33, 14.33 );
setScaleKey( spep_0-7 + 304, 1, 15.67, 15.67 );
setScaleKey( spep_0-7 + 306, 1, 17.01, 17.01 );

setRotateKey( spep_0-3 + 152, 1, 0 );
setRotateKey( spep_0-3 + 266, 1, 0 );
setRotateKey( spep_0-3 + 267, 1, 0 );

setRotateKey( spep_0-7 + 272, 1, -34.5 );
setRotateKey( spep_0-7 + 274, 1, -32.3 );
setRotateKey( spep_0-7 + 276, 1, -30 );
setRotateKey( spep_0-7 + 278, 1, -27.8 );
setRotateKey( spep_0-7 + 280, 1, -25.6 );
setRotateKey( spep_0-7 + 282, 1, -23.3 );
setRotateKey( spep_0-7 + 284, 1, -22.8 );
setRotateKey( spep_0-7 + 286, 1, -22.2 );
setRotateKey( spep_0-7 + 288, 1, -21.6 );
setRotateKey( spep_0-7 + 290, 1, -21 );
setRotateKey( spep_0-7 + 292, 1, -20.4 );
setRotateKey( spep_0-7 + 294, 1, -19.8 );
setRotateKey( spep_0-7 + 296, 1, -19.2 );
setRotateKey( spep_0-7 + 298, 1, -18.6 );
setRotateKey( spep_0-7 + 300, 1, -18.1 );
setRotateKey( spep_0-7 + 302, 1, -17.5 );
setRotateKey( spep_0-7 + 304, 1, -16.9 );
setRotateKey( spep_0-7 + 306, 1, -16.3 );

--文字エントリー
ctga = entryEffectLife( spep_0-3 + 152,  10005, 26, 0x100, -1, 0, 116.4, 310.6 );
setEffShake( spep_0-3 + 152, ctga, 26, 10 );
setEffMoveKey( spep_0-3 + 152, ctga, 116.4, 310.6 , 0 );
setEffMoveKey( spep_0-3 + 154, ctga, 117, 310.6 , 0 );
setEffMoveKey( spep_0-3 + 156, ctga, 102.5, 315.7 , 0 );
setEffMoveKey( spep_0-3 + 158, ctga, 116.8, 310.8 , 0 );
setEffMoveKey( spep_0-3 + 160, ctga, 102.8, 316.4 , 0 );
setEffMoveKey( spep_0-3 + 162, ctga, 116.8, 310.7 , 0 );
setEffMoveKey( spep_0-3 + 164, ctga, 103.6, 315.9 , 0 );
setEffMoveKey( spep_0-3 + 166, ctga, 116.8, 310.7 , 0 );
setEffMoveKey( spep_0-3 + 168, ctga, 104.3, 315.5 , 0 );
setEffMoveKey( spep_0-3 + 170, ctga, 116.9, 310.7 , 0 );
setEffMoveKey( spep_0-3 + 172, ctga, 116.9, 310.7 , 0 );
setEffMoveKey( spep_0-3 + 174, ctga, 105.2, 314.9 , 0 );
setEffMoveKey( spep_0-3 + 178, ctga, 116.9, 310.7 , 0 );

setEffScaleKey( spep_0-3 + 152, ctga, 1.01, 1.01 );
setEffScaleKey( spep_0-3 + 154, ctga, 2.67, 2.67 );
setEffScaleKey( spep_0-3 + 156, ctga, 2.7, 2.7 );
setEffScaleKey( spep_0-3 + 158, ctga, 2.74, 2.74 );
setEffScaleKey( spep_0-3 + 160, ctga, 2.67, 2.67 );
setEffScaleKey( spep_0-3 + 162, ctga, 2.59, 2.59 );
setEffScaleKey( spep_0-3 + 164, ctga, 2.52, 2.52 );
setEffScaleKey( spep_0-3 + 166, ctga, 2.44, 2.44 );
setEffScaleKey( spep_0-3 + 168, ctga, 2.37, 2.37 );
setEffScaleKey( spep_0-3 + 170, ctga, 2.29, 2.29 );
setEffScaleKey( spep_0-3 + 172, ctga, 2.22, 2.22 );
setEffScaleKey( spep_0-3 + 174, ctga, 2.19, 2.19 );
setEffScaleKey( spep_0-3 + 176, ctga, 2.17, 2.17 );
setEffScaleKey( spep_0-3 + 178, ctga, 2.15, 2.15 );

setEffRotateKey( spep_0-3 + 152, ctga, -15.1 );
setEffRotateKey( spep_0-3 + 154, ctga, -28.5 );
setEffRotateKey( spep_0-3 + 156, ctga, -25.7 );
setEffRotateKey( spep_0-3 + 158, ctga, -22.9 );
setEffRotateKey( spep_0-3 + 160, ctga, -23.1 );
setEffRotateKey( spep_0-3 + 162, ctga, -23.4 );
setEffRotateKey( spep_0-3 + 164, ctga, -23.7 );
setEffRotateKey( spep_0-3 + 166, ctga, -23.9 );
setEffRotateKey( spep_0-3 + 168, ctga, -24.2 );
setEffRotateKey( spep_0-3 + 170, ctga, -24.5 );
setEffRotateKey( spep_0-3 + 172, ctga, -24.7 );
setEffRotateKey( spep_0-3 + 174, ctga, -25.2 );
setEffRotateKey( spep_0-3 + 176, ctga, -25.6 );
setEffRotateKey( spep_0-3 + 178, ctga, -26.1 );

setEffAlphaKey( spep_0-3 + 152, ctga, 255 );
setEffAlphaKey( spep_0-3 + 172, ctga, 255 );
setEffAlphaKey( spep_0-3 + 174, ctga, 170 );
setEffAlphaKey( spep_0-3 + 176, ctga, 85 );
setEffAlphaKey( spep_0-3 + 178, ctga, 0 );

--文字エントリー
ctdogon = entryEffectLife( spep_0-3 + 268,  10018, 20, 0x100, -1, 0, -5.8, 305.4 );

setEffMoveKey( spep_0-3 + 268, ctdogon, -5.8, 305.4 , 0 );
setEffMoveKey( spep_0-3 + 270, ctdogon, -4.7, 303.8 , 0 );
setEffMoveKey( spep_0-3 + 272, ctdogon, -6.6, 306.3 , 0 );
setEffMoveKey( spep_0-3 + 274, ctdogon, -4.7, 303.9 , 0 );
setEffMoveKey( spep_0-3 + 276, ctdogon, -6.6, 306.1 , 0 );
setEffMoveKey( spep_0-3 + 278, ctdogon, -4.7, 303.8 , 0 );
setEffMoveKey( spep_0-3 + 280, ctdogon, -6.6, 305.9 , 0 );
setEffMoveKey( spep_0-3 + 282, ctdogon, -4.8, 303.6 , 0 );
setEffMoveKey( spep_0-3 + 284, ctdogon, -4.8, 303.6 , 0 );
setEffMoveKey( spep_0-3 + 286, ctdogon, -6.5, 305.8 , 0 );
setEffMoveKey( spep_0-3 + 288, ctdogon, -6.4, 305.8 , 0 );

setEffScaleKey( spep_0-3 + 268, ctdogon, 2.12, 2.12 );
setEffScaleKey( spep_0-3 + 270, ctdogon, 4.38, 4.38 );
setEffScaleKey( spep_0-3 + 272, ctdogon, 3.38, 3.38 );
setEffScaleKey( spep_0-3 + 274, ctdogon, 3.34, 3.34 );
setEffScaleKey( spep_0-3 + 276, ctdogon, 3.3, 3.3 );
setEffScaleKey( spep_0-3 + 278, ctdogon, 3.26, 3.26 );
setEffScaleKey( spep_0-3 + 280, ctdogon, 3.22, 3.22 );
setEffScaleKey( spep_0-3 + 282, ctdogon, 3.18, 3.18 );
setEffScaleKey( spep_0-3 + 284, ctdogon, 3.14, 3.14 );
setEffScaleKey( spep_0-3 + 286, ctdogon, 3.04, 3.04 );
setEffScaleKey( spep_0-3 + 288, ctdogon, 2.93, 2.93 );

setEffRotateKey( spep_0-3 + 268, ctdogon, 16.7 );
setEffRotateKey( spep_0-3 + 278, ctdogon, 16.7 );
setEffRotateKey( spep_0-3 + 280, ctdogon, 16.8 );
setEffRotateKey( spep_0-3 + 288, ctdogon, 16.8 );

setEffAlphaKey( spep_0-3 + 268, ctdogon, 255 );
setEffAlphaKey( spep_0-3 + 284, ctdogon, 255 );
setEffAlphaKey( spep_0-3 + 286, ctdogon, 128 );
setEffAlphaKey( spep_0-3 + 288, ctdogon, 0 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0+332  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0+332  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_0 +344, 190006, 72, 0x100, -1, 0, 0, 510);-- ゴゴゴゴ

setEffMoveKey(  spep_0 +344,  ctgogo,  0,  510);
setEffMoveKey(  spep_0 +416,  ctgogo,  0,  510);

setEffAlphaKey( spep_0 +344, ctgogo, 0 );
setEffAlphaKey( spep_0 + 345, ctgogo, 255 );
setEffAlphaKey( spep_0 + 346, ctgogo, 255 );
setEffAlphaKey( spep_0 + 400, ctgogo, 255 );
setEffAlphaKey( spep_0 + 412, ctgogo, 191 );
setEffAlphaKey( spep_0 + 414, ctgogo, 112 );
setEffAlphaKey( spep_0 + 416, ctgogo, 64 );

setEffRotateKey(  spep_0 +344,  ctgogo,  0);
setEffRotateKey(  spep_0 +416,  ctgogo,  0);

setEffScaleKey(  spep_0 +344,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0 +406,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0 +416,  ctgogo, 1.07, 1.07 );

--SE
setSeVolume( spep_0 + 101, 1264, 21.08 );
setSeVolume( spep_0 + 102, 1264, 23 );
setSeVolume( spep_0 + 103, 1264, 24.92 );
setSeVolume( spep_0 + 104, 1264, 26.83 );
setSeVolume( spep_0 + 105, 1264, 28.75 );
setSeVolume( spep_0 + 106, 1264, 30.67 );
setSeVolume( spep_0 + 107, 1264, 32.58 );
setSeVolume( spep_0 + 108, 1264, 34.5 );
setSeVolume( spep_0 + 109, 1264, 36.42 );
setSeVolume( spep_0 + 110, 1264, 38.33 );
setSeVolume( spep_0 + 111, 1264, 40.25 );
setSeVolume( spep_0 + 112, 1264, 42.17 );
setSeVolume( spep_0 + 113, 1264, 44.08 );
setSeVolume( spep_0 + 114, 1264, 46 );
playSe( spep_0 + 8, 1232 );--ジレン奥へ
playSe( spep_0 + 88, 1182 );--ジレン向かってくる
se_1183 = playSe( spep_0 + 88, 1183 );--ジレン向かってくる
se_00091 = playSe( spep_0 + 88, 9 );--ジレン向かってくる
playSe( spep_0 + 138, 1004 );--腕を出す
se_11161 = playSe( spep_0 + 140, 1116 );--腕を出す
playSe( spep_0 + 158, 1009 );--つかむ
playSe( spep_0 + 160, 1190 );--つかむ
playSe( spep_0 + 162, 1064 );--つかむ
setSeVolume( spep_0 + 162, 1064, 50 );
playSe( spep_0 + 162, 1169 );--つかむ
setSeVolume( spep_0 + 162, 1169, 71 );
playSe( spep_0 + 162, 1180 );--つかむ
setSeVolume( spep_0 + 162, 1180, 68 );
playSe( spep_0 + 178, 1254 );--手から煙でる
setSeVolume( spep_0 + 178, 1254, 0 );
setSeVolume( spep_0 + 200, 1254, 0 );
setSeVolume( spep_0 + 201, 1254, 10.5 );
setSeVolume( spep_0 + 202, 1254, 21 );
setSeVolume( spep_0 + 203, 1254, 31.5 );
setSeVolume( spep_0 + 204, 1254, 42 );
playSe( spep_0 + 196, 1231 );--手から煙でる
setSeVolume( spep_0 + 196, 1231, 79 );
se_1175 = playSe( spep_0 + 196, 1175 );--手から煙でる
setSeVolume( spep_0 + 196, 1175, 23 );
setSeVolume( spep_0 + 240, 1175,23);
setSeVolume( spep_0 + 241, 1175,22.58);
setSeVolume( spep_0 + 242, 1175,22.16);
setSeVolume( spep_0 + 243, 1175,21.74);
setSeVolume( spep_0 + 244, 1175,21.32);
setSeVolume( spep_0 + 245, 1175,20.9);
setSeVolume( spep_0 + 246, 1175,20.48);
setSeVolume( spep_0 + 247, 1175,20.06);
setSeVolume( spep_0 + 248, 1175,19.64);
setSeVolume( spep_0 + 249, 1175,19.22);
setSeVolume( spep_0 + 250, 1175,18.8);
setSeVolume( spep_0 + 251, 1175,18.38);
setSeVolume( spep_0 + 252, 1175,17.96);
setSeVolume( spep_0 + 253, 1175,17.54);
setSeVolume( spep_0 + 254, 1175,17.12);
setSeVolume( spep_0 + 255, 1175,16.7);
setSeVolume( spep_0 + 256, 1175,16.28);
setSeVolume( spep_0 + 257, 1175,15.86);
setSeVolume( spep_0 + 258, 1175,15.44);
setSeVolume( spep_0 + 259, 1175,15.02);
setSeVolume( spep_0 + 260, 1175,14.6);
setSeVolume( spep_0 + 261, 1175,14.18);
setSeVolume( spep_0 + 262, 1175,13.76);
setSeVolume( spep_0 + 263, 1175,13.34);
setSeVolume( spep_0 + 264, 1175,12.92);
setSeVolume( spep_0 + 265, 1175,12.5);
setSeVolume( spep_0 + 266, 1175,12.08);
setSeVolume( spep_0 + 267, 1175,11.66);
setSeVolume( spep_0 + 268, 1175,11.24);
setSeVolume( spep_0 + 269, 1175,10.82);
setSeVolume( spep_0 + 270, 1175,10.4);
setSeVolume( spep_0 + 271, 1175,9.97);
setSeVolume( spep_0 + 272, 1175,9.55);
setSeVolume( spep_0 + 273, 1175,9.13);
setSeVolume( spep_0 + 274, 1175,8.71);
setSeVolume( spep_0 + 275, 1175,8.29);
setSeVolume( spep_0 + 276, 1175,7.87);
setSeVolume( spep_0 + 277, 1175,7.45);
setSeVolume( spep_0 + 278, 1175,7.03);
setSeVolume( spep_0 + 279, 1175,6.61);
setSeVolume( spep_0 + 280, 1175,6.19);
setSeVolume( spep_0 + 281, 1175,5.77);
setSeVolume( spep_0 + 282, 1175,5.35);
setSeVolume( spep_0 + 283, 1175,4.93);
setSeVolume( spep_0 + 284, 1175,4.51);
setSeVolume( spep_0 + 285, 1175,4.09);
setSeVolume( spep_0 + 286, 1175,3.67);
setSeVolume( spep_0 + 287, 1175,3.25);
setSeVolume( spep_0 + 288, 1175,2.83);
setSeVolume( spep_0 + 289, 1175,2.41);
setSeVolume( spep_0 + 290, 1175,1.99);
setSeVolume( spep_0 + 291, 1175,1.57);
setSeVolume( spep_0 + 292, 1175,1.15);
setSeVolume( spep_0 + 293, 1175,0.73);
setSeVolume( spep_0 + 294, 1175,0);
playSe( spep_0 + 272, 1137 );--爆発
setSeVolume( spep_0 + 272, 1137, 82 );
playSe( spep_0 + 272, 1023 );--爆発
setSeVolume( spep_0 + 272, 1023, 74 );
se_0015 = playSe( spep_0 + 294, 15 );--気弾溜める
setSeVolume( spep_0 + 294, 15, 0 );
setSeVolume( spep_0 + 380, 15, 0 );
setSeVolume( spep_0 + 381, 15, 14 );
setSeVolume( spep_0 + 382, 15, 28 );
setSeVolume( spep_0 + 383, 15, 42 );
setSeVolume( spep_0 + 384, 15, 56 );
playSe( spep_0 + 334, 1233 );--腕あげる
se_1190 = playSe( spep_0 + 334, 1190 );--腕あげる
setSeVolume( spep_0 + 334, 1190, 0 );
setSeVolume( spep_0 + 337, 1190, 0 );
setSeVolume( spep_0 + 338, 1190, 14.29 );
setSeVolume( spep_0 + 339, 1190, 28.57 );
setSeVolume( spep_0 + 340, 1190, 42.86 );
setSeVolume( spep_0 + 341, 1190, 57.14 );
setSeVolume( spep_0 + 342, 1190, 71.43 );
setSeVolume( spep_0 + 343, 1190, 85.71 );
setSeVolume( spep_0 + 344, 1190, 100 );
playSe( spep_0 + 344, 1018 );--顔カットイン
playSe( spep_0 + 344, 1004 );--腕あげる
se_11571 = playSe( spep_0 + 380, 1157 );--気弾溜める
se_12001 = playSe( spep_0 + 380, 1200 );--気弾溜める
se_1191 = playSe( spep_0 + 380, 1191 );--気弾溜める
setSeVolume( spep_0 + 380, 1191, 129 );
se_11221 = playSe( spep_0 + 382, 1122 );--気弾溜める
setSeVolume( spep_0 + 382, 1122, 61 );
se_1042 = playSe( spep_0 + 402, 1042 );--気弾溜める
setSeVolume( spep_0 + 402, 1042, 0 );
setSeVolume( spep_0 + 403, 1042, 6 );
setSeVolume( spep_0 + 404, 1042, 12 );
setSeVolume( spep_0 + 405, 1042, 18 );
setSeVolume( spep_0 + 406, 1042, 24 );
setSeVolume( spep_0 + 407, 1042, 30 );
setSeVolume( spep_0 + 408, 1042, 36 );
setSeVolume( spep_0 + 409, 1042, 42 );
setSeVolume( spep_0 + 410, 1042, 48 );
setSeVolume( spep_0 + 411, 1042, 54 );
setSeVolume( spep_0 + 412, 1042, 60 );
setSeVolume( spep_0 + 413, 1042, 66 );
setSeVolume( spep_0 + 414, 1042, 72 );

stopSe( spep_0 + 21, se_1117, 44 );
stopSe( spep_0 + 90, se_1267, 0 );
stopSe( spep_0 + 90, se_1268, 0 );
stopSe( spep_0 + 178, se_1183, 0 );
stopSe( spep_0 + 118, se_00091, 37 );
stopSe( spep_0 + 160, se_11161, 8 );
stopSe( spep_0 + 294, se_1175, 0 );
stopSe( spep_0 + 360, se_1190, 23 );
stopSe( spep_0 + 400, se_12001, 8 );

--白フェード
entryFade( spep_0+442 , 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1=spep_0+450;
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

stopSe( spep_1 + 2, se_0015, 0 );
stopSe( spep_1 + 2, se_11571, 0 );
stopSe( spep_1 + 2, se_1191, 0 );
stopSe( spep_1 + 2, se_11221, 0 );
stopSe( spep_1 + 2, se_1042, 0 );


--白フェード
entryFade( spep_1 + 82, 4, 10, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

------------------------------------------------------
-- 発射〜爆発
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_2 + 400, finish, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_2 + 400, finish, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish, 0 );
setEffRotateKey( spep_2 + 400, finish, 0 );
setEffAlphaKey( spep_2 + 0, finish, 255 );
setEffAlphaKey( spep_2 + 400, finish, 255 );

--文字エントリー
ctzuo = entryEffectLife( spep_2-3 + 104,  10012, 40, 0x100, -1, 0, 94, 364.2 );
setEffShake( spep_2-3 + 104, ctzuo, 40, 10 );
setEffMoveKey( spep_2-3 + 104, ctzuo, 94, 364.2 , 0 );
setEffMoveKey( spep_2-3 + 106, ctzuo, 105.9, 376.8 , 0 );
setEffMoveKey( spep_2-3 + 108, ctzuo, 120.6, 364.8 , 0 );
setEffMoveKey( spep_2-3 + 110, ctzuo, 115.1, 385.5 , 0 );
setEffMoveKey( spep_2-3 + 112, ctzuo, 113.6, 365.5 , 0 );
setEffMoveKey( spep_2-3 + 114, ctzuo, 109.3, 382.4 , 0 );
setEffMoveKey( spep_2-3 + 116, ctzuo, 110.8, 365.5 , 0 );
setEffMoveKey( spep_2-3 + 118, ctzuo, 110.6, 382.1 , 0 );
setEffMoveKey( spep_2-3 + 120, ctzuo, 112.4, 364.4 , 0 );
setEffMoveKey( spep_2-3 + 122, ctzuo, 111.9, 381.8 , 0 );
setEffMoveKey( spep_2-3 + 124, ctzuo, 114, 363.3 , 0 );
setEffMoveKey( spep_2-3 + 126, ctzuo, 113.3, 381.5 , 0 );
setEffMoveKey( spep_2-3 + 128, ctzuo, 115.5, 362.3 , 0 );
setEffMoveKey( spep_2-3 + 130, ctzuo, 114.5, 381.2 , 0 );
setEffMoveKey( spep_2-3 + 132, ctzuo, 117, 361.2 , 0 );
setEffMoveKey( spep_2-3 + 134, ctzuo, 115.8, 380.9 , 0 );
setEffMoveKey( spep_2-3 + 136, ctzuo, 118.6, 360.2 , 0 );
setEffMoveKey( spep_2-3 + 138, ctzuo, 117, 380.7 , 0 );
setEffMoveKey( spep_2-3 + 140, ctzuo, 128.6, 360.5 , 0 );
setEffMoveKey( spep_2-3 + 142, ctzuo, 133, 397.1 , 0 );
setEffMoveKey( spep_2-3 + 144, ctzuo, 140.9, 405.6 , 0 );

setEffScaleKey( spep_2-3 + 104, ctzuo, 0.34, 0.34 );
setEffScaleKey( spep_2-3 + 106, ctzuo, 1.82, 1.82 );
setEffScaleKey( spep_2-3 + 108, ctzuo, 3.31, 3.31 );
setEffScaleKey( spep_2-3 + 110, ctzuo, 3.01, 3.01 );
setEffScaleKey( spep_2-3 + 112, ctzuo, 2.71, 2.71 );
setEffScaleKey( spep_2-3 + 114, ctzuo, 2.41, 2.41 );
setEffScaleKey( spep_2-3 + 116, ctzuo, 2.47, 2.47 );
setEffScaleKey( spep_2-3 + 118, ctzuo, 2.53, 2.53 );
setEffScaleKey( spep_2-3 + 120, ctzuo, 2.58, 2.58 );
setEffScaleKey( spep_2-3 + 122, ctzuo, 2.64, 2.64 );
setEffScaleKey( spep_2-3 + 124, ctzuo, 2.7, 2.7 );
setEffScaleKey( spep_2-3 + 126, ctzuo, 2.75, 2.75 );
setEffScaleKey( spep_2-3 + 128, ctzuo, 2.81, 2.81 );
setEffScaleKey( spep_2-3 + 130, ctzuo, 2.87, 2.87 );
setEffScaleKey( spep_2-3 + 132, ctzuo, 2.92, 2.92 );
setEffScaleKey( spep_2-3 + 134, ctzuo, 2.98, 2.98 );
setEffScaleKey( spep_2-3 + 136, ctzuo, 3.04, 3.04 );
setEffScaleKey( spep_2-3 + 138, ctzuo, 3.09, 3.09 );
setEffScaleKey( spep_2-3 + 140, ctzuo, 4.19, 4.19 );
setEffScaleKey( spep_2-3 + 142, ctzuo, 5.28, 5.28 );
setEffScaleKey( spep_2-3 + 144, ctzuo, 6.38, 6.38 );

setEffRotateKey( spep_2-3 + 104, ctzuo, 30.5 );
setEffRotateKey( spep_2-3 + 106, ctzuo, 30.1 );
setEffRotateKey( spep_2-3 + 108, ctzuo, 29.6 );
setEffRotateKey( spep_2-3 + 110, ctzuo, 31 );
setEffRotateKey( spep_2-3 + 112, ctzuo, 32.4 );
setEffRotateKey( spep_2-3 + 114, ctzuo, 33.8 );
setEffRotateKey( spep_2-3 + 116, ctzuo, 33.5 );
setEffRotateKey( spep_2-3 + 118, ctzuo, 33.2 );
setEffRotateKey( spep_2-3 + 120, ctzuo, 32.9 );
setEffRotateKey( spep_2-3 + 122, ctzuo, 32.6 );
setEffRotateKey( spep_2-3 + 124, ctzuo, 32.3 );
setEffRotateKey( spep_2-3 + 126, ctzuo, 32 );
setEffRotateKey( spep_2-3 + 128, ctzuo, 31.7 );
setEffRotateKey( spep_2-3 + 130, ctzuo, 31.4 );
setEffRotateKey( spep_2-3 + 132, ctzuo, 31.1 );
setEffRotateKey( spep_2-3 + 134, ctzuo, 30.8 );
setEffRotateKey( spep_2-3 + 136, ctzuo, 30.5 );
setEffRotateKey( spep_2-3 + 138, ctzuo, 30.1 );
setEffRotateKey( spep_2-3 + 140, ctzuo, 29.7 );
setEffRotateKey( spep_2-3 + 142, ctzuo, 29.3 );
setEffRotateKey( spep_2-3 + 144, ctzuo, 28.9 );

setEffAlphaKey( spep_2-3 + 104, ctzuo, 255 );
setEffAlphaKey( spep_2-3 + 138, ctzuo, 255 );
setEffAlphaKey( spep_2-3 + 140, ctzuo, 170 );
setEffAlphaKey( spep_2-3 + 142, ctzuo, 85 );
setEffAlphaKey( spep_2-3 + 144, ctzuo, 0 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 400, 0,  0, 0, 0, 255 ); --くろ 背景

--SE
se_1116 = playSe( spep_2 + 0, 1116 );--カメラズーム
se_0009 = playSe( spep_2 + 0, 9 );--カメラズーム
setSeVolume( spep_2 + 0, 9, 0 );
setSeVolume( spep_2 + 1, 9, 6.25 );
setSeVolume( spep_2 + 2, 9, 12.5 );
setSeVolume( spep_2 + 3, 9, 18.75 );
setSeVolume( spep_2 + 4, 9, 25 );
setSeVolume( spep_2 + 5, 9, 31.25 );
setSeVolume( spep_2 + 6, 9, 37.5 );
setSeVolume( spep_2 + 7, 9, 43.75 );
setSeVolume( spep_2 + 8, 9, 50 );
setSeVolume( spep_2 + 9, 9, 56.25 );
setSeVolume( spep_2 + 10, 9, 62.5 );
setSeVolume( spep_2 + 11, 9, 68.75 );
setSeVolume( spep_2 + 12, 9, 75 );
setSeVolume( spep_2 + 13, 9, 81.25 );
setSeVolume( spep_2 + 14, 9, 87.5 );
setSeVolume( spep_2 + 15, 9, 93.75 );
setSeVolume( spep_2 + 16, 9, 100 );
se_1200 = playSe( spep_2 + 0, 1200 );--気弾溜め音
setSeVolume( spep_2 + 0, 1200, 0 );
setSeVolume( spep_2 + 20, 1200, 0 );
setSeVolume( spep_2 + 21, 1200, 34 );
setSeVolume( spep_2 + 22, 1200, 68 );
setSeVolume( spep_2 + 23, 1200, 102 );
setSeVolume( spep_2 + 24, 1200, 136 );
setSeVolume( spep_2 + 25, 1200, 170 );
playSe( spep_2 + 2, 1182 );--カメラズーム
setSeVolume( spep_2 + 2, 1182, 0 );
setSeVolume( spep_2 + 6, 1182, 0);
setSeVolume( spep_2 + 7, 1182, 16.67 );
setSeVolume( spep_2 + 8, 1182, 33.33 );
setSeVolume( spep_2 + 9, 1182, 50 );
setSeVolume( spep_2 + 10, 1182, 66.67 );
setSeVolume( spep_2 + 11, 1182, 83.33 );
setSeVolume( spep_2 + 12, 1182, 100 );
playSe( spep_2 + 10, 1241 );--気弾溜め音
setSeVolume( spep_2 + 10, 1241, 65 );
playSe( spep_2 + 10, 1199 );--気弾溜め音
setSeVolume( spep_2 + 10, 1199, 52 );
se_1157 = playSe( spep_2 + 54, 1157 );--手を前に
se_1167 = playSe( spep_2 + 54, 1167 );--手を前に
setSeVolume( spep_2 + 54, 1167, 48 );
setSeVolume( spep_2 + 84, 1167,48);
setSeVolume( spep_2 + 85, 1167,46.4);
setSeVolume( spep_2 + 86, 1167,44.8);
setSeVolume( spep_2 + 87, 1167,43.2);
setSeVolume( spep_2 + 88, 1167,41.6);
setSeVolume( spep_2 + 89, 1167,40);
setSeVolume( spep_2 + 90, 1167,38.4);
setSeVolume( spep_2 + 91, 1167,36.8);
setSeVolume( spep_2 + 92, 1167,35.2);
setSeVolume( spep_2 + 93, 1167,33.6);
setSeVolume( spep_2 + 94, 1167,32);
setSeVolume( spep_2 + 95, 1167,30.4);
setSeVolume( spep_2 + 96, 1167,28.8);
setSeVolume( spep_2 + 97, 1167,27.2);
setSeVolume( spep_2 + 98, 1167,25.6);
setSeVolume( spep_2 + 99, 1167,24);
setSeVolume( spep_2 + 100, 1167,22.4);
setSeVolume( spep_2 + 101, 1167,20.8);
setSeVolume( spep_2 + 102, 1167,19.2);
setSeVolume( spep_2 + 103, 1167,17.6);
setSeVolume( spep_2 + 104, 1167,16);
setSeVolume( spep_2 + 105, 1167,14.4);
setSeVolume( spep_2 + 106, 1167,12.8);
setSeVolume( spep_2 + 107, 1167,11.2);
setSeVolume( spep_2 + 108, 1167,9.59);
setSeVolume( spep_2 + 109, 1167,7.99);
setSeVolume( spep_2 + 110, 1167,6.39);
setSeVolume( spep_2 + 111, 1167,4.79);
setSeVolume( spep_2 + 112, 1167,0);
playSe( spep_2 + 56, 1004 );--手を前に
se_1122 = playSe( spep_2 + 58, 1122 );--手を前に
setSeVolume( spep_2 + 58, 1122, 79 );
setSeVolume( spep_2 + 92, 1122,79);
setSeVolume( spep_2 + 93, 1122,76.5);
setSeVolume( spep_2 + 94, 1122,74);
setSeVolume( spep_2 + 95, 1122,71.5);
setSeVolume( spep_2 + 96, 1122,69);
setSeVolume( spep_2 + 97, 1122,66.5);
setSeVolume( spep_2 + 98, 1122,64);
setSeVolume( spep_2 + 99, 1122,61.5);
setSeVolume( spep_2 + 100, 1122,59);
setSeVolume( spep_2 + 101, 1122,56.5);
setSeVolume( spep_2 + 102, 1122,54);
setSeVolume( spep_2 + 103, 1122,51.5);
setSeVolume( spep_2 + 104, 1122,49);
setSeVolume( spep_2 + 105, 1122,46.5);
setSeVolume( spep_2 + 106, 1122,44);
setSeVolume( spep_2 + 107, 1122,41.5);
setSeVolume( spep_2 + 108, 1122,39);
setSeVolume( spep_2 + 109, 1122,36.5);
setSeVolume( spep_2 + 110, 1122,34);
setSeVolume( spep_2 + 111, 1122,31.5);
setSeVolume( spep_2 + 112, 1122,29);
setSeVolume( spep_2 + 113, 1122,26.5);
setSeVolume( spep_2 + 114, 1122,24);
setSeVolume( spep_2 + 115, 1122,21.5);
setSeVolume( spep_2 + 116, 1122,19);
setSeVolume( spep_2 + 117, 1122,16.5);
setSeVolume( spep_2 + 118, 1122,14);
setSeVolume( spep_2 + 119, 1122,11.5);
setSeVolume( spep_2 + 120, 1122,9);
setSeVolume( spep_2 + 121, 1122,6.5);
setSeVolume( spep_2 + 122, 1122,4);
setSeVolume( spep_2 + 123, 1122,1.5);
setSeVolume( spep_2 + 124, 1122,0);
se_1212 = playSe( spep_2 + 88, 1212 );--気弾発射
setSeVolume( spep_2 + 88, 1212, 0 );
setSeVolume( spep_2 + 170, 1212, 0);
setSeVolume( spep_2 + 171, 1212, 4.9 );
setSeVolume( spep_2 + 172, 1212, 9.8 );
setSeVolume( spep_2 + 173, 1212, 14.7 );
setSeVolume( spep_2 + 174, 1212, 19.6 );
setSeVolume( spep_2 + 175, 1212, 24.5 );
setSeVolume( spep_2 + 176, 1212, 29.4 );
setSeVolume( spep_2 + 177, 1212, 34.3 );
setSeVolume( spep_2 + 178, 1212, 39.2 );
setSeVolume( spep_2 + 179, 1212, 44.1 );
setSeVolume( spep_2 + 180, 1212, 49 );
setSeVolume( spep_2 + 230, 1212,49);
setSeVolume( spep_2 + 231, 1212,47.4);
setSeVolume( spep_2 + 232, 1212,45.8);
setSeVolume( spep_2 + 233, 1212,44.2);
setSeVolume( spep_2 + 234, 1212,42.6);
setSeVolume( spep_2 + 235, 1212,41);
setSeVolume( spep_2 + 236, 1212,39.4);
setSeVolume( spep_2 + 237, 1212,37.8);
setSeVolume( spep_2 + 238, 1212,36.2);
setSeVolume( spep_2 + 239, 1212,34.6);
setSeVolume( spep_2 + 240, 1212,33);
setSeVolume( spep_2 + 241, 1212,31.4);
setSeVolume( spep_2 + 242, 1212,29.8);
setSeVolume( spep_2 + 243, 1212,28.2);
setSeVolume( spep_2 + 244, 1212,26.6);
setSeVolume( spep_2 + 245, 1212,25);
setSeVolume( spep_2 + 246, 1212,23.4);
setSeVolume( spep_2 + 247, 1212,21.8);
setSeVolume( spep_2 + 248, 1212,20.2);
setSeVolume( spep_2 + 249, 1212,18.6);
setSeVolume( spep_2 + 250, 1212,17);
setSeVolume( spep_2 + 251, 1212,15.4);
setSeVolume( spep_2 + 252, 1212,13.8);
setSeVolume( spep_2 + 253, 1212,12.2);
setSeVolume( spep_2 + 254, 1212,10.6);
setSeVolume( spep_2 + 255, 1212,8.99);
setSeVolume( spep_2 + 256, 1212,7.39);
setSeVolume( spep_2 + 257, 1212,5.79);
setSeVolume( spep_2 + 258, 1212,4.19);
setSeVolume( spep_2 + 259, 1212,2.59);
setSeVolume( spep_2 + 260, 1212,0.99);
setSeVolume( spep_2 + 261, 1212,0);
SE2=playSe( spep_2 + 100, 1258 );--気弾発射
setSeVolume( spep_2 + 100, 1258, 56 );
playSe( spep_2 + 104, 1027 );--気弾発射
setSeVolume( spep_2 + 104, 1027, 77 );
playSe( spep_2 + 104, 1021 );--気弾発射
setSeVolume( spep_2 + 104, 1021, 80 );
se_1213 = playSe( spep_2 + 104, 1213 );--気弾発射
setSeVolume( spep_2 + 104, 1213, 0 );
setSeVolume( spep_2 + 105, 1213, 2 );
setSeVolume( spep_2 + 106, 1213, 4 );
setSeVolume( spep_2 + 107, 1213, 6 );
setSeVolume( spep_2 + 108, 1213, 8 );
setSeVolume( spep_2 + 109, 1213, 10 );
setSeVolume( spep_2 + 110, 1213, 12 );
setSeVolume( spep_2 + 111, 1213, 14 );
setSeVolume( spep_2 + 112, 1213, 16 );
setSeVolume( spep_2 + 113, 1213, 18 );
setSeVolume( spep_2 + 114, 1213, 20 );
setSeVolume( spep_2 + 115, 1213, 22 );
setSeVolume( spep_2 + 116, 1213, 24 );
setSeVolume( spep_2 + 117, 1213, 26 );
setSeVolume( spep_2 + 118, 1213, 28 );
setSeVolume( spep_2 + 119, 1213, 30 );
setSeVolume( spep_2 + 120, 1213, 32 );
setSeVolume( spep_2 + 121, 1213, 34 );
setSeVolume( spep_2 + 122, 1213, 36 );
setSeVolume( spep_2 + 123, 1213, 38 );
setSeVolume( spep_2 + 124, 1213, 40 );
setSeVolume( spep_2 + 125, 1213, 42 );
setSeVolume( spep_2 + 126, 1213, 44 );
setSeVolume( spep_2 + 127, 1213, 46 );
setSeVolume( spep_2 + 128, 1213, 48 );
setSeVolume( spep_2 + 129, 1213, 50 );
se_1121 = playSe( spep_2 + 124, 1121 );--気弾発射
setSeVolume( spep_2 + 124, 1121, 44 );
setSeVolume( spep_2 + 225, 1121,44);
setSeVolume( spep_2 + 226, 1121,42.8);
setSeVolume( spep_2 + 227, 1121,41.6);
setSeVolume( spep_2 + 228, 1121,40.4);
setSeVolume( spep_2 + 229, 1121,39.2);
setSeVolume( spep_2 + 230, 1121,38);
setSeVolume( spep_2 + 231, 1121,36.8);
setSeVolume( spep_2 + 232, 1121,35.6);
setSeVolume( spep_2 + 233, 1121,34.4);
setSeVolume( spep_2 + 234, 1121,33.2);
setSeVolume( spep_2 + 235, 1121,32);
setSeVolume( spep_2 + 236, 1121,30.8);
setSeVolume( spep_2 + 237, 1121,29.6);
setSeVolume( spep_2 + 238, 1121,28.4);
setSeVolume( spep_2 + 239, 1121,27.2);
setSeVolume( spep_2 + 240, 1121,26);
setSeVolume( spep_2 + 241, 1121,24.8);
setSeVolume( spep_2 + 242, 1121,23.6);
setSeVolume( spep_2 + 243, 1121,22.4);
setSeVolume( spep_2 + 244, 1121,21.2);
setSeVolume( spep_2 + 245, 1121,20);
setSeVolume( spep_2 + 246, 1121,18.8);
setSeVolume( spep_2 + 247, 1121,17.6);
setSeVolume( spep_2 + 248, 1121,16.4);
setSeVolume( spep_2 + 249, 1121,15.2);
setSeVolume( spep_2 + 250, 1121,14);
setSeVolume( spep_2 + 251, 1121,12.8);
setSeVolume( spep_2 + 252, 1121,11.6);
setSeVolume( spep_2 + 253, 1121,10.4);
setSeVolume( spep_2 + 254, 1121,9.19);
setSeVolume( spep_2 + 255, 1121,7.99);
setSeVolume( spep_2 + 256, 1121,6.79);
setSeVolume( spep_2 + 257, 1121,5.59);
setSeVolume( spep_2 + 258, 1121,4.39);
setSeVolume( spep_2 + 259, 1121,3.19);
setSeVolume( spep_2 + 260, 1121,0);

SE3=playSe( spep_2 + 204, 1172 );--地面をえぐる
setSeVolume( spep_2 + 204, 1172, 0 );
setSeVolume( spep_2 + 222, 1172, 0 );
setSeVolume( spep_2 + 223, 1172, 17.33 );
setSeVolume( spep_2 + 224, 1172, 34.67 );
setSeVolume( spep_2 + 225, 1172, 52 );

SE4=playSe( spep_2 + 218, 1017 );--地面をえぐる
setSeVolume( spep_2 + 218, 1017, 68 );

se_1022 = playSe( spep_2 + 224, 1022 );--地面をえぐる

SE5=playSe( spep_2 + 224, 1011 );--地面をえぐる
setSeVolume( spep_2 + 224, 1011, 69 );

SE6=playSe( spep_2 + 228, 1033 );--地面をえぐる
setSeVolume( spep_2 + 228, 1033, 79 );



playSe( spep_2 + 278, 1023 );--ラスト連続爆発
setSeVolume( spep_2 + 278, 1023, 79 );
playSe( spep_2 + 278, 1159 );--ラスト連続爆発
setSeVolume( spep_2 + 278, 1159, 83 );
playSe( spep_2 + 288, 1159 );--ラスト連続爆発
setSeVolume( spep_2 + 288, 1159, 62 );
playSe( spep_2 + 288, 1023 );--ラスト連続爆発
setSeVolume( spep_2 + 288, 1023, 65 );
playSe( spep_2 + 296, 1159 );--ラスト連続爆発
setSeVolume( spep_2 + 296, 1159, 43 );
playSe( spep_2 + 296, 1023 );--ラスト連続爆発
setSeVolume( spep_2 + 296, 1023, 48 );
playSe( spep_2 + 304, 1159 );--ラスト連続爆発
setSeVolume( spep_2 + 304, 1159, 55 );
playSe( spep_2 + 304, 1023 );--ラスト連続爆発
setSeVolume( spep_2 + 304, 1023, 54 );


stopSe( spep_2 + 21, se_1116, 13 );
stopSe( spep_2 + 26, se_0009, 54 );
stopSe( spep_2 + 110, se_1200, 0 );
stopSe( spep_2 + 108, se_1157, 22 );
stopSe( spep_2 + 112, se_1167, 0 );
stopSe( spep_2 + 124, se_1122, 0 );
stopSe( spep_2 + 261, se_1212, 0 );
stopSe( spep_2 + 244, se_1213, 0 );
stopSe( spep_2 + 260, se_1121, 0 );
stopSe( spep_2 + 260, se_1022, 16 );

stopSe( spep_2 + 276, SE2, 0 );
stopSe( spep_2 + 276, SE3, 0 );
stopSe( spep_2 + 276, SE4, 0 );
stopSe( spep_2 + 276, SE5, 0 );
stopSe( spep_2 + 276, SE6, 0 );


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 280 );
endPhase( spep_2 + 390 );
else
------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 冒頭
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
tame_f = entryEffect( spep_0 + 0, SP_01x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 450, tame_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 450, tame_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame_f, 0 );
setEffRotateKey( spep_0 + 450, tame_f, 0 );
setEffAlphaKey( spep_0 + 0, tame_f, 255 );
setEffAlphaKey( spep_0 + 450, tame_f, 255 );

-- ** エフェクト等 ** --
tame_b = entryEffect( spep_0 + 0, SP_02x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 450, tame_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 450, tame_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame_b, 0 );
setEffRotateKey( spep_0 + 450, tame_b, 0 );
setEffAlphaKey( spep_0 + 0, tame_b, 255 );
setEffAlphaKey( spep_0 + 450, tame_b, 255 );

--敵の動き
setDisp( spep_0-3 + 30, 1, 1);
setDisp( spep_0-3 + 100, 1, 0);

changeAnime( spep_0-3 + 30, 1, 2);


setMoveKey( spep_0-3 + 30, 1, -548, -437.3 , 0 );
setMoveKey( spep_0-3 + 32, 1, -476.8, -366.2 , 0 );
setMoveKey( spep_0-3 + 34, 1, -405.7, -295.1 , 0 );
setMoveKey( spep_0-3 + 36, 1, -358.2, -244.8 , 0 );
setMoveKey( spep_0-3 + 38, 1, -310.8, -194.4 , 0 );
setMoveKey( spep_0-3 + 40, 1, -263.4, -144.1 , 0 );
setMoveKey( spep_0-3 + 42, 1, -261.1, -138.8 , 0 );
setMoveKey( spep_0-3 + 44, 1, -258.8, -133.5 , 0 );
setMoveKey( spep_0-3 + 46, 1, -256.5, -128.2 , 0 );
setMoveKey( spep_0-3 + 48, 1, -254.3, -122.9 , 0 );
setMoveKey( spep_0-3 + 50, 1, -252, -117.7 , 0 );
setMoveKey( spep_0-3 + 52, 1, -249.7, -112.4 , 0 );
setMoveKey( spep_0-3 + 54, 1, -247.4, -107.1 , 0 );
setMoveKey( spep_0-3 + 56, 1, -245.2, -101.8 , 0 );
setMoveKey( spep_0-3 + 58, 1, -242.9, -96.5 , 0 );
setMoveKey( spep_0-3 + 60, 1, -240.6, -91.2 , 0 );
setMoveKey( spep_0-3 + 62, 1, -238.3, -86 , 0 );
setMoveKey( spep_0-3 + 64, 1, -236.1, -80.7 , 0 );
setMoveKey( spep_0-3 + 66, 1, -233.8, -75.4 , 0 );
setMoveKey( spep_0-3 + 68, 1, -231.5, -70.1 , 0 );
setMoveKey( spep_0-3 + 70, 1, -229.2, -64.8 , 0 );
setMoveKey( spep_0-3 + 72, 1, -226.9, -59.5 , 0 );
setMoveKey( spep_0-3 + 74, 1, -224.7, -54.3 , 0 );
setMoveKey( spep_0-3 + 76, 1, -223.9, -53.5 , 0 );
setMoveKey( spep_0-3 + 78, 1, -223.1, -52.7 , 0 );
setMoveKey( spep_0-3 + 80, 1, -222.3, -51.9 , 0 );
setMoveKey( spep_0-3 + 82, 1, -221.5, -51.1 , 0 );
setMoveKey( spep_0-3 + 84, 1, -220.7, -50.4 , 0 );
setMoveKey( spep_0-3 + 86, 1, -219.9, -49.6 , 0 );
setMoveKey( spep_0-3 + 88, 1, -211.1, -64.8 , 0 );
setMoveKey( spep_0-3 + 90, 1, -231.2, -55.5 , 0 );
setMoveKey( spep_0-3 + 92, 1, -235.3, -70.3 , 0 );
setMoveKey( spep_0-3 + 94, 1, -255.3, -69.1 , 0 );
setMoveKey( spep_0-3 + 96, 1, -371.6, -149.4 , 0 );
setMoveKey( spep_0-3 + 98, 1, -771.1, -507.1 , 0 );
setMoveKey( spep_0-3 + 100, 1, -1154.9, -865 , 0 );

setScaleKey( spep_0-3 + 30, 1, 3.64, 3.64 );
setScaleKey( spep_0-3 + 32, 1, 3.37, 3.37 );
setScaleKey( spep_0-3 + 34, 1, 3.09, 3.09 );
setScaleKey( spep_0-3 + 36, 1, 2.75, 2.75 );
setScaleKey( spep_0-3 + 38, 1, 2.42, 2.42 );
setScaleKey( spep_0-3 + 40, 1, 2.08, 2.08 );
setScaleKey( spep_0-3 + 42, 1, 2.07, 2.07 );
setScaleKey( spep_0-3 + 44, 1, 2.05, 2.05 );
setScaleKey( spep_0-3 + 46, 1, 2.04, 2.04 );
setScaleKey( spep_0-3 + 48, 1, 2.03, 2.03 );
setScaleKey( spep_0-3 + 50, 1, 2.02, 2.02 );
setScaleKey( spep_0-3 + 52, 1, 2, 2 );
setScaleKey( spep_0-3 + 54, 1, 1.99, 1.99 );
setScaleKey( spep_0-3 + 56, 1, 1.98, 1.98 );
setScaleKey( spep_0-3 + 58, 1, 1.96, 1.96 );
setScaleKey( spep_0-3 + 60, 1, 1.95, 1.95 );
setScaleKey( spep_0-3 + 62, 1, 1.94, 1.94 );
setScaleKey( spep_0-3 + 64, 1, 1.93, 1.93 );
setScaleKey( spep_0-3 + 66, 1, 1.91, 1.91 );
setScaleKey( spep_0-3 + 68, 1, 1.9, 1.9 );
setScaleKey( spep_0-3 + 70, 1, 1.89, 1.89 );
setScaleKey( spep_0-3 + 72, 1, 1.87, 1.87 );
setScaleKey( spep_0-3 + 74, 1, 1.86, 1.86 );
setScaleKey( spep_0-3 + 76, 1, 1.86, 1.86 );
setScaleKey( spep_0-3 + 78, 1, 1.85, 1.85 );
setScaleKey( spep_0-3 + 80, 1, 1.85, 1.85 );
setScaleKey( spep_0-3 + 82, 1, 1.84, 1.84 );
setScaleKey( spep_0-3 + 84, 1, 1.84, 1.84 );
setScaleKey( spep_0-3 + 86, 1, 1.83, 1.83 );
setScaleKey( spep_0-3 + 88, 1, 1.83, 1.83 );
setScaleKey( spep_0-3 + 90, 1, 1.94, 1.94 );
setScaleKey( spep_0-3 + 92, 1, 2.06, 2.06 );
setScaleKey( spep_0-3 + 94, 1, 2.17, 2.17 );
setScaleKey( spep_0-3 + 96, 1, 2.77, 2.77 );
setScaleKey( spep_0-3 + 98, 1, 4.94, 4.94 );
setScaleKey( spep_0-3 + 100, 1, 7.1, 7.1 );

setRotateKey( spep_0-3 + 30, 1, 0 );
setRotateKey( spep_0-3 + 100, 1, 0 );

--SE
SE0=playSe( spep_0 + 0, 8 );--ジレン奥へ
se_1117 = playSe( spep_0 + 0, 1117 );--ジレン奥へ
se_1267 = playSe( spep_0 + 0, 1267 );--ジレン奥へ
setSeVolume( spep_0 + 0, 1267, 45 );
se_1268 = playSe( spep_0 + 0, 1268 );--ジレン奥へ
setSeVolume( spep_0 + 0, 1268, 138 );
SE1=playSe( spep_0 + 0, 1264 );--ジレン向かってくる
setSeVolume( spep_0 + 0, 1264, 0 );
setSeVolume( spep_0 + 90, 1264, 0 );
setSeVolume( spep_0 + 91, 1264, 1.92 );
setSeVolume( spep_0 + 92, 1264, 3.83 );
setSeVolume( spep_0 + 93, 1264, 5.75 );
setSeVolume( spep_0 + 94, 1264, 7.67 );
setSeVolume( spep_0 + 95, 1264, 9.58 );
setSeVolume( spep_0 + 96, 1264, 11.5 );
setSeVolume( spep_0 + 97, 1264, 13.42 );
setSeVolume( spep_0 + 98, 1264, 15.33 );
setSeVolume( spep_0 + 99, 1264, 17.25 );
setSeVolume( spep_0 + 100, 1264, 19.17 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 450, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 120; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE0, 0 );
    stopSe( SP_dodge - 12, SE1, 0 );
    stopSe( SP_dodge - 12, se_1117, 0 );
    stopSe( SP_dodge - 12, se_1267, 0 );
    stopSe( SP_dodge - 12, se_1268, 0 );

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

--敵の動き
setDisp( spep_0-3 + 152, 1, 1);
setDisp( spep_0-7 + 306, 1, 0);

changeAnime( spep_0-3 + 152, 1, 4);
changeAnime( spep_0-3 + 268, 1, 7);

setMoveKey( spep_0-3 + 152, 1, -324.9, -212.4 , 0 );
setMoveKey( spep_0-3 + 154, 1, -315.4, -235.3 , 0 );
setMoveKey( spep_0-3 + 156, 1, -322, -210.2 , 0 );
setMoveKey( spep_0-3 + 158, 1, -304.5, -217.1 , 0 );
setMoveKey( spep_0-3 + 160, 1, -319.1, -208 , 0 );
setMoveKey( spep_0-3 + 162, 1, -309.6, -198.9 , 0 );
setMoveKey( spep_0-3 + 164, 1, -316.2, -205.8 , 0 );
setMoveKey( spep_0-3 + 166, 1, -306.7, -228.7 , 0 );
setMoveKey( spep_0-3 + 168, 1, -313.3, -203.7 , 0 );
setMoveKey( spep_0-3 + 170, 1, -303.8, -210.6 , 0 );
setMoveKey( spep_0-3 + 172, 1, -310.4, -201.5 , 0 );
setMoveKey( spep_0-3 + 174, 1, -300.9, -208.4 , 0 );
setMoveKey( spep_0-3 + 176, 1, -307.5, -199.3 , 0 );
setMoveKey( spep_0-3 + 178, 1, -306, -198.2 , 0 );
setMoveKey( spep_0-3 + 180, 1, -304.6, -197.1 , 0 );
setMoveKey( spep_0-3 + 182, 1, -303.1, -196 , 0 );
setMoveKey( spep_0-3 + 184, 1, -301.7, -194.9 , 0 );
setMoveKey( spep_0-3 + 186, 1, -300.2, -193.8 , 0 );
setMoveKey( spep_0-3 + 188, 1, -298.8, -192.7 , 0 );
setMoveKey( spep_0-3 + 190, 1, -297.3, -191.6 , 0 );
setMoveKey( spep_0-3 + 192, 1, -295.8, -190.5 , 0 );
setMoveKey( spep_0-3 + 194, 1, -294.4, -189.4 , 0 );
setMoveKey( spep_0-3 + 196, 1, -292.9, -188.3 , 0 );
setMoveKey( spep_0-3 + 198, 1, -291.5, -187.2 , 0 );
setMoveKey( spep_0-3 + 200, 1, -290, -186.1 , 0 );
setMoveKey( spep_0-3 + 202, 1, -288.6, -185 , 0 );
setMoveKey( spep_0-3 + 204, 1, -287.1, -183.9 , 0 );
setMoveKey( spep_0-3 + 206, 1, -285.7, -182.8 , 0 );
setMoveKey( spep_0-3 + 208, 1, -284.2, -181.7 , 0 );
setMoveKey( spep_0-3 + 210, 1, -282.8, -180.6 , 0 );
setMoveKey( spep_0-3 + 212, 1, -281.3, -179.5 , 0 );
setMoveKey( spep_0-3 + 214, 1, -279.9, -178.5 , 0 );
setMoveKey( spep_0-3 + 216, 1, -278.4, -177.4 , 0 );
setMoveKey( spep_0-3 + 218, 1, -277, -176.3 , 0 );
setMoveKey( spep_0-3 + 219, 1, -277, -176.3 , 0 );

setMoveKey( spep_0-3 + 220, 1, 107.4, -58.5 , 0 );
setMoveKey( spep_0-3 + 222, 1, 111.4, -58.5 , 0 );
setMoveKey( spep_0-3 + 224, 1, 107.4, -58.5 , 0 );
setMoveKey( spep_0-3 + 226, 1, 107.4, -62.5 , 0 );
setMoveKey( spep_0-3 + 228, 1, 107.4, -58.5 , 0 );
setMoveKey( spep_0-3 + 230, 1, 111.4, -62.5 , 0 );
setMoveKey( spep_0-3 + 232, 1, 107.4, -58.5 , 0 );
setMoveKey( spep_0-3 + 234, 1, 111.4, -58.5 , 0 );
setMoveKey( spep_0-3 + 236, 1, 107.4, -58.5 , 0 );
setMoveKey( spep_0-3 + 238, 1, 107.4, -66.5 , 0 );
setMoveKey( spep_0-3 + 240, 1, 107.4, -58.5 , 0 );
setMoveKey( spep_0-3 + 242, 1, 111.4, -62.5 , 0 );
setMoveKey( spep_0-3 + 244, 1, 107.4, -58.5 , 0 );
setMoveKey( spep_0-3 + 246, 1, 111.4, -62.5 , 0 );
setMoveKey( spep_0-3 + 248, 1, 107.4, -58.5 , 0 );
setMoveKey( spep_0-3 + 250, 1, 111.4, -58.5 , 0 );
setMoveKey( spep_0-3 + 252, 1, 107.4, -58.5 , 0 );
setMoveKey( spep_0-3 + 254, 1, 111.4, -66.5 , 0 );
setMoveKey( spep_0-3 + 256, 1, 107.4, -58.5 , 0 );
setMoveKey( spep_0-3 + 258, 1, 111.4, -62.5 , 0 );
setMoveKey( spep_0-3 + 260, 1, 107.4, -58.5 , 0 );
setMoveKey( spep_0-3 + 262, 1, 111.4, -58.5 , 0 );
setMoveKey( spep_0-3 + 264, 1, 107.4, -58.5 , 0 );
setMoveKey( spep_0-3 + 266, 1, 115.4, -94.5 , 0 );
setMoveKey( spep_0-3 + 267, 1, 115.4, -94.5 , 0 );

setMoveKey( spep_0-7 + 272, 1, 90.5, -56.3 , 0 );
setMoveKey( spep_0-7 + 274, 1, 80, -84.8 , 0 );
setMoveKey( spep_0-7 + 276, 1, 13.5, -73.3 , 0 );
setMoveKey( spep_0-7 + 278, 1, -17, -105.8 , 0 );
setMoveKey( spep_0-7 + 280, 1, -63.4, -90.4 , 0 );
setMoveKey( spep_0-7 + 282, 1, -93.9, -106.9 , 0 );
setMoveKey( spep_0-7 + 284, 1, -381.2, -336.8 , 0 );
setMoveKey( spep_0-7 + 286, 1, -652.6, -566.8 , 0 );
setMoveKey( spep_0-7 + 288, 1, -940.1, -812.9 , 0 );
setMoveKey( spep_0-7 + 290, 1, -1211.6, -1067.1 , 0 );
setMoveKey( spep_0-7 + 292, 1, -1499.1, -1289.5 , 0 );
setMoveKey( spep_0-7 + 294, 1, -1762.7, -1535.9 , 0 );
setMoveKey( spep_0-7 + 296, 1, -2058.4, -1766.5 , 0 );
setMoveKey( spep_0-7 + 298, 1, -2322, -2005.2 , 0 );
setMoveKey( spep_0-7 + 300, 1, -2617.8, -2244 , 0 );
setMoveKey( spep_0-7 + 302, 1, -2889.5, -2514.9 , 0 );
setMoveKey( spep_0-7 + 304, 1, -3177.3, -2722 , 0 );
setMoveKey( spep_0-7 + 306, 1, -3441.2, -2969.2 , 0 );

setScaleKey( spep_0-3 + 152, 1, 3.33, 3.33 );
setScaleKey( spep_0-3 + 154, 1, 3.33, 3.33 );
setScaleKey( spep_0-3 + 156, 1, 3.32, 3.32 );
setScaleKey( spep_0-3 + 158, 1, 3.31, 3.31 );
setScaleKey( spep_0-3 + 160, 1, 3.3, 3.3 );
setScaleKey( spep_0-3 + 162, 1, 3.29, 3.29 );
setScaleKey( spep_0-3 + 164, 1, 3.29, 3.29 );
setScaleKey( spep_0-3 + 166, 1, 3.28, 3.28 );
setScaleKey( spep_0-3 + 168, 1, 3.27, 3.27 );
setScaleKey( spep_0-3 + 170, 1, 3.26, 3.26 );
setScaleKey( spep_0-3 + 172, 1, 3.25, 3.25 );
setScaleKey( spep_0-3 + 174, 1, 3.24, 3.24 );
setScaleKey( spep_0-3 + 176, 1, 3.24, 3.24 );
setScaleKey( spep_0-3 + 178, 1, 3.23, 3.23 );
setScaleKey( spep_0-3 + 180, 1, 3.22, 3.22 );
setScaleKey( spep_0-3 + 182, 1, 3.21, 3.21 );
setScaleKey( spep_0-3 + 184, 1, 3.2, 3.2 );
setScaleKey( spep_0-3 + 186, 1, 3.2, 3.2 );
setScaleKey( spep_0-3 + 188, 1, 3.19, 3.19 );
setScaleKey( spep_0-3 + 190, 1, 3.18, 3.18 );
setScaleKey( spep_0-3 + 192, 1, 3.17, 3.17 );
setScaleKey( spep_0-3 + 194, 1, 3.16, 3.16 );
setScaleKey( spep_0-3 + 196, 1, 3.16, 3.16 );
setScaleKey( spep_0-3 + 198, 1, 3.15, 3.15 );
setScaleKey( spep_0-3 + 200, 1, 3.14, 3.14 );
setScaleKey( spep_0-3 + 202, 1, 3.13, 3.13 );
setScaleKey( spep_0-3 + 204, 1, 3.12, 3.12 );
setScaleKey( spep_0-3 + 206, 1, 3.11, 3.11 );
setScaleKey( spep_0-3 + 208, 1, 3.11, 3.11 );
setScaleKey( spep_0-3 + 210, 1, 3.1, 3.1 );
setScaleKey( spep_0-3 + 212, 1, 3.09, 3.09 );
setScaleKey( spep_0-3 + 214, 1, 3.08, 3.08 );
setScaleKey( spep_0-3 + 216, 1, 3.07, 3.07 );
setScaleKey( spep_0-3 + 218, 1, 3.07, 3.07 );
setScaleKey( spep_0-3 + 219, 1, 3.07, 3.07 );
setScaleKey( spep_0-3 + 220, 1, 0.71, 0.71 );
setScaleKey( spep_0-3 + 266, 1, 0.71, 0.71 );
setScaleKey( spep_0-3 + 267, 1, 0.71, 0.71 );

setScaleKey( spep_0-7 + 272, 1, 0.41, 0.41 );
setScaleKey( spep_0-7 + 274, 1, 0.51, 0.51 );
setScaleKey( spep_0-7 + 276, 1, 0.62, 0.62 );
setScaleKey( spep_0-7 + 278, 1, 0.72, 0.72 );
setScaleKey( spep_0-7 + 280, 1, 0.83, 0.83 );
setScaleKey( spep_0-7 + 282, 1, 0.93, 0.93 );
setScaleKey( spep_0-7 + 284, 1, 2.27, 2.27 );
setScaleKey( spep_0-7 + 286, 1, 3.61, 3.61 );
setScaleKey( spep_0-7 + 288, 1, 4.95, 4.95 );
setScaleKey( spep_0-7 + 290, 1, 6.29, 6.29 );
setScaleKey( spep_0-7 + 292, 1, 7.63, 7.63 );
setScaleKey( spep_0-7 + 294, 1, 8.97, 8.97 );
setScaleKey( spep_0-7 + 296, 1, 10.31, 10.31 );
setScaleKey( spep_0-7 + 298, 1, 11.65, 11.65 );
setScaleKey( spep_0-7 + 300, 1, 12.99, 12.99 );
setScaleKey( spep_0-7 + 302, 1, 14.33, 14.33 );
setScaleKey( spep_0-7 + 304, 1, 15.67, 15.67 );
setScaleKey( spep_0-7 + 306, 1, 17.01, 17.01 );

setRotateKey( spep_0-3 + 152, 1, 0 );
setRotateKey( spep_0-3 + 266, 1, 0 );
setRotateKey( spep_0-3 + 267, 1, 0 );

setRotateKey( spep_0-7 + 272, 1, -34.5 );
setRotateKey( spep_0-7 + 274, 1, -32.3 );
setRotateKey( spep_0-7 + 276, 1, -30 );
setRotateKey( spep_0-7 + 278, 1, -27.8 );
setRotateKey( spep_0-7 + 280, 1, -25.6 );
setRotateKey( spep_0-7 + 282, 1, -23.3 );
setRotateKey( spep_0-7 + 284, 1, -22.8 );
setRotateKey( spep_0-7 + 286, 1, -22.2 );
setRotateKey( spep_0-7 + 288, 1, -21.6 );
setRotateKey( spep_0-7 + 290, 1, -21 );
setRotateKey( spep_0-7 + 292, 1, -20.4 );
setRotateKey( spep_0-7 + 294, 1, -19.8 );
setRotateKey( spep_0-7 + 296, 1, -19.2 );
setRotateKey( spep_0-7 + 298, 1, -18.6 );
setRotateKey( spep_0-7 + 300, 1, -18.1 );
setRotateKey( spep_0-7 + 302, 1, -17.5 );
setRotateKey( spep_0-7 + 304, 1, -16.9 );
setRotateKey( spep_0-7 + 306, 1, -16.3 );

--文字エントリー
ctga = entryEffectLife( spep_0-3 + 152,  10005, 26, 0x100, -1, 0, -116.4, 310.6 );
setEffShake( spep_0-3 + 152, ctga, 26, 10 );
setEffMoveKey( spep_0-3 + 152, ctga, -116.4, 310.6 , 0 );
setEffMoveKey( spep_0-3 + 154, ctga, -117, 310.6 , 0 );
setEffMoveKey( spep_0-3 + 156, ctga, -102.5, 315.7 , 0 );
setEffMoveKey( spep_0-3 + 158, ctga, -116.8, 310.8 , 0 );
setEffMoveKey( spep_0-3 + 160, ctga, -102.8, 316.4 , 0 );
setEffMoveKey( spep_0-3 + 162, ctga, -116.8, 310.7 , 0 );
setEffMoveKey( spep_0-3 + 164, ctga, -103.6, 315.9 , 0 );
setEffMoveKey( spep_0-3 + 166, ctga, -116.8, 310.7 , 0 );
setEffMoveKey( spep_0-3 + 168, ctga, -104.3, 315.5 , 0 );
setEffMoveKey( spep_0-3 + 170, ctga, -116.9, 310.7 , 0 );
setEffMoveKey( spep_0-3 + 172, ctga, -116.9, 310.7 , 0 );
setEffMoveKey( spep_0-3 + 174, ctga, -105.2, 314.9 , 0 );
setEffMoveKey( spep_0-3 + 178, ctga, -116.9, 310.7 , 0 );

setEffScaleKey( spep_0-3 + 152, ctga, 1.01, 1.01 );
setEffScaleKey( spep_0-3 + 154, ctga, 2.67, 2.67 );
setEffScaleKey( spep_0-3 + 156, ctga, 2.7, 2.7 );
setEffScaleKey( spep_0-3 + 158, ctga, 2.74, 2.74 );
setEffScaleKey( spep_0-3 + 160, ctga, 2.67, 2.67 );
setEffScaleKey( spep_0-3 + 162, ctga, 2.59, 2.59 );
setEffScaleKey( spep_0-3 + 164, ctga, 2.52, 2.52 );
setEffScaleKey( spep_0-3 + 166, ctga, 2.44, 2.44 );
setEffScaleKey( spep_0-3 + 168, ctga, 2.37, 2.37 );
setEffScaleKey( spep_0-3 + 170, ctga, 2.29, 2.29 );
setEffScaleKey( spep_0-3 + 172, ctga, 2.22, 2.22 );
setEffScaleKey( spep_0-3 + 174, ctga, 2.19, 2.19 );
setEffScaleKey( spep_0-3 + 176, ctga, 2.17, 2.17 );
setEffScaleKey( spep_0-3 + 178, ctga, 2.15, 2.15 );

setEffRotateKey( spep_0-3 + 152, ctga, 15.1 );
setEffRotateKey( spep_0-3 + 154, ctga, 28.5 );
setEffRotateKey( spep_0-3 + 156, ctga, 25.7 );
setEffRotateKey( spep_0-3 + 158, ctga, 22.9 );
setEffRotateKey( spep_0-3 + 160, ctga, 23.1 );
setEffRotateKey( spep_0-3 + 162, ctga, 23.4 );
setEffRotateKey( spep_0-3 + 164, ctga, 23.7 );
setEffRotateKey( spep_0-3 + 166, ctga, 23.9 );
setEffRotateKey( spep_0-3 + 168, ctga, 24.2 );
setEffRotateKey( spep_0-3 + 170, ctga, 24.5 );
setEffRotateKey( spep_0-3 + 172, ctga, 24.7 );
setEffRotateKey( spep_0-3 + 174, ctga, 25.2 );
setEffRotateKey( spep_0-3 + 176, ctga, 25.6 );
setEffRotateKey( spep_0-3 + 178, ctga, 26.1 );

setEffAlphaKey( spep_0-3 + 152, ctga, 255 );
setEffAlphaKey( spep_0-3 + 172, ctga, 255 );
setEffAlphaKey( spep_0-3 + 174, ctga, 170 );
setEffAlphaKey( spep_0-3 + 176, ctga, 85 );
setEffAlphaKey( spep_0-3 + 178, ctga, 0 );

--文字エントリー
ctdogon = entryEffectLife( spep_0-3 + 268,  10018, 20, 0x100, -1, 0, -5.8, 305.4 );

setEffMoveKey( spep_0-3 + 268, ctdogon, -5.8, 305.4 , 0 );
setEffMoveKey( spep_0-3 + 270, ctdogon, -4.7, 303.8 , 0 );
setEffMoveKey( spep_0-3 + 272, ctdogon, -6.6, 306.3 , 0 );
setEffMoveKey( spep_0-3 + 274, ctdogon, -4.7, 303.9 , 0 );
setEffMoveKey( spep_0-3 + 276, ctdogon, -6.6, 306.1 , 0 );
setEffMoveKey( spep_0-3 + 278, ctdogon, -4.7, 303.8 , 0 );
setEffMoveKey( spep_0-3 + 280, ctdogon, -6.6, 305.9 , 0 );
setEffMoveKey( spep_0-3 + 282, ctdogon, -4.8, 303.6 , 0 );
setEffMoveKey( spep_0-3 + 284, ctdogon, -4.8, 303.6 , 0 );
setEffMoveKey( spep_0-3 + 286, ctdogon, -6.5, 305.8 , 0 );
setEffMoveKey( spep_0-3 + 288, ctdogon, -6.4, 305.8 , 0 );

setEffScaleKey( spep_0-3 + 268, ctdogon, 2.12, 2.12 );
setEffScaleKey( spep_0-3 + 270, ctdogon, 4.38, 4.38 );
setEffScaleKey( spep_0-3 + 272, ctdogon, 3.38, 3.38 );
setEffScaleKey( spep_0-3 + 274, ctdogon, 3.34, 3.34 );
setEffScaleKey( spep_0-3 + 276, ctdogon, 3.3, 3.3 );
setEffScaleKey( spep_0-3 + 278, ctdogon, 3.26, 3.26 );
setEffScaleKey( spep_0-3 + 280, ctdogon, 3.22, 3.22 );
setEffScaleKey( spep_0-3 + 282, ctdogon, 3.18, 3.18 );
setEffScaleKey( spep_0-3 + 284, ctdogon, 3.14, 3.14 );
setEffScaleKey( spep_0-3 + 286, ctdogon, 3.04, 3.04 );
setEffScaleKey( spep_0-3 + 288, ctdogon, 2.93, 2.93 );

setEffRotateKey( spep_0-3 + 268, ctdogon, 16.7 );
setEffRotateKey( spep_0-3 + 278, ctdogon, 16.7 );
setEffRotateKey( spep_0-3 + 280, ctdogon, 16.8 );
setEffRotateKey( spep_0-3 + 288, ctdogon, 16.8 );

setEffAlphaKey( spep_0-3 + 268, ctdogon, 255 );
setEffAlphaKey( spep_0-3 + 284, ctdogon, 255 );
setEffAlphaKey( spep_0-3 + 286, ctdogon, 128 );
setEffAlphaKey( spep_0-3 + 288, ctdogon, 0 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0+332  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0+332  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_0 +344, 190006, 72, 0x100, -1, 0, 0, 510);-- ゴゴゴゴ

setEffMoveKey(  spep_0 +344,  ctgogo,  0,  510);
setEffMoveKey(  spep_0 +416,  ctgogo,  0,  510);

setEffAlphaKey( spep_0 +344, ctgogo, 0 );
setEffAlphaKey( spep_0 + 345, ctgogo, 255 );
setEffAlphaKey( spep_0 + 346, ctgogo, 255 );
setEffAlphaKey( spep_0 + 400, ctgogo, 255 );
setEffAlphaKey( spep_0 + 412, ctgogo, 191 );
setEffAlphaKey( spep_0 + 414, ctgogo, 112 );
setEffAlphaKey( spep_0 + 416, ctgogo, 64 );

setEffRotateKey(  spep_0 +344,  ctgogo,  0);
setEffRotateKey(  spep_0 +416,  ctgogo,  0);

setEffScaleKey(  spep_0 +344,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_0 +406,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_0 +416,  ctgogo, -1.07, 1.07 );

--SE
setSeVolume( spep_0 + 101, 1264, 21.08 );
setSeVolume( spep_0 + 102, 1264, 23 );
setSeVolume( spep_0 + 103, 1264, 24.92 );
setSeVolume( spep_0 + 104, 1264, 26.83 );
setSeVolume( spep_0 + 105, 1264, 28.75 );
setSeVolume( spep_0 + 106, 1264, 30.67 );
setSeVolume( spep_0 + 107, 1264, 32.58 );
setSeVolume( spep_0 + 108, 1264, 34.5 );
setSeVolume( spep_0 + 109, 1264, 36.42 );
setSeVolume( spep_0 + 110, 1264, 38.33 );
setSeVolume( spep_0 + 111, 1264, 40.25 );
setSeVolume( spep_0 + 112, 1264, 42.17 );
setSeVolume( spep_0 + 113, 1264, 44.08 );
setSeVolume( spep_0 + 114, 1264, 46 );
playSe( spep_0 + 8, 1232 );--ジレン奥へ
playSe( spep_0 + 88, 1182 );--ジレン向かってくる
se_1183 = playSe( spep_0 + 88, 1183 );--ジレン向かってくる
se_00091 = playSe( spep_0 + 88, 9 );--ジレン向かってくる
playSe( spep_0 + 138, 1004 );--腕を出す
se_11161 = playSe( spep_0 + 140, 1116 );--腕を出す
playSe( spep_0 + 158, 1009 );--つかむ
playSe( spep_0 + 160, 1190 );--つかむ
playSe( spep_0 + 162, 1064 );--つかむ
setSeVolume( spep_0 + 162, 1064, 50 );
playSe( spep_0 + 162, 1169 );--つかむ
setSeVolume( spep_0 + 162, 1169, 71 );
playSe( spep_0 + 162, 1180 );--つかむ
setSeVolume( spep_0 + 162, 1180, 68 );
playSe( spep_0 + 178, 1254 );--手から煙でる
setSeVolume( spep_0 + 178, 1254, 0 );
setSeVolume( spep_0 + 200, 1254, 0 );
setSeVolume( spep_0 + 201, 1254, 10.5 );
setSeVolume( spep_0 + 202, 1254, 21 );
setSeVolume( spep_0 + 203, 1254, 31.5 );
setSeVolume( spep_0 + 204, 1254, 42 );
playSe( spep_0 + 196, 1231 );--手から煙でる
setSeVolume( spep_0 + 196, 1231, 79 );
se_1175 = playSe( spep_0 + 196, 1175 );--手から煙でる
setSeVolume( spep_0 + 196, 1175, 23 );
setSeVolume( spep_0 + 240, 1175,23);
setSeVolume( spep_0 + 241, 1175,22.58);
setSeVolume( spep_0 + 242, 1175,22.16);
setSeVolume( spep_0 + 243, 1175,21.74);
setSeVolume( spep_0 + 244, 1175,21.32);
setSeVolume( spep_0 + 245, 1175,20.9);
setSeVolume( spep_0 + 246, 1175,20.48);
setSeVolume( spep_0 + 247, 1175,20.06);
setSeVolume( spep_0 + 248, 1175,19.64);
setSeVolume( spep_0 + 249, 1175,19.22);
setSeVolume( spep_0 + 250, 1175,18.8);
setSeVolume( spep_0 + 251, 1175,18.38);
setSeVolume( spep_0 + 252, 1175,17.96);
setSeVolume( spep_0 + 253, 1175,17.54);
setSeVolume( spep_0 + 254, 1175,17.12);
setSeVolume( spep_0 + 255, 1175,16.7);
setSeVolume( spep_0 + 256, 1175,16.28);
setSeVolume( spep_0 + 257, 1175,15.86);
setSeVolume( spep_0 + 258, 1175,15.44);
setSeVolume( spep_0 + 259, 1175,15.02);
setSeVolume( spep_0 + 260, 1175,14.6);
setSeVolume( spep_0 + 261, 1175,14.18);
setSeVolume( spep_0 + 262, 1175,13.76);
setSeVolume( spep_0 + 263, 1175,13.34);
setSeVolume( spep_0 + 264, 1175,12.92);
setSeVolume( spep_0 + 265, 1175,12.5);
setSeVolume( spep_0 + 266, 1175,12.08);
setSeVolume( spep_0 + 267, 1175,11.66);
setSeVolume( spep_0 + 268, 1175,11.24);
setSeVolume( spep_0 + 269, 1175,10.82);
setSeVolume( spep_0 + 270, 1175,10.4);
setSeVolume( spep_0 + 271, 1175,9.97);
setSeVolume( spep_0 + 272, 1175,9.55);
setSeVolume( spep_0 + 273, 1175,9.13);
setSeVolume( spep_0 + 274, 1175,8.71);
setSeVolume( spep_0 + 275, 1175,8.29);
setSeVolume( spep_0 + 276, 1175,7.87);
setSeVolume( spep_0 + 277, 1175,7.45);
setSeVolume( spep_0 + 278, 1175,7.03);
setSeVolume( spep_0 + 279, 1175,6.61);
setSeVolume( spep_0 + 280, 1175,6.19);
setSeVolume( spep_0 + 281, 1175,5.77);
setSeVolume( spep_0 + 282, 1175,5.35);
setSeVolume( spep_0 + 283, 1175,4.93);
setSeVolume( spep_0 + 284, 1175,4.51);
setSeVolume( spep_0 + 285, 1175,4.09);
setSeVolume( spep_0 + 286, 1175,3.67);
setSeVolume( spep_0 + 287, 1175,3.25);
setSeVolume( spep_0 + 288, 1175,2.83);
setSeVolume( spep_0 + 289, 1175,2.41);
setSeVolume( spep_0 + 290, 1175,1.99);
setSeVolume( spep_0 + 291, 1175,1.57);
setSeVolume( spep_0 + 292, 1175,1.15);
setSeVolume( spep_0 + 293, 1175,0.73);
setSeVolume( spep_0 + 294, 1175,0);
playSe( spep_0 + 272, 1137 );--爆発
setSeVolume( spep_0 + 272, 1137, 82 );
playSe( spep_0 + 272, 1023 );--爆発
setSeVolume( spep_0 + 272, 1023, 74 );
se_0015 = playSe( spep_0 + 294, 15 );--気弾溜める
setSeVolume( spep_0 + 294, 15, 0 );
setSeVolume( spep_0 + 380, 15, 0 );
setSeVolume( spep_0 + 381, 15, 14 );
setSeVolume( spep_0 + 382, 15, 28 );
setSeVolume( spep_0 + 383, 15, 42 );
setSeVolume( spep_0 + 384, 15, 56 );
playSe( spep_0 + 334, 1233 );--腕あげる
se_1190 = playSe( spep_0 + 334, 1190 );--腕あげる
setSeVolume( spep_0 + 334, 1190, 0 );
setSeVolume( spep_0 + 337, 1190, 0 );
setSeVolume( spep_0 + 338, 1190, 14.29 );
setSeVolume( spep_0 + 339, 1190, 28.57 );
setSeVolume( spep_0 + 340, 1190, 42.86 );
setSeVolume( spep_0 + 341, 1190, 57.14 );
setSeVolume( spep_0 + 342, 1190, 71.43 );
setSeVolume( spep_0 + 343, 1190, 85.71 );
setSeVolume( spep_0 + 344, 1190, 100 );
playSe( spep_0 + 344, 1018 );--顔カットイン
playSe( spep_0 + 344, 1004 );--腕あげる
se_11571 = playSe( spep_0 + 380, 1157 );--気弾溜める
se_12001 = playSe( spep_0 + 380, 1200 );--気弾溜める
se_1191 = playSe( spep_0 + 380, 1191 );--気弾溜める
setSeVolume( spep_0 + 380, 1191, 129 );
se_11221 = playSe( spep_0 + 382, 1122 );--気弾溜める
setSeVolume( spep_0 + 382, 1122, 61 );
se_1042 = playSe( spep_0 + 402, 1042 );--気弾溜める
setSeVolume( spep_0 + 402, 1042, 0 );
setSeVolume( spep_0 + 403, 1042, 6 );
setSeVolume( spep_0 + 404, 1042, 12 );
setSeVolume( spep_0 + 405, 1042, 18 );
setSeVolume( spep_0 + 406, 1042, 24 );
setSeVolume( spep_0 + 407, 1042, 30 );
setSeVolume( spep_0 + 408, 1042, 36 );
setSeVolume( spep_0 + 409, 1042, 42 );
setSeVolume( spep_0 + 410, 1042, 48 );
setSeVolume( spep_0 + 411, 1042, 54 );
setSeVolume( spep_0 + 412, 1042, 60 );
setSeVolume( spep_0 + 413, 1042, 66 );
setSeVolume( spep_0 + 414, 1042, 72 );

stopSe( spep_0 + 21, se_1117, 44 );
stopSe( spep_0 + 90, se_1267, 0 );
stopSe( spep_0 + 90, se_1268, 0 );
stopSe( spep_0 + 178, se_1183, 0 );
stopSe( spep_0 + 118, se_00091, 37 );
stopSe( spep_0 + 160, se_11161, 8 );
stopSe( spep_0 + 294, se_1175, 0 );
stopSe( spep_0 + 360, se_1190, 23 );
stopSe( spep_0 + 400, se_12001, 8 );

--白フェード
entryFade( spep_0+442 , 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1=spep_0+450;
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

stopSe( spep_1 + 2, se_0015, 0 );
stopSe( spep_1 + 2, se_11571, 0 );
stopSe( spep_1 + 2, se_1191, 0 );
stopSe( spep_1 + 2, se_11221, 0 );
stopSe( spep_1 + 2, se_1042, 0 );


--白フェード
entryFade( spep_1 + 82, 4, 10, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

------------------------------------------------------
-- 発射〜爆発
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_2 + 0, SP_03x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_2 + 400, finish, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_2 + 400, finish, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish, 0 );
setEffRotateKey( spep_2 + 400, finish, 0 );
setEffAlphaKey( spep_2 + 0, finish, 255 );
setEffAlphaKey( spep_2 + 400, finish, 255 );

--文字エントリー
ctzuo = entryEffectLife( spep_2-3 + 104,  10012, 40, 0x100, -1, 0, 94, 364.2 );
setEffShake( spep_2-3 + 104, ctzuo, 40, 10 );
setEffMoveKey( spep_2-3 + 104, ctzuo, 94, 364.2 , 0 );
setEffMoveKey( spep_2-3 + 106, ctzuo, 105.9, 376.8 , 0 );
setEffMoveKey( spep_2-3 + 108, ctzuo, 120.6, 364.8 , 0 );
setEffMoveKey( spep_2-3 + 110, ctzuo, 115.1, 385.5 , 0 );
setEffMoveKey( spep_2-3 + 112, ctzuo, 113.6, 365.5 , 0 );
setEffMoveKey( spep_2-3 + 114, ctzuo, 109.3, 382.4 , 0 );
setEffMoveKey( spep_2-3 + 116, ctzuo, 110.8, 365.5 , 0 );
setEffMoveKey( spep_2-3 + 118, ctzuo, 110.6, 382.1 , 0 );
setEffMoveKey( spep_2-3 + 120, ctzuo, 112.4, 364.4 , 0 );
setEffMoveKey( spep_2-3 + 122, ctzuo, 111.9, 381.8 , 0 );
setEffMoveKey( spep_2-3 + 124, ctzuo, 114, 363.3 , 0 );
setEffMoveKey( spep_2-3 + 126, ctzuo, 113.3, 381.5 , 0 );
setEffMoveKey( spep_2-3 + 128, ctzuo, 115.5, 362.3 , 0 );
setEffMoveKey( spep_2-3 + 130, ctzuo, 114.5, 381.2 , 0 );
setEffMoveKey( spep_2-3 + 132, ctzuo, 117, 361.2 , 0 );
setEffMoveKey( spep_2-3 + 134, ctzuo, 115.8, 380.9 , 0 );
setEffMoveKey( spep_2-3 + 136, ctzuo, 118.6, 360.2 , 0 );
setEffMoveKey( spep_2-3 + 138, ctzuo, 117, 380.7 , 0 );
setEffMoveKey( spep_2-3 + 140, ctzuo, 128.6, 360.5 , 0 );
setEffMoveKey( spep_2-3 + 142, ctzuo, 133, 397.1 , 0 );
setEffMoveKey( spep_2-3 + 144, ctzuo, 140.9, 405.6 , 0 );

setEffScaleKey( spep_2-3 + 104, ctzuo, 0.34, 0.34 );
setEffScaleKey( spep_2-3 + 106, ctzuo, 1.82, 1.82 );
setEffScaleKey( spep_2-3 + 108, ctzuo, 3.31, 3.31 );
setEffScaleKey( spep_2-3 + 110, ctzuo, 3.01, 3.01 );
setEffScaleKey( spep_2-3 + 112, ctzuo, 2.71, 2.71 );
setEffScaleKey( spep_2-3 + 114, ctzuo, 2.41, 2.41 );
setEffScaleKey( spep_2-3 + 116, ctzuo, 2.47, 2.47 );
setEffScaleKey( spep_2-3 + 118, ctzuo, 2.53, 2.53 );
setEffScaleKey( spep_2-3 + 120, ctzuo, 2.58, 2.58 );
setEffScaleKey( spep_2-3 + 122, ctzuo, 2.64, 2.64 );
setEffScaleKey( spep_2-3 + 124, ctzuo, 2.7, 2.7 );
setEffScaleKey( spep_2-3 + 126, ctzuo, 2.75, 2.75 );
setEffScaleKey( spep_2-3 + 128, ctzuo, 2.81, 2.81 );
setEffScaleKey( spep_2-3 + 130, ctzuo, 2.87, 2.87 );
setEffScaleKey( spep_2-3 + 132, ctzuo, 2.92, 2.92 );
setEffScaleKey( spep_2-3 + 134, ctzuo, 2.98, 2.98 );
setEffScaleKey( spep_2-3 + 136, ctzuo, 3.04, 3.04 );
setEffScaleKey( spep_2-3 + 138, ctzuo, 3.09, 3.09 );
setEffScaleKey( spep_2-3 + 140, ctzuo, 4.19, 4.19 );
setEffScaleKey( spep_2-3 + 142, ctzuo, 5.28, 5.28 );
setEffScaleKey( spep_2-3 + 144, ctzuo, 6.38, 6.38 );

setEffRotateKey( spep_2-3 + 104, ctzuo, 30.5 );
setEffRotateKey( spep_2-3 + 106, ctzuo, 30.1 );
setEffRotateKey( spep_2-3 + 108, ctzuo, 29.6 );
setEffRotateKey( spep_2-3 + 110, ctzuo, 31 );
setEffRotateKey( spep_2-3 + 112, ctzuo, 32.4 );
setEffRotateKey( spep_2-3 + 114, ctzuo, 33.8 );
setEffRotateKey( spep_2-3 + 116, ctzuo, 33.5 );
setEffRotateKey( spep_2-3 + 118, ctzuo, 33.2 );
setEffRotateKey( spep_2-3 + 120, ctzuo, 32.9 );
setEffRotateKey( spep_2-3 + 122, ctzuo, 32.6 );
setEffRotateKey( spep_2-3 + 124, ctzuo, 32.3 );
setEffRotateKey( spep_2-3 + 126, ctzuo, 32 );
setEffRotateKey( spep_2-3 + 128, ctzuo, 31.7 );
setEffRotateKey( spep_2-3 + 130, ctzuo, 31.4 );
setEffRotateKey( spep_2-3 + 132, ctzuo, 31.1 );
setEffRotateKey( spep_2-3 + 134, ctzuo, 30.8 );
setEffRotateKey( spep_2-3 + 136, ctzuo, 30.5 );
setEffRotateKey( spep_2-3 + 138, ctzuo, 30.1 );
setEffRotateKey( spep_2-3 + 140, ctzuo, 29.7 );
setEffRotateKey( spep_2-3 + 142, ctzuo, 29.3 );
setEffRotateKey( spep_2-3 + 144, ctzuo, 28.9 );

setEffAlphaKey( spep_2-3 + 104, ctzuo, 255 );
setEffAlphaKey( spep_2-3 + 138, ctzuo, 255 );
setEffAlphaKey( spep_2-3 + 140, ctzuo, 170 );
setEffAlphaKey( spep_2-3 + 142, ctzuo, 85 );
setEffAlphaKey( spep_2-3 + 144, ctzuo, 0 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 400, 0,  0, 0, 0, 255 ); --くろ 背景

--SE
se_1116 = playSe( spep_2 + 0, 1116 );--カメラズーム
se_0009 = playSe( spep_2 + 0, 9 );--カメラズーム
setSeVolume( spep_2 + 0, 9, 0 );
setSeVolume( spep_2 + 1, 9, 6.25 );
setSeVolume( spep_2 + 2, 9, 12.5 );
setSeVolume( spep_2 + 3, 9, 18.75 );
setSeVolume( spep_2 + 4, 9, 25 );
setSeVolume( spep_2 + 5, 9, 31.25 );
setSeVolume( spep_2 + 6, 9, 37.5 );
setSeVolume( spep_2 + 7, 9, 43.75 );
setSeVolume( spep_2 + 8, 9, 50 );
setSeVolume( spep_2 + 9, 9, 56.25 );
setSeVolume( spep_2 + 10, 9, 62.5 );
setSeVolume( spep_2 + 11, 9, 68.75 );
setSeVolume( spep_2 + 12, 9, 75 );
setSeVolume( spep_2 + 13, 9, 81.25 );
setSeVolume( spep_2 + 14, 9, 87.5 );
setSeVolume( spep_2 + 15, 9, 93.75 );
setSeVolume( spep_2 + 16, 9, 100 );
se_1200 = playSe( spep_2 + 0, 1200 );--気弾溜め音
setSeVolume( spep_2 + 0, 1200, 0 );
setSeVolume( spep_2 + 20, 1200, 0 );
setSeVolume( spep_2 + 21, 1200, 34 );
setSeVolume( spep_2 + 22, 1200, 68 );
setSeVolume( spep_2 + 23, 1200, 102 );
setSeVolume( spep_2 + 24, 1200, 136 );
setSeVolume( spep_2 + 25, 1200, 170 );
playSe( spep_2 + 2, 1182 );--カメラズーム
setSeVolume( spep_2 + 2, 1182, 0 );
setSeVolume( spep_2 + 6, 1182, 0);
setSeVolume( spep_2 + 7, 1182, 16.67 );
setSeVolume( spep_2 + 8, 1182, 33.33 );
setSeVolume( spep_2 + 9, 1182, 50 );
setSeVolume( spep_2 + 10, 1182, 66.67 );
setSeVolume( spep_2 + 11, 1182, 83.33 );
setSeVolume( spep_2 + 12, 1182, 100 );
playSe( spep_2 + 10, 1241 );--気弾溜め音
setSeVolume( spep_2 + 10, 1241, 65 );
playSe( spep_2 + 10, 1199 );--気弾溜め音
setSeVolume( spep_2 + 10, 1199, 52 );
se_1157 = playSe( spep_2 + 54, 1157 );--手を前に
se_1167 = playSe( spep_2 + 54, 1167 );--手を前に
setSeVolume( spep_2 + 54, 1167, 48 );
setSeVolume( spep_2 + 84, 1167,48);
setSeVolume( spep_2 + 85, 1167,46.4);
setSeVolume( spep_2 + 86, 1167,44.8);
setSeVolume( spep_2 + 87, 1167,43.2);
setSeVolume( spep_2 + 88, 1167,41.6);
setSeVolume( spep_2 + 89, 1167,40);
setSeVolume( spep_2 + 90, 1167,38.4);
setSeVolume( spep_2 + 91, 1167,36.8);
setSeVolume( spep_2 + 92, 1167,35.2);
setSeVolume( spep_2 + 93, 1167,33.6);
setSeVolume( spep_2 + 94, 1167,32);
setSeVolume( spep_2 + 95, 1167,30.4);
setSeVolume( spep_2 + 96, 1167,28.8);
setSeVolume( spep_2 + 97, 1167,27.2);
setSeVolume( spep_2 + 98, 1167,25.6);
setSeVolume( spep_2 + 99, 1167,24);
setSeVolume( spep_2 + 100, 1167,22.4);
setSeVolume( spep_2 + 101, 1167,20.8);
setSeVolume( spep_2 + 102, 1167,19.2);
setSeVolume( spep_2 + 103, 1167,17.6);
setSeVolume( spep_2 + 104, 1167,16);
setSeVolume( spep_2 + 105, 1167,14.4);
setSeVolume( spep_2 + 106, 1167,12.8);
setSeVolume( spep_2 + 107, 1167,11.2);
setSeVolume( spep_2 + 108, 1167,9.59);
setSeVolume( spep_2 + 109, 1167,7.99);
setSeVolume( spep_2 + 110, 1167,6.39);
setSeVolume( spep_2 + 111, 1167,4.79);
setSeVolume( spep_2 + 112, 1167,0);
playSe( spep_2 + 56, 1004 );--手を前に
se_1122 = playSe( spep_2 + 58, 1122 );--手を前に
setSeVolume( spep_2 + 58, 1122, 79 );
setSeVolume( spep_2 + 92, 1122,79);
setSeVolume( spep_2 + 93, 1122,76.5);
setSeVolume( spep_2 + 94, 1122,74);
setSeVolume( spep_2 + 95, 1122,71.5);
setSeVolume( spep_2 + 96, 1122,69);
setSeVolume( spep_2 + 97, 1122,66.5);
setSeVolume( spep_2 + 98, 1122,64);
setSeVolume( spep_2 + 99, 1122,61.5);
setSeVolume( spep_2 + 100, 1122,59);
setSeVolume( spep_2 + 101, 1122,56.5);
setSeVolume( spep_2 + 102, 1122,54);
setSeVolume( spep_2 + 103, 1122,51.5);
setSeVolume( spep_2 + 104, 1122,49);
setSeVolume( spep_2 + 105, 1122,46.5);
setSeVolume( spep_2 + 106, 1122,44);
setSeVolume( spep_2 + 107, 1122,41.5);
setSeVolume( spep_2 + 108, 1122,39);
setSeVolume( spep_2 + 109, 1122,36.5);
setSeVolume( spep_2 + 110, 1122,34);
setSeVolume( spep_2 + 111, 1122,31.5);
setSeVolume( spep_2 + 112, 1122,29);
setSeVolume( spep_2 + 113, 1122,26.5);
setSeVolume( spep_2 + 114, 1122,24);
setSeVolume( spep_2 + 115, 1122,21.5);
setSeVolume( spep_2 + 116, 1122,19);
setSeVolume( spep_2 + 117, 1122,16.5);
setSeVolume( spep_2 + 118, 1122,14);
setSeVolume( spep_2 + 119, 1122,11.5);
setSeVolume( spep_2 + 120, 1122,9);
setSeVolume( spep_2 + 121, 1122,6.5);
setSeVolume( spep_2 + 122, 1122,4);
setSeVolume( spep_2 + 123, 1122,1.5);
setSeVolume( spep_2 + 124, 1122,0);
se_1212 = playSe( spep_2 + 88, 1212 );--気弾発射
setSeVolume( spep_2 + 88, 1212, 0 );
setSeVolume( spep_2 + 170, 1212, 0);
setSeVolume( spep_2 + 171, 1212, 4.9 );
setSeVolume( spep_2 + 172, 1212, 9.8 );
setSeVolume( spep_2 + 173, 1212, 14.7 );
setSeVolume( spep_2 + 174, 1212, 19.6 );
setSeVolume( spep_2 + 175, 1212, 24.5 );
setSeVolume( spep_2 + 176, 1212, 29.4 );
setSeVolume( spep_2 + 177, 1212, 34.3 );
setSeVolume( spep_2 + 178, 1212, 39.2 );
setSeVolume( spep_2 + 179, 1212, 44.1 );
setSeVolume( spep_2 + 180, 1212, 49 );
setSeVolume( spep_2 + 230, 1212,49);
setSeVolume( spep_2 + 231, 1212,47.4);
setSeVolume( spep_2 + 232, 1212,45.8);
setSeVolume( spep_2 + 233, 1212,44.2);
setSeVolume( spep_2 + 234, 1212,42.6);
setSeVolume( spep_2 + 235, 1212,41);
setSeVolume( spep_2 + 236, 1212,39.4);
setSeVolume( spep_2 + 237, 1212,37.8);
setSeVolume( spep_2 + 238, 1212,36.2);
setSeVolume( spep_2 + 239, 1212,34.6);
setSeVolume( spep_2 + 240, 1212,33);
setSeVolume( spep_2 + 241, 1212,31.4);
setSeVolume( spep_2 + 242, 1212,29.8);
setSeVolume( spep_2 + 243, 1212,28.2);
setSeVolume( spep_2 + 244, 1212,26.6);
setSeVolume( spep_2 + 245, 1212,25);
setSeVolume( spep_2 + 246, 1212,23.4);
setSeVolume( spep_2 + 247, 1212,21.8);
setSeVolume( spep_2 + 248, 1212,20.2);
setSeVolume( spep_2 + 249, 1212,18.6);
setSeVolume( spep_2 + 250, 1212,17);
setSeVolume( spep_2 + 251, 1212,15.4);
setSeVolume( spep_2 + 252, 1212,13.8);
setSeVolume( spep_2 + 253, 1212,12.2);
setSeVolume( spep_2 + 254, 1212,10.6);
setSeVolume( spep_2 + 255, 1212,8.99);
setSeVolume( spep_2 + 256, 1212,7.39);
setSeVolume( spep_2 + 257, 1212,5.79);
setSeVolume( spep_2 + 258, 1212,4.19);
setSeVolume( spep_2 + 259, 1212,2.59);
setSeVolume( spep_2 + 260, 1212,0.99);
setSeVolume( spep_2 + 261, 1212,0);
SE2=playSe( spep_2 + 100, 1258 );--気弾発射
setSeVolume( spep_2 + 100, 1258, 56 );
playSe( spep_2 + 104, 1027 );--気弾発射
setSeVolume( spep_2 + 104, 1027, 77 );
playSe( spep_2 + 104, 1021 );--気弾発射
setSeVolume( spep_2 + 104, 1021, 80 );
se_1213 = playSe( spep_2 + 104, 1213 );--気弾発射
setSeVolume( spep_2 + 104, 1213, 0 );
setSeVolume( spep_2 + 105, 1213, 2 );
setSeVolume( spep_2 + 106, 1213, 4 );
setSeVolume( spep_2 + 107, 1213, 6 );
setSeVolume( spep_2 + 108, 1213, 8 );
setSeVolume( spep_2 + 109, 1213, 10 );
setSeVolume( spep_2 + 110, 1213, 12 );
setSeVolume( spep_2 + 111, 1213, 14 );
setSeVolume( spep_2 + 112, 1213, 16 );
setSeVolume( spep_2 + 113, 1213, 18 );
setSeVolume( spep_2 + 114, 1213, 20 );
setSeVolume( spep_2 + 115, 1213, 22 );
setSeVolume( spep_2 + 116, 1213, 24 );
setSeVolume( spep_2 + 117, 1213, 26 );
setSeVolume( spep_2 + 118, 1213, 28 );
setSeVolume( spep_2 + 119, 1213, 30 );
setSeVolume( spep_2 + 120, 1213, 32 );
setSeVolume( spep_2 + 121, 1213, 34 );
setSeVolume( spep_2 + 122, 1213, 36 );
setSeVolume( spep_2 + 123, 1213, 38 );
setSeVolume( spep_2 + 124, 1213, 40 );
setSeVolume( spep_2 + 125, 1213, 42 );
setSeVolume( spep_2 + 126, 1213, 44 );
setSeVolume( spep_2 + 127, 1213, 46 );
setSeVolume( spep_2 + 128, 1213, 48 );
setSeVolume( spep_2 + 129, 1213, 50 );
se_1121 = playSe( spep_2 + 124, 1121 );--気弾発射
setSeVolume( spep_2 + 124, 1121, 44 );
setSeVolume( spep_2 + 225, 1121,44);
setSeVolume( spep_2 + 226, 1121,42.8);
setSeVolume( spep_2 + 227, 1121,41.6);
setSeVolume( spep_2 + 228, 1121,40.4);
setSeVolume( spep_2 + 229, 1121,39.2);
setSeVolume( spep_2 + 230, 1121,38);
setSeVolume( spep_2 + 231, 1121,36.8);
setSeVolume( spep_2 + 232, 1121,35.6);
setSeVolume( spep_2 + 233, 1121,34.4);
setSeVolume( spep_2 + 234, 1121,33.2);
setSeVolume( spep_2 + 235, 1121,32);
setSeVolume( spep_2 + 236, 1121,30.8);
setSeVolume( spep_2 + 237, 1121,29.6);
setSeVolume( spep_2 + 238, 1121,28.4);
setSeVolume( spep_2 + 239, 1121,27.2);
setSeVolume( spep_2 + 240, 1121,26);
setSeVolume( spep_2 + 241, 1121,24.8);
setSeVolume( spep_2 + 242, 1121,23.6);
setSeVolume( spep_2 + 243, 1121,22.4);
setSeVolume( spep_2 + 244, 1121,21.2);
setSeVolume( spep_2 + 245, 1121,20);
setSeVolume( spep_2 + 246, 1121,18.8);
setSeVolume( spep_2 + 247, 1121,17.6);
setSeVolume( spep_2 + 248, 1121,16.4);
setSeVolume( spep_2 + 249, 1121,15.2);
setSeVolume( spep_2 + 250, 1121,14);
setSeVolume( spep_2 + 251, 1121,12.8);
setSeVolume( spep_2 + 252, 1121,11.6);
setSeVolume( spep_2 + 253, 1121,10.4);
setSeVolume( spep_2 + 254, 1121,9.19);
setSeVolume( spep_2 + 255, 1121,7.99);
setSeVolume( spep_2 + 256, 1121,6.79);
setSeVolume( spep_2 + 257, 1121,5.59);
setSeVolume( spep_2 + 258, 1121,4.39);
setSeVolume( spep_2 + 259, 1121,3.19);
setSeVolume( spep_2 + 260, 1121,0);

SE3=playSe( spep_2 + 204, 1172 );--地面をえぐる
setSeVolume( spep_2 + 204, 1172, 0 );
setSeVolume( spep_2 + 222, 1172, 0 );
setSeVolume( spep_2 + 223, 1172, 17.33 );
setSeVolume( spep_2 + 224, 1172, 34.67 );
setSeVolume( spep_2 + 225, 1172, 52 );

SE4=playSe( spep_2 + 218, 1017 );--地面をえぐる
setSeVolume( spep_2 + 218, 1017, 68 );

se_1022 = playSe( spep_2 + 224, 1022 );--地面をえぐる

SE5=playSe( spep_2 + 224, 1011 );--地面をえぐる
setSeVolume( spep_2 + 224, 1011, 69 );

SE6=playSe( spep_2 + 228, 1033 );--地面をえぐる
setSeVolume( spep_2 + 228, 1033, 79 );



playSe( spep_2 + 278, 1023 );--ラスト連続爆発
setSeVolume( spep_2 + 278, 1023, 79 );
playSe( spep_2 + 278, 1159 );--ラスト連続爆発
setSeVolume( spep_2 + 278, 1159, 83 );
playSe( spep_2 + 288, 1159 );--ラスト連続爆発
setSeVolume( spep_2 + 288, 1159, 62 );
playSe( spep_2 + 288, 1023 );--ラスト連続爆発
setSeVolume( spep_2 + 288, 1023, 65 );
playSe( spep_2 + 296, 1159 );--ラスト連続爆発
setSeVolume( spep_2 + 296, 1159, 43 );
playSe( spep_2 + 296, 1023 );--ラスト連続爆発
setSeVolume( spep_2 + 296, 1023, 48 );
playSe( spep_2 + 304, 1159 );--ラスト連続爆発
setSeVolume( spep_2 + 304, 1159, 55 );
playSe( spep_2 + 304, 1023 );--ラスト連続爆発
setSeVolume( spep_2 + 304, 1023, 54 );


stopSe( spep_2 + 21, se_1116, 13 );
stopSe( spep_2 + 26, se_0009, 54 );
stopSe( spep_2 + 110, se_1200, 0 );
stopSe( spep_2 + 108, se_1157, 22 );
stopSe( spep_2 + 112, se_1167, 0 );
stopSe( spep_2 + 124, se_1122, 0 );
stopSe( spep_2 + 261, se_1212, 0 );
stopSe( spep_2 + 244, se_1213, 0 );
stopSe( spep_2 + 260, se_1121, 0 );
stopSe( spep_2 + 260, se_1022, 16 );

stopSe( spep_2 + 276, SE2, 0 );
stopSe( spep_2 + 276, SE3, 0 );
stopSe( spep_2 + 276, SE4, 0 );
stopSe( spep_2 + 276, SE5, 0 );
stopSe( spep_2 + 276, SE6, 0 );


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 280 );
endPhase( spep_2 + 390 );
end