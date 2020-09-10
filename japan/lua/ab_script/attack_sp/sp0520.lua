--ルシフェル_ブラッドボンバー

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

--気弾エフェクト
SP_01 = 100045;  --玉生成
SP_02 = 100046;  --気弾投げる
SP_03 = 151295;  --気弾迫る

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
changeAnime( 0, 1, 100);
--setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

--[[setMoveKey(   0,   0,    0, -5000,   0);
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
]]

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
-- 玉生成(158F)
------------------------------------------------------
spep_0 = 0;

-- ** 味方キャラクター ** --
setDisp( spep_0 + 0, 0, 1 );
setDisp( spep_0 + 158, 0, 0 );
changeAnime( spep_0 + 0, 0, 0 );  --待機正面向き
changeAnime( spep_0 + 30, 0, 30 );  --必殺技モーション１

setMoveKey( spep_0 + 0, 0, 0, 0 );
setMoveKey( spep_0 + 1, 0, 0, 0 );
setMoveKey( spep_0 + 2, 0, 0, 0 );
setMoveKey( spep_0 + 3, 0, 0, 0 );
setMoveKey( spep_0 + 4, 0, 0, 0 );
setMoveKey( spep_0 + 5, 0, 0, 0 );
setMoveKey( spep_0 + 6, 0, 0, 0 );
setMoveKey( spep_0 + 158, 0, 0, 0 );

setScaleKey( spep_0 + 0, 0, 1.6, 1.6 );
setScaleKey( spep_0 + 1, 0, 1.6, 1.6 );
setScaleKey( spep_0 + 2, 0, 1.6, 1.6 );
setScaleKey( spep_0 + 3, 0, 1.6, 1.6 );
setScaleKey( spep_0 + 4, 0, 1.6, 1.6 );
setScaleKey( spep_0 + 5, 0, 1.6, 1.6 );
setScaleKey( spep_0 + 6, 0, 1.6, 1.6 );
setScaleKey( spep_0 + 158, 0, 1.6, 1.6 );

setRotateKey( spep_0 + 0, 0, 0 );
setRotateKey( spep_0 + 1, 0, 0 );
setRotateKey( spep_0 + 2, 0, 0 );
setRotateKey( spep_0 + 3, 0, 0 );
setRotateKey( spep_0 + 4, 0, 0 );
setRotateKey( spep_0 + 5, 0, 0 );
setRotateKey( spep_0 + 6, 0, 0 );
setRotateKey( spep_0 + 158, 0, 0 );

-- ** エフェクト等 ** --
tame = entryEffectLife( spep_0 + 40, SP_01, 118, 0x100, -1, 0, 200, 80 );  --玉生成
setEffMoveKey( spep_0 + 40, tame, 200, 80 );
setEffMoveKey( spep_0 + 158, tame, 200, 80 );

setEffScaleKey( spep_0 + 40, tame, 0.5, 0.5 );
setEffScaleKey( spep_0 + 158, tame, 0.5, 0.5 );

setEffRotateKey( spep_0 + 40, tame, 0 );
setEffRotateKey( spep_0 + 158, tame, 0 );

setEffAlphaKey( spep_0 + 40, tame, 255 );
setEffAlphaKey( spep_0 + 158, tame, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 40,  906, 118, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 40, shuchusen1, 118, 25 );

setEffMoveKey( spep_0 + 40, shuchusen1, 0, 0 );
setEffMoveKey( spep_0 + 158, shuchusen1, 0, 0 );

setEffScaleKey( spep_0 + 40, shuchusen1, 1.6, 1.6 );
setEffScaleKey( spep_0 + 158, shuchusen1, 1.6, 1.6 );

setEffRotateKey( spep_0 + 40, shuchusen1, 0 );
setEffRotateKey( spep_0 + 158, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 40, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 158, shuchusen1, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 30, 0, 128, 0, 0, 0, 0, 180 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_0 + 140, 18, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
playSe( spep_0 + 40, 1018 );  --玉発生

-- ** 次の準備 ** --
spep_1 = spep_0 + 158;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen2, 90, 20 );

setEffMoveKey( spep_1 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_1 + 90, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen2, 1.6, 1.6 );
setEffScaleKey( spep_1 + 90, shuchusen2, 1.6, 1.6 );

setEffRotateKey( spep_1 + 0, shuchusen2, 0 );
setEffRotateKey( spep_1 + 90, shuchusen2, 0 );

setEffAlphaKey( spep_1 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_1 + 90, shuchusen2, 255 );

-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );

-- ** 次の準備 ** --
entryFade( spep_1 + 82, 6, 8, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
spep_2 = spep_1 + 94;

------------------------------------------------------
-- 玉投げる(118F)
------------------------------------------------------

-- ** 味方キャラクター ** --
setDisp( spep_2 + 0, 0, 1 );
setDisp( spep_2 + 118, 0, 0 );
changeAnime( spep_2 + 0, 0, 30 );  --必殺技モーション１
setShakeChara( spep_2 + 64, 0, 54, 50);

setMoveKey( spep_2 + 0, 0, -100, 0 );
setMoveKey( spep_2 + 10, 0, -100, 0 );
setMoveKey( spep_2 + 14, 0, -300, 0 );
setMoveKey( spep_2 + 30, 0, -700, 0 );
setMoveKey( spep_2 + 50, 0, -1100, 0 );
setMoveKey( spep_2 + 118, 0, -1100, 0 );

setScaleKey( spep_2 + 0, 0, 1.6, 1.6 );
setScaleKey( spep_2 + 118, 0, 1.6, 1.6 );

setRotateKey( spep_2 + 0, 0, 0 );
setRotateKey( spep_2 + 118, 0, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_2 - 38, 1, 1 );
setDisp( spep_2 + 116, 1, 0 );
changeAnime( spep_2 - 38, 1, 100 );  --待機
setShakeChara( spep_2 + 30, 1, 86, 50);

setMoveKey( spep_2 - 38, 1, -1300, 0 );
setMoveKey( spep_2 + 0, 1, -1300, 0 );
setMoveKey( spep_2 + 40, 1, -1000, 0 );
setMoveKey( spep_2 + 42, 1, -1100, 0 );
setMoveKey( spep_2 + 116, 1, -1100, 0 );

setScaleKey( spep_2 - 38, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 116, 1, 1.6, 1.6 );

setRotateKey( spep_2 - 38, 1, 0 );
setRotateKey( spep_2 + 116, 1, 0 );

-- ** エフェクト等 ** --
tamanage = entryEffectLife( spep_2 + 0, SP_02, 116, 0x40, 1, 300, 50, -10 );  --玉投げる
setEffMoveKey( spep_2 + 0, tamanage, 50, -10 );
setEffMoveKey( spep_2 + 20, tamanage, 50, -10 );
setEffMoveKey( spep_2 + 25, tamanage, 50, -50 );
setEffMoveKey( spep_2 + 30, tamanage, 30, -170 );  --飛んでくところ
setEffMoveKey( spep_2 + 116, tamanage, 50, -170 );

setEffScaleKey( spep_2 + 0, tamanage, 1.0, 1.0 );
setEffScaleKey( spep_2 + 116, tamanage, 1.0, 1.0 );

setEffRotateKey( spep_2 + 0, tamanage, 28 );
setEffRotateKey( spep_2 + 26, tamanage, 20 );
setEffRotateKey( spep_2 + 28, tamanage, 16 );
setEffRotateKey( spep_2 + 30, tamanage, 0 );  --飛んでくところ
setEffRotateKey( spep_2 + 116, tamanage, 0 );

setEffAlphaKey( spep_2 + 0, tamanage, 0 );
setEffAlphaKey( spep_2 + 40, tamanage, 0 );
setEffAlphaKey( spep_2 + 42, tamanage, 255 );
setEffAlphaKey( spep_2 + 116, tamanage, 255 );

tamanage1 = entryEffectLife( spep_2 - 38, SP_02, 78, 0x40, 1, 300, 550, -170 );  --玉投げる
setEffMoveKey( spep_2 - 38, tamanage1, 550, -170 );
setEffMoveKey( spep_2 + 0, tamanage1, 600, -170 );
setEffMoveKey( spep_2 + 20, tamanage1, 630, -170 );
setEffMoveKey( spep_2 + 30, tamanage1, 900, -170 );
setEffMoveKey( spep_2 + 40, tamanage1, 1000, -170 );

setEffScaleKey( spep_2 - 38, tamanage1, 1.0, 1.0 );
setEffScaleKey( spep_2 + 40, tamanage1, 1.0, 1.0 );

setEffRotateKey( spep_2 - 38, tamanage1, 0 );
setEffRotateKey( spep_2 + 40, tamanage1, 0 );

setEffAlphaKey( spep_2 - 38, tamanage1, 0 );
setEffAlphaKey( spep_2 + 0, tamanage1, 0 );
setEffAlphaKey( spep_2 + 2, tamanage1, 255 );
setEffAlphaKey( spep_2 + 40, tamanage1, 255 );

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_2 + 0,  906, 64, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen3, 64, 25 );

setEffMoveKey( spep_2 + 0, shuchusen3, 0, 0 );
setEffMoveKey( spep_2 + 64, shuchusen3, 0, 0 );

setEffScaleKey( spep_2 + 0, shuchusen3, 1.6, 1.6 );
setEffScaleKey( spep_2 + 64, shuchusen3, 1.6, 1.6 );

setEffRotateKey( spep_2 + 0, shuchusen3, 0 );
setEffRotateKey( spep_2 + 64, shuchusen3, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_2 + 64, shuchusen3, 255 );

-- ** 流線 ** --
ryusen1 = entryEffectLife( spep_2 + 0,  920, 118, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, ryusen1, 0, 0 );
setEffMoveKey( spep_2 + 118, ryusen1, 0, 0 );

setEffScaleKey( spep_2 + 0, ryusen1, 1, 1 );
setEffScaleKey( spep_2 + 118, ryusen1, 1, 1 );

setEffRotateKey( spep_2 + 0, ryusen1, 0 );
setEffRotateKey( spep_2 + 118, ryusen1, 0 );

setEffAlphaKey( spep_2 + 0, ryusen1, 255 );
setEffAlphaKey( spep_2 + 118, ryusen1, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 118, 0, 0, 0, 0, 180 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_2 + 108, 8, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
playSe( spep_2 + 10, 1021 );  --玉向かう音

-- ** 次の準備 ** --
spep_3 = spep_2 + 118;

------------------------------------------------------
-- 玉迫る(90F)
------------------------------------------------------

-- ** エフェクト等 ** --
tamasemaru = entryEffectLife(spep_3 + 0, SP_03, 90, 0x100, -1, 0, 0, 0 );  --玉迫る
setEffMoveKey( spep_3 + 0, tamasemaru, 0, 0 );
setEffMoveKey( spep_3 + 90, tamasemaru, 0, 0 );
setEffScaleKey( spep_3 + 0, tamasemaru, 1.0, 1.0 );
setEffScaleKey( spep_3 + 90, tamasemaru, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, tamasemaru, 0 );
setEffRotateKey( spep_3 + 90, tamasemaru, 0 );
setEffAlphaKey( spep_3 + 0, tamasemaru, 255 );
setEffAlphaKey( spep_3 + 90, tamasemaru, 255 );

-- ** 流線 ** --
ryusen2 = entryEffectLife( spep_3 + 0,  921, 90, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_3 + 0, ryusen2, 0, 0 );
setEffMoveKey( spep_3 + 90, ryusen2, 0, 0 );

setEffScaleKey( spep_3 + 0, ryusen2, 1.2, 1.2 );
setEffScaleKey( spep_3 + 90, ryusen2, 1.2, 1.2 );

setEffRotateKey( spep_3 + 0, ryusen2, 0 );
setEffRotateKey( spep_3 + 90, ryusen2, 0 );

setEffAlphaKey( spep_3 + 0, ryusen2, 255 );
setEffAlphaKey( spep_3 + 90, ryusen2, 255 );

-- ** 書き文字エントリー ** --
ctzudo = entryEffectLife( spep_3 + 0,  10014, 90, 0x100, -1, 0, 58.1, 358 );  --ズドドドッ
setEffShake( spep_3 + 0, ctzudo, 90, 20 );

setEffMoveKey( spep_3 + 0, ctzudo, 58.1, 358 );
setEffMoveKey( spep_3 + 90, ctzudo, 58.1, 358 );

setEffScaleKey( spep_3 + 0, ctzudo, 3, 3 );
setEffScaleKey( spep_3 + 90, ctzudo, 3, 3 );

setEffRotateKey( spep_3 + 0, ctzudo, 60 );
setEffRotateKey( spep_3 + 90, ctzudo, 60 );

setEffAlphaKey( spep_3 + 0, ctzudo, 255 );
setEffAlphaKey( spep_3 + 90, ctzudo, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
changeAnime( spep_3 + 0, 1, 104 );  -- ガード

setMoveKey( spep_3 + 0, 1, 300, 0 );
setMoveKey( spep_3 + 30, 1, 120, 0 );
setMoveKey( spep_3 + 32, 1, 120, 0 );

setScaleKey( spep_3 + 0, 1, 0.7, 0.7 );
setScaleKey( spep_3 + 30, 1, 1.6, 1.6);
setScaleKey( spep_3 + 32, 1,  1.6, 1.6);

setRotateKey( spep_3 + 0, 1, 0 ); 
setRotateKey( spep_3 + 32, 1, 0 ); 

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 90, 0, 0, 0, 0, 180 );  --薄い黒　背景

-- ** 音 ** --
SEzuo = playSeLife( spep_3 + 0, 1021 );  --玉向かう音

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_3 + 32;  --エンドフェイズのフレーム数を置き換える
stopSe( SP_dodge, SEzuo, 0 );  --音止める

playSe( SP_dodge - 12, 1042 );

pauseAll( SP_dodge, 67 );

-- ** 敵キャラクター ** --
changeAnime( SP_dodge + 0, 1, 104 );  --ガード

setMoveKey( SP_dodge + 0, 1, 120, 0 );
setMoveKey( SP_dodge + 10, 1, 120, 0 );

setScaleKey( SP_dodge + 0, 1, 1.6, 1.6);
setScaleKey( SP_dodge + 10, 1, 1.6, 1.6);

setRotateKey( SP_dodge + 0, 1, 0 );
setRotateKey( SP_dodge + 10, 1, 0 );

-- ** カットイン部分 ** --
speffx = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350 );   -- eff_005 (カットイン)
setEffReplaceTexture( speffx, 3, 6 );                           -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,  -1,  0,  0,  350 );   -- 回避の文字表示
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

-- ** 敵キャラクター ** --
setDisp( spep_3 + 88, 1, 0 );
changeAnime( spep_3 + 61, 1, 108 );  --ダメージ（吹き飛び）
changeAnime( spep_3 + 62, 1, 108 );

setMoveKey( spep_3 + 34, 1, 120, 0 );
setMoveKey( spep_3 + 62, 1, 120, 0 );
setMoveKey( spep_3 + 80, 1, 325, 0 );
setMoveKey( spep_3 + 88, 1, 350, 0 );

setScaleKey( spep_3 + 34, 1,  1.6, 1.6 );
setScaleKey( spep_3 + 52, 1,  1.6, 1.6 );
setScaleKey( spep_3 + 53, 1,  1.5, 1.5 );
setScaleKey( spep_3 + 54, 1,  1.5, 1.5 );
setScaleKey( spep_3 + 80, 1,  0.5, 0.5 );
setScaleKey( spep_3 + 88, 1,  0.5, 0.5 );

setRotateKey( spep_3 + 34, 1, 0 ); 
setRotateKey( spep_3 + 88, 1, 0 ); 

-- ** ホワイトフェード ** --
entryFade( spep_3 + 80, 6, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 90;

------------------------------------------------------
-- 敵吹っ飛びシーン(100F)
------------------------------------------------------

-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_4 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_4 + 0, bakuhatsu, 0, 0 );
setEffMoveKey( spep_4 + 100, bakuhatsu, 0, 0 );

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
setEffMoveKey( spep_4 + 2, hibiware, 70, -60 ); 
setEffMoveKey( spep_4 + 100, hibiware, 70, -60 ); 

setEffScaleKey( spep_4 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_4 + 100, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_4 + 2, hibiware, 0 );
setEffRotateKey( spep_4 + 100, hibiware, 0 );

setEffAlphaKey( spep_4 + 2, hibiware, 0 );
setEffAlphaKey( spep_4 + 13, hibiware, 0 );
setEffAlphaKey( spep_4 + 14, hibiware, 255 );
setEffAlphaKey( spep_4 + 100, hibiware, 255 );

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_4 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_4 + 14, shuchusen4, 32, 25 );

setEffMoveKey( spep_4 + 14, shuchusen4, 0, 0 );
setEffMoveKey( spep_4 + 46, shuchusen4, 0, 0 );

setEffScaleKey( spep_4 + 14, shuchusen4, 1, 1 );
setEffScaleKey( spep_4 + 46, shuchusen4, 1, 1 );

setEffRotateKey( spep_4 + 14, shuchusen4, 0 );
setEffRotateKey( spep_4 + 46, shuchusen4, 0 );

setEffAlphaKey( spep_4 + 14, shuchusen4, 255 );
setEffAlphaKey( spep_4 + 28, shuchusen4, 255 );
setEffAlphaKey( spep_4 + 30, shuchusen4, 252 );
setEffAlphaKey( spep_4 + 32, shuchusen4, 242 );
setEffAlphaKey( spep_4 + 34, shuchusen4, 227 );
setEffAlphaKey( spep_4 + 36, shuchusen4, 205 );
setEffAlphaKey( spep_4 + 38, shuchusen4, 176 );
setEffAlphaKey( spep_4 + 40, shuchusen4, 142 );
setEffAlphaKey( spep_4 + 42, shuchusen4, 101 );
setEffAlphaKey( spep_4 + 44, shuchusen4, 54 );
setEffAlphaKey( spep_4 + 46, shuchusen4, 0 );

shuchusen5 = entryEffectLife( spep_4 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_4 + 14, shuchusen5, 0, 0 );
setEffMoveKey( spep_4 + 100, shuchusen5, 0, 0 );

setEffScaleKey( spep_4 + 14, shuchusen5, 1, 1 );
setEffScaleKey( spep_4 + 100, shuchusen5, 1, 1 );

setEffRotateKey( spep_4 + 14, shuchusen5, 0 );
setEffRotateKey( spep_4 + 100, shuchusen5, 0 );

setEffAlphaKey( spep_4 + 14, shuchusen5, 255 );
setEffAlphaKey( spep_4 + 100, shuchusen5, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_4 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_4 + 14, ctga, 14, 20 );

setEffMoveKey( spep_4 + 14, ctga, 3.9, 316.1 );
setEffMoveKey( spep_4 + 28, ctga, 3.9, 316.1 );
setEffMoveKey( spep_4 + 100, ctga, 3.9, 316.1 );

setEffScaleKey( spep_4 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_4 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_4 + 14, ctga, -10.9 );
setEffRotateKey( spep_4 + 16, ctga, -14.9 );
setEffRotateKey( spep_4 + 28, ctga, -14.9 );
setEffRotateKey( spep_4 + 100, ctga, -14.9 );

setEffAlphaKey( spep_4 + 14, ctga, 255 );
setEffAlphaKey( spep_4 + 100, ctga, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
changeAnime( spep_4 + 0, 1, 107 );  --ダメージ 手前

setMoveKey( spep_4 + 0, 1, 36.2, 7.9 );
setMoveKey( spep_4 + 1, 1, 36.2, 7.9 );
setMoveKey( spep_4 + 2, 1, 31, -3.9 );
setMoveKey( spep_4 + 3, 1, 31, -3.9 );
setMoveKey( spep_4 + 4, 1, 27.7, -21.4 );
setMoveKey( spep_4 + 5, 1, 27.7, -21.4 );
setMoveKey( spep_4 + 6, 1, 21.9, -41.6 );
setMoveKey( spep_4 + 7, 1, 21.9, -41.6 );
setMoveKey( spep_4 + 8, 1, 15, -65.4 );
setMoveKey( spep_4 + 9, 1, 15, -65.4 );
setMoveKey( spep_4 + 10, 1, 5.1, -74.9 );
setMoveKey( spep_4 + 11, 1, 5.1, -74.9 );
setMoveKey( spep_4 + 12, 1, -45.3, -142.1 );  --画面にぶつかる
setMoveKey( spep_4 + 100, 1, -45.3, -142.1 );

setScaleKey( spep_4 + 0, 1, 0.2, 0.2 );
setScaleKey( spep_4 + 1, 1, 0.2, 0.2 );
setScaleKey( spep_4 + 2, 1, 0.25, 0.25 );
setScaleKey( spep_4 + 3, 1, 0.25, 0.25 );
setScaleKey( spep_4 + 4, 1, 0.46, 0.46 );
setScaleKey( spep_4 + 5, 1, 0.46, 0.46 );
setScaleKey( spep_4 + 6, 1, 0.55, 0.55 );
setScaleKey( spep_4 + 7, 1, 0.55, 0.55 );
setScaleKey( spep_4 + 8, 1, 0.71, 0.71 );
setScaleKey( spep_4 + 9, 1, 0.71, 0.71 );
setScaleKey( spep_4 + 10, 1, 0.97, 0.97 );
setScaleKey( spep_4 + 11, 1, 0.97, 0.97 );
setScaleKey( spep_4 + 12, 1, 1.1, 1.1 );  --画面にぶつかる
setScaleKey( spep_4 + 13, 1, 1.1, 1.1 );
setScaleKey( spep_4 + 14, 1, 1.2, 1.2 );
setScaleKey( spep_4 + 15, 1, 1.2, 1.2 );
setScaleKey( spep_4 + 16, 1, 1.1, 1.1 );
setScaleKey( spep_4 + 17, 1, 1.1, 1.1 );
setScaleKey( spep_4 + 18, 1, 1.2, 1.2 );
setScaleKey( spep_4 + 19, 1, 1.2, 1.2 );
setScaleKey( spep_4 + 20, 1, 1.1, 1.1 );
setScaleKey( spep_4 + 21, 1, 1.1, 1.1 );
setScaleKey( spep_4 + 22, 1, 1.2, 1.2 );
setScaleKey( spep_4 + 23, 1, 1.2, 1.2 );
setScaleKey( spep_4 + 24, 1, 1.1, 1.1 );
setScaleKey( spep_4 + 25, 1, 1.1, 1.1 );
setScaleKey( spep_4 + 26, 1, 1.2, 1.2 );
setScaleKey( spep_4 + 100, 1, 1.2, 1.2 );

setRotateKey( spep_4 + 0, 1, -40 );
setRotateKey( spep_4 + 1, 1, -40 );
setRotateKey( spep_4 + 2, 1, 80 );
setRotateKey( spep_4 + 3, 1, 80 );
setRotateKey( spep_4 + 4, 1, 200 );
setRotateKey( spep_4 + 5, 1, 200 );
setRotateKey( spep_4 + 6, 1, 360 );
setRotateKey( spep_4 + 7, 1, 360 );
setRotateKey( spep_4 + 8, 1, 558 );
setRotateKey( spep_4 + 9, 1, 558 );
setRotateKey( spep_4 + 10, 1, 425 );
setRotateKey( spep_4 + 11, 1, 425 );
setRotateKey( spep_4 + 12, 1, -40 );
setRotateKey( spep_4 + 100, 1, -40 );

-- ** 音 ** --
playSe( spep_4 + 0, SE_10 );  --爆発音
playSe( spep_4 + 14, SE_11 );  --割れる音

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 10 );
entryFade( spep_4 + 92, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_4 + 100 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 玉生成(158F)
------------------------------------------------------
spep_0 = 0;

-- ** 味方キャラクター ** --
setDisp( spep_0 + 0, 0, 1 );
setDisp( spep_0 + 158, 0, 0 );
changeAnime( spep_0 + 0, 0, 0 );  --待機正面向き
changeAnime( spep_0 + 30, 0, 30 );  --必殺技モーション１

setMoveKey( spep_0 + 0, 0, 0, 0 );
setMoveKey( spep_0 + 1, 0, 0, 0 );
setMoveKey( spep_0 + 2, 0, 0, 0 );
setMoveKey( spep_0 + 3, 0, 0, 0 );
setMoveKey( spep_0 + 4, 0, 0, 0 );
setMoveKey( spep_0 + 5, 0, 0, 0 );
setMoveKey( spep_0 + 6, 0, 0, 0 );
setMoveKey( spep_0 + 158, 0, 0, 0 );

setScaleKey( spep_0 + 0, 0, 1.6, 1.6 );
setScaleKey( spep_0 + 1, 0, 1.6, 1.6 );
setScaleKey( spep_0 + 2, 0, 1.6, 1.6 );
setScaleKey( spep_0 + 3, 0, 1.6, 1.6 );
setScaleKey( spep_0 + 4, 0, 1.6, 1.6 );
setScaleKey( spep_0 + 5, 0, 1.6, 1.6 );
setScaleKey( spep_0 + 6, 0, 1.6, 1.6 );
setScaleKey( spep_0 + 158, 0, 1.6, 1.6 );

setRotateKey( spep_0 + 0, 0, 0 );
setRotateKey( spep_0 + 1, 0, 0 );
setRotateKey( spep_0 + 2, 0, 0 );
setRotateKey( spep_0 + 3, 0, 0 );
setRotateKey( spep_0 + 4, 0, 0 );
setRotateKey( spep_0 + 5, 0, 0 );
setRotateKey( spep_0 + 6, 0, 0 );
setRotateKey( spep_0 + 158, 0, 0 );

-- ** エフェクト等 ** --
tame = entryEffectLife( spep_0 + 40, SP_01, 118, 0x100, -1, 0, 200, 80 );  --玉生成
setEffMoveKey( spep_0 + 40, tame, 200, 80 );
setEffMoveKey( spep_0 + 158, tame, 200, 80 );

setEffScaleKey( spep_0 + 40, tame, 0.5, 0.5 );
setEffScaleKey( spep_0 + 158, tame, 0.5, 0.5 );

setEffRotateKey( spep_0 + 40, tame, 0 );
setEffRotateKey( spep_0 + 158, tame, 0 );

setEffAlphaKey( spep_0 + 40, tame, 255 );
setEffAlphaKey( spep_0 + 158, tame, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 40,  906, 118, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 40, shuchusen1, 118, 25 );

setEffMoveKey( spep_0 + 40, shuchusen1, 0, 0 );
setEffMoveKey( spep_0 + 158, shuchusen1, 0, 0 );

setEffScaleKey( spep_0 + 40, shuchusen1, 1.6, 1.6 );
setEffScaleKey( spep_0 + 158, shuchusen1, 1.6, 1.6 );

setEffRotateKey( spep_0 + 40, shuchusen1, 0 );
setEffRotateKey( spep_0 + 158, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 40, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 158, shuchusen1, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 30, 0, 128, 0, 0, 0, 0, 180 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_0 + 140, 18, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
playSe( spep_0 + 40, 1018 );  --玉発生

-- ** 次の準備 ** --
spep_1 = spep_0 + 158;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen2, 90, 20 );

setEffMoveKey( spep_1 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_1 + 90, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen2, 1.6, 1.6 );
setEffScaleKey( spep_1 + 90, shuchusen2, 1.6, 1.6 );

setEffRotateKey( spep_1 + 0, shuchusen2, 0 );
setEffRotateKey( spep_1 + 90, shuchusen2, 0 );

setEffAlphaKey( spep_1 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_1 + 90, shuchusen2, 255 );

-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );

-- ** 次の準備 ** --
entryFade( spep_1 + 82, 6, 8, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
spep_2 = spep_1 + 94;

------------------------------------------------------
-- 玉投げる(118F)
------------------------------------------------------

-- ** 味方キャラクター ** --
setDisp( spep_2 + 0, 0, 1 );
setDisp( spep_2 + 118, 0, 0 );
changeAnime( spep_2 + 0, 0, 30 );  --必殺技モーション１
setShakeChara( spep_2 + 64, 0, 54, 50);

setMoveKey( spep_2 + 0, 0, -100, 0 );
setMoveKey( spep_2 + 10, 0, -100, 0 );
setMoveKey( spep_2 + 14, 0, -300, 0 );
setMoveKey( spep_2 + 30, 0, -700, 0 );
setMoveKey( spep_2 + 50, 0, -1100, 0 );
setMoveKey( spep_2 + 118, 0, -1100, 0 );

setScaleKey( spep_2 + 0, 0, 1.6, 1.6 );
setScaleKey( spep_2 + 118, 0, 1.6, 1.6 );

setRotateKey( spep_2 + 0, 0, 0 );
setRotateKey( spep_2 + 118, 0, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_2 - 38, 1, 1 );
setDisp( spep_2 + 116, 1, 0 );
changeAnime( spep_2 - 38, 1, 100 );  --待機
setShakeChara( spep_2 + 30, 1, 86, 50);

setMoveKey( spep_2 - 38, 1, -1300, 0 );
setMoveKey( spep_2 + 0, 1, -1300, 0 );
setMoveKey( spep_2 + 40, 1, -1000, 0 );
setMoveKey( spep_2 + 42, 1, -1100, 0 );	
setMoveKey( spep_2 + 116, 1, -1100, 0 );

setScaleKey( spep_2 - 38, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 116, 1, 1.6, 1.6 );

setRotateKey( spep_2 - 38, 1, 0 );
setRotateKey( spep_2 + 116, 1, 0 );

-- ** エフェクト等 ** --
tamanage = entryEffectLife( spep_2 + 0, SP_02, 116, 0x40, 1, 300, 50, -10 );  --玉投げる
setEffMoveKey( spep_2 + 0, tamanage, 50, -10 );
setEffMoveKey( spep_2 + 20, tamanage, 50, -10 );
setEffMoveKey( spep_2 + 25, tamanage, 50, -50 );
setEffMoveKey( spep_2 + 30, tamanage, 30, -170 );  --飛んでくところ
setEffMoveKey( spep_2 + 116, tamanage, 50, -170 );

setEffScaleKey( spep_2 + 0, tamanage, 1.0, 1.0 );
setEffScaleKey( spep_2 + 116, tamanage, 1.0, 1.0 );

setEffRotateKey( spep_2 + 0, tamanage, 28 );
setEffRotateKey( spep_2 + 26, tamanage, 20 );
setEffRotateKey( spep_2 + 28, tamanage, 16 );
setEffRotateKey( spep_2 + 30, tamanage, 0 );  --飛んでくところ
setEffRotateKey( spep_2 + 116, tamanage, 0 );

setEffAlphaKey( spep_2 + 0, tamanage, 0 );
setEffAlphaKey( spep_2 + 40, tamanage, 0 );
setEffAlphaKey( spep_2 + 42, tamanage, 255 );
setEffAlphaKey( spep_2 + 116, tamanage, 255 );

tamanage1 = entryEffectLife( spep_2 - 38, SP_02, 78, 0x40, 1, 300, 550, -170 );  --玉投げる
setEffMoveKey( spep_2 - 38, tamanage1, 550, -170 );
setEffMoveKey( spep_2 + 0, tamanage1, 600, -170 );
setEffMoveKey( spep_2 + 20, tamanage1, 630, -170 );
setEffMoveKey( spep_2 + 30, tamanage1, 900, -170 );
setEffMoveKey( spep_2 + 40, tamanage1, 1000, -170 );

setEffScaleKey( spep_2 - 38, tamanage1, 1.0, 1.0 );
setEffScaleKey( spep_2 + 40, tamanage1, 1.0, 1.0 );

setEffRotateKey( spep_2 - 38, tamanage1, 0 );
setEffRotateKey( spep_2 + 40, tamanage1, 0 );

setEffAlphaKey( spep_2 - 38, tamanage1, 0 );
setEffAlphaKey( spep_2 + 0, tamanage1, 0 );
setEffAlphaKey( spep_2 + 2, tamanage1, 255 );
setEffAlphaKey( spep_2 + 40, tamanage1, 255 );

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_2 + 0,  906, 64, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen3, 64, 25 );

setEffMoveKey( spep_2 + 0, shuchusen3, 0, 0 );
setEffMoveKey( spep_2 + 64, shuchusen3, 0, 0 );

setEffScaleKey( spep_2 + 0, shuchusen3, 1.6, 1.6 );
setEffScaleKey( spep_2 + 64, shuchusen3, 1.6, 1.6 );

setEffRotateKey( spep_2 + 0, shuchusen3, 0 );
setEffRotateKey( spep_2 + 64, shuchusen3, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_2 + 64, shuchusen3, 255 );

-- ** 流線 ** --
ryusen1 = entryEffectLife( spep_2 + 0,  920, 118, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, ryusen1, 0, 0 );
setEffMoveKey( spep_2 + 118, ryusen1, 0, 0 );

setEffScaleKey( spep_2 + 0, ryusen1, 1, 1 );
setEffScaleKey( spep_2 + 118, ryusen1, 1, 1 );

setEffRotateKey( spep_2 + 0, ryusen1, 0 );
setEffRotateKey( spep_2 + 118, ryusen1, 0 );

setEffAlphaKey( spep_2 + 0, ryusen1, 255 );
setEffAlphaKey( spep_2 + 118, ryusen1, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 118, 0, 0, 0, 0, 180 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_2 + 108, 8, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
playSe( spep_2 + 10, 1021 );  --玉向かう音

-- ** 次の準備 ** --
spep_3 = spep_2 + 118;

------------------------------------------------------
-- 玉迫る(90F)
------------------------------------------------------

-- ** エフェクト等 ** --
tamasemaru = entryEffectLife(spep_3 + 0, SP_03, 90, 0x100, -1, 0, 0, 0 );  --玉迫る
setEffMoveKey( spep_3 + 0, tamasemaru, 0, 0 );
setEffMoveKey( spep_3 + 90, tamasemaru, 0, 0 );
setEffScaleKey( spep_3 + 0, tamasemaru, 1.0, 1.0 );
setEffScaleKey( spep_3 + 90, tamasemaru, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, tamasemaru, 0 );
setEffRotateKey( spep_3 + 90, tamasemaru, 0 );
setEffAlphaKey( spep_3 + 0, tamasemaru, 255 );
setEffAlphaKey( spep_3 + 90, tamasemaru, 255 );

-- ** 流線 ** --
ryusen2 = entryEffectLife( spep_3 + 0,  921, 90, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_3 + 0, ryusen2, 0, 0 );
setEffMoveKey( spep_3 + 90, ryusen2, 0, 0 );

setEffScaleKey( spep_3 + 0, ryusen2, 1.2, 1.2 );
setEffScaleKey( spep_3 + 90, ryusen2, 1.2, 1.2 );

setEffRotateKey( spep_3 + 0, ryusen2, 0 );
setEffRotateKey( spep_3 + 90, ryusen2, 0 );

setEffAlphaKey( spep_3 + 0, ryusen2, 255 );
setEffAlphaKey( spep_3 + 90, ryusen2, 255 );

-- ** 書き文字エントリー ** --
ctzudo = entryEffectLife( spep_3 + 0,  10014, 90, 0x100, -1, 0, 58.1, 358 );  --ズドドドッ
setEffShake( spep_3 + 0, ctzudo, 90, 20 );

setEffMoveKey( spep_3 + 0, ctzudo, 58.1, 358 );
setEffMoveKey( spep_3 + 90, ctzudo, 58.1, 358 );

setEffScaleKey( spep_3 + 0, ctzudo, 3, 3 );
setEffScaleKey( spep_3 + 90, ctzudo, 3, 3 );

setEffRotateKey( spep_3 + 0, ctzudo, -10 );
setEffRotateKey( spep_3 + 90, ctzudo, -10 );

setEffAlphaKey( spep_3 + 0, ctzudo, 255 );
setEffAlphaKey( spep_3 + 90, ctzudo, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
changeAnime( spep_3 + 0, 1, 104 );  -- ガード

setMoveKey( spep_3 + 0, 1, 300, 0 );
setMoveKey( spep_3 + 30, 1, 120, 0 );
setMoveKey( spep_3 + 32, 1, 120, 0 );

setScaleKey( spep_3 + 0, 1, 0.7, 0.7 );
setScaleKey( spep_3 + 30, 1, 1.6, 1.6);
setScaleKey( spep_3 + 32, 1,  1.6, 1.6);

setRotateKey( spep_3 + 0, 1, 0 ); 
setRotateKey( spep_3 + 32, 1, 0 ); 

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 90, 0, 0, 0, 0, 180 );  --薄い黒　背景

-- ** 音 ** --
SEzuo = playSeLife( spep_3 + 0, 1021 );  --玉向かう音

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_3 + 32;  --エンドフェイズのフレーム数を置き換える
stopSe( SP_dodge, SEzuo, 0 );  --音止める

playSe( SP_dodge - 12, 1042 );

pauseAll( SP_dodge, 67 );

-- ** 敵キャラクター ** --
changeAnime( SP_dodge + 0, 1, 104 );  --ガード

setMoveKey( SP_dodge + 0, 1, 120, 0 );
setMoveKey( SP_dodge + 10, 1, 120, 0 );

setScaleKey( SP_dodge + 0, 1, 1.6, 1.6);
setScaleKey( SP_dodge + 10, 1, 1.6, 1.6);

setRotateKey( SP_dodge + 0, 1, 0 );
setRotateKey( SP_dodge + 10, 1, 0 );

-- ** カットイン部分 ** --
speffx = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350 );   -- eff_005 (カットイン)
setEffReplaceTexture( speffx, 3, 6 );                           -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,  -1,  0,  0,  350 );   -- 回避の文字表示
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

-- ** 敵キャラクター ** --
setDisp( spep_3 + 88, 1, 0 );
changeAnime( spep_3 + 61, 1, 108 );  --ダメージ（吹き飛び）
changeAnime( spep_3 + 62, 1, 108 );

setMoveKey( spep_3 + 34, 1, 120, 0 );
setMoveKey( spep_3 + 62, 1, 120, 0 );
setMoveKey( spep_3 + 80, 1, 325, 0 );
setMoveKey( spep_3 + 88, 1, 350, 0 );

setScaleKey( spep_3 + 34, 1,  1.6, 1.6 );
setScaleKey( spep_3 + 52, 1,  1.6, 1.6 );
setScaleKey( spep_3 + 53, 1,  1.5, 1.5 );
setScaleKey( spep_3 + 54, 1,  1.5, 1.5 );
setScaleKey( spep_3 + 80, 1,  0.5, 0.5 );
setScaleKey( spep_3 + 88, 1,  0.5, 0.5 );

setRotateKey( spep_3 + 34, 1, 0 ); 
setRotateKey( spep_3 + 88, 1, 0 ); 

-- ** ホワイトフェード ** --
entryFade( spep_3 + 80, 6, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 90;

------------------------------------------------------
-- 敵吹っ飛びシーン(100F)
------------------------------------------------------

-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_4 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_4 + 0, bakuhatsu, 0, 0 );
setEffMoveKey( spep_4 + 100, bakuhatsu, 0, 0 );

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
setEffMoveKey( spep_4 + 2, hibiware, 70, -60 ); 
setEffMoveKey( spep_4 + 100, hibiware, 70, -60 ); 

setEffScaleKey( spep_4 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_4 + 100, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_4 + 2, hibiware, 0 );
setEffRotateKey( spep_4 + 100, hibiware, 0 );

setEffAlphaKey( spep_4 + 2, hibiware, 0 );
setEffAlphaKey( spep_4 + 13, hibiware, 0 );
setEffAlphaKey( spep_4 + 14, hibiware, 255 );
setEffAlphaKey( spep_4 + 100, hibiware, 255 );

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_4 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_4 + 14, shuchusen4, 32, 25 );

setEffMoveKey( spep_4 + 14, shuchusen4, 0, 0 );
setEffMoveKey( spep_4 + 46, shuchusen4, 0, 0 );

setEffScaleKey( spep_4 + 14, shuchusen4, 1, 1 );
setEffScaleKey( spep_4 + 46, shuchusen4, 1, 1 );

setEffRotateKey( spep_4 + 14, shuchusen4, 0 );
setEffRotateKey( spep_4 + 46, shuchusen4, 0 );

setEffAlphaKey( spep_4 + 14, shuchusen4, 255 );
setEffAlphaKey( spep_4 + 28, shuchusen4, 255 );
setEffAlphaKey( spep_4 + 30, shuchusen4, 252 );
setEffAlphaKey( spep_4 + 32, shuchusen4, 242 );
setEffAlphaKey( spep_4 + 34, shuchusen4, 227 );
setEffAlphaKey( spep_4 + 36, shuchusen4, 205 );
setEffAlphaKey( spep_4 + 38, shuchusen4, 176 );
setEffAlphaKey( spep_4 + 40, shuchusen4, 142 );
setEffAlphaKey( spep_4 + 42, shuchusen4, 101 );
setEffAlphaKey( spep_4 + 44, shuchusen4, 54 );
setEffAlphaKey( spep_4 + 46, shuchusen4, 0 );

shuchusen5 = entryEffectLife( spep_4 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_4 + 14, shuchusen5, 0, 0 );
setEffMoveKey( spep_4 + 100, shuchusen5, 0, 0 );

setEffScaleKey( spep_4 + 14, shuchusen5, 1, 1 );
setEffScaleKey( spep_4 + 100, shuchusen5, 1, 1 );

setEffRotateKey( spep_4 + 14, shuchusen5, 0 );
setEffRotateKey( spep_4 + 100, shuchusen5, 0 );

setEffAlphaKey( spep_4 + 14, shuchusen5, 255 );
setEffAlphaKey( spep_4 + 100, shuchusen5, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_4 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_4 + 14, ctga, 14, 20 );

setEffMoveKey( spep_4 + 14, ctga, 3.9, 316.1 );
setEffMoveKey( spep_4 + 28, ctga, 3.9, 316.1 );
setEffMoveKey( spep_4 + 100, ctga, 3.9, 316.1 );

setEffScaleKey( spep_4 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_4 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_4 + 14, ctga, -10.9 );
setEffRotateKey( spep_4 + 16, ctga, -14.9 );
setEffRotateKey( spep_4 + 28, ctga, -14.9 );
setEffRotateKey( spep_4 + 100, ctga, -14.9 );

setEffAlphaKey( spep_4 + 14, ctga, 255 );
setEffAlphaKey( spep_4 + 100, ctga, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
changeAnime( spep_4 + 0, 1, 107 );  --ダメージ 手前

setMoveKey( spep_4 + 0, 1, 36.2, 7.9 );
setMoveKey( spep_4 + 1, 1, 36.2, 7.9 );
setMoveKey( spep_4 + 2, 1, 31, -3.9 );
setMoveKey( spep_4 + 3, 1, 31, -3.9 );
setMoveKey( spep_4 + 4, 1, 27.7, -21.4 );
setMoveKey( spep_4 + 5, 1, 27.7, -21.4 );
setMoveKey( spep_4 + 6, 1, 21.9, -41.6 );
setMoveKey( spep_4 + 7, 1, 21.9, -41.6 );
setMoveKey( spep_4 + 8, 1, 15, -65.4 );
setMoveKey( spep_4 + 9, 1, 15, -65.4 );
setMoveKey( spep_4 + 10, 1, 5.1, -74.9 );
setMoveKey( spep_4 + 11, 1, 5.1, -74.9 );
setMoveKey( spep_4 + 12, 1, -45.3, -142.1 );  --画面にぶつかる
setMoveKey( spep_4 + 100, 1, -45.3, -142.1 );

setScaleKey( spep_4 + 0, 1, 0.2, 0.2 );
setScaleKey( spep_4 + 1, 1, 0.2, 0.2 );
setScaleKey( spep_4 + 2, 1, 0.25, 0.25 );
setScaleKey( spep_4 + 3, 1, 0.25, 0.25 );
setScaleKey( spep_4 + 4, 1, 0.46, 0.46 );
setScaleKey( spep_4 + 5, 1, 0.46, 0.46 );
setScaleKey( spep_4 + 6, 1, 0.55, 0.55 );
setScaleKey( spep_4 + 7, 1, 0.55, 0.55 );
setScaleKey( spep_4 + 8, 1, 0.71, 0.71 );
setScaleKey( spep_4 + 9, 1, 0.71, 0.71 );
setScaleKey( spep_4 + 10, 1, 0.97, 0.97 );
setScaleKey( spep_4 + 11, 1, 0.97, 0.97 );
setScaleKey( spep_4 + 12, 1, 1.1, 1.1 );  --画面にぶつかる
setScaleKey( spep_4 + 13, 1, 1.1, 1.1 );
setScaleKey( spep_4 + 14, 1, 1.2, 1.2 );
setScaleKey( spep_4 + 15, 1, 1.2, 1.2 );
setScaleKey( spep_4 + 16, 1, 1.1, 1.1 );
setScaleKey( spep_4 + 17, 1, 1.1, 1.1 );
setScaleKey( spep_4 + 18, 1, 1.2, 1.2 );
setScaleKey( spep_4 + 19, 1, 1.2, 1.2 );
setScaleKey( spep_4 + 20, 1, 1.1, 1.1 );
setScaleKey( spep_4 + 21, 1, 1.1, 1.1 );
setScaleKey( spep_4 + 22, 1, 1.2, 1.2 );
setScaleKey( spep_4 + 23, 1, 1.2, 1.2 );
setScaleKey( spep_4 + 24, 1, 1.1, 1.1 );
setScaleKey( spep_4 + 25, 1, 1.1, 1.1 );
setScaleKey( spep_4 + 26, 1, 1.2, 1.2 );
setScaleKey( spep_4 + 100, 1, 1.2, 1.2 );

setRotateKey( spep_4 + 0, 1, -40 );
setRotateKey( spep_4 + 1, 1, -40 );
setRotateKey( spep_4 + 2, 1, 80 );
setRotateKey( spep_4 + 3, 1, 80 );
setRotateKey( spep_4 + 4, 1, 200 );
setRotateKey( spep_4 + 5, 1, 200 );
setRotateKey( spep_4 + 6, 1, 360 );
setRotateKey( spep_4 + 7, 1, 360 );
setRotateKey( spep_4 + 8, 1, 558 );
setRotateKey( spep_4 + 9, 1, 558 );
setRotateKey( spep_4 + 10, 1, 425 );
setRotateKey( spep_4 + 11, 1, 425 );
setRotateKey( spep_4 + 12, 1, -40 );
setRotateKey( spep_4 + 100, 1, -40 );

-- ** 音 ** --
playSe( spep_4 + 0, SE_10 );  --爆発音
playSe( spep_4 + 14, SE_11 );  --割れる音

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 10 );
entryFade( spep_4 + 92, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_4 + 100 );

end


