--1018010:人造人間17号&18号/人造人間16号_ブラッディクラッシュ
--sp_effect_b4_00109

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

--エフェクト(レッドリボン軍衣)
SP_01=	154110	;--	登場
SP_02=	154113	;--	突進〜ラッシュ〜フィニッシュ
SP_03=	154116	;--	背景

--[[
--エフェクト(ウエスタン衣装)
SP_01=	154111	;--	登場
SP_02=	154114	;--	突進〜ラッシュ〜フィニッシュ
SP_03=	154116	;--	背景
]]--

--[[
--エフェクト(パンツ衣装)
SP_01=	154112	;--	登場
SP_02=	154115	;--	突進〜ラッシュ〜フィニッシュ
SP_03=	154116	;--	背景
]]--

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
-- 登場
------------------------------------------------------
--はじめの準備
spep_0 = 0;

-- ** エフェクト等 ** --
appearance = entryEffect( spep_0 + 0, SP_01,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, appearance, 0, 0 , 0 );
setEffMoveKey( spep_0 + 120, appearance, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, appearance, 1.0, 1.0 );
setEffScaleKey( spep_0 + 120, appearance, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, appearance, 0 );
setEffRotateKey( spep_0 + 120, appearance, 0 );
setEffAlphaKey( spep_0 + 0, appearance, 255 );
setEffAlphaKey( spep_0 + 120, appearance, 255 );

--流線
ryusen1 = entryEffectLife( spep_0  + 0,  914, 28 -3, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_0  + 0, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 -3 + 28, ryusen1, 0, 0 , 0 );

setEffScaleKey( spep_0  + 0, ryusen1, 5.84, 1.23 );
setEffScaleKey( spep_0 -3 +28, ryusen1, 5.84, 1.23 );

setEffRotateKey( spep_0  + 0, ryusen1, 90 );
setEffRotateKey( spep_0 -3 + 28, ryusen1, 90 );

setEffAlphaKey( spep_0  + 0, ryusen1, 191 );
setEffAlphaKey( spep_0 -3 + 18, ryusen1, 191 );
setEffAlphaKey( spep_0 -3 + 20, ryusen1, 153 );
setEffAlphaKey( spep_0 -3 + 22, ryusen1, 115 );
setEffAlphaKey( spep_0 -3 + 24, ryusen1, 77 );
setEffAlphaKey( spep_0 -3 + 26, ryusen1, 38 );
setEffAlphaKey( spep_0 -3 + 28, ryusen1, 0 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_0  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_0 +12, 190006, 72, 0x100, -1, 0, 0, 510);    -- ゴゴゴゴ

setEffMoveKey(  spep_0 +12,  ctgogo,  0,  510);
setEffMoveKey(  spep_0 +84,  ctgogo,  0,  510);

setEffAlphaKey( spep_0 +12, ctgogo, 0 );
setEffAlphaKey( spep_0 + 13, ctgogo, 255 );
setEffAlphaKey( spep_0 + 14, ctgogo, 255 );
setEffAlphaKey( spep_0 + 76, ctgogo, 255 );
setEffAlphaKey( spep_0 + 78, ctgogo, 255 );
setEffAlphaKey( spep_0 + 80, ctgogo, 191 );
setEffAlphaKey( spep_0 + 82, ctgogo, 128 );
setEffAlphaKey( spep_0 + 84, ctgogo, 64 );

setEffRotateKey(  spep_0 +12,  ctgogo,  0);
setEffRotateKey(  spep_0 +84,  ctgogo,  0);

setEffScaleKey(  spep_0 +12,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0 +74,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0 +84,  ctgogo, 1.07, 1.07 );

--音
playSe( spep_0 + 0, 8 );  --冒頭
playSe( spep_0 + 12, 1018 );  --ごごご

--白フェード
entryFade( spep_0 + 112, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1 = spep_0 + 120;

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
-- 突進〜ラッシュ〜フィニッシュ
------------------------------------------------------

-- ** エフェクト等 ** --
finish = entryEffect( spep_2 + 0, SP_02,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_2 + 782, finish, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_2 + 782, finish, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish, 0 );
setEffRotateKey( spep_2 + 782, finish, 0 );
setEffAlphaKey( spep_2 + 0, finish, 255 );
setEffAlphaKey( spep_2 + 782, finish, 255 );

-- ** エフェクト等 ** --
bg = entryEffect( spep_2 + 0, SP_03,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, bg, 0, 0 , 0 );
setEffMoveKey( spep_2 + 782, bg, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, bg, 1.0, 1.0 );
setEffScaleKey( spep_2 + 782, bg, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, bg, 0 );
setEffRotateKey( spep_2 + 782, bg, 0 );
setEffAlphaKey( spep_2 + 0, bg, 255 );
setEffAlphaKey( spep_2 + 782, bg, 255 );

--集中線
shuchusen1 = entryEffectLife( spep_2 -3 + 10,  906, 58, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_2 -3+ 10, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_2 + 64, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_2 -3 + 10, shuchusen1, 1.34, 1.21 );
setEffScaleKey( spep_2 + 64, shuchusen1, 1.34, 1.21 );

setEffRotateKey( spep_2 -3 + 10, shuchusen1, 180 );
setEffRotateKey( spep_2 + 64, shuchusen1, 180 );

setEffAlphaKey( spep_2 -3 + 10, shuchusen1, 255 );
setEffAlphaKey( spep_2 + 64, shuchusen1, 255 );
setEffAlphaKey( spep_2 + 65, shuchusen1, 0 );

--音
SE0 = playSe( spep_2 + 8, 1007 );  --崖から移動
SE1 = playSe( spep_2 + 26, 1007 );  --崖から移動
SE2 = playSe( spep_2 + 26, 8 );  --手前に迫る

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 50; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE0, 0 );
    stopSe( SP_dodge - 12, SE1, 0 );
    stopSe( SP_dodge - 12, SE2, 0 );
    
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

--集中線    
shuchusen2 = entryEffectLife( spep_2  + 389,  906, 30, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_2  + 389, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_2  + 419, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_2  + 389, shuchusen2, 1.34, 1.21 );
setEffScaleKey( spep_2  + 419, shuchusen2, 1.34, 1.21 );

setEffRotateKey( spep_2  + 389, shuchusen2, 180 );
setEffRotateKey( spep_2  + 419, shuchusen2, 180 );

setEffAlphaKey( spep_2  + 389, shuchusen2, 255 );
setEffAlphaKey( spep_2  + 419, shuchusen2, 255 );

--集中線    
shuchusen3 = entryEffectLife( spep_2  + 657,  906, 114, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_2  + 657, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_2  + 770, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_2  + 657, shuchusen3, 1.34, 1.21 );
setEffScaleKey( spep_2  + 770, shuchusen3, 1.34, 1.21 );

setEffRotateKey( spep_2  + 657, shuchusen3, 180 );
setEffRotateKey( spep_2  + 770, shuchusen3, 180 );

setEffAlphaKey( spep_2  + 657, shuchusen3, 255 );
setEffAlphaKey( spep_2  + 770, shuchusen3, 255 );

--流線
ryusen2 = entryEffectLife( spep_2 -3 + 128,  914, 16, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_2 -3 + 128, ryusen2, 0, 0 , 0 );
setEffMoveKey( spep_2 -3 + 144, ryusen2, 0, 0 , 0 );

setEffScaleKey( spep_2 -3 + 128, ryusen2, 5.84, 1.23 );
setEffScaleKey( spep_2 -3 + 144, ryusen2, 5.84, 1.23 );

setEffRotateKey( spep_2 -3 + 128, ryusen2, 0 );
setEffRotateKey( spep_2 -3 + 144, ryusen2, 0 );

setEffAlphaKey( spep_2 -3 + 128, ryusen2, 191 );
setEffAlphaKey( spep_2 -3 + 136, ryusen2, 191 );
setEffAlphaKey( spep_2 -3 + 138, ryusen2, 143 );
setEffAlphaKey( spep_2 -3 + 140, ryusen2, 96 );
setEffAlphaKey( spep_2 -3 + 142, ryusen2, 48 );
setEffAlphaKey( spep_2 -3 + 144, ryusen2, 0 );

--流線
ryusen3 = entryEffectLife( spep_2 -3 + 328,  914, 18, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_2 -3 + 328, ryusen3, 0, 0 , 0 );
setEffMoveKey( spep_2 -3 + 346, ryusen3, 0, 0 , 0 );

setEffScaleKey( spep_2 -3 + 328, ryusen3, 5.84, 1.23 );
setEffScaleKey( spep_2 -3 + 346, ryusen3, 5.84, 1.23 );

setEffRotateKey( spep_2 -3 + 328, ryusen3, 0 );
setEffRotateKey( spep_2 -3 + 346, ryusen3, 0 );

setEffAlphaKey( spep_2 -3 + 328, ryusen3, 191 );
setEffAlphaKey( spep_2 -3 + 338, ryusen3, 191 );
setEffAlphaKey( spep_2 -3 + 340, ryusen3, 143 );
setEffAlphaKey( spep_2 -3 + 342, ryusen3, 96 );
setEffAlphaKey( spep_2 -3 + 344, ryusen3, 48 );
setEffAlphaKey( spep_2 -3 + 346, ryusen3, 0 );

--文字エントリー
caga = entryEffectLife( spep_2 -3 + 86,  10005, 24, 0x100, -1, 0, -167.8, 121.5 );--ガッ

setEffMoveKey( spep_2 -3 + 86, caga, -167.8, 121.5 , 0 );
setEffMoveKey( spep_2 -3 + 88, caga, -153.8, 221 , 0 );
setEffMoveKey( spep_2 -3 + 90, caga, -142.2, 240.9 , 0 );
setEffMoveKey( spep_2 -3 + 92, caga, -154.6, 221.6 , 0 );
setEffMoveKey( spep_2 -3 + 94, caga, -143, 241.6 , 0 );
setEffMoveKey( spep_2 -3 + 96, caga, -155.4, 222.2 , 0 );
setEffMoveKey( spep_2 -3 + 98, caga, -143.7, 242.3 , 0 );
setEffMoveKey( spep_2 -3 + 100, caga, -156.2, 222.8 , 0 );
setEffMoveKey( spep_2 -3 + 102, caga, -144.5, 243 , 0 );
setEffMoveKey( spep_2 -3 + 104, caga, -157, 223.5 , 0 );
setEffMoveKey( spep_2 -3 + 106, caga, -141, 239.5 , 0 );
setEffMoveKey( spep_2 -3 + 108, caga, -148.6, 216.7 , 0 );
setEffMoveKey( spep_2 -3 + 110, caga, -144.4, 213.3 , 0 );

b=1.2;
setEffScaleKey( spep_2 -3 + 86, caga, 0.72, 0.72 );
setEffScaleKey( spep_2 -3 + 88, caga, 1.32+b, 1.46+b );
setEffScaleKey( spep_2 -3 + 90, caga, 1.32+b, 1.46+b );
setEffScaleKey( spep_2 -3 + 92, caga, 1.33+b, 1.47+b );
setEffScaleKey( spep_2 -3 + 94, caga, 1.33+b, 1.47+b );
setEffScaleKey( spep_2 -3 + 96, caga, 1.34+b, 1.48+b );
setEffScaleKey( spep_2 -3 + 100, caga, 1.34+b, 1.48+b );
setEffScaleKey( spep_2 -3 + 102, caga, 1.35+b, 1.49+b );
setEffScaleKey( spep_2 -3 + 104, caga, 1.35+b, 1.49+b );
setEffScaleKey( spep_2 -3 + 106, caga, 1.31+b, 1.45+b );
setEffScaleKey( spep_2 -3 + 108, caga, 1.28+b, 1.41+b );
setEffScaleKey( spep_2 -3 + 110, caga, 1.24 +b, 1.37+b );

setEffRotateKey( spep_2 -3 + 86, caga, 20 );
setEffRotateKey( spep_2 -3 + 110, caga, 20 );

setEffAlphaKey( spep_2 -3 + 86, caga, 255 );
setEffAlphaKey( spep_2 -3 + 104, caga, 255 );
setEffAlphaKey( spep_2 -3 + 106, caga, 170 );
setEffAlphaKey( spep_2 -3 + 108, caga, 85 );
setEffAlphaKey( spep_2 -3 + 110, caga, 0 );

--文字エントリー
ctzun = entryEffectLife( spep_2 -3 + 204,  10016, 26, 0x100, -1, 0, 9.2, 218.3 );--ズンッ

setEffMoveKey( spep_2 -3 + 204, ctzun, 9.2, 218.3 , 0 );
setEffMoveKey( spep_2 -3 + 206, ctzun, -36.8, 224.3 , 0 );
setEffMoveKey( spep_2 -3 + 208, ctzun, -36.8, 224.3 , 0 );
setEffMoveKey( spep_2 -3 + 210, ctzun, -45.1, 229.9 , 0 );
setEffMoveKey( spep_2 -3 + 212, ctzun, -33.9, 227.1 , 0 );
setEffMoveKey( spep_2 -3 + 214, ctzun, -42.2, 232.7 , 0 );
setEffMoveKey( spep_2 -3 + 216, ctzun, -30.9, 229.9 , 0 );
setEffMoveKey( spep_2 -3 + 218, ctzun, -39.4, 235.5 , 0 );
setEffMoveKey( spep_2 -3 + 220, ctzun, -28, 232.7 , 0 );
setEffMoveKey( spep_2 -3 + 222, ctzun, -26.5, 234.1 , 0 );
setEffMoveKey( spep_2 -3 + 224, ctzun, -36.7, 238.4 , 0 );
setEffMoveKey( spep_2 -3 + 226, ctzun, -26.4, 234.1 , 0 );
setEffMoveKey( spep_2 -3 + 228, ctzun, -37, 238.5 , 0 );
setEffMoveKey( spep_2 -3 + 230, ctzun, -37.1, 238.5 , 0 );

setEffScaleKey( spep_2 -3 + 204, ctzun, 1.73, 1.75 );
setEffScaleKey( spep_2 -3 + 206, ctzun, 3.74, 3.77 );
setEffScaleKey( spep_2 -3 + 208, ctzun, 3.74, 3.77 );
setEffScaleKey( spep_2 -3 + 210, ctzun, 3.76, 3.79 );
setEffScaleKey( spep_2 -3 + 212, ctzun, 3.77, 3.8 );
setEffScaleKey( spep_2 -3 + 214, ctzun, 3.79, 3.82 );
setEffScaleKey( spep_2 -3 + 216, ctzun, 3.81, 3.83 );
setEffScaleKey( spep_2 -3 + 218, ctzun, 3.83, 3.85 );
setEffScaleKey( spep_2 -3 + 220, ctzun, 3.84, 3.86 );
setEffScaleKey( spep_2 -3 + 222, ctzun, 3.86, 3.88 );
setEffScaleKey( spep_2 -3 + 224, ctzun, 3.94, 3.96 );
setEffScaleKey( spep_2 -3 + 226, ctzun, 4.01, 4.04 );
setEffScaleKey( spep_2 -3 + 228, ctzun, 4.09, 4.11 );
setEffScaleKey( spep_2 -3 + 230, ctzun, 4.17, 4.19 );

setEffRotateKey( spep_2 -3 + 204, ctzun, 0 );
setEffRotateKey( spep_2 -3 + 230, ctzun, 0 );

setEffAlphaKey( spep_2 -3 + 204, ctzun, 255 );
setEffAlphaKey( spep_2 -3 + 222, ctzun, 255 );
setEffAlphaKey( spep_2 -3 + 224, ctzun, 191 );
setEffAlphaKey( spep_2 -3 + 226, ctzun, 128 );
setEffAlphaKey( spep_2 -3 + 228, ctzun, 64 );
setEffAlphaKey( spep_2 -3 + 230, ctzun, 0 );

--文字エントリー
ctbaki = entryEffectLife( spep_2 -3 + 300,  10020, 26, 0x100, -1, 0, -149.8, 157.8 );--バキッ

setEffMoveKey( spep_2 -3 + 300, ctbaki, -149.8, 157.8 , 0 );
setEffMoveKey( spep_2 -3 + 302, ctbaki, -140.3, 198.4 , 0 );
setEffMoveKey( spep_2 -3 + 304, ctbaki, -122.2, 193.2 , 0 );
setEffMoveKey( spep_2 -3 + 306, ctbaki, -128.7, 205.1 , 0 );
setEffMoveKey( spep_2 -3 + 308, ctbaki, -114.9, 194.4 , 0 );
setEffMoveKey( spep_2 -3 + 310, ctbaki, -126.9, 197.7 , 0 );
setEffMoveKey( spep_2 -3 + 312, ctbaki, -115.8, 205.6 , 0 );
setEffMoveKey( spep_2 -3 + 314, ctbaki, -116.7, 193 , 0 );
setEffMoveKey( spep_2 -3 + 316, ctbaki, -116.1, 210.1 , 0 );
setEffMoveKey( spep_2 -3 + 318, ctbaki, -110.5, 199.6 , 0 );
setEffMoveKey( spep_2 -3 + 320, ctbaki, -115.6, 206.6 , 0 );
setEffMoveKey( spep_2 -3 + 322, ctbaki, -109.7, 200.5 , 0 );
setEffMoveKey( spep_2 -3 + 324, ctbaki, -105.4, 209.7 , 0 );
setEffMoveKey( spep_2 -3 + 326, ctbaki, -106.7, 202.1 , 0 );

setEffScaleKey( spep_2 -3 + 300, ctbaki, 0.82, 0.79 );
setEffScaleKey( spep_2 -3 + 302, ctbaki, 2.28, 2.19 );
setEffScaleKey( spep_2 -3 + 304, ctbaki, 2.3, 2.21 );
setEffScaleKey( spep_2 -3 + 306, ctbaki, 2.32, 2.23 );
setEffScaleKey( spep_2 -3 + 308, ctbaki, 2.34, 2.25 );
setEffScaleKey( spep_2 -3 + 310, ctbaki, 2.36, 2.27 );
setEffScaleKey( spep_2 -3 + 312, ctbaki, 2.38, 2.29 );
setEffScaleKey( spep_2 -3 + 314, ctbaki, 2.4, 2.3 );
setEffScaleKey( spep_2 -3 + 316, ctbaki, 2.43, 2.32 );
setEffScaleKey( spep_2 -3 + 318, ctbaki, 2.45, 2.34 );
setEffScaleKey( spep_2 -3 + 320, ctbaki, 2.47, 2.36 );
setEffScaleKey( spep_2 -3 + 322, ctbaki, 2.49, 2.38 );
setEffScaleKey( spep_2 -3 + 324, ctbaki, 2.51, 2.4 );
setEffScaleKey( spep_2 -3 + 326, ctbaki, 2.53, 2.42 );

setEffRotateKey( spep_2 -3 + 300, ctbaki, 12.7 );
setEffRotateKey( spep_2 -3 + 326, ctbaki, 12.7 );

setEffAlphaKey( spep_2 -3 + 300, ctbaki, 255 );
setEffAlphaKey( spep_2 -3 + 326, ctbaki, 255 );

--文字エントリー
ctga2 = entryEffectLife( spep_2 -3 + 364,  10005, 24, 0x100, -1, 0, 155.2, 200.6 );--ガッ

setEffMoveKey( spep_2 -3 + 364, ctga2, 155.2, 200.6 , 0 );
setEffMoveKey( spep_2 -3 + 366, ctga2, 177.3, 280.2 , 0 );
setEffMoveKey( spep_2 -3 + 368, ctga2, 190.5, 294.5 , 0 );
setEffMoveKey( spep_2 -3 + 370, ctga2, 176.4, 281.3 , 0 );
setEffMoveKey( spep_2 -3 + 372, ctga2, 189.7, 295.8 , 0 );
setEffMoveKey( spep_2 -3 + 374, ctga2, 175.5, 282.5 , 0 );
setEffMoveKey( spep_2 -3 + 376, ctga2, 188.9, 297 , 0 );
setEffMoveKey( spep_2 -3 + 378, ctga2, 174.5, 283.7 , 0 );
setEffMoveKey( spep_2 -3 + 380, ctga2, 188.1, 298.3 , 0 );
setEffMoveKey( spep_2 -3 + 382, ctga2, 173.6, 284.8 , 0 );
setEffMoveKey( spep_2 -3 + 384, ctga2, 186.4, 301 , 0 );
setEffMoveKey( spep_2 -3 + 386, ctga2, 170.7, 288.5 , 0 );
setEffMoveKey( spep_2 -3 + 388, ctga2, 169.2, 290.3 , 0 );

setEffScaleKey( spep_2 -3 + 364, ctga2, 0.75, 0.71 );
setEffScaleKey( spep_2 -3 + 366, ctga2, 1.12+b, 1.23+b );
setEffScaleKey( spep_2 -3 + 368, ctga2, 1.13+b, 1.23+b );
setEffScaleKey( spep_2 -3 + 370, ctga2, 1.13+b, 1.24+b );
setEffScaleKey( spep_2 -3 + 372, ctga2, 1.14+b, 1.25+b );
setEffScaleKey( spep_2 -3 + 374, ctga2, 1.14+b, 1.25+b );
setEffScaleKey( spep_2 -3 + 376, ctga2, 1.15+b, 1.25+b );
setEffScaleKey( spep_2 -3 + 378, ctga2, 1.15+b, 1.26+b );
setEffScaleKey( spep_2 -3 + 380, ctga2, 1.16+b, 1.27+b );
setEffScaleKey( spep_2 -3 + 382, ctga2, 1.16+b, 1.27+b );
setEffScaleKey( spep_2 -3 + 384, ctga2, 1.17+b, 1.29+b );
setEffScaleKey( spep_2 -3 + 386, ctga2, 1.19+b, 1.31+b );
setEffScaleKey( spep_2 -3 + 388, ctga2, 1.2+b, 1.33+b );

setEffRotateKey( spep_2 -3 + 364, ctga2, 20 );
setEffRotateKey( spep_2 -3 + 388, ctga2, 20 );

setEffAlphaKey( spep_2 -3 + 364, ctga2, 255 );
setEffAlphaKey( spep_2 -3 + 382, ctga2, 255 );
setEffAlphaKey( spep_2 -3 + 384, ctga2, 170 );
setEffAlphaKey( spep_2 -3 + 386, ctga2, 85 );
setEffAlphaKey( spep_2 -3 + 388, ctga2, 0 );

--文字エントリー
ctdogon = entryEffectLife( spep_2 -3 + 422,  10018, 26, 0x100, -1, 0, -6.9, 114.9 );--ドゴォンッ

setEffMoveKey( spep_2 -3 + 422, ctdogon, -6.9, 114.9 , 0 );
setEffMoveKey( spep_2 -3 + 424, ctdogon, -11.6, 134.8 , 0 );
setEffMoveKey( spep_2 -3 + 426, ctdogon, -3.3, 149.6 , 0 );
setEffMoveKey( spep_2 -3 + 428, ctdogon, -8, 174 , 0 );
setEffMoveKey( spep_2 -3 + 430, ctdogon, -0.5, 184.7 , 0 );
setEffMoveKey( spep_2 -3 + 432, ctdogon, -2.3, 203.2 , 0 );
setEffMoveKey( spep_2 -3 + 434, ctdogon, -8.1, 215.9 , 0 );
setEffMoveKey( spep_2 -3 + 436, ctdogon, 0.6, 212.2 , 0 );
setEffMoveKey( spep_2 -3 + 438, ctdogon, -9.8, 218.7 , 0 );
setEffMoveKey( spep_2 -3 + 440, ctdogon, -2.8, 229.3 , 0 );
setEffMoveKey( spep_2 -3 + 442, ctdogon, -5, 223 , 0 );
setEffMoveKey( spep_2 -3 + 444, ctdogon, -6.1, 241.3 , 0 );
setEffMoveKey( spep_2 -3 + 446, ctdogon, -3, 236.5 , 0 );
setEffMoveKey( spep_2 -3 + 448, ctdogon, -2.7, 241.4 , 0 );

setEffScaleKey( spep_2 -3 + 422, ctdogon, 1.3, 1.3 );
setEffScaleKey( spep_2 -3 + 424, ctdogon, 1.45, 1.45 );
setEffScaleKey( spep_2 -3 + 426, ctdogon, 1.61, 1.61 );
setEffScaleKey( spep_2 -3 + 428, ctdogon, 1.76, 1.76 );
setEffScaleKey( spep_2 -3 + 430, ctdogon, 1.91, 1.91 );
setEffScaleKey( spep_2 -3 + 432, ctdogon, 2.07, 2.07 );
setEffScaleKey( spep_2 -3 + 434, ctdogon, 2.15, 2.15 );
setEffScaleKey( spep_2 -3 + 436, ctdogon, 2.22, 2.22 );
setEffScaleKey( spep_2 -3 + 438, ctdogon, 2.31, 2.31 );
setEffScaleKey( spep_2 -3 + 440, ctdogon, 2.39, 2.39 );
setEffScaleKey( spep_2 -3 + 442, ctdogon, 2.47, 2.47 );
setEffScaleKey( spep_2 -3 + 444, ctdogon, 2.55, 2.55 );
setEffScaleKey( spep_2 -3 + 446, ctdogon, 2.63, 2.63 );
setEffScaleKey( spep_2 -3 + 448, ctdogon, 2.7, 2.7 );

setEffRotateKey( spep_2 -3 + 422, ctdogon, -14.8 );
setEffRotateKey( spep_2 -3 + 448, ctdogon, -14.8 );

setEffAlphaKey( spep_2 -3 + 422, ctdogon, 255 );
setEffAlphaKey( spep_2 -3 + 432, ctdogon, 255 );
setEffAlphaKey( spep_2 -3 + 434, ctdogon, 251 );
setEffAlphaKey( spep_2 -3 + 436, ctdogon, 239 );
setEffAlphaKey( spep_2 -3 + 438, ctdogon, 219 );
setEffAlphaKey( spep_2 -3 + 440, ctdogon, 191 );
setEffAlphaKey( spep_2 -3 + 442, ctdogon, 155 );
setEffAlphaKey( spep_2 -3 + 444, ctdogon, 112 );
setEffAlphaKey( spep_2 -3 + 446, ctdogon, 60 );
setEffAlphaKey( spep_2 -3 + 448, ctdogon, 0 );

--敵の動き
setDisp( spep_2 -3 + 78 , 1, 1 );
setDisp( spep_2  + 124 , 1, 0 );
setDisp( spep_2  + 126 , 1, 1 );
setDisp( spep_2  + 171 , 1, 0 );
setDisp( spep_2  + 201 , 1, 1 );
setDisp( spep_2  + 275 , 1, 0 );
setDisp( spep_2  + 293 , 1, 1 );
setDisp( spep_2  + 320 , 1, 0 );
setDisp( spep_2  + 328 , 1, 1 );
setDisp( spep_2  + 386 , 1, 0 );
setDisp( spep_2  + 389 , 1, 1 );
setDisp( spep_2  + 419 , 1, 0 );
setDisp( spep_2  + 513 , 1, 1 );
setDisp( spep_2  + 660 , 1, 0 );

changeAnime( spep_2 -3 + 78 , 1, 0 );
changeAnime( spep_2 -3 + 86 , 1, 6 );
changeAnime( spep_2 -3 + 204 , 1, 108 );
changeAnime( spep_2 -3 + 278 , 1, 7 );
changeAnime( spep_2 -3 + 328 , 1, 106 );
changeAnime( spep_2 -3 + 392 , 1, 105 );
changeAnime( spep_2 -3 + 516 , 1, 106 );
changeAnime( spep_2 -5 + 528 , 1, 108 );
changeAnime( spep_2 -3 + 556 , 1, 106 );


setMoveKey( spep_2 -3 + 78, 1, 44.1, -38 , 0 );
setMoveKey( spep_2 -3 + 80, 1, 40.7, -38 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 30.6, -38 , 0 );
setMoveKey( spep_2 -3 + 84, 1, 13.7, -38 , 0 );

setMoveKey( spep_2 -3 + 86, 1, -9.9, -38 , 0 );
setMoveKey( spep_2 -3 + 88, 1, -14.6, -38 , 0 );
setMoveKey( spep_2 -3 + 90, 1, -18.6, -38 , 0 );
setMoveKey( spep_2 -3 + 92, 1, -22.1, -38 , 0 );
setMoveKey( spep_2 -3 + 94, 1, -24.9, -38 , 0 );
setMoveKey( spep_2 -3 + 96, 1, -27.1, -38 , 0 );
setMoveKey( spep_2 -3 + 98, 1, -28.6, -38 , 0 );
setMoveKey( spep_2 -3 + 100, 1, -29.6, -38 , 0 );
setMoveKey( spep_2 -3 + 102, 1, -29.9, -38 , 0 );
setMoveKey( spep_2 -3 + 104, 1, -35.3, -38.7 , 0 );
setMoveKey( spep_2 -3 + 106, 1, -45.3, -39.9 , 0 );
setMoveKey( spep_2 -3 + 108, 1, -58.9, -41.7 , 0 );
setMoveKey( spep_2 -3 + 110, 1, -76.2, -43.9 , 0 );
setMoveKey( spep_2 -3 + 112, 1, -97.5, -46.6 , 0 );
setMoveKey( spep_2 -3 + 114, 1, -123.5, -49.9 , 0 );
setMoveKey( spep_2 -3 + 116, 1, -155.3, -53.9 , 0 );
setMoveKey( spep_2 -3 + 118, 1, -194.3, -58.8 , 0 );
setMoveKey( spep_2 -3 + 120, 1, -243.6, -65.1 , 0 );
setMoveKey( spep_2 -3 + 122, 1, -308.4, -73.3 , 0 );
setMoveKey( spep_2 -3 + 124, 1, -402.8, -85.2 , 0 );
setMoveKey( spep_2 -3 + 126, 1, -655.5, -117.3 , 0 );
setMoveKey( spep_2 -3 + 128, 1, 656.8, 34.8 , 0 );
setMoveKey( spep_2 -3 + 130, 1, 315.1, 24.9 , 0 );
setMoveKey( spep_2 -3 + 132, 1, 176.9, 20.9 , 0 );
setMoveKey( spep_2 -3 + 134, 1, 97.2, 18.6 , 0 );
setMoveKey( spep_2 -3 + 136, 1, 47.6, 17.1 , 0 );
setMoveKey( spep_2 -3 + 138, 1, 16.1, 16.2 , 0 );
setMoveKey( spep_2 -3 + 140, 1, -3.7, 15.6 , 0 );
setMoveKey( spep_2 -3 + 142, 1, -16.2, 15.2 , 0 );
setMoveKey( spep_2 -3 + 144, 1, -24.5, 15 , 0 );
setMoveKey( spep_2 -3 + 146, 1, -31.4, 14.8 , 0 );
setMoveKey( spep_2 -3 + 148, 1, -34.1, 13.3 , 0 );
setMoveKey( spep_2 -3 + 150, 1, -36.7, 11.8 , 0 );
setMoveKey( spep_2 -3 + 152, 1, -39.4, 10.3 , 0 );
setMoveKey( spep_2 -3 + 154, 1, -42.1, 8.8 , 0 );
setMoveKey( spep_2 -3 + 156, 1, -44.7, 7.3 , 0 );
setMoveKey( spep_2 -3 + 158, 1, -47.4, 5.8 , 0 );
setMoveKey( spep_2 -3 + 160, 1, -50.1, 4.3 , 0 );
setMoveKey( spep_2 -3 + 162, 1, -52.7, 2.8 , 0 );
setMoveKey( spep_2 -3 + 164, 1, -55.4, 1.3 , 0 );
setMoveKey( spep_2 -3 + 166, 1, -58.1, -0.2 , 0 );
setMoveKey( spep_2 -3 + 168, 1, -60.7, -1.7 , 0 );
setMoveKey( spep_2 -3 + 170, 1, -63.4, -3.2 , 0 );
setMoveKey( spep_2 -3 + 172, 1, -66.1, -4.7 , 0 );

setMoveKey( spep_2 -3 + 204, 1, 42, 48.1 , 0 );
setMoveKey( spep_2 -3 + 205, 1, 42, 48.1 , 0 );
setMoveKey( spep_2 -3 + 206, 1, -22, -18.1 , 0 );
setMoveKey( spep_2 -3 + 220, 1, -22, -18.1 , 0 );
setMoveKey( spep_2 -3 + 222, 1, -15.9, -5.9 , 0 );
setMoveKey( spep_2 -3 + 224, 1, -11.2, 3.5 , 0 );
setMoveKey( spep_2 -3 + 226, 1, -7.4, 11.1 , 0 );
setMoveKey( spep_2 -3 + 228, 1, -4.3, 17.4 , 0 );
setMoveKey( spep_2 -3 + 230, 1, -1.5, 22.9 , 0 );
setMoveKey( spep_2 -3 + 232, 1, 0.8, 27.6 , 0 );
setMoveKey( spep_2 -3 + 234, 1, 2.9, 31.8 , 0 );
setMoveKey( spep_2 -3 + 236, 1, 4.7, 35.4 , 0 );
setMoveKey( spep_2 -3 + 238, 1, 6.4, 38.7 , 0 );
setMoveKey( spep_2 -3 + 240, 1, 7.8, 41.6 , 0 );
setMoveKey( spep_2 -3 + 242, 1, 9.1, 44.2 , 0 );
setMoveKey( spep_2 -3 + 244, 1, 10.3, 46.5 , 0 );
setMoveKey( spep_2 -3 + 246, 1, 11.3, 48.6 , 0 );
setMoveKey( spep_2 -3 + 248, 1, 12.3, 50.5 , 0 );
setMoveKey( spep_2 -3 + 250, 1, 13.1, 52.2 , 0 );
setMoveKey( spep_2 -3 + 252, 1, 13.9, 53.7 , 0 );
setMoveKey( spep_2 -3 + 254, 1, 14.5, 55 , 0 );
setMoveKey( spep_2 -3 + 256, 1, 15.1, 56.2 , 0 );
setMoveKey( spep_2 -3 + 258, 1, 15.6, 57.2 , 0 );
setMoveKey( spep_2 -3 + 260, 1, 16.1, 58.1 , 0 );
setMoveKey( spep_2 -3 + 262, 1, 16.5, 58.9 , 0 );
setMoveKey( spep_2 -3 + 264, 1, 16.8, 59.6 , 0 );
setMoveKey( spep_2 -3 + 266, 1, 17.1, 60.2 , 0 );
setMoveKey( spep_2 -3 + 268, 1, 17.4, 60.7 , 0 );
setMoveKey( spep_2 -3 + 270, 1, 17.6, 61.1 , 0 );
setMoveKey( spep_2 -3 + 272, 1, 17.7, 61.4 , 0 );
setMoveKey( spep_2 -3 + 274, 1, 17.9, 61.7 , 0 );
setMoveKey( spep_2 -3 + 276, 1, 18, 61.9 , 0 );
setMoveKey( spep_2 -3 + 277, 1, 18, 61.9 , 0 );

setMoveKey( spep_2 -3 + 278, 1, -1053.7, -1273.6 , 0 );
setMoveKey( spep_2 -3 + 280, 1, -1051.8, -1270.2 , 0 );
setMoveKey( spep_2 -3 + 282, 1, -1045.6, -1259.8 , 0 );
setMoveKey( spep_2 -3 + 284, 1, -1034.4, -1241 , 0 );
setMoveKey( spep_2 -3 + 286, 1, -1017.3, -1212.4 , 0 );
setMoveKey( spep_2 -3 + 288, 1, -992.9, -1171.5 , 0 );
setMoveKey( spep_2 -3 + 290, 1, -959.1, -1114.9 , 0 );
setMoveKey( spep_2 -3 + 292, 1, -912.4, -1036.5 , 0 );
setMoveKey( spep_2 -3 + 294, 1, -845.8, -925 , 0 );
setMoveKey( spep_2 -3 + 296, 1, -742.6, -752 , 0 );
setMoveKey( spep_2 -3 + 298, 1, -503.9, -352.1 , 0 );
setMoveKey( spep_2 -3 + 300, 1, -512.1, -352.1 , 0 );
setMoveKey( spep_2 -3 + 302, 1, -535.4, -352.1 , 0 );
setMoveKey( spep_2 -3 + 304, 1, -582.9, -352.1 , 0 );
setMoveKey( spep_2 -3 + 306, 1, -720.1, -352.1 , 0 );
setMoveKey( spep_2 -3 + 308, 1, -800.1, -352 , 0 );
setMoveKey( spep_2 -3 + 310, 1, -837.7, -352 , 0 );
setMoveKey( spep_2 -3 + 312, 1, -858, -352 , 0 );
setMoveKey( spep_2 -3 + 314, 1, -870, -352 , 0 );
setMoveKey( spep_2 -3 + 316, 1, -877.3, -352 , 0 );
setMoveKey( spep_2 -3 + 318, 1, -881.9, -352 , 0 );
setMoveKey( spep_2 -3 + 320, 1, -884.7, -352 , 0 );
setMoveKey( spep_2 -3 + 322, 1, -886.3, -352 , 0 );
setMoveKey( spep_2 -3 + 324, 1, -887.1, -352 , 0 );
setMoveKey( spep_2 -3 + 326, 1, -887.3, -352 , 0 );

setMoveKey( spep_2 -3 + 328, 1, 562.2, 23 , 0 );
setMoveKey( spep_2 -3 + 330, 1, 560.3, 23 , 0 );
setMoveKey( spep_2 -3 + 332, 1, 554.6, 23 , 0 );
setMoveKey( spep_2 -3 + 334, 1, 545.1, 23 , 0 );
setMoveKey( spep_2 -3 + 336, 1, 531.8, 23 , 0 );
setMoveKey( spep_2 -3 + 338, 1, 514.8, 23 , 0 );
setMoveKey( spep_2 -3 + 340, 1, 493.9, 23 , 0 );
setMoveKey( spep_2 -3 + 342, 1, 469.2, 23 , 0 );
setMoveKey( spep_2 -3 + 344, 1, 440.8, 23 , 0 );
setMoveKey( spep_2 -3 + 346, 1, 408.5, 23 , 0 );
setMoveKey( spep_2 -3 + 348, 1, 372.5, 23 , 0 );
setMoveKey( spep_2 -3 + 350, 1, 332.6, 23 , 0 );
setMoveKey( spep_2 -3 + 352, 1, 289, 23.1 , 0 );
setMoveKey( spep_2 -3 + 354, 1, 241.6, 23.1 , 0 );
setMoveKey( spep_2 -3 + 356, 1, 190.3, 23.1 , 0 );
setMoveKey( spep_2 -3 + 358, 1, 135.3, 23.1 , 0 );
setMoveKey( spep_2 -3 + 360, 1, 76.5, 23.1 , 0 );
setMoveKey( spep_2 -3 + 362, 1, 13.9, 23.1 , 0 );
setMoveKey( spep_2 -3 + 363, 1, 13.9, 23.1 , 0 );

setMoveKey( spep_2 -3 + 364, 1, -8.4, -27.5 , 0 );
setMoveKey( spep_2 -3 + 365, 1, -8.4, -27.5 , 0 );

setMoveKey( spep_2 -3 + 366, 1, 112, -42 , 0 );
setMoveKey( spep_2 -3 + 368, 1, 211, -150.6 , 0 );
setMoveKey( spep_2 -3 + 370, 1, 301.5, -219.8 , 0 );
setMoveKey( spep_2 -3 + 372, 1, 383.3, -309.6 , 0 );
setMoveKey( spep_2 -3 + 374, 1, 456.5, -389.9 , 0 );
setMoveKey( spep_2 -3 + 376, 1, 521.2, -460.8 , 0 );
setMoveKey( spep_2 -3 + 378, 1, 577.1, -522.2 , 0 );
setMoveKey( spep_2 -3 + 380, 1, 624.5, -574.1 , 0 );
setMoveKey( spep_2 -3 + 382, 1, 663.3, -616.6 , 0 );
setMoveKey( spep_2 -3 + 384, 1, 693.4, -649.7 , 0 );
setMoveKey( spep_2 -3 + 386, 1, 715, -673.3 , 0 );
setMoveKey( spep_2 -3 + 388, 1, 727.9, -687.5 , 0 );
setMoveKey( spep_2 -3 + 390, 1, 732.2, -692.2 , 0 );
setMoveKey( spep_2 -3 + 391, 1, 732.2, -692.2 , 0 );
setMoveKey( spep_2 -3 + 392, 1, 53.8, -15.8 , 0 );
setMoveKey( spep_2 -3 + 394, 1, 51, -14.7 , 0 );
setMoveKey( spep_2 -3 + 396, 1, 40.8, -10.7 , 0 );
setMoveKey( spep_2 -3 + 398, 1, 27.3, -5.5 , 0 );
setMoveKey( spep_2 -3 + 400, 1, 19, -2.2 , 0 );
setMoveKey( spep_2 -3 + 402, 1, 13.6, -0.1 , 0 );
setMoveKey( spep_2 -3 + 404, 1, 9.7, 1.4 , 0 );
setMoveKey( spep_2 -3 + 406, 1, 6.9, 2.5 , 0 );
setMoveKey( spep_2 -3 + 408, 1, 4.8, 3.3 , 0 );
setMoveKey( spep_2 -3 + 410, 1, 3.2, 3.9 , 0 );
setMoveKey( spep_2 -3 + 412, 1, 2, 4.4 , 0 );
setMoveKey( spep_2 -3 + 414, 1, 1.1, 4.7 , 0 );
setMoveKey( spep_2 -3 + 416, 1, 0.5, 4.9 , 0 );
setMoveKey( spep_2 -3 + 418, 1, 0.1, 5.1 , 0 );
setMoveKey( spep_2 -3 + 420, 1, 0, 5.1 , 0 );

setMoveKey( spep_2 -3 + 516, 1, 14, 18 , 0 );
setMoveKey( spep_2 -3 + 524, 1, 14, 18 , 0 );

setMoveKey( spep_2 -3 + 526, 1, 14, 18 , 0 );

setMoveKey( spep_2 -3 + 556, 1, 14, 18 , 0 );
setMoveKey( spep_2  + 660, 1, 14, 18 , 0 );


setScaleKey( spep_2 -3 + 78, 1, 1.5, 1.5 );
setScaleKey( spep_2 -3 + 85, 1, 1.5, 1.5 );

a=0.5;

setScaleKey( spep_2 -3 + 86, 1, 1.5 + a, 1.5 + a );
setScaleKey( spep_2 -3 + 87, 1, 1.5 + a, 1.5 + a );
setScaleKey( spep_2 -3 + 88, 1, 1.5 , 1.5  );
setScaleKey( spep_2 -3 + 91, 1, 1.5 , 1.5  );
setScaleKey( spep_2 -3 + 92, 1, 1.6 , 1.6  );
setScaleKey( spep_2 -3 + 93, 1, 1.6 , 1.6  );
setScaleKey( spep_2 -3 + 94, 1, 1.5 , 1.5  );
setScaleKey( spep_2 -3 + 106, 1, 1.5 , 1.5  );
setScaleKey( spep_2 -3 + 108, 1, 1.49 , 1.49  );
setScaleKey( spep_2 -3 + 110, 1, 1.49 , 1.49  );
setScaleKey( spep_2 -3 + 112, 1, 1.47 , 1.47  );
setScaleKey( spep_2 -3 + 114, 1, 1.46 , 1.46  );
setScaleKey( spep_2 -3 + 116, 1, 1.44 , 1.44  );
setScaleKey( spep_2 -3 + 118, 1, 1.42 , 1.42  );
setScaleKey( spep_2 -3 + 120, 1, 1.4 , 1.4  );
setScaleKey( spep_2 -3 + 122, 1, 1.37 , 1.37  );
setScaleKey( spep_2 -3 + 124, 1, 1.32 , 1.32  );
setScaleKey( spep_2 -3 + 126, 1, 1.2 , 1.2  );
setScaleKey( spep_2 -3 + 128, 1, 1.5 , 1.5  );
setScaleKey( spep_2 -3 + 200, 1, 1.5 , 1.5  );

setScaleKey( spep_2 -3 + 204, 1, 1.5 + a, 1.5 + a );
setScaleKey( spep_2 -3 + 205, 1, 1.5 + a, 1.5 + a );
setScaleKey( spep_2 -3 + 206, 1, 1.5, 1.5  );
setScaleKey( spep_2 -3 + 277, 1, 1.5, 1.5  );

setScaleKey( spep_2 -3 + 278, 1, 2.55, 2.55 );
setScaleKey( spep_2 -3 + 280, 1, 2.55, 2.55 );
setScaleKey( spep_2 -3 + 282, 1, 2.53, 2.53 );
setScaleKey( spep_2 -3 + 284, 1, 2.52, 2.52 );
setScaleKey( spep_2 -3 + 286, 1, 2.5, 2.5 );
setScaleKey( spep_2 -3 + 288, 1, 2.47, 2.47 );
setScaleKey( spep_2 -3 + 290, 1, 2.4, 2.4 );
setScaleKey( spep_2 -3 + 292, 1, 2.33, 2.33 );
setScaleKey( spep_2 -3 + 294, 1, 2.23, 2.23 );
setScaleKey( spep_2 -3 + 296, 1, 2.07, 2.07 );
setScaleKey( spep_2 -3 + 298, 1, 1.7, 1.7 );

setScaleKey( spep_2 -3 + 328, 1, 1.5, 1.5 );
setScaleKey( spep_2 -3 + 363, 1, 1.5, 1.5 );

setScaleKey( spep_2 -3 + 364, 1, 2.0, 2.0 );
setScaleKey( spep_2 -3 + 365, 1, 2.0, 2.0 );
setScaleKey( spep_2 -3 + 366, 1, 1.5, 1.5 );
setScaleKey( spep_2 -3 + 368, 1, 1.45, 1.45 );
setScaleKey( spep_2 -3 + 370, 1, 1.41, 1.41 );
setScaleKey( spep_2 -3 + 372, 1, 1.37, 1.37 );
setScaleKey( spep_2 -3 + 374, 1, 1.33, 1.33 );
setScaleKey( spep_2 -3 + 376, 1, 1.3, 1.3 );
setScaleKey( spep_2 -3 + 378, 1, 1.28, 1.28 );
setScaleKey( spep_2 -3 + 380, 1, 1.25, 1.25 );
setScaleKey( spep_2 -3 + 382, 1, 1.23, 1.23 );
setScaleKey( spep_2 -3 + 384, 1, 1.22, 1.22 );
setScaleKey( spep_2 -3 + 386, 1, 1.21, 1.21 );
setScaleKey( spep_2 -3 + 388, 1, 1.2, 1.2 );

setScaleKey( spep_2 -3 + 392, 1, 3, 3 );
setScaleKey( spep_2 -3 + 394, 1, 2.85, 2.85 );
setScaleKey( spep_2 -3 + 396, 1, 2.34, 2.34 );
setScaleKey( spep_2 -3 + 398, 1, 1.68, 1.68 );
setScaleKey( spep_2 -3 + 400, 1, 1.26, 1.26 );
setScaleKey( spep_2 -3 + 402, 1, 0.99, 0.99 );
setScaleKey( spep_2 -3 + 404, 1, 0.78, 0.78 );
setScaleKey( spep_2 -3 + 406, 1, 0.66, 0.66 );
setScaleKey( spep_2 -3 + 408, 1, 0.54, 0.54 );
setScaleKey( spep_2 -3 + 410, 1, 0.45, 0.45 );
setScaleKey( spep_2 -3 + 412, 1, 0.39, 0.39 );
setScaleKey( spep_2 -3 + 414, 1, 0.36, 0.36 );
setScaleKey( spep_2 -3 + 416, 1, 0.33, 0.33 );
setScaleKey( spep_2  + 418, 1, 0.3, 0.3 );

setScaleKey( spep_2 -3 + 516, 1, 1.5, 1.5 );
setScaleKey( spep_2  + 660, 1, 1.5, 1.5 );

setRotateKey( spep_2 -3 + 78, 1, -5.3 );

setRotateKey( spep_2 -3 + 86, 1, -5.3 );
setRotateKey( spep_2 -3 + 102, 1, -5.3 );
setRotateKey( spep_2 -3 + 104, 1, -5.4 );
setRotateKey( spep_2 -3 + 106, 1, -5.6 );
setRotateKey( spep_2 -3 + 108, 1, -6 );
setRotateKey( spep_2 -3 + 110, 1, -6.4 );
setRotateKey( spep_2 -3 + 112, 1, -6.9 );
setRotateKey( spep_2 -3 + 114, 1, -7.5 );
setRotateKey( spep_2 -3 + 116, 1, -8.2 );
setRotateKey( spep_2 -3 + 118, 1, -9.1 );
setRotateKey( spep_2 -3 + 120, 1, -10.3 );
setRotateKey( spep_2 -3 + 122, 1, -11.8 );
setRotateKey( spep_2 -3 + 124, 1, -14.1 );
setRotateKey( spep_2 -3 + 126, 1, -20 );
setRotateKey( spep_2 -3 + 128, 1, -25 );
setRotateKey( spep_2 -3 + 130, 1, -27.5 );
setRotateKey( spep_2 -3 + 132, 1, -28.5 );
setRotateKey( spep_2 -3 + 134, 1, -29.1 );
setRotateKey( spep_2 -3 + 136, 1, -29.4 );
setRotateKey( spep_2 -3 + 138, 1, -29.7 );
setRotateKey( spep_2 -3 + 140, 1, -29.8 );
setRotateKey( spep_2 -3 + 142, 1, -29.9 );
setRotateKey( spep_2 -3 + 144, 1, -29.9 );
setRotateKey( spep_2 -3 + 146, 1, -30 );
setRotateKey( spep_2 -3 + 148, 1, -30.3 );
setRotateKey( spep_2 -3 + 150, 1, -30.6 );
setRotateKey( spep_2 -3 + 152, 1, -30.9 );
setRotateKey( spep_2 -3 + 154, 1, -31.2 );
setRotateKey( spep_2 -3 + 156, 1, -31.5 );
setRotateKey( spep_2 -3 + 158, 1, -31.8 );
setRotateKey( spep_2 -3 + 160, 1, -32 );
setRotateKey( spep_2 -3 + 162, 1, -32.3 );
setRotateKey( spep_2 -3 + 164, 1, -32.6 );
setRotateKey( spep_2 -3 + 166, 1, -32.9 );
setRotateKey( spep_2 -3 + 168, 1, -33.2 );
setRotateKey( spep_2 -3 + 170, 1, -33.5 );
setRotateKey( spep_2 -3 + 172, 1, -33.8 );
setRotateKey( spep_2 -3 + 200, 1, -33.8 );

setRotateKey( spep_2 -3 + 204, 1, -30 );
setRotateKey( spep_2 -3 + 277, 1, -30 );

setRotateKey( spep_2 -3 + 278, 1, 130 );
setRotateKey( spep_2 -3 + 280, 1, 130 );
setRotateKey( spep_2 -3 + 282, 1, 129.9 );
setRotateKey( spep_2 -3 + 284, 1, 129.6 );
setRotateKey( spep_2 -3 + 286, 1, 129.3 );
setRotateKey( spep_2 -3 + 288, 1, 128.9 );
setRotateKey( spep_2 -3 + 290, 1, 128.3 );
setRotateKey( spep_2 -3 + 292, 1, 127.4 );
setRotateKey( spep_2 -3 + 294, 1, 126.2 );
setRotateKey( spep_2 -3 + 296, 1, 124.3 );
setRotateKey( spep_2 -3 + 298, 1, 120 );
setRotateKey( spep_2 -3 + 300, 1, 119 );
setRotateKey( spep_2 -3 + 302, 1, 116.1 );
setRotateKey( spep_2 -3 + 304, 1, 110.1 );
setRotateKey( spep_2 -3 + 306, 1, 93 );
setRotateKey( spep_2 -3 + 308, 1, 83 );
setRotateKey( spep_2 -3 + 310, 1, 78.3 );
setRotateKey( spep_2 -3 + 312, 1, 75.7 );
setRotateKey( spep_2 -3 + 314, 1, 74.2 );
setRotateKey( spep_2 -3 + 316, 1, 73.3 );
setRotateKey( spep_2 -3 + 318, 1, 72.8 );
setRotateKey( spep_2 -3 + 320, 1, 72.4 );
setRotateKey( spep_2 -3 + 322, 1, 72.2 );
setRotateKey( spep_2 -3 + 324, 1, 72.1 );

setRotateKey( spep_2 -3 + 328, 1, -90 );
setRotateKey( spep_2 -3 + 330, 1, -89.9 );
setRotateKey( spep_2 -3 + 332, 1, -89.7 );
setRotateKey( spep_2 -3 + 334, 1, -89.4 );
setRotateKey( spep_2 -3 + 336, 1, -89 );
setRotateKey( spep_2 -3 + 338, 1, -88.4 );
setRotateKey( spep_2 -3 + 340, 1, -87.7 );
setRotateKey( spep_2 -3 + 342, 1, -86.9 );
setRotateKey( spep_2 -3 + 344, 1, -85.9 );
setRotateKey( spep_2 -3 + 346, 1, -84.8 );
setRotateKey( spep_2 -3 + 348, 1, -83.6 );
setRotateKey( spep_2 -3 + 350, 1, -82.3 );
setRotateKey( spep_2 -3 + 352, 1, -80.8 );
setRotateKey( spep_2 -3 + 354, 1, -79.2 );
setRotateKey( spep_2 -3 + 356, 1, -77.5 );
setRotateKey( spep_2 -3 + 358, 1, -75.6 );
setRotateKey( spep_2 -3 + 360, 1, -73.6 );
setRotateKey( spep_2 -3 + 362, 1, -71.5 );
setRotateKey( spep_2 -3 + 363, 1, -71.5 );

setRotateKey( spep_2 -3 + 364, 1, -23.5 );
setRotateKey( spep_2 -3 + 365, 1, -23.5 );

setRotateKey( spep_2 -3 + 366, 1, 36.3 );
setRotateKey( spep_2 -3 + 367, 1, 36.3 );
setRotateKey( spep_2 -3 + 368, 1, 43.3 );
setRotateKey( spep_2 -3 + 370, 1, 49.7 );
setRotateKey( spep_2 -3 + 372, 1, 55.5 );
setRotateKey( spep_2 -3 + 374, 1, 60.7 );
setRotateKey( spep_2 -3 + 376, 1, 65.3 );
setRotateKey( spep_2 -3 + 378, 1, 69.2 );
setRotateKey( spep_2 -3 + 380, 1, 72.6 );
setRotateKey( spep_2 -3 + 382, 1, 75.3 );
setRotateKey( spep_2 -3 + 384, 1, 77.5 );
setRotateKey( spep_2 -3 + 386, 1, 79 );
setRotateKey( spep_2 -3 + 388, 1, 79.9 );
setRotateKey( spep_2 -3 + 390, 1, 80.2 );

setRotateKey( spep_2 -3 + 392, 1, 0 );
setRotateKey( spep_2 -3 + 515, 1, 0 );

setRotateKey( spep_2 -3 + 516, 1, 30 );
setRotateKey( spep_2 -3 + 525, 1, 30 );

setRotateKey( spep_2 -3 + 526, 1, 79.5 );
setRotateKey( spep_2 -3 + 554, 1, 79.5 );

setRotateKey( spep_2 -3 + 556, 1, 30 );
setRotateKey( spep_2  + 660, 1, 30 );


--白フェード
entryFade( spep_2 + 86, 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 205, 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 294, 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 365, 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--音
--playSe( spep_2 -3 + 86, 1001 );  --ガッ
playSe( spep_2 -3 + 86, 1010 );  --ガッ
playSe( spep_2 + 152, 43 );  --瞬間移動
playSe( spep_2 -3 + 204, 1009 );  --ズン
playSe( spep_2 + 258, 43 );  --瞬間移動
playSe( spep_2 -3 + 300, 1010 );  --バキ
playSe( spep_2 + 342, 1109 );  --瞬間移動
playSe( spep_2 -3 + 364, 1011 );  --強いガッ
playSe( spep_2 -3 + 422, 1023 );  --ドゴォン
playSe( spep_2 + 468, 1072 );  --18号迫る
setSeVolume( spep_2 + 468, 1072, 130 );
playSe( spep_2 + 524, 1153 );  --踏む
playSe( spep_2 + 600, 4 );  --指差す
playSe( spep_2 + 608, 1154 );  --溜める
playSe( spep_2 + 646, 1126 );  --放つ
setSeVolume( spep_2 + 646, 1126, 70 );
playSe( spep_2 + 666, 1024 );  --爆発
setSeVolume( spep_2 + 666, 1024, 120 );
playSe( spep_2 + 666, 1067 );  --爆発
setSeVolume( spep_2 + 666, 1067, 75 );

-- ** ダメージ表示 ** --
dealDamage(spep_2 + 654);
endPhase( spep_2 + 768 );
else 

------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 登場
------------------------------------------------------
--はじめの準備
spep_0 = 0;
-- ** エフェクト等 ** --
appearance = entryEffect( spep_0 + 0, SP_01,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, appearance, 0, 0 , 0 );
setEffMoveKey( spep_0 + 120, appearance, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, appearance, -1.0, 1.0 );
setEffScaleKey( spep_0 + 120, appearance, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, appearance, 0 );
setEffRotateKey( spep_0 + 120, appearance, 0 );
setEffAlphaKey( spep_0 + 0, appearance, 255 );
setEffAlphaKey( spep_0 + 120, appearance, 255 );

--流線
ryusen1 = entryEffectLife( spep_0  + 0,  914, 28 -3, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_0  + 0, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 -3 + 28, ryusen1, 0, 0 , 0 );

setEffScaleKey( spep_0  + 0, ryusen1, 5.84, 1.23 );
setEffScaleKey( spep_0 -3 +28, ryusen1, 5.84, 1.23 );

setEffRotateKey( spep_0  + 0, ryusen1, 90 );
setEffRotateKey( spep_0 -3 + 28, ryusen1, 90 );

setEffAlphaKey( spep_0  + 0, ryusen1, 191 );
setEffAlphaKey( spep_0 -3 + 18, ryusen1, 191 );
setEffAlphaKey( spep_0 -3 + 20, ryusen1, 153 );
setEffAlphaKey( spep_0 -3 + 22, ryusen1, 115 );
setEffAlphaKey( spep_0 -3 + 24, ryusen1, 77 );
setEffAlphaKey( spep_0 -3 + 26, ryusen1, 38 );
setEffAlphaKey( spep_0 -3 + 28, ryusen1, 0 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_0 +12, 190006, 72, 0x100, -1, 0, 0, 510);    -- ゴゴゴゴ

setEffMoveKey(  spep_0 +12,  ctgogo,  0,  510);
setEffMoveKey(  spep_0 +84,  ctgogo,  0,  510);

setEffAlphaKey( spep_0 +12, ctgogo, 0 );
setEffAlphaKey( spep_0 + 13, ctgogo, 255 );
setEffAlphaKey( spep_0 + 14, ctgogo, 255 );
setEffAlphaKey( spep_0 + 76, ctgogo, 255 );
setEffAlphaKey( spep_0 + 78, ctgogo, 255 );
setEffAlphaKey( spep_0 + 80, ctgogo, 191 );
setEffAlphaKey( spep_0 + 82, ctgogo, 128 );
setEffAlphaKey( spep_0 + 84, ctgogo, 64 );

setEffRotateKey(  spep_0 +12,  ctgogo,  0);
setEffRotateKey(  spep_0 +84,  ctgogo,  0);

setEffScaleKey(  spep_0 +12,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_0 +74,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_0 +84,  ctgogo, -1.07, 1.07 );

--音
playSe( spep_0 + 0, 8 );  --冒頭
playSe( spep_0 + 12, 1018 );  --ごごご

--白フェード
entryFade( spep_0 + 112, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1 = spep_0 + 120;

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
-- 突進〜ラッシュ〜フィニッシュ
------------------------------------------------------

-- ** エフェクト等 ** --
finish = entryEffect( spep_2 + 0, SP_02,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_2 + 782, finish, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish, -1.0, 1.0 );
setEffScaleKey( spep_2 + 782, finish, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish, 0 );
setEffRotateKey( spep_2 + 782, finish, 0 );
setEffAlphaKey( spep_2 + 0, finish, 255 );
setEffAlphaKey( spep_2 + 782, finish, 255 );

-- ** エフェクト等 ** --
bg = entryEffect( spep_2 + 0, SP_03,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, bg, 0, 0 , 0 );
setEffMoveKey( spep_2 + 782, bg, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, bg, -1.0, 1.0 );
setEffScaleKey( spep_2 + 782, bg, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, bg, 0 );
setEffRotateKey( spep_2 + 782, bg, 0 );
setEffAlphaKey( spep_2 + 0, bg, 255 );
setEffAlphaKey( spep_2 + 782, bg, 255 );

--集中線
shuchusen1 = entryEffectLife( spep_2 -3 + 10,  906, 58, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_2 -3+ 10, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_2 + 64, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_2 -3 + 10, shuchusen1, 1.34, 1.21 );
setEffScaleKey( spep_2 + 64, shuchusen1, 1.34, 1.21 );

setEffRotateKey( spep_2 -3 + 10, shuchusen1, 180 );
setEffRotateKey( spep_2 + 64, shuchusen1, 180 );

setEffAlphaKey( spep_2 -3 + 10, shuchusen1, 255 );
setEffAlphaKey( spep_2 + 64, shuchusen1, 255 );
setEffAlphaKey( spep_2 + 65, shuchusen1, 0 );

--音
SE0 = playSe( spep_2 + 8, 1007 );  --崖から移動
SE1 = playSe( spep_2 + 26, 1007 );  --崖から移動
SE2 = playSe( spep_2 + 26, 8 );  --手前に迫る

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 50; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE0, 0 );
    stopSe( SP_dodge - 12, SE1, 0 );
    stopSe( SP_dodge - 12, SE2, 0 );
    
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

--集中線    
shuchusen2 = entryEffectLife( spep_2  + 389,  906, 30, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_2  + 389, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_2  + 419, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_2  + 389, shuchusen2, 1.34, 1.21 );
setEffScaleKey( spep_2  + 419, shuchusen2, 1.34, 1.21 );

setEffRotateKey( spep_2  + 389, shuchusen2, 180 );
setEffRotateKey( spep_2  + 419, shuchusen2, 180 );

setEffAlphaKey( spep_2  + 389, shuchusen2, 255 );
setEffAlphaKey( spep_2  + 419, shuchusen2, 255 );

--集中線    
shuchusen3 = entryEffectLife( spep_2  + 657,  906, 114, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_2  + 657, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_2  + 770, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_2  + 657, shuchusen3, 1.34, 1.21 );
setEffScaleKey( spep_2  + 770, shuchusen3, 1.34, 1.21 );

setEffRotateKey( spep_2  + 657, shuchusen3, 180 );
setEffRotateKey( spep_2  + 770, shuchusen3, 180 );

setEffAlphaKey( spep_2  + 657, shuchusen3, 255 );
setEffAlphaKey( spep_2  + 770, shuchusen3, 255 );

--流線
ryusen2 = entryEffectLife( spep_2 -3 + 128,  914, 16, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_2 -3 + 128, ryusen2, 0, 0 , 0 );
setEffMoveKey( spep_2 -3 + 144, ryusen2, 0, 0 , 0 );

setEffScaleKey( spep_2 -3 + 128, ryusen2, 5.84, 1.23 );
setEffScaleKey( spep_2 -3 + 144, ryusen2, 5.84, 1.23 );

setEffRotateKey( spep_2 -3 + 128, ryusen2, 0 );
setEffRotateKey( spep_2 -3 + 144, ryusen2, 0 );

setEffAlphaKey( spep_2 -3 + 128, ryusen2, 191 );
setEffAlphaKey( spep_2 -3 + 136, ryusen2, 191 );
setEffAlphaKey( spep_2 -3 + 138, ryusen2, 143 );
setEffAlphaKey( spep_2 -3 + 140, ryusen2, 96 );
setEffAlphaKey( spep_2 -3 + 142, ryusen2, 48 );
setEffAlphaKey( spep_2 -3 + 144, ryusen2, 0 );

--流線
ryusen3 = entryEffectLife( spep_2 -3 + 328,  914, 18, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_2 -3 + 328, ryusen3, 0, 0 , 0 );
setEffMoveKey( spep_2 -3 + 346, ryusen3, 0, 0 , 0 );

setEffScaleKey( spep_2 -3 + 328, ryusen3, 5.84, 1.23 );
setEffScaleKey( spep_2 -3 + 346, ryusen3, 5.84, 1.23 );

setEffRotateKey( spep_2 -3 + 328, ryusen3, 0 );
setEffRotateKey( spep_2 -3 + 346, ryusen3, 0 );

setEffAlphaKey( spep_2 -3 + 328, ryusen3, 191 );
setEffAlphaKey( spep_2 -3 + 338, ryusen3, 191 );
setEffAlphaKey( spep_2 -3 + 340, ryusen3, 143 );
setEffAlphaKey( spep_2 -3 + 342, ryusen3, 96 );
setEffAlphaKey( spep_2 -3 + 344, ryusen3, 48 );
setEffAlphaKey( spep_2 -3 + 346, ryusen3, 0 );

--文字エントリー
caga = entryEffectLife( spep_2 -3 + 86,  10005, 24, 0x100, -1, 0, -167.8, 121.5 );--ガッ

setEffMoveKey( spep_2 -3 + 86, caga, -167.8, 121.5 , 0 );
setEffMoveKey( spep_2 -3 + 88, caga, -153.8, 221 , 0 );
setEffMoveKey( spep_2 -3 + 90, caga, -142.2, 240.9 , 0 );
setEffMoveKey( spep_2 -3 + 92, caga, -154.6, 221.6 , 0 );
setEffMoveKey( spep_2 -3 + 94, caga, -143, 241.6 , 0 );
setEffMoveKey( spep_2 -3 + 96, caga, -155.4, 222.2 , 0 );
setEffMoveKey( spep_2 -3 + 98, caga, -143.7, 242.3 , 0 );
setEffMoveKey( spep_2 -3 + 100, caga, -156.2, 222.8 , 0 );
setEffMoveKey( spep_2 -3 + 102, caga, -144.5, 243 , 0 );
setEffMoveKey( spep_2 -3 + 104, caga, -157, 223.5 , 0 );
setEffMoveKey( spep_2 -3 + 106, caga, -141, 239.5 , 0 );
setEffMoveKey( spep_2 -3 + 108, caga, -148.6, 216.7 , 0 );
setEffMoveKey( spep_2 -3 + 110, caga, -144.4, 213.3 , 0 );

b=1.2;
setEffScaleKey( spep_2 -3 + 86, caga, 0.72, 0.72 );
setEffScaleKey( spep_2 -3 + 88, caga, 1.32+b, 1.46+b );
setEffScaleKey( spep_2 -3 + 90, caga, 1.32+b, 1.46+b );
setEffScaleKey( spep_2 -3 + 92, caga, 1.33+b, 1.47+b );
setEffScaleKey( spep_2 -3 + 94, caga, 1.33+b, 1.47+b );
setEffScaleKey( spep_2 -3 + 96, caga, 1.34+b, 1.48+b );
setEffScaleKey( spep_2 -3 + 100, caga, 1.34+b, 1.48+b );
setEffScaleKey( spep_2 -3 + 102, caga, 1.35+b, 1.49+b );
setEffScaleKey( spep_2 -3 + 104, caga, 1.35+b, 1.49+b );
setEffScaleKey( spep_2 -3 + 106, caga, 1.31+b, 1.45+b );
setEffScaleKey( spep_2 -3 + 108, caga, 1.28+b, 1.41+b );
setEffScaleKey( spep_2 -3 + 110, caga, 1.24 +b, 1.37+b );

setEffRotateKey( spep_2 -3 + 86, caga, 20 );
setEffRotateKey( spep_2 -3 + 110, caga, 20 );

setEffAlphaKey( spep_2 -3 + 86, caga, 255 );
setEffAlphaKey( spep_2 -3 + 104, caga, 255 );
setEffAlphaKey( spep_2 -3 + 106, caga, 170 );
setEffAlphaKey( spep_2 -3 + 108, caga, 85 );
setEffAlphaKey( spep_2 -3 + 110, caga, 0 );

--文字エントリー
ctzun = entryEffectLife( spep_2 -3 + 204,  10016, 26, 0x100, -1, 0, 9.2, 218.3 );--ズンッ

setEffMoveKey( spep_2 -3 + 204, ctzun, 9.2, 218.3 , 0 );
setEffMoveKey( spep_2 -3 + 206, ctzun, -36.8, 224.3 , 0 );
setEffMoveKey( spep_2 -3 + 208, ctzun, -36.8, 224.3 , 0 );
setEffMoveKey( spep_2 -3 + 210, ctzun, -45.1, 229.9 , 0 );
setEffMoveKey( spep_2 -3 + 212, ctzun, -33.9, 227.1 , 0 );
setEffMoveKey( spep_2 -3 + 214, ctzun, -42.2, 232.7 , 0 );
setEffMoveKey( spep_2 -3 + 216, ctzun, -30.9, 229.9 , 0 );
setEffMoveKey( spep_2 -3 + 218, ctzun, -39.4, 235.5 , 0 );
setEffMoveKey( spep_2 -3 + 220, ctzun, -28, 232.7 , 0 );
setEffMoveKey( spep_2 -3 + 222, ctzun, -26.5, 234.1 , 0 );
setEffMoveKey( spep_2 -3 + 224, ctzun, -36.7, 238.4 , 0 );
setEffMoveKey( spep_2 -3 + 226, ctzun, -26.4, 234.1 , 0 );
setEffMoveKey( spep_2 -3 + 228, ctzun, -37, 238.5 , 0 );
setEffMoveKey( spep_2 -3 + 230, ctzun, -37.1, 238.5 , 0 );

setEffScaleKey( spep_2 -3 + 204, ctzun, 1.73, 1.75 );
setEffScaleKey( spep_2 -3 + 206, ctzun, 3.74, 3.77 );
setEffScaleKey( spep_2 -3 + 208, ctzun, 3.74, 3.77 );
setEffScaleKey( spep_2 -3 + 210, ctzun, 3.76, 3.79 );
setEffScaleKey( spep_2 -3 + 212, ctzun, 3.77, 3.8 );
setEffScaleKey( spep_2 -3 + 214, ctzun, 3.79, 3.82 );
setEffScaleKey( spep_2 -3 + 216, ctzun, 3.81, 3.83 );
setEffScaleKey( spep_2 -3 + 218, ctzun, 3.83, 3.85 );
setEffScaleKey( spep_2 -3 + 220, ctzun, 3.84, 3.86 );
setEffScaleKey( spep_2 -3 + 222, ctzun, 3.86, 3.88 );
setEffScaleKey( spep_2 -3 + 224, ctzun, 3.94, 3.96 );
setEffScaleKey( spep_2 -3 + 226, ctzun, 4.01, 4.04 );
setEffScaleKey( spep_2 -3 + 228, ctzun, 4.09, 4.11 );
setEffScaleKey( spep_2 -3 + 230, ctzun, 4.17, 4.19 );

setEffRotateKey( spep_2 -3 + 204, ctzun, 0 );
setEffRotateKey( spep_2 -3 + 230, ctzun, 0 );

setEffAlphaKey( spep_2 -3 + 204, ctzun, 255 );
setEffAlphaKey( spep_2 -3 + 222, ctzun, 255 );
setEffAlphaKey( spep_2 -3 + 224, ctzun, 191 );
setEffAlphaKey( spep_2 -3 + 226, ctzun, 128 );
setEffAlphaKey( spep_2 -3 + 228, ctzun, 64 );
setEffAlphaKey( spep_2 -3 + 230, ctzun, 0 );

--文字エントリー
ctbaki = entryEffectLife( spep_2 -3 + 300,  10020, 26, 0x100, -1, 0, -149.8, 157.8 );--バキッ

setEffMoveKey( spep_2 -3 + 300, ctbaki, -149.8, 157.8 , 0 );
setEffMoveKey( spep_2 -3 + 302, ctbaki, -140.3, 198.4 , 0 );
setEffMoveKey( spep_2 -3 + 304, ctbaki, -122.2, 193.2 , 0 );
setEffMoveKey( spep_2 -3 + 306, ctbaki, -128.7, 205.1 , 0 );
setEffMoveKey( spep_2 -3 + 308, ctbaki, -114.9, 194.4 , 0 );
setEffMoveKey( spep_2 -3 + 310, ctbaki, -126.9, 197.7 , 0 );
setEffMoveKey( spep_2 -3 + 312, ctbaki, -115.8, 205.6 , 0 );
setEffMoveKey( spep_2 -3 + 314, ctbaki, -116.7, 193 , 0 );
setEffMoveKey( spep_2 -3 + 316, ctbaki, -116.1, 210.1 , 0 );
setEffMoveKey( spep_2 -3 + 318, ctbaki, -110.5, 199.6 , 0 );
setEffMoveKey( spep_2 -3 + 320, ctbaki, -115.6, 206.6 , 0 );
setEffMoveKey( spep_2 -3 + 322, ctbaki, -109.7, 200.5 , 0 );
setEffMoveKey( spep_2 -3 + 324, ctbaki, -105.4, 209.7 , 0 );
setEffMoveKey( spep_2 -3 + 326, ctbaki, -106.7, 202.1 , 0 );

setEffScaleKey( spep_2 -3 + 300, ctbaki, 0.82, 0.79 );
setEffScaleKey( spep_2 -3 + 302, ctbaki, 2.28, 2.19 );
setEffScaleKey( spep_2 -3 + 304, ctbaki, 2.3, 2.21 );
setEffScaleKey( spep_2 -3 + 306, ctbaki, 2.32, 2.23 );
setEffScaleKey( spep_2 -3 + 308, ctbaki, 2.34, 2.25 );
setEffScaleKey( spep_2 -3 + 310, ctbaki, 2.36, 2.27 );
setEffScaleKey( spep_2 -3 + 312, ctbaki, 2.38, 2.29 );
setEffScaleKey( spep_2 -3 + 314, ctbaki, 2.4, 2.3 );
setEffScaleKey( spep_2 -3 + 316, ctbaki, 2.43, 2.32 );
setEffScaleKey( spep_2 -3 + 318, ctbaki, 2.45, 2.34 );
setEffScaleKey( spep_2 -3 + 320, ctbaki, 2.47, 2.36 );
setEffScaleKey( spep_2 -3 + 322, ctbaki, 2.49, 2.38 );
setEffScaleKey( spep_2 -3 + 324, ctbaki, 2.51, 2.4 );
setEffScaleKey( spep_2 -3 + 326, ctbaki, 2.53, 2.42 );

setEffRotateKey( spep_2 -3 + 300, ctbaki, 12.7 );
setEffRotateKey( spep_2 -3 + 326, ctbaki, 12.7 );

setEffAlphaKey( spep_2 -3 + 300, ctbaki, 255 );
setEffAlphaKey( spep_2 -3 + 326, ctbaki, 255 );

--文字エントリー
ctga2 = entryEffectLife( spep_2 -3 + 364,  10005, 24, 0x100, -1, 0, 155.2, 200.6 );--ガッ

setEffMoveKey( spep_2 -3 + 364, ctga2, 155.2, 200.6 , 0 );
setEffMoveKey( spep_2 -3 + 366, ctga2, 177.3, 280.2 , 0 );
setEffMoveKey( spep_2 -3 + 368, ctga2, 190.5, 294.5 , 0 );
setEffMoveKey( spep_2 -3 + 370, ctga2, 176.4, 281.3 , 0 );
setEffMoveKey( spep_2 -3 + 372, ctga2, 189.7, 295.8 , 0 );
setEffMoveKey( spep_2 -3 + 374, ctga2, 175.5, 282.5 , 0 );
setEffMoveKey( spep_2 -3 + 376, ctga2, 188.9, 297 , 0 );
setEffMoveKey( spep_2 -3 + 378, ctga2, 174.5, 283.7 , 0 );
setEffMoveKey( spep_2 -3 + 380, ctga2, 188.1, 298.3 , 0 );
setEffMoveKey( spep_2 -3 + 382, ctga2, 173.6, 284.8 , 0 );
setEffMoveKey( spep_2 -3 + 384, ctga2, 186.4, 301 , 0 );
setEffMoveKey( spep_2 -3 + 386, ctga2, 170.7, 288.5 , 0 );
setEffMoveKey( spep_2 -3 + 388, ctga2, 169.2, 290.3 , 0 );

setEffScaleKey( spep_2 -3 + 364, ctga2, 0.75, 0.71 );
setEffScaleKey( spep_2 -3 + 366, ctga2, 1.12+b, 1.23+b );
setEffScaleKey( spep_2 -3 + 368, ctga2, 1.13+b, 1.23+b );
setEffScaleKey( spep_2 -3 + 370, ctga2, 1.13+b, 1.24+b );
setEffScaleKey( spep_2 -3 + 372, ctga2, 1.14+b, 1.25+b );
setEffScaleKey( spep_2 -3 + 374, ctga2, 1.14+b, 1.25+b );
setEffScaleKey( spep_2 -3 + 376, ctga2, 1.15+b, 1.25+b );
setEffScaleKey( spep_2 -3 + 378, ctga2, 1.15+b, 1.26+b );
setEffScaleKey( spep_2 -3 + 380, ctga2, 1.16+b, 1.27+b );
setEffScaleKey( spep_2 -3 + 382, ctga2, 1.16+b, 1.27+b );
setEffScaleKey( spep_2 -3 + 384, ctga2, 1.17+b, 1.29+b );
setEffScaleKey( spep_2 -3 + 386, ctga2, 1.19+b, 1.31+b );
setEffScaleKey( spep_2 -3 + 388, ctga2, 1.2+b, 1.33+b );

setEffRotateKey( spep_2 -3 + 364, ctga2, 20 );
setEffRotateKey( spep_2 -3 + 388, ctga2, 20 );

setEffAlphaKey( spep_2 -3 + 364, ctga2, 255 );
setEffAlphaKey( spep_2 -3 + 382, ctga2, 255 );
setEffAlphaKey( spep_2 -3 + 384, ctga2, 170 );
setEffAlphaKey( spep_2 -3 + 386, ctga2, 85 );
setEffAlphaKey( spep_2 -3 + 388, ctga2, 0 );

--文字エントリー
ctdogon = entryEffectLife( spep_2 -3 + 422,  10018, 26, 0x100, -1, 0, -6.9, 114.9 );--ドゴォンッ

setEffMoveKey( spep_2 -3 + 422, ctdogon, -6.9, 114.9 , 0 );
setEffMoveKey( spep_2 -3 + 424, ctdogon, -11.6, 134.8 , 0 );
setEffMoveKey( spep_2 -3 + 426, ctdogon, -3.3, 149.6 , 0 );
setEffMoveKey( spep_2 -3 + 428, ctdogon, -8, 174 , 0 );
setEffMoveKey( spep_2 -3 + 430, ctdogon, -0.5, 184.7 , 0 );
setEffMoveKey( spep_2 -3 + 432, ctdogon, -2.3, 203.2 , 0 );
setEffMoveKey( spep_2 -3 + 434, ctdogon, -8.1, 215.9 , 0 );
setEffMoveKey( spep_2 -3 + 436, ctdogon, 0.6, 212.2 , 0 );
setEffMoveKey( spep_2 -3 + 438, ctdogon, -9.8, 218.7 , 0 );
setEffMoveKey( spep_2 -3 + 440, ctdogon, -2.8, 229.3 , 0 );
setEffMoveKey( spep_2 -3 + 442, ctdogon, -5, 223 , 0 );
setEffMoveKey( spep_2 -3 + 444, ctdogon, -6.1, 241.3 , 0 );
setEffMoveKey( spep_2 -3 + 446, ctdogon, -3, 236.5 , 0 );
setEffMoveKey( spep_2 -3 + 448, ctdogon, -2.7, 241.4 , 0 );

setEffScaleKey( spep_2 -3 + 422, ctdogon, 1.3, 1.3 );
setEffScaleKey( spep_2 -3 + 424, ctdogon, 1.45, 1.45 );
setEffScaleKey( spep_2 -3 + 426, ctdogon, 1.61, 1.61 );
setEffScaleKey( spep_2 -3 + 428, ctdogon, 1.76, 1.76 );
setEffScaleKey( spep_2 -3 + 430, ctdogon, 1.91, 1.91 );
setEffScaleKey( spep_2 -3 + 432, ctdogon, 2.07, 2.07 );
setEffScaleKey( spep_2 -3 + 434, ctdogon, 2.15, 2.15 );
setEffScaleKey( spep_2 -3 + 436, ctdogon, 2.22, 2.22 );
setEffScaleKey( spep_2 -3 + 438, ctdogon, 2.31, 2.31 );
setEffScaleKey( spep_2 -3 + 440, ctdogon, 2.39, 2.39 );
setEffScaleKey( spep_2 -3 + 442, ctdogon, 2.47, 2.47 );
setEffScaleKey( spep_2 -3 + 444, ctdogon, 2.55, 2.55 );
setEffScaleKey( spep_2 -3 + 446, ctdogon, 2.63, 2.63 );
setEffScaleKey( spep_2 -3 + 448, ctdogon, 2.7, 2.7 );

setEffRotateKey( spep_2 -3 + 422, ctdogon, -14.8 );
setEffRotateKey( spep_2 -3 + 448, ctdogon, -14.8 );

setEffAlphaKey( spep_2 -3 + 422, ctdogon, 255 );
setEffAlphaKey( spep_2 -3 + 432, ctdogon, 255 );
setEffAlphaKey( spep_2 -3 + 434, ctdogon, 251 );
setEffAlphaKey( spep_2 -3 + 436, ctdogon, 239 );
setEffAlphaKey( spep_2 -3 + 438, ctdogon, 219 );
setEffAlphaKey( spep_2 -3 + 440, ctdogon, 191 );
setEffAlphaKey( spep_2 -3 + 442, ctdogon, 155 );
setEffAlphaKey( spep_2 -3 + 444, ctdogon, 112 );
setEffAlphaKey( spep_2 -3 + 446, ctdogon, 60 );
setEffAlphaKey( spep_2 -3 + 448, ctdogon, 0 );





--敵の動き
setDisp( spep_2 -3 + 78 , 1, 1 );
setDisp( spep_2  + 124 , 1, 0 );
setDisp( spep_2  + 126 , 1, 1 );
setDisp( spep_2  + 171 , 1, 0 );
setDisp( spep_2  + 201 , 1, 1 );
setDisp( spep_2  + 275 , 1, 0 );
setDisp( spep_2  + 293 , 1, 1 );
setDisp( spep_2  + 320 , 1, 0 );
setDisp( spep_2  + 328 , 1, 1 );
setDisp( spep_2  + 386 , 1, 0 );
setDisp( spep_2  + 389 , 1, 1 );
setDisp( spep_2  + 419 , 1, 0 );
setDisp( spep_2  + 513 , 1, 1 );
setDisp( spep_2  + 660 , 1, 0 );

changeAnime( spep_2 -3 + 78 , 1, 100 );
changeAnime( spep_2 -3 + 86 , 1, 106 );
changeAnime( spep_2 -3 + 204 , 1, 8 );
changeAnime( spep_2 -3 + 278 , 1, 107 );
changeAnime( spep_2 -3 + 328 , 1, 6 );
changeAnime( spep_2 -3 + 392 , 1, 5 );
changeAnime( spep_2 -3 + 516 , 1, 6 );
changeAnime( spep_2 -5 + 528 , 1, 8 );
changeAnime( spep_2 -3 + 556 , 1, 6 );


setMoveKey( spep_2 -3 + 78, 1, -44.1, -38 , 0 );
setMoveKey( spep_2 -3 + 80, 1, -40.7, -38 , 0 );
setMoveKey( spep_2 -3 + 82, 1, -30.6, -38 , 0 );
setMoveKey( spep_2 -3 + 84, 1, -13.7, -38 , 0 );

setMoveKey( spep_2 -3 + 86, 1, 9.9, -38 , 0 );
setMoveKey( spep_2 -3 + 88, 1, 14.6, -38 , 0 );
setMoveKey( spep_2 -3 + 90, 1, 18.6, -38 , 0 );
setMoveKey( spep_2 -3 + 92, 1, 22.1, -38 , 0 );
setMoveKey( spep_2 -3 + 94, 1, 24.9, -38 , 0 );
setMoveKey( spep_2 -3 + 96, 1, 27.1, -38 , 0 );
setMoveKey( spep_2 -3 + 98, 1, 28.6, -38 , 0 );
setMoveKey( spep_2 -3 + 100, 1, 29.6, -38 , 0 );
setMoveKey( spep_2 -3 + 102, 1, 29.9, -38 , 0 );
setMoveKey( spep_2 -3 + 104, 1, 35.3, -38.7 , 0 );
setMoveKey( spep_2 -3 + 106, 1, 45.3, -39.9 , 0 );
setMoveKey( spep_2 -3 + 108, 1, 58.9, -41.7 , 0 );
setMoveKey( spep_2 -3 + 110, 1, 76.2, -43.9 , 0 );
setMoveKey( spep_2 -3 + 112, 1, 97.5, -46.6 , 0 );
setMoveKey( spep_2 -3 + 114, 1, 123.5, -49.9 , 0 );
setMoveKey( spep_2 -3 + 116, 1, 155.3, -53.9 , 0 );
setMoveKey( spep_2 -3 + 118, 1, 194.3, -58.8 , 0 );
setMoveKey( spep_2 -3 + 120, 1, 243.6, -65.1 , 0 );
setMoveKey( spep_2 -3 + 122, 1, 308.4, -73.3 , 0 );
setMoveKey( spep_2 -3 + 124, 1, 402.8, -85.2 , 0 );
setMoveKey( spep_2 -3 + 126, 1, 655.5, -117.3 , 0 );
setMoveKey( spep_2 -3 + 128, 1, -656.8, 34.8 , 0 );
setMoveKey( spep_2 -3 + 130, 1, -315.1, 24.9 , 0 );
setMoveKey( spep_2 -3 + 132, 1, -176.9, 20.9 , 0 );
setMoveKey( spep_2 -3 + 134, 1, -97.2, 18.6 , 0 );
setMoveKey( spep_2 -3 + 136, 1, -47.6, 17.1 , 0 );
setMoveKey( spep_2 -3 + 138, 1, -16.1, 16.2 , 0 );
setMoveKey( spep_2 -3 + 140, 1, 3.7, 15.6 , 0 );
setMoveKey( spep_2 -3 + 142, 1, 16.2, 15.2 , 0 );
setMoveKey( spep_2 -3 + 144, 1, 24.5, 15 , 0 );
setMoveKey( spep_2 -3 + 146, 1, 31.4, 14.8 , 0 );
setMoveKey( spep_2 -3 + 148, 1, 34.1, 13.3 , 0 );
setMoveKey( spep_2 -3 + 150, 1, 36.7, 11.8 , 0 );
setMoveKey( spep_2 -3 + 152, 1, 39.4, 10.3 , 0 );
setMoveKey( spep_2 -3 + 154, 1, 42.1, 8.8 , 0 );
setMoveKey( spep_2 -3 + 156, 1, 44.7, 7.3 , 0 );
setMoveKey( spep_2 -3 + 158, 1, 47.4, 5.8 , 0 );
setMoveKey( spep_2 -3 + 160, 1, 50.1, 4.3 , 0 );
setMoveKey( spep_2 -3 + 162, 1, 52.7, 2.8 , 0 );
setMoveKey( spep_2 -3 + 164, 1, 55.4, 1.3 , 0 );
setMoveKey( spep_2 -3 + 166, 1, 58.1, -0.2 , 0 );
setMoveKey( spep_2 -3 + 168, 1, 60.7, -1.7 , 0 );
setMoveKey( spep_2 -3 + 170, 1, 63.4, -3.2 , 0 );
setMoveKey( spep_2 -3 + 172, 1, 66.1, -4.7 , 0 );

setMoveKey( spep_2 -3 + 204, 1, -42, 48.1 , 0 );
setMoveKey( spep_2 -3 + 205, 1, -42, 48.1 , 0 );
setMoveKey( spep_2 -3 + 206, 1, 22, -18.1 , 0 );
setMoveKey( spep_2 -3 + 220, 1, 22, -18.1 , 0 );
setMoveKey( spep_2 -3 + 222, 1, 15.9, -5.9 , 0 );
setMoveKey( spep_2 -3 + 224, 1, 11.2, 3.5 , 0 );
setMoveKey( spep_2 -3 + 226, 1, 7.4, 11.1 , 0 );
setMoveKey( spep_2 -3 + 228, 1, 4.3, 17.4 , 0 );
setMoveKey( spep_2 -3 + 230, 1, 1.5, 22.9 , 0 );
setMoveKey( spep_2 -3 + 232, 1, -0.8, 27.6 , 0 );
setMoveKey( spep_2 -3 + 234, 1, -2.9, 31.8 , 0 );
setMoveKey( spep_2 -3 + 236, 1, -4.7, 35.4 , 0 );
setMoveKey( spep_2 -3 + 238, 1, -6.4, 38.7 , 0 );
setMoveKey( spep_2 -3 + 240, 1, -7.8, 41.6 , 0 );
setMoveKey( spep_2 -3 + 242, 1, -9.1, 44.2 , 0 );
setMoveKey( spep_2 -3 + 244, 1, -10.3, 46.5 , 0 );
setMoveKey( spep_2 -3 + 246, 1, -11.3, 48.6 , 0 );
setMoveKey( spep_2 -3 + 248, 1, -12.3, 50.5 , 0 );
setMoveKey( spep_2 -3 + 250, 1, -13.1, 52.2 , 0 );
setMoveKey( spep_2 -3 + 252, 1, -13.9, 53.7 , 0 );
setMoveKey( spep_2 -3 + 254, 1, -14.5, 55 , 0 );
setMoveKey( spep_2 -3 + 256, 1, -15.1, 56.2 , 0 );
setMoveKey( spep_2 -3 + 258, 1, -15.6, 57.2 , 0 );
setMoveKey( spep_2 -3 + 260, 1, -16.1, 58.1 , 0 );
setMoveKey( spep_2 -3 + 262, 1, -16.5, 58.9 , 0 );
setMoveKey( spep_2 -3 + 264, 1, -16.8, 59.6 , 0 );
setMoveKey( spep_2 -3 + 266, 1, -17.1, 60.2 , 0 );
setMoveKey( spep_2 -3 + 268, 1, -17.4, 60.7 , 0 );
setMoveKey( spep_2 -3 + 270, 1, -17.6, 61.1 , 0 );
setMoveKey( spep_2 -3 + 272, 1, -17.7, 61.4 , 0 );
setMoveKey( spep_2 -3 + 274, 1, -17.9, 61.7 , 0 );
setMoveKey( spep_2 -3 + 276, 1, -18, 61.9 , 0 );
setMoveKey( spep_2 -3 + 277, 1, -18, 61.9 , 0 );

setMoveKey( spep_2 -3 + 278, 1, 1053.7, -1273.6 , 0 );
setMoveKey( spep_2 -3 + 280, 1, 1051.8, -1270.2 , 0 );
setMoveKey( spep_2 -3 + 282, 1, 1045.6, -1259.8 , 0 );
setMoveKey( spep_2 -3 + 284, 1, 1034.4, -1241 , 0 );
setMoveKey( spep_2 -3 + 286, 1, 1017.3, -1212.4 , 0 );
setMoveKey( spep_2 -3 + 288, 1, 992.9, -1171.5 , 0 );
setMoveKey( spep_2 -3 + 290, 1, 959.1, -1114.9 , 0 );
setMoveKey( spep_2 -3 + 292, 1, 912.4, -1036.5 , 0 );
setMoveKey( spep_2 -3 + 294, 1, 845.8, -925 , 0 );
setMoveKey( spep_2 -3 + 296, 1, 742.6, -752 , 0 );
setMoveKey( spep_2 -3 + 298, 1, 503.9, -352.1 , 0 );
setMoveKey( spep_2 -3 + 300, 1, 512.1, -352.1 , 0 );
setMoveKey( spep_2 -3 + 302, 1, 535.4, -352.1 , 0 );
setMoveKey( spep_2 -3 + 304, 1, 582.9, -352.1 , 0 );
setMoveKey( spep_2 -3 + 306, 1, 720.1, -352.1 , 0 );
setMoveKey( spep_2 -3 + 308, 1, 800.1, -352 , 0 );
setMoveKey( spep_2 -3 + 310, 1, 837.7, -352 , 0 );
setMoveKey( spep_2 -3 + 312, 1, 858, -352 , 0 );
setMoveKey( spep_2 -3 + 314, 1, 870, -352 , 0 );
setMoveKey( spep_2 -3 + 316, 1, 877.3, -352 , 0 );
setMoveKey( spep_2 -3 + 318, 1, 881.9, -352 , 0 );
setMoveKey( spep_2 -3 + 320, 1, 884.7, -352 , 0 );
setMoveKey( spep_2 -3 + 322, 1, 886.3, -352 , 0 );
setMoveKey( spep_2 -3 + 324, 1, 887.1, -352 , 0 );
setMoveKey( spep_2 -3 + 326, 1, 887.3, -352 , 0 );

setMoveKey( spep_2 -3 + 328, 1, -562.2, 23 , 0 );
setMoveKey( spep_2 -3 + 330, 1, -560.3, 23 , 0 );
setMoveKey( spep_2 -3 + 332, 1, -554.6, 23 , 0 );
setMoveKey( spep_2 -3 + 334, 1, -545.1, 23 , 0 );
setMoveKey( spep_2 -3 + 336, 1, -531.8, 23 , 0 );
setMoveKey( spep_2 -3 + 338, 1, -514.8, 23 , 0 );
setMoveKey( spep_2 -3 + 340, 1, -493.9, 23 , 0 );
setMoveKey( spep_2 -3 + 342, 1, -469.2, 23 , 0 );
setMoveKey( spep_2 -3 + 344, 1, -440.8, 23 , 0 );
setMoveKey( spep_2 -3 + 346, 1, -408.5, 23 , 0 );
setMoveKey( spep_2 -3 + 348, 1, -372.5, 23 , 0 );
setMoveKey( spep_2 -3 + 350, 1, -332.6, 23 , 0 );
setMoveKey( spep_2 -3 + 352, 1, -289, 23.1 , 0 );
setMoveKey( spep_2 -3 + 354, 1, -241.6, 23.1 , 0 );
setMoveKey( spep_2 -3 + 356, 1, -190.3, 23.1 , 0 );
setMoveKey( spep_2 -3 + 358, 1, -135.3, 23.1 , 0 );
setMoveKey( spep_2 -3 + 360, 1, -76.5, 23.1 , 0 );
setMoveKey( spep_2 -3 + 362, 1, -13.9, 23.1 , 0 );
setMoveKey( spep_2 -3 + 363, 1, -13.9, 23.1 , 0 );

setMoveKey( spep_2 -3 + 364, 1, 8.4, -27.5 , 0 );
setMoveKey( spep_2 -3 + 365, 1, 8.4, -27.5 , 0 );

setMoveKey( spep_2 -3 + 366, 1, -112, -42 , 0 );
setMoveKey( spep_2 -3 + 368, 1, -211, -150.6 , 0 );
setMoveKey( spep_2 -3 + 370, 1, -301.5, -219.8 , 0 );
setMoveKey( spep_2 -3 + 372, 1, -383.3, -309.6 , 0 );
setMoveKey( spep_2 -3 + 374, 1, -456.5, -389.9 , 0 );
setMoveKey( spep_2 -3 + 376, 1, -521.2, -460.8 , 0 );
setMoveKey( spep_2 -3 + 378, 1, -577.1, -522.2 , 0 );
setMoveKey( spep_2 -3 + 380, 1, -624.5, -574.1 , 0 );
setMoveKey( spep_2 -3 + 382, 1, -663.3, -616.6 , 0 );
setMoveKey( spep_2 -3 + 384, 1, -693.4, -649.7 , 0 );
setMoveKey( spep_2 -3 + 386, 1, -715, -673.3 , 0 );
setMoveKey( spep_2 -3 + 388, 1, -727.9, -687.5 , 0 );
setMoveKey( spep_2 -3 + 390, 1, -732.2, -692.2 , 0 );
setMoveKey( spep_2 -3 + 391, 1, -732.2, -692.2 , 0 );
setMoveKey( spep_2 -3 + 392, 1, -53.8, -15.8 , 0 );
setMoveKey( spep_2 -3 + 394, 1, -51, -14.7 , 0 );
setMoveKey( spep_2 -3 + 396, 1, -40.8, -10.7 , 0 );
setMoveKey( spep_2 -3 + 398, 1, -27.3, -5.5 , 0 );
setMoveKey( spep_2 -3 + 400, 1, -19, -2.2 , 0 );
setMoveKey( spep_2 -3 + 402, 1, -13.6, -0.1 , 0 );
setMoveKey( spep_2 -3 + 404, 1, -9.7, 1.4 , 0 );
setMoveKey( spep_2 -3 + 406, 1, -6.9, 2.5 , 0 );
setMoveKey( spep_2 -3 + 408, 1, -4.8, 3.3 , 0 );
setMoveKey( spep_2 -3 + 410, 1, -3.2, 3.9 , 0 );
setMoveKey( spep_2 -3 + 412, 1, -2, 4.4 , 0 );
setMoveKey( spep_2 -3 + 414, 1, -1.1, 4.7 , 0 );
setMoveKey( spep_2 -3 + 416, 1, -0.5, 4.9 , 0 );
setMoveKey( spep_2 -3 + 418, 1, -0.1, 5.1 , 0 );
setMoveKey( spep_2 -3 + 420, 1, -0, 5.1 , 0 );

setMoveKey( spep_2 -3 + 516, 1, -14, 18 , 0 );
setMoveKey( spep_2 -3 + 524, 1, -14, 18 , 0 );

setMoveKey( spep_2 -3 + 526, 1, -14, 18 , 0 );

setMoveKey( spep_2 -3 + 556, 1, -14, 18 , 0 );
setMoveKey( spep_2  + 660, 1, -14, 18 , 0 );


setScaleKey( spep_2 -3 + 78, 1, 1.5, 1.5 );
setScaleKey( spep_2 -3 + 85, 1, 1.5, 1.5 );

a=0.5;

setScaleKey( spep_2 -3 + 86, 1, 1.5 + a, 1.5 + a );
setScaleKey( spep_2 -3 + 87, 1, 1.5 + a, 1.5 + a );
setScaleKey( spep_2 -3 + 88, 1, 1.5 , 1.5  );
setScaleKey( spep_2 -3 + 91, 1, 1.5 , 1.5  );
setScaleKey( spep_2 -3 + 92, 1, 1.6 , 1.6  );
setScaleKey( spep_2 -3 + 93, 1, 1.6 , 1.6  );
setScaleKey( spep_2 -3 + 94, 1, 1.5 , 1.5  );
setScaleKey( spep_2 -3 + 106, 1, 1.5 , 1.5  );
setScaleKey( spep_2 -3 + 108, 1, 1.49 , 1.49  );
setScaleKey( spep_2 -3 + 110, 1, 1.49 , 1.49  );
setScaleKey( spep_2 -3 + 112, 1, 1.47 , 1.47  );
setScaleKey( spep_2 -3 + 114, 1, 1.46 , 1.46  );
setScaleKey( spep_2 -3 + 116, 1, 1.44 , 1.44  );
setScaleKey( spep_2 -3 + 118, 1, 1.42 , 1.42  );
setScaleKey( spep_2 -3 + 120, 1, 1.4 , 1.4  );
setScaleKey( spep_2 -3 + 122, 1, 1.37 , 1.37  );
setScaleKey( spep_2 -3 + 124, 1, 1.32 , 1.32  );
setScaleKey( spep_2 -3 + 126, 1, 1.2 , 1.2  );
setScaleKey( spep_2 -3 + 128, 1, 1.5 , 1.5  );
setScaleKey( spep_2 -3 + 200, 1, 1.5 , 1.5  );

setScaleKey( spep_2 -3 + 204, 1, 1.5 + a, 1.5 + a );
setScaleKey( spep_2 -3 + 205, 1, 1.5 + a, 1.5 + a );
setScaleKey( spep_2 -3 + 206, 1, 1.5, 1.5  );
setScaleKey( spep_2 -3 + 277, 1, 1.5, 1.5  );

setScaleKey( spep_2 -3 + 278, 1, 2.55, 2.55 );
setScaleKey( spep_2 -3 + 280, 1, 2.55, 2.55 );
setScaleKey( spep_2 -3 + 282, 1, 2.53, 2.53 );
setScaleKey( spep_2 -3 + 284, 1, 2.52, 2.52 );
setScaleKey( spep_2 -3 + 286, 1, 2.5, 2.5 );
setScaleKey( spep_2 -3 + 288, 1, 2.47, 2.47 );
setScaleKey( spep_2 -3 + 290, 1, 2.4, 2.4 );
setScaleKey( spep_2 -3 + 292, 1, 2.33, 2.33 );
setScaleKey( spep_2 -3 + 294, 1, 2.23, 2.23 );
setScaleKey( spep_2 -3 + 296, 1, 2.07, 2.07 );
setScaleKey( spep_2 -3 + 298, 1, 1.7, 1.7 );

setScaleKey( spep_2 -3 + 328, 1, 1.5, 1.5 );
setScaleKey( spep_2 -3 + 363, 1, 1.5, 1.5 );

setScaleKey( spep_2 -3 + 364, 1, 2.0, 2.0 );
setScaleKey( spep_2 -3 + 365, 1, 2.0, 2.0 );
setScaleKey( spep_2 -3 + 366, 1, 1.5, 1.5 );
setScaleKey( spep_2 -3 + 368, 1, 1.45, 1.45 );
setScaleKey( spep_2 -3 + 370, 1, 1.41, 1.41 );
setScaleKey( spep_2 -3 + 372, 1, 1.37, 1.37 );
setScaleKey( spep_2 -3 + 374, 1, 1.33, 1.33 );
setScaleKey( spep_2 -3 + 376, 1, 1.3, 1.3 );
setScaleKey( spep_2 -3 + 378, 1, 1.28, 1.28 );
setScaleKey( spep_2 -3 + 380, 1, 1.25, 1.25 );
setScaleKey( spep_2 -3 + 382, 1, 1.23, 1.23 );
setScaleKey( spep_2 -3 + 384, 1, 1.22, 1.22 );
setScaleKey( spep_2 -3 + 386, 1, 1.21, 1.21 );
setScaleKey( spep_2 -3 + 388, 1, 1.2, 1.2 );

setScaleKey( spep_2 -3 + 392, 1, 3, 3 );
setScaleKey( spep_2 -3 + 394, 1, 2.85, 2.85 );
setScaleKey( spep_2 -3 + 396, 1, 2.34, 2.34 );
setScaleKey( spep_2 -3 + 398, 1, 1.68, 1.68 );
setScaleKey( spep_2 -3 + 400, 1, 1.26, 1.26 );
setScaleKey( spep_2 -3 + 402, 1, 0.99, 0.99 );
setScaleKey( spep_2 -3 + 404, 1, 0.78, 0.78 );
setScaleKey( spep_2 -3 + 406, 1, 0.66, 0.66 );
setScaleKey( spep_2 -3 + 408, 1, 0.54, 0.54 );
setScaleKey( spep_2 -3 + 410, 1, 0.45, 0.45 );
setScaleKey( spep_2 -3 + 412, 1, 0.39, 0.39 );
setScaleKey( spep_2 -3 + 414, 1, 0.36, 0.36 );
setScaleKey( spep_2 -3 + 416, 1, 0.33, 0.33 );
setScaleKey( spep_2  + 418, 1, 0.3, 0.3 );

setScaleKey( spep_2 -3 + 516, 1, 1.5, 1.5 );
setScaleKey( spep_2  + 660, 1, 1.5, 1.5 );

setRotateKey( spep_2 -3 + 78, 1, -5.3 );

setRotateKey( spep_2 -3 + 86, 1, -5.3 );
setRotateKey( spep_2 -3 + 102, 1, -5.3 );
setRotateKey( spep_2 -3 + 104, 1, -5.4 );
setRotateKey( spep_2 -3 + 106, 1, -5.6 );
setRotateKey( spep_2 -3 + 108, 1, -6 );
setRotateKey( spep_2 -3 + 110, 1, -6.4 );
setRotateKey( spep_2 -3 + 112, 1, -6.9 );
setRotateKey( spep_2 -3 + 114, 1, -7.5 );
setRotateKey( spep_2 -3 + 116, 1, -8.2 );
setRotateKey( spep_2 -3 + 118, 1, -9.1 );
setRotateKey( spep_2 -3 + 120, 1, -10.3 );
setRotateKey( spep_2 -3 + 122, 1, -11.8 );
setRotateKey( spep_2 -3 + 124, 1, -14.1 );
setRotateKey( spep_2 -3 + 126, 1, -20 );
setRotateKey( spep_2 -3 + 128, 1, -25 );
setRotateKey( spep_2 -3 + 130, 1, -27.5 );
setRotateKey( spep_2 -3 + 132, 1, -28.5 );
setRotateKey( spep_2 -3 + 134, 1, -29.1 );
setRotateKey( spep_2 -3 + 136, 1, -29.4 );
setRotateKey( spep_2 -3 + 138, 1, -29.7 );
setRotateKey( spep_2 -3 + 140, 1, -29.8 );
setRotateKey( spep_2 -3 + 142, 1, -29.9 );
setRotateKey( spep_2 -3 + 144, 1, -29.9 );
setRotateKey( spep_2 -3 + 146, 1, -30 );
setRotateKey( spep_2 -3 + 148, 1, -30.3 );
setRotateKey( spep_2 -3 + 150, 1, -30.6 );
setRotateKey( spep_2 -3 + 152, 1, -30.9 );
setRotateKey( spep_2 -3 + 154, 1, -31.2 );
setRotateKey( spep_2 -3 + 156, 1, -31.5 );
setRotateKey( spep_2 -3 + 158, 1, -31.8 );
setRotateKey( spep_2 -3 + 160, 1, -32 );
setRotateKey( spep_2 -3 + 162, 1, -32.3 );
setRotateKey( spep_2 -3 + 164, 1, -32.6 );
setRotateKey( spep_2 -3 + 166, 1, -32.9 );
setRotateKey( spep_2 -3 + 168, 1, -33.2 );
setRotateKey( spep_2 -3 + 170, 1, -33.5 );
setRotateKey( spep_2 -3 + 172, 1, -33.8 );
setRotateKey( spep_2 -3 + 200, 1, -33.8 );

setRotateKey( spep_2 -3 + 204, 1, 40 );
setRotateKey( spep_2 -3 + 277, 1, 40 );

setRotateKey( spep_2 -3 + 278, 1, -130 );
setRotateKey( spep_2 -3 + 280, 1, -130 );
setRotateKey( spep_2 -3 + 282, 1, -129.9 );
setRotateKey( spep_2 -3 + 284, 1, -129.6 );
setRotateKey( spep_2 -3 + 286, 1, -129.3 );
setRotateKey( spep_2 -3 + 288, 1, -128.9 );
setRotateKey( spep_2 -3 + 290, 1, -128.3 );
setRotateKey( spep_2 -3 + 292, 1, -127.4 );
setRotateKey( spep_2 -3 + 294, 1, -126.2 );
setRotateKey( spep_2 -3 + 296, 1, -124.3 );
setRotateKey( spep_2 -3 + 298, 1, -120 );
setRotateKey( spep_2 -3 + 300, 1, -119 );
setRotateKey( spep_2 -3 + 302, 1, -116.1 );
setRotateKey( spep_2 -3 + 304, 1, -110.1 );
setRotateKey( spep_2 -3 + 306, 1, -93 );
setRotateKey( spep_2 -3 + 308, 1, -83 );
setRotateKey( spep_2 -3 + 310, 1, -78.3 );
setRotateKey( spep_2 -3 + 312, 1, -75.7 );
setRotateKey( spep_2 -3 + 314, 1, -74.2 );
setRotateKey( spep_2 -3 + 316, 1, -73.3 );
setRotateKey( spep_2 -3 + 318, 1, -72.8 );
setRotateKey( spep_2 -3 + 320, 1, -72.4 );
setRotateKey( spep_2 -3 + 322, 1, -72.2 );
setRotateKey( spep_2 -3 + 324, 1, -72.1 );

setRotateKey( spep_2 -3 + 328, 1, 90 );
setRotateKey( spep_2 -3 + 330, 1, 89.9 );
setRotateKey( spep_2 -3 + 332, 1, 89.7 );
setRotateKey( spep_2 -3 + 334, 1, 89.4 );
setRotateKey( spep_2 -3 + 336, 1, 89 );
setRotateKey( spep_2 -3 + 338, 1, 88.4 );
setRotateKey( spep_2 -3 + 340, 1, 87.7 );
setRotateKey( spep_2 -3 + 342, 1, 86.9 );
setRotateKey( spep_2 -3 + 344, 1, 85.9 );
setRotateKey( spep_2 -3 + 346, 1, 84.8 );
setRotateKey( spep_2 -3 + 348, 1, 83.6 );
setRotateKey( spep_2 -3 + 350, 1, 82.3 );
setRotateKey( spep_2 -3 + 352, 1, 80.8 );
setRotateKey( spep_2 -3 + 354, 1, 79.2 );
setRotateKey( spep_2 -3 + 356, 1, 77.5 );
setRotateKey( spep_2 -3 + 358, 1, 75.6 );
setRotateKey( spep_2 -3 + 360, 1, 73.6 );
setRotateKey( spep_2 -3 + 362, 1, 71.5 );
setRotateKey( spep_2 -3 + 363, 1, 71.5 );

setRotateKey( spep_2 -3 + 364, 1, 23.5 );
setRotateKey( spep_2 -3 + 365, 1, 23.5 );

setRotateKey( spep_2 -3 + 366, 1, -36.3 );
setRotateKey( spep_2 -3 + 367, 1, -36.3 );
setRotateKey( spep_2 -3 + 368, 1, -43.3 );
setRotateKey( spep_2 -3 + 370, 1, -49.7 );
setRotateKey( spep_2 -3 + 372, 1, -55.5 );
setRotateKey( spep_2 -3 + 374, 1, -60.7 );
setRotateKey( spep_2 -3 + 376, 1, -65.3 );
setRotateKey( spep_2 -3 + 378, 1, -69.2 );
setRotateKey( spep_2 -3 + 380, 1, -72.6 );
setRotateKey( spep_2 -3 + 382, 1, -75.3 );
setRotateKey( spep_2 -3 + 384, 1, -77.5 );
setRotateKey( spep_2 -3 + 386, 1, -79 );
setRotateKey( spep_2 -3 + 388, 1, -79.9 );
setRotateKey( spep_2 -3 + 390, 1, -80.2 );

setRotateKey( spep_2 -3 + 392, 1, 0 );
setRotateKey( spep_2 -3 + 515, 1, 0 );

setRotateKey( spep_2 -3 + 516, 1, -30 );
setRotateKey( spep_2 -3 + 525, 1, -30 );

setRotateKey( spep_2 -3 + 526, 1, -79.5 );
setRotateKey( spep_2 -3 + 555, 1, -79.5 );

setRotateKey( spep_2 -3 + 556, 1, -30 );
setRotateKey( spep_2  + 660, 1, -30 );


--白フェード
entryFade( spep_2 + 86, 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 205, 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 294, 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 365, 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--音
--playSe( spep_2 -3 + 86, 1001 );  --ガッ
playSe( spep_2 -3 + 86, 1010 );  --ガッ
playSe( spep_2 + 152, 43 );  --瞬間移動
playSe( spep_2 -3 + 204, 1009 );  --ズン
playSe( spep_2 + 258, 43 );  --瞬間移動
playSe( spep_2 -3 + 300, 1010 );  --バキ
playSe( spep_2 + 342, 1109 );  --瞬間移動
playSe( spep_2 -3 + 364, 1011 );  --強いガッ
playSe( spep_2 -3 + 422, 1023 );  --ドゴォン
playSe( spep_2 + 468, 1072 );  --18号迫る
setSeVolume( spep_2 + 468, 1072, 130 );
playSe( spep_2 + 524, 1153 );  --踏む
playSe( spep_2 + 600, 4 );  --指差す
playSe( spep_2 + 608, 1154 );  --溜める
playSe( spep_2 + 646, 1126 );  --放つ
setSeVolume( spep_2 + 646, 1126, 70 );
playSe( spep_2 + 666, 1024 );  --爆発
setSeVolume( spep_2 + 666, 1024, 120 );
playSe( spep_2 + 666, 1067 );  --爆発
setSeVolume( spep_2 + 666, 1067, 75 );


-- ** ダメージ表示 ** --
dealDamage(spep_2 + 654);
endPhase( spep_2 + 768 );


end

