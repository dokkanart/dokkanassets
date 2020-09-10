--1018050:サウザー_サウザーブレード

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
SP_01 =	154257	; --溜め
SP_02 =	154259	; --迫る
SP_03 =	154261	; --流線
SP_04 = 154262  ; --斬撃
SP_05 = 154263  ; --フィニッシュ

--敵側
SP_01e = 154258  ; --溜め
SP_02e = 154260  ; --迫る

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
-- 溜め
------------------------------------------------------
--はじめの準備
spep_0 = 0;

-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_0 + 136, tame, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 136, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 136, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 136, tame, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 -3 + 38, 906, 98, 0x100, -1, 0, 0, 0 );
setEffShake( spep_0 -3 + 38, shuchusen1, 98, 20 );
setEffMoveKey( spep_0 -3 + 38, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 -3 + 136, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 -3 + 38, shuchusen1, 1, 1 );
setEffScaleKey( spep_0 -3 + 136, shuchusen1, 1, 1 )

setEffRotateKey( spep_0 -3 + 38, shuchusen1, 0 );
setEffRotateKey( spep_0 -3 + 136, shuchusen1, 0 );

setEffAlphaKey( spep_0 -3 + 38, shuchusen1, 255 );
setEffAlphaKey( spep_0 -3 + 136, shuchusen1, 255 );

spep_x = spep_0 + 40;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 120, 515.5 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );

setEffMoveKey( spep_x + 16, ctgogo, 120, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 120, 515.5 , 0 );

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

-- ** 音 ** --
playSe( spep_0 + 38, 50 );  --気溜め
playSe( spep_x + 16, 1018 );  --ごごご

-- ** 薄い黒フェード ** --
entryFadeBg( spep_0 -3 + 38, 8, 93, 0, 0, 0, 0, 180 );  --white fade

-- ** 白フェード ** --
--entryFade( spep_0 -3 + 28, 8, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_0 -3 + 128, 8, 8, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1 = spep_0 + 136;

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
-- 迫る
------------------------------------------------------

-- ** エフェクト等 ** --
semaru = entryEffect( spep_2 + 0, SP_02,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, semaru, 0, 0 , 0 );
setEffMoveKey( spep_2 + 58, semaru, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, semaru, 1.0, 1.0 );
setEffScaleKey( spep_2 + 58, semaru, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, semaru, 0 );
setEffRotateKey( spep_2 + 58, semaru, 0 );
setEffAlphaKey( spep_2 + 0, semaru, 255 );
setEffAlphaKey( spep_2 + 58, semaru, 255 );

ryusen = entryEffect( spep_2 + 0, SP_03,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, ryusen, 0, 0 , 0 );
setEffMoveKey( spep_2 + 58, ryusen, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, ryusen, 1.0, 1.0 );
setEffScaleKey( spep_2 + 58, ryusen, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, ryusen, 0 );
setEffRotateKey( spep_2 + 58, ryusen, 0 );
setEffAlphaKey( spep_2 + 0, ryusen, 255 );
setEffAlphaKey( spep_2 + 58, ryusen, 255 );

-- ** 敵の動き ** --
setDisp( spep_2 + 0, 1, 1 );
changeAnime( spep_2 + 0, 1, 100 );

--setMoveKey( spep_2 -3 + 0, 1, 172.3, 370.9 , 0 );
setMoveKey( spep_2 -3 + 3, 1, 170.3, 372.2 , 0 );
setMoveKey( spep_2 -3 + 4, 1, 172.4, 365.5 , 0 );
setMoveKey( spep_2 -3 + 6, 1, 167.7, 368.2 , 0 );
setMoveKey( spep_2 -3 + 8, 1, 172.5, 364.1 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 167.8, 366.8 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 169.9, 360.1 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 165.2, 362.8 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 170, 358.7 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 165.3, 361.4 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 167.4, 354.7 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 162.7, 357.4 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 167.5, 353.3 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 163.1, 356.8 , 0 );
setMoveKey( spep_2 -3 + 28, 1, 165.5, 350.8 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 161.1, 354.3 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 166.2, 351.1 , 0 );
setMoveKey( spep_2 -3 + 34, 1, 161.8, 354.6 , 0 );
setMoveKey( spep_2 -3 + 36, 1, 164.2, 348.6 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 159.8, 352.1 , 0 );
setMoveKey( spep_2 -3 + 40, 1, 164.9, 348.8 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 160.5, 352.3 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 162.9, 346.4 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 158.5, 349.9 , 0 );
setMoveKey( spep_2 -3 + 48, 1, 163.6, 346.6 , 0 );
setMoveKey( spep_2 -3 + 50, 1, 159.2, 350.1 , 0 );

--setScaleKey( spep_2 -3 + 0, 1, 0.1, 0.1 );
setScaleKey( spep_2 -3 + 3, 1, 0.17, 0.17 );
setScaleKey( spep_2 -3 + 4, 1, 0.23, 0.23 );
setScaleKey( spep_2 -3 + 6, 1, 0.3, 0.3 );
setScaleKey( spep_2 -3 + 8, 1, 0.37, 0.37 );
setScaleKey( spep_2 -3 + 10, 1, 0.43, 0.43 );
setScaleKey( spep_2 -3 + 12, 1, 0.5, 0.5 );
setScaleKey( spep_2 -3 + 14, 1, 0.57, 0.57 );
setScaleKey( spep_2 -3 + 16, 1, 0.63, 0.63 );
setScaleKey( spep_2 -3 + 18, 1, 0.7, 0.7 );
setScaleKey( spep_2 -3 + 20, 1, 0.77, 0.77 );
setScaleKey( spep_2 -3 + 22, 1, 0.83, 0.83 );
setScaleKey( spep_2 -3 + 24, 1, 0.9, 0.9 );
setScaleKey( spep_2 -3 + 26, 1, 0.9, 0.9 );
setScaleKey( spep_2 -3 + 28, 1, 0.91, 0.91 );
setScaleKey( spep_2 -3 + 34, 1, 0.91, 0.91 );
setScaleKey( spep_2 -3 + 36, 1, 0.92, 0.92 );
setScaleKey( spep_2 -3 + 40, 1, 0.92, 0.92 );
setScaleKey( spep_2 -3 + 42, 1, 0.93, 0.93 );
setScaleKey( spep_2 -3 + 46, 1, 0.93, 0.93 );
setScaleKey( spep_2 -3 + 48, 1, 0.94, 0.94 );
setScaleKey( spep_2 -3 + 50, 1, 0.94, 0.94 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 -3 + 50, 1, 0 );

-- ** 薄い黒フェード ** --
entryFadeBg( spep_2 + 0, 0, 58, 0, 0, 0, 0, 180 );  --white fade

-- ** 音 ** --
SE0 = playSe( spep_2 + 0, 8 ); --迫る

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 -3 + 50; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe( SP_dodge - 12, SE0, 0 );

pauseAll( SP_dodge, 67 );

-- ** カットイン部分 ** --
speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350 );   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350 );   -- 回避の文字表示
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

-- ** 敵の動き ** --
setMoveKey( spep_2 -3 + 52, 1, 161.6, 344.1 , 0 );
setMoveKey( spep_2 -3 + 54, 1, 157.2, 347.6 , 0 );
setMoveKey( spep_2 -3 + 56, 1, 162.3, 344.4 , 0 );
setMoveKey( spep_2 -3 + 58, 1, 158, 347.8 , 0 );

setScaleKey( spep_2 -3 + 52, 1, 0.94, 0.94 );
setScaleKey( spep_2 -3 + 54, 1, 0.94, 0.94 );
setScaleKey( spep_2 -3 + 56, 1, 0.95, 0.95 );
setScaleKey( spep_2 -3 + 58, 1, 0.95, 0.95 );

setRotateKey( spep_2 -3 + 52, 1, 0 );
setRotateKey( spep_2 -3 + 58, 1, 0 );

--白フェード
entryFade( spep_2 + 40, 18, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 58;

------------------------------------------------------
-- 斬撃
------------------------------------------------------

-- ** エフェクト等 ** --
zangeki = entryEffect( spep_3 + 0, SP_04,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, zangeki, 0, 0 , 0 );
setEffMoveKey( spep_3 + 58, zangeki, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, zangeki, -1.0, 1.0 );
setEffScaleKey( spep_3 + 58, zangeki, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, zangeki, 0 );
setEffRotateKey( spep_3 + 58, zangeki, 0 );
setEffAlphaKey( spep_3 + 0, zangeki, 255 );
setEffAlphaKey( spep_3 + 58, zangeki, 255 );

--白フェード
entryFade( spep_3 + 48, 8, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_3 + 0, 1172 ); --切る

-- ** 次の準備 ** --
spep_4 = spep_3 + 58;

------------------------------------------------------
-- フィニッシュ
------------------------------------------------------

-- ** エフェクト等 ** --
finish = entryEffect( spep_4 + 0, SP_05, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_4 + 112, finish, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_4 + 112, finish, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish, 0 );
setEffRotateKey( spep_4 + 112, finish, 0 );
setEffAlphaKey( spep_4 + 0, finish, 255 );
setEffAlphaKey( spep_4 + 112, finish, 255 );

a = 20
b = -120

-- ** ひび割れ ** --
hibiware = entryEffect( spep_4 + 2, 1600, 0x100, -1, 0, 80 + a, -50 + b );  --ひび割れ
setEffMoveKey( spep_4 + 2, hibiware, 80 + a, -50 + b, 0 ); 
setEffMoveKey( spep_4 + 112, hibiware, 80 + a, -50 + b, 0 ); 

setEffScaleKey( spep_4 + 2, hibiware, 1.05, 1.05 );
setEffScaleKey( spep_4 + 112, hibiware, 1.05, 1.05 );

setEffRotateKey( spep_4 + 2, hibiware, 0 );
setEffRotateKey( spep_4 + 112, hibiware, 0 );

setEffAlphaKey( spep_4 + 2, hibiware, 0 );
setEffAlphaKey( spep_4 + 13, hibiware, 0 );
setEffAlphaKey( spep_4 + 14, hibiware, 255 );
setEffAlphaKey( spep_4 + 112, hibiware, 255 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_4 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_4 + 14, shuchusen2, 32, 25 );

setEffMoveKey( spep_4 + 14, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_4 + 46, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_4 + 14, shuchusen2, 1, 1 );
setEffScaleKey( spep_4 + 46, shuchusen2, 1, 1 );

setEffRotateKey( spep_4 + 14, shuchusen2, 0 );
setEffRotateKey( spep_4 + 46, shuchusen2, 0 );

setEffAlphaKey( spep_4 + 14, shuchusen2, 255 );
setEffAlphaKey( spep_4 + 28, shuchusen2, 255 );
setEffAlphaKey( spep_4 + 30, shuchusen2, 252 );
setEffAlphaKey( spep_4 + 32, shuchusen2, 242 );
setEffAlphaKey( spep_4 + 34, shuchusen2, 227 );
setEffAlphaKey( spep_4 + 36, shuchusen2, 205 );
setEffAlphaKey( spep_4 + 38, shuchusen2, 176 );
setEffAlphaKey( spep_4 + 40, shuchusen2, 142 );
setEffAlphaKey( spep_4 + 42, shuchusen2, 101 );
setEffAlphaKey( spep_4 + 44, shuchusen2, 54 );
setEffAlphaKey( spep_4 + 46, shuchusen2, 0 );

shuchusen3 = entryEffectLife( spep_4 + 14,  1657, 98, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_4 + 14, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_4 + 112, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_4 + 14, shuchusen3, 1, 1 );
setEffScaleKey( spep_4 + 112, shuchusen3, 1, 1 );

setEffRotateKey( spep_4 + 14, shuchusen3, 0 );
setEffRotateKey( spep_4 + 112, shuchusen3, 0 );

setEffAlphaKey( spep_4 + 14, shuchusen3, 255 );
setEffAlphaKey( spep_4 + 112, shuchusen3, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_4 + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_4 + 14, ctga, 14, 20 );

setEffMoveKey( spep_4 + 14, ctga, -95, 193.1, 0 );
setEffMoveKey( spep_4 + 112, ctga, -95, 193.1, 0 );

setEffScaleKey( spep_4 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_4 + 112, ctga, 3.2, 3.2 );

setEffRotateKey( spep_4 + 14, ctga, -10.9 );
setEffRotateKey( spep_4 + 15, ctga, -10.9 );
setEffRotateKey( spep_4 + 16, ctga, -14.9 );
setEffRotateKey( spep_4 + 17, ctga, -14.9 );
setEffRotateKey( spep_4 + 18, ctga, -10.9 );
setEffRotateKey( spep_4 + 19, ctga, -10.9 );
setEffRotateKey( spep_4 + 20, ctga, -14.9 );
setEffRotateKey( spep_4 + 21, ctga, -14.9 );
setEffRotateKey( spep_4 + 22, ctga, -10.9 );
setEffRotateKey( spep_4 + 23, ctga, -10.9 );
setEffRotateKey( spep_4 + 24, ctga, -14.9 );
setEffRotateKey( spep_4 + 25, ctga, -14.9 );
setEffRotateKey( spep_4 + 26, ctga, -10.9 );
setEffRotateKey( spep_4 + 27, ctga, -10.9 );
setEffRotateKey( spep_4 + 28, ctga, -14.9 );
setEffRotateKey( spep_4 + 112, ctga, -14.9 );

setEffAlphaKey( spep_4 + 14, ctga, 255 );
setEffAlphaKey( spep_4 + 112, ctga, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_4 -3 + 3, 1, 1 );
changeAnime( spep_4 -3 + 3, 1, 107 );

--setMoveKey( spep_4 -3 + 0, 1, 4.4, 42.3 , 0 );
setMoveKey( spep_4 -3 + 3, 1, -20, 120 , 0 );
setMoveKey( spep_4 -3 + 4, 1, -10, 100 , 0 );
setMoveKey( spep_4 -3 + 12, 1, -20, -255 , 0 );
setMoveKey( spep_4 -3 + 122, 1, -20, -255 , 0 );

--setScaleKey( spep_4 -3 + 0, 1, 0.22, 0.22 );
setScaleKey( spep_4 -3 + 3, 1, 0.05, 0.05 );
setScaleKey( spep_4 -3 + 4, 1, 0.1, 0.1 );
setScaleKey( spep_4 -3 + 6, 1, 0.3, 0.3 );
setScaleKey( spep_4 -3 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_4 -3 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_4 -3 + 12, 1, 1.3, 1.3 );
setScaleKey( spep_4 -3 + 14, 1, 1.4, 1.4 );
setScaleKey( spep_4 -3 + 16, 1, 1.3, 1.3 );
setScaleKey( spep_4 -3 + 18, 1, 1.4, 1.4 );
setScaleKey( spep_4 -3 + 20, 1, 1.3, 1.3 );
setScaleKey( spep_4 -3 + 22, 1, 1.4, 1.4 );
setScaleKey( spep_4 -3 + 24, 1, 1.3, 1.3 );
setScaleKey( spep_4 -3 + 26, 1, 1.3, 1.3 );
setScaleKey( spep_4 -3 + 122, 1, 1.3, 1.3 );

--setRotateKey( spep_4 -3 + 0, 1, 0 );
setRotateKey( spep_4 -3 + 3, 1, 105 );
setRotateKey( spep_4 -3 + 4, 1, 240 );
setRotateKey( spep_4 -3 + 6, 1, 405 );
setRotateKey( spep_4 -3 + 8, 1, 600 );
setRotateKey( spep_4 -3 + 10, 1, 825 );
setRotateKey( spep_4 -3 + 12, 1, 1040 );
setRotateKey( spep_4 -3 + 122, 1, 1040 );

-- ** 音 ** --
playSe( spep_4 + 14, SE_11 );  --割れる音

-- ** ダメージ表示 ** --
dealDamage(spep_4 + 26 );
endPhase( spep_4 + 102 );
else 

------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 溜め
------------------------------------------------------
--はじめの準備
spep_0 = 0;

-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01e, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_0 + 136, tame, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 136, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 136, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 136, tame, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 -3 + 38, 906, 98, 0x100, -1, 0, 0, 0 );
setEffShake( spep_0 -3 + 38, shuchusen1, 98, 20 );
setEffMoveKey( spep_0 -3 + 38, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 -3 + 136, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 -3 + 38, shuchusen1, 1, 1 );
setEffScaleKey( spep_0 -3 + 136, shuchusen1, 1, 1 )

setEffRotateKey( spep_0 -3 + 38, shuchusen1, 0 );
setEffRotateKey( spep_0 -3 + 136, shuchusen1, 0 );

setEffAlphaKey( spep_0 -3 + 38, shuchusen1, 255 );
setEffAlphaKey( spep_0 -3 + 136, shuchusen1, 255 );

spep_x = spep_0 + 40;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 120, 515.5 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );

setEffMoveKey( spep_x + 16, ctgogo, 120, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 120, 515.5 , 0 );

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

-- ** 音 ** --
playSe( spep_0 + 38, 50 );  --気溜め
playSe( spep_x + 16, 1018 );  --ごごご

-- ** 薄い黒フェード ** --
entryFadeBg( spep_0 -3 + 38, 8, 93, 0, 0, 0, 0, 180 );  --white fade

-- ** 白フェード ** --
--entryFade( spep_0 -3 + 28, 8, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_0 -3 + 128, 8, 8, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1 = spep_0 + 136;

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
-- 迫る
------------------------------------------------------

-- ** エフェクト等 ** --
semaru = entryEffect( spep_2 + 0, SP_02e,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, semaru, 0, 0 , 0 );
setEffMoveKey( spep_2 + 58, semaru, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, semaru, 1.0, 1.0 );
setEffScaleKey( spep_2 + 58, semaru, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, semaru, 0 );
setEffRotateKey( spep_2 + 58, semaru, 0 );
setEffAlphaKey( spep_2 + 0, semaru, 255 );
setEffAlphaKey( spep_2 + 58, semaru, 255 );

ryusen = entryEffect( spep_2 + 0, SP_03,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, ryusen, 0, 0 , 0 );
setEffMoveKey( spep_2 + 58, ryusen, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, ryusen, 1.0, 1.0 );
setEffScaleKey( spep_2 + 58, ryusen, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, ryusen, 0 );
setEffRotateKey( spep_2 + 58, ryusen, 0 );
setEffAlphaKey( spep_2 + 0, ryusen, 255 );
setEffAlphaKey( spep_2 + 58, ryusen, 255 );

-- ** 敵の動き ** --
setDisp( spep_2 + 0, 1, 1 );
changeAnime( spep_2 + 0, 1, 100 );

--setMoveKey( spep_2 -3 + 0, 1, 172.3, 370.9 , 0 );
setMoveKey( spep_2 -3 + 3, 1, 170.3, 372.2 , 0 );
setMoveKey( spep_2 -3 + 4, 1, 172.4, 365.5 , 0 );
setMoveKey( spep_2 -3 + 6, 1, 167.7, 368.2 , 0 );
setMoveKey( spep_2 -3 + 8, 1, 172.5, 364.1 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 167.8, 366.8 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 169.9, 360.1 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 165.2, 362.8 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 170, 358.7 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 165.3, 361.4 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 167.4, 354.7 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 162.7, 357.4 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 167.5, 353.3 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 163.1, 356.8 , 0 );
setMoveKey( spep_2 -3 + 28, 1, 165.5, 350.8 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 161.1, 354.3 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 166.2, 351.1 , 0 );
setMoveKey( spep_2 -3 + 34, 1, 161.8, 354.6 , 0 );
setMoveKey( spep_2 -3 + 36, 1, 164.2, 348.6 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 159.8, 352.1 , 0 );
setMoveKey( spep_2 -3 + 40, 1, 164.9, 348.8 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 160.5, 352.3 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 162.9, 346.4 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 158.5, 349.9 , 0 );
setMoveKey( spep_2 -3 + 48, 1, 163.6, 346.6 , 0 );
setMoveKey( spep_2 -3 + 50, 1, 159.2, 350.1 , 0 );

--setScaleKey( spep_2 -3 + 0, 1, 0.1, 0.1 );
setScaleKey( spep_2 -3 + 3, 1, 0.17, 0.17 );
setScaleKey( spep_2 -3 + 4, 1, 0.23, 0.23 );
setScaleKey( spep_2 -3 + 6, 1, 0.3, 0.3 );
setScaleKey( spep_2 -3 + 8, 1, 0.37, 0.37 );
setScaleKey( spep_2 -3 + 10, 1, 0.43, 0.43 );
setScaleKey( spep_2 -3 + 12, 1, 0.5, 0.5 );
setScaleKey( spep_2 -3 + 14, 1, 0.57, 0.57 );
setScaleKey( spep_2 -3 + 16, 1, 0.63, 0.63 );
setScaleKey( spep_2 -3 + 18, 1, 0.7, 0.7 );
setScaleKey( spep_2 -3 + 20, 1, 0.77, 0.77 );
setScaleKey( spep_2 -3 + 22, 1, 0.83, 0.83 );
setScaleKey( spep_2 -3 + 24, 1, 0.9, 0.9 );
setScaleKey( spep_2 -3 + 26, 1, 0.9, 0.9 );
setScaleKey( spep_2 -3 + 28, 1, 0.91, 0.91 );
setScaleKey( spep_2 -3 + 34, 1, 0.91, 0.91 );
setScaleKey( spep_2 -3 + 36, 1, 0.92, 0.92 );
setScaleKey( spep_2 -3 + 40, 1, 0.92, 0.92 );
setScaleKey( spep_2 -3 + 42, 1, 0.93, 0.93 );
setScaleKey( spep_2 -3 + 46, 1, 0.93, 0.93 );
setScaleKey( spep_2 -3 + 48, 1, 0.94, 0.94 );
setScaleKey( spep_2 -3 + 50, 1, 0.94, 0.94 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 -3 + 50, 1, 0 );

-- ** 薄い黒フェード ** --
entryFadeBg( spep_2 + 0, 0, 58, 0, 0, 0, 0, 180 );  --white fade

-- ** 音 ** --
SE0 = playSe( spep_2 + 0, 8 ); --迫る

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 -3 + 50; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe( SP_dodge - 12, SE0, 0 );

pauseAll( SP_dodge, 67 );

-- ** カットイン部分 ** --
speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350 );   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350 );   -- 回避の文字表示
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

-- ** 敵の動き ** --
setMoveKey( spep_2 -3 + 52, 1, 161.6, 344.1 , 0 );
setMoveKey( spep_2 -3 + 54, 1, 157.2, 347.6 , 0 );
setMoveKey( spep_2 -3 + 56, 1, 162.3, 344.4 , 0 );
setMoveKey( spep_2 -3 + 58, 1, 158, 347.8 , 0 );

setScaleKey( spep_2 -3 + 52, 1, 0.94, 0.94 );
setScaleKey( spep_2 -3 + 54, 1, 0.94, 0.94 );
setScaleKey( spep_2 -3 + 56, 1, 0.95, 0.95 );
setScaleKey( spep_2 -3 + 58, 1, 0.95, 0.95 );

setRotateKey( spep_2 -3 + 52, 1, 0 );
setRotateKey( spep_2 -3 + 58, 1, 0 );

--白フェード
entryFade( spep_2 + 40, 18, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 58;

------------------------------------------------------
-- 斬撃
------------------------------------------------------

-- ** エフェクト等 ** --
zangeki = entryEffect( spep_3 + 0, SP_04,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, zangeki, 0, 0 , 0 );
setEffMoveKey( spep_3 + 58, zangeki, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, zangeki, 1.0, 1.0 );
setEffScaleKey( spep_3 + 58, zangeki, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, zangeki, 0 );
setEffRotateKey( spep_3 + 58, zangeki, 0 );
setEffAlphaKey( spep_3 + 0, zangeki, 255 );
setEffAlphaKey( spep_3 + 58, zangeki, 255 );

--白フェード
entryFade( spep_3 + 48, 8, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_3 + 0, 1172 ); --切る

-- ** 次の準備 ** --
spep_4 = spep_3 + 58;

------------------------------------------------------
-- フィニッシュ
------------------------------------------------------

-- ** エフェクト等 ** --
finish = entryEffect( spep_4 + 0, SP_05, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_4 + 112, finish, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish, -1.0, 1.0 );
setEffScaleKey( spep_4 + 112, finish, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish, 0 );
setEffRotateKey( spep_4 + 112, finish, 0 );
setEffAlphaKey( spep_4 + 0, finish, 255 );
setEffAlphaKey( spep_4 + 112, finish, 255 );

a = -20
b = -120

-- ** ひび割れ ** --
hibiware = entryEffect( spep_4 + 2, 1600, 0x100, -1, 0, 80 + a, -50 + b );  --ひび割れ
setEffMoveKey( spep_4 + 2, hibiware, -80 + a, -50 + b, 0 ); 
setEffMoveKey( spep_4 + 112, hibiware, -80 + a, -50 + b, 0 ); 

setEffScaleKey( spep_4 + 2, hibiware, -1.05, 1.05 );
setEffScaleKey( spep_4 + 112, hibiware, -1.05, 1.05 );

setEffRotateKey( spep_4 + 2, hibiware, 0 );
setEffRotateKey( spep_4 + 112, hibiware, 0 );

setEffAlphaKey( spep_4 + 2, hibiware, 0 );
setEffAlphaKey( spep_4 + 13, hibiware, 0 );
setEffAlphaKey( spep_4 + 14, hibiware, 255 );
setEffAlphaKey( spep_4 + 112, hibiware, 255 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_4 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_4 + 14, shuchusen2, 32, 25 );

setEffMoveKey( spep_4 + 14, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_4 + 46, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_4 + 14, shuchusen2, 1, 1 );
setEffScaleKey( spep_4 + 46, shuchusen2, 1, 1 );

setEffRotateKey( spep_4 + 14, shuchusen2, 0 );
setEffRotateKey( spep_4 + 46, shuchusen2, 0 );

setEffAlphaKey( spep_4 + 14, shuchusen2, 255 );
setEffAlphaKey( spep_4 + 28, shuchusen2, 255 );
setEffAlphaKey( spep_4 + 30, shuchusen2, 252 );
setEffAlphaKey( spep_4 + 32, shuchusen2, 242 );
setEffAlphaKey( spep_4 + 34, shuchusen2, 227 );
setEffAlphaKey( spep_4 + 36, shuchusen2, 205 );
setEffAlphaKey( spep_4 + 38, shuchusen2, 176 );
setEffAlphaKey( spep_4 + 40, shuchusen2, 142 );
setEffAlphaKey( spep_4 + 42, shuchusen2, 101 );
setEffAlphaKey( spep_4 + 44, shuchusen2, 54 );
setEffAlphaKey( spep_4 + 46, shuchusen2, 0 );

shuchusen3 = entryEffectLife( spep_4 + 14,  1657, 98, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_4 + 14, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_4 + 112, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_4 + 14, shuchusen3, 1, 1 );
setEffScaleKey( spep_4 + 112, shuchusen3, 1, 1 );

setEffRotateKey( spep_4 + 14, shuchusen3, 0 );
setEffRotateKey( spep_4 + 112, shuchusen3, 0 );

setEffAlphaKey( spep_4 + 14, shuchusen3, 255 );
setEffAlphaKey( spep_4 + 112, shuchusen3, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_4 + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_4 + 14, ctga, 14, 20 );

setEffMoveKey( spep_4 + 14, ctga, 95, 193.1, 0 );
setEffMoveKey( spep_4 + 112, ctga, 95, 193.1, 0 );

setEffScaleKey( spep_4 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_4 + 112, ctga, 3.2, 3.2 );

setEffRotateKey( spep_4 + 14, ctga, 10.9 );
setEffRotateKey( spep_4 + 15, ctga, 10.9 );
setEffRotateKey( spep_4 + 16, ctga, 14.9 );
setEffRotateKey( spep_4 + 17, ctga, 14.9 );
setEffRotateKey( spep_4 + 18, ctga, 10.9 );
setEffRotateKey( spep_4 + 19, ctga, 10.9 );
setEffRotateKey( spep_4 + 20, ctga, 14.9 );
setEffRotateKey( spep_4 + 21, ctga, 14.9 );
setEffRotateKey( spep_4 + 22, ctga, 10.9 );
setEffRotateKey( spep_4 + 23, ctga, 10.9 );
setEffRotateKey( spep_4 + 24, ctga, 14.9 );
setEffRotateKey( spep_4 + 25, ctga, 14.9 );
setEffRotateKey( spep_4 + 26, ctga, 10.9 );
setEffRotateKey( spep_4 + 27, ctga, 10.9 );
setEffRotateKey( spep_4 + 28, ctga, 14.9 );
setEffRotateKey( spep_4 + 112, ctga, 14.9 );

setEffAlphaKey( spep_4 + 14, ctga, 255 );
setEffAlphaKey( spep_4 + 112, ctga, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_4 -3 + 3, 1, 1 );
changeAnime( spep_4 -3 + 3, 1, 107 );

--setMoveKey( spep_4 -3 + 0, 1, 4.4, 42.3 , 0 );
setMoveKey( spep_4 -3 + 3, 1, 20, 120 , 0 );
setMoveKey( spep_4 -3 + 4, 1, 10, 100 , 0 );
setMoveKey( spep_4 -3 + 12, 1, 20, -255 , 0 );
setMoveKey( spep_4 -3 + 122, 1, 20, -255 , 0 );

--setScaleKey( spep_4 -3 + 0, 1, 0.22, 0.22 );
setScaleKey( spep_4 -3 + 3, 1, -0.05, 0.05 );
setScaleKey( spep_4 -3 + 4, 1, -0.1, 0.1 );
setScaleKey( spep_4 -3 + 6, 1, -0.3, 0.3 );
setScaleKey( spep_4 -3 + 8, 1, -0.93, 0.93 );
setScaleKey( spep_4 -3 + 10, 1, -1.2, 1.2 );
setScaleKey( spep_4 -3 + 12, 1, -1.3, 1.3 );
setScaleKey( spep_4 -3 + 14, 1, -1.4, 1.4 );
setScaleKey( spep_4 -3 + 16, 1, -1.3, 1.3 );
setScaleKey( spep_4 -3 + 18, 1, -1.4, 1.4 );
setScaleKey( spep_4 -3 + 20, 1, -1.3, 1.3 );
setScaleKey( spep_4 -3 + 22, 1, -1.4, 1.4 );
setScaleKey( spep_4 -3 + 24, 1, -1.3, 1.3 );
setScaleKey( spep_4 -3 + 26, 1, -1.3, 1.3 );
setScaleKey( spep_4 -3 + 122, 1, -1.3, 1.3 );

--setRotateKey( spep_4 -3 + 0, 1, 0 );
setRotateKey( spep_4 -3 + 3, 1, -105 );
setRotateKey( spep_4 -3 + 4, 1, -240 );
setRotateKey( spep_4 -3 + 6, 1, -405 );
setRotateKey( spep_4 -3 + 8, 1, -600 );
setRotateKey( spep_4 -3 + 10, 1, -825 );
setRotateKey( spep_4 -3 + 12, 1, -1040 );
setRotateKey( spep_4 -3 + 122, 1, -1040 );

-- ** 音 ** --
playSe( spep_4 + 14, SE_11 );  --割れる音

-- ** ダメージ表示 ** --
dealDamage(spep_4 + 26 );
endPhase( spep_4 + 102 );


end

