--超魔人ブウ(純粋悪)_ギルティフラッシュ

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
SP_01 = 155428;  --反り返り〜ラッシュ
SP_02 = 155429;  --反り返り〜ラッシュ
SP_03 = 155430;  --キック〜敵画面奥へ飛ぶ
SP_04 = 155431;  --キック〜敵画面奥へ飛ぶ
SP_05 = 155432;  --手をかざす〜マントがはためく

--敵側
SP_05x = 155433;  --手をかざす〜マントがはためく

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

if( _IS_EXTRA_ATTACK_ == 0 ) then
 adjustAttackerLabel( 0, 205);
end

changeAnime( 0, 0, 0);
--changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
--setDisp( 0, 1, 0);

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

--[[setMoveKey(   0,   1,    0, -5000,   0);
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
setRotateKey( 6,   1,  0 );]]

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 反り返り〜ラッシュ(298F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 298, 0x100, -1, 0, 0, 0 );  --反り返り〜ラッシュ(ef_001)
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 298, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 298, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 298, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 297, first_f, 255 );
setEffAlphaKey( spep_0 + 298, first_f, 0 );

first_b = entryEffectLife( spep_0 + 0, SP_02, 298, 0x80, -1, 0, 0, 0 );  --反り返り〜ラッシュ(ef_002)
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 298, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 298, first_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 298, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 297, first_b, 255 );
setEffAlphaKey( spep_0 + 298, first_b, 0 );

-- ** 書き文字エントリー ** --
ctsyun = entryEffectLife( spep_0 -3 + 70,  10011, 8, 0x100, -1, 0, -116.8, 354.2 );  --シュン
setEffMoveKey( spep_0 -3 + 70, ctsyun, -116.8, 354.2 , 0 );
setEffMoveKey( spep_0 -3 + 72, ctsyun, -94.4, 360.9 , 0 );
setEffMoveKey( spep_0 -3 + 74, ctsyun, -86, 363.4 , 0 );
setEffMoveKey( spep_0 -3 + 76, ctsyun, -84.1, 364 , 0 );
setEffMoveKey( spep_0 -3 + 78, ctsyun, -84, 364 , 0 );

setEffScaleKey( spep_0 -3 + 70, ctsyun, 1.83, 1.83 );
setEffScaleKey( spep_0 -3 + 72, ctsyun, 2.22, 2.22 );
setEffScaleKey( spep_0 -3 + 74, ctsyun, 2.36, 2.36 );
setEffScaleKey( spep_0 -3 + 76, ctsyun, 2.4, 2.4 );
setEffScaleKey( spep_0 -3 + 78, ctsyun, 2.4, 2.4 );

setEffRotateKey( spep_0 -3 + 70, ctsyun, 0 );
setEffRotateKey( spep_0 -3 + 78, ctsyun, 0 );

setEffAlphaKey( spep_0 -3 + 70, ctsyun, 151 );
setEffAlphaKey( spep_0 -3 + 72, ctsyun, 222 );
setEffAlphaKey( spep_0 -3 + 74, ctsyun, 248 );
setEffAlphaKey( spep_0 -3 + 76, ctsyun, 255 );
setEffAlphaKey( spep_0 -3 + 78, ctsyun, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 -3 + 74, 1, 0 );
changeAnime( spep_0 + 0, 1, 100 );

setMoveKey( spep_0 + 0, 1, 276, -194 , 0 );
setMoveKey( spep_0 + 1, 1, 276, -194 , 0 );
setMoveKey( spep_0 + 2, 1, 276, -194 , 0 );
setMoveKey( spep_0 + 3, 1, 276, -194 , 0 );
setMoveKey( spep_0 + 4, 1, 276, -194 , 0 );
setMoveKey( spep_0 + 5, 1, 276, -194 , 0 );
setMoveKey( spep_0 + 6, 1, 276, -194 , 0 );
setMoveKey( spep_0 -3 + 74, 1, 276, -194 , 0 );

setScaleKey( spep_0 + 0, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 1, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 3, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 4, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 5, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 6, 1, 0.35, 0.35 );
setScaleKey( spep_0 -3 + 74, 1, 0.35, 0.35 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0 -3 + 74, 1, 0 );

-- ** 背景 ** --
entryFadeBg( spep_0 + 0, 0, 300, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--首ポキ
playSe( spep_0 + 14, 1151 );

--瞬間移動
playSe( spep_0 + 46, 1109 );

--仰向けダッシュ
SE0 = playSe( spep_0 + 74, 1182 );
SE1 = playSe( spep_0 + 74, 1183 );
SE2 = playSe( spep_0 + 74, 9 );
SE3 = playSe( spep_0 + 82, 1072 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 98; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe( SP_dodge - 12, SE0, 0 );
stopSe( SP_dodge - 12, SE1, 0 );
stopSe( SP_dodge - 12, SE2, 0 );
stopSe( SP_dodge - 12, SE3, 0 );

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
ctgaga = entryEffectLife( spep_0 -3 + 222,  10002, 78, 0x100, -1, 0, 63.6, 222.3 );  --ガガガ
setEffMoveKey( spep_0 -3 + 222, ctgaga, 63.6, 222.3 , 0 );
setEffMoveKey( spep_0 -3 + 224, ctgaga, 60.1, 256 , 0 );
setEffMoveKey( spep_0 -3 + 226, ctgaga, 67, 264.6 , 0 );
setEffMoveKey( spep_0 -3 + 228, ctgaga, 57.5, 245.9 , 0 );
setEffMoveKey( spep_0 -3 + 230, ctgaga, 51.7, 260.4 , 0 );
setEffMoveKey( spep_0 -3 + 232, ctgaga, 60.1, 256 , 0 );
setEffMoveKey( spep_0 -3 + 234, ctgaga, 67, 264.6 , 0 );
setEffMoveKey( spep_0 -3 + 236, ctgaga, 57.5, 245.9 , 0 );
setEffMoveKey( spep_0 -3 + 238, ctgaga, 51.7, 260.4 , 0 );
setEffMoveKey( spep_0 -3 + 240, ctgaga, 60.1, 256 , 0 );
setEffMoveKey( spep_0 -3 + 242, ctgaga, 67, 264.6 , 0 );
setEffMoveKey( spep_0 -3 + 244, ctgaga, 57.5, 245.9 , 0 );
setEffMoveKey( spep_0 -3 + 246, ctgaga, 51.7, 260.4 , 0 );
setEffMoveKey( spep_0 -3 + 248, ctgaga, 60.1, 256 , 0 );
setEffMoveKey( spep_0 -3 + 250, ctgaga, 67, 264.6 , 0 );
setEffMoveKey( spep_0 -3 + 252, ctgaga, 57.5, 245.9 , 0 );
setEffMoveKey( spep_0 -3 + 254, ctgaga, 51.7, 260.4 , 0 );
setEffMoveKey( spep_0 -3 + 256, ctgaga, 60.1, 256 , 0 );
setEffMoveKey( spep_0 -3 + 258, ctgaga, 67, 264.6 , 0 );
setEffMoveKey( spep_0 -3 + 260, ctgaga, 57.5, 245.9 , 0 );
setEffMoveKey( spep_0 -3 + 262, ctgaga, 51.7, 260.4 , 0 );
setEffMoveKey( spep_0 -3 + 264, ctgaga, 60.1, 256 , 0 );
setEffMoveKey( spep_0 -3 + 266, ctgaga, 67, 264.6 , 0 );
setEffMoveKey( spep_0 -3 + 268, ctgaga, 57.5, 245.9 , 0 );
setEffMoveKey( spep_0 -3 + 270, ctgaga, 51.7, 260.4 , 0 );
setEffMoveKey( spep_0 -3 + 272, ctgaga, 60.1, 256 , 0 );
setEffMoveKey( spep_0 -3 + 274, ctgaga, 67, 264.6 , 0 );
setEffMoveKey( spep_0 -3 + 276, ctgaga, 57.5, 245.9 , 0 );
setEffMoveKey( spep_0 -3 + 278, ctgaga, 51.7, 260.4 , 0 );
setEffMoveKey( spep_0 -3 + 280, ctgaga, 60.1, 256 , 0 );
setEffMoveKey( spep_0 -3 + 282, ctgaga, 67, 264.6 , 0 );
setEffMoveKey( spep_0 -3 + 284, ctgaga, 57.5, 245.9 , 0 );
setEffMoveKey( spep_0 -3 + 286, ctgaga, 51.7, 260.4 , 0 );
setEffMoveKey( spep_0 -3 + 288, ctgaga, 60.1, 256 , 0 );
setEffMoveKey( spep_0 -3 + 290, ctgaga, 67, 264.6 , 0 );
setEffMoveKey( spep_0 -3 + 292, ctgaga, 57.5, 245.9 , 0 );
setEffMoveKey( spep_0 -3 + 294, ctgaga, 51.7, 260.4 , 0 );
setEffMoveKey( spep_0 -3 + 296, ctgaga, 60.1, 256 , 0 );
setEffMoveKey( spep_0 -3 + 298, ctgaga, 67, 264.6 , 0 );
setEffMoveKey( spep_0 -3 + 300, ctgaga, 57.5, 245.9 , 0 );

setEffScaleKey( spep_0 -3 + 222, ctgaga, 2.13, 2.13 );
setEffScaleKey( spep_0 -3 + 224, ctgaga, 3.25, 3.25 );
setEffScaleKey( spep_0 -3 + 300, ctgaga, 3.25, 3.25 );

setEffRotateKey( spep_0 -3 + 222, ctgaga, 10 );
setEffRotateKey( spep_0 -3 + 224, ctgaga, 20 );
setEffRotateKey( spep_0 -3 + 300, ctgaga, 20 );

setEffAlphaKey( spep_0 -3 + 222, ctgaga, 128 );
setEffAlphaKey( spep_0 -3 + 224, ctgaga, 255 );
setEffAlphaKey( spep_0 -3 + 300, ctgaga, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_0 -3 + 140, 1, 1 );
setDisp( spep_0 -3 + 301, 1, 0 );
changeAnime( spep_0 -3 + 140, 1, 101 );
changeAnime( spep_0 -3 + 156, 1, 104 );
changeAnime( spep_0 -3 + 206, 1, 108 );
changeAnime( spep_0 -3 + 214, 1, 106 );
changeAnime( spep_0 -3 + 230, 1, 108 );
changeAnime( spep_0 -3 + 246, 1, 106 );
changeAnime( spep_0 -3 + 260, 1, 108 );
changeAnime( spep_0 -3 + 278, 1, 106 );
changeAnime( spep_0 -3 + 294, 1, 108 );

setMoveKey( spep_0 -3 + 140, 1, 586.9, -24.1 , 0 );
setMoveKey( spep_0 -3 + 142, 1, 419.6, -26.8 , 0 );
setMoveKey( spep_0 -3 + 144, 1, 278.2, -12.6 , 0 );
setMoveKey( spep_0 -3 + 146, 1, 157.6, -16.7 , 0 );
setMoveKey( spep_0 -3 + 148, 1, 146.2, -5.2 , 0 );
setMoveKey( spep_0 -3 + 150, 1, 168.3, -42.3 , 0 );
setMoveKey( spep_0 -3 + 152, 1, 142.6, -35.6 , 0 );
setMoveKey( spep_0 -3 + 154, 1, 133.4, -29 , 0 );
setMoveKey( spep_0 -3 + 155, 1, 133.4, -29 , 0 );
setMoveKey( spep_0 -3 + 156, 1, 146, -31.6 , 0 );
setMoveKey( spep_0 -3 + 158, 1, 152.3, -32.4 , 0 );
setMoveKey( spep_0 -3 + 160, 1, 130.5, -16.7 , 0 );
setMoveKey( spep_0 -3 + 162, 1, 113.8, -11.9 , 0 );
setMoveKey( spep_0 -3 + 164, 1, 126.4, -26.7 , 0 );
setMoveKey( spep_0 -3 + 166, 1, 129.4, -39.5 , 0 );
setMoveKey( spep_0 -3 + 168, 1, 118.7, -17.5 , 0 );
setMoveKey( spep_0 -3 + 170, 1, 125.2, -24.8 , 0 );
setMoveKey( spep_0 -3 + 172, 1, 117.8, -20.7 , 0 );
setMoveKey( spep_0 -3 + 174, 1, 125.1, -27.8 , 0 );
setMoveKey( spep_0 -3 + 176, 1, 126.7, -30 , 0 );
setMoveKey( spep_0 -3 + 178, 1, 121.4, -21.7 , 0 );
setMoveKey( spep_0 -3 + 180, 1, 126, -28.8 , 0 );
setMoveKey( spep_0 -3 + 182, 1, 125.7, -28 , 0 );
setMoveKey( spep_0 -3 + 184, 1, 124.2, -29.6 , 0 );
setMoveKey( spep_0 -3 + 186, 1, 126.4, -30.5 , 0 );
setMoveKey( spep_0 -3 + 188, 1, 127.9, -30.2 , 0 );
setMoveKey( spep_0 -3 + 190, 1, 126, -27.9 , 0 );
setMoveKey( spep_0 -3 + 200, 1, 126, -27.9 , 0 );
setMoveKey( spep_0 -3 + 202, 1, 127.9, -33.3 , 0 );
setMoveKey( spep_0 -3 + 204, 1, 120.7, -25.1 , 0 );
setMoveKey( spep_0 -3 + 205, 1, 120.7, -25.1 , 0 );
setMoveKey( spep_0 -3 + 206, 1, 126.5, -5.5 , 0 );
setMoveKey( spep_0 -3 + 208, 1, 151.8, -24.7 , 0 );
setMoveKey( spep_0 -3 + 210, 1, 151.8, -29.3 , 0 );
setMoveKey( spep_0 -3 + 212, 1, 160, -31.6 , 0 );
setMoveKey( spep_0 -3 + 213, 1, 160, -31.6 , 0 );
setMoveKey( spep_0 -3 + 214, 1, 84.6, 2.4 , 0 );
setMoveKey( spep_0 -3 + 216, 1, 91.9, 17.5 , 0 );
setMoveKey( spep_0 -3 + 218, 1, 96.1, 29.2 , 0 );
setMoveKey( spep_0 -3 + 220, 1, 104.5, 19 , 0 );
setMoveKey( spep_0 -3 + 222, 1, 101.2, 33.7 , 0 );
setMoveKey( spep_0 -3 + 224, 1, 101.7, 34.1 , 0 );
setMoveKey( spep_0 -3 + 226, 1, 102.2, 28.9 , 0 );
setMoveKey( spep_0 -3 + 228, 1, 110.8, 23.1 , 0 );
setMoveKey( spep_0 -3 + 229, 1, 110.8, 23.1 , 0 );
setMoveKey( spep_0 -3 + 230, 1, 153.4, -49.9 , 0 );
setMoveKey( spep_0 -3 + 232, 1, 160.3, -45.6 , 0 );
setMoveKey( spep_0 -3 + 234, 1, 168.5, -33.7 , 0 );
setMoveKey( spep_0 -3 + 236, 1, 179.8, -33.7 , 0 );
setMoveKey( spep_0 -3 + 238, 1, 175.2, -35.7 , 0 );
setMoveKey( spep_0 -3 + 240, 1, 171.7, -34.2 , 0 );
setMoveKey( spep_0 -3 + 242, 1, 179.2, -30.6 , 0 );
setMoveKey( spep_0 -3 + 244, 1, 188.2, -36.1 , 0 );
setMoveKey( spep_0 -3 + 245, 1, 188.2, -36.1 , 0 );
setMoveKey( spep_0 -3 + 246, 1, 159.4, 55.1 , 0 );
setMoveKey( spep_0 -3 + 248, 1, 165.9, 40.9 , 0 );
setMoveKey( spep_0 -3 + 250, 1, 184.1, 41.9 , 0 );
setMoveKey( spep_0 -3 + 252, 1, 175, 41.1 , 0 );
setMoveKey( spep_0 -3 + 254, 1, 177.6, 42.9 , 0 );
setMoveKey( spep_0 -3 + 256, 1, 181.7, 45.7 , 0 );
setMoveKey( spep_0 -3 + 258, 1, 175.9, 51.4 , 0 );
setMoveKey( spep_0 -3 + 259, 1, 175.9, 51.4 , 0 );
setMoveKey( spep_0 -3 + 260, 1, 182.4, -10.2 , 0 );
setMoveKey( spep_0 -3 + 262, 1, 184.9, -12 , 0 );
setMoveKey( spep_0 -3 + 264, 1, 192.3, -9.7 , 0 );
setMoveKey( spep_0 -3 + 266, 1, 192.2, -21.7 , 0 );
setMoveKey( spep_0 -3 + 268, 1, 191.5, -11.7 , 0 );
setMoveKey( spep_0 -3 + 270, 1, 197.1, -14.5 , 0 );
setMoveKey( spep_0 -3 + 272, 1, 192.6, -28.8 , 0 );
setMoveKey( spep_0 -3 + 274, 1, 193.7, -22 , 0 );
setMoveKey( spep_0 -3 + 276, 1, 191.6, -19.8 , 0 );
setMoveKey( spep_0 -3 + 277, 1, 191.6, -19.8 , 0 );
setMoveKey( spep_0 -3 + 278, 1, 168.2, 44.6 , 0 );
setMoveKey( spep_0 -3 + 280, 1, 169.4, 42.2 , 0 );
setMoveKey( spep_0 -3 + 282, 1, 175.3, 42.7 , 0 );
setMoveKey( spep_0 -3 + 284, 1, 175.1, 53.7 , 0 );
setMoveKey( spep_0 -3 + 286, 1, 177.9, 48.1 , 0 );
setMoveKey( spep_0 -3 + 288, 1, 183.8, 47.9 , 0 );
setMoveKey( spep_0 -3 + 290, 1, 182.8, 45.5 , 0 );
setMoveKey( spep_0 -3 + 292, 1, 181.1, 46.6 , 0 );
setMoveKey( spep_0 -3 + 293, 1, 181.1, 46.6 , 0 );
setMoveKey( spep_0 -3 + 294, 1, 99.1, 18.5 , 0 );
setMoveKey( spep_0 -3 + 296, 1, 113.2, 32.6 , 0 );
setMoveKey( spep_0 -3 + 298, 1, 118.3, 37.8 , 0 );
setMoveKey( spep_0 -3 + 300, 1, 119.1, 38.5 , 0 );
setMoveKey( spep_0 -3 + 301, 1, 119.1, 38.5 , 0 );

setScaleKey( spep_0 -3 + 140, 1, 1.34, 1.34 );
setScaleKey( spep_0 -3 + 155, 1, 1.34, 1.34 );
setScaleKey( spep_0 -3 + 156, 1, 1.34, 1.34 );
setScaleKey( spep_0 -3 + 205, 1, 1.34, 1.34 );
setScaleKey( spep_0 -3 + 206, 1, 1.34, 1.34 );
setScaleKey( spep_0 -3 + 212, 1, 1.34, 1.34 );
setScaleKey( spep_0 -3 + 213, 1, 1.34, 1.34 );
setScaleKey( spep_0 -3 + 214, 1, 1.34, 1.34 );
setScaleKey( spep_0 -3 + 228, 1, 1.34, 1.34 );
setScaleKey( spep_0 -3 + 229, 1, 1.34, 1.34 );
setScaleKey( spep_0 -3 + 230, 1, 1.34, 1.34 );
setScaleKey( spep_0 -3 + 244, 1, 1.34, 1.34 );
setScaleKey( spep_0 -3 + 245, 1, 1.34, 1.34 );
setScaleKey( spep_0 -3 + 246, 1, 1.34, 1.34 );
setScaleKey( spep_0 -3 + 258, 1, 1.34, 1.34 );
setScaleKey( spep_0 -3 + 259, 1, 1.34, 1.34 );
setScaleKey( spep_0 -3 + 260, 1, 1.34, 1.34 );
setScaleKey( spep_0 -3 + 276, 1, 1.34, 1.34 );
setScaleKey( spep_0 -3 + 277, 1, 1.34, 1.34 );
setScaleKey( spep_0 -3 + 278, 1, 1.34, 1.34 );
setScaleKey( spep_0 -3 + 293, 1, 1.34, 1.34 );
setScaleKey( spep_0 -3 + 294, 1, 1.34, 1.34 );
setScaleKey( spep_0 -3 + 301, 1, 1.34, 1.34 );

setRotateKey( spep_0 -3 + 140, 1, 0 );
setRotateKey( spep_0 -3 + 155, 1, 0 );
setRotateKey( spep_0 -3 + 156, 1, 0 );
setRotateKey( spep_0 -3 + 205, 1, 0 );
setRotateKey( spep_0 -3 + 206, 1, 8.8 );
setRotateKey( spep_0 -3 + 212, 1, 8.8 );
setRotateKey( spep_0 -3 + 213, 1, 8.8 );
setRotateKey( spep_0 -3 + 214, 1, -10 );
setRotateKey( spep_0 -3 + 228, 1, -10 );
setRotateKey( spep_0 -3 + 229, 1, -10 );
setRotateKey( spep_0 -3 + 230, 1, 4.8 );
setRotateKey( spep_0 -3 + 244, 1, 4.8 );
setRotateKey( spep_0 -3 + 245, 1, 4.8 );
setRotateKey( spep_0 -3 + 246, 1, -16.4 );
setRotateKey( spep_0 -3 + 248, 1, -14.3 );
setRotateKey( spep_0 -3 + 250, 1, -12.9 );
setRotateKey( spep_0 -3 + 252, 1, -12 );
setRotateKey( spep_0 -3 + 254, 1, -11.6 );
setRotateKey( spep_0 -3 + 256, 1, -11.4 );
setRotateKey( spep_0 -3 + 258, 1, -11.4 );
setRotateKey( spep_0 -3 + 259, 1, -11.4 );
setRotateKey( spep_0 -3 + 260, 1, 22.5 );
setRotateKey( spep_0 -3 + 276, 1, 22.5 );
setRotateKey( spep_0 -3 + 277, 1, 22.5 );
setRotateKey( spep_0 -3 + 278, 1, -16.4 );
setRotateKey( spep_0 -3 + 280, 1, -14.3 );
setRotateKey( spep_0 -3 + 282, 1, -12.8 );
setRotateKey( spep_0 -3 + 284, 1, -11.8 );
setRotateKey( spep_0 -3 + 286, 1, -11.1 );
setRotateKey( spep_0 -3 + 288, 1, -10.8 );
setRotateKey( spep_0 -3 + 290, 1, -10.7 );
setRotateKey( spep_0 -3 + 293, 1, -10.7 );
setRotateKey( spep_0 -3 + 294, 1, -12.6 );
setRotateKey( spep_0 -3 + 301, 1, -12.6 );

-- ** 音 ** --
--仰向けダッシュ
stopSe( spep_0 + 161, SE1, 0 );
stopSe( spep_0 + 161, SE2, 0 );

--急に止まる
SE4 = playSe( spep_0 + 129, 1188 );
setSeVolume( spep_0 + 129, 1188, 0 );
setSeVolume( spep_0 + 148, 1188, 12 );
setSeVolume( spep_0 + 150, 1188, 33 );
setSeVolume( spep_0 + 152, 1188, 46 );
setSeVolume( spep_0 + 154, 1188, 52 );
setSeVolume( spep_0 + 156, 1188, 69 );
setSeVolume( spep_0 + 157, 1188, 86 );
setSeVolume( spep_0 + 171, 1188, 86 );
setSeVolume( spep_0 + 176, 1188, 80 );
setSeVolume( spep_0 + 180, 1188, 75 );
setSeVolume( spep_0 + 184, 1188, 69 );
setSeVolume( spep_0 + 188, 1188, 62 );
setSeVolume( spep_0 + 192, 1188, 53 );
setSeVolume( spep_0 + 196, 1188, 47 );
setSeVolume( spep_0 + 200, 1188, 35 );
setSeVolume( spep_0 + 204, 1188, 28 );
setSeVolume( spep_0 + 208, 1188, 19 );
setSeVolume( spep_0 + 210, 1188, 4 );
setSeVolume( spep_0 + 211, 1188, 0 );
stopSe( spep_0 + 211, SE4, 0 );

playSe( spep_0 + 149, 1232 );
setSeVolume( spep_0 + 149, 1232, 85 );

playSe( spep_0 + 149, 19 );

SE5 = playSe( spep_0 + 155, 1190 );
setSeVolume( spep_0 + 155, 1190, 5 );
setSeVolume( spep_0 + 158, 1190, 27 );
setSeVolume( spep_0 + 160, 1190, 41 );
setSeVolume( spep_0 + 162, 1190, 56 );
setSeVolume( spep_0 + 164, 1190, 68 );
setSeVolume( spep_0 + 166, 1190, 83 );
setSeVolume( spep_0 + 168, 1190, 100 );
stopSe( spep_0 + 177, SE5, 28 );

--ラッシュ
playSe( spep_0 + 199, 1189 );
playSe( spep_0 + 204, 1009 );
playSe( spep_0 + 207, 1110 );
playSe( spep_0 + 215, 1010 );
playSe( spep_0 + 218, 1110 );
playSe( spep_0 + 226, 1001 );
playSe( spep_0 + 231, 1110 );
setSeVolume( spep_0 + 231, 1110, 79 );
playSe( spep_0 + 241, 1009 );
playSe( spep_0 + 246, 1110 );
playSe( spep_0 + 256, 1009 );
playSe( spep_0 + 259, 1110 );
playSe( spep_0 + 268, 1001 );
setSeVolume( spep_0 + 268, 1001, 58 );
playSe( spep_0 + 272, 1009 );
playSe( spep_0 + 275, 1110 );
playSe( spep_0 + 287, 1009 );
playSe( spep_0 + 290, 1110 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 298;

------------------------------------------------------
-- キック〜敵画面奥へ飛ぶ(206F)
------------------------------------------------------

-- ** エフェクト等 ** --
kick_f = entryEffect( spep_1 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --キック〜敵画面奥へ飛ぶ(ef_003)
setEffMoveKey( spep_1 + 0, kick_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 206, kick_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, kick_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 206, kick_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, kick_f, 0 );
setEffRotateKey( spep_1 + 206, kick_f, 0 );
setEffAlphaKey( spep_1 + 0, kick_f, 255 );
setEffAlphaKey( spep_1 + 206, kick_f, 255 );

kick_b = entryEffect( spep_1 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --キック〜敵画面奥へ飛ぶ(ef_004)
setEffMoveKey( spep_1 + 0, kick_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 206, kick_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, kick_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 206, kick_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, kick_b, 0 );
setEffRotateKey( spep_1 + 206, kick_b, 0 );
setEffAlphaKey( spep_1 + 0, kick_b, 255 );
setEffAlphaKey( spep_1 + 206, kick_b, 255 );

spep_x = spep_1 + 120;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctzudo = entryEffectLife( spep_1 -3 + 70,  10014, 40, 0x100, -1, 0, 0, 195.8 );  --ズドド
setEffMoveKey( spep_1 -3 + 70, ctzudo, 0, 195.8 , 0 );
setEffMoveKey( spep_1 -3 + 72, ctzudo, 0, 181.1 , 0 );
setEffMoveKey( spep_1 -3 + 74, ctzudo, -11.2, 140.7 , 0 );
setEffMoveKey( spep_1 -3 + 76, ctzudo, 0, 134.8 , 0 );
setEffMoveKey( spep_1 -3 + 78, ctzudo, 0, 127.3 , 0 );
setEffMoveKey( spep_1 -3 + 80, ctzudo, -8.8, 99.8 , 0 );
setEffMoveKey( spep_1 -3 + 82, ctzudo, 0, 98.8 , 0 );
setEffMoveKey( spep_1 -3 + 84, ctzudo, 0, 96.6 , 0 );
setEffMoveKey( spep_1 -3 + 86, ctzudo, -7.4, 77.3 , 0 );
setEffMoveKey( spep_1 -3 + 88, ctzudo, 0, 79.9 , 0 );
setEffMoveKey( spep_1 -3 + 90, ctzudo, 0, 81.2 , 0 );
setEffMoveKey( spep_1 -3 + 92, ctzudo, -6.8, 66.6 , 0 );
setEffMoveKey( spep_1 -3 + 94, ctzudo, 0.1, 71.5 , 0 );
setEffMoveKey( spep_1 -3 + 96, ctzudo, 0, 74.9 , 0 );
setEffMoveKey( spep_1 -3 + 98, ctzudo, -6.6, 62.6 , 0 );
setEffMoveKey( spep_1 -3 + 100, ctzudo, 0.1, 68.7 , 0 );
setEffMoveKey( spep_1 -3 + 102, ctzudo, 0, 73.2 , 0 );
setEffMoveKey( spep_1 -3 + 104, ctzudo, -6.5, 61.7 , 0 );
setEffMoveKey( spep_1 -3 + 106, ctzudo, 0.1, 68.2 , 0 );
setEffMoveKey( spep_1 -3 + 108, ctzudo, 0, 73 , 0 );
setEffMoveKey( spep_1 -3 + 110, ctzudo, -6.5, 61.7 , 0 );

setEffScaleKey( spep_1 -3 + 70, ctzudo, 3.02, 3.02 );
setEffScaleKey( spep_1 -3 + 72, ctzudo, 2.73, 2.73 );
setEffScaleKey( spep_1 -3 + 74, ctzudo, 2.48, 2.48 );
setEffScaleKey( spep_1 -3 + 76, ctzudo, 2.27, 2.27 );
setEffScaleKey( spep_1 -3 + 78, ctzudo, 2.09, 2.09 );
setEffScaleKey( spep_1 -3 + 80, ctzudo, 1.95, 1.95 );
setEffScaleKey( spep_1 -3 + 82, ctzudo, 1.83, 1.83 );
setEffScaleKey( spep_1 -3 + 84, ctzudo, 1.73, 1.73 );
setEffScaleKey( spep_1 -3 + 86, ctzudo, 1.65, 1.65 );
setEffScaleKey( spep_1 -3 + 88, ctzudo, 1.59, 1.59 );
setEffScaleKey( spep_1 -3 + 90, ctzudo, 1.55, 1.55 );
setEffScaleKey( spep_1 -3 + 92, ctzudo, 1.51, 1.51 );
setEffScaleKey( spep_1 -3 + 94, ctzudo, 1.49, 1.49 );
setEffScaleKey( spep_1 -3 + 96, ctzudo, 1.47, 1.47 );
setEffScaleKey( spep_1 -3 + 98, ctzudo, 1.46, 1.46 );
setEffScaleKey( spep_1 -3 + 100, ctzudo, 1.46, 1.46 );
setEffScaleKey( spep_1 -3 + 102, ctzudo, 1.45, 1.45 );
setEffScaleKey( spep_1 -3 + 110, ctzudo, 1.45, 1.45 );

setEffRotateKey( spep_1 -3 + 70, ctzudo, 58.7 );
setEffRotateKey( spep_1 -3 + 110, ctzudo, 58.7 );

setEffAlphaKey( spep_1 -3 + 70, ctzudo, 255 );
setEffAlphaKey( spep_1 -3 + 110, ctzudo, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_1 -3 + 60, 1, 1 );
setDisp( spep_1 -3 + 130, 1, 0 );
changeAnime( spep_1 -3 + 60, 1, 105 );
changeAnime( spep_1 -3 + 66, 1, 5 );

setMoveKey( spep_1 -3 + 60, 1, 52.5, -21.8 , 0 );
setMoveKey( spep_1 -3 + 62, 1, -5.7, -247.8 , 0 );
setMoveKey( spep_1 -3 + 64, 1, -0.5, -200.5 , 0 );
setMoveKey( spep_1 -3 + 65, 1, -0.5, -200.5 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 0.9, -182.1 , 0 );
setMoveKey( spep_1 -3 + 68, 1, -4.9, -223.7 , 0 );
setMoveKey( spep_1 -3 + 70, 1, 33, -177.1 , 0 );
setMoveKey( spep_1 -3 + 72, 1, 0.2, -180.7 , 0 );
setMoveKey( spep_1 -3 + 74, 1, -18.5, -182.9 , 0 );
setMoveKey( spep_1 -3 + 76, 1, 6.3, -172.9 , 0 );
setMoveKey( spep_1 -3 + 78, 1, -9.7, -198.6 , 0 );
setMoveKey( spep_1 -3 + 80, 1, -1.2, -164.9 , 0 );
setMoveKey( spep_1 -3 + 82, 1, 10.2, -142.5 , 0 );
setMoveKey( spep_1 -3 + 84, 1, -11.1, -162.1 , 0 );
setMoveKey( spep_1 -3 + 86, 1, 17.6, -161.9 , 0 );
setMoveKey( spep_1 -3 + 88, 1, -7.9, -169.7 , 0 );
setMoveKey( spep_1 -3 + 90, 1, -22.8, -161 , 0 );
setMoveKey( spep_1 -3 + 92, 1, 12.3, -175.1 , 0 );
setMoveKey( spep_1 -3 + 94, 1, -0.3, -155.9 , 0 );
setMoveKey( spep_1 -3 + 96, 1, 3.4, -154.4 , 0 );
setMoveKey( spep_1 -3 + 98, 1, 1.7, -165 , 0 );
setMoveKey( spep_1 -3 + 100, 1, 0.4, -159 , 0 );
setMoveKey( spep_1 -3 + 102, 1, -4.5, -157.6 , 0 );
setMoveKey( spep_1 -3 + 104, 1, 3.1, -158.7 , 0 );
setMoveKey( spep_1 -3 + 106, 1, 6.3, -154.9 , 0 );
setMoveKey( spep_1 -3 + 108, 1, -1.1, -153 , 0 );
setMoveKey( spep_1 -3 + 110, 1, 1, -156.2 , 0 );
setMoveKey( spep_1 -3 + 112, 1, 7, -153.2 , 0 );
setMoveKey( spep_1 -3 + 114, 1, 1.8, -149.4 , 0 );
setMoveKey( spep_1 -3 + 116, 1, 3.6, -148.3 , 0 );
setMoveKey( spep_1 -3 + 118, 1, 3.2, -150.9 , 0 );
setMoveKey( spep_1 -3 + 120, 1, 2, -150.1 , 0 );
setMoveKey( spep_1 -3 + 122, 1, 2, -149.9 , 0 );
setMoveKey( spep_1 -3 + 124, 1, 2.1, -149.8 , 0 );
setMoveKey( spep_1 -3 + 126, 1, 2.1, -149.7 , 0 );
setMoveKey( spep_1 -3 + 128, 1, 2.1, -149.6 , 0 );
setMoveKey( spep_1 -3 + 130, 1, 2.1, -149.6 , 0 );

setScaleKey( spep_1 -3 + 60, 1, 8, 8 );
setScaleKey( spep_1 -3 + 62, 1, 1.72, 1.72 );
setScaleKey( spep_1 -3 + 64, 1, 0.72, 0.72 );
setScaleKey( spep_1 -3 + 65, 1, 0.72, 0.72 );
setScaleKey( spep_1 -3 + 66, 1, 0.6, 0.6 );
setScaleKey( spep_1 -3 + 68, 1, 0.48, 0.48 );
setScaleKey( spep_1 -3 + 70, 1, 0.43, 0.43 );
setScaleKey( spep_1 -3 + 72, 1, 0.39, 0.39 );
setScaleKey( spep_1 -3 + 74, 1, 0.36, 0.36 );
setScaleKey( spep_1 -3 + 76, 1, 0.33, 0.33 );
setScaleKey( spep_1 -3 + 78, 1, 0.31, 0.31 );
setScaleKey( spep_1 -3 + 80, 1, 0.29, 0.29 );
setScaleKey( spep_1 -3 + 82, 1, 0.27, 0.27 );
setScaleKey( spep_1 -3 + 84, 1, 0.25, 0.25 );
setScaleKey( spep_1 -3 + 86, 1, 0.24, 0.24 );
setScaleKey( spep_1 -3 + 88, 1, 0.23, 0.23 );
setScaleKey( spep_1 -3 + 90, 1, 0.21, 0.21 );
setScaleKey( spep_1 -3 + 92, 1, 0.2, 0.2 );
setScaleKey( spep_1 -3 + 94, 1, 0.19, 0.19 );
setScaleKey( spep_1 -3 + 96, 1, 0.18, 0.18 );
setScaleKey( spep_1 -3 + 98, 1, 0.17, 0.17 );
setScaleKey( spep_1 -3 + 100, 1, 0.16, 0.16 );
setScaleKey( spep_1 -3 + 102, 1, 0.16, 0.16 );
setScaleKey( spep_1 -3 + 104, 1, 0.15, 0.15 );
setScaleKey( spep_1 -3 + 106, 1, 0.14, 0.14 );
setScaleKey( spep_1 -3 + 108, 1, 0.14, 0.14 );
setScaleKey( spep_1 -3 + 110, 1, 0.13, 0.13 );
setScaleKey( spep_1 -3 + 112, 1, 0.13, 0.13 );
setScaleKey( spep_1 -3 + 114, 1, 0.12, 0.12 );
setScaleKey( spep_1 -3 + 118, 1, 0.12, 0.12 );
setScaleKey( spep_1 -3 + 120, 1, 0.11, 0.11 );
setScaleKey( spep_1 -3 + 130, 1, 0.11, 0.11 );

setRotateKey( spep_1 -3 + 60, 1, -8 );
setRotateKey( spep_1 -3 + 62, 1, -8.3 );
setRotateKey( spep_1 -3 + 63, 1, -8.3 );
setRotateKey( spep_1 -3 + 65, 1, -8.3 );
setRotateKey( spep_1 -3 + 66, 1, 16.2 );
setRotateKey( spep_1 -3 + 68, 1, 12.3 );
setRotateKey( spep_1 -3 + 70, 1, 10.7 );
setRotateKey( spep_1 -3 + 72, 1, 9.5 );
setRotateKey( spep_1 -3 + 74, 1, 8.6 );
setRotateKey( spep_1 -3 + 76, 1, 7.8 );
setRotateKey( spep_1 -3 + 78, 1, 7 );
setRotateKey( spep_1 -3 + 80, 1, 6.4 );
setRotateKey( spep_1 -3 + 82, 1, 5.8 );
setRotateKey( spep_1 -3 + 84, 1, 5.3 );
setRotateKey( spep_1 -3 + 86, 1, 4.8 );
setRotateKey( spep_1 -3 + 88, 1, 4.4 );
setRotateKey( spep_1 -3 + 90, 1, 4 );
setRotateKey( spep_1 -3 + 92, 1, 3.6 );
setRotateKey( spep_1 -3 + 94, 1, 3.2 );
setRotateKey( spep_1 -3 + 96, 1, 2.9 );
setRotateKey( spep_1 -3 + 98, 1, 2.6 );
setRotateKey( spep_1 -3 + 100, 1, 2.4 );
setRotateKey( spep_1 -3 + 102, 1, 2.1 );
setRotateKey( spep_1 -3 + 104, 1, 1.9 );
setRotateKey( spep_1 -3 + 106, 1, 1.7 );
setRotateKey( spep_1 -3 + 108, 1, 1.5 );
setRotateKey( spep_1 -3 + 110, 1, 1.4 );
setRotateKey( spep_1 -3 + 112, 1, 1.2 );
setRotateKey( spep_1 -3 + 114, 1, 1.1 );
setRotateKey( spep_1 -3 + 116, 1, 1 );
setRotateKey( spep_1 -3 + 118, 1, 0.9 );
setRotateKey( spep_1 -3 + 120, 1, 0.8 );
setRotateKey( spep_1 -3 + 122, 1, 0.8 );
setRotateKey( spep_1 -3 + 124, 1, 0.7 );
setRotateKey( spep_1 -3 + 130, 1, 0.7 );

-- ** 背景 ** --
entryFadeBg( spep_1 + 0, 0, 208, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 音 ** --
--ゴゴゴ
playSe( spep_x + 16, 1018 ); 

--キック
playSe( spep_1 + 40, 1004 );
playSe( spep_1 + 46, 1123 );

--敵が飛んでいく
SE6 = playSe( spep_1 + 65, 1044 );
stopSe( spep_1 + 118, SE6, 53 );
playSe( spep_1 + 103, 1072 );

-- ** 次の準備 ** --
spep_2 = spep_1 + 206;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_2 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
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

--気弾溜め
SE7 = playSe( spep_2 + 93, 1191 );
setSeVolume( spep_2 + 93, 1191, 141 );

SE8 = playSe( spep_2 + 93, 1204 );
setSeVolume( spep_2 + 93, 1204, 125 );

SE9 = playSe( spep_2 + 93, 1184 );
setSeVolume( spep_2 + 93, 1184, 29 );

SE10 = playSe( spep_2 + 93, 1154 );
setSeVolume( spep_2 + 93, 1154, 71 );

-- ** 白背景 ** --
entryFadeBg( spep_2 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 次の準備 ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

spep_3 = spep_2 + 94;

------------------------------------------------------
-- 手をかざす〜マントがはためく(378F)
------------------------------------------------------

-- ** エフェクト等 ** --
finish = entryEffect( spep_3 + 0, SP_05, 0x100, -1, 0, 0, 0 );  --手をかざす〜マントがはためく(ef_005)
setEffMoveKey( spep_3 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_3 + 378, finish, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_3 + 378, finish, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish, 0 );
setEffRotateKey( spep_3 + 378, finish, 0 );
setEffAlphaKey( spep_3 + 0, finish, 255 );
setEffAlphaKey( spep_3 + 378, finish, 255 );

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_3 -3 + 120,  190006, 62, 0x100, -1, 0, 0.7, 335.3 );  --ゴゴゴ
setEffMoveKey( spep_3 -3 + 120, ctgogo, 0.7, 335.3 , 0 );
setEffMoveKey( spep_3 -3 + 122, ctgogo, 3.7, 338.7 , 0 );
setEffMoveKey( spep_3 -3 + 124, ctgogo, 4.5, 351.9 , 0 );
setEffMoveKey( spep_3 -3 + 126, ctgogo, 2.1, 362.7 , 0 );
setEffMoveKey( spep_3 -3 + 128, ctgogo, 4.5, 351.9 , 0 );
setEffMoveKey( spep_3 -3 + 130, ctgogo, 2.1, 362.7 , 0 );
setEffMoveKey( spep_3 -3 + 132, ctgogo, 4.5, 351.9 , 0 );
setEffMoveKey( spep_3 -3 + 134, ctgogo, 2.1, 362.7 , 0 );
setEffMoveKey( spep_3 -3 + 136, ctgogo, 4.5, 351.9 , 0 );
setEffMoveKey( spep_3 -3 + 138, ctgogo, 2.1, 362.7 , 0 );
setEffMoveKey( spep_3 -3 + 140, ctgogo, 4.5, 351.9 , 0 );
setEffMoveKey( spep_3 -3 + 142, ctgogo, 2.1, 362.7 , 0 );
setEffMoveKey( spep_3 -3 + 144, ctgogo, 4.5, 351.9 , 0 );
setEffMoveKey( spep_3 -3 + 146, ctgogo, 2.1, 362.7 , 0 );
setEffMoveKey( spep_3 -3 + 148, ctgogo, 4.5, 351.9 , 0 );
setEffMoveKey( spep_3 -3 + 150, ctgogo, 2.1, 362.7 , 0 );
setEffMoveKey( spep_3 -3 + 152, ctgogo, 4.5, 351.9 , 0 );
setEffMoveKey( spep_3 -3 + 154, ctgogo, 2.1, 362.7 , 0 );
setEffMoveKey( spep_3 -3 + 156, ctgogo, 4.5, 351.9 , 0 );
setEffMoveKey( spep_3 -3 + 158, ctgogo, 2.1, 362.7 , 0 );
setEffMoveKey( spep_3 -3 + 160, ctgogo, 4.5, 351.9 , 0 );
setEffMoveKey( spep_3 -3 + 162, ctgogo, 2.1, 362.7 , 0 );
setEffMoveKey( spep_3 -3 + 164, ctgogo, 4.5, 351.9 , 0 );
setEffMoveKey( spep_3 -3 + 166, ctgogo, 2.1, 362.7 , 0 );
setEffMoveKey( spep_3 -3 + 168, ctgogo, 4.5, 351.9 , 0 );
setEffMoveKey( spep_3 -3 + 170, ctgogo, 2.1, 362.7 , 0 );
setEffMoveKey( spep_3 -3 + 172, ctgogo, 4.5, 351.9 , 0 );
setEffMoveKey( spep_3 -3 + 174, ctgogo, 2.1, 362.7 , 0 );
setEffMoveKey( spep_3 -3 + 176, ctgogo, 4.5, 351.9 , 0 );
setEffMoveKey( spep_3 -3 + 178, ctgogo, 2.1, 362.7 , 0 );
setEffMoveKey( spep_3 -3 + 180, ctgogo, 4.5, 351.9 , 0 );
setEffMoveKey( spep_3 -3 + 182, ctgogo, 2.1, 362.7 , 0 );

setEffScaleKey( spep_3 -3 + 120, ctgogo, 0.55 +0.7, 0.55 +0.7 );
setEffScaleKey( spep_3 -3 + 122, ctgogo, 0.58 +0.7, 0.58 +0.7 );
setEffScaleKey( spep_3 -3 + 124, ctgogo, 0.6 +0.7, 0.6 +0.7 );
setEffScaleKey( spep_3 -3 + 182, ctgogo, 0.6 +0.7, 0.6 +0.7 );

setEffRotateKey( spep_3 -3 + 120, ctgogo, 0 );
setEffRotateKey( spep_3 -3 + 182, ctgogo, 0 );

setEffAlphaKey( spep_3 -3 + 120, ctgogo, 85 );
setEffAlphaKey( spep_3 -3 + 122, ctgogo, 170 );
setEffAlphaKey( spep_3 -3 + 124, ctgogo, 255 );
setEffAlphaKey( spep_3 -3 + 182, ctgogo, 255 );

-- ** 音 ** --
--気弾溜め
stopSe( spep_3 + 53, SE7, 0 );
stopSe( spep_3 + 48, SE8, 0 );

setSeVolume( spep_3 + 12, 1184, 29 );
setSeVolume( spep_3 + 16, 1184, 27 );
setSeVolume( spep_3 + 20, 1184, 24 );
setSeVolume( spep_3 + 24, 1184, 21 );
setSeVolume( spep_3 + 28, 1184, 18 );
setSeVolume( spep_3 + 32, 1184, 15 );
setSeVolume( spep_3 + 36, 1184, 11 );
setSeVolume( spep_3 + 40, 1184, 6 );
setSeVolume( spep_3 + 44, 1184, 3 );
setSeVolume( spep_3 + 49, 1184, 0 );
stopSe( spep_3 + 49, SE9, 0 );

stopSe( spep_3 + 53, SE10, 0 );

--地響き
SE11 = playSe( spep_3 + 42, 1044 );
setSeVolume( spep_3 + 42, 1044, 76 );
setSeVolume( spep_3 + 142, 1044, 76 );
setSeVolume( spep_3 + 148, 1044, 72 );
setSeVolume( spep_3 + 160, 1044, 65 );
setSeVolume( spep_3 + 190, 1044, 61 );
setSeVolume( spep_3 + 230, 1044, 48 );
setSeVolume( spep_3 + 272, 1044, 35 );
setSeVolume( spep_3 + 300, 1044, 12 );
setSeVolume( spep_3 + 369, 1044, 0 );
stopSe( spep_3 + 369, SE11, 0 );

--気弾発射
SE12 = playSe( spep_3 + 43, 1213 );
setSeVolume( spep_3 + 43, 1213, 126 );
setSeVolume( spep_3 + 219, 1213, 126 );
setSeVolume( spep_3 + 254, 1213, 102 );
setSeVolume( spep_3 + 278, 1213, 79 );
setSeVolume( spep_3 + 302, 1213, 47 );
setSeVolume( spep_3 + 312, 1213, 12 );
setSeVolume( spep_3 + 317, 1213, 0 );
stopSe( spep_3 + 317, SE12, 0 );

playSe( spep_3 + 47, 1027 );
setSeVolume( spep_3 + 47, 1027, 79 );

playSe( spep_3 + 50, 1188 );
setSeVolume( spep_3 + 50, 1188, 82 );

--爆発
playSe( spep_3 + 107, 1159 );
setSeVolume( spep_3 + 107, 1159, 86 );
playSe( spep_3 + 110, 1024 );
playSe( spep_3 + 118, 1023 );

--余韻
playSe( spep_3 + 151, 1168 );
setSeVolume( spep_3 + 151, 1168, 0 );
setSeVolume( spep_3 + 179, 1168, 4 );
setSeVolume( spep_3 + 184, 1168, 12 );
setSeVolume( spep_3 + 188, 1168, 39 );
setSeVolume( spep_3 + 192, 1168, 45 );
setSeVolume( spep_3 + 196, 1168, 48 );
setSeVolume( spep_3 + 200, 1168, 51 );
setSeVolume( spep_3 + 206, 1168, 54 );
setSeVolume( spep_3 + 210, 1168, 58 );
setSeVolume( spep_3 + 218, 1168, 64 );
setSeVolume( spep_3 + 226, 1168, 69 );
setSeVolume( spep_3 + 230, 1168, 72 );
setSeVolume( spep_3 + 234, 1168, 76 );

playSe( spep_3 + 238, 1033 );
setSeVolume( spep_3 + 238, 1033, 3 );
setSeVolume( spep_3 + 240, 1033, 12 );
setSeVolume( spep_3 + 244, 1033, 33 );
setSeVolume( spep_3 + 248, 1033, 47 );
setSeVolume( spep_3 + 252, 1033, 65 );
setSeVolume( spep_3 + 256, 1033, 73 );
setSeVolume( spep_3 + 260, 1033, 89 );
setSeVolume( spep_3 + 261, 1033, 100 );

-- ** 背景 ** --
entryFadeBg( spep_3 + 0, 0, 380, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** ダメージ表示 ** --
dealDamage( spep_3 + 240 );
endPhase( spep_3 + 376 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 反り返り〜ラッシュ(298F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 298, 0x100, -1, 0, 0, 0 );  --反り返り〜ラッシュ(ef_001)
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 298, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 298, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 298, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 297, first_f, 255 );
setEffAlphaKey( spep_0 + 298, first_f, 0 );

first_b = entryEffectLife( spep_0 + 0, SP_02, 298, 0x80, -1, 0, 0, 0 );  --反り返り〜ラッシュ(ef_002)
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 298, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 298, first_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 298, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 297, first_b, 255 );
setEffAlphaKey( spep_0 + 298, first_b, 0 );

-- ** 書き文字エントリー ** --
ctsyun = entryEffectLife( spep_0 -3 + 70,  10011, 8, 0x100, -1, 0, -116.8, 354.2 );  --シュン
setEffMoveKey( spep_0 -3 + 70, ctsyun, -116.8, 354.2 , 0 );
setEffMoveKey( spep_0 -3 + 72, ctsyun, -94.4, 360.9 , 0 );
setEffMoveKey( spep_0 -3 + 74, ctsyun, -86, 363.4 , 0 );
setEffMoveKey( spep_0 -3 + 76, ctsyun, -84.1, 364 , 0 );
setEffMoveKey( spep_0 -3 + 78, ctsyun, -84, 364 , 0 );

setEffScaleKey( spep_0 -3 + 70, ctsyun, 1.83, 1.83 );
setEffScaleKey( spep_0 -3 + 72, ctsyun, 2.22, 2.22 );
setEffScaleKey( spep_0 -3 + 74, ctsyun, 2.36, 2.36 );
setEffScaleKey( spep_0 -3 + 76, ctsyun, 2.4, 2.4 );
setEffScaleKey( spep_0 -3 + 78, ctsyun, 2.4, 2.4 );

setEffRotateKey( spep_0 -3 + 70, ctsyun, 0 );
setEffRotateKey( spep_0 -3 + 78, ctsyun, 0 );

setEffAlphaKey( spep_0 -3 + 70, ctsyun, 151 );
setEffAlphaKey( spep_0 -3 + 72, ctsyun, 222 );
setEffAlphaKey( spep_0 -3 + 74, ctsyun, 248 );
setEffAlphaKey( spep_0 -3 + 76, ctsyun, 255 );
setEffAlphaKey( spep_0 -3 + 78, ctsyun, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 -3 + 74, 1, 0 );
changeAnime( spep_0 + 0, 1, 100 );

setMoveKey( spep_0 + 0, 1, 276, -194 , 0 );
setMoveKey( spep_0 + 1, 1, 276, -194 , 0 );
setMoveKey( spep_0 + 2, 1, 276, -194 , 0 );
setMoveKey( spep_0 + 3, 1, 276, -194 , 0 );
setMoveKey( spep_0 + 4, 1, 276, -194 , 0 );
setMoveKey( spep_0 + 5, 1, 276, -194 , 0 );
setMoveKey( spep_0 + 6, 1, 276, -194 , 0 );
setMoveKey( spep_0 -3 + 74, 1, 276, -194 , 0 );

setScaleKey( spep_0 + 0, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 1, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 3, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 4, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 5, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 6, 1, 0.35, 0.35 );
setScaleKey( spep_0 -3 + 74, 1, 0.35, 0.35 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0 -3 + 74, 1, 0 );

-- ** 背景 ** --
entryFadeBg( spep_0 + 0, 0, 300, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--首ポキ
playSe( spep_0 + 14, 1151 );

--瞬間移動
playSe( spep_0 + 46, 1109 );

--仰向けダッシュ
SE0 = playSe( spep_0 + 74, 1182 );
SE1 = playSe( spep_0 + 74, 1183 );
SE2 = playSe( spep_0 + 74, 9 );
SE3 = playSe( spep_0 + 82, 1072 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 98; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe( SP_dodge - 12, SE0, 0 );
stopSe( SP_dodge - 12, SE1, 0 );
stopSe( SP_dodge - 12, SE2, 0 );
stopSe( SP_dodge - 12, SE3, 0 );

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
ctgaga = entryEffectLife( spep_0 -3 + 222,  10002, 78, 0x100, -1, 0, 63.6, 222.3 );  --ガガガ
setEffMoveKey( spep_0 -3 + 222, ctgaga, 63.6, 222.3 , 0 );
setEffMoveKey( spep_0 -3 + 224, ctgaga, 60.1, 256 , 0 );
setEffMoveKey( spep_0 -3 + 226, ctgaga, 67, 264.6 , 0 );
setEffMoveKey( spep_0 -3 + 228, ctgaga, 57.5, 245.9 , 0 );
setEffMoveKey( spep_0 -3 + 230, ctgaga, 51.7, 260.4 , 0 );
setEffMoveKey( spep_0 -3 + 232, ctgaga, 60.1, 256 , 0 );
setEffMoveKey( spep_0 -3 + 234, ctgaga, 67, 264.6 , 0 );
setEffMoveKey( spep_0 -3 + 236, ctgaga, 57.5, 245.9 , 0 );
setEffMoveKey( spep_0 -3 + 238, ctgaga, 51.7, 260.4 , 0 );
setEffMoveKey( spep_0 -3 + 240, ctgaga, 60.1, 256 , 0 );
setEffMoveKey( spep_0 -3 + 242, ctgaga, 67, 264.6 , 0 );
setEffMoveKey( spep_0 -3 + 244, ctgaga, 57.5, 245.9 , 0 );
setEffMoveKey( spep_0 -3 + 246, ctgaga, 51.7, 260.4 , 0 );
setEffMoveKey( spep_0 -3 + 248, ctgaga, 60.1, 256 , 0 );
setEffMoveKey( spep_0 -3 + 250, ctgaga, 67, 264.6 , 0 );
setEffMoveKey( spep_0 -3 + 252, ctgaga, 57.5, 245.9 , 0 );
setEffMoveKey( spep_0 -3 + 254, ctgaga, 51.7, 260.4 , 0 );
setEffMoveKey( spep_0 -3 + 256, ctgaga, 60.1, 256 , 0 );
setEffMoveKey( spep_0 -3 + 258, ctgaga, 67, 264.6 , 0 );
setEffMoveKey( spep_0 -3 + 260, ctgaga, 57.5, 245.9 , 0 );
setEffMoveKey( spep_0 -3 + 262, ctgaga, 51.7, 260.4 , 0 );
setEffMoveKey( spep_0 -3 + 264, ctgaga, 60.1, 256 , 0 );
setEffMoveKey( spep_0 -3 + 266, ctgaga, 67, 264.6 , 0 );
setEffMoveKey( spep_0 -3 + 268, ctgaga, 57.5, 245.9 , 0 );
setEffMoveKey( spep_0 -3 + 270, ctgaga, 51.7, 260.4 , 0 );
setEffMoveKey( spep_0 -3 + 272, ctgaga, 60.1, 256 , 0 );
setEffMoveKey( spep_0 -3 + 274, ctgaga, 67, 264.6 , 0 );
setEffMoveKey( spep_0 -3 + 276, ctgaga, 57.5, 245.9 , 0 );
setEffMoveKey( spep_0 -3 + 278, ctgaga, 51.7, 260.4 , 0 );
setEffMoveKey( spep_0 -3 + 280, ctgaga, 60.1, 256 , 0 );
setEffMoveKey( spep_0 -3 + 282, ctgaga, 67, 264.6 , 0 );
setEffMoveKey( spep_0 -3 + 284, ctgaga, 57.5, 245.9 , 0 );
setEffMoveKey( spep_0 -3 + 286, ctgaga, 51.7, 260.4 , 0 );
setEffMoveKey( spep_0 -3 + 288, ctgaga, 60.1, 256 , 0 );
setEffMoveKey( spep_0 -3 + 290, ctgaga, 67, 264.6 , 0 );
setEffMoveKey( spep_0 -3 + 292, ctgaga, 57.5, 245.9 , 0 );
setEffMoveKey( spep_0 -3 + 294, ctgaga, 51.7, 260.4 , 0 );
setEffMoveKey( spep_0 -3 + 296, ctgaga, 60.1, 256 , 0 );
setEffMoveKey( spep_0 -3 + 298, ctgaga, 67, 264.6 , 0 );
setEffMoveKey( spep_0 -3 + 300, ctgaga, 57.5, 245.9 , 0 );

setEffScaleKey( spep_0 -3 + 222, ctgaga, 2.13, 2.13 );
setEffScaleKey( spep_0 -3 + 224, ctgaga, 3.25, 3.25 );
setEffScaleKey( spep_0 -3 + 300, ctgaga, 3.25, 3.25 );

setEffRotateKey( spep_0 -3 + 222, ctgaga, -10 +5 );
setEffRotateKey( spep_0 -3 + 224, ctgaga, -20 +5 );
setEffRotateKey( spep_0 -3 + 300, ctgaga, -20 +5 );

setEffAlphaKey( spep_0 -3 + 222, ctgaga, 128 );
setEffAlphaKey( spep_0 -3 + 224, ctgaga, 255 );
setEffAlphaKey( spep_0 -3 + 300, ctgaga, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_0 -3 + 140, 1, 1 );
setDisp( spep_0 -3 + 301, 1, 0 );
changeAnime( spep_0 -3 + 140, 1, 101 );
changeAnime( spep_0 -3 + 156, 1, 104 );
changeAnime( spep_0 -3 + 206, 1, 108 );
changeAnime( spep_0 -3 + 214, 1, 106 );
changeAnime( spep_0 -3 + 230, 1, 108 );
changeAnime( spep_0 -3 + 246, 1, 106 );
changeAnime( spep_0 -3 + 260, 1, 108 );
changeAnime( spep_0 -3 + 278, 1, 106 );
changeAnime( spep_0 -3 + 294, 1, 108 );

setMoveKey( spep_0 -3 + 140, 1, 586.9, -24.1 , 0 );
setMoveKey( spep_0 -3 + 142, 1, 419.6, -26.8 , 0 );
setMoveKey( spep_0 -3 + 144, 1, 278.2, -12.6 , 0 );
setMoveKey( spep_0 -3 + 146, 1, 157.6, -16.7 , 0 );
setMoveKey( spep_0 -3 + 148, 1, 146.2, -5.2 , 0 );
setMoveKey( spep_0 -3 + 150, 1, 168.3, -42.3 , 0 );
setMoveKey( spep_0 -3 + 152, 1, 142.6, -35.6 , 0 );
setMoveKey( spep_0 -3 + 154, 1, 133.4, -29 , 0 );
setMoveKey( spep_0 -3 + 155, 1, 133.4, -29 , 0 );
setMoveKey( spep_0 -3 + 156, 1, 146, -31.6 , 0 );
setMoveKey( spep_0 -3 + 158, 1, 152.3, -32.4 , 0 );
setMoveKey( spep_0 -3 + 160, 1, 130.5, -16.7 , 0 );
setMoveKey( spep_0 -3 + 162, 1, 113.8, -11.9 , 0 );
setMoveKey( spep_0 -3 + 164, 1, 126.4, -26.7 , 0 );
setMoveKey( spep_0 -3 + 166, 1, 129.4, -39.5 , 0 );
setMoveKey( spep_0 -3 + 168, 1, 118.7, -17.5 , 0 );
setMoveKey( spep_0 -3 + 170, 1, 125.2, -24.8 , 0 );
setMoveKey( spep_0 -3 + 172, 1, 117.8, -20.7 , 0 );
setMoveKey( spep_0 -3 + 174, 1, 125.1, -27.8 , 0 );
setMoveKey( spep_0 -3 + 176, 1, 126.7, -30 , 0 );
setMoveKey( spep_0 -3 + 178, 1, 121.4, -21.7 , 0 );
setMoveKey( spep_0 -3 + 180, 1, 126, -28.8 , 0 );
setMoveKey( spep_0 -3 + 182, 1, 125.7, -28 , 0 );
setMoveKey( spep_0 -3 + 184, 1, 124.2, -29.6 , 0 );
setMoveKey( spep_0 -3 + 186, 1, 126.4, -30.5 , 0 );
setMoveKey( spep_0 -3 + 188, 1, 127.9, -30.2 , 0 );
setMoveKey( spep_0 -3 + 190, 1, 126, -27.9 , 0 );
setMoveKey( spep_0 -3 + 200, 1, 126, -27.9 , 0 );
setMoveKey( spep_0 -3 + 202, 1, 127.9, -33.3 , 0 );
setMoveKey( spep_0 -3 + 204, 1, 120.7, -25.1 , 0 );
setMoveKey( spep_0 -3 + 205, 1, 120.7, -25.1 , 0 );
setMoveKey( spep_0 -3 + 206, 1, 126.5, -5.5 , 0 );
setMoveKey( spep_0 -3 + 208, 1, 151.8, -24.7 , 0 );
setMoveKey( spep_0 -3 + 210, 1, 151.8, -29.3 , 0 );
setMoveKey( spep_0 -3 + 212, 1, 160, -31.6 , 0 );
setMoveKey( spep_0 -3 + 213, 1, 160, -31.6 , 0 );
setMoveKey( spep_0 -3 + 214, 1, 84.6, 2.4 , 0 );
setMoveKey( spep_0 -3 + 216, 1, 91.9, 17.5 , 0 );
setMoveKey( spep_0 -3 + 218, 1, 96.1, 29.2 , 0 );
setMoveKey( spep_0 -3 + 220, 1, 104.5, 19 , 0 );
setMoveKey( spep_0 -3 + 222, 1, 101.2, 33.7 , 0 );
setMoveKey( spep_0 -3 + 224, 1, 101.7, 34.1 , 0 );
setMoveKey( spep_0 -3 + 226, 1, 102.2, 28.9 , 0 );
setMoveKey( spep_0 -3 + 228, 1, 110.8, 23.1 , 0 );
setMoveKey( spep_0 -3 + 229, 1, 110.8, 23.1 , 0 );
setMoveKey( spep_0 -3 + 230, 1, 153.4, -49.9 , 0 );
setMoveKey( spep_0 -3 + 232, 1, 160.3, -45.6 , 0 );
setMoveKey( spep_0 -3 + 234, 1, 168.5, -33.7 , 0 );
setMoveKey( spep_0 -3 + 236, 1, 179.8, -33.7 , 0 );
setMoveKey( spep_0 -3 + 238, 1, 175.2, -35.7 , 0 );
setMoveKey( spep_0 -3 + 240, 1, 171.7, -34.2 , 0 );
setMoveKey( spep_0 -3 + 242, 1, 179.2, -30.6 , 0 );
setMoveKey( spep_0 -3 + 244, 1, 188.2, -36.1 , 0 );
setMoveKey( spep_0 -3 + 245, 1, 188.2, -36.1 , 0 );
setMoveKey( spep_0 -3 + 246, 1, 159.4, 55.1 , 0 );
setMoveKey( spep_0 -3 + 248, 1, 165.9, 40.9 , 0 );
setMoveKey( spep_0 -3 + 250, 1, 184.1, 41.9 , 0 );
setMoveKey( spep_0 -3 + 252, 1, 175, 41.1 , 0 );
setMoveKey( spep_0 -3 + 254, 1, 177.6, 42.9 , 0 );
setMoveKey( spep_0 -3 + 256, 1, 181.7, 45.7 , 0 );
setMoveKey( spep_0 -3 + 258, 1, 175.9, 51.4 , 0 );
setMoveKey( spep_0 -3 + 259, 1, 175.9, 51.4 , 0 );
setMoveKey( spep_0 -3 + 260, 1, 182.4, -10.2 , 0 );
setMoveKey( spep_0 -3 + 262, 1, 184.9, -12 , 0 );
setMoveKey( spep_0 -3 + 264, 1, 192.3, -9.7 , 0 );
setMoveKey( spep_0 -3 + 266, 1, 192.2, -21.7 , 0 );
setMoveKey( spep_0 -3 + 268, 1, 191.5, -11.7 , 0 );
setMoveKey( spep_0 -3 + 270, 1, 197.1, -14.5 , 0 );
setMoveKey( spep_0 -3 + 272, 1, 192.6, -28.8 , 0 );
setMoveKey( spep_0 -3 + 274, 1, 193.7, -22 , 0 );
setMoveKey( spep_0 -3 + 276, 1, 191.6, -19.8 , 0 );
setMoveKey( spep_0 -3 + 277, 1, 191.6, -19.8 , 0 );
setMoveKey( spep_0 -3 + 278, 1, 168.2, 44.6 , 0 );
setMoveKey( spep_0 -3 + 280, 1, 169.4, 42.2 , 0 );
setMoveKey( spep_0 -3 + 282, 1, 175.3, 42.7 , 0 );
setMoveKey( spep_0 -3 + 284, 1, 175.1, 53.7 , 0 );
setMoveKey( spep_0 -3 + 286, 1, 177.9, 48.1 , 0 );
setMoveKey( spep_0 -3 + 288, 1, 183.8, 47.9 , 0 );
setMoveKey( spep_0 -3 + 290, 1, 182.8, 45.5 , 0 );
setMoveKey( spep_0 -3 + 292, 1, 181.1, 46.6 , 0 );
setMoveKey( spep_0 -3 + 293, 1, 181.1, 46.6 , 0 );
setMoveKey( spep_0 -3 + 294, 1, 99.1, 18.5 , 0 );
setMoveKey( spep_0 -3 + 296, 1, 113.2, 32.6 , 0 );
setMoveKey( spep_0 -3 + 298, 1, 118.3, 37.8 , 0 );
setMoveKey( spep_0 -3 + 300, 1, 119.1, 38.5 , 0 );
setMoveKey( spep_0 -3 + 301, 1, 119.1, 38.5 , 0 );

setScaleKey( spep_0 -3 + 140, 1, 1.34, 1.34 );
setScaleKey( spep_0 -3 + 155, 1, 1.34, 1.34 );
setScaleKey( spep_0 -3 + 156, 1, 1.34, 1.34 );
setScaleKey( spep_0 -3 + 205, 1, 1.34, 1.34 );
setScaleKey( spep_0 -3 + 206, 1, 1.34, 1.34 );
setScaleKey( spep_0 -3 + 212, 1, 1.34, 1.34 );
setScaleKey( spep_0 -3 + 213, 1, 1.34, 1.34 );
setScaleKey( spep_0 -3 + 214, 1, 1.34, 1.34 );
setScaleKey( spep_0 -3 + 228, 1, 1.34, 1.34 );
setScaleKey( spep_0 -3 + 229, 1, 1.34, 1.34 );
setScaleKey( spep_0 -3 + 230, 1, 1.34, 1.34 );
setScaleKey( spep_0 -3 + 244, 1, 1.34, 1.34 );
setScaleKey( spep_0 -3 + 245, 1, 1.34, 1.34 );
setScaleKey( spep_0 -3 + 246, 1, 1.34, 1.34 );
setScaleKey( spep_0 -3 + 258, 1, 1.34, 1.34 );
setScaleKey( spep_0 -3 + 259, 1, 1.34, 1.34 );
setScaleKey( spep_0 -3 + 260, 1, 1.34, 1.34 );
setScaleKey( spep_0 -3 + 276, 1, 1.34, 1.34 );
setScaleKey( spep_0 -3 + 277, 1, 1.34, 1.34 );
setScaleKey( spep_0 -3 + 278, 1, 1.34, 1.34 );
setScaleKey( spep_0 -3 + 293, 1, 1.34, 1.34 );
setScaleKey( spep_0 -3 + 294, 1, 1.34, 1.34 );
setScaleKey( spep_0 -3 + 301, 1, 1.34, 1.34 );

setRotateKey( spep_0 -3 + 140, 1, 0 );
setRotateKey( spep_0 -3 + 155, 1, 0 );
setRotateKey( spep_0 -3 + 156, 1, 0 );
setRotateKey( spep_0 -3 + 205, 1, 0 );
setRotateKey( spep_0 -3 + 206, 1, 8.8 );
setRotateKey( spep_0 -3 + 212, 1, 8.8 );
setRotateKey( spep_0 -3 + 213, 1, 8.8 );
setRotateKey( spep_0 -3 + 214, 1, -10 );
setRotateKey( spep_0 -3 + 228, 1, -10 );
setRotateKey( spep_0 -3 + 229, 1, -10 );
setRotateKey( spep_0 -3 + 230, 1, 4.8 );
setRotateKey( spep_0 -3 + 244, 1, 4.8 );
setRotateKey( spep_0 -3 + 245, 1, 4.8 );
setRotateKey( spep_0 -3 + 246, 1, -16.4 );
setRotateKey( spep_0 -3 + 248, 1, -14.3 );
setRotateKey( spep_0 -3 + 250, 1, -12.9 );
setRotateKey( spep_0 -3 + 252, 1, -12 );
setRotateKey( spep_0 -3 + 254, 1, -11.6 );
setRotateKey( spep_0 -3 + 256, 1, -11.4 );
setRotateKey( spep_0 -3 + 258, 1, -11.4 );
setRotateKey( spep_0 -3 + 259, 1, -11.4 );
setRotateKey( spep_0 -3 + 260, 1, 22.5 );
setRotateKey( spep_0 -3 + 276, 1, 22.5 );
setRotateKey( spep_0 -3 + 277, 1, 22.5 );
setRotateKey( spep_0 -3 + 278, 1, -16.4 );
setRotateKey( spep_0 -3 + 280, 1, -14.3 );
setRotateKey( spep_0 -3 + 282, 1, -12.8 );
setRotateKey( spep_0 -3 + 284, 1, -11.8 );
setRotateKey( spep_0 -3 + 286, 1, -11.1 );
setRotateKey( spep_0 -3 + 288, 1, -10.8 );
setRotateKey( spep_0 -3 + 290, 1, -10.7 );
setRotateKey( spep_0 -3 + 293, 1, -10.7 );
setRotateKey( spep_0 -3 + 294, 1, -12.6 );
setRotateKey( spep_0 -3 + 301, 1, -12.6 );

-- ** 音 ** --
--仰向けダッシュ
stopSe( spep_0 + 161, SE1, 0 );
stopSe( spep_0 + 161, SE2, 0 );

--急に止まる
SE4 = playSe( spep_0 + 129, 1188 );
setSeVolume( spep_0 + 129, 1188, 0 );
setSeVolume( spep_0 + 148, 1188, 12 );
setSeVolume( spep_0 + 150, 1188, 33 );
setSeVolume( spep_0 + 152, 1188, 46 );
setSeVolume( spep_0 + 154, 1188, 52 );
setSeVolume( spep_0 + 156, 1188, 69 );
setSeVolume( spep_0 + 157, 1188, 86 );
setSeVolume( spep_0 + 171, 1188, 86 );
setSeVolume( spep_0 + 176, 1188, 80 );
setSeVolume( spep_0 + 180, 1188, 75 );
setSeVolume( spep_0 + 184, 1188, 69 );
setSeVolume( spep_0 + 188, 1188, 62 );
setSeVolume( spep_0 + 192, 1188, 53 );
setSeVolume( spep_0 + 196, 1188, 47 );
setSeVolume( spep_0 + 200, 1188, 35 );
setSeVolume( spep_0 + 204, 1188, 28 );
setSeVolume( spep_0 + 208, 1188, 19 );
setSeVolume( spep_0 + 210, 1188, 4 );
setSeVolume( spep_0 + 211, 1188, 0 );
stopSe( spep_0 + 211, SE4, 0 );

playSe( spep_0 + 149, 1232 );
setSeVolume( spep_0 + 149, 1232, 85 );

playSe( spep_0 + 149, 19 );

SE5 = playSe( spep_0 + 155, 1190 );
setSeVolume( spep_0 + 155, 1190, 5 );
setSeVolume( spep_0 + 158, 1190, 27 );
setSeVolume( spep_0 + 160, 1190, 41 );
setSeVolume( spep_0 + 162, 1190, 56 );
setSeVolume( spep_0 + 164, 1190, 68 );
setSeVolume( spep_0 + 166, 1190, 83 );
setSeVolume( spep_0 + 168, 1190, 100 );
stopSe( spep_0 + 177, SE5, 28 );

--ラッシュ
playSe( spep_0 + 199, 1189 );
playSe( spep_0 + 204, 1009 );
playSe( spep_0 + 207, 1110 );
playSe( spep_0 + 215, 1010 );
playSe( spep_0 + 218, 1110 );
playSe( spep_0 + 226, 1001 );
playSe( spep_0 + 231, 1110 );
setSeVolume( spep_0 + 231, 1110, 79 );
playSe( spep_0 + 241, 1009 );
playSe( spep_0 + 246, 1110 );
playSe( spep_0 + 256, 1009 );
playSe( spep_0 + 259, 1110 );
playSe( spep_0 + 268, 1001 );
setSeVolume( spep_0 + 268, 1001, 58 );
playSe( spep_0 + 272, 1009 );
playSe( spep_0 + 275, 1110 );
playSe( spep_0 + 287, 1009 );
playSe( spep_0 + 290, 1110 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 298;

------------------------------------------------------
-- キック〜敵画面奥へ飛ぶ(206F)
------------------------------------------------------

-- ** エフェクト等 ** --
kick_f = entryEffect( spep_1 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --キック〜敵画面奥へ飛ぶ(ef_003)
setEffMoveKey( spep_1 + 0, kick_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 206, kick_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, kick_f, -1.0, 1.0 );
setEffScaleKey( spep_1 + 206, kick_f, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, kick_f, 0 );
setEffRotateKey( spep_1 + 206, kick_f, 0 );
setEffAlphaKey( spep_1 + 0, kick_f, 255 );
setEffAlphaKey( spep_1 + 206, kick_f, 255 );

kick_b = entryEffect( spep_1 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --キック〜敵画面奥へ飛ぶ(ef_004)
setEffMoveKey( spep_1 + 0, kick_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 206, kick_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, kick_b, -1.0, 1.0 );
setEffScaleKey( spep_1 + 206, kick_b, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, kick_b, 0 );
setEffRotateKey( spep_1 + 206, kick_b, 0 );
setEffAlphaKey( spep_1 + 0, kick_b, 255 );
setEffAlphaKey( spep_1 + 206, kick_b, 255 );

spep_x = spep_1 + 120;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctzudo = entryEffectLife( spep_1 -3 + 70,  10014, 40, 0x100, -1, 0, 0, 195.8 );  --ズドド
setEffMoveKey( spep_1 -3 + 70, ctzudo, 0, 195.8 , 0 );
setEffMoveKey( spep_1 -3 + 72, ctzudo, 0, 181.1 , 0 );
setEffMoveKey( spep_1 -3 + 74, ctzudo, 11.2, 140.7 , 0 );
setEffMoveKey( spep_1 -3 + 76, ctzudo, 0, 134.8 , 0 );
setEffMoveKey( spep_1 -3 + 78, ctzudo, 0, 127.3 , 0 );
setEffMoveKey( spep_1 -3 + 80, ctzudo, 8.8, 99.8 , 0 );
setEffMoveKey( spep_1 -3 + 82, ctzudo, 0, 98.8 , 0 );
setEffMoveKey( spep_1 -3 + 84, ctzudo, 0, 96.6 , 0 );
setEffMoveKey( spep_1 -3 + 86, ctzudo, 7.4, 77.3 , 0 );
setEffMoveKey( spep_1 -3 + 88, ctzudo, 0, 79.9 , 0 );
setEffMoveKey( spep_1 -3 + 90, ctzudo, 0, 81.2 , 0 );
setEffMoveKey( spep_1 -3 + 92, ctzudo, 6.8, 66.6 , 0 );
setEffMoveKey( spep_1 -3 + 94, ctzudo, 0.1, 71.5 , 0 );
setEffMoveKey( spep_1 -3 + 96, ctzudo, 0, 74.9 , 0 );
setEffMoveKey( spep_1 -3 + 98, ctzudo, 6.6, 62.6 , 0 );
setEffMoveKey( spep_1 -3 + 100, ctzudo, -0.1, 68.7 , 0 );
setEffMoveKey( spep_1 -3 + 102, ctzudo, 0, 73.2 , 0 );
setEffMoveKey( spep_1 -3 + 104, ctzudo, 6.5, 61.7 , 0 );
setEffMoveKey( spep_1 -3 + 106, ctzudo, -0.1, 68.2 , 0 );
setEffMoveKey( spep_1 -3 + 108, ctzudo, 0, 73 , 0 );
setEffMoveKey( spep_1 -3 + 110, ctzudo, 6.5, 61.7 , 0 );

setEffScaleKey( spep_1 -3 + 70, ctzudo, 3.02, 3.02 );
setEffScaleKey( spep_1 -3 + 72, ctzudo, 2.73, 2.73 );
setEffScaleKey( spep_1 -3 + 74, ctzudo, 2.48, 2.48 );
setEffScaleKey( spep_1 -3 + 76, ctzudo, 2.27, 2.27 );
setEffScaleKey( spep_1 -3 + 78, ctzudo, 2.09, 2.09 );
setEffScaleKey( spep_1 -3 + 80, ctzudo, 1.95, 1.95 );
setEffScaleKey( spep_1 -3 + 82, ctzudo, 1.83, 1.83 );
setEffScaleKey( spep_1 -3 + 84, ctzudo, 1.73, 1.73 );
setEffScaleKey( spep_1 -3 + 86, ctzudo, 1.65, 1.65 );
setEffScaleKey( spep_1 -3 + 88, ctzudo, 1.59, 1.59 );
setEffScaleKey( spep_1 -3 + 90, ctzudo, 1.55, 1.55 );
setEffScaleKey( spep_1 -3 + 92, ctzudo, 1.51, 1.51 );
setEffScaleKey( spep_1 -3 + 94, ctzudo, 1.49, 1.49 );
setEffScaleKey( spep_1 -3 + 96, ctzudo, 1.47, 1.47 );
setEffScaleKey( spep_1 -3 + 98, ctzudo, 1.46, 1.46 );
setEffScaleKey( spep_1 -3 + 100, ctzudo, 1.46, 1.46 );
setEffScaleKey( spep_1 -3 + 102, ctzudo, 1.45, 1.45 );
setEffScaleKey( spep_1 -3 + 110, ctzudo, 1.45, 1.45 );

setEffRotateKey( spep_1 -3 + 70, ctzudo, -58.7 );
setEffRotateKey( spep_1 -3 + 110, ctzudo, -58.7 );

setEffAlphaKey( spep_1 -3 + 70, ctzudo, 255 );
setEffAlphaKey( spep_1 -3 + 110, ctzudo, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_1 -3 + 60, 1, 1 );
setDisp( spep_1 -3 + 130, 1, 0 );
changeAnime( spep_1 -3 + 60, 1, 5 );
changeAnime( spep_1 -3 + 66, 1, 105 );

setMoveKey( spep_1 -3 + 60, 1, -52.5, -21.8 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 5.7, -247.8 , 0 );
setMoveKey( spep_1 -3 + 64, 1, 0.5, -200.5 , 0 );
setMoveKey( spep_1 -3 + 65, 1, 0.5, -200.5 , 0 );
setMoveKey( spep_1 -3 + 66, 1, -0.9, -182.1 , 0 );
setMoveKey( spep_1 -3 + 68, 1, 4.9, -223.7 , 0 );
setMoveKey( spep_1 -3 + 70, 1, -33, -177.1 , 0 );
setMoveKey( spep_1 -3 + 72, 1, -0.2, -180.7 , 0 );
setMoveKey( spep_1 -3 + 74, 1, 18.5, -182.9 , 0 );
setMoveKey( spep_1 -3 + 76, 1, -6.3, -172.9 , 0 );
setMoveKey( spep_1 -3 + 78, 1, 9.7, -198.6 , 0 );
setMoveKey( spep_1 -3 + 80, 1, 1.2, -164.9 , 0 );
setMoveKey( spep_1 -3 + 82, 1, -10.2, -142.5 , 0 );
setMoveKey( spep_1 -3 + 84, 1, 11.1, -162.1 , 0 );
setMoveKey( spep_1 -3 + 86, 1, -17.6, -161.9 , 0 );
setMoveKey( spep_1 -3 + 88, 1, 7.9, -169.7 , 0 );
setMoveKey( spep_1 -3 + 90, 1, 22.8, -161 , 0 );
setMoveKey( spep_1 -3 + 92, 1, -12.3, -175.1 , 0 );
setMoveKey( spep_1 -3 + 94, 1, 0.3, -155.9 , 0 );
setMoveKey( spep_1 -3 + 96, 1, -3.4, -154.4 , 0 );
setMoveKey( spep_1 -3 + 98, 1, -1.7, -165 , 0 );
setMoveKey( spep_1 -3 + 100, 1, -0.4, -159 , 0 );
setMoveKey( spep_1 -3 + 102, 1, 4.5, -157.6 , 0 );
setMoveKey( spep_1 -3 + 104, 1, -3.1, -158.7 , 0 );
setMoveKey( spep_1 -3 + 106, 1, -6.3, -154.9 , 0 );
setMoveKey( spep_1 -3 + 108, 1, 1.1, -153 , 0 );
setMoveKey( spep_1 -3 + 110, 1, -1, -156.2 , 0 );
setMoveKey( spep_1 -3 + 112, 1, -7, -153.2 , 0 );
setMoveKey( spep_1 -3 + 114, 1, -1.8, -149.4 , 0 );
setMoveKey( spep_1 -3 + 116, 1, -3.6, -148.3 , 0 );
setMoveKey( spep_1 -3 + 118, 1, -3.2, -150.9 , 0 );
setMoveKey( spep_1 -3 + 120, 1, -2, -150.1 , 0 );
setMoveKey( spep_1 -3 + 122, 1, -2, -149.9 , 0 );
setMoveKey( spep_1 -3 + 124, 1, -2.1, -149.8 , 0 );
setMoveKey( spep_1 -3 + 126, 1, -2.1, -149.7 , 0 );
setMoveKey( spep_1 -3 + 128, 1, -2.1, -149.6 , 0 );
setMoveKey( spep_1 -3 + 130, 1, -2.1, -149.6 , 0 );

setScaleKey( spep_1 -3 + 60, 1, 8, 8 );
setScaleKey( spep_1 -3 + 62, 1, 1.72, 1.72 );
setScaleKey( spep_1 -3 + 64, 1, 0.72, 0.72 );
setScaleKey( spep_1 -3 + 65, 1, 0.72, 0.72 );
setScaleKey( spep_1 -3 + 66, 1, 0.6, 0.6 );
setScaleKey( spep_1 -3 + 68, 1, 0.48, 0.48 );
setScaleKey( spep_1 -3 + 70, 1, 0.43, 0.43 );
setScaleKey( spep_1 -3 + 72, 1, 0.39, 0.39 );
setScaleKey( spep_1 -3 + 74, 1, 0.36, 0.36 );
setScaleKey( spep_1 -3 + 76, 1, 0.33, 0.33 );
setScaleKey( spep_1 -3 + 78, 1, 0.31, 0.31 );
setScaleKey( spep_1 -3 + 80, 1, 0.29, 0.29 );
setScaleKey( spep_1 -3 + 82, 1, 0.27, 0.27 );
setScaleKey( spep_1 -3 + 84, 1, 0.25, 0.25 );
setScaleKey( spep_1 -3 + 86, 1, 0.24, 0.24 );
setScaleKey( spep_1 -3 + 88, 1, 0.23, 0.23 );
setScaleKey( spep_1 -3 + 90, 1, 0.21, 0.21 );
setScaleKey( spep_1 -3 + 92, 1, 0.2, 0.2 );
setScaleKey( spep_1 -3 + 94, 1, 0.19, 0.19 );
setScaleKey( spep_1 -3 + 96, 1, 0.18, 0.18 );
setScaleKey( spep_1 -3 + 98, 1, 0.17, 0.17 );
setScaleKey( spep_1 -3 + 100, 1, 0.16, 0.16 );
setScaleKey( spep_1 -3 + 102, 1, 0.16, 0.16 );
setScaleKey( spep_1 -3 + 104, 1, 0.15, 0.15 );
setScaleKey( spep_1 -3 + 106, 1, 0.14, 0.14 );
setScaleKey( spep_1 -3 + 108, 1, 0.14, 0.14 );
setScaleKey( spep_1 -3 + 110, 1, 0.13, 0.13 );
setScaleKey( spep_1 -3 + 112, 1, 0.13, 0.13 );
setScaleKey( spep_1 -3 + 114, 1, 0.12, 0.12 );
setScaleKey( spep_1 -3 + 118, 1, 0.12, 0.12 );
setScaleKey( spep_1 -3 + 120, 1, 0.11, 0.11 );
setScaleKey( spep_1 -3 + 130, 1, 0.11, 0.11 );

setRotateKey( spep_1 -3 + 60, 1, 8 );
setRotateKey( spep_1 -3 + 62, 1, 8.3 );
setRotateKey( spep_1 -3 + 63, 1, 8.3 );
setRotateKey( spep_1 -3 + 65, 1, 8.3 );
setRotateKey( spep_1 -3 + 66, 1, -16.2 );
setRotateKey( spep_1 -3 + 68, 1, -12.3 );
setRotateKey( spep_1 -3 + 70, 1, -10.7 );
setRotateKey( spep_1 -3 + 72, 1, -9.5 );
setRotateKey( spep_1 -3 + 74, 1, -8.6 );
setRotateKey( spep_1 -3 + 76, 1, -7.8 );
setRotateKey( spep_1 -3 + 78, 1, -7 );
setRotateKey( spep_1 -3 + 80, 1, -6.4 );
setRotateKey( spep_1 -3 + 82, 1, -5.8 );
setRotateKey( spep_1 -3 + 84, 1, -5.3 );
setRotateKey( spep_1 -3 + 86, 1, -4.8 );
setRotateKey( spep_1 -3 + 88, 1, -4.4 );
setRotateKey( spep_1 -3 + 90, 1, -4 );
setRotateKey( spep_1 -3 + 92, 1, -3.6 );
setRotateKey( spep_1 -3 + 94, 1, -3.2 );
setRotateKey( spep_1 -3 + 96, 1, -2.9 );
setRotateKey( spep_1 -3 + 98, 1, -2.6 );
setRotateKey( spep_1 -3 + 100, 1, -2.4 );
setRotateKey( spep_1 -3 + 102, 1, -2.1 );
setRotateKey( spep_1 -3 + 104, 1, -1.9 );
setRotateKey( spep_1 -3 + 106, 1, -1.7 );
setRotateKey( spep_1 -3 + 108, 1, -1.5 );
setRotateKey( spep_1 -3 + 110, 1, -1.4 );
setRotateKey( spep_1 -3 + 112, 1, -1.2 );
setRotateKey( spep_1 -3 + 114, 1, -1.1 );
setRotateKey( spep_1 -3 + 116, 1, -1 );
setRotateKey( spep_1 -3 + 118, 1, -0.9 );
setRotateKey( spep_1 -3 + 120, 1, -0.8 );
setRotateKey( spep_1 -3 + 122, 1, -0.8 );
setRotateKey( spep_1 -3 + 124, 1, -0.7 );
setRotateKey( spep_1 -3 + 130, 1, -0.7 );

-- ** 背景 ** --
entryFadeBg( spep_1 + 0, 0, 208, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 音 ** --
--ゴゴゴ
playSe( spep_x + 16, 1018 ); 

--キック
playSe( spep_1 + 40, 1004 );
playSe( spep_1 + 46, 1123 );

--敵が飛んでいく
SE6 = playSe( spep_1 + 65, 1044 );
stopSe( spep_1 + 118, SE6, 53 );
playSe( spep_1 + 103, 1072 );

-- ** 次の準備 ** --
spep_2 = spep_1 + 206;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_2 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
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

--気弾溜め
SE7 = playSe( spep_2 + 93, 1191 );
setSeVolume( spep_2 + 93, 1191, 141 );

SE8 = playSe( spep_2 + 93, 1204 );
setSeVolume( spep_2 + 93, 1204, 125 );

SE9 = playSe( spep_2 + 93, 1184 );
setSeVolume( spep_2 + 93, 1184, 29 );

SE10 = playSe( spep_2 + 93, 1154 );
setSeVolume( spep_2 + 93, 1154, 71 );

-- ** 白背景 ** --
entryFadeBg( spep_2 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 次の準備 ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

spep_3 = spep_2 + 94;

------------------------------------------------------
-- 手をかざす〜マントがはためく(378F)
------------------------------------------------------

-- ** エフェクト等 ** --
finish = entryEffect( spep_3 + 0, SP_05x, 0x100, -1, 0, 0, 0 );  --手をかざす〜マントがはためく(ef_005)
setEffMoveKey( spep_3 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_3 + 378, finish, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_3 + 378, finish, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish, 0 );
setEffRotateKey( spep_3 + 378, finish, 0 );
setEffAlphaKey( spep_3 + 0, finish, 255 );
setEffAlphaKey( spep_3 + 378, finish, 255 );

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_3 -3 + 120,  190006, 62, 0x100, -1, 0, 0.7, 335.3 );  --ゴゴゴ
setEffMoveKey( spep_3 -3 + 120, ctgogo, 0.7, 335.3 , 0 );
setEffMoveKey( spep_3 -3 + 122, ctgogo, 3.7, 338.7 , 0 );
setEffMoveKey( spep_3 -3 + 124, ctgogo, 4.5, 351.9 , 0 );
setEffMoveKey( spep_3 -3 + 126, ctgogo, 2.1, 362.7 , 0 );
setEffMoveKey( spep_3 -3 + 128, ctgogo, 4.5, 351.9 , 0 );
setEffMoveKey( spep_3 -3 + 130, ctgogo, 2.1, 362.7 , 0 );
setEffMoveKey( spep_3 -3 + 132, ctgogo, 4.5, 351.9 , 0 );
setEffMoveKey( spep_3 -3 + 134, ctgogo, 2.1, 362.7 , 0 );
setEffMoveKey( spep_3 -3 + 136, ctgogo, 4.5, 351.9 , 0 );
setEffMoveKey( spep_3 -3 + 138, ctgogo, 2.1, 362.7 , 0 );
setEffMoveKey( spep_3 -3 + 140, ctgogo, 4.5, 351.9 , 0 );
setEffMoveKey( spep_3 -3 + 142, ctgogo, 2.1, 362.7 , 0 );
setEffMoveKey( spep_3 -3 + 144, ctgogo, 4.5, 351.9 , 0 );
setEffMoveKey( spep_3 -3 + 146, ctgogo, 2.1, 362.7 , 0 );
setEffMoveKey( spep_3 -3 + 148, ctgogo, 4.5, 351.9 , 0 );
setEffMoveKey( spep_3 -3 + 150, ctgogo, 2.1, 362.7 , 0 );
setEffMoveKey( spep_3 -3 + 152, ctgogo, 4.5, 351.9 , 0 );
setEffMoveKey( spep_3 -3 + 154, ctgogo, 2.1, 362.7 , 0 );
setEffMoveKey( spep_3 -3 + 156, ctgogo, 4.5, 351.9 , 0 );
setEffMoveKey( spep_3 -3 + 158, ctgogo, 2.1, 362.7 , 0 );
setEffMoveKey( spep_3 -3 + 160, ctgogo, 4.5, 351.9 , 0 );
setEffMoveKey( spep_3 -3 + 162, ctgogo, 2.1, 362.7 , 0 );
setEffMoveKey( spep_3 -3 + 164, ctgogo, 4.5, 351.9 , 0 );
setEffMoveKey( spep_3 -3 + 166, ctgogo, 2.1, 362.7 , 0 );
setEffMoveKey( spep_3 -3 + 168, ctgogo, 4.5, 351.9 , 0 );
setEffMoveKey( spep_3 -3 + 170, ctgogo, 2.1, 362.7 , 0 );
setEffMoveKey( spep_3 -3 + 172, ctgogo, 4.5, 351.9 , 0 );
setEffMoveKey( spep_3 -3 + 174, ctgogo, 2.1, 362.7 , 0 );
setEffMoveKey( spep_3 -3 + 176, ctgogo, 4.5, 351.9 , 0 );
setEffMoveKey( spep_3 -3 + 178, ctgogo, 2.1, 362.7 , 0 );
setEffMoveKey( spep_3 -3 + 180, ctgogo, 4.5, 351.9 , 0 );
setEffMoveKey( spep_3 -3 + 182, ctgogo, 2.1, 362.7 , 0 );

setEffScaleKey( spep_3 -3 + 120, ctgogo, -0.55 -0.7, 0.55 +0.7 );
setEffScaleKey( spep_3 -3 + 122, ctgogo, -0.58 -0.7, 0.58 +0.7 );
setEffScaleKey( spep_3 -3 + 124, ctgogo, -0.6 -0.7, 0.6 +0.7 );
setEffScaleKey( spep_3 -3 + 182, ctgogo, -0.6 -0.7, 0.6 +0.7 );

setEffRotateKey( spep_3 -3 + 120, ctgogo, 0 );
setEffRotateKey( spep_3 -3 + 182, ctgogo, 0 );

setEffAlphaKey( spep_3 -3 + 120, ctgogo, 85 );
setEffAlphaKey( spep_3 -3 + 122, ctgogo, 170 );
setEffAlphaKey( spep_3 -3 + 124, ctgogo, 255 );
setEffAlphaKey( spep_3 -3 + 182, ctgogo, 255 );

-- ** 音 ** --
--気弾溜め
stopSe( spep_3 + 53, SE7, 0 );
stopSe( spep_3 + 48, SE8, 0 );

setSeVolume( spep_3 + 12, 1184, 29 );
setSeVolume( spep_3 + 16, 1184, 27 );
setSeVolume( spep_3 + 20, 1184, 24 );
setSeVolume( spep_3 + 24, 1184, 21 );
setSeVolume( spep_3 + 28, 1184, 18 );
setSeVolume( spep_3 + 32, 1184, 15 );
setSeVolume( spep_3 + 36, 1184, 11 );
setSeVolume( spep_3 + 40, 1184, 6 );
setSeVolume( spep_3 + 44, 1184, 3 );
setSeVolume( spep_3 + 49, 1184, 0 );
stopSe( spep_3 + 49, SE9, 0 );

stopSe( spep_3 + 53, SE10, 0 );

--地響き
SE11 = playSe( spep_3 + 42, 1044 );
setSeVolume( spep_3 + 42, 1044, 76 );
setSeVolume( spep_3 + 142, 1044, 76 );
setSeVolume( spep_3 + 148, 1044, 72 );
setSeVolume( spep_3 + 160, 1044, 65 );
setSeVolume( spep_3 + 190, 1044, 61 );
setSeVolume( spep_3 + 230, 1044, 48 );
setSeVolume( spep_3 + 272, 1044, 35 );
setSeVolume( spep_3 + 300, 1044, 12 );
setSeVolume( spep_3 + 369, 1044, 0 );
stopSe( spep_3 + 369, SE11, 0 );

--気弾発射
SE12 = playSe( spep_3 + 43, 1213 );
setSeVolume( spep_3 + 43, 1213, 126 );
setSeVolume( spep_3 + 219, 1213, 126 );
setSeVolume( spep_3 + 254, 1213, 102 );
setSeVolume( spep_3 + 278, 1213, 79 );
setSeVolume( spep_3 + 302, 1213, 47 );
setSeVolume( spep_3 + 312, 1213, 12 );
setSeVolume( spep_3 + 317, 1213, 0 );
stopSe( spep_3 + 317, SE12, 0 );

playSe( spep_3 + 47, 1027 );
setSeVolume( spep_3 + 47, 1027, 79 );

playSe( spep_3 + 50, 1188 );
setSeVolume( spep_3 + 50, 1188, 82 );

--爆発
playSe( spep_3 + 107, 1159 );
setSeVolume( spep_3 + 107, 1159, 86 );
playSe( spep_3 + 110, 1024 );
playSe( spep_3 + 118, 1023 );

--余韻
playSe( spep_3 + 151, 1168 );
setSeVolume( spep_3 + 151, 1168, 0 );
setSeVolume( spep_3 + 179, 1168, 4 );
setSeVolume( spep_3 + 184, 1168, 12 );
setSeVolume( spep_3 + 188, 1168, 39 );
setSeVolume( spep_3 + 192, 1168, 45 );
setSeVolume( spep_3 + 196, 1168, 48 );
setSeVolume( spep_3 + 200, 1168, 51 );
setSeVolume( spep_3 + 206, 1168, 54 );
setSeVolume( spep_3 + 210, 1168, 58 );
setSeVolume( spep_3 + 218, 1168, 64 );
setSeVolume( spep_3 + 226, 1168, 69 );
setSeVolume( spep_3 + 230, 1168, 72 );
setSeVolume( spep_3 + 234, 1168, 76 );

playSe( spep_3 + 238, 1033 );
setSeVolume( spep_3 + 238, 1033, 3 );
setSeVolume( spep_3 + 240, 1033, 12 );
setSeVolume( spep_3 + 244, 1033, 33 );
setSeVolume( spep_3 + 248, 1033, 47 );
setSeVolume( spep_3 + 252, 1033, 65 );
setSeVolume( spep_3 + 256, 1033, 73 );
setSeVolume( spep_3 + 260, 1033, 89 );
setSeVolume( spep_3 + 261, 1033, 100 );

-- ** 背景 ** --
entryFadeBg( spep_3 + 0, 0, 380, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** ダメージ表示 ** --
dealDamage( spep_3 + 240 );
endPhase( spep_3 + 376 );

end