--G2-3_超サイヤ人ブロリー(フルパワー)_ギガンティックカタストロフィ

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
SP_01 = 152704; --突進
SP_02 = 152705; --ブレス　前
SP_03 = 152706; --ブレス　奥
SP_04 = 152707; --ギガンティッククラスター　前
SP_05 = 152708; --イレイザーキャノン　前
SP_06 = 152709; --被弾
SP_07 = 152754; --イレイザーキャノン　奥
SP_08 = 152755; --ギガンティッククラスター　奥

--敵側
SP_05r = 152710; --イレイザーキャノン敵側

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
-- 突進(374F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
tosshin = entryEffectLife( spep_0 + 0, SP_01, 374, 0x100, -1, 0, 0, 0 );  --突進(ef_001)
setEffMoveKey( spep_0 + 0, tosshin, 0, 0 , 0 );
setEffMoveKey( spep_0 + 374, tosshin, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tosshin, 1.0, 1.0 );
setEffScaleKey( spep_0 + 374, tosshin, 1.0, 1.0 );
setEffAlphaKey( spep_0 + 0, tosshin, 255 );
setEffAlphaKey( spep_0 + 373, tosshin, 255 );
setEffAlphaKey( spep_0 + 374, tosshin, 0 );
setEffRotateKey( spep_0 + 0, tosshin, 0 );
setEffRotateKey( spep_0 + 374, tosshin, 0 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0 + 16, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0 + 122, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 音 ** --
tosshinSE = playSeLife( spep_0 + 2, 9 );  --突進

-- ** ホワイトフェード ** --
entryFade( spep_0 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 12; --エンドフェイズのフレーム数を置き換える
stopSe( SP_dodge, tosshinSE, 0 );

playSe( SP_dodge - 12, 1042 );

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

-- ** 音 ** --
playSe( spep_0 + 88, 1014 );  --画面に迫る音
playSe( spep_0 + 122, SE_04 );  --ゴゴゴ
playSe( spep_0 + 212, 1024 );  --ブレス発射
buresuSE = playSeLife( spep_0 + 212, 1044 );  --ブレス音

-- ** 次の準備 ** --
spep_1 = spep_0 + 374;

------------------------------------------------------
-- ブレス(88F)
------------------------------------------------------

-- ** エフェクト等 ** --
buresu_f = entryEffectLife( spep_1 + 0, SP_02, 88, 0x100, -1, 0, 0, 0 );  --ブレス　前(ef_002)
setEffMoveKey( spep_1 + 0, buresu_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 88, buresu_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, buresu_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 88, buresu_f, 1.0, 1.0 );
setEffAlphaKey( spep_1 + 0, buresu_f, 255 );
setEffAlphaKey( spep_1 + 87, buresu_f, 255 );
setEffAlphaKey( spep_1 + 88, buresu_f, 0 );
setEffRotateKey( spep_1 + 0, buresu_f, 0 );
setEffRotateKey( spep_1 + 88, buresu_f, 0 );

buresu_b = entryEffectLife( spep_1 + 0, SP_03, 88, 0x80, -1, 0, 0, 0 );  --ブレス　奥(ef_003)
setEffMoveKey( spep_1 + 0, buresu_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 88, buresu_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, buresu_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 88, buresu_b, 1.0, 1.0 );
setEffAlphaKey( spep_1 + 0, buresu_b, 255 );
setEffAlphaKey( spep_1 + 87, buresu_b, 255 );
setEffAlphaKey( spep_1 + 88, buresu_b, 0 );
setEffRotateKey( spep_1 + 0, buresu_b, 0 );
setEffRotateKey( spep_1 + 88, buresu_b, 0 );

-- ** 次の準備 ** --
spep_2 = spep_1 + 88;

------------------------------------------------------
-- ギガンティッククラスター(220F)
------------------------------------------------------

-- ** エフェクト等 ** --
gigan_f = entryEffectLife( spep_2 + 0, SP_04, 220, 0x100, -1, 0, 0, 0 );  --ギガンティッククラスター　前(ef_004)
setEffMoveKey( spep_2 + 0, gigan_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 220, gigan_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, gigan_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 220, gigan_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, gigan_f, 0 );
setEffRotateKey( spep_2 + 220, gigan_f, 0 );
setEffAlphaKey( spep_2 + 0, gigan_f, 255 );
setEffAlphaKey( spep_2 + 220, gigan_f, 255 );

gigan_b = entryEffectLife( spep_2 + 0, SP_08, 220, 0x80, -1, 0, 0, 0 );  --ギガンティッククラスター　奥(ef_008)
setEffMoveKey( spep_2 + 0, gigan_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 220, gigan_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, gigan_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 220, gigan_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, gigan_b, 0 );
setEffRotateKey( spep_2 + 220, gigan_b, 0 );
setEffAlphaKey( spep_2 + 0, gigan_b, 255 );
setEffAlphaKey( spep_2 + 220, gigan_b, 255 );

-- ** 敵キャラクター ** --
a = 186; --爆発したあたり
setDisp( spep_2 + a + 0, 1, 1 );
setDisp( spep_2 + a + 34, 1, 0 );
changeAnime( spep_2 + a + 0, 1, 105 );  --ダメージ　奥

setMoveKey( spep_2 + a + 0, 1, 0.6, -21.7 , 0 );
setMoveKey( spep_2 + a + 2, 1, 0.6, -21.7 , 0 );
setMoveKey( spep_2 + a + 3, 1, 50.2, 173.9 , 0 );
setMoveKey( spep_2 + a + 4, 1, 50.2, 173.9 , 0 );
setMoveKey( spep_2 + a + 5, 1, 69.6, 230.1 , 0 );
setMoveKey( spep_2 + a + 6, 1, 69.6, 230.1 , 0 );
setMoveKey( spep_2 + a + 8, 1, 74.9, 252.5 , 0 );
setMoveKey( spep_2 + a + 10, 1, 82, 275.5 , 0 );
setMoveKey( spep_2 + a + 12, 1, 84.8, 284.6 , 0 );
setMoveKey( spep_2 + a + 14, 1, 82.1, 278.5 , 0 );
setMoveKey( spep_2 + a + 16, 1, 81.5, 274.9 , 0 );
setMoveKey( spep_2 + a + 18, 1, 81.4, 275.2 , 0 );
setMoveKey( spep_2 + a + 20, 1, 80.2, 272.5 , 0 );
setMoveKey( spep_2 + a + 22, 1, 79.9, 272.1 , 0 );
setMoveKey( spep_2 + a + 24, 1, 77.4, 265.5 , 0 );
setMoveKey( spep_2 + a + 26, 1, 75.6, 260.9 , 0 );
setMoveKey( spep_2 + a + 28, 1, 72.8, 253.5 , 0 );
setMoveKey( spep_2 + a + 30, 1, 68.7, 243 , 0 );
setMoveKey( spep_2 + a + 32, 1, 62.7, 227.1 , 0 );
setMoveKey( spep_2 + a + 34, 1, 62.7, 227.1 , 0 );

setScaleKey( spep_2 + a + 0, 1, 3.13, 3.13 );
setScaleKey( spep_2 + a + 2, 1, 3.13, 3.13 );
setScaleKey( spep_2 + a + 4, 1, 1.31, 1.31 );
setScaleKey( spep_2 + a + 6, 1, 0.91, 0.91 );
setScaleKey( spep_2 + a + 8, 1, 0.66, 0.66 );
setScaleKey( spep_2 + a + 10, 1, 0.54, 0.54 );
setScaleKey( spep_2 + a + 12, 1, 0.45, 0.45 );
setScaleKey( spep_2 + a + 14, 1, 0.36, 0.36 );
setScaleKey( spep_2 + a + 16, 1, 0.33, 0.33 );
setScaleKey( spep_2 + a + 18, 1, 0.3, 0.3 );
setScaleKey( spep_2 + a + 20, 1, 0.27, 0.27 );
setScaleKey( spep_2 + a + 22, 1, 0.24, 0.24 );
setScaleKey( spep_2 + a + 24, 1, 0.25, 0.25 );
setScaleKey( spep_2 + a + 34, 1, 0.27, 0.27 );

setRotateKey( spep_2 + a + 0, 1, 21 );
setRotateKey( spep_2 + a + 2, 1, 21 );
setRotateKey( spep_2 + a + 3, 1, 20.9 );
setRotateKey( spep_2 + a + 4, 1, 20.9 );
setRotateKey( spep_2 + a + 6, 1, 20.8 );
setRotateKey( spep_2 + a + 8, 1, 20.8 );
setRotateKey( spep_2 + a + 34, 1, 20.8 );

-- ** 音 ** --
stopSe( spep_2 + 14, buresuSE, 0 );
playSe( spep_2 + 66, 1034 );  --溜め
playSe( spep_2 + 81, 1034 );  --溜め
--playSe( spep_2 + 96, 1034 );  --溜め
playSe( spep_2 + 82, 1022 );  --発射音
playSe( spep_2 + 152, 1023 );  --着弾
playSe( spep_2 + 162, 1023 );  --着弾
playSe( spep_2 + 172, 1023 );  --着弾
playSe( spep_2 + 182, 1023 );  --着弾

-- ** ホワイトフェード ** --
entryFade( spep_2 + 218, 2, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 220;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_3 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_3 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen2, 90, 20 );

setEffMoveKey( spep_3 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_3 + 90, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen2, 1.6, 1.6 );
setEffScaleKey( spep_3 + 90, shuchusen2, 1.6, 1.6 );

setEffRotateKey( spep_3 + 0, shuchusen2, 0 );
setEffRotateKey( spep_3 + 90, shuchusen2, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_3 + 90, shuchusen2, 255 );

-- ** 音 ** --
playSe( spep_3 + 0, SE_05 );

-- ** 次の準備 ** --
entryFade( spep_3 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
spep_4 = spep_3 + 94;

------------------------------------------------------
-- イレイザーキャノン(308F)
------------------------------------------------------

-- ** エフェクト等 ** --
kyanon_f = entryEffectLife( spep_4 + 0, SP_05, 308, 0x100, -1, 0, 0, 0 );  --イレイザーキャノン　前(ef_005)
setEffMoveKey( spep_4 + 0, kyanon_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 308, kyanon_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, kyanon_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 308, kyanon_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, kyanon_f, 0 );
setEffRotateKey( spep_4 + 308, kyanon_f, 0 );
setEffAlphaKey( spep_4 + 0, kyanon_f, 255 );
setEffAlphaKey( spep_4 + 307, kyanon_f, 255 );
setEffAlphaKey( spep_4 + 308, kyanon_f, 0 );

kyanon_b = entryEffectLife( spep_4 + 0, SP_07, 308, 0x80, -1, 0, 0, 0 );  --イレイザーキャノン　奥(ef_007)
setEffMoveKey( spep_4 + 0, kyanon_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 308, kyanon_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, kyanon_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 308, kyanon_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, kyanon_b, 0 );
setEffRotateKey( spep_4 + 308, kyanon_b, 0 );
setEffAlphaKey( spep_4 + 0, kyanon_b, 255 );
setEffAlphaKey( spep_4 + 307, kyanon_b, 255 );
setEffAlphaKey( spep_4 + 308, kyanon_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 218, 1, 1 );
setDisp( spep_4 + 264, 1, 0 );
changeAnime( spep_4 + 218, 1, 106 );  --ダメージ

setMoveKey( spep_4 + 218, 1, 295, 535.1 , 0 );
setMoveKey( spep_4 + 220, 1, 256.9, 492.8 , 0 );
setMoveKey( spep_4 + 222, 1, 233, 450.8 , 0 );
setMoveKey( spep_4 + 224, 1, 215.5, 410.5 , 0 );
setMoveKey( spep_4 + 226, 1, 201.7, 373.1 , 0 );
setMoveKey( spep_4 + 228, 1, 190.4, 339.2 , 0 );
setMoveKey( spep_4 + 230, 1, 181.1, 311.7 , 0 );
setMoveKey( spep_4 + 232, 1, 172.6, 281.6 , 0 );
setMoveKey( spep_4 + 234, 1, 164.9, 257.3 , 0 );
setMoveKey( spep_4 + 236, 1, 157.3, 227.8 , 0 );
setMoveKey( spep_4 + 238, 1, 150.6, 213.6 , 0 );
setMoveKey( spep_4 + 240, 1, 143.4, 189.2 , 0 );
setMoveKey( spep_4 + 242, 1, 136.1, 168.9 , 0 );
setMoveKey( spep_4 + 244, 1, 128.2, 156.3 , 0 );
setMoveKey( spep_4 + 246, 1, 119.5, 126.4 , 0 );
setMoveKey( spep_4 + 248, 1, 110.5, 108.7 , 0 );
setMoveKey( spep_4 + 250, 1, 101.2, 112 , 0 );
setMoveKey( spep_4 + 252, 1, 89.7, 77.7 , 0 );
setMoveKey( spep_4 + 254, 1, 77.4, 52.9 , 0 );
setMoveKey( spep_4 + 256, 1, 62, 32 , 0 );
setMoveKey( spep_4 + 258, 1, 44.4, 7 , 0 );
setMoveKey( spep_4 + 260, 1, 24.6, -8.6 , 0 );
setMoveKey( spep_4 + 262, 1, -0.3, -0.3 , 0 );
setMoveKey( spep_4 + 264, 1, -80, -0.1 , 0 );

setScaleKey( spep_4 + 218, 1, 0.07, 0.07 );
setScaleKey( spep_4 + 226, 1, 0.07, 0.07 );
setScaleKey( spep_4 + 228, 1, 0.08, 0.08 );
setScaleKey( spep_4 + 232, 1, 0.08, 0.08 );
setScaleKey( spep_4 + 234, 1, 0.09, 0.09 );
setScaleKey( spep_4 + 236, 1, 0.09, 0.09 );
setScaleKey( spep_4 + 238, 1, 0.1, 0.1 );
setScaleKey( spep_4 + 240, 1, 0.11, 0.11 );
setScaleKey( spep_4 + 242, 1, 0.12, 0.12 );
setScaleKey( spep_4 + 244, 1, 0.14, 0.14 );
setScaleKey( spep_4 + 246, 1, 0.16, 0.16 );
setScaleKey( spep_4 + 248, 1, 0.18, 0.18 );
setScaleKey( spep_4 + 250, 1, 0.22, 0.22 );
setScaleKey( spep_4 + 252, 1, 0.27, 0.27 );
setScaleKey( spep_4 + 254, 1, 0.34, 0.34 );
setScaleKey( spep_4 + 256, 1, 0.45, 0.45 );
setScaleKey( spep_4 + 258, 1, 0.65, 0.65 );
setScaleKey( spep_4 + 260, 1, 2, 2 );
setScaleKey( spep_4 + 262, 1, 3.59, 3.59 );
setScaleKey( spep_4 + 264, 1, 3.59, 3.59 );

setRotateKey( spep_4 + 218, 1, 14.7 );
setRotateKey( spep_4 + 220, 1, 11.7 );
setRotateKey( spep_4 + 222, 1, 9.8 );
setRotateKey( spep_4 + 224, 1, 8.4 );
setRotateKey( spep_4 + 226, 1, 7.3 );
setRotateKey( spep_4 + 228, 1, 6.3 );
setRotateKey( spep_4 + 230, 1, 5.5 );
setRotateKey( spep_4 + 232, 1, 4.8 );
setRotateKey( spep_4 + 234, 1, 4.2 );
setRotateKey( spep_4 + 236, 1, 3.6 );
setRotateKey( spep_4 + 238, 1, 3.1 );
setRotateKey( spep_4 + 240, 1, 2.6 );
setRotateKey( spep_4 + 242, 1, 2.2 );
setRotateKey( spep_4 + 244, 1, 1.9 );
setRotateKey( spep_4 + 246, 1, 1.6 );
setRotateKey( spep_4 + 248, 1, 1.3 );
setRotateKey( spep_4 + 250, 1, 1 );
setRotateKey( spep_4 + 252, 1, 0.8 );
setRotateKey( spep_4 + 254, 1, 0.6 );
setRotateKey( spep_4 + 256, 1, 0.5 );
setRotateKey( spep_4 + 258, 1, 0.4 );
setRotateKey( spep_4 + 260, 1, 0.3 );
setRotateKey( spep_4 + 264, 1, 0.3 );

-- ** 音 ** --
tameSE = playSeLife( spep_4 + 2, 15 );  --溜め
stopSe( spep_4 + 68, tameSE, 0 );
playSe( spep_4 + 136, 1024 );  --発射音
playSe( spep_4 + 264, 1023 );  --被弾

-- ** 次の準備 ** --
spep_5 = spep_4 + 308;

------------------------------------------------------
-- 被弾(314F)
------------------------------------------------------

-- ** エフェクト等 ** --
hidan = entryEffect( spep_5 + 0, SP_06, 0x100, -1, 0, 0, 0 );  --被弾(ef_006)
setEffMoveKey( spep_5 + 0, hidan, 0, 0 , 0 );
setEffMoveKey( spep_5 + 314, hidan, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, hidan, 1.0, 1.0 );
setEffScaleKey( spep_5 + 314, hidan, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hidan, 0 );
setEffRotateKey( spep_5 + 314, hidan, 0 );
setEffAlphaKey( spep_5 + 0, hidan, 255 );
setEffAlphaKey( spep_5 + 314, hidan, 255 );

-- ** 音 ** --
playSe( spep_5 + 4, 1069 );  --爆発
playSe( spep_5 + 108, 1068 );  --爆発

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 108 );
entryFade( spep_5 + 304, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_5 + 314 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 突進(374F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
tosshin = entryEffectLife( spep_0 + 0, SP_01, 374, 0x100, -1, 0, 0, 0 );  --突進(ef_001)
setEffMoveKey( spep_0 + 0, tosshin, 0, 0 , 0 );
setEffMoveKey( spep_0 + 374, tosshin, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tosshin, -1.0, 1.0 );
setEffScaleKey( spep_0 + 374, tosshin, -1.0, 1.0 );
setEffAlphaKey( spep_0 + 0, tosshin, 255 );
setEffAlphaKey( spep_0 + 373, tosshin, 255 );
setEffAlphaKey( spep_0 + 374, tosshin, 0 );
setEffRotateKey( spep_0 + 0, tosshin, 0 );
setEffRotateKey( spep_0 + 374, tosshin, 0 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0 + 16, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0 + 122, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 音 ** --
tosshinSE = playSeLife( spep_0 + 2, 9 );  --突進

-- ** ホワイトフェード ** --
entryFade( spep_0 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 12; --エンドフェイズのフレーム数を置き換える
stopSe( SP_dodge, tosshinSE, 0 );

playSe( SP_dodge - 12, 1042 );

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

-- ** 音 ** --
playSe( spep_0 + 88, 1014 ); --画面に迫る音
playSe( spep_0 + 122, SE_04 );  --ゴゴゴ
playSe( spep_0 + 212, 1024 );  --ブレス発射
buresuSE = playSeLife( spep_0 + 212, 1044 );  --ブレス音

-- ** 次の準備 ** --
spep_1 = spep_0 + 374;

------------------------------------------------------
-- ブレス(88F)
------------------------------------------------------

-- ** エフェクト等 ** --
buresu_f = entryEffectLife( spep_1 + 0, SP_02, 88, 0x100, -1, 0, 0, 0 );  --ブレス　前(ef_002)
setEffMoveKey( spep_1 + 0, buresu_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 88, buresu_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, buresu_f, -1.0, 1.0 );
setEffScaleKey( spep_1 + 88, buresu_f, -1.0, 1.0 );
setEffAlphaKey( spep_1 + 0, buresu_f, 255 );
setEffAlphaKey( spep_1 + 87, buresu_f, 255 );
setEffAlphaKey( spep_1 + 88, buresu_f, 0 );
setEffRotateKey( spep_1 + 0, buresu_f, 0 );
setEffRotateKey( spep_1 + 88, buresu_f, 0 );

buresu_b = entryEffectLife( spep_1 + 0, SP_03, 88, 0x80, -1, 0, 0, 0 );  --ブレス　奥(ef_003)
setEffMoveKey( spep_1 + 0, buresu_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 88, buresu_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, buresu_b, -1.0, 1.0 );
setEffScaleKey( spep_1 + 88, buresu_b, -1.0, 1.0 );
setEffAlphaKey( spep_1 + 0, buresu_b, 255 );
setEffAlphaKey( spep_1 + 87, buresu_b, 255 );
setEffAlphaKey( spep_1 + 88, buresu_b, 0 );
setEffRotateKey( spep_1 + 0, buresu_b, 0 );
setEffRotateKey( spep_1 + 88, buresu_b, 0 );

-- ** 次の準備 ** --
spep_2 = spep_1 + 88;

------------------------------------------------------
-- ギガンティッククラスター(220F)
------------------------------------------------------

-- ** エフェクト等 ** --
gigan_f = entryEffectLife( spep_2 + 0, SP_04, 220, 0x100, -1, 0, 0, 0 );  --ギガンティッククラスター　前(ef_004)
setEffMoveKey( spep_2 + 0, gigan_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 220, gigan_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, gigan_f, -1.0, 1.0 );
setEffScaleKey( spep_2 + 220, gigan_f, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, gigan_f, 0 );
setEffRotateKey( spep_2 + 220, gigan_f, 0 );
setEffAlphaKey( spep_2 + 0, gigan_f, 255 );
setEffAlphaKey( spep_2 + 220, gigan_f, 255 );

gigan_b = entryEffectLife( spep_2 + 0, SP_08, 220, 0x80, -1, 0, 0, 0 );  --ギガンティッククラスター　奥(ef_008)
setEffMoveKey( spep_2 + 0, gigan_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 220, gigan_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, gigan_b, -1.0, 1.0 );
setEffScaleKey( spep_2 + 220, gigan_b, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, gigan_b, 0 );
setEffRotateKey( spep_2 + 220, gigan_b, 0 );
setEffAlphaKey( spep_2 + 0, gigan_b, 255 );
setEffAlphaKey( spep_2 + 220, gigan_b, 255 );

-- ** 敵キャラクター ** --
a = 186; --爆発したあたり
setDisp( spep_2 + a + 0, 1, 1 );
setDisp( spep_2 + a + 34, 1, 0 );
changeAnime( spep_2 + a + 0, 1, 105 );  --ダメージ　奥

setMoveKey( spep_2 + a + 0, 1, 0.6, -21.7 , 0 );
setMoveKey( spep_2 + a + 2, 1, 0.6, -21.7 , 0 );
setMoveKey( spep_2 + a + 3, 1, 50.2, 173.9 , 0 );
setMoveKey( spep_2 + a + 4, 1, 50.2, 173.9 , 0 );
setMoveKey( spep_2 + a + 5, 1, 69.6, 230.1 , 0 );
setMoveKey( spep_2 + a + 6, 1, 69.6, 230.1 , 0 );
setMoveKey( spep_2 + a + 8, 1, 74.9, 252.5 , 0 );
setMoveKey( spep_2 + a + 10, 1, 82, 275.5 , 0 );
setMoveKey( spep_2 + a + 12, 1, 84.8, 284.6 , 0 );
setMoveKey( spep_2 + a + 14, 1, 82.1, 278.5 , 0 );
setMoveKey( spep_2 + a + 16, 1, 81.5, 274.9 , 0 );
setMoveKey( spep_2 + a + 18, 1, 81.4, 275.2 , 0 );
setMoveKey( spep_2 + a + 20, 1, 80.2, 272.5 , 0 );
setMoveKey( spep_2 + a + 22, 1, 79.9, 272.1 , 0 );
setMoveKey( spep_2 + a + 24, 1, 77.4, 265.5 , 0 );
setMoveKey( spep_2 + a + 26, 1, 75.6, 260.9 , 0 );
setMoveKey( spep_2 + a + 28, 1, 72.8, 253.5 , 0 );
setMoveKey( spep_2 + a + 30, 1, 68.7, 243 , 0 );
setMoveKey( spep_2 + a + 32, 1, 62.7, 227.1 , 0 );
setMoveKey( spep_2 + a + 34, 1, 62.7, 227.1 , 0 );

setScaleKey( spep_2 + a + 0, 1, 3.13, 3.13 );
setScaleKey( spep_2 + a + 2, 1, 3.13, 3.13 );
setScaleKey( spep_2 + a + 4, 1, 1.31, 1.31 );
setScaleKey( spep_2 + a + 6, 1, 0.91, 0.91 );
setScaleKey( spep_2 + a + 8, 1, 0.66, 0.66 );
setScaleKey( spep_2 + a + 10, 1, 0.54, 0.54 );
setScaleKey( spep_2 + a + 12, 1, 0.45, 0.45 );
setScaleKey( spep_2 + a + 14, 1, 0.36, 0.36 );
setScaleKey( spep_2 + a + 16, 1, 0.33, 0.33 );
setScaleKey( spep_2 + a + 18, 1, 0.3, 0.3 );
setScaleKey( spep_2 + a + 20, 1, 0.27, 0.27 );
setScaleKey( spep_2 + a + 22, 1, 0.24, 0.24 );
setScaleKey( spep_2 + a + 24, 1, 0.25, 0.25 );
setScaleKey( spep_2 + a + 34, 1, 0.27, 0.27 );

setRotateKey( spep_2 + a + 0, 1, 21 );
setRotateKey( spep_2 + a + 2, 1, 21 );
setRotateKey( spep_2 + a + 3, 1, 20.9 );
setRotateKey( spep_2 + a + 4, 1, 20.9 );
setRotateKey( spep_2 + a + 6, 1, 20.8 );
setRotateKey( spep_2 + a + 8, 1, 20.8 );
setRotateKey( spep_2 + a + 34, 1, 20.8 );

-- ** 音 ** --
stopSe( spep_2 + 14, buresuSE, 0 );	
playSe( spep_2 + 66, 1034 );  --溜め
playSe( spep_2 + 81, 1034 );  --溜め
--playSe( spep_2 + 96, 1034 );  --溜め
playSe( spep_2 + 82, 1022 ); --発射音
playSe( spep_2 + 152, 1023 );  --着弾
playSe( spep_2 + 162, 1023 );  --着弾
playSe( spep_2 + 172, 1023 );  --着弾
playSe( spep_2 + 182, 1023 );  --着弾

-- ** ホワイトフェード ** --
entryFade( spep_2 + 218, 2, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 220;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_3 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_3 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen2, 90, 20 );

setEffMoveKey( spep_3 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_3 + 90, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen2, 1.6, 1.6 );
setEffScaleKey( spep_3 + 90, shuchusen2, 1.6, 1.6 );

setEffRotateKey( spep_3 + 0, shuchusen2, 0 );
setEffRotateKey( spep_3 + 90, shuchusen2, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_3 + 90, shuchusen2, 255 );

-- ** 音 ** --
playSe( spep_3 + 0, SE_05 );

-- ** 次の準備 ** --
entryFade( spep_3 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
spep_4 = spep_3 + 94;

------------------------------------------------------
-- イレイザーキャノン(308F)
------------------------------------------------------

-- ** エフェクト等 ** --
kyanon_f = entryEffectLife( spep_4 + 0, SP_05r, 308, 0x100, -1, 0, 0, 0 );  --イレイザーキャノン　前(ef_005r)
setEffMoveKey( spep_4 + 0, kyanon_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 308, kyanon_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, kyanon_f, -1.0, 1.0 );
setEffScaleKey( spep_4 + 308, kyanon_f, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, kyanon_f, 0 );
setEffRotateKey( spep_4 + 308, kyanon_f, 0 );
setEffAlphaKey( spep_4 + 0, kyanon_f, 255 );
setEffAlphaKey( spep_4 + 307, kyanon_f, 255 );
setEffAlphaKey( spep_4 + 308, kyanon_f, 0 );

kyanon_b = entryEffectLife( spep_4 + 0, SP_07, 308, 0x80, -1, 0, 0, 0 );  --イレイザーキャノン　奥(ef_007)
setEffMoveKey( spep_4 + 0, kyanon_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 308, kyanon_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, kyanon_b, -1.0, 1.0 );
setEffScaleKey( spep_4 + 308, kyanon_b, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, kyanon_b, 0 );
setEffRotateKey( spep_4 + 308, kyanon_b, 0 );
setEffAlphaKey( spep_4 + 0, kyanon_b, 255 );
setEffAlphaKey( spep_4 + 307, kyanon_b, 255 );
setEffAlphaKey( spep_4 + 308, kyanon_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 218, 1, 1 );
setDisp( spep_4 + 264, 1, 0 );
changeAnime( spep_4 + 218, 1, 106 );  --ダメージ

setMoveKey( spep_4 + 218, 1, 295, 535.1 , 0 );
setMoveKey( spep_4 + 220, 1, 256.9, 492.8 , 0 );
setMoveKey( spep_4 + 222, 1, 233, 450.8 , 0 );
setMoveKey( spep_4 + 224, 1, 215.5, 410.5 , 0 );
setMoveKey( spep_4 + 226, 1, 201.7, 373.1 , 0 );
setMoveKey( spep_4 + 228, 1, 190.4, 339.2 , 0 );
setMoveKey( spep_4 + 230, 1, 181.1, 311.7 , 0 );
setMoveKey( spep_4 + 232, 1, 172.6, 281.6 , 0 );
setMoveKey( spep_4 + 234, 1, 164.9, 257.3 , 0 );
setMoveKey( spep_4 + 236, 1, 157.3, 227.8 , 0 );
setMoveKey( spep_4 + 238, 1, 150.6, 213.6 , 0 );
setMoveKey( spep_4 + 240, 1, 143.4, 189.2 , 0 );
setMoveKey( spep_4 + 242, 1, 136.1, 168.9 , 0 );
setMoveKey( spep_4 + 244, 1, 128.2, 156.3 , 0 );
setMoveKey( spep_4 + 246, 1, 119.5, 126.4 , 0 );
setMoveKey( spep_4 + 248, 1, 110.5, 108.7 , 0 );
setMoveKey( spep_4 + 250, 1, 101.2, 112 , 0 );
setMoveKey( spep_4 + 252, 1, 89.7, 77.7 , 0 );
setMoveKey( spep_4 + 254, 1, 77.4, 52.9 , 0 );
setMoveKey( spep_4 + 256, 1, 62, 32 , 0 );
setMoveKey( spep_4 + 258, 1, 44.4, 7 , 0 );
setMoveKey( spep_4 + 260, 1, 24.6, -8.6 , 0 );
setMoveKey( spep_4 + 262, 1, -0.3, -0.3 , 0 );
setMoveKey( spep_4 + 264, 1, -80, -0.1 , 0 );

setScaleKey( spep_4 + 218, 1, 0.07, 0.07 );
setScaleKey( spep_4 + 226, 1, 0.07, 0.07 );
setScaleKey( spep_4 + 228, 1, 0.08, 0.08 );
setScaleKey( spep_4 + 232, 1, 0.08, 0.08 );
setScaleKey( spep_4 + 234, 1, 0.09, 0.09 );
setScaleKey( spep_4 + 236, 1, 0.09, 0.09 );
setScaleKey( spep_4 + 238, 1, 0.1, 0.1 );
setScaleKey( spep_4 + 240, 1, 0.11, 0.11 );
setScaleKey( spep_4 + 242, 1, 0.12, 0.12 );
setScaleKey( spep_4 + 244, 1, 0.14, 0.14 );
setScaleKey( spep_4 + 246, 1, 0.16, 0.16 );
setScaleKey( spep_4 + 248, 1, 0.18, 0.18 );
setScaleKey( spep_4 + 250, 1, 0.22, 0.22 );
setScaleKey( spep_4 + 252, 1, 0.27, 0.27 );
setScaleKey( spep_4 + 254, 1, 0.34, 0.34 );
setScaleKey( spep_4 + 256, 1, 0.45, 0.45 );
setScaleKey( spep_4 + 258, 1, 0.65, 0.65 );
setScaleKey( spep_4 + 260, 1, 2, 2 );
setScaleKey( spep_4 + 262, 1, 3.59, 3.59 );
setScaleKey( spep_4 + 264, 1, 3.59, 3.59 );

setRotateKey( spep_4 + 218, 1, 14.7 );
setRotateKey( spep_4 + 220, 1, 11.7 );
setRotateKey( spep_4 + 222, 1, 9.8 );
setRotateKey( spep_4 + 224, 1, 8.4 );
setRotateKey( spep_4 + 226, 1, 7.3 );
setRotateKey( spep_4 + 228, 1, 6.3 );
setRotateKey( spep_4 + 230, 1, 5.5 );
setRotateKey( spep_4 + 232, 1, 4.8 );
setRotateKey( spep_4 + 234, 1, 4.2 );
setRotateKey( spep_4 + 236, 1, 3.6 );
setRotateKey( spep_4 + 238, 1, 3.1 );
setRotateKey( spep_4 + 240, 1, 2.6 );
setRotateKey( spep_4 + 242, 1, 2.2 );
setRotateKey( spep_4 + 244, 1, 1.9 );
setRotateKey( spep_4 + 246, 1, 1.6 );
setRotateKey( spep_4 + 248, 1, 1.3 );
setRotateKey( spep_4 + 250, 1, 1 );
setRotateKey( spep_4 + 252, 1, 0.8 );
setRotateKey( spep_4 + 254, 1, 0.6 );
setRotateKey( spep_4 + 256, 1, 0.5 );
setRotateKey( spep_4 + 258, 1, 0.4 );
setRotateKey( spep_4 + 260, 1, 0.3 );
setRotateKey( spep_4 + 264, 1, 0.3 );

-- ** 音 ** --
tameSE = playSeLife( spep_4 + 2, 15 );  --溜め
stopSe( spep_4 + 68, tameSE, 0 );
playSe( spep_4 + 136, 1024 );  --発射音
playSe( spep_4 + 264, 1023 ); --被弾

-- ** 次の準備 ** --
spep_5 = spep_4 + 308;

------------------------------------------------------
-- 被弾(314F)
------------------------------------------------------

-- ** エフェクト等 ** --
hidan = entryEffect( spep_5 + 0, SP_06, 0x100, -1, 0, 0, 0 );  --被弾(ef_006)
setEffMoveKey( spep_5 + 0, hidan, 0, 0 , 0 );
setEffMoveKey( spep_5 + 314, hidan, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, hidan, 1.0, 1.0 );
setEffScaleKey( spep_5 + 314, hidan, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hidan, 0 );
setEffRotateKey( spep_5 + 314, hidan, 0 );
setEffAlphaKey( spep_5 + 0, hidan, 255 );
setEffAlphaKey( spep_5 + 314, hidan, 255 );

-- ** 音 ** --
playSe( spep_5 + 4, 1069 );  --爆発
playSe( spep_5 + 108, 1068 );  --爆発

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 108 );
entryFade( spep_5 + 304, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_5 + 314 );

end


