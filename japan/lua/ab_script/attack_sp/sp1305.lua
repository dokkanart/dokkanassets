--1017440 天津飯_四妖拳

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
SP_01 = 153717; --手前ダッシュ
SP_02 = 153718; --連撃
SP_03 = 153719; --連撃_背景
SP_04 = 153720; --突き〜叩きつけ_前
SP_05 = 153721; --突き〜叩きつけ_後ろ
SP_06 = 153722; --突き〜叩きつけ_背景
SP_07 = 153723; --敵落下
SP_08 = 153724; --敵落下_背景

--敵側
SP_01r = 153717; --手前ダッシュ
SP_02r = 153718; --連撃
SP_03r = 153719; --連撃_背景
SP_04r = 153720; --突き〜叩きつけ_前
SP_05r = 153721; --突き〜叩きつけ_後ろ
SP_06r = 153722; --突き〜叩きつけ_背景
SP_07r = 153723; --敵落下
SP_08r = 153724; --敵落下_背景

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
-- 正面ダッシュ(120F)
------------------------------------------------------

--フレーム指定
spep_0 = 0;

--正面ダッシュ
ef_dash = entryEffect(spep_0, SP_01, 0x100, -1 ,0 ,0, 0);
setEffMoveKey(spep_0, ef_dash, 0, 0);
setEffMoveKey(spep_0 + 120, ef_dash, 0, 0);

setEffScaleKey(spep_0, ef_dash, 1.0, 1.0);
setEffScaleKey(spep_0 + 120, ef_dash, 1.0, 1.0);

setEffRotateKey(spep_0, ef_dash, 0);
setEffRotateKey(spep_0 + 120, ef_dash, 0);

setEffAlphaKey(spep_0, ef_dash, 255);
setEffAlphaKey(spep_0 + 120, ef_dash, 255);

--集中線
shuchusen_1 = entryEffectLife(spep_0, 906, 120, 0x100, -1, 0, 0, 0);
setEffMoveKey(spep_0, shuchusen_1, 0, 0);
setEffMoveKey(spep_0 + 120, shuchusen_1, 0, 0);

setEffScaleKey(spep_0, shuchusen_1, 1.2, 1.2);
setEffScaleKey(spep_0 + 120, shuchusen_1, 1.2, 1.2);

setEffRotateKey(spep_0, shuchusen_1, 0);
setEffRotateKey(spep_0 + 120, shuchusen_1, 0);

setEffAlphaKey(spep_0, shuchusen_1, 255);
setEffAlphaKey(spep_0 + 120, shuchusen_1, 255);

--SE
playSe(spep_0, 9); --ダッシュ音

------------------------------------------------------
--顔カットイン
------------------------------------------------------

F_kao = 10;

speff = entryEffect(spep_0 + F_kao, 1504, 0x100, -1, 0, 0, 0);  --カットイン(顔)
setEffReplaceTexture(speff, 3, 2);  --カットイン差し替え
speff1 = entryEffect(spep_0 + F_kao, 1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
setEffReplaceTexture(speff1, 4, 5);  --セリフカットイン差し替え

--ゴゴゴ
ctgogo = entryEffectLife(spep_0 + F_kao + 12, 190006, 72, 0x100, -1, 0, 520, 0);--ゴゴゴ
setEffShake(spep_0 + F_kao + 12, ctgogo, 72, 10);

setEffMoveKey(spep_0 + F_kao + 12, ctgogo, -45, 530, 0);
setEffMoveKey(spep_0 + F_kao + 12 + 72, ctgogo, -45, 530, 0);

setEffScaleKey(spep_0 + F_kao + 12, ctgogo, 0.7, 0.7);
setEffScaleKey(spep_0 + F_kao + 12 + 66, ctgogo, 0.7, 0.7 );
setEffScaleKey(spep_0 + F_kao + 12 + 72, ctgogo, 1.7, 1.7);

setEffAlphaKey( spep_0 + F_kao + 12, ctgogo, 0 );
setEffAlphaKey( spep_0 + F_kao + 13, ctgogo, 255 );
setEffAlphaKey( spep_0 + F_kao + 14, ctgogo, 255 );
setEffAlphaKey( spep_0 + F_kao + 12 + 72, ctgogo, 255 );

setEffRotateKey(spep_0 + F_kao + 12, ctgogo, 0);
setEffRotateKey(spep_0 + F_kao + 12 + 72, ctgogo, 0);

--***SE***
playSe(spep_0 + F_kao + 12,  SE_04);  --ゴゴゴ

--白フェード
entryFade(spep_0 + 100, 10, 10, 0, fcolor_r, fcolor_g, fcolor_b, 255); --次のシーンへ

--背景黒フェード
entryFadeBg(spep_0, 0, 120, 0, 0, 0, 0, 180); --薄い黒

------------------------------------------------------
-- カードカットイン(92F)
------------------------------------------------------

--フレーム指定
spep_1 = spep_0 + 120;

-- ** カードカットイン ** --
speff2 = entryEffect( spep_1, 1507, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_1, 906, 92, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1, shuchusen1, 92, 20 );

setEffMoveKey( spep_1, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_1 + 92, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_1, shuchusen1, 1.6, 1.6 );
setEffScaleKey( spep_1 + 92, shuchusen1, 1.6, 1.6 );

setEffRotateKey( spep_1, shuchusen1, 0 );
setEffRotateKey( spep_1 + 92, shuchusen1, 0 );

setEffAlphaKey( spep_1, shuchusen1, 255 );
setEffAlphaKey( spep_1 + 91, shuchusen1, 255 );
setEffAlphaKey( spep_1 + 92, shuchusen1, 0 );

-- ** 音 ** --
playSe( spep_1, SE_05 );

--白フェード
entryFade(spep_1 + 80, 8, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255); --次のシーンへ

------------------------------------------------------
-- 連撃(176F)
------------------------------------------------------

--フレーム指定
spep_2 = spep_1 + 92;

--連撃
ef_rengeki = entryEffect(spep_2, SP_02, 0x100, -1 ,0 ,0, 0);
setEffMoveKey(spep_2, ef_rengeki, 0, 0);
setEffMoveKey(spep_2 + 176, ef_rengeki, 0, 0);

setEffScaleKey(spep_2, ef_rengeki, 1.0, 1.0);
setEffScaleKey(spep_2 + 176, ef_rengeki, 1.0, 1.0);

setEffRotateKey(spep_2, ef_rengeki, 0);
setEffRotateKey(spep_2 + 176, ef_rengeki, 0);

setEffAlphaKey(spep_2, ef_rengeki, 255);
setEffAlphaKey(spep_2 + 176, ef_rengeki, 255);

--連撃_背景
ef_rengeki_bg_bg = entryEffect(spep_2, SP_03, 0x80, -1 ,0 ,0, 0);
setEffMoveKey(spep_2, ef_rengeki_bg, 0, 0);
setEffMoveKey(spep_2 + 176, ef_rengeki_bg, 0, 0);

setEffScaleKey(spep_2, ef_rengeki_bg, 1.0, 1.0);
setEffScaleKey(spep_2 + 176, ef_rengeki_bg, 1.0, 1.0);

setEffRotateKey(spep_2, ef_rengeki_bg, 0);
setEffRotateKey(spep_2 + 176, ef_rengeki_bg, 0);

setEffAlphaKey(spep_2, ef_rengeki_bg, 255);
setEffAlphaKey(spep_2 + 176, ef_rengeki_bg, 255);

--集中線
ef_shuchusen_2 = entryEffectLife(spep_2 + 28, 906, 150, 0x100, -1, 0, 0, 0);
setEffMoveKey(spep_2 + 28, ef_shuchusen_2, 0, 0);
setEffMoveKey(spep_2 + 176, ef_shuchusen_2, 0, 0);

setEffScaleKey(spep_2 +  28, ef_shuchusen_2, 1.2, 1.2);
setEffScaleKey(spep_2 + 176, ef_shuchusen_2, 1.2, 1.2);

setEffRotateKey(spep_2 + 28, ef_shuchusen_2, 0);
setEffRotateKey(spep_2 + 176, ef_shuchusen_2, 0);

setEffAlphaKey(spep_2 + 28, ef_shuchusen_2, 255);
setEffAlphaKey(spep_2 + 176, ef_shuchusen_2, 255);

--白フェード
entryFade(spep_2 + 166, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255); --次のシーンへ

--背景黒フェード
entryFadeBg(spep_2, 0, 176, 0, 0, 0, 0, 180); --薄い黒

--SE
playSe(spep_2 + 28, 1007); --連撃
playSe(spep_2 + 38, 1012); --連撃
playSe(spep_2 + 48, 1003); --連撃
playSe(spep_2 + 58, 1007); --連撃
playSe(spep_2 + 68, 1000); --連撃
playSe(spep_2 + 78, 1001); --連撃
playSe(spep_2 + 88, 1004); --連撃
playSe(spep_2 + 98, 1001); --連撃
playSe(spep_2 + 108, 1000); --連撃
playSe(spep_2 + 124, 1010); --強パンチ

a = 2; --フレーム調整用の変数

--書き文字
ct_dogaga = entryEffectLife( spep_2 - a + 30, 10017, 90, 0x100, -1, 0, 12, 226.8 ); --ドガガガッ
setEffMoveKey( spep_2 - a + 30, ct_dogaga, 12, 226.8 , 0 );
setEffMoveKey( spep_2 - a + 32, ct_dogaga, 11.8, 227.2 , 0 );
setEffMoveKey( spep_2 - a + 34, ct_dogaga, 4, 236.1 , 0 );
setEffMoveKey( spep_2 - a + 36, ct_dogaga, 11.8, 227 , 0 );
setEffMoveKey( spep_2 - a + 38, ct_dogaga, 4.8, 235 , 0 );
setEffMoveKey( spep_2 - a + 40, ct_dogaga, 11.9, 226.8 , 0 );
setEffMoveKey( spep_2 - a + 42, ct_dogaga, 5.2, 234.4 , 0 );
setEffMoveKey( spep_2 - a + 44, ct_dogaga, 11.9, 226.8 , 0 );
setEffMoveKey( spep_2 - a + 46, ct_dogaga, 5.2, 234.4 , 0 );
setEffMoveKey( spep_2 - a + 48, ct_dogaga, 11.9, 226.8 , 0 );
setEffMoveKey( spep_2 - a + 50, ct_dogaga, 5.2, 234.4 , 0 );
setEffMoveKey( spep_2 - a + 52, ct_dogaga, 11.9, 226.8 , 0 );
setEffMoveKey( spep_2 - a + 54, ct_dogaga, 5.2, 234.4 , 0 );
setEffMoveKey( spep_2 - a + 56, ct_dogaga, 11.9, 226.8 , 0 );
setEffMoveKey( spep_2 - a + 58, ct_dogaga, 5.2, 234.4 , 0 );
setEffMoveKey( spep_2 - a + 60, ct_dogaga, 11.9, 226.8 , 0 );
setEffMoveKey( spep_2 - a + 62, ct_dogaga, 5.2, 234.4 , 0 );
setEffMoveKey( spep_2 - a + 64, ct_dogaga, 11.9, 226.8 , 0 );
setEffMoveKey( spep_2 - a + 66, ct_dogaga, 5.2, 234.4 , 0 );
setEffMoveKey( spep_2 - a + 68, ct_dogaga, 11.9, 226.8 , 0 );
setEffMoveKey( spep_2 - a + 70, ct_dogaga, 5.2, 234.4 , 0 );
setEffMoveKey( spep_2 - a + 72, ct_dogaga, 11.9, 226.8 , 0 );
setEffMoveKey( spep_2 - a + 74, ct_dogaga, 5.2, 234.4 , 0 );
setEffMoveKey( spep_2 - a + 76, ct_dogaga, 11.9, 226.8 , 0 );
setEffMoveKey( spep_2 - a + 78, ct_dogaga, 5.2, 234.4 , 0 );
setEffMoveKey( spep_2 - a + 80, ct_dogaga, 11.9, 226.8 , 0 );
setEffMoveKey( spep_2 - a + 82, ct_dogaga, 5.2, 234.4 , 0 );
setEffMoveKey( spep_2 - a + 84, ct_dogaga, 11.9, 226.8 , 0 );
setEffMoveKey( spep_2 - a + 86, ct_dogaga, 5.2, 234.4 , 0 );
setEffMoveKey( spep_2 - a + 88, ct_dogaga, 11.9, 226.8 , 0 );
setEffMoveKey( spep_2 - a + 90, ct_dogaga, 5.2, 234.4 , 0 );
setEffMoveKey( spep_2 - a + 92, ct_dogaga, 11.9, 226.8 , 0 );
setEffMoveKey( spep_2 - a + 94, ct_dogaga, 5.2, 234.4 , 0 );
setEffMoveKey( spep_2 - a + 96, ct_dogaga, 11.9, 226.8 , 0 );
setEffMoveKey( spep_2 - a + 98, ct_dogaga, 5.2, 234.4 , 0 );
setEffMoveKey( spep_2 - a + 100, ct_dogaga, 11.9, 226.8 , 0 );
setEffMoveKey( spep_2 - a + 102, ct_dogaga, 5.2, 234.4 , 0 );
setEffMoveKey( spep_2 - a + 104, ct_dogaga, 11.9, 226.8 , 0 );
setEffMoveKey( spep_2 - a + 106, ct_dogaga, 5.2, 234.4 , 0 );
setEffMoveKey( spep_2 - a + 108, ct_dogaga, 11.9, 226.8 , 0 );
setEffMoveKey( spep_2 - a + 110, ct_dogaga, 5.2, 234.4 , 0 );
setEffMoveKey( spep_2 - a + 112, ct_dogaga, 5.2, 234.4 , 0 );
setEffMoveKey( spep_2 - a + 114, ct_dogaga, 11.9, 226.8 , 0 );
setEffMoveKey( spep_2 - a + 116, ct_dogaga, 5.2, 234.4 , 0 );
setEffMoveKey( spep_2 - a + 118, ct_dogaga, 11.9, 226.8 , 0 );
setEffMoveKey( spep_2 - a + 120, ct_dogaga, 11.9, 226.8 , 0 );

setEffScaleKey( spep_2 - a + 30, ct_dogaga, 2.44, 2.44 );
setEffScaleKey( spep_2 - a + 32, ct_dogaga, 3.21, 3.21 );
setEffScaleKey( spep_2 - a + 34, ct_dogaga, 3.06, 3.06 );
setEffScaleKey( spep_2 - a + 36, ct_dogaga, 2.91, 2.91 );
setEffScaleKey( spep_2 - a + 38, ct_dogaga, 2.76, 2.76 );
setEffScaleKey( spep_2 - a + 40, ct_dogaga, 2.6, 2.6 );
setEffScaleKey( spep_2 - a + 120, ct_dogaga, 2.6, 2.6 );

setEffRotateKey( spep_2 - a + 30, ct_dogaga, 14.5 );
setEffRotateKey( spep_2 - a + 120, ct_dogaga, 14.5 );

setEffAlphaKey( spep_2 - a + 30, ct_dogaga, 255 );
setEffAlphaKey( spep_2 - a + 112, ct_dogaga, 255 );
setEffAlphaKey( spep_2 - a + 114, ct_dogaga, 191 );
setEffAlphaKey( spep_2 - a + 116, ct_dogaga, 128 );
setEffAlphaKey( spep_2 - a + 118, ct_dogaga, 64 );
setEffAlphaKey( spep_2 - a + 120, ct_dogaga, 0 );

ct_don = entryEffectLife( spep_2 - a + 126, 10019, 12, 0x100, -1, 0, 97.1, 155.8 );
setEffMoveKey( spep_2 - a + 126, ct_don, 97.1, 155.8 , 0 );
setEffMoveKey( spep_2 - a + 128, ct_don, 75.4, 206.9 , 0 );
setEffMoveKey( spep_2 - a + 130, ct_don, 71, 255.3 , 0 );
setEffMoveKey( spep_2 - a + 132, ct_don, 62, 265 , 0 );
setEffMoveKey( spep_2 - a + 134, ct_don, 62, 257.9 , 0 );
setEffMoveKey( spep_2 - a + 136, ct_don, 68.5, 266.5 , 0 );
setEffMoveKey( spep_2 - a + 138, ct_don, 68.5, 267.4 , 0 );

setEffScaleKey( spep_2 - a + 126, ct_don, 0.4, 0.4 );
setEffScaleKey( spep_2 - a + 128, ct_don, 1.19, 1.19 );
setEffScaleKey( spep_2 - a + 130, ct_don, 1.98, 1.98 );
setEffScaleKey( spep_2 - a + 132, ct_don, 2.01, 2.01 );
setEffScaleKey( spep_2 - a + 134, ct_don, 2.04, 2.04 );
setEffScaleKey( spep_2 - a + 136, ct_don, 2.05, 2.05 );
setEffScaleKey( spep_2 - a + 138, ct_don, 2.07, 2.07 );

setEffRotateKey( spep_2 - a + 126, ct_don, -0.3 );
setEffRotateKey( spep_2 - a + 128, ct_don, 0.3 );
setEffRotateKey( spep_2 - a + 130, ct_don, 0.8 );
setEffRotateKey( spep_2 - a + 138, ct_don, 0.8 );

setEffAlphaKey( spep_2 - a + 126, ct_don, 255 );
setEffAlphaKey( spep_2 - a + 134, ct_don, 255 );
setEffAlphaKey( spep_2 - a + 136, ct_don, 128 );
setEffAlphaKey( spep_2 - a + 138, ct_don, 0 );

--敵
setDisp( spep_2 + 0, 1, 1 );

changeAnime( spep_2 + 0, 1, 101 );
setMoveKey( spep_2 - a + 2, 1, -34.9, -36.9 , 0 );
setMoveKey( spep_2 - a + 4, 1, -31.7, -37.3 , 0 );
setMoveKey( spep_2 - a + 6, 1, -28.5, -37.8 , 0 );
setMoveKey( spep_2 - a + 8, 1, -25.2, -38.2 , 0 );
setMoveKey( spep_2 - a + 10, 1, -22, -38.7 , 0 );
setMoveKey( spep_2 - a + 12, 1, -18.7, -39.1 , 0 );
setMoveKey( spep_2 - a + 14, 1, -15.5, -39.6 , 0 );
setMoveKey( spep_2 - a + 16, 1, -12.2, -40 , 0 );
setMoveKey( spep_2 - a + 18, 1, -9, -40.4 , 0 );

setScaleKey( spep_2 + 0, 1, 1.8, 1.8 );
setScaleKey( spep_2 - a + 18, 1, 1.8, 1.8 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 + 16, 1, 0 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 18; --エンドフェイズのフレーム数を置き換える

--stopSe(SP_dodge - 12, SEの変数名); --前の演出のSEが残っている場合は停止

playSe( SP_dodge - 12, 1042);

pauseAll( SP_dodge, 67);

--敵の位置
setMoveKey( spep_2 - a + 20, 1, -4, -41.1 , 0 );
setMoveKey( spep_2 - a + 22, 1, 1.2, -41.8 , 0 );
setMoveKey( spep_2 - a + 24, 1, 6.4, -42.6 , 0 );
setMoveKey( spep_2 - a + 26, 1, 11.8, -43.4 , 0 );
setMoveKey( spep_2 - a + 29, 1, 17.3, -44.2 , 0 );

setScaleKey( spep_2 - a + 20, 1, 1.84, 1.84 );
setScaleKey( spep_2 - a + 22, 1, 1.87, 1.87 );
setScaleKey( spep_2 - a + 24, 1, 1.91, 1.91 );
setScaleKey( spep_2 - a + 26, 1, 1.94, 1.94 );
setScaleKey( spep_2 - a + 29, 1, 1.98, 1.98 );

setRotateKey( spep_2 -a + 20, 1, 0 );
setRotateKey( spep_2 -a + 22, 1, 0 );
setRotateKey( spep_2 -a + 24, 1, 0 );
setRotateKey( spep_2 -a + 26, 1, 0 );
setRotateKey( spep_2 - a + 28, 1, 0 );

speff = entryEffectUnpausable( SP_dodge - 12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

dodge = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
setEffScaleKey( SP_dodge - 1, dodge, -1.0, 1.0);
setEffAlphaKey( SP_dodge - 1, dodge, 255);

entryFade( SP_dodge + 5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- 白フェード
setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );

endPhase( SP_dodge + 10);

do return end
else end

------------------------------------------------------
-- 回避(終)
------------------------------------------------------

setMoveKey( spep_2 - a + 20, 1, -4, -41.1 , 0 );
setMoveKey( spep_2 - a + 22, 1, 1.2, -41.8 , 0 );
setMoveKey( spep_2 - a + 24, 1, 6.4, -42.6 , 0 );
setMoveKey( spep_2 - a + 26, 1, 11.8, -43.4 , 0 );
setMoveKey( spep_2 - a + 29, 1, 17.3, -44.2 , 0 );

setScaleKey( spep_2 - a + 20, 1, 1.84, 1.84 );
setScaleKey( spep_2 - a + 22, 1, 1.87, 1.87 );
setScaleKey( spep_2 - a + 24, 1, 1.91, 1.91 );
setScaleKey( spep_2 - a + 26, 1, 1.94, 1.94 );
setScaleKey( spep_2 - a + 29, 1, 1.98, 1.98 );

setRotateKey( spep_2 + 18, 1, 0 );
setRotateKey( spep_2 - a + 28, 1, 0 );

changeAnime( spep_2 - a + 30, 1, 104 );
setMoveKey( spep_2 - a + 30, 1, 17.1, -62.3 , 0 );
setMoveKey( spep_2 - a + 32, 1, 59.9, -73.2 , 0 );
setMoveKey( spep_2 - a + 34, 1, 25.2, -62.9 , 0 );
setMoveKey( spep_2 - a + 36, 1, 29.3, -63.3 , 0 );
setMoveKey( spep_2 - a + 38, 1, 35.5, -59.1 , 0 );
setMoveKey( spep_2 - a + 40, 1, 36.7, -65.3 , 0 );
setMoveKey( spep_2 - a + 42, 1, 44.2, -58.9 , 0 );
setMoveKey( spep_2 - a + 44, 1, 46.6, -62.9 , 0 );
setMoveKey( spep_2 - a + 46, 1, 52.8, -58.7 , 0 );
setMoveKey( spep_2 - a + 48, 1, 54, -65 , 0 );
setMoveKey( spep_2 - a + 50, 1, 61.6, -58.6 , 0 );
setMoveKey( spep_2 - a + 52, 1, 64, -62.6 , 0 );
setMoveKey( spep_2 - a + 54, 1, 70.1, -58.4 , 0 );
setMoveKey( spep_2 - a + 57, 1, 71.4, -64.6 , 0 );

setScaleKey( spep_2 - a + 30, 1, 1.98, 1.98 );
setScaleKey( spep_2 - a + 32, 1, 2.18, 2.18 );
setScaleKey( spep_2 - a + 34, 1, 1.98, 1.98 );
setScaleKey( spep_2 - a + 56, 1, 1.98, 1.98 );

setRotateKey( spep_2 - a + 30, 1, 0 );
setRotateKey( spep_2 - a + 32, 1, 0.2 );
setRotateKey( spep_2 - a + 34, 1, 0.5 );
setRotateKey( spep_2 - a + 36, 1, 0.7 );
setRotateKey( spep_2 - a + 38, 1, 0.9 );
setRotateKey( spep_2 - a + 40, 1, 1.2 );
setRotateKey( spep_2 - a + 42, 1, 1.4 );
setRotateKey( spep_2 - a + 44, 1, 1.6 );
setRotateKey( spep_2 - a + 46, 1, 1.8 );
setRotateKey( spep_2 - a + 48, 1, 2.1 );
setRotateKey( spep_2 - a + 50, 1, 2.3 );
setRotateKey( spep_2 - a + 52, 1, 2.5 );
setRotateKey( spep_2 - a + 54, 1, 2.8 );
setRotateKey( spep_2 - a + 57, 1, 3 );

changeAnime( spep_2 - a + 58, 1, 108 );
setMoveKey( spep_2 - a + 58, 1, 137.2, -54.4 , 0 );
setMoveKey( spep_2 - a + 60, 1, 141.3, -52.5 , 0 );
setMoveKey( spep_2 - a + 62, 1, 148.4, -45.4 , 0 );
setMoveKey( spep_2 - a + 65, 1, 152.9, -49.2 , 0 );

setScaleKey( spep_2 - a + 58, 1, 1.8, 1.8 );
setScaleKey( spep_2 - a + 64, 1, 1.8, 1.8 );

setRotateKey( spep_2 - a + 58, 1, 2.6 );
setRotateKey( spep_2 - a + 60, 1, 2.3 );
setRotateKey( spep_2 - a + 62, 1, 2 );
setRotateKey( spep_2 - a + 65, 1, 1.8 );

changeAnime( spep_2 - a + 66, 1, 106 );
setMoveKey( spep_2 - a + 66, 1, 50.8, -50 , 0 );
setMoveKey( spep_2 - a + 68, 1, 61.5, -53 , 0 );
setMoveKey( spep_2 - a + 71, 1, 76, -47.7 , 0 );

setScaleKey( spep_2 - a + 66, 1, 1.87, 1.87 );
setScaleKey( spep_2 - a + 68, 1, 1.87, 1.87 );
setScaleKey( spep_2 - a + 71, 1, 1.86, 1.86 );

setRotateKey( spep_2 - a + 66, 1, -47.4 );
setRotateKey( spep_2 - a + 68, 1, -45.1 );
setRotateKey( spep_2 - a + 71, 1, -42.8 );

changeAnime( spep_2 - a + 72, 1, 108 );
setMoveKey( spep_2 - a + 72, 1, 96.8, -52.9 , 0 );
setMoveKey( spep_2 - a + 75, 1, 116.2, -60.3 , 0 );

setScaleKey( spep_2 - a + 72, 1, 1.87, 1.87 );
setScaleKey( spep_2 - a + 74, 1, 1.87, 1.87 );

setRotateKey( spep_2 - a + 72, 1, -5.7 );
setRotateKey( spep_2 - a + 75, 1, -1.5 );

changeAnime( spep_2 - a + 76, 1, 106 );
setMoveKey( spep_2 - a + 76, 1, 62.9, -31 , 0 );
setMoveKey( spep_2 - a + 78, 1, 69, -42.1 , 0 );
setMoveKey( spep_2 - a + 81, 1, 81.6, -48.4 , 0 );

setScaleKey( spep_2 - a + 76, 1, 1.87, 1.87 );
setScaleKey( spep_2 - a + 78, 1, 1.87, 1.87 );
setScaleKey( spep_2 - a + 81, 1, 1.86, 1.86 );

setRotateKey( spep_2 - a + 76, 1, -48.7 );
setRotateKey( spep_2 - a + 78, 1, -46.3 );
setRotateKey( spep_2 - a + 81, 1, -43.8 );

changeAnime( spep_2 - a + 82, 1, 108 );
setMoveKey( spep_2 - a + 82, 1, 111.7, -42.1 , 0 );
setMoveKey( spep_2 - a + 85, 1, 129.2, -61.2 , 0 );

setScaleKey( spep_2 - a + 82, 1, 1.87, 1.87 );
setScaleKey( spep_2 - a + 84, 1, 1.87, 1.87 );

setRotateKey( spep_2 - a + 82, 1, -6.5 );
setRotateKey( spep_2 - a + 85, 1, -2 );

changeAnime( spep_2 - a + 86, 1, 106 );
setMoveKey( spep_2 - a + 86, 1, 82.4, -25.6 , 0 );
setMoveKey( spep_2 - a + 88, 1, 90.9, -19.5 , 0 );
setMoveKey( spep_2 - a + 91, 1, 105.7, -0.8 , 0 );

setScaleKey( spep_2 - a + 86, 1, 1.87, 1.87 );
setScaleKey( spep_2 - a + 88, 1, 1.87, 1.87 );
setScaleKey( spep_2 - a + 91, 1, 1.86, 1.86 );

setRotateKey( spep_2 - a + 86, 1, -48.9 );
setRotateKey( spep_2 - a + 88, 1, -48.1 );
setRotateKey( spep_2 - a + 91, 1, -47.2 );

changeAnime( spep_2 - a + 92, 1, 108 );
setMoveKey( spep_2 - a + 92, 1, 141.1, -25.2 , 0 );
setMoveKey( spep_2 - a + 95, 1, 147.7, -51 , 0 );

setScaleKey( spep_2 - a + 92, 1, 1.87, 1.87 );
setScaleKey( spep_2 - a + 94, 1, 1.87, 1.87 );

setRotateKey( spep_2 - a + 92, 1, -6.5 );
setRotateKey( spep_2 - a + 95, 1, -5.2 );

changeAnime( spep_2 - a + 96, 1, 106 );
setMoveKey( spep_2 - a + 96, 1, 91.9, -48.4 , 0 );
setMoveKey( spep_2 - a + 98, 1, 110.8, -42 , 0 );
setMoveKey( spep_2 - a + 101, 1, 124.5, -46.1 , 0 );

setScaleKey( spep_2 - a + 96, 1, 1.87, 1.87 );
setScaleKey( spep_2 - a + 98, 1, 1.87, 1.87 );
setScaleKey( spep_2 - a + 101, 1, 1.86, 1.86 );

setRotateKey( spep_2 - a + 96, 1, -48.9 );
setRotateKey( spep_2 - a + 98, 1, -46.3 );
setRotateKey( spep_2 - a + 101, 1, -43.8 );

changeAnime( spep_2 - a + 102, 1, 108 );
setMoveKey( spep_2 - a + 102, 1, 153.3, -42 , 0 );
setMoveKey( spep_2 - a + 105, 1, 169.5, -63.4 , 0 );

setScaleKey( spep_2 - a + 102, 1, 1.87, 1.87 );
setScaleKey( spep_2 - a + 104, 1, 1.87, 1.87 );

setRotateKey( spep_2 - a + 102, 1, -6.5 );
setRotateKey( spep_2 - a + 105, 1, -2 );

changeAnime( spep_2 - a + 106, 1, 106 );
setMoveKey( spep_2 - a + 106, 1, 124.2, -25.6 , 0 );
setMoveKey( spep_2 - a + 108, 1, 133.8, -17.2 , 0 );
setMoveKey( spep_2 - a + 111, 1, 147.2, -0.7 , 0 );

setScaleKey( spep_2 - a + 106, 1, 1.87, 1.87 );
setScaleKey( spep_2 - a + 108, 1, 1.87, 1.87 );
setScaleKey( spep_2 - a + 111, 1, 1.86, 1.86 );

setRotateKey( spep_2 - a + 106, 1, -48.9 );
setRotateKey( spep_2 - a + 108, 1, -48.1 );
setRotateKey( spep_2 - a + 111, 1, -47.2 );

changeAnime( spep_2 - a + 112, 1, 108 );
setMoveKey( spep_2 - a + 112, 1, 181.5, -27.4 , 0 );
setMoveKey( spep_2 - a + 114, 1, 189.5, -50.9 , 0 );
setMoveKey( spep_2 - a + 116, 1, 180.6, -46 , 0 );
setMoveKey( spep_2 - a + 118, 1, 191.3, -33.8 , 0 );
setMoveKey( spep_2 - a + 120, 1, 197.1, -31.9 , 0 );
setMoveKey( spep_2 - a + 122, 1, 202, -25.6 , 0 );
setMoveKey( spep_2 - a + 124, 1, 201.8, -29.7 , 0 );
setMoveKey( spep_2 - a + 126, 1, 247, -50.5 , 0 );
setMoveKey( spep_2 - a + 128, 1, 392.7, -44.3 , 0 );
setMoveKey( spep_2 - a + 130, 1, 528, -25.6 , 0 );
setMoveKey( spep_2 - a + 132, 1, 683.3, -33.5 , 0 );
setMoveKey( spep_2 - a + 134, 1, 853.4, -23.8 , 0 );

setScaleKey( spep_2 - a + 112, 1, 1.87, 1.87 );
setScaleKey( spep_2 - a + 124, 1, 1.87, 1.87 );
setScaleKey( spep_2 - a + 126, 1, 2.05, 2.05 );
setScaleKey( spep_2 - a + 128, 1, 1.96, 1.96 );
setScaleKey( spep_2 - a + 130, 1, 1.87, 1.87 );
setScaleKey( spep_2 - a + 134, 1, 1.87, 1.87 );

setRotateKey( spep_2 - a + 112, 1, -6.5 );
setRotateKey( spep_2 - a + 114, 1, -5.2 );
setRotateKey( spep_2 - a + 116, 1, -6.5 );
setRotateKey( spep_2 - a + 118, 1, -4.2 );
setRotateKey( spep_2 - a + 120, 1, -2 );
setRotateKey( spep_2 - a + 124, 1, -2 );
setRotateKey( spep_2 - a + 126, 1, -6.5 );
setRotateKey( spep_2 - a + 128, 1, -4.2 );
setRotateKey( spep_2 - a + 130, 1, -2 );
setRotateKey( spep_2 - a + 134, 1, -2 );

setDisp(spep_2 + 134, 1, 0);

------------------------------------------------------
-- 突き〜叩きつけ(114F)
------------------------------------------------------

--フレーム指定
spep_3 = spep_2 + 176;

--突き〜叩きつけ_上半身
ef_tatakituke = entryEffect(spep_3, SP_04, 0x100, -1 ,0 ,0, 0);
setEffMoveKey(spep_3, ef_tatakituke, 0, 0);
setEffMoveKey(spep_3 + 114, ef_tatakituke, 0, 0);

setEffScaleKey(spep_3, ef_tatakituke, 1.0, 1.0);
setEffScaleKey(spep_3 + 114, ef_tatakituke, 1.0, 1.0);

setEffRotateKey(spep_3, ef_tatakituke, 0);
setEffRotateKey(spep_3 + 114, ef_tatakituke, 0);

setEffAlphaKey(spep_3, ef_tatakituke, 255);
setEffAlphaKey(spep_3 + 114, ef_tatakituke, 255);

--突き〜叩きつけ_背景
ef_tatakituke_bg = entryEffect(spep_3, SP_06, 0x80, -1 ,0 ,0, 0);
setEffMoveKey(spep_3, ef_tatakituke_bg, 0, 0);
setEffMoveKey(spep_3 + 114, ef_tatakituke_bg, 0, 0);

setEffScaleKey(spep_3, ef_tatakituke_bg, 1.0, 1.0);
setEffScaleKey(spep_3 + 114, ef_tatakituke_bg, 1.0, 1.0);

setEffRotateKey(spep_3, ef_tatakituke_bg, 0);
setEffRotateKey(spep_3 + 114, ef_tatakituke_bg, 0);

setEffAlphaKey(spep_3, ef_tatakituke_bg, 255);
setEffAlphaKey(spep_3 + 114, ef_tatakituke_bg, 255);

--突き〜叩きつけ_下半身
ef_tatakituke_2 = entryEffect(spep_3, SP_05, 0x80, -1 ,0 ,0, 0);
setEffMoveKey(spep_3, ef_tatakituke_2, 0, 0);
setEffMoveKey(spep_3 + 114, ef_tatakituke_2, 0, 0);

setEffScaleKey(spep_3, ef_tatakituke_2, 1.0, 1.0);
setEffScaleKey(spep_3 + 114, ef_tatakituke_2, 1.0, 1.0);

setEffRotateKey(spep_3, ef_tatakituke_2, 0);
setEffRotateKey(spep_3 + 114, ef_tatakituke_2, 0);

setEffAlphaKey(spep_3, ef_tatakituke_2, 255);
setEffAlphaKey(spep_3 + 114, ef_tatakituke_2, 255);

--集中線
ef_shuchusen_3 = entryEffectLife(spep_3, 906, 82, 0x100, -1, 0, 0, 0);
setEffMoveKey(spep_3, ef_shuchusen_3, 0, 0);
setEffMoveKey(spep_3 + 82, ef_shuchusen_3, 0, 0);

setEffScaleKey(spep_3, ef_shuchusen_3, 1.0, 1.0);
setEffScaleKey(spep_3 + 82, ef_shuchusen_3, 1.0, 1.0);

setEffRotateKey(spep_3, ef_shuchusen_3, 0);
setEffRotateKey(spep_3 + 82, ef_shuchusen_3, 0);

setEffAlphaKey(spep_3, ef_shuchusen_3, 255);
setEffAlphaKey(spep_3 + 82, ef_shuchusen_3, 255);

--背景黒フェード
entryFadeBg(spep_3, 0, 114, 0, 0, 0, 0, 180); --薄い黒

--SE
playSe(spep_3 + 0, 1018); --迫る
playSe(spep_3 + 34, 1009); --突き
playSe(spep_3 + 62, 1011); --叩きつけ

--書き文字
ct_ga = entryEffectLife( spep_3 - a + 36, 10005, 14, 0x100, -1, 0, 180.7, 293.6 ); --ガッ
setEffMoveKey( spep_3 - a + 36, ct_ga, 180.7, 293.6 , 0 );
setEffMoveKey( spep_3 - a + 38, ct_ga, 188.9, 314.8 , 0 );
setEffMoveKey( spep_3 - a + 40, ct_ga, 198.7, 321.2 , 0 );
setEffMoveKey( spep_3 - a + 42, ct_ga, 196.8, 329.8 , 0 );
setEffMoveKey( spep_3 - a + 44, ct_ga, 210.5, 330.9 , 0 );
setEffMoveKey( spep_3 - a + 46, ct_ga, 207.1, 335.6 , 0 );
setEffMoveKey( spep_3 - a + 48, ct_ga, 201.9, 337.8 , 0 );
setEffMoveKey( spep_3 - a + 50, ct_ga, 202.3, 338.3 , 0 );

setEffScaleKey( spep_3 - a + 36, ct_ga, 0.4, 0.4 );
setEffScaleKey( spep_3 - a + 38, ct_ga, 1.45, 1.45 );
setEffScaleKey( spep_3 - a + 40, ct_ga, 1.8, 1.8 );
setEffScaleKey( spep_3 - a + 46, ct_ga, 1.8, 1.8 );
setEffScaleKey( spep_3 - a + 48, ct_ga, 1.68, 1.68 );
setEffScaleKey( spep_3 - a + 50, ct_ga, 1.64, 1.64 );

setEffRotateKey( spep_3 - a + 36, ct_ga, 13.6 );
setEffRotateKey( spep_3 - a + 46, ct_ga, 13.6 );
setEffRotateKey( spep_3 - a + 48, ct_ga, 13.7 );
setEffRotateKey( spep_3 - a + 50, ct_ga, 13.7 );

setEffAlphaKey( spep_3 - a + 36, ct_ga, 255 );
setEffAlphaKey( spep_3 - a + 46, ct_ga, 255 );
setEffAlphaKey( spep_3 - a + 48, ct_ga, 64 );
setEffAlphaKey( spep_3 - a + 50, ct_ga, 0 );


ct_dogo = entryEffectLife( spep_3 - a + 64, 10018, 40, 0x100, -1, 0, 139.1, 460.2 ); --ドゴォン
setEffMoveKey( spep_3 - a + 64, ct_dogo, 139.1, 460.2 , 0 );
setEffMoveKey( spep_3 - a + 66, ct_dogo, 149.6, 443.3 , 0 );
setEffMoveKey( spep_3 - a + 68, ct_dogo, 141.9, 407.5 , 0 );
setEffMoveKey( spep_3 - a + 70, ct_dogo, 147.3, 413.2 , 0 );
setEffMoveKey( spep_3 - a + 72, ct_dogo, 145.6, 402.3 , 0 );
setEffMoveKey( spep_3 - a + 74, ct_dogo, 141.9, 407.5 , 0 );
setEffMoveKey( spep_3 - a + 76, ct_dogo, 147.3, 413.2 , 0 );
setEffMoveKey( spep_3 - a + 78, ct_dogo, 145.6, 402.3 , 0 );
setEffMoveKey( spep_3 - a + 80, ct_dogo, 141.9, 407.5 , 0 );
setEffMoveKey( spep_3 - a + 82, ct_dogo, 147.3, 413.2 , 0 );
setEffMoveKey( spep_3 - a + 84, ct_dogo, 145.6, 402.3 , 0 );
setEffMoveKey( spep_3 - a + 86, ct_dogo, 141.9, 407.5 , 0 );
setEffMoveKey( spep_3 - a + 88, ct_dogo, 147.3, 413.2 , 0 );
setEffMoveKey( spep_3 - a + 90, ct_dogo, 145.6, 402.3 , 0 );
setEffMoveKey( spep_3 - a + 92, ct_dogo, 141.9, 407.5 , 0 );
setEffMoveKey( spep_3 - a + 94, ct_dogo, 147.3, 413.2 , 0 );
setEffMoveKey( spep_3 - a + 96, ct_dogo, 169.4, 488.9 , 0 );
setEffMoveKey( spep_3 - a + 98, ct_dogo, 168.2, 592.6 , 0 );
setEffMoveKey( spep_3 - a + 100, ct_dogo, 156.1, 671 , 0 );
setEffMoveKey( spep_3 - a + 102, ct_dogo, 141, 774 , 0 );
setEffMoveKey( spep_3 - a + 104, ct_dogo, 131.6, 869 , 0 );

setEffScaleKey( spep_3 - a + 64, ct_dogo, 5.78, 5.78 );
setEffScaleKey( spep_3 - a + 66, ct_dogo, 4.14, 4.14 );
setEffScaleKey( spep_3 - a + 68, ct_dogo, 2.5, 2.5 );
setEffScaleKey( spep_3 - a + 94, ct_dogo, 2.5, 2.5 );
setEffScaleKey( spep_3 - a + 96, ct_dogo, 3.79, 3.79 );
setEffScaleKey( spep_3 - a + 104, ct_dogo, 3.79, 3.79 );

setEffRotateKey( spep_3 - a + 64, ct_dogo, 25.5 );
setEffRotateKey( spep_3 - a + 104, ct_dogo, 25.5 );

setEffAlphaKey( spep_3 - a + 64, ct_dogo, 77 );
setEffAlphaKey( spep_3 - a + 66, ct_dogo, 166 );
setEffAlphaKey( spep_3 - a + 68, ct_dogo, 255 );
setEffAlphaKey( spep_3 - a + 96, ct_dogo, 255 );
setEffAlphaKey( spep_3 - a + 98, ct_dogo, 191 );
setEffAlphaKey( spep_3 - a + 100, ct_dogo, 128 );
setEffAlphaKey( spep_3 - a + 102, ct_dogo, 64 );
setEffAlphaKey( spep_3 - a + 104, ct_dogo, 0 );

--敵
setDisp( spep_3 + 0, 1, 1 );
changeAnime( spep_3 + 0, 1, 107 );
setMoveKey( spep_3 + 0, 1, -16, 4.8 , 0 );
setMoveKey( spep_3 + 2, 1, -5.8, -30.8 , 0 );
setMoveKey( spep_3 + 4, 1, 4.5, -64.2 , 0 );
setMoveKey( spep_3 + 6, 1, 14.4, -95.4 , 0 );
setMoveKey( spep_3 + 8, 1, 24, -123.9 , 0 );
setMoveKey( spep_3 + 10, 1, 24.6, -126.6 , 0 );
setMoveKey( spep_3 + 12, 1, 25.2, -128.9 , 0 );
setMoveKey( spep_3 + 14, 1, 25.7, -130.9 , 0 );
setMoveKey( spep_3 + 16, 1, 26.1, -132.6 , 0 );
setMoveKey( spep_3 + 18, 1, 26.4, -134 , 0 );
setMoveKey( spep_3 + 20, 1, 26.8, -135.1 , 0 );
setMoveKey( spep_3 + 22, 1, 27, -135.9 , 0 );
setMoveKey( spep_3 + 24, 1, 27.2, -136.4 , 0 );
setMoveKey( spep_3 + 26, 1, 27.3, -136.5 , 0 );
setMoveKey( spep_3 + 28, 1, 27.4, -136.4 , 0 );
setMoveKey( spep_3 + 30, 1, 27.5, -136 , 0 );
setMoveKey( spep_3 + 32, 1, 27.5, -135.2 , 0 );
setMoveKey( spep_3 + 33, 1, 27.3, -134.2 , 0 );

setScaleKey( spep_3 + 0, 1, 0.85, 0.85 );
setScaleKey( spep_3 + 2, 1, 0.93, 0.93 );
setScaleKey( spep_3 + 4, 1, 1.01, 1.01 );
setScaleKey( spep_3 + 6, 1, 1.08, 1.08 );
setScaleKey( spep_3 + 8, 1, 1.15, 1.15 );
setScaleKey( spep_3 + 10, 1, 1.16, 1.16 );
setScaleKey( spep_3 + 12, 1, 1.17, 1.17 );
setScaleKey( spep_3 + 14, 1, 1.18, 1.18 );
setScaleKey( spep_3 + 16, 1, 1.19, 1.19 );
setScaleKey( spep_3 + 18, 1, 1.2, 1.2 );
setScaleKey( spep_3 + 20, 1, 1.21, 1.21 );
setScaleKey( spep_3 + 22, 1, 1.21, 1.21 );
setScaleKey( spep_3 + 24, 1, 1.22, 1.22 );
setScaleKey( spep_3 + 26, 1, 1.22, 1.22 );
setScaleKey( spep_3 + 28, 1, 1.23, 1.23 );
setScaleKey( spep_3 + 33, 1, 1.23, 1.23 );

setRotateKey( spep_3 + 0, 1, -10 );
setRotateKey( spep_3 + 2, 1, -7.2 );
setRotateKey( spep_3 + 4, 1, -4.6 );
setRotateKey( spep_3 + 6, 1, -2.2 );
setRotateKey( spep_3 + 8, 1, 0 );
setRotateKey( spep_3 + 33, 1, 0 );

changeAnime( spep_3 - a + 36, 1, 108 );
setMoveKey( spep_3 - a + 36, 1, 47.8, -106.3 , 0 );
setMoveKey( spep_3 - a + 38, 1, 34.9, -99.8 , 0 );
setMoveKey( spep_3 - a + 40, 1, 71.7, -140.3 , 0 );
setMoveKey( spep_3 - a + 42, 1, 47.6, -118.3 , 0 );
setMoveKey( spep_3 - a + 44, 1, 47.5, -122.3 , 0 );
setMoveKey( spep_3 - a + 46, 1, 47.4, -126.3 , 0 );
setMoveKey( spep_3 - a + 48, 1, 47.3, -130.3 , 0 );
setMoveKey( spep_3 - a + 50, 1, 47.2, -134.3 , 0 );
setMoveKey( spep_3 - a + 52, 1, 47, -138.4 , 0 );
setMoveKey( spep_3 - a + 54, 1, 46.8, -142.4 , 0 );
setMoveKey( spep_3 - a + 56, 1, 46.7, -146.4 , 0 );
setMoveKey( spep_3 - a + 58, 1, 46.5, -150.5 , 0 );
setMoveKey( spep_3 - a + 60, 1, 46.3, -154.6 , 0 );
setMoveKey( spep_3 - a + 62, 1, 46.1, -158.6 , 0 );
setMoveKey( spep_3 - a + 64, 1, 45.9, -162.7 , 0 );
setMoveKey( spep_3 - a + 66, 1, 54.6, -194 , 0 );
setMoveKey( spep_3 - a + 68, 1, 101.8, -180.9 , 0 );
setMoveKey( spep_3 - a + 70, 1, 26.4, -225.1 , 0 );
setMoveKey( spep_3 - a + 72, 1, 57.8, -70.9 , 0 );
setMoveKey( spep_3 - a + 74, 1, 108.9, -214.4 , 0 );
setMoveKey( spep_3 - a + 76, 1, 28.9, -144.1 , 0 );
setMoveKey( spep_3 - a + 78, 1, 107, -182.7 , 0 );
setMoveKey( spep_3 - a + 80, 1, 19.3, -194.1 , 0 );
setMoveKey( spep_3 - a + 82, 1, 55.1, -130.1 , 0 );
setMoveKey( spep_3 - a + 84, 1, 52.4, -165.6 , 0 );
setMoveKey( spep_3 - a + 86, 1, 53, -131.5 , 0 );
setMoveKey( spep_3 - a + 88, 1, 54.8, -106.7 , 0 );
setMoveKey( spep_3 - a + 90, 1, 57.6, -91.1 , 0 );
setMoveKey( spep_3 - a + 92, 1, 61.5, -84.7 , 0 );
setMoveKey( spep_3 - a + 94, 1, 66.4, -87.5 , 0 );
setMoveKey( spep_3 - a + 96, 1, 72.4, -99.6 , 0 );
setMoveKey( spep_3 - a + 98, 1, 79.6, -120.9 , 0 );
setMoveKey( spep_3 - a + 100, 1, 87.7, -151.4 , 0 );
setMoveKey( spep_3 - a + 102, 1, 97, -191.1 , 0 );
setMoveKey( spep_3 - a + 104, 1, 107.4, -240 , 0 );
setMoveKey( spep_3 - a + 106, 1, 118.8, -298.2 , 0 );
setMoveKey( spep_3 - a + 108, 1, 131.2, -365.6 , 0 );
setMoveKey( spep_3 - a + 110, 1, 144.7, -442.2 , 0 );
setMoveKey( spep_3 - a + 112, 1, 159.4, -528.2 , 0 );
setMoveKey( spep_3 - a + 114, 1, 175.1, -623.2 , 0 );

setScaleKey( spep_3 - a + 36, 1, 3.65, 3.65 );
setScaleKey( spep_3 - a + 38, 1, 3.83, 3.83 );
setScaleKey( spep_3 - a + 40, 1, 3.65, 3.65 );
setScaleKey( spep_3 - a + 64, 1, 3.65, 3.65 );
setScaleKey( spep_3 - a + 66, 1, 4.38, 4.38 );
setScaleKey( spep_3 - a + 68, 1, 4.02, 4.02 );
setScaleKey( spep_3 - a + 70, 1, 3.65, 3.65 );
setScaleKey( spep_3 - a + 84, 1, 3.65, 3.65 );
setScaleKey( spep_3 - a + 86, 1, 3.49, 3.49 );
setScaleKey( spep_3 - a + 88, 1, 3.33, 3.33 );
setScaleKey( spep_3 - a + 90, 1, 3.16, 3.16 );
setScaleKey( spep_3 - a + 92, 1, 3, 3 );
setScaleKey( spep_3 - a + 94, 1, 2.84, 2.84 );
setScaleKey( spep_3 - a + 96, 1, 2.68, 2.68 );
setScaleKey( spep_3 - a + 98, 1, 2.52, 2.52 );
setScaleKey( spep_3 - a + 100, 1, 2.36, 2.36 );
setScaleKey( spep_3 - a + 102, 1, 2.19, 2.19 );
setScaleKey( spep_3 - a + 104, 1, 2.03, 2.03 );
setScaleKey( spep_3 - a + 106, 1, 1.87, 1.87 );
setScaleKey( spep_3 - a + 108, 1, 1.71, 1.71 );
setScaleKey( spep_3 - a + 110, 1, 1.55, 1.55 );
setScaleKey( spep_3 - a + 112, 1, 1.39, 1.39 );
setScaleKey( spep_3 - a + 114, 1, 1.22, 1.22 );

setRotateKey( spep_3 - a + 36, 1, 64 );
setRotateKey( spep_3 - a + 38, 1, 64.4 );
setRotateKey( spep_3 - a + 40, 1, 64.8 );
setRotateKey( spep_3 - a + 42, 1, 65.2 );
setRotateKey( spep_3 - a + 44, 1, 65.6 );
setRotateKey( spep_3 - a + 46, 1, 66 );
setRotateKey( spep_3 - a + 48, 1, 66.4 );
setRotateKey( spep_3 - a + 50, 1, 66.8 );
setRotateKey( spep_3 - a + 52, 1, 67.2 );
setRotateKey( spep_3 - a + 54, 1, 67.6 );
setRotateKey( spep_3 - a + 56, 1, 68 );
setRotateKey( spep_3 - a + 58, 1, 68.4 );
setRotateKey( spep_3 - a + 60, 1, 68.8 );
setRotateKey( spep_3 - a + 62, 1, 69.2 );
setRotateKey( spep_3 - a + 64, 1, 69.6 );
setRotateKey( spep_3 - a + 66, 1, 70 );
setRotateKey( spep_3 - a + 114, 1, 70 );

setDisp( spep_3 + 112, 1, 0);

------------------------------------------------------
-- フィニッシュ(160F)
------------------------------------------------------

--フレーム指定
spep_4 = spep_3 + 114;

--敵落下
ef_finish = entryEffect(spep_4, SP_07, 0x100, -1 ,0 ,0, 0);
setEffMoveKey(spep_4, ef_finish, 0, 0);
setEffMoveKey(spep_4 + 160, ef_finish, 0, 0);

setEffScaleKey(spep_4, ef_finish, 1.0, 1.0);
setEffScaleKey(spep_4 + 160, ef_finish, 1.0, 1.0);

setEffRotateKey(spep_4, ef_finish, 0);
setEffRotateKey(spep_4 + 160, ef_finish, 0);

setEffAlphaKey(spep_4, ef_finish, 255);
setEffAlphaKey(spep_4 + 160, ef_finish, 255);

--敵落下_背景
ef_finish_bg = entryEffect(spep_4, SP_08, 0x80, -1 ,0 ,0, 0);
setEffMoveKey(spep_4, ef_finish_bg, 0, 0);
setEffMoveKey(spep_4 + 160, ef_finish_bg, 0, 0);

setEffScaleKey(spep_4, ef_finish_bg, 1.0, 1.0);
setEffScaleKey(spep_4 + 160, ef_finish_bg, 1.0, 1.0);

setEffRotateKey(spep_4, ef_finish_bg, 0);
setEffRotateKey(spep_4 + 160, ef_finish_bg, 0);

setEffAlphaKey(spep_4, ef_finish_bg, 255);
setEffAlphaKey(spep_4 + 160, ef_finish_bg, 255);

--背景黒フェード
entryFadeBg(spep_4, 0, 160, 0, 0, 0, 0, 255); --背景黒

--SE
playSe(spep_4, 08); --落下
playSe(spep_4 + 40, 1023); --激突

--敵
setDisp( spep_4 + 0, 1, 1 );
changeAnime( spep_4 + 0, 1, 108 );
setMoveKey( spep_4 - a + 2, 1, -23.3, 72.4 , 0 );
setMoveKey( spep_4 - a + 4, 1, -23.4, 138.3 , 0 );
setMoveKey( spep_4 - a + 6, 1, -23.1, 196.7 , 0 );
setMoveKey( spep_4 - a + 8, 1, -22.4, 247.1 , 0 );
setMoveKey( spep_4 - a + 10, 1, -21.3, 289 , 0 );
setMoveKey( spep_4 - a + 12, 1, -19.8, 321.9 , 0 );
setMoveKey( spep_4 - a + 14, 1, -17.8, 345.3 , 0 );
setMoveKey( spep_4 - a + 16, 1, -15.4, 358.7 , 0 );
setMoveKey( spep_4 - a + 18, 1, -12.4, 361.6 , 0 );
setMoveKey( spep_4 - a + 20, 1, -8.9, 353.4 , 0 );
setMoveKey( spep_4 - a + 22, 1, -4.8, 333.6 , 0 );
setMoveKey( spep_4 - a + 24, 1, -0.1, 301.8 , 0 );
setMoveKey( spep_4 - a + 26, 1, 5.1, 257.4 , 0 );
setMoveKey( spep_4 - a + 28, 1, 11.1, 199.9 , 0 );
setMoveKey( spep_4 - a + 30, 1, 17.6, 128.8 , 0 );
setMoveKey( spep_4 - a + 32, 1, 24.9, 43.6 , 0 );
setMoveKey( spep_4 - a + 34, 1, 32.8, -56.1 , 0 );
setMoveKey( spep_4 - a + 36, 1, 41.6, -171.2 , 0 );
setMoveKey( spep_4 - a + 38, 1, 51, -301.7 , 0 );
setMoveKey( spep_4 - a + 40, 1, 61.3, -448.5 , 0 );

setScaleKey( spep_4 - a + 2, 1, 5.1, 5.1 );
setScaleKey( spep_4 - a + 4, 1, 5.2, 5.2 );
setScaleKey( spep_4 - a + 6, 1, 5.27, 5.27 );
setScaleKey( spep_4 - a + 8, 1, 5.33, 5.33 );
setScaleKey( spep_4 - a + 10, 1, 5.35, 5.35 );
setScaleKey( spep_4 - a + 12, 1, 5.35, 5.35 );
setScaleKey( spep_4 - a + 14, 1, 5.31, 5.31 );
setScaleKey( spep_4 - a + 16, 1, 5.25, 5.25 );
setScaleKey( spep_4 - a + 18, 1, 5.15, 5.15 );
setScaleKey( spep_4 - a + 20, 1, 5.01, 5.01 );
setScaleKey( spep_4 - a + 22, 1, 4.84, 4.84 );
setScaleKey( spep_4 - a + 24, 1, 4.64, 4.64 );
setScaleKey( spep_4 - a + 26, 1, 4.39, 4.39 );
setScaleKey( spep_4 - a + 28, 1, 4.1, 4.1 );
setScaleKey( spep_4 - a + 30, 1, 3.77, 3.77 );
setScaleKey( spep_4 - a + 32, 1, 3.4, 3.4 );
setScaleKey( spep_4 - a + 34, 1, 2.98, 2.98 );
setScaleKey( spep_4 - a + 36, 1, 2.51, 2.51 );
setScaleKey( spep_4 - a + 38, 1, 1.99, 1.99 );
setScaleKey( spep_4 - a + 40, 1, 1.43, 1.43 );
setScaleKey( spep_4 - a + 41, 1, 1.43, 1.43 );

setRotateKey( spep_4 - a + 2, 1, 80 );
setRotateKey( spep_4 - a + 40, 1, 80 );

setDisp( spep_4 + 40, 1, 0 );

------------------------------------------------------
-- ダメージ表示
------------------------------------------------------

dealDamage(spep_4 + 40);
--entryFade( spep_4 + 130, 9, 10, 1, 8, 8, 8, 255 ); -- 黒フェード
endPhase(spep_4 + 150);

else

------------------------------------------------------
-- 敵側
------------------------------------------------------

------------------------------------------------------
-- 正面ダッシュ(120F)
------------------------------------------------------

--フレーム指定
spep_0 = 0;

--正面ダッシュ
ef_dash = entryEffect(spep_0, SP_01r, 0x100, -1 ,0 ,0, 0);
setEffMoveKey(spep_0, ef_dash, 0, 0);
setEffMoveKey(spep_0 + 120, ef_dash, 0, 0);

setEffScaleKey(spep_0, ef_dash, 1.0, 1.0);
setEffScaleKey(spep_0 + 120, ef_dash, 1.0, 1.0);

setEffRotateKey(spep_0, ef_dash, 0);
setEffRotateKey(spep_0 + 120, ef_dash, 0);

setEffAlphaKey(spep_0, ef_dash, 255);
setEffAlphaKey(spep_0 + 120, ef_dash, 255);

--集中線
shuchusen_1 = entryEffectLife(spep_0, 906, 120, 0x100, -1, 0, 0, 0);
setEffMoveKey(spep_0, shuchusen_1, 0, 0);
setEffMoveKey(spep_0 + 120, shuchusen_1, 0, 0);

setEffScaleKey(spep_0, shuchusen_1, 1.2, 1.2);
setEffScaleKey(spep_0 + 120, shuchusen_1, 1.2, 1.2);

setEffRotateKey(spep_0, shuchusen_1, 0);
setEffRotateKey(spep_0 + 120, shuchusen_1, 0);

setEffAlphaKey(spep_0, shuchusen_1, 255);
setEffAlphaKey(spep_0 + 120, shuchusen_1, 255);

--SE
playSe(spep_0, 9); --ダッシュ音

------------------------------------------------------
--顔カットイン
------------------------------------------------------

F_kao = 10;

--[[
speff = entryEffect(spep_0 + F_kao, 1504, 0x100, -1, 0, 0, 0);  --カットイン(顔)
setEffReplaceTexture(speff, 3, 2);  --カットイン差し替え
speff1 = entryEffect(spep_0 + F_kao, 1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
setEffReplaceTexture(speff1, 4, 5);  --セリフカットイン差し替え
]]

--ゴゴゴ
ctgogo = entryEffectLife(spep_0 + F_kao + 12, 190006, 72, 0x100, -1, 0, 520, 0);--ゴゴゴ
setEffShake(spep_0 + F_kao + 12, ctgogo, 72, 10);

setEffMoveKey(spep_0 + F_kao + 12, ctgogo, 0, 520, 0);
setEffMoveKey(spep_0 + F_kao + 12 + 72, ctgogo, 0, 520, 0);

setEffScaleKey(spep_0 + F_kao + 12, ctgogo, -0.7, 0.7);
setEffScaleKey(spep_0 + F_kao + 12 + 66, ctgogo, -0.7, 0.7 );
setEffScaleKey(spep_0 + F_kao + 12 + 72, ctgogo, -1.7, 1.7);

setEffAlphaKey( spep_0 + F_kao + 12, ctgogo, 0 );
setEffAlphaKey( spep_0 + F_kao + 13, ctgogo, 255 );
setEffAlphaKey( spep_0 + F_kao + 14, ctgogo, 255 );
setEffAlphaKey( spep_0 + F_kao + 12 + 72, ctgogo, 255 );

setEffRotateKey(spep_0 + F_kao + 12, ctgogo, 0);
setEffRotateKey(spep_0 + F_kao + 12 + 72, ctgogo, 0);

--***SE***
playSe(spep_0 + F_kao + 12,  SE_04);  --ゴゴゴ

--白フェード
entryFade(spep_0 + 100, 10, 10, 0, fcolor_r, fcolor_g, fcolor_b, 255); --次のシーンへ

--背景黒フェード
entryFadeBg(spep_0, 0, 120, 0, 0, 0, 0, 180); --薄い黒

------------------------------------------------------
-- カードカットイン(92F)
------------------------------------------------------

--フレーム指定
spep_1 = spep_0 + 120;

-- ** カードカットイン ** --
speff2 = entryEffect( spep_1, 1507, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_1, 906, 92, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1, shuchusen1, 92, 20 );

setEffMoveKey( spep_1, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_1 + 92, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_1, shuchusen1, 1.6, 1.6 );
setEffScaleKey( spep_1 + 92, shuchusen1, 1.6, 1.6 );

setEffRotateKey( spep_1, shuchusen1, 0 );
setEffRotateKey( spep_1 + 92, shuchusen1, 0 );

setEffAlphaKey( spep_1, shuchusen1, 255 );
setEffAlphaKey( spep_1 + 91, shuchusen1, 255 );
setEffAlphaKey( spep_1 + 92, shuchusen1, 0 );

-- ** 音 ** --
playSe( spep_1, SE_05 );

--白フェード
entryFade(spep_1 + 80, 8, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255); --次のシーンへ

------------------------------------------------------
-- 連撃(176F)
------------------------------------------------------

--フレーム指定
spep_2 = spep_1 + 92;

--連撃
ef_rengeki = entryEffect(spep_2, SP_02r, 0x100, -1 ,0 ,0, 0);
setEffMoveKey(spep_2, ef_rengeki, 0, 0);
setEffMoveKey(spep_2 + 176, ef_rengeki, 0, 0);

setEffScaleKey(spep_2, ef_rengeki, 1.0, 1.0);
setEffScaleKey(spep_2 + 176, ef_rengeki, 1.0, 1.0);

setEffRotateKey(spep_2, ef_rengeki, 0);
setEffRotateKey(spep_2 + 176, ef_rengeki, 0);

setEffAlphaKey(spep_2, ef_rengeki, 255);
setEffAlphaKey(spep_2 + 176, ef_rengeki, 255);

--連撃_背景
ef_rengeki_bg_bg = entryEffect(spep_2, SP_03r, 0x80, -1 ,0 ,0, 0);
setEffMoveKey(spep_2, ef_rengeki_bg, 0, 0);
setEffMoveKey(spep_2 + 176, ef_rengeki_bg, 0, 0);

setEffScaleKey(spep_2, ef_rengeki_bg, 1.0, 1.0);
setEffScaleKey(spep_2 + 176, ef_rengeki_bg, 1.0, 1.0);

setEffRotateKey(spep_2, ef_rengeki_bg, 0);
setEffRotateKey(spep_2 + 176, ef_rengeki_bg, 0);

setEffAlphaKey(spep_2, ef_rengeki_bg, 255);
setEffAlphaKey(spep_2 + 176, ef_rengeki_bg, 255);

--集中線
ef_shuchusen_2 = entryEffectLife(spep_2 + 26, 906, 148, 0x100, -1, 0, 0, 0);
setEffMoveKey(spep_2 + 28, ef_shuchusen_2, 0, 0);
setEffMoveKey(spep_2 + 176, ef_shuchusen_2, 0, 0);

setEffScaleKey(spep_2 + 28, ef_shuchusen_2, 1.2, 1.2);
setEffScaleKey(spep_2 + 176, ef_shuchusen_2, 1.2, 1.2);

setEffRotateKey(spep_2 + 28, ef_shuchusen_2, 0);
setEffRotateKey(spep_2 + 176, ef_shuchusen_2, 0);

setEffAlphaKey(spep_2 + 28, ef_shuchusen_2, 255);
setEffAlphaKey(spep_2 + 176, ef_shuchusen_2, 255);

--白フェード
entryFade(spep_2 + 166, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255); --次のシーンへ

--背景黒フェード
entryFadeBg(spep_2, 0, 176, 0, 0, 0, 0, 180); --薄い黒

--SE
playSe(spep_2 + 28, 1007); --連撃
playSe(spep_2 + 38, 1012); --連撃
playSe(spep_2 + 48, 1003); --連撃
playSe(spep_2 + 58, 1007); --連撃
playSe(spep_2 + 68, 1000); --連撃
playSe(spep_2 + 78, 1001); --連撃
playSe(spep_2 + 88, 1004); --連撃
playSe(spep_2 + 98, 1001); --連撃
playSe(spep_2 + 108, 1000); --連撃
playSe(spep_2 + 124, 1010); --強パンチ

a = 2; --フレーム調整用の変数

--書き文字
ct_dogaga = entryEffectLife( spep_2 - a + 30, 10017, 90, 0x100, -1, 0, 12, 226.8 ); --ドガガガッ
setEffMoveKey( spep_2 - a + 30, ct_dogaga, 12, 226.8 , 0 );
setEffMoveKey( spep_2 - a + 32, ct_dogaga, 11.8, 227.2 , 0 );
setEffMoveKey( spep_2 - a + 34, ct_dogaga, 4, 236.1 , 0 );
setEffMoveKey( spep_2 - a + 36, ct_dogaga, 11.8, 227 , 0 );
setEffMoveKey( spep_2 - a + 38, ct_dogaga, 4.8, 235 , 0 );
setEffMoveKey( spep_2 - a + 40, ct_dogaga, 11.9, 226.8 , 0 );
setEffMoveKey( spep_2 - a + 42, ct_dogaga, 5.2, 234.4 , 0 );
setEffMoveKey( spep_2 - a + 44, ct_dogaga, 11.9, 226.8 , 0 );
setEffMoveKey( spep_2 - a + 46, ct_dogaga, 5.2, 234.4 , 0 );
setEffMoveKey( spep_2 - a + 48, ct_dogaga, 11.9, 226.8 , 0 );
setEffMoveKey( spep_2 - a + 50, ct_dogaga, 5.2, 234.4 , 0 );
setEffMoveKey( spep_2 - a + 52, ct_dogaga, 11.9, 226.8 , 0 );
setEffMoveKey( spep_2 - a + 54, ct_dogaga, 5.2, 234.4 , 0 );
setEffMoveKey( spep_2 - a + 56, ct_dogaga, 11.9, 226.8 , 0 );
setEffMoveKey( spep_2 - a + 58, ct_dogaga, 5.2, 234.4 , 0 );
setEffMoveKey( spep_2 - a + 60, ct_dogaga, 11.9, 226.8 , 0 );
setEffMoveKey( spep_2 - a + 62, ct_dogaga, 5.2, 234.4 , 0 );
setEffMoveKey( spep_2 - a + 64, ct_dogaga, 11.9, 226.8 , 0 );
setEffMoveKey( spep_2 - a + 66, ct_dogaga, 5.2, 234.4 , 0 );
setEffMoveKey( spep_2 - a + 68, ct_dogaga, 11.9, 226.8 , 0 );
setEffMoveKey( spep_2 - a + 70, ct_dogaga, 5.2, 234.4 , 0 );
setEffMoveKey( spep_2 - a + 72, ct_dogaga, 11.9, 226.8 , 0 );
setEffMoveKey( spep_2 - a + 74, ct_dogaga, 5.2, 234.4 , 0 );
setEffMoveKey( spep_2 - a + 76, ct_dogaga, 11.9, 226.8 , 0 );
setEffMoveKey( spep_2 - a + 78, ct_dogaga, 5.2, 234.4 , 0 );
setEffMoveKey( spep_2 - a + 80, ct_dogaga, 11.9, 226.8 , 0 );
setEffMoveKey( spep_2 - a + 82, ct_dogaga, 5.2, 234.4 , 0 );
setEffMoveKey( spep_2 - a + 84, ct_dogaga, 11.9, 226.8 , 0 );
setEffMoveKey( spep_2 - a + 86, ct_dogaga, 5.2, 234.4 , 0 );
setEffMoveKey( spep_2 - a + 88, ct_dogaga, 11.9, 226.8 , 0 );
setEffMoveKey( spep_2 - a + 90, ct_dogaga, 5.2, 234.4 , 0 );
setEffMoveKey( spep_2 - a + 92, ct_dogaga, 11.9, 226.8 , 0 );
setEffMoveKey( spep_2 - a + 94, ct_dogaga, 5.2, 234.4 , 0 );
setEffMoveKey( spep_2 - a + 96, ct_dogaga, 11.9, 226.8 , 0 );
setEffMoveKey( spep_2 - a + 98, ct_dogaga, 5.2, 234.4 , 0 );
setEffMoveKey( spep_2 - a + 100, ct_dogaga, 11.9, 226.8 , 0 );
setEffMoveKey( spep_2 - a + 102, ct_dogaga, 5.2, 234.4 , 0 );
setEffMoveKey( spep_2 - a + 104, ct_dogaga, 11.9, 226.8 , 0 );
setEffMoveKey( spep_2 - a + 106, ct_dogaga, 5.2, 234.4 , 0 );
setEffMoveKey( spep_2 - a + 108, ct_dogaga, 11.9, 226.8 , 0 );
setEffMoveKey( spep_2 - a + 110, ct_dogaga, 5.2, 234.4 , 0 );
setEffMoveKey( spep_2 - a + 112, ct_dogaga, 5.2, 234.4 , 0 );
setEffMoveKey( spep_2 - a + 114, ct_dogaga, 11.9, 226.8 , 0 );
setEffMoveKey( spep_2 - a + 116, ct_dogaga, 5.2, 234.4 , 0 );
setEffMoveKey( spep_2 - a + 118, ct_dogaga, 11.9, 226.8 , 0 );
setEffMoveKey( spep_2 - a + 120, ct_dogaga, 11.9, 226.8 , 0 );

setEffScaleKey( spep_2 - a + 30, ct_dogaga, 2.44, 2.44 );
setEffScaleKey( spep_2 - a + 32, ct_dogaga, 3.21, 3.21 );
setEffScaleKey( spep_2 - a + 34, ct_dogaga, 3.06, 3.06 );
setEffScaleKey( spep_2 - a + 36, ct_dogaga, 2.91, 2.91 );
setEffScaleKey( spep_2 - a + 38, ct_dogaga, 2.76, 2.76 );
setEffScaleKey( spep_2 - a + 40, ct_dogaga, 2.6, 2.6 );
setEffScaleKey( spep_2 - a + 120, ct_dogaga, 2.6, 2.6 );

setEffRotateKey( spep_2 - a + 30, ct_dogaga, 14.5 );
setEffRotateKey( spep_2 - a + 120, ct_dogaga, 14.5 );

setEffAlphaKey( spep_2 - a + 30, ct_dogaga, 255 );
setEffAlphaKey( spep_2 - a + 112, ct_dogaga, 255 );
setEffAlphaKey( spep_2 - a + 114, ct_dogaga, 191 );
setEffAlphaKey( spep_2 - a + 116, ct_dogaga, 128 );
setEffAlphaKey( spep_2 - a + 118, ct_dogaga, 64 );
setEffAlphaKey( spep_2 - a + 120, ct_dogaga, 0 );

ct_don = entryEffectLife( spep_2 - a + 126, 10019, 12, 0x100, -1, 0, 97.1, 155.8 );
setEffMoveKey( spep_2 - a + 126, ct_don, 97.1, 155.8 , 0 );
setEffMoveKey( spep_2 - a + 128, ct_don, 75.4, 206.9 , 0 );
setEffMoveKey( spep_2 - a + 130, ct_don, 71, 255.3 , 0 );
setEffMoveKey( spep_2 - a + 132, ct_don, 62, 265 , 0 );
setEffMoveKey( spep_2 - a + 134, ct_don, 62, 257.9 , 0 );
setEffMoveKey( spep_2 - a + 136, ct_don, 68.5, 266.5 , 0 );
setEffMoveKey( spep_2 - a + 138, ct_don, 68.5, 267.4 , 0 );

setEffScaleKey( spep_2 - a + 126, ct_don, 0.4, 0.4 );
setEffScaleKey( spep_2 - a + 128, ct_don, 1.19, 1.19 );
setEffScaleKey( spep_2 - a + 130, ct_don, 1.98, 1.98 );
setEffScaleKey( spep_2 - a + 132, ct_don, 2.01, 2.01 );
setEffScaleKey( spep_2 - a + 134, ct_don, 2.04, 2.04 );
setEffScaleKey( spep_2 - a + 136, ct_don, 2.05, 2.05 );
setEffScaleKey( spep_2 - a + 138, ct_don, 2.07, 2.07 );

setEffRotateKey( spep_2 - a + 126, ct_don, -0.3 );
setEffRotateKey( spep_2 - a + 128, ct_don, 0.3 );
setEffRotateKey( spep_2 - a + 130, ct_don, 0.8 );
setEffRotateKey( spep_2 - a + 138, ct_don, 0.8 );

setEffAlphaKey( spep_2 - a + 126, ct_don, 255 );
setEffAlphaKey( spep_2 - a + 134, ct_don, 255 );
setEffAlphaKey( spep_2 - a + 136, ct_don, 128 );
setEffAlphaKey( spep_2 - a + 138, ct_don, 0 );

--敵
setDisp( spep_2 + 0, 1, 1 );

changeAnime( spep_2 + 0, 1, 101 );
setMoveKey( spep_2 - a + 2, 1, -34.9, -36.9 , 0 );
setMoveKey( spep_2 - a + 4, 1, -31.7, -37.3 , 0 );
setMoveKey( spep_2 - a + 6, 1, -28.5, -37.8 , 0 );
setMoveKey( spep_2 - a + 8, 1, -25.2, -38.2 , 0 );
setMoveKey( spep_2 - a + 10, 1, -22, -38.7 , 0 );
setMoveKey( spep_2 - a + 12, 1, -18.7, -39.1 , 0 );
setMoveKey( spep_2 - a + 14, 1, -15.5, -39.6 , 0 );
setMoveKey( spep_2 - a + 16, 1, -12.2, -40 , 0 );
setMoveKey( spep_2 - a + 18, 1, -9, -40.4 , 0 );

setScaleKey( spep_2 + 0, 1, 1.8, 1.8 );
setScaleKey( spep_2 - a + 18, 1, 1.8, 1.8 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 + 16, 1, 0 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 18; --エンドフェイズのフレーム数を置き換える

--stopSe(SP_dodge - 12, SEの変数名); --前の演出のSEが残っている場合は停止

playSe( SP_dodge - 12, 1042);

pauseAll( SP_dodge, 67);

--敵の位置
setMoveKey( spep_2 - a + 20, 1, -4, -41.1 , 0 );
setMoveKey( spep_2 - a + 22, 1, 1.2, -41.8 , 0 );
setMoveKey( spep_2 - a + 24, 1, 6.4, -42.6 , 0 );
setMoveKey( spep_2 - a + 26, 1, 11.8, -43.4 , 0 );
setMoveKey( spep_2 - a + 29, 1, 17.3, -44.2 , 0 );

setScaleKey( spep_2 - a + 20, 1, 1.84, 1.84 );
setScaleKey( spep_2 - a + 22, 1, 1.87, 1.87 );
setScaleKey( spep_2 - a + 24, 1, 1.91, 1.91 );
setScaleKey( spep_2 - a + 26, 1, 1.94, 1.94 );
setScaleKey( spep_2 - a + 29, 1, 1.98, 1.98 );

setRotateKey( spep_2 -a + 20, 1, 0 );
setRotateKey( spep_2 -a + 22, 1, 0 );
setRotateKey( spep_2 -a + 24, 1, 0 );
setRotateKey( spep_2 -a + 26, 1, 0 );
setRotateKey( spep_2 - a + 28, 1, 0 );

speff = entryEffectUnpausable( SP_dodge - 12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

dodge = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
setEffScaleKey( SP_dodge - 1, dodge, -1.0, 1.0);
setEffAlphaKey( SP_dodge - 1, dodge, 255);

entryFade( SP_dodge + 5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- 白フェード
setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );

endPhase( SP_dodge + 10);

do return end
else end

------------------------------------------------------
-- 回避(終)
------------------------------------------------------

setMoveKey( spep_2 - a + 20, 1, -4, -41.1 , 0 );
setMoveKey( spep_2 - a + 22, 1, 1.2, -41.8 , 0 );
setMoveKey( spep_2 - a + 24, 1, 6.4, -42.6 , 0 );
setMoveKey( spep_2 - a + 26, 1, 11.8, -43.4 , 0 );
setMoveKey( spep_2 - a + 29, 1, 17.3, -44.2 , 0 );

setScaleKey( spep_2 - a + 20, 1, 1.84, 1.84 );
setScaleKey( spep_2 - a + 22, 1, 1.87, 1.87 );
setScaleKey( spep_2 - a + 24, 1, 1.91, 1.91 );
setScaleKey( spep_2 - a + 26, 1, 1.94, 1.94 );
setScaleKey( spep_2 - a + 29, 1, 1.98, 1.98 );

setRotateKey( spep_2 + 18, 1, 0 );
setRotateKey( spep_2 - a + 28, 1, 0 );

changeAnime( spep_2 - a + 30, 1, 104 );
setMoveKey( spep_2 - a + 30, 1, 17.1, -62.3 , 0 );
setMoveKey( spep_2 - a + 32, 1, 59.9, -73.2 , 0 );
setMoveKey( spep_2 - a + 34, 1, 25.2, -62.9 , 0 );
setMoveKey( spep_2 - a + 36, 1, 29.3, -63.3 , 0 );
setMoveKey( spep_2 - a + 38, 1, 35.5, -59.1 , 0 );
setMoveKey( spep_2 - a + 40, 1, 36.7, -65.3 , 0 );
setMoveKey( spep_2 - a + 42, 1, 44.2, -58.9 , 0 );
setMoveKey( spep_2 - a + 44, 1, 46.6, -62.9 , 0 );
setMoveKey( spep_2 - a + 46, 1, 52.8, -58.7 , 0 );
setMoveKey( spep_2 - a + 48, 1, 54, -65 , 0 );
setMoveKey( spep_2 - a + 50, 1, 61.6, -58.6 , 0 );
setMoveKey( spep_2 - a + 52, 1, 64, -62.6 , 0 );
setMoveKey( spep_2 - a + 54, 1, 70.1, -58.4 , 0 );
setMoveKey( spep_2 - a + 57, 1, 71.4, -64.6 , 0 );

setScaleKey( spep_2 - a + 30, 1, 1.98, 1.98 );
setScaleKey( spep_2 - a + 32, 1, 2.18, 2.18 );
setScaleKey( spep_2 - a + 34, 1, 1.98, 1.98 );
setScaleKey( spep_2 - a + 56, 1, 1.98, 1.98 );

setRotateKey( spep_2 - a + 30, 1, 0 );
setRotateKey( spep_2 - a + 32, 1, 0.2 );
setRotateKey( spep_2 - a + 34, 1, 0.5 );
setRotateKey( spep_2 - a + 36, 1, 0.7 );
setRotateKey( spep_2 - a + 38, 1, 0.9 );
setRotateKey( spep_2 - a + 40, 1, 1.2 );
setRotateKey( spep_2 - a + 42, 1, 1.4 );
setRotateKey( spep_2 - a + 44, 1, 1.6 );
setRotateKey( spep_2 - a + 46, 1, 1.8 );
setRotateKey( spep_2 - a + 48, 1, 2.1 );
setRotateKey( spep_2 - a + 50, 1, 2.3 );
setRotateKey( spep_2 - a + 52, 1, 2.5 );
setRotateKey( spep_2 - a + 54, 1, 2.8 );
setRotateKey( spep_2 - a + 57, 1, 3 );

changeAnime( spep_2 - a + 58, 1, 108 );
setMoveKey( spep_2 - a + 58, 1, 137.2, -54.4 , 0 );
setMoveKey( spep_2 - a + 60, 1, 141.3, -52.5 , 0 );
setMoveKey( spep_2 - a + 62, 1, 148.4, -45.4 , 0 );
setMoveKey( spep_2 - a + 65, 1, 152.9, -49.2 , 0 );

setScaleKey( spep_2 - a + 58, 1, 1.8, 1.8 );
setScaleKey( spep_2 - a + 64, 1, 1.8, 1.8 );

setRotateKey( spep_2 - a + 58, 1, 2.6 );
setRotateKey( spep_2 - a + 60, 1, 2.3 );
setRotateKey( spep_2 - a + 62, 1, 2 );
setRotateKey( spep_2 - a + 65, 1, 1.8 );

changeAnime( spep_2 - a + 66, 1, 106 );
setMoveKey( spep_2 - a + 66, 1, 50.8, -50 , 0 );
setMoveKey( spep_2 - a + 68, 1, 61.5, -53 , 0 );
setMoveKey( spep_2 - a + 71, 1, 76, -47.7 , 0 );

setScaleKey( spep_2 - a + 66, 1, 1.87, 1.87 );
setScaleKey( spep_2 - a + 68, 1, 1.87, 1.87 );
setScaleKey( spep_2 - a + 71, 1, 1.86, 1.86 );

setRotateKey( spep_2 - a + 66, 1, -47.4 );
setRotateKey( spep_2 - a + 68, 1, -45.1 );
setRotateKey( spep_2 - a + 71, 1, -42.8 );

changeAnime( spep_2 - a + 72, 1, 108 );
setMoveKey( spep_2 - a + 72, 1, 96.8, -52.9 , 0 );
setMoveKey( spep_2 - a + 75, 1, 116.2, -60.3 , 0 );

setScaleKey( spep_2 - a + 72, 1, 1.87, 1.87 );
setScaleKey( spep_2 - a + 74, 1, 1.87, 1.87 );

setRotateKey( spep_2 - a + 72, 1, -5.7 );
setRotateKey( spep_2 - a + 75, 1, -1.5 );

changeAnime( spep_2 - a + 76, 1, 106 );
setMoveKey( spep_2 - a + 76, 1, 62.9, -31 , 0 );
setMoveKey( spep_2 - a + 78, 1, 69, -42.1 , 0 );
setMoveKey( spep_2 - a + 81, 1, 81.6, -48.4 , 0 );

setScaleKey( spep_2 - a + 76, 1, 1.87, 1.87 );
setScaleKey( spep_2 - a + 78, 1, 1.87, 1.87 );
setScaleKey( spep_2 - a + 81, 1, 1.86, 1.86 );

setRotateKey( spep_2 - a + 76, 1, -48.7 );
setRotateKey( spep_2 - a + 78, 1, -46.3 );
setRotateKey( spep_2 - a + 81, 1, -43.8 );

changeAnime( spep_2 - a + 82, 1, 108 );
setMoveKey( spep_2 - a + 82, 1, 111.7, -42.1 , 0 );
setMoveKey( spep_2 - a + 85, 1, 129.2, -61.2 , 0 );

setScaleKey( spep_2 - a + 82, 1, 1.87, 1.87 );
setScaleKey( spep_2 - a + 84, 1, 1.87, 1.87 );

setRotateKey( spep_2 - a + 82, 1, -6.5 );
setRotateKey( spep_2 - a + 85, 1, -2 );

changeAnime( spep_2 - a + 86, 1, 106 );
setMoveKey( spep_2 - a + 86, 1, 82.4, -25.6 , 0 );
setMoveKey( spep_2 - a + 88, 1, 90.9, -19.5 , 0 );
setMoveKey( spep_2 - a + 91, 1, 105.7, -0.8 , 0 );

setScaleKey( spep_2 - a + 86, 1, 1.87, 1.87 );
setScaleKey( spep_2 - a + 88, 1, 1.87, 1.87 );
setScaleKey( spep_2 - a + 91, 1, 1.86, 1.86 );

setRotateKey( spep_2 - a + 86, 1, -48.9 );
setRotateKey( spep_2 - a + 88, 1, -48.1 );
setRotateKey( spep_2 - a + 91, 1, -47.2 );

changeAnime( spep_2 - a + 92, 1, 108 );
setMoveKey( spep_2 - a + 92, 1, 141.1, -25.2 , 0 );
setMoveKey( spep_2 - a + 95, 1, 147.7, -51 , 0 );

setScaleKey( spep_2 - a + 92, 1, 1.87, 1.87 );
setScaleKey( spep_2 - a + 94, 1, 1.87, 1.87 );

setRotateKey( spep_2 - a + 92, 1, -6.5 );
setRotateKey( spep_2 - a + 95, 1, -5.2 );

changeAnime( spep_2 - a + 96, 1, 106 );
setMoveKey( spep_2 - a + 96, 1, 91.9, -48.4 , 0 );
setMoveKey( spep_2 - a + 98, 1, 110.8, -42 , 0 );
setMoveKey( spep_2 - a + 101, 1, 124.5, -46.1 , 0 );

setScaleKey( spep_2 - a + 96, 1, 1.87, 1.87 );
setScaleKey( spep_2 - a + 98, 1, 1.87, 1.87 );
setScaleKey( spep_2 - a + 101, 1, 1.86, 1.86 );

setRotateKey( spep_2 - a + 96, 1, -48.9 );
setRotateKey( spep_2 - a + 98, 1, -46.3 );
setRotateKey( spep_2 - a + 101, 1, -43.8 );

changeAnime( spep_2 - a + 102, 1, 108 );
setMoveKey( spep_2 - a + 102, 1, 153.3, -42 , 0 );
setMoveKey( spep_2 - a + 105, 1, 169.5, -63.4 , 0 );

setScaleKey( spep_2 - a + 102, 1, 1.87, 1.87 );
setScaleKey( spep_2 - a + 104, 1, 1.87, 1.87 );

setRotateKey( spep_2 - a + 102, 1, -6.5 );
setRotateKey( spep_2 - a + 105, 1, -2 );

changeAnime( spep_2 - a + 106, 1, 106 );
setMoveKey( spep_2 - a + 106, 1, 124.2, -25.6 , 0 );
setMoveKey( spep_2 - a + 108, 1, 133.8, -17.2 , 0 );
setMoveKey( spep_2 - a + 111, 1, 147.2, -0.7 , 0 );

setScaleKey( spep_2 - a + 106, 1, 1.87, 1.87 );
setScaleKey( spep_2 - a + 108, 1, 1.87, 1.87 );
setScaleKey( spep_2 - a + 111, 1, 1.86, 1.86 );

setRotateKey( spep_2 - a + 106, 1, -48.9 );
setRotateKey( spep_2 - a + 108, 1, -48.1 );
setRotateKey( spep_2 - a + 111, 1, -47.2 );

changeAnime( spep_2 - a + 112, 1, 108 );
setMoveKey( spep_2 - a + 112, 1, 181.5, -27.4 , 0 );
setMoveKey( spep_2 - a + 114, 1, 189.5, -50.9 , 0 );
setMoveKey( spep_2 - a + 116, 1, 180.6, -46 , 0 );
setMoveKey( spep_2 - a + 118, 1, 191.3, -33.8 , 0 );
setMoveKey( spep_2 - a + 120, 1, 197.1, -31.9 , 0 );
setMoveKey( spep_2 - a + 122, 1, 202, -25.6 , 0 );
setMoveKey( spep_2 - a + 124, 1, 201.8, -29.7 , 0 );
setMoveKey( spep_2 - a + 126, 1, 247, -50.5 , 0 );
setMoveKey( spep_2 - a + 128, 1, 392.7, -44.3 , 0 );
setMoveKey( spep_2 - a + 130, 1, 528, -25.6 , 0 );
setMoveKey( spep_2 - a + 132, 1, 683.3, -33.5 , 0 );
setMoveKey( spep_2 - a + 134, 1, 853.4, -23.8 , 0 );

setScaleKey( spep_2 - a + 112, 1, 1.87, 1.87 );
setScaleKey( spep_2 - a + 124, 1, 1.87, 1.87 );
setScaleKey( spep_2 - a + 126, 1, 2.05, 2.05 );
setScaleKey( spep_2 - a + 128, 1, 1.96, 1.96 );
setScaleKey( spep_2 - a + 130, 1, 1.87, 1.87 );
setScaleKey( spep_2 - a + 134, 1, 1.87, 1.87 );

setRotateKey( spep_2 - a + 112, 1, -6.5 );
setRotateKey( spep_2 - a + 114, 1, -5.2 );
setRotateKey( spep_2 - a + 116, 1, -6.5 );
setRotateKey( spep_2 - a + 118, 1, -4.2 );
setRotateKey( spep_2 - a + 120, 1, -2 );
setRotateKey( spep_2 - a + 124, 1, -2 );
setRotateKey( spep_2 - a + 126, 1, -6.5 );
setRotateKey( spep_2 - a + 128, 1, -4.2 );
setRotateKey( spep_2 - a + 130, 1, -2 );
setRotateKey( spep_2 - a + 134, 1, -2 );

setDisp(spep_2 + 134, 1, 0);

------------------------------------------------------
-- 突き〜叩きつけ(114F)
------------------------------------------------------

--フレーム指定
spep_3 = spep_2 + 176;

--突き〜叩きつけ_上半身
ef_tatakituke = entryEffect(spep_3, SP_04r, 0x100, -1 ,0 ,0, 0);
setEffMoveKey(spep_3, ef_tatakituke, 0, 0);
setEffMoveKey(spep_3 + 114, ef_tatakituke, 0, 0);

setEffScaleKey(spep_3, ef_tatakituke, 1.0, 1.0);
setEffScaleKey(spep_3 + 114, ef_tatakituke, 1.0, 1.0);

setEffRotateKey(spep_3, ef_tatakituke, 0);
setEffRotateKey(spep_3 + 114, ef_tatakituke, 0);

setEffAlphaKey(spep_3, ef_tatakituke, 255);
setEffAlphaKey(spep_3 + 114, ef_tatakituke, 255);

--突き〜叩きつけ_背景
ef_tatakituke_bg = entryEffect(spep_3, SP_06r, 0x80, -1 ,0 ,0, 0);
setEffMoveKey(spep_3, ef_tatakituke_bg, 0, 0);
setEffMoveKey(spep_3 + 114, ef_tatakituke_bg, 0, 0);

setEffScaleKey(spep_3, ef_tatakituke_bg, 1.0, 1.0);
setEffScaleKey(spep_3 + 114, ef_tatakituke_bg, 1.0, 1.0);

setEffRotateKey(spep_3, ef_tatakituke_bg, 0);
setEffRotateKey(spep_3 + 114, ef_tatakituke_bg, 0);

setEffAlphaKey(spep_3, ef_tatakituke_bg, 255);
setEffAlphaKey(spep_3 + 114, ef_tatakituke_bg, 255);

--突き〜叩きつけ_下半身
ef_tatakituke_2 = entryEffect(spep_3, SP_05r, 0x80, -1 ,0 ,0, 0);
setEffMoveKey(spep_3, ef_tatakituke_2, 0, 0);
setEffMoveKey(spep_3 + 114, ef_tatakituke_2, 0, 0);

setEffScaleKey(spep_3, ef_tatakituke_2, 1.0, 1.0);
setEffScaleKey(spep_3 + 114, ef_tatakituke_2, 1.0, 1.0);

setEffRotateKey(spep_3, ef_tatakituke_2, 0);
setEffRotateKey(spep_3 + 114, ef_tatakituke_2, 0);

setEffAlphaKey(spep_3, ef_tatakituke_2, 255);
setEffAlphaKey(spep_3 + 114, ef_tatakituke_2, 255);

--集中線
ef_shuchusen_3 = entryEffectLife(spep_3, 906, 82, 0x100, -1, 0, 0, 0);
setEffMoveKey(spep_3, ef_shuchusen_3, 0, 0);
setEffMoveKey(spep_3 + 82, ef_shuchusen_3, 0, 0);

setEffScaleKey(spep_3, ef_shuchusen_3, 1.0, 1.0);
setEffScaleKey(spep_3 + 82, ef_shuchusen_3, 1.0, 1.0);

setEffRotateKey(spep_3, ef_shuchusen_3, 0);
setEffRotateKey(spep_3 + 82, ef_shuchusen_3, 0);

setEffAlphaKey(spep_3, ef_shuchusen_3, 255);
setEffAlphaKey(spep_3 + 82, ef_shuchusen_3, 255);

--背景黒フェード
entryFadeBg(spep_3, 0, 114, 0, 0, 0, 0, 180); --薄い黒

--SE
playSe(spep_3 + 0, 1018); --迫る
playSe(spep_3 + 34, 1009); --突き
playSe(spep_3 + 62, 1011); --叩きつけ

--書き文字
ct_ga = entryEffectLife( spep_3 - a + 36, 10005, 14, 0x100, -1, 0, 180.7, 293.6 ); --ガッ
setEffMoveKey( spep_3 - a + 36, ct_ga, 180.7, 293.6 , 0 );
setEffMoveKey( spep_3 - a + 38, ct_ga, 188.9, 314.8 , 0 );
setEffMoveKey( spep_3 - a + 40, ct_ga, 198.7, 321.2 , 0 );
setEffMoveKey( spep_3 - a + 42, ct_ga, 196.8, 329.8 , 0 );
setEffMoveKey( spep_3 - a + 44, ct_ga, 210.5, 330.9 , 0 );
setEffMoveKey( spep_3 - a + 46, ct_ga, 207.1, 335.6 , 0 );
setEffMoveKey( spep_3 - a + 48, ct_ga, 201.9, 337.8 , 0 );
setEffMoveKey( spep_3 - a + 50, ct_ga, 202.3, 338.3 , 0 );

setEffScaleKey( spep_3 - a + 36, ct_ga, 0.4, 0.4 );
setEffScaleKey( spep_3 - a + 38, ct_ga, 1.45, 1.45 );
setEffScaleKey( spep_3 - a + 40, ct_ga, 1.8, 1.8 );
setEffScaleKey( spep_3 - a + 46, ct_ga, 1.8, 1.8 );
setEffScaleKey( spep_3 - a + 48, ct_ga, 1.68, 1.68 );
setEffScaleKey( spep_3 - a + 50, ct_ga, 1.64, 1.64 );

setEffRotateKey( spep_3 - a + 36, ct_ga, 13.6 );
setEffRotateKey( spep_3 - a + 46, ct_ga, 13.6 );
setEffRotateKey( spep_3 - a + 48, ct_ga, 13.7 );
setEffRotateKey( spep_3 - a + 50, ct_ga, 13.7 );

setEffAlphaKey( spep_3 - a + 36, ct_ga, 255 );
setEffAlphaKey( spep_3 - a + 46, ct_ga, 255 );
setEffAlphaKey( spep_3 - a + 48, ct_ga, 64 );
setEffAlphaKey( spep_3 - a + 50, ct_ga, 0 );


ct_dogo = entryEffectLife( spep_3 - a + 64, 10018, 40, 0x100, -1, 0, 139.1, 460.2 ); --ドゴォン
setEffMoveKey( spep_3 - a + 64, ct_dogo, 139.1, 460.2 , 0 );
setEffMoveKey( spep_3 - a + 66, ct_dogo, 149.6, 443.3 , 0 );
setEffMoveKey( spep_3 - a + 68, ct_dogo, 141.9, 407.5 , 0 );
setEffMoveKey( spep_3 - a + 70, ct_dogo, 147.3, 413.2 , 0 );
setEffMoveKey( spep_3 - a + 72, ct_dogo, 145.6, 402.3 , 0 );
setEffMoveKey( spep_3 - a + 74, ct_dogo, 141.9, 407.5 , 0 );
setEffMoveKey( spep_3 - a + 76, ct_dogo, 147.3, 413.2 , 0 );
setEffMoveKey( spep_3 - a + 78, ct_dogo, 145.6, 402.3 , 0 );
setEffMoveKey( spep_3 - a + 80, ct_dogo, 141.9, 407.5 , 0 );
setEffMoveKey( spep_3 - a + 82, ct_dogo, 147.3, 413.2 , 0 );
setEffMoveKey( spep_3 - a + 84, ct_dogo, 145.6, 402.3 , 0 );
setEffMoveKey( spep_3 - a + 86, ct_dogo, 141.9, 407.5 , 0 );
setEffMoveKey( spep_3 - a + 88, ct_dogo, 147.3, 413.2 , 0 );
setEffMoveKey( spep_3 - a + 90, ct_dogo, 145.6, 402.3 , 0 );
setEffMoveKey( spep_3 - a + 92, ct_dogo, 141.9, 407.5 , 0 );
setEffMoveKey( spep_3 - a + 94, ct_dogo, 147.3, 413.2 , 0 );
setEffMoveKey( spep_3 - a + 96, ct_dogo, 169.4, 488.9 , 0 );
setEffMoveKey( spep_3 - a + 98, ct_dogo, 168.2, 592.6 , 0 );
setEffMoveKey( spep_3 - a + 100, ct_dogo, 156.1, 671 , 0 );
setEffMoveKey( spep_3 - a + 102, ct_dogo, 141, 774 , 0 );
setEffMoveKey( spep_3 - a + 104, ct_dogo, 131.6, 869 , 0 );

setEffScaleKey( spep_3 - a + 64, ct_dogo, 5.78, 5.78 );
setEffScaleKey( spep_3 - a + 66, ct_dogo, 4.14, 4.14 );
setEffScaleKey( spep_3 - a + 68, ct_dogo, 2.5, 2.5 );
setEffScaleKey( spep_3 - a + 94, ct_dogo, 2.5, 2.5 );
setEffScaleKey( spep_3 - a + 96, ct_dogo, 3.79, 3.79 );
setEffScaleKey( spep_3 - a + 104, ct_dogo, 3.79, 3.79 );

setEffRotateKey( spep_3 - a + 64, ct_dogo, 25.5 );
setEffRotateKey( spep_3 - a + 104, ct_dogo, 25.5 );

setEffAlphaKey( spep_3 - a + 64, ct_dogo, 77 );
setEffAlphaKey( spep_3 - a + 66, ct_dogo, 166 );
setEffAlphaKey( spep_3 - a + 68, ct_dogo, 255 );
setEffAlphaKey( spep_3 - a + 96, ct_dogo, 255 );
setEffAlphaKey( spep_3 - a + 98, ct_dogo, 191 );
setEffAlphaKey( spep_3 - a + 100, ct_dogo, 128 );
setEffAlphaKey( spep_3 - a + 102, ct_dogo, 64 );
setEffAlphaKey( spep_3 - a + 104, ct_dogo, 0 );

--敵
setDisp( spep_3 + 0, 1, 1 );
changeAnime( spep_3 + 0, 1, 107 );
setMoveKey( spep_3 + 0, 1, -16, 4.8 , 0 );
setMoveKey( spep_3 + 2, 1, -5.8, -30.8 , 0 );
setMoveKey( spep_3 + 4, 1, 4.5, -64.2 , 0 );
setMoveKey( spep_3 + 6, 1, 14.4, -95.4 , 0 );
setMoveKey( spep_3 + 8, 1, 24, -123.9 , 0 );
setMoveKey( spep_3 + 10, 1, 24.6, -126.6 , 0 );
setMoveKey( spep_3 + 12, 1, 25.2, -128.9 , 0 );
setMoveKey( spep_3 + 14, 1, 25.7, -130.9 , 0 );
setMoveKey( spep_3 + 16, 1, 26.1, -132.6 , 0 );
setMoveKey( spep_3 + 18, 1, 26.4, -134 , 0 );
setMoveKey( spep_3 + 20, 1, 26.8, -135.1 , 0 );
setMoveKey( spep_3 + 22, 1, 27, -135.9 , 0 );
setMoveKey( spep_3 + 24, 1, 27.2, -136.4 , 0 );
setMoveKey( spep_3 + 26, 1, 27.3, -136.5 , 0 );
setMoveKey( spep_3 + 28, 1, 27.4, -136.4 , 0 );
setMoveKey( spep_3 + 30, 1, 27.5, -136 , 0 );
setMoveKey( spep_3 + 32, 1, 27.5, -135.2 , 0 );
setMoveKey( spep_3 + 33, 1, 27.3, -134.2 , 0 );

setScaleKey( spep_3 + 0, 1, 0.85, 0.85 );
setScaleKey( spep_3 + 2, 1, 0.93, 0.93 );
setScaleKey( spep_3 + 4, 1, 1.01, 1.01 );
setScaleKey( spep_3 + 6, 1, 1.08, 1.08 );
setScaleKey( spep_3 + 8, 1, 1.15, 1.15 );
setScaleKey( spep_3 + 10, 1, 1.16, 1.16 );
setScaleKey( spep_3 + 12, 1, 1.17, 1.17 );
setScaleKey( spep_3 + 14, 1, 1.18, 1.18 );
setScaleKey( spep_3 + 16, 1, 1.19, 1.19 );
setScaleKey( spep_3 + 18, 1, 1.2, 1.2 );
setScaleKey( spep_3 + 20, 1, 1.21, 1.21 );
setScaleKey( spep_3 + 22, 1, 1.21, 1.21 );
setScaleKey( spep_3 + 24, 1, 1.22, 1.22 );
setScaleKey( spep_3 + 26, 1, 1.22, 1.22 );
setScaleKey( spep_3 + 28, 1, 1.23, 1.23 );
setScaleKey( spep_3 + 33, 1, 1.23, 1.23 );

setRotateKey( spep_3 + 0, 1, -10 );
setRotateKey( spep_3 + 2, 1, -7.2 );
setRotateKey( spep_3 + 4, 1, -4.6 );
setRotateKey( spep_3 + 6, 1, -2.2 );
setRotateKey( spep_3 + 8, 1, 0 );
setRotateKey( spep_3 + 33, 1, 0 );

changeAnime( spep_3 - a + 36, 1, 108 );
setMoveKey( spep_3 - a + 36, 1, 47.8, -106.3 , 0 );
setMoveKey( spep_3 - a + 38, 1, 34.9, -99.8 , 0 );
setMoveKey( spep_3 - a + 40, 1, 71.7, -140.3 , 0 );
setMoveKey( spep_3 - a + 42, 1, 47.6, -118.3 , 0 );
setMoveKey( spep_3 - a + 44, 1, 47.5, -122.3 , 0 );
setMoveKey( spep_3 - a + 46, 1, 47.4, -126.3 , 0 );
setMoveKey( spep_3 - a + 48, 1, 47.3, -130.3 , 0 );
setMoveKey( spep_3 - a + 50, 1, 47.2, -134.3 , 0 );
setMoveKey( spep_3 - a + 52, 1, 47, -138.4 , 0 );
setMoveKey( spep_3 - a + 54, 1, 46.8, -142.4 , 0 );
setMoveKey( spep_3 - a + 56, 1, 46.7, -146.4 , 0 );
setMoveKey( spep_3 - a + 58, 1, 46.5, -150.5 , 0 );
setMoveKey( spep_3 - a + 60, 1, 46.3, -154.6 , 0 );
setMoveKey( spep_3 - a + 62, 1, 46.1, -158.6 , 0 );
setMoveKey( spep_3 - a + 64, 1, 45.9, -162.7 , 0 );
setMoveKey( spep_3 - a + 66, 1, 54.6, -194 , 0 );
setMoveKey( spep_3 - a + 68, 1, 101.8, -180.9 , 0 );
setMoveKey( spep_3 - a + 70, 1, 26.4, -225.1 , 0 );
setMoveKey( spep_3 - a + 72, 1, 57.8, -70.9 , 0 );
setMoveKey( spep_3 - a + 74, 1, 108.9, -214.4 , 0 );
setMoveKey( spep_3 - a + 76, 1, 28.9, -144.1 , 0 );
setMoveKey( spep_3 - a + 78, 1, 107, -182.7 , 0 );
setMoveKey( spep_3 - a + 80, 1, 19.3, -194.1 , 0 );
setMoveKey( spep_3 - a + 82, 1, 55.1, -130.1 , 0 );
setMoveKey( spep_3 - a + 84, 1, 52.4, -165.6 , 0 );
setMoveKey( spep_3 - a + 86, 1, 53, -131.5 , 0 );
setMoveKey( spep_3 - a + 88, 1, 54.8, -106.7 , 0 );
setMoveKey( spep_3 - a + 90, 1, 57.6, -91.1 , 0 );
setMoveKey( spep_3 - a + 92, 1, 61.5, -84.7 , 0 );
setMoveKey( spep_3 - a + 94, 1, 66.4, -87.5 , 0 );
setMoveKey( spep_3 - a + 96, 1, 72.4, -99.6 , 0 );
setMoveKey( spep_3 - a + 98, 1, 79.6, -120.9 , 0 );
setMoveKey( spep_3 - a + 100, 1, 87.7, -151.4 , 0 );
setMoveKey( spep_3 - a + 102, 1, 97, -191.1 , 0 );
setMoveKey( spep_3 - a + 104, 1, 107.4, -240 , 0 );
setMoveKey( spep_3 - a + 106, 1, 118.8, -298.2 , 0 );
setMoveKey( spep_3 - a + 108, 1, 131.2, -365.6 , 0 );
setMoveKey( spep_3 - a + 110, 1, 144.7, -442.2 , 0 );
setMoveKey( spep_3 - a + 112, 1, 159.4, -528.2 , 0 );
setMoveKey( spep_3 - a + 114, 1, 175.1, -623.2 , 0 );

setScaleKey( spep_3 - a + 36, 1, 3.65, 3.65 );
setScaleKey( spep_3 - a + 38, 1, 3.83, 3.83 );
setScaleKey( spep_3 - a + 40, 1, 3.65, 3.65 );
setScaleKey( spep_3 - a + 64, 1, 3.65, 3.65 );
setScaleKey( spep_3 - a + 66, 1, 4.38, 4.38 );
setScaleKey( spep_3 - a + 68, 1, 4.02, 4.02 );
setScaleKey( spep_3 - a + 70, 1, 3.65, 3.65 );
setScaleKey( spep_3 - a + 84, 1, 3.65, 3.65 );
setScaleKey( spep_3 - a + 86, 1, 3.49, 3.49 );
setScaleKey( spep_3 - a + 88, 1, 3.33, 3.33 );
setScaleKey( spep_3 - a + 90, 1, 3.16, 3.16 );
setScaleKey( spep_3 - a + 92, 1, 3, 3 );
setScaleKey( spep_3 - a + 94, 1, 2.84, 2.84 );
setScaleKey( spep_3 - a + 96, 1, 2.68, 2.68 );
setScaleKey( spep_3 - a + 98, 1, 2.52, 2.52 );
setScaleKey( spep_3 - a + 100, 1, 2.36, 2.36 );
setScaleKey( spep_3 - a + 102, 1, 2.19, 2.19 );
setScaleKey( spep_3 - a + 104, 1, 2.03, 2.03 );
setScaleKey( spep_3 - a + 106, 1, 1.87, 1.87 );
setScaleKey( spep_3 - a + 108, 1, 1.71, 1.71 );
setScaleKey( spep_3 - a + 110, 1, 1.55, 1.55 );
setScaleKey( spep_3 - a + 112, 1, 1.39, 1.39 );
setScaleKey( spep_3 - a + 114, 1, 1.22, 1.22 );

setRotateKey( spep_3 - a + 36, 1, 64 );
setRotateKey( spep_3 - a + 38, 1, 64.4 );
setRotateKey( spep_3 - a + 40, 1, 64.8 );
setRotateKey( spep_3 - a + 42, 1, 65.2 );
setRotateKey( spep_3 - a + 44, 1, 65.6 );
setRotateKey( spep_3 - a + 46, 1, 66 );
setRotateKey( spep_3 - a + 48, 1, 66.4 );
setRotateKey( spep_3 - a + 50, 1, 66.8 );
setRotateKey( spep_3 - a + 52, 1, 67.2 );
setRotateKey( spep_3 - a + 54, 1, 67.6 );
setRotateKey( spep_3 - a + 56, 1, 68 );
setRotateKey( spep_3 - a + 58, 1, 68.4 );
setRotateKey( spep_3 - a + 60, 1, 68.8 );
setRotateKey( spep_3 - a + 62, 1, 69.2 );
setRotateKey( spep_3 - a + 64, 1, 69.6 );
setRotateKey( spep_3 - a + 66, 1, 70 );
setRotateKey( spep_3 - a + 114, 1, 70 );

setDisp( spep_3 + 112, 1, 0);

------------------------------------------------------
-- フィニッシュ(160F)
------------------------------------------------------

--フレーム指定
spep_4 = spep_3 + 114;

--敵落下
ef_finish = entryEffect(spep_4, SP_07r, 0x100, -1 ,0 ,0, 0);
setEffMoveKey(spep_4, ef_finish, 0, 0);
setEffMoveKey(spep_4 + 160, ef_finish, 0, 0);

setEffScaleKey(spep_4, ef_finish, 1.0, 1.0);
setEffScaleKey(spep_4 + 160, ef_finish, 1.0, 1.0);

setEffRotateKey(spep_4, ef_finish, 0);
setEffRotateKey(spep_4 + 160, ef_finish, 0);

setEffAlphaKey(spep_4, ef_finish, 255);
setEffAlphaKey(spep_4 + 160, ef_finish, 255);

--敵落下_背景
ef_finish_bg = entryEffect(spep_4, SP_08r, 0x80, -1 ,0 ,0, 0);
setEffMoveKey(spep_4, ef_finish_bg, 0, 0);
setEffMoveKey(spep_4 + 160, ef_finish_bg, 0, 0);

setEffScaleKey(spep_4, ef_finish_bg, 1.0, 1.0);
setEffScaleKey(spep_4 + 160, ef_finish_bg, 1.0, 1.0);

setEffRotateKey(spep_4, ef_finish_bg, 0);
setEffRotateKey(spep_4 + 160, ef_finish_bg, 0);

setEffAlphaKey(spep_4, ef_finish_bg, 255);
setEffAlphaKey(spep_4 + 160, ef_finish_bg, 255);

--背景黒フェード
entryFadeBg(spep_4, 0, 160, 0, 0, 0, 0, 255); --背景黒

--SE
playSe(spep_4, 08); --落下
playSe(spep_4 + 40, 1023); --激突

--敵
setDisp( spep_4 + 0, 1, 1 );
changeAnime( spep_4 + 0, 1, 108 );
setMoveKey( spep_4 - a + 2, 1, -23.3, 72.4 , 0 );
setMoveKey( spep_4 - a + 4, 1, -23.4, 138.3 , 0 );
setMoveKey( spep_4 - a + 6, 1, -23.1, 196.7 , 0 );
setMoveKey( spep_4 - a + 8, 1, -22.4, 247.1 , 0 );
setMoveKey( spep_4 - a + 10, 1, -21.3, 289 , 0 );
setMoveKey( spep_4 - a + 12, 1, -19.8, 321.9 , 0 );
setMoveKey( spep_4 - a + 14, 1, -17.8, 345.3 , 0 );
setMoveKey( spep_4 - a + 16, 1, -15.4, 358.7 , 0 );
setMoveKey( spep_4 - a + 18, 1, -12.4, 361.6 , 0 );
setMoveKey( spep_4 - a + 20, 1, -8.9, 353.4 , 0 );
setMoveKey( spep_4 - a + 22, 1, -4.8, 333.6 , 0 );
setMoveKey( spep_4 - a + 24, 1, -0.1, 301.8 , 0 );
setMoveKey( spep_4 - a + 26, 1, 5.1, 257.4 , 0 );
setMoveKey( spep_4 - a + 28, 1, 11.1, 199.9 , 0 );
setMoveKey( spep_4 - a + 30, 1, 17.6, 128.8 , 0 );
setMoveKey( spep_4 - a + 32, 1, 24.9, 43.6 , 0 );
setMoveKey( spep_4 - a + 34, 1, 32.8, -56.1 , 0 );
setMoveKey( spep_4 - a + 36, 1, 41.6, -171.2 , 0 );
setMoveKey( spep_4 - a + 38, 1, 51, -301.7 , 0 );
setMoveKey( spep_4 - a + 40, 1, 61.3, -448.5 , 0 );

setScaleKey( spep_4 - a + 2, 1, 5.1, 5.1 );
setScaleKey( spep_4 - a + 4, 1, 5.2, 5.2 );
setScaleKey( spep_4 - a + 6, 1, 5.27, 5.27 );
setScaleKey( spep_4 - a + 8, 1, 5.33, 5.33 );
setScaleKey( spep_4 - a + 10, 1, 5.35, 5.35 );
setScaleKey( spep_4 - a + 12, 1, 5.35, 5.35 );
setScaleKey( spep_4 - a + 14, 1, 5.31, 5.31 );
setScaleKey( spep_4 - a + 16, 1, 5.25, 5.25 );
setScaleKey( spep_4 - a + 18, 1, 5.15, 5.15 );
setScaleKey( spep_4 - a + 20, 1, 5.01, 5.01 );
setScaleKey( spep_4 - a + 22, 1, 4.84, 4.84 );
setScaleKey( spep_4 - a + 24, 1, 4.64, 4.64 );
setScaleKey( spep_4 - a + 26, 1, 4.39, 4.39 );
setScaleKey( spep_4 - a + 28, 1, 4.1, 4.1 );
setScaleKey( spep_4 - a + 30, 1, 3.77, 3.77 );
setScaleKey( spep_4 - a + 32, 1, 3.4, 3.4 );
setScaleKey( spep_4 - a + 34, 1, 2.98, 2.98 );
setScaleKey( spep_4 - a + 36, 1, 2.51, 2.51 );
setScaleKey( spep_4 - a + 38, 1, 1.99, 1.99 );
setScaleKey( spep_4 - a + 40, 1, 1.43, 1.43 );
setScaleKey( spep_4 - a + 41, 1, 1.43, 1.43 );

setRotateKey( spep_4 - a + 2, 1, 80 );
setRotateKey( spep_4 - a + 40, 1, 80 );

setDisp( spep_4 + 40, 1, 0 );

------------------------------------------------------
-- ダメージ表示
------------------------------------------------------

dealDamage(spep_4 + 40);
--entryFade( spep_4 + 130, 9, 10, 1, 8, 8, 8, 255 ); -- 黒フェード
endPhase(spep_4 + 150);

end