--G1-3_超サイヤ人ゴッドSSゴジータ_スターダストブレイカー

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
SP_01 = 152756; --突進　前
SP_02 = 152757; --突進　奥
SP_03 = 152758; --両手気弾
SP_04 = 152759; --虹玉
SP_05 = 152760; --被弾

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
-- 突進(468F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
tosshin_f = entryEffectLife( spep_0 + 0, SP_01, 468, 0x100, -1, 0, 0, 0 );  --突進　前(ef_001)
setEffMoveKey( spep_0 + 0, tosshin_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 468, tosshin_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tosshin_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 468, tosshin_f, 1.0, 1.0 );
setEffAlphaKey( spep_0 + 0, tosshin_f, 255 );
setEffAlphaKey( spep_0 + 467, tosshin_f, 255 );
setEffAlphaKey( spep_0 + 468, tosshin_f, 0 );
setEffRotateKey( spep_0 + 0, tosshin_f, 0 );
setEffRotateKey( spep_0 + 468, tosshin_f, 0 );

tosshin_b = entryEffectLife( spep_0 + 0, SP_02, 468, 0x80, -1, 0, 0, 0 );  --突進　奥(ef_002)
setEffMoveKey( spep_0 + 0, tosshin_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 468, tosshin_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tosshin_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 468, tosshin_b, 1.0, 1.0 );
setEffAlphaKey( spep_0 + 0, tosshin_b, 255 );
setEffAlphaKey( spep_0 + 467, tosshin_b, 255 );
setEffAlphaKey( spep_0 + 468, tosshin_b, 0 );
setEffRotateKey( spep_0 + 0, tosshin_b, 0 );
setEffRotateKey( spep_0 + 468, tosshin_b, 0 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 0,  906, 102, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 32, shuchusen1, 70, 25 );

setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 102, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchusen1, 1.2, 1.2 );
setEffScaleKey( spep_0 + 102, shuchusen1, 1.2, 1.2 );

setEffRotateKey( spep_0 + 0, shuchusen1, 0 );
setEffRotateKey( spep_0 + 102, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 31, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 32, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 102, shuchusen1, 255 );

-- ** 顔カットイン ** --
speff0 = entryEffect( spep_0 + 18, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff0, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0 + 18, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_0 + 28,  190006, 74, 0x100, -1, 0, -8.5, 515.5 ); --ゴゴゴ
setEffShake( spep_0 + 28, ctgogo, 74, 10 );

setEffMoveKey( spep_0 + 28, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_0 + 102, ctgogo, -9.9, 515.5 , 0 );

setEffScaleKey( spep_0 + 28, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_0 + 96, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_0 + 98, ctgogo, 1.2, 1.2 );
setEffScaleKey( spep_0 + 100, ctgogo, 1.3, 1.3 );
setEffScaleKey( spep_0 + 102, ctgogo, 1.4, 1.4 );

setEffRotateKey( spep_0 + 28, ctgogo, 0 );
setEffRotateKey( spep_0 + 102, ctgogo, 0 );

setEffAlphaKey( spep_0 + 28, ctgogo, 0 );
setEffAlphaKey( spep_0 + 29, ctgogo, 255 );
setEffAlphaKey( spep_0 + 96, ctgogo, 255 );
setEffAlphaKey( spep_0 + 98, ctgogo, 191 );
setEffAlphaKey( spep_0 + 100, ctgogo, 64 );
setEffAlphaKey( spep_0 + 102, ctgogo, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_0 + 118, 1, 1 );
changeAnime( spep_0 + 118, 1, 118 );  --気溜め後ろ向き

setMoveKey( spep_0 + 118, 1, 55.7, -17.7 , 0 );
setMoveKey( spep_0 + 120, 1, 55.7, -17.7 , 0 );

setScaleKey( spep_0 + 118, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 120, 1, 1.45, 1.45 );

setRotateKey( spep_0 + 118, 1, 0 );
setRotateKey( spep_0 + 120, 1, 0 );

-- ** 音 ** --
--playSe( spep_0 + 2, 1035 );  --突進
playSe( spep_0 + 28, SE_04 );  --ゴゴゴ

-- ** ホワイトフェード ** --
entryFade( spep_0 + 0, 0, 2, 2, fcolor_r, fcolor_g, fcolor_b, 180 );  --薄いwhite fade

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 120; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );

pauseAll( SP_dodge, 67 );

-- ** 敵キャラクター ** --
changeAnime( SP_dodge + 0, 1, 118 );  --気溜め後ろ向き

setMoveKey( SP_dodge + 0, 1, 55.7, -17.7 , 0 );
setMoveKey( SP_dodge + 10, 1, 55.7, -17.7 , 0 );

setScaleKey( SP_dodge + 0, 1, 1.45, 1.45 );
setScaleKey( SP_dodge + 10, 1, 1.45, 1.45 );

setRotateKey( SP_dodge + 0, 1, 0 );
setRotateKey( SP_dodge + 10, 1, 0 );

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

-- ** 敵キャラクター ** --
setDisp( spep_0 + 168, 1, 0 );
setDisp( spep_0 + 170, 1, 1 );
setDisp( spep_0 + 196, 1, 0 );
changeAnime( spep_0 + 154, 1, 106 );  --ダメージ
changeAnime( spep_0 + 170, 1, 105 );  --ダメージ 奥

setMoveKey( spep_0 + 121, 1, 46.7, -17.7 , 0 );
setMoveKey( spep_0 + 122, 1, 46.7, -17.7 , 0 );
setMoveKey( spep_0 + 132, 1, -85, -17.7 , 0 );
setMoveKey( spep_0 + 154, 1, -85, -17.7 , 0 );
setMoveKey( spep_0 + 155, 1, -78, -17.7 , 0 );
setMoveKey( spep_0 + 156, 1, -78, -17.7 , 0 );
setMoveKey( spep_0 + 158, 1, -78, -17.7 , 0 );
setMoveKey( spep_0 + 160, 1, -116.1, -123 , 0 );
setMoveKey( spep_0 + 162, 1, -238.9, -207.7 , 0 );
setMoveKey( spep_0 + 164, 1, -426.4, -336.9 , 0 );
setMoveKey( spep_0 + 166, 1, -664.4, -501 , 0 );
setMoveKey( spep_0 + 168, 1, -937.6, -689.4 , 0 );

setMoveKey( spep_0 + 170, 1, -55.2, 86.3 , 0 );
setMoveKey( spep_0 + 172, 1, -53.2, 87.9 , 0 );
setMoveKey( spep_0 + 174, 1, -38.9, 99.4 , 0 );
setMoveKey( spep_0 + 176, 1, -15.5, 118.3 , 0 );
setMoveKey( spep_0 + 178, 1, -11.3, 121.7 , 0 );
setMoveKey( spep_0 + 180, 1, -9.4, 123.2 , 0 );
setMoveKey( spep_0 + 182, 1, -8.1, 124.2 , 0 );
setMoveKey( spep_0 + 184, 1, -7.2, 124.9 , 0 );
setMoveKey( spep_0 + 186, 1, -6.6, 125.4 , 0 );
setMoveKey( spep_0 + 188, 1, -6.2, 125.7 , 0 );
setMoveKey( spep_0 + 190, 1, -6, 125.9 , 0 );
setMoveKey( spep_0 + 192, 1, -5.8, 126 , 0 );
setMoveKey( spep_0 + 194, 1, -5.7, 126.1 , 0 );
setMoveKey( spep_0 + 196, 1, -5.7, 126.2 , 0 );

setScaleKey( spep_0 + 122, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 168, 1, 1.45, 1.45 );

setScaleKey( spep_0 + 170, 1, 4.75, 4.75 );
setScaleKey( spep_0 + 172, 1, 4.57, 4.57 );
setScaleKey( spep_0 + 174, 1, 3.21, 3.21 );
setScaleKey( spep_0 + 176, 1, 0.98, 0.98 );
setScaleKey( spep_0 + 178, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 180, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 182, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 184, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 186, 1, 0.13, 0.13 );
setScaleKey( spep_0 + 188, 1, 0.1, 0.1 );
setScaleKey( spep_0 + 190, 1, 0.07, 0.07 );
setScaleKey( spep_0 + 192, 1, 0.06, 0.06 );
setScaleKey( spep_0 + 194, 1, 0.05, 0.05 );
setScaleKey( spep_0 + 196, 1, 0.04, 0.04 );

setRotateKey( spep_0 + 122, 1, 0 );
setRotateKey( spep_0 + 152, 1, 0 );
setRotateKey( spep_0 + 154, 1, -70.2 );
setRotateKey( spep_0 + 156, 1, -71.4 );
setRotateKey( spep_0 + 158, 1, -74.7 );
setRotateKey( spep_0 + 160, 1, -79.7 );
setRotateKey( spep_0 + 162, 1, -86 );
setRotateKey( spep_0 + 164, 1, -93.3 );
setRotateKey( spep_0 + 166, 1, -101 );
setRotateKey( spep_0 + 168, 1, -101 );

setRotateKey( spep_0 + 170, 1, 180 );
setRotateKey( spep_0 + 196, 1, 180 );

-- ** 音 ** --
playSe( spep_0 + 154, 1010 );  --殴る
playSe( spep_0 + 198, 1023 );  --地面に当たる
playSe( spep_0 + 218, 1034 );  --走る
playSe( spep_0 + 248, 1034 );  --走る
playSe( spep_0 + 278, 1034 );  --走る
playSe( spep_0 + 308, 1034 );  --走る
playSe( spep_0 + 332, 1003 );  --ジャンプ
playSe( spep_0 + 338, 1034 );  --走る
playSe( spep_0 + 368, 1034 );  --走る
playSe( spep_0 + 398, 1034 );  --走る
playSe( spep_0 + 428, 1034 );  --走る
playSe( spep_0 + 452, 1013 );  --着地
playSe( spep_0 + 458, 1034 );  --走る

-- ** 次の準備 ** --
spep_1 = spep_0 + 468;

------------------------------------------------------
-- 両手気弾(208F)
------------------------------------------------------

-- ** エフェクト等 ** --
kidan = entryEffectLife( spep_1 + 0, SP_03, 208, 0x100, -1, 0, 0, 0 );  --両手気弾(ef_003)
setEffMoveKey( spep_1 + 0, kidan, 0, 0 , 0 );
setEffMoveKey( spep_1 + 208, kidan, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, kidan, 1.0, 1.0 );
setEffScaleKey( spep_1 + 208, kidan, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, kidan, 0 );
setEffRotateKey( spep_1 + 208, kidan, 0 );
setEffAlphaKey( spep_1 + 0, kidan, 255 );
setEffAlphaKey( spep_1 + 207, kidan, 255 );
setEffAlphaKey( spep_1 + 208, kidan, 0 );

-- ** 音 ** --
playSe( spep_1 + 16, 1062 );  --投げる
playSe( spep_1 + 54, 1062 );  --投げる
playSe( spep_1 + 120, 1017 );  --着弾
playSe( spep_1 + 160, 1017 );  --着弾

-- ** 次の準備 ** --
spep_2 = spep_1 + 208;

--------------------------------------
--カードカットイン(94F)
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

-- ** 次の準備 ** --
entryFade( spep_2 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
spep_3 = spep_2 + 94;

------------------------------------------------------
-- 虹玉(198F)
------------------------------------------------------

-- ** エフェクト等 ** --
nijitama = entryEffectLife( spep_3 + 0, SP_04, 198, 0x100, -1, 0, 0, 0 );  --虹玉(ef_004)
setEffMoveKey( spep_3 + 0, nijitama, 0, 0 , 0 );
setEffMoveKey( spep_3 + 198, nijitama, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, nijitama, 1.0, 1.0 );
setEffScaleKey( spep_3 + 198, nijitama, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, nijitama, 0 );
setEffRotateKey( spep_3 + 198, nijitama, 0 );
setEffAlphaKey( spep_3 + 0, nijitama, 255 );
setEffAlphaKey( spep_3 + 197, nijitama, 255 );
setEffAlphaKey( spep_3 + 198, nijitama, 0 );

-- ** 音 ** --
--tameSE = playSeLife( spep_3 + 0, 17 );  --溜める
--stopSe( spep_3 + 78, tameSE, 0 );
playSe( spep_3 + 0, 44 );  --溜める
playSe( spep_3 + 130, 8 );  --投げる
playSe( spep_3 + 150, 1073 );  --向かってく

-- ** 次の準備 ** --
spep_4 = spep_3 + 198;

------------------------------------------------------
-- 被弾(240F)
------------------------------------------------------

-- ** エフェクト等 ** --
hidan = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 );  --被弾(ef_005)
setEffMoveKey( spep_4 + 0, hidan, 0, 0 , 0 );
setEffMoveKey( spep_4 + 240, hidan, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, hidan, 1.0, 1.0 );
setEffScaleKey( spep_4 + 240, hidan, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hidan, 0 );
setEffRotateKey( spep_4 + 240, hidan, 0 );
setEffAlphaKey( spep_4 + 0, hidan, 255 );
setEffAlphaKey( spep_4 + 240, hidan, 255 );

-- ** 音 ** --
playSe( spep_4 + 56, 1067 );  --火柱
playSe( spep_4 + 150, 1024 );  --爆発

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 152 );
entryFade( spep_4 + 230, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_4 + 240 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 突進(468F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
tosshin_f = entryEffectLife( spep_0 + 0, SP_01, 468, 0x100, -1, 0, 0, 0 );  --突進　前(ef_001)
setEffMoveKey( spep_0 + 0, tosshin_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 468, tosshin_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tosshin_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 468, tosshin_f, -1.0, 1.0 );
setEffAlphaKey( spep_0 + 0, tosshin_f, 255 );
setEffAlphaKey( spep_0 + 467, tosshin_f, 255 );
setEffAlphaKey( spep_0 + 468, tosshin_f, 0 );
setEffRotateKey( spep_0 + 0, tosshin_f, 0 );
setEffRotateKey( spep_0 + 468, tosshin_f, 0 );

tosshin_b = entryEffectLife( spep_0 + 0, SP_02, 468, 0x80, -1, 0, 0, 0 );  --突進　奥(ef_002)
setEffMoveKey( spep_0 + 0, tosshin_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 468, tosshin_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tosshin_b, -1.0, 1.0 );
setEffScaleKey( spep_0 + 468, tosshin_b, -1.0, 1.0 );
setEffAlphaKey( spep_0 + 0, tosshin_b, 255 );
setEffAlphaKey( spep_0 + 467, tosshin_b, 255 );
setEffAlphaKey( spep_0 + 468, tosshin_b, 0 );
setEffRotateKey( spep_0 + 0, tosshin_b, 0 );
setEffRotateKey( spep_0 + 468, tosshin_b, 0 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 0,  906, 102, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 32, shuchusen1, 70, 25 );

setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 102, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchusen1, 1.2, 1.2 );
setEffScaleKey( spep_0 + 102, shuchusen1, 1.2, 1.2 );

setEffRotateKey( spep_0 + 0, shuchusen1, 0 );
setEffRotateKey( spep_0 + 102, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 31, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 32, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 102, shuchusen1, 255 );

-- ** 顔カットイン ** --
--speff0 = entryEffect( spep_0 + 18, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff0, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0 + 18, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_0 + 28,  190006, 74, 0x100, -1, 0, -8.5, 515.5 ); --ゴゴゴ
setEffShake( spep_0 + 28, ctgogo, 74, 10 );

setEffMoveKey( spep_0 + 28, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_0 + 102, ctgogo, -9.9, 515.5 , 0 );

setEffScaleKey( spep_0 + 28, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_0 + 96, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_0 + 98, ctgogo, -1.2, 1.2 );
setEffScaleKey( spep_0 + 100, ctgogo, -1.3, 1.3 );
setEffScaleKey( spep_0 + 102, ctgogo, -1.4, 1.4 );

setEffRotateKey( spep_0 + 28, ctgogo, 0 );
setEffRotateKey( spep_0 + 102, ctgogo, 0 );

setEffAlphaKey( spep_0 + 28, ctgogo, 0 );
setEffAlphaKey( spep_0 + 29, ctgogo, 255 );
setEffAlphaKey( spep_0 + 96, ctgogo, 255 );
setEffAlphaKey( spep_0 + 98, ctgogo, 191 );
setEffAlphaKey( spep_0 + 100, ctgogo, 64 );
setEffAlphaKey( spep_0 + 102, ctgogo, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_0 + 118, 1, 1 );
changeAnime( spep_0 + 118, 1, 118 );  --気溜め後ろ向き

setMoveKey( spep_0 + 118, 1, -55.7, -17.7 , 0 );
setMoveKey( spep_0 + 120, 1, -55.7, -17.7 , 0 );

setScaleKey( spep_0 + 118, 1, -1.45, 1.45 );
setScaleKey( spep_0 + 120, 1, -1.45, 1.45 );

setRotateKey( spep_0 + 118, 1, 0 );
setRotateKey( spep_0 + 120, 1, 0 );

-- ** 音 ** --
--playSe( spep_0 + 2, 1035 );  --突進
playSe( spep_0 + 28, SE_04 );  --ゴゴゴ

-- ** ホワイトフェード ** --
entryFade( spep_0 + 0, 0, 2, 2, fcolor_r, fcolor_g, fcolor_b, 180 );  --薄いwhite fade

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 120; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );

pauseAll( SP_dodge, 67 );

-- ** 敵キャラクター ** --
changeAnime( SP_dodge + 0, 1, 118 );  --気溜め後ろ向き

setMoveKey( SP_dodge + 0, 1, 55.7, -17.7 , 0 );
setMoveKey( SP_dodge + 10, 1, 55.7, -17.7 , 0 );

setScaleKey( SP_dodge + 0, 1, 1.45, 1.45 );
setScaleKey( SP_dodge + 10, 1, 1.45, 1.45 );

setRotateKey( SP_dodge + 0, 1, 0 );
setRotateKey( SP_dodge + 10, 1, 0 );

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

-- ** 敵キャラクター ** --
setDisp( spep_0 + 168, 1, 0 );
setDisp( spep_0 + 170, 1, 1 );
setDisp( spep_0 + 196, 1, 0 );
changeAnime( spep_0 + 154, 1, 106 );  --ダメージ
changeAnime( spep_0 + 170, 1, 105 );  --ダメージ 奥

setMoveKey( spep_0 + 121, 1, -46.7, -17.7 , 0 );
setMoveKey( spep_0 + 122, 1, -46.7, -17.7 , 0 );
setMoveKey( spep_0 + 132, 1, 85, -17.7 , 0 );
setMoveKey( spep_0 + 154, 1, 85, -17.7 , 0 );
setMoveKey( spep_0 + 155, 1, 78, -17.7 , 0 );
setMoveKey( spep_0 + 156, 1, 78, -17.7 , 0 );
setMoveKey( spep_0 + 158, 1, 78, -17.7 , 0 );
setMoveKey( spep_0 + 160, 1, 116.1, -123 , 0 );
setMoveKey( spep_0 + 162, 1, 238.9, -207.7 , 0 );
setMoveKey( spep_0 + 164, 1, 426.4, -336.9 , 0 );
setMoveKey( spep_0 + 166, 1, 664.4, -501 , 0 );
setMoveKey( spep_0 + 168, 1, 937.6, -689.4 , 0 );

setMoveKey( spep_0 + 170, 1, 55.2, 86.3 , 0 );
setMoveKey( spep_0 + 172, 1, 53.2, 87.9 , 0 );
setMoveKey( spep_0 + 174, 1, 38.9, 99.4 , 0 );
setMoveKey( spep_0 + 176, 1, 15.5, 118.3 , 0 );
setMoveKey( spep_0 + 178, 1, 11.3, 121.7 , 0 );
setMoveKey( spep_0 + 180, 1, 9.4, 123.2 , 0 );
setMoveKey( spep_0 + 182, 1, 8.1, 124.2 , 0 );
setMoveKey( spep_0 + 184, 1, 7.2, 124.9 , 0 );
setMoveKey( spep_0 + 186, 1, 6.6, 125.4 , 0 );
setMoveKey( spep_0 + 188, 1, 6.2, 125.7 , 0 );
setMoveKey( spep_0 + 190, 1, 6, 125.9 , 0 );
setMoveKey( spep_0 + 192, 1, 5.8, 126 , 0 );
setMoveKey( spep_0 + 194, 1, 5.7, 126.1 , 0 );
setMoveKey( spep_0 + 196, 1, 5.7, 126.2 , 0 );

setScaleKey( spep_0 + 122, 1, -1.45, 1.45 );
setScaleKey( spep_0 + 168, 1, -1.45, 1.45 );

setScaleKey( spep_0 + 170, 1, -4.75, 4.75 );
setScaleKey( spep_0 + 172, 1, -4.57, 4.57 );
setScaleKey( spep_0 + 174, 1, -3.21, 3.21 );
setScaleKey( spep_0 + 176, 1, -0.98, 0.98 );
setScaleKey( spep_0 + 178, 1, -0.58, 0.58 );
setScaleKey( spep_0 + 180, 1, -0.4, 0.4 );
setScaleKey( spep_0 + 182, 1, -0.27, 0.27 );
setScaleKey( spep_0 + 184, 1, -0.19, 0.19 );
setScaleKey( spep_0 + 186, 1, -0.13, 0.13 );
setScaleKey( spep_0 + 188, 1, -0.1, 0.1 );
setScaleKey( spep_0 + 190, 1, -0.07, 0.07 );
setScaleKey( spep_0 + 192, 1, -0.06, 0.06 );
setScaleKey( spep_0 + 194, 1, -0.05, 0.05 );
setScaleKey( spep_0 + 196, 1, -0.04, 0.04 );

setRotateKey( spep_0 + 122, 1, 0 );
setRotateKey( spep_0 + 152, 1, 0 );
setRotateKey( spep_0 + 154, 1, 70.2 );
setRotateKey( spep_0 + 156, 1, 71.4 );
setRotateKey( spep_0 + 158, 1, 74.7 );
setRotateKey( spep_0 + 160, 1, 79.7 );
setRotateKey( spep_0 + 162, 1, 86 );
setRotateKey( spep_0 + 164, 1, 93.3 );
setRotateKey( spep_0 + 166, 1, 101 );
setRotateKey( spep_0 + 168, 1, 101 );

setRotateKey( spep_0 + 170, 1, 180 );
setRotateKey( spep_0 + 196, 1, 180 );

-- ** 音 ** --
playSe( spep_0 + 154, 1010 );  --殴る
playSe( spep_0 + 198, 1023 );  --地面に当たる
playSe( spep_0 + 218, 1034 );  --走る
playSe( spep_0 + 248, 1034 );  --走る
playSe( spep_0 + 278, 1034 );  --走る
playSe( spep_0 + 308, 1034 );  --走る
playSe( spep_0 + 332, 1003 );  --ジャンプ
playSe( spep_0 + 338, 1034 );  --走る
playSe( spep_0 + 368, 1034 );  --走る
playSe( spep_0 + 398, 1034 );  --走る
playSe( spep_0 + 428, 1034 );  --走る
playSe( spep_0 + 452, 1013 );  --着地
playSe( spep_0 + 458, 1034 );  --走る

-- ** 次の準備 ** --
spep_1 = spep_0 + 468;

------------------------------------------------------
-- 両手気弾(208F)
------------------------------------------------------

-- ** エフェクト等 ** --
kidan = entryEffectLife( spep_1 + 0, SP_03, 208, 0x100, -1, 0, 0, 0 );  --両手気弾(ef_003)
setEffMoveKey( spep_1 + 0, kidan, 0, 0 , 0 );
setEffMoveKey( spep_1 + 208, kidan, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, kidan, -1.0, 1.0 );
setEffScaleKey( spep_1 + 208, kidan, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, kidan, 0 );
setEffRotateKey( spep_1 + 208, kidan, 0 );
setEffAlphaKey( spep_1 + 0, kidan, 255 );
setEffAlphaKey( spep_1 + 207, kidan, 255 );
setEffAlphaKey( spep_1 + 208, kidan, 0 );

-- ** 音 ** --
playSe( spep_1 + 16, 1062 );  --投げる
playSe( spep_1 + 54, 1062 );  --投げる
playSe( spep_1 + 120, 1017 );  --着弾
playSe( spep_1 + 160, 1017 );  --着弾

-- ** 次の準備 ** --
spep_2 = spep_1 + 208;

--------------------------------------
--カードカットイン(94F)
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

-- ** 次の準備 ** --
entryFade( spep_2 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
spep_3 = spep_2 + 94;

------------------------------------------------------
-- 虹玉(198F)
------------------------------------------------------

-- ** エフェクト等 ** --
nijitama = entryEffectLife( spep_3 + 0, SP_04, 198, 0x100, -1, 0, 0, 0 );  --虹玉(ef_004)
setEffMoveKey( spep_3 + 0, nijitama, 0, 0 , 0 );
setEffMoveKey( spep_3 + 198, nijitama, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, nijitama, -1.0, 1.0 );
setEffScaleKey( spep_3 + 198, nijitama, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, nijitama, 0 );
setEffRotateKey( spep_3 + 198, nijitama, 0 );
setEffAlphaKey( spep_3 + 0, nijitama, 255 );
setEffAlphaKey( spep_3 + 197, nijitama, 255 );
setEffAlphaKey( spep_3 + 198, nijitama, 0 );

-- ** 音 ** --
--tameSE = playSeLife( spep_3 + 0, 17 );  --溜める
--stopSe( spep_3 + 78, tameSE, 0 );
playSe( spep_3 + 0, 44 ); --溜める
playSe( spep_3 + 130, 8 );  --投げる
playSe( spep_3 + 150, 1073 );  --向かってく

-- ** 次の準備 ** --
spep_4 = spep_3 + 198;

------------------------------------------------------
-- 被弾(240F)
------------------------------------------------------

-- ** エフェクト等 ** --
hidan = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 );  --被弾(ef_005)
setEffMoveKey( spep_4 + 0, hidan, 0, 0 , 0 );
setEffMoveKey( spep_4 + 240, hidan, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, hidan, -1.0, 1.0 );
setEffScaleKey( spep_4 + 240, hidan, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hidan, 0 );
setEffRotateKey( spep_4 + 240, hidan, 0 );
setEffAlphaKey( spep_4 + 0, hidan, 255 );
setEffAlphaKey( spep_4 + 240, hidan, 255 );

-- ** 音 ** --
playSe( spep_4 + 56, 1067 );  --火柱
playSe( spep_4 + 150, 1024 );  --爆発

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 152 );
entryFade( spep_4 + 230, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_4 + 240 );

end


