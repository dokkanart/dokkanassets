--孫悟空(少年期)&ブルマ(少女期)_ミラクルロマンアドベンチャー

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
SP_01 = 153819;  --突進
SP_02 = 153820;  --横位置突進&攻撃
SP_03 = 153822;  --背景
SP_04 = 153823;  --ヒットエフェクト
SP_05 = 153824;  --背景
SP_06 = 153825;  --ジャンプ&如意棒による攻撃
SP_07 = 153827;  --背景
SP_08 = 153828;  --如意棒&攻撃エフェクト
SP_09 = 153829;  --背景
SP_10 = 153830;  --背景

--敵側
SP_02x = 153821;  --横位置突進&攻撃
SP_06x = 153826;  --ジャンプ&如意棒による攻撃

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
-- 突進(182F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
tosshin = entryEffectLife( spep_0 + 0, SP_01, 182, 0x100, -1, 0, 0, 0 );  --突進(ef_001)
setEffMoveKey( spep_0 + 0, tosshin, 0, 0 , 0 );
setEffMoveKey( spep_0 + 182, tosshin, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tosshin, 1.0, 1.0 );
setEffScaleKey( spep_0 + 182, tosshin, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tosshin, 0 );
setEffRotateKey( spep_0 + 182, tosshin, 0 );
setEffAlphaKey( spep_0 + 0, tosshin, 255 );
setEffAlphaKey( spep_0 + 182, tosshin, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 8, 906, 174, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 8, shuchusen1, 174, 20 );

setEffMoveKey( spep_0 + 8, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 182, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 8, shuchusen1, 1.6, 1.6 );
setEffScaleKey( spep_0 + 182, shuchusen1, 1.6, 1.6 );

setEffRotateKey( spep_0 + 8, shuchusen1, 0 );
setEffRotateKey( spep_0 + 182, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 8, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 182, shuchusen1, 255 );

-- ** 書き文字エントリー ** --
ctzudo = entryEffectLife( spep_0 + 14,  10014, 158, 0x100, -1, 0, -16.8, 91.8 );  --ズドドドッ
setEffShake( spep_0 + 28, ctzudo, 136, 20 );

setEffMoveKey( spep_0 + 14, ctzudo, -16.8, 91.8 , 0 );
setEffMoveKey( spep_0 + 16, ctzudo, -31.2, 129.2 , 0 );
setEffMoveKey( spep_0 + 18, ctzudo, -48.8, 169.8 , 0 );
setEffMoveKey( spep_0 + 20, ctzudo, -61.5, 205.6 , 0 );
setEffMoveKey( spep_0 + 22, ctzudo, -80.8, 247.9 , 0 );
setEffMoveKey( spep_0 + 24, ctzudo, -91.8, 281.9 , 0 );
setEffMoveKey( spep_0 + 26, ctzudo, -112.8, 325.9 , 0 );
setEffMoveKey( spep_0 + 28, ctzudo, -122.1, 358.2 , 0 );
setEffMoveKey( spep_0 + 164, ctzudo, -122.1, 358.2 , 0 );
setEffMoveKey( spep_0 + 166, ctzudo, -137.9, 386.8 , 0 );
setEffMoveKey( spep_0 + 168, ctzudo, -140.8, 396.8 , 0 );
setEffMoveKey( spep_0 + 170, ctzudo, -165.6, 428.6 , 0 );
setEffMoveKey( spep_0 + 172, ctzudo, -162.1, 432.3 , 0 );

setEffScaleKey( spep_0 + 14, ctzudo, 0.16, 0.16 );
setEffScaleKey( spep_0 + 16, ctzudo, 0.38, 0.38 );
setEffScaleKey( spep_0 + 18, ctzudo, 0.6, 0.6 );
setEffScaleKey( spep_0 + 20, ctzudo, 0.79, 0.79 );
setEffScaleKey( spep_0 + 22, ctzudo, 1.02, 1.02 );
setEffScaleKey( spep_0 + 24, ctzudo, 1.24, 1.24 );
setEffScaleKey( spep_0 + 26, ctzudo, 1.43, 1.43 );
setEffScaleKey( spep_0 + 28, ctzudo, 1.65, 1.65 );
setEffScaleKey( spep_0 + 34, ctzudo, 1.65, 1.65 );
setEffScaleKey( spep_0 + 36, ctzudo, 1.68, 1.68 );
setEffScaleKey( spep_0 + 50, ctzudo, 1.68, 1.68 );
setEffScaleKey( spep_0 + 52, ctzudo, 1.71, 1.71 );
setEffScaleKey( spep_0 + 68, ctzudo, 1.71, 1.71 );
setEffScaleKey( spep_0 + 70, ctzudo, 1.74, 1.74 );
setEffScaleKey( spep_0 + 86, ctzudo, 1.74, 1.74 );
setEffScaleKey( spep_0 + 88, ctzudo, 1.78, 1.78 );
setEffScaleKey( spep_0 + 106, ctzudo, 1.78, 1.78 );
setEffScaleKey( spep_0 + 108, ctzudo, 1.81, 1.81 );
setEffScaleKey( spep_0 + 122, ctzudo, 1.81, 1.81 );
setEffScaleKey( spep_0 + 124, ctzudo, 1.84, 1.84 );
setEffScaleKey( spep_0 + 138, ctzudo, 1.84, 1.84 );
setEffScaleKey( spep_0 + 140, ctzudo, 1.87, 1.87 );
setEffScaleKey( spep_0 + 156, ctzudo, 1.87, 1.87 );
setEffScaleKey( spep_0 + 158, ctzudo, 1.9, 1.9 );
setEffScaleKey( spep_0 + 166, ctzudo, 1.9, 1.9 );
setEffScaleKey( spep_0 + 168, ctzudo, 2.66, 2.66 );
setEffScaleKey( spep_0 + 170, ctzudo, 3.43, 3.43 );
setEffScaleKey( spep_0 + 172, ctzudo, 4.19, 4.19 );

setEffRotateKey( spep_0 + 14, ctzudo, -5.5 );
setEffRotateKey( spep_0 + 172, ctzudo, -5.5 );

setEffAlphaKey( spep_0 + 14, ctzudo, 255 );
setEffAlphaKey( spep_0 + 166, ctzudo, 255 );
setEffAlphaKey( spep_0 + 168, ctzudo, 187 );
setEffAlphaKey( spep_0 + 170, ctzudo, 119 );
setEffAlphaKey( spep_0 + 172, ctzudo, 51 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0 + 82, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0 + 82, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 音 ** --
playSe( spep_0 + 0, 1111 );  --迫る足音
setSeVolume(spep_0 + 10, 1111, 90 );
setSeVolume(spep_0 + 30, 1111, 150 );
playSe( spep_0 + 72, 1111 );  --迫る足音
setSeVolume(spep_0 + 72, 1111, 200 );
playSe( spep_0 + 82, SE_04 );  --ゴゴゴ
playSe( spep_0 + 144, 1111 );  --迫る足音
setSeVolume(spep_0 + 160, 1111, 350 );
setSeVolume(spep_0 + 182, 1111, 0 );
playSe( spep_0 + 0, 9 );  --ダッシュ音
setSeVolume(spep_0 + 0, 9, 90 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 182, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 182;

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
playSe( spep_1 + 0, SE_05 );

-- ** 次の準備 ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
spep_2 = spep_1 + 94;

------------------------------------------------------
-- 横位置突進&攻撃(278F)
------------------------------------------------------

-- ** エフェクト等 ** --
yoko_f = entryEffectLife( spep_2 + 0, SP_02, 278, 0x100, -1, 0, 0, 0 );  --横位置突進&攻撃(ef_002)
setEffMoveKey( spep_2 + 0, yoko_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 278, yoko_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, yoko_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 278, yoko_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, yoko_f, 0 );
setEffRotateKey( spep_2 + 278, yoko_f, 0 );
setEffAlphaKey( spep_2 + 0, yoko_f, 255 );
setEffAlphaKey( spep_2 + 278, yoko_f, 255 );

yoko_b = entryEffectLife( spep_2 + 0, SP_03, 278, 0x80, -1, 0, 0, 0 );  --背景(ef_003)
setEffMoveKey( spep_2 + 0, yoko_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 278, yoko_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, yoko_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 278, yoko_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, yoko_b, 0 );
setEffRotateKey( spep_2 + 278, yoko_b, 0 );
setEffAlphaKey( spep_2 + 0, yoko_b, 255 );
setEffAlphaKey( spep_2 + 278, yoko_b, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 278, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
SE1 = playSe( spep_2 + 0, 1111 );  --迫る足音
setSeVolume(spep_2 + 0, 1111, 150 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 100; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe( SP_dodge - 12, SE1, 0 );
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

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_2 + 140 -3, 906, 28, 0x100, -1, 0, 30, 0 );  --集中線
setEffShake( spep_2 + 140 -3, shuchusen2, 28, 20 );

setEffMoveKey( spep_2 + 140 -3, shuchusen2, 30, 0 , 0 );
setEffMoveKey( spep_2 + 168 -3, shuchusen2, 30, 0 , 0 );

setEffScaleKey( spep_2 + 140 -3, shuchusen2, 1.6, 1.6 );
setEffScaleKey( spep_2 + 168 -3, shuchusen2, 1.6, 1.6 );

setEffRotateKey( spep_2 + 140 -3, shuchusen2, 0 );
setEffRotateKey( spep_2 + 168 -3, shuchusen2, 0 );

setEffAlphaKey( spep_2 + 140 -3, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 168 -3, shuchusen2, 255 );

shuchusen3 = entryEffectLife( spep_2 + 200 -3, 906, 78 +3, 0x100, -1, 0, -30, 0 );  --集中線
setEffShake( spep_2 + 200 -3, shuchusen3, 28, 20 );

setEffMoveKey( spep_2 + 200 -3, shuchusen3, -30, 0 , 0 );
setEffMoveKey( spep_2 + 278, shuchusen3, -30, 0 , 0 );

setEffScaleKey( spep_2 + 200 -3, shuchusen3, 1.6, 1.6 );
setEffScaleKey( spep_2 + 278, shuchusen3, 1.6, 1.6 );

setEffRotateKey( spep_2 + 200 -3, shuchusen3, 0 );
setEffRotateKey( spep_2 + 278, shuchusen3, 0 );

setEffAlphaKey( spep_2 + 200 -3, shuchusen3, 255 );
setEffAlphaKey( spep_2 + 278, shuchusen3, 255 );

-- ** 書き文字エントリー ** --
ctzuba = entryEffectLife( spep_2 + 204 -3,  10015, 74 +3, 0x100, -1, 0, -10.4, 303.7 );  --ズババ
setEffShake( spep_2 + 214 -3, ctzuba, 64 +3, 25 );

setEffMoveKey( spep_2 + 204 -3, ctzuba, -10.4, 303.7 , 0 );
setEffMoveKey( spep_2 + 206 -3, ctzuba, 3.3, 319.5 , 0 );
setEffMoveKey( spep_2 + 208 -3, ctzuba, 11.7, 342.9 , 0 );
setEffMoveKey( spep_2 + 210 -3, ctzuba, 23.3, 353.2 , 0 );
setEffMoveKey( spep_2 + 212 -3, ctzuba, 38.1, 373.3 , 0 );
setEffMoveKey( spep_2 + 214 -3, ctzuba, 41.3, 370.1 , 0 );
setEffMoveKey( spep_2 + 278, ctzuba, 41.3, 370.1 , 0 );

setEffScaleKey( spep_2 + 204 -3, ctzuba, 0.63, 0.63 );
setEffScaleKey( spep_2 + 206 -3, ctzuba, 0.9, 0.9 );
setEffScaleKey( spep_2 + 208 -3, ctzuba, 1.2, 1.2 );
setEffScaleKey( spep_2 + 210 -3, ctzuba, 1.47, 1.47 );
setEffScaleKey( spep_2 + 212 -3, ctzuba, 1.77, 1.77 );
setEffScaleKey( spep_2 + 278, ctzuba, 1.77, 1.77 );

setEffRotateKey( spep_2 + 204 -3, ctzuba, -16.6 );
setEffRotateKey( spep_2 + 278, ctzuba, -16.6 );

setEffAlphaKey( spep_2 + 204 -3, ctzuba, 255 );
setEffAlphaKey( spep_2 + 278, ctzuba, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 118 -3, 1, 1 );
setDisp( spep_2 + 184 -3, 1, 0 );
changeAnime( spep_2 + 118 -3, 1, 101 );
changeAnime( spep_2 + 140 -3, 1, 108 );
changeAnime( spep_2 + 148 -3, 1, 106 );

setMoveKey( spep_2 + 118 -3, 1, 740.3, -4 , 0 );
setMoveKey( spep_2 + 120 -3, 1, 713.2, 4 , 0 );
setMoveKey( spep_2 + 122 -3, 1, 634.9, -4 , 0 );
setMoveKey( spep_2 + 124 -3, 1, 564.7, 4 , 0 );
setMoveKey( spep_2 + 126 -3, 1, 502.6, -4 , 0 );
setMoveKey( spep_2 + 128 -3, 1, 432.1, 4 , 0 );
setMoveKey( spep_2 + 130 -3, 1, 353.9, -4 , 0 );
setMoveKey( spep_2 + 132 -3, 1, 307.9, 4 , 0 );
setMoveKey( spep_2 + 134 -3, 1, 270.2, -4 , 0 );
setMoveKey( spep_2 + 136 -3, 1, 224.3, 4 , 0 );
setMoveKey( spep_2 + 139 -3, 1, 170.4, -4 , 0 );
setMoveKey( spep_2 + 140 -3, 1, 124.5, 4 , 0 );
setMoveKey( spep_2 + 142 -3, 1, 134.5, 22.6 , 0 );
setMoveKey( spep_2 + 144 -3, 1, 143.6, 58.7 , 0 );
setMoveKey( spep_2 + 147 -3, 1, 138.3, 82 , 0 );
setMoveKey( spep_2 + 148 -3, 1, 142.9, 118.7 , 0 );
setMoveKey( spep_2 + 150 -3, 1, 158.1, 141.3 , 0 );
setMoveKey( spep_2 + 152 -3, 1, 160, 176.1 , 0 );
setMoveKey( spep_2 + 154 -3, 1, 156.7, 196.9 , 0 );
setMoveKey( spep_2 + 156 -3, 1, 185.3, 235 , 0 );
setMoveKey( spep_2 + 158 -3, 1, 216.4, 254.2 , 0 );
setMoveKey( spep_2 + 160 -3, 1, 242.3, 290.9 , 0 );
setMoveKey( spep_2 + 162 -3, 1, 263.1, 312.9 , 0 );
setMoveKey( spep_2 + 164 -3, 1, 286, 348.4 , 0 );
setMoveKey( spep_2 + 166 -3, 1, 319.9, 369 , 0 );
setMoveKey( spep_2 + 168 -3, 1, 376.8, 441.4 , 0 );
setMoveKey( spep_2 + 170 -3, 1, 419.5, 496.1 , 0 );
setMoveKey( spep_2 + 172 -3, 1, 473.2, 567.6 , 0 );
setMoveKey( spep_2 + 174 -3, 1, 538.1, 623.6 , 0 );
setMoveKey( spep_2 + 176 -3, 1, 588.8, 694.6 , 0 );
setMoveKey( spep_2 + 178 -3, 1, 634.5, 750.2 , 0 );
setMoveKey( spep_2 + 180 -3, 1, 656.3, 758.3 , 0 );
setMoveKey( spep_2 + 182 -3, 1, 679.9, 750.2 , 0 );
setMoveKey( spep_2 + 184 -3, 1, 1679.9, 1750.2 , 0 );

setScaleKey( spep_2 + 118 -3, 1, 1.19, 1.2 );
setScaleKey( spep_2 + 184 -3, 1, 1.19, 1.2 );

setRotateKey( spep_2 + 118 -3, 1, 0 );
setRotateKey( spep_2 + 139 -3, 1, 0 );
setRotateKey( spep_2 + 140 -3, 1, -11.9 );
setRotateKey( spep_2 + 142 -3, 1, -9.5 );
setRotateKey( spep_2 + 144 -3, 1, -7.2 );
setRotateKey( spep_2 + 147 -3, 1, -4.8 );
setRotateKey( spep_2 + 148 -3, 1, -41.8 );
setRotateKey( spep_2 + 150 -3, 1, -39.4 );
setRotateKey( spep_2 + 152 -3, 1, -37 );
setRotateKey( spep_2 + 154 -3, 1, -34.7 );
setRotateKey( spep_2 + 156 -3, 1, -32.3 );
setRotateKey( spep_2 + 158 -3, 1, -30 );
setRotateKey( spep_2 + 160 -3, 1, -27.6 );
setRotateKey( spep_2 + 162 -3, 1, -25.2 );
setRotateKey( spep_2 + 164 -3, 1, -22.9 );
setRotateKey( spep_2 + 166 -3, 1, -20.5 );
setRotateKey( spep_2 + 168 -3, 1, -18.2 );
setRotateKey( spep_2 + 170 -3, 1, -15.8 );
setRotateKey( spep_2 + 172 -3, 1, -13.5 );
setRotateKey( spep_2 + 174 -3, 1, -11.1 );
setRotateKey( spep_2 + 176 -3, 1, -8.7 );
setRotateKey( spep_2 + 178 -3, 1, -6.4 );
setRotateKey( spep_2 + 184 -3, 1, -6.4 );

-- ** 白フェード ** --
entryFade( spep_2 + 264, 10, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_2 + 72, 1111 );  --迫る足音
setSeVolume(spep_2 + 72, 1111, 120 );
playSe( spep_2 + 144, 1111 );  --迫る足音
setSeVolume(spep_2 + 144, 1111, 120 );
playSe( spep_2 + 216, 1111 );  --迫る足音
setSeVolume(spep_2 + 216, 1111, 120 );
setSeVolume(spep_2 + 264, 1111, 70 );
setSeVolume(spep_2 + 278, 1111, 0 );
playSe( spep_2 + 124, 4 );  --偃月刀振る
playSe( spep_2 + 140 -3, 1001 );  --被弾
SE001 = playSe( spep_2 + 200 -3, 1149 );  --マシンガンの音

-- ** 次の準備 ** --
spep_3 = spep_2 + 278;

------------------------------------------------------
-- ヒットエフェクト(58F)
------------------------------------------------------

-- ** エフェクト等 ** --
hit_f = entryEffectLife( spep_3 + 0, SP_04, 58, 0x100, -1, 0, 0, 0 );  --ヒットエフェクト(ef_004)
setEffMoveKey( spep_3 + 0, hit_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 58, hit_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 58, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hit_f, 0 );
setEffRotateKey( spep_3 + 58, hit_f, 0 );
setEffAlphaKey( spep_3 + 0, hit_f, 255 );
setEffAlphaKey( spep_3 + 58, hit_f, 255 );

hit_b = entryEffectLife( spep_3 + 0, SP_05, 58, 0x80, -1, 0, 0, 0 );  --背景(ef_005)
setEffMoveKey( spep_3 + 0, hit_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 58, hit_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 58, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hit_b, 0 );
setEffRotateKey( spep_3 + 58, hit_b, 0 );
setEffAlphaKey( spep_3 + 0, hit_b, 255 );
setEffAlphaKey( spep_3 + 58, hit_b, 255 );

-- ** 流線 ** --
ryusen1 = entryEffectLife( spep_3 + 0,  914, 58, 0x80, -1, 0, 0, 0 );  --流線
setEffMoveKey( spep_3 + 0, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_3 + 58, ryusen1, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, ryusen1, 3.2, 1.6 );
setEffScaleKey( spep_3 + 58, ryusen1, 3.2, 1.6 );

setEffRotateKey( spep_3 + 0, ryusen1, 152 );
setEffRotateKey( spep_3 + 58, ryusen1, 152 );

setEffAlphaKey( spep_3 + 0, ryusen1, 255 );
setEffAlphaKey( spep_3 + 58, ryusen1, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 58 -3, 1, 0 );
changeAnime( spep_3 + 0, 1, 108 );
changeAnime( spep_3 + 22 -3, 1, 106 );

setMoveKey( spep_3 + 0, 1, -576.1, -299.3 , 0 );
setMoveKey( spep_3 + 4 -3, 1, -454, -238.4 , 0 );
setMoveKey( spep_3 + 6 -3, 1, -399.3, -205 , 0 );
setMoveKey( spep_3 + 8 -3, 1, -342.4, -177.6 , 0 );
setMoveKey( spep_3 + 10 -3, 1, -277.2, -143.9 , 0 );
setMoveKey( spep_3 + 12 -3, 1, -222.6, -110.5 , 0 );
setMoveKey( spep_3 + 14 -3, 1, -165.6, -83.1 , 0 );
setMoveKey( spep_3 + 16 -3, 1, -100.5, -49.5 , 0 );
setMoveKey( spep_3 + 18 -3, 1, -50.1, -8.9 , 0 );
setMoveKey( spep_3 + 21 -3, 1, -34.3, -24.6 , 0 );
setMoveKey( spep_3 + 22 -3, 1, -46.4, -6.2 , 0 );
setMoveKey( spep_3 + 24 -3, 1, -20.7, -1.3 , 0 );
setMoveKey( spep_3 + 26 -3, 1, -33.8, 2.5 , 0 );
setMoveKey( spep_3 + 28 -3, 1, -16.6, -9.6 , 0 );
setMoveKey( spep_3 + 30 -3, 1, -28.2, 9.4 , 0 );
setMoveKey( spep_3 + 32 -3, 1, -6.9, 5.5 , 0 );
setMoveKey( spep_3 + 34 -3, 1, -17.4, 13.9 , 0 );
setMoveKey( spep_3 + 36 -3, 1, 1.4, 5.2 , 0 );
setMoveKey( spep_3 + 38 -3, 1, -14.4, 17.1 , 0 );
setMoveKey( spep_3 + 40 -3, 1, 8.9, 16.2 , 0 );
setMoveKey( spep_3 + 42 -3, 1, 1.6, 29 , 0 );
setMoveKey( spep_3 + 44 -3, 1, 14.5, 12.3 , 0 );
setMoveKey( spep_3 + 46 -3, 1, 1.7, 28.8 , 0 );
setMoveKey( spep_3 + 48 -3, 1, 27.5, 30.8 , 0 );
setMoveKey( spep_3 + 50 -3, 1, 15.4, 36.7 , 0 );
setMoveKey( spep_3 + 52 -3, 1, 30, 23.3 , 0 );
setMoveKey( spep_3 + 54 -3, 1, 20.6, 44 , 0 );
setMoveKey( spep_3 + 56 -3, 1, 40.6, 37.9 , 0 );
setMoveKey( spep_3 + 58 -3, 1, 31.8, 47.9 , 0 );

setScaleKey( spep_3 + 0, 1, 1.69, 1.69 );
setScaleKey( spep_3 + 58 -3, 1, 1.69, 1.69 );

setRotateKey( spep_3 + 0, 1, -35.7 );
setRotateKey( spep_3 + 18 -3, 1, -35.7 );
setRotateKey( spep_3 + 21 -3, 1, -34.9 );
setRotateKey( spep_3 + 22 -3, 1, -67.7 );
setRotateKey( spep_3 + 24 -3, 1, -66.9 );
setRotateKey( spep_3 + 26 -3, 1, -66.1 );
setRotateKey( spep_3 + 28 -3, 1, -65.3 );
setRotateKey( spep_3 + 30 -3, 1, -64.6 );
setRotateKey( spep_3 + 32 -3, 1, -63.8 );
setRotateKey( spep_3 + 34 -3, 1, -63 );
setRotateKey( spep_3 + 36 -3, 1, -62.2 );
setRotateKey( spep_3 + 38 -3, 1, -61.5 );
setRotateKey( spep_3 + 40 -3, 1, -60.7 );
setRotateKey( spep_3 + 42 -3, 1, -59.9 );
setRotateKey( spep_3 + 44 -3, 1, -59.2 );
setRotateKey( spep_3 + 46 -3, 1, -58.4 );
setRotateKey( spep_3 + 48 -3, 1, -57.6 );
setRotateKey( spep_3 + 50 -3, 1, -56.8 );
setRotateKey( spep_3 + 52 -3, 1, -56.1 );
setRotateKey( spep_3 + 54 -3, 1, -55.3 );
setRotateKey( spep_3 + 56 -3, 1, -54.5 );
setRotateKey( spep_3 + 58 -3, 1, -53.8 );

-- ** 白フェード ** --
entryFade( spep_3 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 44, 12, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 58, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--SE2 = playSe( spep_3 + 0, 1149 );  --マシンガンの音
--stopSe( spep_3 + 48, SE2, 10 );

-- ** 次の準備 ** --
spep_4 = spep_3 + 58;

------------------------------------------------------
-- ジャンプ&如意棒による攻撃(148F)
------------------------------------------------------

-- ** エフェクト等 ** --
jump_f = entryEffectLife( spep_4 + 0, SP_06, 148, 0x100, -1, 0, 0, 0 );  --ジャンプ&如意棒による攻撃(ef_006)
setEffMoveKey( spep_4 + 0, jump_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 148, jump_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, jump_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 148, jump_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, jump_f, 0 );
setEffRotateKey( spep_4 + 148, jump_f, 0 );
setEffAlphaKey( spep_4 + 0, jump_f, 255 );
setEffAlphaKey( spep_4 + 148, jump_f, 255 );

jump_b = entryEffectLife( spep_4 + 0, SP_07, 148, 0x80, -1, 0, 0, 0 );  --背景(ef_007)
setEffMoveKey( spep_4 + 0, jump_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 148, jump_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, jump_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 148, jump_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, jump_b, 0 );
setEffRotateKey( spep_4 + 148, jump_b, 0 );
setEffAlphaKey( spep_4 + 0, jump_b, 255 );
setEffAlphaKey( spep_4 + 148, jump_b, 255 );

-- ** 流線 ** --
ryusen2 = entryEffectLife( spep_4 + 14 -3,  914, 112, 0x80, -1, 0, 0, 0 );  --流線
setEffMoveKey( spep_4 + 14 -3, ryusen2, 0, 0 , 0 );
setEffMoveKey( spep_4 + 126 -3, ryusen2, 0, 0 , 0 );

setEffScaleKey( spep_4 + 14 -3, ryusen2, 1.5, 1 );
setEffScaleKey( spep_4 + 126 -3, ryusen2, 1.5, 1 );

setEffRotateKey( spep_4 + 14 -3, ryusen2, 90 );
setEffRotateKey( spep_4 + 126 -3, ryusen2, 90 );

setEffAlphaKey( spep_4 + 14 -3, ryusen2, 255 );
setEffAlphaKey( spep_4 + 124 -3, ryusen2, 255 );
setEffAlphaKey( spep_4 + 125 -3, ryusen2, 255 );
setEffAlphaKey( spep_4 + 126 -3, ryusen2, 0 );

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_4 + 126 -3, 906, 22 +3, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_4 + 126 -3, shuchusen4, 22 +3, 20 );

setEffMoveKey( spep_4 + 126 -3, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_4 + 148, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_4 + 126 -3, shuchusen4, 1.6, 1.6 );
setEffScaleKey( spep_4 + 148, shuchusen4, 1.6, 1.6 );

setEffRotateKey( spep_4 + 126 -3, shuchusen4, 0 );
setEffRotateKey( spep_4 + 148, shuchusen4, 0 );

setEffAlphaKey( spep_4 + 126 -3, shuchusen4, 255 );
setEffAlphaKey( spep_4 + 148, shuchusen4, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 148, 0, 0, 0, 0, 180 );  --薄い黒　背景

-- ** 白フェード ** --
entryFade( spep_4 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_4 + 134, 12, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
stopSe( spep_4 + 30, SE001,5);--マシンガン止める
playSe( spep_4 + 16, 1013 );  --ジャンプ
playSe( spep_4 + 30, 1151 );  --如意棒抜く
playSe( spep_4 + 44, 1152 );  --如意棒伸びる音
playSe( spep_4 + 122, 8 );  --如意棒振り下ろす

-- ** 次の準備 ** --
spep_5 = spep_4 + 148;

------------------------------------------------------
-- 如意棒&攻撃エフェクト(98F)
------------------------------------------------------

-- ** エフェクト等 ** --
hidan_f = entryEffectLife( spep_5 + 0, SP_08, 98, 0x100, -1, 0, 0, 0 );  --如意棒&攻撃エフェクト(ef_008)
setEffMoveKey( spep_5 + 0, hidan_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 98, hidan_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, hidan_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 98, hidan_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hidan_f, 0 );
setEffRotateKey( spep_5 + 98, hidan_f, 0 );
setEffAlphaKey( spep_5 + 0, hidan_f, 255 );
setEffAlphaKey( spep_5 + 96, hidan_f, 255 );
setEffAlphaKey( spep_5 + 97, hidan_f, 0 );
setEffAlphaKey( spep_5 + 98, hidan_f, 0 );

hidan_b = entryEffectLife( spep_5 + 0, SP_09, 98, 0x80, -1, 0, 0, 0 );  --背景(ef_009)
setEffMoveKey( spep_5 + 0, hidan_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 98, hidan_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, hidan_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 98, hidan_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hidan_b, 0 );
setEffRotateKey( spep_5 + 98, hidan_b, 0 );
setEffAlphaKey( spep_5 + 0, hidan_b, 255 );
setEffAlphaKey( spep_5 + 96, hidan_b, 255 );
setEffAlphaKey( spep_5 + 97, hidan_b, 0 );
setEffAlphaKey( spep_5 + 98, hidan_b, 0 );

-- ** 書き文字エントリー ** --
ctbago = entryEffectLife( spep_5 + 20 -3,  10021, 36, 0x100, -1, 0, 15.2, -36 );  --バゴ
setEffMoveKey( spep_5 + 20 -3, ctbago, 15.2, -36 , 0 );
setEffMoveKey( spep_5 + 22 -3, ctbago, 18.9, -93.2 , 0 );
setEffMoveKey( spep_5 + 24 -3, ctbago, 13.4, -153.2 , 0 );
setEffMoveKey( spep_5 + 26 -3, ctbago, 21.9, -208.9 , 0 );
setEffMoveKey( spep_5 + 28 -3, ctbago, 12.4, -213.9 , 0 );
setEffMoveKey( spep_5 + 30 -3, ctbago, 22, -212.9 , 0 );
setEffMoveKey( spep_5 + 32 -3, ctbago, 12.4, -217.8 , 0 );
setEffMoveKey( spep_5 + 34 -3, ctbago, 22.3, -216.8 , 0 );
setEffMoveKey( spep_5 + 36 -3, ctbago, 12.3, -221.9 , 0 );
setEffMoveKey( spep_5 + 38 -3, ctbago, 22.4, -220.6 , 0 );
setEffMoveKey( spep_5 + 40 -3, ctbago, 12.1, -225.8 , 0 );
setEffMoveKey( spep_5 + 42 -3, ctbago, 22.5, -224.6 , 0 );
setEffMoveKey( spep_5 + 44 -3, ctbago, 12, -229.8 , 0 );
setEffMoveKey( spep_5 + 46 -3, ctbago, 22.7, -228.5 , 0 );
setEffMoveKey( spep_5 + 48 -3, ctbago, 11.9, -236.7 , 0 );
setEffMoveKey( spep_5 + 50 -3, ctbago, 23, -237.9 , 0 );
setEffMoveKey( spep_5 + 52 -3, ctbago, 11.7, -246.2 , 0 );
setEffMoveKey( spep_5 + 54 -3, ctbago, 23.4, -247.3 , 0 );
setEffMoveKey( spep_5 + 56 -3, ctbago, 23.6, -252.1 , 0 );

setEffScaleKey( spep_5 + 20 -3, ctbago, 0.68, 0.68 );
setEffScaleKey( spep_5 + 22 -3, ctbago, 1.44, 1.44 );
setEffScaleKey( spep_5 + 24 -3, ctbago, 2.19, 2.19 );
setEffScaleKey( spep_5 + 26 -3, ctbago, 2.95, 2.95 );
setEffScaleKey( spep_5 + 28 -3, ctbago, 2.99, 2.99 );
setEffScaleKey( spep_5 + 30 -3, ctbago, 3.03, 3.03 );
setEffScaleKey( spep_5 + 32 -3, ctbago, 3.06, 3.06 );
setEffScaleKey( spep_5 + 34 -3, ctbago, 3.1, 3.1 );
setEffScaleKey( spep_5 + 36 -3, ctbago, 3.14, 3.14 );
setEffScaleKey( spep_5 + 38 -3, ctbago, 3.18, 3.18 );
setEffScaleKey( spep_5 + 40 -3, ctbago, 3.22, 3.22 );
setEffScaleKey( spep_5 + 42 -3, ctbago, 3.26, 3.26 );
setEffScaleKey( spep_5 + 44 -3, ctbago, 3.29, 3.29 );
setEffScaleKey( spep_5 + 46 -3, ctbago, 3.33, 3.33 );
setEffScaleKey( spep_5 + 48 -3, ctbago, 3.43, 3.43 );
setEffScaleKey( spep_5 + 50 -3, ctbago, 3.52, 3.52 );
setEffScaleKey( spep_5 + 52 -3, ctbago, 3.61, 3.61 );
setEffScaleKey( spep_5 + 54 -3, ctbago, 3.71, 3.71 );
setEffScaleKey( spep_5 + 56 -3, ctbago, 3.8, 3.8 );

setEffRotateKey( spep_5 + 20 -3, ctbago, 0 );
setEffRotateKey( spep_5 + 56 -3, ctbago, 0 );

setEffAlphaKey( spep_5 + 20 -3, ctbago, 255 );
setEffAlphaKey( spep_5 + 46 -3, ctbago, 255 );
setEffAlphaKey( spep_5 + 48 -3, ctbago, 204 );
setEffAlphaKey( spep_5 + 50 -3, ctbago, 153 );
setEffAlphaKey( spep_5 + 52 -3, ctbago, 102 );
setEffAlphaKey( spep_5 + 54 -3, ctbago, 51 );
setEffAlphaKey( spep_5 + 56 -3, ctbago, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 98 -1, 1, 1 );
changeAnime( spep_5 + 0, 1, 106 );
changeAnime( spep_5 + 20 -3, 1, 105 );

setMoveKey( spep_5 + 0, 1, -179.4, -205.1 , 0 );
setMoveKey( spep_5 + 4 -3, 1, -115.4, -126.9 , 0 );
setMoveKey( spep_5 + 6 -3, 1, -83.5, -87.9 , 0 );
setMoveKey( spep_5 + 8 -3, 1, -48.3, -46.9 , 0 );
setMoveKey( spep_5 + 10 -3, 1, -19.5, -9.8 , 0 );
setMoveKey( spep_5 + 12 -3, 1, 12.5, 29.1 , 0 );
setMoveKey( spep_5 + 14 -3, 1, 47.5, 70 , 0 );
setMoveKey( spep_5 + 16 -3, 1, 76.6, 107.2 , 0 );
setMoveKey( spep_5 + 19 -3, 1, 108.6, 146.3 , 0 );
setMoveKey( spep_5 + 20 -3, 1, 140.6, 185.3 , 0 );
setMoveKey( spep_5 + 22 -3, 1, 141.8, 214.2 , 0 );
setMoveKey( spep_5 + 24 -3, 1, 167.1, 195.2 , 0 );
setMoveKey( spep_5 + 26 -3, 1, 156.5, 232.2 , 0 );
setMoveKey( spep_5 + 28 -3, 1, 185.7, 233.1 , 0 );
setMoveKey( spep_5 + 30 -3, 1, 179, 266.1 , 0 );
setMoveKey( spep_5 + 32 -3, 1, 204.3, 247 , 0 );
setMoveKey( spep_5 + 34 -3, 1, 184.8, 271.7 , 0 );
setMoveKey( spep_5 + 36 -3, 1, 197.2, 264.3 , 0 );
setMoveKey( spep_5 + 38 -3, 1, 196.9, 265.5 , 0 );
setMoveKey( spep_5 + 40 -3, 1, 198.6, 265 , 0 );
setMoveKey( spep_5 + 42 -3, 1, 197.2, 266.2 , 0 );
setMoveKey( spep_5 + 44 -3, 1, 200, 266.9 , 0 );
setMoveKey( spep_5 + 46 -3, 1, 198.6, 268.2 , 0 );
setMoveKey( spep_5 + 48 -3, 1, 200.1, 267.6 , 0 );
setMoveKey( spep_5 + 50 -3, 1, 198.8, 268.9 , 0 );
setMoveKey( spep_5 + 52 -3, 1, 201.6, 269.5 , 0 );
setMoveKey( spep_5 + 54 -3, 1, 200.3, 270.7 , 0 );
setMoveKey( spep_5 + 56 -3, 1, 201.9, 270.2 , 0 );
setMoveKey( spep_5 + 58 -3, 1, 200.4, 271.4 , 0 );
setMoveKey( spep_5 + 60 -3, 1, 203.3, 272.1 , 0 );
setMoveKey( spep_5 + 62 -3, 1, 201.9, 273.3 , 0 );
setMoveKey( spep_5 + 64 -3, 1, 203.5, 272.8 , 0 );
setMoveKey( spep_5 + 66 -3, 1, 202, 274 , 0 );
setMoveKey( spep_5 + 68 -3, 1, 204.8, 274.6 , 0 );
setMoveKey( spep_5 + 70 -3, 1, 203.5, 275.9 , 0 );
setMoveKey( spep_5 + 72 -3, 1, 205.2, 275.3 , 0 );
setMoveKey( spep_5 + 74 -3, 1, 203.8, 276.7 , 0 );
setMoveKey( spep_5 + 76 -3, 1, 206.5, 277.3 , 0 );
setMoveKey( spep_5 + 78 -3, 1, 205.1, 278.6 , 0 );
setMoveKey( spep_5 + 80 -3, 1, 206.8, 278 , 0 );
setMoveKey( spep_5 + 82 -3, 1, 205.4, 279.2 , 0 );
setMoveKey( spep_5 + 84 -3, 1, 208.2, 279.9 , 0 );
setMoveKey( spep_5 + 86 -3, 1, 206.7, 281.1 , 0 );
setMoveKey( spep_5 + 88 -3, 1, 208.3, 280.5 , 0 );
setMoveKey( spep_5 + 90 -3, 1, 207, 281.8 , 0 );
setMoveKey( spep_5 + 92 -3, 1, 209.9, 282.4 , 0 );
setMoveKey( spep_5 + 94 -3, 1, 208.5, 283.7 , 0 );
setMoveKey( spep_5 + 96 -3, 1, 210, 283.1 , 0 );
setMoveKey( spep_5 + 98 -3, 1, 208.7, 284.3 , 0 );
setMoveKey( spep_5 + 98 -1, 1, 208.7, 284.3 , 0 );

setScaleKey( spep_5 + 0, 1, 1.36, 1.36 );
setScaleKey( spep_5 + 4 -3, 1, 1.35, 1.35 );
setScaleKey( spep_5 + 6 -3, 1, 1.34, 1.34 );
setScaleKey( spep_5 + 8 -3, 1, 1.33, 1.33 );
setScaleKey( spep_5 + 10 -3, 1, 1.33, 1.33 );
setScaleKey( spep_5 + 12 -3, 1, 1.32, 1.32 );
setScaleKey( spep_5 + 14 -3, 1, 1.32, 1.32 );
setScaleKey( spep_5 + 16 -3, 1, 1.31, 1.31 );
setScaleKey( spep_5 + 19 -3, 1, 1.31, 1.31 );
setScaleKey( spep_5 + 20 -3, 1, 1.3, 1.3 );
setScaleKey( spep_5 + 22 -3, 1, 1.15, 1.15 );
setScaleKey( spep_5 + 24 -3, 1, 1, 1 );
setScaleKey( spep_5 + 26 -3, 1, 0.85, 0.85 );
setScaleKey( spep_5 + 28 -3, 1, 0.71, 0.71 );
setScaleKey( spep_5 + 30 -3, 1, 0.56, 0.56 );
setScaleKey( spep_5 + 32 -3, 1, 0.41, 0.41 );
setScaleKey( spep_5 + 34 -3, 1, 0.4, 0.4 );
setScaleKey( spep_5 + 36 -3, 1, 0.39, 0.39 );
setScaleKey( spep_5 + 38 -3, 1, 0.38, 0.38 );
setScaleKey( spep_5 + 40 -3, 1, 0.37, 0.37 );
setScaleKey( spep_5 + 42 -3, 1, 0.36, 0.36 );
setScaleKey( spep_5 + 44 -3, 1, 0.35, 0.35 );
setScaleKey( spep_5 + 46 -3, 1, 0.34, 0.34 );
setScaleKey( spep_5 + 48 -3, 1, 0.33, 0.33 );
setScaleKey( spep_5 + 50 -3, 1, 0.32, 0.32 );
setScaleKey( spep_5 + 52 -3, 1, 0.32, 0.32 );
setScaleKey( spep_5 + 54 -3, 1, 0.31, 0.31 );
setScaleKey( spep_5 + 56 -3, 1, 0.3, 0.3 );
setScaleKey( spep_5 + 58 -3, 1, 0.29, 0.29 );
setScaleKey( spep_5 + 60 -3, 1, 0.28, 0.28 );
setScaleKey( spep_5 + 62 -3, 1, 0.27, 0.27 );
setScaleKey( spep_5 + 64 -3, 1, 0.26, 0.26 );
setScaleKey( spep_5 + 66 -3, 1, 0.25, 0.25 );
setScaleKey( spep_5 + 68 -3, 1, 0.24, 0.24 );
setScaleKey( spep_5 + 70 -3, 1, 0.23, 0.23 );
setScaleKey( spep_5 + 72 -3, 1, 0.22, 0.22 );
setScaleKey( spep_5 + 74 -3, 1, 0.21, 0.21 );
setScaleKey( spep_5 + 76 -3, 1, 0.2, 0.2 );
setScaleKey( spep_5 + 78 -3, 1, 0.19, 0.19 );
setScaleKey( spep_5 + 80 -3, 1, 0.18, 0.18 );
setScaleKey( spep_5 + 82 -3, 1, 0.18, 0.18 );
setScaleKey( spep_5 + 84 -3, 1, 0.17, 0.17 );
setScaleKey( spep_5 + 86 -3, 1, 0.16, 0.16 );
setScaleKey( spep_5 + 88 -3, 1, 0.15, 0.15 );
setScaleKey( spep_5 + 90 -3, 1, 0.14, 0.14 );
setScaleKey( spep_5 + 92 -3, 1, 0.13, 0.13 );
setScaleKey( spep_5 + 94 -3, 1, 0.12, 0.12 );
setScaleKey( spep_5 + 96 -3, 1, 0.11, 0.11 );
setScaleKey( spep_5 + 98 -3, 1, 0.1, 0.1 );
setScaleKey( spep_5 + 98 -1, 1, 0.1, 0.1 );

setRotateKey( spep_5 + 0, 1, -36.7 );
setRotateKey( spep_5 + 19 -3, 1, -36.7 );
setRotateKey( spep_5 + 20 -3, 1, 27.5 );
setRotateKey( spep_5 + 98 -1, 1, 27.5 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 98, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_5 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_5 + 86, 8, 4, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_5 + 20 -3, 1011 );  --被弾

-- ** 次の準備 ** --
spep_6 = spep_5 + 98;

------------------------------------------------------
-- 爆発(100F)
------------------------------------------------------

-- ** 背景 ** --
haikei = entryEffect( spep_6 + 0, SP_10, 0x80, -1, 0, 0, 0 );  --背景
setEffMoveKey( spep_6 + 0, haikei, 0, 0 , 0 );
setEffMoveKey( spep_6 + 100, haikei, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, haikei, 1.0, 1.0 );
setEffScaleKey( spep_6 + 100, haikei, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, haikei, 0 );
setEffRotateKey( spep_6 + 100, haikei, 0 );
setEffAlphaKey( spep_6 + 0, haikei, 255 );
setEffAlphaKey( spep_6 + 100, haikei, 255 );

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

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_6 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_6 + 14, shuchusen1, 32, 25 );

setEffMoveKey( spep_6 + 14, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_6 + 46, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_6 + 14, shuchusen1, 1, 1 );
setEffScaleKey( spep_6 + 46, shuchusen1, 1, 1 );

setEffRotateKey( spep_6 + 14, shuchusen1, 0 );
setEffRotateKey( spep_6 + 46, shuchusen1, 0 );

setEffAlphaKey( spep_6 + 14, shuchusen1, 255 );
setEffAlphaKey( spep_6 + 28, shuchusen1, 255 );
setEffAlphaKey( spep_6 + 30, shuchusen1, 252 );
setEffAlphaKey( spep_6 + 32, shuchusen1, 242 );
setEffAlphaKey( spep_6 + 34, shuchusen1, 227 );
setEffAlphaKey( spep_6 + 36, shuchusen1, 205 );
setEffAlphaKey( spep_6 + 38, shuchusen1, 176 );
setEffAlphaKey( spep_6 + 40, shuchusen1, 142 );
setEffAlphaKey( spep_6 + 42, shuchusen1, 101 );
setEffAlphaKey( spep_6 + 44, shuchusen1, 54 );
setEffAlphaKey( spep_6 + 46, shuchusen1, 0 );

shuchusen2 = entryEffectLife( spep_6 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_6 + 14, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_6 + 100, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_6 + 14, shuchusen2, 1, 1 );
setEffScaleKey( spep_6 + 100, shuchusen2, 1, 1 );

setEffRotateKey( spep_6 + 14, shuchusen2, 0 );
setEffRotateKey( spep_6 + 100, shuchusen2, 0 );

setEffAlphaKey( spep_6 + 14, shuchusen2, 255 );
setEffAlphaKey( spep_6 + 100, shuchusen2, 255 );

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

-- ** 敵キャラクター ** --
setDisp( spep_6 + 0, 1, 1 );
changeAnime( spep_6 + 0, 1, 107 );  --ダメージ 手前

setMoveKey( spep_6 + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_6 + 1, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_6 + 2, 1, 31, -3.9 , 0 );
setMoveKey( spep_6 + 3, 1, 31, -3.9 , 0 );
setMoveKey( spep_6 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_6 + 5, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_6 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_6 + 7, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_6 + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_6 + 9, 1, 15, -65.4 , 0 );
setMoveKey( spep_6 + 10, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_6 + 11, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_6 + 12, 1, -45.3, -142.1 , 0 );  --画面にぶつかる
setMoveKey( spep_6 + 110, 1, -45.3, -142.1 , 0 );

setScaleKey( spep_6 + 0, 1, 0.35, 0.35 );
setScaleKey( spep_6 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_6 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_6 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_6 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_6 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_6 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_6 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_6 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_6 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_6 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_6 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_6 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_6 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_6 + 110, 1, 1.6, 1.6 );

setRotateKey( spep_6 + 0, 1, -40 );
setRotateKey( spep_6 + 1, 1, -40 );
setRotateKey( spep_6 + 2, 1, 80 );
setRotateKey( spep_6 + 3, 1, 80 );
setRotateKey( spep_6 + 4, 1, 200 );
setRotateKey( spep_6 + 5, 1, 200 );
setRotateKey( spep_6 + 6, 1, 360 );
setRotateKey( spep_6 + 7, 1, 360 );
setRotateKey( spep_6 + 8, 1, 558 );
setRotateKey( spep_6 + 9, 1, 558 );
setRotateKey( spep_6 + 10, 1, 425 );
setRotateKey( spep_6 + 11, 1, 425 );
setRotateKey( spep_6 + 12, 1, -40 );
setRotateKey( spep_6 + 110, 1, -40 );

-- ** 音 ** --
playSe( spep_6 + 14, SE_11 );  --割れる音

-- ** ダメージ表示 ** --
dealDamage( spep_6 + 10 );
endPhase( spep_6 + 100 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 突進(182F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
tosshin = entryEffectLife( spep_0 + 0, SP_01, 182, 0x100, -1, 0, 0, 0 );  --突進(ef_001)
setEffMoveKey( spep_0 + 0, tosshin, 0, 0 , 0 );
setEffMoveKey( spep_0 + 182, tosshin, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tosshin, -1.0, 1.0 );
setEffScaleKey( spep_0 + 182, tosshin, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tosshin, 0 );
setEffRotateKey( spep_0 + 182, tosshin, 0 );
setEffAlphaKey( spep_0 + 0, tosshin, 255 );
setEffAlphaKey( spep_0 + 182, tosshin, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 8, 906, 174, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 8, shuchusen1, 174, 20 );

setEffMoveKey( spep_0 + 8, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 182, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 8, shuchusen1, 1.6, 1.6 );
setEffScaleKey( spep_0 + 182, shuchusen1, 1.6, 1.6 );

setEffRotateKey( spep_0 + 8, shuchusen1, 0 );
setEffRotateKey( spep_0 + 182, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 8, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 182, shuchusen1, 255 );

-- ** 書き文字エントリー ** --
ctzudo = entryEffectLife( spep_0 + 14,  10014, 158, 0x100, -1, 0, -16.8, 91.8 );  --ズドドドッ
setEffShake( spep_0 + 28, ctzudo, 136, 20 );

setEffMoveKey( spep_0 + 14, ctzudo, 16.8, 91.8 , 0 );
setEffMoveKey( spep_0 + 16, ctzudo, 31.2, 129.2 , 0 );
setEffMoveKey( spep_0 + 18, ctzudo, 48.8, 169.8 , 0 );
setEffMoveKey( spep_0 + 20, ctzudo, 61.5, 205.6 , 0 );
setEffMoveKey( spep_0 + 22, ctzudo, 80.8, 247.9 , 0 );
setEffMoveKey( spep_0 + 24, ctzudo, 91.8, 281.9 , 0 );
setEffMoveKey( spep_0 + 26, ctzudo, 112.8, 325.9 , 0 );
setEffMoveKey( spep_0 + 28, ctzudo, 122.1, 358.2 , 0 );
setEffMoveKey( spep_0 + 164, ctzudo, 122.1, 358.2 , 0 );
setEffMoveKey( spep_0 + 166, ctzudo, 137.9, 386.8 , 0 );
setEffMoveKey( spep_0 + 168, ctzudo, 140.8, 396.8 , 0 );
setEffMoveKey( spep_0 + 170, ctzudo, 165.6, 428.6 , 0 );
setEffMoveKey( spep_0 + 172, ctzudo, 162.1, 432.3 , 0 );

setEffScaleKey( spep_0 + 14, ctzudo, 0.16, 0.16 );
setEffScaleKey( spep_0 + 16, ctzudo, 0.38, 0.38 );
setEffScaleKey( spep_0 + 18, ctzudo, 0.6, 0.6 );
setEffScaleKey( spep_0 + 20, ctzudo, 0.79, 0.79 );
setEffScaleKey( spep_0 + 22, ctzudo, 1.02, 1.02 );
setEffScaleKey( spep_0 + 24, ctzudo, 1.24, 1.24 );
setEffScaleKey( spep_0 + 26, ctzudo, 1.43, 1.43 );
setEffScaleKey( spep_0 + 28, ctzudo, 1.65, 1.65 );
setEffScaleKey( spep_0 + 34, ctzudo, 1.65, 1.65 );
setEffScaleKey( spep_0 + 36, ctzudo, 1.68, 1.68 );
setEffScaleKey( spep_0 + 50, ctzudo, 1.68, 1.68 );
setEffScaleKey( spep_0 + 52, ctzudo, 1.71, 1.71 );
setEffScaleKey( spep_0 + 68, ctzudo, 1.71, 1.71 );
setEffScaleKey( spep_0 + 70, ctzudo, 1.74, 1.74 );
setEffScaleKey( spep_0 + 86, ctzudo, 1.74, 1.74 );
setEffScaleKey( spep_0 + 88, ctzudo, 1.78, 1.78 );
setEffScaleKey( spep_0 + 106, ctzudo, 1.78, 1.78 );
setEffScaleKey( spep_0 + 108, ctzudo, 1.81, 1.81 );
setEffScaleKey( spep_0 + 122, ctzudo, 1.81, 1.81 );
setEffScaleKey( spep_0 + 124, ctzudo, 1.84, 1.84 );
setEffScaleKey( spep_0 + 138, ctzudo, 1.84, 1.84 );
setEffScaleKey( spep_0 + 140, ctzudo, 1.87, 1.87 );
setEffScaleKey( spep_0 + 156, ctzudo, 1.87, 1.87 );
setEffScaleKey( spep_0 + 158, ctzudo, 1.9, 1.9 );
setEffScaleKey( spep_0 + 166, ctzudo, 1.9, 1.9 );
setEffScaleKey( spep_0 + 168, ctzudo, 2.66, 2.66 );
setEffScaleKey( spep_0 + 170, ctzudo, 3.43, 3.43 );
setEffScaleKey( spep_0 + 172, ctzudo, 4.19, 4.19 );

setEffRotateKey( spep_0 + 14, ctzudo, 5.5 );
setEffRotateKey( spep_0 + 172, ctzudo, 5.5 );

setEffAlphaKey( spep_0 + 14, ctzudo, 255 );
setEffAlphaKey( spep_0 + 166, ctzudo, 255 );
setEffAlphaKey( spep_0 + 168, ctzudo, 187 );
setEffAlphaKey( spep_0 + 170, ctzudo, 119 );
setEffAlphaKey( spep_0 + 172, ctzudo, 51 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0 + 82, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0 + 82, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 音 ** --
playSe( spep_0 + 0, 1111 );  --迫る足音
setSeVolume(spep_0 + 10, 1111, 90 );
setSeVolume(spep_0 + 30, 1111, 150 );
playSe( spep_0 + 72, 1111 );  --迫る足音
setSeVolume(spep_0 + 72, 1111, 200 );
playSe( spep_0 + 82, SE_04 );  --ゴゴゴ
playSe( spep_0 + 144, 1111 );  --迫る足音
setSeVolume(spep_0 + 160, 1111, 350 );
setSeVolume(spep_0 + 182, 1111, 0 );
playSe( spep_0 + 0, 9 ); --ダッシュ音
setSeVolume(spep_0 + 0, 9, 90 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 182, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 182;

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
playSe( spep_1 + 0, SE_05 );

-- ** 次の準備 ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
spep_2 = spep_1 + 94;

------------------------------------------------------
-- 横位置突進&攻撃(278F)
------------------------------------------------------

-- ** エフェクト等 ** --
yoko_f = entryEffectLife( spep_2 + 0, SP_02x, 278, 0x100, -1, 0, 0, 0 );  --横位置突進&攻撃(ef_002)
setEffMoveKey( spep_2 + 0, yoko_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 278, yoko_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, yoko_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 278, yoko_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, yoko_f, 0 );
setEffRotateKey( spep_2 + 278, yoko_f, 0 );
setEffAlphaKey( spep_2 + 0, yoko_f, 255 );
setEffAlphaKey( spep_2 + 278, yoko_f, 255 );

yoko_b = entryEffectLife( spep_2 + 0, SP_03, 278, 0x80, -1, 0, 0, 0 );  --背景(ef_003)
setEffMoveKey( spep_2 + 0, yoko_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 278, yoko_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, yoko_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 278, yoko_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, yoko_b, 0 );
setEffRotateKey( spep_2 + 278, yoko_b, 0 );
setEffAlphaKey( spep_2 + 0, yoko_b, 255 );
setEffAlphaKey( spep_2 + 278, yoko_b, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 278, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
SE1 = playSe( spep_2 + 0, 1111 );  --迫る足音
setSeVolume(spep_2 + 0, 1111, 150 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 100; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe( SP_dodge - 12, SE1, 0 );
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

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_2 + 140 -3, 906, 28, 0x100, -1, 0, 30, 0 );  --集中線
setEffShake( spep_2 + 140 -3, shuchusen2, 28, 20 );

setEffMoveKey( spep_2 + 140 -3, shuchusen2, 30, 0 , 0 );
setEffMoveKey( spep_2 + 168 -3, shuchusen2, 30, 0 , 0 );

setEffScaleKey( spep_2 + 140 -3, shuchusen2, 1.6, 1.6 );
setEffScaleKey( spep_2 + 168 -3, shuchusen2, 1.6, 1.6 );

setEffRotateKey( spep_2 + 140 -3, shuchusen2, 0 );
setEffRotateKey( spep_2 + 168 -3, shuchusen2, 0 );

setEffAlphaKey( spep_2 + 140 -3, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 168 -3, shuchusen2, 255 );

shuchusen3 = entryEffectLife( spep_2 + 200 -3, 906, 78 +3, 0x100, -1, 0, -30, 0 );  --集中線
setEffShake( spep_2 + 200 -3, shuchusen3, 28, 20 );

setEffMoveKey( spep_2 + 200 -3, shuchusen3, -30, 0 , 0 );
setEffMoveKey( spep_2 + 278, shuchusen3, -30, 0 , 0 );

setEffScaleKey( spep_2 + 200 -3, shuchusen3, 1.6, 1.6 );
setEffScaleKey( spep_2 + 278, shuchusen3, 1.6, 1.6 );

setEffRotateKey( spep_2 + 200 -3, shuchusen3, 0 );
setEffRotateKey( spep_2 + 278, shuchusen3, 0 );

setEffAlphaKey( spep_2 + 200 -3, shuchusen3, 255 );
setEffAlphaKey( spep_2 + 278, shuchusen3, 255 );

-- ** 書き文字エントリー ** --
ctzuba = entryEffectLife( spep_2 + 204 -3,  10015, 74 +3, 0x100, -1, 0, -10.4, 303.7 );  --ズババ
setEffShake( spep_2 + 214 -3, ctzuba, 64 +3, 25 );

setEffMoveKey( spep_2 + 204 -3, ctzuba, -10.4, 303.7 , 0 );
setEffMoveKey( spep_2 + 206 -3, ctzuba, 3.3, 319.5 , 0 );
setEffMoveKey( spep_2 + 208 -3, ctzuba, 11.7, 342.9 , 0 );
setEffMoveKey( spep_2 + 210 -3, ctzuba, 23.3, 353.2 , 0 );
setEffMoveKey( spep_2 + 212 -3, ctzuba, 38.1, 373.3 , 0 );
setEffMoveKey( spep_2 + 214 -3, ctzuba, 41.3, 370.1 , 0 );
setEffMoveKey( spep_2 + 278, ctzuba, 41.3, 370.1 , 0 );

setEffScaleKey( spep_2 + 204 -3, ctzuba, 0.63, 0.63 );
setEffScaleKey( spep_2 + 206 -3, ctzuba, 0.9, 0.9 );
setEffScaleKey( spep_2 + 208 -3, ctzuba, 1.2, 1.2 );
setEffScaleKey( spep_2 + 210 -3, ctzuba, 1.47, 1.47 );
setEffScaleKey( spep_2 + 212 -3, ctzuba, 1.77, 1.77 );
setEffScaleKey( spep_2 + 278, ctzuba, 1.77, 1.77 );

setEffRotateKey( spep_2 + 204 -3, ctzuba, -16.6 );
setEffRotateKey( spep_2 + 278, ctzuba, -16.6 );

setEffAlphaKey( spep_2 + 204 -3, ctzuba, 255 );
setEffAlphaKey( spep_2 + 278, ctzuba, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 118 -3, 1, 1 );
setDisp( spep_2 + 184 -3, 1, 0 );
changeAnime( spep_2 + 118 -3, 1, 101 );
changeAnime( spep_2 + 140 -3, 1, 108 );
changeAnime( spep_2 + 148 -3, 1, 106 );

setMoveKey( spep_2 + 118 -3, 1, 740.3, -4 , 0 );
setMoveKey( spep_2 + 120 -3, 1, 713.2, 4 , 0 );
setMoveKey( spep_2 + 122 -3, 1, 634.9, -4 , 0 );
setMoveKey( spep_2 + 124 -3, 1, 564.7, 4 , 0 );
setMoveKey( spep_2 + 126 -3, 1, 502.6, -4 , 0 );
setMoveKey( spep_2 + 128 -3, 1, 432.1, 4 , 0 );
setMoveKey( spep_2 + 130 -3, 1, 353.9, -4 , 0 );
setMoveKey( spep_2 + 132 -3, 1, 307.9, 4 , 0 );
setMoveKey( spep_2 + 134 -3, 1, 270.2, -4 , 0 );
setMoveKey( spep_2 + 136 -3, 1, 224.3, 4 , 0 );
setMoveKey( spep_2 + 139 -3, 1, 170.4, -4 , 0 );
setMoveKey( spep_2 + 140 -3, 1, 124.5, 4 , 0 );
setMoveKey( spep_2 + 142 -3, 1, 134.5, 22.6 , 0 );
setMoveKey( spep_2 + 144 -3, 1, 143.6, 58.7 , 0 );
setMoveKey( spep_2 + 147 -3, 1, 138.3, 82 , 0 );
setMoveKey( spep_2 + 148 -3, 1, 142.9, 118.7 , 0 );
setMoveKey( spep_2 + 150 -3, 1, 158.1, 141.3 , 0 );
setMoveKey( spep_2 + 152 -3, 1, 160, 176.1 , 0 );
setMoveKey( spep_2 + 154 -3, 1, 156.7, 196.9 , 0 );
setMoveKey( spep_2 + 156 -3, 1, 185.3, 235 , 0 );
setMoveKey( spep_2 + 158 -3, 1, 216.4, 254.2 , 0 );
setMoveKey( spep_2 + 160 -3, 1, 242.3, 290.9 , 0 );
setMoveKey( spep_2 + 162 -3, 1, 263.1, 312.9 , 0 );
setMoveKey( spep_2 + 164 -3, 1, 286, 348.4 , 0 );
setMoveKey( spep_2 + 166 -3, 1, 319.9, 369 , 0 );
setMoveKey( spep_2 + 168 -3, 1, 376.8, 441.4 , 0 );
setMoveKey( spep_2 + 170 -3, 1, 419.5, 496.1 , 0 );
setMoveKey( spep_2 + 172 -3, 1, 473.2, 567.6 , 0 );
setMoveKey( spep_2 + 174 -3, 1, 538.1, 623.6 , 0 );
setMoveKey( spep_2 + 176 -3, 1, 588.8, 694.6 , 0 );
setMoveKey( spep_2 + 178 -3, 1, 634.5, 750.2 , 0 );
setMoveKey( spep_2 + 180 -3, 1, 656.3, 758.3 , 0 );
setMoveKey( spep_2 + 182 -3, 1, 679.9, 750.2 , 0 );
setMoveKey( spep_2 + 184 -3, 1, 1679.9, 1750.2 , 0 );

setScaleKey( spep_2 + 118 -3, 1, 1.19, 1.2 );
setScaleKey( spep_2 + 184 -3, 1, 1.19, 1.2 );

setRotateKey( spep_2 + 118 -3, 1, 0 );
setRotateKey( spep_2 + 139 -3, 1, 0 );
setRotateKey( spep_2 + 140 -3, 1, -11.9 );
setRotateKey( spep_2 + 142 -3, 1, -9.5 );
setRotateKey( spep_2 + 144 -3, 1, -7.2 );
setRotateKey( spep_2 + 147 -3, 1, -4.8 );
setRotateKey( spep_2 + 148 -3, 1, -41.8 );
setRotateKey( spep_2 + 150 -3, 1, -39.4 );
setRotateKey( spep_2 + 152 -3, 1, -37 );
setRotateKey( spep_2 + 154 -3, 1, -34.7 );
setRotateKey( spep_2 + 156 -3, 1, -32.3 );
setRotateKey( spep_2 + 158 -3, 1, -30 );
setRotateKey( spep_2 + 160 -3, 1, -27.6 );
setRotateKey( spep_2 + 162 -3, 1, -25.2 );
setRotateKey( spep_2 + 164 -3, 1, -22.9 );
setRotateKey( spep_2 + 166 -3, 1, -20.5 );
setRotateKey( spep_2 + 168 -3, 1, -18.2 );
setRotateKey( spep_2 + 170 -3, 1, -15.8 );
setRotateKey( spep_2 + 172 -3, 1, -13.5 );
setRotateKey( spep_2 + 174 -3, 1, -11.1 );
setRotateKey( spep_2 + 176 -3, 1, -8.7 );
setRotateKey( spep_2 + 178 -3, 1, -6.4 );
setRotateKey( spep_2 + 184 -3, 1, -6.4 );

-- ** 白フェード ** --
entryFade( spep_2 + 264, 10, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_2 + 72, 1111 );  --迫る足音
setSeVolume(spep_2 + 72, 1111, 120 );
playSe( spep_2 + 144, 1111 );  --迫る足音
setSeVolume(spep_2 + 144, 1111, 120 );
playSe( spep_2 + 216, 1111 );  --迫る足音
setSeVolume(spep_2 + 216, 1111, 120 );
setSeVolume(spep_2 + 264, 1111, 70 );
setSeVolume(spep_2 + 278, 1111, 0 );
playSe( spep_2 + 124, 4 );  --偃月刀振る
playSe( spep_2 + 140 -3, 1001 );  --被弾
SE001 = playSe( spep_2 + 200 -3, 1149 );  --マシンガンの音

-- ** 次の準備 ** --
spep_3 = spep_2 + 278;

------------------------------------------------------
-- ヒットエフェクト(58F)
------------------------------------------------------

-- ** エフェクト等 ** --
hit_f = entryEffectLife( spep_3 + 0, SP_04, 58, 0x100, -1, 0, 0, 0 );  --ヒットエフェクト(ef_004)
setEffMoveKey( spep_3 + 0, hit_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 58, hit_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 58, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hit_f, 0 );
setEffRotateKey( spep_3 + 58, hit_f, 0 );
setEffAlphaKey( spep_3 + 0, hit_f, 255 );
setEffAlphaKey( spep_3 + 58, hit_f, 255 );

hit_b = entryEffectLife( spep_3 + 0, SP_05, 58, 0x80, -1, 0, 0, 0 );  --背景(ef_005)
setEffMoveKey( spep_3 + 0, hit_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 58, hit_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 58, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hit_b, 0 );
setEffRotateKey( spep_3 + 58, hit_b, 0 );
setEffAlphaKey( spep_3 + 0, hit_b, 255 );
setEffAlphaKey( spep_3 + 58, hit_b, 255 );

-- ** 流線 ** --
ryusen1 = entryEffectLife( spep_3 + 0,  914, 58, 0x80, -1, 0, 0, 0 );  --流線
setEffMoveKey( spep_3 + 0, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_3 + 58, ryusen1, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, ryusen1, 3.2, 1.6 );
setEffScaleKey( spep_3 + 58, ryusen1, 3.2, 1.6 );

setEffRotateKey( spep_3 + 0, ryusen1, 152 );
setEffRotateKey( spep_3 + 58, ryusen1, 152 );

setEffAlphaKey( spep_3 + 0, ryusen1, 255 );
setEffAlphaKey( spep_3 + 58, ryusen1, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 58 -3, 1, 0 );
changeAnime( spep_3 + 0, 1, 108 );
changeAnime( spep_3 + 22 -3, 1, 106 );

setMoveKey( spep_3 + 0, 1, -576.1, -299.3 , 0 );
setMoveKey( spep_3 + 4 -3, 1, -454, -238.4 , 0 );
setMoveKey( spep_3 + 6 -3, 1, -399.3, -205 , 0 );
setMoveKey( spep_3 + 8 -3, 1, -342.4, -177.6 , 0 );
setMoveKey( spep_3 + 10 -3, 1, -277.2, -143.9 , 0 );
setMoveKey( spep_3 + 12 -3, 1, -222.6, -110.5 , 0 );
setMoveKey( spep_3 + 14 -3, 1, -165.6, -83.1 , 0 );
setMoveKey( spep_3 + 16 -3, 1, -100.5, -49.5 , 0 );
setMoveKey( spep_3 + 18 -3, 1, -50.1, -8.9 , 0 );
setMoveKey( spep_3 + 21 -3, 1, -34.3, -24.6 , 0 );
setMoveKey( spep_3 + 22 -3, 1, -46.4, -6.2 , 0 );
setMoveKey( spep_3 + 24 -3, 1, -20.7, -1.3 , 0 );
setMoveKey( spep_3 + 26 -3, 1, -33.8, 2.5 , 0 );
setMoveKey( spep_3 + 28 -3, 1, -16.6, -9.6 , 0 );
setMoveKey( spep_3 + 30 -3, 1, -28.2, 9.4 , 0 );
setMoveKey( spep_3 + 32 -3, 1, -6.9, 5.5 , 0 );
setMoveKey( spep_3 + 34 -3, 1, -17.4, 13.9 , 0 );
setMoveKey( spep_3 + 36 -3, 1, 1.4, 5.2 , 0 );
setMoveKey( spep_3 + 38 -3, 1, -14.4, 17.1 , 0 );
setMoveKey( spep_3 + 40 -3, 1, 8.9, 16.2 , 0 );
setMoveKey( spep_3 + 42 -3, 1, 1.6, 29 , 0 );
setMoveKey( spep_3 + 44 -3, 1, 14.5, 12.3 , 0 );
setMoveKey( spep_3 + 46 -3, 1, 1.7, 28.8 , 0 );
setMoveKey( spep_3 + 48 -3, 1, 27.5, 30.8 , 0 );
setMoveKey( spep_3 + 50 -3, 1, 15.4, 36.7 , 0 );
setMoveKey( spep_3 + 52 -3, 1, 30, 23.3 , 0 );
setMoveKey( spep_3 + 54 -3, 1, 20.6, 44 , 0 );
setMoveKey( spep_3 + 56 -3, 1, 40.6, 37.9 , 0 );
setMoveKey( spep_3 + 58 -3, 1, 31.8, 47.9 , 0 );

setScaleKey( spep_3 + 0, 1, 1.69, 1.69 );
setScaleKey( spep_3 + 58 -3, 1, 1.69, 1.69 );

setRotateKey( spep_3 + 0, 1, -35.7 );
setRotateKey( spep_3 + 18 -3, 1, -35.7 );
setRotateKey( spep_3 + 21 -3, 1, -34.9 );
setRotateKey( spep_3 + 22 -3, 1, -67.7 );
setRotateKey( spep_3 + 24 -3, 1, -66.9 );
setRotateKey( spep_3 + 26 -3, 1, -66.1 );
setRotateKey( spep_3 + 28 -3, 1, -65.3 );
setRotateKey( spep_3 + 30 -3, 1, -64.6 );
setRotateKey( spep_3 + 32 -3, 1, -63.8 );
setRotateKey( spep_3 + 34 -3, 1, -63 );
setRotateKey( spep_3 + 36 -3, 1, -62.2 );
setRotateKey( spep_3 + 38 -3, 1, -61.5 );
setRotateKey( spep_3 + 40 -3, 1, -60.7 );
setRotateKey( spep_3 + 42 -3, 1, -59.9 );
setRotateKey( spep_3 + 44 -3, 1, -59.2 );
setRotateKey( spep_3 + 46 -3, 1, -58.4 );
setRotateKey( spep_3 + 48 -3, 1, -57.6 );
setRotateKey( spep_3 + 50 -3, 1, -56.8 );
setRotateKey( spep_3 + 52 -3, 1, -56.1 );
setRotateKey( spep_3 + 54 -3, 1, -55.3 );
setRotateKey( spep_3 + 56 -3, 1, -54.5 );
setRotateKey( spep_3 + 58 -3, 1, -53.8 );

-- ** 白フェード ** --
entryFade( spep_3 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 44, 12, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 58, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--SE2 = playSe( spep_3 + 0, 1149 );  --マシンガンの音
--stopSe( spep_3 + 48, SE2, 10 );

-- ** 次の準備 ** --
spep_4 = spep_3 + 58;

------------------------------------------------------
-- ジャンプ&如意棒による攻撃(148F)
------------------------------------------------------

-- ** エフェクト等 ** --
jump_f = entryEffectLife( spep_4 + 0, SP_06x, 148, 0x100, -1, 0, 0, 0 );  --ジャンプ&如意棒による攻撃(ef_006)
setEffMoveKey( spep_4 + 0, jump_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 148, jump_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, jump_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 148, jump_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, jump_f, 0 );
setEffRotateKey( spep_4 + 148, jump_f, 0 );
setEffAlphaKey( spep_4 + 0, jump_f, 255 );
setEffAlphaKey( spep_4 + 148, jump_f, 255 );

jump_b = entryEffectLife( spep_4 + 0, SP_07, 148, 0x80, -1, 0, 0, 0 );  --背景(ef_007)
setEffMoveKey( spep_4 + 0, jump_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 148, jump_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, jump_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 148, jump_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, jump_b, 0 );
setEffRotateKey( spep_4 + 148, jump_b, 0 );
setEffAlphaKey( spep_4 + 0, jump_b, 255 );
setEffAlphaKey( spep_4 + 148, jump_b, 255 );

-- ** 流線 ** --
ryusen2 = entryEffectLife( spep_4 + 14 -3,  914, 112, 0x80, -1, 0, 0, 0 );  --流線
setEffMoveKey( spep_4 + 14 -3, ryusen2, 0, 0 , 0 );
setEffMoveKey( spep_4 + 126 -3, ryusen2, 0, 0 , 0 );

setEffScaleKey( spep_4 + 14 -3, ryusen2, 1.5, 1 );
setEffScaleKey( spep_4 + 126 -3, ryusen2, 1.5, 1 );

setEffRotateKey( spep_4 + 14 -3, ryusen2, 90 );
setEffRotateKey( spep_4 + 126 -3, ryusen2, 90 );

setEffAlphaKey( spep_4 + 14 -3, ryusen2, 255 );
setEffAlphaKey( spep_4 + 124 -3, ryusen2, 255 );
setEffAlphaKey( spep_4 + 125 -3, ryusen2, 255 );
setEffAlphaKey( spep_4 + 126 -3, ryusen2, 0 );

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_4 + 126 -3, 906, 22 +3, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_4 + 126 -3, shuchusen4, 22 +3, 20 );

setEffMoveKey( spep_4 + 126 -3, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_4 + 148, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_4 + 126 -3, shuchusen4, 1.6, 1.6 );
setEffScaleKey( spep_4 + 148, shuchusen4, 1.6, 1.6 );

setEffRotateKey( spep_4 + 126 -3, shuchusen4, 0 );
setEffRotateKey( spep_4 + 148, shuchusen4, 0 );

setEffAlphaKey( spep_4 + 126 -3, shuchusen4, 255 );
setEffAlphaKey( spep_4 + 148, shuchusen4, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 148, 0, 0, 0, 0, 180 );  --薄い黒　背景

-- ** 白フェード ** --
entryFade( spep_4 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_4 + 134, 12, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
stopSe( spep_4 + 30, SE001,5);--マシンガン止める
playSe( spep_4 + 16, 1013 );  --ジャンプ
playSe( spep_4 + 30, 1151 );  --如意棒抜く
playSe( spep_4 + 44, 1152 );  --如意棒伸びる音
playSe( spep_4 + 122, 8 );  --如意棒振り下ろす

-- ** 次の準備 ** --
spep_5 = spep_4 + 148;

------------------------------------------------------
-- 如意棒&攻撃エフェクト(98F)
------------------------------------------------------

-- ** エフェクト等 ** --
hidan_f = entryEffectLife( spep_5 + 0, SP_08, 98, 0x100, -1, 0, 0, 0 );  --如意棒&攻撃エフェクト(ef_008)
setEffMoveKey( spep_5 + 0, hidan_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 98, hidan_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, hidan_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 98, hidan_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hidan_f, 0 );
setEffRotateKey( spep_5 + 98, hidan_f, 0 );
setEffAlphaKey( spep_5 + 0, hidan_f, 255 );
setEffAlphaKey( spep_5 + 96, hidan_f, 255 );
setEffAlphaKey( spep_5 + 97, hidan_f, 0 );
setEffAlphaKey( spep_5 + 98, hidan_f, 0 );

hidan_b = entryEffectLife( spep_5 + 0, SP_09, 98, 0x80, -1, 0, 0, 0 );  --背景(ef_009)
setEffMoveKey( spep_5 + 0, hidan_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 98, hidan_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, hidan_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 98, hidan_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hidan_b, 0 );
setEffRotateKey( spep_5 + 98, hidan_b, 0 );
setEffAlphaKey( spep_5 + 0, hidan_b, 255 );
setEffAlphaKey( spep_5 + 96, hidan_b, 255 );
setEffAlphaKey( spep_5 + 97, hidan_b, 0 );
setEffAlphaKey( spep_5 + 98, hidan_b, 0 );

-- ** 書き文字エントリー ** --
ctbago = entryEffectLife( spep_5 + 20 -3,  10021, 36, 0x100, -1, 0, 15.2, -36 );  --バゴ
setEffMoveKey( spep_5 + 20 -3, ctbago, 15.2, -36 , 0 );
setEffMoveKey( spep_5 + 22 -3, ctbago, 18.9, -93.2 , 0 );
setEffMoveKey( spep_5 + 24 -3, ctbago, 13.4, -153.2 , 0 );
setEffMoveKey( spep_5 + 26 -3, ctbago, 21.9, -208.9 , 0 );
setEffMoveKey( spep_5 + 28 -3, ctbago, 12.4, -213.9 , 0 );
setEffMoveKey( spep_5 + 30 -3, ctbago, 22, -212.9 , 0 );
setEffMoveKey( spep_5 + 32 -3, ctbago, 12.4, -217.8 , 0 );
setEffMoveKey( spep_5 + 34 -3, ctbago, 22.3, -216.8 , 0 );
setEffMoveKey( spep_5 + 36 -3, ctbago, 12.3, -221.9 , 0 );
setEffMoveKey( spep_5 + 38 -3, ctbago, 22.4, -220.6 , 0 );
setEffMoveKey( spep_5 + 40 -3, ctbago, 12.1, -225.8 , 0 );
setEffMoveKey( spep_5 + 42 -3, ctbago, 22.5, -224.6 , 0 );
setEffMoveKey( spep_5 + 44 -3, ctbago, 12, -229.8 , 0 );
setEffMoveKey( spep_5 + 46 -3, ctbago, 22.7, -228.5 , 0 );
setEffMoveKey( spep_5 + 48 -3, ctbago, 11.9, -236.7 , 0 );
setEffMoveKey( spep_5 + 50 -3, ctbago, 23, -237.9 , 0 );
setEffMoveKey( spep_5 + 52 -3, ctbago, 11.7, -246.2 , 0 );
setEffMoveKey( spep_5 + 54 -3, ctbago, 23.4, -247.3 , 0 );
setEffMoveKey( spep_5 + 56 -3, ctbago, 23.6, -252.1 , 0 );

setEffScaleKey( spep_5 + 20 -3, ctbago, 0.68, 0.68 );
setEffScaleKey( spep_5 + 22 -3, ctbago, 1.44, 1.44 );
setEffScaleKey( spep_5 + 24 -3, ctbago, 2.19, 2.19 );
setEffScaleKey( spep_5 + 26 -3, ctbago, 2.95, 2.95 );
setEffScaleKey( spep_5 + 28 -3, ctbago, 2.99, 2.99 );
setEffScaleKey( spep_5 + 30 -3, ctbago, 3.03, 3.03 );
setEffScaleKey( spep_5 + 32 -3, ctbago, 3.06, 3.06 );
setEffScaleKey( spep_5 + 34 -3, ctbago, 3.1, 3.1 );
setEffScaleKey( spep_5 + 36 -3, ctbago, 3.14, 3.14 );
setEffScaleKey( spep_5 + 38 -3, ctbago, 3.18, 3.18 );
setEffScaleKey( spep_5 + 40 -3, ctbago, 3.22, 3.22 );
setEffScaleKey( spep_5 + 42 -3, ctbago, 3.26, 3.26 );
setEffScaleKey( spep_5 + 44 -3, ctbago, 3.29, 3.29 );
setEffScaleKey( spep_5 + 46 -3, ctbago, 3.33, 3.33 );
setEffScaleKey( spep_5 + 48 -3, ctbago, 3.43, 3.43 );
setEffScaleKey( spep_5 + 50 -3, ctbago, 3.52, 3.52 );
setEffScaleKey( spep_5 + 52 -3, ctbago, 3.61, 3.61 );
setEffScaleKey( spep_5 + 54 -3, ctbago, 3.71, 3.71 );
setEffScaleKey( spep_5 + 56 -3, ctbago, 3.8, 3.8 );

setEffRotateKey( spep_5 + 20 -3, ctbago, 0 );
setEffRotateKey( spep_5 + 56 -3, ctbago, 0 );

setEffAlphaKey( spep_5 + 20 -3, ctbago, 255 );
setEffAlphaKey( spep_5 + 46 -3, ctbago, 255 );
setEffAlphaKey( spep_5 + 48 -3, ctbago, 204 );
setEffAlphaKey( spep_5 + 50 -3, ctbago, 153 );
setEffAlphaKey( spep_5 + 52 -3, ctbago, 102 );
setEffAlphaKey( spep_5 + 54 -3, ctbago, 51 );
setEffAlphaKey( spep_5 + 56 -3, ctbago, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 98 -1, 1, 1 );
changeAnime( spep_5 + 0, 1, 106 );
changeAnime( spep_5 + 20 -3, 1, 105 );

setMoveKey( spep_5 + 0, 1, -179.4, -205.1 , 0 );
setMoveKey( spep_5 + 4 -3, 1, -115.4, -126.9 , 0 );
setMoveKey( spep_5 + 6 -3, 1, -83.5, -87.9 , 0 );
setMoveKey( spep_5 + 8 -3, 1, -48.3, -46.9 , 0 );
setMoveKey( spep_5 + 10 -3, 1, -19.5, -9.8 , 0 );
setMoveKey( spep_5 + 12 -3, 1, 12.5, 29.1 , 0 );
setMoveKey( spep_5 + 14 -3, 1, 47.5, 70 , 0 );
setMoveKey( spep_5 + 16 -3, 1, 76.6, 107.2 , 0 );
setMoveKey( spep_5 + 19 -3, 1, 108.6, 146.3 , 0 );
setMoveKey( spep_5 + 20 -3, 1, 140.6, 185.3 , 0 );
setMoveKey( spep_5 + 22 -3, 1, 141.8, 214.2 , 0 );
setMoveKey( spep_5 + 24 -3, 1, 167.1, 195.2 , 0 );
setMoveKey( spep_5 + 26 -3, 1, 156.5, 232.2 , 0 );
setMoveKey( spep_5 + 28 -3, 1, 185.7, 233.1 , 0 );
setMoveKey( spep_5 + 30 -3, 1, 179, 266.1 , 0 );
setMoveKey( spep_5 + 32 -3, 1, 204.3, 247 , 0 );
setMoveKey( spep_5 + 34 -3, 1, 184.8, 271.7 , 0 );
setMoveKey( spep_5 + 36 -3, 1, 197.2, 264.3 , 0 );
setMoveKey( spep_5 + 38 -3, 1, 196.9, 265.5 , 0 );
setMoveKey( spep_5 + 40 -3, 1, 198.6, 265 , 0 );
setMoveKey( spep_5 + 42 -3, 1, 197.2, 266.2 , 0 );
setMoveKey( spep_5 + 44 -3, 1, 200, 266.9 , 0 );
setMoveKey( spep_5 + 46 -3, 1, 198.6, 268.2 , 0 );
setMoveKey( spep_5 + 48 -3, 1, 200.1, 267.6 , 0 );
setMoveKey( spep_5 + 50 -3, 1, 198.8, 268.9 , 0 );
setMoveKey( spep_5 + 52 -3, 1, 201.6, 269.5 , 0 );
setMoveKey( spep_5 + 54 -3, 1, 200.3, 270.7 , 0 );
setMoveKey( spep_5 + 56 -3, 1, 201.9, 270.2 , 0 );
setMoveKey( spep_5 + 58 -3, 1, 200.4, 271.4 , 0 );
setMoveKey( spep_5 + 60 -3, 1, 203.3, 272.1 , 0 );
setMoveKey( spep_5 + 62 -3, 1, 201.9, 273.3 , 0 );
setMoveKey( spep_5 + 64 -3, 1, 203.5, 272.8 , 0 );
setMoveKey( spep_5 + 66 -3, 1, 202, 274 , 0 );
setMoveKey( spep_5 + 68 -3, 1, 204.8, 274.6 , 0 );
setMoveKey( spep_5 + 70 -3, 1, 203.5, 275.9 , 0 );
setMoveKey( spep_5 + 72 -3, 1, 205.2, 275.3 , 0 );
setMoveKey( spep_5 + 74 -3, 1, 203.8, 276.7 , 0 );
setMoveKey( spep_5 + 76 -3, 1, 206.5, 277.3 , 0 );
setMoveKey( spep_5 + 78 -3, 1, 205.1, 278.6 , 0 );
setMoveKey( spep_5 + 80 -3, 1, 206.8, 278 , 0 );
setMoveKey( spep_5 + 82 -3, 1, 205.4, 279.2 , 0 );
setMoveKey( spep_5 + 84 -3, 1, 208.2, 279.9 , 0 );
setMoveKey( spep_5 + 86 -3, 1, 206.7, 281.1 , 0 );
setMoveKey( spep_5 + 88 -3, 1, 208.3, 280.5 , 0 );
setMoveKey( spep_5 + 90 -3, 1, 207, 281.8 , 0 );
setMoveKey( spep_5 + 92 -3, 1, 209.9, 282.4 , 0 );
setMoveKey( spep_5 + 94 -3, 1, 208.5, 283.7 , 0 );
setMoveKey( spep_5 + 96 -3, 1, 210, 283.1 , 0 );
setMoveKey( spep_5 + 98 -3, 1, 208.7, 284.3 , 0 );
setMoveKey( spep_5 + 98 -1, 1, 208.7, 284.3 , 0 );

setScaleKey( spep_5 + 0, 1, 1.36, 1.36 );
setScaleKey( spep_5 + 4 -3, 1, 1.35, 1.35 );
setScaleKey( spep_5 + 6 -3, 1, 1.34, 1.34 );
setScaleKey( spep_5 + 8 -3, 1, 1.33, 1.33 );
setScaleKey( spep_5 + 10 -3, 1, 1.33, 1.33 );
setScaleKey( spep_5 + 12 -3, 1, 1.32, 1.32 );
setScaleKey( spep_5 + 14 -3, 1, 1.32, 1.32 );
setScaleKey( spep_5 + 16 -3, 1, 1.31, 1.31 );
setScaleKey( spep_5 + 19 -3, 1, 1.31, 1.31 );
setScaleKey( spep_5 + 20 -3, 1, 1.3, 1.3 );
setScaleKey( spep_5 + 22 -3, 1, 1.15, 1.15 );
setScaleKey( spep_5 + 24 -3, 1, 1, 1 );
setScaleKey( spep_5 + 26 -3, 1, 0.85, 0.85 );
setScaleKey( spep_5 + 28 -3, 1, 0.71, 0.71 );
setScaleKey( spep_5 + 30 -3, 1, 0.56, 0.56 );
setScaleKey( spep_5 + 32 -3, 1, 0.41, 0.41 );
setScaleKey( spep_5 + 34 -3, 1, 0.4, 0.4 );
setScaleKey( spep_5 + 36 -3, 1, 0.39, 0.39 );
setScaleKey( spep_5 + 38 -3, 1, 0.38, 0.38 );
setScaleKey( spep_5 + 40 -3, 1, 0.37, 0.37 );
setScaleKey( spep_5 + 42 -3, 1, 0.36, 0.36 );
setScaleKey( spep_5 + 44 -3, 1, 0.35, 0.35 );
setScaleKey( spep_5 + 46 -3, 1, 0.34, 0.34 );
setScaleKey( spep_5 + 48 -3, 1, 0.33, 0.33 );
setScaleKey( spep_5 + 50 -3, 1, 0.32, 0.32 );
setScaleKey( spep_5 + 52 -3, 1, 0.32, 0.32 );
setScaleKey( spep_5 + 54 -3, 1, 0.31, 0.31 );
setScaleKey( spep_5 + 56 -3, 1, 0.3, 0.3 );
setScaleKey( spep_5 + 58 -3, 1, 0.29, 0.29 );
setScaleKey( spep_5 + 60 -3, 1, 0.28, 0.28 );
setScaleKey( spep_5 + 62 -3, 1, 0.27, 0.27 );
setScaleKey( spep_5 + 64 -3, 1, 0.26, 0.26 );
setScaleKey( spep_5 + 66 -3, 1, 0.25, 0.25 );
setScaleKey( spep_5 + 68 -3, 1, 0.24, 0.24 );
setScaleKey( spep_5 + 70 -3, 1, 0.23, 0.23 );
setScaleKey( spep_5 + 72 -3, 1, 0.22, 0.22 );
setScaleKey( spep_5 + 74 -3, 1, 0.21, 0.21 );
setScaleKey( spep_5 + 76 -3, 1, 0.2, 0.2 );
setScaleKey( spep_5 + 78 -3, 1, 0.19, 0.19 );
setScaleKey( spep_5 + 80 -3, 1, 0.18, 0.18 );
setScaleKey( spep_5 + 82 -3, 1, 0.18, 0.18 );
setScaleKey( spep_5 + 84 -3, 1, 0.17, 0.17 );
setScaleKey( spep_5 + 86 -3, 1, 0.16, 0.16 );
setScaleKey( spep_5 + 88 -3, 1, 0.15, 0.15 );
setScaleKey( spep_5 + 90 -3, 1, 0.14, 0.14 );
setScaleKey( spep_5 + 92 -3, 1, 0.13, 0.13 );
setScaleKey( spep_5 + 94 -3, 1, 0.12, 0.12 );
setScaleKey( spep_5 + 96 -3, 1, 0.11, 0.11 );
setScaleKey( spep_5 + 98 -3, 1, 0.1, 0.1 );
setScaleKey( spep_5 + 98 -1, 1, 0.1, 0.1 );

setRotateKey( spep_5 + 0, 1, -36.7 );
setRotateKey( spep_5 + 19 -3, 1, -36.7 );
setRotateKey( spep_5 + 20 -3, 1, 27.5 );
setRotateKey( spep_5 + 98 -1, 1, 27.5 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 98, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_5 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_5 + 86, 8, 4, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_5 + 20 -3, 1011 );  --被弾

-- ** 次の準備 ** --
spep_6 = spep_5 + 98;

------------------------------------------------------
-- 爆発(100F)
------------------------------------------------------

-- ** 背景 ** --
haikei = entryEffect( spep_6 + 0, SP_10, 0x80, -1, 0, 0, 0 );  --背景
setEffMoveKey( spep_6 + 0, haikei, 0, 0 , 0 );
setEffMoveKey( spep_6 + 100, haikei, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, haikei, 1.0, 1.0 );
setEffScaleKey( spep_6 + 100, haikei, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, haikei, 0 );
setEffRotateKey( spep_6 + 100, haikei, 0 );
setEffAlphaKey( spep_6 + 0, haikei, 255 );
setEffAlphaKey( spep_6 + 100, haikei, 255 );

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

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_6 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_6 + 14, shuchusen1, 32, 25 );

setEffMoveKey( spep_6 + 14, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_6 + 46, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_6 + 14, shuchusen1, 1, 1 );
setEffScaleKey( spep_6 + 46, shuchusen1, 1, 1 );

setEffRotateKey( spep_6 + 14, shuchusen1, 0 );
setEffRotateKey( spep_6 + 46, shuchusen1, 0 );

setEffAlphaKey( spep_6 + 14, shuchusen1, 255 );
setEffAlphaKey( spep_6 + 28, shuchusen1, 255 );
setEffAlphaKey( spep_6 + 30, shuchusen1, 252 );
setEffAlphaKey( spep_6 + 32, shuchusen1, 242 );
setEffAlphaKey( spep_6 + 34, shuchusen1, 227 );
setEffAlphaKey( spep_6 + 36, shuchusen1, 205 );
setEffAlphaKey( spep_6 + 38, shuchusen1, 176 );
setEffAlphaKey( spep_6 + 40, shuchusen1, 142 );
setEffAlphaKey( spep_6 + 42, shuchusen1, 101 );
setEffAlphaKey( spep_6 + 44, shuchusen1, 54 );
setEffAlphaKey( spep_6 + 46, shuchusen1, 0 );

shuchusen2 = entryEffectLife( spep_6 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_6 + 14, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_6 + 100, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_6 + 14, shuchusen2, 1, 1 );
setEffScaleKey( spep_6 + 100, shuchusen2, 1, 1 );

setEffRotateKey( spep_6 + 14, shuchusen2, 0 );
setEffRotateKey( spep_6 + 100, shuchusen2, 0 );

setEffAlphaKey( spep_6 + 14, shuchusen2, 255 );
setEffAlphaKey( spep_6 + 100, shuchusen2, 255 );

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

-- ** 敵キャラクター ** --
setDisp( spep_6 + 0, 1, 1 );
changeAnime( spep_6 + 0, 1, 107 );  --ダメージ 手前

setMoveKey( spep_6 + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_6 + 1, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_6 + 2, 1, 31, -3.9 , 0 );
setMoveKey( spep_6 + 3, 1, 31, -3.9 , 0 );
setMoveKey( spep_6 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_6 + 5, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_6 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_6 + 7, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_6 + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_6 + 9, 1, 15, -65.4 , 0 );
setMoveKey( spep_6 + 10, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_6 + 11, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_6 + 12, 1, -45.3, -142.1 , 0 );  --画面にぶつかる
setMoveKey( spep_6 + 110, 1, -45.3, -142.1 , 0 );

setScaleKey( spep_6 + 0, 1, 0.35, 0.35 );
setScaleKey( spep_6 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_6 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_6 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_6 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_6 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_6 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_6 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_6 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_6 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_6 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_6 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_6 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_6 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_6 + 110, 1, 1.6, 1.6 );

setRotateKey( spep_6 + 0, 1, -40 );
setRotateKey( spep_6 + 1, 1, -40 );
setRotateKey( spep_6 + 2, 1, 80 );
setRotateKey( spep_6 + 3, 1, 80 );
setRotateKey( spep_6 + 4, 1, 200 );
setRotateKey( spep_6 + 5, 1, 200 );
setRotateKey( spep_6 + 6, 1, 360 );
setRotateKey( spep_6 + 7, 1, 360 );
setRotateKey( spep_6 + 8, 1, 558 );
setRotateKey( spep_6 + 9, 1, 558 );
setRotateKey( spep_6 + 10, 1, 425 );
setRotateKey( spep_6 + 11, 1, 425 );
setRotateKey( spep_6 + 12, 1, -40 );
setRotateKey( spep_6 + 110, 1, -40 );

-- ** 音 ** --
playSe( spep_6 + 14, SE_11 );  --割れる音

-- ** ダメージ表示 ** --
dealDamage( spep_6 + 10 );
endPhase( spep_6 + 100 );

end