--バーダック&ギネ アクティブスキル_ギネの応援

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--***SE***
SE_01 = 1035; --気を貯める
SE_02 = 1036; --気が広がる
SE_03 = 1036; --かめはめ
SE_04 = 1018; --カットイン
SE_05 = 1035; --カットイン攻撃
SE_06 = 1021; --発射
SE_07 = 1022; --のびる発射
--SE_08 = 1042; --カットイン
SE_09 = 1023; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音
SE_12 = 09;

--***エフェクト***
SP_01 = 154888;  --振り向く→決めポーズ


------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI(0, 0);

changeAnime( 0, 0, 1);                       -- 立ち
changeAnime( 0, 1, 101);                       -- 立ち
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

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
-- 振り向き
------------------------------------------------------
spep_0=0;
--エフェクト
rooting = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0,  rooting, 0, 0, 0 );
setEffMoveKey( spep_0 + 180,  rooting, 0, 0, 0 );
setEffScaleKey( spep_0 + 0,  rooting, 1.0, 1.0 );
setEffScaleKey( spep_0 + 180,  rooting, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0,  rooting, 0 );
setEffRotateKey( spep_0 + 180,  rooting, 0) ;
setEffAlphaKey( spep_0 + 0,  rooting,  255 );
setEffAlphaKey( spep_0 + 180,  rooting,  255 );

-- ** 音 ** --
--入り
playSe( spep_0 + 0, 08 );

--振り返り
playSe( spep_0 + 16, 04 );
setSeVolume( spep_0 + 16, 04, 178 );

--ラスト決め
playSe( spep_0 + 89, 1127 );
setSeVolume( spep_0 + 89, 1127, 0 );
setSeVolume( spep_0 + 110, 1127, 1.74 );
setSeVolume( spep_0 + 111, 1127, 3.48 );
setSeVolume( spep_0 + 112, 1127, 5.22 );
setSeVolume( spep_0 + 113, 1127, 6.96 );
setSeVolume( spep_0 + 114, 1127, 8.70 );
setSeVolume( spep_0 + 115, 1127, 10.43 );
setSeVolume( spep_0 + 116, 1127, 12.17 );
setSeVolume( spep_0 + 117, 1127, 13.91 );
setSeVolume( spep_0 + 118, 1127, 15.65 );
setSeVolume( spep_0 + 119, 1127, 17.39 );
setSeVolume( spep_0 + 120, 1127, 19.13 );
setSeVolume( spep_0 + 121, 1127, 20.87 );
setSeVolume( spep_0 + 122, 1127, 22.61 );
setSeVolume( spep_0 + 123, 1127, 24.35 );
setSeVolume( spep_0 + 124, 1127, 26.09 );
setSeVolume( spep_0 + 125, 1127, 27.83 );
setSeVolume( spep_0 + 126, 1127, 29.57 );
setSeVolume( spep_0 + 127, 1127, 31.30 );
setSeVolume( spep_0 + 128, 1127, 33.04 );
setSeVolume( spep_0 + 129, 1127, 34.78 );
setSeVolume( spep_0 + 130, 1127, 36.52 );
setSeVolume( spep_0 + 131, 1127, 38.26 );
setSeVolume( spep_0 + 132, 1127, 40.00 );
playSe( spep_0 + 117, 1042 );
setSeVolume( spep_0 + 117, 1042, 126 );
playSe( spep_0 + 117, 1115 );
setSeVolume( spep_0 + 117, 1115, 141 );

--spep_1=spep_0+244;
-- ダメージ表示
--dealDamage(spep_1+16);
entryFade( spep_0 + 168, 12, 0, 0, 8, 8, 8, 255);
endPhase(spep_0 + 180);

else end