--1005980_ナット_ナットワイヤーアーム

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SE_01 = 1035; --気を貯める
SE_02 = 50; --気が広がる
SE_03 = 1036; --かめはめ
SE_04 = 1018; --カットイン
SE_05 = 1035; --カットイン攻撃
SE_06 = 1059; --発射
SE_07 = 1018; --移動音
SE_08 = 1042; --カットイン
SE_09 = 1025; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音
SE_12 = 09;

--味方側
SP_01 = 153838 --待機
SP_02 = 153839 --貯め開始
SP_03 = 153840 --貯め途中
SP_04 = 153841 --アーム発射
SP_05 = 153842 --アーム着弾

--敵側
SP_01r = 153838
SP_02r = 153839
SP_03r = 153840
SP_04r = 153841

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

spep_0 = 0;


--待機
taiki = entryEffectLife( spep_0 + 0, SP_01, 20, 0x100, -1, 0, 0, 0 ); 

setEffMoveKey( spep_0 + 0, taiki, 0, 0 , 0 );
setEffMoveKey( spep_0 + 20, taiki, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, taiki, 1.0, 1.0 );
setEffScaleKey( spep_0 + 20, taiki, 1.0, 1.0 );

setEffRotateKey( spep_0 + 0, taiki, 0 );
setEffRotateKey( spep_0 + 20, taiki, 0 );

setEffAlphaKey( spep_0 + 0, taiki, 255 );
setEffAlphaKey( spep_0 + 20, taiki, 255 );

--気ダメ最初
tame = entryEffectLife( spep_0 + 20, SP_02, 22, 0x100, -1, 0, 0, 0 ); 

setEffMoveKey( spep_0 + 20, tame, 0, 0 , 0 );
setEffMoveKey( spep_0 + 42, tame, 0, 0 , 0 );

setEffScaleKey( spep_0 + 20, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 42, tame, 1.0, 1.0 );

setEffRotateKey( spep_0 + 20, tame, 0 );
setEffRotateKey( spep_0 + 42, tame, 0 );

setEffAlphaKey( spep_0 + 20, tame, 255 );
setEffAlphaKey( spep_0 + 42, tame, 255 );

--気ダメ途中
tame2 = entryEffect( spep_0 + 42, SP_03, 0x100, -1, 0, 0, 0 ); 

setEffMoveKey( spep_0 + 42, tame2, 0, 0 , 0 );
setEffMoveKey( spep_0 + 126, tame2, 0, 0 , 0 );

setEffScaleKey( spep_0 + 42, tame2, 1.0, 1.0 );
setEffScaleKey( spep_0 + 126, tame2, 1.0, 1.0 );

setEffRotateKey( spep_0 + 42, tame2, 0 );
setEffRotateKey( spep_0 + 126, tame2, 0 );

setEffAlphaKey( spep_0 + 42, tame2, 255 );
setEffAlphaKey( spep_0 + 126, tame2, 255 );


--文字エフェクト（ズズズズズン）
ct_zuzu = entryEffectLife( spep_0 + 20,  10013, 22, 0x100, -1, 0, 20.1, 249.8 );

setEffShake( spep_0 +28 , ct_zuzu, 14, 10);

setEffMoveKey( spep_0 + 20, ct_zuzu, 20.1, 249.8 , 0 );
setEffMoveKey( spep_0 + 22, ct_zuzu, 29.2, 317.4 , 0 );
setEffMoveKey( spep_0 + 24, ct_zuzu, 51.2, 394.7 , 0 );
setEffMoveKey( spep_0 + 26, ct_zuzu, 38.3, 377.6 , 0 );
setEffMoveKey( spep_0 + 28, ct_zuzu, 43.3, 371.9 , 0 );
setEffMoveKey( spep_0 + 42, ct_zuzu, 30.9, 354.4 , 0 );

setEffScaleKey( spep_0 + 20, ct_zuzu, 1.11, 1.11 );
setEffScaleKey( spep_0 + 22, ct_zuzu, 1.99, 1.99 );
setEffScaleKey( spep_0 + 24, ct_zuzu, 2.83, 2.83 );
setEffScaleKey( spep_0 + 26, ct_zuzu, 2.92, 2.92 );
setEffScaleKey( spep_0 + 42, ct_zuzu, 2.92, 2.92 );

setEffRotateKey( spep_0 + 20, ct_zuzu, -5 );
setEffRotateKey( spep_0 + 42, ct_zuzu, -5 );

setEffAlphaKey( spep_0 + 20, ct_zuzu, 255 );
setEffAlphaKey( spep_0 + 30, ct_zuzu, 255 );
setEffAlphaKey( spep_0 + 32, ct_zuzu, 212 );
setEffAlphaKey( spep_0 + 34, ct_zuzu, 170 );
setEffAlphaKey( spep_0 + 36, ct_zuzu, 128 );
setEffAlphaKey( spep_0 + 38, ct_zuzu, 85 );
setEffAlphaKey( spep_0 + 40, ct_zuzu, 43 );
setEffAlphaKey( spep_0 + 42, ct_zuzu, 0 );


-- ** 顔カットイン ** --
speff = entryEffect( spep_0 + 42, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)   
setEffReplaceTexture( speff, 3, 2 );        --カットイン差し替え  
speff1 = entryEffect( spep_0 + 42, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)   
setEffReplaceTexture( speff1, 4, 5 );        --セリフカットイン差し替え  

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_0 + 54,  190006, 72, 0x100, -1, 0, 100, 515.5 ); --ゴゴゴ
setEffShake( spep_0 + 54, ctgogo, 72, 10 );

setEffMoveKey( spep_0 + 54, ctgogo, 40, 512.8 , 0 );
setEffMoveKey( spep_0 + 126, ctgogo, 40, 515.5 , 0 );

setEffScaleKey( spep_0 + 54, ctgogo, 0.84, 0.84 );
setEffScaleKey( spep_0 + 118, ctgogo, 0.84, 0.84 );
setEffScaleKey( spep_0 + 120, ctgogo, 1.2, 1.2 );
setEffScaleKey( spep_0 + 122, ctgogo, 1.3, 1.3 );
setEffScaleKey( spep_0 + 124, ctgogo, 1.66, 1.66 );
setEffScaleKey( spep_0 + 126, ctgogo, 2.02, 2.02 );
 
setEffRotateKey( spep_0 + 54, ctgogo, 0 );
setEffRotateKey( spep_0 + 126, ctgogo, 0 );

setEffAlphaKey( spep_0 + 54, ctgogo, 0 );
setEffAlphaKey( spep_0 + 55, ctgogo, 255 );
setEffAlphaKey( spep_0 + 56, ctgogo, 255 );
setEffAlphaKey( spep_0 + 126, ctgogo, 255 );



entryFade(spep_0+42, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255); --薄めの白フェード
entryFade(spep_0+126, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255); --白フェード


-- ** 音 ** --
playSe( spep_0 + 20, SE_02 ); --気ため
playSe( spep_0 + 52, SE_04 ); --カットイン




spep_1 = spep_0 + 126;
--------------------------------------
--カードカットイン
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
ryusen  = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, ryusen , 90, 20 );

setEffMoveKey( spep_1 + 0, ryusen , 0, 0 , 0 );
setEffMoveKey( spep_1 + 90, ryusen , 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, ryusen , 1.6, 1.6 );
setEffScaleKey( spep_1 + 90, ryusen , 1.6, 1.6 );

setEffRotateKey( spep_1 + 0, ryusen , 0 );
setEffRotateKey( spep_1 + 90, ryusen , 0 );

setEffAlphaKey( spep_1 + 0, ryusen , 255 );
setEffAlphaKey( spep_1 + 90, ryusen , 255 );

-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );

-- ** エフェクト等 ** --
entryFade(spep_1+82,4,14,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_2 = spep_1 + 94;

------------------------------------------------------
-- 発射(82F)
------------------------------------------------------


--アーム発射
utu = entryEffectLife( spep_2 + 0, SP_04, 82, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, utu, 0, 0 , 0 );
setEffMoveKey( spep_2 + 82, utu, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, utu, 1.0, 1.0 );
setEffScaleKey( spep_2 + 82, utu, 1.0, 1.0 );

setEffRotateKey( spep_2 + 0, utu, 0 );
setEffRotateKey( spep_2 + 82, utu, 0 );

setEffAlphaKey( spep_2 + 0, utu, 255 );
setEffAlphaKey( spep_2 + 80, utu, 255 );
setEffAlphaKey( spep_2 + 81, utu, 255 );
setEffAlphaKey( spep_2 + 82, utu, 0 );


-- ** 集中線 ** --
ryusen2  = entryEffectLife( spep_2 + 36, 906, 14, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 38, ryusen2 , 10, 20 );

setEffMoveKey( spep_2 + 36, ryusen2 , 0, 0 , 0 );
setEffMoveKey( spep_2 + 52, ryusen2 , 0, 0 , 0 );

setEffScaleKey( spep_2 + 36, ryusen2 , 1.6, 1.6 );
setEffScaleKey( spep_2 + 52, ryusen2 , 1.6, 1.6 );

setEffRotateKey( spep_2 + 36, ryusen2 , 0 );
setEffRotateKey( spep_2 + 52, ryusen2 , 0 );

setEffAlphaKey( spep_2 + 36, ryusen2 , 0 );
setEffAlphaKey( spep_2 + 37, ryusen2 , 255 );
setEffAlphaKey( spep_2 + 38, ryusen2 , 255 );
setEffAlphaKey( spep_2 + 48, ryusen2 , 255 );
setEffAlphaKey( spep_2 + 52, ryusen2 , 0 );



-- ** 書き文字エントリー ** --
ctdon = entryEffectLife( spep_2 + 36,  10019, 44, 0x100, -1, 0, 100, 515.5 ); --ドン
setEffShake( spep_2 + 60, ctdon, 12, 10 );

setEffMoveKey( spep_2 + 36, ctdon, 50, 150 , 0 );
setEffMoveKey( spep_2 + 38, ctdon, 53.3, 180.7 , 0 );
setEffMoveKey( spep_2 + 40, ctdon, 66.3, 198.5 , 0 );
setEffMoveKey( spep_2 + 42, ctdon, 73.7, 240.8 , 0 );
setEffMoveKey( spep_2 + 44, ctdon, 80, 224.8 , 0 );
setEffMoveKey( spep_2 + 46, ctdon, 68.1, 242.1 , 0 );
setEffMoveKey( spep_2 + 48, ctdon, 84.7, 249.1 , 0 );
setEffMoveKey( spep_2 + 50, ctdon, 73.7, 241.2 , 0 );
setEffMoveKey( spep_2 + 52, ctdon, 85.5, 265.3 , 0 );
setEffMoveKey( spep_2 + 54, ctdon, 83, 255.4 , 0 );
setEffMoveKey( spep_2 + 56, ctdon, 81.6, 272.1 , 0 );
setEffMoveKey( spep_2 + 58, ctdon, 82.5, 267.1 , 0 );
setEffMoveKey( spep_2 + 60, ctdon, 110.5, 309.8 , 0 );
setEffMoveKey( spep_2 + 82, ctdon, 110.5, 309.8 , 0 );

setEffRotateKey( spep_2 + 36, ctdon, 45 );
setEffRotateKey( spep_2 + 82, ctdon, 45 );

setEffScaleKey( spep_2 + 36, ctdon, 0.1, 0.1 );
setEffScaleKey( spep_2 + 38, ctdon, 1.07, 1.07 );
setEffScaleKey( spep_2 + 40, ctdon, 2.03, 2.03 );
setEffScaleKey( spep_2 + 42, ctdon, 3, 3 );
setEffScaleKey( spep_2 + 44, ctdon, 3.01, 3.01 );
setEffScaleKey( spep_2 + 46, ctdon, 3.02, 3.02 );
setEffScaleKey( spep_2 + 82, ctdon, 3.18, 3.18 );


setEffAlphaKey( spep_2 + 36, ctdon, 255 );
setEffAlphaKey( spep_2 + 37, ctdon, 255 );
setEffAlphaKey( spep_2 + 38, ctdon, 255 );
setEffAlphaKey( spep_2 + 66, ctdon, 255 );
setEffAlphaKey( spep_2 + 82, ctdon, 0 );

--薄め黒背景
entryFadeBg( spep_2 + 0, 0, 82, 0, 0, 0, 0, 160 );  --黒　背景

-- ** 音 ** --
playSe( spep_2 - 2, SE_07 );
playSe( spep_2 + 36, SE_06 );
playSe( spep_2 + 50, 9 );


--次の準備
spep_3 = spep_2 + 82;


------------------------------------------------------
-- 着弾(96F)
------------------------------------------------------


-- ** 流線 ** --
ryusen3 = entryEffectLife( spep_3 + 0, 920, 96, 0x80, -1, 0, 0, 0 );  --流線

setEffMoveKey( spep_3 + 0, ryusen3 , 0, 0 , 0 );
setEffMoveKey( spep_3 + 96, ryusen3 , 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, ryusen3 , 1.7, 1.7 );
setEffScaleKey( spep_3 + 96, ryusen3 , 1.7, 1.7 );

setEffRotateKey( spep_3 + 0, ryusen3 , 35 );
setEffRotateKey( spep_3 + 96, ryusen3 , 35 );

setEffAlphaKey( spep_3 + 0, ryusen3 , 255 );
setEffAlphaKey( spep_3 + 96, ryusen3 , 255 );



--アームヒット
hit = entryEffectLife( spep_3 + 0, SP_05, 96, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, hit, 0, 0 , 0 );
setEffMoveKey( spep_3 + 96, hit, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, hit, 1.0, 1.0 );
setEffScaleKey( spep_3 + 96, hit, 1.0, 1.0 );

setEffRotateKey( spep_3 + 0, hit, 0 );
setEffRotateKey( spep_3 + 96, hit, 0 );

setEffAlphaKey( spep_3 + 0, hit, 255 );
setEffAlphaKey( spep_3 + 96, hit, 255 );


--敵の動き（ガード）
setDisp( spep_3 + 0, 1, 1 );

changeAnime( spep_3 + 30, 1, 104 );

setMoveKey( spep_3 + 30, 1, 659.9, -429.5 , 0 );
setMoveKey( spep_3 + 46, 1, 0.2, -5.2 , 0 );

setScaleKey( spep_3 + 30, 1, 1.2, 1.2 );
setScaleKey( spep_3 + 46, 1, 1.2, 1.2 );

setRotateKey( spep_3 + 30, 1, 9.8 );
setRotateKey( spep_3 + 46, 1, 9.8 );



--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

SP_dodge = spep_3 + 38; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );

pauseAll( SP_dodge, 67 );

-- ** 敵キャラクター ** --
changeAnime( SP_dodge + 0, 1, 104 );  --ガード

setMoveKey( SP_dodge + 0, 1, 309.9, -229.5 , 0 );
setMoveKey( SP_dodge + 16, 1,300, -200.7 , 0 );


setScaleKey( SP_dodge + 0, 1, 1.6, 1.6 );
setScaleKey( SP_dodge + 16, 1, 1.6, 1.6 );

setRotateKey( SP_dodge + 0, 1, 9.8 );
setRotateKey( SP_dodge + 16, 1, 9.8 );

-- ** カットイン部分 ** --
speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350 );   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350 );   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

--薄め黒背景
entryFadeBg( SP_dodge - 42, 0, 52, 0, 0, 0, 0, 160 );  --黒　背景
entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );

endPhase( SP_dodge + 10 );

do return end
else end

--------------------------------------
--回避なし
--------------------------------------


--着弾
changeAnime( spep_3 + 47, 1, 106 );
changeAnime( spep_3 + 48, 1, 106 );

setShakeChara(spep_3 + 54,1,24,10)

setMoveKey( spep_3 + 47, 1, -20, 10.2 , 0 );
setMoveKey( spep_3 + 48, 1, -20, 10.2 , 0 );
setMoveKey( spep_3 + 50, 1, 0.2, -5.2 , 0 );
setMoveKey( spep_3 + 51, 1, 40, -40.7 , 0 );
setMoveKey( spep_3 + 52, 1, 40, -40.7 , 0 );
setMoveKey( spep_3 + 53, 1, -10.2, -8.2 , 0 );
setMoveKey( spep_3 + 54, 1, -10.2, -8.2 , 0 );
setMoveKey( spep_3 + 78, 1, 4.5, -10.4 , 0 );


setScaleKey( spep_3 + 47, 1, 1.2, 1.2 );
setScaleKey( spep_3 + 48, 1, 1.2, 1.2 );
setScaleKey( spep_3 + 78, 1, 1.2, 1.2 );


setRotateKey( spep_3 + 47, 1, -40 );
setRotateKey( spep_3 + 48, 1, -40 );
setRotateKey( spep_3 + 78, 1, -40 );


--吹き飛び
changeAnime( spep_3 + 79, 1, 108 );
changeAnime( spep_3 + 80, 1, 108 );


setMoveKey( spep_3 + 79, 1, 75.2, -35.2 , 0 );
setMoveKey( spep_3 + 80, 1, 85.2, -45.2 , 0 );
setMoveKey( spep_3 + 81, 1, 95.2, -60.2 , 0 );
setMoveKey( spep_3 + 82, 1, 95.2, -60.2 , 0 );
setMoveKey( spep_3 + 83, 1, 135.2, -80.2 , 0 );
setMoveKey( spep_3 + 84, 1, 135.2, -80.2 , 0 );
setMoveKey( spep_3 + 85, 1, 155.2, -100.2 , 0 );
setMoveKey( spep_3 + 86, 1, 155.2, -100.2 , 0 );
setMoveKey( spep_3 + 87, 1, 205.2, -140.2 , 0 );
setMoveKey( spep_3 + 88, 1, 205.2, -140.2 , 0 );
setMoveKey( spep_3 + 89, 1, 275.2, -200.2 , 0 );
setMoveKey( spep_3 + 90, 1, 275.2, -200.2 , 0 );
setMoveKey( spep_3 + 91, 1, 350.2, -265.2 , 0 );
setMoveKey( spep_3 + 92, 1, 350.2, -265.2 , 0 );
setMoveKey( spep_3 + 93, 1, 450.2, -325.2 , 0 );
setMoveKey( spep_3 + 94, 1, 450.2, -325.2 , 0 );
setMoveKey( spep_3 + 95, 1, 488.2, -331.2 , 0 );
setMoveKey( spep_3 + 96, 1, 488.2, -331.3 , 0 );

setScaleKey( spep_3 + 80, 1, 1.2, 1.2 );
setScaleKey( spep_3 + 96, 1, 1.2, 1.2 );

setRotateKey( spep_3 + 79, 1, 19.8 );
setRotateKey( spep_3 + 80, 1, 19.8 );
setRotateKey( spep_3 + 96, 1, 19.8 );

-- ** 書き文字エントリー ** --
ct_baki = entryEffectLife( spep_3 + 48,  10020, 38, 0x100, -1, 0, 3.9, 316.1 );  --バキ

setEffShake( spep_3 + 60, ct_baki, 25, 25 );

setEffMoveKey( spep_3 + 48, ct_baki , -40, 80 , 0 );
setEffMoveKey( spep_3 + 56, ct_baki , -90, 230 , 0 );
setEffMoveKey( spep_3 + 86, ct_baki , -90, 230 , 0 );


setEffScaleKey( spep_3 + 48, ct_baki , 0.6, 0.6 );
setEffScaleKey( spep_3 + 60, ct_baki , 2.2, 2.2 );
setEffScaleKey( spep_3 + 86, ct_baki , 2.2, 2.2 );

setEffRotateKey( spep_3 + 48, ct_baki , 0 );
setEffRotateKey( spep_3 + 86, ct_baki , 0 );

setEffAlphaKey( spep_3 + 48, ct_baki , 255 );
setEffAlphaKey( spep_3 + 80, ct_baki , 255 );
setEffAlphaKey( spep_3 + 86, ct_baki , 0 );


--薄め黒背景
entryFadeBg( spep_3 + 0, 0, 96, 0, 0, 0, 0, 100 );  --黒　背景

entryFade(spep_3+90, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255); --白フェード

-- ** 音 ** --
playSe( spep_3 + 46, SE_09 );

--次の準備
spep_4 = spep_3 + 96;
------------------------------------------------------
-- ダメージ表示(100F)
------------------------------------------------------

--敵手前吹っ飛び
setDisp( spep_4 + 0, 1, 1 );
changeAnime( spep_4 + 0, 1, 107);

setMoveKey( spep_4 + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_4 + 2, 1, 32.5, -4.9 , 0 );
setMoveKey( spep_4 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_4 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_4 + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_4 + 10, 1, 7.1, -92.9 , 0 );
setMoveKey( spep_4 + 12, 1, -1.9, -124.1 , 0 );
setMoveKey( spep_4 + 100, 1, -1.9, -124.1 , 0 );

setScaleKey( spep_4 + 0, 1, 0.22, 0.22 );
setScaleKey( spep_4 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_4 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_4 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_4 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_4 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_4 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 100, 1, 1.6, 1.6 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4 + 2, 1, 105 );
setRotateKey( spep_4 + 4, 1, 240 );
setRotateKey( spep_4 + 6, 1, 405 );
setRotateKey( spep_4 + 8, 1, 600 );
setRotateKey( spep_4 + 10, 1, 825 );
setRotateKey( spep_4 + 12, 1, 1080 );
setRotateKey( spep_4 + 100, 1, 1080 );

-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_4 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_4 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_4 + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_4 + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_4 + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_4 + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_4 + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_4 + 100, bakuhatsu, 0.9, 0.9 );

setEffRotateKey( spep_4 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_4 + 100, bakuhatsu, 0 );

setEffAlphaKey( spep_4 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_4 + 100, bakuhatsu, 255 );

-- ** ひび割れ ** --
hibiware = entryEffect( spep_4 + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_4 + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( spep_4 + 100, hibiware, 70, -60, 0 ); 

setEffScaleKey( spep_4 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_4 + 100, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_4 + 2, hibiware, 0 );
setEffRotateKey( spep_4 + 100, hibiware, 0 );

setEffAlphaKey( spep_4 + 2, hibiware, 0 );
setEffAlphaKey( spep_4 + 13, hibiware, 0 );
setEffAlphaKey( spep_4 + 14, hibiware, 255 );
setEffAlphaKey( spep_4 + 100, hibiware, 255 );

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_4 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_4 + 14, shuchusen3, 32, 25 );

setEffMoveKey( spep_4 + 14, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_4 + 46, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_4 + 14, shuchusen3, 1, 1 );
setEffScaleKey( spep_4 + 46, shuchusen3, 1, 1 );

setEffRotateKey( spep_4 + 14, shuchusen3, 0 );
setEffRotateKey( spep_4 + 46, shuchusen3, 0 );

setEffAlphaKey( spep_4 + 14, shuchusen3, 255 );
setEffAlphaKey( spep_4 + 28, shuchusen3, 255 );
setEffAlphaKey( spep_4 + 30, shuchusen3, 252 );
setEffAlphaKey( spep_4 + 32, shuchusen3, 242 );
setEffAlphaKey( spep_4 + 34, shuchusen3, 227 );
setEffAlphaKey( spep_4 + 36, shuchusen3, 205 );
setEffAlphaKey( spep_4 + 38, shuchusen3, 176 );
setEffAlphaKey( spep_4 + 40, shuchusen3, 142 );
setEffAlphaKey( spep_4 + 42, shuchusen3, 101 );
setEffAlphaKey( spep_4 + 44, shuchusen3, 54 );
setEffAlphaKey( spep_4 + 46, shuchusen3, 0 );

shuchusen4 = entryEffectLife( spep_4 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_4 + 14, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_4 + 14, shuchusen4, 1, 1 );
setEffScaleKey( spep_4 + 100, shuchusen4, 1, 1 );

setEffRotateKey( spep_4 + 14, shuchusen4, 0 );
setEffRotateKey( spep_4 + 100, shuchusen4, 0 );

setEffAlphaKey( spep_4 + 14, shuchusen4, 255 );
setEffAlphaKey( spep_4 + 100, shuchusen4, 255 );

-- ** 書き文字エントリー ** --
ct_ga = entryEffectLife( spep_4 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_4 + 14, ct_ga, 14, 20 );

setEffMoveKey( spep_4 + 14, ct_ga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 28, ct_ga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 100, ct_ga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_4 + 14, ct_ga, 3.2, 3.2 );
setEffScaleKey( spep_4 + 100, ct_ga, 3.2, 3.2 );

setEffRotateKey( spep_4 + 14, ct_ga, -10.9 );
setEffRotateKey( spep_4 + 15, ct_ga, -10.9 );
setEffRotateKey( spep_4 + 16, ct_ga, -14.9 );
setEffRotateKey( spep_4 + 17, ct_ga, -14.9 );
setEffRotateKey( spep_4 + 18, ct_ga, -10.9 );
setEffRotateKey( spep_4 + 19, ct_ga, -10.9 );
setEffRotateKey( spep_4 + 20, ct_ga, -14.9 );
setEffRotateKey( spep_4 + 21, ct_ga, -14.9 );
setEffRotateKey( spep_4 + 22, ct_ga, -10.9 );
setEffRotateKey( spep_4 + 23, ct_ga, -10.9 );
setEffRotateKey( spep_4 + 24, ct_ga, -14.9 );
setEffRotateKey( spep_4 + 25, ct_ga, -14.9 );
setEffRotateKey( spep_4 + 26, ct_ga, -10.9 );
setEffRotateKey( spep_4 + 27, ct_ga, -10.9 );
setEffRotateKey( spep_4 + 28, ct_ga, -14.9 );
setEffRotateKey( spep_4 + 100, ct_ga, -14.9 );

setEffAlphaKey( spep_4 + 14, ct_ga, 255 );
setEffAlphaKey( spep_4 + 100, ct_ga, 255 );

-- ** 音 ** --
playSe( spep_4 + 0, SE_10 );
playSe( spep_4 + 14, SE_11 );


-- ** ダメージ表示 ** --
dealDamage( spep_4 + 10 );
--entryFade( spep_4 + 92, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_4 + 100 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------

spep_0 = 0;


--待機
taiki = entryEffectLife( spep_0 + 0, SP_01, 20, 0x100, -1, 0, 0, 0 ); 

setEffMoveKey( spep_0 + 0, taiki, 0, 0 , 0 );
setEffMoveKey( spep_0 + 20, taiki, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, taiki, 1.0, 1.0 );
setEffScaleKey( spep_0 + 20, taiki, 1.0, 1.0 );

setEffRotateKey( spep_0 + 0, taiki, 0 );
setEffRotateKey( spep_0 + 20, taiki, 0 );

setEffAlphaKey( spep_0 + 0, taiki, 255 );
setEffAlphaKey( spep_0 + 20, taiki, 255 );

--気ダメ最初
tame = entryEffectLife( spep_0 + 20, SP_02, 22, 0x100, -1, 0, 0, 0 ); 

setEffMoveKey( spep_0 + 20, tame, 0, 0 , 0 );
setEffMoveKey( spep_0 + 42, tame, 0, 0 , 0 );

setEffScaleKey( spep_0 + 20, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 42, tame, 1.0, 1.0 );

setEffRotateKey( spep_0 + 20, tame, 0 );
setEffRotateKey( spep_0 + 42, tame, 0 );

setEffAlphaKey( spep_0 + 20, tame, 255 );
setEffAlphaKey( spep_0 + 42, tame, 255 );

--気ダメ途中
tame2 = entryEffect( spep_0 + 42, SP_03, 0x100, -1, 0, 0, 0 ); 

setEffMoveKey( spep_0 + 42, tame2, 0, 0 , 0 );
setEffMoveKey( spep_0 + 126, tame2, 0, 0 , 0 );

setEffScaleKey( spep_0 + 42, tame2, 1.0, 1.0 );
setEffScaleKey( spep_0 + 126, tame2, 1.0, 1.0 );

setEffRotateKey( spep_0 + 42, tame2, 0 );
setEffRotateKey( spep_0 + 126, tame2, 0 );

setEffAlphaKey( spep_0 + 42, tame2, 255 );
setEffAlphaKey( spep_0 + 126, tame2, 255 );


--文字エフェクト（ズズズズズン）
ct_zuzu = entryEffectLife( spep_0 + 20,  10013, 22, 0x100, -1, 0, 20.1, 249.8 );

setEffShake( spep_0 +28 , ct_zuzu, 14, 10);

setEffMoveKey( spep_0 + 20, ct_zuzu, 20.1, 249.8 , 0 );
setEffMoveKey( spep_0 + 22, ct_zuzu, 29.2, 317.4 , 0 );
setEffMoveKey( spep_0 + 24, ct_zuzu, 51.2, 394.7 , 0 );
setEffMoveKey( spep_0 + 26, ct_zuzu, 38.3, 377.6 , 0 );
setEffMoveKey( spep_0 + 28, ct_zuzu, 43.3, 371.9 , 0 );
setEffMoveKey( spep_0 + 42, ct_zuzu, 30.9, 354.4 , 0 );

setEffScaleKey( spep_0 + 20, ct_zuzu, 1.11, 1.11 );
setEffScaleKey( spep_0 + 22, ct_zuzu, 1.99, 1.99 );
setEffScaleKey( spep_0 + 24, ct_zuzu, 2.83, 2.83 );
setEffScaleKey( spep_0 + 26, ct_zuzu, 2.92, 2.92 );
setEffScaleKey( spep_0 + 42, ct_zuzu, 2.92, 2.92 );

setEffRotateKey( spep_0 + 20, ct_zuzu, -5 );
setEffRotateKey( spep_0 + 42, ct_zuzu, -5 );

setEffAlphaKey( spep_0 + 20, ct_zuzu, 255 );
setEffAlphaKey( spep_0 + 30, ct_zuzu, 255 );
setEffAlphaKey( spep_0 + 32, ct_zuzu, 212 );
setEffAlphaKey( spep_0 + 34, ct_zuzu, 170 );
setEffAlphaKey( spep_0 + 36, ct_zuzu, 128 );
setEffAlphaKey( spep_0 + 38, ct_zuzu, 85 );
setEffAlphaKey( spep_0 + 40, ct_zuzu, 43 );
setEffAlphaKey( spep_0 + 42, ct_zuzu, 0 );


-- ** 顔カットイン ** --
--speff = entryEffect( spep_0 + 42, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)   
--setEffReplaceTexture( speff, 3, 2 );        --カットイン差し替え  
--speff1 = entryEffect( spep_0 + 42, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)   
--setEffReplaceTexture( speff1, 4, 5 );        --セリフカットイン差し替え  

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_0 + 54,  190006, 72, 0x100, -1, 0, 100, 515.5 ); --ゴゴゴ
setEffShake( spep_0 + 54, ctgogo, 72, 10 );

setEffMoveKey( spep_0 + 54, ctgogo, 40, 512.8 , 0 );
setEffMoveKey( spep_0 + 126, ctgogo, 40, 515.5 , 0 );

setEffScaleKey( spep_0 + 54, ctgogo, -0.84, 0.84 );
setEffScaleKey( spep_0 + 118, ctgogo, -0.84, 0.84 );
setEffScaleKey( spep_0 + 120, ctgogo, -1.2, 1.2 );
setEffScaleKey( spep_0 + 122, ctgogo, -1.3, 1.3 );
setEffScaleKey( spep_0 + 124, ctgogo, -1.66, 1.66 );
setEffScaleKey( spep_0 + 126, ctgogo, -2.02, 2.02 );
 
setEffRotateKey( spep_0 + 54, ctgogo, 0 );
setEffRotateKey( spep_0 + 126, ctgogo, 0 );

setEffAlphaKey( spep_0 + 54, ctgogo, 0 );
setEffAlphaKey( spep_0 + 55, ctgogo, 255 );
setEffAlphaKey( spep_0 + 56, ctgogo, 255 );
setEffAlphaKey( spep_0 + 126, ctgogo, 255 );



entryFade(spep_0+42, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255); --薄めの白フェード
entryFade(spep_0+126, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255); --白フェード


-- ** 音 ** --
playSe( spep_0 + 20, SE_02 ); --気ため
playSe( spep_0 + 52, SE_04 ); --カットイン




spep_1 = spep_0 + 126;
--------------------------------------
--カードカットイン
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
ryusen  = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, ryusen , 90, 20 );

setEffMoveKey( spep_1 + 0, ryusen , 0, 0 , 0 );
setEffMoveKey( spep_1 + 90, ryusen , 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, ryusen , 1.6, 1.6 );
setEffScaleKey( spep_1 + 90, ryusen , 1.6, 1.6 );

setEffRotateKey( spep_1 + 0, ryusen , 0 );
setEffRotateKey( spep_1 + 90, ryusen , 0 );

setEffAlphaKey( spep_1 + 0, ryusen , 255 );
setEffAlphaKey( spep_1 + 90, ryusen , 255 );

-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );

-- ** エフェクト等 ** --
entryFade(spep_1+82,4,14,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_2 = spep_1 + 94;

------------------------------------------------------
-- 発射(82F)
------------------------------------------------------


--アーム発射
utu = entryEffectLife( spep_2 + 0, SP_04, 82, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, utu, 0, 0 , 0 );
setEffMoveKey( spep_2 + 82, utu, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, utu, 1.0, 1.0 );
setEffScaleKey( spep_2 + 82, utu, 1.0, 1.0 );

setEffRotateKey( spep_2 + 0, utu, 0 );
setEffRotateKey( spep_2 + 82, utu, 0 );

setEffAlphaKey( spep_2 + 0, utu, 255 );
setEffAlphaKey( spep_2 + 80, utu, 255 );
setEffAlphaKey( spep_2 + 81, utu, 255 );
setEffAlphaKey( spep_2 + 82, utu, 0 );


-- ** 集中線 ** --
ryusen2  = entryEffectLife( spep_2 + 36, 906, 14, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 38, ryusen2 , 10, 20 );

setEffMoveKey( spep_2 + 36, ryusen2 , 0, 0 , 0 );
setEffMoveKey( spep_2 + 52, ryusen2 , 0, 0 , 0 );

setEffScaleKey( spep_2 + 36, ryusen2 , 1.6, 1.6 );
setEffScaleKey( spep_2 + 52, ryusen2 , 1.6, 1.6 );

setEffRotateKey( spep_2 + 36, ryusen2 , 0 );
setEffRotateKey( spep_2 + 52, ryusen2 , 0 );

setEffAlphaKey( spep_2 + 36, ryusen2 , 0 );
setEffAlphaKey( spep_2 + 37, ryusen2 , 255 );
setEffAlphaKey( spep_2 + 38, ryusen2 , 255 );
setEffAlphaKey( spep_2 + 48, ryusen2 , 255 );
setEffAlphaKey( spep_2 + 52, ryusen2 , 0 );



-- ** 書き文字エントリー ** --
ctdon = entryEffectLife( spep_2 + 36,  10019, 44, 0x100, -1, 0, 100, 515.5 ); --ドン
setEffShake( spep_2 + 60, ctdon, 12, 10 );

setEffMoveKey( spep_2 + 36, ctdon, 50, 150 , 0 );
setEffMoveKey( spep_2 + 38, ctdon, 53.3, 180.7 , 0 );
setEffMoveKey( spep_2 + 40, ctdon, 66.3, 198.5 , 0 );
setEffMoveKey( spep_2 + 42, ctdon, 73.7, 240.8 , 0 );
setEffMoveKey( spep_2 + 44, ctdon, 80, 224.8 , 0 );
setEffMoveKey( spep_2 + 46, ctdon, 68.1, 242.1 , 0 );
setEffMoveKey( spep_2 + 48, ctdon, 84.7, 249.1 , 0 );
setEffMoveKey( spep_2 + 50, ctdon, 73.7, 241.2 , 0 );
setEffMoveKey( spep_2 + 52, ctdon, 85.5, 265.3 , 0 );
setEffMoveKey( spep_2 + 54, ctdon, 83, 255.4 , 0 );
setEffMoveKey( spep_2 + 56, ctdon, 81.6, 272.1 , 0 );
setEffMoveKey( spep_2 + 58, ctdon, 82.5, 267.1 , 0 );
setEffMoveKey( spep_2 + 60, ctdon, 110.5, 309.8 , 0 );
setEffMoveKey( spep_2 + 82, ctdon, 110.5, 309.8 , 0 );

setEffRotateKey( spep_2 + 36, ctdon, 45 );
setEffRotateKey( spep_2 + 82, ctdon, 45 );

setEffScaleKey( spep_2 + 36, ctdon, 0.1, 0.1 );
setEffScaleKey( spep_2 + 38, ctdon, 1.07, 1.07 );
setEffScaleKey( spep_2 + 40, ctdon, 2.03, 2.03 );
setEffScaleKey( spep_2 + 42, ctdon, 3, 3 );
setEffScaleKey( spep_2 + 44, ctdon, 3.01, 3.01 );
setEffScaleKey( spep_2 + 46, ctdon, 3.02, 3.02 );
setEffScaleKey( spep_2 + 82, ctdon, 3.18, 3.18 );


setEffAlphaKey( spep_2 + 36, ctdon, 255 );
setEffAlphaKey( spep_2 + 37, ctdon, 255 );
setEffAlphaKey( spep_2 + 38, ctdon, 255 );
setEffAlphaKey( spep_2 + 66, ctdon, 255 );
setEffAlphaKey( spep_2 + 82, ctdon, 0 );

--薄め黒背景
entryFadeBg( spep_2 + 0, 0, 82, 0, 0, 0, 0, 160 );  --黒　背景

-- ** 音 ** --
playSe( spep_2 - 2, SE_07 );
playSe( spep_2 + 36, SE_06 );
playSe( spep_2 + 50, 9 );

--次の準備
spep_3 = spep_2 + 82;


------------------------------------------------------
-- 着弾(96F)
------------------------------------------------------


-- ** 流線 ** --
ryusen3 = entryEffectLife( spep_3 + 0, 920, 96, 0x80, -1, 0, 0, 0 );  --流線

setEffMoveKey( spep_3 + 0, ryusen3 , 0, 0 , 0 );
setEffMoveKey( spep_3 + 96, ryusen3 , 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, ryusen3 , 1.7, 1.7 );
setEffScaleKey( spep_3 + 96, ryusen3 , 1.7, 1.7 );

setEffRotateKey( spep_3 + 0, ryusen3 , 35 );
setEffRotateKey( spep_3 + 96, ryusen3 , 35 );

setEffAlphaKey( spep_3 + 0, ryusen3 , 255 );
setEffAlphaKey( spep_3 + 96, ryusen3 , 255 );



--アームヒット
hit = entryEffectLife( spep_3 + 0, SP_05, 96, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, hit, 0, 0 , 0 );
setEffMoveKey( spep_3 + 96, hit, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, hit, 1.0, 1.0 );
setEffScaleKey( spep_3 + 96, hit, 1.0, 1.0 );

setEffRotateKey( spep_3 + 0, hit, 0 );
setEffRotateKey( spep_3 + 96, hit, 0 );

setEffAlphaKey( spep_3 + 0, hit, 255 );
setEffAlphaKey( spep_3 + 96, hit, 255 );


--敵の動き（ガード）
setDisp( spep_3 + 0, 1, 1 );

changeAnime( spep_3 + 30, 1, 104 );

setMoveKey( spep_3 + 30, 1, 659.9, -429.5 , 0 );
setMoveKey( spep_3 + 46, 1, 0.2, -5.2 , 0 );

setScaleKey( spep_3 + 30, 1, 1.2, 1.2 );
setScaleKey( spep_3 + 46, 1, 1.2, 1.2 );

setRotateKey( spep_3 + 30, 1, 9.8 );
setRotateKey( spep_3 + 46, 1, 9.8 );



--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

SP_dodge = spep_3 + 38; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );

pauseAll( SP_dodge, 67 );

-- ** 敵キャラクター ** --
changeAnime( SP_dodge + 0, 1, 104 );  --ガード

setMoveKey( SP_dodge + 0, 1, 309.9, -229.5 , 0 );
setMoveKey( SP_dodge + 16, 1,300, -200.7 , 0 );


setScaleKey( SP_dodge + 0, 1, 1.6, 1.6 );
setScaleKey( SP_dodge + 16, 1, 1.6, 1.6 );

setRotateKey( SP_dodge + 0, 1, 9.8 );
setRotateKey( SP_dodge + 16, 1, 9.8 );

-- ** カットイン部分 ** --
speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350 );   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350 );   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

--薄め黒背景
entryFadeBg( SP_dodge - 42, 0, 52, 0, 0, 0, 0, 160 );  --黒　背景
entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );

endPhase( SP_dodge + 10 );

do return end
else end

--------------------------------------
--回避なし
--------------------------------------


--着弾
changeAnime( spep_3 + 47, 1, 106 );
changeAnime( spep_3 + 48, 1, 106 );

setShakeChara(spep_3 + 54,1,24,10)

setMoveKey( spep_3 + 47, 1, -20, 10.2 , 0 );
setMoveKey( spep_3 + 48, 1, -20, 10.2 , 0 );
setMoveKey( spep_3 + 50, 1, 0.2, -5.2 , 0 );
setMoveKey( spep_3 + 51, 1, 40, -40.7 , 0 );
setMoveKey( spep_3 + 52, 1, 40, -40.7 , 0 );
setMoveKey( spep_3 + 53, 1, -10.2, -8.2 , 0 );
setMoveKey( spep_3 + 54, 1, -10.2, -8.2 , 0 );
setMoveKey( spep_3 + 78, 1, 4.5, -10.4 , 0 );


setScaleKey( spep_3 + 47, 1, 1.2, 1.2 );
setScaleKey( spep_3 + 48, 1, 1.2, 1.2 );
setScaleKey( spep_3 + 78, 1, 1.2, 1.2 );


setRotateKey( spep_3 + 47, 1, -40 );
setRotateKey( spep_3 + 48, 1, -40 );
setRotateKey( spep_3 + 78, 1, -40 );


--吹き飛び
changeAnime( spep_3 + 79, 1, 108 );
changeAnime( spep_3 + 80, 1, 108 );


setMoveKey( spep_3 + 79, 1, 75.2, -35.2 , 0 );
setMoveKey( spep_3 + 80, 1, 85.2, -45.2 , 0 );
setMoveKey( spep_3 + 81, 1, 95.2, -60.2 , 0 );
setMoveKey( spep_3 + 82, 1, 95.2, -60.2 , 0 );
setMoveKey( spep_3 + 83, 1, 135.2, -80.2 , 0 );
setMoveKey( spep_3 + 84, 1, 135.2, -80.2 , 0 );
setMoveKey( spep_3 + 85, 1, 155.2, -100.2 , 0 );
setMoveKey( spep_3 + 86, 1, 155.2, -100.2 , 0 );
setMoveKey( spep_3 + 87, 1, 205.2, -140.2 , 0 );
setMoveKey( spep_3 + 88, 1, 205.2, -140.2 , 0 );
setMoveKey( spep_3 + 89, 1, 275.2, -200.2 , 0 );
setMoveKey( spep_3 + 90, 1, 275.2, -200.2 , 0 );
setMoveKey( spep_3 + 91, 1, 350.2, -265.2 , 0 );
setMoveKey( spep_3 + 92, 1, 350.2, -265.2 , 0 );
setMoveKey( spep_3 + 93, 1, 450.2, -325.2 , 0 );
setMoveKey( spep_3 + 94, 1, 450.2, -325.2 , 0 );
setMoveKey( spep_3 + 95, 1, 488.2, -331.2 , 0 );
setMoveKey( spep_3 + 96, 1, 488.2, -331.3 , 0 );

setScaleKey( spep_3 + 80, 1, 1.2, 1.2 );
setScaleKey( spep_3 + 96, 1, 1.2, 1.2 );

setRotateKey( spep_3 + 79, 1, 19.8 );
setRotateKey( spep_3 + 80, 1, 19.8 );
setRotateKey( spep_3 + 96, 1, 19.8 );

-- ** 書き文字エントリー ** --
ct_baki = entryEffectLife( spep_3 + 48,  10020, 38, 0x100, -1, 0, 3.9, 316.1 );  --バキ

setEffShake( spep_3 + 60, ct_baki, 25, 25 );

setEffMoveKey( spep_3 + 48, ct_baki , -40, 80 , 0 );
setEffMoveKey( spep_3 + 56, ct_baki , -90, 230 , 0 );
setEffMoveKey( spep_3 + 86, ct_baki , -90, 230 , 0 );


setEffScaleKey( spep_3 + 48, ct_baki , 0.6, 0.6 );
setEffScaleKey( spep_3 + 60, ct_baki , 2.2, 2.2 );
setEffScaleKey( spep_3 + 86, ct_baki , 2.2, 2.2 );

setEffRotateKey( spep_3 + 48, ct_baki , 0 );
setEffRotateKey( spep_3 + 86, ct_baki , 0 );

setEffAlphaKey( spep_3 + 48, ct_baki , 255 );
setEffAlphaKey( spep_3 + 80, ct_baki , 255 );
setEffAlphaKey( spep_3 + 86, ct_baki , 0 );


--薄め黒背景
entryFadeBg( spep_3 + 0, 0, 96, 0, 0, 0, 0, 100 );  --黒　背景

entryFade(spep_3+90, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255); --白フェード

-- ** 音 ** --
playSe( spep_3 + 46, SE_09 );

--次の準備
spep_4 = spep_3 + 96;
------------------------------------------------------
-- ダメージ表示(100F)
------------------------------------------------------

--敵手前吹っ飛び
setDisp( spep_4 + 0, 1, 1 );
changeAnime( spep_4 + 0, 1, 107);

setMoveKey( spep_4 + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_4 + 2, 1, 32.5, -4.9 , 0 );
setMoveKey( spep_4 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_4 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_4 + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_4 + 10, 1, 7.1, -92.9 , 0 );
setMoveKey( spep_4 + 12, 1, -1.9, -124.1 , 0 );
setMoveKey( spep_4 + 100, 1, -1.9, -124.1 , 0 );

setScaleKey( spep_4 + 0, 1, 0.22, 0.22 );
setScaleKey( spep_4 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_4 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_4 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_4 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_4 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_4 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 100, 1, 1.6, 1.6 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4 + 2, 1, 105 );
setRotateKey( spep_4 + 4, 1, 240 );
setRotateKey( spep_4 + 6, 1, 405 );
setRotateKey( spep_4 + 8, 1, 600 );
setRotateKey( spep_4 + 10, 1, 825 );
setRotateKey( spep_4 + 12, 1, 1080 );
setRotateKey( spep_4 + 100, 1, 1080 );

-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_4 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_4 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_4 + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_4 + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_4 + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_4 + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_4 + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_4 + 100, bakuhatsu, 0.9, 0.9 );

setEffRotateKey( spep_4 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_4 + 100, bakuhatsu, 0 );

setEffAlphaKey( spep_4 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_4 + 100, bakuhatsu, 255 );

-- ** ひび割れ ** --
hibiware = entryEffect( spep_4 + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_4 + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( spep_4 + 100, hibiware, 70, -60, 0 ); 

setEffScaleKey( spep_4 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_4 + 100, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_4 + 2, hibiware, 0 );
setEffRotateKey( spep_4 + 100, hibiware, 0 );

setEffAlphaKey( spep_4 + 2, hibiware, 0 );
setEffAlphaKey( spep_4 + 13, hibiware, 0 );
setEffAlphaKey( spep_4 + 14, hibiware, 255 );
setEffAlphaKey( spep_4 + 100, hibiware, 255 );

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_4 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_4 + 14, shuchusen3, 32, 25 );

setEffMoveKey( spep_4 + 14, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_4 + 46, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_4 + 14, shuchusen3, 1, 1 );
setEffScaleKey( spep_4 + 46, shuchusen3, 1, 1 );

setEffRotateKey( spep_4 + 14, shuchusen3, 0 );
setEffRotateKey( spep_4 + 46, shuchusen3, 0 );

setEffAlphaKey( spep_4 + 14, shuchusen3, 255 );
setEffAlphaKey( spep_4 + 28, shuchusen3, 255 );
setEffAlphaKey( spep_4 + 30, shuchusen3, 252 );
setEffAlphaKey( spep_4 + 32, shuchusen3, 242 );
setEffAlphaKey( spep_4 + 34, shuchusen3, 227 );
setEffAlphaKey( spep_4 + 36, shuchusen3, 205 );
setEffAlphaKey( spep_4 + 38, shuchusen3, 176 );
setEffAlphaKey( spep_4 + 40, shuchusen3, 142 );
setEffAlphaKey( spep_4 + 42, shuchusen3, 101 );
setEffAlphaKey( spep_4 + 44, shuchusen3, 54 );
setEffAlphaKey( spep_4 + 46, shuchusen3, 0 );

shuchusen4 = entryEffectLife( spep_4 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_4 + 14, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_4 + 14, shuchusen4, 1, 1 );
setEffScaleKey( spep_4 + 100, shuchusen4, 1, 1 );

setEffRotateKey( spep_4 + 14, shuchusen4, 0 );
setEffRotateKey( spep_4 + 100, shuchusen4, 0 );

setEffAlphaKey( spep_4 + 14, shuchusen4, 255 );
setEffAlphaKey( spep_4 + 100, shuchusen4, 255 );

-- ** 書き文字エントリー ** --
ct_ga = entryEffectLife( spep_4 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_4 + 14, ct_ga, 14, 20 );

setEffMoveKey( spep_4 + 14, ct_ga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 28, ct_ga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 100, ct_ga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_4 + 14, ct_ga, 3.2, 3.2 );
setEffScaleKey( spep_4 + 100, ct_ga, 3.2, 3.2 );

setEffRotateKey( spep_4 + 14, ct_ga, -10.9 );
setEffRotateKey( spep_4 + 15, ct_ga, -10.9 );
setEffRotateKey( spep_4 + 16, ct_ga, -14.9 );
setEffRotateKey( spep_4 + 17, ct_ga, -14.9 );
setEffRotateKey( spep_4 + 18, ct_ga, -10.9 );
setEffRotateKey( spep_4 + 19, ct_ga, -10.9 );
setEffRotateKey( spep_4 + 20, ct_ga, -14.9 );
setEffRotateKey( spep_4 + 21, ct_ga, -14.9 );
setEffRotateKey( spep_4 + 22, ct_ga, -10.9 );
setEffRotateKey( spep_4 + 23, ct_ga, -10.9 );
setEffRotateKey( spep_4 + 24, ct_ga, -14.9 );
setEffRotateKey( spep_4 + 25, ct_ga, -14.9 );
setEffRotateKey( spep_4 + 26, ct_ga, -10.9 );
setEffRotateKey( spep_4 + 27, ct_ga, -10.9 );
setEffRotateKey( spep_4 + 28, ct_ga, -14.9 );
setEffRotateKey( spep_4 + 100, ct_ga, -14.9 );

setEffAlphaKey( spep_4 + 14, ct_ga, 255 );
setEffAlphaKey( spep_4 + 100, ct_ga, 255 );

-- ** 音 ** --
playSe( spep_4 + 0, SE_10 );
playSe( spep_4 + 14, SE_11 );


-- ** ダメージ表示 ** --
dealDamage( spep_4 + 10 );
--entryFade( spep_4 + 92, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_4 + 100 );

end
