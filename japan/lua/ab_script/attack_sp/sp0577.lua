--パーフェクトセル_パーフェクトデスビーム

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
SP_01 = 153927 ; --突進
SP_02 = 153928 ; --気弾
SP_03 = 153930 ; --気弾迫る
SP_04 = 153931 ; --被弾
SP_04a = 153932 ; --被弾背景
SP_05 = 153933 ; --追撃
SP_06 = 153935 ; --爆発
SP_07 = 153936 ; --爆発2
SP_08 = 153937 ; --指からビーム
SP_09 = 153939 ; --煙からビーム
SP_10 = 153940 ; --ビーム貫通
SP_11 = 153942 ; --ビーム貫通背景
SP_12 = 153944 ; --煙
SP_13 = 153945 ; --青背景
SP_14 = 153946 ; --ラスト

SP_02x = 153929 ; --気弾
SP_05x = 153934 ; ---追撃
SP_08x = 153938 ; --指からビーム
SP_10x = 153941 ; --煙からビーム
--SP_11x = 153943 ; --ビーム貫通背景
SP_14x = 153947 ; --ラスト

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

tosshin_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 突進(130F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
tosshin = entryEffectLife( spep_0 + 0, SP_01, 130, 0x100, -1, 0, 0, 0 );  --突進(ef_001)
setEffMoveKey( spep_0 + 0, tosshin, 0, 0 , 0 );
setEffMoveKey( spep_0 + 130, tosshin, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tosshin, 1.0, 1.0 );
setEffScaleKey( spep_0 + 130, tosshin, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tosshin, 0 );
setEffRotateKey( spep_0 + 130, tosshin, 0 );
setEffAlphaKey( spep_0 + 0, tosshin, 255 );
setEffAlphaKey( spep_0 + 130, tosshin, 255 );


-- ** 顔カットイン ** --
speff = entryEffect( spep_0 + 20, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0 + 20, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_0 +16 + 20,  190006, 64, 0x100, -1, 0, 100.9, 515.5 ); --ゴゴゴ
setEffShake( spep_0 + 16, ctgogo, 64, 10 );

setEffMoveKey( spep_0 + 16 + 20, ctgogo, 100.9, 515.5 , 0 );
setEffMoveKey( spep_0 + 80 + 20, ctgogo, 100.9, 515.5 , 0 );

setEffScaleKey( spep_0 + 16 + 20, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_0 + 72 + 20, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_0 + 74 + 20, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_0 + 76 + 20, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_0 + 78 + 20, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_0 + 80 + 20, ctgogo, 1.69, 1.69 );

setEffRotateKey( spep_0 + 16 + 20, ctgogo, 0 );
setEffRotateKey( spep_0 + 80 + 20, ctgogo, 0 );

setEffAlphaKey( spep_0 + 16 + 20, ctgogo, 255 );
setEffAlphaKey( spep_0 + 80 + 20, ctgogo, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 130, 0, 0, 0, 0, 255 );  --黒　背景


-- ** 音 ** --
playSe(  spep_0,  9);  --ダッシュ
playSe(  spep_0+36,  SE_04);  --ダッシュ


------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 110; --エンドフェイズのフレーム数を置き換える

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


-- ** 白フェード ** --
entryFade( spep_0 + 124, 4, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

playSe( spep_0 + 100,  1072);
-- ** 次の準備 ** --
spep_1 = spep_0 + 130;

------------------------------------------------------
-- 気弾放つ(96F)
------------------------------------------------------

hanatsu = entryEffectLife( spep_1 + 0, SP_02, 106, 0x100, -1, 0, 0, 0 );  --気弾放つ(ef_002)
setEffMoveKey( spep_1 + 0, hanatsu, 0, 0 , 0 );
setEffMoveKey( spep_1 + 106, hanatsu, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, hanatsu, 1.0, 1.0 );
setEffScaleKey( spep_1 + 106, hanatsu, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, hanatsu, 0 );
setEffRotateKey( spep_1 + 106, hanatsu, 0 );
setEffAlphaKey( spep_1 + 0, hanatsu, 255 );
setEffAlphaKey( spep_1 + 106, hanatsu, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_1 + 100, 4, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

playSe( spep_1 ,  43);  --瞬間移動
--[[
playSe( spep_1+ 30, 64);  --気弾
playSe( spep_1+ 40, 64);  --気弾
playSe( spep_1+ 50, 64);  --気弾
playSe( spep_1+ 60, 64);  --気弾
playSe( spep_1+ 70, 64);  --気弾
playSe( spep_1+ 80, 64);  --気弾
playSe( spep_1+ 90, 64);  --気弾
playSe( spep_1+ 100, 64);  --気弾
]]
--v4.11調整
SE001 = playSe( spep_1+ 30, 64);  --気弾
stopSe(spep_1 + 50,SE001,5);
SE002 = playSe( spep_1+ 40, 64);  --気弾
stopSe(spep_1 + 60,SE002,5);
SE003 = playSe( spep_1+ 50, 64);  --気弾
stopSe(spep_1 + 70,SE003,5);
SE004 = playSe( spep_1+ 60, 64);  --気弾
stopSe(spep_1 + 80,SE004,5);
SE005 = playSe( spep_1+ 70, 64);  --気弾
stopSe(spep_1 + 90,SE005,5);
SE006 = playSe( spep_1+ 80, 64);  --気弾
stopSe(spep_1 + 100,SE006,5);
SE007 = playSe( spep_1+ 90, 64);  --気弾
stopSe(spep_1 + 110,SE007,5);
SE008 = playSe( spep_1+ 100, 64);  --気弾

-- ** 次の準備 ** --
spep_2 = spep_1 + 106;

------------------------------------------------------
-- 気弾迫る(60F)
------------------------------------------------------

-- ** 流線 ** --
ryusen = entryEffectLife( spep_2 + 0,  914, 60, 0x100, -1, 0, 0, 0 ); --流線
setEffMoveKey( spep_2 + 0, ryusen, 0, 0 , 0 );
setEffMoveKey( spep_2 + 60, ryusen, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, ryusen, 2, 1 );
setEffScaleKey( spep_2 + 60, ryusen, 2, 1 );
setEffRotateKey( spep_2 + 0, ryusen, 0 );
setEffRotateKey( spep_2 + 60, ryusen, 0 );
setEffAlphaKey( spep_2 + 0, ryusen, 100 );
setEffAlphaKey( spep_2 + 60, ryusen, 100 );


semaru = entryEffectLife( spep_2 + 0, SP_03, 60, 0x80, -1, 0, 0, 0 );  --気弾迫る(ef_003)
setEffMoveKey( spep_2 + 0, semaru, 0, 0 , 0 );
setEffMoveKey( spep_2 + 60, semaru, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, semaru, 1.0, 1.0 );
setEffScaleKey( spep_2 + 60, semaru, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, semaru, 0 );
setEffRotateKey( spep_2 + 60, semaru, 0 );
setEffAlphaKey( spep_2 + 0, semaru, 255 );
setEffAlphaKey( spep_2 + 60, semaru, 255 );

-- ** 音 ** --
playSe( spep_2+16,  1016);
playSe( spep_2+26,  1016);
playSe( spep_2+36,  1016);
playSe( spep_2+46,  1016);
playSe( spep_2+56,  1016);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 60, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_2 + 54, 4, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 60;

------------------------------------------------------
-- 被弾(44F)
------------------------------------------------------

-- ** エフェクト等 ** --
hidan = entryEffectLife( spep_3 + 0, SP_04, 40, 0x100, -1, 0, 0, 0 );  --被弾(ef_004)
setEffMoveKey( spep_3 + 0, hidan, 0, 0 , 0 );
setEffMoveKey( spep_3 + 40, hidan, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hidan, 1.0, 1.0 );
setEffScaleKey( spep_3 + 40, hidan, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hidan, 0 );
setEffRotateKey( spep_3 + 40, hidan, 0 );
setEffAlphaKey( spep_3 + 0, hidan, 255 );
setEffAlphaKey( spep_3 + 39, hidan, 255 );
setEffAlphaKey( spep_3 + 40, hidan, 0 );

-- ** 敵の動き ** --
setDisp( spep_3  + 0, 1, 1 );
setDisp( spep_3  + 40, 1, 0 );
changeAnime( spep_3  + 0, 1, 100);

setMoveKey( spep_3  + 0, 1, 0, 0 , 0 );
setMoveKey( spep_3  + 20, 1, 0, 0 , 0 );
setMoveKey( spep_3  + 22, 1, 4, 3 , 0 );
setMoveKey( spep_3  + 24, 1, -3, -4 , 0 );
setMoveKey( spep_3  + 26, 1, 4, -4 , 0 );
setMoveKey( spep_3  + 28, 1, -4, 4 , 0 );
setMoveKey( spep_3  + 30, 1, 4, 3 , 0 );
setMoveKey( spep_3  + 32, 1, -3, -4 , 0 );
setMoveKey( spep_3  + 34, 1, 4, -4 , 0 );
setMoveKey( spep_3  + 36, 1, -4, 4 , 0 );
setMoveKey( spep_3  + 38, 1, 4, 3 , 0 );
setMoveKey( spep_3  + 40, 1, -3, -4 , 0 );
--setMoveKey( spep_3  + 42, 1, 4, -4 , 0 );
setScaleKey( spep_3  + 0, 1, 3, 3 );
setScaleKey( spep_3  + 2, 1, 2.66, 2.66 );
setScaleKey( spep_3  + 4, 1, 2.33, 2.33 );
setScaleKey( spep_3  + 6, 1, 1.99, 1.99 );
setScaleKey( spep_3  + 8, 1, 1.66, 1.66 );
setScaleKey( spep_3  + 10, 1, 1.32, 1.32 );
setScaleKey( spep_3  + 12, 1, 0.99, 0.99 );
setScaleKey( spep_3  + 14, 1, 0.65, 0.65 );
setScaleKey( spep_3  + 16, 1, 0.62, 0.62 );
setScaleKey( spep_3  + 18, 1, 0.6, 0.6 );
setScaleKey( spep_3  + 20, 1, 0.57, 0.57 );
setScaleKey( spep_3  + 22, 1, 0.55, 0.55 );
setScaleKey( spep_3  + 24, 1, 0.52, 0.52 );
setScaleKey( spep_3  + 26, 1, 0.5, 0.5 );
setScaleKey( spep_3  + 28, 1, 0.47, 0.47 );
setScaleKey( spep_3  + 30, 1, 0.45, 0.45 );
setScaleKey( spep_3  + 32, 1, 0.42, 0.42 );
setScaleKey( spep_3  + 34, 1, 0.39, 0.39 );
setScaleKey( spep_3  + 36, 1, 0.37, 0.37 );
setScaleKey( spep_3  + 38, 1, 0.34, 0.34 );
setScaleKey( spep_3  + 40, 1, 0.32, 0.32 );
--setScaleKey( spep_3  + 42, 1, 0.29, 0.29 );
setRotateKey( spep_3  + 0, 1, 0 );
setRotateKey( spep_3  + 40, 1, 0 );



hidan_b = entryEffectLife( spep_3 + 0, SP_04a, 40, 0x80, -1, 0, 0, 0 );  --被弾(ef_004)
setEffMoveKey( spep_3 + 0, hidan_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 40, hidan_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hidan_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 40, hidan_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hidan_b, 0 );
setEffRotateKey( spep_3 + 40, hidan_b, 0 );
setEffAlphaKey( spep_3 + 0, hidan_b, 255 );
setEffAlphaKey( spep_3 + 40, hidan_b, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 44, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
playSe( spep_3 + 0,  1016);
playSe( spep_3 + 8,  1016);
playSe( spep_3 + 16,  1016);

--[[
playSe( spep_3 + 22,  1023);
playSe( spep_3 + 26,  1023);
playSe( spep_3 + 30,  1023);
playSe( spep_3 + 34,  1023);
]]
playSe( spep_3 + 22,  1023);
setSeVolume(spep_3 + 22,1023,80);
playSe( spep_3 + 26,  1023);
setSeVolume(spep_3 + 26,1023,80);
playSe( spep_3 + 30,  1023);
setSeVolume(spep_3 + 30,1023,80);
playSe( spep_3 + 34,  1023);
setSeVolume(spep_3 + 34,1023,80);

-- ** 次の準備 ** --
spep_4 = spep_3 + 40;

------------------------------------------------------
-- 追撃(100F)
------------------------------------------------------

-- ** エフェクト等 ** --
tsuigeki = entryEffectLife( spep_4 + 0, SP_05, 100, 0x80, -1, 0, 0, 0 );  --追撃(ef_005)
setEffMoveKey( spep_4 + 0, tsuigeki, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, tsuigeki, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, tsuigeki, 1.0, 1.0 );
setEffScaleKey( spep_4 + 100, tsuigeki, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, tsuigeki, 0 );
setEffRotateKey( spep_4 + 100, tsuigeki, 0 );
setEffAlphaKey( spep_4 + 0, tsuigeki, 255 );
setEffAlphaKey( spep_4 + 100, tsuigeki, 255 );

-- ** 音 ** --
--[[
playSe( spep_4,  64);
playSe( spep_4+8,  64);
playSe( spep_4+16,  64);
playSe( spep_4+20,  1023);
playSe( spep_4+24,  64);
playSe( spep_4+28,  1023);
playSe( spep_4+32,  64);
playSe( spep_4+36,  1023);
playSe( spep_4+40,  64);
playSe( spep_4+44,  1023);
playSe( spep_4+48,  64);
playSe( spep_4+52,  1023);
playSe( spep_4+56,  64);
playSe( spep_4+60,  1023);
playSe( spep_4+64,  64);
playSe( spep_4+68,  1023);
playSe( spep_4+76,  1023);
playSe( spep_4+84,  1023);
playSe( spep_4+92,  1023);
]]
--v4.11調整
SE031 = playSe( spep_4,  64);
stopSe(spep_4+25,SE031,5);
SE032 = playSe( spep_4+8,  64);
stopSe(spep_4+31,SE032,5);
SE033 = playSe( spep_4+16,  64);
stopSe(spep_4+35,SE033,5);

SE020 = playSe( spep_4+20,  1023);
setSeVolume(spep_4+20,1023,80);
--stopSe(spep_4+28,SE020,10);

SE034 = playSe( spep_4+24,  64);
stopSe(spep_4+43,SE034,5);


SE021 = playSe( spep_4+28,  1023);
setSeVolume(spep_4+28,1023,80);
--stopSe(spep_4+36,SE021,10);

SE035 = playSe( spep_4+32,  64);
stopSe(spep_4+51,SE035,5);

SE022 = playSe( spep_4+36,  1023);
setSeVolume(spep_4+36,1023,80);
--stopSe(spep_4+44,SE022,10);

SE036 = playSe( spep_4+40,  64);
stopSe(spep_4+59,SE036,5);

SE023 = playSe( spep_4+44,  1023);
setSeVolume(spep_4+44,1023,80);
--stopSe(spep_4+52,SE023,10);

SE037 = playSe( spep_4+48,  64);
stopSe(spep_4+67,SE037,5);

SE024 = playSe( spep_4+52,  1023);
stopSe(spep_4+60,SE024,10);
--setSeVolume(spep_4+52,1023,80);

SE038 = playSe( spep_4+56,  64);
stopSe(spep_4+75,SE038,5);

SE025 = playSe( spep_4+60,  1023);
setSeVolume(spep_4+60,1023,80);
--stopSe(spep_4+68,SE025,10);

SE039 = playSe( spep_4+64,  64);
stopSe(spep_4+83,SE039,5);

SE026 = playSe( spep_4+68,  1023);
--stopSe(spep_4+68,SE026,10);
setSeVolume(spep_4+68,1023,80);
SE027 = playSe( spep_4+76,  1023);
setSeVolume(spep_4+76,1023,80);
--stopSe(spep_4+84,SE027,10);
SE028 = playSe( spep_4+84,  1023);
setSeVolume(spep_4+84,1023,80);
--stopSe(spep_4+92,SE028,10);
SE029 = playSe( spep_4+92,  1023);
setSeVolume(spep_4+92,1023,80);

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 100, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_4 + 94, 4, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 100;

------------------------------------------------------
-- 爆発(30F)
------------------------------------------------------

-- ** 集中線 ** --
shuchusen5 = entryEffectLife( spep_5 + 0,  906,  28,  0x100,  -1,  0,  0,  0);  --集中線
setEffMoveKey(  spep_5 + 0,  shuchusen5,  0,  0,  0);
setEffMoveKey(  spep_5 + 28,  shuchusen5,  0,  0,  0);
setEffScaleKey(  spep_5 + 0,  shuchusen5,  1.3,  1.3);
setEffScaleKey(  spep_5 + 28,  shuchusen5,  1.3,  1.3);
setEffRotateKey(  spep_5 + 0,  shuchusen5,  0);
setEffRotateKey(  spep_5 + 28,  shuchusen5,  0);
setEffAlphaKey(  spep_5 + 0,  shuchusen5,  255);
setEffAlphaKey(  spep_5 + 26,  shuchusen5,  255);
setEffAlphaKey(  spep_5 + 27,  shuchusen5,  0);
setEffAlphaKey(  spep_5 + 28,  shuchusen5,  0);

-- ** エフェクト等 ** --
bakuha = entryEffectLife( spep_5 + 0, SP_06, 28, 0x80, -1, 0, 0, 0 );  --爆発(ef_006)
setEffMoveKey( spep_5 + 0, bakuha, 0, 0 , 0 );
setEffMoveKey( spep_5 + 28, bakuha, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, bakuha, 1.0, 1.0 );
setEffScaleKey( spep_5 + 28, bakuha, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, bakuha, 0 );
setEffRotateKey( spep_5 + 28, bakuha, 0 );
setEffAlphaKey( spep_5 + 0, bakuha, 255 );
setEffAlphaKey( spep_5 + 26, bakuha, 255 );
setEffAlphaKey( spep_5 + 27, bakuha, 0 );
setEffAlphaKey( spep_5 + 28, bakuha, 0 );

 -- ** 音 ** --
playSe( spep_5,  1068);

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 30, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 28;

------------------------------------------------------
-- 爆発2(60F)
------------------------------------------------------

-- ** 集中線 ** --
shuchusen6 = entryEffectLife( spep_6 + 14 ,  906,  46,  0x100,  -1,  0,  0,  0);  --集中線
setEffMoveKey(  spep_6 + 14 ,  shuchusen6,  0,  0,  0);
setEffMoveKey(  spep_6 + 60,  shuchusen6,  0,  0,  0);
setEffScaleKey(  spep_6 + 14 ,  shuchusen6,  1.3,  1.3);
setEffScaleKey(  spep_6 + 60,  shuchusen6,  1.3,  1.3);
setEffRotateKey(  spep_6 + 14 ,  shuchusen6,  0);
setEffRotateKey(  spep_6 + 60,  shuchusen6,  0);
setEffAlphaKey(  spep_6 + 14 ,  shuchusen6,  255);
setEffAlphaKey(  spep_6 + 60,  shuchusen6,  255);


-- ** エフェクト等 ** --
bakuha2 = entryEffectLife( spep_6, SP_07, 60, 0x80, -1, 0, 0, 0 );  --爆発2(ef_007)
setEffMoveKey( spep_6 +0, bakuha2, 0, 0 , 0 );
setEffMoveKey( spep_6 + 60, bakuha2, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, bakuha2, 1.0, 1.0 );
setEffScaleKey( spep_6 + 60, bakuha2, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, bakuha2, 0 );
setEffRotateKey( spep_6 + 60, bakuha2, 0 );
setEffAlphaKey( spep_6 + 0, bakuha2, 255 );
setEffAlphaKey( spep_6 + 60, bakuha2, 255 );

 -- ** 音 ** --
playSe( spep_6,  1024);
setSeVolume( spep_6,  1024,  200);

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 60, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_7 = spep_6 + 60;

------------------------------------------------------
-- カードカットイン(94F)
------------------------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_7 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_7 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_7 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_7 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_7 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_7 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_7 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_7 + 0, shuchusen, 0 );
setEffRotateKey( spep_7 + 90, shuchusen, 0 );

setEffAlphaKey( spep_7 + 0, shuchusen, 255 );
setEffAlphaKey( spep_7 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_7 + 0, SE_05 );

-- ** 次の準備 ** --
entryFade( spep_7 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_7 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_8 = spep_7 + 94;

------------------------------------------------------
-- 指からビーム(110F)
------------------------------------------------------

-- ** エフェクト等 ** --
beam = entryEffectLife( spep_8 + 0, SP_08, 110, 0x80, -1, 0, 0, 0 );  --指からビーム(ef_008)
setEffMoveKey( spep_8 + 0, beam, 0, 0 , 0 );
setEffMoveKey( spep_8 + 110, beam, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_8 + 110, beam, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, beam, 0 );
setEffRotateKey( spep_8 + 110, beam, 0 );
setEffAlphaKey( spep_8 + 0, beam, 255 );
setEffAlphaKey( spep_8 + 110, beam, 255 );

-- ** 音 ** --
playSe( spep_8,  1130);
playSe( spep_8+50,  1021);
playSe(  spep_8+70,  1022);

-- ** 黒背景 ** --
entryFadeBg( spep_8 + 0, 0, 110, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_9 = spep_8 + 110;

------------------------------------------------------
-- 煙(40F)
------------------------------------------------------

-- ** エフェクト等 ** --
smoke = entryEffectLife( spep_9 + 0, SP_09, 40, 0x80, -1, 0, 0, 0 );  --煙(ef_009)
setEffMoveKey( spep_9 + 0, smoke, 0, 0 , 0 );
setEffMoveKey( spep_9 + 40, smoke, 0, 0 , 0 );
setEffScaleKey( spep_9 + 0, smoke, 1.0, 1.0 );
setEffScaleKey( spep_9 + 40, smoke, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, smoke, 0 );
setEffRotateKey( spep_9 + 40, smoke, 0 );
setEffAlphaKey( spep_9 + 0, smoke, 255 );
setEffAlphaKey( spep_9 + 40, smoke, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_9 + 0, 0, 40, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--playSe(  spep_9,  1022);

-- ** 白フェード ** --
entryFade( spep_9 + 30, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_10 = spep_9 + 40;

------------------------------------------------------
-- 貫通(40F)
------------------------------------------------------

-- ** 集中線 ** --
shuchusen10 = entryEffectLife( spep_10 + 10 - 3,  906,  20,  0x100,  -1,  0,  0,  0);  --集中線
setEffMoveKey(  spep_10  + 10 - 3,  shuchusen10,  0,  0,  0);
setEffMoveKey(  spep_10  + 30 - 3,  shuchusen10,  0,  0,  0);
setEffScaleKey(  spep_10 + 10 - 3,  shuchusen10,  1.3,  1.3);
setEffScaleKey(  spep_10  + 30 - 3,  shuchusen10,  1.3,  1.3);
setEffRotateKey(  spep_10 + 10 - 3,  shuchusen10,  0);
setEffRotateKey(  spep_10  + 30 - 3,  shuchusen10,  0);
setEffAlphaKey(  spep_10 + 10 - 3,  shuchusen10,  255);
setEffAlphaKey(  spep_10  + 30 - 3,  shuchusen10,  255);


-- ** エフェクト等 ** --
hidan2_b = entryEffectLife( spep_10 + 0, SP_11, 78, 0x80, -1, 0, 0, 0 );  --貫通(ef_010)
setEffMoveKey( spep_10 + 0, hidan2_b, 0, 0 , 0 );
setEffMoveKey( spep_10 + 78, hidan2_b, 0, 0 , 0 );
setEffScaleKey( spep_10 + 0, hidan2_b, 1.0, 1.0 );
setEffScaleKey( spep_10 + 78, hidan2_b, 1.0, 1.0 );
setEffRotateKey( spep_10 + 0, hidan2_b, 0 );
setEffRotateKey( spep_10 + 78, hidan2_b, 0 );
setEffAlphaKey( spep_10 + 0, hidan2_b, 255 );
setEffAlphaKey( spep_10 + 78, hidan2_b, 255 );

-- ** 敵の動き ** --
setDisp( spep_10 + 0, 1, 1 );
setDisp( spep_10 -3 + 76, 1, 0 );
changeAnime( spep_10 -3 + 0, 1, 104 );
changeAnime( spep_10 -3 + 20, 1, 106 );

a = -40

setMoveKey( spep_10 + 0, 1, 584.8, 6 , 0 );
setMoveKey( spep_10 -3 + 2, 1, 486.9, -6 , 0 );
setMoveKey( spep_10 -3 + 4, 1, 365.1, -6 , 0 );
setMoveKey( spep_10 -3 + 6, 1, 267.3, 6 , 0 );
setMoveKey( spep_10 -3 + 8, 1, 145.5, 6 , 0 );
setMoveKey( spep_10 -3 + 10, 1, 47.6, -6 , 0 );
setMoveKey( spep_10 -3 + 12, 1, -74.2, -6 , 0 );
setMoveKey( spep_10 -3 + 14, 1, -75.5, 6 , 0 );
setMoveKey( spep_10 -3 + 16, 1, -100.9, 6 , 0 );
setMoveKey( spep_10 -3 + 19, 1, -102.2, -6 , 0 );
setMoveKey( spep_10 -3 + 20, 1, -102.5, -6.5 + a , 0 );
setMoveKey( spep_10 -3 + 22, 1, -86.5, 5.6+ a , 0 );
setMoveKey( spep_10 -3 + 24, 1, -88.4, -0.4+ a , 0 );
setMoveKey( spep_10 -3 + 26, 1, -84.5, -0.4+ a , 0 );
setMoveKey( spep_10 -3 + 28, 1, -80.5, -0.4 + a, 0 );
setMoveKey( spep_10 -3 + 30, 1, -76.5, -0.3 + a, 0 );
setMoveKey( spep_10 -3 + 32, 1, -72.5, -0.3 + a, 0 );
setMoveKey( spep_10 -3 + 34, 1, -68.6, -0.2 + a, 0 );
setMoveKey( spep_10 -3 + 36, 1, -64.6, -0.2 + a, 0 );
setMoveKey( spep_10 -3 + 38, 1, -60.6, -0.1+ a , 0 );
setMoveKey( spep_10 -3 + 40, 1, -56.6, 0 + a, 0 );
setMoveKey( spep_10 -3 + 42, 1, -52.6, 0.1 + a, 0 );
setMoveKey( spep_10 -3 + 44, 1, -48.7, 0.2 + a, 0 );
setMoveKey( spep_10 -3 + 46, 1, -44.7, 0.3 + a, 0 );
setMoveKey( spep_10 -3 + 48, 1, -40.7, 0.4 + a, 0 );
setMoveKey( spep_10 -3 + 50, 1, -36.7, 0.5 + a, 0 );
setMoveKey( spep_10 -3 + 52, 1, -32.7, 0.6 + a, 0 );
setMoveKey( spep_10 -3 + 54, 1, -28.8, 0.8 + a, 0 );
setMoveKey( spep_10 -3 + 56, 1, -24.8, 0.9 + a, 0 );
setMoveKey( spep_10 -3 + 58, 1, -20.8, 1.1 + a, 0 );
setMoveKey( spep_10 -3 + 60, 1, -16.8, 1.3 + a, 0 );
setMoveKey( spep_10 -3 + 62, 1, -12.8, 1.5 + a, 0 );
setMoveKey( spep_10 -3 + 64, 1, -8.8, 1.7 + a, 0 );
setMoveKey( spep_10 -3 + 66, 1, 12.7, 2.1 + a, 0 );
setMoveKey( spep_10 -3 + 68, 1, 34.3, 2.5 + a, 0 );
setMoveKey( spep_10 -3 + 70, 1, 55.8, 3 + a, 0 );
setMoveKey( spep_10 -3 + 72, 1, 77.4, 3.4 + a, 0 );
setMoveKey( spep_10 -3 + 74, 1, 99, 3.9 + a, 0 );
setMoveKey( spep_10 -3 + 76, 1, 120.7, 4.4 + a, 0 );

setScaleKey( spep_10 + 0, 1, 2, 2 );
setScaleKey( spep_10 + 76 - 3, 1, 2, 2 );

setRotateKey( spep_10 + 0, 1, 0 );
setRotateKey( spep_10 -3 + 19, 1, 0 );
setRotateKey( spep_10 -3 + 20, 1, -55.9 );
setRotateKey( spep_10 -3 + 22, 1, -55.9 );
setRotateKey( spep_10 -3 + 24, 1, -55.8 );
setRotateKey( spep_10 -3 + 26, 1, -55.7 );
setRotateKey( spep_10 -3 + 28, 1, -55.6 );
setRotateKey( spep_10 -3 + 30, 1, -55.4 );
setRotateKey( spep_10 -3 + 32, 1, -55.2 );
setRotateKey( spep_10 -3 + 34, 1, -54.9 );
setRotateKey( spep_10 -3 + 36, 1, -54.6 );
setRotateKey( spep_10 -3 + 38, 1, -54.3 );
setRotateKey( spep_10 -3 + 40, 1, -53.9 );
setRotateKey( spep_10 -3 + 42, 1, -53.5 );
setRotateKey( spep_10 -3 + 44, 1, -53.1 );
setRotateKey( spep_10 -3 + 46, 1, -52.7 );
setRotateKey( spep_10 -3 + 48, 1, -52.2 );
setRotateKey( spep_10 -3 + 50, 1, -51.7 );
setRotateKey( spep_10 -3 + 52, 1, -51.1 );
setRotateKey( spep_10 -3 + 54, 1, -50.5 );
setRotateKey( spep_10 -3 + 56, 1, -49.8 );
setRotateKey( spep_10 -3 + 58, 1, -49.1 );
setRotateKey( spep_10 -3 + 60, 1, -48.3 );
setRotateKey( spep_10 -3 + 62, 1, -47.4 );
setRotateKey( spep_10 -3 + 64, 1, -46.2 );
setRotateKey( spep_10 -3 + 66, 1, -44.6 );
setRotateKey( spep_10 -3 + 68, 1, -42.7 );
setRotateKey( spep_10 -3 + 70, 1, -40.7 );
setRotateKey( spep_10 -3 + 72, 1, -38.5 );
setRotateKey( spep_10 -3 + 74, 1, -36.3 );
setRotateKey( spep_10 -3 + 76, 1, -33.9 );

-- ** 流線 ** --
ryusen2 = entryEffectLife( spep_10 + 0,  914, 30 -3 , 0x80, -1, 0, 0, 0 ); --流線
setEffMoveKey( spep_10 + 0, ryusen2, 0, 0 , 0 );
setEffMoveKey( spep_10 + 30 -3, ryusen2, 0, 0 , 0 );
setEffScaleKey( spep_10 + 0, ryusen2, 2, 1 );
setEffScaleKey( spep_10 + 30 - 3, ryusen2, 2, 1 );
setEffRotateKey( spep_10 + 0, ryusen2, 0 );
setEffRotateKey( spep_10 + 30 -3 , ryusen2, 0 );
setEffAlphaKey( spep_10 + 0, ryusen2, 100 );
setEffAlphaKey( spep_10 + 20 - 3, ryusen2, 100 );
setEffAlphaKey( spep_10 + 30 - 3, ryusen2, 0 );

hidan2 = entryEffectLife( spep_10 + 0, SP_10, 78, 0x100, -1, 0, 0, 0 );  --貫通(ef_010)
setEffMoveKey( spep_10 + 0, hidan2, 0, 0 , 0 );
setEffMoveKey( spep_10 + 78, hidan2, 0, 0 , 0 );
setEffScaleKey( spep_10 + 0, hidan2, 1.0, 1.0 );
setEffScaleKey( spep_10 + 78, hidan2, 1.0, 1.0 );
setEffRotateKey( spep_10 + 0, hidan2, 0 );
setEffRotateKey( spep_10 + 78, hidan2, 0 );
setEffAlphaKey( spep_10 + 0, hidan2, 255 );
setEffAlphaKey( spep_10 + 78, hidan2, 255 );


-- ** 音 ** --
playSe( spep_10+20,  1145); 

-- ** 黒背景 ** --
entryFadeBg( spep_10 + 0, 0, 78, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_10  -3 + 20, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 200 );  --white fade
entryFade( spep_10 + 74,4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_11 = spep_10 + 78;

------------------------------------------------------
-- 吹き飛ぶ(70F)
------------------------------------------------------

-- ** エフェクト等 ** --
hidan3_b = entryEffectLife( spep_11 + 0, SP_13, 70, 0x80, -1, 0, 0, 0 );  --貫通(ef_011)
setEffMoveKey( spep_11 + 0, hidan3_b, 0, 0 , 0 );
setEffMoveKey( spep_11 + 70, hidan3_b, 0, 0 , 0 );
setEffScaleKey( spep_11 + 0, hidan3_b, 1.0, 1.0 );
setEffScaleKey( spep_11 + 70, hidan3_b, 1.0, 1.0 );
setEffRotateKey( spep_11 + 0, hidan3_b, 0 );
setEffRotateKey( spep_11 + 70, hidan3_b, 0 );
setEffAlphaKey( spep_11 + 0, hidan3_b, 255 );
setEffAlphaKey( spep_11 + 69, hidan3_b, 255 );
setEffAlphaKey( spep_11 + 70, hidan3_b, 0 );

-- ** 敵の動き **  --
setDisp( spep_11 + 0, 1, 1 );
setDisp( spep_11 + 70, 1, 0 );
changeAnime( spep_11 + 0, 1, 105 );

b = 6
c = -10

setMoveKey( spep_11 + 0, 1, 0 + b, -149 + c , 0 );
setMoveKey( spep_11 + 2, 1, 0+ b, -134.5 + c, 0 );
setMoveKey( spep_11 + 4, 1, 0+ b, -120.1 + c, 0 );
setMoveKey( spep_11 + 6, 1, 0+ b, -105.7 + c, 0 );
setMoveKey( spep_11 + 8, 1, 0+ b, -91.3 + c, 0 );
setMoveKey( spep_11 + 10, 1, 0+ b, -76.9 + c, 0 );
setMoveKey( spep_11 + 12, 1, 0+ b, -62.5 + c, 0 );
setMoveKey( spep_11 + 14, 1, 0+ b, -48.1 + c, 0 );
setMoveKey( spep_11 + 16, 1, 0+ b, -33.7+ c , 0 );
setMoveKey( spep_11 + 18, 1, 0+ b, -19.3 + c, 0 );
setMoveKey( spep_11 + 20, 1, 0+ b, -4.9 + c, 0 );
setMoveKey( spep_11 + 22, 1, 0+ b, -4.7 + c, 0 );
setMoveKey( spep_11 + 24, 1, 0+ b, -4.5 + c, 0 );
setMoveKey( spep_11 + 26, 1, 0+ b, -4.4 + c, 0 );
setMoveKey( spep_11 + 28, 1, 0+ b, -4.2 + c, 0 );
setMoveKey( spep_11 + 30, 1, 0+ b, -4 + c, 0 );
setMoveKey( spep_11 + 32, 1, 0+ b, -3.9 + c, 0 );
setMoveKey( spep_11 + 34, 1, 0+ b, -3.7 + c, 0 );
setMoveKey( spep_11 + 36, 1, 0+ b, -3.5 + c, 0 );
setMoveKey( spep_11 + 38, 1, 0+ b, -3.4 + c, 0 );
setMoveKey( spep_11 + 40, 1, 0+ b, -3.2 + c, 0 );
setMoveKey( spep_11 + 42, 1, 0+ b, -3 + c, 0 );
setMoveKey( spep_11 + 44, 1, 0+ b, -2.9 + c, 0 );
setMoveKey( spep_11 + 46, 1, 0+ b, -2.7 + c, 0 );
setMoveKey( spep_11 + 48, 1, 0+ b, -2.5 + c, 0 );
setMoveKey( spep_11 + 50, 1, 0+ b, -2.4 + c, 0 );
setMoveKey( spep_11 + 52, 1, 0+ b, -2.2 + c, 0 );
setMoveKey( spep_11 + 54, 1, 0+ b, -2 + c, 0 );
setMoveKey( spep_11 + 56, 1, 0+ b, -1.9 + c, 0 );
setMoveKey( spep_11 + 58, 1, 0+ b, -1.7 + c, 0 );
setMoveKey( spep_11 + 60, 1, 0+ b, -1.5 + c, 0 );
setMoveKey( spep_11 + 62, 1, 0+ b, -1.4 + c, 0 );
setMoveKey( spep_11 + 64, 1, 0+ b, -1.2 + c, 0 );
setMoveKey( spep_11 + 66, 1, 0+ b, -1 + c, 0 );
setMoveKey( spep_11 + 68, 1, 0+ b, -0.9 + c, 0 );
setMoveKey( spep_11 + 70, 1, 0+ b, -0.9 + c, 0 );
setScaleKey( spep_11 + 0, 1, 5.79, 5.78 );
setScaleKey( spep_11 + 2, 1, 5.29, 5.28 );
setScaleKey( spep_11 + 4, 1, 4.79, 4.79 );
setScaleKey( spep_11 + 6, 1, 4.29, 4.29 );
setScaleKey( spep_11 + 8, 1, 3.79, 3.79 );
setScaleKey( spep_11 + 10, 1, 3.3, 3.29 );
setScaleKey( spep_11 + 12, 1, 2.8, 2.79 );
setScaleKey( spep_11 + 14, 1, 2.3, 2.29 );
setScaleKey( spep_11 + 16, 1, 1.8, 1.8 );
setScaleKey( spep_11 + 18, 1, 1.3, 1.3 );
setScaleKey( spep_11 + 20, 1, 0.8, 0.8 );
setScaleKey( spep_11 + 22, 1, 0.79, 0.79 );
setScaleKey( spep_11 + 24, 1, 0.78, 0.78 );
setScaleKey( spep_11 + 26, 1, 0.77, 0.77 );
setScaleKey( spep_11 + 28, 1, 0.76, 0.76 );
setScaleKey( spep_11 + 30, 1, 0.75, 0.75 );
setScaleKey( spep_11 + 32, 1, 0.74, 0.74 );
setScaleKey( spep_11 + 34, 1, 0.73, 0.73 );
setScaleKey( spep_11 + 36, 1, 0.72, 0.72 );
setScaleKey( spep_11 + 38, 1, 0.71, 0.71 );
setScaleKey( spep_11 + 40, 1, 0.7, 0.7 );
setScaleKey( spep_11 + 42, 1, 0.69, 0.69 );
setScaleKey( spep_11 + 44, 1, 0.68, 0.68 );
setScaleKey( spep_11 + 46, 1, 0.67, 0.67 );
setScaleKey( spep_11 + 48, 1, 0.66, 0.66 );
setScaleKey( spep_11 + 50, 1, 0.65, 0.65 );
setScaleKey( spep_11 + 52, 1, 0.64, 0.64 );
setScaleKey( spep_11 + 54, 1, 0.63, 0.63 );
setScaleKey( spep_11 + 56, 1, 0.62, 0.62 );
setScaleKey( spep_11 + 58, 1, 0.61, 0.61 );
setScaleKey( spep_11 + 60, 1, 0.6, 0.6 );
setScaleKey( spep_11 + 62, 1, 0.59, 0.59 );
setScaleKey( spep_11 + 64, 1, 0.58, 0.58 );
setScaleKey( spep_11 + 66, 1, 0.57, 0.57 );
setScaleKey( spep_11 + 68, 1, 0.56, 0.56 );
setScaleKey( spep_11 + 70, 1, 0.56, 0.56 );
setRotateKey( spep_11 + 0, 1, 0 );
setRotateKey( spep_11 + 70, 1, 0 );

hidan3 = entryEffectLife( spep_11 + 0, SP_12, 70, 0x100, -1, 0, 0, 0 );  --貫通(ef_011)
setEffMoveKey( spep_11 + 0, hidan3, 0, 0 , 0 );
setEffMoveKey( spep_11 + 70, hidan3, 0, 0 , 0 );
setEffScaleKey( spep_11 + 0, hidan3, 1.0, 1.0 );
setEffScaleKey( spep_11 + 70, hidan3, 1.0, 1.0 );
setEffRotateKey( spep_11 + 0, hidan3, 0 );
setEffRotateKey( spep_11 + 70, hidan3, 0 );
setEffAlphaKey( spep_11 + 0, hidan3, 255 );
setEffAlphaKey( spep_11 + 69, hidan3, 255 );
setEffAlphaKey( spep_11 + 70, hidan3, 0 );

-- ** 音 ** --
 playSe( spep_11,  8);  --飛ぶ
--stopSe( spep_11 + 10,  SE1,  60);

-- ** 白フェード ** --
entryFade( spep_11 + 0, 4, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_11 + 0, 0, 70, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_12 = spep_11 + 70;

------------------------------------------------------
-- 最後(70F)
------------------------------------------------------

-- ** エフェクト等 ** --
last = entryEffect( spep_12 + 0, SP_14,  0x80, -1, 0, 0, 0 );  --最後(ef_012)
setEffMoveKey( spep_12 + 0, last, 0, 0 , 0 );
setEffMoveKey( spep_12 + 180, last, 0, 0 , 0 );
setEffScaleKey( spep_12 + 0, last, 1.0, 1.0 );
setEffScaleKey( spep_12 + 180, last, 1.0, 1.0 );
setEffRotateKey( spep_12 + 0, last, 0 );
setEffRotateKey( spep_12 + 180, last, 0 );
setEffAlphaKey( spep_12 + 0, last, 255 );
setEffAlphaKey( spep_12 + 180, last, 255 );

playSe( spep_12,  1036);
playSe( spep_12+20,  1036);
playSe( spep_12+40,  1036);
playSe( spep_12+60,  1036);
playSe( spep_12+80,  1036);
playSe( spep_12+100,  1036);
playSe( spep_12+120,  1036);
playSe( spep_12+140,  1036);
playSe( spep_12+160,  1036);

-- ** 音 ** --
playSe( spep_12,  1147); --パチパチ

-- ** ダメージ表示 ** --
dealDamage( spep_12 + 70 );
endPhase( spep_12 + 170 );

else



------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 突進(130F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
tosshin = entryEffectLife( spep_0 + 0, SP_01, 130, 0x100, -1, 0, 0, 0 );  --突進(ef_001)
setEffMoveKey( spep_0 + 0, tosshin, 0, 0 , 0 );
setEffMoveKey( spep_0 + 130, tosshin, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tosshin, -1.0, 1.0 );
setEffScaleKey( spep_0 + 130, tosshin, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tosshin, 0 );
setEffRotateKey( spep_0 + 130, tosshin, 0 );
setEffAlphaKey( spep_0 + 0, tosshin, 255 );
setEffAlphaKey( spep_0 + 130, tosshin, 255 );


-- ** 顔カットイン ** --
--speff = entryEffect( spep_0 + 20, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0 + 20, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_0 +16 + 20,  190006, 64, 0x100, -1, 0, 100.9, 515.5 ); --ゴゴゴ
setEffShake( spep_0 + 16, ctgogo, 64, 10 );

setEffMoveKey( spep_0 + 16 + 20, ctgogo, 100.9, 515.5 , 0 );
setEffMoveKey( spep_0 + 80 + 20, ctgogo, 100.9, 515.5 , 0 );

setEffScaleKey( spep_0 + 16 + 20, ctgogo,-0.7, 0.7 );
setEffScaleKey( spep_0 + 72 + 20, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_0 + 74 + 20, ctgogo, -1.0, 1.0 );
setEffScaleKey( spep_0 + 76 + 20, ctgogo, -1.09, 1.09 );
setEffScaleKey( spep_0 + 78 + 20, ctgogo, -1.39, 1.39 );
setEffScaleKey( spep_0 + 80 + 20, ctgogo, -1.69, 1.69 );

setEffRotateKey( spep_0 + 16 + 20, ctgogo, 0 );
setEffRotateKey( spep_0 + 80 + 20, ctgogo, 0 );

setEffAlphaKey( spep_0 + 16 + 20, ctgogo, 255 );
setEffAlphaKey( spep_0 + 80 + 20, ctgogo, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 130, 0, 0, 0, 0, 255 );  --黒　背景


-- ** 音 ** --
playSe(  spep_0,  9);  --ダッシュ
playSe(  spep_0 +16+20,  1018);  --ゴゴゴ

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 110; --エンドフェイズのフレーム数を置き換える

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


-- ** 白フェード ** --
entryFade( spep_0 + 124, 4, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

playSe( spep_0 + 100,  1072);

-- ** 次の準備 ** --
spep_1 = spep_0 + 130;



------------------------------------------------------
-- 気弾放つ(96F)
------------------------------------------------------

hanatsu = entryEffectLife( spep_1 + 0, SP_02x, 106, 0x100, -1, 0, 0, 0 );  --気弾放つ(ef_002)
setEffMoveKey( spep_1 + 0, hanatsu, 0, 0 , 0 );
setEffMoveKey( spep_1 + 106, hanatsu, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, hanatsu, 1.0, 1.0 );
setEffScaleKey( spep_1 + 106, hanatsu, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, hanatsu, 0 );
setEffRotateKey( spep_1 + 106, hanatsu, 0 );
setEffAlphaKey( spep_1 + 0, hanatsu, 255 );
setEffAlphaKey( spep_1 + 106, hanatsu, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_1 + 100, 4, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

playSe( spep_1 ,  43);  --瞬間移動
--[[
playSe( spep_1+ 30, 64);  --気弾
playSe( spep_1+ 40, 64);  --気弾
playSe( spep_1+ 50, 64);  --気弾
playSe( spep_1+ 60, 64);  --気弾
playSe( spep_1+ 70, 64);  --気弾
playSe( spep_1+ 80, 64);  --気弾
playSe( spep_1+ 90, 64);  --気弾
playSe( spep_1+ 100, 64);  --気弾
]]
--v4.11調整
SE001 = playSe( spep_1+ 30, 64);  --気弾
stopSe(spep_1 + 50,SE001,5);
SE002 = playSe( spep_1+ 40, 64);  --気弾
stopSe(spep_1 + 60,SE002,5);
SE003 = playSe( spep_1+ 50, 64);  --気弾
stopSe(spep_1 + 70,SE003,5);
SE004 = playSe( spep_1+ 60, 64);  --気弾
stopSe(spep_1 + 80,SE004,5);
SE005 = playSe( spep_1+ 70, 64);  --気弾
stopSe(spep_1 + 90,SE005,5);
SE006 = playSe( spep_1+ 80, 64);  --気弾
stopSe(spep_1 + 100,SE006,5);
SE007 = playSe( spep_1+ 90, 64);  --気弾
stopSe(spep_1 + 110,SE007,5);
SE008 = playSe( spep_1+ 100, 64);  --気弾
-- ** 次の準備 ** --
spep_2 = spep_1 + 106;


------------------------------------------------------
-- 気弾迫る(60F)
------------------------------------------------------

-- ** 流線 ** --
ryusen = entryEffectLife( spep_2 + 0,  914, 60, 0x100, -1, 0, 0, 0 ); --流線
setEffMoveKey( spep_2 + 0, ryusen, 0, 0 , 0 );
setEffMoveKey( spep_2 + 60, ryusen, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, ryusen, 2, 1 );
setEffScaleKey( spep_2 + 60, ryusen, 2, 1 );
setEffRotateKey( spep_2 + 0, ryusen, 0 );
setEffRotateKey( spep_2 + 60, ryusen, 0 );
setEffAlphaKey( spep_2 + 0, ryusen, 100 );
setEffAlphaKey( spep_2 + 60, ryusen, 100 );


semaru = entryEffectLife( spep_2 + 0, SP_03, 60, 0x80, -1, 0, 0, 0 );  --気弾迫る(ef_003)
setEffMoveKey( spep_2 + 0, semaru, 0, 0 , 0 );
setEffMoveKey( spep_2 + 60, semaru, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, semaru, 1.0, 1.0 );
setEffScaleKey( spep_2 + 60, semaru, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, semaru, 0 );
setEffRotateKey( spep_2 + 60, semaru, 0 );
setEffAlphaKey( spep_2 + 0, semaru, 255 );
setEffAlphaKey( spep_2 + 60, semaru, 255 );

-- ** 音 ** --
playSe( spep_2+16,  1016);
playSe( spep_2+26,  1016);
playSe( spep_2+36,  1016);
playSe( spep_2+46,  1016);
playSe( spep_2+56,  1016);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 60, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_2 + 54, 4, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 60;


------------------------------------------------------
-- 被弾(44F)
------------------------------------------------------

-- ** エフェクト等 ** --
hidan = entryEffectLife( spep_3 + 0, SP_04, 40, 0x100, -1, 0, 0, 0 );  --被弾(ef_004)
setEffMoveKey( spep_3 + 0, hidan, 0, 0 , 0 );
setEffMoveKey( spep_3 + 40, hidan, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hidan, -1.0, 1.0 );
setEffScaleKey( spep_3 + 40, hidan, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hidan, 0 );
setEffRotateKey( spep_3 + 40, hidan, 0 );
setEffAlphaKey( spep_3 + 0, hidan, 255 );
setEffAlphaKey( spep_3 + 39, hidan, 255 );
setEffAlphaKey( spep_3 + 40, hidan, 0 );

-- ** 敵の動き ** --
setDisp( spep_3  + 0, 1, 1 );
setDisp( spep_3  + 40, 1, 0 );
changeAnime( spep_3  + 0, 1, 100);

setMoveKey( spep_3  + 0, 1, 0, 0 , 0 );
setMoveKey( spep_3  + 20, 1, 0, 0 , 0 );
setMoveKey( spep_3  + 22, 1, 4, 3 , 0 );
setMoveKey( spep_3  + 24, 1, -3, -4 , 0 );
setMoveKey( spep_3  + 26, 1, 4, -4 , 0 );
setMoveKey( spep_3  + 28, 1, -4, 4 , 0 );
setMoveKey( spep_3  + 30, 1, 4, 3 , 0 );
setMoveKey( spep_3  + 32, 1, -3, -4 , 0 );
setMoveKey( spep_3  + 34, 1, 4, -4 , 0 );
setMoveKey( spep_3  + 36, 1, -4, 4 , 0 );
setMoveKey( spep_3  + 38, 1, 4, 3 , 0 );
setMoveKey( spep_3  + 40, 1, -3, -4 , 0 );
--setMoveKey( spep_3  + 42, 1, 4, -4 , 0 );
setScaleKey( spep_3  + 0, 1, 3, 3 );
setScaleKey( spep_3  + 2, 1, 2.66, 2.66 );
setScaleKey( spep_3  + 4, 1, 2.33, 2.33 );
setScaleKey( spep_3  + 6, 1, 1.99, 1.99 );
setScaleKey( spep_3  + 8, 1, 1.66, 1.66 );
setScaleKey( spep_3  + 10, 1, 1.32, 1.32 );
setScaleKey( spep_3  + 12, 1, 0.99, 0.99 );
setScaleKey( spep_3  + 14, 1, 0.65, 0.65 );
setScaleKey( spep_3  + 16, 1, 0.62, 0.62 );
setScaleKey( spep_3  + 18, 1, 0.6, 0.6 );
setScaleKey( spep_3  + 20, 1, 0.57, 0.57 );
setScaleKey( spep_3  + 22, 1, 0.55, 0.55 );
setScaleKey( spep_3  + 24, 1, 0.52, 0.52 );
setScaleKey( spep_3  + 26, 1, 0.5, 0.5 );
setScaleKey( spep_3  + 28, 1, 0.47, 0.47 );
setScaleKey( spep_3  + 30, 1, 0.45, 0.45 );
setScaleKey( spep_3  + 32, 1, 0.42, 0.42 );
setScaleKey( spep_3  + 34, 1, 0.39, 0.39 );
setScaleKey( spep_3  + 36, 1, 0.37, 0.37 );
setScaleKey( spep_3  + 38, 1, 0.34, 0.34 );
setScaleKey( spep_3  + 40, 1, 0.32, 0.32 );
--setScaleKey( spep_3  + 42, 1, 0.29, 0.29 );
setRotateKey( spep_3  + 0, 1, 0 );
setRotateKey( spep_3  + 40, 1, 0 );



hidan_b = entryEffectLife( spep_3 + 0, SP_04a, 40, 0x80, -1, 0, 0, 0 );  --被弾(ef_004)
setEffMoveKey( spep_3 + 0, hidan_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 40, hidan_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hidan_b, -1.0, 1.0 );
setEffScaleKey( spep_3 + 40, hidan_b, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hidan_b, 0 );
setEffRotateKey( spep_3 + 40, hidan_b, 0 );
setEffAlphaKey( spep_3 + 0, hidan_b, 255 );
setEffAlphaKey( spep_3 + 40, hidan_b, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 44, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
playSe( spep_3 + 0,  1016);
playSe( spep_3 + 8,  1016);
playSe( spep_3 + 16,  1016);
--[[
playSe( spep_3 + 22,  1023);
playSe( spep_3 + 26,  1023);
playSe( spep_3 + 30,  1023);
playSe( spep_3 + 34,  1023);
]]
playSe( spep_3 + 22,  1023);
setSeVolume(spep_3 + 22,1023,80);
playSe( spep_3 + 26,  1023);
setSeVolume(spep_3 + 26,1023,80);
playSe( spep_3 + 30,  1023);
setSeVolume(spep_3 + 30,1023,80);
playSe( spep_3 + 34,  1023);
setSeVolume(spep_3 + 34,1023,80);

-- ** 次の準備 ** --
spep_4 = spep_3 + 40;


------------------------------------------------------
-- 追撃(100F)
------------------------------------------------------

-- ** エフェクト等 ** --
tsuigeki = entryEffectLife( spep_4 + 0, SP_05x, 100, 0x80, -1, 0, 0, 0 );  --追撃(ef_005)
setEffMoveKey( spep_4 + 0, tsuigeki, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, tsuigeki, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, tsuigeki, 1.0, 1.0 );
setEffScaleKey( spep_4 + 100, tsuigeki, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, tsuigeki, 0 );
setEffRotateKey( spep_4 + 100, tsuigeki, 0 );
setEffAlphaKey( spep_4 + 0, tsuigeki, 255 );
setEffAlphaKey( spep_4 + 100, tsuigeki, 255 );

-- ** 音 ** --
--[[
playSe( spep_4,  64);
playSe( spep_4+8,  64);
playSe( spep_4+16,  64);
playSe( spep_4+20,  1023);
playSe( spep_4+24,  64);
playSe( spep_4+28,  1023);
playSe( spep_4+32,  64);
playSe( spep_4+36,  1023);
playSe( spep_4+40,  64);
playSe( spep_4+44,  1023);
playSe( spep_4+48,  64);
playSe( spep_4+52,  1023);
playSe( spep_4+56,  64);
playSe( spep_4+60,  1023);
playSe( spep_4+64,  64);
playSe( spep_4+68,  1023);
playSe( spep_4+76,  1023);
playSe( spep_4+84,  1023);
playSe( spep_4+92,  1023);
]]
--v4.11調整
SE031 = playSe( spep_4,  64);
stopSe(spep_4+25,SE031,5);
SE032 = playSe( spep_4+8,  64);
stopSe(spep_4+31,SE032,5);
SE033 = playSe( spep_4+16,  64);
stopSe(spep_4+35,SE033,5);

SE020 = playSe( spep_4+20,  1023);
setSeVolume(spep_4+20,1023,80);
--stopSe(spep_4+28,SE020,10);

SE034 = playSe( spep_4+24,  64);
stopSe(spep_4+43,SE034,5);


SE021 = playSe( spep_4+28,  1023);
setSeVolume(spep_4+28,1023,80);
--stopSe(spep_4+36,SE021,10);

SE035 = playSe( spep_4+32,  64);
stopSe(spep_4+51,SE035,5);

SE022 = playSe( spep_4+36,  1023);
setSeVolume(spep_4+36,1023,80);
--stopSe(spep_4+44,SE022,10);

SE036 = playSe( spep_4+40,  64);
stopSe(spep_4+59,SE036,5);

SE023 = playSe( spep_4+44,  1023);
setSeVolume(spep_4+44,1023,80);
--stopSe(spep_4+52,SE023,10);

SE037 = playSe( spep_4+48,  64);
stopSe(spep_4+67,SE037,5);

SE024 = playSe( spep_4+52,  1023);
--stopSe(spep_4+60,SE024,10);
setSeVolume(spep_4+52,1023,80);

SE038 = playSe( spep_4+56,  64);
stopSe(spep_4+75,SE038,5);

SE025 = playSe( spep_4+60,  1023);
setSeVolume(spep_4+60,1023,80);
--stopSe(spep_4+68,SE025,10);

SE039 = playSe( spep_4+64,  64);
stopSe(spep_4+83,SE039,5);

SE026 = playSe( spep_4+68,  1023);
--stopSe(spep_4+68,SE026,10);
setSeVolume(spep_4+68,1023,80);
SE027 = playSe( spep_4+76,  1023);
setSeVolume(spep_4+76,1023,80);
--stopSe(spep_4+84,SE027,10);
SE028 = playSe( spep_4+84,  1023);
setSeVolume(spep_4+84,1023,80);
--stopSe(spep_4+92,SE028,10);
SE029 = playSe( spep_4+92,  1023);
setSeVolume(spep_4+92,1023,80);

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 100, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_4 + 94, 4, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 100;

------------------------------------------------------
-- 爆発(30F)
------------------------------------------------------

-- ** 集中線 ** --
shuchusen5 = entryEffectLife( spep_5 + 0,  906,  28,  0x100,  -1,  0,  0,  0);  --集中線
setEffMoveKey(  spep_5 + 0,  shuchusen5,  0,  0,  0);
setEffMoveKey(  spep_5 + 28,  shuchusen5,  0,  0,  0);
setEffScaleKey(  spep_5 + 0,  shuchusen5,  1.3,  1.3);
setEffScaleKey(  spep_5 + 28,  shuchusen5,  1.3,  1.3);
setEffRotateKey(  spep_5 + 0,  shuchusen5,  0);
setEffRotateKey(  spep_5 + 28,  shuchusen5,  0);
setEffAlphaKey(  spep_5 + 0,  shuchusen5,  255);
setEffAlphaKey(  spep_5 + 26,  shuchusen5,  255);
setEffAlphaKey(  spep_5 + 27,  shuchusen5,  0);
setEffAlphaKey(  spep_5 + 28,  shuchusen5,  0);

-- ** エフェクト等 ** --
bakuha = entryEffectLife( spep_5 + 0, SP_06, 28, 0x80, -1, 0, 0, 0 );  --爆発(ef_006)
setEffMoveKey( spep_5 + 0, bakuha, 0, 0 , 0 );
setEffMoveKey( spep_5 + 28, bakuha, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, bakuha, 1.0, 1.0 );
setEffScaleKey( spep_5 + 28, bakuha, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, bakuha, 0 );
setEffRotateKey( spep_5 + 28, bakuha, 0 );
setEffAlphaKey( spep_5 + 0, bakuha, 255 );
setEffAlphaKey( spep_5 + 26, bakuha, 255 );
setEffAlphaKey( spep_5 + 27, bakuha, 0 );
setEffAlphaKey( spep_5 + 28, bakuha, 0 );

 -- ** 音 ** --
playSe( spep_5,  1068);

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 30, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 28;

------------------------------------------------------
-- 爆発2(60F)
------------------------------------------------------

-- ** 集中線 ** --
shuchusen6 = entryEffectLife( spep_6 + 14 ,  906,  46,  0x100,  -1,  0,  0,  0);  --集中線
setEffMoveKey(  spep_6 + 14 ,  shuchusen6,  0,  0,  0);
setEffMoveKey(  spep_6 + 60,  shuchusen6,  0,  0,  0);
setEffScaleKey(  spep_6 + 14 ,  shuchusen6,  1.3,  1.3);
setEffScaleKey(  spep_6 + 60,  shuchusen6,  1.3,  1.3);
setEffRotateKey(  spep_6 + 14 ,  shuchusen6,  0);
setEffRotateKey(  spep_6 + 60,  shuchusen6,  0);
setEffAlphaKey(  spep_6 + 14 ,  shuchusen6,  255);
setEffAlphaKey(  spep_6 + 60,  shuchusen6,  255);


-- ** エフェクト等 ** --
bakuha2 = entryEffectLife( spep_6, SP_07, 60, 0x80, -1, 0, 0, 0 );  --爆発2(ef_007)
setEffMoveKey( spep_6 +0, bakuha2, 0, 0 , 0 );
setEffMoveKey( spep_6 + 60, bakuha2, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, bakuha2, 1.0, 1.0 );
setEffScaleKey( spep_6 + 60, bakuha2, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, bakuha2, 0 );
setEffRotateKey( spep_6 + 60, bakuha2, 0 );
setEffAlphaKey( spep_6 + 0, bakuha2, 255 );
setEffAlphaKey( spep_6 + 60, bakuha2, 255 );

 -- ** 音 ** --
playSe( spep_6,  1024);
setSeVolume( spep_6,  1024,  200);

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 60, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_7 = spep_6 + 60;


------------------------------------------------------
-- カードカットイン(94F)
------------------------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_7 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_7 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_7 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_7 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_7 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_7 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_7 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_7 + 0, shuchusen, 0 );
setEffRotateKey( spep_7 + 90, shuchusen, 0 );

setEffAlphaKey( spep_7 + 0, shuchusen, 255 );
setEffAlphaKey( spep_7 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_7 + 0, SE_05 );

-- ** 次の準備 ** --
entryFade( spep_7 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_7 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_8 = spep_7 + 94;

------------------------------------------------------
-- 指からビーム(110F)
------------------------------------------------------

-- ** エフェクト等 ** --
beam = entryEffectLife( spep_8 + 0, SP_08x, 110, 0x80, -1, 0, 0, 0 );  --指からビーム(ef_008)
setEffMoveKey( spep_8 + 0, beam, 0, 0 , 0 );
setEffMoveKey( spep_8 + 110, beam, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_8 + 110, beam, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, beam, 0 );
setEffRotateKey( spep_8 + 110, beam, 0 );
setEffAlphaKey( spep_8 + 0, beam, 255 );
setEffAlphaKey( spep_8 + 110, beam, 255 );

-- ** 音 ** --
playSe( spep_8,  1130);
playSe( spep_8+50,  1021);
playSe(  spep_8+70,  1022);

-- ** 黒背景 ** --
entryFadeBg( spep_8 + 0, 0, 110, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_9 = spep_8 + 110;


------------------------------------------------------
-- 煙(40F)
------------------------------------------------------

-- ** エフェクト等 ** --
smoke = entryEffectLife( spep_9 + 0, SP_09, 40, 0x80, -1, 0, 0, 0 );  --煙(ef_009)
setEffMoveKey( spep_9 + 0, smoke, 0, 0 , 0 );
setEffMoveKey( spep_9 + 40, smoke, 0, 0 , 0 );
setEffScaleKey( spep_9 + 0, smoke, 1.0, 1.0 );
setEffScaleKey( spep_9 + 40, smoke, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, smoke, 0 );
setEffRotateKey( spep_9 + 40, smoke, 0 );
setEffAlphaKey( spep_9 + 0, smoke, 255 );
setEffAlphaKey( spep_9 + 40, smoke, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_9 + 0, 0, 40, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--playSe(  spep_9,  1022);

-- ** 白フェード ** --
entryFade( spep_9 + 30, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_10 = spep_9 + 40;

------------------------------------------------------
-- 貫通(40F)
------------------------------------------------------

-- ** 集中線 ** --
shuchusen10 = entryEffectLife( spep_10 + 10 - 3,  906,  20,  0x100,  -1,  0,  0,  0);  --集中線
setEffMoveKey(  spep_10  + 10 - 3,  shuchusen10,  0,  0,  0);
setEffMoveKey(  spep_10  + 30 - 3,  shuchusen10,  0,  0,  0);
setEffScaleKey(  spep_10 + 10 - 3,  shuchusen10,  1.3,  1.3);
setEffScaleKey(  spep_10  + 30 - 3,  shuchusen10,  1.3,  1.3);
setEffRotateKey(  spep_10 + 10 - 3,  shuchusen10,  0);
setEffRotateKey(  spep_10  + 30 - 3,  shuchusen10,  0);
setEffAlphaKey(  spep_10 + 10 - 3,  shuchusen10,  255);
setEffAlphaKey(  spep_10  + 30 - 3,  shuchusen10,  255);


-- ** エフェクト等 ** --
hidan2_b = entryEffectLife( spep_10 + 0, SP_11, 78, 0x80, -1, 0, 0, 0 );  --貫通(ef_010)
setEffMoveKey( spep_10 + 0, hidan2_b, 0, 0 , 0 );
setEffMoveKey( spep_10 + 78, hidan2_b, 0, 0 , 0 );
setEffScaleKey( spep_10 + 0, hidan2_b, 1.0, 1.0 );
setEffScaleKey( spep_10 + 78, hidan2_b, 1.0, 1.0 );
setEffRotateKey( spep_10 + 0, hidan2_b, 0 );
setEffRotateKey( spep_10 + 78, hidan2_b, 0 );
setEffAlphaKey( spep_10 + 0, hidan2_b, 255 );
setEffAlphaKey( spep_10 + 78, hidan2_b, 255 );

-- ** 敵の動き ** --
setDisp( spep_10 + 0, 1, 1 );
setDisp( spep_10 -3 + 76, 1, 0 );
changeAnime( spep_10 -3 + 0, 1, 104 );
changeAnime( spep_10 -3 + 20, 1, 106 );

aa= -60

setMoveKey( spep_10 + 0, 1, 584.8, 6 , 0 );
setMoveKey( spep_10 -3 + 2, 1, 486.9, -6 , 0 );
setMoveKey( spep_10 -3 + 4, 1, 365.1, -6 , 0 );
setMoveKey( spep_10 -3 + 6, 1, 267.3, 6 , 0 );
setMoveKey( spep_10 -3 + 8, 1, 145.5, 6 , 0 );
setMoveKey( spep_10 -3 + 10, 1, 47.6, -6 , 0 );
setMoveKey( spep_10 -3 + 12, 1, -74.2, -6 , 0 );
setMoveKey( spep_10 -3 + 14, 1, -75.5, 6 , 0 );
setMoveKey( spep_10 -3 + 16, 1, -100.9, 6 , 0 );
setMoveKey( spep_10 -3 + 19, 1, -102.2, -6 , 0 );
setMoveKey( spep_10 -3 + 20, 1, -102.5, -6.5 + aa , 0 );
setMoveKey( spep_10 -3 + 22, 1, -86.5, 5.6+ aa , 0 );
setMoveKey( spep_10 -3 + 24, 1, -88.4, -0.4+ aa , 0 );
setMoveKey( spep_10 -3 + 26, 1, -84.5, -0.4+ aa , 0 );
setMoveKey( spep_10 -3 + 28, 1, -80.5, -0.4 + aa, 0 );
setMoveKey( spep_10 -3 + 30, 1, -76.5, -0.3 + aa, 0 );
setMoveKey( spep_10 -3 + 32, 1, -72.5, -0.3 + aa, 0 );
setMoveKey( spep_10 -3 + 34, 1, -68.6, -0.2 + aa, 0 );
setMoveKey( spep_10 -3 + 36, 1, -64.6, -0.2 + aa, 0 );
setMoveKey( spep_10 -3 + 38, 1, -60.6, -0.1+ aa , 0 );
setMoveKey( spep_10 -3 + 40, 1, -56.6, 0 + aa, 0 );
setMoveKey( spep_10 -3 + 42, 1, -52.6, 0.1 + aa, 0 );
setMoveKey( spep_10 -3 + 44, 1, -48.7, 0.2 + aa, 0 );
setMoveKey( spep_10 -3 + 46, 1, -44.7, 0.3 + aa, 0 );
setMoveKey( spep_10 -3 + 48, 1, -40.7, 0.4 + aa, 0 );
setMoveKey( spep_10 -3 + 50, 1, -36.7, 0.5 + aa, 0 );
setMoveKey( spep_10 -3 + 52, 1, -32.7, 0.6 + aa, 0 );
setMoveKey( spep_10 -3 + 54, 1, -28.8, 0.8 + aa, 0 );
setMoveKey( spep_10 -3 + 56, 1, -24.8, 0.9 + aa, 0 );
setMoveKey( spep_10 -3 + 58, 1, -20.8, 1.1 + aa, 0 );
setMoveKey( spep_10 -3 + 60, 1, -16.8, 1.3 + aa, 0 );
setMoveKey( spep_10 -3 + 62, 1, -12.8, 1.5 + aa, 0 );
setMoveKey( spep_10 -3 + 64, 1, -8.8, 1.7 + aa, 0 );
setMoveKey( spep_10 -3 + 66, 1, 12.7, 2.1 + aa, 0 );
setMoveKey( spep_10 -3 + 68, 1, 34.3, 2.5 + aa, 0 );
setMoveKey( spep_10 -3 + 70, 1, 55.8, 3 + aa, 0 );
setMoveKey( spep_10 -3 + 72, 1, 77.4, 3.4 + aa, 0 );
setMoveKey( spep_10 -3 + 74, 1, 99, 3.9 + aa, 0 );
setMoveKey( spep_10 -3 + 76, 1, 120.7, 4.4 + aa, 0 );

setScaleKey( spep_10 + 0, 1, 2, 2 );
setScaleKey( spep_10 + 76 - 3, 1, 2, 2 );

setRotateKey( spep_10 + 0, 1, 0 );
setRotateKey( spep_10 -3 + 19, 1, 0 );
setRotateKey( spep_10 -3 + 20, 1, -55.9 );
setRotateKey( spep_10 -3 + 22, 1, -55.9 );
setRotateKey( spep_10 -3 + 24, 1, -55.8 );
setRotateKey( spep_10 -3 + 26, 1, -55.7 );
setRotateKey( spep_10 -3 + 28, 1, -55.6 );
setRotateKey( spep_10 -3 + 30, 1, -55.4 );
setRotateKey( spep_10 -3 + 32, 1, -55.2 );
setRotateKey( spep_10 -3 + 34, 1, -54.9 );
setRotateKey( spep_10 -3 + 36, 1, -54.6 );
setRotateKey( spep_10 -3 + 38, 1, -54.3 );
setRotateKey( spep_10 -3 + 40, 1, -53.9 );
setRotateKey( spep_10 -3 + 42, 1, -53.5 );
setRotateKey( spep_10 -3 + 44, 1, -53.1 );
setRotateKey( spep_10 -3 + 46, 1, -52.7 );
setRotateKey( spep_10 -3 + 48, 1, -52.2 );
setRotateKey( spep_10 -3 + 50, 1, -51.7 );
setRotateKey( spep_10 -3 + 52, 1, -51.1 );
setRotateKey( spep_10 -3 + 54, 1, -50.5 );
setRotateKey( spep_10 -3 + 56, 1, -49.8 );
setRotateKey( spep_10 -3 + 58, 1, -49.1 );
setRotateKey( spep_10 -3 + 60, 1, -48.3 );
setRotateKey( spep_10 -3 + 62, 1, -47.4 );
setRotateKey( spep_10 -3 + 64, 1, -46.2 );
setRotateKey( spep_10 -3 + 66, 1, -44.6 );
setRotateKey( spep_10 -3 + 68, 1, -42.7 );
setRotateKey( spep_10 -3 + 70, 1, -40.7 );
setRotateKey( spep_10 -3 + 72, 1, -38.5 );
setRotateKey( spep_10 -3 + 74, 1, -36.3 );
setRotateKey( spep_10 -3 + 76, 1, -33.9 );

-- ** 流線 ** --
ryusen2 = entryEffectLife( spep_10 + 0,  914, 30 -3 , 0x80, -1, 0, 0, 0 ); --流線
setEffMoveKey( spep_10 + 0, ryusen2, 0, 0 , 0 );
setEffMoveKey( spep_10 + 30 -3, ryusen2, 0, 0 , 0 );
setEffScaleKey( spep_10 + 0, ryusen2, 2, 1 );
setEffScaleKey( spep_10 + 30 - 3, ryusen2, 2, 1 );
setEffRotateKey( spep_10 + 0, ryusen2, 0 );
setEffRotateKey( spep_10 + 30 -3 , ryusen2, 0 );
setEffAlphaKey( spep_10 + 0, ryusen2, 100 );
setEffAlphaKey( spep_10 + 20 - 3, ryusen2, 100 );
setEffAlphaKey( spep_10 + 30 - 3, ryusen2, 0 );

hidan2 = entryEffectLife( spep_10 + 0, SP_10x, 78, 0x100, -1, 0, 0, 0 );  --貫通(ef_010)
setEffMoveKey( spep_10 + 0, hidan2, 0, 0 , 0 );
setEffMoveKey( spep_10 + 78, hidan2, 0, 0 , 0 );
setEffScaleKey( spep_10 + 0, hidan2, 1.0, 1.0 );
setEffScaleKey( spep_10 + 78, hidan2, 1.0, 1.0 );
setEffRotateKey( spep_10 + 0, hidan2, 0 );
setEffRotateKey( spep_10 + 78, hidan2, 0 );
setEffAlphaKey( spep_10 + 0, hidan2, 255 );
setEffAlphaKey( spep_10 + 78, hidan2, 255 );


-- ** 音 ** --
playSe( spep_10+20,  1145); 

-- ** 黒背景 ** --
entryFadeBg( spep_10 + 0, 0, 78, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_10  -3 + 20, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 200 );  --white fade
entryFade( spep_10 + 74,4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_11 = spep_10 + 78;

------------------------------------------------------
-- 吹き飛ぶ(70F)
------------------------------------------------------

-- ** エフェクト等 ** --
hidan3_b = entryEffectLife( spep_11 + 0, SP_13, 70, 0x80, -1, 0, 0, 0 );  --貫通(ef_011)
setEffMoveKey( spep_11 + 0, hidan3_b, 0, 0 , 0 );
setEffMoveKey( spep_11 + 70, hidan3_b, 0, 0 , 0 );
setEffScaleKey( spep_11 + 0, hidan3_b, 1.0, 1.0 );
setEffScaleKey( spep_11 + 70, hidan3_b, 1.0, 1.0 );
setEffRotateKey( spep_11 + 0, hidan3_b, 0 );
setEffRotateKey( spep_11 + 70, hidan3_b, 0 );
setEffAlphaKey( spep_11 + 0, hidan3_b, 255 );
setEffAlphaKey( spep_11 + 69, hidan3_b, 255 );
setEffAlphaKey( spep_11 + 70, hidan3_b, 0 );

-- ** 敵の動き **  --
setDisp( spep_11 + 0, 1, 1 );
setDisp( spep_11 + 70, 1, 0 );
changeAnime( spep_11 + 0, 1, 105 );

b = 6
c = -10

setMoveKey( spep_11 + 0, 1, 0 + b, -149 + c , 0 );
setMoveKey( spep_11 + 2, 1, 0+ b, -134.5 + c, 0 );
setMoveKey( spep_11 + 4, 1, 0+ b, -120.1 + c, 0 );
setMoveKey( spep_11 + 6, 1, 0+ b, -105.7 + c, 0 );
setMoveKey( spep_11 + 8, 1, 0+ b, -91.3 + c, 0 );
setMoveKey( spep_11 + 10, 1, 0+ b, -76.9 + c, 0 );
setMoveKey( spep_11 + 12, 1, 0+ b, -62.5 + c, 0 );
setMoveKey( spep_11 + 14, 1, 0+ b, -48.1 + c, 0 );
setMoveKey( spep_11 + 16, 1, 0+ b, -33.7+ c , 0 );
setMoveKey( spep_11 + 18, 1, 0+ b, -19.3 + c, 0 );
setMoveKey( spep_11 + 20, 1, 0+ b, -4.9 + c, 0 );
setMoveKey( spep_11 + 22, 1, 0+ b, -4.7 + c, 0 );
setMoveKey( spep_11 + 24, 1, 0+ b, -4.5 + c, 0 );
setMoveKey( spep_11 + 26, 1, 0+ b, -4.4 + c, 0 );
setMoveKey( spep_11 + 28, 1, 0+ b, -4.2 + c, 0 );
setMoveKey( spep_11 + 30, 1, 0+ b, -4 + c, 0 );
setMoveKey( spep_11 + 32, 1, 0+ b, -3.9 + c, 0 );
setMoveKey( spep_11 + 34, 1, 0+ b, -3.7 + c, 0 );
setMoveKey( spep_11 + 36, 1, 0+ b, -3.5 + c, 0 );
setMoveKey( spep_11 + 38, 1, 0+ b, -3.4 + c, 0 );
setMoveKey( spep_11 + 40, 1, 0+ b, -3.2 + c, 0 );
setMoveKey( spep_11 + 42, 1, 0+ b, -3 + c, 0 );
setMoveKey( spep_11 + 44, 1, 0+ b, -2.9 + c, 0 );
setMoveKey( spep_11 + 46, 1, 0+ b, -2.7 + c, 0 );
setMoveKey( spep_11 + 48, 1, 0+ b, -2.5 + c, 0 );
setMoveKey( spep_11 + 50, 1, 0+ b, -2.4 + c, 0 );
setMoveKey( spep_11 + 52, 1, 0+ b, -2.2 + c, 0 );
setMoveKey( spep_11 + 54, 1, 0+ b, -2 + c, 0 );
setMoveKey( spep_11 + 56, 1, 0+ b, -1.9 + c, 0 );
setMoveKey( spep_11 + 58, 1, 0+ b, -1.7 + c, 0 );
setMoveKey( spep_11 + 60, 1, 0+ b, -1.5 + c, 0 );
setMoveKey( spep_11 + 62, 1, 0+ b, -1.4 + c, 0 );
setMoveKey( spep_11 + 64, 1, 0+ b, -1.2 + c, 0 );
setMoveKey( spep_11 + 66, 1, 0+ b, -1 + c, 0 );
setMoveKey( spep_11 + 68, 1, 0+ b, -0.9 + c, 0 );
setMoveKey( spep_11 + 70, 1, 0+ b, -0.9 + c, 0 );
setScaleKey( spep_11 + 0, 1, 5.79, 5.78 );
setScaleKey( spep_11 + 2, 1, 5.29, 5.28 );
setScaleKey( spep_11 + 4, 1, 4.79, 4.79 );
setScaleKey( spep_11 + 6, 1, 4.29, 4.29 );
setScaleKey( spep_11 + 8, 1, 3.79, 3.79 );
setScaleKey( spep_11 + 10, 1, 3.3, 3.29 );
setScaleKey( spep_11 + 12, 1, 2.8, 2.79 );
setScaleKey( spep_11 + 14, 1, 2.3, 2.29 );
setScaleKey( spep_11 + 16, 1, 1.8, 1.8 );
setScaleKey( spep_11 + 18, 1, 1.3, 1.3 );
setScaleKey( spep_11 + 20, 1, 0.8, 0.8 );
setScaleKey( spep_11 + 22, 1, 0.79, 0.79 );
setScaleKey( spep_11 + 24, 1, 0.78, 0.78 );
setScaleKey( spep_11 + 26, 1, 0.77, 0.77 );
setScaleKey( spep_11 + 28, 1, 0.76, 0.76 );
setScaleKey( spep_11 + 30, 1, 0.75, 0.75 );
setScaleKey( spep_11 + 32, 1, 0.74, 0.74 );
setScaleKey( spep_11 + 34, 1, 0.73, 0.73 );
setScaleKey( spep_11 + 36, 1, 0.72, 0.72 );
setScaleKey( spep_11 + 38, 1, 0.71, 0.71 );
setScaleKey( spep_11 + 40, 1, 0.7, 0.7 );
setScaleKey( spep_11 + 42, 1, 0.69, 0.69 );
setScaleKey( spep_11 + 44, 1, 0.68, 0.68 );
setScaleKey( spep_11 + 46, 1, 0.67, 0.67 );
setScaleKey( spep_11 + 48, 1, 0.66, 0.66 );
setScaleKey( spep_11 + 50, 1, 0.65, 0.65 );
setScaleKey( spep_11 + 52, 1, 0.64, 0.64 );
setScaleKey( spep_11 + 54, 1, 0.63, 0.63 );
setScaleKey( spep_11 + 56, 1, 0.62, 0.62 );
setScaleKey( spep_11 + 58, 1, 0.61, 0.61 );
setScaleKey( spep_11 + 60, 1, 0.6, 0.6 );
setScaleKey( spep_11 + 62, 1, 0.59, 0.59 );
setScaleKey( spep_11 + 64, 1, 0.58, 0.58 );
setScaleKey( spep_11 + 66, 1, 0.57, 0.57 );
setScaleKey( spep_11 + 68, 1, 0.56, 0.56 );
setScaleKey( spep_11 + 70, 1, 0.56, 0.56 );
setRotateKey( spep_11 + 0, 1, 0 );
setRotateKey( spep_11 + 70, 1, 0 );

hidan3 = entryEffectLife( spep_11 + 0, SP_12, 70, 0x100, -1, 0, 0, 0 );  --貫通(ef_011)
setEffMoveKey( spep_11 + 0, hidan3, 0, 0 , 0 );
setEffMoveKey( spep_11 + 70, hidan3, 0, 0 , 0 );
setEffScaleKey( spep_11 + 0, hidan3, 1.0, 1.0 );
setEffScaleKey( spep_11 + 70, hidan3, 1.0, 1.0 );
setEffRotateKey( spep_11 + 0, hidan3, 0 );
setEffRotateKey( spep_11 + 70, hidan3, 0 );
setEffAlphaKey( spep_11 + 0, hidan3, 255 );
setEffAlphaKey( spep_11 + 69, hidan3, 255 );
setEffAlphaKey( spep_11 + 70, hidan3, 0 );

-- ** 音 ** --
playSe( spep_11,  8);  --飛ぶ
--stopSe( spep_11 + 10,  SE1,  60);

-- ** 白フェード ** --
entryFade( spep_11 + 0, 4, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_11 + 0, 0, 70, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_12 = spep_11 + 70;

------------------------------------------------------
-- 最後(70F)
------------------------------------------------------

-- ** エフェクト等 ** --
last = entryEffect( spep_12 + 0, SP_14x,  0x80, -1, 0, 0, 0 );  --最後(ef_012)
setEffMoveKey( spep_12 + 0, last, 0, 0 , 0 );
setEffMoveKey( spep_12 + 180, last, 0, 0 , 0 );
setEffScaleKey( spep_12 + 0, last, 1.0, 1.0 );
setEffScaleKey( spep_12 + 180, last, 1.0, 1.0 );
setEffRotateKey( spep_12 + 0, last, 0 );
setEffRotateKey( spep_12 + 180, last, 0 );
setEffAlphaKey( spep_12 + 0, last, 255 );
setEffAlphaKey( spep_12 + 180, last, 255 );

playSe( spep_12,  1036);
playSe( spep_12+20,  1036);
playSe( spep_12+40,  1036);
playSe( spep_12+60,  1036);
playSe( spep_12+80,  1036);
playSe( spep_12+100,  1036);
playSe( spep_12+120,  1036);
playSe( spep_12+140,  1036);
playSe( spep_12+160,  1036);

-- ** 音 ** --
playSe( spep_12,  1147); --パチパチ

-- ** ダメージ表示 ** --
dealDamage( spep_12 + 70 );
endPhase( spep_12 + 170 );

end
