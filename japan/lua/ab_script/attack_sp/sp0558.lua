--サイボーグ桃白白_スーパーどどん波
--1005710:サイボーグ桃白白_スーパーどどん波と1008870:トランクス_魔閃光の合成

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
SP_01 = 100081; --溜め
SP_02 = 100333; --発射
SP_03 = 100083; --ヒット

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

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
-- アイドリングから気を放つまで
------------------------------------------------------
spep_0=0;

--味方キャラの動き
setDisp( spep_0, 0, 1);
changeAnime( spep_0, 0, 0);
changeAnime(  spep_0+30, 0, 17);

setShakeChara( 30, 0, 20, 5);

setMoveKey(   spep_0,   0,    0, -54,   0);
setMoveKey(   spep_0+1,   0,    0, -54,   0);
setMoveKey(   spep_0+2,   0,    0, -54,   0);
setMoveKey(   spep_0+3,   0,    0, -54,   0);
setMoveKey(   spep_0+4,   0,    0, -54,   0);
setMoveKey(   spep_0+5,   0,    0, -54,   0);
setMoveKey(   spep_0+6,   0,    0, -54,   0);
setMoveKey(   spep_0+70,   0,    0, -54,   0);

setScaleKey(   spep_0,   0, 1.5, 1.5);
setScaleKey(   spep_0+1,   0, 1.5, 1.5);
setScaleKey(   spep_0+2,   0, 1.5, 1.5);
setScaleKey(   spep_0+3,   0, 1.5, 1.5);
setScaleKey(   spep_0+4,   0, 1.5, 1.5);
setScaleKey(   spep_0+5,   0, 1.5, 1.5);
setScaleKey(   spep_0+6,   0, 1.5, 1.5);
setScaleKey(   spep_0+70,   0, 1.5, 1.5);

setRotateKey( spep_0,   0,  0 );
setRotateKey( spep_0+1,   0,  0 );
setRotateKey( spep_0+2,   0,  0 );
setRotateKey( spep_0+3,   0,  0 );
setRotateKey( spep_0+4,   0,  0 );
setRotateKey( spep_0+5,   0,  0 );
setRotateKey( spep_0+6,   0,  0 );
setRotateKey( spep_0+70,   0,  0 );

--気を放つ(前)
ki_f=entryEffect(  spep_0+30,   1500,   0x100,    -1,  0,  0,  0);    -- eff_001

setEffMoveKey( spep_0 + 30, ki_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 70, ki_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 30, ki_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 70, ki_f, 1.0, 1.0 );
setEffAlphaKey( spep_0 + 30, ki_f, 255 );
setEffAlphaKey( spep_0 + 70, ki_f, 255 );
setEffRotateKey( spep_0 + 30, ki_f, 0 );
setEffRotateKey( spep_0 + 70, ki_f, 0 );

--気を放つ(後)
ki_b=entryEffect(  spep_0+30,   1501,   0x80, -1,  0,  0,  0);    -- eff_002

setEffMoveKey( spep_0 + 30, ki_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 70, ki_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 30, ki_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 70, ki_b, 1.0, 1.0 );
setEffAlphaKey( spep_0 + 30, ki_b, 255 );
setEffAlphaKey( spep_0 + 70, ki_b, 255 );
setEffRotateKey( spep_0 + 30, ki_b, 0 );
setEffRotateKey( spep_0 + 70, ki_b, 0 );

-- ** エフェクト等 ** --
aura = entryEffectLife(  spep_0+30,   311, 40, 0x40,  0,  1,  0,  0); -- オーラ

setEffMoveKey( spep_0 + 30, aura, 0, 0 , 0 );
setEffMoveKey( spep_0 + 70, aura, 0, 0 , 0 );
setEffScaleKey( spep_0 + 30, aura, 1.5, 1.5 );
setEffScaleKey( spep_0 + 70, aura, 1.5, 1.5 );
setEffAlphaKey( spep_0 + 30, aura, 255 );
setEffAlphaKey( spep_0 + 70, aura, 255 );
setEffRotateKey( spep_0 + 30, aura, 0 );
setEffRotateKey( spep_0 + 70, aura, 0 );

-- 書き文字エントリー
ctzuzun = entryEffectLife( spep_0 + 30, 10013, 40, 0, -1, 0, 0, 200); -- ズズンッ
setEffShake(spep_0 + 30, ctzuzun, 40, 7);

setEffAlphaKey(spep_0 + 30, ctzuzun, 255);
setEffAlphaKey(spep_0 + 50, ctzuzun, 255);
setEffAlphaKey(spep_0 + 70, ctzuzun, 0);
setEffScaleKey( spep_0 + 30, ctzuzun, 0.1, 0.1);
setEffScaleKey( spep_0 + 40, ctzuzun, 2.0, 2.0);
setEffScaleKey( spep_0 + 70, ctzuzun, 2.0, 2.0);
setEffRotateKey( spep_0 + 30, ctzuzun, 0 );
setEffRotateKey( spep_0 + 70, ctzuzun, 0 );

--SE
playSe( spep_0 + 30, SE_05);

--白フェード
entryFade( spep_0+62, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_1=spep_0+70;
------------------------------------------------------
-- 気溜め
------------------------------------------------------
--味方キャラの動き
setDisp( spep_1+100, 0, 0);

changeAnime( spep_1, 0, 30);

setShakeChara( spep_1, 0, 100, 10);

setMoveKey(   spep_1,   0,    0, -54,   0);
setMoveKey(   spep_1+100,   0,    0, -54,   0);

setScaleKey(   spep_1,   0, 1.5, 1.5);
setScaleKey(   spep_1+100,   0, 1.5, 1.5);

setRotateKey( spep_1,   0,  0 );
setRotateKey( spep_1+100,   0,  0 );

--気(前)
ki2_f=entryEffect(  spep_1,   1502,   0x100,     -1,  0,  0,  0);   -- eff_003 (気)

setEffMoveKey( spep_1 , ki2_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 100, ki2_f, 0, 0 , 0 );
setEffScaleKey( spep_1 , ki2_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 100, ki2_f, 1.0, 1.0 );
setEffAlphaKey( spep_1 , ki2_f, 255 );
setEffAlphaKey( spep_1 + 100, ki2_f, 255 );
setEffRotateKey( spep_1 , ki2_f, 0 );
setEffRotateKey( spep_1 + 100, ki2_f, 0 );

--気(後)
ki2_b=entryEffect(  spep_1,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)

setEffMoveKey( spep_1 , ki2_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 100, ki2_b, 0, 0 , 0 );
setEffScaleKey( spep_1 , ki2_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 100, ki2_b, 1.0, 1.0 );
setEffAlphaKey( spep_1 , ki2_b, 255 );
setEffAlphaKey( spep_1 + 100, ki2_b, 255 );
setEffRotateKey( spep_1 , ki2_b, 0 );
setEffRotateKey( spep_1 + 100, ki2_b, 0 );

-- ** エフェクト等 ** --
aura1 = entryEffectLife(spep_1,   311, 100, 0x40+0x80,  0,  1,  0,  0); -- オーラ

setEffMoveKey( spep_1 , aura1, 0, 0 , 0 );
setEffMoveKey( spep_1 + 100, aura1, 0, 0 , 0 );
setEffScaleKey( spep_1 , aura1, 1.5, 1.5 );
setEffScaleKey( spep_1 + 100, aura1, 1.5, 1.5 );
setEffAlphaKey( spep_1 , aura1, 255 );
setEffAlphaKey( spep_1 + 100, aura1, 255 );
setEffRotateKey( spep_1 , aura1, 0 );
setEffRotateKey( spep_1 + 100, aura1, 0 );

--気弾(手の先にあるやつ)
tao_hand = entryEffect( spep_1, SP_01, 0x40,      0,  300,  0,  0);   -- 手のカメハメ波部

setEffMoveKey( spep_1 , tao_hand, 0, 0 , 0 );
setEffMoveKey( spep_1 + 100, tao_hand, 0, 0 , 0 );
setEffScaleKey( spep_1 , tao_hand, 0.5, 0.5 );
setEffScaleKey( spep_1 + 100, tao_hand, 0.5, 0.5 );
setEffAlphaKey( spep_1 , tao_hand, 255 );
setEffAlphaKey( spep_1 + 100, tao_hand, 255 );
setEffAlphaKey( spep_1 + 101, tao_hand, 0 );
setEffAlphaKey( spep_1 + 102, tao_hand, 0 );
setEffRotateKey( spep_1 , tao_hand, 0 );
setEffRotateKey( spep_1 + 100, tao_hand, 0 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_1 -10+16, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_1 -10+16, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え


-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_1 -10 + 28,  190006, 72, 0x100, -1, 0, -109.9, 515.5 ); --ゴゴゴ
setEffShake( spep_1 -10 + 28, ctgogo, 72, 10 );
 
setEffMoveKey( spep_1 -10 + 28, ctgogo, -109.9, 512.8 , 0 );
setEffMoveKey( spep_1 -10 + 100, ctgogo, -109.9, 515.5 , 0 );

setEffScaleKey( spep_1 -10 + 28, ctgogo, 0.84, 0.84 );
setEffScaleKey( spep_1 -10 + 92, ctgogo, 0.84, 0.84 );
setEffScaleKey( spep_1 -10 + 94, ctgogo, 1.2, 1.2 );
setEffScaleKey( spep_1 -10 + 96, ctgogo, 1.3, 1.3 );
setEffScaleKey( spep_1 -10 + 98, ctgogo, 1.66, 1.66 );
setEffScaleKey( spep_1 -10 + 100, ctgogo, 2.02, 2.02 );
 
setEffRotateKey( spep_1 -10 + 28, ctgogo, 0 );
setEffRotateKey( spep_1 -10 + 100, ctgogo, 0 );

setEffAlphaKey( spep_1 -10 + 28, ctgogo, 0 );
setEffAlphaKey( spep_1 -10 + 29, ctgogo, 255 );
setEffAlphaKey( spep_1 -10 + 30, ctgogo, 255 );
setEffAlphaKey( spep_1 -10 + 100, ctgogo, 255 );

--SE
playSe( spep_1+4, SE_03);
playSe( spep_1 + 28, SE_04 );  --ゴゴゴ

--白フェード
entryFade( spep_1+90, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_2=spep_1+100;

--------------------------------------
--カードカットイン
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_2 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_2 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen2, 90, 20 );

setEffMoveKey( spep_2 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen2, 1.6, 1.6 );
setEffScaleKey( spep_2 + 90, shuchusen2, 1.6, 1.6 );

setEffRotateKey( spep_2 + 0, shuchusen2, 0 );
setEffRotateKey( spep_2 + 90, shuchusen2, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 90, shuchusen2, 255 );

-- ** 音 ** --
playSe( spep_2 + 0, SE_05 );

-- ** エフェクト等 ** --
entryFade(spep_2+82,4,14,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_3 = spep_2 + 94;

------------------------------------------------------
-- 発射シーン
------------------------------------------------------
--味方キャラの動き
setDisp( spep_3, 0, 1);
changeAnime( spep_3, 0, 31);
setShakeChara( spep_3, 0, 54, 25);

setMoveKey(  spep_3,    0,      0,  0,   0);
setMoveKey(  spep_3+10,    0,      0,  0,   0);
setMoveKey(  spep_3+30,    0,   -30,  0,   20);
setMoveKey(  spep_3+40,    0,   -150,  0,   50);
setMoveKey(  spep_3+46,    0,   -650,  0,   70);
setMoveKey(  spep_3+110,    0,   -650,  0,   70);

setScaleKey(   spep_3,   0, 0.9, 0.9);
setScaleKey(   spep_3+110,   0, 0.9, 0.9);

setRotateKey( spep_3,   0,  0 );
setRotateKey( spep_3+110,   0,  0 );

--発射
taohame_beam = entryEffect( spep_3, SP_02, 0x40,  0,  100, 0,  0); 

--setEffShake(spep_3 , taohame_beam, 54, 50);

setEffMoveKey( spep_3 , taohame_beam, 0, 0,  0 );
setEffMoveKey( spep_3 + 110, taohame_beam, 0, 0,  0 );
setEffScaleKey( spep_3 , taohame_beam, 0.4, 0.4 );
setEffScaleKey( spep_3 + 110, taohame_beam, 0.4, 0.4 );
setEffAlphaKey( spep_3 , taohame_beam, 255 );
setEffAlphaKey( spep_3 + 110, taohame_beam, 255 );
setEffAlphaKey( spep_3 + 111, taohame_beam, 0 );
setEffAlphaKey( spep_3 + 112, taohame_beam, 0 );
setEffRotateKey( spep_3 , taohame_beam, 0 );
setEffRotateKey( spep_3 + 110, taohame_beam, 0 );

--流線
ryusen1 = entryEffectLife( spep_3, 921, 110, 0x80,  -1,  0,  0,  0); -- 流線

setEffMoveKey( spep_3 , ryusen1, 0, 0,  0 );
setEffMoveKey( spep_3 + 110, ryusen1, 0, 0,  0 );
setEffScaleKey( spep_3 , ryusen1, 1.25, 1.25 );
setEffScaleKey( spep_3 + 110, ryusen1, 1.25, 1.25 );
setEffAlphaKey( spep_3 , ryusen1, 255 );
setEffAlphaKey( spep_3 + 110, ryusen1, 255 );
setEffRotateKey( spep_3 , ryusen1, 180 );
setEffRotateKey( spep_3 + 110, ryusen1, 180 );

--SE
playSe( spep_3, SE_07);

--黒背景
entryFadeBg( spep_3, 0, 110, 0, 10, 10, 10, 180);          -- ベース暗め　背景

--白フェード
entryFade( spep_3+102, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_4 = spep_3 + 110;

------------------------------------------------------
--当たる
------------------------------------------------------
--ビームが迫る
beam=entryEffectLife(spep_4,SP_03,100,0x100,-1,0,0,0);

setEffMoveKey(spep_4,beam,0,0,0);
setEffMoveKey(spep_4+100,beam,0,0,0);
setEffScaleKey(spep_4,beam,1.0,1.0);
setEffScaleKey(spep_4+72,beam,1.0,1.0);
setEffScaleKey(spep_4+82,beam,3.0,3.0);
setEffScaleKey(spep_4+100,beam,3.0,3.0);
setEffAlphaKey(spep_4,beam,255);
setEffAlphaKey(spep_4+100,beam,255);
setEffAlphaKey(spep_4+101,beam,0);
setEffAlphaKey(spep_4+102,beam,0);
setEffRotateKey(spep_4,beam,0);
setEffRotateKey(spep_4+100,beam,0);

--集中線
syuchusen1 = entryEffectLife( spep_3 + 0,  906, 48, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_3 + 0, syuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_3 + 48, syuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, syuchusen1, 1.5, 1.5 );
setEffScaleKey( spep_3 + 38, syuchusen1, 1.5, 1.5 );
setEffScaleKey( spep_3 + 40, syuchusen1, 1.54, 1.54 );
setEffScaleKey( spep_3 + 42, syuchusen1, 1.66, 1.66 );
setEffScaleKey( spep_3 + 44, syuchusen1, 1.86, 1.86 );
setEffScaleKey( spep_3 + 46, syuchusen1, 2.14, 2.14 );
setEffScaleKey( spep_3 + 48, syuchusen1, 2.5, 2.5 );

setEffRotateKey( spep_3 + 0, syuchusen1, 180 );
setEffRotateKey( spep_3 + 48, syuchusen1, 180 );

setEffAlphaKey( spep_3 + 0, syuchusen1, 255 );
setEffAlphaKey( spep_3 + 48, syuchusen1, 255 );


--流線（斜め）
ryusen2 = entryEffectLife( spep_4 + 0,  921, 100, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_4 + 0, ryusen2, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, ryusen2, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, ryusen2, 1, 1 );
setEffScaleKey( spep_4 + 100, ryusen2, 1, 1 );

setEffRotateKey( spep_4 + 0, ryusen2, 0 );
setEffRotateKey( spep_4 + 100, ryusen2, 0 );

setEffAlphaKey( spep_4 + 0, ryusen2, 255 );
setEffAlphaKey( spep_4 + 100, ryusen2, 255 );

--文字エントリー
ctzudododo = entryEffectLife( spep_4 + 0,  10014, 98, 0x100, -1, 0, 57.8, 363.4 );--ズドドド
setEffShake(spep_4 , ctzudododo, 98, 7);

setEffMoveKey( spep_4 + 0, ctzudododo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_4 + 2, ctzudododo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_4 + 4, ctzudododo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_4 + 6, ctzudododo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_4 + 8, ctzudododo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_4 + 10, ctzudododo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_4 + 12, ctzudododo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_4 + 14, ctzudododo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_4 + 16, ctzudododo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_4 + 18, ctzudododo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_4 + 20, ctzudododo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_4 + 22, ctzudododo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_4 + 24, ctzudododo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_4 + 26, ctzudododo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_4 + 28, ctzudododo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_4 + 30, ctzudododo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_4 + 32, ctzudododo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_4 + 34, ctzudododo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_4 + 36, ctzudododo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_4 + 38, ctzudododo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_4 + 40, ctzudododo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_4 + 42, ctzudododo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_4 + 44, ctzudododo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_4 + 46, ctzudododo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_4 + 48, ctzudododo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_4 + 50, ctzudododo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_4 + 52, ctzudododo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_4 + 54, ctzudododo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_4 + 56, ctzudododo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_4 + 58, ctzudododo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_4 + 60, ctzudododo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_4 + 62, ctzudododo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_4 + 64, ctzudododo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_4 + 66, ctzudododo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_4 + 68, ctzudododo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_4 + 70, ctzudododo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_4 + 72, ctzudododo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_4 + 74, ctzudododo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_4 + 76, ctzudododo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_4 + 78, ctzudododo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_4 + 80, ctzudododo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_4 + 82, ctzudododo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_4 + 84, ctzudododo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_4 + 86, ctzudododo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_4 + 88, ctzudododo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_4 + 90, ctzudododo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_4 + 92, ctzudododo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_4 + 94, ctzudododo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_4 + 96, ctzudododo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_4 + 98, ctzudododo, 33.8, 347.4 , 0 );

setEffScaleKey( spep_4 + 0, ctzudododo, 2.87, 3.72 );
setEffScaleKey( spep_4 + 98, ctzudododo, 2.87, 3.72 );

setEffRotateKey( spep_4 + 0, ctzudododo, 80.1 );
setEffRotateKey( spep_4 + 98, ctzudododo, 80.1 );

setEffAlphaKey( spep_4 + 0, ctzudododo, 255 );
setEffAlphaKey( spep_4 + 98, ctzudododo, 255 );


--敵の動き
setDisp( spep_4, 1, 1);
setDisp( spep_4+82, 1, 0);
changeAnime( spep_4, 1, 104);                        -- ガード
changeAnime( spep_4+72, 1, 108);

setShakeChara( spep_4, 1, 82, 20);

setMoveKey(  spep_4,    1,  235,  0,   0);
setMoveKey(  spep_4+16,    1,   180,  0,   0);
setMoveKey(  spep_4+72, 1,  180,    0,  0);
setMoveKey(  spep_4+82, 1,  250,    0,  128);


setScaleKey( spep_4,    1,  0.7, 0.7);
setScaleKey( spep_4+16,   1,   1.6,  1.6);
setScaleKey( spep_4+72,   1,   1.6,  1.6);
setScaleKey( spep_4+82,   1,   1.6,  1.6);

--黒背景
entryFadeBg(spep_4, 0, 100, 0, 0, 0, 0, 180);  -- 黒　背景


--SE
SE0=playSe(spep_4,53);--のびる発射
SE1=playSe(spep_4,SE_06);--のびる発射
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_4 + 50; --エンドフェイズのフレーム数を置き換える

    stopSe( SP_dodge - 12, SE0, 0 );
    stopSe( SP_dodge - 12, SE1, 0 );

    playSe( SP_dodge - 12, 1042 );
    
    pauseAll( SP_dodge, 67 );
    
    --[[
    -- ** 敵キャラクター ** --
    changeAnime( SP_dodge + 0, 1, 100 );  --待機正面向き
    
    setMoveKey( SP_dodge + 0, 1, 104, -6 , 0 );
    setMoveKey( SP_dodge + 2, 1, 84, 2.5 , 0 );
    setMoveKey( SP_dodge + 4, 1, 64, 11.1 , 0 );
    setMoveKey( SP_dodge + 6, 1, 44, 19.6 , 0 );
    setMoveKey( SP_dodge + 8, 1, 24, 28.1 , 0 );
    setMoveKey( SP_dodge + 10, 1, 13, 34.5 , 0 );
    
    setScaleKey( SP_dodge + 0, 1, 1.25, 1.25 );
    setScaleKey( SP_dodge + 2, 1, 1.31, 1.31 );
    setScaleKey( SP_dodge + 4, 1, 1.36, 1.36 );
    setScaleKey( SP_dodge + 6, 1, 1.42, 1.42 );
    setScaleKey( SP_dodge + 8, 1, 1.48, 1.48 );
    setScaleKey( SP_dodge + 10, 1, 1.49, 1.49 );
    
    setRotateKey( SP_dodge + 0, 1, 0 );
    setRotateKey( SP_dodge + 10, 1, 0 );
    ]]
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

stopSe( spep_4+70, SE0, 20);

-- ** エフェクト等 ** --
entryFade(spep_4+92,4,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_5=spep_4+100;

------------------------------------------------------
-- ガッ--既存のものの流用
------------------------------------------------------


--***敵の動き***--
setDisp( spep_5 + 0, 1, 1 );
changeAnime( spep_5 + 0, 1, 107 );

setMoveKey( spep_5 + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_5 + 2, 1, 32.5, -4.9 , 0 );
setMoveKey( spep_5 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_5 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_5 + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_5 + 10, 1, 7.1, -92.9 , 0 );
setMoveKey( spep_5 + 12, 1, -1.9, -124.1 , 0 );
setMoveKey( spep_5 + 120, 1, -1.9, -124.1 , 0 );

setScaleKey( spep_5 + 0, 1, 0.22, 0.22 );
setScaleKey( spep_5 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_5 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_5 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_5 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_5 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_5 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 120, 1, 1.6, 1.6 );

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5 + 2, 1, 105 );
setRotateKey( spep_5 + 4, 1, 240 );
setRotateKey( spep_5 + 6, 1, 405 );
setRotateKey( spep_5 + 8, 1, 600 );
setRotateKey( spep_5 + 10, 1, 825 );
setRotateKey( spep_5 + 12, 1, 1080 );
setRotateKey( spep_5 + 120, 1, 1080 );

--爆発エフェクト
entryEffect( spep_5, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_5, SE_10);

setDamage( spep_5 +16, 1, 0);  -- ダメージ振動等
setShake(spep_5+8,6,15);
setShake(spep_5+14,15,10);

--書き文字--
ctGa = entryEffectLife( spep_5 + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );
setEffShake( spep_5 + 14, ctGa, 30, 10);

setEffMoveKey( spep_5 + 14, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 16, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_5 + 18, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 20, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_5 + 22, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 24, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_5 + 26, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 28, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_5 + 30, ctGa, 3.9, 316.1 , 0 );

setEffScaleKey( spep_5 + 14, ctGa, 2, 2 );
setEffScaleKey( spep_5+16, ctGa, 2.0, 2.0);
setEffScaleKey( spep_5+17, cGa, 2.6, 2.6);
setEffScaleKey( spep_5+18, ctGa, 4.0, 4.0);
setEffScaleKey( spep_5+19, ctGa, 2.6, 2.6);
setEffScaleKey( spep_5+20, ctGa, 3.8, 3.8);
setEffScaleKey( spep_5+112, ctGa, 3.8, 3.8);

setEffRotateKey( spep_5 + 14, ctGa, -40 );
setEffRotateKey( spep_5 + 16, ctGa, -31 );
setEffRotateKey( spep_5 + 18, ctGa, -40 );
setEffRotateKey( spep_5 + 20, ctGa, -31 );
setEffRotateKey( spep_5 + 22, ctGa, -40 );
setEffRotateKey( spep_5 + 24, ctGa, -31);
setEffRotateKey( spep_5 + 26, ctGa, -40 );
setEffRotateKey( spep_5 + 28, ctGa, -31);
setEffRotateKey( spep_5 + 30, ctGa, -40 );

setEffAlphaKey( spep_5 + 14, ctGa, 255 );

--entryFadeBg( spep_5,  0,  120,  0,  21,  36,  51, 200);  -- ネイビー


--集中線（白）
shuchusen_g = entryEffectLife( spep_5+2, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線

--集中線（黒）
shuchusenkuro = entryEffectLife( spep_5+14, 1657, 120, 0x80,  -1, 0,  0,  0);   -- 集中線

--ひび割れ
hibi = entryEffect( spep_5+2, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ
playSe(  spep_5+2,  SE_11);  --ひび割れ


-- ダメージ表示
dealDamage(spep_5+16);
entryFade( spep_5+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase(spep_5 + 110);


else
------------------------------------------------------------------------------------------------------------
-- てき側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- アイドリングから気を放つまで
------------------------------------------------------
spep_0=0;

--味方キャラの動き
setDisp( spep_0, 0, 1);
changeAnime( spep_0, 0, 0);
changeAnime(  spep_0+30, 0, 17);

setShakeChara( 30, 0, 20, 5);

setMoveKey(   spep_0,   0,    0, -54,   0);
setMoveKey(   spep_0+1,   0,    0, -54,   0);
setMoveKey(   spep_0+2,   0,    0, -54,   0);
setMoveKey(   spep_0+3,   0,    0, -54,   0);
setMoveKey(   spep_0+4,   0,    0, -54,   0);
setMoveKey(   spep_0+5,   0,    0, -54,   0);
setMoveKey(   spep_0+6,   0,    0, -54,   0);
setMoveKey(   spep_0+70,   0,    0, -54,   0);

setScaleKey(   spep_0,   0, 1.5, 1.5);
setScaleKey(   spep_0+1,   0, 1.5, 1.5);
setScaleKey(   spep_0+2,   0, 1.5, 1.5);
setScaleKey(   spep_0+3,   0, 1.5, 1.5);
setScaleKey(   spep_0+4,   0, 1.5, 1.5);
setScaleKey(   spep_0+5,   0, 1.5, 1.5);
setScaleKey(   spep_0+6,   0, 1.5, 1.5);
setScaleKey(   spep_0+70,   0, 1.5, 1.5);

setRotateKey( spep_0,   0,  0 );
setRotateKey( spep_0+1,   0,  0 );
setRotateKey( spep_0+2,   0,  0 );
setRotateKey( spep_0+3,   0,  0 );
setRotateKey( spep_0+4,   0,  0 );
setRotateKey( spep_0+5,   0,  0 );
setRotateKey( spep_0+6,   0,  0 );
setRotateKey( spep_0+70,   0,  0 );

--気を放つ(前)
ki_f=entryEffect(  spep_0+30,   1500,   0x100,    -1,  0,  0,  0);    -- eff_001

setEffMoveKey( spep_0 + 30, ki_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 70, ki_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 30, ki_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 70, ki_f, 1.0, 1.0 );
setEffAlphaKey( spep_0 + 30, ki_f, 255 );
setEffAlphaKey( spep_0 + 70, ki_f, 255 );
setEffRotateKey( spep_0 + 30, ki_f, 0 );
setEffRotateKey( spep_0 + 70, ki_f, 0 );

--気を放つ(後)
ki_b=entryEffect(  spep_0+30,   1501,   0x80, -1,  0,  0,  0);    -- eff_002

setEffMoveKey( spep_0 + 30, ki_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 70, ki_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 30, ki_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 70, ki_b, 1.0, 1.0 );
setEffAlphaKey( spep_0 + 30, ki_b, 255 );
setEffAlphaKey( spep_0 + 70, ki_b, 255 );
setEffRotateKey( spep_0 + 30, ki_b, 0 );
setEffRotateKey( spep_0 + 70, ki_b, 0 );

-- ** エフェクト等 ** --
aura = entryEffectLife(  spep_0+30,   311, 40, 0x40,  0,  1,  0,  0); -- オーラ

setEffMoveKey( spep_0 + 30, aura, 0, 0 , 0 );
setEffMoveKey( spep_0 + 70, aura, 0, 0 , 0 );
setEffScaleKey( spep_0 + 30, aura, 1.5, 1.5 );
setEffScaleKey( spep_0 + 70, aura, 1.5, 1.5 );
setEffAlphaKey( spep_0 + 30, aura, 255 );
setEffAlphaKey( spep_0 + 70, aura, 255 );
setEffRotateKey( spep_0 + 30, aura, 0 );
setEffRotateKey( spep_0 + 70, aura, 0 );

-- 書き文字エントリー
ctzuzun = entryEffectLife( spep_0 + 30, 10013, 40, 0, -1, 0, 0, 200); -- ズズンッ
setEffShake(spep_0 + 30, ctzuzun, 40, 7);

setEffAlphaKey(spep_0 + 30, ctzuzun, 255);
setEffAlphaKey(spep_0 + 50, ctzuzun, 255);
setEffAlphaKey(spep_0 + 70, ctzuzun, 0);
setEffScaleKey( spep_0 + 30, ctzuzun, 0.1, 0.1);
setEffScaleKey( spep_0 + 40, ctzuzun, 2.0, 2.0);
setEffScaleKey( spep_0 + 70, ctzuzun, 2.0, 2.0);
setEffRotateKey( spep_0 + 30, ctzuzun, 0 );
setEffRotateKey( spep_0 + 70, ctzuzun, 0 );

--SE
playSe( spep_0 + 30, SE_05);

--白フェード
entryFade( spep_0+62, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_1=spep_0+70;
------------------------------------------------------
-- 気溜め
------------------------------------------------------
--味方キャラの動き
setDisp( spep_1+100, 0, 0);

changeAnime( spep_1, 0, 30);

setShakeChara( spep_1, 0, 100, 10);

setMoveKey(   spep_1,   0,    0, -54,   0);
setMoveKey(   spep_1+100,   0,    0, -54,   0);

setScaleKey(   spep_1,   0, 1.5, 1.5);
setScaleKey(   spep_1+100,   0, 1.5, 1.5);

setRotateKey( spep_1,   0,  0 );
setRotateKey( spep_1+100,   0,  0 );

--気(前)
ki2_f=entryEffect(  spep_1,   1502,   0x100,     -1,  0,  0,  0);   -- eff_003 (気)

setEffMoveKey( spep_1 , ki2_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 100, ki2_f, 0, 0 , 0 );
setEffScaleKey( spep_1 , ki2_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 100, ki2_f, 1.0, 1.0 );
setEffAlphaKey( spep_1 , ki2_f, 255 );
setEffAlphaKey( spep_1 + 100, ki2_f, 255 );
setEffRotateKey( spep_1 , ki2_f, 0 );
setEffRotateKey( spep_1 + 100, ki2_f, 0 );

--気(後)
ki2_b=entryEffect(  spep_1,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)

setEffMoveKey( spep_1 , ki2_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 100, ki2_b, 0, 0 , 0 );
setEffScaleKey( spep_1 , ki2_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 100, ki2_b, 1.0, 1.0 );
setEffAlphaKey( spep_1 , ki2_b, 255 );
setEffAlphaKey( spep_1 + 100, ki2_b, 255 );
setEffRotateKey( spep_1 , ki2_b, 0 );
setEffRotateKey( spep_1 + 100, ki2_b, 0 );

-- ** エフェクト等 ** --
aura1 = entryEffectLife(spep_1,   311, 100, 0x40+0x80,  0,  1,  0,  0); -- オーラ

setEffMoveKey( spep_1 , aura1, 0, 0 , 0 );
setEffMoveKey( spep_1 + 100, aura1, 0, 0 , 0 );
setEffScaleKey( spep_1 , aura1, 1.5, 1.5 );
setEffScaleKey( spep_1 + 100, aura1, 1.5, 1.5 );
setEffAlphaKey( spep_1 , aura1, 255 );
setEffAlphaKey( spep_1 + 100, aura1, 255 );
setEffRotateKey( spep_1 , aura1, 0 );
setEffRotateKey( spep_1 + 100, aura1, 0 );

--気弾(手の先にあるやつ)
tao_hand = entryEffect( spep_1, SP_01, 0x40,      0,  300,  0,  0);   -- 手のカメハメ波部

setEffMoveKey( spep_1 , tao_hand, 0, 0 , 0 );
setEffMoveKey( spep_1 + 100, tao_hand, 0, 0 , 0 );
setEffScaleKey( spep_1 , tao_hand, 0.5, 0.5 );
setEffScaleKey( spep_1 + 100, tao_hand, 0.5, 0.5 );
setEffAlphaKey( spep_1 , tao_hand, 255 );
setEffAlphaKey( spep_1 + 100, tao_hand, 255 );
setEffAlphaKey( spep_1 + 101, tao_hand, 0 );
setEffAlphaKey( spep_1 + 102, tao_hand, 0 );
setEffRotateKey( spep_1 , tao_hand, 0 );
setEffRotateKey( spep_1 + 100, tao_hand, 0 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_1 -10+16, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_1 -10+16, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え


-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_1 -10 + 28,  190006, 72, 0x100, -1, 0, -19.9, 515.5 ); --ゴゴゴ
setEffShake( spep_1 -10 + 28, ctgogo, 72, 10 );
 
setEffMoveKey( spep_1 -10 + 28, ctgogo, -19.9, 512.8 , 0 );
setEffMoveKey( spep_1 -10 + 100, ctgogo, -19.9, 515.5 , 0 );

setEffScaleKey( spep_1 -10 + 28, ctgogo, -0.84, 0.84 );
setEffScaleKey( spep_1 -10 + 92, ctgogo, -0.84, 0.84 );
setEffScaleKey( spep_1 -10 + 94, ctgogo, -1.2, 1.2 );
setEffScaleKey( spep_1 -10 + 96, ctgogo, -1.3, 1.3 );
setEffScaleKey( spep_1 -10 + 98, ctgogo, -1.66, 1.66 );
setEffScaleKey( spep_1 -10 + 100, ctgogo, -2.02, 2.02 );
 
setEffRotateKey( spep_1 -10 + 28, ctgogo, 0 );
setEffRotateKey( spep_1 -10 + 100, ctgogo, 0 );

setEffAlphaKey( spep_1 -10 + 28, ctgogo, 0 );
setEffAlphaKey( spep_1 -10 + 29, ctgogo, 255 );
setEffAlphaKey( spep_1 -10 + 30, ctgogo, 255 );
setEffAlphaKey( spep_1 -10 + 100, ctgogo, 255 );

--SE
playSe( spep_1+4, SE_03);
playSe( spep_1 + 28, SE_04 );  --ゴゴゴ

--白フェード
entryFade( spep_1+90, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_2=spep_1+100;

--------------------------------------
--カードカットイン
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_2 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_2 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen2, 90, 20 );

setEffMoveKey( spep_2 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen2, 1.6, 1.6 );
setEffScaleKey( spep_2 + 90, shuchusen2, 1.6, 1.6 );

setEffRotateKey( spep_2 + 0, shuchusen2, 0 );
setEffRotateKey( spep_2 + 90, shuchusen2, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 90, shuchusen2, 255 );

-- ** 音 ** --
playSe( spep_2 + 0, SE_05 );

-- ** エフェクト等 ** --
entryFade(spep_2+82,4,14,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_3 = spep_2 + 94;

------------------------------------------------------
-- 発射シーン
------------------------------------------------------
--味方キャラの動き
setDisp( spep_3, 0, 1);
changeAnime( spep_3, 0, 31);
setShakeChara( spep_3, 0, 54, 25);

setMoveKey(  spep_3,    0,      0,  0,   0);
setMoveKey(  spep_3+10,    0,      0,  0,   0);
setMoveKey(  spep_3+30,    0,   -30,  0,   20);
setMoveKey(  spep_3+40,    0,   -150,  0,   50);
setMoveKey(  spep_3+46,    0,   -650,  0,   70);
setMoveKey(  spep_3+110,    0,   -650,  0,   70);

setScaleKey(   spep_3,   0, 0.9, 0.9);
setScaleKey(   spep_3+110,   0, 0.9, 0.9);

setRotateKey( spep_3,   0,  0 );
setRotateKey( spep_3+110,   0,  0 );

--発射
taohame_beam = entryEffect( spep_3, SP_02, 0x40,  0,  200, 190,  0); 

--setEffShake(spep_3 , taohame_beam, 54, 50);

setEffMoveKey( spep_3 , taohame_beam, 200, 190,  0 );
setEffMoveKey( spep_3 + 10, taohame_beam, 200, 190,  0 );
setEffMoveKey( spep_3 + 30, taohame_beam, 170, 160,  20 );
setEffMoveKey( spep_3 + 40, taohame_beam, 140, 120,  50 );
setEffMoveKey( spep_3 + 46, taohame_beam, 50, 60,  70 );
setEffMoveKey( spep_3 + 110, taohame_beam, 50, 60,  70 );
setEffScaleKey( spep_3 , taohame_beam, 0.4, 0.4 );
setEffScaleKey( spep_3 + 110, taohame_beam, 0.4, 0.4 );
setEffAlphaKey( spep_3 , taohame_beam, 255 );
setEffAlphaKey( spep_3 + 110, taohame_beam, 255 );
setEffAlphaKey( spep_3 + 111, taohame_beam, 0 );
setEffAlphaKey( spep_3 + 112, taohame_beam, 0 );
setEffRotateKey( spep_3 , taohame_beam, 0 );
setEffRotateKey( spep_3 + 110, taohame_beam, 0 );

--流線
ryusen1 = entryEffectLife( spep_3, 921, 110, 0x80,  -1,  0,  0,  0); -- 流線

setEffMoveKey( spep_3 , ryusen1, 0, 0,  0 );
setEffMoveKey( spep_3 + 110, ryusen1, 0, 0,  0 );
setEffScaleKey( spep_3 , ryusen1, 1.25, 1.25 );
setEffScaleKey( spep_3 + 110, ryusen1, 1.25, 1.25 );
setEffAlphaKey( spep_3 , ryusen1, 255 );
setEffAlphaKey( spep_3 + 110, ryusen1, 255 );
setEffRotateKey( spep_3 , ryusen1, 180 );
setEffRotateKey( spep_3 + 110, ryusen1, 180 );

--SE
playSe( spep_3, SE_07);

--黒背景
entryFadeBg( spep_3, 0, 110, 0, 10, 10, 10, 180);          -- ベース暗め　背景

--白フェード
entryFade( spep_3+102, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_4 = spep_3 + 110;

------------------------------------------------------
--当たる
------------------------------------------------------
--ビームが迫る
beam=entryEffectLife(spep_4,SP_03,100,0x100,-1,0,0,0);

setEffMoveKey(spep_4,beam,0,0,0);
setEffMoveKey(spep_4+100,beam,0,0,0);
setEffScaleKey(spep_4,beam,1.0,1.0);
setEffScaleKey(spep_4+72,beam,1.0,1.0);
setEffScaleKey(spep_4+82,beam,3.0,3.0);
setEffScaleKey(spep_4+100,beam,3.0,3.0);
setEffAlphaKey(spep_4,beam,255);
setEffAlphaKey(spep_4+100,beam,255);
setEffAlphaKey(spep_4+101,beam,0);
setEffAlphaKey(spep_4+102,beam,0);
setEffRotateKey(spep_4,beam,0);
setEffRotateKey(spep_4+100,beam,0);

--集中線
syuchusen1 = entryEffectLife( spep_3 + 0,  906, 48, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_3 + 0, syuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_3 + 48, syuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, syuchusen1, 1.5, 1.5 );
setEffScaleKey( spep_3 + 38, syuchusen1, 1.5, 1.5 );
setEffScaleKey( spep_3 + 40, syuchusen1, 1.54, 1.54 );
setEffScaleKey( spep_3 + 42, syuchusen1, 1.66, 1.66 );
setEffScaleKey( spep_3 + 44, syuchusen1, 1.86, 1.86 );
setEffScaleKey( spep_3 + 46, syuchusen1, 2.14, 2.14 );
setEffScaleKey( spep_3 + 48, syuchusen1, 2.5, 2.5 );

setEffRotateKey( spep_3 + 0, syuchusen1, 180 );
setEffRotateKey( spep_3 + 48, syuchusen1, 180 );

setEffAlphaKey( spep_3 + 0, syuchusen1, 255 );
setEffAlphaKey( spep_3 + 48, syuchusen1, 255 );


--流線（斜め）
ryusen2 = entryEffectLife( spep_4 + 0,  921, 100, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_4 + 0, ryusen2, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, ryusen2, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, ryusen2, 1, 1 );
setEffScaleKey( spep_4 + 100, ryusen2, 1, 1 );

setEffRotateKey( spep_4 + 0, ryusen2, 0 );
setEffRotateKey( spep_4 + 100, ryusen2, 0 );

setEffAlphaKey( spep_4 + 0, ryusen2, 255 );
setEffAlphaKey( spep_4 + 100, ryusen2, 255 );

--文字エントリー
ctzudododo = entryEffectLife( spep_4 + 0,  10014, 98, 0x100, -1, 0, 57.8, 363.4 );--ズドドド
setEffShake(spep_4 , ctzudododo, 98, 7);

setEffMoveKey( spep_4 + 0, ctzudododo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_4 + 2, ctzudododo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_4 + 4, ctzudododo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_4 + 6, ctzudododo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_4 + 8, ctzudododo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_4 + 10, ctzudododo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_4 + 12, ctzudododo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_4 + 14, ctzudododo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_4 + 16, ctzudododo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_4 + 18, ctzudododo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_4 + 20, ctzudododo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_4 + 22, ctzudododo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_4 + 24, ctzudododo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_4 + 26, ctzudododo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_4 + 28, ctzudododo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_4 + 30, ctzudododo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_4 + 32, ctzudododo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_4 + 34, ctzudododo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_4 + 36, ctzudododo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_4 + 38, ctzudododo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_4 + 40, ctzudododo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_4 + 42, ctzudododo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_4 + 44, ctzudododo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_4 + 46, ctzudododo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_4 + 48, ctzudododo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_4 + 50, ctzudododo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_4 + 52, ctzudododo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_4 + 54, ctzudododo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_4 + 56, ctzudododo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_4 + 58, ctzudododo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_4 + 60, ctzudododo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_4 + 62, ctzudododo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_4 + 64, ctzudododo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_4 + 66, ctzudododo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_4 + 68, ctzudododo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_4 + 70, ctzudododo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_4 + 72, ctzudododo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_4 + 74, ctzudododo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_4 + 76, ctzudododo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_4 + 78, ctzudododo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_4 + 80, ctzudododo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_4 + 82, ctzudododo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_4 + 84, ctzudododo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_4 + 86, ctzudododo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_4 + 88, ctzudododo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_4 + 90, ctzudododo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_4 + 92, ctzudododo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_4 + 94, ctzudododo, 33.8, 347.4 , 0 );
setEffMoveKey( spep_4 + 96, ctzudododo, 57.8, 363.4 , 0 );
setEffMoveKey( spep_4 + 98, ctzudododo, 33.8, 347.4 , 0 );

setEffScaleKey( spep_4 + 0, ctzudododo, 2.87, 3.72 );
setEffScaleKey( spep_4 + 98, ctzudododo, 2.87, 3.72 );

setEffRotateKey( spep_4 + 0, ctzudododo, -10.1 );
setEffRotateKey( spep_4 + 98, ctzudododo, -10.1 );

setEffAlphaKey( spep_4 + 0, ctzudododo, 255 );
setEffAlphaKey( spep_4 + 98, ctzudododo, 255 );


--敵の動き
setDisp( spep_4, 1, 1);
setDisp( spep_4+82, 1, 0);
changeAnime( spep_4, 1, 104);                        -- ガード
changeAnime( spep_4+72, 1, 108);

setShakeChara( spep_4, 1, 82, 20);

setMoveKey(  spep_4,    1,  235,  0,   0);
setMoveKey(  spep_4+16,    1,   180,  0,   0);
setMoveKey(  spep_4+72, 1,  180,    0,  0);
setMoveKey(  spep_4+82, 1,  250,    0,  128);


setScaleKey( spep_4,    1,  0.7, 0.7);
setScaleKey( spep_4+16,   1,   1.6,  1.6);
setScaleKey( spep_4+72,   1,   1.6,  1.6);
setScaleKey( spep_4+82,   1,   1.6,  1.6);

--黒背景
entryFadeBg(spep_4, 0, 100, 0, 0, 0, 0, 180);  -- 黒　背景


--SE
SE0=playSe(spep_4,53);--のびる発射
SE1=playSe(spep_4,SE_06);--のびる発射

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_4 + 50; --エンドフェイズのフレーム数を置き換える

    stopSe( SP_dodge - 12, SE0, 0 );
    stopSe( SP_dodge - 12, SE1, 0 );

    playSe( SP_dodge - 12, 1042 );
    
    pauseAll( SP_dodge, 67 );
    
    --[[
    -- ** 敵キャラクター ** --
    changeAnime( SP_dodge + 0, 1, 100 );  --待機正面向き
    
    setMoveKey( SP_dodge + 0, 1, 104, -6 , 0 );
    setMoveKey( SP_dodge + 2, 1, 84, 2.5 , 0 );
    setMoveKey( SP_dodge + 4, 1, 64, 11.1 , 0 );
    setMoveKey( SP_dodge + 6, 1, 44, 19.6 , 0 );
    setMoveKey( SP_dodge + 8, 1, 24, 28.1 , 0 );
    setMoveKey( SP_dodge + 10, 1, 13, 34.5 , 0 );
    
    setScaleKey( SP_dodge + 0, 1, 1.25, 1.25 );
    setScaleKey( SP_dodge + 2, 1, 1.31, 1.31 );
    setScaleKey( SP_dodge + 4, 1, 1.36, 1.36 );
    setScaleKey( SP_dodge + 6, 1, 1.42, 1.42 );
    setScaleKey( SP_dodge + 8, 1, 1.48, 1.48 );
    setScaleKey( SP_dodge + 10, 1, 1.49, 1.49 );
    
    setRotateKey( SP_dodge + 0, 1, 0 );
    setRotateKey( SP_dodge + 10, 1, 0 );
    ]]
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


-- ** エフェクト等 ** --
entryFade(spep_4+92,4,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_5=spep_4+100;

------------------------------------------------------
-- ガッ--既存のものの流用
------------------------------------------------------


--***敵の動き***--
setDisp( spep_5 + 0, 1, 1 );
changeAnime( spep_5 + 0, 1, 107 );

setMoveKey( spep_5 + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_5 + 2, 1, 32.5, -4.9 , 0 );
setMoveKey( spep_5 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_5 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_5 + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_5 + 10, 1, 7.1, -92.9 , 0 );
setMoveKey( spep_5 + 12, 1, -1.9, -124.1 , 0 );
setMoveKey( spep_5 + 120, 1, -1.9, -124.1 , 0 );

setScaleKey( spep_5 + 0, 1, 0.22, 0.22 );
setScaleKey( spep_5 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_5 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_5 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_5 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_5 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_5 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 120, 1, 1.6, 1.6 );

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5 + 2, 1, 105 );
setRotateKey( spep_5 + 4, 1, 240 );
setRotateKey( spep_5 + 6, 1, 405 );
setRotateKey( spep_5 + 8, 1, 600 );
setRotateKey( spep_5 + 10, 1, 825 );
setRotateKey( spep_5 + 12, 1, 1080 );
setRotateKey( spep_5 + 120, 1, 1080 );

--爆発エフェクト
entryEffect( spep_5, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_5, SE_10);

setDamage( spep_5 +16, 1, 0);  -- ダメージ振動等
setShake(spep_5+8,6,15);
setShake(spep_5+14,15,10);

--書き文字--
ctGa = entryEffectLife( spep_5 + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );
setEffShake( spep_5 + 14, ctGa, 30, 10);

setEffMoveKey( spep_5 + 14, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 16, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_5 + 18, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 20, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_5 + 22, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 24, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_5 + 26, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 28, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_5 + 30, ctGa, 3.9, 316.1 , 0 );

setEffScaleKey( spep_5 + 14, ctGa, 2, 2 );
setEffScaleKey( spep_5+16, ctGa, 2.0, 2.0);
setEffScaleKey( spep_5+17, cGa, 2.6, 2.6);
setEffScaleKey( spep_5+18, ctGa, 4.0, 4.0);
setEffScaleKey( spep_5+19, ctGa, 2.6, 2.6);
setEffScaleKey( spep_5+20, ctGa, 3.8, 3.8);
setEffScaleKey( spep_5+112, ctGa, 3.8, 3.8);

setEffRotateKey( spep_5 + 14, ctGa, -40 );
setEffRotateKey( spep_5 + 16, ctGa, -31 );
setEffRotateKey( spep_5 + 18, ctGa, -40 );
setEffRotateKey( spep_5 + 20, ctGa, -31 );
setEffRotateKey( spep_5 + 22, ctGa, -40 );
setEffRotateKey( spep_5 + 24, ctGa, -31);
setEffRotateKey( spep_5 + 26, ctGa, -40 );
setEffRotateKey( spep_5 + 28, ctGa, -31);
setEffRotateKey( spep_5 + 30, ctGa, -40 );

setEffAlphaKey( spep_5 + 14, ctGa, 255 );

--entryFadeBg( spep_5,  0,  120,  0,  21,  36,  51, 200);  -- ネイビー


--集中線（白）
shuchusen_g = entryEffectLife( spep_5+2, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線

--集中線（黒）
shuchusenkuro = entryEffectLife( spep_5+14, 1657, 120, 0x80,  -1, 0,  0,  0);   -- 集中線

--ひび割れ
hibi = entryEffect( spep_5+2, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ
playSe(  spep_5+2,  SE_11);  --ひび割れ


-- ダメージ表示
dealDamage(spep_5+16);
entryFade( spep_5+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase(spep_5 + 110);


end