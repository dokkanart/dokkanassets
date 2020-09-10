--1016820_カリフラ&ケール_ユニオンシューティング

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--SE
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

--エフェクト
SP_01 = 153266; --気弾溜め
SP_02 = 153267; --気弾発射
SP_03 = 153268; --着弾
SP_04 = 153269; --着弾_背景

--敵側
SP_01r = 153270; --気弾溜め
SP_02r = 153271; --気弾発射
SP_03r = 153272; --着弾
SP_04r = 153269; --着弾_背景

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI(0, 0);

changeAnime( 0, 0, 1);                       -- 立ち
changeAnime( 0, 1, 101);                       -- 立ち
setDisp( 0, 0, 0); --味方非表示
setDisp( 0, 1, 0); --敵非表示

--初期値指定
setMoveKey(   0,   0,    -5000,  -5000,  0);
setMoveKey(   1,   0,    -5000,  -5000,  0);
setMoveKey(   2,   0,    -5000,  -5000,  0);
setMoveKey(   3,   0,    -5000,  -5000,  0);
setMoveKey(   4,   0,    -5000,  -5000,  0);
setMoveKey(   5,   0,    -5000,  -5000,  0);
setMoveKey(   6,   0,    -5000,  -5000,  0);
setScaleKey(  0,  0,  1.5,  1.5);
setScaleKey(   1,   0, 1.5, 1.5);
setScaleKey(   2,   0, 1.5, 1.5);
setScaleKey(   3,   0, 1.5, 1.5);
setScaleKey(   4,   0, 1.5, 1.5);
setScaleKey(   5,   0, 1.5, 1.5);
setScaleKey(   6,   0, 1.5, 1.5);

-- 敵
setMoveKey(   0,   1,    -5000,  -5000,  0);
setMoveKey(   1,   1,    -5000,  -5000,  0);
setMoveKey(   2,   1,    -5000,  -5000,  0);
setMoveKey(   3,   1,    -5000,  -5000,  0);
setMoveKey(   4,   1,    -5000,  -5000,  0);
setMoveKey(   5,   1,    -5000,  -5000,  0);
setMoveKey(   6,   1,    -5000,  -5000,  0);
setScaleKey(   1,   1, 1.5, 1.5);
setScaleKey(   2,   1, 1.5, 1.5);
setScaleKey(   3,   1, 1.5, 1.5);
setScaleKey(   4,   1, 1.5, 1.5);
setScaleKey(   5,   1, 1.5, 1.5);
setScaleKey(   6,   1, 1.5, 1.5);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 気弾溜め(140F)
------------------------------------------------------

--フレーム指定
spep_1 = 0;

--エフェクト
ef_tame = entryEffect(spep_1, SP_01, 0x80, -1 ,0 ,0, 0); --気弾溜め
setEffMoveKey(spep_1, ef_tame, 0, 0);
setEffMoveKey(spep_1 + 140, ef_tame, 0, 0);

setEffScaleKey(spep_1, ef_tame, 1.0, 1.0);
setEffScaleKey(spep_1 + 140, ef_tame, 1.0, 1.0);

setEffRotateKey(spep_1, ef_tame, 0);
setEffRotateKey(spep_1 + 140, ef_tame, 0);

setEffAlphaKey(spep_1, ef_tame, 255);
setEffAlphaKey(spep_1 + 140, ef_tame, 255);

--集中線
ef_shuchusen_01 = entryEffectLife(spep_1 + 12, 906, 128, 0x100, -1, 0, 0, 0);
setEffMoveKey(spep_1 + 12, ef_shuchusen_01, 0, 0);
setEffMoveKey(spep_1 + 140, ef_shuchusen_01, 0, 0);

setEffScaleKey(spep_1 + 12, ef_shuchusen_01, 1.0, 1.0);
setEffScaleKey(spep_1 + 140, ef_shuchusen_01, 1.0, 1.0);

setEffRotateKey(spep_1 + 12, ef_shuchusen_01, 0);
setEffRotateKey(spep_1 + 140, ef_shuchusen_01, 0);

setEffAlphaKey(spep_1 + 12, ef_shuchusen_01, 0);
setEffAlphaKey(spep_1 + 13, ef_shuchusen_01, 255);
setEffAlphaKey(spep_1 + 14, ef_shuchusen_01, 255);
setEffAlphaKey(spep_1 + 140, ef_shuchusen_01, 255);

--白フェード
entryFade(spep_1, 0, 0, 8, fcolor_r, fcolor_g, fcolor_b, 255); --演出の入り
entryFade(spep_1 + 12, 1, 0, 6, fcolor_r, fcolor_g, fcolor_b, 150); --モーション変更
entryFade(spep_1 + 130, 6, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255); --次のシーンへ

--背景黒フェード
entryFadeBg(spep_1 + 12, 1, 397, 0, 0, 0, 0, 180);

--SE
playSe(spep_1 + 10, SE_01); --気弾溜め

------------------------------------------------------
--顔カットイン
------------------------------------------------------

speff = entryEffect(spep_1 + 20, 1504, 0x100, -1, 0, 0, 0);  --カットイン(顔)
setEffReplaceTexture(speff, 3, 2);  --カットイン差し替え
speff1 = entryEffect(spep_1 + 20, 1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
setEffReplaceTexture(speff1, 4, 5);  --セリフカットイン差し替え

--ゴゴゴ
ctgogo = entryEffectLife(spep_1 + 32, 190006, 72, 0x100, -1, 0, 520, 0);--ゴゴゴ
setEffShake(spep_1 + 32, ctgogo, 72, 10);

setEffMoveKey(spep_1 + 32, ctgogo, 0, 520, 0);
setEffMoveKey(spep_1 + 104, ctgogo, 0, 520, 0);

setEffScaleKey(spep_1 + 32, ctgogo, 0.7, 0.7);
setEffScaleKey(spep_1 + 98, ctgogo, 0.7, 0.7 );
setEffScaleKey(spep_1 + 104, ctgogo, 1.7, 1.7);

setEffAlphaKey( spep_1 + 32, ctgogo, 255 );
setEffAlphaKey( spep_1 + 33, ctgogo, 255 );
setEffAlphaKey( spep_1 + 34, ctgogo, 255 );
setEffAlphaKey( spep_1 + 104, ctgogo, 255 );

setEffRotateKey(spep_1 + 32, ctgogo, 0);
setEffRotateKey(spep_1 + 104, ctgogo, 0);

--***SE***
playSe(spep_1 + 32,  SE_04);  --ゴゴゴ

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------

--フレーム指定
spep_2 = spep_1 + 140;

--白フェード
entryFade(spep_2, 0, 0, 4, fcolor_r, fcolor_g, fcolor_b, 255); --シーンの入り
entryFade(spep_2 + 80, 4, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255); --次のシーンへ

-- ** カードカットイン ** --
speff2 = entryEffect( spep_2, 1507, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え


-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_2, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2, shuchusen1, 90, 20 );

setEffMoveKey( spep_2, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_2, shuchusen1, 1.6, 1.6 );
setEffScaleKey( spep_2 + 90, shuchusen1, 1.6, 1.6 );

setEffRotateKey( spep_2, shuchusen1, 0 );
setEffRotateKey( spep_2 + 90, shuchusen1, 0 );

setEffAlphaKey( spep_2, shuchusen1, 255 );
setEffAlphaKey( spep_2 + 90, shuchusen1, 255 );

-- ** 音 ** --
playSe( spep_2, SE_05 );

------------------------------------------------------
-- 気弾発射(100F)
------------------------------------------------------

--フレーム指定
spep_3 = spep_2 + 90;

--エフェクト
ef_hassha = entryEffect(spep_3, SP_02, 0x100, -1 ,0 ,0, 0); --気弾発射
setEffMoveKey(spep_3, ef_hassha, 0, 0);
setEffMoveKey(spep_3 + 100, ef_hassha, 0, 0);

setEffScaleKey(spep_3, ef_hassha, 1.0, 1.0);
setEffScaleKey(spep_3 + 100, ef_hassha, 1.0, 1.0);

setEffRotateKey(spep_3, ef_hassha, 0);
setEffRotateKey(spep_3 + 100, ef_hassha, 0);

setEffAlphaKey(spep_3, ef_hassha, 255);
setEffAlphaKey(spep_3 + 100, ef_hassha, 255);

--集中線
ef_shuchusen_02 = entryEffectLife(spep_3 + 34, 906, 66, 0x100, -1, 0, 0, 0);
setEffMoveKey(spep_3 + 34, ef_shuchusen_02, 0, 0);
setEffMoveKey(spep_3 + 100, ef_shuchusen_02, 0, 0);

setEffScaleKey(spep_3 + 34, ef_shuchusen_02, 1.2, 1.5);
setEffScaleKey(spep_3 + 100, ef_shuchusen_02, 1.2, 1.5);

setEffRotateKey(spep_3 + 34, ef_shuchusen_02, 0);
setEffRotateKey(spep_3 + 100, ef_shuchusen_02, 0);

setEffAlphaKey(spep_3 + 34, ef_shuchusen_02, 0);
setEffAlphaKey(spep_3 + 35, ef_shuchusen_02, 255);
setEffAlphaKey(spep_3 + 36, ef_shuchusen_02, 255);
setEffAlphaKey(spep_3 + 100, ef_shuchusen_02, 255);

--白フェード
entryFade(spep_3, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255); --演出の入り
entryFade(spep_3 + 34, 1, 0, 6, fcolor_r, fcolor_g, fcolor_b, 200); --気弾発射
entryFade(spep_3 + 90, 8, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255); --次のシーンへ

--SE
se_1 = playSe( spep_3, 17);  --気弾を溜める
stopSe(spep_3 + 34, se_1, 4);
playSe(spep_3 + 34, 1021); --気弾発射

--書き文字
ct_zuo_01 = entryEffectLife(spep_3 + 34, 10012, 54, 0x100, -1, 0, 50, 267.8); --ズオ
setEffShake(spep_3 + 34, ct_zuo_01, 54, 10);

F_02 = 4; --フレーム補正

setEffMoveKey( spep_3 + 38 - F_02, ct_zuo_01, 50, 268.7 , 0 );
setEffMoveKey( spep_3 + 40 - F_02, ct_zuo_01, 63.8, 296.7 , 0 );
setEffMoveKey( spep_3 + 42 - F_02, ct_zuo_01, 64.8, 332.3 , 0 );
setEffMoveKey( spep_3 + 44 - F_02, ct_zuo_01, 86.1, 349 , 0 );
setEffMoveKey( spep_3 + 82 - F_02, ct_zuo_01, 72.6, 362.5 , 0 );
setEffMoveKey( spep_3 + 84 - F_02, ct_zuo_01, 102, 348.2 , 0 );
setEffMoveKey( spep_3 + 86 - F_02, ct_zuo_01, 96.4, 369.1 , 0 );
setEffMoveKey( spep_3 + 88 - F_02, ct_zuo_01, 133.9, 346.7 , 0 );
setEffMoveKey( spep_3 + 90 - F_02, ct_zuo_01, 120.1, 375.6 , 0 );
setEffMoveKey( spep_3 + 92 - F_02, ct_zuo_01, 132, 379 , 0 );

setEffScaleKey( spep_3 + 38 - F_02, ct_zuo_01, 0.29, 0.29 );
setEffScaleKey( spep_3 + 40 - F_02, ct_zuo_01, 0.96, 0.96 );
setEffScaleKey( spep_3 + 42 - F_02, ct_zuo_01, 1.63, 1.63 );
setEffScaleKey( spep_3 + 44 - F_02, ct_zuo_01, 2.3, 2.3 );
setEffScaleKey( spep_3 + 82 - F_02, ct_zuo_01, 2.3, 2.3 );
setEffScaleKey( spep_3 + 84 - F_02, ct_zuo_01, 2.99, 2.99 );
setEffScaleKey( spep_3 + 86 - F_02, ct_zuo_01, 3.69, 3.69 );
setEffScaleKey( spep_3 + 88 - F_02, ct_zuo_01, 4.38, 4.38 );
setEffScaleKey( spep_3 + 90 - F_02, ct_zuo_01, 5.07, 5.07 );
setEffScaleKey( spep_3 + 92 - F_02, ct_zuo_01, 5.76, 5.76 );

setEffRotateKey( spep_3 + 38 - F_02, ct_zuo_01, 9.7 );
setEffRotateKey( spep_3 + 40 - F_02, ct_zuo_01, 15.4 );
setEffRotateKey( spep_3 + 42 - F_02, ct_zuo_01, 21.3 );
setEffRotateKey( spep_3 + 44 - F_02, ct_zuo_01, 27.2 );
setEffRotateKey( spep_3 + 92 - F_02, ct_zuo_01, 27.2 );

setEffAlphaKey( spep_3 + 38 - F_02, ct_zuo_01, 0 );
setEffAlphaKey( spep_3 + 39 - F_02, ct_zuo_01, 255 );
setEffAlphaKey( spep_3 + 40 - F_02, ct_zuo_01, 255 );
setEffAlphaKey( spep_3 + 82 - F_02, ct_zuo_01, 255 );
setEffAlphaKey( spep_3 + 84 - F_02, ct_zuo_01, 204 );
setEffAlphaKey( spep_3 + 86 - F_02, ct_zuo_01, 153 );
setEffAlphaKey( spep_3 + 88 - F_02, ct_zuo_01, 102 );
setEffAlphaKey( spep_3 + 90 - F_02, ct_zuo_01, 51 );
setEffAlphaKey( spep_3 + 92 - F_02, ct_zuo_01, 0 );

------------------------------------------------------
-- 着弾(80F)
------------------------------------------------------

--フレーム指定
spep_4 = spep_3 + 100;

--エフェクト
ef_chakudan = entryEffect(spep_4, SP_03, 0x100, -1 ,0 ,0, 0); --着弾
setEffMoveKey(spep_4, ef_chakudan, 0, 0);
setEffMoveKey(spep_4 + 80, ef_chakudan, 0, 0);

setEffScaleKey(spep_4, ef_chakudan, 1.0, 1.0);
setEffScaleKey(spep_4 + 80, ef_chakudan, 1.0, 1.0);

setEffRotateKey(spep_4, ef_chakudan, 0);
setEffRotateKey(spep_4 + 80, ef_chakudan, 0);

setEffAlphaKey(spep_4, ef_chakudan, 255);
setEffAlphaKey(spep_4 + 80, ef_chakudan, 255);

ef_chakudan_bg = entryEffect(spep_4, SP_04, 0x80, -1 ,0 ,0, 0); --着弾_背景
setEffMoveKey(spep_4, ef_chakudan_bg, 0, 0);
setEffMoveKey(spep_4 + 80, ef_chakudan_bg, 0, 0);

setEffScaleKey(spep_4, ef_chakudan_bg, 1.0, 1.0);
setEffScaleKey(spep_4 + 80, ef_chakudan_bg, 1.0, 1.0);

setEffRotateKey(spep_4, ef_chakudan_bg, 0);
setEffRotateKey(spep_4 + 80, ef_chakudan_bg, 0);

setEffAlphaKey(spep_4, ef_chakudan_bg, 255);
setEffAlphaKey(spep_4 + 80, ef_chakudan_bg, 255);

--集中線
ef_shuchusen_03 = entryEffectLife(spep_4 + 46, 906, 34, 0x100, -1, 0, 90, 0);
setEffMoveKey(spep_4 + 46, ef_shuchusen_03, 90, 0);
setEffMoveKey(spep_4 + 80, ef_shuchusen_03, 90, 0);

setEffScaleKey(spep_4 + 46, ef_shuchusen_03, 1.2, 1.2);
setEffScaleKey(spep_4 + 80, ef_shuchusen_03, 1.2, 1.2);

setEffRotateKey(spep_4 + 46, ef_shuchusen_03, 0);
setEffRotateKey(spep_4 + 80, ef_shuchusen_03, 0);

setEffAlphaKey(spep_4 + 46, ef_shuchusen_03, 0);
setEffAlphaKey(spep_4 + 47, ef_shuchusen_03, 255);
setEffAlphaKey(spep_4 + 48, ef_shuchusen_03, 255);
setEffAlphaKey(spep_4 + 80, ef_shuchusen_03, 255);

--白フェード
entryFade(spep_4 + 46, 1, 0, 6, fcolor_r, fcolor_g, fcolor_b, 200); --気弾命中
entryFade(spep_4 + 68, 8, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255); --次のシーンへ

--SE
se_2 = playSe(spep_4, 1022); --気弾発射

--書き文字
ct_zudodo_01 = entryEffectLife(spep_4, 10014, 58, 0x100, -1, 0, 159.2, 335); --ズドド
setEffShake(spep_4, ct_zudodo_01, 58, 10);

setEffMoveKey( spep_4 + 0, ct_zudodo_01, 159.2, 335 , 0 );
setEffMoveKey( spep_4 + 2, ct_zudodo_01, 150.7, 318.4 , 0 );
setEffMoveKey( spep_4 + 4, ct_zudodo_01, 163.6, 326.7 , 0 );
setEffMoveKey( spep_4 + 6, ct_zudodo_01, 147.1, 301 , 0 );
setEffMoveKey( spep_4 + 8, ct_zudodo_01, 168, 318.5 , 0 );
setEffMoveKey( spep_4 + 10, ct_zudodo_01, 148, 305.6 , 0 );
setEffMoveKey( spep_4 + 12, ct_zudodo_01, 161.3, 331.1 , 0 );
setEffMoveKey( spep_4 + 14, ct_zudodo_01, 152, 320.4 , 0 );
setEffMoveKey( spep_4 + 16, ct_zudodo_01, 164.3, 334.6 , 0 );
setEffMoveKey( spep_4 + 18, ct_zudodo_01, 154.5, 323.4 , 0 );
setEffMoveKey( spep_4 + 20, ct_zudodo_01, 167.2, 338.2 , 0 );
setEffMoveKey( spep_4 + 22, ct_zudodo_01, 157, 326.4 , 0 );
setEffMoveKey( spep_4 + 24, ct_zudodo_01, 170.2, 341.7 , 0 );
setEffMoveKey( spep_4 + 26, ct_zudodo_01, 159.4, 329.4 , 0 );
setEffMoveKey( spep_4 + 28, ct_zudodo_01, 173.1, 345.3 , 0 );
setEffMoveKey( spep_4 + 30, ct_zudodo_01, 161.9, 332.5 , 0 );
setEffMoveKey( spep_4 + 32, ct_zudodo_01, 176.1, 348.8 , 0 );
setEffMoveKey( spep_4 + 34, ct_zudodo_01, 164.4, 335.5 , 0 );
setEffMoveKey( spep_4 + 36, ct_zudodo_01, 179, 352.4 , 0 );
setEffMoveKey( spep_4 + 38, ct_zudodo_01, 166.9, 338.5 , 0 );
setEffMoveKey( spep_4 + 40, ct_zudodo_01, 182, 355.9 , 0 );
setEffMoveKey( spep_4 + 42, ct_zudodo_01, 169.4, 341.5 , 0 );
setEffMoveKey( spep_4 + 44, ct_zudodo_01, 184.9, 359.5 , 0 );
setEffMoveKey( spep_4 + 46, ct_zudodo_01, 171.9, 344.5 , 0 );
setEffMoveKey( spep_4 + 48, ct_zudodo_01, 187.9, 363 , 0 );
setEffMoveKey( spep_4 + 50, ct_zudodo_01, 174.4, 347.5 , 0 );
setEffMoveKey( spep_4 + 52, ct_zudodo_01, 190.3, 363 , 0 );
setEffMoveKey( spep_4 + 54, ct_zudodo_01, 172.8, 340.1 , 0 );
setEffMoveKey( spep_4 + 56, ct_zudodo_01, 192.1, 359.5 , 0 );
setEffMoveKey( spep_4 + 58, ct_zudodo_01, 192.9, 357.8 , 0 );

setEffScaleKey( spep_4 + 0, ct_zudodo_01, 1.16, 1.16 );
setEffScaleKey( spep_4 + 2, ct_zudodo_01, 1.84, 1.84 );
setEffScaleKey( spep_4 + 4, ct_zudodo_01, 2.52, 2.52 );
setEffScaleKey( spep_4 + 6, ct_zudodo_01, 3.2, 3.2 );
setEffScaleKey( spep_4 + 8, ct_zudodo_01, 3.88, 3.88 );
setEffScaleKey( spep_4 + 10, ct_zudodo_01, 2.84, 2.84 );
setEffScaleKey( spep_4 + 12, ct_zudodo_01, 1.8, 1.8 );
setEffScaleKey( spep_4 + 14, ct_zudodo_01, 1.84, 1.84 );
setEffScaleKey( spep_4 + 16, ct_zudodo_01, 1.88, 1.88 );
setEffScaleKey( spep_4 + 18, ct_zudodo_01, 1.92, 1.92 );
setEffScaleKey( spep_4 + 20, ct_zudodo_01, 1.96, 1.96 );
setEffScaleKey( spep_4 + 22, ct_zudodo_01, 2.01, 2.01 );
setEffScaleKey( spep_4 + 24, ct_zudodo_01, 2.05, 2.05 );
setEffScaleKey( spep_4 + 26, ct_zudodo_01, 2.09, 2.09 );
setEffScaleKey( spep_4 + 28, ct_zudodo_01, 2.13, 2.13 );
setEffScaleKey( spep_4 + 30, ct_zudodo_01, 2.17, 2.17 );
setEffScaleKey( spep_4 + 32, ct_zudodo_01, 2.21, 2.21 );
setEffScaleKey( spep_4 + 34, ct_zudodo_01, 2.25, 2.25 );
setEffScaleKey( spep_4 + 36, ct_zudodo_01, 2.29, 2.29 );
setEffScaleKey( spep_4 + 38, ct_zudodo_01, 2.33, 2.33 );
setEffScaleKey( spep_4 + 40, ct_zudodo_01, 2.37, 2.37 );
setEffScaleKey( spep_4 + 42, ct_zudodo_01, 2.41, 2.41 );
setEffScaleKey( spep_4 + 44, ct_zudodo_01, 2.45, 2.45 );
setEffScaleKey( spep_4 + 46, ct_zudodo_01, 2.49, 2.49 );
setEffScaleKey( spep_4 + 48, ct_zudodo_01, 2.53, 2.53 );
setEffScaleKey( spep_4 + 50, ct_zudodo_01, 2.57, 2.57 );
setEffScaleKey( spep_4 + 52, ct_zudodo_01, 2.86, 2.86 );
setEffScaleKey( spep_4 + 54, ct_zudodo_01, 3.15, 3.15 );
setEffScaleKey( spep_4 + 56, ct_zudodo_01, 3.43, 3.43 );
setEffScaleKey( spep_4 + 58, ct_zudodo_01, 3.72, 3.72 );

setEffRotateKey( spep_4 + 0, ct_zudodo_01, 58 );
setEffRotateKey( spep_4 + 58, ct_zudodo_01, 58 );

setEffAlphaKey( spep_4 + 0, ct_zudodo_01, 255 );
setEffAlphaKey( spep_4 + 50, ct_zudodo_01, 255 );
setEffAlphaKey( spep_4 + 52, ct_zudodo_01, 191 );
setEffAlphaKey( spep_4 + 54, ct_zudodo_01, 128 );
setEffAlphaKey( spep_4 + 56, ct_zudodo_01, 64 );
setEffAlphaKey( spep_4 + 58, ct_zudodo_01, 0 );

--敵
F_01 = 3; --フレーム補正変数

setDisp( spep_4 + 0, 1, 1 );
changeAnime( spep_4 + 0, 1, 104 );
setShakeChara(spep_4, 1, 12, 10);

setMoveKey( spep_4, 1, 322.3, 19 , 0 );
setMoveKey( spep_4 - F_01 + 4, 1, 322.3, 19 , 0 );
setMoveKey( spep_4 - F_01 + 6, 1, 313.4, 20.6 , 0 );
setMoveKey( spep_4 - F_01 + 8, 1, 304.5, 22.2 , 0 );
setMoveKey( spep_4 - F_01 + 10, 1, 295.5, 23.8 , 0 );
setMoveKey( spep_4 - F_01 + 12, 1, 286.6, 25.4 , 0 );
setMoveKey( spep_4 - F_01 + 14, 1, 277.7, 27 , 0 );

setScaleKey( spep_4, 1, 0.45, 0.45 );
setScaleKey( spep_4 - F_01 + 4, 1, 0.45, 0.45 );
setScaleKey( spep_4 - F_01 + 6, 1, 0.48, 0.48 );
setScaleKey( spep_4 - F_01 + 8, 1, 0.51, 0.51 );
setScaleKey( spep_4 - F_01 + 10, 1, 0.54, 0.54 );
setScaleKey( spep_4 - F_01 + 12, 1, 0.57, 0.57 );
setScaleKey( spep_4 - F_01 + 14, 1, 0.6, 0.6 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4 - F_01 + 14, 1, 0 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_4 + 12; --エンドフェイズのフレーム数を置き換える

stopSe(SP_dodge - 12, se_2); --演出のSEを停止
playSe( SP_dodge - 12, 1042);

pauseAll( SP_dodge, 67);

--敵の位置
setMoveKey( SP_dodge + 0, 1, 277.7, 27 , 0 );
setMoveKey( SP_dodge + 2, 1, 268.7, 28.5 , 0 );
setMoveKey( SP_dodge + 4, 1, 259.8, 30.1 , 0 );
setMoveKey( SP_dodge + 6, 1, 250.8, 31.7 , 0 );
setMoveKey( SP_dodge + 8, 1, 241.9, 33.3 , 0 );
setMoveKey( SP_dodge + 10, 1, 233, 34.9 , 0 );

setScaleKey( SP_dodge + 0, 1, 0.6, 0.6 );
setScaleKey( SP_dodge + 2, 1, 0.64, 0.6 );
setScaleKey( SP_dodge + 4, 1, 0.67, 0.67 );
setScaleKey( SP_dodge + 6, 1, 0.7, 0.7 );
setScaleKey( SP_dodge + 8, 1, 0.73, 0.73 );
setScaleKey( SP_dodge + 10, 1, 0.76, 0.76 );

setRotateKey( SP_dodge + 0, 1, 0 );
setRotateKey( SP_dodge + 2, 1, 0 );
setRotateKey( SP_dodge + 4, 1, 0 );
setRotateKey( SP_dodge + 6, 1, 0 );
setRotateKey( SP_dodge + 8, 1, 0 );
setRotateKey( SP_dodge + 10, 1, 0 );

speff = entryEffectUnpausable( SP_dodge - 12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

dodge = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
setEffScaleKey( SP_dodge - 1, dodge, -1.0, 1.0);
setEffAlphaKey( SP_dodge - 1, dodge, 255);

entryFade( SP_dodge + 5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );

endPhase( SP_dodge + 10);

do return end
else end

------------------------------------------------------
-- 回避(終)
------------------------------------------------------

playSe(spep_4 + 48, 1021);

setShakeChara(spep_4 + 14, 1, 36, 15);

setMoveKey( spep_4 - F_01 + 16, 1, 268.7, 28.5 , 0 );
setMoveKey( spep_4 - F_01 + 18, 1, 259.8, 30.1 , 0 );
setMoveKey( spep_4 - F_01 + 20, 1, 250.8, 31.7 , 0 );
setMoveKey( spep_4 - F_01 + 22, 1, 241.9, 33.3 , 0 );
setMoveKey( spep_4 - F_01 + 24, 1, 233, 34.9 , 0 );
setMoveKey( spep_4 - F_01 + 26, 1, 224, 36.5 , 0 );
setMoveKey( spep_4 - F_01 + 28, 1, 215.1, 38.1 , 0 );
setMoveKey( spep_4 - F_01 + 30, 1, 206.2, 39.7 , 0 );
setMoveKey( spep_4 - F_01 + 32, 1, 197.2, 41.3 , 0 );
setMoveKey( spep_4 - F_01 + 34, 1, 193.1, 42 , 0 );
setMoveKey( spep_4 - F_01 + 36, 1, 189, 42.7 , 0 );
setMoveKey( spep_4 - F_01 + 38, 1, 184.9, 43.5 , 0 );
setMoveKey( spep_4 - F_01 + 40, 1, 180.7, 44.2 , 0 );
setMoveKey( spep_4 - F_01 + 42, 1, 176.6, 45 , 0 );
setMoveKey( spep_4 - F_01 + 44, 1, 172.5, 45.7 , 0 );
setMoveKey( spep_4 - F_01 + 46, 1, 168.4, 46.5 , 0 );
setMoveKey( spep_4 - F_01 + 48, 1, 164.3, 47.2 , 0 );
setMoveKey( spep_4 - F_01 + 51, 1, 160.2, 47.9 , 0 );

setScaleKey( spep_4 - F_01 + 16, 1, 0.64, 0.64 );
setScaleKey( spep_4 - F_01 + 18, 1, 0.67, 0.67 );
setScaleKey( spep_4 - F_01 + 20, 1, 0.7, 0.7 );
setScaleKey( spep_4 - F_01 + 22, 1, 0.73, 0.73 );
setScaleKey( spep_4 - F_01 + 24, 1, 0.76, 0.76 );
setScaleKey( spep_4 - F_01 + 26, 1, 0.8, 0.8 );
setScaleKey( spep_4 - F_01 + 28, 1, 0.83, 0.83 );
setScaleKey( spep_4 - F_01 + 30, 1, 0.86, 0.86 );
setScaleKey( spep_4 - F_01 + 32, 1, 0.89, 0.89 );
setScaleKey( spep_4 - F_01 + 34, 1, 0.91, 0.91 );
setScaleKey( spep_4 - F_01 + 36, 1, 0.92, 0.92 );
setScaleKey( spep_4 - F_01 + 38, 1, 0.93, 0.93 );
setScaleKey( spep_4 - F_01 + 40, 1, 0.95, 0.95 );
setScaleKey( spep_4 - F_01 + 42, 1, 0.96, 0.96 );
setScaleKey( spep_4 - F_01 + 44, 1, 0.98, 0.98 );
setScaleKey( spep_4 - F_01 + 46, 1, 0.99, 0.99 );
setScaleKey( spep_4 - F_01 + 48, 1, 1.01, 1.01 );
setScaleKey( spep_4 - F_01 + 51, 1, 1.02, 1.02 );

setRotateKey( spep_4 - F_01 + 16, 1, 0 );
setRotateKey( spep_4 - F_01 + 51, 1, 0 );

changeAnime( spep_4 - F_01 + 52, 1, 108 );
setMoveKey( spep_4 - F_01 + 52, 1, 178.2, 52 , 0 );
setMoveKey( spep_4 - F_01 + 54, 1, 183.8, 50.2 , 0 );
setMoveKey( spep_4 - F_01 + 56, 1, 190.3, 48.1 , 0 );
setMoveKey( spep_4 - F_01 + 58, 1, 197.6, 45.7 , 0 );
setMoveKey( spep_4 - F_01 + 60, 1, 205.8, 43.1 , 0 );
setMoveKey( spep_4 - F_01 + 62, 1, 214.7, 40.3 , 0 );
setMoveKey( spep_4 - F_01 + 64, 1, 224.5, 37.2 , 0 );
setMoveKey( spep_4 - F_01 + 66, 1, 235.1, 33.8 , 0 );
setMoveKey( spep_4 - F_01 + 68, 1, 246.5, 30.2 , 0 );
setMoveKey( spep_4 - F_01 + 70, 1, 258.7, 26.4 , 0 );
setMoveKey( spep_4 - F_01 + 72, 1, 271.8, 22.3 , 0 );
setMoveKey( spep_4 - F_01 + 74, 1, 285.7, 17.9 , 0 );
setMoveKey( spep_4 - F_01 + 76, 1, 300.4, 13.4 , 0 );
setMoveKey( spep_4 - F_01 + 78, 1, 316, 8.6 , 0 );
setMoveKey( spep_4 + 80, 1, 316, 8.6 , 0 );

setScaleKey( spep_4 - F_01 + 52, 1, 1.08, 1.08 );
setScaleKey( spep_4 - F_01 + 54, 1, 1.03, 1.03 );
setScaleKey( spep_4 - F_01 + 56, 1, 0.99, 0.99 );
setScaleKey( spep_4 - F_01 + 58, 1, 0.93, 0.93 );
setScaleKey( spep_4 - F_01 + 60, 1, 0.87, 0.87 );
setScaleKey( spep_4 - F_01 + 62, 1, 0.8, 0.8 );
setScaleKey( spep_4 - F_01 + 64, 1, 0.73, 0.73 );
setScaleKey( spep_4 - F_01 + 66, 1, 0.65, 0.65 );
setScaleKey( spep_4 - F_01 + 68, 1, 0.56, 0.56 );
setScaleKey( spep_4 - F_01 + 70, 1, 0.47, 0.47 );
setScaleKey( spep_4 - F_01 + 72, 1, 0.37, 0.37 );
setScaleKey( spep_4 - F_01 + 74, 1, 0.26, 0.26 );
setScaleKey( spep_4 - F_01 + 76, 1, 0.15, 0.15 );
setScaleKey( spep_4 - F_01 + 78, 1, 0.04, 0.04 );
setScaleKey( spep_4 + 80, 1, 0.04, 0.04 );

setRotateKey( spep_4 - F_01 + 52, 1, 7 );
setRotateKey( spep_4 - F_01 + 54, 1, 6.7 );
setRotateKey( spep_4 - F_01 + 56, 1, 6.4 );
setRotateKey( spep_4 - F_01 + 58, 1, 6 );
setRotateKey( spep_4 - F_01 + 60, 1, 5.6 );
setRotateKey( spep_4 - F_01 + 62, 1, 5.1 );
setRotateKey( spep_4 - F_01 + 64, 1, 4.6 );
setRotateKey( spep_4 - F_01 + 66, 1, 4.1 );
setRotateKey( spep_4 - F_01 + 68, 1, 3.5 );
setRotateKey( spep_4 - F_01 + 70, 1, 2.9 );
setRotateKey( spep_4 - F_01 + 72, 1, 2.2 );
setRotateKey( spep_4 - F_01 + 74, 1, 1.5 );
setRotateKey( spep_4 - F_01 + 76, 1, 0.8 );
setRotateKey( spep_4 - F_01 + 78, 1, 0 );
setRotateKey( spep_4 + 80, 1, 0 );

------------------------------------------------------
-- ガッ(120F)
------------------------------------------------------

--フレーム指定
spep_5 = spep_4 + 80;

--エフェクト
entryEffect( spep_5, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_5, SE_10);

setDamage( spep_5 + 16, 1, 0);  -- ダメージ振動等
setShake(spep_5 + 8, 6, 15);
setShake(spep_5 + 14, 15, 10);

--ひび割れ
hibi = entryEffect( spep_5 + 2, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ
playSe(  spep_5 + 2,  SE_11);  --ひび割れ

--集中線（白）
shuchusen2 = entryEffectLife( spep_5 + 2, 906, 120, 0x00,  -1, 0,  0,  0);   -- 白
shuchusenkuro = entryEffectLife( spep_5 + 14, 1657, 120, 0x80,  -1, 0,  0,  0);   -- 黒

-- 書き文字
ct_ga = entryEffectLife( spep_5 + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );
setEffShake( spep_5 + 14, ct_ga, 30, 10);

setEffMoveKey( spep_5 + 14, ct_ga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 16, ct_ga, 4, 316.1 , 0 );
setEffMoveKey( spep_5 + 18, ct_ga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 20, ct_ga, 4, 316.1 , 0 );
setEffMoveKey( spep_5 + 22, ct_ga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 24, ct_ga, 4, 316.1 , 0 );
setEffMoveKey( spep_5 + 26, ct_ga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 28, ct_ga, 4, 316.1 , 0 );
setEffMoveKey( spep_5 + 112, ct_ga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_5 + 14, ct_ga, 2, 2 );
setEffScaleKey( spep_5 + 16, ct_ga, 2.0, 2.0);
setEffScaleKey( spep_5 + 17, cGa, 2.6, 2.6);
setEffScaleKey( spep_5 + 18, ct_ga, 4.0, 4.0);
setEffScaleKey( spep_5 + 19, ct_ga, 2.6, 2.6);
setEffScaleKey( spep_5 + 20, ct_ga, 3.8, 3.8);
setEffScaleKey( spep_5 + 112, ct_ga, 3.8, 3.8);

setEffRotateKey( spep_5 + 14, ct_ga, -40 );
setEffRotateKey( spep_5 + 16, ct_ga, -31 );
setEffRotateKey( spep_5 + 18, ct_ga, -40 );
setEffRotateKey( spep_5 + 20, ct_ga, -31 );
setEffRotateKey( spep_5 + 22, ct_ga, -40 );
setEffRotateKey( spep_5 + 24, ct_ga, -31);
setEffRotateKey( spep_5 + 26, ct_ga, -40 );
setEffRotateKey( spep_5 + 28, ct_ga, -31);
setEffRotateKey( spep_5 + 30, ct_ga, -40 );
setEffRotateKey( spep_5 + 112, ct_ga, -40 );

setEffAlphaKey( spep_5 + 14, ct_ga, 255 );
setEffAlphaKey( spep_5 + 112, ct_ga, 255 );

--敵
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

-- ダメージ表示
dealDamage(spep_5 + 16);
entryFade( spep_5 + 100, 9, 10, 1, 8, 8, 8, 255 ); -- 黒フェード
endPhase(spep_5 + 110);

else

------------------------------------------------------
-- 敵側
------------------------------------------------------

------------------------------------------------------
-- 気弾溜め(140F)
------------------------------------------------------

--フレーム指定
spep_1 = 0;

--エフェクト
ef_tame = entryEffect(spep_1, SP_01r, 0x80, -1 ,0 ,0, 0); --気弾溜め
setEffMoveKey(spep_1, ef_tame, 0, 0);
setEffMoveKey(spep_1 + 140, ef_tame, 0, 0);

setEffScaleKey(spep_1, ef_tame, 1.0, 1.0);
setEffScaleKey(spep_1 + 140, ef_tame, 1.0, 1.0);

setEffRotateKey(spep_1, ef_tame, 0);
setEffRotateKey(spep_1 + 140, ef_tame, 0);

setEffAlphaKey(spep_1, ef_tame, 255);
setEffAlphaKey(spep_1 + 140, ef_tame, 255);

--集中線
ef_shuchusen_01 = entryEffectLife(spep_1 + 12, 906, 128, 0x100, -1, 0, 0, 0);
setEffMoveKey(spep_1 + 12, ef_shuchusen_01, 0, 0);
setEffMoveKey(spep_1 + 140, ef_shuchusen_01, 0, 0);

setEffScaleKey(spep_1 + 12, ef_shuchusen_01, 1.0, 1.0);
setEffScaleKey(spep_1 + 140, ef_shuchusen_01, 1.0, 1.0);

setEffRotateKey(spep_1 + 12, ef_shuchusen_01, 0);
setEffRotateKey(spep_1 + 140, ef_shuchusen_01, 0);

setEffAlphaKey(spep_1 + 12, ef_shuchusen_01, 0);
setEffAlphaKey(spep_1 + 13, ef_shuchusen_01, 255);
setEffAlphaKey(spep_1 + 14, ef_shuchusen_01, 255);
setEffAlphaKey(spep_1 + 140, ef_shuchusen_01, 255);

--白フェード
entryFade(spep_1, 0, 0, 8, fcolor_r, fcolor_g, fcolor_b, 255); --演出の入り
entryFade(spep_1 + 12, 1, 0, 6, fcolor_r, fcolor_g, fcolor_b, 150); --モーション変更
entryFade(spep_1 + 130, 6, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255); --次のシーンへ

--背景黒フェード
entryFadeBg(spep_1 + 12, 1, 397, 0, 0, 0, 0, 180);

--SE
playSe(spep_1 + 10, SE_01); --気弾溜め

------------------------------------------------------
--顔カットイン
------------------------------------------------------

--[[
speff = entryEffect(spep_1 + 20, 1504, 0x100, -1, 0, 0, 0);  --カットイン(顔)
setEffReplaceTexture(speff, 3, 2);  --カットイン差し替え
speff1 = entryEffect(spep_1 + 20, 1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
setEffReplaceTexture(speff1, 4, 5);  --セリフカットイン差し替え
]]

--ゴゴゴ
ctgogo = entryEffectLife(spep_1 + 32, 190006, 72, 0x100, -1, 0, 520, 0);--ゴゴゴ
setEffShake(spep_1 + 32, ctgogo, 72, 10);

setEffMoveKey(spep_1 + 32, ctgogo, 0, 520, 0);
setEffMoveKey(spep_1 + 104, ctgogo, 0, 520, 0);

setEffScaleKey(spep_1 + 32, ctgogo, -0.7, 0.7);
setEffScaleKey(spep_1 + 98, ctgogo, -0.7, 0.7 );
setEffScaleKey(spep_1 + 104, ctgogo, -1.7, 1.7);

setEffAlphaKey( spep_1 + 32, ctgogo, 255 );
setEffAlphaKey( spep_1 + 33, ctgogo, 255 );
setEffAlphaKey( spep_1 + 34, ctgogo, 255 );
setEffAlphaKey( spep_1 + 104, ctgogo, 255 );

setEffRotateKey(spep_1 + 32, ctgogo, 0);
setEffRotateKey(spep_1 + 104, ctgogo, 0);

--***SE***
playSe(spep_1 + 32,  SE_04);  --ゴゴゴ

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------

--フレーム指定
spep_2 = spep_1 + 140;

--白フェード
entryFade(spep_2, 0, 0, 4, fcolor_r, fcolor_g, fcolor_b, 255); --シーンの入り
entryFade(spep_2 + 80, 4, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255); --次のシーンへ

-- ** カードカットイン ** --
speff2 = entryEffect( spep_2, 1507, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_2, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2, shuchusen1, 90, 20 );

setEffMoveKey( spep_2, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_2, shuchusen1, 1.6, 1.6 );
setEffScaleKey( spep_2 + 90, shuchusen1, 1.6, 1.6 );

setEffRotateKey( spep_2, shuchusen1, 0 );
setEffRotateKey( spep_2 + 90, shuchusen1, 0 );

setEffAlphaKey( spep_2, shuchusen1, 255 );
setEffAlphaKey( spep_2 + 90, shuchusen1, 255 );

-- ** 音 ** --
playSe( spep_2, SE_05 );

------------------------------------------------------
-- 気弾発射(100F)
------------------------------------------------------

--フレーム指定
spep_3 = spep_2 + 90;

--エフェクト
ef_hassha = entryEffect(spep_3, SP_02r, 0x100, -1 ,0 ,0, 0); --気弾発射
setEffMoveKey(spep_3, ef_hassha, 0, 0);
setEffMoveKey(spep_3 + 100, ef_hassha, 0, 0);

setEffScaleKey(spep_3, ef_hassha, 1.0, 1.0);
setEffScaleKey(spep_3 + 100, ef_hassha, 1.0, 1.0);

setEffRotateKey(spep_3, ef_hassha, 0);
setEffRotateKey(spep_3 + 100, ef_hassha, 0);

setEffAlphaKey(spep_3, ef_hassha, 255);
setEffAlphaKey(spep_3 + 100, ef_hassha, 255);

--集中線
ef_shuchusen_02 = entryEffectLife(spep_3 + 34, 906, 66, 0x100, -1, 0, 0, 0);
setEffMoveKey(spep_3 + 34, ef_shuchusen_02, 0, 0);
setEffMoveKey(spep_3 + 100, ef_shuchusen_02, 0, 0);

setEffScaleKey(spep_3 + 34, ef_shuchusen_02, 1.2, 1.5);
setEffScaleKey(spep_3 + 100, ef_shuchusen_02, 1.2, 1.5);

setEffRotateKey(spep_3 + 34, ef_shuchusen_02, 0);
setEffRotateKey(spep_3 + 100, ef_shuchusen_02, 0);

setEffAlphaKey(spep_3 + 34, ef_shuchusen_02, 0);
setEffAlphaKey(spep_3 + 35, ef_shuchusen_02, 255);
setEffAlphaKey(spep_3 + 36, ef_shuchusen_02, 255);
setEffAlphaKey(spep_3 + 100, ef_shuchusen_02, 255);

--白フェード
entryFade(spep_3, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255); --演出の入り
entryFade(spep_3 + 34, 1, 0, 6, fcolor_r, fcolor_g, fcolor_b, 200); --気弾発射
entryFade(spep_3 + 90, 8, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255); --次のシーンへ

--SE
se_1 = playSe( spep_3, 17);  --気弾を溜める
stopSe(spep_3 + 34, se_1, 4);
playSe(spep_3 + 34, 1021); --気弾発射

--書き文字
ct_zuo_01 = entryEffectLife(spep_3 + 34, 10012, 54, 0x100, -1, 0, 50, 267.8); --ズオ
setEffShake(spep_3 + 34, ct_zuo_01, 54, 10);

F_02 = 4; --フレーム補正

setEffMoveKey( spep_3 + 38 - F_02, ct_zuo_01, 50, 268.7 , 0 );
setEffMoveKey( spep_3 + 40 - F_02, ct_zuo_01, 63.8, 296.7 , 0 );
setEffMoveKey( spep_3 + 42 - F_02, ct_zuo_01, 64.8, 332.3 , 0 );
setEffMoveKey( spep_3 + 44 - F_02, ct_zuo_01, 86.1, 349 , 0 );
setEffMoveKey( spep_3 + 82 - F_02, ct_zuo_01, 72.6, 362.5 , 0 );
setEffMoveKey( spep_3 + 84 - F_02, ct_zuo_01, 102, 348.2 , 0 );
setEffMoveKey( spep_3 + 86 - F_02, ct_zuo_01, 96.4, 369.1 , 0 );
setEffMoveKey( spep_3 + 88 - F_02, ct_zuo_01, 133.9, 346.7 , 0 );
setEffMoveKey( spep_3 + 90 - F_02, ct_zuo_01, 120.1, 375.6 , 0 );
setEffMoveKey( spep_3 + 92 - F_02, ct_zuo_01, 132, 379 , 0 );

setEffScaleKey( spep_3 + 38 - F_02, ct_zuo_01, 0.29, 0.29 );
setEffScaleKey( spep_3 + 40 - F_02, ct_zuo_01, 0.96, 0.96 );
setEffScaleKey( spep_3 + 42 - F_02, ct_zuo_01, 1.63, 1.63 );
setEffScaleKey( spep_3 + 44 - F_02, ct_zuo_01, 2.3, 2.3 );
setEffScaleKey( spep_3 + 82 - F_02, ct_zuo_01, 2.3, 2.3 );
setEffScaleKey( spep_3 + 84 - F_02, ct_zuo_01, 2.99, 2.99 );
setEffScaleKey( spep_3 + 86 - F_02, ct_zuo_01, 3.69, 3.69 );
setEffScaleKey( spep_3 + 88 - F_02, ct_zuo_01, 4.38, 4.38 );
setEffScaleKey( spep_3 + 90 - F_02, ct_zuo_01, 5.07, 5.07 );
setEffScaleKey( spep_3 + 92 - F_02, ct_zuo_01, 5.76, 5.76 );

setEffRotateKey( spep_3 + 38 - F_02, ct_zuo_01, 9.7 );
setEffRotateKey( spep_3 + 40 - F_02, ct_zuo_01, 15.4 );
setEffRotateKey( spep_3 + 42 - F_02, ct_zuo_01, 21.3 );
setEffRotateKey( spep_3 + 44 - F_02, ct_zuo_01, 27.2 );
setEffRotateKey( spep_3 + 92 - F_02, ct_zuo_01, 27.2 );

setEffAlphaKey( spep_3 + 38 - F_02, ct_zuo_01, 0 );
setEffAlphaKey( spep_3 + 39 - F_02, ct_zuo_01, 255 );
setEffAlphaKey( spep_3 + 40 - F_02, ct_zuo_01, 255 );
setEffAlphaKey( spep_3 + 82 - F_02, ct_zuo_01, 255 );
setEffAlphaKey( spep_3 + 84 - F_02, ct_zuo_01, 204 );
setEffAlphaKey( spep_3 + 86 - F_02, ct_zuo_01, 153 );
setEffAlphaKey( spep_3 + 88 - F_02, ct_zuo_01, 102 );
setEffAlphaKey( spep_3 + 90 - F_02, ct_zuo_01, 51 );
setEffAlphaKey( spep_3 + 92 - F_02, ct_zuo_01, 0 );

------------------------------------------------------
-- 着弾(80F)
------------------------------------------------------

--フレーム指定
spep_4 = spep_3 + 100;

--エフェクト
ef_chakudan = entryEffect(spep_4, SP_03r, 0x100, -1 ,0 ,0, 0); --着弾
setEffMoveKey(spep_4, ef_chakudan, 0, 0);
setEffMoveKey(spep_4 + 80, ef_chakudan, 0, 0);

setEffScaleKey(spep_4, ef_chakudan, 1.0, 1.0);
setEffScaleKey(spep_4 + 80, ef_chakudan, 1.0, 1.0);

setEffRotateKey(spep_4, ef_chakudan, 0);
setEffRotateKey(spep_4 + 80, ef_chakudan, 0);

setEffAlphaKey(spep_4, ef_chakudan, 255);
setEffAlphaKey(spep_4 + 80, ef_chakudan, 255);

ef_chakudan_bg = entryEffect(spep_4, SP_04r, 0x80, -1 ,0 ,0, 0); --着弾_背景
setEffMoveKey(spep_4, ef_chakudan_bg, 0, 0);
setEffMoveKey(spep_4 + 80, ef_chakudan_bg, 0, 0);

setEffScaleKey(spep_4, ef_chakudan_bg, 1.0, 1.0);
setEffScaleKey(spep_4 + 80, ef_chakudan_bg, 1.0, 1.0);

setEffRotateKey(spep_4, ef_chakudan_bg, 0);
setEffRotateKey(spep_4 + 80, ef_chakudan_bg, 0);

setEffAlphaKey(spep_4, ef_chakudan_bg, 255);
setEffAlphaKey(spep_4 + 80, ef_chakudan_bg, 255);

--集中線
ef_shuchusen_03 = entryEffectLife(spep_4 + 46, 906, 34, 0x100, -1, 0, 90, 0);
setEffMoveKey(spep_4 + 46, ef_shuchusen_03, 90, 0);
setEffMoveKey(spep_4 + 80, ef_shuchusen_03, 90, 0);

setEffScaleKey(spep_4 + 46, ef_shuchusen_03, 1.2, 1.2);
setEffScaleKey(spep_4 + 80, ef_shuchusen_03, 1.2, 1.2);

setEffRotateKey(spep_4 + 46, ef_shuchusen_03, 0);
setEffRotateKey(spep_4 + 80, ef_shuchusen_03, 0);

setEffAlphaKey(spep_4 + 46, ef_shuchusen_03, 0);
setEffAlphaKey(spep_4 + 47, ef_shuchusen_03, 255);
setEffAlphaKey(spep_4 + 48, ef_shuchusen_03, 255);
setEffAlphaKey(spep_4 + 80, ef_shuchusen_03, 255);

--白フェード
entryFade(spep_4 + 46, 1, 0, 6, fcolor_r, fcolor_g, fcolor_b, 200); --気弾命中
entryFade(spep_4 + 68, 8, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255); --次のシーンへ

--SE
playSe(spep_4, 1022); --気弾発射

--書き文字
ct_zudodo_01 = entryEffectLife(spep_4, 10014, 58, 0x100, -1, 0, 159.2, 335); --ズドド
setEffShake(spep_4, ct_zudodo_01, 58, 10);

setEffMoveKey( spep_4 + 0, ct_zudodo_01, 159.2, 335 , 0 );
setEffMoveKey( spep_4 + 2, ct_zudodo_01, 150.7, 318.4 , 0 );
setEffMoveKey( spep_4 + 4, ct_zudodo_01, 163.6, 326.7 , 0 );
setEffMoveKey( spep_4 + 6, ct_zudodo_01, 147.1, 301 , 0 );
setEffMoveKey( spep_4 + 8, ct_zudodo_01, 168, 318.5 , 0 );
setEffMoveKey( spep_4 + 10, ct_zudodo_01, 148, 305.6 , 0 );
setEffMoveKey( spep_4 + 12, ct_zudodo_01, 161.3, 331.1 , 0 );
setEffMoveKey( spep_4 + 14, ct_zudodo_01, 152, 320.4 , 0 );
setEffMoveKey( spep_4 + 16, ct_zudodo_01, 164.3, 334.6 , 0 );
setEffMoveKey( spep_4 + 18, ct_zudodo_01, 154.5, 323.4 , 0 );
setEffMoveKey( spep_4 + 20, ct_zudodo_01, 167.2, 338.2 , 0 );
setEffMoveKey( spep_4 + 22, ct_zudodo_01, 157, 326.4 , 0 );
setEffMoveKey( spep_4 + 24, ct_zudodo_01, 170.2, 341.7 , 0 );
setEffMoveKey( spep_4 + 26, ct_zudodo_01, 159.4, 329.4 , 0 );
setEffMoveKey( spep_4 + 28, ct_zudodo_01, 173.1, 345.3 , 0 );
setEffMoveKey( spep_4 + 30, ct_zudodo_01, 161.9, 332.5 , 0 );
setEffMoveKey( spep_4 + 32, ct_zudodo_01, 176.1, 348.8 , 0 );
setEffMoveKey( spep_4 + 34, ct_zudodo_01, 164.4, 335.5 , 0 );
setEffMoveKey( spep_4 + 36, ct_zudodo_01, 179, 352.4 , 0 );
setEffMoveKey( spep_4 + 38, ct_zudodo_01, 166.9, 338.5 , 0 );
setEffMoveKey( spep_4 + 40, ct_zudodo_01, 182, 355.9 , 0 );
setEffMoveKey( spep_4 + 42, ct_zudodo_01, 169.4, 341.5 , 0 );
setEffMoveKey( spep_4 + 44, ct_zudodo_01, 184.9, 359.5 , 0 );
setEffMoveKey( spep_4 + 46, ct_zudodo_01, 171.9, 344.5 , 0 );
setEffMoveKey( spep_4 + 48, ct_zudodo_01, 187.9, 363 , 0 );
setEffMoveKey( spep_4 + 50, ct_zudodo_01, 174.4, 347.5 , 0 );
setEffMoveKey( spep_4 + 52, ct_zudodo_01, 190.3, 363 , 0 );
setEffMoveKey( spep_4 + 54, ct_zudodo_01, 172.8, 340.1 , 0 );
setEffMoveKey( spep_4 + 56, ct_zudodo_01, 192.1, 359.5 , 0 );
setEffMoveKey( spep_4 + 58, ct_zudodo_01, 192.9, 357.8 , 0 );

setEffScaleKey( spep_4 + 0, ct_zudodo_01, 1.16, 1.16 );
setEffScaleKey( spep_4 + 2, ct_zudodo_01, 1.84, 1.84 );
setEffScaleKey( spep_4 + 4, ct_zudodo_01, 2.52, 2.52 );
setEffScaleKey( spep_4 + 6, ct_zudodo_01, 3.2, 3.2 );
setEffScaleKey( spep_4 + 8, ct_zudodo_01, 3.88, 3.88 );
setEffScaleKey( spep_4 + 10, ct_zudodo_01, 2.84, 2.84 );
setEffScaleKey( spep_4 + 12, ct_zudodo_01, 1.8, 1.8 );
setEffScaleKey( spep_4 + 14, ct_zudodo_01, 1.84, 1.84 );
setEffScaleKey( spep_4 + 16, ct_zudodo_01, 1.88, 1.88 );
setEffScaleKey( spep_4 + 18, ct_zudodo_01, 1.92, 1.92 );
setEffScaleKey( spep_4 + 20, ct_zudodo_01, 1.96, 1.96 );
setEffScaleKey( spep_4 + 22, ct_zudodo_01, 2.01, 2.01 );
setEffScaleKey( spep_4 + 24, ct_zudodo_01, 2.05, 2.05 );
setEffScaleKey( spep_4 + 26, ct_zudodo_01, 2.09, 2.09 );
setEffScaleKey( spep_4 + 28, ct_zudodo_01, 2.13, 2.13 );
setEffScaleKey( spep_4 + 30, ct_zudodo_01, 2.17, 2.17 );
setEffScaleKey( spep_4 + 32, ct_zudodo_01, 2.21, 2.21 );
setEffScaleKey( spep_4 + 34, ct_zudodo_01, 2.25, 2.25 );
setEffScaleKey( spep_4 + 36, ct_zudodo_01, 2.29, 2.29 );
setEffScaleKey( spep_4 + 38, ct_zudodo_01, 2.33, 2.33 );
setEffScaleKey( spep_4 + 40, ct_zudodo_01, 2.37, 2.37 );
setEffScaleKey( spep_4 + 42, ct_zudodo_01, 2.41, 2.41 );
setEffScaleKey( spep_4 + 44, ct_zudodo_01, 2.45, 2.45 );
setEffScaleKey( spep_4 + 46, ct_zudodo_01, 2.49, 2.49 );
setEffScaleKey( spep_4 + 48, ct_zudodo_01, 2.53, 2.53 );
setEffScaleKey( spep_4 + 50, ct_zudodo_01, 2.57, 2.57 );
setEffScaleKey( spep_4 + 52, ct_zudodo_01, 2.86, 2.86 );
setEffScaleKey( spep_4 + 54, ct_zudodo_01, 3.15, 3.15 );
setEffScaleKey( spep_4 + 56, ct_zudodo_01, 3.43, 3.43 );
setEffScaleKey( spep_4 + 58, ct_zudodo_01, 3.72, 3.72 );

setEffRotateKey( spep_4 + 0, ct_zudodo_01, 300 );
setEffRotateKey( spep_4 + 58, ct_zudodo_01, 300 );

setEffAlphaKey( spep_4 + 0, ct_zudodo_01, 255 );
setEffAlphaKey( spep_4 + 50, ct_zudodo_01, 255 );
setEffAlphaKey( spep_4 + 52, ct_zudodo_01, 191 );
setEffAlphaKey( spep_4 + 54, ct_zudodo_01, 128 );
setEffAlphaKey( spep_4 + 56, ct_zudodo_01, 64 );
setEffAlphaKey( spep_4 + 58, ct_zudodo_01, 0 );

--敵
F_01 = 3; --フレーム補正変数

setDisp( spep_4 + 0, 1, 1 );
changeAnime( spep_4 + 0, 1, 104 );
setShakeChara(spep_4, 1, 12, 10);

setMoveKey( spep_4, 1, 322.3, 19 , 0 );
setMoveKey( spep_4 - F_01 + 4, 1, 322.3, 19 , 0 );
setMoveKey( spep_4 - F_01 + 6, 1, 313.4, 20.6 , 0 );
setMoveKey( spep_4 - F_01 + 8, 1, 304.5, 22.2 , 0 );
setMoveKey( spep_4 - F_01 + 10, 1, 295.5, 23.8 , 0 );
setMoveKey( spep_4 - F_01 + 12, 1, 286.6, 25.4 , 0 );
setMoveKey( spep_4 - F_01 + 14, 1, 277.7, 27 , 0 );

setScaleKey( spep_4, 1, 0.45, 0.45 );
setScaleKey( spep_4 - F_01 + 4, 1, 0.45, 0.45 );
setScaleKey( spep_4 - F_01 + 6, 1, 0.48, 0.48 );
setScaleKey( spep_4 - F_01 + 8, 1, 0.51, 0.51 );
setScaleKey( spep_4 - F_01 + 10, 1, 0.54, 0.54 );
setScaleKey( spep_4 - F_01 + 12, 1, 0.57, 0.57 );
setScaleKey( spep_4 - F_01 + 14, 1, 0.6, 0.6 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4 - F_01 + 14, 1, 0 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_4 + 12; --エンドフェイズのフレーム数を置き換える

stopSe(SP_dodge - 12, se_2); --演出のSEを停止
playSe( SP_dodge - 12, 1042);

pauseAll( SP_dodge, 67);

--敵の位置
setMoveKey( SP_dodge + 0, 1, 277.7, 27 , 0 );
setMoveKey( SP_dodge + 2, 1, 268.7, 28.5 , 0 );
setMoveKey( SP_dodge + 4, 1, 259.8, 30.1 , 0 );
setMoveKey( SP_dodge + 6, 1, 250.8, 31.7 , 0 );
setMoveKey( SP_dodge + 8, 1, 241.9, 33.3 , 0 );
setMoveKey( SP_dodge + 10, 1, 233, 34.9 , 0 );

setScaleKey( SP_dodge + 0, 1, 0.6, 0.6 );
setScaleKey( SP_dodge + 2, 1, 0.64, 0.6 );
setScaleKey( SP_dodge + 4, 1, 0.67, 0.67 );
setScaleKey( SP_dodge + 6, 1, 0.7, 0.7 );
setScaleKey( SP_dodge + 8, 1, 0.73, 0.73 );
setScaleKey( SP_dodge + 10, 1, 0.76, 0.76 );

setRotateKey( SP_dodge + 0, 1, 0 );
setRotateKey( SP_dodge + 2, 1, 0 );
setRotateKey( SP_dodge + 4, 1, 0 );
setRotateKey( SP_dodge + 6, 1, 0 );
setRotateKey( SP_dodge + 8, 1, 0 );
setRotateKey( SP_dodge + 10, 1, 0 );

speff = entryEffectUnpausable( SP_dodge - 12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

dodge = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
setEffScaleKey( SP_dodge - 1, dodge, -1.0, 1.0);
setEffAlphaKey( SP_dodge - 1, dodge, 255);

entryFade( SP_dodge + 5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );

endPhase( SP_dodge + 10);

do return end
else end

------------------------------------------------------
-- 回避(終)
------------------------------------------------------

playSe(spep_4 + 48, 1021);

setShakeChara(spep_4 + 14, 1, 36, 15);

setMoveKey( spep_4 - F_01 + 16, 1, 268.7, 28.5 , 0 );
setMoveKey( spep_4 - F_01 + 18, 1, 259.8, 30.1 , 0 );
setMoveKey( spep_4 - F_01 + 20, 1, 250.8, 31.7 , 0 );
setMoveKey( spep_4 - F_01 + 22, 1, 241.9, 33.3 , 0 );
setMoveKey( spep_4 - F_01 + 24, 1, 233, 34.9 , 0 );
setMoveKey( spep_4 - F_01 + 26, 1, 224, 36.5 , 0 );
setMoveKey( spep_4 - F_01 + 28, 1, 215.1, 38.1 , 0 );
setMoveKey( spep_4 - F_01 + 30, 1, 206.2, 39.7 , 0 );
setMoveKey( spep_4 - F_01 + 32, 1, 197.2, 41.3 , 0 );
setMoveKey( spep_4 - F_01 + 34, 1, 193.1, 42 , 0 );
setMoveKey( spep_4 - F_01 + 36, 1, 189, 42.7 , 0 );
setMoveKey( spep_4 - F_01 + 38, 1, 184.9, 43.5 , 0 );
setMoveKey( spep_4 - F_01 + 40, 1, 180.7, 44.2 , 0 );
setMoveKey( spep_4 - F_01 + 42, 1, 176.6, 45 , 0 );
setMoveKey( spep_4 - F_01 + 44, 1, 172.5, 45.7 , 0 );
setMoveKey( spep_4 - F_01 + 46, 1, 168.4, 46.5 , 0 );
setMoveKey( spep_4 - F_01 + 48, 1, 164.3, 47.2 , 0 );
setMoveKey( spep_4 - F_01 + 51, 1, 160.2, 47.9 , 0 );

setScaleKey( spep_4 - F_01 + 16, 1, 0.64, 0.64 );
setScaleKey( spep_4 - F_01 + 18, 1, 0.67, 0.67 );
setScaleKey( spep_4 - F_01 + 20, 1, 0.7, 0.7 );
setScaleKey( spep_4 - F_01 + 22, 1, 0.73, 0.73 );
setScaleKey( spep_4 - F_01 + 24, 1, 0.76, 0.76 );
setScaleKey( spep_4 - F_01 + 26, 1, 0.8, 0.8 );
setScaleKey( spep_4 - F_01 + 28, 1, 0.83, 0.83 );
setScaleKey( spep_4 - F_01 + 30, 1, 0.86, 0.86 );
setScaleKey( spep_4 - F_01 + 32, 1, 0.89, 0.89 );
setScaleKey( spep_4 - F_01 + 34, 1, 0.91, 0.91 );
setScaleKey( spep_4 - F_01 + 36, 1, 0.92, 0.92 );
setScaleKey( spep_4 - F_01 + 38, 1, 0.93, 0.93 );
setScaleKey( spep_4 - F_01 + 40, 1, 0.95, 0.95 );
setScaleKey( spep_4 - F_01 + 42, 1, 0.96, 0.96 );
setScaleKey( spep_4 - F_01 + 44, 1, 0.98, 0.98 );
setScaleKey( spep_4 - F_01 + 46, 1, 0.99, 0.99 );
setScaleKey( spep_4 - F_01 + 48, 1, 1.01, 1.01 );
setScaleKey( spep_4 - F_01 + 51, 1, 1.02, 1.02 );

setRotateKey( spep_4 - F_01 + 16, 1, 0 );
setRotateKey( spep_4 - F_01 + 51, 1, 0 );

changeAnime( spep_4 - F_01 + 52, 1, 108 );
setMoveKey( spep_4 - F_01 + 52, 1, 178.2, 52 , 0 );
setMoveKey( spep_4 - F_01 + 54, 1, 183.8, 50.2 , 0 );
setMoveKey( spep_4 - F_01 + 56, 1, 190.3, 48.1 , 0 );
setMoveKey( spep_4 - F_01 + 58, 1, 197.6, 45.7 , 0 );
setMoveKey( spep_4 - F_01 + 60, 1, 205.8, 43.1 , 0 );
setMoveKey( spep_4 - F_01 + 62, 1, 214.7, 40.3 , 0 );
setMoveKey( spep_4 - F_01 + 64, 1, 224.5, 37.2 , 0 );
setMoveKey( spep_4 - F_01 + 66, 1, 235.1, 33.8 , 0 );
setMoveKey( spep_4 - F_01 + 68, 1, 246.5, 30.2 , 0 );
setMoveKey( spep_4 - F_01 + 70, 1, 258.7, 26.4 , 0 );
setMoveKey( spep_4 - F_01 + 72, 1, 271.8, 22.3 , 0 );
setMoveKey( spep_4 - F_01 + 74, 1, 285.7, 17.9 , 0 );
setMoveKey( spep_4 - F_01 + 76, 1, 300.4, 13.4 , 0 );
setMoveKey( spep_4 - F_01 + 78, 1, 316, 8.6 , 0 );
setMoveKey( spep_4 + 80, 1, 316, 8.6 , 0 );

setScaleKey( spep_4 - F_01 + 52, 1, 1.08, 1.08 );
setScaleKey( spep_4 - F_01 + 54, 1, 1.03, 1.03 );
setScaleKey( spep_4 - F_01 + 56, 1, 0.99, 0.99 );
setScaleKey( spep_4 - F_01 + 58, 1, 0.93, 0.93 );
setScaleKey( spep_4 - F_01 + 60, 1, 0.87, 0.87 );
setScaleKey( spep_4 - F_01 + 62, 1, 0.8, 0.8 );
setScaleKey( spep_4 - F_01 + 64, 1, 0.73, 0.73 );
setScaleKey( spep_4 - F_01 + 66, 1, 0.65, 0.65 );
setScaleKey( spep_4 - F_01 + 68, 1, 0.56, 0.56 );
setScaleKey( spep_4 - F_01 + 70, 1, 0.47, 0.47 );
setScaleKey( spep_4 - F_01 + 72, 1, 0.37, 0.37 );
setScaleKey( spep_4 - F_01 + 74, 1, 0.26, 0.26 );
setScaleKey( spep_4 - F_01 + 76, 1, 0.15, 0.15 );
setScaleKey( spep_4 - F_01 + 78, 1, 0.04, 0.04 );
setScaleKey( spep_4 + 80, 1, 0.04, 0.04 );

setRotateKey( spep_4 - F_01 + 52, 1, 7 );
setRotateKey( spep_4 - F_01 + 54, 1, 6.7 );
setRotateKey( spep_4 - F_01 + 56, 1, 6.4 );
setRotateKey( spep_4 - F_01 + 58, 1, 6 );
setRotateKey( spep_4 - F_01 + 60, 1, 5.6 );
setRotateKey( spep_4 - F_01 + 62, 1, 5.1 );
setRotateKey( spep_4 - F_01 + 64, 1, 4.6 );
setRotateKey( spep_4 - F_01 + 66, 1, 4.1 );
setRotateKey( spep_4 - F_01 + 68, 1, 3.5 );
setRotateKey( spep_4 - F_01 + 70, 1, 2.9 );
setRotateKey( spep_4 - F_01 + 72, 1, 2.2 );
setRotateKey( spep_4 - F_01 + 74, 1, 1.5 );
setRotateKey( spep_4 - F_01 + 76, 1, 0.8 );
setRotateKey( spep_4 - F_01 + 78, 1, 0 );
setRotateKey( spep_4 + 80, 1, 0 );

------------------------------------------------------
-- ガッ(120F)
------------------------------------------------------

--フレーム指定
spep_5 = spep_4 + 80;

--エフェクト
entryEffect( spep_5, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_5, SE_10);

setDamage( spep_5 + 16, 1, 0);  -- ダメージ振動等
setShake(spep_5 + 8, 6, 15);
setShake(spep_5 + 14, 15, 10);

--ひび割れ
hibi = entryEffect( spep_5 + 2, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ
playSe(  spep_5 + 2,  SE_11);  --ひび割れ

--集中線（白）
shuchusen2 = entryEffectLife( spep_5 + 2, 906, 120, 0x00,  -1, 0,  0,  0);   -- 白
shuchusenkuro = entryEffectLife( spep_5 + 14, 1657, 120, 0x80,  -1, 0,  0,  0);   -- 黒

-- 書き文字
ct_ga = entryEffectLife( spep_5 + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );
setEffShake( spep_5 + 14, ct_ga, 30, 10);

setEffMoveKey( spep_5 + 14, ct_ga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 16, ct_ga, 4, 316.1 , 0 );
setEffMoveKey( spep_5 + 18, ct_ga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 20, ct_ga, 4, 316.1 , 0 );
setEffMoveKey( spep_5 + 22, ct_ga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 24, ct_ga, 4, 316.1 , 0 );
setEffMoveKey( spep_5 + 26, ct_ga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 28, ct_ga, 4, 316.1 , 0 );
setEffMoveKey( spep_5 + 112, ct_ga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_5 + 14, ct_ga, 2, 2 );
setEffScaleKey( spep_5 + 16, ct_ga, 2.0, 2.0);
setEffScaleKey( spep_5 + 17, cGa, 2.6, 2.6);
setEffScaleKey( spep_5 + 18, ct_ga, 4.0, 4.0);
setEffScaleKey( spep_5 + 19, ct_ga, 2.6, 2.6);
setEffScaleKey( spep_5 + 20, ct_ga, 3.8, 3.8);
setEffScaleKey( spep_5 + 112, ct_ga, 3.8, 3.8);

setEffRotateKey( spep_5 + 14, ct_ga, -40 );
setEffRotateKey( spep_5 + 16, ct_ga, -31 );
setEffRotateKey( spep_5 + 18, ct_ga, -40 );
setEffRotateKey( spep_5 + 20, ct_ga, -31 );
setEffRotateKey( spep_5 + 22, ct_ga, -40 );
setEffRotateKey( spep_5 + 24, ct_ga, -31);
setEffRotateKey( spep_5 + 26, ct_ga, -40 );
setEffRotateKey( spep_5 + 28, ct_ga, -31);
setEffRotateKey( spep_5 + 30, ct_ga, -40 );
setEffRotateKey( spep_5 + 112, ct_ga, -40 );

setEffAlphaKey( spep_5 + 14, ct_ga, 255 );
setEffAlphaKey( spep_5 + 112, ct_ga, 255 );

--敵
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

-- ダメージ表示
dealDamage(spep_5 + 16);
entryFade( spep_5 + 100, 9, 10, 1, 8, 8, 8, 255 ); -- 黒フェード
endPhase(spep_5 + 110);

end