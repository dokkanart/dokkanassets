--1018800:ベルガモ(巨大化)_デンジャーズトライアングル

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
SP_01 = 154455 ;--ため
SP_02 = 154456 ;--トライアングル
SP_03 = 154457 ;--横移動（ナビ）
SP_04 = 154458 ;--流れ星
SP_05 = 154459 ;--ラッシュ
SP_06 = 154460 ;--気弾ため
SP_07 = 154461 ;--気弾発射
SP_08 = 154462 ;--気弾命中
SP_09 = 154463 ;--３色爆発

--敵側
SP_01x = 154468 ;
SP_02x = 154469 ;
SP_03x = 154470 ;
SP_04x = 154471 ;
SP_05x = 154472 ;
SP_06x = 154460 ;--気弾ため
SP_07x = 154473 ;
SP_08x = 154583 ;--気弾命中
SP_09x = 154463 ;--３色爆発

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
-- ため(100F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --ため(ef_001)

setEffMoveKey( spep_0 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_0 + 100, tame, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 100, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 100, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 100, tame, 255 );


-- ** カットイン ** --
speff = entryEffect( spep_0 + 40, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0 + 40, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_0 + 56,  190006, 68, 0x100, -1, 0, 109.9, 515.5 ); --ゴゴゴ
setEffShake( spep_0 + 56, ctgogo, 68, 10 );

setEffMoveKey( spep_0 + 56, ctgogo, 109.9, 515.5 , 0 );
setEffMoveKey( spep_0 + 124, ctgogo, 109.9, 515.5 , 0 );

setEffScaleKey( spep_0 + 56, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_0 + 116, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_0 + 118, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_0 + 120, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_0 + 122, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_0 + 124, ctgogo, 1.69, 1.69 );

setEffRotateKey( spep_0 + 56, ctgogo, 0 );
setEffRotateKey( spep_0 + 124, ctgogo, 0 );

setEffAlphaKey( spep_0 + 56, ctgogo, 255 );
setEffAlphaKey( spep_0 + 124, ctgogo, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 12, 906, 88, 0x100, -1, 0, 0, 0 );

setEffShake( spep_0 + 12, shuchusen1, 88, 20);
setEffMoveKey( spep_0 + 12, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 100, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 12, shuchusen1, 1, 1 );
setEffScaleKey( spep_0 + 100, shuchusen1, 1, 1 );

setEffRotateKey( spep_0 + 12, shuchusen1, 0 );
setEffRotateKey( spep_0 + 100, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 12, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 100, shuchusen1, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 40, 10, 50, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
playSe( spep_0 + 0,  8);  --集中線
setSeVolume( spep_0 + 0,  8,  110);
playSe( spep_0 + 22,  43);  --瞬間移動
setSeVolume( spep_0 + 22,  43,  73);

playSe( spep_0 + 40,  1018);  --カットイン

-- ** 次の準備 ** --
spep_1 = spep_0 + 100;

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
playSe( spep_1 + 4, SE_05 );

-- ** 次の準備 ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

--------------------------------------
--取り囲む(70F)
--------------------------------------

-- ** エフェクト等 ** --
kakomu = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 );  --囲む(ef_002)

setEffMoveKey( spep_2 + 0, kakomu, 0, 0 , 0 );
setEffMoveKey( spep_2 + 70, kakomu, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, kakomu, 1.0, 1.0 );
setEffScaleKey( spep_2 + 70, kakomu, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kakomu, 0 );
setEffRotateKey( spep_2 + 70, kakomu, 0 );
setEffAlphaKey( spep_2 + 0, kakomu, 255 );
setEffAlphaKey( spep_2 + 70, kakomu, 255 );

-- ** 敵の動き ** --
setDisp( spep_2 + 0, 1, 1 );
changeAnime( spep_2 + 0, 1, 100);

setMoveKey( spep_2 + 0, 1, 29.6, 12 , 0 );
setMoveKey( spep_2 + 4, 1, 29.6, 12 , 0 );
setMoveKey( spep_2 + 6, 1, 29.6, 12.1 , 0 );
setMoveKey( spep_2 + 10, 1, 29.6, 12.1 , 0 );
setMoveKey( spep_2 + 12, 1, 29.5, 12.1 , 0 );
setMoveKey( spep_2 + 16, 1, 29.5, 12.1 , 0 );
setMoveKey( spep_2 + 18, 1, 29.5, 12.2 , 0 );
setScaleKey( spep_2 + 0, 1, 1, 1 );
setScaleKey( spep_2 + 4, 1, 1, 1 );
setScaleKey( spep_2 + 6, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 12, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 14, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 20, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 22, 1, 1.03, 1.03 );
setRotateKey( spep_2 + 0, 1, 0 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_2 + 0, 906, 70, 0x100, -1, 0, 0, 0 );  --集中線

setEffShake( spep_2 + 0, shuchusen2, 70, 20 );
setEffMoveKey( spep_2 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 70, shuchusen2, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, shuchusen2, 1.6, 1.6 );
setEffScaleKey( spep_2 + 70, shuchusen2, 1.6, 1.6 );
setEffRotateKey( spep_2 + 0, shuchusen2, 0 );
setEffRotateKey( spep_2 + 70, shuchusen2, 0 );
setEffAlphaKey( spep_2 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 70, shuchusen2, 255 );



ryusen = entryEffectLife(  spep_2 + 0,  914,  70,  0x80,  -1,  0,  0,  0);

setEffMoveKey(  spep_2 + 0,  ryusen,  0,  0,  0);
setEffMoveKey(  spep_2 + 70,  ryusen,  0,  0,  0);
setEffScaleKey(  spep_2 + 0,  ryusen,  1.7,  1.1);
setEffScaleKey(  spep_2 + 70,  ryusen,  1.7,  1.1);
setEffRotateKey(  spep_2 + 0,  ryusen,  0);
setEffRotateKey(  spep_2 + 70,  ryusen,  0);
setEffAlphaKey(  spep_2 + 0,  ryusen,  255);
setEffAlphaKey(  spep_2 + 70,  ryusen,  255);


-- ** 音 ** --
playSe( spep_2 + 6,  1003);
playSe( spep_2 + 6,  4);
playSe( spep_2 + 15, 4);
playSe( spep_2 + 19, 1003);
playSe( spep_2 + 19, 4);
playSe( spep_2 + 28, 4);
playSe( spep_2 + 41, 1003);
playSe( spep_2 + 41, 4);
playSe( spep_2 + 50, 4);

setSeVolume( spep_2 + 6,  1003,  60);
setSeVolume( spep_2 + 6,  4,  178);
setSeVolume( spep_2 + 15,  4,  178);
setSeVolume( spep_2 + 19,  1003,  60);
setSeVolume( spep_2 + 19,  4,  178);
setSeVolume( spep_2 + 28,  4,  178);
setSeVolume( spep_2 + 41,  1003,  60);
setSeVolume( spep_2 + 41,  4,  178);
setSeVolume( spep_2 + 50,  4,  178);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 70, 0, 0, 0, 0, 255 );  --黒　背景

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 30; --エンドフェイズのフレーム数を置き換える

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

setDisp(  spep_2 + 70,  1,  0);
setMoveKey( spep_2 + 32, 1, 29.5, 12.2 , 0 );
setMoveKey( spep_2 + 34, 1, 29.5, 12.3 , 0 );
setMoveKey( spep_2 + 42, 1, 29.5, 12.3 , 0 );
setMoveKey( spep_2 + 44, 1, 29.4, 12.4 , 0 );
setMoveKey( spep_2 + 52, 1, 29.4, 12.4 , 0 );
setMoveKey( spep_2 + 54, 1, 29.4, 12.5 , 0 );
setMoveKey( spep_2 + 64, 1, 29.4, 12.5 , 0 );
setScaleKey( spep_2 + 30, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 32, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 36, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 38, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 46, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 48, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 54, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 56, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 62, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 64, 1, 1.08, 1.08 );
setRotateKey( spep_2 + 64, 1, 0 );


-- ** 白フェード ** --
entryFade( spep_2 + 62, 4,  6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 70;

------------------------------------------------------
-- 横移動(104F)
------------------------------------------------------

-- ** エフェクト等 ** --
nabi = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --ナビ(ef_003)

setEffMoveKey( spep_3 + 0, nabi, 0, 0 , 0 );
setEffMoveKey( spep_3 + 104, nabi, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, nabi, 1.0, 1.0 );
setEffScaleKey( spep_3 + 104, nabi, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, nabi, 0 );
setEffRotateKey( spep_3 + 104, nabi, 0 );
setEffAlphaKey( spep_3 + 0, nabi, 255 );
setEffAlphaKey( spep_3 + 104, nabi, 255 );


-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_3 + 0, 906, 104, 0x100, -1, 0, 0, 0 );  --集中線

setEffShake( spep_3 + 0, shuchusen3, 104, 20 );
setEffMoveKey( spep_3 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_3 + 104, shuchusen3, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, shuchusen3, 1.6, 1.6 );
setEffScaleKey( spep_3 + 104, shuchusen3, 1.6, 1.6 );
setEffRotateKey( spep_3 + 0, shuchusen3, 0 );
setEffRotateKey( spep_3 + 104, shuchusen3, 0 );
setEffAlphaKey( spep_3 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_3 + 28, shuchusen3, 255 );
setEffAlphaKey( spep_3 + 29, shuchusen3, 0 );
setEffAlphaKey( spep_3 + 41, shuchusen3, 0 );
setEffAlphaKey( spep_3 + 42, shuchusen3, 255 );
setEffAlphaKey( spep_3 + 66, shuchusen3, 255 );
setEffAlphaKey( spep_3 + 67, shuchusen3, 0 );
setEffAlphaKey( spep_3 + 77, shuchusen3, 0 );
setEffAlphaKey( spep_3 + 78, shuchusen3, 255 );
setEffAlphaKey( spep_3 + 104, shuchusen3, 255 );


ryusen1 = entryEffectLife(  spep_3 + 0,  914,  104,  0x80,  -1,  0,  0,  0);

setEffMoveKey(  spep_3 + 0,  ryusen1,  0,  0,  0);
setEffMoveKey(  spep_3 + 104,  ryusen1,  0,  0,  0);
setEffScaleKey(  spep_3 + 0,  ryusen1,  1.7,  1.1);
setEffScaleKey(  spep_3 + 104,  ryusen1,  1.7,  1.1);
setEffRotateKey(  spep_3 + 0,  ryusen1,  0);
setEffRotateKey(  spep_3 + 104,  ryusen1,  0);
setEffAlphaKey(  spep_3 + 0,  ryusen1,  255);
setEffAlphaKey(  spep_3 + 104,  ryusen1,  255);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 104, 0, 0, 0, 0, 255 );  --黒　背景


-- ** 音 ** --
playSe( spep_3 + 14,  1117);
playSe( spep_3 + 14,  4);
playSe( spep_3 + 23,  1003);
playSe( spep_3 + 50,  1117);
playSe( spep_3 + 50,  4);
playSe( spep_3 + 59,  1003);
playSe( spep_3 + 88,  1117);
playSe( spep_3 + 88,  4);
playSe( spep_3 + 97,  1003); 

setSeVolume( spep_3 + 14,  110);
setSeVolume( spep_3 + 14,  168);
setSeVolume( spep_3 + 23,  60);  
setSeVolume( spep_3 + 50,  110);
setSeVolume( spep_3 + 50,  168);
setSeVolume( spep_3 + 59,  60);  
setSeVolume( spep_3 + 88,  110);
setSeVolume( spep_3 + 88,  168);
setSeVolume( spep_3 + 97,  60);  

stopSe( spep_3 + 14 + 9, 1117,  7);
stopSe( spep_3 + 50 + 9, 1117,  7);
stopSe( spep_3 + 88 + 9, 1117,  7);

-- ** 白フェード ** --
entryFade( spep_3 + 98, 4,  4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 104;


------------------------------------------------------
-- 流れ星(194F)
------------------------------------------------------

-- ** エフェクト等 ** --
triangle = entryEffect( spep_4 + 0, SP_04, 0x100, -1, 0, 0, 0 );  --三角(ef_004)

setEffMoveKey( spep_4 + 0, triangle, 0, 0 , 0 );
setEffMoveKey( spep_4 + 194, triangle, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, triangle, 1.0, 1.0 );
setEffScaleKey( spep_4 + 194, triangle, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, triangle, 0 );
setEffRotateKey( spep_4 + 194, triangle, 0 );
setEffAlphaKey( spep_4 + 0, triangle, 255 );
setEffAlphaKey( spep_4 + 194, triangle, 255 );


ryusen2 = entryEffectLife(  spep_4 + 0,  914,  194,  0x80,  -1,  0,  0,  0);

setEffMoveKey(  spep_4 + 0,  ryusen2,  0,  0,  0);
setEffMoveKey(  spep_4 + 194,  ryusen2,  0,  0,  0);
setEffScaleKey(  spep_4 + 0,  ryusen2,  4.0,  3.2);
setEffScaleKey(  spep_4 + 194,  ryusen2,  4.0,  3.2);
setEffRotateKey(  spep_4 + 0,  ryusen2,  -45);
setEffRotateKey(  spep_4 + 194,  ryusen2, -45);
setEffAlphaKey(  spep_4 + 0,  ryusen2,  255);
setEffAlphaKey(  spep_4 + 194,  ryusen2,  255);


playSe( spep_4 - 4,  1116);
playSe( spep_4 + 19,  1183);
playSe( spep_4 + 69,  1072);
playSe( spep_4 + 75,  1022);
playSe( spep_4 + 90,  1144);
playSe( spep_4 + 103, 1180);

setSeVolume( spep_4 - 4,  1116,  100);
setSeVolume( spep_4 + 19,  1183,  100);
setSeVolume( spep_4 + 69,  1072,  89);
setSeVolume( spep_4 + 75,  1022,  56);
setSeVolume( spep_4 + 90,  1144,  0);  
setSeVolume( spep_4 + 96,  1144,  30);  
setSeVolume( spep_4 + 97,  1144,  31); 
setSeVolume( spep_4 + 98,  1144,  32); 
setSeVolume( spep_4 + 99,  1144,  33); 
setSeVolume( spep_4 + 100,  1144,  34); 
setSeVolume( spep_4 + 101,  1144,  35); 
setSeVolume( spep_4 + 102,  1144,  36); 
setSeVolume( spep_4 + 103,  1144,  37); 
setSeVolume( spep_4 + 104,  1144,  38); 
setSeVolume( spep_4 + 105,  1144,  39); 
setSeVolume( spep_4 + 106,  1144,  40); 
setSeVolume( spep_4 + 103,  1180,  0);
setSeVolume( spep_4 + 139,  1180,  0);
setSeVolume( spep_4 + 140,  1180,  120);
setSeVolume( spep_4 + 142,  1180,  126);

stopSe( spep_4 + 32,  1116,  48);
stopSe( spep_4 + 19 + 100,  1183,  35);
stopSe( spep_4 + 69 + 41,  1072,  12);
stopSe( spep_4 + 75 + 51,  1022,  38);
stopSe( spep_4 + 96 + 45,  1144,  17);

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 194, 0, 0, 0, 0, 200 );  --黒　背景


-- ** 白フェード ** --
entryFade( spep_4 + 186, 4,  6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 194;

------------------------------------------------------
-- ラッシュ(130F)
------------------------------------------------------

-- ** エフェクト等 ** --
kakuto = entryEffect( spep_5 + 0, SP_05, 0x100, -1, 0, 0, 0 );  --格闘(ef_005)

setEffMoveKey( spep_5 + 0, kakuto, 0, 0 , 0 );
setEffMoveKey( spep_5 + 130, kakuto, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, kakuto, 1.0, 1.0 );
setEffScaleKey( spep_5 + 130, kakuto, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, kakuto, 0 );
setEffRotateKey( spep_5 + 130, kakuto, 0 );
setEffAlphaKey( spep_5 + 0, kakuto, 255 );
setEffAlphaKey( spep_5 + 130, kakuto, 255 );
setEffAlphaKey( spep_5 + 131, kakuto,  0 );
setEffAlphaKey( spep_5 + 150, kakuto,  0 );  --キャラだけ残るので非表示

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_5 + 10 - 3,  906, 90, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_5 + 10 - 3, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_5 + 32 - 3, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_5 + 50 - 3, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_5 + 72 - 3, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_5 + 100 - 3, shuchusen4, 0, 0 , 0 );
setEffScaleKey(  spep_5 + 10 - 3, shuchusen4,  1.0,  1.0  );
setEffScaleKey(  spep_5 + 100 - 3, shuchusen4,  1.0,  1.0  );
setEffRotateKey(  spep_5 + 10 -3,  shuchusen4,  0);
setEffRotateKey(  spep_5 + 10 -3,  shuchusen4,  0);
setEffAlphaKey( spep_5 + 10 - 3, shuchusen4, 255 );
setEffAlphaKey( spep_5 + 32 - 3, shuchusen4, 255 );
setEffAlphaKey( spep_5 + 33 - 3, shuchusen4, 0 );
setEffAlphaKey( spep_5 + 49 - 3, shuchusen4, 0 );
setEffAlphaKey( spep_5 + 50 - 3, shuchusen4, 255 );
setEffAlphaKey( spep_5 + 72 - 3, shuchusen4, 255 );
setEffAlphaKey( spep_5 + 73 - 3, shuchusen4, 0 );
setEffAlphaKey( spep_5 + 91 - 3, shuchusen4, 0 );
setEffAlphaKey( spep_5 + 92 - 3, shuchusen4, 255 );
setEffAlphaKey( spep_5 + 100 - 3, shuchusen4, 255 );


-- ** 敵の動き ** --
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 130, 1, 0 );
changeAnime( spep_5 + 0, 1, 100 );
changeAnime( spep_5 + 10, 1, 108 );
changeAnime( spep_5 + 50, 1, 106 );
changeAnime( spep_5 + 92, 1, 108 );

setMoveKey( spep_5 + 0, 1, 0, -0.1 , 0 );
setMoveKey( spep_5 + 9, 1, 0, -0.1 , 0 );
setMoveKey( spep_5 + 10, 1, 0, -40.1 , 0 );
setMoveKey( spep_5 + 12, 1, 11.3, -50.1 , 0 );
setMoveKey( spep_5 + 14, 1, -8.3, -38.2 , 0 );
setMoveKey( spep_5 + 16, 1, 36.6, -47.1 , 0 );
setMoveKey( spep_5 + 18, 1, 15.9, -47.6 , 0 );
setMoveKey( spep_5 + 20, 1, 30.5, -51.5 , 0 );
setMoveKey( spep_5 + 22, 1, 6.2, -30.7 , 0 );
setMoveKey( spep_5 + 24, 1, 52.5, -34.6 , 0 );
setMoveKey( spep_5 + 26, 1, 31.7, -35 , 0 );
setMoveKey( spep_5 + 28, 1, 41.1, -34.3 , 0 );
setMoveKey( spep_5 + 30, 1, 17, -14.2 , 0 );
setMoveKey( spep_5 + 32, 1, 45.5, -14.6 , 0 );
setMoveKey( spep_5 + 34, 1, 46.2, -12.8 , 0 );
setMoveKey( spep_5 + 36, 1, 47.1, -11 , 0 );
setMoveKey( spep_5 + 38, 1, 47.9, -9.1 , 0 );
setMoveKey( spep_5 + 40, 1, 48.6, -7.3 , 0 );
setMoveKey( spep_5 + 42, 1, 49.5, -5.5 , 0 );
setMoveKey( spep_5 + 44, 1, 50.3, -3.6 , 0 );
setMoveKey( spep_5 + 46, 1, 51.1, -1.8 , 0 );
setMoveKey( spep_5 + 49, 1, 51.8, 0.2 , 0 );
setMoveKey( spep_5 + 50, 1, 30.7, 9.8 , 0 );
setMoveKey( spep_5 + 52, 1, 40.5, 8.7 , 0 );
setMoveKey( spep_5 + 54, 1, 17.5, 29.2 , 0 );
setMoveKey( spep_5 + 56, 1, 57.3, 29.5 , 0 );
setMoveKey( spep_5 + 58, 1, 28, 29.7 , 0 );
setMoveKey( spep_5 + 60, 1, 34.2, 26.4 , 0 );
setMoveKey( spep_5 + 62, 1, 1.5, 47.8 , 0 );
setMoveKey( spep_5 + 64, 1, 39.3, 44.5 , 0 );
setMoveKey( spep_5 + 66, 1, 10, 44.7 , 0 );
setMoveKey( spep_5 + 68, 1, 14.5, 36.8 , 0 );
setMoveKey( spep_5 + 70, 1, -13, 48.9 , 0 );
setMoveKey( spep_5 + 72, 1, 14.2, 39.7 , 0 );
setMoveKey( spep_5 + 74, 1, 9.5, 41.9 , 0 );
setMoveKey( spep_5 + 76, 1, 4.9, 44.2 , 0 );
setMoveKey( spep_5 + 78, 1, 0.2, 46.4 , 0 );
setMoveKey( spep_5 + 80, 1, -4.4, 48.7 , 0 );
setMoveKey( spep_5 + 82, 1, -9.1, 51 , 0 );
setMoveKey( spep_5 + 84, 1, -13.7, 53.2 , 0 );
setMoveKey( spep_5 + 86, 1, -18.4, 55.5 , 0 );
setMoveKey( spep_5 + 88, 1, -27.1, 67.5 , 0 );
setMoveKey( spep_5 + 91, 1, -36.7, 79.8 , 0 );
setMoveKey( spep_5 + 92, 1, 90.3, 59.4 , 0 );
setMoveKey( spep_5 + 94, 1, 136.2, 36.4 , 0 );
setMoveKey( spep_5 + 96, 1, 143.1, 38.4 , 0 );
setMoveKey( spep_5 + 98, 1, 220.4, 15.4 , 0 );
setMoveKey( spep_5 + 100, 1, 230.9, -4 , 0 );
setMoveKey( spep_5 + 102, 1, 276.8, -26.8 , 0 );
setMoveKey( spep_5 + 104, 1, 226.3, -9.7 , 0 );
setMoveKey( spep_5 + 106, 1, 236.6, -15.8 , 0 );
setMoveKey( spep_5 + 108, 1, 190.2, -17.2 , 0 );
setMoveKey( spep_5 + 110, 1, 201.6, -23.2 , 0 );
setMoveKey( spep_5 + 112, 1, 187.1, -12.8 , 0 );
setMoveKey( spep_5 + 114, 1, 219.6, -18.9 , 0 );
setMoveKey( spep_5 + 116, 1, 223.9, -20.2 , 0 );
setMoveKey( spep_5 + 118, 1, 228.2, -21.6 , 0 );
setMoveKey( spep_5 + 120, 1, 232.5, -23 , 0 );
setMoveKey( spep_5 + 122, 1, 236.8, -24.3 , 0 );
setMoveKey( spep_5 + 124, 1, 241.1, -25.6 , 0 );
setMoveKey( spep_5 + 126, 1, 245.3, -27 , 0 );
setMoveKey( spep_5 + 128, 1, 249.6, -28.4 , 0 );

setScaleKey( spep_5 + 0, 1, 1, 1 );
setScaleKey( spep_5 + 10, 1, 1, 1 );
setScaleKey( spep_5 + 12, 1, 1.17, 1.17 );
setScaleKey( spep_5 + 14, 1, 1.33, 1.33 );
setScaleKey( spep_5 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 26, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 28, 1, 1.33, 1.33 );
setScaleKey( spep_5 + 30, 1, 1.17, 1.17 );
setScaleKey( spep_5 + 32, 1, 1, 1 );
setScaleKey( spep_5 + 50, 1, 1, 1 );
setScaleKey( spep_5 + 52, 1, 1.17, 1.17 );
setScaleKey( spep_5 + 54, 1, 1.33, 1.33 );
setScaleKey( spep_5 + 56, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 66, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 68, 1, 1.33, 1.33 );
setScaleKey( spep_5 + 70, 1, 1.17, 1.17 );
setScaleKey( spep_5 + 72, 1, 1, 1 );
setScaleKey( spep_5 + 86, 1, 1, 1 );
setScaleKey( spep_5 + 88, 1, 1.17, 1.17 );
setScaleKey( spep_5 + 91, 1, 1.33, 1.33 );
setScaleKey( spep_5 + 92, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 94, 1, 1.47, 1.47 );
setScaleKey( spep_5 + 96, 1, 1.46, 1.46 );
setScaleKey( spep_5 + 98, 1, 1.42, 1.42 );
setScaleKey( spep_5 + 100, 1, 1.4, 1.4 );
setScaleKey( spep_5 + 102, 1, 1.37, 1.37 );
setScaleKey( spep_5 + 104, 1, 1.18, 1.18 );
setScaleKey( spep_5 + 106, 1, 1.03, 1.03 );
setScaleKey( spep_5 + 108, 1, 0.86, 0.86 );
setScaleKey( spep_5 + 110, 1, 0.84, 0.84 );
setScaleKey( spep_5 + 112, 1, 0.82, 0.82 );
setScaleKey( spep_5 + 114, 1, 0.81, 0.81 );
setScaleKey( spep_5 + 116, 1, 0.79, 0.79 );
setScaleKey( spep_5 + 118, 1, 0.77, 0.77 );
setScaleKey( spep_5 + 120, 1, 0.75, 0.75 );
setScaleKey( spep_5 + 122, 1, 0.74, 0.74 );
setScaleKey( spep_5 + 124, 1, 0.72, 0.72 );
setScaleKey( spep_5 + 126, 1, 0.7, 0.7 );
setScaleKey( spep_5 + 128, 1, 0.68, 0.68 );

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5 + 49, 1, 0 );
setRotateKey( spep_5 + 50, 1, -54.4 );
setRotateKey( spep_5 + 52, 1, -54.5 );
setRotateKey( spep_5 + 91, 1, -54.5 );
setRotateKey( spep_5 + 92, 1, 25.3 );
setRotateKey( spep_5 + 94, 1, 25.5 );
setRotateKey( spep_5 + 128, 1, 25.5 );

ryusen3 = entryEffectLife(  spep_5 + 0,  914,  100,  0x80,  -1,  0,  0,  0);

setEffMoveKey(  spep_5 + 0,  ryusen3,  0,  0,  0);
setEffMoveKey(  spep_5 + 100,  ryusen3,  0,  0,  0);
setEffScaleKey(  spep_5 + 0,  ryusen3,  1.7,  1.1);
setEffScaleKey(  spep_5 + 100,  ryusen3,  1.7,  1.1);
setEffRotateKey(  spep_5 + 0,  ryusen3,  0);
setEffRotateKey(  spep_5 + 100,  ryusen3,  0);
setEffAlphaKey(  spep_5 + 0,  ryusen3,  255);
setEffAlphaKey(  spep_5 + 100,  ryusen3,  255);

ryusen4 = entryEffectLife( spep_5 + 102,  924, 28, 0x80, -1, 0, 0, 0 , 0 );
setEffShake(  spep_5 + 102,  ryusen4,  28,  20 );
setEffMoveKey( spep_5 + 102, ryusen4, 0, 0 , 0 );
setEffMoveKey( spep_5 + 130, ryusen4, 0, 0 , 0 );
setEffScaleKey( spep_5 + 102, ryusen4, 1.20, 1.45 );
setEffScaleKey( spep_5 + 130, ryusen4, 1.20, 1.45 );
setEffRotateKey( spep_5 + 102, ryusen4, 20 );
setEffRotateKey( spep_5 + 130, ryusen4, 20 );
setEffAlphaKey( spep_5 + 102, ryusen4, 255 );
setEffAlphaKey( spep_5 + 130, ryusen4, 255 );

-- ** 音 ** --

playSe( spep_5 + 5,  1000);
playSe( spep_5 + 23,  4);
playSe( spep_5 + 24,  1003);
playSe( spep_5 + 27,  43);
playSe( spep_5 + 38,  1001);
playSe( spep_5 + 58,  4);
playSe( spep_5 + 59,  1003);
playSe( spep_5 + 62,  43);
playSe( spep_5 + 75,  1110);
SE1 = playSe( spep_5 + 75,  1011);

setSeVolume( spep_5 + 5,  1000,  112);
setSeVolume( spep_5 + 23,  4,  100);
setSeVolume( spep_5 + 24,  1003,  100);
setSeVolume( spep_5 + 27,  43,  73);
setSeVolume( spep_5 + 38,  1001,  100);
setSeVolume( spep_5 + 58,  4,  100);
setSeVolume( spep_5 + 59,  1003,  100);
setSeVolume( spep_5 + 62,  43,  73);
setSeVolume( spep_5 + 75,  1110,  89);
setSeVolume( spep_5 + 75,  1011,  100);

stopSe( spep_5 + 75 + 37,  SE1,  19);

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 130, 0, 0, 0, 0, 200 );  --黒　背景

-- +* 白フェード ** --
entryFade( spep_5 + 116, 10,  6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

-- ** 次の準備 ** --
spep_6 = spep_5 + 130;

------------------------------------------------------
-- 気弾ため(60F)
------------------------------------------------------

-- ** エフェクト等 ** --
tame2 = entryEffect( spep_6 + 0, SP_06, 0x100, -1, 0, 0, 0 );  --気弾ため(ef_006)

setEffMoveKey( spep_6 + 0, tame2, 0, 0 , 0 );
setEffMoveKey( spep_6 + 60, tame2, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, tame2, 1.0, 1.0 );
setEffScaleKey( spep_6 + 60, tame2, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, tame2, 0 );
setEffRotateKey( spep_6 + 60, tame2, 0 );
setEffAlphaKey( spep_6 + 0, tame2, 255 );
setEffAlphaKey( spep_6 + 60, tame2, 255 );

-- ** 集中線 ** --
shuchusen6 = entryEffectLife( spep_6 + 0,  906, 60, 0x100, -1, 0, 0, 0 );

setEffShake(  spep_6 + 0,  shuchusen6,  46,  20);
setEffMoveKey( spep_6 + 0, shuchusen6, 0, 0 , 0 );
setEffMoveKey( spep_6 + 60, shuchusen6,0, 0 , 0 );
setEffScaleKey( spep_6 + 0, shuchusen6, 1, 1 );
setEffScaleKey( spep_6 + 60, shuchusen6, 1, 1 );
setEffRotateKey( spep_6 + 0, shuchusen6, 0 );
setEffRotateKey( spep_6 + 60, shuchusen6, 0 );
setEffAlphaKey( spep_6 + 0, shuchusen6, 255 );
setEffAlphaKey( spep_6 + 60, shuchusen6, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 60, 0, 0, 0, 0, 200 );  --黒　背景

-- ** 音 ** --
playSe( spep_6 - 13,  1037);
playSe( spep_6 + 8,  1072);
setSeVolume( spep_6 - 13, 1037,  100); 
setSeVolume( spep_6 + 8 , 1072,  0); 
setSeVolume( spep_6 + 14 , 1072,  0); 
setSeVolume( spep_6 + 15 , 1072,  75); 
setSeVolume( spep_6 + 19 , 1072,  151); 

-- +* 白フェード ** --
entryFade( spep_6 + 50, 8,  4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

-- ** 次の準備 ** --
spep_7 = spep_6 + 60;

------------------------------------------------------
-- 気弾発射(94F)
------------------------------------------------------

-- ** エフェクト等 ** --
hassya = entryEffect( spep_7 + 0, SP_07, 0x100, -1, 0, 0, 0 );  --気弾発射(ef_007)

setEffMoveKey( spep_7 + 0, hassya, 0, 0 , 0 );
setEffMoveKey( spep_7 + 94, hassya, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, hassya, 1.0, 1.0 );
setEffScaleKey( spep_7 + 94, hassya, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, hassya, 0 );
setEffRotateKey( spep_7 + 94, hassya, 0 );
setEffAlphaKey( spep_7 + 0, hassya, 255 );
setEffAlphaKey( spep_7 + 94, hassya, 255 );

-- ** 集中線 ** --
shuchusen5 = entryEffectLife( spep_7 + 10,  906, 46, 0x100, -1, 0, 0, 0 );

setEffShake(  spep_7 + 10,  shuchusen5,  46,  20);
setEffMoveKey( spep_7 + 10, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_7 + 56, shuchusen5,0, 0 , 0 );
setEffScaleKey( spep_7 + 10, shuchusen5, 1, 1 );
setEffScaleKey( spep_7 + 56, shuchusen5, 1, 1 );
setEffRotateKey( spep_7 + 10, shuchusen5, 0 );
setEffRotateKey( spep_7 + 56, shuchusen5, 0 );
setEffAlphaKey( spep_7 + 10, shuchusen5, 255 );
setEffAlphaKey( spep_7 + 56, shuchusen5, 255 );

ctzuo = entryEffectLife( spep_7 + 10,  10012, 28, 0x100, -1, 0, 100, 307.7 );
setEffShake(  spep_7 + 10, ctzuo,  28,  20);
setEffMoveKey( spep_7 + 10, ctzuo, 100, 307.7 , 0 );
setEffMoveKey( spep_7 + 12, ctzuo, 112, 295.7 , 0 );
setEffMoveKey( spep_7 + 14, ctzuo, 100, 307.7 , 0 );
setEffMoveKey( spep_7 + 16, ctzuo, 112, 295.7 , 0 );
setEffMoveKey( spep_7 + 18, ctzuo, 100, 307.7 , 0 );
setEffMoveKey( spep_7 + 20, ctzuo, 112, 295.7 , 0 );
setEffMoveKey( spep_7 + 22, ctzuo, 100, 307.7 , 0 );
setEffMoveKey( spep_7 + 24, ctzuo, 112, 295.7 , 0 );
setEffMoveKey( spep_7 + 26, ctzuo, 100, 307.7 , 0 );
setEffMoveKey( spep_7 + 28, ctzuo, 112, 295.7 , 0 );
setEffMoveKey( spep_7 + 30, ctzuo, 100, 307.7 , 0 );
setEffMoveKey( spep_7 + 32, ctzuo, 112, 295.7 , 0 );
setEffMoveKey( spep_7 + 34, ctzuo, 100, 307.7 , 0 );
setEffMoveKey( spep_7 + 36, ctzuo, 112, 295.7 , 0 );
setEffMoveKey( spep_7 + 38, ctzuo, 100, 307.7 , 0 );
setEffScaleKey( spep_7 + 10, ctzuo, 2.6, 2.6 );
setEffScaleKey( spep_7 + 38, ctzuo, 2.6, 2.6 );
setEffRotateKey( spep_7 + 10, ctzuo, 0 );
setEffRotateKey( spep_7 + 38, ctzuo, 0 );
setEffAlphaKey( spep_7 + 10, ctzuo, 255 );
setEffAlphaKey( spep_7 + 38, ctzuo, 255 );

ryusen5 = entryEffectLife( spep_7 + 0,  914, 8, 0x80, -1, 0, 1292.5, -781.2 );
setEffMoveKey( spep_7 + 0, ryusen5, 1292.5, -781.2 , 0 );
setEffMoveKey( spep_7 + 2, ryusen5, 1018.5, -617.2 , 0 );
setEffMoveKey( spep_7 + 4, ryusen5, 744.6, -453.3 , 0 );
setEffMoveKey( spep_7 + 6, ryusen5, 470.6, -289.3 , 0 );
setEffMoveKey( spep_7 + 8, ryusen5, 196.7, -125.4 , 0 );
setEffScaleKey( spep_7 + 0, ryusen5, 3.76, 1.42 );
setEffScaleKey( spep_7 +8, ryusen5, 3.76, 1.42 );
setEffRotateKey( spep_7 + 0, ryusen5, 30.9 );
setEffRotateKey( spep_7 + 8, ryusen5, 30.9 );
setEffAlphaKey( spep_7 + 0, ryusen5, 255 );
setEffAlphaKey( spep_7 + 8, ryusen5, 255 );

ryusen6 = entryEffectLife( spep_7 + 10,  921, 82, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_7 + 10, ryusen6, 0, 0 , 0 );
setEffMoveKey( spep_7 + 92, ryusen6, 0, 0 , 0 );
setEffScaleKey( spep_7 + 10, ryusen6, 1.67, 1.27 );
setEffScaleKey( spep_7 + 92, ryusen6, 1.67, 1.27 );
setEffRotateKey( spep_7 + 10, ryusen6, -149.3 );
setEffRotateKey( spep_7 + 92, ryusen6, -149.3 );
setEffAlphaKey( spep_7 + 10, ryusen6, 255 );
setEffAlphaKey( spep_7 + 92, ryusen6, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 94, 0, 0, 0, 0, 200 );  --黒　背景

-- ** 音 ** --
playSe( spep_7 - 9,  1177);
playSe( spep_7 - 7,  1022);
playSe( spep_7 + 93,  1021);

setSeVolume( spep_7 -9, 1177,  79);
setSeVolume( spep_7 -7, 1022,  119);
setSeVolume( spep_7 +93, 1021,  100);

-- +* 白フェード ** --
entryFade( spep_7 + 80, 10,  4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

-- ** 次の準備 ** --
spep_8 = spep_7 + 94;

------------------------------------------------------
-- 被弾(74F)
------------------------------------------------------

-- ** エフェクト等 ** --
hidan = entryEffect( spep_8 + 0, SP_08, 0x100, -1, 0, 0, 0 );  --被弾(ef_008)

setEffMoveKey( spep_8 + 0, hidan, 0, 0 , 0 );
setEffMoveKey( spep_8 + 74, hidan, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, hidan, 1.0, 1.0 );
setEffScaleKey( spep_8 + 74, hidan, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, hidan, 0 );
setEffRotateKey( spep_8 + 74, hidan, 0 );
setEffAlphaKey( spep_8 + 0, hidan, 255 );
setEffAlphaKey( spep_8 + 74, hidan, 255 );

-- ** 敵の動き ** --
setDisp( spep_8 + 0, 1, 1 );
changeAnime( spep_8 + 0, 1, 108 );

setMoveKey( spep_8 + 0, 1, -596.3, 214.9 , 0 );
setMoveKey( spep_8 + 2, 1, -447, 158.2 , 0 );
setMoveKey( spep_8 + 4, 1, -305.8, 105.7 , 0 );
setMoveKey( spep_8 + 6, 1, -156.5, 57.1 , 0 );
setMoveKey( spep_8 + 8, 1, -15.3, 4.6 , 0 );
setMoveKey( spep_8 + 10, 1, -10.2, 0.1 , 0 );
setMoveKey( spep_8 + 12, 1, -13.1, -0.4 , 0 );
setMoveKey( spep_8 + 14, 1, -8, 3.1 , 0 );
setMoveKey( spep_8 + 16, 1, -10.9, 2.6 , 0 );
setMoveKey( spep_8 + 18, 1, -5.8, -1.8 , 0 );
setMoveKey( spep_8 + 20, 1, -8.7, -2.3 , 0 );
setMoveKey( spep_8 + 22, 1, -3.6, 1.2 , 0 );
setMoveKey( spep_8 + 24, 1, -6.5, 0.7 , 0 );
setMoveKey( spep_8 + 26, 1, -1.3, -3.8 , 0 );
setMoveKey( spep_8 + 28, 1, -4.2, -4.3 , 0 );
setMoveKey( spep_8 + 30, 1, 0.9, -0.7 , 0 );
setMoveKey( spep_8 + 32, 1, -2, -1.2 , 0 );
setMoveKey( spep_8 + 34, 1, 3.1, -5.7 , 0 );
setMoveKey( spep_8 + 36, 1, 0.2, -6.2 , 0 );
setMoveKey( spep_8 + 38, 1, 5.3, -2.7 , 0 );
setMoveKey( spep_8 + 40, 1, 2.4, -3.2 , 0 );
setMoveKey( spep_8 + 42, 1, 7.5, -7.7 , 0 );
setMoveKey( spep_8 + 44, 1, 4.6, -8.1 , 0 );
setMoveKey( spep_8 + 46, 1, 9.7, -4.6 , 0 );
setMoveKey( spep_8 + 48, 1, 6.8, -5.1 , 0 );
setMoveKey( spep_8 + 50, 1, 11.9, -9.6 , 0 );
setMoveKey( spep_8 + 52, 1, 9, -10.1 , 0 );
setMoveKey( spep_8 + 54, 1, 14.1, -6.6 , 0 );
setMoveKey( spep_8 + 56, 1, 11.2, -7 , 0 );
setMoveKey( spep_8 + 58, 1, 16.3, -11.5 , 0 );
setMoveKey( spep_8 + 60, 1, 13.4, -12 , 0 );
setMoveKey( spep_8 + 62, 1, 18.5, -8.5 , 0 );
setMoveKey( spep_8 + 64, 1, 15.6, -9 , 0 );
setMoveKey( spep_8 + 66, 1, 20.7, -13.5 , 0 );
setMoveKey( spep_8 + 68, 1, 17.9, -14 , 0 );
setMoveKey( spep_8 + 70, 1, 23, -10.4 , 0 );
setMoveKey( spep_8 + 72, 1, 20.1, -10.9 , 0 );

setScaleKey( spep_8 + 0, 1, 1.97, 1.97 );
setScaleKey( spep_8 + 2, 1, 1.82, 1.82 );
setScaleKey( spep_8 + 4, 1, 1.67, 1.67 );
setScaleKey( spep_8 + 6, 1, 1.52, 1.52 );
setScaleKey( spep_8 + 8, 1, 1.37, 1.37 );
setScaleKey( spep_8 + 10, 1, 1.36, 1.36 );
setScaleKey( spep_8 + 12, 1, 1.35, 1.35 );
setScaleKey( spep_8 + 14, 1, 1.33, 1.33 );
setScaleKey( spep_8 + 16, 1, 1.32, 1.32 );
setScaleKey( spep_8 + 18, 1, 1.31, 1.31 );
setScaleKey( spep_8 + 20, 1, 1.3, 1.3 );
setScaleKey( spep_8 + 22, 1, 1.29, 1.29 );
setScaleKey( spep_8 + 24, 1, 1.28, 1.28 );
setScaleKey( spep_8 + 26, 1, 1.26, 1.26 );
setScaleKey( spep_8 + 28, 1, 1.25, 1.25 );
setScaleKey( spep_8 + 30, 1, 1.24, 1.24 );
setScaleKey( spep_8 + 32, 1, 1.23, 1.23 );
setScaleKey( spep_8 + 34, 1, 1.22, 1.22 );
setScaleKey( spep_8 + 36, 1, 1.21, 1.21 );
setScaleKey( spep_8 + 38, 1, 1.2, 1.2 );
setScaleKey( spep_8 + 40, 1, 1.18, 1.18 );
setScaleKey( spep_8 + 42, 1, 1.17, 1.17 );
setScaleKey( spep_8 + 44, 1, 1.16, 1.16 );
setScaleKey( spep_8 + 46, 1, 1.15, 1.15 );
setScaleKey( spep_8 + 48, 1, 1.14, 1.14 );
setScaleKey( spep_8 + 50, 1, 1.13, 1.13 );
setScaleKey( spep_8 + 52, 1, 1.12, 1.12 );
setScaleKey( spep_8 + 54, 1, 1.1, 1.1 );
setScaleKey( spep_8 + 56, 1, 1.09, 1.09 );
setScaleKey( spep_8 + 58, 1, 1.08, 1.08 );
setScaleKey( spep_8 + 60, 1, 1.07, 1.07 );
setScaleKey( spep_8 + 62, 1, 1.06, 1.06 );
setScaleKey( spep_8 + 64, 1, 1.05, 1.05 );
setScaleKey( spep_8 + 66, 1, 1.03, 1.03 );
setScaleKey( spep_8 + 68, 1, 1.02, 1.02 );
setScaleKey( spep_8 + 70, 1, 1.01, 1.01 );
setScaleKey( spep_8 + 72, 1, 1, 1 );

setRotateKey( spep_8 + 0, 1, 0 );
setRotateKey( spep_8 + 72, 1, 0 );

ryusen7 = entryEffectLife( spep_8 + 0,  921, 74, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_8 + 0, ryusen7, 0, 0 , 0 );
setEffMoveKey( spep_8 + 74, ryusen7, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, ryusen7, 1.67, 1.27 );
setEffScaleKey( spep_8 + 74, ryusen7, 1.67, 1.27 );
setEffRotateKey( spep_8 + 0, ryusen7, -149.3 );
setEffRotateKey( spep_8 + 74, ryusen7, -149.3 );
setEffAlphaKey( spep_8 + 0, ryusen7, 255 );
setEffAlphaKey( spep_8 + 74, ryusen7, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_8 + 0, 0, 74, 0, 0, 0, 0, 200 );  --黒　背景

-- +* 白フェード ** --
entryFade( spep_8 + 66, 4,  4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

-- ** 次の準備 ** --
spep_9 = spep_8 + 74;

------------------------------------------------------
-- 爆発(180F)
------------------------------------------------------

-- ** エフェクト等 ** --
bakuha = entryEffect( spep_9 + 0, SP_09, 0x100, -1, 0, 0, 0 );  --爆破(ef_009)

setEffMoveKey( spep_9 + 0, bakuha, 0, 0 , 0 );
setEffMoveKey( spep_9 + 180, bakuha, 0, 0 , 0 );
setEffScaleKey( spep_9 + 0, bakuha, 1.0, 1.0 );
setEffScaleKey( spep_9 + 180, bakuha, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, bakuha, 0 );
setEffRotateKey( spep_9 + 180, bakuha, 0 );
setEffAlphaKey( spep_9 + 0, bakuha, 255 );
setEffAlphaKey( spep_9 + 180, bakuha, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_9 + 0, 0, 180, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
playSe( 903,  1024);
playSe( 903,  1159);
playSe( 1033, 1023);
playSe( 1033, 1033);

setSeVolume( 903,  1024,  100);
setSeVolume( 903,  1159,  63);
setSeVolume( 1033, 1023,  79);
setSeVolume( 1033, 1033,  100); 

-- ** ダメージ表示 ** --
dealDamage( spep_9 + 80 );
endPhase( spep_9 + 180  );

else

------------------------------------------------------
-- ため(100F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01x, 0x100, -1, 0, 0, 0 );  --ため(ef_001)

setEffMoveKey( spep_0 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_0 + 100, tame, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 100, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 100, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 100, tame, 255 );


-- ** カットイン ** --
--speff = entryEffect( spep_0 + 40, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0 + 40, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_0 + 56,  190006, 68, 0x100, -1, 0, 109.9, 515.5 ); --ゴゴゴ
setEffShake( spep_0 + 56, ctgogo, 68, 10 );

setEffMoveKey( spep_0 + 56, ctgogo, 109.9, 515.5 , 0 );
setEffMoveKey( spep_0 + 124, ctgogo, 109.9, 515.5 , 0 );

setEffScaleKey( spep_0 + 56, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_0 + 116, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_0 + 118, ctgogo, -1.0, 1.0 );
setEffScaleKey( spep_0 + 120, ctgogo, -1.09, 1.09 );
setEffScaleKey( spep_0 + 122, ctgogo, -1.39, 1.39 );
setEffScaleKey( spep_0 + 124, ctgogo, -1.69, 1.69 );

setEffRotateKey( spep_0 + 56, ctgogo, 0 );
setEffRotateKey( spep_0 + 124, ctgogo, 0 );

setEffAlphaKey( spep_0 + 56, ctgogo, 255 );
setEffAlphaKey( spep_0 + 124, ctgogo, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 12, 906, 88, 0x100, -1, 0, 0, 0 );

setEffShake( spep_0 + 12, shuchusen1, 88, 20);
setEffMoveKey( spep_0 + 12, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 100, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 12, shuchusen1, 1, 1 );
setEffScaleKey( spep_0 + 100, shuchusen1, 1, 1 );

setEffRotateKey( spep_0 + 12, shuchusen1, 0 );
setEffRotateKey( spep_0 + 100, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 12, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 100, shuchusen1, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 40, 10, 50, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
playSe( spep_0 + 0,  8);  --集中線
setSeVolume( spep_0 + 0,  8,  110);
playSe( spep_0 + 22,  43);  --瞬間移動
setSeVolume( spep_0 + 22,  43,  73);

playSe( spep_0 + 40,  1018);  --カットイン

-- ** 次の準備 ** --
spep_1 = spep_0 + 100;

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
playSe( spep_1 + 4, SE_05 );

-- ** 次の準備 ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

--------------------------------------
--取り囲む(70F)
--------------------------------------

-- ** エフェクト等 ** --
kakomu = entryEffect( spep_2 + 0, SP_02x, 0x100, -1, 0, 0, 0 );  --囲む(ef_002)

setEffMoveKey( spep_2 + 0, kakomu, 0, 0 , 0 );
setEffMoveKey( spep_2 + 70, kakomu, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, kakomu, 1.0, 1.0 );
setEffScaleKey( spep_2 + 70, kakomu, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kakomu, 0 );
setEffRotateKey( spep_2 + 70, kakomu, 0 );
setEffAlphaKey( spep_2 + 0, kakomu, 255 );
setEffAlphaKey( spep_2 + 70, kakomu, 255 );

-- ** 敵の動き ** --
setDisp( spep_2 + 0, 1, 1 );
changeAnime( spep_2 + 0, 1, 100);

setMoveKey( spep_2 + 0, 1, 29.6, 12 , 0 );
setMoveKey( spep_2 + 4, 1, 29.6, 12 , 0 );
setMoveKey( spep_2 + 6, 1, 29.6, 12.1 , 0 );
setMoveKey( spep_2 + 10, 1, 29.6, 12.1 , 0 );
setMoveKey( spep_2 + 12, 1, 29.5, 12.1 , 0 );
setMoveKey( spep_2 + 16, 1, 29.5, 12.1 , 0 );
setMoveKey( spep_2 + 18, 1, 29.5, 12.2 , 0 );
setScaleKey( spep_2 + 0, 1, 1, 1 );
setScaleKey( spep_2 + 4, 1, 1, 1 );
setScaleKey( spep_2 + 6, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 12, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 14, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 20, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 22, 1, 1.03, 1.03 );
setRotateKey( spep_2 + 0, 1, 0 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_2 + 0, 906, 70, 0x100, -1, 0, 0, 0 );  --集中線

setEffShake( spep_2 + 0, shuchusen2, 70, 20 );
setEffMoveKey( spep_2 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 70, shuchusen2, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, shuchusen2, 1.6, 1.6 );
setEffScaleKey( spep_2 + 70, shuchusen2, 1.6, 1.6 );
setEffRotateKey( spep_2 + 0, shuchusen2, 0 );
setEffRotateKey( spep_2 + 70, shuchusen2, 0 );
setEffAlphaKey( spep_2 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 70, shuchusen2, 255 );



ryusen = entryEffectLife(  spep_2 + 0,  914,  70,  0x80,  -1,  0,  0,  0);

setEffMoveKey(  spep_2 + 0,  ryusen,  0,  0,  0);
setEffMoveKey(  spep_2 + 70,  ryusen,  0,  0,  0);
setEffScaleKey(  spep_2 + 0,  ryusen,  1.7,  1.1);
setEffScaleKey(  spep_2 + 70,  ryusen,  1.7,  1.1);
setEffRotateKey(  spep_2 + 0,  ryusen,  0);
setEffRotateKey(  spep_2 + 70,  ryusen,  0);
setEffAlphaKey(  spep_2 + 0,  ryusen,  255);
setEffAlphaKey(  spep_2 + 70,  ryusen,  255);


-- ** 音 ** --
playSe( spep_2 + 6,  1003);
playSe( spep_2 + 6,  4);
playSe( spep_2 + 15, 4);
playSe( spep_2 + 19, 1003);
playSe( spep_2 + 19, 4);
playSe( spep_2 + 28, 4);
playSe( spep_2 + 41, 1003);
playSe( spep_2 + 41, 4);
playSe( spep_2 + 50, 4);

setSeVolume( spep_2 + 6,  1003,  60);
setSeVolume( spep_2 + 6,  4,  178);
setSeVolume( spep_2 + 15,  4,  178);
setSeVolume( spep_2 + 19,  1003,  60);
setSeVolume( spep_2 + 19,  4,  178);
setSeVolume( spep_2 + 28,  4,  178);
setSeVolume( spep_2 + 41,  1003,  60);
setSeVolume( spep_2 + 41,  4,  178);
setSeVolume( spep_2 + 50,  4,  178);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 70, 0, 0, 0, 0, 255 );  --黒　背景

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 30; --エンドフェイズのフレーム数を置き換える

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

setDisp(  spep_2 + 70,  1,  0);
setMoveKey( spep_2 + 32, 1, 29.5, 12.2 , 0 );
setMoveKey( spep_2 + 34, 1, 29.5, 12.3 , 0 );
setMoveKey( spep_2 + 42, 1, 29.5, 12.3 , 0 );
setMoveKey( spep_2 + 44, 1, 29.4, 12.4 , 0 );
setMoveKey( spep_2 + 52, 1, 29.4, 12.4 , 0 );
setMoveKey( spep_2 + 54, 1, 29.4, 12.5 , 0 );
setMoveKey( spep_2 + 64, 1, 29.4, 12.5 , 0 );
setScaleKey( spep_2 + 30, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 32, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 36, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 38, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 46, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 48, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 54, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 56, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 62, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 64, 1, 1.08, 1.08 );
setRotateKey( spep_2 + 64, 1, 0 );


-- ** 白フェード ** --
entryFade( spep_2 + 62, 4,  6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 70;

------------------------------------------------------
-- 横移動(104F)
------------------------------------------------------

-- ** エフェクト等 ** --
nabi = entryEffect( spep_3 + 0, SP_03x, 0x100, -1, 0, 0, 0 );  --ナビ(ef_003)

setEffMoveKey( spep_3 + 0, nabi, 0, 0 , 0 );
setEffMoveKey( spep_3 + 104, nabi, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, nabi, 1.0, 1.0 );
setEffScaleKey( spep_3 + 104, nabi, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, nabi, 0 );
setEffRotateKey( spep_3 + 104, nabi, 0 );
setEffAlphaKey( spep_3 + 0, nabi, 255 );
setEffAlphaKey( spep_3 + 104, nabi, 255 );


-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_3 + 0, 906, 104, 0x100, -1, 0, 0, 0 );  --集中線

setEffShake( spep_3 + 0, shuchusen3, 104, 20 );
setEffMoveKey( spep_3 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_3 + 104, shuchusen3, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, shuchusen3, 1.6, 1.6 );
setEffScaleKey( spep_3 + 104, shuchusen3, 1.6, 1.6 );
setEffRotateKey( spep_3 + 0, shuchusen3, 0 );
setEffRotateKey( spep_3 + 104, shuchusen3, 0 );
setEffAlphaKey( spep_3 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_3 + 28, shuchusen3, 255 );
setEffAlphaKey( spep_3 + 29, shuchusen3, 0 );
setEffAlphaKey( spep_3 + 41, shuchusen3, 0 );
setEffAlphaKey( spep_3 + 42, shuchusen3, 255 );
setEffAlphaKey( spep_3 + 66, shuchusen3, 255 );
setEffAlphaKey( spep_3 + 67, shuchusen3, 0 );
setEffAlphaKey( spep_3 + 77, shuchusen3, 0 );
setEffAlphaKey( spep_3 + 78, shuchusen3, 255 );
setEffAlphaKey( spep_3 + 104, shuchusen3, 255 );


ryusen1 = entryEffectLife(  spep_3 + 0,  914,  104,  0x80,  -1,  0,  0,  0);

setEffMoveKey(  spep_3 + 0,  ryusen1,  0,  0,  0);
setEffMoveKey(  spep_3 + 104,  ryusen1,  0,  0,  0);
setEffScaleKey(  spep_3 + 0,  ryusen1,  1.7,  1.1);
setEffScaleKey(  spep_3 + 104,  ryusen1,  1.7,  1.1);
setEffRotateKey(  spep_3 + 0,  ryusen1,  0);
setEffRotateKey(  spep_3 + 104,  ryusen1,  0);
setEffAlphaKey(  spep_3 + 0,  ryusen1,  255);
setEffAlphaKey(  spep_3 + 104,  ryusen1,  255);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 104, 0, 0, 0, 0, 255 );  --黒　背景


-- ** 音 ** --
playSe( spep_3 + 14,  1117);
playSe( spep_3 + 14,  4);
playSe( spep_3 + 23,  1003);
playSe( spep_3 + 50,  1117);
playSe( spep_3 + 50,  4);
playSe( spep_3 + 59,  1003);
playSe( spep_3 + 88,  1117);
playSe( spep_3 + 88,  4);
playSe( spep_3 + 97,  1003); 

setSeVolume( spep_3 + 14,  110);
setSeVolume( spep_3 + 14,  168);
setSeVolume( spep_3 + 23,  60);  
setSeVolume( spep_3 + 50,  110);
setSeVolume( spep_3 + 50,  168);
setSeVolume( spep_3 + 59,  60);  
setSeVolume( spep_3 + 88,  110);
setSeVolume( spep_3 + 88,  168);
setSeVolume( spep_3 + 97,  60);  

stopSe( spep_3 + 14 + 9, 1117,  7);
stopSe( spep_3 + 50 + 9, 1117,  7);
stopSe( spep_3 + 88 + 9, 1117,  7);

-- ** 白フェード ** --
entryFade( spep_3 + 98, 4,  4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 104;


------------------------------------------------------
-- 流れ星(194F)
------------------------------------------------------

-- ** エフェクト等 ** --
triangle = entryEffect( spep_4 + 0, SP_04x, 0x100, -1, 0, 0, 0 );  --三角(ef_004)

setEffMoveKey( spep_4 + 0, triangle, 0, 0 , 0 );
setEffMoveKey( spep_4 + 194, triangle, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, triangle, 1.0, 1.0 );
setEffScaleKey( spep_4 + 194, triangle, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, triangle, 0 );
setEffRotateKey( spep_4 + 194, triangle, 0 );
setEffAlphaKey( spep_4 + 0, triangle, 255 );
setEffAlphaKey( spep_4 + 194, triangle, 255 );


ryusen2 = entryEffectLife(  spep_4 + 0,  914,  194,  0x80,  -1,  0,  0,  0);

setEffMoveKey(  spep_4 + 0,  ryusen2,  0,  0,  0);
setEffMoveKey(  spep_4 + 194,  ryusen2,  0,  0,  0);
setEffScaleKey(  spep_4 + 0,  ryusen2,  4.0,  3.2);
setEffScaleKey(  spep_4 + 194,  ryusen2,  4.0,  3.2);
setEffRotateKey(  spep_4 + 0,  ryusen2,  -45);
setEffRotateKey(  spep_4 + 194,  ryusen2, -45);
setEffAlphaKey(  spep_4 + 0,  ryusen2,  255);
setEffAlphaKey(  spep_4 + 194,  ryusen2,  255);


playSe( spep_4 - 4,  1116);
playSe( spep_4 + 19,  1183);
playSe( spep_4 + 69,  1072);
playSe( spep_4 + 75,  1022);
playSe( spep_4 + 90,  1144);
playSe( spep_4 + 103, 1180);

setSeVolume( spep_4 - 4,  1116,  100);
setSeVolume( spep_4 + 19,  1183,  100);
setSeVolume( spep_4 + 69,  1072,  89);
setSeVolume( spep_4 + 75,  1022,  56);
setSeVolume( spep_4 + 90,  1144,  0);  
setSeVolume( spep_4 + 96,  1144,  30);  
setSeVolume( spep_4 + 97,  1144,  31); 
setSeVolume( spep_4 + 98,  1144,  32); 
setSeVolume( spep_4 + 99,  1144,  33); 
setSeVolume( spep_4 + 100,  1144,  34); 
setSeVolume( spep_4 + 101,  1144,  35); 
setSeVolume( spep_4 + 102,  1144,  36); 
setSeVolume( spep_4 + 103,  1144,  37); 
setSeVolume( spep_4 + 104,  1144,  38); 
setSeVolume( spep_4 + 105,  1144,  39); 
setSeVolume( spep_4 + 106,  1144,  40); 
setSeVolume( spep_4 + 103,  1180,  0);
setSeVolume( spep_4 + 139,  1180,  0);
setSeVolume( spep_4 + 140,  1180,  120);
setSeVolume( spep_4 + 142,  1180,  126);

stopSe( spep_4 + 32,  1116,  48);
stopSe( spep_4 + 19 + 100,  1183,  35);
stopSe( spep_4 + 69 + 41,  1072,  12);
stopSe( spep_4 + 75 + 51,  1022,  38);
stopSe( spep_4 + 96 + 45,  1144,  17);

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 194, 0, 0, 0, 0, 200 );  --黒　背景


-- ** 白フェード ** --
entryFade( spep_4 + 186, 4,  6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 194;

------------------------------------------------------
-- ラッシュ(130F)
------------------------------------------------------

-- ** エフェクト等 ** --
kakuto = entryEffect( spep_5 + 0, SP_05x, 0x100, -1, 0, 0, 0 );  --格闘(ef_005)

setEffMoveKey( spep_5 + 0, kakuto, 0, 0 , 0 );
setEffMoveKey( spep_5 + 130, kakuto, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, kakuto, 1.0, 1.0 );
setEffScaleKey( spep_5 + 130, kakuto, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, kakuto, 0 );
setEffRotateKey( spep_5 + 130, kakuto, 0 );
setEffAlphaKey( spep_5 + 0, kakuto, 255 );
setEffAlphaKey( spep_5 + 130, kakuto, 255 );
setEffAlphaKey( spep_5 + 131, kakuto,  0 );
setEffAlphaKey( spep_5 + 150, kakuto,  0 );  --キャラだけ残るので非表示

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_5 + 10 - 3,  906, 90, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_5 + 10 - 3, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_5 + 32 - 3, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_5 + 50 - 3, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_5 + 72 - 3, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_5 + 100 - 3, shuchusen4, 0, 0 , 0 );
setEffScaleKey(  spep_5 + 10 - 3, shuchusen4,  1.0,  1.0  );
setEffScaleKey(  spep_5 + 100 - 3, shuchusen4,  1.0,  1.0  );
setEffRotateKey(  spep_5 + 10 -3,  shuchusen4,  0);
setEffRotateKey(  spep_5 + 10 -3,  shuchusen4,  0);
setEffAlphaKey( spep_5 + 10 - 3, shuchusen4, 255 );
setEffAlphaKey( spep_5 + 32 - 3, shuchusen4, 255 );
setEffAlphaKey( spep_5 + 33 - 3, shuchusen4, 0 );
setEffAlphaKey( spep_5 + 49 - 3, shuchusen4, 0 );
setEffAlphaKey( spep_5 + 50 - 3, shuchusen4, 255 );
setEffAlphaKey( spep_5 + 72 - 3, shuchusen4, 255 );
setEffAlphaKey( spep_5 + 73 - 3, shuchusen4, 0 );
setEffAlphaKey( spep_5 + 91 - 3, shuchusen4, 0 );
setEffAlphaKey( spep_5 + 92 - 3, shuchusen4, 255 );
setEffAlphaKey( spep_5 + 100 - 3, shuchusen4, 255 );


-- ** 敵の動き ** --
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 130, 1, 0 );
changeAnime( spep_5 + 0, 1, 100 );
changeAnime( spep_5 + 10, 1, 108 );
changeAnime( spep_5 + 50, 1, 106 );
changeAnime( spep_5 + 92, 1, 108 );

setMoveKey( spep_5 + 0, 1, 0, -0.1 , 0 );
setMoveKey( spep_5 + 9, 1, 0, -0.1 , 0 );
setMoveKey( spep_5 + 10, 1, 0, -40.1 , 0 );
setMoveKey( spep_5 + 12, 1, 11.3, -50.1 , 0 );
setMoveKey( spep_5 + 14, 1, -8.3, -38.2 , 0 );
setMoveKey( spep_5 + 16, 1, 36.6, -47.1 , 0 );
setMoveKey( spep_5 + 18, 1, 15.9, -47.6 , 0 );
setMoveKey( spep_5 + 20, 1, 30.5, -51.5 , 0 );
setMoveKey( spep_5 + 22, 1, 6.2, -30.7 , 0 );
setMoveKey( spep_5 + 24, 1, 52.5, -34.6 , 0 );
setMoveKey( spep_5 + 26, 1, 31.7, -35 , 0 );
setMoveKey( spep_5 + 28, 1, 41.1, -34.3 , 0 );
setMoveKey( spep_5 + 30, 1, 17, -14.2 , 0 );
setMoveKey( spep_5 + 32, 1, 45.5, -14.6 , 0 );
setMoveKey( spep_5 + 34, 1, 46.2, -12.8 , 0 );
setMoveKey( spep_5 + 36, 1, 47.1, -11 , 0 );
setMoveKey( spep_5 + 38, 1, 47.9, -9.1 , 0 );
setMoveKey( spep_5 + 40, 1, 48.6, -7.3 , 0 );
setMoveKey( spep_5 + 42, 1, 49.5, -5.5 , 0 );
setMoveKey( spep_5 + 44, 1, 50.3, -3.6 , 0 );
setMoveKey( spep_5 + 46, 1, 51.1, -1.8 , 0 );
setMoveKey( spep_5 + 49, 1, 51.8, 0.2 , 0 );
setMoveKey( spep_5 + 50, 1, 30.7, 9.8 , 0 );
setMoveKey( spep_5 + 52, 1, 40.5, 8.7 , 0 );
setMoveKey( spep_5 + 54, 1, 17.5, 29.2 , 0 );
setMoveKey( spep_5 + 56, 1, 57.3, 29.5 , 0 );
setMoveKey( spep_5 + 58, 1, 28, 29.7 , 0 );
setMoveKey( spep_5 + 60, 1, 34.2, 26.4 , 0 );
setMoveKey( spep_5 + 62, 1, 1.5, 47.8 , 0 );
setMoveKey( spep_5 + 64, 1, 39.3, 44.5 , 0 );
setMoveKey( spep_5 + 66, 1, 10, 44.7 , 0 );
setMoveKey( spep_5 + 68, 1, 14.5, 36.8 , 0 );
setMoveKey( spep_5 + 70, 1, -13, 48.9 , 0 );
setMoveKey( spep_5 + 72, 1, 14.2, 39.7 , 0 );
setMoveKey( spep_5 + 74, 1, 9.5, 41.9 , 0 );
setMoveKey( spep_5 + 76, 1, 4.9, 44.2 , 0 );
setMoveKey( spep_5 + 78, 1, 0.2, 46.4 , 0 );
setMoveKey( spep_5 + 80, 1, -4.4, 48.7 , 0 );
setMoveKey( spep_5 + 82, 1, -9.1, 51 , 0 );
setMoveKey( spep_5 + 84, 1, -13.7, 53.2 , 0 );
setMoveKey( spep_5 + 86, 1, -18.4, 55.5 , 0 );
setMoveKey( spep_5 + 88, 1, -27.1, 67.5 , 0 );
setMoveKey( spep_5 + 91, 1, -36.7, 79.8 , 0 );
setMoveKey( spep_5 + 92, 1, 90.3, 59.4 , 0 );
setMoveKey( spep_5 + 94, 1, 136.2, 36.4 , 0 );
setMoveKey( spep_5 + 96, 1, 143.1, 38.4 , 0 );
setMoveKey( spep_5 + 98, 1, 220.4, 15.4 , 0 );
setMoveKey( spep_5 + 100, 1, 230.9, -4 , 0 );
setMoveKey( spep_5 + 102, 1, 276.8, -26.8 , 0 );
setMoveKey( spep_5 + 104, 1, 226.3, -9.7 , 0 );
setMoveKey( spep_5 + 106, 1, 236.6, -15.8 , 0 );
setMoveKey( spep_5 + 108, 1, 190.2, -17.2 , 0 );
setMoveKey( spep_5 + 110, 1, 201.6, -23.2 , 0 );
setMoveKey( spep_5 + 112, 1, 187.1, -12.8 , 0 );
setMoveKey( spep_5 + 114, 1, 219.6, -18.9 , 0 );
setMoveKey( spep_5 + 116, 1, 223.9, -20.2 , 0 );
setMoveKey( spep_5 + 118, 1, 228.2, -21.6 , 0 );
setMoveKey( spep_5 + 120, 1, 232.5, -23 , 0 );
setMoveKey( spep_5 + 122, 1, 236.8, -24.3 , 0 );
setMoveKey( spep_5 + 124, 1, 241.1, -25.6 , 0 );
setMoveKey( spep_5 + 126, 1, 245.3, -27 , 0 );
setMoveKey( spep_5 + 128, 1, 249.6, -28.4 , 0 );

setScaleKey( spep_5 + 0, 1, 1, 1 );
setScaleKey( spep_5 + 10, 1, 1, 1 );
setScaleKey( spep_5 + 12, 1, 1.17, 1.17 );
setScaleKey( spep_5 + 14, 1, 1.33, 1.33 );
setScaleKey( spep_5 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 26, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 28, 1, 1.33, 1.33 );
setScaleKey( spep_5 + 30, 1, 1.17, 1.17 );
setScaleKey( spep_5 + 32, 1, 1, 1 );
setScaleKey( spep_5 + 50, 1, 1, 1 );
setScaleKey( spep_5 + 52, 1, 1.17, 1.17 );
setScaleKey( spep_5 + 54, 1, 1.33, 1.33 );
setScaleKey( spep_5 + 56, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 66, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 68, 1, 1.33, 1.33 );
setScaleKey( spep_5 + 70, 1, 1.17, 1.17 );
setScaleKey( spep_5 + 72, 1, 1, 1 );
setScaleKey( spep_5 + 86, 1, 1, 1 );
setScaleKey( spep_5 + 88, 1, 1.17, 1.17 );
setScaleKey( spep_5 + 91, 1, 1.33, 1.33 );
setScaleKey( spep_5 + 92, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 94, 1, 1.47, 1.47 );
setScaleKey( spep_5 + 96, 1, 1.46, 1.46 );
setScaleKey( spep_5 + 98, 1, 1.42, 1.42 );
setScaleKey( spep_5 + 100, 1, 1.4, 1.4 );
setScaleKey( spep_5 + 102, 1, 1.37, 1.37 );
setScaleKey( spep_5 + 104, 1, 1.18, 1.18 );
setScaleKey( spep_5 + 106, 1, 1.03, 1.03 );
setScaleKey( spep_5 + 108, 1, 0.86, 0.86 );
setScaleKey( spep_5 + 110, 1, 0.84, 0.84 );
setScaleKey( spep_5 + 112, 1, 0.82, 0.82 );
setScaleKey( spep_5 + 114, 1, 0.81, 0.81 );
setScaleKey( spep_5 + 116, 1, 0.79, 0.79 );
setScaleKey( spep_5 + 118, 1, 0.77, 0.77 );
setScaleKey( spep_5 + 120, 1, 0.75, 0.75 );
setScaleKey( spep_5 + 122, 1, 0.74, 0.74 );
setScaleKey( spep_5 + 124, 1, 0.72, 0.72 );
setScaleKey( spep_5 + 126, 1, 0.7, 0.7 );
setScaleKey( spep_5 + 128, 1, 0.68, 0.68 );

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5 + 49, 1, 0 );
setRotateKey( spep_5 + 50, 1, -54.4 );
setRotateKey( spep_5 + 52, 1, -54.5 );
setRotateKey( spep_5 + 91, 1, -54.5 );
setRotateKey( spep_5 + 92, 1, 25.3 );
setRotateKey( spep_5 + 94, 1, 25.5 );
setRotateKey( spep_5 + 128, 1, 25.5 );

ryusen3 = entryEffectLife(  spep_5 + 0,  914,  100,  0x80,  -1,  0,  0,  0);

setEffMoveKey(  spep_5 + 0,  ryusen3,  0,  0,  0);
setEffMoveKey(  spep_5 + 100,  ryusen3,  0,  0,  0);
setEffScaleKey(  spep_5 + 0,  ryusen3,  1.7,  1.1);
setEffScaleKey(  spep_5 + 100,  ryusen3,  1.7,  1.1);
setEffRotateKey(  spep_5 + 0,  ryusen3,  0);
setEffRotateKey(  spep_5 + 100,  ryusen3,  0);
setEffAlphaKey(  spep_5 + 0,  ryusen3,  255);
setEffAlphaKey(  spep_5 + 100,  ryusen3,  255);

ryusen4 = entryEffectLife( spep_5 + 102,  924, 28, 0x80, -1, 0, 0, 0 , 0 );
setEffShake(  spep_5 + 102,  ryusen4,  28,  20 );
setEffMoveKey( spep_5 + 102, ryusen4, 0, 0 , 0 );
setEffMoveKey( spep_5 + 130, ryusen4, 0, 0 , 0 );
setEffScaleKey( spep_5 + 102, ryusen4, 1.20, 1.45 );
setEffScaleKey( spep_5 + 130, ryusen4, 1.20, 1.45 );
setEffRotateKey( spep_5 + 102, ryusen4, 20 );
setEffRotateKey( spep_5 + 130, ryusen4, 20 );
setEffAlphaKey( spep_5 + 102, ryusen4, 255 );
setEffAlphaKey( spep_5 + 130, ryusen4, 255 );

-- ** 音 ** --

playSe( spep_5 + 5,  1000);
playSe( spep_5 + 23,  4);
playSe( spep_5 + 24,  1003);
playSe( spep_5 + 27,  43);
playSe( spep_5 + 38,  1001);
playSe( spep_5 + 58,  4);
playSe( spep_5 + 59,  1003);
playSe( spep_5 + 62,  43);
playSe( spep_5 + 75,  1110);
SE1 = playSe( spep_5 + 75,  1011);

setSeVolume( spep_5 + 5,  1000,  112);
setSeVolume( spep_5 + 23,  4,  100);
setSeVolume( spep_5 + 24,  1003,  100);
setSeVolume( spep_5 + 27,  43,  73);
setSeVolume( spep_5 + 38,  1001,  100);
setSeVolume( spep_5 + 58,  4,  100);
setSeVolume( spep_5 + 59,  1003,  100);
setSeVolume( spep_5 + 62,  43,  73);
setSeVolume( spep_5 + 75,  1110,  89);
setSeVolume( spep_5 + 75,  1011,  100);

stopSe( spep_5 + 75 + 37,  SE1,  19);

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 130, 0, 0, 0, 0, 200 );  --黒　背景

-- +* 白フェード ** --
entryFade( spep_5 + 116, 10,  6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

-- ** 次の準備 ** --
spep_6 = spep_5 + 130;

------------------------------------------------------
-- 気弾ため(60F)
------------------------------------------------------

-- ** エフェクト等 ** --
tame2 = entryEffect( spep_6 + 0, SP_06x, 0x100, -1, 0, 0, 0 );  --気弾ため(ef_006)

setEffMoveKey( spep_6 + 0, tame2, 0, 0 , 0 );
setEffMoveKey( spep_6 + 60, tame2, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, tame2, -1.0, 1.0 );
setEffScaleKey( spep_6 + 60, tame2, -1.0, 1.0 );
setEffRotateKey( spep_6 + 0, tame2, 0 );
setEffRotateKey( spep_6 + 60, tame2, 0 );
setEffAlphaKey( spep_6 + 0, tame2, 255 );
setEffAlphaKey( spep_6 + 60, tame2, 255 );

-- ** 集中線 ** --
shuchusen6 = entryEffectLife( spep_6 + 0,  906, 60, 0x100, -1, 0, 0, 0 );

setEffShake(  spep_6 + 0,  shuchusen6,  46,  20);
setEffMoveKey( spep_6 + 0, shuchusen6, 0, 0 , 0 );
setEffMoveKey( spep_6 + 60, shuchusen6,0, 0 , 0 );
setEffScaleKey( spep_6 + 0, shuchusen6, 1, 1 );
setEffScaleKey( spep_6 + 60, shuchusen6, 1, 1 );
setEffRotateKey( spep_6 + 0, shuchusen6, 0 );
setEffRotateKey( spep_6 + 60, shuchusen6, 0 );
setEffAlphaKey( spep_6 + 0, shuchusen6, 255 );
setEffAlphaKey( spep_6 + 60, shuchusen6, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 60, 0, 0, 0, 0, 200 );  --黒　背景

-- ** 音 ** --
playSe( spep_6 - 13,  1037);
playSe( spep_6 + 8,  1072);
setSeVolume( spep_6 - 13, 1037,  100); 
setSeVolume( spep_6 + 8 , 1072,  0); 
setSeVolume( spep_6 + 14 , 1072,  0); 
setSeVolume( spep_6 + 15 , 1072,  75); 
setSeVolume( spep_6 + 19 , 1072,  151); 

-- +* 白フェード ** --
entryFade( spep_6 + 50, 8,  4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

-- ** 次の準備 ** --
spep_7 = spep_6 + 60;

------------------------------------------------------
-- 気弾発射(94F)
------------------------------------------------------

-- ** エフェクト等 ** --
hassya = entryEffect( spep_7 + 0, SP_07x, 0x100, -1, 0, 0, 0 );  --気弾発射(ef_007)

setEffMoveKey( spep_7 + 0, hassya, 0, 0 , 0 );
setEffMoveKey( spep_7 + 94, hassya, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, hassya, 1.0, 1.0 );
setEffScaleKey( spep_7 + 94, hassya, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, hassya, 0 );
setEffRotateKey( spep_7 + 94, hassya, 0 );
setEffAlphaKey( spep_7 + 0, hassya, 255 );
setEffAlphaKey( spep_7 + 94, hassya, 255 );

-- ** 集中線 ** --
shuchusen5 = entryEffectLife( spep_7 + 10,  906, 46, 0x100, -1, 0, 0, 0 );

setEffShake(  spep_7 + 10,  shuchusen5,  46,  20);
setEffMoveKey( spep_7 + 10, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_7 + 56, shuchusen5,0, 0 , 0 );
setEffScaleKey( spep_7 + 10, shuchusen5, 1, 1 );
setEffScaleKey( spep_7 + 56, shuchusen5, 1, 1 );
setEffRotateKey( spep_7 + 10, shuchusen5, 0 );
setEffRotateKey( spep_7 + 56, shuchusen5, 0 );
setEffAlphaKey( spep_7 + 10, shuchusen5, 255 );
setEffAlphaKey( spep_7 + 56, shuchusen5, 255 );

ctzuo = entryEffectLife( spep_7 + 10,  10012, 28, 0x100, -1, 0, 100, 307.7 );
setEffShake(  spep_7 + 10, ctzuo,  28,  20);
setEffMoveKey( spep_7 + 10, ctzuo, 100, 307.7 , 0 );
setEffMoveKey( spep_7 + 12, ctzuo, 112, 295.7 , 0 );
setEffMoveKey( spep_7 + 14, ctzuo, 100, 307.7 , 0 );
setEffMoveKey( spep_7 + 16, ctzuo, 112, 295.7 , 0 );
setEffMoveKey( spep_7 + 18, ctzuo, 100, 307.7 , 0 );
setEffMoveKey( spep_7 + 20, ctzuo, 112, 295.7 , 0 );
setEffMoveKey( spep_7 + 22, ctzuo, 100, 307.7 , 0 );
setEffMoveKey( spep_7 + 24, ctzuo, 112, 295.7 , 0 );
setEffMoveKey( spep_7 + 26, ctzuo, 100, 307.7 , 0 );
setEffMoveKey( spep_7 + 28, ctzuo, 112, 295.7 , 0 );
setEffMoveKey( spep_7 + 30, ctzuo, 100, 307.7 , 0 );
setEffMoveKey( spep_7 + 32, ctzuo, 112, 295.7 , 0 );
setEffMoveKey( spep_7 + 34, ctzuo, 100, 307.7 , 0 );
setEffMoveKey( spep_7 + 36, ctzuo, 112, 295.7 , 0 );
setEffMoveKey( spep_7 + 38, ctzuo, 100, 307.7 , 0 );
setEffScaleKey( spep_7 + 10, ctzuo, 2.6, 2.6 );
setEffScaleKey( spep_7 + 38, ctzuo, 2.6, 2.6 );
setEffRotateKey( spep_7 + 10, ctzuo, 0 );
setEffRotateKey( spep_7 + 38, ctzuo, 0 );
setEffAlphaKey( spep_7 + 10, ctzuo, 255 );
setEffAlphaKey( spep_7 + 38, ctzuo, 255 );

ryusen5 = entryEffectLife( spep_7 + 0,  914, 8, 0x80, -1, 0, 1292.5, -781.2 );
setEffMoveKey( spep_7 + 0, ryusen5, 1292.5, -781.2 , 0 );
setEffMoveKey( spep_7 + 2, ryusen5, 1018.5, -617.2 , 0 );
setEffMoveKey( spep_7 + 4, ryusen5, 744.6, -453.3 , 0 );
setEffMoveKey( spep_7 + 6, ryusen5, 470.6, -289.3 , 0 );
setEffMoveKey( spep_7 + 8, ryusen5, 196.7, -125.4 , 0 );
setEffScaleKey( spep_7 + 0, ryusen5, 3.76, 1.42 );
setEffScaleKey( spep_7 +8, ryusen5, 3.76, 1.42 );
setEffRotateKey( spep_7 + 0, ryusen5, 30.9 );
setEffRotateKey( spep_7 + 8, ryusen5, 30.9 );
setEffAlphaKey( spep_7 + 0, ryusen5, 255 );
setEffAlphaKey( spep_7 + 8, ryusen5, 255 );

ryusen6 = entryEffectLife( spep_7 + 10,  921, 82, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_7 + 10, ryusen6, 0, 0 , 0 );
setEffMoveKey( spep_7 + 92, ryusen6, 0, 0 , 0 );
setEffScaleKey( spep_7 + 10, ryusen6, 1.67, 1.27 );
setEffScaleKey( spep_7 + 92, ryusen6, 1.67, 1.27 );
setEffRotateKey( spep_7 + 10, ryusen6, -149.3 );
setEffRotateKey( spep_7 + 92, ryusen6, -149.3 );
setEffAlphaKey( spep_7 + 10, ryusen6, 255 );
setEffAlphaKey( spep_7 + 92, ryusen6, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 94, 0, 0, 0, 0, 200 );  --黒　背景

-- ** 音 ** --
playSe( spep_7 - 9,  1177);
playSe( spep_7 - 7,  1022);
playSe( spep_7 + 93,  1021);

setSeVolume( spep_7 -9, 1177,  79);
setSeVolume( spep_7 -7, 1022,  119);
setSeVolume( spep_7 +93, 1021,  100);

-- +* 白フェード ** --
entryFade( spep_7 + 80, 10,  4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

-- ** 次の準備 ** --
spep_8 = spep_7 + 94;

------------------------------------------------------
-- 被弾(74F)
------------------------------------------------------

-- ** エフェクト等 ** --
hidan = entryEffect( spep_8 + 0, SP_08x, 0x100, -1, 0, 0, 0 );  --被弾(ef_008)

setEffMoveKey( spep_8 + 0, hidan, 0, 0 , 0 );
setEffMoveKey( spep_8 + 74, hidan, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, hidan, 1.0, 1.0 );
setEffScaleKey( spep_8 + 74, hidan, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, hidan, 0 );
setEffRotateKey( spep_8 + 74, hidan, 0 );
setEffAlphaKey( spep_8 + 0, hidan, 255 );
setEffAlphaKey( spep_8 + 74, hidan, 255 );

-- ** 敵の動き ** --
setDisp( spep_8 + 0, 1, 1 );
changeAnime( spep_8 + 0, 1, 108 );

setMoveKey( spep_8 + 0, 1, -596.3, 214.9 , 0 );
setMoveKey( spep_8 + 2, 1, -447, 158.2 , 0 );
setMoveKey( spep_8 + 4, 1, -305.8, 105.7 , 0 );
setMoveKey( spep_8 + 6, 1, -156.5, 57.1 , 0 );
setMoveKey( spep_8 + 8, 1, -15.3, 4.6 , 0 );
setMoveKey( spep_8 + 10, 1, -10.2, 0.1 , 0 );
setMoveKey( spep_8 + 12, 1, -13.1, -0.4 , 0 );
setMoveKey( spep_8 + 14, 1, -8, 3.1 , 0 );
setMoveKey( spep_8 + 16, 1, -10.9, 2.6 , 0 );
setMoveKey( spep_8 + 18, 1, -5.8, -1.8 , 0 );
setMoveKey( spep_8 + 20, 1, -8.7, -2.3 , 0 );
setMoveKey( spep_8 + 22, 1, -3.6, 1.2 , 0 );
setMoveKey( spep_8 + 24, 1, -6.5, 0.7 , 0 );
setMoveKey( spep_8 + 26, 1, -1.3, -3.8 , 0 );
setMoveKey( spep_8 + 28, 1, -4.2, -4.3 , 0 );
setMoveKey( spep_8 + 30, 1, 0.9, -0.7 , 0 );
setMoveKey( spep_8 + 32, 1, -2, -1.2 , 0 );
setMoveKey( spep_8 + 34, 1, 3.1, -5.7 , 0 );
setMoveKey( spep_8 + 36, 1, 0.2, -6.2 , 0 );
setMoveKey( spep_8 + 38, 1, 5.3, -2.7 , 0 );
setMoveKey( spep_8 + 40, 1, 2.4, -3.2 , 0 );
setMoveKey( spep_8 + 42, 1, 7.5, -7.7 , 0 );
setMoveKey( spep_8 + 44, 1, 4.6, -8.1 , 0 );
setMoveKey( spep_8 + 46, 1, 9.7, -4.6 , 0 );
setMoveKey( spep_8 + 48, 1, 6.8, -5.1 , 0 );
setMoveKey( spep_8 + 50, 1, 11.9, -9.6 , 0 );
setMoveKey( spep_8 + 52, 1, 9, -10.1 , 0 );
setMoveKey( spep_8 + 54, 1, 14.1, -6.6 , 0 );
setMoveKey( spep_8 + 56, 1, 11.2, -7 , 0 );
setMoveKey( spep_8 + 58, 1, 16.3, -11.5 , 0 );
setMoveKey( spep_8 + 60, 1, 13.4, -12 , 0 );
setMoveKey( spep_8 + 62, 1, 18.5, -8.5 , 0 );
setMoveKey( spep_8 + 64, 1, 15.6, -9 , 0 );
setMoveKey( spep_8 + 66, 1, 20.7, -13.5 , 0 );
setMoveKey( spep_8 + 68, 1, 17.9, -14 , 0 );
setMoveKey( spep_8 + 70, 1, 23, -10.4 , 0 );
setMoveKey( spep_8 + 72, 1, 20.1, -10.9 , 0 );

setScaleKey( spep_8 + 0, 1, 1.97, 1.97 );
setScaleKey( spep_8 + 2, 1, 1.82, 1.82 );
setScaleKey( spep_8 + 4, 1, 1.67, 1.67 );
setScaleKey( spep_8 + 6, 1, 1.52, 1.52 );
setScaleKey( spep_8 + 8, 1, 1.37, 1.37 );
setScaleKey( spep_8 + 10, 1, 1.36, 1.36 );
setScaleKey( spep_8 + 12, 1, 1.35, 1.35 );
setScaleKey( spep_8 + 14, 1, 1.33, 1.33 );
setScaleKey( spep_8 + 16, 1, 1.32, 1.32 );
setScaleKey( spep_8 + 18, 1, 1.31, 1.31 );
setScaleKey( spep_8 + 20, 1, 1.3, 1.3 );
setScaleKey( spep_8 + 22, 1, 1.29, 1.29 );
setScaleKey( spep_8 + 24, 1, 1.28, 1.28 );
setScaleKey( spep_8 + 26, 1, 1.26, 1.26 );
setScaleKey( spep_8 + 28, 1, 1.25, 1.25 );
setScaleKey( spep_8 + 30, 1, 1.24, 1.24 );
setScaleKey( spep_8 + 32, 1, 1.23, 1.23 );
setScaleKey( spep_8 + 34, 1, 1.22, 1.22 );
setScaleKey( spep_8 + 36, 1, 1.21, 1.21 );
setScaleKey( spep_8 + 38, 1, 1.2, 1.2 );
setScaleKey( spep_8 + 40, 1, 1.18, 1.18 );
setScaleKey( spep_8 + 42, 1, 1.17, 1.17 );
setScaleKey( spep_8 + 44, 1, 1.16, 1.16 );
setScaleKey( spep_8 + 46, 1, 1.15, 1.15 );
setScaleKey( spep_8 + 48, 1, 1.14, 1.14 );
setScaleKey( spep_8 + 50, 1, 1.13, 1.13 );
setScaleKey( spep_8 + 52, 1, 1.12, 1.12 );
setScaleKey( spep_8 + 54, 1, 1.1, 1.1 );
setScaleKey( spep_8 + 56, 1, 1.09, 1.09 );
setScaleKey( spep_8 + 58, 1, 1.08, 1.08 );
setScaleKey( spep_8 + 60, 1, 1.07, 1.07 );
setScaleKey( spep_8 + 62, 1, 1.06, 1.06 );
setScaleKey( spep_8 + 64, 1, 1.05, 1.05 );
setScaleKey( spep_8 + 66, 1, 1.03, 1.03 );
setScaleKey( spep_8 + 68, 1, 1.02, 1.02 );
setScaleKey( spep_8 + 70, 1, 1.01, 1.01 );
setScaleKey( spep_8 + 72, 1, 1, 1 );

setRotateKey( spep_8 + 0, 1, 0 );
setRotateKey( spep_8 + 72, 1, 0 );

ryusen7 = entryEffectLife( spep_8 + 0,  921, 74, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_8 + 0, ryusen7, 0, 0 , 0 );
setEffMoveKey( spep_8 + 74, ryusen7, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, ryusen7, 1.67, 1.27 );
setEffScaleKey( spep_8 + 74, ryusen7, 1.67, 1.27 );
setEffRotateKey( spep_8 + 0, ryusen7, -149.3 );
setEffRotateKey( spep_8 + 74, ryusen7, -149.3 );
setEffAlphaKey( spep_8 + 0, ryusen7, 255 );
setEffAlphaKey( spep_8 + 74, ryusen7, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_8 + 0, 0, 74, 0, 0, 0, 0, 200 );  --黒　背景

-- +* 白フェード ** --
entryFade( spep_8 + 66, 4,  4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

-- ** 次の準備 ** --
spep_9 = spep_8 + 74;

------------------------------------------------------
-- 爆発(180F)
------------------------------------------------------

-- ** エフェクト等 ** --
bakuha = entryEffect( spep_9 + 0, SP_09x, 0x100, -1, 0, 0, 0 );  --爆破(ef_009)

setEffMoveKey( spep_9 + 0, bakuha, 0, 0 , 0 );
setEffMoveKey( spep_9 + 180, bakuha, 0, 0 , 0 );
setEffScaleKey( spep_9 + 0, bakuha, 1.0, 1.0 );
setEffScaleKey( spep_9 + 180, bakuha, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, bakuha, 0 );
setEffRotateKey( spep_9 + 180, bakuha, 0 );
setEffAlphaKey( spep_9 + 0, bakuha, 255 );
setEffAlphaKey( spep_9 + 180, bakuha, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_9 + 0, 0, 180, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
playSe( 903,  1024);
playSe( 903,  1159);
playSe( 1033, 1023);
playSe( 1033, 1033);

setSeVolume( 903,  1024,  100);
setSeVolume( 903,  1159,  63);
setSeVolume( 1033, 1023,  79);
setSeVolume( 1033, 1033,  100); 

-- ** ダメージ表示 ** --
dealDamage( spep_9 + 80 );
endPhase( spep_9 + 180  );
end